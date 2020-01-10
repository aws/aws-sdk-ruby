# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core/waiters'

module Aws::OpsWorks
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
