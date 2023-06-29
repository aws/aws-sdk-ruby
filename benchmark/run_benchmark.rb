# frozen_string_literal: true

require 'tmpdir'
require 'memory_profiler' # MemoryProfiler does not work for JRuby
require 'json'

require_relative 'benchmark'

# Modify load path to include all of our gems from local repo
Dir.glob("gems/*/lib") do |gem_path|
  $LOAD_PATH.unshift(File.expand_path(gem_path))
end

report_data = Benchmark.initialize_report_data
benchmark_data = report_data["benchmark"]

puts "Benchmarking gem size/requires/client initialization"
Dir.mktmpdir("ruby-sdk-benchmark") do |tmpdir|
  Benchmark::Gem.descendants.each do |benchmark_gem_klass|
    benchmark_gem = benchmark_gem_klass.new
    puts "\tBenchmarking #{benchmark_gem.gem_name}"
    gem_data = benchmark_data[benchmark_gem.gem_name] ||= {}
    benchmark_gem.benchmark_gem_size(gem_data)
    benchmark_gem.benchmark_require(gem_data)
    benchmark_gem.benchmark_client(gem_data)
  end
end

# Benchmarking operations needs to be done after all require/client init tests
# have been done.  This ensures that no gem requires/cache state is in
# process memory for those tests
puts "\nBenchmarking operations"
Benchmark::Gem.descendants.each do |benchmark_gem_klass|
  benchmark_gem = benchmark_gem_klass.new
  puts "\tBenchmarking #{benchmark_gem.gem_name}"
  benchmark_gem.benchmark_operations(benchmark_data[benchmark_gem.gem_name])
end

puts "Benchmarking complete, writing out report to: benchmark_report.json"
File.write("benchmark_report.json", JSON.pretty_generate(report_data))
