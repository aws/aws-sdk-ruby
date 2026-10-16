# frozen_string_literal: true

# Ops/CPU-sec benchmark: full SDK client calls (param conversion and
# validation, build, endpoint resolution, SigV4 signing, retry and other
# handlers, response parsing) against an in-process HTTP stub that returns
# each case's canned response. No sockets.
#
# Usage (from the repository root):
#   BUNDLE_GEMFILE=benchmarks/ops_cpu_sec/Gemfile bundle exec \
#     ruby benchmarks/ops_cpu_sec/ops_cpu_sec.rb [options]
#
# Options:
#   --list               print the case ids and exit
#   --validate           check every case's request/response against the model and exit
#   --filter REGEX       only run cases whose id matches (fails if none match)
#   --warmup N           warmup iterations (default 1000)
#   --min-iterations N   stop after N iterations ... (default 50000)
#   --min-cpu-seconds S  ... or S seconds of process CPU, whichever comes first (default 5)
#   --json FILE          also write the results as JSON
#
# Output: one line per case: id, iterations, cpu_s, wall_s, ops_per_cpu_sec,
# cpu_wall_ratio. Lines starting with '#' are metadata.

module OpsCpuSec
  # Root of the SDK repository checkout under test.
  ROOT = File.expand_path('../..', __dir__)
  FIXTURES = File.join(__dir__, 'fixtures')
end

# The SDK and its code generator load from this checkout.
%w[aws-sdk-core aws-sigv4 aws-partitions aws-eventstream].each do |gem_name|
  $LOAD_PATH.unshift(File.join(OpsCpuSec::ROOT, 'gems', gem_name, 'lib'))
end
$LOAD_PATH.unshift(File.join(OpsCpuSec::ROOT, 'build_tools', 'aws-sdk-code-generator', 'lib'))

require 'optparse'
require 'json'
require 'base64'
require 'time'
require 'rexml/document'
require 'oj'
require 'ox'
require 'aws-sdk-core'
require 'aws-sdk-code-generator'
require_relative 'lib/stub_transport'
require_relative 'lib/cases'
require_relative 'lib/validator'

# Runs the ops/CPU-sec benchmark.
module OpsCpuSec
  ENGINES = {
    'json' => [Aws::Json, 'Aws::Json::OjEngine'],
    'xml' => [Aws::Xml::Parser, 'Aws::Xml::Parser::OxEngine'],
    'cbor' => [Aws::RpcV2, 'Aws::RpcV2::CborEngine']
  }.freeze
  DEFAULTS = { warmup: 1000, min_iterations: 50_000, min_cpu_seconds: 5.0 }.freeze
  HEADER = format('# %<id>-44s %<iterations>10s %<cpu>9s %<wall>9s %<ops>14s %<ratio>9s',
                  id: 'id', iterations: 'iterations', cpu: 'cpu_s', wall: 'wall_s',
                  ops: 'ops_cpu_sec', ratio: 'cpu_wall')
  ROW = '%<id>-46s %<iterations>10d %<cpu_seconds>9.4f %<wall_seconds>9.4f ' \
        '%<ops_per_cpu_second>14.2f %<cpu_wall_ratio>9.4f'

  class << self
    def main(argv)
      opts = parse_options(argv)
      ids = Cases.ids(opts[:filter])
      if ids.empty?
        warn "no cases match --filter #{opts[:filter].source.inspect}"
        return 2
      end
      return list(ids) if opts[:list]

      check_engines!
      cases = Cases.load(opts[:filter])
      return Validator.run(cases) ? 0 : 1 if opts[:validate]

      run_benchmarks(cases, opts)
      0
    end

    def parse_options(argv)
      opts = DEFAULTS.dup
      OptionParser.new do |o|
        o.on('--list') { opts[:list] = true }
        o.on('--validate') { opts[:validate] = true }
        o.on('--filter REGEX') { |value| opts[:filter] = Regexp.new(value) }
        o.on('--warmup N', Integer) { |value| opts[:warmup] = value }
        o.on('--min-iterations N', Integer) { |value| opts[:min_iterations] = value }
        o.on('--min-cpu-seconds S', Float) { |value| opts[:min_cpu_seconds] = value }
        o.on('--json FILE') { |value| opts[:json] = value }
      end.parse!(argv)
      opts
    end

    def list(ids)
      puts ids
      0
    end

    def run_benchmarks(cases, opts)
      meta = metadata.merge(opts.slice(:warmup, :min_iterations, :min_cpu_seconds).transform_keys(&:to_s))
      meta.each { |key, value| puts "# #{key}: #{value}" }
      puts HEADER
      $stdout.flush
      times0 = Process.times
      cpu0 = cpu_now
      results = cases.map { |test_case| measure_and_print(test_case, opts) }
      summary = summarize(results, cpu_now - cpu0, times0, Process.times)
      write_json(opts[:json], meta, summary, results) if opts[:json]
    end

    def measure_and_print(test_case, opts)
      result = measure(test_case, **opts.slice(:warmup, :min_iterations, :min_cpu_seconds))
      puts format(ROW, **result.transform_keys(&:to_sym))
      $stdout.flush
      result
    end

    def summarize(results, clock_cpu, times0, times1)
      times_cpu = (times1.utime + times1.stime) - (times0.utime + times0.stime)
      mean_ratio = results.sum { |r| r['cpu_wall_ratio'] } / results.size
      puts format('# cpu_wall_ratio_mean: %<ratio>.4f', ratio: mean_ratio)
      puts format('# process_cpu_check: clock_gettime=%<clock>.3fs Process.times(utime+stime)=%<times>.3fs',
                  clock: clock_cpu, times: times_cpu)
      mean_ratio
    end

    def write_json(path, meta, mean_ratio, results)
      File.write(path, JSON.pretty_generate('metadata' => meta, 'cpu_wall_ratio_mean' => mean_ratio,
                                            'results' => results))
    end

    # Warmup, GC, then call the operation until min_iterations or
    # min_cpu_seconds of process CPU, whichever comes first.
    def measure(test_case, warmup:, min_iterations:, min_cpu_seconds:)
      client = test_case.client
      method_name = test_case.method_name
      params = test_case.params
      warmup.times { client.public_send(method_name, params) }
      GC.start
      iterations, cpu, wall = timed_loop(client, method_name, params, min_iterations, min_cpu_seconds)
      { 'id' => test_case.id, 'iterations' => iterations, 'cpu_seconds' => cpu, 'wall_seconds' => wall,
        'ops_per_cpu_second' => iterations / cpu, 'cpu_wall_ratio' => cpu / wall }
    end

    def timed_loop(client, method_name, params, min_iterations, min_cpu_seconds)
      iterations = 0
      cpu0 = cpu_now
      wall0 = wall_now
      loop do
        client.public_send(method_name, params)
        iterations += 1
        next unless (iterations % 100).zero?
        break if iterations >= min_iterations || cpu_now - cpu0 >= min_cpu_seconds
      end
      [iterations, cpu_now - cpu0, wall_now - wall0]
    end

    def cpu_now
      Process.clock_gettime(Process::CLOCK_PROCESS_CPUTIME_ID)
    end

    def wall_now
      Process.clock_gettime(Process::CLOCK_MONOTONIC)
    end

    def check_engines!
      ENGINES.each do |kind, (mod, want)|
        got = mod.engine.name
        raise "#{kind} engine is #{got}, expected #{want}" unless got == want
      end
    end

    def metadata
      yjit = defined?(RubyVM::YJIT) && RubyVM::YJIT.enabled? ? 'on' : 'off'
      {
        'ruby' => RUBY_DESCRIPTION, 'yjit' => yjit, 'aws-sdk-core' => Aws::CORE_GEM_VERSION,
        'aws-sigv4' => Aws::Sigv4::VERSION, 'oj' => Oj::VERSION, 'ox' => Ox::VERSION,
        'engines' => ENGINES.transform_values { |(mod, _)| mod.engine.name }
      }
    end
  end
end

exit(OpsCpuSec.main(ARGV)) if $PROGRAM_NAME == __FILE__
