# frozen_string_literal: true

# This is generated code!

module Aws::Redshift

  # @api private
  module Waiters
    # @api private
    #
    #
    class ClusterAvailable
      def initialize(options = {})
        @client = options[:client]
        @waiter = Smithy::Client::Waiters::Waiter.new(
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 60,
          max_delay: options[:max_delay] || 120,
          poller: Smithy::Client::Waiters::Poller.new(
            operation_name: :describe_clusters,
            acceptors: [
              {
                "state" => "success",
                "matcher" => {
                  "output" => {
                    "path" => "clusters[].cluster_status",
                    "expected" => "available",
                    "comparator" => "allStringEquals"
                  }
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "clusters[].cluster_status",
                    "expected" => "deleting",
                    "comparator" => "anyStringEquals"
                  }
                }
              },
              {
                "state" => "retry",
                "matcher" => {
                  "errorType" => "ClusterNotFound"
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
    #
    class ClusterDeleted
      def initialize(options = {})
        @client = options[:client]
        @waiter = Smithy::Client::Waiters::Waiter.new(
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 60,
          max_delay: options[:max_delay] || 120,
          poller: Smithy::Client::Waiters::Poller.new(
            operation_name: :describe_clusters,
            acceptors: [
              {
                "state" => "success",
                "matcher" => {
                  "errorType" => "ClusterNotFound"
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "clusters[].cluster_status",
                    "expected" => "creating",
                    "comparator" => "anyStringEquals"
                  }
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "clusters[].cluster_status",
                    "expected" => "modifying",
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
    #
    class ClusterRestored
      def initialize(options = {})
        @client = options[:client]
        @waiter = Smithy::Client::Waiters::Waiter.new(
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 60,
          max_delay: options[:max_delay] || 120,
          poller: Smithy::Client::Waiters::Poller.new(
            operation_name: :describe_clusters,
            acceptors: [
              {
                "state" => "success",
                "matcher" => {
                  "output" => {
                    "path" => "clusters[].restore_status.status",
                    "expected" => "completed",
                    "comparator" => "allStringEquals"
                  }
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "clusters[].cluster_status",
                    "expected" => "deleting",
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
    #
    class SnapshotAvailable
      def initialize(options = {})
        @client = options[:client]
        @waiter = Smithy::Client::Waiters::Waiter.new(
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 15,
          max_delay: options[:max_delay] || 120,
          poller: Smithy::Client::Waiters::Poller.new(
            operation_name: :describe_cluster_snapshots,
            acceptors: [
              {
                "state" => "success",
                "matcher" => {
                  "output" => {
                    "path" => "snapshots[].status",
                    "expected" => "available",
                    "comparator" => "allStringEquals"
                  }
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "snapshots[].status",
                    "expected" => "failed",
                    "comparator" => "anyStringEquals"
                  }
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "snapshots[].status",
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

  end
end
