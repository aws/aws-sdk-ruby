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

  # creates a dummy plugin
  def new_plugin(plugin_name = nil)
    plugin_name ||= begin
      @plugin_n ||= 0
      @plugin_n += 1
      "Plugin#{@plugin_n}"
    end
    self.class.const_set(plugin_name, Class.new)
  end

  def client_class
    @client_class ||= Class.new(Seahorse::Client)
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

  def test_sub_classes_inherit_plugins
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
