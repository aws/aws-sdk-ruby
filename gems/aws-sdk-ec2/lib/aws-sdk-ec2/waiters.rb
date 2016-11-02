# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing for info on making contributions:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws
  module EC2
    module Waiters
      class InstanceExists

        # @option options [required, Client] :client
        # @option options [Integer] :max_attempts (40)
        # @option options [Integer] :delay (5)
        # @option options [Proc] :before_attempt
        # @option options [Proc] :before_wait
        def initialize(options = {})
          @client = options[:client]
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

      class BundleTaskComplete

        # @option options [required, Client] :client
        # @option options [Integer] :max_attempts (40)
        # @option options [Integer] :delay (15)
        # @option options [Proc] :before_attempt
        # @option options [Proc] :before_wait
        def initialize(options = {})
          @client = options[:client]
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

        # @option options [required, Client] :client
        # @option options [Integer] :max_attempts (40)
        # @option options [Integer] :delay (15)
        # @option options [Proc] :before_attempt
        # @option options [Proc] :before_wait
        def initialize(options = {})
          @client = options[:client]
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

        # @option options [required, Client] :client
        # @option options [Integer] :max_attempts (40)
        # @option options [Integer] :delay (15)
        # @option options [Proc] :before_attempt
        # @option options [Proc] :before_wait
        def initialize(options = {})
          @client = options[:client]
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

        # @option options [required, Client] :client
        # @option options [Integer] :max_attempts (40)
        # @option options [Integer] :delay (15)
        # @option options [Proc] :before_attempt
        # @option options [Proc] :before_wait
        def initialize(options = {})
          @client = options[:client]
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

        # @option options [required, Client] :client
        # @option options [Integer] :max_attempts (40)
        # @option options [Integer] :delay (15)
        # @option options [Proc] :before_attempt
        # @option options [Proc] :before_wait
        def initialize(options = {})
          @client = options[:client]
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

        # @option options [required, Client] :client
        # @option options [Integer] :max_attempts (40)
        # @option options [Integer] :delay (15)
        # @option options [Proc] :before_attempt
        # @option options [Proc] :before_wait
        def initialize(options = {})
          @client = options[:client]
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

        # @option options [required, Client] :client
        # @option options [Integer] :max_attempts (40)
        # @option options [Integer] :delay (15)
        # @option options [Proc] :before_attempt
        # @option options [Proc] :before_wait
        def initialize(options = {})
          @client = options[:client]
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

      class ImageExists

        # @option options [required, Client] :client
        # @option options [Integer] :max_attempts (40)
        # @option options [Integer] :delay (15)
        # @option options [Proc] :before_attempt
        # @option options [Proc] :before_wait
        def initialize(options = {})
          @client = options[:client]
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

      class ImageAvailable

        # @option options [required, Client] :client
        # @option options [Integer] :max_attempts (40)
        # @option options [Integer] :delay (15)
        # @option options [Proc] :before_attempt
        # @option options [Proc] :before_wait
        def initialize(options = {})
          @client = options[:client]
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

      class InstanceRunning

        # @option options [required, Client] :client
        # @option options [Integer] :max_attempts (40)
        # @option options [Integer] :delay (15)
        # @option options [Proc] :before_attempt
        # @option options [Proc] :before_wait
        def initialize(options = {})
          @client = options[:client]
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

        # @option options [required, Client] :client
        # @option options [Integer] :max_attempts (40)
        # @option options [Integer] :delay (15)
        # @option options [Proc] :before_attempt
        # @option options [Proc] :before_wait
        def initialize(options = {})
          @client = options[:client]
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

        # @option options [required, Client] :client
        # @option options [Integer] :max_attempts (40)
        # @option options [Integer] :delay (15)
        # @option options [Proc] :before_attempt
        # @option options [Proc] :before_wait
        def initialize(options = {})
          @client = options[:client]
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

        # @option options [required, Client] :client
        # @option options [Integer] :max_attempts (40)
        # @option options [Integer] :delay (15)
        # @option options [Proc] :before_attempt
        # @option options [Proc] :before_wait
        def initialize(options = {})
          @client = options[:client]
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

        # @option options [required, Client] :client
        # @option options [Integer] :max_attempts (6)
        # @option options [Integer] :delay (5)
        # @option options [Proc] :before_attempt
        # @option options [Proc] :before_wait
        def initialize(options = {})
          @client = options[:client]
          @waiter = Aws::Waiters::Waiter.new({
            max_attempts: 6,
            delay: 5,
            poller: Aws::Waiters::Poller.new(
              operation_name: :describe_key_pairs,
              acceptors: [
                {
                  "expected" => true,
                  "matcher" => "pathAll",
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

        # @option options [required, Client] :client
        # @option options [Integer] :max_attempts (40)
        # @option options [Integer] :delay (15)
        # @option options [Proc] :before_attempt
        # @option options [Proc] :before_wait
        def initialize(options = {})
          @client = options[:client]
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

        # @option options [required, Client] :client
        # @option options [Integer] :max_attempts (10)
        # @option options [Integer] :delay (20)
        # @option options [Proc] :before_attempt
        # @option options [Proc] :before_wait
        def initialize(options = {})
          @client = options[:client]
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

        # @option options [required, Client] :client
        # @option options [Integer] :max_attempts (40)
        # @option options [Integer] :delay (15)
        # @option options [Proc] :before_attempt
        # @option options [Proc] :before_wait
        def initialize(options = {})
          @client = options[:client]
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

      class SnapshotCompleted

        # @option options [required, Client] :client
        # @option options [Integer] :max_attempts (40)
        # @option options [Integer] :delay (15)
        # @option options [Proc] :before_attempt
        # @option options [Proc] :before_wait
        def initialize(options = {})
          @client = options[:client]
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

        # @option options [required, Client] :client
        # @option options [Integer] :max_attempts (40)
        # @option options [Integer] :delay (15)
        # @option options [Proc] :before_attempt
        # @option options [Proc] :before_wait
        def initialize(options = {})
          @client = options[:client]
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

        # @option options [required, Client] :client
        # @option options [Integer] :max_attempts (40)
        # @option options [Integer] :delay (15)
        # @option options [Proc] :before_attempt
        # @option options [Proc] :before_wait
        def initialize(options = {})
          @client = options[:client]
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

        # @option options [required, Client] :client
        # @option options [Integer] :max_attempts (40)
        # @option options [Integer] :delay (15)
        # @option options [Proc] :before_attempt
        # @option options [Proc] :before_wait
        def initialize(options = {})
          @client = options[:client]
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

        # @option options [required, Client] :client
        # @option options [Integer] :max_attempts (40)
        # @option options [Integer] :delay (15)
        # @option options [Proc] :before_attempt
        # @option options [Proc] :before_wait
        def initialize(options = {})
          @client = options[:client]
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

        # @option options [required, Client] :client
        # @option options [Integer] :max_attempts (40)
        # @option options [Integer] :delay (15)
        # @option options [Proc] :before_attempt
        # @option options [Proc] :before_wait
        def initialize(options = {})
          @client = options[:client]
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

        # @option options [required, Client] :client
        # @option options [Integer] :max_attempts (40)
        # @option options [Integer] :delay (15)
        # @option options [Proc] :before_attempt
        # @option options [Proc] :before_wait
        def initialize(options = {})
          @client = options[:client]
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

        # @option options [required, Client] :client
        # @option options [Integer] :max_attempts (40)
        # @option options [Integer] :delay (15)
        # @option options [Proc] :before_attempt
        # @option options [Proc] :before_wait
        def initialize(options = {})
          @client = options[:client]
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

        # @option options [required, Client] :client
        # @option options [Integer] :max_attempts (5)
        # @option options [Integer] :delay (1)
        # @option options [Proc] :before_attempt
        # @option options [Proc] :before_wait
        def initialize(options = {})
          @client = options[:client]
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

      class VpnConnectionAvailable

        # @option options [required, Client] :client
        # @option options [Integer] :max_attempts (40)
        # @option options [Integer] :delay (15)
        # @option options [Proc] :before_attempt
        # @option options [Proc] :before_wait
        def initialize(options = {})
          @client = options[:client]
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

        # @option options [required, Client] :client
        # @option options [Integer] :max_attempts (40)
        # @option options [Integer] :delay (15)
        # @option options [Proc] :before_attempt
        # @option options [Proc] :before_wait
        def initialize(options = {})
          @client = options[:client]
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

      class VpcPeeringConnectionExists

        # @option options [required, Client] :client
        # @option options [Integer] :max_attempts (40)
        # @option options [Integer] :delay (15)
        # @option options [Proc] :before_attempt
        # @option options [Proc] :before_wait
        def initialize(options = {})
          @client = options[:client]
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
    end
  end
end
