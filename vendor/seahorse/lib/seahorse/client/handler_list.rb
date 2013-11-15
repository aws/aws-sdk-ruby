require 'thread'
require 'set'

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
      Entry = Struct.new(:klass, :options, :operations, :priority, :inserted) do
        def <=>(other)
          if priority == other.priority
            (inserted <=> other.inserted) * -1
          else
            priority <=> other.priority
          end
        end
      end

      # @api private
      STEPS = {
        initialize: 300,
        validate: 200,
        build: 100,
        sign: 0,
      }

      include Enumerable

      # @api private
      def initialize(options = {})
        @index = options[:index] || 0
        @send = options[:send]
        @handlers = options[:handlers] || []
        @mutex = Mutex.new
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
      # * `:initialize`
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
      # @option options [Array<Symbol,String>] :operations A list of
      #   operations names the handler should be applied to.  When
      #   `:operations` is omitted, the handler is applied to all
      #   operations for the client.
      #
      # @raise [InvalidStepError]
      # @raise [InvalidPriorityError]
      # @note There can be only one `:send` handler.  Adding an additional
      #   send handler replaces the previous.
      #
      # @return [Class<Handler>] Returns the handler class that was added.
      #
      def add(handler_class, options = {})
        @mutex.synchronize do
          if options[:step] == :send
            @send = handler_class
          else
            @handlers << Entry.new(
              handler_class,
              options,
              operations(options),
              priority(options),
              next_index,
            )
          end
        end
        handler_class
      end

      # Copies handlers from the `source_list` onto the current handler list.
      # @param [HandlerList] source_list
      # @return [void]
      def copy_from(source_list)
        @mutex.synchronize do
          send, handlers = source_list.send(:handlers)
          @send = send if send
          handlers.each do |handler|
            new_handler = handler.dup
            new_handler.inserted = next_index
            @handlers << new_handler
          end
        end
      end

      # Returns a handler list for the given operation.  The returned
      # will have the operation specific handlers merged with the common
      # handlers.
      # @param [String] operation The name of an operation.
      # @return [HandlerList]
      def for(operation)
        @mutex.synchronize do
          HandlerList.new(
            index: @index,
            send: @send,
            handlers: filter(operation.to_s),
          )
        end
      end

      # Yields the handlers in stack order, which is reverse priority.
      def each(&block)
        @mutex.synchronize do
          yield(@send) if @send
          @handlers.sort.each do |handler|
            yield(handler.klass) if handler.operations.nil?
          end
        end
      end

      # Constructs the handlers recursively, building a handler stack.
      # The `:send` handler will be at the top of the stack and the
      # `:validate` handlers will be at the bottom.
      # @return [Handler]
      def to_stack
        inject(nil) do |stack, handler|
          if handler.is_a?(Class)
            handler = handler.new(stack)
          else
            handler.handler = stack
            handler
          end
        end
      end

      private

      def operations(options)
        options[:operations] ? Set.new(options[:operations].map(&:to_s)) : nil
      end

      def filter(operation)
        filtered = []
        @handlers.each do |handler|
          if handler.operations.nil?
            filtered << handler
          elsif handler.operations.include?(operation)
            handler = handler.dup
            handler.operations = nil
            filtered << handler
          end
        end
        filtered
      end

      def next_index
        @index += 1
      end

      # @return [Integer]
      def priority(options)
        step_value(options) + priority_value(options)
      end

      # @return [Integer]
      def step_value(options)
        step = options[:step] || :build
        raise InvalidStepError, step unless STEPS.key?(step)
        STEPS[step]
      end

      # @return [Integer]
      def priority_value(options)
        priority = options[:priority] || 50
        raise InvalidPriorityError, priority unless (0..99).include?(priority)
        priority
      end

      def handlers
        [@send, @handlers]
      end

    end
  end
end
