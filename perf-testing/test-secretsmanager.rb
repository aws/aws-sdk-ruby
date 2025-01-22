$LOAD_PATH.unshift(File.expand_path('../gems/aws-sdk-core/lib', __dir__))
$LOAD_PATH.unshift(File.expand_path('../gems/aws-sdk-secretsmanager/lib', __dir__))

require 'aws-sdk-core'
require 'aws-sdk-secretsmanager'
require 'aws-sdk-core/plugins/protocols/rpc_v2'
require 'securerandom'
require_relative 'Stats'
include Stats

Aws::SecretsManager::Client.remove_plugin(Aws::Plugins::Protocols::JsonRpc)
json_ssm = Aws::SecretsManager::Client.new(plugins: [Aws::Plugins::Protocols::JsonRpc], region: 'us-west-2')
cbor_ssm = Aws::SecretsManager::Client.new(plugins: [Aws::Plugins::Protocols::RpcV2], region: 'us-west-2')
cbor_ssm.config.api = cbor_ssm.config.api.dup
cbor_ssm.config.api.metadata = cbor_ssm.config.api.metadata.dup
cbor_ssm.config.api.metadata['protocol'] = 'smithy-rpc-v2-cbor'

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