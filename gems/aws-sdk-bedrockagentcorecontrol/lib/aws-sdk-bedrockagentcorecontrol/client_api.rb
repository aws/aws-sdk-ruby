# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::BedrockAgentCoreControl
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AgentEndpointDescription = Shapes::StringShape.new(name: 'AgentEndpointDescription')
    AgentManagedRuntimeType = Shapes::StringShape.new(name: 'AgentManagedRuntimeType')
    AgentRuntime = Shapes::StructureShape.new(name: 'AgentRuntime')
    AgentRuntimeArn = Shapes::StringShape.new(name: 'AgentRuntimeArn')
    AgentRuntimeArtifact = Shapes::UnionShape.new(name: 'AgentRuntimeArtifact')
    AgentRuntimeEndpoint = Shapes::StructureShape.new(name: 'AgentRuntimeEndpoint')
    AgentRuntimeEndpointArn = Shapes::StringShape.new(name: 'AgentRuntimeEndpointArn')
    AgentRuntimeEndpointId = Shapes::StringShape.new(name: 'AgentRuntimeEndpointId')
    AgentRuntimeEndpointStatus = Shapes::StringShape.new(name: 'AgentRuntimeEndpointStatus')
    AgentRuntimeEndpoints = Shapes::ListShape.new(name: 'AgentRuntimeEndpoints')
    AgentRuntimeId = Shapes::StringShape.new(name: 'AgentRuntimeId')
    AgentRuntimeName = Shapes::StringShape.new(name: 'AgentRuntimeName')
    AgentRuntimeStatus = Shapes::StringShape.new(name: 'AgentRuntimeStatus')
    AgentRuntimeVersion = Shapes::StringShape.new(name: 'AgentRuntimeVersion')
    AgentRuntimes = Shapes::ListShape.new(name: 'AgentRuntimes')
    AllowedAudience = Shapes::StringShape.new(name: 'AllowedAudience')
    AllowedAudienceList = Shapes::ListShape.new(name: 'AllowedAudienceList')
    AllowedClient = Shapes::StringShape.new(name: 'AllowedClient')
    AllowedClientsList = Shapes::ListShape.new(name: 'AllowedClientsList')
    ApiKeyCredentialLocation = Shapes::StringShape.new(name: 'ApiKeyCredentialLocation')
    ApiKeyCredentialParameterName = Shapes::StringShape.new(name: 'ApiKeyCredentialParameterName')
    ApiKeyCredentialPrefix = Shapes::StringShape.new(name: 'ApiKeyCredentialPrefix')
    ApiKeyCredentialProvider = Shapes::StructureShape.new(name: 'ApiKeyCredentialProvider')
    ApiKeyCredentialProviderArn = Shapes::StringShape.new(name: 'ApiKeyCredentialProviderArn')
    ApiKeyCredentialProviderArnType = Shapes::StringShape.new(name: 'ApiKeyCredentialProviderArnType')
    ApiKeyCredentialProviderItem = Shapes::StructureShape.new(name: 'ApiKeyCredentialProviderItem')
    ApiKeyCredentialProviders = Shapes::ListShape.new(name: 'ApiKeyCredentialProviders')
    ApiKeyType = Shapes::StringShape.new(name: 'ApiKeyType')
    ApiSchemaConfiguration = Shapes::UnionShape.new(name: 'ApiSchemaConfiguration')
    Arn = Shapes::StringShape.new(name: 'Arn')
    AtlassianOauth2ProviderConfigInput = Shapes::StructureShape.new(name: 'AtlassianOauth2ProviderConfigInput')
    AtlassianOauth2ProviderConfigOutput = Shapes::StructureShape.new(name: 'AtlassianOauth2ProviderConfigOutput')
    AuthorizationEndpointType = Shapes::StringShape.new(name: 'AuthorizationEndpointType')
    AuthorizerConfiguration = Shapes::UnionShape.new(name: 'AuthorizerConfiguration')
    AuthorizerType = Shapes::StringShape.new(name: 'AuthorizerType')
    AwsAccountId = Shapes::StringShape.new(name: 'AwsAccountId')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    BrowserArn = Shapes::StringShape.new(name: 'BrowserArn')
    BrowserId = Shapes::StringShape.new(name: 'BrowserId')
    BrowserNetworkConfiguration = Shapes::StructureShape.new(name: 'BrowserNetworkConfiguration')
    BrowserNetworkMode = Shapes::StringShape.new(name: 'BrowserNetworkMode')
    BrowserSigningConfigInput = Shapes::StructureShape.new(name: 'BrowserSigningConfigInput')
    BrowserSigningConfigOutput = Shapes::StructureShape.new(name: 'BrowserSigningConfigOutput')
    BrowserStatus = Shapes::StringShape.new(name: 'BrowserStatus')
    BrowserSummaries = Shapes::ListShape.new(name: 'BrowserSummaries')
    BrowserSummary = Shapes::StructureShape.new(name: 'BrowserSummary')
    ClientIdType = Shapes::StringShape.new(name: 'ClientIdType')
    ClientSecretType = Shapes::StringShape.new(name: 'ClientSecretType')
    ClientToken = Shapes::StringShape.new(name: 'ClientToken')
    Code = Shapes::UnionShape.new(name: 'Code')
    CodeConfiguration = Shapes::StructureShape.new(name: 'CodeConfiguration')
    CodeConfigurationEntryPointList = Shapes::ListShape.new(name: 'CodeConfigurationEntryPointList')
    CodeInterpreterArn = Shapes::StringShape.new(name: 'CodeInterpreterArn')
    CodeInterpreterId = Shapes::StringShape.new(name: 'CodeInterpreterId')
    CodeInterpreterNetworkConfiguration = Shapes::StructureShape.new(name: 'CodeInterpreterNetworkConfiguration')
    CodeInterpreterNetworkMode = Shapes::StringShape.new(name: 'CodeInterpreterNetworkMode')
    CodeInterpreterStatus = Shapes::StringShape.new(name: 'CodeInterpreterStatus')
    CodeInterpreterSummaries = Shapes::ListShape.new(name: 'CodeInterpreterSummaries')
    CodeInterpreterSummary = Shapes::StructureShape.new(name: 'CodeInterpreterSummary')
    ConcurrentModificationException = Shapes::StructureShape.new(name: 'ConcurrentModificationException')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    ConsolidationConfiguration = Shapes::UnionShape.new(name: 'ConsolidationConfiguration')
    ContainerConfiguration = Shapes::StructureShape.new(name: 'ContainerConfiguration')
    CreateAgentRuntimeEndpointRequest = Shapes::StructureShape.new(name: 'CreateAgentRuntimeEndpointRequest')
    CreateAgentRuntimeEndpointResponse = Shapes::StructureShape.new(name: 'CreateAgentRuntimeEndpointResponse')
    CreateAgentRuntimeRequest = Shapes::StructureShape.new(name: 'CreateAgentRuntimeRequest')
    CreateAgentRuntimeResponse = Shapes::StructureShape.new(name: 'CreateAgentRuntimeResponse')
    CreateApiKeyCredentialProviderRequest = Shapes::StructureShape.new(name: 'CreateApiKeyCredentialProviderRequest')
    CreateApiKeyCredentialProviderResponse = Shapes::StructureShape.new(name: 'CreateApiKeyCredentialProviderResponse')
    CreateBrowserRequest = Shapes::StructureShape.new(name: 'CreateBrowserRequest')
    CreateBrowserResponse = Shapes::StructureShape.new(name: 'CreateBrowserResponse')
    CreateCodeInterpreterRequest = Shapes::StructureShape.new(name: 'CreateCodeInterpreterRequest')
    CreateCodeInterpreterResponse = Shapes::StructureShape.new(name: 'CreateCodeInterpreterResponse')
    CreateGatewayRequest = Shapes::StructureShape.new(name: 'CreateGatewayRequest')
    CreateGatewayResponse = Shapes::StructureShape.new(name: 'CreateGatewayResponse')
    CreateGatewayTargetRequest = Shapes::StructureShape.new(name: 'CreateGatewayTargetRequest')
    CreateGatewayTargetResponse = Shapes::StructureShape.new(name: 'CreateGatewayTargetResponse')
    CreateMemoryInput = Shapes::StructureShape.new(name: 'CreateMemoryInput')
    CreateMemoryInputClientTokenString = Shapes::StringShape.new(name: 'CreateMemoryInputClientTokenString')
    CreateMemoryInputEventExpiryDurationInteger = Shapes::IntegerShape.new(name: 'CreateMemoryInputEventExpiryDurationInteger')
    CreateMemoryOutput = Shapes::StructureShape.new(name: 'CreateMemoryOutput')
    CreateOauth2CredentialProviderRequest = Shapes::StructureShape.new(name: 'CreateOauth2CredentialProviderRequest')
    CreateOauth2CredentialProviderResponse = Shapes::StructureShape.new(name: 'CreateOauth2CredentialProviderResponse')
    CreateWorkloadIdentityRequest = Shapes::StructureShape.new(name: 'CreateWorkloadIdentityRequest')
    CreateWorkloadIdentityResponse = Shapes::StructureShape.new(name: 'CreateWorkloadIdentityResponse')
    CredentialProvider = Shapes::UnionShape.new(name: 'CredentialProvider')
    CredentialProviderArnType = Shapes::StringShape.new(name: 'CredentialProviderArnType')
    CredentialProviderConfiguration = Shapes::StructureShape.new(name: 'CredentialProviderConfiguration')
    CredentialProviderConfigurations = Shapes::ListShape.new(name: 'CredentialProviderConfigurations')
    CredentialProviderName = Shapes::StringShape.new(name: 'CredentialProviderName')
    CredentialProviderType = Shapes::StringShape.new(name: 'CredentialProviderType')
    CredentialProviderVendorType = Shapes::StringShape.new(name: 'CredentialProviderVendorType')
    CustomConfigurationInput = Shapes::UnionShape.new(name: 'CustomConfigurationInput')
    CustomConsolidationConfiguration = Shapes::UnionShape.new(name: 'CustomConsolidationConfiguration')
    CustomConsolidationConfigurationInput = Shapes::UnionShape.new(name: 'CustomConsolidationConfigurationInput')
    CustomExtractionConfiguration = Shapes::UnionShape.new(name: 'CustomExtractionConfiguration')
    CustomExtractionConfigurationInput = Shapes::UnionShape.new(name: 'CustomExtractionConfigurationInput')
    CustomJWTAuthorizerConfiguration = Shapes::StructureShape.new(name: 'CustomJWTAuthorizerConfiguration')
    CustomMemoryStrategyInput = Shapes::StructureShape.new(name: 'CustomMemoryStrategyInput')
    CustomOauth2ProviderConfigInput = Shapes::StructureShape.new(name: 'CustomOauth2ProviderConfigInput')
    CustomOauth2ProviderConfigOutput = Shapes::StructureShape.new(name: 'CustomOauth2ProviderConfigOutput')
    DateTimestamp = Shapes::TimestampShape.new(name: 'DateTimestamp', timestampFormat: "iso8601")
    DecryptionFailure = Shapes::StructureShape.new(name: 'DecryptionFailure')
    DeleteAgentRuntimeEndpointRequest = Shapes::StructureShape.new(name: 'DeleteAgentRuntimeEndpointRequest')
    DeleteAgentRuntimeEndpointResponse = Shapes::StructureShape.new(name: 'DeleteAgentRuntimeEndpointResponse')
    DeleteAgentRuntimeRequest = Shapes::StructureShape.new(name: 'DeleteAgentRuntimeRequest')
    DeleteAgentRuntimeResponse = Shapes::StructureShape.new(name: 'DeleteAgentRuntimeResponse')
    DeleteApiKeyCredentialProviderRequest = Shapes::StructureShape.new(name: 'DeleteApiKeyCredentialProviderRequest')
    DeleteApiKeyCredentialProviderResponse = Shapes::StructureShape.new(name: 'DeleteApiKeyCredentialProviderResponse')
    DeleteBrowserRequest = Shapes::StructureShape.new(name: 'DeleteBrowserRequest')
    DeleteBrowserResponse = Shapes::StructureShape.new(name: 'DeleteBrowserResponse')
    DeleteCodeInterpreterRequest = Shapes::StructureShape.new(name: 'DeleteCodeInterpreterRequest')
    DeleteCodeInterpreterResponse = Shapes::StructureShape.new(name: 'DeleteCodeInterpreterResponse')
    DeleteGatewayRequest = Shapes::StructureShape.new(name: 'DeleteGatewayRequest')
    DeleteGatewayResponse = Shapes::StructureShape.new(name: 'DeleteGatewayResponse')
    DeleteGatewayTargetRequest = Shapes::StructureShape.new(name: 'DeleteGatewayTargetRequest')
    DeleteGatewayTargetResponse = Shapes::StructureShape.new(name: 'DeleteGatewayTargetResponse')
    DeleteMemoryInput = Shapes::StructureShape.new(name: 'DeleteMemoryInput')
    DeleteMemoryInputClientTokenString = Shapes::StringShape.new(name: 'DeleteMemoryInputClientTokenString')
    DeleteMemoryOutput = Shapes::StructureShape.new(name: 'DeleteMemoryOutput')
    DeleteMemoryStrategiesList = Shapes::ListShape.new(name: 'DeleteMemoryStrategiesList')
    DeleteMemoryStrategyInput = Shapes::StructureShape.new(name: 'DeleteMemoryStrategyInput')
    DeleteOauth2CredentialProviderRequest = Shapes::StructureShape.new(name: 'DeleteOauth2CredentialProviderRequest')
    DeleteOauth2CredentialProviderResponse = Shapes::StructureShape.new(name: 'DeleteOauth2CredentialProviderResponse')
    DeleteWorkloadIdentityRequest = Shapes::StructureShape.new(name: 'DeleteWorkloadIdentityRequest')
    DeleteWorkloadIdentityResponse = Shapes::StructureShape.new(name: 'DeleteWorkloadIdentityResponse')
    Description = Shapes::StringShape.new(name: 'Description')
    DiscoveryUrl = Shapes::StringShape.new(name: 'DiscoveryUrl')
    DiscoveryUrlType = Shapes::StringShape.new(name: 'DiscoveryUrlType')
    EncryptionFailure = Shapes::StructureShape.new(name: 'EncryptionFailure')
    EndpointName = Shapes::StringShape.new(name: 'EndpointName')
    EnvironmentVariableKey = Shapes::StringShape.new(name: 'EnvironmentVariableKey')
    EnvironmentVariableValue = Shapes::StringShape.new(name: 'EnvironmentVariableValue')
    EnvironmentVariablesMap = Shapes::MapShape.new(name: 'EnvironmentVariablesMap')
    ExceptionLevel = Shapes::StringShape.new(name: 'ExceptionLevel')
    ExtractionConfiguration = Shapes::UnionShape.new(name: 'ExtractionConfiguration')
    GatewayArn = Shapes::StringShape.new(name: 'GatewayArn')
    GatewayDescription = Shapes::StringShape.new(name: 'GatewayDescription')
    GatewayId = Shapes::StringShape.new(name: 'GatewayId')
    GatewayIdentifier = Shapes::StringShape.new(name: 'GatewayIdentifier')
    GatewayInterceptionPoint = Shapes::StringShape.new(name: 'GatewayInterceptionPoint')
    GatewayInterceptionPoints = Shapes::ListShape.new(name: 'GatewayInterceptionPoints')
    GatewayInterceptorConfiguration = Shapes::StructureShape.new(name: 'GatewayInterceptorConfiguration')
    GatewayInterceptorConfigurations = Shapes::ListShape.new(name: 'GatewayInterceptorConfigurations')
    GatewayMaxResults = Shapes::IntegerShape.new(name: 'GatewayMaxResults')
    GatewayName = Shapes::StringShape.new(name: 'GatewayName')
    GatewayNextToken = Shapes::StringShape.new(name: 'GatewayNextToken')
    GatewayProtocolConfiguration = Shapes::UnionShape.new(name: 'GatewayProtocolConfiguration')
    GatewayProtocolType = Shapes::StringShape.new(name: 'GatewayProtocolType')
    GatewayStatus = Shapes::StringShape.new(name: 'GatewayStatus')
    GatewaySummaries = Shapes::ListShape.new(name: 'GatewaySummaries')
    GatewaySummary = Shapes::StructureShape.new(name: 'GatewaySummary')
    GatewayTarget = Shapes::StructureShape.new(name: 'GatewayTarget')
    GatewayTargetList = Shapes::ListShape.new(name: 'GatewayTargetList')
    GatewayUrl = Shapes::StringShape.new(name: 'GatewayUrl')
    GetAgentRuntimeEndpointRequest = Shapes::StructureShape.new(name: 'GetAgentRuntimeEndpointRequest')
    GetAgentRuntimeEndpointResponse = Shapes::StructureShape.new(name: 'GetAgentRuntimeEndpointResponse')
    GetAgentRuntimeRequest = Shapes::StructureShape.new(name: 'GetAgentRuntimeRequest')
    GetAgentRuntimeResponse = Shapes::StructureShape.new(name: 'GetAgentRuntimeResponse')
    GetApiKeyCredentialProviderRequest = Shapes::StructureShape.new(name: 'GetApiKeyCredentialProviderRequest')
    GetApiKeyCredentialProviderResponse = Shapes::StructureShape.new(name: 'GetApiKeyCredentialProviderResponse')
    GetBrowserRequest = Shapes::StructureShape.new(name: 'GetBrowserRequest')
    GetBrowserResponse = Shapes::StructureShape.new(name: 'GetBrowserResponse')
    GetCodeInterpreterRequest = Shapes::StructureShape.new(name: 'GetCodeInterpreterRequest')
    GetCodeInterpreterResponse = Shapes::StructureShape.new(name: 'GetCodeInterpreterResponse')
    GetGatewayRequest = Shapes::StructureShape.new(name: 'GetGatewayRequest')
    GetGatewayResponse = Shapes::StructureShape.new(name: 'GetGatewayResponse')
    GetGatewayTargetRequest = Shapes::StructureShape.new(name: 'GetGatewayTargetRequest')
    GetGatewayTargetResponse = Shapes::StructureShape.new(name: 'GetGatewayTargetResponse')
    GetMemoryInput = Shapes::StructureShape.new(name: 'GetMemoryInput')
    GetMemoryOutput = Shapes::StructureShape.new(name: 'GetMemoryOutput')
    GetOauth2CredentialProviderRequest = Shapes::StructureShape.new(name: 'GetOauth2CredentialProviderRequest')
    GetOauth2CredentialProviderResponse = Shapes::StructureShape.new(name: 'GetOauth2CredentialProviderResponse')
    GetTokenVaultRequest = Shapes::StructureShape.new(name: 'GetTokenVaultRequest')
    GetTokenVaultResponse = Shapes::StructureShape.new(name: 'GetTokenVaultResponse')
    GetWorkloadIdentityRequest = Shapes::StructureShape.new(name: 'GetWorkloadIdentityRequest')
    GetWorkloadIdentityResponse = Shapes::StructureShape.new(name: 'GetWorkloadIdentityResponse')
    GithubOauth2ProviderConfigInput = Shapes::StructureShape.new(name: 'GithubOauth2ProviderConfigInput')
    GithubOauth2ProviderConfigOutput = Shapes::StructureShape.new(name: 'GithubOauth2ProviderConfigOutput')
    GoogleOauth2ProviderConfigInput = Shapes::StructureShape.new(name: 'GoogleOauth2ProviderConfigInput')
    GoogleOauth2ProviderConfigOutput = Shapes::StructureShape.new(name: 'GoogleOauth2ProviderConfigOutput')
    HeaderName = Shapes::StringShape.new(name: 'HeaderName')
    IncludedOauth2ProviderConfigInput = Shapes::StructureShape.new(name: 'IncludedOauth2ProviderConfigInput')
    IncludedOauth2ProviderConfigOutput = Shapes::StructureShape.new(name: 'IncludedOauth2ProviderConfigOutput')
    InlinePayload = Shapes::StringShape.new(name: 'InlinePayload')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InterceptorConfiguration = Shapes::UnionShape.new(name: 'InterceptorConfiguration')
    InterceptorInputConfiguration = Shapes::StructureShape.new(name: 'InterceptorInputConfiguration')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    InvocationConfiguration = Shapes::StructureShape.new(name: 'InvocationConfiguration')
    InvocationConfigurationInput = Shapes::StructureShape.new(name: 'InvocationConfigurationInput')
    InvocationConfigurationInputPayloadDeliveryBucketNameString = Shapes::StringShape.new(name: 'InvocationConfigurationInputPayloadDeliveryBucketNameString')
    IssuerUrlType = Shapes::StringShape.new(name: 'IssuerUrlType')
    KeyType = Shapes::StringShape.new(name: 'KeyType')
    KmsConfiguration = Shapes::StructureShape.new(name: 'KmsConfiguration')
    KmsKeyArn = Shapes::StringShape.new(name: 'KmsKeyArn')
    LambdaFunctionArn = Shapes::StringShape.new(name: 'LambdaFunctionArn')
    LambdaInterceptorConfiguration = Shapes::StructureShape.new(name: 'LambdaInterceptorConfiguration')
    LifecycleConfiguration = Shapes::StructureShape.new(name: 'LifecycleConfiguration')
    LifecycleConfigurationIdleRuntimeSessionTimeoutInteger = Shapes::IntegerShape.new(name: 'LifecycleConfigurationIdleRuntimeSessionTimeoutInteger')
    LifecycleConfigurationMaxLifetimeInteger = Shapes::IntegerShape.new(name: 'LifecycleConfigurationMaxLifetimeInteger')
    LinkedinOauth2ProviderConfigInput = Shapes::StructureShape.new(name: 'LinkedinOauth2ProviderConfigInput')
    LinkedinOauth2ProviderConfigOutput = Shapes::StructureShape.new(name: 'LinkedinOauth2ProviderConfigOutput')
    ListAgentRuntimeEndpointsRequest = Shapes::StructureShape.new(name: 'ListAgentRuntimeEndpointsRequest')
    ListAgentRuntimeEndpointsResponse = Shapes::StructureShape.new(name: 'ListAgentRuntimeEndpointsResponse')
    ListAgentRuntimeVersionsRequest = Shapes::StructureShape.new(name: 'ListAgentRuntimeVersionsRequest')
    ListAgentRuntimeVersionsResponse = Shapes::StructureShape.new(name: 'ListAgentRuntimeVersionsResponse')
    ListAgentRuntimesRequest = Shapes::StructureShape.new(name: 'ListAgentRuntimesRequest')
    ListAgentRuntimesResponse = Shapes::StructureShape.new(name: 'ListAgentRuntimesResponse')
    ListApiKeyCredentialProvidersRequest = Shapes::StructureShape.new(name: 'ListApiKeyCredentialProvidersRequest')
    ListApiKeyCredentialProvidersResponse = Shapes::StructureShape.new(name: 'ListApiKeyCredentialProvidersResponse')
    ListBrowsersRequest = Shapes::StructureShape.new(name: 'ListBrowsersRequest')
    ListBrowsersResponse = Shapes::StructureShape.new(name: 'ListBrowsersResponse')
    ListCodeInterpretersRequest = Shapes::StructureShape.new(name: 'ListCodeInterpretersRequest')
    ListCodeInterpretersResponse = Shapes::StructureShape.new(name: 'ListCodeInterpretersResponse')
    ListGatewayTargetsRequest = Shapes::StructureShape.new(name: 'ListGatewayTargetsRequest')
    ListGatewayTargetsResponse = Shapes::StructureShape.new(name: 'ListGatewayTargetsResponse')
    ListGatewaysRequest = Shapes::StructureShape.new(name: 'ListGatewaysRequest')
    ListGatewaysResponse = Shapes::StructureShape.new(name: 'ListGatewaysResponse')
    ListMemoriesInput = Shapes::StructureShape.new(name: 'ListMemoriesInput')
    ListMemoriesInputMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListMemoriesInputMaxResultsInteger')
    ListMemoriesOutput = Shapes::StructureShape.new(name: 'ListMemoriesOutput')
    ListOauth2CredentialProvidersRequest = Shapes::StructureShape.new(name: 'ListOauth2CredentialProvidersRequest')
    ListOauth2CredentialProvidersRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListOauth2CredentialProvidersRequestMaxResultsInteger')
    ListOauth2CredentialProvidersResponse = Shapes::StructureShape.new(name: 'ListOauth2CredentialProvidersResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    ListWorkloadIdentitiesRequest = Shapes::StructureShape.new(name: 'ListWorkloadIdentitiesRequest')
    ListWorkloadIdentitiesRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListWorkloadIdentitiesRequestMaxResultsInteger')
    ListWorkloadIdentitiesResponse = Shapes::StructureShape.new(name: 'ListWorkloadIdentitiesResponse')
    MCPGatewayConfiguration = Shapes::StructureShape.new(name: 'MCPGatewayConfiguration')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    McpInstructions = Shapes::StringShape.new(name: 'McpInstructions')
    McpLambdaTargetConfiguration = Shapes::StructureShape.new(name: 'McpLambdaTargetConfiguration')
    McpServerTargetConfiguration = Shapes::StructureShape.new(name: 'McpServerTargetConfiguration')
    McpServerTargetConfigurationEndpointString = Shapes::StringShape.new(name: 'McpServerTargetConfigurationEndpointString')
    McpSupportedVersions = Shapes::ListShape.new(name: 'McpSupportedVersions')
    McpTargetConfiguration = Shapes::UnionShape.new(name: 'McpTargetConfiguration')
    McpVersion = Shapes::StringShape.new(name: 'McpVersion')
    Memory = Shapes::StructureShape.new(name: 'Memory')
    MemoryArn = Shapes::StringShape.new(name: 'MemoryArn')
    MemoryEventExpiryDurationInteger = Shapes::IntegerShape.new(name: 'MemoryEventExpiryDurationInteger')
    MemoryId = Shapes::StringShape.new(name: 'MemoryId')
    MemoryStatus = Shapes::StringShape.new(name: 'MemoryStatus')
    MemoryStrategy = Shapes::StructureShape.new(name: 'MemoryStrategy')
    MemoryStrategyId = Shapes::StringShape.new(name: 'MemoryStrategyId')
    MemoryStrategyInput = Shapes::UnionShape.new(name: 'MemoryStrategyInput')
    MemoryStrategyInputList = Shapes::ListShape.new(name: 'MemoryStrategyInputList')
    MemoryStrategyList = Shapes::ListShape.new(name: 'MemoryStrategyList')
    MemoryStrategyStatus = Shapes::StringShape.new(name: 'MemoryStrategyStatus')
    MemoryStrategyType = Shapes::StringShape.new(name: 'MemoryStrategyType')
    MemorySummary = Shapes::StructureShape.new(name: 'MemorySummary')
    MemorySummaryList = Shapes::ListShape.new(name: 'MemorySummaryList')
    MessageBasedTrigger = Shapes::StructureShape.new(name: 'MessageBasedTrigger')
    MessageBasedTriggerInput = Shapes::StructureShape.new(name: 'MessageBasedTriggerInput')
    MessageBasedTriggerInputMessageCountInteger = Shapes::IntegerShape.new(name: 'MessageBasedTriggerInputMessageCountInteger')
    MicrosoftOauth2ProviderConfigInput = Shapes::StructureShape.new(name: 'MicrosoftOauth2ProviderConfigInput')
    MicrosoftOauth2ProviderConfigOutput = Shapes::StructureShape.new(name: 'MicrosoftOauth2ProviderConfigOutput')
    ModifyConsolidationConfiguration = Shapes::UnionShape.new(name: 'ModifyConsolidationConfiguration')
    ModifyExtractionConfiguration = Shapes::UnionShape.new(name: 'ModifyExtractionConfiguration')
    ModifyInvocationConfigurationInput = Shapes::StructureShape.new(name: 'ModifyInvocationConfigurationInput')
    ModifyInvocationConfigurationInputPayloadDeliveryBucketNameString = Shapes::StringShape.new(name: 'ModifyInvocationConfigurationInputPayloadDeliveryBucketNameString')
    ModifyMemoryStrategies = Shapes::StructureShape.new(name: 'ModifyMemoryStrategies')
    ModifyMemoryStrategiesList = Shapes::ListShape.new(name: 'ModifyMemoryStrategiesList')
    ModifyMemoryStrategyInput = Shapes::StructureShape.new(name: 'ModifyMemoryStrategyInput')
    ModifySelfManagedConfiguration = Shapes::StructureShape.new(name: 'ModifySelfManagedConfiguration')
    ModifySelfManagedConfigurationHistoricalContextWindowSizeInteger = Shapes::IntegerShape.new(name: 'ModifySelfManagedConfigurationHistoricalContextWindowSizeInteger')
    ModifyStrategyConfiguration = Shapes::StructureShape.new(name: 'ModifyStrategyConfiguration')
    Name = Shapes::StringShape.new(name: 'Name')
    Namespace = Shapes::StringShape.new(name: 'Namespace')
    NamespacesList = Shapes::ListShape.new(name: 'NamespacesList')
    NetworkConfiguration = Shapes::StructureShape.new(name: 'NetworkConfiguration')
    NetworkMode = Shapes::StringShape.new(name: 'NetworkMode')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    NonBlankString = Shapes::StringShape.new(name: 'NonBlankString')
    OAuthCredentialProvider = Shapes::StructureShape.new(name: 'OAuthCredentialProvider')
    OAuthCredentialProviderArn = Shapes::StringShape.new(name: 'OAuthCredentialProviderArn')
    OAuthCustomParameters = Shapes::MapShape.new(name: 'OAuthCustomParameters')
    OAuthCustomParametersKey = Shapes::StringShape.new(name: 'OAuthCustomParametersKey')
    OAuthCustomParametersValue = Shapes::StringShape.new(name: 'OAuthCustomParametersValue')
    OAuthScope = Shapes::StringShape.new(name: 'OAuthScope')
    OAuthScopes = Shapes::ListShape.new(name: 'OAuthScopes')
    Oauth2AuthorizationServerMetadata = Shapes::StructureShape.new(name: 'Oauth2AuthorizationServerMetadata')
    Oauth2CredentialProviderItem = Shapes::StructureShape.new(name: 'Oauth2CredentialProviderItem')
    Oauth2CredentialProviders = Shapes::ListShape.new(name: 'Oauth2CredentialProviders')
    Oauth2Discovery = Shapes::UnionShape.new(name: 'Oauth2Discovery')
    Oauth2ProviderConfigInput = Shapes::UnionShape.new(name: 'Oauth2ProviderConfigInput')
    Oauth2ProviderConfigOutput = Shapes::UnionShape.new(name: 'Oauth2ProviderConfigOutput')
    OverrideType = Shapes::StringShape.new(name: 'OverrideType')
    Prompt = Shapes::StringShape.new(name: 'Prompt')
    ProtocolConfiguration = Shapes::StructureShape.new(name: 'ProtocolConfiguration')
    RecordingConfig = Shapes::StructureShape.new(name: 'RecordingConfig')
    RequestHeaderAllowlist = Shapes::ListShape.new(name: 'RequestHeaderAllowlist')
    RequestHeaderConfiguration = Shapes::UnionShape.new(name: 'RequestHeaderConfiguration')
    RequiredProperties = Shapes::ListShape.new(name: 'RequiredProperties')
    ResourceLimitExceededException = Shapes::StructureShape.new(name: 'ResourceLimitExceededException')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceOauth2ReturnUrlListType = Shapes::ListShape.new(name: 'ResourceOauth2ReturnUrlListType')
    ResourceOauth2ReturnUrlType = Shapes::StringShape.new(name: 'ResourceOauth2ReturnUrlType')
    ResourceType = Shapes::StringShape.new(name: 'ResourceType')
    ResponseListType = Shapes::ListShape.new(name: 'ResponseListType')
    ResponseType = Shapes::StringShape.new(name: 'ResponseType')
    RoleArn = Shapes::StringShape.new(name: 'RoleArn')
    RuntimeContainerUri = Shapes::StringShape.new(name: 'RuntimeContainerUri')
    S3BucketUri = Shapes::StringShape.new(name: 'S3BucketUri')
    S3Configuration = Shapes::StructureShape.new(name: 'S3Configuration')
    S3Location = Shapes::StructureShape.new(name: 'S3Location')
    S3LocationBucketString = Shapes::StringShape.new(name: 'S3LocationBucketString')
    S3LocationPrefixString = Shapes::StringShape.new(name: 'S3LocationPrefixString')
    S3LocationVersionIdString = Shapes::StringShape.new(name: 'S3LocationVersionIdString')
    SalesforceOauth2ProviderConfigInput = Shapes::StructureShape.new(name: 'SalesforceOauth2ProviderConfigInput')
    SalesforceOauth2ProviderConfigOutput = Shapes::StructureShape.new(name: 'SalesforceOauth2ProviderConfigOutput')
    SandboxName = Shapes::StringShape.new(name: 'SandboxName')
    SchemaDefinition = Shapes::StructureShape.new(name: 'SchemaDefinition')
    SchemaProperties = Shapes::MapShape.new(name: 'SchemaProperties')
    SchemaType = Shapes::StringShape.new(name: 'SchemaType')
    SearchType = Shapes::StringShape.new(name: 'SearchType')
    Secret = Shapes::StructureShape.new(name: 'Secret')
    SecretArn = Shapes::StringShape.new(name: 'SecretArn')
    SecurityGroupId = Shapes::StringShape.new(name: 'SecurityGroupId')
    SecurityGroups = Shapes::ListShape.new(name: 'SecurityGroups')
    SelfManagedConfiguration = Shapes::StructureShape.new(name: 'SelfManagedConfiguration')
    SelfManagedConfigurationInput = Shapes::StructureShape.new(name: 'SelfManagedConfigurationInput')
    SelfManagedConfigurationInputHistoricalContextWindowSizeInteger = Shapes::IntegerShape.new(name: 'SelfManagedConfigurationInputHistoricalContextWindowSizeInteger')
    SemanticConsolidationOverride = Shapes::StructureShape.new(name: 'SemanticConsolidationOverride')
    SemanticExtractionOverride = Shapes::StructureShape.new(name: 'SemanticExtractionOverride')
    SemanticMemoryStrategyInput = Shapes::StructureShape.new(name: 'SemanticMemoryStrategyInput')
    SemanticOverrideConfigurationInput = Shapes::StructureShape.new(name: 'SemanticOverrideConfigurationInput')
    SemanticOverrideConsolidationConfigurationInput = Shapes::StructureShape.new(name: 'SemanticOverrideConsolidationConfigurationInput')
    SemanticOverrideExtractionConfigurationInput = Shapes::StructureShape.new(name: 'SemanticOverrideExtractionConfigurationInput')
    ServerProtocol = Shapes::StringShape.new(name: 'ServerProtocol')
    ServiceException = Shapes::StructureShape.new(name: 'ServiceException')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    SetTokenVaultCMKRequest = Shapes::StructureShape.new(name: 'SetTokenVaultCMKRequest')
    SetTokenVaultCMKResponse = Shapes::StructureShape.new(name: 'SetTokenVaultCMKResponse')
    SlackOauth2ProviderConfigInput = Shapes::StructureShape.new(name: 'SlackOauth2ProviderConfigInput')
    SlackOauth2ProviderConfigOutput = Shapes::StructureShape.new(name: 'SlackOauth2ProviderConfigOutput')
    StatusReason = Shapes::StringShape.new(name: 'StatusReason')
    StatusReasons = Shapes::ListShape.new(name: 'StatusReasons')
    StrategyConfiguration = Shapes::StructureShape.new(name: 'StrategyConfiguration')
    String = Shapes::StringShape.new(name: 'String')
    SubnetId = Shapes::StringShape.new(name: 'SubnetId')
    Subnets = Shapes::ListShape.new(name: 'Subnets')
    SummaryConsolidationOverride = Shapes::StructureShape.new(name: 'SummaryConsolidationOverride')
    SummaryMemoryStrategyInput = Shapes::StructureShape.new(name: 'SummaryMemoryStrategyInput')
    SummaryOverrideConfigurationInput = Shapes::StructureShape.new(name: 'SummaryOverrideConfigurationInput')
    SummaryOverrideConsolidationConfigurationInput = Shapes::StructureShape.new(name: 'SummaryOverrideConsolidationConfigurationInput')
    SynchronizeGatewayTargetsRequest = Shapes::StructureShape.new(name: 'SynchronizeGatewayTargetsRequest')
    SynchronizeGatewayTargetsResponse = Shapes::StructureShape.new(name: 'SynchronizeGatewayTargetsResponse')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TaggableResourcesArn = Shapes::StringShape.new(name: 'TaggableResourcesArn')
    TagsMap = Shapes::MapShape.new(name: 'TagsMap')
    TargetConfiguration = Shapes::UnionShape.new(name: 'TargetConfiguration')
    TargetDescription = Shapes::StringShape.new(name: 'TargetDescription')
    TargetId = Shapes::StringShape.new(name: 'TargetId')
    TargetIdList = Shapes::ListShape.new(name: 'TargetIdList')
    TargetMaxResults = Shapes::IntegerShape.new(name: 'TargetMaxResults')
    TargetName = Shapes::StringShape.new(name: 'TargetName')
    TargetNextToken = Shapes::StringShape.new(name: 'TargetNextToken')
    TargetStatus = Shapes::StringShape.new(name: 'TargetStatus')
    TargetSummaries = Shapes::ListShape.new(name: 'TargetSummaries')
    TargetSummary = Shapes::StructureShape.new(name: 'TargetSummary')
    TenantIdType = Shapes::StringShape.new(name: 'TenantIdType')
    ThrottledException = Shapes::StructureShape.new(name: 'ThrottledException')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    TimeBasedTrigger = Shapes::StructureShape.new(name: 'TimeBasedTrigger')
    TimeBasedTriggerInput = Shapes::StructureShape.new(name: 'TimeBasedTriggerInput')
    TimeBasedTriggerInputIdleSessionTimeoutInteger = Shapes::IntegerShape.new(name: 'TimeBasedTriggerInputIdleSessionTimeoutInteger')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    TokenAuthMethod = Shapes::StringShape.new(name: 'TokenAuthMethod')
    TokenBasedTrigger = Shapes::StructureShape.new(name: 'TokenBasedTrigger')
    TokenBasedTriggerInput = Shapes::StructureShape.new(name: 'TokenBasedTriggerInput')
    TokenBasedTriggerInputTokenCountInteger = Shapes::IntegerShape.new(name: 'TokenBasedTriggerInputTokenCountInteger')
    TokenEndpointAuthMethodsType = Shapes::ListShape.new(name: 'TokenEndpointAuthMethodsType')
    TokenEndpointType = Shapes::StringShape.new(name: 'TokenEndpointType')
    TokenVaultIdType = Shapes::StringShape.new(name: 'TokenVaultIdType')
    ToolDefinition = Shapes::StructureShape.new(name: 'ToolDefinition')
    ToolDefinitions = Shapes::ListShape.new(name: 'ToolDefinitions')
    ToolSchema = Shapes::UnionShape.new(name: 'ToolSchema')
    TriggerCondition = Shapes::UnionShape.new(name: 'TriggerCondition')
    TriggerConditionInput = Shapes::UnionShape.new(name: 'TriggerConditionInput')
    TriggerConditionInputList = Shapes::ListShape.new(name: 'TriggerConditionInputList')
    TriggerConditionsList = Shapes::ListShape.new(name: 'TriggerConditionsList')
    UnauthorizedException = Shapes::StructureShape.new(name: 'UnauthorizedException')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateAgentRuntimeEndpointRequest = Shapes::StructureShape.new(name: 'UpdateAgentRuntimeEndpointRequest')
    UpdateAgentRuntimeEndpointResponse = Shapes::StructureShape.new(name: 'UpdateAgentRuntimeEndpointResponse')
    UpdateAgentRuntimeRequest = Shapes::StructureShape.new(name: 'UpdateAgentRuntimeRequest')
    UpdateAgentRuntimeResponse = Shapes::StructureShape.new(name: 'UpdateAgentRuntimeResponse')
    UpdateApiKeyCredentialProviderRequest = Shapes::StructureShape.new(name: 'UpdateApiKeyCredentialProviderRequest')
    UpdateApiKeyCredentialProviderResponse = Shapes::StructureShape.new(name: 'UpdateApiKeyCredentialProviderResponse')
    UpdateGatewayRequest = Shapes::StructureShape.new(name: 'UpdateGatewayRequest')
    UpdateGatewayResponse = Shapes::StructureShape.new(name: 'UpdateGatewayResponse')
    UpdateGatewayTargetRequest = Shapes::StructureShape.new(name: 'UpdateGatewayTargetRequest')
    UpdateGatewayTargetResponse = Shapes::StructureShape.new(name: 'UpdateGatewayTargetResponse')
    UpdateMemoryInput = Shapes::StructureShape.new(name: 'UpdateMemoryInput')
    UpdateMemoryInputClientTokenString = Shapes::StringShape.new(name: 'UpdateMemoryInputClientTokenString')
    UpdateMemoryInputEventExpiryDurationInteger = Shapes::IntegerShape.new(name: 'UpdateMemoryInputEventExpiryDurationInteger')
    UpdateMemoryOutput = Shapes::StructureShape.new(name: 'UpdateMemoryOutput')
    UpdateOauth2CredentialProviderRequest = Shapes::StructureShape.new(name: 'UpdateOauth2CredentialProviderRequest')
    UpdateOauth2CredentialProviderResponse = Shapes::StructureShape.new(name: 'UpdateOauth2CredentialProviderResponse')
    UpdateWorkloadIdentityRequest = Shapes::StructureShape.new(name: 'UpdateWorkloadIdentityRequest')
    UpdateWorkloadIdentityResponse = Shapes::StructureShape.new(name: 'UpdateWorkloadIdentityResponse')
    UserPreferenceConsolidationOverride = Shapes::StructureShape.new(name: 'UserPreferenceConsolidationOverride')
    UserPreferenceExtractionOverride = Shapes::StructureShape.new(name: 'UserPreferenceExtractionOverride')
    UserPreferenceMemoryStrategyInput = Shapes::StructureShape.new(name: 'UserPreferenceMemoryStrategyInput')
    UserPreferenceOverrideConfigurationInput = Shapes::StructureShape.new(name: 'UserPreferenceOverrideConfigurationInput')
    UserPreferenceOverrideConsolidationConfigurationInput = Shapes::StructureShape.new(name: 'UserPreferenceOverrideConsolidationConfigurationInput')
    UserPreferenceOverrideExtractionConfigurationInput = Shapes::StructureShape.new(name: 'UserPreferenceOverrideExtractionConfigurationInput')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationExceptionField = Shapes::StructureShape.new(name: 'ValidationExceptionField')
    ValidationExceptionFieldList = Shapes::ListShape.new(name: 'ValidationExceptionFieldList')
    ValidationExceptionReason = Shapes::StringShape.new(name: 'ValidationExceptionReason')
    VpcConfig = Shapes::StructureShape.new(name: 'VpcConfig')
    WorkloadIdentityArn = Shapes::StringShape.new(name: 'WorkloadIdentityArn')
    WorkloadIdentityArnType = Shapes::StringShape.new(name: 'WorkloadIdentityArnType')
    WorkloadIdentityDetails = Shapes::StructureShape.new(name: 'WorkloadIdentityDetails')
    WorkloadIdentityList = Shapes::ListShape.new(name: 'WorkloadIdentityList')
    WorkloadIdentityNameType = Shapes::StringShape.new(name: 'WorkloadIdentityNameType')
    WorkloadIdentityType = Shapes::StructureShape.new(name: 'WorkloadIdentityType')
    entryPoint = Shapes::StringShape.new(name: 'entryPoint')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AgentRuntime.add_member(:agent_runtime_arn, Shapes::ShapeRef.new(shape: AgentRuntimeArn, required: true, location_name: "agentRuntimeArn"))
    AgentRuntime.add_member(:agent_runtime_id, Shapes::ShapeRef.new(shape: AgentRuntimeId, required: true, location_name: "agentRuntimeId"))
    AgentRuntime.add_member(:agent_runtime_version, Shapes::ShapeRef.new(shape: AgentRuntimeVersion, required: true, location_name: "agentRuntimeVersion"))
    AgentRuntime.add_member(:agent_runtime_name, Shapes::ShapeRef.new(shape: AgentRuntimeName, required: true, location_name: "agentRuntimeName"))
    AgentRuntime.add_member(:description, Shapes::ShapeRef.new(shape: Description, required: true, location_name: "description"))
    AgentRuntime.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "lastUpdatedAt"))
    AgentRuntime.add_member(:status, Shapes::ShapeRef.new(shape: AgentRuntimeStatus, required: true, location_name: "status"))
    AgentRuntime.struct_class = Types::AgentRuntime

    AgentRuntimeArtifact.add_member(:container_configuration, Shapes::ShapeRef.new(shape: ContainerConfiguration, location_name: "containerConfiguration"))
    AgentRuntimeArtifact.add_member(:code_configuration, Shapes::ShapeRef.new(shape: CodeConfiguration, location_name: "codeConfiguration"))
    AgentRuntimeArtifact.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    AgentRuntimeArtifact.add_member_subclass(:container_configuration, Types::AgentRuntimeArtifact::ContainerConfiguration)
    AgentRuntimeArtifact.add_member_subclass(:code_configuration, Types::AgentRuntimeArtifact::CodeConfiguration)
    AgentRuntimeArtifact.add_member_subclass(:unknown, Types::AgentRuntimeArtifact::Unknown)
    AgentRuntimeArtifact.struct_class = Types::AgentRuntimeArtifact

    AgentRuntimeEndpoint.add_member(:name, Shapes::ShapeRef.new(shape: EndpointName, required: true, location_name: "name"))
    AgentRuntimeEndpoint.add_member(:live_version, Shapes::ShapeRef.new(shape: AgentRuntimeVersion, location_name: "liveVersion"))
    AgentRuntimeEndpoint.add_member(:target_version, Shapes::ShapeRef.new(shape: AgentRuntimeVersion, location_name: "targetVersion"))
    AgentRuntimeEndpoint.add_member(:agent_runtime_endpoint_arn, Shapes::ShapeRef.new(shape: AgentRuntimeEndpointArn, required: true, location_name: "agentRuntimeEndpointArn"))
    AgentRuntimeEndpoint.add_member(:agent_runtime_arn, Shapes::ShapeRef.new(shape: AgentRuntimeArn, required: true, location_name: "agentRuntimeArn"))
    AgentRuntimeEndpoint.add_member(:status, Shapes::ShapeRef.new(shape: AgentRuntimeEndpointStatus, required: true, location_name: "status"))
    AgentRuntimeEndpoint.add_member(:id, Shapes::ShapeRef.new(shape: AgentRuntimeEndpointId, required: true, location_name: "id"))
    AgentRuntimeEndpoint.add_member(:description, Shapes::ShapeRef.new(shape: AgentEndpointDescription, location_name: "description"))
    AgentRuntimeEndpoint.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    AgentRuntimeEndpoint.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "lastUpdatedAt"))
    AgentRuntimeEndpoint.struct_class = Types::AgentRuntimeEndpoint

    AgentRuntimeEndpoints.member = Shapes::ShapeRef.new(shape: AgentRuntimeEndpoint)

    AgentRuntimes.member = Shapes::ShapeRef.new(shape: AgentRuntime)

    AllowedAudienceList.member = Shapes::ShapeRef.new(shape: AllowedAudience)

    AllowedClientsList.member = Shapes::ShapeRef.new(shape: AllowedClient)

    ApiKeyCredentialProvider.add_member(:provider_arn, Shapes::ShapeRef.new(shape: ApiKeyCredentialProviderArn, required: true, location_name: "providerArn"))
    ApiKeyCredentialProvider.add_member(:credential_parameter_name, Shapes::ShapeRef.new(shape: ApiKeyCredentialParameterName, location_name: "credentialParameterName"))
    ApiKeyCredentialProvider.add_member(:credential_prefix, Shapes::ShapeRef.new(shape: ApiKeyCredentialPrefix, location_name: "credentialPrefix"))
    ApiKeyCredentialProvider.add_member(:credential_location, Shapes::ShapeRef.new(shape: ApiKeyCredentialLocation, location_name: "credentialLocation"))
    ApiKeyCredentialProvider.struct_class = Types::ApiKeyCredentialProvider

    ApiKeyCredentialProviderItem.add_member(:name, Shapes::ShapeRef.new(shape: CredentialProviderName, required: true, location_name: "name"))
    ApiKeyCredentialProviderItem.add_member(:credential_provider_arn, Shapes::ShapeRef.new(shape: ApiKeyCredentialProviderArnType, required: true, location_name: "credentialProviderArn"))
    ApiKeyCredentialProviderItem.add_member(:created_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdTime"))
    ApiKeyCredentialProviderItem.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "lastUpdatedTime"))
    ApiKeyCredentialProviderItem.struct_class = Types::ApiKeyCredentialProviderItem

    ApiKeyCredentialProviders.member = Shapes::ShapeRef.new(shape: ApiKeyCredentialProviderItem)

    ApiSchemaConfiguration.add_member(:s3, Shapes::ShapeRef.new(shape: S3Configuration, location_name: "s3"))
    ApiSchemaConfiguration.add_member(:inline_payload, Shapes::ShapeRef.new(shape: InlinePayload, location_name: "inlinePayload"))
    ApiSchemaConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ApiSchemaConfiguration.add_member_subclass(:s3, Types::ApiSchemaConfiguration::S3)
    ApiSchemaConfiguration.add_member_subclass(:inline_payload, Types::ApiSchemaConfiguration::InlinePayload)
    ApiSchemaConfiguration.add_member_subclass(:unknown, Types::ApiSchemaConfiguration::Unknown)
    ApiSchemaConfiguration.struct_class = Types::ApiSchemaConfiguration

    AtlassianOauth2ProviderConfigInput.add_member(:client_id, Shapes::ShapeRef.new(shape: ClientIdType, required: true, location_name: "clientId"))
    AtlassianOauth2ProviderConfigInput.add_member(:client_secret, Shapes::ShapeRef.new(shape: ClientSecretType, required: true, location_name: "clientSecret"))
    AtlassianOauth2ProviderConfigInput.struct_class = Types::AtlassianOauth2ProviderConfigInput

    AtlassianOauth2ProviderConfigOutput.add_member(:oauth_discovery, Shapes::ShapeRef.new(shape: Oauth2Discovery, required: true, location_name: "oauthDiscovery"))
    AtlassianOauth2ProviderConfigOutput.add_member(:client_id, Shapes::ShapeRef.new(shape: ClientIdType, location_name: "clientId"))
    AtlassianOauth2ProviderConfigOutput.struct_class = Types::AtlassianOauth2ProviderConfigOutput

    AuthorizerConfiguration.add_member(:custom_jwt_authorizer, Shapes::ShapeRef.new(shape: CustomJWTAuthorizerConfiguration, location_name: "customJWTAuthorizer"))
    AuthorizerConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    AuthorizerConfiguration.add_member_subclass(:custom_jwt_authorizer, Types::AuthorizerConfiguration::CustomJwtAuthorizer)
    AuthorizerConfiguration.add_member_subclass(:unknown, Types::AuthorizerConfiguration::Unknown)
    AuthorizerConfiguration.struct_class = Types::AuthorizerConfiguration

    BrowserNetworkConfiguration.add_member(:network_mode, Shapes::ShapeRef.new(shape: BrowserNetworkMode, required: true, location_name: "networkMode"))
    BrowserNetworkConfiguration.add_member(:vpc_config, Shapes::ShapeRef.new(shape: VpcConfig, location_name: "vpcConfig"))
    BrowserNetworkConfiguration.struct_class = Types::BrowserNetworkConfiguration

    BrowserSigningConfigInput.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "enabled"))
    BrowserSigningConfigInput.struct_class = Types::BrowserSigningConfigInput

    BrowserSigningConfigOutput.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "enabled"))
    BrowserSigningConfigOutput.struct_class = Types::BrowserSigningConfigOutput

    BrowserSummaries.member = Shapes::ShapeRef.new(shape: BrowserSummary)

    BrowserSummary.add_member(:browser_id, Shapes::ShapeRef.new(shape: BrowserId, required: true, location_name: "browserId"))
    BrowserSummary.add_member(:browser_arn, Shapes::ShapeRef.new(shape: BrowserArn, required: true, location_name: "browserArn"))
    BrowserSummary.add_member(:name, Shapes::ShapeRef.new(shape: SandboxName, location_name: "name"))
    BrowserSummary.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    BrowserSummary.add_member(:status, Shapes::ShapeRef.new(shape: BrowserStatus, required: true, location_name: "status"))
    BrowserSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    BrowserSummary.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, location_name: "lastUpdatedAt"))
    BrowserSummary.struct_class = Types::BrowserSummary

    Code.add_member(:s3, Shapes::ShapeRef.new(shape: S3Location, location_name: "s3"))
    Code.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    Code.add_member_subclass(:s3, Types::Code::S3)
    Code.add_member_subclass(:unknown, Types::Code::Unknown)
    Code.struct_class = Types::Code

    CodeConfiguration.add_member(:code, Shapes::ShapeRef.new(shape: Code, required: true, location_name: "code"))
    CodeConfiguration.add_member(:runtime, Shapes::ShapeRef.new(shape: AgentManagedRuntimeType, required: true, location_name: "runtime"))
    CodeConfiguration.add_member(:entry_point, Shapes::ShapeRef.new(shape: CodeConfigurationEntryPointList, required: true, location_name: "entryPoint"))
    CodeConfiguration.struct_class = Types::CodeConfiguration

    CodeConfigurationEntryPointList.member = Shapes::ShapeRef.new(shape: entryPoint)

    CodeInterpreterNetworkConfiguration.add_member(:network_mode, Shapes::ShapeRef.new(shape: CodeInterpreterNetworkMode, required: true, location_name: "networkMode"))
    CodeInterpreterNetworkConfiguration.add_member(:vpc_config, Shapes::ShapeRef.new(shape: VpcConfig, location_name: "vpcConfig"))
    CodeInterpreterNetworkConfiguration.struct_class = Types::CodeInterpreterNetworkConfiguration

    CodeInterpreterSummaries.member = Shapes::ShapeRef.new(shape: CodeInterpreterSummary)

    CodeInterpreterSummary.add_member(:code_interpreter_id, Shapes::ShapeRef.new(shape: CodeInterpreterId, required: true, location_name: "codeInterpreterId"))
    CodeInterpreterSummary.add_member(:code_interpreter_arn, Shapes::ShapeRef.new(shape: CodeInterpreterArn, required: true, location_name: "codeInterpreterArn"))
    CodeInterpreterSummary.add_member(:name, Shapes::ShapeRef.new(shape: SandboxName, location_name: "name"))
    CodeInterpreterSummary.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CodeInterpreterSummary.add_member(:status, Shapes::ShapeRef.new(shape: CodeInterpreterStatus, required: true, location_name: "status"))
    CodeInterpreterSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    CodeInterpreterSummary.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, location_name: "lastUpdatedAt"))
    CodeInterpreterSummary.struct_class = Types::CodeInterpreterSummary

    ConcurrentModificationException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ConcurrentModificationException.struct_class = Types::ConcurrentModificationException

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    ConflictException.struct_class = Types::ConflictException

    ConsolidationConfiguration.add_member(:custom_consolidation_configuration, Shapes::ShapeRef.new(shape: CustomConsolidationConfiguration, location_name: "customConsolidationConfiguration"))
    ConsolidationConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ConsolidationConfiguration.add_member_subclass(:custom_consolidation_configuration, Types::ConsolidationConfiguration::CustomConsolidationConfiguration)
    ConsolidationConfiguration.add_member_subclass(:unknown, Types::ConsolidationConfiguration::Unknown)
    ConsolidationConfiguration.struct_class = Types::ConsolidationConfiguration

    ContainerConfiguration.add_member(:container_uri, Shapes::ShapeRef.new(shape: RuntimeContainerUri, required: true, location_name: "containerUri"))
    ContainerConfiguration.struct_class = Types::ContainerConfiguration

    CreateAgentRuntimeEndpointRequest.add_member(:agent_runtime_id, Shapes::ShapeRef.new(shape: AgentRuntimeId, required: true, location: "uri", location_name: "agentRuntimeId"))
    CreateAgentRuntimeEndpointRequest.add_member(:name, Shapes::ShapeRef.new(shape: EndpointName, required: true, location_name: "name"))
    CreateAgentRuntimeEndpointRequest.add_member(:agent_runtime_version, Shapes::ShapeRef.new(shape: AgentRuntimeVersion, location_name: "agentRuntimeVersion"))
    CreateAgentRuntimeEndpointRequest.add_member(:description, Shapes::ShapeRef.new(shape: AgentEndpointDescription, location_name: "description"))
    CreateAgentRuntimeEndpointRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateAgentRuntimeEndpointRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    CreateAgentRuntimeEndpointRequest.struct_class = Types::CreateAgentRuntimeEndpointRequest

    CreateAgentRuntimeEndpointResponse.add_member(:target_version, Shapes::ShapeRef.new(shape: AgentRuntimeVersion, required: true, location_name: "targetVersion"))
    CreateAgentRuntimeEndpointResponse.add_member(:agent_runtime_endpoint_arn, Shapes::ShapeRef.new(shape: AgentRuntimeEndpointArn, required: true, location_name: "agentRuntimeEndpointArn"))
    CreateAgentRuntimeEndpointResponse.add_member(:agent_runtime_arn, Shapes::ShapeRef.new(shape: AgentRuntimeArn, required: true, location_name: "agentRuntimeArn"))
    CreateAgentRuntimeEndpointResponse.add_member(:agent_runtime_id, Shapes::ShapeRef.new(shape: AgentRuntimeId, location_name: "agentRuntimeId"))
    CreateAgentRuntimeEndpointResponse.add_member(:endpoint_name, Shapes::ShapeRef.new(shape: EndpointName, location_name: "endpointName"))
    CreateAgentRuntimeEndpointResponse.add_member(:status, Shapes::ShapeRef.new(shape: AgentRuntimeEndpointStatus, required: true, location_name: "status"))
    CreateAgentRuntimeEndpointResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    CreateAgentRuntimeEndpointResponse.struct_class = Types::CreateAgentRuntimeEndpointResponse

    CreateAgentRuntimeRequest.add_member(:agent_runtime_name, Shapes::ShapeRef.new(shape: AgentRuntimeName, required: true, location_name: "agentRuntimeName"))
    CreateAgentRuntimeRequest.add_member(:agent_runtime_artifact, Shapes::ShapeRef.new(shape: AgentRuntimeArtifact, required: true, location_name: "agentRuntimeArtifact"))
    CreateAgentRuntimeRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "roleArn"))
    CreateAgentRuntimeRequest.add_member(:network_configuration, Shapes::ShapeRef.new(shape: NetworkConfiguration, required: true, location_name: "networkConfiguration"))
    CreateAgentRuntimeRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateAgentRuntimeRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateAgentRuntimeRequest.add_member(:authorizer_configuration, Shapes::ShapeRef.new(shape: AuthorizerConfiguration, location_name: "authorizerConfiguration"))
    CreateAgentRuntimeRequest.add_member(:request_header_configuration, Shapes::ShapeRef.new(shape: RequestHeaderConfiguration, location_name: "requestHeaderConfiguration"))
    CreateAgentRuntimeRequest.add_member(:protocol_configuration, Shapes::ShapeRef.new(shape: ProtocolConfiguration, location_name: "protocolConfiguration"))
    CreateAgentRuntimeRequest.add_member(:lifecycle_configuration, Shapes::ShapeRef.new(shape: LifecycleConfiguration, location_name: "lifecycleConfiguration"))
    CreateAgentRuntimeRequest.add_member(:environment_variables, Shapes::ShapeRef.new(shape: EnvironmentVariablesMap, location_name: "environmentVariables"))
    CreateAgentRuntimeRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    CreateAgentRuntimeRequest.struct_class = Types::CreateAgentRuntimeRequest

    CreateAgentRuntimeResponse.add_member(:agent_runtime_arn, Shapes::ShapeRef.new(shape: AgentRuntimeArn, required: true, location_name: "agentRuntimeArn"))
    CreateAgentRuntimeResponse.add_member(:workload_identity_details, Shapes::ShapeRef.new(shape: WorkloadIdentityDetails, location_name: "workloadIdentityDetails"))
    CreateAgentRuntimeResponse.add_member(:agent_runtime_id, Shapes::ShapeRef.new(shape: AgentRuntimeId, required: true, location_name: "agentRuntimeId"))
    CreateAgentRuntimeResponse.add_member(:agent_runtime_version, Shapes::ShapeRef.new(shape: AgentRuntimeVersion, required: true, location_name: "agentRuntimeVersion"))
    CreateAgentRuntimeResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    CreateAgentRuntimeResponse.add_member(:status, Shapes::ShapeRef.new(shape: AgentRuntimeStatus, required: true, location_name: "status"))
    CreateAgentRuntimeResponse.struct_class = Types::CreateAgentRuntimeResponse

    CreateApiKeyCredentialProviderRequest.add_member(:name, Shapes::ShapeRef.new(shape: CredentialProviderName, required: true, location_name: "name"))
    CreateApiKeyCredentialProviderRequest.add_member(:api_key, Shapes::ShapeRef.new(shape: ApiKeyType, required: true, location_name: "apiKey"))
    CreateApiKeyCredentialProviderRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    CreateApiKeyCredentialProviderRequest.struct_class = Types::CreateApiKeyCredentialProviderRequest

    CreateApiKeyCredentialProviderResponse.add_member(:api_key_secret_arn, Shapes::ShapeRef.new(shape: Secret, required: true, location_name: "apiKeySecretArn"))
    CreateApiKeyCredentialProviderResponse.add_member(:name, Shapes::ShapeRef.new(shape: CredentialProviderName, required: true, location_name: "name"))
    CreateApiKeyCredentialProviderResponse.add_member(:credential_provider_arn, Shapes::ShapeRef.new(shape: ApiKeyCredentialProviderArnType, required: true, location_name: "credentialProviderArn"))
    CreateApiKeyCredentialProviderResponse.struct_class = Types::CreateApiKeyCredentialProviderResponse

    CreateBrowserRequest.add_member(:name, Shapes::ShapeRef.new(shape: SandboxName, required: true, location_name: "name"))
    CreateBrowserRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateBrowserRequest.add_member(:execution_role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "executionRoleArn"))
    CreateBrowserRequest.add_member(:network_configuration, Shapes::ShapeRef.new(shape: BrowserNetworkConfiguration, required: true, location_name: "networkConfiguration"))
    CreateBrowserRequest.add_member(:recording, Shapes::ShapeRef.new(shape: RecordingConfig, location_name: "recording"))
    CreateBrowserRequest.add_member(:browser_signing, Shapes::ShapeRef.new(shape: BrowserSigningConfigInput, location_name: "browserSigning"))
    CreateBrowserRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateBrowserRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    CreateBrowserRequest.struct_class = Types::CreateBrowserRequest

    CreateBrowserResponse.add_member(:browser_id, Shapes::ShapeRef.new(shape: BrowserId, required: true, location_name: "browserId"))
    CreateBrowserResponse.add_member(:browser_arn, Shapes::ShapeRef.new(shape: BrowserArn, required: true, location_name: "browserArn"))
    CreateBrowserResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    CreateBrowserResponse.add_member(:status, Shapes::ShapeRef.new(shape: BrowserStatus, required: true, location_name: "status"))
    CreateBrowserResponse.struct_class = Types::CreateBrowserResponse

    CreateCodeInterpreterRequest.add_member(:name, Shapes::ShapeRef.new(shape: SandboxName, required: true, location_name: "name"))
    CreateCodeInterpreterRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateCodeInterpreterRequest.add_member(:execution_role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "executionRoleArn"))
    CreateCodeInterpreterRequest.add_member(:network_configuration, Shapes::ShapeRef.new(shape: CodeInterpreterNetworkConfiguration, required: true, location_name: "networkConfiguration"))
    CreateCodeInterpreterRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateCodeInterpreterRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    CreateCodeInterpreterRequest.struct_class = Types::CreateCodeInterpreterRequest

    CreateCodeInterpreterResponse.add_member(:code_interpreter_id, Shapes::ShapeRef.new(shape: CodeInterpreterId, required: true, location_name: "codeInterpreterId"))
    CreateCodeInterpreterResponse.add_member(:code_interpreter_arn, Shapes::ShapeRef.new(shape: CodeInterpreterArn, required: true, location_name: "codeInterpreterArn"))
    CreateCodeInterpreterResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    CreateCodeInterpreterResponse.add_member(:status, Shapes::ShapeRef.new(shape: CodeInterpreterStatus, required: true, location_name: "status"))
    CreateCodeInterpreterResponse.struct_class = Types::CreateCodeInterpreterResponse

    CreateGatewayRequest.add_member(:name, Shapes::ShapeRef.new(shape: GatewayName, required: true, location_name: "name"))
    CreateGatewayRequest.add_member(:description, Shapes::ShapeRef.new(shape: GatewayDescription, location_name: "description"))
    CreateGatewayRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateGatewayRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "roleArn"))
    CreateGatewayRequest.add_member(:protocol_type, Shapes::ShapeRef.new(shape: GatewayProtocolType, required: true, location_name: "protocolType"))
    CreateGatewayRequest.add_member(:protocol_configuration, Shapes::ShapeRef.new(shape: GatewayProtocolConfiguration, location_name: "protocolConfiguration"))
    CreateGatewayRequest.add_member(:authorizer_type, Shapes::ShapeRef.new(shape: AuthorizerType, required: true, location_name: "authorizerType"))
    CreateGatewayRequest.add_member(:authorizer_configuration, Shapes::ShapeRef.new(shape: AuthorizerConfiguration, location_name: "authorizerConfiguration"))
    CreateGatewayRequest.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "kmsKeyArn"))
    CreateGatewayRequest.add_member(:interceptor_configurations, Shapes::ShapeRef.new(shape: GatewayInterceptorConfigurations, location_name: "interceptorConfigurations"))
    CreateGatewayRequest.add_member(:exception_level, Shapes::ShapeRef.new(shape: ExceptionLevel, location_name: "exceptionLevel"))
    CreateGatewayRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    CreateGatewayRequest.struct_class = Types::CreateGatewayRequest

    CreateGatewayResponse.add_member(:gateway_arn, Shapes::ShapeRef.new(shape: GatewayArn, required: true, location_name: "gatewayArn"))
    CreateGatewayResponse.add_member(:gateway_id, Shapes::ShapeRef.new(shape: GatewayId, required: true, location_name: "gatewayId"))
    CreateGatewayResponse.add_member(:gateway_url, Shapes::ShapeRef.new(shape: GatewayUrl, location_name: "gatewayUrl"))
    CreateGatewayResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    CreateGatewayResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "updatedAt"))
    CreateGatewayResponse.add_member(:status, Shapes::ShapeRef.new(shape: GatewayStatus, required: true, location_name: "status"))
    CreateGatewayResponse.add_member(:status_reasons, Shapes::ShapeRef.new(shape: StatusReasons, location_name: "statusReasons"))
    CreateGatewayResponse.add_member(:name, Shapes::ShapeRef.new(shape: GatewayName, required: true, location_name: "name"))
    CreateGatewayResponse.add_member(:description, Shapes::ShapeRef.new(shape: GatewayDescription, location_name: "description"))
    CreateGatewayResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "roleArn"))
    CreateGatewayResponse.add_member(:protocol_type, Shapes::ShapeRef.new(shape: GatewayProtocolType, required: true, location_name: "protocolType"))
    CreateGatewayResponse.add_member(:protocol_configuration, Shapes::ShapeRef.new(shape: GatewayProtocolConfiguration, location_name: "protocolConfiguration"))
    CreateGatewayResponse.add_member(:authorizer_type, Shapes::ShapeRef.new(shape: AuthorizerType, required: true, location_name: "authorizerType"))
    CreateGatewayResponse.add_member(:authorizer_configuration, Shapes::ShapeRef.new(shape: AuthorizerConfiguration, location_name: "authorizerConfiguration"))
    CreateGatewayResponse.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "kmsKeyArn"))
    CreateGatewayResponse.add_member(:interceptor_configurations, Shapes::ShapeRef.new(shape: GatewayInterceptorConfigurations, location_name: "interceptorConfigurations"))
    CreateGatewayResponse.add_member(:workload_identity_details, Shapes::ShapeRef.new(shape: WorkloadIdentityDetails, location_name: "workloadIdentityDetails"))
    CreateGatewayResponse.add_member(:exception_level, Shapes::ShapeRef.new(shape: ExceptionLevel, location_name: "exceptionLevel"))
    CreateGatewayResponse.struct_class = Types::CreateGatewayResponse

    CreateGatewayTargetRequest.add_member(:gateway_identifier, Shapes::ShapeRef.new(shape: GatewayIdentifier, required: true, location: "uri", location_name: "gatewayIdentifier"))
    CreateGatewayTargetRequest.add_member(:name, Shapes::ShapeRef.new(shape: TargetName, required: true, location_name: "name"))
    CreateGatewayTargetRequest.add_member(:description, Shapes::ShapeRef.new(shape: TargetDescription, location_name: "description"))
    CreateGatewayTargetRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateGatewayTargetRequest.add_member(:target_configuration, Shapes::ShapeRef.new(shape: TargetConfiguration, required: true, location_name: "targetConfiguration"))
    CreateGatewayTargetRequest.add_member(:credential_provider_configurations, Shapes::ShapeRef.new(shape: CredentialProviderConfigurations, location_name: "credentialProviderConfigurations"))
    CreateGatewayTargetRequest.struct_class = Types::CreateGatewayTargetRequest

    CreateGatewayTargetResponse.add_member(:gateway_arn, Shapes::ShapeRef.new(shape: GatewayArn, required: true, location_name: "gatewayArn"))
    CreateGatewayTargetResponse.add_member(:target_id, Shapes::ShapeRef.new(shape: TargetId, required: true, location_name: "targetId"))
    CreateGatewayTargetResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    CreateGatewayTargetResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "updatedAt"))
    CreateGatewayTargetResponse.add_member(:status, Shapes::ShapeRef.new(shape: TargetStatus, required: true, location_name: "status"))
    CreateGatewayTargetResponse.add_member(:status_reasons, Shapes::ShapeRef.new(shape: StatusReasons, location_name: "statusReasons"))
    CreateGatewayTargetResponse.add_member(:name, Shapes::ShapeRef.new(shape: TargetName, required: true, location_name: "name"))
    CreateGatewayTargetResponse.add_member(:description, Shapes::ShapeRef.new(shape: TargetDescription, location_name: "description"))
    CreateGatewayTargetResponse.add_member(:target_configuration, Shapes::ShapeRef.new(shape: TargetConfiguration, required: true, location_name: "targetConfiguration"))
    CreateGatewayTargetResponse.add_member(:credential_provider_configurations, Shapes::ShapeRef.new(shape: CredentialProviderConfigurations, required: true, location_name: "credentialProviderConfigurations"))
    CreateGatewayTargetResponse.add_member(:last_synchronized_at, Shapes::ShapeRef.new(shape: DateTimestamp, location_name: "lastSynchronizedAt"))
    CreateGatewayTargetResponse.struct_class = Types::CreateGatewayTargetResponse

    CreateMemoryInput.add_member(:client_token, Shapes::ShapeRef.new(shape: CreateMemoryInputClientTokenString, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateMemoryInput.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    CreateMemoryInput.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateMemoryInput.add_member(:encryption_key_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "encryptionKeyArn"))
    CreateMemoryInput.add_member(:memory_execution_role_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "memoryExecutionRoleArn"))
    CreateMemoryInput.add_member(:event_expiry_duration, Shapes::ShapeRef.new(shape: CreateMemoryInputEventExpiryDurationInteger, required: true, location_name: "eventExpiryDuration"))
    CreateMemoryInput.add_member(:memory_strategies, Shapes::ShapeRef.new(shape: MemoryStrategyInputList, location_name: "memoryStrategies"))
    CreateMemoryInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    CreateMemoryInput.struct_class = Types::CreateMemoryInput

    CreateMemoryOutput.add_member(:memory, Shapes::ShapeRef.new(shape: Memory, location_name: "memory"))
    CreateMemoryOutput.struct_class = Types::CreateMemoryOutput

    CreateOauth2CredentialProviderRequest.add_member(:name, Shapes::ShapeRef.new(shape: CredentialProviderName, required: true, location_name: "name"))
    CreateOauth2CredentialProviderRequest.add_member(:credential_provider_vendor, Shapes::ShapeRef.new(shape: CredentialProviderVendorType, required: true, location_name: "credentialProviderVendor"))
    CreateOauth2CredentialProviderRequest.add_member(:oauth2_provider_config_input, Shapes::ShapeRef.new(shape: Oauth2ProviderConfigInput, required: true, location_name: "oauth2ProviderConfigInput"))
    CreateOauth2CredentialProviderRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    CreateOauth2CredentialProviderRequest.struct_class = Types::CreateOauth2CredentialProviderRequest

    CreateOauth2CredentialProviderResponse.add_member(:client_secret_arn, Shapes::ShapeRef.new(shape: Secret, required: true, location_name: "clientSecretArn"))
    CreateOauth2CredentialProviderResponse.add_member(:name, Shapes::ShapeRef.new(shape: CredentialProviderName, required: true, location_name: "name"))
    CreateOauth2CredentialProviderResponse.add_member(:credential_provider_arn, Shapes::ShapeRef.new(shape: CredentialProviderArnType, required: true, location_name: "credentialProviderArn"))
    CreateOauth2CredentialProviderResponse.add_member(:callback_url, Shapes::ShapeRef.new(shape: String, location_name: "callbackUrl"))
    CreateOauth2CredentialProviderResponse.add_member(:oauth2_provider_config_output, Shapes::ShapeRef.new(shape: Oauth2ProviderConfigOutput, location_name: "oauth2ProviderConfigOutput"))
    CreateOauth2CredentialProviderResponse.struct_class = Types::CreateOauth2CredentialProviderResponse

    CreateWorkloadIdentityRequest.add_member(:name, Shapes::ShapeRef.new(shape: WorkloadIdentityNameType, required: true, location_name: "name"))
    CreateWorkloadIdentityRequest.add_member(:allowed_resource_oauth_2_return_urls, Shapes::ShapeRef.new(shape: ResourceOauth2ReturnUrlListType, location_name: "allowedResourceOauth2ReturnUrls"))
    CreateWorkloadIdentityRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    CreateWorkloadIdentityRequest.struct_class = Types::CreateWorkloadIdentityRequest

    CreateWorkloadIdentityResponse.add_member(:name, Shapes::ShapeRef.new(shape: WorkloadIdentityNameType, required: true, location_name: "name"))
    CreateWorkloadIdentityResponse.add_member(:workload_identity_arn, Shapes::ShapeRef.new(shape: WorkloadIdentityArnType, required: true, location_name: "workloadIdentityArn"))
    CreateWorkloadIdentityResponse.add_member(:allowed_resource_oauth_2_return_urls, Shapes::ShapeRef.new(shape: ResourceOauth2ReturnUrlListType, location_name: "allowedResourceOauth2ReturnUrls"))
    CreateWorkloadIdentityResponse.struct_class = Types::CreateWorkloadIdentityResponse

    CredentialProvider.add_member(:oauth_credential_provider, Shapes::ShapeRef.new(shape: OAuthCredentialProvider, location_name: "oauthCredentialProvider"))
    CredentialProvider.add_member(:api_key_credential_provider, Shapes::ShapeRef.new(shape: ApiKeyCredentialProvider, location_name: "apiKeyCredentialProvider"))
    CredentialProvider.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    CredentialProvider.add_member_subclass(:oauth_credential_provider, Types::CredentialProvider::OauthCredentialProvider)
    CredentialProvider.add_member_subclass(:api_key_credential_provider, Types::CredentialProvider::ApiKeyCredentialProvider)
    CredentialProvider.add_member_subclass(:unknown, Types::CredentialProvider::Unknown)
    CredentialProvider.struct_class = Types::CredentialProvider

    CredentialProviderConfiguration.add_member(:credential_provider_type, Shapes::ShapeRef.new(shape: CredentialProviderType, required: true, location_name: "credentialProviderType"))
    CredentialProviderConfiguration.add_member(:credential_provider, Shapes::ShapeRef.new(shape: CredentialProvider, location_name: "credentialProvider"))
    CredentialProviderConfiguration.struct_class = Types::CredentialProviderConfiguration

    CredentialProviderConfigurations.member = Shapes::ShapeRef.new(shape: CredentialProviderConfiguration)

    CustomConfigurationInput.add_member(:semantic_override, Shapes::ShapeRef.new(shape: SemanticOverrideConfigurationInput, location_name: "semanticOverride"))
    CustomConfigurationInput.add_member(:summary_override, Shapes::ShapeRef.new(shape: SummaryOverrideConfigurationInput, location_name: "summaryOverride"))
    CustomConfigurationInput.add_member(:user_preference_override, Shapes::ShapeRef.new(shape: UserPreferenceOverrideConfigurationInput, location_name: "userPreferenceOverride"))
    CustomConfigurationInput.add_member(:self_managed_configuration, Shapes::ShapeRef.new(shape: SelfManagedConfigurationInput, location_name: "selfManagedConfiguration"))
    CustomConfigurationInput.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    CustomConfigurationInput.add_member_subclass(:semantic_override, Types::CustomConfigurationInput::SemanticOverride)
    CustomConfigurationInput.add_member_subclass(:summary_override, Types::CustomConfigurationInput::SummaryOverride)
    CustomConfigurationInput.add_member_subclass(:user_preference_override, Types::CustomConfigurationInput::UserPreferenceOverride)
    CustomConfigurationInput.add_member_subclass(:self_managed_configuration, Types::CustomConfigurationInput::SelfManagedConfiguration)
    CustomConfigurationInput.add_member_subclass(:unknown, Types::CustomConfigurationInput::Unknown)
    CustomConfigurationInput.struct_class = Types::CustomConfigurationInput

    CustomConsolidationConfiguration.add_member(:semantic_consolidation_override, Shapes::ShapeRef.new(shape: SemanticConsolidationOverride, location_name: "semanticConsolidationOverride"))
    CustomConsolidationConfiguration.add_member(:summary_consolidation_override, Shapes::ShapeRef.new(shape: SummaryConsolidationOverride, location_name: "summaryConsolidationOverride"))
    CustomConsolidationConfiguration.add_member(:user_preference_consolidation_override, Shapes::ShapeRef.new(shape: UserPreferenceConsolidationOverride, location_name: "userPreferenceConsolidationOverride"))
    CustomConsolidationConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    CustomConsolidationConfiguration.add_member_subclass(:semantic_consolidation_override, Types::CustomConsolidationConfiguration::SemanticConsolidationOverride)
    CustomConsolidationConfiguration.add_member_subclass(:summary_consolidation_override, Types::CustomConsolidationConfiguration::SummaryConsolidationOverride)
    CustomConsolidationConfiguration.add_member_subclass(:user_preference_consolidation_override, Types::CustomConsolidationConfiguration::UserPreferenceConsolidationOverride)
    CustomConsolidationConfiguration.add_member_subclass(:unknown, Types::CustomConsolidationConfiguration::Unknown)
    CustomConsolidationConfiguration.struct_class = Types::CustomConsolidationConfiguration

    CustomConsolidationConfigurationInput.add_member(:semantic_consolidation_override, Shapes::ShapeRef.new(shape: SemanticOverrideConsolidationConfigurationInput, location_name: "semanticConsolidationOverride"))
    CustomConsolidationConfigurationInput.add_member(:summary_consolidation_override, Shapes::ShapeRef.new(shape: SummaryOverrideConsolidationConfigurationInput, location_name: "summaryConsolidationOverride"))
    CustomConsolidationConfigurationInput.add_member(:user_preference_consolidation_override, Shapes::ShapeRef.new(shape: UserPreferenceOverrideConsolidationConfigurationInput, location_name: "userPreferenceConsolidationOverride"))
    CustomConsolidationConfigurationInput.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    CustomConsolidationConfigurationInput.add_member_subclass(:semantic_consolidation_override, Types::CustomConsolidationConfigurationInput::SemanticConsolidationOverride)
    CustomConsolidationConfigurationInput.add_member_subclass(:summary_consolidation_override, Types::CustomConsolidationConfigurationInput::SummaryConsolidationOverride)
    CustomConsolidationConfigurationInput.add_member_subclass(:user_preference_consolidation_override, Types::CustomConsolidationConfigurationInput::UserPreferenceConsolidationOverride)
    CustomConsolidationConfigurationInput.add_member_subclass(:unknown, Types::CustomConsolidationConfigurationInput::Unknown)
    CustomConsolidationConfigurationInput.struct_class = Types::CustomConsolidationConfigurationInput

    CustomExtractionConfiguration.add_member(:semantic_extraction_override, Shapes::ShapeRef.new(shape: SemanticExtractionOverride, location_name: "semanticExtractionOverride"))
    CustomExtractionConfiguration.add_member(:user_preference_extraction_override, Shapes::ShapeRef.new(shape: UserPreferenceExtractionOverride, location_name: "userPreferenceExtractionOverride"))
    CustomExtractionConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    CustomExtractionConfiguration.add_member_subclass(:semantic_extraction_override, Types::CustomExtractionConfiguration::SemanticExtractionOverride)
    CustomExtractionConfiguration.add_member_subclass(:user_preference_extraction_override, Types::CustomExtractionConfiguration::UserPreferenceExtractionOverride)
    CustomExtractionConfiguration.add_member_subclass(:unknown, Types::CustomExtractionConfiguration::Unknown)
    CustomExtractionConfiguration.struct_class = Types::CustomExtractionConfiguration

    CustomExtractionConfigurationInput.add_member(:semantic_extraction_override, Shapes::ShapeRef.new(shape: SemanticOverrideExtractionConfigurationInput, location_name: "semanticExtractionOverride"))
    CustomExtractionConfigurationInput.add_member(:user_preference_extraction_override, Shapes::ShapeRef.new(shape: UserPreferenceOverrideExtractionConfigurationInput, location_name: "userPreferenceExtractionOverride"))
    CustomExtractionConfigurationInput.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    CustomExtractionConfigurationInput.add_member_subclass(:semantic_extraction_override, Types::CustomExtractionConfigurationInput::SemanticExtractionOverride)
    CustomExtractionConfigurationInput.add_member_subclass(:user_preference_extraction_override, Types::CustomExtractionConfigurationInput::UserPreferenceExtractionOverride)
    CustomExtractionConfigurationInput.add_member_subclass(:unknown, Types::CustomExtractionConfigurationInput::Unknown)
    CustomExtractionConfigurationInput.struct_class = Types::CustomExtractionConfigurationInput

    CustomJWTAuthorizerConfiguration.add_member(:discovery_url, Shapes::ShapeRef.new(shape: DiscoveryUrl, required: true, location_name: "discoveryUrl"))
    CustomJWTAuthorizerConfiguration.add_member(:allowed_audience, Shapes::ShapeRef.new(shape: AllowedAudienceList, location_name: "allowedAudience"))
    CustomJWTAuthorizerConfiguration.add_member(:allowed_clients, Shapes::ShapeRef.new(shape: AllowedClientsList, location_name: "allowedClients"))
    CustomJWTAuthorizerConfiguration.struct_class = Types::CustomJWTAuthorizerConfiguration

    CustomMemoryStrategyInput.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    CustomMemoryStrategyInput.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CustomMemoryStrategyInput.add_member(:namespaces, Shapes::ShapeRef.new(shape: NamespacesList, location_name: "namespaces"))
    CustomMemoryStrategyInput.add_member(:configuration, Shapes::ShapeRef.new(shape: CustomConfigurationInput, location_name: "configuration"))
    CustomMemoryStrategyInput.struct_class = Types::CustomMemoryStrategyInput

    CustomOauth2ProviderConfigInput.add_member(:oauth_discovery, Shapes::ShapeRef.new(shape: Oauth2Discovery, required: true, location_name: "oauthDiscovery"))
    CustomOauth2ProviderConfigInput.add_member(:client_id, Shapes::ShapeRef.new(shape: ClientIdType, required: true, location_name: "clientId"))
    CustomOauth2ProviderConfigInput.add_member(:client_secret, Shapes::ShapeRef.new(shape: ClientSecretType, required: true, location_name: "clientSecret"))
    CustomOauth2ProviderConfigInput.struct_class = Types::CustomOauth2ProviderConfigInput

    CustomOauth2ProviderConfigOutput.add_member(:oauth_discovery, Shapes::ShapeRef.new(shape: Oauth2Discovery, required: true, location_name: "oauthDiscovery"))
    CustomOauth2ProviderConfigOutput.add_member(:client_id, Shapes::ShapeRef.new(shape: ClientIdType, location_name: "clientId"))
    CustomOauth2ProviderConfigOutput.struct_class = Types::CustomOauth2ProviderConfigOutput

    DecryptionFailure.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    DecryptionFailure.struct_class = Types::DecryptionFailure

    DeleteAgentRuntimeEndpointRequest.add_member(:agent_runtime_id, Shapes::ShapeRef.new(shape: AgentRuntimeId, required: true, location: "uri", location_name: "agentRuntimeId"))
    DeleteAgentRuntimeEndpointRequest.add_member(:endpoint_name, Shapes::ShapeRef.new(shape: EndpointName, required: true, location: "uri", location_name: "endpointName"))
    DeleteAgentRuntimeEndpointRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "querystring", location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    DeleteAgentRuntimeEndpointRequest.struct_class = Types::DeleteAgentRuntimeEndpointRequest

    DeleteAgentRuntimeEndpointResponse.add_member(:status, Shapes::ShapeRef.new(shape: AgentRuntimeEndpointStatus, required: true, location_name: "status"))
    DeleteAgentRuntimeEndpointResponse.add_member(:agent_runtime_id, Shapes::ShapeRef.new(shape: AgentRuntimeId, location_name: "agentRuntimeId"))
    DeleteAgentRuntimeEndpointResponse.add_member(:endpoint_name, Shapes::ShapeRef.new(shape: EndpointName, location_name: "endpointName"))
    DeleteAgentRuntimeEndpointResponse.struct_class = Types::DeleteAgentRuntimeEndpointResponse

    DeleteAgentRuntimeRequest.add_member(:agent_runtime_id, Shapes::ShapeRef.new(shape: AgentRuntimeId, required: true, location: "uri", location_name: "agentRuntimeId"))
    DeleteAgentRuntimeRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "querystring", location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    DeleteAgentRuntimeRequest.struct_class = Types::DeleteAgentRuntimeRequest

    DeleteAgentRuntimeResponse.add_member(:status, Shapes::ShapeRef.new(shape: AgentRuntimeStatus, required: true, location_name: "status"))
    DeleteAgentRuntimeResponse.add_member(:agent_runtime_id, Shapes::ShapeRef.new(shape: AgentRuntimeId, location_name: "agentRuntimeId"))
    DeleteAgentRuntimeResponse.struct_class = Types::DeleteAgentRuntimeResponse

    DeleteApiKeyCredentialProviderRequest.add_member(:name, Shapes::ShapeRef.new(shape: CredentialProviderName, required: true, location_name: "name"))
    DeleteApiKeyCredentialProviderRequest.struct_class = Types::DeleteApiKeyCredentialProviderRequest

    DeleteApiKeyCredentialProviderResponse.struct_class = Types::DeleteApiKeyCredentialProviderResponse

    DeleteBrowserRequest.add_member(:browser_id, Shapes::ShapeRef.new(shape: BrowserId, required: true, location: "uri", location_name: "browserId"))
    DeleteBrowserRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "querystring", location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    DeleteBrowserRequest.struct_class = Types::DeleteBrowserRequest

    DeleteBrowserResponse.add_member(:browser_id, Shapes::ShapeRef.new(shape: BrowserId, required: true, location_name: "browserId"))
    DeleteBrowserResponse.add_member(:status, Shapes::ShapeRef.new(shape: BrowserStatus, required: true, location_name: "status"))
    DeleteBrowserResponse.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "lastUpdatedAt"))
    DeleteBrowserResponse.struct_class = Types::DeleteBrowserResponse

    DeleteCodeInterpreterRequest.add_member(:code_interpreter_id, Shapes::ShapeRef.new(shape: CodeInterpreterId, required: true, location: "uri", location_name: "codeInterpreterId"))
    DeleteCodeInterpreterRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "querystring", location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    DeleteCodeInterpreterRequest.struct_class = Types::DeleteCodeInterpreterRequest

    DeleteCodeInterpreterResponse.add_member(:code_interpreter_id, Shapes::ShapeRef.new(shape: CodeInterpreterId, required: true, location_name: "codeInterpreterId"))
    DeleteCodeInterpreterResponse.add_member(:status, Shapes::ShapeRef.new(shape: CodeInterpreterStatus, required: true, location_name: "status"))
    DeleteCodeInterpreterResponse.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "lastUpdatedAt"))
    DeleteCodeInterpreterResponse.struct_class = Types::DeleteCodeInterpreterResponse

    DeleteGatewayRequest.add_member(:gateway_identifier, Shapes::ShapeRef.new(shape: GatewayIdentifier, required: true, location: "uri", location_name: "gatewayIdentifier"))
    DeleteGatewayRequest.struct_class = Types::DeleteGatewayRequest

    DeleteGatewayResponse.add_member(:gateway_id, Shapes::ShapeRef.new(shape: GatewayId, required: true, location_name: "gatewayId"))
    DeleteGatewayResponse.add_member(:status, Shapes::ShapeRef.new(shape: GatewayStatus, required: true, location_name: "status"))
    DeleteGatewayResponse.add_member(:status_reasons, Shapes::ShapeRef.new(shape: StatusReasons, location_name: "statusReasons"))
    DeleteGatewayResponse.struct_class = Types::DeleteGatewayResponse

    DeleteGatewayTargetRequest.add_member(:gateway_identifier, Shapes::ShapeRef.new(shape: GatewayIdentifier, required: true, location: "uri", location_name: "gatewayIdentifier"))
    DeleteGatewayTargetRequest.add_member(:target_id, Shapes::ShapeRef.new(shape: TargetId, required: true, location: "uri", location_name: "targetId"))
    DeleteGatewayTargetRequest.struct_class = Types::DeleteGatewayTargetRequest

    DeleteGatewayTargetResponse.add_member(:gateway_arn, Shapes::ShapeRef.new(shape: GatewayArn, required: true, location_name: "gatewayArn"))
    DeleteGatewayTargetResponse.add_member(:target_id, Shapes::ShapeRef.new(shape: TargetId, required: true, location_name: "targetId"))
    DeleteGatewayTargetResponse.add_member(:status, Shapes::ShapeRef.new(shape: TargetStatus, required: true, location_name: "status"))
    DeleteGatewayTargetResponse.add_member(:status_reasons, Shapes::ShapeRef.new(shape: StatusReasons, location_name: "statusReasons"))
    DeleteGatewayTargetResponse.struct_class = Types::DeleteGatewayTargetResponse

    DeleteMemoryInput.add_member(:client_token, Shapes::ShapeRef.new(shape: DeleteMemoryInputClientTokenString, location: "querystring", location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    DeleteMemoryInput.add_member(:memory_id, Shapes::ShapeRef.new(shape: MemoryId, required: true, location: "uri", location_name: "memoryId"))
    DeleteMemoryInput.struct_class = Types::DeleteMemoryInput

    DeleteMemoryOutput.add_member(:memory_id, Shapes::ShapeRef.new(shape: MemoryId, required: true, location_name: "memoryId"))
    DeleteMemoryOutput.add_member(:status, Shapes::ShapeRef.new(shape: MemoryStatus, location_name: "status"))
    DeleteMemoryOutput.struct_class = Types::DeleteMemoryOutput

    DeleteMemoryStrategiesList.member = Shapes::ShapeRef.new(shape: DeleteMemoryStrategyInput)

    DeleteMemoryStrategyInput.add_member(:memory_strategy_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "memoryStrategyId"))
    DeleteMemoryStrategyInput.struct_class = Types::DeleteMemoryStrategyInput

    DeleteOauth2CredentialProviderRequest.add_member(:name, Shapes::ShapeRef.new(shape: CredentialProviderName, required: true, location_name: "name"))
    DeleteOauth2CredentialProviderRequest.struct_class = Types::DeleteOauth2CredentialProviderRequest

    DeleteOauth2CredentialProviderResponse.struct_class = Types::DeleteOauth2CredentialProviderResponse

    DeleteWorkloadIdentityRequest.add_member(:name, Shapes::ShapeRef.new(shape: WorkloadIdentityNameType, required: true, location_name: "name"))
    DeleteWorkloadIdentityRequest.struct_class = Types::DeleteWorkloadIdentityRequest

    DeleteWorkloadIdentityResponse.struct_class = Types::DeleteWorkloadIdentityResponse

    EncryptionFailure.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    EncryptionFailure.struct_class = Types::EncryptionFailure

    EnvironmentVariablesMap.key = Shapes::ShapeRef.new(shape: EnvironmentVariableKey)
    EnvironmentVariablesMap.value = Shapes::ShapeRef.new(shape: EnvironmentVariableValue)

    ExtractionConfiguration.add_member(:custom_extraction_configuration, Shapes::ShapeRef.new(shape: CustomExtractionConfiguration, location_name: "customExtractionConfiguration"))
    ExtractionConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ExtractionConfiguration.add_member_subclass(:custom_extraction_configuration, Types::ExtractionConfiguration::CustomExtractionConfiguration)
    ExtractionConfiguration.add_member_subclass(:unknown, Types::ExtractionConfiguration::Unknown)
    ExtractionConfiguration.struct_class = Types::ExtractionConfiguration

    GatewayInterceptionPoints.member = Shapes::ShapeRef.new(shape: GatewayInterceptionPoint)

    GatewayInterceptorConfiguration.add_member(:interceptor, Shapes::ShapeRef.new(shape: InterceptorConfiguration, required: true, location_name: "interceptor"))
    GatewayInterceptorConfiguration.add_member(:interception_points, Shapes::ShapeRef.new(shape: GatewayInterceptionPoints, required: true, location_name: "interceptionPoints"))
    GatewayInterceptorConfiguration.add_member(:input_configuration, Shapes::ShapeRef.new(shape: InterceptorInputConfiguration, location_name: "inputConfiguration"))
    GatewayInterceptorConfiguration.struct_class = Types::GatewayInterceptorConfiguration

    GatewayInterceptorConfigurations.member = Shapes::ShapeRef.new(shape: GatewayInterceptorConfiguration)

    GatewayProtocolConfiguration.add_member(:mcp, Shapes::ShapeRef.new(shape: MCPGatewayConfiguration, location_name: "mcp"))
    GatewayProtocolConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    GatewayProtocolConfiguration.add_member_subclass(:mcp, Types::GatewayProtocolConfiguration::Mcp)
    GatewayProtocolConfiguration.add_member_subclass(:unknown, Types::GatewayProtocolConfiguration::Unknown)
    GatewayProtocolConfiguration.struct_class = Types::GatewayProtocolConfiguration

    GatewaySummaries.member = Shapes::ShapeRef.new(shape: GatewaySummary)

    GatewaySummary.add_member(:gateway_id, Shapes::ShapeRef.new(shape: GatewayId, required: true, location_name: "gatewayId"))
    GatewaySummary.add_member(:name, Shapes::ShapeRef.new(shape: GatewayName, required: true, location_name: "name"))
    GatewaySummary.add_member(:status, Shapes::ShapeRef.new(shape: GatewayStatus, required: true, location_name: "status"))
    GatewaySummary.add_member(:description, Shapes::ShapeRef.new(shape: GatewayDescription, location_name: "description"))
    GatewaySummary.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    GatewaySummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "updatedAt"))
    GatewaySummary.add_member(:authorizer_type, Shapes::ShapeRef.new(shape: AuthorizerType, required: true, location_name: "authorizerType"))
    GatewaySummary.add_member(:protocol_type, Shapes::ShapeRef.new(shape: GatewayProtocolType, required: true, location_name: "protocolType"))
    GatewaySummary.struct_class = Types::GatewaySummary

    GatewayTarget.add_member(:gateway_arn, Shapes::ShapeRef.new(shape: GatewayArn, required: true, location_name: "gatewayArn"))
    GatewayTarget.add_member(:target_id, Shapes::ShapeRef.new(shape: TargetId, required: true, location_name: "targetId"))
    GatewayTarget.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    GatewayTarget.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "updatedAt"))
    GatewayTarget.add_member(:status, Shapes::ShapeRef.new(shape: TargetStatus, required: true, location_name: "status"))
    GatewayTarget.add_member(:status_reasons, Shapes::ShapeRef.new(shape: StatusReasons, location_name: "statusReasons"))
    GatewayTarget.add_member(:name, Shapes::ShapeRef.new(shape: TargetName, required: true, location_name: "name"))
    GatewayTarget.add_member(:description, Shapes::ShapeRef.new(shape: TargetDescription, location_name: "description"))
    GatewayTarget.add_member(:target_configuration, Shapes::ShapeRef.new(shape: TargetConfiguration, required: true, location_name: "targetConfiguration"))
    GatewayTarget.add_member(:credential_provider_configurations, Shapes::ShapeRef.new(shape: CredentialProviderConfigurations, required: true, location_name: "credentialProviderConfigurations"))
    GatewayTarget.add_member(:last_synchronized_at, Shapes::ShapeRef.new(shape: DateTimestamp, location_name: "lastSynchronizedAt"))
    GatewayTarget.struct_class = Types::GatewayTarget

    GatewayTargetList.member = Shapes::ShapeRef.new(shape: GatewayTarget)

    GetAgentRuntimeEndpointRequest.add_member(:agent_runtime_id, Shapes::ShapeRef.new(shape: AgentRuntimeId, required: true, location: "uri", location_name: "agentRuntimeId"))
    GetAgentRuntimeEndpointRequest.add_member(:endpoint_name, Shapes::ShapeRef.new(shape: EndpointName, required: true, location: "uri", location_name: "endpointName"))
    GetAgentRuntimeEndpointRequest.struct_class = Types::GetAgentRuntimeEndpointRequest

    GetAgentRuntimeEndpointResponse.add_member(:live_version, Shapes::ShapeRef.new(shape: AgentRuntimeVersion, location_name: "liveVersion"))
    GetAgentRuntimeEndpointResponse.add_member(:target_version, Shapes::ShapeRef.new(shape: AgentRuntimeVersion, location_name: "targetVersion"))
    GetAgentRuntimeEndpointResponse.add_member(:agent_runtime_endpoint_arn, Shapes::ShapeRef.new(shape: AgentRuntimeEndpointArn, required: true, location_name: "agentRuntimeEndpointArn"))
    GetAgentRuntimeEndpointResponse.add_member(:agent_runtime_arn, Shapes::ShapeRef.new(shape: AgentRuntimeArn, required: true, location_name: "agentRuntimeArn"))
    GetAgentRuntimeEndpointResponse.add_member(:description, Shapes::ShapeRef.new(shape: AgentEndpointDescription, location_name: "description"))
    GetAgentRuntimeEndpointResponse.add_member(:status, Shapes::ShapeRef.new(shape: AgentRuntimeEndpointStatus, required: true, location_name: "status"))
    GetAgentRuntimeEndpointResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    GetAgentRuntimeEndpointResponse.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "lastUpdatedAt"))
    GetAgentRuntimeEndpointResponse.add_member(:failure_reason, Shapes::ShapeRef.new(shape: String, location_name: "failureReason"))
    GetAgentRuntimeEndpointResponse.add_member(:name, Shapes::ShapeRef.new(shape: EndpointName, required: true, location_name: "name"))
    GetAgentRuntimeEndpointResponse.add_member(:id, Shapes::ShapeRef.new(shape: AgentRuntimeEndpointId, required: true, location_name: "id"))
    GetAgentRuntimeEndpointResponse.struct_class = Types::GetAgentRuntimeEndpointResponse

    GetAgentRuntimeRequest.add_member(:agent_runtime_id, Shapes::ShapeRef.new(shape: AgentRuntimeId, required: true, location: "uri", location_name: "agentRuntimeId"))
    GetAgentRuntimeRequest.add_member(:agent_runtime_version, Shapes::ShapeRef.new(shape: AgentRuntimeVersion, location: "querystring", location_name: "version"))
    GetAgentRuntimeRequest.struct_class = Types::GetAgentRuntimeRequest

    GetAgentRuntimeResponse.add_member(:agent_runtime_arn, Shapes::ShapeRef.new(shape: AgentRuntimeArn, required: true, location_name: "agentRuntimeArn"))
    GetAgentRuntimeResponse.add_member(:agent_runtime_name, Shapes::ShapeRef.new(shape: AgentRuntimeName, required: true, location_name: "agentRuntimeName"))
    GetAgentRuntimeResponse.add_member(:agent_runtime_id, Shapes::ShapeRef.new(shape: AgentRuntimeId, required: true, location_name: "agentRuntimeId"))
    GetAgentRuntimeResponse.add_member(:agent_runtime_version, Shapes::ShapeRef.new(shape: AgentRuntimeVersion, required: true, location_name: "agentRuntimeVersion"))
    GetAgentRuntimeResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    GetAgentRuntimeResponse.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "lastUpdatedAt"))
    GetAgentRuntimeResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "roleArn"))
    GetAgentRuntimeResponse.add_member(:network_configuration, Shapes::ShapeRef.new(shape: NetworkConfiguration, required: true, location_name: "networkConfiguration"))
    GetAgentRuntimeResponse.add_member(:status, Shapes::ShapeRef.new(shape: AgentRuntimeStatus, required: true, location_name: "status"))
    GetAgentRuntimeResponse.add_member(:lifecycle_configuration, Shapes::ShapeRef.new(shape: LifecycleConfiguration, required: true, location_name: "lifecycleConfiguration"))
    GetAgentRuntimeResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    GetAgentRuntimeResponse.add_member(:workload_identity_details, Shapes::ShapeRef.new(shape: WorkloadIdentityDetails, location_name: "workloadIdentityDetails"))
    GetAgentRuntimeResponse.add_member(:agent_runtime_artifact, Shapes::ShapeRef.new(shape: AgentRuntimeArtifact, location_name: "agentRuntimeArtifact"))
    GetAgentRuntimeResponse.add_member(:protocol_configuration, Shapes::ShapeRef.new(shape: ProtocolConfiguration, location_name: "protocolConfiguration"))
    GetAgentRuntimeResponse.add_member(:environment_variables, Shapes::ShapeRef.new(shape: EnvironmentVariablesMap, location_name: "environmentVariables"))
    GetAgentRuntimeResponse.add_member(:authorizer_configuration, Shapes::ShapeRef.new(shape: AuthorizerConfiguration, location_name: "authorizerConfiguration"))
    GetAgentRuntimeResponse.add_member(:request_header_configuration, Shapes::ShapeRef.new(shape: RequestHeaderConfiguration, location_name: "requestHeaderConfiguration"))
    GetAgentRuntimeResponse.struct_class = Types::GetAgentRuntimeResponse

    GetApiKeyCredentialProviderRequest.add_member(:name, Shapes::ShapeRef.new(shape: CredentialProviderName, required: true, location_name: "name"))
    GetApiKeyCredentialProviderRequest.struct_class = Types::GetApiKeyCredentialProviderRequest

    GetApiKeyCredentialProviderResponse.add_member(:api_key_secret_arn, Shapes::ShapeRef.new(shape: Secret, required: true, location_name: "apiKeySecretArn"))
    GetApiKeyCredentialProviderResponse.add_member(:name, Shapes::ShapeRef.new(shape: CredentialProviderName, required: true, location_name: "name"))
    GetApiKeyCredentialProviderResponse.add_member(:credential_provider_arn, Shapes::ShapeRef.new(shape: ApiKeyCredentialProviderArnType, required: true, location_name: "credentialProviderArn"))
    GetApiKeyCredentialProviderResponse.add_member(:created_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdTime"))
    GetApiKeyCredentialProviderResponse.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "lastUpdatedTime"))
    GetApiKeyCredentialProviderResponse.struct_class = Types::GetApiKeyCredentialProviderResponse

    GetBrowserRequest.add_member(:browser_id, Shapes::ShapeRef.new(shape: BrowserId, required: true, location: "uri", location_name: "browserId"))
    GetBrowserRequest.struct_class = Types::GetBrowserRequest

    GetBrowserResponse.add_member(:browser_id, Shapes::ShapeRef.new(shape: BrowserId, required: true, location_name: "browserId"))
    GetBrowserResponse.add_member(:browser_arn, Shapes::ShapeRef.new(shape: BrowserArn, required: true, location_name: "browserArn"))
    GetBrowserResponse.add_member(:name, Shapes::ShapeRef.new(shape: SandboxName, required: true, location_name: "name"))
    GetBrowserResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    GetBrowserResponse.add_member(:execution_role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "executionRoleArn"))
    GetBrowserResponse.add_member(:network_configuration, Shapes::ShapeRef.new(shape: BrowserNetworkConfiguration, required: true, location_name: "networkConfiguration"))
    GetBrowserResponse.add_member(:recording, Shapes::ShapeRef.new(shape: RecordingConfig, location_name: "recording"))
    GetBrowserResponse.add_member(:browser_signing, Shapes::ShapeRef.new(shape: BrowserSigningConfigOutput, location_name: "browserSigning"))
    GetBrowserResponse.add_member(:status, Shapes::ShapeRef.new(shape: BrowserStatus, required: true, location_name: "status"))
    GetBrowserResponse.add_member(:failure_reason, Shapes::ShapeRef.new(shape: String, location_name: "failureReason"))
    GetBrowserResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    GetBrowserResponse.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "lastUpdatedAt"))
    GetBrowserResponse.struct_class = Types::GetBrowserResponse

    GetCodeInterpreterRequest.add_member(:code_interpreter_id, Shapes::ShapeRef.new(shape: CodeInterpreterId, required: true, location: "uri", location_name: "codeInterpreterId"))
    GetCodeInterpreterRequest.struct_class = Types::GetCodeInterpreterRequest

    GetCodeInterpreterResponse.add_member(:code_interpreter_id, Shapes::ShapeRef.new(shape: CodeInterpreterId, required: true, location_name: "codeInterpreterId"))
    GetCodeInterpreterResponse.add_member(:code_interpreter_arn, Shapes::ShapeRef.new(shape: CodeInterpreterArn, required: true, location_name: "codeInterpreterArn"))
    GetCodeInterpreterResponse.add_member(:name, Shapes::ShapeRef.new(shape: SandboxName, required: true, location_name: "name"))
    GetCodeInterpreterResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    GetCodeInterpreterResponse.add_member(:execution_role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "executionRoleArn"))
    GetCodeInterpreterResponse.add_member(:network_configuration, Shapes::ShapeRef.new(shape: CodeInterpreterNetworkConfiguration, required: true, location_name: "networkConfiguration"))
    GetCodeInterpreterResponse.add_member(:status, Shapes::ShapeRef.new(shape: CodeInterpreterStatus, required: true, location_name: "status"))
    GetCodeInterpreterResponse.add_member(:failure_reason, Shapes::ShapeRef.new(shape: String, location_name: "failureReason"))
    GetCodeInterpreterResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    GetCodeInterpreterResponse.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "lastUpdatedAt"))
    GetCodeInterpreterResponse.struct_class = Types::GetCodeInterpreterResponse

    GetGatewayRequest.add_member(:gateway_identifier, Shapes::ShapeRef.new(shape: GatewayIdentifier, required: true, location: "uri", location_name: "gatewayIdentifier"))
    GetGatewayRequest.struct_class = Types::GetGatewayRequest

    GetGatewayResponse.add_member(:gateway_arn, Shapes::ShapeRef.new(shape: GatewayArn, required: true, location_name: "gatewayArn"))
    GetGatewayResponse.add_member(:gateway_id, Shapes::ShapeRef.new(shape: GatewayId, required: true, location_name: "gatewayId"))
    GetGatewayResponse.add_member(:gateway_url, Shapes::ShapeRef.new(shape: GatewayUrl, location_name: "gatewayUrl"))
    GetGatewayResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    GetGatewayResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "updatedAt"))
    GetGatewayResponse.add_member(:status, Shapes::ShapeRef.new(shape: GatewayStatus, required: true, location_name: "status"))
    GetGatewayResponse.add_member(:status_reasons, Shapes::ShapeRef.new(shape: StatusReasons, location_name: "statusReasons"))
    GetGatewayResponse.add_member(:name, Shapes::ShapeRef.new(shape: GatewayName, required: true, location_name: "name"))
    GetGatewayResponse.add_member(:description, Shapes::ShapeRef.new(shape: GatewayDescription, location_name: "description"))
    GetGatewayResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "roleArn"))
    GetGatewayResponse.add_member(:protocol_type, Shapes::ShapeRef.new(shape: GatewayProtocolType, required: true, location_name: "protocolType"))
    GetGatewayResponse.add_member(:protocol_configuration, Shapes::ShapeRef.new(shape: GatewayProtocolConfiguration, location_name: "protocolConfiguration"))
    GetGatewayResponse.add_member(:authorizer_type, Shapes::ShapeRef.new(shape: AuthorizerType, required: true, location_name: "authorizerType"))
    GetGatewayResponse.add_member(:authorizer_configuration, Shapes::ShapeRef.new(shape: AuthorizerConfiguration, location_name: "authorizerConfiguration"))
    GetGatewayResponse.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "kmsKeyArn"))
    GetGatewayResponse.add_member(:interceptor_configurations, Shapes::ShapeRef.new(shape: GatewayInterceptorConfigurations, location_name: "interceptorConfigurations"))
    GetGatewayResponse.add_member(:workload_identity_details, Shapes::ShapeRef.new(shape: WorkloadIdentityDetails, location_name: "workloadIdentityDetails"))
    GetGatewayResponse.add_member(:exception_level, Shapes::ShapeRef.new(shape: ExceptionLevel, location_name: "exceptionLevel"))
    GetGatewayResponse.struct_class = Types::GetGatewayResponse

    GetGatewayTargetRequest.add_member(:gateway_identifier, Shapes::ShapeRef.new(shape: GatewayIdentifier, required: true, location: "uri", location_name: "gatewayIdentifier"))
    GetGatewayTargetRequest.add_member(:target_id, Shapes::ShapeRef.new(shape: TargetId, required: true, location: "uri", location_name: "targetId"))
    GetGatewayTargetRequest.struct_class = Types::GetGatewayTargetRequest

    GetGatewayTargetResponse.add_member(:gateway_arn, Shapes::ShapeRef.new(shape: GatewayArn, required: true, location_name: "gatewayArn"))
    GetGatewayTargetResponse.add_member(:target_id, Shapes::ShapeRef.new(shape: TargetId, required: true, location_name: "targetId"))
    GetGatewayTargetResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    GetGatewayTargetResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "updatedAt"))
    GetGatewayTargetResponse.add_member(:status, Shapes::ShapeRef.new(shape: TargetStatus, required: true, location_name: "status"))
    GetGatewayTargetResponse.add_member(:status_reasons, Shapes::ShapeRef.new(shape: StatusReasons, location_name: "statusReasons"))
    GetGatewayTargetResponse.add_member(:name, Shapes::ShapeRef.new(shape: TargetName, required: true, location_name: "name"))
    GetGatewayTargetResponse.add_member(:description, Shapes::ShapeRef.new(shape: TargetDescription, location_name: "description"))
    GetGatewayTargetResponse.add_member(:target_configuration, Shapes::ShapeRef.new(shape: TargetConfiguration, required: true, location_name: "targetConfiguration"))
    GetGatewayTargetResponse.add_member(:credential_provider_configurations, Shapes::ShapeRef.new(shape: CredentialProviderConfigurations, required: true, location_name: "credentialProviderConfigurations"))
    GetGatewayTargetResponse.add_member(:last_synchronized_at, Shapes::ShapeRef.new(shape: DateTimestamp, location_name: "lastSynchronizedAt"))
    GetGatewayTargetResponse.struct_class = Types::GetGatewayTargetResponse

    GetMemoryInput.add_member(:memory_id, Shapes::ShapeRef.new(shape: MemoryId, required: true, location: "uri", location_name: "memoryId"))
    GetMemoryInput.struct_class = Types::GetMemoryInput

    GetMemoryOutput.add_member(:memory, Shapes::ShapeRef.new(shape: Memory, required: true, location_name: "memory"))
    GetMemoryOutput.struct_class = Types::GetMemoryOutput

    GetOauth2CredentialProviderRequest.add_member(:name, Shapes::ShapeRef.new(shape: CredentialProviderName, required: true, location_name: "name"))
    GetOauth2CredentialProviderRequest.struct_class = Types::GetOauth2CredentialProviderRequest

    GetOauth2CredentialProviderResponse.add_member(:client_secret_arn, Shapes::ShapeRef.new(shape: Secret, required: true, location_name: "clientSecretArn"))
    GetOauth2CredentialProviderResponse.add_member(:name, Shapes::ShapeRef.new(shape: CredentialProviderName, required: true, location_name: "name"))
    GetOauth2CredentialProviderResponse.add_member(:credential_provider_arn, Shapes::ShapeRef.new(shape: CredentialProviderArnType, required: true, location_name: "credentialProviderArn"))
    GetOauth2CredentialProviderResponse.add_member(:credential_provider_vendor, Shapes::ShapeRef.new(shape: CredentialProviderVendorType, required: true, location_name: "credentialProviderVendor"))
    GetOauth2CredentialProviderResponse.add_member(:callback_url, Shapes::ShapeRef.new(shape: String, location_name: "callbackUrl"))
    GetOauth2CredentialProviderResponse.add_member(:oauth2_provider_config_output, Shapes::ShapeRef.new(shape: Oauth2ProviderConfigOutput, required: true, location_name: "oauth2ProviderConfigOutput"))
    GetOauth2CredentialProviderResponse.add_member(:created_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdTime"))
    GetOauth2CredentialProviderResponse.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "lastUpdatedTime"))
    GetOauth2CredentialProviderResponse.struct_class = Types::GetOauth2CredentialProviderResponse

    GetTokenVaultRequest.add_member(:token_vault_id, Shapes::ShapeRef.new(shape: TokenVaultIdType, location_name: "tokenVaultId"))
    GetTokenVaultRequest.struct_class = Types::GetTokenVaultRequest

    GetTokenVaultResponse.add_member(:token_vault_id, Shapes::ShapeRef.new(shape: TokenVaultIdType, required: true, location_name: "tokenVaultId"))
    GetTokenVaultResponse.add_member(:kms_configuration, Shapes::ShapeRef.new(shape: KmsConfiguration, required: true, location_name: "kmsConfiguration"))
    GetTokenVaultResponse.add_member(:last_modified_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "lastModifiedDate"))
    GetTokenVaultResponse.struct_class = Types::GetTokenVaultResponse

    GetWorkloadIdentityRequest.add_member(:name, Shapes::ShapeRef.new(shape: WorkloadIdentityNameType, required: true, location_name: "name"))
    GetWorkloadIdentityRequest.struct_class = Types::GetWorkloadIdentityRequest

    GetWorkloadIdentityResponse.add_member(:name, Shapes::ShapeRef.new(shape: WorkloadIdentityNameType, required: true, location_name: "name"))
    GetWorkloadIdentityResponse.add_member(:workload_identity_arn, Shapes::ShapeRef.new(shape: WorkloadIdentityArnType, required: true, location_name: "workloadIdentityArn"))
    GetWorkloadIdentityResponse.add_member(:allowed_resource_oauth_2_return_urls, Shapes::ShapeRef.new(shape: ResourceOauth2ReturnUrlListType, location_name: "allowedResourceOauth2ReturnUrls"))
    GetWorkloadIdentityResponse.add_member(:created_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdTime"))
    GetWorkloadIdentityResponse.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "lastUpdatedTime"))
    GetWorkloadIdentityResponse.struct_class = Types::GetWorkloadIdentityResponse

    GithubOauth2ProviderConfigInput.add_member(:client_id, Shapes::ShapeRef.new(shape: ClientIdType, required: true, location_name: "clientId"))
    GithubOauth2ProviderConfigInput.add_member(:client_secret, Shapes::ShapeRef.new(shape: ClientSecretType, required: true, location_name: "clientSecret"))
    GithubOauth2ProviderConfigInput.struct_class = Types::GithubOauth2ProviderConfigInput

    GithubOauth2ProviderConfigOutput.add_member(:oauth_discovery, Shapes::ShapeRef.new(shape: Oauth2Discovery, required: true, location_name: "oauthDiscovery"))
    GithubOauth2ProviderConfigOutput.add_member(:client_id, Shapes::ShapeRef.new(shape: ClientIdType, location_name: "clientId"))
    GithubOauth2ProviderConfigOutput.struct_class = Types::GithubOauth2ProviderConfigOutput

    GoogleOauth2ProviderConfigInput.add_member(:client_id, Shapes::ShapeRef.new(shape: ClientIdType, required: true, location_name: "clientId"))
    GoogleOauth2ProviderConfigInput.add_member(:client_secret, Shapes::ShapeRef.new(shape: ClientSecretType, required: true, location_name: "clientSecret"))
    GoogleOauth2ProviderConfigInput.struct_class = Types::GoogleOauth2ProviderConfigInput

    GoogleOauth2ProviderConfigOutput.add_member(:oauth_discovery, Shapes::ShapeRef.new(shape: Oauth2Discovery, required: true, location_name: "oauthDiscovery"))
    GoogleOauth2ProviderConfigOutput.add_member(:client_id, Shapes::ShapeRef.new(shape: ClientIdType, location_name: "clientId"))
    GoogleOauth2ProviderConfigOutput.struct_class = Types::GoogleOauth2ProviderConfigOutput

    IncludedOauth2ProviderConfigInput.add_member(:client_id, Shapes::ShapeRef.new(shape: ClientIdType, required: true, location_name: "clientId"))
    IncludedOauth2ProviderConfigInput.add_member(:client_secret, Shapes::ShapeRef.new(shape: ClientSecretType, required: true, location_name: "clientSecret"))
    IncludedOauth2ProviderConfigInput.add_member(:issuer, Shapes::ShapeRef.new(shape: IssuerUrlType, location_name: "issuer"))
    IncludedOauth2ProviderConfigInput.add_member(:authorization_endpoint, Shapes::ShapeRef.new(shape: AuthorizationEndpointType, location_name: "authorizationEndpoint"))
    IncludedOauth2ProviderConfigInput.add_member(:token_endpoint, Shapes::ShapeRef.new(shape: TokenEndpointType, location_name: "tokenEndpoint"))
    IncludedOauth2ProviderConfigInput.struct_class = Types::IncludedOauth2ProviderConfigInput

    IncludedOauth2ProviderConfigOutput.add_member(:oauth_discovery, Shapes::ShapeRef.new(shape: Oauth2Discovery, required: true, location_name: "oauthDiscovery"))
    IncludedOauth2ProviderConfigOutput.add_member(:client_id, Shapes::ShapeRef.new(shape: ClientIdType, location_name: "clientId"))
    IncludedOauth2ProviderConfigOutput.struct_class = Types::IncludedOauth2ProviderConfigOutput

    InterceptorConfiguration.add_member(:lambda, Shapes::ShapeRef.new(shape: LambdaInterceptorConfiguration, location_name: "lambda"))
    InterceptorConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    InterceptorConfiguration.add_member_subclass(:lambda, Types::InterceptorConfiguration::Lambda)
    InterceptorConfiguration.add_member_subclass(:unknown, Types::InterceptorConfiguration::Unknown)
    InterceptorConfiguration.struct_class = Types::InterceptorConfiguration

    InterceptorInputConfiguration.add_member(:pass_request_headers, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "passRequestHeaders"))
    InterceptorInputConfiguration.struct_class = Types::InterceptorInputConfiguration

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    InvocationConfiguration.add_member(:topic_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "topicArn"))
    InvocationConfiguration.add_member(:payload_delivery_bucket_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "payloadDeliveryBucketName"))
    InvocationConfiguration.struct_class = Types::InvocationConfiguration

    InvocationConfigurationInput.add_member(:topic_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "topicArn"))
    InvocationConfigurationInput.add_member(:payload_delivery_bucket_name, Shapes::ShapeRef.new(shape: InvocationConfigurationInputPayloadDeliveryBucketNameString, required: true, location_name: "payloadDeliveryBucketName"))
    InvocationConfigurationInput.struct_class = Types::InvocationConfigurationInput

    KmsConfiguration.add_member(:key_type, Shapes::ShapeRef.new(shape: KeyType, required: true, location_name: "keyType"))
    KmsConfiguration.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "kmsKeyArn"))
    KmsConfiguration.struct_class = Types::KmsConfiguration

    LambdaInterceptorConfiguration.add_member(:arn, Shapes::ShapeRef.new(shape: LambdaFunctionArn, required: true, location_name: "arn"))
    LambdaInterceptorConfiguration.struct_class = Types::LambdaInterceptorConfiguration

    LifecycleConfiguration.add_member(:idle_runtime_session_timeout, Shapes::ShapeRef.new(shape: LifecycleConfigurationIdleRuntimeSessionTimeoutInteger, location_name: "idleRuntimeSessionTimeout"))
    LifecycleConfiguration.add_member(:max_lifetime, Shapes::ShapeRef.new(shape: LifecycleConfigurationMaxLifetimeInteger, location_name: "maxLifetime"))
    LifecycleConfiguration.struct_class = Types::LifecycleConfiguration

    LinkedinOauth2ProviderConfigInput.add_member(:client_id, Shapes::ShapeRef.new(shape: ClientIdType, required: true, location_name: "clientId"))
    LinkedinOauth2ProviderConfigInput.add_member(:client_secret, Shapes::ShapeRef.new(shape: ClientSecretType, required: true, location_name: "clientSecret"))
    LinkedinOauth2ProviderConfigInput.struct_class = Types::LinkedinOauth2ProviderConfigInput

    LinkedinOauth2ProviderConfigOutput.add_member(:oauth_discovery, Shapes::ShapeRef.new(shape: Oauth2Discovery, required: true, location_name: "oauthDiscovery"))
    LinkedinOauth2ProviderConfigOutput.add_member(:client_id, Shapes::ShapeRef.new(shape: ClientIdType, location_name: "clientId"))
    LinkedinOauth2ProviderConfigOutput.struct_class = Types::LinkedinOauth2ProviderConfigOutput

    ListAgentRuntimeEndpointsRequest.add_member(:agent_runtime_id, Shapes::ShapeRef.new(shape: AgentRuntimeId, required: true, location: "uri", location_name: "agentRuntimeId"))
    ListAgentRuntimeEndpointsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListAgentRuntimeEndpointsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListAgentRuntimeEndpointsRequest.struct_class = Types::ListAgentRuntimeEndpointsRequest

    ListAgentRuntimeEndpointsResponse.add_member(:runtime_endpoints, Shapes::ShapeRef.new(shape: AgentRuntimeEndpoints, required: true, location_name: "runtimeEndpoints"))
    ListAgentRuntimeEndpointsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListAgentRuntimeEndpointsResponse.struct_class = Types::ListAgentRuntimeEndpointsResponse

    ListAgentRuntimeVersionsRequest.add_member(:agent_runtime_id, Shapes::ShapeRef.new(shape: AgentRuntimeId, required: true, location: "uri", location_name: "agentRuntimeId"))
    ListAgentRuntimeVersionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListAgentRuntimeVersionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListAgentRuntimeVersionsRequest.struct_class = Types::ListAgentRuntimeVersionsRequest

    ListAgentRuntimeVersionsResponse.add_member(:agent_runtimes, Shapes::ShapeRef.new(shape: AgentRuntimes, required: true, location_name: "agentRuntimes"))
    ListAgentRuntimeVersionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListAgentRuntimeVersionsResponse.struct_class = Types::ListAgentRuntimeVersionsResponse

    ListAgentRuntimesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListAgentRuntimesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListAgentRuntimesRequest.struct_class = Types::ListAgentRuntimesRequest

    ListAgentRuntimesResponse.add_member(:agent_runtimes, Shapes::ShapeRef.new(shape: AgentRuntimes, required: true, location_name: "agentRuntimes"))
    ListAgentRuntimesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListAgentRuntimesResponse.struct_class = Types::ListAgentRuntimesResponse

    ListApiKeyCredentialProvidersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListApiKeyCredentialProvidersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListApiKeyCredentialProvidersRequest.struct_class = Types::ListApiKeyCredentialProvidersRequest

    ListApiKeyCredentialProvidersResponse.add_member(:credential_providers, Shapes::ShapeRef.new(shape: ApiKeyCredentialProviders, required: true, location_name: "credentialProviders"))
    ListApiKeyCredentialProvidersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListApiKeyCredentialProvidersResponse.struct_class = Types::ListApiKeyCredentialProvidersResponse

    ListBrowsersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListBrowsersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListBrowsersRequest.add_member(:type, Shapes::ShapeRef.new(shape: ResourceType, location: "querystring", location_name: "type"))
    ListBrowsersRequest.struct_class = Types::ListBrowsersRequest

    ListBrowsersResponse.add_member(:browser_summaries, Shapes::ShapeRef.new(shape: BrowserSummaries, required: true, location_name: "browserSummaries"))
    ListBrowsersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListBrowsersResponse.struct_class = Types::ListBrowsersResponse

    ListCodeInterpretersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListCodeInterpretersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListCodeInterpretersRequest.add_member(:type, Shapes::ShapeRef.new(shape: ResourceType, location: "querystring", location_name: "type"))
    ListCodeInterpretersRequest.struct_class = Types::ListCodeInterpretersRequest

    ListCodeInterpretersResponse.add_member(:code_interpreter_summaries, Shapes::ShapeRef.new(shape: CodeInterpreterSummaries, required: true, location_name: "codeInterpreterSummaries"))
    ListCodeInterpretersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListCodeInterpretersResponse.struct_class = Types::ListCodeInterpretersResponse

    ListGatewayTargetsRequest.add_member(:gateway_identifier, Shapes::ShapeRef.new(shape: GatewayIdentifier, required: true, location: "uri", location_name: "gatewayIdentifier"))
    ListGatewayTargetsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: TargetMaxResults, location: "querystring", location_name: "maxResults"))
    ListGatewayTargetsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: TargetNextToken, location: "querystring", location_name: "nextToken"))
    ListGatewayTargetsRequest.struct_class = Types::ListGatewayTargetsRequest

    ListGatewayTargetsResponse.add_member(:items, Shapes::ShapeRef.new(shape: TargetSummaries, required: true, location_name: "items"))
    ListGatewayTargetsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: TargetNextToken, location_name: "nextToken"))
    ListGatewayTargetsResponse.struct_class = Types::ListGatewayTargetsResponse

    ListGatewaysRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: GatewayMaxResults, location: "querystring", location_name: "maxResults"))
    ListGatewaysRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: GatewayNextToken, location: "querystring", location_name: "nextToken"))
    ListGatewaysRequest.struct_class = Types::ListGatewaysRequest

    ListGatewaysResponse.add_member(:items, Shapes::ShapeRef.new(shape: GatewaySummaries, required: true, location_name: "items"))
    ListGatewaysResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: GatewayNextToken, location_name: "nextToken"))
    ListGatewaysResponse.struct_class = Types::ListGatewaysResponse

    ListMemoriesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListMemoriesInputMaxResultsInteger, location_name: "maxResults"))
    ListMemoriesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListMemoriesInput.struct_class = Types::ListMemoriesInput

    ListMemoriesOutput.add_member(:memories, Shapes::ShapeRef.new(shape: MemorySummaryList, required: true, location_name: "memories"))
    ListMemoriesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListMemoriesOutput.struct_class = Types::ListMemoriesOutput

    ListOauth2CredentialProvidersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListOauth2CredentialProvidersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListOauth2CredentialProvidersRequestMaxResultsInteger, location_name: "maxResults"))
    ListOauth2CredentialProvidersRequest.struct_class = Types::ListOauth2CredentialProvidersRequest

    ListOauth2CredentialProvidersResponse.add_member(:credential_providers, Shapes::ShapeRef.new(shape: Oauth2CredentialProviders, required: true, location_name: "credentialProviders"))
    ListOauth2CredentialProvidersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListOauth2CredentialProvidersResponse.struct_class = Types::ListOauth2CredentialProvidersResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: TaggableResourcesArn, required: true, location: "uri", location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    ListWorkloadIdentitiesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListWorkloadIdentitiesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListWorkloadIdentitiesRequestMaxResultsInteger, location_name: "maxResults"))
    ListWorkloadIdentitiesRequest.struct_class = Types::ListWorkloadIdentitiesRequest

    ListWorkloadIdentitiesResponse.add_member(:workload_identities, Shapes::ShapeRef.new(shape: WorkloadIdentityList, required: true, location_name: "workloadIdentities"))
    ListWorkloadIdentitiesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListWorkloadIdentitiesResponse.struct_class = Types::ListWorkloadIdentitiesResponse

    MCPGatewayConfiguration.add_member(:supported_versions, Shapes::ShapeRef.new(shape: McpSupportedVersions, location_name: "supportedVersions"))
    MCPGatewayConfiguration.add_member(:instructions, Shapes::ShapeRef.new(shape: McpInstructions, location_name: "instructions"))
    MCPGatewayConfiguration.add_member(:search_type, Shapes::ShapeRef.new(shape: SearchType, location_name: "searchType"))
    MCPGatewayConfiguration.struct_class = Types::MCPGatewayConfiguration

    McpLambdaTargetConfiguration.add_member(:lambda_arn, Shapes::ShapeRef.new(shape: LambdaFunctionArn, required: true, location_name: "lambdaArn"))
    McpLambdaTargetConfiguration.add_member(:tool_schema, Shapes::ShapeRef.new(shape: ToolSchema, required: true, location_name: "toolSchema"))
    McpLambdaTargetConfiguration.struct_class = Types::McpLambdaTargetConfiguration

    McpServerTargetConfiguration.add_member(:endpoint, Shapes::ShapeRef.new(shape: McpServerTargetConfigurationEndpointString, required: true, location_name: "endpoint"))
    McpServerTargetConfiguration.struct_class = Types::McpServerTargetConfiguration

    McpSupportedVersions.member = Shapes::ShapeRef.new(shape: McpVersion)

    McpTargetConfiguration.add_member(:open_api_schema, Shapes::ShapeRef.new(shape: ApiSchemaConfiguration, location_name: "openApiSchema"))
    McpTargetConfiguration.add_member(:smithy_model, Shapes::ShapeRef.new(shape: ApiSchemaConfiguration, location_name: "smithyModel"))
    McpTargetConfiguration.add_member(:lambda, Shapes::ShapeRef.new(shape: McpLambdaTargetConfiguration, location_name: "lambda"))
    McpTargetConfiguration.add_member(:mcp_server, Shapes::ShapeRef.new(shape: McpServerTargetConfiguration, location_name: "mcpServer"))
    McpTargetConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    McpTargetConfiguration.add_member_subclass(:open_api_schema, Types::McpTargetConfiguration::OpenApiSchema)
    McpTargetConfiguration.add_member_subclass(:smithy_model, Types::McpTargetConfiguration::SmithyModel)
    McpTargetConfiguration.add_member_subclass(:lambda, Types::McpTargetConfiguration::Lambda)
    McpTargetConfiguration.add_member_subclass(:mcp_server, Types::McpTargetConfiguration::McpServer)
    McpTargetConfiguration.add_member_subclass(:unknown, Types::McpTargetConfiguration::Unknown)
    McpTargetConfiguration.struct_class = Types::McpTargetConfiguration

    Memory.add_member(:arn, Shapes::ShapeRef.new(shape: MemoryArn, required: true, location_name: "arn"))
    Memory.add_member(:id, Shapes::ShapeRef.new(shape: MemoryId, required: true, location_name: "id"))
    Memory.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    Memory.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    Memory.add_member(:encryption_key_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "encryptionKeyArn"))
    Memory.add_member(:memory_execution_role_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "memoryExecutionRoleArn"))
    Memory.add_member(:event_expiry_duration, Shapes::ShapeRef.new(shape: MemoryEventExpiryDurationInteger, required: true, location_name: "eventExpiryDuration"))
    Memory.add_member(:status, Shapes::ShapeRef.new(shape: MemoryStatus, required: true, location_name: "status"))
    Memory.add_member(:failure_reason, Shapes::ShapeRef.new(shape: String, location_name: "failureReason"))
    Memory.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    Memory.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    Memory.add_member(:strategies, Shapes::ShapeRef.new(shape: MemoryStrategyList, location_name: "strategies"))
    Memory.struct_class = Types::Memory

    MemoryStrategy.add_member(:strategy_id, Shapes::ShapeRef.new(shape: MemoryStrategyId, required: true, location_name: "strategyId"))
    MemoryStrategy.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    MemoryStrategy.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    MemoryStrategy.add_member(:configuration, Shapes::ShapeRef.new(shape: StrategyConfiguration, location_name: "configuration"))
    MemoryStrategy.add_member(:type, Shapes::ShapeRef.new(shape: MemoryStrategyType, required: true, location_name: "type"))
    MemoryStrategy.add_member(:namespaces, Shapes::ShapeRef.new(shape: NamespacesList, required: true, location_name: "namespaces"))
    MemoryStrategy.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    MemoryStrategy.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt"))
    MemoryStrategy.add_member(:status, Shapes::ShapeRef.new(shape: MemoryStrategyStatus, location_name: "status"))
    MemoryStrategy.struct_class = Types::MemoryStrategy

    MemoryStrategyInput.add_member(:semantic_memory_strategy, Shapes::ShapeRef.new(shape: SemanticMemoryStrategyInput, location_name: "semanticMemoryStrategy"))
    MemoryStrategyInput.add_member(:summary_memory_strategy, Shapes::ShapeRef.new(shape: SummaryMemoryStrategyInput, location_name: "summaryMemoryStrategy"))
    MemoryStrategyInput.add_member(:user_preference_memory_strategy, Shapes::ShapeRef.new(shape: UserPreferenceMemoryStrategyInput, location_name: "userPreferenceMemoryStrategy"))
    MemoryStrategyInput.add_member(:custom_memory_strategy, Shapes::ShapeRef.new(shape: CustomMemoryStrategyInput, location_name: "customMemoryStrategy"))
    MemoryStrategyInput.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    MemoryStrategyInput.add_member_subclass(:semantic_memory_strategy, Types::MemoryStrategyInput::SemanticMemoryStrategy)
    MemoryStrategyInput.add_member_subclass(:summary_memory_strategy, Types::MemoryStrategyInput::SummaryMemoryStrategy)
    MemoryStrategyInput.add_member_subclass(:user_preference_memory_strategy, Types::MemoryStrategyInput::UserPreferenceMemoryStrategy)
    MemoryStrategyInput.add_member_subclass(:custom_memory_strategy, Types::MemoryStrategyInput::CustomMemoryStrategy)
    MemoryStrategyInput.add_member_subclass(:unknown, Types::MemoryStrategyInput::Unknown)
    MemoryStrategyInput.struct_class = Types::MemoryStrategyInput

    MemoryStrategyInputList.member = Shapes::ShapeRef.new(shape: MemoryStrategyInput)

    MemoryStrategyList.member = Shapes::ShapeRef.new(shape: MemoryStrategy)

    MemorySummary.add_member(:arn, Shapes::ShapeRef.new(shape: MemoryArn, location_name: "arn"))
    MemorySummary.add_member(:id, Shapes::ShapeRef.new(shape: MemoryId, location_name: "id"))
    MemorySummary.add_member(:status, Shapes::ShapeRef.new(shape: MemoryStatus, location_name: "status"))
    MemorySummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    MemorySummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    MemorySummary.struct_class = Types::MemorySummary

    MemorySummaryList.member = Shapes::ShapeRef.new(shape: MemorySummary)

    MessageBasedTrigger.add_member(:message_count, Shapes::ShapeRef.new(shape: Integer, location_name: "messageCount"))
    MessageBasedTrigger.struct_class = Types::MessageBasedTrigger

    MessageBasedTriggerInput.add_member(:message_count, Shapes::ShapeRef.new(shape: MessageBasedTriggerInputMessageCountInteger, location_name: "messageCount"))
    MessageBasedTriggerInput.struct_class = Types::MessageBasedTriggerInput

    MicrosoftOauth2ProviderConfigInput.add_member(:client_id, Shapes::ShapeRef.new(shape: ClientIdType, required: true, location_name: "clientId"))
    MicrosoftOauth2ProviderConfigInput.add_member(:client_secret, Shapes::ShapeRef.new(shape: ClientSecretType, required: true, location_name: "clientSecret"))
    MicrosoftOauth2ProviderConfigInput.add_member(:tenant_id, Shapes::ShapeRef.new(shape: TenantIdType, location_name: "tenantId"))
    MicrosoftOauth2ProviderConfigInput.struct_class = Types::MicrosoftOauth2ProviderConfigInput

    MicrosoftOauth2ProviderConfigOutput.add_member(:oauth_discovery, Shapes::ShapeRef.new(shape: Oauth2Discovery, required: true, location_name: "oauthDiscovery"))
    MicrosoftOauth2ProviderConfigOutput.add_member(:client_id, Shapes::ShapeRef.new(shape: ClientIdType, location_name: "clientId"))
    MicrosoftOauth2ProviderConfigOutput.struct_class = Types::MicrosoftOauth2ProviderConfigOutput

    ModifyConsolidationConfiguration.add_member(:custom_consolidation_configuration, Shapes::ShapeRef.new(shape: CustomConsolidationConfigurationInput, location_name: "customConsolidationConfiguration"))
    ModifyConsolidationConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ModifyConsolidationConfiguration.add_member_subclass(:custom_consolidation_configuration, Types::ModifyConsolidationConfiguration::CustomConsolidationConfiguration)
    ModifyConsolidationConfiguration.add_member_subclass(:unknown, Types::ModifyConsolidationConfiguration::Unknown)
    ModifyConsolidationConfiguration.struct_class = Types::ModifyConsolidationConfiguration

    ModifyExtractionConfiguration.add_member(:custom_extraction_configuration, Shapes::ShapeRef.new(shape: CustomExtractionConfigurationInput, location_name: "customExtractionConfiguration"))
    ModifyExtractionConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ModifyExtractionConfiguration.add_member_subclass(:custom_extraction_configuration, Types::ModifyExtractionConfiguration::CustomExtractionConfiguration)
    ModifyExtractionConfiguration.add_member_subclass(:unknown, Types::ModifyExtractionConfiguration::Unknown)
    ModifyExtractionConfiguration.struct_class = Types::ModifyExtractionConfiguration

    ModifyInvocationConfigurationInput.add_member(:topic_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "topicArn"))
    ModifyInvocationConfigurationInput.add_member(:payload_delivery_bucket_name, Shapes::ShapeRef.new(shape: ModifyInvocationConfigurationInputPayloadDeliveryBucketNameString, location_name: "payloadDeliveryBucketName"))
    ModifyInvocationConfigurationInput.struct_class = Types::ModifyInvocationConfigurationInput

    ModifyMemoryStrategies.add_member(:add_memory_strategies, Shapes::ShapeRef.new(shape: MemoryStrategyInputList, location_name: "addMemoryStrategies"))
    ModifyMemoryStrategies.add_member(:modify_memory_strategies, Shapes::ShapeRef.new(shape: ModifyMemoryStrategiesList, location_name: "modifyMemoryStrategies"))
    ModifyMemoryStrategies.add_member(:delete_memory_strategies, Shapes::ShapeRef.new(shape: DeleteMemoryStrategiesList, location_name: "deleteMemoryStrategies"))
    ModifyMemoryStrategies.struct_class = Types::ModifyMemoryStrategies

    ModifyMemoryStrategiesList.member = Shapes::ShapeRef.new(shape: ModifyMemoryStrategyInput)

    ModifyMemoryStrategyInput.add_member(:memory_strategy_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "memoryStrategyId"))
    ModifyMemoryStrategyInput.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    ModifyMemoryStrategyInput.add_member(:namespaces, Shapes::ShapeRef.new(shape: NamespacesList, location_name: "namespaces"))
    ModifyMemoryStrategyInput.add_member(:configuration, Shapes::ShapeRef.new(shape: ModifyStrategyConfiguration, location_name: "configuration"))
    ModifyMemoryStrategyInput.struct_class = Types::ModifyMemoryStrategyInput

    ModifySelfManagedConfiguration.add_member(:trigger_conditions, Shapes::ShapeRef.new(shape: TriggerConditionInputList, location_name: "triggerConditions"))
    ModifySelfManagedConfiguration.add_member(:invocation_configuration, Shapes::ShapeRef.new(shape: ModifyInvocationConfigurationInput, location_name: "invocationConfiguration"))
    ModifySelfManagedConfiguration.add_member(:historical_context_window_size, Shapes::ShapeRef.new(shape: ModifySelfManagedConfigurationHistoricalContextWindowSizeInteger, location_name: "historicalContextWindowSize"))
    ModifySelfManagedConfiguration.struct_class = Types::ModifySelfManagedConfiguration

    ModifyStrategyConfiguration.add_member(:extraction, Shapes::ShapeRef.new(shape: ModifyExtractionConfiguration, location_name: "extraction"))
    ModifyStrategyConfiguration.add_member(:consolidation, Shapes::ShapeRef.new(shape: ModifyConsolidationConfiguration, location_name: "consolidation"))
    ModifyStrategyConfiguration.add_member(:self_managed_configuration, Shapes::ShapeRef.new(shape: ModifySelfManagedConfiguration, location_name: "selfManagedConfiguration"))
    ModifyStrategyConfiguration.struct_class = Types::ModifyStrategyConfiguration

    NamespacesList.member = Shapes::ShapeRef.new(shape: Namespace)

    NetworkConfiguration.add_member(:network_mode, Shapes::ShapeRef.new(shape: NetworkMode, required: true, location_name: "networkMode"))
    NetworkConfiguration.add_member(:network_mode_config, Shapes::ShapeRef.new(shape: VpcConfig, location_name: "networkModeConfig"))
    NetworkConfiguration.struct_class = Types::NetworkConfiguration

    OAuthCredentialProvider.add_member(:provider_arn, Shapes::ShapeRef.new(shape: OAuthCredentialProviderArn, required: true, location_name: "providerArn"))
    OAuthCredentialProvider.add_member(:scopes, Shapes::ShapeRef.new(shape: OAuthScopes, required: true, location_name: "scopes"))
    OAuthCredentialProvider.add_member(:custom_parameters, Shapes::ShapeRef.new(shape: OAuthCustomParameters, location_name: "customParameters"))
    OAuthCredentialProvider.struct_class = Types::OAuthCredentialProvider

    OAuthCustomParameters.key = Shapes::ShapeRef.new(shape: OAuthCustomParametersKey)
    OAuthCustomParameters.value = Shapes::ShapeRef.new(shape: OAuthCustomParametersValue)

    OAuthScopes.member = Shapes::ShapeRef.new(shape: OAuthScope)

    Oauth2AuthorizationServerMetadata.add_member(:issuer, Shapes::ShapeRef.new(shape: IssuerUrlType, required: true, location_name: "issuer"))
    Oauth2AuthorizationServerMetadata.add_member(:authorization_endpoint, Shapes::ShapeRef.new(shape: AuthorizationEndpointType, required: true, location_name: "authorizationEndpoint"))
    Oauth2AuthorizationServerMetadata.add_member(:token_endpoint, Shapes::ShapeRef.new(shape: TokenEndpointType, required: true, location_name: "tokenEndpoint"))
    Oauth2AuthorizationServerMetadata.add_member(:response_types, Shapes::ShapeRef.new(shape: ResponseListType, location_name: "responseTypes"))
    Oauth2AuthorizationServerMetadata.add_member(:token_endpoint_auth_methods, Shapes::ShapeRef.new(shape: TokenEndpointAuthMethodsType, location_name: "tokenEndpointAuthMethods"))
    Oauth2AuthorizationServerMetadata.struct_class = Types::Oauth2AuthorizationServerMetadata

    Oauth2CredentialProviderItem.add_member(:name, Shapes::ShapeRef.new(shape: CredentialProviderName, required: true, location_name: "name"))
    Oauth2CredentialProviderItem.add_member(:credential_provider_vendor, Shapes::ShapeRef.new(shape: CredentialProviderVendorType, required: true, location_name: "credentialProviderVendor"))
    Oauth2CredentialProviderItem.add_member(:credential_provider_arn, Shapes::ShapeRef.new(shape: CredentialProviderArnType, required: true, location_name: "credentialProviderArn"))
    Oauth2CredentialProviderItem.add_member(:created_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdTime"))
    Oauth2CredentialProviderItem.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "lastUpdatedTime"))
    Oauth2CredentialProviderItem.struct_class = Types::Oauth2CredentialProviderItem

    Oauth2CredentialProviders.member = Shapes::ShapeRef.new(shape: Oauth2CredentialProviderItem)

    Oauth2Discovery.add_member(:discovery_url, Shapes::ShapeRef.new(shape: DiscoveryUrlType, location_name: "discoveryUrl"))
    Oauth2Discovery.add_member(:authorization_server_metadata, Shapes::ShapeRef.new(shape: Oauth2AuthorizationServerMetadata, location_name: "authorizationServerMetadata"))
    Oauth2Discovery.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    Oauth2Discovery.add_member_subclass(:discovery_url, Types::Oauth2Discovery::DiscoveryUrl)
    Oauth2Discovery.add_member_subclass(:authorization_server_metadata, Types::Oauth2Discovery::AuthorizationServerMetadata)
    Oauth2Discovery.add_member_subclass(:unknown, Types::Oauth2Discovery::Unknown)
    Oauth2Discovery.struct_class = Types::Oauth2Discovery

    Oauth2ProviderConfigInput.add_member(:custom_oauth_2_provider_config, Shapes::ShapeRef.new(shape: CustomOauth2ProviderConfigInput, location_name: "customOauth2ProviderConfig"))
    Oauth2ProviderConfigInput.add_member(:google_oauth_2_provider_config, Shapes::ShapeRef.new(shape: GoogleOauth2ProviderConfigInput, location_name: "googleOauth2ProviderConfig"))
    Oauth2ProviderConfigInput.add_member(:github_oauth_2_provider_config, Shapes::ShapeRef.new(shape: GithubOauth2ProviderConfigInput, location_name: "githubOauth2ProviderConfig"))
    Oauth2ProviderConfigInput.add_member(:slack_oauth_2_provider_config, Shapes::ShapeRef.new(shape: SlackOauth2ProviderConfigInput, location_name: "slackOauth2ProviderConfig"))
    Oauth2ProviderConfigInput.add_member(:salesforce_oauth_2_provider_config, Shapes::ShapeRef.new(shape: SalesforceOauth2ProviderConfigInput, location_name: "salesforceOauth2ProviderConfig"))
    Oauth2ProviderConfigInput.add_member(:microsoft_oauth_2_provider_config, Shapes::ShapeRef.new(shape: MicrosoftOauth2ProviderConfigInput, location_name: "microsoftOauth2ProviderConfig"))
    Oauth2ProviderConfigInput.add_member(:atlassian_oauth_2_provider_config, Shapes::ShapeRef.new(shape: AtlassianOauth2ProviderConfigInput, location_name: "atlassianOauth2ProviderConfig"))
    Oauth2ProviderConfigInput.add_member(:linkedin_oauth_2_provider_config, Shapes::ShapeRef.new(shape: LinkedinOauth2ProviderConfigInput, location_name: "linkedinOauth2ProviderConfig"))
    Oauth2ProviderConfigInput.add_member(:included_oauth_2_provider_config, Shapes::ShapeRef.new(shape: IncludedOauth2ProviderConfigInput, location_name: "includedOauth2ProviderConfig"))
    Oauth2ProviderConfigInput.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    Oauth2ProviderConfigInput.add_member_subclass(:custom_oauth_2_provider_config, Types::Oauth2ProviderConfigInput::CustomOauth2ProviderConfig)
    Oauth2ProviderConfigInput.add_member_subclass(:google_oauth_2_provider_config, Types::Oauth2ProviderConfigInput::GoogleOauth2ProviderConfig)
    Oauth2ProviderConfigInput.add_member_subclass(:github_oauth_2_provider_config, Types::Oauth2ProviderConfigInput::GithubOauth2ProviderConfig)
    Oauth2ProviderConfigInput.add_member_subclass(:slack_oauth_2_provider_config, Types::Oauth2ProviderConfigInput::SlackOauth2ProviderConfig)
    Oauth2ProviderConfigInput.add_member_subclass(:salesforce_oauth_2_provider_config, Types::Oauth2ProviderConfigInput::SalesforceOauth2ProviderConfig)
    Oauth2ProviderConfigInput.add_member_subclass(:microsoft_oauth_2_provider_config, Types::Oauth2ProviderConfigInput::MicrosoftOauth2ProviderConfig)
    Oauth2ProviderConfigInput.add_member_subclass(:atlassian_oauth_2_provider_config, Types::Oauth2ProviderConfigInput::AtlassianOauth2ProviderConfig)
    Oauth2ProviderConfigInput.add_member_subclass(:linkedin_oauth_2_provider_config, Types::Oauth2ProviderConfigInput::LinkedinOauth2ProviderConfig)
    Oauth2ProviderConfigInput.add_member_subclass(:included_oauth_2_provider_config, Types::Oauth2ProviderConfigInput::IncludedOauth2ProviderConfig)
    Oauth2ProviderConfigInput.add_member_subclass(:unknown, Types::Oauth2ProviderConfigInput::Unknown)
    Oauth2ProviderConfigInput.struct_class = Types::Oauth2ProviderConfigInput

    Oauth2ProviderConfigOutput.add_member(:custom_oauth_2_provider_config, Shapes::ShapeRef.new(shape: CustomOauth2ProviderConfigOutput, location_name: "customOauth2ProviderConfig"))
    Oauth2ProviderConfigOutput.add_member(:google_oauth_2_provider_config, Shapes::ShapeRef.new(shape: GoogleOauth2ProviderConfigOutput, location_name: "googleOauth2ProviderConfig"))
    Oauth2ProviderConfigOutput.add_member(:github_oauth_2_provider_config, Shapes::ShapeRef.new(shape: GithubOauth2ProviderConfigOutput, location_name: "githubOauth2ProviderConfig"))
    Oauth2ProviderConfigOutput.add_member(:slack_oauth_2_provider_config, Shapes::ShapeRef.new(shape: SlackOauth2ProviderConfigOutput, location_name: "slackOauth2ProviderConfig"))
    Oauth2ProviderConfigOutput.add_member(:salesforce_oauth_2_provider_config, Shapes::ShapeRef.new(shape: SalesforceOauth2ProviderConfigOutput, location_name: "salesforceOauth2ProviderConfig"))
    Oauth2ProviderConfigOutput.add_member(:microsoft_oauth_2_provider_config, Shapes::ShapeRef.new(shape: MicrosoftOauth2ProviderConfigOutput, location_name: "microsoftOauth2ProviderConfig"))
    Oauth2ProviderConfigOutput.add_member(:atlassian_oauth_2_provider_config, Shapes::ShapeRef.new(shape: AtlassianOauth2ProviderConfigOutput, location_name: "atlassianOauth2ProviderConfig"))
    Oauth2ProviderConfigOutput.add_member(:linkedin_oauth_2_provider_config, Shapes::ShapeRef.new(shape: LinkedinOauth2ProviderConfigOutput, location_name: "linkedinOauth2ProviderConfig"))
    Oauth2ProviderConfigOutput.add_member(:included_oauth_2_provider_config, Shapes::ShapeRef.new(shape: IncludedOauth2ProviderConfigOutput, location_name: "includedOauth2ProviderConfig"))
    Oauth2ProviderConfigOutput.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    Oauth2ProviderConfigOutput.add_member_subclass(:custom_oauth_2_provider_config, Types::Oauth2ProviderConfigOutput::CustomOauth2ProviderConfig)
    Oauth2ProviderConfigOutput.add_member_subclass(:google_oauth_2_provider_config, Types::Oauth2ProviderConfigOutput::GoogleOauth2ProviderConfig)
    Oauth2ProviderConfigOutput.add_member_subclass(:github_oauth_2_provider_config, Types::Oauth2ProviderConfigOutput::GithubOauth2ProviderConfig)
    Oauth2ProviderConfigOutput.add_member_subclass(:slack_oauth_2_provider_config, Types::Oauth2ProviderConfigOutput::SlackOauth2ProviderConfig)
    Oauth2ProviderConfigOutput.add_member_subclass(:salesforce_oauth_2_provider_config, Types::Oauth2ProviderConfigOutput::SalesforceOauth2ProviderConfig)
    Oauth2ProviderConfigOutput.add_member_subclass(:microsoft_oauth_2_provider_config, Types::Oauth2ProviderConfigOutput::MicrosoftOauth2ProviderConfig)
    Oauth2ProviderConfigOutput.add_member_subclass(:atlassian_oauth_2_provider_config, Types::Oauth2ProviderConfigOutput::AtlassianOauth2ProviderConfig)
    Oauth2ProviderConfigOutput.add_member_subclass(:linkedin_oauth_2_provider_config, Types::Oauth2ProviderConfigOutput::LinkedinOauth2ProviderConfig)
    Oauth2ProviderConfigOutput.add_member_subclass(:included_oauth_2_provider_config, Types::Oauth2ProviderConfigOutput::IncludedOauth2ProviderConfig)
    Oauth2ProviderConfigOutput.add_member_subclass(:unknown, Types::Oauth2ProviderConfigOutput::Unknown)
    Oauth2ProviderConfigOutput.struct_class = Types::Oauth2ProviderConfigOutput

    ProtocolConfiguration.add_member(:server_protocol, Shapes::ShapeRef.new(shape: ServerProtocol, required: true, location_name: "serverProtocol"))
    ProtocolConfiguration.struct_class = Types::ProtocolConfiguration

    RecordingConfig.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "enabled"))
    RecordingConfig.add_member(:s3_location, Shapes::ShapeRef.new(shape: S3Location, location_name: "s3Location"))
    RecordingConfig.struct_class = Types::RecordingConfig

    RequestHeaderAllowlist.member = Shapes::ShapeRef.new(shape: HeaderName)

    RequestHeaderConfiguration.add_member(:request_header_allowlist, Shapes::ShapeRef.new(shape: RequestHeaderAllowlist, location_name: "requestHeaderAllowlist"))
    RequestHeaderConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    RequestHeaderConfiguration.add_member_subclass(:request_header_allowlist, Types::RequestHeaderConfiguration::RequestHeaderAllowlist)
    RequestHeaderConfiguration.add_member_subclass(:unknown, Types::RequestHeaderConfiguration::Unknown)
    RequestHeaderConfiguration.struct_class = Types::RequestHeaderConfiguration

    RequiredProperties.member = Shapes::ShapeRef.new(shape: String)

    ResourceLimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ResourceLimitExceededException.struct_class = Types::ResourceLimitExceededException

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ResourceOauth2ReturnUrlListType.member = Shapes::ShapeRef.new(shape: ResourceOauth2ReturnUrlType)

    ResponseListType.member = Shapes::ShapeRef.new(shape: ResponseType)

    S3Configuration.add_member(:uri, Shapes::ShapeRef.new(shape: S3BucketUri, location_name: "uri"))
    S3Configuration.add_member(:bucket_owner_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, location_name: "bucketOwnerAccountId"))
    S3Configuration.struct_class = Types::S3Configuration

    S3Location.add_member(:bucket, Shapes::ShapeRef.new(shape: S3LocationBucketString, required: true, location_name: "bucket"))
    S3Location.add_member(:prefix, Shapes::ShapeRef.new(shape: S3LocationPrefixString, required: true, location_name: "prefix"))
    S3Location.add_member(:version_id, Shapes::ShapeRef.new(shape: S3LocationVersionIdString, location_name: "versionId"))
    S3Location.struct_class = Types::S3Location

    SalesforceOauth2ProviderConfigInput.add_member(:client_id, Shapes::ShapeRef.new(shape: ClientIdType, required: true, location_name: "clientId"))
    SalesforceOauth2ProviderConfigInput.add_member(:client_secret, Shapes::ShapeRef.new(shape: ClientSecretType, required: true, location_name: "clientSecret"))
    SalesforceOauth2ProviderConfigInput.struct_class = Types::SalesforceOauth2ProviderConfigInput

    SalesforceOauth2ProviderConfigOutput.add_member(:oauth_discovery, Shapes::ShapeRef.new(shape: Oauth2Discovery, required: true, location_name: "oauthDiscovery"))
    SalesforceOauth2ProviderConfigOutput.add_member(:client_id, Shapes::ShapeRef.new(shape: ClientIdType, location_name: "clientId"))
    SalesforceOauth2ProviderConfigOutput.struct_class = Types::SalesforceOauth2ProviderConfigOutput

    SchemaDefinition.add_member(:type, Shapes::ShapeRef.new(shape: SchemaType, required: true, location_name: "type"))
    SchemaDefinition.add_member(:properties, Shapes::ShapeRef.new(shape: SchemaProperties, location_name: "properties"))
    SchemaDefinition.add_member(:required, Shapes::ShapeRef.new(shape: RequiredProperties, location_name: "required"))
    SchemaDefinition.add_member(:items, Shapes::ShapeRef.new(shape: SchemaDefinition, location_name: "items"))
    SchemaDefinition.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    SchemaDefinition.struct_class = Types::SchemaDefinition

    SchemaProperties.key = Shapes::ShapeRef.new(shape: String)
    SchemaProperties.value = Shapes::ShapeRef.new(shape: SchemaDefinition)

    Secret.add_member(:secret_arn, Shapes::ShapeRef.new(shape: SecretArn, required: true, location_name: "secretArn"))
    Secret.struct_class = Types::Secret

    SecurityGroups.member = Shapes::ShapeRef.new(shape: SecurityGroupId)

    SelfManagedConfiguration.add_member(:trigger_conditions, Shapes::ShapeRef.new(shape: TriggerConditionsList, required: true, location_name: "triggerConditions"))
    SelfManagedConfiguration.add_member(:invocation_configuration, Shapes::ShapeRef.new(shape: InvocationConfiguration, required: true, location_name: "invocationConfiguration"))
    SelfManagedConfiguration.add_member(:historical_context_window_size, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "historicalContextWindowSize"))
    SelfManagedConfiguration.struct_class = Types::SelfManagedConfiguration

    SelfManagedConfigurationInput.add_member(:trigger_conditions, Shapes::ShapeRef.new(shape: TriggerConditionInputList, location_name: "triggerConditions"))
    SelfManagedConfigurationInput.add_member(:invocation_configuration, Shapes::ShapeRef.new(shape: InvocationConfigurationInput, required: true, location_name: "invocationConfiguration"))
    SelfManagedConfigurationInput.add_member(:historical_context_window_size, Shapes::ShapeRef.new(shape: SelfManagedConfigurationInputHistoricalContextWindowSizeInteger, location_name: "historicalContextWindowSize"))
    SelfManagedConfigurationInput.struct_class = Types::SelfManagedConfigurationInput

    SemanticConsolidationOverride.add_member(:append_to_prompt, Shapes::ShapeRef.new(shape: Prompt, required: true, location_name: "appendToPrompt"))
    SemanticConsolidationOverride.add_member(:model_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "modelId"))
    SemanticConsolidationOverride.struct_class = Types::SemanticConsolidationOverride

    SemanticExtractionOverride.add_member(:append_to_prompt, Shapes::ShapeRef.new(shape: Prompt, required: true, location_name: "appendToPrompt"))
    SemanticExtractionOverride.add_member(:model_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "modelId"))
    SemanticExtractionOverride.struct_class = Types::SemanticExtractionOverride

    SemanticMemoryStrategyInput.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    SemanticMemoryStrategyInput.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    SemanticMemoryStrategyInput.add_member(:namespaces, Shapes::ShapeRef.new(shape: NamespacesList, location_name: "namespaces"))
    SemanticMemoryStrategyInput.struct_class = Types::SemanticMemoryStrategyInput

    SemanticOverrideConfigurationInput.add_member(:extraction, Shapes::ShapeRef.new(shape: SemanticOverrideExtractionConfigurationInput, location_name: "extraction"))
    SemanticOverrideConfigurationInput.add_member(:consolidation, Shapes::ShapeRef.new(shape: SemanticOverrideConsolidationConfigurationInput, location_name: "consolidation"))
    SemanticOverrideConfigurationInput.struct_class = Types::SemanticOverrideConfigurationInput

    SemanticOverrideConsolidationConfigurationInput.add_member(:append_to_prompt, Shapes::ShapeRef.new(shape: Prompt, required: true, location_name: "appendToPrompt"))
    SemanticOverrideConsolidationConfigurationInput.add_member(:model_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "modelId"))
    SemanticOverrideConsolidationConfigurationInput.struct_class = Types::SemanticOverrideConsolidationConfigurationInput

    SemanticOverrideExtractionConfigurationInput.add_member(:append_to_prompt, Shapes::ShapeRef.new(shape: Prompt, required: true, location_name: "appendToPrompt"))
    SemanticOverrideExtractionConfigurationInput.add_member(:model_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "modelId"))
    SemanticOverrideExtractionConfigurationInput.struct_class = Types::SemanticOverrideExtractionConfigurationInput

    ServiceException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ServiceException.struct_class = Types::ServiceException

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    SetTokenVaultCMKRequest.add_member(:token_vault_id, Shapes::ShapeRef.new(shape: TokenVaultIdType, location_name: "tokenVaultId"))
    SetTokenVaultCMKRequest.add_member(:kms_configuration, Shapes::ShapeRef.new(shape: KmsConfiguration, required: true, location_name: "kmsConfiguration"))
    SetTokenVaultCMKRequest.struct_class = Types::SetTokenVaultCMKRequest

    SetTokenVaultCMKResponse.add_member(:token_vault_id, Shapes::ShapeRef.new(shape: TokenVaultIdType, required: true, location_name: "tokenVaultId"))
    SetTokenVaultCMKResponse.add_member(:kms_configuration, Shapes::ShapeRef.new(shape: KmsConfiguration, required: true, location_name: "kmsConfiguration"))
    SetTokenVaultCMKResponse.add_member(:last_modified_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "lastModifiedDate"))
    SetTokenVaultCMKResponse.struct_class = Types::SetTokenVaultCMKResponse

    SlackOauth2ProviderConfigInput.add_member(:client_id, Shapes::ShapeRef.new(shape: ClientIdType, required: true, location_name: "clientId"))
    SlackOauth2ProviderConfigInput.add_member(:client_secret, Shapes::ShapeRef.new(shape: ClientSecretType, required: true, location_name: "clientSecret"))
    SlackOauth2ProviderConfigInput.struct_class = Types::SlackOauth2ProviderConfigInput

    SlackOauth2ProviderConfigOutput.add_member(:oauth_discovery, Shapes::ShapeRef.new(shape: Oauth2Discovery, required: true, location_name: "oauthDiscovery"))
    SlackOauth2ProviderConfigOutput.add_member(:client_id, Shapes::ShapeRef.new(shape: ClientIdType, location_name: "clientId"))
    SlackOauth2ProviderConfigOutput.struct_class = Types::SlackOauth2ProviderConfigOutput

    StatusReasons.member = Shapes::ShapeRef.new(shape: StatusReason)

    StrategyConfiguration.add_member(:type, Shapes::ShapeRef.new(shape: OverrideType, location_name: "type"))
    StrategyConfiguration.add_member(:extraction, Shapes::ShapeRef.new(shape: ExtractionConfiguration, location_name: "extraction"))
    StrategyConfiguration.add_member(:consolidation, Shapes::ShapeRef.new(shape: ConsolidationConfiguration, location_name: "consolidation"))
    StrategyConfiguration.add_member(:self_managed_configuration, Shapes::ShapeRef.new(shape: SelfManagedConfiguration, location_name: "selfManagedConfiguration"))
    StrategyConfiguration.struct_class = Types::StrategyConfiguration

    Subnets.member = Shapes::ShapeRef.new(shape: SubnetId)

    SummaryConsolidationOverride.add_member(:append_to_prompt, Shapes::ShapeRef.new(shape: Prompt, required: true, location_name: "appendToPrompt"))
    SummaryConsolidationOverride.add_member(:model_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "modelId"))
    SummaryConsolidationOverride.struct_class = Types::SummaryConsolidationOverride

    SummaryMemoryStrategyInput.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    SummaryMemoryStrategyInput.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    SummaryMemoryStrategyInput.add_member(:namespaces, Shapes::ShapeRef.new(shape: NamespacesList, location_name: "namespaces"))
    SummaryMemoryStrategyInput.struct_class = Types::SummaryMemoryStrategyInput

    SummaryOverrideConfigurationInput.add_member(:consolidation, Shapes::ShapeRef.new(shape: SummaryOverrideConsolidationConfigurationInput, location_name: "consolidation"))
    SummaryOverrideConfigurationInput.struct_class = Types::SummaryOverrideConfigurationInput

    SummaryOverrideConsolidationConfigurationInput.add_member(:append_to_prompt, Shapes::ShapeRef.new(shape: Prompt, required: true, location_name: "appendToPrompt"))
    SummaryOverrideConsolidationConfigurationInput.add_member(:model_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "modelId"))
    SummaryOverrideConsolidationConfigurationInput.struct_class = Types::SummaryOverrideConsolidationConfigurationInput

    SynchronizeGatewayTargetsRequest.add_member(:gateway_identifier, Shapes::ShapeRef.new(shape: GatewayIdentifier, required: true, location: "uri", location_name: "gatewayIdentifier"))
    SynchronizeGatewayTargetsRequest.add_member(:target_id_list, Shapes::ShapeRef.new(shape: TargetIdList, required: true, location_name: "targetIdList"))
    SynchronizeGatewayTargetsRequest.struct_class = Types::SynchronizeGatewayTargetsRequest

    SynchronizeGatewayTargetsResponse.add_member(:targets, Shapes::ShapeRef.new(shape: GatewayTargetList, location_name: "targets"))
    SynchronizeGatewayTargetsResponse.struct_class = Types::SynchronizeGatewayTargetsResponse

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: TaggableResourcesArn, required: true, location: "uri", location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    TagsMap.key = Shapes::ShapeRef.new(shape: TagKey)
    TagsMap.value = Shapes::ShapeRef.new(shape: TagValue)

    TargetConfiguration.add_member(:mcp, Shapes::ShapeRef.new(shape: McpTargetConfiguration, location_name: "mcp"))
    TargetConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    TargetConfiguration.add_member_subclass(:mcp, Types::TargetConfiguration::Mcp)
    TargetConfiguration.add_member_subclass(:unknown, Types::TargetConfiguration::Unknown)
    TargetConfiguration.struct_class = Types::TargetConfiguration

    TargetIdList.member = Shapes::ShapeRef.new(shape: TargetId)

    TargetSummaries.member = Shapes::ShapeRef.new(shape: TargetSummary)

    TargetSummary.add_member(:target_id, Shapes::ShapeRef.new(shape: TargetId, required: true, location_name: "targetId"))
    TargetSummary.add_member(:name, Shapes::ShapeRef.new(shape: TargetName, required: true, location_name: "name"))
    TargetSummary.add_member(:status, Shapes::ShapeRef.new(shape: TargetStatus, required: true, location_name: "status"))
    TargetSummary.add_member(:description, Shapes::ShapeRef.new(shape: TargetDescription, location_name: "description"))
    TargetSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    TargetSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "updatedAt"))
    TargetSummary.struct_class = Types::TargetSummary

    ThrottledException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ThrottledException.struct_class = Types::ThrottledException

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    TimeBasedTrigger.add_member(:idle_session_timeout, Shapes::ShapeRef.new(shape: Integer, location_name: "idleSessionTimeout"))
    TimeBasedTrigger.struct_class = Types::TimeBasedTrigger

    TimeBasedTriggerInput.add_member(:idle_session_timeout, Shapes::ShapeRef.new(shape: TimeBasedTriggerInputIdleSessionTimeoutInteger, location_name: "idleSessionTimeout"))
    TimeBasedTriggerInput.struct_class = Types::TimeBasedTriggerInput

    TokenBasedTrigger.add_member(:token_count, Shapes::ShapeRef.new(shape: Integer, location_name: "tokenCount"))
    TokenBasedTrigger.struct_class = Types::TokenBasedTrigger

    TokenBasedTriggerInput.add_member(:token_count, Shapes::ShapeRef.new(shape: TokenBasedTriggerInputTokenCountInteger, location_name: "tokenCount"))
    TokenBasedTriggerInput.struct_class = Types::TokenBasedTriggerInput

    TokenEndpointAuthMethodsType.member = Shapes::ShapeRef.new(shape: TokenAuthMethod)

    ToolDefinition.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    ToolDefinition.add_member(:description, Shapes::ShapeRef.new(shape: String, required: true, location_name: "description"))
    ToolDefinition.add_member(:input_schema, Shapes::ShapeRef.new(shape: SchemaDefinition, required: true, location_name: "inputSchema"))
    ToolDefinition.add_member(:output_schema, Shapes::ShapeRef.new(shape: SchemaDefinition, location_name: "outputSchema"))
    ToolDefinition.struct_class = Types::ToolDefinition

    ToolDefinitions.member = Shapes::ShapeRef.new(shape: ToolDefinition)

    ToolSchema.add_member(:s3, Shapes::ShapeRef.new(shape: S3Configuration, location_name: "s3"))
    ToolSchema.add_member(:inline_payload, Shapes::ShapeRef.new(shape: ToolDefinitions, location_name: "inlinePayload"))
    ToolSchema.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ToolSchema.add_member_subclass(:s3, Types::ToolSchema::S3)
    ToolSchema.add_member_subclass(:inline_payload, Types::ToolSchema::InlinePayload)
    ToolSchema.add_member_subclass(:unknown, Types::ToolSchema::Unknown)
    ToolSchema.struct_class = Types::ToolSchema

    TriggerCondition.add_member(:message_based_trigger, Shapes::ShapeRef.new(shape: MessageBasedTrigger, location_name: "messageBasedTrigger"))
    TriggerCondition.add_member(:token_based_trigger, Shapes::ShapeRef.new(shape: TokenBasedTrigger, location_name: "tokenBasedTrigger"))
    TriggerCondition.add_member(:time_based_trigger, Shapes::ShapeRef.new(shape: TimeBasedTrigger, location_name: "timeBasedTrigger"))
    TriggerCondition.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    TriggerCondition.add_member_subclass(:message_based_trigger, Types::TriggerCondition::MessageBasedTrigger)
    TriggerCondition.add_member_subclass(:token_based_trigger, Types::TriggerCondition::TokenBasedTrigger)
    TriggerCondition.add_member_subclass(:time_based_trigger, Types::TriggerCondition::TimeBasedTrigger)
    TriggerCondition.add_member_subclass(:unknown, Types::TriggerCondition::Unknown)
    TriggerCondition.struct_class = Types::TriggerCondition

    TriggerConditionInput.add_member(:message_based_trigger, Shapes::ShapeRef.new(shape: MessageBasedTriggerInput, location_name: "messageBasedTrigger"))
    TriggerConditionInput.add_member(:token_based_trigger, Shapes::ShapeRef.new(shape: TokenBasedTriggerInput, location_name: "tokenBasedTrigger"))
    TriggerConditionInput.add_member(:time_based_trigger, Shapes::ShapeRef.new(shape: TimeBasedTriggerInput, location_name: "timeBasedTrigger"))
    TriggerConditionInput.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    TriggerConditionInput.add_member_subclass(:message_based_trigger, Types::TriggerConditionInput::MessageBasedTrigger)
    TriggerConditionInput.add_member_subclass(:token_based_trigger, Types::TriggerConditionInput::TokenBasedTrigger)
    TriggerConditionInput.add_member_subclass(:time_based_trigger, Types::TriggerConditionInput::TimeBasedTrigger)
    TriggerConditionInput.add_member_subclass(:unknown, Types::TriggerConditionInput::Unknown)
    TriggerConditionInput.struct_class = Types::TriggerConditionInput

    TriggerConditionInputList.member = Shapes::ShapeRef.new(shape: TriggerConditionInput)

    TriggerConditionsList.member = Shapes::ShapeRef.new(shape: TriggerCondition)

    UnauthorizedException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    UnauthorizedException.struct_class = Types::UnauthorizedException

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: TaggableResourcesArn, required: true, location: "uri", location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateAgentRuntimeEndpointRequest.add_member(:agent_runtime_id, Shapes::ShapeRef.new(shape: AgentRuntimeId, required: true, location: "uri", location_name: "agentRuntimeId"))
    UpdateAgentRuntimeEndpointRequest.add_member(:endpoint_name, Shapes::ShapeRef.new(shape: EndpointName, required: true, location: "uri", location_name: "endpointName"))
    UpdateAgentRuntimeEndpointRequest.add_member(:agent_runtime_version, Shapes::ShapeRef.new(shape: AgentRuntimeVersion, location_name: "agentRuntimeVersion"))
    UpdateAgentRuntimeEndpointRequest.add_member(:description, Shapes::ShapeRef.new(shape: AgentEndpointDescription, location_name: "description"))
    UpdateAgentRuntimeEndpointRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    UpdateAgentRuntimeEndpointRequest.struct_class = Types::UpdateAgentRuntimeEndpointRequest

    UpdateAgentRuntimeEndpointResponse.add_member(:live_version, Shapes::ShapeRef.new(shape: AgentRuntimeVersion, location_name: "liveVersion"))
    UpdateAgentRuntimeEndpointResponse.add_member(:target_version, Shapes::ShapeRef.new(shape: AgentRuntimeVersion, location_name: "targetVersion"))
    UpdateAgentRuntimeEndpointResponse.add_member(:agent_runtime_endpoint_arn, Shapes::ShapeRef.new(shape: AgentRuntimeEndpointArn, required: true, location_name: "agentRuntimeEndpointArn"))
    UpdateAgentRuntimeEndpointResponse.add_member(:agent_runtime_arn, Shapes::ShapeRef.new(shape: AgentRuntimeArn, required: true, location_name: "agentRuntimeArn"))
    UpdateAgentRuntimeEndpointResponse.add_member(:status, Shapes::ShapeRef.new(shape: AgentRuntimeEndpointStatus, required: true, location_name: "status"))
    UpdateAgentRuntimeEndpointResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    UpdateAgentRuntimeEndpointResponse.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "lastUpdatedAt"))
    UpdateAgentRuntimeEndpointResponse.struct_class = Types::UpdateAgentRuntimeEndpointResponse

    UpdateAgentRuntimeRequest.add_member(:agent_runtime_id, Shapes::ShapeRef.new(shape: AgentRuntimeId, required: true, location: "uri", location_name: "agentRuntimeId"))
    UpdateAgentRuntimeRequest.add_member(:agent_runtime_artifact, Shapes::ShapeRef.new(shape: AgentRuntimeArtifact, required: true, location_name: "agentRuntimeArtifact"))
    UpdateAgentRuntimeRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "roleArn"))
    UpdateAgentRuntimeRequest.add_member(:network_configuration, Shapes::ShapeRef.new(shape: NetworkConfiguration, required: true, location_name: "networkConfiguration"))
    UpdateAgentRuntimeRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    UpdateAgentRuntimeRequest.add_member(:authorizer_configuration, Shapes::ShapeRef.new(shape: AuthorizerConfiguration, location_name: "authorizerConfiguration"))
    UpdateAgentRuntimeRequest.add_member(:request_header_configuration, Shapes::ShapeRef.new(shape: RequestHeaderConfiguration, location_name: "requestHeaderConfiguration"))
    UpdateAgentRuntimeRequest.add_member(:protocol_configuration, Shapes::ShapeRef.new(shape: ProtocolConfiguration, location_name: "protocolConfiguration"))
    UpdateAgentRuntimeRequest.add_member(:lifecycle_configuration, Shapes::ShapeRef.new(shape: LifecycleConfiguration, location_name: "lifecycleConfiguration"))
    UpdateAgentRuntimeRequest.add_member(:environment_variables, Shapes::ShapeRef.new(shape: EnvironmentVariablesMap, location_name: "environmentVariables"))
    UpdateAgentRuntimeRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    UpdateAgentRuntimeRequest.struct_class = Types::UpdateAgentRuntimeRequest

    UpdateAgentRuntimeResponse.add_member(:agent_runtime_arn, Shapes::ShapeRef.new(shape: AgentRuntimeArn, required: true, location_name: "agentRuntimeArn"))
    UpdateAgentRuntimeResponse.add_member(:agent_runtime_id, Shapes::ShapeRef.new(shape: AgentRuntimeId, required: true, location_name: "agentRuntimeId"))
    UpdateAgentRuntimeResponse.add_member(:workload_identity_details, Shapes::ShapeRef.new(shape: WorkloadIdentityDetails, location_name: "workloadIdentityDetails"))
    UpdateAgentRuntimeResponse.add_member(:agent_runtime_version, Shapes::ShapeRef.new(shape: AgentRuntimeVersion, required: true, location_name: "agentRuntimeVersion"))
    UpdateAgentRuntimeResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    UpdateAgentRuntimeResponse.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "lastUpdatedAt"))
    UpdateAgentRuntimeResponse.add_member(:status, Shapes::ShapeRef.new(shape: AgentRuntimeStatus, required: true, location_name: "status"))
    UpdateAgentRuntimeResponse.struct_class = Types::UpdateAgentRuntimeResponse

    UpdateApiKeyCredentialProviderRequest.add_member(:name, Shapes::ShapeRef.new(shape: CredentialProviderName, required: true, location_name: "name"))
    UpdateApiKeyCredentialProviderRequest.add_member(:api_key, Shapes::ShapeRef.new(shape: ApiKeyType, required: true, location_name: "apiKey"))
    UpdateApiKeyCredentialProviderRequest.struct_class = Types::UpdateApiKeyCredentialProviderRequest

    UpdateApiKeyCredentialProviderResponse.add_member(:api_key_secret_arn, Shapes::ShapeRef.new(shape: Secret, required: true, location_name: "apiKeySecretArn"))
    UpdateApiKeyCredentialProviderResponse.add_member(:name, Shapes::ShapeRef.new(shape: CredentialProviderName, required: true, location_name: "name"))
    UpdateApiKeyCredentialProviderResponse.add_member(:credential_provider_arn, Shapes::ShapeRef.new(shape: ApiKeyCredentialProviderArnType, required: true, location_name: "credentialProviderArn"))
    UpdateApiKeyCredentialProviderResponse.add_member(:created_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdTime"))
    UpdateApiKeyCredentialProviderResponse.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "lastUpdatedTime"))
    UpdateApiKeyCredentialProviderResponse.struct_class = Types::UpdateApiKeyCredentialProviderResponse

    UpdateGatewayRequest.add_member(:gateway_identifier, Shapes::ShapeRef.new(shape: GatewayIdentifier, required: true, location: "uri", location_name: "gatewayIdentifier"))
    UpdateGatewayRequest.add_member(:name, Shapes::ShapeRef.new(shape: GatewayName, required: true, location_name: "name"))
    UpdateGatewayRequest.add_member(:description, Shapes::ShapeRef.new(shape: GatewayDescription, location_name: "description"))
    UpdateGatewayRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "roleArn"))
    UpdateGatewayRequest.add_member(:protocol_type, Shapes::ShapeRef.new(shape: GatewayProtocolType, required: true, location_name: "protocolType"))
    UpdateGatewayRequest.add_member(:protocol_configuration, Shapes::ShapeRef.new(shape: GatewayProtocolConfiguration, location_name: "protocolConfiguration"))
    UpdateGatewayRequest.add_member(:authorizer_type, Shapes::ShapeRef.new(shape: AuthorizerType, required: true, location_name: "authorizerType"))
    UpdateGatewayRequest.add_member(:authorizer_configuration, Shapes::ShapeRef.new(shape: AuthorizerConfiguration, location_name: "authorizerConfiguration"))
    UpdateGatewayRequest.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "kmsKeyArn"))
    UpdateGatewayRequest.add_member(:interceptor_configurations, Shapes::ShapeRef.new(shape: GatewayInterceptorConfigurations, location_name: "interceptorConfigurations"))
    UpdateGatewayRequest.add_member(:exception_level, Shapes::ShapeRef.new(shape: ExceptionLevel, location_name: "exceptionLevel"))
    UpdateGatewayRequest.struct_class = Types::UpdateGatewayRequest

    UpdateGatewayResponse.add_member(:gateway_arn, Shapes::ShapeRef.new(shape: GatewayArn, required: true, location_name: "gatewayArn"))
    UpdateGatewayResponse.add_member(:gateway_id, Shapes::ShapeRef.new(shape: GatewayId, required: true, location_name: "gatewayId"))
    UpdateGatewayResponse.add_member(:gateway_url, Shapes::ShapeRef.new(shape: GatewayUrl, location_name: "gatewayUrl"))
    UpdateGatewayResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    UpdateGatewayResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "updatedAt"))
    UpdateGatewayResponse.add_member(:status, Shapes::ShapeRef.new(shape: GatewayStatus, required: true, location_name: "status"))
    UpdateGatewayResponse.add_member(:status_reasons, Shapes::ShapeRef.new(shape: StatusReasons, location_name: "statusReasons"))
    UpdateGatewayResponse.add_member(:name, Shapes::ShapeRef.new(shape: GatewayName, required: true, location_name: "name"))
    UpdateGatewayResponse.add_member(:description, Shapes::ShapeRef.new(shape: GatewayDescription, location_name: "description"))
    UpdateGatewayResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "roleArn"))
    UpdateGatewayResponse.add_member(:protocol_type, Shapes::ShapeRef.new(shape: GatewayProtocolType, required: true, location_name: "protocolType"))
    UpdateGatewayResponse.add_member(:protocol_configuration, Shapes::ShapeRef.new(shape: GatewayProtocolConfiguration, location_name: "protocolConfiguration"))
    UpdateGatewayResponse.add_member(:authorizer_type, Shapes::ShapeRef.new(shape: AuthorizerType, required: true, location_name: "authorizerType"))
    UpdateGatewayResponse.add_member(:authorizer_configuration, Shapes::ShapeRef.new(shape: AuthorizerConfiguration, location_name: "authorizerConfiguration"))
    UpdateGatewayResponse.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "kmsKeyArn"))
    UpdateGatewayResponse.add_member(:interceptor_configurations, Shapes::ShapeRef.new(shape: GatewayInterceptorConfigurations, location_name: "interceptorConfigurations"))
    UpdateGatewayResponse.add_member(:workload_identity_details, Shapes::ShapeRef.new(shape: WorkloadIdentityDetails, location_name: "workloadIdentityDetails"))
    UpdateGatewayResponse.add_member(:exception_level, Shapes::ShapeRef.new(shape: ExceptionLevel, location_name: "exceptionLevel"))
    UpdateGatewayResponse.struct_class = Types::UpdateGatewayResponse

    UpdateGatewayTargetRequest.add_member(:gateway_identifier, Shapes::ShapeRef.new(shape: GatewayIdentifier, required: true, location: "uri", location_name: "gatewayIdentifier"))
    UpdateGatewayTargetRequest.add_member(:target_id, Shapes::ShapeRef.new(shape: TargetId, required: true, location: "uri", location_name: "targetId"))
    UpdateGatewayTargetRequest.add_member(:name, Shapes::ShapeRef.new(shape: TargetName, required: true, location_name: "name"))
    UpdateGatewayTargetRequest.add_member(:description, Shapes::ShapeRef.new(shape: TargetDescription, location_name: "description"))
    UpdateGatewayTargetRequest.add_member(:target_configuration, Shapes::ShapeRef.new(shape: TargetConfiguration, required: true, location_name: "targetConfiguration"))
    UpdateGatewayTargetRequest.add_member(:credential_provider_configurations, Shapes::ShapeRef.new(shape: CredentialProviderConfigurations, location_name: "credentialProviderConfigurations"))
    UpdateGatewayTargetRequest.struct_class = Types::UpdateGatewayTargetRequest

    UpdateGatewayTargetResponse.add_member(:gateway_arn, Shapes::ShapeRef.new(shape: GatewayArn, required: true, location_name: "gatewayArn"))
    UpdateGatewayTargetResponse.add_member(:target_id, Shapes::ShapeRef.new(shape: TargetId, required: true, location_name: "targetId"))
    UpdateGatewayTargetResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    UpdateGatewayTargetResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "updatedAt"))
    UpdateGatewayTargetResponse.add_member(:status, Shapes::ShapeRef.new(shape: TargetStatus, required: true, location_name: "status"))
    UpdateGatewayTargetResponse.add_member(:status_reasons, Shapes::ShapeRef.new(shape: StatusReasons, location_name: "statusReasons"))
    UpdateGatewayTargetResponse.add_member(:name, Shapes::ShapeRef.new(shape: TargetName, required: true, location_name: "name"))
    UpdateGatewayTargetResponse.add_member(:description, Shapes::ShapeRef.new(shape: TargetDescription, location_name: "description"))
    UpdateGatewayTargetResponse.add_member(:target_configuration, Shapes::ShapeRef.new(shape: TargetConfiguration, required: true, location_name: "targetConfiguration"))
    UpdateGatewayTargetResponse.add_member(:credential_provider_configurations, Shapes::ShapeRef.new(shape: CredentialProviderConfigurations, required: true, location_name: "credentialProviderConfigurations"))
    UpdateGatewayTargetResponse.add_member(:last_synchronized_at, Shapes::ShapeRef.new(shape: DateTimestamp, location_name: "lastSynchronizedAt"))
    UpdateGatewayTargetResponse.struct_class = Types::UpdateGatewayTargetResponse

    UpdateMemoryInput.add_member(:client_token, Shapes::ShapeRef.new(shape: UpdateMemoryInputClientTokenString, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    UpdateMemoryInput.add_member(:memory_id, Shapes::ShapeRef.new(shape: MemoryId, required: true, location: "uri", location_name: "memoryId"))
    UpdateMemoryInput.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    UpdateMemoryInput.add_member(:event_expiry_duration, Shapes::ShapeRef.new(shape: UpdateMemoryInputEventExpiryDurationInteger, location_name: "eventExpiryDuration"))
    UpdateMemoryInput.add_member(:memory_execution_role_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "memoryExecutionRoleArn"))
    UpdateMemoryInput.add_member(:memory_strategies, Shapes::ShapeRef.new(shape: ModifyMemoryStrategies, location_name: "memoryStrategies"))
    UpdateMemoryInput.struct_class = Types::UpdateMemoryInput

    UpdateMemoryOutput.add_member(:memory, Shapes::ShapeRef.new(shape: Memory, location_name: "memory"))
    UpdateMemoryOutput.struct_class = Types::UpdateMemoryOutput

    UpdateOauth2CredentialProviderRequest.add_member(:name, Shapes::ShapeRef.new(shape: CredentialProviderName, required: true, location_name: "name"))
    UpdateOauth2CredentialProviderRequest.add_member(:credential_provider_vendor, Shapes::ShapeRef.new(shape: CredentialProviderVendorType, required: true, location_name: "credentialProviderVendor"))
    UpdateOauth2CredentialProviderRequest.add_member(:oauth2_provider_config_input, Shapes::ShapeRef.new(shape: Oauth2ProviderConfigInput, required: true, location_name: "oauth2ProviderConfigInput"))
    UpdateOauth2CredentialProviderRequest.struct_class = Types::UpdateOauth2CredentialProviderRequest

    UpdateOauth2CredentialProviderResponse.add_member(:client_secret_arn, Shapes::ShapeRef.new(shape: Secret, required: true, location_name: "clientSecretArn"))
    UpdateOauth2CredentialProviderResponse.add_member(:name, Shapes::ShapeRef.new(shape: CredentialProviderName, required: true, location_name: "name"))
    UpdateOauth2CredentialProviderResponse.add_member(:credential_provider_vendor, Shapes::ShapeRef.new(shape: CredentialProviderVendorType, required: true, location_name: "credentialProviderVendor"))
    UpdateOauth2CredentialProviderResponse.add_member(:credential_provider_arn, Shapes::ShapeRef.new(shape: CredentialProviderArnType, required: true, location_name: "credentialProviderArn"))
    UpdateOauth2CredentialProviderResponse.add_member(:callback_url, Shapes::ShapeRef.new(shape: String, location_name: "callbackUrl"))
    UpdateOauth2CredentialProviderResponse.add_member(:oauth2_provider_config_output, Shapes::ShapeRef.new(shape: Oauth2ProviderConfigOutput, required: true, location_name: "oauth2ProviderConfigOutput"))
    UpdateOauth2CredentialProviderResponse.add_member(:created_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdTime"))
    UpdateOauth2CredentialProviderResponse.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "lastUpdatedTime"))
    UpdateOauth2CredentialProviderResponse.struct_class = Types::UpdateOauth2CredentialProviderResponse

    UpdateWorkloadIdentityRequest.add_member(:name, Shapes::ShapeRef.new(shape: WorkloadIdentityNameType, required: true, location_name: "name"))
    UpdateWorkloadIdentityRequest.add_member(:allowed_resource_oauth_2_return_urls, Shapes::ShapeRef.new(shape: ResourceOauth2ReturnUrlListType, location_name: "allowedResourceOauth2ReturnUrls"))
    UpdateWorkloadIdentityRequest.struct_class = Types::UpdateWorkloadIdentityRequest

    UpdateWorkloadIdentityResponse.add_member(:name, Shapes::ShapeRef.new(shape: WorkloadIdentityNameType, required: true, location_name: "name"))
    UpdateWorkloadIdentityResponse.add_member(:workload_identity_arn, Shapes::ShapeRef.new(shape: WorkloadIdentityArnType, required: true, location_name: "workloadIdentityArn"))
    UpdateWorkloadIdentityResponse.add_member(:allowed_resource_oauth_2_return_urls, Shapes::ShapeRef.new(shape: ResourceOauth2ReturnUrlListType, location_name: "allowedResourceOauth2ReturnUrls"))
    UpdateWorkloadIdentityResponse.add_member(:created_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdTime"))
    UpdateWorkloadIdentityResponse.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "lastUpdatedTime"))
    UpdateWorkloadIdentityResponse.struct_class = Types::UpdateWorkloadIdentityResponse

    UserPreferenceConsolidationOverride.add_member(:append_to_prompt, Shapes::ShapeRef.new(shape: Prompt, required: true, location_name: "appendToPrompt"))
    UserPreferenceConsolidationOverride.add_member(:model_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "modelId"))
    UserPreferenceConsolidationOverride.struct_class = Types::UserPreferenceConsolidationOverride

    UserPreferenceExtractionOverride.add_member(:append_to_prompt, Shapes::ShapeRef.new(shape: Prompt, required: true, location_name: "appendToPrompt"))
    UserPreferenceExtractionOverride.add_member(:model_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "modelId"))
    UserPreferenceExtractionOverride.struct_class = Types::UserPreferenceExtractionOverride

    UserPreferenceMemoryStrategyInput.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    UserPreferenceMemoryStrategyInput.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    UserPreferenceMemoryStrategyInput.add_member(:namespaces, Shapes::ShapeRef.new(shape: NamespacesList, location_name: "namespaces"))
    UserPreferenceMemoryStrategyInput.struct_class = Types::UserPreferenceMemoryStrategyInput

    UserPreferenceOverrideConfigurationInput.add_member(:extraction, Shapes::ShapeRef.new(shape: UserPreferenceOverrideExtractionConfigurationInput, location_name: "extraction"))
    UserPreferenceOverrideConfigurationInput.add_member(:consolidation, Shapes::ShapeRef.new(shape: UserPreferenceOverrideConsolidationConfigurationInput, location_name: "consolidation"))
    UserPreferenceOverrideConfigurationInput.struct_class = Types::UserPreferenceOverrideConfigurationInput

    UserPreferenceOverrideConsolidationConfigurationInput.add_member(:append_to_prompt, Shapes::ShapeRef.new(shape: Prompt, required: true, location_name: "appendToPrompt"))
    UserPreferenceOverrideConsolidationConfigurationInput.add_member(:model_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "modelId"))
    UserPreferenceOverrideConsolidationConfigurationInput.struct_class = Types::UserPreferenceOverrideConsolidationConfigurationInput

    UserPreferenceOverrideExtractionConfigurationInput.add_member(:append_to_prompt, Shapes::ShapeRef.new(shape: Prompt, required: true, location_name: "appendToPrompt"))
    UserPreferenceOverrideExtractionConfigurationInput.add_member(:model_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "modelId"))
    UserPreferenceOverrideExtractionConfigurationInput.struct_class = Types::UserPreferenceOverrideExtractionConfigurationInput

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationException.add_member(:reason, Shapes::ShapeRef.new(shape: ValidationExceptionReason, required: true, location_name: "reason"))
    ValidationException.add_member(:field_list, Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: "fieldList"))
    ValidationException.struct_class = Types::ValidationException

    ValidationExceptionField.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    ValidationExceptionField.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationExceptionField.struct_class = Types::ValidationExceptionField

    ValidationExceptionFieldList.member = Shapes::ShapeRef.new(shape: ValidationExceptionField)

    VpcConfig.add_member(:security_groups, Shapes::ShapeRef.new(shape: SecurityGroups, required: true, location_name: "securityGroups"))
    VpcConfig.add_member(:subnets, Shapes::ShapeRef.new(shape: Subnets, required: true, location_name: "subnets"))
    VpcConfig.struct_class = Types::VpcConfig

    WorkloadIdentityDetails.add_member(:workload_identity_arn, Shapes::ShapeRef.new(shape: WorkloadIdentityArn, required: true, location_name: "workloadIdentityArn"))
    WorkloadIdentityDetails.struct_class = Types::WorkloadIdentityDetails

    WorkloadIdentityList.member = Shapes::ShapeRef.new(shape: WorkloadIdentityType)

    WorkloadIdentityType.add_member(:name, Shapes::ShapeRef.new(shape: WorkloadIdentityNameType, required: true, location_name: "name"))
    WorkloadIdentityType.add_member(:workload_identity_arn, Shapes::ShapeRef.new(shape: WorkloadIdentityArnType, required: true, location_name: "workloadIdentityArn"))
    WorkloadIdentityType.struct_class = Types::WorkloadIdentityType


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2023-06-05"

      api.metadata = {
        "apiVersion" => "2023-06-05",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "bedrock-agentcore-control",
        "protocol" => "rest-json",
        "protocols" => ["rest-json"],
        "serviceFullName" => "Amazon Bedrock AgentCore Control",
        "serviceId" => "Bedrock AgentCore Control",
        "signatureVersion" => "v4",
        "signingName" => "bedrock-agentcore",
        "uid" => "bedrock-agentcore-control-2023-06-05",
      }

      api.add_operation(:create_agent_runtime, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAgentRuntime"
        o.http_method = "PUT"
        o.http_request_uri = "/runtimes/"
        o.input = Shapes::ShapeRef.new(shape: CreateAgentRuntimeRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateAgentRuntimeResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_agent_runtime_endpoint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAgentRuntimeEndpoint"
        o.http_method = "PUT"
        o.http_request_uri = "/runtimes/{agentRuntimeId}/runtime-endpoints/"
        o.input = Shapes::ShapeRef.new(shape: CreateAgentRuntimeEndpointRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateAgentRuntimeEndpointResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_api_key_credential_provider, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateApiKeyCredentialProvider"
        o.http_method = "POST"
        o.http_request_uri = "/identities/CreateApiKeyCredentialProvider"
        o.input = Shapes::ShapeRef.new(shape: CreateApiKeyCredentialProviderRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateApiKeyCredentialProviderResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: DecryptionFailure)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionFailure)
      end)

      api.add_operation(:create_browser, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateBrowser"
        o.http_method = "PUT"
        o.http_request_uri = "/browsers"
        o.input = Shapes::ShapeRef.new(shape: CreateBrowserRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateBrowserResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_code_interpreter, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateCodeInterpreter"
        o.http_method = "PUT"
        o.http_request_uri = "/code-interpreters"
        o.input = Shapes::ShapeRef.new(shape: CreateCodeInterpreterRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateCodeInterpreterResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_gateway, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateGateway"
        o.http_method = "POST"
        o.http_request_uri = "/gateways/"
        o.input = Shapes::ShapeRef.new(shape: CreateGatewayRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateGatewayResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_gateway_target, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateGatewayTarget"
        o.http_method = "POST"
        o.http_request_uri = "/gateways/{gatewayIdentifier}/targets/"
        o.input = Shapes::ShapeRef.new(shape: CreateGatewayTargetRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateGatewayTargetResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_memory, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateMemory"
        o.http_method = "POST"
        o.http_request_uri = "/memories/create"
        o.input = Shapes::ShapeRef.new(shape: CreateMemoryInput)
        o.output = Shapes::ShapeRef.new(shape: CreateMemoryOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledException)
      end)

      api.add_operation(:create_oauth_2_credential_provider, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateOauth2CredentialProvider"
        o.http_method = "POST"
        o.http_request_uri = "/identities/CreateOauth2CredentialProvider"
        o.input = Shapes::ShapeRef.new(shape: CreateOauth2CredentialProviderRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateOauth2CredentialProviderResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: DecryptionFailure)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionFailure)
      end)

      api.add_operation(:create_workload_identity, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateWorkloadIdentity"
        o.http_method = "POST"
        o.http_request_uri = "/identities/CreateWorkloadIdentity"
        o.input = Shapes::ShapeRef.new(shape: CreateWorkloadIdentityRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateWorkloadIdentityResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_agent_runtime, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAgentRuntime"
        o.http_method = "DELETE"
        o.http_request_uri = "/runtimes/{agentRuntimeId}/"
        o.input = Shapes::ShapeRef.new(shape: DeleteAgentRuntimeRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteAgentRuntimeResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_agent_runtime_endpoint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAgentRuntimeEndpoint"
        o.http_method = "DELETE"
        o.http_request_uri = "/runtimes/{agentRuntimeId}/runtime-endpoints/{endpointName}/"
        o.input = Shapes::ShapeRef.new(shape: DeleteAgentRuntimeEndpointRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteAgentRuntimeEndpointResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_api_key_credential_provider, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteApiKeyCredentialProvider"
        o.http_method = "POST"
        o.http_request_uri = "/identities/DeleteApiKeyCredentialProvider"
        o.input = Shapes::ShapeRef.new(shape: DeleteApiKeyCredentialProviderRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteApiKeyCredentialProviderResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_browser, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteBrowser"
        o.http_method = "DELETE"
        o.http_request_uri = "/browsers/{browserId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteBrowserRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteBrowserResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_code_interpreter, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteCodeInterpreter"
        o.http_method = "DELETE"
        o.http_request_uri = "/code-interpreters/{codeInterpreterId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteCodeInterpreterRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteCodeInterpreterResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_gateway, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteGateway"
        o.http_method = "DELETE"
        o.http_request_uri = "/gateways/{gatewayIdentifier}/"
        o.input = Shapes::ShapeRef.new(shape: DeleteGatewayRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteGatewayResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_gateway_target, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteGatewayTarget"
        o.http_method = "DELETE"
        o.http_request_uri = "/gateways/{gatewayIdentifier}/targets/{targetId}/"
        o.input = Shapes::ShapeRef.new(shape: DeleteGatewayTargetRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteGatewayTargetResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_memory, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteMemory"
        o.http_method = "DELETE"
        o.http_request_uri = "/memories/{memoryId}/delete"
        o.input = Shapes::ShapeRef.new(shape: DeleteMemoryInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteMemoryOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledException)
      end)

      api.add_operation(:delete_oauth_2_credential_provider, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteOauth2CredentialProvider"
        o.http_method = "POST"
        o.http_request_uri = "/identities/DeleteOauth2CredentialProvider"
        o.input = Shapes::ShapeRef.new(shape: DeleteOauth2CredentialProviderRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteOauth2CredentialProviderResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_workload_identity, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteWorkloadIdentity"
        o.http_method = "POST"
        o.http_request_uri = "/identities/DeleteWorkloadIdentity"
        o.input = Shapes::ShapeRef.new(shape: DeleteWorkloadIdentityRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteWorkloadIdentityResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_agent_runtime, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAgentRuntime"
        o.http_method = "GET"
        o.http_request_uri = "/runtimes/{agentRuntimeId}/"
        o.input = Shapes::ShapeRef.new(shape: GetAgentRuntimeRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAgentRuntimeResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_agent_runtime_endpoint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAgentRuntimeEndpoint"
        o.http_method = "GET"
        o.http_request_uri = "/runtimes/{agentRuntimeId}/runtime-endpoints/{endpointName}/"
        o.input = Shapes::ShapeRef.new(shape: GetAgentRuntimeEndpointRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAgentRuntimeEndpointResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_api_key_credential_provider, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetApiKeyCredentialProvider"
        o.http_method = "POST"
        o.http_request_uri = "/identities/GetApiKeyCredentialProvider"
        o.input = Shapes::ShapeRef.new(shape: GetApiKeyCredentialProviderRequest)
        o.output = Shapes::ShapeRef.new(shape: GetApiKeyCredentialProviderResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: DecryptionFailure)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_browser, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetBrowser"
        o.http_method = "GET"
        o.http_request_uri = "/browsers/{browserId}"
        o.input = Shapes::ShapeRef.new(shape: GetBrowserRequest)
        o.output = Shapes::ShapeRef.new(shape: GetBrowserResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_code_interpreter, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCodeInterpreter"
        o.http_method = "GET"
        o.http_request_uri = "/code-interpreters/{codeInterpreterId}"
        o.input = Shapes::ShapeRef.new(shape: GetCodeInterpreterRequest)
        o.output = Shapes::ShapeRef.new(shape: GetCodeInterpreterResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_gateway, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetGateway"
        o.http_method = "GET"
        o.http_request_uri = "/gateways/{gatewayIdentifier}/"
        o.input = Shapes::ShapeRef.new(shape: GetGatewayRequest)
        o.output = Shapes::ShapeRef.new(shape: GetGatewayResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_gateway_target, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetGatewayTarget"
        o.http_method = "GET"
        o.http_request_uri = "/gateways/{gatewayIdentifier}/targets/{targetId}/"
        o.input = Shapes::ShapeRef.new(shape: GetGatewayTargetRequest)
        o.output = Shapes::ShapeRef.new(shape: GetGatewayTargetResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_memory, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetMemory"
        o.http_method = "GET"
        o.http_request_uri = "/memories/{memoryId}/details"
        o.input = Shapes::ShapeRef.new(shape: GetMemoryInput)
        o.output = Shapes::ShapeRef.new(shape: GetMemoryOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledException)
      end)

      api.add_operation(:get_oauth_2_credential_provider, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetOauth2CredentialProvider"
        o.http_method = "POST"
        o.http_request_uri = "/identities/GetOauth2CredentialProvider"
        o.input = Shapes::ShapeRef.new(shape: GetOauth2CredentialProviderRequest)
        o.output = Shapes::ShapeRef.new(shape: GetOauth2CredentialProviderResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: DecryptionFailure)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_token_vault, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTokenVault"
        o.http_method = "POST"
        o.http_request_uri = "/identities/get-token-vault"
        o.input = Shapes::ShapeRef.new(shape: GetTokenVaultRequest)
        o.output = Shapes::ShapeRef.new(shape: GetTokenVaultResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_workload_identity, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetWorkloadIdentity"
        o.http_method = "POST"
        o.http_request_uri = "/identities/GetWorkloadIdentity"
        o.input = Shapes::ShapeRef.new(shape: GetWorkloadIdentityRequest)
        o.output = Shapes::ShapeRef.new(shape: GetWorkloadIdentityResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:list_agent_runtime_endpoints, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAgentRuntimeEndpoints"
        o.http_method = "POST"
        o.http_request_uri = "/runtimes/{agentRuntimeId}/runtime-endpoints/"
        o.input = Shapes::ShapeRef.new(shape: ListAgentRuntimeEndpointsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAgentRuntimeEndpointsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_agent_runtime_versions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAgentRuntimeVersions"
        o.http_method = "POST"
        o.http_request_uri = "/runtimes/{agentRuntimeId}/versions/"
        o.input = Shapes::ShapeRef.new(shape: ListAgentRuntimeVersionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAgentRuntimeVersionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_agent_runtimes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAgentRuntimes"
        o.http_method = "POST"
        o.http_request_uri = "/runtimes/"
        o.input = Shapes::ShapeRef.new(shape: ListAgentRuntimesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAgentRuntimesResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_api_key_credential_providers, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListApiKeyCredentialProviders"
        o.http_method = "POST"
        o.http_request_uri = "/identities/ListApiKeyCredentialProviders"
        o.input = Shapes::ShapeRef.new(shape: ListApiKeyCredentialProvidersRequest)
        o.output = Shapes::ShapeRef.new(shape: ListApiKeyCredentialProvidersResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_browsers, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListBrowsers"
        o.http_method = "POST"
        o.http_request_uri = "/browsers"
        o.input = Shapes::ShapeRef.new(shape: ListBrowsersRequest)
        o.output = Shapes::ShapeRef.new(shape: ListBrowsersResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_code_interpreters, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCodeInterpreters"
        o.http_method = "POST"
        o.http_request_uri = "/code-interpreters"
        o.input = Shapes::ShapeRef.new(shape: ListCodeInterpretersRequest)
        o.output = Shapes::ShapeRef.new(shape: ListCodeInterpretersResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_gateway_targets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListGatewayTargets"
        o.http_method = "GET"
        o.http_request_uri = "/gateways/{gatewayIdentifier}/targets/"
        o.input = Shapes::ShapeRef.new(shape: ListGatewayTargetsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListGatewayTargetsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_gateways, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListGateways"
        o.http_method = "GET"
        o.http_request_uri = "/gateways/"
        o.input = Shapes::ShapeRef.new(shape: ListGatewaysRequest)
        o.output = Shapes::ShapeRef.new(shape: ListGatewaysResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_memories, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListMemories"
        o.http_method = "POST"
        o.http_request_uri = "/memories/"
        o.input = Shapes::ShapeRef.new(shape: ListMemoriesInput)
        o.output = Shapes::ShapeRef.new(shape: ListMemoriesOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_oauth_2_credential_providers, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListOauth2CredentialProviders"
        o.http_method = "POST"
        o.http_request_uri = "/identities/ListOauth2CredentialProviders"
        o.input = Shapes::ShapeRef.new(shape: ListOauth2CredentialProvidersRequest)
        o.output = Shapes::ShapeRef.new(shape: ListOauth2CredentialProvidersResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
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
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:list_workload_identities, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListWorkloadIdentities"
        o.http_method = "POST"
        o.http_request_uri = "/identities/ListWorkloadIdentities"
        o.input = Shapes::ShapeRef.new(shape: ListWorkloadIdentitiesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListWorkloadIdentitiesResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:set_token_vault_cmk, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SetTokenVaultCMK"
        o.http_method = "POST"
        o.http_request_uri = "/identities/set-token-vault-cmk"
        o.input = Shapes::ShapeRef.new(shape: SetTokenVaultCMKRequest)
        o.output = Shapes::ShapeRef.new(shape: SetTokenVaultCMKResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:synchronize_gateway_targets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SynchronizeGatewayTargets"
        o.http_method = "PUT"
        o.http_request_uri = "/gateways/{gatewayIdentifier}/synchronizeTargets"
        o.input = Shapes::ShapeRef.new(shape: SynchronizeGatewayTargetsRequest)
        o.output = Shapes::ShapeRef.new(shape: SynchronizeGatewayTargetsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
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
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_agent_runtime, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateAgentRuntime"
        o.http_method = "PUT"
        o.http_request_uri = "/runtimes/{agentRuntimeId}/"
        o.input = Shapes::ShapeRef.new(shape: UpdateAgentRuntimeRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateAgentRuntimeResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_agent_runtime_endpoint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateAgentRuntimeEndpoint"
        o.http_method = "PUT"
        o.http_request_uri = "/runtimes/{agentRuntimeId}/runtime-endpoints/{endpointName}/"
        o.input = Shapes::ShapeRef.new(shape: UpdateAgentRuntimeEndpointRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateAgentRuntimeEndpointResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_api_key_credential_provider, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateApiKeyCredentialProvider"
        o.http_method = "POST"
        o.http_request_uri = "/identities/UpdateApiKeyCredentialProvider"
        o.input = Shapes::ShapeRef.new(shape: UpdateApiKeyCredentialProviderRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateApiKeyCredentialProviderResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: DecryptionFailure)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionFailure)
      end)

      api.add_operation(:update_gateway, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateGateway"
        o.http_method = "PUT"
        o.http_request_uri = "/gateways/{gatewayIdentifier}/"
        o.input = Shapes::ShapeRef.new(shape: UpdateGatewayRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateGatewayResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_gateway_target, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateGatewayTarget"
        o.http_method = "PUT"
        o.http_request_uri = "/gateways/{gatewayIdentifier}/targets/{targetId}/"
        o.input = Shapes::ShapeRef.new(shape: UpdateGatewayTargetRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateGatewayTargetResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_memory, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateMemory"
        o.http_method = "PUT"
        o.http_request_uri = "/memories/{memoryId}/update"
        o.input = Shapes::ShapeRef.new(shape: UpdateMemoryInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateMemoryOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledException)
      end)

      api.add_operation(:update_oauth_2_credential_provider, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateOauth2CredentialProvider"
        o.http_method = "POST"
        o.http_request_uri = "/identities/UpdateOauth2CredentialProvider"
        o.input = Shapes::ShapeRef.new(shape: UpdateOauth2CredentialProviderRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateOauth2CredentialProviderResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: DecryptionFailure)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionFailure)
      end)

      api.add_operation(:update_workload_identity, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateWorkloadIdentity"
        o.http_method = "POST"
        o.http_request_uri = "/identities/UpdateWorkloadIdentity"
        o.input = Shapes::ShapeRef.new(shape: UpdateWorkloadIdentityRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateWorkloadIdentityResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)
    end

  end
end
