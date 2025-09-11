# frozen_string_literal: true

# This is generated code!

module Aws::CloudFront

  # @api private
  module Waiters
    # @api private
    #
    # Wait until a distribution is deployed.
    #
    class DistributionDeployed
      def initialize(options = {})
        @client = options[:client]
        @waiter = Smithy::Client::Waiters::Waiter.new(
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 60,
          max_delay: options[:max_delay] || 2100,
          poller: Smithy::Client::Waiters::Poller.new(
            operation_name: :get_distribution,
            acceptors: [{
              "state" => "success",
              "matcher" => {
                "output" => {
                  "path" => "distribution.status",
                  "expected" => "Deployed",
                  "comparator" => "stringEquals"
                }
              }
            }]
          )
        )
      end

      def wait(params = {})
        @waiter.wait(@client, params)
      end
    end

    # @api private
    #
    # Wait until an invalidation has completed.
    #
    class InvalidationCompleted
      def initialize(options = {})
        @client = options[:client]
        @waiter = Smithy::Client::Waiters::Waiter.new(
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 20,
          max_delay: options[:max_delay] || 600,
          poller: Smithy::Client::Waiters::Poller.new(
            operation_name: :get_invalidation,
            acceptors: [{
              "state" => "success",
              "matcher" => {
                "output" => {
                  "path" => "invalidation.status",
                  "expected" => "Completed",
                  "comparator" => "stringEquals"
                }
              }
            }]
          )
        )
      end

      def wait(params = {})
        @waiter.wait(@client, params)
      end
    end

    # @api private
    #
    # Wait until an invalidation for distribution tenant has completed.
    #
    class InvalidationForDistributionTenantCompleted
      def initialize(options = {})
        @client = options[:client]
        @waiter = Smithy::Client::Waiters::Waiter.new(
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 20,
          max_delay: options[:max_delay] || 600,
          poller: Smithy::Client::Waiters::Poller.new(
            operation_name: :get_invalidation_for_distribution_tenant,
            acceptors: [{
              "state" => "success",
              "matcher" => {
                "output" => {
                  "path" => "invalidation.status",
                  "expected" => "Completed",
                  "comparator" => "stringEquals"
                }
              }
            }]
          )
        )
      end

      def wait(params = {})
        @waiter.wait(@client, params)
      end
    end

    # @api private
    #
    # Wait until a streaming distribution is deployed.
    #
    class StreamingDistributionDeployed
      def initialize(options = {})
        @client = options[:client]
        @waiter = Smithy::Client::Waiters::Waiter.new(
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 60,
          max_delay: options[:max_delay] || 1500,
          poller: Smithy::Client::Waiters::Poller.new(
            operation_name: :get_streaming_distribution,
            acceptors: [{
              "state" => "success",
              "matcher" => {
                "output" => {
                  "path" => "streaming_distribution.status",
                  "expected" => "Deployed",
                  "comparator" => "stringEquals"
                }
              }
            }]
          )
        )
      end

      def wait(params = {})
        @waiter.wait(@client, params)
      end
    end

  end
end
