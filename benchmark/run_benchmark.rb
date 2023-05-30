# frozen_string_literal: true

require 'tmpdir'
require 'memory_profiler' # MemoryProfiler does not work for JRuby
require 'json'

require_relative 'util'
require_relative 'test_data'

# require all service benchmarks
Dir[File.join(__dir__, 'services', '*.rb')].each { |file| require file }


# Modify load path to include all of our gems from local repo
Dir.glob("gems/*/lib") do |gem_path|
  $LOAD_PATH.unshift(File.expand_path(gem_path))
end

benchmark_gems = {
  'aws-sdk-core' => {}
}

# add all service benchmarks (Defined under namespace Benchmark::Service)
Benchmark::Service.constants
                   .map {|const| Benchmark::Service.const_get(const) }
                   .select {|const| const.is_a? Module }.each do |m|
  if (gem = m.const_get(:GEM_NAME)) && (benchmarks = m.const_get(:BENCHMARKS))
    puts "Adding benchmarks from #{m} (gem: #{gem})"
    benchmark_gems[gem] = benchmarks
  end
end

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
benchmark_data = report_data["benchmark"]

puts "Benchmarking gem size/requires/client initialization"
Dir.mktmpdir("ruby-sdk-benchmark") do |tmpdir|
  benchmark_gems.each do |gem, benchmark_def|
    puts "\tBenchmarking #{gem}"
    benchmark_data[gem] ||= {}
    Dir.chdir("gems/#{gem}") do
      `gem build #{gem}.gemspec -o #{tmpdir}/#{gem}.gem`
      benchmark_data[gem]['gem_size_kb'] = File.size("#{tmpdir}/#{gem}.gem") / 1024.0
      benchmark_data[gem]['gem_version'] = File.read("VERSION").strip
    end
    benchmark_require(gem, benchmark_data[gem])

    if benchmark_def[:module]
      benchmark_client(gem, benchmark_def[:module], benchmark_data[gem])
    end
  end
end

puts "\nBenchmarking operations"
benchmark_gems.each do |gem, benchmark_def|
  puts "\tBenchmarking #{gem}"
  benchmark_data[gem] ||= {}
  if benchmark_def[:module]
    if benchmark_def[:benchmarks]
      run_benchmarks(gem, benchmark_def[:module], benchmark_def[:benchmarks], benchmark_data[gem])
    end
  end
end

puts "Benchmarking complete, writing out report to: benchmark_report.json"
File.write("benchmark_report.json", JSON.pretty_generate(report_data))

