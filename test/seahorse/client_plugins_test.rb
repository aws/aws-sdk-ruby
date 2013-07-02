# Copyright 2011-2013 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

    def new_plugin
      @plugin_n ||= 0
      @plugin_n += 1
      plugin_name = "Plugin#{@plugin_n}"
      plugin_class = Class.new
      plugin_class.class.send(:define_method, :inspect) do
        plugin_name
      end
      plugin_class
    end

    def client_class
      @client_class ||= Class.new(Seahorse::Client)
      @client_class
    end

    describe '.add_plugin' do

      it 'adds plugins to the client' do
        plugin = new_plugin
        client_class.add_plugin(plugin)
        assert_equal([plugin], client_class.plugins)
      end

      it 'does not add plugins to the base class' do
        plugin = new_plugin
        subclass = Class.new(client_class)
        subclass.add_plugin(plugin)
        client_class.plugins.must_equal([])
        subclass.plugins.must_equal([plugin])
      end

    end

    describe '.remove_plugin' do

      it 'removes a plugin from the client class' do
        plugin1, plugin2, plugin3 = (1..3).map { new_plugin }
        client_class.add_plugin(plugin1)
        client_class.add_plugin(plugin2)
        client_class.add_plugin(plugin3)
        client_class.remove_plugin(plugin2)
        client_class.plugins.must_equal([plugin1, plugin3])
      end

      it 'does not remove plugins from parent class' do
        plugin1, plugin2 = [new_plugin, new_plugin]

        client_class.add_plugin(plugin1)
        client_class.add_plugin(plugin2)

        subclass = Class.new(client_class)
        subclass.remove_plugin(plugin2)

        client_class.plugins.must_equal([plugin1, plugin2])
        subclass.plugins.must_equal([plugin1])
      end

    end

    describe '.plugins' do

      it 'returns a list of plugins applied to the client' do
        client_class.plugins.must_be_kind_of(Array)

      end

    end
  end
end
