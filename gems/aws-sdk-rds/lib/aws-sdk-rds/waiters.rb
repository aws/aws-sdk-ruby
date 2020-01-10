# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core/waiters'

module Aws::RDS
  module Waiters

    class DBClusterSnapshotAvailable

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
            operation_name: :describe_db_cluster_snapshots,
            acceptors: [
              {
                "expected" => "available",
                "matcher" => "pathAll",
                "state" => "success",
                "argument" => "db_cluster_snapshots[].status"
              },
              {
                "expected" => "deleted",
                "matcher" => "pathAny",
                "state" => "failure",
                "argument" => "db_cluster_snapshots[].status"
              },
              {
                "expected" => "deleting",
                "matcher" => "pathAny",
                "state" => "failure",
                "argument" => "db_cluster_snapshots[].status"
              },
              {
                "expected" => "failed",
                "matcher" => "pathAny",
                "state" => "failure",
                "argument" => "db_cluster_snapshots[].status"
              },
              {
                "expected" => "incompatible-restore",
                "matcher" => "pathAny",
                "state" => "failure",
                "argument" => "db_cluster_snapshots[].status"
              },
              {
                "expected" => "incompatible-parameters",
                "matcher" => "pathAny",
                "state" => "failure",
                "argument" => "db_cluster_snapshots[].status"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#describe_db_cluster_snapshots)
      # @return (see Client#describe_db_cluster_snapshots)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    class DBClusterSnapshotDeleted

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
            operation_name: :describe_db_cluster_snapshots,
            acceptors: [
              {
                "expected" => true,
                "matcher" => "path",
                "state" => "success",
                "argument" => "length(db_cluster_snapshots) == `0`"
              },
              {
                "expected" => "DBClusterSnapshotNotFoundFault",
                "matcher" => "error",
                "state" => "success"
              },
              {
                "expected" => "creating",
                "matcher" => "pathAny",
                "state" => "failure",
                "argument" => "db_cluster_snapshots[].status"
              },
              {
                "expected" => "modifying",
                "matcher" => "pathAny",
                "state" => "failure",
                "argument" => "db_cluster_snapshots[].status"
              },
              {
                "expected" => "rebooting",
                "matcher" => "pathAny",
                "state" => "failure",
                "argument" => "db_cluster_snapshots[].status"
              },
              {
                "expected" => "resetting-master-credentials",
                "matcher" => "pathAny",
                "state" => "failure",
                "argument" => "db_cluster_snapshots[].status"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#describe_db_cluster_snapshots)
      # @return (see Client#describe_db_cluster_snapshots)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    class DBInstanceAvailable

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
            operation_name: :describe_db_instances,
            acceptors: [
              {
                "expected" => "available",
                "matcher" => "pathAll",
                "state" => "success",
                "argument" => "db_instances[].db_instance_status"
              },
              {
                "expected" => "deleted",
                "matcher" => "pathAny",
                "state" => "failure",
                "argument" => "db_instances[].db_instance_status"
              },
              {
                "expected" => "deleting",
                "matcher" => "pathAny",
                "state" => "failure",
                "argument" => "db_instances[].db_instance_status"
              },
              {
                "expected" => "failed",
                "matcher" => "pathAny",
                "state" => "failure",
                "argument" => "db_instances[].db_instance_status"
              },
              {
                "expected" => "incompatible-restore",
                "matcher" => "pathAny",
                "state" => "failure",
                "argument" => "db_instances[].db_instance_status"
              },
              {
                "expected" => "incompatible-parameters",
                "matcher" => "pathAny",
                "state" => "failure",
                "argument" => "db_instances[].db_instance_status"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#describe_db_instances)
      # @return (see Client#describe_db_instances)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    class DBInstanceDeleted

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
            operation_name: :describe_db_instances,
            acceptors: [
              {
                "expected" => true,
                "matcher" => "path",
                "state" => "success",
                "argument" => "length(db_instances) == `0`"
              },
              {
                "expected" => "DBInstanceNotFound",
                "matcher" => "error",
                "state" => "success"
              },
              {
                "expected" => "creating",
                "matcher" => "pathAny",
                "state" => "failure",
                "argument" => "db_instances[].db_instance_status"
              },
              {
                "expected" => "modifying",
                "matcher" => "pathAny",
                "state" => "failure",
                "argument" => "db_instances[].db_instance_status"
              },
              {
                "expected" => "rebooting",
                "matcher" => "pathAny",
                "state" => "failure",
                "argument" => "db_instances[].db_instance_status"
              },
              {
                "expected" => "resetting-master-credentials",
                "matcher" => "pathAny",
                "state" => "failure",
                "argument" => "db_instances[].db_instance_status"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#describe_db_instances)
      # @return (see Client#describe_db_instances)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    class DBSnapshotAvailable

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
            operation_name: :describe_db_snapshots,
            acceptors: [
              {
                "expected" => "available",
                "matcher" => "pathAll",
                "state" => "success",
                "argument" => "db_snapshots[].status"
              },
              {
                "expected" => "deleted",
                "matcher" => "pathAny",
                "state" => "failure",
                "argument" => "db_snapshots[].status"
              },
              {
                "expected" => "deleting",
                "matcher" => "pathAny",
                "state" => "failure",
                "argument" => "db_snapshots[].status"
              },
              {
                "expected" => "failed",
                "matcher" => "pathAny",
                "state" => "failure",
                "argument" => "db_snapshots[].status"
              },
              {
                "expected" => "incompatible-restore",
                "matcher" => "pathAny",
                "state" => "failure",
                "argument" => "db_snapshots[].status"
              },
              {
                "expected" => "incompatible-parameters",
                "matcher" => "pathAny",
                "state" => "failure",
                "argument" => "db_snapshots[].status"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#describe_db_snapshots)
      # @return (see Client#describe_db_snapshots)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    class DBSnapshotDeleted

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
            operation_name: :describe_db_snapshots,
            acceptors: [
              {
                "expected" => true,
                "matcher" => "path",
                "state" => "success",
                "argument" => "length(db_snapshots) == `0`"
              },
              {
                "expected" => "DBSnapshotNotFound",
                "matcher" => "error",
                "state" => "success"
              },
              {
                "expected" => "creating",
                "matcher" => "pathAny",
                "state" => "failure",
                "argument" => "db_snapshots[].status"
              },
              {
                "expected" => "modifying",
                "matcher" => "pathAny",
                "state" => "failure",
                "argument" => "db_snapshots[].status"
              },
              {
                "expected" => "rebooting",
                "matcher" => "pathAny",
                "state" => "failure",
                "argument" => "db_snapshots[].status"
              },
              {
                "expected" => "resetting-master-credentials",
                "matcher" => "pathAny",
                "state" => "failure",
                "argument" => "db_snapshots[].status"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#describe_db_snapshots)
      # @return (see Client#describe_db_snapshots)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end
  end
end
