# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core/waiters'

module Aws::LambdaWeb
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
  # | waiter_name                   | params                             | :delay   | :max_attempts |
  # | ----------------------------- | ---------------------------------- | -------- | ------------- |
  # | web_function_active           | {Client#get_web_function}          | 1        | 300           |
  # | web_function_deleted          | {Client#get_web_function}          | 1        | 300           |
  # | web_function_endpoint_active  | {Client#get_web_function_endpoint} | 1        | 300           |
  # | web_function_endpoint_deleted | {Client#get_web_function_endpoint} | 1        | 300           |
  # | web_function_endpoint_updated | {Client#get_web_function_endpoint} | 1        | 300           |
  # | web_function_revision_active  | {Client#get_web_function_revision} | 1        | 300           |
  #
  module Waiters

    # Waits for the web function's state to be Active. This should be used after new function creation.
    class WebFunctionActive

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (300)
      # @option options [Integer] :delay (1)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 300,
          delay: 1,
          poller: Aws::Waiters::Poller.new(
            operation_name: :get_web_function,
            acceptors: [
              {
                "matcher" => "path",
                "argument" => "state",
                "state" => "success",
                "expected" => "Active"
              },
              {
                "matcher" => "path",
                "argument" => "state",
                "state" => "failure",
                "expected" => "Failed"
              },
              {
                "matcher" => "path",
                "argument" => "state",
                "state" => "failure",
                "expected" => "Deleting"
              },
              {
                "matcher" => "path",
                "argument" => "state",
                "state" => "retry",
                "expected" => "Pending"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#get_web_function)
      # @return (see Client#get_web_function)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    # Waits for the web function to be deleted. This should be used after function deletion.
    class WebFunctionDeleted

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (300)
      # @option options [Integer] :delay (1)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 300,
          delay: 1,
          poller: Aws::Waiters::Poller.new(
            operation_name: :get_web_function,
            acceptors: [
              {
                "matcher" => "error",
                "state" => "success",
                "expected" => "ResourceNotFoundException"
              },
              {
                "matcher" => "path",
                "argument" => "state",
                "state" => "retry",
                "expected" => "Deleting"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#get_web_function)
      # @return (see Client#get_web_function)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    # Waits for the web function endpoint's state to be Active. This should be used after new endpoint creation.
    class WebFunctionEndpointActive

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (300)
      # @option options [Integer] :delay (1)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 300,
          delay: 1,
          poller: Aws::Waiters::Poller.new(
            operation_name: :get_web_function_endpoint,
            acceptors: [
              {
                "matcher" => "path",
                "argument" => "state",
                "state" => "success",
                "expected" => "Active"
              },
              {
                "matcher" => "path",
                "argument" => "state",
                "state" => "failure",
                "expected" => "Failed"
              },
              {
                "matcher" => "path",
                "argument" => "state",
                "state" => "failure",
                "expected" => "Deleting"
              },
              {
                "matcher" => "path",
                "argument" => "state",
                "state" => "retry",
                "expected" => "Pending"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#get_web_function_endpoint)
      # @return (see Client#get_web_function_endpoint)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    # Waits for the web function endpoint to be deleted. This should be used after endpoint deletion.
    class WebFunctionEndpointDeleted

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (300)
      # @option options [Integer] :delay (1)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 300,
          delay: 1,
          poller: Aws::Waiters::Poller.new(
            operation_name: :get_web_function_endpoint,
            acceptors: [
              {
                "matcher" => "error",
                "state" => "success",
                "expected" => "ResourceNotFoundException"
              },
              {
                "matcher" => "path",
                "argument" => "state",
                "state" => "retry",
                "expected" => "Deleting"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#get_web_function_endpoint)
      # @return (see Client#get_web_function_endpoint)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    # Waits for the web function endpoint's update status to be Successful. This should be used after endpoint updates.
    class WebFunctionEndpointUpdated

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (300)
      # @option options [Integer] :delay (1)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 300,
          delay: 1,
          poller: Aws::Waiters::Poller.new(
            operation_name: :get_web_function_endpoint,
            acceptors: [
              {
                "matcher" => "path",
                "argument" => "update_status",
                "state" => "success",
                "expected" => "Successful"
              },
              {
                "matcher" => "path",
                "argument" => "update_status",
                "state" => "failure",
                "expected" => "Failed"
              },
              {
                "matcher" => "path",
                "argument" => "update_status",
                "state" => "retry",
                "expected" => "InProgress"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#get_web_function_endpoint)
      # @return (see Client#get_web_function_endpoint)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    # Waits for the web function revision's state to be Active. This should be used after new revision creation.
    class WebFunctionRevisionActive

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (300)
      # @option options [Integer] :delay (1)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 300,
          delay: 1,
          poller: Aws::Waiters::Poller.new(
            operation_name: :get_web_function_revision,
            acceptors: [
              {
                "matcher" => "path",
                "argument" => "state",
                "state" => "success",
                "expected" => "Active"
              },
              {
                "matcher" => "path",
                "argument" => "state",
                "state" => "failure",
                "expected" => "Failed"
              },
              {
                "matcher" => "path",
                "argument" => "state",
                "state" => "retry",
                "expected" => "Pending"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#get_web_function_revision)
      # @return (see Client#get_web_function_revision)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end
  end
end
