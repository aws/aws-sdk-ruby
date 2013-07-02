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

      Plugin1 = Class.new
      Plugin2 = Class.new

      it 'can be seeded from another plugin list' do
        list1 = PluginList.new
        list1.add(Plugin1)
        list1.add(Plugin2)
        list2 = PluginList.new(list1)
        list2.to_a.must_equal(list1.to_a)
      end

      describe '#add' do

        it 'adds a new plugin' do
          list = PluginList.new
          list.add(Plugin1)
          list.to_a.must_equal([Plugin1])
        end

        it 'returns the plugin' do
          PluginList.new.add(Plugin1).must_equal(Plugin1)
        end

        it 'accepts a plugin by name (String)' do
          PluginList.new.add('String').must_be_same_as(String)
        end

        it 'accepts a plugin by name (Symbol)' do
          PluginList.new.add(:String).must_be_same_as(String)
        end

        it 'accepts a plugin with require prefix' do
          list = PluginList.new
          plugin = list.add('fixtures/plugin.Fixtures::Plugin')
          plugin.must_be_same_as(Fixtures::Plugin)
        end

      end

      describe '#remove' do

        it 'removes the plugin' do
          list = PluginList.new
          list.add(Plugin1)
          list.add(Plugin2)
          list.remove(Plugin1)
          list.to_a.must_equal([Plugin2])
        end

        it 'returns the removed plugin' do
          list = PluginList.new
          list.add(Plugin1)
          list.remove(Plugin1).must_equal(Plugin1)
        end

        it 'can remove a plugin added by name' do
          list = PluginList.new
          list.add(:String)
          list.remove(String)
          list.to_a.must_equal([])
        end

      end

      describe '#each' do

        it 'is enumerable' do
          plugins = [Plugin1, Plugin2]
          list = PluginList.new(plugins)
          list.must_be_kind_of(Enumerable)
          yielded = []
          list.each do |plugin|
            yielded << plugin
          end
          yielded.must_equal(plugins)
        end

      end

    end
  end
end
