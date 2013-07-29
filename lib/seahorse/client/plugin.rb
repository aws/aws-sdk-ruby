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
      def add_configuration(config)
        self.class.config_options.each do |opt|
          name, default, default_block = *opt
          config.add_option(name, default, &default_block)
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
        def configure(name, default = nil, &block)
          config_options << [name, default, block]
        end

        # (see HandlerList#add)
        def handler(handler, options = {})
          handlers.add(handler, options)
        end

        # @api private
        def config_options
          @config_options ||= []
        end

        # @api private
        def handlers
          @handler ||= HandlerList.new
        end

      end
    end
  end
end
