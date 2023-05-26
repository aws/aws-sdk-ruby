require 'tmpdir'
require 'memory_profiler' # MemoryProfiler does not work for JRuby
require 'json'

# Modify load path to include all of our gems from local repo
Dir.glob("gems/*/lib") do |gem_path|
  $LOAD_PATH.unshift(File.expand_path(gem_path))
end

def monotonic_milliseconds
  if defined?(Process::CLOCK_MONOTONIC)
    Process.clock_gettime(Process::CLOCK_MONOTONIC, :microsecond) / 1000.0
  else
    Time.now.to_f * 1000.0
  end
end

def benchmark(n=300, &block)
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
  values = out[:client_init_ms]
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

# polyfill random_number for older versions of Ruby.
unless Random.new.respond_to?(:random_number)
  class Random
    def random_number(n)
      (rand*n).floor
    end
  end
end

def random_value(i=0, seed=0)
  r = Random.new(i+seed) # use the index as the seed for predictable results
  case r.random_number(5)
  when 0 then "Some String value #{i}"
  when 1 then r.rand # a float value
  when 2 then r.random_number(100000) # a large integer
  when 3 then (0..r.random_number(100)).to_a # an array
  when 4 then {a: 1, b: 2, c: 3} # a hash
  else
    "generic string"
  end
end

def test_hash(n_keys=5, seed=0)
  n_keys.times.map { |i| ["key#{i}", random_value(i, seed)]}.to_h
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
        n: 150,
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
        n: 150,
        setup: proc do |client|
          {bucket: 'bucket', key: 'key', body: "." * 1024*1024*10}
        end,
        test: proc do |client, req|
          client.put_object(req)
        end
      },
      head_object: {
        setup: proc do |client|
          {bucket: 'bucket', key: 'key'}
        end,
        test: proc do |client, req|
          client.head_object(req)
        end
      },
    }
  },
  'aws-sdk-dynamodb' => {
    module: :DynamoDB,
    benchmarks: {
      get_item_small: {
        setup: proc do |client|
          client.stub_responses(:get_item, [{item: test_hash(5)}])
          {key: {'pk': 'value', 'rk': 'rk1'}, table_name: 'table'}
        end,
        test: proc do |client, req|
          client.get_item(req)
        end
      },
      get_item_large: {
        n: 150,
        setup: proc do |client|
          client.stub_responses(:get_item, [{item: test_hash(1000)}])
          {key: {'pk': 'value', 'rk': 'rk1'}, table_name: 'table'}
        end,
        test: proc do |client, req|
          client.get_item(req)
        end
      },
      put_item_small: {
        setup: proc do |client|
          {table_name: 'table', item: test_hash(5)}
        end,
        test: proc do |client, req|
          client.put_item(req)
        end
      },
      put_item_large: {
        n: 100,
        setup: proc do |client|
          {table_name: 'table', item: test_hash(1000)}
        end,
        test: proc do |client, req|
          client.put_item(req)
        end
      },
      batch_get_item_large: {
        n: 100,
        setup: proc do |client|
          client.stub_responses(:batch_get_item, [{responses: { "table" => (0...100).map { |i| test_hash(10, i)}}}])
          {request_items: { "table" => {keys: (0...100).map{ |i| {"pk" => i}}}}}
        end,
        test: proc do |client, req|
          client.batch_get_item(req)
        end
      }
    }
  },
  'aws-sdk-cloudwatchlogs' => {
    module: :CloudWatchLogs,
    benchmarks: {
      put_log_events_small: {
        setup: proc do |client|
          {log_group_name: 'log_group', log_stream_name: 'log_stream', log_events: (0...5).map { |i| { timestamp: Time.now.to_i, message: "test log event #{i}"}}}
        end,
        test: proc do |client, req|
          client.put_log_events(req)
        end
      },
      put_log_events_large: {
        setup: proc do |client|
          {log_group_name: 'log_group', log_stream_name: 'log_stream', log_events: (0...5000).map { |i| { timestamp: Time.now.to_i, message: "test log event #{i} - #{random_value(i)}"}}}
        end,
        test: proc do |client, req|
          client.put_log_events(req)
        end
      },
      get_log_events_small: {
        setup: proc do |client|
          client.stub_responses(:get_log_events, [{events: (0...5).map { |i| { timestamp: Time.now.to_i, message: "test log event #{i} - #{random_value(i)}"}}}])
          {log_group_name: 'log_group', log_stream_name: 'log_stream'}
        end,
        test: proc do |client, req|
          client.get_log_events(req)
        end
      },
      get_log_events_large: {
        setup: proc do |client|
          client.stub_responses(:get_log_events, [{events: (0...5000).map { |i| { timestamp: Time.now.to_i, message: "test log event #{i} - #{random_value(i)}"}}}])
          {log_group_name: 'log_group', log_stream_name: 'log_stream'}
        end,
        test: proc do |client, req|
          client.get_log_events(req)
        end
      },
      filter_log_events_large: {
        setup: proc do |client|
          client.stub_responses(:filter_log_events, [{events: (0...5000).map { |i| { timestamp: Time.now.to_i, message: "test log event #{i} - #{random_value(i)}"}}}])
          {log_group_name: 'log_group', log_stream_names: ['log_stream'], start_time: 1, end_time: 1000}
        end,
        test: proc do |client, req|
          client.filter_log_events(req)
        end
      }
    }
  },
  'aws-sdk-sns' => {
    module: :SNS,
    benchmarks: {
      publish_small: {
        setup: proc do |client|
          {topic_arn: 'topic', subject: "subject", message: 'message'}
        end,
        test: proc do |client, req|
          client.publish(req)
        end
      },
      publish_large: {
        setup: proc do |client|
          {topic_arn: 'topic', subject: "subject", message: 'message'*1000, message_attributes: (0..100).map { |i| ["key#{i}", {data_type: "String", string_value: "string data#{i}"}]}.to_h}
        end,
        test: proc do |client, req|
          client.publish(req)
        end
      },
    }
  },
  'aws-sdk-kinesis' => {
    module: :Kinesis,
    benchmarks: {
      put_record_small: {
        setup: proc do |client|
          {stream_name: 'stream', partition_key: "pk", data: 'data'}
        end,
        test: proc do |client, req|
          client.put_record(req)
        end
      },
      put_record_large: {
        setup: proc do |client|
          {stream_name: 'stream', partition_key: "pk", data: 'data'*10000}
        end,
        test: proc do |client, req|
          client.put_record(req)
        end
      },
    }
  },
  'aws-sdk-cloudwatch' => {
    module: :CloudWatch,
    benchmarks: {
      put_metric_data_small: {
        setup: proc do |client|
          {namespace: 'namespace', metric_data: [{metric_name: "metric", timestamp: Time.now, value: 1.0, unit: "Seconds"}]}
        end,
        test: proc do |client, req|
          client.put_metric_data(req)
        end
      },
      put_metric_data_large: {
        setup: proc do |client|
          {namespace: 'namespace', metric_data:
            (0...10).map do
              {metric_name: "metric", timestamp: Time.now, values: (0...150).to_a, unit: "Seconds"}
            end}
        end,
        test: proc do |client, req|
          client.put_metric_data(req)
        end
      },
    }
  }
}

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

