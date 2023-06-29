# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::EMRServerless
  # @api private
  module ClientApi

    include Seahorse::Model

    Application = Shapes::StructureShape.new(name: 'Application')
    ApplicationArn = Shapes::StringShape.new(name: 'ApplicationArn')
    ApplicationId = Shapes::StringShape.new(name: 'ApplicationId')
    ApplicationList = Shapes::ListShape.new(name: 'ApplicationList')
    ApplicationName = Shapes::StringShape.new(name: 'ApplicationName')
    ApplicationState = Shapes::StringShape.new(name: 'ApplicationState')
    ApplicationStateSet = Shapes::ListShape.new(name: 'ApplicationStateSet')
    ApplicationSummary = Shapes::StructureShape.new(name: 'ApplicationSummary')
    Architecture = Shapes::StringShape.new(name: 'Architecture')
    AutoStartConfig = Shapes::StructureShape.new(name: 'AutoStartConfig')
    AutoStopConfig = Shapes::StructureShape.new(name: 'AutoStopConfig')
    AutoStopConfigIdleTimeoutMinutesInteger = Shapes::IntegerShape.new(name: 'AutoStopConfigIdleTimeoutMinutesInteger')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    CancelJobRunRequest = Shapes::StructureShape.new(name: 'CancelJobRunRequest')
    CancelJobRunResponse = Shapes::StructureShape.new(name: 'CancelJobRunResponse')
    ClientToken = Shapes::StringShape.new(name: 'ClientToken')
    Configuration = Shapes::StructureShape.new(name: 'Configuration')
    ConfigurationList = Shapes::ListShape.new(name: 'ConfigurationList')
    ConfigurationOverrides = Shapes::StructureShape.new(name: 'ConfigurationOverrides')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CpuSize = Shapes::StringShape.new(name: 'CpuSize')
    CreateApplicationRequest = Shapes::StructureShape.new(name: 'CreateApplicationRequest')
    CreateApplicationResponse = Shapes::StructureShape.new(name: 'CreateApplicationResponse')
    Date = Shapes::TimestampShape.new(name: 'Date')
    DeleteApplicationRequest = Shapes::StructureShape.new(name: 'DeleteApplicationRequest')
    DeleteApplicationResponse = Shapes::StructureShape.new(name: 'DeleteApplicationResponse')
    DiskSize = Shapes::StringShape.new(name: 'DiskSize')
    Double = Shapes::FloatShape.new(name: 'Double')
    Duration = Shapes::IntegerShape.new(name: 'Duration')
    EncryptionKeyArn = Shapes::StringShape.new(name: 'EncryptionKeyArn')
    EngineType = Shapes::StringShape.new(name: 'EngineType')
    EntryPointArgument = Shapes::StringShape.new(name: 'EntryPointArgument')
    EntryPointArguments = Shapes::ListShape.new(name: 'EntryPointArguments')
    EntryPointPath = Shapes::StringShape.new(name: 'EntryPointPath')
    GetApplicationRequest = Shapes::StructureShape.new(name: 'GetApplicationRequest')
    GetApplicationResponse = Shapes::StructureShape.new(name: 'GetApplicationResponse')
    GetDashboardForJobRunRequest = Shapes::StructureShape.new(name: 'GetDashboardForJobRunRequest')
    GetDashboardForJobRunResponse = Shapes::StructureShape.new(name: 'GetDashboardForJobRunResponse')
    GetJobRunRequest = Shapes::StructureShape.new(name: 'GetJobRunRequest')
    GetJobRunResponse = Shapes::StructureShape.new(name: 'GetJobRunResponse')
    Hive = Shapes::StructureShape.new(name: 'Hive')
    HiveCliParameters = Shapes::StringShape.new(name: 'HiveCliParameters')
    IAMRoleArn = Shapes::StringShape.new(name: 'IAMRoleArn')
    ImageConfiguration = Shapes::StructureShape.new(name: 'ImageConfiguration')
    ImageConfigurationInput = Shapes::StructureShape.new(name: 'ImageConfigurationInput')
    ImageDigest = Shapes::StringShape.new(name: 'ImageDigest')
    ImageUri = Shapes::StringShape.new(name: 'ImageUri')
    InitScriptPath = Shapes::StringShape.new(name: 'InitScriptPath')
    InitialCapacityConfig = Shapes::StructureShape.new(name: 'InitialCapacityConfig')
    InitialCapacityConfigMap = Shapes::MapShape.new(name: 'InitialCapacityConfigMap')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    JobArn = Shapes::StringShape.new(name: 'JobArn')
    JobDriver = Shapes::UnionShape.new(name: 'JobDriver')
    JobRun = Shapes::StructureShape.new(name: 'JobRun')
    JobRunId = Shapes::StringShape.new(name: 'JobRunId')
    JobRunState = Shapes::StringShape.new(name: 'JobRunState')
    JobRunStateSet = Shapes::ListShape.new(name: 'JobRunStateSet')
    JobRunSummary = Shapes::StructureShape.new(name: 'JobRunSummary')
    JobRunType = Shapes::StringShape.new(name: 'JobRunType')
    JobRuns = Shapes::ListShape.new(name: 'JobRuns')
    ListApplicationsRequest = Shapes::StructureShape.new(name: 'ListApplicationsRequest')
    ListApplicationsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListApplicationsRequestMaxResultsInteger')
    ListApplicationsResponse = Shapes::StructureShape.new(name: 'ListApplicationsResponse')
    ListJobRunsRequest = Shapes::StructureShape.new(name: 'ListJobRunsRequest')
    ListJobRunsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListJobRunsRequestMaxResultsInteger')
    ListJobRunsResponse = Shapes::StructureShape.new(name: 'ListJobRunsResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    ManagedPersistenceMonitoringConfiguration = Shapes::StructureShape.new(name: 'ManagedPersistenceMonitoringConfiguration')
    MaximumAllowedResources = Shapes::StructureShape.new(name: 'MaximumAllowedResources')
    MemorySize = Shapes::StringShape.new(name: 'MemorySize')
    MonitoringConfiguration = Shapes::StructureShape.new(name: 'MonitoringConfiguration')
    NetworkConfiguration = Shapes::StructureShape.new(name: 'NetworkConfiguration')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    Query = Shapes::StringShape.new(name: 'Query')
    ReleaseLabel = Shapes::StringShape.new(name: 'ReleaseLabel')
    RequestIdentityUserArn = Shapes::StringShape.new(name: 'RequestIdentityUserArn')
    ResourceArn = Shapes::StringShape.new(name: 'ResourceArn')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceUtilization = Shapes::StructureShape.new(name: 'ResourceUtilization')
    S3MonitoringConfiguration = Shapes::StructureShape.new(name: 'S3MonitoringConfiguration')
    SecurityGroupIds = Shapes::ListShape.new(name: 'SecurityGroupIds')
    SecurityGroupString = Shapes::StringShape.new(name: 'SecurityGroupString')
    SensitivePropertiesMap = Shapes::MapShape.new(name: 'SensitivePropertiesMap')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    SparkSubmit = Shapes::StructureShape.new(name: 'SparkSubmit')
    SparkSubmitParameters = Shapes::StringShape.new(name: 'SparkSubmitParameters')
    StartApplicationRequest = Shapes::StructureShape.new(name: 'StartApplicationRequest')
    StartApplicationResponse = Shapes::StructureShape.new(name: 'StartApplicationResponse')
    StartJobRunRequest = Shapes::StructureShape.new(name: 'StartJobRunRequest')
    StartJobRunResponse = Shapes::StructureShape.new(name: 'StartJobRunResponse')
    StopApplicationRequest = Shapes::StructureShape.new(name: 'StopApplicationRequest')
    StopApplicationResponse = Shapes::StructureShape.new(name: 'StopApplicationResponse')
    String1024 = Shapes::StringShape.new(name: 'String1024')
    String256 = Shapes::StringShape.new(name: 'String256')
    SubnetIds = Shapes::ListShape.new(name: 'SubnetIds')
    SubnetString = Shapes::StringShape.new(name: 'SubnetString')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagMap = Shapes::MapShape.new(name: 'TagMap')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TotalResourceUtilization = Shapes::StructureShape.new(name: 'TotalResourceUtilization')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateApplicationRequest = Shapes::StructureShape.new(name: 'UpdateApplicationRequest')
    UpdateApplicationResponse = Shapes::StructureShape.new(name: 'UpdateApplicationResponse')
    UriString = Shapes::StringShape.new(name: 'UriString')
    Url = Shapes::StringShape.new(name: 'Url')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    WorkerCounts = Shapes::IntegerShape.new(name: 'WorkerCounts')
    WorkerResourceConfig = Shapes::StructureShape.new(name: 'WorkerResourceConfig')
    WorkerTypeSpecification = Shapes::StructureShape.new(name: 'WorkerTypeSpecification')
    WorkerTypeSpecificationInput = Shapes::StructureShape.new(name: 'WorkerTypeSpecificationInput')
    WorkerTypeSpecificationInputMap = Shapes::MapShape.new(name: 'WorkerTypeSpecificationInputMap')
    WorkerTypeSpecificationMap = Shapes::MapShape.new(name: 'WorkerTypeSpecificationMap')
    WorkerTypeString = Shapes::StringShape.new(name: 'WorkerTypeString')

    Application.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location_name: "applicationId"))
    Application.add_member(:name, Shapes::ShapeRef.new(shape: ApplicationName, location_name: "name"))
    Application.add_member(:arn, Shapes::ShapeRef.new(shape: ApplicationArn, required: true, location_name: "arn"))
    Application.add_member(:release_label, Shapes::ShapeRef.new(shape: ReleaseLabel, required: true, location_name: "releaseLabel"))
    Application.add_member(:type, Shapes::ShapeRef.new(shape: EngineType, required: true, location_name: "type"))
    Application.add_member(:state, Shapes::ShapeRef.new(shape: ApplicationState, required: true, location_name: "state"))
    Application.add_member(:state_details, Shapes::ShapeRef.new(shape: String256, location_name: "stateDetails"))
    Application.add_member(:initial_capacity, Shapes::ShapeRef.new(shape: InitialCapacityConfigMap, location_name: "initialCapacity"))
    Application.add_member(:maximum_capacity, Shapes::ShapeRef.new(shape: MaximumAllowedResources, location_name: "maximumCapacity"))
    Application.add_member(:created_at, Shapes::ShapeRef.new(shape: Date, required: true, location_name: "createdAt"))
    Application.add_member(:updated_at, Shapes::ShapeRef.new(shape: Date, required: true, location_name: "updatedAt"))
    Application.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    Application.add_member(:auto_start_configuration, Shapes::ShapeRef.new(shape: AutoStartConfig, location_name: "autoStartConfiguration"))
    Application.add_member(:auto_stop_configuration, Shapes::ShapeRef.new(shape: AutoStopConfig, location_name: "autoStopConfiguration"))
    Application.add_member(:network_configuration, Shapes::ShapeRef.new(shape: NetworkConfiguration, location_name: "networkConfiguration"))
    Application.add_member(:architecture, Shapes::ShapeRef.new(shape: Architecture, location_name: "architecture"))
    Application.add_member(:image_configuration, Shapes::ShapeRef.new(shape: ImageConfiguration, location_name: "imageConfiguration"))
    Application.add_member(:worker_type_specifications, Shapes::ShapeRef.new(shape: WorkerTypeSpecificationMap, location_name: "workerTypeSpecifications"))
    Application.struct_class = Types::Application

    ApplicationList.member = Shapes::ShapeRef.new(shape: ApplicationSummary)

    ApplicationStateSet.member = Shapes::ShapeRef.new(shape: ApplicationState)

    ApplicationSummary.add_member(:id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location_name: "id"))
    ApplicationSummary.add_member(:name, Shapes::ShapeRef.new(shape: ApplicationName, location_name: "name"))
    ApplicationSummary.add_member(:arn, Shapes::ShapeRef.new(shape: ApplicationArn, required: true, location_name: "arn"))
    ApplicationSummary.add_member(:release_label, Shapes::ShapeRef.new(shape: ReleaseLabel, required: true, location_name: "releaseLabel"))
    ApplicationSummary.add_member(:type, Shapes::ShapeRef.new(shape: EngineType, required: true, location_name: "type"))
    ApplicationSummary.add_member(:state, Shapes::ShapeRef.new(shape: ApplicationState, required: true, location_name: "state"))
    ApplicationSummary.add_member(:state_details, Shapes::ShapeRef.new(shape: String256, location_name: "stateDetails"))
    ApplicationSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Date, required: true, location_name: "createdAt"))
    ApplicationSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: Date, required: true, location_name: "updatedAt"))
    ApplicationSummary.add_member(:architecture, Shapes::ShapeRef.new(shape: Architecture, location_name: "architecture"))
    ApplicationSummary.struct_class = Types::ApplicationSummary

    AutoStartConfig.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "enabled"))
    AutoStartConfig.struct_class = Types::AutoStartConfig

    AutoStopConfig.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "enabled"))
    AutoStopConfig.add_member(:idle_timeout_minutes, Shapes::ShapeRef.new(shape: AutoStopConfigIdleTimeoutMinutesInteger, location_name: "idleTimeoutMinutes"))
    AutoStopConfig.struct_class = Types::AutoStopConfig

    CancelJobRunRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "applicationId"))
    CancelJobRunRequest.add_member(:job_run_id, Shapes::ShapeRef.new(shape: JobRunId, required: true, location: "uri", location_name: "jobRunId"))
    CancelJobRunRequest.struct_class = Types::CancelJobRunRequest

    CancelJobRunResponse.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location_name: "applicationId"))
    CancelJobRunResponse.add_member(:job_run_id, Shapes::ShapeRef.new(shape: JobRunId, required: true, location_name: "jobRunId"))
    CancelJobRunResponse.struct_class = Types::CancelJobRunResponse

    Configuration.add_member(:classification, Shapes::ShapeRef.new(shape: String1024, required: true, location_name: "classification"))
    Configuration.add_member(:properties, Shapes::ShapeRef.new(shape: SensitivePropertiesMap, location_name: "properties"))
    Configuration.add_member(:configurations, Shapes::ShapeRef.new(shape: ConfigurationList, location_name: "configurations"))
    Configuration.struct_class = Types::Configuration

    ConfigurationList.member = Shapes::ShapeRef.new(shape: Configuration)

    ConfigurationOverrides.add_member(:application_configuration, Shapes::ShapeRef.new(shape: ConfigurationList, location_name: "applicationConfiguration"))
    ConfigurationOverrides.add_member(:monitoring_configuration, Shapes::ShapeRef.new(shape: MonitoringConfiguration, location_name: "monitoringConfiguration"))
    ConfigurationOverrides.struct_class = Types::ConfigurationOverrides

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String1024, required: true, location_name: "message"))
    ConflictException.struct_class = Types::ConflictException

    CreateApplicationRequest.add_member(:name, Shapes::ShapeRef.new(shape: ApplicationName, location_name: "name"))
    CreateApplicationRequest.add_member(:release_label, Shapes::ShapeRef.new(shape: ReleaseLabel, required: true, location_name: "releaseLabel"))
    CreateApplicationRequest.add_member(:type, Shapes::ShapeRef.new(shape: EngineType, required: true, location_name: "type"))
    CreateApplicationRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, required: true, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateApplicationRequest.add_member(:initial_capacity, Shapes::ShapeRef.new(shape: InitialCapacityConfigMap, location_name: "initialCapacity"))
    CreateApplicationRequest.add_member(:maximum_capacity, Shapes::ShapeRef.new(shape: MaximumAllowedResources, location_name: "maximumCapacity"))
    CreateApplicationRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateApplicationRequest.add_member(:auto_start_configuration, Shapes::ShapeRef.new(shape: AutoStartConfig, location_name: "autoStartConfiguration"))
    CreateApplicationRequest.add_member(:auto_stop_configuration, Shapes::ShapeRef.new(shape: AutoStopConfig, location_name: "autoStopConfiguration"))
    CreateApplicationRequest.add_member(:network_configuration, Shapes::ShapeRef.new(shape: NetworkConfiguration, location_name: "networkConfiguration"))
    CreateApplicationRequest.add_member(:architecture, Shapes::ShapeRef.new(shape: Architecture, location_name: "architecture"))
    CreateApplicationRequest.add_member(:image_configuration, Shapes::ShapeRef.new(shape: ImageConfigurationInput, location_name: "imageConfiguration"))
    CreateApplicationRequest.add_member(:worker_type_specifications, Shapes::ShapeRef.new(shape: WorkerTypeSpecificationInputMap, location_name: "workerTypeSpecifications"))
    CreateApplicationRequest.struct_class = Types::CreateApplicationRequest

    CreateApplicationResponse.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location_name: "applicationId"))
    CreateApplicationResponse.add_member(:name, Shapes::ShapeRef.new(shape: ApplicationName, location_name: "name"))
    CreateApplicationResponse.add_member(:arn, Shapes::ShapeRef.new(shape: ApplicationArn, required: true, location_name: "arn"))
    CreateApplicationResponse.struct_class = Types::CreateApplicationResponse

    DeleteApplicationRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "applicationId"))
    DeleteApplicationRequest.struct_class = Types::DeleteApplicationRequest

    DeleteApplicationResponse.struct_class = Types::DeleteApplicationResponse

    EntryPointArguments.member = Shapes::ShapeRef.new(shape: EntryPointArgument)

    GetApplicationRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "applicationId"))
    GetApplicationRequest.struct_class = Types::GetApplicationRequest

    GetApplicationResponse.add_member(:application, Shapes::ShapeRef.new(shape: Application, required: true, location_name: "application"))
    GetApplicationResponse.struct_class = Types::GetApplicationResponse

    GetDashboardForJobRunRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "applicationId"))
    GetDashboardForJobRunRequest.add_member(:job_run_id, Shapes::ShapeRef.new(shape: JobRunId, required: true, location: "uri", location_name: "jobRunId"))
    GetDashboardForJobRunRequest.struct_class = Types::GetDashboardForJobRunRequest

    GetDashboardForJobRunResponse.add_member(:url, Shapes::ShapeRef.new(shape: Url, location_name: "url"))
    GetDashboardForJobRunResponse.struct_class = Types::GetDashboardForJobRunResponse

    GetJobRunRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "applicationId"))
    GetJobRunRequest.add_member(:job_run_id, Shapes::ShapeRef.new(shape: JobRunId, required: true, location: "uri", location_name: "jobRunId"))
    GetJobRunRequest.struct_class = Types::GetJobRunRequest

    GetJobRunResponse.add_member(:job_run, Shapes::ShapeRef.new(shape: JobRun, required: true, location_name: "jobRun"))
    GetJobRunResponse.struct_class = Types::GetJobRunResponse

    Hive.add_member(:query, Shapes::ShapeRef.new(shape: Query, required: true, location_name: "query"))
    Hive.add_member(:init_query_file, Shapes::ShapeRef.new(shape: InitScriptPath, location_name: "initQueryFile"))
    Hive.add_member(:parameters, Shapes::ShapeRef.new(shape: HiveCliParameters, location_name: "parameters"))
    Hive.struct_class = Types::Hive

    ImageConfiguration.add_member(:image_uri, Shapes::ShapeRef.new(shape: ImageUri, required: true, location_name: "imageUri"))
    ImageConfiguration.add_member(:resolved_image_digest, Shapes::ShapeRef.new(shape: ImageDigest, location_name: "resolvedImageDigest"))
    ImageConfiguration.struct_class = Types::ImageConfiguration

    ImageConfigurationInput.add_member(:image_uri, Shapes::ShapeRef.new(shape: ImageUri, location_name: "imageUri"))
    ImageConfigurationInput.struct_class = Types::ImageConfigurationInput

    InitialCapacityConfig.add_member(:worker_count, Shapes::ShapeRef.new(shape: WorkerCounts, required: true, location_name: "workerCount"))
    InitialCapacityConfig.add_member(:worker_configuration, Shapes::ShapeRef.new(shape: WorkerResourceConfig, location_name: "workerConfiguration"))
    InitialCapacityConfig.struct_class = Types::InitialCapacityConfig

    InitialCapacityConfigMap.key = Shapes::ShapeRef.new(shape: WorkerTypeString)
    InitialCapacityConfigMap.value = Shapes::ShapeRef.new(shape: InitialCapacityConfig)

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String1024, required: true, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    JobDriver.add_member(:spark_submit, Shapes::ShapeRef.new(shape: SparkSubmit, location_name: "sparkSubmit"))
    JobDriver.add_member(:hive, Shapes::ShapeRef.new(shape: Hive, location_name: "hive"))
    JobDriver.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    JobDriver.add_member_subclass(:spark_submit, Types::JobDriver::SparkSubmit)
    JobDriver.add_member_subclass(:hive, Types::JobDriver::Hive)
    JobDriver.add_member_subclass(:unknown, Types::JobDriver::Unknown)
    JobDriver.struct_class = Types::JobDriver

    JobRun.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location_name: "applicationId"))
    JobRun.add_member(:job_run_id, Shapes::ShapeRef.new(shape: JobRunId, required: true, location_name: "jobRunId"))
    JobRun.add_member(:name, Shapes::ShapeRef.new(shape: String256, location_name: "name"))
    JobRun.add_member(:arn, Shapes::ShapeRef.new(shape: JobArn, required: true, location_name: "arn"))
    JobRun.add_member(:created_by, Shapes::ShapeRef.new(shape: RequestIdentityUserArn, required: true, location_name: "createdBy"))
    JobRun.add_member(:created_at, Shapes::ShapeRef.new(shape: Date, required: true, location_name: "createdAt"))
    JobRun.add_member(:updated_at, Shapes::ShapeRef.new(shape: Date, required: true, location_name: "updatedAt"))
    JobRun.add_member(:execution_role, Shapes::ShapeRef.new(shape: IAMRoleArn, required: true, location_name: "executionRole"))
    JobRun.add_member(:state, Shapes::ShapeRef.new(shape: JobRunState, required: true, location_name: "state"))
    JobRun.add_member(:state_details, Shapes::ShapeRef.new(shape: String256, required: true, location_name: "stateDetails"))
    JobRun.add_member(:release_label, Shapes::ShapeRef.new(shape: ReleaseLabel, required: true, location_name: "releaseLabel"))
    JobRun.add_member(:configuration_overrides, Shapes::ShapeRef.new(shape: ConfigurationOverrides, location_name: "configurationOverrides"))
    JobRun.add_member(:job_driver, Shapes::ShapeRef.new(shape: JobDriver, required: true, location_name: "jobDriver"))
    JobRun.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    JobRun.add_member(:total_resource_utilization, Shapes::ShapeRef.new(shape: TotalResourceUtilization, location_name: "totalResourceUtilization"))
    JobRun.add_member(:network_configuration, Shapes::ShapeRef.new(shape: NetworkConfiguration, location_name: "networkConfiguration"))
    JobRun.add_member(:total_execution_duration_seconds, Shapes::ShapeRef.new(shape: Integer, location_name: "totalExecutionDurationSeconds"))
    JobRun.add_member(:execution_timeout_minutes, Shapes::ShapeRef.new(shape: Duration, location_name: "executionTimeoutMinutes", metadata: {"box"=>true}))
    JobRun.add_member(:billed_resource_utilization, Shapes::ShapeRef.new(shape: ResourceUtilization, location_name: "billedResourceUtilization"))
    JobRun.struct_class = Types::JobRun

    JobRunStateSet.member = Shapes::ShapeRef.new(shape: JobRunState)

    JobRunSummary.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location_name: "applicationId"))
    JobRunSummary.add_member(:id, Shapes::ShapeRef.new(shape: JobRunId, required: true, location_name: "id"))
    JobRunSummary.add_member(:name, Shapes::ShapeRef.new(shape: String256, location_name: "name"))
    JobRunSummary.add_member(:arn, Shapes::ShapeRef.new(shape: JobArn, required: true, location_name: "arn"))
    JobRunSummary.add_member(:created_by, Shapes::ShapeRef.new(shape: RequestIdentityUserArn, required: true, location_name: "createdBy"))
    JobRunSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Date, required: true, location_name: "createdAt"))
    JobRunSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: Date, required: true, location_name: "updatedAt"))
    JobRunSummary.add_member(:execution_role, Shapes::ShapeRef.new(shape: IAMRoleArn, required: true, location_name: "executionRole"))
    JobRunSummary.add_member(:state, Shapes::ShapeRef.new(shape: JobRunState, required: true, location_name: "state"))
    JobRunSummary.add_member(:state_details, Shapes::ShapeRef.new(shape: String256, required: true, location_name: "stateDetails"))
    JobRunSummary.add_member(:release_label, Shapes::ShapeRef.new(shape: ReleaseLabel, required: true, location_name: "releaseLabel"))
    JobRunSummary.add_member(:type, Shapes::ShapeRef.new(shape: JobRunType, location_name: "type"))
    JobRunSummary.struct_class = Types::JobRunSummary

    JobRuns.member = Shapes::ShapeRef.new(shape: JobRunSummary)

    ListApplicationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListApplicationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListApplicationsRequestMaxResultsInteger, location: "querystring", location_name: "maxResults"))
    ListApplicationsRequest.add_member(:states, Shapes::ShapeRef.new(shape: ApplicationStateSet, location: "querystring", location_name: "states"))
    ListApplicationsRequest.struct_class = Types::ListApplicationsRequest

    ListApplicationsResponse.add_member(:applications, Shapes::ShapeRef.new(shape: ApplicationList, required: true, location_name: "applications"))
    ListApplicationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListApplicationsResponse.struct_class = Types::ListApplicationsResponse

    ListJobRunsRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "applicationId"))
    ListJobRunsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListJobRunsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListJobRunsRequestMaxResultsInteger, location: "querystring", location_name: "maxResults"))
    ListJobRunsRequest.add_member(:created_at_after, Shapes::ShapeRef.new(shape: Date, location: "querystring", location_name: "createdAtAfter"))
    ListJobRunsRequest.add_member(:created_at_before, Shapes::ShapeRef.new(shape: Date, location: "querystring", location_name: "createdAtBefore"))
    ListJobRunsRequest.add_member(:states, Shapes::ShapeRef.new(shape: JobRunStateSet, location: "querystring", location_name: "states"))
    ListJobRunsRequest.struct_class = Types::ListJobRunsRequest

    ListJobRunsResponse.add_member(:job_runs, Shapes::ShapeRef.new(shape: JobRuns, required: true, location_name: "jobRuns"))
    ListJobRunsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListJobRunsResponse.struct_class = Types::ListJobRunsResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location: "uri", location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    ManagedPersistenceMonitoringConfiguration.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "enabled"))
    ManagedPersistenceMonitoringConfiguration.add_member(:encryption_key_arn, Shapes::ShapeRef.new(shape: EncryptionKeyArn, location_name: "encryptionKeyArn"))
    ManagedPersistenceMonitoringConfiguration.struct_class = Types::ManagedPersistenceMonitoringConfiguration

    MaximumAllowedResources.add_member(:cpu, Shapes::ShapeRef.new(shape: CpuSize, required: true, location_name: "cpu"))
    MaximumAllowedResources.add_member(:memory, Shapes::ShapeRef.new(shape: MemorySize, required: true, location_name: "memory"))
    MaximumAllowedResources.add_member(:disk, Shapes::ShapeRef.new(shape: DiskSize, location_name: "disk"))
    MaximumAllowedResources.struct_class = Types::MaximumAllowedResources

    MonitoringConfiguration.add_member(:s3_monitoring_configuration, Shapes::ShapeRef.new(shape: S3MonitoringConfiguration, location_name: "s3MonitoringConfiguration"))
    MonitoringConfiguration.add_member(:managed_persistence_monitoring_configuration, Shapes::ShapeRef.new(shape: ManagedPersistenceMonitoringConfiguration, location_name: "managedPersistenceMonitoringConfiguration"))
    MonitoringConfiguration.struct_class = Types::MonitoringConfiguration

    NetworkConfiguration.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: SubnetIds, location_name: "subnetIds"))
    NetworkConfiguration.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: SecurityGroupIds, location_name: "securityGroupIds"))
    NetworkConfiguration.struct_class = Types::NetworkConfiguration

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String1024, required: true, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ResourceUtilization.add_member(:v_cpu_hour, Shapes::ShapeRef.new(shape: Double, location_name: "vCPUHour"))
    ResourceUtilization.add_member(:memory_gb_hour, Shapes::ShapeRef.new(shape: Double, location_name: "memoryGBHour"))
    ResourceUtilization.add_member(:storage_gb_hour, Shapes::ShapeRef.new(shape: Double, location_name: "storageGBHour"))
    ResourceUtilization.struct_class = Types::ResourceUtilization

    S3MonitoringConfiguration.add_member(:log_uri, Shapes::ShapeRef.new(shape: UriString, location_name: "logUri"))
    S3MonitoringConfiguration.add_member(:encryption_key_arn, Shapes::ShapeRef.new(shape: EncryptionKeyArn, location_name: "encryptionKeyArn"))
    S3MonitoringConfiguration.struct_class = Types::S3MonitoringConfiguration

    SecurityGroupIds.member = Shapes::ShapeRef.new(shape: SecurityGroupString)

    SensitivePropertiesMap.key = Shapes::ShapeRef.new(shape: String1024)
    SensitivePropertiesMap.value = Shapes::ShapeRef.new(shape: String1024)

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String1024, required: true, location_name: "message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    SparkSubmit.add_member(:entry_point, Shapes::ShapeRef.new(shape: EntryPointPath, required: true, location_name: "entryPoint"))
    SparkSubmit.add_member(:entry_point_arguments, Shapes::ShapeRef.new(shape: EntryPointArguments, location_name: "entryPointArguments"))
    SparkSubmit.add_member(:spark_submit_parameters, Shapes::ShapeRef.new(shape: SparkSubmitParameters, location_name: "sparkSubmitParameters"))
    SparkSubmit.struct_class = Types::SparkSubmit

    StartApplicationRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "applicationId"))
    StartApplicationRequest.struct_class = Types::StartApplicationRequest

    StartApplicationResponse.struct_class = Types::StartApplicationResponse

    StartJobRunRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "applicationId"))
    StartJobRunRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, required: true, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    StartJobRunRequest.add_member(:execution_role_arn, Shapes::ShapeRef.new(shape: IAMRoleArn, required: true, location_name: "executionRoleArn"))
    StartJobRunRequest.add_member(:job_driver, Shapes::ShapeRef.new(shape: JobDriver, location_name: "jobDriver"))
    StartJobRunRequest.add_member(:configuration_overrides, Shapes::ShapeRef.new(shape: ConfigurationOverrides, location_name: "configurationOverrides"))
    StartJobRunRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    StartJobRunRequest.add_member(:execution_timeout_minutes, Shapes::ShapeRef.new(shape: Duration, location_name: "executionTimeoutMinutes", metadata: {"box"=>true}))
    StartJobRunRequest.add_member(:name, Shapes::ShapeRef.new(shape: String256, location_name: "name"))
    StartJobRunRequest.struct_class = Types::StartJobRunRequest

    StartJobRunResponse.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location_name: "applicationId"))
    StartJobRunResponse.add_member(:job_run_id, Shapes::ShapeRef.new(shape: JobRunId, required: true, location_name: "jobRunId"))
    StartJobRunResponse.add_member(:arn, Shapes::ShapeRef.new(shape: JobArn, required: true, location_name: "arn"))
    StartJobRunResponse.struct_class = Types::StartJobRunResponse

    StopApplicationRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "applicationId"))
    StopApplicationRequest.struct_class = Types::StopApplicationRequest

    StopApplicationResponse.struct_class = Types::StopApplicationResponse

    SubnetIds.member = Shapes::ShapeRef.new(shape: SubnetString)

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagMap.key = Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Shapes::ShapeRef.new(shape: TagValue)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location: "uri", location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    TotalResourceUtilization.add_member(:v_cpu_hour, Shapes::ShapeRef.new(shape: Double, location_name: "vCPUHour"))
    TotalResourceUtilization.add_member(:memory_gb_hour, Shapes::ShapeRef.new(shape: Double, location_name: "memoryGBHour"))
    TotalResourceUtilization.add_member(:storage_gb_hour, Shapes::ShapeRef.new(shape: Double, location_name: "storageGBHour"))
    TotalResourceUtilization.struct_class = Types::TotalResourceUtilization

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location: "uri", location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateApplicationRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "applicationId"))
    UpdateApplicationRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, required: true, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    UpdateApplicationRequest.add_member(:initial_capacity, Shapes::ShapeRef.new(shape: InitialCapacityConfigMap, location_name: "initialCapacity"))
    UpdateApplicationRequest.add_member(:maximum_capacity, Shapes::ShapeRef.new(shape: MaximumAllowedResources, location_name: "maximumCapacity"))
    UpdateApplicationRequest.add_member(:auto_start_configuration, Shapes::ShapeRef.new(shape: AutoStartConfig, location_name: "autoStartConfiguration"))
    UpdateApplicationRequest.add_member(:auto_stop_configuration, Shapes::ShapeRef.new(shape: AutoStopConfig, location_name: "autoStopConfiguration"))
    UpdateApplicationRequest.add_member(:network_configuration, Shapes::ShapeRef.new(shape: NetworkConfiguration, location_name: "networkConfiguration"))
    UpdateApplicationRequest.add_member(:architecture, Shapes::ShapeRef.new(shape: Architecture, location_name: "architecture"))
    UpdateApplicationRequest.add_member(:image_configuration, Shapes::ShapeRef.new(shape: ImageConfigurationInput, location_name: "imageConfiguration"))
    UpdateApplicationRequest.add_member(:worker_type_specifications, Shapes::ShapeRef.new(shape: WorkerTypeSpecificationInputMap, location_name: "workerTypeSpecifications"))
    UpdateApplicationRequest.add_member(:release_label, Shapes::ShapeRef.new(shape: ReleaseLabel, location_name: "releaseLabel"))
    UpdateApplicationRequest.struct_class = Types::UpdateApplicationRequest

    UpdateApplicationResponse.add_member(:application, Shapes::ShapeRef.new(shape: Application, required: true, location_name: "application"))
    UpdateApplicationResponse.struct_class = Types::UpdateApplicationResponse

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String1024, required: true, location_name: "message"))
    ValidationException.struct_class = Types::ValidationException

    WorkerResourceConfig.add_member(:cpu, Shapes::ShapeRef.new(shape: CpuSize, required: true, location_name: "cpu"))
    WorkerResourceConfig.add_member(:memory, Shapes::ShapeRef.new(shape: MemorySize, required: true, location_name: "memory"))
    WorkerResourceConfig.add_member(:disk, Shapes::ShapeRef.new(shape: DiskSize, location_name: "disk"))
    WorkerResourceConfig.struct_class = Types::WorkerResourceConfig

    WorkerTypeSpecification.add_member(:image_configuration, Shapes::ShapeRef.new(shape: ImageConfiguration, location_name: "imageConfiguration"))
    WorkerTypeSpecification.struct_class = Types::WorkerTypeSpecification

    WorkerTypeSpecificationInput.add_member(:image_configuration, Shapes::ShapeRef.new(shape: ImageConfigurationInput, location_name: "imageConfiguration"))
    WorkerTypeSpecificationInput.struct_class = Types::WorkerTypeSpecificationInput

    WorkerTypeSpecificationInputMap.key = Shapes::ShapeRef.new(shape: WorkerTypeString)
    WorkerTypeSpecificationInputMap.value = Shapes::ShapeRef.new(shape: WorkerTypeSpecificationInput)

    WorkerTypeSpecificationMap.key = Shapes::ShapeRef.new(shape: WorkerTypeString)
    WorkerTypeSpecificationMap.value = Shapes::ShapeRef.new(shape: WorkerTypeSpecification)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2021-07-13"

      api.metadata = {
        "apiVersion" => "2021-07-13",
        "endpointPrefix" => "emr-serverless",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceFullName" => "EMR Serverless",
        "serviceId" => "EMR Serverless",
        "signatureVersion" => "v4",
        "signingName" => "emr-serverless",
        "uid" => "emr-serverless-2021-07-13",
      }

      api.add_operation(:cancel_job_run, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CancelJobRun"
        o.http_method = "DELETE"
        o.http_request_uri = "/applications/{applicationId}/jobruns/{jobRunId}"
        o.input = Shapes::ShapeRef.new(shape: CancelJobRunRequest)
        o.output = Shapes::ShapeRef.new(shape: CancelJobRunResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_application, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateApplication"
        o.http_method = "POST"
        o.http_request_uri = "/applications"
        o.input = Shapes::ShapeRef.new(shape: CreateApplicationRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateApplicationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_application, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteApplication"
        o.http_method = "DELETE"
        o.http_request_uri = "/applications/{applicationId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteApplicationRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteApplicationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_application, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetApplication"
        o.http_method = "GET"
        o.http_request_uri = "/applications/{applicationId}"
        o.input = Shapes::ShapeRef.new(shape: GetApplicationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetApplicationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_dashboard_for_job_run, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDashboardForJobRun"
        o.http_method = "GET"
        o.http_request_uri = "/applications/{applicationId}/jobruns/{jobRunId}/dashboard"
        o.input = Shapes::ShapeRef.new(shape: GetDashboardForJobRunRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDashboardForJobRunResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_job_run, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetJobRun"
        o.http_method = "GET"
        o.http_request_uri = "/applications/{applicationId}/jobruns/{jobRunId}"
        o.input = Shapes::ShapeRef.new(shape: GetJobRunRequest)
        o.output = Shapes::ShapeRef.new(shape: GetJobRunResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:list_applications, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListApplications"
        o.http_method = "GET"
        o.http_request_uri = "/applications"
        o.input = Shapes::ShapeRef.new(shape: ListApplicationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListApplicationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_job_runs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListJobRuns"
        o.http_method = "GET"
        o.http_request_uri = "/applications/{applicationId}/jobruns"
        o.input = Shapes::ShapeRef.new(shape: ListJobRunsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListJobRunsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
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
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:start_application, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartApplication"
        o.http_method = "POST"
        o.http_request_uri = "/applications/{applicationId}/start"
        o.input = Shapes::ShapeRef.new(shape: StartApplicationRequest)
        o.output = Shapes::ShapeRef.new(shape: StartApplicationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:start_job_run, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartJobRun"
        o.http_method = "POST"
        o.http_request_uri = "/applications/{applicationId}/jobruns"
        o.input = Shapes::ShapeRef.new(shape: StartJobRunRequest)
        o.output = Shapes::ShapeRef.new(shape: StartJobRunResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:stop_application, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopApplication"
        o.http_method = "POST"
        o.http_request_uri = "/applications/{applicationId}/stop"
        o.input = Shapes::ShapeRef.new(shape: StopApplicationRequest)
        o.output = Shapes::ShapeRef.new(shape: StopApplicationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_application, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateApplication"
        o.http_method = "PATCH"
        o.http_request_uri = "/applications/{applicationId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateApplicationRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateApplicationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)
    end

  end
end
