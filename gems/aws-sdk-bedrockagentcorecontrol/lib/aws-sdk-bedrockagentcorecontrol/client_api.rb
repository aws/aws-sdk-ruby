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
    AdditionalModelRequestFields = Shapes::DocumentShape.new(name: 'AdditionalModelRequestFields', document: true)
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
    AllowedScopeType = Shapes::StringShape.new(name: 'AllowedScopeType')
    AllowedScopesType = Shapes::ListShape.new(name: 'AllowedScopesType')
    ApiGatewayTargetConfiguration = Shapes::StructureShape.new(name: 'ApiGatewayTargetConfiguration')
    ApiGatewayToolConfiguration = Shapes::StructureShape.new(name: 'ApiGatewayToolConfiguration')
    ApiGatewayToolFilter = Shapes::StructureShape.new(name: 'ApiGatewayToolFilter')
    ApiGatewayToolFilters = Shapes::ListShape.new(name: 'ApiGatewayToolFilters')
    ApiGatewayToolOverride = Shapes::StructureShape.new(name: 'ApiGatewayToolOverride')
    ApiGatewayToolOverrides = Shapes::ListShape.new(name: 'ApiGatewayToolOverrides')
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
    AuthorizingClaimMatchValueType = Shapes::StructureShape.new(name: 'AuthorizingClaimMatchValueType')
    AwsAccountId = Shapes::StringShape.new(name: 'AwsAccountId')
    BedrockAgentcoreResourceArn = Shapes::StringShape.new(name: 'BedrockAgentcoreResourceArn')
    BedrockEvaluatorModelConfig = Shapes::StructureShape.new(name: 'BedrockEvaluatorModelConfig')
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
    CategoricalScaleDefinition = Shapes::StructureShape.new(name: 'CategoricalScaleDefinition')
    CategoricalScaleDefinitionLabelString = Shapes::StringShape.new(name: 'CategoricalScaleDefinitionLabelString')
    CategoricalScaleDefinitions = Shapes::ListShape.new(name: 'CategoricalScaleDefinitions')
    CedarPolicy = Shapes::StructureShape.new(name: 'CedarPolicy')
    ClaimMatchOperatorType = Shapes::StringShape.new(name: 'ClaimMatchOperatorType')
    ClaimMatchValueType = Shapes::UnionShape.new(name: 'ClaimMatchValueType')
    ClientIdType = Shapes::StringShape.new(name: 'ClientIdType')
    ClientSecretType = Shapes::StringShape.new(name: 'ClientSecretType')
    ClientToken = Shapes::StringShape.new(name: 'ClientToken')
    CloudWatchLogsInputConfig = Shapes::StructureShape.new(name: 'CloudWatchLogsInputConfig')
    CloudWatchLogsInputConfigLogGroupNamesList = Shapes::ListShape.new(name: 'CloudWatchLogsInputConfigLogGroupNamesList')
    CloudWatchLogsInputConfigServiceNamesList = Shapes::ListShape.new(name: 'CloudWatchLogsInputConfigServiceNamesList')
    CloudWatchOutputConfig = Shapes::StructureShape.new(name: 'CloudWatchOutputConfig')
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
    Content = Shapes::UnionShape.new(name: 'Content')
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
    CreateEvaluatorRequest = Shapes::StructureShape.new(name: 'CreateEvaluatorRequest')
    CreateEvaluatorResponse = Shapes::StructureShape.new(name: 'CreateEvaluatorResponse')
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
    CreateOnlineEvaluationConfigRequest = Shapes::StructureShape.new(name: 'CreateOnlineEvaluationConfigRequest')
    CreateOnlineEvaluationConfigResponse = Shapes::StructureShape.new(name: 'CreateOnlineEvaluationConfigResponse')
    CreatePolicyEngineRequest = Shapes::StructureShape.new(name: 'CreatePolicyEngineRequest')
    CreatePolicyEngineResponse = Shapes::StructureShape.new(name: 'CreatePolicyEngineResponse')
    CreatePolicyRequest = Shapes::StructureShape.new(name: 'CreatePolicyRequest')
    CreatePolicyResponse = Shapes::StructureShape.new(name: 'CreatePolicyResponse')
    CreateWorkloadIdentityRequest = Shapes::StructureShape.new(name: 'CreateWorkloadIdentityRequest')
    CreateWorkloadIdentityResponse = Shapes::StructureShape.new(name: 'CreateWorkloadIdentityResponse')
    CredentialProvider = Shapes::UnionShape.new(name: 'CredentialProvider')
    CredentialProviderArnType = Shapes::StringShape.new(name: 'CredentialProviderArnType')
    CredentialProviderConfiguration = Shapes::StructureShape.new(name: 'CredentialProviderConfiguration')
    CredentialProviderConfigurations = Shapes::ListShape.new(name: 'CredentialProviderConfigurations')
    CredentialProviderName = Shapes::StringShape.new(name: 'CredentialProviderName')
    CredentialProviderType = Shapes::StringShape.new(name: 'CredentialProviderType')
    CredentialProviderVendorType = Shapes::StringShape.new(name: 'CredentialProviderVendorType')
    CustomClaimValidationType = Shapes::StructureShape.new(name: 'CustomClaimValidationType')
    CustomClaimValidationsType = Shapes::ListShape.new(name: 'CustomClaimValidationsType')
    CustomConfigurationInput = Shapes::UnionShape.new(name: 'CustomConfigurationInput')
    CustomConsolidationConfiguration = Shapes::UnionShape.new(name: 'CustomConsolidationConfiguration')
    CustomConsolidationConfigurationInput = Shapes::UnionShape.new(name: 'CustomConsolidationConfigurationInput')
    CustomEvaluatorArn = Shapes::StringShape.new(name: 'CustomEvaluatorArn')
    CustomEvaluatorName = Shapes::StringShape.new(name: 'CustomEvaluatorName')
    CustomExtractionConfiguration = Shapes::UnionShape.new(name: 'CustomExtractionConfiguration')
    CustomExtractionConfigurationInput = Shapes::UnionShape.new(name: 'CustomExtractionConfigurationInput')
    CustomJWTAuthorizerConfiguration = Shapes::StructureShape.new(name: 'CustomJWTAuthorizerConfiguration')
    CustomMemoryStrategyInput = Shapes::StructureShape.new(name: 'CustomMemoryStrategyInput')
    CustomOauth2ProviderConfigInput = Shapes::StructureShape.new(name: 'CustomOauth2ProviderConfigInput')
    CustomOauth2ProviderConfigOutput = Shapes::StructureShape.new(name: 'CustomOauth2ProviderConfigOutput')
    CustomReflectionConfiguration = Shapes::UnionShape.new(name: 'CustomReflectionConfiguration')
    CustomReflectionConfigurationInput = Shapes::UnionShape.new(name: 'CustomReflectionConfigurationInput')
    DataSourceConfig = Shapes::UnionShape.new(name: 'DataSourceConfig')
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
    DeleteEvaluatorRequest = Shapes::StructureShape.new(name: 'DeleteEvaluatorRequest')
    DeleteEvaluatorResponse = Shapes::StructureShape.new(name: 'DeleteEvaluatorResponse')
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
    DeleteOnlineEvaluationConfigRequest = Shapes::StructureShape.new(name: 'DeleteOnlineEvaluationConfigRequest')
    DeleteOnlineEvaluationConfigResponse = Shapes::StructureShape.new(name: 'DeleteOnlineEvaluationConfigResponse')
    DeletePolicyEngineRequest = Shapes::StructureShape.new(name: 'DeletePolicyEngineRequest')
    DeletePolicyEngineResponse = Shapes::StructureShape.new(name: 'DeletePolicyEngineResponse')
    DeletePolicyRequest = Shapes::StructureShape.new(name: 'DeletePolicyRequest')
    DeletePolicyResponse = Shapes::StructureShape.new(name: 'DeletePolicyResponse')
    DeleteResourcePolicyRequest = Shapes::StructureShape.new(name: 'DeleteResourcePolicyRequest')
    DeleteResourcePolicyResponse = Shapes::StructureShape.new(name: 'DeleteResourcePolicyResponse')
    DeleteWorkloadIdentityRequest = Shapes::StructureShape.new(name: 'DeleteWorkloadIdentityRequest')
    DeleteWorkloadIdentityResponse = Shapes::StructureShape.new(name: 'DeleteWorkloadIdentityResponse')
    Description = Shapes::StringShape.new(name: 'Description')
    DiscoveryUrl = Shapes::StringShape.new(name: 'DiscoveryUrl')
    DiscoveryUrlType = Shapes::StringShape.new(name: 'DiscoveryUrlType')
    Double = Shapes::FloatShape.new(name: 'Double')
    EncryptionFailure = Shapes::StructureShape.new(name: 'EncryptionFailure')
    EndpointName = Shapes::StringShape.new(name: 'EndpointName')
    EnvironmentVariableKey = Shapes::StringShape.new(name: 'EnvironmentVariableKey')
    EnvironmentVariableValue = Shapes::StringShape.new(name: 'EnvironmentVariableValue')
    EnvironmentVariablesMap = Shapes::MapShape.new(name: 'EnvironmentVariablesMap')
    EpisodicConsolidationOverride = Shapes::StructureShape.new(name: 'EpisodicConsolidationOverride')
    EpisodicExtractionOverride = Shapes::StructureShape.new(name: 'EpisodicExtractionOverride')
    EpisodicMemoryStrategyInput = Shapes::StructureShape.new(name: 'EpisodicMemoryStrategyInput')
    EpisodicOverrideConfigurationInput = Shapes::StructureShape.new(name: 'EpisodicOverrideConfigurationInput')
    EpisodicOverrideConsolidationConfigurationInput = Shapes::StructureShape.new(name: 'EpisodicOverrideConsolidationConfigurationInput')
    EpisodicOverrideExtractionConfigurationInput = Shapes::StructureShape.new(name: 'EpisodicOverrideExtractionConfigurationInput')
    EpisodicOverrideReflectionConfigurationInput = Shapes::StructureShape.new(name: 'EpisodicOverrideReflectionConfigurationInput')
    EpisodicReflectionConfiguration = Shapes::StructureShape.new(name: 'EpisodicReflectionConfiguration')
    EpisodicReflectionConfigurationInput = Shapes::StructureShape.new(name: 'EpisodicReflectionConfigurationInput')
    EpisodicReflectionOverride = Shapes::StructureShape.new(name: 'EpisodicReflectionOverride')
    EvaluationConfigDescription = Shapes::StringShape.new(name: 'EvaluationConfigDescription')
    EvaluationConfigName = Shapes::StringShape.new(name: 'EvaluationConfigName')
    EvaluatorArn = Shapes::StringShape.new(name: 'EvaluatorArn')
    EvaluatorConfig = Shapes::UnionShape.new(name: 'EvaluatorConfig')
    EvaluatorDescription = Shapes::StringShape.new(name: 'EvaluatorDescription')
    EvaluatorId = Shapes::StringShape.new(name: 'EvaluatorId')
    EvaluatorInstructions = Shapes::StringShape.new(name: 'EvaluatorInstructions')
    EvaluatorLevel = Shapes::StringShape.new(name: 'EvaluatorLevel')
    EvaluatorList = Shapes::ListShape.new(name: 'EvaluatorList')
    EvaluatorModelConfig = Shapes::UnionShape.new(name: 'EvaluatorModelConfig')
    EvaluatorName = Shapes::StringShape.new(name: 'EvaluatorName')
    EvaluatorReference = Shapes::UnionShape.new(name: 'EvaluatorReference')
    EvaluatorStatus = Shapes::StringShape.new(name: 'EvaluatorStatus')
    EvaluatorSummary = Shapes::StructureShape.new(name: 'EvaluatorSummary')
    EvaluatorSummaryList = Shapes::ListShape.new(name: 'EvaluatorSummaryList')
    EvaluatorType = Shapes::StringShape.new(name: 'EvaluatorType')
    ExceptionLevel = Shapes::StringShape.new(name: 'ExceptionLevel')
    ExtractionConfiguration = Shapes::UnionShape.new(name: 'ExtractionConfiguration')
    Filter = Shapes::StructureShape.new(name: 'Filter')
    FilterKeyString = Shapes::StringShape.new(name: 'FilterKeyString')
    FilterList = Shapes::ListShape.new(name: 'FilterList')
    FilterOperator = Shapes::StringShape.new(name: 'FilterOperator')
    FilterValue = Shapes::UnionShape.new(name: 'FilterValue')
    FilterValueStringValueString = Shapes::StringShape.new(name: 'FilterValueStringValueString')
    Finding = Shapes::StructureShape.new(name: 'Finding')
    FindingType = Shapes::StringShape.new(name: 'FindingType')
    Findings = Shapes::ListShape.new(name: 'Findings')
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
    GatewayPolicyEngineArn = Shapes::StringShape.new(name: 'GatewayPolicyEngineArn')
    GatewayPolicyEngineConfiguration = Shapes::StructureShape.new(name: 'GatewayPolicyEngineConfiguration')
    GatewayPolicyEngineMode = Shapes::StringShape.new(name: 'GatewayPolicyEngineMode')
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
    GetEvaluatorRequest = Shapes::StructureShape.new(name: 'GetEvaluatorRequest')
    GetEvaluatorResponse = Shapes::StructureShape.new(name: 'GetEvaluatorResponse')
    GetGatewayRequest = Shapes::StructureShape.new(name: 'GetGatewayRequest')
    GetGatewayResponse = Shapes::StructureShape.new(name: 'GetGatewayResponse')
    GetGatewayTargetRequest = Shapes::StructureShape.new(name: 'GetGatewayTargetRequest')
    GetGatewayTargetResponse = Shapes::StructureShape.new(name: 'GetGatewayTargetResponse')
    GetMemoryInput = Shapes::StructureShape.new(name: 'GetMemoryInput')
    GetMemoryOutput = Shapes::StructureShape.new(name: 'GetMemoryOutput')
    GetOauth2CredentialProviderRequest = Shapes::StructureShape.new(name: 'GetOauth2CredentialProviderRequest')
    GetOauth2CredentialProviderResponse = Shapes::StructureShape.new(name: 'GetOauth2CredentialProviderResponse')
    GetOnlineEvaluationConfigRequest = Shapes::StructureShape.new(name: 'GetOnlineEvaluationConfigRequest')
    GetOnlineEvaluationConfigResponse = Shapes::StructureShape.new(name: 'GetOnlineEvaluationConfigResponse')
    GetPolicyEngineRequest = Shapes::StructureShape.new(name: 'GetPolicyEngineRequest')
    GetPolicyEngineResponse = Shapes::StructureShape.new(name: 'GetPolicyEngineResponse')
    GetPolicyGenerationRequest = Shapes::StructureShape.new(name: 'GetPolicyGenerationRequest')
    GetPolicyGenerationResponse = Shapes::StructureShape.new(name: 'GetPolicyGenerationResponse')
    GetPolicyRequest = Shapes::StructureShape.new(name: 'GetPolicyRequest')
    GetPolicyResponse = Shapes::StructureShape.new(name: 'GetPolicyResponse')
    GetResourcePolicyRequest = Shapes::StructureShape.new(name: 'GetResourcePolicyRequest')
    GetResourcePolicyResponse = Shapes::StructureShape.new(name: 'GetResourcePolicyResponse')
    GetTokenVaultRequest = Shapes::StructureShape.new(name: 'GetTokenVaultRequest')
    GetTokenVaultResponse = Shapes::StructureShape.new(name: 'GetTokenVaultResponse')
    GetWorkloadIdentityRequest = Shapes::StructureShape.new(name: 'GetWorkloadIdentityRequest')
    GetWorkloadIdentityResponse = Shapes::StructureShape.new(name: 'GetWorkloadIdentityResponse')
    GithubOauth2ProviderConfigInput = Shapes::StructureShape.new(name: 'GithubOauth2ProviderConfigInput')
    GithubOauth2ProviderConfigOutput = Shapes::StructureShape.new(name: 'GithubOauth2ProviderConfigOutput')
    GoogleOauth2ProviderConfigInput = Shapes::StructureShape.new(name: 'GoogleOauth2ProviderConfigInput')
    GoogleOauth2ProviderConfigOutput = Shapes::StructureShape.new(name: 'GoogleOauth2ProviderConfigOutput')
    HeaderName = Shapes::StringShape.new(name: 'HeaderName')
    InboundTokenClaimNameType = Shapes::StringShape.new(name: 'InboundTokenClaimNameType')
    InboundTokenClaimValueType = Shapes::StringShape.new(name: 'InboundTokenClaimValueType')
    IncludedOauth2ProviderConfigInput = Shapes::StructureShape.new(name: 'IncludedOauth2ProviderConfigInput')
    IncludedOauth2ProviderConfigOutput = Shapes::StructureShape.new(name: 'IncludedOauth2ProviderConfigOutput')
    InferenceConfiguration = Shapes::StructureShape.new(name: 'InferenceConfiguration')
    InferenceConfigurationMaxTokensInteger = Shapes::IntegerShape.new(name: 'InferenceConfigurationMaxTokensInteger')
    InferenceConfigurationStopSequencesList = Shapes::ListShape.new(name: 'InferenceConfigurationStopSequencesList')
    InferenceConfigurationTemperatureFloat = Shapes::FloatShape.new(name: 'InferenceConfigurationTemperatureFloat')
    InferenceConfigurationTopPFloat = Shapes::FloatShape.new(name: 'InferenceConfigurationTopPFloat')
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
    ListEvaluatorsRequest = Shapes::StructureShape.new(name: 'ListEvaluatorsRequest')
    ListEvaluatorsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListEvaluatorsRequestMaxResultsInteger')
    ListEvaluatorsResponse = Shapes::StructureShape.new(name: 'ListEvaluatorsResponse')
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
    ListOnlineEvaluationConfigsRequest = Shapes::StructureShape.new(name: 'ListOnlineEvaluationConfigsRequest')
    ListOnlineEvaluationConfigsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListOnlineEvaluationConfigsRequestMaxResultsInteger')
    ListOnlineEvaluationConfigsResponse = Shapes::StructureShape.new(name: 'ListOnlineEvaluationConfigsResponse')
    ListPoliciesRequest = Shapes::StructureShape.new(name: 'ListPoliciesRequest')
    ListPoliciesResponse = Shapes::StructureShape.new(name: 'ListPoliciesResponse')
    ListPolicyEnginesRequest = Shapes::StructureShape.new(name: 'ListPolicyEnginesRequest')
    ListPolicyEnginesResponse = Shapes::StructureShape.new(name: 'ListPolicyEnginesResponse')
    ListPolicyGenerationAssetsRequest = Shapes::StructureShape.new(name: 'ListPolicyGenerationAssetsRequest')
    ListPolicyGenerationAssetsResponse = Shapes::StructureShape.new(name: 'ListPolicyGenerationAssetsResponse')
    ListPolicyGenerationsRequest = Shapes::StructureShape.new(name: 'ListPolicyGenerationsRequest')
    ListPolicyGenerationsResponse = Shapes::StructureShape.new(name: 'ListPolicyGenerationsResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    ListWorkloadIdentitiesRequest = Shapes::StructureShape.new(name: 'ListWorkloadIdentitiesRequest')
    ListWorkloadIdentitiesRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListWorkloadIdentitiesRequestMaxResultsInteger')
    ListWorkloadIdentitiesResponse = Shapes::StructureShape.new(name: 'ListWorkloadIdentitiesResponse')
    LlmAsAJudgeEvaluatorConfig = Shapes::StructureShape.new(name: 'LlmAsAJudgeEvaluatorConfig')
    LogGroupName = Shapes::StringShape.new(name: 'LogGroupName')
    MCPGatewayConfiguration = Shapes::StructureShape.new(name: 'MCPGatewayConfiguration')
    MatchValueString = Shapes::StringShape.new(name: 'MatchValueString')
    MatchValueStringList = Shapes::ListShape.new(name: 'MatchValueStringList')
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
    ModelId = Shapes::StringShape.new(name: 'ModelId')
    ModifyConsolidationConfiguration = Shapes::UnionShape.new(name: 'ModifyConsolidationConfiguration')
    ModifyExtractionConfiguration = Shapes::UnionShape.new(name: 'ModifyExtractionConfiguration')
    ModifyInvocationConfigurationInput = Shapes::StructureShape.new(name: 'ModifyInvocationConfigurationInput')
    ModifyInvocationConfigurationInputPayloadDeliveryBucketNameString = Shapes::StringShape.new(name: 'ModifyInvocationConfigurationInputPayloadDeliveryBucketNameString')
    ModifyMemoryStrategies = Shapes::StructureShape.new(name: 'ModifyMemoryStrategies')
    ModifyMemoryStrategiesList = Shapes::ListShape.new(name: 'ModifyMemoryStrategiesList')
    ModifyMemoryStrategyInput = Shapes::StructureShape.new(name: 'ModifyMemoryStrategyInput')
    ModifyReflectionConfiguration = Shapes::UnionShape.new(name: 'ModifyReflectionConfiguration')
    ModifySelfManagedConfiguration = Shapes::StructureShape.new(name: 'ModifySelfManagedConfiguration')
    ModifySelfManagedConfigurationHistoricalContextWindowSizeInteger = Shapes::IntegerShape.new(name: 'ModifySelfManagedConfigurationHistoricalContextWindowSizeInteger')
    ModifyStrategyConfiguration = Shapes::StructureShape.new(name: 'ModifyStrategyConfiguration')
    Name = Shapes::StringShape.new(name: 'Name')
    Namespace = Shapes::StringShape.new(name: 'Namespace')
    NamespacesList = Shapes::ListShape.new(name: 'NamespacesList')
    NaturalLanguage = Shapes::StringShape.new(name: 'NaturalLanguage')
    NetworkConfiguration = Shapes::StructureShape.new(name: 'NetworkConfiguration')
    NetworkMode = Shapes::StringShape.new(name: 'NetworkMode')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    NonBlankString = Shapes::StringShape.new(name: 'NonBlankString')
    NonEmptyString = Shapes::StringShape.new(name: 'NonEmptyString')
    NumericalScaleDefinition = Shapes::StructureShape.new(name: 'NumericalScaleDefinition')
    NumericalScaleDefinitionLabelString = Shapes::StringShape.new(name: 'NumericalScaleDefinitionLabelString')
    NumericalScaleDefinitionValueDouble = Shapes::FloatShape.new(name: 'NumericalScaleDefinitionValueDouble')
    NumericalScaleDefinitions = Shapes::ListShape.new(name: 'NumericalScaleDefinitions')
    OAuthCredentialProvider = Shapes::StructureShape.new(name: 'OAuthCredentialProvider')
    OAuthCredentialProviderArn = Shapes::StringShape.new(name: 'OAuthCredentialProviderArn')
    OAuthCustomParameters = Shapes::MapShape.new(name: 'OAuthCustomParameters')
    OAuthCustomParametersKey = Shapes::StringShape.new(name: 'OAuthCustomParametersKey')
    OAuthCustomParametersValue = Shapes::StringShape.new(name: 'OAuthCustomParametersValue')
    OAuthDefaultReturnUrl = Shapes::StringShape.new(name: 'OAuthDefaultReturnUrl')
    OAuthGrantType = Shapes::StringShape.new(name: 'OAuthGrantType')
    OAuthScope = Shapes::StringShape.new(name: 'OAuthScope')
    OAuthScopes = Shapes::ListShape.new(name: 'OAuthScopes')
    Oauth2AuthorizationServerMetadata = Shapes::StructureShape.new(name: 'Oauth2AuthorizationServerMetadata')
    Oauth2CredentialProviderItem = Shapes::StructureShape.new(name: 'Oauth2CredentialProviderItem')
    Oauth2CredentialProviders = Shapes::ListShape.new(name: 'Oauth2CredentialProviders')
    Oauth2Discovery = Shapes::UnionShape.new(name: 'Oauth2Discovery')
    Oauth2ProviderConfigInput = Shapes::UnionShape.new(name: 'Oauth2ProviderConfigInput')
    Oauth2ProviderConfigOutput = Shapes::UnionShape.new(name: 'Oauth2ProviderConfigOutput')
    OnlineEvaluationConfigArn = Shapes::StringShape.new(name: 'OnlineEvaluationConfigArn')
    OnlineEvaluationConfigId = Shapes::StringShape.new(name: 'OnlineEvaluationConfigId')
    OnlineEvaluationConfigStatus = Shapes::StringShape.new(name: 'OnlineEvaluationConfigStatus')
    OnlineEvaluationConfigSummary = Shapes::StructureShape.new(name: 'OnlineEvaluationConfigSummary')
    OnlineEvaluationConfigSummaryList = Shapes::ListShape.new(name: 'OnlineEvaluationConfigSummaryList')
    OnlineEvaluationExecutionStatus = Shapes::StringShape.new(name: 'OnlineEvaluationExecutionStatus')
    OutputConfig = Shapes::StructureShape.new(name: 'OutputConfig')
    OverrideType = Shapes::StringShape.new(name: 'OverrideType')
    Policies = Shapes::ListShape.new(name: 'Policies')
    Policy = Shapes::StructureShape.new(name: 'Policy')
    PolicyArn = Shapes::StringShape.new(name: 'PolicyArn')
    PolicyDefinition = Shapes::UnionShape.new(name: 'PolicyDefinition')
    PolicyEngine = Shapes::StructureShape.new(name: 'PolicyEngine')
    PolicyEngineArn = Shapes::StringShape.new(name: 'PolicyEngineArn')
    PolicyEngineName = Shapes::StringShape.new(name: 'PolicyEngineName')
    PolicyEngineStatus = Shapes::StringShape.new(name: 'PolicyEngineStatus')
    PolicyEngines = Shapes::ListShape.new(name: 'PolicyEngines')
    PolicyGeneration = Shapes::StructureShape.new(name: 'PolicyGeneration')
    PolicyGenerationArn = Shapes::StringShape.new(name: 'PolicyGenerationArn')
    PolicyGenerationAsset = Shapes::StructureShape.new(name: 'PolicyGenerationAsset')
    PolicyGenerationAssets = Shapes::ListShape.new(name: 'PolicyGenerationAssets')
    PolicyGenerationName = Shapes::StringShape.new(name: 'PolicyGenerationName')
    PolicyGenerationStatus = Shapes::StringShape.new(name: 'PolicyGenerationStatus')
    PolicyGenerations = Shapes::ListShape.new(name: 'PolicyGenerations')
    PolicyName = Shapes::StringShape.new(name: 'PolicyName')
    PolicyStatus = Shapes::StringShape.new(name: 'PolicyStatus')
    PolicyStatusReasons = Shapes::ListShape.new(name: 'PolicyStatusReasons')
    PolicyValidationMode = Shapes::StringShape.new(name: 'PolicyValidationMode')
    Prompt = Shapes::StringShape.new(name: 'Prompt')
    ProtocolConfiguration = Shapes::StructureShape.new(name: 'ProtocolConfiguration')
    PutResourcePolicyRequest = Shapes::StructureShape.new(name: 'PutResourcePolicyRequest')
    PutResourcePolicyResponse = Shapes::StructureShape.new(name: 'PutResourcePolicyResponse')
    RatingScale = Shapes::UnionShape.new(name: 'RatingScale')
    RecordingConfig = Shapes::StructureShape.new(name: 'RecordingConfig')
    ReflectionConfiguration = Shapes::UnionShape.new(name: 'ReflectionConfiguration')
    RequestHeaderAllowlist = Shapes::ListShape.new(name: 'RequestHeaderAllowlist')
    RequestHeaderConfiguration = Shapes::UnionShape.new(name: 'RequestHeaderConfiguration')
    RequiredProperties = Shapes::ListShape.new(name: 'RequiredProperties')
    Resource = Shapes::UnionShape.new(name: 'Resource')
    ResourceId = Shapes::StringShape.new(name: 'ResourceId')
    ResourceLimitExceededException = Shapes::StructureShape.new(name: 'ResourceLimitExceededException')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceOauth2ReturnUrlListType = Shapes::ListShape.new(name: 'ResourceOauth2ReturnUrlListType')
    ResourceOauth2ReturnUrlType = Shapes::StringShape.new(name: 'ResourceOauth2ReturnUrlType')
    ResourcePolicyBody = Shapes::StringShape.new(name: 'ResourcePolicyBody')
    ResourceType = Shapes::StringShape.new(name: 'ResourceType')
    ResponseListType = Shapes::ListShape.new(name: 'ResponseListType')
    ResponseType = Shapes::StringShape.new(name: 'ResponseType')
    RestApiMethod = Shapes::StringShape.new(name: 'RestApiMethod')
    RestApiMethods = Shapes::ListShape.new(name: 'RestApiMethods')
    RoleArn = Shapes::StringShape.new(name: 'RoleArn')
    Rule = Shapes::StructureShape.new(name: 'Rule')
    RuntimeContainerUri = Shapes::StringShape.new(name: 'RuntimeContainerUri')
    S3BucketUri = Shapes::StringShape.new(name: 'S3BucketUri')
    S3Configuration = Shapes::StructureShape.new(name: 'S3Configuration')
    S3Location = Shapes::StructureShape.new(name: 'S3Location')
    S3LocationBucketString = Shapes::StringShape.new(name: 'S3LocationBucketString')
    S3LocationPrefixString = Shapes::StringShape.new(name: 'S3LocationPrefixString')
    S3LocationVersionIdString = Shapes::StringShape.new(name: 'S3LocationVersionIdString')
    SalesforceOauth2ProviderConfigInput = Shapes::StructureShape.new(name: 'SalesforceOauth2ProviderConfigInput')
    SalesforceOauth2ProviderConfigOutput = Shapes::StructureShape.new(name: 'SalesforceOauth2ProviderConfigOutput')
    SamplingConfig = Shapes::StructureShape.new(name: 'SamplingConfig')
    SamplingConfigSamplingPercentageDouble = Shapes::FloatShape.new(name: 'SamplingConfigSamplingPercentageDouble')
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
    ServiceName = Shapes::StringShape.new(name: 'ServiceName')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    SessionConfig = Shapes::StructureShape.new(name: 'SessionConfig')
    SessionConfigSessionTimeoutMinutesInteger = Shapes::IntegerShape.new(name: 'SessionConfigSessionTimeoutMinutesInteger')
    SetTokenVaultCMKRequest = Shapes::StructureShape.new(name: 'SetTokenVaultCMKRequest')
    SetTokenVaultCMKResponse = Shapes::StructureShape.new(name: 'SetTokenVaultCMKResponse')
    SlackOauth2ProviderConfigInput = Shapes::StructureShape.new(name: 'SlackOauth2ProviderConfigInput')
    SlackOauth2ProviderConfigOutput = Shapes::StructureShape.new(name: 'SlackOauth2ProviderConfigOutput')
    StartPolicyGenerationRequest = Shapes::StructureShape.new(name: 'StartPolicyGenerationRequest')
    StartPolicyGenerationResponse = Shapes::StructureShape.new(name: 'StartPolicyGenerationResponse')
    Statement = Shapes::StringShape.new(name: 'Statement')
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
    UpdateEvaluatorRequest = Shapes::StructureShape.new(name: 'UpdateEvaluatorRequest')
    UpdateEvaluatorResponse = Shapes::StructureShape.new(name: 'UpdateEvaluatorResponse')
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
    UpdateOnlineEvaluationConfigRequest = Shapes::StructureShape.new(name: 'UpdateOnlineEvaluationConfigRequest')
    UpdateOnlineEvaluationConfigResponse = Shapes::StructureShape.new(name: 'UpdateOnlineEvaluationConfigResponse')
    UpdatePolicyEngineRequest = Shapes::StructureShape.new(name: 'UpdatePolicyEngineRequest')
    UpdatePolicyEngineResponse = Shapes::StructureShape.new(name: 'UpdatePolicyEngineResponse')
    UpdatePolicyRequest = Shapes::StructureShape.new(name: 'UpdatePolicyRequest')
    UpdatePolicyResponse = Shapes::StructureShape.new(name: 'UpdatePolicyResponse')
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

    AllowedScopesType.member = Shapes::ShapeRef.new(shape: AllowedScopeType)

    ApiGatewayTargetConfiguration.add_member(:rest_api_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "restApiId"))
    ApiGatewayTargetConfiguration.add_member(:stage, Shapes::ShapeRef.new(shape: String, required: true, location_name: "stage"))
    ApiGatewayTargetConfiguration.add_member(:api_gateway_tool_configuration, Shapes::ShapeRef.new(shape: ApiGatewayToolConfiguration, required: true, location_name: "apiGatewayToolConfiguration"))
    ApiGatewayTargetConfiguration.struct_class = Types::ApiGatewayTargetConfiguration

    ApiGatewayToolConfiguration.add_member(:tool_overrides, Shapes::ShapeRef.new(shape: ApiGatewayToolOverrides, location_name: "toolOverrides"))
    ApiGatewayToolConfiguration.add_member(:tool_filters, Shapes::ShapeRef.new(shape: ApiGatewayToolFilters, required: true, location_name: "toolFilters"))
    ApiGatewayToolConfiguration.struct_class = Types::ApiGatewayToolConfiguration

    ApiGatewayToolFilter.add_member(:filter_path, Shapes::ShapeRef.new(shape: String, required: true, location_name: "filterPath"))
    ApiGatewayToolFilter.add_member(:methods, Shapes::ShapeRef.new(shape: RestApiMethods, required: true, location_name: "methods"))
    ApiGatewayToolFilter.struct_class = Types::ApiGatewayToolFilter

    ApiGatewayToolFilters.member = Shapes::ShapeRef.new(shape: ApiGatewayToolFilter)

    ApiGatewayToolOverride.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    ApiGatewayToolOverride.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    ApiGatewayToolOverride.add_member(:path, Shapes::ShapeRef.new(shape: String, required: true, location_name: "path"))
    ApiGatewayToolOverride.add_member(:method, Shapes::ShapeRef.new(shape: RestApiMethod, required: true, location_name: "method"))
    ApiGatewayToolOverride.struct_class = Types::ApiGatewayToolOverride

    ApiGatewayToolOverrides.member = Shapes::ShapeRef.new(shape: ApiGatewayToolOverride)

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

    AuthorizingClaimMatchValueType.add_member(:claim_match_value, Shapes::ShapeRef.new(shape: ClaimMatchValueType, required: true, location_name: "claimMatchValue"))
    AuthorizingClaimMatchValueType.add_member(:claim_match_operator, Shapes::ShapeRef.new(shape: ClaimMatchOperatorType, required: true, location_name: "claimMatchOperator"))
    AuthorizingClaimMatchValueType.struct_class = Types::AuthorizingClaimMatchValueType

    BedrockEvaluatorModelConfig.add_member(:model_id, Shapes::ShapeRef.new(shape: ModelId, required: true, location_name: "modelId"))
    BedrockEvaluatorModelConfig.add_member(:inference_config, Shapes::ShapeRef.new(shape: InferenceConfiguration, location_name: "inferenceConfig"))
    BedrockEvaluatorModelConfig.add_member(:additional_model_request_fields, Shapes::ShapeRef.new(shape: AdditionalModelRequestFields, location_name: "additionalModelRequestFields"))
    BedrockEvaluatorModelConfig.struct_class = Types::BedrockEvaluatorModelConfig

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

    CategoricalScaleDefinition.add_member(:definition, Shapes::ShapeRef.new(shape: String, required: true, location_name: "definition"))
    CategoricalScaleDefinition.add_member(:label, Shapes::ShapeRef.new(shape: CategoricalScaleDefinitionLabelString, required: true, location_name: "label"))
    CategoricalScaleDefinition.struct_class = Types::CategoricalScaleDefinition

    CategoricalScaleDefinitions.member = Shapes::ShapeRef.new(shape: CategoricalScaleDefinition)

    CedarPolicy.add_member(:statement, Shapes::ShapeRef.new(shape: Statement, required: true, location_name: "statement"))
    CedarPolicy.struct_class = Types::CedarPolicy

    ClaimMatchValueType.add_member(:match_value_string, Shapes::ShapeRef.new(shape: MatchValueString, location_name: "matchValueString"))
    ClaimMatchValueType.add_member(:match_value_string_list, Shapes::ShapeRef.new(shape: MatchValueStringList, location_name: "matchValueStringList"))
    ClaimMatchValueType.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ClaimMatchValueType.add_member_subclass(:match_value_string, Types::ClaimMatchValueType::MatchValueString)
    ClaimMatchValueType.add_member_subclass(:match_value_string_list, Types::ClaimMatchValueType::MatchValueStringList)
    ClaimMatchValueType.add_member_subclass(:unknown, Types::ClaimMatchValueType::Unknown)
    ClaimMatchValueType.struct_class = Types::ClaimMatchValueType

    CloudWatchLogsInputConfig.add_member(:log_group_names, Shapes::ShapeRef.new(shape: CloudWatchLogsInputConfigLogGroupNamesList, required: true, location_name: "logGroupNames"))
    CloudWatchLogsInputConfig.add_member(:service_names, Shapes::ShapeRef.new(shape: CloudWatchLogsInputConfigServiceNamesList, required: true, location_name: "serviceNames"))
    CloudWatchLogsInputConfig.struct_class = Types::CloudWatchLogsInputConfig

    CloudWatchLogsInputConfigLogGroupNamesList.member = Shapes::ShapeRef.new(shape: LogGroupName)

    CloudWatchLogsInputConfigServiceNamesList.member = Shapes::ShapeRef.new(shape: ServiceName)

    CloudWatchOutputConfig.add_member(:log_group_name, Shapes::ShapeRef.new(shape: LogGroupName, required: true, location_name: "logGroupName"))
    CloudWatchOutputConfig.struct_class = Types::CloudWatchOutputConfig

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

    Content.add_member(:raw_text, Shapes::ShapeRef.new(shape: NaturalLanguage, location_name: "rawText"))
    Content.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    Content.add_member_subclass(:raw_text, Types::Content::RawText)
    Content.add_member_subclass(:unknown, Types::Content::Unknown)
    Content.struct_class = Types::Content

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

    CreateEvaluatorRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateEvaluatorRequest.add_member(:evaluator_name, Shapes::ShapeRef.new(shape: CustomEvaluatorName, required: true, location_name: "evaluatorName"))
    CreateEvaluatorRequest.add_member(:description, Shapes::ShapeRef.new(shape: EvaluatorDescription, location_name: "description"))
    CreateEvaluatorRequest.add_member(:evaluator_config, Shapes::ShapeRef.new(shape: EvaluatorConfig, required: true, location_name: "evaluatorConfig"))
    CreateEvaluatorRequest.add_member(:level, Shapes::ShapeRef.new(shape: EvaluatorLevel, required: true, location_name: "level"))
    CreateEvaluatorRequest.struct_class = Types::CreateEvaluatorRequest

    CreateEvaluatorResponse.add_member(:evaluator_arn, Shapes::ShapeRef.new(shape: CustomEvaluatorArn, required: true, location_name: "evaluatorArn"))
    CreateEvaluatorResponse.add_member(:evaluator_id, Shapes::ShapeRef.new(shape: EvaluatorId, required: true, location_name: "evaluatorId"))
    CreateEvaluatorResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    CreateEvaluatorResponse.add_member(:status, Shapes::ShapeRef.new(shape: EvaluatorStatus, required: true, location_name: "status"))
    CreateEvaluatorResponse.struct_class = Types::CreateEvaluatorResponse

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
    CreateGatewayRequest.add_member(:policy_engine_configuration, Shapes::ShapeRef.new(shape: GatewayPolicyEngineConfiguration, location_name: "policyEngineConfiguration"))
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
    CreateGatewayResponse.add_member(:policy_engine_configuration, Shapes::ShapeRef.new(shape: GatewayPolicyEngineConfiguration, location_name: "policyEngineConfiguration"))
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

    CreateOnlineEvaluationConfigRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateOnlineEvaluationConfigRequest.add_member(:online_evaluation_config_name, Shapes::ShapeRef.new(shape: EvaluationConfigName, required: true, location_name: "onlineEvaluationConfigName"))
    CreateOnlineEvaluationConfigRequest.add_member(:description, Shapes::ShapeRef.new(shape: EvaluationConfigDescription, location_name: "description"))
    CreateOnlineEvaluationConfigRequest.add_member(:rule, Shapes::ShapeRef.new(shape: Rule, required: true, location_name: "rule"))
    CreateOnlineEvaluationConfigRequest.add_member(:data_source_config, Shapes::ShapeRef.new(shape: DataSourceConfig, required: true, location_name: "dataSourceConfig"))
    CreateOnlineEvaluationConfigRequest.add_member(:evaluators, Shapes::ShapeRef.new(shape: EvaluatorList, required: true, location_name: "evaluators"))
    CreateOnlineEvaluationConfigRequest.add_member(:evaluation_execution_role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "evaluationExecutionRoleArn"))
    CreateOnlineEvaluationConfigRequest.add_member(:enable_on_create, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "enableOnCreate"))
    CreateOnlineEvaluationConfigRequest.struct_class = Types::CreateOnlineEvaluationConfigRequest

    CreateOnlineEvaluationConfigResponse.add_member(:online_evaluation_config_arn, Shapes::ShapeRef.new(shape: OnlineEvaluationConfigArn, required: true, location_name: "onlineEvaluationConfigArn"))
    CreateOnlineEvaluationConfigResponse.add_member(:online_evaluation_config_id, Shapes::ShapeRef.new(shape: OnlineEvaluationConfigId, required: true, location_name: "onlineEvaluationConfigId"))
    CreateOnlineEvaluationConfigResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    CreateOnlineEvaluationConfigResponse.add_member(:output_config, Shapes::ShapeRef.new(shape: OutputConfig, location_name: "outputConfig"))
    CreateOnlineEvaluationConfigResponse.add_member(:status, Shapes::ShapeRef.new(shape: OnlineEvaluationConfigStatus, required: true, location_name: "status"))
    CreateOnlineEvaluationConfigResponse.add_member(:execution_status, Shapes::ShapeRef.new(shape: OnlineEvaluationExecutionStatus, required: true, location_name: "executionStatus"))
    CreateOnlineEvaluationConfigResponse.add_member(:failure_reason, Shapes::ShapeRef.new(shape: String, location_name: "failureReason"))
    CreateOnlineEvaluationConfigResponse.struct_class = Types::CreateOnlineEvaluationConfigResponse

    CreatePolicyEngineRequest.add_member(:name, Shapes::ShapeRef.new(shape: PolicyEngineName, required: true, location_name: "name"))
    CreatePolicyEngineRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreatePolicyEngineRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreatePolicyEngineRequest.struct_class = Types::CreatePolicyEngineRequest

    CreatePolicyEngineResponse.add_member(:policy_engine_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "policyEngineId"))
    CreatePolicyEngineResponse.add_member(:name, Shapes::ShapeRef.new(shape: PolicyEngineName, required: true, location_name: "name"))
    CreatePolicyEngineResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreatePolicyEngineResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    CreatePolicyEngineResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "updatedAt"))
    CreatePolicyEngineResponse.add_member(:policy_engine_arn, Shapes::ShapeRef.new(shape: PolicyEngineArn, required: true, location_name: "policyEngineArn"))
    CreatePolicyEngineResponse.add_member(:status, Shapes::ShapeRef.new(shape: PolicyEngineStatus, required: true, location_name: "status"))
    CreatePolicyEngineResponse.add_member(:status_reasons, Shapes::ShapeRef.new(shape: PolicyStatusReasons, required: true, location_name: "statusReasons"))
    CreatePolicyEngineResponse.struct_class = Types::CreatePolicyEngineResponse

    CreatePolicyRequest.add_member(:name, Shapes::ShapeRef.new(shape: PolicyName, required: true, location_name: "name"))
    CreatePolicyRequest.add_member(:definition, Shapes::ShapeRef.new(shape: PolicyDefinition, required: true, location_name: "definition"))
    CreatePolicyRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreatePolicyRequest.add_member(:validation_mode, Shapes::ShapeRef.new(shape: PolicyValidationMode, location_name: "validationMode"))
    CreatePolicyRequest.add_member(:policy_engine_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "policyEngineId"))
    CreatePolicyRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreatePolicyRequest.struct_class = Types::CreatePolicyRequest

    CreatePolicyResponse.add_member(:policy_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "policyId"))
    CreatePolicyResponse.add_member(:name, Shapes::ShapeRef.new(shape: PolicyName, required: true, location_name: "name"))
    CreatePolicyResponse.add_member(:policy_engine_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "policyEngineId"))
    CreatePolicyResponse.add_member(:definition, Shapes::ShapeRef.new(shape: PolicyDefinition, required: true, location_name: "definition"))
    CreatePolicyResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreatePolicyResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    CreatePolicyResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "updatedAt"))
    CreatePolicyResponse.add_member(:policy_arn, Shapes::ShapeRef.new(shape: PolicyArn, required: true, location_name: "policyArn"))
    CreatePolicyResponse.add_member(:status, Shapes::ShapeRef.new(shape: PolicyStatus, required: true, location_name: "status"))
    CreatePolicyResponse.add_member(:status_reasons, Shapes::ShapeRef.new(shape: PolicyStatusReasons, required: true, location_name: "statusReasons"))
    CreatePolicyResponse.struct_class = Types::CreatePolicyResponse

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

    CustomClaimValidationType.add_member(:inbound_token_claim_name, Shapes::ShapeRef.new(shape: InboundTokenClaimNameType, required: true, location_name: "inboundTokenClaimName"))
    CustomClaimValidationType.add_member(:inbound_token_claim_value_type, Shapes::ShapeRef.new(shape: InboundTokenClaimValueType, required: true, location_name: "inboundTokenClaimValueType"))
    CustomClaimValidationType.add_member(:authorizing_claim_match_value, Shapes::ShapeRef.new(shape: AuthorizingClaimMatchValueType, required: true, location_name: "authorizingClaimMatchValue"))
    CustomClaimValidationType.struct_class = Types::CustomClaimValidationType

    CustomClaimValidationsType.member = Shapes::ShapeRef.new(shape: CustomClaimValidationType)

    CustomConfigurationInput.add_member(:semantic_override, Shapes::ShapeRef.new(shape: SemanticOverrideConfigurationInput, location_name: "semanticOverride"))
    CustomConfigurationInput.add_member(:summary_override, Shapes::ShapeRef.new(shape: SummaryOverrideConfigurationInput, location_name: "summaryOverride"))
    CustomConfigurationInput.add_member(:user_preference_override, Shapes::ShapeRef.new(shape: UserPreferenceOverrideConfigurationInput, location_name: "userPreferenceOverride"))
    CustomConfigurationInput.add_member(:episodic_override, Shapes::ShapeRef.new(shape: EpisodicOverrideConfigurationInput, location_name: "episodicOverride"))
    CustomConfigurationInput.add_member(:self_managed_configuration, Shapes::ShapeRef.new(shape: SelfManagedConfigurationInput, location_name: "selfManagedConfiguration"))
    CustomConfigurationInput.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    CustomConfigurationInput.add_member_subclass(:semantic_override, Types::CustomConfigurationInput::SemanticOverride)
    CustomConfigurationInput.add_member_subclass(:summary_override, Types::CustomConfigurationInput::SummaryOverride)
    CustomConfigurationInput.add_member_subclass(:user_preference_override, Types::CustomConfigurationInput::UserPreferenceOverride)
    CustomConfigurationInput.add_member_subclass(:episodic_override, Types::CustomConfigurationInput::EpisodicOverride)
    CustomConfigurationInput.add_member_subclass(:self_managed_configuration, Types::CustomConfigurationInput::SelfManagedConfiguration)
    CustomConfigurationInput.add_member_subclass(:unknown, Types::CustomConfigurationInput::Unknown)
    CustomConfigurationInput.struct_class = Types::CustomConfigurationInput

    CustomConsolidationConfiguration.add_member(:semantic_consolidation_override, Shapes::ShapeRef.new(shape: SemanticConsolidationOverride, location_name: "semanticConsolidationOverride"))
    CustomConsolidationConfiguration.add_member(:summary_consolidation_override, Shapes::ShapeRef.new(shape: SummaryConsolidationOverride, location_name: "summaryConsolidationOverride"))
    CustomConsolidationConfiguration.add_member(:user_preference_consolidation_override, Shapes::ShapeRef.new(shape: UserPreferenceConsolidationOverride, location_name: "userPreferenceConsolidationOverride"))
    CustomConsolidationConfiguration.add_member(:episodic_consolidation_override, Shapes::ShapeRef.new(shape: EpisodicConsolidationOverride, location_name: "episodicConsolidationOverride"))
    CustomConsolidationConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    CustomConsolidationConfiguration.add_member_subclass(:semantic_consolidation_override, Types::CustomConsolidationConfiguration::SemanticConsolidationOverride)
    CustomConsolidationConfiguration.add_member_subclass(:summary_consolidation_override, Types::CustomConsolidationConfiguration::SummaryConsolidationOverride)
    CustomConsolidationConfiguration.add_member_subclass(:user_preference_consolidation_override, Types::CustomConsolidationConfiguration::UserPreferenceConsolidationOverride)
    CustomConsolidationConfiguration.add_member_subclass(:episodic_consolidation_override, Types::CustomConsolidationConfiguration::EpisodicConsolidationOverride)
    CustomConsolidationConfiguration.add_member_subclass(:unknown, Types::CustomConsolidationConfiguration::Unknown)
    CustomConsolidationConfiguration.struct_class = Types::CustomConsolidationConfiguration

    CustomConsolidationConfigurationInput.add_member(:semantic_consolidation_override, Shapes::ShapeRef.new(shape: SemanticOverrideConsolidationConfigurationInput, location_name: "semanticConsolidationOverride"))
    CustomConsolidationConfigurationInput.add_member(:summary_consolidation_override, Shapes::ShapeRef.new(shape: SummaryOverrideConsolidationConfigurationInput, location_name: "summaryConsolidationOverride"))
    CustomConsolidationConfigurationInput.add_member(:user_preference_consolidation_override, Shapes::ShapeRef.new(shape: UserPreferenceOverrideConsolidationConfigurationInput, location_name: "userPreferenceConsolidationOverride"))
    CustomConsolidationConfigurationInput.add_member(:episodic_consolidation_override, Shapes::ShapeRef.new(shape: EpisodicOverrideConsolidationConfigurationInput, location_name: "episodicConsolidationOverride"))
    CustomConsolidationConfigurationInput.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    CustomConsolidationConfigurationInput.add_member_subclass(:semantic_consolidation_override, Types::CustomConsolidationConfigurationInput::SemanticConsolidationOverride)
    CustomConsolidationConfigurationInput.add_member_subclass(:summary_consolidation_override, Types::CustomConsolidationConfigurationInput::SummaryConsolidationOverride)
    CustomConsolidationConfigurationInput.add_member_subclass(:user_preference_consolidation_override, Types::CustomConsolidationConfigurationInput::UserPreferenceConsolidationOverride)
    CustomConsolidationConfigurationInput.add_member_subclass(:episodic_consolidation_override, Types::CustomConsolidationConfigurationInput::EpisodicConsolidationOverride)
    CustomConsolidationConfigurationInput.add_member_subclass(:unknown, Types::CustomConsolidationConfigurationInput::Unknown)
    CustomConsolidationConfigurationInput.struct_class = Types::CustomConsolidationConfigurationInput

    CustomExtractionConfiguration.add_member(:semantic_extraction_override, Shapes::ShapeRef.new(shape: SemanticExtractionOverride, location_name: "semanticExtractionOverride"))
    CustomExtractionConfiguration.add_member(:user_preference_extraction_override, Shapes::ShapeRef.new(shape: UserPreferenceExtractionOverride, location_name: "userPreferenceExtractionOverride"))
    CustomExtractionConfiguration.add_member(:episodic_extraction_override, Shapes::ShapeRef.new(shape: EpisodicExtractionOverride, location_name: "episodicExtractionOverride"))
    CustomExtractionConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    CustomExtractionConfiguration.add_member_subclass(:semantic_extraction_override, Types::CustomExtractionConfiguration::SemanticExtractionOverride)
    CustomExtractionConfiguration.add_member_subclass(:user_preference_extraction_override, Types::CustomExtractionConfiguration::UserPreferenceExtractionOverride)
    CustomExtractionConfiguration.add_member_subclass(:episodic_extraction_override, Types::CustomExtractionConfiguration::EpisodicExtractionOverride)
    CustomExtractionConfiguration.add_member_subclass(:unknown, Types::CustomExtractionConfiguration::Unknown)
    CustomExtractionConfiguration.struct_class = Types::CustomExtractionConfiguration

    CustomExtractionConfigurationInput.add_member(:semantic_extraction_override, Shapes::ShapeRef.new(shape: SemanticOverrideExtractionConfigurationInput, location_name: "semanticExtractionOverride"))
    CustomExtractionConfigurationInput.add_member(:user_preference_extraction_override, Shapes::ShapeRef.new(shape: UserPreferenceOverrideExtractionConfigurationInput, location_name: "userPreferenceExtractionOverride"))
    CustomExtractionConfigurationInput.add_member(:episodic_extraction_override, Shapes::ShapeRef.new(shape: EpisodicOverrideExtractionConfigurationInput, location_name: "episodicExtractionOverride"))
    CustomExtractionConfigurationInput.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    CustomExtractionConfigurationInput.add_member_subclass(:semantic_extraction_override, Types::CustomExtractionConfigurationInput::SemanticExtractionOverride)
    CustomExtractionConfigurationInput.add_member_subclass(:user_preference_extraction_override, Types::CustomExtractionConfigurationInput::UserPreferenceExtractionOverride)
    CustomExtractionConfigurationInput.add_member_subclass(:episodic_extraction_override, Types::CustomExtractionConfigurationInput::EpisodicExtractionOverride)
    CustomExtractionConfigurationInput.add_member_subclass(:unknown, Types::CustomExtractionConfigurationInput::Unknown)
    CustomExtractionConfigurationInput.struct_class = Types::CustomExtractionConfigurationInput

    CustomJWTAuthorizerConfiguration.add_member(:discovery_url, Shapes::ShapeRef.new(shape: DiscoveryUrl, required: true, location_name: "discoveryUrl"))
    CustomJWTAuthorizerConfiguration.add_member(:allowed_audience, Shapes::ShapeRef.new(shape: AllowedAudienceList, location_name: "allowedAudience"))
    CustomJWTAuthorizerConfiguration.add_member(:allowed_clients, Shapes::ShapeRef.new(shape: AllowedClientsList, location_name: "allowedClients"))
    CustomJWTAuthorizerConfiguration.add_member(:allowed_scopes, Shapes::ShapeRef.new(shape: AllowedScopesType, location_name: "allowedScopes"))
    CustomJWTAuthorizerConfiguration.add_member(:custom_claims, Shapes::ShapeRef.new(shape: CustomClaimValidationsType, location_name: "customClaims"))
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

    CustomReflectionConfiguration.add_member(:episodic_reflection_override, Shapes::ShapeRef.new(shape: EpisodicReflectionOverride, location_name: "episodicReflectionOverride"))
    CustomReflectionConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    CustomReflectionConfiguration.add_member_subclass(:episodic_reflection_override, Types::CustomReflectionConfiguration::EpisodicReflectionOverride)
    CustomReflectionConfiguration.add_member_subclass(:unknown, Types::CustomReflectionConfiguration::Unknown)
    CustomReflectionConfiguration.struct_class = Types::CustomReflectionConfiguration

    CustomReflectionConfigurationInput.add_member(:episodic_reflection_override, Shapes::ShapeRef.new(shape: EpisodicOverrideReflectionConfigurationInput, location_name: "episodicReflectionOverride"))
    CustomReflectionConfigurationInput.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    CustomReflectionConfigurationInput.add_member_subclass(:episodic_reflection_override, Types::CustomReflectionConfigurationInput::EpisodicReflectionOverride)
    CustomReflectionConfigurationInput.add_member_subclass(:unknown, Types::CustomReflectionConfigurationInput::Unknown)
    CustomReflectionConfigurationInput.struct_class = Types::CustomReflectionConfigurationInput

    DataSourceConfig.add_member(:cloud_watch_logs, Shapes::ShapeRef.new(shape: CloudWatchLogsInputConfig, location_name: "cloudWatchLogs"))
    DataSourceConfig.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    DataSourceConfig.add_member_subclass(:cloud_watch_logs, Types::DataSourceConfig::CloudWatchLogs)
    DataSourceConfig.add_member_subclass(:unknown, Types::DataSourceConfig::Unknown)
    DataSourceConfig.struct_class = Types::DataSourceConfig

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

    DeleteEvaluatorRequest.add_member(:evaluator_id, Shapes::ShapeRef.new(shape: EvaluatorId, required: true, location: "uri", location_name: "evaluatorId"))
    DeleteEvaluatorRequest.struct_class = Types::DeleteEvaluatorRequest

    DeleteEvaluatorResponse.add_member(:evaluator_arn, Shapes::ShapeRef.new(shape: EvaluatorArn, required: true, location_name: "evaluatorArn"))
    DeleteEvaluatorResponse.add_member(:evaluator_id, Shapes::ShapeRef.new(shape: EvaluatorId, required: true, location_name: "evaluatorId"))
    DeleteEvaluatorResponse.add_member(:status, Shapes::ShapeRef.new(shape: EvaluatorStatus, required: true, location_name: "status"))
    DeleteEvaluatorResponse.struct_class = Types::DeleteEvaluatorResponse

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

    DeleteOnlineEvaluationConfigRequest.add_member(:online_evaluation_config_id, Shapes::ShapeRef.new(shape: OnlineEvaluationConfigId, required: true, location: "uri", location_name: "onlineEvaluationConfigId"))
    DeleteOnlineEvaluationConfigRequest.struct_class = Types::DeleteOnlineEvaluationConfigRequest

    DeleteOnlineEvaluationConfigResponse.add_member(:online_evaluation_config_arn, Shapes::ShapeRef.new(shape: OnlineEvaluationConfigArn, required: true, location_name: "onlineEvaluationConfigArn"))
    DeleteOnlineEvaluationConfigResponse.add_member(:online_evaluation_config_id, Shapes::ShapeRef.new(shape: OnlineEvaluationConfigId, required: true, location_name: "onlineEvaluationConfigId"))
    DeleteOnlineEvaluationConfigResponse.add_member(:status, Shapes::ShapeRef.new(shape: OnlineEvaluationConfigStatus, required: true, location_name: "status"))
    DeleteOnlineEvaluationConfigResponse.struct_class = Types::DeleteOnlineEvaluationConfigResponse

    DeletePolicyEngineRequest.add_member(:policy_engine_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "policyEngineId"))
    DeletePolicyEngineRequest.struct_class = Types::DeletePolicyEngineRequest

    DeletePolicyEngineResponse.add_member(:policy_engine_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "policyEngineId"))
    DeletePolicyEngineResponse.add_member(:name, Shapes::ShapeRef.new(shape: PolicyEngineName, required: true, location_name: "name"))
    DeletePolicyEngineResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    DeletePolicyEngineResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    DeletePolicyEngineResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "updatedAt"))
    DeletePolicyEngineResponse.add_member(:policy_engine_arn, Shapes::ShapeRef.new(shape: PolicyEngineArn, required: true, location_name: "policyEngineArn"))
    DeletePolicyEngineResponse.add_member(:status, Shapes::ShapeRef.new(shape: PolicyEngineStatus, required: true, location_name: "status"))
    DeletePolicyEngineResponse.add_member(:status_reasons, Shapes::ShapeRef.new(shape: PolicyStatusReasons, required: true, location_name: "statusReasons"))
    DeletePolicyEngineResponse.struct_class = Types::DeletePolicyEngineResponse

    DeletePolicyRequest.add_member(:policy_engine_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "policyEngineId"))
    DeletePolicyRequest.add_member(:policy_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "policyId"))
    DeletePolicyRequest.struct_class = Types::DeletePolicyRequest

    DeletePolicyResponse.add_member(:policy_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "policyId"))
    DeletePolicyResponse.add_member(:name, Shapes::ShapeRef.new(shape: PolicyName, required: true, location_name: "name"))
    DeletePolicyResponse.add_member(:policy_engine_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "policyEngineId"))
    DeletePolicyResponse.add_member(:definition, Shapes::ShapeRef.new(shape: PolicyDefinition, required: true, location_name: "definition"))
    DeletePolicyResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    DeletePolicyResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    DeletePolicyResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "updatedAt"))
    DeletePolicyResponse.add_member(:policy_arn, Shapes::ShapeRef.new(shape: PolicyArn, required: true, location_name: "policyArn"))
    DeletePolicyResponse.add_member(:status, Shapes::ShapeRef.new(shape: PolicyStatus, required: true, location_name: "status"))
    DeletePolicyResponse.add_member(:status_reasons, Shapes::ShapeRef.new(shape: PolicyStatusReasons, required: true, location_name: "statusReasons"))
    DeletePolicyResponse.struct_class = Types::DeletePolicyResponse

    DeleteResourcePolicyRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: BedrockAgentcoreResourceArn, required: true, location: "uri", location_name: "resourceArn"))
    DeleteResourcePolicyRequest.struct_class = Types::DeleteResourcePolicyRequest

    DeleteResourcePolicyResponse.struct_class = Types::DeleteResourcePolicyResponse

    DeleteWorkloadIdentityRequest.add_member(:name, Shapes::ShapeRef.new(shape: WorkloadIdentityNameType, required: true, location_name: "name"))
    DeleteWorkloadIdentityRequest.struct_class = Types::DeleteWorkloadIdentityRequest

    DeleteWorkloadIdentityResponse.struct_class = Types::DeleteWorkloadIdentityResponse

    EncryptionFailure.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    EncryptionFailure.struct_class = Types::EncryptionFailure

    EnvironmentVariablesMap.key = Shapes::ShapeRef.new(shape: EnvironmentVariableKey)
    EnvironmentVariablesMap.value = Shapes::ShapeRef.new(shape: EnvironmentVariableValue)

    EpisodicConsolidationOverride.add_member(:append_to_prompt, Shapes::ShapeRef.new(shape: Prompt, required: true, location_name: "appendToPrompt"))
    EpisodicConsolidationOverride.add_member(:model_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "modelId"))
    EpisodicConsolidationOverride.struct_class = Types::EpisodicConsolidationOverride

    EpisodicExtractionOverride.add_member(:append_to_prompt, Shapes::ShapeRef.new(shape: Prompt, required: true, location_name: "appendToPrompt"))
    EpisodicExtractionOverride.add_member(:model_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "modelId"))
    EpisodicExtractionOverride.struct_class = Types::EpisodicExtractionOverride

    EpisodicMemoryStrategyInput.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    EpisodicMemoryStrategyInput.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    EpisodicMemoryStrategyInput.add_member(:namespaces, Shapes::ShapeRef.new(shape: NamespacesList, location_name: "namespaces"))
    EpisodicMemoryStrategyInput.add_member(:reflection_configuration, Shapes::ShapeRef.new(shape: EpisodicReflectionConfigurationInput, location_name: "reflectionConfiguration"))
    EpisodicMemoryStrategyInput.struct_class = Types::EpisodicMemoryStrategyInput

    EpisodicOverrideConfigurationInput.add_member(:extraction, Shapes::ShapeRef.new(shape: EpisodicOverrideExtractionConfigurationInput, location_name: "extraction"))
    EpisodicOverrideConfigurationInput.add_member(:consolidation, Shapes::ShapeRef.new(shape: EpisodicOverrideConsolidationConfigurationInput, location_name: "consolidation"))
    EpisodicOverrideConfigurationInput.add_member(:reflection, Shapes::ShapeRef.new(shape: EpisodicOverrideReflectionConfigurationInput, location_name: "reflection"))
    EpisodicOverrideConfigurationInput.struct_class = Types::EpisodicOverrideConfigurationInput

    EpisodicOverrideConsolidationConfigurationInput.add_member(:append_to_prompt, Shapes::ShapeRef.new(shape: Prompt, required: true, location_name: "appendToPrompt"))
    EpisodicOverrideConsolidationConfigurationInput.add_member(:model_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "modelId"))
    EpisodicOverrideConsolidationConfigurationInput.struct_class = Types::EpisodicOverrideConsolidationConfigurationInput

    EpisodicOverrideExtractionConfigurationInput.add_member(:append_to_prompt, Shapes::ShapeRef.new(shape: Prompt, required: true, location_name: "appendToPrompt"))
    EpisodicOverrideExtractionConfigurationInput.add_member(:model_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "modelId"))
    EpisodicOverrideExtractionConfigurationInput.struct_class = Types::EpisodicOverrideExtractionConfigurationInput

    EpisodicOverrideReflectionConfigurationInput.add_member(:append_to_prompt, Shapes::ShapeRef.new(shape: Prompt, required: true, location_name: "appendToPrompt"))
    EpisodicOverrideReflectionConfigurationInput.add_member(:model_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "modelId"))
    EpisodicOverrideReflectionConfigurationInput.add_member(:namespaces, Shapes::ShapeRef.new(shape: NamespacesList, location_name: "namespaces"))
    EpisodicOverrideReflectionConfigurationInput.struct_class = Types::EpisodicOverrideReflectionConfigurationInput

    EpisodicReflectionConfiguration.add_member(:namespaces, Shapes::ShapeRef.new(shape: NamespacesList, required: true, location_name: "namespaces"))
    EpisodicReflectionConfiguration.struct_class = Types::EpisodicReflectionConfiguration

    EpisodicReflectionConfigurationInput.add_member(:namespaces, Shapes::ShapeRef.new(shape: NamespacesList, required: true, location_name: "namespaces"))
    EpisodicReflectionConfigurationInput.struct_class = Types::EpisodicReflectionConfigurationInput

    EpisodicReflectionOverride.add_member(:append_to_prompt, Shapes::ShapeRef.new(shape: Prompt, required: true, location_name: "appendToPrompt"))
    EpisodicReflectionOverride.add_member(:model_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "modelId"))
    EpisodicReflectionOverride.add_member(:namespaces, Shapes::ShapeRef.new(shape: NamespacesList, location_name: "namespaces"))
    EpisodicReflectionOverride.struct_class = Types::EpisodicReflectionOverride

    EvaluatorConfig.add_member(:llm_as_a_judge, Shapes::ShapeRef.new(shape: LlmAsAJudgeEvaluatorConfig, location_name: "llmAsAJudge"))
    EvaluatorConfig.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    EvaluatorConfig.add_member_subclass(:llm_as_a_judge, Types::EvaluatorConfig::LlmAsAJudge)
    EvaluatorConfig.add_member_subclass(:unknown, Types::EvaluatorConfig::Unknown)
    EvaluatorConfig.struct_class = Types::EvaluatorConfig

    EvaluatorList.member = Shapes::ShapeRef.new(shape: EvaluatorReference)

    EvaluatorModelConfig.add_member(:bedrock_evaluator_model_config, Shapes::ShapeRef.new(shape: BedrockEvaluatorModelConfig, location_name: "bedrockEvaluatorModelConfig"))
    EvaluatorModelConfig.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    EvaluatorModelConfig.add_member_subclass(:bedrock_evaluator_model_config, Types::EvaluatorModelConfig::BedrockEvaluatorModelConfig)
    EvaluatorModelConfig.add_member_subclass(:unknown, Types::EvaluatorModelConfig::Unknown)
    EvaluatorModelConfig.struct_class = Types::EvaluatorModelConfig

    EvaluatorReference.add_member(:evaluator_id, Shapes::ShapeRef.new(shape: EvaluatorId, location_name: "evaluatorId"))
    EvaluatorReference.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    EvaluatorReference.add_member_subclass(:evaluator_id, Types::EvaluatorReference::EvaluatorId)
    EvaluatorReference.add_member_subclass(:unknown, Types::EvaluatorReference::Unknown)
    EvaluatorReference.struct_class = Types::EvaluatorReference

    EvaluatorSummary.add_member(:evaluator_arn, Shapes::ShapeRef.new(shape: EvaluatorArn, required: true, location_name: "evaluatorArn"))
    EvaluatorSummary.add_member(:evaluator_id, Shapes::ShapeRef.new(shape: EvaluatorId, required: true, location_name: "evaluatorId"))
    EvaluatorSummary.add_member(:evaluator_name, Shapes::ShapeRef.new(shape: EvaluatorName, required: true, location_name: "evaluatorName"))
    EvaluatorSummary.add_member(:description, Shapes::ShapeRef.new(shape: EvaluatorDescription, location_name: "description"))
    EvaluatorSummary.add_member(:evaluator_type, Shapes::ShapeRef.new(shape: EvaluatorType, required: true, location_name: "evaluatorType"))
    EvaluatorSummary.add_member(:level, Shapes::ShapeRef.new(shape: EvaluatorLevel, location_name: "level"))
    EvaluatorSummary.add_member(:status, Shapes::ShapeRef.new(shape: EvaluatorStatus, required: true, location_name: "status"))
    EvaluatorSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    EvaluatorSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    EvaluatorSummary.add_member(:locked_for_modification, Shapes::ShapeRef.new(shape: Boolean, location_name: "lockedForModification"))
    EvaluatorSummary.struct_class = Types::EvaluatorSummary

    EvaluatorSummaryList.member = Shapes::ShapeRef.new(shape: EvaluatorSummary)

    ExtractionConfiguration.add_member(:custom_extraction_configuration, Shapes::ShapeRef.new(shape: CustomExtractionConfiguration, location_name: "customExtractionConfiguration"))
    ExtractionConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ExtractionConfiguration.add_member_subclass(:custom_extraction_configuration, Types::ExtractionConfiguration::CustomExtractionConfiguration)
    ExtractionConfiguration.add_member_subclass(:unknown, Types::ExtractionConfiguration::Unknown)
    ExtractionConfiguration.struct_class = Types::ExtractionConfiguration

    Filter.add_member(:key, Shapes::ShapeRef.new(shape: FilterKeyString, required: true, location_name: "key"))
    Filter.add_member(:operator, Shapes::ShapeRef.new(shape: FilterOperator, required: true, location_name: "operator"))
    Filter.add_member(:value, Shapes::ShapeRef.new(shape: FilterValue, required: true, location_name: "value"))
    Filter.struct_class = Types::Filter

    FilterList.member = Shapes::ShapeRef.new(shape: Filter)

    FilterValue.add_member(:string_value, Shapes::ShapeRef.new(shape: FilterValueStringValueString, location_name: "stringValue"))
    FilterValue.add_member(:double_value, Shapes::ShapeRef.new(shape: Double, location_name: "doubleValue"))
    FilterValue.add_member(:boolean_value, Shapes::ShapeRef.new(shape: Boolean, location_name: "booleanValue"))
    FilterValue.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    FilterValue.add_member_subclass(:string_value, Types::FilterValue::StringValue)
    FilterValue.add_member_subclass(:double_value, Types::FilterValue::DoubleValue)
    FilterValue.add_member_subclass(:boolean_value, Types::FilterValue::BooleanValue)
    FilterValue.add_member_subclass(:unknown, Types::FilterValue::Unknown)
    FilterValue.struct_class = Types::FilterValue

    Finding.add_member(:type, Shapes::ShapeRef.new(shape: FindingType, location_name: "type"))
    Finding.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    Finding.struct_class = Types::Finding

    Findings.member = Shapes::ShapeRef.new(shape: Finding)

    GatewayInterceptionPoints.member = Shapes::ShapeRef.new(shape: GatewayInterceptionPoint)

    GatewayInterceptorConfiguration.add_member(:interceptor, Shapes::ShapeRef.new(shape: InterceptorConfiguration, required: true, location_name: "interceptor"))
    GatewayInterceptorConfiguration.add_member(:interception_points, Shapes::ShapeRef.new(shape: GatewayInterceptionPoints, required: true, location_name: "interceptionPoints"))
    GatewayInterceptorConfiguration.add_member(:input_configuration, Shapes::ShapeRef.new(shape: InterceptorInputConfiguration, location_name: "inputConfiguration"))
    GatewayInterceptorConfiguration.struct_class = Types::GatewayInterceptorConfiguration

    GatewayInterceptorConfigurations.member = Shapes::ShapeRef.new(shape: GatewayInterceptorConfiguration)

    GatewayPolicyEngineConfiguration.add_member(:arn, Shapes::ShapeRef.new(shape: GatewayPolicyEngineArn, required: true, location_name: "arn"))
    GatewayPolicyEngineConfiguration.add_member(:mode, Shapes::ShapeRef.new(shape: GatewayPolicyEngineMode, required: true, location_name: "mode"))
    GatewayPolicyEngineConfiguration.struct_class = Types::GatewayPolicyEngineConfiguration

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
    GetAgentRuntimeResponse.add_member(:failure_reason, Shapes::ShapeRef.new(shape: String, location_name: "failureReason"))
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

    GetEvaluatorRequest.add_member(:evaluator_id, Shapes::ShapeRef.new(shape: EvaluatorId, required: true, location: "uri", location_name: "evaluatorId"))
    GetEvaluatorRequest.struct_class = Types::GetEvaluatorRequest

    GetEvaluatorResponse.add_member(:evaluator_arn, Shapes::ShapeRef.new(shape: EvaluatorArn, required: true, location_name: "evaluatorArn"))
    GetEvaluatorResponse.add_member(:evaluator_id, Shapes::ShapeRef.new(shape: EvaluatorId, required: true, location_name: "evaluatorId"))
    GetEvaluatorResponse.add_member(:evaluator_name, Shapes::ShapeRef.new(shape: EvaluatorName, required: true, location_name: "evaluatorName"))
    GetEvaluatorResponse.add_member(:description, Shapes::ShapeRef.new(shape: EvaluatorDescription, location_name: "description"))
    GetEvaluatorResponse.add_member(:evaluator_config, Shapes::ShapeRef.new(shape: EvaluatorConfig, required: true, location_name: "evaluatorConfig"))
    GetEvaluatorResponse.add_member(:level, Shapes::ShapeRef.new(shape: EvaluatorLevel, required: true, location_name: "level"))
    GetEvaluatorResponse.add_member(:status, Shapes::ShapeRef.new(shape: EvaluatorStatus, required: true, location_name: "status"))
    GetEvaluatorResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    GetEvaluatorResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    GetEvaluatorResponse.add_member(:locked_for_modification, Shapes::ShapeRef.new(shape: Boolean, location_name: "lockedForModification"))
    GetEvaluatorResponse.struct_class = Types::GetEvaluatorResponse

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
    GetGatewayResponse.add_member(:policy_engine_configuration, Shapes::ShapeRef.new(shape: GatewayPolicyEngineConfiguration, location_name: "policyEngineConfiguration"))
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

    GetOnlineEvaluationConfigRequest.add_member(:online_evaluation_config_id, Shapes::ShapeRef.new(shape: OnlineEvaluationConfigId, required: true, location: "uri", location_name: "onlineEvaluationConfigId"))
    GetOnlineEvaluationConfigRequest.struct_class = Types::GetOnlineEvaluationConfigRequest

    GetOnlineEvaluationConfigResponse.add_member(:online_evaluation_config_arn, Shapes::ShapeRef.new(shape: OnlineEvaluationConfigArn, required: true, location_name: "onlineEvaluationConfigArn"))
    GetOnlineEvaluationConfigResponse.add_member(:online_evaluation_config_id, Shapes::ShapeRef.new(shape: OnlineEvaluationConfigId, required: true, location_name: "onlineEvaluationConfigId"))
    GetOnlineEvaluationConfigResponse.add_member(:online_evaluation_config_name, Shapes::ShapeRef.new(shape: EvaluationConfigName, required: true, location_name: "onlineEvaluationConfigName"))
    GetOnlineEvaluationConfigResponse.add_member(:description, Shapes::ShapeRef.new(shape: EvaluationConfigDescription, location_name: "description"))
    GetOnlineEvaluationConfigResponse.add_member(:rule, Shapes::ShapeRef.new(shape: Rule, required: true, location_name: "rule"))
    GetOnlineEvaluationConfigResponse.add_member(:data_source_config, Shapes::ShapeRef.new(shape: DataSourceConfig, required: true, location_name: "dataSourceConfig"))
    GetOnlineEvaluationConfigResponse.add_member(:evaluators, Shapes::ShapeRef.new(shape: EvaluatorList, required: true, location_name: "evaluators"))
    GetOnlineEvaluationConfigResponse.add_member(:output_config, Shapes::ShapeRef.new(shape: OutputConfig, location_name: "outputConfig"))
    GetOnlineEvaluationConfigResponse.add_member(:evaluation_execution_role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "evaluationExecutionRoleArn"))
    GetOnlineEvaluationConfigResponse.add_member(:status, Shapes::ShapeRef.new(shape: OnlineEvaluationConfigStatus, required: true, location_name: "status"))
    GetOnlineEvaluationConfigResponse.add_member(:execution_status, Shapes::ShapeRef.new(shape: OnlineEvaluationExecutionStatus, required: true, location_name: "executionStatus"))
    GetOnlineEvaluationConfigResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    GetOnlineEvaluationConfigResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    GetOnlineEvaluationConfigResponse.add_member(:failure_reason, Shapes::ShapeRef.new(shape: String, location_name: "failureReason"))
    GetOnlineEvaluationConfigResponse.struct_class = Types::GetOnlineEvaluationConfigResponse

    GetPolicyEngineRequest.add_member(:policy_engine_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "policyEngineId"))
    GetPolicyEngineRequest.struct_class = Types::GetPolicyEngineRequest

    GetPolicyEngineResponse.add_member(:policy_engine_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "policyEngineId"))
    GetPolicyEngineResponse.add_member(:name, Shapes::ShapeRef.new(shape: PolicyEngineName, required: true, location_name: "name"))
    GetPolicyEngineResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    GetPolicyEngineResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    GetPolicyEngineResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "updatedAt"))
    GetPolicyEngineResponse.add_member(:policy_engine_arn, Shapes::ShapeRef.new(shape: PolicyEngineArn, required: true, location_name: "policyEngineArn"))
    GetPolicyEngineResponse.add_member(:status, Shapes::ShapeRef.new(shape: PolicyEngineStatus, required: true, location_name: "status"))
    GetPolicyEngineResponse.add_member(:status_reasons, Shapes::ShapeRef.new(shape: PolicyStatusReasons, required: true, location_name: "statusReasons"))
    GetPolicyEngineResponse.struct_class = Types::GetPolicyEngineResponse

    GetPolicyGenerationRequest.add_member(:policy_generation_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "policyGenerationId"))
    GetPolicyGenerationRequest.add_member(:policy_engine_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "policyEngineId"))
    GetPolicyGenerationRequest.struct_class = Types::GetPolicyGenerationRequest

    GetPolicyGenerationResponse.add_member(:policy_engine_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "policyEngineId"))
    GetPolicyGenerationResponse.add_member(:policy_generation_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "policyGenerationId"))
    GetPolicyGenerationResponse.add_member(:name, Shapes::ShapeRef.new(shape: PolicyGenerationName, required: true, location_name: "name"))
    GetPolicyGenerationResponse.add_member(:policy_generation_arn, Shapes::ShapeRef.new(shape: PolicyGenerationArn, required: true, location_name: "policyGenerationArn"))
    GetPolicyGenerationResponse.add_member(:resource, Shapes::ShapeRef.new(shape: Resource, required: true, location_name: "resource"))
    GetPolicyGenerationResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    GetPolicyGenerationResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "updatedAt"))
    GetPolicyGenerationResponse.add_member(:status, Shapes::ShapeRef.new(shape: PolicyGenerationStatus, required: true, location_name: "status"))
    GetPolicyGenerationResponse.add_member(:status_reasons, Shapes::ShapeRef.new(shape: PolicyStatusReasons, required: true, location_name: "statusReasons"))
    GetPolicyGenerationResponse.add_member(:findings, Shapes::ShapeRef.new(shape: String, location_name: "findings"))
    GetPolicyGenerationResponse.struct_class = Types::GetPolicyGenerationResponse

    GetPolicyRequest.add_member(:policy_engine_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "policyEngineId"))
    GetPolicyRequest.add_member(:policy_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "policyId"))
    GetPolicyRequest.struct_class = Types::GetPolicyRequest

    GetPolicyResponse.add_member(:policy_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "policyId"))
    GetPolicyResponse.add_member(:name, Shapes::ShapeRef.new(shape: PolicyName, required: true, location_name: "name"))
    GetPolicyResponse.add_member(:policy_engine_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "policyEngineId"))
    GetPolicyResponse.add_member(:definition, Shapes::ShapeRef.new(shape: PolicyDefinition, required: true, location_name: "definition"))
    GetPolicyResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    GetPolicyResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    GetPolicyResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "updatedAt"))
    GetPolicyResponse.add_member(:policy_arn, Shapes::ShapeRef.new(shape: PolicyArn, required: true, location_name: "policyArn"))
    GetPolicyResponse.add_member(:status, Shapes::ShapeRef.new(shape: PolicyStatus, required: true, location_name: "status"))
    GetPolicyResponse.add_member(:status_reasons, Shapes::ShapeRef.new(shape: PolicyStatusReasons, required: true, location_name: "statusReasons"))
    GetPolicyResponse.struct_class = Types::GetPolicyResponse

    GetResourcePolicyRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: BedrockAgentcoreResourceArn, required: true, location: "uri", location_name: "resourceArn"))
    GetResourcePolicyRequest.struct_class = Types::GetResourcePolicyRequest

    GetResourcePolicyResponse.add_member(:policy, Shapes::ShapeRef.new(shape: ResourcePolicyBody, location_name: "policy"))
    GetResourcePolicyResponse.struct_class = Types::GetResourcePolicyResponse

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

    InferenceConfiguration.add_member(:max_tokens, Shapes::ShapeRef.new(shape: InferenceConfigurationMaxTokensInteger, location_name: "maxTokens"))
    InferenceConfiguration.add_member(:temperature, Shapes::ShapeRef.new(shape: InferenceConfigurationTemperatureFloat, location_name: "temperature"))
    InferenceConfiguration.add_member(:top_p, Shapes::ShapeRef.new(shape: InferenceConfigurationTopPFloat, location_name: "topP"))
    InferenceConfiguration.add_member(:stop_sequences, Shapes::ShapeRef.new(shape: InferenceConfigurationStopSequencesList, location_name: "stopSequences"))
    InferenceConfiguration.struct_class = Types::InferenceConfiguration

    InferenceConfigurationStopSequencesList.member = Shapes::ShapeRef.new(shape: NonEmptyString)

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

    ListEvaluatorsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListEvaluatorsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListEvaluatorsRequestMaxResultsInteger, location: "querystring", location_name: "maxResults"))
    ListEvaluatorsRequest.struct_class = Types::ListEvaluatorsRequest

    ListEvaluatorsResponse.add_member(:evaluators, Shapes::ShapeRef.new(shape: EvaluatorSummaryList, required: true, location_name: "evaluators"))
    ListEvaluatorsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListEvaluatorsResponse.struct_class = Types::ListEvaluatorsResponse

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

    ListOnlineEvaluationConfigsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListOnlineEvaluationConfigsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListOnlineEvaluationConfigsRequestMaxResultsInteger, location: "querystring", location_name: "maxResults"))
    ListOnlineEvaluationConfigsRequest.struct_class = Types::ListOnlineEvaluationConfigsRequest

    ListOnlineEvaluationConfigsResponse.add_member(:online_evaluation_configs, Shapes::ShapeRef.new(shape: OnlineEvaluationConfigSummaryList, required: true, location_name: "onlineEvaluationConfigs"))
    ListOnlineEvaluationConfigsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListOnlineEvaluationConfigsResponse.struct_class = Types::ListOnlineEvaluationConfigsResponse

    ListPoliciesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListPoliciesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListPoliciesRequest.add_member(:policy_engine_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "policyEngineId"))
    ListPoliciesRequest.add_member(:target_resource_scope, Shapes::ShapeRef.new(shape: BedrockAgentcoreResourceArn, location: "querystring", location_name: "targetResourceScope"))
    ListPoliciesRequest.struct_class = Types::ListPoliciesRequest

    ListPoliciesResponse.add_member(:policies, Shapes::ShapeRef.new(shape: Policies, required: true, location_name: "policies"))
    ListPoliciesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListPoliciesResponse.struct_class = Types::ListPoliciesResponse

    ListPolicyEnginesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListPolicyEnginesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListPolicyEnginesRequest.struct_class = Types::ListPolicyEnginesRequest

    ListPolicyEnginesResponse.add_member(:policy_engines, Shapes::ShapeRef.new(shape: PolicyEngines, required: true, location_name: "policyEngines"))
    ListPolicyEnginesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListPolicyEnginesResponse.struct_class = Types::ListPolicyEnginesResponse

    ListPolicyGenerationAssetsRequest.add_member(:policy_generation_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "policyGenerationId"))
    ListPolicyGenerationAssetsRequest.add_member(:policy_engine_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "policyEngineId"))
    ListPolicyGenerationAssetsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListPolicyGenerationAssetsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListPolicyGenerationAssetsRequest.struct_class = Types::ListPolicyGenerationAssetsRequest

    ListPolicyGenerationAssetsResponse.add_member(:policy_generation_assets, Shapes::ShapeRef.new(shape: PolicyGenerationAssets, location_name: "policyGenerationAssets"))
    ListPolicyGenerationAssetsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListPolicyGenerationAssetsResponse.struct_class = Types::ListPolicyGenerationAssetsResponse

    ListPolicyGenerationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListPolicyGenerationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListPolicyGenerationsRequest.add_member(:policy_engine_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "policyEngineId"))
    ListPolicyGenerationsRequest.struct_class = Types::ListPolicyGenerationsRequest

    ListPolicyGenerationsResponse.add_member(:policy_generations, Shapes::ShapeRef.new(shape: PolicyGenerations, required: true, location_name: "policyGenerations"))
    ListPolicyGenerationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListPolicyGenerationsResponse.struct_class = Types::ListPolicyGenerationsResponse

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

    LlmAsAJudgeEvaluatorConfig.add_member(:instructions, Shapes::ShapeRef.new(shape: EvaluatorInstructions, required: true, location_name: "instructions"))
    LlmAsAJudgeEvaluatorConfig.add_member(:rating_scale, Shapes::ShapeRef.new(shape: RatingScale, required: true, location_name: "ratingScale"))
    LlmAsAJudgeEvaluatorConfig.add_member(:model_config, Shapes::ShapeRef.new(shape: EvaluatorModelConfig, required: true, location_name: "modelConfig"))
    LlmAsAJudgeEvaluatorConfig.struct_class = Types::LlmAsAJudgeEvaluatorConfig

    MCPGatewayConfiguration.add_member(:supported_versions, Shapes::ShapeRef.new(shape: McpSupportedVersions, location_name: "supportedVersions"))
    MCPGatewayConfiguration.add_member(:instructions, Shapes::ShapeRef.new(shape: McpInstructions, location_name: "instructions"))
    MCPGatewayConfiguration.add_member(:search_type, Shapes::ShapeRef.new(shape: SearchType, location_name: "searchType"))
    MCPGatewayConfiguration.struct_class = Types::MCPGatewayConfiguration

    MatchValueStringList.member = Shapes::ShapeRef.new(shape: MatchValueString)

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
    McpTargetConfiguration.add_member(:api_gateway, Shapes::ShapeRef.new(shape: ApiGatewayTargetConfiguration, location_name: "apiGateway"))
    McpTargetConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    McpTargetConfiguration.add_member_subclass(:open_api_schema, Types::McpTargetConfiguration::OpenApiSchema)
    McpTargetConfiguration.add_member_subclass(:smithy_model, Types::McpTargetConfiguration::SmithyModel)
    McpTargetConfiguration.add_member_subclass(:lambda, Types::McpTargetConfiguration::Lambda)
    McpTargetConfiguration.add_member_subclass(:mcp_server, Types::McpTargetConfiguration::McpServer)
    McpTargetConfiguration.add_member_subclass(:api_gateway, Types::McpTargetConfiguration::ApiGateway)
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
    MemoryStrategyInput.add_member(:episodic_memory_strategy, Shapes::ShapeRef.new(shape: EpisodicMemoryStrategyInput, location_name: "episodicMemoryStrategy"))
    MemoryStrategyInput.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    MemoryStrategyInput.add_member_subclass(:semantic_memory_strategy, Types::MemoryStrategyInput::SemanticMemoryStrategy)
    MemoryStrategyInput.add_member_subclass(:summary_memory_strategy, Types::MemoryStrategyInput::SummaryMemoryStrategy)
    MemoryStrategyInput.add_member_subclass(:user_preference_memory_strategy, Types::MemoryStrategyInput::UserPreferenceMemoryStrategy)
    MemoryStrategyInput.add_member_subclass(:custom_memory_strategy, Types::MemoryStrategyInput::CustomMemoryStrategy)
    MemoryStrategyInput.add_member_subclass(:episodic_memory_strategy, Types::MemoryStrategyInput::EpisodicMemoryStrategy)
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

    ModifyReflectionConfiguration.add_member(:episodic_reflection_configuration, Shapes::ShapeRef.new(shape: EpisodicReflectionConfigurationInput, location_name: "episodicReflectionConfiguration"))
    ModifyReflectionConfiguration.add_member(:custom_reflection_configuration, Shapes::ShapeRef.new(shape: CustomReflectionConfigurationInput, location_name: "customReflectionConfiguration"))
    ModifyReflectionConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ModifyReflectionConfiguration.add_member_subclass(:episodic_reflection_configuration, Types::ModifyReflectionConfiguration::EpisodicReflectionConfiguration)
    ModifyReflectionConfiguration.add_member_subclass(:custom_reflection_configuration, Types::ModifyReflectionConfiguration::CustomReflectionConfiguration)
    ModifyReflectionConfiguration.add_member_subclass(:unknown, Types::ModifyReflectionConfiguration::Unknown)
    ModifyReflectionConfiguration.struct_class = Types::ModifyReflectionConfiguration

    ModifySelfManagedConfiguration.add_member(:trigger_conditions, Shapes::ShapeRef.new(shape: TriggerConditionInputList, location_name: "triggerConditions"))
    ModifySelfManagedConfiguration.add_member(:invocation_configuration, Shapes::ShapeRef.new(shape: ModifyInvocationConfigurationInput, location_name: "invocationConfiguration"))
    ModifySelfManagedConfiguration.add_member(:historical_context_window_size, Shapes::ShapeRef.new(shape: ModifySelfManagedConfigurationHistoricalContextWindowSizeInteger, location_name: "historicalContextWindowSize"))
    ModifySelfManagedConfiguration.struct_class = Types::ModifySelfManagedConfiguration

    ModifyStrategyConfiguration.add_member(:extraction, Shapes::ShapeRef.new(shape: ModifyExtractionConfiguration, location_name: "extraction"))
    ModifyStrategyConfiguration.add_member(:consolidation, Shapes::ShapeRef.new(shape: ModifyConsolidationConfiguration, location_name: "consolidation"))
    ModifyStrategyConfiguration.add_member(:reflection, Shapes::ShapeRef.new(shape: ModifyReflectionConfiguration, location_name: "reflection"))
    ModifyStrategyConfiguration.add_member(:self_managed_configuration, Shapes::ShapeRef.new(shape: ModifySelfManagedConfiguration, location_name: "selfManagedConfiguration"))
    ModifyStrategyConfiguration.struct_class = Types::ModifyStrategyConfiguration

    NamespacesList.member = Shapes::ShapeRef.new(shape: Namespace)

    NetworkConfiguration.add_member(:network_mode, Shapes::ShapeRef.new(shape: NetworkMode, required: true, location_name: "networkMode"))
    NetworkConfiguration.add_member(:network_mode_config, Shapes::ShapeRef.new(shape: VpcConfig, location_name: "networkModeConfig"))
    NetworkConfiguration.struct_class = Types::NetworkConfiguration

    NumericalScaleDefinition.add_member(:definition, Shapes::ShapeRef.new(shape: String, required: true, location_name: "definition"))
    NumericalScaleDefinition.add_member(:value, Shapes::ShapeRef.new(shape: NumericalScaleDefinitionValueDouble, required: true, location_name: "value"))
    NumericalScaleDefinition.add_member(:label, Shapes::ShapeRef.new(shape: NumericalScaleDefinitionLabelString, required: true, location_name: "label"))
    NumericalScaleDefinition.struct_class = Types::NumericalScaleDefinition

    NumericalScaleDefinitions.member = Shapes::ShapeRef.new(shape: NumericalScaleDefinition)

    OAuthCredentialProvider.add_member(:provider_arn, Shapes::ShapeRef.new(shape: OAuthCredentialProviderArn, required: true, location_name: "providerArn"))
    OAuthCredentialProvider.add_member(:scopes, Shapes::ShapeRef.new(shape: OAuthScopes, required: true, location_name: "scopes"))
    OAuthCredentialProvider.add_member(:custom_parameters, Shapes::ShapeRef.new(shape: OAuthCustomParameters, location_name: "customParameters"))
    OAuthCredentialProvider.add_member(:grant_type, Shapes::ShapeRef.new(shape: OAuthGrantType, location_name: "grantType"))
    OAuthCredentialProvider.add_member(:default_return_url, Shapes::ShapeRef.new(shape: OAuthDefaultReturnUrl, location_name: "defaultReturnUrl"))
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

    OnlineEvaluationConfigSummary.add_member(:online_evaluation_config_arn, Shapes::ShapeRef.new(shape: OnlineEvaluationConfigArn, required: true, location_name: "onlineEvaluationConfigArn"))
    OnlineEvaluationConfigSummary.add_member(:online_evaluation_config_id, Shapes::ShapeRef.new(shape: OnlineEvaluationConfigId, required: true, location_name: "onlineEvaluationConfigId"))
    OnlineEvaluationConfigSummary.add_member(:online_evaluation_config_name, Shapes::ShapeRef.new(shape: EvaluationConfigName, required: true, location_name: "onlineEvaluationConfigName"))
    OnlineEvaluationConfigSummary.add_member(:description, Shapes::ShapeRef.new(shape: EvaluationConfigDescription, location_name: "description"))
    OnlineEvaluationConfigSummary.add_member(:status, Shapes::ShapeRef.new(shape: OnlineEvaluationConfigStatus, required: true, location_name: "status"))
    OnlineEvaluationConfigSummary.add_member(:execution_status, Shapes::ShapeRef.new(shape: OnlineEvaluationExecutionStatus, required: true, location_name: "executionStatus"))
    OnlineEvaluationConfigSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    OnlineEvaluationConfigSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    OnlineEvaluationConfigSummary.add_member(:failure_reason, Shapes::ShapeRef.new(shape: String, location_name: "failureReason"))
    OnlineEvaluationConfigSummary.struct_class = Types::OnlineEvaluationConfigSummary

    OnlineEvaluationConfigSummaryList.member = Shapes::ShapeRef.new(shape: OnlineEvaluationConfigSummary)

    OutputConfig.add_member(:cloud_watch_config, Shapes::ShapeRef.new(shape: CloudWatchOutputConfig, required: true, location_name: "cloudWatchConfig"))
    OutputConfig.struct_class = Types::OutputConfig

    Policies.member = Shapes::ShapeRef.new(shape: Policy)

    Policy.add_member(:policy_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "policyId"))
    Policy.add_member(:name, Shapes::ShapeRef.new(shape: PolicyName, required: true, location_name: "name"))
    Policy.add_member(:policy_engine_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "policyEngineId"))
    Policy.add_member(:definition, Shapes::ShapeRef.new(shape: PolicyDefinition, required: true, location_name: "definition"))
    Policy.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    Policy.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    Policy.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "updatedAt"))
    Policy.add_member(:policy_arn, Shapes::ShapeRef.new(shape: PolicyArn, required: true, location_name: "policyArn"))
    Policy.add_member(:status, Shapes::ShapeRef.new(shape: PolicyStatus, required: true, location_name: "status"))
    Policy.add_member(:status_reasons, Shapes::ShapeRef.new(shape: PolicyStatusReasons, required: true, location_name: "statusReasons"))
    Policy.struct_class = Types::Policy

    PolicyDefinition.add_member(:cedar, Shapes::ShapeRef.new(shape: CedarPolicy, location_name: "cedar"))
    PolicyDefinition.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    PolicyDefinition.add_member_subclass(:cedar, Types::PolicyDefinition::Cedar)
    PolicyDefinition.add_member_subclass(:unknown, Types::PolicyDefinition::Unknown)
    PolicyDefinition.struct_class = Types::PolicyDefinition

    PolicyEngine.add_member(:policy_engine_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "policyEngineId"))
    PolicyEngine.add_member(:name, Shapes::ShapeRef.new(shape: PolicyEngineName, required: true, location_name: "name"))
    PolicyEngine.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    PolicyEngine.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    PolicyEngine.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "updatedAt"))
    PolicyEngine.add_member(:policy_engine_arn, Shapes::ShapeRef.new(shape: PolicyEngineArn, required: true, location_name: "policyEngineArn"))
    PolicyEngine.add_member(:status, Shapes::ShapeRef.new(shape: PolicyEngineStatus, required: true, location_name: "status"))
    PolicyEngine.add_member(:status_reasons, Shapes::ShapeRef.new(shape: PolicyStatusReasons, required: true, location_name: "statusReasons"))
    PolicyEngine.struct_class = Types::PolicyEngine

    PolicyEngines.member = Shapes::ShapeRef.new(shape: PolicyEngine)

    PolicyGeneration.add_member(:policy_engine_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "policyEngineId"))
    PolicyGeneration.add_member(:policy_generation_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "policyGenerationId"))
    PolicyGeneration.add_member(:name, Shapes::ShapeRef.new(shape: PolicyGenerationName, required: true, location_name: "name"))
    PolicyGeneration.add_member(:policy_generation_arn, Shapes::ShapeRef.new(shape: PolicyGenerationArn, required: true, location_name: "policyGenerationArn"))
    PolicyGeneration.add_member(:resource, Shapes::ShapeRef.new(shape: Resource, required: true, location_name: "resource"))
    PolicyGeneration.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    PolicyGeneration.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "updatedAt"))
    PolicyGeneration.add_member(:status, Shapes::ShapeRef.new(shape: PolicyGenerationStatus, required: true, location_name: "status"))
    PolicyGeneration.add_member(:status_reasons, Shapes::ShapeRef.new(shape: PolicyStatusReasons, required: true, location_name: "statusReasons"))
    PolicyGeneration.add_member(:findings, Shapes::ShapeRef.new(shape: String, location_name: "findings"))
    PolicyGeneration.struct_class = Types::PolicyGeneration

    PolicyGenerationAsset.add_member(:policy_generation_asset_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "policyGenerationAssetId"))
    PolicyGenerationAsset.add_member(:definition, Shapes::ShapeRef.new(shape: PolicyDefinition, location_name: "definition"))
    PolicyGenerationAsset.add_member(:raw_text_fragment, Shapes::ShapeRef.new(shape: NaturalLanguage, required: true, location_name: "rawTextFragment"))
    PolicyGenerationAsset.add_member(:findings, Shapes::ShapeRef.new(shape: Findings, required: true, location_name: "findings"))
    PolicyGenerationAsset.struct_class = Types::PolicyGenerationAsset

    PolicyGenerationAssets.member = Shapes::ShapeRef.new(shape: PolicyGenerationAsset)

    PolicyGenerations.member = Shapes::ShapeRef.new(shape: PolicyGeneration)

    PolicyStatusReasons.member = Shapes::ShapeRef.new(shape: String)

    ProtocolConfiguration.add_member(:server_protocol, Shapes::ShapeRef.new(shape: ServerProtocol, required: true, location_name: "serverProtocol"))
    ProtocolConfiguration.struct_class = Types::ProtocolConfiguration

    PutResourcePolicyRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: BedrockAgentcoreResourceArn, required: true, location: "uri", location_name: "resourceArn"))
    PutResourcePolicyRequest.add_member(:policy, Shapes::ShapeRef.new(shape: ResourcePolicyBody, required: true, location_name: "policy"))
    PutResourcePolicyRequest.struct_class = Types::PutResourcePolicyRequest

    PutResourcePolicyResponse.add_member(:policy, Shapes::ShapeRef.new(shape: ResourcePolicyBody, required: true, location_name: "policy"))
    PutResourcePolicyResponse.struct_class = Types::PutResourcePolicyResponse

    RatingScale.add_member(:numerical, Shapes::ShapeRef.new(shape: NumericalScaleDefinitions, location_name: "numerical"))
    RatingScale.add_member(:categorical, Shapes::ShapeRef.new(shape: CategoricalScaleDefinitions, location_name: "categorical"))
    RatingScale.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    RatingScale.add_member_subclass(:numerical, Types::RatingScale::Numerical)
    RatingScale.add_member_subclass(:categorical, Types::RatingScale::Categorical)
    RatingScale.add_member_subclass(:unknown, Types::RatingScale::Unknown)
    RatingScale.struct_class = Types::RatingScale

    RecordingConfig.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "enabled"))
    RecordingConfig.add_member(:s3_location, Shapes::ShapeRef.new(shape: S3Location, location_name: "s3Location"))
    RecordingConfig.struct_class = Types::RecordingConfig

    ReflectionConfiguration.add_member(:custom_reflection_configuration, Shapes::ShapeRef.new(shape: CustomReflectionConfiguration, location_name: "customReflectionConfiguration"))
    ReflectionConfiguration.add_member(:episodic_reflection_configuration, Shapes::ShapeRef.new(shape: EpisodicReflectionConfiguration, location_name: "episodicReflectionConfiguration"))
    ReflectionConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ReflectionConfiguration.add_member_subclass(:custom_reflection_configuration, Types::ReflectionConfiguration::CustomReflectionConfiguration)
    ReflectionConfiguration.add_member_subclass(:episodic_reflection_configuration, Types::ReflectionConfiguration::EpisodicReflectionConfiguration)
    ReflectionConfiguration.add_member_subclass(:unknown, Types::ReflectionConfiguration::Unknown)
    ReflectionConfiguration.struct_class = Types::ReflectionConfiguration

    RequestHeaderAllowlist.member = Shapes::ShapeRef.new(shape: HeaderName)

    RequestHeaderConfiguration.add_member(:request_header_allowlist, Shapes::ShapeRef.new(shape: RequestHeaderAllowlist, location_name: "requestHeaderAllowlist"))
    RequestHeaderConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    RequestHeaderConfiguration.add_member_subclass(:request_header_allowlist, Types::RequestHeaderConfiguration::RequestHeaderAllowlist)
    RequestHeaderConfiguration.add_member_subclass(:unknown, Types::RequestHeaderConfiguration::Unknown)
    RequestHeaderConfiguration.struct_class = Types::RequestHeaderConfiguration

    RequiredProperties.member = Shapes::ShapeRef.new(shape: String)

    Resource.add_member(:arn, Shapes::ShapeRef.new(shape: BedrockAgentcoreResourceArn, location_name: "arn"))
    Resource.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    Resource.add_member_subclass(:arn, Types::Resource::Arn)
    Resource.add_member_subclass(:unknown, Types::Resource::Unknown)
    Resource.struct_class = Types::Resource

    ResourceLimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ResourceLimitExceededException.struct_class = Types::ResourceLimitExceededException

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ResourceOauth2ReturnUrlListType.member = Shapes::ShapeRef.new(shape: ResourceOauth2ReturnUrlType)

    ResponseListType.member = Shapes::ShapeRef.new(shape: ResponseType)

    RestApiMethods.member = Shapes::ShapeRef.new(shape: RestApiMethod)

    Rule.add_member(:sampling_config, Shapes::ShapeRef.new(shape: SamplingConfig, required: true, location_name: "samplingConfig"))
    Rule.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "filters"))
    Rule.add_member(:session_config, Shapes::ShapeRef.new(shape: SessionConfig, location_name: "sessionConfig"))
    Rule.struct_class = Types::Rule

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

    SamplingConfig.add_member(:sampling_percentage, Shapes::ShapeRef.new(shape: SamplingConfigSamplingPercentageDouble, required: true, location_name: "samplingPercentage"))
    SamplingConfig.struct_class = Types::SamplingConfig

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

    SessionConfig.add_member(:session_timeout_minutes, Shapes::ShapeRef.new(shape: SessionConfigSessionTimeoutMinutesInteger, required: true, location_name: "sessionTimeoutMinutes"))
    SessionConfig.struct_class = Types::SessionConfig

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

    StartPolicyGenerationRequest.add_member(:policy_engine_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "policyEngineId"))
    StartPolicyGenerationRequest.add_member(:resource, Shapes::ShapeRef.new(shape: Resource, required: true, location_name: "resource"))
    StartPolicyGenerationRequest.add_member(:content, Shapes::ShapeRef.new(shape: Content, required: true, location_name: "content"))
    StartPolicyGenerationRequest.add_member(:name, Shapes::ShapeRef.new(shape: PolicyGenerationName, required: true, location_name: "name"))
    StartPolicyGenerationRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    StartPolicyGenerationRequest.struct_class = Types::StartPolicyGenerationRequest

    StartPolicyGenerationResponse.add_member(:policy_engine_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "policyEngineId"))
    StartPolicyGenerationResponse.add_member(:policy_generation_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "policyGenerationId"))
    StartPolicyGenerationResponse.add_member(:name, Shapes::ShapeRef.new(shape: PolicyGenerationName, required: true, location_name: "name"))
    StartPolicyGenerationResponse.add_member(:policy_generation_arn, Shapes::ShapeRef.new(shape: PolicyGenerationArn, required: true, location_name: "policyGenerationArn"))
    StartPolicyGenerationResponse.add_member(:resource, Shapes::ShapeRef.new(shape: Resource, required: true, location_name: "resource"))
    StartPolicyGenerationResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    StartPolicyGenerationResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "updatedAt"))
    StartPolicyGenerationResponse.add_member(:status, Shapes::ShapeRef.new(shape: PolicyGenerationStatus, required: true, location_name: "status"))
    StartPolicyGenerationResponse.add_member(:status_reasons, Shapes::ShapeRef.new(shape: PolicyStatusReasons, required: true, location_name: "statusReasons"))
    StartPolicyGenerationResponse.add_member(:findings, Shapes::ShapeRef.new(shape: String, location_name: "findings"))
    StartPolicyGenerationResponse.struct_class = Types::StartPolicyGenerationResponse

    StatusReasons.member = Shapes::ShapeRef.new(shape: StatusReason)

    StrategyConfiguration.add_member(:type, Shapes::ShapeRef.new(shape: OverrideType, location_name: "type"))
    StrategyConfiguration.add_member(:extraction, Shapes::ShapeRef.new(shape: ExtractionConfiguration, location_name: "extraction"))
    StrategyConfiguration.add_member(:consolidation, Shapes::ShapeRef.new(shape: ConsolidationConfiguration, location_name: "consolidation"))
    StrategyConfiguration.add_member(:reflection, Shapes::ShapeRef.new(shape: ReflectionConfiguration, location_name: "reflection"))
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

    UpdateEvaluatorRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    UpdateEvaluatorRequest.add_member(:evaluator_id, Shapes::ShapeRef.new(shape: EvaluatorId, required: true, location: "uri", location_name: "evaluatorId"))
    UpdateEvaluatorRequest.add_member(:description, Shapes::ShapeRef.new(shape: EvaluatorDescription, location_name: "description"))
    UpdateEvaluatorRequest.add_member(:evaluator_config, Shapes::ShapeRef.new(shape: EvaluatorConfig, location_name: "evaluatorConfig"))
    UpdateEvaluatorRequest.add_member(:level, Shapes::ShapeRef.new(shape: EvaluatorLevel, location_name: "level"))
    UpdateEvaluatorRequest.struct_class = Types::UpdateEvaluatorRequest

    UpdateEvaluatorResponse.add_member(:evaluator_arn, Shapes::ShapeRef.new(shape: EvaluatorArn, required: true, location_name: "evaluatorArn"))
    UpdateEvaluatorResponse.add_member(:evaluator_id, Shapes::ShapeRef.new(shape: EvaluatorId, required: true, location_name: "evaluatorId"))
    UpdateEvaluatorResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    UpdateEvaluatorResponse.add_member(:status, Shapes::ShapeRef.new(shape: EvaluatorStatus, required: true, location_name: "status"))
    UpdateEvaluatorResponse.struct_class = Types::UpdateEvaluatorResponse

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
    UpdateGatewayRequest.add_member(:policy_engine_configuration, Shapes::ShapeRef.new(shape: GatewayPolicyEngineConfiguration, location_name: "policyEngineConfiguration"))
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
    UpdateGatewayResponse.add_member(:policy_engine_configuration, Shapes::ShapeRef.new(shape: GatewayPolicyEngineConfiguration, location_name: "policyEngineConfiguration"))
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

    UpdateOnlineEvaluationConfigRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    UpdateOnlineEvaluationConfigRequest.add_member(:online_evaluation_config_id, Shapes::ShapeRef.new(shape: OnlineEvaluationConfigId, required: true, location: "uri", location_name: "onlineEvaluationConfigId"))
    UpdateOnlineEvaluationConfigRequest.add_member(:description, Shapes::ShapeRef.new(shape: EvaluationConfigDescription, location_name: "description"))
    UpdateOnlineEvaluationConfigRequest.add_member(:rule, Shapes::ShapeRef.new(shape: Rule, location_name: "rule"))
    UpdateOnlineEvaluationConfigRequest.add_member(:data_source_config, Shapes::ShapeRef.new(shape: DataSourceConfig, location_name: "dataSourceConfig"))
    UpdateOnlineEvaluationConfigRequest.add_member(:evaluators, Shapes::ShapeRef.new(shape: EvaluatorList, location_name: "evaluators"))
    UpdateOnlineEvaluationConfigRequest.add_member(:evaluation_execution_role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "evaluationExecutionRoleArn"))
    UpdateOnlineEvaluationConfigRequest.add_member(:execution_status, Shapes::ShapeRef.new(shape: OnlineEvaluationExecutionStatus, location_name: "executionStatus"))
    UpdateOnlineEvaluationConfigRequest.struct_class = Types::UpdateOnlineEvaluationConfigRequest

    UpdateOnlineEvaluationConfigResponse.add_member(:online_evaluation_config_arn, Shapes::ShapeRef.new(shape: OnlineEvaluationConfigArn, required: true, location_name: "onlineEvaluationConfigArn"))
    UpdateOnlineEvaluationConfigResponse.add_member(:online_evaluation_config_id, Shapes::ShapeRef.new(shape: OnlineEvaluationConfigId, required: true, location_name: "onlineEvaluationConfigId"))
    UpdateOnlineEvaluationConfigResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    UpdateOnlineEvaluationConfigResponse.add_member(:status, Shapes::ShapeRef.new(shape: OnlineEvaluationConfigStatus, required: true, location_name: "status"))
    UpdateOnlineEvaluationConfigResponse.add_member(:execution_status, Shapes::ShapeRef.new(shape: OnlineEvaluationExecutionStatus, required: true, location_name: "executionStatus"))
    UpdateOnlineEvaluationConfigResponse.add_member(:failure_reason, Shapes::ShapeRef.new(shape: String, location_name: "failureReason"))
    UpdateOnlineEvaluationConfigResponse.struct_class = Types::UpdateOnlineEvaluationConfigResponse

    UpdatePolicyEngineRequest.add_member(:policy_engine_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "policyEngineId"))
    UpdatePolicyEngineRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    UpdatePolicyEngineRequest.struct_class = Types::UpdatePolicyEngineRequest

    UpdatePolicyEngineResponse.add_member(:policy_engine_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "policyEngineId"))
    UpdatePolicyEngineResponse.add_member(:name, Shapes::ShapeRef.new(shape: PolicyEngineName, required: true, location_name: "name"))
    UpdatePolicyEngineResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    UpdatePolicyEngineResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    UpdatePolicyEngineResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "updatedAt"))
    UpdatePolicyEngineResponse.add_member(:policy_engine_arn, Shapes::ShapeRef.new(shape: PolicyEngineArn, required: true, location_name: "policyEngineArn"))
    UpdatePolicyEngineResponse.add_member(:status, Shapes::ShapeRef.new(shape: PolicyEngineStatus, required: true, location_name: "status"))
    UpdatePolicyEngineResponse.add_member(:status_reasons, Shapes::ShapeRef.new(shape: PolicyStatusReasons, required: true, location_name: "statusReasons"))
    UpdatePolicyEngineResponse.struct_class = Types::UpdatePolicyEngineResponse

    UpdatePolicyRequest.add_member(:policy_engine_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "policyEngineId"))
    UpdatePolicyRequest.add_member(:policy_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "policyId"))
    UpdatePolicyRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    UpdatePolicyRequest.add_member(:definition, Shapes::ShapeRef.new(shape: PolicyDefinition, required: true, location_name: "definition"))
    UpdatePolicyRequest.add_member(:validation_mode, Shapes::ShapeRef.new(shape: PolicyValidationMode, location_name: "validationMode"))
    UpdatePolicyRequest.struct_class = Types::UpdatePolicyRequest

    UpdatePolicyResponse.add_member(:policy_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "policyId"))
    UpdatePolicyResponse.add_member(:name, Shapes::ShapeRef.new(shape: PolicyName, required: true, location_name: "name"))
    UpdatePolicyResponse.add_member(:policy_engine_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "policyEngineId"))
    UpdatePolicyResponse.add_member(:definition, Shapes::ShapeRef.new(shape: PolicyDefinition, required: true, location_name: "definition"))
    UpdatePolicyResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    UpdatePolicyResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    UpdatePolicyResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "updatedAt"))
    UpdatePolicyResponse.add_member(:policy_arn, Shapes::ShapeRef.new(shape: PolicyArn, required: true, location_name: "policyArn"))
    UpdatePolicyResponse.add_member(:status, Shapes::ShapeRef.new(shape: PolicyStatus, required: true, location_name: "status"))
    UpdatePolicyResponse.add_member(:status_reasons, Shapes::ShapeRef.new(shape: PolicyStatusReasons, required: true, location_name: "statusReasons"))
    UpdatePolicyResponse.struct_class = Types::UpdatePolicyResponse

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

      api.add_operation(:create_evaluator, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateEvaluator"
        o.http_method = "POST"
        o.http_request_uri = "/evaluators/create"
        o.input = Shapes::ShapeRef.new(shape: CreateEvaluatorRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateEvaluatorResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
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

      api.add_operation(:create_online_evaluation_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateOnlineEvaluationConfig"
        o.http_method = "POST"
        o.http_request_uri = "/online-evaluation-configs/create"
        o.input = Shapes::ShapeRef.new(shape: CreateOnlineEvaluationConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateOnlineEvaluationConfigResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreatePolicy"
        o.http_method = "POST"
        o.http_request_uri = "/policy-engines/{policyEngineId}/policies"
        o.input = Shapes::ShapeRef.new(shape: CreatePolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: CreatePolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_policy_engine, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreatePolicyEngine"
        o.http_method = "POST"
        o.http_request_uri = "/policy-engines"
        o.input = Shapes::ShapeRef.new(shape: CreatePolicyEngineRequest)
        o.output = Shapes::ShapeRef.new(shape: CreatePolicyEngineResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
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

      api.add_operation(:delete_evaluator, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteEvaluator"
        o.http_method = "DELETE"
        o.http_request_uri = "/evaluators/{evaluatorId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteEvaluatorRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteEvaluatorResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
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
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
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

      api.add_operation(:delete_online_evaluation_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteOnlineEvaluationConfig"
        o.http_method = "DELETE"
        o.http_request_uri = "/online-evaluation-configs/{onlineEvaluationConfigId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteOnlineEvaluationConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteOnlineEvaluationConfigResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeletePolicy"
        o.http_method = "DELETE"
        o.http_request_uri = "/policy-engines/{policyEngineId}/policies/{policyId}"
        o.input = Shapes::ShapeRef.new(shape: DeletePolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: DeletePolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_policy_engine, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeletePolicyEngine"
        o.http_method = "DELETE"
        o.http_request_uri = "/policy-engines/{policyEngineId}"
        o.input = Shapes::ShapeRef.new(shape: DeletePolicyEngineRequest)
        o.output = Shapes::ShapeRef.new(shape: DeletePolicyEngineResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_resource_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteResourcePolicy"
        o.http_method = "DELETE"
        o.http_request_uri = "/resourcepolicy/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: DeleteResourcePolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteResourcePolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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

      api.add_operation(:get_evaluator, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetEvaluator"
        o.http_method = "GET"
        o.http_request_uri = "/evaluators/{evaluatorId}"
        o.input = Shapes::ShapeRef.new(shape: GetEvaluatorRequest)
        o.output = Shapes::ShapeRef.new(shape: GetEvaluatorResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
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

      api.add_operation(:get_online_evaluation_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetOnlineEvaluationConfig"
        o.http_method = "GET"
        o.http_request_uri = "/online-evaluation-configs/{onlineEvaluationConfigId}"
        o.input = Shapes::ShapeRef.new(shape: GetOnlineEvaluationConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: GetOnlineEvaluationConfigResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetPolicy"
        o.http_method = "GET"
        o.http_request_uri = "/policy-engines/{policyEngineId}/policies/{policyId}"
        o.input = Shapes::ShapeRef.new(shape: GetPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: GetPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_policy_engine, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetPolicyEngine"
        o.http_method = "GET"
        o.http_request_uri = "/policy-engines/{policyEngineId}"
        o.input = Shapes::ShapeRef.new(shape: GetPolicyEngineRequest)
        o.output = Shapes::ShapeRef.new(shape: GetPolicyEngineResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_policy_generation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetPolicyGeneration"
        o.http_method = "GET"
        o.http_request_uri = "/policy-engines/{policyEngineId}/policy-generations/{policyGenerationId}"
        o.input = Shapes::ShapeRef.new(shape: GetPolicyGenerationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetPolicyGenerationResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_resource_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetResourcePolicy"
        o.http_method = "GET"
        o.http_request_uri = "/resourcepolicy/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: GetResourcePolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: GetResourcePolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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

      api.add_operation(:list_evaluators, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListEvaluators"
        o.http_method = "POST"
        o.http_request_uri = "/evaluators"
        o.input = Shapes::ShapeRef.new(shape: ListEvaluatorsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListEvaluatorsResponse)
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

      api.add_operation(:list_online_evaluation_configs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListOnlineEvaluationConfigs"
        o.http_method = "POST"
        o.http_request_uri = "/online-evaluation-configs"
        o.input = Shapes::ShapeRef.new(shape: ListOnlineEvaluationConfigsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListOnlineEvaluationConfigsResponse)
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

      api.add_operation(:list_policies, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPolicies"
        o.http_method = "GET"
        o.http_request_uri = "/policy-engines/{policyEngineId}/policies"
        o.input = Shapes::ShapeRef.new(shape: ListPoliciesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPoliciesResponse)
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

      api.add_operation(:list_policy_engines, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPolicyEngines"
        o.http_method = "GET"
        o.http_request_uri = "/policy-engines"
        o.input = Shapes::ShapeRef.new(shape: ListPolicyEnginesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPolicyEnginesResponse)
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

      api.add_operation(:list_policy_generation_assets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPolicyGenerationAssets"
        o.http_method = "GET"
        o.http_request_uri = "/policy-engines/{policyEngineId}/policy-generations/{policyGenerationId}/assets"
        o.input = Shapes::ShapeRef.new(shape: ListPolicyGenerationAssetsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPolicyGenerationAssetsResponse)
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

      api.add_operation(:list_policy_generations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPolicyGenerations"
        o.http_method = "GET"
        o.http_request_uri = "/policy-engines/{policyEngineId}/policy-generations"
        o.input = Shapes::ShapeRef.new(shape: ListPolicyGenerationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPolicyGenerationsResponse)
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

      api.add_operation(:put_resource_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutResourcePolicy"
        o.http_method = "PUT"
        o.http_request_uri = "/resourcepolicy/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: PutResourcePolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: PutResourcePolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
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

      api.add_operation(:start_policy_generation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartPolicyGeneration"
        o.http_method = "POST"
        o.http_request_uri = "/policy-engines/{policyEngineId}/policy-generations"
        o.input = Shapes::ShapeRef.new(shape: StartPolicyGenerationRequest)
        o.output = Shapes::ShapeRef.new(shape: StartPolicyGenerationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
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

      api.add_operation(:update_evaluator, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateEvaluator"
        o.http_method = "PUT"
        o.http_request_uri = "/evaluators/{evaluatorId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateEvaluatorRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateEvaluatorResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
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

      api.add_operation(:update_online_evaluation_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateOnlineEvaluationConfig"
        o.http_method = "PUT"
        o.http_request_uri = "/online-evaluation-configs/{onlineEvaluationConfigId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateOnlineEvaluationConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateOnlineEvaluationConfigResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdatePolicy"
        o.http_method = "PUT"
        o.http_request_uri = "/policy-engines/{policyEngineId}/policies/{policyId}"
        o.input = Shapes::ShapeRef.new(shape: UpdatePolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdatePolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_policy_engine, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdatePolicyEngine"
        o.http_method = "PUT"
        o.http_request_uri = "/policy-engines/{policyEngineId}"
        o.input = Shapes::ShapeRef.new(shape: UpdatePolicyEngineRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdatePolicyEngineResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
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
