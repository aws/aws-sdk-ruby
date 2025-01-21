$LOAD_PATH.unshift(File.expand_path('../gems/aws-sdk-core/lib', __dir__))
$LOAD_PATH.unshift(File.expand_path('../gems/aws-sdk-cloudwatch/lib', __dir__))

require 'aws-sdk-core'
require 'aws-sdk-cloudwatch'
require 'aws-sdk-core/plugins/protocols/rpc_v2'

ITERATIONS = ARGV.first.to_i
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
    name_space: "TestNamespace#{iteration}"
  }
end

Aws::CloudWatch::Client.api.metadata['targetPrefix'] = 'GraniteServiceVersion20100801'
Aws::CloudWatch::Client.remove_plugin(Aws::Plugins::Protocols::Query)
query_cloudwatch = Aws::CloudWatch::Client.new(plugins: [Aws::Plugins::Protocols::Query], region: 'us-west-2')
cbor_cloudwatch = Aws::CloudWatch::Client.new(plugins: [Aws::Plugins::Protocols::RpcV2], region: 'us-west-2')
cbor_cloudwatch.config.api = cbor_cloudwatch.config.api.dup
cbor_cloudwatch.config.api.metadata = cbor_cloudwatch.config.api.metadata.dup
cbor_cloudwatch.config.api.metadata['protocol'] = 'smithy-rpc-v2-cbor'

metric_counts = [1, 16, 64, 256, 1000]
metric_counts.each do |metrics|
  (0...ITERATIONS).each do |i|
    request = generate_put_metric_data_request(metrics, BASE_TIME, SUITE_ID)
    query_cloudwatch.put_metric_data(request)
    cbor_cloudwatch.put_metric_data(request)
    sleep(2) if (i % 50).zero?
  end
  # (0...ITERATIONS).each do |i|
  #   request = generate_get_metric_data_request(metrics, BASE_TIME, SUITE_ID)
  #   query_cloudwatch.get_metric_data(request)
  #   cbor_cloudwatch.get_metric_data(request)
  #   sleep(2) if (i % 50).zero?
  # end
end

# (0...ITERATIONS).each do |i|
#   request = generate_list_metrics_request(i)
#   query_cloudwatch.list_metrics(request)
#   cbor_cloudwatch.list_metrics(request)
#   sleep(2) if (i % 50).zero?
# end