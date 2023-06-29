# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::MainframeModernization
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AlternateKey = Shapes::StructureShape.new(name: 'AlternateKey')
    AlternateKeyList = Shapes::ListShape.new(name: 'AlternateKeyList')
    ApplicationDeploymentLifecycle = Shapes::StringShape.new(name: 'ApplicationDeploymentLifecycle')
    ApplicationLifecycle = Shapes::StringShape.new(name: 'ApplicationLifecycle')
    ApplicationSummary = Shapes::StructureShape.new(name: 'ApplicationSummary')
    ApplicationSummaryList = Shapes::ListShape.new(name: 'ApplicationSummaryList')
    ApplicationVersionLifecycle = Shapes::StringShape.new(name: 'ApplicationVersionLifecycle')
    ApplicationVersionSummary = Shapes::StructureShape.new(name: 'ApplicationVersionSummary')
    ApplicationVersionSummaryList = Shapes::ListShape.new(name: 'ApplicationVersionSummaryList')
    Arn = Shapes::StringShape.new(name: 'Arn')
    ArnList = Shapes::ListShape.new(name: 'ArnList')
    BatchJobDefinition = Shapes::UnionShape.new(name: 'BatchJobDefinition')
    BatchJobDefinitions = Shapes::ListShape.new(name: 'BatchJobDefinitions')
    BatchJobExecutionStatus = Shapes::StringShape.new(name: 'BatchJobExecutionStatus')
    BatchJobExecutionSummary = Shapes::StructureShape.new(name: 'BatchJobExecutionSummary')
    BatchJobExecutionSummaryList = Shapes::ListShape.new(name: 'BatchJobExecutionSummaryList')
    BatchJobIdentifier = Shapes::UnionShape.new(name: 'BatchJobIdentifier')
    BatchJobParametersMap = Shapes::MapShape.new(name: 'BatchJobParametersMap')
    BatchJobType = Shapes::StringShape.new(name: 'BatchJobType')
    BatchParamKey = Shapes::StringShape.new(name: 'BatchParamKey')
    BatchParamValue = Shapes::StringShape.new(name: 'BatchParamValue')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    CancelBatchJobExecutionRequest = Shapes::StructureShape.new(name: 'CancelBatchJobExecutionRequest')
    CancelBatchJobExecutionResponse = Shapes::StructureShape.new(name: 'CancelBatchJobExecutionResponse')
    CapacityValue = Shapes::IntegerShape.new(name: 'CapacityValue')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateApplicationRequest = Shapes::StructureShape.new(name: 'CreateApplicationRequest')
    CreateApplicationResponse = Shapes::StructureShape.new(name: 'CreateApplicationResponse')
    CreateDataSetImportTaskRequest = Shapes::StructureShape.new(name: 'CreateDataSetImportTaskRequest')
    CreateDataSetImportTaskResponse = Shapes::StructureShape.new(name: 'CreateDataSetImportTaskResponse')
    CreateDeploymentRequest = Shapes::StructureShape.new(name: 'CreateDeploymentRequest')
    CreateDeploymentResponse = Shapes::StructureShape.new(name: 'CreateDeploymentResponse')
    CreateEnvironmentRequest = Shapes::StructureShape.new(name: 'CreateEnvironmentRequest')
    CreateEnvironmentResponse = Shapes::StructureShape.new(name: 'CreateEnvironmentResponse')
    DataSet = Shapes::StructureShape.new(name: 'DataSet')
    DataSetImportConfig = Shapes::UnionShape.new(name: 'DataSetImportConfig')
    DataSetImportItem = Shapes::StructureShape.new(name: 'DataSetImportItem')
    DataSetImportList = Shapes::ListShape.new(name: 'DataSetImportList')
    DataSetImportSummary = Shapes::StructureShape.new(name: 'DataSetImportSummary')
    DataSetImportTask = Shapes::StructureShape.new(name: 'DataSetImportTask')
    DataSetImportTaskList = Shapes::ListShape.new(name: 'DataSetImportTaskList')
    DataSetSummary = Shapes::StructureShape.new(name: 'DataSetSummary')
    DataSetTaskLifecycle = Shapes::StringShape.new(name: 'DataSetTaskLifecycle')
    DataSetsSummaryList = Shapes::ListShape.new(name: 'DataSetsSummaryList')
    DatasetDetailOrgAttributes = Shapes::UnionShape.new(name: 'DatasetDetailOrgAttributes')
    DatasetOrgAttributes = Shapes::UnionShape.new(name: 'DatasetOrgAttributes')
    Definition = Shapes::UnionShape.new(name: 'Definition')
    DeleteApplicationFromEnvironmentRequest = Shapes::StructureShape.new(name: 'DeleteApplicationFromEnvironmentRequest')
    DeleteApplicationFromEnvironmentResponse = Shapes::StructureShape.new(name: 'DeleteApplicationFromEnvironmentResponse')
    DeleteApplicationRequest = Shapes::StructureShape.new(name: 'DeleteApplicationRequest')
    DeleteApplicationResponse = Shapes::StructureShape.new(name: 'DeleteApplicationResponse')
    DeleteEnvironmentRequest = Shapes::StructureShape.new(name: 'DeleteEnvironmentRequest')
    DeleteEnvironmentResponse = Shapes::StructureShape.new(name: 'DeleteEnvironmentResponse')
    DeployedVersionSummary = Shapes::StructureShape.new(name: 'DeployedVersionSummary')
    DeploymentLifecycle = Shapes::StringShape.new(name: 'DeploymentLifecycle')
    DeploymentList = Shapes::ListShape.new(name: 'DeploymentList')
    DeploymentSummary = Shapes::StructureShape.new(name: 'DeploymentSummary')
    EfsStorageConfiguration = Shapes::StructureShape.new(name: 'EfsStorageConfiguration')
    EngineType = Shapes::StringShape.new(name: 'EngineType')
    EngineVersion = Shapes::StringShape.new(name: 'EngineVersion')
    EngineVersionsSummary = Shapes::StructureShape.new(name: 'EngineVersionsSummary')
    EngineVersionsSummaryList = Shapes::ListShape.new(name: 'EngineVersionsSummaryList')
    EntityDescription = Shapes::StringShape.new(name: 'EntityDescription')
    EntityName = Shapes::StringShape.new(name: 'EntityName')
    EntityNameList = Shapes::ListShape.new(name: 'EntityNameList')
    EnvironmentLifecycle = Shapes::StringShape.new(name: 'EnvironmentLifecycle')
    EnvironmentSummary = Shapes::StructureShape.new(name: 'EnvironmentSummary')
    EnvironmentSummaryList = Shapes::ListShape.new(name: 'EnvironmentSummaryList')
    ExternalLocation = Shapes::UnionShape.new(name: 'ExternalLocation')
    FileBatchJobDefinition = Shapes::StructureShape.new(name: 'FileBatchJobDefinition')
    FileBatchJobIdentifier = Shapes::StructureShape.new(name: 'FileBatchJobIdentifier')
    FsxStorageConfiguration = Shapes::StructureShape.new(name: 'FsxStorageConfiguration')
    GdgAttributes = Shapes::StructureShape.new(name: 'GdgAttributes')
    GdgDetailAttributes = Shapes::StructureShape.new(name: 'GdgDetailAttributes')
    GetApplicationRequest = Shapes::StructureShape.new(name: 'GetApplicationRequest')
    GetApplicationResponse = Shapes::StructureShape.new(name: 'GetApplicationResponse')
    GetApplicationVersionRequest = Shapes::StructureShape.new(name: 'GetApplicationVersionRequest')
    GetApplicationVersionResponse = Shapes::StructureShape.new(name: 'GetApplicationVersionResponse')
    GetBatchJobExecutionRequest = Shapes::StructureShape.new(name: 'GetBatchJobExecutionRequest')
    GetBatchJobExecutionResponse = Shapes::StructureShape.new(name: 'GetBatchJobExecutionResponse')
    GetDataSetDetailsRequest = Shapes::StructureShape.new(name: 'GetDataSetDetailsRequest')
    GetDataSetDetailsResponse = Shapes::StructureShape.new(name: 'GetDataSetDetailsResponse')
    GetDataSetImportTaskRequest = Shapes::StructureShape.new(name: 'GetDataSetImportTaskRequest')
    GetDataSetImportTaskResponse = Shapes::StructureShape.new(name: 'GetDataSetImportTaskResponse')
    GetDeploymentRequest = Shapes::StructureShape.new(name: 'GetDeploymentRequest')
    GetDeploymentResponse = Shapes::StructureShape.new(name: 'GetDeploymentResponse')
    GetEnvironmentRequest = Shapes::StructureShape.new(name: 'GetEnvironmentRequest')
    GetEnvironmentResponse = Shapes::StructureShape.new(name: 'GetEnvironmentResponse')
    HighAvailabilityConfig = Shapes::StructureShape.new(name: 'HighAvailabilityConfig')
    Identifier = Shapes::StringShape.new(name: 'Identifier')
    IdentifierList = Shapes::ListShape.new(name: 'IdentifierList')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    ListApplicationVersionsRequest = Shapes::StructureShape.new(name: 'ListApplicationVersionsRequest')
    ListApplicationVersionsResponse = Shapes::StructureShape.new(name: 'ListApplicationVersionsResponse')
    ListApplicationsRequest = Shapes::StructureShape.new(name: 'ListApplicationsRequest')
    ListApplicationsResponse = Shapes::StructureShape.new(name: 'ListApplicationsResponse')
    ListBatchJobDefinitionsRequest = Shapes::StructureShape.new(name: 'ListBatchJobDefinitionsRequest')
    ListBatchJobDefinitionsResponse = Shapes::StructureShape.new(name: 'ListBatchJobDefinitionsResponse')
    ListBatchJobExecutionsRequest = Shapes::StructureShape.new(name: 'ListBatchJobExecutionsRequest')
    ListBatchJobExecutionsResponse = Shapes::StructureShape.new(name: 'ListBatchJobExecutionsResponse')
    ListDataSetImportHistoryRequest = Shapes::StructureShape.new(name: 'ListDataSetImportHistoryRequest')
    ListDataSetImportHistoryResponse = Shapes::StructureShape.new(name: 'ListDataSetImportHistoryResponse')
    ListDataSetsRequest = Shapes::StructureShape.new(name: 'ListDataSetsRequest')
    ListDataSetsResponse = Shapes::StructureShape.new(name: 'ListDataSetsResponse')
    ListDeploymentsRequest = Shapes::StructureShape.new(name: 'ListDeploymentsRequest')
    ListDeploymentsResponse = Shapes::StructureShape.new(name: 'ListDeploymentsResponse')
    ListEngineVersionsRequest = Shapes::StructureShape.new(name: 'ListEngineVersionsRequest')
    ListEngineVersionsResponse = Shapes::StructureShape.new(name: 'ListEngineVersionsResponse')
    ListEnvironmentsRequest = Shapes::StructureShape.new(name: 'ListEnvironmentsRequest')
    ListEnvironmentsResponse = Shapes::StructureShape.new(name: 'ListEnvironmentsResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    LogGroupIdentifier = Shapes::StringShape.new(name: 'LogGroupIdentifier')
    LogGroupSummaries = Shapes::ListShape.new(name: 'LogGroupSummaries')
    LogGroupSummary = Shapes::StructureShape.new(name: 'LogGroupSummary')
    MaintenanceSchedule = Shapes::StructureShape.new(name: 'MaintenanceSchedule')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    PendingMaintenance = Shapes::StructureShape.new(name: 'PendingMaintenance')
    PoAttributes = Shapes::StructureShape.new(name: 'PoAttributes')
    PoDetailAttributes = Shapes::StructureShape.new(name: 'PoDetailAttributes')
    PortList = Shapes::ListShape.new(name: 'PortList')
    PrimaryKey = Shapes::StructureShape.new(name: 'PrimaryKey')
    PsAttributes = Shapes::StructureShape.new(name: 'PsAttributes')
    PsDetailAttributes = Shapes::StructureShape.new(name: 'PsDetailAttributes')
    RecordLength = Shapes::StructureShape.new(name: 'RecordLength')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ScriptBatchJobDefinition = Shapes::StructureShape.new(name: 'ScriptBatchJobDefinition')
    ScriptBatchJobIdentifier = Shapes::StructureShape.new(name: 'ScriptBatchJobIdentifier')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    StartApplicationRequest = Shapes::StructureShape.new(name: 'StartApplicationRequest')
    StartApplicationResponse = Shapes::StructureShape.new(name: 'StartApplicationResponse')
    StartBatchJobRequest = Shapes::StructureShape.new(name: 'StartBatchJobRequest')
    StartBatchJobResponse = Shapes::StructureShape.new(name: 'StartBatchJobResponse')
    StopApplicationRequest = Shapes::StructureShape.new(name: 'StopApplicationRequest')
    StopApplicationResponse = Shapes::StructureShape.new(name: 'StopApplicationResponse')
    StorageConfiguration = Shapes::UnionShape.new(name: 'StorageConfiguration')
    StorageConfigurationList = Shapes::ListShape.new(name: 'StorageConfigurationList')
    String = Shapes::StringShape.new(name: 'String')
    String100 = Shapes::StringShape.new(name: 'String100')
    String20 = Shapes::StringShape.new(name: 'String20')
    String200 = Shapes::StringShape.new(name: 'String200')
    String2000 = Shapes::StringShape.new(name: 'String2000')
    String20List = Shapes::ListShape.new(name: 'String20List')
    String50 = Shapes::StringShape.new(name: 'String50')
    String50List = Shapes::ListShape.new(name: 'String50List')
    StringFree65000 = Shapes::StringShape.new(name: 'StringFree65000')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagMap = Shapes::MapShape.new(name: 'TagMap')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateApplicationRequest = Shapes::StructureShape.new(name: 'UpdateApplicationRequest')
    UpdateApplicationResponse = Shapes::StructureShape.new(name: 'UpdateApplicationResponse')
    UpdateEnvironmentRequest = Shapes::StructureShape.new(name: 'UpdateEnvironmentRequest')
    UpdateEnvironmentResponse = Shapes::StructureShape.new(name: 'UpdateEnvironmentResponse')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationExceptionField = Shapes::StructureShape.new(name: 'ValidationExceptionField')
    ValidationExceptionFieldList = Shapes::ListShape.new(name: 'ValidationExceptionFieldList')
    ValidationExceptionReason = Shapes::StringShape.new(name: 'ValidationExceptionReason')
    Version = Shapes::IntegerShape.new(name: 'Version')
    VsamAttributes = Shapes::StructureShape.new(name: 'VsamAttributes')
    VsamDetailAttributes = Shapes::StructureShape.new(name: 'VsamDetailAttributes')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AlternateKey.add_member(:allow_duplicates, Shapes::ShapeRef.new(shape: Boolean, location_name: "allowDuplicates"))
    AlternateKey.add_member(:length, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "length"))
    AlternateKey.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    AlternateKey.add_member(:offset, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "offset"))
    AlternateKey.struct_class = Types::AlternateKey

    AlternateKeyList.member = Shapes::ShapeRef.new(shape: AlternateKey)

    ApplicationSummary.add_member(:application_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "applicationArn"))
    ApplicationSummary.add_member(:application_id, Shapes::ShapeRef.new(shape: Identifier, required: true, location_name: "applicationId"))
    ApplicationSummary.add_member(:application_version, Shapes::ShapeRef.new(shape: Version, required: true, location_name: "applicationVersion"))
    ApplicationSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "creationTime"))
    ApplicationSummary.add_member(:deployment_status, Shapes::ShapeRef.new(shape: ApplicationDeploymentLifecycle, location_name: "deploymentStatus"))
    ApplicationSummary.add_member(:description, Shapes::ShapeRef.new(shape: EntityDescription, location_name: "description"))
    ApplicationSummary.add_member(:engine_type, Shapes::ShapeRef.new(shape: EngineType, required: true, location_name: "engineType"))
    ApplicationSummary.add_member(:environment_id, Shapes::ShapeRef.new(shape: Identifier, location_name: "environmentId"))
    ApplicationSummary.add_member(:last_start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastStartTime"))
    ApplicationSummary.add_member(:name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "name"))
    ApplicationSummary.add_member(:role_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "roleArn"))
    ApplicationSummary.add_member(:status, Shapes::ShapeRef.new(shape: ApplicationLifecycle, required: true, location_name: "status"))
    ApplicationSummary.add_member(:version_status, Shapes::ShapeRef.new(shape: ApplicationVersionLifecycle, location_name: "versionStatus"))
    ApplicationSummary.struct_class = Types::ApplicationSummary

    ApplicationSummaryList.member = Shapes::ShapeRef.new(shape: ApplicationSummary)

    ApplicationVersionSummary.add_member(:application_version, Shapes::ShapeRef.new(shape: Version, required: true, location_name: "applicationVersion"))
    ApplicationVersionSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "creationTime"))
    ApplicationVersionSummary.add_member(:status, Shapes::ShapeRef.new(shape: ApplicationVersionLifecycle, required: true, location_name: "status"))
    ApplicationVersionSummary.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    ApplicationVersionSummary.struct_class = Types::ApplicationVersionSummary

    ApplicationVersionSummaryList.member = Shapes::ShapeRef.new(shape: ApplicationVersionSummary)

    ArnList.member = Shapes::ShapeRef.new(shape: Arn)

    BatchJobDefinition.add_member(:file_batch_job_definition, Shapes::ShapeRef.new(shape: FileBatchJobDefinition, location_name: "fileBatchJobDefinition"))
    BatchJobDefinition.add_member(:script_batch_job_definition, Shapes::ShapeRef.new(shape: ScriptBatchJobDefinition, location_name: "scriptBatchJobDefinition"))
    BatchJobDefinition.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    BatchJobDefinition.add_member_subclass(:file_batch_job_definition, Types::BatchJobDefinition::FileBatchJobDefinition)
    BatchJobDefinition.add_member_subclass(:script_batch_job_definition, Types::BatchJobDefinition::ScriptBatchJobDefinition)
    BatchJobDefinition.add_member_subclass(:unknown, Types::BatchJobDefinition::Unknown)
    BatchJobDefinition.struct_class = Types::BatchJobDefinition

    BatchJobDefinitions.member = Shapes::ShapeRef.new(shape: BatchJobDefinition)

    BatchJobExecutionSummary.add_member(:application_id, Shapes::ShapeRef.new(shape: Identifier, required: true, location_name: "applicationId"))
    BatchJobExecutionSummary.add_member(:batch_job_identifier, Shapes::ShapeRef.new(shape: BatchJobIdentifier, location_name: "batchJobIdentifier"))
    BatchJobExecutionSummary.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "endTime"))
    BatchJobExecutionSummary.add_member(:execution_id, Shapes::ShapeRef.new(shape: Identifier, required: true, location_name: "executionId"))
    BatchJobExecutionSummary.add_member(:job_id, Shapes::ShapeRef.new(shape: String100, location_name: "jobId"))
    BatchJobExecutionSummary.add_member(:job_name, Shapes::ShapeRef.new(shape: String100, location_name: "jobName"))
    BatchJobExecutionSummary.add_member(:job_type, Shapes::ShapeRef.new(shape: BatchJobType, location_name: "jobType"))
    BatchJobExecutionSummary.add_member(:return_code, Shapes::ShapeRef.new(shape: String, location_name: "returnCode"))
    BatchJobExecutionSummary.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "startTime"))
    BatchJobExecutionSummary.add_member(:status, Shapes::ShapeRef.new(shape: BatchJobExecutionStatus, required: true, location_name: "status"))
    BatchJobExecutionSummary.struct_class = Types::BatchJobExecutionSummary

    BatchJobExecutionSummaryList.member = Shapes::ShapeRef.new(shape: BatchJobExecutionSummary)

    BatchJobIdentifier.add_member(:file_batch_job_identifier, Shapes::ShapeRef.new(shape: FileBatchJobIdentifier, location_name: "fileBatchJobIdentifier"))
    BatchJobIdentifier.add_member(:script_batch_job_identifier, Shapes::ShapeRef.new(shape: ScriptBatchJobIdentifier, location_name: "scriptBatchJobIdentifier"))
    BatchJobIdentifier.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    BatchJobIdentifier.add_member_subclass(:file_batch_job_identifier, Types::BatchJobIdentifier::FileBatchJobIdentifier)
    BatchJobIdentifier.add_member_subclass(:script_batch_job_identifier, Types::BatchJobIdentifier::ScriptBatchJobIdentifier)
    BatchJobIdentifier.add_member_subclass(:unknown, Types::BatchJobIdentifier::Unknown)
    BatchJobIdentifier.struct_class = Types::BatchJobIdentifier

    BatchJobParametersMap.key = Shapes::ShapeRef.new(shape: BatchParamKey)
    BatchJobParametersMap.value = Shapes::ShapeRef.new(shape: BatchParamValue)

    CancelBatchJobExecutionRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: Identifier, required: true, location: "uri", location_name: "applicationId"))
    CancelBatchJobExecutionRequest.add_member(:execution_id, Shapes::ShapeRef.new(shape: Identifier, required: true, location: "uri", location_name: "executionId"))
    CancelBatchJobExecutionRequest.struct_class = Types::CancelBatchJobExecutionRequest

    CancelBatchJobExecutionResponse.struct_class = Types::CancelBatchJobExecutionResponse

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ConflictException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, location_name: "resourceId"))
    ConflictException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, location_name: "resourceType"))
    ConflictException.struct_class = Types::ConflictException

    CreateApplicationRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: String, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateApplicationRequest.add_member(:definition, Shapes::ShapeRef.new(shape: Definition, required: true, location_name: "definition"))
    CreateApplicationRequest.add_member(:description, Shapes::ShapeRef.new(shape: EntityDescription, location_name: "description"))
    CreateApplicationRequest.add_member(:engine_type, Shapes::ShapeRef.new(shape: EngineType, required: true, location_name: "engineType"))
    CreateApplicationRequest.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: String, location_name: "kmsKeyId"))
    CreateApplicationRequest.add_member(:name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "name"))
    CreateApplicationRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "roleArn"))
    CreateApplicationRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateApplicationRequest.struct_class = Types::CreateApplicationRequest

    CreateApplicationResponse.add_member(:application_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "applicationArn"))
    CreateApplicationResponse.add_member(:application_id, Shapes::ShapeRef.new(shape: Identifier, required: true, location_name: "applicationId"))
    CreateApplicationResponse.add_member(:application_version, Shapes::ShapeRef.new(shape: Version, required: true, location_name: "applicationVersion"))
    CreateApplicationResponse.struct_class = Types::CreateApplicationResponse

    CreateDataSetImportTaskRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: Identifier, required: true, location: "uri", location_name: "applicationId"))
    CreateDataSetImportTaskRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: String, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateDataSetImportTaskRequest.add_member(:import_config, Shapes::ShapeRef.new(shape: DataSetImportConfig, required: true, location_name: "importConfig"))
    CreateDataSetImportTaskRequest.struct_class = Types::CreateDataSetImportTaskRequest

    CreateDataSetImportTaskResponse.add_member(:task_id, Shapes::ShapeRef.new(shape: Identifier, required: true, location_name: "taskId"))
    CreateDataSetImportTaskResponse.struct_class = Types::CreateDataSetImportTaskResponse

    CreateDeploymentRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: Identifier, required: true, location: "uri", location_name: "applicationId"))
    CreateDeploymentRequest.add_member(:application_version, Shapes::ShapeRef.new(shape: Version, required: true, location_name: "applicationVersion"))
    CreateDeploymentRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: String, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateDeploymentRequest.add_member(:environment_id, Shapes::ShapeRef.new(shape: Identifier, required: true, location_name: "environmentId"))
    CreateDeploymentRequest.struct_class = Types::CreateDeploymentRequest

    CreateDeploymentResponse.add_member(:deployment_id, Shapes::ShapeRef.new(shape: Identifier, required: true, location_name: "deploymentId"))
    CreateDeploymentResponse.struct_class = Types::CreateDeploymentResponse

    CreateEnvironmentRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: String, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateEnvironmentRequest.add_member(:description, Shapes::ShapeRef.new(shape: EntityDescription, location_name: "description"))
    CreateEnvironmentRequest.add_member(:engine_type, Shapes::ShapeRef.new(shape: EngineType, required: true, location_name: "engineType"))
    CreateEnvironmentRequest.add_member(:engine_version, Shapes::ShapeRef.new(shape: EngineVersion, location_name: "engineVersion"))
    CreateEnvironmentRequest.add_member(:high_availability_config, Shapes::ShapeRef.new(shape: HighAvailabilityConfig, location_name: "highAvailabilityConfig"))
    CreateEnvironmentRequest.add_member(:instance_type, Shapes::ShapeRef.new(shape: String20, required: true, location_name: "instanceType"))
    CreateEnvironmentRequest.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: String, location_name: "kmsKeyId"))
    CreateEnvironmentRequest.add_member(:name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "name"))
    CreateEnvironmentRequest.add_member(:preferred_maintenance_window, Shapes::ShapeRef.new(shape: String50, location_name: "preferredMaintenanceWindow"))
    CreateEnvironmentRequest.add_member(:publicly_accessible, Shapes::ShapeRef.new(shape: Boolean, location_name: "publiclyAccessible"))
    CreateEnvironmentRequest.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: String50List, location_name: "securityGroupIds"))
    CreateEnvironmentRequest.add_member(:storage_configurations, Shapes::ShapeRef.new(shape: StorageConfigurationList, location_name: "storageConfigurations"))
    CreateEnvironmentRequest.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: String50List, location_name: "subnetIds"))
    CreateEnvironmentRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateEnvironmentRequest.struct_class = Types::CreateEnvironmentRequest

    CreateEnvironmentResponse.add_member(:environment_id, Shapes::ShapeRef.new(shape: Identifier, required: true, location_name: "environmentId"))
    CreateEnvironmentResponse.struct_class = Types::CreateEnvironmentResponse

    DataSet.add_member(:dataset_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "datasetName"))
    DataSet.add_member(:dataset_org, Shapes::ShapeRef.new(shape: DatasetOrgAttributes, required: true, location_name: "datasetOrg"))
    DataSet.add_member(:record_length, Shapes::ShapeRef.new(shape: RecordLength, required: true, location_name: "recordLength"))
    DataSet.add_member(:relative_path, Shapes::ShapeRef.new(shape: String, location_name: "relativePath"))
    DataSet.add_member(:storage_type, Shapes::ShapeRef.new(shape: String, location_name: "storageType"))
    DataSet.struct_class = Types::DataSet

    DataSetImportConfig.add_member(:data_sets, Shapes::ShapeRef.new(shape: DataSetImportList, location_name: "dataSets"))
    DataSetImportConfig.add_member(:s3_location, Shapes::ShapeRef.new(shape: String2000, location_name: "s3Location"))
    DataSetImportConfig.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    DataSetImportConfig.add_member_subclass(:data_sets, Types::DataSetImportConfig::DataSets)
    DataSetImportConfig.add_member_subclass(:s3_location, Types::DataSetImportConfig::S3Location)
    DataSetImportConfig.add_member_subclass(:unknown, Types::DataSetImportConfig::Unknown)
    DataSetImportConfig.struct_class = Types::DataSetImportConfig

    DataSetImportItem.add_member(:data_set, Shapes::ShapeRef.new(shape: DataSet, required: true, location_name: "dataSet"))
    DataSetImportItem.add_member(:external_location, Shapes::ShapeRef.new(shape: ExternalLocation, required: true, location_name: "externalLocation"))
    DataSetImportItem.struct_class = Types::DataSetImportItem

    DataSetImportList.member = Shapes::ShapeRef.new(shape: DataSetImportItem)

    DataSetImportSummary.add_member(:failed, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "failed"))
    DataSetImportSummary.add_member(:in_progress, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "inProgress"))
    DataSetImportSummary.add_member(:pending, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "pending"))
    DataSetImportSummary.add_member(:succeeded, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "succeeded"))
    DataSetImportSummary.add_member(:total, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "total"))
    DataSetImportSummary.struct_class = Types::DataSetImportSummary

    DataSetImportTask.add_member(:status, Shapes::ShapeRef.new(shape: DataSetTaskLifecycle, required: true, location_name: "status"))
    DataSetImportTask.add_member(:summary, Shapes::ShapeRef.new(shape: DataSetImportSummary, required: true, location_name: "summary"))
    DataSetImportTask.add_member(:task_id, Shapes::ShapeRef.new(shape: Identifier, required: true, location_name: "taskId"))
    DataSetImportTask.struct_class = Types::DataSetImportTask

    DataSetImportTaskList.member = Shapes::ShapeRef.new(shape: DataSetImportTask)

    DataSetSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationTime"))
    DataSetSummary.add_member(:data_set_name, Shapes::ShapeRef.new(shape: String200, required: true, location_name: "dataSetName"))
    DataSetSummary.add_member(:data_set_org, Shapes::ShapeRef.new(shape: String20, location_name: "dataSetOrg"))
    DataSetSummary.add_member(:format, Shapes::ShapeRef.new(shape: String20, location_name: "format"))
    DataSetSummary.add_member(:last_referenced_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastReferencedTime"))
    DataSetSummary.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdatedTime"))
    DataSetSummary.struct_class = Types::DataSetSummary

    DataSetsSummaryList.member = Shapes::ShapeRef.new(shape: DataSetSummary)

    DatasetDetailOrgAttributes.add_member(:gdg, Shapes::ShapeRef.new(shape: GdgDetailAttributes, location_name: "gdg"))
    DatasetDetailOrgAttributes.add_member(:po, Shapes::ShapeRef.new(shape: PoDetailAttributes, location_name: "po"))
    DatasetDetailOrgAttributes.add_member(:ps, Shapes::ShapeRef.new(shape: PsDetailAttributes, location_name: "ps"))
    DatasetDetailOrgAttributes.add_member(:vsam, Shapes::ShapeRef.new(shape: VsamDetailAttributes, location_name: "vsam"))
    DatasetDetailOrgAttributes.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    DatasetDetailOrgAttributes.add_member_subclass(:gdg, Types::DatasetDetailOrgAttributes::Gdg)
    DatasetDetailOrgAttributes.add_member_subclass(:po, Types::DatasetDetailOrgAttributes::Po)
    DatasetDetailOrgAttributes.add_member_subclass(:ps, Types::DatasetDetailOrgAttributes::Ps)
    DatasetDetailOrgAttributes.add_member_subclass(:vsam, Types::DatasetDetailOrgAttributes::Vsam)
    DatasetDetailOrgAttributes.add_member_subclass(:unknown, Types::DatasetDetailOrgAttributes::Unknown)
    DatasetDetailOrgAttributes.struct_class = Types::DatasetDetailOrgAttributes

    DatasetOrgAttributes.add_member(:gdg, Shapes::ShapeRef.new(shape: GdgAttributes, location_name: "gdg"))
    DatasetOrgAttributes.add_member(:po, Shapes::ShapeRef.new(shape: PoAttributes, location_name: "po"))
    DatasetOrgAttributes.add_member(:ps, Shapes::ShapeRef.new(shape: PsAttributes, location_name: "ps"))
    DatasetOrgAttributes.add_member(:vsam, Shapes::ShapeRef.new(shape: VsamAttributes, location_name: "vsam"))
    DatasetOrgAttributes.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    DatasetOrgAttributes.add_member_subclass(:gdg, Types::DatasetOrgAttributes::Gdg)
    DatasetOrgAttributes.add_member_subclass(:po, Types::DatasetOrgAttributes::Po)
    DatasetOrgAttributes.add_member_subclass(:ps, Types::DatasetOrgAttributes::Ps)
    DatasetOrgAttributes.add_member_subclass(:vsam, Types::DatasetOrgAttributes::Vsam)
    DatasetOrgAttributes.add_member_subclass(:unknown, Types::DatasetOrgAttributes::Unknown)
    DatasetOrgAttributes.struct_class = Types::DatasetOrgAttributes

    Definition.add_member(:content, Shapes::ShapeRef.new(shape: StringFree65000, location_name: "content"))
    Definition.add_member(:s3_location, Shapes::ShapeRef.new(shape: String2000, location_name: "s3Location"))
    Definition.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    Definition.add_member_subclass(:content, Types::Definition::Content)
    Definition.add_member_subclass(:s3_location, Types::Definition::S3Location)
    Definition.add_member_subclass(:unknown, Types::Definition::Unknown)
    Definition.struct_class = Types::Definition

    DeleteApplicationFromEnvironmentRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: Identifier, required: true, location: "uri", location_name: "applicationId"))
    DeleteApplicationFromEnvironmentRequest.add_member(:environment_id, Shapes::ShapeRef.new(shape: Identifier, required: true, location: "uri", location_name: "environmentId"))
    DeleteApplicationFromEnvironmentRequest.struct_class = Types::DeleteApplicationFromEnvironmentRequest

    DeleteApplicationFromEnvironmentResponse.struct_class = Types::DeleteApplicationFromEnvironmentResponse

    DeleteApplicationRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: Identifier, required: true, location: "uri", location_name: "applicationId"))
    DeleteApplicationRequest.struct_class = Types::DeleteApplicationRequest

    DeleteApplicationResponse.struct_class = Types::DeleteApplicationResponse

    DeleteEnvironmentRequest.add_member(:environment_id, Shapes::ShapeRef.new(shape: Identifier, required: true, location: "uri", location_name: "environmentId"))
    DeleteEnvironmentRequest.struct_class = Types::DeleteEnvironmentRequest

    DeleteEnvironmentResponse.struct_class = Types::DeleteEnvironmentResponse

    DeployedVersionSummary.add_member(:application_version, Shapes::ShapeRef.new(shape: Version, required: true, location_name: "applicationVersion"))
    DeployedVersionSummary.add_member(:status, Shapes::ShapeRef.new(shape: DeploymentLifecycle, required: true, location_name: "status"))
    DeployedVersionSummary.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    DeployedVersionSummary.struct_class = Types::DeployedVersionSummary

    DeploymentList.member = Shapes::ShapeRef.new(shape: DeploymentSummary)

    DeploymentSummary.add_member(:application_id, Shapes::ShapeRef.new(shape: Identifier, required: true, location_name: "applicationId"))
    DeploymentSummary.add_member(:application_version, Shapes::ShapeRef.new(shape: Version, required: true, location_name: "applicationVersion"))
    DeploymentSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "creationTime"))
    DeploymentSummary.add_member(:deployment_id, Shapes::ShapeRef.new(shape: Identifier, required: true, location_name: "deploymentId"))
    DeploymentSummary.add_member(:environment_id, Shapes::ShapeRef.new(shape: Identifier, required: true, location_name: "environmentId"))
    DeploymentSummary.add_member(:status, Shapes::ShapeRef.new(shape: DeploymentLifecycle, required: true, location_name: "status"))
    DeploymentSummary.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    DeploymentSummary.struct_class = Types::DeploymentSummary

    EfsStorageConfiguration.add_member(:file_system_id, Shapes::ShapeRef.new(shape: String200, required: true, location_name: "file-system-id"))
    EfsStorageConfiguration.add_member(:mount_point, Shapes::ShapeRef.new(shape: String200, required: true, location_name: "mount-point"))
    EfsStorageConfiguration.struct_class = Types::EfsStorageConfiguration

    EngineVersionsSummary.add_member(:engine_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "engineType"))
    EngineVersionsSummary.add_member(:engine_version, Shapes::ShapeRef.new(shape: String, required: true, location_name: "engineVersion"))
    EngineVersionsSummary.struct_class = Types::EngineVersionsSummary

    EngineVersionsSummaryList.member = Shapes::ShapeRef.new(shape: EngineVersionsSummary)

    EntityNameList.member = Shapes::ShapeRef.new(shape: EntityName)

    EnvironmentSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "creationTime"))
    EnvironmentSummary.add_member(:engine_type, Shapes::ShapeRef.new(shape: EngineType, required: true, location_name: "engineType"))
    EnvironmentSummary.add_member(:engine_version, Shapes::ShapeRef.new(shape: EngineVersion, required: true, location_name: "engineVersion"))
    EnvironmentSummary.add_member(:environment_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "environmentArn"))
    EnvironmentSummary.add_member(:environment_id, Shapes::ShapeRef.new(shape: Identifier, required: true, location_name: "environmentId"))
    EnvironmentSummary.add_member(:instance_type, Shapes::ShapeRef.new(shape: String20, required: true, location_name: "instanceType"))
    EnvironmentSummary.add_member(:name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "name"))
    EnvironmentSummary.add_member(:status, Shapes::ShapeRef.new(shape: EnvironmentLifecycle, required: true, location_name: "status"))
    EnvironmentSummary.struct_class = Types::EnvironmentSummary

    EnvironmentSummaryList.member = Shapes::ShapeRef.new(shape: EnvironmentSummary)

    ExternalLocation.add_member(:s3_location, Shapes::ShapeRef.new(shape: String2000, location_name: "s3Location"))
    ExternalLocation.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ExternalLocation.add_member_subclass(:s3_location, Types::ExternalLocation::S3Location)
    ExternalLocation.add_member_subclass(:unknown, Types::ExternalLocation::Unknown)
    ExternalLocation.struct_class = Types::ExternalLocation

    FileBatchJobDefinition.add_member(:file_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "fileName"))
    FileBatchJobDefinition.add_member(:folder_path, Shapes::ShapeRef.new(shape: String, location_name: "folderPath"))
    FileBatchJobDefinition.struct_class = Types::FileBatchJobDefinition

    FileBatchJobIdentifier.add_member(:file_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "fileName"))
    FileBatchJobIdentifier.add_member(:folder_path, Shapes::ShapeRef.new(shape: String, location_name: "folderPath"))
    FileBatchJobIdentifier.struct_class = Types::FileBatchJobIdentifier

    FsxStorageConfiguration.add_member(:file_system_id, Shapes::ShapeRef.new(shape: String200, required: true, location_name: "file-system-id"))
    FsxStorageConfiguration.add_member(:mount_point, Shapes::ShapeRef.new(shape: String200, required: true, location_name: "mount-point"))
    FsxStorageConfiguration.struct_class = Types::FsxStorageConfiguration

    GdgAttributes.add_member(:limit, Shapes::ShapeRef.new(shape: Integer, location_name: "limit"))
    GdgAttributes.add_member(:roll_disposition, Shapes::ShapeRef.new(shape: String, location_name: "rollDisposition"))
    GdgAttributes.struct_class = Types::GdgAttributes

    GdgDetailAttributes.add_member(:limit, Shapes::ShapeRef.new(shape: Integer, location_name: "limit"))
    GdgDetailAttributes.add_member(:roll_disposition, Shapes::ShapeRef.new(shape: String50, location_name: "rollDisposition"))
    GdgDetailAttributes.struct_class = Types::GdgDetailAttributes

    GetApplicationRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: Identifier, required: true, location: "uri", location_name: "applicationId"))
    GetApplicationRequest.struct_class = Types::GetApplicationRequest

    GetApplicationResponse.add_member(:application_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "applicationArn"))
    GetApplicationResponse.add_member(:application_id, Shapes::ShapeRef.new(shape: Identifier, required: true, location_name: "applicationId"))
    GetApplicationResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "creationTime"))
    GetApplicationResponse.add_member(:deployed_version, Shapes::ShapeRef.new(shape: DeployedVersionSummary, location_name: "deployedVersion"))
    GetApplicationResponse.add_member(:description, Shapes::ShapeRef.new(shape: EntityDescription, location_name: "description"))
    GetApplicationResponse.add_member(:engine_type, Shapes::ShapeRef.new(shape: EngineType, required: true, location_name: "engineType"))
    GetApplicationResponse.add_member(:environment_id, Shapes::ShapeRef.new(shape: Identifier, location_name: "environmentId"))
    GetApplicationResponse.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: String, location_name: "kmsKeyId"))
    GetApplicationResponse.add_member(:last_start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastStartTime"))
    GetApplicationResponse.add_member(:latest_version, Shapes::ShapeRef.new(shape: ApplicationVersionSummary, required: true, location_name: "latestVersion"))
    GetApplicationResponse.add_member(:listener_arns, Shapes::ShapeRef.new(shape: ArnList, location_name: "listenerArns"))
    GetApplicationResponse.add_member(:listener_ports, Shapes::ShapeRef.new(shape: PortList, location_name: "listenerPorts"))
    GetApplicationResponse.add_member(:load_balancer_dns_name, Shapes::ShapeRef.new(shape: String100, location_name: "loadBalancerDnsName"))
    GetApplicationResponse.add_member(:log_groups, Shapes::ShapeRef.new(shape: LogGroupSummaries, location_name: "logGroups"))
    GetApplicationResponse.add_member(:name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "name"))
    GetApplicationResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "roleArn"))
    GetApplicationResponse.add_member(:status, Shapes::ShapeRef.new(shape: ApplicationLifecycle, required: true, location_name: "status"))
    GetApplicationResponse.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    GetApplicationResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    GetApplicationResponse.add_member(:target_group_arns, Shapes::ShapeRef.new(shape: ArnList, location_name: "targetGroupArns"))
    GetApplicationResponse.struct_class = Types::GetApplicationResponse

    GetApplicationVersionRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: Identifier, required: true, location: "uri", location_name: "applicationId"))
    GetApplicationVersionRequest.add_member(:application_version, Shapes::ShapeRef.new(shape: Version, required: true, location: "uri", location_name: "applicationVersion"))
    GetApplicationVersionRequest.struct_class = Types::GetApplicationVersionRequest

    GetApplicationVersionResponse.add_member(:application_version, Shapes::ShapeRef.new(shape: Version, required: true, location_name: "applicationVersion"))
    GetApplicationVersionResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "creationTime"))
    GetApplicationVersionResponse.add_member(:definition_content, Shapes::ShapeRef.new(shape: StringFree65000, required: true, location_name: "definitionContent"))
    GetApplicationVersionResponse.add_member(:description, Shapes::ShapeRef.new(shape: EntityDescription, location_name: "description"))
    GetApplicationVersionResponse.add_member(:name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "name"))
    GetApplicationVersionResponse.add_member(:status, Shapes::ShapeRef.new(shape: ApplicationVersionLifecycle, required: true, location_name: "status"))
    GetApplicationVersionResponse.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    GetApplicationVersionResponse.struct_class = Types::GetApplicationVersionResponse

    GetBatchJobExecutionRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: Identifier, required: true, location: "uri", location_name: "applicationId"))
    GetBatchJobExecutionRequest.add_member(:execution_id, Shapes::ShapeRef.new(shape: Identifier, required: true, location: "uri", location_name: "executionId"))
    GetBatchJobExecutionRequest.struct_class = Types::GetBatchJobExecutionRequest

    GetBatchJobExecutionResponse.add_member(:application_id, Shapes::ShapeRef.new(shape: Identifier, required: true, location_name: "applicationId"))
    GetBatchJobExecutionResponse.add_member(:batch_job_identifier, Shapes::ShapeRef.new(shape: BatchJobIdentifier, location_name: "batchJobIdentifier"))
    GetBatchJobExecutionResponse.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "endTime"))
    GetBatchJobExecutionResponse.add_member(:execution_id, Shapes::ShapeRef.new(shape: Identifier, required: true, location_name: "executionId"))
    GetBatchJobExecutionResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: String100, location_name: "jobId"))
    GetBatchJobExecutionResponse.add_member(:job_name, Shapes::ShapeRef.new(shape: String100, location_name: "jobName"))
    GetBatchJobExecutionResponse.add_member(:job_type, Shapes::ShapeRef.new(shape: BatchJobType, location_name: "jobType"))
    GetBatchJobExecutionResponse.add_member(:job_user, Shapes::ShapeRef.new(shape: String100, location_name: "jobUser"))
    GetBatchJobExecutionResponse.add_member(:return_code, Shapes::ShapeRef.new(shape: String, location_name: "returnCode"))
    GetBatchJobExecutionResponse.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "startTime"))
    GetBatchJobExecutionResponse.add_member(:status, Shapes::ShapeRef.new(shape: BatchJobExecutionStatus, required: true, location_name: "status"))
    GetBatchJobExecutionResponse.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    GetBatchJobExecutionResponse.struct_class = Types::GetBatchJobExecutionResponse

    GetDataSetDetailsRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: Identifier, required: true, location: "uri", location_name: "applicationId"))
    GetDataSetDetailsRequest.add_member(:data_set_name, Shapes::ShapeRef.new(shape: String200, required: true, location: "uri", location_name: "dataSetName"))
    GetDataSetDetailsRequest.struct_class = Types::GetDataSetDetailsRequest

    GetDataSetDetailsResponse.add_member(:blocksize, Shapes::ShapeRef.new(shape: Integer, location_name: "blocksize", metadata: {"box"=>true}))
    GetDataSetDetailsResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationTime"))
    GetDataSetDetailsResponse.add_member(:data_set_name, Shapes::ShapeRef.new(shape: String200, required: true, location_name: "dataSetName"))
    GetDataSetDetailsResponse.add_member(:data_set_org, Shapes::ShapeRef.new(shape: DatasetDetailOrgAttributes, location_name: "dataSetOrg"))
    GetDataSetDetailsResponse.add_member(:last_referenced_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastReferencedTime"))
    GetDataSetDetailsResponse.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdatedTime"))
    GetDataSetDetailsResponse.add_member(:location, Shapes::ShapeRef.new(shape: String2000, location_name: "location"))
    GetDataSetDetailsResponse.add_member(:record_length, Shapes::ShapeRef.new(shape: Integer, location_name: "recordLength", metadata: {"box"=>true}))
    GetDataSetDetailsResponse.struct_class = Types::GetDataSetDetailsResponse

    GetDataSetImportTaskRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: Identifier, required: true, location: "uri", location_name: "applicationId"))
    GetDataSetImportTaskRequest.add_member(:task_id, Shapes::ShapeRef.new(shape: Identifier, required: true, location: "uri", location_name: "taskId"))
    GetDataSetImportTaskRequest.struct_class = Types::GetDataSetImportTaskRequest

    GetDataSetImportTaskResponse.add_member(:status, Shapes::ShapeRef.new(shape: DataSetTaskLifecycle, required: true, location_name: "status"))
    GetDataSetImportTaskResponse.add_member(:summary, Shapes::ShapeRef.new(shape: DataSetImportSummary, location_name: "summary"))
    GetDataSetImportTaskResponse.add_member(:task_id, Shapes::ShapeRef.new(shape: Identifier, required: true, location_name: "taskId"))
    GetDataSetImportTaskResponse.struct_class = Types::GetDataSetImportTaskResponse

    GetDeploymentRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: Identifier, required: true, location: "uri", location_name: "applicationId"))
    GetDeploymentRequest.add_member(:deployment_id, Shapes::ShapeRef.new(shape: Identifier, required: true, location: "uri", location_name: "deploymentId"))
    GetDeploymentRequest.struct_class = Types::GetDeploymentRequest

    GetDeploymentResponse.add_member(:application_id, Shapes::ShapeRef.new(shape: Identifier, required: true, location_name: "applicationId"))
    GetDeploymentResponse.add_member(:application_version, Shapes::ShapeRef.new(shape: Version, required: true, location_name: "applicationVersion"))
    GetDeploymentResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "creationTime"))
    GetDeploymentResponse.add_member(:deployment_id, Shapes::ShapeRef.new(shape: Identifier, required: true, location_name: "deploymentId"))
    GetDeploymentResponse.add_member(:environment_id, Shapes::ShapeRef.new(shape: Identifier, required: true, location_name: "environmentId"))
    GetDeploymentResponse.add_member(:status, Shapes::ShapeRef.new(shape: DeploymentLifecycle, required: true, location_name: "status"))
    GetDeploymentResponse.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    GetDeploymentResponse.struct_class = Types::GetDeploymentResponse

    GetEnvironmentRequest.add_member(:environment_id, Shapes::ShapeRef.new(shape: Identifier, required: true, location: "uri", location_name: "environmentId"))
    GetEnvironmentRequest.struct_class = Types::GetEnvironmentRequest

    GetEnvironmentResponse.add_member(:actual_capacity, Shapes::ShapeRef.new(shape: CapacityValue, location_name: "actualCapacity"))
    GetEnvironmentResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "creationTime"))
    GetEnvironmentResponse.add_member(:description, Shapes::ShapeRef.new(shape: EntityDescription, location_name: "description"))
    GetEnvironmentResponse.add_member(:engine_type, Shapes::ShapeRef.new(shape: EngineType, required: true, location_name: "engineType"))
    GetEnvironmentResponse.add_member(:engine_version, Shapes::ShapeRef.new(shape: EngineVersion, required: true, location_name: "engineVersion"))
    GetEnvironmentResponse.add_member(:environment_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "environmentArn"))
    GetEnvironmentResponse.add_member(:environment_id, Shapes::ShapeRef.new(shape: Identifier, required: true, location_name: "environmentId"))
    GetEnvironmentResponse.add_member(:high_availability_config, Shapes::ShapeRef.new(shape: HighAvailabilityConfig, location_name: "highAvailabilityConfig"))
    GetEnvironmentResponse.add_member(:instance_type, Shapes::ShapeRef.new(shape: String20, required: true, location_name: "instanceType"))
    GetEnvironmentResponse.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: String, location_name: "kmsKeyId"))
    GetEnvironmentResponse.add_member(:load_balancer_arn, Shapes::ShapeRef.new(shape: String, location_name: "loadBalancerArn"))
    GetEnvironmentResponse.add_member(:name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "name"))
    GetEnvironmentResponse.add_member(:pending_maintenance, Shapes::ShapeRef.new(shape: PendingMaintenance, location_name: "pendingMaintenance"))
    GetEnvironmentResponse.add_member(:preferred_maintenance_window, Shapes::ShapeRef.new(shape: String50, location_name: "preferredMaintenanceWindow"))
    GetEnvironmentResponse.add_member(:publicly_accessible, Shapes::ShapeRef.new(shape: Boolean, location_name: "publiclyAccessible"))
    GetEnvironmentResponse.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: String50List, required: true, location_name: "securityGroupIds"))
    GetEnvironmentResponse.add_member(:status, Shapes::ShapeRef.new(shape: EnvironmentLifecycle, required: true, location_name: "status"))
    GetEnvironmentResponse.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    GetEnvironmentResponse.add_member(:storage_configurations, Shapes::ShapeRef.new(shape: StorageConfigurationList, location_name: "storageConfigurations"))
    GetEnvironmentResponse.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: String50List, required: true, location_name: "subnetIds"))
    GetEnvironmentResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    GetEnvironmentResponse.add_member(:vpc_id, Shapes::ShapeRef.new(shape: String50, required: true, location_name: "vpcId"))
    GetEnvironmentResponse.struct_class = Types::GetEnvironmentResponse

    HighAvailabilityConfig.add_member(:desired_capacity, Shapes::ShapeRef.new(shape: CapacityValue, required: true, location_name: "desiredCapacity"))
    HighAvailabilityConfig.struct_class = Types::HighAvailabilityConfig

    IdentifierList.member = Shapes::ShapeRef.new(shape: Identifier)

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    InternalServerException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: Integer, location: "header", location_name: "Retry-After"))
    InternalServerException.struct_class = Types::InternalServerException

    ListApplicationVersionsRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: Identifier, required: true, location: "uri", location_name: "applicationId"))
    ListApplicationVersionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListApplicationVersionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListApplicationVersionsRequest.struct_class = Types::ListApplicationVersionsRequest

    ListApplicationVersionsResponse.add_member(:application_versions, Shapes::ShapeRef.new(shape: ApplicationVersionSummaryList, required: true, location_name: "applicationVersions"))
    ListApplicationVersionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListApplicationVersionsResponse.struct_class = Types::ListApplicationVersionsResponse

    ListApplicationsRequest.add_member(:environment_id, Shapes::ShapeRef.new(shape: Identifier, location: "querystring", location_name: "environmentId"))
    ListApplicationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListApplicationsRequest.add_member(:names, Shapes::ShapeRef.new(shape: EntityNameList, location: "querystring", location_name: "names"))
    ListApplicationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListApplicationsRequest.struct_class = Types::ListApplicationsRequest

    ListApplicationsResponse.add_member(:applications, Shapes::ShapeRef.new(shape: ApplicationSummaryList, required: true, location_name: "applications"))
    ListApplicationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListApplicationsResponse.struct_class = Types::ListApplicationsResponse

    ListBatchJobDefinitionsRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: Identifier, required: true, location: "uri", location_name: "applicationId"))
    ListBatchJobDefinitionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListBatchJobDefinitionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListBatchJobDefinitionsRequest.add_member(:prefix, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "prefix"))
    ListBatchJobDefinitionsRequest.struct_class = Types::ListBatchJobDefinitionsRequest

    ListBatchJobDefinitionsResponse.add_member(:batch_job_definitions, Shapes::ShapeRef.new(shape: BatchJobDefinitions, required: true, location_name: "batchJobDefinitions"))
    ListBatchJobDefinitionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListBatchJobDefinitionsResponse.struct_class = Types::ListBatchJobDefinitionsResponse

    ListBatchJobExecutionsRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: Identifier, required: true, location: "uri", location_name: "applicationId"))
    ListBatchJobExecutionsRequest.add_member(:execution_ids, Shapes::ShapeRef.new(shape: IdentifierList, location: "querystring", location_name: "executionIds"))
    ListBatchJobExecutionsRequest.add_member(:job_name, Shapes::ShapeRef.new(shape: String100, location: "querystring", location_name: "jobName"))
    ListBatchJobExecutionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListBatchJobExecutionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListBatchJobExecutionsRequest.add_member(:started_after, Shapes::ShapeRef.new(shape: Timestamp, location: "querystring", location_name: "startedAfter"))
    ListBatchJobExecutionsRequest.add_member(:started_before, Shapes::ShapeRef.new(shape: Timestamp, location: "querystring", location_name: "startedBefore"))
    ListBatchJobExecutionsRequest.add_member(:status, Shapes::ShapeRef.new(shape: BatchJobExecutionStatus, location: "querystring", location_name: "status"))
    ListBatchJobExecutionsRequest.struct_class = Types::ListBatchJobExecutionsRequest

    ListBatchJobExecutionsResponse.add_member(:batch_job_executions, Shapes::ShapeRef.new(shape: BatchJobExecutionSummaryList, required: true, location_name: "batchJobExecutions"))
    ListBatchJobExecutionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListBatchJobExecutionsResponse.struct_class = Types::ListBatchJobExecutionsResponse

    ListDataSetImportHistoryRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: Identifier, required: true, location: "uri", location_name: "applicationId"))
    ListDataSetImportHistoryRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListDataSetImportHistoryRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListDataSetImportHistoryRequest.struct_class = Types::ListDataSetImportHistoryRequest

    ListDataSetImportHistoryResponse.add_member(:data_set_import_tasks, Shapes::ShapeRef.new(shape: DataSetImportTaskList, required: true, location_name: "dataSetImportTasks"))
    ListDataSetImportHistoryResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListDataSetImportHistoryResponse.struct_class = Types::ListDataSetImportHistoryResponse

    ListDataSetsRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: Identifier, required: true, location: "uri", location_name: "applicationId"))
    ListDataSetsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListDataSetsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListDataSetsRequest.add_member(:prefix, Shapes::ShapeRef.new(shape: String200, location: "querystring", location_name: "prefix"))
    ListDataSetsRequest.struct_class = Types::ListDataSetsRequest

    ListDataSetsResponse.add_member(:data_sets, Shapes::ShapeRef.new(shape: DataSetsSummaryList, required: true, location_name: "dataSets"))
    ListDataSetsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListDataSetsResponse.struct_class = Types::ListDataSetsResponse

    ListDeploymentsRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: Identifier, required: true, location: "uri", location_name: "applicationId"))
    ListDeploymentsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListDeploymentsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListDeploymentsRequest.struct_class = Types::ListDeploymentsRequest

    ListDeploymentsResponse.add_member(:deployments, Shapes::ShapeRef.new(shape: DeploymentList, required: true, location_name: "deployments"))
    ListDeploymentsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListDeploymentsResponse.struct_class = Types::ListDeploymentsResponse

    ListEngineVersionsRequest.add_member(:engine_type, Shapes::ShapeRef.new(shape: EngineType, location: "querystring", location_name: "engineType"))
    ListEngineVersionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListEngineVersionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListEngineVersionsRequest.struct_class = Types::ListEngineVersionsRequest

    ListEngineVersionsResponse.add_member(:engine_versions, Shapes::ShapeRef.new(shape: EngineVersionsSummaryList, required: true, location_name: "engineVersions"))
    ListEngineVersionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListEngineVersionsResponse.struct_class = Types::ListEngineVersionsResponse

    ListEnvironmentsRequest.add_member(:engine_type, Shapes::ShapeRef.new(shape: EngineType, location: "querystring", location_name: "engineType"))
    ListEnvironmentsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListEnvironmentsRequest.add_member(:names, Shapes::ShapeRef.new(shape: EntityNameList, location: "querystring", location_name: "names"))
    ListEnvironmentsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListEnvironmentsRequest.struct_class = Types::ListEnvironmentsRequest

    ListEnvironmentsResponse.add_member(:environments, Shapes::ShapeRef.new(shape: EnvironmentSummaryList, required: true, location_name: "environments"))
    ListEnvironmentsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListEnvironmentsResponse.struct_class = Types::ListEnvironmentsResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, required: true, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    LogGroupSummaries.member = Shapes::ShapeRef.new(shape: LogGroupSummary)

    LogGroupSummary.add_member(:log_group_name, Shapes::ShapeRef.new(shape: LogGroupIdentifier, required: true, location_name: "logGroupName"))
    LogGroupSummary.add_member(:log_type, Shapes::ShapeRef.new(shape: String20, required: true, location_name: "logType"))
    LogGroupSummary.struct_class = Types::LogGroupSummary

    MaintenanceSchedule.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "endTime"))
    MaintenanceSchedule.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "startTime"))
    MaintenanceSchedule.struct_class = Types::MaintenanceSchedule

    PendingMaintenance.add_member(:engine_version, Shapes::ShapeRef.new(shape: String, location_name: "engineVersion"))
    PendingMaintenance.add_member(:schedule, Shapes::ShapeRef.new(shape: MaintenanceSchedule, location_name: "schedule"))
    PendingMaintenance.struct_class = Types::PendingMaintenance

    PoAttributes.add_member(:encoding, Shapes::ShapeRef.new(shape: String, location_name: "encoding"))
    PoAttributes.add_member(:format, Shapes::ShapeRef.new(shape: String, required: true, location_name: "format"))
    PoAttributes.add_member(:member_file_extensions, Shapes::ShapeRef.new(shape: String20List, required: true, location_name: "memberFileExtensions"))
    PoAttributes.struct_class = Types::PoAttributes

    PoDetailAttributes.add_member(:encoding, Shapes::ShapeRef.new(shape: String, required: true, location_name: "encoding"))
    PoDetailAttributes.add_member(:format, Shapes::ShapeRef.new(shape: String, required: true, location_name: "format"))
    PoDetailAttributes.struct_class = Types::PoDetailAttributes

    PortList.member = Shapes::ShapeRef.new(shape: Integer)

    PrimaryKey.add_member(:length, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "length"))
    PrimaryKey.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    PrimaryKey.add_member(:offset, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "offset"))
    PrimaryKey.struct_class = Types::PrimaryKey

    PsAttributes.add_member(:encoding, Shapes::ShapeRef.new(shape: String, location_name: "encoding"))
    PsAttributes.add_member(:format, Shapes::ShapeRef.new(shape: String, required: true, location_name: "format"))
    PsAttributes.struct_class = Types::PsAttributes

    PsDetailAttributes.add_member(:encoding, Shapes::ShapeRef.new(shape: String, required: true, location_name: "encoding"))
    PsDetailAttributes.add_member(:format, Shapes::ShapeRef.new(shape: String, required: true, location_name: "format"))
    PsDetailAttributes.struct_class = Types::PsDetailAttributes

    RecordLength.add_member(:max, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "max"))
    RecordLength.add_member(:min, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "min"))
    RecordLength.struct_class = Types::RecordLength

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ResourceNotFoundException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, location_name: "resourceId"))
    ResourceNotFoundException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, location_name: "resourceType"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ScriptBatchJobDefinition.add_member(:script_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "scriptName"))
    ScriptBatchJobDefinition.struct_class = Types::ScriptBatchJobDefinition

    ScriptBatchJobIdentifier.add_member(:script_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "scriptName"))
    ScriptBatchJobIdentifier.struct_class = Types::ScriptBatchJobIdentifier

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ServiceQuotaExceededException.add_member(:quota_code, Shapes::ShapeRef.new(shape: String, location_name: "quotaCode"))
    ServiceQuotaExceededException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, location_name: "resourceId"))
    ServiceQuotaExceededException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, location_name: "resourceType"))
    ServiceQuotaExceededException.add_member(:service_code, Shapes::ShapeRef.new(shape: String, location_name: "serviceCode"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    StartApplicationRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: Identifier, required: true, location: "uri", location_name: "applicationId"))
    StartApplicationRequest.struct_class = Types::StartApplicationRequest

    StartApplicationResponse.struct_class = Types::StartApplicationResponse

    StartBatchJobRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: Identifier, required: true, location: "uri", location_name: "applicationId"))
    StartBatchJobRequest.add_member(:batch_job_identifier, Shapes::ShapeRef.new(shape: BatchJobIdentifier, required: true, location_name: "batchJobIdentifier"))
    StartBatchJobRequest.add_member(:job_params, Shapes::ShapeRef.new(shape: BatchJobParametersMap, location_name: "jobParams"))
    StartBatchJobRequest.struct_class = Types::StartBatchJobRequest

    StartBatchJobResponse.add_member(:execution_id, Shapes::ShapeRef.new(shape: Identifier, required: true, location_name: "executionId"))
    StartBatchJobResponse.struct_class = Types::StartBatchJobResponse

    StopApplicationRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: Identifier, required: true, location: "uri", location_name: "applicationId"))
    StopApplicationRequest.add_member(:force_stop, Shapes::ShapeRef.new(shape: Boolean, location_name: "forceStop"))
    StopApplicationRequest.struct_class = Types::StopApplicationRequest

    StopApplicationResponse.struct_class = Types::StopApplicationResponse

    StorageConfiguration.add_member(:efs, Shapes::ShapeRef.new(shape: EfsStorageConfiguration, location_name: "efs"))
    StorageConfiguration.add_member(:fsx, Shapes::ShapeRef.new(shape: FsxStorageConfiguration, location_name: "fsx"))
    StorageConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    StorageConfiguration.add_member_subclass(:efs, Types::StorageConfiguration::Efs)
    StorageConfiguration.add_member_subclass(:fsx, Types::StorageConfiguration::Fsx)
    StorageConfiguration.add_member_subclass(:unknown, Types::StorageConfiguration::Unknown)
    StorageConfiguration.struct_class = Types::StorageConfiguration

    StorageConfigurationList.member = Shapes::ShapeRef.new(shape: StorageConfiguration)

    String20List.member = Shapes::ShapeRef.new(shape: String20)

    String50List.member = Shapes::ShapeRef.new(shape: String50)

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagMap.key = Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Shapes::ShapeRef.new(shape: TagValue)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ThrottlingException.add_member(:quota_code, Shapes::ShapeRef.new(shape: String, location_name: "quotaCode"))
    ThrottlingException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: Integer, location: "header", location_name: "Retry-After"))
    ThrottlingException.add_member(:service_code, Shapes::ShapeRef.new(shape: String, location_name: "serviceCode"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateApplicationRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: Identifier, required: true, location: "uri", location_name: "applicationId"))
    UpdateApplicationRequest.add_member(:current_application_version, Shapes::ShapeRef.new(shape: Version, required: true, location_name: "currentApplicationVersion"))
    UpdateApplicationRequest.add_member(:definition, Shapes::ShapeRef.new(shape: Definition, location_name: "definition"))
    UpdateApplicationRequest.add_member(:description, Shapes::ShapeRef.new(shape: EntityDescription, location_name: "description"))
    UpdateApplicationRequest.struct_class = Types::UpdateApplicationRequest

    UpdateApplicationResponse.add_member(:application_version, Shapes::ShapeRef.new(shape: Version, required: true, location_name: "applicationVersion"))
    UpdateApplicationResponse.struct_class = Types::UpdateApplicationResponse

    UpdateEnvironmentRequest.add_member(:apply_during_maintenance_window, Shapes::ShapeRef.new(shape: Boolean, location_name: "applyDuringMaintenanceWindow"))
    UpdateEnvironmentRequest.add_member(:desired_capacity, Shapes::ShapeRef.new(shape: CapacityValue, location_name: "desiredCapacity"))
    UpdateEnvironmentRequest.add_member(:engine_version, Shapes::ShapeRef.new(shape: EngineVersion, location_name: "engineVersion"))
    UpdateEnvironmentRequest.add_member(:environment_id, Shapes::ShapeRef.new(shape: Identifier, required: true, location: "uri", location_name: "environmentId"))
    UpdateEnvironmentRequest.add_member(:instance_type, Shapes::ShapeRef.new(shape: String20, location_name: "instanceType"))
    UpdateEnvironmentRequest.add_member(:preferred_maintenance_window, Shapes::ShapeRef.new(shape: String, location_name: "preferredMaintenanceWindow"))
    UpdateEnvironmentRequest.struct_class = Types::UpdateEnvironmentRequest

    UpdateEnvironmentResponse.add_member(:environment_id, Shapes::ShapeRef.new(shape: Identifier, required: true, location_name: "environmentId"))
    UpdateEnvironmentResponse.struct_class = Types::UpdateEnvironmentResponse

    ValidationException.add_member(:field_list, Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: "fieldList"))
    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationException.add_member(:reason, Shapes::ShapeRef.new(shape: ValidationExceptionReason, location_name: "reason"))
    ValidationException.struct_class = Types::ValidationException

    ValidationExceptionField.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationExceptionField.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    ValidationExceptionField.struct_class = Types::ValidationExceptionField

    ValidationExceptionFieldList.member = Shapes::ShapeRef.new(shape: ValidationExceptionField)

    VsamAttributes.add_member(:alternate_keys, Shapes::ShapeRef.new(shape: AlternateKeyList, location_name: "alternateKeys"))
    VsamAttributes.add_member(:compressed, Shapes::ShapeRef.new(shape: Boolean, location_name: "compressed"))
    VsamAttributes.add_member(:encoding, Shapes::ShapeRef.new(shape: String, location_name: "encoding"))
    VsamAttributes.add_member(:format, Shapes::ShapeRef.new(shape: String, required: true, location_name: "format"))
    VsamAttributes.add_member(:primary_key, Shapes::ShapeRef.new(shape: PrimaryKey, location_name: "primaryKey"))
    VsamAttributes.struct_class = Types::VsamAttributes

    VsamDetailAttributes.add_member(:alternate_keys, Shapes::ShapeRef.new(shape: AlternateKeyList, location_name: "alternateKeys"))
    VsamDetailAttributes.add_member(:cache_at_startup, Shapes::ShapeRef.new(shape: Boolean, location_name: "cacheAtStartup", metadata: {"box"=>true}))
    VsamDetailAttributes.add_member(:compressed, Shapes::ShapeRef.new(shape: Boolean, location_name: "compressed", metadata: {"box"=>true}))
    VsamDetailAttributes.add_member(:encoding, Shapes::ShapeRef.new(shape: String20, location_name: "encoding"))
    VsamDetailAttributes.add_member(:primary_key, Shapes::ShapeRef.new(shape: PrimaryKey, location_name: "primaryKey"))
    VsamDetailAttributes.add_member(:record_format, Shapes::ShapeRef.new(shape: String20, location_name: "recordFormat"))
    VsamDetailAttributes.struct_class = Types::VsamDetailAttributes


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2021-04-28"

      api.metadata = {
        "apiVersion" => "2021-04-28",
        "endpointPrefix" => "m2",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceFullName" => "AWSMainframeModernization",
        "serviceId" => "m2",
        "signatureVersion" => "v4",
        "signingName" => "m2",
        "uid" => "m2-2021-04-28",
      }

      api.add_operation(:cancel_batch_job_execution, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CancelBatchJobExecution"
        o.http_method = "POST"
        o.http_request_uri = "/applications/{applicationId}/batch-job-executions/{executionId}/cancel"
        o.input = Shapes::ShapeRef.new(shape: CancelBatchJobExecutionRequest)
        o.output = Shapes::ShapeRef.new(shape: CancelBatchJobExecutionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:create_application, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateApplication"
        o.http_method = "POST"
        o.http_request_uri = "/applications"
        o.input = Shapes::ShapeRef.new(shape: CreateApplicationRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateApplicationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:create_data_set_import_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDataSetImportTask"
        o.http_method = "POST"
        o.http_request_uri = "/applications/{applicationId}/dataset-import-task"
        o.input = Shapes::ShapeRef.new(shape: CreateDataSetImportTaskRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateDataSetImportTaskResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:create_deployment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDeployment"
        o.http_method = "POST"
        o.http_request_uri = "/applications/{applicationId}/deployments"
        o.input = Shapes::ShapeRef.new(shape: CreateDeploymentRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateDeploymentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:create_environment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateEnvironment"
        o.http_method = "POST"
        o.http_request_uri = "/environments"
        o.input = Shapes::ShapeRef.new(shape: CreateEnvironmentRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateEnvironmentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_application, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteApplication"
        o.http_method = "DELETE"
        o.http_request_uri = "/applications/{applicationId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteApplicationRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteApplicationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_application_from_environment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteApplicationFromEnvironment"
        o.http_method = "DELETE"
        o.http_request_uri = "/applications/{applicationId}/environment/{environmentId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteApplicationFromEnvironmentRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteApplicationFromEnvironmentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:delete_environment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteEnvironment"
        o.http_method = "DELETE"
        o.http_request_uri = "/environments/{environmentId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteEnvironmentRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteEnvironmentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_application, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetApplication"
        o.http_method = "GET"
        o.http_request_uri = "/applications/{applicationId}"
        o.input = Shapes::ShapeRef.new(shape: GetApplicationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetApplicationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_application_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetApplicationVersion"
        o.http_method = "GET"
        o.http_request_uri = "/applications/{applicationId}/versions/{applicationVersion}"
        o.input = Shapes::ShapeRef.new(shape: GetApplicationVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: GetApplicationVersionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_batch_job_execution, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetBatchJobExecution"
        o.http_method = "GET"
        o.http_request_uri = "/applications/{applicationId}/batch-job-executions/{executionId}"
        o.input = Shapes::ShapeRef.new(shape: GetBatchJobExecutionRequest)
        o.output = Shapes::ShapeRef.new(shape: GetBatchJobExecutionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_data_set_details, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDataSetDetails"
        o.http_method = "GET"
        o.http_request_uri = "/applications/{applicationId}/datasets/{dataSetName}"
        o.input = Shapes::ShapeRef.new(shape: GetDataSetDetailsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDataSetDetailsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_data_set_import_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDataSetImportTask"
        o.http_method = "GET"
        o.http_request_uri = "/applications/{applicationId}/dataset-import-tasks/{taskId}"
        o.input = Shapes::ShapeRef.new(shape: GetDataSetImportTaskRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDataSetImportTaskResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_deployment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDeployment"
        o.http_method = "GET"
        o.http_request_uri = "/applications/{applicationId}/deployments/{deploymentId}"
        o.input = Shapes::ShapeRef.new(shape: GetDeploymentRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDeploymentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_environment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetEnvironment"
        o.http_method = "GET"
        o.http_request_uri = "/environments/{environmentId}"
        o.input = Shapes::ShapeRef.new(shape: GetEnvironmentRequest)
        o.output = Shapes::ShapeRef.new(shape: GetEnvironmentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:list_application_versions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListApplicationVersions"
        o.http_method = "GET"
        o.http_request_uri = "/applications/{applicationId}/versions"
        o.input = Shapes::ShapeRef.new(shape: ListApplicationVersionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListApplicationVersionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_applications, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListApplications"
        o.http_method = "GET"
        o.http_request_uri = "/applications"
        o.input = Shapes::ShapeRef.new(shape: ListApplicationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListApplicationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_batch_job_definitions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListBatchJobDefinitions"
        o.http_method = "GET"
        o.http_request_uri = "/applications/{applicationId}/batch-job-definitions"
        o.input = Shapes::ShapeRef.new(shape: ListBatchJobDefinitionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListBatchJobDefinitionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_batch_job_executions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListBatchJobExecutions"
        o.http_method = "GET"
        o.http_request_uri = "/applications/{applicationId}/batch-job-executions"
        o.input = Shapes::ShapeRef.new(shape: ListBatchJobExecutionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListBatchJobExecutionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_data_set_import_history, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDataSetImportHistory"
        o.http_method = "GET"
        o.http_request_uri = "/applications/{applicationId}/dataset-import-tasks"
        o.input = Shapes::ShapeRef.new(shape: ListDataSetImportHistoryRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDataSetImportHistoryResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_data_sets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDataSets"
        o.http_method = "GET"
        o.http_request_uri = "/applications/{applicationId}/datasets"
        o.input = Shapes::ShapeRef.new(shape: ListDataSetsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDataSetsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_deployments, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDeployments"
        o.http_method = "GET"
        o.http_request_uri = "/applications/{applicationId}/deployments"
        o.input = Shapes::ShapeRef.new(shape: ListDeploymentsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDeploymentsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_engine_versions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListEngineVersions"
        o.http_method = "GET"
        o.http_request_uri = "/engine-versions"
        o.input = Shapes::ShapeRef.new(shape: ListEngineVersionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListEngineVersionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_environments, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListEnvironments"
        o.http_method = "GET"
        o.http_request_uri = "/environments"
        o.input = Shapes::ShapeRef.new(shape: ListEnvironmentsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListEnvironmentsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
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
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:start_application, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartApplication"
        o.http_method = "POST"
        o.http_request_uri = "/applications/{applicationId}/start"
        o.input = Shapes::ShapeRef.new(shape: StartApplicationRequest)
        o.output = Shapes::ShapeRef.new(shape: StartApplicationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:start_batch_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartBatchJob"
        o.http_method = "POST"
        o.http_request_uri = "/applications/{applicationId}/batch-job"
        o.input = Shapes::ShapeRef.new(shape: StartBatchJobRequest)
        o.output = Shapes::ShapeRef.new(shape: StartBatchJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:stop_application, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopApplication"
        o.http_method = "POST"
        o.http_request_uri = "/applications/{applicationId}/stop"
        o.input = Shapes::ShapeRef.new(shape: StopApplicationRequest)
        o.output = Shapes::ShapeRef.new(shape: StopApplicationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_application, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateApplication"
        o.http_method = "PATCH"
        o.http_request_uri = "/applications/{applicationId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateApplicationRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateApplicationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_environment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateEnvironment"
        o.http_method = "PATCH"
        o.http_request_uri = "/environments/{environmentId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateEnvironmentRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateEnvironmentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)
    end

  end
end
