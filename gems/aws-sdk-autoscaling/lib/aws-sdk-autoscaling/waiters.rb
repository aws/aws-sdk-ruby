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
  module AutoScaling
    module Waiters
      class GroupExists

        # @option options [required, Client] :client
        # @option options [Integer] :max_attempts (10)
        # @option options [Integer] :delay (5)
        # @option options [Proc] :before_attempt
        # @option options [Proc] :before_wait
        def initialize(options = {})
          @client = options[:client]
          @waiter = Aws::Waiters::Waiter.new({
            max_attempts: 10,
            delay: 5,
            poller: Aws::Waiters::Poller.new(
              "acceptors" => [
                {
                  "argument" => "length(AutoScalingGroups) > `0`",
                  "expected" => true,
                  "matcher" => "path",
                  "state" => "success"
                },
                {
                  "argument" => "length(AutoScalingGroups) > `0`",
                  "expected" => false,
                  "matcher" => "path",
                  "state" => "retry"
                }
              ],
              "operation" => "DescribeAutoScalingGroups"
            )
          }.merge(options))
        end

        # @option (see Client#describe_auto_scaling_groups)
        # @return (see Client#describe_auto_scaling_groups)
        def wait(params = {})
          @waiter.wait(client: @client, params: params)
        end

        # @api private
        attr_reader :waiter

      end

      class GroupInService

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
              "acceptors" => [
                {
                  "argument" => "contains(AutoScalingGroups[].[length(Instances[?LifecycleState=='InService']) >= MinSize][], `false`)",
                  "expected" => false,
                  "matcher" => "path",
                  "state" => "success"
                },
                {
                  "argument" => "contains(AutoScalingGroups[].[length(Instances[?LifecycleState=='InService']) >= MinSize][], `false`)",
                  "expected" => true,
                  "matcher" => "path",
                  "state" => "retry"
                }
              ],
              "operation" => "DescribeAutoScalingGroups"
            )
          }.merge(options))
        end

        # @option (see Client#describe_auto_scaling_groups)
        # @return (see Client#describe_auto_scaling_groups)
        def wait(params = {})
          @waiter.wait(client: @client, params: params)
        end

        # @api private
        attr_reader :waiter

      end

      class GroupNotExists

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
              "acceptors" => [
                {
                  "argument" => "length(AutoScalingGroups) > `0`",
                  "expected" => false,
                  "matcher" => "path",
                  "state" => "success"
                },
                {
                  "argument" => "length(AutoScalingGroups) > `0`",
                  "expected" => true,
                  "matcher" => "path",
                  "state" => "retry"
                }
              ],
              "operation" => "DescribeAutoScalingGroups"
            )
          }.merge(options))
        end

        # @option (see Client#describe_auto_scaling_groups)
        # @return (see Client#describe_auto_scaling_groups)
        def wait(params = {})
          @waiter.wait(client: @client, params: params)
        end

        # @api private
        attr_reader :waiter

      end
    end
  end
end
