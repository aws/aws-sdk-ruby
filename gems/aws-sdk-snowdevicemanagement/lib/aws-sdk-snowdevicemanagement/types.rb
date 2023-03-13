# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::SnowDeviceManagement
  module Types

    # You don't have sufficient access to perform this action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snow-device-management-2021-08-04/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] task_id
    #   The ID of the task that you are attempting to cancel. You can
    #   retrieve a task ID by using the `ListTasks` operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snow-device-management-2021-08-04/CancelTaskInput AWS API Documentation
    #
    class CancelTaskInput < Struct.new(
      :task_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] task_id
    #   The ID of the task that you are attempting to cancel.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snow-device-management-2021-08-04/CancelTaskOutput AWS API Documentation
    #
    class CancelTaskOutput < Struct.new(
      :task_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The physical capacity of the Amazon Web Services Snow Family device.
    #
    # @!attribute [rw] available
    #   The amount of capacity available for use on the device.
    #   @return [Integer]
    #
    # @!attribute [rw] name
    #   The name of the type of capacity, such as memory.
    #   @return [String]
    #
    # @!attribute [rw] total
    #   The total capacity on the device.
    #   @return [Integer]
    #
    # @!attribute [rw] unit
    #   The unit of measure for the type of capacity.
    #   @return [String]
    #
    # @!attribute [rw] used
    #   The amount of capacity used on the device.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snow-device-management-2021-08-04/Capacity AWS API Documentation
    #
    class Capacity < Struct.new(
      :available,
      :name,
      :total,
      :unit,
      :used)
      SENSITIVE = []
      include Aws::Structure
    end

    # The command given to the device to execute.
    #
    # @note Command is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] reboot
    #   Reboots the device.
    #   @return [Types::Reboot]
    #
    # @!attribute [rw] unlock
    #   Unlocks the device.
    #   @return [Types::Unlock]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snow-device-management-2021-08-04/Command AWS API Documentation
    #
    class Command < Struct.new(
      :reboot,
      :unlock,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Reboot < Command; end
      class Unlock < Command; end
      class Unknown < Command; end
    end

    # The options for how a device's CPU is configured.
    #
    # @!attribute [rw] core_count
    #   The number of cores that the CPU can use.
    #   @return [Integer]
    #
    # @!attribute [rw] threads_per_core
    #   The number of threads per core in the CPU.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snow-device-management-2021-08-04/CpuOptions AWS API Documentation
    #
    class CpuOptions < Struct.new(
      :core_count,
      :threads_per_core)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   A token ensuring that the action is called only once with the
    #   specified details.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] command
    #   The task to be performed. Only one task is executed on a device at a
    #   time.
    #   @return [Types::Command]
    #
    # @!attribute [rw] description
    #   A description of the task and its targets.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Optional metadata that you assign to a resource. You can use tags to
    #   categorize a resource in different ways, such as by purpose, owner,
    #   or environment.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] targets
    #   A list of managed device IDs.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snow-device-management-2021-08-04/CreateTaskInput AWS API Documentation
    #
    class CreateTaskInput < Struct.new(
      :client_token,
      :command,
      :description,
      :tags,
      :targets)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] task_arn
    #   The Amazon Resource Name (ARN) of the task that you created.
    #   @return [String]
    #
    # @!attribute [rw] task_id
    #   The ID of the task that you created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snow-device-management-2021-08-04/CreateTaskOutput AWS API Documentation
    #
    class CreateTaskOutput < Struct.new(
      :task_arn,
      :task_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_ids
    #   A list of instance IDs associated with the managed device.
    #   @return [Array<String>]
    #
    # @!attribute [rw] managed_device_id
    #   The ID of the managed device.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snow-device-management-2021-08-04/DescribeDeviceEc2Input AWS API Documentation
    #
    class DescribeDeviceEc2Input < Struct.new(
      :instance_ids,
      :managed_device_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instances
    #   A list of structures containing information about each instance.
    #   @return [Array<Types::InstanceSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snow-device-management-2021-08-04/DescribeDeviceEc2Output AWS API Documentation
    #
    class DescribeDeviceEc2Output < Struct.new(
      :instances)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] managed_device_id
    #   The ID of the device that you are checking the information of.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snow-device-management-2021-08-04/DescribeDeviceInput AWS API Documentation
    #
    class DescribeDeviceInput < Struct.new(
      :managed_device_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] associated_with_job
    #   The ID of the job used when ordering the device.
    #   @return [String]
    #
    # @!attribute [rw] device_capacities
    #   The hardware specifications of the device.
    #   @return [Array<Types::Capacity>]
    #
    # @!attribute [rw] device_state
    #   The current state of the device.
    #   @return [String]
    #
    # @!attribute [rw] device_type
    #   The type of Amazon Web Services Snow Family device.
    #   @return [String]
    #
    # @!attribute [rw] last_reached_out_at
    #   When the device last contacted the Amazon Web Services Cloud.
    #   Indicates that the device is online.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   When the device last pushed an update to the Amazon Web Services
    #   Cloud. Indicates when the device cache was refreshed.
    #   @return [Time]
    #
    # @!attribute [rw] managed_device_arn
    #   The Amazon Resource Name (ARN) of the device.
    #   @return [String]
    #
    # @!attribute [rw] managed_device_id
    #   The ID of the device that you checked the information for.
    #   @return [String]
    #
    # @!attribute [rw] physical_network_interfaces
    #   The network interfaces available on the device.
    #   @return [Array<Types::PhysicalNetworkInterface>]
    #
    # @!attribute [rw] software
    #   The software installed on the device.
    #   @return [Types::SoftwareInformation]
    #
    # @!attribute [rw] tags
    #   Optional metadata that you assign to a resource. You can use tags to
    #   categorize a resource in different ways, such as by purpose, owner,
    #   or environment.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snow-device-management-2021-08-04/DescribeDeviceOutput AWS API Documentation
    #
    class DescribeDeviceOutput < Struct.new(
      :associated_with_job,
      :device_capacities,
      :device_state,
      :device_type,
      :last_reached_out_at,
      :last_updated_at,
      :managed_device_arn,
      :managed_device_id,
      :physical_network_interfaces,
      :software,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] managed_device_id
    #   The ID of the managed device.
    #   @return [String]
    #
    # @!attribute [rw] task_id
    #   The ID of the task that the action is describing.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snow-device-management-2021-08-04/DescribeExecutionInput AWS API Documentation
    #
    class DescribeExecutionInput < Struct.new(
      :managed_device_id,
      :task_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] execution_id
    #   The ID of the execution.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_at
    #   When the status of the execution was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] managed_device_id
    #   The ID of the managed device that the task is being executed on.
    #   @return [String]
    #
    # @!attribute [rw] started_at
    #   When the execution began.
    #   @return [Time]
    #
    # @!attribute [rw] state
    #   The current state of the execution.
    #   @return [String]
    #
    # @!attribute [rw] task_id
    #   The ID of the task being executed on the device.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snow-device-management-2021-08-04/DescribeExecutionOutput AWS API Documentation
    #
    class DescribeExecutionOutput < Struct.new(
      :execution_id,
      :last_updated_at,
      :managed_device_id,
      :started_at,
      :state,
      :task_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] task_id
    #   The ID of the task to be described.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snow-device-management-2021-08-04/DescribeTaskInput AWS API Documentation
    #
    class DescribeTaskInput < Struct.new(
      :task_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] completed_at
    #   When the task was completed.
    #   @return [Time]
    #
    # @!attribute [rw] created_at
    #   When the `CreateTask` operation was called.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The description provided of the task and managed devices.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_at
    #   When the state of the task was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] state
    #   The current state of the task.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Optional metadata that you assign to a resource. You can use tags to
    #   categorize a resource in different ways, such as by purpose, owner,
    #   or environment.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] targets
    #   The managed devices that the task was sent to.
    #   @return [Array<String>]
    #
    # @!attribute [rw] task_arn
    #   The Amazon Resource Name (ARN) of the task.
    #   @return [String]
    #
    # @!attribute [rw] task_id
    #   The ID of the task.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snow-device-management-2021-08-04/DescribeTaskOutput AWS API Documentation
    #
    class DescribeTaskOutput < Struct.new(
      :completed_at,
      :created_at,
      :description,
      :last_updated_at,
      :state,
      :tags,
      :targets,
      :task_arn,
      :task_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Identifying information about the device.
    #
    # @!attribute [rw] associated_with_job
    #   The ID of the job used to order the device.
    #   @return [String]
    #
    # @!attribute [rw] managed_device_arn
    #   The Amazon Resource Name (ARN) of the device.
    #   @return [String]
    #
    # @!attribute [rw] managed_device_id
    #   The ID of the device.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Optional metadata that you assign to a resource. You can use tags to
    #   categorize a resource in different ways, such as by purpose, owner,
    #   or environment.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snow-device-management-2021-08-04/DeviceSummary AWS API Documentation
    #
    class DeviceSummary < Struct.new(
      :associated_with_job,
      :managed_device_arn,
      :managed_device_id,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a parameter used to set up an Amazon Elastic Block Store
    # (Amazon EBS) volume in a block device mapping.
    #
    # @!attribute [rw] attach_time
    #   When the attachment was initiated.
    #   @return [Time]
    #
    # @!attribute [rw] delete_on_termination
    #   A value that indicates whether the volume is deleted on instance
    #   termination.
    #   @return [Boolean]
    #
    # @!attribute [rw] status
    #   The attachment state.
    #   @return [String]
    #
    # @!attribute [rw] volume_id
    #   The ID of the Amazon EBS volume.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snow-device-management-2021-08-04/EbsInstanceBlockDevice AWS API Documentation
    #
    class EbsInstanceBlockDevice < Struct.new(
      :attach_time,
      :delete_on_termination,
      :status,
      :volume_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The summary of a task execution on a specified device.
    #
    # @!attribute [rw] execution_id
    #   The ID of the execution.
    #   @return [String]
    #
    # @!attribute [rw] managed_device_id
    #   The ID of the managed device that the task is being executed on.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the execution.
    #   @return [String]
    #
    # @!attribute [rw] task_id
    #   The ID of the task.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snow-device-management-2021-08-04/ExecutionSummary AWS API Documentation
    #
    class ExecutionSummary < Struct.new(
      :execution_id,
      :managed_device_id,
      :state,
      :task_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The description of an instance. Currently, Amazon EC2 instances are
    # the only supported instance type.
    #
    # @!attribute [rw] ami_launch_index
    #   The Amazon Machine Image (AMI) launch index, which you can use to
    #   find this instance in the launch group.
    #   @return [Integer]
    #
    # @!attribute [rw] block_device_mappings
    #   Any block device mapping entries for the instance.
    #   @return [Array<Types::InstanceBlockDeviceMapping>]
    #
    # @!attribute [rw] cpu_options
    #   The CPU options for the instance.
    #   @return [Types::CpuOptions]
    #
    # @!attribute [rw] created_at
    #   When the instance was created.
    #   @return [Time]
    #
    # @!attribute [rw] image_id
    #   The ID of the AMI used to launch the instance.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   The ID of the instance.
    #   @return [String]
    #
    # @!attribute [rw] instance_type
    #   The instance type.
    #   @return [String]
    #
    # @!attribute [rw] private_ip_address
    #   The private IPv4 address assigned to the instance.
    #   @return [String]
    #
    # @!attribute [rw] public_ip_address
    #   The public IPv4 address assigned to the instance.
    #   @return [String]
    #
    # @!attribute [rw] root_device_name
    #   The device name of the root device volume (for example,
    #   `/dev/sda1`).
    #   @return [String]
    #
    # @!attribute [rw] security_groups
    #   The security groups for the instance.
    #   @return [Array<Types::SecurityGroupIdentifier>]
    #
    # @!attribute [rw] state
    #   The description of the current state of an instance.
    #   @return [Types::InstanceState]
    #
    # @!attribute [rw] updated_at
    #   When the instance was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snow-device-management-2021-08-04/Instance AWS API Documentation
    #
    class Instance < Struct.new(
      :ami_launch_index,
      :block_device_mappings,
      :cpu_options,
      :created_at,
      :image_id,
      :instance_id,
      :instance_type,
      :private_ip_address,
      :public_ip_address,
      :root_device_name,
      :security_groups,
      :state,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # The description of a block device mapping.
    #
    # @!attribute [rw] device_name
    #   The block device name.
    #   @return [String]
    #
    # @!attribute [rw] ebs
    #   The parameters used to automatically set up Amazon Elastic Block
    #   Store (Amazon EBS) volumes when the instance is launched.
    #   @return [Types::EbsInstanceBlockDevice]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snow-device-management-2021-08-04/InstanceBlockDeviceMapping AWS API Documentation
    #
    class InstanceBlockDeviceMapping < Struct.new(
      :device_name,
      :ebs)
      SENSITIVE = []
      include Aws::Structure
    end

    # The description of the current state of an instance.
    #
    # @!attribute [rw] code
    #   The state of the instance as a 16-bit unsigned integer.
    #
    #   The high byte is all of the bits between 2^8 and (2^16)-1, which
    #   equals decimal values between 256 and 65,535. These numerical values
    #   are used for internal purposes and should be ignored.
    #
    #   The low byte is all of the bits between 2^0 and (2^8)-1, which
    #   equals decimal values between 0 and 255.
    #
    #   The valid values for the instance state code are all in the range of
    #   the low byte. These values are:
    #
    #   * `0` : `pending`
    #
    #   * `16` : `running`
    #
    #   * `32` : `shutting-down`
    #
    #   * `48` : `terminated`
    #
    #   * `64` : `stopping`
    #
    #   * `80` : `stopped`
    #
    #   You can ignore the high byte value by zeroing out all of the bits
    #   above 2^8 or 256 in decimal.
    #   @return [Integer]
    #
    # @!attribute [rw] name
    #   The current state of the instance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snow-device-management-2021-08-04/InstanceState AWS API Documentation
    #
    class InstanceState < Struct.new(
      :code,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details about the instance.
    #
    # @!attribute [rw] instance
    #   A structure containing details about the instance.
    #   @return [Types::Instance]
    #
    # @!attribute [rw] last_updated_at
    #   When the instance summary was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snow-device-management-2021-08-04/InstanceSummary AWS API Documentation
    #
    class InstanceSummary < Struct.new(
      :instance,
      :last_updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # An unexpected error occurred while processing the request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snow-device-management-2021-08-04/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] managed_device_id
    #   The ID of the managed device that you are listing the resources of.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of resources per page.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A pagination token to continue to the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   A structure used to filter the results by type of resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snow-device-management-2021-08-04/ListDeviceResourcesInput AWS API Documentation
    #
    class ListDeviceResourcesInput < Struct.new(
      :managed_device_id,
      :max_results,
      :next_token,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A pagination token to continue to the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] resources
    #   A structure defining the resource's type, Amazon Resource Name
    #   (ARN), and ID.
    #   @return [Array<Types::ResourceSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snow-device-management-2021-08-04/ListDeviceResourcesOutput AWS API Documentation
    #
    class ListDeviceResourcesOutput < Struct.new(
      :next_token,
      :resources)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_id
    #   The ID of the job used to order the device.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of devices to list per page.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A pagination token to continue to the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snow-device-management-2021-08-04/ListDevicesInput AWS API Documentation
    #
    class ListDevicesInput < Struct.new(
      :job_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] devices
    #   A list of device structures that contain information about the
    #   device.
    #   @return [Array<Types::DeviceSummary>]
    #
    # @!attribute [rw] next_token
    #   A pagination token to continue to the next page of devices.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snow-device-management-2021-08-04/ListDevicesOutput AWS API Documentation
    #
    class ListDevicesOutput < Struct.new(
      :devices,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of tasks to list per page.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A pagination token to continue to the next page of tasks.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   A structure used to filter the tasks by their current state.
    #   @return [String]
    #
    # @!attribute [rw] task_id
    #   The ID of the task.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snow-device-management-2021-08-04/ListExecutionsInput AWS API Documentation
    #
    class ListExecutionsInput < Struct.new(
      :max_results,
      :next_token,
      :state,
      :task_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] executions
    #   A list of executions. Each execution contains the task ID, the
    #   device that the task is executing on, the execution ID, and the
    #   status of the execution.
    #   @return [Array<Types::ExecutionSummary>]
    #
    # @!attribute [rw] next_token
    #   A pagination token to continue to the next page of executions.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snow-device-management-2021-08-04/ListExecutionsOutput AWS API Documentation
    #
    class ListExecutionsOutput < Struct.new(
      :executions,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the device or task.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snow-device-management-2021-08-04/ListTagsForResourceInput AWS API Documentation
    #
    class ListTagsForResourceInput < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The list of tags for the device or task.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snow-device-management-2021-08-04/ListTagsForResourceOutput AWS API Documentation
    #
    class ListTagsForResourceOutput < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of tasks per page.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A pagination token to continue to the next page of tasks.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   A structure used to filter the list of tasks.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snow-device-management-2021-08-04/ListTasksInput AWS API Documentation
    #
    class ListTasksInput < Struct.new(
      :max_results,
      :next_token,
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A pagination token to continue to the next page of tasks.
    #   @return [String]
    #
    # @!attribute [rw] tasks
    #   A list of task structures containing details about each task.
    #   @return [Array<Types::TaskSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snow-device-management-2021-08-04/ListTasksOutput AWS API Documentation
    #
    class ListTasksOutput < Struct.new(
      :next_token,
      :tasks)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details about the physical network interface for the device.
    #
    # @!attribute [rw] default_gateway
    #   The default gateway of the device.
    #   @return [String]
    #
    # @!attribute [rw] ip_address
    #   The IP address of the device.
    #   @return [String]
    #
    # @!attribute [rw] ip_address_assignment
    #   A value that describes whether the IP address is dynamic or
    #   persistent.
    #   @return [String]
    #
    # @!attribute [rw] mac_address
    #   The MAC address of the device.
    #   @return [String]
    #
    # @!attribute [rw] netmask
    #   The netmask used to divide the IP address into subnets.
    #   @return [String]
    #
    # @!attribute [rw] physical_connector_type
    #   The physical connector type.
    #   @return [String]
    #
    # @!attribute [rw] physical_network_interface_id
    #   The physical network interface ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snow-device-management-2021-08-04/PhysicalNetworkInterface AWS API Documentation
    #
    class PhysicalNetworkInterface < Struct.new(
      :default_gateway,
      :ip_address,
      :ip_address_assignment,
      :mac_address,
      :netmask,
      :physical_connector_type,
      :physical_network_interface_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure used to reboot the device.
    #
    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snow-device-management-2021-08-04/Reboot AWS API Documentation
    #
    class Reboot < Aws::EmptyStructure; end

    # The request references a resource that doesn't exist.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snow-device-management-2021-08-04/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A summary of a resource available on the device.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The resource type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snow-device-management-2021-08-04/ResourceSummary AWS API Documentation
    #
    class ResourceSummary < Struct.new(
      :arn,
      :id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the device's security group.
    #
    # @!attribute [rw] group_id
    #   The security group ID.
    #   @return [String]
    #
    # @!attribute [rw] group_name
    #   The security group name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snow-device-management-2021-08-04/SecurityGroupIdentifier AWS API Documentation
    #
    class SecurityGroupIdentifier < Struct.new(
      :group_id,
      :group_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request would cause a service quota to be exceeded.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snow-device-management-2021-08-04/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the software on the device.
    #
    # @!attribute [rw] install_state
    #   The state of the software that is installed or that is being
    #   installed on the device.
    #   @return [String]
    #
    # @!attribute [rw] installed_version
    #   The version of the software currently installed on the device.
    #   @return [String]
    #
    # @!attribute [rw] installing_version
    #   The version of the software being installed on the device.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snow-device-management-2021-08-04/SoftwareInformation AWS API Documentation
    #
    class SoftwareInformation < Struct.new(
      :install_state,
      :installed_version,
      :installing_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the device or task.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Optional metadata that you assign to a resource. You can use tags to
    #   categorize a resource in different ways, such as by purpose, owner,
    #   or environment.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snow-device-management-2021-08-04/TagResourceInput AWS API Documentation
    #
    class TagResourceInput < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the task assigned to one or many devices.
    #
    # @!attribute [rw] state
    #   The state of the task assigned to one or many devices.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Optional metadata that you assign to a resource. You can use tags to
    #   categorize a resource in different ways, such as by purpose, owner,
    #   or environment.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] task_arn
    #   The Amazon Resource Name (ARN) of the task.
    #   @return [String]
    #
    # @!attribute [rw] task_id
    #   The task ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snow-device-management-2021-08-04/TaskSummary AWS API Documentation
    #
    class TaskSummary < Struct.new(
      :state,
      :tags,
      :task_arn,
      :task_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was denied due to request throttling.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snow-device-management-2021-08-04/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure used to unlock a device.
    #
    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snow-device-management-2021-08-04/Unlock AWS API Documentation
    #
    class Unlock < Aws::EmptyStructure; end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the device or task.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   Optional metadata that you assign to a resource. You can use tags to
    #   categorize a resource in different ways, such as by purpose, owner,
    #   or environment.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snow-device-management-2021-08-04/UntagResourceInput AWS API Documentation
    #
    class UntagResourceInput < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input fails to satisfy the constraints specified by an Amazon Web
    # Services service.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snow-device-management-2021-08-04/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
