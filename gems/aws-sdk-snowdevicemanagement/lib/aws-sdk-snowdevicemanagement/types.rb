# frozen_string_literal: true

# This is generated code!

module Aws::SnowDeviceManagement
  # This module contains the types returned by client operations.
  module Types

    # <p>You don't have sufficient access to perform this action.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute task_id
    #   <p>The ID of the task that you are attempting to cancel. You can retrieve a task ID by using
    #         the <code>ListTasks</code> operation.</p>
    #   @return [String]
    class CancelTaskOperationInput < Struct.new(
      :task_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute task_id
    #   <p>The ID of the task that you are attempting to cancel.</p>
    #   @return [String]
    class CancelTaskOperationOutput < Struct.new(
      :task_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The physical capacity of the Amazon Web Services Snow Family device. </p>
    # @!attribute name
    #   <p>The name of the type of capacity, such as memory.</p>
    #   @return [String]
    # @!attribute unit
    #   <p>The unit of measure for the type of capacity.</p>
    #   @return [String]
    # @!attribute total
    #   <p>The total capacity on the device.</p>
    #   @return [Integer]
    # @!attribute used
    #   <p>The amount of capacity used on the device.</p>
    #   @return [Integer]
    # @!attribute available
    #   <p>The amount of capacity available for use on the device.</p>
    #   @return [Integer]
    class Capacity < Struct.new(
      :name,
      :unit,
      :total,
      :used,
      :available,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The command given to the device to execute.</p>
    # @!attribute unlock
    #   <p>Unlocks the device.</p>
    #   @return [Types::Unlock]
    # @!attribute reboot
    #   <p>Reboots the device.</p>
    #   @return [Types::Reboot]
    class Command < Struct.new(
      :unlock,
      :reboot,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Unlock < Command; end
      class Reboot < Command; end
      class Unknown < Command; end
    end

    # <p>The options for how a device's CPU is configured.</p>
    # @!attribute core_count
    #   <p>The number of cores that the CPU can use.</p>
    #   @return [Integer]
    # @!attribute threads_per_core
    #   <p>The number of threads per core in the CPU.</p>
    #   @return [Integer]
    class CpuOptions < Struct.new(
      :core_count,
      :threads_per_core,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute targets
    #   <p>A list of managed device IDs.</p>
    #   @return [Array<String>]
    # @!attribute command
    #   <p>The task to be performed. Only one task is executed on a device at a time.</p>
    #   @return [Types::Command]
    # @!attribute description
    #   <p>A description of the task and its targets.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Optional metadata that you assign to a resource. You can use tags to categorize a resource
    #         in different ways, such as by purpose, owner, or environment. </p>
    #   @return [Hash<String, String>]
    # @!attribute client_token
    #   <p>A token ensuring that the action is called only once with the specified details.</p>
    #   @return [String]
    class CreateTaskOperationInput < Struct.new(
      :targets,
      :command,
      :description,
      :tags,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute task_id
    #   <p>The ID of the task that you created.</p>
    #   @return [String]
    # @!attribute task_arn
    #   <p>The Amazon Resource Name (ARN) of the task that you created.</p>
    #   @return [String]
    class CreateTaskOperationOutput < Struct.new(
      :task_id,
      :task_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute managed_device_id
    #   <p>The ID of the managed device.</p>
    #   @return [String]
    # @!attribute instance_ids
    #   <p>A list of instance IDs associated with the managed device.</p>
    #   @return [Array<String>]
    class DescribeDeviceEc2InstancesInput < Struct.new(
      :managed_device_id,
      :instance_ids,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute instances
    #   <p>A list of structures containing information about each instance. </p>
    #   @return [Array<Types::InstanceSummary>]
    class DescribeDeviceEc2InstancesOutput < Struct.new(
      :instances,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute managed_device_id
    #   <p>The ID of the device that you are checking the information of.</p>
    #   @return [String]
    class DescribeDeviceOperationInput < Struct.new(
      :managed_device_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute last_reached_out_at
    #   <p>When the device last contacted the Amazon Web Services Cloud. Indicates that the device is
    #         online.</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>When the device last pushed an update to the Amazon Web Services Cloud. Indicates when the device cache
    #         was refreshed.</p>
    #   @return [Time]
    # @!attribute tags
    #   <p>Optional metadata that you assign to a resource. You can use tags to categorize a resource
    #         in different ways, such as by purpose, owner, or environment. </p>
    #   @return [Hash<String, String>]
    # @!attribute managed_device_id
    #   <p>The ID of the device that you checked the information for.</p>
    #   @return [String]
    # @!attribute managed_device_arn
    #   <p>The Amazon Resource Name (ARN) of the device.</p>
    #   @return [String]
    # @!attribute device_type
    #   <p>The type of Amazon Web Services Snow Family device.</p>
    #   @return [String]
    # @!attribute associated_with_job
    #   <p>The ID of the job used when ordering the device.</p>
    #   @return [String]
    # @!attribute device_state
    #   <p>The current state of the device.</p>
    #   @return [String]
    # @!attribute physical_network_interfaces
    #   <p>The network interfaces available on the device.</p>
    #   @return [Array<Types::PhysicalNetworkInterface>]
    # @!attribute device_capacities
    #   <p>The hardware specifications of the device. </p>
    #   @return [Array<Types::Capacity>]
    # @!attribute software
    #   <p>The software installed on the device.</p>
    #   @return [Types::SoftwareInformation]
    class DescribeDeviceOperationOutput < Struct.new(
      :last_reached_out_at,
      :last_updated_at,
      :tags,
      :managed_device_id,
      :managed_device_arn,
      :device_type,
      :associated_with_job,
      :device_state,
      :physical_network_interfaces,
      :device_capacities,
      :software,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute task_id
    #   <p>The ID of the task that the action is describing.</p>
    #   @return [String]
    # @!attribute managed_device_id
    #   <p>The ID of the managed device.</p>
    #   @return [String]
    class DescribeExecutionOperationInput < Struct.new(
      :task_id,
      :managed_device_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute task_id
    #   <p>The ID of the task being executed on the device.</p>
    #   @return [String]
    # @!attribute execution_id
    #   <p>The ID of the execution.</p>
    #   @return [String]
    # @!attribute managed_device_id
    #   <p>The ID of the managed device that the task is being executed on.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The current state of the execution.</p>
    #   @return [String]
    # @!attribute started_at
    #   <p>When the execution began.</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>When the status of the execution was last updated.</p>
    #   @return [Time]
    class DescribeExecutionOperationOutput < Struct.new(
      :task_id,
      :execution_id,
      :managed_device_id,
      :state,
      :started_at,
      :last_updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute task_id
    #   <p>The ID of the task to be described.</p>
    #   @return [String]
    class DescribeTaskOperationInput < Struct.new(
      :task_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute task_id
    #   <p>The ID of the task.</p>
    #   @return [String]
    # @!attribute task_arn
    #   <p>The Amazon Resource Name (ARN) of the task.</p>
    #   @return [String]
    # @!attribute targets
    #   <p>The managed devices that the task was sent to.</p>
    #   @return [Array<String>]
    # @!attribute state
    #   <p>The current state of the task.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>When the <code>CreateTask</code> operation was called.</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>When the state of the task was last updated.</p>
    #   @return [Time]
    # @!attribute completed_at
    #   <p>When the task was completed.</p>
    #   @return [Time]
    # @!attribute description
    #   <p>The description provided of the task and managed devices.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Optional metadata that you assign to a resource. You can use tags to categorize a resource
    #         in different ways, such as by purpose, owner, or environment.</p>
    #   @return [Hash<String, String>]
    class DescribeTaskOperationOutput < Struct.new(
      :task_id,
      :task_arn,
      :targets,
      :state,
      :created_at,
      :last_updated_at,
      :completed_at,
      :description,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Identifying information about the device.</p>
    # @!attribute managed_device_id
    #   <p>The ID of the device.</p>
    #   @return [String]
    # @!attribute managed_device_arn
    #   <p>The Amazon Resource Name (ARN) of the device.</p>
    #   @return [String]
    # @!attribute associated_with_job
    #   <p>The ID of the job used to order the device.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Optional metadata that you assign to a resource. You can use tags to categorize a resource
    #         in different ways, such as by purpose, owner, or environment.</p>
    #   @return [Hash<String, String>]
    class DeviceSummary < Struct.new(
      :managed_device_id,
      :managed_device_arn,
      :associated_with_job,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a parameter used to set up an Amazon Elastic Block Store (Amazon EBS) volume
    #       in a block device mapping.</p>
    # @!attribute attach_time
    #   <p>When the attachment was initiated.</p>
    #   @return [Time]
    # @!attribute delete_on_termination
    #   <p>A value that indicates whether the volume is deleted on instance termination.</p>
    #   @return [Boolean]
    # @!attribute status
    #   <p>The attachment state.</p>
    #   @return [String]
    # @!attribute volume_id
    #   <p>The ID of the Amazon EBS volume.</p>
    #   @return [String]
    class EbsInstanceBlockDevice < Struct.new(
      :attach_time,
      :delete_on_termination,
      :status,
      :volume_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The summary of a task execution on a specified device.</p>
    # @!attribute task_id
    #   <p>The ID of the task.</p>
    #   @return [String]
    # @!attribute execution_id
    #   <p>The ID of the execution.</p>
    #   @return [String]
    # @!attribute managed_device_id
    #   <p>The ID of the managed device that the task is being executed on.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The state of the execution.</p>
    #   @return [String]
    class ExecutionSummary < Struct.new(
      :task_id,
      :execution_id,
      :managed_device_id,
      :state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The description of an
    #       instance.
    #       Currently, Amazon EC2 instances are the only supported instance type.</p>
    # @!attribute image_id
    #   <p>The ID of the AMI used to launch the instance.</p>
    #   @return [String]
    # @!attribute ami_launch_index
    #   <p>The Amazon Machine Image (AMI) launch index, which you can use to find this instance in
    #         the launch group. </p>
    #   @return [Integer]
    # @!attribute instance_id
    #   <p>The ID of the instance.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The description of the current state of an instance.</p>
    #   @return [Types::InstanceState]
    # @!attribute instance_type
    #   <p>The instance type.</p>
    #   @return [String]
    # @!attribute private_ip_address
    #   <p>The private IPv4 address assigned to the instance.</p>
    #   @return [String]
    # @!attribute public_ip_address
    #   <p>The public IPv4 address assigned to the instance.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>When the instance was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>When the instance was last updated.</p>
    #   @return [Time]
    # @!attribute block_device_mappings
    #   <p>Any block device mapping entries for the instance.</p>
    #   @return [Array<Types::InstanceBlockDeviceMapping>]
    # @!attribute security_groups
    #   <p>The security groups for the instance.</p>
    #   @return [Array<Types::SecurityGroupIdentifier>]
    # @!attribute cpu_options
    #   <p>The CPU options for the instance.</p>
    #   @return [Types::CpuOptions]
    # @!attribute root_device_name
    #   <p>The device name of the root device volume (for example, <code>/dev/sda1</code>). </p>
    #   @return [String]
    class Instance < Struct.new(
      :image_id,
      :ami_launch_index,
      :instance_id,
      :state,
      :instance_type,
      :private_ip_address,
      :public_ip_address,
      :created_at,
      :updated_at,
      :block_device_mappings,
      :security_groups,
      :cpu_options,
      :root_device_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The description of a block device mapping.</p>
    # @!attribute device_name
    #   <p>The block device name.</p>
    #   @return [String]
    # @!attribute ebs
    #   <p>The parameters used to automatically set up Amazon Elastic Block Store (Amazon EBS)
    #         volumes when the instance is launched. </p>
    #   @return [Types::EbsInstanceBlockDevice]
    class InstanceBlockDeviceMapping < Struct.new(
      :device_name,
      :ebs,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The description of the current state of an instance.</p>
    # @!attribute code
    #   <p>The state of the instance as a 16-bit unsigned integer. </p>
    #            <p>The high byte is all of the bits between 2^8 and (2^16)-1, which equals decimal values
    #         between 256 and 65,535. These numerical values are used for internal purposes and should be
    #         ignored. </p>
    #            <p>The low byte is all of the bits between 2^0 and (2^8)-1, which equals decimal values
    #         between 0 and 255. </p>
    #            <p>The valid values for the instance state code are all in the range of the low byte. These
    #         values are: </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>0</code> : <code>pending</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>16</code> : <code>running</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>32</code> : <code>shutting-down</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>48</code> : <code>terminated</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>64</code> : <code>stopping</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>80</code> : <code>stopped</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>You can ignore the high byte value by zeroing out all of the bits above 2^8 or 256 in
    #         decimal. </p>
    #   @return [Integer]
    # @!attribute name
    #   <p>The current
    #         state
    #         of the instance.</p>
    #   @return [String]
    class InstanceState < Struct.new(
      :code,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The details about the instance.</p>
    # @!attribute instance
    #   <p>A structure containing details about the instance.</p>
    #   @return [Types::Instance]
    # @!attribute last_updated_at
    #   <p>When the instance summary was last updated.</p>
    #   @return [Time]
    class InstanceSummary < Struct.new(
      :instance,
      :last_updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An unexpected error occurred while processing the request.</p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute managed_device_id
    #   <p>The ID of the managed device that you are listing the resources of.</p>
    #   @return [String]
    # @!attribute type
    #   <p>A structure used to filter the results by type of resource.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of resources per page.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A pagination token to continue to the next page of results.</p>
    #   @return [String]
    class ListDeviceResourcesOperationInput < Struct.new(
      :managed_device_id,
      :type,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resources
    #   <p>A structure defining the resource's type, Amazon Resource Name (ARN), and ID.</p>
    #   @return [Array<Types::ResourceSummary>]
    # @!attribute next_token
    #   <p>A pagination token to continue to the next page of results.</p>
    #   @return [String]
    class ListDeviceResourcesOperationOutput < Struct.new(
      :resources,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>The ID of the job used to order the device.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of devices to list per page.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A pagination token to continue to the next page of results.</p>
    #   @return [String]
    class ListDevicesOperationInput < Struct.new(
      :job_id,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute devices
    #   <p>A list of device structures that contain information about the device.</p>
    #   @return [Array<Types::DeviceSummary>]
    # @!attribute next_token
    #   <p>A pagination token to continue to the next page of devices.</p>
    #   @return [String]
    class ListDevicesOperationOutput < Struct.new(
      :devices,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute task_id
    #   <p>The ID of the task.</p>
    #   @return [String]
    # @!attribute state
    #   <p>A structure used to filter the tasks by their current state.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of tasks to list per page.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A pagination token to continue to the next page of tasks.</p>
    #   @return [String]
    class ListExecutionsOperationInput < Struct.new(
      :task_id,
      :state,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute executions
    #   <p>A list of executions. Each execution contains the task ID, the device that the task is
    #         executing on, the execution ID, and the status of the execution.</p>
    #   @return [Array<Types::ExecutionSummary>]
    # @!attribute next_token
    #   <p>A pagination token to continue to the next page of executions.</p>
    #   @return [String]
    class ListExecutionsOperationOutput < Struct.new(
      :executions,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the device or task.</p>
    #   @return [String]
    class ListTagsForResourceOperationInput < Struct.new(
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>The list of tags for the device or task.</p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceOperationOutput < Struct.new(
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute state
    #   <p>A structure used to filter the list of tasks.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of tasks per page.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A pagination token to continue to the next page of tasks.</p>
    #   @return [String]
    class ListTasksOperationInput < Struct.new(
      :state,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tasks
    #   <p>A list of task structures containing details about each task.</p>
    #   @return [Array<Types::TaskSummary>]
    # @!attribute next_token
    #   <p>A pagination token to continue to the next page of tasks.</p>
    #   @return [String]
    class ListTasksOperationOutput < Struct.new(
      :tasks,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The details about the physical network interface for the device.</p>
    # @!attribute physical_network_interface_id
    #   <p>The physical network interface ID.</p>
    #   @return [String]
    # @!attribute physical_connector_type
    #   <p>The
    #         physical
    #         connector type.</p>
    #   @return [String]
    # @!attribute ip_address_assignment
    #   <p>A value that describes whether the IP address is dynamic or persistent.</p>
    #   @return [String]
    # @!attribute ip_address
    #   <p>The IP address of the device.</p>
    #   @return [String]
    # @!attribute netmask
    #   <p>The netmask used to divide the IP address into subnets.</p>
    #   @return [String]
    # @!attribute default_gateway
    #   <p>The default gateway of the device.</p>
    #   @return [String]
    # @!attribute mac_address
    #   <p>The MAC address of the device.</p>
    #   @return [String]
    class PhysicalNetworkInterface < Struct.new(
      :physical_network_interface_id,
      :physical_connector_type,
      :ip_address_assignment,
      :ip_address,
      :netmask,
      :default_gateway,
      :mac_address,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A structure used to reboot the device.</p>
    class Reboot < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request references a resource that doesn't exist.</p>
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A summary of a resource available on the device.</p>
    # @!attribute resource_type
    #   <p>The resource type.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID of the resource.</p>
    #   @return [String]
    class ResourceSummary < Struct.new(
      :resource_type,
      :arn,
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the device's security group.</p>
    # @!attribute group_id
    #   <p>The security group ID.</p>
    #   @return [String]
    # @!attribute group_name
    #   <p>The security group name.</p>
    #   @return [String]
    class SecurityGroupIdentifier < Struct.new(
      :group_id,
      :group_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request would cause a service quota to be exceeded.</p>
    # @!attribute message
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the software on the device.</p>
    # @!attribute installed_version
    #   <p>The version of the software currently installed on the device.</p>
    #   @return [String]
    # @!attribute installing_version
    #   <p>The version of the software being installed on the device.</p>
    #   @return [String]
    # @!attribute install_state
    #   <p>The state of the software that is installed or that is being installed on the
    #         device.</p>
    #   @return [String]
    class SoftwareInformation < Struct.new(
      :installed_version,
      :installing_version,
      :install_state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the device or task.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Optional metadata that you assign to a resource. You can use tags to categorize a resource
    #         in different ways, such as by purpose, owner, or environment.</p>
    #   @return [Hash<String, String>]
    class TagResourceOperationInput < Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the task assigned to one or many devices.</p>
    # @!attribute task_id
    #   <p>The task ID.</p>
    #   @return [String]
    # @!attribute task_arn
    #   <p>The Amazon Resource Name (ARN) of the task.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The state of the task assigned to one or many devices.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Optional metadata that you assign to a resource. You can use tags to categorize a resource
    #         in different ways, such as by purpose, owner, or environment.</p>
    #   @return [Hash<String, String>]
    class TaskSummary < Struct.new(
      :task_id,
      :task_arn,
      :state,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request was denied due to request throttling.</p>
    # @!attribute message
    #   @return [String]
    class ThrottlingException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A structure used to unlock a device.</p>
    class Unlock < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the device or task.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>Optional metadata that you assign to a resource. You can use tags to categorize a resource
    #         in different ways, such as by purpose, owner, or environment.</p>
    #   @return [Array<String>]
    class UntagResourceOperationInput < Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input fails to satisfy the constraints specified by an Amazon Web Services service.</p>
    # @!attribute message
    #   @return [String]
    class ValidationException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
