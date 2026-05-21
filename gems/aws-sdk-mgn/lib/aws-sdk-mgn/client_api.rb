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
    AnalyzerType = Shapes::StringShape.new(name: 'AnalyzerType')
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
    Checksum = Shapes::StructureShape.new(name: 'Checksum')
    Cidr = Shapes::StringShape.new(name: 'Cidr')
    CidrBlock = Shapes::StringShape.new(name: 'CidrBlock')
    ClientIdempotencyToken = Shapes::StringShape.new(name: 'ClientIdempotencyToken')
    CloudWatchLogGroupName = Shapes::StringShape.new(name: 'CloudWatchLogGroupName')
    CodeGenerationOutputFormatStatus = Shapes::StringShape.new(name: 'CodeGenerationOutputFormatStatus')
    CodeGenerationOutputFormatStatusDetails = Shapes::StructureShape.new(name: 'CodeGenerationOutputFormatStatusDetails')
    CodeGenerationOutputFormatStatusDetailsMap = Shapes::MapShape.new(name: 'CodeGenerationOutputFormatStatusDetailsMap')
    CodeGenerationOutputFormatType = Shapes::StringShape.new(name: 'CodeGenerationOutputFormatType')
    CodeGenerationOutputFormatTypes = Shapes::ListShape.new(name: 'CodeGenerationOutputFormatTypes')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    ConflictExceptionErrors = Shapes::ListShape.new(name: 'ConflictExceptionErrors')
    Connector = Shapes::StructureShape.new(name: 'Connector')
    ConnectorArn = Shapes::StringShape.new(name: 'ConnectorArn')
    ConnectorID = Shapes::StringShape.new(name: 'ConnectorID')
    ConnectorIDsFilter = Shapes::ListShape.new(name: 'ConnectorIDsFilter')
    ConnectorName = Shapes::StringShape.new(name: 'ConnectorName')
    ConnectorSsmCommandConfig = Shapes::StructureShape.new(name: 'ConnectorSsmCommandConfig')
    ConnectorsList = Shapes::ListShape.new(name: 'ConnectorsList')
    ConstructID = Shapes::StringShape.new(name: 'ConstructID')
    ConstructProperties = Shapes::MapShape.new(name: 'ConstructProperties')
    ConstructPropertyKey = Shapes::StringShape.new(name: 'ConstructPropertyKey')
    Cpus = Shapes::ListShape.new(name: 'Cpus')
    CreateApplicationRequest = Shapes::StructureShape.new(name: 'CreateApplicationRequest')
    CreateConnectorRequest = Shapes::StructureShape.new(name: 'CreateConnectorRequest')
    CreateLaunchConfigurationTemplateRequest = Shapes::StructureShape.new(name: 'CreateLaunchConfigurationTemplateRequest')
    CreateNetworkMigrationDefinitionRequest = Shapes::StructureShape.new(name: 'CreateNetworkMigrationDefinitionRequest')
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
    DeleteConnectorRequest = Shapes::StructureShape.new(name: 'DeleteConnectorRequest')
    DeleteJobRequest = Shapes::StructureShape.new(name: 'DeleteJobRequest')
    DeleteJobResponse = Shapes::StructureShape.new(name: 'DeleteJobResponse')
    DeleteLaunchConfigurationTemplateRequest = Shapes::StructureShape.new(name: 'DeleteLaunchConfigurationTemplateRequest')
    DeleteLaunchConfigurationTemplateResponse = Shapes::StructureShape.new(name: 'DeleteLaunchConfigurationTemplateResponse')
    DeleteNetworkMigrationDefinitionRequest = Shapes::StructureShape.new(name: 'DeleteNetworkMigrationDefinitionRequest')
    DeleteNetworkMigrationDefinitionResponse = Shapes::StructureShape.new(name: 'DeleteNetworkMigrationDefinitionResponse')
    DeleteOperation = Shapes::StructureShape.new(name: 'DeleteOperation')
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
    EncryptionAlgorithm = Shapes::StringShape.new(name: 'EncryptionAlgorithm')
    EnrichmentSourceS3Configuration = Shapes::StructureShape.new(name: 'EnrichmentSourceS3Configuration')
    EnrichmentTargetS3Configuration = Shapes::StructureShape.new(name: 'EnrichmentTargetS3Configuration')
    ErrorDetails = Shapes::StructureShape.new(name: 'ErrorDetails')
    ExecutionStage = Shapes::StringShape.new(name: 'ExecutionStage')
    ExecutionStageActivity = Shapes::StringShape.new(name: 'ExecutionStageActivity')
    ExecutionStatus = Shapes::StringShape.new(name: 'ExecutionStatus')
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
    GetNetworkMigrationDefinitionRequest = Shapes::StructureShape.new(name: 'GetNetworkMigrationDefinitionRequest')
    GetNetworkMigrationMapperSegmentConstructRequest = Shapes::StructureShape.new(name: 'GetNetworkMigrationMapperSegmentConstructRequest')
    GetNetworkMigrationMapperSegmentConstructResponse = Shapes::StructureShape.new(name: 'GetNetworkMigrationMapperSegmentConstructResponse')
    GetReplicationConfigurationRequest = Shapes::StructureShape.new(name: 'GetReplicationConfigurationRequest')
    Hash = Shapes::StringShape.new(name: 'Hash')
    IPsList = Shapes::ListShape.new(name: 'IPsList')
    ISO8601DatetimeString = Shapes::StringShape.new(name: 'ISO8601DatetimeString')
    ISO8601DurationString = Shapes::StringShape.new(name: 'ISO8601DurationString')
    IdentificationHints = Shapes::StructureShape.new(name: 'IdentificationHints')
    ImportErrorData = Shapes::StructureShape.new(name: 'ImportErrorData')
    ImportErrorType = Shapes::StringShape.new(name: 'ImportErrorType')
    ImportErrors = Shapes::ListShape.new(name: 'ImportErrors')
    ImportFileEnrichment = Shapes::StructureShape.new(name: 'ImportFileEnrichment')
    ImportFileEnrichmentJobID = Shapes::StringShape.new(name: 'ImportFileEnrichmentJobID')
    ImportFileEnrichmentStatus = Shapes::StringShape.new(name: 'ImportFileEnrichmentStatus')
    ImportFileEnrichmentsIDsFilter = Shapes::ListShape.new(name: 'ImportFileEnrichmentsIDsFilter')
    ImportFileEnrichmentsList = Shapes::ListShape.new(name: 'ImportFileEnrichmentsList')
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
    InternetProtocol = Shapes::StringShape.new(name: 'InternetProtocol')
    Iops = Shapes::IntegerShape.new(name: 'Iops')
    IpAssignmentStrategy = Shapes::StringShape.new(name: 'IpAssignmentStrategy')
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
    KmsKeyArn = Shapes::StringShape.new(name: 'KmsKeyArn')
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
    ListConnectorsRequest = Shapes::StructureShape.new(name: 'ListConnectorsRequest')
    ListConnectorsRequestFilters = Shapes::StructureShape.new(name: 'ListConnectorsRequestFilters')
    ListConnectorsResponse = Shapes::StructureShape.new(name: 'ListConnectorsResponse')
    ListExportErrorsRequest = Shapes::StructureShape.new(name: 'ListExportErrorsRequest')
    ListExportErrorsResponse = Shapes::StructureShape.new(name: 'ListExportErrorsResponse')
    ListExportsRequest = Shapes::StructureShape.new(name: 'ListExportsRequest')
    ListExportsRequestFilters = Shapes::StructureShape.new(name: 'ListExportsRequestFilters')
    ListExportsRequestFiltersExportIDs = Shapes::ListShape.new(name: 'ListExportsRequestFiltersExportIDs')
    ListExportsResponse = Shapes::StructureShape.new(name: 'ListExportsResponse')
    ListImportErrorsRequest = Shapes::StructureShape.new(name: 'ListImportErrorsRequest')
    ListImportErrorsResponse = Shapes::StructureShape.new(name: 'ListImportErrorsResponse')
    ListImportFileEnrichmentsFilters = Shapes::StructureShape.new(name: 'ListImportFileEnrichmentsFilters')
    ListImportFileEnrichmentsRequest = Shapes::StructureShape.new(name: 'ListImportFileEnrichmentsRequest')
    ListImportFileEnrichmentsResponse = Shapes::StructureShape.new(name: 'ListImportFileEnrichmentsResponse')
    ListImportsRequest = Shapes::StructureShape.new(name: 'ListImportsRequest')
    ListImportsRequestFilters = Shapes::StructureShape.new(name: 'ListImportsRequestFilters')
    ListImportsResponse = Shapes::StructureShape.new(name: 'ListImportsResponse')
    ListManagedAccountsRequest = Shapes::StructureShape.new(name: 'ListManagedAccountsRequest')
    ListManagedAccountsResponse = Shapes::StructureShape.new(name: 'ListManagedAccountsResponse')
    ListNetworkMigrationAnalysesFilters = Shapes::StructureShape.new(name: 'ListNetworkMigrationAnalysesFilters')
    ListNetworkMigrationAnalysesIDsFilter = Shapes::ListShape.new(name: 'ListNetworkMigrationAnalysesIDsFilter')
    ListNetworkMigrationAnalysesRequest = Shapes::StructureShape.new(name: 'ListNetworkMigrationAnalysesRequest')
    ListNetworkMigrationAnalysesResponse = Shapes::StructureShape.new(name: 'ListNetworkMigrationAnalysesResponse')
    ListNetworkMigrationAnalysisResultsFilters = Shapes::StructureShape.new(name: 'ListNetworkMigrationAnalysisResultsFilters')
    ListNetworkMigrationAnalysisResultsRequest = Shapes::StructureShape.new(name: 'ListNetworkMigrationAnalysisResultsRequest')
    ListNetworkMigrationAnalysisResultsResponse = Shapes::StructureShape.new(name: 'ListNetworkMigrationAnalysisResultsResponse')
    ListNetworkMigrationCodeGenerationSegmentsFilters = Shapes::StructureShape.new(name: 'ListNetworkMigrationCodeGenerationSegmentsFilters')
    ListNetworkMigrationCodeGenerationSegmentsIDsFilter = Shapes::ListShape.new(name: 'ListNetworkMigrationCodeGenerationSegmentsIDsFilter')
    ListNetworkMigrationCodeGenerationSegmentsRequest = Shapes::StructureShape.new(name: 'ListNetworkMigrationCodeGenerationSegmentsRequest')
    ListNetworkMigrationCodeGenerationSegmentsResponse = Shapes::StructureShape.new(name: 'ListNetworkMigrationCodeGenerationSegmentsResponse')
    ListNetworkMigrationCodeGenerationsFilters = Shapes::StructureShape.new(name: 'ListNetworkMigrationCodeGenerationsFilters')
    ListNetworkMigrationCodeGenerationsIDsFilter = Shapes::ListShape.new(name: 'ListNetworkMigrationCodeGenerationsIDsFilter')
    ListNetworkMigrationCodeGenerationsRequest = Shapes::StructureShape.new(name: 'ListNetworkMigrationCodeGenerationsRequest')
    ListNetworkMigrationCodeGenerationsResponse = Shapes::StructureShape.new(name: 'ListNetworkMigrationCodeGenerationsResponse')
    ListNetworkMigrationDefinitionsRequest = Shapes::StructureShape.new(name: 'ListNetworkMigrationDefinitionsRequest')
    ListNetworkMigrationDefinitionsRequestFilters = Shapes::StructureShape.new(name: 'ListNetworkMigrationDefinitionsRequestFilters')
    ListNetworkMigrationDefinitionsResponse = Shapes::StructureShape.new(name: 'ListNetworkMigrationDefinitionsResponse')
    ListNetworkMigrationDeployedStacksRequest = Shapes::StructureShape.new(name: 'ListNetworkMigrationDeployedStacksRequest')
    ListNetworkMigrationDeployedStacksResponse = Shapes::StructureShape.new(name: 'ListNetworkMigrationDeployedStacksResponse')
    ListNetworkMigrationDeployerJobFilters = Shapes::StructureShape.new(name: 'ListNetworkMigrationDeployerJobFilters')
    ListNetworkMigrationDeployerJobIDsFilters = Shapes::ListShape.new(name: 'ListNetworkMigrationDeployerJobIDsFilters')
    ListNetworkMigrationDeployerJobResponse = Shapes::StructureShape.new(name: 'ListNetworkMigrationDeployerJobResponse')
    ListNetworkMigrationDeploymentsRequest = Shapes::StructureShape.new(name: 'ListNetworkMigrationDeploymentsRequest')
    ListNetworkMigrationExecutionRequestFilters = Shapes::StructureShape.new(name: 'ListNetworkMigrationExecutionRequestFilters')
    ListNetworkMigrationExecutionsRequest = Shapes::StructureShape.new(name: 'ListNetworkMigrationExecutionsRequest')
    ListNetworkMigrationExecutionsResponse = Shapes::StructureShape.new(name: 'ListNetworkMigrationExecutionsResponse')
    ListNetworkMigrationMapperSegmentConstructTypesFilter = Shapes::ListShape.new(name: 'ListNetworkMigrationMapperSegmentConstructTypesFilter')
    ListNetworkMigrationMapperSegmentConstructsFilters = Shapes::StructureShape.new(name: 'ListNetworkMigrationMapperSegmentConstructsFilters')
    ListNetworkMigrationMapperSegmentConstructsIDsFilter = Shapes::ListShape.new(name: 'ListNetworkMigrationMapperSegmentConstructsIDsFilter')
    ListNetworkMigrationMapperSegmentConstructsRequest = Shapes::StructureShape.new(name: 'ListNetworkMigrationMapperSegmentConstructsRequest')
    ListNetworkMigrationMapperSegmentConstructsResponse = Shapes::StructureShape.new(name: 'ListNetworkMigrationMapperSegmentConstructsResponse')
    ListNetworkMigrationMapperSegmentsFilters = Shapes::StructureShape.new(name: 'ListNetworkMigrationMapperSegmentsFilters')
    ListNetworkMigrationMapperSegmentsIDsFilter = Shapes::ListShape.new(name: 'ListNetworkMigrationMapperSegmentsIDsFilter')
    ListNetworkMigrationMapperSegmentsRequest = Shapes::StructureShape.new(name: 'ListNetworkMigrationMapperSegmentsRequest')
    ListNetworkMigrationMapperSegmentsResponse = Shapes::StructureShape.new(name: 'ListNetworkMigrationMapperSegmentsResponse')
    ListNetworkMigrationMappingUpdatesFilters = Shapes::StructureShape.new(name: 'ListNetworkMigrationMappingUpdatesFilters')
    ListNetworkMigrationMappingUpdatesIDsFilter = Shapes::ListShape.new(name: 'ListNetworkMigrationMappingUpdatesIDsFilter')
    ListNetworkMigrationMappingUpdatesRequest = Shapes::StructureShape.new(name: 'ListNetworkMigrationMappingUpdatesRequest')
    ListNetworkMigrationMappingUpdatesResponse = Shapes::StructureShape.new(name: 'ListNetworkMigrationMappingUpdatesResponse')
    ListNetworkMigrationMappingsFilters = Shapes::StructureShape.new(name: 'ListNetworkMigrationMappingsFilters')
    ListNetworkMigrationMappingsIDsFilter = Shapes::ListShape.new(name: 'ListNetworkMigrationMappingsIDsFilter')
    ListNetworkMigrationMappingsRequest = Shapes::StructureShape.new(name: 'ListNetworkMigrationMappingsRequest')
    ListNetworkMigrationMappingsResponse = Shapes::StructureShape.new(name: 'ListNetworkMigrationMappingsResponse')
    ListSourceServerActionsRequest = Shapes::StructureShape.new(name: 'ListSourceServerActionsRequest')
    ListSourceServerActionsResponse = Shapes::StructureShape.new(name: 'ListSourceServerActionsResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    ListTemplateActionsRequest = Shapes::StructureShape.new(name: 'ListTemplateActionsRequest')
    ListTemplateActionsResponse = Shapes::StructureShape.new(name: 'ListTemplateActionsResponse')
    ListWavesRequest = Shapes::StructureShape.new(name: 'ListWavesRequest')
    ListWavesRequestFilters = Shapes::StructureShape.new(name: 'ListWavesRequestFilters')
    ListWavesResponse = Shapes::StructureShape.new(name: 'ListWavesResponse')
    LogicalID = Shapes::StringShape.new(name: 'LogicalID')
    ManagedAccount = Shapes::StructureShape.new(name: 'ManagedAccount')
    ManagedAccounts = Shapes::ListShape.new(name: 'ManagedAccounts')
    MarkAsArchivedRequest = Shapes::StructureShape.new(name: 'MarkAsArchivedRequest')
    MarshalledResourceDefinition = Shapes::StringShape.new(name: 'MarshalledResourceDefinition')
    MaxResultsType = Shapes::IntegerShape.new(name: 'MaxResultsType')
    MergeConstruct = Shapes::StructureShape.new(name: 'MergeConstruct')
    MergeConstructs = Shapes::ListShape.new(name: 'MergeConstructs')
    MergeOperation = Shapes::StructureShape.new(name: 'MergeOperation')
    NetworkInterface = Shapes::StructureShape.new(name: 'NetworkInterface')
    NetworkInterfaces = Shapes::ListShape.new(name: 'NetworkInterfaces')
    NetworkMigrationAnalysesList = Shapes::ListShape.new(name: 'NetworkMigrationAnalysesList')
    NetworkMigrationAnalysisJobDetails = Shapes::StructureShape.new(name: 'NetworkMigrationAnalysisJobDetails')
    NetworkMigrationAnalysisResult = Shapes::StructureShape.new(name: 'NetworkMigrationAnalysisResult')
    NetworkMigrationAnalysisResultSource = Shapes::StructureShape.new(name: 'NetworkMigrationAnalysisResultSource')
    NetworkMigrationAnalysisResultStatus = Shapes::StringShape.new(name: 'NetworkMigrationAnalysisResultStatus')
    NetworkMigrationAnalysisResultTarget = Shapes::StructureShape.new(name: 'NetworkMigrationAnalysisResultTarget')
    NetworkMigrationAnalysisResultsList = Shapes::ListShape.new(name: 'NetworkMigrationAnalysisResultsList')
    NetworkMigrationCodeGenerationArtifact = Shapes::StructureShape.new(name: 'NetworkMigrationCodeGenerationArtifact')
    NetworkMigrationCodeGenerationArtifactID = Shapes::StringShape.new(name: 'NetworkMigrationCodeGenerationArtifactID')
    NetworkMigrationCodeGenerationArtifactSubType = Shapes::StringShape.new(name: 'NetworkMigrationCodeGenerationArtifactSubType')
    NetworkMigrationCodeGenerationArtifactType = Shapes::StringShape.new(name: 'NetworkMigrationCodeGenerationArtifactType')
    NetworkMigrationCodeGenerationArtifacts = Shapes::ListShape.new(name: 'NetworkMigrationCodeGenerationArtifacts')
    NetworkMigrationCodeGenerationJobDetails = Shapes::StructureShape.new(name: 'NetworkMigrationCodeGenerationJobDetails')
    NetworkMigrationCodeGenerationSegment = Shapes::StructureShape.new(name: 'NetworkMigrationCodeGenerationSegment')
    NetworkMigrationCodeGenerationSegmentType = Shapes::StringShape.new(name: 'NetworkMigrationCodeGenerationSegmentType')
    NetworkMigrationCodeGenerationSegmentsList = Shapes::ListShape.new(name: 'NetworkMigrationCodeGenerationSegmentsList')
    NetworkMigrationCodeGenerationsList = Shapes::ListShape.new(name: 'NetworkMigrationCodeGenerationsList')
    NetworkMigrationDefinition = Shapes::StructureShape.new(name: 'NetworkMigrationDefinition')
    NetworkMigrationDefinitionDescription = Shapes::StringShape.new(name: 'NetworkMigrationDefinitionDescription')
    NetworkMigrationDefinitionID = Shapes::StringShape.new(name: 'NetworkMigrationDefinitionID')
    NetworkMigrationDefinitionName = Shapes::StringShape.new(name: 'NetworkMigrationDefinitionName')
    NetworkMigrationDefinitionSummariesList = Shapes::ListShape.new(name: 'NetworkMigrationDefinitionSummariesList')
    NetworkMigrationDefinitionSummary = Shapes::StructureShape.new(name: 'NetworkMigrationDefinitionSummary')
    NetworkMigrationDefintionsIDsFilter = Shapes::ListShape.new(name: 'NetworkMigrationDefintionsIDsFilter')
    NetworkMigrationDeployedStackDetails = Shapes::StructureShape.new(name: 'NetworkMigrationDeployedStackDetails')
    NetworkMigrationDeployedStackStatus = Shapes::StringShape.new(name: 'NetworkMigrationDeployedStackStatus')
    NetworkMigrationDeployedStacksList = Shapes::ListShape.new(name: 'NetworkMigrationDeployedStacksList')
    NetworkMigrationDeployerJobDetails = Shapes::StructureShape.new(name: 'NetworkMigrationDeployerJobDetails')
    NetworkMigrationDeployerJobList = Shapes::ListShape.new(name: 'NetworkMigrationDeployerJobList')
    NetworkMigrationExecution = Shapes::StructureShape.new(name: 'NetworkMigrationExecution')
    NetworkMigrationExecutionID = Shapes::StringShape.new(name: 'NetworkMigrationExecutionID')
    NetworkMigrationExecutionIDsFilter = Shapes::ListShape.new(name: 'NetworkMigrationExecutionIDsFilter')
    NetworkMigrationExecutionStatusesFilter = Shapes::ListShape.new(name: 'NetworkMigrationExecutionStatusesFilter')
    NetworkMigrationExecutionsList = Shapes::ListShape.new(name: 'NetworkMigrationExecutionsList')
    NetworkMigrationFailedResourceDetails = Shapes::StructureShape.new(name: 'NetworkMigrationFailedResourceDetails')
    NetworkMigrationFailedResourceStatus = Shapes::StringShape.new(name: 'NetworkMigrationFailedResourceStatus')
    NetworkMigrationFailedResourcesList = Shapes::ListShape.new(name: 'NetworkMigrationFailedResourcesList')
    NetworkMigrationJobID = Shapes::StringShape.new(name: 'NetworkMigrationJobID')
    NetworkMigrationJobStatus = Shapes::StringShape.new(name: 'NetworkMigrationJobStatus')
    NetworkMigrationMapperSegment = Shapes::StructureShape.new(name: 'NetworkMigrationMapperSegment')
    NetworkMigrationMapperSegmentConstruct = Shapes::StructureShape.new(name: 'NetworkMigrationMapperSegmentConstruct')
    NetworkMigrationMapperSegmentConstructType = Shapes::StringShape.new(name: 'NetworkMigrationMapperSegmentConstructType')
    NetworkMigrationMapperSegmentConstructs = Shapes::ListShape.new(name: 'NetworkMigrationMapperSegmentConstructs')
    NetworkMigrationMapperSegmentType = Shapes::StringShape.new(name: 'NetworkMigrationMapperSegmentType')
    NetworkMigrationMapperSegmentsList = Shapes::ListShape.new(name: 'NetworkMigrationMapperSegmentsList')
    NetworkMigrationMappingJobDetails = Shapes::StructureShape.new(name: 'NetworkMigrationMappingJobDetails')
    NetworkMigrationMappingUpdateJobDetails = Shapes::StructureShape.new(name: 'NetworkMigrationMappingUpdateJobDetails')
    NetworkMigrationMappingUpdatesList = Shapes::ListShape.new(name: 'NetworkMigrationMappingUpdatesList')
    NetworkMigrationMappingsList = Shapes::ListShape.new(name: 'NetworkMigrationMappingsList')
    OS = Shapes::StructureShape.new(name: 'OS')
    OperatingSystemString = Shapes::StringShape.new(name: 'OperatingSystemString')
    OperationUnion = Shapes::UnionShape.new(name: 'OperationUnion')
    OrderType = Shapes::IntegerShape.new(name: 'OrderType')
    PaginationToken = Shapes::StringShape.new(name: 'PaginationToken')
    ParticipatingServer = Shapes::StructureShape.new(name: 'ParticipatingServer')
    ParticipatingServers = Shapes::ListShape.new(name: 'ParticipatingServers')
    PauseReplicationRequest = Shapes::StructureShape.new(name: 'PauseReplicationRequest')
    PhysicalID = Shapes::StringShape.new(name: 'PhysicalID')
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
    ReplicatorID = Shapes::StringShape.new(name: 'ReplicatorID')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResumeReplicationRequest = Shapes::StructureShape.new(name: 'ResumeReplicationRequest')
    RetryDataReplicationRequest = Shapes::StructureShape.new(name: 'RetryDataReplicationRequest')
    S3BucketName = Shapes::StringShape.new(name: 'S3BucketName')
    S3BucketSource = Shapes::StructureShape.new(name: 'S3BucketSource')
    S3Configuration = Shapes::StructureShape.new(name: 'S3Configuration')
    S3Key = Shapes::StringShape.new(name: 'S3Key')
    S3KeyName = Shapes::StringShape.new(name: 'S3KeyName')
    S3LogBucketName = Shapes::StringShape.new(name: 'S3LogBucketName')
    ScopeTagKey = Shapes::StringShape.new(name: 'ScopeTagKey')
    ScopeTagValue = Shapes::StringShape.new(name: 'ScopeTagValue')
    ScopeTagsMap = Shapes::MapShape.new(name: 'ScopeTagsMap')
    SecretArn = Shapes::StringShape.new(name: 'SecretArn')
    SecurityGroupID = Shapes::StringShape.new(name: 'SecurityGroupID')
    SecurityGroupMappingStrategy = Shapes::StringShape.new(name: 'SecurityGroupMappingStrategy')
    SegmentConstructDescription = Shapes::StringShape.new(name: 'SegmentConstructDescription')
    SegmentConstructName = Shapes::StringShape.new(name: 'SegmentConstructName')
    SegmentDescription = Shapes::StringShape.new(name: 'SegmentDescription')
    SegmentID = Shapes::StringShape.new(name: 'SegmentID')
    SegmentName = Shapes::StringShape.new(name: 'SegmentName')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    SmallBoundedString = Shapes::StringShape.new(name: 'SmallBoundedString')
    SourceConfiguration = Shapes::StructureShape.new(name: 'SourceConfiguration')
    SourceConfigurationList = Shapes::ListShape.new(name: 'SourceConfigurationList')
    SourceEnvironment = Shapes::StringShape.new(name: 'SourceEnvironment')
    SourceProperties = Shapes::StructureShape.new(name: 'SourceProperties')
    SourceS3Configuration = Shapes::StructureShape.new(name: 'SourceS3Configuration')
    SourceServer = Shapes::StructureShape.new(name: 'SourceServer')
    SourceServerActionDocument = Shapes::StructureShape.new(name: 'SourceServerActionDocument')
    SourceServerActionDocuments = Shapes::ListShape.new(name: 'SourceServerActionDocuments')
    SourceServerActionsRequestFilters = Shapes::StructureShape.new(name: 'SourceServerActionsRequestFilters')
    SourceServerConnectorAction = Shapes::StructureShape.new(name: 'SourceServerConnectorAction')
    SourceServerID = Shapes::StringShape.new(name: 'SourceServerID')
    SourceServersList = Shapes::ListShape.new(name: 'SourceServersList')
    SplitConstruct = Shapes::StructureShape.new(name: 'SplitConstruct')
    SplitConstructs = Shapes::ListShape.new(name: 'SplitConstructs')
    SplitOperation = Shapes::StructureShape.new(name: 'SplitOperation')
    SsmDocument = Shapes::StructureShape.new(name: 'SsmDocument')
    SsmDocumentExternalParameters = Shapes::MapShape.new(name: 'SsmDocumentExternalParameters')
    SsmDocumentName = Shapes::StringShape.new(name: 'SsmDocumentName')
    SsmDocumentParameterName = Shapes::StringShape.new(name: 'SsmDocumentParameterName')
    SsmDocumentParameters = Shapes::MapShape.new(name: 'SsmDocumentParameters')
    SsmDocumentType = Shapes::StringShape.new(name: 'SsmDocumentType')
    SsmDocuments = Shapes::ListShape.new(name: 'SsmDocuments')
    SsmExternalParameter = Shapes::UnionShape.new(name: 'SsmExternalParameter')
    SsmInstanceID = Shapes::StringShape.new(name: 'SsmInstanceID')
    SsmParameterStoreParameter = Shapes::StructureShape.new(name: 'SsmParameterStoreParameter')
    SsmParameterStoreParameterName = Shapes::StringShape.new(name: 'SsmParameterStoreParameterName')
    SsmParameterStoreParameterType = Shapes::StringShape.new(name: 'SsmParameterStoreParameterType')
    SsmParameterStoreParameters = Shapes::ListShape.new(name: 'SsmParameterStoreParameters')
    StartCutoverRequest = Shapes::StructureShape.new(name: 'StartCutoverRequest')
    StartCutoverRequestSourceServerIDs = Shapes::ListShape.new(name: 'StartCutoverRequestSourceServerIDs')
    StartCutoverResponse = Shapes::StructureShape.new(name: 'StartCutoverResponse')
    StartExportRequest = Shapes::StructureShape.new(name: 'StartExportRequest')
    StartExportResponse = Shapes::StructureShape.new(name: 'StartExportResponse')
    StartImportFileEnrichmentRequest = Shapes::StructureShape.new(name: 'StartImportFileEnrichmentRequest')
    StartImportFileEnrichmentResponse = Shapes::StructureShape.new(name: 'StartImportFileEnrichmentResponse')
    StartImportRequest = Shapes::StructureShape.new(name: 'StartImportRequest')
    StartImportResponse = Shapes::StructureShape.new(name: 'StartImportResponse')
    StartNetworkMigrationAnalysisRequest = Shapes::StructureShape.new(name: 'StartNetworkMigrationAnalysisRequest')
    StartNetworkMigrationAnalysisResponse = Shapes::StructureShape.new(name: 'StartNetworkMigrationAnalysisResponse')
    StartNetworkMigrationCodeGenerationRequest = Shapes::StructureShape.new(name: 'StartNetworkMigrationCodeGenerationRequest')
    StartNetworkMigrationCodeGenerationResponse = Shapes::StructureShape.new(name: 'StartNetworkMigrationCodeGenerationResponse')
    StartNetworkMigrationDeployerJobResponse = Shapes::StructureShape.new(name: 'StartNetworkMigrationDeployerJobResponse')
    StartNetworkMigrationDeploymentRequest = Shapes::StructureShape.new(name: 'StartNetworkMigrationDeploymentRequest')
    StartNetworkMigrationMappingRequest = Shapes::StructureShape.new(name: 'StartNetworkMigrationMappingRequest')
    StartNetworkMigrationMappingResponse = Shapes::StructureShape.new(name: 'StartNetworkMigrationMappingResponse')
    StartNetworkMigrationMappingUpdateConstruct = Shapes::StructureShape.new(name: 'StartNetworkMigrationMappingUpdateConstruct')
    StartNetworkMigrationMappingUpdateConstructs = Shapes::ListShape.new(name: 'StartNetworkMigrationMappingUpdateConstructs')
    StartNetworkMigrationMappingUpdateRequest = Shapes::StructureShape.new(name: 'StartNetworkMigrationMappingUpdateRequest')
    StartNetworkMigrationMappingUpdateResponse = Shapes::StructureShape.new(name: 'StartNetworkMigrationMappingUpdateResponse')
    StartNetworkMigrationMappingUpdateSegment = Shapes::StructureShape.new(name: 'StartNetworkMigrationMappingUpdateSegment')
    StartNetworkMigrationMappingUpdateSegments = Shapes::ListShape.new(name: 'StartNetworkMigrationMappingUpdateSegments')
    StartReplicationRequest = Shapes::StructureShape.new(name: 'StartReplicationRequest')
    StartTestRequest = Shapes::StructureShape.new(name: 'StartTestRequest')
    StartTestRequestSourceServerIDs = Shapes::ListShape.new(name: 'StartTestRequestSourceServerIDs')
    StartTestResponse = Shapes::StructureShape.new(name: 'StartTestResponse')
    StopReplicationRequest = Shapes::StructureShape.new(name: 'StopReplicationRequest')
    StrictlyPositiveInteger = Shapes::IntegerShape.new(name: 'StrictlyPositiveInteger')
    String = Shapes::StringShape.new(name: 'String')
    SubnetID = Shapes::StringShape.new(name: 'SubnetID')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeys = Shapes::ListShape.new(name: 'TagKeys')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TagsMap = Shapes::MapShape.new(name: 'TagsMap')
    TargetDeployment = Shapes::StringShape.new(name: 'TargetDeployment')
    TargetInstanceTypeRightSizingMethod = Shapes::StringShape.new(name: 'TargetInstanceTypeRightSizingMethod')
    TargetNetwork = Shapes::StructureShape.new(name: 'TargetNetwork')
    TargetNetworkTopology = Shapes::StringShape.new(name: 'TargetNetworkTopology')
    TargetNetworkUpdate = Shapes::StructureShape.new(name: 'TargetNetworkUpdate')
    TargetS3Configuration = Shapes::StructureShape.new(name: 'TargetS3Configuration')
    TargetS3ConfigurationUpdate = Shapes::StructureShape.new(name: 'TargetS3ConfigurationUpdate')
    TemplateActionDocument = Shapes::StructureShape.new(name: 'TemplateActionDocument')
    TemplateActionDocuments = Shapes::ListShape.new(name: 'TemplateActionDocuments')
    TemplateActionsRequestFilters = Shapes::StructureShape.new(name: 'TemplateActionsRequestFilters')
    TerminateTargetInstancesRequest = Shapes::StructureShape.new(name: 'TerminateTargetInstancesRequest')
    TerminateTargetInstancesRequestSourceServerIDs = Shapes::ListShape.new(name: 'TerminateTargetInstancesRequestSourceServerIDs')
    TerminateTargetInstancesResponse = Shapes::StructureShape.new(name: 'TerminateTargetInstancesResponse')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Throughput = Shapes::IntegerShape.new(name: 'Throughput')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    UnarchiveApplicationRequest = Shapes::StructureShape.new(name: 'UnarchiveApplicationRequest')
    UnarchiveWaveRequest = Shapes::StructureShape.new(name: 'UnarchiveWaveRequest')
    UninitializedAccountException = Shapes::StructureShape.new(name: 'UninitializedAccountException')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UpdateApplicationRequest = Shapes::StructureShape.new(name: 'UpdateApplicationRequest')
    UpdateConnectorRequest = Shapes::StructureShape.new(name: 'UpdateConnectorRequest')
    UpdateLaunchConfigurationRequest = Shapes::StructureShape.new(name: 'UpdateLaunchConfigurationRequest')
    UpdateLaunchConfigurationTemplateRequest = Shapes::StructureShape.new(name: 'UpdateLaunchConfigurationTemplateRequest')
    UpdateNetworkMigrationDefinitionRequest = Shapes::StructureShape.new(name: 'UpdateNetworkMigrationDefinitionRequest')
    UpdateNetworkMigrationMapperSegmentRequest = Shapes::StructureShape.new(name: 'UpdateNetworkMigrationMapperSegmentRequest')
    UpdateOperation = Shapes::StructureShape.new(name: 'UpdateOperation')
    UpdateReplicationConfigurationRequest = Shapes::StructureShape.new(name: 'UpdateReplicationConfigurationRequest')
    UpdateReplicationConfigurationTemplateRequest = Shapes::StructureShape.new(name: 'UpdateReplicationConfigurationTemplateRequest')
    UpdateSourceServerReplicationTypeRequest = Shapes::StructureShape.new(name: 'UpdateSourceServerReplicationTypeRequest')
    UpdateSourceServerRequest = Shapes::StructureShape.new(name: 'UpdateSourceServerRequest')
    UpdateWaveRequest = Shapes::StructureShape.new(name: 'UpdateWaveRequest')
    UserProvidedId = Shapes::StringShape.new(name: 'UserProvidedId')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationExceptionField = Shapes::StructureShape.new(name: 'ValidationExceptionField')
    ValidationExceptionFieldList = Shapes::ListShape.new(name: 'ValidationExceptionFieldList')
    ValidationExceptionReason = Shapes::StringShape.new(name: 'ValidationExceptionReason')
    VcenterClient = Shapes::StructureShape.new(name: 'VcenterClient')
    VcenterClientID = Shapes::StringShape.new(name: 'VcenterClientID')
    VcenterClientList = Shapes::ListShape.new(name: 'VcenterClientList')
    VolumeType = Shapes::StringShape.new(name: 'VolumeType')
    VpcID = Shapes::StringShape.new(name: 'VpcID')
    VpcIDsFilter = Shapes::ListShape.new(name: 'VpcIDsFilter')
    Wave = Shapes::StructureShape.new(name: 'Wave')
    WaveAggregatedStatus = Shapes::StructureShape.new(name: 'WaveAggregatedStatus')
    WaveDescription = Shapes::StringShape.new(name: 'WaveDescription')
    WaveHealthStatus = Shapes::StringShape.new(name: 'WaveHealthStatus')
    WaveID = Shapes::StringShape.new(name: 'WaveID')
    WaveIDsFilter = Shapes::ListShape.new(name: 'WaveIDsFilter')
    WaveName = Shapes::StringShape.new(name: 'WaveName')
    WaveProgressStatus = Shapes::StringShape.new(name: 'WaveProgressStatus')
    WavesList = Shapes::ListShape.new(name: 'WavesList')
    referencedSegmentsList = Shapes::ListShape.new(name: 'referencedSegmentsList')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: "message"))
    AccessDeniedException.add_member(:code, Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: "code"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    ActionIDs.member = Shapes::ShapeRef.new(shape: ActionID)

    Application.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationID, location_name: "applicationID"))
    Application.add_member(:arn, Shapes::ShapeRef.new(shape: ARN, location_name: "arn"))
    Application.add_member(:name, Shapes::ShapeRef.new(shape: ApplicationName, location_name: "name"))
    Application.add_member(:description, Shapes::ShapeRef.new(shape: ApplicationDescription, location_name: "description"))
    Application.add_member(:is_archived, Shapes::ShapeRef.new(shape: Boolean, location_name: "isArchived"))
    Application.add_member(:application_aggregated_status, Shapes::ShapeRef.new(shape: ApplicationAggregatedStatus, location_name: "applicationAggregatedStatus"))
    Application.add_member(:creation_date_time, Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: "creationDateTime"))
    Application.add_member(:last_modified_date_time, Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: "lastModifiedDateTime"))
    Application.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    Application.add_member(:wave_id, Shapes::ShapeRef.new(shape: WaveID, location_name: "waveID"))
    Application.struct_class = Types::Application

    ApplicationAggregatedStatus.add_member(:last_update_date_time, Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: "lastUpdateDateTime"))
    ApplicationAggregatedStatus.add_member(:health_status, Shapes::ShapeRef.new(shape: ApplicationHealthStatus, location_name: "healthStatus"))
    ApplicationAggregatedStatus.add_member(:progress_status, Shapes::ShapeRef.new(shape: ApplicationProgressStatus, location_name: "progressStatus"))
    ApplicationAggregatedStatus.add_member(:total_source_servers, Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "totalSourceServers"))
    ApplicationAggregatedStatus.struct_class = Types::ApplicationAggregatedStatus

    ApplicationIDs.member = Shapes::ShapeRef.new(shape: ApplicationID)

    ApplicationIDsFilter.member = Shapes::ShapeRef.new(shape: ApplicationID)

    ApplicationsList.member = Shapes::ShapeRef.new(shape: Application)

    ArchiveApplicationRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationID, required: true, location_name: "applicationID"))
    ArchiveApplicationRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountID, location_name: "accountID"))
    ArchiveApplicationRequest.struct_class = Types::ArchiveApplicationRequest

    ArchiveWaveRequest.add_member(:wave_id, Shapes::ShapeRef.new(shape: WaveID, required: true, location_name: "waveID"))
    ArchiveWaveRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountID, location_name: "accountID"))
    ArchiveWaveRequest.struct_class = Types::ArchiveWaveRequest

    AssociateApplicationsRequest.add_member(:wave_id, Shapes::ShapeRef.new(shape: WaveID, required: true, location_name: "waveID"))
    AssociateApplicationsRequest.add_member(:application_i_ds, Shapes::ShapeRef.new(shape: ApplicationIDs, required: true, location_name: "applicationIDs"))
    AssociateApplicationsRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountID, location_name: "accountID"))
    AssociateApplicationsRequest.struct_class = Types::AssociateApplicationsRequest

    AssociateApplicationsResponse.struct_class = Types::AssociateApplicationsResponse

    AssociateSourceServersRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationID, required: true, location_name: "applicationID"))
    AssociateSourceServersRequest.add_member(:source_server_i_ds, Shapes::ShapeRef.new(shape: AssociateSourceServersRequestSourceServerIDs, required: true, location_name: "sourceServerIDs"))
    AssociateSourceServersRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountID, location_name: "accountID"))
    AssociateSourceServersRequest.struct_class = Types::AssociateSourceServersRequest

    AssociateSourceServersRequestSourceServerIDs.member = Shapes::ShapeRef.new(shape: SourceServerID)

    AssociateSourceServersResponse.struct_class = Types::AssociateSourceServersResponse

    CPU.add_member(:cores, Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "cores"))
    CPU.add_member(:model_name, Shapes::ShapeRef.new(shape: BoundedString, location_name: "modelName"))
    CPU.struct_class = Types::CPU

    ChangeServerLifeCycleStateRequest.add_member(:source_server_id, Shapes::ShapeRef.new(shape: SourceServerID, required: true, location_name: "sourceServerID"))
    ChangeServerLifeCycleStateRequest.add_member(:life_cycle, Shapes::ShapeRef.new(shape: ChangeServerLifeCycleStateSourceServerLifecycle, required: true, location_name: "lifeCycle"))
    ChangeServerLifeCycleStateRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountID, location_name: "accountID"))
    ChangeServerLifeCycleStateRequest.struct_class = Types::ChangeServerLifeCycleStateRequest

    ChangeServerLifeCycleStateSourceServerLifecycle.add_member(:state, Shapes::ShapeRef.new(shape: ChangeServerLifeCycleStateSourceServerLifecycleState, required: true, location_name: "state"))
    ChangeServerLifeCycleStateSourceServerLifecycle.struct_class = Types::ChangeServerLifeCycleStateSourceServerLifecycle

    Checksum.add_member(:encryption_algorithm, Shapes::ShapeRef.new(shape: EncryptionAlgorithm, location_name: "encryptionAlgorithm"))
    Checksum.add_member(:hash, Shapes::ShapeRef.new(shape: Hash, location_name: "hash"))
    Checksum.struct_class = Types::Checksum

    CodeGenerationOutputFormatStatusDetails.add_member(:status, Shapes::ShapeRef.new(shape: CodeGenerationOutputFormatStatus, location_name: "status"))
    CodeGenerationOutputFormatStatusDetails.add_member(:status_detail_list, Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: "statusDetailList"))
    CodeGenerationOutputFormatStatusDetails.struct_class = Types::CodeGenerationOutputFormatStatusDetails

    CodeGenerationOutputFormatStatusDetailsMap.key = Shapes::ShapeRef.new(shape: CodeGenerationOutputFormatType)
    CodeGenerationOutputFormatStatusDetailsMap.value = Shapes::ShapeRef.new(shape: CodeGenerationOutputFormatStatusDetails)

    CodeGenerationOutputFormatTypes.member = Shapes::ShapeRef.new(shape: CodeGenerationOutputFormatType)

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: "message"))
    ConflictException.add_member(:code, Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: "code"))
    ConflictException.add_member(:resource_id, Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: "resourceId"))
    ConflictException.add_member(:resource_type, Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: "resourceType"))
    ConflictException.add_member(:errors, Shapes::ShapeRef.new(shape: ConflictExceptionErrors, location_name: "errors"))
    ConflictException.struct_class = Types::ConflictException

    ConflictExceptionErrors.member = Shapes::ShapeRef.new(shape: ErrorDetails)

    Connector.add_member(:connector_id, Shapes::ShapeRef.new(shape: ConnectorID, location_name: "connectorID"))
    Connector.add_member(:name, Shapes::ShapeRef.new(shape: ConnectorName, location_name: "name"))
    Connector.add_member(:ssm_instance_id, Shapes::ShapeRef.new(shape: SsmInstanceID, location_name: "ssmInstanceID"))
    Connector.add_member(:arn, Shapes::ShapeRef.new(shape: ARN, location_name: "arn"))
    Connector.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    Connector.add_member(:ssm_command_config, Shapes::ShapeRef.new(shape: ConnectorSsmCommandConfig, location_name: "ssmCommandConfig"))
    Connector.struct_class = Types::Connector

    ConnectorIDsFilter.member = Shapes::ShapeRef.new(shape: ConnectorID)

    ConnectorSsmCommandConfig.add_member(:s3_output_enabled, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "s3OutputEnabled"))
    ConnectorSsmCommandConfig.add_member(:output_s3_bucket_name, Shapes::ShapeRef.new(shape: S3BucketName, location_name: "outputS3BucketName"))
    ConnectorSsmCommandConfig.add_member(:cloud_watch_output_enabled, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "cloudWatchOutputEnabled"))
    ConnectorSsmCommandConfig.add_member(:cloud_watch_log_group_name, Shapes::ShapeRef.new(shape: CloudWatchLogGroupName, location_name: "cloudWatchLogGroupName"))
    ConnectorSsmCommandConfig.struct_class = Types::ConnectorSsmCommandConfig

    ConnectorsList.member = Shapes::ShapeRef.new(shape: Connector)

    ConstructProperties.key = Shapes::ShapeRef.new(shape: ConstructPropertyKey)
    ConstructProperties.value = Shapes::ShapeRef.new(shape: MarshalledResourceDefinition)

    Cpus.member = Shapes::ShapeRef.new(shape: CPU)

    CreateApplicationRequest.add_member(:name, Shapes::ShapeRef.new(shape: ApplicationName, required: true, location_name: "name"))
    CreateApplicationRequest.add_member(:description, Shapes::ShapeRef.new(shape: ApplicationDescription, location_name: "description"))
    CreateApplicationRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    CreateApplicationRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountID, location_name: "accountID"))
    CreateApplicationRequest.struct_class = Types::CreateApplicationRequest

    CreateConnectorRequest.add_member(:name, Shapes::ShapeRef.new(shape: ConnectorName, required: true, location_name: "name"))
    CreateConnectorRequest.add_member(:ssm_instance_id, Shapes::ShapeRef.new(shape: SsmInstanceID, required: true, location_name: "ssmInstanceID"))
    CreateConnectorRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    CreateConnectorRequest.add_member(:ssm_command_config, Shapes::ShapeRef.new(shape: ConnectorSsmCommandConfig, location_name: "ssmCommandConfig"))
    CreateConnectorRequest.struct_class = Types::CreateConnectorRequest

    CreateLaunchConfigurationTemplateRequest.add_member(:post_launch_actions, Shapes::ShapeRef.new(shape: PostLaunchActions, location_name: "postLaunchActions"))
    CreateLaunchConfigurationTemplateRequest.add_member(:enable_map_auto_tagging, Shapes::ShapeRef.new(shape: Boolean, location_name: "enableMapAutoTagging"))
    CreateLaunchConfigurationTemplateRequest.add_member(:map_auto_tagging_mpe_id, Shapes::ShapeRef.new(shape: TagValue, location_name: "mapAutoTaggingMpeID"))
    CreateLaunchConfigurationTemplateRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    CreateLaunchConfigurationTemplateRequest.add_member(:launch_disposition, Shapes::ShapeRef.new(shape: LaunchDisposition, location_name: "launchDisposition"))
    CreateLaunchConfigurationTemplateRequest.add_member(:target_instance_type_right_sizing_method, Shapes::ShapeRef.new(shape: TargetInstanceTypeRightSizingMethod, location_name: "targetInstanceTypeRightSizingMethod"))
    CreateLaunchConfigurationTemplateRequest.add_member(:copy_private_ip, Shapes::ShapeRef.new(shape: Boolean, location_name: "copyPrivateIp"))
    CreateLaunchConfigurationTemplateRequest.add_member(:associate_public_ip_address, Shapes::ShapeRef.new(shape: Boolean, location_name: "associatePublicIpAddress"))
    CreateLaunchConfigurationTemplateRequest.add_member(:copy_tags, Shapes::ShapeRef.new(shape: Boolean, location_name: "copyTags"))
    CreateLaunchConfigurationTemplateRequest.add_member(:licensing, Shapes::ShapeRef.new(shape: Licensing, location_name: "licensing"))
    CreateLaunchConfigurationTemplateRequest.add_member(:boot_mode, Shapes::ShapeRef.new(shape: BootMode, location_name: "bootMode"))
    CreateLaunchConfigurationTemplateRequest.add_member(:small_volume_max_size, Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "smallVolumeMaxSize"))
    CreateLaunchConfigurationTemplateRequest.add_member(:small_volume_conf, Shapes::ShapeRef.new(shape: LaunchTemplateDiskConf, location_name: "smallVolumeConf"))
    CreateLaunchConfigurationTemplateRequest.add_member(:large_volume_conf, Shapes::ShapeRef.new(shape: LaunchTemplateDiskConf, location_name: "largeVolumeConf"))
    CreateLaunchConfigurationTemplateRequest.add_member(:enable_parameters_encryption, Shapes::ShapeRef.new(shape: Boolean, location_name: "enableParametersEncryption"))
    CreateLaunchConfigurationTemplateRequest.add_member(:parameters_encryption_key, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "parametersEncryptionKey"))
    CreateLaunchConfigurationTemplateRequest.struct_class = Types::CreateLaunchConfigurationTemplateRequest

    CreateNetworkMigrationDefinitionRequest.add_member(:name, Shapes::ShapeRef.new(shape: NetworkMigrationDefinitionName, required: true, location_name: "name"))
    CreateNetworkMigrationDefinitionRequest.add_member(:description, Shapes::ShapeRef.new(shape: NetworkMigrationDefinitionDescription, location_name: "description"))
    CreateNetworkMigrationDefinitionRequest.add_member(:source_configurations, Shapes::ShapeRef.new(shape: SourceConfigurationList, location_name: "sourceConfigurations"))
    CreateNetworkMigrationDefinitionRequest.add_member(:target_s3_configuration, Shapes::ShapeRef.new(shape: TargetS3Configuration, required: true, location_name: "targetS3Configuration"))
    CreateNetworkMigrationDefinitionRequest.add_member(:target_network, Shapes::ShapeRef.new(shape: TargetNetwork, required: true, location_name: "targetNetwork"))
    CreateNetworkMigrationDefinitionRequest.add_member(:target_deployment, Shapes::ShapeRef.new(shape: TargetDeployment, location_name: "targetDeployment"))
    CreateNetworkMigrationDefinitionRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    CreateNetworkMigrationDefinitionRequest.add_member(:scope_tags, Shapes::ShapeRef.new(shape: ScopeTagsMap, location_name: "scopeTags"))
    CreateNetworkMigrationDefinitionRequest.struct_class = Types::CreateNetworkMigrationDefinitionRequest

    CreateReplicationConfigurationTemplateRequest.add_member(:staging_area_subnet_id, Shapes::ShapeRef.new(shape: SubnetID, required: true, location_name: "stagingAreaSubnetId"))
    CreateReplicationConfigurationTemplateRequest.add_member(:associate_default_security_group, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "associateDefaultSecurityGroup"))
    CreateReplicationConfigurationTemplateRequest.add_member(:replication_servers_security_groups_i_ds, Shapes::ShapeRef.new(shape: ReplicationServersSecurityGroupsIDs, required: true, location_name: "replicationServersSecurityGroupsIDs"))
    CreateReplicationConfigurationTemplateRequest.add_member(:replication_server_instance_type, Shapes::ShapeRef.new(shape: EC2InstanceType, required: true, location_name: "replicationServerInstanceType"))
    CreateReplicationConfigurationTemplateRequest.add_member(:use_dedicated_replication_server, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "useDedicatedReplicationServer"))
    CreateReplicationConfigurationTemplateRequest.add_member(:default_large_staging_disk_type, Shapes::ShapeRef.new(shape: ReplicationConfigurationDefaultLargeStagingDiskType, required: true, location_name: "defaultLargeStagingDiskType"))
    CreateReplicationConfigurationTemplateRequest.add_member(:ebs_encryption, Shapes::ShapeRef.new(shape: ReplicationConfigurationEbsEncryption, required: true, location_name: "ebsEncryption"))
    CreateReplicationConfigurationTemplateRequest.add_member(:ebs_encryption_key_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "ebsEncryptionKeyArn"))
    CreateReplicationConfigurationTemplateRequest.add_member(:bandwidth_throttling, Shapes::ShapeRef.new(shape: BandwidthThrottling, required: true, location_name: "bandwidthThrottling"))
    CreateReplicationConfigurationTemplateRequest.add_member(:data_plane_routing, Shapes::ShapeRef.new(shape: ReplicationConfigurationDataPlaneRouting, required: true, location_name: "dataPlaneRouting"))
    CreateReplicationConfigurationTemplateRequest.add_member(:create_public_ip, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "createPublicIP"))
    CreateReplicationConfigurationTemplateRequest.add_member(:staging_area_tags, Shapes::ShapeRef.new(shape: TagsMap, required: true, location_name: "stagingAreaTags"))
    CreateReplicationConfigurationTemplateRequest.add_member(:use_fips_endpoint, Shapes::ShapeRef.new(shape: Boolean, location_name: "useFipsEndpoint"))
    CreateReplicationConfigurationTemplateRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    CreateReplicationConfigurationTemplateRequest.add_member(:internet_protocol, Shapes::ShapeRef.new(shape: InternetProtocol, location_name: "internetProtocol"))
    CreateReplicationConfigurationTemplateRequest.add_member(:store_snapshot_on_local_zone, Shapes::ShapeRef.new(shape: Boolean, location_name: "storeSnapshotOnLocalZone"))
    CreateReplicationConfigurationTemplateRequest.struct_class = Types::CreateReplicationConfigurationTemplateRequest

    CreateWaveRequest.add_member(:name, Shapes::ShapeRef.new(shape: WaveName, required: true, location_name: "name"))
    CreateWaveRequest.add_member(:description, Shapes::ShapeRef.new(shape: WaveDescription, location_name: "description"))
    CreateWaveRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    CreateWaveRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountID, location_name: "accountID"))
    CreateWaveRequest.struct_class = Types::CreateWaveRequest

    DataReplicationError.add_member(:error, Shapes::ShapeRef.new(shape: DataReplicationErrorString, location_name: "error"))
    DataReplicationError.add_member(:raw_error, Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: "rawError"))
    DataReplicationError.struct_class = Types::DataReplicationError

    DataReplicationInfo.add_member(:lag_duration, Shapes::ShapeRef.new(shape: ISO8601DurationString, location_name: "lagDuration"))
    DataReplicationInfo.add_member(:eta_date_time, Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: "etaDateTime"))
    DataReplicationInfo.add_member(:replicated_disks, Shapes::ShapeRef.new(shape: DataReplicationInfoReplicatedDisks, location_name: "replicatedDisks"))
    DataReplicationInfo.add_member(:data_replication_state, Shapes::ShapeRef.new(shape: DataReplicationState, location_name: "dataReplicationState"))
    DataReplicationInfo.add_member(:data_replication_initiation, Shapes::ShapeRef.new(shape: DataReplicationInitiation, location_name: "dataReplicationInitiation"))
    DataReplicationInfo.add_member(:data_replication_error, Shapes::ShapeRef.new(shape: DataReplicationError, location_name: "dataReplicationError"))
    DataReplicationInfo.add_member(:last_snapshot_date_time, Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: "lastSnapshotDateTime"))
    DataReplicationInfo.add_member(:replicator_id, Shapes::ShapeRef.new(shape: ReplicatorID, location_name: "replicatorId"))
    DataReplicationInfo.struct_class = Types::DataReplicationInfo

    DataReplicationInfoReplicatedDisk.add_member(:device_name, Shapes::ShapeRef.new(shape: BoundedString, location_name: "deviceName"))
    DataReplicationInfoReplicatedDisk.add_member(:total_storage_bytes, Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "totalStorageBytes"))
    DataReplicationInfoReplicatedDisk.add_member(:replicated_storage_bytes, Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "replicatedStorageBytes"))
    DataReplicationInfoReplicatedDisk.add_member(:rescanned_storage_bytes, Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "rescannedStorageBytes"))
    DataReplicationInfoReplicatedDisk.add_member(:backlogged_storage_bytes, Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "backloggedStorageBytes"))
    DataReplicationInfoReplicatedDisk.struct_class = Types::DataReplicationInfoReplicatedDisk

    DataReplicationInfoReplicatedDisks.member = Shapes::ShapeRef.new(shape: DataReplicationInfoReplicatedDisk)

    DataReplicationInitiation.add_member(:start_date_time, Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: "startDateTime"))
    DataReplicationInitiation.add_member(:next_attempt_date_time, Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: "nextAttemptDateTime"))
    DataReplicationInitiation.add_member(:steps, Shapes::ShapeRef.new(shape: DataReplicationInitiationSteps, location_name: "steps"))
    DataReplicationInitiation.struct_class = Types::DataReplicationInitiation

    DataReplicationInitiationStep.add_member(:name, Shapes::ShapeRef.new(shape: DataReplicationInitiationStepName, location_name: "name"))
    DataReplicationInitiationStep.add_member(:status, Shapes::ShapeRef.new(shape: DataReplicationInitiationStepStatus, location_name: "status"))
    DataReplicationInitiationStep.struct_class = Types::DataReplicationInitiationStep

    DataReplicationInitiationSteps.member = Shapes::ShapeRef.new(shape: DataReplicationInitiationStep)

    DeleteApplicationRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationID, required: true, location_name: "applicationID"))
    DeleteApplicationRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountID, location_name: "accountID"))
    DeleteApplicationRequest.struct_class = Types::DeleteApplicationRequest

    DeleteApplicationResponse.struct_class = Types::DeleteApplicationResponse

    DeleteConnectorRequest.add_member(:connector_id, Shapes::ShapeRef.new(shape: ConnectorID, required: true, location_name: "connectorID"))
    DeleteConnectorRequest.struct_class = Types::DeleteConnectorRequest

    DeleteJobRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: JobID, required: true, location_name: "jobID"))
    DeleteJobRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountID, location_name: "accountID"))
    DeleteJobRequest.struct_class = Types::DeleteJobRequest

    DeleteJobResponse.struct_class = Types::DeleteJobResponse

    DeleteLaunchConfigurationTemplateRequest.add_member(:launch_configuration_template_id, Shapes::ShapeRef.new(shape: LaunchConfigurationTemplateID, required: true, location_name: "launchConfigurationTemplateID"))
    DeleteLaunchConfigurationTemplateRequest.struct_class = Types::DeleteLaunchConfigurationTemplateRequest

    DeleteLaunchConfigurationTemplateResponse.struct_class = Types::DeleteLaunchConfigurationTemplateResponse

    DeleteNetworkMigrationDefinitionRequest.add_member(:network_migration_definition_id, Shapes::ShapeRef.new(shape: NetworkMigrationDefinitionID, required: true, location_name: "networkMigrationDefinitionID"))
    DeleteNetworkMigrationDefinitionRequest.struct_class = Types::DeleteNetworkMigrationDefinitionRequest

    DeleteNetworkMigrationDefinitionResponse.struct_class = Types::DeleteNetworkMigrationDefinitionResponse

    DeleteOperation.struct_class = Types::DeleteOperation

    DeleteReplicationConfigurationTemplateRequest.add_member(:replication_configuration_template_id, Shapes::ShapeRef.new(shape: ReplicationConfigurationTemplateID, required: true, location_name: "replicationConfigurationTemplateID"))
    DeleteReplicationConfigurationTemplateRequest.struct_class = Types::DeleteReplicationConfigurationTemplateRequest

    DeleteReplicationConfigurationTemplateResponse.struct_class = Types::DeleteReplicationConfigurationTemplateResponse

    DeleteSourceServerRequest.add_member(:source_server_id, Shapes::ShapeRef.new(shape: SourceServerID, required: true, location_name: "sourceServerID"))
    DeleteSourceServerRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountID, location_name: "accountID"))
    DeleteSourceServerRequest.struct_class = Types::DeleteSourceServerRequest

    DeleteSourceServerResponse.struct_class = Types::DeleteSourceServerResponse

    DeleteVcenterClientRequest.add_member(:vcenter_client_id, Shapes::ShapeRef.new(shape: VcenterClientID, required: true, location_name: "vcenterClientID"))
    DeleteVcenterClientRequest.struct_class = Types::DeleteVcenterClientRequest

    DeleteWaveRequest.add_member(:wave_id, Shapes::ShapeRef.new(shape: WaveID, required: true, location_name: "waveID"))
    DeleteWaveRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountID, location_name: "accountID"))
    DeleteWaveRequest.struct_class = Types::DeleteWaveRequest

    DeleteWaveResponse.struct_class = Types::DeleteWaveResponse

    DescribeJobLogItemsRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: JobID, required: true, location_name: "jobID"))
    DescribeJobLogItemsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsType, location_name: "maxResults"))
    DescribeJobLogItemsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    DescribeJobLogItemsRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountID, location_name: "accountID"))
    DescribeJobLogItemsRequest.struct_class = Types::DescribeJobLogItemsRequest

    DescribeJobLogItemsResponse.add_member(:items, Shapes::ShapeRef.new(shape: JobLogs, location_name: "items"))
    DescribeJobLogItemsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    DescribeJobLogItemsResponse.struct_class = Types::DescribeJobLogItemsResponse

    DescribeJobsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: DescribeJobsRequestFilters, location_name: "filters"))
    DescribeJobsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsType, location_name: "maxResults"))
    DescribeJobsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    DescribeJobsRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountID, location_name: "accountID"))
    DescribeJobsRequest.struct_class = Types::DescribeJobsRequest

    DescribeJobsRequestFilters.add_member(:job_i_ds, Shapes::ShapeRef.new(shape: DescribeJobsRequestFiltersJobIDs, location_name: "jobIDs"))
    DescribeJobsRequestFilters.add_member(:from_date, Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: "fromDate"))
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

    DescribeReplicationConfigurationTemplatesRequest.add_member(:replication_configuration_template_i_ds, Shapes::ShapeRef.new(shape: ReplicationConfigurationTemplateIDs, location_name: "replicationConfigurationTemplateIDs"))
    DescribeReplicationConfigurationTemplatesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsType, location_name: "maxResults"))
    DescribeReplicationConfigurationTemplatesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    DescribeReplicationConfigurationTemplatesRequest.struct_class = Types::DescribeReplicationConfigurationTemplatesRequest

    DescribeReplicationConfigurationTemplatesResponse.add_member(:items, Shapes::ShapeRef.new(shape: ReplicationConfigurationTemplates, location_name: "items"))
    DescribeReplicationConfigurationTemplatesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    DescribeReplicationConfigurationTemplatesResponse.struct_class = Types::DescribeReplicationConfigurationTemplatesResponse

    DescribeSourceServersRequest.add_member(:filters, Shapes::ShapeRef.new(shape: DescribeSourceServersRequestFilters, location_name: "filters"))
    DescribeSourceServersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsType, location_name: "maxResults"))
    DescribeSourceServersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    DescribeSourceServersRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountID, location_name: "accountID"))
    DescribeSourceServersRequest.struct_class = Types::DescribeSourceServersRequest

    DescribeSourceServersRequestApplicationIDs.member = Shapes::ShapeRef.new(shape: ApplicationID)

    DescribeSourceServersRequestFilters.add_member(:source_server_i_ds, Shapes::ShapeRef.new(shape: DescribeSourceServersRequestFiltersIDs, location_name: "sourceServerIDs"))
    DescribeSourceServersRequestFilters.add_member(:is_archived, Shapes::ShapeRef.new(shape: Boolean, location_name: "isArchived"))
    DescribeSourceServersRequestFilters.add_member(:replication_types, Shapes::ShapeRef.new(shape: ReplicationTypes, location_name: "replicationTypes"))
    DescribeSourceServersRequestFilters.add_member(:life_cycle_states, Shapes::ShapeRef.new(shape: LifeCycleStates, location_name: "lifeCycleStates"))
    DescribeSourceServersRequestFilters.add_member(:application_i_ds, Shapes::ShapeRef.new(shape: DescribeSourceServersRequestApplicationIDs, location_name: "applicationIDs"))
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

    DisassociateApplicationsRequest.add_member(:wave_id, Shapes::ShapeRef.new(shape: WaveID, required: true, location_name: "waveID"))
    DisassociateApplicationsRequest.add_member(:application_i_ds, Shapes::ShapeRef.new(shape: ApplicationIDs, required: true, location_name: "applicationIDs"))
    DisassociateApplicationsRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountID, location_name: "accountID"))
    DisassociateApplicationsRequest.struct_class = Types::DisassociateApplicationsRequest

    DisassociateApplicationsResponse.struct_class = Types::DisassociateApplicationsResponse

    DisassociateSourceServersRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationID, required: true, location_name: "applicationID"))
    DisassociateSourceServersRequest.add_member(:source_server_i_ds, Shapes::ShapeRef.new(shape: DisassociateSourceServersRequestSourceServerIDs, required: true, location_name: "sourceServerIDs"))
    DisassociateSourceServersRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountID, location_name: "accountID"))
    DisassociateSourceServersRequest.struct_class = Types::DisassociateSourceServersRequest

    DisassociateSourceServersRequestSourceServerIDs.member = Shapes::ShapeRef.new(shape: SourceServerID)

    DisassociateSourceServersResponse.struct_class = Types::DisassociateSourceServersResponse

    DisconnectFromServiceRequest.add_member(:source_server_id, Shapes::ShapeRef.new(shape: SourceServerID, required: true, location_name: "sourceServerID"))
    DisconnectFromServiceRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountID, location_name: "accountID"))
    DisconnectFromServiceRequest.struct_class = Types::DisconnectFromServiceRequest

    Disk.add_member(:device_name, Shapes::ShapeRef.new(shape: BoundedString, location_name: "deviceName"))
    Disk.add_member(:bytes, Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "bytes"))
    Disk.struct_class = Types::Disk

    Disks.member = Shapes::ShapeRef.new(shape: Disk)

    EnrichmentSourceS3Configuration.add_member(:s3_bucket, Shapes::ShapeRef.new(shape: S3BucketName, required: true, location_name: "s3Bucket"))
    EnrichmentSourceS3Configuration.add_member(:s3_bucket_owner, Shapes::ShapeRef.new(shape: AccountID, required: true, location_name: "s3BucketOwner"))
    EnrichmentSourceS3Configuration.add_member(:s3_key, Shapes::ShapeRef.new(shape: S3KeyName, required: true, location_name: "s3Key"))
    EnrichmentSourceS3Configuration.struct_class = Types::EnrichmentSourceS3Configuration

    EnrichmentTargetS3Configuration.add_member(:s3_bucket, Shapes::ShapeRef.new(shape: S3BucketName, required: true, location_name: "s3Bucket"))
    EnrichmentTargetS3Configuration.add_member(:s3_bucket_owner, Shapes::ShapeRef.new(shape: AccountID, required: true, location_name: "s3BucketOwner"))
    EnrichmentTargetS3Configuration.add_member(:s3_key, Shapes::ShapeRef.new(shape: S3KeyName, required: true, location_name: "s3Key"))
    EnrichmentTargetS3Configuration.struct_class = Types::EnrichmentTargetS3Configuration

    ErrorDetails.add_member(:message, Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: "message"))
    ErrorDetails.add_member(:code, Shapes::ShapeRef.new(shape: BoundedString, location_name: "code"))
    ErrorDetails.add_member(:resource_id, Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: "resourceId"))
    ErrorDetails.add_member(:resource_type, Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: "resourceType"))
    ErrorDetails.struct_class = Types::ErrorDetails

    ExportErrorData.add_member(:raw_error, Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: "rawError"))
    ExportErrorData.struct_class = Types::ExportErrorData

    ExportErrors.member = Shapes::ShapeRef.new(shape: ExportTaskError)

    ExportTask.add_member(:export_id, Shapes::ShapeRef.new(shape: ExportID, location_name: "exportID"))
    ExportTask.add_member(:arn, Shapes::ShapeRef.new(shape: ARN, location_name: "arn"))
    ExportTask.add_member(:s3_bucket, Shapes::ShapeRef.new(shape: S3BucketName, location_name: "s3Bucket"))
    ExportTask.add_member(:s3_key, Shapes::ShapeRef.new(shape: S3Key, location_name: "s3Key"))
    ExportTask.add_member(:s3_bucket_owner, Shapes::ShapeRef.new(shape: AccountID, location_name: "s3BucketOwner"))
    ExportTask.add_member(:creation_date_time, Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: "creationDateTime"))
    ExportTask.add_member(:end_date_time, Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: "endDateTime"))
    ExportTask.add_member(:status, Shapes::ShapeRef.new(shape: ExportStatus, location_name: "status"))
    ExportTask.add_member(:progress_percentage, Shapes::ShapeRef.new(shape: Float, location_name: "progressPercentage"))
    ExportTask.add_member(:summary, Shapes::ShapeRef.new(shape: ExportTaskSummary, location_name: "summary"))
    ExportTask.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    ExportTask.struct_class = Types::ExportTask

    ExportTaskError.add_member(:error_date_time, Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: "errorDateTime"))
    ExportTaskError.add_member(:error_data, Shapes::ShapeRef.new(shape: ExportErrorData, location_name: "errorData"))
    ExportTaskError.struct_class = Types::ExportTaskError

    ExportTaskSummary.add_member(:servers_count, Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "serversCount"))
    ExportTaskSummary.add_member(:applications_count, Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "applicationsCount"))
    ExportTaskSummary.add_member(:waves_count, Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "wavesCount"))
    ExportTaskSummary.struct_class = Types::ExportTaskSummary

    ExportsList.member = Shapes::ShapeRef.new(shape: ExportTask)

    FinalizeCutoverRequest.add_member(:source_server_id, Shapes::ShapeRef.new(shape: SourceServerID, required: true, location_name: "sourceServerID"))
    FinalizeCutoverRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountID, location_name: "accountID"))
    FinalizeCutoverRequest.struct_class = Types::FinalizeCutoverRequest

    GetLaunchConfigurationRequest.add_member(:source_server_id, Shapes::ShapeRef.new(shape: SourceServerID, required: true, location_name: "sourceServerID"))
    GetLaunchConfigurationRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountID, location_name: "accountID"))
    GetLaunchConfigurationRequest.struct_class = Types::GetLaunchConfigurationRequest

    GetNetworkMigrationDefinitionRequest.add_member(:network_migration_definition_id, Shapes::ShapeRef.new(shape: NetworkMigrationDefinitionID, required: true, location_name: "networkMigrationDefinitionID"))
    GetNetworkMigrationDefinitionRequest.struct_class = Types::GetNetworkMigrationDefinitionRequest

    GetNetworkMigrationMapperSegmentConstructRequest.add_member(:network_migration_definition_id, Shapes::ShapeRef.new(shape: NetworkMigrationDefinitionID, required: true, location_name: "networkMigrationDefinitionID"))
    GetNetworkMigrationMapperSegmentConstructRequest.add_member(:network_migration_execution_id, Shapes::ShapeRef.new(shape: NetworkMigrationExecutionID, required: true, location_name: "networkMigrationExecutionID"))
    GetNetworkMigrationMapperSegmentConstructRequest.add_member(:segment_id, Shapes::ShapeRef.new(shape: SegmentID, required: true, location_name: "segmentID"))
    GetNetworkMigrationMapperSegmentConstructRequest.add_member(:construct_id, Shapes::ShapeRef.new(shape: ConstructID, required: true, location_name: "constructID"))
    GetNetworkMigrationMapperSegmentConstructRequest.struct_class = Types::GetNetworkMigrationMapperSegmentConstructRequest

    GetNetworkMigrationMapperSegmentConstructResponse.add_member(:construct, Shapes::ShapeRef.new(shape: NetworkMigrationMapperSegmentConstruct, location_name: "construct"))
    GetNetworkMigrationMapperSegmentConstructResponse.struct_class = Types::GetNetworkMigrationMapperSegmentConstructResponse

    GetReplicationConfigurationRequest.add_member(:source_server_id, Shapes::ShapeRef.new(shape: SourceServerID, required: true, location_name: "sourceServerID"))
    GetReplicationConfigurationRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountID, location_name: "accountID"))
    GetReplicationConfigurationRequest.struct_class = Types::GetReplicationConfigurationRequest

    IPsList.member = Shapes::ShapeRef.new(shape: BoundedString)

    IdentificationHints.add_member(:fqdn, Shapes::ShapeRef.new(shape: BoundedString, location_name: "fqdn"))
    IdentificationHints.add_member(:hostname, Shapes::ShapeRef.new(shape: BoundedString, location_name: "hostname"))
    IdentificationHints.add_member(:vm_ware_uuid, Shapes::ShapeRef.new(shape: BoundedString, location_name: "vmWareUuid"))
    IdentificationHints.add_member(:aws_instance_id, Shapes::ShapeRef.new(shape: EC2InstanceID, location_name: "awsInstanceID"))
    IdentificationHints.add_member(:vm_path, Shapes::ShapeRef.new(shape: BoundedString, location_name: "vmPath"))
    IdentificationHints.struct_class = Types::IdentificationHints

    ImportErrorData.add_member(:source_server_id, Shapes::ShapeRef.new(shape: SourceServerID, location_name: "sourceServerID"))
    ImportErrorData.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationID, location_name: "applicationID"))
    ImportErrorData.add_member(:wave_id, Shapes::ShapeRef.new(shape: WaveID, location_name: "waveID"))
    ImportErrorData.add_member(:ec2_launch_template_id, Shapes::ShapeRef.new(shape: BoundedString, location_name: "ec2LaunchTemplateID"))
    ImportErrorData.add_member(:row_number, Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "rowNumber"))
    ImportErrorData.add_member(:raw_error, Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: "rawError"))
    ImportErrorData.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountID, location_name: "accountID"))
    ImportErrorData.struct_class = Types::ImportErrorData

    ImportErrors.member = Shapes::ShapeRef.new(shape: ImportTaskError)

    ImportFileEnrichment.add_member(:job_id, Shapes::ShapeRef.new(shape: ImportFileEnrichmentJobID, location_name: "jobID"))
    ImportFileEnrichment.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    ImportFileEnrichment.add_member(:ended_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "endedAt"))
    ImportFileEnrichment.add_member(:status, Shapes::ShapeRef.new(shape: ImportFileEnrichmentStatus, location_name: "status"))
    ImportFileEnrichment.add_member(:status_details, Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: "statusDetails"))
    ImportFileEnrichment.add_member(:checksum, Shapes::ShapeRef.new(shape: Checksum, location_name: "checksum"))
    ImportFileEnrichment.add_member(:s3_bucket_target, Shapes::ShapeRef.new(shape: EnrichmentTargetS3Configuration, location_name: "s3BucketTarget"))
    ImportFileEnrichment.struct_class = Types::ImportFileEnrichment

    ImportFileEnrichmentsIDsFilter.member = Shapes::ShapeRef.new(shape: ImportFileEnrichmentJobID)

    ImportFileEnrichmentsList.member = Shapes::ShapeRef.new(shape: ImportFileEnrichment)

    ImportIDsFilter.member = Shapes::ShapeRef.new(shape: ImportID)

    ImportList.member = Shapes::ShapeRef.new(shape: ImportTask)

    ImportTask.add_member(:import_id, Shapes::ShapeRef.new(shape: ImportID, location_name: "importID"))
    ImportTask.add_member(:arn, Shapes::ShapeRef.new(shape: ARN, location_name: "arn"))
    ImportTask.add_member(:s3_bucket_source, Shapes::ShapeRef.new(shape: S3BucketSource, location_name: "s3BucketSource"))
    ImportTask.add_member(:creation_date_time, Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: "creationDateTime"))
    ImportTask.add_member(:end_date_time, Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: "endDateTime"))
    ImportTask.add_member(:status, Shapes::ShapeRef.new(shape: ImportStatus, location_name: "status"))
    ImportTask.add_member(:progress_percentage, Shapes::ShapeRef.new(shape: Float, location_name: "progressPercentage"))
    ImportTask.add_member(:summary, Shapes::ShapeRef.new(shape: ImportTaskSummary, location_name: "summary"))
    ImportTask.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    ImportTask.struct_class = Types::ImportTask

    ImportTaskError.add_member(:error_date_time, Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: "errorDateTime"))
    ImportTaskError.add_member(:error_type, Shapes::ShapeRef.new(shape: ImportErrorType, location_name: "errorType"))
    ImportTaskError.add_member(:error_data, Shapes::ShapeRef.new(shape: ImportErrorData, location_name: "errorData"))
    ImportTaskError.struct_class = Types::ImportTaskError

    ImportTaskSummary.add_member(:waves, Shapes::ShapeRef.new(shape: ImportTaskSummaryWaves, location_name: "waves"))
    ImportTaskSummary.add_member(:applications, Shapes::ShapeRef.new(shape: ImportTaskSummaryApplications, location_name: "applications"))
    ImportTaskSummary.add_member(:servers, Shapes::ShapeRef.new(shape: ImportTaskSummaryServers, location_name: "servers"))
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

    Job.add_member(:job_id, Shapes::ShapeRef.new(shape: JobID, required: true, location_name: "jobID"))
    Job.add_member(:arn, Shapes::ShapeRef.new(shape: ARN, location_name: "arn"))
    Job.add_member(:type, Shapes::ShapeRef.new(shape: JobType, location_name: "type"))
    Job.add_member(:initiated_by, Shapes::ShapeRef.new(shape: InitiatedBy, location_name: "initiatedBy"))
    Job.add_member(:creation_date_time, Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: "creationDateTime"))
    Job.add_member(:end_date_time, Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: "endDateTime"))
    Job.add_member(:status, Shapes::ShapeRef.new(shape: JobStatus, location_name: "status"))
    Job.add_member(:participating_servers, Shapes::ShapeRef.new(shape: ParticipatingServers, location_name: "participatingServers"))
    Job.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    Job.struct_class = Types::Job

    JobLog.add_member(:log_date_time, Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: "logDateTime"))
    JobLog.add_member(:event, Shapes::ShapeRef.new(shape: JobLogEvent, location_name: "event"))
    JobLog.add_member(:event_data, Shapes::ShapeRef.new(shape: JobLogEventData, location_name: "eventData"))
    JobLog.struct_class = Types::JobLog

    JobLogEventData.add_member(:source_server_id, Shapes::ShapeRef.new(shape: SourceServerID, location_name: "sourceServerID"))
    JobLogEventData.add_member(:conversion_server_id, Shapes::ShapeRef.new(shape: EC2InstanceID, location_name: "conversionServerID"))
    JobLogEventData.add_member(:target_instance_id, Shapes::ShapeRef.new(shape: EC2InstanceID, location_name: "targetInstanceID"))
    JobLogEventData.add_member(:raw_error, Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: "rawError"))
    JobLogEventData.add_member(:attempt_count, Shapes::ShapeRef.new(shape: StrictlyPositiveInteger, location_name: "attemptCount"))
    JobLogEventData.add_member(:max_attempts_count, Shapes::ShapeRef.new(shape: StrictlyPositiveInteger, location_name: "maxAttemptsCount"))
    JobLogEventData.struct_class = Types::JobLogEventData

    JobLogs.member = Shapes::ShapeRef.new(shape: JobLog)

    JobPostLaunchActionsLaunchStatus.add_member(:ssm_document, Shapes::ShapeRef.new(shape: SsmDocument, location_name: "ssmDocument"))
    JobPostLaunchActionsLaunchStatus.add_member(:ssm_document_type, Shapes::ShapeRef.new(shape: SsmDocumentType, location_name: "ssmDocumentType"))
    JobPostLaunchActionsLaunchStatus.add_member(:execution_id, Shapes::ShapeRef.new(shape: BoundedString, location_name: "executionID"))
    JobPostLaunchActionsLaunchStatus.add_member(:execution_status, Shapes::ShapeRef.new(shape: PostLaunchActionExecutionStatus, location_name: "executionStatus"))
    JobPostLaunchActionsLaunchStatus.add_member(:failure_reason, Shapes::ShapeRef.new(shape: BoundedString, location_name: "failureReason"))
    JobPostLaunchActionsLaunchStatus.struct_class = Types::JobPostLaunchActionsLaunchStatus

    JobsList.member = Shapes::ShapeRef.new(shape: Job)

    LaunchConfiguration.add_member(:source_server_id, Shapes::ShapeRef.new(shape: SourceServerID, location_name: "sourceServerID"))
    LaunchConfiguration.add_member(:name, Shapes::ShapeRef.new(shape: SmallBoundedString, location_name: "name"))
    LaunchConfiguration.add_member(:ec2_launch_template_id, Shapes::ShapeRef.new(shape: BoundedString, location_name: "ec2LaunchTemplateID"))
    LaunchConfiguration.add_member(:launch_disposition, Shapes::ShapeRef.new(shape: LaunchDisposition, location_name: "launchDisposition"))
    LaunchConfiguration.add_member(:target_instance_type_right_sizing_method, Shapes::ShapeRef.new(shape: TargetInstanceTypeRightSizingMethod, location_name: "targetInstanceTypeRightSizingMethod"))
    LaunchConfiguration.add_member(:copy_private_ip, Shapes::ShapeRef.new(shape: Boolean, location_name: "copyPrivateIp"))
    LaunchConfiguration.add_member(:copy_tags, Shapes::ShapeRef.new(shape: Boolean, location_name: "copyTags"))
    LaunchConfiguration.add_member(:licensing, Shapes::ShapeRef.new(shape: Licensing, location_name: "licensing"))
    LaunchConfiguration.add_member(:boot_mode, Shapes::ShapeRef.new(shape: BootMode, location_name: "bootMode"))
    LaunchConfiguration.add_member(:post_launch_actions, Shapes::ShapeRef.new(shape: PostLaunchActions, location_name: "postLaunchActions"))
    LaunchConfiguration.add_member(:enable_map_auto_tagging, Shapes::ShapeRef.new(shape: Boolean, location_name: "enableMapAutoTagging"))
    LaunchConfiguration.add_member(:map_auto_tagging_mpe_id, Shapes::ShapeRef.new(shape: TagValue, location_name: "mapAutoTaggingMpeID"))
    LaunchConfiguration.struct_class = Types::LaunchConfiguration

    LaunchConfigurationTemplate.add_member(:launch_configuration_template_id, Shapes::ShapeRef.new(shape: LaunchConfigurationTemplateID, required: true, location_name: "launchConfigurationTemplateID"))
    LaunchConfigurationTemplate.add_member(:arn, Shapes::ShapeRef.new(shape: ARN, location_name: "arn"))
    LaunchConfigurationTemplate.add_member(:post_launch_actions, Shapes::ShapeRef.new(shape: PostLaunchActions, location_name: "postLaunchActions"))
    LaunchConfigurationTemplate.add_member(:enable_map_auto_tagging, Shapes::ShapeRef.new(shape: Boolean, location_name: "enableMapAutoTagging"))
    LaunchConfigurationTemplate.add_member(:map_auto_tagging_mpe_id, Shapes::ShapeRef.new(shape: TagValue, location_name: "mapAutoTaggingMpeID"))
    LaunchConfigurationTemplate.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    LaunchConfigurationTemplate.add_member(:ec2_launch_template_id, Shapes::ShapeRef.new(shape: EC2LaunchConfigurationTemplateID, location_name: "ec2LaunchTemplateID"))
    LaunchConfigurationTemplate.add_member(:launch_disposition, Shapes::ShapeRef.new(shape: LaunchDisposition, location_name: "launchDisposition"))
    LaunchConfigurationTemplate.add_member(:target_instance_type_right_sizing_method, Shapes::ShapeRef.new(shape: TargetInstanceTypeRightSizingMethod, location_name: "targetInstanceTypeRightSizingMethod"))
    LaunchConfigurationTemplate.add_member(:copy_private_ip, Shapes::ShapeRef.new(shape: Boolean, location_name: "copyPrivateIp"))
    LaunchConfigurationTemplate.add_member(:associate_public_ip_address, Shapes::ShapeRef.new(shape: Boolean, location_name: "associatePublicIpAddress"))
    LaunchConfigurationTemplate.add_member(:copy_tags, Shapes::ShapeRef.new(shape: Boolean, location_name: "copyTags"))
    LaunchConfigurationTemplate.add_member(:licensing, Shapes::ShapeRef.new(shape: Licensing, location_name: "licensing"))
    LaunchConfigurationTemplate.add_member(:boot_mode, Shapes::ShapeRef.new(shape: BootMode, location_name: "bootMode"))
    LaunchConfigurationTemplate.add_member(:small_volume_max_size, Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "smallVolumeMaxSize"))
    LaunchConfigurationTemplate.add_member(:small_volume_conf, Shapes::ShapeRef.new(shape: LaunchTemplateDiskConf, location_name: "smallVolumeConf"))
    LaunchConfigurationTemplate.add_member(:large_volume_conf, Shapes::ShapeRef.new(shape: LaunchTemplateDiskConf, location_name: "largeVolumeConf"))
    LaunchConfigurationTemplate.add_member(:enable_parameters_encryption, Shapes::ShapeRef.new(shape: Boolean, location_name: "enableParametersEncryption"))
    LaunchConfigurationTemplate.add_member(:parameters_encryption_key, Shapes::ShapeRef.new(shape: ARN, location_name: "parametersEncryptionKey"))
    LaunchConfigurationTemplate.struct_class = Types::LaunchConfigurationTemplate

    LaunchConfigurationTemplateIDs.member = Shapes::ShapeRef.new(shape: LaunchConfigurationTemplateID)

    LaunchConfigurationTemplates.member = Shapes::ShapeRef.new(shape: LaunchConfigurationTemplate)

    LaunchTemplateDiskConf.add_member(:volume_type, Shapes::ShapeRef.new(shape: VolumeType, location_name: "volumeType"))
    LaunchTemplateDiskConf.add_member(:iops, Shapes::ShapeRef.new(shape: Iops, location_name: "iops"))
    LaunchTemplateDiskConf.add_member(:throughput, Shapes::ShapeRef.new(shape: Throughput, location_name: "throughput"))
    LaunchTemplateDiskConf.struct_class = Types::LaunchTemplateDiskConf

    LaunchedInstance.add_member(:ec2_instance_id, Shapes::ShapeRef.new(shape: EC2InstanceID, location_name: "ec2InstanceID"))
    LaunchedInstance.add_member(:job_id, Shapes::ShapeRef.new(shape: JobID, location_name: "jobID"))
    LaunchedInstance.add_member(:first_boot, Shapes::ShapeRef.new(shape: FirstBoot, location_name: "firstBoot"))
    LaunchedInstance.struct_class = Types::LaunchedInstance

    Licensing.add_member(:os_byol, Shapes::ShapeRef.new(shape: Boolean, location_name: "osByol"))
    Licensing.struct_class = Types::Licensing

    LifeCycle.add_member(:added_to_service_date_time, Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: "addedToServiceDateTime"))
    LifeCycle.add_member(:first_byte_date_time, Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: "firstByteDateTime"))
    LifeCycle.add_member(:elapsed_replication_duration, Shapes::ShapeRef.new(shape: ISO8601DurationString, location_name: "elapsedReplicationDuration"))
    LifeCycle.add_member(:last_seen_by_service_date_time, Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: "lastSeenByServiceDateTime"))
    LifeCycle.add_member(:last_test, Shapes::ShapeRef.new(shape: LifeCycleLastTest, location_name: "lastTest"))
    LifeCycle.add_member(:last_cutover, Shapes::ShapeRef.new(shape: LifeCycleLastCutover, location_name: "lastCutover"))
    LifeCycle.add_member(:state, Shapes::ShapeRef.new(shape: LifeCycleState, location_name: "state"))
    LifeCycle.struct_class = Types::LifeCycle

    LifeCycleLastCutover.add_member(:initiated, Shapes::ShapeRef.new(shape: LifeCycleLastCutoverInitiated, location_name: "initiated"))
    LifeCycleLastCutover.add_member(:reverted, Shapes::ShapeRef.new(shape: LifeCycleLastCutoverReverted, location_name: "reverted"))
    LifeCycleLastCutover.add_member(:finalized, Shapes::ShapeRef.new(shape: LifeCycleLastCutoverFinalized, location_name: "finalized"))
    LifeCycleLastCutover.struct_class = Types::LifeCycleLastCutover

    LifeCycleLastCutoverFinalized.add_member(:api_call_date_time, Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: "apiCallDateTime"))
    LifeCycleLastCutoverFinalized.struct_class = Types::LifeCycleLastCutoverFinalized

    LifeCycleLastCutoverInitiated.add_member(:api_call_date_time, Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: "apiCallDateTime"))
    LifeCycleLastCutoverInitiated.add_member(:job_id, Shapes::ShapeRef.new(shape: JobID, location_name: "jobID"))
    LifeCycleLastCutoverInitiated.struct_class = Types::LifeCycleLastCutoverInitiated

    LifeCycleLastCutoverReverted.add_member(:api_call_date_time, Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: "apiCallDateTime"))
    LifeCycleLastCutoverReverted.struct_class = Types::LifeCycleLastCutoverReverted

    LifeCycleLastTest.add_member(:initiated, Shapes::ShapeRef.new(shape: LifeCycleLastTestInitiated, location_name: "initiated"))
    LifeCycleLastTest.add_member(:reverted, Shapes::ShapeRef.new(shape: LifeCycleLastTestReverted, location_name: "reverted"))
    LifeCycleLastTest.add_member(:finalized, Shapes::ShapeRef.new(shape: LifeCycleLastTestFinalized, location_name: "finalized"))
    LifeCycleLastTest.struct_class = Types::LifeCycleLastTest

    LifeCycleLastTestFinalized.add_member(:api_call_date_time, Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: "apiCallDateTime"))
    LifeCycleLastTestFinalized.struct_class = Types::LifeCycleLastTestFinalized

    LifeCycleLastTestInitiated.add_member(:api_call_date_time, Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: "apiCallDateTime"))
    LifeCycleLastTestInitiated.add_member(:job_id, Shapes::ShapeRef.new(shape: JobID, location_name: "jobID"))
    LifeCycleLastTestInitiated.struct_class = Types::LifeCycleLastTestInitiated

    LifeCycleLastTestReverted.add_member(:api_call_date_time, Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: "apiCallDateTime"))
    LifeCycleLastTestReverted.struct_class = Types::LifeCycleLastTestReverted

    LifeCycleStates.member = Shapes::ShapeRef.new(shape: LifeCycleState)

    ListApplicationsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: ListApplicationsRequestFilters, location_name: "filters"))
    ListApplicationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsType, location_name: "maxResults"))
    ListApplicationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListApplicationsRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountID, location_name: "accountID"))
    ListApplicationsRequest.struct_class = Types::ListApplicationsRequest

    ListApplicationsRequestFilters.add_member(:application_i_ds, Shapes::ShapeRef.new(shape: ApplicationIDsFilter, location_name: "applicationIDs"))
    ListApplicationsRequestFilters.add_member(:is_archived, Shapes::ShapeRef.new(shape: Boolean, location_name: "isArchived"))
    ListApplicationsRequestFilters.add_member(:wave_i_ds, Shapes::ShapeRef.new(shape: WaveIDsFilter, location_name: "waveIDs"))
    ListApplicationsRequestFilters.struct_class = Types::ListApplicationsRequestFilters

    ListApplicationsResponse.add_member(:items, Shapes::ShapeRef.new(shape: ApplicationsList, location_name: "items"))
    ListApplicationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListApplicationsResponse.struct_class = Types::ListApplicationsResponse

    ListConnectorsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: ListConnectorsRequestFilters, location_name: "filters"))
    ListConnectorsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsType, location_name: "maxResults"))
    ListConnectorsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListConnectorsRequest.struct_class = Types::ListConnectorsRequest

    ListConnectorsRequestFilters.add_member(:connector_i_ds, Shapes::ShapeRef.new(shape: ConnectorIDsFilter, location_name: "connectorIDs"))
    ListConnectorsRequestFilters.struct_class = Types::ListConnectorsRequestFilters

    ListConnectorsResponse.add_member(:items, Shapes::ShapeRef.new(shape: ConnectorsList, location_name: "items"))
    ListConnectorsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListConnectorsResponse.struct_class = Types::ListConnectorsResponse

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

    ListImportFileEnrichmentsFilters.add_member(:job_i_ds, Shapes::ShapeRef.new(shape: ImportFileEnrichmentsIDsFilter, location_name: "jobIDs"))
    ListImportFileEnrichmentsFilters.struct_class = Types::ListImportFileEnrichmentsFilters

    ListImportFileEnrichmentsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: ListImportFileEnrichmentsFilters, location_name: "filters"))
    ListImportFileEnrichmentsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsType, location_name: "maxResults"))
    ListImportFileEnrichmentsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListImportFileEnrichmentsRequest.struct_class = Types::ListImportFileEnrichmentsRequest

    ListImportFileEnrichmentsResponse.add_member(:items, Shapes::ShapeRef.new(shape: ImportFileEnrichmentsList, location_name: "items"))
    ListImportFileEnrichmentsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListImportFileEnrichmentsResponse.struct_class = Types::ListImportFileEnrichmentsResponse

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

    ListNetworkMigrationAnalysesFilters.add_member(:job_i_ds, Shapes::ShapeRef.new(shape: ListNetworkMigrationAnalysesIDsFilter, location_name: "jobIDs"))
    ListNetworkMigrationAnalysesFilters.struct_class = Types::ListNetworkMigrationAnalysesFilters

    ListNetworkMigrationAnalysesIDsFilter.member = Shapes::ShapeRef.new(shape: NetworkMigrationJobID)

    ListNetworkMigrationAnalysesRequest.add_member(:network_migration_execution_id, Shapes::ShapeRef.new(shape: NetworkMigrationExecutionID, required: true, location_name: "networkMigrationExecutionID"))
    ListNetworkMigrationAnalysesRequest.add_member(:network_migration_definition_id, Shapes::ShapeRef.new(shape: NetworkMigrationDefinitionID, required: true, location_name: "networkMigrationDefinitionID"))
    ListNetworkMigrationAnalysesRequest.add_member(:filters, Shapes::ShapeRef.new(shape: ListNetworkMigrationAnalysesFilters, location_name: "filters"))
    ListNetworkMigrationAnalysesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsType, location_name: "maxResults"))
    ListNetworkMigrationAnalysesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListNetworkMigrationAnalysesRequest.struct_class = Types::ListNetworkMigrationAnalysesRequest

    ListNetworkMigrationAnalysesResponse.add_member(:items, Shapes::ShapeRef.new(shape: NetworkMigrationAnalysesList, location_name: "items"))
    ListNetworkMigrationAnalysesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListNetworkMigrationAnalysesResponse.struct_class = Types::ListNetworkMigrationAnalysesResponse

    ListNetworkMigrationAnalysisResultsFilters.add_member(:vpc_i_ds, Shapes::ShapeRef.new(shape: VpcIDsFilter, location_name: "vpcIDs"))
    ListNetworkMigrationAnalysisResultsFilters.struct_class = Types::ListNetworkMigrationAnalysisResultsFilters

    ListNetworkMigrationAnalysisResultsRequest.add_member(:network_migration_execution_id, Shapes::ShapeRef.new(shape: NetworkMigrationExecutionID, required: true, location_name: "networkMigrationExecutionID"))
    ListNetworkMigrationAnalysisResultsRequest.add_member(:network_migration_definition_id, Shapes::ShapeRef.new(shape: NetworkMigrationDefinitionID, required: true, location_name: "networkMigrationDefinitionID"))
    ListNetworkMigrationAnalysisResultsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: ListNetworkMigrationAnalysisResultsFilters, location_name: "filters"))
    ListNetworkMigrationAnalysisResultsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsType, location_name: "maxResults"))
    ListNetworkMigrationAnalysisResultsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListNetworkMigrationAnalysisResultsRequest.struct_class = Types::ListNetworkMigrationAnalysisResultsRequest

    ListNetworkMigrationAnalysisResultsResponse.add_member(:items, Shapes::ShapeRef.new(shape: NetworkMigrationAnalysisResultsList, location_name: "items"))
    ListNetworkMigrationAnalysisResultsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListNetworkMigrationAnalysisResultsResponse.struct_class = Types::ListNetworkMigrationAnalysisResultsResponse

    ListNetworkMigrationCodeGenerationSegmentsFilters.add_member(:segment_i_ds, Shapes::ShapeRef.new(shape: ListNetworkMigrationCodeGenerationSegmentsIDsFilter, location_name: "segmentIDs"))
    ListNetworkMigrationCodeGenerationSegmentsFilters.struct_class = Types::ListNetworkMigrationCodeGenerationSegmentsFilters

    ListNetworkMigrationCodeGenerationSegmentsIDsFilter.member = Shapes::ShapeRef.new(shape: SegmentID)

    ListNetworkMigrationCodeGenerationSegmentsRequest.add_member(:network_migration_execution_id, Shapes::ShapeRef.new(shape: NetworkMigrationExecutionID, required: true, location_name: "networkMigrationExecutionID"))
    ListNetworkMigrationCodeGenerationSegmentsRequest.add_member(:network_migration_definition_id, Shapes::ShapeRef.new(shape: NetworkMigrationDefinitionID, required: true, location_name: "networkMigrationDefinitionID"))
    ListNetworkMigrationCodeGenerationSegmentsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: ListNetworkMigrationCodeGenerationSegmentsFilters, location_name: "filters"))
    ListNetworkMigrationCodeGenerationSegmentsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsType, location_name: "maxResults"))
    ListNetworkMigrationCodeGenerationSegmentsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListNetworkMigrationCodeGenerationSegmentsRequest.struct_class = Types::ListNetworkMigrationCodeGenerationSegmentsRequest

    ListNetworkMigrationCodeGenerationSegmentsResponse.add_member(:items, Shapes::ShapeRef.new(shape: NetworkMigrationCodeGenerationSegmentsList, location_name: "items"))
    ListNetworkMigrationCodeGenerationSegmentsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListNetworkMigrationCodeGenerationSegmentsResponse.struct_class = Types::ListNetworkMigrationCodeGenerationSegmentsResponse

    ListNetworkMigrationCodeGenerationsFilters.add_member(:job_i_ds, Shapes::ShapeRef.new(shape: ListNetworkMigrationCodeGenerationsIDsFilter, location_name: "jobIDs"))
    ListNetworkMigrationCodeGenerationsFilters.struct_class = Types::ListNetworkMigrationCodeGenerationsFilters

    ListNetworkMigrationCodeGenerationsIDsFilter.member = Shapes::ShapeRef.new(shape: NetworkMigrationJobID)

    ListNetworkMigrationCodeGenerationsRequest.add_member(:network_migration_execution_id, Shapes::ShapeRef.new(shape: NetworkMigrationExecutionID, required: true, location_name: "networkMigrationExecutionID"))
    ListNetworkMigrationCodeGenerationsRequest.add_member(:network_migration_definition_id, Shapes::ShapeRef.new(shape: NetworkMigrationDefinitionID, required: true, location_name: "networkMigrationDefinitionID"))
    ListNetworkMigrationCodeGenerationsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: ListNetworkMigrationCodeGenerationsFilters, location_name: "filters"))
    ListNetworkMigrationCodeGenerationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsType, location_name: "maxResults"))
    ListNetworkMigrationCodeGenerationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListNetworkMigrationCodeGenerationsRequest.struct_class = Types::ListNetworkMigrationCodeGenerationsRequest

    ListNetworkMigrationCodeGenerationsResponse.add_member(:items, Shapes::ShapeRef.new(shape: NetworkMigrationCodeGenerationsList, location_name: "items"))
    ListNetworkMigrationCodeGenerationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListNetworkMigrationCodeGenerationsResponse.struct_class = Types::ListNetworkMigrationCodeGenerationsResponse

    ListNetworkMigrationDefinitionsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: ListNetworkMigrationDefinitionsRequestFilters, location_name: "filters"))
    ListNetworkMigrationDefinitionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListNetworkMigrationDefinitionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsType, location_name: "maxResults"))
    ListNetworkMigrationDefinitionsRequest.struct_class = Types::ListNetworkMigrationDefinitionsRequest

    ListNetworkMigrationDefinitionsRequestFilters.add_member(:network_migration_definition_i_ds, Shapes::ShapeRef.new(shape: NetworkMigrationDefintionsIDsFilter, location_name: "networkMigrationDefinitionIDs"))
    ListNetworkMigrationDefinitionsRequestFilters.struct_class = Types::ListNetworkMigrationDefinitionsRequestFilters

    ListNetworkMigrationDefinitionsResponse.add_member(:items, Shapes::ShapeRef.new(shape: NetworkMigrationDefinitionSummariesList, location_name: "items"))
    ListNetworkMigrationDefinitionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListNetworkMigrationDefinitionsResponse.struct_class = Types::ListNetworkMigrationDefinitionsResponse

    ListNetworkMigrationDeployedStacksRequest.add_member(:network_migration_execution_id, Shapes::ShapeRef.new(shape: NetworkMigrationExecutionID, required: true, location_name: "networkMigrationExecutionID"))
    ListNetworkMigrationDeployedStacksRequest.add_member(:network_migration_definition_id, Shapes::ShapeRef.new(shape: NetworkMigrationDefinitionID, required: true, location_name: "networkMigrationDefinitionID"))
    ListNetworkMigrationDeployedStacksRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsType, location_name: "maxResults"))
    ListNetworkMigrationDeployedStacksRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListNetworkMigrationDeployedStacksRequest.struct_class = Types::ListNetworkMigrationDeployedStacksRequest

    ListNetworkMigrationDeployedStacksResponse.add_member(:items, Shapes::ShapeRef.new(shape: NetworkMigrationDeployedStacksList, location_name: "items"))
    ListNetworkMigrationDeployedStacksResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListNetworkMigrationDeployedStacksResponse.struct_class = Types::ListNetworkMigrationDeployedStacksResponse

    ListNetworkMigrationDeployerJobFilters.add_member(:job_i_ds, Shapes::ShapeRef.new(shape: ListNetworkMigrationDeployerJobIDsFilters, location_name: "jobIDs"))
    ListNetworkMigrationDeployerJobFilters.struct_class = Types::ListNetworkMigrationDeployerJobFilters

    ListNetworkMigrationDeployerJobIDsFilters.member = Shapes::ShapeRef.new(shape: NetworkMigrationJobID)

    ListNetworkMigrationDeployerJobResponse.add_member(:items, Shapes::ShapeRef.new(shape: NetworkMigrationDeployerJobList, location_name: "items"))
    ListNetworkMigrationDeployerJobResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListNetworkMigrationDeployerJobResponse.struct_class = Types::ListNetworkMigrationDeployerJobResponse

    ListNetworkMigrationDeploymentsRequest.add_member(:network_migration_execution_id, Shapes::ShapeRef.new(shape: NetworkMigrationExecutionID, required: true, location_name: "networkMigrationExecutionID"))
    ListNetworkMigrationDeploymentsRequest.add_member(:network_migration_definition_id, Shapes::ShapeRef.new(shape: NetworkMigrationDefinitionID, required: true, location_name: "networkMigrationDefinitionID"))
    ListNetworkMigrationDeploymentsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: ListNetworkMigrationDeployerJobFilters, location_name: "filters"))
    ListNetworkMigrationDeploymentsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsType, location_name: "maxResults"))
    ListNetworkMigrationDeploymentsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListNetworkMigrationDeploymentsRequest.struct_class = Types::ListNetworkMigrationDeploymentsRequest

    ListNetworkMigrationExecutionRequestFilters.add_member(:network_migration_execution_i_ds, Shapes::ShapeRef.new(shape: NetworkMigrationExecutionIDsFilter, location_name: "networkMigrationExecutionIDs"))
    ListNetworkMigrationExecutionRequestFilters.add_member(:network_migration_execution_statuses, Shapes::ShapeRef.new(shape: NetworkMigrationExecutionStatusesFilter, location_name: "networkMigrationExecutionStatuses"))
    ListNetworkMigrationExecutionRequestFilters.struct_class = Types::ListNetworkMigrationExecutionRequestFilters

    ListNetworkMigrationExecutionsRequest.add_member(:network_migration_definition_id, Shapes::ShapeRef.new(shape: NetworkMigrationDefinitionID, required: true, location_name: "networkMigrationDefinitionID"))
    ListNetworkMigrationExecutionsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: ListNetworkMigrationExecutionRequestFilters, location_name: "filters"))
    ListNetworkMigrationExecutionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListNetworkMigrationExecutionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsType, location_name: "maxResults"))
    ListNetworkMigrationExecutionsRequest.struct_class = Types::ListNetworkMigrationExecutionsRequest

    ListNetworkMigrationExecutionsResponse.add_member(:items, Shapes::ShapeRef.new(shape: NetworkMigrationExecutionsList, location_name: "items"))
    ListNetworkMigrationExecutionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListNetworkMigrationExecutionsResponse.struct_class = Types::ListNetworkMigrationExecutionsResponse

    ListNetworkMigrationMapperSegmentConstructTypesFilter.member = Shapes::ShapeRef.new(shape: NetworkMigrationMapperSegmentConstructType)

    ListNetworkMigrationMapperSegmentConstructsFilters.add_member(:construct_i_ds, Shapes::ShapeRef.new(shape: ListNetworkMigrationMapperSegmentConstructsIDsFilter, location_name: "constructIDs"))
    ListNetworkMigrationMapperSegmentConstructsFilters.add_member(:construct_types, Shapes::ShapeRef.new(shape: ListNetworkMigrationMapperSegmentConstructTypesFilter, location_name: "constructTypes"))
    ListNetworkMigrationMapperSegmentConstructsFilters.struct_class = Types::ListNetworkMigrationMapperSegmentConstructsFilters

    ListNetworkMigrationMapperSegmentConstructsIDsFilter.member = Shapes::ShapeRef.new(shape: ConstructID)

    ListNetworkMigrationMapperSegmentConstructsRequest.add_member(:network_migration_execution_id, Shapes::ShapeRef.new(shape: NetworkMigrationExecutionID, required: true, location_name: "networkMigrationExecutionID"))
    ListNetworkMigrationMapperSegmentConstructsRequest.add_member(:network_migration_definition_id, Shapes::ShapeRef.new(shape: NetworkMigrationDefinitionID, required: true, location_name: "networkMigrationDefinitionID"))
    ListNetworkMigrationMapperSegmentConstructsRequest.add_member(:segment_id, Shapes::ShapeRef.new(shape: SegmentID, required: true, location_name: "segmentID"))
    ListNetworkMigrationMapperSegmentConstructsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: ListNetworkMigrationMapperSegmentConstructsFilters, location_name: "filters"))
    ListNetworkMigrationMapperSegmentConstructsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsType, location_name: "maxResults"))
    ListNetworkMigrationMapperSegmentConstructsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListNetworkMigrationMapperSegmentConstructsRequest.struct_class = Types::ListNetworkMigrationMapperSegmentConstructsRequest

    ListNetworkMigrationMapperSegmentConstructsResponse.add_member(:items, Shapes::ShapeRef.new(shape: NetworkMigrationMapperSegmentConstructs, location_name: "items"))
    ListNetworkMigrationMapperSegmentConstructsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListNetworkMigrationMapperSegmentConstructsResponse.struct_class = Types::ListNetworkMigrationMapperSegmentConstructsResponse

    ListNetworkMigrationMapperSegmentsFilters.add_member(:segment_i_ds, Shapes::ShapeRef.new(shape: ListNetworkMigrationMapperSegmentsIDsFilter, location_name: "segmentIDs"))
    ListNetworkMigrationMapperSegmentsFilters.struct_class = Types::ListNetworkMigrationMapperSegmentsFilters

    ListNetworkMigrationMapperSegmentsIDsFilter.member = Shapes::ShapeRef.new(shape: SegmentID)

    ListNetworkMigrationMapperSegmentsRequest.add_member(:network_migration_execution_id, Shapes::ShapeRef.new(shape: NetworkMigrationExecutionID, required: true, location_name: "networkMigrationExecutionID"))
    ListNetworkMigrationMapperSegmentsRequest.add_member(:network_migration_definition_id, Shapes::ShapeRef.new(shape: NetworkMigrationDefinitionID, required: true, location_name: "networkMigrationDefinitionID"))
    ListNetworkMigrationMapperSegmentsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: ListNetworkMigrationMapperSegmentsFilters, location_name: "filters"))
    ListNetworkMigrationMapperSegmentsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsType, location_name: "maxResults"))
    ListNetworkMigrationMapperSegmentsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListNetworkMigrationMapperSegmentsRequest.struct_class = Types::ListNetworkMigrationMapperSegmentsRequest

    ListNetworkMigrationMapperSegmentsResponse.add_member(:items, Shapes::ShapeRef.new(shape: NetworkMigrationMapperSegmentsList, location_name: "items"))
    ListNetworkMigrationMapperSegmentsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListNetworkMigrationMapperSegmentsResponse.struct_class = Types::ListNetworkMigrationMapperSegmentsResponse

    ListNetworkMigrationMappingUpdatesFilters.add_member(:job_i_ds, Shapes::ShapeRef.new(shape: ListNetworkMigrationMappingUpdatesIDsFilter, location_name: "jobIDs"))
    ListNetworkMigrationMappingUpdatesFilters.struct_class = Types::ListNetworkMigrationMappingUpdatesFilters

    ListNetworkMigrationMappingUpdatesIDsFilter.member = Shapes::ShapeRef.new(shape: NetworkMigrationJobID)

    ListNetworkMigrationMappingUpdatesRequest.add_member(:network_migration_execution_id, Shapes::ShapeRef.new(shape: NetworkMigrationExecutionID, required: true, location_name: "networkMigrationExecutionID"))
    ListNetworkMigrationMappingUpdatesRequest.add_member(:network_migration_definition_id, Shapes::ShapeRef.new(shape: NetworkMigrationDefinitionID, required: true, location_name: "networkMigrationDefinitionID"))
    ListNetworkMigrationMappingUpdatesRequest.add_member(:filters, Shapes::ShapeRef.new(shape: ListNetworkMigrationMappingUpdatesFilters, location_name: "filters"))
    ListNetworkMigrationMappingUpdatesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsType, location_name: "maxResults"))
    ListNetworkMigrationMappingUpdatesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListNetworkMigrationMappingUpdatesRequest.struct_class = Types::ListNetworkMigrationMappingUpdatesRequest

    ListNetworkMigrationMappingUpdatesResponse.add_member(:items, Shapes::ShapeRef.new(shape: NetworkMigrationMappingUpdatesList, location_name: "items"))
    ListNetworkMigrationMappingUpdatesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListNetworkMigrationMappingUpdatesResponse.struct_class = Types::ListNetworkMigrationMappingUpdatesResponse

    ListNetworkMigrationMappingsFilters.add_member(:job_i_ds, Shapes::ShapeRef.new(shape: ListNetworkMigrationMappingsIDsFilter, location_name: "jobIDs"))
    ListNetworkMigrationMappingsFilters.struct_class = Types::ListNetworkMigrationMappingsFilters

    ListNetworkMigrationMappingsIDsFilter.member = Shapes::ShapeRef.new(shape: NetworkMigrationJobID)

    ListNetworkMigrationMappingsRequest.add_member(:network_migration_execution_id, Shapes::ShapeRef.new(shape: NetworkMigrationExecutionID, required: true, location_name: "networkMigrationExecutionID"))
    ListNetworkMigrationMappingsRequest.add_member(:network_migration_definition_id, Shapes::ShapeRef.new(shape: NetworkMigrationDefinitionID, required: true, location_name: "networkMigrationDefinitionID"))
    ListNetworkMigrationMappingsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: ListNetworkMigrationMappingsFilters, location_name: "filters"))
    ListNetworkMigrationMappingsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsType, location_name: "maxResults"))
    ListNetworkMigrationMappingsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListNetworkMigrationMappingsRequest.struct_class = Types::ListNetworkMigrationMappingsRequest

    ListNetworkMigrationMappingsResponse.add_member(:items, Shapes::ShapeRef.new(shape: NetworkMigrationMappingsList, location_name: "items"))
    ListNetworkMigrationMappingsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListNetworkMigrationMappingsResponse.struct_class = Types::ListNetworkMigrationMappingsResponse

    ListSourceServerActionsRequest.add_member(:source_server_id, Shapes::ShapeRef.new(shape: SourceServerID, required: true, location_name: "sourceServerID"))
    ListSourceServerActionsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: SourceServerActionsRequestFilters, location_name: "filters"))
    ListSourceServerActionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsType, location_name: "maxResults"))
    ListSourceServerActionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListSourceServerActionsRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountID, location_name: "accountID"))
    ListSourceServerActionsRequest.struct_class = Types::ListSourceServerActionsRequest

    ListSourceServerActionsResponse.add_member(:items, Shapes::ShapeRef.new(shape: SourceServerActionDocuments, location_name: "items"))
    ListSourceServerActionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListSourceServerActionsResponse.struct_class = Types::ListSourceServerActionsResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location: "uri", location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    ListTemplateActionsRequest.add_member(:launch_configuration_template_id, Shapes::ShapeRef.new(shape: LaunchConfigurationTemplateID, required: true, location_name: "launchConfigurationTemplateID"))
    ListTemplateActionsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: TemplateActionsRequestFilters, location_name: "filters"))
    ListTemplateActionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsType, location_name: "maxResults"))
    ListTemplateActionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListTemplateActionsRequest.struct_class = Types::ListTemplateActionsRequest

    ListTemplateActionsResponse.add_member(:items, Shapes::ShapeRef.new(shape: TemplateActionDocuments, location_name: "items"))
    ListTemplateActionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListTemplateActionsResponse.struct_class = Types::ListTemplateActionsResponse

    ListWavesRequest.add_member(:filters, Shapes::ShapeRef.new(shape: ListWavesRequestFilters, location_name: "filters"))
    ListWavesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsType, location_name: "maxResults"))
    ListWavesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListWavesRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountID, location_name: "accountID"))
    ListWavesRequest.struct_class = Types::ListWavesRequest

    ListWavesRequestFilters.add_member(:wave_i_ds, Shapes::ShapeRef.new(shape: WaveIDsFilter, location_name: "waveIDs"))
    ListWavesRequestFilters.add_member(:is_archived, Shapes::ShapeRef.new(shape: Boolean, location_name: "isArchived"))
    ListWavesRequestFilters.struct_class = Types::ListWavesRequestFilters

    ListWavesResponse.add_member(:items, Shapes::ShapeRef.new(shape: WavesList, location_name: "items"))
    ListWavesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListWavesResponse.struct_class = Types::ListWavesResponse

    ManagedAccount.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountID, location_name: "accountId"))
    ManagedAccount.struct_class = Types::ManagedAccount

    ManagedAccounts.member = Shapes::ShapeRef.new(shape: ManagedAccount)

    MarkAsArchivedRequest.add_member(:source_server_id, Shapes::ShapeRef.new(shape: SourceServerID, required: true, location_name: "sourceServerID"))
    MarkAsArchivedRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountID, location_name: "accountID"))
    MarkAsArchivedRequest.struct_class = Types::MarkAsArchivedRequest

    MergeConstruct.add_member(:segment_id, Shapes::ShapeRef.new(shape: SegmentID, location_name: "segmentID"))
    MergeConstruct.add_member(:construct_id, Shapes::ShapeRef.new(shape: ConstructID, location_name: "constructID"))
    MergeConstruct.struct_class = Types::MergeConstruct

    MergeConstructs.member = Shapes::ShapeRef.new(shape: MergeConstruct)

    MergeOperation.add_member(:merge_constructs, Shapes::ShapeRef.new(shape: MergeConstructs, location_name: "mergeConstructs"))
    MergeOperation.struct_class = Types::MergeOperation

    NetworkInterface.add_member(:mac_address, Shapes::ShapeRef.new(shape: BoundedString, location_name: "macAddress"))
    NetworkInterface.add_member(:ips, Shapes::ShapeRef.new(shape: IPsList, location_name: "ips"))
    NetworkInterface.add_member(:is_primary, Shapes::ShapeRef.new(shape: Boolean, location_name: "isPrimary"))
    NetworkInterface.struct_class = Types::NetworkInterface

    NetworkInterfaces.member = Shapes::ShapeRef.new(shape: NetworkInterface)

    NetworkMigrationAnalysesList.member = Shapes::ShapeRef.new(shape: NetworkMigrationAnalysisJobDetails)

    NetworkMigrationAnalysisJobDetails.add_member(:job_id, Shapes::ShapeRef.new(shape: NetworkMigrationJobID, location_name: "jobID"))
    NetworkMigrationAnalysisJobDetails.add_member(:network_migration_execution_id, Shapes::ShapeRef.new(shape: NetworkMigrationExecutionID, location_name: "networkMigrationExecutionID"))
    NetworkMigrationAnalysisJobDetails.add_member(:network_migration_definition_id, Shapes::ShapeRef.new(shape: NetworkMigrationDefinitionID, location_name: "networkMigrationDefinitionID"))
    NetworkMigrationAnalysisJobDetails.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    NetworkMigrationAnalysisJobDetails.add_member(:ended_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "endedAt"))
    NetworkMigrationAnalysisJobDetails.add_member(:status, Shapes::ShapeRef.new(shape: NetworkMigrationJobStatus, location_name: "status"))
    NetworkMigrationAnalysisJobDetails.add_member(:status_details, Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: "statusDetails"))
    NetworkMigrationAnalysisJobDetails.struct_class = Types::NetworkMigrationAnalysisJobDetails

    NetworkMigrationAnalysisResult.add_member(:job_id, Shapes::ShapeRef.new(shape: NetworkMigrationJobID, location_name: "jobID"))
    NetworkMigrationAnalysisResult.add_member(:network_migration_execution_id, Shapes::ShapeRef.new(shape: NetworkMigrationExecutionID, location_name: "networkMigrationExecutionID"))
    NetworkMigrationAnalysisResult.add_member(:network_migration_definition_id, Shapes::ShapeRef.new(shape: NetworkMigrationDefinitionID, location_name: "networkMigrationDefinitionID"))
    NetworkMigrationAnalysisResult.add_member(:analyzer_type, Shapes::ShapeRef.new(shape: AnalyzerType, location_name: "analyzerType"))
    NetworkMigrationAnalysisResult.add_member(:source, Shapes::ShapeRef.new(shape: NetworkMigrationAnalysisResultSource, location_name: "source"))
    NetworkMigrationAnalysisResult.add_member(:target, Shapes::ShapeRef.new(shape: NetworkMigrationAnalysisResultTarget, location_name: "target"))
    NetworkMigrationAnalysisResult.add_member(:status, Shapes::ShapeRef.new(shape: NetworkMigrationAnalysisResultStatus, location_name: "status"))
    NetworkMigrationAnalysisResult.add_member(:analysis_result, Shapes::ShapeRef.new(shape: String, location_name: "analysisResult"))
    NetworkMigrationAnalysisResult.struct_class = Types::NetworkMigrationAnalysisResult

    NetworkMigrationAnalysisResultSource.add_member(:vpc_id, Shapes::ShapeRef.new(shape: VpcID, location_name: "vpcID"))
    NetworkMigrationAnalysisResultSource.add_member(:subnet_id, Shapes::ShapeRef.new(shape: SubnetID, location_name: "subnetID"))
    NetworkMigrationAnalysisResultSource.struct_class = Types::NetworkMigrationAnalysisResultSource

    NetworkMigrationAnalysisResultTarget.add_member(:vpc_id, Shapes::ShapeRef.new(shape: VpcID, location_name: "vpcID"))
    NetworkMigrationAnalysisResultTarget.add_member(:subnet_id, Shapes::ShapeRef.new(shape: SubnetID, location_name: "subnetID"))
    NetworkMigrationAnalysisResultTarget.struct_class = Types::NetworkMigrationAnalysisResultTarget

    NetworkMigrationAnalysisResultsList.member = Shapes::ShapeRef.new(shape: NetworkMigrationAnalysisResult)

    NetworkMigrationCodeGenerationArtifact.add_member(:artifact_id, Shapes::ShapeRef.new(shape: NetworkMigrationCodeGenerationArtifactID, location_name: "artifactID"))
    NetworkMigrationCodeGenerationArtifact.add_member(:artifact_type, Shapes::ShapeRef.new(shape: NetworkMigrationCodeGenerationArtifactType, location_name: "artifactType"))
    NetworkMigrationCodeGenerationArtifact.add_member(:artifact_sub_type, Shapes::ShapeRef.new(shape: NetworkMigrationCodeGenerationArtifactSubType, location_name: "artifactSubType"))
    NetworkMigrationCodeGenerationArtifact.add_member(:logical_id, Shapes::ShapeRef.new(shape: LogicalID, location_name: "logicalID"))
    NetworkMigrationCodeGenerationArtifact.add_member(:output_s3_configuration, Shapes::ShapeRef.new(shape: S3Configuration, location_name: "outputS3Configuration"))
    NetworkMigrationCodeGenerationArtifact.add_member(:checksum, Shapes::ShapeRef.new(shape: Checksum, location_name: "checksum"))
    NetworkMigrationCodeGenerationArtifact.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    NetworkMigrationCodeGenerationArtifact.struct_class = Types::NetworkMigrationCodeGenerationArtifact

    NetworkMigrationCodeGenerationArtifacts.member = Shapes::ShapeRef.new(shape: NetworkMigrationCodeGenerationArtifact)

    NetworkMigrationCodeGenerationJobDetails.add_member(:job_id, Shapes::ShapeRef.new(shape: NetworkMigrationJobID, location_name: "jobID"))
    NetworkMigrationCodeGenerationJobDetails.add_member(:network_migration_execution_id, Shapes::ShapeRef.new(shape: NetworkMigrationExecutionID, location_name: "networkMigrationExecutionID"))
    NetworkMigrationCodeGenerationJobDetails.add_member(:network_migration_definition_id, Shapes::ShapeRef.new(shape: NetworkMigrationDefinitionID, location_name: "networkMigrationDefinitionID"))
    NetworkMigrationCodeGenerationJobDetails.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    NetworkMigrationCodeGenerationJobDetails.add_member(:ended_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "endedAt"))
    NetworkMigrationCodeGenerationJobDetails.add_member(:status, Shapes::ShapeRef.new(shape: NetworkMigrationJobStatus, location_name: "status"))
    NetworkMigrationCodeGenerationJobDetails.add_member(:status_details, Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: "statusDetails"))
    NetworkMigrationCodeGenerationJobDetails.add_member(:code_generation_output_format_status_details_map, Shapes::ShapeRef.new(shape: CodeGenerationOutputFormatStatusDetailsMap, location_name: "codeGenerationOutputFormatStatusDetailsMap"))
    NetworkMigrationCodeGenerationJobDetails.struct_class = Types::NetworkMigrationCodeGenerationJobDetails

    NetworkMigrationCodeGenerationSegment.add_member(:job_id, Shapes::ShapeRef.new(shape: NetworkMigrationJobID, location_name: "jobID"))
    NetworkMigrationCodeGenerationSegment.add_member(:network_migration_execution_id, Shapes::ShapeRef.new(shape: NetworkMigrationExecutionID, location_name: "networkMigrationExecutionID"))
    NetworkMigrationCodeGenerationSegment.add_member(:network_migration_definition_id, Shapes::ShapeRef.new(shape: NetworkMigrationDefinitionID, location_name: "networkMigrationDefinitionID"))
    NetworkMigrationCodeGenerationSegment.add_member(:segment_id, Shapes::ShapeRef.new(shape: SegmentID, location_name: "segmentID"))
    NetworkMigrationCodeGenerationSegment.add_member(:segment_type, Shapes::ShapeRef.new(shape: NetworkMigrationCodeGenerationSegmentType, location_name: "segmentType"))
    NetworkMigrationCodeGenerationSegment.add_member(:logical_id, Shapes::ShapeRef.new(shape: LogicalID, location_name: "logicalID"))
    NetworkMigrationCodeGenerationSegment.add_member(:mapper_segment_id, Shapes::ShapeRef.new(shape: SegmentID, location_name: "mapperSegmentID"))
    NetworkMigrationCodeGenerationSegment.add_member(:artifacts, Shapes::ShapeRef.new(shape: NetworkMigrationCodeGenerationArtifacts, location_name: "artifacts"))
    NetworkMigrationCodeGenerationSegment.add_member(:referenced_segments, Shapes::ShapeRef.new(shape: referencedSegmentsList, location_name: "referencedSegments"))
    NetworkMigrationCodeGenerationSegment.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    NetworkMigrationCodeGenerationSegment.struct_class = Types::NetworkMigrationCodeGenerationSegment

    NetworkMigrationCodeGenerationSegmentsList.member = Shapes::ShapeRef.new(shape: NetworkMigrationCodeGenerationSegment)

    NetworkMigrationCodeGenerationsList.member = Shapes::ShapeRef.new(shape: NetworkMigrationCodeGenerationJobDetails)

    NetworkMigrationDefinition.add_member(:arn, Shapes::ShapeRef.new(shape: ARN, location_name: "arn"))
    NetworkMigrationDefinition.add_member(:network_migration_definition_id, Shapes::ShapeRef.new(shape: NetworkMigrationDefinitionID, location_name: "networkMigrationDefinitionID"))
    NetworkMigrationDefinition.add_member(:name, Shapes::ShapeRef.new(shape: NetworkMigrationDefinitionName, location_name: "name"))
    NetworkMigrationDefinition.add_member(:description, Shapes::ShapeRef.new(shape: NetworkMigrationDefinitionDescription, location_name: "description"))
    NetworkMigrationDefinition.add_member(:source_configurations, Shapes::ShapeRef.new(shape: SourceConfigurationList, location_name: "sourceConfigurations"))
    NetworkMigrationDefinition.add_member(:target_s3_configuration, Shapes::ShapeRef.new(shape: TargetS3Configuration, location_name: "targetS3Configuration"))
    NetworkMigrationDefinition.add_member(:target_network, Shapes::ShapeRef.new(shape: TargetNetwork, location_name: "targetNetwork"))
    NetworkMigrationDefinition.add_member(:target_deployment, Shapes::ShapeRef.new(shape: TargetDeployment, location_name: "targetDeployment"))
    NetworkMigrationDefinition.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    NetworkMigrationDefinition.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt"))
    NetworkMigrationDefinition.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    NetworkMigrationDefinition.add_member(:scope_tags, Shapes::ShapeRef.new(shape: ScopeTagsMap, location_name: "scopeTags"))
    NetworkMigrationDefinition.struct_class = Types::NetworkMigrationDefinition

    NetworkMigrationDefinitionSummariesList.member = Shapes::ShapeRef.new(shape: NetworkMigrationDefinitionSummary)

    NetworkMigrationDefinitionSummary.add_member(:network_migration_definition_id, Shapes::ShapeRef.new(shape: NetworkMigrationDefinitionID, location_name: "networkMigrationDefinitionID"))
    NetworkMigrationDefinitionSummary.add_member(:name, Shapes::ShapeRef.new(shape: NetworkMigrationDefinitionName, location_name: "name"))
    NetworkMigrationDefinitionSummary.add_member(:source_environment, Shapes::ShapeRef.new(shape: SourceEnvironment, location_name: "sourceEnvironment"))
    NetworkMigrationDefinitionSummary.add_member(:arn, Shapes::ShapeRef.new(shape: ARN, location_name: "arn"))
    NetworkMigrationDefinitionSummary.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    NetworkMigrationDefinitionSummary.add_member(:scope_tags, Shapes::ShapeRef.new(shape: ScopeTagsMap, location_name: "scopeTags"))
    NetworkMigrationDefinitionSummary.struct_class = Types::NetworkMigrationDefinitionSummary

    NetworkMigrationDefintionsIDsFilter.member = Shapes::ShapeRef.new(shape: NetworkMigrationDefinitionID)

    NetworkMigrationDeployedStackDetails.add_member(:status, Shapes::ShapeRef.new(shape: NetworkMigrationDeployedStackStatus, location_name: "status"))
    NetworkMigrationDeployedStackDetails.add_member(:stack_physical_id, Shapes::ShapeRef.new(shape: PhysicalID, location_name: "stackPhysicalID"))
    NetworkMigrationDeployedStackDetails.add_member(:stack_logical_id, Shapes::ShapeRef.new(shape: LogicalID, location_name: "stackLogicalID"))
    NetworkMigrationDeployedStackDetails.add_member(:segment_id, Shapes::ShapeRef.new(shape: SegmentID, location_name: "segmentID"))
    NetworkMigrationDeployedStackDetails.add_member(:target_account, Shapes::ShapeRef.new(shape: AccountID, location_name: "targetAccount"))
    NetworkMigrationDeployedStackDetails.add_member(:failed_resources, Shapes::ShapeRef.new(shape: NetworkMigrationFailedResourcesList, location_name: "failedResources"))
    NetworkMigrationDeployedStackDetails.struct_class = Types::NetworkMigrationDeployedStackDetails

    NetworkMigrationDeployedStacksList.member = Shapes::ShapeRef.new(shape: NetworkMigrationDeployedStackDetails)

    NetworkMigrationDeployerJobDetails.add_member(:job_id, Shapes::ShapeRef.new(shape: NetworkMigrationJobID, location_name: "jobID"))
    NetworkMigrationDeployerJobDetails.add_member(:network_migration_execution_id, Shapes::ShapeRef.new(shape: NetworkMigrationExecutionID, location_name: "networkMigrationExecutionID"))
    NetworkMigrationDeployerJobDetails.add_member(:network_migration_definition_id, Shapes::ShapeRef.new(shape: NetworkMigrationDefinitionID, location_name: "networkMigrationDefinitionID"))
    NetworkMigrationDeployerJobDetails.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    NetworkMigrationDeployerJobDetails.add_member(:ended_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "endedAt"))
    NetworkMigrationDeployerJobDetails.add_member(:status, Shapes::ShapeRef.new(shape: NetworkMigrationJobStatus, location_name: "status"))
    NetworkMigrationDeployerJobDetails.add_member(:status_details, Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: "statusDetails"))
    NetworkMigrationDeployerJobDetails.struct_class = Types::NetworkMigrationDeployerJobDetails

    NetworkMigrationDeployerJobList.member = Shapes::ShapeRef.new(shape: NetworkMigrationDeployerJobDetails)

    NetworkMigrationExecution.add_member(:network_migration_definition_id, Shapes::ShapeRef.new(shape: NetworkMigrationDefinitionID, location_name: "networkMigrationDefinitionID"))
    NetworkMigrationExecution.add_member(:network_migration_execution_id, Shapes::ShapeRef.new(shape: NetworkMigrationExecutionID, location_name: "networkMigrationExecutionID"))
    NetworkMigrationExecution.add_member(:status, Shapes::ShapeRef.new(shape: ExecutionStatus, location_name: "status"))
    NetworkMigrationExecution.add_member(:stage, Shapes::ShapeRef.new(shape: ExecutionStage, location_name: "stage"))
    NetworkMigrationExecution.add_member(:activity, Shapes::ShapeRef.new(shape: ExecutionStageActivity, location_name: "activity"))
    NetworkMigrationExecution.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    NetworkMigrationExecution.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt"))
    NetworkMigrationExecution.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    NetworkMigrationExecution.struct_class = Types::NetworkMigrationExecution

    NetworkMigrationExecutionIDsFilter.member = Shapes::ShapeRef.new(shape: NetworkMigrationExecutionID)

    NetworkMigrationExecutionStatusesFilter.member = Shapes::ShapeRef.new(shape: ExecutionStatus)

    NetworkMigrationExecutionsList.member = Shapes::ShapeRef.new(shape: NetworkMigrationExecution)

    NetworkMigrationFailedResourceDetails.add_member(:logical_id, Shapes::ShapeRef.new(shape: LogicalID, location_name: "logicalID"))
    NetworkMigrationFailedResourceDetails.add_member(:status, Shapes::ShapeRef.new(shape: NetworkMigrationFailedResourceStatus, location_name: "status"))
    NetworkMigrationFailedResourceDetails.add_member(:status_reason, Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: "statusReason"))
    NetworkMigrationFailedResourceDetails.struct_class = Types::NetworkMigrationFailedResourceDetails

    NetworkMigrationFailedResourcesList.member = Shapes::ShapeRef.new(shape: NetworkMigrationFailedResourceDetails)

    NetworkMigrationMapperSegment.add_member(:job_id, Shapes::ShapeRef.new(shape: NetworkMigrationJobID, location_name: "jobID"))
    NetworkMigrationMapperSegment.add_member(:network_migration_execution_id, Shapes::ShapeRef.new(shape: NetworkMigrationExecutionID, location_name: "networkMigrationExecutionID"))
    NetworkMigrationMapperSegment.add_member(:network_migration_definition_id, Shapes::ShapeRef.new(shape: NetworkMigrationDefinitionID, location_name: "networkMigrationDefinitionID"))
    NetworkMigrationMapperSegment.add_member(:segment_id, Shapes::ShapeRef.new(shape: SegmentID, location_name: "segmentID"))
    NetworkMigrationMapperSegment.add_member(:segment_type, Shapes::ShapeRef.new(shape: NetworkMigrationMapperSegmentType, location_name: "segmentType"))
    NetworkMigrationMapperSegment.add_member(:name, Shapes::ShapeRef.new(shape: SegmentName, location_name: "name"))
    NetworkMigrationMapperSegment.add_member(:description, Shapes::ShapeRef.new(shape: SegmentDescription, location_name: "description"))
    NetworkMigrationMapperSegment.add_member(:logical_id, Shapes::ShapeRef.new(shape: LogicalID, location_name: "logicalID"))
    NetworkMigrationMapperSegment.add_member(:checksum, Shapes::ShapeRef.new(shape: Checksum, location_name: "checksum"))
    NetworkMigrationMapperSegment.add_member(:output_s3_configuration, Shapes::ShapeRef.new(shape: S3Configuration, location_name: "outputS3Configuration"))
    NetworkMigrationMapperSegment.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    NetworkMigrationMapperSegment.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt"))
    NetworkMigrationMapperSegment.add_member(:scope_tags, Shapes::ShapeRef.new(shape: ScopeTagsMap, location_name: "scopeTags"))
    NetworkMigrationMapperSegment.add_member(:target_account, Shapes::ShapeRef.new(shape: AccountID, location_name: "targetAccount"))
    NetworkMigrationMapperSegment.add_member(:referenced_segments, Shapes::ShapeRef.new(shape: referencedSegmentsList, location_name: "referencedSegments"))
    NetworkMigrationMapperSegment.struct_class = Types::NetworkMigrationMapperSegment

    NetworkMigrationMapperSegmentConstruct.add_member(:construct_id, Shapes::ShapeRef.new(shape: ConstructID, location_name: "constructID"))
    NetworkMigrationMapperSegmentConstruct.add_member(:construct_type, Shapes::ShapeRef.new(shape: NetworkMigrationMapperSegmentConstructType, location_name: "constructType"))
    NetworkMigrationMapperSegmentConstruct.add_member(:name, Shapes::ShapeRef.new(shape: SegmentConstructName, location_name: "name"))
    NetworkMigrationMapperSegmentConstruct.add_member(:description, Shapes::ShapeRef.new(shape: SegmentConstructDescription, location_name: "description"))
    NetworkMigrationMapperSegmentConstruct.add_member(:logical_id, Shapes::ShapeRef.new(shape: LogicalID, location_name: "logicalID"))
    NetworkMigrationMapperSegmentConstruct.add_member(:excluded, Shapes::ShapeRef.new(shape: Boolean, location_name: "excluded"))
    NetworkMigrationMapperSegmentConstruct.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    NetworkMigrationMapperSegmentConstruct.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt"))
    NetworkMigrationMapperSegmentConstruct.add_member(:properties, Shapes::ShapeRef.new(shape: ConstructProperties, location_name: "properties"))
    NetworkMigrationMapperSegmentConstruct.struct_class = Types::NetworkMigrationMapperSegmentConstruct

    NetworkMigrationMapperSegmentConstructs.member = Shapes::ShapeRef.new(shape: NetworkMigrationMapperSegmentConstruct)

    NetworkMigrationMapperSegmentsList.member = Shapes::ShapeRef.new(shape: NetworkMigrationMapperSegment)

    NetworkMigrationMappingJobDetails.add_member(:job_id, Shapes::ShapeRef.new(shape: NetworkMigrationJobID, location_name: "jobID"))
    NetworkMigrationMappingJobDetails.add_member(:network_migration_execution_id, Shapes::ShapeRef.new(shape: NetworkMigrationExecutionID, location_name: "networkMigrationExecutionID"))
    NetworkMigrationMappingJobDetails.add_member(:network_migration_definition_id, Shapes::ShapeRef.new(shape: NetworkMigrationDefinitionID, location_name: "networkMigrationDefinitionID"))
    NetworkMigrationMappingJobDetails.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    NetworkMigrationMappingJobDetails.add_member(:ended_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "endedAt"))
    NetworkMigrationMappingJobDetails.add_member(:status, Shapes::ShapeRef.new(shape: NetworkMigrationJobStatus, location_name: "status"))
    NetworkMigrationMappingJobDetails.add_member(:status_details, Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: "statusDetails"))
    NetworkMigrationMappingJobDetails.struct_class = Types::NetworkMigrationMappingJobDetails

    NetworkMigrationMappingUpdateJobDetails.add_member(:job_id, Shapes::ShapeRef.new(shape: NetworkMigrationJobID, location_name: "jobID"))
    NetworkMigrationMappingUpdateJobDetails.add_member(:network_migration_execution_id, Shapes::ShapeRef.new(shape: NetworkMigrationExecutionID, location_name: "networkMigrationExecutionID"))
    NetworkMigrationMappingUpdateJobDetails.add_member(:network_migration_definition_id, Shapes::ShapeRef.new(shape: NetworkMigrationDefinitionID, location_name: "networkMigrationDefinitionID"))
    NetworkMigrationMappingUpdateJobDetails.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    NetworkMigrationMappingUpdateJobDetails.add_member(:ended_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "endedAt"))
    NetworkMigrationMappingUpdateJobDetails.add_member(:status, Shapes::ShapeRef.new(shape: NetworkMigrationJobStatus, location_name: "status"))
    NetworkMigrationMappingUpdateJobDetails.add_member(:status_details, Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: "statusDetails"))
    NetworkMigrationMappingUpdateJobDetails.struct_class = Types::NetworkMigrationMappingUpdateJobDetails

    NetworkMigrationMappingUpdatesList.member = Shapes::ShapeRef.new(shape: NetworkMigrationMappingUpdateJobDetails)

    NetworkMigrationMappingsList.member = Shapes::ShapeRef.new(shape: NetworkMigrationMappingJobDetails)

    OS.add_member(:full_string, Shapes::ShapeRef.new(shape: BoundedString, location_name: "fullString"))
    OS.struct_class = Types::OS

    OperationUnion.add_member(:merge, Shapes::ShapeRef.new(shape: MergeOperation, location_name: "merge"))
    OperationUnion.add_member(:split, Shapes::ShapeRef.new(shape: SplitOperation, location_name: "split"))
    OperationUnion.add_member(:delete, Shapes::ShapeRef.new(shape: DeleteOperation, location_name: "delete"))
    OperationUnion.add_member(:update, Shapes::ShapeRef.new(shape: UpdateOperation, location_name: "update"))
    OperationUnion.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    OperationUnion.add_member_subclass(:merge, Types::OperationUnion::Merge)
    OperationUnion.add_member_subclass(:split, Types::OperationUnion::Split)
    OperationUnion.add_member_subclass(:delete, Types::OperationUnion::Delete)
    OperationUnion.add_member_subclass(:update, Types::OperationUnion::Update)
    OperationUnion.add_member_subclass(:unknown, Types::OperationUnion::Unknown)
    OperationUnion.struct_class = Types::OperationUnion

    ParticipatingServer.add_member(:source_server_id, Shapes::ShapeRef.new(shape: SourceServerID, required: true, location_name: "sourceServerID"))
    ParticipatingServer.add_member(:launch_status, Shapes::ShapeRef.new(shape: LaunchStatus, location_name: "launchStatus"))
    ParticipatingServer.add_member(:launched_ec2_instance_id, Shapes::ShapeRef.new(shape: EC2InstanceID, location_name: "launchedEc2InstanceID"))
    ParticipatingServer.add_member(:post_launch_actions_status, Shapes::ShapeRef.new(shape: PostLaunchActionsStatus, location_name: "postLaunchActionsStatus"))
    ParticipatingServer.struct_class = Types::ParticipatingServer

    ParticipatingServers.member = Shapes::ShapeRef.new(shape: ParticipatingServer)

    PauseReplicationRequest.add_member(:source_server_id, Shapes::ShapeRef.new(shape: SourceServerID, required: true, location_name: "sourceServerID"))
    PauseReplicationRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountID, location_name: "accountID"))
    PauseReplicationRequest.struct_class = Types::PauseReplicationRequest

    PostLaunchActions.add_member(:deployment, Shapes::ShapeRef.new(shape: PostLaunchActionsDeploymentType, location_name: "deployment"))
    PostLaunchActions.add_member(:s3_log_bucket, Shapes::ShapeRef.new(shape: S3LogBucketName, location_name: "s3LogBucket"))
    PostLaunchActions.add_member(:s3_output_key_prefix, Shapes::ShapeRef.new(shape: BoundedString, location_name: "s3OutputKeyPrefix"))
    PostLaunchActions.add_member(:cloud_watch_log_group_name, Shapes::ShapeRef.new(shape: CloudWatchLogGroupName, location_name: "cloudWatchLogGroupName"))
    PostLaunchActions.add_member(:ssm_documents, Shapes::ShapeRef.new(shape: SsmDocuments, location_name: "ssmDocuments"))
    PostLaunchActions.struct_class = Types::PostLaunchActions

    PostLaunchActionsLaunchStatusList.member = Shapes::ShapeRef.new(shape: JobPostLaunchActionsLaunchStatus)

    PostLaunchActionsStatus.add_member(:ssm_agent_discovery_datetime, Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: "ssmAgentDiscoveryDatetime"))
    PostLaunchActionsStatus.add_member(:post_launch_actions_launch_status_list, Shapes::ShapeRef.new(shape: PostLaunchActionsLaunchStatusList, location_name: "postLaunchActionsLaunchStatusList"))
    PostLaunchActionsStatus.struct_class = Types::PostLaunchActionsStatus

    PutSourceServerActionRequest.add_member(:source_server_id, Shapes::ShapeRef.new(shape: SourceServerID, required: true, location_name: "sourceServerID"))
    PutSourceServerActionRequest.add_member(:action_name, Shapes::ShapeRef.new(shape: ActionName, required: true, location_name: "actionName"))
    PutSourceServerActionRequest.add_member(:document_identifier, Shapes::ShapeRef.new(shape: BoundedString, required: true, location_name: "documentIdentifier"))
    PutSourceServerActionRequest.add_member(:order, Shapes::ShapeRef.new(shape: OrderType, required: true, location_name: "order"))
    PutSourceServerActionRequest.add_member(:action_id, Shapes::ShapeRef.new(shape: ActionID, required: true, location_name: "actionID"))
    PutSourceServerActionRequest.add_member(:document_version, Shapes::ShapeRef.new(shape: DocumentVersion, location_name: "documentVersion"))
    PutSourceServerActionRequest.add_member(:active, Shapes::ShapeRef.new(shape: Boolean, location_name: "active"))
    PutSourceServerActionRequest.add_member(:timeout_seconds, Shapes::ShapeRef.new(shape: StrictlyPositiveInteger, location_name: "timeoutSeconds"))
    PutSourceServerActionRequest.add_member(:must_succeed_for_cutover, Shapes::ShapeRef.new(shape: Boolean, location_name: "mustSucceedForCutover"))
    PutSourceServerActionRequest.add_member(:parameters, Shapes::ShapeRef.new(shape: SsmDocumentParameters, location_name: "parameters"))
    PutSourceServerActionRequest.add_member(:external_parameters, Shapes::ShapeRef.new(shape: SsmDocumentExternalParameters, location_name: "externalParameters"))
    PutSourceServerActionRequest.add_member(:description, Shapes::ShapeRef.new(shape: ActionDescription, location_name: "description"))
    PutSourceServerActionRequest.add_member(:category, Shapes::ShapeRef.new(shape: ActionCategory, location_name: "category"))
    PutSourceServerActionRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountID, location_name: "accountID"))
    PutSourceServerActionRequest.struct_class = Types::PutSourceServerActionRequest

    PutTemplateActionRequest.add_member(:launch_configuration_template_id, Shapes::ShapeRef.new(shape: LaunchConfigurationTemplateID, required: true, location_name: "launchConfigurationTemplateID"))
    PutTemplateActionRequest.add_member(:action_name, Shapes::ShapeRef.new(shape: BoundedString, required: true, location_name: "actionName"))
    PutTemplateActionRequest.add_member(:document_identifier, Shapes::ShapeRef.new(shape: BoundedString, required: true, location_name: "documentIdentifier"))
    PutTemplateActionRequest.add_member(:order, Shapes::ShapeRef.new(shape: OrderType, required: true, location_name: "order"))
    PutTemplateActionRequest.add_member(:action_id, Shapes::ShapeRef.new(shape: ActionID, required: true, location_name: "actionID"))
    PutTemplateActionRequest.add_member(:document_version, Shapes::ShapeRef.new(shape: DocumentVersion, location_name: "documentVersion"))
    PutTemplateActionRequest.add_member(:active, Shapes::ShapeRef.new(shape: Boolean, location_name: "active"))
    PutTemplateActionRequest.add_member(:timeout_seconds, Shapes::ShapeRef.new(shape: StrictlyPositiveInteger, location_name: "timeoutSeconds"))
    PutTemplateActionRequest.add_member(:must_succeed_for_cutover, Shapes::ShapeRef.new(shape: Boolean, location_name: "mustSucceedForCutover"))
    PutTemplateActionRequest.add_member(:parameters, Shapes::ShapeRef.new(shape: SsmDocumentParameters, location_name: "parameters"))
    PutTemplateActionRequest.add_member(:operating_system, Shapes::ShapeRef.new(shape: OperatingSystemString, location_name: "operatingSystem"))
    PutTemplateActionRequest.add_member(:external_parameters, Shapes::ShapeRef.new(shape: SsmDocumentExternalParameters, location_name: "externalParameters"))
    PutTemplateActionRequest.add_member(:description, Shapes::ShapeRef.new(shape: ActionDescription, location_name: "description"))
    PutTemplateActionRequest.add_member(:category, Shapes::ShapeRef.new(shape: ActionCategory, location_name: "category"))
    PutTemplateActionRequest.struct_class = Types::PutTemplateActionRequest

    RemoveSourceServerActionRequest.add_member(:source_server_id, Shapes::ShapeRef.new(shape: SourceServerID, required: true, location_name: "sourceServerID"))
    RemoveSourceServerActionRequest.add_member(:action_id, Shapes::ShapeRef.new(shape: ActionID, required: true, location_name: "actionID"))
    RemoveSourceServerActionRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountID, location_name: "accountID"))
    RemoveSourceServerActionRequest.struct_class = Types::RemoveSourceServerActionRequest

    RemoveSourceServerActionResponse.struct_class = Types::RemoveSourceServerActionResponse

    RemoveTemplateActionRequest.add_member(:launch_configuration_template_id, Shapes::ShapeRef.new(shape: LaunchConfigurationTemplateID, required: true, location_name: "launchConfigurationTemplateID"))
    RemoveTemplateActionRequest.add_member(:action_id, Shapes::ShapeRef.new(shape: ActionID, required: true, location_name: "actionID"))
    RemoveTemplateActionRequest.struct_class = Types::RemoveTemplateActionRequest

    RemoveTemplateActionResponse.struct_class = Types::RemoveTemplateActionResponse

    ReplicationConfiguration.add_member(:source_server_id, Shapes::ShapeRef.new(shape: SourceServerID, location_name: "sourceServerID"))
    ReplicationConfiguration.add_member(:name, Shapes::ShapeRef.new(shape: SmallBoundedString, location_name: "name"))
    ReplicationConfiguration.add_member(:staging_area_subnet_id, Shapes::ShapeRef.new(shape: SubnetID, location_name: "stagingAreaSubnetId"))
    ReplicationConfiguration.add_member(:associate_default_security_group, Shapes::ShapeRef.new(shape: Boolean, location_name: "associateDefaultSecurityGroup"))
    ReplicationConfiguration.add_member(:replication_servers_security_groups_i_ds, Shapes::ShapeRef.new(shape: ReplicationServersSecurityGroupsIDs, location_name: "replicationServersSecurityGroupsIDs"))
    ReplicationConfiguration.add_member(:replication_server_instance_type, Shapes::ShapeRef.new(shape: EC2InstanceType, location_name: "replicationServerInstanceType"))
    ReplicationConfiguration.add_member(:use_dedicated_replication_server, Shapes::ShapeRef.new(shape: Boolean, location_name: "useDedicatedReplicationServer"))
    ReplicationConfiguration.add_member(:default_large_staging_disk_type, Shapes::ShapeRef.new(shape: ReplicationConfigurationDefaultLargeStagingDiskType, location_name: "defaultLargeStagingDiskType"))
    ReplicationConfiguration.add_member(:replicated_disks, Shapes::ShapeRef.new(shape: ReplicationConfigurationReplicatedDisks, location_name: "replicatedDisks"))
    ReplicationConfiguration.add_member(:ebs_encryption, Shapes::ShapeRef.new(shape: ReplicationConfigurationEbsEncryption, location_name: "ebsEncryption"))
    ReplicationConfiguration.add_member(:ebs_encryption_key_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "ebsEncryptionKeyArn"))
    ReplicationConfiguration.add_member(:bandwidth_throttling, Shapes::ShapeRef.new(shape: BandwidthThrottling, location_name: "bandwidthThrottling"))
    ReplicationConfiguration.add_member(:data_plane_routing, Shapes::ShapeRef.new(shape: ReplicationConfigurationDataPlaneRouting, location_name: "dataPlaneRouting"))
    ReplicationConfiguration.add_member(:create_public_ip, Shapes::ShapeRef.new(shape: Boolean, location_name: "createPublicIP"))
    ReplicationConfiguration.add_member(:staging_area_tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "stagingAreaTags"))
    ReplicationConfiguration.add_member(:use_fips_endpoint, Shapes::ShapeRef.new(shape: Boolean, location_name: "useFipsEndpoint"))
    ReplicationConfiguration.add_member(:internet_protocol, Shapes::ShapeRef.new(shape: InternetProtocol, location_name: "internetProtocol"))
    ReplicationConfiguration.add_member(:store_snapshot_on_local_zone, Shapes::ShapeRef.new(shape: Boolean, location_name: "storeSnapshotOnLocalZone"))
    ReplicationConfiguration.struct_class = Types::ReplicationConfiguration

    ReplicationConfigurationReplicatedDisk.add_member(:device_name, Shapes::ShapeRef.new(shape: BoundedString, location_name: "deviceName"))
    ReplicationConfigurationReplicatedDisk.add_member(:is_boot_disk, Shapes::ShapeRef.new(shape: Boolean, location_name: "isBootDisk"))
    ReplicationConfigurationReplicatedDisk.add_member(:staging_disk_type, Shapes::ShapeRef.new(shape: ReplicationConfigurationReplicatedDiskStagingDiskType, location_name: "stagingDiskType"))
    ReplicationConfigurationReplicatedDisk.add_member(:iops, Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "iops"))
    ReplicationConfigurationReplicatedDisk.add_member(:throughput, Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "throughput"))
    ReplicationConfigurationReplicatedDisk.struct_class = Types::ReplicationConfigurationReplicatedDisk

    ReplicationConfigurationReplicatedDisks.member = Shapes::ShapeRef.new(shape: ReplicationConfigurationReplicatedDisk)

    ReplicationConfigurationTemplate.add_member(:replication_configuration_template_id, Shapes::ShapeRef.new(shape: ReplicationConfigurationTemplateID, required: true, location_name: "replicationConfigurationTemplateID"))
    ReplicationConfigurationTemplate.add_member(:arn, Shapes::ShapeRef.new(shape: ARN, location_name: "arn"))
    ReplicationConfigurationTemplate.add_member(:staging_area_subnet_id, Shapes::ShapeRef.new(shape: SubnetID, location_name: "stagingAreaSubnetId"))
    ReplicationConfigurationTemplate.add_member(:associate_default_security_group, Shapes::ShapeRef.new(shape: Boolean, location_name: "associateDefaultSecurityGroup"))
    ReplicationConfigurationTemplate.add_member(:replication_servers_security_groups_i_ds, Shapes::ShapeRef.new(shape: ReplicationServersSecurityGroupsIDs, location_name: "replicationServersSecurityGroupsIDs"))
    ReplicationConfigurationTemplate.add_member(:replication_server_instance_type, Shapes::ShapeRef.new(shape: EC2InstanceType, location_name: "replicationServerInstanceType"))
    ReplicationConfigurationTemplate.add_member(:use_dedicated_replication_server, Shapes::ShapeRef.new(shape: Boolean, location_name: "useDedicatedReplicationServer"))
    ReplicationConfigurationTemplate.add_member(:default_large_staging_disk_type, Shapes::ShapeRef.new(shape: ReplicationConfigurationDefaultLargeStagingDiskType, location_name: "defaultLargeStagingDiskType"))
    ReplicationConfigurationTemplate.add_member(:ebs_encryption, Shapes::ShapeRef.new(shape: ReplicationConfigurationEbsEncryption, location_name: "ebsEncryption"))
    ReplicationConfigurationTemplate.add_member(:ebs_encryption_key_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "ebsEncryptionKeyArn"))
    ReplicationConfigurationTemplate.add_member(:bandwidth_throttling, Shapes::ShapeRef.new(shape: BandwidthThrottling, location_name: "bandwidthThrottling"))
    ReplicationConfigurationTemplate.add_member(:data_plane_routing, Shapes::ShapeRef.new(shape: ReplicationConfigurationDataPlaneRouting, location_name: "dataPlaneRouting"))
    ReplicationConfigurationTemplate.add_member(:create_public_ip, Shapes::ShapeRef.new(shape: Boolean, location_name: "createPublicIP"))
    ReplicationConfigurationTemplate.add_member(:staging_area_tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "stagingAreaTags"))
    ReplicationConfigurationTemplate.add_member(:use_fips_endpoint, Shapes::ShapeRef.new(shape: Boolean, location_name: "useFipsEndpoint"))
    ReplicationConfigurationTemplate.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    ReplicationConfigurationTemplate.add_member(:internet_protocol, Shapes::ShapeRef.new(shape: InternetProtocol, location_name: "internetProtocol"))
    ReplicationConfigurationTemplate.add_member(:store_snapshot_on_local_zone, Shapes::ShapeRef.new(shape: Boolean, location_name: "storeSnapshotOnLocalZone"))
    ReplicationConfigurationTemplate.struct_class = Types::ReplicationConfigurationTemplate

    ReplicationConfigurationTemplateIDs.member = Shapes::ShapeRef.new(shape: ReplicationConfigurationTemplateID)

    ReplicationConfigurationTemplates.member = Shapes::ShapeRef.new(shape: ReplicationConfigurationTemplate)

    ReplicationServersSecurityGroupsIDs.member = Shapes::ShapeRef.new(shape: SecurityGroupID)

    ReplicationTypes.member = Shapes::ShapeRef.new(shape: ReplicationType)

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: "message"))
    ResourceNotFoundException.add_member(:code, Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: "code"))
    ResourceNotFoundException.add_member(:resource_id, Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: "resourceId"))
    ResourceNotFoundException.add_member(:resource_type, Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: "resourceType"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ResumeReplicationRequest.add_member(:source_server_id, Shapes::ShapeRef.new(shape: SourceServerID, required: true, location_name: "sourceServerID"))
    ResumeReplicationRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountID, location_name: "accountID"))
    ResumeReplicationRequest.struct_class = Types::ResumeReplicationRequest

    RetryDataReplicationRequest.add_member(:source_server_id, Shapes::ShapeRef.new(shape: SourceServerID, required: true, location_name: "sourceServerID"))
    RetryDataReplicationRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountID, location_name: "accountID"))
    RetryDataReplicationRequest.struct_class = Types::RetryDataReplicationRequest

    S3BucketSource.add_member(:s3_bucket, Shapes::ShapeRef.new(shape: S3BucketName, required: true, location_name: "s3Bucket"))
    S3BucketSource.add_member(:s3_key, Shapes::ShapeRef.new(shape: S3Key, required: true, location_name: "s3Key"))
    S3BucketSource.add_member(:s3_bucket_owner, Shapes::ShapeRef.new(shape: AccountID, location_name: "s3BucketOwner"))
    S3BucketSource.struct_class = Types::S3BucketSource

    S3Configuration.add_member(:s3_bucket, Shapes::ShapeRef.new(shape: S3BucketName, location_name: "s3Bucket"))
    S3Configuration.add_member(:s3_bucket_owner, Shapes::ShapeRef.new(shape: AccountID, location_name: "s3BucketOwner"))
    S3Configuration.add_member(:s3_key, Shapes::ShapeRef.new(shape: S3KeyName, location_name: "s3Key"))
    S3Configuration.struct_class = Types::S3Configuration

    ScopeTagsMap.key = Shapes::ShapeRef.new(shape: ScopeTagKey)
    ScopeTagsMap.value = Shapes::ShapeRef.new(shape: ScopeTagValue)

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: "message"))
    ServiceQuotaExceededException.add_member(:code, Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: "code"))
    ServiceQuotaExceededException.add_member(:resource_id, Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: "resourceId"))
    ServiceQuotaExceededException.add_member(:resource_type, Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: "resourceType"))
    ServiceQuotaExceededException.add_member(:service_code, Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: "serviceCode"))
    ServiceQuotaExceededException.add_member(:quota_code, Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: "quotaCode"))
    ServiceQuotaExceededException.add_member(:quota_value, Shapes::ShapeRef.new(shape: StrictlyPositiveInteger, location_name: "quotaValue"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    SourceConfiguration.add_member(:source_environment, Shapes::ShapeRef.new(shape: SourceEnvironment, required: true, location_name: "sourceEnvironment"))
    SourceConfiguration.add_member(:source_s3_configuration, Shapes::ShapeRef.new(shape: SourceS3Configuration, required: true, location_name: "sourceS3Configuration"))
    SourceConfiguration.struct_class = Types::SourceConfiguration

    SourceConfigurationList.member = Shapes::ShapeRef.new(shape: SourceConfiguration)

    SourceProperties.add_member(:last_updated_date_time, Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: "lastUpdatedDateTime"))
    SourceProperties.add_member(:recommended_instance_type, Shapes::ShapeRef.new(shape: EC2InstanceType, location_name: "recommendedInstanceType"))
    SourceProperties.add_member(:identification_hints, Shapes::ShapeRef.new(shape: IdentificationHints, location_name: "identificationHints"))
    SourceProperties.add_member(:network_interfaces, Shapes::ShapeRef.new(shape: NetworkInterfaces, location_name: "networkInterfaces"))
    SourceProperties.add_member(:disks, Shapes::ShapeRef.new(shape: Disks, location_name: "disks"))
    SourceProperties.add_member(:cpus, Shapes::ShapeRef.new(shape: Cpus, location_name: "cpus"))
    SourceProperties.add_member(:ram_bytes, Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "ramBytes"))
    SourceProperties.add_member(:os, Shapes::ShapeRef.new(shape: OS, location_name: "os"))
    SourceProperties.struct_class = Types::SourceProperties

    SourceS3Configuration.add_member(:s3_bucket, Shapes::ShapeRef.new(shape: S3BucketName, required: true, location_name: "s3Bucket"))
    SourceS3Configuration.add_member(:s3_bucket_owner, Shapes::ShapeRef.new(shape: AccountID, required: true, location_name: "s3BucketOwner"))
    SourceS3Configuration.add_member(:s3_key, Shapes::ShapeRef.new(shape: S3KeyName, required: true, location_name: "s3Key"))
    SourceS3Configuration.struct_class = Types::SourceS3Configuration

    SourceServer.add_member(:source_server_id, Shapes::ShapeRef.new(shape: SourceServerID, location_name: "sourceServerID"))
    SourceServer.add_member(:arn, Shapes::ShapeRef.new(shape: ARN, location_name: "arn"))
    SourceServer.add_member(:is_archived, Shapes::ShapeRef.new(shape: Boolean, location_name: "isArchived"))
    SourceServer.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    SourceServer.add_member(:launched_instance, Shapes::ShapeRef.new(shape: LaunchedInstance, location_name: "launchedInstance"))
    SourceServer.add_member(:data_replication_info, Shapes::ShapeRef.new(shape: DataReplicationInfo, location_name: "dataReplicationInfo"))
    SourceServer.add_member(:life_cycle, Shapes::ShapeRef.new(shape: LifeCycle, location_name: "lifeCycle"))
    SourceServer.add_member(:source_properties, Shapes::ShapeRef.new(shape: SourceProperties, location_name: "sourceProperties"))
    SourceServer.add_member(:replication_type, Shapes::ShapeRef.new(shape: ReplicationType, location_name: "replicationType"))
    SourceServer.add_member(:vcenter_client_id, Shapes::ShapeRef.new(shape: VcenterClientID, location_name: "vcenterClientID"))
    SourceServer.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationID, location_name: "applicationID"))
    SourceServer.add_member(:user_provided_id, Shapes::ShapeRef.new(shape: UserProvidedId, location_name: "userProvidedID"))
    SourceServer.add_member(:fqdn_for_action_framework, Shapes::ShapeRef.new(shape: BoundedString, location_name: "fqdnForActionFramework"))
    SourceServer.add_member(:connector_action, Shapes::ShapeRef.new(shape: SourceServerConnectorAction, location_name: "connectorAction"))
    SourceServer.struct_class = Types::SourceServer

    SourceServerActionDocument.add_member(:action_id, Shapes::ShapeRef.new(shape: ActionID, location_name: "actionID"))
    SourceServerActionDocument.add_member(:action_name, Shapes::ShapeRef.new(shape: ActionName, location_name: "actionName"))
    SourceServerActionDocument.add_member(:document_identifier, Shapes::ShapeRef.new(shape: BoundedString, location_name: "documentIdentifier"))
    SourceServerActionDocument.add_member(:order, Shapes::ShapeRef.new(shape: OrderType, location_name: "order"))
    SourceServerActionDocument.add_member(:document_version, Shapes::ShapeRef.new(shape: DocumentVersion, location_name: "documentVersion"))
    SourceServerActionDocument.add_member(:active, Shapes::ShapeRef.new(shape: Boolean, location_name: "active"))
    SourceServerActionDocument.add_member(:timeout_seconds, Shapes::ShapeRef.new(shape: StrictlyPositiveInteger, location_name: "timeoutSeconds"))
    SourceServerActionDocument.add_member(:must_succeed_for_cutover, Shapes::ShapeRef.new(shape: Boolean, location_name: "mustSucceedForCutover"))
    SourceServerActionDocument.add_member(:parameters, Shapes::ShapeRef.new(shape: SsmDocumentParameters, location_name: "parameters"))
    SourceServerActionDocument.add_member(:external_parameters, Shapes::ShapeRef.new(shape: SsmDocumentExternalParameters, location_name: "externalParameters"))
    SourceServerActionDocument.add_member(:description, Shapes::ShapeRef.new(shape: ActionDescription, location_name: "description"))
    SourceServerActionDocument.add_member(:category, Shapes::ShapeRef.new(shape: ActionCategory, location_name: "category"))
    SourceServerActionDocument.struct_class = Types::SourceServerActionDocument

    SourceServerActionDocuments.member = Shapes::ShapeRef.new(shape: SourceServerActionDocument)

    SourceServerActionsRequestFilters.add_member(:action_i_ds, Shapes::ShapeRef.new(shape: ActionIDs, location_name: "actionIDs"))
    SourceServerActionsRequestFilters.struct_class = Types::SourceServerActionsRequestFilters

    SourceServerConnectorAction.add_member(:credentials_secret_arn, Shapes::ShapeRef.new(shape: SecretArn, location_name: "credentialsSecretArn"))
    SourceServerConnectorAction.add_member(:connector_arn, Shapes::ShapeRef.new(shape: ConnectorArn, location_name: "connectorArn"))
    SourceServerConnectorAction.struct_class = Types::SourceServerConnectorAction

    SourceServersList.member = Shapes::ShapeRef.new(shape: SourceServer)

    SplitConstruct.add_member(:cidr_block, Shapes::ShapeRef.new(shape: CidrBlock, location_name: "cidrBlock"))
    SplitConstruct.struct_class = Types::SplitConstruct

    SplitConstructs.member = Shapes::ShapeRef.new(shape: SplitConstruct)

    SplitOperation.add_member(:split_constructs, Shapes::ShapeRef.new(shape: SplitConstructs, location_name: "splitConstructs"))
    SplitOperation.struct_class = Types::SplitOperation

    SsmDocument.add_member(:action_name, Shapes::ShapeRef.new(shape: BoundedString, required: true, location_name: "actionName"))
    SsmDocument.add_member(:ssm_document_name, Shapes::ShapeRef.new(shape: SsmDocumentName, required: true, location_name: "ssmDocumentName"))
    SsmDocument.add_member(:timeout_seconds, Shapes::ShapeRef.new(shape: StrictlyPositiveInteger, location_name: "timeoutSeconds"))
    SsmDocument.add_member(:must_succeed_for_cutover, Shapes::ShapeRef.new(shape: Boolean, location_name: "mustSucceedForCutover"))
    SsmDocument.add_member(:parameters, Shapes::ShapeRef.new(shape: SsmDocumentParameters, location_name: "parameters"))
    SsmDocument.add_member(:external_parameters, Shapes::ShapeRef.new(shape: SsmDocumentExternalParameters, location_name: "externalParameters"))
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

    SsmParameterStoreParameter.add_member(:parameter_type, Shapes::ShapeRef.new(shape: SsmParameterStoreParameterType, required: true, location_name: "parameterType"))
    SsmParameterStoreParameter.add_member(:parameter_name, Shapes::ShapeRef.new(shape: SsmParameterStoreParameterName, required: true, location_name: "parameterName"))
    SsmParameterStoreParameter.struct_class = Types::SsmParameterStoreParameter

    SsmParameterStoreParameters.member = Shapes::ShapeRef.new(shape: SsmParameterStoreParameter)

    StartCutoverRequest.add_member(:source_server_i_ds, Shapes::ShapeRef.new(shape: StartCutoverRequestSourceServerIDs, required: true, location_name: "sourceServerIDs"))
    StartCutoverRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    StartCutoverRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountID, location_name: "accountID"))
    StartCutoverRequest.struct_class = Types::StartCutoverRequest

    StartCutoverRequestSourceServerIDs.member = Shapes::ShapeRef.new(shape: SourceServerID)

    StartCutoverResponse.add_member(:job, Shapes::ShapeRef.new(shape: Job, location_name: "job"))
    StartCutoverResponse.struct_class = Types::StartCutoverResponse

    StartExportRequest.add_member(:s3_bucket, Shapes::ShapeRef.new(shape: S3BucketName, required: true, location_name: "s3Bucket"))
    StartExportRequest.add_member(:s3_key, Shapes::ShapeRef.new(shape: S3Key, required: true, location_name: "s3Key"))
    StartExportRequest.add_member(:s3_bucket_owner, Shapes::ShapeRef.new(shape: AccountID, location_name: "s3BucketOwner"))
    StartExportRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    StartExportRequest.struct_class = Types::StartExportRequest

    StartExportResponse.add_member(:export_task, Shapes::ShapeRef.new(shape: ExportTask, location_name: "exportTask"))
    StartExportResponse.struct_class = Types::StartExportResponse

    StartImportFileEnrichmentRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientIdempotencyToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    StartImportFileEnrichmentRequest.add_member(:s3_bucket_source, Shapes::ShapeRef.new(shape: EnrichmentSourceS3Configuration, required: true, location_name: "s3BucketSource"))
    StartImportFileEnrichmentRequest.add_member(:s3_bucket_target, Shapes::ShapeRef.new(shape: EnrichmentTargetS3Configuration, required: true, location_name: "s3BucketTarget"))
    StartImportFileEnrichmentRequest.add_member(:ip_assignment_strategy, Shapes::ShapeRef.new(shape: IpAssignmentStrategy, location_name: "ipAssignmentStrategy"))
    StartImportFileEnrichmentRequest.struct_class = Types::StartImportFileEnrichmentRequest

    StartImportFileEnrichmentResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: ImportFileEnrichmentJobID, location_name: "jobID"))
    StartImportFileEnrichmentResponse.struct_class = Types::StartImportFileEnrichmentResponse

    StartImportRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientIdempotencyToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    StartImportRequest.add_member(:s3_bucket_source, Shapes::ShapeRef.new(shape: S3BucketSource, required: true, location_name: "s3BucketSource"))
    StartImportRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    StartImportRequest.struct_class = Types::StartImportRequest

    StartImportResponse.add_member(:import_task, Shapes::ShapeRef.new(shape: ImportTask, location_name: "importTask"))
    StartImportResponse.struct_class = Types::StartImportResponse

    StartNetworkMigrationAnalysisRequest.add_member(:network_migration_execution_id, Shapes::ShapeRef.new(shape: NetworkMigrationExecutionID, required: true, location_name: "networkMigrationExecutionID"))
    StartNetworkMigrationAnalysisRequest.add_member(:network_migration_definition_id, Shapes::ShapeRef.new(shape: NetworkMigrationDefinitionID, required: true, location_name: "networkMigrationDefinitionID"))
    StartNetworkMigrationAnalysisRequest.struct_class = Types::StartNetworkMigrationAnalysisRequest

    StartNetworkMigrationAnalysisResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: NetworkMigrationJobID, location_name: "jobID"))
    StartNetworkMigrationAnalysisResponse.struct_class = Types::StartNetworkMigrationAnalysisResponse

    StartNetworkMigrationCodeGenerationRequest.add_member(:network_migration_execution_id, Shapes::ShapeRef.new(shape: NetworkMigrationExecutionID, required: true, location_name: "networkMigrationExecutionID"))
    StartNetworkMigrationCodeGenerationRequest.add_member(:network_migration_definition_id, Shapes::ShapeRef.new(shape: NetworkMigrationDefinitionID, required: true, location_name: "networkMigrationDefinitionID"))
    StartNetworkMigrationCodeGenerationRequest.add_member(:code_generation_output_format_types, Shapes::ShapeRef.new(shape: CodeGenerationOutputFormatTypes, location_name: "codeGenerationOutputFormatTypes"))
    StartNetworkMigrationCodeGenerationRequest.struct_class = Types::StartNetworkMigrationCodeGenerationRequest

    StartNetworkMigrationCodeGenerationResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: NetworkMigrationJobID, location_name: "jobID"))
    StartNetworkMigrationCodeGenerationResponse.struct_class = Types::StartNetworkMigrationCodeGenerationResponse

    StartNetworkMigrationDeployerJobResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: NetworkMigrationJobID, location_name: "jobID"))
    StartNetworkMigrationDeployerJobResponse.struct_class = Types::StartNetworkMigrationDeployerJobResponse

    StartNetworkMigrationDeploymentRequest.add_member(:network_migration_execution_id, Shapes::ShapeRef.new(shape: NetworkMigrationExecutionID, required: true, location_name: "networkMigrationExecutionID"))
    StartNetworkMigrationDeploymentRequest.add_member(:network_migration_definition_id, Shapes::ShapeRef.new(shape: NetworkMigrationDefinitionID, required: true, location_name: "networkMigrationDefinitionID"))
    StartNetworkMigrationDeploymentRequest.struct_class = Types::StartNetworkMigrationDeploymentRequest

    StartNetworkMigrationMappingRequest.add_member(:network_migration_execution_id, Shapes::ShapeRef.new(shape: NetworkMigrationExecutionID, required: true, location_name: "networkMigrationExecutionID"))
    StartNetworkMigrationMappingRequest.add_member(:network_migration_definition_id, Shapes::ShapeRef.new(shape: NetworkMigrationDefinitionID, required: true, location_name: "networkMigrationDefinitionID"))
    StartNetworkMigrationMappingRequest.add_member(:security_group_mapping_strategy, Shapes::ShapeRef.new(shape: SecurityGroupMappingStrategy, location_name: "securityGroupMappingStrategy"))
    StartNetworkMigrationMappingRequest.struct_class = Types::StartNetworkMigrationMappingRequest

    StartNetworkMigrationMappingResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: NetworkMigrationJobID, location_name: "jobID"))
    StartNetworkMigrationMappingResponse.struct_class = Types::StartNetworkMigrationMappingResponse

    StartNetworkMigrationMappingUpdateConstruct.add_member(:segment_id, Shapes::ShapeRef.new(shape: SegmentID, required: true, location_name: "segmentID"))
    StartNetworkMigrationMappingUpdateConstruct.add_member(:construct_id, Shapes::ShapeRef.new(shape: ConstructID, required: true, location_name: "constructID"))
    StartNetworkMigrationMappingUpdateConstruct.add_member(:construct_type, Shapes::ShapeRef.new(shape: NetworkMigrationMapperSegmentConstructType, required: true, location_name: "constructType"))
    StartNetworkMigrationMappingUpdateConstruct.add_member(:operation, Shapes::ShapeRef.new(shape: OperationUnion, location_name: "operation"))
    StartNetworkMigrationMappingUpdateConstruct.struct_class = Types::StartNetworkMigrationMappingUpdateConstruct

    StartNetworkMigrationMappingUpdateConstructs.member = Shapes::ShapeRef.new(shape: StartNetworkMigrationMappingUpdateConstruct)

    StartNetworkMigrationMappingUpdateRequest.add_member(:network_migration_execution_id, Shapes::ShapeRef.new(shape: NetworkMigrationExecutionID, required: true, location_name: "networkMigrationExecutionID"))
    StartNetworkMigrationMappingUpdateRequest.add_member(:network_migration_definition_id, Shapes::ShapeRef.new(shape: NetworkMigrationDefinitionID, required: true, location_name: "networkMigrationDefinitionID"))
    StartNetworkMigrationMappingUpdateRequest.add_member(:constructs, Shapes::ShapeRef.new(shape: StartNetworkMigrationMappingUpdateConstructs, location_name: "constructs"))
    StartNetworkMigrationMappingUpdateRequest.add_member(:segments, Shapes::ShapeRef.new(shape: StartNetworkMigrationMappingUpdateSegments, location_name: "segments"))
    StartNetworkMigrationMappingUpdateRequest.struct_class = Types::StartNetworkMigrationMappingUpdateRequest

    StartNetworkMigrationMappingUpdateResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: NetworkMigrationJobID, location_name: "jobID"))
    StartNetworkMigrationMappingUpdateResponse.struct_class = Types::StartNetworkMigrationMappingUpdateResponse

    StartNetworkMigrationMappingUpdateSegment.add_member(:segment_id, Shapes::ShapeRef.new(shape: SegmentID, required: true, location_name: "segmentID"))
    StartNetworkMigrationMappingUpdateSegment.add_member(:target_account, Shapes::ShapeRef.new(shape: AccountID, location_name: "targetAccount"))
    StartNetworkMigrationMappingUpdateSegment.add_member(:scope_tags, Shapes::ShapeRef.new(shape: ScopeTagsMap, location_name: "scopeTags"))
    StartNetworkMigrationMappingUpdateSegment.struct_class = Types::StartNetworkMigrationMappingUpdateSegment

    StartNetworkMigrationMappingUpdateSegments.member = Shapes::ShapeRef.new(shape: StartNetworkMigrationMappingUpdateSegment)

    StartReplicationRequest.add_member(:source_server_id, Shapes::ShapeRef.new(shape: SourceServerID, required: true, location_name: "sourceServerID"))
    StartReplicationRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountID, location_name: "accountID"))
    StartReplicationRequest.struct_class = Types::StartReplicationRequest

    StartTestRequest.add_member(:source_server_i_ds, Shapes::ShapeRef.new(shape: StartTestRequestSourceServerIDs, required: true, location_name: "sourceServerIDs"))
    StartTestRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    StartTestRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountID, location_name: "accountID"))
    StartTestRequest.struct_class = Types::StartTestRequest

    StartTestRequestSourceServerIDs.member = Shapes::ShapeRef.new(shape: SourceServerID)

    StartTestResponse.add_member(:job, Shapes::ShapeRef.new(shape: Job, location_name: "job"))
    StartTestResponse.struct_class = Types::StartTestResponse

    StopReplicationRequest.add_member(:source_server_id, Shapes::ShapeRef.new(shape: SourceServerID, required: true, location_name: "sourceServerID"))
    StopReplicationRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountID, location_name: "accountID"))
    StopReplicationRequest.struct_class = Types::StopReplicationRequest

    TagKeys.member = Shapes::ShapeRef.new(shape: TagKey)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location: "uri", location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagsMap.key = Shapes::ShapeRef.new(shape: TagKey)
    TagsMap.value = Shapes::ShapeRef.new(shape: TagValue)

    TargetNetwork.add_member(:topology, Shapes::ShapeRef.new(shape: TargetNetworkTopology, required: true, location_name: "topology"))
    TargetNetwork.add_member(:inbound_cidr, Shapes::ShapeRef.new(shape: Cidr, location_name: "inboundCidr"))
    TargetNetwork.add_member(:outbound_cidr, Shapes::ShapeRef.new(shape: Cidr, location_name: "outboundCidr"))
    TargetNetwork.add_member(:inspection_cidr, Shapes::ShapeRef.new(shape: Cidr, location_name: "inspectionCidr"))
    TargetNetwork.struct_class = Types::TargetNetwork

    TargetNetworkUpdate.add_member(:topology, Shapes::ShapeRef.new(shape: TargetNetworkTopology, location_name: "topology"))
    TargetNetworkUpdate.add_member(:inbound_cidr, Shapes::ShapeRef.new(shape: Cidr, location_name: "inboundCidr"))
    TargetNetworkUpdate.add_member(:outbound_cidr, Shapes::ShapeRef.new(shape: Cidr, location_name: "outboundCidr"))
    TargetNetworkUpdate.add_member(:inspection_cidr, Shapes::ShapeRef.new(shape: Cidr, location_name: "inspectionCidr"))
    TargetNetworkUpdate.struct_class = Types::TargetNetworkUpdate

    TargetS3Configuration.add_member(:s3_bucket, Shapes::ShapeRef.new(shape: S3BucketName, required: true, location_name: "s3Bucket"))
    TargetS3Configuration.add_member(:s3_bucket_owner, Shapes::ShapeRef.new(shape: AccountID, required: true, location_name: "s3BucketOwner"))
    TargetS3Configuration.struct_class = Types::TargetS3Configuration

    TargetS3ConfigurationUpdate.add_member(:s3_bucket, Shapes::ShapeRef.new(shape: S3BucketName, location_name: "s3Bucket"))
    TargetS3ConfigurationUpdate.add_member(:s3_bucket_owner, Shapes::ShapeRef.new(shape: AccountID, location_name: "s3BucketOwner"))
    TargetS3ConfigurationUpdate.struct_class = Types::TargetS3ConfigurationUpdate

    TemplateActionDocument.add_member(:action_id, Shapes::ShapeRef.new(shape: ActionID, location_name: "actionID"))
    TemplateActionDocument.add_member(:action_name, Shapes::ShapeRef.new(shape: BoundedString, location_name: "actionName"))
    TemplateActionDocument.add_member(:document_identifier, Shapes::ShapeRef.new(shape: BoundedString, location_name: "documentIdentifier"))
    TemplateActionDocument.add_member(:order, Shapes::ShapeRef.new(shape: OrderType, location_name: "order"))
    TemplateActionDocument.add_member(:document_version, Shapes::ShapeRef.new(shape: DocumentVersion, location_name: "documentVersion"))
    TemplateActionDocument.add_member(:active, Shapes::ShapeRef.new(shape: Boolean, location_name: "active"))
    TemplateActionDocument.add_member(:timeout_seconds, Shapes::ShapeRef.new(shape: StrictlyPositiveInteger, location_name: "timeoutSeconds"))
    TemplateActionDocument.add_member(:must_succeed_for_cutover, Shapes::ShapeRef.new(shape: Boolean, location_name: "mustSucceedForCutover"))
    TemplateActionDocument.add_member(:parameters, Shapes::ShapeRef.new(shape: SsmDocumentParameters, location_name: "parameters"))
    TemplateActionDocument.add_member(:operating_system, Shapes::ShapeRef.new(shape: OperatingSystemString, location_name: "operatingSystem"))
    TemplateActionDocument.add_member(:external_parameters, Shapes::ShapeRef.new(shape: SsmDocumentExternalParameters, location_name: "externalParameters"))
    TemplateActionDocument.add_member(:description, Shapes::ShapeRef.new(shape: ActionDescription, location_name: "description"))
    TemplateActionDocument.add_member(:category, Shapes::ShapeRef.new(shape: ActionCategory, location_name: "category"))
    TemplateActionDocument.struct_class = Types::TemplateActionDocument

    TemplateActionDocuments.member = Shapes::ShapeRef.new(shape: TemplateActionDocument)

    TemplateActionsRequestFilters.add_member(:action_i_ds, Shapes::ShapeRef.new(shape: ActionIDs, location_name: "actionIDs"))
    TemplateActionsRequestFilters.struct_class = Types::TemplateActionsRequestFilters

    TerminateTargetInstancesRequest.add_member(:source_server_i_ds, Shapes::ShapeRef.new(shape: TerminateTargetInstancesRequestSourceServerIDs, required: true, location_name: "sourceServerIDs"))
    TerminateTargetInstancesRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    TerminateTargetInstancesRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountID, location_name: "accountID"))
    TerminateTargetInstancesRequest.struct_class = Types::TerminateTargetInstancesRequest

    TerminateTargetInstancesRequestSourceServerIDs.member = Shapes::ShapeRef.new(shape: SourceServerID)

    TerminateTargetInstancesResponse.add_member(:job, Shapes::ShapeRef.new(shape: Job, location_name: "job"))
    TerminateTargetInstancesResponse.struct_class = Types::TerminateTargetInstancesResponse

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: LargeBoundedString, required: true, location_name: "message"))
    ThrottlingException.add_member(:service_code, Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: "serviceCode"))
    ThrottlingException.add_member(:quota_code, Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: "quotaCode"))
    ThrottlingException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: LargeBoundedString, location: "header", location_name: "Retry-After"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UnarchiveApplicationRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationID, required: true, location_name: "applicationID"))
    UnarchiveApplicationRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountID, location_name: "accountID"))
    UnarchiveApplicationRequest.struct_class = Types::UnarchiveApplicationRequest

    UnarchiveWaveRequest.add_member(:wave_id, Shapes::ShapeRef.new(shape: WaveID, required: true, location_name: "waveID"))
    UnarchiveWaveRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountID, location_name: "accountID"))
    UnarchiveWaveRequest.struct_class = Types::UnarchiveWaveRequest

    UninitializedAccountException.add_member(:message, Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: "message"))
    UninitializedAccountException.add_member(:code, Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: "code"))
    UninitializedAccountException.struct_class = Types::UninitializedAccountException

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location: "uri", location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeys, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UpdateApplicationRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationID, required: true, location_name: "applicationID"))
    UpdateApplicationRequest.add_member(:name, Shapes::ShapeRef.new(shape: ApplicationName, location_name: "name"))
    UpdateApplicationRequest.add_member(:description, Shapes::ShapeRef.new(shape: ApplicationDescription, location_name: "description"))
    UpdateApplicationRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountID, location_name: "accountID"))
    UpdateApplicationRequest.struct_class = Types::UpdateApplicationRequest

    UpdateConnectorRequest.add_member(:connector_id, Shapes::ShapeRef.new(shape: ConnectorID, required: true, location_name: "connectorID"))
    UpdateConnectorRequest.add_member(:name, Shapes::ShapeRef.new(shape: ConnectorName, location_name: "name"))
    UpdateConnectorRequest.add_member(:ssm_command_config, Shapes::ShapeRef.new(shape: ConnectorSsmCommandConfig, location_name: "ssmCommandConfig"))
    UpdateConnectorRequest.struct_class = Types::UpdateConnectorRequest

    UpdateLaunchConfigurationRequest.add_member(:source_server_id, Shapes::ShapeRef.new(shape: SourceServerID, required: true, location_name: "sourceServerID"))
    UpdateLaunchConfigurationRequest.add_member(:name, Shapes::ShapeRef.new(shape: SmallBoundedString, location_name: "name"))
    UpdateLaunchConfigurationRequest.add_member(:launch_disposition, Shapes::ShapeRef.new(shape: LaunchDisposition, location_name: "launchDisposition"))
    UpdateLaunchConfigurationRequest.add_member(:target_instance_type_right_sizing_method, Shapes::ShapeRef.new(shape: TargetInstanceTypeRightSizingMethod, location_name: "targetInstanceTypeRightSizingMethod"))
    UpdateLaunchConfigurationRequest.add_member(:copy_private_ip, Shapes::ShapeRef.new(shape: Boolean, location_name: "copyPrivateIp"))
    UpdateLaunchConfigurationRequest.add_member(:copy_tags, Shapes::ShapeRef.new(shape: Boolean, location_name: "copyTags"))
    UpdateLaunchConfigurationRequest.add_member(:licensing, Shapes::ShapeRef.new(shape: Licensing, location_name: "licensing"))
    UpdateLaunchConfigurationRequest.add_member(:boot_mode, Shapes::ShapeRef.new(shape: BootMode, location_name: "bootMode"))
    UpdateLaunchConfigurationRequest.add_member(:post_launch_actions, Shapes::ShapeRef.new(shape: PostLaunchActions, location_name: "postLaunchActions"))
    UpdateLaunchConfigurationRequest.add_member(:enable_map_auto_tagging, Shapes::ShapeRef.new(shape: Boolean, location_name: "enableMapAutoTagging"))
    UpdateLaunchConfigurationRequest.add_member(:map_auto_tagging_mpe_id, Shapes::ShapeRef.new(shape: TagValue, location_name: "mapAutoTaggingMpeID"))
    UpdateLaunchConfigurationRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountID, location_name: "accountID"))
    UpdateLaunchConfigurationRequest.struct_class = Types::UpdateLaunchConfigurationRequest

    UpdateLaunchConfigurationTemplateRequest.add_member(:launch_configuration_template_id, Shapes::ShapeRef.new(shape: LaunchConfigurationTemplateID, required: true, location_name: "launchConfigurationTemplateID"))
    UpdateLaunchConfigurationTemplateRequest.add_member(:post_launch_actions, Shapes::ShapeRef.new(shape: PostLaunchActions, location_name: "postLaunchActions"))
    UpdateLaunchConfigurationTemplateRequest.add_member(:enable_map_auto_tagging, Shapes::ShapeRef.new(shape: Boolean, location_name: "enableMapAutoTagging"))
    UpdateLaunchConfigurationTemplateRequest.add_member(:map_auto_tagging_mpe_id, Shapes::ShapeRef.new(shape: TagValue, location_name: "mapAutoTaggingMpeID"))
    UpdateLaunchConfigurationTemplateRequest.add_member(:launch_disposition, Shapes::ShapeRef.new(shape: LaunchDisposition, location_name: "launchDisposition"))
    UpdateLaunchConfigurationTemplateRequest.add_member(:target_instance_type_right_sizing_method, Shapes::ShapeRef.new(shape: TargetInstanceTypeRightSizingMethod, location_name: "targetInstanceTypeRightSizingMethod"))
    UpdateLaunchConfigurationTemplateRequest.add_member(:copy_private_ip, Shapes::ShapeRef.new(shape: Boolean, location_name: "copyPrivateIp"))
    UpdateLaunchConfigurationTemplateRequest.add_member(:associate_public_ip_address, Shapes::ShapeRef.new(shape: Boolean, location_name: "associatePublicIpAddress"))
    UpdateLaunchConfigurationTemplateRequest.add_member(:copy_tags, Shapes::ShapeRef.new(shape: Boolean, location_name: "copyTags"))
    UpdateLaunchConfigurationTemplateRequest.add_member(:licensing, Shapes::ShapeRef.new(shape: Licensing, location_name: "licensing"))
    UpdateLaunchConfigurationTemplateRequest.add_member(:boot_mode, Shapes::ShapeRef.new(shape: BootMode, location_name: "bootMode"))
    UpdateLaunchConfigurationTemplateRequest.add_member(:small_volume_max_size, Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "smallVolumeMaxSize"))
    UpdateLaunchConfigurationTemplateRequest.add_member(:small_volume_conf, Shapes::ShapeRef.new(shape: LaunchTemplateDiskConf, location_name: "smallVolumeConf"))
    UpdateLaunchConfigurationTemplateRequest.add_member(:large_volume_conf, Shapes::ShapeRef.new(shape: LaunchTemplateDiskConf, location_name: "largeVolumeConf"))
    UpdateLaunchConfigurationTemplateRequest.add_member(:enable_parameters_encryption, Shapes::ShapeRef.new(shape: Boolean, location_name: "enableParametersEncryption"))
    UpdateLaunchConfigurationTemplateRequest.add_member(:parameters_encryption_key, Shapes::ShapeRef.new(shape: ARN, location_name: "parametersEncryptionKey"))
    UpdateLaunchConfigurationTemplateRequest.struct_class = Types::UpdateLaunchConfigurationTemplateRequest

    UpdateNetworkMigrationDefinitionRequest.add_member(:network_migration_definition_id, Shapes::ShapeRef.new(shape: NetworkMigrationDefinitionID, required: true, location_name: "networkMigrationDefinitionID"))
    UpdateNetworkMigrationDefinitionRequest.add_member(:name, Shapes::ShapeRef.new(shape: NetworkMigrationDefinitionName, location_name: "name"))
    UpdateNetworkMigrationDefinitionRequest.add_member(:description, Shapes::ShapeRef.new(shape: NetworkMigrationDefinitionDescription, location_name: "description"))
    UpdateNetworkMigrationDefinitionRequest.add_member(:source_configurations, Shapes::ShapeRef.new(shape: SourceConfigurationList, location_name: "sourceConfigurations"))
    UpdateNetworkMigrationDefinitionRequest.add_member(:target_s3_configuration, Shapes::ShapeRef.new(shape: TargetS3ConfigurationUpdate, location_name: "targetS3Configuration"))
    UpdateNetworkMigrationDefinitionRequest.add_member(:target_network, Shapes::ShapeRef.new(shape: TargetNetworkUpdate, location_name: "targetNetwork"))
    UpdateNetworkMigrationDefinitionRequest.add_member(:target_deployment, Shapes::ShapeRef.new(shape: TargetDeployment, location_name: "targetDeployment"))
    UpdateNetworkMigrationDefinitionRequest.add_member(:scope_tags, Shapes::ShapeRef.new(shape: ScopeTagsMap, location_name: "scopeTags"))
    UpdateNetworkMigrationDefinitionRequest.struct_class = Types::UpdateNetworkMigrationDefinitionRequest

    UpdateNetworkMigrationMapperSegmentRequest.add_member(:network_migration_definition_id, Shapes::ShapeRef.new(shape: NetworkMigrationDefinitionID, required: true, location_name: "networkMigrationDefinitionID"))
    UpdateNetworkMigrationMapperSegmentRequest.add_member(:network_migration_execution_id, Shapes::ShapeRef.new(shape: NetworkMigrationExecutionID, required: true, location_name: "networkMigrationExecutionID"))
    UpdateNetworkMigrationMapperSegmentRequest.add_member(:segment_id, Shapes::ShapeRef.new(shape: SegmentID, required: true, location_name: "segmentID"))
    UpdateNetworkMigrationMapperSegmentRequest.add_member(:scope_tags, Shapes::ShapeRef.new(shape: ScopeTagsMap, location_name: "scopeTags"))
    UpdateNetworkMigrationMapperSegmentRequest.struct_class = Types::UpdateNetworkMigrationMapperSegmentRequest

    UpdateOperation.add_member(:name, Shapes::ShapeRef.new(shape: SegmentConstructName, location_name: "name"))
    UpdateOperation.add_member(:excluded, Shapes::ShapeRef.new(shape: Boolean, location_name: "excluded"))
    UpdateOperation.add_member(:properties, Shapes::ShapeRef.new(shape: ConstructProperties, location_name: "properties"))
    UpdateOperation.struct_class = Types::UpdateOperation

    UpdateReplicationConfigurationRequest.add_member(:source_server_id, Shapes::ShapeRef.new(shape: SourceServerID, required: true, location_name: "sourceServerID"))
    UpdateReplicationConfigurationRequest.add_member(:name, Shapes::ShapeRef.new(shape: SmallBoundedString, location_name: "name"))
    UpdateReplicationConfigurationRequest.add_member(:staging_area_subnet_id, Shapes::ShapeRef.new(shape: SubnetID, location_name: "stagingAreaSubnetId"))
    UpdateReplicationConfigurationRequest.add_member(:associate_default_security_group, Shapes::ShapeRef.new(shape: Boolean, location_name: "associateDefaultSecurityGroup"))
    UpdateReplicationConfigurationRequest.add_member(:replication_servers_security_groups_i_ds, Shapes::ShapeRef.new(shape: ReplicationServersSecurityGroupsIDs, location_name: "replicationServersSecurityGroupsIDs"))
    UpdateReplicationConfigurationRequest.add_member(:replication_server_instance_type, Shapes::ShapeRef.new(shape: EC2InstanceType, location_name: "replicationServerInstanceType"))
    UpdateReplicationConfigurationRequest.add_member(:use_dedicated_replication_server, Shapes::ShapeRef.new(shape: Boolean, location_name: "useDedicatedReplicationServer"))
    UpdateReplicationConfigurationRequest.add_member(:default_large_staging_disk_type, Shapes::ShapeRef.new(shape: ReplicationConfigurationDefaultLargeStagingDiskType, location_name: "defaultLargeStagingDiskType"))
    UpdateReplicationConfigurationRequest.add_member(:replicated_disks, Shapes::ShapeRef.new(shape: ReplicationConfigurationReplicatedDisks, location_name: "replicatedDisks"))
    UpdateReplicationConfigurationRequest.add_member(:ebs_encryption, Shapes::ShapeRef.new(shape: ReplicationConfigurationEbsEncryption, location_name: "ebsEncryption"))
    UpdateReplicationConfigurationRequest.add_member(:ebs_encryption_key_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "ebsEncryptionKeyArn"))
    UpdateReplicationConfigurationRequest.add_member(:bandwidth_throttling, Shapes::ShapeRef.new(shape: BandwidthThrottling, location_name: "bandwidthThrottling"))
    UpdateReplicationConfigurationRequest.add_member(:data_plane_routing, Shapes::ShapeRef.new(shape: ReplicationConfigurationDataPlaneRouting, location_name: "dataPlaneRouting"))
    UpdateReplicationConfigurationRequest.add_member(:create_public_ip, Shapes::ShapeRef.new(shape: Boolean, location_name: "createPublicIP"))
    UpdateReplicationConfigurationRequest.add_member(:staging_area_tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "stagingAreaTags"))
    UpdateReplicationConfigurationRequest.add_member(:use_fips_endpoint, Shapes::ShapeRef.new(shape: Boolean, location_name: "useFipsEndpoint"))
    UpdateReplicationConfigurationRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountID, location_name: "accountID"))
    UpdateReplicationConfigurationRequest.add_member(:internet_protocol, Shapes::ShapeRef.new(shape: InternetProtocol, location_name: "internetProtocol"))
    UpdateReplicationConfigurationRequest.add_member(:store_snapshot_on_local_zone, Shapes::ShapeRef.new(shape: Boolean, location_name: "storeSnapshotOnLocalZone"))
    UpdateReplicationConfigurationRequest.struct_class = Types::UpdateReplicationConfigurationRequest

    UpdateReplicationConfigurationTemplateRequest.add_member(:replication_configuration_template_id, Shapes::ShapeRef.new(shape: ReplicationConfigurationTemplateID, required: true, location_name: "replicationConfigurationTemplateID"))
    UpdateReplicationConfigurationTemplateRequest.add_member(:arn, Shapes::ShapeRef.new(shape: ARN, location_name: "arn"))
    UpdateReplicationConfigurationTemplateRequest.add_member(:staging_area_subnet_id, Shapes::ShapeRef.new(shape: SubnetID, location_name: "stagingAreaSubnetId"))
    UpdateReplicationConfigurationTemplateRequest.add_member(:associate_default_security_group, Shapes::ShapeRef.new(shape: Boolean, location_name: "associateDefaultSecurityGroup"))
    UpdateReplicationConfigurationTemplateRequest.add_member(:replication_servers_security_groups_i_ds, Shapes::ShapeRef.new(shape: ReplicationServersSecurityGroupsIDs, location_name: "replicationServersSecurityGroupsIDs"))
    UpdateReplicationConfigurationTemplateRequest.add_member(:replication_server_instance_type, Shapes::ShapeRef.new(shape: EC2InstanceType, location_name: "replicationServerInstanceType"))
    UpdateReplicationConfigurationTemplateRequest.add_member(:use_dedicated_replication_server, Shapes::ShapeRef.new(shape: Boolean, location_name: "useDedicatedReplicationServer"))
    UpdateReplicationConfigurationTemplateRequest.add_member(:default_large_staging_disk_type, Shapes::ShapeRef.new(shape: ReplicationConfigurationDefaultLargeStagingDiskType, location_name: "defaultLargeStagingDiskType"))
    UpdateReplicationConfigurationTemplateRequest.add_member(:ebs_encryption, Shapes::ShapeRef.new(shape: ReplicationConfigurationEbsEncryption, location_name: "ebsEncryption"))
    UpdateReplicationConfigurationTemplateRequest.add_member(:ebs_encryption_key_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "ebsEncryptionKeyArn"))
    UpdateReplicationConfigurationTemplateRequest.add_member(:bandwidth_throttling, Shapes::ShapeRef.new(shape: BandwidthThrottling, location_name: "bandwidthThrottling"))
    UpdateReplicationConfigurationTemplateRequest.add_member(:data_plane_routing, Shapes::ShapeRef.new(shape: ReplicationConfigurationDataPlaneRouting, location_name: "dataPlaneRouting"))
    UpdateReplicationConfigurationTemplateRequest.add_member(:create_public_ip, Shapes::ShapeRef.new(shape: Boolean, location_name: "createPublicIP"))
    UpdateReplicationConfigurationTemplateRequest.add_member(:staging_area_tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "stagingAreaTags"))
    UpdateReplicationConfigurationTemplateRequest.add_member(:use_fips_endpoint, Shapes::ShapeRef.new(shape: Boolean, location_name: "useFipsEndpoint"))
    UpdateReplicationConfigurationTemplateRequest.add_member(:internet_protocol, Shapes::ShapeRef.new(shape: InternetProtocol, location_name: "internetProtocol"))
    UpdateReplicationConfigurationTemplateRequest.add_member(:store_snapshot_on_local_zone, Shapes::ShapeRef.new(shape: Boolean, location_name: "storeSnapshotOnLocalZone"))
    UpdateReplicationConfigurationTemplateRequest.struct_class = Types::UpdateReplicationConfigurationTemplateRequest

    UpdateSourceServerReplicationTypeRequest.add_member(:source_server_id, Shapes::ShapeRef.new(shape: SourceServerID, required: true, location_name: "sourceServerID"))
    UpdateSourceServerReplicationTypeRequest.add_member(:replication_type, Shapes::ShapeRef.new(shape: ReplicationType, required: true, location_name: "replicationType"))
    UpdateSourceServerReplicationTypeRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountID, location_name: "accountID"))
    UpdateSourceServerReplicationTypeRequest.struct_class = Types::UpdateSourceServerReplicationTypeRequest

    UpdateSourceServerRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountID, location_name: "accountID"))
    UpdateSourceServerRequest.add_member(:source_server_id, Shapes::ShapeRef.new(shape: SourceServerID, required: true, location_name: "sourceServerID"))
    UpdateSourceServerRequest.add_member(:connector_action, Shapes::ShapeRef.new(shape: SourceServerConnectorAction, location_name: "connectorAction"))
    UpdateSourceServerRequest.struct_class = Types::UpdateSourceServerRequest

    UpdateWaveRequest.add_member(:wave_id, Shapes::ShapeRef.new(shape: WaveID, required: true, location_name: "waveID"))
    UpdateWaveRequest.add_member(:name, Shapes::ShapeRef.new(shape: WaveName, location_name: "name"))
    UpdateWaveRequest.add_member(:description, Shapes::ShapeRef.new(shape: WaveDescription, location_name: "description"))
    UpdateWaveRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountID, location_name: "accountID"))
    UpdateWaveRequest.struct_class = Types::UpdateWaveRequest

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: "message"))
    ValidationException.add_member(:code, Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: "code"))
    ValidationException.add_member(:reason, Shapes::ShapeRef.new(shape: ValidationExceptionReason, location_name: "reason"))
    ValidationException.add_member(:field_list, Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: "fieldList"))
    ValidationException.struct_class = Types::ValidationException

    ValidationExceptionField.add_member(:name, Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: "name"))
    ValidationExceptionField.add_member(:message, Shapes::ShapeRef.new(shape: LargeBoundedString, location_name: "message"))
    ValidationExceptionField.struct_class = Types::ValidationExceptionField

    ValidationExceptionFieldList.member = Shapes::ShapeRef.new(shape: ValidationExceptionField)

    VcenterClient.add_member(:vcenter_client_id, Shapes::ShapeRef.new(shape: VcenterClientID, location_name: "vcenterClientID"))
    VcenterClient.add_member(:arn, Shapes::ShapeRef.new(shape: ARN, location_name: "arn"))
    VcenterClient.add_member(:hostname, Shapes::ShapeRef.new(shape: BoundedString, location_name: "hostname"))
    VcenterClient.add_member(:vcenter_uuid, Shapes::ShapeRef.new(shape: BoundedString, location_name: "vcenterUUID"))
    VcenterClient.add_member(:datacenter_name, Shapes::ShapeRef.new(shape: BoundedString, location_name: "datacenterName"))
    VcenterClient.add_member(:last_seen_datetime, Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: "lastSeenDatetime"))
    VcenterClient.add_member(:source_server_tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "sourceServerTags"))
    VcenterClient.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    VcenterClient.struct_class = Types::VcenterClient

    VcenterClientList.member = Shapes::ShapeRef.new(shape: VcenterClient)

    VpcIDsFilter.member = Shapes::ShapeRef.new(shape: VpcID)

    Wave.add_member(:wave_id, Shapes::ShapeRef.new(shape: WaveID, location_name: "waveID"))
    Wave.add_member(:arn, Shapes::ShapeRef.new(shape: ARN, location_name: "arn"))
    Wave.add_member(:name, Shapes::ShapeRef.new(shape: WaveName, location_name: "name"))
    Wave.add_member(:description, Shapes::ShapeRef.new(shape: WaveDescription, location_name: "description"))
    Wave.add_member(:is_archived, Shapes::ShapeRef.new(shape: Boolean, location_name: "isArchived"))
    Wave.add_member(:wave_aggregated_status, Shapes::ShapeRef.new(shape: WaveAggregatedStatus, location_name: "waveAggregatedStatus"))
    Wave.add_member(:creation_date_time, Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: "creationDateTime"))
    Wave.add_member(:last_modified_date_time, Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: "lastModifiedDateTime"))
    Wave.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    Wave.struct_class = Types::Wave

    WaveAggregatedStatus.add_member(:last_update_date_time, Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: "lastUpdateDateTime"))
    WaveAggregatedStatus.add_member(:replication_started_date_time, Shapes::ShapeRef.new(shape: ISO8601DatetimeString, location_name: "replicationStartedDateTime"))
    WaveAggregatedStatus.add_member(:health_status, Shapes::ShapeRef.new(shape: WaveHealthStatus, location_name: "healthStatus"))
    WaveAggregatedStatus.add_member(:progress_status, Shapes::ShapeRef.new(shape: WaveProgressStatus, location_name: "progressStatus"))
    WaveAggregatedStatus.add_member(:total_applications, Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "totalApplications"))
    WaveAggregatedStatus.struct_class = Types::WaveAggregatedStatus

    WaveIDsFilter.member = Shapes::ShapeRef.new(shape: WaveID)

    WavesList.member = Shapes::ShapeRef.new(shape: Wave)

    referencedSegmentsList.member = Shapes::ShapeRef.new(shape: SegmentID)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2020-02-26"

      api.metadata = {
        "apiVersion" => "2020-02-26",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "mgn",
        "protocol" => "rest-json",
        "protocols" => ["rest-json"],
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

      api.add_operation(:create_connector, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateConnector"
        o.http_method = "POST"
        o.http_request_uri = "/CreateConnector"
        o.input = Shapes::ShapeRef.new(shape: CreateConnectorRequest)
        o.output = Shapes::ShapeRef.new(shape: Connector)
        o.errors << Shapes::ShapeRef.new(shape: UninitializedAccountException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:create_launch_configuration_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateLaunchConfigurationTemplate"
        o.http_method = "POST"
        o.http_request_uri = "/CreateLaunchConfigurationTemplate"
        o.input = Shapes::ShapeRef.new(shape: CreateLaunchConfigurationTemplateRequest)
        o.output = Shapes::ShapeRef.new(shape: LaunchConfigurationTemplate)
        o.errors << Shapes::ShapeRef.new(shape: UninitializedAccountException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:create_network_migration_definition, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateNetworkMigrationDefinition"
        o.http_method = "POST"
        o.http_request_uri = "/network-migration/CreateNetworkMigrationDefinition"
        o.input = Shapes::ShapeRef.new(shape: CreateNetworkMigrationDefinitionRequest)
        o.output = Shapes::ShapeRef.new(shape: NetworkMigrationDefinition)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_replication_configuration_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateReplicationConfigurationTemplate"
        o.http_method = "POST"
        o.http_request_uri = "/CreateReplicationConfigurationTemplate"
        o.input = Shapes::ShapeRef.new(shape: CreateReplicationConfigurationTemplateRequest)
        o.output = Shapes::ShapeRef.new(shape: ReplicationConfigurationTemplate)
        o.errors << Shapes::ShapeRef.new(shape: UninitializedAccountException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
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

      api.add_operation(:delete_connector, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteConnector"
        o.http_method = "POST"
        o.http_request_uri = "/DeleteConnector"
        o.input = Shapes::ShapeRef.new(shape: DeleteConnectorRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: UninitializedAccountException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
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

      api.add_operation(:delete_network_migration_definition, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteNetworkMigrationDefinition"
        o.http_method = "POST"
        o.http_request_uri = "/network-migration/DeleteNetworkMigrationDefinition"
        o.input = Shapes::ShapeRef.new(shape: DeleteNetworkMigrationDefinitionRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteNetworkMigrationDefinitionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
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

      api.add_operation(:get_network_migration_definition, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetNetworkMigrationDefinition"
        o.http_method = "POST"
        o.http_request_uri = "/network-migration/GetNetworkMigrationDefinition"
        o.input = Shapes::ShapeRef.new(shape: GetNetworkMigrationDefinitionRequest)
        o.output = Shapes::ShapeRef.new(shape: NetworkMigrationDefinition)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_network_migration_mapper_segment_construct, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetNetworkMigrationMapperSegmentConstruct"
        o.http_method = "POST"
        o.http_request_uri = "/network-migration/GetNetworkMigrationMapperSegmentConstruct"
        o.input = Shapes::ShapeRef.new(shape: GetNetworkMigrationMapperSegmentConstructRequest)
        o.output = Shapes::ShapeRef.new(shape: GetNetworkMigrationMapperSegmentConstructResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
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
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
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

      api.add_operation(:list_connectors, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListConnectors"
        o.http_method = "POST"
        o.http_request_uri = "/ListConnectors"
        o.input = Shapes::ShapeRef.new(shape: ListConnectorsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListConnectorsResponse)
        o.errors << Shapes::ShapeRef.new(shape: UninitializedAccountException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
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

      api.add_operation(:list_import_file_enrichments, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListImportFileEnrichments"
        o.http_method = "POST"
        o.http_request_uri = "/network-migration/ListImportFileEnrichments"
        o.input = Shapes::ShapeRef.new(shape: ListImportFileEnrichmentsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListImportFileEnrichmentsResponse)
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

      api.add_operation(:list_network_migration_analyses, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListNetworkMigrationAnalyses"
        o.http_method = "POST"
        o.http_request_uri = "/network-migration/ListNetworkMigrationAnalyses"
        o.input = Shapes::ShapeRef.new(shape: ListNetworkMigrationAnalysesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListNetworkMigrationAnalysesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_network_migration_analysis_results, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListNetworkMigrationAnalysisResults"
        o.http_method = "POST"
        o.http_request_uri = "/network-migration/ListNetworkMigrationAnalysisResults"
        o.input = Shapes::ShapeRef.new(shape: ListNetworkMigrationAnalysisResultsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListNetworkMigrationAnalysisResultsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_network_migration_code_generation_segments, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListNetworkMigrationCodeGenerationSegments"
        o.http_method = "POST"
        o.http_request_uri = "/network-migration/ListNetworkMigrationCodeGenerationSegments"
        o.input = Shapes::ShapeRef.new(shape: ListNetworkMigrationCodeGenerationSegmentsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListNetworkMigrationCodeGenerationSegmentsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_network_migration_code_generations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListNetworkMigrationCodeGenerations"
        o.http_method = "POST"
        o.http_request_uri = "/network-migration/ListNetworkMigrationCodeGenerations"
        o.input = Shapes::ShapeRef.new(shape: ListNetworkMigrationCodeGenerationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListNetworkMigrationCodeGenerationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_network_migration_definitions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListNetworkMigrationDefinitions"
        o.http_method = "POST"
        o.http_request_uri = "/network-migration/ListNetworkMigrationDefinitions"
        o.input = Shapes::ShapeRef.new(shape: ListNetworkMigrationDefinitionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListNetworkMigrationDefinitionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_network_migration_deployed_stacks, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListNetworkMigrationDeployedStacks"
        o.http_method = "POST"
        o.http_request_uri = "/network-migration/ListNetworkMigrationDeployedStacks"
        o.input = Shapes::ShapeRef.new(shape: ListNetworkMigrationDeployedStacksRequest)
        o.output = Shapes::ShapeRef.new(shape: ListNetworkMigrationDeployedStacksResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_network_migration_deployments, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListNetworkMigrationDeployments"
        o.http_method = "POST"
        o.http_request_uri = "/network-migration/ListNetworkMigrationDeployments"
        o.input = Shapes::ShapeRef.new(shape: ListNetworkMigrationDeploymentsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListNetworkMigrationDeployerJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_network_migration_executions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListNetworkMigrationExecutions"
        o.http_method = "POST"
        o.http_request_uri = "/network-migration/ListNetworkMigrationExecutions"
        o.input = Shapes::ShapeRef.new(shape: ListNetworkMigrationExecutionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListNetworkMigrationExecutionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_network_migration_mapper_segment_constructs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListNetworkMigrationMapperSegmentConstructs"
        o.http_method = "POST"
        o.http_request_uri = "/network-migration/ListNetworkMigrationMapperSegmentConstructs"
        o.input = Shapes::ShapeRef.new(shape: ListNetworkMigrationMapperSegmentConstructsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListNetworkMigrationMapperSegmentConstructsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_network_migration_mapper_segments, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListNetworkMigrationMapperSegments"
        o.http_method = "POST"
        o.http_request_uri = "/network-migration/ListNetworkMigrationMapperSegments"
        o.input = Shapes::ShapeRef.new(shape: ListNetworkMigrationMapperSegmentsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListNetworkMigrationMapperSegmentsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_network_migration_mapping_updates, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListNetworkMigrationMappingUpdates"
        o.http_method = "POST"
        o.http_request_uri = "/network-migration/ListNetworkMigrationMappingUpdates"
        o.input = Shapes::ShapeRef.new(shape: ListNetworkMigrationMappingUpdatesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListNetworkMigrationMappingUpdatesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_network_migration_mappings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListNetworkMigrationMappings"
        o.http_method = "POST"
        o.http_request_uri = "/network-migration/ListNetworkMigrationMappings"
        o.input = Shapes::ShapeRef.new(shape: ListNetworkMigrationMappingsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListNetworkMigrationMappingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
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
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
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

      api.add_operation(:start_import_file_enrichment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartImportFileEnrichment"
        o.http_method = "POST"
        o.http_request_uri = "/network-migration/StartImportFileEnrichment"
        o.input = Shapes::ShapeRef.new(shape: StartImportFileEnrichmentRequest)
        o.output = Shapes::ShapeRef.new(shape: StartImportFileEnrichmentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:start_network_migration_analysis, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartNetworkMigrationAnalysis"
        o.http_method = "POST"
        o.http_request_uri = "/network-migration/StartNetworkMigrationAnalysis"
        o.input = Shapes::ShapeRef.new(shape: StartNetworkMigrationAnalysisRequest)
        o.output = Shapes::ShapeRef.new(shape: StartNetworkMigrationAnalysisResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:start_network_migration_code_generation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartNetworkMigrationCodeGeneration"
        o.http_method = "POST"
        o.http_request_uri = "/network-migration/StartNetworkMigrationCodeGeneration"
        o.input = Shapes::ShapeRef.new(shape: StartNetworkMigrationCodeGenerationRequest)
        o.output = Shapes::ShapeRef.new(shape: StartNetworkMigrationCodeGenerationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:start_network_migration_deployment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartNetworkMigrationDeployment"
        o.http_method = "POST"
        o.http_request_uri = "/network-migration/StartNetworkMigrationDeployment"
        o.input = Shapes::ShapeRef.new(shape: StartNetworkMigrationDeploymentRequest)
        o.output = Shapes::ShapeRef.new(shape: StartNetworkMigrationDeployerJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:start_network_migration_mapping, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartNetworkMigrationMapping"
        o.http_method = "POST"
        o.http_request_uri = "/network-migration/StartNetworkMigrationMapping"
        o.input = Shapes::ShapeRef.new(shape: StartNetworkMigrationMappingRequest)
        o.output = Shapes::ShapeRef.new(shape: StartNetworkMigrationMappingResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:start_network_migration_mapping_update, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartNetworkMigrationMappingUpdate"
        o.http_method = "POST"
        o.http_request_uri = "/network-migration/StartNetworkMigrationMappingUpdate"
        o.input = Shapes::ShapeRef.new(shape: StartNetworkMigrationMappingUpdateRequest)
        o.output = Shapes::ShapeRef.new(shape: StartNetworkMigrationMappingUpdateResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
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
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
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
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
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

      api.add_operation(:update_connector, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateConnector"
        o.http_method = "POST"
        o.http_request_uri = "/UpdateConnector"
        o.input = Shapes::ShapeRef.new(shape: UpdateConnectorRequest)
        o.output = Shapes::ShapeRef.new(shape: Connector)
        o.errors << Shapes::ShapeRef.new(shape: UninitializedAccountException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
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
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:update_network_migration_definition, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateNetworkMigrationDefinition"
        o.http_method = "POST"
        o.http_request_uri = "/network-migration/UpdateNetworkMigrationDefinition"
        o.input = Shapes::ShapeRef.new(shape: UpdateNetworkMigrationDefinitionRequest)
        o.output = Shapes::ShapeRef.new(shape: NetworkMigrationDefinition)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:update_network_migration_mapper_segment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateNetworkMigrationMapperSegment"
        o.http_method = "POST"
        o.http_request_uri = "/network-migration/UpdateNetworkMigrationMapperSegment"
        o.input = Shapes::ShapeRef.new(shape: UpdateNetworkMigrationMapperSegmentRequest)
        o.output = Shapes::ShapeRef.new(shape: NetworkMigrationMapperSegment)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:update_replication_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateReplicationConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/UpdateReplicationConfiguration"
        o.input = Shapes::ShapeRef.new(shape: UpdateReplicationConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: ReplicationConfiguration)
        o.errors << Shapes::ShapeRef.new(shape: UninitializedAccountException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
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
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:update_source_server, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateSourceServer"
        o.http_method = "POST"
        o.http_request_uri = "/UpdateSourceServer"
        o.input = Shapes::ShapeRef.new(shape: UpdateSourceServerRequest)
        o.output = Shapes::ShapeRef.new(shape: SourceServer)
        o.errors << Shapes::ShapeRef.new(shape: UninitializedAccountException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
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
