module AwsSdkCodeGenerator
  module Generators
    class WaiterClass < Dsl::Class

      def initialize(waiter_name:, waiter:)
        client_method = underscore(waiter['operation'])
        super(waiter_name)
        code <<-CODE
# @option options [required, Client] :client
# @option options [Integer] :max_attempts (#{waiter['maxAttempts']})
# @option options [Integer] :delay (#{waiter['delay']})
# @option options [Proc] :before_attempt
# @option options [Proc] :before_wait
def initialize(options = {})
  @client = options[:client]
  @waiter = Aws::Waiters::Waiter.new(options.merge(
    max_attempts: #{waiter['maxAttempts']},
    delay: #{waiter['delay']},
    poller: Aws::Waiters::Poller.new(#{poller_args(waiter)}    )
  ))
end

# @option (see Client##{client_method})
# @return (see Client##{client_method})
def wait(params = {})
  @waiter.wait(client: @client, params: params)
end
        CODE
      end

      private

      def poller_args(hash)
        hash = hash.dup
        hash.delete('delay')
        hash.delete('maxAttempts')
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
