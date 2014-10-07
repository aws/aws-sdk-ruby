$LOAD_PATH << File.join(File.dirname(__FILE__), '..', 'lib')

require 'simplecov'
require 'aws-sdk-resources'

SimpleCov.command_name('test:integration:aws-sdk-resources')

cfg = './integration-test-config.json'

if File.exist?(cfg)
  Aws.config = MultiJson.load(File.read(cfg), symbolize_keys: true)
elsif ENV['AWS_INTEGRATION']
  # run integration tests, just don't read a configuration file from disk
else
  msg = <<-MSG

*** skipping aws-sdk-resource integration tests ***
  To enable integration tests, create a #{cfg} file or export AWS_INTEGRATION=1

  MSG
  puts msg
  exit(0)
end

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
