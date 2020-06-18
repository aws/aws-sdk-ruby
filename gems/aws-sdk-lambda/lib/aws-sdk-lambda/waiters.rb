# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core/waiters'

module Aws::Lambda
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
  # | waiter_name      | params                              | :delay   | :max_attempts |
  # | ---------------- | ----------------------------------- | -------- | ------------- |
  # | function_active  | {Client#get_function_configuration} | 5        | 60            |
  # | function_exists  | {Client#get_function}               | 1        | 20            |
  # | function_updated | {Client#get_function_configuration} | 5        | 60            |
  #
  module Waiters

    # Waits for the function's State to be Active.
    class FunctionActive

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (60)
      # @option options [Integer] :delay (5)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 60,
          delay: 5,
          poller: Aws::Waiters::Poller.new(
            operation_name: :get_function_configuration,
            acceptors: [
              {
                "state" => "success",
                "matcher" => "path",
                "argument" => "state",
                "expected" => "Active"
              },
              {
                "state" => "failure",
                "matcher" => "path",
                "argument" => "state",
                "expected" => "Failed"
              },
              {
                "state" => "retry",
                "matcher" => "path",
                "argument" => "state",
                "expected" => "Pending"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#get_function_configuration)
      # @return (see Client#get_function_configuration)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    class FunctionExists

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (20)
      # @option options [Integer] :delay (1)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 20,
          delay: 1,
          poller: Aws::Waiters::Poller.new(
            operation_name: :get_function,
            acceptors: [
              {
                "state" => "success",
                "matcher" => "status",
                "expected" => 200
              },
              {
                "state" => "retry",
                "matcher" => "error",
                "expected" => "ResourceNotFoundException"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#get_function)
      # @return (see Client#get_function)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    # Waits for the function's LastUpdateStatus to be Successful.
    class FunctionUpdated

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (60)
      # @option options [Integer] :delay (5)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 60,
          delay: 5,
          poller: Aws::Waiters::Poller.new(
            operation_name: :get_function_configuration,
            acceptors: [
              {
                "state" => "success",
                "matcher" => "path",
                "argument" => "last_update_status",
                "expected" => "Successful"
              },
              {
                "state" => "failure",
                "matcher" => "path",
                "argument" => "last_update_status",
                "expected" => "Failed"
              },
              {
                "state" => "retry",
                "matcher" => "path",
                "argument" => "last_update_status",
                "expected" => "InProgress"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#get_function_configuration)
      # @return (see Client#get_function_configuration)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end
  end
end
