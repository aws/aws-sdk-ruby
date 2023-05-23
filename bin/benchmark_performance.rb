require 'tmpdir'
require 'memory_profiler'
require 'json'

# Modify load path to include all of our gems from local repo
Dir.glob("gems/*/lib") do |gem_path|
  $LOAD_PATH.unshift(File.expand_path(gem_path))
end

benchmark_data = {'version' => '1.0'}
begin
  benchmark_data['commit_id'] = `git rev-parse HEAD`.strip
rescue
  # unable to get a commit, maybe run outside of a git repo.  Skip
end
benchmark_data['ruby_version'] = RUBY_VERSION
benchmark_data['host_cpu'] = RbConfig::CONFIG['host_cpu']
benchmark_data['host_os'] = RbConfig::CONFIG['host_os']

def monotonic_milliseconds
  if defined?(Process::CLOCK_MONOTONIC)
    Process.clock_gettime(Process::CLOCK_MONOTONIC, :microsecond) / 1000.0
  else
    Time.now.to_f * 1000.0
  end
end

def benchmark(n, &block)
  values = Array.new(n)
  n.times do |i|
    t1 = monotonic_milliseconds
    block.call
    values[i] = monotonic_milliseconds - t1
  end
  values
end

def percentile(values, p)
  return 0 if values.empty?
  return values.first if values.size == 1

  values = values.sort
  return values.last if p == 100
  rank = p / 100.0 * (values.size - 1)
  lower, upper = values[rank.floor,2]
  lower + (upper - lower) * (rank - rank.floor)
end

# Run a block in a fork and returns the data from it
# the block must take a single argument and will be called with an empty hash
# any data that should be communicated back to the parent process can be written to that hash
def fork_run(&block)
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

def benchmark_require(gem, data)
  data.merge!(fork_run do |out|
    t1 = monotonic_milliseconds
    require gem
    out[:require_time_ms] = (monotonic_milliseconds - t1)
  end)

  data.merge!(fork_run do |out|
    r = ::MemoryProfiler.report { require gem }
    out[:require_mem_retained] = r.total_retained_memsize
  end)
end

def benchmark_client(gem, module_name, data)
  data.merge!(fork_run do |out|
    require gem
    client_klass = Aws.const_get(module_name).const_get(:Client)
    r = ::MemoryProfiler.report { client_klass.new }
    out[:client_mem_retained] = r.total_retained_memsize

    r = benchmark(1000) do
      client_klass.new(stub_responses: true)
    end
    out[:client_init_p90_ms] = percentile(r, 90)
  end)
end

# This runs in the main process and requires service gems.
# It MUST be done after ALL testing of gem loads/client creates
def run_benchmarks(gem, module_name, benchmarks, data)
  require gem
  data['benchmarks'] ||= {}
  benchmarks.each do |test_name, test_def|
    client_klass = Aws.const_get(module_name).const_get(:Client)
    client = client_klass.new(stub_responses: true)
    req = test_def[:setup].call(client)
    n = test_def[:n] || 1000
    values = benchmark(n) do
      test_def[:test].call(client, req)
    end
    data['benchmarks']["#{test_name}_p90_ms"] = percentile(values, 90)
  end
end

benchmark_gems = {
  'aws-sdk-core' => {},
  'aws-sdk-s3' => {
    module: :S3,
    benchmarks: {
      get_object_small: {
        setup: proc do |client|
          client.stub_responses(:get_object, [{body: "." * 128}])
          {bucket: 'bucket', key: 'key'}
        end,
        test: proc do |client, req|
          client.get_object(req)
        end
      },
      get_object_large: {
        n: 50,
        setup: proc do |client|
          client.stub_responses(:get_object, [{body: "." * 1024*1024*10}]) # 10 MB
          {bucket: 'bucket', key: 'key'}
        end,
        test: proc do |client, req|
          client.get_object(req)
        end
      },
      put_object_small: {
        setup: proc do |client|
          {bucket: 'bucket', key: 'key', body: '.' * 128}
        end,
        test: proc do |client, req|
          client.put_object(req)
        end
      },
      put_object_large: {
        n: 50,
        setup: proc do |client|
          {bucket: 'bucket', key: 'key', body: "." * 1024*1024*10}
        end,
        test: proc do |client, req|
          client.put_object(req)
        end
      }
    }
  },
  'aws-sdk-dynamodb' => {
    module: :DynamoDB
  }
}

puts "Benchmarking gem size/requires/client initialization"
Dir.mktmpdir("ruby-sdk-benchmark") do |tmpdir|
  benchmark_gems.each do |gem, benchmark_def|
    puts "\tBenchmarking #{gem}"
    benchmark_data[gem] ||= {}
    Dir.chdir("gems/#{gem}") do
      `gem build #{gem}.gemspec -o #{tmpdir}/#{gem}.gem`
      benchmark_data[gem]['gem_size'] = File.size("#{tmpdir}/#{gem}.gem")
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

puts benchmark_data
File.write("benchmark_report.json", JSON.pretty_generate(benchmark_data))

