# frozen_string_literal: true

$LOAD_PATH.unshift(File.expand_path('../../lib',  __FILE__))
$LOAD_PATH.unshift(File.expand_path('../../../aws-sigv4/lib',  __FILE__))
$LOAD_PATH.unshift(File.expand_path('../../../aws-eventstream/lib',  __FILE__))
$LOAD_PATH.unshift(File.expand_path('../../../aws-partitions/lib',  __FILE__))
$LOAD_PATH.unshift(File.expand_path('../../../../build_tools/aws-sdk-code-generator/lib',  __FILE__))

require 'aws-sdk-code-generator'
require 'aws-sdk-core'

##
## API Call Tracker
##
## Records API calls made through a client when this plugin
## is applied. **Warning** this call tracker is not thread
## safe.
##

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

Before do |scenario|
  ApiCallTracker.api_calls.clear
end

##
## Integration test configuration object
##
## Tests cases will be marked pending if the appropriate
## configuration is not in the configuration file.
##

class IntegrationTestConfig

  def initialize(values)
    @cfg = values
  end

  def value_at(*path)
    path.inject(@cfg) do |value, key|
      if Hash === value && value.key?(key)
        value[key]
      else
        nil
      end
    end
  end

  class << self

    def value_at(*path)
      @cfg.value_at(*path)
    end

    def load!
      @cfg = new(File.exist?(path) ? JSON.load_file(path) : {})
    end

    private

    def path
      File.expand_path(File.join([
        File.dirname(__FILE__),
        '..',
        '..',
        'integration-test-config.json',
      ]))
    end

  end
end

def cfg_value(*path)
  value = IntegrationTestConfig.value_at(*path)
  if value.nil?
    pending("set cfg#{path.map {|p| "[#{p.inspect}]" }.join} in #{IntegrationTestConfig.send(:path)}")
  else
    value
  end
end

IntegrationTestConfig.load!

##
## Shared step definitions
##

# Smoke Test Definitions
Given(/I create a '(.*?)' client with config:/) do |module_name, config|
  namespace = Object.const_get(module_name)
  opts = JSON.parse(config, symbolize_names: true)
  opts[:region] = ENV['AWS_SMOKE_TEST_REGION'] || opts[:region]
  @client = namespace::Client.new(opts)
end

When(/I call the operation '(.*?)' with params:/) do |operation, params|
  opts = JSON.parse(params, symbolize_names: true)
  begin
    @client.send(operation.to_sym, opts)
  rescue Aws::Errors::ServiceError => e
    @last_error = e
  end
end

Then(/I expect a '(.*?)' was raised/) do |error|
  error_class = Object.const_get(error)
  expect(@error).to be_a(error_class)
end

Then(/I expect an error was raised/) do
  expect(@last_error).to_not be_nil
end

Then(/I expect an error was not raised/) do
  expect(@last_error).to be_nil
end

# Integration Test Definitions
def eventually(options = {}, &block)
  seconds = options[:upto] || 15
  delays = [1]
  while delays.inject(0) { |sum, i| sum + i } < seconds
    delays << delays.last * 1.2
  end
  begin
    yield
  rescue StandardError, RSpec::Expectations::ExpectationNotMetError => error
    unless delays.empty?
      sleep(delays.shift)
      retry
    end
    raise error # terminal case
  end
end

def underscore(str)
  AwsSdkCodeGenerator::Underscore.underscore(str)
end

def symbolized_params(table)
  table.rows_hash.each_with_object({}) do |(key,value), hash|
    hash[underscore(key).to_sym] = param_value(value)
  end
end

def raw_params(table)
  table.rows_hash.each_with_object({}) do |(key,value), hash|
    hash[key] = param_value(value)
  end
end

def param_value(value)
  case value
  when /^\d+$/ then value.to_i
  when /^\[(.*)\]$/ then $1.split(',').map { |str| str[1..-2] }
  else value
  end
end

# loads configuration values from the integration test configuration file
Given(/^a "([^"]*)" is set in cfg(\[.*\])$/) do |name, path|
  instance_variable_set("@#{name}", cfg_value(*path.scan(/\w+/)))
end

When(/^I call the "(.*?)" API$/) do |api|
  @response = @client.send(underscore(api))
end

When(/^I call the "(.*?)" API with:$/) do |api, params|
  params = @simple_json ? raw_params(params) : symbolized_params(params)
  @response = @client.send(underscore(api), params)
end

When(/^I attempt to call the "(.*?)" API with:$/) do |api, params|
  params = @simple_json ? raw_params(params) : symbolized_params(params)
  begin
    @response = @client.send(underscore(api), params)
  rescue Aws::Errors::ServiceError => @error
  end
end

Then(/^the response should contain a (list of )?"(\w+?)"$/) do |_,member_name|
  data = @response.data
  data = data[underscore(member_name)]
  expect(data).to be_an(Array)
end

Then(/^the response should contain a "(\w+?)" with a list of "(\w+?)"$/) do |member1, member2|
  data = @response.data
  data = data[underscore(member1)]
  data = data[underscore(member2)]
  expect(data).to be_an(Array)
end

Then(/^I expect the response error code to be "(.*?)"$/) do |error_code|
  expect(@error.class.name.split('::').last).to eq(error_code)
end

Then(/^I expect the response error message to include:$/) do |error_message|
  expect(@error.message).to include(error_message)
end

Then(/^the HTTP request body should be:$/) do |string|
  expect(@response.context.http_request.body_contents).to eq(string)
end

Then(/^I expect response data to be a hash$/) do
  expect(@response.data).to be_a(Hash)
end

Then(/^I expect response data\["(.*?)"\] to be an array$/) do |key|
  expect(@response.data[key]).to be_an(Array)
end

Then(/^the response should contain a "(.*?)" member$/) do |member_name|
  expect(@response.data[underscore(member_name)]).not_to be_nil
end

Then(/^the value at "([^"]*)" should be a list$/) do |key|
  expect(@response.data[underscore(key)]).to be_an(Array)
end
