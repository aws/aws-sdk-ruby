$LOAD_PATH << File.join(File.dirname(__FILE__), '..', 'lib')

require 'simplecov'
require 'aws-sdk-resources'

SimpleCov.command_name('test:integration:aws-sdk-resources')


if ENV['AWS_INTEGRATION']

  $cfg_path = File.expand_path(File.join([
    File.dirname(__FILE__),
    '..',
    '..',
    'integration-test-config.json',
  ]))
  if File.exist?($cfg_path)
    $cfg = Aws::Json.load_file($cfg_path)
  else
    $cfg = {}
  end

else
  msg = <<-MSG

*** skipping aws-sdk-resource integration tests ***
  Export AWS_INTEGRATION=1 to enable integration tests

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

def cfg_value(*path)
  path_value = path.inject($cfg) do |value, key|
    if Hash === value && value.key?(key)
      value[key]
    else
      nil
    end
  end
  if path_value.nil?
    pending("set cfg#{path.map {|p| "[#{p.inspect}]" }.join} in #{$cfg_path}")
  else
    path_value
  end
end

Aws.service_added do |_, svc_module, _|
  svc_module::Client.add_plugin(ApiCallTracker)
end

Before do |scenario|
  ApiCallTracker.api_calls.clear
end
