require 'simplecov'
require 'rspec'
require 'aws-sdk-core'
require 'seahorse'
require 'yaml'

require_relative '../vendor/seahorse/spec/spec_helper'

# prevent env from leaking state into tests
%w(AWS AMAZON).each do |prefix|
  ENV.delete("#{prefix}_ACCESS_KEY_ID")
  ENV.delete("#{prefix}_SECRET_ACCESS_KEY")
  ENV.delete("#{prefix}_SESSION_TOKEN")
end

def dummy_credentials
  @dummy_credentials ||= Aws::Credentials.new('akid', 'secret')
end

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
