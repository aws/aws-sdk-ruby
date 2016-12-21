module AwsSdkCodeGenerator
  class WaiterList

    include Enumerable

    def initialize(waiters)
      @waiters = waiters['waiters'].map do |waiter_name, waiter|
        Waiter.new(
          name: Underscore.underscore(waiter_name),
          class_name: "Waiters::#{waiter_name}",
          client_method: Underscore.underscore(waiter['operation']),
          delay: waiter['delay'].to_i,
          max_attempts: waiter['maxAttempts'].to_i,
        )
      end.sort_by(&:name)
      @waiters.last.last = true unless @waiters.empty?
    end

    # @return [Enumerable<Waiter>]
    def each(&block)
      @waiters.each(&block)
    end

    # @return [String<Markdown>]
    def markdown_table
      table = []
      table << ['waiter_name', 'params', ':delay', ':max_attempts']
      @waiters.each do |waiter|
        table << [waiter.name, "{##{waiter.client_method}}", waiter.delay, waiter.max_attempts]
      end
      Docstring.markdown_table(table)
    end

    class Waiter

      def initialize(options)
        @last = false
        options.each_pair do |opt_name, opt_value|
          send("#{opt_name}=", opt_value)
        end
      end

      # @return [String]
      attr_accessor :name

      # @return [String]
      attr_accessor :class_name

      # @return [String]
      attr_accessor :client_method

      # @return [Integer]
      attr_accessor :delay

      # @return [Integer]
      attr_accessor :max_attempts

      # @return [Boolean]
      attr_accessor :last

    end
  end
end
