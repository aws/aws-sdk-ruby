# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core/waiters'

module Aws::EKS
  module Waiters

    class ClusterActive

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (40)
      # @option options [Integer] :delay (30)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 40,
          delay: 30,
          poller: Aws::Waiters::Poller.new(
            operation_name: :describe_cluster,
            acceptors: [
              {
                "expected" => "DELETING",
                "matcher" => "path",
                "state" => "failure",
                "argument" => "cluster.status"
              },
              {
                "expected" => "FAILED",
                "matcher" => "path",
                "state" => "failure",
                "argument" => "cluster.status"
              },
              {
                "expected" => "ACTIVE",
                "matcher" => "path",
                "state" => "success",
                "argument" => "cluster.status"
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

    class ClusterDeleted

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (40)
      # @option options [Integer] :delay (30)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 40,
          delay: 30,
          poller: Aws::Waiters::Poller.new(
            operation_name: :describe_cluster,
            acceptors: [
              {
                "expected" => "ACTIVE",
                "matcher" => "path",
                "state" => "failure",
                "argument" => "cluster.status"
              },
              {
                "expected" => "CREATING",
                "matcher" => "path",
                "state" => "failure",
                "argument" => "cluster.status"
              },
              {
                "expected" => "ResourceNotFoundException",
                "matcher" => "error",
                "state" => "success"
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
  end
end
