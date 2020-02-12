# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core/waiters'

module Aws::DatabaseMigrationService
  module Waiters

    # Wait until testing endpoint is deleted.
    class EndpointDeleted

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (60)
      # @option options [Integer] :delay (5)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 60,
          delay: 5,
          poller: Aws::Waiters::Poller.new(
            operation_name: :describe_endpoints,
            acceptors: [
              {
                "expected" => "ResourceNotFoundFault",
                "matcher" => "error",
                "state" => "success"
              },
              {
                "argument" => "endpoints[].status",
                "expected" => "active",
                "matcher" => "pathAny",
                "state" => "failure"
              },
              {
                "argument" => "endpoints[].status",
                "expected" => "creating",
                "matcher" => "pathAny",
                "state" => "failure"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#describe_endpoints)
      # @return (see Client#describe_endpoints)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    # Wait until DMS replication instance is available.
    class ReplicationInstanceAvailable

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (60)
      # @option options [Integer] :delay (60)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 60,
          delay: 60,
          poller: Aws::Waiters::Poller.new(
            operation_name: :describe_replication_instances,
            acceptors: [
              {
                "argument" => "replication_instances[].replication_instance_status",
                "expected" => "available",
                "matcher" => "pathAll",
                "state" => "success"
              },
              {
                "argument" => "replication_instances[].replication_instance_status",
                "expected" => "deleting",
                "matcher" => "pathAny",
                "state" => "failure"
              },
              {
                "argument" => "replication_instances[].replication_instance_status",
                "expected" => "incompatible-credentials",
                "matcher" => "pathAny",
                "state" => "failure"
              },
              {
                "argument" => "replication_instances[].replication_instance_status",
                "expected" => "incompatible-network",
                "matcher" => "pathAny",
                "state" => "failure"
              },
              {
                "argument" => "replication_instances[].replication_instance_status",
                "expected" => "inaccessible-encryption-credentials",
                "matcher" => "pathAny",
                "state" => "failure"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#describe_replication_instances)
      # @return (see Client#describe_replication_instances)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    # Wait until DMS replication instance is deleted.
    class ReplicationInstanceDeleted

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (60)
      # @option options [Integer] :delay (15)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 60,
          delay: 15,
          poller: Aws::Waiters::Poller.new(
            operation_name: :describe_replication_instances,
            acceptors: [
              {
                "argument" => "replication_instances[].replication_instance_status",
                "expected" => "available",
                "matcher" => "pathAny",
                "state" => "failure"
              },
              {
                "expected" => "ResourceNotFoundFault",
                "matcher" => "error",
                "state" => "success"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#describe_replication_instances)
      # @return (see Client#describe_replication_instances)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    # Wait until DMS replication task is deleted.
    class ReplicationTaskDeleted

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (60)
      # @option options [Integer] :delay (15)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 60,
          delay: 15,
          poller: Aws::Waiters::Poller.new(
            operation_name: :describe_replication_tasks,
            acceptors: [
              {
                "argument" => "replication_tasks[].status",
                "expected" => "ready",
                "matcher" => "pathAny",
                "state" => "failure"
              },
              {
                "argument" => "replication_tasks[].status",
                "expected" => "creating",
                "matcher" => "pathAny",
                "state" => "failure"
              },
              {
                "argument" => "replication_tasks[].status",
                "expected" => "stopped",
                "matcher" => "pathAny",
                "state" => "failure"
              },
              {
                "argument" => "replication_tasks[].status",
                "expected" => "running",
                "matcher" => "pathAny",
                "state" => "failure"
              },
              {
                "argument" => "replication_tasks[].status",
                "expected" => "failed",
                "matcher" => "pathAny",
                "state" => "failure"
              },
              {
                "expected" => "ResourceNotFoundFault",
                "matcher" => "error",
                "state" => "success"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#describe_replication_tasks)
      # @return (see Client#describe_replication_tasks)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    # Wait until DMS replication task is ready.
    class ReplicationTaskReady

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (60)
      # @option options [Integer] :delay (15)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 60,
          delay: 15,
          poller: Aws::Waiters::Poller.new(
            operation_name: :describe_replication_tasks,
            acceptors: [
              {
                "argument" => "replication_tasks[].status",
                "expected" => "ready",
                "matcher" => "pathAll",
                "state" => "success"
              },
              {
                "argument" => "replication_tasks[].status",
                "expected" => "starting",
                "matcher" => "pathAny",
                "state" => "failure"
              },
              {
                "argument" => "replication_tasks[].status",
                "expected" => "running",
                "matcher" => "pathAny",
                "state" => "failure"
              },
              {
                "argument" => "replication_tasks[].status",
                "expected" => "stopping",
                "matcher" => "pathAny",
                "state" => "failure"
              },
              {
                "argument" => "replication_tasks[].status",
                "expected" => "stopped",
                "matcher" => "pathAny",
                "state" => "failure"
              },
              {
                "argument" => "replication_tasks[].status",
                "expected" => "failed",
                "matcher" => "pathAny",
                "state" => "failure"
              },
              {
                "argument" => "replication_tasks[].status",
                "expected" => "modifying",
                "matcher" => "pathAny",
                "state" => "failure"
              },
              {
                "argument" => "replication_tasks[].status",
                "expected" => "testing",
                "matcher" => "pathAny",
                "state" => "failure"
              },
              {
                "argument" => "replication_tasks[].status",
                "expected" => "deleting",
                "matcher" => "pathAny",
                "state" => "failure"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#describe_replication_tasks)
      # @return (see Client#describe_replication_tasks)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    # Wait until DMS replication task is running.
    class ReplicationTaskRunning

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (60)
      # @option options [Integer] :delay (15)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 60,
          delay: 15,
          poller: Aws::Waiters::Poller.new(
            operation_name: :describe_replication_tasks,
            acceptors: [
              {
                "argument" => "replication_tasks[].status",
                "expected" => "running",
                "matcher" => "pathAll",
                "state" => "success"
              },
              {
                "argument" => "replication_tasks[].status",
                "expected" => "ready",
                "matcher" => "pathAny",
                "state" => "failure"
              },
              {
                "argument" => "replication_tasks[].status",
                "expected" => "creating",
                "matcher" => "pathAny",
                "state" => "failure"
              },
              {
                "argument" => "replication_tasks[].status",
                "expected" => "stopping",
                "matcher" => "pathAny",
                "state" => "failure"
              },
              {
                "argument" => "replication_tasks[].status",
                "expected" => "stopped",
                "matcher" => "pathAny",
                "state" => "failure"
              },
              {
                "argument" => "replication_tasks[].status",
                "expected" => "failed",
                "matcher" => "pathAny",
                "state" => "failure"
              },
              {
                "argument" => "replication_tasks[].status",
                "expected" => "modifying",
                "matcher" => "pathAny",
                "state" => "failure"
              },
              {
                "argument" => "replication_tasks[].status",
                "expected" => "testing",
                "matcher" => "pathAny",
                "state" => "failure"
              },
              {
                "argument" => "replication_tasks[].status",
                "expected" => "deleting",
                "matcher" => "pathAny",
                "state" => "failure"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#describe_replication_tasks)
      # @return (see Client#describe_replication_tasks)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    # Wait until DMS replication task is stopped.
    class ReplicationTaskStopped

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (60)
      # @option options [Integer] :delay (15)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 60,
          delay: 15,
          poller: Aws::Waiters::Poller.new(
            operation_name: :describe_replication_tasks,
            acceptors: [
              {
                "argument" => "replication_tasks[].status",
                "expected" => "stopped",
                "matcher" => "pathAll",
                "state" => "success"
              },
              {
                "argument" => "replication_tasks[].status",
                "expected" => "ready",
                "matcher" => "pathAny",
                "state" => "failure"
              },
              {
                "argument" => "replication_tasks[].status",
                "expected" => "creating",
                "matcher" => "pathAny",
                "state" => "failure"
              },
              {
                "argument" => "replication_tasks[].status",
                "expected" => "starting",
                "matcher" => "pathAny",
                "state" => "failure"
              },
              {
                "argument" => "replication_tasks[].status",
                "expected" => "running",
                "matcher" => "pathAny",
                "state" => "failure"
              },
              {
                "argument" => "replication_tasks[].status",
                "expected" => "failed",
                "matcher" => "pathAny",
                "state" => "failure"
              },
              {
                "argument" => "replication_tasks[].status",
                "expected" => "modifying",
                "matcher" => "pathAny",
                "state" => "failure"
              },
              {
                "argument" => "replication_tasks[].status",
                "expected" => "testing",
                "matcher" => "pathAny",
                "state" => "failure"
              },
              {
                "argument" => "replication_tasks[].status",
                "expected" => "deleting",
                "matcher" => "pathAny",
                "state" => "failure"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#describe_replication_tasks)
      # @return (see Client#describe_replication_tasks)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    # Wait until testing connection succeeds.
    class TestConnectionSucceeds

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (60)
      # @option options [Integer] :delay (5)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 60,
          delay: 5,
          poller: Aws::Waiters::Poller.new(
            operation_name: :describe_connections,
            acceptors: [
              {
                "argument" => "connections[].status",
                "expected" => "successful",
                "matcher" => "pathAll",
                "state" => "success"
              },
              {
                "argument" => "connections[].status",
                "expected" => "failed",
                "matcher" => "pathAny",
                "state" => "failure"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#describe_connections)
      # @return (see Client#describe_connections)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end
  end
end
