# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing for info on making contributions:
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
              "description" => "Wait until stack status is CREATE_COMPLETE.",
              operation_name: :describe_stacks,
              acceptors: [
                {
                  "expected" => "CREATE_COMPLETE",
                  "matcher" => "pathAll",
                  "state" => "success",
                  "argument" => "stacks[].stack_status"
                },
                {
                  "expected" => "CREATE_FAILED",
                  "matcher" => "pathAny",
                  "state" => "failure",
                  "argument" => "stacks[].stack_status"
                },
                {
                  "expected" => "DELETE_COMPLETE",
                  "matcher" => "pathAny",
                  "argument" => "stacks[].stack_status",
                  "state" => "failure"
                },
                {
                  "expected" => "DELETE_IN_PROGRESS",
                  "matcher" => "pathAny",
                  "argument" => "stacks[].stack_status",
                  "state" => "failure"
                },
                {
                  "expected" => "DELETE_FAILED",
                  "matcher" => "pathAny",
                  "argument" => "stacks[].stack_status",
                  "state" => "failure"
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
                  "expected" => "ROLLBACK_IN_PROGRESS",
                  "matcher" => "pathAny",
                  "argument" => "stacks[].stack_status",
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
              "description" => "Wait until stack status is DELETE_COMPLETE.",
              operation_name: :describe_stacks,
              acceptors: [
                {
                  "expected" => "DELETE_COMPLETE",
                  "matcher" => "pathAll",
                  "state" => "success",
                  "argument" => "stacks[].stack_status"
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
                  "argument" => "stacks[].stack_status"
                },
                {
                  "argument" => "stacks[].stack_status",
                  "expected" => "CREATE_COMPLETE",
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
                  "expected" => "CREATE_IN_PROGRESS",
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
                  "argument" => "stacks[].stack_status",
                  "expected" => "ROLLBACK_FAILED",
                  "matcher" => "pathAny",
                  "state" => "failure"
                },
                {
                  "argument" => "stacks[].stack_status",
                  "expected" => "ROLLBACK_IN_PROGRESS",
                  "matcher" => "pathAny",
                  "state" => "failure"
                },
                {
                  "argument" => "stacks[].stack_status",
                  "expected" => "UPDATE_COMPLETE",
                  "matcher" => "pathAny",
                  "state" => "failure"
                },
                {
                  "argument" => "stacks[].stack_status",
                  "expected" => "UPDATE_COMPLETE_CLEANUP_IN_PROGRESS",
                  "matcher" => "pathAny",
                  "state" => "failure"
                },
                {
                  "argument" => "stacks[].stack_status",
                  "expected" => "UPDATE_IN_PROGRESS",
                  "matcher" => "pathAny",
                  "state" => "failure"
                },
                {
                  "argument" => "stacks[].stack_status",
                  "expected" => "UPDATE_ROLLBACK_COMPLETE",
                  "matcher" => "pathAny",
                  "state" => "failure"
                },
                {
                  "argument" => "stacks[].stack_status",
                  "expected" => "UPDATE_ROLLBACK_COMPLETE_CLEANUP_IN_PROGRESS",
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
              "description" => "Wait until stack status is UPDATE_COMPLETE.",
              operation_name: :describe_stacks,
              acceptors: [
                {
                  "expected" => "UPDATE_COMPLETE",
                  "matcher" => "pathAll",
                  "state" => "success",
                  "argument" => "stacks[].stack_status"
                },
                {
                  "expected" => "UPDATE_FAILED",
                  "matcher" => "pathAny",
                  "state" => "failure",
                  "argument" => "stacks[].stack_status"
                },
                {
                  "expected" => "UPDATE_ROLLBACK_COMPLETE",
                  "matcher" => "pathAny",
                  "state" => "failure",
                  "argument" => "stacks[].stack_status"
                },
                {
                  "expected" => "UPDATE_ROLLBACK_FAILED",
                  "matcher" => "pathAny",
                  "state" => "failure",
                  "argument" => "stacks[].stack_status"
                },
                {
                  "argument" => "stacks[].stack_status",
                  "expected" => "UPDATE_ROLLBACK_COMPLETE_CLEANUP_IN_PROGRESS",
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
