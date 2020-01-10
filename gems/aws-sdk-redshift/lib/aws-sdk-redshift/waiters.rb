# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core/waiters'

module Aws::Redshift
  module Waiters

    class ClusterAvailable

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (30)
      # @option options [Integer] :delay (60)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 30,
          delay: 60,
          poller: Aws::Waiters::Poller.new(
            operation_name: :describe_clusters,
            acceptors: [
              {
                "expected" => "available",
                "matcher" => "pathAll",
                "state" => "success",
                "argument" => "clusters[].cluster_status"
              },
              {
                "expected" => "deleting",
                "matcher" => "pathAny",
                "state" => "failure",
                "argument" => "clusters[].cluster_status"
              },
              {
                "expected" => "ClusterNotFound",
                "matcher" => "error",
                "state" => "retry"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#describe_clusters)
      # @return (see Client#describe_clusters)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    class ClusterDeleted

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (30)
      # @option options [Integer] :delay (60)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 30,
          delay: 60,
          poller: Aws::Waiters::Poller.new(
            operation_name: :describe_clusters,
            acceptors: [
              {
                "expected" => "ClusterNotFound",
                "matcher" => "error",
                "state" => "success"
              },
              {
                "expected" => "creating",
                "matcher" => "pathAny",
                "state" => "failure",
                "argument" => "clusters[].cluster_status"
              },
              {
                "expected" => "modifying",
                "matcher" => "pathAny",
                "state" => "failure",
                "argument" => "clusters[].cluster_status"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#describe_clusters)
      # @return (see Client#describe_clusters)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    class ClusterRestored

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (30)
      # @option options [Integer] :delay (60)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 30,
          delay: 60,
          poller: Aws::Waiters::Poller.new(
            operation_name: :describe_clusters,
            acceptors: [
              {
                "state" => "success",
                "matcher" => "pathAll",
                "argument" => "clusters[].restore_status.status",
                "expected" => "completed"
              },
              {
                "state" => "failure",
                "matcher" => "pathAny",
                "argument" => "clusters[].cluster_status",
                "expected" => "deleting"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#describe_clusters)
      # @return (see Client#describe_clusters)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    class SnapshotAvailable

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (20)
      # @option options [Integer] :delay (15)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 20,
          delay: 15,
          poller: Aws::Waiters::Poller.new(
            operation_name: :describe_cluster_snapshots,
            acceptors: [
              {
                "expected" => "available",
                "matcher" => "pathAll",
                "state" => "success",
                "argument" => "snapshots[].status"
              },
              {
                "expected" => "failed",
                "matcher" => "pathAny",
                "state" => "failure",
                "argument" => "snapshots[].status"
              },
              {
                "expected" => "deleted",
                "matcher" => "pathAny",
                "state" => "failure",
                "argument" => "snapshots[].status"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#describe_cluster_snapshots)
      # @return (see Client#describe_cluster_snapshots)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end
  end
end
