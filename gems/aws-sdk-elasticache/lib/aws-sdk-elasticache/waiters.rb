# frozen_string_literal: true

# This is generated code!

module Aws::ElastiCache

  # @api private
  module Waiters
    # @api private
    #
    # Wait until ElastiCache cluster is available.
    #
    class CacheClusterAvailable
      def initialize(options = {})
        @client = options[:client]
        @waiter = Smithy::Client::Waiters::Waiter.new(
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 15,
          max_delay: options[:max_delay] || 120,
          poller: Smithy::Client::Waiters::Poller.new(
            operation_name: :describe_cache_clusters,
            acceptors: [
              {
                "state" => "success",
                "matcher" => {
                  "output" => {
                    "path" => "cache_clusters[].cache_cluster_status",
                    "expected" => "available",
                    "comparator" => "allStringEquals"
                  }
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "cache_clusters[].cache_cluster_status",
                    "expected" => "deleted",
                    "comparator" => "anyStringEquals"
                  }
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "cache_clusters[].cache_cluster_status",
                    "expected" => "deleting",
                    "comparator" => "anyStringEquals"
                  }
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "cache_clusters[].cache_cluster_status",
                    "expected" => "incompatible-network",
                    "comparator" => "anyStringEquals"
                  }
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "cache_clusters[].cache_cluster_status",
                    "expected" => "restore-failed",
                    "comparator" => "anyStringEquals"
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
    # Wait until ElastiCache cluster is deleted.
    #
    class CacheClusterDeleted
      def initialize(options = {})
        @client = options[:client]
        @waiter = Smithy::Client::Waiters::Waiter.new(
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 15,
          max_delay: options[:max_delay] || 120,
          poller: Smithy::Client::Waiters::Poller.new(
            operation_name: :describe_cache_clusters,
            acceptors: [
              {
                "state" => "success",
                "matcher" => {
                  "output" => {
                    "path" => "cache_clusters[].cache_cluster_status",
                    "expected" => "deleted",
                    "comparator" => "allStringEquals"
                  }
                }
              },
              {
                "state" => "success",
                "matcher" => {
                  "errorType" => "CacheClusterNotFound"
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "cache_clusters[].cache_cluster_status",
                    "expected" => "available",
                    "comparator" => "anyStringEquals"
                  }
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "cache_clusters[].cache_cluster_status",
                    "expected" => "creating",
                    "comparator" => "anyStringEquals"
                  }
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "cache_clusters[].cache_cluster_status",
                    "expected" => "incompatible-network",
                    "comparator" => "anyStringEquals"
                  }
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "cache_clusters[].cache_cluster_status",
                    "expected" => "modifying",
                    "comparator" => "anyStringEquals"
                  }
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "cache_clusters[].cache_cluster_status",
                    "expected" => "restore-failed",
                    "comparator" => "anyStringEquals"
                  }
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "cache_clusters[].cache_cluster_status",
                    "expected" => "snapshotting",
                    "comparator" => "anyStringEquals"
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
    # Wait until ElastiCache replication group is available.
    #
    class ReplicationGroupAvailable
      def initialize(options = {})
        @client = options[:client]
        @waiter = Smithy::Client::Waiters::Waiter.new(
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 15,
          max_delay: options[:max_delay] || 120,
          poller: Smithy::Client::Waiters::Poller.new(
            operation_name: :describe_replication_groups,
            acceptors: [
              {
                "state" => "success",
                "matcher" => {
                  "output" => {
                    "path" => "replication_groups[].status",
                    "expected" => "available",
                    "comparator" => "allStringEquals"
                  }
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "replication_groups[].status",
                    "expected" => "deleted",
                    "comparator" => "anyStringEquals"
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
    # Wait until ElastiCache replication group is deleted.
    #
    class ReplicationGroupDeleted
      def initialize(options = {})
        @client = options[:client]
        @waiter = Smithy::Client::Waiters::Waiter.new(
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 15,
          max_delay: options[:max_delay] || 120,
          poller: Smithy::Client::Waiters::Poller.new(
            operation_name: :describe_replication_groups,
            acceptors: [
              {
                "state" => "success",
                "matcher" => {
                  "output" => {
                    "path" => "replication_groups[].status",
                    "expected" => "deleted",
                    "comparator" => "allStringEquals"
                  }
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "replication_groups[].status",
                    "expected" => "available",
                    "comparator" => "anyStringEquals"
                  }
                }
              },
              {
                "state" => "success",
                "matcher" => {
                  "errorType" => "ReplicationGroupNotFoundFault"
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
