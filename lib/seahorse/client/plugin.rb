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

      # @param [Client::Base] client the client to initialize
      # @return [void]
      def initialize_client(client)
        self.class.initializers.each do |block|
          instance_exec(client, &block)
        end
      end

      # @param [Class<Client::Base>] client_class
      # @param [Hash] options
      # @return [Class<Client::Base>] the client class that should be
      #   allocated and constructed
      # @return [nil] if the client class should not be changed
      def client_class_for(client_class, options)
        self.class.constructors.each do |block|
          new_client_class = instance_exec(client_class, options, &block)
          client_class = new_client_class if Class === new_client_class
        end
        client_class
      end

      class << self

        def option(name, default = nil, &block)
          if block_given?
            options[name] = Proc.new
          else
            options[name] = default
          end
        end

        def initialize_client(&block)
          initializers << block
        end

        def client_class_for(&block)
          constructors << block
        end

        # @api private
        def initializers
          @initializers ||= []
        end

        # @api private
        def constructors
          @constructors ||= []
        end

        # @api private
        def options
          @options ||= {}
        end

        # @api private
        def handlers
          @handlers ||= HandlerList.new
        end

      end
    end
  end
end
