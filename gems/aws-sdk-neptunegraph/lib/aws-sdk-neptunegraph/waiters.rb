# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core/waiters'

module Aws::NeptuneGraph
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
  # | waiter_name                      | params                              | :delay   | :max_attempts |
  # | -------------------------------- | ----------------------------------- | -------- | ------------- |
  # | export_task_cancelled            | {Client#get_export_task}            | 60       | 60            |
  # | export_task_successful           | {Client#get_export_task}            | 60       | 480           |
  # | graph_available                  | {Client#get_graph}                  | 60       | 480           |
  # | graph_deleted                    | {Client#get_graph}                  | 60       | 60            |
  # | graph_snapshot_available         | {Client#get_graph_snapshot}         | 60       | 120           |
  # | graph_snapshot_deleted           | {Client#get_graph_snapshot}         | 60       | 60            |
  # | graph_stopped                    | {Client#get_graph}                  | 20       | 90            |
  # | import_task_cancelled            | {Client#get_import_task}            | 60       | 60            |
  # | import_task_successful           | {Client#get_import_task}            | 60       | 480           |
  # | private_graph_endpoint_available | {Client#get_private_graph_endpoint} | 10       | 180           |
  # | private_graph_endpoint_deleted   | {Client#get_private_graph_endpoint} | 10       | 180           |
  #
  module Waiters

    # Wait until Export Task is Cancelled
    class ExportTaskCancelled

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
            operation_name: :get_export_task,
            acceptors: [
              {
                "matcher" => "path",
                "argument" => "status != 'CANCELLING' && status != 'CANCELLED'",
                "state" => "failure",
                "expected" => true
              },
              {
                "matcher" => "path",
                "argument" => "status",
                "state" => "success",
                "expected" => "CANCELLED"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#get_export_task)
      # @return (see Client#get_export_task)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    # Wait until Export Task is Successful
    class ExportTaskSuccessful

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (480)
      # @option options [Integer] :delay (60)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 480,
          delay: 60,
          poller: Aws::Waiters::Poller.new(
            operation_name: :get_export_task,
            acceptors: [
              {
                "matcher" => "path",
                "argument" => "status",
                "state" => "failure",
                "expected" => "CANCELLING"
              },
              {
                "matcher" => "path",
                "argument" => "status",
                "state" => "failure",
                "expected" => "CANCELLED"
              },
              {
                "matcher" => "path",
                "argument" => "status",
                "state" => "failure",
                "expected" => "FAILED"
              },
              {
                "matcher" => "path",
                "argument" => "status",
                "state" => "success",
                "expected" => "SUCCEEDED"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#get_export_task)
      # @return (see Client#get_export_task)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    # Wait until Graph is Available
    class GraphAvailable

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (480)
      # @option options [Integer] :delay (60)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 480,
          delay: 60,
          poller: Aws::Waiters::Poller.new(
            operation_name: :get_graph,
            acceptors: [
              {
                "matcher" => "path",
                "argument" => "status",
                "state" => "failure",
                "expected" => "DELETING"
              },
              {
                "matcher" => "path",
                "argument" => "status",
                "state" => "failure",
                "expected" => "FAILED"
              },
              {
                "matcher" => "path",
                "argument" => "status",
                "state" => "success",
                "expected" => "AVAILABLE"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#get_graph)
      # @return (see Client#get_graph)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    # Wait until Graph is Deleted
    class GraphDeleted

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
            operation_name: :get_graph,
            acceptors: [
              {
                "matcher" => "path",
                "argument" => "status != 'DELETING'",
                "state" => "failure",
                "expected" => true
              },
              {
                "matcher" => "error",
                "state" => "success",
                "expected" => "ResourceNotFoundException"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#get_graph)
      # @return (see Client#get_graph)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    # Wait until GraphSnapshot is Available
    class GraphSnapshotAvailable

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (120)
      # @option options [Integer] :delay (60)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 120,
          delay: 60,
          poller: Aws::Waiters::Poller.new(
            operation_name: :get_graph_snapshot,
            acceptors: [
              {
                "matcher" => "path",
                "argument" => "status",
                "state" => "failure",
                "expected" => "DELETING"
              },
              {
                "matcher" => "path",
                "argument" => "status",
                "state" => "failure",
                "expected" => "FAILED"
              },
              {
                "matcher" => "path",
                "argument" => "status",
                "state" => "success",
                "expected" => "AVAILABLE"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#get_graph_snapshot)
      # @return (see Client#get_graph_snapshot)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    # Wait until GraphSnapshot is Deleted
    class GraphSnapshotDeleted

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
            operation_name: :get_graph_snapshot,
            acceptors: [
              {
                "matcher" => "path",
                "argument" => "status != 'DELETING'",
                "state" => "failure",
                "expected" => true
              },
              {
                "matcher" => "error",
                "state" => "success",
                "expected" => "ResourceNotFoundException"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#get_graph_snapshot)
      # @return (see Client#get_graph_snapshot)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    # Wait until Graph is Stopped
    class GraphStopped

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (90)
      # @option options [Integer] :delay (20)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 90,
          delay: 20,
          poller: Aws::Waiters::Poller.new(
            operation_name: :get_graph,
            acceptors: [
              {
                "matcher" => "path",
                "argument" => "status",
                "state" => "success",
                "expected" => "STOPPED"
              },
              {
                "matcher" => "path",
                "argument" => "status != 'STOPPING'",
                "state" => "failure",
                "expected" => true
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#get_graph)
      # @return (see Client#get_graph)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    # Wait until Import Task is Cancelled
    class ImportTaskCancelled

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
            operation_name: :get_import_task,
            acceptors: [
              {
                "matcher" => "path",
                "argument" => "status != 'CANCELLING' && status != 'CANCELLED'",
                "state" => "failure",
                "expected" => true
              },
              {
                "matcher" => "path",
                "argument" => "status",
                "state" => "success",
                "expected" => "CANCELLED"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#get_import_task)
      # @return (see Client#get_import_task)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    # Wait until Import Task is Successful
    class ImportTaskSuccessful

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (480)
      # @option options [Integer] :delay (60)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 480,
          delay: 60,
          poller: Aws::Waiters::Poller.new(
            operation_name: :get_import_task,
            acceptors: [
              {
                "matcher" => "path",
                "argument" => "status",
                "state" => "failure",
                "expected" => "CANCELLING"
              },
              {
                "matcher" => "path",
                "argument" => "status",
                "state" => "failure",
                "expected" => "CANCELLED"
              },
              {
                "matcher" => "path",
                "argument" => "status",
                "state" => "failure",
                "expected" => "ROLLING_BACK"
              },
              {
                "matcher" => "path",
                "argument" => "status",
                "state" => "failure",
                "expected" => "FAILED"
              },
              {
                "matcher" => "path",
                "argument" => "status",
                "state" => "success",
                "expected" => "SUCCEEDED"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#get_import_task)
      # @return (see Client#get_import_task)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    # Wait until PrivateGraphEndpoint is Available
    class PrivateGraphEndpointAvailable

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (180)
      # @option options [Integer] :delay (10)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 180,
          delay: 10,
          poller: Aws::Waiters::Poller.new(
            operation_name: :get_private_graph_endpoint,
            acceptors: [
              {
                "matcher" => "path",
                "argument" => "status",
                "state" => "failure",
                "expected" => "DELETING"
              },
              {
                "matcher" => "path",
                "argument" => "status",
                "state" => "failure",
                "expected" => "FAILED"
              },
              {
                "matcher" => "path",
                "argument" => "status",
                "state" => "success",
                "expected" => "AVAILABLE"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#get_private_graph_endpoint)
      # @return (see Client#get_private_graph_endpoint)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    # Wait until PrivateGraphEndpoint is Deleted
    class PrivateGraphEndpointDeleted

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (180)
      # @option options [Integer] :delay (10)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 180,
          delay: 10,
          poller: Aws::Waiters::Poller.new(
            operation_name: :get_private_graph_endpoint,
            acceptors: [
              {
                "matcher" => "path",
                "argument" => "status != 'DELETING'",
                "state" => "failure",
                "expected" => true
              },
              {
                "matcher" => "error",
                "state" => "success",
                "expected" => "ResourceNotFoundException"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#get_private_graph_endpoint)
      # @return (see Client#get_private_graph_endpoint)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end
  end
end
