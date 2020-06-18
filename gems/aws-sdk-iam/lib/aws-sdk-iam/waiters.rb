# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core/waiters'

module Aws::IAM
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
  # | waiter_name             | params                        | :delay   | :max_attempts |
  # | ----------------------- | ----------------------------- | -------- | ------------- |
  # | instance_profile_exists | {Client#get_instance_profile} | 1        | 40            |
  # | policy_exists           | {Client#get_policy}           | 1        | 20            |
  # | role_exists             | {Client#get_role}             | 1        | 20            |
  # | user_exists             | {Client#get_user}             | 1        | 20            |
  #
  module Waiters

    class InstanceProfileExists

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (40)
      # @option options [Integer] :delay (1)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 40,
          delay: 1,
          poller: Aws::Waiters::Poller.new(
            operation_name: :get_instance_profile,
            acceptors: [
              {
                "expected" => 200,
                "matcher" => "status",
                "state" => "success"
              },
              {
                "state" => "retry",
                "matcher" => "status",
                "expected" => 404
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#get_instance_profile)
      # @return (see Client#get_instance_profile)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    class PolicyExists

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
            operation_name: :get_policy,
            acceptors: [
              {
                "state" => "success",
                "matcher" => "status",
                "expected" => 200
              },
              {
                "state" => "retry",
                "matcher" => "error",
                "expected" => "NoSuchEntity"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#get_policy)
      # @return (see Client#get_policy)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    class RoleExists

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
            operation_name: :get_role,
            acceptors: [
              {
                "state" => "success",
                "matcher" => "status",
                "expected" => 200
              },
              {
                "state" => "retry",
                "matcher" => "error",
                "expected" => "NoSuchEntity"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#get_role)
      # @return (see Client#get_role)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    class UserExists

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
            operation_name: :get_user,
            acceptors: [
              {
                "state" => "success",
                "matcher" => "status",
                "expected" => 200
              },
              {
                "state" => "retry",
                "matcher" => "error",
                "expected" => "NoSuchEntity"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#get_user)
      # @return (see Client#get_user)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end
  end
end
