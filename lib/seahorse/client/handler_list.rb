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

      class InvalidStepError < ArgumentError
        def initialize(step)
          msg = "invalid :step `%s', must be one of :validate, :build, "
          msg << ":sign or :send"
          super(msg % step.inspect)
        end
      end

      class InvalidPriorityError < ArgumentError
        def initialize(priority)
          msg = "invalid :priority `%s', must be between 0 and 99"
          super(msg % priority.inspect)
        end
      end

      # @api private
      STEPS = {
        validate: 200,
        build: 100,
        sign: 0,
      }

      include Enumerable

      # @api private
      def initialize
        @send_handler = nil
        @handlers = []
      end

      # Registers a handler.  Handlers are used to build a handler stack.
      # Handlers default to the `:build` step with default priority of 50.
      # The step and priority determine where in the stack a handler
      # will be.
      #
      # ## Handler Stack Ordering
      #
      # A handler stack is built from the inside-out.  The stack is
      # seeded with the send handler.  Handlers are constructed recursively
      # in reverse step and priority order so that the highest priority
      # handler is on the outside.
      #
      # By constructing the stack from the inside-out, this ensures
      # that the validate handlers will be called first and the sign handlers
      # will be called just before the final and only send handler is called.
      #
      # ## Steps
      #
      # Handlers are ordered first by step.  These steps represent the
      # life-cycle of a request.  Valid steps are:
      #
      # * `:validate`
      # * `:build`
      # * `:sign`
      # * `:send`
      #
      # Many handlers can be added to the same step, except for `:send`.
      # There can be only one `:send` handler.  Adding an additional
      # `:send` handler replaces the previous one.
      #
      # ## Priorities
      #
      # Handlers within a single step are executed in priority order.  The
      # higher the priority, the earlier in the stack the handler will
      # be called.
      #
      # * Handler priority is an integer between 0 and 99, inclusively.
      # * Handler priority defaults to 50.
      # * When multiple handlers are added to the same step with the same
      #   priority, the last one added will have the highest priority and
      #   the first one added will have the lowest priority.
      #
      # @param [Class<Handler>] handler_class This should be a subclass
      #   of {Handler} or any class that construct an object that
      #   responds to `#call`.
      #
      # @option options [Symbol] :step (:build) The request life-cycle
      #   step the handler should run in.  Defaults to `:build`.  The
      #   list of possible steps, in high-to-low priority order are:
      #
      #   * `:validate`
      #   * `:build`
      #   * `:sign`
      #   * `:send`
      #
      #   There can only be one send handler. Registering an additional
      #   `:send` handler replaces the previous one.
      #
      # @option options [Integer] :priority (50) The priority of this
      #   handler within a step.  The priority must be between 0 and 99
      #   inclusively.  It defaults to 50.  When two handlers have the
      #   same `:step` and `:priority`, the handler registered last has
      #   the highest priority.
      #
      # @raise [InvalidStepError]
      # @raise [InvalidPriorityError]
      # @note There can be only one `:send` handler.  Adding an additional
      #   send handler replaces the previous.
      #
      def add(handler_class, options = {})
        if options[:step] == :send
          @send_handler = handler_class
        else
          @handlers << [order(options), @handlers.size, handler_class]
        end
      end

      # Yields the handlers in stack order, which is reverse priority.
      def each(&block)
        yield(@send_handler) if @send_handler
        @handlers.sort.each do |order, insertion_order, handler|
          yield(handler)
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

      # @return [Integer]
      def order(options)
        step_value(options) + priority(options)
      end

      # @return [Integer]
      def step_value(options)
        step = options[:step] || :build
        raise InvalidStepError, step unless STEPS.key?(step)
        STEPS[step]
      end

      # @return [Integer]
      def priority(options)
        priority = options[:priority] || 50
        raise InvalidPriorityError, priority unless (0..99).include?(priority)
        priority
      end

    end
  end
end
