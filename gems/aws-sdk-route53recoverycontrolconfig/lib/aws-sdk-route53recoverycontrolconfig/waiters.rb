# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core/waiters'

module Aws::Route53RecoveryControlConfig
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
  # | waiter_name             | params                            | :delay   | :max_attempts |
  # | ----------------------- | --------------------------------- | -------- | ------------- |
  # | cluster_created         | {Client#describe_cluster}         | 5        | 26            |
  # | cluster_deleted         | {Client#describe_cluster}         | 5        | 26            |
  # | control_panel_created   | {Client#describe_control_panel}   | 5        | 26            |
  # | control_panel_deleted   | {Client#describe_control_panel}   | 5        | 26            |
  # | routing_control_created | {Client#describe_routing_control} | 5        | 26            |
  # | routing_control_deleted | {Client#describe_routing_control} | 5        | 26            |
  #
  module Waiters

    # Wait until a cluster is created
    class ClusterCreated

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (26)
      # @option options [Integer] :delay (5)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 26,
          delay: 5,
          poller: Aws::Waiters::Poller.new(
            operation_name: :describe_cluster,
            acceptors: [
              {
                "state" => "success",
                "matcher" => "path",
                "argument" => "cluster.status",
                "expected" => "DEPLOYED"
              },
              {
                "state" => "retry",
                "matcher" => "path",
                "argument" => "cluster.status",
                "expected" => "PENDING"
              },
              {
                "state" => "retry",
                "matcher" => "status",
                "expected" => 500
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

    # Wait for a cluster to be deleted
    class ClusterDeleted

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (26)
      # @option options [Integer] :delay (5)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 26,
          delay: 5,
          poller: Aws::Waiters::Poller.new(
            operation_name: :describe_cluster,
            acceptors: [
              {
                "state" => "success",
                "matcher" => "status",
                "expected" => 404
              },
              {
                "state" => "retry",
                "matcher" => "path",
                "argument" => "cluster.status",
                "expected" => "PENDING_DELETION"
              },
              {
                "state" => "retry",
                "matcher" => "status",
                "expected" => 500
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

    # Wait until a control panel is created
    class ControlPanelCreated

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (26)
      # @option options [Integer] :delay (5)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 26,
          delay: 5,
          poller: Aws::Waiters::Poller.new(
            operation_name: :describe_control_panel,
            acceptors: [
              {
                "state" => "success",
                "matcher" => "path",
                "argument" => "control_panel.status",
                "expected" => "DEPLOYED"
              },
              {
                "state" => "retry",
                "matcher" => "path",
                "argument" => "control_panel.status",
                "expected" => "PENDING"
              },
              {
                "state" => "retry",
                "matcher" => "status",
                "expected" => 500
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#describe_control_panel)
      # @return (see Client#describe_control_panel)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    # Wait until a control panel is deleted
    class ControlPanelDeleted

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (26)
      # @option options [Integer] :delay (5)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 26,
          delay: 5,
          poller: Aws::Waiters::Poller.new(
            operation_name: :describe_control_panel,
            acceptors: [
              {
                "state" => "success",
                "matcher" => "status",
                "expected" => 404
              },
              {
                "state" => "retry",
                "matcher" => "path",
                "argument" => "control_panel.status",
                "expected" => "PENDING_DELETION"
              },
              {
                "state" => "retry",
                "matcher" => "status",
                "expected" => 500
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#describe_control_panel)
      # @return (see Client#describe_control_panel)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    # Wait until a routing control is created
    class RoutingControlCreated

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (26)
      # @option options [Integer] :delay (5)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 26,
          delay: 5,
          poller: Aws::Waiters::Poller.new(
            operation_name: :describe_routing_control,
            acceptors: [
              {
                "state" => "success",
                "matcher" => "path",
                "argument" => "routing_control.status",
                "expected" => "DEPLOYED"
              },
              {
                "state" => "retry",
                "matcher" => "path",
                "argument" => "routing_control.status",
                "expected" => "PENDING"
              },
              {
                "state" => "retry",
                "matcher" => "status",
                "expected" => 500
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#describe_routing_control)
      # @return (see Client#describe_routing_control)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    # Wait for a routing control to be deleted
    class RoutingControlDeleted

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (26)
      # @option options [Integer] :delay (5)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 26,
          delay: 5,
          poller: Aws::Waiters::Poller.new(
            operation_name: :describe_routing_control,
            acceptors: [
              {
                "state" => "success",
                "matcher" => "status",
                "expected" => 404
              },
              {
                "state" => "retry",
                "matcher" => "path",
                "argument" => "routing_control.status",
                "expected" => "PENDING_DELETION"
              },
              {
                "state" => "retry",
                "matcher" => "status",
                "expected" => 500
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#describe_routing_control)
      # @return (see Client#describe_routing_control)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end
  end
end
