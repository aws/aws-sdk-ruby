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

    def api
      @api ||= { 'endpoint' => 'http://endpoint:123' }
    end

    def client_class
      @client_class ||= Seahorse::Client.define(api)
    end

    describe 'adding configuration' do

      def plugin_class
        @plugin_class ||= begin
          Class.new(Client::Plugin) do

            def add_configuration(config)
              @config = config
            end

            attr_reader :config

            def self.new
              @instance ||= super
            end

          end
        end
      end

      def plugin
        @plugin ||= plugin_class.new
      end

      it 'tells the plugin to add configuration' do
        client_class.add_plugin(plugin_class)
        client = client_class.new
        plugin.config.must_be_same_as(client.config)
      end

      it 'calls #add_configuration only if the plugin responds' do
        plugin = Object.new # does not respond to #add_configuration
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

    end
  end
end
