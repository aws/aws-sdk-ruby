# require 'aws-sdk-core/plugins/protocols/rpc_v2'
# ENV['AWS_REGION'] = 'us-west-2'
# Aws::CloudWatch::Client.api.metadata['targetPrefix'] = 'GraniteServiceVersion20100801'
# Aws::CloudWatch::Client.remove_plugin(Aws::Plugins::Protocols::Query)
# query_cloudwatch = Aws::CloudWatch::Client.new(plugins: [Aws::Plugins::Protocols::Query])
# cbor_cloudwatch = Aws::CloudWatch::Client.new(plugins: [Aws::Plugins::Protocols::RpcV2])
# query_cloudwatch.describe_alarms

# # Make a Query request to query_cloudwatch
# query_cloudwatch.describe_alarms
#
# # Make a CBOR request to cbor_cloudwatch
# cbor_cloudwatch.describe_alarms

# require 'aws-sdk-core/plugins/protocols/rpc_v2'
# ENV['AWS_REGION'] = 'us-west-2'
# Aws::SecretsManager::Client.remove_plugin(Aws::Plugins::Protocols::JsonRpc)
# json_ssm = Aws::SecretsManager::Client.new(plugins: [Aws::Plugins::Protocols::JsonRpc])
# cbor_ssm = Aws::SecretsManager::Client.new(plugins: [Aws::Plugins::Protocols::RpcV2])
# json_ssm.put_secret_value({secret_id: "arn:aws:secretsmanager:us-west-2:664418967014:secret:test_secret_name-P9RZGm", secret_string: "test_secret_string"})
#
# # TODO: identify where to add timestamps
# # TODO: add warm up iterations
# # TODO: add tests for each protocol type
# # TODO: add tests for each Ruby runtime version

def random_blob(seed)
  Random.new(seed).bytes(262144)
end

puts random_blob(1)

puts %w[a b c d e].sample(1, random: Random.new(123))
puts %w[a b c d e].sample(1, random: Random.new(123))
puts %w[a b c d e].sample(1, random: Random.new(123))
puts %w[a b c d e].sample(1, random: Random.new(123))


#
# # Local Test
# (1...500).each do |i|
#   # echo (All types input)
#   # echo (Long list of strings input)
#   # echo (Complex object input)
#   # echo (List of complex object input)
#   # echo (Very large block input)
# end
#
#
# # SecretsManager Test
# (1...500).each do |i|
#   # create_secret
#   # create_secret(binary)
# end
#
# sizes = [64, 512, 4096, 8192, 45056]
# sizes.each do |size|
#   (1...500).each do |i|
#     # put_secret_value(input)
#     # put_secret_value_binary(input)
#   end
#   (1...500).each do |i|
#     # get_secret_value(input)
#     # get_secret_value_binary(input)
#   end
# end
#
# (1...500).each do |i|
#   # describe_secret(input)
#   # list_secrets(input)
# end
#
# (1...500).each do |i|
#   # delete_secret(input)
#   # delete_secret_binary(input)
# end
#
#
# # CloudWatch Test
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
