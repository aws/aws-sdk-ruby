# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core/waiters'

module Aws::CloudFormation
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
  # | waiter_name                | params                              | :delay   | :max_attempts |
  # | -------------------------- | ----------------------------------- | -------- | ------------- |
  # | change_set_create_complete | {Client#describe_change_set}        | 30       | 120           |
  # | stack_create_complete      | {Client#describe_stacks}            | 30       | 120           |
  # | stack_delete_complete      | {Client#describe_stacks}            | 30       | 120           |
  # | stack_exists               | {Client#describe_stacks}            | 5        | 20            |
  # | stack_import_complete      | {Client#describe_stacks}            | 30       | 120           |
  # | stack_rollback_complete    | {Client#describe_stacks}            | 30       | 120           |
  # | stack_update_complete      | {Client#describe_stacks}            | 30       | 120           |
  # | type_registration_complete | {Client#describe_type_registration} | 30       | 120           |
  #
  module Waiters

    # Wait until change set status is CREATE_COMPLETE.
    class ChangeSetCreateComplete

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (120)
      # @option options [Integer] :delay (30)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 120,
          delay: 30,
          poller: Aws::Waiters::Poller.new(
            operation_name: :describe_change_set,
            acceptors: [
              {
                "argument" => "status",
                "expected" => "CREATE_COMPLETE",
                "matcher" => "path",
                "state" => "success"
              },
              {
                "argument" => "status",
                "expected" => "FAILED",
                "matcher" => "path",
                "state" => "failure"
              },
              {
                "expected" => "ValidationError",
                "matcher" => "error",
                "state" => "failure"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#describe_change_set)
      # @return (see Client#describe_change_set)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    # Wait until stack status is CREATE_COMPLETE.
    class StackCreateComplete

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (120)
      # @option options [Integer] :delay (30)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 120,
          delay: 30,
          poller: Aws::Waiters::Poller.new(
            operation_name: :describe_stacks,
            acceptors: [
              {
                "argument" => "stacks[].stack_status",
                "expected" => "CREATE_COMPLETE",
                "matcher" => "pathAll",
                "state" => "success"
              },
              {
                "argument" => "stacks[].stack_status",
                "expected" => "CREATE_FAILED",
                "matcher" => "pathAny",
                "state" => "failure"
              },
              {
                "argument" => "stacks[].stack_status",
                "expected" => "DELETE_COMPLETE",
                "matcher" => "pathAny",
                "state" => "failure"
              },
              {
                "argument" => "stacks[].stack_status",
                "expected" => "DELETE_FAILED",
                "matcher" => "pathAny",
                "state" => "failure"
              },
              {
                "argument" => "stacks[].stack_status",
                "expected" => "ROLLBACK_FAILED",
                "matcher" => "pathAny",
                "state" => "failure"
              },
              {
                "argument" => "stacks[].stack_status",
                "expected" => "ROLLBACK_COMPLETE",
                "matcher" => "pathAny",
                "state" => "failure"
              },
              {
                "expected" => "ValidationError",
                "matcher" => "error",
                "state" => "failure"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#describe_stacks)
      # @return (see Client#describe_stacks)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    # Wait until stack status is DELETE_COMPLETE.
    class StackDeleteComplete

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (120)
      # @option options [Integer] :delay (30)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 120,
          delay: 30,
          poller: Aws::Waiters::Poller.new(
            operation_name: :describe_stacks,
            acceptors: [
              {
                "argument" => "stacks[].stack_status",
                "expected" => "DELETE_COMPLETE",
                "matcher" => "pathAll",
                "state" => "success"
              },
              {
                "expected" => "ValidationError",
                "matcher" => "error",
                "state" => "success"
              },
              {
                "argument" => "stacks[].stack_status",
                "expected" => "DELETE_FAILED",
                "matcher" => "pathAny",
                "state" => "failure"
              },
              {
                "argument" => "stacks[].stack_status",
                "expected" => "CREATE_FAILED",
                "matcher" => "pathAny",
                "state" => "failure"
              },
              {
                "argument" => "stacks[].stack_status",
                "expected" => "ROLLBACK_FAILED",
                "matcher" => "pathAny",
                "state" => "failure"
              },
              {
                "argument" => "stacks[].stack_status",
                "expected" => "UPDATE_ROLLBACK_IN_PROGRESS",
                "matcher" => "pathAny",
                "state" => "failure"
              },
              {
                "argument" => "stacks[].stack_status",
                "expected" => "UPDATE_ROLLBACK_FAILED",
                "matcher" => "pathAny",
                "state" => "failure"
              },
              {
                "argument" => "stacks[].stack_status",
                "expected" => "UPDATE_ROLLBACK_COMPLETE",
                "matcher" => "pathAny",
                "state" => "failure"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#describe_stacks)
      # @return (see Client#describe_stacks)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    class StackExists

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (20)
      # @option options [Integer] :delay (5)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 20,
          delay: 5,
          poller: Aws::Waiters::Poller.new(
            operation_name: :describe_stacks,
            acceptors: [
              {
                "matcher" => "status",
                "expected" => 200,
                "state" => "success"
              },
              {
                "matcher" => "error",
                "expected" => "ValidationError",
                "state" => "retry"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#describe_stacks)
      # @return (see Client#describe_stacks)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    # Wait until stack status is IMPORT_COMPLETE.
    class StackImportComplete

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (120)
      # @option options [Integer] :delay (30)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 120,
          delay: 30,
          poller: Aws::Waiters::Poller.new(
            operation_name: :describe_stacks,
            acceptors: [
              {
                "argument" => "stacks[].stack_status",
                "expected" => "IMPORT_COMPLETE",
                "matcher" => "pathAll",
                "state" => "success"
              },
              {
                "expected" => "ROLLBACK_COMPLETE",
                "matcher" => "pathAny",
                "state" => "failure",
                "argument" => "stacks[].stack_status"
              },
              {
                "expected" => "ROLLBACK_FAILED",
                "matcher" => "pathAny",
                "state" => "failure",
                "argument" => "stacks[].stack_status"
              },
              {
                "argument" => "stacks[].stack_status",
                "expected" => "IMPORT_ROLLBACK_IN_PROGRESS",
                "matcher" => "pathAny",
                "state" => "failure"
              },
              {
                "argument" => "stacks[].stack_status",
                "expected" => "IMPORT_ROLLBACK_FAILED",
                "matcher" => "pathAny",
                "state" => "failure"
              },
              {
                "expected" => "IMPORT_ROLLBACK_COMPLETE",
                "matcher" => "pathAny",
                "state" => "failure",
                "argument" => "stacks[].stack_status"
              },
              {
                "expected" => "ValidationError",
                "matcher" => "error",
                "state" => "failure"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#describe_stacks)
      # @return (see Client#describe_stacks)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    # Wait until stack status is UPDATE_ROLLBACK_COMPLETE.
    class StackRollbackComplete

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (120)
      # @option options [Integer] :delay (30)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 120,
          delay: 30,
          poller: Aws::Waiters::Poller.new(
            operation_name: :describe_stacks,
            acceptors: [
              {
                "argument" => "stacks[].stack_status",
                "expected" => "UPDATE_ROLLBACK_COMPLETE",
                "matcher" => "pathAll",
                "state" => "success"
              },
              {
                "argument" => "stacks[].stack_status",
                "expected" => "UPDATE_FAILED",
                "matcher" => "pathAny",
                "state" => "failure"
              },
              {
                "argument" => "stacks[].stack_status",
                "expected" => "UPDATE_ROLLBACK_FAILED",
                "matcher" => "pathAny",
                "state" => "failure"
              },
              {
                "argument" => "stacks[].stack_status",
                "expected" => "DELETE_FAILED",
                "matcher" => "pathAny",
                "state" => "failure"
              },
              {
                "expected" => "ValidationError",
                "matcher" => "error",
                "state" => "failure"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#describe_stacks)
      # @return (see Client#describe_stacks)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    # Wait until stack status is UPDATE_COMPLETE.
    class StackUpdateComplete

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (120)
      # @option options [Integer] :delay (30)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 120,
          delay: 30,
          poller: Aws::Waiters::Poller.new(
            operation_name: :describe_stacks,
            acceptors: [
              {
                "argument" => "stacks[].stack_status",
                "expected" => "UPDATE_COMPLETE",
                "matcher" => "pathAll",
                "state" => "success"
              },
              {
                "expected" => "UPDATE_FAILED",
                "matcher" => "pathAny",
                "state" => "failure",
                "argument" => "stacks[].stack_status"
              },
              {
                "argument" => "stacks[].stack_status",
                "expected" => "UPDATE_ROLLBACK_FAILED",
                "matcher" => "pathAny",
                "state" => "failure"
              },
              {
                "expected" => "UPDATE_ROLLBACK_COMPLETE",
                "matcher" => "pathAny",
                "state" => "failure",
                "argument" => "stacks[].stack_status"
              },
              {
                "expected" => "ValidationError",
                "matcher" => "error",
                "state" => "failure"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#describe_stacks)
      # @return (see Client#describe_stacks)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    # Wait until type registration is COMPLETE.
    class TypeRegistrationComplete

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (120)
      # @option options [Integer] :delay (30)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 120,
          delay: 30,
          poller: Aws::Waiters::Poller.new(
            operation_name: :describe_type_registration,
            acceptors: [
              {
                "argument" => "progress_status",
                "expected" => "COMPLETE",
                "matcher" => "path",
                "state" => "success"
              },
              {
                "argument" => "progress_status",
                "expected" => "FAILED",
                "matcher" => "path",
                "state" => "failure"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#describe_type_registration)
      # @return (see Client#describe_type_registration)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end
  end
end
