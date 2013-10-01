if ENV['COVERAGE']
  require 'simplecov'
end

require 'rspec'
require 'webmock/rspec'
require 'seahorse'

# A helper :send_handler that does not send the request, it simply
# returns an empty response.
class DummySendHandler < Seahorse::Client::Handler
  def call(context)
    options = { context: context, data: context.config.response_data }
    Seahorse::Client::Response.new(options).signal_complete
  end
end

class DummySendPlugin < Seahorse::Client::Plugin
  option(:response_data) { { result: 'success' } }
  handler DummySendHandler, step: :send
end

class Seahorse::Client::Base
  attr_reader :handlers
end

def client_class_with_plugin(&block)
  client = Seahorse::Client::Base.define
  client.set_plugins([Class.new(Seahorse::Client::Plugin, &block)])
  client
end

def client_with_plugin(options = {}, &block)
  client_class_with_plugin(&block).new(options)
end
