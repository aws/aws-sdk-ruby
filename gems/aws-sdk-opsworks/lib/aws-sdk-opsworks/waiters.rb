# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core/waiters'

module Aws::OpsWorks
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
  # | waiter_name           | params                        | :delay   | :max_attempts |
  # | --------------------- | ----------------------------- | -------- | ------------- |
  # | app_exists            | {Client#describe_apps}        | 1        | 40            |
  # | deployment_successful | {Client#describe_deployments} | 15       | 40            |
  # | instance_online       | {Client#describe_instances}   | 15       | 40            |
  # | instance_registered   | {Client#describe_instances}   | 15       | 40            |
  # | instance_stopped      | {Client#describe_instances}   | 15       | 40            |
  # | instance_terminated   | {Client#describe_instances}   | 15       | 40            |
  #
  module Waiters

    class AppExists

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (40)
      # @option options [Integer] :delay (1)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 40,
          delay: 1,
          poller: Aws::Waiters::Poller.new(
            operation_name: :describe_apps,
            acceptors: [
              {
                "expected" => 200,
                "matcher" => "status",
                "state" => "success"
              },
              {
                "matcher" => "status",
                "expected" => 400,
                "state" => "failure"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#describe_apps)
      # @return (see Client#describe_apps)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    # Wait until a deployment has completed successfully.
    class DeploymentSuccessful

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
            operation_name: :describe_deployments,
            acceptors: [
              {
                "expected" => "successful",
                "matcher" => "pathAll",
                "state" => "success",
                "argument" => "deployments[].status"
              },
              {
                "expected" => "failed",
                "matcher" => "pathAny",
                "state" => "failure",
                "argument" => "deployments[].status"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#describe_deployments)
      # @return (see Client#describe_deployments)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    # Wait until OpsWorks instance is online.
    class InstanceOnline

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
            operation_name: :describe_instances,
            acceptors: [
              {
                "expected" => "online",
                "matcher" => "pathAll",
                "state" => "success",
                "argument" => "instances[].status"
              },
              {
                "expected" => "setup_failed",
                "matcher" => "pathAny",
                "state" => "failure",
                "argument" => "instances[].status"
              },
              {
                "expected" => "shutting_down",
                "matcher" => "pathAny",
                "state" => "failure",
                "argument" => "instances[].status"
              },
              {
                "expected" => "start_failed",
                "matcher" => "pathAny",
                "state" => "failure",
                "argument" => "instances[].status"
              },
              {
                "expected" => "stopped",
                "matcher" => "pathAny",
                "state" => "failure",
                "argument" => "instances[].status"
              },
              {
                "expected" => "stopping",
                "matcher" => "pathAny",
                "state" => "failure",
                "argument" => "instances[].status"
              },
              {
                "expected" => "terminating",
                "matcher" => "pathAny",
                "state" => "failure",
                "argument" => "instances[].status"
              },
              {
                "expected" => "terminated",
                "matcher" => "pathAny",
                "state" => "failure",
                "argument" => "instances[].status"
              },
              {
                "expected" => "stop_failed",
                "matcher" => "pathAny",
                "state" => "failure",
                "argument" => "instances[].status"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#describe_instances)
      # @return (see Client#describe_instances)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    # Wait until OpsWorks instance is registered.
    class InstanceRegistered

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
            operation_name: :describe_instances,
            acceptors: [
              {
                "expected" => "registered",
                "matcher" => "pathAll",
                "state" => "success",
                "argument" => "instances[].status"
              },
              {
                "expected" => "setup_failed",
                "matcher" => "pathAny",
                "state" => "failure",
                "argument" => "instances[].status"
              },
              {
                "expected" => "shutting_down",
                "matcher" => "pathAny",
                "state" => "failure",
                "argument" => "instances[].status"
              },
              {
                "expected" => "stopped",
                "matcher" => "pathAny",
                "state" => "failure",
                "argument" => "instances[].status"
              },
              {
                "expected" => "stopping",
                "matcher" => "pathAny",
                "state" => "failure",
                "argument" => "instances[].status"
              },
              {
                "expected" => "terminating",
                "matcher" => "pathAny",
                "state" => "failure",
                "argument" => "instances[].status"
              },
              {
                "expected" => "terminated",
                "matcher" => "pathAny",
                "state" => "failure",
                "argument" => "instances[].status"
              },
              {
                "expected" => "stop_failed",
                "matcher" => "pathAny",
                "state" => "failure",
                "argument" => "instances[].status"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#describe_instances)
      # @return (see Client#describe_instances)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    # Wait until OpsWorks instance is stopped.
    class InstanceStopped

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
            operation_name: :describe_instances,
            acceptors: [
              {
                "expected" => "stopped",
                "matcher" => "pathAll",
                "state" => "success",
                "argument" => "instances[].status"
              },
              {
                "expected" => "booting",
                "matcher" => "pathAny",
                "state" => "failure",
                "argument" => "instances[].status"
              },
              {
                "expected" => "pending",
                "matcher" => "pathAny",
                "state" => "failure",
                "argument" => "instances[].status"
              },
              {
                "expected" => "rebooting",
                "matcher" => "pathAny",
                "state" => "failure",
                "argument" => "instances[].status"
              },
              {
                "expected" => "requested",
                "matcher" => "pathAny",
                "state" => "failure",
                "argument" => "instances[].status"
              },
              {
                "expected" => "running_setup",
                "matcher" => "pathAny",
                "state" => "failure",
                "argument" => "instances[].status"
              },
              {
                "expected" => "setup_failed",
                "matcher" => "pathAny",
                "state" => "failure",
                "argument" => "instances[].status"
              },
              {
                "expected" => "start_failed",
                "matcher" => "pathAny",
                "state" => "failure",
                "argument" => "instances[].status"
              },
              {
                "expected" => "stop_failed",
                "matcher" => "pathAny",
                "state" => "failure",
                "argument" => "instances[].status"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#describe_instances)
      # @return (see Client#describe_instances)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    # Wait until OpsWorks instance is terminated.
    class InstanceTerminated

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
            operation_name: :describe_instances,
            acceptors: [
              {
                "expected" => "terminated",
                "matcher" => "pathAll",
                "state" => "success",
                "argument" => "instances[].status"
              },
              {
                "expected" => "ResourceNotFoundException",
                "matcher" => "error",
                "state" => "success"
              },
              {
                "expected" => "booting",
                "matcher" => "pathAny",
                "state" => "failure",
                "argument" => "instances[].status"
              },
              {
                "expected" => "online",
                "matcher" => "pathAny",
                "state" => "failure",
                "argument" => "instances[].status"
              },
              {
                "expected" => "pending",
                "matcher" => "pathAny",
                "state" => "failure",
                "argument" => "instances[].status"
              },
              {
                "expected" => "rebooting",
                "matcher" => "pathAny",
                "state" => "failure",
                "argument" => "instances[].status"
              },
              {
                "expected" => "requested",
                "matcher" => "pathAny",
                "state" => "failure",
                "argument" => "instances[].status"
              },
              {
                "expected" => "running_setup",
                "matcher" => "pathAny",
                "state" => "failure",
                "argument" => "instances[].status"
              },
              {
                "expected" => "setup_failed",
                "matcher" => "pathAny",
                "state" => "failure",
                "argument" => "instances[].status"
              },
              {
                "expected" => "start_failed",
                "matcher" => "pathAny",
                "state" => "failure",
                "argument" => "instances[].status"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#describe_instances)
      # @return (see Client#describe_instances)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end
  end
end
