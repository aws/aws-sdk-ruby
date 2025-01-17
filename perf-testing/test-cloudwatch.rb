$LOAD_PATH.unshift(File.expand_path('../gems/aws-sdk-core/lib', __dir__))
$LOAD_PATH.unshift(File.expand_path('../gems/aws-sdk-cloudwatch/lib', __dir__))

require 'aws-sdk-core'
require 'aws-sdk-cloudwatch'
require 'aws-sdk-core/plugins/protocols/rpc_v2'

Aws::CloudWatch::Client.api.metadata['targetPrefix'] = 'GraniteServiceVersion20100801'
Aws::CloudWatch::Client.remove_plugin(Aws::Plugins::Protocols::Query)
query_cloudwatch = Aws::CloudWatch::Client.new(plugins: [Aws::Plugins::Protocols::Query], region: 'us-west-2')
cbor_cloudwatch = Aws::CloudWatch::Client.new(plugins: [Aws::Plugins::Protocols::RpcV2], region: 'us-west-2')
cbor_cloudwatch.config.api = cbor_cloudwatch.config.api.dup
cbor_cloudwatch.config.api.metadata = cbor_cloudwatch.config.api.metadata.dup
cbor_cloudwatch.config.api.metadata['protocol'] = 'smithy-rpc-v2-cbor'

query_cloudwatch.describe_alarms
cbor_cloudwatch.describe_alarms

# CloudWatch Test
# metric_counts = [16, 64, 256, 1000]
# metric_counts.each do |count|
#   (1...500).each do |i|
#     # put_metric_data(input)
#     sleep(2) if (i % 50).zero?
#   end
#   (1...500).each do |i|
#     # get_metric_data(input)
#     sleep(2) if (i % 50).zero?
#   end
# end
#
# (1...500).each do |i|
#   # list_metrics(input)
#   sleep(2) if (i % 50).zero?
# end

