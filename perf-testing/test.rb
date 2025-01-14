require 'aws-sdk-core/plugins/protocols/rpc_v2'
ENV['AWS_REGION'] = 'us-west-2'


Aws::CloudWatch::Client.api.metadata['targetPrefix'] = 'GraniteServiceVersion20100801'
Aws::CloudWatch::Client.remove_plugin(Aws::Plugins::Protocols::Query)
query_cloudwatch = Aws::CloudWatch::Client.new(plugins: [Aws::Plugins::Protocols::Query])
cbor_cloudwatch = Aws::CloudWatch::Client.new(plugins: [Aws::Plugins::Protocols::RpcV2])

# Make a Query request to query_cloudwatch
query_cloudwatch.describe_alarms

# Make a CBOR request to cbor_cloudwatch
cbor_cloudwatch.describe_alarms

Aws::SecretsManager::Client.remove_plugin(Aws::Plugins::Protocols::JsonRpc)
json_ssm = Aws::SecretsManager::Client.new(plugins: [Aws::Plugins::Protocols::JsonRpc])
cbor_ssm = Aws::SecretsManager::Client.new(plugins: [Aws::Plugins::Protocols::RpcV2])