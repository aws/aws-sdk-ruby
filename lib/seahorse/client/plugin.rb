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
          default = instance_exec(config, &default) if default.is_a?(Proc)
          config.add_option(name, default)
        end
      end

      # @param [HandlerList] handlers
      # @param [Configuration] config
      # @return [void]
      def add_handlers(handlers, config)
        self.class.handlers.each do |handler, options, name|
          handler = handler_from_proc(handler, name) if handler.is_a?(Proc)
          handlers.add(handler, options)
        end
      end

      private

      def handler_from_proc(block, name)
        if name && self.class.const_defined?(name)
          return self.class.const_get(name)
        end

        Class.new(Handler) { define_method(:call, &block) }.tap do |klass|
          self.class.send(:const_set, name, klass) if name
        end
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

        # @overload handler(handler, options = {})
        #   @param [Class] handler
        #   @option options [Symbol] priority (:build)
        #
        # @overload handler(options = {}, &handler_block)
        #   @option options [Symbol] priority (:build)
        #
        def handler(handler = nil, options = {}, &block)
          if handler.respond_to?(:new)
            handlers << [handler, options]
          else
            handler, options = nil, handler if Hash === handler
            handlers << [Proc.new, options, handler]
          end
        end

        # @api private
        def options
          @options ||= []
        end

        # @api private
        def handlers
          @handlers ||= []
        end

      end
    end
  end
end
