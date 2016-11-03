module AwsSdkCodeGenerator
  module Generators
    class WaiterClass < Dsl::Class

      # @option options [required, String] :waiter_name
      # @option options [required, Hash] :waiter
      def initialize(options)
        waiter = options.fetch(:waiter)
        client_method = underscore(waiter['operation'])
        super(options.fetch(:waiter_name))
        code <<-CODE
# @option options [required, Client] :client
# @option options [Integer] :max_attempts (#{waiter['maxAttempts']})
# @option options [Integer] :delay (#{waiter['delay']})
# @option options [Proc] :before_attempt
# @option options [Proc] :before_wait
def initialize(options = {})
  @client = options[:client]
  @waiter = Aws::Waiters::Waiter.new({
    max_attempts: #{waiter['maxAttempts']},
    delay: #{waiter['delay']},
    poller: Aws::Waiters::Poller.new(#{poller_args(waiter)}    )
  }.merge(options))
end

# @option (see Client##{client_method})
# @return (see Client##{client_method})
def wait(params = {})
  @waiter.wait(client: @client, params: params)
end

# @api private
attr_reader :waiter
        CODE
      end

      private

      def poller_args(hash)
        hash = hash.dup
        hash.delete('delay')
        hash.delete('maxAttempts')
        hash[:operation_name] = Underscore.underscore(hash.delete('operation')).to_sym
        hash[:acceptors] = hash.delete('acceptors').map do |acceptor|
          if acceptor['argument']
            acceptor['argument'] = Underscore.underscore_jmespath(acceptor['argument'])
          end
          acceptor
        end
        formatter = HashFormatter.new(
          wrap: false,
          inline: false,
          quote_strings: true
        )
        lines = formatter.format(hash).lines
        lines.map { |line| "    #{line}" }.join
      end

    end
  end
end
