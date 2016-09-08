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
  module Redshift
    module Waiters
      class ClusterAvailable

        # @option options [required, Client] :client
        # @option options [Integer] :max_attempts (30)
        # @option options [Integer] :delay (60)
        # @option options [Proc] :before_attempt
        # @option options [Proc] :before_wait
        def initialize(options = {})
          @client = options[:client]
          @waiter = Aws::Waiters::Waiter.new({
            max_attempts: 30,
            delay: 60,
            poller: Aws::Waiters::Poller.new(
              "operation" => "DescribeClusters",
              "acceptors" => [
                {
                  "expected" => "available",
                  "matcher" => "pathAll",
                  "state" => "success",
                  "argument" => "Clusters[].ClusterStatus"
                },
                {
                  "expected" => "deleting",
                  "matcher" => "pathAny",
                  "state" => "failure",
                  "argument" => "Clusters[].ClusterStatus"
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

        # @option options [required, Client] :client
        # @option options [Integer] :max_attempts (30)
        # @option options [Integer] :delay (60)
        # @option options [Proc] :before_attempt
        # @option options [Proc] :before_wait
        def initialize(options = {})
          @client = options[:client]
          @waiter = Aws::Waiters::Waiter.new({
            max_attempts: 30,
            delay: 60,
            poller: Aws::Waiters::Poller.new(
              "operation" => "DescribeClusters",
              "acceptors" => [
                {
                  "expected" => "ClusterNotFound",
                  "matcher" => "error",
                  "state" => "success"
                },
                {
                  "expected" => "creating",
                  "matcher" => "pathAny",
                  "state" => "failure",
                  "argument" => "Clusters[].ClusterStatus"
                },
                {
                  "expected" => "modifying",
                  "matcher" => "pathAny",
                  "state" => "failure",
                  "argument" => "Clusters[].ClusterStatus"
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

        # @option options [required, Client] :client
        # @option options [Integer] :max_attempts (30)
        # @option options [Integer] :delay (60)
        # @option options [Proc] :before_attempt
        # @option options [Proc] :before_wait
        def initialize(options = {})
          @client = options[:client]
          @waiter = Aws::Waiters::Waiter.new({
            max_attempts: 30,
            delay: 60,
            poller: Aws::Waiters::Poller.new(
              "operation" => "DescribeClusters",
              "acceptors" => [
                {
                  "state" => "success",
                  "matcher" => "pathAll",
                  "argument" => "Clusters[].RestoreStatus.Status",
                  "expected" => "completed"
                },
                {
                  "state" => "failure",
                  "matcher" => "pathAny",
                  "argument" => "Clusters[].ClusterStatus",
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

        # @option options [required, Client] :client
        # @option options [Integer] :max_attempts (20)
        # @option options [Integer] :delay (15)
        # @option options [Proc] :before_attempt
        # @option options [Proc] :before_wait
        def initialize(options = {})
          @client = options[:client]
          @waiter = Aws::Waiters::Waiter.new({
            max_attempts: 20,
            delay: 15,
            poller: Aws::Waiters::Poller.new(
              "operation" => "DescribeClusterSnapshots",
              "acceptors" => [
                {
                  "expected" => "available",
                  "matcher" => "pathAll",
                  "state" => "success",
                  "argument" => "Snapshots[].Status"
                },
                {
                  "expected" => "failed",
                  "matcher" => "pathAny",
                  "state" => "failure",
                  "argument" => "Snapshots[].Status"
                },
                {
                  "expected" => "deleted",
                  "matcher" => "pathAny",
                  "state" => "failure",
                  "argument" => "Snapshots[].Status"
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
end
