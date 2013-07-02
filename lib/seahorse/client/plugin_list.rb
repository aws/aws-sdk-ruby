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

require 'set'
require 'thread'

module Seahorse
  class Client
    # @api private
    class PluginList

      include Enumerable

      # @param [Array, Set] plugins
      def initialize(plugins = [])
        @mutex = Mutex.new
        @plugins = Set.new(plugins)
      end

      def add(plugin)
        plugin = resolve(plugin)
        @mutex.synchronize do
          @plugins << plugin
        end
        plugin
      end

      def remove(plugin)
        plugin = resolve(plugin)
        @mutex.synchronize do
          @plugins.delete(plugin)
        end
        plugin
      end

      # @return [Enumerator]
      def each(&block)
        @mutex.synchronize do
          @plugins.dup.each(&block)
        end
      end

      private

      def resolve(plugin)
        if plugin.is_a?(Symbol) || plugin.is_a?(String)
          load_plugin(plugin.to_s)
        else
          plugin
        end
      end

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
