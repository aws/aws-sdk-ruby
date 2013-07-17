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
  class Client
    describe PluginList do

      Plugin1 = Class.new
      Plugin2 = Class.new

      def plugins
        @plugins ||= PluginList.new
      end

      it 'can be constructed with a list of plugins' do
        PluginList.new([Plugin1, Plugin2]).to_a.must_equal([Plugin1, Plugin2])
      end

      it 'can be seeded from another plugin list' do
        plugins.add(Plugin1)
        plugins.add(Plugin2)
        PluginList.new(plugins).to_a.must_equal([Plugin1, Plugin2])
      end

      describe '#add' do

        it 'adds a new plugin' do
          plugins.add(Plugin1)
          plugins.to_a.must_equal([Plugin1])
        end

        it 'returns the plugin' do
          plugins.add(Plugin1).must_equal(Plugin1)
        end

        it 'accepts a plugin by name (String)' do
          plugins.add('String').must_be_same_as(String)
        end

        it 'accepts a plugin by name (Symbol)' do
          plugins.add(:String).must_be_same_as(String)
        end

        it 'accepts a plugin with require prefix' do
          plugin = plugins.add('fixtures/plugin.Fixtures::Plugin')
          plugin.must_be_same_as(Fixtures::Plugin)
        end

      end

      describe '#remove' do

        it 'removes the plugin' do
          plugins.add(Plugin1)
          plugins.add(Plugin2)
          plugins.remove(Plugin1)
          plugins.to_a.must_equal([Plugin2])
        end

        it 'returns the removed plugin' do
          plugins.add(Plugin1)
          plugins.remove(Plugin1).must_equal(Plugin1)
        end

        it 'can remove a plugin added by name' do
          plugins.add(:String)
          plugins.remove(String)
          plugins.to_a.must_equal([])
        end

      end

      describe '#each' do

        it 'is enumerable' do
          plugins.must_be_kind_of(Enumerable)
        end

      end

      describe 'thread safety' do

        class DummyMutex
          def initialize
            @was_locked = false
          end
          attr_reader :was_locked
          def synchronize(&block)
            @was_locked = true
            yield
          end
        end

        def mutex
          @mutex ||= DummyMutex.new
        end

        def plugins
          @plugins ||= PluginList.new([Plugin1], mutex: mutex)
        end

        it 'locks the mutex when adding a plugin' do
          mutex.was_locked.must_equal(false)
          plugins.add(Plugin1)
          mutex.was_locked.must_equal(true)
        end

        it 'locks the mutex when removing a plugin' do
          mutex.was_locked.must_equal(false)
          plugins.remove(Plugin1)
          mutex.was_locked.must_equal(true)
        end

        it 'locks the mutex when enumerating plugins' do
          mutex.was_locked.must_equal(false)
          plugins.each { |plugin| }
          mutex.was_locked.must_equal(true)
        end

      end
    end
  end
end
