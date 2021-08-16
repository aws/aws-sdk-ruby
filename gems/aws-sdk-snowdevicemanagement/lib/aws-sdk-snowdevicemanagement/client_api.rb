# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::SnowDeviceManagement
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AttachmentStatus = Shapes::StringShape.new(name: 'AttachmentStatus')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    CancelTaskInput = Shapes::StructureShape.new(name: 'CancelTaskInput')
    CancelTaskOutput = Shapes::StructureShape.new(name: 'CancelTaskOutput')
    Capacity = Shapes::StructureShape.new(name: 'Capacity')
    CapacityList = Shapes::ListShape.new(name: 'CapacityList')
    CapacityNameString = Shapes::StringShape.new(name: 'CapacityNameString')
    CapacityUnitString = Shapes::StringShape.new(name: 'CapacityUnitString')
    Command = Shapes::UnionShape.new(name: 'Command')
    CpuOptions = Shapes::StructureShape.new(name: 'CpuOptions')
    CreateTaskInput = Shapes::StructureShape.new(name: 'CreateTaskInput')
    CreateTaskOutput = Shapes::StructureShape.new(name: 'CreateTaskOutput')
    DescribeDeviceEc2Input = Shapes::StructureShape.new(name: 'DescribeDeviceEc2Input')
    DescribeDeviceEc2Output = Shapes::StructureShape.new(name: 'DescribeDeviceEc2Output')
    DescribeDeviceInput = Shapes::StructureShape.new(name: 'DescribeDeviceInput')
    DescribeDeviceOutput = Shapes::StructureShape.new(name: 'DescribeDeviceOutput')
    DescribeExecutionInput = Shapes::StructureShape.new(name: 'DescribeExecutionInput')
    DescribeExecutionOutput = Shapes::StructureShape.new(name: 'DescribeExecutionOutput')
    DescribeTaskInput = Shapes::StructureShape.new(name: 'DescribeTaskInput')
    DescribeTaskOutput = Shapes::StructureShape.new(name: 'DescribeTaskOutput')
    DeviceSummary = Shapes::StructureShape.new(name: 'DeviceSummary')
    DeviceSummaryList = Shapes::ListShape.new(name: 'DeviceSummaryList')
    EbsInstanceBlockDevice = Shapes::StructureShape.new(name: 'EbsInstanceBlockDevice')
    ExecutionId = Shapes::StringShape.new(name: 'ExecutionId')
    ExecutionState = Shapes::StringShape.new(name: 'ExecutionState')
    ExecutionSummary = Shapes::StructureShape.new(name: 'ExecutionSummary')
    ExecutionSummaryList = Shapes::ListShape.new(name: 'ExecutionSummaryList')
    IdempotencyToken = Shapes::StringShape.new(name: 'IdempotencyToken')
    Instance = Shapes::StructureShape.new(name: 'Instance')
    InstanceBlockDeviceMapping = Shapes::StructureShape.new(name: 'InstanceBlockDeviceMapping')
    InstanceBlockDeviceMappingList = Shapes::ListShape.new(name: 'InstanceBlockDeviceMappingList')
    InstanceIdsList = Shapes::ListShape.new(name: 'InstanceIdsList')
    InstanceState = Shapes::StructureShape.new(name: 'InstanceState')
    InstanceStateName = Shapes::StringShape.new(name: 'InstanceStateName')
    InstanceSummary = Shapes::StructureShape.new(name: 'InstanceSummary')
    InstanceSummaryList = Shapes::ListShape.new(name: 'InstanceSummaryList')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    IpAddressAssignment = Shapes::StringShape.new(name: 'IpAddressAssignment')
    JobId = Shapes::StringShape.new(name: 'JobId')
    ListDeviceResourcesInput = Shapes::StructureShape.new(name: 'ListDeviceResourcesInput')
    ListDeviceResourcesInputTypeString = Shapes::StringShape.new(name: 'ListDeviceResourcesInputTypeString')
    ListDeviceResourcesOutput = Shapes::StructureShape.new(name: 'ListDeviceResourcesOutput')
    ListDevicesInput = Shapes::StructureShape.new(name: 'ListDevicesInput')
    ListDevicesOutput = Shapes::StructureShape.new(name: 'ListDevicesOutput')
    ListExecutionsInput = Shapes::StructureShape.new(name: 'ListExecutionsInput')
    ListExecutionsOutput = Shapes::StructureShape.new(name: 'ListExecutionsOutput')
    ListTagsForResourceInput = Shapes::StructureShape.new(name: 'ListTagsForResourceInput')
    ListTagsForResourceOutput = Shapes::StructureShape.new(name: 'ListTagsForResourceOutput')
    ListTasksInput = Shapes::StructureShape.new(name: 'ListTasksInput')
    ListTasksOutput = Shapes::StructureShape.new(name: 'ListTasksOutput')
    Long = Shapes::IntegerShape.new(name: 'Long')
    ManagedDeviceId = Shapes::StringShape.new(name: 'ManagedDeviceId')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    PhysicalConnectorType = Shapes::StringShape.new(name: 'PhysicalConnectorType')
    PhysicalNetworkInterface = Shapes::StructureShape.new(name: 'PhysicalNetworkInterface')
    PhysicalNetworkInterfaceList = Shapes::ListShape.new(name: 'PhysicalNetworkInterfaceList')
    Reboot = Shapes::StructureShape.new(name: 'Reboot')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceSummary = Shapes::StructureShape.new(name: 'ResourceSummary')
    ResourceSummaryList = Shapes::ListShape.new(name: 'ResourceSummaryList')
    SecurityGroupIdentifier = Shapes::StructureShape.new(name: 'SecurityGroupIdentifier')
    SecurityGroupIdentifierList = Shapes::ListShape.new(name: 'SecurityGroupIdentifierList')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    SoftwareInformation = Shapes::StructureShape.new(name: 'SoftwareInformation')
    String = Shapes::StringShape.new(name: 'String')
    TagKeys = Shapes::ListShape.new(name: 'TagKeys')
    TagMap = Shapes::MapShape.new(name: 'TagMap')
    TagResourceInput = Shapes::StructureShape.new(name: 'TagResourceInput')
    TargetList = Shapes::ListShape.new(name: 'TargetList')
    TaskDescriptionString = Shapes::StringShape.new(name: 'TaskDescriptionString')
    TaskId = Shapes::StringShape.new(name: 'TaskId')
    TaskState = Shapes::StringShape.new(name: 'TaskState')
    TaskSummary = Shapes::StructureShape.new(name: 'TaskSummary')
    TaskSummaryList = Shapes::ListShape.new(name: 'TaskSummaryList')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    Unlock = Shapes::StructureShape.new(name: 'Unlock')
    UnlockState = Shapes::StringShape.new(name: 'UnlockState')
    UntagResourceInput = Shapes::StructureShape.new(name: 'UntagResourceInput')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    CancelTaskInput.add_member(:task_id, Shapes::ShapeRef.new(shape: TaskId, required: true, location: "uri", location_name: "taskId"))
    CancelTaskInput.struct_class = Types::CancelTaskInput

    CancelTaskOutput.add_member(:task_id, Shapes::ShapeRef.new(shape: String, location_name: "taskId"))
    CancelTaskOutput.struct_class = Types::CancelTaskOutput

    Capacity.add_member(:available, Shapes::ShapeRef.new(shape: Long, location_name: "available"))
    Capacity.add_member(:name, Shapes::ShapeRef.new(shape: CapacityNameString, location_name: "name"))
    Capacity.add_member(:total, Shapes::ShapeRef.new(shape: Long, location_name: "total"))
    Capacity.add_member(:unit, Shapes::ShapeRef.new(shape: CapacityUnitString, location_name: "unit"))
    Capacity.add_member(:used, Shapes::ShapeRef.new(shape: Long, location_name: "used"))
    Capacity.struct_class = Types::Capacity

    CapacityList.member = Shapes::ShapeRef.new(shape: Capacity)

    Command.add_member(:reboot, Shapes::ShapeRef.new(shape: Reboot, location_name: "reboot"))
    Command.add_member(:unlock, Shapes::ShapeRef.new(shape: Unlock, location_name: "unlock"))
    Command.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    Command.add_member_subclass(:reboot, Types::Command::Reboot)
    Command.add_member_subclass(:unlock, Types::Command::Unlock)
    Command.add_member_subclass(:unknown, Types::Command::Unknown)
    Command.struct_class = Types::Command

    CpuOptions.add_member(:core_count, Shapes::ShapeRef.new(shape: Integer, location_name: "coreCount"))
    CpuOptions.add_member(:threads_per_core, Shapes::ShapeRef.new(shape: Integer, location_name: "threadsPerCore"))
    CpuOptions.struct_class = Types::CpuOptions

    CreateTaskInput.add_member(:client_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateTaskInput.add_member(:command, Shapes::ShapeRef.new(shape: Command, required: true, location_name: "command"))
    CreateTaskInput.add_member(:description, Shapes::ShapeRef.new(shape: TaskDescriptionString, location_name: "description"))
    CreateTaskInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateTaskInput.add_member(:targets, Shapes::ShapeRef.new(shape: TargetList, required: true, location_name: "targets"))
    CreateTaskInput.struct_class = Types::CreateTaskInput

    CreateTaskOutput.add_member(:task_arn, Shapes::ShapeRef.new(shape: String, location_name: "taskArn"))
    CreateTaskOutput.add_member(:task_id, Shapes::ShapeRef.new(shape: String, location_name: "taskId"))
    CreateTaskOutput.struct_class = Types::CreateTaskOutput

    DescribeDeviceEc2Input.add_member(:instance_ids, Shapes::ShapeRef.new(shape: InstanceIdsList, required: true, location_name: "instanceIds"))
    DescribeDeviceEc2Input.add_member(:managed_device_id, Shapes::ShapeRef.new(shape: ManagedDeviceId, required: true, location: "uri", location_name: "managedDeviceId"))
    DescribeDeviceEc2Input.struct_class = Types::DescribeDeviceEc2Input

    DescribeDeviceEc2Output.add_member(:instances, Shapes::ShapeRef.new(shape: InstanceSummaryList, location_name: "instances"))
    DescribeDeviceEc2Output.struct_class = Types::DescribeDeviceEc2Output

    DescribeDeviceInput.add_member(:managed_device_id, Shapes::ShapeRef.new(shape: ManagedDeviceId, required: true, location: "uri", location_name: "managedDeviceId"))
    DescribeDeviceInput.struct_class = Types::DescribeDeviceInput

    DescribeDeviceOutput.add_member(:associated_with_job, Shapes::ShapeRef.new(shape: String, location_name: "associatedWithJob"))
    DescribeDeviceOutput.add_member(:device_capacities, Shapes::ShapeRef.new(shape: CapacityList, location_name: "deviceCapacities"))
    DescribeDeviceOutput.add_member(:device_state, Shapes::ShapeRef.new(shape: UnlockState, location_name: "deviceState"))
    DescribeDeviceOutput.add_member(:device_type, Shapes::ShapeRef.new(shape: String, location_name: "deviceType"))
    DescribeDeviceOutput.add_member(:last_reached_out_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastReachedOutAt"))
    DescribeDeviceOutput.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdatedAt"))
    DescribeDeviceOutput.add_member(:managed_device_arn, Shapes::ShapeRef.new(shape: String, location_name: "managedDeviceArn"))
    DescribeDeviceOutput.add_member(:managed_device_id, Shapes::ShapeRef.new(shape: ManagedDeviceId, location_name: "managedDeviceId"))
    DescribeDeviceOutput.add_member(:physical_network_interfaces, Shapes::ShapeRef.new(shape: PhysicalNetworkInterfaceList, location_name: "physicalNetworkInterfaces"))
    DescribeDeviceOutput.add_member(:software, Shapes::ShapeRef.new(shape: SoftwareInformation, location_name: "software"))
    DescribeDeviceOutput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    DescribeDeviceOutput.struct_class = Types::DescribeDeviceOutput

    DescribeExecutionInput.add_member(:managed_device_id, Shapes::ShapeRef.new(shape: ManagedDeviceId, required: true, location: "uri", location_name: "managedDeviceId"))
    DescribeExecutionInput.add_member(:task_id, Shapes::ShapeRef.new(shape: TaskId, required: true, location: "uri", location_name: "taskId"))
    DescribeExecutionInput.struct_class = Types::DescribeExecutionInput

    DescribeExecutionOutput.add_member(:execution_id, Shapes::ShapeRef.new(shape: ExecutionId, location_name: "executionId"))
    DescribeExecutionOutput.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdatedAt"))
    DescribeExecutionOutput.add_member(:managed_device_id, Shapes::ShapeRef.new(shape: ManagedDeviceId, location_name: "managedDeviceId"))
    DescribeExecutionOutput.add_member(:started_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "startedAt"))
    DescribeExecutionOutput.add_member(:state, Shapes::ShapeRef.new(shape: ExecutionState, location_name: "state"))
    DescribeExecutionOutput.add_member(:task_id, Shapes::ShapeRef.new(shape: TaskId, location_name: "taskId"))
    DescribeExecutionOutput.struct_class = Types::DescribeExecutionOutput

    DescribeTaskInput.add_member(:task_id, Shapes::ShapeRef.new(shape: TaskId, required: true, location: "uri", location_name: "taskId"))
    DescribeTaskInput.struct_class = Types::DescribeTaskInput

    DescribeTaskOutput.add_member(:completed_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "completedAt"))
    DescribeTaskOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    DescribeTaskOutput.add_member(:description, Shapes::ShapeRef.new(shape: TaskDescriptionString, location_name: "description"))
    DescribeTaskOutput.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdatedAt"))
    DescribeTaskOutput.add_member(:state, Shapes::ShapeRef.new(shape: TaskState, location_name: "state"))
    DescribeTaskOutput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    DescribeTaskOutput.add_member(:targets, Shapes::ShapeRef.new(shape: TargetList, location_name: "targets"))
    DescribeTaskOutput.add_member(:task_arn, Shapes::ShapeRef.new(shape: String, location_name: "taskArn"))
    DescribeTaskOutput.add_member(:task_id, Shapes::ShapeRef.new(shape: String, location_name: "taskId"))
    DescribeTaskOutput.struct_class = Types::DescribeTaskOutput

    DeviceSummary.add_member(:associated_with_job, Shapes::ShapeRef.new(shape: String, location_name: "associatedWithJob"))
    DeviceSummary.add_member(:managed_device_arn, Shapes::ShapeRef.new(shape: String, location_name: "managedDeviceArn"))
    DeviceSummary.add_member(:managed_device_id, Shapes::ShapeRef.new(shape: ManagedDeviceId, location_name: "managedDeviceId"))
    DeviceSummary.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    DeviceSummary.struct_class = Types::DeviceSummary

    DeviceSummaryList.member = Shapes::ShapeRef.new(shape: DeviceSummary)

    EbsInstanceBlockDevice.add_member(:attach_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "attachTime"))
    EbsInstanceBlockDevice.add_member(:delete_on_termination, Shapes::ShapeRef.new(shape: Boolean, location_name: "deleteOnTermination"))
    EbsInstanceBlockDevice.add_member(:status, Shapes::ShapeRef.new(shape: AttachmentStatus, location_name: "status"))
    EbsInstanceBlockDevice.add_member(:volume_id, Shapes::ShapeRef.new(shape: String, location_name: "volumeId"))
    EbsInstanceBlockDevice.struct_class = Types::EbsInstanceBlockDevice

    ExecutionSummary.add_member(:execution_id, Shapes::ShapeRef.new(shape: ExecutionId, location_name: "executionId"))
    ExecutionSummary.add_member(:managed_device_id, Shapes::ShapeRef.new(shape: ManagedDeviceId, location_name: "managedDeviceId"))
    ExecutionSummary.add_member(:state, Shapes::ShapeRef.new(shape: ExecutionState, location_name: "state"))
    ExecutionSummary.add_member(:task_id, Shapes::ShapeRef.new(shape: TaskId, location_name: "taskId"))
    ExecutionSummary.struct_class = Types::ExecutionSummary

    ExecutionSummaryList.member = Shapes::ShapeRef.new(shape: ExecutionSummary)

    Instance.add_member(:ami_launch_index, Shapes::ShapeRef.new(shape: Integer, location_name: "amiLaunchIndex"))
    Instance.add_member(:block_device_mappings, Shapes::ShapeRef.new(shape: InstanceBlockDeviceMappingList, location_name: "blockDeviceMappings"))
    Instance.add_member(:cpu_options, Shapes::ShapeRef.new(shape: CpuOptions, location_name: "cpuOptions"))
    Instance.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    Instance.add_member(:image_id, Shapes::ShapeRef.new(shape: String, location_name: "imageId"))
    Instance.add_member(:instance_id, Shapes::ShapeRef.new(shape: String, location_name: "instanceId"))
    Instance.add_member(:instance_type, Shapes::ShapeRef.new(shape: String, location_name: "instanceType"))
    Instance.add_member(:private_ip_address, Shapes::ShapeRef.new(shape: String, location_name: "privateIpAddress"))
    Instance.add_member(:public_ip_address, Shapes::ShapeRef.new(shape: String, location_name: "publicIpAddress"))
    Instance.add_member(:root_device_name, Shapes::ShapeRef.new(shape: String, location_name: "rootDeviceName"))
    Instance.add_member(:security_groups, Shapes::ShapeRef.new(shape: SecurityGroupIdentifierList, location_name: "securityGroups"))
    Instance.add_member(:state, Shapes::ShapeRef.new(shape: InstanceState, location_name: "state"))
    Instance.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt"))
    Instance.struct_class = Types::Instance

    InstanceBlockDeviceMapping.add_member(:device_name, Shapes::ShapeRef.new(shape: String, location_name: "deviceName"))
    InstanceBlockDeviceMapping.add_member(:ebs, Shapes::ShapeRef.new(shape: EbsInstanceBlockDevice, location_name: "ebs"))
    InstanceBlockDeviceMapping.struct_class = Types::InstanceBlockDeviceMapping

    InstanceBlockDeviceMappingList.member = Shapes::ShapeRef.new(shape: InstanceBlockDeviceMapping)

    InstanceIdsList.member = Shapes::ShapeRef.new(shape: String)

    InstanceState.add_member(:code, Shapes::ShapeRef.new(shape: Integer, location_name: "code"))
    InstanceState.add_member(:name, Shapes::ShapeRef.new(shape: InstanceStateName, location_name: "name"))
    InstanceState.struct_class = Types::InstanceState

    InstanceSummary.add_member(:instance, Shapes::ShapeRef.new(shape: Instance, location_name: "instance"))
    InstanceSummary.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdatedAt"))
    InstanceSummary.struct_class = Types::InstanceSummary

    InstanceSummaryList.member = Shapes::ShapeRef.new(shape: InstanceSummary)

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    ListDeviceResourcesInput.add_member(:managed_device_id, Shapes::ShapeRef.new(shape: ManagedDeviceId, required: true, location: "uri", location_name: "managedDeviceId"))
    ListDeviceResourcesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListDeviceResourcesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListDeviceResourcesInput.add_member(:type, Shapes::ShapeRef.new(shape: ListDeviceResourcesInputTypeString, location: "querystring", location_name: "type"))
    ListDeviceResourcesInput.struct_class = Types::ListDeviceResourcesInput

    ListDeviceResourcesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListDeviceResourcesOutput.add_member(:resources, Shapes::ShapeRef.new(shape: ResourceSummaryList, location_name: "resources"))
    ListDeviceResourcesOutput.struct_class = Types::ListDeviceResourcesOutput

    ListDevicesInput.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, location: "querystring", location_name: "jobId"))
    ListDevicesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListDevicesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListDevicesInput.struct_class = Types::ListDevicesInput

    ListDevicesOutput.add_member(:devices, Shapes::ShapeRef.new(shape: DeviceSummaryList, location_name: "devices"))
    ListDevicesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListDevicesOutput.struct_class = Types::ListDevicesOutput

    ListExecutionsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListExecutionsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListExecutionsInput.add_member(:state, Shapes::ShapeRef.new(shape: ExecutionState, location: "querystring", location_name: "state"))
    ListExecutionsInput.add_member(:task_id, Shapes::ShapeRef.new(shape: TaskId, required: true, location: "querystring", location_name: "taskId"))
    ListExecutionsInput.struct_class = Types::ListExecutionsInput

    ListExecutionsOutput.add_member(:executions, Shapes::ShapeRef.new(shape: ExecutionSummaryList, location_name: "executions"))
    ListExecutionsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListExecutionsOutput.struct_class = Types::ListExecutionsOutput

    ListTagsForResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "resourceArn"))
    ListTagsForResourceInput.struct_class = Types::ListTagsForResourceInput

    ListTagsForResourceOutput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    ListTagsForResourceOutput.struct_class = Types::ListTagsForResourceOutput

    ListTasksInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListTasksInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListTasksInput.add_member(:state, Shapes::ShapeRef.new(shape: TaskState, location: "querystring", location_name: "state"))
    ListTasksInput.struct_class = Types::ListTasksInput

    ListTasksOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListTasksOutput.add_member(:tasks, Shapes::ShapeRef.new(shape: TaskSummaryList, location_name: "tasks"))
    ListTasksOutput.struct_class = Types::ListTasksOutput

    PhysicalNetworkInterface.add_member(:default_gateway, Shapes::ShapeRef.new(shape: String, location_name: "defaultGateway"))
    PhysicalNetworkInterface.add_member(:ip_address, Shapes::ShapeRef.new(shape: String, location_name: "ipAddress"))
    PhysicalNetworkInterface.add_member(:ip_address_assignment, Shapes::ShapeRef.new(shape: IpAddressAssignment, location_name: "ipAddressAssignment"))
    PhysicalNetworkInterface.add_member(:mac_address, Shapes::ShapeRef.new(shape: String, location_name: "macAddress"))
    PhysicalNetworkInterface.add_member(:netmask, Shapes::ShapeRef.new(shape: String, location_name: "netmask"))
    PhysicalNetworkInterface.add_member(:physical_connector_type, Shapes::ShapeRef.new(shape: PhysicalConnectorType, location_name: "physicalConnectorType"))
    PhysicalNetworkInterface.add_member(:physical_network_interface_id, Shapes::ShapeRef.new(shape: String, location_name: "physicalNetworkInterfaceId"))
    PhysicalNetworkInterface.struct_class = Types::PhysicalNetworkInterface

    PhysicalNetworkInterfaceList.member = Shapes::ShapeRef.new(shape: PhysicalNetworkInterface)

    Reboot.struct_class = Types::Reboot

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ResourceSummary.add_member(:arn, Shapes::ShapeRef.new(shape: String, location_name: "arn"))
    ResourceSummary.add_member(:id, Shapes::ShapeRef.new(shape: String, location_name: "id"))
    ResourceSummary.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceType"))
    ResourceSummary.struct_class = Types::ResourceSummary

    ResourceSummaryList.member = Shapes::ShapeRef.new(shape: ResourceSummary)

    SecurityGroupIdentifier.add_member(:group_id, Shapes::ShapeRef.new(shape: String, location_name: "groupId"))
    SecurityGroupIdentifier.add_member(:group_name, Shapes::ShapeRef.new(shape: String, location_name: "groupName"))
    SecurityGroupIdentifier.struct_class = Types::SecurityGroupIdentifier

    SecurityGroupIdentifierList.member = Shapes::ShapeRef.new(shape: SecurityGroupIdentifier)

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    SoftwareInformation.add_member(:install_state, Shapes::ShapeRef.new(shape: String, location_name: "installState"))
    SoftwareInformation.add_member(:installed_version, Shapes::ShapeRef.new(shape: String, location_name: "installedVersion"))
    SoftwareInformation.add_member(:installing_version, Shapes::ShapeRef.new(shape: String, location_name: "installingVersion"))
    SoftwareInformation.struct_class = Types::SoftwareInformation

    TagKeys.member = Shapes::ShapeRef.new(shape: String)

    TagMap.key = Shapes::ShapeRef.new(shape: String)
    TagMap.value = Shapes::ShapeRef.new(shape: String)

    TagResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "resourceArn"))
    TagResourceInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, required: true, location_name: "tags"))
    TagResourceInput.struct_class = Types::TagResourceInput

    TargetList.member = Shapes::ShapeRef.new(shape: String)

    TaskSummary.add_member(:state, Shapes::ShapeRef.new(shape: TaskState, location_name: "state"))
    TaskSummary.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    TaskSummary.add_member(:task_arn, Shapes::ShapeRef.new(shape: String, location_name: "taskArn"))
    TaskSummary.add_member(:task_id, Shapes::ShapeRef.new(shape: TaskId, required: true, location_name: "taskId"))
    TaskSummary.struct_class = Types::TaskSummary

    TaskSummaryList.member = Shapes::ShapeRef.new(shape: TaskSummary)

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    Unlock.struct_class = Types::Unlock

    UntagResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "resourceArn"))
    UntagResourceInput.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeys, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceInput.struct_class = Types::UntagResourceInput

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationException.struct_class = Types::ValidationException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2021-08-04"

      api.metadata = {
        "apiVersion" => "2021-08-04",
        "endpointPrefix" => "snow-device-management",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceFullName" => "AWS Snow Device Management",
        "serviceId" => "Snow Device Management",
        "signatureVersion" => "v4",
        "signingName" => "snow-device-management",
        "uid" => "snow-device-management-2021-08-04",
      }

      api.add_operation(:cancel_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CancelTask"
        o.http_method = "POST"
        o.http_request_uri = "/task/{taskId}/cancel"
        o.input = Shapes::ShapeRef.new(shape: CancelTaskInput)
        o.output = Shapes::ShapeRef.new(shape: CancelTaskOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateTask"
        o.http_method = "POST"
        o.http_request_uri = "/task"
        o.input = Shapes::ShapeRef.new(shape: CreateTaskInput)
        o.output = Shapes::ShapeRef.new(shape: CreateTaskOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:describe_device, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDevice"
        o.http_method = "POST"
        o.http_request_uri = "/managed-device/{managedDeviceId}/describe"
        o.input = Shapes::ShapeRef.new(shape: DescribeDeviceInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeDeviceOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:describe_device_ec2_instances, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDeviceEc2Instances"
        o.http_method = "POST"
        o.http_request_uri = "/managed-device/{managedDeviceId}/resources/ec2/describe"
        o.input = Shapes::ShapeRef.new(shape: DescribeDeviceEc2Input)
        o.output = Shapes::ShapeRef.new(shape: DescribeDeviceEc2Output)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:describe_execution, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeExecution"
        o.http_method = "POST"
        o.http_request_uri = "/task/{taskId}/execution/{managedDeviceId}"
        o.input = Shapes::ShapeRef.new(shape: DescribeExecutionInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeExecutionOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:describe_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeTask"
        o.http_method = "POST"
        o.http_request_uri = "/task/{taskId}"
        o.input = Shapes::ShapeRef.new(shape: DescribeTaskInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeTaskOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:list_device_resources, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDeviceResources"
        o.http_method = "GET"
        o.http_request_uri = "/managed-device/{managedDeviceId}/resources"
        o.input = Shapes::ShapeRef.new(shape: ListDeviceResourcesInput)
        o.output = Shapes::ShapeRef.new(shape: ListDeviceResourcesOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_devices, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDevices"
        o.http_method = "GET"
        o.http_request_uri = "/managed-devices"
        o.input = Shapes::ShapeRef.new(shape: ListDevicesInput)
        o.output = Shapes::ShapeRef.new(shape: ListDevicesOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_executions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListExecutions"
        o.http_method = "GET"
        o.http_request_uri = "/executions"
        o.input = Shapes::ShapeRef.new(shape: ListExecutionsInput)
        o.output = Shapes::ShapeRef.new(shape: ListExecutionsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "GET"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceInput)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:list_tasks, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTasks"
        o.http_method = "GET"
        o.http_request_uri = "/tasks"
        o.input = Shapes::ShapeRef.new(shape: ListTasksInput)
        o.output = Shapes::ShapeRef.new(shape: ListTasksOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)
    end

  end
end
