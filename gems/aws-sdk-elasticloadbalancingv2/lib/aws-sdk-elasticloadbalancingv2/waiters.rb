# frozen_string_literal: true

# This is generated code!

module Aws::ElasticLoadBalancingV2

  # @api private
  module Waiters
    # @api private
    #
    #
    class LoadBalancerAvailable
      def initialize(options = {})
        @client = options[:client]
        @waiter = Smithy::Client::Waiters::Waiter.new(
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 15,
          max_delay: options[:max_delay] || 120,
          poller: Smithy::Client::Waiters::Poller.new(
            operation_name: :describe_load_balancers,
            acceptors: [
              {
                "state" => "success",
                "matcher" => {
                  "output" => {
                    "path" => "load_balancers[].state.code",
                    "expected" => "active",
                    "comparator" => "allStringEquals"
                  }
                }
              },
              {
                "state" => "retry",
                "matcher" => {
                  "output" => {
                    "path" => "load_balancers[].state.code",
                    "expected" => "provisioning",
                    "comparator" => "anyStringEquals"
                  }
                }
              },
              {
                "state" => "retry",
                "matcher" => {
                  "errorType" => "LoadBalancerNotFound"
                }
              }
            ]
          )
        )
      end

      def wait(params = {})
        @waiter.wait(@client, params)
      end
    end

    # @api private
    #
    #
    class LoadBalancerExists
      def initialize(options = {})
        @client = options[:client]
        @waiter = Smithy::Client::Waiters::Waiter.new(
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 15,
          max_delay: options[:max_delay] || 120,
          poller: Smithy::Client::Waiters::Poller.new(
            operation_name: :describe_load_balancers,
            acceptors: [
              {
                "state" => "success",
                "matcher" => {
                  "success" => true
                }
              },
              {
                "state" => "retry",
                "matcher" => {
                  "errorType" => "LoadBalancerNotFound"
                }
              }
            ]
          )
        )
      end

      def wait(params = {})
        @waiter.wait(@client, params)
      end
    end

    # @api private
    #
    #
    class LoadBalancersDeleted
      def initialize(options = {})
        @client = options[:client]
        @waiter = Smithy::Client::Waiters::Waiter.new(
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 15,
          max_delay: options[:max_delay] || 120,
          poller: Smithy::Client::Waiters::Poller.new(
            operation_name: :describe_load_balancers,
            acceptors: [
              {
                "state" => "retry",
                "matcher" => {
                  "output" => {
                    "path" => "load_balancers[].state.code",
                    "expected" => "active",
                    "comparator" => "allStringEquals"
                  }
                }
              },
              {
                "state" => "success",
                "matcher" => {
                  "errorType" => "LoadBalancerNotFound"
                }
              }
            ]
          )
        )
      end

      def wait(params = {})
        @waiter.wait(@client, params)
      end
    end

    # @api private
    #
    #
    class TargetDeregistered
      def initialize(options = {})
        @client = options[:client]
        @waiter = Smithy::Client::Waiters::Waiter.new(
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 15,
          max_delay: options[:max_delay] || 120,
          poller: Smithy::Client::Waiters::Poller.new(
            operation_name: :describe_target_health,
            acceptors: [
              {
                "state" => "success",
                "matcher" => {
                  "errorType" => "InvalidTarget"
                }
              },
              {
                "state" => "success",
                "matcher" => {
                  "output" => {
                    "path" => "target_health_descriptions[].target_health.state",
                    "expected" => "unused",
                    "comparator" => "allStringEquals"
                  }
                }
              }
            ]
          )
        )
      end

      def wait(params = {})
        @waiter.wait(@client, params)
      end
    end

    # @api private
    #
    #
    class TargetInService
      def initialize(options = {})
        @client = options[:client]
        @waiter = Smithy::Client::Waiters::Waiter.new(
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 15,
          max_delay: options[:max_delay] || 120,
          poller: Smithy::Client::Waiters::Poller.new(
            operation_name: :describe_target_health,
            acceptors: [
              {
                "state" => "success",
                "matcher" => {
                  "output" => {
                    "path" => "target_health_descriptions[].target_health.state",
                    "expected" => "healthy",
                    "comparator" => "allStringEquals"
                  }
                }
              },
              {
                "state" => "retry",
                "matcher" => {
                  "errorType" => "InvalidInstance"
                }
              }
            ]
          )
        )
      end

      def wait(params = {})
        @waiter.wait(@client, params)
      end
    end

  end
end
