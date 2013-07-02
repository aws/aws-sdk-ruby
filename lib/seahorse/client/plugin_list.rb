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

      # @param [Array, Set] plugins
      def initialize(plugins = [])
        @mutex = Mutex.new
        @plugins = Set.new(plugins)
      end

      # @return [nil]
      def add(plugin)
        @mutex.synchronize do
          @plugins << plugin
        end
        nil
      end

      # @return [nil]
      def remove(plugin)
        @mutex.synchronize do
          @plugins.delete(plugin)
        end
        nil
      end

      # @return [Array]
      def to_a
        @mutex.synchronize do
          @plugins.to_a
        end
      end

    end

  end
end
