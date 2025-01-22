$LOAD_PATH.unshift(File.expand_path('../gems/aws-sdk-core/lib', __dir__))
$LOAD_PATH.unshift(File.expand_path('../gems/aws-sdk-cloudwatch/lib', __dir__))

require 'aws-sdk-core'
require 'aws-sdk-cloudwatch'
require 'aws-sdk-core/plugins/protocols/rpc_v2'
require_relative 'Stats'
include Stats

ITERATIONS = ARGV.first.to_i
WARMUP = 10
METRIC_COUNTS = [16, 64, 256, 1000]
BASE_TIME = Time.now.to_i - 2 * 60 * 60
SUITE_ID = (0...8).map { (48 + rand(10)).chr }.join

def generate_put_metric_data_request(metrics, base_time, suite_id)
  request = {}
  request[:namespace] = 'TestNamespace'
  metric_data = []
  metrics.times do |i|
    to_add = 2 * (i + 1)
    data = {
      metric_name: 'TestMetric',
      dimensions: [
        {
          name: 'TestNamespace',
          value: (suite_id.to_i - metrics).to_s
        }
      ],
      value: rand(0.0...1.0),
      unit: 'None',
      timestamp: Time.at(base_time + to_add)
    }
    metric_data << data
  end
  request[:metric_data] = metric_data
  request
end

def generate_get_metric_data_request(metrics, base_time, suite_id)
  request = {}
  request[:start_time] = Time.at(base_time)
  request[:end_time] = Time.at(base_time + 60 * 60)
  metric_data_query = {
    id: 'm0',
    return_data: true,
    metric_stat: {
      unit: 'None',
      stat: 'Sum',
      metric: {
        namespace: 'TestNamespace',
        metric_name: 'TestMetric',
        dimensions: [
          {
            name: 'TestDimension',
            value: (suite_id.to_i - metrics).to_s
          }
        ]
      },
      period: 60
    }
  }
  request[:metric_data_queries] = [metric_data_query]
  request
end

def generate_list_metrics_request(iteration)
  {
    namespace: "TestNamespace#{iteration}"
  }
end

thread = Thread.current
thread[:query_serde_data] = []
thread[:cbor_serde_data] = []
thread[:query_total_data] = []
thread[:cbor_total_data] = []
thread[:warm] = false

Aws::CloudWatch::Client.api.metadata['targetPrefix'] = 'GraniteServiceVersion20100801'
Aws::CloudWatch::Client.remove_plugin(Aws::Plugins::Protocols::Query)
query_cloudwatch = Aws::CloudWatch::Client.new(plugins: [Aws::Plugins::Protocols::Query], region: 'us-west-2')
cbor_cloudwatch = Aws::CloudWatch::Client.new(plugins: [Aws::Plugins::Protocols::RpcV2], region: 'us-west-2')
cbor_cloudwatch.config.api = cbor_cloudwatch.config.api.dup
cbor_cloudwatch.config.api.metadata = cbor_cloudwatch.config.api.metadata.dup
cbor_cloudwatch.config.api.metadata['protocol'] = 'smithy-rpc-v2-cbor'

# metric_counts = [16, 64, 256, 1000]
metric_counts = [1, 16]
thread[:warm] = true

data = File.open('perf-testing/test-output/cloudwatch/data.txt', 'w')
raw = File.open('perf-testing/test-output/cloudwatch/raw.txt', 'w')

def separate_serde_data(data)
  separated = Array.new(2) { [] }
  data.each do |i|
    separated[0] << i[0]
    separated[1] << i[1]
  end
  separated
end

def write_test_output(operation, protocol, dimension, metric, input, outfile)
  input.sort!
  result = {
    "service": 'CloudWatch',
    "test_case": operation,
    "protocol": protocol,
    "dimension_value": dimension,
    "metric": metric,
    "p50": p50(input),
    "p90": p90(input),
    "max": input.last,
    "n": ITERATIONS
  }
  outfile.puts(JSON.pretty_generate(result))
end

def output_raw(thread, outfile)
  $stdout = outfile
  puts 'Query Serde Data Raw'
  pp thread[:query_serde_data]
  puts 'Cbor Serde Data Raw'
  pp thread[:cbor_serde_data]
  puts 'Query Total Data Raw'
  pp thread[:query_total_data]
  puts 'Cbor Total Data Raw'
  pp thread[:cbor_total_data]
  $stdout = STDOUT
end

def clear_thread_data(thread)
  thread[:query_serde_data] = []
  thread[:cbor_serde_data] = []
  thread[:query_total_data] = []
  thread[:cbor_total_data] = []
end

def analyze(test_case, metrics, thread)
  raw.puts(test_case)
  output_raw(thread, raw)

  separated_query = separate_serde_data(thread[:query_serde_data])
  write_test_output(test_case, 'Query', metrics, 'Serialization time (ms)', separated_query[0], data)
  write_test_output(test_case, 'Query', metrics, 'Deserialization time (ms)', separated_query[1], data)
  write_test_output(test_case, 'Query', metrics, 'Total request time (ms)', thread[:query_total_data], data)

  separated_cbor = separate_serde_data(thread[:cbor_serde_data])
  write_test_output(test_case, 'CBOR', metrics, 'Serialization time (ms)', separated_cbor[0], data)
  write_test_output(test_case, 'CBOR', metrics, 'Deserialization time (ms)', separated_cbor[1], data)
  write_test_output(test_case, 'CBOR', metrics, 'Total request time (ms)', thread[:cbor_total_data], data)

  clear_thread_data(thread)
end

metric_counts.each do |metrics|
  (0...ITERATIONS).each do |i|
    puts 'Put Metric Data'
    request = generate_put_metric_data_request(metrics, BASE_TIME, SUITE_ID)
    t_query_total_start = Process.clock_gettime(Process::CLOCK_MONOTONIC)
    query_cloudwatch.put_metric_data(request)
    t_query_total_end = Process.clock_gettime(Process::CLOCK_MONOTONIC)
    thread[:query_total_data] << format('%.3f', (t_query_total_end - t_query_total_start) * 1000.0)

    t_cbor_total_start = Process.clock_gettime(Process::CLOCK_MONOTONIC)
    cbor_cloudwatch.put_metric_data(request)
    t_cbor_total_end = Process.clock_gettime(Process::CLOCK_MONOTONIC)
    thread[:cbor_total_data] << format('%.3f', (t_cbor_total_end - t_cbor_total_start) * 1000.0)
    sleep(2) if (i % 50).zero?
  end
  analyze('Put metric data', metrics, thread)
  (0...ITERATIONS).each do |i|
    puts 'Get Metric Data'
    request = generate_get_metric_data_request(metrics, BASE_TIME, SUITE_ID)
    t_query_total_start = Process.clock_gettime(Process::CLOCK_MONOTONIC)
    query_resp = query_cloudwatch.get_metric_data(request)
    t_query_total_end = Process.clock_gettime(Process::CLOCK_MONOTONIC)
    thread[:query_total_data] << format('%.3f', (t_query_total_end - t_query_total_start) * 1000.0)

    t_cbor_total_start = Process.clock_gettime(Process::CLOCK_MONOTONIC)
    cbor_resp = cbor_cloudwatch.get_metric_data(request)
    t_cbor_total_end = Process.clock_gettime(Process::CLOCK_MONOTONIC)
    thread[:cbor_total_data] << format('%.3f', (t_cbor_total_end - t_cbor_total_start) * 1000.0)
    puts 'Query Resp'
    pp query_resp
    puts 'Cbor Resp'
    pp cbor_resp
    sleep(2) if (i % 50).zero?
  end
  analyze('Get metric data', metrics, thread)
end
(0...ITERATIONS).each do |i|
  puts 'List Metrics'
  request = generate_list_metrics_request(i)
  t_query_total_start = Process.clock_gettime(Process::CLOCK_MONOTONIC)
  query_resp = query_cloudwatch.list_metrics(request)
  t_query_total_end = Process.clock_gettime(Process::CLOCK_MONOTONIC)
  thread[:query_total_data] << format('%.3f', (t_query_total_end - t_query_total_start) * 1000.0)

  t_cbor_total_start = Process.clock_gettime(Process::CLOCK_MONOTONIC)
  cbor_resp = cbor_cloudwatch.list_metrics(request)
  t_cbor_total_end = Process.clock_gettime(Process::CLOCK_MONOTONIC)
  thread[:cbor_total_data] << format('%.3f', (t_cbor_total_end - t_cbor_total_start) * 1000.0)
  puts 'Query Resp'
  pp query_resp
  puts 'Cbor Resp'
  pp cbor_resp
  sleep(2) if (i % 50).zero?
end
analyze('Put metric data', 0, thread)

data.close
raw.close
