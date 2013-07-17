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

    def client_class
      @client_class ||= Class.new(Seahorse::Client)
    end

    describe '.add_plugin' do

      it 'adds plugins to the client' do
        client_class.add_plugin(Plugin1)
        assert_equal([Plugin1], client_class.plugins)
      end

      it 'does not add plugins to the base class' do
        subclass = Class.new(client_class)
        subclass.add_plugin(Plugin1)
        client_class.plugins.must_equal([])
        subclass.plugins.must_equal([Plugin1])
      end

    end

    describe '.remove_plugin' do

      it 'removes a plugin from the client class' do
        client_class.add_plugin(Plugin1)
        client_class.add_plugin(Plugin2)
        client_class.remove_plugin(Plugin1)
        client_class.plugins.must_equal([Plugin2])
      end

      it 'does not remove plugins from parent class' do
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
