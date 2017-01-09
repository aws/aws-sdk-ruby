# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core/waiters'

module Aws::MachineLearning
  module Waiters

    class BatchPredictionAvailable

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (60)
      # @option options [Integer] :delay (30)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 60,
          delay: 30,
          poller: Aws::Waiters::Poller.new(
            operation_name: :describe_batch_predictions,
            acceptors: [
              {
                "expected" => "COMPLETED",
                "matcher" => "pathAll",
                "state" => "success",
                "argument" => "results[].status"
              },
              {
                "expected" => "FAILED",
                "matcher" => "pathAny",
                "state" => "failure",
                "argument" => "results[].status"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#describe_batch_predictions)
      # @return (see Client#describe_batch_predictions)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    class DataSourceAvailable

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (60)
      # @option options [Integer] :delay (30)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 60,
          delay: 30,
          poller: Aws::Waiters::Poller.new(
            operation_name: :describe_data_sources,
            acceptors: [
              {
                "expected" => "COMPLETED",
                "matcher" => "pathAll",
                "state" => "success",
                "argument" => "results[].status"
              },
              {
                "expected" => "FAILED",
                "matcher" => "pathAny",
                "state" => "failure",
                "argument" => "results[].status"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#describe_data_sources)
      # @return (see Client#describe_data_sources)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    class EvaluationAvailable

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (60)
      # @option options [Integer] :delay (30)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 60,
          delay: 30,
          poller: Aws::Waiters::Poller.new(
            operation_name: :describe_evaluations,
            acceptors: [
              {
                "expected" => "COMPLETED",
                "matcher" => "pathAll",
                "state" => "success",
                "argument" => "results[].status"
              },
              {
                "expected" => "FAILED",
                "matcher" => "pathAny",
                "state" => "failure",
                "argument" => "results[].status"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#describe_evaluations)
      # @return (see Client#describe_evaluations)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    class MLModelAvailable

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (60)
      # @option options [Integer] :delay (30)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 60,
          delay: 30,
          poller: Aws::Waiters::Poller.new(
            operation_name: :describe_ml_models,
            acceptors: [
              {
                "expected" => "COMPLETED",
                "matcher" => "pathAll",
                "state" => "success",
                "argument" => "results[].status"
              },
              {
                "expected" => "FAILED",
                "matcher" => "pathAny",
                "state" => "failure",
                "argument" => "results[].status"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#describe_ml_models)
      # @return (see Client#describe_ml_models)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end
  end
end
