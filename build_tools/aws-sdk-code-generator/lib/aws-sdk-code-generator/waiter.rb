module AwsSdkCodeGenerator
  class Waiter

    # @return [String]
    attr_accessor :name

    # @return [String]
    attr_accessor :documentation

    # @return [String]
    attr_accessor :class_name

    # @return [String]
    attr_accessor :client_method

    # @return [Integer]
    attr_accessor :delay

    # @return [Integer]
    attr_accessor :max_attempts

    # @return [String]
    attr_accessor :acceptors

    # @return [Boolean]
    attr_accessor :last

    class << self

      # @return [Array<Waiter>]
      def build_list(waiters)
        waiters = waiters ? waiters['waiters'] : {}
        waiters = waiters.map do |waiter_name, waiter|
          Waiter.new.tap do |w|
            w.name = Underscore.underscore(waiter_name)
            w.class_name = waiter_name
            w.client_method = Underscore.underscore(waiter['operation'])
            w.delay = waiter['delay'].to_i
            w.max_attempts = waiter['maxAttempts'].to_i
            w.acceptors = acceptors(waiter['acceptors'])
            w.documentation = Docstring.block_comment(waiter['description'])
          end
        end.sort_by(&:name)
        waiters.last.last = true unless waiters.empty?
        waiters
      end

      # @return [Map<String, Array<Waiter> >]
      def build_operations_map(waiters)
        operations_map = {}
        waiters = build_list(waiters)
        waiters.each do |w|
          (operations_map[w.client_method] ||= []) << w
        end
        operations_map
      end

      # @param [Array<Waiter>]
      # @return [String<Markdown>]
      def markdown_table(waiters)
        table = []
        table << ['waiter_name', 'params', ':delay', ':max_attempts']
        waiters.each do |waiter|
          table << [waiter.name, "{##{waiter.client_method}}", waiter.delay, waiter.max_attempts]
        end
        Docstring.markdown_table(table)
      end

      private

      def acceptors(acceptors)
        acceptors.each do |acceptor|
          if acceptor['argument']
            acceptor['argument'] = Underscore.underscore_jmespath(acceptor['argument'])
          end
        end
        HashFormatter.new(
          wrap: false,
          inline: false,
          quote_strings: true
        ).format(acceptors: acceptors)
      end

    end
  end
end
