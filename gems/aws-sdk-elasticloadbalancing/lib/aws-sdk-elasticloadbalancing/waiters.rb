# WARNING ABOUT GENERATED CODE
#
# This file is generated from a JSON service definition. See the contributing
# guide for more information:
#
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE
module Aws
  module ElasticLoadBalancing
    module Waiters
      class InstanceDeregistered

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
              "operation" => "DescribeInstanceHealth",
              "acceptors" => [
                {
                  "expected" => "OutOfService",
                  "matcher" => "pathAll",
                  "state" => "success",
                  "argument" => "InstanceStates[].State"
                },
                {
                  "matcher" => "error",
                  "expected" => "InvalidInstance",
                  "state" => "success"
                }
              ]
            )
          }.merge(options))
        end

        # @option (see Client#describe_instance_health)
        # @return (see Client#describe_instance_health)
        def wait(params = {})
          @waiter.wait(client: @client, params: params)
        end

        # @api private
        attr_reader :waiter

      end

      class AnyInstanceInService

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
              "acceptors" => [{
                "argument" => "InstanceStates[].State",
                "expected" => "InService",
                "matcher" => "pathAny",
                "state" => "success"
              }],
              "operation" => "DescribeInstanceHealth"
            )
          }.merge(options))
        end

        # @option (see Client#describe_instance_health)
        # @return (see Client#describe_instance_health)
        def wait(params = {})
          @waiter.wait(client: @client, params: params)
        end

        # @api private
        attr_reader :waiter

      end

      class InstanceInService

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
              "acceptors" => [{
                "argument" => "InstanceStates[].State",
                "expected" => "InService",
                "matcher" => "pathAll",
                "state" => "success"
              }],
              "operation" => "DescribeInstanceHealth"
            )
          }.merge(options))
        end

        # @option (see Client#describe_instance_health)
        # @return (see Client#describe_instance_health)
        def wait(params = {})
          @waiter.wait(client: @client, params: params)
        end

        # @api private
        attr_reader :waiter

      end
    end
  end
end
