# WARNING ABOUT GENERATED CODE
#
# This file is generated from a JSON service definition. See the contributing
# guide for more information:
#
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE
module Aws
  module EMR
    module Waiters
      class ClusterRunning

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
              "operation" => "DescribeCluster",
              "acceptors" => [
                {
                  "state" => "success",
                  "matcher" => "path",
                  "argument" => "Cluster.Status.State",
                  "expected" => "RUNNING"
                },
                {
                  "state" => "success",
                  "matcher" => "path",
                  "argument" => "Cluster.Status.State",
                  "expected" => "WAITING"
                },
                {
                  "state" => "failure",
                  "matcher" => "path",
                  "argument" => "Cluster.Status.State",
                  "expected" => "TERMINATING"
                },
                {
                  "state" => "failure",
                  "matcher" => "path",
                  "argument" => "Cluster.Status.State",
                  "expected" => "TERMINATED"
                },
                {
                  "state" => "failure",
                  "matcher" => "path",
                  "argument" => "Cluster.Status.State",
                  "expected" => "TERMINATED_WITH_ERRORS"
                }
              ]
            )
          }.merge(options))
        end

        # @option (see Client#describe_cluster)
        # @return (see Client#describe_cluster)
        def wait(params = {})
          @waiter.wait(client: @client, params: params)
        end

        # @api private
        attr_reader :waiter

      end

      class StepComplete

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
              "operation" => "DescribeStep",
              "acceptors" => [
                {
                  "state" => "success",
                  "matcher" => "path",
                  "argument" => "Step.Status.State",
                  "expected" => "COMPLETED"
                },
                {
                  "state" => "failure",
                  "matcher" => "path",
                  "argument" => "Step.Status.State",
                  "expected" => "FAILED"
                },
                {
                  "state" => "failure",
                  "matcher" => "path",
                  "argument" => "Step.Status.State",
                  "expected" => "CANCELLED"
                }
              ]
            )
          }.merge(options))
        end

        # @option (see Client#describe_step)
        # @return (see Client#describe_step)
        def wait(params = {})
          @waiter.wait(client: @client, params: params)
        end

        # @api private
        attr_reader :waiter

      end
    end
  end
end
