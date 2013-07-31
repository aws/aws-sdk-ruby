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

module Seahorse
  module Client
    class Plugin

      # @param [Configuration] config
      # @return [void]
      def add_options(config)
        self.class.options.each do |option|
          name, default = option
          default = default.call(config) if default.is_a?(Proc)
          config.add_option(name, default)
        end
      end

      # @param [HandlerList] handlers
      # @param [Configuration] config
      # @return [void]
      def add_handlers(handlers, config)
        handlers.copy_from(self.class.handlers)
      end

      class << self

        # (see Configuration#add_option)
        def option(name, default = nil, &block)
          if block_given?
            options << [name, Proc.new]
          else
            options << [name, default]
          end
        end

        # (see HandlerList#add)
        def handler(handler, options = {})
          handlers.add(handler, options)
        end

        # @api private
        def options
          @options ||= []
        end

        # @api private
        def handlers
          @handler ||= HandlerList.new
        end

      end
    end
  end
end
