# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core/waiters'

module Aws::EMR
  module Waiters

    class ClusterRunning

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
            operation_name: :describe_cluster,
            acceptors: [
              {
                "state" => "success",
                "matcher" => "path",
                "argument" => "cluster.status.state",
                "expected" => "RUNNING"
              },
              {
                "state" => "success",
                "matcher" => "path",
                "argument" => "cluster.status.state",
                "expected" => "WAITING"
              },
              {
                "state" => "failure",
                "matcher" => "path",
                "argument" => "cluster.status.state",
                "expected" => "TERMINATING"
              },
              {
                "state" => "failure",
                "matcher" => "path",
                "argument" => "cluster.status.state",
                "expected" => "TERMINATED"
              },
              {
                "state" => "failure",
                "matcher" => "path",
                "argument" => "cluster.status.state",
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

    class ClusterTerminated

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
            operation_name: :describe_cluster,
            acceptors: [
              {
                "state" => "success",
                "matcher" => "path",
                "argument" => "cluster.status.state",
                "expected" => "TERMINATED"
              },
              {
                "state" => "failure",
                "matcher" => "path",
                "argument" => "cluster.status.state",
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
            operation_name: :describe_step,
            acceptors: [
              {
                "state" => "success",
                "matcher" => "path",
                "argument" => "step.status.state",
                "expected" => "COMPLETED"
              },
              {
                "state" => "failure",
                "matcher" => "path",
                "argument" => "step.status.state",
                "expected" => "FAILED"
              },
              {
                "state" => "failure",
                "matcher" => "path",
                "argument" => "step.status.state",
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
