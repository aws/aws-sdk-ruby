# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::RoboMaker
  # @api private
  module ClientApi

    include Seahorse::Model

    Architecture = Shapes::StringShape.new(name: 'Architecture')
    Arn = Shapes::StringShape.new(name: 'Arn')
    Arns = Shapes::ListShape.new(name: 'Arns')
    BatchDescribeSimulationJobRequest = Shapes::StructureShape.new(name: 'BatchDescribeSimulationJobRequest')
    BatchDescribeSimulationJobResponse = Shapes::StructureShape.new(name: 'BatchDescribeSimulationJobResponse')
    BatchPolicy = Shapes::StructureShape.new(name: 'BatchPolicy')
    BatchTimeoutInSeconds = Shapes::IntegerShape.new(name: 'BatchTimeoutInSeconds')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    BoxedBoolean = Shapes::BooleanShape.new(name: 'BoxedBoolean')
    CancelDeploymentJobRequest = Shapes::StructureShape.new(name: 'CancelDeploymentJobRequest')
    CancelDeploymentJobResponse = Shapes::StructureShape.new(name: 'CancelDeploymentJobResponse')
    CancelSimulationJobBatchRequest = Shapes::StructureShape.new(name: 'CancelSimulationJobBatchRequest')
    CancelSimulationJobBatchResponse = Shapes::StructureShape.new(name: 'CancelSimulationJobBatchResponse')
    CancelSimulationJobRequest = Shapes::StructureShape.new(name: 'CancelSimulationJobRequest')
    CancelSimulationJobResponse = Shapes::StructureShape.new(name: 'CancelSimulationJobResponse')
    ClientRequestToken = Shapes::StringShape.new(name: 'ClientRequestToken')
    Command = Shapes::StringShape.new(name: 'Command')
    ConcurrentDeploymentException = Shapes::StructureShape.new(name: 'ConcurrentDeploymentException')
    CreateDeploymentJobRequest = Shapes::StructureShape.new(name: 'CreateDeploymentJobRequest')
    CreateDeploymentJobResponse = Shapes::StructureShape.new(name: 'CreateDeploymentJobResponse')
    CreateFleetRequest = Shapes::StructureShape.new(name: 'CreateFleetRequest')
    CreateFleetResponse = Shapes::StructureShape.new(name: 'CreateFleetResponse')
    CreateRobotApplicationRequest = Shapes::StructureShape.new(name: 'CreateRobotApplicationRequest')
    CreateRobotApplicationResponse = Shapes::StructureShape.new(name: 'CreateRobotApplicationResponse')
    CreateRobotApplicationVersionRequest = Shapes::StructureShape.new(name: 'CreateRobotApplicationVersionRequest')
    CreateRobotApplicationVersionResponse = Shapes::StructureShape.new(name: 'CreateRobotApplicationVersionResponse')
    CreateRobotRequest = Shapes::StructureShape.new(name: 'CreateRobotRequest')
    CreateRobotResponse = Shapes::StructureShape.new(name: 'CreateRobotResponse')
    CreateSimulationApplicationRequest = Shapes::StructureShape.new(name: 'CreateSimulationApplicationRequest')
    CreateSimulationApplicationResponse = Shapes::StructureShape.new(name: 'CreateSimulationApplicationResponse')
    CreateSimulationApplicationVersionRequest = Shapes::StructureShape.new(name: 'CreateSimulationApplicationVersionRequest')
    CreateSimulationApplicationVersionResponse = Shapes::StructureShape.new(name: 'CreateSimulationApplicationVersionResponse')
    CreateSimulationJobRequest = Shapes::StructureShape.new(name: 'CreateSimulationJobRequest')
    CreateSimulationJobRequests = Shapes::ListShape.new(name: 'CreateSimulationJobRequests')
    CreateSimulationJobResponse = Shapes::StructureShape.new(name: 'CreateSimulationJobResponse')
    CreatedAt = Shapes::TimestampShape.new(name: 'CreatedAt')
    DataSource = Shapes::StructureShape.new(name: 'DataSource')
    DataSourceConfig = Shapes::StructureShape.new(name: 'DataSourceConfig')
    DataSourceConfigs = Shapes::ListShape.new(name: 'DataSourceConfigs')
    DataSourceNames = Shapes::ListShape.new(name: 'DataSourceNames')
    DataSources = Shapes::ListShape.new(name: 'DataSources')
    DeleteFleetRequest = Shapes::StructureShape.new(name: 'DeleteFleetRequest')
    DeleteFleetResponse = Shapes::StructureShape.new(name: 'DeleteFleetResponse')
    DeleteRobotApplicationRequest = Shapes::StructureShape.new(name: 'DeleteRobotApplicationRequest')
    DeleteRobotApplicationResponse = Shapes::StructureShape.new(name: 'DeleteRobotApplicationResponse')
    DeleteRobotRequest = Shapes::StructureShape.new(name: 'DeleteRobotRequest')
    DeleteRobotResponse = Shapes::StructureShape.new(name: 'DeleteRobotResponse')
    DeleteSimulationApplicationRequest = Shapes::StructureShape.new(name: 'DeleteSimulationApplicationRequest')
    DeleteSimulationApplicationResponse = Shapes::StructureShape.new(name: 'DeleteSimulationApplicationResponse')
    DeploymentApplicationConfig = Shapes::StructureShape.new(name: 'DeploymentApplicationConfig')
    DeploymentApplicationConfigs = Shapes::ListShape.new(name: 'DeploymentApplicationConfigs')
    DeploymentConfig = Shapes::StructureShape.new(name: 'DeploymentConfig')
    DeploymentJob = Shapes::StructureShape.new(name: 'DeploymentJob')
    DeploymentJobErrorCode = Shapes::StringShape.new(name: 'DeploymentJobErrorCode')
    DeploymentJobs = Shapes::ListShape.new(name: 'DeploymentJobs')
    DeploymentLaunchConfig = Shapes::StructureShape.new(name: 'DeploymentLaunchConfig')
    DeploymentStatus = Shapes::StringShape.new(name: 'DeploymentStatus')
    DeploymentTimeout = Shapes::IntegerShape.new(name: 'DeploymentTimeout')
    DeploymentVersion = Shapes::StringShape.new(name: 'DeploymentVersion')
    DeregisterRobotRequest = Shapes::StructureShape.new(name: 'DeregisterRobotRequest')
    DeregisterRobotResponse = Shapes::StructureShape.new(name: 'DeregisterRobotResponse')
    DescribeDeploymentJobRequest = Shapes::StructureShape.new(name: 'DescribeDeploymentJobRequest')
    DescribeDeploymentJobResponse = Shapes::StructureShape.new(name: 'DescribeDeploymentJobResponse')
    DescribeFleetRequest = Shapes::StructureShape.new(name: 'DescribeFleetRequest')
    DescribeFleetResponse = Shapes::StructureShape.new(name: 'DescribeFleetResponse')
    DescribeRobotApplicationRequest = Shapes::StructureShape.new(name: 'DescribeRobotApplicationRequest')
    DescribeRobotApplicationResponse = Shapes::StructureShape.new(name: 'DescribeRobotApplicationResponse')
    DescribeRobotRequest = Shapes::StructureShape.new(name: 'DescribeRobotRequest')
    DescribeRobotResponse = Shapes::StructureShape.new(name: 'DescribeRobotResponse')
    DescribeSimulationApplicationRequest = Shapes::StructureShape.new(name: 'DescribeSimulationApplicationRequest')
    DescribeSimulationApplicationResponse = Shapes::StructureShape.new(name: 'DescribeSimulationApplicationResponse')
    DescribeSimulationJobBatchRequest = Shapes::StructureShape.new(name: 'DescribeSimulationJobBatchRequest')
    DescribeSimulationJobBatchResponse = Shapes::StructureShape.new(name: 'DescribeSimulationJobBatchResponse')
    DescribeSimulationJobRequest = Shapes::StructureShape.new(name: 'DescribeSimulationJobRequest')
    DescribeSimulationJobResponse = Shapes::StructureShape.new(name: 'DescribeSimulationJobResponse')
    EnvironmentVariableKey = Shapes::StringShape.new(name: 'EnvironmentVariableKey')
    EnvironmentVariableMap = Shapes::MapShape.new(name: 'EnvironmentVariableMap')
    EnvironmentVariableValue = Shapes::StringShape.new(name: 'EnvironmentVariableValue')
    FailedAt = Shapes::TimestampShape.new(name: 'FailedAt')
    FailedCreateSimulationJobRequest = Shapes::StructureShape.new(name: 'FailedCreateSimulationJobRequest')
    FailedCreateSimulationJobRequests = Shapes::ListShape.new(name: 'FailedCreateSimulationJobRequests')
    FailureBehavior = Shapes::StringShape.new(name: 'FailureBehavior')
    Filter = Shapes::StructureShape.new(name: 'Filter')
    FilterValues = Shapes::ListShape.new(name: 'FilterValues')
    Filters = Shapes::ListShape.new(name: 'Filters')
    Fleet = Shapes::StructureShape.new(name: 'Fleet')
    Fleets = Shapes::ListShape.new(name: 'Fleets')
    GenericInteger = Shapes::IntegerShape.new(name: 'GenericInteger')
    GenericString = Shapes::StringShape.new(name: 'GenericString')
    IamRole = Shapes::StringShape.new(name: 'IamRole')
    Id = Shapes::StringShape.new(name: 'Id')
    IdempotentParameterMismatchException = Shapes::StructureShape.new(name: 'IdempotentParameterMismatchException')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    InvalidParameterException = Shapes::StructureShape.new(name: 'InvalidParameterException')
    JobDuration = Shapes::IntegerShape.new(name: 'JobDuration')
    LastStartedAt = Shapes::TimestampShape.new(name: 'LastStartedAt')
    LastUpdatedAt = Shapes::TimestampShape.new(name: 'LastUpdatedAt')
    LaunchConfig = Shapes::StructureShape.new(name: 'LaunchConfig')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    ListDeploymentJobsRequest = Shapes::StructureShape.new(name: 'ListDeploymentJobsRequest')
    ListDeploymentJobsResponse = Shapes::StructureShape.new(name: 'ListDeploymentJobsResponse')
    ListFleetsRequest = Shapes::StructureShape.new(name: 'ListFleetsRequest')
    ListFleetsResponse = Shapes::StructureShape.new(name: 'ListFleetsResponse')
    ListRobotApplicationsRequest = Shapes::StructureShape.new(name: 'ListRobotApplicationsRequest')
    ListRobotApplicationsResponse = Shapes::StructureShape.new(name: 'ListRobotApplicationsResponse')
    ListRobotsRequest = Shapes::StructureShape.new(name: 'ListRobotsRequest')
    ListRobotsResponse = Shapes::StructureShape.new(name: 'ListRobotsResponse')
    ListSimulationApplicationsRequest = Shapes::StructureShape.new(name: 'ListSimulationApplicationsRequest')
    ListSimulationApplicationsResponse = Shapes::StructureShape.new(name: 'ListSimulationApplicationsResponse')
    ListSimulationJobBatchesRequest = Shapes::StructureShape.new(name: 'ListSimulationJobBatchesRequest')
    ListSimulationJobBatchesResponse = Shapes::StructureShape.new(name: 'ListSimulationJobBatchesResponse')
    ListSimulationJobsRequest = Shapes::StructureShape.new(name: 'ListSimulationJobsRequest')
    ListSimulationJobsResponse = Shapes::StructureShape.new(name: 'ListSimulationJobsResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    LoggingConfig = Shapes::StructureShape.new(name: 'LoggingConfig')
    MaxConcurrency = Shapes::IntegerShape.new(name: 'MaxConcurrency')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    Name = Shapes::StringShape.new(name: 'Name')
    NetworkInterface = Shapes::StructureShape.new(name: 'NetworkInterface')
    NonEmptyString = Shapes::StringShape.new(name: 'NonEmptyString')
    NonSystemPort = Shapes::IntegerShape.new(name: 'NonSystemPort')
    OutputLocation = Shapes::StructureShape.new(name: 'OutputLocation')
    PaginationToken = Shapes::StringShape.new(name: 'PaginationToken')
    Path = Shapes::StringShape.new(name: 'Path')
    PercentDone = Shapes::FloatShape.new(name: 'PercentDone')
    Percentage = Shapes::IntegerShape.new(name: 'Percentage')
    Port = Shapes::IntegerShape.new(name: 'Port')
    PortForwardingConfig = Shapes::StructureShape.new(name: 'PortForwardingConfig')
    PortMapping = Shapes::StructureShape.new(name: 'PortMapping')
    PortMappingList = Shapes::ListShape.new(name: 'PortMappingList')
    ProgressDetail = Shapes::StructureShape.new(name: 'ProgressDetail')
    RegisterRobotRequest = Shapes::StructureShape.new(name: 'RegisterRobotRequest')
    RegisterRobotResponse = Shapes::StructureShape.new(name: 'RegisterRobotResponse')
    RenderingEngine = Shapes::StructureShape.new(name: 'RenderingEngine')
    RenderingEngineType = Shapes::StringShape.new(name: 'RenderingEngineType')
    RenderingEngineVersionType = Shapes::StringShape.new(name: 'RenderingEngineVersionType')
    ResourceAlreadyExistsException = Shapes::StructureShape.new(name: 'ResourceAlreadyExistsException')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    RestartSimulationJobRequest = Shapes::StructureShape.new(name: 'RestartSimulationJobRequest')
    RestartSimulationJobResponse = Shapes::StructureShape.new(name: 'RestartSimulationJobResponse')
    RevisionId = Shapes::StringShape.new(name: 'RevisionId')
    Robot = Shapes::StructureShape.new(name: 'Robot')
    RobotApplicationConfig = Shapes::StructureShape.new(name: 'RobotApplicationConfig')
    RobotApplicationConfigs = Shapes::ListShape.new(name: 'RobotApplicationConfigs')
    RobotApplicationNames = Shapes::ListShape.new(name: 'RobotApplicationNames')
    RobotApplicationSummaries = Shapes::ListShape.new(name: 'RobotApplicationSummaries')
    RobotApplicationSummary = Shapes::StructureShape.new(name: 'RobotApplicationSummary')
    RobotDeployment = Shapes::StructureShape.new(name: 'RobotDeployment')
    RobotDeploymentStep = Shapes::StringShape.new(name: 'RobotDeploymentStep')
    RobotDeploymentSummary = Shapes::ListShape.new(name: 'RobotDeploymentSummary')
    RobotSoftwareSuite = Shapes::StructureShape.new(name: 'RobotSoftwareSuite')
    RobotSoftwareSuiteType = Shapes::StringShape.new(name: 'RobotSoftwareSuiteType')
    RobotSoftwareSuiteVersionType = Shapes::StringShape.new(name: 'RobotSoftwareSuiteVersionType')
    RobotStatus = Shapes::StringShape.new(name: 'RobotStatus')
    Robots = Shapes::ListShape.new(name: 'Robots')
    S3Bucket = Shapes::StringShape.new(name: 'S3Bucket')
    S3Etag = Shapes::StringShape.new(name: 'S3Etag')
    S3Key = Shapes::StringShape.new(name: 'S3Key')
    S3KeyOutput = Shapes::StructureShape.new(name: 'S3KeyOutput')
    S3KeyOutputs = Shapes::ListShape.new(name: 'S3KeyOutputs')
    S3Keys = Shapes::ListShape.new(name: 'S3Keys')
    S3Object = Shapes::StructureShape.new(name: 'S3Object')
    SecurityGroups = Shapes::ListShape.new(name: 'SecurityGroups')
    ServiceUnavailableException = Shapes::StructureShape.new(name: 'ServiceUnavailableException')
    SimulationApplicationConfig = Shapes::StructureShape.new(name: 'SimulationApplicationConfig')
    SimulationApplicationConfigs = Shapes::ListShape.new(name: 'SimulationApplicationConfigs')
    SimulationApplicationNames = Shapes::ListShape.new(name: 'SimulationApplicationNames')
    SimulationApplicationSummaries = Shapes::ListShape.new(name: 'SimulationApplicationSummaries')
    SimulationApplicationSummary = Shapes::StructureShape.new(name: 'SimulationApplicationSummary')
    SimulationJob = Shapes::StructureShape.new(name: 'SimulationJob')
    SimulationJobBatchErrorCode = Shapes::StringShape.new(name: 'SimulationJobBatchErrorCode')
    SimulationJobBatchStatus = Shapes::StringShape.new(name: 'SimulationJobBatchStatus')
    SimulationJobBatchSummaries = Shapes::ListShape.new(name: 'SimulationJobBatchSummaries')
    SimulationJobBatchSummary = Shapes::StructureShape.new(name: 'SimulationJobBatchSummary')
    SimulationJobErrorCode = Shapes::StringShape.new(name: 'SimulationJobErrorCode')
    SimulationJobRequest = Shapes::StructureShape.new(name: 'SimulationJobRequest')
    SimulationJobStatus = Shapes::StringShape.new(name: 'SimulationJobStatus')
    SimulationJobSummaries = Shapes::ListShape.new(name: 'SimulationJobSummaries')
    SimulationJobSummary = Shapes::StructureShape.new(name: 'SimulationJobSummary')
    SimulationJobs = Shapes::ListShape.new(name: 'SimulationJobs')
    SimulationSoftwareSuite = Shapes::StructureShape.new(name: 'SimulationSoftwareSuite')
    SimulationSoftwareSuiteType = Shapes::StringShape.new(name: 'SimulationSoftwareSuiteType')
    SimulationSoftwareSuiteVersionType = Shapes::StringShape.new(name: 'SimulationSoftwareSuiteVersionType')
    SimulationTimeMillis = Shapes::IntegerShape.new(name: 'SimulationTimeMillis')
    Source = Shapes::StructureShape.new(name: 'Source')
    SourceConfig = Shapes::StructureShape.new(name: 'SourceConfig')
    SourceConfigs = Shapes::ListShape.new(name: 'SourceConfigs')
    Sources = Shapes::ListShape.new(name: 'Sources')
    StartSimulationJobBatchRequest = Shapes::StructureShape.new(name: 'StartSimulationJobBatchRequest')
    StartSimulationJobBatchResponse = Shapes::StructureShape.new(name: 'StartSimulationJobBatchResponse')
    Subnets = Shapes::ListShape.new(name: 'Subnets')
    SyncDeploymentJobRequest = Shapes::StructureShape.new(name: 'SyncDeploymentJobRequest')
    SyncDeploymentJobResponse = Shapes::StructureShape.new(name: 'SyncDeploymentJobResponse')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagMap = Shapes::MapShape.new(name: 'TagMap')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateRobotApplicationRequest = Shapes::StructureShape.new(name: 'UpdateRobotApplicationRequest')
    UpdateRobotApplicationResponse = Shapes::StructureShape.new(name: 'UpdateRobotApplicationResponse')
    UpdateSimulationApplicationRequest = Shapes::StructureShape.new(name: 'UpdateSimulationApplicationRequest')
    UpdateSimulationApplicationResponse = Shapes::StructureShape.new(name: 'UpdateSimulationApplicationResponse')
    VPCConfig = Shapes::StructureShape.new(name: 'VPCConfig')
    VPCConfigResponse = Shapes::StructureShape.new(name: 'VPCConfigResponse')
    Version = Shapes::StringShape.new(name: 'Version')
    VersionQualifier = Shapes::StringShape.new(name: 'VersionQualifier')
    errorMessage = Shapes::StringShape.new(name: 'errorMessage')

    Arns.member = Shapes::ShapeRef.new(shape: Arn)

    BatchDescribeSimulationJobRequest.add_member(:jobs, Shapes::ShapeRef.new(shape: Arns, required: true, location_name: "jobs"))
    BatchDescribeSimulationJobRequest.struct_class = Types::BatchDescribeSimulationJobRequest

    BatchDescribeSimulationJobResponse.add_member(:jobs, Shapes::ShapeRef.new(shape: SimulationJobs, location_name: "jobs"))
    BatchDescribeSimulationJobResponse.add_member(:unprocessed_jobs, Shapes::ShapeRef.new(shape: Arns, location_name: "unprocessedJobs"))
    BatchDescribeSimulationJobResponse.struct_class = Types::BatchDescribeSimulationJobResponse

    BatchPolicy.add_member(:timeout_in_seconds, Shapes::ShapeRef.new(shape: BatchTimeoutInSeconds, location_name: "timeoutInSeconds"))
    BatchPolicy.add_member(:max_concurrency, Shapes::ShapeRef.new(shape: MaxConcurrency, location_name: "maxConcurrency"))
    BatchPolicy.struct_class = Types::BatchPolicy

    CancelDeploymentJobRequest.add_member(:job, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "job"))
    CancelDeploymentJobRequest.struct_class = Types::CancelDeploymentJobRequest

    CancelDeploymentJobResponse.struct_class = Types::CancelDeploymentJobResponse

    CancelSimulationJobBatchRequest.add_member(:batch, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "batch"))
    CancelSimulationJobBatchRequest.struct_class = Types::CancelSimulationJobBatchRequest

    CancelSimulationJobBatchResponse.struct_class = Types::CancelSimulationJobBatchResponse

    CancelSimulationJobRequest.add_member(:job, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "job"))
    CancelSimulationJobRequest.struct_class = Types::CancelSimulationJobRequest

    CancelSimulationJobResponse.struct_class = Types::CancelSimulationJobResponse

    ConcurrentDeploymentException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "message"))
    ConcurrentDeploymentException.struct_class = Types::ConcurrentDeploymentException

    CreateDeploymentJobRequest.add_member(:deployment_config, Shapes::ShapeRef.new(shape: DeploymentConfig, location_name: "deploymentConfig"))
    CreateDeploymentJobRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, required: true, location_name: "clientRequestToken", metadata: {"idempotencyToken"=>true}))
    CreateDeploymentJobRequest.add_member(:fleet, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "fleet"))
    CreateDeploymentJobRequest.add_member(:deployment_application_configs, Shapes::ShapeRef.new(shape: DeploymentApplicationConfigs, required: true, location_name: "deploymentApplicationConfigs"))
    CreateDeploymentJobRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateDeploymentJobRequest.struct_class = Types::CreateDeploymentJobRequest

    CreateDeploymentJobResponse.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "arn"))
    CreateDeploymentJobResponse.add_member(:fleet, Shapes::ShapeRef.new(shape: Arn, location_name: "fleet"))
    CreateDeploymentJobResponse.add_member(:status, Shapes::ShapeRef.new(shape: DeploymentStatus, location_name: "status"))
    CreateDeploymentJobResponse.add_member(:deployment_application_configs, Shapes::ShapeRef.new(shape: DeploymentApplicationConfigs, location_name: "deploymentApplicationConfigs"))
    CreateDeploymentJobResponse.add_member(:failure_reason, Shapes::ShapeRef.new(shape: GenericString, location_name: "failureReason"))
    CreateDeploymentJobResponse.add_member(:failure_code, Shapes::ShapeRef.new(shape: DeploymentJobErrorCode, location_name: "failureCode"))
    CreateDeploymentJobResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: CreatedAt, location_name: "createdAt"))
    CreateDeploymentJobResponse.add_member(:deployment_config, Shapes::ShapeRef.new(shape: DeploymentConfig, location_name: "deploymentConfig"))
    CreateDeploymentJobResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateDeploymentJobResponse.struct_class = Types::CreateDeploymentJobResponse

    CreateFleetRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    CreateFleetRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateFleetRequest.struct_class = Types::CreateFleetRequest

    CreateFleetResponse.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "arn"))
    CreateFleetResponse.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "name"))
    CreateFleetResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: CreatedAt, location_name: "createdAt"))
    CreateFleetResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateFleetResponse.struct_class = Types::CreateFleetResponse

    CreateRobotApplicationRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    CreateRobotApplicationRequest.add_member(:sources, Shapes::ShapeRef.new(shape: SourceConfigs, required: true, location_name: "sources"))
    CreateRobotApplicationRequest.add_member(:robot_software_suite, Shapes::ShapeRef.new(shape: RobotSoftwareSuite, required: true, location_name: "robotSoftwareSuite"))
    CreateRobotApplicationRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateRobotApplicationRequest.struct_class = Types::CreateRobotApplicationRequest

    CreateRobotApplicationResponse.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "arn"))
    CreateRobotApplicationResponse.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "name"))
    CreateRobotApplicationResponse.add_member(:version, Shapes::ShapeRef.new(shape: Version, location_name: "version"))
    CreateRobotApplicationResponse.add_member(:sources, Shapes::ShapeRef.new(shape: Sources, location_name: "sources"))
    CreateRobotApplicationResponse.add_member(:robot_software_suite, Shapes::ShapeRef.new(shape: RobotSoftwareSuite, location_name: "robotSoftwareSuite"))
    CreateRobotApplicationResponse.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: LastUpdatedAt, location_name: "lastUpdatedAt"))
    CreateRobotApplicationResponse.add_member(:revision_id, Shapes::ShapeRef.new(shape: RevisionId, location_name: "revisionId"))
    CreateRobotApplicationResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateRobotApplicationResponse.struct_class = Types::CreateRobotApplicationResponse

    CreateRobotApplicationVersionRequest.add_member(:application, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "application"))
    CreateRobotApplicationVersionRequest.add_member(:current_revision_id, Shapes::ShapeRef.new(shape: RevisionId, location_name: "currentRevisionId"))
    CreateRobotApplicationVersionRequest.struct_class = Types::CreateRobotApplicationVersionRequest

    CreateRobotApplicationVersionResponse.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "arn"))
    CreateRobotApplicationVersionResponse.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "name"))
    CreateRobotApplicationVersionResponse.add_member(:version, Shapes::ShapeRef.new(shape: Version, location_name: "version"))
    CreateRobotApplicationVersionResponse.add_member(:sources, Shapes::ShapeRef.new(shape: Sources, location_name: "sources"))
    CreateRobotApplicationVersionResponse.add_member(:robot_software_suite, Shapes::ShapeRef.new(shape: RobotSoftwareSuite, location_name: "robotSoftwareSuite"))
    CreateRobotApplicationVersionResponse.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: LastUpdatedAt, location_name: "lastUpdatedAt"))
    CreateRobotApplicationVersionResponse.add_member(:revision_id, Shapes::ShapeRef.new(shape: RevisionId, location_name: "revisionId"))
    CreateRobotApplicationVersionResponse.struct_class = Types::CreateRobotApplicationVersionResponse

    CreateRobotRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    CreateRobotRequest.add_member(:architecture, Shapes::ShapeRef.new(shape: Architecture, required: true, location_name: "architecture"))
    CreateRobotRequest.add_member(:greengrass_group_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "greengrassGroupId"))
    CreateRobotRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateRobotRequest.struct_class = Types::CreateRobotRequest

    CreateRobotResponse.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "arn"))
    CreateRobotResponse.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "name"))
    CreateRobotResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: CreatedAt, location_name: "createdAt"))
    CreateRobotResponse.add_member(:greengrass_group_id, Shapes::ShapeRef.new(shape: Id, location_name: "greengrassGroupId"))
    CreateRobotResponse.add_member(:architecture, Shapes::ShapeRef.new(shape: Architecture, location_name: "architecture"))
    CreateRobotResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateRobotResponse.struct_class = Types::CreateRobotResponse

    CreateSimulationApplicationRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    CreateSimulationApplicationRequest.add_member(:sources, Shapes::ShapeRef.new(shape: SourceConfigs, required: true, location_name: "sources"))
    CreateSimulationApplicationRequest.add_member(:simulation_software_suite, Shapes::ShapeRef.new(shape: SimulationSoftwareSuite, required: true, location_name: "simulationSoftwareSuite"))
    CreateSimulationApplicationRequest.add_member(:robot_software_suite, Shapes::ShapeRef.new(shape: RobotSoftwareSuite, required: true, location_name: "robotSoftwareSuite"))
    CreateSimulationApplicationRequest.add_member(:rendering_engine, Shapes::ShapeRef.new(shape: RenderingEngine, location_name: "renderingEngine"))
    CreateSimulationApplicationRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateSimulationApplicationRequest.struct_class = Types::CreateSimulationApplicationRequest

    CreateSimulationApplicationResponse.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "arn"))
    CreateSimulationApplicationResponse.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "name"))
    CreateSimulationApplicationResponse.add_member(:version, Shapes::ShapeRef.new(shape: Version, location_name: "version"))
    CreateSimulationApplicationResponse.add_member(:sources, Shapes::ShapeRef.new(shape: Sources, location_name: "sources"))
    CreateSimulationApplicationResponse.add_member(:simulation_software_suite, Shapes::ShapeRef.new(shape: SimulationSoftwareSuite, location_name: "simulationSoftwareSuite"))
    CreateSimulationApplicationResponse.add_member(:robot_software_suite, Shapes::ShapeRef.new(shape: RobotSoftwareSuite, location_name: "robotSoftwareSuite"))
    CreateSimulationApplicationResponse.add_member(:rendering_engine, Shapes::ShapeRef.new(shape: RenderingEngine, location_name: "renderingEngine"))
    CreateSimulationApplicationResponse.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: LastUpdatedAt, location_name: "lastUpdatedAt"))
    CreateSimulationApplicationResponse.add_member(:revision_id, Shapes::ShapeRef.new(shape: RevisionId, location_name: "revisionId"))
    CreateSimulationApplicationResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateSimulationApplicationResponse.struct_class = Types::CreateSimulationApplicationResponse

    CreateSimulationApplicationVersionRequest.add_member(:application, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "application"))
    CreateSimulationApplicationVersionRequest.add_member(:current_revision_id, Shapes::ShapeRef.new(shape: RevisionId, location_name: "currentRevisionId"))
    CreateSimulationApplicationVersionRequest.struct_class = Types::CreateSimulationApplicationVersionRequest

    CreateSimulationApplicationVersionResponse.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "arn"))
    CreateSimulationApplicationVersionResponse.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "name"))
    CreateSimulationApplicationVersionResponse.add_member(:version, Shapes::ShapeRef.new(shape: Version, location_name: "version"))
    CreateSimulationApplicationVersionResponse.add_member(:sources, Shapes::ShapeRef.new(shape: Sources, location_name: "sources"))
    CreateSimulationApplicationVersionResponse.add_member(:simulation_software_suite, Shapes::ShapeRef.new(shape: SimulationSoftwareSuite, location_name: "simulationSoftwareSuite"))
    CreateSimulationApplicationVersionResponse.add_member(:robot_software_suite, Shapes::ShapeRef.new(shape: RobotSoftwareSuite, location_name: "robotSoftwareSuite"))
    CreateSimulationApplicationVersionResponse.add_member(:rendering_engine, Shapes::ShapeRef.new(shape: RenderingEngine, location_name: "renderingEngine"))
    CreateSimulationApplicationVersionResponse.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: LastUpdatedAt, location_name: "lastUpdatedAt"))
    CreateSimulationApplicationVersionResponse.add_member(:revision_id, Shapes::ShapeRef.new(shape: RevisionId, location_name: "revisionId"))
    CreateSimulationApplicationVersionResponse.struct_class = Types::CreateSimulationApplicationVersionResponse

    CreateSimulationJobRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "clientRequestToken", metadata: {"idempotencyToken"=>true}))
    CreateSimulationJobRequest.add_member(:output_location, Shapes::ShapeRef.new(shape: OutputLocation, location_name: "outputLocation"))
    CreateSimulationJobRequest.add_member(:logging_config, Shapes::ShapeRef.new(shape: LoggingConfig, location_name: "loggingConfig"))
    CreateSimulationJobRequest.add_member(:max_job_duration_in_seconds, Shapes::ShapeRef.new(shape: JobDuration, required: true, location_name: "maxJobDurationInSeconds"))
    CreateSimulationJobRequest.add_member(:iam_role, Shapes::ShapeRef.new(shape: IamRole, required: true, location_name: "iamRole"))
    CreateSimulationJobRequest.add_member(:failure_behavior, Shapes::ShapeRef.new(shape: FailureBehavior, location_name: "failureBehavior"))
    CreateSimulationJobRequest.add_member(:robot_applications, Shapes::ShapeRef.new(shape: RobotApplicationConfigs, location_name: "robotApplications"))
    CreateSimulationJobRequest.add_member(:simulation_applications, Shapes::ShapeRef.new(shape: SimulationApplicationConfigs, location_name: "simulationApplications"))
    CreateSimulationJobRequest.add_member(:data_sources, Shapes::ShapeRef.new(shape: DataSourceConfigs, location_name: "dataSources"))
    CreateSimulationJobRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateSimulationJobRequest.add_member(:vpc_config, Shapes::ShapeRef.new(shape: VPCConfig, location_name: "vpcConfig"))
    CreateSimulationJobRequest.struct_class = Types::CreateSimulationJobRequest

    CreateSimulationJobRequests.member = Shapes::ShapeRef.new(shape: SimulationJobRequest)

    CreateSimulationJobResponse.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "arn"))
    CreateSimulationJobResponse.add_member(:status, Shapes::ShapeRef.new(shape: SimulationJobStatus, location_name: "status"))
    CreateSimulationJobResponse.add_member(:last_started_at, Shapes::ShapeRef.new(shape: LastStartedAt, location_name: "lastStartedAt"))
    CreateSimulationJobResponse.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: LastUpdatedAt, location_name: "lastUpdatedAt"))
    CreateSimulationJobResponse.add_member(:failure_behavior, Shapes::ShapeRef.new(shape: FailureBehavior, location_name: "failureBehavior"))
    CreateSimulationJobResponse.add_member(:failure_code, Shapes::ShapeRef.new(shape: SimulationJobErrorCode, location_name: "failureCode"))
    CreateSimulationJobResponse.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "clientRequestToken"))
    CreateSimulationJobResponse.add_member(:output_location, Shapes::ShapeRef.new(shape: OutputLocation, location_name: "outputLocation"))
    CreateSimulationJobResponse.add_member(:logging_config, Shapes::ShapeRef.new(shape: LoggingConfig, location_name: "loggingConfig"))
    CreateSimulationJobResponse.add_member(:max_job_duration_in_seconds, Shapes::ShapeRef.new(shape: JobDuration, location_name: "maxJobDurationInSeconds"))
    CreateSimulationJobResponse.add_member(:simulation_time_millis, Shapes::ShapeRef.new(shape: SimulationTimeMillis, location_name: "simulationTimeMillis"))
    CreateSimulationJobResponse.add_member(:iam_role, Shapes::ShapeRef.new(shape: IamRole, location_name: "iamRole"))
    CreateSimulationJobResponse.add_member(:robot_applications, Shapes::ShapeRef.new(shape: RobotApplicationConfigs, location_name: "robotApplications"))
    CreateSimulationJobResponse.add_member(:simulation_applications, Shapes::ShapeRef.new(shape: SimulationApplicationConfigs, location_name: "simulationApplications"))
    CreateSimulationJobResponse.add_member(:data_sources, Shapes::ShapeRef.new(shape: DataSources, location_name: "dataSources"))
    CreateSimulationJobResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateSimulationJobResponse.add_member(:vpc_config, Shapes::ShapeRef.new(shape: VPCConfigResponse, location_name: "vpcConfig"))
    CreateSimulationJobResponse.struct_class = Types::CreateSimulationJobResponse

    DataSource.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "name"))
    DataSource.add_member(:s3_bucket, Shapes::ShapeRef.new(shape: S3Bucket, location_name: "s3Bucket"))
    DataSource.add_member(:s3_keys, Shapes::ShapeRef.new(shape: S3KeyOutputs, location_name: "s3Keys"))
    DataSource.struct_class = Types::DataSource

    DataSourceConfig.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    DataSourceConfig.add_member(:s3_bucket, Shapes::ShapeRef.new(shape: S3Bucket, required: true, location_name: "s3Bucket"))
    DataSourceConfig.add_member(:s3_keys, Shapes::ShapeRef.new(shape: S3Keys, required: true, location_name: "s3Keys"))
    DataSourceConfig.struct_class = Types::DataSourceConfig

    DataSourceConfigs.member = Shapes::ShapeRef.new(shape: DataSourceConfig)

    DataSourceNames.member = Shapes::ShapeRef.new(shape: Name)

    DataSources.member = Shapes::ShapeRef.new(shape: DataSource)

    DeleteFleetRequest.add_member(:fleet, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "fleet"))
    DeleteFleetRequest.struct_class = Types::DeleteFleetRequest

    DeleteFleetResponse.struct_class = Types::DeleteFleetResponse

    DeleteRobotApplicationRequest.add_member(:application, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "application"))
    DeleteRobotApplicationRequest.add_member(:application_version, Shapes::ShapeRef.new(shape: Version, location_name: "applicationVersion"))
    DeleteRobotApplicationRequest.struct_class = Types::DeleteRobotApplicationRequest

    DeleteRobotApplicationResponse.struct_class = Types::DeleteRobotApplicationResponse

    DeleteRobotRequest.add_member(:robot, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "robot"))
    DeleteRobotRequest.struct_class = Types::DeleteRobotRequest

    DeleteRobotResponse.struct_class = Types::DeleteRobotResponse

    DeleteSimulationApplicationRequest.add_member(:application, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "application"))
    DeleteSimulationApplicationRequest.add_member(:application_version, Shapes::ShapeRef.new(shape: Version, location_name: "applicationVersion"))
    DeleteSimulationApplicationRequest.struct_class = Types::DeleteSimulationApplicationRequest

    DeleteSimulationApplicationResponse.struct_class = Types::DeleteSimulationApplicationResponse

    DeploymentApplicationConfig.add_member(:application, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "application"))
    DeploymentApplicationConfig.add_member(:application_version, Shapes::ShapeRef.new(shape: DeploymentVersion, required: true, location_name: "applicationVersion"))
    DeploymentApplicationConfig.add_member(:launch_config, Shapes::ShapeRef.new(shape: DeploymentLaunchConfig, required: true, location_name: "launchConfig"))
    DeploymentApplicationConfig.struct_class = Types::DeploymentApplicationConfig

    DeploymentApplicationConfigs.member = Shapes::ShapeRef.new(shape: DeploymentApplicationConfig)

    DeploymentConfig.add_member(:concurrent_deployment_percentage, Shapes::ShapeRef.new(shape: Percentage, location_name: "concurrentDeploymentPercentage"))
    DeploymentConfig.add_member(:failure_threshold_percentage, Shapes::ShapeRef.new(shape: Percentage, location_name: "failureThresholdPercentage"))
    DeploymentConfig.add_member(:robot_deployment_timeout_in_seconds, Shapes::ShapeRef.new(shape: DeploymentTimeout, location_name: "robotDeploymentTimeoutInSeconds"))
    DeploymentConfig.add_member(:download_condition_file, Shapes::ShapeRef.new(shape: S3Object, location_name: "downloadConditionFile"))
    DeploymentConfig.struct_class = Types::DeploymentConfig

    DeploymentJob.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "arn"))
    DeploymentJob.add_member(:fleet, Shapes::ShapeRef.new(shape: Arn, location_name: "fleet"))
    DeploymentJob.add_member(:status, Shapes::ShapeRef.new(shape: DeploymentStatus, location_name: "status"))
    DeploymentJob.add_member(:deployment_application_configs, Shapes::ShapeRef.new(shape: DeploymentApplicationConfigs, location_name: "deploymentApplicationConfigs"))
    DeploymentJob.add_member(:deployment_config, Shapes::ShapeRef.new(shape: DeploymentConfig, location_name: "deploymentConfig"))
    DeploymentJob.add_member(:failure_reason, Shapes::ShapeRef.new(shape: GenericString, location_name: "failureReason"))
    DeploymentJob.add_member(:failure_code, Shapes::ShapeRef.new(shape: DeploymentJobErrorCode, location_name: "failureCode"))
    DeploymentJob.add_member(:created_at, Shapes::ShapeRef.new(shape: CreatedAt, location_name: "createdAt"))
    DeploymentJob.struct_class = Types::DeploymentJob

    DeploymentJobs.member = Shapes::ShapeRef.new(shape: DeploymentJob)

    DeploymentLaunchConfig.add_member(:package_name, Shapes::ShapeRef.new(shape: Command, required: true, location_name: "packageName"))
    DeploymentLaunchConfig.add_member(:pre_launch_file, Shapes::ShapeRef.new(shape: Path, location_name: "preLaunchFile"))
    DeploymentLaunchConfig.add_member(:launch_file, Shapes::ShapeRef.new(shape: Command, required: true, location_name: "launchFile"))
    DeploymentLaunchConfig.add_member(:post_launch_file, Shapes::ShapeRef.new(shape: Path, location_name: "postLaunchFile"))
    DeploymentLaunchConfig.add_member(:environment_variables, Shapes::ShapeRef.new(shape: EnvironmentVariableMap, location_name: "environmentVariables"))
    DeploymentLaunchConfig.struct_class = Types::DeploymentLaunchConfig

    DeregisterRobotRequest.add_member(:fleet, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "fleet"))
    DeregisterRobotRequest.add_member(:robot, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "robot"))
    DeregisterRobotRequest.struct_class = Types::DeregisterRobotRequest

    DeregisterRobotResponse.add_member(:fleet, Shapes::ShapeRef.new(shape: Arn, location_name: "fleet"))
    DeregisterRobotResponse.add_member(:robot, Shapes::ShapeRef.new(shape: Arn, location_name: "robot"))
    DeregisterRobotResponse.struct_class = Types::DeregisterRobotResponse

    DescribeDeploymentJobRequest.add_member(:job, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "job"))
    DescribeDeploymentJobRequest.struct_class = Types::DescribeDeploymentJobRequest

    DescribeDeploymentJobResponse.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "arn"))
    DescribeDeploymentJobResponse.add_member(:fleet, Shapes::ShapeRef.new(shape: Arn, location_name: "fleet"))
    DescribeDeploymentJobResponse.add_member(:status, Shapes::ShapeRef.new(shape: DeploymentStatus, location_name: "status"))
    DescribeDeploymentJobResponse.add_member(:deployment_config, Shapes::ShapeRef.new(shape: DeploymentConfig, location_name: "deploymentConfig"))
    DescribeDeploymentJobResponse.add_member(:deployment_application_configs, Shapes::ShapeRef.new(shape: DeploymentApplicationConfigs, location_name: "deploymentApplicationConfigs"))
    DescribeDeploymentJobResponse.add_member(:failure_reason, Shapes::ShapeRef.new(shape: GenericString, location_name: "failureReason"))
    DescribeDeploymentJobResponse.add_member(:failure_code, Shapes::ShapeRef.new(shape: DeploymentJobErrorCode, location_name: "failureCode"))
    DescribeDeploymentJobResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: CreatedAt, location_name: "createdAt"))
    DescribeDeploymentJobResponse.add_member(:robot_deployment_summary, Shapes::ShapeRef.new(shape: RobotDeploymentSummary, location_name: "robotDeploymentSummary"))
    DescribeDeploymentJobResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    DescribeDeploymentJobResponse.struct_class = Types::DescribeDeploymentJobResponse

    DescribeFleetRequest.add_member(:fleet, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "fleet"))
    DescribeFleetRequest.struct_class = Types::DescribeFleetRequest

    DescribeFleetResponse.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "name"))
    DescribeFleetResponse.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "arn"))
    DescribeFleetResponse.add_member(:robots, Shapes::ShapeRef.new(shape: Robots, location_name: "robots"))
    DescribeFleetResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: CreatedAt, location_name: "createdAt"))
    DescribeFleetResponse.add_member(:last_deployment_status, Shapes::ShapeRef.new(shape: DeploymentStatus, location_name: "lastDeploymentStatus"))
    DescribeFleetResponse.add_member(:last_deployment_job, Shapes::ShapeRef.new(shape: Arn, location_name: "lastDeploymentJob"))
    DescribeFleetResponse.add_member(:last_deployment_time, Shapes::ShapeRef.new(shape: CreatedAt, location_name: "lastDeploymentTime"))
    DescribeFleetResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    DescribeFleetResponse.struct_class = Types::DescribeFleetResponse

    DescribeRobotApplicationRequest.add_member(:application, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "application"))
    DescribeRobotApplicationRequest.add_member(:application_version, Shapes::ShapeRef.new(shape: Version, location_name: "applicationVersion"))
    DescribeRobotApplicationRequest.struct_class = Types::DescribeRobotApplicationRequest

    DescribeRobotApplicationResponse.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "arn"))
    DescribeRobotApplicationResponse.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "name"))
    DescribeRobotApplicationResponse.add_member(:version, Shapes::ShapeRef.new(shape: Version, location_name: "version"))
    DescribeRobotApplicationResponse.add_member(:sources, Shapes::ShapeRef.new(shape: Sources, location_name: "sources"))
    DescribeRobotApplicationResponse.add_member(:robot_software_suite, Shapes::ShapeRef.new(shape: RobotSoftwareSuite, location_name: "robotSoftwareSuite"))
    DescribeRobotApplicationResponse.add_member(:revision_id, Shapes::ShapeRef.new(shape: RevisionId, location_name: "revisionId"))
    DescribeRobotApplicationResponse.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: LastUpdatedAt, location_name: "lastUpdatedAt"))
    DescribeRobotApplicationResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    DescribeRobotApplicationResponse.struct_class = Types::DescribeRobotApplicationResponse

    DescribeRobotRequest.add_member(:robot, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "robot"))
    DescribeRobotRequest.struct_class = Types::DescribeRobotRequest

    DescribeRobotResponse.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "arn"))
    DescribeRobotResponse.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "name"))
    DescribeRobotResponse.add_member(:fleet_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "fleetArn"))
    DescribeRobotResponse.add_member(:status, Shapes::ShapeRef.new(shape: RobotStatus, location_name: "status"))
    DescribeRobotResponse.add_member(:greengrass_group_id, Shapes::ShapeRef.new(shape: Id, location_name: "greengrassGroupId"))
    DescribeRobotResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: CreatedAt, location_name: "createdAt"))
    DescribeRobotResponse.add_member(:architecture, Shapes::ShapeRef.new(shape: Architecture, location_name: "architecture"))
    DescribeRobotResponse.add_member(:last_deployment_job, Shapes::ShapeRef.new(shape: Arn, location_name: "lastDeploymentJob"))
    DescribeRobotResponse.add_member(:last_deployment_time, Shapes::ShapeRef.new(shape: CreatedAt, location_name: "lastDeploymentTime"))
    DescribeRobotResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    DescribeRobotResponse.struct_class = Types::DescribeRobotResponse

    DescribeSimulationApplicationRequest.add_member(:application, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "application"))
    DescribeSimulationApplicationRequest.add_member(:application_version, Shapes::ShapeRef.new(shape: Version, location_name: "applicationVersion"))
    DescribeSimulationApplicationRequest.struct_class = Types::DescribeSimulationApplicationRequest

    DescribeSimulationApplicationResponse.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "arn"))
    DescribeSimulationApplicationResponse.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "name"))
    DescribeSimulationApplicationResponse.add_member(:version, Shapes::ShapeRef.new(shape: Version, location_name: "version"))
    DescribeSimulationApplicationResponse.add_member(:sources, Shapes::ShapeRef.new(shape: Sources, location_name: "sources"))
    DescribeSimulationApplicationResponse.add_member(:simulation_software_suite, Shapes::ShapeRef.new(shape: SimulationSoftwareSuite, location_name: "simulationSoftwareSuite"))
    DescribeSimulationApplicationResponse.add_member(:robot_software_suite, Shapes::ShapeRef.new(shape: RobotSoftwareSuite, location_name: "robotSoftwareSuite"))
    DescribeSimulationApplicationResponse.add_member(:rendering_engine, Shapes::ShapeRef.new(shape: RenderingEngine, location_name: "renderingEngine"))
    DescribeSimulationApplicationResponse.add_member(:revision_id, Shapes::ShapeRef.new(shape: RevisionId, location_name: "revisionId"))
    DescribeSimulationApplicationResponse.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: LastUpdatedAt, location_name: "lastUpdatedAt"))
    DescribeSimulationApplicationResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    DescribeSimulationApplicationResponse.struct_class = Types::DescribeSimulationApplicationResponse

    DescribeSimulationJobBatchRequest.add_member(:batch, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "batch"))
    DescribeSimulationJobBatchRequest.struct_class = Types::DescribeSimulationJobBatchRequest

    DescribeSimulationJobBatchResponse.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "arn"))
    DescribeSimulationJobBatchResponse.add_member(:status, Shapes::ShapeRef.new(shape: SimulationJobBatchStatus, location_name: "status"))
    DescribeSimulationJobBatchResponse.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: LastUpdatedAt, location_name: "lastUpdatedAt"))
    DescribeSimulationJobBatchResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: CreatedAt, location_name: "createdAt"))
    DescribeSimulationJobBatchResponse.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "clientRequestToken"))
    DescribeSimulationJobBatchResponse.add_member(:batch_policy, Shapes::ShapeRef.new(shape: BatchPolicy, location_name: "batchPolicy"))
    DescribeSimulationJobBatchResponse.add_member(:failure_code, Shapes::ShapeRef.new(shape: SimulationJobBatchErrorCode, location_name: "failureCode"))
    DescribeSimulationJobBatchResponse.add_member(:failure_reason, Shapes::ShapeRef.new(shape: GenericString, location_name: "failureReason"))
    DescribeSimulationJobBatchResponse.add_member(:failed_requests, Shapes::ShapeRef.new(shape: FailedCreateSimulationJobRequests, location_name: "failedRequests"))
    DescribeSimulationJobBatchResponse.add_member(:pending_requests, Shapes::ShapeRef.new(shape: CreateSimulationJobRequests, location_name: "pendingRequests"))
    DescribeSimulationJobBatchResponse.add_member(:created_requests, Shapes::ShapeRef.new(shape: SimulationJobSummaries, location_name: "createdRequests"))
    DescribeSimulationJobBatchResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    DescribeSimulationJobBatchResponse.struct_class = Types::DescribeSimulationJobBatchResponse

    DescribeSimulationJobRequest.add_member(:job, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "job"))
    DescribeSimulationJobRequest.struct_class = Types::DescribeSimulationJobRequest

    DescribeSimulationJobResponse.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "arn"))
    DescribeSimulationJobResponse.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "name"))
    DescribeSimulationJobResponse.add_member(:status, Shapes::ShapeRef.new(shape: SimulationJobStatus, location_name: "status"))
    DescribeSimulationJobResponse.add_member(:last_started_at, Shapes::ShapeRef.new(shape: LastStartedAt, location_name: "lastStartedAt"))
    DescribeSimulationJobResponse.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: LastUpdatedAt, location_name: "lastUpdatedAt"))
    DescribeSimulationJobResponse.add_member(:failure_behavior, Shapes::ShapeRef.new(shape: FailureBehavior, location_name: "failureBehavior"))
    DescribeSimulationJobResponse.add_member(:failure_code, Shapes::ShapeRef.new(shape: SimulationJobErrorCode, location_name: "failureCode"))
    DescribeSimulationJobResponse.add_member(:failure_reason, Shapes::ShapeRef.new(shape: GenericString, location_name: "failureReason"))
    DescribeSimulationJobResponse.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "clientRequestToken"))
    DescribeSimulationJobResponse.add_member(:output_location, Shapes::ShapeRef.new(shape: OutputLocation, location_name: "outputLocation"))
    DescribeSimulationJobResponse.add_member(:logging_config, Shapes::ShapeRef.new(shape: LoggingConfig, location_name: "loggingConfig"))
    DescribeSimulationJobResponse.add_member(:max_job_duration_in_seconds, Shapes::ShapeRef.new(shape: JobDuration, location_name: "maxJobDurationInSeconds"))
    DescribeSimulationJobResponse.add_member(:simulation_time_millis, Shapes::ShapeRef.new(shape: SimulationTimeMillis, location_name: "simulationTimeMillis"))
    DescribeSimulationJobResponse.add_member(:iam_role, Shapes::ShapeRef.new(shape: IamRole, location_name: "iamRole"))
    DescribeSimulationJobResponse.add_member(:robot_applications, Shapes::ShapeRef.new(shape: RobotApplicationConfigs, location_name: "robotApplications"))
    DescribeSimulationJobResponse.add_member(:simulation_applications, Shapes::ShapeRef.new(shape: SimulationApplicationConfigs, location_name: "simulationApplications"))
    DescribeSimulationJobResponse.add_member(:data_sources, Shapes::ShapeRef.new(shape: DataSources, location_name: "dataSources"))
    DescribeSimulationJobResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    DescribeSimulationJobResponse.add_member(:vpc_config, Shapes::ShapeRef.new(shape: VPCConfigResponse, location_name: "vpcConfig"))
    DescribeSimulationJobResponse.add_member(:network_interface, Shapes::ShapeRef.new(shape: NetworkInterface, location_name: "networkInterface"))
    DescribeSimulationJobResponse.struct_class = Types::DescribeSimulationJobResponse

    EnvironmentVariableMap.key = Shapes::ShapeRef.new(shape: EnvironmentVariableKey)
    EnvironmentVariableMap.value = Shapes::ShapeRef.new(shape: EnvironmentVariableValue)

    FailedCreateSimulationJobRequest.add_member(:request, Shapes::ShapeRef.new(shape: SimulationJobRequest, location_name: "request"))
    FailedCreateSimulationJobRequest.add_member(:failure_reason, Shapes::ShapeRef.new(shape: GenericString, location_name: "failureReason"))
    FailedCreateSimulationJobRequest.add_member(:failure_code, Shapes::ShapeRef.new(shape: SimulationJobErrorCode, location_name: "failureCode"))
    FailedCreateSimulationJobRequest.add_member(:failed_at, Shapes::ShapeRef.new(shape: FailedAt, location_name: "failedAt"))
    FailedCreateSimulationJobRequest.struct_class = Types::FailedCreateSimulationJobRequest

    FailedCreateSimulationJobRequests.member = Shapes::ShapeRef.new(shape: FailedCreateSimulationJobRequest)

    Filter.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "name"))
    Filter.add_member(:values, Shapes::ShapeRef.new(shape: FilterValues, location_name: "values"))
    Filter.struct_class = Types::Filter

    FilterValues.member = Shapes::ShapeRef.new(shape: Name)

    Filters.member = Shapes::ShapeRef.new(shape: Filter)

    Fleet.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "name"))
    Fleet.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "arn"))
    Fleet.add_member(:created_at, Shapes::ShapeRef.new(shape: CreatedAt, location_name: "createdAt"))
    Fleet.add_member(:last_deployment_status, Shapes::ShapeRef.new(shape: DeploymentStatus, location_name: "lastDeploymentStatus"))
    Fleet.add_member(:last_deployment_job, Shapes::ShapeRef.new(shape: Arn, location_name: "lastDeploymentJob"))
    Fleet.add_member(:last_deployment_time, Shapes::ShapeRef.new(shape: CreatedAt, location_name: "lastDeploymentTime"))
    Fleet.struct_class = Types::Fleet

    Fleets.member = Shapes::ShapeRef.new(shape: Fleet)

    IdempotentParameterMismatchException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "message"))
    IdempotentParameterMismatchException.struct_class = Types::IdempotentParameterMismatchException

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    InvalidParameterException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "message"))
    InvalidParameterException.struct_class = Types::InvalidParameterException

    LaunchConfig.add_member(:package_name, Shapes::ShapeRef.new(shape: Command, required: true, location_name: "packageName"))
    LaunchConfig.add_member(:launch_file, Shapes::ShapeRef.new(shape: Command, required: true, location_name: "launchFile"))
    LaunchConfig.add_member(:environment_variables, Shapes::ShapeRef.new(shape: EnvironmentVariableMap, location_name: "environmentVariables"))
    LaunchConfig.add_member(:port_forwarding_config, Shapes::ShapeRef.new(shape: PortForwardingConfig, location_name: "portForwardingConfig"))
    LaunchConfig.struct_class = Types::LaunchConfig

    LimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "message"))
    LimitExceededException.struct_class = Types::LimitExceededException

    ListDeploymentJobsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: Filters, location_name: "filters"))
    ListDeploymentJobsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListDeploymentJobsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListDeploymentJobsRequest.struct_class = Types::ListDeploymentJobsRequest

    ListDeploymentJobsResponse.add_member(:deployment_jobs, Shapes::ShapeRef.new(shape: DeploymentJobs, location_name: "deploymentJobs"))
    ListDeploymentJobsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListDeploymentJobsResponse.struct_class = Types::ListDeploymentJobsResponse

    ListFleetsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListFleetsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListFleetsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: Filters, location_name: "filters"))
    ListFleetsRequest.struct_class = Types::ListFleetsRequest

    ListFleetsResponse.add_member(:fleet_details, Shapes::ShapeRef.new(shape: Fleets, location_name: "fleetDetails"))
    ListFleetsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListFleetsResponse.struct_class = Types::ListFleetsResponse

    ListRobotApplicationsRequest.add_member(:version_qualifier, Shapes::ShapeRef.new(shape: VersionQualifier, location_name: "versionQualifier"))
    ListRobotApplicationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListRobotApplicationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListRobotApplicationsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: Filters, location_name: "filters"))
    ListRobotApplicationsRequest.struct_class = Types::ListRobotApplicationsRequest

    ListRobotApplicationsResponse.add_member(:robot_application_summaries, Shapes::ShapeRef.new(shape: RobotApplicationSummaries, location_name: "robotApplicationSummaries"))
    ListRobotApplicationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListRobotApplicationsResponse.struct_class = Types::ListRobotApplicationsResponse

    ListRobotsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListRobotsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListRobotsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: Filters, location_name: "filters"))
    ListRobotsRequest.struct_class = Types::ListRobotsRequest

    ListRobotsResponse.add_member(:robots, Shapes::ShapeRef.new(shape: Robots, location_name: "robots"))
    ListRobotsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListRobotsResponse.struct_class = Types::ListRobotsResponse

    ListSimulationApplicationsRequest.add_member(:version_qualifier, Shapes::ShapeRef.new(shape: VersionQualifier, location_name: "versionQualifier"))
    ListSimulationApplicationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListSimulationApplicationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListSimulationApplicationsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: Filters, location_name: "filters"))
    ListSimulationApplicationsRequest.struct_class = Types::ListSimulationApplicationsRequest

    ListSimulationApplicationsResponse.add_member(:simulation_application_summaries, Shapes::ShapeRef.new(shape: SimulationApplicationSummaries, location_name: "simulationApplicationSummaries"))
    ListSimulationApplicationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListSimulationApplicationsResponse.struct_class = Types::ListSimulationApplicationsResponse

    ListSimulationJobBatchesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListSimulationJobBatchesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListSimulationJobBatchesRequest.add_member(:filters, Shapes::ShapeRef.new(shape: Filters, location_name: "filters"))
    ListSimulationJobBatchesRequest.struct_class = Types::ListSimulationJobBatchesRequest

    ListSimulationJobBatchesResponse.add_member(:simulation_job_batch_summaries, Shapes::ShapeRef.new(shape: SimulationJobBatchSummaries, location_name: "simulationJobBatchSummaries"))
    ListSimulationJobBatchesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListSimulationJobBatchesResponse.struct_class = Types::ListSimulationJobBatchesResponse

    ListSimulationJobsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListSimulationJobsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListSimulationJobsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: Filters, location_name: "filters"))
    ListSimulationJobsRequest.struct_class = Types::ListSimulationJobsRequest

    ListSimulationJobsResponse.add_member(:simulation_job_summaries, Shapes::ShapeRef.new(shape: SimulationJobSummaries, required: true, location_name: "simulationJobSummaries"))
    ListSimulationJobsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListSimulationJobsResponse.struct_class = Types::ListSimulationJobsResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    LoggingConfig.add_member(:record_all_ros_topics, Shapes::ShapeRef.new(shape: BoxedBoolean, required: true, location_name: "recordAllRosTopics"))
    LoggingConfig.struct_class = Types::LoggingConfig

    NetworkInterface.add_member(:network_interface_id, Shapes::ShapeRef.new(shape: GenericString, location_name: "networkInterfaceId"))
    NetworkInterface.add_member(:private_ip_address, Shapes::ShapeRef.new(shape: GenericString, location_name: "privateIpAddress"))
    NetworkInterface.add_member(:public_ip_address, Shapes::ShapeRef.new(shape: GenericString, location_name: "publicIpAddress"))
    NetworkInterface.struct_class = Types::NetworkInterface

    OutputLocation.add_member(:s3_bucket, Shapes::ShapeRef.new(shape: S3Bucket, location_name: "s3Bucket"))
    OutputLocation.add_member(:s3_prefix, Shapes::ShapeRef.new(shape: S3Key, location_name: "s3Prefix"))
    OutputLocation.struct_class = Types::OutputLocation

    PortForwardingConfig.add_member(:port_mappings, Shapes::ShapeRef.new(shape: PortMappingList, location_name: "portMappings"))
    PortForwardingConfig.struct_class = Types::PortForwardingConfig

    PortMapping.add_member(:job_port, Shapes::ShapeRef.new(shape: Port, required: true, location_name: "jobPort"))
    PortMapping.add_member(:application_port, Shapes::ShapeRef.new(shape: NonSystemPort, required: true, location_name: "applicationPort"))
    PortMapping.add_member(:enable_on_public_ip, Shapes::ShapeRef.new(shape: Boolean, location_name: "enableOnPublicIp"))
    PortMapping.struct_class = Types::PortMapping

    PortMappingList.member = Shapes::ShapeRef.new(shape: PortMapping)

    ProgressDetail.add_member(:current_progress, Shapes::ShapeRef.new(shape: RobotDeploymentStep, location_name: "currentProgress"))
    ProgressDetail.add_member(:percent_done, Shapes::ShapeRef.new(shape: PercentDone, location_name: "percentDone"))
    ProgressDetail.add_member(:estimated_time_remaining_seconds, Shapes::ShapeRef.new(shape: GenericInteger, location_name: "estimatedTimeRemainingSeconds"))
    ProgressDetail.add_member(:target_resource, Shapes::ShapeRef.new(shape: GenericString, location_name: "targetResource"))
    ProgressDetail.struct_class = Types::ProgressDetail

    RegisterRobotRequest.add_member(:fleet, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "fleet"))
    RegisterRobotRequest.add_member(:robot, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "robot"))
    RegisterRobotRequest.struct_class = Types::RegisterRobotRequest

    RegisterRobotResponse.add_member(:fleet, Shapes::ShapeRef.new(shape: Arn, location_name: "fleet"))
    RegisterRobotResponse.add_member(:robot, Shapes::ShapeRef.new(shape: Arn, location_name: "robot"))
    RegisterRobotResponse.struct_class = Types::RegisterRobotResponse

    RenderingEngine.add_member(:name, Shapes::ShapeRef.new(shape: RenderingEngineType, location_name: "name"))
    RenderingEngine.add_member(:version, Shapes::ShapeRef.new(shape: RenderingEngineVersionType, location_name: "version"))
    RenderingEngine.struct_class = Types::RenderingEngine

    ResourceAlreadyExistsException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "message"))
    ResourceAlreadyExistsException.struct_class = Types::ResourceAlreadyExistsException

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    RestartSimulationJobRequest.add_member(:job, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "job"))
    RestartSimulationJobRequest.struct_class = Types::RestartSimulationJobRequest

    RestartSimulationJobResponse.struct_class = Types::RestartSimulationJobResponse

    Robot.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "arn"))
    Robot.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "name"))
    Robot.add_member(:fleet_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "fleetArn"))
    Robot.add_member(:status, Shapes::ShapeRef.new(shape: RobotStatus, location_name: "status"))
    Robot.add_member(:green_grass_group_id, Shapes::ShapeRef.new(shape: Id, location_name: "greenGrassGroupId"))
    Robot.add_member(:created_at, Shapes::ShapeRef.new(shape: CreatedAt, location_name: "createdAt"))
    Robot.add_member(:architecture, Shapes::ShapeRef.new(shape: Architecture, location_name: "architecture"))
    Robot.add_member(:last_deployment_job, Shapes::ShapeRef.new(shape: Arn, location_name: "lastDeploymentJob"))
    Robot.add_member(:last_deployment_time, Shapes::ShapeRef.new(shape: CreatedAt, location_name: "lastDeploymentTime"))
    Robot.struct_class = Types::Robot

    RobotApplicationConfig.add_member(:application, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "application"))
    RobotApplicationConfig.add_member(:application_version, Shapes::ShapeRef.new(shape: Version, location_name: "applicationVersion"))
    RobotApplicationConfig.add_member(:launch_config, Shapes::ShapeRef.new(shape: LaunchConfig, required: true, location_name: "launchConfig"))
    RobotApplicationConfig.struct_class = Types::RobotApplicationConfig

    RobotApplicationConfigs.member = Shapes::ShapeRef.new(shape: RobotApplicationConfig)

    RobotApplicationNames.member = Shapes::ShapeRef.new(shape: Name)

    RobotApplicationSummaries.member = Shapes::ShapeRef.new(shape: RobotApplicationSummary)

    RobotApplicationSummary.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "name"))
    RobotApplicationSummary.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "arn"))
    RobotApplicationSummary.add_member(:version, Shapes::ShapeRef.new(shape: Version, location_name: "version"))
    RobotApplicationSummary.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: LastUpdatedAt, location_name: "lastUpdatedAt"))
    RobotApplicationSummary.add_member(:robot_software_suite, Shapes::ShapeRef.new(shape: RobotSoftwareSuite, location_name: "robotSoftwareSuite"))
    RobotApplicationSummary.struct_class = Types::RobotApplicationSummary

    RobotDeployment.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "arn"))
    RobotDeployment.add_member(:deployment_start_time, Shapes::ShapeRef.new(shape: CreatedAt, location_name: "deploymentStartTime"))
    RobotDeployment.add_member(:deployment_finish_time, Shapes::ShapeRef.new(shape: CreatedAt, location_name: "deploymentFinishTime"))
    RobotDeployment.add_member(:status, Shapes::ShapeRef.new(shape: RobotStatus, location_name: "status"))
    RobotDeployment.add_member(:progress_detail, Shapes::ShapeRef.new(shape: ProgressDetail, location_name: "progressDetail"))
    RobotDeployment.add_member(:failure_reason, Shapes::ShapeRef.new(shape: GenericString, location_name: "failureReason"))
    RobotDeployment.add_member(:failure_code, Shapes::ShapeRef.new(shape: DeploymentJobErrorCode, location_name: "failureCode"))
    RobotDeployment.struct_class = Types::RobotDeployment

    RobotDeploymentSummary.member = Shapes::ShapeRef.new(shape: RobotDeployment)

    RobotSoftwareSuite.add_member(:name, Shapes::ShapeRef.new(shape: RobotSoftwareSuiteType, location_name: "name"))
    RobotSoftwareSuite.add_member(:version, Shapes::ShapeRef.new(shape: RobotSoftwareSuiteVersionType, location_name: "version"))
    RobotSoftwareSuite.struct_class = Types::RobotSoftwareSuite

    Robots.member = Shapes::ShapeRef.new(shape: Robot)

    S3KeyOutput.add_member(:s3_key, Shapes::ShapeRef.new(shape: S3Key, location_name: "s3Key"))
    S3KeyOutput.add_member(:etag, Shapes::ShapeRef.new(shape: S3Etag, location_name: "etag"))
    S3KeyOutput.struct_class = Types::S3KeyOutput

    S3KeyOutputs.member = Shapes::ShapeRef.new(shape: S3KeyOutput)

    S3Keys.member = Shapes::ShapeRef.new(shape: S3Key)

    S3Object.add_member(:bucket, Shapes::ShapeRef.new(shape: S3Bucket, required: true, location_name: "bucket"))
    S3Object.add_member(:key, Shapes::ShapeRef.new(shape: S3Key, required: true, location_name: "key"))
    S3Object.add_member(:etag, Shapes::ShapeRef.new(shape: S3Etag, location_name: "etag"))
    S3Object.struct_class = Types::S3Object

    SecurityGroups.member = Shapes::ShapeRef.new(shape: NonEmptyString)

    ServiceUnavailableException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "message"))
    ServiceUnavailableException.struct_class = Types::ServiceUnavailableException

    SimulationApplicationConfig.add_member(:application, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "application"))
    SimulationApplicationConfig.add_member(:application_version, Shapes::ShapeRef.new(shape: Version, location_name: "applicationVersion"))
    SimulationApplicationConfig.add_member(:launch_config, Shapes::ShapeRef.new(shape: LaunchConfig, required: true, location_name: "launchConfig"))
    SimulationApplicationConfig.struct_class = Types::SimulationApplicationConfig

    SimulationApplicationConfigs.member = Shapes::ShapeRef.new(shape: SimulationApplicationConfig)

    SimulationApplicationNames.member = Shapes::ShapeRef.new(shape: Name)

    SimulationApplicationSummaries.member = Shapes::ShapeRef.new(shape: SimulationApplicationSummary)

    SimulationApplicationSummary.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "name"))
    SimulationApplicationSummary.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "arn"))
    SimulationApplicationSummary.add_member(:version, Shapes::ShapeRef.new(shape: Version, location_name: "version"))
    SimulationApplicationSummary.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: LastUpdatedAt, location_name: "lastUpdatedAt"))
    SimulationApplicationSummary.add_member(:robot_software_suite, Shapes::ShapeRef.new(shape: RobotSoftwareSuite, location_name: "robotSoftwareSuite"))
    SimulationApplicationSummary.add_member(:simulation_software_suite, Shapes::ShapeRef.new(shape: SimulationSoftwareSuite, location_name: "simulationSoftwareSuite"))
    SimulationApplicationSummary.struct_class = Types::SimulationApplicationSummary

    SimulationJob.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "arn"))
    SimulationJob.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "name"))
    SimulationJob.add_member(:status, Shapes::ShapeRef.new(shape: SimulationJobStatus, location_name: "status"))
    SimulationJob.add_member(:last_started_at, Shapes::ShapeRef.new(shape: LastStartedAt, location_name: "lastStartedAt"))
    SimulationJob.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: LastUpdatedAt, location_name: "lastUpdatedAt"))
    SimulationJob.add_member(:failure_behavior, Shapes::ShapeRef.new(shape: FailureBehavior, location_name: "failureBehavior"))
    SimulationJob.add_member(:failure_code, Shapes::ShapeRef.new(shape: SimulationJobErrorCode, location_name: "failureCode"))
    SimulationJob.add_member(:failure_reason, Shapes::ShapeRef.new(shape: GenericString, location_name: "failureReason"))
    SimulationJob.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "clientRequestToken"))
    SimulationJob.add_member(:output_location, Shapes::ShapeRef.new(shape: OutputLocation, location_name: "outputLocation"))
    SimulationJob.add_member(:logging_config, Shapes::ShapeRef.new(shape: LoggingConfig, location_name: "loggingConfig"))
    SimulationJob.add_member(:max_job_duration_in_seconds, Shapes::ShapeRef.new(shape: JobDuration, location_name: "maxJobDurationInSeconds"))
    SimulationJob.add_member(:simulation_time_millis, Shapes::ShapeRef.new(shape: SimulationTimeMillis, location_name: "simulationTimeMillis"))
    SimulationJob.add_member(:iam_role, Shapes::ShapeRef.new(shape: IamRole, location_name: "iamRole"))
    SimulationJob.add_member(:robot_applications, Shapes::ShapeRef.new(shape: RobotApplicationConfigs, location_name: "robotApplications"))
    SimulationJob.add_member(:simulation_applications, Shapes::ShapeRef.new(shape: SimulationApplicationConfigs, location_name: "simulationApplications"))
    SimulationJob.add_member(:data_sources, Shapes::ShapeRef.new(shape: DataSources, location_name: "dataSources"))
    SimulationJob.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    SimulationJob.add_member(:vpc_config, Shapes::ShapeRef.new(shape: VPCConfigResponse, location_name: "vpcConfig"))
    SimulationJob.add_member(:network_interface, Shapes::ShapeRef.new(shape: NetworkInterface, location_name: "networkInterface"))
    SimulationJob.struct_class = Types::SimulationJob

    SimulationJobBatchSummaries.member = Shapes::ShapeRef.new(shape: SimulationJobBatchSummary)

    SimulationJobBatchSummary.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "arn"))
    SimulationJobBatchSummary.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: LastUpdatedAt, location_name: "lastUpdatedAt"))
    SimulationJobBatchSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: CreatedAt, location_name: "createdAt"))
    SimulationJobBatchSummary.add_member(:status, Shapes::ShapeRef.new(shape: SimulationJobBatchStatus, location_name: "status"))
    SimulationJobBatchSummary.add_member(:failed_request_count, Shapes::ShapeRef.new(shape: Integer, location_name: "failedRequestCount"))
    SimulationJobBatchSummary.add_member(:pending_request_count, Shapes::ShapeRef.new(shape: Integer, location_name: "pendingRequestCount"))
    SimulationJobBatchSummary.add_member(:created_request_count, Shapes::ShapeRef.new(shape: Integer, location_name: "createdRequestCount"))
    SimulationJobBatchSummary.struct_class = Types::SimulationJobBatchSummary

    SimulationJobRequest.add_member(:output_location, Shapes::ShapeRef.new(shape: OutputLocation, location_name: "outputLocation"))
    SimulationJobRequest.add_member(:logging_config, Shapes::ShapeRef.new(shape: LoggingConfig, location_name: "loggingConfig"))
    SimulationJobRequest.add_member(:max_job_duration_in_seconds, Shapes::ShapeRef.new(shape: JobDuration, required: true, location_name: "maxJobDurationInSeconds"))
    SimulationJobRequest.add_member(:iam_role, Shapes::ShapeRef.new(shape: IamRole, location_name: "iamRole"))
    SimulationJobRequest.add_member(:failure_behavior, Shapes::ShapeRef.new(shape: FailureBehavior, location_name: "failureBehavior"))
    SimulationJobRequest.add_member(:use_default_applications, Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: "useDefaultApplications"))
    SimulationJobRequest.add_member(:robot_applications, Shapes::ShapeRef.new(shape: RobotApplicationConfigs, location_name: "robotApplications"))
    SimulationJobRequest.add_member(:simulation_applications, Shapes::ShapeRef.new(shape: SimulationApplicationConfigs, location_name: "simulationApplications"))
    SimulationJobRequest.add_member(:data_sources, Shapes::ShapeRef.new(shape: DataSourceConfigs, location_name: "dataSources"))
    SimulationJobRequest.add_member(:vpc_config, Shapes::ShapeRef.new(shape: VPCConfig, location_name: "vpcConfig"))
    SimulationJobRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    SimulationJobRequest.struct_class = Types::SimulationJobRequest

    SimulationJobSummaries.member = Shapes::ShapeRef.new(shape: SimulationJobSummary)

    SimulationJobSummary.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "arn"))
    SimulationJobSummary.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: LastUpdatedAt, location_name: "lastUpdatedAt"))
    SimulationJobSummary.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "name"))
    SimulationJobSummary.add_member(:status, Shapes::ShapeRef.new(shape: SimulationJobStatus, location_name: "status"))
    SimulationJobSummary.add_member(:simulation_application_names, Shapes::ShapeRef.new(shape: SimulationApplicationNames, location_name: "simulationApplicationNames"))
    SimulationJobSummary.add_member(:robot_application_names, Shapes::ShapeRef.new(shape: RobotApplicationNames, location_name: "robotApplicationNames"))
    SimulationJobSummary.add_member(:data_source_names, Shapes::ShapeRef.new(shape: DataSourceNames, location_name: "dataSourceNames"))
    SimulationJobSummary.struct_class = Types::SimulationJobSummary

    SimulationJobs.member = Shapes::ShapeRef.new(shape: SimulationJob)

    SimulationSoftwareSuite.add_member(:name, Shapes::ShapeRef.new(shape: SimulationSoftwareSuiteType, location_name: "name"))
    SimulationSoftwareSuite.add_member(:version, Shapes::ShapeRef.new(shape: SimulationSoftwareSuiteVersionType, location_name: "version"))
    SimulationSoftwareSuite.struct_class = Types::SimulationSoftwareSuite

    Source.add_member(:s3_bucket, Shapes::ShapeRef.new(shape: S3Bucket, location_name: "s3Bucket"))
    Source.add_member(:s3_key, Shapes::ShapeRef.new(shape: S3Key, location_name: "s3Key"))
    Source.add_member(:etag, Shapes::ShapeRef.new(shape: S3Etag, location_name: "etag"))
    Source.add_member(:architecture, Shapes::ShapeRef.new(shape: Architecture, location_name: "architecture"))
    Source.struct_class = Types::Source

    SourceConfig.add_member(:s3_bucket, Shapes::ShapeRef.new(shape: S3Bucket, location_name: "s3Bucket"))
    SourceConfig.add_member(:s3_key, Shapes::ShapeRef.new(shape: S3Key, location_name: "s3Key"))
    SourceConfig.add_member(:architecture, Shapes::ShapeRef.new(shape: Architecture, location_name: "architecture"))
    SourceConfig.struct_class = Types::SourceConfig

    SourceConfigs.member = Shapes::ShapeRef.new(shape: SourceConfig)

    Sources.member = Shapes::ShapeRef.new(shape: Source)

    StartSimulationJobBatchRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "clientRequestToken"))
    StartSimulationJobBatchRequest.add_member(:batch_policy, Shapes::ShapeRef.new(shape: BatchPolicy, location_name: "batchPolicy"))
    StartSimulationJobBatchRequest.add_member(:create_simulation_job_requests, Shapes::ShapeRef.new(shape: CreateSimulationJobRequests, required: true, location_name: "createSimulationJobRequests"))
    StartSimulationJobBatchRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    StartSimulationJobBatchRequest.struct_class = Types::StartSimulationJobBatchRequest

    StartSimulationJobBatchResponse.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "arn"))
    StartSimulationJobBatchResponse.add_member(:status, Shapes::ShapeRef.new(shape: SimulationJobBatchStatus, location_name: "status"))
    StartSimulationJobBatchResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: CreatedAt, location_name: "createdAt"))
    StartSimulationJobBatchResponse.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "clientRequestToken"))
    StartSimulationJobBatchResponse.add_member(:batch_policy, Shapes::ShapeRef.new(shape: BatchPolicy, location_name: "batchPolicy"))
    StartSimulationJobBatchResponse.add_member(:failure_code, Shapes::ShapeRef.new(shape: SimulationJobBatchErrorCode, location_name: "failureCode"))
    StartSimulationJobBatchResponse.add_member(:failure_reason, Shapes::ShapeRef.new(shape: GenericString, location_name: "failureReason"))
    StartSimulationJobBatchResponse.add_member(:failed_requests, Shapes::ShapeRef.new(shape: FailedCreateSimulationJobRequests, location_name: "failedRequests"))
    StartSimulationJobBatchResponse.add_member(:pending_requests, Shapes::ShapeRef.new(shape: CreateSimulationJobRequests, location_name: "pendingRequests"))
    StartSimulationJobBatchResponse.add_member(:created_requests, Shapes::ShapeRef.new(shape: SimulationJobSummaries, location_name: "createdRequests"))
    StartSimulationJobBatchResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    StartSimulationJobBatchResponse.struct_class = Types::StartSimulationJobBatchResponse

    Subnets.member = Shapes::ShapeRef.new(shape: NonEmptyString)

    SyncDeploymentJobRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, required: true, location_name: "clientRequestToken", metadata: {"idempotencyToken"=>true}))
    SyncDeploymentJobRequest.add_member(:fleet, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "fleet"))
    SyncDeploymentJobRequest.struct_class = Types::SyncDeploymentJobRequest

    SyncDeploymentJobResponse.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "arn"))
    SyncDeploymentJobResponse.add_member(:fleet, Shapes::ShapeRef.new(shape: Arn, location_name: "fleet"))
    SyncDeploymentJobResponse.add_member(:status, Shapes::ShapeRef.new(shape: DeploymentStatus, location_name: "status"))
    SyncDeploymentJobResponse.add_member(:deployment_config, Shapes::ShapeRef.new(shape: DeploymentConfig, location_name: "deploymentConfig"))
    SyncDeploymentJobResponse.add_member(:deployment_application_configs, Shapes::ShapeRef.new(shape: DeploymentApplicationConfigs, location_name: "deploymentApplicationConfigs"))
    SyncDeploymentJobResponse.add_member(:failure_reason, Shapes::ShapeRef.new(shape: GenericString, location_name: "failureReason"))
    SyncDeploymentJobResponse.add_member(:failure_code, Shapes::ShapeRef.new(shape: DeploymentJobErrorCode, location_name: "failureCode"))
    SyncDeploymentJobResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: CreatedAt, location_name: "createdAt"))
    SyncDeploymentJobResponse.struct_class = Types::SyncDeploymentJobResponse

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagMap.key = Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Shapes::ShapeRef.new(shape: TagValue)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateRobotApplicationRequest.add_member(:application, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "application"))
    UpdateRobotApplicationRequest.add_member(:sources, Shapes::ShapeRef.new(shape: SourceConfigs, required: true, location_name: "sources"))
    UpdateRobotApplicationRequest.add_member(:robot_software_suite, Shapes::ShapeRef.new(shape: RobotSoftwareSuite, required: true, location_name: "robotSoftwareSuite"))
    UpdateRobotApplicationRequest.add_member(:current_revision_id, Shapes::ShapeRef.new(shape: RevisionId, location_name: "currentRevisionId"))
    UpdateRobotApplicationRequest.struct_class = Types::UpdateRobotApplicationRequest

    UpdateRobotApplicationResponse.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "arn"))
    UpdateRobotApplicationResponse.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "name"))
    UpdateRobotApplicationResponse.add_member(:version, Shapes::ShapeRef.new(shape: Version, location_name: "version"))
    UpdateRobotApplicationResponse.add_member(:sources, Shapes::ShapeRef.new(shape: Sources, location_name: "sources"))
    UpdateRobotApplicationResponse.add_member(:robot_software_suite, Shapes::ShapeRef.new(shape: RobotSoftwareSuite, location_name: "robotSoftwareSuite"))
    UpdateRobotApplicationResponse.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: LastUpdatedAt, location_name: "lastUpdatedAt"))
    UpdateRobotApplicationResponse.add_member(:revision_id, Shapes::ShapeRef.new(shape: RevisionId, location_name: "revisionId"))
    UpdateRobotApplicationResponse.struct_class = Types::UpdateRobotApplicationResponse

    UpdateSimulationApplicationRequest.add_member(:application, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "application"))
    UpdateSimulationApplicationRequest.add_member(:sources, Shapes::ShapeRef.new(shape: SourceConfigs, required: true, location_name: "sources"))
    UpdateSimulationApplicationRequest.add_member(:simulation_software_suite, Shapes::ShapeRef.new(shape: SimulationSoftwareSuite, required: true, location_name: "simulationSoftwareSuite"))
    UpdateSimulationApplicationRequest.add_member(:robot_software_suite, Shapes::ShapeRef.new(shape: RobotSoftwareSuite, required: true, location_name: "robotSoftwareSuite"))
    UpdateSimulationApplicationRequest.add_member(:rendering_engine, Shapes::ShapeRef.new(shape: RenderingEngine, location_name: "renderingEngine"))
    UpdateSimulationApplicationRequest.add_member(:current_revision_id, Shapes::ShapeRef.new(shape: RevisionId, location_name: "currentRevisionId"))
    UpdateSimulationApplicationRequest.struct_class = Types::UpdateSimulationApplicationRequest

    UpdateSimulationApplicationResponse.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "arn"))
    UpdateSimulationApplicationResponse.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "name"))
    UpdateSimulationApplicationResponse.add_member(:version, Shapes::ShapeRef.new(shape: Version, location_name: "version"))
    UpdateSimulationApplicationResponse.add_member(:sources, Shapes::ShapeRef.new(shape: Sources, location_name: "sources"))
    UpdateSimulationApplicationResponse.add_member(:simulation_software_suite, Shapes::ShapeRef.new(shape: SimulationSoftwareSuite, location_name: "simulationSoftwareSuite"))
    UpdateSimulationApplicationResponse.add_member(:robot_software_suite, Shapes::ShapeRef.new(shape: RobotSoftwareSuite, location_name: "robotSoftwareSuite"))
    UpdateSimulationApplicationResponse.add_member(:rendering_engine, Shapes::ShapeRef.new(shape: RenderingEngine, location_name: "renderingEngine"))
    UpdateSimulationApplicationResponse.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: LastUpdatedAt, location_name: "lastUpdatedAt"))
    UpdateSimulationApplicationResponse.add_member(:revision_id, Shapes::ShapeRef.new(shape: RevisionId, location_name: "revisionId"))
    UpdateSimulationApplicationResponse.struct_class = Types::UpdateSimulationApplicationResponse

    VPCConfig.add_member(:subnets, Shapes::ShapeRef.new(shape: Subnets, required: true, location_name: "subnets"))
    VPCConfig.add_member(:security_groups, Shapes::ShapeRef.new(shape: SecurityGroups, location_name: "securityGroups"))
    VPCConfig.add_member(:assign_public_ip, Shapes::ShapeRef.new(shape: Boolean, location_name: "assignPublicIp"))
    VPCConfig.struct_class = Types::VPCConfig

    VPCConfigResponse.add_member(:subnets, Shapes::ShapeRef.new(shape: Subnets, location_name: "subnets"))
    VPCConfigResponse.add_member(:security_groups, Shapes::ShapeRef.new(shape: SecurityGroups, location_name: "securityGroups"))
    VPCConfigResponse.add_member(:vpc_id, Shapes::ShapeRef.new(shape: GenericString, location_name: "vpcId"))
    VPCConfigResponse.add_member(:assign_public_ip, Shapes::ShapeRef.new(shape: Boolean, location_name: "assignPublicIp"))
    VPCConfigResponse.struct_class = Types::VPCConfigResponse


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2018-06-29"

      api.metadata = {
        "apiVersion" => "2018-06-29",
        "endpointPrefix" => "robomaker",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceAbbreviation" => "RoboMaker",
        "serviceFullName" => "AWS RoboMaker",
        "serviceId" => "RoboMaker",
        "signatureVersion" => "v4",
        "signingName" => "robomaker",
        "uid" => "robomaker-2018-06-29",
      }

      api.add_operation(:batch_describe_simulation_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchDescribeSimulationJob"
        o.http_method = "POST"
        o.http_request_uri = "/batchDescribeSimulationJob"
        o.input = Shapes::ShapeRef.new(shape: BatchDescribeSimulationJobRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchDescribeSimulationJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:cancel_deployment_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CancelDeploymentJob"
        o.http_method = "POST"
        o.http_request_uri = "/cancelDeploymentJob"
        o.input = Shapes::ShapeRef.new(shape: CancelDeploymentJobRequest)
        o.output = Shapes::ShapeRef.new(shape: CancelDeploymentJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:cancel_simulation_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CancelSimulationJob"
        o.http_method = "POST"
        o.http_request_uri = "/cancelSimulationJob"
        o.input = Shapes::ShapeRef.new(shape: CancelSimulationJobRequest)
        o.output = Shapes::ShapeRef.new(shape: CancelSimulationJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:cancel_simulation_job_batch, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CancelSimulationJobBatch"
        o.http_method = "POST"
        o.http_request_uri = "/cancelSimulationJobBatch"
        o.input = Shapes::ShapeRef.new(shape: CancelSimulationJobBatchRequest)
        o.output = Shapes::ShapeRef.new(shape: CancelSimulationJobBatchResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:create_deployment_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDeploymentJob"
        o.http_method = "POST"
        o.http_request_uri = "/createDeploymentJob"
        o.input = Shapes::ShapeRef.new(shape: CreateDeploymentJobRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateDeploymentJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentDeploymentException)
        o.errors << Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
      end)

      api.add_operation(:create_fleet, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateFleet"
        o.http_method = "POST"
        o.http_request_uri = "/createFleet"
        o.input = Shapes::ShapeRef.new(shape: CreateFleetRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateFleetResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:create_robot, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateRobot"
        o.http_method = "POST"
        o.http_request_uri = "/createRobot"
        o.input = Shapes::ShapeRef.new(shape: CreateRobotRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateRobotResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
      end)

      api.add_operation(:create_robot_application, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateRobotApplication"
        o.http_method = "POST"
        o.http_request_uri = "/createRobotApplication"
        o.input = Shapes::ShapeRef.new(shape: CreateRobotApplicationRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateRobotApplicationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
      end)

      api.add_operation(:create_robot_application_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateRobotApplicationVersion"
        o.http_method = "POST"
        o.http_request_uri = "/createRobotApplicationVersion"
        o.input = Shapes::ShapeRef.new(shape: CreateRobotApplicationVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateRobotApplicationVersionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_simulation_application, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateSimulationApplication"
        o.http_method = "POST"
        o.http_request_uri = "/createSimulationApplication"
        o.input = Shapes::ShapeRef.new(shape: CreateSimulationApplicationRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateSimulationApplicationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
      end)

      api.add_operation(:create_simulation_application_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateSimulationApplicationVersion"
        o.http_method = "POST"
        o.http_request_uri = "/createSimulationApplicationVersion"
        o.input = Shapes::ShapeRef.new(shape: CreateSimulationApplicationVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateSimulationApplicationVersionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_simulation_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateSimulationJob"
        o.http_method = "POST"
        o.http_request_uri = "/createSimulationJob"
        o.input = Shapes::ShapeRef.new(shape: CreateSimulationJobRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateSimulationJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:delete_fleet, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteFleet"
        o.http_method = "POST"
        o.http_request_uri = "/deleteFleet"
        o.input = Shapes::ShapeRef.new(shape: DeleteFleetRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteFleetResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_robot, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteRobot"
        o.http_method = "POST"
        o.http_request_uri = "/deleteRobot"
        o.input = Shapes::ShapeRef.new(shape: DeleteRobotRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteRobotResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_robot_application, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteRobotApplication"
        o.http_method = "POST"
        o.http_request_uri = "/deleteRobotApplication"
        o.input = Shapes::ShapeRef.new(shape: DeleteRobotApplicationRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteRobotApplicationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_simulation_application, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteSimulationApplication"
        o.http_method = "POST"
        o.http_request_uri = "/deleteSimulationApplication"
        o.input = Shapes::ShapeRef.new(shape: DeleteSimulationApplicationRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteSimulationApplicationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:deregister_robot, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeregisterRobot"
        o.http_method = "POST"
        o.http_request_uri = "/deregisterRobot"
        o.input = Shapes::ShapeRef.new(shape: DeregisterRobotRequest)
        o.output = Shapes::ShapeRef.new(shape: DeregisterRobotResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:describe_deployment_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDeploymentJob"
        o.http_method = "POST"
        o.http_request_uri = "/describeDeploymentJob"
        o.input = Shapes::ShapeRef.new(shape: DescribeDeploymentJobRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeDeploymentJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:describe_fleet, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeFleet"
        o.http_method = "POST"
        o.http_request_uri = "/describeFleet"
        o.input = Shapes::ShapeRef.new(shape: DescribeFleetRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeFleetResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:describe_robot, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeRobot"
        o.http_method = "POST"
        o.http_request_uri = "/describeRobot"
        o.input = Shapes::ShapeRef.new(shape: DescribeRobotRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeRobotResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:describe_robot_application, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeRobotApplication"
        o.http_method = "POST"
        o.http_request_uri = "/describeRobotApplication"
        o.input = Shapes::ShapeRef.new(shape: DescribeRobotApplicationRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeRobotApplicationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:describe_simulation_application, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeSimulationApplication"
        o.http_method = "POST"
        o.http_request_uri = "/describeSimulationApplication"
        o.input = Shapes::ShapeRef.new(shape: DescribeSimulationApplicationRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeSimulationApplicationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:describe_simulation_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeSimulationJob"
        o.http_method = "POST"
        o.http_request_uri = "/describeSimulationJob"
        o.input = Shapes::ShapeRef.new(shape: DescribeSimulationJobRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeSimulationJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:describe_simulation_job_batch, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeSimulationJobBatch"
        o.http_method = "POST"
        o.http_request_uri = "/describeSimulationJobBatch"
        o.input = Shapes::ShapeRef.new(shape: DescribeSimulationJobBatchRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeSimulationJobBatchResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:list_deployment_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDeploymentJobs"
        o.http_method = "POST"
        o.http_request_uri = "/listDeploymentJobs"
        o.input = Shapes::ShapeRef.new(shape: ListDeploymentJobsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDeploymentJobsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_fleets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListFleets"
        o.http_method = "POST"
        o.http_request_uri = "/listFleets"
        o.input = Shapes::ShapeRef.new(shape: ListFleetsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListFleetsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_robot_applications, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRobotApplications"
        o.http_method = "POST"
        o.http_request_uri = "/listRobotApplications"
        o.input = Shapes::ShapeRef.new(shape: ListRobotApplicationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListRobotApplicationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_robots, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRobots"
        o.http_method = "POST"
        o.http_request_uri = "/listRobots"
        o.input = Shapes::ShapeRef.new(shape: ListRobotsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListRobotsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_simulation_applications, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSimulationApplications"
        o.http_method = "POST"
        o.http_request_uri = "/listSimulationApplications"
        o.input = Shapes::ShapeRef.new(shape: ListSimulationApplicationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListSimulationApplicationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_simulation_job_batches, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSimulationJobBatches"
        o.http_method = "POST"
        o.http_request_uri = "/listSimulationJobBatches"
        o.input = Shapes::ShapeRef.new(shape: ListSimulationJobBatchesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListSimulationJobBatchesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_simulation_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSimulationJobs"
        o.http_method = "POST"
        o.http_request_uri = "/listSimulationJobs"
        o.input = Shapes::ShapeRef.new(shape: ListSimulationJobsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListSimulationJobsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
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
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:register_robot, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RegisterRobot"
        o.http_method = "POST"
        o.http_request_uri = "/registerRobot"
        o.input = Shapes::ShapeRef.new(shape: RegisterRobotRequest)
        o.output = Shapes::ShapeRef.new(shape: RegisterRobotResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:restart_simulation_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RestartSimulationJob"
        o.http_method = "POST"
        o.http_request_uri = "/restartSimulationJob"
        o.input = Shapes::ShapeRef.new(shape: RestartSimulationJobRequest)
        o.output = Shapes::ShapeRef.new(shape: RestartSimulationJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:start_simulation_job_batch, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartSimulationJobBatch"
        o.http_method = "POST"
        o.http_request_uri = "/startSimulationJobBatch"
        o.input = Shapes::ShapeRef.new(shape: StartSimulationJobBatchRequest)
        o.output = Shapes::ShapeRef.new(shape: StartSimulationJobBatchResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:sync_deployment_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SyncDeploymentJob"
        o.http_method = "POST"
        o.http_request_uri = "/syncDeploymentJob"
        o.input = Shapes::ShapeRef.new(shape: SyncDeploymentJobRequest)
        o.output = Shapes::ShapeRef.new(shape: SyncDeploymentJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentDeploymentException)
        o.errors << Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:update_robot_application, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateRobotApplication"
        o.http_method = "POST"
        o.http_request_uri = "/updateRobotApplication"
        o.input = Shapes::ShapeRef.new(shape: UpdateRobotApplicationRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateRobotApplicationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_simulation_application, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateSimulationApplication"
        o.http_method = "POST"
        o.http_request_uri = "/updateSimulationApplication"
        o.input = Shapes::ShapeRef.new(shape: UpdateSimulationApplicationRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateSimulationApplicationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)
    end

  end
end
