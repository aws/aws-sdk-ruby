# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core/waiters'

module Aws::CloudFront
  # Waiters are utility methods that poll for a particular state to occur
  # on a client. Waiters can fail after a number of attempts at a polling
  # interval defined for the service client.
  #
  # For a list of operations that can be waited for and the
  # client methods called for each operation, see the table below or the
  # {Client#wait_until} field documentation for the {Client}.
  #
  # # Invoking a Waiter
  # To invoke a waiter, call #wait_until on a {Client}. The first parameter
  # is the waiter name, which is specific to the service client and indicates
  # which operation is being waited for. The second parameter is a hash of
  # parameters that are passed to the client method called by the waiter,
  # which varies according to the waiter name.
  #
  # # Wait Failures
  # To catch errors in a waiter, use WaiterFailed,
  # as shown in the following example.
  #
  #     rescue rescue Aws::Waiters::Errors::WaiterFailed => error
  #       puts "failed waiting for instance running: #{error.message}
  #     end
  #
  # # Configuring a Waiter
  # Each waiter has a default polling interval and a maximum number of
  # attempts it will make before returning control to your program.
  # To set these values, use the `max_attempts` and `delay` parameters
  # in your `#wait_until` call.
  # The following example waits for up to 25 seconds, polling every five seconds.
  #
  #     client.wait_until(...) do |w|
  #       w.max_attempts = 5
  #       w.delay = 5
  #     end
  #
  # To disable wait failures, set the value of either of these parameters
  # to `nil`.
  #
  # # Extending a Waiter
  # To modify the behavior of waiters, you can register callbacks that are
  # triggered before each polling attempt and before waiting.
  #
  # The following example implements an exponential backoff in a waiter
  # by doubling the amount of time to wait on every attempt.
  #
  #     client.wait_until(...) do |w|
  #       w.interval = 0 # disable normal sleep
  #       w.before_wait do |n, resp|
  #         sleep(n ** 2)
  #       end
  #     end
  #
  # # Available Waiters
  #
  # The following table lists the valid waiter names, the operations they call,
  # and the default `:delay` and `:max_attempts` values.
  #
  # | waiter_name                     | params                              | :delay   | :max_attempts |
  # | ------------------------------- | ----------------------------------- | -------- | ------------- |
  # | distribution_deployed           | {Client#get_distribution}           | 60       | 35            |
  # | invalidation_completed          | {Client#get_invalidation}           | 20       | 30            |
  # | streaming_distribution_deployed | {Client#get_streaming_distribution} | 60       | 25            |
  #
  module Waiters

    # Wait until a distribution is deployed.
    class DistributionDeployed

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (35)
      # @option options [Integer] :delay (60)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 35,
          delay: 60,
          poller: Aws::Waiters::Poller.new(
            operation_name: :get_distribution,
            acceptors: [{
              "expected" => "Deployed",
              "matcher" => "path",
              "state" => "success",
              "argument" => "distribution.status"
            }]
          )
        }.merge(options))
      end

      # @option (see Client#get_distribution)
      # @return (see Client#get_distribution)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    # Wait until an invalidation has completed.
    class InvalidationCompleted

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (30)
      # @option options [Integer] :delay (20)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 30,
          delay: 20,
          poller: Aws::Waiters::Poller.new(
            operation_name: :get_invalidation,
            acceptors: [{
              "expected" => "Completed",
              "matcher" => "path",
              "state" => "success",
              "argument" => "invalidation.status"
            }]
          )
        }.merge(options))
      end

      # @option (see Client#get_invalidation)
      # @return (see Client#get_invalidation)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    # Wait until a streaming distribution is deployed.
    class StreamingDistributionDeployed

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (25)
      # @option options [Integer] :delay (60)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 25,
          delay: 60,
          poller: Aws::Waiters::Poller.new(
            operation_name: :get_streaming_distribution,
            acceptors: [{
              "expected" => "Deployed",
              "matcher" => "path",
              "state" => "success",
              "argument" => "streaming_distribution.status"
            }]
          )
        }.merge(options))
      end

      # @option (see Client#get_streaming_distribution)
      # @return (see Client#get_streaming_distribution)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end
  end
end
