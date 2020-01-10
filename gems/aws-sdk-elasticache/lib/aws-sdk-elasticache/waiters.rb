# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core/waiters'

module Aws::ElastiCache
  module Waiters

    # Wait until ElastiCache cluster is available.
    class CacheClusterAvailable

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
            operation_name: :describe_cache_clusters,
            acceptors: [
              {
                "argument" => "cache_clusters[].cache_cluster_status",
                "expected" => "available",
                "matcher" => "pathAll",
                "state" => "success"
              },
              {
                "argument" => "cache_clusters[].cache_cluster_status",
                "expected" => "deleted",
                "matcher" => "pathAny",
                "state" => "failure"
              },
              {
                "argument" => "cache_clusters[].cache_cluster_status",
                "expected" => "deleting",
                "matcher" => "pathAny",
                "state" => "failure"
              },
              {
                "argument" => "cache_clusters[].cache_cluster_status",
                "expected" => "incompatible-network",
                "matcher" => "pathAny",
                "state" => "failure"
              },
              {
                "argument" => "cache_clusters[].cache_cluster_status",
                "expected" => "restore-failed",
                "matcher" => "pathAny",
                "state" => "failure"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#describe_cache_clusters)
      # @return (see Client#describe_cache_clusters)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    # Wait until ElastiCache cluster is deleted.
    class CacheClusterDeleted

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
            operation_name: :describe_cache_clusters,
            acceptors: [
              {
                "argument" => "cache_clusters[].cache_cluster_status",
                "expected" => "deleted",
                "matcher" => "pathAll",
                "state" => "success"
              },
              {
                "expected" => "CacheClusterNotFound",
                "matcher" => "error",
                "state" => "success"
              },
              {
                "argument" => "cache_clusters[].cache_cluster_status",
                "expected" => "available",
                "matcher" => "pathAny",
                "state" => "failure"
              },
              {
                "argument" => "cache_clusters[].cache_cluster_status",
                "expected" => "creating",
                "matcher" => "pathAny",
                "state" => "failure"
              },
              {
                "argument" => "cache_clusters[].cache_cluster_status",
                "expected" => "incompatible-network",
                "matcher" => "pathAny",
                "state" => "failure"
              },
              {
                "argument" => "cache_clusters[].cache_cluster_status",
                "expected" => "modifying",
                "matcher" => "pathAny",
                "state" => "failure"
              },
              {
                "argument" => "cache_clusters[].cache_cluster_status",
                "expected" => "restore-failed",
                "matcher" => "pathAny",
                "state" => "failure"
              },
              {
                "argument" => "cache_clusters[].cache_cluster_status",
                "expected" => "snapshotting",
                "matcher" => "pathAny",
                "state" => "failure"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#describe_cache_clusters)
      # @return (see Client#describe_cache_clusters)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    # Wait until ElastiCache replication group is available.
    class ReplicationGroupAvailable

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
            operation_name: :describe_replication_groups,
            acceptors: [
              {
                "argument" => "replication_groups[].status",
                "expected" => "available",
                "matcher" => "pathAll",
                "state" => "success"
              },
              {
                "argument" => "replication_groups[].status",
                "expected" => "deleted",
                "matcher" => "pathAny",
                "state" => "failure"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#describe_replication_groups)
      # @return (see Client#describe_replication_groups)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    # Wait until ElastiCache replication group is deleted.
    class ReplicationGroupDeleted

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
            operation_name: :describe_replication_groups,
            acceptors: [
              {
                "argument" => "replication_groups[].status",
                "expected" => "deleted",
                "matcher" => "pathAll",
                "state" => "success"
              },
              {
                "argument" => "replication_groups[].status",
                "expected" => "available",
                "matcher" => "pathAny",
                "state" => "failure"
              },
              {
                "expected" => "ReplicationGroupNotFoundFault",
                "matcher" => "error",
                "state" => "success"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#describe_replication_groups)
      # @return (see Client#describe_replication_groups)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end
  end
end
