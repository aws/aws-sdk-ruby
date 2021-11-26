# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Mgn
  # @api private
  module ClientApi

    include Seahorse::Model

    ARN = Shapes::StringShape.new(name: 'ARN')
    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    BoundedString = Shapes::StringShape.new(name: 'BoundedString')
    CPU = Shapes::StructureShape.new(name: 'CPU')
    ChangeServerLifeCycleStateRequest = Shapes::StructureShape.new(name: 'ChangeServerLifeCycleStateRequest')
    ChangeServerLifeCycleStateSourceServerLifecycle = Shapes::StructureShape.new(name: 'ChangeServerLifeCycleStateSourceServerLifecycle')
    ChangeServerLifeCycleStateSourceServerLifecycleState = Shapes::StringShape.new(name: 'ChangeServerLifeCycleStateSourceServerLifecycleState')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    Cpus = Shapes::ListShape.new(name: 'Cpus')
    CreateReplicationConfigurationTemplateRequest = Shapes::StructureShape.new(name: 'CreateReplicationConfigurationTemplateRequest')
    DataReplicationError = Shapes::StructureShape.new(name: 'DataReplicationError')
    DataReplicationErrorString = Shapes::StringShape.new(name: 'DataReplicationErrorString')
    DataReplicationInfo = Shapes::StructureShape.new(name: 'DataReplicationInfo')
    DataReplicationInfoReplicatedDisk = Shapes::StructureShape.new(name: 'DataReplicationInfoReplicatedDisk')
    DataReplicationInfoReplicatedDisks = Shapes::ListShape.new(name: 'DataReplicationInfoReplicatedDisks')
    DataReplicationInitiation = Shapes::StructureShape.new(name: 'DataReplicationInitiation')
    DataReplicationInitiationStep = Shapes::StructureShape.new(name: 'DataReplicationInitiationStep')
    DataReplicationInitiationStepName = Shapes::StringShape.new(name: 'DataReplicationInitiationStepName')
    DataReplicationInitiationStepStatus = Shapes::StringShape.new(name: 'DataReplicationInitiationStepStatus')
    DataReplicationInitiationSteps = Shapes::ListShape.new(name: 'DataReplicationInitiationSteps')
    DataReplicationState = Shapes::StringShape.new(name: 'DataReplicationState')
    DeleteJobRequest = Shapes::StructureShape.new(name: 'DeleteJobRequest')
    DeleteJobResponse = Shapes::StructureShape.new(name: 'DeleteJobResponse')
    DeleteReplicationConfigurationTemplateRequest = Shapes::StructureShape.new(name: 'DeleteReplicationConfigurationTemplateRequest')
    DeleteReplicationConfigurationTemplateResponse = Shapes::StructureShape.new(name: 'DeleteReplicationConfigurationTemplateResponse')
    DeleteSourceServerRequest = Shapes::StructureShape.new(name: 'DeleteSourceServerRequest')
    DeleteSourceServerResponse = Shapes::StructureShape.new(name: 'DeleteSourceServerResponse')
    DeleteVcenterClientRequest = Shapes::StructureShape.new(name: 'DeleteVcenterClientRequest')
    DescribeJobLogItemsRequest = Shapes::StructureShape.new(name: 'DescribeJobLogItemsRequest')
    DescribeJobLogItemsResponse = Shapes::StructureShape.new(name: 'DescribeJobLogItemsResponse')
    DescribeJobsRequest = Shapes::StructureShape.new(name: 'DescribeJobsRequest')
    DescribeJobsRequestFilters = Shapes::StructureShape.new(name: 'DescribeJobsRequestFilters')
    DescribeJobsRequestFiltersJobIDs = Shapes::ListShape.new(name: 'DescribeJobsRequestFiltersJobIDs')
    DescribeJobsResponse = Shapes::StructureShape.new(name: 'DescribeJobsResponse')
    DescribeReplicationConfigurationTemplatesRequest = Shapes::StructureShape.new(name: 'DescribeReplicationConfigurationTemplatesRequest')
    DescribeReplicationConfigurationTemplatesResponse = Shapes::StructureShape.new(name: 'DescribeReplicationConfigurationTemplatesResponse')
    DescribeSourceServersRequest = Shapes::StructureShape.new(name: 'DescribeSourceServersRequest')
    DescribeSourceServersRequestFilters = Shapes::StructureShape.new(name: 'DescribeSourceServersRequestFilters')
    DescribeSourceServersRequestFiltersIDs = Shapes::ListShape.new(name: 'DescribeSourceServersRequestFiltersIDs')
    DescribeSourceServersResponse = Shapes::StructureShape.new(name: 'DescribeSourceServersResponse')
    DescribeVcenterClientsRequest = Shapes::StructureShape.new(name: 'DescribeVcenterClientsRequest')
    DescribeVcenterClientsResponse = Shapes::StructureShape.new(name: 'DescribeVcenterClientsResponse')
    DisconnectFromServiceRequest = Shapes::StructureShape.new(name: 'DisconnectFromServiceRequest')
    Disk = Shapes::StructureShape.new(name: 'Disk')
    Disks = Shapes::ListShape.new(name: 'Disks')
    EC2InstanceID = Shapes::StringShape.new(name: 'EC2InstanceID')
    EC2InstanceType = Shapes::StringShape.new(name: 'EC2InstanceType')
    FinalizeCutoverRequest = Shapes::StructureShape.new(name: 'FinalizeCutoverRequest')
    FirstBoot = Shapes::StringShape.new(name: 'FirstBoot')
    GetLaunchConfigurationRequest = Shapes::StructureShape.new(name: 'GetLaunchConfigurationRequest')
    GetReplicationConfigurationRequest = Shapes::StructureShape.new(name: 'GetReplicationConfigurationRequest')
    IPsList = Shapes::ListShape.new(name: 'IPsList')
    ISO8601DatetimeString = Shapes::StringShape.new(name: 'ISO8601DatetimeString')
    IdentificationHints = Shapes::StructureShape.new(name: 'IdentificationHints')
    InitializeServiceRequest = Shapes::StructureShape.new(name: 'InitializeServiceRequest')
    InitializeServiceResponse = Shapes::StructureShape.new(name: 'InitializeServiceResponse')
    InitiatedBy = Shapes::StringShape.new(name: 'InitiatedBy')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    Job = Shapes::StructureShape.new(name: 'Job')
    JobID = Shapes::StringShape.new(name: 'JobID')
    JobLog = Shapes::StructureShape.new(name: 'JobLog')
    JobLogEvent = Shapes::StringShape.new(name: 'JobLogEvent')
    JobLogEventData = Shapes::StructureShape.new(name: 'JobLogEventData')
    JobLogs = Shapes::ListShape.new(name: 'JobLogs')
    JobStatus = Shapes::StringShape.new(name: 'JobStatus')
    JobType = Shapes::StringShape.new(name: 'JobType')
    JobsList = Shapes::ListShape.new(name: 'JobsList')
    LargeBoundedString = Shapes::StringShape.new(name: 'LargeBoundedString')
    LaunchConfiguration = Shapes::StructureShape.new(name: 'LaunchConfiguration')
    LaunchDisposition = Shapes::StringShape.new(name: 'LaunchDisposition')
    LaunchStatus = Shapes::StringShape.new(name: 'LaunchStatus')
    LaunchedInstance = Shapes::StructureShape.new(name: 'LaunchedInstance')
    Licensing = Shapes::StructureShape.new(name: 'Licensing')
    LifeCycle = Shapes::StructureShape.new(name: 'LifeCycle')
    LifeCycleLastCutover = Shapes::StructureShape.new(name: 'LifeCycleLastCutover')
    LifeCycleLastCutoverFinalized = Shapes::StructureShape.new(name: 'LifeCycleLastCutoverFinalized')
    LifeCycleLastCutoverInitiated = Shapes::StructureShape.new(name: 'LifeCycleLastCutoverInitiated')
    LifeCycleLastCutoverReverted = Shapes::StructureShape.new(name: 'LifeCycleLastCutoverReverted')
    LifeCycleLastTest = Shapes::StructureShape.new(name: 'LifeCycleLastTest')
    LifeCycleLastTestFinalized = Shapes::StructureShape.new(name: 'LifeCycleLastTestFinalized')
    LifeCycleLastTestInitiated = Shapes::StructureShape.new(name: 'LifeCycleLastTestInitiated')
    LifeCycleLastTestReverted = Shapes::StructureShape.new(name: 'LifeCycleLastTestReverted')
    LifeCycleState = Shapes::StringShape.new(name: 'LifeCycleState')
    LifeCycleStates = Shapes::ListShape.new(name: 'LifeCycleStates')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    MarkAsArchivedRequest = Shapes::StructureShape.new(name: 'MarkAsArchivedRequest')
    NetworkInterface = Shapes::StructureShape.new(name: 'NetworkInterface')
    NetworkInterfaces = Shapes::ListShape.new(name: 'NetworkInterfaces')
    OS = Shapes::StructureShape.new(name: 'OS')
    PaginationToken = Shapes::StringShape.new(name: 'PaginationToken')
    ParticipatingServer = Shapes::StructureShape.new(name: 'ParticipatingServer')
    ParticipatingServers = Shapes::ListShape.new(name: 'ParticipatingServers')
    PositiveInteger = Shapes::IntegerShape.new(name: 'PositiveInteger')
    ReplicationConfiguration = Shapes::StructureShape.new(name: 'ReplicationConfiguration')
    ReplicationConfigurationDataPlaneRouting = Shapes::StringShape.new(name: 'ReplicationConfigurationDataPlaneRouting')
    ReplicationConfigurationDefaultLargeStagingDiskType = Shapes::StringShape.new(name: 'ReplicationConfigurationDefaultLargeStagingDiskType')
    ReplicationConfigurationEbsEncryption = Shapes::StringShape.new(name: 'ReplicationConfigurationEbsEncryption')
    ReplicationConfigurationReplicatedDisk = Shapes::StructureShape.new(name: 'ReplicationConfigurationReplicatedDisk')
    ReplicationConfigurationReplicatedDiskStagingDiskType = Shapes::StringShape.new(name: 'ReplicationConfigurationReplicatedDiskStagingDiskType')
    ReplicationConfigurationReplicatedDisks = Shapes::ListShape.new(name: 'ReplicationConfigurationReplicatedDisks')
    ReplicationConfigurationTemplate = Shapes::StructureShape.new(name: 'ReplicationConfigurationTemplate')
    ReplicationConfigurationTemplateID = Shapes::StringShape.new(name: 'ReplicationConfigurationTemplateID')
    ReplicationConfigurationTemplateIDs = Shapes::ListShape.new(name: 'ReplicationConfigurationTemplateIDs')
    ReplicationConfigurationTemplates = Shapes::ListShape.new(name: 'ReplicationConfigurationTemplates')
    ReplicationServersSecurityGroupsIDs = Shapes::ListShape.new(name: 'ReplicationServersSecurityGroupsIDs')
    ReplicationType = Shapes::StringShape.new(name: 'ReplicationType')
    ReplicationTypes = Shapes::ListShape.new(name: 'ReplicationTypes')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    RetryDataReplicationRequest = Shapes::StructureShape.new(name: 'RetryDataReplicationRequest')
    SecurityGroupID = Shapes::StringShape.new(name: 'SecurityGroupID')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    SmallBoundedString = Shapes::StringShape.new(name: 'SmallBoundedString')
    SourceProperties = Shapes::StructureShape.new(name: 'SourceProperties')
    SourceServer = Shapes::StructureShape.new(name: 'SourceServer')
    SourceServerID = Shapes::StringShape.new(name: 'SourceServerID')
    SourceServersList = Shapes::ListShape.new(name: 'SourceServersList')
    StartCutoverRequest = Shapes::StructureShape.new(name: 'StartCutoverRequest')
    StartCutoverRequestSourceServerIDs = Shapes::ListShape.new(name: 'StartCutoverRequestSourceServerIDs')
    StartCutoverResponse = Shapes::StructureShape.new(name: 'StartCutoverResponse')
    StartReplicationRequest = Shapes::StructureShape.new(name: 'StartReplicationRequest')
    StartTestRequest = Shapes::StructureShape.new(name: 'StartTestRequest')
    StartTestRequestSourceServerIDs = Shapes::ListShape.new(name: 'StartTestRequestSourceServerIDs')
    StartTestResponse = Shapes::StructureShape.new(name: 'StartTestResponse')
    StrictlyPositiveInteger = Shapes::IntegerShape.new(name: 'StrictlyPositiveInteger')
    SubnetID = Shapes::StringShape.new(name: 'SubnetID')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeys = Shapes::ListShape.new(name: 'TagKeys')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TagsMap = Shapes::MapShape.new(name: 'TagsMap')
    TargetInstanceTypeRightSizingMethod = Shapes::StringShape.new(name: 'TargetInstanceTypeRightSizingMethod')
    TerminateTargetInstancesRequest = Shapes::StructureShape.new(name: 'TerminateTargetInstancesRequest')
    TerminateTargetInstancesRequestSourceServerIDs = Shapes::ListShape.new(name: 'TerminateTargetInstancesRequestSourceServerIDs')
    TerminateTargetInstancesResponse = Shapes::StructureShape.new(name: 'TerminateTargetInstancesResponse')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    UninitializedAccountException = Shapes::StructureShape.new(name: 'UninitializedAccountException')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UpdateLaunchConfigurationRequest = Shapes::StructureShape.new(name: 'UpdateLaunchConfigurationRequest')
    UpdateReplicationConfigurationRequest = Shapes::StructureShape.new(name: 'UpdateReplicationConfigurationRequest')
    UpdateReplicationConfigurationTemplateRequest = Shapes::StructureShape.new(name: 'UpdateReplicationConfigurationTemplateRequest')
    UpdateSourceServerReplicationTypeRequest = Shapes::StructureShape.new(name: 'UpdateSourceServerReplicationTypeRequest')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationExceptionField = Shapes::StructureShape.new(name: 'ValidationExceptionField')
    ValidationExceptionFieldList = Shapes::ListShape.new(name: 'ValidationExceptionFieldList')
    ValidationExceptionReason = Shapes::StringShape.new(name: 'ValidationExceptionReason')
    VcenterClient = Shapes::StructureShape.new(name: 'VcenterClient')
    VcenterClientID = Shapes::StringShape.new(name: 'VcenterClientID')
    VcenterClientList = Shapes::ListShape.new(name: 'VcenterClientList')

    AccessDeniedException.add_member(:code, Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: "code"))
    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    CPU.add_member(:cores, Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "cores"))
    CPU.add_member(:model_name, Shapes::ShapeRef.new(shape: BoundedString, location_name: "modelName"))
    CPU.struct_class = Types::CPU

    ChangeServerLifeCycleStateRequest.add_member(:life_cycle, Shapes::ShapeRef.new(shape: ChangeServerLifeCycleStateSourceServerLifecycle, required: true, location_name: "lifeCycle"))
    ChangeServerLifeCycleStateRequest.add_member(:source_server_id, Shapes::ShapeRef.new(shape: SourceServerID, required: true, location_name: "sourceServerID"))
    ChangeServerLifeCycleStateRequest.struct_class = Types::ChangeServerLifeCycleStateRequest

    ChangeServerLifeCycleStateSourceServerLifecycle.add_member(:state, Shapes::ShapeRef.new(shape: ChangeServerLifeCycleStateSourceServerLifecycleState, required: true, location_name: "state"))
    ChangeServerLifeCycleStateSourceServerLifecycle.struct_class = Types::ChangeServerLifeCycleStateSourceServerLifecycle

    ConflictException.add_member(:code, Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: "code"))
    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: "message"))
    ConflictException.add_member(:resource_id, Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: "resourceId"))
    ConflictException.add_member(:resource_type, Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: "resourceType"))
    ConflictException.struct_class = Types::ConflictException

    Cpus.member = Shapes::ShapeRef.new(shape: CPU)

    CreateReplicationConfigurationTemplateRequest.add_member(:associate_default_security_group, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "associateDefaultSecurityGroup"))
    CreateReplicationConfigurationTemplateRequest.add_member(:bandwidth_throttling, Shapes::ShapeRef.new(shape: PositiveInteger, required: true, location_name: "bandwidthThrottling"))
    CreateReplicationConfigurationTemplateRequest.add_member(:create_public_ip, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "createPublicIP"))
    CreateReplicationConfigurationTemplateRequest.add_member(:data_plane_routing, Shapes::ShapeRef.new(shape: ReplicationConfigurationDataPlaneRouting, required: true, location_name: "dataPlaneRouting"))
    CreateReplicationConfigurationTemplateRequest.add_member(:default_large_staging_disk_type, Shapes::ShapeRef.new(shape: ReplicationConfigurationDefaultLargeStagingDiskType, required: true, location_name: "defaultLargeStagingDiskType"))
    CreateReplicationConfigurationTemplateRequest.add_member(:ebs_encryption, Shapes::ShapeRef.new(shape: ReplicationConfigurationEbsEncryption, required: true, location_name: "ebsEncryption"))
    CreateReplicationConfigurationTemplateRequest.add_member(:ebs_encryption_key_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "ebsEncryptionKeyArn"))
    CreateReplicationConfigurationTemplateRequest.add_member(:replication_server_instance_type, Shapes::ShapeRef.new(shape: EC2InstanceType, required: true, location_name: "replicationServerInstanceType"))
    CreateReplicationConfigurationTemplateRequest.add_member(:replication_servers_security_groups_i_ds, Shapes::ShapeRef.new(shape: ReplicationServersSecurityGroupsIDs, required: true, location_name: "replicationServersSecurityGroupsIDs"))
    CreateReplicationConfigurationTemplateRequest.add_member(:staging_area_subnet_id, Shapes::ShapeRef.new(shape: SubnetID, required: true, location_name: "stagingAreaSubnetId"))
    CreateReplicationConfigurationTemplateRequest.add_member(:staging_area_tags, Shapes::ShapeRef.new(shape: TagsMap, required: true, location_name: "stagingAreaTags"))
    CreateReplicationConfigurationTemplateRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    CreateReplicationConfigurationTemplateRequest.add_member(:use_dedicated_replication_server, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "useDedicatedReplicationServer"))
    CreateReplicationConfigurationTemplateRequest.struct_class = Types::CreateReplicationConfigurationTemplateRequest

    DataReplicationError.add_member(:error, Shapes::ShapeRef.new(shape: DataReplicationErrorString, location_name: "error"))
    DataReplicationError.add_member(:raw_error, Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: "rawError"))
    DataReplicationError.struct_class = Types::DataReplicationError

    DataReplicationInfo.add_member(:data_replication_error, Shapes::ShapeRef.new(shape: DataReplicationError, location_name: "dataReplicationError"))
    DataReplicationInfo.add_member(:data_replication_initiation, Shapes::ShapeRef.new(shape: DataReplicationInitiation, location_name: "dataReplicationInitiation"))
    DataReplicationInfo.add_member(:data_replication_state, Shapes::ShapeRef.new(shape: DataReplicationState, location_name: "dataReplicationState"))
    DataReplicationInfo.add_member(:eta_date_time, Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: "etaDateTime"))
    DataReplicationInfo.add_member(:lag_duration, Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: "lagDuration"))
    DataReplicationInfo.add_member(:last_snapshot_date_time, Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: "lastSnapshotDateTime"))
    DataReplicationInfo.add_member(:replicated_disks, Shapes::ShapeRef.new(shape: DataReplicationInfoReplicatedDisks, location_name: "replicatedDisks"))
    DataReplicationInfo.struct_class = Types::DataReplicationInfo

    DataReplicationInfoReplicatedDisk.add_member(:backlogged_storage_bytes, Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "backloggedStorageBytes"))
    DataReplicationInfoReplicatedDisk.add_member(:device_name, Shapes::ShapeRef.new(shape: BoundedString, location_name: "deviceName"))
    DataReplicationInfoReplicatedDisk.add_member(:replicated_storage_bytes, Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "replicatedStorageBytes"))
    DataReplicationInfoReplicatedDisk.add_member(:rescanned_storage_bytes, Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "rescannedStorageBytes"))
    DataReplicationInfoReplicatedDisk.add_member(:total_storage_bytes, Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "totalStorageBytes"))
    DataReplicationInfoReplicatedDisk.struct_class = Types::DataReplicationInfoReplicatedDisk

    DataReplicationInfoReplicatedDisks.member = Shapes::ShapeRef.new(shape: DataReplicationInfoReplicatedDisk)

    DataReplicationInitiation.add_member(:next_attempt_date_time, Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: "nextAttemptDateTime"))
    DataReplicationInitiation.add_member(:start_date_time, Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: "startDateTime"))
    DataReplicationInitiation.add_member(:steps, Shapes::ShapeRef.new(shape: DataReplicationInitiationSteps, location_name: "steps"))
    DataReplicationInitiation.struct_class = Types::DataReplicationInitiation

    DataReplicationInitiationStep.add_member(:name, Shapes::ShapeRef.new(shape: DataReplicationInitiationStepName, location_name: "name"))
    DataReplicationInitiationStep.add_member(:status, Shapes::ShapeRef.new(shape: DataReplicationInitiationStepStatus, location_name: "status"))
    DataReplicationInitiationStep.struct_class = Types::DataReplicationInitiationStep

    DataReplicationInitiationSteps.member = Shapes::ShapeRef.new(shape: DataReplicationInitiationStep)

    DeleteJobRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: JobID, required: true, location_name: "jobID"))
    DeleteJobRequest.struct_class = Types::DeleteJobRequest

    DeleteJobResponse.struct_class = Types::DeleteJobResponse

    DeleteReplicationConfigurationTemplateRequest.add_member(:replication_configuration_template_id, Shapes::ShapeRef.new(shape: ReplicationConfigurationTemplateID, required: true, location_name: "replicationConfigurationTemplateID"))
    DeleteReplicationConfigurationTemplateRequest.struct_class = Types::DeleteReplicationConfigurationTemplateRequest

    DeleteReplicationConfigurationTemplateResponse.struct_class = Types::DeleteReplicationConfigurationTemplateResponse

    DeleteSourceServerRequest.add_member(:source_server_id, Shapes::ShapeRef.new(shape: SourceServerID, required: true, location_name: "sourceServerID"))
    DeleteSourceServerRequest.struct_class = Types::DeleteSourceServerRequest

    DeleteSourceServerResponse.struct_class = Types::DeleteSourceServerResponse

    DeleteVcenterClientRequest.add_member(:vcenter_client_id, Shapes::ShapeRef.new(shape: VcenterClientID, required: true, location_name: "vcenterClientID"))
    DeleteVcenterClientRequest.struct_class = Types::DeleteVcenterClientRequest

    DescribeJobLogItemsRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: JobID, required: true, location_name: "jobID"))
    DescribeJobLogItemsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: StrictlyPositiveInteger, location_name: "maxResults"))
    DescribeJobLogItemsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    DescribeJobLogItemsRequest.struct_class = Types::DescribeJobLogItemsRequest

    DescribeJobLogItemsResponse.add_member(:items, Shapes::ShapeRef.new(shape: JobLogs, location_name: "items"))
    DescribeJobLogItemsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    DescribeJobLogItemsResponse.struct_class = Types::DescribeJobLogItemsResponse

    DescribeJobsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: DescribeJobsRequestFilters, required: true, location_name: "filters"))
    DescribeJobsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: StrictlyPositiveInteger, location_name: "maxResults"))
    DescribeJobsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    DescribeJobsRequest.struct_class = Types::DescribeJobsRequest

    DescribeJobsRequestFilters.add_member(:from_date, Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: "fromDate"))
    DescribeJobsRequestFilters.add_member(:job_i_ds, Shapes::ShapeRef.new(shape: DescribeJobsRequestFiltersJobIDs, location_name: "jobIDs"))
    DescribeJobsRequestFilters.add_member(:to_date, Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: "toDate"))
    DescribeJobsRequestFilters.struct_class = Types::DescribeJobsRequestFilters

    DescribeJobsRequestFiltersJobIDs.member = Shapes::ShapeRef.new(shape: JobID)

    DescribeJobsResponse.add_member(:items, Shapes::ShapeRef.new(shape: JobsList, location_name: "items"))
    DescribeJobsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    DescribeJobsResponse.struct_class = Types::DescribeJobsResponse

    DescribeReplicationConfigurationTemplatesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: StrictlyPositiveInteger, location_name: "maxResults"))
    DescribeReplicationConfigurationTemplatesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    DescribeReplicationConfigurationTemplatesRequest.add_member(:replication_configuration_template_i_ds, Shapes::ShapeRef.new(shape: ReplicationConfigurationTemplateIDs, required: true, location_name: "replicationConfigurationTemplateIDs"))
    DescribeReplicationConfigurationTemplatesRequest.struct_class = Types::DescribeReplicationConfigurationTemplatesRequest

    DescribeReplicationConfigurationTemplatesResponse.add_member(:items, Shapes::ShapeRef.new(shape: ReplicationConfigurationTemplates, location_name: "items"))
    DescribeReplicationConfigurationTemplatesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    DescribeReplicationConfigurationTemplatesResponse.struct_class = Types::DescribeReplicationConfigurationTemplatesResponse

    DescribeSourceServersRequest.add_member(:filters, Shapes::ShapeRef.new(shape: DescribeSourceServersRequestFilters, required: true, location_name: "filters"))
    DescribeSourceServersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: StrictlyPositiveInteger, location_name: "maxResults"))
    DescribeSourceServersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    DescribeSourceServersRequest.struct_class = Types::DescribeSourceServersRequest

    DescribeSourceServersRequestFilters.add_member(:is_archived, Shapes::ShapeRef.new(shape: Boolean, location_name: "isArchived"))
    DescribeSourceServersRequestFilters.add_member(:life_cycle_states, Shapes::ShapeRef.new(shape: LifeCycleStates, location_name: "lifeCycleStates"))
    DescribeSourceServersRequestFilters.add_member(:replication_types, Shapes::ShapeRef.new(shape: ReplicationTypes, location_name: "replicationTypes"))
    DescribeSourceServersRequestFilters.add_member(:source_server_i_ds, Shapes::ShapeRef.new(shape: DescribeSourceServersRequestFiltersIDs, location_name: "sourceServerIDs"))
    DescribeSourceServersRequestFilters.struct_class = Types::DescribeSourceServersRequestFilters

    DescribeSourceServersRequestFiltersIDs.member = Shapes::ShapeRef.new(shape: SourceServerID)

    DescribeSourceServersResponse.add_member(:items, Shapes::ShapeRef.new(shape: SourceServersList, location_name: "items"))
    DescribeSourceServersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    DescribeSourceServersResponse.struct_class = Types::DescribeSourceServersResponse

    DescribeVcenterClientsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: StrictlyPositiveInteger, location: "querystring", location_name: "maxResults"))
    DescribeVcenterClientsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    DescribeVcenterClientsRequest.struct_class = Types::DescribeVcenterClientsRequest

    DescribeVcenterClientsResponse.add_member(:items, Shapes::ShapeRef.new(shape: VcenterClientList, location_name: "items"))
    DescribeVcenterClientsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    DescribeVcenterClientsResponse.struct_class = Types::DescribeVcenterClientsResponse

    DisconnectFromServiceRequest.add_member(:source_server_id, Shapes::ShapeRef.new(shape: SourceServerID, required: true, location_name: "sourceServerID"))
    DisconnectFromServiceRequest.struct_class = Types::DisconnectFromServiceRequest

    Disk.add_member(:bytes, Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "bytes"))
    Disk.add_member(:device_name, Shapes::ShapeRef.new(shape: BoundedString, location_name: "deviceName"))
    Disk.struct_class = Types::Disk

    Disks.member = Shapes::ShapeRef.new(shape: Disk)

    FinalizeCutoverRequest.add_member(:source_server_id, Shapes::ShapeRef.new(shape: SourceServerID, required: true, location_name: "sourceServerID"))
    FinalizeCutoverRequest.struct_class = Types::FinalizeCutoverRequest

    GetLaunchConfigurationRequest.add_member(:source_server_id, Shapes::ShapeRef.new(shape: SourceServerID, required: true, location_name: "sourceServerID"))
    GetLaunchConfigurationRequest.struct_class = Types::GetLaunchConfigurationRequest

    GetReplicationConfigurationRequest.add_member(:source_server_id, Shapes::ShapeRef.new(shape: SourceServerID, required: true, location_name: "sourceServerID"))
    GetReplicationConfigurationRequest.struct_class = Types::GetReplicationConfigurationRequest

    IPsList.member = Shapes::ShapeRef.new(shape: BoundedString)

    IdentificationHints.add_member(:aws_instance_id, Shapes::ShapeRef.new(shape: EC2InstanceID, location_name: "awsInstanceID"))
    IdentificationHints.add_member(:fqdn, Shapes::ShapeRef.new(shape: BoundedString, location_name: "fqdn"))
    IdentificationHints.add_member(:hostname, Shapes::ShapeRef.new(shape: BoundedString, location_name: "hostname"))
    IdentificationHints.add_member(:vm_path, Shapes::ShapeRef.new(shape: BoundedString, location_name: "vmPath"))
    IdentificationHints.add_member(:vm_ware_uuid, Shapes::ShapeRef.new(shape: BoundedString, location_name: "vmWareUuid"))
    IdentificationHints.struct_class = Types::IdentificationHints

    InitializeServiceRequest.struct_class = Types::InitializeServiceRequest

    InitializeServiceResponse.struct_class = Types::InitializeServiceResponse

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: LargeBoundedString, required: true, location_name: "message"))
    InternalServerException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: PositiveInteger, location: "header", location_name: "Retry-After"))
    InternalServerException.struct_class = Types::InternalServerException

    Job.add_member(:arn, Shapes::ShapeRef.new(shape: ARN, location_name: "arn"))
    Job.add_member(:creation_date_time, Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: "creationDateTime"))
    Job.add_member(:end_date_time, Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: "endDateTime"))
    Job.add_member(:initiated_by, Shapes::ShapeRef.new(shape: InitiatedBy, location_name: "initiatedBy"))
    Job.add_member(:job_id, Shapes::ShapeRef.new(shape: JobID, required: true, location_name: "jobID"))
    Job.add_member(:participating_servers, Shapes::ShapeRef.new(shape: ParticipatingServers, location_name: "participatingServers"))
    Job.add_member(:status, Shapes::ShapeRef.new(shape: JobStatus, location_name: "status"))
    Job.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    Job.add_member(:type, Shapes::ShapeRef.new(shape: JobType, location_name: "type"))
    Job.struct_class = Types::Job

    JobLog.add_member(:event, Shapes::ShapeRef.new(shape: JobLogEvent, location_name: "event"))
    JobLog.add_member(:event_data, Shapes::ShapeRef.new(shape: JobLogEventData, location_name: "eventData"))
    JobLog.add_member(:log_date_time, Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: "logDateTime"))
    JobLog.struct_class = Types::JobLog

    JobLogEventData.add_member(:conversion_server_id, Shapes::ShapeRef.new(shape: EC2InstanceID, location_name: "conversionServerID"))
    JobLogEventData.add_member(:raw_error, Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: "rawError"))
    JobLogEventData.add_member(:source_server_id, Shapes::ShapeRef.new(shape: SourceServerID, location_name: "sourceServerID"))
    JobLogEventData.add_member(:target_instance_id, Shapes::ShapeRef.new(shape: EC2InstanceID, location_name: "targetInstanceID"))
    JobLogEventData.struct_class = Types::JobLogEventData

    JobLogs.member = Shapes::ShapeRef.new(shape: JobLog)

    JobsList.member = Shapes::ShapeRef.new(shape: Job)

    LaunchConfiguration.add_member(:copy_private_ip, Shapes::ShapeRef.new(shape: Boolean, location_name: "copyPrivateIp"))
    LaunchConfiguration.add_member(:copy_tags, Shapes::ShapeRef.new(shape: Boolean, location_name: "copyTags"))
    LaunchConfiguration.add_member(:ec2_launch_template_id, Shapes::ShapeRef.new(shape: BoundedString, location_name: "ec2LaunchTemplateID"))
    LaunchConfiguration.add_member(:launch_disposition, Shapes::ShapeRef.new(shape: LaunchDisposition, location_name: "launchDisposition"))
    LaunchConfiguration.add_member(:licensing, Shapes::ShapeRef.new(shape: Licensing, location_name: "licensing"))
    LaunchConfiguration.add_member(:name, Shapes::ShapeRef.new(shape: SmallBoundedString, location_name: "name"))
    LaunchConfiguration.add_member(:source_server_id, Shapes::ShapeRef.new(shape: SourceServerID, location_name: "sourceServerID"))
    LaunchConfiguration.add_member(:target_instance_type_right_sizing_method, Shapes::ShapeRef.new(shape: TargetInstanceTypeRightSizingMethod, location_name: "targetInstanceTypeRightSizingMethod"))
    LaunchConfiguration.struct_class = Types::LaunchConfiguration

    LaunchedInstance.add_member(:ec2_instance_id, Shapes::ShapeRef.new(shape: EC2InstanceID, location_name: "ec2InstanceID"))
    LaunchedInstance.add_member(:first_boot, Shapes::ShapeRef.new(shape: FirstBoot, location_name: "firstBoot"))
    LaunchedInstance.add_member(:job_id, Shapes::ShapeRef.new(shape: JobID, location_name: "jobID"))
    LaunchedInstance.struct_class = Types::LaunchedInstance

    Licensing.add_member(:os_byol, Shapes::ShapeRef.new(shape: Boolean, location_name: "osByol"))
    Licensing.struct_class = Types::Licensing

    LifeCycle.add_member(:added_to_service_date_time, Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: "addedToServiceDateTime"))
    LifeCycle.add_member(:elapsed_replication_duration, Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: "elapsedReplicationDuration"))
    LifeCycle.add_member(:first_byte_date_time, Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: "firstByteDateTime"))
    LifeCycle.add_member(:last_cutover, Shapes::ShapeRef.new(shape: LifeCycleLastCutover, location_name: "lastCutover"))
    LifeCycle.add_member(:last_seen_by_service_date_time, Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: "lastSeenByServiceDateTime"))
    LifeCycle.add_member(:last_test, Shapes::ShapeRef.new(shape: LifeCycleLastTest, location_name: "lastTest"))
    LifeCycle.add_member(:state, Shapes::ShapeRef.new(shape: LifeCycleState, location_name: "state"))
    LifeCycle.struct_class = Types::LifeCycle

    LifeCycleLastCutover.add_member(:finalized, Shapes::ShapeRef.new(shape: LifeCycleLastCutoverFinalized, location_name: "finalized"))
    LifeCycleLastCutover.add_member(:initiated, Shapes::ShapeRef.new(shape: LifeCycleLastCutoverInitiated, location_name: "initiated"))
    LifeCycleLastCutover.add_member(:reverted, Shapes::ShapeRef.new(shape: LifeCycleLastCutoverReverted, location_name: "reverted"))
    LifeCycleLastCutover.struct_class = Types::LifeCycleLastCutover

    LifeCycleLastCutoverFinalized.add_member(:api_call_date_time, Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: "apiCallDateTime"))
    LifeCycleLastCutoverFinalized.struct_class = Types::LifeCycleLastCutoverFinalized

    LifeCycleLastCutoverInitiated.add_member(:api_call_date_time, Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: "apiCallDateTime"))
    LifeCycleLastCutoverInitiated.add_member(:job_id, Shapes::ShapeRef.new(shape: JobID, location_name: "jobID"))
    LifeCycleLastCutoverInitiated.struct_class = Types::LifeCycleLastCutoverInitiated

    LifeCycleLastCutoverReverted.add_member(:api_call_date_time, Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: "apiCallDateTime"))
    LifeCycleLastCutoverReverted.struct_class = Types::LifeCycleLastCutoverReverted

    LifeCycleLastTest.add_member(:finalized, Shapes::ShapeRef.new(shape: LifeCycleLastTestFinalized, location_name: "finalized"))
    LifeCycleLastTest.add_member(:initiated, Shapes::ShapeRef.new(shape: LifeCycleLastTestInitiated, location_name: "initiated"))
    LifeCycleLastTest.add_member(:reverted, Shapes::ShapeRef.new(shape: LifeCycleLastTestReverted, location_name: "reverted"))
    LifeCycleLastTest.struct_class = Types::LifeCycleLastTest

    LifeCycleLastTestFinalized.add_member(:api_call_date_time, Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: "apiCallDateTime"))
    LifeCycleLastTestFinalized.struct_class = Types::LifeCycleLastTestFinalized

    LifeCycleLastTestInitiated.add_member(:api_call_date_time, Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: "apiCallDateTime"))
    LifeCycleLastTestInitiated.add_member(:job_id, Shapes::ShapeRef.new(shape: JobID, location_name: "jobID"))
    LifeCycleLastTestInitiated.struct_class = Types::LifeCycleLastTestInitiated

    LifeCycleLastTestReverted.add_member(:api_call_date_time, Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: "apiCallDateTime"))
    LifeCycleLastTestReverted.struct_class = Types::LifeCycleLastTestReverted

    LifeCycleStates.member = Shapes::ShapeRef.new(shape: LifeCycleState)

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location: "uri", location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    MarkAsArchivedRequest.add_member(:source_server_id, Shapes::ShapeRef.new(shape: SourceServerID, required: true, location_name: "sourceServerID"))
    MarkAsArchivedRequest.struct_class = Types::MarkAsArchivedRequest

    NetworkInterface.add_member(:ips, Shapes::ShapeRef.new(shape: IPsList, location_name: "ips"))
    NetworkInterface.add_member(:is_primary, Shapes::ShapeRef.new(shape: Boolean, location_name: "isPrimary"))
    NetworkInterface.add_member(:mac_address, Shapes::ShapeRef.new(shape: BoundedString, location_name: "macAddress"))
    NetworkInterface.struct_class = Types::NetworkInterface

    NetworkInterfaces.member = Shapes::ShapeRef.new(shape: NetworkInterface)

    OS.add_member(:full_string, Shapes::ShapeRef.new(shape: BoundedString, location_name: "fullString"))
    OS.struct_class = Types::OS

    ParticipatingServer.add_member(:launch_status, Shapes::ShapeRef.new(shape: LaunchStatus, location_name: "launchStatus"))
    ParticipatingServer.add_member(:source_server_id, Shapes::ShapeRef.new(shape: SourceServerID, location_name: "sourceServerID"))
    ParticipatingServer.struct_class = Types::ParticipatingServer

    ParticipatingServers.member = Shapes::ShapeRef.new(shape: ParticipatingServer)

    ReplicationConfiguration.add_member(:associate_default_security_group, Shapes::ShapeRef.new(shape: Boolean, location_name: "associateDefaultSecurityGroup"))
    ReplicationConfiguration.add_member(:bandwidth_throttling, Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "bandwidthThrottling"))
    ReplicationConfiguration.add_member(:create_public_ip, Shapes::ShapeRef.new(shape: Boolean, location_name: "createPublicIP"))
    ReplicationConfiguration.add_member(:data_plane_routing, Shapes::ShapeRef.new(shape: ReplicationConfigurationDataPlaneRouting, location_name: "dataPlaneRouting"))
    ReplicationConfiguration.add_member(:default_large_staging_disk_type, Shapes::ShapeRef.new(shape: ReplicationConfigurationDefaultLargeStagingDiskType, location_name: "defaultLargeStagingDiskType"))
    ReplicationConfiguration.add_member(:ebs_encryption, Shapes::ShapeRef.new(shape: ReplicationConfigurationEbsEncryption, location_name: "ebsEncryption"))
    ReplicationConfiguration.add_member(:ebs_encryption_key_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "ebsEncryptionKeyArn"))
    ReplicationConfiguration.add_member(:name, Shapes::ShapeRef.new(shape: SmallBoundedString, location_name: "name"))
    ReplicationConfiguration.add_member(:replicated_disks, Shapes::ShapeRef.new(shape: ReplicationConfigurationReplicatedDisks, location_name: "replicatedDisks"))
    ReplicationConfiguration.add_member(:replication_server_instance_type, Shapes::ShapeRef.new(shape: EC2InstanceType, location_name: "replicationServerInstanceType"))
    ReplicationConfiguration.add_member(:replication_servers_security_groups_i_ds, Shapes::ShapeRef.new(shape: ReplicationServersSecurityGroupsIDs, location_name: "replicationServersSecurityGroupsIDs"))
    ReplicationConfiguration.add_member(:source_server_id, Shapes::ShapeRef.new(shape: SourceServerID, location_name: "sourceServerID"))
    ReplicationConfiguration.add_member(:staging_area_subnet_id, Shapes::ShapeRef.new(shape: SubnetID, location_name: "stagingAreaSubnetId"))
    ReplicationConfiguration.add_member(:staging_area_tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "stagingAreaTags"))
    ReplicationConfiguration.add_member(:use_dedicated_replication_server, Shapes::ShapeRef.new(shape: Boolean, location_name: "useDedicatedReplicationServer"))
    ReplicationConfiguration.struct_class = Types::ReplicationConfiguration

    ReplicationConfigurationReplicatedDisk.add_member(:device_name, Shapes::ShapeRef.new(shape: BoundedString, location_name: "deviceName"))
    ReplicationConfigurationReplicatedDisk.add_member(:iops, Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "iops"))
    ReplicationConfigurationReplicatedDisk.add_member(:is_boot_disk, Shapes::ShapeRef.new(shape: Boolean, location_name: "isBootDisk"))
    ReplicationConfigurationReplicatedDisk.add_member(:staging_disk_type, Shapes::ShapeRef.new(shape: ReplicationConfigurationReplicatedDiskStagingDiskType, location_name: "stagingDiskType"))
    ReplicationConfigurationReplicatedDisk.struct_class = Types::ReplicationConfigurationReplicatedDisk

    ReplicationConfigurationReplicatedDisks.member = Shapes::ShapeRef.new(shape: ReplicationConfigurationReplicatedDisk)

    ReplicationConfigurationTemplate.add_member(:arn, Shapes::ShapeRef.new(shape: ARN, location_name: "arn"))
    ReplicationConfigurationTemplate.add_member(:associate_default_security_group, Shapes::ShapeRef.new(shape: Boolean, location_name: "associateDefaultSecurityGroup"))
    ReplicationConfigurationTemplate.add_member(:bandwidth_throttling, Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "bandwidthThrottling"))
    ReplicationConfigurationTemplate.add_member(:create_public_ip, Shapes::ShapeRef.new(shape: Boolean, location_name: "createPublicIP"))
    ReplicationConfigurationTemplate.add_member(:data_plane_routing, Shapes::ShapeRef.new(shape: ReplicationConfigurationDataPlaneRouting, location_name: "dataPlaneRouting"))
    ReplicationConfigurationTemplate.add_member(:default_large_staging_disk_type, Shapes::ShapeRef.new(shape: ReplicationConfigurationDefaultLargeStagingDiskType, location_name: "defaultLargeStagingDiskType"))
    ReplicationConfigurationTemplate.add_member(:ebs_encryption, Shapes::ShapeRef.new(shape: ReplicationConfigurationEbsEncryption, location_name: "ebsEncryption"))
    ReplicationConfigurationTemplate.add_member(:ebs_encryption_key_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "ebsEncryptionKeyArn"))
    ReplicationConfigurationTemplate.add_member(:replication_configuration_template_id, Shapes::ShapeRef.new(shape: ReplicationConfigurationTemplateID, required: true, location_name: "replicationConfigurationTemplateID"))
    ReplicationConfigurationTemplate.add_member(:replication_server_instance_type, Shapes::ShapeRef.new(shape: EC2InstanceType, location_name: "replicationServerInstanceType"))
    ReplicationConfigurationTemplate.add_member(:replication_servers_security_groups_i_ds, Shapes::ShapeRef.new(shape: ReplicationServersSecurityGroupsIDs, location_name: "replicationServersSecurityGroupsIDs"))
    ReplicationConfigurationTemplate.add_member(:staging_area_subnet_id, Shapes::ShapeRef.new(shape: SubnetID, location_name: "stagingAreaSubnetId"))
    ReplicationConfigurationTemplate.add_member(:staging_area_tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "stagingAreaTags"))
    ReplicationConfigurationTemplate.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    ReplicationConfigurationTemplate.add_member(:use_dedicated_replication_server, Shapes::ShapeRef.new(shape: Boolean, location_name: "useDedicatedReplicationServer"))
    ReplicationConfigurationTemplate.struct_class = Types::ReplicationConfigurationTemplate

    ReplicationConfigurationTemplateIDs.member = Shapes::ShapeRef.new(shape: ReplicationConfigurationTemplateID)

    ReplicationConfigurationTemplates.member = Shapes::ShapeRef.new(shape: ReplicationConfigurationTemplate)

    ReplicationServersSecurityGroupsIDs.member = Shapes::ShapeRef.new(shape: SecurityGroupID)

    ReplicationTypes.member = Shapes::ShapeRef.new(shape: ReplicationType)

    ResourceNotFoundException.add_member(:code, Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: "code"))
    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: "message"))
    ResourceNotFoundException.add_member(:resource_id, Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: "resourceId"))
    ResourceNotFoundException.add_member(:resource_type, Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: "resourceType"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    RetryDataReplicationRequest.add_member(:source_server_id, Shapes::ShapeRef.new(shape: SourceServerID, required: true, location_name: "sourceServerID"))
    RetryDataReplicationRequest.struct_class = Types::RetryDataReplicationRequest

    ServiceQuotaExceededException.add_member(:code, Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: "code"))
    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: "message"))
    ServiceQuotaExceededException.add_member(:quota_code, Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: "quotaCode"))
    ServiceQuotaExceededException.add_member(:resource_id, Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: "resourceId"))
    ServiceQuotaExceededException.add_member(:resource_type, Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: "resourceType"))
    ServiceQuotaExceededException.add_member(:service_code, Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: "serviceCode"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    SourceProperties.add_member(:cpus, Shapes::ShapeRef.new(shape: Cpus, location_name: "cpus"))
    SourceProperties.add_member(:disks, Shapes::ShapeRef.new(shape: Disks, location_name: "disks"))
    SourceProperties.add_member(:identification_hints, Shapes::ShapeRef.new(shape: IdentificationHints, location_name: "identificationHints"))
    SourceProperties.add_member(:last_updated_date_time, Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: "lastUpdatedDateTime"))
    SourceProperties.add_member(:network_interfaces, Shapes::ShapeRef.new(shape: NetworkInterfaces, location_name: "networkInterfaces"))
    SourceProperties.add_member(:os, Shapes::ShapeRef.new(shape: OS, location_name: "os"))
    SourceProperties.add_member(:ram_bytes, Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "ramBytes"))
    SourceProperties.add_member(:recommended_instance_type, Shapes::ShapeRef.new(shape: EC2InstanceType, location_name: "recommendedInstanceType"))
    SourceProperties.struct_class = Types::SourceProperties

    SourceServer.add_member(:arn, Shapes::ShapeRef.new(shape: ARN, location_name: "arn"))
    SourceServer.add_member(:data_replication_info, Shapes::ShapeRef.new(shape: DataReplicationInfo, location_name: "dataReplicationInfo"))
    SourceServer.add_member(:is_archived, Shapes::ShapeRef.new(shape: Boolean, location_name: "isArchived"))
    SourceServer.add_member(:launched_instance, Shapes::ShapeRef.new(shape: LaunchedInstance, location_name: "launchedInstance"))
    SourceServer.add_member(:life_cycle, Shapes::ShapeRef.new(shape: LifeCycle, location_name: "lifeCycle"))
    SourceServer.add_member(:replication_type, Shapes::ShapeRef.new(shape: ReplicationType, location_name: "replicationType"))
    SourceServer.add_member(:source_properties, Shapes::ShapeRef.new(shape: SourceProperties, location_name: "sourceProperties"))
    SourceServer.add_member(:source_server_id, Shapes::ShapeRef.new(shape: SourceServerID, location_name: "sourceServerID"))
    SourceServer.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    SourceServer.add_member(:vcenter_client_id, Shapes::ShapeRef.new(shape: VcenterClientID, location_name: "vcenterClientID"))
    SourceServer.struct_class = Types::SourceServer

    SourceServersList.member = Shapes::ShapeRef.new(shape: SourceServer)

    StartCutoverRequest.add_member(:source_server_i_ds, Shapes::ShapeRef.new(shape: StartCutoverRequestSourceServerIDs, required: true, location_name: "sourceServerIDs"))
    StartCutoverRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    StartCutoverRequest.struct_class = Types::StartCutoverRequest

    StartCutoverRequestSourceServerIDs.member = Shapes::ShapeRef.new(shape: SourceServerID)

    StartCutoverResponse.add_member(:job, Shapes::ShapeRef.new(shape: Job, location_name: "job"))
    StartCutoverResponse.struct_class = Types::StartCutoverResponse

    StartReplicationRequest.add_member(:source_server_id, Shapes::ShapeRef.new(shape: SourceServerID, required: true, location_name: "sourceServerID"))
    StartReplicationRequest.struct_class = Types::StartReplicationRequest

    StartTestRequest.add_member(:source_server_i_ds, Shapes::ShapeRef.new(shape: StartTestRequestSourceServerIDs, required: true, location_name: "sourceServerIDs"))
    StartTestRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    StartTestRequest.struct_class = Types::StartTestRequest

    StartTestRequestSourceServerIDs.member = Shapes::ShapeRef.new(shape: SourceServerID)

    StartTestResponse.add_member(:job, Shapes::ShapeRef.new(shape: Job, location_name: "job"))
    StartTestResponse.struct_class = Types::StartTestResponse

    TagKeys.member = Shapes::ShapeRef.new(shape: TagKey)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location: "uri", location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagsMap.key = Shapes::ShapeRef.new(shape: TagKey)
    TagsMap.value = Shapes::ShapeRef.new(shape: TagValue)

    TerminateTargetInstancesRequest.add_member(:source_server_i_ds, Shapes::ShapeRef.new(shape: TerminateTargetInstancesRequestSourceServerIDs, required: true, location_name: "sourceServerIDs"))
    TerminateTargetInstancesRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    TerminateTargetInstancesRequest.struct_class = Types::TerminateTargetInstancesRequest

    TerminateTargetInstancesRequestSourceServerIDs.member = Shapes::ShapeRef.new(shape: SourceServerID)

    TerminateTargetInstancesResponse.add_member(:job, Shapes::ShapeRef.new(shape: Job, location_name: "job"))
    TerminateTargetInstancesResponse.struct_class = Types::TerminateTargetInstancesResponse

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: LargeBoundedString, required: true, location_name: "message"))
    ThrottlingException.add_member(:quota_code, Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: "quotaCode"))
    ThrottlingException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: LargeBoundedString, location: "header", location_name: "Retry-After"))
    ThrottlingException.add_member(:service_code, Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: "serviceCode"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UninitializedAccountException.add_member(:code, Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: "code"))
    UninitializedAccountException.add_member(:message, Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: "message"))
    UninitializedAccountException.struct_class = Types::UninitializedAccountException

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location: "uri", location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeys, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UpdateLaunchConfigurationRequest.add_member(:copy_private_ip, Shapes::ShapeRef.new(shape: Boolean, location_name: "copyPrivateIp"))
    UpdateLaunchConfigurationRequest.add_member(:copy_tags, Shapes::ShapeRef.new(shape: Boolean, location_name: "copyTags"))
    UpdateLaunchConfigurationRequest.add_member(:launch_disposition, Shapes::ShapeRef.new(shape: LaunchDisposition, location_name: "launchDisposition"))
    UpdateLaunchConfigurationRequest.add_member(:licensing, Shapes::ShapeRef.new(shape: Licensing, location_name: "licensing"))
    UpdateLaunchConfigurationRequest.add_member(:name, Shapes::ShapeRef.new(shape: SmallBoundedString, location_name: "name"))
    UpdateLaunchConfigurationRequest.add_member(:source_server_id, Shapes::ShapeRef.new(shape: SourceServerID, required: true, location_name: "sourceServerID"))
    UpdateLaunchConfigurationRequest.add_member(:target_instance_type_right_sizing_method, Shapes::ShapeRef.new(shape: TargetInstanceTypeRightSizingMethod, location_name: "targetInstanceTypeRightSizingMethod"))
    UpdateLaunchConfigurationRequest.struct_class = Types::UpdateLaunchConfigurationRequest

    UpdateReplicationConfigurationRequest.add_member(:associate_default_security_group, Shapes::ShapeRef.new(shape: Boolean, location_name: "associateDefaultSecurityGroup"))
    UpdateReplicationConfigurationRequest.add_member(:bandwidth_throttling, Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "bandwidthThrottling"))
    UpdateReplicationConfigurationRequest.add_member(:create_public_ip, Shapes::ShapeRef.new(shape: Boolean, location_name: "createPublicIP"))
    UpdateReplicationConfigurationRequest.add_member(:data_plane_routing, Shapes::ShapeRef.new(shape: ReplicationConfigurationDataPlaneRouting, location_name: "dataPlaneRouting"))
    UpdateReplicationConfigurationRequest.add_member(:default_large_staging_disk_type, Shapes::ShapeRef.new(shape: ReplicationConfigurationDefaultLargeStagingDiskType, location_name: "defaultLargeStagingDiskType"))
    UpdateReplicationConfigurationRequest.add_member(:ebs_encryption, Shapes::ShapeRef.new(shape: ReplicationConfigurationEbsEncryption, location_name: "ebsEncryption"))
    UpdateReplicationConfigurationRequest.add_member(:ebs_encryption_key_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "ebsEncryptionKeyArn"))
    UpdateReplicationConfigurationRequest.add_member(:name, Shapes::ShapeRef.new(shape: SmallBoundedString, location_name: "name"))
    UpdateReplicationConfigurationRequest.add_member(:replicated_disks, Shapes::ShapeRef.new(shape: ReplicationConfigurationReplicatedDisks, location_name: "replicatedDisks"))
    UpdateReplicationConfigurationRequest.add_member(:replication_server_instance_type, Shapes::ShapeRef.new(shape: EC2InstanceType, location_name: "replicationServerInstanceType"))
    UpdateReplicationConfigurationRequest.add_member(:replication_servers_security_groups_i_ds, Shapes::ShapeRef.new(shape: ReplicationServersSecurityGroupsIDs, location_name: "replicationServersSecurityGroupsIDs"))
    UpdateReplicationConfigurationRequest.add_member(:source_server_id, Shapes::ShapeRef.new(shape: SourceServerID, required: true, location_name: "sourceServerID"))
    UpdateReplicationConfigurationRequest.add_member(:staging_area_subnet_id, Shapes::ShapeRef.new(shape: SubnetID, location_name: "stagingAreaSubnetId"))
    UpdateReplicationConfigurationRequest.add_member(:staging_area_tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "stagingAreaTags"))
    UpdateReplicationConfigurationRequest.add_member(:use_dedicated_replication_server, Shapes::ShapeRef.new(shape: Boolean, location_name: "useDedicatedReplicationServer"))
    UpdateReplicationConfigurationRequest.struct_class = Types::UpdateReplicationConfigurationRequest

    UpdateReplicationConfigurationTemplateRequest.add_member(:arn, Shapes::ShapeRef.new(shape: ARN, location_name: "arn"))
    UpdateReplicationConfigurationTemplateRequest.add_member(:associate_default_security_group, Shapes::ShapeRef.new(shape: Boolean, location_name: "associateDefaultSecurityGroup"))
    UpdateReplicationConfigurationTemplateRequest.add_member(:bandwidth_throttling, Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "bandwidthThrottling"))
    UpdateReplicationConfigurationTemplateRequest.add_member(:create_public_ip, Shapes::ShapeRef.new(shape: Boolean, location_name: "createPublicIP"))
    UpdateReplicationConfigurationTemplateRequest.add_member(:data_plane_routing, Shapes::ShapeRef.new(shape: ReplicationConfigurationDataPlaneRouting, location_name: "dataPlaneRouting"))
    UpdateReplicationConfigurationTemplateRequest.add_member(:default_large_staging_disk_type, Shapes::ShapeRef.new(shape: ReplicationConfigurationDefaultLargeStagingDiskType, location_name: "defaultLargeStagingDiskType"))
    UpdateReplicationConfigurationTemplateRequest.add_member(:ebs_encryption, Shapes::ShapeRef.new(shape: ReplicationConfigurationEbsEncryption, location_name: "ebsEncryption"))
    UpdateReplicationConfigurationTemplateRequest.add_member(:ebs_encryption_key_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "ebsEncryptionKeyArn"))
    UpdateReplicationConfigurationTemplateRequest.add_member(:replication_configuration_template_id, Shapes::ShapeRef.new(shape: ReplicationConfigurationTemplateID, required: true, location_name: "replicationConfigurationTemplateID"))
    UpdateReplicationConfigurationTemplateRequest.add_member(:replication_server_instance_type, Shapes::ShapeRef.new(shape: EC2InstanceType, location_name: "replicationServerInstanceType"))
    UpdateReplicationConfigurationTemplateRequest.add_member(:replication_servers_security_groups_i_ds, Shapes::ShapeRef.new(shape: ReplicationServersSecurityGroupsIDs, location_name: "replicationServersSecurityGroupsIDs"))
    UpdateReplicationConfigurationTemplateRequest.add_member(:staging_area_subnet_id, Shapes::ShapeRef.new(shape: SubnetID, location_name: "stagingAreaSubnetId"))
    UpdateReplicationConfigurationTemplateRequest.add_member(:staging_area_tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "stagingAreaTags"))
    UpdateReplicationConfigurationTemplateRequest.add_member(:use_dedicated_replication_server, Shapes::ShapeRef.new(shape: Boolean, location_name: "useDedicatedReplicationServer"))
    UpdateReplicationConfigurationTemplateRequest.struct_class = Types::UpdateReplicationConfigurationTemplateRequest

    UpdateSourceServerReplicationTypeRequest.add_member(:replication_type, Shapes::ShapeRef.new(shape: ReplicationType, required: true, location_name: "replicationType"))
    UpdateSourceServerReplicationTypeRequest.add_member(:source_server_id, Shapes::ShapeRef.new(shape: SourceServerID, required: true, location_name: "sourceServerID"))
    UpdateSourceServerReplicationTypeRequest.struct_class = Types::UpdateSourceServerReplicationTypeRequest

    ValidationException.add_member(:code, Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: "code"))
    ValidationException.add_member(:field_list, Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: "fieldList"))
    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: "message"))
    ValidationException.add_member(:reason, Shapes::ShapeRef.new(shape: ValidationExceptionReason, location_name: "reason"))
    ValidationException.struct_class = Types::ValidationException

    ValidationExceptionField.add_member(:message, Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: "message"))
    ValidationExceptionField.add_member(:name, Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: "name"))
    ValidationExceptionField.struct_class = Types::ValidationExceptionField

    ValidationExceptionFieldList.member = Shapes::ShapeRef.new(shape: ValidationExceptionField)

    VcenterClient.add_member(:arn, Shapes::ShapeRef.new(shape: ARN, location_name: "arn"))
    VcenterClient.add_member(:datacenter_name, Shapes::ShapeRef.new(shape: BoundedString, location_name: "datacenterName"))
    VcenterClient.add_member(:hostname, Shapes::ShapeRef.new(shape: BoundedString, location_name: "hostname"))
    VcenterClient.add_member(:last_seen_datetime, Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: "lastSeenDatetime"))
    VcenterClient.add_member(:source_server_tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "sourceServerTags"))
    VcenterClient.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    VcenterClient.add_member(:vcenter_client_id, Shapes::ShapeRef.new(shape: VcenterClientID, location_name: "vcenterClientID"))
    VcenterClient.add_member(:vcenter_uuid, Shapes::ShapeRef.new(shape: BoundedString, location_name: "vcenterUUID"))
    VcenterClient.struct_class = Types::VcenterClient

    VcenterClientList.member = Shapes::ShapeRef.new(shape: VcenterClient)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2020-02-26"

      api.metadata = {
        "apiVersion" => "2020-02-26",
        "endpointPrefix" => "mgn",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceAbbreviation" => "mgn",
        "serviceFullName" => "Application Migration Service",
        "serviceId" => "mgn",
        "signatureVersion" => "v4",
        "signingName" => "mgn",
        "uid" => "mgn-2020-02-26",
      }

      api.add_operation(:change_server_life_cycle_state, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ChangeServerLifeCycleState"
        o.http_method = "POST"
        o.http_request_uri = "/ChangeServerLifeCycleState"
        o.input = Shapes::ShapeRef.new(shape: ChangeServerLifeCycleStateRequest)
        o.output = Shapes::ShapeRef.new(shape: SourceServer)
        o.errors << Shapes::ShapeRef.new(shape: UninitializedAccountException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:create_replication_configuration_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateReplicationConfigurationTemplate"
        o.http_method = "POST"
        o.http_request_uri = "/CreateReplicationConfigurationTemplate"
        o.input = Shapes::ShapeRef.new(shape: CreateReplicationConfigurationTemplateRequest)
        o.output = Shapes::ShapeRef.new(shape: ReplicationConfigurationTemplate)
        o.errors << Shapes::ShapeRef.new(shape: UninitializedAccountException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteJob"
        o.http_method = "POST"
        o.http_request_uri = "/DeleteJob"
        o.input = Shapes::ShapeRef.new(shape: DeleteJobRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: UninitializedAccountException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_replication_configuration_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteReplicationConfigurationTemplate"
        o.http_method = "POST"
        o.http_request_uri = "/DeleteReplicationConfigurationTemplate"
        o.input = Shapes::ShapeRef.new(shape: DeleteReplicationConfigurationTemplateRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteReplicationConfigurationTemplateResponse)
        o.errors << Shapes::ShapeRef.new(shape: UninitializedAccountException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_source_server, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteSourceServer"
        o.http_method = "POST"
        o.http_request_uri = "/DeleteSourceServer"
        o.input = Shapes::ShapeRef.new(shape: DeleteSourceServerRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteSourceServerResponse)
        o.errors << Shapes::ShapeRef.new(shape: UninitializedAccountException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_vcenter_client, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteVcenterClient"
        o.http_method = "POST"
        o.http_request_uri = "/DeleteVcenterClient"
        o.input = Shapes::ShapeRef.new(shape: DeleteVcenterClientRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: UninitializedAccountException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:describe_job_log_items, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeJobLogItems"
        o.http_method = "POST"
        o.http_request_uri = "/DescribeJobLogItems"
        o.input = Shapes::ShapeRef.new(shape: DescribeJobLogItemsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeJobLogItemsResponse)
        o.errors << Shapes::ShapeRef.new(shape: UninitializedAccountException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeJobs"
        o.http_method = "POST"
        o.http_request_uri = "/DescribeJobs"
        o.input = Shapes::ShapeRef.new(shape: DescribeJobsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeJobsResponse)
        o.errors << Shapes::ShapeRef.new(shape: UninitializedAccountException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_replication_configuration_templates, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeReplicationConfigurationTemplates"
        o.http_method = "POST"
        o.http_request_uri = "/DescribeReplicationConfigurationTemplates"
        o.input = Shapes::ShapeRef.new(shape: DescribeReplicationConfigurationTemplatesRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeReplicationConfigurationTemplatesResponse)
        o.errors << Shapes::ShapeRef.new(shape: UninitializedAccountException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_source_servers, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeSourceServers"
        o.http_method = "POST"
        o.http_request_uri = "/DescribeSourceServers"
        o.input = Shapes::ShapeRef.new(shape: DescribeSourceServersRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeSourceServersResponse)
        o.errors << Shapes::ShapeRef.new(shape: UninitializedAccountException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_vcenter_clients, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeVcenterClients"
        o.http_method = "GET"
        o.http_request_uri = "/DescribeVcenterClients"
        o.input = Shapes::ShapeRef.new(shape: DescribeVcenterClientsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeVcenterClientsResponse)
        o.errors << Shapes::ShapeRef.new(shape: UninitializedAccountException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:disconnect_from_service, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisconnectFromService"
        o.http_method = "POST"
        o.http_request_uri = "/DisconnectFromService"
        o.input = Shapes::ShapeRef.new(shape: DisconnectFromServiceRequest)
        o.output = Shapes::ShapeRef.new(shape: SourceServer)
        o.errors << Shapes::ShapeRef.new(shape: UninitializedAccountException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:finalize_cutover, Seahorse::Model::Operation.new.tap do |o|
        o.name = "FinalizeCutover"
        o.http_method = "POST"
        o.http_request_uri = "/FinalizeCutover"
        o.input = Shapes::ShapeRef.new(shape: FinalizeCutoverRequest)
        o.output = Shapes::ShapeRef.new(shape: SourceServer)
        o.errors << Shapes::ShapeRef.new(shape: UninitializedAccountException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:get_launch_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetLaunchConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/GetLaunchConfiguration"
        o.input = Shapes::ShapeRef.new(shape: GetLaunchConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: LaunchConfiguration)
        o.errors << Shapes::ShapeRef.new(shape: UninitializedAccountException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_replication_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetReplicationConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/GetReplicationConfiguration"
        o.input = Shapes::ShapeRef.new(shape: GetReplicationConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: ReplicationConfiguration)
        o.errors << Shapes::ShapeRef.new(shape: UninitializedAccountException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:initialize_service, Seahorse::Model::Operation.new.tap do |o|
        o.name = "InitializeService"
        o.http_method = "POST"
        o.http_request_uri = "/InitializeService"
        o.input = Shapes::ShapeRef.new(shape: InitializeServiceRequest)
        o.output = Shapes::ShapeRef.new(shape: InitializeServiceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "GET"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:mark_as_archived, Seahorse::Model::Operation.new.tap do |o|
        o.name = "MarkAsArchived"
        o.http_method = "POST"
        o.http_request_uri = "/MarkAsArchived"
        o.input = Shapes::ShapeRef.new(shape: MarkAsArchivedRequest)
        o.output = Shapes::ShapeRef.new(shape: SourceServer)
        o.errors << Shapes::ShapeRef.new(shape: UninitializedAccountException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:retry_data_replication, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RetryDataReplication"
        o.http_method = "POST"
        o.http_request_uri = "/RetryDataReplication"
        o.input = Shapes::ShapeRef.new(shape: RetryDataReplicationRequest)
        o.output = Shapes::ShapeRef.new(shape: SourceServer)
        o.errors << Shapes::ShapeRef.new(shape: UninitializedAccountException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:start_cutover, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartCutover"
        o.http_method = "POST"
        o.http_request_uri = "/StartCutover"
        o.input = Shapes::ShapeRef.new(shape: StartCutoverRequest)
        o.output = Shapes::ShapeRef.new(shape: StartCutoverResponse)
        o.errors << Shapes::ShapeRef.new(shape: UninitializedAccountException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:start_replication, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartReplication"
        o.http_method = "POST"
        o.http_request_uri = "/StartReplication"
        o.input = Shapes::ShapeRef.new(shape: StartReplicationRequest)
        o.output = Shapes::ShapeRef.new(shape: SourceServer)
        o.errors << Shapes::ShapeRef.new(shape: UninitializedAccountException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:start_test, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartTest"
        o.http_method = "POST"
        o.http_request_uri = "/StartTest"
        o.input = Shapes::ShapeRef.new(shape: StartTestRequest)
        o.output = Shapes::ShapeRef.new(shape: StartTestResponse)
        o.errors << Shapes::ShapeRef.new(shape: UninitializedAccountException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:terminate_target_instances, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TerminateTargetInstances"
        o.http_method = "POST"
        o.http_request_uri = "/TerminateTargetInstances"
        o.input = Shapes::ShapeRef.new(shape: TerminateTargetInstancesRequest)
        o.output = Shapes::ShapeRef.new(shape: TerminateTargetInstancesResponse)
        o.errors << Shapes::ShapeRef.new(shape: UninitializedAccountException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_launch_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateLaunchConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/UpdateLaunchConfiguration"
        o.input = Shapes::ShapeRef.new(shape: UpdateLaunchConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: LaunchConfiguration)
        o.errors << Shapes::ShapeRef.new(shape: UninitializedAccountException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:update_replication_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateReplicationConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/UpdateReplicationConfiguration"
        o.input = Shapes::ShapeRef.new(shape: UpdateReplicationConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: ReplicationConfiguration)
        o.errors << Shapes::ShapeRef.new(shape: UninitializedAccountException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:update_replication_configuration_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateReplicationConfigurationTemplate"
        o.http_method = "POST"
        o.http_request_uri = "/UpdateReplicationConfigurationTemplate"
        o.input = Shapes::ShapeRef.new(shape: UpdateReplicationConfigurationTemplateRequest)
        o.output = Shapes::ShapeRef.new(shape: ReplicationConfigurationTemplate)
        o.errors << Shapes::ShapeRef.new(shape: UninitializedAccountException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_source_server_replication_type, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateSourceServerReplicationType"
        o.http_method = "POST"
        o.http_request_uri = "/UpdateSourceServerReplicationType"
        o.input = Shapes::ShapeRef.new(shape: UpdateSourceServerReplicationTypeRequest)
        o.output = Shapes::ShapeRef.new(shape: SourceServer)
        o.errors << Shapes::ShapeRef.new(shape: UninitializedAccountException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)
    end

  end
end
