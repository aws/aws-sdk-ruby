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

require 'set'
require 'thread'

module Seahorse
  class Client
    # @api private
    class PluginList

      include Enumerable

      # @param [Array, Set] plugins
      # @option options [Mutex] :mutex
      def initialize(plugins = [], options = {})
        @mutex = options[:mutex] || Mutex.new
        @plugins = Set.new
        if plugins.is_a?(PluginList)
          plugins.send(:each_plugin) { |plugin| add(plugin) }
        else
          plugins.each { |plugin| add(plugin) }
        end
      end

      # Adds and returns the `plugin`.
      # @param [Plugin] plugin
      # @return [void]
      def add(plugin)
        @mutex.synchronize do
          @plugins << PluginWrapper.new(plugin)
        end
        nil
      end

      # Removes and returns the `plugin`.
      # @param [Plugin] plugin
      # @return [void]
      def remove(plugin)
        @mutex.synchronize do
          @plugins.delete(PluginWrapper.new(plugin))
        end
        nil
      end

      # Enumerates the plugins.
      # @return [Enumerator]
      def each(&block)
        each_plugin do |plugin|
          yield(plugin.klass)
        end
      end

      private

      # Yield each PluginDetail behind the mutex
      def each_plugin(&block)
        @mutex.synchronize do
          @plugins.each(&block)
        end
      end

      # A utility class that computes the canonical name for a plugin
      # and defers requiring the plugin until the plugin class is
      # required.
      # @api private
      class PluginWrapper

        # @param [String, Symbol, Class] plugin
        def initialize(plugin)
          if plugin.is_a?(Class)
            @canonical_name = plugin.name
            @klass = plugin
          else
            @canonical_name, @gem_name = plugin.to_s.split('.').reverse
            @klass = nil
          end
        end

        # @return [String]
        attr_reader :canonical_name

        # @return [Class]
        def klass
          @klass ||= require_plugin
        end

        # Returns the given plugin if it is already a PluginWrapper.
        def self.new(plugin)
          if plugin.is_a?(self)
            plugin
          else
            super
          end
        end

        # @return [Boolean]
        def eql? other
          canonical_name == other.canonical_name
        end

        # @return [String]
        def hash
          canonical_name.hash
        end

        private

        # @return [Class]
        def require_plugin
          require(@gem_name) if @gem_name
          plugin_class = Kernel
          @canonical_name.split('::').each do |const_name|
            plugin_class = plugin_class.const_get(const_name)
          end
          plugin_class
        end

      end
    end
  end
end
