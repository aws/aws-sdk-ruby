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
  module MachineLearning
    module Waiters
      class DataSourceAvailable

        # @option options [required, Client] :client
        # @option options [Integer] :max_attempts (60)
        # @option options [Integer] :delay (30)
        # @option options [Proc] :before_attempt
        # @option options [Proc] :before_wait
        def initialize(options = {})
          @client = options[:client]
          @waiter = Aws::Waiters::Waiter.new({
            max_attempts: 60,
            delay: 30,
            poller: Aws::Waiters::Poller.new(
              "operation" => "DescribeDataSources",
              "acceptors" => [
                {
                  "expected" => "COMPLETED",
                  "matcher" => "pathAll",
                  "state" => "success",
                  "argument" => "Results[].Status"
                },
                {
                  "expected" => "FAILED",
                  "matcher" => "pathAny",
                  "state" => "failure",
                  "argument" => "Results[].Status"
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

      class MLModelAvailable

        # @option options [required, Client] :client
        # @option options [Integer] :max_attempts (60)
        # @option options [Integer] :delay (30)
        # @option options [Proc] :before_attempt
        # @option options [Proc] :before_wait
        def initialize(options = {})
          @client = options[:client]
          @waiter = Aws::Waiters::Waiter.new({
            max_attempts: 60,
            delay: 30,
            poller: Aws::Waiters::Poller.new(
              "operation" => "DescribeMLModels",
              "acceptors" => [
                {
                  "expected" => "COMPLETED",
                  "matcher" => "pathAll",
                  "state" => "success",
                  "argument" => "Results[].Status"
                },
                {
                  "expected" => "FAILED",
                  "matcher" => "pathAny",
                  "state" => "failure",
                  "argument" => "Results[].Status"
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

      class EvaluationAvailable

        # @option options [required, Client] :client
        # @option options [Integer] :max_attempts (60)
        # @option options [Integer] :delay (30)
        # @option options [Proc] :before_attempt
        # @option options [Proc] :before_wait
        def initialize(options = {})
          @client = options[:client]
          @waiter = Aws::Waiters::Waiter.new({
            max_attempts: 60,
            delay: 30,
            poller: Aws::Waiters::Poller.new(
              "operation" => "DescribeEvaluations",
              "acceptors" => [
                {
                  "expected" => "COMPLETED",
                  "matcher" => "pathAll",
                  "state" => "success",
                  "argument" => "Results[].Status"
                },
                {
                  "expected" => "FAILED",
                  "matcher" => "pathAny",
                  "state" => "failure",
                  "argument" => "Results[].Status"
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

      class BatchPredictionAvailable

        # @option options [required, Client] :client
        # @option options [Integer] :max_attempts (60)
        # @option options [Integer] :delay (30)
        # @option options [Proc] :before_attempt
        # @option options [Proc] :before_wait
        def initialize(options = {})
          @client = options[:client]
          @waiter = Aws::Waiters::Waiter.new({
            max_attempts: 60,
            delay: 30,
            poller: Aws::Waiters::Poller.new(
              "operation" => "DescribeBatchPredictions",
              "acceptors" => [
                {
                  "expected" => "COMPLETED",
                  "matcher" => "pathAll",
                  "state" => "success",
                  "argument" => "Results[].Status"
                },
                {
                  "expected" => "FAILED",
                  "matcher" => "pathAny",
                  "state" => "failure",
                  "argument" => "Results[].Status"
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
    end
  end
end
