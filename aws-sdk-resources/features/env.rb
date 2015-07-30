$LOAD_PATH << File.join(File.dirname(__FILE__), '..', 'lib')
$LOAD_PATH << File.join(File.dirname(__FILE__), '..', '..', 'aws-sdk-core', 'features')

require 'simplecov'
require 'aws-sdk-resources'
require 'integration-test-config'

IntegrationTestConfig.load!

SimpleCov.command_name('test:integration:aws-sdk-resources')

# Track all API calls made
class ApiCallTracker < Seahorse::Client::Plugin

  @api_calls = []

  class << self

    attr_reader :api_calls

    def called_operations
      api_calls.map { |resp| resp.context.operation_name }
    end

  end

  handle do |context|
    response = @handler.call(context)
    ApiCallTracker.api_calls << response
    response
  end

end

Aws.service_added do |_, svc_module, _|
  svc_module::Client.add_plugin(ApiCallTracker)
end

Before do |scenario|
  ApiCallTracker.api_calls.clear
end
