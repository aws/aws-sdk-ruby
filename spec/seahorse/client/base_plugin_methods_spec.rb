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

module Seahorse
  module Client
    describe Base do

      let(:plugin_a) { Class.new }

      let(:plugin_b) { Class.new }

      let(:client_class) { Client.define(api: {'endpoint' => 'http://endpoint:123'}) }

      describe 'client construction' do

        it 'instructs plugins to #add_options' do
          plugin = double('plugin')
          plugin.stub(:add_options) { |config| config.add_option(:foo) }
          client_class.add_plugin(plugin)
          expect(client_class.new.config).to respond_to(:foo)
        end

        it 'calls plugin#add_options only if the plugin responds' do
          plugin = Object.new
          client_class.add_plugin(plugin)
          client_class.new
        end

        it 'instructs plugins to #add_handlers' do
          plugin = double('plugin')
          expect(plugin).to receive(:is_a?).twice.with(kind_of(Class)) { false }
          expect(plugin).to receive(:add_handlers).with(
            kind_of(HandlerList), kind_of(Configuration))
          client_class.add_plugin(plugin)
          client_class.new
        end

        it 'calls plugin#add_handlers only if the plugin responds' do
          plugin = Object.new
          client_class.add_plugin(plugin)
          client_class.new
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
            Plugins::Api,
            Plugins::Endpoint,
            Plugins::NetHttp,
          ])
        end

        it 'replaces default plugins with the list specified in the API' do
          PluginA = plugin_a
          api = { 'plugins' => ['Seahorse::Client::PluginA'] }
          client_class = Base.define(api: api)
          expect(client_class.plugins.count).to eq(4)
          expect(client_class.plugins).to include(plugin_a)
        end

      end
    end
  end
end
