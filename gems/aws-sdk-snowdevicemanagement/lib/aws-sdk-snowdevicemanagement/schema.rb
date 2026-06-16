# frozen_string_literal: true

# This is generated code!

module Aws::SnowDeviceManagement
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowdevicemanagement#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AttachmentStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.snowdevicemanagement#AttachmentStatus", name: "AttachmentStatus", traits: {"smithy.api#enum" => [{"value" => "ATTACHING", "name" => "ATTACHING"}, {"value" => "ATTACHED", "name" => "ATTACHED"}, {"value" => "DETACHING", "name" => "DETACHING"}, {"value" => "DETACHED", "name" => "DETACHED"}]})
    CancelTaskOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowdevicemanagement#CancelTaskOperationInput", name: "CancelTaskOperationInput")
    CancelTaskOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowdevicemanagement#CancelTaskOperationOutput", name: "CancelTaskOperationOutput")
    Capacity = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowdevicemanagement#Capacity", name: "Capacity")
    CapacityList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.snowdevicemanagement#CapacityList", name: "CapacityList", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    Command = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.snowdevicemanagement#Command", name: "Command")
    CpuOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowdevicemanagement#CpuOptions", name: "CpuOptions")
    CreateTaskOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowdevicemanagement#CreateTaskOperationInput", name: "CreateTaskOperationInput")
    CreateTaskOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowdevicemanagement#CreateTaskOperationOutput", name: "CreateTaskOperationOutput")
    DescribeDeviceEc2InstancesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowdevicemanagement#DescribeDeviceEc2InstancesInput", name: "DescribeDeviceEc2InstancesInput")
    DescribeDeviceEc2InstancesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowdevicemanagement#DescribeDeviceEc2InstancesOutput", name: "DescribeDeviceEc2InstancesOutput")
    DescribeDeviceOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowdevicemanagement#DescribeDeviceOperationInput", name: "DescribeDeviceOperationInput")
    DescribeDeviceOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowdevicemanagement#DescribeDeviceOperationOutput", name: "DescribeDeviceOperationOutput")
    DescribeExecutionOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowdevicemanagement#DescribeExecutionOperationInput", name: "DescribeExecutionOperationInput")
    DescribeExecutionOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowdevicemanagement#DescribeExecutionOperationOutput", name: "DescribeExecutionOperationOutput")
    DescribeTaskOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowdevicemanagement#DescribeTaskOperationInput", name: "DescribeTaskOperationInput")
    DescribeTaskOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowdevicemanagement#DescribeTaskOperationOutput", name: "DescribeTaskOperationOutput")
    DeviceSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowdevicemanagement#DeviceSummary", name: "DeviceSummary")
    DeviceSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.snowdevicemanagement#DeviceSummaryList", name: "DeviceSummaryList")
    EbsInstanceBlockDevice = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowdevicemanagement#EbsInstanceBlockDevice", name: "EbsInstanceBlockDevice")
    ExecutionId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.snowdevicemanagement#ExecutionId", name: "ExecutionId", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    ExecutionState = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.snowdevicemanagement#ExecutionState", name: "ExecutionState", traits: {"smithy.api#enum" => [{"value" => "QUEUED", "name" => "QUEUED"}, {"value" => "IN_PROGRESS", "name" => "IN_PROGRESS"}, {"value" => "CANCELED", "name" => "CANCELED"}, {"value" => "FAILED", "name" => "FAILED"}, {"value" => "SUCCEEDED", "name" => "SUCCEEDED"}, {"value" => "REJECTED", "name" => "REJECTED"}, {"value" => "TIMED_OUT", "name" => "TIMED_OUT"}]})
    ExecutionSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowdevicemanagement#ExecutionSummary", name: "ExecutionSummary")
    ExecutionSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.snowdevicemanagement#ExecutionSummaryList", name: "ExecutionSummaryList")
    IdempotencyToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.snowdevicemanagement#IdempotencyToken", name: "IdempotencyToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "[!-~]+"})
    Instance = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowdevicemanagement#Instance", name: "Instance")
    InstanceBlockDeviceMapping = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowdevicemanagement#InstanceBlockDeviceMapping", name: "InstanceBlockDeviceMapping")
    InstanceBlockDeviceMappingList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.snowdevicemanagement#InstanceBlockDeviceMappingList", name: "InstanceBlockDeviceMappingList")
    InstanceIdsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.snowdevicemanagement#InstanceIdsList", name: "InstanceIdsList")
    InstanceState = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowdevicemanagement#InstanceState", name: "InstanceState")
    InstanceStateName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.snowdevicemanagement#InstanceStateName", name: "InstanceStateName", traits: {"smithy.api#enum" => [{"value" => "PENDING", "name" => "PENDING"}, {"value" => "RUNNING", "name" => "RUNNING"}, {"value" => "SHUTTING_DOWN", "name" => "SHUTTING_DOWN"}, {"value" => "TERMINATED", "name" => "TERMINATED"}, {"value" => "STOPPING", "name" => "STOPPING"}, {"value" => "STOPPED", "name" => "STOPPED"}]})
    InstanceSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowdevicemanagement#InstanceSummary", name: "InstanceSummary")
    InstanceSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.snowdevicemanagement#InstanceSummaryList", name: "InstanceSummaryList")
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowdevicemanagement#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500, "smithy.api#retryable" => {}})
    IpAddressAssignment = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.snowdevicemanagement#IpAddressAssignment", name: "IpAddressAssignment", traits: {"smithy.api#enum" => [{"value" => "DHCP", "name" => "DHCP"}, {"value" => "STATIC", "name" => "STATIC"}]})
    JobId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.snowdevicemanagement#JobId", name: "JobId", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    ListDeviceResourcesOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowdevicemanagement#ListDeviceResourcesOperationInput", name: "ListDeviceResourcesOperationInput")
    ListDeviceResourcesOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowdevicemanagement#ListDeviceResourcesOperationOutput", name: "ListDeviceResourcesOperationOutput")
    ListDevicesOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowdevicemanagement#ListDevicesOperationInput", name: "ListDevicesOperationInput")
    ListDevicesOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowdevicemanagement#ListDevicesOperationOutput", name: "ListDevicesOperationOutput")
    ListExecutionsOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowdevicemanagement#ListExecutionsOperationInput", name: "ListExecutionsOperationInput")
    ListExecutionsOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowdevicemanagement#ListExecutionsOperationOutput", name: "ListExecutionsOperationOutput")
    ListTagsForResourceOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowdevicemanagement#ListTagsForResourceOperationInput", name: "ListTagsForResourceOperationInput")
    ListTagsForResourceOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowdevicemanagement#ListTagsForResourceOperationOutput", name: "ListTagsForResourceOperationOutput")
    ListTasksOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowdevicemanagement#ListTasksOperationInput", name: "ListTasksOperationInput")
    ListTasksOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowdevicemanagement#ListTasksOperationOutput", name: "ListTasksOperationOutput")
    ManagedDeviceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.snowdevicemanagement#ManagedDeviceId", name: "ManagedDeviceId", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.snowdevicemanagement#MaxResults", name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.snowdevicemanagement#NextToken", name: "NextToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "[a-zA-Z0-9+/=]*"})
    PhysicalConnectorType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.snowdevicemanagement#PhysicalConnectorType", name: "PhysicalConnectorType", traits: {"smithy.api#enum" => [{"value" => "RJ45", "name" => "RJ45"}, {"value" => "SFP_PLUS", "name" => "SFP_PLUS"}, {"value" => "QSFP", "name" => "QSFP"}, {"value" => "RJ45_2", "name" => "RJ45_2"}, {"value" => "WIFI", "name" => "WIFI"}]})
    PhysicalNetworkInterface = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowdevicemanagement#PhysicalNetworkInterface", name: "PhysicalNetworkInterface")
    PhysicalNetworkInterfaceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.snowdevicemanagement#PhysicalNetworkInterfaceList", name: "PhysicalNetworkInterfaceList")
    Reboot = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowdevicemanagement#Reboot", name: "Reboot")
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowdevicemanagement#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowdevicemanagement#ResourceSummary", name: "ResourceSummary")
    ResourceSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.snowdevicemanagement#ResourceSummaryList", name: "ResourceSummaryList")
    SecurityGroupIdentifier = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowdevicemanagement#SecurityGroupIdentifier", name: "SecurityGroupIdentifier")
    SecurityGroupIdentifierList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.snowdevicemanagement#SecurityGroupIdentifierList", name: "SecurityGroupIdentifierList")
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowdevicemanagement#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    SoftwareInformation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowdevicemanagement#SoftwareInformation", name: "SoftwareInformation")
    TagKeys = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.snowdevicemanagement#TagKeys", name: "TagKeys")
    TagMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.snowdevicemanagement#TagMap", name: "TagMap")
    TagResourceOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowdevicemanagement#TagResourceOperationInput", name: "TagResourceOperationInput")
    TargetList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.snowdevicemanagement#TargetList", name: "TargetList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    TaskDescriptionString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.snowdevicemanagement#TaskDescriptionString", name: "TaskDescriptionString", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "[A-Za-z0-9 _.,!#]*"})
    TaskId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.snowdevicemanagement#TaskId", name: "TaskId", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    TaskState = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.snowdevicemanagement#TaskState", name: "TaskState", traits: {"smithy.api#enum" => [{"value" => "IN_PROGRESS", "name" => "IN_PROGRESS"}, {"value" => "CANCELED", "name" => "CANCELED"}, {"value" => "COMPLETED", "name" => "COMPLETED"}]})
    TaskSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowdevicemanagement#TaskSummary", name: "TaskSummary")
    TaskSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.snowdevicemanagement#TaskSummaryList", name: "TaskSummaryList")
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowdevicemanagement#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429, "smithy.api#retryable" => {"throttling" => true}})
    Unlock = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowdevicemanagement#Unlock", name: "Unlock")
    UnlockState = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.snowdevicemanagement#UnlockState", name: "UnlockState", traits: {"smithy.api#enum" => [{"value" => "UNLOCKED", "name" => "UNLOCKED"}, {"value" => "LOCKED", "name" => "LOCKED"}, {"value" => "UNLOCKING", "name" => "UNLOCKING"}]})
    UntagResourceOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowdevicemanagement#UntagResourceOperationInput", name: "UntagResourceOperationInput")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.snowdevicemanagement#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    CancelTaskOperationInput.add_member(:task_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskId, location_name: "taskId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CancelTaskOperationInput.type = Types::CancelTaskOperationInput
    CancelTaskOperationOutput.add_member(:task_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "taskId"))
    CancelTaskOperationOutput.type = Types::CancelTaskOperationOutput
    Capacity.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "name", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}}))
    Capacity.add_member(:unit, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "unit", traits: {"smithy.api#length" => {"min" => 0, "max" => 20}}))
    Capacity.add_member(:total, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, location_name: "total"))
    Capacity.add_member(:used, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, location_name: "used"))
    Capacity.add_member(:available, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, location_name: "available"))
    Capacity.type = Types::Capacity
    CapacityList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Capacity)
    Command.add_member(:unlock, Types::Command::Unlock, ::Smithy::Schema::Shapes::MemberShape.new(target: Unlock, location_name: "unlock"))
    Command.add_member(:reboot, Types::Command::Reboot, ::Smithy::Schema::Shapes::MemberShape.new(target: Reboot, location_name: "reboot"))
    Command.add_member(:unknown, Types::Command::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    Command.type = Types::Command
    CpuOptions.add_member(:core_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "coreCount"))
    CpuOptions.add_member(:threads_per_core, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "threadsPerCore"))
    CpuOptions.type = Types::CpuOptions
    CreateTaskOperationInput.add_member(:targets, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetList, location_name: "targets", traits: {"smithy.api#required" => {}}))
    CreateTaskOperationInput.add_member(:command, ::Smithy::Schema::Shapes::MemberShape.new(target: Command, location_name: "command", traits: {"smithy.api#required" => {}}))
    CreateTaskOperationInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskDescriptionString, location_name: "description"))
    CreateTaskOperationInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "tags"))
    CreateTaskOperationInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: IdempotencyToken, location_name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateTaskOperationInput.type = Types::CreateTaskOperationInput
    CreateTaskOperationOutput.add_member(:task_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "taskId"))
    CreateTaskOperationOutput.add_member(:task_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "taskArn"))
    CreateTaskOperationOutput.type = Types::CreateTaskOperationOutput
    DescribeDeviceEc2InstancesInput.add_member(:managed_device_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedDeviceId, location_name: "managedDeviceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeDeviceEc2InstancesInput.add_member(:instance_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceIdsList, location_name: "instanceIds", traits: {"smithy.api#required" => {}}))
    DescribeDeviceEc2InstancesInput.type = Types::DescribeDeviceEc2InstancesInput
    DescribeDeviceEc2InstancesOutput.add_member(:instances, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceSummaryList, location_name: "instances"))
    DescribeDeviceEc2InstancesOutput.type = Types::DescribeDeviceEc2InstancesOutput
    DescribeDeviceOperationInput.add_member(:managed_device_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedDeviceId, location_name: "managedDeviceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeDeviceOperationInput.type = Types::DescribeDeviceOperationInput
    DescribeDeviceOperationOutput.add_member(:last_reached_out_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "lastReachedOutAt"))
    DescribeDeviceOperationOutput.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "lastUpdatedAt"))
    DescribeDeviceOperationOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "tags"))
    DescribeDeviceOperationOutput.add_member(:managed_device_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedDeviceId, location_name: "managedDeviceId"))
    DescribeDeviceOperationOutput.add_member(:managed_device_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "managedDeviceArn"))
    DescribeDeviceOperationOutput.add_member(:device_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "deviceType"))
    DescribeDeviceOperationOutput.add_member(:associated_with_job, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "associatedWithJob"))
    DescribeDeviceOperationOutput.add_member(:device_state, ::Smithy::Schema::Shapes::MemberShape.new(target: UnlockState, location_name: "deviceState"))
    DescribeDeviceOperationOutput.add_member(:physical_network_interfaces, ::Smithy::Schema::Shapes::MemberShape.new(target: PhysicalNetworkInterfaceList, location_name: "physicalNetworkInterfaces"))
    DescribeDeviceOperationOutput.add_member(:device_capacities, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityList, location_name: "deviceCapacities"))
    DescribeDeviceOperationOutput.add_member(:software, ::Smithy::Schema::Shapes::MemberShape.new(target: SoftwareInformation, location_name: "software"))
    DescribeDeviceOperationOutput.type = Types::DescribeDeviceOperationOutput
    DescribeExecutionOperationInput.add_member(:task_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskId, location_name: "taskId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeExecutionOperationInput.add_member(:managed_device_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedDeviceId, location_name: "managedDeviceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeExecutionOperationInput.type = Types::DescribeExecutionOperationInput
    DescribeExecutionOperationOutput.add_member(:task_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskId, location_name: "taskId"))
    DescribeExecutionOperationOutput.add_member(:execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionId, location_name: "executionId"))
    DescribeExecutionOperationOutput.add_member(:managed_device_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedDeviceId, location_name: "managedDeviceId"))
    DescribeExecutionOperationOutput.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionState, location_name: "state"))
    DescribeExecutionOperationOutput.add_member(:started_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "startedAt"))
    DescribeExecutionOperationOutput.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "lastUpdatedAt"))
    DescribeExecutionOperationOutput.type = Types::DescribeExecutionOperationOutput
    DescribeTaskOperationInput.add_member(:task_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskId, location_name: "taskId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeTaskOperationInput.type = Types::DescribeTaskOperationInput
    DescribeTaskOperationOutput.add_member(:task_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "taskId"))
    DescribeTaskOperationOutput.add_member(:task_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "taskArn"))
    DescribeTaskOperationOutput.add_member(:targets, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetList, location_name: "targets"))
    DescribeTaskOperationOutput.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskState, location_name: "state"))
    DescribeTaskOperationOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "createdAt"))
    DescribeTaskOperationOutput.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "lastUpdatedAt"))
    DescribeTaskOperationOutput.add_member(:completed_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "completedAt"))
    DescribeTaskOperationOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskDescriptionString, location_name: "description"))
    DescribeTaskOperationOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "tags"))
    DescribeTaskOperationOutput.type = Types::DescribeTaskOperationOutput
    DeviceSummary.add_member(:managed_device_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedDeviceId, location_name: "managedDeviceId"))
    DeviceSummary.add_member(:managed_device_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "managedDeviceArn"))
    DeviceSummary.add_member(:associated_with_job, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "associatedWithJob"))
    DeviceSummary.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "tags"))
    DeviceSummary.type = Types::DeviceSummary
    DeviceSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceSummary)
    EbsInstanceBlockDevice.add_member(:attach_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "attachTime"))
    EbsInstanceBlockDevice.add_member(:delete_on_termination, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "deleteOnTermination"))
    EbsInstanceBlockDevice.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachmentStatus, location_name: "status"))
    EbsInstanceBlockDevice.add_member(:volume_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "volumeId"))
    EbsInstanceBlockDevice.type = Types::EbsInstanceBlockDevice
    ExecutionSummary.add_member(:task_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskId, location_name: "taskId"))
    ExecutionSummary.add_member(:execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionId, location_name: "executionId"))
    ExecutionSummary.add_member(:managed_device_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedDeviceId, location_name: "managedDeviceId"))
    ExecutionSummary.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionState, location_name: "state"))
    ExecutionSummary.type = Types::ExecutionSummary
    ExecutionSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionSummary)
    Instance.add_member(:image_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "imageId"))
    Instance.add_member(:ami_launch_index, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "amiLaunchIndex"))
    Instance.add_member(:instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "instanceId"))
    Instance.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceState, location_name: "state"))
    Instance.add_member(:instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "instanceType"))
    Instance.add_member(:private_ip_address, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "privateIpAddress"))
    Instance.add_member(:public_ip_address, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "publicIpAddress"))
    Instance.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "createdAt"))
    Instance.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "updatedAt"))
    Instance.add_member(:block_device_mappings, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceBlockDeviceMappingList, location_name: "blockDeviceMappings"))
    Instance.add_member(:security_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupIdentifierList, location_name: "securityGroups"))
    Instance.add_member(:cpu_options, ::Smithy::Schema::Shapes::MemberShape.new(target: CpuOptions, location_name: "cpuOptions"))
    Instance.add_member(:root_device_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "rootDeviceName"))
    Instance.type = Types::Instance
    InstanceBlockDeviceMapping.add_member(:device_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "deviceName"))
    InstanceBlockDeviceMapping.add_member(:ebs, ::Smithy::Schema::Shapes::MemberShape.new(target: EbsInstanceBlockDevice, location_name: "ebs"))
    InstanceBlockDeviceMapping.type = Types::InstanceBlockDeviceMapping
    InstanceBlockDeviceMappingList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceBlockDeviceMapping)
    InstanceIdsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String)
    InstanceState.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "code"))
    InstanceState.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceStateName, location_name: "name"))
    InstanceState.type = Types::InstanceState
    InstanceSummary.add_member(:instance, ::Smithy::Schema::Shapes::MemberShape.new(target: Instance, location_name: "instance"))
    InstanceSummary.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "lastUpdatedAt"))
    InstanceSummary.type = Types::InstanceSummary
    InstanceSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceSummary)
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    InternalServerException.type = Types::InternalServerException
    ListDeviceResourcesOperationInput.add_member(:managed_device_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedDeviceId, location_name: "managedDeviceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListDeviceResourcesOperationInput.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "type", traits: {"smithy.api#httpQuery" => "type", "smithy.api#length" => {"min" => 1, "max" => 50}}))
    ListDeviceResourcesOperationInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListDeviceResourcesOperationInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListDeviceResourcesOperationInput.type = Types::ListDeviceResourcesOperationInput
    ListDeviceResourcesOperationOutput.add_member(:resources, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceSummaryList, location_name: "resources"))
    ListDeviceResourcesOperationOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    ListDeviceResourcesOperationOutput.type = Types::ListDeviceResourcesOperationOutput
    ListDevicesOperationInput.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, location_name: "jobId", traits: {"smithy.api#httpQuery" => "jobId"}))
    ListDevicesOperationInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListDevicesOperationInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListDevicesOperationInput.type = Types::ListDevicesOperationInput
    ListDevicesOperationOutput.add_member(:devices, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceSummaryList, location_name: "devices"))
    ListDevicesOperationOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    ListDevicesOperationOutput.type = Types::ListDevicesOperationOutput
    ListExecutionsOperationInput.add_member(:task_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskId, location_name: "taskId", traits: {"smithy.api#httpQuery" => "taskId", "smithy.api#required" => {}}))
    ListExecutionsOperationInput.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionState, location_name: "state", traits: {"smithy.api#httpQuery" => "state"}))
    ListExecutionsOperationInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListExecutionsOperationInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListExecutionsOperationInput.type = Types::ListExecutionsOperationInput
    ListExecutionsOperationOutput.add_member(:executions, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionSummaryList, location_name: "executions"))
    ListExecutionsOperationOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    ListExecutionsOperationOutput.type = Types::ListExecutionsOperationOutput
    ListTagsForResourceOperationInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceOperationInput.type = Types::ListTagsForResourceOperationInput
    ListTagsForResourceOperationOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "tags"))
    ListTagsForResourceOperationOutput.type = Types::ListTagsForResourceOperationOutput
    ListTasksOperationInput.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskState, location_name: "state", traits: {"smithy.api#httpQuery" => "state"}))
    ListTasksOperationInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListTasksOperationInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListTasksOperationInput.type = Types::ListTasksOperationInput
    ListTasksOperationOutput.add_member(:tasks, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskSummaryList, location_name: "tasks"))
    ListTasksOperationOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    ListTasksOperationOutput.type = Types::ListTasksOperationOutput
    PhysicalNetworkInterface.add_member(:physical_network_interface_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "physicalNetworkInterfaceId"))
    PhysicalNetworkInterface.add_member(:physical_connector_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PhysicalConnectorType, location_name: "physicalConnectorType"))
    PhysicalNetworkInterface.add_member(:ip_address_assignment, ::Smithy::Schema::Shapes::MemberShape.new(target: IpAddressAssignment, location_name: "ipAddressAssignment"))
    PhysicalNetworkInterface.add_member(:ip_address, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "ipAddress"))
    PhysicalNetworkInterface.add_member(:netmask, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "netmask"))
    PhysicalNetworkInterface.add_member(:default_gateway, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "defaultGateway"))
    PhysicalNetworkInterface.add_member(:mac_address, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "macAddress"))
    PhysicalNetworkInterface.type = Types::PhysicalNetworkInterface
    PhysicalNetworkInterfaceList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: PhysicalNetworkInterface)
    Reboot.type = Types::Reboot
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceSummary.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "resourceType", traits: {"smithy.api#required" => {}}))
    ResourceSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "arn"))
    ResourceSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "id"))
    ResourceSummary.type = Types::ResourceSummary
    ResourceSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceSummary)
    SecurityGroupIdentifier.add_member(:group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "groupId"))
    SecurityGroupIdentifier.add_member(:group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "groupName"))
    SecurityGroupIdentifier.type = Types::SecurityGroupIdentifier
    SecurityGroupIdentifierList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupIdentifier)
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    SoftwareInformation.add_member(:installed_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "installedVersion"))
    SoftwareInformation.add_member(:installing_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "installingVersion"))
    SoftwareInformation.add_member(:install_state, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "installState"))
    SoftwareInformation.type = Types::SoftwareInformation
    TagKeys.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String)
    TagMap.key = ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String)
    TagMap.value = ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String)
    TagResourceOperationInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceOperationInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "tags", traits: {"smithy.api#required" => {}}))
    TagResourceOperationInput.type = Types::TagResourceOperationInput
    TargetList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String)
    TaskSummary.add_member(:task_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskId, location_name: "taskId", traits: {"smithy.api#required" => {}}))
    TaskSummary.add_member(:task_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "taskArn"))
    TaskSummary.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskState, location_name: "state"))
    TaskSummary.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "tags"))
    TaskSummary.type = Types::TaskSummary
    TaskSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TaskSummary)
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    ThrottlingException.type = Types::ThrottlingException
    Unlock.type = Types::Unlock
    UntagResourceOperationInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceOperationInput.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeys, location_name: "tagKeys", traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceOperationInput.type = Types::UntagResourceOperationInput
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    ValidationException.type = Types::ValidationException

    SnowDeviceManagement = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.snowdevicemanagement#SnowDeviceManagement"
      service.name = "SnowDeviceManagement"
      service.version = "2021-08-04"
      service.traits = {"aws.api#service" => {"arnNamespace" => "snow-device-management", "sdkId" => "Snow Device Management"}, "aws.auth#sigv4" => {"name" => "snow-device-management"}, "aws.protocols#restJson1" => {}, "smithy.api#cors" => {}, "smithy.api#title" => "AWS Snow Device Management"}
      service.add_operation(:cancel_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.snowdevicemanagement#CancelTask"
        operation.name = "CancelTask"
        operation.input = CancelTaskOperationInput
        operation.output = CancelTaskOperationOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/task/{taskId}/cancel"}}
      end)
      service.add_operation(:create_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.snowdevicemanagement#CreateTask"
        operation.name = "CreateTask"
        operation.input = CreateTaskOperationInput
        operation.output = CreateTaskOperationOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/task"}}
      end)
      service.add_operation(:describe_device, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.snowdevicemanagement#DescribeDevice"
        operation.name = "DescribeDevice"
        operation.input = DescribeDeviceOperationInput
        operation.output = DescribeDeviceOperationOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/managed-device/{managedDeviceId}/describe"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:describe_device_ec2_instances, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.snowdevicemanagement#DescribeDeviceEc2Instances"
        operation.name = "DescribeDeviceEc2Instances"
        operation.input = DescribeDeviceEc2InstancesInput
        operation.output = DescribeDeviceEc2InstancesOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/managed-device/{managedDeviceId}/resources/ec2/describe"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:describe_execution, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.snowdevicemanagement#DescribeExecution"
        operation.name = "DescribeExecution"
        operation.input = DescribeExecutionOperationInput
        operation.output = DescribeExecutionOperationOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/task/{taskId}/execution/{managedDeviceId}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:describe_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.snowdevicemanagement#DescribeTask"
        operation.name = "DescribeTask"
        operation.input = DescribeTaskOperationInput
        operation.output = DescribeTaskOperationOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/task/{taskId}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_device_resources, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.snowdevicemanagement#ListDeviceResources"
        operation.name = "ListDeviceResources"
        operation.input = ListDeviceResourcesOperationInput
        operation.output = ListDeviceResourcesOperationOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/managed-device/{managedDeviceId}/resources"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListDeviceResources.new
      end)
      service.add_operation(:list_devices, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.snowdevicemanagement#ListDevices"
        operation.name = "ListDevices"
        operation.input = ListDevicesOperationInput
        operation.output = ListDevicesOperationOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/managed-devices"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListDevices.new
      end)
      service.add_operation(:list_executions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.snowdevicemanagement#ListExecutions"
        operation.name = "ListExecutions"
        operation.input = ListExecutionsOperationInput
        operation.output = ListExecutionsOperationOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/executions"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListExecutions.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.snowdevicemanagement#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceOperationInput
        operation.output = ListTagsForResourceOperationOutput
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags/{resourceArn}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_tasks, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.snowdevicemanagement#ListTasks"
        operation.name = "ListTasks"
        operation.input = ListTasksOperationInput
        operation.output = ListTasksOperationOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/tasks"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListTasks.new
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.snowdevicemanagement#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceOperationInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags/{resourceArn}"}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.snowdevicemanagement#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceOperationInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{resourceArn}"}, "smithy.api#idempotent" => {}}
      end)
    end

    class << self
      def type_registry
        return @type_registry if @type_registry

        shapes = constants.map { |sym| const_get(sym) }.select { |const| const.is_a?(::Smithy::Schema::Shapes::StructureShape) }
        @type_registry = ::Smithy::Schema::TypeRegistry.new(shapes)
      end
    end
  end
end
