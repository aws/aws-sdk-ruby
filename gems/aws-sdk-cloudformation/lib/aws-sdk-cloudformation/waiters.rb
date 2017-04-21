# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core/waiters'

module Aws::CloudFormation
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
                "expected" => "UPDATE_ROLLBACK_FAILED",
                "matcher" => "pathAny",
                "state" => "failure"
              },
              {
                "argument" => "stacks[].stack_status",
                "expected" => "UPDATE_ROLLBACK_IN_PROGRESS",
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
  end
end
