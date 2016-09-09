# WARNING ABOUT GENERATED CODE
#
# This file is generated from a JSON service definition. See the contributing
# guide for more information:
#
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE
module Aws
  module CloudFormation
    module Waiters
      class StackExists

        # @option options [required, Client] :client
        # @option options [Integer] :max_attempts (20)
        # @option options [Integer] :delay (5)
        # @option options [Proc] :before_attempt
        # @option options [Proc] :before_wait
        def initialize(options = {})
          @client = options[:client]
          @waiter = Aws::Waiters::Waiter.new({
            max_attempts: 20,
            delay: 5,
            poller: Aws::Waiters::Poller.new(
              "operation" => "DescribeStacks",
              "acceptors" => [
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

      class StackCreateComplete

        # @option options [required, Client] :client
        # @option options [Integer] :max_attempts (120)
        # @option options [Integer] :delay (30)
        # @option options [Proc] :before_attempt
        # @option options [Proc] :before_wait
        def initialize(options = {})
          @client = options[:client]
          @waiter = Aws::Waiters::Waiter.new({
            max_attempts: 120,
            delay: 30,
            poller: Aws::Waiters::Poller.new(
              "operation" => "DescribeStacks",
              "description" => "Wait until stack status is CREATE_COMPLETE.",
              "acceptors" => [
                {
                  "expected" => "CREATE_COMPLETE",
                  "matcher" => "pathAll",
                  "state" => "success",
                  "argument" => "Stacks[].StackStatus"
                },
                {
                  "expected" => "CREATE_FAILED",
                  "matcher" => "pathAny",
                  "state" => "failure",
                  "argument" => "Stacks[].StackStatus"
                },
                {
                  "expected" => "DELETE_COMPLETE",
                  "matcher" => "pathAny",
                  "argument" => "Stacks[].StackStatus",
                  "state" => "failure"
                },
                {
                  "expected" => "DELETE_IN_PROGRESS",
                  "matcher" => "pathAny",
                  "argument" => "Stacks[].StackStatus",
                  "state" => "failure"
                },
                {
                  "expected" => "DELETE_FAILED",
                  "matcher" => "pathAny",
                  "argument" => "Stacks[].StackStatus",
                  "state" => "failure"
                },
                {
                  "expected" => "ROLLBACK_COMPLETE",
                  "matcher" => "pathAny",
                  "state" => "failure",
                  "argument" => "Stacks[].StackStatus"
                },
                {
                  "expected" => "ROLLBACK_FAILED",
                  "matcher" => "pathAny",
                  "state" => "failure",
                  "argument" => "Stacks[].StackStatus"
                },
                {
                  "expected" => "ROLLBACK_IN_PROGRESS",
                  "matcher" => "pathAny",
                  "argument" => "Stacks[].StackStatus",
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

      class StackDeleteComplete

        # @option options [required, Client] :client
        # @option options [Integer] :max_attempts (120)
        # @option options [Integer] :delay (30)
        # @option options [Proc] :before_attempt
        # @option options [Proc] :before_wait
        def initialize(options = {})
          @client = options[:client]
          @waiter = Aws::Waiters::Waiter.new({
            max_attempts: 120,
            delay: 30,
            poller: Aws::Waiters::Poller.new(
              "operation" => "DescribeStacks",
              "description" => "Wait until stack status is DELETE_COMPLETE.",
              "acceptors" => [
                {
                  "expected" => "DELETE_COMPLETE",
                  "matcher" => "pathAll",
                  "state" => "success",
                  "argument" => "Stacks[].StackStatus"
                },
                {
                  "expected" => "ValidationError",
                  "matcher" => "error",
                  "state" => "success"
                },
                {
                  "expected" => "DELETE_FAILED",
                  "matcher" => "pathAny",
                  "state" => "failure",
                  "argument" => "Stacks[].StackStatus"
                },
                {
                  "argument" => "Stacks[].StackStatus",
                  "expected" => "CREATE_COMPLETE",
                  "matcher" => "pathAny",
                  "state" => "failure"
                },
                {
                  "argument" => "Stacks[].StackStatus",
                  "expected" => "CREATE_FAILED",
                  "matcher" => "pathAny",
                  "state" => "failure"
                },
                {
                  "argument" => "Stacks[].StackStatus",
                  "expected" => "CREATE_IN_PROGRESS",
                  "matcher" => "pathAny",
                  "state" => "failure"
                },
                {
                  "argument" => "Stacks[].StackStatus",
                  "expected" => "ROLLBACK_COMPLETE",
                  "matcher" => "pathAny",
                  "state" => "failure"
                },
                {
                  "argument" => "Stacks[].StackStatus",
                  "expected" => "ROLLBACK_FAILED",
                  "matcher" => "pathAny",
                  "state" => "failure"
                },
                {
                  "argument" => "Stacks[].StackStatus",
                  "expected" => "ROLLBACK_IN_PROGRESS",
                  "matcher" => "pathAny",
                  "state" => "failure"
                },
                {
                  "argument" => "Stacks[].StackStatus",
                  "expected" => "UPDATE_COMPLETE",
                  "matcher" => "pathAny",
                  "state" => "failure"
                },
                {
                  "argument" => "Stacks[].StackStatus",
                  "expected" => "UPDATE_COMPLETE_CLEANUP_IN_PROGRESS",
                  "matcher" => "pathAny",
                  "state" => "failure"
                },
                {
                  "argument" => "Stacks[].StackStatus",
                  "expected" => "UPDATE_IN_PROGRESS",
                  "matcher" => "pathAny",
                  "state" => "failure"
                },
                {
                  "argument" => "Stacks[].StackStatus",
                  "expected" => "UPDATE_ROLLBACK_COMPLETE",
                  "matcher" => "pathAny",
                  "state" => "failure"
                },
                {
                  "argument" => "Stacks[].StackStatus",
                  "expected" => "UPDATE_ROLLBACK_COMPLETE_CLEANUP_IN_PROGRESS",
                  "matcher" => "pathAny",
                  "state" => "failure"
                },
                {
                  "argument" => "Stacks[].StackStatus",
                  "expected" => "UPDATE_ROLLBACK_FAILED",
                  "matcher" => "pathAny",
                  "state" => "failure"
                },
                {
                  "argument" => "Stacks[].StackStatus",
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

      class StackUpdateComplete

        # @option options [required, Client] :client
        # @option options [Integer] :max_attempts (120)
        # @option options [Integer] :delay (30)
        # @option options [Proc] :before_attempt
        # @option options [Proc] :before_wait
        def initialize(options = {})
          @client = options[:client]
          @waiter = Aws::Waiters::Waiter.new({
            max_attempts: 120,
            delay: 30,
            poller: Aws::Waiters::Poller.new(
              "operation" => "DescribeStacks",
              "description" => "Wait until stack status is UPDATE_COMPLETE.",
              "acceptors" => [
                {
                  "expected" => "UPDATE_COMPLETE",
                  "matcher" => "pathAll",
                  "state" => "success",
                  "argument" => "Stacks[].StackStatus"
                },
                {
                  "expected" => "UPDATE_FAILED",
                  "matcher" => "pathAny",
                  "state" => "failure",
                  "argument" => "Stacks[].StackStatus"
                },
                {
                  "expected" => "UPDATE_ROLLBACK_COMPLETE",
                  "matcher" => "pathAny",
                  "state" => "failure",
                  "argument" => "Stacks[].StackStatus"
                },
                {
                  "expected" => "UPDATE_ROLLBACK_FAILED",
                  "matcher" => "pathAny",
                  "state" => "failure",
                  "argument" => "Stacks[].StackStatus"
                },
                {
                  "argument" => "Stacks[].StackStatus",
                  "expected" => "UPDATE_ROLLBACK_COMPLETE_CLEANUP_IN_PROGRESS",
                  "matcher" => "pathAny",
                  "state" => "failure"
                },
                {
                  "argument" => "Stacks[].StackStatus",
                  "expected" => "UPDATE_ROLLBACK_IN_PROGRESS",
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
    end
  end
end
