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
        plugins.each { |plugin| add(plugin) }
      end

      # Adds and returns the `plugin`.
      # @param [Plugin] plugin
      # @return [void]
      def add(plugin)
        @mutex.synchronize do
          @plugins << canonical_name(plugin)
        end
        nil
      end

      # Removes and returns the `plugin`.
      # @param [Plugin] plugin
      # @return [void]
      def remove(plugin)
        @mutex.synchronize do
          @plugins.delete(canonical_name(plugin))
        end
        nil
      end

      # Enumerates the plugins.
      # @return [Enumerator]
      def each(&block)
        @mutex.synchronize do
          @plugins.each do |plugin|
            yield(resolve(plugin))
          end
        end
      end

      private

      # @param [Plugin, String, Symbol] params
      # @return [String]
      def canonical_name(plugin)
        if plugin.is_a?(Class)
          plugin.name
        else
          plugin_name, gem_name = plugin.to_s.split('.').reverse
          require(gem_name) if gem_name
          plugin_name
        end
      end

      # @param [String] plugin_name
      # @return [Plugin]
      def resolve(plugin_name)
        if plugin_name.include?('.')
          require_path, plugin_name = plugin_name.split('.')
          require(require_path)
        end
        Kernel.const_get(plugin_name)
      end

    end
  end
end
