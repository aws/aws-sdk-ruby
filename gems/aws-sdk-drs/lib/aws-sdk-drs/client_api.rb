# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Drs
  # @api private
  module ClientApi

    include Seahorse::Model

    ARN = Shapes::StringShape.new(name: 'ARN')
    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    Account = Shapes::StructureShape.new(name: 'Account')
    AccountID = Shapes::StringShape.new(name: 'AccountID')
    AccountIDs = Shapes::ListShape.new(name: 'AccountIDs')
    Accounts = Shapes::ListShape.new(name: 'Accounts')
    AssociateSourceNetworkStackRequest = Shapes::StructureShape.new(name: 'AssociateSourceNetworkStackRequest')
    AssociateSourceNetworkStackResponse = Shapes::StructureShape.new(name: 'AssociateSourceNetworkStackResponse')
    AwsAvailabilityZone = Shapes::StringShape.new(name: 'AwsAvailabilityZone')
    AwsRegion = Shapes::StringShape.new(name: 'AwsRegion')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    BoundedString = Shapes::StringShape.new(name: 'BoundedString')
    CPU = Shapes::StructureShape.new(name: 'CPU')
    CfnStackName = Shapes::StringShape.new(name: 'CfnStackName')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    ConversionMap = Shapes::MapShape.new(name: 'ConversionMap')
    ConversionProperties = Shapes::StructureShape.new(name: 'ConversionProperties')
    Cpus = Shapes::ListShape.new(name: 'Cpus')
    CreateExtendedSourceServerRequest = Shapes::StructureShape.new(name: 'CreateExtendedSourceServerRequest')
    CreateExtendedSourceServerResponse = Shapes::StructureShape.new(name: 'CreateExtendedSourceServerResponse')
    CreateLaunchConfigurationTemplateRequest = Shapes::StructureShape.new(name: 'CreateLaunchConfigurationTemplateRequest')
    CreateLaunchConfigurationTemplateResponse = Shapes::StructureShape.new(name: 'CreateLaunchConfigurationTemplateResponse')
    CreateReplicationConfigurationTemplateRequest = Shapes::StructureShape.new(name: 'CreateReplicationConfigurationTemplateRequest')
    CreateSourceNetworkRequest = Shapes::StructureShape.new(name: 'CreateSourceNetworkRequest')
    CreateSourceNetworkResponse = Shapes::StructureShape.new(name: 'CreateSourceNetworkResponse')
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
    DeleteLaunchConfigurationTemplateRequest = Shapes::StructureShape.new(name: 'DeleteLaunchConfigurationTemplateRequest')
    DeleteLaunchConfigurationTemplateResponse = Shapes::StructureShape.new(name: 'DeleteLaunchConfigurationTemplateResponse')
    DeleteRecoveryInstanceRequest = Shapes::StructureShape.new(name: 'DeleteRecoveryInstanceRequest')
    DeleteReplicationConfigurationTemplateRequest = Shapes::StructureShape.new(name: 'DeleteReplicationConfigurationTemplateRequest')
    DeleteReplicationConfigurationTemplateResponse = Shapes::StructureShape.new(name: 'DeleteReplicationConfigurationTemplateResponse')
    DeleteSourceNetworkRequest = Shapes::StructureShape.new(name: 'DeleteSourceNetworkRequest')
    DeleteSourceNetworkResponse = Shapes::StructureShape.new(name: 'DeleteSourceNetworkResponse')
    DeleteSourceServerRequest = Shapes::StructureShape.new(name: 'DeleteSourceServerRequest')
    DeleteSourceServerResponse = Shapes::StructureShape.new(name: 'DeleteSourceServerResponse')
    DescribeJobLogItemsRequest = Shapes::StructureShape.new(name: 'DescribeJobLogItemsRequest')
    DescribeJobLogItemsResponse = Shapes::StructureShape.new(name: 'DescribeJobLogItemsResponse')
    DescribeJobsRequest = Shapes::StructureShape.new(name: 'DescribeJobsRequest')
    DescribeJobsRequestFilters = Shapes::StructureShape.new(name: 'DescribeJobsRequestFilters')
    DescribeJobsRequestFiltersJobIDs = Shapes::ListShape.new(name: 'DescribeJobsRequestFiltersJobIDs')
    DescribeJobsResponse = Shapes::StructureShape.new(name: 'DescribeJobsResponse')
    DescribeLaunchConfigurationTemplatesRequest = Shapes::StructureShape.new(name: 'DescribeLaunchConfigurationTemplatesRequest')
    DescribeLaunchConfigurationTemplatesResponse = Shapes::StructureShape.new(name: 'DescribeLaunchConfigurationTemplatesResponse')
    DescribeRecoveryInstancesItems = Shapes::ListShape.new(name: 'DescribeRecoveryInstancesItems')
    DescribeRecoveryInstancesRequest = Shapes::StructureShape.new(name: 'DescribeRecoveryInstancesRequest')
    DescribeRecoveryInstancesRequestFilters = Shapes::StructureShape.new(name: 'DescribeRecoveryInstancesRequestFilters')
    DescribeRecoveryInstancesResponse = Shapes::StructureShape.new(name: 'DescribeRecoveryInstancesResponse')
    DescribeRecoverySnapshotsRequest = Shapes::StructureShape.new(name: 'DescribeRecoverySnapshotsRequest')
    DescribeRecoverySnapshotsRequestFilters = Shapes::StructureShape.new(name: 'DescribeRecoverySnapshotsRequestFilters')
    DescribeRecoverySnapshotsResponse = Shapes::StructureShape.new(name: 'DescribeRecoverySnapshotsResponse')
    DescribeReplicationConfigurationTemplatesRequest = Shapes::StructureShape.new(name: 'DescribeReplicationConfigurationTemplatesRequest')
    DescribeReplicationConfigurationTemplatesResponse = Shapes::StructureShape.new(name: 'DescribeReplicationConfigurationTemplatesResponse')
    DescribeSourceNetworksRequest = Shapes::StructureShape.new(name: 'DescribeSourceNetworksRequest')
    DescribeSourceNetworksRequestFilters = Shapes::StructureShape.new(name: 'DescribeSourceNetworksRequestFilters')
    DescribeSourceNetworksRequestFiltersIDs = Shapes::ListShape.new(name: 'DescribeSourceNetworksRequestFiltersIDs')
    DescribeSourceNetworksResponse = Shapes::StructureShape.new(name: 'DescribeSourceNetworksResponse')
    DescribeSourceServersRequest = Shapes::StructureShape.new(name: 'DescribeSourceServersRequest')
    DescribeSourceServersRequestFilters = Shapes::StructureShape.new(name: 'DescribeSourceServersRequestFilters')
    DescribeSourceServersRequestFiltersIDs = Shapes::ListShape.new(name: 'DescribeSourceServersRequestFiltersIDs')
    DescribeSourceServersResponse = Shapes::StructureShape.new(name: 'DescribeSourceServersResponse')
    DisconnectRecoveryInstanceRequest = Shapes::StructureShape.new(name: 'DisconnectRecoveryInstanceRequest')
    DisconnectSourceServerRequest = Shapes::StructureShape.new(name: 'DisconnectSourceServerRequest')
    Disk = Shapes::StructureShape.new(name: 'Disk')
    Disks = Shapes::ListShape.new(name: 'Disks')
    EC2InstanceID = Shapes::StringShape.new(name: 'EC2InstanceID')
    EC2InstanceState = Shapes::StringShape.new(name: 'EC2InstanceState')
    EC2InstanceType = Shapes::StringShape.new(name: 'EC2InstanceType')
    EbsSnapshot = Shapes::StringShape.new(name: 'EbsSnapshot')
    EbsSnapshotsList = Shapes::ListShape.new(name: 'EbsSnapshotsList')
    EbsVolumeID = Shapes::StringShape.new(name: 'EbsVolumeID')
    EventResourceData = Shapes::UnionShape.new(name: 'EventResourceData')
    ExportSourceNetworkCfnTemplateRequest = Shapes::StructureShape.new(name: 'ExportSourceNetworkCfnTemplateRequest')
    ExportSourceNetworkCfnTemplateResponse = Shapes::StructureShape.new(name: 'ExportSourceNetworkCfnTemplateResponse')
    ExtensionStatus = Shapes::StringShape.new(name: 'ExtensionStatus')
    FailbackLaunchType = Shapes::StringShape.new(name: 'FailbackLaunchType')
    FailbackReplicationError = Shapes::StringShape.new(name: 'FailbackReplicationError')
    FailbackState = Shapes::StringShape.new(name: 'FailbackState')
    GetFailbackReplicationConfigurationRequest = Shapes::StructureShape.new(name: 'GetFailbackReplicationConfigurationRequest')
    GetFailbackReplicationConfigurationResponse = Shapes::StructureShape.new(name: 'GetFailbackReplicationConfigurationResponse')
    GetLaunchConfigurationRequest = Shapes::StructureShape.new(name: 'GetLaunchConfigurationRequest')
    GetReplicationConfigurationRequest = Shapes::StructureShape.new(name: 'GetReplicationConfigurationRequest')
    IPsList = Shapes::ListShape.new(name: 'IPsList')
    ISO8601DatetimeString = Shapes::StringShape.new(name: 'ISO8601DatetimeString')
    ISO8601DurationString = Shapes::StringShape.new(name: 'ISO8601DurationString')
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
    LastLaunchResult = Shapes::StringShape.new(name: 'LastLaunchResult')
    LastLaunchType = Shapes::StringShape.new(name: 'LastLaunchType')
    LaunchConfiguration = Shapes::StructureShape.new(name: 'LaunchConfiguration')
    LaunchConfigurationTemplate = Shapes::StructureShape.new(name: 'LaunchConfigurationTemplate')
    LaunchConfigurationTemplateID = Shapes::StringShape.new(name: 'LaunchConfigurationTemplateID')
    LaunchConfigurationTemplateIDs = Shapes::ListShape.new(name: 'LaunchConfigurationTemplateIDs')
    LaunchConfigurationTemplates = Shapes::ListShape.new(name: 'LaunchConfigurationTemplates')
    LaunchDisposition = Shapes::StringShape.new(name: 'LaunchDisposition')
    LaunchStatus = Shapes::StringShape.new(name: 'LaunchStatus')
    Licensing = Shapes::StructureShape.new(name: 'Licensing')
    LifeCycle = Shapes::StructureShape.new(name: 'LifeCycle')
    LifeCycleLastLaunch = Shapes::StructureShape.new(name: 'LifeCycleLastLaunch')
    LifeCycleLastLaunchInitiated = Shapes::StructureShape.new(name: 'LifeCycleLastLaunchInitiated')
    ListExtensibleSourceServersRequest = Shapes::StructureShape.new(name: 'ListExtensibleSourceServersRequest')
    ListExtensibleSourceServersResponse = Shapes::StructureShape.new(name: 'ListExtensibleSourceServersResponse')
    ListStagingAccountsRequest = Shapes::StructureShape.new(name: 'ListStagingAccountsRequest')
    ListStagingAccountsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListStagingAccountsRequestMaxResultsInteger')
    ListStagingAccountsResponse = Shapes::StructureShape.new(name: 'ListStagingAccountsResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    MaxResultsReplicatingSourceServers = Shapes::IntegerShape.new(name: 'MaxResultsReplicatingSourceServers')
    MaxResultsType = Shapes::IntegerShape.new(name: 'MaxResultsType')
    NetworkInterface = Shapes::StructureShape.new(name: 'NetworkInterface')
    NetworkInterfaces = Shapes::ListShape.new(name: 'NetworkInterfaces')
    OS = Shapes::StructureShape.new(name: 'OS')
    OriginEnvironment = Shapes::StringShape.new(name: 'OriginEnvironment')
    PITPolicy = Shapes::ListShape.new(name: 'PITPolicy')
    PITPolicyRule = Shapes::StructureShape.new(name: 'PITPolicyRule')
    PITPolicyRuleUnits = Shapes::StringShape.new(name: 'PITPolicyRuleUnits')
    PaginationToken = Shapes::StringShape.new(name: 'PaginationToken')
    ParticipatingResource = Shapes::StructureShape.new(name: 'ParticipatingResource')
    ParticipatingResourceID = Shapes::UnionShape.new(name: 'ParticipatingResourceID')
    ParticipatingResources = Shapes::ListShape.new(name: 'ParticipatingResources')
    ParticipatingServer = Shapes::StructureShape.new(name: 'ParticipatingServer')
    ParticipatingServers = Shapes::ListShape.new(name: 'ParticipatingServers')
    PositiveInteger = Shapes::IntegerShape.new(name: 'PositiveInteger')
    RecoveryInstance = Shapes::StructureShape.new(name: 'RecoveryInstance')
    RecoveryInstanceDataReplicationError = Shapes::StructureShape.new(name: 'RecoveryInstanceDataReplicationError')
    RecoveryInstanceDataReplicationInfo = Shapes::StructureShape.new(name: 'RecoveryInstanceDataReplicationInfo')
    RecoveryInstanceDataReplicationInfoReplicatedDisk = Shapes::StructureShape.new(name: 'RecoveryInstanceDataReplicationInfoReplicatedDisk')
    RecoveryInstanceDataReplicationInfoReplicatedDisks = Shapes::ListShape.new(name: 'RecoveryInstanceDataReplicationInfoReplicatedDisks')
    RecoveryInstanceDataReplicationInitiation = Shapes::StructureShape.new(name: 'RecoveryInstanceDataReplicationInitiation')
    RecoveryInstanceDataReplicationInitiationStep = Shapes::StructureShape.new(name: 'RecoveryInstanceDataReplicationInitiationStep')
    RecoveryInstanceDataReplicationInitiationStepName = Shapes::StringShape.new(name: 'RecoveryInstanceDataReplicationInitiationStepName')
    RecoveryInstanceDataReplicationInitiationStepStatus = Shapes::StringShape.new(name: 'RecoveryInstanceDataReplicationInitiationStepStatus')
    RecoveryInstanceDataReplicationInitiationSteps = Shapes::ListShape.new(name: 'RecoveryInstanceDataReplicationInitiationSteps')
    RecoveryInstanceDataReplicationState = Shapes::StringShape.new(name: 'RecoveryInstanceDataReplicationState')
    RecoveryInstanceDisk = Shapes::StructureShape.new(name: 'RecoveryInstanceDisk')
    RecoveryInstanceDisks = Shapes::ListShape.new(name: 'RecoveryInstanceDisks')
    RecoveryInstanceFailback = Shapes::StructureShape.new(name: 'RecoveryInstanceFailback')
    RecoveryInstanceID = Shapes::StringShape.new(name: 'RecoveryInstanceID')
    RecoveryInstanceIDs = Shapes::ListShape.new(name: 'RecoveryInstanceIDs')
    RecoveryInstanceProperties = Shapes::StructureShape.new(name: 'RecoveryInstanceProperties')
    RecoveryInstancesForTerminationRequest = Shapes::ListShape.new(name: 'RecoveryInstancesForTerminationRequest')
    RecoveryLifeCycle = Shapes::StructureShape.new(name: 'RecoveryLifeCycle')
    RecoveryResult = Shapes::StringShape.new(name: 'RecoveryResult')
    RecoverySnapshot = Shapes::StructureShape.new(name: 'RecoverySnapshot')
    RecoverySnapshotID = Shapes::StringShape.new(name: 'RecoverySnapshotID')
    RecoverySnapshotsList = Shapes::ListShape.new(name: 'RecoverySnapshotsList')
    RecoverySnapshotsOrder = Shapes::StringShape.new(name: 'RecoverySnapshotsOrder')
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
    ReplicationDirection = Shapes::StringShape.new(name: 'ReplicationDirection')
    ReplicationServersSecurityGroupsIDs = Shapes::ListShape.new(name: 'ReplicationServersSecurityGroupsIDs')
    ReplicationStatus = Shapes::StringShape.new(name: 'ReplicationStatus')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    RetryDataReplicationRequest = Shapes::StructureShape.new(name: 'RetryDataReplicationRequest')
    ReverseReplicationRequest = Shapes::StructureShape.new(name: 'ReverseReplicationRequest')
    ReverseReplicationResponse = Shapes::StructureShape.new(name: 'ReverseReplicationResponse')
    SecurityGroupID = Shapes::StringShape.new(name: 'SecurityGroupID')
    SensitiveBoundedString = Shapes::StringShape.new(name: 'SensitiveBoundedString')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    SmallBoundedString = Shapes::StringShape.new(name: 'SmallBoundedString')
    SourceCloudProperties = Shapes::StructureShape.new(name: 'SourceCloudProperties')
    SourceNetwork = Shapes::StructureShape.new(name: 'SourceNetwork')
    SourceNetworkData = Shapes::StructureShape.new(name: 'SourceNetworkData')
    SourceNetworkID = Shapes::StringShape.new(name: 'SourceNetworkID')
    SourceNetworksList = Shapes::ListShape.new(name: 'SourceNetworksList')
    SourceProperties = Shapes::StructureShape.new(name: 'SourceProperties')
    SourceServer = Shapes::StructureShape.new(name: 'SourceServer')
    SourceServerARN = Shapes::StringShape.new(name: 'SourceServerARN')
    SourceServerID = Shapes::StringShape.new(name: 'SourceServerID')
    SourceServerIDs = Shapes::ListShape.new(name: 'SourceServerIDs')
    SourceServersList = Shapes::ListShape.new(name: 'SourceServersList')
    StagingArea = Shapes::StructureShape.new(name: 'StagingArea')
    StagingSourceServer = Shapes::StructureShape.new(name: 'StagingSourceServer')
    StagingSourceServersList = Shapes::ListShape.new(name: 'StagingSourceServersList')
    StartFailbackLaunchRequest = Shapes::StructureShape.new(name: 'StartFailbackLaunchRequest')
    StartFailbackLaunchResponse = Shapes::StructureShape.new(name: 'StartFailbackLaunchResponse')
    StartFailbackRequestRecoveryInstanceIDs = Shapes::ListShape.new(name: 'StartFailbackRequestRecoveryInstanceIDs')
    StartRecoveryRequest = Shapes::StructureShape.new(name: 'StartRecoveryRequest')
    StartRecoveryRequestSourceServer = Shapes::StructureShape.new(name: 'StartRecoveryRequestSourceServer')
    StartRecoveryRequestSourceServers = Shapes::ListShape.new(name: 'StartRecoveryRequestSourceServers')
    StartRecoveryResponse = Shapes::StructureShape.new(name: 'StartRecoveryResponse')
    StartReplicationRequest = Shapes::StructureShape.new(name: 'StartReplicationRequest')
    StartReplicationResponse = Shapes::StructureShape.new(name: 'StartReplicationResponse')
    StartSourceNetworkRecoveryRequest = Shapes::StructureShape.new(name: 'StartSourceNetworkRecoveryRequest')
    StartSourceNetworkRecoveryRequestNetworkEntries = Shapes::ListShape.new(name: 'StartSourceNetworkRecoveryRequestNetworkEntries')
    StartSourceNetworkRecoveryRequestNetworkEntry = Shapes::StructureShape.new(name: 'StartSourceNetworkRecoveryRequestNetworkEntry')
    StartSourceNetworkRecoveryResponse = Shapes::StructureShape.new(name: 'StartSourceNetworkRecoveryResponse')
    StartSourceNetworkReplicationRequest = Shapes::StructureShape.new(name: 'StartSourceNetworkReplicationRequest')
    StartSourceNetworkReplicationResponse = Shapes::StructureShape.new(name: 'StartSourceNetworkReplicationResponse')
    StopFailbackRequest = Shapes::StructureShape.new(name: 'StopFailbackRequest')
    StopReplicationRequest = Shapes::StructureShape.new(name: 'StopReplicationRequest')
    StopReplicationResponse = Shapes::StructureShape.new(name: 'StopReplicationResponse')
    StopSourceNetworkReplicationRequest = Shapes::StructureShape.new(name: 'StopSourceNetworkReplicationRequest')
    StopSourceNetworkReplicationResponse = Shapes::StructureShape.new(name: 'StopSourceNetworkReplicationResponse')
    StrictlyPositiveInteger = Shapes::IntegerShape.new(name: 'StrictlyPositiveInteger')
    SubnetID = Shapes::StringShape.new(name: 'SubnetID')
    SyntheticTimestamp_date_time = Shapes::TimestampShape.new(name: 'SyntheticTimestamp_date_time', timestampFormat: "iso8601")
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeys = Shapes::ListShape.new(name: 'TagKeys')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TagsMap = Shapes::MapShape.new(name: 'TagsMap')
    TargetInstanceTypeRightSizingMethod = Shapes::StringShape.new(name: 'TargetInstanceTypeRightSizingMethod')
    TerminateRecoveryInstancesRequest = Shapes::StructureShape.new(name: 'TerminateRecoveryInstancesRequest')
    TerminateRecoveryInstancesResponse = Shapes::StructureShape.new(name: 'TerminateRecoveryInstancesResponse')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    UninitializedAccountException = Shapes::StructureShape.new(name: 'UninitializedAccountException')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UpdateFailbackReplicationConfigurationRequest = Shapes::StructureShape.new(name: 'UpdateFailbackReplicationConfigurationRequest')
    UpdateLaunchConfigurationRequest = Shapes::StructureShape.new(name: 'UpdateLaunchConfigurationRequest')
    UpdateLaunchConfigurationTemplateRequest = Shapes::StructureShape.new(name: 'UpdateLaunchConfigurationTemplateRequest')
    UpdateLaunchConfigurationTemplateResponse = Shapes::StructureShape.new(name: 'UpdateLaunchConfigurationTemplateResponse')
    UpdateReplicationConfigurationRequest = Shapes::StructureShape.new(name: 'UpdateReplicationConfigurationRequest')
    UpdateReplicationConfigurationTemplateRequest = Shapes::StructureShape.new(name: 'UpdateReplicationConfigurationTemplateRequest')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationExceptionField = Shapes::StructureShape.new(name: 'ValidationExceptionField')
    ValidationExceptionFieldList = Shapes::ListShape.new(name: 'ValidationExceptionFieldList')
    ValidationExceptionReason = Shapes::StringShape.new(name: 'ValidationExceptionReason')
    VolumeToConversionMap = Shapes::MapShape.new(name: 'VolumeToConversionMap')
    VolumeToSizeMap = Shapes::MapShape.new(name: 'VolumeToSizeMap')
    VpcID = Shapes::StringShape.new(name: 'VpcID')

    AccessDeniedException.add_member(:code, Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: "code"))
    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    Account.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountID, location_name: "accountID"))
    Account.struct_class = Types::Account

    AccountIDs.member = Shapes::ShapeRef.new(shape: AccountID)

    Accounts.member = Shapes::ShapeRef.new(shape: Account)

    AssociateSourceNetworkStackRequest.add_member(:cfn_stack_name, Shapes::ShapeRef.new(shape: CfnStackName, required: true, location_name: "cfnStackName"))
    AssociateSourceNetworkStackRequest.add_member(:source_network_id, Shapes::ShapeRef.new(shape: SourceNetworkID, required: true, location_name: "sourceNetworkID"))
    AssociateSourceNetworkStackRequest.struct_class = Types::AssociateSourceNetworkStackRequest

    AssociateSourceNetworkStackResponse.add_member(:job, Shapes::ShapeRef.new(shape: Job, location_name: "job"))
    AssociateSourceNetworkStackResponse.struct_class = Types::AssociateSourceNetworkStackResponse

    CPU.add_member(:cores, Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "cores"))
    CPU.add_member(:model_name, Shapes::ShapeRef.new(shape: BoundedString, location_name: "modelName"))
    CPU.struct_class = Types::CPU

    ConflictException.add_member(:code, Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: "code"))
    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: "message"))
    ConflictException.add_member(:resource_id, Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: "resourceId"))
    ConflictException.add_member(:resource_type, Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: "resourceType"))
    ConflictException.struct_class = Types::ConflictException

    ConversionMap.key = Shapes::ShapeRef.new(shape: EbsSnapshot)
    ConversionMap.value = Shapes::ShapeRef.new(shape: EbsSnapshot)

    ConversionProperties.add_member(:data_timestamp, Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: "dataTimestamp"))
    ConversionProperties.add_member(:force_uefi, Shapes::ShapeRef.new(shape: Boolean, location_name: "forceUefi"))
    ConversionProperties.add_member(:root_volume_name, Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: "rootVolumeName"))
    ConversionProperties.add_member(:volume_to_conversion_map, Shapes::ShapeRef.new(shape: VolumeToConversionMap, location_name: "volumeToConversionMap"))
    ConversionProperties.add_member(:volume_to_volume_size, Shapes::ShapeRef.new(shape: VolumeToSizeMap, location_name: "volumeToVolumeSize"))
    ConversionProperties.struct_class = Types::ConversionProperties

    Cpus.member = Shapes::ShapeRef.new(shape: CPU)

    CreateExtendedSourceServerRequest.add_member(:source_server_arn, Shapes::ShapeRef.new(shape: SourceServerARN, required: true, location_name: "sourceServerArn"))
    CreateExtendedSourceServerRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    CreateExtendedSourceServerRequest.struct_class = Types::CreateExtendedSourceServerRequest

    CreateExtendedSourceServerResponse.add_member(:source_server, Shapes::ShapeRef.new(shape: SourceServer, location_name: "sourceServer"))
    CreateExtendedSourceServerResponse.struct_class = Types::CreateExtendedSourceServerResponse

    CreateLaunchConfigurationTemplateRequest.add_member(:copy_private_ip, Shapes::ShapeRef.new(shape: Boolean, location_name: "copyPrivateIp"))
    CreateLaunchConfigurationTemplateRequest.add_member(:copy_tags, Shapes::ShapeRef.new(shape: Boolean, location_name: "copyTags"))
    CreateLaunchConfigurationTemplateRequest.add_member(:export_bucket_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "exportBucketArn"))
    CreateLaunchConfigurationTemplateRequest.add_member(:launch_disposition, Shapes::ShapeRef.new(shape: LaunchDisposition, location_name: "launchDisposition"))
    CreateLaunchConfigurationTemplateRequest.add_member(:licensing, Shapes::ShapeRef.new(shape: Licensing, location_name: "licensing"))
    CreateLaunchConfigurationTemplateRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    CreateLaunchConfigurationTemplateRequest.add_member(:target_instance_type_right_sizing_method, Shapes::ShapeRef.new(shape: TargetInstanceTypeRightSizingMethod, location_name: "targetInstanceTypeRightSizingMethod"))
    CreateLaunchConfigurationTemplateRequest.struct_class = Types::CreateLaunchConfigurationTemplateRequest

    CreateLaunchConfigurationTemplateResponse.add_member(:launch_configuration_template, Shapes::ShapeRef.new(shape: LaunchConfigurationTemplate, location_name: "launchConfigurationTemplate"))
    CreateLaunchConfigurationTemplateResponse.struct_class = Types::CreateLaunchConfigurationTemplateResponse

    CreateReplicationConfigurationTemplateRequest.add_member(:associate_default_security_group, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "associateDefaultSecurityGroup"))
    CreateReplicationConfigurationTemplateRequest.add_member(:auto_replicate_new_disks, Shapes::ShapeRef.new(shape: Boolean, location_name: "autoReplicateNewDisks"))
    CreateReplicationConfigurationTemplateRequest.add_member(:bandwidth_throttling, Shapes::ShapeRef.new(shape: PositiveInteger, required: true, location_name: "bandwidthThrottling"))
    CreateReplicationConfigurationTemplateRequest.add_member(:create_public_ip, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "createPublicIP"))
    CreateReplicationConfigurationTemplateRequest.add_member(:data_plane_routing, Shapes::ShapeRef.new(shape: ReplicationConfigurationDataPlaneRouting, required: true, location_name: "dataPlaneRouting"))
    CreateReplicationConfigurationTemplateRequest.add_member(:default_large_staging_disk_type, Shapes::ShapeRef.new(shape: ReplicationConfigurationDefaultLargeStagingDiskType, required: true, location_name: "defaultLargeStagingDiskType"))
    CreateReplicationConfigurationTemplateRequest.add_member(:ebs_encryption, Shapes::ShapeRef.new(shape: ReplicationConfigurationEbsEncryption, required: true, location_name: "ebsEncryption"))
    CreateReplicationConfigurationTemplateRequest.add_member(:ebs_encryption_key_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "ebsEncryptionKeyArn"))
    CreateReplicationConfigurationTemplateRequest.add_member(:pit_policy, Shapes::ShapeRef.new(shape: PITPolicy, required: true, location_name: "pitPolicy"))
    CreateReplicationConfigurationTemplateRequest.add_member(:replication_server_instance_type, Shapes::ShapeRef.new(shape: EC2InstanceType, required: true, location_name: "replicationServerInstanceType"))
    CreateReplicationConfigurationTemplateRequest.add_member(:replication_servers_security_groups_i_ds, Shapes::ShapeRef.new(shape: ReplicationServersSecurityGroupsIDs, required: true, location_name: "replicationServersSecurityGroupsIDs"))
    CreateReplicationConfigurationTemplateRequest.add_member(:staging_area_subnet_id, Shapes::ShapeRef.new(shape: SubnetID, required: true, location_name: "stagingAreaSubnetId"))
    CreateReplicationConfigurationTemplateRequest.add_member(:staging_area_tags, Shapes::ShapeRef.new(shape: TagsMap, required: true, location_name: "stagingAreaTags"))
    CreateReplicationConfigurationTemplateRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    CreateReplicationConfigurationTemplateRequest.add_member(:use_dedicated_replication_server, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "useDedicatedReplicationServer"))
    CreateReplicationConfigurationTemplateRequest.struct_class = Types::CreateReplicationConfigurationTemplateRequest

    CreateSourceNetworkRequest.add_member(:origin_account_id, Shapes::ShapeRef.new(shape: AccountID, required: true, location_name: "originAccountID"))
    CreateSourceNetworkRequest.add_member(:origin_region, Shapes::ShapeRef.new(shape: AwsRegion, required: true, location_name: "originRegion"))
    CreateSourceNetworkRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    CreateSourceNetworkRequest.add_member(:vpc_id, Shapes::ShapeRef.new(shape: VpcID, required: true, location_name: "vpcID"))
    CreateSourceNetworkRequest.struct_class = Types::CreateSourceNetworkRequest

    CreateSourceNetworkResponse.add_member(:source_network_id, Shapes::ShapeRef.new(shape: SourceNetworkID, location_name: "sourceNetworkID"))
    CreateSourceNetworkResponse.struct_class = Types::CreateSourceNetworkResponse

    DataReplicationError.add_member(:error, Shapes::ShapeRef.new(shape: DataReplicationErrorString, location_name: "error"))
    DataReplicationError.add_member(:raw_error, Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: "rawError"))
    DataReplicationError.struct_class = Types::DataReplicationError

    DataReplicationInfo.add_member(:data_replication_error, Shapes::ShapeRef.new(shape: DataReplicationError, location_name: "dataReplicationError"))
    DataReplicationInfo.add_member(:data_replication_initiation, Shapes::ShapeRef.new(shape: DataReplicationInitiation, location_name: "dataReplicationInitiation"))
    DataReplicationInfo.add_member(:data_replication_state, Shapes::ShapeRef.new(shape: DataReplicationState, location_name: "dataReplicationState"))
    DataReplicationInfo.add_member(:eta_date_time, Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: "etaDateTime"))
    DataReplicationInfo.add_member(:lag_duration, Shapes::ShapeRef.new(shape: ISO8601DurationString, location_name: "lagDuration"))
    DataReplicationInfo.add_member(:replicated_disks, Shapes::ShapeRef.new(shape: DataReplicationInfoReplicatedDisks, location_name: "replicatedDisks"))
    DataReplicationInfo.add_member(:staging_availability_zone, Shapes::ShapeRef.new(shape: AwsAvailabilityZone, location_name: "stagingAvailabilityZone"))
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

    DeleteLaunchConfigurationTemplateRequest.add_member(:launch_configuration_template_id, Shapes::ShapeRef.new(shape: LaunchConfigurationTemplateID, required: true, location_name: "launchConfigurationTemplateID"))
    DeleteLaunchConfigurationTemplateRequest.struct_class = Types::DeleteLaunchConfigurationTemplateRequest

    DeleteLaunchConfigurationTemplateResponse.struct_class = Types::DeleteLaunchConfigurationTemplateResponse

    DeleteRecoveryInstanceRequest.add_member(:recovery_instance_id, Shapes::ShapeRef.new(shape: RecoveryInstanceID, required: true, location_name: "recoveryInstanceID"))
    DeleteRecoveryInstanceRequest.struct_class = Types::DeleteRecoveryInstanceRequest

    DeleteReplicationConfigurationTemplateRequest.add_member(:replication_configuration_template_id, Shapes::ShapeRef.new(shape: ReplicationConfigurationTemplateID, required: true, location_name: "replicationConfigurationTemplateID"))
    DeleteReplicationConfigurationTemplateRequest.struct_class = Types::DeleteReplicationConfigurationTemplateRequest

    DeleteReplicationConfigurationTemplateResponse.struct_class = Types::DeleteReplicationConfigurationTemplateResponse

    DeleteSourceNetworkRequest.add_member(:source_network_id, Shapes::ShapeRef.new(shape: SourceNetworkID, required: true, location_name: "sourceNetworkID"))
    DeleteSourceNetworkRequest.struct_class = Types::DeleteSourceNetworkRequest

    DeleteSourceNetworkResponse.struct_class = Types::DeleteSourceNetworkResponse

    DeleteSourceServerRequest.add_member(:source_server_id, Shapes::ShapeRef.new(shape: SourceServerID, required: true, location_name: "sourceServerID"))
    DeleteSourceServerRequest.struct_class = Types::DeleteSourceServerRequest

    DeleteSourceServerResponse.struct_class = Types::DeleteSourceServerResponse

    DescribeJobLogItemsRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: JobID, required: true, location_name: "jobID"))
    DescribeJobLogItemsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: StrictlyPositiveInteger, location_name: "maxResults"))
    DescribeJobLogItemsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    DescribeJobLogItemsRequest.struct_class = Types::DescribeJobLogItemsRequest

    DescribeJobLogItemsResponse.add_member(:items, Shapes::ShapeRef.new(shape: JobLogs, location_name: "items"))
    DescribeJobLogItemsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    DescribeJobLogItemsResponse.struct_class = Types::DescribeJobLogItemsResponse

    DescribeJobsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: DescribeJobsRequestFilters, location_name: "filters"))
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

    DescribeLaunchConfigurationTemplatesRequest.add_member(:launch_configuration_template_i_ds, Shapes::ShapeRef.new(shape: LaunchConfigurationTemplateIDs, location_name: "launchConfigurationTemplateIDs"))
    DescribeLaunchConfigurationTemplatesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsType, location_name: "maxResults"))
    DescribeLaunchConfigurationTemplatesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    DescribeLaunchConfigurationTemplatesRequest.struct_class = Types::DescribeLaunchConfigurationTemplatesRequest

    DescribeLaunchConfigurationTemplatesResponse.add_member(:items, Shapes::ShapeRef.new(shape: LaunchConfigurationTemplates, location_name: "items"))
    DescribeLaunchConfigurationTemplatesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    DescribeLaunchConfigurationTemplatesResponse.struct_class = Types::DescribeLaunchConfigurationTemplatesResponse

    DescribeRecoveryInstancesItems.member = Shapes::ShapeRef.new(shape: RecoveryInstance)

    DescribeRecoveryInstancesRequest.add_member(:filters, Shapes::ShapeRef.new(shape: DescribeRecoveryInstancesRequestFilters, location_name: "filters"))
    DescribeRecoveryInstancesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: StrictlyPositiveInteger, location_name: "maxResults"))
    DescribeRecoveryInstancesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    DescribeRecoveryInstancesRequest.struct_class = Types::DescribeRecoveryInstancesRequest

    DescribeRecoveryInstancesRequestFilters.add_member(:recovery_instance_i_ds, Shapes::ShapeRef.new(shape: RecoveryInstanceIDs, location_name: "recoveryInstanceIDs"))
    DescribeRecoveryInstancesRequestFilters.add_member(:source_server_i_ds, Shapes::ShapeRef.new(shape: SourceServerIDs, location_name: "sourceServerIDs"))
    DescribeRecoveryInstancesRequestFilters.struct_class = Types::DescribeRecoveryInstancesRequestFilters

    DescribeRecoveryInstancesResponse.add_member(:items, Shapes::ShapeRef.new(shape: DescribeRecoveryInstancesItems, location_name: "items"))
    DescribeRecoveryInstancesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    DescribeRecoveryInstancesResponse.struct_class = Types::DescribeRecoveryInstancesResponse

    DescribeRecoverySnapshotsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: DescribeRecoverySnapshotsRequestFilters, location_name: "filters"))
    DescribeRecoverySnapshotsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: StrictlyPositiveInteger, location_name: "maxResults"))
    DescribeRecoverySnapshotsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    DescribeRecoverySnapshotsRequest.add_member(:order, Shapes::ShapeRef.new(shape: RecoverySnapshotsOrder, location_name: "order"))
    DescribeRecoverySnapshotsRequest.add_member(:source_server_id, Shapes::ShapeRef.new(shape: SourceServerID, required: true, location_name: "sourceServerID"))
    DescribeRecoverySnapshotsRequest.struct_class = Types::DescribeRecoverySnapshotsRequest

    DescribeRecoverySnapshotsRequestFilters.add_member(:from_date_time, Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: "fromDateTime"))
    DescribeRecoverySnapshotsRequestFilters.add_member(:to_date_time, Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: "toDateTime"))
    DescribeRecoverySnapshotsRequestFilters.struct_class = Types::DescribeRecoverySnapshotsRequestFilters

    DescribeRecoverySnapshotsResponse.add_member(:items, Shapes::ShapeRef.new(shape: RecoverySnapshotsList, location_name: "items"))
    DescribeRecoverySnapshotsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    DescribeRecoverySnapshotsResponse.struct_class = Types::DescribeRecoverySnapshotsResponse

    DescribeReplicationConfigurationTemplatesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: StrictlyPositiveInteger, location_name: "maxResults"))
    DescribeReplicationConfigurationTemplatesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    DescribeReplicationConfigurationTemplatesRequest.add_member(:replication_configuration_template_i_ds, Shapes::ShapeRef.new(shape: ReplicationConfigurationTemplateIDs, location_name: "replicationConfigurationTemplateIDs"))
    DescribeReplicationConfigurationTemplatesRequest.struct_class = Types::DescribeReplicationConfigurationTemplatesRequest

    DescribeReplicationConfigurationTemplatesResponse.add_member(:items, Shapes::ShapeRef.new(shape: ReplicationConfigurationTemplates, location_name: "items"))
    DescribeReplicationConfigurationTemplatesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    DescribeReplicationConfigurationTemplatesResponse.struct_class = Types::DescribeReplicationConfigurationTemplatesResponse

    DescribeSourceNetworksRequest.add_member(:filters, Shapes::ShapeRef.new(shape: DescribeSourceNetworksRequestFilters, location_name: "filters"))
    DescribeSourceNetworksRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: StrictlyPositiveInteger, location_name: "maxResults"))
    DescribeSourceNetworksRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    DescribeSourceNetworksRequest.struct_class = Types::DescribeSourceNetworksRequest

    DescribeSourceNetworksRequestFilters.add_member(:origin_account_id, Shapes::ShapeRef.new(shape: AccountID, location_name: "originAccountID"))
    DescribeSourceNetworksRequestFilters.add_member(:origin_region, Shapes::ShapeRef.new(shape: AwsRegion, location_name: "originRegion"))
    DescribeSourceNetworksRequestFilters.add_member(:source_network_i_ds, Shapes::ShapeRef.new(shape: DescribeSourceNetworksRequestFiltersIDs, location_name: "sourceNetworkIDs"))
    DescribeSourceNetworksRequestFilters.struct_class = Types::DescribeSourceNetworksRequestFilters

    DescribeSourceNetworksRequestFiltersIDs.member = Shapes::ShapeRef.new(shape: SourceNetworkID)

    DescribeSourceNetworksResponse.add_member(:items, Shapes::ShapeRef.new(shape: SourceNetworksList, location_name: "items"))
    DescribeSourceNetworksResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    DescribeSourceNetworksResponse.struct_class = Types::DescribeSourceNetworksResponse

    DescribeSourceServersRequest.add_member(:filters, Shapes::ShapeRef.new(shape: DescribeSourceServersRequestFilters, location_name: "filters"))
    DescribeSourceServersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: StrictlyPositiveInteger, location_name: "maxResults"))
    DescribeSourceServersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    DescribeSourceServersRequest.struct_class = Types::DescribeSourceServersRequest

    DescribeSourceServersRequestFilters.add_member(:hardware_id, Shapes::ShapeRef.new(shape: BoundedString, location_name: "hardwareId"))
    DescribeSourceServersRequestFilters.add_member(:source_server_i_ds, Shapes::ShapeRef.new(shape: DescribeSourceServersRequestFiltersIDs, location_name: "sourceServerIDs"))
    DescribeSourceServersRequestFilters.add_member(:staging_account_i_ds, Shapes::ShapeRef.new(shape: AccountIDs, location_name: "stagingAccountIDs"))
    DescribeSourceServersRequestFilters.struct_class = Types::DescribeSourceServersRequestFilters

    DescribeSourceServersRequestFiltersIDs.member = Shapes::ShapeRef.new(shape: SourceServerID)

    DescribeSourceServersResponse.add_member(:items, Shapes::ShapeRef.new(shape: SourceServersList, location_name: "items"))
    DescribeSourceServersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    DescribeSourceServersResponse.struct_class = Types::DescribeSourceServersResponse

    DisconnectRecoveryInstanceRequest.add_member(:recovery_instance_id, Shapes::ShapeRef.new(shape: RecoveryInstanceID, required: true, location_name: "recoveryInstanceID"))
    DisconnectRecoveryInstanceRequest.struct_class = Types::DisconnectRecoveryInstanceRequest

    DisconnectSourceServerRequest.add_member(:source_server_id, Shapes::ShapeRef.new(shape: SourceServerID, required: true, location_name: "sourceServerID"))
    DisconnectSourceServerRequest.struct_class = Types::DisconnectSourceServerRequest

    Disk.add_member(:bytes, Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "bytes"))
    Disk.add_member(:device_name, Shapes::ShapeRef.new(shape: BoundedString, location_name: "deviceName"))
    Disk.struct_class = Types::Disk

    Disks.member = Shapes::ShapeRef.new(shape: Disk)

    EbsSnapshotsList.member = Shapes::ShapeRef.new(shape: EbsSnapshot)

    EventResourceData.add_member(:source_network_data, Shapes::ShapeRef.new(shape: SourceNetworkData, location_name: "sourceNetworkData"))
    EventResourceData.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    EventResourceData.add_member_subclass(:source_network_data, Types::EventResourceData::SourceNetworkData)
    EventResourceData.add_member_subclass(:unknown, Types::EventResourceData::Unknown)
    EventResourceData.struct_class = Types::EventResourceData

    ExportSourceNetworkCfnTemplateRequest.add_member(:source_network_id, Shapes::ShapeRef.new(shape: SourceNetworkID, required: true, location_name: "sourceNetworkID"))
    ExportSourceNetworkCfnTemplateRequest.struct_class = Types::ExportSourceNetworkCfnTemplateRequest

    ExportSourceNetworkCfnTemplateResponse.add_member(:s3_destination_url, Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: "s3DestinationUrl"))
    ExportSourceNetworkCfnTemplateResponse.struct_class = Types::ExportSourceNetworkCfnTemplateResponse

    GetFailbackReplicationConfigurationRequest.add_member(:recovery_instance_id, Shapes::ShapeRef.new(shape: RecoveryInstanceID, required: true, location_name: "recoveryInstanceID"))
    GetFailbackReplicationConfigurationRequest.struct_class = Types::GetFailbackReplicationConfigurationRequest

    GetFailbackReplicationConfigurationResponse.add_member(:bandwidth_throttling, Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "bandwidthThrottling"))
    GetFailbackReplicationConfigurationResponse.add_member(:name, Shapes::ShapeRef.new(shape: BoundedString, location_name: "name"))
    GetFailbackReplicationConfigurationResponse.add_member(:recovery_instance_id, Shapes::ShapeRef.new(shape: RecoveryInstanceID, required: true, location_name: "recoveryInstanceID"))
    GetFailbackReplicationConfigurationResponse.add_member(:use_private_ip, Shapes::ShapeRef.new(shape: Boolean, location_name: "usePrivateIP"))
    GetFailbackReplicationConfigurationResponse.struct_class = Types::GetFailbackReplicationConfigurationResponse

    GetLaunchConfigurationRequest.add_member(:source_server_id, Shapes::ShapeRef.new(shape: SourceServerID, required: true, location_name: "sourceServerID"))
    GetLaunchConfigurationRequest.struct_class = Types::GetLaunchConfigurationRequest

    GetReplicationConfigurationRequest.add_member(:source_server_id, Shapes::ShapeRef.new(shape: SourceServerID, required: true, location_name: "sourceServerID"))
    GetReplicationConfigurationRequest.struct_class = Types::GetReplicationConfigurationRequest

    IPsList.member = Shapes::ShapeRef.new(shape: BoundedString)

    IdentificationHints.add_member(:aws_instance_id, Shapes::ShapeRef.new(shape: EC2InstanceID, location_name: "awsInstanceID"))
    IdentificationHints.add_member(:fqdn, Shapes::ShapeRef.new(shape: BoundedString, location_name: "fqdn"))
    IdentificationHints.add_member(:hostname, Shapes::ShapeRef.new(shape: BoundedString, location_name: "hostname"))
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
    Job.add_member(:participating_resources, Shapes::ShapeRef.new(shape: ParticipatingResources, location_name: "participatingResources"))
    Job.add_member(:participating_servers, Shapes::ShapeRef.new(shape: ParticipatingServers, location_name: "participatingServers"))
    Job.add_member(:status, Shapes::ShapeRef.new(shape: JobStatus, location_name: "status"))
    Job.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    Job.add_member(:type, Shapes::ShapeRef.new(shape: JobType, location_name: "type"))
    Job.struct_class = Types::Job

    JobLog.add_member(:event, Shapes::ShapeRef.new(shape: JobLogEvent, location_name: "event"))
    JobLog.add_member(:event_data, Shapes::ShapeRef.new(shape: JobLogEventData, location_name: "eventData"))
    JobLog.add_member(:log_date_time, Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: "logDateTime"))
    JobLog.struct_class = Types::JobLog

    JobLogEventData.add_member(:conversion_properties, Shapes::ShapeRef.new(shape: ConversionProperties, location_name: "conversionProperties"))
    JobLogEventData.add_member(:conversion_server_id, Shapes::ShapeRef.new(shape: EC2InstanceID, location_name: "conversionServerID"))
    JobLogEventData.add_member(:event_resource_data, Shapes::ShapeRef.new(shape: EventResourceData, location_name: "eventResourceData"))
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

    LaunchConfigurationTemplate.add_member(:arn, Shapes::ShapeRef.new(shape: ARN, location_name: "arn"))
    LaunchConfigurationTemplate.add_member(:copy_private_ip, Shapes::ShapeRef.new(shape: Boolean, location_name: "copyPrivateIp"))
    LaunchConfigurationTemplate.add_member(:copy_tags, Shapes::ShapeRef.new(shape: Boolean, location_name: "copyTags"))
    LaunchConfigurationTemplate.add_member(:export_bucket_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "exportBucketArn"))
    LaunchConfigurationTemplate.add_member(:launch_configuration_template_id, Shapes::ShapeRef.new(shape: LaunchConfigurationTemplateID, location_name: "launchConfigurationTemplateID"))
    LaunchConfigurationTemplate.add_member(:launch_disposition, Shapes::ShapeRef.new(shape: LaunchDisposition, location_name: "launchDisposition"))
    LaunchConfigurationTemplate.add_member(:licensing, Shapes::ShapeRef.new(shape: Licensing, location_name: "licensing"))
    LaunchConfigurationTemplate.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    LaunchConfigurationTemplate.add_member(:target_instance_type_right_sizing_method, Shapes::ShapeRef.new(shape: TargetInstanceTypeRightSizingMethod, location_name: "targetInstanceTypeRightSizingMethod"))
    LaunchConfigurationTemplate.struct_class = Types::LaunchConfigurationTemplate

    LaunchConfigurationTemplateIDs.member = Shapes::ShapeRef.new(shape: LaunchConfigurationTemplateID)

    LaunchConfigurationTemplates.member = Shapes::ShapeRef.new(shape: LaunchConfigurationTemplate)

    Licensing.add_member(:os_byol, Shapes::ShapeRef.new(shape: Boolean, location_name: "osByol"))
    Licensing.struct_class = Types::Licensing

    LifeCycle.add_member(:added_to_service_date_time, Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: "addedToServiceDateTime"))
    LifeCycle.add_member(:elapsed_replication_duration, Shapes::ShapeRef.new(shape: ISO8601DurationString, location_name: "elapsedReplicationDuration"))
    LifeCycle.add_member(:first_byte_date_time, Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: "firstByteDateTime"))
    LifeCycle.add_member(:last_launch, Shapes::ShapeRef.new(shape: LifeCycleLastLaunch, location_name: "lastLaunch"))
    LifeCycle.add_member(:last_seen_by_service_date_time, Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: "lastSeenByServiceDateTime"))
    LifeCycle.struct_class = Types::LifeCycle

    LifeCycleLastLaunch.add_member(:initiated, Shapes::ShapeRef.new(shape: LifeCycleLastLaunchInitiated, location_name: "initiated"))
    LifeCycleLastLaunch.add_member(:status, Shapes::ShapeRef.new(shape: LaunchStatus, location_name: "status"))
    LifeCycleLastLaunch.struct_class = Types::LifeCycleLastLaunch

    LifeCycleLastLaunchInitiated.add_member(:api_call_date_time, Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: "apiCallDateTime"))
    LifeCycleLastLaunchInitiated.add_member(:job_id, Shapes::ShapeRef.new(shape: JobID, location_name: "jobID"))
    LifeCycleLastLaunchInitiated.add_member(:type, Shapes::ShapeRef.new(shape: LastLaunchType, location_name: "type"))
    LifeCycleLastLaunchInitiated.struct_class = Types::LifeCycleLastLaunchInitiated

    ListExtensibleSourceServersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsReplicatingSourceServers, location_name: "maxResults"))
    ListExtensibleSourceServersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListExtensibleSourceServersRequest.add_member(:staging_account_id, Shapes::ShapeRef.new(shape: AccountID, required: true, location_name: "stagingAccountID"))
    ListExtensibleSourceServersRequest.struct_class = Types::ListExtensibleSourceServersRequest

    ListExtensibleSourceServersResponse.add_member(:items, Shapes::ShapeRef.new(shape: StagingSourceServersList, location_name: "items"))
    ListExtensibleSourceServersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListExtensibleSourceServersResponse.struct_class = Types::ListExtensibleSourceServersResponse

    ListStagingAccountsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListStagingAccountsRequestMaxResultsInteger, location: "querystring", location_name: "maxResults"))
    ListStagingAccountsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListStagingAccountsRequest.struct_class = Types::ListStagingAccountsRequest

    ListStagingAccountsResponse.add_member(:accounts, Shapes::ShapeRef.new(shape: Accounts, location_name: "accounts"))
    ListStagingAccountsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListStagingAccountsResponse.struct_class = Types::ListStagingAccountsResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location: "uri", location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    NetworkInterface.add_member(:ips, Shapes::ShapeRef.new(shape: IPsList, location_name: "ips"))
    NetworkInterface.add_member(:is_primary, Shapes::ShapeRef.new(shape: Boolean, location_name: "isPrimary"))
    NetworkInterface.add_member(:mac_address, Shapes::ShapeRef.new(shape: BoundedString, location_name: "macAddress"))
    NetworkInterface.struct_class = Types::NetworkInterface

    NetworkInterfaces.member = Shapes::ShapeRef.new(shape: NetworkInterface)

    OS.add_member(:full_string, Shapes::ShapeRef.new(shape: BoundedString, location_name: "fullString"))
    OS.struct_class = Types::OS

    PITPolicy.member = Shapes::ShapeRef.new(shape: PITPolicyRule)

    PITPolicyRule.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "enabled"))
    PITPolicyRule.add_member(:interval, Shapes::ShapeRef.new(shape: StrictlyPositiveInteger, required: true, location_name: "interval"))
    PITPolicyRule.add_member(:retention_duration, Shapes::ShapeRef.new(shape: StrictlyPositiveInteger, required: true, location_name: "retentionDuration"))
    PITPolicyRule.add_member(:rule_id, Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "ruleID"))
    PITPolicyRule.add_member(:units, Shapes::ShapeRef.new(shape: PITPolicyRuleUnits, required: true, location_name: "units"))
    PITPolicyRule.struct_class = Types::PITPolicyRule

    ParticipatingResource.add_member(:launch_status, Shapes::ShapeRef.new(shape: LaunchStatus, location_name: "launchStatus"))
    ParticipatingResource.add_member(:participating_resource_id, Shapes::ShapeRef.new(shape: ParticipatingResourceID, location_name: "participatingResourceID"))
    ParticipatingResource.struct_class = Types::ParticipatingResource

    ParticipatingResourceID.add_member(:source_network_id, Shapes::ShapeRef.new(shape: SourceNetworkID, location_name: "sourceNetworkID"))
    ParticipatingResourceID.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ParticipatingResourceID.add_member_subclass(:source_network_id, Types::ParticipatingResourceID::SourceNetworkId)
    ParticipatingResourceID.add_member_subclass(:unknown, Types::ParticipatingResourceID::Unknown)
    ParticipatingResourceID.struct_class = Types::ParticipatingResourceID

    ParticipatingResources.member = Shapes::ShapeRef.new(shape: ParticipatingResource)

    ParticipatingServer.add_member(:launch_status, Shapes::ShapeRef.new(shape: LaunchStatus, location_name: "launchStatus"))
    ParticipatingServer.add_member(:recovery_instance_id, Shapes::ShapeRef.new(shape: RecoveryInstanceID, location_name: "recoveryInstanceID"))
    ParticipatingServer.add_member(:source_server_id, Shapes::ShapeRef.new(shape: SourceServerID, location_name: "sourceServerID"))
    ParticipatingServer.struct_class = Types::ParticipatingServer

    ParticipatingServers.member = Shapes::ShapeRef.new(shape: ParticipatingServer)

    RecoveryInstance.add_member(:arn, Shapes::ShapeRef.new(shape: ARN, location_name: "arn"))
    RecoveryInstance.add_member(:data_replication_info, Shapes::ShapeRef.new(shape: RecoveryInstanceDataReplicationInfo, location_name: "dataReplicationInfo"))
    RecoveryInstance.add_member(:ec2_instance_id, Shapes::ShapeRef.new(shape: EC2InstanceID, location_name: "ec2InstanceID"))
    RecoveryInstance.add_member(:ec2_instance_state, Shapes::ShapeRef.new(shape: EC2InstanceState, location_name: "ec2InstanceState"))
    RecoveryInstance.add_member(:failback, Shapes::ShapeRef.new(shape: RecoveryInstanceFailback, location_name: "failback"))
    RecoveryInstance.add_member(:is_drill, Shapes::ShapeRef.new(shape: Boolean, location_name: "isDrill"))
    RecoveryInstance.add_member(:job_id, Shapes::ShapeRef.new(shape: JobID, location_name: "jobID"))
    RecoveryInstance.add_member(:origin_availability_zone, Shapes::ShapeRef.new(shape: AwsAvailabilityZone, location_name: "originAvailabilityZone"))
    RecoveryInstance.add_member(:origin_environment, Shapes::ShapeRef.new(shape: OriginEnvironment, location_name: "originEnvironment"))
    RecoveryInstance.add_member(:point_in_time_snapshot_date_time, Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: "pointInTimeSnapshotDateTime"))
    RecoveryInstance.add_member(:recovery_instance_id, Shapes::ShapeRef.new(shape: RecoveryInstanceID, location_name: "recoveryInstanceID"))
    RecoveryInstance.add_member(:recovery_instance_properties, Shapes::ShapeRef.new(shape: RecoveryInstanceProperties, location_name: "recoveryInstanceProperties"))
    RecoveryInstance.add_member(:source_server_id, Shapes::ShapeRef.new(shape: SourceServerID, location_name: "sourceServerID"))
    RecoveryInstance.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    RecoveryInstance.struct_class = Types::RecoveryInstance

    RecoveryInstanceDataReplicationError.add_member(:error, Shapes::ShapeRef.new(shape: FailbackReplicationError, location_name: "error"))
    RecoveryInstanceDataReplicationError.add_member(:raw_error, Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: "rawError"))
    RecoveryInstanceDataReplicationError.struct_class = Types::RecoveryInstanceDataReplicationError

    RecoveryInstanceDataReplicationInfo.add_member(:data_replication_error, Shapes::ShapeRef.new(shape: RecoveryInstanceDataReplicationError, location_name: "dataReplicationError"))
    RecoveryInstanceDataReplicationInfo.add_member(:data_replication_initiation, Shapes::ShapeRef.new(shape: RecoveryInstanceDataReplicationInitiation, location_name: "dataReplicationInitiation"))
    RecoveryInstanceDataReplicationInfo.add_member(:data_replication_state, Shapes::ShapeRef.new(shape: RecoveryInstanceDataReplicationState, location_name: "dataReplicationState"))
    RecoveryInstanceDataReplicationInfo.add_member(:eta_date_time, Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: "etaDateTime"))
    RecoveryInstanceDataReplicationInfo.add_member(:lag_duration, Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: "lagDuration"))
    RecoveryInstanceDataReplicationInfo.add_member(:replicated_disks, Shapes::ShapeRef.new(shape: RecoveryInstanceDataReplicationInfoReplicatedDisks, location_name: "replicatedDisks"))
    RecoveryInstanceDataReplicationInfo.add_member(:staging_availability_zone, Shapes::ShapeRef.new(shape: AwsAvailabilityZone, location_name: "stagingAvailabilityZone"))
    RecoveryInstanceDataReplicationInfo.struct_class = Types::RecoveryInstanceDataReplicationInfo

    RecoveryInstanceDataReplicationInfoReplicatedDisk.add_member(:backlogged_storage_bytes, Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "backloggedStorageBytes"))
    RecoveryInstanceDataReplicationInfoReplicatedDisk.add_member(:device_name, Shapes::ShapeRef.new(shape: BoundedString, location_name: "deviceName"))
    RecoveryInstanceDataReplicationInfoReplicatedDisk.add_member(:replicated_storage_bytes, Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "replicatedStorageBytes"))
    RecoveryInstanceDataReplicationInfoReplicatedDisk.add_member(:rescanned_storage_bytes, Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "rescannedStorageBytes"))
    RecoveryInstanceDataReplicationInfoReplicatedDisk.add_member(:total_storage_bytes, Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "totalStorageBytes"))
    RecoveryInstanceDataReplicationInfoReplicatedDisk.struct_class = Types::RecoveryInstanceDataReplicationInfoReplicatedDisk

    RecoveryInstanceDataReplicationInfoReplicatedDisks.member = Shapes::ShapeRef.new(shape: RecoveryInstanceDataReplicationInfoReplicatedDisk)

    RecoveryInstanceDataReplicationInitiation.add_member(:start_date_time, Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: "startDateTime"))
    RecoveryInstanceDataReplicationInitiation.add_member(:steps, Shapes::ShapeRef.new(shape: RecoveryInstanceDataReplicationInitiationSteps, location_name: "steps"))
    RecoveryInstanceDataReplicationInitiation.struct_class = Types::RecoveryInstanceDataReplicationInitiation

    RecoveryInstanceDataReplicationInitiationStep.add_member(:name, Shapes::ShapeRef.new(shape: RecoveryInstanceDataReplicationInitiationStepName, location_name: "name"))
    RecoveryInstanceDataReplicationInitiationStep.add_member(:status, Shapes::ShapeRef.new(shape: RecoveryInstanceDataReplicationInitiationStepStatus, location_name: "status"))
    RecoveryInstanceDataReplicationInitiationStep.struct_class = Types::RecoveryInstanceDataReplicationInitiationStep

    RecoveryInstanceDataReplicationInitiationSteps.member = Shapes::ShapeRef.new(shape: RecoveryInstanceDataReplicationInitiationStep)

    RecoveryInstanceDisk.add_member(:bytes, Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "bytes"))
    RecoveryInstanceDisk.add_member(:ebs_volume_id, Shapes::ShapeRef.new(shape: EbsVolumeID, location_name: "ebsVolumeID"))
    RecoveryInstanceDisk.add_member(:internal_device_name, Shapes::ShapeRef.new(shape: BoundedString, location_name: "internalDeviceName"))
    RecoveryInstanceDisk.struct_class = Types::RecoveryInstanceDisk

    RecoveryInstanceDisks.member = Shapes::ShapeRef.new(shape: RecoveryInstanceDisk)

    RecoveryInstanceFailback.add_member(:agent_last_seen_by_service_date_time, Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: "agentLastSeenByServiceDateTime"))
    RecoveryInstanceFailback.add_member(:elapsed_replication_duration, Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: "elapsedReplicationDuration"))
    RecoveryInstanceFailback.add_member(:failback_client_id, Shapes::ShapeRef.new(shape: BoundedString, location_name: "failbackClientID"))
    RecoveryInstanceFailback.add_member(:failback_client_last_seen_by_service_date_time, Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: "failbackClientLastSeenByServiceDateTime"))
    RecoveryInstanceFailback.add_member(:failback_initiation_time, Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: "failbackInitiationTime"))
    RecoveryInstanceFailback.add_member(:failback_job_id, Shapes::ShapeRef.new(shape: JobID, location_name: "failbackJobID"))
    RecoveryInstanceFailback.add_member(:failback_launch_type, Shapes::ShapeRef.new(shape: FailbackLaunchType, location_name: "failbackLaunchType"))
    RecoveryInstanceFailback.add_member(:failback_to_original_server, Shapes::ShapeRef.new(shape: Boolean, location_name: "failbackToOriginalServer"))
    RecoveryInstanceFailback.add_member(:first_byte_date_time, Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: "firstByteDateTime"))
    RecoveryInstanceFailback.add_member(:state, Shapes::ShapeRef.new(shape: FailbackState, location_name: "state"))
    RecoveryInstanceFailback.struct_class = Types::RecoveryInstanceFailback

    RecoveryInstanceIDs.member = Shapes::ShapeRef.new(shape: RecoveryInstanceID)

    RecoveryInstanceProperties.add_member(:cpus, Shapes::ShapeRef.new(shape: Cpus, location_name: "cpus"))
    RecoveryInstanceProperties.add_member(:disks, Shapes::ShapeRef.new(shape: RecoveryInstanceDisks, location_name: "disks"))
    RecoveryInstanceProperties.add_member(:identification_hints, Shapes::ShapeRef.new(shape: IdentificationHints, location_name: "identificationHints"))
    RecoveryInstanceProperties.add_member(:last_updated_date_time, Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: "lastUpdatedDateTime"))
    RecoveryInstanceProperties.add_member(:network_interfaces, Shapes::ShapeRef.new(shape: NetworkInterfaces, location_name: "networkInterfaces"))
    RecoveryInstanceProperties.add_member(:os, Shapes::ShapeRef.new(shape: OS, location_name: "os"))
    RecoveryInstanceProperties.add_member(:ram_bytes, Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "ramBytes"))
    RecoveryInstanceProperties.struct_class = Types::RecoveryInstanceProperties

    RecoveryInstancesForTerminationRequest.member = Shapes::ShapeRef.new(shape: RecoveryInstanceID)

    RecoveryLifeCycle.add_member(:api_call_date_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "apiCallDateTime"))
    RecoveryLifeCycle.add_member(:job_id, Shapes::ShapeRef.new(shape: JobID, location_name: "jobID"))
    RecoveryLifeCycle.add_member(:last_recovery_result, Shapes::ShapeRef.new(shape: RecoveryResult, location_name: "lastRecoveryResult"))
    RecoveryLifeCycle.struct_class = Types::RecoveryLifeCycle

    RecoverySnapshot.add_member(:ebs_snapshots, Shapes::ShapeRef.new(shape: EbsSnapshotsList, location_name: "ebsSnapshots"))
    RecoverySnapshot.add_member(:expected_timestamp, Shapes::ShapeRef.new(shape: ISO8601DatetimeString, required: true, location_name: "expectedTimestamp"))
    RecoverySnapshot.add_member(:snapshot_id, Shapes::ShapeRef.new(shape: RecoverySnapshotID, required: true, location_name: "snapshotID"))
    RecoverySnapshot.add_member(:source_server_id, Shapes::ShapeRef.new(shape: SourceServerID, required: true, location_name: "sourceServerID"))
    RecoverySnapshot.add_member(:timestamp, Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: "timestamp"))
    RecoverySnapshot.struct_class = Types::RecoverySnapshot

    RecoverySnapshotsList.member = Shapes::ShapeRef.new(shape: RecoverySnapshot)

    ReplicationConfiguration.add_member(:associate_default_security_group, Shapes::ShapeRef.new(shape: Boolean, location_name: "associateDefaultSecurityGroup"))
    ReplicationConfiguration.add_member(:auto_replicate_new_disks, Shapes::ShapeRef.new(shape: Boolean, location_name: "autoReplicateNewDisks"))
    ReplicationConfiguration.add_member(:bandwidth_throttling, Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "bandwidthThrottling"))
    ReplicationConfiguration.add_member(:create_public_ip, Shapes::ShapeRef.new(shape: Boolean, location_name: "createPublicIP"))
    ReplicationConfiguration.add_member(:data_plane_routing, Shapes::ShapeRef.new(shape: ReplicationConfigurationDataPlaneRouting, location_name: "dataPlaneRouting"))
    ReplicationConfiguration.add_member(:default_large_staging_disk_type, Shapes::ShapeRef.new(shape: ReplicationConfigurationDefaultLargeStagingDiskType, location_name: "defaultLargeStagingDiskType"))
    ReplicationConfiguration.add_member(:ebs_encryption, Shapes::ShapeRef.new(shape: ReplicationConfigurationEbsEncryption, location_name: "ebsEncryption"))
    ReplicationConfiguration.add_member(:ebs_encryption_key_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "ebsEncryptionKeyArn"))
    ReplicationConfiguration.add_member(:name, Shapes::ShapeRef.new(shape: SmallBoundedString, location_name: "name"))
    ReplicationConfiguration.add_member(:pit_policy, Shapes::ShapeRef.new(shape: PITPolicy, location_name: "pitPolicy"))
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
    ReplicationConfigurationReplicatedDisk.add_member(:optimized_staging_disk_type, Shapes::ShapeRef.new(shape: ReplicationConfigurationReplicatedDiskStagingDiskType, location_name: "optimizedStagingDiskType"))
    ReplicationConfigurationReplicatedDisk.add_member(:staging_disk_type, Shapes::ShapeRef.new(shape: ReplicationConfigurationReplicatedDiskStagingDiskType, location_name: "stagingDiskType"))
    ReplicationConfigurationReplicatedDisk.add_member(:throughput, Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "throughput"))
    ReplicationConfigurationReplicatedDisk.struct_class = Types::ReplicationConfigurationReplicatedDisk

    ReplicationConfigurationReplicatedDisks.member = Shapes::ShapeRef.new(shape: ReplicationConfigurationReplicatedDisk)

    ReplicationConfigurationTemplate.add_member(:arn, Shapes::ShapeRef.new(shape: ARN, location_name: "arn"))
    ReplicationConfigurationTemplate.add_member(:associate_default_security_group, Shapes::ShapeRef.new(shape: Boolean, location_name: "associateDefaultSecurityGroup"))
    ReplicationConfigurationTemplate.add_member(:auto_replicate_new_disks, Shapes::ShapeRef.new(shape: Boolean, location_name: "autoReplicateNewDisks"))
    ReplicationConfigurationTemplate.add_member(:bandwidth_throttling, Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "bandwidthThrottling"))
    ReplicationConfigurationTemplate.add_member(:create_public_ip, Shapes::ShapeRef.new(shape: Boolean, location_name: "createPublicIP"))
    ReplicationConfigurationTemplate.add_member(:data_plane_routing, Shapes::ShapeRef.new(shape: ReplicationConfigurationDataPlaneRouting, location_name: "dataPlaneRouting"))
    ReplicationConfigurationTemplate.add_member(:default_large_staging_disk_type, Shapes::ShapeRef.new(shape: ReplicationConfigurationDefaultLargeStagingDiskType, location_name: "defaultLargeStagingDiskType"))
    ReplicationConfigurationTemplate.add_member(:ebs_encryption, Shapes::ShapeRef.new(shape: ReplicationConfigurationEbsEncryption, location_name: "ebsEncryption"))
    ReplicationConfigurationTemplate.add_member(:ebs_encryption_key_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "ebsEncryptionKeyArn"))
    ReplicationConfigurationTemplate.add_member(:pit_policy, Shapes::ShapeRef.new(shape: PITPolicy, location_name: "pitPolicy"))
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

    ResourceNotFoundException.add_member(:code, Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: "code"))
    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: "message"))
    ResourceNotFoundException.add_member(:resource_id, Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: "resourceId"))
    ResourceNotFoundException.add_member(:resource_type, Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: "resourceType"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    RetryDataReplicationRequest.add_member(:source_server_id, Shapes::ShapeRef.new(shape: SourceServerID, required: true, location_name: "sourceServerID"))
    RetryDataReplicationRequest.struct_class = Types::RetryDataReplicationRequest

    ReverseReplicationRequest.add_member(:recovery_instance_id, Shapes::ShapeRef.new(shape: RecoveryInstanceID, required: true, location_name: "recoveryInstanceID"))
    ReverseReplicationRequest.struct_class = Types::ReverseReplicationRequest

    ReverseReplicationResponse.add_member(:reversed_direction_source_server_arn, Shapes::ShapeRef.new(shape: SourceServerARN, location_name: "reversedDirectionSourceServerArn"))
    ReverseReplicationResponse.struct_class = Types::ReverseReplicationResponse

    ServiceQuotaExceededException.add_member(:code, Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: "code"))
    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: "message"))
    ServiceQuotaExceededException.add_member(:quota_code, Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: "quotaCode"))
    ServiceQuotaExceededException.add_member(:resource_id, Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: "resourceId"))
    ServiceQuotaExceededException.add_member(:resource_type, Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: "resourceType"))
    ServiceQuotaExceededException.add_member(:service_code, Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: "serviceCode"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    SourceCloudProperties.add_member(:origin_account_id, Shapes::ShapeRef.new(shape: AccountID, location_name: "originAccountID"))
    SourceCloudProperties.add_member(:origin_availability_zone, Shapes::ShapeRef.new(shape: AwsAvailabilityZone, location_name: "originAvailabilityZone"))
    SourceCloudProperties.add_member(:origin_region, Shapes::ShapeRef.new(shape: AwsRegion, location_name: "originRegion"))
    SourceCloudProperties.struct_class = Types::SourceCloudProperties

    SourceNetwork.add_member(:arn, Shapes::ShapeRef.new(shape: ARN, location_name: "arn"))
    SourceNetwork.add_member(:cfn_stack_name, Shapes::ShapeRef.new(shape: CfnStackName, location_name: "cfnStackName"))
    SourceNetwork.add_member(:last_recovery, Shapes::ShapeRef.new(shape: RecoveryLifeCycle, location_name: "lastRecovery"))
    SourceNetwork.add_member(:launched_vpc_id, Shapes::ShapeRef.new(shape: VpcID, location_name: "launchedVpcID"))
    SourceNetwork.add_member(:replication_status, Shapes::ShapeRef.new(shape: ReplicationStatus, location_name: "replicationStatus"))
    SourceNetwork.add_member(:replication_status_details, Shapes::ShapeRef.new(shape: SensitiveBoundedString, location_name: "replicationStatusDetails"))
    SourceNetwork.add_member(:source_account_id, Shapes::ShapeRef.new(shape: AccountID, location_name: "sourceAccountID"))
    SourceNetwork.add_member(:source_network_id, Shapes::ShapeRef.new(shape: SourceNetworkID, location_name: "sourceNetworkID"))
    SourceNetwork.add_member(:source_region, Shapes::ShapeRef.new(shape: AwsRegion, location_name: "sourceRegion"))
    SourceNetwork.add_member(:source_vpc_id, Shapes::ShapeRef.new(shape: VpcID, location_name: "sourceVpcID"))
    SourceNetwork.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    SourceNetwork.struct_class = Types::SourceNetwork

    SourceNetworkData.add_member(:source_network_id, Shapes::ShapeRef.new(shape: SourceNetworkID, location_name: "sourceNetworkID"))
    SourceNetworkData.add_member(:source_vpc, Shapes::ShapeRef.new(shape: VpcID, location_name: "sourceVpc"))
    SourceNetworkData.add_member(:stack_name, Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: "stackName"))
    SourceNetworkData.add_member(:target_vpc, Shapes::ShapeRef.new(shape: VpcID, location_name: "targetVpc"))
    SourceNetworkData.struct_class = Types::SourceNetworkData

    SourceNetworksList.member = Shapes::ShapeRef.new(shape: SourceNetwork)

    SourceProperties.add_member(:cpus, Shapes::ShapeRef.new(shape: Cpus, location_name: "cpus"))
    SourceProperties.add_member(:disks, Shapes::ShapeRef.new(shape: Disks, location_name: "disks"))
    SourceProperties.add_member(:identification_hints, Shapes::ShapeRef.new(shape: IdentificationHints, location_name: "identificationHints"))
    SourceProperties.add_member(:last_updated_date_time, Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: "lastUpdatedDateTime"))
    SourceProperties.add_member(:network_interfaces, Shapes::ShapeRef.new(shape: NetworkInterfaces, location_name: "networkInterfaces"))
    SourceProperties.add_member(:os, Shapes::ShapeRef.new(shape: OS, location_name: "os"))
    SourceProperties.add_member(:ram_bytes, Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "ramBytes"))
    SourceProperties.add_member(:recommended_instance_type, Shapes::ShapeRef.new(shape: EC2InstanceType, location_name: "recommendedInstanceType"))
    SourceProperties.add_member(:supports_nitro_instances, Shapes::ShapeRef.new(shape: Boolean, location_name: "supportsNitroInstances"))
    SourceProperties.struct_class = Types::SourceProperties

    SourceServer.add_member(:arn, Shapes::ShapeRef.new(shape: ARN, location_name: "arn"))
    SourceServer.add_member(:data_replication_info, Shapes::ShapeRef.new(shape: DataReplicationInfo, location_name: "dataReplicationInfo"))
    SourceServer.add_member(:last_launch_result, Shapes::ShapeRef.new(shape: LastLaunchResult, location_name: "lastLaunchResult"))
    SourceServer.add_member(:life_cycle, Shapes::ShapeRef.new(shape: LifeCycle, location_name: "lifeCycle"))
    SourceServer.add_member(:recovery_instance_id, Shapes::ShapeRef.new(shape: RecoveryInstanceID, location_name: "recoveryInstanceId"))
    SourceServer.add_member(:replication_direction, Shapes::ShapeRef.new(shape: ReplicationDirection, location_name: "replicationDirection"))
    SourceServer.add_member(:reversed_direction_source_server_arn, Shapes::ShapeRef.new(shape: SourceServerARN, location_name: "reversedDirectionSourceServerArn"))
    SourceServer.add_member(:source_cloud_properties, Shapes::ShapeRef.new(shape: SourceCloudProperties, location_name: "sourceCloudProperties"))
    SourceServer.add_member(:source_network_id, Shapes::ShapeRef.new(shape: SourceNetworkID, location_name: "sourceNetworkID"))
    SourceServer.add_member(:source_properties, Shapes::ShapeRef.new(shape: SourceProperties, location_name: "sourceProperties"))
    SourceServer.add_member(:source_server_id, Shapes::ShapeRef.new(shape: SourceServerID, location_name: "sourceServerID"))
    SourceServer.add_member(:staging_area, Shapes::ShapeRef.new(shape: StagingArea, location_name: "stagingArea"))
    SourceServer.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    SourceServer.struct_class = Types::SourceServer

    SourceServerIDs.member = Shapes::ShapeRef.new(shape: SourceServerID)

    SourceServersList.member = Shapes::ShapeRef.new(shape: SourceServer)

    StagingArea.add_member(:error_message, Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: "errorMessage"))
    StagingArea.add_member(:staging_account_id, Shapes::ShapeRef.new(shape: AccountID, location_name: "stagingAccountID"))
    StagingArea.add_member(:staging_source_server_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "stagingSourceServerArn"))
    StagingArea.add_member(:status, Shapes::ShapeRef.new(shape: ExtensionStatus, location_name: "status"))
    StagingArea.struct_class = Types::StagingArea

    StagingSourceServer.add_member(:arn, Shapes::ShapeRef.new(shape: SourceServerARN, location_name: "arn"))
    StagingSourceServer.add_member(:hostname, Shapes::ShapeRef.new(shape: BoundedString, location_name: "hostname"))
    StagingSourceServer.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    StagingSourceServer.struct_class = Types::StagingSourceServer

    StagingSourceServersList.member = Shapes::ShapeRef.new(shape: StagingSourceServer)

    StartFailbackLaunchRequest.add_member(:recovery_instance_i_ds, Shapes::ShapeRef.new(shape: StartFailbackRequestRecoveryInstanceIDs, required: true, location_name: "recoveryInstanceIDs"))
    StartFailbackLaunchRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    StartFailbackLaunchRequest.struct_class = Types::StartFailbackLaunchRequest

    StartFailbackLaunchResponse.add_member(:job, Shapes::ShapeRef.new(shape: Job, location_name: "job"))
    StartFailbackLaunchResponse.struct_class = Types::StartFailbackLaunchResponse

    StartFailbackRequestRecoveryInstanceIDs.member = Shapes::ShapeRef.new(shape: RecoveryInstanceID)

    StartRecoveryRequest.add_member(:is_drill, Shapes::ShapeRef.new(shape: Boolean, location_name: "isDrill"))
    StartRecoveryRequest.add_member(:source_servers, Shapes::ShapeRef.new(shape: StartRecoveryRequestSourceServers, required: true, location_name: "sourceServers"))
    StartRecoveryRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    StartRecoveryRequest.struct_class = Types::StartRecoveryRequest

    StartRecoveryRequestSourceServer.add_member(:recovery_snapshot_id, Shapes::ShapeRef.new(shape: RecoverySnapshotID, location_name: "recoverySnapshotID"))
    StartRecoveryRequestSourceServer.add_member(:source_server_id, Shapes::ShapeRef.new(shape: SourceServerID, required: true, location_name: "sourceServerID"))
    StartRecoveryRequestSourceServer.struct_class = Types::StartRecoveryRequestSourceServer

    StartRecoveryRequestSourceServers.member = Shapes::ShapeRef.new(shape: StartRecoveryRequestSourceServer)

    StartRecoveryResponse.add_member(:job, Shapes::ShapeRef.new(shape: Job, location_name: "job"))
    StartRecoveryResponse.struct_class = Types::StartRecoveryResponse

    StartReplicationRequest.add_member(:source_server_id, Shapes::ShapeRef.new(shape: SourceServerID, required: true, location_name: "sourceServerID"))
    StartReplicationRequest.struct_class = Types::StartReplicationRequest

    StartReplicationResponse.add_member(:source_server, Shapes::ShapeRef.new(shape: SourceServer, location_name: "sourceServer"))
    StartReplicationResponse.struct_class = Types::StartReplicationResponse

    StartSourceNetworkRecoveryRequest.add_member(:deploy_as_new, Shapes::ShapeRef.new(shape: Boolean, location_name: "deployAsNew"))
    StartSourceNetworkRecoveryRequest.add_member(:source_networks, Shapes::ShapeRef.new(shape: StartSourceNetworkRecoveryRequestNetworkEntries, required: true, location_name: "sourceNetworks"))
    StartSourceNetworkRecoveryRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    StartSourceNetworkRecoveryRequest.struct_class = Types::StartSourceNetworkRecoveryRequest

    StartSourceNetworkRecoveryRequestNetworkEntries.member = Shapes::ShapeRef.new(shape: StartSourceNetworkRecoveryRequestNetworkEntry)

    StartSourceNetworkRecoveryRequestNetworkEntry.add_member(:cfn_stack_name, Shapes::ShapeRef.new(shape: CfnStackName, location_name: "cfnStackName"))
    StartSourceNetworkRecoveryRequestNetworkEntry.add_member(:source_network_id, Shapes::ShapeRef.new(shape: SourceNetworkID, required: true, location_name: "sourceNetworkID"))
    StartSourceNetworkRecoveryRequestNetworkEntry.struct_class = Types::StartSourceNetworkRecoveryRequestNetworkEntry

    StartSourceNetworkRecoveryResponse.add_member(:job, Shapes::ShapeRef.new(shape: Job, location_name: "job"))
    StartSourceNetworkRecoveryResponse.struct_class = Types::StartSourceNetworkRecoveryResponse

    StartSourceNetworkReplicationRequest.add_member(:source_network_id, Shapes::ShapeRef.new(shape: SourceNetworkID, required: true, location_name: "sourceNetworkID"))
    StartSourceNetworkReplicationRequest.struct_class = Types::StartSourceNetworkReplicationRequest

    StartSourceNetworkReplicationResponse.add_member(:source_network, Shapes::ShapeRef.new(shape: SourceNetwork, location_name: "sourceNetwork"))
    StartSourceNetworkReplicationResponse.struct_class = Types::StartSourceNetworkReplicationResponse

    StopFailbackRequest.add_member(:recovery_instance_id, Shapes::ShapeRef.new(shape: RecoveryInstanceID, required: true, location_name: "recoveryInstanceID"))
    StopFailbackRequest.struct_class = Types::StopFailbackRequest

    StopReplicationRequest.add_member(:source_server_id, Shapes::ShapeRef.new(shape: SourceServerID, required: true, location_name: "sourceServerID"))
    StopReplicationRequest.struct_class = Types::StopReplicationRequest

    StopReplicationResponse.add_member(:source_server, Shapes::ShapeRef.new(shape: SourceServer, location_name: "sourceServer"))
    StopReplicationResponse.struct_class = Types::StopReplicationResponse

    StopSourceNetworkReplicationRequest.add_member(:source_network_id, Shapes::ShapeRef.new(shape: SourceNetworkID, required: true, location_name: "sourceNetworkID"))
    StopSourceNetworkReplicationRequest.struct_class = Types::StopSourceNetworkReplicationRequest

    StopSourceNetworkReplicationResponse.add_member(:source_network, Shapes::ShapeRef.new(shape: SourceNetwork, location_name: "sourceNetwork"))
    StopSourceNetworkReplicationResponse.struct_class = Types::StopSourceNetworkReplicationResponse

    TagKeys.member = Shapes::ShapeRef.new(shape: TagKey)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location: "uri", location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagsMap.key = Shapes::ShapeRef.new(shape: TagKey)
    TagsMap.value = Shapes::ShapeRef.new(shape: TagValue)

    TerminateRecoveryInstancesRequest.add_member(:recovery_instance_i_ds, Shapes::ShapeRef.new(shape: RecoveryInstancesForTerminationRequest, required: true, location_name: "recoveryInstanceIDs"))
    TerminateRecoveryInstancesRequest.struct_class = Types::TerminateRecoveryInstancesRequest

    TerminateRecoveryInstancesResponse.add_member(:job, Shapes::ShapeRef.new(shape: Job, location_name: "job"))
    TerminateRecoveryInstancesResponse.struct_class = Types::TerminateRecoveryInstancesResponse

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

    UpdateFailbackReplicationConfigurationRequest.add_member(:bandwidth_throttling, Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "bandwidthThrottling"))
    UpdateFailbackReplicationConfigurationRequest.add_member(:name, Shapes::ShapeRef.new(shape: BoundedString, location_name: "name"))
    UpdateFailbackReplicationConfigurationRequest.add_member(:recovery_instance_id, Shapes::ShapeRef.new(shape: RecoveryInstanceID, required: true, location_name: "recoveryInstanceID"))
    UpdateFailbackReplicationConfigurationRequest.add_member(:use_private_ip, Shapes::ShapeRef.new(shape: Boolean, location_name: "usePrivateIP"))
    UpdateFailbackReplicationConfigurationRequest.struct_class = Types::UpdateFailbackReplicationConfigurationRequest

    UpdateLaunchConfigurationRequest.add_member(:copy_private_ip, Shapes::ShapeRef.new(shape: Boolean, location_name: "copyPrivateIp"))
    UpdateLaunchConfigurationRequest.add_member(:copy_tags, Shapes::ShapeRef.new(shape: Boolean, location_name: "copyTags"))
    UpdateLaunchConfigurationRequest.add_member(:launch_disposition, Shapes::ShapeRef.new(shape: LaunchDisposition, location_name: "launchDisposition"))
    UpdateLaunchConfigurationRequest.add_member(:licensing, Shapes::ShapeRef.new(shape: Licensing, location_name: "licensing"))
    UpdateLaunchConfigurationRequest.add_member(:name, Shapes::ShapeRef.new(shape: SmallBoundedString, location_name: "name"))
    UpdateLaunchConfigurationRequest.add_member(:source_server_id, Shapes::ShapeRef.new(shape: SourceServerID, required: true, location_name: "sourceServerID"))
    UpdateLaunchConfigurationRequest.add_member(:target_instance_type_right_sizing_method, Shapes::ShapeRef.new(shape: TargetInstanceTypeRightSizingMethod, location_name: "targetInstanceTypeRightSizingMethod"))
    UpdateLaunchConfigurationRequest.struct_class = Types::UpdateLaunchConfigurationRequest

    UpdateLaunchConfigurationTemplateRequest.add_member(:copy_private_ip, Shapes::ShapeRef.new(shape: Boolean, location_name: "copyPrivateIp"))
    UpdateLaunchConfigurationTemplateRequest.add_member(:copy_tags, Shapes::ShapeRef.new(shape: Boolean, location_name: "copyTags"))
    UpdateLaunchConfigurationTemplateRequest.add_member(:export_bucket_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "exportBucketArn"))
    UpdateLaunchConfigurationTemplateRequest.add_member(:launch_configuration_template_id, Shapes::ShapeRef.new(shape: LaunchConfigurationTemplateID, required: true, location_name: "launchConfigurationTemplateID"))
    UpdateLaunchConfigurationTemplateRequest.add_member(:launch_disposition, Shapes::ShapeRef.new(shape: LaunchDisposition, location_name: "launchDisposition"))
    UpdateLaunchConfigurationTemplateRequest.add_member(:licensing, Shapes::ShapeRef.new(shape: Licensing, location_name: "licensing"))
    UpdateLaunchConfigurationTemplateRequest.add_member(:target_instance_type_right_sizing_method, Shapes::ShapeRef.new(shape: TargetInstanceTypeRightSizingMethod, location_name: "targetInstanceTypeRightSizingMethod"))
    UpdateLaunchConfigurationTemplateRequest.struct_class = Types::UpdateLaunchConfigurationTemplateRequest

    UpdateLaunchConfigurationTemplateResponse.add_member(:launch_configuration_template, Shapes::ShapeRef.new(shape: LaunchConfigurationTemplate, location_name: "launchConfigurationTemplate"))
    UpdateLaunchConfigurationTemplateResponse.struct_class = Types::UpdateLaunchConfigurationTemplateResponse

    UpdateReplicationConfigurationRequest.add_member(:associate_default_security_group, Shapes::ShapeRef.new(shape: Boolean, location_name: "associateDefaultSecurityGroup"))
    UpdateReplicationConfigurationRequest.add_member(:auto_replicate_new_disks, Shapes::ShapeRef.new(shape: Boolean, location_name: "autoReplicateNewDisks"))
    UpdateReplicationConfigurationRequest.add_member(:bandwidth_throttling, Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "bandwidthThrottling"))
    UpdateReplicationConfigurationRequest.add_member(:create_public_ip, Shapes::ShapeRef.new(shape: Boolean, location_name: "createPublicIP"))
    UpdateReplicationConfigurationRequest.add_member(:data_plane_routing, Shapes::ShapeRef.new(shape: ReplicationConfigurationDataPlaneRouting, location_name: "dataPlaneRouting"))
    UpdateReplicationConfigurationRequest.add_member(:default_large_staging_disk_type, Shapes::ShapeRef.new(shape: ReplicationConfigurationDefaultLargeStagingDiskType, location_name: "defaultLargeStagingDiskType"))
    UpdateReplicationConfigurationRequest.add_member(:ebs_encryption, Shapes::ShapeRef.new(shape: ReplicationConfigurationEbsEncryption, location_name: "ebsEncryption"))
    UpdateReplicationConfigurationRequest.add_member(:ebs_encryption_key_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "ebsEncryptionKeyArn"))
    UpdateReplicationConfigurationRequest.add_member(:name, Shapes::ShapeRef.new(shape: SmallBoundedString, location_name: "name"))
    UpdateReplicationConfigurationRequest.add_member(:pit_policy, Shapes::ShapeRef.new(shape: PITPolicy, location_name: "pitPolicy"))
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
    UpdateReplicationConfigurationTemplateRequest.add_member(:auto_replicate_new_disks, Shapes::ShapeRef.new(shape: Boolean, location_name: "autoReplicateNewDisks"))
    UpdateReplicationConfigurationTemplateRequest.add_member(:bandwidth_throttling, Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "bandwidthThrottling"))
    UpdateReplicationConfigurationTemplateRequest.add_member(:create_public_ip, Shapes::ShapeRef.new(shape: Boolean, location_name: "createPublicIP"))
    UpdateReplicationConfigurationTemplateRequest.add_member(:data_plane_routing, Shapes::ShapeRef.new(shape: ReplicationConfigurationDataPlaneRouting, location_name: "dataPlaneRouting"))
    UpdateReplicationConfigurationTemplateRequest.add_member(:default_large_staging_disk_type, Shapes::ShapeRef.new(shape: ReplicationConfigurationDefaultLargeStagingDiskType, location_name: "defaultLargeStagingDiskType"))
    UpdateReplicationConfigurationTemplateRequest.add_member(:ebs_encryption, Shapes::ShapeRef.new(shape: ReplicationConfigurationEbsEncryption, location_name: "ebsEncryption"))
    UpdateReplicationConfigurationTemplateRequest.add_member(:ebs_encryption_key_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "ebsEncryptionKeyArn"))
    UpdateReplicationConfigurationTemplateRequest.add_member(:pit_policy, Shapes::ShapeRef.new(shape: PITPolicy, location_name: "pitPolicy"))
    UpdateReplicationConfigurationTemplateRequest.add_member(:replication_configuration_template_id, Shapes::ShapeRef.new(shape: ReplicationConfigurationTemplateID, required: true, location_name: "replicationConfigurationTemplateID"))
    UpdateReplicationConfigurationTemplateRequest.add_member(:replication_server_instance_type, Shapes::ShapeRef.new(shape: EC2InstanceType, location_name: "replicationServerInstanceType"))
    UpdateReplicationConfigurationTemplateRequest.add_member(:replication_servers_security_groups_i_ds, Shapes::ShapeRef.new(shape: ReplicationServersSecurityGroupsIDs, location_name: "replicationServersSecurityGroupsIDs"))
    UpdateReplicationConfigurationTemplateRequest.add_member(:staging_area_subnet_id, Shapes::ShapeRef.new(shape: SubnetID, location_name: "stagingAreaSubnetId"))
    UpdateReplicationConfigurationTemplateRequest.add_member(:staging_area_tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "stagingAreaTags"))
    UpdateReplicationConfigurationTemplateRequest.add_member(:use_dedicated_replication_server, Shapes::ShapeRef.new(shape: Boolean, location_name: "useDedicatedReplicationServer"))
    UpdateReplicationConfigurationTemplateRequest.struct_class = Types::UpdateReplicationConfigurationTemplateRequest

    ValidationException.add_member(:code, Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: "code"))
    ValidationException.add_member(:field_list, Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: "fieldList"))
    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: "message"))
    ValidationException.add_member(:reason, Shapes::ShapeRef.new(shape: ValidationExceptionReason, location_name: "reason"))
    ValidationException.struct_class = Types::ValidationException

    ValidationExceptionField.add_member(:message, Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: "message"))
    ValidationExceptionField.add_member(:name, Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: "name"))
    ValidationExceptionField.struct_class = Types::ValidationExceptionField

    ValidationExceptionFieldList.member = Shapes::ShapeRef.new(shape: ValidationExceptionField)

    VolumeToConversionMap.key = Shapes::ShapeRef.new(shape: LargeBoundedString)
    VolumeToConversionMap.value = Shapes::ShapeRef.new(shape: ConversionMap)

    VolumeToSizeMap.key = Shapes::ShapeRef.new(shape: LargeBoundedString)
    VolumeToSizeMap.value = Shapes::ShapeRef.new(shape: PositiveInteger)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2020-02-26"

      api.metadata = {
        "apiVersion" => "2020-02-26",
        "endpointPrefix" => "drs",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceAbbreviation" => "drs",
        "serviceFullName" => "Elastic Disaster Recovery Service",
        "serviceId" => "drs",
        "signatureVersion" => "v4",
        "signingName" => "drs",
        "uid" => "drs-2020-02-26",
      }

      api.add_operation(:associate_source_network_stack, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateSourceNetworkStack"
        o.http_method = "POST"
        o.http_request_uri = "/AssociateSourceNetworkStack"
        o.input = Shapes::ShapeRef.new(shape: AssociateSourceNetworkStackRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateSourceNetworkStackResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: UninitializedAccountException)
      end)

      api.add_operation(:create_extended_source_server, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateExtendedSourceServer"
        o.http_method = "POST"
        o.http_request_uri = "/CreateExtendedSourceServer"
        o.input = Shapes::ShapeRef.new(shape: CreateExtendedSourceServerRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateExtendedSourceServerResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: UninitializedAccountException)
      end)

      api.add_operation(:create_launch_configuration_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateLaunchConfigurationTemplate"
        o.http_method = "POST"
        o.http_request_uri = "/CreateLaunchConfigurationTemplate"
        o.input = Shapes::ShapeRef.new(shape: CreateLaunchConfigurationTemplateRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateLaunchConfigurationTemplateResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: UninitializedAccountException)
      end)

      api.add_operation(:create_replication_configuration_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateReplicationConfigurationTemplate"
        o.http_method = "POST"
        o.http_request_uri = "/CreateReplicationConfigurationTemplate"
        o.input = Shapes::ShapeRef.new(shape: CreateReplicationConfigurationTemplateRequest)
        o.output = Shapes::ShapeRef.new(shape: ReplicationConfigurationTemplate)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: UninitializedAccountException)
      end)

      api.add_operation(:create_source_network, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateSourceNetwork"
        o.http_method = "POST"
        o.http_request_uri = "/CreateSourceNetwork"
        o.input = Shapes::ShapeRef.new(shape: CreateSourceNetworkRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateSourceNetworkResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: UninitializedAccountException)
      end)

      api.add_operation(:delete_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteJob"
        o.http_method = "POST"
        o.http_request_uri = "/DeleteJob"
        o.input = Shapes::ShapeRef.new(shape: DeleteJobRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UninitializedAccountException)
      end)

      api.add_operation(:delete_launch_configuration_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteLaunchConfigurationTemplate"
        o.http_method = "POST"
        o.http_request_uri = "/DeleteLaunchConfigurationTemplate"
        o.input = Shapes::ShapeRef.new(shape: DeleteLaunchConfigurationTemplateRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteLaunchConfigurationTemplateResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UninitializedAccountException)
      end)

      api.add_operation(:delete_recovery_instance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteRecoveryInstance"
        o.http_method = "POST"
        o.http_request_uri = "/DeleteRecoveryInstance"
        o.input = Shapes::ShapeRef.new(shape: DeleteRecoveryInstanceRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: UninitializedAccountException)
      end)

      api.add_operation(:delete_replication_configuration_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteReplicationConfigurationTemplate"
        o.http_method = "POST"
        o.http_request_uri = "/DeleteReplicationConfigurationTemplate"
        o.input = Shapes::ShapeRef.new(shape: DeleteReplicationConfigurationTemplateRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteReplicationConfigurationTemplateResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UninitializedAccountException)
      end)

      api.add_operation(:delete_source_network, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteSourceNetwork"
        o.http_method = "POST"
        o.http_request_uri = "/DeleteSourceNetwork"
        o.input = Shapes::ShapeRef.new(shape: DeleteSourceNetworkRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteSourceNetworkResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UninitializedAccountException)
      end)

      api.add_operation(:delete_source_server, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteSourceServer"
        o.http_method = "POST"
        o.http_request_uri = "/DeleteSourceServer"
        o.input = Shapes::ShapeRef.new(shape: DeleteSourceServerRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteSourceServerResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UninitializedAccountException)
      end)

      api.add_operation(:describe_job_log_items, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeJobLogItems"
        o.http_method = "POST"
        o.http_request_uri = "/DescribeJobLogItems"
        o.input = Shapes::ShapeRef.new(shape: DescribeJobLogItemsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeJobLogItemsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: UninitializedAccountException)
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
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: UninitializedAccountException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_launch_configuration_templates, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeLaunchConfigurationTemplates"
        o.http_method = "POST"
        o.http_request_uri = "/DescribeLaunchConfigurationTemplates"
        o.input = Shapes::ShapeRef.new(shape: DescribeLaunchConfigurationTemplatesRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeLaunchConfigurationTemplatesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: UninitializedAccountException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_recovery_instances, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeRecoveryInstances"
        o.http_method = "POST"
        o.http_request_uri = "/DescribeRecoveryInstances"
        o.input = Shapes::ShapeRef.new(shape: DescribeRecoveryInstancesRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeRecoveryInstancesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: UninitializedAccountException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_recovery_snapshots, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeRecoverySnapshots"
        o.http_method = "POST"
        o.http_request_uri = "/DescribeRecoverySnapshots"
        o.input = Shapes::ShapeRef.new(shape: DescribeRecoverySnapshotsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeRecoverySnapshotsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: UninitializedAccountException)
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
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: UninitializedAccountException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_source_networks, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeSourceNetworks"
        o.http_method = "POST"
        o.http_request_uri = "/DescribeSourceNetworks"
        o.input = Shapes::ShapeRef.new(shape: DescribeSourceNetworksRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeSourceNetworksResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: UninitializedAccountException)
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
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: UninitializedAccountException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:disconnect_recovery_instance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisconnectRecoveryInstance"
        o.http_method = "POST"
        o.http_request_uri = "/DisconnectRecoveryInstance"
        o.input = Shapes::ShapeRef.new(shape: DisconnectRecoveryInstanceRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: UninitializedAccountException)
      end)

      api.add_operation(:disconnect_source_server, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisconnectSourceServer"
        o.http_method = "POST"
        o.http_request_uri = "/DisconnectSourceServer"
        o.input = Shapes::ShapeRef.new(shape: DisconnectSourceServerRequest)
        o.output = Shapes::ShapeRef.new(shape: SourceServer)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UninitializedAccountException)
      end)

      api.add_operation(:export_source_network_cfn_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ExportSourceNetworkCfnTemplate"
        o.http_method = "POST"
        o.http_request_uri = "/ExportSourceNetworkCfnTemplate"
        o.input = Shapes::ShapeRef.new(shape: ExportSourceNetworkCfnTemplateRequest)
        o.output = Shapes::ShapeRef.new(shape: ExportSourceNetworkCfnTemplateResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: UninitializedAccountException)
      end)

      api.add_operation(:get_failback_replication_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetFailbackReplicationConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/GetFailbackReplicationConfiguration"
        o.input = Shapes::ShapeRef.new(shape: GetFailbackReplicationConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetFailbackReplicationConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UninitializedAccountException)
      end)

      api.add_operation(:get_launch_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetLaunchConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/GetLaunchConfiguration"
        o.input = Shapes::ShapeRef.new(shape: GetLaunchConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: LaunchConfiguration)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UninitializedAccountException)
      end)

      api.add_operation(:get_replication_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetReplicationConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/GetReplicationConfiguration"
        o.input = Shapes::ShapeRef.new(shape: GetReplicationConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: ReplicationConfiguration)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: UninitializedAccountException)
      end)

      api.add_operation(:initialize_service, Seahorse::Model::Operation.new.tap do |o|
        o.name = "InitializeService"
        o.http_method = "POST"
        o.http_request_uri = "/InitializeService"
        o.input = Shapes::ShapeRef.new(shape: InitializeServiceRequest)
        o.output = Shapes::ShapeRef.new(shape: InitializeServiceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:list_extensible_source_servers, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListExtensibleSourceServers"
        o.http_method = "POST"
        o.http_request_uri = "/ListExtensibleSourceServers"
        o.input = Shapes::ShapeRef.new(shape: ListExtensibleSourceServersRequest)
        o.output = Shapes::ShapeRef.new(shape: ListExtensibleSourceServersResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: UninitializedAccountException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_staging_accounts, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListStagingAccounts"
        o.http_method = "GET"
        o.http_request_uri = "/ListStagingAccounts"
        o.input = Shapes::ShapeRef.new(shape: ListStagingAccountsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListStagingAccountsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: UninitializedAccountException)
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
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:retry_data_replication, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RetryDataReplication"
        o.http_method = "POST"
        o.http_request_uri = "/RetryDataReplication"
        o.deprecated = true
        o.input = Shapes::ShapeRef.new(shape: RetryDataReplicationRequest)
        o.output = Shapes::ShapeRef.new(shape: SourceServer)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: UninitializedAccountException)
      end)

      api.add_operation(:reverse_replication, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ReverseReplication"
        o.http_method = "POST"
        o.http_request_uri = "/ReverseReplication"
        o.input = Shapes::ShapeRef.new(shape: ReverseReplicationRequest)
        o.output = Shapes::ShapeRef.new(shape: ReverseReplicationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: UninitializedAccountException)
      end)

      api.add_operation(:start_failback_launch, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartFailbackLaunch"
        o.http_method = "POST"
        o.http_request_uri = "/StartFailbackLaunch"
        o.input = Shapes::ShapeRef.new(shape: StartFailbackLaunchRequest)
        o.output = Shapes::ShapeRef.new(shape: StartFailbackLaunchResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: UninitializedAccountException)
      end)

      api.add_operation(:start_recovery, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartRecovery"
        o.http_method = "POST"
        o.http_request_uri = "/StartRecovery"
        o.input = Shapes::ShapeRef.new(shape: StartRecoveryRequest)
        o.output = Shapes::ShapeRef.new(shape: StartRecoveryResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UninitializedAccountException)
      end)

      api.add_operation(:start_replication, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartReplication"
        o.http_method = "POST"
        o.http_request_uri = "/StartReplication"
        o.input = Shapes::ShapeRef.new(shape: StartReplicationRequest)
        o.output = Shapes::ShapeRef.new(shape: StartReplicationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UninitializedAccountException)
      end)

      api.add_operation(:start_source_network_recovery, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartSourceNetworkRecovery"
        o.http_method = "POST"
        o.http_request_uri = "/StartSourceNetworkRecovery"
        o.input = Shapes::ShapeRef.new(shape: StartSourceNetworkRecoveryRequest)
        o.output = Shapes::ShapeRef.new(shape: StartSourceNetworkRecoveryResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: UninitializedAccountException)
      end)

      api.add_operation(:start_source_network_replication, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartSourceNetworkReplication"
        o.http_method = "POST"
        o.http_request_uri = "/StartSourceNetworkReplication"
        o.input = Shapes::ShapeRef.new(shape: StartSourceNetworkReplicationRequest)
        o.output = Shapes::ShapeRef.new(shape: StartSourceNetworkReplicationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UninitializedAccountException)
      end)

      api.add_operation(:stop_failback, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopFailback"
        o.http_method = "POST"
        o.http_request_uri = "/StopFailback"
        o.input = Shapes::ShapeRef.new(shape: StopFailbackRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UninitializedAccountException)
      end)

      api.add_operation(:stop_replication, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopReplication"
        o.http_method = "POST"
        o.http_request_uri = "/StopReplication"
        o.input = Shapes::ShapeRef.new(shape: StopReplicationRequest)
        o.output = Shapes::ShapeRef.new(shape: StopReplicationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UninitializedAccountException)
      end)

      api.add_operation(:stop_source_network_replication, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopSourceNetworkReplication"
        o.http_method = "POST"
        o.http_request_uri = "/StopSourceNetworkReplication"
        o.input = Shapes::ShapeRef.new(shape: StopSourceNetworkReplicationRequest)
        o.output = Shapes::ShapeRef.new(shape: StopSourceNetworkReplicationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: UninitializedAccountException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:terminate_recovery_instances, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TerminateRecoveryInstances"
        o.http_method = "POST"
        o.http_request_uri = "/TerminateRecoveryInstances"
        o.input = Shapes::ShapeRef.new(shape: TerminateRecoveryInstancesRequest)
        o.output = Shapes::ShapeRef.new(shape: TerminateRecoveryInstancesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UninitializedAccountException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:update_failback_replication_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateFailbackReplicationConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/UpdateFailbackReplicationConfiguration"
        o.input = Shapes::ShapeRef.new(shape: UpdateFailbackReplicationConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: UninitializedAccountException)
      end)

      api.add_operation(:update_launch_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateLaunchConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/UpdateLaunchConfiguration"
        o.input = Shapes::ShapeRef.new(shape: UpdateLaunchConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: LaunchConfiguration)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: UninitializedAccountException)
      end)

      api.add_operation(:update_launch_configuration_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateLaunchConfigurationTemplate"
        o.http_method = "POST"
        o.http_request_uri = "/UpdateLaunchConfigurationTemplate"
        o.input = Shapes::ShapeRef.new(shape: UpdateLaunchConfigurationTemplateRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateLaunchConfigurationTemplateResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: UninitializedAccountException)
      end)

      api.add_operation(:update_replication_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateReplicationConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/UpdateReplicationConfiguration"
        o.input = Shapes::ShapeRef.new(shape: UpdateReplicationConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: ReplicationConfiguration)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: UninitializedAccountException)
      end)

      api.add_operation(:update_replication_configuration_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateReplicationConfigurationTemplate"
        o.http_method = "POST"
        o.http_request_uri = "/UpdateReplicationConfigurationTemplate"
        o.input = Shapes::ShapeRef.new(shape: UpdateReplicationConfigurationTemplateRequest)
        o.output = Shapes::ShapeRef.new(shape: ReplicationConfigurationTemplate)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: UninitializedAccountException)
      end)
    end

  end
end
