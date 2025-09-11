# frozen_string_literal: true

# This is generated code!

module Aws::M2
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.m2#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AlternateKey = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.m2#AlternateKey', name: 'AlternateKey')
    AlternateKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.m2#AlternateKeyList', name: 'AlternateKeyList')
    ApplicationDeploymentLifecycle = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.m2#ApplicationDeploymentLifecycle', name: 'ApplicationDeploymentLifecycle', traits: {"smithy.api#enum" => [{"value" => "Deploying", "name" => "DEPLOYING"}, {"value" => "Deployed", "name" => "DEPLOYED"}]})
    ApplicationLifecycle = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.m2#ApplicationLifecycle', name: 'ApplicationLifecycle', traits: {"smithy.api#enum" => [{"value" => "Creating", "name" => "CREATING"}, {"value" => "Created", "name" => "CREATED"}, {"value" => "Available", "name" => "AVAILABLE"}, {"value" => "Ready", "name" => "READY"}, {"value" => "Starting", "name" => "STARTING"}, {"value" => "Running", "name" => "RUNNING"}, {"value" => "Stopping", "name" => "STOPPING"}, {"value" => "Stopped", "name" => "STOPPED"}, {"value" => "Failed", "name" => "FAILED"}, {"value" => "Deleting", "name" => "DELETING"}, {"value" => "Deleting From Environment", "name" => "DELETING_FROM_ENVIRONMENT"}]})
    ApplicationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.m2#ApplicationSummary', name: 'ApplicationSummary')
    ApplicationSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.m2#ApplicationSummaryList', name: 'ApplicationSummaryList')
    ApplicationVersionLifecycle = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.m2#ApplicationVersionLifecycle', name: 'ApplicationVersionLifecycle', traits: {"smithy.api#enum" => [{"value" => "Creating", "name" => "CREATING"}, {"value" => "Available", "name" => "AVAILABLE"}, {"value" => "Failed", "name" => "FAILED"}]})
    ApplicationVersionSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.m2#ApplicationVersionSummary', name: 'ApplicationVersionSummary')
    ApplicationVersionSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.m2#ApplicationVersionSummaryList', name: 'ApplicationVersionSummaryList')
    Arn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.m2#Arn', name: 'Arn', traits: {"smithy.api#pattern" => "^arn:(aws|aws-cn|aws-iso|aws-iso-[a-z]{1}|aws-us-gov):[A-Za-z0-9][A-Za-z0-9_/.-]{0,62}:([a-z]{2}-((iso[a-z]{0,1}-)|(gov-)){0,1}[a-z]+-[0-9]|):[0-9]{12}:[A-Za-z0-9/][A-Za-z0-9:_/+=,@.-]{0,1023}$"})
    ArnList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.m2#ArnList', name: 'ArnList', traits: {"smithy.api#length" => {"min" => 1}})
    AuthSecretsManagerArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.m2#AuthSecretsManagerArn', name: 'AuthSecretsManagerArn', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}})
    BatchJobDefinition = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.m2#BatchJobDefinition', name: 'BatchJobDefinition')
    BatchJobDefinitions = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.m2#BatchJobDefinitions', name: 'BatchJobDefinitions')
    BatchJobExecutionStatus = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.m2#BatchJobExecutionStatus', name: 'BatchJobExecutionStatus', traits: {"smithy.api#enum" => [{"value" => "Submitting", "name" => "SUBMITTING"}, {"value" => "Holding", "name" => "HOLDING"}, {"value" => "Dispatching", "name" => "DISPATCH"}, {"value" => "Running", "name" => "RUNNING"}, {"value" => "Cancelling", "name" => "CANCELLING"}, {"value" => "Cancelled", "name" => "CANCELLED"}, {"value" => "Succeeded", "name" => "SUCCEEDED"}, {"value" => "Failed", "name" => "FAILED"}, {"value" => "Purged", "name" => "PURGED"}, {"value" => "Succeeded With Warning", "name" => "SUCCEEDED_WITH_WARNING"}]})
    BatchJobExecutionSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.m2#BatchJobExecutionSummary', name: 'BatchJobExecutionSummary')
    BatchJobExecutionSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.m2#BatchJobExecutionSummaryList', name: 'BatchJobExecutionSummaryList')
    BatchJobIdentifier = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.m2#BatchJobIdentifier', name: 'BatchJobIdentifier')
    BatchJobParametersMap = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.m2#BatchJobParametersMap', name: 'BatchJobParametersMap', traits: {"smithy.api#length" => {"min" => 0, "max" => 500}})
    BatchJobStepList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.m2#BatchJobStepList', name: 'BatchJobStepList')
    BatchJobType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.m2#BatchJobType', name: 'BatchJobType', traits: {"smithy.api#enum" => [{"value" => "VSE", "name" => "VSE"}, {"value" => "JES2", "name" => "JES2"}, {"value" => "JES3", "name" => "JES3"}]})
    BatchParamKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.m2#BatchParamKey', name: 'BatchParamKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 32}, "smithy.api#pattern" => "^[A-Za-z][A-Za-z0-9]{1,31}$"})
    BatchParamValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.m2#BatchParamValue', name: 'BatchParamValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.m2#Boolean', name: 'Boolean', traits: {"smithy.api#default" => false})
    CancelBatchJobExecutionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.m2#CancelBatchJobExecutionInput', name: 'CancelBatchJobExecutionInput')
    CancelBatchJobExecutionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.m2#CancelBatchJobExecutionOutput', name: 'CancelBatchJobExecutionOutput')
    CapacityValue = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.m2#CapacityValue', name: 'CapacityValue')
    ClientToken = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.m2#ClientToken', name: 'ClientToken', traits: {"smithy.api#length" => {"max" => 128}, "smithy.api#pattern" => "^[!-~]+$"})
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.m2#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateApplicationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.m2#CreateApplicationInput', name: 'CreateApplicationInput')
    CreateApplicationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.m2#CreateApplicationOutput', name: 'CreateApplicationOutput')
    CreateDataSetExportTaskRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.m2#CreateDataSetExportTaskRequest', name: 'CreateDataSetExportTaskRequest')
    CreateDataSetExportTaskResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.m2#CreateDataSetExportTaskResponse', name: 'CreateDataSetExportTaskResponse')
    CreateDataSetImportTaskInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.m2#CreateDataSetImportTaskInput', name: 'CreateDataSetImportTaskInput')
    CreateDataSetImportTaskOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.m2#CreateDataSetImportTaskOutput', name: 'CreateDataSetImportTaskOutput')
    CreateDeploymentInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.m2#CreateDeploymentInput', name: 'CreateDeploymentInput', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.m2#Environment"}]})
    CreateDeploymentOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.m2#CreateDeploymentOutput', name: 'CreateDeploymentOutput')
    CreateEnvironmentInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.m2#CreateEnvironmentInput', name: 'CreateEnvironmentInput')
    CreateEnvironmentOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.m2#CreateEnvironmentOutput', name: 'CreateEnvironmentOutput')
    DataSet = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.m2#DataSet', name: 'DataSet')
    DataSetExportConfig = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.m2#DataSetExportConfig', name: 'DataSetExportConfig')
    DataSetExportItem = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.m2#DataSetExportItem', name: 'DataSetExportItem')
    DataSetExportList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.m2#DataSetExportList', name: 'DataSetExportList', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    DataSetExportSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.m2#DataSetExportSummary', name: 'DataSetExportSummary')
    DataSetExportTask = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.m2#DataSetExportTask', name: 'DataSetExportTask')
    DataSetExportTaskList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.m2#DataSetExportTaskList', name: 'DataSetExportTaskList')
    DataSetImportConfig = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.m2#DataSetImportConfig', name: 'DataSetImportConfig')
    DataSetImportItem = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.m2#DataSetImportItem', name: 'DataSetImportItem')
    DataSetImportList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.m2#DataSetImportList', name: 'DataSetImportList', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    DataSetImportSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.m2#DataSetImportSummary', name: 'DataSetImportSummary')
    DataSetImportTask = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.m2#DataSetImportTask', name: 'DataSetImportTask')
    DataSetImportTaskList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.m2#DataSetImportTaskList', name: 'DataSetImportTaskList')
    DataSetSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.m2#DataSetSummary', name: 'DataSetSummary')
    DataSetTaskLifecycle = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.m2#DataSetTaskLifecycle', name: 'DataSetTaskLifecycle', traits: {"smithy.api#enum" => [{"value" => "Creating", "name" => "CREATING"}, {"value" => "Running", "name" => "RUNNING"}, {"value" => "Completed", "name" => "COMPLETED"}, {"value" => "Failed", "name" => "FAILED"}]})
    DataSetsSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.m2#DataSetsSummaryList', name: 'DataSetsSummaryList')
    DatasetDetailOrgAttributes = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.m2#DatasetDetailOrgAttributes', name: 'DatasetDetailOrgAttributes')
    DatasetOrgAttributes = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.m2#DatasetOrgAttributes', name: 'DatasetOrgAttributes')
    Definition = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.m2#Definition', name: 'Definition')
    DeleteApplicationFromEnvironmentInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.m2#DeleteApplicationFromEnvironmentInput', name: 'DeleteApplicationFromEnvironmentInput')
    DeleteApplicationFromEnvironmentOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.m2#DeleteApplicationFromEnvironmentOutput', name: 'DeleteApplicationFromEnvironmentOutput')
    DeleteApplicationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.m2#DeleteApplicationInput', name: 'DeleteApplicationInput')
    DeleteApplicationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.m2#DeleteApplicationOutput', name: 'DeleteApplicationOutput')
    DeleteEnvironmentInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.m2#DeleteEnvironmentInput', name: 'DeleteEnvironmentInput')
    DeleteEnvironmentOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.m2#DeleteEnvironmentOutput', name: 'DeleteEnvironmentOutput')
    DeployedVersionSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.m2#DeployedVersionSummary', name: 'DeployedVersionSummary')
    DeploymentLifecycle = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.m2#DeploymentLifecycle', name: 'DeploymentLifecycle', traits: {"smithy.api#enum" => [{"value" => "Deploying", "name" => "DEPLOYING"}, {"value" => "Succeeded", "name" => "SUCCEEDED"}, {"value" => "Failed", "name" => "FAILED"}, {"value" => "Updating Deployment", "name" => "DEPLOY_UPDATE"}]})
    DeploymentList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.m2#DeploymentList', name: 'DeploymentList')
    DeploymentSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.m2#DeploymentSummary', name: 'DeploymentSummary')
    EfsStorageConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.m2#EfsStorageConfiguration', name: 'EfsStorageConfiguration')
    EngineType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.m2#EngineType', name: 'EngineType', traits: {"smithy.api#enum" => [{"value" => "microfocus", "name" => "MICROFOCUS"}, {"value" => "bluage", "name" => "BLUAGE"}]})
    EngineVersion = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.m2#EngineVersion', name: 'EngineVersion', traits: {"smithy.api#pattern" => "^\\S{1,10}$"})
    EngineVersionsSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.m2#EngineVersionsSummary', name: 'EngineVersionsSummary')
    EngineVersionsSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.m2#EngineVersionsSummaryList', name: 'EngineVersionsSummaryList')
    EntityDescription = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.m2#EntityDescription', name: 'EntityDescription', traits: {"smithy.api#length" => {"min" => 0, "max" => 500}})
    EntityName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.m2#EntityName', name: 'EntityName', traits: {"smithy.api#pattern" => "^[A-Za-z0-9][A-Za-z0-9_\\-]{1,59}$"})
    EntityNameList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.m2#EntityNameList', name: 'EntityNameList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    EnvironmentLifecycle = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.m2#EnvironmentLifecycle', name: 'EnvironmentLifecycle', traits: {"smithy.api#enum" => [{"value" => "Creating", "name" => "CREATING"}, {"value" => "Available", "name" => "AVAILABLE"}, {"value" => "Updating", "name" => "UPDATING"}, {"value" => "Deleting", "name" => "DELETING"}, {"value" => "Failed", "name" => "FAILED"}, {"value" => "UnHealthy", "name" => "UNHEALTHY"}]})
    EnvironmentSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.m2#EnvironmentSummary', name: 'EnvironmentSummary')
    EnvironmentSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.m2#EnvironmentSummaryList', name: 'EnvironmentSummaryList')
    ExecutionTimeoutException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.m2#ExecutionTimeoutException', name: 'ExecutionTimeoutException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 504, "smithy.api#retryable" => {}})
    ExternalLocation = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.m2#ExternalLocation', name: 'ExternalLocation')
    FileBatchJobDefinition = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.m2#FileBatchJobDefinition', name: 'FileBatchJobDefinition')
    FileBatchJobIdentifier = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.m2#FileBatchJobIdentifier', name: 'FileBatchJobIdentifier')
    FsxStorageConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.m2#FsxStorageConfiguration', name: 'FsxStorageConfiguration')
    GdgAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.m2#GdgAttributes', name: 'GdgAttributes')
    GdgDetailAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.m2#GdgDetailAttributes', name: 'GdgDetailAttributes')
    GetApplicationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.m2#GetApplicationInput', name: 'GetApplicationInput')
    GetApplicationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.m2#GetApplicationOutput', name: 'GetApplicationOutput')
    GetApplicationVersionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.m2#GetApplicationVersionInput', name: 'GetApplicationVersionInput')
    GetApplicationVersionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.m2#GetApplicationVersionOutput', name: 'GetApplicationVersionOutput')
    GetBatchJobExecutionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.m2#GetBatchJobExecutionInput', name: 'GetBatchJobExecutionInput')
    GetBatchJobExecutionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.m2#GetBatchJobExecutionOutput', name: 'GetBatchJobExecutionOutput')
    GetDataSetDetailsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.m2#GetDataSetDetailsRequest', name: 'GetDataSetDetailsRequest')
    GetDataSetDetailsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.m2#GetDataSetDetailsResponse', name: 'GetDataSetDetailsResponse')
    GetDataSetExportTaskRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.m2#GetDataSetExportTaskRequest', name: 'GetDataSetExportTaskRequest')
    GetDataSetExportTaskResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.m2#GetDataSetExportTaskResponse', name: 'GetDataSetExportTaskResponse')
    GetDataSetImportTaskInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.m2#GetDataSetImportTaskInput', name: 'GetDataSetImportTaskInput')
    GetDataSetImportTaskOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.m2#GetDataSetImportTaskOutput', name: 'GetDataSetImportTaskOutput')
    GetDeploymentInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.m2#GetDeploymentInput', name: 'GetDeploymentInput')
    GetDeploymentOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.m2#GetDeploymentOutput', name: 'GetDeploymentOutput')
    GetEnvironmentInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.m2#GetEnvironmentInput', name: 'GetEnvironmentInput')
    GetEnvironmentOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.m2#GetEnvironmentOutput', name: 'GetEnvironmentOutput')
    GetSignedBluinsightsUrlResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.m2#GetSignedBluinsightsUrlResponse', name: 'GetSignedBluinsightsUrlResponse')
    HighAvailabilityConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.m2#HighAvailabilityConfig', name: 'HighAvailabilityConfig')
    Identifier = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.m2#Identifier', name: 'Identifier', traits: {"smithy.api#pattern" => "^\\S{1,80}$"})
    IdentifierList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.m2#IdentifierList', name: 'IdentifierList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    Integer = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.m2#Integer', name: 'Integer', traits: {"smithy.api#default" => 0})
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.m2#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500, "smithy.api#retryable" => {}})
    JobIdentifier = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.m2#JobIdentifier', name: 'JobIdentifier')
    JobStep = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.m2#JobStep', name: 'JobStep')
    JobStepRestartMarker = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.m2#JobStepRestartMarker', name: 'JobStepRestartMarker')
    KMSKeyId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.m2#KMSKeyId', name: 'KMSKeyId', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9:/_-]+$"})
    ListApplicationVersionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.m2#ListApplicationVersionsRequest', name: 'ListApplicationVersionsRequest')
    ListApplicationVersionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.m2#ListApplicationVersionsResponse', name: 'ListApplicationVersionsResponse')
    ListApplicationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.m2#ListApplicationsRequest', name: 'ListApplicationsRequest', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.m2#Environment"}]})
    ListApplicationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.m2#ListApplicationsResponse', name: 'ListApplicationsResponse')
    ListBatchJobDefinitionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.m2#ListBatchJobDefinitionsRequest', name: 'ListBatchJobDefinitionsRequest')
    ListBatchJobDefinitionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.m2#ListBatchJobDefinitionsResponse', name: 'ListBatchJobDefinitionsResponse')
    ListBatchJobExecutionsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.m2#ListBatchJobExecutionsInput', name: 'ListBatchJobExecutionsInput')
    ListBatchJobExecutionsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.m2#ListBatchJobExecutionsOutput', name: 'ListBatchJobExecutionsOutput')
    ListBatchJobRestartPointsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.m2#ListBatchJobRestartPointsRequest', name: 'ListBatchJobRestartPointsRequest')
    ListBatchJobRestartPointsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.m2#ListBatchJobRestartPointsResponse', name: 'ListBatchJobRestartPointsResponse')
    ListDataSetExportHistoryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.m2#ListDataSetExportHistoryRequest', name: 'ListDataSetExportHistoryRequest')
    ListDataSetExportHistoryResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.m2#ListDataSetExportHistoryResponse', name: 'ListDataSetExportHistoryResponse')
    ListDataSetImportHistoryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.m2#ListDataSetImportHistoryRequest', name: 'ListDataSetImportHistoryRequest')
    ListDataSetImportHistoryResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.m2#ListDataSetImportHistoryResponse', name: 'ListDataSetImportHistoryResponse')
    ListDataSetsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.m2#ListDataSetsRequest', name: 'ListDataSetsRequest')
    ListDataSetsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.m2#ListDataSetsResponse', name: 'ListDataSetsResponse')
    ListDeploymentsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.m2#ListDeploymentsRequest', name: 'ListDeploymentsRequest')
    ListDeploymentsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.m2#ListDeploymentsResponse', name: 'ListDeploymentsResponse')
    ListEngineVersionsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.m2#ListEngineVersionsInput', name: 'ListEngineVersionsInput')
    ListEngineVersionsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.m2#ListEngineVersionsOutput', name: 'ListEngineVersionsOutput')
    ListEnvironmentsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.m2#ListEnvironmentsRequest', name: 'ListEnvironmentsRequest')
    ListEnvironmentsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.m2#ListEnvironmentsResponse', name: 'ListEnvironmentsResponse')
    ListTagsForResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.m2#ListTagsForResourceInput', name: 'ListTagsForResourceInput')
    ListTagsForResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.m2#ListTagsForResourceOutput', name: 'ListTagsForResourceOutput')
    LogGroupIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.m2#LogGroupIdentifier', name: 'LogGroupIdentifier', traits: {"smithy.api#length" => {"min" => 1, "max" => 512}})
    LogGroupSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.m2#LogGroupSummaries', name: 'LogGroupSummaries')
    LogGroupSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.m2#LogGroupSummary', name: 'LogGroupSummary')
    MaintenanceSchedule = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.m2#MaintenanceSchedule', name: 'MaintenanceSchedule')
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.m2#MaxResults', name: 'MaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 2000}})
    NetworkType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.m2#NetworkType', name: 'NetworkType', traits: {"smithy.api#enum" => [{"value" => "ipv4", "name" => "IPV4"}, {"value" => "dual", "name" => "DUAL"}]})
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.m2#NextToken', name: 'NextToken', traits: {"smithy.api#pattern" => "^\\S{1,2000}$"})
    PendingMaintenance = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.m2#PendingMaintenance', name: 'PendingMaintenance')
    PoAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.m2#PoAttributes', name: 'PoAttributes')
    PoDetailAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.m2#PoDetailAttributes', name: 'PoDetailAttributes')
    PortList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.m2#PortList', name: 'PortList', traits: {"smithy.api#length" => {"min" => 1}})
    PrimaryKey = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.m2#PrimaryKey', name: 'PrimaryKey')
    PsAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.m2#PsAttributes', name: 'PsAttributes')
    PsDetailAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.m2#PsDetailAttributes', name: 'PsDetailAttributes')
    RecordLength = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.m2#RecordLength', name: 'RecordLength')
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.m2#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    RestartBatchJobIdentifier = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.m2#RestartBatchJobIdentifier', name: 'RestartBatchJobIdentifier')
    S3BatchJobIdentifier = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.m2#S3BatchJobIdentifier', name: 'S3BatchJobIdentifier')
    ScriptBatchJobDefinition = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.m2#ScriptBatchJobDefinition', name: 'ScriptBatchJobDefinition')
    ScriptBatchJobIdentifier = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.m2#ScriptBatchJobIdentifier', name: 'ScriptBatchJobIdentifier')
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.m2#ServiceQuotaExceededException', name: 'ServiceQuotaExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    ServiceUnavailableException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.m2#ServiceUnavailableException', name: 'ServiceUnavailableException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 503, "smithy.api#retryable" => {}})
    StartApplicationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.m2#StartApplicationInput', name: 'StartApplicationInput')
    StartApplicationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.m2#StartApplicationOutput', name: 'StartApplicationOutput')
    StartBatchJobInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.m2#StartBatchJobInput', name: 'StartBatchJobInput')
    StartBatchJobOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.m2#StartBatchJobOutput', name: 'StartBatchJobOutput')
    StopApplicationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.m2#StopApplicationInput', name: 'StopApplicationInput')
    StopApplicationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.m2#StopApplicationOutput', name: 'StopApplicationOutput')
    StorageConfiguration = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.m2#StorageConfiguration', name: 'StorageConfiguration')
    StorageConfigurationList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.m2#StorageConfigurationList', name: 'StorageConfigurationList')
    String100 = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.m2#String100', name: 'String100', traits: {"smithy.api#pattern" => "^\\S{1,100}$"})
    String20 = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.m2#String20', name: 'String20', traits: {"smithy.api#pattern" => "^\\S{1,20}$"})
    String200 = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.m2#String200', name: 'String200', traits: {"smithy.api#pattern" => "^\\S{1,200}$"})
    String2000 = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.m2#String2000', name: 'String2000', traits: {"smithy.api#pattern" => "^\\S{1,2000}$"})
    String20List = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.m2#String20List', name: 'String20List', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    String50 = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.m2#String50', name: 'String50', traits: {"smithy.api#pattern" => "^\\S{1,50}$"})
    String50List = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.m2#String50List', name: 'String50List')
    StringFree65000 = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.m2#StringFree65000', name: 'StringFree65000', traits: {"smithy.api#length" => {"min" => 1, "max" => 65000}})
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.m2#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^(?!aws:).+$"})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.m2#TagKeyList', name: 'TagKeyList')
    TagMap = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.m2#TagMap', name: 'TagMap', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.m2#TagResourceInput', name: 'TagResourceInput')
    TagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.m2#TagResourceOutput', name: 'TagResourceOutput')
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.m2#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.m2#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429, "smithy.api#retryable" => {"throttling" => true}})
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.m2#Timestamp', name: 'Timestamp')
    UntagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.m2#UntagResourceInput', name: 'UntagResourceInput')
    UntagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.m2#UntagResourceOutput', name: 'UntagResourceOutput')
    UpdateApplicationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.m2#UpdateApplicationInput', name: 'UpdateApplicationInput')
    UpdateApplicationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.m2#UpdateApplicationOutput', name: 'UpdateApplicationOutput')
    UpdateEnvironmentInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.m2#UpdateEnvironmentInput', name: 'UpdateEnvironmentInput')
    UpdateEnvironmentOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.m2#UpdateEnvironmentOutput', name: 'UpdateEnvironmentOutput')
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.m2#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionField = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.m2#ValidationExceptionField', name: 'ValidationExceptionField')
    ValidationExceptionFieldList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.m2#ValidationExceptionFieldList', name: 'ValidationExceptionFieldList')
    ValidationExceptionReason = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.m2#ValidationExceptionReason', name: 'ValidationExceptionReason', traits: {"smithy.api#enum" => [{"value" => "unknownOperation", "name" => "UNKNOWN_OPERATION"}, {"value" => "cannotParse", "name" => "CANNOT_PARSE"}, {"value" => "featureNotAvailable", "name" => "FEATURE_NOT_AVAILABLE"}, {"value" => "unsupportedEngineVersion", "name" => "UNSUPPORTED_ENGINE_VERSION"}, {"value" => "fieldValidationFailed", "name" => "FIELD_VALIDATION_FAILED"}, {"value" => "other", "name" => "OTHER"}]})
    Version = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.m2#Version', name: 'Version', traits: {"smithy.api#range" => {"min" => 1}})
    VsamAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.m2#VsamAttributes', name: 'VsamAttributes')
    VsamDetailAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.m2#VsamDetailAttributes', name: 'VsamDetailAttributes')

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    AlternateKey.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'name'))
    AlternateKey.add_member(:offset, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'offset', traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    AlternateKey.add_member(:length, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'length', traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    AlternateKey.add_member(:allow_duplicates, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'allowDuplicates', traits: {"smithy.api#default" => false}))
    AlternateKey.type = Types::AlternateKey
    AlternateKeyList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AlternateKey)
    ApplicationSummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    ApplicationSummary.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityDescription, location_name: 'description'))
    ApplicationSummary.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'applicationId', traits: {"smithy.api#required" => {}}))
    ApplicationSummary.add_member(:application_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'applicationArn', traits: {"smithy.api#required" => {}}))
    ApplicationSummary.add_member(:application_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'applicationVersion', traits: {"smithy.api#required" => {}}))
    ApplicationSummary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationLifecycle, location_name: 'status', traits: {"smithy.api#required" => {}}))
    ApplicationSummary.add_member(:engine_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EngineType, location_name: 'engineType', traits: {"smithy.api#required" => {}}))
    ApplicationSummary.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'creationTime', traits: {"smithy.api#required" => {}}))
    ApplicationSummary.add_member(:environment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'environmentId'))
    ApplicationSummary.add_member(:last_start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastStartTime'))
    ApplicationSummary.add_member(:version_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationVersionLifecycle, location_name: 'versionStatus'))
    ApplicationSummary.add_member(:deployment_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationDeploymentLifecycle, location_name: 'deploymentStatus'))
    ApplicationSummary.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'roleArn'))
    ApplicationSummary.type = Types::ApplicationSummary
    ApplicationSummaryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationSummary)
    ApplicationVersionSummary.add_member(:application_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'applicationVersion', traits: {"smithy.api#required" => {}}))
    ApplicationVersionSummary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationVersionLifecycle, location_name: 'status', traits: {"smithy.api#required" => {}}))
    ApplicationVersionSummary.add_member(:status_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'statusReason'))
    ApplicationVersionSummary.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'creationTime', traits: {"smithy.api#required" => {}}))
    ApplicationVersionSummary.type = Types::ApplicationVersionSummary
    ApplicationVersionSummaryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationVersionSummary)
    ArnList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn)
    BatchJobDefinition.add_member(:file_batch_job_definition, Types::BatchJobDefinition::FileBatchJobDefinition, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FileBatchJobDefinition, location_name: 'fileBatchJobDefinition'))
    BatchJobDefinition.add_member(:script_batch_job_definition, Types::BatchJobDefinition::ScriptBatchJobDefinition, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScriptBatchJobDefinition, location_name: 'scriptBatchJobDefinition'))
    BatchJobDefinition.add_member(:unknown, Types::BatchJobDefinition::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    BatchJobDefinition.type = Types::BatchJobDefinition
    BatchJobDefinitions.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchJobDefinition)
    BatchJobExecutionSummary.add_member(:execution_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'executionId', traits: {"smithy.api#required" => {}}))
    BatchJobExecutionSummary.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'applicationId', traits: {"smithy.api#required" => {}}))
    BatchJobExecutionSummary.add_member(:job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String100, location_name: 'jobId'))
    BatchJobExecutionSummary.add_member(:job_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String100, location_name: 'jobName'))
    BatchJobExecutionSummary.add_member(:job_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchJobType, location_name: 'jobType'))
    BatchJobExecutionSummary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchJobExecutionStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    BatchJobExecutionSummary.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'startTime', traits: {"smithy.api#required" => {}}))
    BatchJobExecutionSummary.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'endTime'))
    BatchJobExecutionSummary.add_member(:return_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'returnCode'))
    BatchJobExecutionSummary.add_member(:batch_job_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchJobIdentifier, location_name: 'batchJobIdentifier'))
    BatchJobExecutionSummary.type = Types::BatchJobExecutionSummary
    BatchJobExecutionSummaryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchJobExecutionSummary)
    BatchJobIdentifier.add_member(:file_batch_job_identifier, Types::BatchJobIdentifier::FileBatchJobIdentifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FileBatchJobIdentifier, location_name: 'fileBatchJobIdentifier'))
    BatchJobIdentifier.add_member(:script_batch_job_identifier, Types::BatchJobIdentifier::ScriptBatchJobIdentifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScriptBatchJobIdentifier, location_name: 'scriptBatchJobIdentifier'))
    BatchJobIdentifier.add_member(:s3_batch_job_identifier, Types::BatchJobIdentifier::S3BatchJobIdentifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3BatchJobIdentifier, location_name: 's3BatchJobIdentifier'))
    BatchJobIdentifier.add_member(:restart_batch_job_identifier, Types::BatchJobIdentifier::RestartBatchJobIdentifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RestartBatchJobIdentifier, location_name: 'restartBatchJobIdentifier'))
    BatchJobIdentifier.add_member(:unknown, Types::BatchJobIdentifier::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    BatchJobIdentifier.type = Types::BatchJobIdentifier
    BatchJobParametersMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchParamKey)
    BatchJobParametersMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchParamValue)
    BatchJobStepList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobStep)
    CancelBatchJobExecutionInput.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'applicationId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CancelBatchJobExecutionInput.add_member(:execution_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'executionId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CancelBatchJobExecutionInput.add_member(:auth_secrets_manager_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthSecretsManagerArn, location_name: 'authSecretsManagerArn'))
    CancelBatchJobExecutionInput.type = Types::CancelBatchJobExecutionInput
    CancelBatchJobExecutionOutput.type = Types::CancelBatchJobExecutionOutput
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceId'))
    ConflictException.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceType'))
    ConflictException.type = Types::ConflictException
    CreateApplicationInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    CreateApplicationInput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityDescription, location_name: 'description'))
    CreateApplicationInput.add_member(:engine_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EngineType, location_name: 'engineType', traits: {"smithy.api#required" => {}}))
    CreateApplicationInput.add_member(:definition, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Definition, location_name: 'definition', traits: {"smithy.api#required" => {}}))
    CreateApplicationInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    CreateApplicationInput.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#idempotencyToken" => {}}))
    CreateApplicationInput.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'kmsKeyId'))
    CreateApplicationInput.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'roleArn'))
    CreateApplicationInput.type = Types::CreateApplicationInput
    CreateApplicationOutput.add_member(:application_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'applicationArn', traits: {"smithy.api#required" => {}}))
    CreateApplicationOutput.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'applicationId', traits: {"smithy.api#required" => {}}))
    CreateApplicationOutput.add_member(:application_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'applicationVersion', traits: {"smithy.api#required" => {}}))
    CreateApplicationOutput.type = Types::CreateApplicationOutput
    CreateDataSetExportTaskRequest.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'applicationId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateDataSetExportTaskRequest.add_member(:export_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataSetExportConfig, location_name: 'exportConfig', traits: {"smithy.api#required" => {}}))
    CreateDataSetExportTaskRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#idempotencyToken" => {}}))
    CreateDataSetExportTaskRequest.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSKeyId, location_name: 'kmsKeyId'))
    CreateDataSetExportTaskRequest.type = Types::CreateDataSetExportTaskRequest
    CreateDataSetExportTaskResponse.add_member(:task_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'taskId', traits: {"smithy.api#required" => {}}))
    CreateDataSetExportTaskResponse.type = Types::CreateDataSetExportTaskResponse
    CreateDataSetImportTaskInput.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'applicationId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateDataSetImportTaskInput.add_member(:import_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataSetImportConfig, location_name: 'importConfig', traits: {"smithy.api#required" => {}}))
    CreateDataSetImportTaskInput.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#idempotencyToken" => {}}))
    CreateDataSetImportTaskInput.type = Types::CreateDataSetImportTaskInput
    CreateDataSetImportTaskOutput.add_member(:task_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'taskId', traits: {"smithy.api#required" => {}}))
    CreateDataSetImportTaskOutput.type = Types::CreateDataSetImportTaskOutput
    CreateDeploymentInput.add_member(:environment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'environmentId', traits: {"smithy.api#required" => {}}))
    CreateDeploymentInput.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'applicationId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateDeploymentInput.add_member(:application_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'applicationVersion', traits: {"smithy.api#required" => {}}))
    CreateDeploymentInput.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#idempotencyToken" => {}}))
    CreateDeploymentInput.type = Types::CreateDeploymentInput
    CreateDeploymentOutput.add_member(:deployment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'deploymentId', traits: {"smithy.api#required" => {}}))
    CreateDeploymentOutput.type = Types::CreateDeploymentOutput
    CreateEnvironmentInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    CreateEnvironmentInput.add_member(:instance_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String20, location_name: 'instanceType', traits: {"smithy.api#required" => {}}))
    CreateEnvironmentInput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityDescription, location_name: 'description'))
    CreateEnvironmentInput.add_member(:engine_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EngineType, location_name: 'engineType', traits: {"smithy.api#required" => {}}))
    CreateEnvironmentInput.add_member(:engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EngineVersion, location_name: 'engineVersion'))
    CreateEnvironmentInput.add_member(:subnet_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String50List, location_name: 'subnetIds'))
    CreateEnvironmentInput.add_member(:security_group_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String50List, location_name: 'securityGroupIds'))
    CreateEnvironmentInput.add_member(:storage_configurations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StorageConfigurationList, location_name: 'storageConfigurations'))
    CreateEnvironmentInput.add_member(:publicly_accessible, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'publiclyAccessible', traits: {"smithy.api#default" => false}))
    CreateEnvironmentInput.add_member(:high_availability_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HighAvailabilityConfig, location_name: 'highAvailabilityConfig'))
    CreateEnvironmentInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    CreateEnvironmentInput.add_member(:preferred_maintenance_window, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String50, location_name: 'preferredMaintenanceWindow'))
    CreateEnvironmentInput.add_member(:network_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkType, location_name: 'networkType'))
    CreateEnvironmentInput.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#idempotencyToken" => {}}))
    CreateEnvironmentInput.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'kmsKeyId'))
    CreateEnvironmentInput.type = Types::CreateEnvironmentInput
    CreateEnvironmentOutput.add_member(:environment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'environmentId', traits: {"smithy.api#required" => {}}))
    CreateEnvironmentOutput.type = Types::CreateEnvironmentOutput
    DataSet.add_member(:storage_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'storageType'))
    DataSet.add_member(:dataset_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'datasetName', traits: {"smithy.api#required" => {}}))
    DataSet.add_member(:dataset_org, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetOrgAttributes, location_name: 'datasetOrg', traits: {"smithy.api#required" => {}}))
    DataSet.add_member(:relative_path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'relativePath'))
    DataSet.add_member(:record_length, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecordLength, location_name: 'recordLength', traits: {"smithy.api#required" => {}}))
    DataSet.type = Types::DataSet
    DataSetExportConfig.add_member(:s3_location, Types::DataSetExportConfig::S3Location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 's3Location'))
    DataSetExportConfig.add_member(:data_sets, Types::DataSetExportConfig::DataSets, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataSetExportList, location_name: 'dataSets'))
    DataSetExportConfig.add_member(:unknown, Types::DataSetExportConfig::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    DataSetExportConfig.type = Types::DataSetExportConfig
    DataSetExportItem.add_member(:dataset_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String200, location_name: 'datasetName', traits: {"smithy.api#required" => {}}))
    DataSetExportItem.add_member(:external_location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalLocation, location_name: 'externalLocation', traits: {"smithy.api#required" => {}}))
    DataSetExportItem.type = Types::DataSetExportItem
    DataSetExportList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataSetExportItem)
    DataSetExportSummary.add_member(:total, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'total', traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    DataSetExportSummary.add_member(:succeeded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'succeeded', traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    DataSetExportSummary.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'failed', traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    DataSetExportSummary.add_member(:pending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'pending', traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    DataSetExportSummary.add_member(:in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'inProgress', traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    DataSetExportSummary.type = Types::DataSetExportSummary
    DataSetExportTask.add_member(:task_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'taskId', traits: {"smithy.api#required" => {}}))
    DataSetExportTask.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataSetTaskLifecycle, location_name: 'status', traits: {"smithy.api#required" => {}}))
    DataSetExportTask.add_member(:summary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataSetExportSummary, location_name: 'summary', traits: {"smithy.api#required" => {}}))
    DataSetExportTask.add_member(:status_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'statusReason'))
    DataSetExportTask.type = Types::DataSetExportTask
    DataSetExportTaskList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataSetExportTask)
    DataSetImportConfig.add_member(:s3_location, Types::DataSetImportConfig::S3Location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String2000, location_name: 's3Location'))
    DataSetImportConfig.add_member(:data_sets, Types::DataSetImportConfig::DataSets, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataSetImportList, location_name: 'dataSets'))
    DataSetImportConfig.add_member(:unknown, Types::DataSetImportConfig::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    DataSetImportConfig.type = Types::DataSetImportConfig
    DataSetImportItem.add_member(:data_set, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataSet, location_name: 'dataSet', traits: {"smithy.api#required" => {}}))
    DataSetImportItem.add_member(:external_location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalLocation, location_name: 'externalLocation', traits: {"smithy.api#required" => {}}))
    DataSetImportItem.type = Types::DataSetImportItem
    DataSetImportList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataSetImportItem)
    DataSetImportSummary.add_member(:total, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'total', traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    DataSetImportSummary.add_member(:succeeded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'succeeded', traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    DataSetImportSummary.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'failed', traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    DataSetImportSummary.add_member(:pending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'pending', traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    DataSetImportSummary.add_member(:in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'inProgress', traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    DataSetImportSummary.type = Types::DataSetImportSummary
    DataSetImportTask.add_member(:task_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'taskId', traits: {"smithy.api#required" => {}}))
    DataSetImportTask.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataSetTaskLifecycle, location_name: 'status', traits: {"smithy.api#required" => {}}))
    DataSetImportTask.add_member(:summary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataSetImportSummary, location_name: 'summary', traits: {"smithy.api#required" => {}}))
    DataSetImportTask.add_member(:status_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'statusReason'))
    DataSetImportTask.type = Types::DataSetImportTask
    DataSetImportTaskList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataSetImportTask)
    DataSetSummary.add_member(:data_set_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String200, location_name: 'dataSetName', traits: {"smithy.api#required" => {}}))
    DataSetSummary.add_member(:data_set_org, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String20, location_name: 'dataSetOrg'))
    DataSetSummary.add_member(:format, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String20, location_name: 'format'))
    DataSetSummary.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'creationTime'))
    DataSetSummary.add_member(:last_updated_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdatedTime'))
    DataSetSummary.add_member(:last_referenced_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastReferencedTime'))
    DataSetSummary.type = Types::DataSetSummary
    DataSetsSummaryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataSetSummary)
    DatasetDetailOrgAttributes.add_member(:vsam, Types::DatasetDetailOrgAttributes::Vsam, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VsamDetailAttributes, location_name: 'vsam'))
    DatasetDetailOrgAttributes.add_member(:gdg, Types::DatasetDetailOrgAttributes::Gdg, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GdgDetailAttributes, location_name: 'gdg'))
    DatasetDetailOrgAttributes.add_member(:po, Types::DatasetDetailOrgAttributes::Po, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PoDetailAttributes, location_name: 'po'))
    DatasetDetailOrgAttributes.add_member(:ps, Types::DatasetDetailOrgAttributes::Ps, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PsDetailAttributes, location_name: 'ps'))
    DatasetDetailOrgAttributes.add_member(:unknown, Types::DatasetDetailOrgAttributes::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    DatasetDetailOrgAttributes.type = Types::DatasetDetailOrgAttributes
    DatasetOrgAttributes.add_member(:vsam, Types::DatasetOrgAttributes::Vsam, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VsamAttributes, location_name: 'vsam'))
    DatasetOrgAttributes.add_member(:gdg, Types::DatasetOrgAttributes::Gdg, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GdgAttributes, location_name: 'gdg'))
    DatasetOrgAttributes.add_member(:po, Types::DatasetOrgAttributes::Po, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PoAttributes, location_name: 'po'))
    DatasetOrgAttributes.add_member(:ps, Types::DatasetOrgAttributes::Ps, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PsAttributes, location_name: 'ps'))
    DatasetOrgAttributes.add_member(:unknown, Types::DatasetOrgAttributes::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    DatasetOrgAttributes.type = Types::DatasetOrgAttributes
    Definition.add_member(:s3_location, Types::Definition::S3Location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String2000, location_name: 's3Location'))
    Definition.add_member(:content, Types::Definition::Content, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringFree65000, location_name: 'content'))
    Definition.add_member(:unknown, Types::Definition::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    Definition.type = Types::Definition
    DeleteApplicationFromEnvironmentInput.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'applicationId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteApplicationFromEnvironmentInput.add_member(:environment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'environmentId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteApplicationFromEnvironmentInput.type = Types::DeleteApplicationFromEnvironmentInput
    DeleteApplicationFromEnvironmentOutput.type = Types::DeleteApplicationFromEnvironmentOutput
    DeleteApplicationInput.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'applicationId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteApplicationInput.type = Types::DeleteApplicationInput
    DeleteApplicationOutput.type = Types::DeleteApplicationOutput
    DeleteEnvironmentInput.add_member(:environment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'environmentId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteEnvironmentInput.type = Types::DeleteEnvironmentInput
    DeleteEnvironmentOutput.type = Types::DeleteEnvironmentOutput
    DeployedVersionSummary.add_member(:application_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'applicationVersion', traits: {"smithy.api#required" => {}}))
    DeployedVersionSummary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentLifecycle, location_name: 'status', traits: {"smithy.api#required" => {}}))
    DeployedVersionSummary.add_member(:status_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'statusReason'))
    DeployedVersionSummary.type = Types::DeployedVersionSummary
    DeploymentList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentSummary)
    DeploymentSummary.add_member(:deployment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'deploymentId', traits: {"smithy.api#required" => {}}))
    DeploymentSummary.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'applicationId', traits: {"smithy.api#required" => {}}))
    DeploymentSummary.add_member(:environment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'environmentId', traits: {"smithy.api#required" => {}}))
    DeploymentSummary.add_member(:application_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'applicationVersion', traits: {"smithy.api#required" => {}}))
    DeploymentSummary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentLifecycle, location_name: 'status', traits: {"smithy.api#required" => {}}))
    DeploymentSummary.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'creationTime', traits: {"smithy.api#required" => {}}))
    DeploymentSummary.add_member(:status_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'statusReason'))
    DeploymentSummary.type = Types::DeploymentSummary
    EfsStorageConfiguration.add_member(:file_system_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String200, location_name: 'fileSystemId', traits: {"smithy.api#jsonName" => "file-system-id", "smithy.api#required" => {}}))
    EfsStorageConfiguration.add_member(:mount_point, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String200, location_name: 'mountPoint', traits: {"smithy.api#jsonName" => "mount-point", "smithy.api#required" => {}}))
    EfsStorageConfiguration.type = Types::EfsStorageConfiguration
    EngineVersionsSummary.add_member(:engine_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'engineType', traits: {"smithy.api#required" => {}}))
    EngineVersionsSummary.add_member(:engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'engineVersion', traits: {"smithy.api#required" => {}}))
    EngineVersionsSummary.type = Types::EngineVersionsSummary
    EngineVersionsSummaryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EngineVersionsSummary)
    EntityNameList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityName)
    EnvironmentSummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    EnvironmentSummary.add_member(:environment_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'environmentArn', traits: {"smithy.api#required" => {}}))
    EnvironmentSummary.add_member(:environment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'environmentId', traits: {"smithy.api#required" => {}}))
    EnvironmentSummary.add_member(:instance_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String20, location_name: 'instanceType', traits: {"smithy.api#required" => {}}))
    EnvironmentSummary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentLifecycle, location_name: 'status', traits: {"smithy.api#required" => {}}))
    EnvironmentSummary.add_member(:engine_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EngineType, location_name: 'engineType', traits: {"smithy.api#required" => {}}))
    EnvironmentSummary.add_member(:engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EngineVersion, location_name: 'engineVersion', traits: {"smithy.api#required" => {}}))
    EnvironmentSummary.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'creationTime', traits: {"smithy.api#required" => {}}))
    EnvironmentSummary.add_member(:network_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkType, location_name: 'networkType'))
    EnvironmentSummary.type = Types::EnvironmentSummary
    EnvironmentSummaryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentSummary)
    ExecutionTimeoutException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ExecutionTimeoutException.type = Types::ExecutionTimeoutException
    ExternalLocation.add_member(:s3_location, Types::ExternalLocation::S3Location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String2000, location_name: 's3Location'))
    ExternalLocation.add_member(:unknown, Types::ExternalLocation::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    ExternalLocation.type = Types::ExternalLocation
    FileBatchJobDefinition.add_member(:file_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'fileName', traits: {"smithy.api#required" => {}}))
    FileBatchJobDefinition.add_member(:folder_path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'folderPath'))
    FileBatchJobDefinition.type = Types::FileBatchJobDefinition
    FileBatchJobIdentifier.add_member(:file_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'fileName', traits: {"smithy.api#required" => {}}))
    FileBatchJobIdentifier.add_member(:folder_path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'folderPath'))
    FileBatchJobIdentifier.type = Types::FileBatchJobIdentifier
    FsxStorageConfiguration.add_member(:file_system_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String200, location_name: 'fileSystemId', traits: {"smithy.api#jsonName" => "file-system-id", "smithy.api#required" => {}}))
    FsxStorageConfiguration.add_member(:mount_point, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String200, location_name: 'mountPoint', traits: {"smithy.api#jsonName" => "mount-point", "smithy.api#required" => {}}))
    FsxStorageConfiguration.type = Types::FsxStorageConfiguration
    GdgAttributes.add_member(:limit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'limit', traits: {"smithy.api#default" => 0}))
    GdgAttributes.add_member(:roll_disposition, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'rollDisposition'))
    GdgAttributes.type = Types::GdgAttributes
    GdgDetailAttributes.add_member(:limit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'limit', traits: {"smithy.api#default" => 0}))
    GdgDetailAttributes.add_member(:roll_disposition, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String50, location_name: 'rollDisposition'))
    GdgDetailAttributes.type = Types::GdgDetailAttributes
    GetApplicationInput.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'applicationId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetApplicationInput.type = Types::GetApplicationInput
    GetApplicationOutput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    GetApplicationOutput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityDescription, location_name: 'description'))
    GetApplicationOutput.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'applicationId', traits: {"smithy.api#required" => {}}))
    GetApplicationOutput.add_member(:application_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'applicationArn', traits: {"smithy.api#required" => {}}))
    GetApplicationOutput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationLifecycle, location_name: 'status', traits: {"smithy.api#required" => {}}))
    GetApplicationOutput.add_member(:latest_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationVersionSummary, location_name: 'latestVersion', traits: {"smithy.api#required" => {}}))
    GetApplicationOutput.add_member(:deployed_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeployedVersionSummary, location_name: 'deployedVersion'))
    GetApplicationOutput.add_member(:engine_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EngineType, location_name: 'engineType', traits: {"smithy.api#required" => {}}))
    GetApplicationOutput.add_member(:log_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogGroupSummaries, location_name: 'logGroups'))
    GetApplicationOutput.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'creationTime', traits: {"smithy.api#required" => {}}))
    GetApplicationOutput.add_member(:last_start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastStartTime'))
    GetApplicationOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    GetApplicationOutput.add_member(:environment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'environmentId'))
    GetApplicationOutput.add_member(:target_group_arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArnList, location_name: 'targetGroupArns'))
    GetApplicationOutput.add_member(:listener_arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArnList, location_name: 'listenerArns'))
    GetApplicationOutput.add_member(:listener_ports, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PortList, location_name: 'listenerPorts'))
    GetApplicationOutput.add_member(:load_balancer_dns_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String100, location_name: 'loadBalancerDnsName'))
    GetApplicationOutput.add_member(:status_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'statusReason'))
    GetApplicationOutput.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'kmsKeyId'))
    GetApplicationOutput.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'roleArn'))
    GetApplicationOutput.type = Types::GetApplicationOutput
    GetApplicationVersionInput.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'applicationId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetApplicationVersionInput.add_member(:application_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'applicationVersion', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetApplicationVersionInput.type = Types::GetApplicationVersionInput
    GetApplicationVersionOutput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    GetApplicationVersionOutput.add_member(:application_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'applicationVersion', traits: {"smithy.api#required" => {}}))
    GetApplicationVersionOutput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityDescription, location_name: 'description'))
    GetApplicationVersionOutput.add_member(:definition_content, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringFree65000, location_name: 'definitionContent', traits: {"smithy.api#required" => {}}))
    GetApplicationVersionOutput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationVersionLifecycle, location_name: 'status', traits: {"smithy.api#required" => {}}))
    GetApplicationVersionOutput.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'creationTime', traits: {"smithy.api#required" => {}}))
    GetApplicationVersionOutput.add_member(:status_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'statusReason'))
    GetApplicationVersionOutput.type = Types::GetApplicationVersionOutput
    GetBatchJobExecutionInput.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'applicationId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetBatchJobExecutionInput.add_member(:execution_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'executionId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetBatchJobExecutionInput.type = Types::GetBatchJobExecutionInput
    GetBatchJobExecutionOutput.add_member(:execution_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'executionId', traits: {"smithy.api#required" => {}}))
    GetBatchJobExecutionOutput.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'applicationId', traits: {"smithy.api#required" => {}}))
    GetBatchJobExecutionOutput.add_member(:job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String100, location_name: 'jobId'))
    GetBatchJobExecutionOutput.add_member(:job_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String100, location_name: 'jobName'))
    GetBatchJobExecutionOutput.add_member(:job_user, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String100, location_name: 'jobUser'))
    GetBatchJobExecutionOutput.add_member(:job_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchJobType, location_name: 'jobType'))
    GetBatchJobExecutionOutput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchJobExecutionStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    GetBatchJobExecutionOutput.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'startTime', traits: {"smithy.api#required" => {}}))
    GetBatchJobExecutionOutput.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'endTime'))
    GetBatchJobExecutionOutput.add_member(:status_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'statusReason'))
    GetBatchJobExecutionOutput.add_member(:return_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'returnCode'))
    GetBatchJobExecutionOutput.add_member(:batch_job_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchJobIdentifier, location_name: 'batchJobIdentifier'))
    GetBatchJobExecutionOutput.add_member(:job_step_restart_marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobStepRestartMarker, location_name: 'jobStepRestartMarker'))
    GetBatchJobExecutionOutput.type = Types::GetBatchJobExecutionOutput
    GetDataSetDetailsRequest.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'applicationId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDataSetDetailsRequest.add_member(:data_set_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String200, location_name: 'dataSetName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDataSetDetailsRequest.type = Types::GetDataSetDetailsRequest
    GetDataSetDetailsResponse.add_member(:data_set_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String200, location_name: 'dataSetName', traits: {"smithy.api#required" => {}}))
    GetDataSetDetailsResponse.add_member(:data_set_org, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DatasetDetailOrgAttributes, location_name: 'dataSetOrg'))
    GetDataSetDetailsResponse.add_member(:record_length, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'recordLength', traits: {"smithy.api#default" => nil}))
    GetDataSetDetailsResponse.add_member(:location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String2000, location_name: 'location'))
    GetDataSetDetailsResponse.add_member(:blocksize, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'blocksize', traits: {"smithy.api#default" => nil}))
    GetDataSetDetailsResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'creationTime'))
    GetDataSetDetailsResponse.add_member(:last_updated_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdatedTime'))
    GetDataSetDetailsResponse.add_member(:last_referenced_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastReferencedTime'))
    GetDataSetDetailsResponse.add_member(:file_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Long, location_name: 'fileSize', traits: {"smithy.api#default" => nil}))
    GetDataSetDetailsResponse.type = Types::GetDataSetDetailsResponse
    GetDataSetExportTaskRequest.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'applicationId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDataSetExportTaskRequest.add_member(:task_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'taskId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDataSetExportTaskRequest.type = Types::GetDataSetExportTaskRequest
    GetDataSetExportTaskResponse.add_member(:task_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'taskId', traits: {"smithy.api#required" => {}}))
    GetDataSetExportTaskResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataSetTaskLifecycle, location_name: 'status', traits: {"smithy.api#required" => {}}))
    GetDataSetExportTaskResponse.add_member(:summary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataSetExportSummary, location_name: 'summary'))
    GetDataSetExportTaskResponse.add_member(:status_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'statusReason'))
    GetDataSetExportTaskResponse.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'kmsKeyArn'))
    GetDataSetExportTaskResponse.type = Types::GetDataSetExportTaskResponse
    GetDataSetImportTaskInput.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'applicationId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDataSetImportTaskInput.add_member(:task_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'taskId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDataSetImportTaskInput.type = Types::GetDataSetImportTaskInput
    GetDataSetImportTaskOutput.add_member(:task_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'taskId', traits: {"smithy.api#required" => {}}))
    GetDataSetImportTaskOutput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataSetTaskLifecycle, location_name: 'status', traits: {"smithy.api#required" => {}}))
    GetDataSetImportTaskOutput.add_member(:summary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataSetImportSummary, location_name: 'summary'))
    GetDataSetImportTaskOutput.type = Types::GetDataSetImportTaskOutput
    GetDeploymentInput.add_member(:deployment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'deploymentId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDeploymentInput.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'applicationId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDeploymentInput.type = Types::GetDeploymentInput
    GetDeploymentOutput.add_member(:deployment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'deploymentId', traits: {"smithy.api#required" => {}}))
    GetDeploymentOutput.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'applicationId', traits: {"smithy.api#required" => {}}))
    GetDeploymentOutput.add_member(:environment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'environmentId', traits: {"smithy.api#required" => {}}))
    GetDeploymentOutput.add_member(:application_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'applicationVersion', traits: {"smithy.api#required" => {}}))
    GetDeploymentOutput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentLifecycle, location_name: 'status', traits: {"smithy.api#required" => {}}))
    GetDeploymentOutput.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'creationTime', traits: {"smithy.api#required" => {}}))
    GetDeploymentOutput.add_member(:status_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'statusReason'))
    GetDeploymentOutput.type = Types::GetDeploymentOutput
    GetEnvironmentInput.add_member(:environment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'environmentId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetEnvironmentInput.type = Types::GetEnvironmentInput
    GetEnvironmentOutput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    GetEnvironmentOutput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityDescription, location_name: 'description'))
    GetEnvironmentOutput.add_member(:environment_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'environmentArn', traits: {"smithy.api#required" => {}}))
    GetEnvironmentOutput.add_member(:environment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'environmentId', traits: {"smithy.api#required" => {}}))
    GetEnvironmentOutput.add_member(:instance_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String20, location_name: 'instanceType', traits: {"smithy.api#required" => {}}))
    GetEnvironmentOutput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentLifecycle, location_name: 'status', traits: {"smithy.api#required" => {}}))
    GetEnvironmentOutput.add_member(:engine_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EngineType, location_name: 'engineType', traits: {"smithy.api#required" => {}}))
    GetEnvironmentOutput.add_member(:engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EngineVersion, location_name: 'engineVersion', traits: {"smithy.api#required" => {}}))
    GetEnvironmentOutput.add_member(:vpc_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String50, location_name: 'vpcId', traits: {"smithy.api#required" => {}}))
    GetEnvironmentOutput.add_member(:subnet_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String50List, location_name: 'subnetIds', traits: {"smithy.api#required" => {}}))
    GetEnvironmentOutput.add_member(:security_group_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String50List, location_name: 'securityGroupIds', traits: {"smithy.api#required" => {}}))
    GetEnvironmentOutput.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'creationTime', traits: {"smithy.api#required" => {}}))
    GetEnvironmentOutput.add_member(:storage_configurations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StorageConfigurationList, location_name: 'storageConfigurations'))
    GetEnvironmentOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    GetEnvironmentOutput.add_member(:high_availability_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HighAvailabilityConfig, location_name: 'highAvailabilityConfig'))
    GetEnvironmentOutput.add_member(:publicly_accessible, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'publiclyAccessible', traits: {"smithy.api#default" => false}))
    GetEnvironmentOutput.add_member(:actual_capacity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CapacityValue, location_name: 'actualCapacity'))
    GetEnvironmentOutput.add_member(:load_balancer_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'loadBalancerArn'))
    GetEnvironmentOutput.add_member(:status_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'statusReason'))
    GetEnvironmentOutput.add_member(:preferred_maintenance_window, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String50, location_name: 'preferredMaintenanceWindow'))
    GetEnvironmentOutput.add_member(:pending_maintenance, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PendingMaintenance, location_name: 'pendingMaintenance'))
    GetEnvironmentOutput.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'kmsKeyId'))
    GetEnvironmentOutput.add_member(:network_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkType, location_name: 'networkType'))
    GetEnvironmentOutput.type = Types::GetEnvironmentOutput
    GetSignedBluinsightsUrlResponse.add_member(:signed_bi_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'signedBiUrl', traits: {"smithy.api#required" => {}}))
    GetSignedBluinsightsUrlResponse.type = Types::GetSignedBluinsightsUrlResponse
    HighAvailabilityConfig.add_member(:desired_capacity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CapacityValue, location_name: 'desiredCapacity', traits: {"smithy.api#required" => {}}))
    HighAvailabilityConfig.type = Types::HighAvailabilityConfig
    IdentifierList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier)
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    InternalServerException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'retryAfterSeconds', traits: {"smithy.api#default" => 0, "smithy.api#httpHeader" => "Retry-After"}))
    InternalServerException.type = Types::InternalServerException
    JobIdentifier.add_member(:file_name, Types::JobIdentifier::FileName, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'fileName'))
    JobIdentifier.add_member(:script_name, Types::JobIdentifier::ScriptName, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'scriptName'))
    JobIdentifier.add_member(:unknown, Types::JobIdentifier::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    JobIdentifier.type = Types::JobIdentifier
    JobStep.add_member(:step_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'stepNumber', traits: {"smithy.api#default" => 0}))
    JobStep.add_member(:step_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'stepName'))
    JobStep.add_member(:proc_step_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'procStepNumber', traits: {"smithy.api#default" => 0}))
    JobStep.add_member(:proc_step_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'procStepName'))
    JobStep.add_member(:step_cond_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'stepCondCode'))
    JobStep.add_member(:step_restartable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'stepRestartable', traits: {"smithy.api#default" => false}))
    JobStep.add_member(:step_checkpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'stepCheckpoint', traits: {"smithy.api#default" => nil}))
    JobStep.add_member(:step_checkpoint_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'stepCheckpointStatus'))
    JobStep.add_member(:step_checkpoint_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'stepCheckpointTime'))
    JobStep.type = Types::JobStep
    JobStepRestartMarker.add_member(:from_step, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'fromStep', traits: {"smithy.api#required" => {}}))
    JobStepRestartMarker.add_member(:from_proc_step, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'fromProcStep'))
    JobStepRestartMarker.add_member(:to_step, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'toStep'))
    JobStepRestartMarker.add_member(:to_proc_step, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'toProcStep'))
    JobStepRestartMarker.add_member(:step_checkpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'stepCheckpoint', traits: {"smithy.api#default" => nil}))
    JobStepRestartMarker.add_member(:skip, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'skip', traits: {"smithy.api#default" => nil}))
    JobStepRestartMarker.type = Types::JobStepRestartMarker
    ListApplicationVersionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListApplicationVersionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#default" => nil, "smithy.api#httpQuery" => "maxResults"}))
    ListApplicationVersionsRequest.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'applicationId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListApplicationVersionsRequest.type = Types::ListApplicationVersionsRequest
    ListApplicationVersionsResponse.add_member(:application_versions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationVersionSummaryList, location_name: 'applicationVersions', traits: {"smithy.api#required" => {}}))
    ListApplicationVersionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListApplicationVersionsResponse.type = Types::ListApplicationVersionsResponse
    ListApplicationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListApplicationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#default" => nil, "smithy.api#httpQuery" => "maxResults"}))
    ListApplicationsRequest.add_member(:names, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNameList, location_name: 'names', traits: {"smithy.api#httpQuery" => "names"}))
    ListApplicationsRequest.add_member(:environment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'environmentId', traits: {"smithy.api#httpQuery" => "environmentId"}))
    ListApplicationsRequest.type = Types::ListApplicationsRequest
    ListApplicationsResponse.add_member(:applications, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationSummaryList, location_name: 'applications', traits: {"smithy.api#required" => {}}))
    ListApplicationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListApplicationsResponse.type = Types::ListApplicationsResponse
    ListBatchJobDefinitionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListBatchJobDefinitionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#default" => nil, "smithy.api#httpQuery" => "maxResults"}))
    ListBatchJobDefinitionsRequest.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'applicationId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListBatchJobDefinitionsRequest.add_member(:prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'prefix', traits: {"smithy.api#httpQuery" => "prefix"}))
    ListBatchJobDefinitionsRequest.type = Types::ListBatchJobDefinitionsRequest
    ListBatchJobDefinitionsResponse.add_member(:batch_job_definitions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchJobDefinitions, location_name: 'batchJobDefinitions', traits: {"smithy.api#required" => {}}))
    ListBatchJobDefinitionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListBatchJobDefinitionsResponse.type = Types::ListBatchJobDefinitionsResponse
    ListBatchJobExecutionsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListBatchJobExecutionsInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#default" => nil, "smithy.api#httpQuery" => "maxResults"}))
    ListBatchJobExecutionsInput.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'applicationId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListBatchJobExecutionsInput.add_member(:execution_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentifierList, location_name: 'executionIds', traits: {"smithy.api#httpQuery" => "executionIds"}))
    ListBatchJobExecutionsInput.add_member(:job_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String100, location_name: 'jobName', traits: {"smithy.api#httpQuery" => "jobName"}))
    ListBatchJobExecutionsInput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchJobExecutionStatus, location_name: 'status', traits: {"smithy.api#httpQuery" => "status"}))
    ListBatchJobExecutionsInput.add_member(:started_after, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'startedAfter', traits: {"smithy.api#httpQuery" => "startedAfter"}))
    ListBatchJobExecutionsInput.add_member(:started_before, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'startedBefore', traits: {"smithy.api#httpQuery" => "startedBefore"}))
    ListBatchJobExecutionsInput.type = Types::ListBatchJobExecutionsInput
    ListBatchJobExecutionsOutput.add_member(:batch_job_executions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchJobExecutionSummaryList, location_name: 'batchJobExecutions', traits: {"smithy.api#required" => {}}))
    ListBatchJobExecutionsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListBatchJobExecutionsOutput.type = Types::ListBatchJobExecutionsOutput
    ListBatchJobRestartPointsRequest.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'applicationId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListBatchJobRestartPointsRequest.add_member(:execution_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'executionId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListBatchJobRestartPointsRequest.add_member(:auth_secrets_manager_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthSecretsManagerArn, location_name: 'authSecretsManagerArn', traits: {"smithy.api#httpQuery" => "authSecretsManagerArn"}))
    ListBatchJobRestartPointsRequest.type = Types::ListBatchJobRestartPointsRequest
    ListBatchJobRestartPointsResponse.add_member(:batch_job_steps, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchJobStepList, location_name: 'batchJobSteps'))
    ListBatchJobRestartPointsResponse.type = Types::ListBatchJobRestartPointsResponse
    ListDataSetExportHistoryRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListDataSetExportHistoryRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#default" => nil, "smithy.api#httpQuery" => "maxResults"}))
    ListDataSetExportHistoryRequest.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'applicationId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListDataSetExportHistoryRequest.type = Types::ListDataSetExportHistoryRequest
    ListDataSetExportHistoryResponse.add_member(:data_set_export_tasks, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataSetExportTaskList, location_name: 'dataSetExportTasks', traits: {"smithy.api#required" => {}}))
    ListDataSetExportHistoryResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListDataSetExportHistoryResponse.type = Types::ListDataSetExportHistoryResponse
    ListDataSetImportHistoryRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListDataSetImportHistoryRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#default" => nil, "smithy.api#httpQuery" => "maxResults"}))
    ListDataSetImportHistoryRequest.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'applicationId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListDataSetImportHistoryRequest.type = Types::ListDataSetImportHistoryRequest
    ListDataSetImportHistoryResponse.add_member(:data_set_import_tasks, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataSetImportTaskList, location_name: 'dataSetImportTasks', traits: {"smithy.api#required" => {}}))
    ListDataSetImportHistoryResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListDataSetImportHistoryResponse.type = Types::ListDataSetImportHistoryResponse
    ListDataSetsRequest.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'applicationId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListDataSetsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListDataSetsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#default" => nil, "smithy.api#httpQuery" => "maxResults"}))
    ListDataSetsRequest.add_member(:prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String200, location_name: 'prefix', traits: {"smithy.api#httpQuery" => "prefix"}))
    ListDataSetsRequest.add_member(:name_filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String200, location_name: 'nameFilter', traits: {"smithy.api#httpQuery" => "nameFilter"}))
    ListDataSetsRequest.type = Types::ListDataSetsRequest
    ListDataSetsResponse.add_member(:data_sets, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataSetsSummaryList, location_name: 'dataSets', traits: {"smithy.api#required" => {}}))
    ListDataSetsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListDataSetsResponse.type = Types::ListDataSetsResponse
    ListDeploymentsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListDeploymentsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#default" => nil, "smithy.api#httpQuery" => "maxResults"}))
    ListDeploymentsRequest.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'applicationId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListDeploymentsRequest.type = Types::ListDeploymentsRequest
    ListDeploymentsResponse.add_member(:deployments, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentList, location_name: 'deployments', traits: {"smithy.api#required" => {}}))
    ListDeploymentsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListDeploymentsResponse.type = Types::ListDeploymentsResponse
    ListEngineVersionsInput.add_member(:engine_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EngineType, location_name: 'engineType', traits: {"smithy.api#httpQuery" => "engineType"}))
    ListEngineVersionsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListEngineVersionsInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#default" => nil, "smithy.api#httpQuery" => "maxResults"}))
    ListEngineVersionsInput.type = Types::ListEngineVersionsInput
    ListEngineVersionsOutput.add_member(:engine_versions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EngineVersionsSummaryList, location_name: 'engineVersions', traits: {"smithy.api#required" => {}}))
    ListEngineVersionsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListEngineVersionsOutput.type = Types::ListEngineVersionsOutput
    ListEnvironmentsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListEnvironmentsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#default" => nil, "smithy.api#httpQuery" => "maxResults"}))
    ListEnvironmentsRequest.add_member(:names, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityNameList, location_name: 'names', traits: {"smithy.api#httpQuery" => "names"}))
    ListEnvironmentsRequest.add_member(:engine_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EngineType, location_name: 'engineType', traits: {"smithy.api#httpQuery" => "engineType"}))
    ListEnvironmentsRequest.type = Types::ListEnvironmentsRequest
    ListEnvironmentsResponse.add_member(:environments, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentSummaryList, location_name: 'environments', traits: {"smithy.api#required" => {}}))
    ListEnvironmentsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListEnvironmentsResponse.type = Types::ListEnvironmentsResponse
    ListTagsForResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'resourceArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceInput.type = Types::ListTagsForResourceInput
    ListTagsForResourceOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#required" => {}}))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    LogGroupSummaries.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogGroupSummary)
    LogGroupSummary.add_member(:log_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String20, location_name: 'logType', traits: {"smithy.api#required" => {}}))
    LogGroupSummary.add_member(:log_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogGroupIdentifier, location_name: 'logGroupName', traits: {"smithy.api#required" => {}}))
    LogGroupSummary.type = Types::LogGroupSummary
    MaintenanceSchedule.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'startTime'))
    MaintenanceSchedule.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'endTime'))
    MaintenanceSchedule.type = Types::MaintenanceSchedule
    PendingMaintenance.add_member(:schedule, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaintenanceSchedule, location_name: 'schedule'))
    PendingMaintenance.add_member(:engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'engineVersion'))
    PendingMaintenance.type = Types::PendingMaintenance
    PoAttributes.add_member(:format, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'format', traits: {"smithy.api#required" => {}}))
    PoAttributes.add_member(:encoding, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'encoding'))
    PoAttributes.add_member(:member_file_extensions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String20List, location_name: 'memberFileExtensions', traits: {"smithy.api#required" => {}}))
    PoAttributes.type = Types::PoAttributes
    PoDetailAttributes.add_member(:format, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'format', traits: {"smithy.api#required" => {}}))
    PoDetailAttributes.add_member(:encoding, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'encoding', traits: {"smithy.api#required" => {}}))
    PoDetailAttributes.type = Types::PoDetailAttributes
    PortList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer)
    PrimaryKey.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'name'))
    PrimaryKey.add_member(:offset, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'offset', traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    PrimaryKey.add_member(:length, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'length', traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    PrimaryKey.type = Types::PrimaryKey
    PsAttributes.add_member(:format, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'format', traits: {"smithy.api#required" => {}}))
    PsAttributes.add_member(:encoding, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'encoding'))
    PsAttributes.type = Types::PsAttributes
    PsDetailAttributes.add_member(:format, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'format', traits: {"smithy.api#required" => {}}))
    PsDetailAttributes.add_member(:encoding, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'encoding', traits: {"smithy.api#required" => {}}))
    PsDetailAttributes.type = Types::PsDetailAttributes
    RecordLength.add_member(:min, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'min', traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    RecordLength.add_member(:max, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'max', traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    RecordLength.type = Types::RecordLength
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceId'))
    ResourceNotFoundException.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceType'))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    RestartBatchJobIdentifier.add_member(:execution_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'executionId', traits: {"smithy.api#required" => {}}))
    RestartBatchJobIdentifier.add_member(:job_step_restart_marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobStepRestartMarker, location_name: 'jobStepRestartMarker', traits: {"smithy.api#required" => {}}))
    RestartBatchJobIdentifier.type = Types::RestartBatchJobIdentifier
    S3BatchJobIdentifier.add_member(:bucket, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'bucket', traits: {"smithy.api#required" => {}}))
    S3BatchJobIdentifier.add_member(:key_prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'keyPrefix'))
    S3BatchJobIdentifier.add_member(:identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobIdentifier, location_name: 'identifier', traits: {"smithy.api#required" => {}}))
    S3BatchJobIdentifier.type = Types::S3BatchJobIdentifier
    ScriptBatchJobDefinition.add_member(:script_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'scriptName', traits: {"smithy.api#required" => {}}))
    ScriptBatchJobDefinition.type = Types::ScriptBatchJobDefinition
    ScriptBatchJobIdentifier.add_member(:script_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'scriptName', traits: {"smithy.api#required" => {}}))
    ScriptBatchJobIdentifier.type = Types::ScriptBatchJobIdentifier
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceId'))
    ServiceQuotaExceededException.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceType'))
    ServiceQuotaExceededException.add_member(:service_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'serviceCode'))
    ServiceQuotaExceededException.add_member(:quota_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'quotaCode'))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    ServiceUnavailableException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ServiceUnavailableException.type = Types::ServiceUnavailableException
    StartApplicationInput.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'applicationId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartApplicationInput.type = Types::StartApplicationInput
    StartApplicationOutput.type = Types::StartApplicationOutput
    StartBatchJobInput.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'applicationId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartBatchJobInput.add_member(:batch_job_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchJobIdentifier, location_name: 'batchJobIdentifier', traits: {"smithy.api#required" => {}}))
    StartBatchJobInput.add_member(:job_params, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchJobParametersMap, location_name: 'jobParams'))
    StartBatchJobInput.add_member(:auth_secrets_manager_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthSecretsManagerArn, location_name: 'authSecretsManagerArn'))
    StartBatchJobInput.type = Types::StartBatchJobInput
    StartBatchJobOutput.add_member(:execution_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'executionId', traits: {"smithy.api#required" => {}}))
    StartBatchJobOutput.type = Types::StartBatchJobOutput
    StopApplicationInput.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'applicationId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StopApplicationInput.add_member(:force_stop, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'forceStop', traits: {"smithy.api#default" => false}))
    StopApplicationInput.type = Types::StopApplicationInput
    StopApplicationOutput.type = Types::StopApplicationOutput
    StorageConfiguration.add_member(:efs, Types::StorageConfiguration::Efs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EfsStorageConfiguration, location_name: 'efs'))
    StorageConfiguration.add_member(:fsx, Types::StorageConfiguration::Fsx, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FsxStorageConfiguration, location_name: 'fsx'))
    StorageConfiguration.add_member(:unknown, Types::StorageConfiguration::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    StorageConfiguration.type = Types::StorageConfiguration
    StorageConfigurationList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StorageConfiguration)
    String20List.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String20)
    String50List.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String50)
    TagKeyList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue)
    TagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'resourceArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    TagResourceOutput.type = Types::TagResourceOutput
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ThrottlingException.add_member(:service_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'serviceCode'))
    ThrottlingException.add_member(:quota_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'quotaCode'))
    ThrottlingException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'retryAfterSeconds', traits: {"smithy.api#default" => 0, "smithy.api#httpHeader" => "Retry-After"}))
    ThrottlingException.type = Types::ThrottlingException
    UntagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'resourceArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceInput.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'tagKeys', traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    UntagResourceOutput.type = Types::UntagResourceOutput
    UpdateApplicationInput.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'applicationId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateApplicationInput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityDescription, location_name: 'description'))
    UpdateApplicationInput.add_member(:current_application_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'currentApplicationVersion', traits: {"smithy.api#required" => {}}))
    UpdateApplicationInput.add_member(:definition, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Definition, location_name: 'definition'))
    UpdateApplicationInput.type = Types::UpdateApplicationInput
    UpdateApplicationOutput.add_member(:application_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'applicationVersion', traits: {"smithy.api#required" => {}}))
    UpdateApplicationOutput.type = Types::UpdateApplicationOutput
    UpdateEnvironmentInput.add_member(:environment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'environmentId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateEnvironmentInput.add_member(:desired_capacity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CapacityValue, location_name: 'desiredCapacity', traits: {"smithy.api#default" => nil}))
    UpdateEnvironmentInput.add_member(:instance_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String20, location_name: 'instanceType'))
    UpdateEnvironmentInput.add_member(:engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EngineVersion, location_name: 'engineVersion'))
    UpdateEnvironmentInput.add_member(:preferred_maintenance_window, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'preferredMaintenanceWindow'))
    UpdateEnvironmentInput.add_member(:apply_during_maintenance_window, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'applyDuringMaintenanceWindow', traits: {"smithy.api#default" => false}))
    UpdateEnvironmentInput.add_member(:force_update, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'forceUpdate', traits: {"smithy.api#default" => false}))
    UpdateEnvironmentInput.type = Types::UpdateEnvironmentInput
    UpdateEnvironmentOutput.add_member(:environment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'environmentId', traits: {"smithy.api#required" => {}}))
    UpdateEnvironmentOutput.type = Types::UpdateEnvironmentOutput
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionReason, location_name: 'reason'))
    ValidationException.add_member(:field_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: 'fieldList'))
    ValidationException.type = Types::ValidationException
    ValidationExceptionField.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'name', traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.type = Types::ValidationExceptionField
    ValidationExceptionFieldList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionField)
    VsamAttributes.add_member(:format, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'format', traits: {"smithy.api#required" => {}}))
    VsamAttributes.add_member(:encoding, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'encoding'))
    VsamAttributes.add_member(:compressed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'compressed', traits: {"smithy.api#default" => false}))
    VsamAttributes.add_member(:primary_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PrimaryKey, location_name: 'primaryKey'))
    VsamAttributes.add_member(:alternate_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AlternateKeyList, location_name: 'alternateKeys'))
    VsamAttributes.type = Types::VsamAttributes
    VsamDetailAttributes.add_member(:encoding, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String20, location_name: 'encoding'))
    VsamDetailAttributes.add_member(:record_format, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String20, location_name: 'recordFormat'))
    VsamDetailAttributes.add_member(:compressed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'compressed', traits: {"smithy.api#default" => nil}))
    VsamDetailAttributes.add_member(:cache_at_startup, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'cacheAtStartup', traits: {"smithy.api#default" => nil}))
    VsamDetailAttributes.add_member(:primary_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PrimaryKey, location_name: 'primaryKey'))
    VsamDetailAttributes.add_member(:alternate_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AlternateKeyList, location_name: 'alternateKeys'))
    VsamDetailAttributes.type = Types::VsamDetailAttributes

    AwsSupernovaControlPlaneService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.m2#AwsSupernovaControlPlaneService"
      service.name = "AwsSupernovaControlPlaneService"
      service.version = "2021-04-28"
      service.traits = {"aws.api#service" => {"sdkId" => "m2", "sdkServiceId" => "M2", "serviceName" => "m2", "arnNamespace" => "m2", "cloudFormationName" => "M2", "cloudTrailEventSource" => "m2.amazonaws.com", "endpointPrefix" => "m2"}, "aws.auth#sigv4" => {"name" => "m2"}, "aws.iam#defineConditionKeys" => {"aws:ResourceTag/${TagKey}" => {"type" => "String", "documentation" => "Filters access by a tag key and value pair of a resource"}, "aws:RequestTag/${TagKey}" => {"type" => "String", "documentation" => "Filters access by a tag key and value pair that is allowed in the request"}, "aws:TagKeys" => {"type" => "String", "documentation" => "Filters access by a list of tag keys that are allowed in the request"}}, "aws.protocols#restJson1" => {}, "smithy.api#cors" => {"additionalAllowedHeaders" => ["*,authorization,date,x-amz-date,x-amz-security-token,x-amz-target,content-type,x-amz-content-sha256,x-amz-user-agent,x-amzn-platform-id,x-amzn-trace-id,amz-sdk-invocation-id,amz-sdk-request"]}, "smithy.api#title" => "AWSMainframeModernization"}
      service.add_operation(:cancel_batch_job_execution, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.m2#CancelBatchJobExecution"
        operation.name = "CancelBatchJobExecution"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CancelBatchJobExecutionInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CancelBatchJobExecutionOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#http" => {"method" => "POST", "uri" => "/applications/{applicationId}/batch-job-executions/{executionId}/cancel", "code" => 200}}
      end)
      service.add_operation(:create_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.m2#CreateApplication"
        operation.name = "CreateApplication"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateApplicationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateApplicationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "aws.iam#conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:TagKeys"], "aws.iam#requiredActions" => ["s3:GetObject", "s3:ListBucket"], "smithy.api#http" => {"method" => "POST", "uri" => "/applications", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_data_set_export_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.m2#CreateDataSetExportTask"
        operation.name = "CreateDataSetExportTask"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDataSetExportTaskRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDataSetExportTaskResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "aws.iam#iamAction" => {"requiredActions" => ["s3:GetObject"], "documentation" => "Grants permission to create a data set export task"}, "smithy.api#http" => {"method" => "POST", "uri" => "/applications/{applicationId}/dataset-export-task", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_data_set_import_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.m2#CreateDataSetImportTask"
        operation.name = "CreateDataSetImportTask"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDataSetImportTaskInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDataSetImportTaskOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#http" => {"method" => "POST", "uri" => "/applications/{applicationId}/dataset-import-task", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_deployment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.m2#CreateDeployment"
        operation.name = "CreateDeployment"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDeploymentInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDeploymentOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "aws.iam#requiredActions" => ["elasticloadbalancing:CreateTargetGroup", "elasticloadbalancing:CreateListener"], "smithy.api#http" => {"method" => "POST", "uri" => "/applications/{applicationId}/deployments", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_environment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.m2#CreateEnvironment"
        operation.name = "CreateEnvironment"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateEnvironmentInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateEnvironmentOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "aws.iam#conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:TagKeys"], "aws.iam#requiredActions" => ["ec2:DescribeSecurityGroups", "ec2:DescribeSubnets", "ec2:DescribeVpcs", "ec2:DescribeNetworkInterfaces", "ec2:DescribeVpcAttribute", "elasticloadbalancing:CreateLoadBalancer"], "smithy.api#http" => {"method" => "POST", "uri" => "/environments", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.m2#DeleteApplication"
        operation.name = "DeleteApplication"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteApplicationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteApplicationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "aws.iam#requiredActions" => ["elasticloadbalancing:DeleteTargetGroup", "elasticloadbalancing:DeleteListener"], "smithy.api#http" => {"method" => "DELETE", "uri" => "/applications/{applicationId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_application_from_environment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.m2#DeleteApplicationFromEnvironment"
        operation.name = "DeleteApplicationFromEnvironment"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteApplicationFromEnvironmentInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteApplicationFromEnvironmentOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/applications/{applicationId}/environment/{environmentId}", "code" => 200}}
      end)
      service.add_operation(:delete_environment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.m2#DeleteEnvironment"
        operation.name = "DeleteEnvironment"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteEnvironmentInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteEnvironmentOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "aws.iam#requiredActions" => ["elasticloadbalancing:DeleteLoadBalancer"], "smithy.api#http" => {"method" => "DELETE", "uri" => "/environments/{environmentId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.m2#GetApplication"
        operation.name = "GetApplication"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetApplicationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetApplicationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#http" => {"method" => "GET", "uri" => "/applications/{applicationId}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_application_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.m2#GetApplicationVersion"
        operation.name = "GetApplicationVersion"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetApplicationVersionInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetApplicationVersionOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#http" => {"method" => "GET", "uri" => "/applications/{applicationId}/versions/{applicationVersion}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_batch_job_execution, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.m2#GetBatchJobExecution"
        operation.name = "GetBatchJobExecution"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetBatchJobExecutionInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetBatchJobExecutionOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#http" => {"method" => "GET", "uri" => "/applications/{applicationId}/batch-job-executions/{executionId}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_data_set_details, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.m2#GetDataSetDetails"
        operation.name = "GetDataSetDetails"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetDataSetDetailsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetDataSetDetailsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionTimeoutException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#http" => {"method" => "GET", "uri" => "/applications/{applicationId}/datasets/{dataSetName}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_data_set_export_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.m2#GetDataSetExportTask"
        operation.name = "GetDataSetExportTask"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetDataSetExportTaskRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetDataSetExportTaskResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "aws.iam#iamAction" => {"documentation" => "Grants permission to export a data set at the specified S3 location"}, "smithy.api#http" => {"method" => "GET", "uri" => "/applications/{applicationId}/dataset-export-tasks/{taskId}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_data_set_import_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.m2#GetDataSetImportTask"
        operation.name = "GetDataSetImportTask"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetDataSetImportTaskInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetDataSetImportTaskOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#http" => {"method" => "GET", "uri" => "/applications/{applicationId}/dataset-import-tasks/{taskId}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_deployment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.m2#GetDeployment"
        operation.name = "GetDeployment"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetDeploymentInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetDeploymentOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#http" => {"method" => "GET", "uri" => "/applications/{applicationId}/deployments/{deploymentId}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_environment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.m2#GetEnvironment"
        operation.name = "GetEnvironment"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetEnvironmentInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetEnvironmentOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#http" => {"method" => "GET", "uri" => "/environments/{environmentId}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_signed_bluinsights_url, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.m2#GetSignedBluinsightsUrl"
        operation.name = "GetSignedBluinsightsUrl"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSignedBluinsightsUrlResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"aws.api#controlPlane" => {}, "aws.iam#actionPermissionDescription" => "Grants permission to create a signed Bluinsights url", "smithy.api#http" => {"method" => "GET", "uri" => "/signed-bi-url", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_application_versions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.m2#ListApplicationVersions"
        operation.name = "ListApplicationVersions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListApplicationVersionsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListApplicationVersionsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#http" => {"method" => "GET", "uri" => "/applications/{applicationId}/versions", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListApplicationVersions.new
      end)
      service.add_operation(:list_applications, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.m2#ListApplications"
        operation.name = "ListApplications"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListApplicationsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListApplicationsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#http" => {"method" => "GET", "uri" => "/applications", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListApplications.new
      end)
      service.add_operation(:list_batch_job_definitions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.m2#ListBatchJobDefinitions"
        operation.name = "ListBatchJobDefinitions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListBatchJobDefinitionsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListBatchJobDefinitionsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#http" => {"method" => "GET", "uri" => "/applications/{applicationId}/batch-job-definitions", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListBatchJobDefinitions.new
      end)
      service.add_operation(:list_batch_job_executions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.m2#ListBatchJobExecutions"
        operation.name = "ListBatchJobExecutions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListBatchJobExecutionsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListBatchJobExecutionsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#http" => {"method" => "GET", "uri" => "/applications/{applicationId}/batch-job-executions", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListBatchJobExecutions.new
      end)
      service.add_operation(:list_batch_job_restart_points, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.m2#ListBatchJobRestartPoints"
        operation.name = "ListBatchJobRestartPoints"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListBatchJobRestartPointsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListBatchJobRestartPointsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#http" => {"method" => "GET", "uri" => "/applications/{applicationId}/batch-job-executions/{executionId}/steps", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_data_set_export_history, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.m2#ListDataSetExportHistory"
        operation.name = "ListDataSetExportHistory"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListDataSetExportHistoryRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListDataSetExportHistoryResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "aws.iam#iamAction" => {"documentation" => "Grants permission to list data set export history"}, "smithy.api#http" => {"method" => "GET", "uri" => "/applications/{applicationId}/dataset-export-tasks", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListDataSetExportHistory.new
      end)
      service.add_operation(:list_data_set_import_history, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.m2#ListDataSetImportHistory"
        operation.name = "ListDataSetImportHistory"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListDataSetImportHistoryRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListDataSetImportHistoryResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#http" => {"method" => "GET", "uri" => "/applications/{applicationId}/dataset-import-tasks", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListDataSetImportHistory.new
      end)
      service.add_operation(:list_data_sets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.m2#ListDataSets"
        operation.name = "ListDataSets"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListDataSetsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListDataSetsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionTimeoutException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#http" => {"method" => "GET", "uri" => "/applications/{applicationId}/datasets", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListDataSets.new
      end)
      service.add_operation(:list_deployments, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.m2#ListDeployments"
        operation.name = "ListDeployments"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListDeploymentsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListDeploymentsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#http" => {"method" => "GET", "uri" => "/applications/{applicationId}/deployments", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListDeployments.new
      end)
      service.add_operation(:list_engine_versions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.m2#ListEngineVersions"
        operation.name = "ListEngineVersions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListEngineVersionsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListEngineVersionsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#http" => {"method" => "GET", "uri" => "/engine-versions", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListEngineVersions.new
      end)
      service.add_operation(:list_environments, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.m2#ListEnvironments"
        operation.name = "ListEnvironments"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListEnvironmentsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListEnvironmentsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#http" => {"method" => "GET", "uri" => "/environments", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListEnvironments.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.m2#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#http" => {"method" => "GET", "uri" => "/tags/{resourceArn}", "code" => 200}}
      end)
      service.add_operation(:start_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.m2#StartApplication"
        operation.name = "StartApplication"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartApplicationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartApplicationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#http" => {"method" => "POST", "uri" => "/applications/{applicationId}/start", "code" => 200}}
      end)
      service.add_operation(:start_batch_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.m2#StartBatchJob"
        operation.name = "StartBatchJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartBatchJobInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartBatchJobOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#http" => {"method" => "POST", "uri" => "/applications/{applicationId}/batch-job", "code" => 200}}
      end)
      service.add_operation(:stop_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.m2#StopApplication"
        operation.name = "StopApplication"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StopApplicationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StopApplicationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#http" => {"method" => "POST", "uri" => "/applications/{applicationId}/stop", "code" => 200}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.m2#TagResource"
        operation.name = "TagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "aws.iam#conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:TagKeys"], "smithy.api#http" => {"method" => "POST", "uri" => "/tags/{resourceArn}", "code" => 200}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.m2#UntagResource"
        operation.name = "UntagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "aws.iam#conditionKeys" => ["aws:TagKeys"], "smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{resourceArn}", "code" => 200}}
      end)
      service.add_operation(:update_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.m2#UpdateApplication"
        operation.name = "UpdateApplication"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateApplicationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateApplicationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "aws.iam#requiredActions" => ["s3:GetObject", "s3:ListBucket"], "smithy.api#http" => {"method" => "PATCH", "uri" => "/applications/{applicationId}", "code" => 200}}
      end)
      service.add_operation(:update_environment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.m2#UpdateEnvironment"
        operation.name = "UpdateEnvironment"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateEnvironmentInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateEnvironmentOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#http" => {"method" => "PATCH", "uri" => "/environments/{environmentId}", "code" => 200}}
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
