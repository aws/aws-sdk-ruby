# frozen_string_literal: true

require_relative 'shared_spec_helper'

$LOAD_PATH.unshift(File.dirname(__FILE__))
$LOAD_PATH.unshift(File.expand_path('../../aws-partitions/lib',  __FILE__))
$LOAD_PATH.unshift(File.expand_path('../../../../build_tools/aws-sdk-code-generator/lib',  __FILE__))

require 'rspec'
require 'webmock/rspec'
require 'aws-sdk-code-generator'
require 'api_helper'
require 'aws-sdk-core'

# A helper :send_handler that does not send the request, it simply
# returns an empty response.
class DummySendHandler < Seahorse::Client::Handler

  def call(context)
    headers = context.config.response_headers
    headers = Seahorse::Client::Http::Headers.new(headers)
    context.http_response.headers = headers
    context.http_response.status_code = context.config.response_status_code
    context.http_response.body = StringIO.new(context.config.response_body)
    Seahorse::Client::Response.new(context: context)
  end

end

def call_handler(klass, opts = {}, &block)

  operation_name = opts.delete(:operation_name) || 'operation'
  params = opts.delete(:params) || {}

  config = opts.delete(:config) || Seahorse::Client::Configuration.new
  config.add_option(:response_status_code, 200)
  config.add_option(:response_headers, {})
  config.add_option(:response_body, '')
  opts.keys.each { |opt_name| config.add_option(opt_name) }

  context = Seahorse::Client::RequestContext.new(
    operation_name: operation_name,
    config: config.build!(opts),
    params: params)

  yield(context) if block_given?

  klass.new(DummySendHandler.new).call(context)

end

class DummySendPlugin < Seahorse::Client::Plugin
  class Handler < Seahorse::Client::Handler
    def call(context)
      Seahorse::Client::Response.new(
        context: context,
        data: context.config.response_data)
    end
  end
  option(:response_data) { { result: 'success' } }
  handler Handler, step: :send
end

module SpecHelper
  class << self

    def client_with_plugin(options = {}, &block)
      client_class = Class.new(Seahorse::Client::Base)
      client_class.set_plugins([Class.new(Seahorse::Client::Plugin, &block)])
      client_class.new(options)
    end

    # clears opentelemetry-sdk configuration state between specs
    # https://github.com/open-telemetry/opentelemetry-ruby/blob/main/test_helpers/lib/opentelemetry/test_helpers.rb#L18
    def reset_opentelemetry_sdk
      OpenTelemetry.instance_variable_set(
        :@tracer_provider,
        OpenTelemetry::Internal::ProxyTracerProvider.new
      )
      OpenTelemetry.error_handler = nil
      OpenTelemetry.propagation = nil
    end
  end
end

def data_to_hash(obj)
  case obj
  when Struct
    obj.members.each.with_object({}) do |member, hash|
      value = obj[member]
      hash[member] = data_to_hash(value) unless value.nil?
    end
  when Hash
    obj.each.with_object({}) do |(key, value), hash|
      hash[key] = data_to_hash(value)
    end
  when Array then obj.collect { |value| data_to_hash(value) }
  when IO, StringIO then obj.read
  else obj
  end
end
