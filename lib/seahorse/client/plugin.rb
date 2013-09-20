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

      extend HandlerBuilder

      # @param [Configuration] config
      # @return [void]
      def add_options(config)
        self.class.options.each do |name, default|
          config.add_option(name, default)
        end
      end

      # @param [HandlerList] handlers
      # @param [Configuration] config
      # @return [void]
      def add_handlers(handlers, config)
        handlers.copy_from(self.class.handlers)
      end

      # @param [Class<Client::Base>]
      # @param [Hash] options
      # @return [void]
      def pre_init(client_class, options)
        self.class.pre_init_hooks.each do |block|
          block.call(client_class, options)
        end
      end

      # @param [Client::Base]
      # @return [void]
      def post_init(client)
        self.class.post_init_hooks.each do |block|
          block.call(client)
        end
      end

      class << self

        def option(name, default = nil, &block)
          if block_given?
            options[name] = Proc.new
          else
            options[name] = default
          end
        end

        def pre_init(&block)
          pre_init_hooks << block
        end

        def post_init(&block)
          post_init_hooks << block
        end

        # @api private
        def options
          @options ||= {}
        end

        # @api private
        def handlers
          @handlers ||= HandlerList.new
        end

        # @api private
        def pre_init_hooks
          @pre_init_hooks ||= []
        end

        # @api private
        def post_init_hooks
          @post_init_hooks ||= []
        end

      end
    end
  end
end
