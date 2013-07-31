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

require 'spec_helper'

module Seahorse
  module Client
    describe PluginList do

      class Plugin1; end
      class Plugin2; end
      class LazyPlugin
        def self.const_missing name
          const = Object.new
          const_set(name, const)
          const
        end
      end

      let(:plugins) { PluginList.new }

      it 'can be constructed with a list of plugins' do
        expect(PluginList.new([Plugin1, Plugin2]).to_a).to eq([Plugin1, Plugin2])
      end

      it 'can be seeded from another plugin list' do
        plugins.add(Plugin1)
        plugins.add(Plugin2)
        expect(PluginList.new(plugins).to_a).to eq([Plugin1, Plugin2])
      end

      describe 'copy constructor' do

        it 'can be constructed from another plugin list' do
          plugins.add(Plugin1)
          expect(PluginList.new(plugins).to_a).to eq([Plugin1])
        end

        it 'does not load plugins when constructing from another plugin list' do
          plugins.add('Seahorse::Client::LazyPlugin::CopyConstructor')
          expect(LazyPlugin.const_defined?(:CopyConstructor)).to eq(false)
          PluginList.new(plugins)
          expect(LazyPlugin.const_defined?(:CopyConstructor)).to eq(false)
        end

      end

      describe '#add' do

        it 'adds a new plugin' do
          plugins.add(Plugin1)
          expect(plugins.to_a).to eq([Plugin1])
        end

        it 'accepts a plugin by name (String)' do
          plugins.add('String')
          expect(plugins.to_a).to eq([String])
        end

        it 'accepts a plugin by name (Symbol)' do
          plugins.add(:String)
          expect(plugins.to_a).to eq([String])
        end

        it 'accepts a plugin object' do
          plugin = Object.new
          plugins.add(plugin)
          expect(plugins.to_a).to eq([plugin])
        end

        it 'only accpets one copy of each plugin' do
          plugin = Object.new
          plugins.add(plugin)
          plugins.add(plugin)
          expect(plugins.to_a).to eq([plugin])
        end

        it 'does not require plugins when added' do
          plugins.add('Seahorse::Client::LazyPlugin::Add')
          expect(LazyPlugin.const_defined?(:Add)).to eq(false)
          expect(plugins.to_a).to eq([LazyPlugin::Add])
          expect(LazyPlugin.const_defined?(:Add)).to eq(true)
        end

        it 'requires prefixes from plugin names when loading' do
          expect(Kernel.const_defined?(:SeahorseFixtures)).to eq(false)
          plugins.add('fixtures/plugin.SeahorseFixtures::Plugin')
          expect(plugins.to_a).to eq([SeahorseFixtures::Plugin])
        end

      end

      describe '#remove' do

        it 'removes the plugin' do
          plugins.add(Plugin1)
          plugins.add(Plugin2)
          plugins.remove(Plugin1)
          expect(plugins.to_a).to eq([Plugin2])
        end

        it 'can remove a plugin added by name' do
          plugins.add(:String)
          plugins.remove(String)
          expect(plugins.to_a).to eq([])
        end

      end

      describe '#set' do

        it 'replaces the existing list of plugins' do
          plugins.add(Plugin1)
          plugins.set([Plugin2])
          expect(plugins.to_a).to eq([Plugin2])
        end

      end

      describe '#each' do

        it 'is enumerable' do
          expect(plugins).to be_kind_of(Enumerable)
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

        let(:mutex) { DummyMutex.new }
        let(:plugins) { PluginList.new([Plugin1], mutex: mutex) }

        it 'locks the mutex when adding a plugin' do
          expect(mutex.was_locked).to eq(false)
          plugins.add(Plugin1)
          expect(mutex.was_locked).to eq(true)
        end

        it 'locks the mutex when removing a plugin' do
          expect(mutex.was_locked).to eq(false)
          plugins.remove(Plugin1)
          expect(mutex.was_locked).to eq(true)
        end

        it 'locks the mutex when enumerating plugins' do
          expect(mutex.was_locked).to eq(false)
          plugins.each { |plugin| }
          expect(mutex.was_locked).to eq(true)
        end

      end
    end
  end
end
