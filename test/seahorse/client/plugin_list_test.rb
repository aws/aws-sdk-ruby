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
  class Client
    describe PluginList do

      it 'can add new plugins' do
        list = PluginList.new
        list.add('plugin1')
        list.to_a.must_equal(['plugin1'])
      end

      it 'can remove plugins' do
        list = PluginList.new
        list.add('plugin1')
        list.add('plugin2')
        list.remove('plugin1')
        list.to_a.must_equal(['plugin2'])
      end

      it 'can be seeded from another plugin list' do
        list1 = PluginList.new
        list1.add('plugin1')
        list1.add('plugin2')
        list2 = PluginList.new(list1)
        list2.to_a.must_equal(list1.to_a)
      end

      it 'is enumerable' do
        list = PluginList.new(%w(plugin1 plugin2))
        list.must_be_kind_of(Enumerable)
        list.to_a.must_equal(%w(plugin1 plugin2))
      end

    end
  end
end
