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
    AccountID = Shapes::StringShape.new(name: 'AccountID')
    ActionCategory = Shapes::StringShape.new(name: 'ActionCategory')
    ActionDescription = Shapes::StringShape.new(name: 'ActionDescription')
    ActionID = Shapes::StringShape.new(name: 'ActionID')
    ActionIDs = Shapes::ListShape.new(name: 'ActionIDs')
    ActionName = Shapes::StringShape.new(name: 'ActionName')
    Application = Shapes::StructureShape.new(name: 'Application')
    ApplicationAggregatedStatus = Shapes::StructureShape.new(name: 'ApplicationAggregatedStatus')
    ApplicationDescription = Shapes::StringShape.new(name: 'ApplicationDescription')
    ApplicationHealthStatus = Shapes::StringShape.new(name: 'ApplicationHealthStatus')
    ApplicationID = Shapes::StringShape.new(name: 'ApplicationID')
    ApplicationIDs = Shapes::ListShape.new(name: 'ApplicationIDs')
    ApplicationIDsFilter = Shapes::ListShape.new(name: 'ApplicationIDsFilter')
    ApplicationName = Shapes::StringShape.new(name: 'ApplicationName')
    ApplicationProgressStatus = Shapes::StringShape.new(name: 'ApplicationProgressStatus')
    ApplicationsList = Shapes::ListShape.new(name: 'ApplicationsList')
    ArchiveApplicationRequest = Shapes::StructureShape.new(name: 'ArchiveApplicationRequest')
    ArchiveWaveRequest = Shapes::StructureShape.new(name: 'ArchiveWaveRequest')
    AssociateApplicationsRequest = Shapes::StructureShape.new(name: 'AssociateApplicationsRequest')
    AssociateApplicationsResponse = Shapes::StructureShape.new(name: 'AssociateApplicationsResponse')
    AssociateSourceServersRequest = Shapes::StructureShape.new(name: 'AssociateSourceServersRequest')
    AssociateSourceServersRequestSourceServerIDs = Shapes::ListShape.new(name: 'AssociateSourceServersRequestSourceServerIDs')
    AssociateSourceServersResponse = Shapes::StructureShape.new(name: 'AssociateSourceServersResponse')
    BandwidthThrottling = Shapes::IntegerShape.new(name: 'BandwidthThrottling')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    BootMode = Shapes::StringShape.new(name: 'BootMode')
    BoundedString = Shapes::StringShape.new(name: 'BoundedString')
    CPU = Shapes::StructureShape.new(name: 'CPU')
    ChangeServerLifeCycleStateRequest = Shapes::StructureShape.new(name: 'ChangeServerLifeCycleStateRequest')
    ChangeServerLifeCycleStateSourceServerLifecycle = Shapes::StructureShape.new(name: 'ChangeServerLifeCycleStateSourceServerLifecycle')
    ChangeServerLifeCycleStateSourceServerLifecycleState = Shapes::StringShape.new(name: 'ChangeServerLifeCycleStateSourceServerLifecycleState')
    ClientIdempotencyToken = Shapes::StringShape.new(name: 'ClientIdempotencyToken')
    CloudWatchLogGroupName = Shapes::StringShape.new(name: 'CloudWatchLogGroupName')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    ConflictExceptionErrors = Shapes::ListShape.new(name: 'ConflictExceptionErrors')
    Cpus = Shapes::ListShape.new(name: 'Cpus')
    CreateApplicationRequest = Shapes::StructureShape.new(name: 'CreateApplicationRequest')
    CreateLaunchConfigurationTemplateRequest = Shapes::StructureShape.new(name: 'CreateLaunchConfigurationTemplateRequest')
    CreateReplicationConfigurationTemplateRequest = Shapes::StructureShape.new(name: 'CreateReplicationConfigurationTemplateRequest')
    CreateWaveRequest = Shapes::StructureShape.new(name: 'CreateWaveRequest')
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
    DeleteApplicationRequest = Shapes::StructureShape.new(name: 'DeleteApplicationRequest')
    DeleteApplicationResponse = Shapes::StructureShape.new(name: 'DeleteApplicationResponse')
    DeleteJobRequest = Shapes::StructureShape.new(name: 'DeleteJobRequest')
    DeleteJobResponse = Shapes::StructureShape.new(name: 'DeleteJobResponse')
    DeleteLaunchConfigurationTemplateRequest = Shapes::StructureShape.new(name: 'DeleteLaunchConfigurationTemplateRequest')
    DeleteLaunchConfigurationTemplateResponse = Shapes::StructureShape.new(name: 'DeleteLaunchConfigurationTemplateResponse')
    DeleteReplicationConfigurationTemplateRequest = Shapes::StructureShape.new(name: 'DeleteReplicationConfigurationTemplateRequest')
    DeleteReplicationConfigurationTemplateResponse = Shapes::StructureShape.new(name: 'DeleteReplicationConfigurationTemplateResponse')
    DeleteSourceServerRequest = Shapes::StructureShape.new(name: 'DeleteSourceServerRequest')
    DeleteSourceServerResponse = Shapes::StructureShape.new(name: 'DeleteSourceServerResponse')
    DeleteVcenterClientRequest = Shapes::StructureShape.new(name: 'DeleteVcenterClientRequest')
    DeleteWaveRequest = Shapes::StructureShape.new(name: 'DeleteWaveRequest')
    DeleteWaveResponse = Shapes::StructureShape.new(name: 'DeleteWaveResponse')
    DescribeJobLogItemsRequest = Shapes::StructureShape.new(name: 'DescribeJobLogItemsRequest')
    DescribeJobLogItemsResponse = Shapes::StructureShape.new(name: 'DescribeJobLogItemsResponse')
    DescribeJobsRequest = Shapes::StructureShape.new(name: 'DescribeJobsRequest')
    DescribeJobsRequestFilters = Shapes::StructureShape.new(name: 'DescribeJobsRequestFilters')
    DescribeJobsRequestFiltersJobIDs = Shapes::ListShape.new(name: 'DescribeJobsRequestFiltersJobIDs')
    DescribeJobsResponse = Shapes::StructureShape.new(name: 'DescribeJobsResponse')
    DescribeLaunchConfigurationTemplatesRequest = Shapes::StructureShape.new(name: 'DescribeLaunchConfigurationTemplatesRequest')
    DescribeLaunchConfigurationTemplatesResponse = Shapes::StructureShape.new(name: 'DescribeLaunchConfigurationTemplatesResponse')
    DescribeReplicationConfigurationTemplatesRequest = Shapes::StructureShape.new(name: 'DescribeReplicationConfigurationTemplatesRequest')
    DescribeReplicationConfigurationTemplatesResponse = Shapes::StructureShape.new(name: 'DescribeReplicationConfigurationTemplatesResponse')
    DescribeSourceServersRequest = Shapes::StructureShape.new(name: 'DescribeSourceServersRequest')
    DescribeSourceServersRequestApplicationIDs = Shapes::ListShape.new(name: 'DescribeSourceServersRequestApplicationIDs')
    DescribeSourceServersRequestFilters = Shapes::StructureShape.new(name: 'DescribeSourceServersRequestFilters')
    DescribeSourceServersRequestFiltersIDs = Shapes::ListShape.new(name: 'DescribeSourceServersRequestFiltersIDs')
    DescribeSourceServersResponse = Shapes::StructureShape.new(name: 'DescribeSourceServersResponse')
    DescribeVcenterClientsRequest = Shapes::StructureShape.new(name: 'DescribeVcenterClientsRequest')
    DescribeVcenterClientsResponse = Shapes::StructureShape.new(name: 'DescribeVcenterClientsResponse')
    DisassociateApplicationsRequest = Shapes::StructureShape.new(name: 'DisassociateApplicationsRequest')
    DisassociateApplicationsResponse = Shapes::StructureShape.new(name: 'DisassociateApplicationsResponse')
    DisassociateSourceServersRequest = Shapes::StructureShape.new(name: 'DisassociateSourceServersRequest')
    DisassociateSourceServersRequestSourceServerIDs = Shapes::ListShape.new(name: 'DisassociateSourceServersRequestSourceServerIDs')
    DisassociateSourceServersResponse = Shapes::StructureShape.new(name: 'DisassociateSourceServersResponse')
    DisconnectFromServiceRequest = Shapes::StructureShape.new(name: 'DisconnectFromServiceRequest')
    Disk = Shapes::StructureShape.new(name: 'Disk')
    Disks = Shapes::ListShape.new(name: 'Disks')
    DocumentVersion = Shapes::StringShape.new(name: 'DocumentVersion')
    EC2InstanceID = Shapes::StringShape.new(name: 'EC2InstanceID')
    EC2InstanceType = Shapes::StringShape.new(name: 'EC2InstanceType')
    EC2LaunchConfigurationTemplateID = Shapes::StringShape.new(name: 'EC2LaunchConfigurationTemplateID')
    ErrorDetails = Shapes::StructureShape.new(name: 'ErrorDetails')
    ExportErrorData = Shapes::StructureShape.new(name: 'ExportErrorData')
    ExportErrors = Shapes::ListShape.new(name: 'ExportErrors')
    ExportID = Shapes::StringShape.new(name: 'ExportID')
    ExportStatus = Shapes::StringShape.new(name: 'ExportStatus')
    ExportTask = Shapes::StructureShape.new(name: 'ExportTask')
    ExportTaskError = Shapes::StructureShape.new(name: 'ExportTaskError')
    ExportTaskSummary = Shapes::StructureShape.new(name: 'ExportTaskSummary')
    ExportsList = Shapes::ListShape.new(name: 'ExportsList')
    FinalizeCutoverRequest = Shapes::StructureShape.new(name: 'FinalizeCutoverRequest')
    FirstBoot = Shapes::StringShape.new(name: 'FirstBoot')
    Float = Shapes::FloatShape.new(name: 'Float')
    GetLaunchConfigurationRequest = Shapes::StructureShape.new(name: 'GetLaunchConfigurationRequest')
    GetReplicationConfigurationRequest = Shapes::StructureShape.new(name: 'GetReplicationConfigurationRequest')
    IPsList = Shapes::ListShape.new(name: 'IPsList')
    ISO8601DatetimeString = Shapes::StringShape.new(name: 'ISO8601DatetimeString')
    ISO8601DurationString = Shapes::StringShape.new(name: 'ISO8601DurationString')
    IdentificationHints = Shapes::StructureShape.new(name: 'IdentificationHints')
    ImportErrorData = Shapes::StructureShape.new(name: 'ImportErrorData')
    ImportErrorType = Shapes::StringShape.new(name: 'ImportErrorType')
    ImportErrors = Shapes::ListShape.new(name: 'ImportErrors')
    ImportID = Shapes::StringShape.new(name: 'ImportID')
    ImportIDsFilter = Shapes::ListShape.new(name: 'ImportIDsFilter')
    ImportList = Shapes::ListShape.new(name: 'ImportList')
    ImportStatus = Shapes::StringShape.new(name: 'ImportStatus')
    ImportTask = Shapes::StructureShape.new(name: 'ImportTask')
    ImportTaskError = Shapes::StructureShape.new(name: 'ImportTaskError')
    ImportTaskSummary = Shapes::StructureShape.new(name: 'ImportTaskSummary')
    ImportTaskSummaryApplications = Shapes::StructureShape.new(name: 'ImportTaskSummaryApplications')
    ImportTaskSummaryServers = Shapes::StructureShape.new(name: 'ImportTaskSummaryServers')
    ImportTaskSummaryWaves = Shapes::StructureShape.new(name: 'ImportTaskSummaryWaves')
    InitializeServiceRequest = Shapes::StructureShape.new(name: 'InitializeServiceRequest')
    InitializeServiceResponse = Shapes::StructureShape.new(name: 'InitializeServiceResponse')
    InitiatedBy = Shapes::StringShape.new(name: 'InitiatedBy')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    Iops = Shapes::IntegerShape.new(name: 'Iops')
    JmesPathString = Shapes::StringShape.new(name: 'JmesPathString')
    Job = Shapes::StructureShape.new(name: 'Job')
    JobID = Shapes::StringShape.new(name: 'JobID')
    JobLog = Shapes::StructureShape.new(name: 'JobLog')
    JobLogEvent = Shapes::StringShape.new(name: 'JobLogEvent')
    JobLogEventData = Shapes::StructureShape.new(name: 'JobLogEventData')
    JobLogs = Shapes::ListShape.new(name: 'JobLogs')
    JobPostLaunchActionsLaunchStatus = Shapes::StructureShape.new(name: 'JobPostLaunchActionsLaunchStatus')
    JobStatus = Shapes::StringShape.new(name: 'JobStatus')
    JobType = Shapes::StringShape.new(name: 'JobType')
    JobsList = Shapes::ListShape.new(name: 'JobsList')
    LargeBoundedString = Shapes::StringShape.new(name: 'LargeBoundedString')
    LaunchConfiguration = Shapes::StructureShape.new(name: 'LaunchConfiguration')
    LaunchConfigurationTemplate = Shapes::StructureShape.new(name: 'LaunchConfigurationTemplate')
    LaunchConfigurationTemplateID = Shapes::StringShape.new(name: 'LaunchConfigurationTemplateID')
    LaunchConfigurationTemplateIDs = Shapes::ListShape.new(name: 'LaunchConfigurationTemplateIDs')
    LaunchConfigurationTemplates = Shapes::ListShape.new(name: 'LaunchConfigurationTemplates')
    LaunchDisposition = Shapes::StringShape.new(name: 'LaunchDisposition')
    LaunchStatus = Shapes::StringShape.new(name: 'LaunchStatus')
    LaunchTemplateDiskConf = Shapes::StructureShape.new(name: 'LaunchTemplateDiskConf')
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
    ListApplicationsRequest = Shapes::StructureShape.new(name: 'ListApplicationsRequest')
    ListApplicationsRequestFilters = Shapes::StructureShape.new(name: 'ListApplicationsRequestFilters')
    ListApplicationsResponse = Shapes::StructureShape.new(name: 'ListApplicationsResponse')
    ListExportErrorsRequest = Shapes::StructureShape.new(name: 'ListExportErrorsRequest')
    ListExportErrorsResponse = Shapes::StructureShape.new(name: 'ListExportErrorsResponse')
    ListExportsRequest = Shapes::StructureShape.new(name: 'ListExportsRequest')
    ListExportsRequestFilters = Shapes::StructureShape.new(name: 'ListExportsRequestFilters')
    ListExportsRequestFiltersExportIDs = Shapes::ListShape.new(name: 'ListExportsRequestFiltersExportIDs')
    ListExportsResponse = Shapes::StructureShape.new(name: 'ListExportsResponse')
    ListImportErrorsRequest = Shapes::StructureShape.new(name: 'ListImportErrorsRequest')
    ListImportErrorsResponse = Shapes::StructureShape.new(name: 'ListImportErrorsResponse')
    ListImportsRequest = Shapes::StructureShape.new(name: 'ListImportsRequest')
    ListImportsRequestFilters = Shapes::StructureShape.new(name: 'ListImportsRequestFilters')
    ListImportsResponse = Shapes::StructureShape.new(name: 'ListImportsResponse')
    ListManagedAccountsRequest = Shapes::StructureShape.new(name: 'ListManagedAccountsRequest')
    ListManagedAccountsResponse = Shapes::StructureShape.new(name: 'ListManagedAccountsResponse')
    ListSourceServerActionsRequest = Shapes::StructureShape.new(name: 'ListSourceServerActionsRequest')
    ListSourceServerActionsResponse = Shapes::StructureShape.new(name: 'ListSourceServerActionsResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    ListTemplateActionsRequest = Shapes::StructureShape.new(name: 'ListTemplateActionsRequest')
    ListTemplateActionsResponse = Shapes::StructureShape.new(name: 'ListTemplateActionsResponse')
    ListWavesRequest = Shapes::StructureShape.new(name: 'ListWavesRequest')
    ListWavesRequestFilters = Shapes::StructureShape.new(name: 'ListWavesRequestFilters')
    ListWavesResponse = Shapes::StructureShape.new(name: 'ListWavesResponse')
    ManagedAccount = Shapes::StructureShape.new(name: 'ManagedAccount')
    ManagedAccounts = Shapes::ListShape.new(name: 'ManagedAccounts')
    MarkAsArchivedRequest = Shapes::StructureShape.new(name: 'MarkAsArchivedRequest')
    MaxResultsType = Shapes::IntegerShape.new(name: 'MaxResultsType')
    NetworkInterface = Shapes::StructureShape.new(name: 'NetworkInterface')
    NetworkInterfaces = Shapes::ListShape.new(name: 'NetworkInterfaces')
    OS = Shapes::StructureShape.new(name: 'OS')
    OperatingSystemString = Shapes::StringShape.new(name: 'OperatingSystemString')
    OrderType = Shapes::IntegerShape.new(name: 'OrderType')
    PaginationToken = Shapes::StringShape.new(name: 'PaginationToken')
    ParticipatingServer = Shapes::StructureShape.new(name: 'ParticipatingServer')
    ParticipatingServers = Shapes::ListShape.new(name: 'ParticipatingServers')
    PauseReplicationRequest = Shapes::StructureShape.new(name: 'PauseReplicationRequest')
    PositiveInteger = Shapes::IntegerShape.new(name: 'PositiveInteger')
    PostLaunchActionExecutionStatus = Shapes::StringShape.new(name: 'PostLaunchActionExecutionStatus')
    PostLaunchActions = Shapes::StructureShape.new(name: 'PostLaunchActions')
    PostLaunchActionsDeploymentType = Shapes::StringShape.new(name: 'PostLaunchActionsDeploymentType')
    PostLaunchActionsLaunchStatusList = Shapes::ListShape.new(name: 'PostLaunchActionsLaunchStatusList')
    PostLaunchActionsStatus = Shapes::StructureShape.new(name: 'PostLaunchActionsStatus')
    PutSourceServerActionRequest = Shapes::StructureShape.new(name: 'PutSourceServerActionRequest')
    PutTemplateActionRequest = Shapes::StructureShape.new(name: 'PutTemplateActionRequest')
    RemoveSourceServerActionRequest = Shapes::StructureShape.new(name: 'RemoveSourceServerActionRequest')
    RemoveSourceServerActionResponse = Shapes::StructureShape.new(name: 'RemoveSourceServerActionResponse')
    RemoveTemplateActionRequest = Shapes::StructureShape.new(name: 'RemoveTemplateActionRequest')
    RemoveTemplateActionResponse = Shapes::StructureShape.new(name: 'RemoveTemplateActionResponse')
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
    ResumeReplicationRequest = Shapes::StructureShape.new(name: 'ResumeReplicationRequest')
    RetryDataReplicationRequest = Shapes::StructureShape.new(name: 'RetryDataReplicationRequest')
    S3BucketName = Shapes::StringShape.new(name: 'S3BucketName')
    S3BucketSource = Shapes::StructureShape.new(name: 'S3BucketSource')
    S3Key = Shapes::StringShape.new(name: 'S3Key')
    S3LogBucketName = Shapes::StringShape.new(name: 'S3LogBucketName')
    SecurityGroupID = Shapes::StringShape.new(name: 'SecurityGroupID')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    SmallBoundedString = Shapes::StringShape.new(name: 'SmallBoundedString')
    SourceProperties = Shapes::StructureShape.new(name: 'SourceProperties')
    SourceServer = Shapes::StructureShape.new(name: 'SourceServer')
    SourceServerActionDocument = Shapes::StructureShape.new(name: 'SourceServerActionDocument')
    SourceServerActionDocuments = Shapes::ListShape.new(name: 'SourceServerActionDocuments')
    SourceServerActionsRequestFilters = Shapes::StructureShape.new(name: 'SourceServerActionsRequestFilters')
    SourceServerID = Shapes::StringShape.new(name: 'SourceServerID')
    SourceServersList = Shapes::ListShape.new(name: 'SourceServersList')
    SsmDocument = Shapes::StructureShape.new(name: 'SsmDocument')
    SsmDocumentExternalParameters = Shapes::MapShape.new(name: 'SsmDocumentExternalParameters')
    SsmDocumentName = Shapes::StringShape.new(name: 'SsmDocumentName')
    SsmDocumentParameterName = Shapes::StringShape.new(name: 'SsmDocumentParameterName')
    SsmDocumentParameters = Shapes::MapShape.new(name: 'SsmDocumentParameters')
    SsmDocumentType = Shapes::StringShape.new(name: 'SsmDocumentType')
    SsmDocuments = Shapes::ListShape.new(name: 'SsmDocuments')
    SsmExternalParameter = Shapes::UnionShape.new(name: 'SsmExternalParameter')
    SsmParameterStoreParameter = Shapes::StructureShape.new(name: 'SsmParameterStoreParameter')
    SsmParameterStoreParameterName = Shapes::StringShape.new(name: 'SsmParameterStoreParameterName')
    SsmParameterStoreParameterType = Shapes::StringShape.new(name: 'SsmParameterStoreParameterType')
    SsmParameterStoreParameters = Shapes::ListShape.new(name: 'SsmParameterStoreParameters')
    StartCutoverRequest = Shapes::StructureShape.new(name: 'StartCutoverRequest')
    StartCutoverRequestSourceServerIDs = Shapes::ListShape.new(name: 'StartCutoverRequestSourceServerIDs')
    StartCutoverResponse = Shapes::StructureShape.new(name: 'StartCutoverResponse')
    StartExportRequest = Shapes::StructureShape.new(name: 'StartExportRequest')
    StartExportResponse = Shapes::StructureShape.new(name: 'StartExportResponse')
    StartImportRequest = Shapes::StructureShape.new(name: 'StartImportRequest')
    StartImportResponse = Shapes::StructureShape.new(name: 'StartImportResponse')
    StartReplicationRequest = Shapes::StructureShape.new(name: 'StartReplicationRequest')
    StartTestRequest = Shapes::StructureShape.new(name: 'StartTestRequest')
    StartTestRequestSourceServerIDs = Shapes::ListShape.new(name: 'StartTestRequestSourceServerIDs')
    StartTestResponse = Shapes::StructureShape.new(name: 'StartTestResponse')
    StopReplicationRequest = Shapes::StructureShape.new(name: 'StopReplicationRequest')
    StrictlyPositiveInteger = Shapes::IntegerShape.new(name: 'StrictlyPositiveInteger')
    SubnetID = Shapes::StringShape.new(name: 'SubnetID')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeys = Shapes::ListShape.new(name: 'TagKeys')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TagsMap = Shapes::MapShape.new(name: 'TagsMap')
    TargetInstanceTypeRightSizingMethod = Shapes::StringShape.new(name: 'TargetInstanceTypeRightSizingMethod')
    TemplateActionDocument = Shapes::StructureShape.new(name: 'TemplateActionDocument')
    TemplateActionDocuments = Shapes::ListShape.new(name: 'TemplateActionDocuments')
    TemplateActionsRequestFilters = Shapes::StructureShape.new(name: 'TemplateActionsRequestFilters')
    TerminateTargetInstancesRequest = Shapes::StructureShape.new(name: 'TerminateTargetInstancesRequest')
    TerminateTargetInstancesRequestSourceServerIDs = Shapes::ListShape.new(name: 'TerminateTargetInstancesRequestSourceServerIDs')
    TerminateTargetInstancesResponse = Shapes::StructureShape.new(name: 'TerminateTargetInstancesResponse')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Throughput = Shapes::IntegerShape.new(name: 'Throughput')
    UnarchiveApplicationRequest = Shapes::StructureShape.new(name: 'UnarchiveApplicationRequest')
    UnarchiveWaveRequest = Shapes::StructureShape.new(name: 'UnarchiveWaveRequest')
    UninitializedAccountException = Shapes::StructureShape.new(name: 'UninitializedAccountException')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UpdateApplicationRequest = Shapes::StructureShape.new(name: 'UpdateApplicationRequest')
    UpdateLaunchConfigurationRequest = Shapes::StructureShape.new(name: 'UpdateLaunchConfigurationRequest')
    UpdateLaunchConfigurationTemplateRequest = Shapes::StructureShape.new(name: 'UpdateLaunchConfigurationTemplateRequest')
    UpdateReplicationConfigurationRequest = Shapes::StructureShape.new(name: 'UpdateReplicationConfigurationRequest')
    UpdateReplicationConfigurationTemplateRequest = Shapes::StructureShape.new(name: 'UpdateReplicationConfigurationTemplateRequest')
    UpdateSourceServerReplicationTypeRequest = Shapes::StructureShape.new(name: 'UpdateSourceServerReplicationTypeRequest')
    UpdateWaveRequest = Shapes::StructureShape.new(name: 'UpdateWaveRequest')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationExceptionField = Shapes::StructureShape.new(name: 'ValidationExceptionField')
    ValidationExceptionFieldList = Shapes::ListShape.new(name: 'ValidationExceptionFieldList')
    ValidationExceptionReason = Shapes::StringShape.new(name: 'ValidationExceptionReason')
    VcenterClient = Shapes::StructureShape.new(name: 'VcenterClient')
    VcenterClientID = Shapes::StringShape.new(name: 'VcenterClientID')
    VcenterClientList = Shapes::ListShape.new(name: 'VcenterClientList')
    VolumeType = Shapes::StringShape.new(name: 'VolumeType')
    Wave = Shapes::StructureShape.new(name: 'Wave')
    WaveAggregatedStatus = Shapes::StructureShape.new(name: 'WaveAggregatedStatus')
    WaveDescription = Shapes::StringShape.new(name: 'WaveDescription')
    WaveHealthStatus = Shapes::StringShape.new(name: 'WaveHealthStatus')
    WaveID = Shapes::StringShape.new(name: 'WaveID')
    WaveIDsFilter = Shapes::ListShape.new(name: 'WaveIDsFilter')
    WaveName = Shapes::StringShape.new(name: 'WaveName')
    WaveProgressStatus = Shapes::StringShape.new(name: 'WaveProgressStatus')
    WavesList = Shapes::ListShape.new(name: 'WavesList')

    AccessDeniedException.add_member(:code, Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: "code"))
    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    ActionIDs.member = Shapes::ShapeRef.new(shape: ActionID)

    Application.add_member(:application_aggregated_status, Shapes::ShapeRef.new(shape: ApplicationAggregatedStatus, location_name: "applicationAggregatedStatus"))
    Application.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationID, location_name: "applicationID"))
    Application.add_member(:arn, Shapes::ShapeRef.new(shape: ARN, location_name: "arn"))
    Application.add_member(:creation_date_time, Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: "creationDateTime"))
    Application.add_member(:description, Shapes::ShapeRef.new(shape: ApplicationDescription, location_name: "description"))
    Application.add_member(:is_archived, Shapes::ShapeRef.new(shape: Boolean, location_name: "isArchived"))
    Application.add_member(:last_modified_date_time, Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: "lastModifiedDateTime"))
    Application.add_member(:name, Shapes::ShapeRef.new(shape: ApplicationName, location_name: "name"))
    Application.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    Application.add_member(:wave_id, Shapes::ShapeRef.new(shape: WaveID, location_name: "waveID"))
    Application.struct_class = Types::Application

    ApplicationAggregatedStatus.add_member(:health_status, Shapes::ShapeRef.new(shape: ApplicationHealthStatus, location_name: "healthStatus"))
    ApplicationAggregatedStatus.add_member(:last_update_date_time, Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: "lastUpdateDateTime"))
    ApplicationAggregatedStatus.add_member(:progress_status, Shapes::ShapeRef.new(shape: ApplicationProgressStatus, location_name: "progressStatus"))
    ApplicationAggregatedStatus.add_member(:total_source_servers, Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "totalSourceServers"))
    ApplicationAggregatedStatus.struct_class = Types::ApplicationAggregatedStatus

    ApplicationIDs.member = Shapes::ShapeRef.new(shape: ApplicationID)

    ApplicationIDsFilter.member = Shapes::ShapeRef.new(shape: ApplicationID)

    ApplicationsList.member = Shapes::ShapeRef.new(shape: Application)

    ArchiveApplicationRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountID, location_name: "accountID"))
    ArchiveApplicationRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationID, required: true, location_name: "applicationID"))
    ArchiveApplicationRequest.struct_class = Types::ArchiveApplicationRequest

    ArchiveWaveRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountID, location_name: "accountID"))
    ArchiveWaveRequest.add_member(:wave_id, Shapes::ShapeRef.new(shape: WaveID, required: true, location_name: "waveID"))
    ArchiveWaveRequest.struct_class = Types::ArchiveWaveRequest

    AssociateApplicationsRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountID, location_name: "accountID"))
    AssociateApplicationsRequest.add_member(:application_i_ds, Shapes::ShapeRef.new(shape: ApplicationIDs, required: true, location_name: "applicationIDs"))
    AssociateApplicationsRequest.add_member(:wave_id, Shapes::ShapeRef.new(shape: WaveID, required: true, location_name: "waveID"))
    AssociateApplicationsRequest.struct_class = Types::AssociateApplicationsRequest

    AssociateApplicationsResponse.struct_class = Types::AssociateApplicationsResponse

    AssociateSourceServersRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountID, location_name: "accountID"))
    AssociateSourceServersRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationID, required: true, location_name: "applicationID"))
    AssociateSourceServersRequest.add_member(:source_server_i_ds, Shapes::ShapeRef.new(shape: AssociateSourceServersRequestSourceServerIDs, required: true, location_name: "sourceServerIDs"))
    AssociateSourceServersRequest.struct_class = Types::AssociateSourceServersRequest

    AssociateSourceServersRequestSourceServerIDs.member = Shapes::ShapeRef.new(shape: SourceServerID)

    AssociateSourceServersResponse.struct_class = Types::AssociateSourceServersResponse

    CPU.add_member(:cores, Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "cores"))
    CPU.add_member(:model_name, Shapes::ShapeRef.new(shape: BoundedString, location_name: "modelName"))
    CPU.struct_class = Types::CPU

    ChangeServerLifeCycleStateRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountID, location_name: "accountID"))
    ChangeServerLifeCycleStateRequest.add_member(:life_cycle, Shapes::ShapeRef.new(shape: ChangeServerLifeCycleStateSourceServerLifecycle, required: true, location_name: "lifeCycle"))
    ChangeServerLifeCycleStateRequest.add_member(:source_server_id, Shapes::ShapeRef.new(shape: SourceServerID, required: true, location_name: "sourceServerID"))
    ChangeServerLifeCycleStateRequest.struct_class = Types::ChangeServerLifeCycleStateRequest

    ChangeServerLifeCycleStateSourceServerLifecycle.add_member(:state, Shapes::ShapeRef.new(shape: ChangeServerLifeCycleStateSourceServerLifecycleState, required: true, location_name: "state"))
    ChangeServerLifeCycleStateSourceServerLifecycle.struct_class = Types::ChangeServerLifeCycleStateSourceServerLifecycle

    ConflictException.add_member(:code, Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: "code"))
    ConflictException.add_member(:errors, Shapes::ShapeRef.new(shape: ConflictExceptionErrors, location_name: "errors"))
    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: "message"))
    ConflictException.add_member(:resource_id, Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: "resourceId"))
    ConflictException.add_member(:resource_type, Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: "resourceType"))
    ConflictException.struct_class = Types::ConflictException

    ConflictExceptionErrors.member = Shapes::ShapeRef.new(shape: ErrorDetails)

    Cpus.member = Shapes::ShapeRef.new(shape: CPU)

    CreateApplicationRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountID, location_name: "accountID"))
    CreateApplicationRequest.add_member(:description, Shapes::ShapeRef.new(shape: ApplicationDescription, location_name: "description"))
    CreateApplicationRequest.add_member(:name, Shapes::ShapeRef.new(shape: ApplicationName, required: true, location_name: "name"))
    CreateApplicationRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    CreateApplicationRequest.struct_class = Types::CreateApplicationRequest

    CreateLaunchConfigurationTemplateRequest.add_member(:associate_public_ip_address, Shapes::ShapeRef.new(shape: Boolean, location_name: "associatePublicIpAddress"))
    CreateLaunchConfigurationTemplateRequest.add_member(:boot_mode, Shapes::ShapeRef.new(shape: BootMode, location_name: "bootMode"))
    CreateLaunchConfigurationTemplateRequest.add_member(:copy_private_ip, Shapes::ShapeRef.new(shape: Boolean, location_name: "copyPrivateIp"))
    CreateLaunchConfigurationTemplateRequest.add_member(:copy_tags, Shapes::ShapeRef.new(shape: Boolean, location_name: "copyTags"))
    CreateLaunchConfigurationTemplateRequest.add_member(:enable_map_auto_tagging, Shapes::ShapeRef.new(shape: Boolean, location_name: "enableMapAutoTagging"))
    CreateLaunchConfigurationTemplateRequest.add_member(:large_volume_conf, Shapes::ShapeRef.new(shape: LaunchTemplateDiskConf, location_name: "largeVolumeConf"))
    CreateLaunchConfigurationTemplateRequest.add_member(:launch_disposition, Shapes::ShapeRef.new(shape: LaunchDisposition, location_name: "launchDisposition"))
    CreateLaunchConfigurationTemplateRequest.add_member(:licensing, Shapes::ShapeRef.new(shape: Licensing, location_name: "licensing"))
    CreateLaunchConfigurationTemplateRequest.add_member(:map_auto_tagging_mpe_id, Shapes::ShapeRef.new(shape: TagValue, location_name: "mapAutoTaggingMpeID"))
    CreateLaunchConfigurationTemplateRequest.add_member(:post_launch_actions, Shapes::ShapeRef.new(shape: PostLaunchActions, location_name: "postLaunchActions"))
    CreateLaunchConfigurationTemplateRequest.add_member(:small_volume_conf, Shapes::ShapeRef.new(shape: LaunchTemplateDiskConf, location_name: "smallVolumeConf"))
    CreateLaunchConfigurationTemplateRequest.add_member(:small_volume_max_size, Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "smallVolumeMaxSize"))
    CreateLaunchConfigurationTemplateRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    CreateLaunchConfigurationTemplateRequest.add_member(:target_instance_type_right_sizing_method, Shapes::ShapeRef.new(shape: TargetInstanceTypeRightSizingMethod, location_name: "targetInstanceTypeRightSizingMethod"))
    CreateLaunchConfigurationTemplateRequest.struct_class = Types::CreateLaunchConfigurationTemplateRequest

    CreateReplicationConfigurationTemplateRequest.add_member(:associate_default_security_group, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "associateDefaultSecurityGroup"))
    CreateReplicationConfigurationTemplateRequest.add_member(:bandwidth_throttling, Shapes::ShapeRef.new(shape: BandwidthThrottling, required: true, location_name: "bandwidthThrottling"))
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
    CreateReplicationConfigurationTemplateRequest.add_member(:use_fips_endpoint, Shapes::ShapeRef.new(shape: Boolean, location_name: "useFipsEndpoint"))
    CreateReplicationConfigurationTemplateRequest.struct_class = Types::CreateReplicationConfigurationTemplateRequest

    CreateWaveRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountID, location_name: "accountID"))
    CreateWaveRequest.add_member(:description, Shapes::ShapeRef.new(shape: WaveDescription, location_name: "description"))
    CreateWaveRequest.add_member(:name, Shapes::ShapeRef.new(shape: WaveName, required: true, location_name: "name"))
    CreateWaveRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    CreateWaveRequest.struct_class = Types::CreateWaveRequest

    DataReplicationError.add_member(:error, Shapes::ShapeRef.new(shape: DataReplicationErrorString, location_name: "error"))
    DataReplicationError.add_member(:raw_error, Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: "rawError"))
    DataReplicationError.struct_class = Types::DataReplicationError

    DataReplicationInfo.add_member(:data_replication_error, Shapes::ShapeRef.new(shape: DataReplicationError, location_name: "dataReplicationError"))
    DataReplicationInfo.add_member(:data_replication_initiation, Shapes::ShapeRef.new(shape: DataReplicationInitiation, location_name: "dataReplicationInitiation"))
    DataReplicationInfo.add_member(:data_replication_state, Shapes::ShapeRef.new(shape: DataReplicationState, location_name: "dataReplicationState"))
    DataReplicationInfo.add_member(:eta_date_time, Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: "etaDateTime"))
    DataReplicationInfo.add_member(:lag_duration, Shapes::ShapeRef.new(shape: ISO8601DurationString, location_name: "lagDuration"))
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

    DeleteApplicationRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountID, location_name: "accountID"))
    DeleteApplicationRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationID, required: true, location_name: "applicationID"))
    DeleteApplicationRequest.struct_class = Types::DeleteApplicationRequest

    DeleteApplicationResponse.struct_class = Types::DeleteApplicationResponse

    DeleteJobRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountID, location_name: "accountID"))
    DeleteJobRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: JobID, required: true, location_name: "jobID"))
    DeleteJobRequest.struct_class = Types::DeleteJobRequest

    DeleteJobResponse.struct_class = Types::DeleteJobResponse

    DeleteLaunchConfigurationTemplateRequest.add_member(:launch_configuration_template_id, Shapes::ShapeRef.new(shape: LaunchConfigurationTemplateID, required: true, location_name: "launchConfigurationTemplateID"))
    DeleteLaunchConfigurationTemplateRequest.struct_class = Types::DeleteLaunchConfigurationTemplateRequest

    DeleteLaunchConfigurationTemplateResponse.struct_class = Types::DeleteLaunchConfigurationTemplateResponse

    DeleteReplicationConfigurationTemplateRequest.add_member(:replication_configuration_template_id, Shapes::ShapeRef.new(shape: ReplicationConfigurationTemplateID, required: true, location_name: "replicationConfigurationTemplateID"))
    DeleteReplicationConfigurationTemplateRequest.struct_class = Types::DeleteReplicationConfigurationTemplateRequest

    DeleteReplicationConfigurationTemplateResponse.struct_class = Types::DeleteReplicationConfigurationTemplateResponse

    DeleteSourceServerRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountID, location_name: "accountID"))
    DeleteSourceServerRequest.add_member(:source_server_id, Shapes::ShapeRef.new(shape: SourceServerID, required: true, location_name: "sourceServerID"))
    DeleteSourceServerRequest.struct_class = Types::DeleteSourceServerRequest

    DeleteSourceServerResponse.struct_class = Types::DeleteSourceServerResponse

    DeleteVcenterClientRequest.add_member(:vcenter_client_id, Shapes::ShapeRef.new(shape: VcenterClientID, required: true, location_name: "vcenterClientID"))
    DeleteVcenterClientRequest.struct_class = Types::DeleteVcenterClientRequest

    DeleteWaveRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountID, location_name: "accountID"))
    DeleteWaveRequest.add_member(:wave_id, Shapes::ShapeRef.new(shape: WaveID, required: true, location_name: "waveID"))
    DeleteWaveRequest.struct_class = Types::DeleteWaveRequest

    DeleteWaveResponse.struct_class = Types::DeleteWaveResponse

    DescribeJobLogItemsRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountID, location_name: "accountID"))
    DescribeJobLogItemsRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: JobID, required: true, location_name: "jobID"))
    DescribeJobLogItemsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsType, location_name: "maxResults"))
    DescribeJobLogItemsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    DescribeJobLogItemsRequest.struct_class = Types::DescribeJobLogItemsRequest

    DescribeJobLogItemsResponse.add_member(:items, Shapes::ShapeRef.new(shape: JobLogs, location_name: "items"))
    DescribeJobLogItemsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    DescribeJobLogItemsResponse.struct_class = Types::DescribeJobLogItemsResponse

    DescribeJobsRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountID, location_name: "accountID"))
    DescribeJobsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: DescribeJobsRequestFilters, location_name: "filters"))
    DescribeJobsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsType, location_name: "maxResults"))
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

    DescribeReplicationConfigurationTemplatesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsType, location_name: "maxResults"))
    DescribeReplicationConfigurationTemplatesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    DescribeReplicationConfigurationTemplatesRequest.add_member(:replication_configuration_template_i_ds, Shapes::ShapeRef.new(shape: ReplicationConfigurationTemplateIDs, location_name: "replicationConfigurationTemplateIDs"))
    DescribeReplicationConfigurationTemplatesRequest.struct_class = Types::DescribeReplicationConfigurationTemplatesRequest

    DescribeReplicationConfigurationTemplatesResponse.add_member(:items, Shapes::ShapeRef.new(shape: ReplicationConfigurationTemplates, location_name: "items"))
    DescribeReplicationConfigurationTemplatesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    DescribeReplicationConfigurationTemplatesResponse.struct_class = Types::DescribeReplicationConfigurationTemplatesResponse

    DescribeSourceServersRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountID, location_name: "accountID"))
    DescribeSourceServersRequest.add_member(:filters, Shapes::ShapeRef.new(shape: DescribeSourceServersRequestFilters, location_name: "filters"))
    DescribeSourceServersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsType, location_name: "maxResults"))
    DescribeSourceServersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    DescribeSourceServersRequest.struct_class = Types::DescribeSourceServersRequest

    DescribeSourceServersRequestApplicationIDs.member = Shapes::ShapeRef.new(shape: ApplicationID)

    DescribeSourceServersRequestFilters.add_member(:application_i_ds, Shapes::ShapeRef.new(shape: DescribeSourceServersRequestApplicationIDs, location_name: "applicationIDs"))
    DescribeSourceServersRequestFilters.add_member(:is_archived, Shapes::ShapeRef.new(shape: Boolean, location_name: "isArchived"))
    DescribeSourceServersRequestFilters.add_member(:life_cycle_states, Shapes::ShapeRef.new(shape: LifeCycleStates, location_name: "lifeCycleStates"))
    DescribeSourceServersRequestFilters.add_member(:replication_types, Shapes::ShapeRef.new(shape: ReplicationTypes, location_name: "replicationTypes"))
    DescribeSourceServersRequestFilters.add_member(:source_server_i_ds, Shapes::ShapeRef.new(shape: DescribeSourceServersRequestFiltersIDs, location_name: "sourceServerIDs"))
    DescribeSourceServersRequestFilters.struct_class = Types::DescribeSourceServersRequestFilters

    DescribeSourceServersRequestFiltersIDs.member = Shapes::ShapeRef.new(shape: SourceServerID)

    DescribeSourceServersResponse.add_member(:items, Shapes::ShapeRef.new(shape: SourceServersList, location_name: "items"))
    DescribeSourceServersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    DescribeSourceServersResponse.struct_class = Types::DescribeSourceServersResponse

    DescribeVcenterClientsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsType, location: "querystring", location_name: "maxResults"))
    DescribeVcenterClientsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    DescribeVcenterClientsRequest.struct_class = Types::DescribeVcenterClientsRequest

    DescribeVcenterClientsResponse.add_member(:items, Shapes::ShapeRef.new(shape: VcenterClientList, location_name: "items"))
    DescribeVcenterClientsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    DescribeVcenterClientsResponse.struct_class = Types::DescribeVcenterClientsResponse

    DisassociateApplicationsRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountID, location_name: "accountID"))
    DisassociateApplicationsRequest.add_member(:application_i_ds, Shapes::ShapeRef.new(shape: ApplicationIDs, required: true, location_name: "applicationIDs"))
    DisassociateApplicationsRequest.add_member(:wave_id, Shapes::ShapeRef.new(shape: WaveID, required: true, location_name: "waveID"))
    DisassociateApplicationsRequest.struct_class = Types::DisassociateApplicationsRequest

    DisassociateApplicationsResponse.struct_class = Types::DisassociateApplicationsResponse

    DisassociateSourceServersRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountID, location_name: "accountID"))
    DisassociateSourceServersRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationID, required: true, location_name: "applicationID"))
    DisassociateSourceServersRequest.add_member(:source_server_i_ds, Shapes::ShapeRef.new(shape: DisassociateSourceServersRequestSourceServerIDs, required: true, location_name: "sourceServerIDs"))
    DisassociateSourceServersRequest.struct_class = Types::DisassociateSourceServersRequest

    DisassociateSourceServersRequestSourceServerIDs.member = Shapes::ShapeRef.new(shape: SourceServerID)

    DisassociateSourceServersResponse.struct_class = Types::DisassociateSourceServersResponse

    DisconnectFromServiceRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountID, location_name: "accountID"))
    DisconnectFromServiceRequest.add_member(:source_server_id, Shapes::ShapeRef.new(shape: SourceServerID, required: true, location_name: "sourceServerID"))
    DisconnectFromServiceRequest.struct_class = Types::DisconnectFromServiceRequest

    Disk.add_member(:bytes, Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "bytes"))
    Disk.add_member(:device_name, Shapes::ShapeRef.new(shape: BoundedString, location_name: "deviceName"))
    Disk.struct_class = Types::Disk

    Disks.member = Shapes::ShapeRef.new(shape: Disk)

    ErrorDetails.add_member(:code, Shapes::ShapeRef.new(shape: BoundedString, location_name: "code"))
    ErrorDetails.add_member(:message, Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: "message"))
    ErrorDetails.add_member(:resource_id, Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: "resourceId"))
    ErrorDetails.add_member(:resource_type, Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: "resourceType"))
    ErrorDetails.struct_class = Types::ErrorDetails

    ExportErrorData.add_member(:raw_error, Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: "rawError"))
    ExportErrorData.struct_class = Types::ExportErrorData

    ExportErrors.member = Shapes::ShapeRef.new(shape: ExportTaskError)

    ExportTask.add_member(:creation_date_time, Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: "creationDateTime"))
    ExportTask.add_member(:end_date_time, Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: "endDateTime"))
    ExportTask.add_member(:export_id, Shapes::ShapeRef.new(shape: ExportID, location_name: "exportID"))
    ExportTask.add_member(:progress_percentage, Shapes::ShapeRef.new(shape: Float, location_name: "progressPercentage"))
    ExportTask.add_member(:s3_bucket, Shapes::ShapeRef.new(shape: S3BucketName, location_name: "s3Bucket"))
    ExportTask.add_member(:s3_bucket_owner, Shapes::ShapeRef.new(shape: AccountID, location_name: "s3BucketOwner"))
    ExportTask.add_member(:s3_key, Shapes::ShapeRef.new(shape: S3Key, location_name: "s3Key"))
    ExportTask.add_member(:status, Shapes::ShapeRef.new(shape: ExportStatus, location_name: "status"))
    ExportTask.add_member(:summary, Shapes::ShapeRef.new(shape: ExportTaskSummary, location_name: "summary"))
    ExportTask.struct_class = Types::ExportTask

    ExportTaskError.add_member(:error_data, Shapes::ShapeRef.new(shape: ExportErrorData, location_name: "errorData"))
    ExportTaskError.add_member(:error_date_time, Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: "errorDateTime"))
    ExportTaskError.struct_class = Types::ExportTaskError

    ExportTaskSummary.add_member(:applications_count, Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "applicationsCount"))
    ExportTaskSummary.add_member(:servers_count, Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "serversCount"))
    ExportTaskSummary.add_member(:waves_count, Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "wavesCount"))
    ExportTaskSummary.struct_class = Types::ExportTaskSummary

    ExportsList.member = Shapes::ShapeRef.new(shape: ExportTask)

    FinalizeCutoverRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountID, location_name: "accountID"))
    FinalizeCutoverRequest.add_member(:source_server_id, Shapes::ShapeRef.new(shape: SourceServerID, required: true, location_name: "sourceServerID"))
    FinalizeCutoverRequest.struct_class = Types::FinalizeCutoverRequest

    GetLaunchConfigurationRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountID, location_name: "accountID"))
    GetLaunchConfigurationRequest.add_member(:source_server_id, Shapes::ShapeRef.new(shape: SourceServerID, required: true, location_name: "sourceServerID"))
    GetLaunchConfigurationRequest.struct_class = Types::GetLaunchConfigurationRequest

    GetReplicationConfigurationRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountID, location_name: "accountID"))
    GetReplicationConfigurationRequest.add_member(:source_server_id, Shapes::ShapeRef.new(shape: SourceServerID, required: true, location_name: "sourceServerID"))
    GetReplicationConfigurationRequest.struct_class = Types::GetReplicationConfigurationRequest

    IPsList.member = Shapes::ShapeRef.new(shape: BoundedString)

    IdentificationHints.add_member(:aws_instance_id, Shapes::ShapeRef.new(shape: EC2InstanceID, location_name: "awsInstanceID"))
    IdentificationHints.add_member(:fqdn, Shapes::ShapeRef.new(shape: BoundedString, location_name: "fqdn"))
    IdentificationHints.add_member(:hostname, Shapes::ShapeRef.new(shape: BoundedString, location_name: "hostname"))
    IdentificationHints.add_member(:vm_path, Shapes::ShapeRef.new(shape: BoundedString, location_name: "vmPath"))
    IdentificationHints.add_member(:vm_ware_uuid, Shapes::ShapeRef.new(shape: BoundedString, location_name: "vmWareUuid"))
    IdentificationHints.struct_class = Types::IdentificationHints

    ImportErrorData.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountID, location_name: "accountID"))
    ImportErrorData.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationID, location_name: "applicationID"))
    ImportErrorData.add_member(:ec2_launch_template_id, Shapes::ShapeRef.new(shape: BoundedString, location_name: "ec2LaunchTemplateID"))
    ImportErrorData.add_member(:raw_error, Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: "rawError"))
    ImportErrorData.add_member(:row_number, Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "rowNumber"))
    ImportErrorData.add_member(:source_server_id, Shapes::ShapeRef.new(shape: SourceServerID, location_name: "sourceServerID"))
    ImportErrorData.add_member(:wave_id, Shapes::ShapeRef.new(shape: WaveID, location_name: "waveID"))
    ImportErrorData.struct_class = Types::ImportErrorData

    ImportErrors.member = Shapes::ShapeRef.new(shape: ImportTaskError)

    ImportIDsFilter.member = Shapes::ShapeRef.new(shape: ImportID)

    ImportList.member = Shapes::ShapeRef.new(shape: ImportTask)

    ImportTask.add_member(:creation_date_time, Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: "creationDateTime"))
    ImportTask.add_member(:end_date_time, Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: "endDateTime"))
    ImportTask.add_member(:import_id, Shapes::ShapeRef.new(shape: ImportID, location_name: "importID"))
    ImportTask.add_member(:progress_percentage, Shapes::ShapeRef.new(shape: Float, location_name: "progressPercentage"))
    ImportTask.add_member(:s3_bucket_source, Shapes::ShapeRef.new(shape: S3BucketSource, location_name: "s3BucketSource"))
    ImportTask.add_member(:status, Shapes::ShapeRef.new(shape: ImportStatus, location_name: "status"))
    ImportTask.add_member(:summary, Shapes::ShapeRef.new(shape: ImportTaskSummary, location_name: "summary"))
    ImportTask.struct_class = Types::ImportTask

    ImportTaskError.add_member(:error_data, Shapes::ShapeRef.new(shape: ImportErrorData, location_name: "errorData"))
    ImportTaskError.add_member(:error_date_time, Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: "errorDateTime"))
    ImportTaskError.add_member(:error_type, Shapes::ShapeRef.new(shape: ImportErrorType, location_name: "errorType"))
    ImportTaskError.struct_class = Types::ImportTaskError

    ImportTaskSummary.add_member(:applications, Shapes::ShapeRef.new(shape: ImportTaskSummaryApplications, location_name: "applications"))
    ImportTaskSummary.add_member(:servers, Shapes::ShapeRef.new(shape: ImportTaskSummaryServers, location_name: "servers"))
    ImportTaskSummary.add_member(:waves, Shapes::ShapeRef.new(shape: ImportTaskSummaryWaves, location_name: "waves"))
    ImportTaskSummary.struct_class = Types::ImportTaskSummary

    ImportTaskSummaryApplications.add_member(:created_count, Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "createdCount"))
    ImportTaskSummaryApplications.add_member(:modified_count, Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "modifiedCount"))
    ImportTaskSummaryApplications.struct_class = Types::ImportTaskSummaryApplications

    ImportTaskSummaryServers.add_member(:created_count, Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "createdCount"))
    ImportTaskSummaryServers.add_member(:modified_count, Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "modifiedCount"))
    ImportTaskSummaryServers.struct_class = Types::ImportTaskSummaryServers

    ImportTaskSummaryWaves.add_member(:created_count, Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "createdCount"))
    ImportTaskSummaryWaves.add_member(:modified_count, Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "modifiedCount"))
    ImportTaskSummaryWaves.struct_class = Types::ImportTaskSummaryWaves

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

    JobPostLaunchActionsLaunchStatus.add_member(:execution_id, Shapes::ShapeRef.new(shape: BoundedString, location_name: "executionID"))
    JobPostLaunchActionsLaunchStatus.add_member(:execution_status, Shapes::ShapeRef.new(shape: PostLaunchActionExecutionStatus, location_name: "executionStatus"))
    JobPostLaunchActionsLaunchStatus.add_member(:failure_reason, Shapes::ShapeRef.new(shape: BoundedString, location_name: "failureReason"))
    JobPostLaunchActionsLaunchStatus.add_member(:ssm_document, Shapes::ShapeRef.new(shape: SsmDocument, location_name: "ssmDocument"))
    JobPostLaunchActionsLaunchStatus.add_member(:ssm_document_type, Shapes::ShapeRef.new(shape: SsmDocumentType, location_name: "ssmDocumentType"))
    JobPostLaunchActionsLaunchStatus.struct_class = Types::JobPostLaunchActionsLaunchStatus

    JobsList.member = Shapes::ShapeRef.new(shape: Job)

    LaunchConfiguration.add_member(:boot_mode, Shapes::ShapeRef.new(shape: BootMode, location_name: "bootMode"))
    LaunchConfiguration.add_member(:copy_private_ip, Shapes::ShapeRef.new(shape: Boolean, location_name: "copyPrivateIp"))
    LaunchConfiguration.add_member(:copy_tags, Shapes::ShapeRef.new(shape: Boolean, location_name: "copyTags"))
    LaunchConfiguration.add_member(:ec2_launch_template_id, Shapes::ShapeRef.new(shape: BoundedString, location_name: "ec2LaunchTemplateID"))
    LaunchConfiguration.add_member(:enable_map_auto_tagging, Shapes::ShapeRef.new(shape: Boolean, location_name: "enableMapAutoTagging"))
    LaunchConfiguration.add_member(:launch_disposition, Shapes::ShapeRef.new(shape: LaunchDisposition, location_name: "launchDisposition"))
    LaunchConfiguration.add_member(:licensing, Shapes::ShapeRef.new(shape: Licensing, location_name: "licensing"))
    LaunchConfiguration.add_member(:map_auto_tagging_mpe_id, Shapes::ShapeRef.new(shape: TagValue, location_name: "mapAutoTaggingMpeID"))
    LaunchConfiguration.add_member(:name, Shapes::ShapeRef.new(shape: SmallBoundedString, location_name: "name"))
    LaunchConfiguration.add_member(:post_launch_actions, Shapes::ShapeRef.new(shape: PostLaunchActions, location_name: "postLaunchActions"))
    LaunchConfiguration.add_member(:source_server_id, Shapes::ShapeRef.new(shape: SourceServerID, location_name: "sourceServerID"))
    LaunchConfiguration.add_member(:target_instance_type_right_sizing_method, Shapes::ShapeRef.new(shape: TargetInstanceTypeRightSizingMethod, location_name: "targetInstanceTypeRightSizingMethod"))
    LaunchConfiguration.struct_class = Types::LaunchConfiguration

    LaunchConfigurationTemplate.add_member(:arn, Shapes::ShapeRef.new(shape: ARN, location_name: "arn"))
    LaunchConfigurationTemplate.add_member(:associate_public_ip_address, Shapes::ShapeRef.new(shape: Boolean, location_name: "associatePublicIpAddress"))
    LaunchConfigurationTemplate.add_member(:boot_mode, Shapes::ShapeRef.new(shape: BootMode, location_name: "bootMode"))
    LaunchConfigurationTemplate.add_member(:copy_private_ip, Shapes::ShapeRef.new(shape: Boolean, location_name: "copyPrivateIp"))
    LaunchConfigurationTemplate.add_member(:copy_tags, Shapes::ShapeRef.new(shape: Boolean, location_name: "copyTags"))
    LaunchConfigurationTemplate.add_member(:ec2_launch_template_id, Shapes::ShapeRef.new(shape: EC2LaunchConfigurationTemplateID, location_name: "ec2LaunchTemplateID"))
    LaunchConfigurationTemplate.add_member(:enable_map_auto_tagging, Shapes::ShapeRef.new(shape: Boolean, location_name: "enableMapAutoTagging"))
    LaunchConfigurationTemplate.add_member(:large_volume_conf, Shapes::ShapeRef.new(shape: LaunchTemplateDiskConf, location_name: "largeVolumeConf"))
    LaunchConfigurationTemplate.add_member(:launch_configuration_template_id, Shapes::ShapeRef.new(shape: LaunchConfigurationTemplateID, required: true, location_name: "launchConfigurationTemplateID"))
    LaunchConfigurationTemplate.add_member(:launch_disposition, Shapes::ShapeRef.new(shape: LaunchDisposition, location_name: "launchDisposition"))
    LaunchConfigurationTemplate.add_member(:licensing, Shapes::ShapeRef.new(shape: Licensing, location_name: "licensing"))
    LaunchConfigurationTemplate.add_member(:map_auto_tagging_mpe_id, Shapes::ShapeRef.new(shape: TagValue, location_name: "mapAutoTaggingMpeID"))
    LaunchConfigurationTemplate.add_member(:post_launch_actions, Shapes::ShapeRef.new(shape: PostLaunchActions, location_name: "postLaunchActions"))
    LaunchConfigurationTemplate.add_member(:small_volume_conf, Shapes::ShapeRef.new(shape: LaunchTemplateDiskConf, location_name: "smallVolumeConf"))
    LaunchConfigurationTemplate.add_member(:small_volume_max_size, Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "smallVolumeMaxSize"))
    LaunchConfigurationTemplate.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    LaunchConfigurationTemplate.add_member(:target_instance_type_right_sizing_method, Shapes::ShapeRef.new(shape: TargetInstanceTypeRightSizingMethod, location_name: "targetInstanceTypeRightSizingMethod"))
    LaunchConfigurationTemplate.struct_class = Types::LaunchConfigurationTemplate

    LaunchConfigurationTemplateIDs.member = Shapes::ShapeRef.new(shape: LaunchConfigurationTemplateID)

    LaunchConfigurationTemplates.member = Shapes::ShapeRef.new(shape: LaunchConfigurationTemplate)

    LaunchTemplateDiskConf.add_member(:iops, Shapes::ShapeRef.new(shape: Iops, location_name: "iops"))
    LaunchTemplateDiskConf.add_member(:throughput, Shapes::ShapeRef.new(shape: Throughput, location_name: "throughput"))
    LaunchTemplateDiskConf.add_member(:volume_type, Shapes::ShapeRef.new(shape: VolumeType, location_name: "volumeType"))
    LaunchTemplateDiskConf.struct_class = Types::LaunchTemplateDiskConf

    LaunchedInstance.add_member(:ec2_instance_id, Shapes::ShapeRef.new(shape: EC2InstanceID, location_name: "ec2InstanceID"))
    LaunchedInstance.add_member(:first_boot, Shapes::ShapeRef.new(shape: FirstBoot, location_name: "firstBoot"))
    LaunchedInstance.add_member(:job_id, Shapes::ShapeRef.new(shape: JobID, location_name: "jobID"))
    LaunchedInstance.struct_class = Types::LaunchedInstance

    Licensing.add_member(:os_byol, Shapes::ShapeRef.new(shape: Boolean, location_name: "osByol"))
    Licensing.struct_class = Types::Licensing

    LifeCycle.add_member(:added_to_service_date_time, Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: "addedToServiceDateTime"))
    LifeCycle.add_member(:elapsed_replication_duration, Shapes::ShapeRef.new(shape: ISO8601DurationString, location_name: "elapsedReplicationDuration"))
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

    ListApplicationsRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountID, location_name: "accountID"))
    ListApplicationsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: ListApplicationsRequestFilters, location_name: "filters"))
    ListApplicationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsType, location_name: "maxResults"))
    ListApplicationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListApplicationsRequest.struct_class = Types::ListApplicationsRequest

    ListApplicationsRequestFilters.add_member(:application_i_ds, Shapes::ShapeRef.new(shape: ApplicationIDsFilter, location_name: "applicationIDs"))
    ListApplicationsRequestFilters.add_member(:is_archived, Shapes::ShapeRef.new(shape: Boolean, location_name: "isArchived"))
    ListApplicationsRequestFilters.add_member(:wave_i_ds, Shapes::ShapeRef.new(shape: WaveIDsFilter, location_name: "waveIDs"))
    ListApplicationsRequestFilters.struct_class = Types::ListApplicationsRequestFilters

    ListApplicationsResponse.add_member(:items, Shapes::ShapeRef.new(shape: ApplicationsList, location_name: "items"))
    ListApplicationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListApplicationsResponse.struct_class = Types::ListApplicationsResponse

    ListExportErrorsRequest.add_member(:export_id, Shapes::ShapeRef.new(shape: ExportID, required: true, location_name: "exportID"))
    ListExportErrorsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsType, location_name: "maxResults"))
    ListExportErrorsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListExportErrorsRequest.struct_class = Types::ListExportErrorsRequest

    ListExportErrorsResponse.add_member(:items, Shapes::ShapeRef.new(shape: ExportErrors, location_name: "items"))
    ListExportErrorsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListExportErrorsResponse.struct_class = Types::ListExportErrorsResponse

    ListExportsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: ListExportsRequestFilters, location_name: "filters"))
    ListExportsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsType, location_name: "maxResults"))
    ListExportsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListExportsRequest.struct_class = Types::ListExportsRequest

    ListExportsRequestFilters.add_member(:export_i_ds, Shapes::ShapeRef.new(shape: ListExportsRequestFiltersExportIDs, location_name: "exportIDs"))
    ListExportsRequestFilters.struct_class = Types::ListExportsRequestFilters

    ListExportsRequestFiltersExportIDs.member = Shapes::ShapeRef.new(shape: ExportID)

    ListExportsResponse.add_member(:items, Shapes::ShapeRef.new(shape: ExportsList, location_name: "items"))
    ListExportsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListExportsResponse.struct_class = Types::ListExportsResponse

    ListImportErrorsRequest.add_member(:import_id, Shapes::ShapeRef.new(shape: ImportID, required: true, location_name: "importID"))
    ListImportErrorsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsType, location_name: "maxResults"))
    ListImportErrorsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListImportErrorsRequest.struct_class = Types::ListImportErrorsRequest

    ListImportErrorsResponse.add_member(:items, Shapes::ShapeRef.new(shape: ImportErrors, location_name: "items"))
    ListImportErrorsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListImportErrorsResponse.struct_class = Types::ListImportErrorsResponse

    ListImportsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: ListImportsRequestFilters, location_name: "filters"))
    ListImportsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsType, location_name: "maxResults"))
    ListImportsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListImportsRequest.struct_class = Types::ListImportsRequest

    ListImportsRequestFilters.add_member(:import_i_ds, Shapes::ShapeRef.new(shape: ImportIDsFilter, location_name: "importIDs"))
    ListImportsRequestFilters.struct_class = Types::ListImportsRequestFilters

    ListImportsResponse.add_member(:items, Shapes::ShapeRef.new(shape: ImportList, location_name: "items"))
    ListImportsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListImportsResponse.struct_class = Types::ListImportsResponse

    ListManagedAccountsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsType, location_name: "maxResults"))
    ListManagedAccountsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListManagedAccountsRequest.struct_class = Types::ListManagedAccountsRequest

    ListManagedAccountsResponse.add_member(:items, Shapes::ShapeRef.new(shape: ManagedAccounts, required: true, location_name: "items"))
    ListManagedAccountsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListManagedAccountsResponse.struct_class = Types::ListManagedAccountsResponse

    ListSourceServerActionsRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountID, location_name: "accountID"))
    ListSourceServerActionsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: SourceServerActionsRequestFilters, location_name: "filters"))
    ListSourceServerActionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsType, location_name: "maxResults"))
    ListSourceServerActionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListSourceServerActionsRequest.add_member(:source_server_id, Shapes::ShapeRef.new(shape: SourceServerID, required: true, location_name: "sourceServerID"))
    ListSourceServerActionsRequest.struct_class = Types::ListSourceServerActionsRequest

    ListSourceServerActionsResponse.add_member(:items, Shapes::ShapeRef.new(shape: SourceServerActionDocuments, location_name: "items"))
    ListSourceServerActionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListSourceServerActionsResponse.struct_class = Types::ListSourceServerActionsResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location: "uri", location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    ListTemplateActionsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: TemplateActionsRequestFilters, location_name: "filters"))
    ListTemplateActionsRequest.add_member(:launch_configuration_template_id, Shapes::ShapeRef.new(shape: LaunchConfigurationTemplateID, required: true, location_name: "launchConfigurationTemplateID"))
    ListTemplateActionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsType, location_name: "maxResults"))
    ListTemplateActionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListTemplateActionsRequest.struct_class = Types::ListTemplateActionsRequest

    ListTemplateActionsResponse.add_member(:items, Shapes::ShapeRef.new(shape: TemplateActionDocuments, location_name: "items"))
    ListTemplateActionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListTemplateActionsResponse.struct_class = Types::ListTemplateActionsResponse

    ListWavesRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountID, location_name: "accountID"))
    ListWavesRequest.add_member(:filters, Shapes::ShapeRef.new(shape: ListWavesRequestFilters, location_name: "filters"))
    ListWavesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsType, location_name: "maxResults"))
    ListWavesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListWavesRequest.struct_class = Types::ListWavesRequest

    ListWavesRequestFilters.add_member(:is_archived, Shapes::ShapeRef.new(shape: Boolean, location_name: "isArchived"))
    ListWavesRequestFilters.add_member(:wave_i_ds, Shapes::ShapeRef.new(shape: WaveIDsFilter, location_name: "waveIDs"))
    ListWavesRequestFilters.struct_class = Types::ListWavesRequestFilters

    ListWavesResponse.add_member(:items, Shapes::ShapeRef.new(shape: WavesList, location_name: "items"))
    ListWavesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListWavesResponse.struct_class = Types::ListWavesResponse

    ManagedAccount.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountID, location_name: "accountId"))
    ManagedAccount.struct_class = Types::ManagedAccount

    ManagedAccounts.member = Shapes::ShapeRef.new(shape: ManagedAccount)

    MarkAsArchivedRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountID, location_name: "accountID"))
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
    ParticipatingServer.add_member(:launched_ec2_instance_id, Shapes::ShapeRef.new(shape: EC2InstanceID, location_name: "launchedEc2InstanceID"))
    ParticipatingServer.add_member(:post_launch_actions_status, Shapes::ShapeRef.new(shape: PostLaunchActionsStatus, location_name: "postLaunchActionsStatus"))
    ParticipatingServer.add_member(:source_server_id, Shapes::ShapeRef.new(shape: SourceServerID, required: true, location_name: "sourceServerID"))
    ParticipatingServer.struct_class = Types::ParticipatingServer

    ParticipatingServers.member = Shapes::ShapeRef.new(shape: ParticipatingServer)

    PauseReplicationRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountID, location_name: "accountID"))
    PauseReplicationRequest.add_member(:source_server_id, Shapes::ShapeRef.new(shape: SourceServerID, required: true, location_name: "sourceServerID"))
    PauseReplicationRequest.struct_class = Types::PauseReplicationRequest

    PostLaunchActions.add_member(:cloud_watch_log_group_name, Shapes::ShapeRef.new(shape: CloudWatchLogGroupName, location_name: "cloudWatchLogGroupName"))
    PostLaunchActions.add_member(:deployment, Shapes::ShapeRef.new(shape: PostLaunchActionsDeploymentType, location_name: "deployment"))
    PostLaunchActions.add_member(:s3_log_bucket, Shapes::ShapeRef.new(shape: S3LogBucketName, location_name: "s3LogBucket"))
    PostLaunchActions.add_member(:s3_output_key_prefix, Shapes::ShapeRef.new(shape: BoundedString, location_name: "s3OutputKeyPrefix"))
    PostLaunchActions.add_member(:ssm_documents, Shapes::ShapeRef.new(shape: SsmDocuments, location_name: "ssmDocuments"))
    PostLaunchActions.struct_class = Types::PostLaunchActions

    PostLaunchActionsLaunchStatusList.member = Shapes::ShapeRef.new(shape: JobPostLaunchActionsLaunchStatus)

    PostLaunchActionsStatus.add_member(:post_launch_actions_launch_status_list, Shapes::ShapeRef.new(shape: PostLaunchActionsLaunchStatusList, location_name: "postLaunchActionsLaunchStatusList"))
    PostLaunchActionsStatus.add_member(:ssm_agent_discovery_datetime, Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: "ssmAgentDiscoveryDatetime"))
    PostLaunchActionsStatus.struct_class = Types::PostLaunchActionsStatus

    PutSourceServerActionRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountID, location_name: "accountID"))
    PutSourceServerActionRequest.add_member(:action_id, Shapes::ShapeRef.new(shape: ActionID, required: true, location_name: "actionID"))
    PutSourceServerActionRequest.add_member(:action_name, Shapes::ShapeRef.new(shape: ActionName, required: true, location_name: "actionName"))
    PutSourceServerActionRequest.add_member(:active, Shapes::ShapeRef.new(shape: Boolean, location_name: "active"))
    PutSourceServerActionRequest.add_member(:category, Shapes::ShapeRef.new(shape: ActionCategory, location_name: "category"))
    PutSourceServerActionRequest.add_member(:description, Shapes::ShapeRef.new(shape: ActionDescription, location_name: "description"))
    PutSourceServerActionRequest.add_member(:document_identifier, Shapes::ShapeRef.new(shape: BoundedString, required: true, location_name: "documentIdentifier"))
    PutSourceServerActionRequest.add_member(:document_version, Shapes::ShapeRef.new(shape: DocumentVersion, location_name: "documentVersion"))
    PutSourceServerActionRequest.add_member(:external_parameters, Shapes::ShapeRef.new(shape: SsmDocumentExternalParameters, location_name: "externalParameters"))
    PutSourceServerActionRequest.add_member(:must_succeed_for_cutover, Shapes::ShapeRef.new(shape: Boolean, location_name: "mustSucceedForCutover"))
    PutSourceServerActionRequest.add_member(:order, Shapes::ShapeRef.new(shape: OrderType, required: true, location_name: "order"))
    PutSourceServerActionRequest.add_member(:parameters, Shapes::ShapeRef.new(shape: SsmDocumentParameters, location_name: "parameters"))
    PutSourceServerActionRequest.add_member(:source_server_id, Shapes::ShapeRef.new(shape: SourceServerID, required: true, location_name: "sourceServerID"))
    PutSourceServerActionRequest.add_member(:timeout_seconds, Shapes::ShapeRef.new(shape: StrictlyPositiveInteger, location_name: "timeoutSeconds"))
    PutSourceServerActionRequest.struct_class = Types::PutSourceServerActionRequest

    PutTemplateActionRequest.add_member(:action_id, Shapes::ShapeRef.new(shape: ActionID, required: true, location_name: "actionID"))
    PutTemplateActionRequest.add_member(:action_name, Shapes::ShapeRef.new(shape: BoundedString, required: true, location_name: "actionName"))
    PutTemplateActionRequest.add_member(:active, Shapes::ShapeRef.new(shape: Boolean, location_name: "active"))
    PutTemplateActionRequest.add_member(:category, Shapes::ShapeRef.new(shape: ActionCategory, location_name: "category"))
    PutTemplateActionRequest.add_member(:description, Shapes::ShapeRef.new(shape: ActionDescription, location_name: "description"))
    PutTemplateActionRequest.add_member(:document_identifier, Shapes::ShapeRef.new(shape: BoundedString, required: true, location_name: "documentIdentifier"))
    PutTemplateActionRequest.add_member(:document_version, Shapes::ShapeRef.new(shape: DocumentVersion, location_name: "documentVersion"))
    PutTemplateActionRequest.add_member(:external_parameters, Shapes::ShapeRef.new(shape: SsmDocumentExternalParameters, location_name: "externalParameters"))
    PutTemplateActionRequest.add_member(:launch_configuration_template_id, Shapes::ShapeRef.new(shape: LaunchConfigurationTemplateID, required: true, location_name: "launchConfigurationTemplateID"))
    PutTemplateActionRequest.add_member(:must_succeed_for_cutover, Shapes::ShapeRef.new(shape: Boolean, location_name: "mustSucceedForCutover"))
    PutTemplateActionRequest.add_member(:operating_system, Shapes::ShapeRef.new(shape: OperatingSystemString, location_name: "operatingSystem"))
    PutTemplateActionRequest.add_member(:order, Shapes::ShapeRef.new(shape: OrderType, required: true, location_name: "order"))
    PutTemplateActionRequest.add_member(:parameters, Shapes::ShapeRef.new(shape: SsmDocumentParameters, location_name: "parameters"))
    PutTemplateActionRequest.add_member(:timeout_seconds, Shapes::ShapeRef.new(shape: StrictlyPositiveInteger, location_name: "timeoutSeconds"))
    PutTemplateActionRequest.struct_class = Types::PutTemplateActionRequest

    RemoveSourceServerActionRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountID, location_name: "accountID"))
    RemoveSourceServerActionRequest.add_member(:action_id, Shapes::ShapeRef.new(shape: ActionID, required: true, location_name: "actionID"))
    RemoveSourceServerActionRequest.add_member(:source_server_id, Shapes::ShapeRef.new(shape: SourceServerID, required: true, location_name: "sourceServerID"))
    RemoveSourceServerActionRequest.struct_class = Types::RemoveSourceServerActionRequest

    RemoveSourceServerActionResponse.struct_class = Types::RemoveSourceServerActionResponse

    RemoveTemplateActionRequest.add_member(:action_id, Shapes::ShapeRef.new(shape: ActionID, required: true, location_name: "actionID"))
    RemoveTemplateActionRequest.add_member(:launch_configuration_template_id, Shapes::ShapeRef.new(shape: LaunchConfigurationTemplateID, required: true, location_name: "launchConfigurationTemplateID"))
    RemoveTemplateActionRequest.struct_class = Types::RemoveTemplateActionRequest

    RemoveTemplateActionResponse.struct_class = Types::RemoveTemplateActionResponse

    ReplicationConfiguration.add_member(:associate_default_security_group, Shapes::ShapeRef.new(shape: Boolean, location_name: "associateDefaultSecurityGroup"))
    ReplicationConfiguration.add_member(:bandwidth_throttling, Shapes::ShapeRef.new(shape: BandwidthThrottling, location_name: "bandwidthThrottling"))
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
    ReplicationConfiguration.add_member(:use_fips_endpoint, Shapes::ShapeRef.new(shape: Boolean, location_name: "useFipsEndpoint"))
    ReplicationConfiguration.struct_class = Types::ReplicationConfiguration

    ReplicationConfigurationReplicatedDisk.add_member(:device_name, Shapes::ShapeRef.new(shape: BoundedString, location_name: "deviceName"))
    ReplicationConfigurationReplicatedDisk.add_member(:iops, Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "iops"))
    ReplicationConfigurationReplicatedDisk.add_member(:is_boot_disk, Shapes::ShapeRef.new(shape: Boolean, location_name: "isBootDisk"))
    ReplicationConfigurationReplicatedDisk.add_member(:staging_disk_type, Shapes::ShapeRef.new(shape: ReplicationConfigurationReplicatedDiskStagingDiskType, location_name: "stagingDiskType"))
    ReplicationConfigurationReplicatedDisk.add_member(:throughput, Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "throughput"))
    ReplicationConfigurationReplicatedDisk.struct_class = Types::ReplicationConfigurationReplicatedDisk

    ReplicationConfigurationReplicatedDisks.member = Shapes::ShapeRef.new(shape: ReplicationConfigurationReplicatedDisk)

    ReplicationConfigurationTemplate.add_member(:arn, Shapes::ShapeRef.new(shape: ARN, location_name: "arn"))
    ReplicationConfigurationTemplate.add_member(:associate_default_security_group, Shapes::ShapeRef.new(shape: Boolean, location_name: "associateDefaultSecurityGroup"))
    ReplicationConfigurationTemplate.add_member(:bandwidth_throttling, Shapes::ShapeRef.new(shape: BandwidthThrottling, location_name: "bandwidthThrottling"))
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
    ReplicationConfigurationTemplate.add_member(:use_fips_endpoint, Shapes::ShapeRef.new(shape: Boolean, location_name: "useFipsEndpoint"))
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

    ResumeReplicationRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountID, location_name: "accountID"))
    ResumeReplicationRequest.add_member(:source_server_id, Shapes::ShapeRef.new(shape: SourceServerID, required: true, location_name: "sourceServerID"))
    ResumeReplicationRequest.struct_class = Types::ResumeReplicationRequest

    RetryDataReplicationRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountID, location_name: "accountID"))
    RetryDataReplicationRequest.add_member(:source_server_id, Shapes::ShapeRef.new(shape: SourceServerID, required: true, location_name: "sourceServerID"))
    RetryDataReplicationRequest.struct_class = Types::RetryDataReplicationRequest

    S3BucketSource.add_member(:s3_bucket, Shapes::ShapeRef.new(shape: S3BucketName, required: true, location_name: "s3Bucket"))
    S3BucketSource.add_member(:s3_bucket_owner, Shapes::ShapeRef.new(shape: AccountID, location_name: "s3BucketOwner"))
    S3BucketSource.add_member(:s3_key, Shapes::ShapeRef.new(shape: S3Key, required: true, location_name: "s3Key"))
    S3BucketSource.struct_class = Types::S3BucketSource

    ServiceQuotaExceededException.add_member(:code, Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: "code"))
    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: "message"))
    ServiceQuotaExceededException.add_member(:quota_code, Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: "quotaCode"))
    ServiceQuotaExceededException.add_member(:quota_value, Shapes::ShapeRef.new(shape: StrictlyPositiveInteger, location_name: "quotaValue"))
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

    SourceServer.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationID, location_name: "applicationID"))
    SourceServer.add_member(:arn, Shapes::ShapeRef.new(shape: ARN, location_name: "arn"))
    SourceServer.add_member(:data_replication_info, Shapes::ShapeRef.new(shape: DataReplicationInfo, location_name: "dataReplicationInfo"))
    SourceServer.add_member(:fqdn_for_action_framework, Shapes::ShapeRef.new(shape: BoundedString, location_name: "fqdnForActionFramework"))
    SourceServer.add_member(:is_archived, Shapes::ShapeRef.new(shape: Boolean, location_name: "isArchived"))
    SourceServer.add_member(:launched_instance, Shapes::ShapeRef.new(shape: LaunchedInstance, location_name: "launchedInstance"))
    SourceServer.add_member(:life_cycle, Shapes::ShapeRef.new(shape: LifeCycle, location_name: "lifeCycle"))
    SourceServer.add_member(:replication_type, Shapes::ShapeRef.new(shape: ReplicationType, location_name: "replicationType"))
    SourceServer.add_member(:source_properties, Shapes::ShapeRef.new(shape: SourceProperties, location_name: "sourceProperties"))
    SourceServer.add_member(:source_server_id, Shapes::ShapeRef.new(shape: SourceServerID, location_name: "sourceServerID"))
    SourceServer.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    SourceServer.add_member(:user_provided_id, Shapes::ShapeRef.new(shape: BoundedString, location_name: "userProvidedID"))
    SourceServer.add_member(:vcenter_client_id, Shapes::ShapeRef.new(shape: VcenterClientID, location_name: "vcenterClientID"))
    SourceServer.struct_class = Types::SourceServer

    SourceServerActionDocument.add_member(:action_id, Shapes::ShapeRef.new(shape: ActionID, location_name: "actionID"))
    SourceServerActionDocument.add_member(:action_name, Shapes::ShapeRef.new(shape: ActionName, location_name: "actionName"))
    SourceServerActionDocument.add_member(:active, Shapes::ShapeRef.new(shape: Boolean, location_name: "active"))
    SourceServerActionDocument.add_member(:category, Shapes::ShapeRef.new(shape: ActionCategory, location_name: "category"))
    SourceServerActionDocument.add_member(:description, Shapes::ShapeRef.new(shape: ActionDescription, location_name: "description"))
    SourceServerActionDocument.add_member(:document_identifier, Shapes::ShapeRef.new(shape: BoundedString, location_name: "documentIdentifier"))
    SourceServerActionDocument.add_member(:document_version, Shapes::ShapeRef.new(shape: DocumentVersion, location_name: "documentVersion"))
    SourceServerActionDocument.add_member(:external_parameters, Shapes::ShapeRef.new(shape: SsmDocumentExternalParameters, location_name: "externalParameters"))
    SourceServerActionDocument.add_member(:must_succeed_for_cutover, Shapes::ShapeRef.new(shape: Boolean, location_name: "mustSucceedForCutover"))
    SourceServerActionDocument.add_member(:order, Shapes::ShapeRef.new(shape: OrderType, location_name: "order"))
    SourceServerActionDocument.add_member(:parameters, Shapes::ShapeRef.new(shape: SsmDocumentParameters, location_name: "parameters"))
    SourceServerActionDocument.add_member(:timeout_seconds, Shapes::ShapeRef.new(shape: StrictlyPositiveInteger, location_name: "timeoutSeconds"))
    SourceServerActionDocument.struct_class = Types::SourceServerActionDocument

    SourceServerActionDocuments.member = Shapes::ShapeRef.new(shape: SourceServerActionDocument)

    SourceServerActionsRequestFilters.add_member(:action_i_ds, Shapes::ShapeRef.new(shape: ActionIDs, location_name: "actionIDs"))
    SourceServerActionsRequestFilters.struct_class = Types::SourceServerActionsRequestFilters

    SourceServersList.member = Shapes::ShapeRef.new(shape: SourceServer)

    SsmDocument.add_member(:action_name, Shapes::ShapeRef.new(shape: BoundedString, required: true, location_name: "actionName"))
    SsmDocument.add_member(:external_parameters, Shapes::ShapeRef.new(shape: SsmDocumentExternalParameters, location_name: "externalParameters"))
    SsmDocument.add_member(:must_succeed_for_cutover, Shapes::ShapeRef.new(shape: Boolean, location_name: "mustSucceedForCutover"))
    SsmDocument.add_member(:parameters, Shapes::ShapeRef.new(shape: SsmDocumentParameters, location_name: "parameters"))
    SsmDocument.add_member(:ssm_document_name, Shapes::ShapeRef.new(shape: SsmDocumentName, required: true, location_name: "ssmDocumentName"))
    SsmDocument.add_member(:timeout_seconds, Shapes::ShapeRef.new(shape: StrictlyPositiveInteger, location_name: "timeoutSeconds"))
    SsmDocument.struct_class = Types::SsmDocument

    SsmDocumentExternalParameters.key = Shapes::ShapeRef.new(shape: SsmDocumentParameterName)
    SsmDocumentExternalParameters.value = Shapes::ShapeRef.new(shape: SsmExternalParameter)

    SsmDocumentParameters.key = Shapes::ShapeRef.new(shape: SsmDocumentParameterName)
    SsmDocumentParameters.value = Shapes::ShapeRef.new(shape: SsmParameterStoreParameters)

    SsmDocuments.member = Shapes::ShapeRef.new(shape: SsmDocument)

    SsmExternalParameter.add_member(:dynamic_path, Shapes::ShapeRef.new(shape: JmesPathString, location_name: "dynamicPath"))
    SsmExternalParameter.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    SsmExternalParameter.add_member_subclass(:dynamic_path, Types::SsmExternalParameter::DynamicPath)
    SsmExternalParameter.add_member_subclass(:unknown, Types::SsmExternalParameter::Unknown)
    SsmExternalParameter.struct_class = Types::SsmExternalParameter

    SsmParameterStoreParameter.add_member(:parameter_name, Shapes::ShapeRef.new(shape: SsmParameterStoreParameterName, required: true, location_name: "parameterName"))
    SsmParameterStoreParameter.add_member(:parameter_type, Shapes::ShapeRef.new(shape: SsmParameterStoreParameterType, required: true, location_name: "parameterType"))
    SsmParameterStoreParameter.struct_class = Types::SsmParameterStoreParameter

    SsmParameterStoreParameters.member = Shapes::ShapeRef.new(shape: SsmParameterStoreParameter)

    StartCutoverRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountID, location_name: "accountID"))
    StartCutoverRequest.add_member(:source_server_i_ds, Shapes::ShapeRef.new(shape: StartCutoverRequestSourceServerIDs, required: true, location_name: "sourceServerIDs"))
    StartCutoverRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    StartCutoverRequest.struct_class = Types::StartCutoverRequest

    StartCutoverRequestSourceServerIDs.member = Shapes::ShapeRef.new(shape: SourceServerID)

    StartCutoverResponse.add_member(:job, Shapes::ShapeRef.new(shape: Job, location_name: "job"))
    StartCutoverResponse.struct_class = Types::StartCutoverResponse

    StartExportRequest.add_member(:s3_bucket, Shapes::ShapeRef.new(shape: S3BucketName, required: true, location_name: "s3Bucket"))
    StartExportRequest.add_member(:s3_bucket_owner, Shapes::ShapeRef.new(shape: AccountID, location_name: "s3BucketOwner"))
    StartExportRequest.add_member(:s3_key, Shapes::ShapeRef.new(shape: S3Key, required: true, location_name: "s3Key"))
    StartExportRequest.struct_class = Types::StartExportRequest

    StartExportResponse.add_member(:export_task, Shapes::ShapeRef.new(shape: ExportTask, location_name: "exportTask"))
    StartExportResponse.struct_class = Types::StartExportResponse

    StartImportRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientIdempotencyToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    StartImportRequest.add_member(:s3_bucket_source, Shapes::ShapeRef.new(shape: S3BucketSource, required: true, location_name: "s3BucketSource"))
    StartImportRequest.struct_class = Types::StartImportRequest

    StartImportResponse.add_member(:import_task, Shapes::ShapeRef.new(shape: ImportTask, location_name: "importTask"))
    StartImportResponse.struct_class = Types::StartImportResponse

    StartReplicationRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountID, location_name: "accountID"))
    StartReplicationRequest.add_member(:source_server_id, Shapes::ShapeRef.new(shape: SourceServerID, required: true, location_name: "sourceServerID"))
    StartReplicationRequest.struct_class = Types::StartReplicationRequest

    StartTestRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountID, location_name: "accountID"))
    StartTestRequest.add_member(:source_server_i_ds, Shapes::ShapeRef.new(shape: StartTestRequestSourceServerIDs, required: true, location_name: "sourceServerIDs"))
    StartTestRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    StartTestRequest.struct_class = Types::StartTestRequest

    StartTestRequestSourceServerIDs.member = Shapes::ShapeRef.new(shape: SourceServerID)

    StartTestResponse.add_member(:job, Shapes::ShapeRef.new(shape: Job, location_name: "job"))
    StartTestResponse.struct_class = Types::StartTestResponse

    StopReplicationRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountID, location_name: "accountID"))
    StopReplicationRequest.add_member(:source_server_id, Shapes::ShapeRef.new(shape: SourceServerID, required: true, location_name: "sourceServerID"))
    StopReplicationRequest.struct_class = Types::StopReplicationRequest

    TagKeys.member = Shapes::ShapeRef.new(shape: TagKey)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location: "uri", location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagsMap.key = Shapes::ShapeRef.new(shape: TagKey)
    TagsMap.value = Shapes::ShapeRef.new(shape: TagValue)

    TemplateActionDocument.add_member(:action_id, Shapes::ShapeRef.new(shape: ActionID, location_name: "actionID"))
    TemplateActionDocument.add_member(:action_name, Shapes::ShapeRef.new(shape: BoundedString, location_name: "actionName"))
    TemplateActionDocument.add_member(:active, Shapes::ShapeRef.new(shape: Boolean, location_name: "active"))
    TemplateActionDocument.add_member(:category, Shapes::ShapeRef.new(shape: ActionCategory, location_name: "category"))
    TemplateActionDocument.add_member(:description, Shapes::ShapeRef.new(shape: ActionDescription, location_name: "description"))
    TemplateActionDocument.add_member(:document_identifier, Shapes::ShapeRef.new(shape: BoundedString, location_name: "documentIdentifier"))
    TemplateActionDocument.add_member(:document_version, Shapes::ShapeRef.new(shape: DocumentVersion, location_name: "documentVersion"))
    TemplateActionDocument.add_member(:external_parameters, Shapes::ShapeRef.new(shape: SsmDocumentExternalParameters, location_name: "externalParameters"))
    TemplateActionDocument.add_member(:must_succeed_for_cutover, Shapes::ShapeRef.new(shape: Boolean, location_name: "mustSucceedForCutover"))
    TemplateActionDocument.add_member(:operating_system, Shapes::ShapeRef.new(shape: OperatingSystemString, location_name: "operatingSystem"))
    TemplateActionDocument.add_member(:order, Shapes::ShapeRef.new(shape: OrderType, location_name: "order"))
    TemplateActionDocument.add_member(:parameters, Shapes::ShapeRef.new(shape: SsmDocumentParameters, location_name: "parameters"))
    TemplateActionDocument.add_member(:timeout_seconds, Shapes::ShapeRef.new(shape: StrictlyPositiveInteger, location_name: "timeoutSeconds"))
    TemplateActionDocument.struct_class = Types::TemplateActionDocument

    TemplateActionDocuments.member = Shapes::ShapeRef.new(shape: TemplateActionDocument)

    TemplateActionsRequestFilters.add_member(:action_i_ds, Shapes::ShapeRef.new(shape: ActionIDs, location_name: "actionIDs"))
    TemplateActionsRequestFilters.struct_class = Types::TemplateActionsRequestFilters

    TerminateTargetInstancesRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountID, location_name: "accountID"))
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

    UnarchiveApplicationRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountID, location_name: "accountID"))
    UnarchiveApplicationRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationID, required: true, location_name: "applicationID"))
    UnarchiveApplicationRequest.struct_class = Types::UnarchiveApplicationRequest

    UnarchiveWaveRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountID, location_name: "accountID"))
    UnarchiveWaveRequest.add_member(:wave_id, Shapes::ShapeRef.new(shape: WaveID, required: true, location_name: "waveID"))
    UnarchiveWaveRequest.struct_class = Types::UnarchiveWaveRequest

    UninitializedAccountException.add_member(:code, Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: "code"))
    UninitializedAccountException.add_member(:message, Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: "message"))
    UninitializedAccountException.struct_class = Types::UninitializedAccountException

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location: "uri", location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeys, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UpdateApplicationRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountID, location_name: "accountID"))
    UpdateApplicationRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationID, required: true, location_name: "applicationID"))
    UpdateApplicationRequest.add_member(:description, Shapes::ShapeRef.new(shape: ApplicationDescription, location_name: "description"))
    UpdateApplicationRequest.add_member(:name, Shapes::ShapeRef.new(shape: ApplicationName, location_name: "name"))
    UpdateApplicationRequest.struct_class = Types::UpdateApplicationRequest

    UpdateLaunchConfigurationRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountID, location_name: "accountID"))
    UpdateLaunchConfigurationRequest.add_member(:boot_mode, Shapes::ShapeRef.new(shape: BootMode, location_name: "bootMode"))
    UpdateLaunchConfigurationRequest.add_member(:copy_private_ip, Shapes::ShapeRef.new(shape: Boolean, location_name: "copyPrivateIp"))
    UpdateLaunchConfigurationRequest.add_member(:copy_tags, Shapes::ShapeRef.new(shape: Boolean, location_name: "copyTags"))
    UpdateLaunchConfigurationRequest.add_member(:enable_map_auto_tagging, Shapes::ShapeRef.new(shape: Boolean, location_name: "enableMapAutoTagging"))
    UpdateLaunchConfigurationRequest.add_member(:launch_disposition, Shapes::ShapeRef.new(shape: LaunchDisposition, location_name: "launchDisposition"))
    UpdateLaunchConfigurationRequest.add_member(:licensing, Shapes::ShapeRef.new(shape: Licensing, location_name: "licensing"))
    UpdateLaunchConfigurationRequest.add_member(:map_auto_tagging_mpe_id, Shapes::ShapeRef.new(shape: TagValue, location_name: "mapAutoTaggingMpeID"))
    UpdateLaunchConfigurationRequest.add_member(:name, Shapes::ShapeRef.new(shape: SmallBoundedString, location_name: "name"))
    UpdateLaunchConfigurationRequest.add_member(:post_launch_actions, Shapes::ShapeRef.new(shape: PostLaunchActions, location_name: "postLaunchActions"))
    UpdateLaunchConfigurationRequest.add_member(:source_server_id, Shapes::ShapeRef.new(shape: SourceServerID, required: true, location_name: "sourceServerID"))
    UpdateLaunchConfigurationRequest.add_member(:target_instance_type_right_sizing_method, Shapes::ShapeRef.new(shape: TargetInstanceTypeRightSizingMethod, location_name: "targetInstanceTypeRightSizingMethod"))
    UpdateLaunchConfigurationRequest.struct_class = Types::UpdateLaunchConfigurationRequest

    UpdateLaunchConfigurationTemplateRequest.add_member(:associate_public_ip_address, Shapes::ShapeRef.new(shape: Boolean, location_name: "associatePublicIpAddress"))
    UpdateLaunchConfigurationTemplateRequest.add_member(:boot_mode, Shapes::ShapeRef.new(shape: BootMode, location_name: "bootMode"))
    UpdateLaunchConfigurationTemplateRequest.add_member(:copy_private_ip, Shapes::ShapeRef.new(shape: Boolean, location_name: "copyPrivateIp"))
    UpdateLaunchConfigurationTemplateRequest.add_member(:copy_tags, Shapes::ShapeRef.new(shape: Boolean, location_name: "copyTags"))
    UpdateLaunchConfigurationTemplateRequest.add_member(:enable_map_auto_tagging, Shapes::ShapeRef.new(shape: Boolean, location_name: "enableMapAutoTagging"))
    UpdateLaunchConfigurationTemplateRequest.add_member(:large_volume_conf, Shapes::ShapeRef.new(shape: LaunchTemplateDiskConf, location_name: "largeVolumeConf"))
    UpdateLaunchConfigurationTemplateRequest.add_member(:launch_configuration_template_id, Shapes::ShapeRef.new(shape: LaunchConfigurationTemplateID, required: true, location_name: "launchConfigurationTemplateID"))
    UpdateLaunchConfigurationTemplateRequest.add_member(:launch_disposition, Shapes::ShapeRef.new(shape: LaunchDisposition, location_name: "launchDisposition"))
    UpdateLaunchConfigurationTemplateRequest.add_member(:licensing, Shapes::ShapeRef.new(shape: Licensing, location_name: "licensing"))
    UpdateLaunchConfigurationTemplateRequest.add_member(:map_auto_tagging_mpe_id, Shapes::ShapeRef.new(shape: TagValue, location_name: "mapAutoTaggingMpeID"))
    UpdateLaunchConfigurationTemplateRequest.add_member(:post_launch_actions, Shapes::ShapeRef.new(shape: PostLaunchActions, location_name: "postLaunchActions"))
    UpdateLaunchConfigurationTemplateRequest.add_member(:small_volume_conf, Shapes::ShapeRef.new(shape: LaunchTemplateDiskConf, location_name: "smallVolumeConf"))
    UpdateLaunchConfigurationTemplateRequest.add_member(:small_volume_max_size, Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "smallVolumeMaxSize"))
    UpdateLaunchConfigurationTemplateRequest.add_member(:target_instance_type_right_sizing_method, Shapes::ShapeRef.new(shape: TargetInstanceTypeRightSizingMethod, location_name: "targetInstanceTypeRightSizingMethod"))
    UpdateLaunchConfigurationTemplateRequest.struct_class = Types::UpdateLaunchConfigurationTemplateRequest

    UpdateReplicationConfigurationRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountID, location_name: "accountID"))
    UpdateReplicationConfigurationRequest.add_member(:associate_default_security_group, Shapes::ShapeRef.new(shape: Boolean, location_name: "associateDefaultSecurityGroup"))
    UpdateReplicationConfigurationRequest.add_member(:bandwidth_throttling, Shapes::ShapeRef.new(shape: BandwidthThrottling, location_name: "bandwidthThrottling"))
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
    UpdateReplicationConfigurationRequest.add_member(:use_fips_endpoint, Shapes::ShapeRef.new(shape: Boolean, location_name: "useFipsEndpoint"))
    UpdateReplicationConfigurationRequest.struct_class = Types::UpdateReplicationConfigurationRequest

    UpdateReplicationConfigurationTemplateRequest.add_member(:arn, Shapes::ShapeRef.new(shape: ARN, location_name: "arn"))
    UpdateReplicationConfigurationTemplateRequest.add_member(:associate_default_security_group, Shapes::ShapeRef.new(shape: Boolean, location_name: "associateDefaultSecurityGroup"))
    UpdateReplicationConfigurationTemplateRequest.add_member(:bandwidth_throttling, Shapes::ShapeRef.new(shape: BandwidthThrottling, location_name: "bandwidthThrottling"))
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
    UpdateReplicationConfigurationTemplateRequest.add_member(:use_fips_endpoint, Shapes::ShapeRef.new(shape: Boolean, location_name: "useFipsEndpoint"))
    UpdateReplicationConfigurationTemplateRequest.struct_class = Types::UpdateReplicationConfigurationTemplateRequest

    UpdateSourceServerReplicationTypeRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountID, location_name: "accountID"))
    UpdateSourceServerReplicationTypeRequest.add_member(:replication_type, Shapes::ShapeRef.new(shape: ReplicationType, required: true, location_name: "replicationType"))
    UpdateSourceServerReplicationTypeRequest.add_member(:source_server_id, Shapes::ShapeRef.new(shape: SourceServerID, required: true, location_name: "sourceServerID"))
    UpdateSourceServerReplicationTypeRequest.struct_class = Types::UpdateSourceServerReplicationTypeRequest

    UpdateWaveRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountID, location_name: "accountID"))
    UpdateWaveRequest.add_member(:description, Shapes::ShapeRef.new(shape: WaveDescription, location_name: "description"))
    UpdateWaveRequest.add_member(:name, Shapes::ShapeRef.new(shape: WaveName, location_name: "name"))
    UpdateWaveRequest.add_member(:wave_id, Shapes::ShapeRef.new(shape: WaveID, required: true, location_name: "waveID"))
    UpdateWaveRequest.struct_class = Types::UpdateWaveRequest

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

    Wave.add_member(:arn, Shapes::ShapeRef.new(shape: ARN, location_name: "arn"))
    Wave.add_member(:creation_date_time, Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: "creationDateTime"))
    Wave.add_member(:description, Shapes::ShapeRef.new(shape: WaveDescription, location_name: "description"))
    Wave.add_member(:is_archived, Shapes::ShapeRef.new(shape: Boolean, location_name: "isArchived"))
    Wave.add_member(:last_modified_date_time, Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: "lastModifiedDateTime"))
    Wave.add_member(:name, Shapes::ShapeRef.new(shape: WaveName, location_name: "name"))
    Wave.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    Wave.add_member(:wave_aggregated_status, Shapes::ShapeRef.new(shape: WaveAggregatedStatus, location_name: "waveAggregatedStatus"))
    Wave.add_member(:wave_id, Shapes::ShapeRef.new(shape: WaveID, location_name: "waveID"))
    Wave.struct_class = Types::Wave

    WaveAggregatedStatus.add_member(:health_status, Shapes::ShapeRef.new(shape: WaveHealthStatus, location_name: "healthStatus"))
    WaveAggregatedStatus.add_member(:last_update_date_time, Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: "lastUpdateDateTime"))
    WaveAggregatedStatus.add_member(:progress_status, Shapes::ShapeRef.new(shape: WaveProgressStatus, location_name: "progressStatus"))
    WaveAggregatedStatus.add_member(:replication_started_date_time, Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: "replicationStartedDateTime"))
    WaveAggregatedStatus.add_member(:total_applications, Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "totalApplications"))
    WaveAggregatedStatus.struct_class = Types::WaveAggregatedStatus

    WaveIDsFilter.member = Shapes::ShapeRef.new(shape: WaveID)

    WavesList.member = Shapes::ShapeRef.new(shape: Wave)


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

      api.add_operation(:archive_application, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ArchiveApplication"
        o.http_method = "POST"
        o.http_request_uri = "/ArchiveApplication"
        o.input = Shapes::ShapeRef.new(shape: ArchiveApplicationRequest)
        o.output = Shapes::ShapeRef.new(shape: Application)
        o.errors << Shapes::ShapeRef.new(shape: UninitializedAccountException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:archive_wave, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ArchiveWave"
        o.http_method = "POST"
        o.http_request_uri = "/ArchiveWave"
        o.input = Shapes::ShapeRef.new(shape: ArchiveWaveRequest)
        o.output = Shapes::ShapeRef.new(shape: Wave)
        o.errors << Shapes::ShapeRef.new(shape: UninitializedAccountException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:associate_applications, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateApplications"
        o.http_method = "POST"
        o.http_request_uri = "/AssociateApplications"
        o.input = Shapes::ShapeRef.new(shape: AssociateApplicationsRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateApplicationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: UninitializedAccountException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:associate_source_servers, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateSourceServers"
        o.http_method = "POST"
        o.http_request_uri = "/AssociateSourceServers"
        o.input = Shapes::ShapeRef.new(shape: AssociateSourceServersRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateSourceServersResponse)
        o.errors << Shapes::ShapeRef.new(shape: UninitializedAccountException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

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

      api.add_operation(:create_application, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateApplication"
        o.http_method = "POST"
        o.http_request_uri = "/CreateApplication"
        o.input = Shapes::ShapeRef.new(shape: CreateApplicationRequest)
        o.output = Shapes::ShapeRef.new(shape: Application)
        o.errors << Shapes::ShapeRef.new(shape: UninitializedAccountException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:create_launch_configuration_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateLaunchConfigurationTemplate"
        o.http_method = "POST"
        o.http_request_uri = "/CreateLaunchConfigurationTemplate"
        o.input = Shapes::ShapeRef.new(shape: CreateLaunchConfigurationTemplateRequest)
        o.output = Shapes::ShapeRef.new(shape: LaunchConfigurationTemplate)
        o.errors << Shapes::ShapeRef.new(shape: UninitializedAccountException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
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

      api.add_operation(:create_wave, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateWave"
        o.http_method = "POST"
        o.http_request_uri = "/CreateWave"
        o.input = Shapes::ShapeRef.new(shape: CreateWaveRequest)
        o.output = Shapes::ShapeRef.new(shape: Wave)
        o.errors << Shapes::ShapeRef.new(shape: UninitializedAccountException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_application, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteApplication"
        o.http_method = "POST"
        o.http_request_uri = "/DeleteApplication"
        o.input = Shapes::ShapeRef.new(shape: DeleteApplicationRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteApplicationResponse)
        o.errors << Shapes::ShapeRef.new(shape: UninitializedAccountException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
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

      api.add_operation(:delete_launch_configuration_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteLaunchConfigurationTemplate"
        o.http_method = "POST"
        o.http_request_uri = "/DeleteLaunchConfigurationTemplate"
        o.input = Shapes::ShapeRef.new(shape: DeleteLaunchConfigurationTemplateRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteLaunchConfigurationTemplateResponse)
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

      api.add_operation(:delete_wave, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteWave"
        o.http_method = "POST"
        o.http_request_uri = "/DeleteWave"
        o.input = Shapes::ShapeRef.new(shape: DeleteWaveRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteWaveResponse)
        o.errors << Shapes::ShapeRef.new(shape: UninitializedAccountException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
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

      api.add_operation(:describe_launch_configuration_templates, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeLaunchConfigurationTemplates"
        o.http_method = "POST"
        o.http_request_uri = "/DescribeLaunchConfigurationTemplates"
        o.input = Shapes::ShapeRef.new(shape: DescribeLaunchConfigurationTemplatesRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeLaunchConfigurationTemplatesResponse)
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

      api.add_operation(:disassociate_applications, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateApplications"
        o.http_method = "POST"
        o.http_request_uri = "/DisassociateApplications"
        o.input = Shapes::ShapeRef.new(shape: DisassociateApplicationsRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateApplicationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: UninitializedAccountException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:disassociate_source_servers, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateSourceServers"
        o.http_method = "POST"
        o.http_request_uri = "/DisassociateSourceServers"
        o.input = Shapes::ShapeRef.new(shape: DisassociateSourceServersRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateSourceServersResponse)
        o.errors << Shapes::ShapeRef.new(shape: UninitializedAccountException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
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

      api.add_operation(:list_applications, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListApplications"
        o.http_method = "POST"
        o.http_request_uri = "/ListApplications"
        o.input = Shapes::ShapeRef.new(shape: ListApplicationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListApplicationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: UninitializedAccountException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_export_errors, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListExportErrors"
        o.http_method = "POST"
        o.http_request_uri = "/ListExportErrors"
        o.input = Shapes::ShapeRef.new(shape: ListExportErrorsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListExportErrorsResponse)
        o.errors << Shapes::ShapeRef.new(shape: UninitializedAccountException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_exports, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListExports"
        o.http_method = "POST"
        o.http_request_uri = "/ListExports"
        o.input = Shapes::ShapeRef.new(shape: ListExportsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListExportsResponse)
        o.errors << Shapes::ShapeRef.new(shape: UninitializedAccountException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_import_errors, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListImportErrors"
        o.http_method = "POST"
        o.http_request_uri = "/ListImportErrors"
        o.input = Shapes::ShapeRef.new(shape: ListImportErrorsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListImportErrorsResponse)
        o.errors << Shapes::ShapeRef.new(shape: UninitializedAccountException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_imports, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListImports"
        o.http_method = "POST"
        o.http_request_uri = "/ListImports"
        o.input = Shapes::ShapeRef.new(shape: ListImportsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListImportsResponse)
        o.errors << Shapes::ShapeRef.new(shape: UninitializedAccountException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_managed_accounts, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListManagedAccounts"
        o.http_method = "POST"
        o.http_request_uri = "/ListManagedAccounts"
        o.input = Shapes::ShapeRef.new(shape: ListManagedAccountsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListManagedAccountsResponse)
        o.errors << Shapes::ShapeRef.new(shape: UninitializedAccountException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_source_server_actions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSourceServerActions"
        o.http_method = "POST"
        o.http_request_uri = "/ListSourceServerActions"
        o.input = Shapes::ShapeRef.new(shape: ListSourceServerActionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListSourceServerActionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: UninitializedAccountException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:list_template_actions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTemplateActions"
        o.http_method = "POST"
        o.http_request_uri = "/ListTemplateActions"
        o.input = Shapes::ShapeRef.new(shape: ListTemplateActionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTemplateActionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: UninitializedAccountException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_waves, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListWaves"
        o.http_method = "POST"
        o.http_request_uri = "/ListWaves"
        o.input = Shapes::ShapeRef.new(shape: ListWavesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListWavesResponse)
        o.errors << Shapes::ShapeRef.new(shape: UninitializedAccountException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
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

      api.add_operation(:pause_replication, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PauseReplication"
        o.http_method = "POST"
        o.http_request_uri = "/PauseReplication"
        o.input = Shapes::ShapeRef.new(shape: PauseReplicationRequest)
        o.output = Shapes::ShapeRef.new(shape: SourceServer)
        o.errors << Shapes::ShapeRef.new(shape: UninitializedAccountException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:put_source_server_action, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutSourceServerAction"
        o.http_method = "POST"
        o.http_request_uri = "/PutSourceServerAction"
        o.input = Shapes::ShapeRef.new(shape: PutSourceServerActionRequest)
        o.output = Shapes::ShapeRef.new(shape: SourceServerActionDocument)
        o.errors << Shapes::ShapeRef.new(shape: UninitializedAccountException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:put_template_action, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutTemplateAction"
        o.http_method = "POST"
        o.http_request_uri = "/PutTemplateAction"
        o.input = Shapes::ShapeRef.new(shape: PutTemplateActionRequest)
        o.output = Shapes::ShapeRef.new(shape: TemplateActionDocument)
        o.errors << Shapes::ShapeRef.new(shape: UninitializedAccountException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:remove_source_server_action, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RemoveSourceServerAction"
        o.http_method = "POST"
        o.http_request_uri = "/RemoveSourceServerAction"
        o.input = Shapes::ShapeRef.new(shape: RemoveSourceServerActionRequest)
        o.output = Shapes::ShapeRef.new(shape: RemoveSourceServerActionResponse)
        o.errors << Shapes::ShapeRef.new(shape: UninitializedAccountException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:remove_template_action, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RemoveTemplateAction"
        o.http_method = "POST"
        o.http_request_uri = "/RemoveTemplateAction"
        o.input = Shapes::ShapeRef.new(shape: RemoveTemplateActionRequest)
        o.output = Shapes::ShapeRef.new(shape: RemoveTemplateActionResponse)
        o.errors << Shapes::ShapeRef.new(shape: UninitializedAccountException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:resume_replication, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ResumeReplication"
        o.http_method = "POST"
        o.http_request_uri = "/ResumeReplication"
        o.input = Shapes::ShapeRef.new(shape: ResumeReplicationRequest)
        o.output = Shapes::ShapeRef.new(shape: SourceServer)
        o.errors << Shapes::ShapeRef.new(shape: UninitializedAccountException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
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

      api.add_operation(:start_export, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartExport"
        o.http_method = "POST"
        o.http_request_uri = "/StartExport"
        o.input = Shapes::ShapeRef.new(shape: StartExportRequest)
        o.output = Shapes::ShapeRef.new(shape: StartExportResponse)
        o.errors << Shapes::ShapeRef.new(shape: UninitializedAccountException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:start_import, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartImport"
        o.http_method = "POST"
        o.http_request_uri = "/StartImport"
        o.input = Shapes::ShapeRef.new(shape: StartImportRequest)
        o.output = Shapes::ShapeRef.new(shape: StartImportResponse)
        o.errors << Shapes::ShapeRef.new(shape: UninitializedAccountException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
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

      api.add_operation(:stop_replication, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopReplication"
        o.http_method = "POST"
        o.http_request_uri = "/StopReplication"
        o.input = Shapes::ShapeRef.new(shape: StopReplicationRequest)
        o.output = Shapes::ShapeRef.new(shape: SourceServer)
        o.errors << Shapes::ShapeRef.new(shape: UninitializedAccountException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
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

      api.add_operation(:unarchive_application, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UnarchiveApplication"
        o.http_method = "POST"
        o.http_request_uri = "/UnarchiveApplication"
        o.input = Shapes::ShapeRef.new(shape: UnarchiveApplicationRequest)
        o.output = Shapes::ShapeRef.new(shape: Application)
        o.errors << Shapes::ShapeRef.new(shape: UninitializedAccountException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:unarchive_wave, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UnarchiveWave"
        o.http_method = "POST"
        o.http_request_uri = "/UnarchiveWave"
        o.input = Shapes::ShapeRef.new(shape: UnarchiveWaveRequest)
        o.output = Shapes::ShapeRef.new(shape: Wave)
        o.errors << Shapes::ShapeRef.new(shape: UninitializedAccountException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
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

      api.add_operation(:update_application, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateApplication"
        o.http_method = "POST"
        o.http_request_uri = "/UpdateApplication"
        o.input = Shapes::ShapeRef.new(shape: UpdateApplicationRequest)
        o.output = Shapes::ShapeRef.new(shape: Application)
        o.errors << Shapes::ShapeRef.new(shape: UninitializedAccountException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
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

      api.add_operation(:update_launch_configuration_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateLaunchConfigurationTemplate"
        o.http_method = "POST"
        o.http_request_uri = "/UpdateLaunchConfigurationTemplate"
        o.input = Shapes::ShapeRef.new(shape: UpdateLaunchConfigurationTemplateRequest)
        o.output = Shapes::ShapeRef.new(shape: LaunchConfigurationTemplate)
        o.errors << Shapes::ShapeRef.new(shape: UninitializedAccountException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
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

      api.add_operation(:update_wave, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateWave"
        o.http_method = "POST"
        o.http_request_uri = "/UpdateWave"
        o.input = Shapes::ShapeRef.new(shape: UpdateWaveRequest)
        o.output = Shapes::ShapeRef.new(shape: Wave)
        o.errors << Shapes::ShapeRef.new(shape: UninitializedAccountException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)
    end

  end
end
