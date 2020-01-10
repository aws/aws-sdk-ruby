require_relative '../../spec_helper'
require 'ostruct'

module Seahorse
  module Client
    describe Base do

      let(:api) { Seahorse::Model::Api.new }

      let(:client_class) { Base.define(api:api) }

      let(:client) { client_class.new(endpoint:'http://example.com') }

      let(:plugin_a) { Class.new }

      let(:plugin_b) { Class.new }

      it 'is a HandlerBuilder' do
        expect(client).to be_kind_of(HandlerBuilder)
      end

      describe '#config' do

        it 'returns a Configuration struct' do
          expect(client.config).to be_kind_of(Struct)
        end

        it 'contains the client api' do
          expect(client.config.api).to be(client_class.api)
        end

        it 'passes constructor args to the config' do
          expect {
            client_class.new(foo: 'bar')
          }.to raise_error(ArgumentError, /invalid configuration option/)
        end

      end

      describe '#handlers' do

        it 'returns a HandlerList' do
          expect(client.handlers).to be_kind_of(HandlerList)
        end

        it 'builds a handler list from client plugins' do
          client_class.clear_plugins
          client_class.add_plugin(Plugins::NetHttp)
          expect(client_class.new.handlers.to_a).to eq([NetHttp::Handler])
        end

        it 'defaults the send handler to a NetHttp::Handler' do
          expect(client.handlers.first).to be(NetHttp::Handler)
        end

      end

      describe '#build_request' do

        let(:request) { client.build_request('operation_name') }

        before(:each) do
          api.add_operation(:operation_name, Model::Operation.new)
        end

        it 'returns a Request' do
          expect(request).to be_kind_of(Request)
        end

        it 'populates the request handlers' do
          expect(request.handlers.to_a).to eq(client.handlers.to_a)
        end

        it 'includes operation specific handlers in the handler list' do
          handler = double('handler')
          client.handler(handler, operations: ['operation_name'])
          request = client.build_request('operation_name')
          expect(request.handlers.to_a).to include(handler)
        end

        it 'populates the request context operation name' do
          request = client.build_request('operation_name')
          expect(request.context.operation_name).to eq('operation_name')
        end

        it 'stringifies the operation name' do
          request = client.build_request(:operation_name)
          expect(request.context.operation_name).to eq(:operation_name)
        end

        it 'populates the request context params' do
          params = double('params')
          request = client.build_request('operation_name', params)
          expect(request.context.params).to be(params)
        end

        it 'defaults params to an empty hash' do
          request = client.build_request('operation_name')
          expect(request.context.params).to eq({})
        end

        it 'populates the request context configuration' do
          request = client.build_request('operation_name')
          expect(request.context.config).to be(client.config)
        end

        it 'raises an error for unknown operations' do
          expect {
            client.build_request('foo')
          }.to raise_error("unknown operation \"foo\"")
        end

      end

      describe 'api operations' do

        let(:request) { double('request') }

        before(:each) do
          api.add_operation(:operation_name, Model::Operation.new)
          allow(client).to receive(:build_request).and_return(request)
          allow(request).to receive(:send_request)
        end

        it 'can return a list of valid operation names' do
          expect(client.operation_names).to eq([:operation_name])
        end

        it 'does not include async operation names' do
          op = Model::Operation.new
          op.async = true
          api.add_operation(:async_op, op)
          expect(client.operation_names).to eq([:operation_name])
        end

        it 'responds to each operation name' do
          client.operation_names.each do |operation_name|
            expect(client).to respond_to(operation_name)
          end
        end

        it 'builds and sends a request when it receives a request method' do
          expect(client).to receive(:build_request).
            with(:operation_name, foo:'bar').
            and_return(request)
          expect(request).to receive(:send_request)
          client.operation_name(foo:'bar')
        end

        it 'passes block arguments to the request method' do
          allow(request).to receive(:send_request).
            and_yield('chunk1').
            and_yield('chunk2').
            and_yield('chunk3')
          chunks = []
          client.operation_name(foo:'bar') do |chunk|
            chunks << chunk
          end
          expect(chunks).to eq(%w(chunk1 chunk2 chunk3))
        end

      end

      describe '.api' do

        it 'can be set' do
          api = Model::Api.new
          client_class = Class.new(Base)
          client_class.set_api(api)
          expect(client_class.api).to be(api)
        end

      end

      describe '.define' do

        it 'creates a new client class' do
          client_class = Base.define
          expect(client_class.ancestors).to include(Client::Base)
        end

        it 'sets the api on the client class' do
          api = Model::Api.new
          client_class = Base.define(api: api)
          expect(client_class.api).to be(api)
        end

        it 'extends from subclasses of client' do
          klass1 = Base.define
          klass2 = klass1.define
          expect(klass2.ancestors).to include(klass1)
          expect(klass2.ancestors).to include(Client::Base)
        end

        it 'applies plugins passed in via :plugins' do
          client_class = Base.define(plugins: [plugin_a])
          expect(client_class.plugins).to include(plugin_a)
        end

      end

      describe '.add_plugin' do

        it 'adds plugins to the client' do
          client_class.add_plugin(plugin_a)
          expect(client_class.plugins).to include(plugin_a)
        end

        it 'does not add plugins to the client parent class' do
          subclass = Class.new(client_class)
          subclass.add_plugin(plugin_a)
          expect(client_class.plugins).to_not include(plugin_a)
          expect(subclass.plugins).to include(plugin_a)
        end

      end

      describe '.remove_plugin' do

        it 'removes a plugin from the client' do
          client_class.add_plugin(plugin_a)
          client_class.add_plugin(plugin_b)
          client_class.remove_plugin(plugin_a)
          expect(client_class.plugins).not_to include(plugin_a)
          expect(client_class.plugins).to include(plugin_b)
        end

        it 'does not remove plugins from the client parent class' do
          client_class.add_plugin(plugin_a)
          subclass = client_class.define
          subclass.remove_plugin(plugin_a)
          expect(client_class.plugins).to include(plugin_a)
          expect(subclass.plugins).not_to include(plugin_a)
        end

      end

      describe '.set_plugins' do

        it 'replaces existing plugins' do
          client_class.add_plugin(plugin_a)
          client_class.set_plugins([plugin_b])
          expect(client_class.plugins).to eq([plugin_b])
        end

      end

      describe '.clear_plugins' do

        it 'removes all plugins' do
          client_class.add_plugin(plugin_a)
          client_class.clear_plugins
          expect(client_class.plugins).to eq([])
        end

      end

      describe '.plugins' do

        it 'returns a list of plugins applied to the client' do
          expect(client_class.plugins).to be_kind_of(Array)
        end

        it 'returns a frozen list of plugins' do
          expect(client_class.plugins.frozen?).to eq(true)
        end

        it 'has a defualt list of plugins' do
          client_class = Class.new(Base)
          expect(client_class.plugins.to_a).to eq([
            Plugins::Endpoint,
            Plugins::NetHttp,
            Plugins::RaiseResponseErrors,
            Plugins::ResponseTarget,
          ])
        end

      end

      describe '.new' do

        let(:plugin) {
          p = double('plugin')
          allow(p).to receive(:is_a?).with(kind_of(Class)).and_return(false)
          p
        }

        it 'instructs plugins to #before_initialize' do
          options = { endpoint: 'http://foo.com' }
          expect(plugin).to receive(:before_initialize).with(client_class, options)
          client_class.add_plugin(plugin)
          client_class.new(options)
        end

        it 'instructs plugins to #add_options' do
          expect(plugin).to receive(:add_options) do |config|
            config.add_option(:foo, 'bar')
            config.add_option(:endpoint, 'http://foo.com')
            config.add_option(:regional_endpoint, false)
          end
          client_class.add_plugin(plugin)
          expect(client_class.new.config.foo).to eq('bar')
        end

        it 'instructs plugins to #add_handlers' do
          expect(plugin).to receive(:add_handlers).
            with(kind_of(HandlerList), kind_of(Struct))
          client_class.add_plugin(plugin)
          client_class.new(endpoint:'http://foo.com')
        end

        it 'instructs plugins to #after_initialize' do
          expect(plugin).to receive(:after_initialize).with(kind_of(Client::Base))
          client_class.add_plugin(plugin)
          client_class.new(endpoint:'http://foo.com')
        end

        it 'does not call methods that plugin does not respond to' do
          plugin = Object.new
          client_class.add_plugin(plugin)
          client_class.new(endpoint:'http://foo.com')
        end

      end
    end
  end
end
