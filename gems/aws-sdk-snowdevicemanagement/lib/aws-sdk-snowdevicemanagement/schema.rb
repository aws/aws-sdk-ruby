# frozen_string_literal: true

# This is generated code!

module Aws::SnowDeviceManagement
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowdevicemanagement#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AttachmentStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.snowdevicemanagement#AttachmentStatus', name: 'AttachmentStatus', traits: {"smithy.api#enum" => [{"value" => "ATTACHING", "name" => "ATTACHING"}, {"value" => "ATTACHED", "name" => "ATTACHED"}, {"value" => "DETACHING", "name" => "DETACHING"}, {"value" => "DETACHED", "name" => "DETACHED"}]})
    CancelTaskOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowdevicemanagement#CancelTaskOperationInput', name: 'CancelTaskOperationInput')
    CancelTaskOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowdevicemanagement#CancelTaskOperationOutput', name: 'CancelTaskOperationOutput')
    Capacity = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowdevicemanagement#Capacity', name: 'Capacity')
    CapacityList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.snowdevicemanagement#CapacityList', name: 'CapacityList', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    Command = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.snowdevicemanagement#Command', name: 'Command')
    CpuOptions = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowdevicemanagement#CpuOptions', name: 'CpuOptions')
    CreateTaskOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowdevicemanagement#CreateTaskOperationInput', name: 'CreateTaskOperationInput')
    CreateTaskOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowdevicemanagement#CreateTaskOperationOutput', name: 'CreateTaskOperationOutput')
    DescribeDeviceEc2InstancesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowdevicemanagement#DescribeDeviceEc2InstancesInput', name: 'DescribeDeviceEc2InstancesInput')
    DescribeDeviceEc2InstancesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowdevicemanagement#DescribeDeviceEc2InstancesOutput', name: 'DescribeDeviceEc2InstancesOutput')
    DescribeDeviceOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowdevicemanagement#DescribeDeviceOperationInput', name: 'DescribeDeviceOperationInput')
    DescribeDeviceOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowdevicemanagement#DescribeDeviceOperationOutput', name: 'DescribeDeviceOperationOutput')
    DescribeExecutionOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowdevicemanagement#DescribeExecutionOperationInput', name: 'DescribeExecutionOperationInput')
    DescribeExecutionOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowdevicemanagement#DescribeExecutionOperationOutput', name: 'DescribeExecutionOperationOutput')
    DescribeTaskOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowdevicemanagement#DescribeTaskOperationInput', name: 'DescribeTaskOperationInput')
    DescribeTaskOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowdevicemanagement#DescribeTaskOperationOutput', name: 'DescribeTaskOperationOutput')
    DeviceSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowdevicemanagement#DeviceSummary', name: 'DeviceSummary')
    DeviceSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.snowdevicemanagement#DeviceSummaryList', name: 'DeviceSummaryList')
    EbsInstanceBlockDevice = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowdevicemanagement#EbsInstanceBlockDevice', name: 'EbsInstanceBlockDevice')
    ExecutionId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.snowdevicemanagement#ExecutionId', name: 'ExecutionId', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    ExecutionState = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.snowdevicemanagement#ExecutionState', name: 'ExecutionState', traits: {"smithy.api#enum" => [{"value" => "QUEUED", "name" => "QUEUED"}, {"value" => "IN_PROGRESS", "name" => "IN_PROGRESS"}, {"value" => "CANCELED", "name" => "CANCELED"}, {"value" => "FAILED", "name" => "FAILED"}, {"value" => "SUCCEEDED", "name" => "SUCCEEDED"}, {"value" => "REJECTED", "name" => "REJECTED"}, {"value" => "TIMED_OUT", "name" => "TIMED_OUT"}]})
    ExecutionSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowdevicemanagement#ExecutionSummary', name: 'ExecutionSummary')
    ExecutionSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.snowdevicemanagement#ExecutionSummaryList', name: 'ExecutionSummaryList')
    IdempotencyToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.snowdevicemanagement#IdempotencyToken', name: 'IdempotencyToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "[!-~]+"})
    Instance = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowdevicemanagement#Instance', name: 'Instance')
    InstanceBlockDeviceMapping = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowdevicemanagement#InstanceBlockDeviceMapping', name: 'InstanceBlockDeviceMapping')
    InstanceBlockDeviceMappingList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.snowdevicemanagement#InstanceBlockDeviceMappingList', name: 'InstanceBlockDeviceMappingList')
    InstanceIdsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.snowdevicemanagement#InstanceIdsList', name: 'InstanceIdsList')
    InstanceState = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowdevicemanagement#InstanceState', name: 'InstanceState')
    InstanceStateName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.snowdevicemanagement#InstanceStateName', name: 'InstanceStateName', traits: {"smithy.api#enum" => [{"value" => "PENDING", "name" => "PENDING"}, {"value" => "RUNNING", "name" => "RUNNING"}, {"value" => "SHUTTING_DOWN", "name" => "SHUTTING_DOWN"}, {"value" => "TERMINATED", "name" => "TERMINATED"}, {"value" => "STOPPING", "name" => "STOPPING"}, {"value" => "STOPPED", "name" => "STOPPED"}]})
    InstanceSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowdevicemanagement#InstanceSummary', name: 'InstanceSummary')
    InstanceSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.snowdevicemanagement#InstanceSummaryList', name: 'InstanceSummaryList')
    InternalServerException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowdevicemanagement#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500, "smithy.api#retryable" => {}})
    IpAddressAssignment = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.snowdevicemanagement#IpAddressAssignment', name: 'IpAddressAssignment', traits: {"smithy.api#enum" => [{"value" => "DHCP", "name" => "DHCP"}, {"value" => "STATIC", "name" => "STATIC"}]})
    JobId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.snowdevicemanagement#JobId', name: 'JobId', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    ListDeviceResourcesOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowdevicemanagement#ListDeviceResourcesOperationInput', name: 'ListDeviceResourcesOperationInput')
    ListDeviceResourcesOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowdevicemanagement#ListDeviceResourcesOperationOutput', name: 'ListDeviceResourcesOperationOutput')
    ListDevicesOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowdevicemanagement#ListDevicesOperationInput', name: 'ListDevicesOperationInput')
    ListDevicesOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowdevicemanagement#ListDevicesOperationOutput', name: 'ListDevicesOperationOutput')
    ListExecutionsOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowdevicemanagement#ListExecutionsOperationInput', name: 'ListExecutionsOperationInput')
    ListExecutionsOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowdevicemanagement#ListExecutionsOperationOutput', name: 'ListExecutionsOperationOutput')
    ListTagsForResourceOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowdevicemanagement#ListTagsForResourceOperationInput', name: 'ListTagsForResourceOperationInput')
    ListTagsForResourceOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowdevicemanagement#ListTagsForResourceOperationOutput', name: 'ListTagsForResourceOperationOutput')
    ListTasksOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowdevicemanagement#ListTasksOperationInput', name: 'ListTasksOperationInput')
    ListTasksOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowdevicemanagement#ListTasksOperationOutput', name: 'ListTasksOperationOutput')
    ManagedDeviceId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.snowdevicemanagement#ManagedDeviceId', name: 'ManagedDeviceId', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    MaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.snowdevicemanagement#MaxResults', name: 'MaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    NextToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.snowdevicemanagement#NextToken', name: 'NextToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "[a-zA-Z0-9+/=]*"})
    PhysicalConnectorType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.snowdevicemanagement#PhysicalConnectorType', name: 'PhysicalConnectorType', traits: {"smithy.api#enum" => [{"value" => "RJ45", "name" => "RJ45"}, {"value" => "SFP_PLUS", "name" => "SFP_PLUS"}, {"value" => "QSFP", "name" => "QSFP"}, {"value" => "RJ45_2", "name" => "RJ45_2"}, {"value" => "WIFI", "name" => "WIFI"}]})
    PhysicalNetworkInterface = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowdevicemanagement#PhysicalNetworkInterface', name: 'PhysicalNetworkInterface')
    PhysicalNetworkInterfaceList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.snowdevicemanagement#PhysicalNetworkInterfaceList', name: 'PhysicalNetworkInterfaceList')
    Reboot = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowdevicemanagement#Reboot', name: 'Reboot')
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowdevicemanagement#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowdevicemanagement#ResourceSummary', name: 'ResourceSummary')
    ResourceSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.snowdevicemanagement#ResourceSummaryList', name: 'ResourceSummaryList')
    SecurityGroupIdentifier = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowdevicemanagement#SecurityGroupIdentifier', name: 'SecurityGroupIdentifier')
    SecurityGroupIdentifierList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.snowdevicemanagement#SecurityGroupIdentifierList', name: 'SecurityGroupIdentifierList')
    ServiceQuotaExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowdevicemanagement#ServiceQuotaExceededException', name: 'ServiceQuotaExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    SoftwareInformation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowdevicemanagement#SoftwareInformation', name: 'SoftwareInformation')
    TagKeys = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.snowdevicemanagement#TagKeys', name: 'TagKeys')
    TagMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.snowdevicemanagement#TagMap', name: 'TagMap')
    TagResourceOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowdevicemanagement#TagResourceOperationInput', name: 'TagResourceOperationInput')
    TargetList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.snowdevicemanagement#TargetList', name: 'TargetList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    TaskDescriptionString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.snowdevicemanagement#TaskDescriptionString', name: 'TaskDescriptionString', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "[A-Za-z0-9 _.,!#]*"})
    TaskId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.snowdevicemanagement#TaskId', name: 'TaskId', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    TaskState = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.snowdevicemanagement#TaskState', name: 'TaskState', traits: {"smithy.api#enum" => [{"value" => "IN_PROGRESS", "name" => "IN_PROGRESS"}, {"value" => "CANCELED", "name" => "CANCELED"}, {"value" => "COMPLETED", "name" => "COMPLETED"}]})
    TaskSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowdevicemanagement#TaskSummary', name: 'TaskSummary')
    TaskSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.snowdevicemanagement#TaskSummaryList', name: 'TaskSummaryList')
    ThrottlingException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowdevicemanagement#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429, "smithy.api#retryable" => {"throttling" => true}})
    Unlock = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowdevicemanagement#Unlock', name: 'Unlock')
    UnlockState = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.snowdevicemanagement#UnlockState', name: 'UnlockState', traits: {"smithy.api#enum" => [{"value" => "UNLOCKED", "name" => "UNLOCKED"}, {"value" => "LOCKED", "name" => "LOCKED"}, {"value" => "UNLOCKING", "name" => "UNLOCKING"}]})
    UntagResourceOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowdevicemanagement#UntagResourceOperationInput', name: 'UntagResourceOperationInput')
    ValidationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.snowdevicemanagement#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})

    AccessDeniedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    CancelTaskOperationInput.add_member(:task_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TaskId, location_name: 'taskId', traits: {"smithy.api#documentation" => "<p>The ID of the task that you are attempting to cancel. You can retrieve a task ID by using\n      the <code>ListTasks</code> operation.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CancelTaskOperationInput.type = Types::CancelTaskOperationInput
    CancelTaskOperationOutput.add_member(:task_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'taskId', traits: {"smithy.api#documentation" => "<p>The ID of the task that you are attempting to cancel.</p>"}))
    CancelTaskOperationOutput.type = Types::CancelTaskOperationOutput
    Capacity.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the type of capacity, such as memory.</p>", "smithy.api#length" => {"min" => 0, "max" => 100}}))
    Capacity.add_member(:unit, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'unit', traits: {"smithy.api#documentation" => "<p>The unit of measure for the type of capacity.</p>", "smithy.api#length" => {"min" => 0, "max" => 20}}))
    Capacity.add_member(:total, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Long, location_name: 'total', traits: {"smithy.api#documentation" => "<p>The total capacity on the device.</p>"}))
    Capacity.add_member(:used, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Long, location_name: 'used', traits: {"smithy.api#documentation" => "<p>The amount of capacity used on the device.</p>"}))
    Capacity.add_member(:available, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Long, location_name: 'available', traits: {"smithy.api#documentation" => "<p>The amount of capacity available for use on the device.</p>"}))
    Capacity.type = Types::Capacity
    CapacityList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Capacity)
    Command.add_member(:unlock, Types::Command::Unlock, Smithy::Schema::Shapes::ShapeRef.new(shape: Unlock, location_name: 'unlock', traits: {"smithy.api#documentation" => "<p>Unlocks the device.</p>"}))
    Command.add_member(:reboot, Types::Command::Reboot, Smithy::Schema::Shapes::ShapeRef.new(shape: Reboot, location_name: 'reboot', traits: {"smithy.api#documentation" => "<p>Reboots the device.</p>"}))
    Command.add_member(:unknown, Types::Command::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    Command.type = Types::Command
    CpuOptions.add_member(:core_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'coreCount', traits: {"smithy.api#documentation" => "<p>The number of cores that the CPU can use.</p>"}))
    CpuOptions.add_member(:threads_per_core, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'threadsPerCore', traits: {"smithy.api#documentation" => "<p>The number of threads per core in the CPU.</p>"}))
    CpuOptions.type = Types::CpuOptions
    CreateTaskOperationInput.add_member(:targets, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetList, location_name: 'targets', traits: {"smithy.api#documentation" => "<p>A list of managed device IDs.</p>", "smithy.api#required" => {}}))
    CreateTaskOperationInput.add_member(:command, Smithy::Schema::Shapes::ShapeRef.new(shape: Command, location_name: 'command', traits: {"smithy.api#documentation" => "<p>The task to be performed. Only one task is executed on a device at a time.</p>", "smithy.api#required" => {}}))
    CreateTaskOperationInput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: TaskDescriptionString, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description of the task and its targets.</p>"}))
    CreateTaskOperationInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Optional metadata that you assign to a resource. You can use tags to categorize a resource\n      in different ways, such as by purpose, owner, or environment. </p>"}))
    CreateTaskOperationInput.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A token ensuring that the action is called only once with the specified details.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateTaskOperationInput.type = Types::CreateTaskOperationInput
    CreateTaskOperationOutput.add_member(:task_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'taskId', traits: {"smithy.api#documentation" => "<p>The ID of the task that you created.</p>"}))
    CreateTaskOperationOutput.add_member(:task_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'taskArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the task that you created.</p>"}))
    CreateTaskOperationOutput.type = Types::CreateTaskOperationOutput
    DescribeDeviceEc2InstancesInput.add_member(:managed_device_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedDeviceId, location_name: 'managedDeviceId', traits: {"smithy.api#documentation" => "<p>The ID of the managed device.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeDeviceEc2InstancesInput.add_member(:instance_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceIdsList, location_name: 'instanceIds', traits: {"smithy.api#documentation" => "<p>A list of instance IDs associated with the managed device.</p>", "smithy.api#required" => {}}))
    DescribeDeviceEc2InstancesInput.type = Types::DescribeDeviceEc2InstancesInput
    DescribeDeviceEc2InstancesOutput.add_member(:instances, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceSummaryList, location_name: 'instances', traits: {"smithy.api#documentation" => "<p>A list of structures containing information about each instance. </p>"}))
    DescribeDeviceEc2InstancesOutput.type = Types::DescribeDeviceEc2InstancesOutput
    DescribeDeviceOperationInput.add_member(:managed_device_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedDeviceId, location_name: 'managedDeviceId', traits: {"smithy.api#documentation" => "<p>The ID of the device that you are checking the information of.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeDeviceOperationInput.type = Types::DescribeDeviceOperationInput
    DescribeDeviceOperationOutput.add_member(:last_reached_out_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastReachedOutAt', traits: {"smithy.api#documentation" => "<p>When the device last contacted the Amazon Web Services Cloud. Indicates that the device is\n      online.</p>"}))
    DescribeDeviceOperationOutput.add_member(:last_updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastUpdatedAt', traits: {"smithy.api#documentation" => "<p>When the device last pushed an update to the Amazon Web Services Cloud. Indicates when the device cache\n      was refreshed.</p>"}))
    DescribeDeviceOperationOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Optional metadata that you assign to a resource. You can use tags to categorize a resource\n      in different ways, such as by purpose, owner, or environment. </p>"}))
    DescribeDeviceOperationOutput.add_member(:managed_device_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedDeviceId, location_name: 'managedDeviceId', traits: {"smithy.api#documentation" => "<p>The ID of the device that you checked the information for.</p>"}))
    DescribeDeviceOperationOutput.add_member(:managed_device_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'managedDeviceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the device.</p>"}))
    DescribeDeviceOperationOutput.add_member(:device_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'deviceType', traits: {"smithy.api#documentation" => "<p>The type of Amazon Web Services Snow Family device.</p>"}))
    DescribeDeviceOperationOutput.add_member(:associated_with_job, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'associatedWithJob', traits: {"smithy.api#documentation" => "<p>The ID of the job used when ordering the device.</p>"}))
    DescribeDeviceOperationOutput.add_member(:device_state, Smithy::Schema::Shapes::ShapeRef.new(shape: UnlockState, location_name: 'deviceState', traits: {"smithy.api#documentation" => "<p>The current state of the device.</p>"}))
    DescribeDeviceOperationOutput.add_member(:physical_network_interfaces, Smithy::Schema::Shapes::ShapeRef.new(shape: PhysicalNetworkInterfaceList, location_name: 'physicalNetworkInterfaces', traits: {"smithy.api#documentation" => "<p>The network interfaces available on the device.</p>"}))
    DescribeDeviceOperationOutput.add_member(:device_capacities, Smithy::Schema::Shapes::ShapeRef.new(shape: CapacityList, location_name: 'deviceCapacities', traits: {"smithy.api#documentation" => "<p>The hardware specifications of the device. </p>"}))
    DescribeDeviceOperationOutput.add_member(:software, Smithy::Schema::Shapes::ShapeRef.new(shape: SoftwareInformation, location_name: 'software', traits: {"smithy.api#documentation" => "<p>The software installed on the device.</p>"}))
    DescribeDeviceOperationOutput.type = Types::DescribeDeviceOperationOutput
    DescribeExecutionOperationInput.add_member(:task_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TaskId, location_name: 'taskId', traits: {"smithy.api#documentation" => "<p>The ID of the task that the action is describing.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeExecutionOperationInput.add_member(:managed_device_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedDeviceId, location_name: 'managedDeviceId', traits: {"smithy.api#documentation" => "<p>The ID of the managed device.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeExecutionOperationInput.type = Types::DescribeExecutionOperationInput
    DescribeExecutionOperationOutput.add_member(:task_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TaskId, location_name: 'taskId', traits: {"smithy.api#documentation" => "<p>The ID of the task being executed on the device.</p>"}))
    DescribeExecutionOperationOutput.add_member(:execution_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionId, location_name: 'executionId', traits: {"smithy.api#documentation" => "<p>The ID of the execution.</p>"}))
    DescribeExecutionOperationOutput.add_member(:managed_device_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedDeviceId, location_name: 'managedDeviceId', traits: {"smithy.api#documentation" => "<p>The ID of the managed device that the task is being executed on.</p>"}))
    DescribeExecutionOperationOutput.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionState, location_name: 'state', traits: {"smithy.api#documentation" => "<p>The current state of the execution.</p>"}))
    DescribeExecutionOperationOutput.add_member(:started_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'startedAt', traits: {"smithy.api#documentation" => "<p>When the execution began.</p>"}))
    DescribeExecutionOperationOutput.add_member(:last_updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastUpdatedAt', traits: {"smithy.api#documentation" => "<p>When the status of the execution was last updated.</p>"}))
    DescribeExecutionOperationOutput.type = Types::DescribeExecutionOperationOutput
    DescribeTaskOperationInput.add_member(:task_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TaskId, location_name: 'taskId', traits: {"smithy.api#documentation" => "<p>The ID of the task to be described.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeTaskOperationInput.type = Types::DescribeTaskOperationInput
    DescribeTaskOperationOutput.add_member(:task_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'taskId', traits: {"smithy.api#documentation" => "<p>The ID of the task.</p>"}))
    DescribeTaskOperationOutput.add_member(:task_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'taskArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the task.</p>"}))
    DescribeTaskOperationOutput.add_member(:targets, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetList, location_name: 'targets', traits: {"smithy.api#documentation" => "<p>The managed devices that the task was sent to.</p>"}))
    DescribeTaskOperationOutput.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: TaskState, location_name: 'state', traits: {"smithy.api#documentation" => "<p>The current state of the task.</p>"}))
    DescribeTaskOperationOutput.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>When the <code>CreateTask</code> operation was called.</p>"}))
    DescribeTaskOperationOutput.add_member(:last_updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastUpdatedAt', traits: {"smithy.api#documentation" => "<p>When the state of the task was last updated.</p>"}))
    DescribeTaskOperationOutput.add_member(:completed_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'completedAt', traits: {"smithy.api#documentation" => "<p>When the task was completed.</p>"}))
    DescribeTaskOperationOutput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: TaskDescriptionString, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description provided of the task and managed devices.</p>"}))
    DescribeTaskOperationOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Optional metadata that you assign to a resource. You can use tags to categorize a resource\n      in different ways, such as by purpose, owner, or environment.</p>"}))
    DescribeTaskOperationOutput.type = Types::DescribeTaskOperationOutput
    DeviceSummary.add_member(:managed_device_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedDeviceId, location_name: 'managedDeviceId', traits: {"smithy.api#documentation" => "<p>The ID of the device.</p>"}))
    DeviceSummary.add_member(:managed_device_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'managedDeviceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the device.</p>"}))
    DeviceSummary.add_member(:associated_with_job, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'associatedWithJob', traits: {"smithy.api#documentation" => "<p>The ID of the job used to order the device.</p>"}))
    DeviceSummary.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Optional metadata that you assign to a resource. You can use tags to categorize a resource\n      in different ways, such as by purpose, owner, or environment.</p>"}))
    DeviceSummary.type = Types::DeviceSummary
    DeviceSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceSummary)
    EbsInstanceBlockDevice.add_member(:attach_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'attachTime', traits: {"smithy.api#documentation" => "<p>When the attachment was initiated.</p>"}))
    EbsInstanceBlockDevice.add_member(:delete_on_termination, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'deleteOnTermination', traits: {"smithy.api#documentation" => "<p>A value that indicates whether the volume is deleted on instance termination.</p>"}))
    EbsInstanceBlockDevice.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: AttachmentStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The attachment state.</p>"}))
    EbsInstanceBlockDevice.add_member(:volume_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'volumeId', traits: {"smithy.api#documentation" => "<p>The ID of the Amazon EBS volume.</p>"}))
    EbsInstanceBlockDevice.type = Types::EbsInstanceBlockDevice
    ExecutionSummary.add_member(:task_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TaskId, location_name: 'taskId', traits: {"smithy.api#documentation" => "<p>The ID of the task.</p>"}))
    ExecutionSummary.add_member(:execution_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionId, location_name: 'executionId', traits: {"smithy.api#documentation" => "<p>The ID of the execution.</p>"}))
    ExecutionSummary.add_member(:managed_device_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedDeviceId, location_name: 'managedDeviceId', traits: {"smithy.api#documentation" => "<p>The ID of the managed device that the task is being executed on.</p>"}))
    ExecutionSummary.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionState, location_name: 'state', traits: {"smithy.api#documentation" => "<p>The state of the execution.</p>"}))
    ExecutionSummary.type = Types::ExecutionSummary
    ExecutionSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionSummary)
    Instance.add_member(:image_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'imageId', traits: {"smithy.api#documentation" => "<p>The ID of the AMI used to launch the instance.</p>"}))
    Instance.add_member(:ami_launch_index, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'amiLaunchIndex', traits: {"smithy.api#documentation" => "<p>The Amazon Machine Image (AMI) launch index, which you can use to find this instance in\n      the launch group. </p>"}))
    Instance.add_member(:instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'instanceId', traits: {"smithy.api#documentation" => "<p>The ID of the instance.</p>"}))
    Instance.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceState, location_name: 'state'))
    Instance.add_member(:instance_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'instanceType', traits: {"smithy.api#documentation" => "<p>The instance type.</p>"}))
    Instance.add_member(:private_ip_address, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'privateIpAddress', traits: {"smithy.api#documentation" => "<p>The private IPv4 address assigned to the instance.</p>"}))
    Instance.add_member(:public_ip_address, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'publicIpAddress', traits: {"smithy.api#documentation" => "<p>The public IPv4 address assigned to the instance.</p>"}))
    Instance.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>When the instance was created.</p>"}))
    Instance.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'updatedAt', traits: {"smithy.api#documentation" => "<p>When the instance was last updated.</p>"}))
    Instance.add_member(:block_device_mappings, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceBlockDeviceMappingList, location_name: 'blockDeviceMappings', traits: {"smithy.api#documentation" => "<p>Any block device mapping entries for the instance.</p>"}))
    Instance.add_member(:security_groups, Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupIdentifierList, location_name: 'securityGroups', traits: {"smithy.api#documentation" => "<p>The security groups for the instance.</p>"}))
    Instance.add_member(:cpu_options, Smithy::Schema::Shapes::ShapeRef.new(shape: CpuOptions, location_name: 'cpuOptions', traits: {"smithy.api#documentation" => "<p>The CPU options for the instance.</p>"}))
    Instance.add_member(:root_device_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'rootDeviceName', traits: {"smithy.api#documentation" => "<p>The device name of the root device volume (for example, <code>/dev/sda1</code>). </p>"}))
    Instance.type = Types::Instance
    InstanceBlockDeviceMapping.add_member(:device_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'deviceName', traits: {"smithy.api#documentation" => "<p>The block device name.</p>"}))
    InstanceBlockDeviceMapping.add_member(:ebs, Smithy::Schema::Shapes::ShapeRef.new(shape: EbsInstanceBlockDevice, location_name: 'ebs', traits: {"smithy.api#documentation" => "<p>The parameters used to automatically set up Amazon Elastic Block Store (Amazon EBS)\n      volumes when the instance is launched. </p>"}))
    InstanceBlockDeviceMapping.type = Types::InstanceBlockDeviceMapping
    InstanceBlockDeviceMappingList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceBlockDeviceMapping)
    InstanceIdsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String)
    InstanceState.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'code', traits: {"smithy.api#documentation" => "<p>The state of the instance as a 16-bit unsigned integer. </p>\n         <p>The high byte is all of the bits between 2^8 and (2^16)-1, which equals decimal values\n      between 256 and 65,535. These numerical values are used for internal purposes and should be\n      ignored. </p>\n         <p>The low byte is all of the bits between 2^0 and (2^8)-1, which equals decimal values\n      between 0 and 255. </p>\n         <p>The valid values for the instance state code are all in the range of the low byte. These\n      values are: </p>\n         <ul>\n            <li>\n               <p>\n                  <code>0</code> : <code>pending</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>16</code> : <code>running</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>32</code> : <code>shutting-down</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>48</code> : <code>terminated</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>64</code> : <code>stopping</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>80</code> : <code>stopped</code>\n               </p>\n            </li>\n         </ul>\n         <p>You can ignore the high byte value by zeroing out all of the bits above 2^8 or 256 in\n      decimal. </p>"}))
    InstanceState.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceStateName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The current\n      state\n      of the instance.</p>"}))
    InstanceState.type = Types::InstanceState
    InstanceSummary.add_member(:instance, Smithy::Schema::Shapes::ShapeRef.new(shape: Instance, location_name: 'instance', traits: {"smithy.api#documentation" => "<p>A structure containing details about the instance.</p>"}))
    InstanceSummary.add_member(:last_updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastUpdatedAt', traits: {"smithy.api#documentation" => "<p>When the instance summary was last updated.</p>"}))
    InstanceSummary.type = Types::InstanceSummary
    InstanceSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceSummary)
    InternalServerException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    InternalServerException.type = Types::InternalServerException
    ListDeviceResourcesOperationInput.add_member(:managed_device_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedDeviceId, location_name: 'managedDeviceId', traits: {"smithy.api#documentation" => "<p>The ID of the managed device that you are listing the resources of.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListDeviceResourcesOperationInput.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'type', traits: {"smithy.api#documentation" => "<p>A structure used to filter the results by type of resource.</p>", "smithy.api#httpQuery" => "type", "smithy.api#length" => {"min" => 1, "max" => 50}}))
    ListDeviceResourcesOperationInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of resources per page.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListDeviceResourcesOperationInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A pagination token to continue to the next page of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListDeviceResourcesOperationInput.type = Types::ListDeviceResourcesOperationInput
    ListDeviceResourcesOperationOutput.add_member(:resources, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceSummaryList, location_name: 'resources', traits: {"smithy.api#documentation" => "<p>A structure defining the resource's type, Amazon Resource Name (ARN), and ID.</p>"}))
    ListDeviceResourcesOperationOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A pagination token to continue to the next page of results.</p>"}))
    ListDeviceResourcesOperationOutput.type = Types::ListDeviceResourcesOperationOutput
    ListDevicesOperationInput.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'jobId', traits: {"smithy.api#documentation" => "<p>The ID of the job used to order the device.</p>", "smithy.api#httpQuery" => "jobId"}))
    ListDevicesOperationInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of devices to list per page.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListDevicesOperationInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A pagination token to continue to the next page of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListDevicesOperationInput.type = Types::ListDevicesOperationInput
    ListDevicesOperationOutput.add_member(:devices, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceSummaryList, location_name: 'devices', traits: {"smithy.api#documentation" => "<p>A list of device structures that contain information about the device.</p>"}))
    ListDevicesOperationOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A pagination token to continue to the next page of devices.</p>"}))
    ListDevicesOperationOutput.type = Types::ListDevicesOperationOutput
    ListExecutionsOperationInput.add_member(:task_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TaskId, location_name: 'taskId', traits: {"smithy.api#documentation" => "<p>The ID of the task.</p>", "smithy.api#httpQuery" => "taskId", "smithy.api#required" => {}}))
    ListExecutionsOperationInput.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionState, location_name: 'state', traits: {"smithy.api#documentation" => "<p>A structure used to filter the tasks by their current state.</p>", "smithy.api#httpQuery" => "state"}))
    ListExecutionsOperationInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of tasks to list per page.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListExecutionsOperationInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A pagination token to continue to the next page of tasks.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListExecutionsOperationInput.type = Types::ListExecutionsOperationInput
    ListExecutionsOperationOutput.add_member(:executions, Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionSummaryList, location_name: 'executions', traits: {"smithy.api#documentation" => "<p>A list of executions. Each execution contains the task ID, the device that the task is\n      executing on, the execution ID, and the status of the execution.</p>"}))
    ListExecutionsOperationOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A pagination token to continue to the next page of executions.</p>"}))
    ListExecutionsOperationOutput.type = Types::ListExecutionsOperationOutput
    ListTagsForResourceOperationInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the device or task.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceOperationInput.type = Types::ListTagsForResourceOperationInput
    ListTagsForResourceOperationOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The list of tags for the device or task.</p>"}))
    ListTagsForResourceOperationOutput.type = Types::ListTagsForResourceOperationOutput
    ListTasksOperationInput.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: TaskState, location_name: 'state', traits: {"smithy.api#documentation" => "<p>A structure used to filter the list of tasks.</p>", "smithy.api#httpQuery" => "state"}))
    ListTasksOperationInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of tasks per page.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListTasksOperationInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A pagination token to continue to the next page of tasks.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListTasksOperationInput.type = Types::ListTasksOperationInput
    ListTasksOperationOutput.add_member(:tasks, Smithy::Schema::Shapes::ShapeRef.new(shape: TaskSummaryList, location_name: 'tasks', traits: {"smithy.api#documentation" => "<p>A list of task structures containing details about each task.</p>"}))
    ListTasksOperationOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A pagination token to continue to the next page of tasks.</p>"}))
    ListTasksOperationOutput.type = Types::ListTasksOperationOutput
    PhysicalNetworkInterface.add_member(:physical_network_interface_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'physicalNetworkInterfaceId', traits: {"smithy.api#documentation" => "<p>The physical network interface ID.</p>"}))
    PhysicalNetworkInterface.add_member(:physical_connector_type, Smithy::Schema::Shapes::ShapeRef.new(shape: PhysicalConnectorType, location_name: 'physicalConnectorType', traits: {"smithy.api#documentation" => "<p>The\n      physical\n      connector type.</p>"}))
    PhysicalNetworkInterface.add_member(:ip_address_assignment, Smithy::Schema::Shapes::ShapeRef.new(shape: IpAddressAssignment, location_name: 'ipAddressAssignment', traits: {"smithy.api#documentation" => "<p>A value that describes whether the IP address is dynamic or persistent.</p>"}))
    PhysicalNetworkInterface.add_member(:ip_address, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'ipAddress', traits: {"smithy.api#documentation" => "<p>The IP address of the device.</p>"}))
    PhysicalNetworkInterface.add_member(:netmask, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'netmask', traits: {"smithy.api#documentation" => "<p>The netmask used to divide the IP address into subnets.</p>"}))
    PhysicalNetworkInterface.add_member(:default_gateway, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'defaultGateway', traits: {"smithy.api#documentation" => "<p>The default gateway of the device.</p>"}))
    PhysicalNetworkInterface.add_member(:mac_address, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'macAddress', traits: {"smithy.api#documentation" => "<p>The MAC address of the device.</p>"}))
    PhysicalNetworkInterface.type = Types::PhysicalNetworkInterface
    PhysicalNetworkInterfaceList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PhysicalNetworkInterface)
    Reboot.type = Types::Reboot
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceSummary.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceType', traits: {"smithy.api#documentation" => "<p>The resource type.</p>", "smithy.api#required" => {}}))
    ResourceSummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource.</p>"}))
    ResourceSummary.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the resource.</p>"}))
    ResourceSummary.type = Types::ResourceSummary
    ResourceSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceSummary)
    SecurityGroupIdentifier.add_member(:group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'groupId', traits: {"smithy.api#documentation" => "<p>The security group ID.</p>"}))
    SecurityGroupIdentifier.add_member(:group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'groupName', traits: {"smithy.api#documentation" => "<p>The security group name.</p>"}))
    SecurityGroupIdentifier.type = Types::SecurityGroupIdentifier
    SecurityGroupIdentifierList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupIdentifier)
    ServiceQuotaExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    SoftwareInformation.add_member(:installed_version, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'installedVersion', traits: {"smithy.api#documentation" => "<p>The version of the software currently installed on the device.</p>"}))
    SoftwareInformation.add_member(:installing_version, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'installingVersion', traits: {"smithy.api#documentation" => "<p>The version of the software being installed on the device.</p>"}))
    SoftwareInformation.add_member(:install_state, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'installState', traits: {"smithy.api#documentation" => "<p>The state of the software that is installed or that is being installed on the\n      device.</p>"}))
    SoftwareInformation.type = Types::SoftwareInformation
    TagKeys.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String)
    TagMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String)
    TagMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String)
    TagResourceOperationInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the device or task.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceOperationInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Optional metadata that you assign to a resource. You can use tags to categorize a resource\n      in different ways, such as by purpose, owner, or environment.</p>", "smithy.api#required" => {}}))
    TagResourceOperationInput.type = Types::TagResourceOperationInput
    TargetList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String)
    TaskSummary.add_member(:task_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TaskId, location_name: 'taskId', traits: {"smithy.api#documentation" => "<p>The task ID.</p>", "smithy.api#required" => {}}))
    TaskSummary.add_member(:task_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'taskArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the task.</p>"}))
    TaskSummary.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: TaskState, location_name: 'state', traits: {"smithy.api#documentation" => "<p>The state of the task assigned to one or many devices.</p>"}))
    TaskSummary.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Optional metadata that you assign to a resource. You can use tags to categorize a resource\n      in different ways, such as by purpose, owner, or environment.</p>"}))
    TaskSummary.type = Types::TaskSummary
    TaskSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TaskSummary)
    ThrottlingException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ThrottlingException.type = Types::ThrottlingException
    Unlock.type = Types::Unlock
    UntagResourceOperationInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the device or task.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceOperationInput.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeys, location_name: 'tagKeys', traits: {"smithy.api#documentation" => "<p>Optional metadata that you assign to a resource. You can use tags to categorize a resource\n      in different ways, such as by purpose, owner, or environment.</p>", "smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceOperationInput.type = Types::UntagResourceOperationInput
    ValidationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ValidationException.type = Types::ValidationException

    SnowDeviceManagement = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.snowdevicemanagement#SnowDeviceManagement"
      service.name = "SnowDeviceManagement"
      service.version = "2021-08-04"
      service.traits = {"aws.api#service" => {"arnNamespace" => "snow-device-management", "sdkId" => "Snow Device Management"}, "aws.auth#sigv4" => {"name" => "snow-device-management"}, "aws.protocols#restJson1" => {}, "smithy.api#cors" => {}, "smithy.api#title" => "AWS Snow Device Management"}
      service.add_operation(:cancel_task, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.snowdevicemanagement#CancelTask"
        operation.name = "CancelTask"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CancelTaskOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CancelTaskOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/task/{taskId}/cancel"}}
      end)
      service.add_operation(:create_task, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.snowdevicemanagement#CreateTask"
        operation.name = "CreateTask"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTaskOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTaskOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/task"}}
      end)
      service.add_operation(:describe_device, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.snowdevicemanagement#DescribeDevice"
        operation.name = "DescribeDevice"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDeviceOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDeviceOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/managed-device/{managedDeviceId}/describe"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:describe_device_ec2_instances, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.snowdevicemanagement#DescribeDeviceEc2Instances"
        operation.name = "DescribeDeviceEc2Instances"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDeviceEc2InstancesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDeviceEc2InstancesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/managed-device/{managedDeviceId}/resources/ec2/describe"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:describe_execution, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.snowdevicemanagement#DescribeExecution"
        operation.name = "DescribeExecution"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeExecutionOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeExecutionOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/task/{taskId}/execution/{managedDeviceId}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:describe_task, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.snowdevicemanagement#DescribeTask"
        operation.name = "DescribeTask"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeTaskOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeTaskOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/task/{taskId}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_device_resources, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.snowdevicemanagement#ListDeviceResources"
        operation.name = "ListDeviceResources"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDeviceResourcesOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDeviceResourcesOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/managed-device/{managedDeviceId}/resources"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListDeviceResources.new
      end)
      service.add_operation(:list_devices, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.snowdevicemanagement#ListDevices"
        operation.name = "ListDevices"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDevicesOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDevicesOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/managed-devices"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListDevices.new
      end)
      service.add_operation(:list_executions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.snowdevicemanagement#ListExecutions"
        operation.name = "ListExecutions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListExecutionsOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListExecutionsOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/executions"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListExecutions.new
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.snowdevicemanagement#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags/{resourceArn}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_tasks, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.snowdevicemanagement#ListTasks"
        operation.name = "ListTasks"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTasksOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTasksOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/tasks"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListTasks.new
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.snowdevicemanagement#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags/{resourceArn}"}}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.snowdevicemanagement#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{resourceArn}"}, "smithy.api#idempotent" => {}}
      end)

    end

    class << self
      def type_registry
        return @type_registry if @type_registry

        shapes = constants.map { |sym| const_get(sym) }.select { |const| const.is_a?(Smithy::Schema::Shapes::StructureShape) }
        @type_registry = Smithy::Schema::TypeRegistry.new(shapes)
      end
    end
  end
end
