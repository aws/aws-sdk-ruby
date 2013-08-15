# Copyright 2013 Amazon.com, Inc. or its affiliates. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License"). You
# may not use this file except in compliance with the License. A copy of
# the License is located at
#
#     http://aws.amazon.com/apache2.0/
#
# or in the "license" file accompanying this file. This file is
# distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF
# ANY KIND, either express or implied. See the License for the specific
# language governing permissions and limitations under the License.

require 'spec_helper'
require 'ostruct'

module Seahorse
  module Client
    describe Base do

      let(:api) {{ 'endpoint' => 'http://endpoint:123' }}

      let(:client_class) { Base.define(api: api) }

      let(:client) { client_class.new }

      let(:required_plugins) { Base::REQUIRED_PLUGINS }

      let(:plugin_a) { Class.new }

      let(:plugin_b) { Class.new }

      describe '#config' do

        it 'returns a Configuration object' do
          expect(client.config).to be_kind_of(Configuration)
        end

        it 'contains the client api' do
          expect(client.config.api).to be(client_class.api)
        end

        it 'defaults endpoint to the api endpoint' do
          expect(client.config.endpoint).to eq(api['endpoint'])
        end

        it 'defaults ssl_default to true' do
          expect(client.config.ssl_default).to equal(true)
        end

        it 'passes constructor args to the config' do
          client = client_class.new(foo: 'bar')
          client.config.add_option(:foo)
          expect(client.config.foo).to eq('bar')
        end

      end

      describe '#handlers' do

        it 'returns a HandlerList' do
          expect(client.handlers).to be_kind_of(HandlerList)
        end

        it 'builds a handler list from client plugins' do
          client_class.clear_plugins
          client_class.add_plugin(Plugins::NetHttp)
          expect(client.handlers.to_a).to eq([
            NetHttp::Handler,
            Plugins::Endpoint::EndpointHandler,
          ])
        end

        it 'defaults the send handler to a NetHttp::Handler' do
          expect(client.handlers.first).to be(NetHttp::Handler)
        end

      end

      describe '#build_request' do

        let(:request) { client.build_request('operation') }

        it 'returns a Request' do
          expect(request).to be_kind_of(Request)
        end

        it 'populates the request handlers' do
          expect(request.handlers.to_a).to eq(client.handlers.to_a)
        end

        it 'includes operation specific handlers in the handler list' do
          handler = double('handler')
          client.handler(handler, operations: ['operation'])
          request = client.build_request('operation')
          expect(request.handlers.to_a).to include(handler)
        end

        it 'populates the request context operation name' do
          request = client.build_request('operation_name')
          expect(request.context.operation_name).to eq('operation_name')
        end

        it 'stringifies the operation name' do
          request = client.build_request(:operation)
          expect(request.context.operation_name).to eq('operation')
        end

        it 'populates the request context params' do
          params = double('params')
          request = client.build_request('operation', params)
          expect(request.context.params).to be(params)
        end

        it 'defaults params to an empty hash' do
          request = client.build_request('operation')
          expect(request.context.params).to eq({})
        end

        it 'populates the request context configuration' do
          request = client.build_request('operation')
          expect(request.context.config).to be(client.config)
        end

      end

      describe '.api' do

        it 'can be set' do
          api = Model::Api.from_hash({})
          client_class = Class.new(Base)
          client_class.set_api(api)
          expect(client_class.api).to be(api)
        end

        it 'can be set as a hash, returning a Model::Api' do
          client_class = Class.new(Base)
          api = client_class.set_api({})
          expect(api).to be_kind_of(Model::Api)
          expect(api.to_hash).to eq(Model::Api.from_hash({}).to_hash)
        end

      end

      describe '.define' do

        it 'creates a new client class' do
          client_class = Client.define
          expect(client_class.ancestors).to include(Client::Base)
        end

        it 'sets the api on the client class' do
          api = Model::Api.from_hash({})
          client_class = Client.define(api: api)
          expect(client_class.api).to be(api)
        end

        it 'extends from subclasses of client' do
          klass1 = Client.define
          klass2 = klass1.define
          expect(klass2.ancestors).to include(klass1)
          expect(klass2.ancestors).to include(Client::Base)
        end

        it 'applies plugins passed in via :plugins' do
          client_class = Client.define(plugins: [plugin_a])
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
          expect(client_class.plugins).to eq(required_plugins + [plugin_b])
        end

      end

      describe '.clear_plugins' do

        it 'removes all plugins' do
          client_class.add_plugin(plugin_a)
          client_class.clear_plugins
          expect(client_class.plugins).to eq(required_plugins + [])
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
            Plugins::Api,
            Plugins::Endpoint,
            Plugins::NetHttp,
            Plugins::OperationMethods
          ])
        end

        it 'replaces default plugins with the list specified in the API' do
          stub_const('Seahorse::Client::PluginA', plugin_a)
          api = { 'plugins' => ['Seahorse::Client::PluginA'] }
          client_class = Base.define(api: api)
          expect(client_class.plugins.count).to eq(5)
          expect(client_class.plugins).to include(plugin_a)
        end

      end

      describe '.client_class' do

        it 'consults plugin list to see what client class to construct' do
          subclient_class = Class.new(client_class)

          plugin = double('plugin')
          plugin.stub(:client_class_for) do |klass, config|
            subclient_class
          end

          client_class.add_plugin(plugin)
          expect(client_class.client_class).to be(subclient_class)
        end

        it 'does not change the client class if plugin#construct_client does not return Class' do
          plugin = Class.new(Plugin)
          plugin.stub(:construct_client) {|c,o| nil }
          client_class.add_plugin(plugin)
          expect(client_class.client_class).to be(client_class)
        end

        it 'takes the last returned Class object from plugins' do
          stub_const("ClassA", Class.new)
          stub_const("ClassB", Class.new)
          stub_const("ClassC", Class.new)

          plugin1 = double('plugin1')
          plugin1.stub(:client_class_for) {|c,o| ClassA }
          plugin2 = double('plugin2')
          plugin2.stub(:client_class_for) {|c,o| ClassB }
          plugin3 = double('plugin3')
          plugin3.stub(:client_class_for) {|c,o| ClassC }

          client_class.add_plugin(plugin1)
          client_class.add_plugin(plugin2)
          client_class.add_plugin(plugin3)

          expect(client_class.client_class).to eq ClassC
        end
      end

      describe '.new' do

        it 'constructs the class specified by .client_class' do
          new_client_class = Class.new { def initialize(cfg); end }
          client_class.stub(:client_class) { new_client_class }
          client = client_class.new(foo: 'bar')
          expect(client).to be_kind_of(new_client_class)
        end

        it 'instructs plugins to #initialize_client' do
          initialized_client = nil
          plugin = double('plugin')
          plugin.stub(:initialize_client) {|c| initialized_client = c }
          client_class.add_plugin(plugin)
          client = client_class.new
          expect(initialized_client).to be(client)
        end

        it 'instructs plugins to #add_options' do
          plugin = double('plugin')
          plugin.stub(:add_options) { |config| config.add_option(:foo) }
          client_class.add_plugin(plugin)
          expect(client_class.new.config).to respond_to(:foo)
        end

        it 'instructs plugins to #add_handlers' do
          plugin = double('plugin')
          expect(plugin).to receive(:is_a?).
            at_least(:once).with(kind_of(Class)) { false }
          expect(plugin).to receive(:add_handlers).with(
            kind_of(HandlerList), kind_of(Configuration))
          client_class.add_plugin(plugin)
          client_class.new
        end

        it 'does not call methods that plugin does not respond to' do
          plugin = Object.new
          client_class.add_plugin(plugin)
          client_class.new
        end

      end
    end
  end
end
