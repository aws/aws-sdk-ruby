# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::LambdaMicrovms
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    Architecture = Shapes::StringShape.new(name: 'Architecture')
    AuthTokenKey = Shapes::StringShape.new(name: 'AuthTokenKey')
    AuthTokenValue = Shapes::StringShape.new(name: 'AuthTokenValue')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    BuildState = Shapes::StringShape.new(name: 'BuildState')
    Capability = Shapes::StringShape.new(name: 'Capability')
    CapabilityList = Shapes::ListShape.new(name: 'CapabilityList')
    Chipset = Shapes::StringShape.new(name: 'Chipset')
    CloudWatchLogging = Shapes::StructureShape.new(name: 'CloudWatchLogging')
    CloudWatchLoggingLogGroupString = Shapes::StringShape.new(name: 'CloudWatchLoggingLogGroupString')
    CloudWatchLoggingLogStreamString = Shapes::StringShape.new(name: 'CloudWatchLoggingLogStreamString')
    CodeArtifact = Shapes::UnionShape.new(name: 'CodeArtifact')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CpuConfiguration = Shapes::StructureShape.new(name: 'CpuConfiguration')
    CpuConfigurationList = Shapes::ListShape.new(name: 'CpuConfigurationList')
    CreateMicrovmAuthTokenRequest = Shapes::StructureShape.new(name: 'CreateMicrovmAuthTokenRequest')
    CreateMicrovmAuthTokenResponse = Shapes::StructureShape.new(name: 'CreateMicrovmAuthTokenResponse')
    CreateMicrovmImageRequest = Shapes::StructureShape.new(name: 'CreateMicrovmImageRequest')
    CreateMicrovmImageRequestClientTokenString = Shapes::StringShape.new(name: 'CreateMicrovmImageRequestClientTokenString')
    CreateMicrovmImageRequestEgressNetworkConnectorsList = Shapes::ListShape.new(name: 'CreateMicrovmImageRequestEgressNetworkConnectorsList')
    CreateMicrovmImageResponse = Shapes::StructureShape.new(name: 'CreateMicrovmImageResponse')
    CreateMicrovmImageResponseEgressNetworkConnectorsList = Shapes::ListShape.new(name: 'CreateMicrovmImageResponseEgressNetworkConnectorsList')
    CreateMicrovmShellAuthTokenRequest = Shapes::StructureShape.new(name: 'CreateMicrovmShellAuthTokenRequest')
    CreateMicrovmShellAuthTokenResponse = Shapes::StructureShape.new(name: 'CreateMicrovmShellAuthTokenResponse')
    DeleteMicrovmImageInput = Shapes::StructureShape.new(name: 'DeleteMicrovmImageInput')
    DeleteMicrovmImageOutput = Shapes::StructureShape.new(name: 'DeleteMicrovmImageOutput')
    DeleteMicrovmImageVersionInput = Shapes::StructureShape.new(name: 'DeleteMicrovmImageVersionInput')
    DeleteMicrovmImageVersionOutput = Shapes::StructureShape.new(name: 'DeleteMicrovmImageVersionOutput')
    EnvironmentVariableKey = Shapes::StringShape.new(name: 'EnvironmentVariableKey')
    EnvironmentVariableMap = Shapes::MapShape.new(name: 'EnvironmentVariableMap')
    EnvironmentVariableValue = Shapes::StringShape.new(name: 'EnvironmentVariableValue')
    GetMicrovmImageBuildInput = Shapes::StructureShape.new(name: 'GetMicrovmImageBuildInput')
    GetMicrovmImageBuildOutput = Shapes::StructureShape.new(name: 'GetMicrovmImageBuildOutput')
    GetMicrovmImageInput = Shapes::StructureShape.new(name: 'GetMicrovmImageInput')
    GetMicrovmImageOutput = Shapes::StructureShape.new(name: 'GetMicrovmImageOutput')
    GetMicrovmImageVersionInput = Shapes::StructureShape.new(name: 'GetMicrovmImageVersionInput')
    GetMicrovmImageVersionOutput = Shapes::StructureShape.new(name: 'GetMicrovmImageVersionOutput')
    GetMicrovmImageVersionOutputEgressNetworkConnectorsList = Shapes::ListShape.new(name: 'GetMicrovmImageVersionOutputEgressNetworkConnectorsList')
    GetMicrovmRequest = Shapes::StructureShape.new(name: 'GetMicrovmRequest')
    GetMicrovmResponse = Shapes::StructureShape.new(name: 'GetMicrovmResponse')
    GetMicrovmResponseEndpointString = Shapes::StringShape.new(name: 'GetMicrovmResponseEndpointString')
    HookState = Shapes::StringShape.new(name: 'HookState')
    Hooks = Shapes::StructureShape.new(name: 'Hooks')
    HooksPortInteger = Shapes::IntegerShape.new(name: 'HooksPortInteger')
    IdlePolicy = Shapes::StructureShape.new(name: 'IdlePolicy')
    IdlePolicyMaxIdleDurationSecondsInteger = Shapes::IntegerShape.new(name: 'IdlePolicyMaxIdleDurationSecondsInteger')
    IdlePolicySuspendedDurationSecondsInteger = Shapes::IntegerShape.new(name: 'IdlePolicySuspendedDurationSecondsInteger')
    ImageName = Shapes::StringShape.new(name: 'ImageName')
    InsufficientCapacityException = Shapes::StructureShape.new(name: 'InsufficientCapacityException')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    InvalidParameterValueException = Shapes::StructureShape.new(name: 'InvalidParameterValueException')
    ListManagedMicrovmImageVersionsInput = Shapes::StructureShape.new(name: 'ListManagedMicrovmImageVersionsInput')
    ListManagedMicrovmImageVersionsInputMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListManagedMicrovmImageVersionsInputMaxResultsInteger')
    ListManagedMicrovmImageVersionsOutput = Shapes::StructureShape.new(name: 'ListManagedMicrovmImageVersionsOutput')
    ListManagedMicrovmImagesInput = Shapes::StructureShape.new(name: 'ListManagedMicrovmImagesInput')
    ListManagedMicrovmImagesInputMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListManagedMicrovmImagesInputMaxResultsInteger')
    ListManagedMicrovmImagesOutput = Shapes::StructureShape.new(name: 'ListManagedMicrovmImagesOutput')
    ListMicrovmImageBuildsInput = Shapes::StructureShape.new(name: 'ListMicrovmImageBuildsInput')
    ListMicrovmImageBuildsInputMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListMicrovmImageBuildsInputMaxResultsInteger')
    ListMicrovmImageBuildsOutput = Shapes::StructureShape.new(name: 'ListMicrovmImageBuildsOutput')
    ListMicrovmImageVersionsInput = Shapes::StructureShape.new(name: 'ListMicrovmImageVersionsInput')
    ListMicrovmImageVersionsInputMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListMicrovmImageVersionsInputMaxResultsInteger')
    ListMicrovmImageVersionsOutput = Shapes::StructureShape.new(name: 'ListMicrovmImageVersionsOutput')
    ListMicrovmImagesRequest = Shapes::StructureShape.new(name: 'ListMicrovmImagesRequest')
    ListMicrovmImagesRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListMicrovmImagesRequestMaxResultsInteger')
    ListMicrovmImagesResponse = Shapes::StructureShape.new(name: 'ListMicrovmImagesResponse')
    ListMicrovmsRequest = Shapes::StructureShape.new(name: 'ListMicrovmsRequest')
    ListMicrovmsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListMicrovmsRequestMaxResultsInteger')
    ListMicrovmsResponse = Shapes::StructureShape.new(name: 'ListMicrovmsResponse')
    ListOfPortSpecification = Shapes::ListShape.new(name: 'ListOfPortSpecification')
    ListTagsRequest = Shapes::StructureShape.new(name: 'ListTagsRequest')
    ListTagsResponse = Shapes::StructureShape.new(name: 'ListTagsResponse')
    Logging = Shapes::UnionShape.new(name: 'Logging')
    LoggingDisabled = Shapes::StructureShape.new(name: 'LoggingDisabled')
    Long = Shapes::IntegerShape.new(name: 'Long')
    ManagedMicrovmImageSummary = Shapes::StructureShape.new(name: 'ManagedMicrovmImageSummary')
    ManagedMicrovmImageSummaryList = Shapes::ListShape.new(name: 'ManagedMicrovmImageSummaryList')
    ManagedMicrovmImageVersion = Shapes::StructureShape.new(name: 'ManagedMicrovmImageVersion')
    ManagedMicrovmImageVersionList = Shapes::ListShape.new(name: 'ManagedMicrovmImageVersionList')
    ManagedMicrovmImageVersionStatus = Shapes::StringShape.new(name: 'ManagedMicrovmImageVersionStatus')
    MicrovmHooks = Shapes::StructureShape.new(name: 'MicrovmHooks')
    MicrovmHooksResumeTimeoutInSecondsInteger = Shapes::IntegerShape.new(name: 'MicrovmHooksResumeTimeoutInSecondsInteger')
    MicrovmHooksRunTimeoutInSecondsInteger = Shapes::IntegerShape.new(name: 'MicrovmHooksRunTimeoutInSecondsInteger')
    MicrovmHooksSuspendTimeoutInSecondsInteger = Shapes::IntegerShape.new(name: 'MicrovmHooksSuspendTimeoutInSecondsInteger')
    MicrovmHooksTerminateTimeoutInSecondsInteger = Shapes::IntegerShape.new(name: 'MicrovmHooksTerminateTimeoutInSecondsInteger')
    MicrovmIdentifier = Shapes::StringShape.new(name: 'MicrovmIdentifier')
    MicrovmImageArn = Shapes::StringShape.new(name: 'MicrovmImageArn')
    MicrovmImageBuildSummaries = Shapes::ListShape.new(name: 'MicrovmImageBuildSummaries')
    MicrovmImageBuildSummary = Shapes::StructureShape.new(name: 'MicrovmImageBuildSummary')
    MicrovmImageHooks = Shapes::StructureShape.new(name: 'MicrovmImageHooks')
    MicrovmImageHooksReadyTimeoutInSecondsInteger = Shapes::IntegerShape.new(name: 'MicrovmImageHooksReadyTimeoutInSecondsInteger')
    MicrovmImageHooksValidateTimeoutInSecondsInteger = Shapes::IntegerShape.new(name: 'MicrovmImageHooksValidateTimeoutInSecondsInteger')
    MicrovmImageIdentifier = Shapes::StringShape.new(name: 'MicrovmImageIdentifier')
    MicrovmImageState = Shapes::StringShape.new(name: 'MicrovmImageState')
    MicrovmImageSummaries = Shapes::ListShape.new(name: 'MicrovmImageSummaries')
    MicrovmImageSummary = Shapes::StructureShape.new(name: 'MicrovmImageSummary')
    MicrovmImageVersionState = Shapes::StringShape.new(name: 'MicrovmImageVersionState')
    MicrovmImageVersionStatus = Shapes::StringShape.new(name: 'MicrovmImageVersionStatus')
    MicrovmImageVersionSummary = Shapes::StructureShape.new(name: 'MicrovmImageVersionSummary')
    MicrovmImageVersionSummaryEgressNetworkConnectorsList = Shapes::ListShape.new(name: 'MicrovmImageVersionSummaryEgressNetworkConnectorsList')
    MicrovmImageVersionSummaryList = Shapes::ListShape.new(name: 'MicrovmImageVersionSummaryList')
    MicrovmItem = Shapes::StructureShape.new(name: 'MicrovmItem')
    MicrovmItemList = Shapes::ListShape.new(name: 'MicrovmItemList')
    MicrovmState = Shapes::StringShape.new(name: 'MicrovmState')
    NetworkConnector = Shapes::StringShape.new(name: 'NetworkConnector')
    NetworkConnectorList = Shapes::ListShape.new(name: 'NetworkConnectorList')
    NonBlankString = Shapes::StringShape.new(name: 'NonBlankString')
    PortNumber = Shapes::IntegerShape.new(name: 'PortNumber')
    PortRange = Shapes::StructureShape.new(name: 'PortRange')
    PortSpecification = Shapes::UnionShape.new(name: 'PortSpecification')
    PositiveInteger = Shapes::IntegerShape.new(name: 'PositiveInteger')
    ResourceConflictException = Shapes::StructureShape.new(name: 'ResourceConflictException')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    Resources = Shapes::StructureShape.new(name: 'Resources')
    ResourcesList = Shapes::ListShape.new(name: 'ResourcesList')
    ResumeMicrovmRequest = Shapes::StructureShape.new(name: 'ResumeMicrovmRequest')
    ResumeMicrovmResponse = Shapes::StructureShape.new(name: 'ResumeMicrovmResponse')
    RoleArn = Shapes::StringShape.new(name: 'RoleArn')
    RunHookPayload = Shapes::StringShape.new(name: 'RunHookPayload')
    RunMicrovmRequest = Shapes::StructureShape.new(name: 'RunMicrovmRequest')
    RunMicrovmRequestClientTokenString = Shapes::StringShape.new(name: 'RunMicrovmRequestClientTokenString')
    RunMicrovmRequestMaximumDurationInSecondsInteger = Shapes::IntegerShape.new(name: 'RunMicrovmRequestMaximumDurationInSecondsInteger')
    RunMicrovmResponse = Shapes::StructureShape.new(name: 'RunMicrovmResponse')
    RunMicrovmResponseEndpointString = Shapes::StringShape.new(name: 'RunMicrovmResponseEndpointString')
    ServiceException = Shapes::StructureShape.new(name: 'ServiceException')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    SnapshotBuild = Shapes::StructureShape.new(name: 'SnapshotBuild')
    String = Shapes::StringShape.new(name: 'String')
    SuspendMicrovmRequest = Shapes::StructureShape.new(name: 'SuspendMicrovmRequest')
    SuspendMicrovmResponse = Shapes::StructureShape.new(name: 'SuspendMicrovmResponse')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TaggableResource = Shapes::StringShape.new(name: 'TaggableResource')
    Tags = Shapes::MapShape.new(name: 'Tags')
    TerminateMicrovmRequest = Shapes::StructureShape.new(name: 'TerminateMicrovmRequest')
    TerminateMicrovmResponse = Shapes::StructureShape.new(name: 'TerminateMicrovmResponse')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    TokenParts = Shapes::MapShape.new(name: 'TokenParts')
    TooManyRequestsException = Shapes::StructureShape.new(name: 'TooManyRequestsException')
    Unit = Shapes::StructureShape.new(name: 'Unit')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UpdateMicrovmImageRequest = Shapes::StructureShape.new(name: 'UpdateMicrovmImageRequest')
    UpdateMicrovmImageRequestClientTokenString = Shapes::StringShape.new(name: 'UpdateMicrovmImageRequestClientTokenString')
    UpdateMicrovmImageRequestEgressNetworkConnectorsList = Shapes::ListShape.new(name: 'UpdateMicrovmImageRequestEgressNetworkConnectorsList')
    UpdateMicrovmImageResponse = Shapes::StructureShape.new(name: 'UpdateMicrovmImageResponse')
    UpdateMicrovmImageResponseEgressNetworkConnectorsList = Shapes::ListShape.new(name: 'UpdateMicrovmImageResponseEgressNetworkConnectorsList')
    UpdateMicrovmImageVersionRequest = Shapes::StructureShape.new(name: 'UpdateMicrovmImageVersionRequest')
    UpdateMicrovmImageVersionResponse = Shapes::StructureShape.new(name: 'UpdateMicrovmImageVersionResponse')
    UpdateMicrovmImageVersionResponseEgressNetworkConnectorsList = Shapes::ListShape.new(name: 'UpdateMicrovmImageVersionResponseEgressNetworkConnectorsList')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    Version = Shapes::StringShape.new(name: 'Version')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    CapabilityList.member = Shapes::ShapeRef.new(shape: Capability)

    CloudWatchLogging.add_member(:log_group, Shapes::ShapeRef.new(shape: CloudWatchLoggingLogGroupString, location_name: "logGroup"))
    CloudWatchLogging.add_member(:log_stream, Shapes::ShapeRef.new(shape: CloudWatchLoggingLogStreamString, location_name: "logStream"))
    CloudWatchLogging.struct_class = Types::CloudWatchLogging

    CodeArtifact.add_member(:uri, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "uri"))
    CodeArtifact.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    CodeArtifact.add_member_subclass(:uri, Types::CodeArtifact::Uri)
    CodeArtifact.add_member_subclass(:unknown, Types::CodeArtifact::Unknown)
    CodeArtifact.struct_class = Types::CodeArtifact

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ConflictException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, location_name: "resourceId"))
    ConflictException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, location_name: "resourceType"))
    ConflictException.struct_class = Types::ConflictException

    CpuConfiguration.add_member(:architecture, Shapes::ShapeRef.new(shape: Architecture, required: true, location_name: "architecture"))
    CpuConfiguration.struct_class = Types::CpuConfiguration

    CpuConfigurationList.member = Shapes::ShapeRef.new(shape: CpuConfiguration)

    CreateMicrovmAuthTokenRequest.add_member(:microvm_identifier, Shapes::ShapeRef.new(shape: MicrovmIdentifier, required: true, location: "uri", location_name: "microvmIdentifier"))
    CreateMicrovmAuthTokenRequest.add_member(:expiration_in_minutes, Shapes::ShapeRef.new(shape: PositiveInteger, required: true, location_name: "expirationInMinutes"))
    CreateMicrovmAuthTokenRequest.add_member(:allowed_ports, Shapes::ShapeRef.new(shape: ListOfPortSpecification, required: true, location_name: "allowedPorts"))
    CreateMicrovmAuthTokenRequest.struct_class = Types::CreateMicrovmAuthTokenRequest

    CreateMicrovmAuthTokenResponse.add_member(:auth_token, Shapes::ShapeRef.new(shape: TokenParts, required: true, location_name: "authToken"))
    CreateMicrovmAuthTokenResponse.struct_class = Types::CreateMicrovmAuthTokenResponse

    CreateMicrovmImageRequest.add_member(:base_image_arn, Shapes::ShapeRef.new(shape: NonBlankString, required: true, location_name: "baseImageArn"))
    CreateMicrovmImageRequest.add_member(:base_image_version, Shapes::ShapeRef.new(shape: Version, location_name: "baseImageVersion"))
    CreateMicrovmImageRequest.add_member(:build_role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "buildRoleArn"))
    CreateMicrovmImageRequest.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    CreateMicrovmImageRequest.add_member(:code_artifact, Shapes::ShapeRef.new(shape: CodeArtifact, required: true, location_name: "codeArtifact"))
    CreateMicrovmImageRequest.add_member(:logging, Shapes::ShapeRef.new(shape: Logging, location_name: "logging"))
    CreateMicrovmImageRequest.add_member(:egress_network_connectors, Shapes::ShapeRef.new(shape: CreateMicrovmImageRequestEgressNetworkConnectorsList, location_name: "egressNetworkConnectors"))
    CreateMicrovmImageRequest.add_member(:cpu_configurations, Shapes::ShapeRef.new(shape: CpuConfigurationList, location_name: "cpuConfigurations"))
    CreateMicrovmImageRequest.add_member(:resources, Shapes::ShapeRef.new(shape: ResourcesList, location_name: "resources"))
    CreateMicrovmImageRequest.add_member(:additional_os_capabilities, Shapes::ShapeRef.new(shape: CapabilityList, location_name: "additionalOsCapabilities"))
    CreateMicrovmImageRequest.add_member(:hooks, Shapes::ShapeRef.new(shape: Hooks, location_name: "hooks"))
    CreateMicrovmImageRequest.add_member(:environment_variables, Shapes::ShapeRef.new(shape: EnvironmentVariableMap, location_name: "environmentVariables"))
    CreateMicrovmImageRequest.add_member(:name, Shapes::ShapeRef.new(shape: ImageName, required: true, location_name: "name"))
    CreateMicrovmImageRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateMicrovmImageRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: CreateMicrovmImageRequestClientTokenString, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateMicrovmImageRequest.struct_class = Types::CreateMicrovmImageRequest

    CreateMicrovmImageRequestEgressNetworkConnectorsList.member = Shapes::ShapeRef.new(shape: NetworkConnector)

    CreateMicrovmImageResponse.add_member(:image_arn, Shapes::ShapeRef.new(shape: NonBlankString, required: true, location_name: "imageArn"))
    CreateMicrovmImageResponse.add_member(:name, Shapes::ShapeRef.new(shape: ImageName, required: true, location_name: "name"))
    CreateMicrovmImageResponse.add_member(:state, Shapes::ShapeRef.new(shape: MicrovmImageState, required: true, location_name: "state"))
    CreateMicrovmImageResponse.add_member(:latest_active_image_version, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "latestActiveImageVersion"))
    CreateMicrovmImageResponse.add_member(:latest_failed_image_version, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "latestFailedImageVersion"))
    CreateMicrovmImageResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    CreateMicrovmImageResponse.add_member(:base_image_arn, Shapes::ShapeRef.new(shape: NonBlankString, required: true, location_name: "baseImageArn"))
    CreateMicrovmImageResponse.add_member(:base_image_version, Shapes::ShapeRef.new(shape: Version, location_name: "baseImageVersion"))
    CreateMicrovmImageResponse.add_member(:build_role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "buildRoleArn"))
    CreateMicrovmImageResponse.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    CreateMicrovmImageResponse.add_member(:code_artifact, Shapes::ShapeRef.new(shape: CodeArtifact, required: true, location_name: "codeArtifact"))
    CreateMicrovmImageResponse.add_member(:logging, Shapes::ShapeRef.new(shape: Logging, location_name: "logging"))
    CreateMicrovmImageResponse.add_member(:egress_network_connectors, Shapes::ShapeRef.new(shape: CreateMicrovmImageResponseEgressNetworkConnectorsList, location_name: "egressNetworkConnectors"))
    CreateMicrovmImageResponse.add_member(:cpu_configurations, Shapes::ShapeRef.new(shape: CpuConfigurationList, location_name: "cpuConfigurations"))
    CreateMicrovmImageResponse.add_member(:resources, Shapes::ShapeRef.new(shape: ResourcesList, location_name: "resources"))
    CreateMicrovmImageResponse.add_member(:additional_os_capabilities, Shapes::ShapeRef.new(shape: CapabilityList, location_name: "additionalOsCapabilities"))
    CreateMicrovmImageResponse.add_member(:hooks, Shapes::ShapeRef.new(shape: Hooks, location_name: "hooks"))
    CreateMicrovmImageResponse.add_member(:environment_variables, Shapes::ShapeRef.new(shape: EnvironmentVariableMap, location_name: "environmentVariables"))
    CreateMicrovmImageResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateMicrovmImageResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt"))
    CreateMicrovmImageResponse.add_member(:image_version, Shapes::ShapeRef.new(shape: NonBlankString, required: true, location_name: "imageVersion"))
    CreateMicrovmImageResponse.struct_class = Types::CreateMicrovmImageResponse

    CreateMicrovmImageResponseEgressNetworkConnectorsList.member = Shapes::ShapeRef.new(shape: NetworkConnector)

    CreateMicrovmShellAuthTokenRequest.add_member(:microvm_identifier, Shapes::ShapeRef.new(shape: MicrovmIdentifier, required: true, location: "uri", location_name: "microvmIdentifier"))
    CreateMicrovmShellAuthTokenRequest.add_member(:expiration_in_minutes, Shapes::ShapeRef.new(shape: PositiveInteger, required: true, location_name: "expirationInMinutes"))
    CreateMicrovmShellAuthTokenRequest.struct_class = Types::CreateMicrovmShellAuthTokenRequest

    CreateMicrovmShellAuthTokenResponse.add_member(:auth_token, Shapes::ShapeRef.new(shape: TokenParts, required: true, location_name: "authToken"))
    CreateMicrovmShellAuthTokenResponse.struct_class = Types::CreateMicrovmShellAuthTokenResponse

    DeleteMicrovmImageInput.add_member(:image_identifier, Shapes::ShapeRef.new(shape: MicrovmImageIdentifier, required: true, location: "uri", location_name: "imageIdentifier"))
    DeleteMicrovmImageInput.struct_class = Types::DeleteMicrovmImageInput

    DeleteMicrovmImageOutput.add_member(:image_identifier, Shapes::ShapeRef.new(shape: MicrovmImageIdentifier, required: true, location_name: "imageIdentifier"))
    DeleteMicrovmImageOutput.add_member(:state, Shapes::ShapeRef.new(shape: MicrovmImageState, required: true, location_name: "state"))
    DeleteMicrovmImageOutput.struct_class = Types::DeleteMicrovmImageOutput

    DeleteMicrovmImageVersionInput.add_member(:image_identifier, Shapes::ShapeRef.new(shape: MicrovmImageIdentifier, required: true, location: "uri", location_name: "imageIdentifier"))
    DeleteMicrovmImageVersionInput.add_member(:image_version, Shapes::ShapeRef.new(shape: NonBlankString, required: true, location: "uri", location_name: "imageVersion"))
    DeleteMicrovmImageVersionInput.struct_class = Types::DeleteMicrovmImageVersionInput

    DeleteMicrovmImageVersionOutput.add_member(:image_identifier, Shapes::ShapeRef.new(shape: MicrovmImageIdentifier, required: true, location_name: "imageIdentifier"))
    DeleteMicrovmImageVersionOutput.add_member(:image_version, Shapes::ShapeRef.new(shape: NonBlankString, required: true, location_name: "imageVersion"))
    DeleteMicrovmImageVersionOutput.add_member(:state, Shapes::ShapeRef.new(shape: MicrovmImageVersionState, required: true, location_name: "state"))
    DeleteMicrovmImageVersionOutput.struct_class = Types::DeleteMicrovmImageVersionOutput

    EnvironmentVariableMap.key = Shapes::ShapeRef.new(shape: EnvironmentVariableKey)
    EnvironmentVariableMap.value = Shapes::ShapeRef.new(shape: EnvironmentVariableValue)

    GetMicrovmImageBuildInput.add_member(:image_identifier, Shapes::ShapeRef.new(shape: MicrovmImageIdentifier, required: true, location: "uri", location_name: "imageIdentifier"))
    GetMicrovmImageBuildInput.add_member(:image_version, Shapes::ShapeRef.new(shape: NonBlankString, required: true, location: "uri", location_name: "imageVersion"))
    GetMicrovmImageBuildInput.add_member(:build_id, Shapes::ShapeRef.new(shape: NonBlankString, required: true, location: "uri", location_name: "buildId"))
    GetMicrovmImageBuildInput.struct_class = Types::GetMicrovmImageBuildInput

    GetMicrovmImageBuildOutput.add_member(:image_arn, Shapes::ShapeRef.new(shape: NonBlankString, required: true, location_name: "imageArn"))
    GetMicrovmImageBuildOutput.add_member(:image_version, Shapes::ShapeRef.new(shape: NonBlankString, required: true, location_name: "imageVersion"))
    GetMicrovmImageBuildOutput.add_member(:build_id, Shapes::ShapeRef.new(shape: NonBlankString, required: true, location_name: "buildId"))
    GetMicrovmImageBuildOutput.add_member(:build_state, Shapes::ShapeRef.new(shape: BuildState, required: true, location_name: "buildState"))
    GetMicrovmImageBuildOutput.add_member(:architecture, Shapes::ShapeRef.new(shape: Architecture, required: true, location_name: "architecture"))
    GetMicrovmImageBuildOutput.add_member(:chipset, Shapes::ShapeRef.new(shape: Chipset, required: true, location_name: "chipset"))
    GetMicrovmImageBuildOutput.add_member(:chipset_generation, Shapes::ShapeRef.new(shape: NonBlankString, required: true, location_name: "chipsetGeneration"))
    GetMicrovmImageBuildOutput.add_member(:state_reason, Shapes::ShapeRef.new(shape: String, location_name: "stateReason"))
    GetMicrovmImageBuildOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    GetMicrovmImageBuildOutput.add_member(:snapshot_build, Shapes::ShapeRef.new(shape: SnapshotBuild, location_name: "snapshotBuild"))
    GetMicrovmImageBuildOutput.struct_class = Types::GetMicrovmImageBuildOutput

    GetMicrovmImageInput.add_member(:image_identifier, Shapes::ShapeRef.new(shape: MicrovmImageIdentifier, required: true, location: "uri", location_name: "imageIdentifier"))
    GetMicrovmImageInput.struct_class = Types::GetMicrovmImageInput

    GetMicrovmImageOutput.add_member(:image_arn, Shapes::ShapeRef.new(shape: NonBlankString, required: true, location_name: "imageArn"))
    GetMicrovmImageOutput.add_member(:name, Shapes::ShapeRef.new(shape: ImageName, required: true, location_name: "name"))
    GetMicrovmImageOutput.add_member(:state, Shapes::ShapeRef.new(shape: MicrovmImageState, required: true, location_name: "state"))
    GetMicrovmImageOutput.add_member(:latest_active_image_version, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "latestActiveImageVersion"))
    GetMicrovmImageOutput.add_member(:latest_failed_image_version, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "latestFailedImageVersion"))
    GetMicrovmImageOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    GetMicrovmImageOutput.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    GetMicrovmImageOutput.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt"))
    GetMicrovmImageOutput.struct_class = Types::GetMicrovmImageOutput

    GetMicrovmImageVersionInput.add_member(:image_identifier, Shapes::ShapeRef.new(shape: MicrovmImageIdentifier, required: true, location: "uri", location_name: "imageIdentifier"))
    GetMicrovmImageVersionInput.add_member(:image_version, Shapes::ShapeRef.new(shape: NonBlankString, required: true, location: "uri", location_name: "imageVersion"))
    GetMicrovmImageVersionInput.struct_class = Types::GetMicrovmImageVersionInput

    GetMicrovmImageVersionOutput.add_member(:base_image_arn, Shapes::ShapeRef.new(shape: NonBlankString, required: true, location_name: "baseImageArn"))
    GetMicrovmImageVersionOutput.add_member(:base_image_version, Shapes::ShapeRef.new(shape: Version, location_name: "baseImageVersion"))
    GetMicrovmImageVersionOutput.add_member(:build_role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "buildRoleArn"))
    GetMicrovmImageVersionOutput.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    GetMicrovmImageVersionOutput.add_member(:code_artifact, Shapes::ShapeRef.new(shape: CodeArtifact, required: true, location_name: "codeArtifact"))
    GetMicrovmImageVersionOutput.add_member(:logging, Shapes::ShapeRef.new(shape: Logging, location_name: "logging"))
    GetMicrovmImageVersionOutput.add_member(:egress_network_connectors, Shapes::ShapeRef.new(shape: GetMicrovmImageVersionOutputEgressNetworkConnectorsList, location_name: "egressNetworkConnectors"))
    GetMicrovmImageVersionOutput.add_member(:cpu_configurations, Shapes::ShapeRef.new(shape: CpuConfigurationList, location_name: "cpuConfigurations"))
    GetMicrovmImageVersionOutput.add_member(:resources, Shapes::ShapeRef.new(shape: ResourcesList, location_name: "resources"))
    GetMicrovmImageVersionOutput.add_member(:additional_os_capabilities, Shapes::ShapeRef.new(shape: CapabilityList, location_name: "additionalOsCapabilities"))
    GetMicrovmImageVersionOutput.add_member(:hooks, Shapes::ShapeRef.new(shape: Hooks, location_name: "hooks"))
    GetMicrovmImageVersionOutput.add_member(:environment_variables, Shapes::ShapeRef.new(shape: EnvironmentVariableMap, location_name: "environmentVariables"))
    GetMicrovmImageVersionOutput.add_member(:image_arn, Shapes::ShapeRef.new(shape: NonBlankString, required: true, location_name: "imageArn"))
    GetMicrovmImageVersionOutput.add_member(:image_version, Shapes::ShapeRef.new(shape: NonBlankString, required: true, location_name: "imageVersion"))
    GetMicrovmImageVersionOutput.add_member(:state, Shapes::ShapeRef.new(shape: MicrovmImageVersionState, required: true, location_name: "state"))
    GetMicrovmImageVersionOutput.add_member(:status, Shapes::ShapeRef.new(shape: MicrovmImageVersionStatus, required: true, location_name: "status"))
    GetMicrovmImageVersionOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    GetMicrovmImageVersionOutput.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt"))
    GetMicrovmImageVersionOutput.add_member(:state_reason, Shapes::ShapeRef.new(shape: String, location_name: "stateReason"))
    GetMicrovmImageVersionOutput.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    GetMicrovmImageVersionOutput.struct_class = Types::GetMicrovmImageVersionOutput

    GetMicrovmImageVersionOutputEgressNetworkConnectorsList.member = Shapes::ShapeRef.new(shape: NetworkConnector)

    GetMicrovmRequest.add_member(:microvm_identifier, Shapes::ShapeRef.new(shape: MicrovmIdentifier, required: true, location: "uri", location_name: "microvmIdentifier"))
    GetMicrovmRequest.struct_class = Types::GetMicrovmRequest

    GetMicrovmResponse.add_member(:microvm_id, Shapes::ShapeRef.new(shape: MicrovmIdentifier, required: true, location_name: "microvmId"))
    GetMicrovmResponse.add_member(:state, Shapes::ShapeRef.new(shape: MicrovmState, required: true, location_name: "state"))
    GetMicrovmResponse.add_member(:endpoint, Shapes::ShapeRef.new(shape: GetMicrovmResponseEndpointString, required: true, location_name: "endpoint"))
    GetMicrovmResponse.add_member(:image_arn, Shapes::ShapeRef.new(shape: MicrovmImageArn, required: true, location_name: "imageArn"))
    GetMicrovmResponse.add_member(:image_version, Shapes::ShapeRef.new(shape: Version, required: true, location_name: "imageVersion"))
    GetMicrovmResponse.add_member(:execution_role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "executionRoleArn"))
    GetMicrovmResponse.add_member(:idle_policy, Shapes::ShapeRef.new(shape: IdlePolicy, location_name: "idlePolicy"))
    GetMicrovmResponse.add_member(:maximum_duration_in_seconds, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "maximumDurationInSeconds"))
    GetMicrovmResponse.add_member(:started_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "startedAt"))
    GetMicrovmResponse.add_member(:terminated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "terminatedAt"))
    GetMicrovmResponse.add_member(:state_reason, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "stateReason"))
    GetMicrovmResponse.add_member(:ingress_network_connectors, Shapes::ShapeRef.new(shape: NetworkConnectorList, location_name: "ingressNetworkConnectors"))
    GetMicrovmResponse.add_member(:egress_network_connectors, Shapes::ShapeRef.new(shape: NetworkConnectorList, location_name: "egressNetworkConnectors"))
    GetMicrovmResponse.struct_class = Types::GetMicrovmResponse

    Hooks.add_member(:port, Shapes::ShapeRef.new(shape: HooksPortInteger, location_name: "port"))
    Hooks.add_member(:microvm_hooks, Shapes::ShapeRef.new(shape: MicrovmHooks, location_name: "microvmHooks"))
    Hooks.add_member(:microvm_image_hooks, Shapes::ShapeRef.new(shape: MicrovmImageHooks, location_name: "microvmImageHooks"))
    Hooks.struct_class = Types::Hooks

    IdlePolicy.add_member(:max_idle_duration_seconds, Shapes::ShapeRef.new(shape: IdlePolicyMaxIdleDurationSecondsInteger, required: true, location_name: "maxIdleDurationSeconds"))
    IdlePolicy.add_member(:suspended_duration_seconds, Shapes::ShapeRef.new(shape: IdlePolicySuspendedDurationSecondsInteger, required: true, location_name: "suspendedDurationSeconds"))
    IdlePolicy.add_member(:auto_resume_enabled, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "autoResumeEnabled"))
    IdlePolicy.struct_class = Types::IdlePolicy

    InsufficientCapacityException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    InsufficientCapacityException.struct_class = Types::InsufficientCapacityException

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    InternalServerException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: Integer, location: "header", location_name: "Retry-After"))
    InternalServerException.struct_class = Types::InternalServerException

    InvalidParameterValueException.add_member(:type, Shapes::ShapeRef.new(shape: String, location_name: "Type"))
    InvalidParameterValueException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    InvalidParameterValueException.struct_class = Types::InvalidParameterValueException

    ListManagedMicrovmImageVersionsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListManagedMicrovmImageVersionsInputMaxResultsInteger, location: "querystring", location_name: "maxResults"))
    ListManagedMicrovmImageVersionsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListManagedMicrovmImageVersionsInput.add_member(:image_identifier, Shapes::ShapeRef.new(shape: MicrovmImageIdentifier, required: true, location: "uri", location_name: "imageIdentifier"))
    ListManagedMicrovmImageVersionsInput.struct_class = Types::ListManagedMicrovmImageVersionsInput

    ListManagedMicrovmImageVersionsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListManagedMicrovmImageVersionsOutput.add_member(:items, Shapes::ShapeRef.new(shape: ManagedMicrovmImageVersionList, required: true, location_name: "items"))
    ListManagedMicrovmImageVersionsOutput.struct_class = Types::ListManagedMicrovmImageVersionsOutput

    ListManagedMicrovmImagesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListManagedMicrovmImagesInputMaxResultsInteger, location: "querystring", location_name: "maxResults"))
    ListManagedMicrovmImagesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListManagedMicrovmImagesInput.struct_class = Types::ListManagedMicrovmImagesInput

    ListManagedMicrovmImagesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListManagedMicrovmImagesOutput.add_member(:items, Shapes::ShapeRef.new(shape: ManagedMicrovmImageSummaryList, required: true, location_name: "items"))
    ListManagedMicrovmImagesOutput.struct_class = Types::ListManagedMicrovmImagesOutput

    ListMicrovmImageBuildsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListMicrovmImageBuildsInputMaxResultsInteger, location: "querystring", location_name: "maxResults"))
    ListMicrovmImageBuildsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListMicrovmImageBuildsInput.add_member(:image_identifier, Shapes::ShapeRef.new(shape: MicrovmImageIdentifier, required: true, location: "uri", location_name: "imageIdentifier"))
    ListMicrovmImageBuildsInput.add_member(:image_version, Shapes::ShapeRef.new(shape: NonBlankString, required: true, location: "uri", location_name: "imageVersion"))
    ListMicrovmImageBuildsInput.add_member(:architecture, Shapes::ShapeRef.new(shape: Architecture, location: "querystring", location_name: "architecture"))
    ListMicrovmImageBuildsInput.add_member(:chipset, Shapes::ShapeRef.new(shape: Chipset, location: "querystring", location_name: "chipset"))
    ListMicrovmImageBuildsInput.add_member(:chipset_generation, Shapes::ShapeRef.new(shape: NonBlankString, location: "querystring", location_name: "chipsetGeneration"))
    ListMicrovmImageBuildsInput.struct_class = Types::ListMicrovmImageBuildsInput

    ListMicrovmImageBuildsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListMicrovmImageBuildsOutput.add_member(:items, Shapes::ShapeRef.new(shape: MicrovmImageBuildSummaries, required: true, location_name: "items"))
    ListMicrovmImageBuildsOutput.struct_class = Types::ListMicrovmImageBuildsOutput

    ListMicrovmImageVersionsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListMicrovmImageVersionsInputMaxResultsInteger, location: "querystring", location_name: "maxResults"))
    ListMicrovmImageVersionsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListMicrovmImageVersionsInput.add_member(:image_identifier, Shapes::ShapeRef.new(shape: MicrovmImageIdentifier, required: true, location: "uri", location_name: "imageIdentifier"))
    ListMicrovmImageVersionsInput.struct_class = Types::ListMicrovmImageVersionsInput

    ListMicrovmImageVersionsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListMicrovmImageVersionsOutput.add_member(:items, Shapes::ShapeRef.new(shape: MicrovmImageVersionSummaryList, required: true, location_name: "items"))
    ListMicrovmImageVersionsOutput.struct_class = Types::ListMicrovmImageVersionsOutput

    ListMicrovmImagesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListMicrovmImagesRequestMaxResultsInteger, location: "querystring", location_name: "maxResults"))
    ListMicrovmImagesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListMicrovmImagesRequest.add_member(:name_filter, Shapes::ShapeRef.new(shape: NonBlankString, location: "querystring", location_name: "nameFilter"))
    ListMicrovmImagesRequest.struct_class = Types::ListMicrovmImagesRequest

    ListMicrovmImagesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListMicrovmImagesResponse.add_member(:items, Shapes::ShapeRef.new(shape: MicrovmImageSummaries, required: true, location_name: "items"))
    ListMicrovmImagesResponse.struct_class = Types::ListMicrovmImagesResponse

    ListMicrovmsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListMicrovmsRequestMaxResultsInteger, location: "querystring", location_name: "maxResults"))
    ListMicrovmsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListMicrovmsRequest.add_member(:image_identifier, Shapes::ShapeRef.new(shape: MicrovmImageIdentifier, location: "querystring", location_name: "imageIdentifier"))
    ListMicrovmsRequest.add_member(:image_version, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "imageVersion"))
    ListMicrovmsRequest.struct_class = Types::ListMicrovmsRequest

    ListMicrovmsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListMicrovmsResponse.add_member(:items, Shapes::ShapeRef.new(shape: MicrovmItemList, required: true, location_name: "items"))
    ListMicrovmsResponse.struct_class = Types::ListMicrovmsResponse

    ListOfPortSpecification.member = Shapes::ShapeRef.new(shape: PortSpecification)

    ListTagsRequest.add_member(:resource, Shapes::ShapeRef.new(shape: TaggableResource, required: true, location: "uri", location_name: "Resource"))
    ListTagsRequest.struct_class = Types::ListTagsRequest

    ListTagsResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    ListTagsResponse.struct_class = Types::ListTagsResponse

    Logging.add_member(:disabled, Shapes::ShapeRef.new(shape: LoggingDisabled, location_name: "disabled"))
    Logging.add_member(:cloud_watch, Shapes::ShapeRef.new(shape: CloudWatchLogging, location_name: "cloudWatch"))
    Logging.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    Logging.add_member_subclass(:disabled, Types::Logging::Disabled)
    Logging.add_member_subclass(:cloud_watch, Types::Logging::CloudWatch)
    Logging.add_member_subclass(:unknown, Types::Logging::Unknown)
    Logging.struct_class = Types::Logging

    LoggingDisabled.struct_class = Types::LoggingDisabled

    ManagedMicrovmImageSummary.add_member(:image_arn, Shapes::ShapeRef.new(shape: NonBlankString, required: true, location_name: "imageArn"))
    ManagedMicrovmImageSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    ManagedMicrovmImageSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt"))
    ManagedMicrovmImageSummary.struct_class = Types::ManagedMicrovmImageSummary

    ManagedMicrovmImageSummaryList.member = Shapes::ShapeRef.new(shape: ManagedMicrovmImageSummary)

    ManagedMicrovmImageVersion.add_member(:image_arn, Shapes::ShapeRef.new(shape: NonBlankString, required: true, location_name: "imageArn"))
    ManagedMicrovmImageVersion.add_member(:image_version, Shapes::ShapeRef.new(shape: NonBlankString, required: true, location_name: "imageVersion"))
    ManagedMicrovmImageVersion.add_member(:status, Shapes::ShapeRef.new(shape: ManagedMicrovmImageVersionStatus, location_name: "status"))
    ManagedMicrovmImageVersion.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    ManagedMicrovmImageVersion.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt"))
    ManagedMicrovmImageVersion.struct_class = Types::ManagedMicrovmImageVersion

    ManagedMicrovmImageVersionList.member = Shapes::ShapeRef.new(shape: ManagedMicrovmImageVersion)

    MicrovmHooks.add_member(:run, Shapes::ShapeRef.new(shape: HookState, location_name: "run"))
    MicrovmHooks.add_member(:run_timeout_in_seconds, Shapes::ShapeRef.new(shape: MicrovmHooksRunTimeoutInSecondsInteger, location_name: "runTimeoutInSeconds"))
    MicrovmHooks.add_member(:resume, Shapes::ShapeRef.new(shape: HookState, location_name: "resume"))
    MicrovmHooks.add_member(:resume_timeout_in_seconds, Shapes::ShapeRef.new(shape: MicrovmHooksResumeTimeoutInSecondsInteger, location_name: "resumeTimeoutInSeconds"))
    MicrovmHooks.add_member(:suspend, Shapes::ShapeRef.new(shape: HookState, location_name: "suspend"))
    MicrovmHooks.add_member(:suspend_timeout_in_seconds, Shapes::ShapeRef.new(shape: MicrovmHooksSuspendTimeoutInSecondsInteger, location_name: "suspendTimeoutInSeconds"))
    MicrovmHooks.add_member(:terminate, Shapes::ShapeRef.new(shape: HookState, location_name: "terminate"))
    MicrovmHooks.add_member(:terminate_timeout_in_seconds, Shapes::ShapeRef.new(shape: MicrovmHooksTerminateTimeoutInSecondsInteger, location_name: "terminateTimeoutInSeconds"))
    MicrovmHooks.struct_class = Types::MicrovmHooks

    MicrovmImageBuildSummaries.member = Shapes::ShapeRef.new(shape: MicrovmImageBuildSummary)

    MicrovmImageBuildSummary.add_member(:image_arn, Shapes::ShapeRef.new(shape: NonBlankString, required: true, location_name: "imageArn"))
    MicrovmImageBuildSummary.add_member(:image_version, Shapes::ShapeRef.new(shape: NonBlankString, required: true, location_name: "imageVersion"))
    MicrovmImageBuildSummary.add_member(:build_id, Shapes::ShapeRef.new(shape: NonBlankString, required: true, location_name: "buildId"))
    MicrovmImageBuildSummary.add_member(:build_state, Shapes::ShapeRef.new(shape: BuildState, required: true, location_name: "buildState"))
    MicrovmImageBuildSummary.add_member(:architecture, Shapes::ShapeRef.new(shape: Architecture, required: true, location_name: "architecture"))
    MicrovmImageBuildSummary.add_member(:chipset, Shapes::ShapeRef.new(shape: Chipset, required: true, location_name: "chipset"))
    MicrovmImageBuildSummary.add_member(:chipset_generation, Shapes::ShapeRef.new(shape: NonBlankString, required: true, location_name: "chipsetGeneration"))
    MicrovmImageBuildSummary.add_member(:state_reason, Shapes::ShapeRef.new(shape: String, location_name: "stateReason"))
    MicrovmImageBuildSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    MicrovmImageBuildSummary.struct_class = Types::MicrovmImageBuildSummary

    MicrovmImageHooks.add_member(:ready, Shapes::ShapeRef.new(shape: HookState, location_name: "ready"))
    MicrovmImageHooks.add_member(:ready_timeout_in_seconds, Shapes::ShapeRef.new(shape: MicrovmImageHooksReadyTimeoutInSecondsInteger, location_name: "readyTimeoutInSeconds"))
    MicrovmImageHooks.add_member(:validate, Shapes::ShapeRef.new(shape: HookState, location_name: "validate"))
    MicrovmImageHooks.add_member(:validate_timeout_in_seconds, Shapes::ShapeRef.new(shape: MicrovmImageHooksValidateTimeoutInSecondsInteger, location_name: "validateTimeoutInSeconds"))
    MicrovmImageHooks.struct_class = Types::MicrovmImageHooks

    MicrovmImageSummaries.member = Shapes::ShapeRef.new(shape: MicrovmImageSummary)

    MicrovmImageSummary.add_member(:image_arn, Shapes::ShapeRef.new(shape: NonBlankString, required: true, location_name: "imageArn"))
    MicrovmImageSummary.add_member(:name, Shapes::ShapeRef.new(shape: ImageName, required: true, location_name: "name"))
    MicrovmImageSummary.add_member(:state, Shapes::ShapeRef.new(shape: MicrovmImageState, required: true, location_name: "state"))
    MicrovmImageSummary.add_member(:latest_active_image_version, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "latestActiveImageVersion"))
    MicrovmImageSummary.add_member(:latest_failed_image_version, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "latestFailedImageVersion"))
    MicrovmImageSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    MicrovmImageSummary.struct_class = Types::MicrovmImageSummary

    MicrovmImageVersionSummary.add_member(:base_image_arn, Shapes::ShapeRef.new(shape: NonBlankString, required: true, location_name: "baseImageArn"))
    MicrovmImageVersionSummary.add_member(:base_image_version, Shapes::ShapeRef.new(shape: Version, location_name: "baseImageVersion"))
    MicrovmImageVersionSummary.add_member(:build_role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "buildRoleArn"))
    MicrovmImageVersionSummary.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    MicrovmImageVersionSummary.add_member(:code_artifact, Shapes::ShapeRef.new(shape: CodeArtifact, required: true, location_name: "codeArtifact"))
    MicrovmImageVersionSummary.add_member(:logging, Shapes::ShapeRef.new(shape: Logging, location_name: "logging"))
    MicrovmImageVersionSummary.add_member(:egress_network_connectors, Shapes::ShapeRef.new(shape: MicrovmImageVersionSummaryEgressNetworkConnectorsList, location_name: "egressNetworkConnectors"))
    MicrovmImageVersionSummary.add_member(:cpu_configurations, Shapes::ShapeRef.new(shape: CpuConfigurationList, location_name: "cpuConfigurations"))
    MicrovmImageVersionSummary.add_member(:resources, Shapes::ShapeRef.new(shape: ResourcesList, location_name: "resources"))
    MicrovmImageVersionSummary.add_member(:additional_os_capabilities, Shapes::ShapeRef.new(shape: CapabilityList, location_name: "additionalOsCapabilities"))
    MicrovmImageVersionSummary.add_member(:hooks, Shapes::ShapeRef.new(shape: Hooks, location_name: "hooks"))
    MicrovmImageVersionSummary.add_member(:environment_variables, Shapes::ShapeRef.new(shape: EnvironmentVariableMap, location_name: "environmentVariables"))
    MicrovmImageVersionSummary.add_member(:image_arn, Shapes::ShapeRef.new(shape: NonBlankString, required: true, location_name: "imageArn"))
    MicrovmImageVersionSummary.add_member(:image_version, Shapes::ShapeRef.new(shape: NonBlankString, required: true, location_name: "imageVersion"))
    MicrovmImageVersionSummary.add_member(:state, Shapes::ShapeRef.new(shape: MicrovmImageVersionState, required: true, location_name: "state"))
    MicrovmImageVersionSummary.add_member(:status, Shapes::ShapeRef.new(shape: MicrovmImageVersionStatus, required: true, location_name: "status"))
    MicrovmImageVersionSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    MicrovmImageVersionSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt"))
    MicrovmImageVersionSummary.add_member(:state_reason, Shapes::ShapeRef.new(shape: String, location_name: "stateReason"))
    MicrovmImageVersionSummary.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    MicrovmImageVersionSummary.struct_class = Types::MicrovmImageVersionSummary

    MicrovmImageVersionSummaryEgressNetworkConnectorsList.member = Shapes::ShapeRef.new(shape: NetworkConnector)

    MicrovmImageVersionSummaryList.member = Shapes::ShapeRef.new(shape: MicrovmImageVersionSummary)

    MicrovmItem.add_member(:microvm_id, Shapes::ShapeRef.new(shape: MicrovmIdentifier, required: true, location_name: "microvmId"))
    MicrovmItem.add_member(:state, Shapes::ShapeRef.new(shape: MicrovmState, required: true, location_name: "state"))
    MicrovmItem.add_member(:image_arn, Shapes::ShapeRef.new(shape: MicrovmImageArn, required: true, location_name: "imageArn"))
    MicrovmItem.add_member(:image_version, Shapes::ShapeRef.new(shape: Version, required: true, location_name: "imageVersion"))
    MicrovmItem.add_member(:started_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "startedAt"))
    MicrovmItem.struct_class = Types::MicrovmItem

    MicrovmItemList.member = Shapes::ShapeRef.new(shape: MicrovmItem)

    NetworkConnectorList.member = Shapes::ShapeRef.new(shape: NetworkConnector)

    PortRange.add_member(:start_port, Shapes::ShapeRef.new(shape: PortNumber, required: true, location_name: "startPort"))
    PortRange.add_member(:end_port, Shapes::ShapeRef.new(shape: PortNumber, required: true, location_name: "endPort"))
    PortRange.struct_class = Types::PortRange

    PortSpecification.add_member(:port, Shapes::ShapeRef.new(shape: PortNumber, location_name: "port"))
    PortSpecification.add_member(:range, Shapes::ShapeRef.new(shape: PortRange, location_name: "range"))
    PortSpecification.add_member(:all_ports, Shapes::ShapeRef.new(shape: Unit, location_name: "allPorts"))
    PortSpecification.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    PortSpecification.add_member_subclass(:port, Types::PortSpecification::Port)
    PortSpecification.add_member_subclass(:range, Types::PortSpecification::Range)
    PortSpecification.add_member_subclass(:all_ports, Types::PortSpecification::AllPorts)
    PortSpecification.add_member_subclass(:unknown, Types::PortSpecification::Unknown)
    PortSpecification.struct_class = Types::PortSpecification

    ResourceConflictException.add_member(:type, Shapes::ShapeRef.new(shape: String, location_name: "Type"))
    ResourceConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ResourceConflictException.struct_class = Types::ResourceConflictException

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ResourceNotFoundException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, location_name: "resourceType"))
    ResourceNotFoundException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, location_name: "resourceId"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    Resources.add_member(:minimum_memory_in_mi_b, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "minimumMemoryInMiB"))
    Resources.struct_class = Types::Resources

    ResourcesList.member = Shapes::ShapeRef.new(shape: Resources)

    ResumeMicrovmRequest.add_member(:microvm_identifier, Shapes::ShapeRef.new(shape: MicrovmIdentifier, required: true, location: "uri", location_name: "microvmIdentifier"))
    ResumeMicrovmRequest.struct_class = Types::ResumeMicrovmRequest

    ResumeMicrovmResponse.struct_class = Types::ResumeMicrovmResponse

    RunMicrovmRequest.add_member(:ingress_network_connectors, Shapes::ShapeRef.new(shape: NetworkConnectorList, location_name: "ingressNetworkConnectors"))
    RunMicrovmRequest.add_member(:egress_network_connectors, Shapes::ShapeRef.new(shape: NetworkConnectorList, location_name: "egressNetworkConnectors"))
    RunMicrovmRequest.add_member(:image_identifier, Shapes::ShapeRef.new(shape: MicrovmImageIdentifier, required: true, location_name: "imageIdentifier"))
    RunMicrovmRequest.add_member(:image_version, Shapes::ShapeRef.new(shape: Version, location_name: "imageVersion"))
    RunMicrovmRequest.add_member(:execution_role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "executionRoleArn"))
    RunMicrovmRequest.add_member(:idle_policy, Shapes::ShapeRef.new(shape: IdlePolicy, location_name: "idlePolicy"))
    RunMicrovmRequest.add_member(:logging, Shapes::ShapeRef.new(shape: Logging, location_name: "logging"))
    RunMicrovmRequest.add_member(:run_hook_payload, Shapes::ShapeRef.new(shape: RunHookPayload, location_name: "runHookPayload"))
    RunMicrovmRequest.add_member(:maximum_duration_in_seconds, Shapes::ShapeRef.new(shape: RunMicrovmRequestMaximumDurationInSecondsInteger, location_name: "maximumDurationInSeconds"))
    RunMicrovmRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: RunMicrovmRequestClientTokenString, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    RunMicrovmRequest.struct_class = Types::RunMicrovmRequest

    RunMicrovmResponse.add_member(:microvm_id, Shapes::ShapeRef.new(shape: MicrovmIdentifier, required: true, location_name: "microvmId"))
    RunMicrovmResponse.add_member(:state, Shapes::ShapeRef.new(shape: MicrovmState, required: true, location_name: "state"))
    RunMicrovmResponse.add_member(:endpoint, Shapes::ShapeRef.new(shape: RunMicrovmResponseEndpointString, required: true, location_name: "endpoint"))
    RunMicrovmResponse.add_member(:image_arn, Shapes::ShapeRef.new(shape: MicrovmImageArn, required: true, location_name: "imageArn"))
    RunMicrovmResponse.add_member(:image_version, Shapes::ShapeRef.new(shape: Version, required: true, location_name: "imageVersion"))
    RunMicrovmResponse.add_member(:execution_role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "executionRoleArn"))
    RunMicrovmResponse.add_member(:idle_policy, Shapes::ShapeRef.new(shape: IdlePolicy, location_name: "idlePolicy"))
    RunMicrovmResponse.add_member(:maximum_duration_in_seconds, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "maximumDurationInSeconds"))
    RunMicrovmResponse.add_member(:started_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "startedAt"))
    RunMicrovmResponse.add_member(:terminated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "terminatedAt"))
    RunMicrovmResponse.add_member(:state_reason, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "stateReason"))
    RunMicrovmResponse.add_member(:ingress_network_connectors, Shapes::ShapeRef.new(shape: NetworkConnectorList, location_name: "ingressNetworkConnectors"))
    RunMicrovmResponse.add_member(:egress_network_connectors, Shapes::ShapeRef.new(shape: NetworkConnectorList, location_name: "egressNetworkConnectors"))
    RunMicrovmResponse.struct_class = Types::RunMicrovmResponse

    ServiceException.add_member(:type, Shapes::ShapeRef.new(shape: String, location_name: "Type"))
    ServiceException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ServiceException.struct_class = Types::ServiceException

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ServiceQuotaExceededException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, location_name: "resourceId"))
    ServiceQuotaExceededException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, location_name: "resourceType"))
    ServiceQuotaExceededException.add_member(:service_code, Shapes::ShapeRef.new(shape: String, location_name: "serviceCode"))
    ServiceQuotaExceededException.add_member(:quota_code, Shapes::ShapeRef.new(shape: String, location_name: "quotaCode"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    SnapshotBuild.add_member(:memory_snapshot_size_in_bytes, Shapes::ShapeRef.new(shape: Long, location_name: "memorySnapshotSizeInBytes"))
    SnapshotBuild.add_member(:code_install_size_in_bytes, Shapes::ShapeRef.new(shape: Long, location_name: "codeInstallSizeInBytes"))
    SnapshotBuild.add_member(:disk_snapshot_size_in_bytes, Shapes::ShapeRef.new(shape: Long, location_name: "diskSnapshotSizeInBytes"))
    SnapshotBuild.struct_class = Types::SnapshotBuild

    SuspendMicrovmRequest.add_member(:microvm_identifier, Shapes::ShapeRef.new(shape: MicrovmIdentifier, required: true, location: "uri", location_name: "microvmIdentifier"))
    SuspendMicrovmRequest.struct_class = Types::SuspendMicrovmRequest

    SuspendMicrovmResponse.struct_class = Types::SuspendMicrovmResponse

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagResourceRequest.add_member(:resource, Shapes::ShapeRef.new(shape: TaggableResource, required: true, location: "uri", location_name: "Resource"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, required: true, location_name: "Tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    Tags.key = Shapes::ShapeRef.new(shape: TagKey)
    Tags.value = Shapes::ShapeRef.new(shape: TagValue)

    TerminateMicrovmRequest.add_member(:microvm_identifier, Shapes::ShapeRef.new(shape: MicrovmIdentifier, required: true, location: "uri", location_name: "microvmIdentifier"))
    TerminateMicrovmRequest.struct_class = Types::TerminateMicrovmRequest

    TerminateMicrovmResponse.struct_class = Types::TerminateMicrovmResponse

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ThrottlingException.add_member(:service_code, Shapes::ShapeRef.new(shape: String, location_name: "serviceCode"))
    ThrottlingException.add_member(:quota_code, Shapes::ShapeRef.new(shape: String, location_name: "quotaCode"))
    ThrottlingException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: Integer, location: "header", location_name: "Retry-After"))
    ThrottlingException.struct_class = Types::ThrottlingException

    TokenParts.key = Shapes::ShapeRef.new(shape: AuthTokenKey)
    TokenParts.value = Shapes::ShapeRef.new(shape: AuthTokenValue)

    TooManyRequestsException.add_member(:type, Shapes::ShapeRef.new(shape: String, location_name: "Type"))
    TooManyRequestsException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    TooManyRequestsException.struct_class = Types::TooManyRequestsException

    Unit.struct_class = Types::Unit

    UntagResourceRequest.add_member(:resource, Shapes::ShapeRef.new(shape: TaggableResource, required: true, location: "uri", location_name: "Resource"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UpdateMicrovmImageRequest.add_member(:base_image_arn, Shapes::ShapeRef.new(shape: NonBlankString, required: true, location_name: "baseImageArn"))
    UpdateMicrovmImageRequest.add_member(:base_image_version, Shapes::ShapeRef.new(shape: Version, location_name: "baseImageVersion"))
    UpdateMicrovmImageRequest.add_member(:build_role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "buildRoleArn"))
    UpdateMicrovmImageRequest.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    UpdateMicrovmImageRequest.add_member(:code_artifact, Shapes::ShapeRef.new(shape: CodeArtifact, required: true, location_name: "codeArtifact"))
    UpdateMicrovmImageRequest.add_member(:logging, Shapes::ShapeRef.new(shape: Logging, location_name: "logging"))
    UpdateMicrovmImageRequest.add_member(:egress_network_connectors, Shapes::ShapeRef.new(shape: UpdateMicrovmImageRequestEgressNetworkConnectorsList, location_name: "egressNetworkConnectors"))
    UpdateMicrovmImageRequest.add_member(:cpu_configurations, Shapes::ShapeRef.new(shape: CpuConfigurationList, location_name: "cpuConfigurations"))
    UpdateMicrovmImageRequest.add_member(:resources, Shapes::ShapeRef.new(shape: ResourcesList, location_name: "resources"))
    UpdateMicrovmImageRequest.add_member(:additional_os_capabilities, Shapes::ShapeRef.new(shape: CapabilityList, location_name: "additionalOsCapabilities"))
    UpdateMicrovmImageRequest.add_member(:hooks, Shapes::ShapeRef.new(shape: Hooks, location_name: "hooks"))
    UpdateMicrovmImageRequest.add_member(:environment_variables, Shapes::ShapeRef.new(shape: EnvironmentVariableMap, location_name: "environmentVariables"))
    UpdateMicrovmImageRequest.add_member(:image_identifier, Shapes::ShapeRef.new(shape: MicrovmImageIdentifier, required: true, location: "uri", location_name: "imageIdentifier"))
    UpdateMicrovmImageRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: UpdateMicrovmImageRequestClientTokenString, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    UpdateMicrovmImageRequest.struct_class = Types::UpdateMicrovmImageRequest

    UpdateMicrovmImageRequestEgressNetworkConnectorsList.member = Shapes::ShapeRef.new(shape: NetworkConnector)

    UpdateMicrovmImageResponse.add_member(:image_arn, Shapes::ShapeRef.new(shape: NonBlankString, required: true, location_name: "imageArn"))
    UpdateMicrovmImageResponse.add_member(:name, Shapes::ShapeRef.new(shape: ImageName, required: true, location_name: "name"))
    UpdateMicrovmImageResponse.add_member(:state, Shapes::ShapeRef.new(shape: MicrovmImageState, required: true, location_name: "state"))
    UpdateMicrovmImageResponse.add_member(:latest_active_image_version, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "latestActiveImageVersion"))
    UpdateMicrovmImageResponse.add_member(:latest_failed_image_version, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "latestFailedImageVersion"))
    UpdateMicrovmImageResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    UpdateMicrovmImageResponse.add_member(:base_image_arn, Shapes::ShapeRef.new(shape: NonBlankString, required: true, location_name: "baseImageArn"))
    UpdateMicrovmImageResponse.add_member(:base_image_version, Shapes::ShapeRef.new(shape: Version, location_name: "baseImageVersion"))
    UpdateMicrovmImageResponse.add_member(:build_role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "buildRoleArn"))
    UpdateMicrovmImageResponse.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    UpdateMicrovmImageResponse.add_member(:code_artifact, Shapes::ShapeRef.new(shape: CodeArtifact, required: true, location_name: "codeArtifact"))
    UpdateMicrovmImageResponse.add_member(:logging, Shapes::ShapeRef.new(shape: Logging, location_name: "logging"))
    UpdateMicrovmImageResponse.add_member(:egress_network_connectors, Shapes::ShapeRef.new(shape: UpdateMicrovmImageResponseEgressNetworkConnectorsList, location_name: "egressNetworkConnectors"))
    UpdateMicrovmImageResponse.add_member(:cpu_configurations, Shapes::ShapeRef.new(shape: CpuConfigurationList, location_name: "cpuConfigurations"))
    UpdateMicrovmImageResponse.add_member(:resources, Shapes::ShapeRef.new(shape: ResourcesList, location_name: "resources"))
    UpdateMicrovmImageResponse.add_member(:additional_os_capabilities, Shapes::ShapeRef.new(shape: CapabilityList, location_name: "additionalOsCapabilities"))
    UpdateMicrovmImageResponse.add_member(:hooks, Shapes::ShapeRef.new(shape: Hooks, location_name: "hooks"))
    UpdateMicrovmImageResponse.add_member(:environment_variables, Shapes::ShapeRef.new(shape: EnvironmentVariableMap, location_name: "environmentVariables"))
    UpdateMicrovmImageResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    UpdateMicrovmImageResponse.add_member(:image_version, Shapes::ShapeRef.new(shape: NonBlankString, required: true, location_name: "imageVersion"))
    UpdateMicrovmImageResponse.struct_class = Types::UpdateMicrovmImageResponse

    UpdateMicrovmImageResponseEgressNetworkConnectorsList.member = Shapes::ShapeRef.new(shape: NetworkConnector)

    UpdateMicrovmImageVersionRequest.add_member(:image_identifier, Shapes::ShapeRef.new(shape: MicrovmImageIdentifier, required: true, location: "uri", location_name: "imageIdentifier"))
    UpdateMicrovmImageVersionRequest.add_member(:image_version, Shapes::ShapeRef.new(shape: NonBlankString, required: true, location: "uri", location_name: "imageVersion"))
    UpdateMicrovmImageVersionRequest.add_member(:status, Shapes::ShapeRef.new(shape: MicrovmImageVersionStatus, required: true, location_name: "status"))
    UpdateMicrovmImageVersionRequest.struct_class = Types::UpdateMicrovmImageVersionRequest

    UpdateMicrovmImageVersionResponse.add_member(:base_image_arn, Shapes::ShapeRef.new(shape: NonBlankString, required: true, location_name: "baseImageArn"))
    UpdateMicrovmImageVersionResponse.add_member(:base_image_version, Shapes::ShapeRef.new(shape: Version, location_name: "baseImageVersion"))
    UpdateMicrovmImageVersionResponse.add_member(:build_role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "buildRoleArn"))
    UpdateMicrovmImageVersionResponse.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    UpdateMicrovmImageVersionResponse.add_member(:code_artifact, Shapes::ShapeRef.new(shape: CodeArtifact, required: true, location_name: "codeArtifact"))
    UpdateMicrovmImageVersionResponse.add_member(:logging, Shapes::ShapeRef.new(shape: Logging, location_name: "logging"))
    UpdateMicrovmImageVersionResponse.add_member(:egress_network_connectors, Shapes::ShapeRef.new(shape: UpdateMicrovmImageVersionResponseEgressNetworkConnectorsList, location_name: "egressNetworkConnectors"))
    UpdateMicrovmImageVersionResponse.add_member(:cpu_configurations, Shapes::ShapeRef.new(shape: CpuConfigurationList, location_name: "cpuConfigurations"))
    UpdateMicrovmImageVersionResponse.add_member(:resources, Shapes::ShapeRef.new(shape: ResourcesList, location_name: "resources"))
    UpdateMicrovmImageVersionResponse.add_member(:additional_os_capabilities, Shapes::ShapeRef.new(shape: CapabilityList, location_name: "additionalOsCapabilities"))
    UpdateMicrovmImageVersionResponse.add_member(:hooks, Shapes::ShapeRef.new(shape: Hooks, location_name: "hooks"))
    UpdateMicrovmImageVersionResponse.add_member(:environment_variables, Shapes::ShapeRef.new(shape: EnvironmentVariableMap, location_name: "environmentVariables"))
    UpdateMicrovmImageVersionResponse.add_member(:image_arn, Shapes::ShapeRef.new(shape: NonBlankString, required: true, location_name: "imageArn"))
    UpdateMicrovmImageVersionResponse.add_member(:image_version, Shapes::ShapeRef.new(shape: NonBlankString, required: true, location_name: "imageVersion"))
    UpdateMicrovmImageVersionResponse.add_member(:state, Shapes::ShapeRef.new(shape: MicrovmImageVersionState, required: true, location_name: "state"))
    UpdateMicrovmImageVersionResponse.add_member(:status, Shapes::ShapeRef.new(shape: MicrovmImageVersionStatus, required: true, location_name: "status"))
    UpdateMicrovmImageVersionResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    UpdateMicrovmImageVersionResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt"))
    UpdateMicrovmImageVersionResponse.add_member(:state_reason, Shapes::ShapeRef.new(shape: String, location_name: "stateReason"))
    UpdateMicrovmImageVersionResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    UpdateMicrovmImageVersionResponse.struct_class = Types::UpdateMicrovmImageVersionResponse

    UpdateMicrovmImageVersionResponseEgressNetworkConnectorsList.member = Shapes::ShapeRef.new(shape: NetworkConnector)

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ValidationException.struct_class = Types::ValidationException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2025-09-09"

      api.metadata = {
        "apiVersion" => "2025-09-09",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "lambda",
        "protocol" => "rest-json",
        "protocols" => ["rest-json"],
        "serviceFullName" => "Lambda MicroVMs",
        "serviceId" => "Lambda Microvms",
        "signatureVersion" => "v4",
        "signingName" => "lambda",
        "uid" => "lambda-microvms-2025-09-09",
      }

      api.add_operation(:create_microvm_auth_token, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateMicrovmAuthToken"
        o.http_method = "POST"
        o.http_request_uri = "/2025-09-09/microvms/{microvmIdentifier}/auth-token"
        o.input = Shapes::ShapeRef.new(shape: CreateMicrovmAuthTokenRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateMicrovmAuthTokenResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:create_microvm_image, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateMicrovmImage"
        o.http_method = "POST"
        o.http_request_uri = "/2025-09-09/microvm-images"
        o.input = Shapes::ShapeRef.new(shape: CreateMicrovmImageRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateMicrovmImageResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_microvm_shell_auth_token, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateMicrovmShellAuthToken"
        o.http_method = "POST"
        o.http_request_uri = "/2025-09-09/microvms/{microvmIdentifier}/shell-auth-token"
        o.input = Shapes::ShapeRef.new(shape: CreateMicrovmShellAuthTokenRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateMicrovmShellAuthTokenResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:delete_microvm_image, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteMicrovmImage"
        o.http_method = "DELETE"
        o.http_request_uri = "/2025-09-09/microvm-images/{imageIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: DeleteMicrovmImageInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteMicrovmImageOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:delete_microvm_image_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteMicrovmImageVersion"
        o.http_method = "DELETE"
        o.http_request_uri = "/2025-09-09/microvm-images/{imageIdentifier}/versions/{imageVersion}"
        o.input = Shapes::ShapeRef.new(shape: DeleteMicrovmImageVersionInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteMicrovmImageVersionOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_microvm, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetMicrovm"
        o.http_method = "GET"
        o.http_request_uri = "/2025-09-09/microvms/{microvmIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: GetMicrovmRequest)
        o.output = Shapes::ShapeRef.new(shape: GetMicrovmResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_microvm_image, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetMicrovmImage"
        o.http_method = "GET"
        o.http_request_uri = "/2025-09-09/microvm-images/{imageIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: GetMicrovmImageInput)
        o.output = Shapes::ShapeRef.new(shape: GetMicrovmImageOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_microvm_image_build, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetMicrovmImageBuild"
        o.http_method = "GET"
        o.http_request_uri = "/2025-09-09/microvm-images/{imageIdentifier}/versions/{imageVersion}/builds/{buildId}"
        o.input = Shapes::ShapeRef.new(shape: GetMicrovmImageBuildInput)
        o.output = Shapes::ShapeRef.new(shape: GetMicrovmImageBuildOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_microvm_image_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetMicrovmImageVersion"
        o.http_method = "GET"
        o.http_request_uri = "/2025-09-09/microvm-images/{imageIdentifier}/versions/{imageVersion}"
        o.input = Shapes::ShapeRef.new(shape: GetMicrovmImageVersionInput)
        o.output = Shapes::ShapeRef.new(shape: GetMicrovmImageVersionOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:list_managed_microvm_image_versions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListManagedMicrovmImageVersions"
        o.http_method = "GET"
        o.http_request_uri = "/2025-09-09/managed-microvm-images/{imageIdentifier}/versions"
        o.input = Shapes::ShapeRef.new(shape: ListManagedMicrovmImageVersionsInput)
        o.output = Shapes::ShapeRef.new(shape: ListManagedMicrovmImageVersionsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_managed_microvm_images, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListManagedMicrovmImages"
        o.http_method = "GET"
        o.http_request_uri = "/2025-09-09/managed-microvm-images"
        o.input = Shapes::ShapeRef.new(shape: ListManagedMicrovmImagesInput)
        o.output = Shapes::ShapeRef.new(shape: ListManagedMicrovmImagesOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_microvm_image_builds, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListMicrovmImageBuilds"
        o.http_method = "GET"
        o.http_request_uri = "/2025-09-09/microvm-images/{imageIdentifier}/versions/{imageVersion}/builds"
        o.input = Shapes::ShapeRef.new(shape: ListMicrovmImageBuildsInput)
        o.output = Shapes::ShapeRef.new(shape: ListMicrovmImageBuildsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_microvm_image_versions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListMicrovmImageVersions"
        o.http_method = "GET"
        o.http_request_uri = "/2025-09-09/microvm-images/{imageIdentifier}/versions"
        o.input = Shapes::ShapeRef.new(shape: ListMicrovmImageVersionsInput)
        o.output = Shapes::ShapeRef.new(shape: ListMicrovmImageVersionsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_microvm_images, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListMicrovmImages"
        o.http_method = "GET"
        o.http_request_uri = "/2025-09-09/microvm-images"
        o.input = Shapes::ShapeRef.new(shape: ListMicrovmImagesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListMicrovmImagesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_microvms, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListMicrovms"
        o.http_method = "GET"
        o.http_request_uri = "/2025-09-09/microvms"
        o.input = Shapes::ShapeRef.new(shape: ListMicrovmsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListMicrovmsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_tags, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTags"
        o.http_method = "GET"
        o.http_request_uri = "/2017-03-31/tags/{Resource}"
        o.input = Shapes::ShapeRef.new(shape: ListTagsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsResponse)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
      end)

      api.add_operation(:resume_microvm, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ResumeMicrovm"
        o.http_method = "POST"
        o.http_request_uri = "/2025-09-09/microvms/{microvmIdentifier}/resume"
        o.input = Shapes::ShapeRef.new(shape: ResumeMicrovmRequest)
        o.output = Shapes::ShapeRef.new(shape: ResumeMicrovmResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:run_microvm, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RunMicrovm"
        o.http_method = "POST"
        o.http_request_uri = "/2025-09-09/microvms"
        o.input = Shapes::ShapeRef.new(shape: RunMicrovmRequest)
        o.output = Shapes::ShapeRef.new(shape: RunMicrovmResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InsufficientCapacityException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:suspend_microvm, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SuspendMicrovm"
        o.http_method = "POST"
        o.http_request_uri = "/2025-09-09/microvms/{microvmIdentifier}/suspend"
        o.input = Shapes::ShapeRef.new(shape: SuspendMicrovmRequest)
        o.output = Shapes::ShapeRef.new(shape: SuspendMicrovmResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/2017-03-31/tags/{Resource}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceConflictException)
      end)

      api.add_operation(:terminate_microvm, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TerminateMicrovm"
        o.http_method = "DELETE"
        o.http_request_uri = "/2025-09-09/microvms/{microvmIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: TerminateMicrovmRequest)
        o.output = Shapes::ShapeRef.new(shape: TerminateMicrovmResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/2017-03-31/tags/{Resource}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceConflictException)
      end)

      api.add_operation(:update_microvm_image, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateMicrovmImage"
        o.http_method = "PUT"
        o.http_request_uri = "/2025-09-09/microvm-images/{imageIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: UpdateMicrovmImageRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateMicrovmImageResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:update_microvm_image_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateMicrovmImageVersion"
        o.http_method = "PATCH"
        o.http_request_uri = "/2025-09-09/microvm-images/{imageIdentifier}/versions/{imageVersion}"
        o.input = Shapes::ShapeRef.new(shape: UpdateMicrovmImageVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateMicrovmImageVersionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)
    end

  end
end
