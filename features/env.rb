$LOAD_PATH << File.join(File.dirname(__FILE__), '..', 'lib')

require 'simplecov'
require 'aws-sdk-core'
require 'multi_json'

config_file = './integration-test-config.json'

Aws.config = MultiJson.load(File.read(config_file), symbolize_keys: true)

def call_request(service, operation_name, params = {})
  service = instance_variable_get("@#{service}")
  @response = service.build_request(operation_name, params).send_request
end
