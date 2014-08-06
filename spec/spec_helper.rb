require 'simplecov'
require 'rspec'
require 'webmock/rspec'
require 'aws-sdk-core'
require 'aws-sdk-resources'
require 'seahorse'
require 'yaml'

# prevent env from leaking state into tests
ENV.delete('AWS_REGION')
ENV.delete('AWS_PROFILE')
ENV.delete('AWS_ACCESS_KEY')
ENV.delete('AWS_SECRET_KEY')
%w(AWS AMAZON).each do |prefix|
  ENV.delete("#{prefix}_ACCESS_KEY_ID")
  ENV.delete("#{prefix}_SECRET_ACCESS_KEY")
  ENV.delete("#{prefix}_SESSION_TOKEN")
end

# Simply returns the request context without any http response info.
class NoSendHandler < Seahorse::Client::Handler
  def call(context)
    Seahorse::Client::Response.new(context: context)
  end
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

def client_class_with_plugin(&block)
  client = Seahorse::Client::Base.define
  client.set_plugins([Class.new(Seahorse::Client::Plugin, &block)])
  client
end

def client_with_plugin(options = {}, &block)
  client_class_with_plugin(&block).new(options)
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
