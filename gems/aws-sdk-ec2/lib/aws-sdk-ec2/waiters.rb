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
              "operation" => "DescribeInstances",
              "acceptors" => [
                {
                  "matcher" => "path",
                  "expected" => true,
                  "argument" => "length(Reservations[]) > `0`",
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
              "operation" => "DescribeBundleTasks",
              "acceptors" => [
                {
                  "expected" => "complete",
                  "matcher" => "pathAll",
                  "state" => "success",
                  "argument" => "BundleTasks[].State"
                },
                {
                  "expected" => "failed",
                  "matcher" => "pathAny",
                  "state" => "failure",
                  "argument" => "BundleTasks[].State"
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
              "operation" => "DescribeConversionTasks",
              "acceptors" => [{
                "expected" => "cancelled",
                "matcher" => "pathAll",
                "state" => "success",
                "argument" => "ConversionTasks[].State"
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
              "operation" => "DescribeConversionTasks",
              "acceptors" => [
                {
                  "expected" => "completed",
                  "matcher" => "pathAll",
                  "state" => "success",
                  "argument" => "ConversionTasks[].State"
                },
                {
                  "expected" => "cancelled",
                  "matcher" => "pathAny",
                  "state" => "failure",
                  "argument" => "ConversionTasks[].State"
                },
                {
                  "expected" => "cancelling",
                  "matcher" => "pathAny",
                  "state" => "failure",
                  "argument" => "ConversionTasks[].State"
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
              "operation" => "DescribeConversionTasks",
              "acceptors" => [{
                "expected" => "deleted",
                "matcher" => "pathAll",
                "state" => "success",
                "argument" => "ConversionTasks[].State"
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
              "operation" => "DescribeCustomerGateways",
              "acceptors" => [
                {
                  "expected" => "available",
                  "matcher" => "pathAll",
                  "state" => "success",
                  "argument" => "CustomerGateways[].State"
                },
                {
                  "expected" => "deleted",
                  "matcher" => "pathAny",
                  "state" => "failure",
                  "argument" => "CustomerGateways[].State"
                },
                {
                  "expected" => "deleting",
                  "matcher" => "pathAny",
                  "state" => "failure",
                  "argument" => "CustomerGateways[].State"
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
              "operation" => "DescribeExportTasks",
              "acceptors" => [{
                "expected" => "cancelled",
                "matcher" => "pathAll",
                "state" => "success",
                "argument" => "ExportTasks[].State"
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
              "operation" => "DescribeExportTasks",
              "acceptors" => [{
                "expected" => "completed",
                "matcher" => "pathAll",
                "state" => "success",
                "argument" => "ExportTasks[].State"
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
              "operation" => "DescribeImages",
              "acceptors" => [
                {
                  "matcher" => "path",
                  "expected" => true,
                  "argument" => "length(Images[]) > `0`",
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
              "operation" => "DescribeImages",
              "acceptors" => [
                {
                  "state" => "success",
                  "matcher" => "pathAll",
                  "argument" => "Images[].State",
                  "expected" => "available"
                },
                {
                  "state" => "failure",
                  "matcher" => "pathAny",
                  "argument" => "Images[].State",
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
              "operation" => "DescribeInstances",
              "acceptors" => [
                {
                  "expected" => "running",
                  "matcher" => "pathAll",
                  "state" => "success",
                  "argument" => "Reservations[].Instances[].State.Name"
                },
                {
                  "expected" => "shutting-down",
                  "matcher" => "pathAny",
                  "state" => "failure",
                  "argument" => "Reservations[].Instances[].State.Name"
                },
                {
                  "expected" => "terminated",
                  "matcher" => "pathAny",
                  "state" => "failure",
                  "argument" => "Reservations[].Instances[].State.Name"
                },
                {
                  "expected" => "stopping",
                  "matcher" => "pathAny",
                  "state" => "failure",
                  "argument" => "Reservations[].Instances[].State.Name"
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
              "operation" => "DescribeInstanceStatus",
              "acceptors" => [
                {
                  "state" => "success",
                  "matcher" => "pathAll",
                  "argument" => "InstanceStatuses[].InstanceStatus.Status",
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
              "operation" => "DescribeInstances",
              "acceptors" => [
                {
                  "expected" => "stopped",
                  "matcher" => "pathAll",
                  "state" => "success",
                  "argument" => "Reservations[].Instances[].State.Name"
                },
                {
                  "expected" => "pending",
                  "matcher" => "pathAny",
                  "state" => "failure",
                  "argument" => "Reservations[].Instances[].State.Name"
                },
                {
                  "expected" => "terminated",
                  "matcher" => "pathAny",
                  "state" => "failure",
                  "argument" => "Reservations[].Instances[].State.Name"
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
              "operation" => "DescribeInstances",
              "acceptors" => [
                {
                  "expected" => "terminated",
                  "matcher" => "pathAll",
                  "state" => "success",
                  "argument" => "Reservations[].Instances[].State.Name"
                },
                {
                  "expected" => "pending",
                  "matcher" => "pathAny",
                  "state" => "failure",
                  "argument" => "Reservations[].Instances[].State.Name"
                },
                {
                  "expected" => "stopping",
                  "matcher" => "pathAny",
                  "state" => "failure",
                  "argument" => "Reservations[].Instances[].State.Name"
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
              "operation" => "DescribeKeyPairs",
              "acceptors" => [
                {
                  "expected" => true,
                  "matcher" => "pathAll",
                  "state" => "success",
                  "argument" => "length(KeyPairs[].KeyName) > `0`"
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
              "operation" => "DescribeNatGateways",
              "acceptors" => [
                {
                  "state" => "success",
                  "matcher" => "pathAll",
                  "argument" => "NatGateways[].State",
                  "expected" => "available"
                },
                {
                  "state" => "failure",
                  "matcher" => "pathAny",
                  "argument" => "NatGateways[].State",
                  "expected" => "failed"
                },
                {
                  "state" => "failure",
                  "matcher" => "pathAny",
                  "argument" => "NatGateways[].State",
                  "expected" => "deleting"
                },
                {
                  "state" => "failure",
                  "matcher" => "pathAny",
                  "argument" => "NatGateways[].State",
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
              "operation" => "DescribeNetworkInterfaces",
              "acceptors" => [
                {
                  "expected" => "available",
                  "matcher" => "pathAll",
                  "state" => "success",
                  "argument" => "NetworkInterfaces[].Status"
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
              "operation" => "GetPasswordData",
              "acceptors" => [{
                "state" => "success",
                "matcher" => "path",
                "argument" => "length(PasswordData) > `0`",
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
              "operation" => "DescribeSnapshots",
              "acceptors" => [{
                "expected" => "completed",
                "matcher" => "pathAll",
                "state" => "success",
                "argument" => "Snapshots[].State"
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
              "operation" => "DescribeSpotInstanceRequests",
              "acceptors" => [
                {
                  "state" => "success",
                  "matcher" => "pathAll",
                  "argument" => "SpotInstanceRequests[].Status.Code",
                  "expected" => "fulfilled"
                },
                {
                  "state" => "failure",
                  "matcher" => "pathAny",
                  "argument" => "SpotInstanceRequests[].Status.Code",
                  "expected" => "schedule-expired"
                },
                {
                  "state" => "failure",
                  "matcher" => "pathAny",
                  "argument" => "SpotInstanceRequests[].Status.Code",
                  "expected" => "canceled-before-fulfillment"
                },
                {
                  "state" => "failure",
                  "matcher" => "pathAny",
                  "argument" => "SpotInstanceRequests[].Status.Code",
                  "expected" => "bad-parameters"
                },
                {
                  "state" => "failure",
                  "matcher" => "pathAny",
                  "argument" => "SpotInstanceRequests[].Status.Code",
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
              "operation" => "DescribeSubnets",
              "acceptors" => [{
                "expected" => "available",
                "matcher" => "pathAll",
                "state" => "success",
                "argument" => "Subnets[].State"
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
              "operation" => "DescribeInstanceStatus",
              "acceptors" => [{
                "state" => "success",
                "matcher" => "pathAll",
                "argument" => "InstanceStatuses[].SystemStatus.Status",
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
              "operation" => "DescribeVolumes",
              "acceptors" => [
                {
                  "expected" => "available",
                  "matcher" => "pathAll",
                  "state" => "success",
                  "argument" => "Volumes[].State"
                },
                {
                  "expected" => "deleted",
                  "matcher" => "pathAny",
                  "state" => "failure",
                  "argument" => "Volumes[].State"
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
              "operation" => "DescribeVolumes",
              "acceptors" => [
                {
                  "expected" => "deleted",
                  "matcher" => "pathAll",
                  "state" => "success",
                  "argument" => "Volumes[].State"
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
              "operation" => "DescribeVolumes",
              "acceptors" => [
                {
                  "expected" => "in-use",
                  "matcher" => "pathAll",
                  "state" => "success",
                  "argument" => "Volumes[].State"
                },
                {
                  "expected" => "deleted",
                  "matcher" => "pathAny",
                  "state" => "failure",
                  "argument" => "Volumes[].State"
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
              "operation" => "DescribeVpcs",
              "acceptors" => [{
                "expected" => "available",
                "matcher" => "pathAll",
                "state" => "success",
                "argument" => "Vpcs[].State"
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
              "operation" => "DescribeVpcs",
              "acceptors" => [
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
              "operation" => "DescribeVpnConnections",
              "acceptors" => [
                {
                  "expected" => "available",
                  "matcher" => "pathAll",
                  "state" => "success",
                  "argument" => "VpnConnections[].State"
                },
                {
                  "expected" => "deleting",
                  "matcher" => "pathAny",
                  "state" => "failure",
                  "argument" => "VpnConnections[].State"
                },
                {
                  "expected" => "deleted",
                  "matcher" => "pathAny",
                  "state" => "failure",
                  "argument" => "VpnConnections[].State"
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
              "operation" => "DescribeVpnConnections",
              "acceptors" => [
                {
                  "expected" => "deleted",
                  "matcher" => "pathAll",
                  "state" => "success",
                  "argument" => "VpnConnections[].State"
                },
                {
                  "expected" => "pending",
                  "matcher" => "pathAny",
                  "state" => "failure",
                  "argument" => "VpnConnections[].State"
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
              "operation" => "DescribeVpcPeeringConnections",
              "acceptors" => [
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
