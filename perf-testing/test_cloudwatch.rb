# frozen_string_literal: true

$LOAD_PATH.unshift(File.expand_path('../gems/aws-sdk-core/lib', __dir__))
$LOAD_PATH.unshift(File.expand_path('../gems/aws-sdk-cloudwatch/lib', __dir__))

require 'aws-sdk-core'
require 'aws-sdk-cloudwatch'
require 'aws-sdk-core/plugins/protocols/rpc_v2'
require 'securerandom'
require_relative 'Stats'
include Stats

ITERATIONS = ARGV.first.to_i
WARMUP = 10
METRIC_COUNTS = [16, 64, 256, 1000].freeze
BASE_TIME = Time.now - 2 * 60 * 60
SUITE_ID = SecureRandom.uuid

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
          name: 'TestDimension',
          value: "#{suite_id}-#{metrics}"
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
            value: "#{suite_id}-#{metrics}"
          }
        ]
      },
      period: 60
    }
  }
  request[:metric_data_queries] = [metric_data_query]
  request
end

def generate_list_metrics_request
  {
    namespace: 'TestNamespace'
  }
end

def separate_serde_data(data)
  separated = Array.new(2) { [] }
  data.each do |i|
    separated[0] << i[0]
    separated[1] << i[1]
  end
  separated
end

def separate_byte_data(data)
  separated = Array.new(2) { [] }
  data.each_with_index do |i, idx|
    if idx.even?
      separated[0] << i
    else
      separated[1] << i
    end
  end
  separated
end

def write_test_output(operation, protocol, dimension, metric, input, outfile)
  input.sort!
  result = {
    service: 'CloudWatch',
    test_case: operation,
    protocol: protocol,
    dimension_value: dimension,
    metric: metric,
    p50: p50(input),
    p90: p90(input),
    max: input.last,
    n: ITERATIONS
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
  puts 'Request Size Data Raw (Alternating Query and CBOR)'
  pp thread[:request_size_data]
  puts 'Response Size Data Raw (Alternating Query and CBOR)'
  pp thread[:response_size_data]
  $stdout = STDOUT
end

def clear_thread_data(thread)
  thread[:query_serde_data] = []
  thread[:cbor_serde_data] = []
  thread[:query_total_data] = []
  thread[:cbor_total_data] = []
  thread[:request_size_data] = []
  thread[:response_size_data] = []
end

def analyze(test_case, metrics, thread, data, raw)
  raw.puts(test_case)
  output_raw(thread, raw)

  separated_request_size = separate_byte_data(thread[:request_size_data])
  # pp separated_request_size
  separated_response_size = separate_byte_data(thread[:response_size_data])
  # pp separated_response_size

  separated_query_serde = separate_serde_data(thread[:query_serde_data])
  write_test_output(test_case, 'Query', metrics, 'Serialization time (ms)', separated_query_serde[0], data)
  write_test_output(test_case, 'Query', metrics, 'Deserialization time (ms)', separated_query_serde[1], data)
  write_test_output(test_case, 'Query', metrics, 'Total request time (ms)', thread[:query_total_data], data)
  write_test_output(test_case, 'Query', metrics, 'Request payload size (bytes)', separated_request_size[0], data)
  write_test_output(test_case, 'Query', metrics, 'Response payload size (bytes)', separated_response_size[0], data)

  separated_cbor_serde = separate_serde_data(thread[:cbor_serde_data])
  write_test_output(test_case, 'CBOR', metrics, 'Serialization time (ms)', separated_cbor_serde[0], data)
  write_test_output(test_case, 'CBOR', metrics, 'Deserialization time (ms)', separated_cbor_serde[1], data)
  write_test_output(test_case, 'CBOR', metrics, 'Total request time (ms)', thread[:cbor_total_data], data)
  write_test_output(test_case, 'CBOR', metrics, 'Request payload size (bytes)', separated_request_size[1], data)
  write_test_output(test_case, 'CBOR', metrics, 'Response payload size (bytes)', separated_response_size[1], data)

  clear_thread_data(thread)
end

thread = Thread.current
thread[:query_serde_data] = []
thread[:cbor_serde_data] = []
thread[:query_total_data] = []
thread[:cbor_total_data] = []
thread[:request_size_data] = []
thread[:response_size_data] = []
thread[:warm] = false

Aws::CloudWatch::Client.api.metadata['targetPrefix'] = 'GraniteServiceVersion20100801'
Aws::CloudWatch::Client.remove_plugin(Aws::Plugins::Protocols::Query)
query_cloudwatch = Aws::CloudWatch::Client.new(plugins: [Aws::Plugins::Protocols::Query], region: 'us-west-2')
cbor_cloudwatch = Aws::CloudWatch::Client.new(plugins: [Aws::Plugins::Protocols::RpcV2], region: 'us-west-2')
cbor_cloudwatch.config.api = cbor_cloudwatch.config.api.dup
cbor_cloudwatch.config.api.metadata = cbor_cloudwatch.config.api.metadata.dup
cbor_cloudwatch.config.api.metadata['protocol'] = 'smithy-rpc-v2-cbor'

data = File.open('perf-testing/test-output/cloudwatch/data.txt', 'w')
raw = File.open('perf-testing/test-output/cloudwatch/raw.txt', 'w')

(0...WARMUP).each do
  request = generate_put_metric_data_request(1, BASE_TIME, SUITE_ID)
  query_cloudwatch.put_metric_data(request)
  cbor_cloudwatch.put_metric_data(request)
  request = generate_get_metric_data_request(1, BASE_TIME, SUITE_ID)
  query_cloudwatch.get_metric_data(request)
  cbor_cloudwatch.get_metric_data(request)
end
(0...WARMUP).each do
  request = generate_list_metrics_request
  query_cloudwatch.list_metrics(request)
  cbor_cloudwatch.list_metrics(request)
end
thread[:warm] = true

METRIC_COUNTS.each do |metrics|
  (0...ITERATIONS).each do |i|
    request = generate_put_metric_data_request(metrics, BASE_TIME, SUITE_ID)
    t_query_total_start = Process.clock_gettime(Process::CLOCK_MONOTONIC)
    query_cloudwatch.put_metric_data(request)
    t_query_total_end = Process.clock_gettime(Process::CLOCK_MONOTONIC)
    thread[:query_total_data] << format('%.3f', (t_query_total_end - t_query_total_start) * 1000.0).to_f

    t_cbor_total_start = Process.clock_gettime(Process::CLOCK_MONOTONIC)
    cbor_cloudwatch.put_metric_data(request)
    t_cbor_total_end = Process.clock_gettime(Process::CLOCK_MONOTONIC)
    thread[:cbor_total_data] << format('%.3f', (t_cbor_total_end - t_cbor_total_start) * 1000.0).to_f

    # Sleep to prevent rate limit exceeded errors (from testing doc)
    sleep(2) if (i % 50).zero?
  end
  analyze('Put metric data', metrics, thread, data, raw)
  (0...ITERATIONS).each do |i|
    request = generate_get_metric_data_request(metrics, BASE_TIME, SUITE_ID)
    t_query_total_start = Process.clock_gettime(Process::CLOCK_MONOTONIC)
    query_cloudwatch.get_metric_data(request)
    t_query_total_end = Process.clock_gettime(Process::CLOCK_MONOTONIC)
    thread[:query_total_data] << format('%.3f', (t_query_total_end - t_query_total_start) * 1000.0).to_f

    t_cbor_total_start = Process.clock_gettime(Process::CLOCK_MONOTONIC)
    cbor_cloudwatch.get_metric_data(request)
    t_cbor_total_end = Process.clock_gettime(Process::CLOCK_MONOTONIC)
    thread[:cbor_total_data] << format('%.3f', (t_cbor_total_end - t_cbor_total_start) * 1000.0).to_f

    # Sleep to prevent rate limit exceeded errors (from testing doc)
    sleep(2) if (i % 50).zero?
  end
  analyze('Get metric data', metrics, thread, data, raw)
end
(0...ITERATIONS).each do |i|
  request = generate_list_metrics_request
  t_query_total_start = Process.clock_gettime(Process::CLOCK_MONOTONIC)
  query_cloudwatch.list_metrics(request)
  t_query_total_end = Process.clock_gettime(Process::CLOCK_MONOTONIC)
  thread[:query_total_data] << format('%.3f', (t_query_total_end - t_query_total_start) * 1000.0).to_f

  t_cbor_total_start = Process.clock_gettime(Process::CLOCK_MONOTONIC)
  cbor_cloudwatch.list_metrics(request)
  t_cbor_total_end = Process.clock_gettime(Process::CLOCK_MONOTONIC)
  thread[:cbor_total_data] << format('%.3f', (t_cbor_total_end - t_cbor_total_start) * 1000.0).to_f

  # Sleep to prevent rate limit exceeded errors (from testing doc)
  sleep(2) if (i % 50).zero?
end
analyze('List metrics', 0, thread, data, raw)

data.close
raw.close
