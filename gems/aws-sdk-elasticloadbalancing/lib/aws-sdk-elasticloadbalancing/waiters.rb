# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core/waiters'

module Aws::ElasticLoadBalancing
  module Waiters

    class AnyInstanceInService

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (40)
      # @option options [Integer] :delay (15)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 40,
          delay: 15,
          poller: Aws::Waiters::Poller.new(
            operation_name: :describe_instance_health,
            acceptors: [{
              "argument" => "instance_states[].state",
              "expected" => "InService",
              "matcher" => "pathAny",
              "state" => "success"
            }]
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

    class InstanceDeregistered

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (40)
      # @option options [Integer] :delay (15)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 40,
          delay: 15,
          poller: Aws::Waiters::Poller.new(
            operation_name: :describe_instance_health,
            acceptors: [
              {
                "expected" => "OutOfService",
                "matcher" => "pathAll",
                "state" => "success",
                "argument" => "instance_states[].state"
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

    class InstanceInService

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (40)
      # @option options [Integer] :delay (15)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 40,
          delay: 15,
          poller: Aws::Waiters::Poller.new(
            operation_name: :describe_instance_health,
            acceptors: [
              {
                "argument" => "instance_states[].state",
                "expected" => "InService",
                "matcher" => "pathAll",
                "state" => "success"
              },
              {
                "matcher" => "error",
                "expected" => "InvalidInstance",
                "state" => "retry"
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
  end
end
