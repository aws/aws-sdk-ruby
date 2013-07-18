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
      LazyPlugin = Class.new do
        def self.const_missing name
          const = Object.new
          const_set(name, const)
          const
        end
      end

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

      describe 'copy constructor' do

        it 'can be constructed from another plugin list' do
          plugins.add(Plugin1)
          PluginList.new(plugins).to_a.must_equal([Plugin1])
        end

        it 'does not load plugins when constructing from another plugin list' do
          plugins.add('Seahorse::Client::LazyPlugin::CopyConstructor')
          LazyPlugin.const_defined?(:CopyConstructor).must_equal(false)
          PluginList.new(plugins)
          LazyPlugin.const_defined?(:CopyConstructor).must_equal(false)
        end

      end

      describe '#add' do

        it 'adds a new plugin' do
          plugins.add(Plugin1)
          plugins.to_a.must_equal([Plugin1])
        end

        it 'accepts a plugin by name (String)' do
          plugins.add('String')
          plugins.to_a.must_equal([String])
        end

        it 'accepts a plugin by name (Symbol)' do
          plugins.add(:String)
          plugins.to_a.must_equal([String])
        end

        it 'accepts a plugin object' do
          plugin = Object.new
          plugins.add(plugin)
          plugins.to_a.must_equal([plugin])
        end

        it 'only accpets one copy of each plugin' do
          plugin = Object.new
          plugins.add(plugin)
          plugins.add(plugin)
          plugins.to_a.must_equal([plugin])
        end

        it 'does not require plugins when added' do
          plugins.add('Seahorse::Client::LazyPlugin::Add')
          LazyPlugin.const_defined?(:Add).must_equal(false)
          plugins.to_a.must_equal([LazyPlugin::Add])
          LazyPlugin.const_defined?(:Add).must_equal(true)
        end

        it 'requires prefixes from plugin names when loading' do
          Kernel.const_defined?(:SeahorseFixtures).must_equal(false)
          plugins.add('fixtures/plugin.SeahorseFixtures::Plugin')
          plugins.to_a.must_equal([SeahorseFixtures::Plugin])
        end

      end

      describe '#remove' do

        it 'removes the plugin' do
          plugins.add(Plugin1)
          plugins.add(Plugin2)
          plugins.remove(Plugin1)
          plugins.to_a.must_equal([Plugin2])
        end

        it 'can remove a plugin added by name' do
          plugins.add(:String)
          plugins.remove(String)
          plugins.to_a.must_equal([])
        end

      end

      describe '#set' do

        it 'replaces the existing list of plugins' do
          plugins.add(Plugin1)
          plugins.set([Plugin2])
          plugins.to_a.must_equal([Plugin2])
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
