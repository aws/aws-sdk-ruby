# frozen_string_literal: true

require_relative 'test_data'

module Benchmark
  # monotonic system clock should be used for any time difference measurements
  def self.monotonic_milliseconds
    if defined?(Process::CLOCK_MONOTONIC)
      Process.clock_gettime(Process::CLOCK_MONOTONIC, :microsecond) / 1000.0
    else
      Time.now.to_f * 1000.0
    end
  end

  # benchmark a block, returning an array of times (to allow statistic computation)
  def self.measure_time(n=300, &block)
    values = Array.new(n)
    n.times do |i|
      t1 = monotonic_milliseconds
      block.call
      values[i] = monotonic_milliseconds - t1
    end
    values
  end

  # Run a block in a fork and returns the data from it
  # the block must take a single argument and will be called with an empty hash
  # any data that should be communicated back to the parent process can be written to that hash
  def self.fork_run(&block)
    # fork is not supported in JRuby, for now, just run this in the same process
    # data collected will not be as useful, but still valid for relative comparisons over time
    if defined?(JRUBY_VERSION)
      h = {}
      block.call(h)
      return h
    end

    rd, wr = IO.pipe
    p1 = fork do
      h = {}
      block.call(h)
      wr.write(JSON.dump(h))
      wr.close
    end
    Process.wait(p1)
    wr.close
    h = JSON.parse(rd.read, symbolize_names: true)
    rd.close
    return h
  end

  def self.host_os
    case RbConfig::CONFIG['host_os']
    when /mac|darwin/
      'macos'
    when /linux|cygwin/
      'linux'
    when /mingw|mswin/
      'windows'
    else
      'other'
    end
  end

  def self.initialize_report_data
    report_data = {'version' => '1.0'}
    begin
      report_data['commit_id'] = `git rev-parse HEAD`.strip
    rescue
      # unable to get a commit, maybe run outside of a git repo.  Skip
    end
    report_data['ruby_engine'] = RUBY_ENGINE
    report_data['ruby_engine_version'] = RUBY_ENGINE_VERSION
    report_data['ruby_version'] = RUBY_VERSION

    report_data['cpu'] = RbConfig::CONFIG['host_cpu']
    report_data['os'] = host_os
    report_data['execution_env'] = ENV['AWS_EXECUTION_ENV'] || ENV['EXECUTION_ENV'] || 'unknown'

    report_data['timestamp'] = Time.now.to_i

    report_data["benchmark"] = {}
    report_data
  end

  # abstract base class for benchmarking an SDK Gem
  # implementors must define the gem_name, client_klass, and operation_benchmarks methods
  class Gem

    # the name of them (eg: aws-sdk-s3)
    def gem_name; end

    # the module under Aws that contains the client (eg :S3)
    def client_module_name; end

    # return a hash with definitions for operation benchmarks to run
    # the key should be the name of the test (reported as the metric name)
    # Values should be a hash with keys: setup (proc), test (proc) and n (optional, integer)
    #
    # setup: must be a proc that takes a client.  Client will be pre initialized.
    # Setup may initialize stubs (eg `client.stub_responses(:operation, [...])`)
    # Setup MUST also return a hash with the request used in the test.
    # This is done to avoid the cost of creating the argument in each run of the test.
    #
    # test: a proc that takes a client and request (generated from calling the setup proc)
    def operation_benchmarks; end

    # build the gem from its gemspec, then get the file size on disc
    # done within a temp directory to prevent accumulation of .gem artifacts
    def benchmark_gem_size(report_data)
      Dir.mktmpdir("ruby-sdk-benchmark") do |tmpdir|
        Dir.chdir("gems/#{gem_name}") do
          `gem build #{gem_name}.gemspec -o #{tmpdir}/#{gem_name}.gem`
          report_data['gem_size_kb'] = File.size("#{tmpdir}/#{gem_name}.gem") / 1024.0
          report_data['gem_version'] = File.read("VERSION").strip
        end
      end
    end

    # benchmark requiring a gem - runs in a forked process (when supported)
    # to ensure state of parent process is not modified by the require
    # For accurate results, should be run before any SDK gems are required
    # in the parent process
    def benchmark_require(report_data)
      return unless gem_name

      report_data.merge!(Benchmark.fork_run do |out|
        t1 = Benchmark.monotonic_milliseconds
        require gem_name
        out[:require_time_ms] = (Benchmark.monotonic_milliseconds - t1)
      end)

      report_data.merge!(Benchmark.fork_run do |out|
        unless defined?(JRUBY_VERSION)
          r = ::MemoryProfiler.report { require gem_name }
          out[:require_mem_retained_kb] = r.total_retained_memsize / 1024.0
          out[:require_mem_allocated_kb] = r.total_allocated_memsize / 1024.0
        end
      end)
    end

    # benchmark creating a client - runs in a forked process (when supported)
    # For accurate results, should be run before the client is initialized
    # in the parent process to ensure cache is clean
    def benchmark_client(report_data)
      return unless client_module_name

      report_data.merge!(Benchmark.fork_run do |out|
        require gem_name
        client_klass = Aws.const_get(client_module_name).const_get(:Client)
        unless defined?(JRUBY_VERSION)
          r = ::MemoryProfiler.report { client_klass.new(stub_responses: true) }
          out[:client_mem_retained_kb] = r.total_retained_memsize / 1024.0
          out[:client_mem_allocated_kb] = r.total_allocated_memsize / 1024.0
        end
      end)
    end

    # This runs in the main process and requires service gems.
    # It MUST be done after ALL testing of gem loads/client creates
    def benchmark_operations(report_data)
      return unless gem_name && client_module_name && operation_benchmarks

      require gem_name

      client_klass = Aws.const_get(client_module_name).const_get(:Client)

      report_data[:client_init_ms] = Benchmark.measure_time(300) do
        client_klass.new(stub_responses: true)
      end

      values = report_data[:client_init_ms]
      puts "\t\t#{gem_name} client init avg: #{'%.2f' % (values.sum(0.0) / values.size)} ms"

      operation_benchmarks.each do |test_name, test_def|
        client = client_klass.new(stub_responses: true)
        req = test_def[:setup].call(client)


        # warmup (run a few iterations without measurement)
        2.times { test_def[:test].call(client, req) }

        mem_allocated = 0
        unless defined?(JRUBY_VERSION)
          r = ::MemoryProfiler.report { test_def[:test].call(client, req) }
          mem_allocated = report_data["#{test_name}_allocated_kb"] = r.total_allocated_memsize / 1024.0
        end

        n = test_def[:n] || 300
        values = Benchmark.measure_time(n) do
          test_def[:test].call(client, req)
        end
        report_data["#{test_name}_ms"] = values
        puts "\t\t#{test_name} avg: #{ '%.2f' % (values.sum(0.0) / values.size)} ms\tmem_allocated: #{'%.2f' % mem_allocated} kb"
      end
    end

    def self.descendants
      descendants = []
      ObjectSpace.each_object(singleton_class) do |k|
        next if k.singleton_class?
        descendants.unshift k unless k == self
      end
      descendants
    end
  end
end

# require all gem benchmarks
Dir[File.join(__dir__, 'gems', '*.rb')].each { |file| require file }

