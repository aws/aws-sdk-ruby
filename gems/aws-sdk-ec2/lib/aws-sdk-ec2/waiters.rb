# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core/waiters'

module Aws::EC2
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
  # | waiter_name                     | params                                    | :delay   | :max_attempts |
  # | ------------------------------- | ----------------------------------------- | -------- | ------------- |
  # | bundle_task_complete            | {Client#describe_bundle_tasks}            | 15       | 40            |
  # | conversion_task_cancelled       | {Client#describe_conversion_tasks}        | 15       | 40            |
  # | conversion_task_completed       | {Client#describe_conversion_tasks}        | 15       | 40            |
  # | conversion_task_deleted         | {Client#describe_conversion_tasks}        | 15       | 40            |
  # | customer_gateway_available      | {Client#describe_customer_gateways}       | 15       | 40            |
  # | export_task_cancelled           | {Client#describe_export_tasks}            | 15       | 40            |
  # | export_task_completed           | {Client#describe_export_tasks}            | 15       | 40            |
  # | image_available                 | {Client#describe_images}                  | 15       | 40            |
  # | image_exists                    | {Client#describe_images}                  | 15       | 40            |
  # | instance_exists                 | {Client#describe_instances}               | 5        | 40            |
  # | instance_running                | {Client#describe_instances}               | 15       | 40            |
  # | instance_status_ok              | {Client#describe_instance_status}         | 15       | 40            |
  # | instance_stopped                | {Client#describe_instances}               | 15       | 40            |
  # | instance_terminated             | {Client#describe_instances}               | 15       | 40            |
  # | key_pair_exists                 | {Client#describe_key_pairs}               | 5        | 6             |
  # | nat_gateway_available           | {Client#describe_nat_gateways}            | 15       | 40            |
  # | network_interface_available     | {Client#describe_network_interfaces}      | 20       | 10            |
  # | password_data_available         | {Client#get_password_data}                | 15       | 40            |
  # | security_group_exists           | {Client#describe_security_groups}         | 5        | 6             |
  # | snapshot_completed              | {Client#describe_snapshots}               | 15       | 40            |
  # | spot_instance_request_fulfilled | {Client#describe_spot_instance_requests}  | 15       | 40            |
  # | subnet_available                | {Client#describe_subnets}                 | 15       | 40            |
  # | system_status_ok                | {Client#describe_instance_status}         | 15       | 40            |
  # | volume_available                | {Client#describe_volumes}                 | 15       | 40            |
  # | volume_deleted                  | {Client#describe_volumes}                 | 15       | 40            |
  # | volume_in_use                   | {Client#describe_volumes}                 | 15       | 40            |
  # | vpc_available                   | {Client#describe_vpcs}                    | 15       | 40            |
  # | vpc_exists                      | {Client#describe_vpcs}                    | 1        | 5             |
  # | vpc_peering_connection_deleted  | {Client#describe_vpc_peering_connections} | 15       | 40            |
  # | vpc_peering_connection_exists   | {Client#describe_vpc_peering_connections} | 15       | 40            |
  # | vpn_connection_available        | {Client#describe_vpn_connections}         | 15       | 40            |
  # | vpn_connection_deleted          | {Client#describe_vpn_connections}         | 15       | 40            |
  #
  module Waiters

    class BundleTaskComplete

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
            operation_name: :describe_bundle_tasks,
            acceptors: [
              {
                "expected" => "complete",
                "matcher" => "pathAll",
                "state" => "success",
                "argument" => "bundle_tasks[].state"
              },
              {
                "expected" => "failed",
                "matcher" => "pathAny",
                "state" => "failure",
                "argument" => "bundle_tasks[].state"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#describe_bundle_tasks)
      # @return (see Client#describe_bundle_tasks)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    class ConversionTaskCancelled

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
            operation_name: :describe_conversion_tasks,
            acceptors: [{
              "expected" => "cancelled",
              "matcher" => "pathAll",
              "state" => "success",
              "argument" => "conversion_tasks[].state"
            }]
          )
        }.merge(options))
      end

      # @option (see Client#describe_conversion_tasks)
      # @return (see Client#describe_conversion_tasks)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    class ConversionTaskCompleted

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
            operation_name: :describe_conversion_tasks,
            acceptors: [
              {
                "expected" => "completed",
                "matcher" => "pathAll",
                "state" => "success",
                "argument" => "conversion_tasks[].state"
              },
              {
                "expected" => "cancelled",
                "matcher" => "pathAny",
                "state" => "failure",
                "argument" => "conversion_tasks[].state"
              },
              {
                "expected" => "cancelling",
                "matcher" => "pathAny",
                "state" => "failure",
                "argument" => "conversion_tasks[].state"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#describe_conversion_tasks)
      # @return (see Client#describe_conversion_tasks)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    class ConversionTaskDeleted

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
            operation_name: :describe_conversion_tasks,
            acceptors: [{
              "expected" => "deleted",
              "matcher" => "pathAll",
              "state" => "success",
              "argument" => "conversion_tasks[].state"
            }]
          )
        }.merge(options))
      end

      # @option (see Client#describe_conversion_tasks)
      # @return (see Client#describe_conversion_tasks)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    class CustomerGatewayAvailable

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
            operation_name: :describe_customer_gateways,
            acceptors: [
              {
                "expected" => "available",
                "matcher" => "pathAll",
                "state" => "success",
                "argument" => "customer_gateways[].state"
              },
              {
                "expected" => "deleted",
                "matcher" => "pathAny",
                "state" => "failure",
                "argument" => "customer_gateways[].state"
              },
              {
                "expected" => "deleting",
                "matcher" => "pathAny",
                "state" => "failure",
                "argument" => "customer_gateways[].state"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#describe_customer_gateways)
      # @return (see Client#describe_customer_gateways)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    class ExportTaskCancelled

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
            operation_name: :describe_export_tasks,
            acceptors: [{
              "expected" => "cancelled",
              "matcher" => "pathAll",
              "state" => "success",
              "argument" => "export_tasks[].state"
            }]
          )
        }.merge(options))
      end

      # @option (see Client#describe_export_tasks)
      # @return (see Client#describe_export_tasks)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    class ExportTaskCompleted

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
            operation_name: :describe_export_tasks,
            acceptors: [{
              "expected" => "completed",
              "matcher" => "pathAll",
              "state" => "success",
              "argument" => "export_tasks[].state"
            }]
          )
        }.merge(options))
      end

      # @option (see Client#describe_export_tasks)
      # @return (see Client#describe_export_tasks)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    class ImageAvailable

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
            operation_name: :describe_images,
            acceptors: [
              {
                "state" => "success",
                "matcher" => "pathAll",
                "argument" => "images[].state",
                "expected" => "available"
              },
              {
                "state" => "failure",
                "matcher" => "pathAny",
                "argument" => "images[].state",
                "expected" => "failed"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#describe_images)
      # @return (see Client#describe_images)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    class ImageExists

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
            operation_name: :describe_images,
            acceptors: [
              {
                "matcher" => "path",
                "expected" => true,
                "argument" => "length(images[]) > `0`",
                "state" => "success"
              },
              {
                "matcher" => "error",
                "expected" => "InvalidAMIID.NotFound",
                "state" => "retry"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#describe_images)
      # @return (see Client#describe_images)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    class InstanceExists

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (40)
      # @option options [Integer] :delay (5)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 40,
          delay: 5,
          poller: Aws::Waiters::Poller.new(
            operation_name: :describe_instances,
            acceptors: [
              {
                "matcher" => "path",
                "expected" => true,
                "argument" => "length(reservations[]) > `0`",
                "state" => "success"
              },
              {
                "matcher" => "error",
                "expected" => "InvalidInstanceID.NotFound",
                "state" => "retry"
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

    class InstanceRunning

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
                "expected" => "running",
                "matcher" => "pathAll",
                "state" => "success",
                "argument" => "reservations[].instances[].state.name"
              },
              {
                "expected" => "shutting-down",
                "matcher" => "pathAny",
                "state" => "failure",
                "argument" => "reservations[].instances[].state.name"
              },
              {
                "expected" => "terminated",
                "matcher" => "pathAny",
                "state" => "failure",
                "argument" => "reservations[].instances[].state.name"
              },
              {
                "expected" => "stopping",
                "matcher" => "pathAny",
                "state" => "failure",
                "argument" => "reservations[].instances[].state.name"
              },
              {
                "matcher" => "error",
                "expected" => "InvalidInstanceID.NotFound",
                "state" => "retry"
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

    class InstanceStatusOk

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
            operation_name: :describe_instance_status,
            acceptors: [
              {
                "state" => "success",
                "matcher" => "pathAll",
                "argument" => "instance_statuses[].instance_status.status",
                "expected" => "ok"
              },
              {
                "matcher" => "error",
                "expected" => "InvalidInstanceID.NotFound",
                "state" => "retry"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#describe_instance_status)
      # @return (see Client#describe_instance_status)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

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
                "argument" => "reservations[].instances[].state.name"
              },
              {
                "expected" => "pending",
                "matcher" => "pathAny",
                "state" => "failure",
                "argument" => "reservations[].instances[].state.name"
              },
              {
                "expected" => "terminated",
                "matcher" => "pathAny",
                "state" => "failure",
                "argument" => "reservations[].instances[].state.name"
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
                "argument" => "reservations[].instances[].state.name"
              },
              {
                "expected" => "pending",
                "matcher" => "pathAny",
                "state" => "failure",
                "argument" => "reservations[].instances[].state.name"
              },
              {
                "expected" => "stopping",
                "matcher" => "pathAny",
                "state" => "failure",
                "argument" => "reservations[].instances[].state.name"
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

    class KeyPairExists

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (6)
      # @option options [Integer] :delay (5)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 6,
          delay: 5,
          poller: Aws::Waiters::Poller.new(
            operation_name: :describe_key_pairs,
            acceptors: [
              {
                "expected" => true,
                "matcher" => "path",
                "state" => "success",
                "argument" => "length(key_pairs[].key_name) > `0`"
              },
              {
                "expected" => "InvalidKeyPair.NotFound",
                "matcher" => "error",
                "state" => "retry"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#describe_key_pairs)
      # @return (see Client#describe_key_pairs)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    class NatGatewayAvailable

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
            operation_name: :describe_nat_gateways,
            acceptors: [
              {
                "state" => "success",
                "matcher" => "pathAll",
                "argument" => "nat_gateways[].state",
                "expected" => "available"
              },
              {
                "state" => "failure",
                "matcher" => "pathAny",
                "argument" => "nat_gateways[].state",
                "expected" => "failed"
              },
              {
                "state" => "failure",
                "matcher" => "pathAny",
                "argument" => "nat_gateways[].state",
                "expected" => "deleting"
              },
              {
                "state" => "failure",
                "matcher" => "pathAny",
                "argument" => "nat_gateways[].state",
                "expected" => "deleted"
              },
              {
                "state" => "retry",
                "matcher" => "error",
                "expected" => "NatGatewayNotFound"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#describe_nat_gateways)
      # @return (see Client#describe_nat_gateways)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    class NetworkInterfaceAvailable

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (10)
      # @option options [Integer] :delay (20)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 10,
          delay: 20,
          poller: Aws::Waiters::Poller.new(
            operation_name: :describe_network_interfaces,
            acceptors: [
              {
                "expected" => "available",
                "matcher" => "pathAll",
                "state" => "success",
                "argument" => "network_interfaces[].status"
              },
              {
                "expected" => "InvalidNetworkInterfaceID.NotFound",
                "matcher" => "error",
                "state" => "failure"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#describe_network_interfaces)
      # @return (see Client#describe_network_interfaces)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    class PasswordDataAvailable

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
            operation_name: :get_password_data,
            acceptors: [{
              "state" => "success",
              "matcher" => "path",
              "argument" => "length(password_data) > `0`",
              "expected" => true
            }]
          )
        }.merge(options))
      end

      # @option (see Client#get_password_data)
      # @return (see Client#get_password_data)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    class SecurityGroupExists

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (6)
      # @option options [Integer] :delay (5)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 6,
          delay: 5,
          poller: Aws::Waiters::Poller.new(
            operation_name: :describe_security_groups,
            acceptors: [
              {
                "expected" => true,
                "matcher" => "path",
                "state" => "success",
                "argument" => "length(security_groups[].group_id) > `0`"
              },
              {
                "expected" => "InvalidGroupNotFound",
                "matcher" => "error",
                "state" => "retry"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#describe_security_groups)
      # @return (see Client#describe_security_groups)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    class SnapshotCompleted

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
            operation_name: :describe_snapshots,
            acceptors: [{
              "expected" => "completed",
              "matcher" => "pathAll",
              "state" => "success",
              "argument" => "snapshots[].state"
            }]
          )
        }.merge(options))
      end

      # @option (see Client#describe_snapshots)
      # @return (see Client#describe_snapshots)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    class SpotInstanceRequestFulfilled

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
            operation_name: :describe_spot_instance_requests,
            acceptors: [
              {
                "state" => "success",
                "matcher" => "pathAll",
                "argument" => "spot_instance_requests[].status.code",
                "expected" => "fulfilled"
              },
              {
                "state" => "success",
                "matcher" => "pathAll",
                "argument" => "spot_instance_requests[].status.code",
                "expected" => "request-canceled-and-instance-running"
              },
              {
                "state" => "failure",
                "matcher" => "pathAny",
                "argument" => "spot_instance_requests[].status.code",
                "expected" => "schedule-expired"
              },
              {
                "state" => "failure",
                "matcher" => "pathAny",
                "argument" => "spot_instance_requests[].status.code",
                "expected" => "canceled-before-fulfillment"
              },
              {
                "state" => "failure",
                "matcher" => "pathAny",
                "argument" => "spot_instance_requests[].status.code",
                "expected" => "bad-parameters"
              },
              {
                "state" => "failure",
                "matcher" => "pathAny",
                "argument" => "spot_instance_requests[].status.code",
                "expected" => "system-error"
              },
              {
                "state" => "retry",
                "matcher" => "error",
                "expected" => "InvalidSpotInstanceRequestID.NotFound"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#describe_spot_instance_requests)
      # @return (see Client#describe_spot_instance_requests)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    class SubnetAvailable

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
            operation_name: :describe_subnets,
            acceptors: [{
              "expected" => "available",
              "matcher" => "pathAll",
              "state" => "success",
              "argument" => "subnets[].state"
            }]
          )
        }.merge(options))
      end

      # @option (see Client#describe_subnets)
      # @return (see Client#describe_subnets)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    class SystemStatusOk

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
            operation_name: :describe_instance_status,
            acceptors: [{
              "state" => "success",
              "matcher" => "pathAll",
              "argument" => "instance_statuses[].system_status.status",
              "expected" => "ok"
            }]
          )
        }.merge(options))
      end

      # @option (see Client#describe_instance_status)
      # @return (see Client#describe_instance_status)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    class VolumeAvailable

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
            operation_name: :describe_volumes,
            acceptors: [
              {
                "expected" => "available",
                "matcher" => "pathAll",
                "state" => "success",
                "argument" => "volumes[].state"
              },
              {
                "expected" => "deleted",
                "matcher" => "pathAny",
                "state" => "failure",
                "argument" => "volumes[].state"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#describe_volumes)
      # @return (see Client#describe_volumes)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    class VolumeDeleted

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
            operation_name: :describe_volumes,
            acceptors: [
              {
                "expected" => "deleted",
                "matcher" => "pathAll",
                "state" => "success",
                "argument" => "volumes[].state"
              },
              {
                "matcher" => "error",
                "expected" => "InvalidVolume.NotFound",
                "state" => "success"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#describe_volumes)
      # @return (see Client#describe_volumes)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    class VolumeInUse

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
            operation_name: :describe_volumes,
            acceptors: [
              {
                "expected" => "in-use",
                "matcher" => "pathAll",
                "state" => "success",
                "argument" => "volumes[].state"
              },
              {
                "expected" => "deleted",
                "matcher" => "pathAny",
                "state" => "failure",
                "argument" => "volumes[].state"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#describe_volumes)
      # @return (see Client#describe_volumes)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    class VpcAvailable

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
            operation_name: :describe_vpcs,
            acceptors: [{
              "expected" => "available",
              "matcher" => "pathAll",
              "state" => "success",
              "argument" => "vpcs[].state"
            }]
          )
        }.merge(options))
      end

      # @option (see Client#describe_vpcs)
      # @return (see Client#describe_vpcs)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    class VpcExists

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (5)
      # @option options [Integer] :delay (1)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 5,
          delay: 1,
          poller: Aws::Waiters::Poller.new(
            operation_name: :describe_vpcs,
            acceptors: [
              {
                "matcher" => "status",
                "expected" => 200,
                "state" => "success"
              },
              {
                "matcher" => "error",
                "expected" => "InvalidVpcID.NotFound",
                "state" => "retry"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#describe_vpcs)
      # @return (see Client#describe_vpcs)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    class VpcPeeringConnectionDeleted

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
            operation_name: :describe_vpc_peering_connections,
            acceptors: [
              {
                "expected" => "deleted",
                "matcher" => "pathAll",
                "state" => "success",
                "argument" => "vpc_peering_connections[].status.code"
              },
              {
                "matcher" => "error",
                "expected" => "InvalidVpcPeeringConnectionID.NotFound",
                "state" => "success"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#describe_vpc_peering_connections)
      # @return (see Client#describe_vpc_peering_connections)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    class VpcPeeringConnectionExists

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
            operation_name: :describe_vpc_peering_connections,
            acceptors: [
              {
                "matcher" => "status",
                "expected" => 200,
                "state" => "success"
              },
              {
                "matcher" => "error",
                "expected" => "InvalidVpcPeeringConnectionID.NotFound",
                "state" => "retry"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#describe_vpc_peering_connections)
      # @return (see Client#describe_vpc_peering_connections)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    class VpnConnectionAvailable

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
            operation_name: :describe_vpn_connections,
            acceptors: [
              {
                "expected" => "available",
                "matcher" => "pathAll",
                "state" => "success",
                "argument" => "vpn_connections[].state"
              },
              {
                "expected" => "deleting",
                "matcher" => "pathAny",
                "state" => "failure",
                "argument" => "vpn_connections[].state"
              },
              {
                "expected" => "deleted",
                "matcher" => "pathAny",
                "state" => "failure",
                "argument" => "vpn_connections[].state"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#describe_vpn_connections)
      # @return (see Client#describe_vpn_connections)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    class VpnConnectionDeleted

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
            operation_name: :describe_vpn_connections,
            acceptors: [
              {
                "expected" => "deleted",
                "matcher" => "pathAll",
                "state" => "success",
                "argument" => "vpn_connections[].state"
              },
              {
                "expected" => "pending",
                "matcher" => "pathAny",
                "state" => "failure",
                "argument" => "vpn_connections[].state"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#describe_vpn_connections)
      # @return (see Client#describe_vpn_connections)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end
  end
end
