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
    class HandlerList

      include Enumerable

      # @api private
      def initialize
        @handlers = Hash.new do |hash, key|
          raise ArgumentError, "invalid step #{key.inspect}"
        end
        @handlers[:send] = SendHandlers.new
        @handlers[:sign] = []
        @handlers[:build] = []
        @handlers[:validate] = []
      end

      # @param [Class] handler_class
      # @option options [Symbol] step (:build)
      def add(handler_class, options = {})
        @handlers[options[:step] || :build].unshift(handler_class)
      end

      # Yields the handlers.
      def each(&block)
        @handlers.values.each do |handlers|
          handlers.each(&block)
        end
      end

      # Copies handlers from another list onto the current one.
      # @param [HandlerList] handlers
      # @return [void]
      def copy_from(handlers)
        handlers.send(:each_with_options) do |handler, options|
          add(handler, options)
        end
      end

      # Constructs the handlers recursively, building a handler stack.
      # The `:send` handler will be at the top of the stack and the
      # `:validate` handlers will be at the bottom.
      # @return [Handler]
      def to_stack
        inject(nil) do |stack, handler|
          handler.new(stack)
        end
      end

      private

      def each_with_options(&block)
        @handlers.each do |step, handlers|
          handlers.each do |handler|
            yield(handler, step: step)
          end
        end
      end

      # There can only be a single send handler.  This provides the same
      # interface plus a helpful warning message.
      # @api private
      class SendHandlers

        def unshift(handler)
          @handler = handler
        end

        def each(&block)
          yield(@handler) if @handler
        end

      end
    end
  end
end
