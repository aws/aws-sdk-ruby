# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core/waiters'

module Aws::ElasticLoadBalancingV2
  module Waiters

    class LoadBalancerAvailable

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
            operation_name: :describe_load_balancers,
            acceptors: [
              {
                "state" => "success",
                "matcher" => "pathAll",
                "argument" => "load_balancers[].state.code",
                "expected" => "active"
              },
              {
                "state" => "retry",
                "matcher" => "pathAny",
                "argument" => "load_balancers[].state.code",
                "expected" => "provisioning"
              },
              {
                "state" => "retry",
                "matcher" => "error",
                "expected" => "LoadBalancerNotFound"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#describe_load_balancers)
      # @return (see Client#describe_load_balancers)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    class LoadBalancerExists

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
            operation_name: :describe_load_balancers,
            acceptors: [
              {
                "matcher" => "status",
                "expected" => 200,
                "state" => "success"
              },
              {
                "matcher" => "error",
                "expected" => "LoadBalancerNotFound",
                "state" => "retry"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#describe_load_balancers)
      # @return (see Client#describe_load_balancers)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    class LoadBalancersDeleted

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
            operation_name: :describe_load_balancers,
            acceptors: [
              {
                "state" => "retry",
                "matcher" => "pathAll",
                "argument" => "load_balancers[].state.code",
                "expected" => "active"
              },
              {
                "matcher" => "error",
                "expected" => "LoadBalancerNotFound",
                "state" => "success"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#describe_load_balancers)
      # @return (see Client#describe_load_balancers)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    class TargetDeregistered

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
            operation_name: :describe_target_health,
            acceptors: [
              {
                "matcher" => "error",
                "expected" => "InvalidTarget",
                "state" => "success"
              },
              {
                "argument" => "target_health_descriptions[].target_health.state",
                "expected" => "unused",
                "matcher" => "pathAll",
                "state" => "success"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#describe_target_health)
      # @return (see Client#describe_target_health)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    class TargetInService

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
            operation_name: :describe_target_health,
            acceptors: [
              {
                "argument" => "target_health_descriptions[].target_health.state",
                "expected" => "healthy",
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

      # @option (see Client#describe_target_health)
      # @return (see Client#describe_target_health)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end
  end
end
