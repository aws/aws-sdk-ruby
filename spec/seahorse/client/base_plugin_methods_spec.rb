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

      PluginA = Class.new
      PluginB = Class.new

      SingletonPlugin = Class.new do
        def self.new
          @instance ||= super
        end
      end

      def api
        @api ||= { 'endpoint' => 'http://endpoint:123', 'plugins' => [] }
      end

      def client_class
        @client_class ||= Client.define(api)
      end

      describe 'client construction' do

        def plugin_class
          @plugin_class ||= Class.new(SingletonPlugin) do
            def add_options(config)
              config.add_option(:plugin_option)
            end
          end
        end

        it 'instructs plugins to #add_options' do
          client_class.add_plugin(plugin_class)
          client_class.new.config.should respond_to(:plugin_option)
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
          client_class.add_plugin(PluginA)
          [PluginA].should eq(client_class.plugins)
        end

        it 'does not add plugins to the client parent class' do
          subclass = Class.new(client_class)
          subclass.add_plugin(PluginA)
          client_class.plugins.should eq([])
          subclass.plugins.should eq([PluginA])
        end

      end

      describe '.remove_plugin' do

        it 'removes a plugin from the client' do
          client_class.add_plugin(PluginA)
          client_class.add_plugin(PluginB)
          client_class.remove_plugin(PluginA)
          client_class.plugins.should eq([PluginB])
        end

        it 'does not remove plugins from the client parent class' do
          client_class.add_plugin(PluginA)
          client_class.add_plugin(PluginB)
          subclass = Class.new(client_class)
          subclass.remove_plugin(PluginB)
          client_class.plugins.should eq([PluginA, PluginB])
          subclass.plugins.should eq([PluginA])
        end

      end

      describe '.plugins' do

        it 'returns a list of plugins applied to the client' do
          client_class.plugins.should be_kind_of(Array)
        end

        it 'returns a frozen list of plugins' do
          client_class.plugins.frozen?.should eq(true)
        end

        it 'defaults to Plugins::NetHttp::Plugin' do
          client_class = Class.new(Base)
          client_class.plugins.to_a.should eq([Plugins::NetHttp])
        end

        it 'replaces default plugins with the list specified in the API' do
          api = { 'plugins' => ['Seahorse::Client::PluginA'] }
          client_class = Class.new(Base)
          client_class.set_api(api)
          client_class.plugins.to_a.should eq([PluginA])
        end

      end
    end
  end
end
