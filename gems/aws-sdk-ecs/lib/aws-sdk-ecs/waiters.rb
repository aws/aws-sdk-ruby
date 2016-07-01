# WARNING ABOUT GENERATED CODE
#
# The AWS SDK for Ruby is largely generated from JSON service definitions. Edits
# made against this file will be lost the next time the SDK updates.  To resolve
# an issue with generated code, a change is likely needed in the generator or
# in one of the service JSON definitions.
#
# * https://github.com/aws/aws-sdk-ruby/tree/master/gems/aws-sdk-code-generator
# * https://github.com/aws/aws-sdk-ruby/tree/master/apis
#
# Open a GitHub issue if you have questions before making changes.  Pull
# requests against this file will be automatically closed.
#
# WARNING ABOUT GENERATED CODE
module Aws
  module ECS
    module Waiters
      class TasksRunning

        # @option options [required, Client] :client
        # @option options [Integer] :max_attempts (100)
        # @option options [Integer] :delay (6)
        # @option options [Proc] :before_attempt
        # @option options [Proc] :before_wait
        def initialize(options = {})
          @client = options[:client]
          @waiter = Aws::Waiters::Waiter.new({
            max_attempts: 100,
            delay: 6,
            poller: Aws::Waiters::Poller.new(
              "operation" => "DescribeTasks",
              "acceptors" => [
                {
                  "expected" => "STOPPED",
                  "matcher" => "pathAny",
                  "state" => "failure",
                  "argument" => "tasks[].lastStatus"
                },
                {
                  "expected" => "MISSING",
                  "matcher" => "pathAny",
                  "state" => "failure",
                  "argument" => "failures[].reason"
                },
                {
                  "expected" => "RUNNING",
                  "matcher" => "pathAll",
                  "state" => "success",
                  "argument" => "tasks[].lastStatus"
                }
              ]
            )
          }.merge(options))
        end

        # @option (see Client#describe_tasks)
        # @return (see Client#describe_tasks)
        def wait(params = {})
          @waiter.wait(client: @client, params: params)
        end

        # @api private
        attr_reader :waiter

      end

      class TasksStopped

        # @option options [required, Client] :client
        # @option options [Integer] :max_attempts (100)
        # @option options [Integer] :delay (6)
        # @option options [Proc] :before_attempt
        # @option options [Proc] :before_wait
        def initialize(options = {})
          @client = options[:client]
          @waiter = Aws::Waiters::Waiter.new({
            max_attempts: 100,
            delay: 6,
            poller: Aws::Waiters::Poller.new(
              "operation" => "DescribeTasks",
              "acceptors" => [{
                "expected" => "STOPPED",
                "matcher" => "pathAll",
                "state" => "success",
                "argument" => "tasks[].lastStatus"
              }]
            )
          }.merge(options))
        end

        # @option (see Client#describe_tasks)
        # @return (see Client#describe_tasks)
        def wait(params = {})
          @waiter.wait(client: @client, params: params)
        end

        # @api private
        attr_reader :waiter

      end

      class ServicesStable

        # @option options [required, Client] :client
        # @option options [Integer] :max_attempts (40)
        # @option options [Integer] :delay (15)
        # @option options [Proc] :before_attempt
        # @option options [Proc] :before_wait
        def initialize(options = {})
          @client = options[:client]
          @waiter = Aws::Waiters::Waiter.new({
            max_attempts: 40,
            delay: 15,
            poller: Aws::Waiters::Poller.new(
              "operation" => "DescribeServices",
              "acceptors" => [
                {
                  "expected" => "MISSING",
                  "matcher" => "pathAny",
                  "state" => "failure",
                  "argument" => "failures[].reason"
                },
                {
                  "expected" => "DRAINING",
                  "matcher" => "pathAny",
                  "state" => "failure",
                  "argument" => "services[].status"
                },
                {
                  "expected" => "INACTIVE",
                  "matcher" => "pathAny",
                  "state" => "failure",
                  "argument" => "services[].status"
                },
                {
                  "expected" => true,
                  "matcher" => "path",
                  "state" => "success",
                  "argument" => "services | [@[?length(deployments)!=`1`], @[?desiredCount!=runningCount]][] | length(@) == `0`"
                }
              ]
            )
          }.merge(options))
        end

        # @option (see Client#describe_services)
        # @return (see Client#describe_services)
        def wait(params = {})
          @waiter.wait(client: @client, params: params)
        end

        # @api private
        attr_reader :waiter

      end

      class ServicesInactive

        # @option options [required, Client] :client
        # @option options [Integer] :max_attempts (40)
        # @option options [Integer] :delay (15)
        # @option options [Proc] :before_attempt
        # @option options [Proc] :before_wait
        def initialize(options = {})
          @client = options[:client]
          @waiter = Aws::Waiters::Waiter.new({
            max_attempts: 40,
            delay: 15,
            poller: Aws::Waiters::Poller.new(
              "operation" => "DescribeServices",
              "acceptors" => [
                {
                  "expected" => "MISSING",
                  "matcher" => "pathAny",
                  "state" => "failure",
                  "argument" => "failures[].reason"
                },
                {
                  "expected" => "INACTIVE",
                  "matcher" => "pathAny",
                  "state" => "success",
                  "argument" => "services[].status"
                }
              ]
            )
          }.merge(options))
        end

        # @option (see Client#describe_services)
        # @return (see Client#describe_services)
        def wait(params = {})
          @waiter.wait(client: @client, params: params)
        end

        # @api private
        attr_reader :waiter

      end
    end
  end
end
