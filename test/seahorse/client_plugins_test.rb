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

class TestSeahoreClientPlugins < MiniTest::Unit::TestCase

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

  def test_adding_plugins
    plugin = new_plugin
    client_class.add_plugin(plugin)
    assert_equal([plugin], client_class.plugins)
  end

  def test_removing_plugins
    plugin1, plugin2, plugin3 = (1..3).map { new_plugin }
    client_class.add_plugin(plugin1)
    client_class.add_plugin(plugin2)
    client_class.add_plugin(plugin3)
    client_class.remove_plugin(plugin2)
    assert_equal([plugin1, plugin3], client_class.plugins)
  end

  def test_client_inherit_plugins_from_parent_class
    plugin1, plugin2 = [new_plugin, new_plugin]

    klass = Class.new(Seahorse::Client)
    klass.add_plugin(plugin1)

    subklass = Class.new(klass)
    subklass.add_plugin(plugin2)

    klass.plugins.must_equal([plugin1])
    subklass.plugins.must_equal([plugin1, plugin2])
  end

  def test_removing_plugin_does_not_affect_parent_class
    plugin1, plugin2 = [new_plugin, new_plugin]

    klass = Class.new(Seahorse::Client)
    klass.add_plugin(plugin1)
    klass.add_plugin(plugin2)

    subklass = Class.new(klass)
    subklass.remove_plugin(plugin1)

    klass.plugins.must_equal([plugin1, plugin2])
    subklass.plugins.must_equal([plugin2])
  end

end
