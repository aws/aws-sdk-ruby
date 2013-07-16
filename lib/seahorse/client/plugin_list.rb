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
        @plugins = Set.new(plugins)
      end

      # Adds and returns the `plugin`.
      # @param [Plugin] plugin
      # @return [Plugin]
      def add(plugin)
        plugin = resolve(plugin)
        @mutex.synchronize do
          @plugins << plugin
        end
        plugin
      end

      # Removes and returns the `plugin`.
      # @param [Plugin] plugin
      # @return [Plugin]
      def remove(plugin)
        plugin = resolve(plugin)
        @mutex.synchronize do
          @plugins.delete(plugin)
        end
        plugin
      end

      # Enumerates the plugins.
      # @return [Enumerator]
      def each(&block)
        @mutex.synchronize do
          @plugins.dup.each(&block)
        end
      end

      private

      # Loads and returns the `plugin`.  If `plugin` is a `Symbol` or `String`,
      # then it is loaded via `require`.
      # @param [Plugin] plugin
      # @return [Plugin]
      def resolve(plugin)
        if plugin.is_a?(Symbol) || plugin.is_a?(String)
          load_plugin(plugin.to_s)
        else
          plugin
        end
      end

      # Requires the `plugin`.  If `plugin_name` is prefixed with (containing
      # a dot) then the prefix is treated as a gem name and is required.
      def load_plugin(plugin_name)
        if plugin_name.include?('.')
          require_path, plugin_name = plugin_name.split('.')
          require(require_path)
        end
        Kernel.const_get(plugin_name)
      end

    end
  end
end
