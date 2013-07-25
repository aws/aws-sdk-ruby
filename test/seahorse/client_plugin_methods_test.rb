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

require 'test_helper'

module Seahorse
  describe Client do

    Plugin1 = Class.new
    Plugin2 = Class.new

    SingletonPlugin = Class.new(Client::Plugin) do
      def self.new
        @instance ||= super
      end
    end

    def api
      @api ||= { 'endpoint' => 'http://endpoint:123', 'plugins' => [] }
    end

    def client_class
      @client_class ||= Seahorse::Client.define(api)
    end

    describe 'client construction' do

      def plugin_class
        @plugin_class ||= Class.new(SingletonPlugin) do
          def add_configuration(config)
            config.add_option(:plugin_option)
          end
        end
      end

      it 'instructs plugins to #add_configuration' do
        client_class.add_plugin(plugin_class)
        client_class.new.config.must_respond_to(:plugin_option)
      end

      it 'calls plugin#add_configuration only if the plugin responds' do
        plugin = Object.new
        client_class.add_plugin(plugin)
        client_class.new
      end

      it 'instructs plugins to #add_handlers' do
        plugin = Minitest::Mock.new
        plugin.expect(:is_a?, false, [Class])
        plugin.expect(:is_a?, false, [Class])
        plugin.expect(:add_handlers, nil,
          [Client::HandlerList, Client::Configuration])
        client_class.add_plugin(plugin)
        client_class.new
        plugin.verify
      end

      it 'calls plugin#add_handlers only if the plugin responds' do
        plugin = Object.new
        client_class.add_plugin(plugin)
        client_class.new
      end

    end

    describe '.add_plugin' do

      it 'adds plugins to the client' do
        client_class.add_plugin(Plugin1)
        assert_equal([Plugin1], client_class.plugins)
      end

      it 'does not add plugins to the client parent class' do
        subclass = Class.new(client_class)
        subclass.add_plugin(Plugin1)
        client_class.plugins.must_equal([])
        subclass.plugins.must_equal([Plugin1])
      end

    end

    describe '.remove_plugin' do

      it 'removes a plugin from the client' do
        client_class.add_plugin(Plugin1)
        client_class.add_plugin(Plugin2)
        client_class.remove_plugin(Plugin1)
        client_class.plugins.must_equal([Plugin2])
      end

      it 'does not remove plugins from the client parent class' do
        client_class.add_plugin(Plugin1)
        client_class.add_plugin(Plugin2)
        subclass = Class.new(client_class)
        subclass.remove_plugin(Plugin2)
        client_class.plugins.must_equal([Plugin1, Plugin2])
        subclass.plugins.must_equal([Plugin1])
      end

    end

    describe '.plugins' do

      it 'returns a list of plugins applied to the client' do
        client_class.plugins.must_be_kind_of(Array)
      end

      it 'returns a frozen list of plugins' do
        client_class.plugins.frozen?.must_equal(true)
      end

      it 'defaults to Plugins::NetHttp::Plugin' do
        client_class = Class.new(Client)
        client_class.plugins.to_a.must_equal([Client::Plugins::NetHttp::Plugin])
      end

      it 'replaces default plugins with the list specified in the API' do
        api = { 'plugins' => ['Seahorse::Plugin1'] }
        client_class = Class.new(Client)
        client_class.set_api(api)
        client_class.plugins.to_a.must_equal([Plugin1])
      end

    end
  end
end
