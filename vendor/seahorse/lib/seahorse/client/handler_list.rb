require 'thread'
require 'set'

module Seahorse
  module Client
    class HandlerList

      class InvalidStepError < ArgumentError
        def initialize(step)
          msg = "invalid :step `%s', must be one of :initialize, :validate, "
          msg << ":build, :sign or :send"
          super(msg % step.inspect)
        end
      end

      class InvalidPriorityError < ArgumentError
        def initialize(priority)
          msg = "invalid :priority `%s', must be between 0 and 99"
          super(msg % priority.inspect)
        end
      end

      class Entry

        # @api private
        STEPS = {
          initialize: 400,
          validate: 300,
          build: 200,
          sign: 100,
          send: 0,
        }

        # @option options [required, Class<Handler>] :handler_class
        # @option options [required, Integer] :inserted The insertion
        #   order/position. This is used to determine sort order when two
        #   entries have the same priority.
        # @option options [Symbol] :step (:build)
        # @option options [Integer] :priority (50)
        # @option options [Set<String>] :operations
        def initialize(options)
          @options = options
          @handler_class = option(:handler_class, options)
          @inserted = option(:inserted, options)
          @operations = Set.new((options[:operations] || []).map(&:to_s))
          set_step(options[:step] || :build)
          set_priority(options[:priority] || 50)
          compute_weight
        end

        # @return [Handler, Class<Handler>] Returns the handler.  This may
        #   be a constructed handler object or a handler class.
        attr_reader :handler_class

        # @return [Integer] The insertion order/position.  This is used to
        #   determine sort order when two entries have the same priority.
        #   Entries inserted later (with a higher inserted value) have a
        #   lower priority.
        attr_reader :inserted

        # @return [Symbol]
        attr_reader :step

        # @return [Integer]
        attr_reader :priority

        # @return [Set<String>]
        attr_reader :operations

        # @return [Integer]
        attr_reader :weight

        # @api private
        def <=>(other)
          if weight == other.weight
            other.inserted <=> inserted
          else
            weight <=> other.weight
          end
        end

        # @option options (see #initialize)
        # @return [Entry]
        def copy(options = {})
          Entry.new(@options.merge(options))
        end

        private

        def option(name, options)
          if options.key?(name)
            options[name]
          else
            raise ArgumentError, "missing required option #{name.inspect}"
          end
        end

        def set_step(step)
          if STEPS.key?(step)
            @step = step
          else
            raise InvalidStepError, step
          end
        end

        def set_priority(priority)
          if (0..99).include?(priority)
            @priority = priority
          else
            raise InvalidPriorityError, priority
          end
        end

        def compute_weight
          @weight = STEPS[@step] + @priority
        end

      end

      include Enumerable

      # @api private
      def initialize(options = {})
        @index = options[:index] || 0
        @entries = {}
        @mutex = Mutex.new
        entries = options[:entries] || []
        add_entries(entries) unless entries.empty?
      end

      # @return [Array<Entry>]
      def entries
        @mutex.synchronize do
          @entries.values
        end
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
      #   of {Handler}.
      #
      # @option options [Symbol] :step (:build) The request life-cycle
      #   step the handler should run in.  Defaults to `:build`.  The
      #   list of possible steps, in high-to-low priority order are:
      #
      #   * `:initialize`
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
          add_entry(
            Entry.new(options.merge(
              handler_class: handler_class,
              inserted: next_index
            ))
          )
        end
        handler_class
      end

      # Copies handlers from the `source_list` onto the current handler list.
      # @param [HandlerList] source_list
      # @return [void]
      def copy_from(source_list)
        entries = source_list.entries.collect do |entry|
          entry.copy(inserted: next_index)
        end
        add_entries(entries)
      end

      # Returns a handler list for the given operation.  The returned
      # will have the operation specific handlers merged with the common
      # handlers.
      # @param [String] operation The name of an operation.
      # @return [HandlerList]
      def for(operation)
        HandlerList.new(index: @index, entries: filter(operation.to_s))
      end

      # Yields the handlers in stack order, which is reverse priority.
      def each(&block)
        entries.sort.each do |entry|
          yield(entry.handler_class) if entry.operations.empty?
        end
      end

      # Constructs the handlers recursively, building a handler stack.
      # The `:send` handler will be at the top of the stack and the
      # `:validate` handlers will be at the bottom.
      # @return [Handler]
      def to_stack
        inject(nil) { |stack, handler| handler.new(stack) }
      end

      private

      def add_entries(entries)
        @mutex.synchronize do
          entries.each { |entry| add_entry(entry) }
        end
      end

      def add_entry(entry)
        key = entry.step == :send ? :send : entry.object_id
        @entries[key] = entry
      end

      def filter(operation)
        entries.inject([]) do |filtered, handler|
          if handler.operations.empty?
            filtered << handler
          elsif handler.operations.include?(operation)
            handler = handler.dup
            handler.operations.clear
            filtered << handler
          end
          filtered
        end
      end

      def next_index
        @index += 1
      end

    end
  end
end
