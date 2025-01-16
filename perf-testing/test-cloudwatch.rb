$LOAD_PATH.unshift(File.expand_path('../gems/aws-sdk-core/lib', __dir__))
$LOAD_PATH.unshift(File.expand_path('../gems/aws-sdk-cloudwatch/lib', __dir__))

require 'aws-sdk-core'
require 'aws-sdk-cloudwatch'
require 'aws-sdk-core/plugins/protocols/rpc_v2'


Aws::CloudWatch::Client.api.metadata['targetPrefix'] = 'GraniteServiceVersion20100801'
Aws::CloudWatch::Client.remove_plugin(Aws::Plugins::Protocols::Query)
query_cloudwatch = Aws::CloudWatch::Client.new(plugins: [Aws::Plugins::Protocols::Query], region: 'us-west-2')
cbor_cloudwatch = Aws::CloudWatch::Client.new(plugins: [Aws::Plugins::Protocols::RpcV2], region: 'us-west-2')

query_cloudwatch.describe_alarms
cbor_cloudwatch.describe_alarms

