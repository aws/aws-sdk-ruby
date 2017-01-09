# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core/waiters'

module Aws::CloudFront
  module Waiters

    # Wait until a distribution is deployed.
    class DistributionDeployed

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (25)
      # @option options [Integer] :delay (60)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 25,
          delay: 60,
          poller: Aws::Waiters::Poller.new(
            operation_name: :get_distribution,
            acceptors: [{
              "expected" => "Deployed",
              "matcher" => "path",
              "state" => "success",
              "argument" => "distribution.status"
            }]
          )
        }.merge(options))
      end

      # @option (see Client#get_distribution)
      # @return (see Client#get_distribution)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    # Wait until an invalidation has completed.
    class InvalidationCompleted

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (30)
      # @option options [Integer] :delay (20)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 30,
          delay: 20,
          poller: Aws::Waiters::Poller.new(
            operation_name: :get_invalidation,
            acceptors: [{
              "expected" => "Completed",
              "matcher" => "path",
              "state" => "success",
              "argument" => "invalidation.status"
            }]
          )
        }.merge(options))
      end

      # @option (see Client#get_invalidation)
      # @return (see Client#get_invalidation)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    # Wait until a streaming distribution is deployed.
    class StreamingDistributionDeployed

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (25)
      # @option options [Integer] :delay (60)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 25,
          delay: 60,
          poller: Aws::Waiters::Poller.new(
            operation_name: :get_streaming_distribution,
            acceptors: [{
              "expected" => "Deployed",
              "matcher" => "path",
              "state" => "success",
              "argument" => "streaming_distribution.status"
            }]
          )
        }.merge(options))
      end

      # @option (see Client#get_streaming_distribution)
      # @return (see Client#get_streaming_distribution)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end
  end
end
