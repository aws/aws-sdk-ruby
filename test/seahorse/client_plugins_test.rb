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

  def client_class
    @client_class ||= Class.new(Seahorse::Client)
  end

  def test_adding_plugins
    plugin = Class.new
    client_class.add_plugin(plugin)
    assert_equal([plugin], client_class.plugins)
  end

  def test_removing_plugins
    plugin1, plugin2, plugin3 = [Class.new, Class.new, Class.new]
    client_class.add_plugin(plugin1)
    client_class.add_plugin(plugin2)
    client_class.add_plugin(plugin3)
    client_class.remove_plugin(plugin2)
    assert_equal([plugin1, plugin3], client_class.plugins)
    client_class.plugins.must_equal([plugin1, plugin3])
  end

  def test_client_subclasses_inherit_plugins
  end

  def test_removing_plugin_does_not_affect_subclasses
  end

end
