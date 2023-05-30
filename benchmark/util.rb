# frozen_string_literal: true

# monotonic system clock should be used for any time difference measurements
def monotonic_milliseconds
  if defined?(Process::CLOCK_MONOTONIC)
    Process.clock_gettime(Process::CLOCK_MONOTONIC, :microsecond) / 1000.0
  else
    Time.now.to_f * 1000.0
  end
end

# benchmark a block, returning an array of times (to allow statistic computation)
def benchmark(n=300, &block)
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
def fork_run(&block)
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

def host_os
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

# benchmark requiring a gem - runs in a forked process (when supported)
# to ensure state of parent process is not modified by the require
# For accurate results, should be run before any SDK gems are required
# in the parent process
def benchmark_require(gem, data)
  data.merge!(fork_run do |out|
    t1 = monotonic_milliseconds
    require gem
    out[:require_time_ms] = (monotonic_milliseconds - t1)
  end)

  data.merge!(fork_run do |out|
    unless defined?(JRUBY_VERSION)
      r = ::MemoryProfiler.report { require gem }
      out[:require_mem_retained_kb] = r.total_retained_memsize / 1024.0
      out[:require_mem_allocated_kb] = r.total_allocated_memsize / 1024.0
    end
  end)
end

# benchmark creating a client - runs in a forked process (when supported)
# For accurate results, should be run before the client is initialized
# in the parent process to ensure cache is clean
def benchmark_client(gem, module_name, data)
  data.merge!(fork_run do |out|
    require gem
    client_klass = Aws.const_get(module_name).const_get(:Client)
    unless defined?(JRUBY_VERSION)
      r = ::MemoryProfiler.report { client_klass.new(stub_responses: true) }
      out[:client_mem_retained_kb] = r.total_retained_memsize / 1024.0
      out[:client_mem_allocated_kb] = r.total_allocated_memsize / 1024.0
    end
  end)
end

# This runs in the main process and requires service gems.
# It MUST be done after ALL testing of gem loads/client creates
def run_benchmarks(gem, module_name, benchmarks, data)
  require gem
  client_klass = Aws.const_get(module_name).const_get(:Client)

  data[:client_init_ms] = benchmark(300) do
    client_klass.new(stub_responses: true)
  end
  values = data[:client_init_ms]
  puts "\t\t#{gem} client init avg: #{'%.2f' % (values.sum(0.0) / values.size)} ms"

  benchmarks.each do |test_name, test_def|
    client = client_klass.new(stub_responses: true)
    req = test_def[:setup].call(client)
    n = test_def[:n] || 300
    # cloudwatch has a values limit of 150
    values = benchmark(n) do
      test_def[:test].call(client, req)
    end
    data["#{test_name}_ms"] = values
    puts "\t\t#{test_name} avg: #{ '%.2f' % (values.sum(0.0) / values.size)} ms"
  end
end
