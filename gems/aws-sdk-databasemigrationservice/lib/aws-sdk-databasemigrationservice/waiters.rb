# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core/waiters'

module Aws::DatabaseMigrationService
  # Waiters are utility methods that poll for a particular state to occur
  # on a client. Waiters can fail after a number of attempts at a polling
  # interval defined for the service client.
  #
  # For a list of operations that can be waited for and the
  # client methods called for each operation, see the table below or the
  # {Client#wait_until} field documentation for the {Client}.
  #
  # # Invoking a Waiter
  # To invoke a waiter, call #wait_until on a {Client}. The first parameter
  # is the waiter name, which is specific to the service client and indicates
  # which operation is being waited for. The second parameter is a hash of
  # parameters that are passed to the client method called by the waiter,
  # which varies according to the waiter name.
  #
  # # Wait Failures
  # To catch errors in a waiter, use WaiterFailed,
  # as shown in the following example.
  #
  #     rescue rescue Aws::Waiters::Errors::WaiterFailed => error
  #       puts "failed waiting for instance running: #{error.message}
  #     end
  #
  # # Configuring a Waiter
  # Each waiter has a default polling interval and a maximum number of
  # attempts it will make before returning control to your program.
  # To set these values, use the `max_attempts` and `delay` parameters
  # in your `#wait_until` call.
  # The following example waits for up to 25 seconds, polling every five seconds.
  #
  #     client.wait_until(...) do |w|
  #       w.max_attempts = 5
  #       w.delay = 5
  #     end
  #
  # To disable wait failures, set the value of either of these parameters
  # to `nil`.
  #
  # # Extending a Waiter
  # To modify the behavior of waiters, you can register callbacks that are
  # triggered before each polling attempt and before waiting.
  #
  # The following example implements an exponential backoff in a waiter
  # by doubling the amount of time to wait on every attempt.
  #
  #     client.wait_until(...) do |w|
  #       w.interval = 0 # disable normal sleep
  #       w.before_wait do |n, resp|
  #         sleep(n ** 2)
  #       end
  #     end
  #
  # # Available Waiters
  #
  # The following table lists the valid waiter names, the operations they call,
  # and the default `:delay` and `:max_attempts` values.
  #
  # | waiter_name                    | params                                  | :delay   | :max_attempts |
  # | ------------------------------ | --------------------------------------- | -------- | ------------- |
  # | endpoint_deleted               | {Client#describe_endpoints}             | 5        | 60            |
  # | replication_instance_available | {Client#describe_replication_instances} | 60       | 60            |
  # | replication_instance_deleted   | {Client#describe_replication_instances} | 15       | 60            |
  # | replication_task_deleted       | {Client#describe_replication_tasks}     | 15       | 60            |
  # | replication_task_ready         | {Client#describe_replication_tasks}     | 15       | 60            |
  # | replication_task_running       | {Client#describe_replication_tasks}     | 15       | 60            |
  # | replication_task_stopped       | {Client#describe_replication_tasks}     | 15       | 60            |
  # | test_connection_succeeds       | {Client#describe_connections}           | 5        | 60            |
  #
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
