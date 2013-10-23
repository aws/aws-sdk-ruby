if ENV['COVERAGE']
  require 'simplecov'
end

require 'rspec'
require 'webmock/rspec'
require 'seahorse'


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
