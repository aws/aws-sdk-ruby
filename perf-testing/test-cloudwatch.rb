$LOAD_PATH.unshift(File.expand_path('../gems/aws-sdk-core/lib', __dir__))
$LOAD_PATH.unshift(File.expand_path('../gems/aws-sdk-cloudwatch/lib', __dir__))

require 'aws-sdk-core'
require 'aws-sdk-cloudwatch'
require 'aws-sdk-core/plugins/protocols/rpc_v2'

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
thread[:query_data] = []
thread[:cbor_data] = []
thread[:warm] = false

Aws::CloudWatch::Client.api.metadata['targetPrefix'] = 'GraniteServiceVersion20100801'
Aws::CloudWatch::Client.remove_plugin(Aws::Plugins::Protocols::Query)
query_cloudwatch = Aws::CloudWatch::Client.new(plugins: [Aws::Plugins::Protocols::Query], region: 'us-west-2')
cbor_cloudwatch = Aws::CloudWatch::Client.new(plugins: [Aws::Plugins::Protocols::RpcV2], region: 'us-west-2')
cbor_cloudwatch.config.api = cbor_cloudwatch.config.api.dup
cbor_cloudwatch.config.api.metadata = cbor_cloudwatch.config.api.metadata.dup
cbor_cloudwatch.config.api.metadata['protocol'] = 'smithy-rpc-v2-cbor'

# metric_counts = [1, 16, 64, 256, 1000]
metric_counts = [1, 16, 64]
thread[:warm] = true

metric_counts.each do |metrics|
  (0...ITERATIONS).each do |i|
    puts 'Put Metric Data'
    request = generate_put_metric_data_request(metrics, BASE_TIME, SUITE_ID)
    query_resp = query_cloudwatch.put_metric_data(request)
    cbor_resp = cbor_cloudwatch.put_metric_data(request)
    puts "Query Resp"
    pp query_resp
    puts "Cbor Resp"
    pp cbor_resp
    sleep(2) if (i % 50).zero?
  end
  (0...ITERATIONS).each do |i|
    puts 'Get Metric Data'
    request = generate_get_metric_data_request(metrics, BASE_TIME, SUITE_ID)
    query_resp = query_cloudwatch.get_metric_data(request)
    cbor_resp = cbor_cloudwatch.get_metric_data(request)
    puts "Query Resp"
    pp query_resp
    puts "Cbor Resp"
    pp cbor_resp
    sleep(2) if (i % 50).zero?
  end
end
(0...ITERATIONS).each do |i|
  puts 'List Metrics'
  request = generate_list_metrics_request(i)
  query_resp = query_cloudwatch.list_metrics(request)
  cbor_resp = cbor_cloudwatch.list_metrics(request)
  puts "Query Resp"
  pp query_resp
  puts "Cbor Resp"
  pp cbor_resp
  sleep(2) if (i % 50).zero?
end

pp thread[:query_data]
pp thread[:cbor_data]