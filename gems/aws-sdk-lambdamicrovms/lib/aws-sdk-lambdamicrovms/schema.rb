# frozen_string_literal: true

# This is generated code!

module Aws::LambdaMicrovms
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdamicrovms#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    Architecture = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lambdamicrovms#Architecture", name: "Architecture")
    AuthTokenKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambdamicrovms#AuthTokenKey", name: "AuthTokenKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[^\\s]+$"})
    AuthTokenValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambdamicrovms#AuthTokenValue", name: "AuthTokenValue", traits: {"smithy.api#length" => {"max" => 8000}, "smithy.api#sensitive" => {}})
    BuildState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lambdamicrovms#BuildState", name: "BuildState")
    Capability = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lambdamicrovms#Capability", name: "Capability")
    CapabilityList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lambdamicrovms#CapabilityList", name: "CapabilityList")
    Chipset = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lambdamicrovms#Chipset", name: "Chipset")
    CloudWatchLogging = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdamicrovms#CloudWatchLogging", name: "CloudWatchLogging")
    CodeArtifact = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.lambdamicrovms#CodeArtifact", name: "CodeArtifact")
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdamicrovms#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CpuConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdamicrovms#CpuConfiguration", name: "CpuConfiguration")
    CpuConfigurationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lambdamicrovms#CpuConfigurationList", name: "CpuConfigurationList")
    CreateMicrovmAuthTokenRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdamicrovms#CreateMicrovmAuthTokenRequest", name: "CreateMicrovmAuthTokenRequest")
    CreateMicrovmAuthTokenResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdamicrovms#CreateMicrovmAuthTokenResponse", name: "CreateMicrovmAuthTokenResponse")
    CreateMicrovmImageRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdamicrovms#CreateMicrovmImageRequest", name: "CreateMicrovmImageRequest")
    CreateMicrovmImageResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdamicrovms#CreateMicrovmImageResponse", name: "CreateMicrovmImageResponse")
    CreateMicrovmShellAuthTokenRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdamicrovms#CreateMicrovmShellAuthTokenRequest", name: "CreateMicrovmShellAuthTokenRequest")
    CreateMicrovmShellAuthTokenResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdamicrovms#CreateMicrovmShellAuthTokenResponse", name: "CreateMicrovmShellAuthTokenResponse")
    DeleteMicrovmImageInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdamicrovms#DeleteMicrovmImageInput", name: "DeleteMicrovmImageInput")
    DeleteMicrovmImageOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdamicrovms#DeleteMicrovmImageOutput", name: "DeleteMicrovmImageOutput")
    DeleteMicrovmImageVersionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdamicrovms#DeleteMicrovmImageVersionInput", name: "DeleteMicrovmImageVersionInput")
    DeleteMicrovmImageVersionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdamicrovms#DeleteMicrovmImageVersionOutput", name: "DeleteMicrovmImageVersionOutput")
    EnvironmentVariableKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambdamicrovms#EnvironmentVariableKey", name: "EnvironmentVariableKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[^\\s]+$"})
    EnvironmentVariableMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.lambdamicrovms#EnvironmentVariableMap", name: "EnvironmentVariableMap", traits: {"smithy.api#length" => {"max" => 50}})
    EnvironmentVariableValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambdamicrovms#EnvironmentVariableValue", name: "EnvironmentVariableValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 4096}, "smithy.api#sensitive" => {}})
    GetMicrovmImageBuildInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdamicrovms#GetMicrovmImageBuildInput", name: "GetMicrovmImageBuildInput")
    GetMicrovmImageBuildOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdamicrovms#GetMicrovmImageBuildOutput", name: "GetMicrovmImageBuildOutput")
    GetMicrovmImageInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdamicrovms#GetMicrovmImageInput", name: "GetMicrovmImageInput")
    GetMicrovmImageOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdamicrovms#GetMicrovmImageOutput", name: "GetMicrovmImageOutput")
    GetMicrovmImageVersionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdamicrovms#GetMicrovmImageVersionInput", name: "GetMicrovmImageVersionInput")
    GetMicrovmImageVersionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdamicrovms#GetMicrovmImageVersionOutput", name: "GetMicrovmImageVersionOutput")
    GetMicrovmRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdamicrovms#GetMicrovmRequest", name: "GetMicrovmRequest")
    GetMicrovmResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdamicrovms#GetMicrovmResponse", name: "GetMicrovmResponse")
    HookState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lambdamicrovms#HookState", name: "HookState")
    Hooks = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdamicrovms#Hooks", name: "Hooks")
    IdlePolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdamicrovms#IdlePolicy", name: "IdlePolicy")
    ImageName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambdamicrovms#ImageName", name: "ImageName", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9-_]+$"})
    InsufficientCapacityException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdamicrovms#InsufficientCapacityException", name: "InsufficientCapacityException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdamicrovms#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500, "smithy.api#retryable" => {}})
    InvalidParameterValueException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdamicrovms#InvalidParameterValueException", name: "InvalidParameterValueException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ListManagedMicrovmImageVersionsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdamicrovms#ListManagedMicrovmImageVersionsInput", name: "ListManagedMicrovmImageVersionsInput")
    ListManagedMicrovmImageVersionsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdamicrovms#ListManagedMicrovmImageVersionsOutput", name: "ListManagedMicrovmImageVersionsOutput")
    ListManagedMicrovmImagesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdamicrovms#ListManagedMicrovmImagesInput", name: "ListManagedMicrovmImagesInput")
    ListManagedMicrovmImagesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdamicrovms#ListManagedMicrovmImagesOutput", name: "ListManagedMicrovmImagesOutput")
    ListMicrovmImageBuildsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdamicrovms#ListMicrovmImageBuildsInput", name: "ListMicrovmImageBuildsInput")
    ListMicrovmImageBuildsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdamicrovms#ListMicrovmImageBuildsOutput", name: "ListMicrovmImageBuildsOutput")
    ListMicrovmImageVersionsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdamicrovms#ListMicrovmImageVersionsInput", name: "ListMicrovmImageVersionsInput")
    ListMicrovmImageVersionsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdamicrovms#ListMicrovmImageVersionsOutput", name: "ListMicrovmImageVersionsOutput")
    ListMicrovmImagesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdamicrovms#ListMicrovmImagesRequest", name: "ListMicrovmImagesRequest")
    ListMicrovmImagesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdamicrovms#ListMicrovmImagesResponse", name: "ListMicrovmImagesResponse")
    ListMicrovmsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdamicrovms#ListMicrovmsRequest", name: "ListMicrovmsRequest")
    ListMicrovmsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdamicrovms#ListMicrovmsResponse", name: "ListMicrovmsResponse")
    ListOfPortSpecification = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lambdamicrovms#ListOfPortSpecification", name: "ListOfPortSpecification", traits: {"smithy.api#length" => {"min" => 1}})
    ListTagsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdamicrovms#ListTagsRequest", name: "ListTagsRequest")
    ListTagsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdamicrovms#ListTagsResponse", name: "ListTagsResponse")
    Logging = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.lambdamicrovms#Logging", name: "Logging")
    LoggingDisabled = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdamicrovms#LoggingDisabled", name: "LoggingDisabled")
    ManagedMicrovmImageSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdamicrovms#ManagedMicrovmImageSummary", name: "ManagedMicrovmImageSummary")
    ManagedMicrovmImageSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lambdamicrovms#ManagedMicrovmImageSummaryList", name: "ManagedMicrovmImageSummaryList")
    ManagedMicrovmImageVersion = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdamicrovms#ManagedMicrovmImageVersion", name: "ManagedMicrovmImageVersion")
    ManagedMicrovmImageVersionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lambdamicrovms#ManagedMicrovmImageVersionList", name: "ManagedMicrovmImageVersionList")
    ManagedMicrovmImageVersionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lambdamicrovms#ManagedMicrovmImageVersionStatus", name: "ManagedMicrovmImageVersionStatus")
    MicrovmHooks = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdamicrovms#MicrovmHooks", name: "MicrovmHooks")
    MicrovmIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambdamicrovms#MicrovmIdentifier", name: "MicrovmIdentifier", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    MicrovmImageArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambdamicrovms#MicrovmImageArn", name: "MicrovmImageArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:[a-z0-9-]+:lambda:[a-z0-9-]*:[a-z0-9]*:microvm-image:.+$"})
    MicrovmImageBuildSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lambdamicrovms#MicrovmImageBuildSummaries", name: "MicrovmImageBuildSummaries")
    MicrovmImageBuildSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdamicrovms#MicrovmImageBuildSummary", name: "MicrovmImageBuildSummary")
    MicrovmImageHooks = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdamicrovms#MicrovmImageHooks", name: "MicrovmImageHooks")
    MicrovmImageIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambdamicrovms#MicrovmImageIdentifier", name: "MicrovmImageIdentifier", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    MicrovmImageState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lambdamicrovms#MicrovmImageState", name: "MicrovmImageState")
    MicrovmImageSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lambdamicrovms#MicrovmImageSummaries", name: "MicrovmImageSummaries")
    MicrovmImageSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdamicrovms#MicrovmImageSummary", name: "MicrovmImageSummary")
    MicrovmImageVersionState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lambdamicrovms#MicrovmImageVersionState", name: "MicrovmImageVersionState")
    MicrovmImageVersionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lambdamicrovms#MicrovmImageVersionStatus", name: "MicrovmImageVersionStatus")
    MicrovmImageVersionSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdamicrovms#MicrovmImageVersionSummary", name: "MicrovmImageVersionSummary")
    MicrovmImageVersionSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lambdamicrovms#MicrovmImageVersionSummaryList", name: "MicrovmImageVersionSummaryList")
    MicrovmItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdamicrovms#MicrovmItem", name: "MicrovmItem")
    MicrovmItemList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lambdamicrovms#MicrovmItemList", name: "MicrovmItemList")
    MicrovmState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lambdamicrovms#MicrovmState", name: "MicrovmState")
    NetworkConnector = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambdamicrovms#NetworkConnector", name: "NetworkConnector", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    NetworkConnectorList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lambdamicrovms#NetworkConnectorList", name: "NetworkConnectorList", traits: {"smithy.api#length" => {"max" => 10}})
    NonBlankString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambdamicrovms#NonBlankString", name: "NonBlankString", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^[^\\s]+$"})
    PortNumber = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lambdamicrovms#PortNumber", name: "PortNumber", traits: {"smithy.api#range" => {"min" => 1, "max" => 65535}})
    PortRange = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdamicrovms#PortRange", name: "PortRange")
    PortSpecification = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.lambdamicrovms#PortSpecification", name: "PortSpecification")
    PositiveInteger = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lambdamicrovms#PositiveInteger", name: "PositiveInteger", traits: {"smithy.api#range" => {"min" => 1}})
    ResourceConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdamicrovms#ResourceConflictException", name: "ResourceConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdamicrovms#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    Resources = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdamicrovms#Resources", name: "Resources")
    ResourcesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lambdamicrovms#ResourcesList", name: "ResourcesList", traits: {"smithy.api#length" => {"max" => 1}})
    ResumeMicrovmRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdamicrovms#ResumeMicrovmRequest", name: "ResumeMicrovmRequest")
    ResumeMicrovmResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdamicrovms#ResumeMicrovmResponse", name: "ResumeMicrovmResponse")
    RoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambdamicrovms#RoleArn", name: "RoleArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:aws[a-z\\-]*:iam::[0-9]{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+$"})
    RunHookPayload = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambdamicrovms#RunHookPayload", name: "RunHookPayload", traits: {"smithy.api#length" => {"max" => 4096}, "smithy.api#sensitive" => {}})
    RunMicrovmRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdamicrovms#RunMicrovmRequest", name: "RunMicrovmRequest")
    RunMicrovmResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdamicrovms#RunMicrovmResponse", name: "RunMicrovmResponse")
    ServiceException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdamicrovms#ServiceException", name: "ServiceException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdamicrovms#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    SnapshotBuild = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdamicrovms#SnapshotBuild", name: "SnapshotBuild")
    String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambdamicrovms#String", name: "String")
    SuspendMicrovmRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdamicrovms#SuspendMicrovmRequest", name: "SuspendMicrovmRequest")
    SuspendMicrovmResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdamicrovms#SuspendMicrovmResponse", name: "SuspendMicrovmResponse")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambdamicrovms#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lambdamicrovms#TagKeyList", name: "TagKeyList")
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdamicrovms#TagResourceRequest", name: "TagResourceRequest")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambdamicrovms#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    TaggableResource = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambdamicrovms#TaggableResource", name: "TaggableResource", traits: {"smithy.api#length" => {"min" => 1, "max" => 10000}, "smithy.api#pattern" => "^arn:(aws[a-zA-Z-]*):lambda:(eusc-)?[a-z]{2}((-gov)|(-iso([a-z]?)))?-[a-z]+-\\d{1}:\\d{12}:(function:[a-zA-Z0-9-_]+(:(\\$LATEST|[a-zA-Z0-9-_]+))?|layer:([a-zA-Z0-9-_]+)|code-signing-config:csc-[a-z0-9]{17}|event-source-mapping:[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}|(capacity-provider|network-connector|microvm-image):[a-zA-Z0-9-_]+)$"})
    Tags = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.lambdamicrovms#Tags", name: "Tags")
    TerminateMicrovmRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdamicrovms#TerminateMicrovmRequest", name: "TerminateMicrovmRequest")
    TerminateMicrovmResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdamicrovms#TerminateMicrovmResponse", name: "TerminateMicrovmResponse")
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdamicrovms#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429, "smithy.api#retryable" => {"throttling" => true}})
    TokenParts = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.lambdamicrovms#TokenParts", name: "TokenParts", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    TooManyRequestsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdamicrovms#TooManyRequestsException", name: "TooManyRequestsException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdamicrovms#UntagResourceRequest", name: "UntagResourceRequest")
    UpdateMicrovmImageRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdamicrovms#UpdateMicrovmImageRequest", name: "UpdateMicrovmImageRequest")
    UpdateMicrovmImageResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdamicrovms#UpdateMicrovmImageResponse", name: "UpdateMicrovmImageResponse")
    UpdateMicrovmImageVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdamicrovms#UpdateMicrovmImageVersionRequest", name: "UpdateMicrovmImageVersionRequest")
    UpdateMicrovmImageVersionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdamicrovms#UpdateMicrovmImageVersionResponse", name: "UpdateMicrovmImageVersionResponse")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdamicrovms#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Version = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambdamicrovms#Version", name: "Version", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^[^\\s]+$"})

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    AccessDeniedException.type = Types::AccessDeniedException
    Architecture.add_member(:arm_64, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ARM_64", traits: {"smithy.api#enumValue" => "ARM_64"}))
    BuildState.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    BuildState.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    BuildState.add_member(:successful, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCESSFUL", traits: {"smithy.api#enumValue" => "SUCCESSFUL"}))
    BuildState.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    Capability.add_member(:all, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALL", traits: {"smithy.api#enumValue" => "ALL"}))
    CapabilityList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Capability, name: "member"))
    Chipset.add_member(:graviton, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GRAVITON", traits: {"smithy.api#enumValue" => "GRAVITON"}))
    CloudWatchLogging.add_member(:log_group, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "logGroup", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^[a-zA-Z0-9_\\-/.#]+$"}))
    CloudWatchLogging.add_member(:log_stream, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "logStream", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^[^:*]*$"}))
    CloudWatchLogging.type = Types::CloudWatchLogging
    CodeArtifact.add_member(:uri, Types::CodeArtifact::Uri, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "uri"))
    CodeArtifact.add_member(:unknown, Types::CodeArtifact::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    CodeArtifact.type = Types::CodeArtifact
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    ConflictException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceId"))
    ConflictException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceType"))
    ConflictException.type = Types::ConflictException
    CpuConfiguration.add_member(:architecture, ::Smithy::Schema::Shapes::MemberShape.new(target: Architecture, name: "architecture", traits: {"smithy.api#required" => {}}))
    CpuConfiguration.type = Types::CpuConfiguration
    CpuConfigurationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CpuConfiguration, name: "member"))
    CreateMicrovmAuthTokenRequest.add_member(:microvm_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: MicrovmIdentifier, name: "microvmIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateMicrovmAuthTokenRequest.add_member(:expiration_in_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, name: "expirationInMinutes", traits: {"smithy.api#required" => {}}))
    CreateMicrovmAuthTokenRequest.add_member(:allowed_ports, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfPortSpecification, name: "allowedPorts", traits: {"smithy.api#required" => {}}))
    CreateMicrovmAuthTokenRequest.type = Types::CreateMicrovmAuthTokenRequest
    CreateMicrovmAuthTokenResponse.add_member(:auth_token, ::Smithy::Schema::Shapes::MemberShape.new(target: TokenParts, name: "authToken", traits: {"smithy.api#required" => {}}))
    CreateMicrovmAuthTokenResponse.type = Types::CreateMicrovmAuthTokenResponse
    CreateMicrovmImageRequest.add_member(:base_image_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "baseImageArn", traits: {"smithy.api#required" => {}}))
    CreateMicrovmImageRequest.add_member(:base_image_version, ::Smithy::Schema::Shapes::MemberShape.new(target: Version, name: "baseImageVersion"))
    CreateMicrovmImageRequest.add_member(:build_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "buildRoleArn", traits: {"smithy.api#required" => {}}))
    CreateMicrovmImageRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "description"))
    CreateMicrovmImageRequest.add_member(:code_artifact, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeArtifact, name: "codeArtifact", traits: {"smithy.api#required" => {}}))
    CreateMicrovmImageRequest.add_member(:logging, ::Smithy::Schema::Shapes::MemberShape.new(target: Logging, name: "logging"))
    CreateMicrovmImageRequest.add_member(:egress_network_connectors, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkConnectorList, name: "egressNetworkConnectors", traits: {"smithy.api#length" => {"max" => 1}}))
    CreateMicrovmImageRequest.add_member(:cpu_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: CpuConfigurationList, name: "cpuConfigurations"))
    CreateMicrovmImageRequest.add_member(:resources, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourcesList, name: "resources"))
    CreateMicrovmImageRequest.add_member(:additional_os_capabilities, ::Smithy::Schema::Shapes::MemberShape.new(target: CapabilityList, name: "additionalOsCapabilities"))
    CreateMicrovmImageRequest.add_member(:hooks, ::Smithy::Schema::Shapes::MemberShape.new(target: Hooks, name: "hooks"))
    CreateMicrovmImageRequest.add_member(:environment_variables, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentVariableMap, name: "environmentVariables"))
    CreateMicrovmImageRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageName, name: "name", traits: {"smithy.api#required" => {}}))
    CreateMicrovmImageRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    CreateMicrovmImageRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#length" => {"min" => 1, "max" => 128}}))
    CreateMicrovmImageRequest.type = Types::CreateMicrovmImageRequest
    CreateMicrovmImageResponse.add_member(:image_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "imageArn", traits: {"smithy.api#required" => {}}))
    CreateMicrovmImageResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageName, name: "name", traits: {"smithy.api#required" => {}}))
    CreateMicrovmImageResponse.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: MicrovmImageState, name: "state", traits: {"smithy.api#required" => {}}))
    CreateMicrovmImageResponse.add_member(:latest_active_image_version, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "latestActiveImageVersion"))
    CreateMicrovmImageResponse.add_member(:latest_failed_image_version, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "latestFailedImageVersion"))
    CreateMicrovmImageResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#required" => {}}))
    CreateMicrovmImageResponse.add_member(:base_image_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "baseImageArn", traits: {"smithy.api#required" => {}}))
    CreateMicrovmImageResponse.add_member(:base_image_version, ::Smithy::Schema::Shapes::MemberShape.new(target: Version, name: "baseImageVersion"))
    CreateMicrovmImageResponse.add_member(:build_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "buildRoleArn", traits: {"smithy.api#required" => {}}))
    CreateMicrovmImageResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "description"))
    CreateMicrovmImageResponse.add_member(:code_artifact, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeArtifact, name: "codeArtifact", traits: {"smithy.api#required" => {}}))
    CreateMicrovmImageResponse.add_member(:logging, ::Smithy::Schema::Shapes::MemberShape.new(target: Logging, name: "logging"))
    CreateMicrovmImageResponse.add_member(:egress_network_connectors, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkConnectorList, name: "egressNetworkConnectors", traits: {"smithy.api#length" => {"max" => 1}}))
    CreateMicrovmImageResponse.add_member(:cpu_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: CpuConfigurationList, name: "cpuConfigurations"))
    CreateMicrovmImageResponse.add_member(:resources, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourcesList, name: "resources"))
    CreateMicrovmImageResponse.add_member(:additional_os_capabilities, ::Smithy::Schema::Shapes::MemberShape.new(target: CapabilityList, name: "additionalOsCapabilities"))
    CreateMicrovmImageResponse.add_member(:hooks, ::Smithy::Schema::Shapes::MemberShape.new(target: Hooks, name: "hooks"))
    CreateMicrovmImageResponse.add_member(:environment_variables, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentVariableMap, name: "environmentVariables"))
    CreateMicrovmImageResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    CreateMicrovmImageResponse.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt"))
    CreateMicrovmImageResponse.add_member(:image_version, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "imageVersion", traits: {"smithy.api#required" => {}}))
    CreateMicrovmImageResponse.type = Types::CreateMicrovmImageResponse
    CreateMicrovmShellAuthTokenRequest.add_member(:microvm_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: MicrovmIdentifier, name: "microvmIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateMicrovmShellAuthTokenRequest.add_member(:expiration_in_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, name: "expirationInMinutes", traits: {"smithy.api#required" => {}}))
    CreateMicrovmShellAuthTokenRequest.type = Types::CreateMicrovmShellAuthTokenRequest
    CreateMicrovmShellAuthTokenResponse.add_member(:auth_token, ::Smithy::Schema::Shapes::MemberShape.new(target: TokenParts, name: "authToken", traits: {"smithy.api#required" => {}}))
    CreateMicrovmShellAuthTokenResponse.type = Types::CreateMicrovmShellAuthTokenResponse
    DeleteMicrovmImageInput.add_member(:image_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: MicrovmImageIdentifier, name: "imageIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteMicrovmImageInput.type = Types::DeleteMicrovmImageInput
    DeleteMicrovmImageOutput.add_member(:image_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: MicrovmImageIdentifier, name: "imageIdentifier", traits: {"smithy.api#required" => {}}))
    DeleteMicrovmImageOutput.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: MicrovmImageState, name: "state", traits: {"smithy.api#required" => {}}))
    DeleteMicrovmImageOutput.type = Types::DeleteMicrovmImageOutput
    DeleteMicrovmImageVersionInput.add_member(:image_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: MicrovmImageIdentifier, name: "imageIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteMicrovmImageVersionInput.add_member(:image_version, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "imageVersion", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteMicrovmImageVersionInput.type = Types::DeleteMicrovmImageVersionInput
    DeleteMicrovmImageVersionOutput.add_member(:image_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: MicrovmImageIdentifier, name: "imageIdentifier", traits: {"smithy.api#required" => {}}))
    DeleteMicrovmImageVersionOutput.add_member(:image_version, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "imageVersion", traits: {"smithy.api#required" => {}}))
    DeleteMicrovmImageVersionOutput.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: MicrovmImageVersionState, name: "state", traits: {"smithy.api#required" => {}}))
    DeleteMicrovmImageVersionOutput.type = Types::DeleteMicrovmImageVersionOutput
    EnvironmentVariableMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentVariableKey, name: "key"))
    EnvironmentVariableMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentVariableValue, name: "value"))
    GetMicrovmImageBuildInput.add_member(:image_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: MicrovmImageIdentifier, name: "imageIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetMicrovmImageBuildInput.add_member(:image_version, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "imageVersion", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetMicrovmImageBuildInput.add_member(:build_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "buildId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetMicrovmImageBuildInput.type = Types::GetMicrovmImageBuildInput
    GetMicrovmImageBuildOutput.add_member(:image_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "imageArn", traits: {"smithy.api#required" => {}}))
    GetMicrovmImageBuildOutput.add_member(:image_version, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "imageVersion", traits: {"smithy.api#required" => {}}))
    GetMicrovmImageBuildOutput.add_member(:build_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "buildId", traits: {"smithy.api#required" => {}}))
    GetMicrovmImageBuildOutput.add_member(:build_state, ::Smithy::Schema::Shapes::MemberShape.new(target: BuildState, name: "buildState", traits: {"smithy.api#required" => {}}))
    GetMicrovmImageBuildOutput.add_member(:architecture, ::Smithy::Schema::Shapes::MemberShape.new(target: Architecture, name: "architecture", traits: {"smithy.api#required" => {}}))
    GetMicrovmImageBuildOutput.add_member(:chipset, ::Smithy::Schema::Shapes::MemberShape.new(target: Chipset, name: "chipset", traits: {"smithy.api#required" => {}}))
    GetMicrovmImageBuildOutput.add_member(:chipset_generation, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "chipsetGeneration", traits: {"smithy.api#required" => {}}))
    GetMicrovmImageBuildOutput.add_member(:state_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "stateReason"))
    GetMicrovmImageBuildOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#required" => {}}))
    GetMicrovmImageBuildOutput.add_member(:snapshot_build, ::Smithy::Schema::Shapes::MemberShape.new(target: SnapshotBuild, name: "snapshotBuild"))
    GetMicrovmImageBuildOutput.type = Types::GetMicrovmImageBuildOutput
    GetMicrovmImageInput.add_member(:image_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: MicrovmImageIdentifier, name: "imageIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetMicrovmImageInput.type = Types::GetMicrovmImageInput
    GetMicrovmImageOutput.add_member(:image_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "imageArn", traits: {"smithy.api#required" => {}}))
    GetMicrovmImageOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageName, name: "name", traits: {"smithy.api#required" => {}}))
    GetMicrovmImageOutput.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: MicrovmImageState, name: "state", traits: {"smithy.api#required" => {}}))
    GetMicrovmImageOutput.add_member(:latest_active_image_version, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "latestActiveImageVersion"))
    GetMicrovmImageOutput.add_member(:latest_failed_image_version, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "latestFailedImageVersion"))
    GetMicrovmImageOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#required" => {}}))
    GetMicrovmImageOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    GetMicrovmImageOutput.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt"))
    GetMicrovmImageOutput.type = Types::GetMicrovmImageOutput
    GetMicrovmImageVersionInput.add_member(:image_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: MicrovmImageIdentifier, name: "imageIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetMicrovmImageVersionInput.add_member(:image_version, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "imageVersion", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetMicrovmImageVersionInput.type = Types::GetMicrovmImageVersionInput
    GetMicrovmImageVersionOutput.add_member(:base_image_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "baseImageArn", traits: {"smithy.api#required" => {}}))
    GetMicrovmImageVersionOutput.add_member(:base_image_version, ::Smithy::Schema::Shapes::MemberShape.new(target: Version, name: "baseImageVersion"))
    GetMicrovmImageVersionOutput.add_member(:build_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "buildRoleArn", traits: {"smithy.api#required" => {}}))
    GetMicrovmImageVersionOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "description"))
    GetMicrovmImageVersionOutput.add_member(:code_artifact, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeArtifact, name: "codeArtifact", traits: {"smithy.api#required" => {}}))
    GetMicrovmImageVersionOutput.add_member(:logging, ::Smithy::Schema::Shapes::MemberShape.new(target: Logging, name: "logging"))
    GetMicrovmImageVersionOutput.add_member(:egress_network_connectors, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkConnectorList, name: "egressNetworkConnectors", traits: {"smithy.api#length" => {"max" => 1}}))
    GetMicrovmImageVersionOutput.add_member(:cpu_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: CpuConfigurationList, name: "cpuConfigurations"))
    GetMicrovmImageVersionOutput.add_member(:resources, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourcesList, name: "resources"))
    GetMicrovmImageVersionOutput.add_member(:additional_os_capabilities, ::Smithy::Schema::Shapes::MemberShape.new(target: CapabilityList, name: "additionalOsCapabilities"))
    GetMicrovmImageVersionOutput.add_member(:hooks, ::Smithy::Schema::Shapes::MemberShape.new(target: Hooks, name: "hooks"))
    GetMicrovmImageVersionOutput.add_member(:environment_variables, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentVariableMap, name: "environmentVariables"))
    GetMicrovmImageVersionOutput.add_member(:image_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "imageArn", traits: {"smithy.api#required" => {}}))
    GetMicrovmImageVersionOutput.add_member(:image_version, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "imageVersion", traits: {"smithy.api#required" => {}}))
    GetMicrovmImageVersionOutput.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: MicrovmImageVersionState, name: "state", traits: {"smithy.api#required" => {}}))
    GetMicrovmImageVersionOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: MicrovmImageVersionStatus, name: "status", traits: {"smithy.api#required" => {}}))
    GetMicrovmImageVersionOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#required" => {}}))
    GetMicrovmImageVersionOutput.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt"))
    GetMicrovmImageVersionOutput.add_member(:state_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "stateReason"))
    GetMicrovmImageVersionOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    GetMicrovmImageVersionOutput.type = Types::GetMicrovmImageVersionOutput
    GetMicrovmRequest.add_member(:microvm_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: MicrovmIdentifier, name: "microvmIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetMicrovmRequest.type = Types::GetMicrovmRequest
    GetMicrovmResponse.add_member(:microvm_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MicrovmIdentifier, name: "microvmId", traits: {"smithy.api#required" => {}}))
    GetMicrovmResponse.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: MicrovmState, name: "state", traits: {"smithy.api#required" => {}}))
    GetMicrovmResponse.add_member(:endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "endpoint", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#required" => {}}))
    GetMicrovmResponse.add_member(:image_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: MicrovmImageArn, name: "imageArn", traits: {"smithy.api#required" => {}}))
    GetMicrovmResponse.add_member(:image_version, ::Smithy::Schema::Shapes::MemberShape.new(target: Version, name: "imageVersion", traits: {"smithy.api#required" => {}}))
    GetMicrovmResponse.add_member(:execution_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "executionRoleArn"))
    GetMicrovmResponse.add_member(:idle_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: IdlePolicy, name: "idlePolicy"))
    GetMicrovmResponse.add_member(:maximum_duration_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maximumDurationInSeconds", traits: {"smithy.api#required" => {}}))
    GetMicrovmResponse.add_member(:started_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "startedAt", traits: {"smithy.api#required" => {}}))
    GetMicrovmResponse.add_member(:terminated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "terminatedAt"))
    GetMicrovmResponse.add_member(:state_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "stateReason"))
    GetMicrovmResponse.add_member(:ingress_network_connectors, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkConnectorList, name: "ingressNetworkConnectors"))
    GetMicrovmResponse.add_member(:egress_network_connectors, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkConnectorList, name: "egressNetworkConnectors"))
    GetMicrovmResponse.type = Types::GetMicrovmResponse
    HookState.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    HookState.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    Hooks.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "port", traits: {"smithy.api#range" => {"min" => 1, "max" => 65535}}))
    Hooks.add_member(:microvm_hooks, ::Smithy::Schema::Shapes::MemberShape.new(target: MicrovmHooks, name: "microvmHooks"))
    Hooks.add_member(:microvm_image_hooks, ::Smithy::Schema::Shapes::MemberShape.new(target: MicrovmImageHooks, name: "microvmImageHooks"))
    Hooks.type = Types::Hooks
    IdlePolicy.add_member(:max_idle_duration_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxIdleDurationSeconds", traits: {"smithy.api#range" => {"min" => 60}, "smithy.api#required" => {}}))
    IdlePolicy.add_member(:suspended_duration_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "suspendedDurationSeconds", traits: {"smithy.api#range" => {"min" => 0}, "smithy.api#required" => {}}))
    IdlePolicy.add_member(:auto_resume_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "autoResumeEnabled", traits: {"smithy.api#required" => {}}))
    IdlePolicy.type = Types::IdlePolicy
    InsufficientCapacityException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    InsufficientCapacityException.type = Types::InsufficientCapacityException
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    InternalServerException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "retryAfterSeconds", traits: {"smithy.api#httpHeader" => "Retry-After"}))
    InternalServerException.type = Types::InternalServerException
    InvalidParameterValueException.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Type"))
    InvalidParameterValueException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    InvalidParameterValueException.type = Types::InvalidParameterValueException
    ListManagedMicrovmImageVersionsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 50}}))
    ListManagedMicrovmImageVersionsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListManagedMicrovmImageVersionsInput.add_member(:image_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: MicrovmImageIdentifier, name: "imageIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListManagedMicrovmImageVersionsInput.type = Types::ListManagedMicrovmImageVersionsInput
    ListManagedMicrovmImageVersionsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken"))
    ListManagedMicrovmImageVersionsOutput.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedMicrovmImageVersionList, name: "items", traits: {"smithy.api#required" => {}}))
    ListManagedMicrovmImageVersionsOutput.type = Types::ListManagedMicrovmImageVersionsOutput
    ListManagedMicrovmImagesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 50}}))
    ListManagedMicrovmImagesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListManagedMicrovmImagesInput.type = Types::ListManagedMicrovmImagesInput
    ListManagedMicrovmImagesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken"))
    ListManagedMicrovmImagesOutput.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedMicrovmImageSummaryList, name: "items", traits: {"smithy.api#required" => {}}))
    ListManagedMicrovmImagesOutput.type = Types::ListManagedMicrovmImagesOutput
    ListMicrovmImageBuildsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 50}}))
    ListMicrovmImageBuildsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListMicrovmImageBuildsInput.add_member(:image_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: MicrovmImageIdentifier, name: "imageIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListMicrovmImageBuildsInput.add_member(:image_version, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "imageVersion", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListMicrovmImageBuildsInput.add_member(:architecture, ::Smithy::Schema::Shapes::MemberShape.new(target: Architecture, name: "architecture", traits: {"smithy.api#httpQuery" => "architecture"}))
    ListMicrovmImageBuildsInput.add_member(:chipset, ::Smithy::Schema::Shapes::MemberShape.new(target: Chipset, name: "chipset", traits: {"smithy.api#httpQuery" => "chipset"}))
    ListMicrovmImageBuildsInput.add_member(:chipset_generation, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "chipsetGeneration", traits: {"smithy.api#httpQuery" => "chipsetGeneration"}))
    ListMicrovmImageBuildsInput.type = Types::ListMicrovmImageBuildsInput
    ListMicrovmImageBuildsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken"))
    ListMicrovmImageBuildsOutput.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: MicrovmImageBuildSummaries, name: "items", traits: {"smithy.api#required" => {}}))
    ListMicrovmImageBuildsOutput.type = Types::ListMicrovmImageBuildsOutput
    ListMicrovmImageVersionsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 50}}))
    ListMicrovmImageVersionsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListMicrovmImageVersionsInput.add_member(:image_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: MicrovmImageIdentifier, name: "imageIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListMicrovmImageVersionsInput.type = Types::ListMicrovmImageVersionsInput
    ListMicrovmImageVersionsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken"))
    ListMicrovmImageVersionsOutput.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: MicrovmImageVersionSummaryList, name: "items", traits: {"smithy.api#required" => {}}))
    ListMicrovmImageVersionsOutput.type = Types::ListMicrovmImageVersionsOutput
    ListMicrovmImagesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 50}}))
    ListMicrovmImagesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListMicrovmImagesRequest.add_member(:name_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "nameFilter", traits: {"smithy.api#httpQuery" => "nameFilter"}))
    ListMicrovmImagesRequest.type = Types::ListMicrovmImagesRequest
    ListMicrovmImagesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken"))
    ListMicrovmImagesResponse.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: MicrovmImageSummaries, name: "items", traits: {"smithy.api#required" => {}}))
    ListMicrovmImagesResponse.type = Types::ListMicrovmImagesResponse
    ListMicrovmsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 50}}))
    ListMicrovmsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListMicrovmsRequest.add_member(:image_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: MicrovmImageIdentifier, name: "imageIdentifier", traits: {"smithy.api#httpQuery" => "imageIdentifier"}))
    ListMicrovmsRequest.add_member(:image_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "imageVersion", traits: {"smithy.api#httpQuery" => "imageVersion"}))
    ListMicrovmsRequest.type = Types::ListMicrovmsRequest
    ListMicrovmsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken"))
    ListMicrovmsResponse.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: MicrovmItemList, name: "items", traits: {"smithy.api#required" => {}}))
    ListMicrovmsResponse.type = Types::ListMicrovmsResponse
    ListOfPortSpecification.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PortSpecification, name: "member"))
    ListTagsRequest.add_member(:resource, ::Smithy::Schema::Shapes::MemberShape.new(target: TaggableResource, name: "Resource", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsRequest.type = Types::ListTagsRequest
    ListTagsResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    ListTagsResponse.type = Types::ListTagsResponse
    Logging.add_member(:disabled, Types::Logging::Disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: LoggingDisabled, name: "disabled"))
    Logging.add_member(:cloud_watch, Types::Logging::CloudWatch, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchLogging, name: "cloudWatch"))
    Logging.add_member(:unknown, Types::Logging::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    Logging.type = Types::Logging
    LoggingDisabled.type = Types::LoggingDisabled
    ManagedMicrovmImageSummary.add_member(:image_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "imageArn", traits: {"smithy.api#required" => {}}))
    ManagedMicrovmImageSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#required" => {}}))
    ManagedMicrovmImageSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt"))
    ManagedMicrovmImageSummary.type = Types::ManagedMicrovmImageSummary
    ManagedMicrovmImageSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedMicrovmImageSummary, name: "member"))
    ManagedMicrovmImageVersion.add_member(:image_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "imageArn", traits: {"smithy.api#required" => {}}))
    ManagedMicrovmImageVersion.add_member(:image_version, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "imageVersion", traits: {"smithy.api#required" => {}}))
    ManagedMicrovmImageVersion.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedMicrovmImageVersionStatus, name: "status"))
    ManagedMicrovmImageVersion.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#required" => {}}))
    ManagedMicrovmImageVersion.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt"))
    ManagedMicrovmImageVersion.type = Types::ManagedMicrovmImageVersion
    ManagedMicrovmImageVersionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedMicrovmImageVersion, name: "member"))
    ManagedMicrovmImageVersionStatus.add_member(:available, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AVAILABLE", traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    ManagedMicrovmImageVersionStatus.add_member(:deprecated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEPRECATED", traits: {"smithy.api#enumValue" => "DEPRECATED"}))
    MicrovmHooks.add_member(:run, ::Smithy::Schema::Shapes::MemberShape.new(target: HookState, name: "run", traits: {"smithy.api#default" => "DISABLED"}))
    MicrovmHooks.add_member(:run_timeout_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "runTimeoutInSeconds", traits: {"smithy.api#default" => 1, "smithy.api#range" => {"min" => 1, "max" => 60}}))
    MicrovmHooks.add_member(:resume, ::Smithy::Schema::Shapes::MemberShape.new(target: HookState, name: "resume", traits: {"smithy.api#default" => "DISABLED"}))
    MicrovmHooks.add_member(:resume_timeout_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "resumeTimeoutInSeconds", traits: {"smithy.api#default" => 1, "smithy.api#range" => {"min" => 1, "max" => 60}}))
    MicrovmHooks.add_member(:suspend, ::Smithy::Schema::Shapes::MemberShape.new(target: HookState, name: "suspend", traits: {"smithy.api#default" => "DISABLED"}))
    MicrovmHooks.add_member(:suspend_timeout_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "suspendTimeoutInSeconds", traits: {"smithy.api#default" => 1, "smithy.api#range" => {"min" => 1, "max" => 60}}))
    MicrovmHooks.add_member(:terminate, ::Smithy::Schema::Shapes::MemberShape.new(target: HookState, name: "terminate", traits: {"smithy.api#default" => "DISABLED"}))
    MicrovmHooks.add_member(:terminate_timeout_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "terminateTimeoutInSeconds", traits: {"smithy.api#default" => 1, "smithy.api#range" => {"min" => 1, "max" => 60}}))
    MicrovmHooks.type = Types::MicrovmHooks
    MicrovmImageBuildSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MicrovmImageBuildSummary, name: "member"))
    MicrovmImageBuildSummary.add_member(:image_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "imageArn", traits: {"smithy.api#required" => {}}))
    MicrovmImageBuildSummary.add_member(:image_version, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "imageVersion", traits: {"smithy.api#required" => {}}))
    MicrovmImageBuildSummary.add_member(:build_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "buildId", traits: {"smithy.api#required" => {}}))
    MicrovmImageBuildSummary.add_member(:build_state, ::Smithy::Schema::Shapes::MemberShape.new(target: BuildState, name: "buildState", traits: {"smithy.api#required" => {}}))
    MicrovmImageBuildSummary.add_member(:architecture, ::Smithy::Schema::Shapes::MemberShape.new(target: Architecture, name: "architecture", traits: {"smithy.api#required" => {}}))
    MicrovmImageBuildSummary.add_member(:chipset, ::Smithy::Schema::Shapes::MemberShape.new(target: Chipset, name: "chipset", traits: {"smithy.api#required" => {}}))
    MicrovmImageBuildSummary.add_member(:chipset_generation, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "chipsetGeneration", traits: {"smithy.api#required" => {}}))
    MicrovmImageBuildSummary.add_member(:state_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "stateReason"))
    MicrovmImageBuildSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#required" => {}}))
    MicrovmImageBuildSummary.type = Types::MicrovmImageBuildSummary
    MicrovmImageHooks.add_member(:ready, ::Smithy::Schema::Shapes::MemberShape.new(target: HookState, name: "ready", traits: {"smithy.api#default" => "DISABLED"}))
    MicrovmImageHooks.add_member(:ready_timeout_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "readyTimeoutInSeconds", traits: {"smithy.api#default" => 30, "smithy.api#range" => {"min" => 1, "max" => 3600}}))
    MicrovmImageHooks.add_member(:validate, ::Smithy::Schema::Shapes::MemberShape.new(target: HookState, name: "validate", traits: {"smithy.api#default" => "DISABLED"}))
    MicrovmImageHooks.add_member(:validate_timeout_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "validateTimeoutInSeconds", traits: {"smithy.api#default" => 30, "smithy.api#range" => {"min" => 1, "max" => 3600}}))
    MicrovmImageHooks.type = Types::MicrovmImageHooks
    MicrovmImageState.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    MicrovmImageState.add_member(:created, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATED", traits: {"smithy.api#enumValue" => "CREATED"}))
    MicrovmImageState.add_member(:create_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATE_FAILED", traits: {"smithy.api#enumValue" => "CREATE_FAILED"}))
    MicrovmImageState.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    MicrovmImageState.add_member(:updated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATED", traits: {"smithy.api#enumValue" => "UPDATED"}))
    MicrovmImageState.add_member(:update_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATE_FAILED", traits: {"smithy.api#enumValue" => "UPDATE_FAILED"}))
    MicrovmImageState.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    MicrovmImageState.add_member(:delete_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETE_FAILED", traits: {"smithy.api#enumValue" => "DELETE_FAILED"}))
    MicrovmImageState.add_member(:deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETED", traits: {"smithy.api#enumValue" => "DELETED"}))
    MicrovmImageSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MicrovmImageSummary, name: "member"))
    MicrovmImageSummary.add_member(:image_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "imageArn", traits: {"smithy.api#required" => {}}))
    MicrovmImageSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageName, name: "name", traits: {"smithy.api#required" => {}}))
    MicrovmImageSummary.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: MicrovmImageState, name: "state", traits: {"smithy.api#required" => {}}))
    MicrovmImageSummary.add_member(:latest_active_image_version, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "latestActiveImageVersion"))
    MicrovmImageSummary.add_member(:latest_failed_image_version, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "latestFailedImageVersion"))
    MicrovmImageSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#required" => {}}))
    MicrovmImageSummary.type = Types::MicrovmImageSummary
    MicrovmImageVersionState.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    MicrovmImageVersionState.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    MicrovmImageVersionState.add_member(:successful, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCESSFUL", traits: {"smithy.api#enumValue" => "SUCCESSFUL"}))
    MicrovmImageVersionState.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    MicrovmImageVersionState.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    MicrovmImageVersionState.add_member(:deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETED", traits: {"smithy.api#enumValue" => "DELETED"}))
    MicrovmImageVersionState.add_member(:delete_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETE_FAILED", traits: {"smithy.api#enumValue" => "DELETE_FAILED"}))
    MicrovmImageVersionStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    MicrovmImageVersionStatus.add_member(:inactive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INACTIVE", traits: {"smithy.api#enumValue" => "INACTIVE"}))
    MicrovmImageVersionSummary.add_member(:base_image_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "baseImageArn", traits: {"smithy.api#required" => {}}))
    MicrovmImageVersionSummary.add_member(:base_image_version, ::Smithy::Schema::Shapes::MemberShape.new(target: Version, name: "baseImageVersion"))
    MicrovmImageVersionSummary.add_member(:build_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "buildRoleArn", traits: {"smithy.api#required" => {}}))
    MicrovmImageVersionSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "description"))
    MicrovmImageVersionSummary.add_member(:code_artifact, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeArtifact, name: "codeArtifact", traits: {"smithy.api#required" => {}}))
    MicrovmImageVersionSummary.add_member(:logging, ::Smithy::Schema::Shapes::MemberShape.new(target: Logging, name: "logging"))
    MicrovmImageVersionSummary.add_member(:egress_network_connectors, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkConnectorList, name: "egressNetworkConnectors", traits: {"smithy.api#length" => {"max" => 1}}))
    MicrovmImageVersionSummary.add_member(:cpu_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: CpuConfigurationList, name: "cpuConfigurations"))
    MicrovmImageVersionSummary.add_member(:resources, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourcesList, name: "resources"))
    MicrovmImageVersionSummary.add_member(:additional_os_capabilities, ::Smithy::Schema::Shapes::MemberShape.new(target: CapabilityList, name: "additionalOsCapabilities"))
    MicrovmImageVersionSummary.add_member(:hooks, ::Smithy::Schema::Shapes::MemberShape.new(target: Hooks, name: "hooks"))
    MicrovmImageVersionSummary.add_member(:environment_variables, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentVariableMap, name: "environmentVariables"))
    MicrovmImageVersionSummary.add_member(:image_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "imageArn", traits: {"smithy.api#required" => {}}))
    MicrovmImageVersionSummary.add_member(:image_version, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "imageVersion", traits: {"smithy.api#required" => {}}))
    MicrovmImageVersionSummary.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: MicrovmImageVersionState, name: "state", traits: {"smithy.api#required" => {}}))
    MicrovmImageVersionSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: MicrovmImageVersionStatus, name: "status", traits: {"smithy.api#required" => {}}))
    MicrovmImageVersionSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#required" => {}}))
    MicrovmImageVersionSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt"))
    MicrovmImageVersionSummary.add_member(:state_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "stateReason"))
    MicrovmImageVersionSummary.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    MicrovmImageVersionSummary.type = Types::MicrovmImageVersionSummary
    MicrovmImageVersionSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MicrovmImageVersionSummary, name: "member"))
    MicrovmItem.add_member(:microvm_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MicrovmIdentifier, name: "microvmId", traits: {"smithy.api#required" => {}}))
    MicrovmItem.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: MicrovmState, name: "state", traits: {"smithy.api#required" => {}}))
    MicrovmItem.add_member(:image_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: MicrovmImageArn, name: "imageArn", traits: {"smithy.api#required" => {}}))
    MicrovmItem.add_member(:image_version, ::Smithy::Schema::Shapes::MemberShape.new(target: Version, name: "imageVersion", traits: {"smithy.api#required" => {}}))
    MicrovmItem.add_member(:started_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "startedAt", traits: {"smithy.api#required" => {}}))
    MicrovmItem.type = Types::MicrovmItem
    MicrovmItemList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MicrovmItem, name: "member"))
    MicrovmState.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    MicrovmState.add_member(:running, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RUNNING", traits: {"smithy.api#enumValue" => "RUNNING"}))
    MicrovmState.add_member(:suspending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUSPENDING", traits: {"smithy.api#enumValue" => "SUSPENDING"}))
    MicrovmState.add_member(:suspended, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUSPENDED", traits: {"smithy.api#enumValue" => "SUSPENDED"}))
    MicrovmState.add_member(:terminating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TERMINATING", traits: {"smithy.api#enumValue" => "TERMINATING"}))
    MicrovmState.add_member(:terminated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TERMINATED", traits: {"smithy.api#enumValue" => "TERMINATED"}))
    NetworkConnectorList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkConnector, name: "member"))
    PortRange.add_member(:start_port, ::Smithy::Schema::Shapes::MemberShape.new(target: PortNumber, name: "startPort", traits: {"smithy.api#required" => {}}))
    PortRange.add_member(:end_port, ::Smithy::Schema::Shapes::MemberShape.new(target: PortNumber, name: "endPort", traits: {"smithy.api#required" => {}}))
    PortRange.type = Types::PortRange
    PortSpecification.add_member(:port, Types::PortSpecification::Port, ::Smithy::Schema::Shapes::MemberShape.new(target: PortNumber, name: "port"))
    PortSpecification.add_member(:range, Types::PortSpecification::Range, ::Smithy::Schema::Shapes::MemberShape.new(target: PortRange, name: "range"))
    PortSpecification.add_member(:all_ports, Types::PortSpecification::AllPorts, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "allPorts"))
    PortSpecification.add_member(:unknown, Types::PortSpecification::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    PortSpecification.type = Types::PortSpecification
    ResourceConflictException.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Type"))
    ResourceConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    ResourceConflictException.type = Types::ResourceConflictException
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceType"))
    ResourceNotFoundException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceId"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    Resources.add_member(:minimum_memory_in_mi_b, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "minimumMemoryInMiB", traits: {"smithy.api#required" => {}}))
    Resources.type = Types::Resources
    ResourcesList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Resources, name: "member"))
    ResumeMicrovmRequest.add_member(:microvm_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: MicrovmIdentifier, name: "microvmIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ResumeMicrovmRequest.type = Types::ResumeMicrovmRequest
    ResumeMicrovmResponse.type = Types::ResumeMicrovmResponse
    RunMicrovmRequest.add_member(:ingress_network_connectors, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkConnectorList, name: "ingressNetworkConnectors"))
    RunMicrovmRequest.add_member(:egress_network_connectors, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkConnectorList, name: "egressNetworkConnectors"))
    RunMicrovmRequest.add_member(:image_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: MicrovmImageIdentifier, name: "imageIdentifier", traits: {"smithy.api#required" => {}}))
    RunMicrovmRequest.add_member(:image_version, ::Smithy::Schema::Shapes::MemberShape.new(target: Version, name: "imageVersion"))
    RunMicrovmRequest.add_member(:execution_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "executionRoleArn"))
    RunMicrovmRequest.add_member(:idle_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: IdlePolicy, name: "idlePolicy"))
    RunMicrovmRequest.add_member(:logging, ::Smithy::Schema::Shapes::MemberShape.new(target: Logging, name: "logging"))
    RunMicrovmRequest.add_member(:run_hook_payload, ::Smithy::Schema::Shapes::MemberShape.new(target: RunHookPayload, name: "runHookPayload"))
    RunMicrovmRequest.add_member(:maximum_duration_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maximumDurationInSeconds", traits: {"smithy.api#range" => {"min" => 1, "max" => 28800}}))
    RunMicrovmRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#length" => {"min" => 1, "max" => 128}}))
    RunMicrovmRequest.type = Types::RunMicrovmRequest
    RunMicrovmResponse.add_member(:microvm_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MicrovmIdentifier, name: "microvmId", traits: {"smithy.api#required" => {}}))
    RunMicrovmResponse.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: MicrovmState, name: "state", traits: {"smithy.api#required" => {}}))
    RunMicrovmResponse.add_member(:endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "endpoint", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#required" => {}}))
    RunMicrovmResponse.add_member(:image_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: MicrovmImageArn, name: "imageArn", traits: {"smithy.api#required" => {}}))
    RunMicrovmResponse.add_member(:image_version, ::Smithy::Schema::Shapes::MemberShape.new(target: Version, name: "imageVersion", traits: {"smithy.api#required" => {}}))
    RunMicrovmResponse.add_member(:execution_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "executionRoleArn"))
    RunMicrovmResponse.add_member(:idle_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: IdlePolicy, name: "idlePolicy"))
    RunMicrovmResponse.add_member(:maximum_duration_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maximumDurationInSeconds", traits: {"smithy.api#required" => {}}))
    RunMicrovmResponse.add_member(:started_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "startedAt", traits: {"smithy.api#required" => {}}))
    RunMicrovmResponse.add_member(:terminated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "terminatedAt"))
    RunMicrovmResponse.add_member(:state_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "stateReason"))
    RunMicrovmResponse.add_member(:ingress_network_connectors, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkConnectorList, name: "ingressNetworkConnectors"))
    RunMicrovmResponse.add_member(:egress_network_connectors, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkConnectorList, name: "egressNetworkConnectors"))
    RunMicrovmResponse.type = Types::RunMicrovmResponse
    ServiceException.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Type"))
    ServiceException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    ServiceException.type = Types::ServiceException
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    ServiceQuotaExceededException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceId"))
    ServiceQuotaExceededException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceType"))
    ServiceQuotaExceededException.add_member(:service_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "serviceCode"))
    ServiceQuotaExceededException.add_member(:quota_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "quotaCode"))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    SnapshotBuild.add_member(:memory_snapshot_size_in_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "memorySnapshotSizeInBytes"))
    SnapshotBuild.add_member(:code_install_size_in_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "codeInstallSizeInBytes"))
    SnapshotBuild.add_member(:disk_snapshot_size_in_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "diskSnapshotSizeInBytes"))
    SnapshotBuild.type = Types::SnapshotBuild
    SuspendMicrovmRequest.add_member(:microvm_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: MicrovmIdentifier, name: "microvmIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    SuspendMicrovmRequest.type = Types::SuspendMicrovmRequest
    SuspendMicrovmResponse.type = Types::SuspendMicrovmResponse
    TagKeyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member", traits: {"smithy.api#xmlName" => "Key"}))
    TagResourceRequest.add_member(:resource, ::Smithy::Schema::Shapes::MemberShape.new(target: TaggableResource, name: "Resource", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    Tags.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "key"))
    Tags.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "value"))
    TerminateMicrovmRequest.add_member(:microvm_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: MicrovmIdentifier, name: "microvmIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TerminateMicrovmRequest.type = Types::TerminateMicrovmRequest
    TerminateMicrovmResponse.type = Types::TerminateMicrovmResponse
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    ThrottlingException.add_member(:service_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "serviceCode"))
    ThrottlingException.add_member(:quota_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "quotaCode"))
    ThrottlingException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "retryAfterSeconds", traits: {"smithy.api#httpHeader" => "Retry-After"}))
    ThrottlingException.type = Types::ThrottlingException
    TokenParts.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthTokenKey, name: "key"))
    TokenParts.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthTokenValue, name: "value"))
    TooManyRequestsException.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Type"))
    TooManyRequestsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    TooManyRequestsException.type = Types::TooManyRequestsException
    UntagResourceRequest.add_member(:resource, ::Smithy::Schema::Shapes::MemberShape.new(target: TaggableResource, name: "Resource", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "TagKeys", traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UpdateMicrovmImageRequest.add_member(:base_image_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "baseImageArn", traits: {"smithy.api#required" => {}}))
    UpdateMicrovmImageRequest.add_member(:base_image_version, ::Smithy::Schema::Shapes::MemberShape.new(target: Version, name: "baseImageVersion"))
    UpdateMicrovmImageRequest.add_member(:build_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "buildRoleArn", traits: {"smithy.api#required" => {}}))
    UpdateMicrovmImageRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "description"))
    UpdateMicrovmImageRequest.add_member(:code_artifact, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeArtifact, name: "codeArtifact", traits: {"smithy.api#required" => {}}))
    UpdateMicrovmImageRequest.add_member(:logging, ::Smithy::Schema::Shapes::MemberShape.new(target: Logging, name: "logging"))
    UpdateMicrovmImageRequest.add_member(:egress_network_connectors, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkConnectorList, name: "egressNetworkConnectors", traits: {"smithy.api#length" => {"max" => 1}}))
    UpdateMicrovmImageRequest.add_member(:cpu_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: CpuConfigurationList, name: "cpuConfigurations"))
    UpdateMicrovmImageRequest.add_member(:resources, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourcesList, name: "resources"))
    UpdateMicrovmImageRequest.add_member(:additional_os_capabilities, ::Smithy::Schema::Shapes::MemberShape.new(target: CapabilityList, name: "additionalOsCapabilities"))
    UpdateMicrovmImageRequest.add_member(:hooks, ::Smithy::Schema::Shapes::MemberShape.new(target: Hooks, name: "hooks"))
    UpdateMicrovmImageRequest.add_member(:environment_variables, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentVariableMap, name: "environmentVariables"))
    UpdateMicrovmImageRequest.add_member(:image_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: MicrovmImageIdentifier, name: "imageIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateMicrovmImageRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#length" => {"min" => 1, "max" => 128}}))
    UpdateMicrovmImageRequest.type = Types::UpdateMicrovmImageRequest
    UpdateMicrovmImageResponse.add_member(:image_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "imageArn", traits: {"smithy.api#required" => {}}))
    UpdateMicrovmImageResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageName, name: "name", traits: {"smithy.api#required" => {}}))
    UpdateMicrovmImageResponse.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: MicrovmImageState, name: "state", traits: {"smithy.api#required" => {}}))
    UpdateMicrovmImageResponse.add_member(:latest_active_image_version, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "latestActiveImageVersion"))
    UpdateMicrovmImageResponse.add_member(:latest_failed_image_version, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "latestFailedImageVersion"))
    UpdateMicrovmImageResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#required" => {}}))
    UpdateMicrovmImageResponse.add_member(:base_image_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "baseImageArn", traits: {"smithy.api#required" => {}}))
    UpdateMicrovmImageResponse.add_member(:base_image_version, ::Smithy::Schema::Shapes::MemberShape.new(target: Version, name: "baseImageVersion"))
    UpdateMicrovmImageResponse.add_member(:build_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "buildRoleArn", traits: {"smithy.api#required" => {}}))
    UpdateMicrovmImageResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "description"))
    UpdateMicrovmImageResponse.add_member(:code_artifact, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeArtifact, name: "codeArtifact", traits: {"smithy.api#required" => {}}))
    UpdateMicrovmImageResponse.add_member(:logging, ::Smithy::Schema::Shapes::MemberShape.new(target: Logging, name: "logging"))
    UpdateMicrovmImageResponse.add_member(:egress_network_connectors, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkConnectorList, name: "egressNetworkConnectors", traits: {"smithy.api#length" => {"max" => 1}}))
    UpdateMicrovmImageResponse.add_member(:cpu_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: CpuConfigurationList, name: "cpuConfigurations"))
    UpdateMicrovmImageResponse.add_member(:resources, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourcesList, name: "resources"))
    UpdateMicrovmImageResponse.add_member(:additional_os_capabilities, ::Smithy::Schema::Shapes::MemberShape.new(target: CapabilityList, name: "additionalOsCapabilities"))
    UpdateMicrovmImageResponse.add_member(:hooks, ::Smithy::Schema::Shapes::MemberShape.new(target: Hooks, name: "hooks"))
    UpdateMicrovmImageResponse.add_member(:environment_variables, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentVariableMap, name: "environmentVariables"))
    UpdateMicrovmImageResponse.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    UpdateMicrovmImageResponse.add_member(:image_version, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "imageVersion", traits: {"smithy.api#required" => {}}))
    UpdateMicrovmImageResponse.type = Types::UpdateMicrovmImageResponse
    UpdateMicrovmImageVersionRequest.add_member(:image_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: MicrovmImageIdentifier, name: "imageIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateMicrovmImageVersionRequest.add_member(:image_version, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "imageVersion", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateMicrovmImageVersionRequest.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: MicrovmImageVersionStatus, name: "status", traits: {"smithy.api#required" => {}}))
    UpdateMicrovmImageVersionRequest.type = Types::UpdateMicrovmImageVersionRequest
    UpdateMicrovmImageVersionResponse.add_member(:base_image_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "baseImageArn", traits: {"smithy.api#required" => {}}))
    UpdateMicrovmImageVersionResponse.add_member(:base_image_version, ::Smithy::Schema::Shapes::MemberShape.new(target: Version, name: "baseImageVersion"))
    UpdateMicrovmImageVersionResponse.add_member(:build_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "buildRoleArn", traits: {"smithy.api#required" => {}}))
    UpdateMicrovmImageVersionResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "description"))
    UpdateMicrovmImageVersionResponse.add_member(:code_artifact, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeArtifact, name: "codeArtifact", traits: {"smithy.api#required" => {}}))
    UpdateMicrovmImageVersionResponse.add_member(:logging, ::Smithy::Schema::Shapes::MemberShape.new(target: Logging, name: "logging"))
    UpdateMicrovmImageVersionResponse.add_member(:egress_network_connectors, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkConnectorList, name: "egressNetworkConnectors", traits: {"smithy.api#length" => {"max" => 1}}))
    UpdateMicrovmImageVersionResponse.add_member(:cpu_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: CpuConfigurationList, name: "cpuConfigurations"))
    UpdateMicrovmImageVersionResponse.add_member(:resources, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourcesList, name: "resources"))
    UpdateMicrovmImageVersionResponse.add_member(:additional_os_capabilities, ::Smithy::Schema::Shapes::MemberShape.new(target: CapabilityList, name: "additionalOsCapabilities"))
    UpdateMicrovmImageVersionResponse.add_member(:hooks, ::Smithy::Schema::Shapes::MemberShape.new(target: Hooks, name: "hooks"))
    UpdateMicrovmImageVersionResponse.add_member(:environment_variables, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentVariableMap, name: "environmentVariables"))
    UpdateMicrovmImageVersionResponse.add_member(:image_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "imageArn", traits: {"smithy.api#required" => {}}))
    UpdateMicrovmImageVersionResponse.add_member(:image_version, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "imageVersion", traits: {"smithy.api#required" => {}}))
    UpdateMicrovmImageVersionResponse.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: MicrovmImageVersionState, name: "state", traits: {"smithy.api#required" => {}}))
    UpdateMicrovmImageVersionResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: MicrovmImageVersionStatus, name: "status", traits: {"smithy.api#required" => {}}))
    UpdateMicrovmImageVersionResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#required" => {}}))
    UpdateMicrovmImageVersionResponse.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt"))
    UpdateMicrovmImageVersionResponse.add_member(:state_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "stateReason"))
    UpdateMicrovmImageVersionResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    UpdateMicrovmImageVersionResponse.type = Types::UpdateMicrovmImageVersionResponse
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    ValidationException.type = Types::ValidationException

    LambdaMicrovms = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.lambdamicrovms#LambdaMicrovms"
      service.name = "LambdaMicrovms"
      service.version = "2025-09-09"
      service.traits = {"aws.api#service" => {"sdkId" => "Lambda Microvms", "arnNamespace" => "lambda"}, "aws.auth#sigv4" => {"name" => "lambda"}, "aws.iam#defineConditionKeys" => {"aws:ResourceTag/${TagKey}" => {"type" => "String", "documentation" => "Filters access by the tags associated with the resource"}, "aws:RequestTag/${TagKey}" => {"type" => "String", "documentation" => "Filters access by the tags that are passed in the request"}, "aws:TagKeys" => {"type" => "ArrayOfString", "documentation" => "Filters access by the tag keys that are passed in the request"}}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "Lambda MicroVMs", "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}, "UseDualStack" => {"builtIn" => "AWS::UseDualStack", "required" => true, "default" => false, "documentation" => "When true, use the dual-stack endpoint. If the configured endpoint does not support dual-stack, dispatching the request MAY return an error.", "type" => "boolean"}, "UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseDualStack"}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsDualStack"]}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsFIPS"]}, true]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "error" => "Invalid Configuration: Dualstack and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://lambda-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS and DualStack are enabled, but this partition does not support one or both", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://lambda-fips.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS is enabled but this partition does not support FIPS", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://lambda.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "DualStack is enabled but this partition does not support DualStack", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://lambda.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 13, "nodes" => "/////wAAAAH/////AAAAAAAAAAwAAAADAAAAAQAAAAQF9eELAAAAAgAAAAUF9eELAAAAAwAAAAgAAAAGAAAABAAAAAcF9eEKAAAABQX14QgF9eEJAAAABAAAAAoAAAAJAAAABgX14QYF9eEHAAAABQAAAAsF9eEFAAAABgX14QQF9eEFAAAAAwX14QEAAAANAAAABAX14QIF9eED"}}
      service.add_operation(:create_microvm_auth_token, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambdamicrovms#CreateMicrovmAuthToken"
        operation.name = "CreateMicrovmAuthToken"
        operation.input = CreateMicrovmAuthTokenRequest
        operation.output = CreateMicrovmAuthTokenResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to create an auth token for an AWS Lambda MicroVM", "relativeDocumentation" => "API_CreateMicrovmAuthToken.html", "resources" => {"required" => {"microvmImage" => {}}}}, "smithy.api#http" => {"method" => "POST", "uri" => "/2025-09-09/microvms/{microvmIdentifier}/auth-token", "code" => 200}}
      end)
      service.add_operation(:create_microvm_image, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambdamicrovms#CreateMicrovmImage"
        operation.name = "CreateMicrovmImage"
        operation.input = CreateMicrovmImageRequest
        operation.output = CreateMicrovmImageResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:TagKeys"], "aws.iam#iamAction" => {"documentation" => "Grants permission to create an AWS Lambda MicroVM image", "relativeDocumentation" => "API_CreateMicrovmImage.html", "requiredActions" => ["iam:PassRole", "lambda:PassNetworkConnector"]}, "smithy.api#http" => {"method" => "POST", "uri" => "/2025-09-09/microvm-images", "code" => 201}}
      end)
      service.add_operation(:create_microvm_shell_auth_token, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambdamicrovms#CreateMicrovmShellAuthToken"
        operation.name = "CreateMicrovmShellAuthToken"
        operation.input = CreateMicrovmShellAuthTokenRequest
        operation.output = CreateMicrovmShellAuthTokenResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to create a shell auth token for an AWS Lambda MicroVM", "relativeDocumentation" => "API_CreateMicrovmShellAuthToken.html", "resources" => {"required" => {"microvmImage" => {}}}}, "smithy.api#http" => {"method" => "POST", "uri" => "/2025-09-09/microvms/{microvmIdentifier}/shell-auth-token", "code" => 200}}
      end)
      service.add_operation(:delete_microvm_image, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambdamicrovms#DeleteMicrovmImage"
        operation.name = "DeleteMicrovmImage"
        operation.input = DeleteMicrovmImageInput
        operation.output = DeleteMicrovmImageOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to delete an AWS Lambda MicroVM image", "relativeDocumentation" => "API_DeleteMicrovmImage.html"}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/2025-09-09/microvm-images/{imageIdentifier}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_microvm_image_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambdamicrovms#DeleteMicrovmImageVersion"
        operation.name = "DeleteMicrovmImageVersion"
        operation.input = DeleteMicrovmImageVersionInput
        operation.output = DeleteMicrovmImageVersionOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to delete a version of an AWS Lambda MicroVM image", "relativeDocumentation" => "API_DeleteMicrovmImageVersion.html"}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/2025-09-09/microvm-images/{imageIdentifier}/versions/{imageVersion}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_microvm, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambdamicrovms#GetMicrovm"
        operation.name = "GetMicrovm"
        operation.input = GetMicrovmRequest
        operation.output = GetMicrovmResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.errors << ResourceNotFoundException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to view information about an AWS Lambda MicroVM", "relativeDocumentation" => "API_GetMicrovm.html", "resources" => {"required" => {"microvmImage" => {}}}}, "smithy.api#http" => {"method" => "GET", "uri" => "/2025-09-09/microvms/{microvmIdentifier}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_microvm_image, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambdamicrovms#GetMicrovmImage"
        operation.name = "GetMicrovmImage"
        operation.input = GetMicrovmImageInput
        operation.output = GetMicrovmImageOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.errors << ResourceNotFoundException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to view information about an AWS Lambda MicroVM image", "relativeDocumentation" => "API_GetMicrovmImage.html"}, "smithy.api#http" => {"method" => "GET", "uri" => "/2025-09-09/microvm-images/{imageIdentifier}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_microvm_image_build, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambdamicrovms#GetMicrovmImageBuild"
        operation.name = "GetMicrovmImageBuild"
        operation.input = GetMicrovmImageBuildInput
        operation.output = GetMicrovmImageBuildOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.errors << ResourceNotFoundException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to view information about a build of an AWS Lambda MicroVM image version", "relativeDocumentation" => "API_GetMicrovmImageBuild.html"}, "smithy.api#http" => {"method" => "GET", "uri" => "/2025-09-09/microvm-images/{imageIdentifier}/versions/{imageVersion}/builds/{buildId}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_microvm_image_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambdamicrovms#GetMicrovmImageVersion"
        operation.name = "GetMicrovmImageVersion"
        operation.input = GetMicrovmImageVersionInput
        operation.output = GetMicrovmImageVersionOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.errors << ResourceNotFoundException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to view information about a version of an AWS Lambda MicroVM image", "relativeDocumentation" => "API_GetMicrovmImageVersion.html"}, "smithy.api#http" => {"method" => "GET", "uri" => "/2025-09-09/microvm-images/{imageIdentifier}/versions/{imageVersion}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_managed_microvm_image_versions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambdamicrovms#ListManagedMicrovmImageVersions"
        operation.name = "ListManagedMicrovmImageVersions"
        operation.input = ListManagedMicrovmImageVersionsInput
        operation.output = ListManagedMicrovmImageVersionsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.errors << ResourceNotFoundException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to retrieve a list of versions for a managed AWS Lambda MicroVM image", "relativeDocumentation" => "API_ListManagedMicrovmImageVersions.html"}, "smithy.api#http" => {"method" => "GET", "uri" => "/2025-09-09/managed-microvm-images/{imageIdentifier}/versions", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListManagedMicrovmImageVersions.new
      end)
      service.add_operation(:list_managed_microvm_images, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambdamicrovms#ListManagedMicrovmImages"
        operation.name = "ListManagedMicrovmImages"
        operation.input = ListManagedMicrovmImagesInput
        operation.output = ListManagedMicrovmImagesOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to retrieve a list of managed AWS Lambda MicroVM images", "relativeDocumentation" => "API_ListManagedMicrovmImages.html"}, "smithy.api#http" => {"method" => "GET", "uri" => "/2025-09-09/managed-microvm-images", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListManagedMicrovmImages.new
      end)
      service.add_operation(:list_microvm_image_builds, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambdamicrovms#ListMicrovmImageBuilds"
        operation.name = "ListMicrovmImageBuilds"
        operation.input = ListMicrovmImageBuildsInput
        operation.output = ListMicrovmImageBuildsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.errors << ResourceNotFoundException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to retrieve a list of builds for an AWS Lambda MicroVM image version", "relativeDocumentation" => "API_ListMicrovmImageBuilds.html"}, "smithy.api#http" => {"method" => "GET", "uri" => "/2025-09-09/microvm-images/{imageIdentifier}/versions/{imageVersion}/builds", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListMicrovmImageBuilds.new
      end)
      service.add_operation(:list_microvm_image_versions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambdamicrovms#ListMicrovmImageVersions"
        operation.name = "ListMicrovmImageVersions"
        operation.input = ListMicrovmImageVersionsInput
        operation.output = ListMicrovmImageVersionsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.errors << ResourceNotFoundException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to retrieve a list of versions for an AWS Lambda MicroVM image", "relativeDocumentation" => "API_ListMicrovmImageVersions.html"}, "smithy.api#http" => {"method" => "GET", "uri" => "/2025-09-09/microvm-images/{imageIdentifier}/versions", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListMicrovmImageVersions.new
      end)
      service.add_operation(:list_microvm_images, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambdamicrovms#ListMicrovmImages"
        operation.name = "ListMicrovmImages"
        operation.input = ListMicrovmImagesRequest
        operation.output = ListMicrovmImagesResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to retrieve a list of AWS Lambda MicroVM images", "relativeDocumentation" => "API_ListMicrovmImages.html"}, "smithy.api#http" => {"method" => "GET", "uri" => "/2025-09-09/microvm-images", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListMicrovmImages.new
      end)
      service.add_operation(:list_microvms, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambdamicrovms#ListMicrovms"
        operation.name = "ListMicrovms"
        operation.input = ListMicrovmsRequest
        operation.output = ListMicrovmsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.errors << ResourceNotFoundException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to retrieve a list of AWS Lambda MicroVMs", "relativeDocumentation" => "API_ListMicrovms.html"}, "smithy.api#http" => {"method" => "GET", "uri" => "/2025-09-09/microvms", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListMicrovms.new
      end)
      service.add_operation(:list_tags, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambdamicrovms#ListTags"
        operation.name = "ListTags"
        operation.input = ListTagsRequest
        operation.output = ListTagsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.traits = {"aws.iam#iamAction" => {"name" => "ListTags", "documentation" => "Grants permission to list tags on a resource"}, "smithy.api#http" => {"method" => "GET", "uri" => "/2017-03-31/tags/{Resource}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:resume_microvm, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambdamicrovms#ResumeMicrovm"
        operation.name = "ResumeMicrovm"
        operation.input = ResumeMicrovmRequest
        operation.output = ResumeMicrovmResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to resume a suspended AWS Lambda MicroVM", "relativeDocumentation" => "API_ResumeMicrovm.html", "resources" => {"required" => {"microvmImage" => {}}}}, "smithy.api#http" => {"method" => "POST", "uri" => "/2025-09-09/microvms/{microvmIdentifier}/resume", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:run_microvm, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambdamicrovms#RunMicrovm"
        operation.name = "RunMicrovm"
        operation.input = RunMicrovmRequest
        operation.output = RunMicrovmResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.errors << ConflictException
        operation.errors << InsufficientCapacityException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to run an AWS Lambda MicroVM from a MicroVM image", "relativeDocumentation" => "API_RunMicrovm.html", "requiredActions" => ["iam:PassRole", "lambda:PassNetworkConnector"], "resources" => {"required" => {"microvmImage" => {}}}}, "smithy.api#http" => {"method" => "POST", "uri" => "/2025-09-09/microvms", "code" => 200}}
      end)
      service.add_operation(:suspend_microvm, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambdamicrovms#SuspendMicrovm"
        operation.name = "SuspendMicrovm"
        operation.input = SuspendMicrovmRequest
        operation.output = SuspendMicrovmResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to suspend an AWS Lambda MicroVM", "relativeDocumentation" => "API_SuspendMicrovm.html", "resources" => {"required" => {"microvmImage" => {}}}}, "smithy.api#http" => {"method" => "POST", "uri" => "/2025-09-09/microvms/{microvmIdentifier}/suspend", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambdamicrovms#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.traits = {"aws.iam#iamAction" => {"name" => "TagResource", "documentation" => "Grants permission to add or modify tags on a resource"}, "smithy.api#http" => {"method" => "POST", "uri" => "/2017-03-31/tags/{Resource}", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:terminate_microvm, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambdamicrovms#TerminateMicrovm"
        operation.name = "TerminateMicrovm"
        operation.input = TerminateMicrovmRequest
        operation.output = TerminateMicrovmResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to terminate an AWS Lambda MicroVM", "relativeDocumentation" => "API_TerminateMicrovm.html", "resources" => {"required" => {"microvmImage" => {}}}}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/2025-09-09/microvms/{microvmIdentifier}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambdamicrovms#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.traits = {"aws.iam#iamAction" => {"name" => "UntagResource", "documentation" => "Grants permission to remove tags from a resource"}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/2017-03-31/tags/{Resource}", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_microvm_image, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambdamicrovms#UpdateMicrovmImage"
        operation.name = "UpdateMicrovmImage"
        operation.input = UpdateMicrovmImageRequest
        operation.output = UpdateMicrovmImageResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to update an AWS Lambda MicroVM image", "relativeDocumentation" => "API_UpdateMicrovmImage.html", "requiredActions" => ["iam:PassRole", "lambda:PassNetworkConnector"]}, "smithy.api#http" => {"method" => "PUT", "uri" => "/2025-09-09/microvm-images/{imageIdentifier}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_microvm_image_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambdamicrovms#UpdateMicrovmImageVersion"
        operation.name = "UpdateMicrovmImageVersion"
        operation.input = UpdateMicrovmImageVersionRequest
        operation.output = UpdateMicrovmImageVersionResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to update a version of an AWS Lambda MicroVM image", "relativeDocumentation" => "API_UpdateMicrovmImageVersion.html"}, "smithy.api#http" => {"method" => "PATCH", "uri" => "/2025-09-09/microvm-images/{imageIdentifier}/versions/{imageVersion}", "code" => 200}}
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
