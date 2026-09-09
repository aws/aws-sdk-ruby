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

    A2aDescriptor = Shapes::StructureShape.new(name: 'A2aDescriptor')
    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    Action = Shapes::UnionShape.new(name: 'Action')
    Actions = Shapes::ListShape.new(name: 'Actions')
    ActorTokenContentType = Shapes::StringShape.new(name: 'ActorTokenContentType')
    AddDatasetExamplesRequest = Shapes::StructureShape.new(name: 'AddDatasetExamplesRequest')
    AddDatasetExamplesResponse = Shapes::StructureShape.new(name: 'AddDatasetExamplesResponse')
    AdditionalClaimName = Shapes::StringShape.new(name: 'AdditionalClaimName')
    AdditionalClaimValue = Shapes::StringShape.new(name: 'AdditionalClaimValue')
    AdditionalClaims = Shapes::MapShape.new(name: 'AdditionalClaims')
    AdditionalModelRequestFields = Shapes::DocumentShape.new(name: 'AdditionalModelRequestFields', document: true)
    AdvertisedScopeMappingType = Shapes::MapShape.new(name: 'AdvertisedScopeMappingType')
    AgentCardDefinition = Shapes::StructureShape.new(name: 'AgentCardDefinition')
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
    AgentRuntimeVersionSummary = Shapes::StructureShape.new(name: 'AgentRuntimeVersionSummary')
    AgentRuntimeVersionSummaryList = Shapes::ListShape.new(name: 'AgentRuntimeVersionSummaryList')
    AgentRuntimes = Shapes::ListShape.new(name: 'AgentRuntimes')
    AgentSkillsDescriptor = Shapes::StructureShape.new(name: 'AgentSkillsDescriptor')
    AllowedAudience = Shapes::StringShape.new(name: 'AllowedAudience')
    AllowedAudienceList = Shapes::ListShape.new(name: 'AllowedAudienceList')
    AllowedAudienceType = Shapes::StringShape.new(name: 'AllowedAudienceType')
    AllowedClient = Shapes::StringShape.new(name: 'AllowedClient')
    AllowedClientsList = Shapes::ListShape.new(name: 'AllowedClientsList')
    AllowedQueryParameters = Shapes::ListShape.new(name: 'AllowedQueryParameters')
    AllowedRequestHeaders = Shapes::ListShape.new(name: 'AllowedRequestHeaders')
    AllowedResponseHeaders = Shapes::ListShape.new(name: 'AllowedResponseHeaders')
    AllowedScopeType = Shapes::StringShape.new(name: 'AllowedScopeType')
    AllowedScopesType = Shapes::ListShape.new(name: 'AllowedScopesType')
    AllowedStringListValue = Shapes::StringShape.new(name: 'AllowedStringListValue')
    AllowedStringListValuesList = Shapes::ListShape.new(name: 'AllowedStringListValuesList')
    AllowedStringValue = Shapes::StringShape.new(name: 'AllowedStringValue')
    AllowedStringValuesList = Shapes::ListShape.new(name: 'AllowedStringValuesList')
    AllowedWorkloadConfiguration = Shapes::StructureShape.new(name: 'AllowedWorkloadConfiguration')
    ApiGatewayTargetConfiguration = Shapes::StructureShape.new(name: 'ApiGatewayTargetConfiguration')
    ApiGatewayToolConfiguration = Shapes::StructureShape.new(name: 'ApiGatewayToolConfiguration')
    ApiGatewayToolFilter = Shapes::StructureShape.new(name: 'ApiGatewayToolFilter')
    ApiGatewayToolFilters = Shapes::ListShape.new(name: 'ApiGatewayToolFilters')
    ApiGatewayToolOverride = Shapes::StructureShape.new(name: 'ApiGatewayToolOverride')
    ApiGatewayToolOverrides = Shapes::ListShape.new(name: 'ApiGatewayToolOverrides')
    ApiKeyArn = Shapes::StringShape.new(name: 'ApiKeyArn')
    ApiKeyCredentialLocation = Shapes::StringShape.new(name: 'ApiKeyCredentialLocation')
    ApiKeyCredentialParameterName = Shapes::StringShape.new(name: 'ApiKeyCredentialParameterName')
    ApiKeyCredentialPrefix = Shapes::StringShape.new(name: 'ApiKeyCredentialPrefix')
    ApiKeyCredentialProvider = Shapes::StructureShape.new(name: 'ApiKeyCredentialProvider')
    ApiKeyCredentialProviderArn = Shapes::StringShape.new(name: 'ApiKeyCredentialProviderArn')
    ApiKeyCredentialProviderArnType = Shapes::StringShape.new(name: 'ApiKeyCredentialProviderArnType')
    ApiKeyCredentialProviderItem = Shapes::StructureShape.new(name: 'ApiKeyCredentialProviderItem')
    ApiKeyCredentialProviders = Shapes::ListShape.new(name: 'ApiKeyCredentialProviders')
    ApiSchemaConfiguration = Shapes::UnionShape.new(name: 'ApiSchemaConfiguration')
    ApprovalConfiguration = Shapes::StructureShape.new(name: 'ApprovalConfiguration')
    Arn = Shapes::StringShape.new(name: 'Arn')
    AtlassianOauth2ProviderConfigInput = Shapes::StructureShape.new(name: 'AtlassianOauth2ProviderConfigInput')
    AtlassianOauth2ProviderConfigOutput = Shapes::StructureShape.new(name: 'AtlassianOauth2ProviderConfigOutput')
    AuthorizationData = Shapes::UnionShape.new(name: 'AuthorizationData')
    AuthorizationEndpointType = Shapes::StringShape.new(name: 'AuthorizationEndpointType')
    AuthorizerConfiguration = Shapes::UnionShape.new(name: 'AuthorizerConfiguration')
    AuthorizerType = Shapes::StringShape.new(name: 'AuthorizerType')
    AuthorizingClaimMatchValueType = Shapes::StructureShape.new(name: 'AuthorizingClaimMatchValueType')
    AwsAccountId = Shapes::StringShape.new(name: 'AwsAccountId')
    BatchPutGatewayRateLimitsRequest = Shapes::StructureShape.new(name: 'BatchPutGatewayRateLimitsRequest')
    BatchPutGatewayRateLimitsResponse = Shapes::StructureShape.new(name: 'BatchPutGatewayRateLimitsResponse')
    BatchPutLimitEntries = Shapes::ListShape.new(name: 'BatchPutLimitEntries')
    BatchPutLimitEntry = Shapes::StructureShape.new(name: 'BatchPutLimitEntry')
    BedrockAgentcoreResourceArn = Shapes::StringShape.new(name: 'BedrockAgentcoreResourceArn')
    BedrockEvaluatorModelConfig = Shapes::StructureShape.new(name: 'BedrockEvaluatorModelConfig')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    BranchName = Shapes::StringShape.new(name: 'BranchName')
    BrowserArn = Shapes::StringShape.new(name: 'BrowserArn')
    BrowserEnterprisePolicies = Shapes::ListShape.new(name: 'BrowserEnterprisePolicies')
    BrowserEnterprisePolicy = Shapes::StructureShape.new(name: 'BrowserEnterprisePolicy')
    BrowserEnterprisePolicyType = Shapes::StringShape.new(name: 'BrowserEnterprisePolicyType')
    BrowserId = Shapes::StringShape.new(name: 'BrowserId')
    BrowserNetworkConfiguration = Shapes::StructureShape.new(name: 'BrowserNetworkConfiguration')
    BrowserNetworkMode = Shapes::StringShape.new(name: 'BrowserNetworkMode')
    BrowserProfileArn = Shapes::StringShape.new(name: 'BrowserProfileArn')
    BrowserProfileId = Shapes::StringShape.new(name: 'BrowserProfileId')
    BrowserProfileName = Shapes::StringShape.new(name: 'BrowserProfileName')
    BrowserProfileStatus = Shapes::StringShape.new(name: 'BrowserProfileStatus')
    BrowserProfileSummaries = Shapes::ListShape.new(name: 'BrowserProfileSummaries')
    BrowserProfileSummary = Shapes::StructureShape.new(name: 'BrowserProfileSummary')
    BrowserSessionId = Shapes::StringShape.new(name: 'BrowserSessionId')
    BrowserSigningConfigInput = Shapes::StructureShape.new(name: 'BrowserSigningConfigInput')
    BrowserSigningConfigOutput = Shapes::StructureShape.new(name: 'BrowserSigningConfigOutput')
    BrowserStatus = Shapes::StringShape.new(name: 'BrowserStatus')
    BrowserSummaries = Shapes::ListShape.new(name: 'BrowserSummaries')
    BrowserSummary = Shapes::StructureShape.new(name: 'BrowserSummary')
    CapacityProviderArn = Shapes::StringShape.new(name: 'CapacityProviderArn')
    CapacityProviderConfiguration = Shapes::StructureShape.new(name: 'CapacityProviderConfiguration')
    CapacityProviderId = Shapes::StringShape.new(name: 'CapacityProviderId')
    CapacityProviderList = Shapes::ListShape.new(name: 'CapacityProviderList')
    CapacityProviderName = Shapes::StringShape.new(name: 'CapacityProviderName')
    CapacityProviderStatus = Shapes::StringShape.new(name: 'CapacityProviderStatus')
    CapacityProviderStatusCode = Shapes::StringShape.new(name: 'CapacityProviderStatusCode')
    CapacityProviderSummary = Shapes::StructureShape.new(name: 'CapacityProviderSummary')
    CapacityProviderVolumeConfiguration = Shapes::StructureShape.new(name: 'CapacityProviderVolumeConfiguration')
    CapacityProviderVolumeName = Shapes::StringShape.new(name: 'CapacityProviderVolumeName')
    CapacityReservationId = Shapes::StringShape.new(name: 'CapacityReservationId')
    CapacityReservationPreference = Shapes::StringShape.new(name: 'CapacityReservationPreference')
    CapacityReservationResourceGroupArn = Shapes::StringShape.new(name: 'CapacityReservationResourceGroupArn')
    CapacityReservationSpecification = Shapes::StructureShape.new(name: 'CapacityReservationSpecification')
    CapacityReservationTarget = Shapes::StructureShape.new(name: 'CapacityReservationTarget')
    CategoricalScaleDefinition = Shapes::StructureShape.new(name: 'CategoricalScaleDefinition')
    CategoricalScaleDefinitionLabelString = Shapes::StringShape.new(name: 'CategoricalScaleDefinitionLabelString')
    CategoricalScaleDefinitions = Shapes::ListShape.new(name: 'CategoricalScaleDefinitions')
    CedarPolicy = Shapes::StructureShape.new(name: 'CedarPolicy')
    Certificate = Shapes::StructureShape.new(name: 'Certificate')
    CertificateLocation = Shapes::UnionShape.new(name: 'CertificateLocation')
    Certificates = Shapes::ListShape.new(name: 'Certificates')
    ClaimMatchOperatorType = Shapes::StringShape.new(name: 'ClaimMatchOperatorType')
    ClaimMatchValueType = Shapes::UnionShape.new(name: 'ClaimMatchValueType')
    ClientAuthenticationMethodType = Shapes::StringShape.new(name: 'ClientAuthenticationMethodType')
    ClientIdType = Shapes::StringShape.new(name: 'ClientIdType')
    ClientToken = Shapes::StringShape.new(name: 'ClientToken')
    CloudWatchLogsInputConfig = Shapes::StructureShape.new(name: 'CloudWatchLogsInputConfig')
    CloudWatchLogsInputConfigLogGroupNamePrefixesList = Shapes::ListShape.new(name: 'CloudWatchLogsInputConfigLogGroupNamePrefixesList')
    CloudWatchLogsInputConfigLogGroupNamesList = Shapes::ListShape.new(name: 'CloudWatchLogsInputConfigLogGroupNamesList')
    CloudWatchLogsInputConfigServiceNamesList = Shapes::ListShape.new(name: 'CloudWatchLogsInputConfigServiceNamesList')
    CloudWatchOutputConfig = Shapes::StructureShape.new(name: 'CloudWatchOutputConfig')
    ClusteringConfig = Shapes::StructureShape.new(name: 'ClusteringConfig')
    ClusteringFrequency = Shapes::StringShape.new(name: 'ClusteringFrequency')
    ClusteringFrequencyList = Shapes::ListShape.new(name: 'ClusteringFrequencyList')
    Code = Shapes::UnionShape.new(name: 'Code')
    CodeBasedEvaluatorConfig = Shapes::UnionShape.new(name: 'CodeBasedEvaluatorConfig')
    CodeConfiguration = Shapes::StructureShape.new(name: 'CodeConfiguration')
    CodeConfigurationEntryPointList = Shapes::ListShape.new(name: 'CodeConfigurationEntryPointList')
    CodeInterpreterArn = Shapes::StringShape.new(name: 'CodeInterpreterArn')
    CodeInterpreterId = Shapes::StringShape.new(name: 'CodeInterpreterId')
    CodeInterpreterNetworkConfiguration = Shapes::StructureShape.new(name: 'CodeInterpreterNetworkConfiguration')
    CodeInterpreterNetworkMode = Shapes::StringShape.new(name: 'CodeInterpreterNetworkMode')
    CodeInterpreterStatus = Shapes::StringShape.new(name: 'CodeInterpreterStatus')
    CodeInterpreterSummaries = Shapes::ListShape.new(name: 'CodeInterpreterSummaries')
    CodeInterpreterSummary = Shapes::StructureShape.new(name: 'CodeInterpreterSummary')
    CoinbaseCdpApiKeyIdType = Shapes::StringShape.new(name: 'CoinbaseCdpApiKeyIdType')
    CoinbaseCdpConfigurationInput = Shapes::StructureShape.new(name: 'CoinbaseCdpConfigurationInput')
    CoinbaseCdpConfigurationOutput = Shapes::StructureShape.new(name: 'CoinbaseCdpConfigurationOutput')
    ComponentConfiguration = Shapes::StructureShape.new(name: 'ComponentConfiguration')
    ComponentConfigurationMap = Shapes::MapShape.new(name: 'ComponentConfigurationMap')
    ComponentIdentifier = Shapes::StringShape.new(name: 'ComponentIdentifier')
    CompositeIdentifierEntry = Shapes::StringShape.new(name: 'CompositeIdentifierEntry')
    CompositeIdentifierList = Shapes::ListShape.new(name: 'CompositeIdentifierList')
    ComputeConfiguration = Shapes::UnionShape.new(name: 'ComputeConfiguration')
    ConcurrentModificationException = Shapes::StructureShape.new(name: 'ConcurrentModificationException')
    Condition = Shapes::UnionShape.new(name: 'Condition')
    Conditions = Shapes::ListShape.new(name: 'Conditions')
    ConfigurationBundleAction = Shapes::UnionShape.new(name: 'ConfigurationBundleAction')
    ConfigurationBundleArn = Shapes::StringShape.new(name: 'ConfigurationBundleArn')
    ConfigurationBundleDescription = Shapes::StringShape.new(name: 'ConfigurationBundleDescription')
    ConfigurationBundleId = Shapes::StringShape.new(name: 'ConfigurationBundleId')
    ConfigurationBundleName = Shapes::StringShape.new(name: 'ConfigurationBundleName')
    ConfigurationBundleReference = Shapes::StructureShape.new(name: 'ConfigurationBundleReference')
    ConfigurationBundleReferenceBundleVersionString = Shapes::StringShape.new(name: 'ConfigurationBundleReferenceBundleVersionString')
    ConfigurationBundleStatus = Shapes::StringShape.new(name: 'ConfigurationBundleStatus')
    ConfigurationBundleSummary = Shapes::StructureShape.new(name: 'ConfigurationBundleSummary')
    ConfigurationBundleSummaryList = Shapes::ListShape.new(name: 'ConfigurationBundleSummaryList')
    ConfigurationBundleVersion = Shapes::StringShape.new(name: 'ConfigurationBundleVersion')
    ConfigurationBundleVersionList = Shapes::ListShape.new(name: 'ConfigurationBundleVersionList')
    ConfigurationBundleVersionSummary = Shapes::StructureShape.new(name: 'ConfigurationBundleVersionSummary')
    ConfigurationBundleVersionSummaryList = Shapes::ListShape.new(name: 'ConfigurationBundleVersionSummaryList')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    ConnectorConfiguration = Shapes::StructureShape.new(name: 'ConnectorConfiguration')
    ConnectorConfigurationDescriptionString = Shapes::StringShape.new(name: 'ConnectorConfigurationDescriptionString')
    ConnectorConfigurationNameString = Shapes::StringShape.new(name: 'ConnectorConfigurationNameString')
    ConnectorConfigurations = Shapes::ListShape.new(name: 'ConnectorConfigurations')
    ConnectorId = Shapes::StringShape.new(name: 'ConnectorId')
    ConnectorParameterName = Shapes::StringShape.new(name: 'ConnectorParameterName')
    ConnectorParameterOverride = Shapes::StructureShape.new(name: 'ConnectorParameterOverride')
    ConnectorParameterOverrides = Shapes::ListShape.new(name: 'ConnectorParameterOverrides')
    ConnectorParameterValue = Shapes::StringShape.new(name: 'ConnectorParameterValue')
    ConnectorSource = Shapes::StructureShape.new(name: 'ConnectorSource')
    ConnectorTargetConfiguration = Shapes::StructureShape.new(name: 'ConnectorTargetConfiguration')
    ConnectorVersion = Shapes::StringShape.new(name: 'ConnectorVersion')
    ConsentPortalArnType = Shapes::StringShape.new(name: 'ConsentPortalArnType')
    ConsentPortalDescriptionType = Shapes::StringShape.new(name: 'ConsentPortalDescriptionType')
    ConsentPortalIdType = Shapes::StringShape.new(name: 'ConsentPortalIdType')
    ConsentPortalIdentifier = Shapes::StringShape.new(name: 'ConsentPortalIdentifier')
    ConsentPortalIdpConfig = Shapes::StructureShape.new(name: 'ConsentPortalIdpConfig')
    ConsentPortalNameType = Shapes::StringShape.new(name: 'ConsentPortalNameType')
    ConsentPortalSource = Shapes::StructureShape.new(name: 'ConsentPortalSource')
    ConsentPortalSourceIdentifierType = Shapes::StringShape.new(name: 'ConsentPortalSourceIdentifierType')
    ConsentPortalSourceType = Shapes::StringShape.new(name: 'ConsentPortalSourceType')
    ConsentPortalSources = Shapes::ListShape.new(name: 'ConsentPortalSources')
    ConsentPortalStatus = Shapes::StringShape.new(name: 'ConsentPortalStatus')
    ConsentPortalSummaries = Shapes::ListShape.new(name: 'ConsentPortalSummaries')
    ConsentPortalSummary = Shapes::StructureShape.new(name: 'ConsentPortalSummary')
    ConsolidationConfiguration = Shapes::UnionShape.new(name: 'ConsolidationConfiguration')
    ContainerConfiguration = Shapes::StructureShape.new(name: 'ContainerConfiguration')
    Content = Shapes::UnionShape.new(name: 'Content')
    ContentConfiguration = Shapes::StructureShape.new(name: 'ContentConfiguration')
    ContentLevel = Shapes::StringShape.new(name: 'ContentLevel')
    ContentType = Shapes::StringShape.new(name: 'ContentType')
    CreateAgentRuntimeEndpointRequest = Shapes::StructureShape.new(name: 'CreateAgentRuntimeEndpointRequest')
    CreateAgentRuntimeEndpointResponse = Shapes::StructureShape.new(name: 'CreateAgentRuntimeEndpointResponse')
    CreateAgentRuntimeRequest = Shapes::StructureShape.new(name: 'CreateAgentRuntimeRequest')
    CreateAgentRuntimeResponse = Shapes::StructureShape.new(name: 'CreateAgentRuntimeResponse')
    CreateApiKeyCredentialProviderRequest = Shapes::StructureShape.new(name: 'CreateApiKeyCredentialProviderRequest')
    CreateApiKeyCredentialProviderResponse = Shapes::StructureShape.new(name: 'CreateApiKeyCredentialProviderResponse')
    CreateBrowserProfileRequest = Shapes::StructureShape.new(name: 'CreateBrowserProfileRequest')
    CreateBrowserProfileResponse = Shapes::StructureShape.new(name: 'CreateBrowserProfileResponse')
    CreateBrowserRequest = Shapes::StructureShape.new(name: 'CreateBrowserRequest')
    CreateBrowserResponse = Shapes::StructureShape.new(name: 'CreateBrowserResponse')
    CreateCapacityProviderInput = Shapes::StructureShape.new(name: 'CreateCapacityProviderInput')
    CreateCapacityProviderOutput = Shapes::StructureShape.new(name: 'CreateCapacityProviderOutput')
    CreateCodeInterpreterRequest = Shapes::StructureShape.new(name: 'CreateCodeInterpreterRequest')
    CreateCodeInterpreterResponse = Shapes::StructureShape.new(name: 'CreateCodeInterpreterResponse')
    CreateConfigurationBundleRequest = Shapes::StructureShape.new(name: 'CreateConfigurationBundleRequest')
    CreateConfigurationBundleRequestCommitMessageString = Shapes::StringShape.new(name: 'CreateConfigurationBundleRequestCommitMessageString')
    CreateConfigurationBundleResponse = Shapes::StructureShape.new(name: 'CreateConfigurationBundleResponse')
    CreateConsentPortalRequest = Shapes::StructureShape.new(name: 'CreateConsentPortalRequest')
    CreateConsentPortalResponse = Shapes::StructureShape.new(name: 'CreateConsentPortalResponse')
    CreateDatasetRequest = Shapes::StructureShape.new(name: 'CreateDatasetRequest')
    CreateDatasetRequestDescriptionString = Shapes::StringShape.new(name: 'CreateDatasetRequestDescriptionString')
    CreateDatasetResponse = Shapes::StructureShape.new(name: 'CreateDatasetResponse')
    CreateDatasetVersionRequest = Shapes::StructureShape.new(name: 'CreateDatasetVersionRequest')
    CreateDatasetVersionResponse = Shapes::StructureShape.new(name: 'CreateDatasetVersionResponse')
    CreateEvaluatorRequest = Shapes::StructureShape.new(name: 'CreateEvaluatorRequest')
    CreateEvaluatorResponse = Shapes::StructureShape.new(name: 'CreateEvaluatorResponse')
    CreateGatewayRateLimitRequest = Shapes::StructureShape.new(name: 'CreateGatewayRateLimitRequest')
    CreateGatewayRateLimitResponse = Shapes::StructureShape.new(name: 'CreateGatewayRateLimitResponse')
    CreateGatewayRequest = Shapes::StructureShape.new(name: 'CreateGatewayRequest')
    CreateGatewayResponse = Shapes::StructureShape.new(name: 'CreateGatewayResponse')
    CreateGatewayRuleRequest = Shapes::StructureShape.new(name: 'CreateGatewayRuleRequest')
    CreateGatewayRuleResponse = Shapes::StructureShape.new(name: 'CreateGatewayRuleResponse')
    CreateGatewayTargetRequest = Shapes::StructureShape.new(name: 'CreateGatewayTargetRequest')
    CreateGatewayTargetResponse = Shapes::StructureShape.new(name: 'CreateGatewayTargetResponse')
    CreateHarnessEndpointRequest = Shapes::StructureShape.new(name: 'CreateHarnessEndpointRequest')
    CreateHarnessEndpointResponse = Shapes::StructureShape.new(name: 'CreateHarnessEndpointResponse')
    CreateHarnessRequest = Shapes::StructureShape.new(name: 'CreateHarnessRequest')
    CreateHarnessResponse = Shapes::StructureShape.new(name: 'CreateHarnessResponse')
    CreateMemoryInput = Shapes::StructureShape.new(name: 'CreateMemoryInput')
    CreateMemoryInputClientTokenString = Shapes::StringShape.new(name: 'CreateMemoryInputClientTokenString')
    CreateMemoryInputEventExpiryDurationInteger = Shapes::IntegerShape.new(name: 'CreateMemoryInputEventExpiryDurationInteger')
    CreateMemoryOutput = Shapes::StructureShape.new(name: 'CreateMemoryOutput')
    CreateOauth2CredentialProviderRequest = Shapes::StructureShape.new(name: 'CreateOauth2CredentialProviderRequest')
    CreateOauth2CredentialProviderResponse = Shapes::StructureShape.new(name: 'CreateOauth2CredentialProviderResponse')
    CreateOnlineEvaluationConfigRequest = Shapes::StructureShape.new(name: 'CreateOnlineEvaluationConfigRequest')
    CreateOnlineEvaluationConfigResponse = Shapes::StructureShape.new(name: 'CreateOnlineEvaluationConfigResponse')
    CreatePaymentConnectorRequest = Shapes::StructureShape.new(name: 'CreatePaymentConnectorRequest')
    CreatePaymentConnectorResponse = Shapes::StructureShape.new(name: 'CreatePaymentConnectorResponse')
    CreatePaymentCredentialProviderRequest = Shapes::StructureShape.new(name: 'CreatePaymentCredentialProviderRequest')
    CreatePaymentCredentialProviderResponse = Shapes::StructureShape.new(name: 'CreatePaymentCredentialProviderResponse')
    CreatePaymentManagerRequest = Shapes::StructureShape.new(name: 'CreatePaymentManagerRequest')
    CreatePaymentManagerResponse = Shapes::StructureShape.new(name: 'CreatePaymentManagerResponse')
    CreatePolicyEngineRequest = Shapes::StructureShape.new(name: 'CreatePolicyEngineRequest')
    CreatePolicyEngineResponse = Shapes::StructureShape.new(name: 'CreatePolicyEngineResponse')
    CreatePolicyRequest = Shapes::StructureShape.new(name: 'CreatePolicyRequest')
    CreatePolicyResponse = Shapes::StructureShape.new(name: 'CreatePolicyResponse')
    CreateRegistryRecordRequest = Shapes::StructureShape.new(name: 'CreateRegistryRecordRequest')
    CreateRegistryRecordResponse = Shapes::StructureShape.new(name: 'CreateRegistryRecordResponse')
    CreateRegistryRequest = Shapes::StructureShape.new(name: 'CreateRegistryRequest')
    CreateRegistryResponse = Shapes::StructureShape.new(name: 'CreateRegistryResponse')
    CreateWorkloadIdentityRequest = Shapes::StructureShape.new(name: 'CreateWorkloadIdentityRequest')
    CreateWorkloadIdentityResponse = Shapes::StructureShape.new(name: 'CreateWorkloadIdentityResponse')
    CredentialProvider = Shapes::UnionShape.new(name: 'CredentialProvider')
    CredentialProviderArn = Shapes::StringShape.new(name: 'CredentialProviderArn')
    CredentialProviderArnType = Shapes::StringShape.new(name: 'CredentialProviderArnType')
    CredentialProviderConfiguration = Shapes::StructureShape.new(name: 'CredentialProviderConfiguration')
    CredentialProviderConfigurations = Shapes::ListShape.new(name: 'CredentialProviderConfigurations')
    CredentialProviderName = Shapes::StringShape.new(name: 'CredentialProviderName')
    CredentialProviderType = Shapes::StringShape.new(name: 'CredentialProviderType')
    CredentialProviderVendorType = Shapes::StringShape.new(name: 'CredentialProviderVendorType')
    CredentialsProviderConfiguration = Shapes::UnionShape.new(name: 'CredentialsProviderConfiguration')
    CredentialsProviderConfigurations = Shapes::ListShape.new(name: 'CredentialsProviderConfigurations')
    CustomClaimValidationType = Shapes::StructureShape.new(name: 'CustomClaimValidationType')
    CustomClaimValidationsType = Shapes::ListShape.new(name: 'CustomClaimValidationsType')
    CustomConfigurationInput = Shapes::UnionShape.new(name: 'CustomConfigurationInput')
    CustomConsolidationConfiguration = Shapes::UnionShape.new(name: 'CustomConsolidationConfiguration')
    CustomConsolidationConfigurationInput = Shapes::UnionShape.new(name: 'CustomConsolidationConfigurationInput')
    CustomDescriptor = Shapes::StructureShape.new(name: 'CustomDescriptor')
    CustomEvaluatorArn = Shapes::StringShape.new(name: 'CustomEvaluatorArn')
    CustomEvaluatorName = Shapes::StringShape.new(name: 'CustomEvaluatorName')
    CustomExtractionConfiguration = Shapes::UnionShape.new(name: 'CustomExtractionConfiguration')
    CustomExtractionConfigurationInput = Shapes::UnionShape.new(name: 'CustomExtractionConfigurationInput')
    CustomJWTAuthorizerConfiguration = Shapes::StructureShape.new(name: 'CustomJWTAuthorizerConfiguration')
    CustomMemoryStrategyInput = Shapes::StructureShape.new(name: 'CustomMemoryStrategyInput')
    CustomOauth2ProviderConfigInput = Shapes::StructureShape.new(name: 'CustomOauth2ProviderConfigInput')
    CustomOauth2ProviderConfigOutput = Shapes::StructureShape.new(name: 'CustomOauth2ProviderConfigOutput')
    CustomParameterMap = Shapes::MapShape.new(name: 'CustomParameterMap')
    CustomReflectionConfiguration = Shapes::UnionShape.new(name: 'CustomReflectionConfiguration')
    CustomReflectionConfigurationInput = Shapes::UnionShape.new(name: 'CustomReflectionConfigurationInput')
    CustomTransformConfiguration = Shapes::StructureShape.new(name: 'CustomTransformConfiguration')
    DataSourceConfig = Shapes::UnionShape.new(name: 'DataSourceConfig')
    DataSourceType = Shapes::UnionShape.new(name: 'DataSourceType')
    DatasetArn = Shapes::StringShape.new(name: 'DatasetArn')
    DatasetExampleList = Shapes::ListShape.new(name: 'DatasetExampleList')
    DatasetId = Shapes::StringShape.new(name: 'DatasetId')
    DatasetName = Shapes::StringShape.new(name: 'DatasetName')
    DatasetSchemaType = Shapes::StringShape.new(name: 'DatasetSchemaType')
    DatasetStatus = Shapes::StringShape.new(name: 'DatasetStatus')
    DatasetSummary = Shapes::StructureShape.new(name: 'DatasetSummary')
    DatasetSummaryList = Shapes::ListShape.new(name: 'DatasetSummaryList')
    DatasetVersion = Shapes::StringShape.new(name: 'DatasetVersion')
    DatasetVersionSummary = Shapes::StructureShape.new(name: 'DatasetVersionSummary')
    DatasetVersionSummaryList = Shapes::ListShape.new(name: 'DatasetVersionSummaryList')
    DateTimestamp = Shapes::TimestampShape.new(name: 'DateTimestamp', timestampFormat: "iso8601")
    DecryptionFailure = Shapes::StructureShape.new(name: 'DecryptionFailure')
    DefaultApiKeyType = Shapes::StringShape.new(name: 'DefaultApiKeyType')
    DefaultClientIdType = Shapes::StringShape.new(name: 'DefaultClientIdType')
    DefaultClientSecretType = Shapes::StringShape.new(name: 'DefaultClientSecretType')
    DefaultCoinbaseCdpApiKeySecretType = Shapes::StringShape.new(name: 'DefaultCoinbaseCdpApiKeySecretType')
    DefaultCoinbaseCdpWalletSecretType = Shapes::StringShape.new(name: 'DefaultCoinbaseCdpWalletSecretType')
    DefaultStripePrivyAppSecretType = Shapes::StringShape.new(name: 'DefaultStripePrivyAppSecretType')
    DefaultStripePrivyAuthorizationPrivateKeyType = Shapes::StringShape.new(name: 'DefaultStripePrivyAuthorizationPrivateKeyType')
    Definition = Shapes::StringShape.new(name: 'Definition')
    DeleteAgentRuntimeEndpointRequest = Shapes::StructureShape.new(name: 'DeleteAgentRuntimeEndpointRequest')
    DeleteAgentRuntimeEndpointResponse = Shapes::StructureShape.new(name: 'DeleteAgentRuntimeEndpointResponse')
    DeleteAgentRuntimeRequest = Shapes::StructureShape.new(name: 'DeleteAgentRuntimeRequest')
    DeleteAgentRuntimeResponse = Shapes::StructureShape.new(name: 'DeleteAgentRuntimeResponse')
    DeleteApiKeyCredentialProviderRequest = Shapes::StructureShape.new(name: 'DeleteApiKeyCredentialProviderRequest')
    DeleteApiKeyCredentialProviderResponse = Shapes::StructureShape.new(name: 'DeleteApiKeyCredentialProviderResponse')
    DeleteBrowserProfileRequest = Shapes::StructureShape.new(name: 'DeleteBrowserProfileRequest')
    DeleteBrowserProfileResponse = Shapes::StructureShape.new(name: 'DeleteBrowserProfileResponse')
    DeleteBrowserRequest = Shapes::StructureShape.new(name: 'DeleteBrowserRequest')
    DeleteBrowserResponse = Shapes::StructureShape.new(name: 'DeleteBrowserResponse')
    DeleteCapacityProviderInput = Shapes::StructureShape.new(name: 'DeleteCapacityProviderInput')
    DeleteCapacityProviderOutput = Shapes::StructureShape.new(name: 'DeleteCapacityProviderOutput')
    DeleteCodeInterpreterRequest = Shapes::StructureShape.new(name: 'DeleteCodeInterpreterRequest')
    DeleteCodeInterpreterResponse = Shapes::StructureShape.new(name: 'DeleteCodeInterpreterResponse')
    DeleteConfigurationBundleRequest = Shapes::StructureShape.new(name: 'DeleteConfigurationBundleRequest')
    DeleteConfigurationBundleResponse = Shapes::StructureShape.new(name: 'DeleteConfigurationBundleResponse')
    DeleteConsentPortalRequest = Shapes::StructureShape.new(name: 'DeleteConsentPortalRequest')
    DeleteConsentPortalResponse = Shapes::StructureShape.new(name: 'DeleteConsentPortalResponse')
    DeleteDatasetExamplesRequest = Shapes::StructureShape.new(name: 'DeleteDatasetExamplesRequest')
    DeleteDatasetExamplesRequestExampleIdsList = Shapes::ListShape.new(name: 'DeleteDatasetExamplesRequestExampleIdsList')
    DeleteDatasetExamplesResponse = Shapes::StructureShape.new(name: 'DeleteDatasetExamplesResponse')
    DeleteDatasetRequest = Shapes::StructureShape.new(name: 'DeleteDatasetRequest')
    DeleteDatasetResponse = Shapes::StructureShape.new(name: 'DeleteDatasetResponse')
    DeleteEvaluatorRequest = Shapes::StructureShape.new(name: 'DeleteEvaluatorRequest')
    DeleteEvaluatorResponse = Shapes::StructureShape.new(name: 'DeleteEvaluatorResponse')
    DeleteGatewayRateLimitRequest = Shapes::StructureShape.new(name: 'DeleteGatewayRateLimitRequest')
    DeleteGatewayRateLimitResponse = Shapes::StructureShape.new(name: 'DeleteGatewayRateLimitResponse')
    DeleteGatewayRequest = Shapes::StructureShape.new(name: 'DeleteGatewayRequest')
    DeleteGatewayResponse = Shapes::StructureShape.new(name: 'DeleteGatewayResponse')
    DeleteGatewayRuleRequest = Shapes::StructureShape.new(name: 'DeleteGatewayRuleRequest')
    DeleteGatewayRuleResponse = Shapes::StructureShape.new(name: 'DeleteGatewayRuleResponse')
    DeleteGatewayTargetRequest = Shapes::StructureShape.new(name: 'DeleteGatewayTargetRequest')
    DeleteGatewayTargetResponse = Shapes::StructureShape.new(name: 'DeleteGatewayTargetResponse')
    DeleteHarnessEndpointRequest = Shapes::StructureShape.new(name: 'DeleteHarnessEndpointRequest')
    DeleteHarnessEndpointResponse = Shapes::StructureShape.new(name: 'DeleteHarnessEndpointResponse')
    DeleteHarnessRequest = Shapes::StructureShape.new(name: 'DeleteHarnessRequest')
    DeleteHarnessResponse = Shapes::StructureShape.new(name: 'DeleteHarnessResponse')
    DeleteMemoryInput = Shapes::StructureShape.new(name: 'DeleteMemoryInput')
    DeleteMemoryInputClientTokenString = Shapes::StringShape.new(name: 'DeleteMemoryInputClientTokenString')
    DeleteMemoryOutput = Shapes::StructureShape.new(name: 'DeleteMemoryOutput')
    DeleteMemoryStrategiesList = Shapes::ListShape.new(name: 'DeleteMemoryStrategiesList')
    DeleteMemoryStrategyInput = Shapes::StructureShape.new(name: 'DeleteMemoryStrategyInput')
    DeleteOauth2CredentialProviderRequest = Shapes::StructureShape.new(name: 'DeleteOauth2CredentialProviderRequest')
    DeleteOauth2CredentialProviderResponse = Shapes::StructureShape.new(name: 'DeleteOauth2CredentialProviderResponse')
    DeleteOnlineEvaluationConfigRequest = Shapes::StructureShape.new(name: 'DeleteOnlineEvaluationConfigRequest')
    DeleteOnlineEvaluationConfigResponse = Shapes::StructureShape.new(name: 'DeleteOnlineEvaluationConfigResponse')
    DeletePaymentConnectorRequest = Shapes::StructureShape.new(name: 'DeletePaymentConnectorRequest')
    DeletePaymentConnectorResponse = Shapes::StructureShape.new(name: 'DeletePaymentConnectorResponse')
    DeletePaymentCredentialProviderRequest = Shapes::StructureShape.new(name: 'DeletePaymentCredentialProviderRequest')
    DeletePaymentCredentialProviderResponse = Shapes::StructureShape.new(name: 'DeletePaymentCredentialProviderResponse')
    DeletePaymentManagerRequest = Shapes::StructureShape.new(name: 'DeletePaymentManagerRequest')
    DeletePaymentManagerResponse = Shapes::StructureShape.new(name: 'DeletePaymentManagerResponse')
    DeletePolicyEngineRequest = Shapes::StructureShape.new(name: 'DeletePolicyEngineRequest')
    DeletePolicyEngineResponse = Shapes::StructureShape.new(name: 'DeletePolicyEngineResponse')
    DeletePolicyRequest = Shapes::StructureShape.new(name: 'DeletePolicyRequest')
    DeletePolicyResponse = Shapes::StructureShape.new(name: 'DeletePolicyResponse')
    DeleteRegistryRecordRequest = Shapes::StructureShape.new(name: 'DeleteRegistryRecordRequest')
    DeleteRegistryRecordResponse = Shapes::StructureShape.new(name: 'DeleteRegistryRecordResponse')
    DeleteRegistryRequest = Shapes::StructureShape.new(name: 'DeleteRegistryRequest')
    DeleteRegistryResponse = Shapes::StructureShape.new(name: 'DeleteRegistryResponse')
    DeleteResourcePolicyRequest = Shapes::StructureShape.new(name: 'DeleteResourcePolicyRequest')
    DeleteResourcePolicyResponse = Shapes::StructureShape.new(name: 'DeleteResourcePolicyResponse')
    DeleteWorkloadIdentityRequest = Shapes::StructureShape.new(name: 'DeleteWorkloadIdentityRequest')
    DeleteWorkloadIdentityResponse = Shapes::StructureShape.new(name: 'DeleteWorkloadIdentityResponse')
    DerivedEvaluatorConfig = Shapes::StructureShape.new(name: 'DerivedEvaluatorConfig')
    Description = Shapes::StringShape.new(name: 'Description')
    DescriptorType = Shapes::StringShape.new(name: 'DescriptorType')
    Descriptors = Shapes::StructureShape.new(name: 'Descriptors')
    DeviceName = Shapes::StringShape.new(name: 'DeviceName')
    DimensionKey = Shapes::StringShape.new(name: 'DimensionKey')
    DimensionKeys = Shapes::ListShape.new(name: 'DimensionKeys')
    DimensionValue = Shapes::StringShape.new(name: 'DimensionValue')
    DiscoveryUrl = Shapes::StringShape.new(name: 'DiscoveryUrl')
    DiscoveryUrlType = Shapes::StringShape.new(name: 'DiscoveryUrlType')
    Document = Shapes::DocumentShape.new(name: 'Document', document: true)
    DomainName = Shapes::StringShape.new(name: 'DomainName')
    Double = Shapes::FloatShape.new(name: 'Double')
    DownloadUrl = Shapes::StringShape.new(name: 'DownloadUrl')
    DraftStatus = Shapes::StringShape.new(name: 'DraftStatus')
    EC2InstanceType = Shapes::StringShape.new(name: 'EC2InstanceType')
    EbsCardIndex = Shapes::IntegerShape.new(name: 'EbsCardIndex')
    EbsSnapshotId = Shapes::StringShape.new(name: 'EbsSnapshotId')
    EbsVolumeConfiguration = Shapes::StructureShape.new(name: 'EbsVolumeConfiguration')
    EbsVolumeInitializationRate = Shapes::IntegerShape.new(name: 'EbsVolumeInitializationRate')
    EbsVolumeType = Shapes::StringShape.new(name: 'EbsVolumeType')
    Ec2Configuration = Shapes::StructureShape.new(name: 'Ec2Configuration')
    EfsAccessPointArn = Shapes::StringShape.new(name: 'EfsAccessPointArn')
    EfsAccessPointConfiguration = Shapes::StructureShape.new(name: 'EfsAccessPointConfiguration')
    EfsConfiguration = Shapes::StructureShape.new(name: 'EfsConfiguration')
    EfsFileSystemArn = Shapes::StringShape.new(name: 'EfsFileSystemArn')
    EnabledConnectors = Shapes::ListShape.new(name: 'EnabledConnectors')
    EncryptionFailure = Shapes::StructureShape.new(name: 'EncryptionFailure')
    EndpointIpAddressType = Shapes::StringShape.new(name: 'EndpointIpAddressType')
    EndpointName = Shapes::StringShape.new(name: 'EndpointName')
    EnforcementMode = Shapes::StringShape.new(name: 'EnforcementMode')
    EnvironmentVariableKey = Shapes::StringShape.new(name: 'EnvironmentVariableKey')
    EnvironmentVariableValue = Shapes::StringShape.new(name: 'EnvironmentVariableValue')
    EnvironmentVariablesMap = Shapes::MapShape.new(name: 'EnvironmentVariablesMap')
    EphemeralBlockDeviceMapping = Shapes::StructureShape.new(name: 'EphemeralBlockDeviceMapping')
    EphemeralEBSVolumeConfiguration = Shapes::StructureShape.new(name: 'EphemeralEBSVolumeConfiguration')
    EphemeralEBSVolumeConfigurationThroughputInteger = Shapes::IntegerShape.new(name: 'EphemeralEBSVolumeConfigurationThroughputInteger')
    EphemeralEBSVolumeConfigurationVolumeSizeInteger = Shapes::IntegerShape.new(name: 'EphemeralEBSVolumeConfigurationVolumeSizeInteger')
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
    ExampleId = Shapes::StringShape.new(name: 'ExampleId')
    ExampleIdList = Shapes::ListShape.new(name: 'ExampleIdList')
    ExceptionLevel = Shapes::StringShape.new(name: 'ExceptionLevel')
    ExecutionRoleArnType = Shapes::StringShape.new(name: 'ExecutionRoleArnType')
    ExtractionConfig = Shapes::UnionShape.new(name: 'ExtractionConfig')
    ExtractionConfiguration = Shapes::UnionShape.new(name: 'ExtractionConfiguration')
    ExtractionType = Shapes::StringShape.new(name: 'ExtractionType')
    FilesystemConfiguration = Shapes::UnionShape.new(name: 'FilesystemConfiguration')
    FilesystemConfigurations = Shapes::ListShape.new(name: 'FilesystemConfigurations')
    Filter = Shapes::StructureShape.new(name: 'Filter')
    FilterKeyString = Shapes::StringShape.new(name: 'FilterKeyString')
    FilterList = Shapes::ListShape.new(name: 'FilterList')
    FilterOperator = Shapes::StringShape.new(name: 'FilterOperator')
    FilterValue = Shapes::UnionShape.new(name: 'FilterValue')
    FilterValueStringValueString = Shapes::StringShape.new(name: 'FilterValueStringValueString')
    Finding = Shapes::StructureShape.new(name: 'Finding')
    FindingType = Shapes::StringShape.new(name: 'FindingType')
    Findings = Shapes::ListShape.new(name: 'Findings')
    Float = Shapes::FloatShape.new(name: 'Float')
    FromUrlSynchronizationConfiguration = Shapes::StructureShape.new(name: 'FromUrlSynchronizationConfiguration')
    GatewayArn = Shapes::StringShape.new(name: 'GatewayArn')
    GatewayConfigurationBundleArn = Shapes::StringShape.new(name: 'GatewayConfigurationBundleArn')
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
    GatewayRateLimitDescription = Shapes::StringShape.new(name: 'GatewayRateLimitDescription')
    GatewayRateLimitDetail = Shapes::StructureShape.new(name: 'GatewayRateLimitDetail')
    GatewayRateLimitId = Shapes::StringShape.new(name: 'GatewayRateLimitId')
    GatewayRateLimitMaxResults = Shapes::IntegerShape.new(name: 'GatewayRateLimitMaxResults')
    GatewayRateLimitNextToken = Shapes::StringShape.new(name: 'GatewayRateLimitNextToken')
    GatewayRateLimitStatus = Shapes::StringShape.new(name: 'GatewayRateLimitStatus')
    GatewayRateLimits = Shapes::ListShape.new(name: 'GatewayRateLimits')
    GatewayRuleDescription = Shapes::StringShape.new(name: 'GatewayRuleDescription')
    GatewayRuleDetail = Shapes::StructureShape.new(name: 'GatewayRuleDetail')
    GatewayRuleId = Shapes::StringShape.new(name: 'GatewayRuleId')
    GatewayRuleMaxResults = Shapes::IntegerShape.new(name: 'GatewayRuleMaxResults')
    GatewayRuleNextToken = Shapes::StringShape.new(name: 'GatewayRuleNextToken')
    GatewayRulePriority = Shapes::IntegerShape.new(name: 'GatewayRulePriority')
    GatewayRuleStatus = Shapes::StringShape.new(name: 'GatewayRuleStatus')
    GatewayRules = Shapes::ListShape.new(name: 'GatewayRules')
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
    GetBrowserProfileRequest = Shapes::StructureShape.new(name: 'GetBrowserProfileRequest')
    GetBrowserProfileResponse = Shapes::StructureShape.new(name: 'GetBrowserProfileResponse')
    GetBrowserRequest = Shapes::StructureShape.new(name: 'GetBrowserRequest')
    GetBrowserResponse = Shapes::StructureShape.new(name: 'GetBrowserResponse')
    GetCapacityProviderInput = Shapes::StructureShape.new(name: 'GetCapacityProviderInput')
    GetCapacityProviderOutput = Shapes::StructureShape.new(name: 'GetCapacityProviderOutput')
    GetCodeInterpreterRequest = Shapes::StructureShape.new(name: 'GetCodeInterpreterRequest')
    GetCodeInterpreterResponse = Shapes::StructureShape.new(name: 'GetCodeInterpreterResponse')
    GetConfigurationBundleRequest = Shapes::StructureShape.new(name: 'GetConfigurationBundleRequest')
    GetConfigurationBundleResponse = Shapes::StructureShape.new(name: 'GetConfigurationBundleResponse')
    GetConfigurationBundleVersionRequest = Shapes::StructureShape.new(name: 'GetConfigurationBundleVersionRequest')
    GetConfigurationBundleVersionResponse = Shapes::StructureShape.new(name: 'GetConfigurationBundleVersionResponse')
    GetConsentPortalRequest = Shapes::StructureShape.new(name: 'GetConsentPortalRequest')
    GetConsentPortalResponse = Shapes::StructureShape.new(name: 'GetConsentPortalResponse')
    GetDatasetRequest = Shapes::StructureShape.new(name: 'GetDatasetRequest')
    GetDatasetResponse = Shapes::StructureShape.new(name: 'GetDatasetResponse')
    GetEvaluatorRequest = Shapes::StructureShape.new(name: 'GetEvaluatorRequest')
    GetEvaluatorResponse = Shapes::StructureShape.new(name: 'GetEvaluatorResponse')
    GetGatewayRateLimitRequest = Shapes::StructureShape.new(name: 'GetGatewayRateLimitRequest')
    GetGatewayRateLimitResponse = Shapes::StructureShape.new(name: 'GetGatewayRateLimitResponse')
    GetGatewayRequest = Shapes::StructureShape.new(name: 'GetGatewayRequest')
    GetGatewayResponse = Shapes::StructureShape.new(name: 'GetGatewayResponse')
    GetGatewayRuleRequest = Shapes::StructureShape.new(name: 'GetGatewayRuleRequest')
    GetGatewayRuleResponse = Shapes::StructureShape.new(name: 'GetGatewayRuleResponse')
    GetGatewayTargetRequest = Shapes::StructureShape.new(name: 'GetGatewayTargetRequest')
    GetGatewayTargetResponse = Shapes::StructureShape.new(name: 'GetGatewayTargetResponse')
    GetHarnessEndpointRequest = Shapes::StructureShape.new(name: 'GetHarnessEndpointRequest')
    GetHarnessEndpointResponse = Shapes::StructureShape.new(name: 'GetHarnessEndpointResponse')
    GetHarnessRequest = Shapes::StructureShape.new(name: 'GetHarnessRequest')
    GetHarnessResponse = Shapes::StructureShape.new(name: 'GetHarnessResponse')
    GetMemoryInput = Shapes::StructureShape.new(name: 'GetMemoryInput')
    GetMemoryOutput = Shapes::StructureShape.new(name: 'GetMemoryOutput')
    GetOauth2CredentialProviderRequest = Shapes::StructureShape.new(name: 'GetOauth2CredentialProviderRequest')
    GetOauth2CredentialProviderResponse = Shapes::StructureShape.new(name: 'GetOauth2CredentialProviderResponse')
    GetOnlineEvaluationConfigRequest = Shapes::StructureShape.new(name: 'GetOnlineEvaluationConfigRequest')
    GetOnlineEvaluationConfigResponse = Shapes::StructureShape.new(name: 'GetOnlineEvaluationConfigResponse')
    GetPaymentConnectorRequest = Shapes::StructureShape.new(name: 'GetPaymentConnectorRequest')
    GetPaymentConnectorResponse = Shapes::StructureShape.new(name: 'GetPaymentConnectorResponse')
    GetPaymentCredentialProviderRequest = Shapes::StructureShape.new(name: 'GetPaymentCredentialProviderRequest')
    GetPaymentCredentialProviderResponse = Shapes::StructureShape.new(name: 'GetPaymentCredentialProviderResponse')
    GetPaymentManagerRequest = Shapes::StructureShape.new(name: 'GetPaymentManagerRequest')
    GetPaymentManagerResponse = Shapes::StructureShape.new(name: 'GetPaymentManagerResponse')
    GetPolicyEngineRequest = Shapes::StructureShape.new(name: 'GetPolicyEngineRequest')
    GetPolicyEngineResponse = Shapes::StructureShape.new(name: 'GetPolicyEngineResponse')
    GetPolicyEngineSummaryRequest = Shapes::StructureShape.new(name: 'GetPolicyEngineSummaryRequest')
    GetPolicyEngineSummaryResponse = Shapes::StructureShape.new(name: 'GetPolicyEngineSummaryResponse')
    GetPolicyGenerationRequest = Shapes::StructureShape.new(name: 'GetPolicyGenerationRequest')
    GetPolicyGenerationResponse = Shapes::StructureShape.new(name: 'GetPolicyGenerationResponse')
    GetPolicyGenerationSummaryRequest = Shapes::StructureShape.new(name: 'GetPolicyGenerationSummaryRequest')
    GetPolicyGenerationSummaryResponse = Shapes::StructureShape.new(name: 'GetPolicyGenerationSummaryResponse')
    GetPolicyRequest = Shapes::StructureShape.new(name: 'GetPolicyRequest')
    GetPolicyResponse = Shapes::StructureShape.new(name: 'GetPolicyResponse')
    GetPolicySummaryRequest = Shapes::StructureShape.new(name: 'GetPolicySummaryRequest')
    GetPolicySummaryResponse = Shapes::StructureShape.new(name: 'GetPolicySummaryResponse')
    GetRegistryRecordRequest = Shapes::StructureShape.new(name: 'GetRegistryRecordRequest')
    GetRegistryRecordResponse = Shapes::StructureShape.new(name: 'GetRegistryRecordResponse')
    GetRegistryRequest = Shapes::StructureShape.new(name: 'GetRegistryRequest')
    GetRegistryResponse = Shapes::StructureShape.new(name: 'GetRegistryResponse')
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
    Harness = Shapes::StructureShape.new(name: 'Harness')
    HarnessAgentCoreBrowserConfig = Shapes::StructureShape.new(name: 'HarnessAgentCoreBrowserConfig')
    HarnessAgentCoreCodeInterpreterConfig = Shapes::StructureShape.new(name: 'HarnessAgentCoreCodeInterpreterConfig')
    HarnessAgentCoreGatewayConfig = Shapes::StructureShape.new(name: 'HarnessAgentCoreGatewayConfig')
    HarnessAgentCoreMemoryConfiguration = Shapes::StructureShape.new(name: 'HarnessAgentCoreMemoryConfiguration')
    HarnessAgentCoreMemoryRetrievalConfig = Shapes::StructureShape.new(name: 'HarnessAgentCoreMemoryRetrievalConfig')
    HarnessAgentCoreMemoryRetrievalConfigs = Shapes::MapShape.new(name: 'HarnessAgentCoreMemoryRetrievalConfigs')
    HarnessAgentCoreRuntimeEnvironment = Shapes::StructureShape.new(name: 'HarnessAgentCoreRuntimeEnvironment')
    HarnessAgentCoreRuntimeEnvironmentRequest = Shapes::StructureShape.new(name: 'HarnessAgentCoreRuntimeEnvironmentRequest')
    HarnessAllowedTool = Shapes::StringShape.new(name: 'HarnessAllowedTool')
    HarnessAllowedTools = Shapes::ListShape.new(name: 'HarnessAllowedTools')
    HarnessArn = Shapes::StringShape.new(name: 'HarnessArn')
    HarnessAwsSkillPath = Shapes::StringShape.new(name: 'HarnessAwsSkillPath')
    HarnessAwsSkillPaths = Shapes::ListShape.new(name: 'HarnessAwsSkillPaths')
    HarnessBedrockApiFormat = Shapes::StringShape.new(name: 'HarnessBedrockApiFormat')
    HarnessBedrockModelConfig = Shapes::StructureShape.new(name: 'HarnessBedrockModelConfig')
    HarnessBrowserArn = Shapes::StringShape.new(name: 'HarnessBrowserArn')
    HarnessCodeInterpreterArn = Shapes::StringShape.new(name: 'HarnessCodeInterpreterArn')
    HarnessDisabledMemoryConfiguration = Shapes::StructureShape.new(name: 'HarnessDisabledMemoryConfiguration')
    HarnessEndpoint = Shapes::StructureShape.new(name: 'HarnessEndpoint')
    HarnessEndpointArn = Shapes::StringShape.new(name: 'HarnessEndpointArn')
    HarnessEndpointDescription = Shapes::StringShape.new(name: 'HarnessEndpointDescription')
    HarnessEndpointName = Shapes::StringShape.new(name: 'HarnessEndpointName')
    HarnessEndpointStatus = Shapes::StringShape.new(name: 'HarnessEndpointStatus')
    HarnessEndpoints = Shapes::ListShape.new(name: 'HarnessEndpoints')
    HarnessEnvironmentArtifact = Shapes::UnionShape.new(name: 'HarnessEnvironmentArtifact')
    HarnessEnvironmentProvider = Shapes::UnionShape.new(name: 'HarnessEnvironmentProvider')
    HarnessEnvironmentProviderRequest = Shapes::UnionShape.new(name: 'HarnessEnvironmentProviderRequest')
    HarnessGatewayOutboundAuth = Shapes::UnionShape.new(name: 'HarnessGatewayOutboundAuth')
    HarnessGeminiModelConfig = Shapes::StructureShape.new(name: 'HarnessGeminiModelConfig')
    HarnessId = Shapes::StringShape.new(name: 'HarnessId')
    HarnessInlineFunctionConfig = Shapes::StructureShape.new(name: 'HarnessInlineFunctionConfig')
    HarnessInlineFunctionDescription = Shapes::StringShape.new(name: 'HarnessInlineFunctionDescription')
    HarnessLiteLlmApiBase = Shapes::StringShape.new(name: 'HarnessLiteLlmApiBase')
    HarnessLiteLlmModelConfig = Shapes::StructureShape.new(name: 'HarnessLiteLlmModelConfig')
    HarnessManagedMemoryConfiguration = Shapes::StructureShape.new(name: 'HarnessManagedMemoryConfiguration')
    HarnessManagedMemoryConfigurationEventExpiryDurationInteger = Shapes::IntegerShape.new(name: 'HarnessManagedMemoryConfigurationEventExpiryDurationInteger')
    HarnessManagedMemoryStrategyList = Shapes::ListShape.new(name: 'HarnessManagedMemoryStrategyList')
    HarnessManagedMemoryStrategyType = Shapes::StringShape.new(name: 'HarnessManagedMemoryStrategyType')
    HarnessMemoryConfiguration = Shapes::UnionShape.new(name: 'HarnessMemoryConfiguration')
    HarnessModelConfiguration = Shapes::UnionShape.new(name: 'HarnessModelConfiguration')
    HarnessName = Shapes::StringShape.new(name: 'HarnessName')
    HarnessOpenAiApiFormat = Shapes::StringShape.new(name: 'HarnessOpenAiApiFormat')
    HarnessOpenAiModelConfig = Shapes::StructureShape.new(name: 'HarnessOpenAiModelConfig')
    HarnessRemoteMcpConfig = Shapes::StructureShape.new(name: 'HarnessRemoteMcpConfig')
    HarnessRemoteMcpUrl = Shapes::StringShape.new(name: 'HarnessRemoteMcpUrl')
    HarnessSkill = Shapes::UnionShape.new(name: 'HarnessSkill')
    HarnessSkillAwsSkillsSource = Shapes::StructureShape.new(name: 'HarnessSkillAwsSkillsSource')
    HarnessSkillGitAuth = Shapes::StructureShape.new(name: 'HarnessSkillGitAuth')
    HarnessSkillGitSource = Shapes::StructureShape.new(name: 'HarnessSkillGitSource')
    HarnessSkillGitUrl = Shapes::StringShape.new(name: 'HarnessSkillGitUrl')
    HarnessSkillPath = Shapes::StringShape.new(name: 'HarnessSkillPath')
    HarnessSkillS3Source = Shapes::StructureShape.new(name: 'HarnessSkillS3Source')
    HarnessSkillS3Uri = Shapes::StringShape.new(name: 'HarnessSkillS3Uri')
    HarnessSkills = Shapes::ListShape.new(name: 'HarnessSkills')
    HarnessSlidingWindowConfiguration = Shapes::StructureShape.new(name: 'HarnessSlidingWindowConfiguration')
    HarnessStatus = Shapes::StringShape.new(name: 'HarnessStatus')
    HarnessSummaries = Shapes::ListShape.new(name: 'HarnessSummaries')
    HarnessSummarizationConfiguration = Shapes::StructureShape.new(name: 'HarnessSummarizationConfiguration')
    HarnessSummary = Shapes::StructureShape.new(name: 'HarnessSummary')
    HarnessSystemContentBlock = Shapes::UnionShape.new(name: 'HarnessSystemContentBlock')
    HarnessSystemPrompt = Shapes::ListShape.new(name: 'HarnessSystemPrompt')
    HarnessTool = Shapes::StructureShape.new(name: 'HarnessTool')
    HarnessToolConfiguration = Shapes::UnionShape.new(name: 'HarnessToolConfiguration')
    HarnessToolName = Shapes::StringShape.new(name: 'HarnessToolName')
    HarnessToolType = Shapes::StringShape.new(name: 'HarnessToolType')
    HarnessTools = Shapes::ListShape.new(name: 'HarnessTools')
    HarnessTruncationConfiguration = Shapes::StructureShape.new(name: 'HarnessTruncationConfiguration')
    HarnessTruncationStrategy = Shapes::StringShape.new(name: 'HarnessTruncationStrategy')
    HarnessTruncationStrategyConfiguration = Shapes::UnionShape.new(name: 'HarnessTruncationStrategyConfiguration')
    HarnessVersion = Shapes::StringShape.new(name: 'HarnessVersion')
    HarnessVersionSummaries = Shapes::ListShape.new(name: 'HarnessVersionSummaries')
    HarnessVersionSummary = Shapes::StructureShape.new(name: 'HarnessVersionSummary')
    HeaderName = Shapes::StringShape.new(name: 'HeaderName')
    HostingEnvironment = Shapes::StructureShape.new(name: 'HostingEnvironment')
    HostingEnvironmentListType = Shapes::ListShape.new(name: 'HostingEnvironmentListType')
    HttpApiSchemaConfiguration = Shapes::StructureShape.new(name: 'HttpApiSchemaConfiguration')
    HttpConnectorParameters = Shapes::MapShape.new(name: 'HttpConnectorParameters')
    HttpConnectorSource = Shapes::StructureShape.new(name: 'HttpConnectorSource')
    HttpConnectorTargetConfiguration = Shapes::StructureShape.new(name: 'HttpConnectorTargetConfiguration')
    HttpHeaderKey = Shapes::StringShape.new(name: 'HttpHeaderKey')
    HttpHeaderName = Shapes::StringShape.new(name: 'HttpHeaderName')
    HttpHeaderValue = Shapes::StringShape.new(name: 'HttpHeaderValue')
    HttpHeadersMap = Shapes::MapShape.new(name: 'HttpHeadersMap')
    HttpQueryParameterName = Shapes::StringShape.new(name: 'HttpQueryParameterName')
    HttpTargetConfiguration = Shapes::UnionShape.new(name: 'HttpTargetConfiguration')
    IamCredentialProvider = Shapes::StructureShape.new(name: 'IamCredentialProvider')
    IamCredentialProviderRegionString = Shapes::StringShape.new(name: 'IamCredentialProviderRegionString')
    IamCredentialProviderServiceString = Shapes::StringShape.new(name: 'IamCredentialProviderServiceString')
    IamPrincipal = Shapes::StructureShape.new(name: 'IamPrincipal')
    IamPrincipalArn = Shapes::StringShape.new(name: 'IamPrincipalArn')
    IamRoleArn = Shapes::StringShape.new(name: 'IamRoleArn')
    IamSigningRegion = Shapes::StringShape.new(name: 'IamSigningRegion')
    IamSigningServiceName = Shapes::StringShape.new(name: 'IamSigningServiceName')
    InboundTokenClaimNameType = Shapes::StringShape.new(name: 'InboundTokenClaimNameType')
    InboundTokenClaimValueType = Shapes::StringShape.new(name: 'InboundTokenClaimValueType')
    IncludedData = Shapes::StringShape.new(name: 'IncludedData')
    IncludedOauth2ProviderConfigInput = Shapes::StructureShape.new(name: 'IncludedOauth2ProviderConfigInput')
    IncludedOauth2ProviderConfigOutput = Shapes::StructureShape.new(name: 'IncludedOauth2ProviderConfigOutput')
    IndexedKey = Shapes::StructureShape.new(name: 'IndexedKey')
    IndexedKeysList = Shapes::ListShape.new(name: 'IndexedKeysList')
    InferenceConfiguration = Shapes::StructureShape.new(name: 'InferenceConfiguration')
    InferenceConfigurationMaxTokensInteger = Shapes::IntegerShape.new(name: 'InferenceConfigurationMaxTokensInteger')
    InferenceConfigurationStopSequencesList = Shapes::ListShape.new(name: 'InferenceConfigurationStopSequencesList')
    InferenceConfigurationTemperatureFloat = Shapes::FloatShape.new(name: 'InferenceConfigurationTemperatureFloat')
    InferenceConfigurationTopPFloat = Shapes::FloatShape.new(name: 'InferenceConfigurationTopPFloat')
    InferenceConnectorId = Shapes::StringShape.new(name: 'InferenceConnectorId')
    InferenceConnectorSource = Shapes::StructureShape.new(name: 'InferenceConnectorSource')
    InferenceConnectorTargetConfiguration = Shapes::StructureShape.new(name: 'InferenceConnectorTargetConfiguration')
    InferenceOperationConfiguration = Shapes::StructureShape.new(name: 'InferenceOperationConfiguration')
    InferenceOperationConfigurations = Shapes::ListShape.new(name: 'InferenceOperationConfigurations')
    InferenceOperationPath = Shapes::StringShape.new(name: 'InferenceOperationPath')
    InferenceProviderTargetConfiguration = Shapes::StructureShape.new(name: 'InferenceProviderTargetConfiguration')
    InferenceTargetConfiguration = Shapes::UnionShape.new(name: 'InferenceTargetConfiguration')
    InlineContent = Shapes::StringShape.new(name: 'InlineContent')
    InlineExamplesSource = Shapes::StructureShape.new(name: 'InlineExamplesSource')
    InlineExamplesSourceExamplesList = Shapes::ListShape.new(name: 'InlineExamplesSourceExamplesList')
    InlinePayload = Shapes::StringShape.new(name: 'InlinePayload')
    Insight = Shapes::StructureShape.new(name: 'Insight')
    InsightId = Shapes::StringShape.new(name: 'InsightId')
    InsightList = Shapes::ListShape.new(name: 'InsightList')
    InstanceLifecycleConfiguration = Shapes::StructureShape.new(name: 'InstanceLifecycleConfiguration')
    InstanceLifecycleConfigurationIdleInstanceTimeoutInteger = Shapes::IntegerShape.new(name: 'InstanceLifecycleConfigurationIdleInstanceTimeoutInteger')
    InstanceLifecycleConfigurationMaxLifetimeInteger = Shapes::IntegerShape.new(name: 'InstanceLifecycleConfigurationMaxLifetimeInteger')
    InstanceProfileArn = Shapes::StringShape.new(name: 'InstanceProfileArn')
    InstanceRequirements = Shapes::StructureShape.new(name: 'InstanceRequirements')
    InstanceRequirementsAllowedInstanceTypesList = Shapes::ListShape.new(name: 'InstanceRequirementsAllowedInstanceTypesList')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InterceptorConfiguration = Shapes::UnionShape.new(name: 'InterceptorConfiguration')
    InterceptorInputConfiguration = Shapes::StructureShape.new(name: 'InterceptorInputConfiguration')
    InterceptorPayloadExclusion = Shapes::StringShape.new(name: 'InterceptorPayloadExclusion')
    InterceptorPayloadExclusionSelector = Shapes::UnionShape.new(name: 'InterceptorPayloadExclusionSelector')
    InterceptorPayloadExclusionSelectorList = Shapes::ListShape.new(name: 'InterceptorPayloadExclusionSelectorList')
    InterceptorPayloadFilter = Shapes::StructureShape.new(name: 'InterceptorPayloadFilter')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    InvocationConfiguration = Shapes::StructureShape.new(name: 'InvocationConfiguration')
    InvocationConfigurationInput = Shapes::StructureShape.new(name: 'InvocationConfigurationInput')
    InvocationConfigurationInputPayloadDeliveryBucketNameString = Shapes::StringShape.new(name: 'InvocationConfigurationInputPayloadDeliveryBucketNameString')
    IssuerUrlType = Shapes::StringShape.new(name: 'IssuerUrlType')
    KeyType = Shapes::StringShape.new(name: 'KeyType')
    KinesisResource = Shapes::StructureShape.new(name: 'KinesisResource')
    KinesisResourceContentConfigurationsList = Shapes::ListShape.new(name: 'KinesisResourceContentConfigurationsList')
    KmsConfiguration = Shapes::StructureShape.new(name: 'KmsConfiguration')
    KmsKeyArn = Shapes::StringShape.new(name: 'KmsKeyArn')
    KmsKeyId = Shapes::StringShape.new(name: 'KmsKeyId')
    KmsKeySourceType = Shapes::StructureShape.new(name: 'KmsKeySourceType')
    LambdaArn = Shapes::StringShape.new(name: 'LambdaArn')
    LambdaEvaluatorConfig = Shapes::StructureShape.new(name: 'LambdaEvaluatorConfig')
    LambdaEvaluatorConfigLambdaTimeoutInSecondsInteger = Shapes::IntegerShape.new(name: 'LambdaEvaluatorConfigLambdaTimeoutInSecondsInteger')
    LambdaFunctionArn = Shapes::StringShape.new(name: 'LambdaFunctionArn')
    LambdaInterceptorConfiguration = Shapes::StructureShape.new(name: 'LambdaInterceptorConfiguration')
    LambdaTransformConfiguration = Shapes::StructureShape.new(name: 'LambdaTransformConfiguration')
    LaunchParameters = Shapes::StructureShape.new(name: 'LaunchParameters')
    LaunchParametersEphemeralVolumesList = Shapes::ListShape.new(name: 'LaunchParametersEphemeralVolumesList')
    LaunchParametersLicenseSpecificationsList = Shapes::ListShape.new(name: 'LaunchParametersLicenseSpecificationsList')
    LaunchTemplateSource = Shapes::UnionShape.new(name: 'LaunchTemplateSource')
    LicenseConfigurationArn = Shapes::StringShape.new(name: 'LicenseConfigurationArn')
    LicenseSpecification = Shapes::StructureShape.new(name: 'LicenseSpecification')
    LifecycleConfiguration = Shapes::StructureShape.new(name: 'LifecycleConfiguration')
    LifecycleConfigurationIdleRuntimeSessionTimeoutInteger = Shapes::IntegerShape.new(name: 'LifecycleConfigurationIdleRuntimeSessionTimeoutInteger')
    LifecycleConfigurationMaxLifetimeInteger = Shapes::IntegerShape.new(name: 'LifecycleConfigurationMaxLifetimeInteger')
    LimitEntries = Shapes::ListShape.new(name: 'LimitEntries')
    LimitEntry = Shapes::StructureShape.new(name: 'LimitEntry')
    LimitEntryDimensionsMap = Shapes::MapShape.new(name: 'LimitEntryDimensionsMap')
    LinkedinOauth2ProviderConfigInput = Shapes::StructureShape.new(name: 'LinkedinOauth2ProviderConfigInput')
    LinkedinOauth2ProviderConfigOutput = Shapes::StructureShape.new(name: 'LinkedinOauth2ProviderConfigOutput')
    ListAgentRuntimeEndpointsRequest = Shapes::StructureShape.new(name: 'ListAgentRuntimeEndpointsRequest')
    ListAgentRuntimeEndpointsResponse = Shapes::StructureShape.new(name: 'ListAgentRuntimeEndpointsResponse')
    ListAgentRuntimeVersionsByCapacityProviderInput = Shapes::StructureShape.new(name: 'ListAgentRuntimeVersionsByCapacityProviderInput')
    ListAgentRuntimeVersionsByCapacityProviderOutput = Shapes::StructureShape.new(name: 'ListAgentRuntimeVersionsByCapacityProviderOutput')
    ListAgentRuntimeVersionsRequest = Shapes::StructureShape.new(name: 'ListAgentRuntimeVersionsRequest')
    ListAgentRuntimeVersionsResponse = Shapes::StructureShape.new(name: 'ListAgentRuntimeVersionsResponse')
    ListAgentRuntimesRequest = Shapes::StructureShape.new(name: 'ListAgentRuntimesRequest')
    ListAgentRuntimesResponse = Shapes::StructureShape.new(name: 'ListAgentRuntimesResponse')
    ListApiKeyCredentialProvidersRequest = Shapes::StructureShape.new(name: 'ListApiKeyCredentialProvidersRequest')
    ListApiKeyCredentialProvidersResponse = Shapes::StructureShape.new(name: 'ListApiKeyCredentialProvidersResponse')
    ListBrowserProfilesRequest = Shapes::StructureShape.new(name: 'ListBrowserProfilesRequest')
    ListBrowserProfilesResponse = Shapes::StructureShape.new(name: 'ListBrowserProfilesResponse')
    ListBrowsersRequest = Shapes::StructureShape.new(name: 'ListBrowsersRequest')
    ListBrowsersResponse = Shapes::StructureShape.new(name: 'ListBrowsersResponse')
    ListCapacityProvidersInput = Shapes::StructureShape.new(name: 'ListCapacityProvidersInput')
    ListCapacityProvidersOutput = Shapes::StructureShape.new(name: 'ListCapacityProvidersOutput')
    ListCodeInterpretersRequest = Shapes::StructureShape.new(name: 'ListCodeInterpretersRequest')
    ListCodeInterpretersResponse = Shapes::StructureShape.new(name: 'ListCodeInterpretersResponse')
    ListConfigurationBundleVersionsRequest = Shapes::StructureShape.new(name: 'ListConfigurationBundleVersionsRequest')
    ListConfigurationBundleVersionsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListConfigurationBundleVersionsRequestMaxResultsInteger')
    ListConfigurationBundleVersionsResponse = Shapes::StructureShape.new(name: 'ListConfigurationBundleVersionsResponse')
    ListConfigurationBundlesRequest = Shapes::StructureShape.new(name: 'ListConfigurationBundlesRequest')
    ListConfigurationBundlesRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListConfigurationBundlesRequestMaxResultsInteger')
    ListConfigurationBundlesResponse = Shapes::StructureShape.new(name: 'ListConfigurationBundlesResponse')
    ListConsentPortalsRequest = Shapes::StructureShape.new(name: 'ListConsentPortalsRequest')
    ListConsentPortalsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListConsentPortalsRequestMaxResultsInteger')
    ListConsentPortalsResponse = Shapes::StructureShape.new(name: 'ListConsentPortalsResponse')
    ListDatasetExamplesRequest = Shapes::StructureShape.new(name: 'ListDatasetExamplesRequest')
    ListDatasetExamplesRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListDatasetExamplesRequestMaxResultsInteger')
    ListDatasetExamplesRequestNextTokenString = Shapes::StringShape.new(name: 'ListDatasetExamplesRequestNextTokenString')
    ListDatasetExamplesResponse = Shapes::StructureShape.new(name: 'ListDatasetExamplesResponse')
    ListDatasetVersionsRequest = Shapes::StructureShape.new(name: 'ListDatasetVersionsRequest')
    ListDatasetVersionsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListDatasetVersionsRequestMaxResultsInteger')
    ListDatasetVersionsResponse = Shapes::StructureShape.new(name: 'ListDatasetVersionsResponse')
    ListDatasetsRequest = Shapes::StructureShape.new(name: 'ListDatasetsRequest')
    ListDatasetsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListDatasetsRequestMaxResultsInteger')
    ListDatasetsRequestNextTokenString = Shapes::StringShape.new(name: 'ListDatasetsRequestNextTokenString')
    ListDatasetsResponse = Shapes::StructureShape.new(name: 'ListDatasetsResponse')
    ListEvaluatorsRequest = Shapes::StructureShape.new(name: 'ListEvaluatorsRequest')
    ListEvaluatorsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListEvaluatorsRequestMaxResultsInteger')
    ListEvaluatorsResponse = Shapes::StructureShape.new(name: 'ListEvaluatorsResponse')
    ListGatewayRateLimitsRequest = Shapes::StructureShape.new(name: 'ListGatewayRateLimitsRequest')
    ListGatewayRateLimitsResponse = Shapes::StructureShape.new(name: 'ListGatewayRateLimitsResponse')
    ListGatewayRulesRequest = Shapes::StructureShape.new(name: 'ListGatewayRulesRequest')
    ListGatewayRulesResponse = Shapes::StructureShape.new(name: 'ListGatewayRulesResponse')
    ListGatewayTargetsRequest = Shapes::StructureShape.new(name: 'ListGatewayTargetsRequest')
    ListGatewayTargetsResponse = Shapes::StructureShape.new(name: 'ListGatewayTargetsResponse')
    ListGatewaysRequest = Shapes::StructureShape.new(name: 'ListGatewaysRequest')
    ListGatewaysResponse = Shapes::StructureShape.new(name: 'ListGatewaysResponse')
    ListHarnessEndpointsRequest = Shapes::StructureShape.new(name: 'ListHarnessEndpointsRequest')
    ListHarnessEndpointsResponse = Shapes::StructureShape.new(name: 'ListHarnessEndpointsResponse')
    ListHarnessVersionsRequest = Shapes::StructureShape.new(name: 'ListHarnessVersionsRequest')
    ListHarnessVersionsResponse = Shapes::StructureShape.new(name: 'ListHarnessVersionsResponse')
    ListHarnessesRequest = Shapes::StructureShape.new(name: 'ListHarnessesRequest')
    ListHarnessesResponse = Shapes::StructureShape.new(name: 'ListHarnessesResponse')
    ListMemoriesInput = Shapes::StructureShape.new(name: 'ListMemoriesInput')
    ListMemoriesInputMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListMemoriesInputMaxResultsInteger')
    ListMemoriesOutput = Shapes::StructureShape.new(name: 'ListMemoriesOutput')
    ListOauth2CredentialProvidersRequest = Shapes::StructureShape.new(name: 'ListOauth2CredentialProvidersRequest')
    ListOauth2CredentialProvidersRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListOauth2CredentialProvidersRequestMaxResultsInteger')
    ListOauth2CredentialProvidersResponse = Shapes::StructureShape.new(name: 'ListOauth2CredentialProvidersResponse')
    ListOnlineEvaluationConfigsRequest = Shapes::StructureShape.new(name: 'ListOnlineEvaluationConfigsRequest')
    ListOnlineEvaluationConfigsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListOnlineEvaluationConfigsRequestMaxResultsInteger')
    ListOnlineEvaluationConfigsResponse = Shapes::StructureShape.new(name: 'ListOnlineEvaluationConfigsResponse')
    ListPaymentConnectorsRequest = Shapes::StructureShape.new(name: 'ListPaymentConnectorsRequest')
    ListPaymentConnectorsResponse = Shapes::StructureShape.new(name: 'ListPaymentConnectorsResponse')
    ListPaymentCredentialProvidersRequest = Shapes::StructureShape.new(name: 'ListPaymentCredentialProvidersRequest')
    ListPaymentCredentialProvidersRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListPaymentCredentialProvidersRequestMaxResultsInteger')
    ListPaymentCredentialProvidersResponse = Shapes::StructureShape.new(name: 'ListPaymentCredentialProvidersResponse')
    ListPaymentManagersRequest = Shapes::StructureShape.new(name: 'ListPaymentManagersRequest')
    ListPaymentManagersResponse = Shapes::StructureShape.new(name: 'ListPaymentManagersResponse')
    ListPoliciesRequest = Shapes::StructureShape.new(name: 'ListPoliciesRequest')
    ListPoliciesResponse = Shapes::StructureShape.new(name: 'ListPoliciesResponse')
    ListPolicyEngineSummariesRequest = Shapes::StructureShape.new(name: 'ListPolicyEngineSummariesRequest')
    ListPolicyEngineSummariesResponse = Shapes::StructureShape.new(name: 'ListPolicyEngineSummariesResponse')
    ListPolicyEnginesRequest = Shapes::StructureShape.new(name: 'ListPolicyEnginesRequest')
    ListPolicyEnginesResponse = Shapes::StructureShape.new(name: 'ListPolicyEnginesResponse')
    ListPolicyGenerationAssetsRequest = Shapes::StructureShape.new(name: 'ListPolicyGenerationAssetsRequest')
    ListPolicyGenerationAssetsResponse = Shapes::StructureShape.new(name: 'ListPolicyGenerationAssetsResponse')
    ListPolicyGenerationSummariesRequest = Shapes::StructureShape.new(name: 'ListPolicyGenerationSummariesRequest')
    ListPolicyGenerationSummariesResponse = Shapes::StructureShape.new(name: 'ListPolicyGenerationSummariesResponse')
    ListPolicyGenerationsRequest = Shapes::StructureShape.new(name: 'ListPolicyGenerationsRequest')
    ListPolicyGenerationsResponse = Shapes::StructureShape.new(name: 'ListPolicyGenerationsResponse')
    ListPolicySummariesRequest = Shapes::StructureShape.new(name: 'ListPolicySummariesRequest')
    ListPolicySummariesResponse = Shapes::StructureShape.new(name: 'ListPolicySummariesResponse')
    ListRegistriesRequest = Shapes::StructureShape.new(name: 'ListRegistriesRequest')
    ListRegistriesResponse = Shapes::StructureShape.new(name: 'ListRegistriesResponse')
    ListRegistryRecordsRequest = Shapes::StructureShape.new(name: 'ListRegistryRecordsRequest')
    ListRegistryRecordsResponse = Shapes::StructureShape.new(name: 'ListRegistryRecordsResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    ListWorkloadIdentitiesRequest = Shapes::StructureShape.new(name: 'ListWorkloadIdentitiesRequest')
    ListWorkloadIdentitiesRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListWorkloadIdentitiesRequestMaxResultsInteger')
    ListWorkloadIdentitiesResponse = Shapes::StructureShape.new(name: 'ListWorkloadIdentitiesResponse')
    ListingMode = Shapes::StringShape.new(name: 'ListingMode')
    LlmAsAJudgeEvaluatorConfig = Shapes::StructureShape.new(name: 'LlmAsAJudgeEvaluatorConfig')
    LlmExtractionConfig = Shapes::StructureShape.new(name: 'LlmExtractionConfig')
    LlmExtractionInstruction = Shapes::StringShape.new(name: 'LlmExtractionInstruction')
    LogGroupName = Shapes::StringShape.new(name: 'LogGroupName')
    LogGroupNamePrefix = Shapes::StringShape.new(name: 'LogGroupNamePrefix')
    Long = Shapes::IntegerShape.new(name: 'Long')
    MCPGatewayConfiguration = Shapes::StructureShape.new(name: 'MCPGatewayConfiguration')
    ManagedResourceDetails = Shapes::StructureShape.new(name: 'ManagedResourceDetails')
    ManagedVpcResource = Shapes::StructureShape.new(name: 'ManagedVpcResource')
    MatchPathPattern = Shapes::StringShape.new(name: 'MatchPathPattern')
    MatchPaths = Shapes::StructureShape.new(name: 'MatchPaths')
    MatchPathsAnyOfList = Shapes::ListShape.new(name: 'MatchPathsAnyOfList')
    MatchPrincipalEntry = Shapes::UnionShape.new(name: 'MatchPrincipalEntry')
    MatchPrincipals = Shapes::StructureShape.new(name: 'MatchPrincipals')
    MatchPrincipalsAnyOfList = Shapes::ListShape.new(name: 'MatchPrincipalsAnyOfList')
    MatchValueString = Shapes::StringShape.new(name: 'MatchValueString')
    MatchValueStringList = Shapes::ListShape.new(name: 'MatchValueStringList')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    MaxTokens = Shapes::IntegerShape.new(name: 'MaxTokens')
    McpDescriptor = Shapes::StructureShape.new(name: 'McpDescriptor')
    McpInstructions = Shapes::StringShape.new(name: 'McpInstructions')
    McpLambdaTargetConfiguration = Shapes::StructureShape.new(name: 'McpLambdaTargetConfiguration')
    McpServerTargetConfiguration = Shapes::StructureShape.new(name: 'McpServerTargetConfiguration')
    McpServerTargetConfigurationEndpointString = Shapes::StringShape.new(name: 'McpServerTargetConfigurationEndpointString')
    McpServerUrl = Shapes::StringShape.new(name: 'McpServerUrl')
    McpSupportedVersions = Shapes::ListShape.new(name: 'McpSupportedVersions')
    McpTargetConfiguration = Shapes::UnionShape.new(name: 'McpTargetConfiguration')
    McpToolSchemaConfiguration = Shapes::UnionShape.new(name: 'McpToolSchemaConfiguration')
    McpVersion = Shapes::StringShape.new(name: 'McpVersion')
    Memory = Shapes::StructureShape.new(name: 'Memory')
    MemoryArn = Shapes::StringShape.new(name: 'MemoryArn')
    MemoryEventExpiryDurationInteger = Shapes::IntegerShape.new(name: 'MemoryEventExpiryDurationInteger')
    MemoryId = Shapes::StringShape.new(name: 'MemoryId')
    MemoryRecordSchema = Shapes::StructureShape.new(name: 'MemoryRecordSchema')
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
    MemoryView = Shapes::StringShape.new(name: 'MemoryView')
    MessageBasedTrigger = Shapes::StructureShape.new(name: 'MessageBasedTrigger')
    MessageBasedTriggerInput = Shapes::StructureShape.new(name: 'MessageBasedTriggerInput')
    MessageBasedTriggerInputMessageCountInteger = Shapes::IntegerShape.new(name: 'MessageBasedTriggerInputMessageCountInteger')
    MetadataConfiguration = Shapes::StructureShape.new(name: 'MetadataConfiguration')
    MetadataKey = Shapes::StringShape.new(name: 'MetadataKey')
    MetadataSchemaEntry = Shapes::StructureShape.new(name: 'MetadataSchemaEntry')
    MetadataSchemaList = Shapes::ListShape.new(name: 'MetadataSchemaList')
    MetadataValueType = Shapes::StringShape.new(name: 'MetadataValueType')
    MetricsNamespace = Shapes::StringShape.new(name: 'MetricsNamespace')
    MicrosoftOauth2ProviderConfigInput = Shapes::StructureShape.new(name: 'MicrosoftOauth2ProviderConfigInput')
    MicrosoftOauth2ProviderConfigOutput = Shapes::StructureShape.new(name: 'MicrosoftOauth2ProviderConfigOutput')
    ModelEntries = Shapes::ListShape.new(name: 'ModelEntries')
    ModelEntry = Shapes::StructureShape.new(name: 'ModelEntry')
    ModelId = Shapes::StringShape.new(name: 'ModelId')
    ModelMapping = Shapes::StructureShape.new(name: 'ModelMapping')
    ModelPattern = Shapes::StringShape.new(name: 'ModelPattern')
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
    Monitoring = Shapes::StringShape.new(name: 'Monitoring')
    MountPath = Shapes::StringShape.new(name: 'MountPath')
    Name = Shapes::StringShape.new(name: 'Name')
    Namespace = Shapes::StringShape.new(name: 'Namespace')
    NamespaceAllowedValue = Shapes::StringShape.new(name: 'NamespaceAllowedValue')
    NamespaceAllowedValuesList = Shapes::ListShape.new(name: 'NamespaceAllowedValuesList')
    NamespaceKeyEntry = Shapes::StructureShape.new(name: 'NamespaceKeyEntry')
    NamespaceKeyValidation = Shapes::StructureShape.new(name: 'NamespaceKeyValidation')
    NamespaceKeysList = Shapes::ListShape.new(name: 'NamespaceKeysList')
    NamespaceRegexPattern = Shapes::StringShape.new(name: 'NamespaceRegexPattern')
    NamespaceVariableKey = Shapes::StringShape.new(name: 'NamespaceVariableKey')
    NamespacesList = Shapes::ListShape.new(name: 'NamespacesList')
    NaturalLanguage = Shapes::StringShape.new(name: 'NaturalLanguage')
    NetworkConfiguration = Shapes::StructureShape.new(name: 'NetworkConfiguration')
    NetworkMode = Shapes::StringShape.new(name: 'NetworkMode')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    NonBlankString = Shapes::StringShape.new(name: 'NonBlankString')
    NonEmptyString = Shapes::StringShape.new(name: 'NonEmptyString')
    NumberValidation = Shapes::StructureShape.new(name: 'NumberValidation')
    NumericalScaleDefinition = Shapes::StructureShape.new(name: 'NumericalScaleDefinition')
    NumericalScaleDefinitionLabelString = Shapes::StringShape.new(name: 'NumericalScaleDefinitionLabelString')
    NumericalScaleDefinitionValueDouble = Shapes::FloatShape.new(name: 'NumericalScaleDefinitionValueDouble')
    NumericalScaleDefinitions = Shapes::ListShape.new(name: 'NumericalScaleDefinitions')
    OAuth2AuthorizationData = Shapes::StructureShape.new(name: 'OAuth2AuthorizationData')
    OAuth2AuthorizationDataAuthorizationUrlString = Shapes::StringShape.new(name: 'OAuth2AuthorizationDataAuthorizationUrlString')
    OAuth2AuthorizationDataUserIdString = Shapes::StringShape.new(name: 'OAuth2AuthorizationDataUserIdString')
    OAuth2CredentialProviderArn = Shapes::StringShape.new(name: 'OAuth2CredentialProviderArn')
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
    OnBehalfOfTokenExchangeConfigType = Shapes::StructureShape.new(name: 'OnBehalfOfTokenExchangeConfigType')
    OnBehalfOfTokenExchangeGrantTypeType = Shapes::StringShape.new(name: 'OnBehalfOfTokenExchangeGrantTypeType')
    OnlineEvaluationConfigArn = Shapes::StringShape.new(name: 'OnlineEvaluationConfigArn')
    OnlineEvaluationConfigId = Shapes::StringShape.new(name: 'OnlineEvaluationConfigId')
    OnlineEvaluationConfigStatus = Shapes::StringShape.new(name: 'OnlineEvaluationConfigStatus')
    OnlineEvaluationConfigSummary = Shapes::StructureShape.new(name: 'OnlineEvaluationConfigSummary')
    OnlineEvaluationConfigSummaryList = Shapes::ListShape.new(name: 'OnlineEvaluationConfigSummaryList')
    OnlineEvaluationExecutionStatus = Shapes::StringShape.new(name: 'OnlineEvaluationExecutionStatus')
    OpenResponsesEvaluatorModelConfig = Shapes::StructureShape.new(name: 'OpenResponsesEvaluatorModelConfig')
    OpenResponsesEvaluatorModelConfigMaxOutputTokensInteger = Shapes::IntegerShape.new(name: 'OpenResponsesEvaluatorModelConfigMaxOutputTokensInteger')
    OpenResponsesEvaluatorModelConfigTemperatureFloat = Shapes::FloatShape.new(name: 'OpenResponsesEvaluatorModelConfigTemperatureFloat')
    OpenResponsesEvaluatorModelConfigTopPFloat = Shapes::FloatShape.new(name: 'OpenResponsesEvaluatorModelConfigTopPFloat')
    OperatingSystem = Shapes::StringShape.new(name: 'OperatingSystem')
    OptionalLogGroupName = Shapes::StringShape.new(name: 'OptionalLogGroupName')
    OutputConfig = Shapes::StructureShape.new(name: 'OutputConfig')
    OverrideType = Shapes::StringShape.new(name: 'OverrideType')
    PassthroughEndpoint = Shapes::StringShape.new(name: 'PassthroughEndpoint')
    PassthroughProtocolType = Shapes::StringShape.new(name: 'PassthroughProtocolType')
    PassthroughTargetConfiguration = Shapes::StructureShape.new(name: 'PassthroughTargetConfiguration')
    PaymentConnectorAuthorizationUrl = Shapes::StringShape.new(name: 'PaymentConnectorAuthorizationUrl')
    PaymentConnectorId = Shapes::StringShape.new(name: 'PaymentConnectorId')
    PaymentConnectorName = Shapes::StringShape.new(name: 'PaymentConnectorName')
    PaymentConnectorProvisionMode = Shapes::StringShape.new(name: 'PaymentConnectorProvisionMode')
    PaymentConnectorStatus = Shapes::StringShape.new(name: 'PaymentConnectorStatus')
    PaymentConnectorSummaries = Shapes::ListShape.new(name: 'PaymentConnectorSummaries')
    PaymentConnectorSummary = Shapes::StructureShape.new(name: 'PaymentConnectorSummary')
    PaymentConnectorType = Shapes::StringShape.new(name: 'PaymentConnectorType')
    PaymentCredentialProviderArn = Shapes::StringShape.new(name: 'PaymentCredentialProviderArn')
    PaymentCredentialProviderArnType = Shapes::StringShape.new(name: 'PaymentCredentialProviderArnType')
    PaymentCredentialProviderConfiguration = Shapes::StructureShape.new(name: 'PaymentCredentialProviderConfiguration')
    PaymentCredentialProviderItem = Shapes::StructureShape.new(name: 'PaymentCredentialProviderItem')
    PaymentCredentialProviderVendorType = Shapes::StringShape.new(name: 'PaymentCredentialProviderVendorType')
    PaymentCredentialProviders = Shapes::ListShape.new(name: 'PaymentCredentialProviders')
    PaymentManagerArn = Shapes::StringShape.new(name: 'PaymentManagerArn')
    PaymentManagerId = Shapes::StringShape.new(name: 'PaymentManagerId')
    PaymentManagerName = Shapes::StringShape.new(name: 'PaymentManagerName')
    PaymentManagerStatus = Shapes::StringShape.new(name: 'PaymentManagerStatus')
    PaymentManagerSummaries = Shapes::ListShape.new(name: 'PaymentManagerSummaries')
    PaymentManagerSummary = Shapes::StructureShape.new(name: 'PaymentManagerSummary')
    PaymentProviderConfigurationInput = Shapes::UnionShape.new(name: 'PaymentProviderConfigurationInput')
    PaymentProviderConfigurationOutput = Shapes::UnionShape.new(name: 'PaymentProviderConfigurationOutput')
    PaymentsAuthorizerType = Shapes::StringShape.new(name: 'PaymentsAuthorizerType')
    PaymentsDescription = Shapes::StringShape.new(name: 'PaymentsDescription')
    Period = Shapes::StringShape.new(name: 'Period')
    PermissionsConfiguration = Shapes::StructureShape.new(name: 'PermissionsConfiguration')
    Policies = Shapes::ListShape.new(name: 'Policies')
    Policy = Shapes::StructureShape.new(name: 'Policy')
    PolicyArn = Shapes::StringShape.new(name: 'PolicyArn')
    PolicyDefinition = Shapes::UnionShape.new(name: 'PolicyDefinition')
    PolicyEngine = Shapes::StructureShape.new(name: 'PolicyEngine')
    PolicyEngineArn = Shapes::StringShape.new(name: 'PolicyEngineArn')
    PolicyEngineName = Shapes::StringShape.new(name: 'PolicyEngineName')
    PolicyEngineStatus = Shapes::StringShape.new(name: 'PolicyEngineStatus')
    PolicyEngineSummary = Shapes::StructureShape.new(name: 'PolicyEngineSummary')
    PolicyEngineSummaryList = Shapes::ListShape.new(name: 'PolicyEngineSummaryList')
    PolicyEngines = Shapes::ListShape.new(name: 'PolicyEngines')
    PolicyGeneration = Shapes::StructureShape.new(name: 'PolicyGeneration')
    PolicyGenerationArn = Shapes::StringShape.new(name: 'PolicyGenerationArn')
    PolicyGenerationAsset = Shapes::StructureShape.new(name: 'PolicyGenerationAsset')
    PolicyGenerationAssets = Shapes::ListShape.new(name: 'PolicyGenerationAssets')
    PolicyGenerationDetails = Shapes::StructureShape.new(name: 'PolicyGenerationDetails')
    PolicyGenerationName = Shapes::StringShape.new(name: 'PolicyGenerationName')
    PolicyGenerationStatus = Shapes::StringShape.new(name: 'PolicyGenerationStatus')
    PolicyGenerationSummary = Shapes::StructureShape.new(name: 'PolicyGenerationSummary')
    PolicyGenerationSummaryList = Shapes::ListShape.new(name: 'PolicyGenerationSummaryList')
    PolicyGenerations = Shapes::ListShape.new(name: 'PolicyGenerations')
    PolicyName = Shapes::StringShape.new(name: 'PolicyName')
    PolicyStatement = Shapes::StructureShape.new(name: 'PolicyStatement')
    PolicyStatus = Shapes::StringShape.new(name: 'PolicyStatus')
    PolicyStatusReasons = Shapes::ListShape.new(name: 'PolicyStatusReasons')
    PolicySummary = Shapes::StructureShape.new(name: 'PolicySummary')
    PolicySummaryList = Shapes::ListShape.new(name: 'PolicySummaryList')
    PolicyValidationMode = Shapes::StringShape.new(name: 'PolicyValidationMode')
    PortalUrlType = Shapes::StringShape.new(name: 'PortalUrlType')
    PrincipalMatchOperator = Shapes::StringShape.new(name: 'PrincipalMatchOperator')
    PrivateEndpoint = Shapes::UnionShape.new(name: 'PrivateEndpoint')
    PrivateEndpointManagedResources = Shapes::ListShape.new(name: 'PrivateEndpointManagedResources')
    PrivateEndpointOverride = Shapes::StructureShape.new(name: 'PrivateEndpointOverride')
    PrivateEndpointOverrideDomain = Shapes::StringShape.new(name: 'PrivateEndpointOverrideDomain')
    PrivateEndpointOverrides = Shapes::ListShape.new(name: 'PrivateEndpointOverrides')
    PrivateKeyJwtConfig = Shapes::StructureShape.new(name: 'PrivateKeyJwtConfig')
    PrivateKeySource = Shapes::UnionShape.new(name: 'PrivateKeySource')
    Prompt = Shapes::StringShape.new(name: 'Prompt')
    ProtocolConfiguration = Shapes::StructureShape.new(name: 'ProtocolConfiguration')
    Provider = Shapes::StringShape.new(name: 'Provider')
    ProviderPrefix = Shapes::StructureShape.new(name: 'ProviderPrefix')
    ProviderPrefixSeparatorString = Shapes::StringShape.new(name: 'ProviderPrefixSeparatorString')
    PutResourcePolicyRequest = Shapes::StructureShape.new(name: 'PutResourcePolicyRequest')
    PutResourcePolicyResponse = Shapes::StructureShape.new(name: 'PutResourcePolicyResponse')
    RateConfig = Shapes::StructureShape.new(name: 'RateConfig')
    RateConfigRateDouble = Shapes::FloatShape.new(name: 'RateConfigRateDouble')
    RateConfigs = Shapes::ListShape.new(name: 'RateConfigs')
    RatingScale = Shapes::UnionShape.new(name: 'RatingScale')
    ReasoningConfiguration = Shapes::StructureShape.new(name: 'ReasoningConfiguration')
    ReasoningConfigurationEffortString = Shapes::StringShape.new(name: 'ReasoningConfigurationEffortString')
    RecordIdentifier = Shapes::StringShape.new(name: 'RecordIdentifier')
    RecordingConfig = Shapes::StructureShape.new(name: 'RecordingConfig')
    ReflectionConfiguration = Shapes::UnionShape.new(name: 'ReflectionConfiguration')
    RegistryArn = Shapes::StringShape.new(name: 'RegistryArn')
    RegistryAuthorizerType = Shapes::StringShape.new(name: 'RegistryAuthorizerType')
    RegistryId = Shapes::StringShape.new(name: 'RegistryId')
    RegistryIdentifier = Shapes::StringShape.new(name: 'RegistryIdentifier')
    RegistryName = Shapes::StringShape.new(name: 'RegistryName')
    RegistryRecordArn = Shapes::StringShape.new(name: 'RegistryRecordArn')
    RegistryRecordCredentialProviderConfiguration = Shapes::StructureShape.new(name: 'RegistryRecordCredentialProviderConfiguration')
    RegistryRecordCredentialProviderConfigurationList = Shapes::ListShape.new(name: 'RegistryRecordCredentialProviderConfigurationList')
    RegistryRecordCredentialProviderType = Shapes::StringShape.new(name: 'RegistryRecordCredentialProviderType')
    RegistryRecordCredentialProviderUnion = Shapes::UnionShape.new(name: 'RegistryRecordCredentialProviderUnion')
    RegistryRecordIamCredentialProvider = Shapes::StructureShape.new(name: 'RegistryRecordIamCredentialProvider')
    RegistryRecordId = Shapes::StringShape.new(name: 'RegistryRecordId')
    RegistryRecordName = Shapes::StringShape.new(name: 'RegistryRecordName')
    RegistryRecordOAuthCredentialProvider = Shapes::StructureShape.new(name: 'RegistryRecordOAuthCredentialProvider')
    RegistryRecordOAuthGrantType = Shapes::StringShape.new(name: 'RegistryRecordOAuthGrantType')
    RegistryRecordStatus = Shapes::StringShape.new(name: 'RegistryRecordStatus')
    RegistryRecordSummary = Shapes::StructureShape.new(name: 'RegistryRecordSummary')
    RegistryRecordSummaryList = Shapes::ListShape.new(name: 'RegistryRecordSummaryList')
    RegistryRecordVersion = Shapes::StringShape.new(name: 'RegistryRecordVersion')
    RegistryStatus = Shapes::StringShape.new(name: 'RegistryStatus')
    RegistrySummary = Shapes::StructureShape.new(name: 'RegistrySummary')
    RegistrySummaryList = Shapes::ListShape.new(name: 'RegistrySummaryList')
    RequestHeaderAllowlist = Shapes::ListShape.new(name: 'RequestHeaderAllowlist')
    RequestHeaderConfiguration = Shapes::UnionShape.new(name: 'RequestHeaderConfiguration')
    RequiredProperties = Shapes::ListShape.new(name: 'RequiredProperties')
    Resource = Shapes::UnionShape.new(name: 'Resource')
    ResourceAssociationArn = Shapes::StringShape.new(name: 'ResourceAssociationArn')
    ResourceConfigurationIdentifier = Shapes::StringShape.new(name: 'ResourceConfigurationIdentifier')
    ResourceGatewayArn = Shapes::StringShape.new(name: 'ResourceGatewayArn')
    ResourceId = Shapes::StringShape.new(name: 'ResourceId')
    ResourceLimitExceededException = Shapes::StructureShape.new(name: 'ResourceLimitExceededException')
    ResourceLocation = Shapes::UnionShape.new(name: 'ResourceLocation')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceOauth2ReturnUrlListType = Shapes::ListShape.new(name: 'ResourceOauth2ReturnUrlListType')
    ResourceOauth2ReturnUrlType = Shapes::StringShape.new(name: 'ResourceOauth2ReturnUrlType')
    ResourcePolicyBody = Shapes::StringShape.new(name: 'ResourcePolicyBody')
    ResourceType = Shapes::StringShape.new(name: 'ResourceType')
    ResponseListType = Shapes::ListShape.new(name: 'ResponseListType')
    ResponseType = Shapes::StringShape.new(name: 'ResponseType')
    RestApiMethod = Shapes::StringShape.new(name: 'RestApiMethod')
    RestApiMethods = Shapes::ListShape.new(name: 'RestApiMethods')
    ResultDestination = Shapes::StringShape.new(name: 'ResultDestination')
    RetryableConflictException = Shapes::StructureShape.new(name: 'RetryableConflictException')
    RoleArn = Shapes::StringShape.new(name: 'RoleArn')
    RootVolumeConfiguration = Shapes::StructureShape.new(name: 'RootVolumeConfiguration')
    RootVolumeConfigurationFreeSpaceGiBInteger = Shapes::IntegerShape.new(name: 'RootVolumeConfigurationFreeSpaceGiBInteger')
    RootVolumeConfigurationThroughputInteger = Shapes::IntegerShape.new(name: 'RootVolumeConfigurationThroughputInteger')
    RouteToTargetAction = Shapes::UnionShape.new(name: 'RouteToTargetAction')
    RoutingDomain = Shapes::StringShape.new(name: 'RoutingDomain')
    Rule = Shapes::StructureShape.new(name: 'Rule')
    RuntimeArn = Shapes::StringShape.new(name: 'RuntimeArn')
    RuntimeContainerUri = Shapes::StringShape.new(name: 'RuntimeContainerUri')
    RuntimeMetadataConfiguration = Shapes::StructureShape.new(name: 'RuntimeMetadataConfiguration')
    RuntimeQualifier = Shapes::StringShape.new(name: 'RuntimeQualifier')
    RuntimeTargetConfiguration = Shapes::StructureShape.new(name: 'RuntimeTargetConfiguration')
    S3BucketUri = Shapes::StringShape.new(name: 'S3BucketUri')
    S3Configuration = Shapes::StructureShape.new(name: 'S3Configuration')
    S3FilesAccessPointArn = Shapes::StringShape.new(name: 'S3FilesAccessPointArn')
    S3FilesAccessPointConfiguration = Shapes::StructureShape.new(name: 'S3FilesAccessPointConfiguration')
    S3FilesConfiguration = Shapes::StructureShape.new(name: 'S3FilesConfiguration')
    S3FilesFileSystemArn = Shapes::StringShape.new(name: 'S3FilesFileSystemArn')
    S3Location = Shapes::StructureShape.new(name: 'S3Location')
    S3LocationBucketString = Shapes::StringShape.new(name: 'S3LocationBucketString')
    S3LocationPrefixString = Shapes::StringShape.new(name: 'S3LocationPrefixString')
    S3LocationVersionIdString = Shapes::StringShape.new(name: 'S3LocationVersionIdString')
    S3Source = Shapes::StructureShape.new(name: 'S3Source')
    S3Uri = Shapes::StringShape.new(name: 'S3Uri')
    SSHKeyName = Shapes::StringShape.new(name: 'SSHKeyName')
    SalesforceOauth2ProviderConfigInput = Shapes::StructureShape.new(name: 'SalesforceOauth2ProviderConfigInput')
    SalesforceOauth2ProviderConfigOutput = Shapes::StructureShape.new(name: 'SalesforceOauth2ProviderConfigOutput')
    SamplingConfig = Shapes::StructureShape.new(name: 'SamplingConfig')
    SamplingConfigSamplingPercentageDouble = Shapes::FloatShape.new(name: 'SamplingConfigSamplingPercentageDouble')
    SandboxName = Shapes::StringShape.new(name: 'SandboxName')
    SchemaDefinition = Shapes::StructureShape.new(name: 'SchemaDefinition')
    SchemaProperties = Shapes::MapShape.new(name: 'SchemaProperties')
    SchemaType = Shapes::StringShape.new(name: 'SchemaType')
    SchemaVersion = Shapes::StringShape.new(name: 'SchemaVersion')
    ScopeList = Shapes::ListShape.new(name: 'ScopeList')
    ScopeType = Shapes::StringShape.new(name: 'ScopeType')
    ScopesListType = Shapes::ListShape.new(name: 'ScopesListType')
    SearchType = Shapes::StringShape.new(name: 'SearchType')
    Secret = Shapes::StructureShape.new(name: 'Secret')
    SecretArn = Shapes::StringShape.new(name: 'SecretArn')
    SecretIdType = Shapes::StringShape.new(name: 'SecretIdType')
    SecretJsonKeyType = Shapes::StringShape.new(name: 'SecretJsonKeyType')
    SecretReference = Shapes::StructureShape.new(name: 'SecretReference')
    SecretSourceType = Shapes::StringShape.new(name: 'SecretSourceType')
    SecretsManagerLocation = Shapes::StructureShape.new(name: 'SecretsManagerLocation')
    SecurityGroupId = Shapes::StringShape.new(name: 'SecurityGroupId')
    SecurityGroupIdentifier = Shapes::StringShape.new(name: 'SecurityGroupIdentifier')
    SecurityGroupIds = Shapes::ListShape.new(name: 'SecurityGroupIds')
    SecurityGroups = Shapes::ListShape.new(name: 'SecurityGroups')
    SelfManagedConfiguration = Shapes::StructureShape.new(name: 'SelfManagedConfiguration')
    SelfManagedConfigurationInput = Shapes::StructureShape.new(name: 'SelfManagedConfigurationInput')
    SelfManagedConfigurationInputHistoricalContextWindowSizeInteger = Shapes::IntegerShape.new(name: 'SelfManagedConfigurationInputHistoricalContextWindowSizeInteger')
    SelfManagedLatticeResource = Shapes::UnionShape.new(name: 'SelfManagedLatticeResource')
    SemanticConsolidationOverride = Shapes::StructureShape.new(name: 'SemanticConsolidationOverride')
    SemanticExtractionOverride = Shapes::StructureShape.new(name: 'SemanticExtractionOverride')
    SemanticMemoryStrategyInput = Shapes::StructureShape.new(name: 'SemanticMemoryStrategyInput')
    SemanticOverrideConfigurationInput = Shapes::StructureShape.new(name: 'SemanticOverrideConfigurationInput')
    SemanticOverrideConsolidationConfigurationInput = Shapes::StructureShape.new(name: 'SemanticOverrideConsolidationConfigurationInput')
    SemanticOverrideExtractionConfigurationInput = Shapes::StructureShape.new(name: 'SemanticOverrideExtractionConfigurationInput')
    SensitiveJson = Shapes::DocumentShape.new(name: 'SensitiveJson', document: true)
    SensitiveText = Shapes::StringShape.new(name: 'SensitiveText')
    ServerDefinition = Shapes::StructureShape.new(name: 'ServerDefinition')
    ServerProtocol = Shapes::StringShape.new(name: 'ServerProtocol')
    ServiceException = Shapes::StructureShape.new(name: 'ServiceException')
    ServiceName = Shapes::StringShape.new(name: 'ServiceName')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    SessionConfig = Shapes::StructureShape.new(name: 'SessionConfig')
    SessionConfigSessionTimeoutMinutesInteger = Shapes::IntegerShape.new(name: 'SessionConfigSessionTimeoutMinutesInteger')
    SessionConfiguration = Shapes::StructureShape.new(name: 'SessionConfiguration')
    SessionConfigurationSessionTimeoutInSecondsInteger = Shapes::IntegerShape.new(name: 'SessionConfigurationSessionTimeoutInSecondsInteger')
    SessionStorageConfiguration = Shapes::StructureShape.new(name: 'SessionStorageConfiguration')
    SetTokenVaultCMKRequest = Shapes::StructureShape.new(name: 'SetTokenVaultCMKRequest')
    SetTokenVaultCMKResponse = Shapes::StructureShape.new(name: 'SetTokenVaultCMKResponse')
    SigningAlgorithm = Shapes::StringShape.new(name: 'SigningAlgorithm')
    SkillDefinition = Shapes::StructureShape.new(name: 'SkillDefinition')
    SkillMdDefinition = Shapes::StructureShape.new(name: 'SkillMdDefinition')
    SlackOauth2ProviderConfigInput = Shapes::StructureShape.new(name: 'SlackOauth2ProviderConfigInput')
    SlackOauth2ProviderConfigOutput = Shapes::StructureShape.new(name: 'SlackOauth2ProviderConfigOutput')
    StartPolicyGenerationRequest = Shapes::StructureShape.new(name: 'StartPolicyGenerationRequest')
    StartPolicyGenerationResponse = Shapes::StructureShape.new(name: 'StartPolicyGenerationResponse')
    Statement = Shapes::StringShape.new(name: 'Statement')
    StaticOverride = Shapes::StructureShape.new(name: 'StaticOverride')
    StaticOverrideBundleVersionString = Shapes::StringShape.new(name: 'StaticOverrideBundleVersionString')
    StaticQueryParameterConflictResolution = Shapes::StringShape.new(name: 'StaticQueryParameterConflictResolution')
    StaticQueryParameterName = Shapes::StringShape.new(name: 'StaticQueryParameterName')
    StaticQueryParameterValue = Shapes::StringShape.new(name: 'StaticQueryParameterValue')
    StaticQueryParameters = Shapes::MapShape.new(name: 'StaticQueryParameters')
    StaticRoute = Shapes::StructureShape.new(name: 'StaticRoute')
    Status = Shapes::StringShape.new(name: 'Status')
    StatusReason = Shapes::StringShape.new(name: 'StatusReason')
    StatusReasonType = Shapes::StringShape.new(name: 'StatusReasonType')
    StatusReasons = Shapes::ListShape.new(name: 'StatusReasons')
    StickinessConfiguration = Shapes::StructureShape.new(name: 'StickinessConfiguration')
    StickinessConfigurationIdentifierString = Shapes::StringShape.new(name: 'StickinessConfigurationIdentifierString')
    StickinessTimeout = Shapes::IntegerShape.new(name: 'StickinessTimeout')
    StrategyConfiguration = Shapes::StructureShape.new(name: 'StrategyConfiguration')
    StreamDeliveryResource = Shapes::UnionShape.new(name: 'StreamDeliveryResource')
    StreamDeliveryResources = Shapes::StructureShape.new(name: 'StreamDeliveryResources')
    StreamDeliveryResourcesList = Shapes::ListShape.new(name: 'StreamDeliveryResourcesList')
    StreamingConfiguration = Shapes::StructureShape.new(name: 'StreamingConfiguration')
    String = Shapes::StringShape.new(name: 'String')
    StringListValidation = Shapes::StructureShape.new(name: 'StringListValidation')
    StringListValidationMaxItemsInteger = Shapes::IntegerShape.new(name: 'StringListValidationMaxItemsInteger')
    StringValidation = Shapes::StructureShape.new(name: 'StringValidation')
    StripePrivyAppIdType = Shapes::StringShape.new(name: 'StripePrivyAppIdType')
    StripePrivyAuthorizationIdType = Shapes::StringShape.new(name: 'StripePrivyAuthorizationIdType')
    StripePrivyConfigurationInput = Shapes::StructureShape.new(name: 'StripePrivyConfigurationInput')
    StripePrivyConfigurationOutput = Shapes::StructureShape.new(name: 'StripePrivyConfigurationOutput')
    SubmitRegistryRecordForApprovalRequest = Shapes::StructureShape.new(name: 'SubmitRegistryRecordForApprovalRequest')
    SubmitRegistryRecordForApprovalResponse = Shapes::StructureShape.new(name: 'SubmitRegistryRecordForApprovalResponse')
    SubnetId = Shapes::StringShape.new(name: 'SubnetId')
    SubnetIds = Shapes::ListShape.new(name: 'SubnetIds')
    Subnets = Shapes::ListShape.new(name: 'Subnets')
    SubscriptionRequiredException = Shapes::StructureShape.new(name: 'SubscriptionRequiredException')
    SummaryConsolidationOverride = Shapes::StructureShape.new(name: 'SummaryConsolidationOverride')
    SummaryMemoryStrategyInput = Shapes::StructureShape.new(name: 'SummaryMemoryStrategyInput')
    SummaryOverrideConfigurationInput = Shapes::StructureShape.new(name: 'SummaryOverrideConfigurationInput')
    SummaryOverrideConsolidationConfigurationInput = Shapes::StructureShape.new(name: 'SummaryOverrideConsolidationConfigurationInput')
    SynchronizationConfiguration = Shapes::StructureShape.new(name: 'SynchronizationConfiguration')
    SynchronizationType = Shapes::StringShape.new(name: 'SynchronizationType')
    SynchronizeGatewayTargetsRequest = Shapes::StructureShape.new(name: 'SynchronizeGatewayTargetsRequest')
    SynchronizeGatewayTargetsResponse = Shapes::StructureShape.new(name: 'SynchronizeGatewayTargetsResponse')
    SystemManagedBlock = Shapes::StructureShape.new(name: 'SystemManagedBlock')
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
    TargetProtocolType = Shapes::StringShape.new(name: 'TargetProtocolType')
    TargetResourcePriority = Shapes::IntegerShape.new(name: 'TargetResourcePriority')
    TargetStatus = Shapes::StringShape.new(name: 'TargetStatus')
    TargetSummaries = Shapes::ListShape.new(name: 'TargetSummaries')
    TargetSummary = Shapes::StructureShape.new(name: 'TargetSummary')
    TargetTrafficSplitEntries = Shapes::ListShape.new(name: 'TargetTrafficSplitEntries')
    TargetTrafficSplitEntry = Shapes::StructureShape.new(name: 'TargetTrafficSplitEntry')
    TargetTrafficSplitEntryDescriptionString = Shapes::StringShape.new(name: 'TargetTrafficSplitEntryDescriptionString')
    TargetTrafficSplitEntryNameString = Shapes::StringShape.new(name: 'TargetTrafficSplitEntryNameString')
    TargetTrafficSplitEntryWeightInteger = Shapes::IntegerShape.new(name: 'TargetTrafficSplitEntryWeightInteger')
    TargetType = Shapes::StringShape.new(name: 'TargetType')
    Temperature = Shapes::FloatShape.new(name: 'Temperature')
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
    TokenExchangeGrantTypeConfigType = Shapes::StructureShape.new(name: 'TokenExchangeGrantTypeConfigType')
    TokenVaultIdType = Shapes::StringShape.new(name: 'TokenVaultIdType')
    ToolDefinition = Shapes::StructureShape.new(name: 'ToolDefinition')
    ToolDefinitions = Shapes::ListShape.new(name: 'ToolDefinitions')
    ToolSchema = Shapes::UnionShape.new(name: 'ToolSchema')
    ToolSecretArn = Shapes::StringShape.new(name: 'ToolSecretArn')
    ToolsDefinition = Shapes::StructureShape.new(name: 'ToolsDefinition')
    ToolsFileSystemConfiguration = Shapes::UnionShape.new(name: 'ToolsFileSystemConfiguration')
    ToolsFileSystemConfigurations = Shapes::ListShape.new(name: 'ToolsFileSystemConfigurations')
    TopK = Shapes::IntegerShape.new(name: 'TopK')
    TopP = Shapes::FloatShape.new(name: 'TopP')
    TrafficSplitEntries = Shapes::ListShape.new(name: 'TrafficSplitEntries')
    TrafficSplitEntry = Shapes::StructureShape.new(name: 'TrafficSplitEntry')
    TrafficSplitEntryDescriptionString = Shapes::StringShape.new(name: 'TrafficSplitEntryDescriptionString')
    TrafficSplitEntryNameString = Shapes::StringShape.new(name: 'TrafficSplitEntryNameString')
    TrafficSplitEntryWeightInteger = Shapes::IntegerShape.new(name: 'TrafficSplitEntryWeightInteger')
    TrafficSplitMetadataKey = Shapes::StringShape.new(name: 'TrafficSplitMetadataKey')
    TrafficSplitMetadataMap = Shapes::MapShape.new(name: 'TrafficSplitMetadataMap')
    TrafficSplitMetadataValue = Shapes::StringShape.new(name: 'TrafficSplitMetadataValue')
    TriggerCondition = Shapes::UnionShape.new(name: 'TriggerCondition')
    TriggerConditionInput = Shapes::UnionShape.new(name: 'TriggerConditionInput')
    TriggerConditionInputList = Shapes::ListShape.new(name: 'TriggerConditionInputList')
    TriggerConditionsList = Shapes::ListShape.new(name: 'TriggerConditionsList')
    UnauthorizedException = Shapes::StructureShape.new(name: 'UnauthorizedException')
    Unit = Shapes::StructureShape.new(name: 'Unit')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateAgentRuntimeEndpointRequest = Shapes::StructureShape.new(name: 'UpdateAgentRuntimeEndpointRequest')
    UpdateAgentRuntimeEndpointResponse = Shapes::StructureShape.new(name: 'UpdateAgentRuntimeEndpointResponse')
    UpdateAgentRuntimeRequest = Shapes::StructureShape.new(name: 'UpdateAgentRuntimeRequest')
    UpdateAgentRuntimeResponse = Shapes::StructureShape.new(name: 'UpdateAgentRuntimeResponse')
    UpdateApiKeyCredentialProviderRequest = Shapes::StructureShape.new(name: 'UpdateApiKeyCredentialProviderRequest')
    UpdateApiKeyCredentialProviderResponse = Shapes::StructureShape.new(name: 'UpdateApiKeyCredentialProviderResponse')
    UpdateCapacityProviderInput = Shapes::StructureShape.new(name: 'UpdateCapacityProviderInput')
    UpdateCapacityProviderOutput = Shapes::StructureShape.new(name: 'UpdateCapacityProviderOutput')
    UpdateConfigurationBundleRequest = Shapes::StructureShape.new(name: 'UpdateConfigurationBundleRequest')
    UpdateConfigurationBundleRequestCommitMessageString = Shapes::StringShape.new(name: 'UpdateConfigurationBundleRequestCommitMessageString')
    UpdateConfigurationBundleResponse = Shapes::StructureShape.new(name: 'UpdateConfigurationBundleResponse')
    UpdateConsentPortalRequest = Shapes::StructureShape.new(name: 'UpdateConsentPortalRequest')
    UpdateConsentPortalResponse = Shapes::StructureShape.new(name: 'UpdateConsentPortalResponse')
    UpdateDatasetExamplesRequest = Shapes::StructureShape.new(name: 'UpdateDatasetExamplesRequest')
    UpdateDatasetExamplesRequestExamplesList = Shapes::ListShape.new(name: 'UpdateDatasetExamplesRequestExamplesList')
    UpdateDatasetExamplesResponse = Shapes::StructureShape.new(name: 'UpdateDatasetExamplesResponse')
    UpdateDatasetRequest = Shapes::StructureShape.new(name: 'UpdateDatasetRequest')
    UpdateDatasetRequestDescriptionString = Shapes::StringShape.new(name: 'UpdateDatasetRequestDescriptionString')
    UpdateDatasetResponse = Shapes::StructureShape.new(name: 'UpdateDatasetResponse')
    UpdateEvaluatorRequest = Shapes::StructureShape.new(name: 'UpdateEvaluatorRequest')
    UpdateEvaluatorResponse = Shapes::StructureShape.new(name: 'UpdateEvaluatorResponse')
    UpdateGatewayRateLimitRequest = Shapes::StructureShape.new(name: 'UpdateGatewayRateLimitRequest')
    UpdateGatewayRateLimitResponse = Shapes::StructureShape.new(name: 'UpdateGatewayRateLimitResponse')
    UpdateGatewayRequest = Shapes::StructureShape.new(name: 'UpdateGatewayRequest')
    UpdateGatewayResponse = Shapes::StructureShape.new(name: 'UpdateGatewayResponse')
    UpdateGatewayRuleRequest = Shapes::StructureShape.new(name: 'UpdateGatewayRuleRequest')
    UpdateGatewayRuleResponse = Shapes::StructureShape.new(name: 'UpdateGatewayRuleResponse')
    UpdateGatewayTargetRequest = Shapes::StructureShape.new(name: 'UpdateGatewayTargetRequest')
    UpdateGatewayTargetResponse = Shapes::StructureShape.new(name: 'UpdateGatewayTargetResponse')
    UpdateHarnessEndpointRequest = Shapes::StructureShape.new(name: 'UpdateHarnessEndpointRequest')
    UpdateHarnessEndpointResponse = Shapes::StructureShape.new(name: 'UpdateHarnessEndpointResponse')
    UpdateHarnessRequest = Shapes::StructureShape.new(name: 'UpdateHarnessRequest')
    UpdateHarnessResponse = Shapes::StructureShape.new(name: 'UpdateHarnessResponse')
    UpdateMemoryInput = Shapes::StructureShape.new(name: 'UpdateMemoryInput')
    UpdateMemoryInputClientTokenString = Shapes::StringShape.new(name: 'UpdateMemoryInputClientTokenString')
    UpdateMemoryInputEventExpiryDurationInteger = Shapes::IntegerShape.new(name: 'UpdateMemoryInputEventExpiryDurationInteger')
    UpdateMemoryOutput = Shapes::StructureShape.new(name: 'UpdateMemoryOutput')
    UpdateOauth2CredentialProviderRequest = Shapes::StructureShape.new(name: 'UpdateOauth2CredentialProviderRequest')
    UpdateOauth2CredentialProviderResponse = Shapes::StructureShape.new(name: 'UpdateOauth2CredentialProviderResponse')
    UpdateOnlineEvaluationConfigRequest = Shapes::StructureShape.new(name: 'UpdateOnlineEvaluationConfigRequest')
    UpdateOnlineEvaluationConfigResponse = Shapes::StructureShape.new(name: 'UpdateOnlineEvaluationConfigResponse')
    UpdatePaymentConnectorRequest = Shapes::StructureShape.new(name: 'UpdatePaymentConnectorRequest')
    UpdatePaymentConnectorResponse = Shapes::StructureShape.new(name: 'UpdatePaymentConnectorResponse')
    UpdatePaymentCredentialProviderRequest = Shapes::StructureShape.new(name: 'UpdatePaymentCredentialProviderRequest')
    UpdatePaymentCredentialProviderResponse = Shapes::StructureShape.new(name: 'UpdatePaymentCredentialProviderResponse')
    UpdatePaymentManagerRequest = Shapes::StructureShape.new(name: 'UpdatePaymentManagerRequest')
    UpdatePaymentManagerResponse = Shapes::StructureShape.new(name: 'UpdatePaymentManagerResponse')
    UpdatePolicyEngineRequest = Shapes::StructureShape.new(name: 'UpdatePolicyEngineRequest')
    UpdatePolicyEngineResponse = Shapes::StructureShape.new(name: 'UpdatePolicyEngineResponse')
    UpdatePolicyRequest = Shapes::StructureShape.new(name: 'UpdatePolicyRequest')
    UpdatePolicyResponse = Shapes::StructureShape.new(name: 'UpdatePolicyResponse')
    UpdateRegistryRecordRequest = Shapes::StructureShape.new(name: 'UpdateRegistryRecordRequest')
    UpdateRegistryRecordResponse = Shapes::StructureShape.new(name: 'UpdateRegistryRecordResponse')
    UpdateRegistryRecordStatusRequest = Shapes::StructureShape.new(name: 'UpdateRegistryRecordStatusRequest')
    UpdateRegistryRecordStatusRequestStatusReasonString = Shapes::StringShape.new(name: 'UpdateRegistryRecordStatusRequestStatusReasonString')
    UpdateRegistryRecordStatusResponse = Shapes::StructureShape.new(name: 'UpdateRegistryRecordStatusResponse')
    UpdateRegistryRequest = Shapes::StructureShape.new(name: 'UpdateRegistryRequest')
    UpdateRegistryResponse = Shapes::StructureShape.new(name: 'UpdateRegistryResponse')
    UpdateWorkloadIdentityRequest = Shapes::StructureShape.new(name: 'UpdateWorkloadIdentityRequest')
    UpdateWorkloadIdentityResponse = Shapes::StructureShape.new(name: 'UpdateWorkloadIdentityResponse')
    UpdatedA2aDescriptor = Shapes::StructureShape.new(name: 'UpdatedA2aDescriptor')
    UpdatedAgentSkillsDescriptor = Shapes::StructureShape.new(name: 'UpdatedAgentSkillsDescriptor')
    UpdatedAgentSkillsDescriptorFields = Shapes::StructureShape.new(name: 'UpdatedAgentSkillsDescriptorFields')
    UpdatedApprovalConfiguration = Shapes::StructureShape.new(name: 'UpdatedApprovalConfiguration')
    UpdatedAuthorizerConfiguration = Shapes::StructureShape.new(name: 'UpdatedAuthorizerConfiguration')
    UpdatedCustomDescriptor = Shapes::StructureShape.new(name: 'UpdatedCustomDescriptor')
    UpdatedDescription = Shapes::StructureShape.new(name: 'UpdatedDescription')
    UpdatedDescriptors = Shapes::StructureShape.new(name: 'UpdatedDescriptors')
    UpdatedDescriptorsUnion = Shapes::StructureShape.new(name: 'UpdatedDescriptorsUnion')
    UpdatedHarnessEnvironmentArtifact = Shapes::StructureShape.new(name: 'UpdatedHarnessEnvironmentArtifact')
    UpdatedHarnessMemoryConfiguration = Shapes::StructureShape.new(name: 'UpdatedHarnessMemoryConfiguration')
    UpdatedMcpDescriptor = Shapes::StructureShape.new(name: 'UpdatedMcpDescriptor')
    UpdatedMcpDescriptorFields = Shapes::StructureShape.new(name: 'UpdatedMcpDescriptorFields')
    UpdatedServerDefinition = Shapes::StructureShape.new(name: 'UpdatedServerDefinition')
    UpdatedSkillDefinition = Shapes::StructureShape.new(name: 'UpdatedSkillDefinition')
    UpdatedSkillMdDefinition = Shapes::StructureShape.new(name: 'UpdatedSkillMdDefinition')
    UpdatedSynchronizationConfiguration = Shapes::StructureShape.new(name: 'UpdatedSynchronizationConfiguration')
    UpdatedSynchronizationType = Shapes::StructureShape.new(name: 'UpdatedSynchronizationType')
    UpdatedToolsDefinition = Shapes::StructureShape.new(name: 'UpdatedToolsDefinition')
    UserPreferenceConsolidationOverride = Shapes::StructureShape.new(name: 'UserPreferenceConsolidationOverride')
    UserPreferenceExtractionOverride = Shapes::StructureShape.new(name: 'UserPreferenceExtractionOverride')
    UserPreferenceMemoryStrategyInput = Shapes::StructureShape.new(name: 'UserPreferenceMemoryStrategyInput')
    UserPreferenceOverrideConfigurationInput = Shapes::StructureShape.new(name: 'UserPreferenceOverrideConfigurationInput')
    UserPreferenceOverrideConsolidationConfigurationInput = Shapes::StructureShape.new(name: 'UserPreferenceOverrideConsolidationConfigurationInput')
    UserPreferenceOverrideExtractionConfigurationInput = Shapes::StructureShape.new(name: 'UserPreferenceOverrideExtractionConfigurationInput')
    Validation = Shapes::UnionShape.new(name: 'Validation')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationExceptionField = Shapes::StructureShape.new(name: 'ValidationExceptionField')
    ValidationExceptionFieldList = Shapes::ListShape.new(name: 'ValidationExceptionFieldList')
    ValidationExceptionReason = Shapes::StringShape.new(name: 'ValidationExceptionReason')
    VersionCreatedBySource = Shapes::StructureShape.new(name: 'VersionCreatedBySource')
    VersionFilter = Shapes::StructureShape.new(name: 'VersionFilter')
    VersionLineageMetadata = Shapes::StructureShape.new(name: 'VersionLineageMetadata')
    VersionLineageMetadataCommitMessageString = Shapes::StringShape.new(name: 'VersionLineageMetadataCommitMessageString')
    VirtualDeviceName = Shapes::StringShape.new(name: 'VirtualDeviceName')
    VolumeConfiguration = Shapes::UnionShape.new(name: 'VolumeConfiguration')
    VolumeConfigurationList = Shapes::ListShape.new(name: 'VolumeConfigurationList')
    VolumeIops = Shapes::IntegerShape.new(name: 'VolumeIops')
    VolumeName = Shapes::StringShape.new(name: 'VolumeName')
    VolumeSizeGiB = Shapes::IntegerShape.new(name: 'VolumeSizeGiB')
    VolumeThroughput = Shapes::IntegerShape.new(name: 'VolumeThroughput')
    VpcConfig = Shapes::StructureShape.new(name: 'VpcConfig')
    VpcConfiguration = Shapes::StructureShape.new(name: 'VpcConfiguration')
    VpcConfigurationSecurityGroupsList = Shapes::ListShape.new(name: 'VpcConfigurationSecurityGroupsList')
    VpcConfigurationSubnetsList = Shapes::ListShape.new(name: 'VpcConfigurationSubnetsList')
    VpcIdentifier = Shapes::StringShape.new(name: 'VpcIdentifier')
    WafConfiguration = Shapes::StructureShape.new(name: 'WafConfiguration')
    WafFailureMode = Shapes::StringShape.new(name: 'WafFailureMode')
    WebAclArn = Shapes::StringShape.new(name: 'WebAclArn')
    WeightedOverride = Shapes::StructureShape.new(name: 'WeightedOverride')
    WeightedRoute = Shapes::StructureShape.new(name: 'WeightedRoute')
    WorkloadIdentityArn = Shapes::StringShape.new(name: 'WorkloadIdentityArn')
    WorkloadIdentityArnType = Shapes::StringShape.new(name: 'WorkloadIdentityArnType')
    WorkloadIdentityDetails = Shapes::StructureShape.new(name: 'WorkloadIdentityDetails')
    WorkloadIdentityList = Shapes::ListShape.new(name: 'WorkloadIdentityList')
    WorkloadIdentityNameListType = Shapes::ListShape.new(name: 'WorkloadIdentityNameListType')
    WorkloadIdentityNameType = Shapes::StringShape.new(name: 'WorkloadIdentityNameType')
    WorkloadIdentityType = Shapes::StructureShape.new(name: 'WorkloadIdentityType')
    entryPoint = Shapes::StringShape.new(name: 'entryPoint')

    A2aDescriptor.add_member(:agent_card, Shapes::ShapeRef.new(shape: AgentCardDefinition, location_name: "agentCard"))
    A2aDescriptor.struct_class = Types::A2aDescriptor

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    Action.add_member(:configuration_bundle, Shapes::ShapeRef.new(shape: ConfigurationBundleAction, location_name: "configurationBundle"))
    Action.add_member(:route_to_target, Shapes::ShapeRef.new(shape: RouteToTargetAction, location_name: "routeToTarget"))
    Action.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    Action.add_member_subclass(:configuration_bundle, Types::Action::ConfigurationBundle)
    Action.add_member_subclass(:route_to_target, Types::Action::RouteToTarget)
    Action.add_member_subclass(:unknown, Types::Action::Unknown)
    Action.struct_class = Types::Action

    Actions.member = Shapes::ShapeRef.new(shape: Action)

    AddDatasetExamplesRequest.add_member(:dataset_id, Shapes::ShapeRef.new(shape: DatasetId, required: true, location: "uri", location_name: "datasetId"))
    AddDatasetExamplesRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    AddDatasetExamplesRequest.add_member(:source, Shapes::ShapeRef.new(shape: DataSourceType, required: true, location_name: "source"))
    AddDatasetExamplesRequest.struct_class = Types::AddDatasetExamplesRequest

    AddDatasetExamplesResponse.add_member(:dataset_arn, Shapes::ShapeRef.new(shape: DatasetArn, required: true, location_name: "datasetArn"))
    AddDatasetExamplesResponse.add_member(:dataset_id, Shapes::ShapeRef.new(shape: DatasetId, required: true, location_name: "datasetId"))
    AddDatasetExamplesResponse.add_member(:status, Shapes::ShapeRef.new(shape: DatasetStatus, required: true, location_name: "status"))
    AddDatasetExamplesResponse.add_member(:added_count, Shapes::ShapeRef.new(shape: Long, required: true, location_name: "addedCount"))
    AddDatasetExamplesResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    AddDatasetExamplesResponse.add_member(:example_ids, Shapes::ShapeRef.new(shape: ExampleIdList, required: true, location_name: "exampleIds"))
    AddDatasetExamplesResponse.struct_class = Types::AddDatasetExamplesResponse

    AdditionalClaims.key = Shapes::ShapeRef.new(shape: AdditionalClaimName)
    AdditionalClaims.value = Shapes::ShapeRef.new(shape: AdditionalClaimValue)

    AdvertisedScopeMappingType.key = Shapes::ShapeRef.new(shape: AllowedScopeType)
    AdvertisedScopeMappingType.value = Shapes::ShapeRef.new(shape: AllowedScopeType)

    AgentCardDefinition.add_member(:schema_version, Shapes::ShapeRef.new(shape: SchemaVersion, location_name: "schemaVersion"))
    AgentCardDefinition.add_member(:inline_content, Shapes::ShapeRef.new(shape: InlineContent, location_name: "inlineContent"))
    AgentCardDefinition.struct_class = Types::AgentCardDefinition

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

    AgentRuntimeVersionSummary.add_member(:agent_runtime_arn, Shapes::ShapeRef.new(shape: AgentRuntimeArn, required: true, location_name: "agentRuntimeArn"))
    AgentRuntimeVersionSummary.add_member(:agent_runtime_version, Shapes::ShapeRef.new(shape: AgentRuntimeVersion, required: true, location_name: "agentRuntimeVersion"))
    AgentRuntimeVersionSummary.add_member(:status, Shapes::ShapeRef.new(shape: AgentRuntimeStatus, required: true, location_name: "status"))
    AgentRuntimeVersionSummary.struct_class = Types::AgentRuntimeVersionSummary

    AgentRuntimeVersionSummaryList.member = Shapes::ShapeRef.new(shape: AgentRuntimeVersionSummary)

    AgentRuntimes.member = Shapes::ShapeRef.new(shape: AgentRuntime)

    AgentSkillsDescriptor.add_member(:skill_md, Shapes::ShapeRef.new(shape: SkillMdDefinition, location_name: "skillMd"))
    AgentSkillsDescriptor.add_member(:skill_definition, Shapes::ShapeRef.new(shape: SkillDefinition, location_name: "skillDefinition"))
    AgentSkillsDescriptor.struct_class = Types::AgentSkillsDescriptor

    AllowedAudienceList.member = Shapes::ShapeRef.new(shape: AllowedAudience)

    AllowedClientsList.member = Shapes::ShapeRef.new(shape: AllowedClient)

    AllowedQueryParameters.member = Shapes::ShapeRef.new(shape: HttpQueryParameterName)

    AllowedRequestHeaders.member = Shapes::ShapeRef.new(shape: HttpHeaderName)

    AllowedResponseHeaders.member = Shapes::ShapeRef.new(shape: HttpHeaderName)

    AllowedScopesType.member = Shapes::ShapeRef.new(shape: AllowedScopeType)

    AllowedStringListValuesList.member = Shapes::ShapeRef.new(shape: AllowedStringListValue)

    AllowedStringValuesList.member = Shapes::ShapeRef.new(shape: AllowedStringValue)

    AllowedWorkloadConfiguration.add_member(:hosting_environments, Shapes::ShapeRef.new(shape: HostingEnvironmentListType, location_name: "hostingEnvironments"))
    AllowedWorkloadConfiguration.add_member(:workload_identities, Shapes::ShapeRef.new(shape: WorkloadIdentityNameListType, location_name: "workloadIdentities"))
    AllowedWorkloadConfiguration.struct_class = Types::AllowedWorkloadConfiguration

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

    ApprovalConfiguration.add_member(:auto_approval, Shapes::ShapeRef.new(shape: Boolean, location_name: "autoApproval"))
    ApprovalConfiguration.struct_class = Types::ApprovalConfiguration

    AtlassianOauth2ProviderConfigInput.add_member(:client_id, Shapes::ShapeRef.new(shape: ClientIdType, required: true, location_name: "clientId"))
    AtlassianOauth2ProviderConfigInput.add_member(:client_secret, Shapes::ShapeRef.new(shape: DefaultClientSecretType, location_name: "clientSecret"))
    AtlassianOauth2ProviderConfigInput.add_member(:client_secret_config, Shapes::ShapeRef.new(shape: SecretReference, location_name: "clientSecretConfig"))
    AtlassianOauth2ProviderConfigInput.add_member(:client_secret_source, Shapes::ShapeRef.new(shape: SecretSourceType, location_name: "clientSecretSource"))
    AtlassianOauth2ProviderConfigInput.struct_class = Types::AtlassianOauth2ProviderConfigInput

    AtlassianOauth2ProviderConfigOutput.add_member(:oauth_discovery, Shapes::ShapeRef.new(shape: Oauth2Discovery, required: true, location_name: "oauthDiscovery"))
    AtlassianOauth2ProviderConfigOutput.add_member(:client_id, Shapes::ShapeRef.new(shape: ClientIdType, location_name: "clientId"))
    AtlassianOauth2ProviderConfigOutput.struct_class = Types::AtlassianOauth2ProviderConfigOutput

    AuthorizationData.add_member(:oauth2, Shapes::ShapeRef.new(shape: OAuth2AuthorizationData, location_name: "oauth2"))
    AuthorizationData.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    AuthorizationData.add_member_subclass(:oauth2, Types::AuthorizationData::Oauth2)
    AuthorizationData.add_member_subclass(:unknown, Types::AuthorizationData::Unknown)
    AuthorizationData.struct_class = Types::AuthorizationData

    AuthorizerConfiguration.add_member(:custom_jwt_authorizer, Shapes::ShapeRef.new(shape: CustomJWTAuthorizerConfiguration, location_name: "customJWTAuthorizer"))
    AuthorizerConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    AuthorizerConfiguration.add_member_subclass(:custom_jwt_authorizer, Types::AuthorizerConfiguration::CustomJwtAuthorizer)
    AuthorizerConfiguration.add_member_subclass(:unknown, Types::AuthorizerConfiguration::Unknown)
    AuthorizerConfiguration.struct_class = Types::AuthorizerConfiguration

    AuthorizingClaimMatchValueType.add_member(:claim_match_value, Shapes::ShapeRef.new(shape: ClaimMatchValueType, required: true, location_name: "claimMatchValue"))
    AuthorizingClaimMatchValueType.add_member(:claim_match_operator, Shapes::ShapeRef.new(shape: ClaimMatchOperatorType, required: true, location_name: "claimMatchOperator"))
    AuthorizingClaimMatchValueType.struct_class = Types::AuthorizingClaimMatchValueType

    BatchPutGatewayRateLimitsRequest.add_member(:gateway_identifier, Shapes::ShapeRef.new(shape: GatewayIdentifier, required: true, location: "uri", location_name: "gatewayIdentifier"))
    BatchPutGatewayRateLimitsRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    BatchPutGatewayRateLimitsRequest.add_member(:rate_limits, Shapes::ShapeRef.new(shape: BatchPutLimitEntries, required: true, location_name: "rateLimits"))
    BatchPutGatewayRateLimitsRequest.struct_class = Types::BatchPutGatewayRateLimitsRequest

    BatchPutGatewayRateLimitsResponse.add_member(:rate_limits, Shapes::ShapeRef.new(shape: GatewayRateLimits, required: true, location_name: "rateLimits"))
    BatchPutGatewayRateLimitsResponse.struct_class = Types::BatchPutGatewayRateLimitsResponse

    BatchPutLimitEntries.member = Shapes::ShapeRef.new(shape: BatchPutLimitEntry)

    BatchPutLimitEntry.add_member(:rate_limit_id, Shapes::ShapeRef.new(shape: GatewayRateLimitId, location_name: "rateLimitId"))
    BatchPutLimitEntry.add_member(:description, Shapes::ShapeRef.new(shape: GatewayRateLimitDescription, location_name: "description"))
    BatchPutLimitEntry.add_member(:dimension_keys, Shapes::ShapeRef.new(shape: DimensionKeys, required: true, location_name: "dimensionKeys"))
    BatchPutLimitEntry.add_member(:entries, Shapes::ShapeRef.new(shape: LimitEntries, required: true, location_name: "entries"))
    BatchPutLimitEntry.struct_class = Types::BatchPutLimitEntry

    BedrockEvaluatorModelConfig.add_member(:model_id, Shapes::ShapeRef.new(shape: ModelId, required: true, location_name: "modelId"))
    BedrockEvaluatorModelConfig.add_member(:inference_config, Shapes::ShapeRef.new(shape: InferenceConfiguration, location_name: "inferenceConfig"))
    BedrockEvaluatorModelConfig.add_member(:additional_model_request_fields, Shapes::ShapeRef.new(shape: AdditionalModelRequestFields, location_name: "additionalModelRequestFields"))
    BedrockEvaluatorModelConfig.struct_class = Types::BedrockEvaluatorModelConfig

    BrowserEnterprisePolicies.member = Shapes::ShapeRef.new(shape: BrowserEnterprisePolicy)

    BrowserEnterprisePolicy.add_member(:location, Shapes::ShapeRef.new(shape: ResourceLocation, required: true, location_name: "location"))
    BrowserEnterprisePolicy.add_member(:type, Shapes::ShapeRef.new(shape: BrowserEnterprisePolicyType, location_name: "type"))
    BrowserEnterprisePolicy.struct_class = Types::BrowserEnterprisePolicy

    BrowserNetworkConfiguration.add_member(:network_mode, Shapes::ShapeRef.new(shape: BrowserNetworkMode, required: true, location_name: "networkMode"))
    BrowserNetworkConfiguration.add_member(:vpc_config, Shapes::ShapeRef.new(shape: VpcConfig, location_name: "vpcConfig"))
    BrowserNetworkConfiguration.struct_class = Types::BrowserNetworkConfiguration

    BrowserProfileSummaries.member = Shapes::ShapeRef.new(shape: BrowserProfileSummary)

    BrowserProfileSummary.add_member(:profile_id, Shapes::ShapeRef.new(shape: BrowserProfileId, required: true, location_name: "profileId"))
    BrowserProfileSummary.add_member(:profile_arn, Shapes::ShapeRef.new(shape: BrowserProfileArn, required: true, location_name: "profileArn"))
    BrowserProfileSummary.add_member(:name, Shapes::ShapeRef.new(shape: BrowserProfileName, required: true, location_name: "name"))
    BrowserProfileSummary.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    BrowserProfileSummary.add_member(:status, Shapes::ShapeRef.new(shape: BrowserProfileStatus, required: true, location_name: "status"))
    BrowserProfileSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    BrowserProfileSummary.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "lastUpdatedAt"))
    BrowserProfileSummary.add_member(:last_saved_at, Shapes::ShapeRef.new(shape: DateTimestamp, location_name: "lastSavedAt"))
    BrowserProfileSummary.add_member(:last_saved_browser_session_id, Shapes::ShapeRef.new(shape: BrowserSessionId, location_name: "lastSavedBrowserSessionId"))
    BrowserProfileSummary.add_member(:last_saved_browser_id, Shapes::ShapeRef.new(shape: BrowserId, location_name: "lastSavedBrowserId"))
    BrowserProfileSummary.struct_class = Types::BrowserProfileSummary

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

    CapacityProviderConfiguration.add_member(:capacity_provider_arn, Shapes::ShapeRef.new(shape: CapacityProviderArn, required: true, location_name: "capacityProviderArn"))
    CapacityProviderConfiguration.struct_class = Types::CapacityProviderConfiguration

    CapacityProviderList.member = Shapes::ShapeRef.new(shape: CapacityProviderSummary)

    CapacityProviderSummary.add_member(:capacity_provider_id, Shapes::ShapeRef.new(shape: CapacityProviderId, required: true, location_name: "capacityProviderId"))
    CapacityProviderSummary.add_member(:capacity_provider_arn, Shapes::ShapeRef.new(shape: CapacityProviderArn, required: true, location_name: "capacityProviderArn"))
    CapacityProviderSummary.add_member(:name, Shapes::ShapeRef.new(shape: CapacityProviderName, required: true, location_name: "name"))
    CapacityProviderSummary.add_member(:status, Shapes::ShapeRef.new(shape: CapacityProviderStatus, required: true, location_name: "status"))
    CapacityProviderSummary.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "lastUpdatedAt"))
    CapacityProviderSummary.struct_class = Types::CapacityProviderSummary

    CapacityProviderVolumeConfiguration.add_member(:volume_name, Shapes::ShapeRef.new(shape: CapacityProviderVolumeName, required: true, location_name: "volumeName"))
    CapacityProviderVolumeConfiguration.add_member(:mount_path, Shapes::ShapeRef.new(shape: MountPath, required: true, location_name: "mountPath"))
    CapacityProviderVolumeConfiguration.struct_class = Types::CapacityProviderVolumeConfiguration

    CapacityReservationSpecification.add_member(:capacity_reservation_preference, Shapes::ShapeRef.new(shape: CapacityReservationPreference, location_name: "capacityReservationPreference"))
    CapacityReservationSpecification.add_member(:capacity_reservation_target, Shapes::ShapeRef.new(shape: CapacityReservationTarget, location_name: "capacityReservationTarget"))
    CapacityReservationSpecification.struct_class = Types::CapacityReservationSpecification

    CapacityReservationTarget.add_member(:capacity_reservation_id, Shapes::ShapeRef.new(shape: CapacityReservationId, location_name: "capacityReservationId"))
    CapacityReservationTarget.add_member(:capacity_reservation_resource_group_arn, Shapes::ShapeRef.new(shape: CapacityReservationResourceGroupArn, location_name: "capacityReservationResourceGroupArn"))
    CapacityReservationTarget.struct_class = Types::CapacityReservationTarget

    CategoricalScaleDefinition.add_member(:definition, Shapes::ShapeRef.new(shape: String, required: true, location_name: "definition"))
    CategoricalScaleDefinition.add_member(:label, Shapes::ShapeRef.new(shape: CategoricalScaleDefinitionLabelString, required: true, location_name: "label"))
    CategoricalScaleDefinition.struct_class = Types::CategoricalScaleDefinition

    CategoricalScaleDefinitions.member = Shapes::ShapeRef.new(shape: CategoricalScaleDefinition)

    CedarPolicy.add_member(:statement, Shapes::ShapeRef.new(shape: Statement, required: true, location_name: "statement"))
    CedarPolicy.struct_class = Types::CedarPolicy

    Certificate.add_member(:location, Shapes::ShapeRef.new(shape: CertificateLocation, required: true, location_name: "location"))
    Certificate.struct_class = Types::Certificate

    CertificateLocation.add_member(:secrets_manager, Shapes::ShapeRef.new(shape: SecretsManagerLocation, location_name: "secretsManager"))
    CertificateLocation.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    CertificateLocation.add_member_subclass(:secrets_manager, Types::CertificateLocation::SecretsManager)
    CertificateLocation.add_member_subclass(:unknown, Types::CertificateLocation::Unknown)
    CertificateLocation.struct_class = Types::CertificateLocation

    Certificates.member = Shapes::ShapeRef.new(shape: Certificate)

    ClaimMatchValueType.add_member(:match_value_string, Shapes::ShapeRef.new(shape: MatchValueString, location_name: "matchValueString"))
    ClaimMatchValueType.add_member(:match_value_string_list, Shapes::ShapeRef.new(shape: MatchValueStringList, location_name: "matchValueStringList"))
    ClaimMatchValueType.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ClaimMatchValueType.add_member_subclass(:match_value_string, Types::ClaimMatchValueType::MatchValueString)
    ClaimMatchValueType.add_member_subclass(:match_value_string_list, Types::ClaimMatchValueType::MatchValueStringList)
    ClaimMatchValueType.add_member_subclass(:unknown, Types::ClaimMatchValueType::Unknown)
    ClaimMatchValueType.struct_class = Types::ClaimMatchValueType

    CloudWatchLogsInputConfig.add_member(:log_group_names, Shapes::ShapeRef.new(shape: CloudWatchLogsInputConfigLogGroupNamesList, location_name: "logGroupNames"))
    CloudWatchLogsInputConfig.add_member(:log_group_name_prefixes, Shapes::ShapeRef.new(shape: CloudWatchLogsInputConfigLogGroupNamePrefixesList, location_name: "logGroupNamePrefixes"))
    CloudWatchLogsInputConfig.add_member(:service_names, Shapes::ShapeRef.new(shape: CloudWatchLogsInputConfigServiceNamesList, required: true, location_name: "serviceNames"))
    CloudWatchLogsInputConfig.struct_class = Types::CloudWatchLogsInputConfig

    CloudWatchLogsInputConfigLogGroupNamePrefixesList.member = Shapes::ShapeRef.new(shape: LogGroupNamePrefix)

    CloudWatchLogsInputConfigLogGroupNamesList.member = Shapes::ShapeRef.new(shape: LogGroupName)

    CloudWatchLogsInputConfigServiceNamesList.member = Shapes::ShapeRef.new(shape: ServiceName)

    CloudWatchOutputConfig.add_member(:log_group_name, Shapes::ShapeRef.new(shape: OptionalLogGroupName, location_name: "logGroupName"))
    CloudWatchOutputConfig.add_member(:metrics_namespace, Shapes::ShapeRef.new(shape: MetricsNamespace, location_name: "metricsNamespace"))
    CloudWatchOutputConfig.add_member(:result_destination, Shapes::ShapeRef.new(shape: ResultDestination, location_name: "resultDestination"))
    CloudWatchOutputConfig.struct_class = Types::CloudWatchOutputConfig

    ClusteringConfig.add_member(:frequencies, Shapes::ShapeRef.new(shape: ClusteringFrequencyList, required: true, location_name: "frequencies"))
    ClusteringConfig.struct_class = Types::ClusteringConfig

    ClusteringFrequencyList.member = Shapes::ShapeRef.new(shape: ClusteringFrequency)

    Code.add_member(:s3, Shapes::ShapeRef.new(shape: S3Location, location_name: "s3"))
    Code.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    Code.add_member_subclass(:s3, Types::Code::S3)
    Code.add_member_subclass(:unknown, Types::Code::Unknown)
    Code.struct_class = Types::Code

    CodeBasedEvaluatorConfig.add_member(:lambda_config, Shapes::ShapeRef.new(shape: LambdaEvaluatorConfig, location_name: "lambdaConfig"))
    CodeBasedEvaluatorConfig.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    CodeBasedEvaluatorConfig.add_member_subclass(:lambda_config, Types::CodeBasedEvaluatorConfig::LambdaConfig)
    CodeBasedEvaluatorConfig.add_member_subclass(:unknown, Types::CodeBasedEvaluatorConfig::Unknown)
    CodeBasedEvaluatorConfig.struct_class = Types::CodeBasedEvaluatorConfig

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

    CoinbaseCdpConfigurationInput.add_member(:api_key_id, Shapes::ShapeRef.new(shape: CoinbaseCdpApiKeyIdType, required: true, location_name: "apiKeyId"))
    CoinbaseCdpConfigurationInput.add_member(:api_key_secret, Shapes::ShapeRef.new(shape: DefaultCoinbaseCdpApiKeySecretType, location_name: "apiKeySecret"))
    CoinbaseCdpConfigurationInput.add_member(:api_key_secret_source, Shapes::ShapeRef.new(shape: SecretSourceType, location_name: "apiKeySecretSource"))
    CoinbaseCdpConfigurationInput.add_member(:api_key_secret_config, Shapes::ShapeRef.new(shape: SecretReference, location_name: "apiKeySecretConfig"))
    CoinbaseCdpConfigurationInput.add_member(:wallet_secret, Shapes::ShapeRef.new(shape: DefaultCoinbaseCdpWalletSecretType, location_name: "walletSecret"))
    CoinbaseCdpConfigurationInput.add_member(:wallet_secret_source, Shapes::ShapeRef.new(shape: SecretSourceType, location_name: "walletSecretSource"))
    CoinbaseCdpConfigurationInput.add_member(:wallet_secret_config, Shapes::ShapeRef.new(shape: SecretReference, location_name: "walletSecretConfig"))
    CoinbaseCdpConfigurationInput.struct_class = Types::CoinbaseCdpConfigurationInput

    CoinbaseCdpConfigurationOutput.add_member(:api_key_id, Shapes::ShapeRef.new(shape: CoinbaseCdpApiKeyIdType, required: true, location_name: "apiKeyId"))
    CoinbaseCdpConfigurationOutput.add_member(:api_key_secret_arn, Shapes::ShapeRef.new(shape: Secret, required: true, location_name: "apiKeySecretArn"))
    CoinbaseCdpConfigurationOutput.add_member(:api_key_secret_json_key, Shapes::ShapeRef.new(shape: SecretJsonKeyType, location_name: "apiKeySecretJsonKey"))
    CoinbaseCdpConfigurationOutput.add_member(:api_key_secret_source, Shapes::ShapeRef.new(shape: SecretSourceType, location_name: "apiKeySecretSource"))
    CoinbaseCdpConfigurationOutput.add_member(:wallet_secret_arn, Shapes::ShapeRef.new(shape: Secret, required: true, location_name: "walletSecretArn"))
    CoinbaseCdpConfigurationOutput.add_member(:wallet_secret_json_key, Shapes::ShapeRef.new(shape: SecretJsonKeyType, location_name: "walletSecretJsonKey"))
    CoinbaseCdpConfigurationOutput.add_member(:wallet_secret_source, Shapes::ShapeRef.new(shape: SecretSourceType, location_name: "walletSecretSource"))
    CoinbaseCdpConfigurationOutput.struct_class = Types::CoinbaseCdpConfigurationOutput

    ComponentConfiguration.add_member(:configuration, Shapes::ShapeRef.new(shape: Document, required: true, location_name: "configuration"))
    ComponentConfiguration.struct_class = Types::ComponentConfiguration

    ComponentConfigurationMap.key = Shapes::ShapeRef.new(shape: ComponentIdentifier)
    ComponentConfigurationMap.value = Shapes::ShapeRef.new(shape: ComponentConfiguration)

    CompositeIdentifierList.member = Shapes::ShapeRef.new(shape: CompositeIdentifierEntry)

    ComputeConfiguration.add_member(:ec2_configuration, Shapes::ShapeRef.new(shape: Ec2Configuration, location_name: "ec2Configuration"))
    ComputeConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ComputeConfiguration.add_member_subclass(:ec2_configuration, Types::ComputeConfiguration::Ec2Configuration)
    ComputeConfiguration.add_member_subclass(:unknown, Types::ComputeConfiguration::Unknown)
    ComputeConfiguration.struct_class = Types::ComputeConfiguration

    ConcurrentModificationException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ConcurrentModificationException.struct_class = Types::ConcurrentModificationException

    Condition.add_member(:match_principals, Shapes::ShapeRef.new(shape: MatchPrincipals, location_name: "matchPrincipals"))
    Condition.add_member(:match_paths, Shapes::ShapeRef.new(shape: MatchPaths, location_name: "matchPaths"))
    Condition.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    Condition.add_member_subclass(:match_principals, Types::Condition::MatchPrincipals)
    Condition.add_member_subclass(:match_paths, Types::Condition::MatchPaths)
    Condition.add_member_subclass(:unknown, Types::Condition::Unknown)
    Condition.struct_class = Types::Condition

    Conditions.member = Shapes::ShapeRef.new(shape: Condition)

    ConfigurationBundleAction.add_member(:static_override, Shapes::ShapeRef.new(shape: StaticOverride, location_name: "staticOverride"))
    ConfigurationBundleAction.add_member(:weighted_override, Shapes::ShapeRef.new(shape: WeightedOverride, location_name: "weightedOverride"))
    ConfigurationBundleAction.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ConfigurationBundleAction.add_member_subclass(:static_override, Types::ConfigurationBundleAction::StaticOverride)
    ConfigurationBundleAction.add_member_subclass(:weighted_override, Types::ConfigurationBundleAction::WeightedOverride)
    ConfigurationBundleAction.add_member_subclass(:unknown, Types::ConfigurationBundleAction::Unknown)
    ConfigurationBundleAction.struct_class = Types::ConfigurationBundleAction

    ConfigurationBundleReference.add_member(:bundle_arn, Shapes::ShapeRef.new(shape: GatewayConfigurationBundleArn, required: true, location_name: "bundleArn"))
    ConfigurationBundleReference.add_member(:bundle_version, Shapes::ShapeRef.new(shape: ConfigurationBundleReferenceBundleVersionString, required: true, location_name: "bundleVersion"))
    ConfigurationBundleReference.struct_class = Types::ConfigurationBundleReference

    ConfigurationBundleSummary.add_member(:bundle_arn, Shapes::ShapeRef.new(shape: ConfigurationBundleArn, required: true, location_name: "bundleArn"))
    ConfigurationBundleSummary.add_member(:bundle_id, Shapes::ShapeRef.new(shape: ConfigurationBundleId, required: true, location_name: "bundleId"))
    ConfigurationBundleSummary.add_member(:bundle_name, Shapes::ShapeRef.new(shape: ConfigurationBundleName, required: true, location_name: "bundleName"))
    ConfigurationBundleSummary.add_member(:description, Shapes::ShapeRef.new(shape: ConfigurationBundleDescription, location_name: "description"))
    ConfigurationBundleSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    ConfigurationBundleSummary.struct_class = Types::ConfigurationBundleSummary

    ConfigurationBundleSummaryList.member = Shapes::ShapeRef.new(shape: ConfigurationBundleSummary)

    ConfigurationBundleVersionList.member = Shapes::ShapeRef.new(shape: ConfigurationBundleVersion)

    ConfigurationBundleVersionSummary.add_member(:bundle_arn, Shapes::ShapeRef.new(shape: ConfigurationBundleArn, required: true, location_name: "bundleArn"))
    ConfigurationBundleVersionSummary.add_member(:bundle_id, Shapes::ShapeRef.new(shape: ConfigurationBundleId, required: true, location_name: "bundleId"))
    ConfigurationBundleVersionSummary.add_member(:version_id, Shapes::ShapeRef.new(shape: ConfigurationBundleVersion, required: true, location_name: "versionId"))
    ConfigurationBundleVersionSummary.add_member(:lineage_metadata, Shapes::ShapeRef.new(shape: VersionLineageMetadata, location_name: "lineageMetadata"))
    ConfigurationBundleVersionSummary.add_member(:version_created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "versionCreatedAt"))
    ConfigurationBundleVersionSummary.struct_class = Types::ConfigurationBundleVersionSummary

    ConfigurationBundleVersionSummaryList.member = Shapes::ShapeRef.new(shape: ConfigurationBundleVersionSummary)

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    ConflictException.struct_class = Types::ConflictException

    ConnectorConfiguration.add_member(:name, Shapes::ShapeRef.new(shape: ConnectorConfigurationNameString, required: true, location_name: "name"))
    ConnectorConfiguration.add_member(:description, Shapes::ShapeRef.new(shape: ConnectorConfigurationDescriptionString, location_name: "description"))
    ConnectorConfiguration.add_member(:parameter_values, Shapes::ShapeRef.new(shape: Document, location_name: "parameterValues"))
    ConnectorConfiguration.add_member(:parameter_overrides, Shapes::ShapeRef.new(shape: ConnectorParameterOverrides, location_name: "parameterOverrides"))
    ConnectorConfiguration.struct_class = Types::ConnectorConfiguration

    ConnectorConfigurations.member = Shapes::ShapeRef.new(shape: ConnectorConfiguration)

    ConnectorParameterOverride.add_member(:path, Shapes::ShapeRef.new(shape: String, required: true, location_name: "path"))
    ConnectorParameterOverride.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    ConnectorParameterOverride.add_member(:visible, Shapes::ShapeRef.new(shape: Boolean, location_name: "visible"))
    ConnectorParameterOverride.struct_class = Types::ConnectorParameterOverride

    ConnectorParameterOverrides.member = Shapes::ShapeRef.new(shape: ConnectorParameterOverride)

    ConnectorSource.add_member(:connector_id, Shapes::ShapeRef.new(shape: ConnectorId, required: true, location_name: "connectorId"))
    ConnectorSource.add_member(:version, Shapes::ShapeRef.new(shape: ConnectorVersion, location_name: "version"))
    ConnectorSource.struct_class = Types::ConnectorSource

    ConnectorTargetConfiguration.add_member(:source, Shapes::ShapeRef.new(shape: ConnectorSource, required: true, location_name: "source"))
    ConnectorTargetConfiguration.add_member(:enabled, Shapes::ShapeRef.new(shape: EnabledConnectors, location_name: "enabled"))
    ConnectorTargetConfiguration.add_member(:configurations, Shapes::ShapeRef.new(shape: ConnectorConfigurations, location_name: "configurations"))
    ConnectorTargetConfiguration.struct_class = Types::ConnectorTargetConfiguration

    ConsentPortalIdpConfig.add_member(:credential_provider_arn, Shapes::ShapeRef.new(shape: OAuth2CredentialProviderArn, required: true, location_name: "credentialProviderArn"))
    ConsentPortalIdpConfig.add_member(:scopes, Shapes::ShapeRef.new(shape: AllowedScopesType, required: true, location_name: "scopes"))
    ConsentPortalIdpConfig.add_member(:audience, Shapes::ShapeRef.new(shape: AllowedAudienceType, location_name: "audience"))
    ConsentPortalIdpConfig.struct_class = Types::ConsentPortalIdpConfig

    ConsentPortalSource.add_member(:identifier, Shapes::ShapeRef.new(shape: ConsentPortalSourceIdentifierType, required: true, location_name: "identifier"))
    ConsentPortalSource.add_member(:type, Shapes::ShapeRef.new(shape: ConsentPortalSourceType, required: true, location_name: "type"))
    ConsentPortalSource.struct_class = Types::ConsentPortalSource

    ConsentPortalSources.member = Shapes::ShapeRef.new(shape: ConsentPortalSource)

    ConsentPortalSummaries.member = Shapes::ShapeRef.new(shape: ConsentPortalSummary)

    ConsentPortalSummary.add_member(:sources, Shapes::ShapeRef.new(shape: ConsentPortalSources, required: true, location_name: "sources"))
    ConsentPortalSummary.add_member(:consent_portal_arn, Shapes::ShapeRef.new(shape: ConsentPortalArnType, required: true, location_name: "consentPortalArn"))
    ConsentPortalSummary.add_member(:consent_portal_id, Shapes::ShapeRef.new(shape: ConsentPortalIdType, required: true, location_name: "consentPortalId"))
    ConsentPortalSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    ConsentPortalSummary.add_member(:description, Shapes::ShapeRef.new(shape: ConsentPortalDescriptionType, location_name: "description"))
    ConsentPortalSummary.add_member(:name, Shapes::ShapeRef.new(shape: ConsentPortalNameType, required: true, location_name: "name"))
    ConsentPortalSummary.add_member(:portal_url, Shapes::ShapeRef.new(shape: PortalUrlType, location_name: "portalUrl"))
    ConsentPortalSummary.add_member(:status, Shapes::ShapeRef.new(shape: ConsentPortalStatus, required: true, location_name: "status"))
    ConsentPortalSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    ConsentPortalSummary.struct_class = Types::ConsentPortalSummary

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

    ContentConfiguration.add_member(:type, Shapes::ShapeRef.new(shape: ContentType, required: true, location_name: "type"))
    ContentConfiguration.add_member(:level, Shapes::ShapeRef.new(shape: ContentLevel, location_name: "level"))
    ContentConfiguration.struct_class = Types::ContentConfiguration

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
    CreateAgentRuntimeRequest.add_member(:network_configuration, Shapes::ShapeRef.new(shape: NetworkConfiguration, location_name: "networkConfiguration"))
    CreateAgentRuntimeRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateAgentRuntimeRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateAgentRuntimeRequest.add_member(:authorizer_configuration, Shapes::ShapeRef.new(shape: AuthorizerConfiguration, location_name: "authorizerConfiguration"))
    CreateAgentRuntimeRequest.add_member(:request_header_configuration, Shapes::ShapeRef.new(shape: RequestHeaderConfiguration, location_name: "requestHeaderConfiguration"))
    CreateAgentRuntimeRequest.add_member(:protocol_configuration, Shapes::ShapeRef.new(shape: ProtocolConfiguration, location_name: "protocolConfiguration"))
    CreateAgentRuntimeRequest.add_member(:lifecycle_configuration, Shapes::ShapeRef.new(shape: LifecycleConfiguration, location_name: "lifecycleConfiguration"))
    CreateAgentRuntimeRequest.add_member(:environment_variables, Shapes::ShapeRef.new(shape: EnvironmentVariablesMap, location_name: "environmentVariables"))
    CreateAgentRuntimeRequest.add_member(:filesystem_configurations, Shapes::ShapeRef.new(shape: FilesystemConfigurations, location_name: "filesystemConfigurations"))
    CreateAgentRuntimeRequest.add_member(:capacity_provider_configuration, Shapes::ShapeRef.new(shape: CapacityProviderConfiguration, location_name: "capacityProviderConfiguration"))
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
    CreateApiKeyCredentialProviderRequest.add_member(:api_key, Shapes::ShapeRef.new(shape: DefaultApiKeyType, location_name: "apiKey"))
    CreateApiKeyCredentialProviderRequest.add_member(:api_key_secret_config, Shapes::ShapeRef.new(shape: SecretReference, location_name: "apiKeySecretConfig"))
    CreateApiKeyCredentialProviderRequest.add_member(:api_key_secret_source, Shapes::ShapeRef.new(shape: SecretSourceType, location_name: "apiKeySecretSource"))
    CreateApiKeyCredentialProviderRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    CreateApiKeyCredentialProviderRequest.struct_class = Types::CreateApiKeyCredentialProviderRequest

    CreateApiKeyCredentialProviderResponse.add_member(:api_key_secret_arn, Shapes::ShapeRef.new(shape: Secret, required: true, location_name: "apiKeySecretArn"))
    CreateApiKeyCredentialProviderResponse.add_member(:api_key_secret_json_key, Shapes::ShapeRef.new(shape: SecretJsonKeyType, location_name: "apiKeySecretJsonKey"))
    CreateApiKeyCredentialProviderResponse.add_member(:api_key_secret_source, Shapes::ShapeRef.new(shape: SecretSourceType, location_name: "apiKeySecretSource"))
    CreateApiKeyCredentialProviderResponse.add_member(:name, Shapes::ShapeRef.new(shape: CredentialProviderName, required: true, location_name: "name"))
    CreateApiKeyCredentialProviderResponse.add_member(:credential_provider_arn, Shapes::ShapeRef.new(shape: ApiKeyCredentialProviderArnType, required: true, location_name: "credentialProviderArn"))
    CreateApiKeyCredentialProviderResponse.struct_class = Types::CreateApiKeyCredentialProviderResponse

    CreateBrowserProfileRequest.add_member(:name, Shapes::ShapeRef.new(shape: BrowserProfileName, required: true, location_name: "name"))
    CreateBrowserProfileRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateBrowserProfileRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateBrowserProfileRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    CreateBrowserProfileRequest.struct_class = Types::CreateBrowserProfileRequest

    CreateBrowserProfileResponse.add_member(:profile_id, Shapes::ShapeRef.new(shape: BrowserProfileId, required: true, location_name: "profileId"))
    CreateBrowserProfileResponse.add_member(:profile_arn, Shapes::ShapeRef.new(shape: BrowserProfileArn, required: true, location_name: "profileArn"))
    CreateBrowserProfileResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    CreateBrowserProfileResponse.add_member(:status, Shapes::ShapeRef.new(shape: BrowserProfileStatus, required: true, location_name: "status"))
    CreateBrowserProfileResponse.struct_class = Types::CreateBrowserProfileResponse

    CreateBrowserRequest.add_member(:name, Shapes::ShapeRef.new(shape: SandboxName, required: true, location_name: "name"))
    CreateBrowserRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateBrowserRequest.add_member(:execution_role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "executionRoleArn"))
    CreateBrowserRequest.add_member(:network_configuration, Shapes::ShapeRef.new(shape: BrowserNetworkConfiguration, required: true, location_name: "networkConfiguration"))
    CreateBrowserRequest.add_member(:recording, Shapes::ShapeRef.new(shape: RecordingConfig, location_name: "recording"))
    CreateBrowserRequest.add_member(:browser_signing, Shapes::ShapeRef.new(shape: BrowserSigningConfigInput, location_name: "browserSigning"))
    CreateBrowserRequest.add_member(:enterprise_policies, Shapes::ShapeRef.new(shape: BrowserEnterprisePolicies, location_name: "enterprisePolicies"))
    CreateBrowserRequest.add_member(:certificates, Shapes::ShapeRef.new(shape: Certificates, location_name: "certificates"))
    CreateBrowserRequest.add_member(:filesystem_configurations, Shapes::ShapeRef.new(shape: ToolsFileSystemConfigurations, location_name: "filesystemConfigurations"))
    CreateBrowserRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateBrowserRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    CreateBrowserRequest.struct_class = Types::CreateBrowserRequest

    CreateBrowserResponse.add_member(:browser_id, Shapes::ShapeRef.new(shape: BrowserId, required: true, location_name: "browserId"))
    CreateBrowserResponse.add_member(:browser_arn, Shapes::ShapeRef.new(shape: BrowserArn, required: true, location_name: "browserArn"))
    CreateBrowserResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    CreateBrowserResponse.add_member(:status, Shapes::ShapeRef.new(shape: BrowserStatus, required: true, location_name: "status"))
    CreateBrowserResponse.struct_class = Types::CreateBrowserResponse

    CreateCapacityProviderInput.add_member(:name, Shapes::ShapeRef.new(shape: CapacityProviderName, required: true, location_name: "name"))
    CreateCapacityProviderInput.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateCapacityProviderInput.add_member(:permissions_configuration, Shapes::ShapeRef.new(shape: PermissionsConfiguration, required: true, location_name: "permissionsConfiguration"))
    CreateCapacityProviderInput.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateCapacityProviderInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    CreateCapacityProviderInput.add_member(:compute_configuration, Shapes::ShapeRef.new(shape: ComputeConfiguration, required: true, location_name: "computeConfiguration"))
    CreateCapacityProviderInput.struct_class = Types::CreateCapacityProviderInput

    CreateCapacityProviderOutput.add_member(:capacity_provider_id, Shapes::ShapeRef.new(shape: CapacityProviderId, required: true, location_name: "capacityProviderId"))
    CreateCapacityProviderOutput.add_member(:capacity_provider_arn, Shapes::ShapeRef.new(shape: CapacityProviderArn, required: true, location_name: "capacityProviderArn"))
    CreateCapacityProviderOutput.add_member(:name, Shapes::ShapeRef.new(shape: CapacityProviderName, required: true, location_name: "name"))
    CreateCapacityProviderOutput.add_member(:status, Shapes::ShapeRef.new(shape: CapacityProviderStatus, required: true, location_name: "status"))
    CreateCapacityProviderOutput.struct_class = Types::CreateCapacityProviderOutput

    CreateCodeInterpreterRequest.add_member(:name, Shapes::ShapeRef.new(shape: SandboxName, required: true, location_name: "name"))
    CreateCodeInterpreterRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateCodeInterpreterRequest.add_member(:execution_role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "executionRoleArn"))
    CreateCodeInterpreterRequest.add_member(:network_configuration, Shapes::ShapeRef.new(shape: CodeInterpreterNetworkConfiguration, required: true, location_name: "networkConfiguration"))
    CreateCodeInterpreterRequest.add_member(:certificates, Shapes::ShapeRef.new(shape: Certificates, location_name: "certificates"))
    CreateCodeInterpreterRequest.add_member(:filesystem_configurations, Shapes::ShapeRef.new(shape: ToolsFileSystemConfigurations, location_name: "filesystemConfigurations"))
    CreateCodeInterpreterRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateCodeInterpreterRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    CreateCodeInterpreterRequest.struct_class = Types::CreateCodeInterpreterRequest

    CreateCodeInterpreterResponse.add_member(:code_interpreter_id, Shapes::ShapeRef.new(shape: CodeInterpreterId, required: true, location_name: "codeInterpreterId"))
    CreateCodeInterpreterResponse.add_member(:code_interpreter_arn, Shapes::ShapeRef.new(shape: CodeInterpreterArn, required: true, location_name: "codeInterpreterArn"))
    CreateCodeInterpreterResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    CreateCodeInterpreterResponse.add_member(:status, Shapes::ShapeRef.new(shape: CodeInterpreterStatus, required: true, location_name: "status"))
    CreateCodeInterpreterResponse.struct_class = Types::CreateCodeInterpreterResponse

    CreateConfigurationBundleRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateConfigurationBundleRequest.add_member(:bundle_name, Shapes::ShapeRef.new(shape: ConfigurationBundleName, required: true, location_name: "bundleName"))
    CreateConfigurationBundleRequest.add_member(:description, Shapes::ShapeRef.new(shape: ConfigurationBundleDescription, location_name: "description"))
    CreateConfigurationBundleRequest.add_member(:components, Shapes::ShapeRef.new(shape: ComponentConfigurationMap, required: true, location_name: "components"))
    CreateConfigurationBundleRequest.add_member(:branch_name, Shapes::ShapeRef.new(shape: BranchName, location_name: "branchName"))
    CreateConfigurationBundleRequest.add_member(:commit_message, Shapes::ShapeRef.new(shape: CreateConfigurationBundleRequestCommitMessageString, location_name: "commitMessage"))
    CreateConfigurationBundleRequest.add_member(:created_by, Shapes::ShapeRef.new(shape: VersionCreatedBySource, location_name: "createdBy"))
    CreateConfigurationBundleRequest.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "kmsKeyArn"))
    CreateConfigurationBundleRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    CreateConfigurationBundleRequest.struct_class = Types::CreateConfigurationBundleRequest

    CreateConfigurationBundleResponse.add_member(:bundle_arn, Shapes::ShapeRef.new(shape: ConfigurationBundleArn, required: true, location_name: "bundleArn"))
    CreateConfigurationBundleResponse.add_member(:bundle_id, Shapes::ShapeRef.new(shape: ConfigurationBundleId, required: true, location_name: "bundleId"))
    CreateConfigurationBundleResponse.add_member(:version_id, Shapes::ShapeRef.new(shape: ConfigurationBundleVersion, required: true, location_name: "versionId"))
    CreateConfigurationBundleResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    CreateConfigurationBundleResponse.struct_class = Types::CreateConfigurationBundleResponse

    CreateConsentPortalRequest.add_member(:execution_role_arn, Shapes::ShapeRef.new(shape: ExecutionRoleArnType, required: true, location_name: "executionRoleArn"))
    CreateConsentPortalRequest.add_member(:idp_config, Shapes::ShapeRef.new(shape: ConsentPortalIdpConfig, required: true, location_name: "idpConfig"))
    CreateConsentPortalRequest.add_member(:name, Shapes::ShapeRef.new(shape: ConsentPortalNameType, required: true, location_name: "name"))
    CreateConsentPortalRequest.add_member(:sources, Shapes::ShapeRef.new(shape: ConsentPortalSources, required: true, location_name: "sources"))
    CreateConsentPortalRequest.add_member(:description, Shapes::ShapeRef.new(shape: ConsentPortalDescriptionType, location_name: "description"))
    CreateConsentPortalRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    CreateConsentPortalRequest.struct_class = Types::CreateConsentPortalRequest

    CreateConsentPortalResponse.add_member(:sources, Shapes::ShapeRef.new(shape: ConsentPortalSources, required: true, location_name: "sources"))
    CreateConsentPortalResponse.add_member(:consent_portal_arn, Shapes::ShapeRef.new(shape: ConsentPortalArnType, required: true, location_name: "consentPortalArn"))
    CreateConsentPortalResponse.add_member(:consent_portal_id, Shapes::ShapeRef.new(shape: ConsentPortalIdType, required: true, location_name: "consentPortalId"))
    CreateConsentPortalResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    CreateConsentPortalResponse.add_member(:description, Shapes::ShapeRef.new(shape: ConsentPortalDescriptionType, location_name: "description"))
    CreateConsentPortalResponse.add_member(:execution_role_arn, Shapes::ShapeRef.new(shape: ExecutionRoleArnType, required: true, location_name: "executionRoleArn"))
    CreateConsentPortalResponse.add_member(:idp_config, Shapes::ShapeRef.new(shape: ConsentPortalIdpConfig, required: true, location_name: "idpConfig"))
    CreateConsentPortalResponse.add_member(:name, Shapes::ShapeRef.new(shape: ConsentPortalNameType, required: true, location_name: "name"))
    CreateConsentPortalResponse.add_member(:portal_url, Shapes::ShapeRef.new(shape: PortalUrlType, location_name: "portalUrl"))
    CreateConsentPortalResponse.add_member(:status, Shapes::ShapeRef.new(shape: ConsentPortalStatus, required: true, location_name: "status"))
    CreateConsentPortalResponse.add_member(:status_reason, Shapes::ShapeRef.new(shape: StatusReasonType, location_name: "statusReason"))
    CreateConsentPortalResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    CreateConsentPortalResponse.struct_class = Types::CreateConsentPortalResponse

    CreateDatasetRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateDatasetRequest.add_member(:dataset_name, Shapes::ShapeRef.new(shape: DatasetName, required: true, location_name: "datasetName"))
    CreateDatasetRequest.add_member(:description, Shapes::ShapeRef.new(shape: CreateDatasetRequestDescriptionString, location_name: "description"))
    CreateDatasetRequest.add_member(:source, Shapes::ShapeRef.new(shape: DataSourceType, required: true, location_name: "source"))
    CreateDatasetRequest.add_member(:schema_type, Shapes::ShapeRef.new(shape: DatasetSchemaType, required: true, location_name: "schemaType"))
    CreateDatasetRequest.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "kmsKeyArn"))
    CreateDatasetRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    CreateDatasetRequest.struct_class = Types::CreateDatasetRequest

    CreateDatasetResponse.add_member(:dataset_arn, Shapes::ShapeRef.new(shape: DatasetArn, required: true, location_name: "datasetArn"))
    CreateDatasetResponse.add_member(:dataset_id, Shapes::ShapeRef.new(shape: DatasetId, required: true, location_name: "datasetId"))
    CreateDatasetResponse.add_member(:status, Shapes::ShapeRef.new(shape: DatasetStatus, required: true, location_name: "status"))
    CreateDatasetResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    CreateDatasetResponse.struct_class = Types::CreateDatasetResponse

    CreateDatasetVersionRequest.add_member(:dataset_id, Shapes::ShapeRef.new(shape: DatasetId, required: true, location: "uri", location_name: "datasetId"))
    CreateDatasetVersionRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateDatasetVersionRequest.struct_class = Types::CreateDatasetVersionRequest

    CreateDatasetVersionResponse.add_member(:dataset_arn, Shapes::ShapeRef.new(shape: DatasetArn, required: true, location_name: "datasetArn"))
    CreateDatasetVersionResponse.add_member(:dataset_id, Shapes::ShapeRef.new(shape: DatasetId, required: true, location_name: "datasetId"))
    CreateDatasetVersionResponse.add_member(:status, Shapes::ShapeRef.new(shape: DatasetStatus, required: true, location_name: "status"))
    CreateDatasetVersionResponse.add_member(:dataset_version, Shapes::ShapeRef.new(shape: DatasetVersion, required: true, location_name: "datasetVersion"))
    CreateDatasetVersionResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    CreateDatasetVersionResponse.struct_class = Types::CreateDatasetVersionResponse

    CreateEvaluatorRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateEvaluatorRequest.add_member(:evaluator_name, Shapes::ShapeRef.new(shape: CustomEvaluatorName, required: true, location_name: "evaluatorName"))
    CreateEvaluatorRequest.add_member(:description, Shapes::ShapeRef.new(shape: EvaluatorDescription, location_name: "description"))
    CreateEvaluatorRequest.add_member(:evaluator_config, Shapes::ShapeRef.new(shape: EvaluatorConfig, required: true, location_name: "evaluatorConfig"))
    CreateEvaluatorRequest.add_member(:level, Shapes::ShapeRef.new(shape: EvaluatorLevel, required: true, location_name: "level"))
    CreateEvaluatorRequest.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "kmsKeyArn"))
    CreateEvaluatorRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    CreateEvaluatorRequest.struct_class = Types::CreateEvaluatorRequest

    CreateEvaluatorResponse.add_member(:evaluator_arn, Shapes::ShapeRef.new(shape: CustomEvaluatorArn, required: true, location_name: "evaluatorArn"))
    CreateEvaluatorResponse.add_member(:evaluator_id, Shapes::ShapeRef.new(shape: EvaluatorId, required: true, location_name: "evaluatorId"))
    CreateEvaluatorResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    CreateEvaluatorResponse.add_member(:status, Shapes::ShapeRef.new(shape: EvaluatorStatus, required: true, location_name: "status"))
    CreateEvaluatorResponse.struct_class = Types::CreateEvaluatorResponse

    CreateGatewayRateLimitRequest.add_member(:gateway_identifier, Shapes::ShapeRef.new(shape: GatewayIdentifier, required: true, location: "uri", location_name: "gatewayIdentifier"))
    CreateGatewayRateLimitRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateGatewayRateLimitRequest.add_member(:rate_limit_id, Shapes::ShapeRef.new(shape: GatewayRateLimitId, location_name: "rateLimitId"))
    CreateGatewayRateLimitRequest.add_member(:description, Shapes::ShapeRef.new(shape: GatewayRateLimitDescription, location_name: "description"))
    CreateGatewayRateLimitRequest.add_member(:dimension_keys, Shapes::ShapeRef.new(shape: DimensionKeys, required: true, location_name: "dimensionKeys"))
    CreateGatewayRateLimitRequest.add_member(:entries, Shapes::ShapeRef.new(shape: LimitEntries, required: true, location_name: "entries"))
    CreateGatewayRateLimitRequest.struct_class = Types::CreateGatewayRateLimitRequest

    CreateGatewayRateLimitResponse.add_member(:rate_limit_id, Shapes::ShapeRef.new(shape: GatewayRateLimitId, required: true, location_name: "rateLimitId"))
    CreateGatewayRateLimitResponse.add_member(:gateway_identifier, Shapes::ShapeRef.new(shape: GatewayIdentifier, required: true, location_name: "gatewayIdentifier"))
    CreateGatewayRateLimitResponse.add_member(:description, Shapes::ShapeRef.new(shape: GatewayRateLimitDescription, location_name: "description"))
    CreateGatewayRateLimitResponse.add_member(:dimension_keys, Shapes::ShapeRef.new(shape: DimensionKeys, required: true, location_name: "dimensionKeys"))
    CreateGatewayRateLimitResponse.add_member(:entries, Shapes::ShapeRef.new(shape: LimitEntries, required: true, location_name: "entries"))
    CreateGatewayRateLimitResponse.add_member(:status, Shapes::ShapeRef.new(shape: GatewayRateLimitStatus, required: true, location_name: "status"))
    CreateGatewayRateLimitResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    CreateGatewayRateLimitResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "updatedAt"))
    CreateGatewayRateLimitResponse.struct_class = Types::CreateGatewayRateLimitResponse

    CreateGatewayRequest.add_member(:name, Shapes::ShapeRef.new(shape: GatewayName, required: true, location_name: "name"))
    CreateGatewayRequest.add_member(:description, Shapes::ShapeRef.new(shape: GatewayDescription, location_name: "description"))
    CreateGatewayRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateGatewayRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "roleArn"))
    CreateGatewayRequest.add_member(:protocol_type, Shapes::ShapeRef.new(shape: GatewayProtocolType, location_name: "protocolType"))
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
    CreateGatewayResponse.add_member(:protocol_type, Shapes::ShapeRef.new(shape: GatewayProtocolType, location_name: "protocolType"))
    CreateGatewayResponse.add_member(:protocol_configuration, Shapes::ShapeRef.new(shape: GatewayProtocolConfiguration, location_name: "protocolConfiguration"))
    CreateGatewayResponse.add_member(:authorizer_type, Shapes::ShapeRef.new(shape: AuthorizerType, required: true, location_name: "authorizerType"))
    CreateGatewayResponse.add_member(:authorizer_configuration, Shapes::ShapeRef.new(shape: AuthorizerConfiguration, location_name: "authorizerConfiguration"))
    CreateGatewayResponse.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "kmsKeyArn"))
    CreateGatewayResponse.add_member(:custom_transform_configuration, Shapes::ShapeRef.new(shape: CustomTransformConfiguration, location_name: "customTransformConfiguration"))
    CreateGatewayResponse.add_member(:interceptor_configurations, Shapes::ShapeRef.new(shape: GatewayInterceptorConfigurations, location_name: "interceptorConfigurations"))
    CreateGatewayResponse.add_member(:policy_engine_configuration, Shapes::ShapeRef.new(shape: GatewayPolicyEngineConfiguration, location_name: "policyEngineConfiguration"))
    CreateGatewayResponse.add_member(:workload_identity_details, Shapes::ShapeRef.new(shape: WorkloadIdentityDetails, location_name: "workloadIdentityDetails"))
    CreateGatewayResponse.add_member(:exception_level, Shapes::ShapeRef.new(shape: ExceptionLevel, location_name: "exceptionLevel"))
    CreateGatewayResponse.add_member(:web_acl_arn, Shapes::ShapeRef.new(shape: WebAclArn, location_name: "webAclArn"))
    CreateGatewayResponse.add_member(:waf_configuration, Shapes::ShapeRef.new(shape: WafConfiguration, location_name: "wafConfiguration"))
    CreateGatewayResponse.struct_class = Types::CreateGatewayResponse

    CreateGatewayRuleRequest.add_member(:gateway_identifier, Shapes::ShapeRef.new(shape: GatewayIdentifier, required: true, location: "uri", location_name: "gatewayIdentifier"))
    CreateGatewayRuleRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateGatewayRuleRequest.add_member(:priority, Shapes::ShapeRef.new(shape: GatewayRulePriority, required: true, location_name: "priority"))
    CreateGatewayRuleRequest.add_member(:conditions, Shapes::ShapeRef.new(shape: Conditions, location_name: "conditions"))
    CreateGatewayRuleRequest.add_member(:actions, Shapes::ShapeRef.new(shape: Actions, required: true, location_name: "actions"))
    CreateGatewayRuleRequest.add_member(:description, Shapes::ShapeRef.new(shape: GatewayRuleDescription, location_name: "description"))
    CreateGatewayRuleRequest.struct_class = Types::CreateGatewayRuleRequest

    CreateGatewayRuleResponse.add_member(:rule_id, Shapes::ShapeRef.new(shape: GatewayRuleId, required: true, location_name: "ruleId"))
    CreateGatewayRuleResponse.add_member(:gateway_arn, Shapes::ShapeRef.new(shape: GatewayArn, required: true, location_name: "gatewayArn"))
    CreateGatewayRuleResponse.add_member(:priority, Shapes::ShapeRef.new(shape: GatewayRulePriority, required: true, location_name: "priority"))
    CreateGatewayRuleResponse.add_member(:conditions, Shapes::ShapeRef.new(shape: Conditions, location_name: "conditions"))
    CreateGatewayRuleResponse.add_member(:actions, Shapes::ShapeRef.new(shape: Actions, required: true, location_name: "actions"))
    CreateGatewayRuleResponse.add_member(:description, Shapes::ShapeRef.new(shape: GatewayRuleDescription, location_name: "description"))
    CreateGatewayRuleResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    CreateGatewayRuleResponse.add_member(:status, Shapes::ShapeRef.new(shape: GatewayRuleStatus, required: true, location_name: "status"))
    CreateGatewayRuleResponse.add_member(:system, Shapes::ShapeRef.new(shape: SystemManagedBlock, location_name: "system"))
    CreateGatewayRuleResponse.struct_class = Types::CreateGatewayRuleResponse

    CreateGatewayTargetRequest.add_member(:gateway_identifier, Shapes::ShapeRef.new(shape: GatewayIdentifier, required: true, location: "uri", location_name: "gatewayIdentifier"))
    CreateGatewayTargetRequest.add_member(:name, Shapes::ShapeRef.new(shape: TargetName, location_name: "name"))
    CreateGatewayTargetRequest.add_member(:description, Shapes::ShapeRef.new(shape: TargetDescription, location_name: "description"))
    CreateGatewayTargetRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateGatewayTargetRequest.add_member(:target_configuration, Shapes::ShapeRef.new(shape: TargetConfiguration, required: true, location_name: "targetConfiguration"))
    CreateGatewayTargetRequest.add_member(:credential_provider_configurations, Shapes::ShapeRef.new(shape: CredentialProviderConfigurations, location_name: "credentialProviderConfigurations"))
    CreateGatewayTargetRequest.add_member(:metadata_configuration, Shapes::ShapeRef.new(shape: MetadataConfiguration, location_name: "metadataConfiguration"))
    CreateGatewayTargetRequest.add_member(:private_endpoint, Shapes::ShapeRef.new(shape: PrivateEndpoint, location_name: "privateEndpoint"))
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
    CreateGatewayTargetResponse.add_member(:metadata_configuration, Shapes::ShapeRef.new(shape: MetadataConfiguration, location_name: "metadataConfiguration"))
    CreateGatewayTargetResponse.add_member(:private_endpoint, Shapes::ShapeRef.new(shape: PrivateEndpoint, location_name: "privateEndpoint"))
    CreateGatewayTargetResponse.add_member(:private_endpoint_managed_resources, Shapes::ShapeRef.new(shape: PrivateEndpointManagedResources, location_name: "privateEndpointManagedResources"))
    CreateGatewayTargetResponse.add_member(:authorization_data, Shapes::ShapeRef.new(shape: AuthorizationData, location_name: "authorizationData"))
    CreateGatewayTargetResponse.add_member(:protocol_type, Shapes::ShapeRef.new(shape: TargetProtocolType, location_name: "protocolType"))
    CreateGatewayTargetResponse.struct_class = Types::CreateGatewayTargetResponse

    CreateHarnessEndpointRequest.add_member(:harness_id, Shapes::ShapeRef.new(shape: HarnessId, required: true, location: "uri", location_name: "harnessId"))
    CreateHarnessEndpointRequest.add_member(:endpoint_name, Shapes::ShapeRef.new(shape: HarnessEndpointName, required: true, location_name: "endpointName"))
    CreateHarnessEndpointRequest.add_member(:target_version, Shapes::ShapeRef.new(shape: HarnessVersion, location_name: "targetVersion"))
    CreateHarnessEndpointRequest.add_member(:description, Shapes::ShapeRef.new(shape: HarnessEndpointDescription, location_name: "description"))
    CreateHarnessEndpointRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateHarnessEndpointRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    CreateHarnessEndpointRequest.struct_class = Types::CreateHarnessEndpointRequest

    CreateHarnessEndpointResponse.add_member(:endpoint, Shapes::ShapeRef.new(shape: HarnessEndpoint, required: true, location_name: "endpoint"))
    CreateHarnessEndpointResponse.struct_class = Types::CreateHarnessEndpointResponse

    CreateHarnessRequest.add_member(:harness_name, Shapes::ShapeRef.new(shape: HarnessName, required: true, location_name: "harnessName"))
    CreateHarnessRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateHarnessRequest.add_member(:execution_role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "executionRoleArn"))
    CreateHarnessRequest.add_member(:environment, Shapes::ShapeRef.new(shape: HarnessEnvironmentProviderRequest, location_name: "environment"))
    CreateHarnessRequest.add_member(:environment_artifact, Shapes::ShapeRef.new(shape: HarnessEnvironmentArtifact, location_name: "environmentArtifact"))
    CreateHarnessRequest.add_member(:environment_variables, Shapes::ShapeRef.new(shape: EnvironmentVariablesMap, location_name: "environmentVariables"))
    CreateHarnessRequest.add_member(:authorizer_configuration, Shapes::ShapeRef.new(shape: AuthorizerConfiguration, location_name: "authorizerConfiguration"))
    CreateHarnessRequest.add_member(:model, Shapes::ShapeRef.new(shape: HarnessModelConfiguration, location_name: "model"))
    CreateHarnessRequest.add_member(:system_prompt, Shapes::ShapeRef.new(shape: HarnessSystemPrompt, location_name: "systemPrompt"))
    CreateHarnessRequest.add_member(:tools, Shapes::ShapeRef.new(shape: HarnessTools, location_name: "tools"))
    CreateHarnessRequest.add_member(:skills, Shapes::ShapeRef.new(shape: HarnessSkills, location_name: "skills"))
    CreateHarnessRequest.add_member(:allowed_tools, Shapes::ShapeRef.new(shape: HarnessAllowedTools, location_name: "allowedTools"))
    CreateHarnessRequest.add_member(:memory, Shapes::ShapeRef.new(shape: HarnessMemoryConfiguration, location_name: "memory"))
    CreateHarnessRequest.add_member(:truncation, Shapes::ShapeRef.new(shape: HarnessTruncationConfiguration, location_name: "truncation"))
    CreateHarnessRequest.add_member(:max_iterations, Shapes::ShapeRef.new(shape: Integer, location_name: "maxIterations"))
    CreateHarnessRequest.add_member(:max_tokens, Shapes::ShapeRef.new(shape: Integer, location_name: "maxTokens"))
    CreateHarnessRequest.add_member(:timeout_seconds, Shapes::ShapeRef.new(shape: Integer, location_name: "timeoutSeconds"))
    CreateHarnessRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    CreateHarnessRequest.struct_class = Types::CreateHarnessRequest

    CreateHarnessResponse.add_member(:harness, Shapes::ShapeRef.new(shape: Harness, required: true, location_name: "harness"))
    CreateHarnessResponse.struct_class = Types::CreateHarnessResponse

    CreateMemoryInput.add_member(:client_token, Shapes::ShapeRef.new(shape: CreateMemoryInputClientTokenString, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateMemoryInput.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    CreateMemoryInput.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateMemoryInput.add_member(:encryption_key_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "encryptionKeyArn"))
    CreateMemoryInput.add_member(:memory_execution_role_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "memoryExecutionRoleArn"))
    CreateMemoryInput.add_member(:event_expiry_duration, Shapes::ShapeRef.new(shape: CreateMemoryInputEventExpiryDurationInteger, required: true, location_name: "eventExpiryDuration"))
    CreateMemoryInput.add_member(:memory_strategies, Shapes::ShapeRef.new(shape: MemoryStrategyInputList, location_name: "memoryStrategies"))
    CreateMemoryInput.add_member(:indexed_keys, Shapes::ShapeRef.new(shape: IndexedKeysList, location_name: "indexedKeys"))
    CreateMemoryInput.add_member(:namespace_keys, Shapes::ShapeRef.new(shape: NamespaceKeysList, location_name: "namespaceKeys"))
    CreateMemoryInput.add_member(:stream_delivery_resources, Shapes::ShapeRef.new(shape: StreamDeliveryResources, location_name: "streamDeliveryResources"))
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
    CreateOauth2CredentialProviderResponse.add_member(:client_secret_json_key, Shapes::ShapeRef.new(shape: SecretJsonKeyType, location_name: "clientSecretJsonKey"))
    CreateOauth2CredentialProviderResponse.add_member(:client_secret_source, Shapes::ShapeRef.new(shape: SecretSourceType, location_name: "clientSecretSource"))
    CreateOauth2CredentialProviderResponse.add_member(:name, Shapes::ShapeRef.new(shape: CredentialProviderName, required: true, location_name: "name"))
    CreateOauth2CredentialProviderResponse.add_member(:credential_provider_arn, Shapes::ShapeRef.new(shape: CredentialProviderArnType, required: true, location_name: "credentialProviderArn"))
    CreateOauth2CredentialProviderResponse.add_member(:callback_url, Shapes::ShapeRef.new(shape: String, location_name: "callbackUrl"))
    CreateOauth2CredentialProviderResponse.add_member(:oauth2_provider_config_output, Shapes::ShapeRef.new(shape: Oauth2ProviderConfigOutput, location_name: "oauth2ProviderConfigOutput"))
    CreateOauth2CredentialProviderResponse.add_member(:status, Shapes::ShapeRef.new(shape: Status, location_name: "status"))
    CreateOauth2CredentialProviderResponse.struct_class = Types::CreateOauth2CredentialProviderResponse

    CreateOnlineEvaluationConfigRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateOnlineEvaluationConfigRequest.add_member(:online_evaluation_config_name, Shapes::ShapeRef.new(shape: EvaluationConfigName, required: true, location_name: "onlineEvaluationConfigName"))
    CreateOnlineEvaluationConfigRequest.add_member(:description, Shapes::ShapeRef.new(shape: EvaluationConfigDescription, location_name: "description"))
    CreateOnlineEvaluationConfigRequest.add_member(:rule, Shapes::ShapeRef.new(shape: Rule, required: true, location_name: "rule"))
    CreateOnlineEvaluationConfigRequest.add_member(:data_source_config, Shapes::ShapeRef.new(shape: DataSourceConfig, required: true, location_name: "dataSourceConfig"))
    CreateOnlineEvaluationConfigRequest.add_member(:evaluators, Shapes::ShapeRef.new(shape: EvaluatorList, location_name: "evaluators"))
    CreateOnlineEvaluationConfigRequest.add_member(:insights, Shapes::ShapeRef.new(shape: InsightList, location_name: "insights"))
    CreateOnlineEvaluationConfigRequest.add_member(:clustering_config, Shapes::ShapeRef.new(shape: ClusteringConfig, location_name: "clusteringConfig"))
    CreateOnlineEvaluationConfigRequest.add_member(:output_config, Shapes::ShapeRef.new(shape: OutputConfig, location_name: "outputConfig"))
    CreateOnlineEvaluationConfigRequest.add_member(:evaluation_execution_role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "evaluationExecutionRoleArn"))
    CreateOnlineEvaluationConfigRequest.add_member(:enable_on_create, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "enableOnCreate"))
    CreateOnlineEvaluationConfigRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    CreateOnlineEvaluationConfigRequest.struct_class = Types::CreateOnlineEvaluationConfigRequest

    CreateOnlineEvaluationConfigResponse.add_member(:online_evaluation_config_arn, Shapes::ShapeRef.new(shape: OnlineEvaluationConfigArn, required: true, location_name: "onlineEvaluationConfigArn"))
    CreateOnlineEvaluationConfigResponse.add_member(:online_evaluation_config_id, Shapes::ShapeRef.new(shape: OnlineEvaluationConfigId, required: true, location_name: "onlineEvaluationConfigId"))
    CreateOnlineEvaluationConfigResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    CreateOnlineEvaluationConfigResponse.add_member(:output_config, Shapes::ShapeRef.new(shape: OutputConfig, location_name: "outputConfig"))
    CreateOnlineEvaluationConfigResponse.add_member(:status, Shapes::ShapeRef.new(shape: OnlineEvaluationConfigStatus, required: true, location_name: "status"))
    CreateOnlineEvaluationConfigResponse.add_member(:execution_status, Shapes::ShapeRef.new(shape: OnlineEvaluationExecutionStatus, required: true, location_name: "executionStatus"))
    CreateOnlineEvaluationConfigResponse.add_member(:failure_reason, Shapes::ShapeRef.new(shape: String, location_name: "failureReason"))
    CreateOnlineEvaluationConfigResponse.struct_class = Types::CreateOnlineEvaluationConfigResponse

    CreatePaymentConnectorRequest.add_member(:payment_manager_id, Shapes::ShapeRef.new(shape: PaymentManagerId, required: true, location: "uri", location_name: "paymentManagerId"))
    CreatePaymentConnectorRequest.add_member(:name, Shapes::ShapeRef.new(shape: PaymentConnectorName, required: true, location_name: "name"))
    CreatePaymentConnectorRequest.add_member(:description, Shapes::ShapeRef.new(shape: PaymentsDescription, location_name: "description"))
    CreatePaymentConnectorRequest.add_member(:type, Shapes::ShapeRef.new(shape: PaymentConnectorType, required: true, location_name: "type"))
    CreatePaymentConnectorRequest.add_member(:credential_provider_configurations, Shapes::ShapeRef.new(shape: CredentialsProviderConfigurations, required: true, location_name: "credentialProviderConfigurations"))
    CreatePaymentConnectorRequest.add_member(:provision_mode, Shapes::ShapeRef.new(shape: PaymentConnectorProvisionMode, location_name: "provisionMode"))
    CreatePaymentConnectorRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreatePaymentConnectorRequest.struct_class = Types::CreatePaymentConnectorRequest

    CreatePaymentConnectorResponse.add_member(:payment_connector_id, Shapes::ShapeRef.new(shape: PaymentConnectorId, required: true, location_name: "paymentConnectorId"))
    CreatePaymentConnectorResponse.add_member(:payment_manager_id, Shapes::ShapeRef.new(shape: PaymentManagerId, required: true, location_name: "paymentManagerId"))
    CreatePaymentConnectorResponse.add_member(:name, Shapes::ShapeRef.new(shape: PaymentConnectorName, required: true, location_name: "name"))
    CreatePaymentConnectorResponse.add_member(:type, Shapes::ShapeRef.new(shape: PaymentConnectorType, required: true, location_name: "type"))
    CreatePaymentConnectorResponse.add_member(:credential_provider_configurations, Shapes::ShapeRef.new(shape: CredentialsProviderConfigurations, required: true, location_name: "credentialProviderConfigurations"))
    CreatePaymentConnectorResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    CreatePaymentConnectorResponse.add_member(:status, Shapes::ShapeRef.new(shape: PaymentConnectorStatus, required: true, location_name: "status"))
    CreatePaymentConnectorResponse.add_member(:authorization_url, Shapes::ShapeRef.new(shape: PaymentConnectorAuthorizationUrl, location_name: "authorizationUrl"))
    CreatePaymentConnectorResponse.struct_class = Types::CreatePaymentConnectorResponse

    CreatePaymentCredentialProviderRequest.add_member(:name, Shapes::ShapeRef.new(shape: CredentialProviderName, required: true, location_name: "name"))
    CreatePaymentCredentialProviderRequest.add_member(:credential_provider_vendor, Shapes::ShapeRef.new(shape: PaymentCredentialProviderVendorType, required: true, location_name: "credentialProviderVendor"))
    CreatePaymentCredentialProviderRequest.add_member(:provider_configuration_input, Shapes::ShapeRef.new(shape: PaymentProviderConfigurationInput, required: true, location_name: "providerConfigurationInput"))
    CreatePaymentCredentialProviderRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    CreatePaymentCredentialProviderRequest.struct_class = Types::CreatePaymentCredentialProviderRequest

    CreatePaymentCredentialProviderResponse.add_member(:name, Shapes::ShapeRef.new(shape: CredentialProviderName, required: true, location_name: "name"))
    CreatePaymentCredentialProviderResponse.add_member(:credential_provider_vendor, Shapes::ShapeRef.new(shape: PaymentCredentialProviderVendorType, required: true, location_name: "credentialProviderVendor"))
    CreatePaymentCredentialProviderResponse.add_member(:credential_provider_arn, Shapes::ShapeRef.new(shape: PaymentCredentialProviderArnType, required: true, location_name: "credentialProviderArn"))
    CreatePaymentCredentialProviderResponse.add_member(:provider_configuration_output, Shapes::ShapeRef.new(shape: PaymentProviderConfigurationOutput, required: true, location_name: "providerConfigurationOutput"))
    CreatePaymentCredentialProviderResponse.struct_class = Types::CreatePaymentCredentialProviderResponse

    CreatePaymentManagerRequest.add_member(:name, Shapes::ShapeRef.new(shape: PaymentManagerName, required: true, location_name: "name"))
    CreatePaymentManagerRequest.add_member(:description, Shapes::ShapeRef.new(shape: PaymentsDescription, location_name: "description"))
    CreatePaymentManagerRequest.add_member(:authorizer_type, Shapes::ShapeRef.new(shape: PaymentsAuthorizerType, required: true, location_name: "authorizerType"))
    CreatePaymentManagerRequest.add_member(:authorizer_configuration, Shapes::ShapeRef.new(shape: AuthorizerConfiguration, location_name: "authorizerConfiguration"))
    CreatePaymentManagerRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "roleArn"))
    CreatePaymentManagerRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreatePaymentManagerRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    CreatePaymentManagerRequest.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "kmsKeyArn"))
    CreatePaymentManagerRequest.struct_class = Types::CreatePaymentManagerRequest

    CreatePaymentManagerResponse.add_member(:payment_manager_arn, Shapes::ShapeRef.new(shape: PaymentManagerArn, required: true, location_name: "paymentManagerArn"))
    CreatePaymentManagerResponse.add_member(:payment_manager_id, Shapes::ShapeRef.new(shape: PaymentManagerId, required: true, location_name: "paymentManagerId"))
    CreatePaymentManagerResponse.add_member(:name, Shapes::ShapeRef.new(shape: PaymentManagerName, required: true, location_name: "name"))
    CreatePaymentManagerResponse.add_member(:authorizer_type, Shapes::ShapeRef.new(shape: PaymentsAuthorizerType, required: true, location_name: "authorizerType"))
    CreatePaymentManagerResponse.add_member(:authorizer_configuration, Shapes::ShapeRef.new(shape: AuthorizerConfiguration, location_name: "authorizerConfiguration"))
    CreatePaymentManagerResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "roleArn"))
    CreatePaymentManagerResponse.add_member(:workload_identity_details, Shapes::ShapeRef.new(shape: WorkloadIdentityDetails, location_name: "workloadIdentityDetails"))
    CreatePaymentManagerResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    CreatePaymentManagerResponse.add_member(:status, Shapes::ShapeRef.new(shape: PaymentManagerStatus, required: true, location_name: "status"))
    CreatePaymentManagerResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    CreatePaymentManagerResponse.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "kmsKeyArn"))
    CreatePaymentManagerResponse.struct_class = Types::CreatePaymentManagerResponse

    CreatePolicyEngineRequest.add_member(:name, Shapes::ShapeRef.new(shape: PolicyEngineName, required: true, location_name: "name"))
    CreatePolicyEngineRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreatePolicyEngineRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreatePolicyEngineRequest.add_member(:encryption_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "encryptionKeyArn"))
    CreatePolicyEngineRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    CreatePolicyEngineRequest.struct_class = Types::CreatePolicyEngineRequest

    CreatePolicyEngineResponse.add_member(:policy_engine_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "policyEngineId"))
    CreatePolicyEngineResponse.add_member(:name, Shapes::ShapeRef.new(shape: PolicyEngineName, required: true, location_name: "name"))
    CreatePolicyEngineResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    CreatePolicyEngineResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "updatedAt"))
    CreatePolicyEngineResponse.add_member(:policy_engine_arn, Shapes::ShapeRef.new(shape: PolicyEngineArn, required: true, location_name: "policyEngineArn"))
    CreatePolicyEngineResponse.add_member(:status, Shapes::ShapeRef.new(shape: PolicyEngineStatus, required: true, location_name: "status"))
    CreatePolicyEngineResponse.add_member(:encryption_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "encryptionKeyArn"))
    CreatePolicyEngineResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreatePolicyEngineResponse.add_member(:status_reasons, Shapes::ShapeRef.new(shape: PolicyStatusReasons, required: true, location_name: "statusReasons"))
    CreatePolicyEngineResponse.struct_class = Types::CreatePolicyEngineResponse

    CreatePolicyRequest.add_member(:name, Shapes::ShapeRef.new(shape: PolicyName, required: true, location_name: "name"))
    CreatePolicyRequest.add_member(:definition, Shapes::ShapeRef.new(shape: PolicyDefinition, required: true, location_name: "definition"))
    CreatePolicyRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreatePolicyRequest.add_member(:validation_mode, Shapes::ShapeRef.new(shape: PolicyValidationMode, location_name: "validationMode"))
    CreatePolicyRequest.add_member(:enforcement_mode, Shapes::ShapeRef.new(shape: EnforcementMode, location_name: "enforcementMode"))
    CreatePolicyRequest.add_member(:policy_engine_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "policyEngineId"))
    CreatePolicyRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreatePolicyRequest.struct_class = Types::CreatePolicyRequest

    CreatePolicyResponse.add_member(:policy_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "policyId"))
    CreatePolicyResponse.add_member(:name, Shapes::ShapeRef.new(shape: PolicyName, required: true, location_name: "name"))
    CreatePolicyResponse.add_member(:policy_engine_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "policyEngineId"))
    CreatePolicyResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    CreatePolicyResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "updatedAt"))
    CreatePolicyResponse.add_member(:policy_arn, Shapes::ShapeRef.new(shape: PolicyArn, required: true, location_name: "policyArn"))
    CreatePolicyResponse.add_member(:status, Shapes::ShapeRef.new(shape: PolicyStatus, required: true, location_name: "status"))
    CreatePolicyResponse.add_member(:enforcement_mode, Shapes::ShapeRef.new(shape: EnforcementMode, location_name: "enforcementMode"))
    CreatePolicyResponse.add_member(:definition, Shapes::ShapeRef.new(shape: PolicyDefinition, required: true, location_name: "definition"))
    CreatePolicyResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreatePolicyResponse.add_member(:status_reasons, Shapes::ShapeRef.new(shape: PolicyStatusReasons, required: true, location_name: "statusReasons"))
    CreatePolicyResponse.struct_class = Types::CreatePolicyResponse

    CreateRegistryRecordRequest.add_member(:registry_id, Shapes::ShapeRef.new(shape: RegistryIdentifier, required: true, location: "uri", location_name: "registryId"))
    CreateRegistryRecordRequest.add_member(:name, Shapes::ShapeRef.new(shape: RegistryRecordName, required: true, location_name: "name"))
    CreateRegistryRecordRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateRegistryRecordRequest.add_member(:descriptor_type, Shapes::ShapeRef.new(shape: DescriptorType, required: true, location_name: "descriptorType"))
    CreateRegistryRecordRequest.add_member(:descriptors, Shapes::ShapeRef.new(shape: Descriptors, location_name: "descriptors"))
    CreateRegistryRecordRequest.add_member(:record_version, Shapes::ShapeRef.new(shape: RegistryRecordVersion, location_name: "recordVersion"))
    CreateRegistryRecordRequest.add_member(:synchronization_type, Shapes::ShapeRef.new(shape: SynchronizationType, location_name: "synchronizationType"))
    CreateRegistryRecordRequest.add_member(:synchronization_configuration, Shapes::ShapeRef.new(shape: SynchronizationConfiguration, location_name: "synchronizationConfiguration"))
    CreateRegistryRecordRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateRegistryRecordRequest.struct_class = Types::CreateRegistryRecordRequest

    CreateRegistryRecordResponse.add_member(:record_arn, Shapes::ShapeRef.new(shape: RegistryRecordArn, required: true, location_name: "recordArn"))
    CreateRegistryRecordResponse.add_member(:status, Shapes::ShapeRef.new(shape: RegistryRecordStatus, required: true, location_name: "status"))
    CreateRegistryRecordResponse.struct_class = Types::CreateRegistryRecordResponse

    CreateRegistryRequest.add_member(:name, Shapes::ShapeRef.new(shape: RegistryName, required: true, location_name: "name"))
    CreateRegistryRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateRegistryRequest.add_member(:authorizer_type, Shapes::ShapeRef.new(shape: RegistryAuthorizerType, location_name: "authorizerType"))
    CreateRegistryRequest.add_member(:authorizer_configuration, Shapes::ShapeRef.new(shape: AuthorizerConfiguration, location_name: "authorizerConfiguration"))
    CreateRegistryRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateRegistryRequest.add_member(:approval_configuration, Shapes::ShapeRef.new(shape: ApprovalConfiguration, location_name: "approvalConfiguration"))
    CreateRegistryRequest.struct_class = Types::CreateRegistryRequest

    CreateRegistryResponse.add_member(:registry_arn, Shapes::ShapeRef.new(shape: RegistryArn, required: true, location_name: "registryArn"))
    CreateRegistryResponse.struct_class = Types::CreateRegistryResponse

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
    CredentialProvider.add_member(:iam_credential_provider, Shapes::ShapeRef.new(shape: IamCredentialProvider, location_name: "iamCredentialProvider"))
    CredentialProvider.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    CredentialProvider.add_member_subclass(:oauth_credential_provider, Types::CredentialProvider::OauthCredentialProvider)
    CredentialProvider.add_member_subclass(:api_key_credential_provider, Types::CredentialProvider::ApiKeyCredentialProvider)
    CredentialProvider.add_member_subclass(:iam_credential_provider, Types::CredentialProvider::IamCredentialProvider)
    CredentialProvider.add_member_subclass(:unknown, Types::CredentialProvider::Unknown)
    CredentialProvider.struct_class = Types::CredentialProvider

    CredentialProviderConfiguration.add_member(:credential_provider_type, Shapes::ShapeRef.new(shape: CredentialProviderType, required: true, location_name: "credentialProviderType"))
    CredentialProviderConfiguration.add_member(:credential_provider, Shapes::ShapeRef.new(shape: CredentialProvider, location_name: "credentialProvider"))
    CredentialProviderConfiguration.struct_class = Types::CredentialProviderConfiguration

    CredentialProviderConfigurations.member = Shapes::ShapeRef.new(shape: CredentialProviderConfiguration)

    CredentialsProviderConfiguration.add_member(:coinbase_cdp, Shapes::ShapeRef.new(shape: PaymentCredentialProviderConfiguration, location_name: "coinbaseCDP"))
    CredentialsProviderConfiguration.add_member(:stripe_privy, Shapes::ShapeRef.new(shape: PaymentCredentialProviderConfiguration, location_name: "stripePrivy"))
    CredentialsProviderConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    CredentialsProviderConfiguration.add_member_subclass(:coinbase_cdp, Types::CredentialsProviderConfiguration::CoinbaseCdp)
    CredentialsProviderConfiguration.add_member_subclass(:stripe_privy, Types::CredentialsProviderConfiguration::StripePrivy)
    CredentialsProviderConfiguration.add_member_subclass(:unknown, Types::CredentialsProviderConfiguration::Unknown)
    CredentialsProviderConfiguration.struct_class = Types::CredentialsProviderConfiguration

    CredentialsProviderConfigurations.member = Shapes::ShapeRef.new(shape: CredentialsProviderConfiguration)

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

    CustomDescriptor.add_member(:inline_content, Shapes::ShapeRef.new(shape: InlineContent, location_name: "inlineContent"))
    CustomDescriptor.struct_class = Types::CustomDescriptor

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
    CustomJWTAuthorizerConfiguration.add_member(:advertised_scope_mapping, Shapes::ShapeRef.new(shape: AdvertisedScopeMappingType, location_name: "advertisedScopeMapping"))
    CustomJWTAuthorizerConfiguration.add_member(:custom_claims, Shapes::ShapeRef.new(shape: CustomClaimValidationsType, location_name: "customClaims"))
    CustomJWTAuthorizerConfiguration.add_member(:private_endpoint, Shapes::ShapeRef.new(shape: PrivateEndpoint, location_name: "privateEndpoint"))
    CustomJWTAuthorizerConfiguration.add_member(:private_endpoint_overrides, Shapes::ShapeRef.new(shape: PrivateEndpointOverrides, location_name: "privateEndpointOverrides"))
    CustomJWTAuthorizerConfiguration.add_member(:allowed_workload_configuration, Shapes::ShapeRef.new(shape: AllowedWorkloadConfiguration, location_name: "allowedWorkloadConfiguration"))
    CustomJWTAuthorizerConfiguration.struct_class = Types::CustomJWTAuthorizerConfiguration

    CustomMemoryStrategyInput.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    CustomMemoryStrategyInput.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CustomMemoryStrategyInput.add_member(:namespaces, Shapes::ShapeRef.new(shape: NamespacesList, deprecated: true, location_name: "namespaces", metadata: {"deprecatedMessage" => "Use namespaceTemplates instead", "deprecatedSince" => "2026-03-02"}))
    CustomMemoryStrategyInput.add_member(:namespace_templates, Shapes::ShapeRef.new(shape: NamespacesList, location_name: "namespaceTemplates"))
    CustomMemoryStrategyInput.add_member(:configuration, Shapes::ShapeRef.new(shape: CustomConfigurationInput, location_name: "configuration"))
    CustomMemoryStrategyInput.add_member(:memory_record_schema, Shapes::ShapeRef.new(shape: MemoryRecordSchema, location_name: "memoryRecordSchema"))
    CustomMemoryStrategyInput.struct_class = Types::CustomMemoryStrategyInput

    CustomOauth2ProviderConfigInput.add_member(:oauth_discovery, Shapes::ShapeRef.new(shape: Oauth2Discovery, required: true, location_name: "oauthDiscovery"))
    CustomOauth2ProviderConfigInput.add_member(:client_id, Shapes::ShapeRef.new(shape: DefaultClientIdType, location_name: "clientId"))
    CustomOauth2ProviderConfigInput.add_member(:client_secret, Shapes::ShapeRef.new(shape: DefaultClientSecretType, location_name: "clientSecret"))
    CustomOauth2ProviderConfigInput.add_member(:client_secret_config, Shapes::ShapeRef.new(shape: SecretReference, location_name: "clientSecretConfig"))
    CustomOauth2ProviderConfigInput.add_member(:client_secret_source, Shapes::ShapeRef.new(shape: SecretSourceType, location_name: "clientSecretSource"))
    CustomOauth2ProviderConfigInput.add_member(:on_behalf_of_token_exchange_config, Shapes::ShapeRef.new(shape: OnBehalfOfTokenExchangeConfigType, location_name: "onBehalfOfTokenExchangeConfig"))
    CustomOauth2ProviderConfigInput.add_member(:client_authentication_method, Shapes::ShapeRef.new(shape: ClientAuthenticationMethodType, location_name: "clientAuthenticationMethod"))
    CustomOauth2ProviderConfigInput.add_member(:private_key_jwt_config, Shapes::ShapeRef.new(shape: PrivateKeyJwtConfig, location_name: "privateKeyJwtConfig"))
    CustomOauth2ProviderConfigInput.add_member(:private_endpoint, Shapes::ShapeRef.new(shape: PrivateEndpoint, location_name: "privateEndpoint"))
    CustomOauth2ProviderConfigInput.add_member(:private_endpoint_overrides, Shapes::ShapeRef.new(shape: PrivateEndpointOverrides, location_name: "privateEndpointOverrides"))
    CustomOauth2ProviderConfigInput.struct_class = Types::CustomOauth2ProviderConfigInput

    CustomOauth2ProviderConfigOutput.add_member(:oauth_discovery, Shapes::ShapeRef.new(shape: Oauth2Discovery, required: true, location_name: "oauthDiscovery"))
    CustomOauth2ProviderConfigOutput.add_member(:client_id, Shapes::ShapeRef.new(shape: ClientIdType, location_name: "clientId"))
    CustomOauth2ProviderConfigOutput.add_member(:on_behalf_of_token_exchange_config, Shapes::ShapeRef.new(shape: OnBehalfOfTokenExchangeConfigType, location_name: "onBehalfOfTokenExchangeConfig"))
    CustomOauth2ProviderConfigOutput.add_member(:client_authentication_method, Shapes::ShapeRef.new(shape: ClientAuthenticationMethodType, location_name: "clientAuthenticationMethod"))
    CustomOauth2ProviderConfigOutput.add_member(:private_endpoint, Shapes::ShapeRef.new(shape: PrivateEndpoint, location_name: "privateEndpoint"))
    CustomOauth2ProviderConfigOutput.add_member(:private_endpoint_overrides, Shapes::ShapeRef.new(shape: PrivateEndpointOverrides, location_name: "privateEndpointOverrides"))
    CustomOauth2ProviderConfigOutput.add_member(:private_key_jwt_config, Shapes::ShapeRef.new(shape: PrivateKeyJwtConfig, location_name: "privateKeyJwtConfig"))
    CustomOauth2ProviderConfigOutput.struct_class = Types::CustomOauth2ProviderConfigOutput

    CustomParameterMap.key = Shapes::ShapeRef.new(shape: String)
    CustomParameterMap.value = Shapes::ShapeRef.new(shape: String)

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

    CustomTransformConfiguration.add_member(:lambda, Shapes::ShapeRef.new(shape: LambdaTransformConfiguration, location_name: "lambda"))
    CustomTransformConfiguration.struct_class = Types::CustomTransformConfiguration

    DataSourceConfig.add_member(:cloud_watch_logs, Shapes::ShapeRef.new(shape: CloudWatchLogsInputConfig, location_name: "cloudWatchLogs"))
    DataSourceConfig.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    DataSourceConfig.add_member_subclass(:cloud_watch_logs, Types::DataSourceConfig::CloudWatchLogs)
    DataSourceConfig.add_member_subclass(:unknown, Types::DataSourceConfig::Unknown)
    DataSourceConfig.struct_class = Types::DataSourceConfig

    DataSourceType.add_member(:inline_examples, Shapes::ShapeRef.new(shape: InlineExamplesSource, location_name: "inlineExamples"))
    DataSourceType.add_member(:s3_source, Shapes::ShapeRef.new(shape: S3Source, location_name: "s3Source"))
    DataSourceType.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    DataSourceType.add_member_subclass(:inline_examples, Types::DataSourceType::InlineExamples)
    DataSourceType.add_member_subclass(:s3_source, Types::DataSourceType::S3Source)
    DataSourceType.add_member_subclass(:unknown, Types::DataSourceType::Unknown)
    DataSourceType.struct_class = Types::DataSourceType

    DatasetExampleList.member = Shapes::ShapeRef.new(shape: SensitiveJson)

    DatasetSummary.add_member(:dataset_arn, Shapes::ShapeRef.new(shape: DatasetArn, required: true, location_name: "datasetArn"))
    DatasetSummary.add_member(:dataset_id, Shapes::ShapeRef.new(shape: DatasetId, required: true, location_name: "datasetId"))
    DatasetSummary.add_member(:dataset_name, Shapes::ShapeRef.new(shape: DatasetName, required: true, location_name: "datasetName"))
    DatasetSummary.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    DatasetSummary.add_member(:status, Shapes::ShapeRef.new(shape: DatasetStatus, required: true, location_name: "status"))
    DatasetSummary.add_member(:draft_status, Shapes::ShapeRef.new(shape: DraftStatus, location_name: "draftStatus"))
    DatasetSummary.add_member(:schema_type, Shapes::ShapeRef.new(shape: DatasetSchemaType, required: true, location_name: "schemaType"))
    DatasetSummary.add_member(:example_count, Shapes::ShapeRef.new(shape: Long, required: true, location_name: "exampleCount"))
    DatasetSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    DatasetSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    DatasetSummary.struct_class = Types::DatasetSummary

    DatasetSummaryList.member = Shapes::ShapeRef.new(shape: DatasetSummary)

    DatasetVersionSummary.add_member(:dataset_version, Shapes::ShapeRef.new(shape: DatasetVersion, required: true, location_name: "datasetVersion"))
    DatasetVersionSummary.add_member(:example_count, Shapes::ShapeRef.new(shape: Long, required: true, location_name: "exampleCount"))
    DatasetVersionSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    DatasetVersionSummary.struct_class = Types::DatasetVersionSummary

    DatasetVersionSummaryList.member = Shapes::ShapeRef.new(shape: DatasetVersionSummary)

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
    DeleteAgentRuntimeRequest.add_member(:agent_runtime_version, Shapes::ShapeRef.new(shape: AgentRuntimeVersion, location: "querystring", location_name: "version"))
    DeleteAgentRuntimeRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "querystring", location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    DeleteAgentRuntimeRequest.struct_class = Types::DeleteAgentRuntimeRequest

    DeleteAgentRuntimeResponse.add_member(:status, Shapes::ShapeRef.new(shape: AgentRuntimeStatus, required: true, location_name: "status"))
    DeleteAgentRuntimeResponse.add_member(:agent_runtime_id, Shapes::ShapeRef.new(shape: AgentRuntimeId, location_name: "agentRuntimeId"))
    DeleteAgentRuntimeResponse.add_member(:agent_runtime_version, Shapes::ShapeRef.new(shape: AgentRuntimeVersion, location_name: "agentRuntimeVersion"))
    DeleteAgentRuntimeResponse.struct_class = Types::DeleteAgentRuntimeResponse

    DeleteApiKeyCredentialProviderRequest.add_member(:name, Shapes::ShapeRef.new(shape: CredentialProviderName, required: true, location_name: "name"))
    DeleteApiKeyCredentialProviderRequest.struct_class = Types::DeleteApiKeyCredentialProviderRequest

    DeleteApiKeyCredentialProviderResponse.struct_class = Types::DeleteApiKeyCredentialProviderResponse

    DeleteBrowserProfileRequest.add_member(:profile_id, Shapes::ShapeRef.new(shape: BrowserProfileId, required: true, location: "uri", location_name: "profileId"))
    DeleteBrowserProfileRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "querystring", location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    DeleteBrowserProfileRequest.struct_class = Types::DeleteBrowserProfileRequest

    DeleteBrowserProfileResponse.add_member(:profile_id, Shapes::ShapeRef.new(shape: BrowserProfileId, required: true, location_name: "profileId"))
    DeleteBrowserProfileResponse.add_member(:profile_arn, Shapes::ShapeRef.new(shape: BrowserProfileArn, required: true, location_name: "profileArn"))
    DeleteBrowserProfileResponse.add_member(:status, Shapes::ShapeRef.new(shape: BrowserProfileStatus, required: true, location_name: "status"))
    DeleteBrowserProfileResponse.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "lastUpdatedAt"))
    DeleteBrowserProfileResponse.add_member(:last_saved_at, Shapes::ShapeRef.new(shape: DateTimestamp, location_name: "lastSavedAt"))
    DeleteBrowserProfileResponse.struct_class = Types::DeleteBrowserProfileResponse

    DeleteBrowserRequest.add_member(:browser_id, Shapes::ShapeRef.new(shape: BrowserId, required: true, location: "uri", location_name: "browserId"))
    DeleteBrowserRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "querystring", location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    DeleteBrowserRequest.struct_class = Types::DeleteBrowserRequest

    DeleteBrowserResponse.add_member(:browser_id, Shapes::ShapeRef.new(shape: BrowserId, required: true, location_name: "browserId"))
    DeleteBrowserResponse.add_member(:status, Shapes::ShapeRef.new(shape: BrowserStatus, required: true, location_name: "status"))
    DeleteBrowserResponse.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "lastUpdatedAt"))
    DeleteBrowserResponse.struct_class = Types::DeleteBrowserResponse

    DeleteCapacityProviderInput.add_member(:capacity_provider_id, Shapes::ShapeRef.new(shape: CapacityProviderId, required: true, location: "uri", location_name: "capacityProviderId"))
    DeleteCapacityProviderInput.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "querystring", location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    DeleteCapacityProviderInput.struct_class = Types::DeleteCapacityProviderInput

    DeleteCapacityProviderOutput.add_member(:capacity_provider_id, Shapes::ShapeRef.new(shape: CapacityProviderId, required: true, location_name: "capacityProviderId"))
    DeleteCapacityProviderOutput.add_member(:status, Shapes::ShapeRef.new(shape: CapacityProviderStatus, required: true, location_name: "status"))
    DeleteCapacityProviderOutput.struct_class = Types::DeleteCapacityProviderOutput

    DeleteCodeInterpreterRequest.add_member(:code_interpreter_id, Shapes::ShapeRef.new(shape: CodeInterpreterId, required: true, location: "uri", location_name: "codeInterpreterId"))
    DeleteCodeInterpreterRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "querystring", location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    DeleteCodeInterpreterRequest.struct_class = Types::DeleteCodeInterpreterRequest

    DeleteCodeInterpreterResponse.add_member(:code_interpreter_id, Shapes::ShapeRef.new(shape: CodeInterpreterId, required: true, location_name: "codeInterpreterId"))
    DeleteCodeInterpreterResponse.add_member(:status, Shapes::ShapeRef.new(shape: CodeInterpreterStatus, required: true, location_name: "status"))
    DeleteCodeInterpreterResponse.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "lastUpdatedAt"))
    DeleteCodeInterpreterResponse.struct_class = Types::DeleteCodeInterpreterResponse

    DeleteConfigurationBundleRequest.add_member(:bundle_id, Shapes::ShapeRef.new(shape: ConfigurationBundleId, required: true, location: "uri", location_name: "bundleId"))
    DeleteConfigurationBundleRequest.struct_class = Types::DeleteConfigurationBundleRequest

    DeleteConfigurationBundleResponse.add_member(:bundle_id, Shapes::ShapeRef.new(shape: ConfigurationBundleId, required: true, location_name: "bundleId"))
    DeleteConfigurationBundleResponse.add_member(:status, Shapes::ShapeRef.new(shape: ConfigurationBundleStatus, required: true, location_name: "status"))
    DeleteConfigurationBundleResponse.struct_class = Types::DeleteConfigurationBundleResponse

    DeleteConsentPortalRequest.add_member(:consent_portal_identifier, Shapes::ShapeRef.new(shape: ConsentPortalIdentifier, required: true, location_name: "consentPortalIdentifier"))
    DeleteConsentPortalRequest.struct_class = Types::DeleteConsentPortalRequest

    DeleteConsentPortalResponse.struct_class = Types::DeleteConsentPortalResponse

    DeleteDatasetExamplesRequest.add_member(:dataset_id, Shapes::ShapeRef.new(shape: DatasetId, required: true, location: "uri", location_name: "datasetId"))
    DeleteDatasetExamplesRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    DeleteDatasetExamplesRequest.add_member(:example_ids, Shapes::ShapeRef.new(shape: DeleteDatasetExamplesRequestExampleIdsList, required: true, location_name: "exampleIds"))
    DeleteDatasetExamplesRequest.struct_class = Types::DeleteDatasetExamplesRequest

    DeleteDatasetExamplesRequestExampleIdsList.member = Shapes::ShapeRef.new(shape: ExampleId)

    DeleteDatasetExamplesResponse.add_member(:dataset_arn, Shapes::ShapeRef.new(shape: DatasetArn, required: true, location_name: "datasetArn"))
    DeleteDatasetExamplesResponse.add_member(:dataset_id, Shapes::ShapeRef.new(shape: DatasetId, required: true, location_name: "datasetId"))
    DeleteDatasetExamplesResponse.add_member(:status, Shapes::ShapeRef.new(shape: DatasetStatus, required: true, location_name: "status"))
    DeleteDatasetExamplesResponse.add_member(:deleted_count, Shapes::ShapeRef.new(shape: Long, required: true, location_name: "deletedCount"))
    DeleteDatasetExamplesResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    DeleteDatasetExamplesResponse.struct_class = Types::DeleteDatasetExamplesResponse

    DeleteDatasetRequest.add_member(:dataset_id, Shapes::ShapeRef.new(shape: DatasetId, required: true, location: "uri", location_name: "datasetId"))
    DeleteDatasetRequest.add_member(:dataset_version, Shapes::ShapeRef.new(shape: DatasetVersion, location: "querystring", location_name: "datasetVersion"))
    DeleteDatasetRequest.struct_class = Types::DeleteDatasetRequest

    DeleteDatasetResponse.add_member(:dataset_arn, Shapes::ShapeRef.new(shape: DatasetArn, required: true, location_name: "datasetArn"))
    DeleteDatasetResponse.add_member(:dataset_id, Shapes::ShapeRef.new(shape: DatasetId, required: true, location_name: "datasetId"))
    DeleteDatasetResponse.add_member(:status, Shapes::ShapeRef.new(shape: DatasetStatus, required: true, location_name: "status"))
    DeleteDatasetResponse.add_member(:dataset_version, Shapes::ShapeRef.new(shape: DatasetVersion, required: true, location_name: "datasetVersion"))
    DeleteDatasetResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    DeleteDatasetResponse.struct_class = Types::DeleteDatasetResponse

    DeleteEvaluatorRequest.add_member(:evaluator_id, Shapes::ShapeRef.new(shape: EvaluatorId, required: true, location: "uri", location_name: "evaluatorId"))
    DeleteEvaluatorRequest.struct_class = Types::DeleteEvaluatorRequest

    DeleteEvaluatorResponse.add_member(:evaluator_arn, Shapes::ShapeRef.new(shape: EvaluatorArn, required: true, location_name: "evaluatorArn"))
    DeleteEvaluatorResponse.add_member(:evaluator_id, Shapes::ShapeRef.new(shape: EvaluatorId, required: true, location_name: "evaluatorId"))
    DeleteEvaluatorResponse.add_member(:status, Shapes::ShapeRef.new(shape: EvaluatorStatus, required: true, location_name: "status"))
    DeleteEvaluatorResponse.struct_class = Types::DeleteEvaluatorResponse

    DeleteGatewayRateLimitRequest.add_member(:gateway_identifier, Shapes::ShapeRef.new(shape: GatewayIdentifier, required: true, location: "uri", location_name: "gatewayIdentifier"))
    DeleteGatewayRateLimitRequest.add_member(:rate_limit_id, Shapes::ShapeRef.new(shape: GatewayRateLimitId, required: true, location: "uri", location_name: "rateLimitId"))
    DeleteGatewayRateLimitRequest.struct_class = Types::DeleteGatewayRateLimitRequest

    DeleteGatewayRateLimitResponse.add_member(:rate_limit_id, Shapes::ShapeRef.new(shape: GatewayRateLimitId, required: true, location_name: "rateLimitId"))
    DeleteGatewayRateLimitResponse.add_member(:status, Shapes::ShapeRef.new(shape: GatewayRateLimitStatus, required: true, location_name: "status"))
    DeleteGatewayRateLimitResponse.struct_class = Types::DeleteGatewayRateLimitResponse

    DeleteGatewayRequest.add_member(:gateway_identifier, Shapes::ShapeRef.new(shape: GatewayIdentifier, required: true, location: "uri", location_name: "gatewayIdentifier"))
    DeleteGatewayRequest.struct_class = Types::DeleteGatewayRequest

    DeleteGatewayResponse.add_member(:gateway_id, Shapes::ShapeRef.new(shape: GatewayId, required: true, location_name: "gatewayId"))
    DeleteGatewayResponse.add_member(:status, Shapes::ShapeRef.new(shape: GatewayStatus, required: true, location_name: "status"))
    DeleteGatewayResponse.add_member(:status_reasons, Shapes::ShapeRef.new(shape: StatusReasons, location_name: "statusReasons"))
    DeleteGatewayResponse.struct_class = Types::DeleteGatewayResponse

    DeleteGatewayRuleRequest.add_member(:gateway_identifier, Shapes::ShapeRef.new(shape: GatewayIdentifier, required: true, location: "uri", location_name: "gatewayIdentifier"))
    DeleteGatewayRuleRequest.add_member(:rule_id, Shapes::ShapeRef.new(shape: GatewayRuleId, required: true, location: "uri", location_name: "ruleId"))
    DeleteGatewayRuleRequest.struct_class = Types::DeleteGatewayRuleRequest

    DeleteGatewayRuleResponse.add_member(:rule_id, Shapes::ShapeRef.new(shape: GatewayRuleId, required: true, location_name: "ruleId"))
    DeleteGatewayRuleResponse.add_member(:status, Shapes::ShapeRef.new(shape: GatewayRuleStatus, required: true, location_name: "status"))
    DeleteGatewayRuleResponse.struct_class = Types::DeleteGatewayRuleResponse

    DeleteGatewayTargetRequest.add_member(:gateway_identifier, Shapes::ShapeRef.new(shape: GatewayIdentifier, required: true, location: "uri", location_name: "gatewayIdentifier"))
    DeleteGatewayTargetRequest.add_member(:target_id, Shapes::ShapeRef.new(shape: TargetId, required: true, location: "uri", location_name: "targetId"))
    DeleteGatewayTargetRequest.struct_class = Types::DeleteGatewayTargetRequest

    DeleteGatewayTargetResponse.add_member(:gateway_arn, Shapes::ShapeRef.new(shape: GatewayArn, required: true, location_name: "gatewayArn"))
    DeleteGatewayTargetResponse.add_member(:target_id, Shapes::ShapeRef.new(shape: TargetId, required: true, location_name: "targetId"))
    DeleteGatewayTargetResponse.add_member(:status, Shapes::ShapeRef.new(shape: TargetStatus, required: true, location_name: "status"))
    DeleteGatewayTargetResponse.add_member(:status_reasons, Shapes::ShapeRef.new(shape: StatusReasons, location_name: "statusReasons"))
    DeleteGatewayTargetResponse.struct_class = Types::DeleteGatewayTargetResponse

    DeleteHarnessEndpointRequest.add_member(:harness_id, Shapes::ShapeRef.new(shape: HarnessId, required: true, location: "uri", location_name: "harnessId"))
    DeleteHarnessEndpointRequest.add_member(:endpoint_name, Shapes::ShapeRef.new(shape: HarnessEndpointName, required: true, location: "uri", location_name: "endpointName"))
    DeleteHarnessEndpointRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "querystring", location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    DeleteHarnessEndpointRequest.struct_class = Types::DeleteHarnessEndpointRequest

    DeleteHarnessEndpointResponse.add_member(:endpoint, Shapes::ShapeRef.new(shape: HarnessEndpoint, required: true, location_name: "endpoint"))
    DeleteHarnessEndpointResponse.struct_class = Types::DeleteHarnessEndpointResponse

    DeleteHarnessRequest.add_member(:harness_id, Shapes::ShapeRef.new(shape: HarnessId, required: true, location: "uri", location_name: "harnessId"))
    DeleteHarnessRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "querystring", location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    DeleteHarnessRequest.add_member(:delete_managed_memory, Shapes::ShapeRef.new(shape: Boolean, location: "querystring", location_name: "deleteManagedMemory"))
    DeleteHarnessRequest.struct_class = Types::DeleteHarnessRequest

    DeleteHarnessResponse.add_member(:harness, Shapes::ShapeRef.new(shape: Harness, location_name: "harness"))
    DeleteHarnessResponse.struct_class = Types::DeleteHarnessResponse

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

    DeletePaymentConnectorRequest.add_member(:payment_manager_id, Shapes::ShapeRef.new(shape: PaymentManagerId, required: true, location: "uri", location_name: "paymentManagerId"))
    DeletePaymentConnectorRequest.add_member(:payment_connector_id, Shapes::ShapeRef.new(shape: PaymentConnectorId, required: true, location: "uri", location_name: "paymentConnectorId"))
    DeletePaymentConnectorRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "querystring", location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    DeletePaymentConnectorRequest.struct_class = Types::DeletePaymentConnectorRequest

    DeletePaymentConnectorResponse.add_member(:status, Shapes::ShapeRef.new(shape: PaymentConnectorStatus, required: true, location_name: "status"))
    DeletePaymentConnectorResponse.add_member(:payment_connector_id, Shapes::ShapeRef.new(shape: PaymentConnectorId, location_name: "paymentConnectorId"))
    DeletePaymentConnectorResponse.struct_class = Types::DeletePaymentConnectorResponse

    DeletePaymentCredentialProviderRequest.add_member(:name, Shapes::ShapeRef.new(shape: CredentialProviderName, required: true, location_name: "name"))
    DeletePaymentCredentialProviderRequest.struct_class = Types::DeletePaymentCredentialProviderRequest

    DeletePaymentCredentialProviderResponse.struct_class = Types::DeletePaymentCredentialProviderResponse

    DeletePaymentManagerRequest.add_member(:payment_manager_id, Shapes::ShapeRef.new(shape: PaymentManagerId, required: true, location: "uri", location_name: "paymentManagerId"))
    DeletePaymentManagerRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "querystring", location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    DeletePaymentManagerRequest.struct_class = Types::DeletePaymentManagerRequest

    DeletePaymentManagerResponse.add_member(:status, Shapes::ShapeRef.new(shape: PaymentManagerStatus, required: true, location_name: "status"))
    DeletePaymentManagerResponse.add_member(:payment_manager_id, Shapes::ShapeRef.new(shape: PaymentManagerId, location_name: "paymentManagerId"))
    DeletePaymentManagerResponse.struct_class = Types::DeletePaymentManagerResponse

    DeletePolicyEngineRequest.add_member(:policy_engine_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "policyEngineId"))
    DeletePolicyEngineRequest.struct_class = Types::DeletePolicyEngineRequest

    DeletePolicyEngineResponse.add_member(:policy_engine_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "policyEngineId"))
    DeletePolicyEngineResponse.add_member(:name, Shapes::ShapeRef.new(shape: PolicyEngineName, required: true, location_name: "name"))
    DeletePolicyEngineResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    DeletePolicyEngineResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "updatedAt"))
    DeletePolicyEngineResponse.add_member(:policy_engine_arn, Shapes::ShapeRef.new(shape: PolicyEngineArn, required: true, location_name: "policyEngineArn"))
    DeletePolicyEngineResponse.add_member(:status, Shapes::ShapeRef.new(shape: PolicyEngineStatus, required: true, location_name: "status"))
    DeletePolicyEngineResponse.add_member(:encryption_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "encryptionKeyArn"))
    DeletePolicyEngineResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    DeletePolicyEngineResponse.add_member(:status_reasons, Shapes::ShapeRef.new(shape: PolicyStatusReasons, required: true, location_name: "statusReasons"))
    DeletePolicyEngineResponse.struct_class = Types::DeletePolicyEngineResponse

    DeletePolicyRequest.add_member(:policy_engine_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "policyEngineId"))
    DeletePolicyRequest.add_member(:policy_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "policyId"))
    DeletePolicyRequest.struct_class = Types::DeletePolicyRequest

    DeletePolicyResponse.add_member(:policy_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "policyId"))
    DeletePolicyResponse.add_member(:name, Shapes::ShapeRef.new(shape: PolicyName, required: true, location_name: "name"))
    DeletePolicyResponse.add_member(:policy_engine_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "policyEngineId"))
    DeletePolicyResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    DeletePolicyResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "updatedAt"))
    DeletePolicyResponse.add_member(:policy_arn, Shapes::ShapeRef.new(shape: PolicyArn, required: true, location_name: "policyArn"))
    DeletePolicyResponse.add_member(:status, Shapes::ShapeRef.new(shape: PolicyStatus, required: true, location_name: "status"))
    DeletePolicyResponse.add_member(:enforcement_mode, Shapes::ShapeRef.new(shape: EnforcementMode, location_name: "enforcementMode"))
    DeletePolicyResponse.add_member(:definition, Shapes::ShapeRef.new(shape: PolicyDefinition, required: true, location_name: "definition"))
    DeletePolicyResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    DeletePolicyResponse.add_member(:status_reasons, Shapes::ShapeRef.new(shape: PolicyStatusReasons, required: true, location_name: "statusReasons"))
    DeletePolicyResponse.struct_class = Types::DeletePolicyResponse

    DeleteRegistryRecordRequest.add_member(:registry_id, Shapes::ShapeRef.new(shape: RegistryIdentifier, required: true, location: "uri", location_name: "registryId"))
    DeleteRegistryRecordRequest.add_member(:record_id, Shapes::ShapeRef.new(shape: RecordIdentifier, required: true, location: "uri", location_name: "recordId"))
    DeleteRegistryRecordRequest.struct_class = Types::DeleteRegistryRecordRequest

    DeleteRegistryRecordResponse.struct_class = Types::DeleteRegistryRecordResponse

    DeleteRegistryRequest.add_member(:registry_id, Shapes::ShapeRef.new(shape: RegistryIdentifier, required: true, location: "uri", location_name: "registryId"))
    DeleteRegistryRequest.struct_class = Types::DeleteRegistryRequest

    DeleteRegistryResponse.add_member(:status, Shapes::ShapeRef.new(shape: RegistryStatus, required: true, location_name: "status"))
    DeleteRegistryResponse.struct_class = Types::DeleteRegistryResponse

    DeleteResourcePolicyRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: BedrockAgentcoreResourceArn, required: true, location: "uri", location_name: "resourceArn"))
    DeleteResourcePolicyRequest.struct_class = Types::DeleteResourcePolicyRequest

    DeleteResourcePolicyResponse.struct_class = Types::DeleteResourcePolicyResponse

    DeleteWorkloadIdentityRequest.add_member(:name, Shapes::ShapeRef.new(shape: WorkloadIdentityNameType, required: true, location_name: "name"))
    DeleteWorkloadIdentityRequest.struct_class = Types::DeleteWorkloadIdentityRequest

    DeleteWorkloadIdentityResponse.struct_class = Types::DeleteWorkloadIdentityResponse

    DerivedEvaluatorConfig.add_member(:base_evaluator_id, Shapes::ShapeRef.new(shape: EvaluatorId, required: true, location_name: "baseEvaluatorId"))
    DerivedEvaluatorConfig.add_member(:model_config, Shapes::ShapeRef.new(shape: EvaluatorModelConfig, required: true, location_name: "modelConfig"))
    DerivedEvaluatorConfig.struct_class = Types::DerivedEvaluatorConfig

    Descriptors.add_member(:mcp, Shapes::ShapeRef.new(shape: McpDescriptor, location_name: "mcp"))
    Descriptors.add_member(:a2a, Shapes::ShapeRef.new(shape: A2aDescriptor, location_name: "a2a"))
    Descriptors.add_member(:custom, Shapes::ShapeRef.new(shape: CustomDescriptor, location_name: "custom"))
    Descriptors.add_member(:agent_skills, Shapes::ShapeRef.new(shape: AgentSkillsDescriptor, location_name: "agentSkills"))
    Descriptors.struct_class = Types::Descriptors

    DimensionKeys.member = Shapes::ShapeRef.new(shape: DimensionKey)

    EbsVolumeConfiguration.add_member(:name, Shapes::ShapeRef.new(shape: VolumeName, required: true, location_name: "name"))
    EbsVolumeConfiguration.add_member(:size_gi_b, Shapes::ShapeRef.new(shape: VolumeSizeGiB, required: true, location_name: "sizeGiB"))
    EbsVolumeConfiguration.add_member(:volume_type, Shapes::ShapeRef.new(shape: EbsVolumeType, location_name: "volumeType"))
    EbsVolumeConfiguration.add_member(:iops, Shapes::ShapeRef.new(shape: VolumeIops, location_name: "iops"))
    EbsVolumeConfiguration.add_member(:throughput, Shapes::ShapeRef.new(shape: VolumeThroughput, location_name: "throughput"))
    EbsVolumeConfiguration.add_member(:encrypted, Shapes::ShapeRef.new(shape: Boolean, location_name: "encrypted"))
    EbsVolumeConfiguration.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "kmsKeyId"))
    EbsVolumeConfiguration.add_member(:snapshot_id, Shapes::ShapeRef.new(shape: EbsSnapshotId, location_name: "snapshotId"))
    EbsVolumeConfiguration.struct_class = Types::EbsVolumeConfiguration

    Ec2Configuration.add_member(:launch_template_source, Shapes::ShapeRef.new(shape: LaunchTemplateSource, required: true, location_name: "launchTemplateSource"))
    Ec2Configuration.add_member(:vpc_configuration, Shapes::ShapeRef.new(shape: VpcConfiguration, required: true, location_name: "vpcConfiguration"))
    Ec2Configuration.add_member(:volumes, Shapes::ShapeRef.new(shape: VolumeConfigurationList, location_name: "volumes"))
    Ec2Configuration.add_member(:lifecycle_configuration, Shapes::ShapeRef.new(shape: InstanceLifecycleConfiguration, location_name: "lifecycleConfiguration"))
    Ec2Configuration.add_member(:root_volume, Shapes::ShapeRef.new(shape: RootVolumeConfiguration, location_name: "rootVolume"))
    Ec2Configuration.struct_class = Types::Ec2Configuration

    EfsAccessPointConfiguration.add_member(:access_point_arn, Shapes::ShapeRef.new(shape: EfsAccessPointArn, required: true, location_name: "accessPointArn"))
    EfsAccessPointConfiguration.add_member(:mount_path, Shapes::ShapeRef.new(shape: MountPath, required: true, location_name: "mountPath"))
    EfsAccessPointConfiguration.struct_class = Types::EfsAccessPointConfiguration

    EfsConfiguration.add_member(:access_point_arn, Shapes::ShapeRef.new(shape: EfsAccessPointArn, required: true, location_name: "accessPointArn"))
    EfsConfiguration.add_member(:mount_path, Shapes::ShapeRef.new(shape: MountPath, required: true, location_name: "mountPath"))
    EfsConfiguration.add_member(:file_system_arn, Shapes::ShapeRef.new(shape: EfsFileSystemArn, required: true, location_name: "fileSystemArn"))
    EfsConfiguration.struct_class = Types::EfsConfiguration

    EnabledConnectors.member = Shapes::ShapeRef.new(shape: String)

    EncryptionFailure.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    EncryptionFailure.struct_class = Types::EncryptionFailure

    EnvironmentVariablesMap.key = Shapes::ShapeRef.new(shape: EnvironmentVariableKey)
    EnvironmentVariablesMap.value = Shapes::ShapeRef.new(shape: EnvironmentVariableValue)

    EphemeralBlockDeviceMapping.add_member(:device_name, Shapes::ShapeRef.new(shape: DeviceName, location_name: "deviceName"))
    EphemeralBlockDeviceMapping.add_member(:virtual_name, Shapes::ShapeRef.new(shape: VirtualDeviceName, location_name: "virtualName"))
    EphemeralBlockDeviceMapping.add_member(:ebs, Shapes::ShapeRef.new(shape: EphemeralEBSVolumeConfiguration, location_name: "ebs"))
    EphemeralBlockDeviceMapping.struct_class = Types::EphemeralBlockDeviceMapping

    EphemeralEBSVolumeConfiguration.add_member(:volume_type, Shapes::ShapeRef.new(shape: EbsVolumeType, location_name: "volumeType"))
    EphemeralEBSVolumeConfiguration.add_member(:iops, Shapes::ShapeRef.new(shape: VolumeIops, location_name: "iops"))
    EphemeralEBSVolumeConfiguration.add_member(:throughput, Shapes::ShapeRef.new(shape: EphemeralEBSVolumeConfigurationThroughputInteger, location_name: "throughput"))
    EphemeralEBSVolumeConfiguration.add_member(:encrypted, Shapes::ShapeRef.new(shape: Boolean, location_name: "encrypted"))
    EphemeralEBSVolumeConfiguration.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "kmsKeyId"))
    EphemeralEBSVolumeConfiguration.add_member(:snapshot_id, Shapes::ShapeRef.new(shape: EbsSnapshotId, location_name: "snapshotId"))
    EphemeralEBSVolumeConfiguration.add_member(:volume_size, Shapes::ShapeRef.new(shape: EphemeralEBSVolumeConfigurationVolumeSizeInteger, location_name: "volumeSize"))
    EphemeralEBSVolumeConfiguration.add_member(:volume_initialization_rate, Shapes::ShapeRef.new(shape: EbsVolumeInitializationRate, location_name: "volumeInitializationRate"))
    EphemeralEBSVolumeConfiguration.add_member(:ebs_card_index, Shapes::ShapeRef.new(shape: EbsCardIndex, location_name: "ebsCardIndex"))
    EphemeralEBSVolumeConfiguration.struct_class = Types::EphemeralEBSVolumeConfiguration

    EpisodicConsolidationOverride.add_member(:append_to_prompt, Shapes::ShapeRef.new(shape: Prompt, required: true, location_name: "appendToPrompt"))
    EpisodicConsolidationOverride.add_member(:model_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "modelId"))
    EpisodicConsolidationOverride.struct_class = Types::EpisodicConsolidationOverride

    EpisodicExtractionOverride.add_member(:append_to_prompt, Shapes::ShapeRef.new(shape: Prompt, required: true, location_name: "appendToPrompt"))
    EpisodicExtractionOverride.add_member(:model_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "modelId"))
    EpisodicExtractionOverride.struct_class = Types::EpisodicExtractionOverride

    EpisodicMemoryStrategyInput.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    EpisodicMemoryStrategyInput.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    EpisodicMemoryStrategyInput.add_member(:namespaces, Shapes::ShapeRef.new(shape: NamespacesList, deprecated: true, location_name: "namespaces", metadata: {"deprecatedMessage" => "Use namespaceTemplates instead", "deprecatedSince" => "2026-03-02"}))
    EpisodicMemoryStrategyInput.add_member(:namespace_templates, Shapes::ShapeRef.new(shape: NamespacesList, location_name: "namespaceTemplates"))
    EpisodicMemoryStrategyInput.add_member(:reflection_configuration, Shapes::ShapeRef.new(shape: EpisodicReflectionConfigurationInput, location_name: "reflectionConfiguration"))
    EpisodicMemoryStrategyInput.add_member(:memory_record_schema, Shapes::ShapeRef.new(shape: MemoryRecordSchema, location_name: "memoryRecordSchema"))
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
    EpisodicOverrideReflectionConfigurationInput.add_member(:namespaces, Shapes::ShapeRef.new(shape: NamespacesList, deprecated: true, location_name: "namespaces", metadata: {"deprecatedMessage" => "Use namespaceTemplates instead", "deprecatedSince" => "2026-03-02"}))
    EpisodicOverrideReflectionConfigurationInput.add_member(:namespace_templates, Shapes::ShapeRef.new(shape: NamespacesList, location_name: "namespaceTemplates"))
    EpisodicOverrideReflectionConfigurationInput.add_member(:memory_record_schema, Shapes::ShapeRef.new(shape: MemoryRecordSchema, location_name: "memoryRecordSchema"))
    EpisodicOverrideReflectionConfigurationInput.struct_class = Types::EpisodicOverrideReflectionConfigurationInput

    EpisodicReflectionConfiguration.add_member(:namespaces, Shapes::ShapeRef.new(shape: NamespacesList, deprecated: true, location_name: "namespaces", metadata: {"deprecatedMessage" => "Use namespaceTemplates instead", "deprecatedSince" => "2026-03-02"}))
    EpisodicReflectionConfiguration.add_member(:namespace_templates, Shapes::ShapeRef.new(shape: NamespacesList, location_name: "namespaceTemplates"))
    EpisodicReflectionConfiguration.add_member(:memory_record_schema, Shapes::ShapeRef.new(shape: MemoryRecordSchema, location_name: "memoryRecordSchema"))
    EpisodicReflectionConfiguration.struct_class = Types::EpisodicReflectionConfiguration

    EpisodicReflectionConfigurationInput.add_member(:namespaces, Shapes::ShapeRef.new(shape: NamespacesList, deprecated: true, location_name: "namespaces", metadata: {"deprecatedMessage" => "Use namespaceTemplates instead", "deprecatedSince" => "2026-03-02"}))
    EpisodicReflectionConfigurationInput.add_member(:namespace_templates, Shapes::ShapeRef.new(shape: NamespacesList, location_name: "namespaceTemplates"))
    EpisodicReflectionConfigurationInput.add_member(:memory_record_schema, Shapes::ShapeRef.new(shape: MemoryRecordSchema, location_name: "memoryRecordSchema"))
    EpisodicReflectionConfigurationInput.struct_class = Types::EpisodicReflectionConfigurationInput

    EpisodicReflectionOverride.add_member(:append_to_prompt, Shapes::ShapeRef.new(shape: Prompt, required: true, location_name: "appendToPrompt"))
    EpisodicReflectionOverride.add_member(:model_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "modelId"))
    EpisodicReflectionOverride.add_member(:namespaces, Shapes::ShapeRef.new(shape: NamespacesList, deprecated: true, location_name: "namespaces", metadata: {"deprecatedMessage" => "Use namespaceTemplates instead", "deprecatedSince" => "2026-03-02"}))
    EpisodicReflectionOverride.add_member(:namespace_templates, Shapes::ShapeRef.new(shape: NamespacesList, location_name: "namespaceTemplates"))
    EpisodicReflectionOverride.add_member(:memory_record_schema, Shapes::ShapeRef.new(shape: MemoryRecordSchema, location_name: "memoryRecordSchema"))
    EpisodicReflectionOverride.struct_class = Types::EpisodicReflectionOverride

    EvaluatorConfig.add_member(:llm_as_a_judge, Shapes::ShapeRef.new(shape: LlmAsAJudgeEvaluatorConfig, location_name: "llmAsAJudge"))
    EvaluatorConfig.add_member(:code_based, Shapes::ShapeRef.new(shape: CodeBasedEvaluatorConfig, location_name: "codeBased"))
    EvaluatorConfig.add_member(:derived, Shapes::ShapeRef.new(shape: DerivedEvaluatorConfig, location_name: "derived"))
    EvaluatorConfig.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    EvaluatorConfig.add_member_subclass(:llm_as_a_judge, Types::EvaluatorConfig::LlmAsAJudge)
    EvaluatorConfig.add_member_subclass(:code_based, Types::EvaluatorConfig::CodeBased)
    EvaluatorConfig.add_member_subclass(:derived, Types::EvaluatorConfig::Derived)
    EvaluatorConfig.add_member_subclass(:unknown, Types::EvaluatorConfig::Unknown)
    EvaluatorConfig.struct_class = Types::EvaluatorConfig

    EvaluatorList.member = Shapes::ShapeRef.new(shape: EvaluatorReference)

    EvaluatorModelConfig.add_member(:bedrock_evaluator_model_config, Shapes::ShapeRef.new(shape: BedrockEvaluatorModelConfig, location_name: "bedrockEvaluatorModelConfig"))
    EvaluatorModelConfig.add_member(:responses_evaluator_model_config, Shapes::ShapeRef.new(shape: OpenResponsesEvaluatorModelConfig, location_name: "responsesEvaluatorModelConfig"))
    EvaluatorModelConfig.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    EvaluatorModelConfig.add_member_subclass(:bedrock_evaluator_model_config, Types::EvaluatorModelConfig::BedrockEvaluatorModelConfig)
    EvaluatorModelConfig.add_member_subclass(:responses_evaluator_model_config, Types::EvaluatorModelConfig::ResponsesEvaluatorModelConfig)
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
    EvaluatorSummary.add_member(:provider, Shapes::ShapeRef.new(shape: Provider, location_name: "provider"))
    EvaluatorSummary.add_member(:level, Shapes::ShapeRef.new(shape: EvaluatorLevel, location_name: "level"))
    EvaluatorSummary.add_member(:status, Shapes::ShapeRef.new(shape: EvaluatorStatus, required: true, location_name: "status"))
    EvaluatorSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    EvaluatorSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    EvaluatorSummary.add_member(:locked_for_modification, Shapes::ShapeRef.new(shape: Boolean, location_name: "lockedForModification"))
    EvaluatorSummary.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "kmsKeyArn"))
    EvaluatorSummary.struct_class = Types::EvaluatorSummary

    EvaluatorSummaryList.member = Shapes::ShapeRef.new(shape: EvaluatorSummary)

    ExampleIdList.member = Shapes::ShapeRef.new(shape: ExampleId)

    ExtractionConfig.add_member(:llm_extraction_config, Shapes::ShapeRef.new(shape: LlmExtractionConfig, location_name: "llmExtractionConfig"))
    ExtractionConfig.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ExtractionConfig.add_member_subclass(:llm_extraction_config, Types::ExtractionConfig::LlmExtractionConfig)
    ExtractionConfig.add_member_subclass(:unknown, Types::ExtractionConfig::Unknown)
    ExtractionConfig.struct_class = Types::ExtractionConfig

    ExtractionConfiguration.add_member(:custom_extraction_configuration, Shapes::ShapeRef.new(shape: CustomExtractionConfiguration, location_name: "customExtractionConfiguration"))
    ExtractionConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ExtractionConfiguration.add_member_subclass(:custom_extraction_configuration, Types::ExtractionConfiguration::CustomExtractionConfiguration)
    ExtractionConfiguration.add_member_subclass(:unknown, Types::ExtractionConfiguration::Unknown)
    ExtractionConfiguration.struct_class = Types::ExtractionConfiguration

    FilesystemConfiguration.add_member(:session_storage, Shapes::ShapeRef.new(shape: SessionStorageConfiguration, location_name: "sessionStorage"))
    FilesystemConfiguration.add_member(:s3_files_access_point, Shapes::ShapeRef.new(shape: S3FilesAccessPointConfiguration, location_name: "s3FilesAccessPoint"))
    FilesystemConfiguration.add_member(:efs_access_point, Shapes::ShapeRef.new(shape: EfsAccessPointConfiguration, location_name: "efsAccessPoint"))
    FilesystemConfiguration.add_member(:capacity_provider_volume, Shapes::ShapeRef.new(shape: CapacityProviderVolumeConfiguration, location_name: "capacityProviderVolume"))
    FilesystemConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    FilesystemConfiguration.add_member_subclass(:session_storage, Types::FilesystemConfiguration::SessionStorage)
    FilesystemConfiguration.add_member_subclass(:s3_files_access_point, Types::FilesystemConfiguration::S3FilesAccessPoint)
    FilesystemConfiguration.add_member_subclass(:efs_access_point, Types::FilesystemConfiguration::EfsAccessPoint)
    FilesystemConfiguration.add_member_subclass(:capacity_provider_volume, Types::FilesystemConfiguration::CapacityProviderVolume)
    FilesystemConfiguration.add_member_subclass(:unknown, Types::FilesystemConfiguration::Unknown)
    FilesystemConfiguration.struct_class = Types::FilesystemConfiguration

    FilesystemConfigurations.member = Shapes::ShapeRef.new(shape: FilesystemConfiguration)

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

    FromUrlSynchronizationConfiguration.add_member(:url, Shapes::ShapeRef.new(shape: McpServerUrl, required: true, location_name: "url"))
    FromUrlSynchronizationConfiguration.add_member(:credential_provider_configurations, Shapes::ShapeRef.new(shape: RegistryRecordCredentialProviderConfigurationList, location_name: "credentialProviderConfigurations"))
    FromUrlSynchronizationConfiguration.struct_class = Types::FromUrlSynchronizationConfiguration

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

    GatewayRateLimitDetail.add_member(:rate_limit_id, Shapes::ShapeRef.new(shape: GatewayRateLimitId, required: true, location_name: "rateLimitId"))
    GatewayRateLimitDetail.add_member(:gateway_identifier, Shapes::ShapeRef.new(shape: GatewayIdentifier, required: true, location_name: "gatewayIdentifier"))
    GatewayRateLimitDetail.add_member(:description, Shapes::ShapeRef.new(shape: GatewayRateLimitDescription, location_name: "description"))
    GatewayRateLimitDetail.add_member(:dimension_keys, Shapes::ShapeRef.new(shape: DimensionKeys, required: true, location_name: "dimensionKeys"))
    GatewayRateLimitDetail.add_member(:entries, Shapes::ShapeRef.new(shape: LimitEntries, required: true, location_name: "entries"))
    GatewayRateLimitDetail.add_member(:status, Shapes::ShapeRef.new(shape: GatewayRateLimitStatus, required: true, location_name: "status"))
    GatewayRateLimitDetail.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    GatewayRateLimitDetail.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "updatedAt"))
    GatewayRateLimitDetail.struct_class = Types::GatewayRateLimitDetail

    GatewayRateLimits.member = Shapes::ShapeRef.new(shape: GatewayRateLimitDetail)

    GatewayRuleDetail.add_member(:rule_id, Shapes::ShapeRef.new(shape: GatewayRuleId, required: true, location_name: "ruleId"))
    GatewayRuleDetail.add_member(:gateway_arn, Shapes::ShapeRef.new(shape: GatewayArn, required: true, location_name: "gatewayArn"))
    GatewayRuleDetail.add_member(:priority, Shapes::ShapeRef.new(shape: GatewayRulePriority, required: true, location_name: "priority"))
    GatewayRuleDetail.add_member(:conditions, Shapes::ShapeRef.new(shape: Conditions, location_name: "conditions"))
    GatewayRuleDetail.add_member(:actions, Shapes::ShapeRef.new(shape: Actions, required: true, location_name: "actions"))
    GatewayRuleDetail.add_member(:description, Shapes::ShapeRef.new(shape: GatewayRuleDescription, location_name: "description"))
    GatewayRuleDetail.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    GatewayRuleDetail.add_member(:status, Shapes::ShapeRef.new(shape: GatewayRuleStatus, required: true, location_name: "status"))
    GatewayRuleDetail.add_member(:system, Shapes::ShapeRef.new(shape: SystemManagedBlock, location_name: "system"))
    GatewayRuleDetail.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, location_name: "updatedAt"))
    GatewayRuleDetail.struct_class = Types::GatewayRuleDetail

    GatewayRules.member = Shapes::ShapeRef.new(shape: GatewayRuleDetail)

    GatewaySummaries.member = Shapes::ShapeRef.new(shape: GatewaySummary)

    GatewaySummary.add_member(:gateway_id, Shapes::ShapeRef.new(shape: GatewayId, required: true, location_name: "gatewayId"))
    GatewaySummary.add_member(:name, Shapes::ShapeRef.new(shape: GatewayName, required: true, location_name: "name"))
    GatewaySummary.add_member(:status, Shapes::ShapeRef.new(shape: GatewayStatus, required: true, location_name: "status"))
    GatewaySummary.add_member(:description, Shapes::ShapeRef.new(shape: GatewayDescription, location_name: "description"))
    GatewaySummary.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    GatewaySummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "updatedAt"))
    GatewaySummary.add_member(:authorizer_type, Shapes::ShapeRef.new(shape: AuthorizerType, required: true, location_name: "authorizerType"))
    GatewaySummary.add_member(:protocol_type, Shapes::ShapeRef.new(shape: GatewayProtocolType, location_name: "protocolType"))
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
    GatewayTarget.add_member(:metadata_configuration, Shapes::ShapeRef.new(shape: MetadataConfiguration, location_name: "metadataConfiguration"))
    GatewayTarget.add_member(:private_endpoint, Shapes::ShapeRef.new(shape: PrivateEndpoint, location_name: "privateEndpoint"))
    GatewayTarget.add_member(:private_endpoint_managed_resources, Shapes::ShapeRef.new(shape: PrivateEndpointManagedResources, location_name: "privateEndpointManagedResources"))
    GatewayTarget.add_member(:authorization_data, Shapes::ShapeRef.new(shape: AuthorizationData, location_name: "authorizationData"))
    GatewayTarget.add_member(:protocol_type, Shapes::ShapeRef.new(shape: TargetProtocolType, location_name: "protocolType"))
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
    GetAgentRuntimeResponse.add_member(:network_configuration, Shapes::ShapeRef.new(shape: NetworkConfiguration, location_name: "networkConfiguration"))
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
    GetAgentRuntimeResponse.add_member(:metadata_configuration, Shapes::ShapeRef.new(shape: RuntimeMetadataConfiguration, location_name: "metadataConfiguration"))
    GetAgentRuntimeResponse.add_member(:filesystem_configurations, Shapes::ShapeRef.new(shape: FilesystemConfigurations, location_name: "filesystemConfigurations"))
    GetAgentRuntimeResponse.add_member(:capacity_provider_configuration, Shapes::ShapeRef.new(shape: CapacityProviderConfiguration, location_name: "capacityProviderConfiguration"))
    GetAgentRuntimeResponse.struct_class = Types::GetAgentRuntimeResponse

    GetApiKeyCredentialProviderRequest.add_member(:name, Shapes::ShapeRef.new(shape: CredentialProviderName, required: true, location_name: "name"))
    GetApiKeyCredentialProviderRequest.struct_class = Types::GetApiKeyCredentialProviderRequest

    GetApiKeyCredentialProviderResponse.add_member(:api_key_secret_arn, Shapes::ShapeRef.new(shape: Secret, required: true, location_name: "apiKeySecretArn"))
    GetApiKeyCredentialProviderResponse.add_member(:api_key_secret_json_key, Shapes::ShapeRef.new(shape: SecretJsonKeyType, location_name: "apiKeySecretJsonKey"))
    GetApiKeyCredentialProviderResponse.add_member(:api_key_secret_source, Shapes::ShapeRef.new(shape: SecretSourceType, location_name: "apiKeySecretSource"))
    GetApiKeyCredentialProviderResponse.add_member(:name, Shapes::ShapeRef.new(shape: CredentialProviderName, required: true, location_name: "name"))
    GetApiKeyCredentialProviderResponse.add_member(:credential_provider_arn, Shapes::ShapeRef.new(shape: ApiKeyCredentialProviderArnType, required: true, location_name: "credentialProviderArn"))
    GetApiKeyCredentialProviderResponse.add_member(:created_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdTime"))
    GetApiKeyCredentialProviderResponse.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "lastUpdatedTime"))
    GetApiKeyCredentialProviderResponse.struct_class = Types::GetApiKeyCredentialProviderResponse

    GetBrowserProfileRequest.add_member(:profile_id, Shapes::ShapeRef.new(shape: BrowserProfileId, required: true, location: "uri", location_name: "profileId"))
    GetBrowserProfileRequest.struct_class = Types::GetBrowserProfileRequest

    GetBrowserProfileResponse.add_member(:profile_id, Shapes::ShapeRef.new(shape: BrowserProfileId, required: true, location_name: "profileId"))
    GetBrowserProfileResponse.add_member(:profile_arn, Shapes::ShapeRef.new(shape: BrowserProfileArn, required: true, location_name: "profileArn"))
    GetBrowserProfileResponse.add_member(:name, Shapes::ShapeRef.new(shape: BrowserProfileName, required: true, location_name: "name"))
    GetBrowserProfileResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    GetBrowserProfileResponse.add_member(:status, Shapes::ShapeRef.new(shape: BrowserProfileStatus, required: true, location_name: "status"))
    GetBrowserProfileResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    GetBrowserProfileResponse.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "lastUpdatedAt"))
    GetBrowserProfileResponse.add_member(:last_saved_at, Shapes::ShapeRef.new(shape: DateTimestamp, location_name: "lastSavedAt"))
    GetBrowserProfileResponse.add_member(:last_saved_browser_session_id, Shapes::ShapeRef.new(shape: BrowserSessionId, location_name: "lastSavedBrowserSessionId"))
    GetBrowserProfileResponse.add_member(:last_saved_browser_id, Shapes::ShapeRef.new(shape: BrowserId, location_name: "lastSavedBrowserId"))
    GetBrowserProfileResponse.struct_class = Types::GetBrowserProfileResponse

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
    GetBrowserResponse.add_member(:enterprise_policies, Shapes::ShapeRef.new(shape: BrowserEnterprisePolicies, location_name: "enterprisePolicies"))
    GetBrowserResponse.add_member(:certificates, Shapes::ShapeRef.new(shape: Certificates, location_name: "certificates"))
    GetBrowserResponse.add_member(:filesystem_configurations, Shapes::ShapeRef.new(shape: ToolsFileSystemConfigurations, location_name: "filesystemConfigurations"))
    GetBrowserResponse.add_member(:status, Shapes::ShapeRef.new(shape: BrowserStatus, required: true, location_name: "status"))
    GetBrowserResponse.add_member(:failure_reason, Shapes::ShapeRef.new(shape: String, location_name: "failureReason"))
    GetBrowserResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    GetBrowserResponse.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "lastUpdatedAt"))
    GetBrowserResponse.struct_class = Types::GetBrowserResponse

    GetCapacityProviderInput.add_member(:capacity_provider_id, Shapes::ShapeRef.new(shape: CapacityProviderId, required: true, location: "uri", location_name: "capacityProviderId"))
    GetCapacityProviderInput.struct_class = Types::GetCapacityProviderInput

    GetCapacityProviderOutput.add_member(:capacity_provider_id, Shapes::ShapeRef.new(shape: CapacityProviderId, required: true, location_name: "capacityProviderId"))
    GetCapacityProviderOutput.add_member(:capacity_provider_arn, Shapes::ShapeRef.new(shape: CapacityProviderArn, required: true, location_name: "capacityProviderArn"))
    GetCapacityProviderOutput.add_member(:name, Shapes::ShapeRef.new(shape: CapacityProviderName, required: true, location_name: "name"))
    GetCapacityProviderOutput.add_member(:status, Shapes::ShapeRef.new(shape: CapacityProviderStatus, required: true, location_name: "status"))
    GetCapacityProviderOutput.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    GetCapacityProviderOutput.add_member(:status_code, Shapes::ShapeRef.new(shape: CapacityProviderStatusCode, location_name: "statusCode"))
    GetCapacityProviderOutput.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    GetCapacityProviderOutput.add_member(:permissions_configuration, Shapes::ShapeRef.new(shape: PermissionsConfiguration, required: true, location_name: "permissionsConfiguration"))
    GetCapacityProviderOutput.add_member(:compute_configuration, Shapes::ShapeRef.new(shape: ComputeConfiguration, required: true, location_name: "computeConfiguration"))
    GetCapacityProviderOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    GetCapacityProviderOutput.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "lastUpdatedAt"))
    GetCapacityProviderOutput.struct_class = Types::GetCapacityProviderOutput

    GetCodeInterpreterRequest.add_member(:code_interpreter_id, Shapes::ShapeRef.new(shape: CodeInterpreterId, required: true, location: "uri", location_name: "codeInterpreterId"))
    GetCodeInterpreterRequest.struct_class = Types::GetCodeInterpreterRequest

    GetCodeInterpreterResponse.add_member(:code_interpreter_id, Shapes::ShapeRef.new(shape: CodeInterpreterId, required: true, location_name: "codeInterpreterId"))
    GetCodeInterpreterResponse.add_member(:code_interpreter_arn, Shapes::ShapeRef.new(shape: CodeInterpreterArn, required: true, location_name: "codeInterpreterArn"))
    GetCodeInterpreterResponse.add_member(:name, Shapes::ShapeRef.new(shape: SandboxName, required: true, location_name: "name"))
    GetCodeInterpreterResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    GetCodeInterpreterResponse.add_member(:execution_role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "executionRoleArn"))
    GetCodeInterpreterResponse.add_member(:network_configuration, Shapes::ShapeRef.new(shape: CodeInterpreterNetworkConfiguration, required: true, location_name: "networkConfiguration"))
    GetCodeInterpreterResponse.add_member(:status, Shapes::ShapeRef.new(shape: CodeInterpreterStatus, required: true, location_name: "status"))
    GetCodeInterpreterResponse.add_member(:certificates, Shapes::ShapeRef.new(shape: Certificates, location_name: "certificates"))
    GetCodeInterpreterResponse.add_member(:filesystem_configurations, Shapes::ShapeRef.new(shape: ToolsFileSystemConfigurations, location_name: "filesystemConfigurations"))
    GetCodeInterpreterResponse.add_member(:failure_reason, Shapes::ShapeRef.new(shape: String, location_name: "failureReason"))
    GetCodeInterpreterResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    GetCodeInterpreterResponse.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "lastUpdatedAt"))
    GetCodeInterpreterResponse.struct_class = Types::GetCodeInterpreterResponse

    GetConfigurationBundleRequest.add_member(:bundle_id, Shapes::ShapeRef.new(shape: ConfigurationBundleId, required: true, location: "uri", location_name: "bundleId"))
    GetConfigurationBundleRequest.add_member(:branch_name, Shapes::ShapeRef.new(shape: BranchName, location: "querystring", location_name: "branchName"))
    GetConfigurationBundleRequest.struct_class = Types::GetConfigurationBundleRequest

    GetConfigurationBundleResponse.add_member(:bundle_arn, Shapes::ShapeRef.new(shape: ConfigurationBundleArn, required: true, location_name: "bundleArn"))
    GetConfigurationBundleResponse.add_member(:bundle_id, Shapes::ShapeRef.new(shape: ConfigurationBundleId, required: true, location_name: "bundleId"))
    GetConfigurationBundleResponse.add_member(:bundle_name, Shapes::ShapeRef.new(shape: ConfigurationBundleName, required: true, location_name: "bundleName"))
    GetConfigurationBundleResponse.add_member(:description, Shapes::ShapeRef.new(shape: ConfigurationBundleDescription, location_name: "description"))
    GetConfigurationBundleResponse.add_member(:version_id, Shapes::ShapeRef.new(shape: ConfigurationBundleVersion, required: true, location_name: "versionId"))
    GetConfigurationBundleResponse.add_member(:components, Shapes::ShapeRef.new(shape: ComponentConfigurationMap, required: true, location_name: "components"))
    GetConfigurationBundleResponse.add_member(:lineage_metadata, Shapes::ShapeRef.new(shape: VersionLineageMetadata, location_name: "lineageMetadata"))
    GetConfigurationBundleResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    GetConfigurationBundleResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    GetConfigurationBundleResponse.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "kmsKeyArn"))
    GetConfigurationBundleResponse.struct_class = Types::GetConfigurationBundleResponse

    GetConfigurationBundleVersionRequest.add_member(:bundle_id, Shapes::ShapeRef.new(shape: ConfigurationBundleId, required: true, location: "uri", location_name: "bundleId"))
    GetConfigurationBundleVersionRequest.add_member(:version_id, Shapes::ShapeRef.new(shape: ConfigurationBundleVersion, required: true, location: "uri", location_name: "versionId"))
    GetConfigurationBundleVersionRequest.struct_class = Types::GetConfigurationBundleVersionRequest

    GetConfigurationBundleVersionResponse.add_member(:bundle_arn, Shapes::ShapeRef.new(shape: ConfigurationBundleArn, required: true, location_name: "bundleArn"))
    GetConfigurationBundleVersionResponse.add_member(:bundle_id, Shapes::ShapeRef.new(shape: ConfigurationBundleId, required: true, location_name: "bundleId"))
    GetConfigurationBundleVersionResponse.add_member(:bundle_name, Shapes::ShapeRef.new(shape: ConfigurationBundleName, required: true, location_name: "bundleName"))
    GetConfigurationBundleVersionResponse.add_member(:description, Shapes::ShapeRef.new(shape: ConfigurationBundleDescription, location_name: "description"))
    GetConfigurationBundleVersionResponse.add_member(:version_id, Shapes::ShapeRef.new(shape: ConfigurationBundleVersion, required: true, location_name: "versionId"))
    GetConfigurationBundleVersionResponse.add_member(:components, Shapes::ShapeRef.new(shape: ComponentConfigurationMap, required: true, location_name: "components"))
    GetConfigurationBundleVersionResponse.add_member(:lineage_metadata, Shapes::ShapeRef.new(shape: VersionLineageMetadata, location_name: "lineageMetadata"))
    GetConfigurationBundleVersionResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    GetConfigurationBundleVersionResponse.add_member(:version_created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "versionCreatedAt"))
    GetConfigurationBundleVersionResponse.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "kmsKeyArn"))
    GetConfigurationBundleVersionResponse.struct_class = Types::GetConfigurationBundleVersionResponse

    GetConsentPortalRequest.add_member(:consent_portal_identifier, Shapes::ShapeRef.new(shape: ConsentPortalIdentifier, required: true, location_name: "consentPortalIdentifier"))
    GetConsentPortalRequest.struct_class = Types::GetConsentPortalRequest

    GetConsentPortalResponse.add_member(:sources, Shapes::ShapeRef.new(shape: ConsentPortalSources, required: true, location_name: "sources"))
    GetConsentPortalResponse.add_member(:consent_portal_arn, Shapes::ShapeRef.new(shape: ConsentPortalArnType, required: true, location_name: "consentPortalArn"))
    GetConsentPortalResponse.add_member(:consent_portal_id, Shapes::ShapeRef.new(shape: ConsentPortalIdType, required: true, location_name: "consentPortalId"))
    GetConsentPortalResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    GetConsentPortalResponse.add_member(:description, Shapes::ShapeRef.new(shape: ConsentPortalDescriptionType, location_name: "description"))
    GetConsentPortalResponse.add_member(:execution_role_arn, Shapes::ShapeRef.new(shape: ExecutionRoleArnType, required: true, location_name: "executionRoleArn"))
    GetConsentPortalResponse.add_member(:idp_config, Shapes::ShapeRef.new(shape: ConsentPortalIdpConfig, required: true, location_name: "idpConfig"))
    GetConsentPortalResponse.add_member(:name, Shapes::ShapeRef.new(shape: ConsentPortalNameType, required: true, location_name: "name"))
    GetConsentPortalResponse.add_member(:portal_url, Shapes::ShapeRef.new(shape: PortalUrlType, location_name: "portalUrl"))
    GetConsentPortalResponse.add_member(:status, Shapes::ShapeRef.new(shape: ConsentPortalStatus, required: true, location_name: "status"))
    GetConsentPortalResponse.add_member(:status_reason, Shapes::ShapeRef.new(shape: StatusReasonType, location_name: "statusReason"))
    GetConsentPortalResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    GetConsentPortalResponse.struct_class = Types::GetConsentPortalResponse

    GetDatasetRequest.add_member(:dataset_id, Shapes::ShapeRef.new(shape: DatasetId, required: true, location: "uri", location_name: "datasetId"))
    GetDatasetRequest.add_member(:dataset_version, Shapes::ShapeRef.new(shape: DatasetVersion, location: "querystring", location_name: "datasetVersion"))
    GetDatasetRequest.struct_class = Types::GetDatasetRequest

    GetDatasetResponse.add_member(:dataset_arn, Shapes::ShapeRef.new(shape: DatasetArn, required: true, location_name: "datasetArn"))
    GetDatasetResponse.add_member(:dataset_id, Shapes::ShapeRef.new(shape: DatasetId, required: true, location_name: "datasetId"))
    GetDatasetResponse.add_member(:dataset_version, Shapes::ShapeRef.new(shape: DatasetVersion, required: true, location_name: "datasetVersion"))
    GetDatasetResponse.add_member(:dataset_name, Shapes::ShapeRef.new(shape: DatasetName, required: true, location_name: "datasetName"))
    GetDatasetResponse.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    GetDatasetResponse.add_member(:status, Shapes::ShapeRef.new(shape: DatasetStatus, required: true, location_name: "status"))
    GetDatasetResponse.add_member(:draft_status, Shapes::ShapeRef.new(shape: DraftStatus, location_name: "draftStatus"))
    GetDatasetResponse.add_member(:failure_reason, Shapes::ShapeRef.new(shape: String, location_name: "failureReason"))
    GetDatasetResponse.add_member(:schema_type, Shapes::ShapeRef.new(shape: DatasetSchemaType, required: true, location_name: "schemaType"))
    GetDatasetResponse.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "kmsKeyArn"))
    GetDatasetResponse.add_member(:example_count, Shapes::ShapeRef.new(shape: Long, required: true, location_name: "exampleCount"))
    GetDatasetResponse.add_member(:download_url, Shapes::ShapeRef.new(shape: DownloadUrl, location_name: "downloadUrl"))
    GetDatasetResponse.add_member(:download_url_expires_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "downloadUrlExpiresAt"))
    GetDatasetResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    GetDatasetResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    GetDatasetResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    GetDatasetResponse.struct_class = Types::GetDatasetResponse

    GetEvaluatorRequest.add_member(:evaluator_id, Shapes::ShapeRef.new(shape: EvaluatorId, required: true, location: "uri", location_name: "evaluatorId"))
    GetEvaluatorRequest.add_member(:included_data, Shapes::ShapeRef.new(shape: IncludedData, location: "querystring", location_name: "includedData"))
    GetEvaluatorRequest.struct_class = Types::GetEvaluatorRequest

    GetEvaluatorResponse.add_member(:evaluator_arn, Shapes::ShapeRef.new(shape: EvaluatorArn, required: true, location_name: "evaluatorArn"))
    GetEvaluatorResponse.add_member(:evaluator_id, Shapes::ShapeRef.new(shape: EvaluatorId, required: true, location_name: "evaluatorId"))
    GetEvaluatorResponse.add_member(:evaluator_name, Shapes::ShapeRef.new(shape: EvaluatorName, required: true, location_name: "evaluatorName"))
    GetEvaluatorResponse.add_member(:description, Shapes::ShapeRef.new(shape: EvaluatorDescription, location_name: "description"))
    GetEvaluatorResponse.add_member(:evaluator_config, Shapes::ShapeRef.new(shape: EvaluatorConfig, required: true, location_name: "evaluatorConfig"))
    GetEvaluatorResponse.add_member(:evaluator_type, Shapes::ShapeRef.new(shape: EvaluatorType, location_name: "evaluatorType"))
    GetEvaluatorResponse.add_member(:provider, Shapes::ShapeRef.new(shape: Provider, location_name: "provider"))
    GetEvaluatorResponse.add_member(:level, Shapes::ShapeRef.new(shape: EvaluatorLevel, required: true, location_name: "level"))
    GetEvaluatorResponse.add_member(:status, Shapes::ShapeRef.new(shape: EvaluatorStatus, required: true, location_name: "status"))
    GetEvaluatorResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    GetEvaluatorResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    GetEvaluatorResponse.add_member(:locked_for_modification, Shapes::ShapeRef.new(shape: Boolean, location_name: "lockedForModification"))
    GetEvaluatorResponse.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "kmsKeyArn"))
    GetEvaluatorResponse.struct_class = Types::GetEvaluatorResponse

    GetGatewayRateLimitRequest.add_member(:gateway_identifier, Shapes::ShapeRef.new(shape: GatewayIdentifier, required: true, location: "uri", location_name: "gatewayIdentifier"))
    GetGatewayRateLimitRequest.add_member(:rate_limit_id, Shapes::ShapeRef.new(shape: GatewayRateLimitId, required: true, location: "uri", location_name: "rateLimitId"))
    GetGatewayRateLimitRequest.struct_class = Types::GetGatewayRateLimitRequest

    GetGatewayRateLimitResponse.add_member(:rate_limit_id, Shapes::ShapeRef.new(shape: GatewayRateLimitId, required: true, location_name: "rateLimitId"))
    GetGatewayRateLimitResponse.add_member(:gateway_identifier, Shapes::ShapeRef.new(shape: GatewayIdentifier, required: true, location_name: "gatewayIdentifier"))
    GetGatewayRateLimitResponse.add_member(:description, Shapes::ShapeRef.new(shape: GatewayRateLimitDescription, location_name: "description"))
    GetGatewayRateLimitResponse.add_member(:dimension_keys, Shapes::ShapeRef.new(shape: DimensionKeys, required: true, location_name: "dimensionKeys"))
    GetGatewayRateLimitResponse.add_member(:entries, Shapes::ShapeRef.new(shape: LimitEntries, required: true, location_name: "entries"))
    GetGatewayRateLimitResponse.add_member(:status, Shapes::ShapeRef.new(shape: GatewayRateLimitStatus, required: true, location_name: "status"))
    GetGatewayRateLimitResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    GetGatewayRateLimitResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "updatedAt"))
    GetGatewayRateLimitResponse.struct_class = Types::GetGatewayRateLimitResponse

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
    GetGatewayResponse.add_member(:protocol_type, Shapes::ShapeRef.new(shape: GatewayProtocolType, location_name: "protocolType"))
    GetGatewayResponse.add_member(:protocol_configuration, Shapes::ShapeRef.new(shape: GatewayProtocolConfiguration, location_name: "protocolConfiguration"))
    GetGatewayResponse.add_member(:authorizer_type, Shapes::ShapeRef.new(shape: AuthorizerType, required: true, location_name: "authorizerType"))
    GetGatewayResponse.add_member(:authorizer_configuration, Shapes::ShapeRef.new(shape: AuthorizerConfiguration, location_name: "authorizerConfiguration"))
    GetGatewayResponse.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "kmsKeyArn"))
    GetGatewayResponse.add_member(:custom_transform_configuration, Shapes::ShapeRef.new(shape: CustomTransformConfiguration, location_name: "customTransformConfiguration"))
    GetGatewayResponse.add_member(:interceptor_configurations, Shapes::ShapeRef.new(shape: GatewayInterceptorConfigurations, location_name: "interceptorConfigurations"))
    GetGatewayResponse.add_member(:policy_engine_configuration, Shapes::ShapeRef.new(shape: GatewayPolicyEngineConfiguration, location_name: "policyEngineConfiguration"))
    GetGatewayResponse.add_member(:workload_identity_details, Shapes::ShapeRef.new(shape: WorkloadIdentityDetails, location_name: "workloadIdentityDetails"))
    GetGatewayResponse.add_member(:exception_level, Shapes::ShapeRef.new(shape: ExceptionLevel, location_name: "exceptionLevel"))
    GetGatewayResponse.add_member(:web_acl_arn, Shapes::ShapeRef.new(shape: WebAclArn, location_name: "webAclArn"))
    GetGatewayResponse.add_member(:waf_configuration, Shapes::ShapeRef.new(shape: WafConfiguration, location_name: "wafConfiguration"))
    GetGatewayResponse.struct_class = Types::GetGatewayResponse

    GetGatewayRuleRequest.add_member(:gateway_identifier, Shapes::ShapeRef.new(shape: GatewayIdentifier, required: true, location: "uri", location_name: "gatewayIdentifier"))
    GetGatewayRuleRequest.add_member(:rule_id, Shapes::ShapeRef.new(shape: GatewayRuleId, required: true, location: "uri", location_name: "ruleId"))
    GetGatewayRuleRequest.struct_class = Types::GetGatewayRuleRequest

    GetGatewayRuleResponse.add_member(:rule_id, Shapes::ShapeRef.new(shape: GatewayRuleId, required: true, location_name: "ruleId"))
    GetGatewayRuleResponse.add_member(:gateway_arn, Shapes::ShapeRef.new(shape: GatewayArn, required: true, location_name: "gatewayArn"))
    GetGatewayRuleResponse.add_member(:priority, Shapes::ShapeRef.new(shape: GatewayRulePriority, required: true, location_name: "priority"))
    GetGatewayRuleResponse.add_member(:conditions, Shapes::ShapeRef.new(shape: Conditions, location_name: "conditions"))
    GetGatewayRuleResponse.add_member(:actions, Shapes::ShapeRef.new(shape: Actions, required: true, location_name: "actions"))
    GetGatewayRuleResponse.add_member(:description, Shapes::ShapeRef.new(shape: GatewayRuleDescription, location_name: "description"))
    GetGatewayRuleResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    GetGatewayRuleResponse.add_member(:status, Shapes::ShapeRef.new(shape: GatewayRuleStatus, required: true, location_name: "status"))
    GetGatewayRuleResponse.add_member(:system, Shapes::ShapeRef.new(shape: SystemManagedBlock, location_name: "system"))
    GetGatewayRuleResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, location_name: "updatedAt"))
    GetGatewayRuleResponse.struct_class = Types::GetGatewayRuleResponse

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
    GetGatewayTargetResponse.add_member(:metadata_configuration, Shapes::ShapeRef.new(shape: MetadataConfiguration, location_name: "metadataConfiguration"))
    GetGatewayTargetResponse.add_member(:private_endpoint, Shapes::ShapeRef.new(shape: PrivateEndpoint, location_name: "privateEndpoint"))
    GetGatewayTargetResponse.add_member(:private_endpoint_managed_resources, Shapes::ShapeRef.new(shape: PrivateEndpointManagedResources, location_name: "privateEndpointManagedResources"))
    GetGatewayTargetResponse.add_member(:authorization_data, Shapes::ShapeRef.new(shape: AuthorizationData, location_name: "authorizationData"))
    GetGatewayTargetResponse.add_member(:protocol_type, Shapes::ShapeRef.new(shape: TargetProtocolType, location_name: "protocolType"))
    GetGatewayTargetResponse.struct_class = Types::GetGatewayTargetResponse

    GetHarnessEndpointRequest.add_member(:harness_id, Shapes::ShapeRef.new(shape: HarnessId, required: true, location: "uri", location_name: "harnessId"))
    GetHarnessEndpointRequest.add_member(:endpoint_name, Shapes::ShapeRef.new(shape: HarnessEndpointName, required: true, location: "uri", location_name: "endpointName"))
    GetHarnessEndpointRequest.struct_class = Types::GetHarnessEndpointRequest

    GetHarnessEndpointResponse.add_member(:endpoint, Shapes::ShapeRef.new(shape: HarnessEndpoint, required: true, location_name: "endpoint"))
    GetHarnessEndpointResponse.struct_class = Types::GetHarnessEndpointResponse

    GetHarnessRequest.add_member(:harness_id, Shapes::ShapeRef.new(shape: HarnessId, required: true, location: "uri", location_name: "harnessId"))
    GetHarnessRequest.add_member(:harness_version, Shapes::ShapeRef.new(shape: HarnessVersion, location: "querystring", location_name: "harnessVersion"))
    GetHarnessRequest.struct_class = Types::GetHarnessRequest

    GetHarnessResponse.add_member(:harness, Shapes::ShapeRef.new(shape: Harness, required: true, location_name: "harness"))
    GetHarnessResponse.struct_class = Types::GetHarnessResponse

    GetMemoryInput.add_member(:memory_id, Shapes::ShapeRef.new(shape: MemoryId, required: true, location: "uri", location_name: "memoryId"))
    GetMemoryInput.add_member(:view, Shapes::ShapeRef.new(shape: MemoryView, location: "querystring", location_name: "view"))
    GetMemoryInput.struct_class = Types::GetMemoryInput

    GetMemoryOutput.add_member(:memory, Shapes::ShapeRef.new(shape: Memory, required: true, location_name: "memory"))
    GetMemoryOutput.struct_class = Types::GetMemoryOutput

    GetOauth2CredentialProviderRequest.add_member(:name, Shapes::ShapeRef.new(shape: CredentialProviderName, required: true, location_name: "name"))
    GetOauth2CredentialProviderRequest.struct_class = Types::GetOauth2CredentialProviderRequest

    GetOauth2CredentialProviderResponse.add_member(:client_secret_arn, Shapes::ShapeRef.new(shape: Secret, required: true, location_name: "clientSecretArn"))
    GetOauth2CredentialProviderResponse.add_member(:client_secret_json_key, Shapes::ShapeRef.new(shape: SecretJsonKeyType, location_name: "clientSecretJsonKey"))
    GetOauth2CredentialProviderResponse.add_member(:client_secret_source, Shapes::ShapeRef.new(shape: SecretSourceType, location_name: "clientSecretSource"))
    GetOauth2CredentialProviderResponse.add_member(:name, Shapes::ShapeRef.new(shape: CredentialProviderName, required: true, location_name: "name"))
    GetOauth2CredentialProviderResponse.add_member(:credential_provider_arn, Shapes::ShapeRef.new(shape: CredentialProviderArnType, required: true, location_name: "credentialProviderArn"))
    GetOauth2CredentialProviderResponse.add_member(:credential_provider_vendor, Shapes::ShapeRef.new(shape: CredentialProviderVendorType, required: true, location_name: "credentialProviderVendor"))
    GetOauth2CredentialProviderResponse.add_member(:callback_url, Shapes::ShapeRef.new(shape: String, location_name: "callbackUrl"))
    GetOauth2CredentialProviderResponse.add_member(:oauth2_provider_config_output, Shapes::ShapeRef.new(shape: Oauth2ProviderConfigOutput, required: true, location_name: "oauth2ProviderConfigOutput"))
    GetOauth2CredentialProviderResponse.add_member(:created_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdTime"))
    GetOauth2CredentialProviderResponse.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "lastUpdatedTime"))
    GetOauth2CredentialProviderResponse.add_member(:status, Shapes::ShapeRef.new(shape: Status, location_name: "status"))
    GetOauth2CredentialProviderResponse.add_member(:failure_reason, Shapes::ShapeRef.new(shape: String, location_name: "failureReason"))
    GetOauth2CredentialProviderResponse.struct_class = Types::GetOauth2CredentialProviderResponse

    GetOnlineEvaluationConfigRequest.add_member(:online_evaluation_config_id, Shapes::ShapeRef.new(shape: OnlineEvaluationConfigId, required: true, location: "uri", location_name: "onlineEvaluationConfigId"))
    GetOnlineEvaluationConfigRequest.struct_class = Types::GetOnlineEvaluationConfigRequest

    GetOnlineEvaluationConfigResponse.add_member(:online_evaluation_config_arn, Shapes::ShapeRef.new(shape: OnlineEvaluationConfigArn, required: true, location_name: "onlineEvaluationConfigArn"))
    GetOnlineEvaluationConfigResponse.add_member(:online_evaluation_config_id, Shapes::ShapeRef.new(shape: OnlineEvaluationConfigId, required: true, location_name: "onlineEvaluationConfigId"))
    GetOnlineEvaluationConfigResponse.add_member(:online_evaluation_config_name, Shapes::ShapeRef.new(shape: EvaluationConfigName, required: true, location_name: "onlineEvaluationConfigName"))
    GetOnlineEvaluationConfigResponse.add_member(:description, Shapes::ShapeRef.new(shape: EvaluationConfigDescription, location_name: "description"))
    GetOnlineEvaluationConfigResponse.add_member(:rule, Shapes::ShapeRef.new(shape: Rule, required: true, location_name: "rule"))
    GetOnlineEvaluationConfigResponse.add_member(:data_source_config, Shapes::ShapeRef.new(shape: DataSourceConfig, required: true, location_name: "dataSourceConfig"))
    GetOnlineEvaluationConfigResponse.add_member(:evaluators, Shapes::ShapeRef.new(shape: EvaluatorList, location_name: "evaluators"))
    GetOnlineEvaluationConfigResponse.add_member(:insights, Shapes::ShapeRef.new(shape: InsightList, location_name: "insights"))
    GetOnlineEvaluationConfigResponse.add_member(:clustering_config, Shapes::ShapeRef.new(shape: ClusteringConfig, location_name: "clusteringConfig"))
    GetOnlineEvaluationConfigResponse.add_member(:output_config, Shapes::ShapeRef.new(shape: OutputConfig, location_name: "outputConfig"))
    GetOnlineEvaluationConfigResponse.add_member(:evaluation_execution_role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "evaluationExecutionRoleArn"))
    GetOnlineEvaluationConfigResponse.add_member(:status, Shapes::ShapeRef.new(shape: OnlineEvaluationConfigStatus, required: true, location_name: "status"))
    GetOnlineEvaluationConfigResponse.add_member(:execution_status, Shapes::ShapeRef.new(shape: OnlineEvaluationExecutionStatus, required: true, location_name: "executionStatus"))
    GetOnlineEvaluationConfigResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    GetOnlineEvaluationConfigResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    GetOnlineEvaluationConfigResponse.add_member(:failure_reason, Shapes::ShapeRef.new(shape: String, location_name: "failureReason"))
    GetOnlineEvaluationConfigResponse.struct_class = Types::GetOnlineEvaluationConfigResponse

    GetPaymentConnectorRequest.add_member(:payment_manager_id, Shapes::ShapeRef.new(shape: PaymentManagerId, required: true, location: "uri", location_name: "paymentManagerId"))
    GetPaymentConnectorRequest.add_member(:payment_connector_id, Shapes::ShapeRef.new(shape: PaymentConnectorId, required: true, location: "uri", location_name: "paymentConnectorId"))
    GetPaymentConnectorRequest.struct_class = Types::GetPaymentConnectorRequest

    GetPaymentConnectorResponse.add_member(:payment_connector_id, Shapes::ShapeRef.new(shape: PaymentConnectorId, required: true, location_name: "paymentConnectorId"))
    GetPaymentConnectorResponse.add_member(:name, Shapes::ShapeRef.new(shape: PaymentConnectorName, required: true, location_name: "name"))
    GetPaymentConnectorResponse.add_member(:description, Shapes::ShapeRef.new(shape: PaymentsDescription, location_name: "description"))
    GetPaymentConnectorResponse.add_member(:type, Shapes::ShapeRef.new(shape: PaymentConnectorType, required: true, location_name: "type"))
    GetPaymentConnectorResponse.add_member(:credential_provider_configurations, Shapes::ShapeRef.new(shape: CredentialsProviderConfigurations, required: true, location_name: "credentialProviderConfigurations"))
    GetPaymentConnectorResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    GetPaymentConnectorResponse.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "lastUpdatedAt"))
    GetPaymentConnectorResponse.add_member(:status, Shapes::ShapeRef.new(shape: PaymentConnectorStatus, required: true, location_name: "status"))
    GetPaymentConnectorResponse.add_member(:authorization_url, Shapes::ShapeRef.new(shape: PaymentConnectorAuthorizationUrl, location_name: "authorizationUrl"))
    GetPaymentConnectorResponse.struct_class = Types::GetPaymentConnectorResponse

    GetPaymentCredentialProviderRequest.add_member(:name, Shapes::ShapeRef.new(shape: CredentialProviderName, required: true, location_name: "name"))
    GetPaymentCredentialProviderRequest.struct_class = Types::GetPaymentCredentialProviderRequest

    GetPaymentCredentialProviderResponse.add_member(:name, Shapes::ShapeRef.new(shape: CredentialProviderName, required: true, location_name: "name"))
    GetPaymentCredentialProviderResponse.add_member(:credential_provider_arn, Shapes::ShapeRef.new(shape: PaymentCredentialProviderArnType, required: true, location_name: "credentialProviderArn"))
    GetPaymentCredentialProviderResponse.add_member(:credential_provider_vendor, Shapes::ShapeRef.new(shape: PaymentCredentialProviderVendorType, required: true, location_name: "credentialProviderVendor"))
    GetPaymentCredentialProviderResponse.add_member(:provider_configuration_output, Shapes::ShapeRef.new(shape: PaymentProviderConfigurationOutput, required: true, location_name: "providerConfigurationOutput"))
    GetPaymentCredentialProviderResponse.add_member(:created_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdTime"))
    GetPaymentCredentialProviderResponse.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "lastUpdatedTime"))
    GetPaymentCredentialProviderResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    GetPaymentCredentialProviderResponse.struct_class = Types::GetPaymentCredentialProviderResponse

    GetPaymentManagerRequest.add_member(:payment_manager_id, Shapes::ShapeRef.new(shape: PaymentManagerId, required: true, location: "uri", location_name: "paymentManagerId"))
    GetPaymentManagerRequest.struct_class = Types::GetPaymentManagerRequest

    GetPaymentManagerResponse.add_member(:payment_manager_arn, Shapes::ShapeRef.new(shape: PaymentManagerArn, required: true, location_name: "paymentManagerArn"))
    GetPaymentManagerResponse.add_member(:payment_manager_id, Shapes::ShapeRef.new(shape: PaymentManagerId, required: true, location_name: "paymentManagerId"))
    GetPaymentManagerResponse.add_member(:name, Shapes::ShapeRef.new(shape: PaymentManagerName, required: true, location_name: "name"))
    GetPaymentManagerResponse.add_member(:description, Shapes::ShapeRef.new(shape: PaymentsDescription, location_name: "description"))
    GetPaymentManagerResponse.add_member(:authorizer_type, Shapes::ShapeRef.new(shape: PaymentsAuthorizerType, required: true, location_name: "authorizerType"))
    GetPaymentManagerResponse.add_member(:authorizer_configuration, Shapes::ShapeRef.new(shape: AuthorizerConfiguration, location_name: "authorizerConfiguration"))
    GetPaymentManagerResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "roleArn"))
    GetPaymentManagerResponse.add_member(:workload_identity_details, Shapes::ShapeRef.new(shape: WorkloadIdentityDetails, location_name: "workloadIdentityDetails"))
    GetPaymentManagerResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    GetPaymentManagerResponse.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "lastUpdatedAt"))
    GetPaymentManagerResponse.add_member(:status, Shapes::ShapeRef.new(shape: PaymentManagerStatus, required: true, location_name: "status"))
    GetPaymentManagerResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    GetPaymentManagerResponse.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "kmsKeyArn"))
    GetPaymentManagerResponse.struct_class = Types::GetPaymentManagerResponse

    GetPolicyEngineRequest.add_member(:policy_engine_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "policyEngineId"))
    GetPolicyEngineRequest.struct_class = Types::GetPolicyEngineRequest

    GetPolicyEngineResponse.add_member(:policy_engine_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "policyEngineId"))
    GetPolicyEngineResponse.add_member(:name, Shapes::ShapeRef.new(shape: PolicyEngineName, required: true, location_name: "name"))
    GetPolicyEngineResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    GetPolicyEngineResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "updatedAt"))
    GetPolicyEngineResponse.add_member(:policy_engine_arn, Shapes::ShapeRef.new(shape: PolicyEngineArn, required: true, location_name: "policyEngineArn"))
    GetPolicyEngineResponse.add_member(:status, Shapes::ShapeRef.new(shape: PolicyEngineStatus, required: true, location_name: "status"))
    GetPolicyEngineResponse.add_member(:encryption_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "encryptionKeyArn"))
    GetPolicyEngineResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    GetPolicyEngineResponse.add_member(:status_reasons, Shapes::ShapeRef.new(shape: PolicyStatusReasons, required: true, location_name: "statusReasons"))
    GetPolicyEngineResponse.struct_class = Types::GetPolicyEngineResponse

    GetPolicyEngineSummaryRequest.add_member(:policy_engine_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "policyEngineId"))
    GetPolicyEngineSummaryRequest.struct_class = Types::GetPolicyEngineSummaryRequest

    GetPolicyEngineSummaryResponse.add_member(:policy_engine_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "policyEngineId"))
    GetPolicyEngineSummaryResponse.add_member(:name, Shapes::ShapeRef.new(shape: PolicyEngineName, required: true, location_name: "name"))
    GetPolicyEngineSummaryResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    GetPolicyEngineSummaryResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "updatedAt"))
    GetPolicyEngineSummaryResponse.add_member(:policy_engine_arn, Shapes::ShapeRef.new(shape: PolicyEngineArn, required: true, location_name: "policyEngineArn"))
    GetPolicyEngineSummaryResponse.add_member(:status, Shapes::ShapeRef.new(shape: PolicyEngineStatus, required: true, location_name: "status"))
    GetPolicyEngineSummaryResponse.add_member(:encryption_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "encryptionKeyArn"))
    GetPolicyEngineSummaryResponse.struct_class = Types::GetPolicyEngineSummaryResponse

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
    GetPolicyGenerationResponse.add_member(:findings, Shapes::ShapeRef.new(shape: String, location_name: "findings"))
    GetPolicyGenerationResponse.add_member(:status_reasons, Shapes::ShapeRef.new(shape: PolicyStatusReasons, required: true, location_name: "statusReasons"))
    GetPolicyGenerationResponse.struct_class = Types::GetPolicyGenerationResponse

    GetPolicyGenerationSummaryRequest.add_member(:policy_generation_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "policyGenerationId"))
    GetPolicyGenerationSummaryRequest.add_member(:policy_engine_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "policyEngineId"))
    GetPolicyGenerationSummaryRequest.struct_class = Types::GetPolicyGenerationSummaryRequest

    GetPolicyGenerationSummaryResponse.add_member(:policy_engine_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "policyEngineId"))
    GetPolicyGenerationSummaryResponse.add_member(:policy_generation_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "policyGenerationId"))
    GetPolicyGenerationSummaryResponse.add_member(:name, Shapes::ShapeRef.new(shape: PolicyGenerationName, required: true, location_name: "name"))
    GetPolicyGenerationSummaryResponse.add_member(:policy_generation_arn, Shapes::ShapeRef.new(shape: PolicyGenerationArn, required: true, location_name: "policyGenerationArn"))
    GetPolicyGenerationSummaryResponse.add_member(:resource, Shapes::ShapeRef.new(shape: Resource, required: true, location_name: "resource"))
    GetPolicyGenerationSummaryResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    GetPolicyGenerationSummaryResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "updatedAt"))
    GetPolicyGenerationSummaryResponse.add_member(:status, Shapes::ShapeRef.new(shape: PolicyGenerationStatus, required: true, location_name: "status"))
    GetPolicyGenerationSummaryResponse.add_member(:findings, Shapes::ShapeRef.new(shape: String, location_name: "findings"))
    GetPolicyGenerationSummaryResponse.struct_class = Types::GetPolicyGenerationSummaryResponse

    GetPolicyRequest.add_member(:policy_engine_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "policyEngineId"))
    GetPolicyRequest.add_member(:policy_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "policyId"))
    GetPolicyRequest.struct_class = Types::GetPolicyRequest

    GetPolicyResponse.add_member(:policy_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "policyId"))
    GetPolicyResponse.add_member(:name, Shapes::ShapeRef.new(shape: PolicyName, required: true, location_name: "name"))
    GetPolicyResponse.add_member(:policy_engine_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "policyEngineId"))
    GetPolicyResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    GetPolicyResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "updatedAt"))
    GetPolicyResponse.add_member(:policy_arn, Shapes::ShapeRef.new(shape: PolicyArn, required: true, location_name: "policyArn"))
    GetPolicyResponse.add_member(:status, Shapes::ShapeRef.new(shape: PolicyStatus, required: true, location_name: "status"))
    GetPolicyResponse.add_member(:enforcement_mode, Shapes::ShapeRef.new(shape: EnforcementMode, location_name: "enforcementMode"))
    GetPolicyResponse.add_member(:definition, Shapes::ShapeRef.new(shape: PolicyDefinition, required: true, location_name: "definition"))
    GetPolicyResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    GetPolicyResponse.add_member(:status_reasons, Shapes::ShapeRef.new(shape: PolicyStatusReasons, required: true, location_name: "statusReasons"))
    GetPolicyResponse.struct_class = Types::GetPolicyResponse

    GetPolicySummaryRequest.add_member(:policy_engine_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "policyEngineId"))
    GetPolicySummaryRequest.add_member(:policy_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "policyId"))
    GetPolicySummaryRequest.struct_class = Types::GetPolicySummaryRequest

    GetPolicySummaryResponse.add_member(:policy_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "policyId"))
    GetPolicySummaryResponse.add_member(:name, Shapes::ShapeRef.new(shape: PolicyName, required: true, location_name: "name"))
    GetPolicySummaryResponse.add_member(:policy_engine_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "policyEngineId"))
    GetPolicySummaryResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    GetPolicySummaryResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "updatedAt"))
    GetPolicySummaryResponse.add_member(:policy_arn, Shapes::ShapeRef.new(shape: PolicyArn, required: true, location_name: "policyArn"))
    GetPolicySummaryResponse.add_member(:status, Shapes::ShapeRef.new(shape: PolicyStatus, required: true, location_name: "status"))
    GetPolicySummaryResponse.add_member(:enforcement_mode, Shapes::ShapeRef.new(shape: EnforcementMode, location_name: "enforcementMode"))
    GetPolicySummaryResponse.struct_class = Types::GetPolicySummaryResponse

    GetRegistryRecordRequest.add_member(:registry_id, Shapes::ShapeRef.new(shape: RegistryIdentifier, required: true, location: "uri", location_name: "registryId"))
    GetRegistryRecordRequest.add_member(:record_id, Shapes::ShapeRef.new(shape: RecordIdentifier, required: true, location: "uri", location_name: "recordId"))
    GetRegistryRecordRequest.struct_class = Types::GetRegistryRecordRequest

    GetRegistryRecordResponse.add_member(:registry_arn, Shapes::ShapeRef.new(shape: RegistryArn, required: true, location_name: "registryArn"))
    GetRegistryRecordResponse.add_member(:record_arn, Shapes::ShapeRef.new(shape: RegistryRecordArn, required: true, location_name: "recordArn"))
    GetRegistryRecordResponse.add_member(:record_id, Shapes::ShapeRef.new(shape: RegistryRecordId, required: true, location_name: "recordId"))
    GetRegistryRecordResponse.add_member(:name, Shapes::ShapeRef.new(shape: RegistryRecordName, required: true, location_name: "name"))
    GetRegistryRecordResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    GetRegistryRecordResponse.add_member(:descriptor_type, Shapes::ShapeRef.new(shape: DescriptorType, required: true, location_name: "descriptorType"))
    GetRegistryRecordResponse.add_member(:descriptors, Shapes::ShapeRef.new(shape: Descriptors, required: true, location_name: "descriptors"))
    GetRegistryRecordResponse.add_member(:record_version, Shapes::ShapeRef.new(shape: RegistryRecordVersion, location_name: "recordVersion"))
    GetRegistryRecordResponse.add_member(:status, Shapes::ShapeRef.new(shape: RegistryRecordStatus, required: true, location_name: "status"))
    GetRegistryRecordResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    GetRegistryRecordResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "updatedAt"))
    GetRegistryRecordResponse.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    GetRegistryRecordResponse.add_member(:synchronization_type, Shapes::ShapeRef.new(shape: SynchronizationType, location_name: "synchronizationType"))
    GetRegistryRecordResponse.add_member(:synchronization_configuration, Shapes::ShapeRef.new(shape: SynchronizationConfiguration, location_name: "synchronizationConfiguration"))
    GetRegistryRecordResponse.struct_class = Types::GetRegistryRecordResponse

    GetRegistryRequest.add_member(:registry_id, Shapes::ShapeRef.new(shape: RegistryIdentifier, required: true, location: "uri", location_name: "registryId"))
    GetRegistryRequest.struct_class = Types::GetRegistryRequest

    GetRegistryResponse.add_member(:name, Shapes::ShapeRef.new(shape: RegistryName, required: true, location_name: "name"))
    GetRegistryResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    GetRegistryResponse.add_member(:registry_id, Shapes::ShapeRef.new(shape: RegistryId, required: true, location_name: "registryId"))
    GetRegistryResponse.add_member(:registry_arn, Shapes::ShapeRef.new(shape: RegistryArn, required: true, location_name: "registryArn"))
    GetRegistryResponse.add_member(:authorizer_type, Shapes::ShapeRef.new(shape: RegistryAuthorizerType, location_name: "authorizerType"))
    GetRegistryResponse.add_member(:authorizer_configuration, Shapes::ShapeRef.new(shape: AuthorizerConfiguration, location_name: "authorizerConfiguration"))
    GetRegistryResponse.add_member(:approval_configuration, Shapes::ShapeRef.new(shape: ApprovalConfiguration, location_name: "approvalConfiguration"))
    GetRegistryResponse.add_member(:status, Shapes::ShapeRef.new(shape: RegistryStatus, required: true, location_name: "status"))
    GetRegistryResponse.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    GetRegistryResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    GetRegistryResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "updatedAt"))
    GetRegistryResponse.struct_class = Types::GetRegistryResponse

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
    GithubOauth2ProviderConfigInput.add_member(:client_secret, Shapes::ShapeRef.new(shape: DefaultClientSecretType, location_name: "clientSecret"))
    GithubOauth2ProviderConfigInput.add_member(:client_secret_config, Shapes::ShapeRef.new(shape: SecretReference, location_name: "clientSecretConfig"))
    GithubOauth2ProviderConfigInput.add_member(:client_secret_source, Shapes::ShapeRef.new(shape: SecretSourceType, location_name: "clientSecretSource"))
    GithubOauth2ProviderConfigInput.struct_class = Types::GithubOauth2ProviderConfigInput

    GithubOauth2ProviderConfigOutput.add_member(:oauth_discovery, Shapes::ShapeRef.new(shape: Oauth2Discovery, required: true, location_name: "oauthDiscovery"))
    GithubOauth2ProviderConfigOutput.add_member(:client_id, Shapes::ShapeRef.new(shape: ClientIdType, location_name: "clientId"))
    GithubOauth2ProviderConfigOutput.struct_class = Types::GithubOauth2ProviderConfigOutput

    GoogleOauth2ProviderConfigInput.add_member(:client_id, Shapes::ShapeRef.new(shape: ClientIdType, required: true, location_name: "clientId"))
    GoogleOauth2ProviderConfigInput.add_member(:client_secret, Shapes::ShapeRef.new(shape: DefaultClientSecretType, location_name: "clientSecret"))
    GoogleOauth2ProviderConfigInput.add_member(:client_secret_config, Shapes::ShapeRef.new(shape: SecretReference, location_name: "clientSecretConfig"))
    GoogleOauth2ProviderConfigInput.add_member(:client_secret_source, Shapes::ShapeRef.new(shape: SecretSourceType, location_name: "clientSecretSource"))
    GoogleOauth2ProviderConfigInput.struct_class = Types::GoogleOauth2ProviderConfigInput

    GoogleOauth2ProviderConfigOutput.add_member(:oauth_discovery, Shapes::ShapeRef.new(shape: Oauth2Discovery, required: true, location_name: "oauthDiscovery"))
    GoogleOauth2ProviderConfigOutput.add_member(:client_id, Shapes::ShapeRef.new(shape: ClientIdType, location_name: "clientId"))
    GoogleOauth2ProviderConfigOutput.struct_class = Types::GoogleOauth2ProviderConfigOutput

    Harness.add_member(:harness_id, Shapes::ShapeRef.new(shape: HarnessId, required: true, location_name: "harnessId"))
    Harness.add_member(:harness_name, Shapes::ShapeRef.new(shape: HarnessName, required: true, location_name: "harnessName"))
    Harness.add_member(:arn, Shapes::ShapeRef.new(shape: HarnessArn, required: true, location_name: "arn"))
    Harness.add_member(:status, Shapes::ShapeRef.new(shape: HarnessStatus, required: true, location_name: "status"))
    Harness.add_member(:harness_version, Shapes::ShapeRef.new(shape: HarnessVersion, location_name: "harnessVersion"))
    Harness.add_member(:execution_role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "executionRoleArn"))
    Harness.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    Harness.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "updatedAt"))
    Harness.add_member(:model, Shapes::ShapeRef.new(shape: HarnessModelConfiguration, required: true, location_name: "model"))
    Harness.add_member(:system_prompt, Shapes::ShapeRef.new(shape: HarnessSystemPrompt, required: true, location_name: "systemPrompt"))
    Harness.add_member(:tools, Shapes::ShapeRef.new(shape: HarnessTools, required: true, location_name: "tools"))
    Harness.add_member(:skills, Shapes::ShapeRef.new(shape: HarnessSkills, required: true, location_name: "skills"))
    Harness.add_member(:allowed_tools, Shapes::ShapeRef.new(shape: HarnessAllowedTools, required: true, location_name: "allowedTools"))
    Harness.add_member(:truncation, Shapes::ShapeRef.new(shape: HarnessTruncationConfiguration, required: true, location_name: "truncation"))
    Harness.add_member(:environment, Shapes::ShapeRef.new(shape: HarnessEnvironmentProvider, required: true, location_name: "environment"))
    Harness.add_member(:environment_artifact, Shapes::ShapeRef.new(shape: HarnessEnvironmentArtifact, location_name: "environmentArtifact"))
    Harness.add_member(:environment_variables, Shapes::ShapeRef.new(shape: EnvironmentVariablesMap, location_name: "environmentVariables"))
    Harness.add_member(:authorizer_configuration, Shapes::ShapeRef.new(shape: AuthorizerConfiguration, location_name: "authorizerConfiguration"))
    Harness.add_member(:memory, Shapes::ShapeRef.new(shape: HarnessMemoryConfiguration, location_name: "memory"))
    Harness.add_member(:max_iterations, Shapes::ShapeRef.new(shape: Integer, location_name: "maxIterations"))
    Harness.add_member(:max_tokens, Shapes::ShapeRef.new(shape: Integer, location_name: "maxTokens"))
    Harness.add_member(:timeout_seconds, Shapes::ShapeRef.new(shape: Integer, location_name: "timeoutSeconds"))
    Harness.add_member(:failure_reason, Shapes::ShapeRef.new(shape: String, location_name: "failureReason"))
    Harness.struct_class = Types::Harness

    HarnessAgentCoreBrowserConfig.add_member(:browser_arn, Shapes::ShapeRef.new(shape: HarnessBrowserArn, location_name: "browserArn"))
    HarnessAgentCoreBrowserConfig.struct_class = Types::HarnessAgentCoreBrowserConfig

    HarnessAgentCoreCodeInterpreterConfig.add_member(:code_interpreter_arn, Shapes::ShapeRef.new(shape: HarnessCodeInterpreterArn, location_name: "codeInterpreterArn"))
    HarnessAgentCoreCodeInterpreterConfig.struct_class = Types::HarnessAgentCoreCodeInterpreterConfig

    HarnessAgentCoreGatewayConfig.add_member(:gateway_arn, Shapes::ShapeRef.new(shape: GatewayArn, required: true, location_name: "gatewayArn"))
    HarnessAgentCoreGatewayConfig.add_member(:outbound_auth, Shapes::ShapeRef.new(shape: HarnessGatewayOutboundAuth, location_name: "outboundAuth"))
    HarnessAgentCoreGatewayConfig.struct_class = Types::HarnessAgentCoreGatewayConfig

    HarnessAgentCoreMemoryConfiguration.add_member(:arn, Shapes::ShapeRef.new(shape: MemoryArn, required: true, location_name: "arn"))
    HarnessAgentCoreMemoryConfiguration.add_member(:actor_id, Shapes::ShapeRef.new(shape: String, location_name: "actorId"))
    HarnessAgentCoreMemoryConfiguration.add_member(:messages_count, Shapes::ShapeRef.new(shape: Integer, location_name: "messagesCount"))
    HarnessAgentCoreMemoryConfiguration.add_member(:retrieval_config, Shapes::ShapeRef.new(shape: HarnessAgentCoreMemoryRetrievalConfigs, location_name: "retrievalConfig"))
    HarnessAgentCoreMemoryConfiguration.struct_class = Types::HarnessAgentCoreMemoryConfiguration

    HarnessAgentCoreMemoryRetrievalConfig.add_member(:top_k, Shapes::ShapeRef.new(shape: Integer, location_name: "topK"))
    HarnessAgentCoreMemoryRetrievalConfig.add_member(:relevance_score, Shapes::ShapeRef.new(shape: Float, location_name: "relevanceScore"))
    HarnessAgentCoreMemoryRetrievalConfig.add_member(:strategy_id, Shapes::ShapeRef.new(shape: String, location_name: "strategyId"))
    HarnessAgentCoreMemoryRetrievalConfig.struct_class = Types::HarnessAgentCoreMemoryRetrievalConfig

    HarnessAgentCoreMemoryRetrievalConfigs.key = Shapes::ShapeRef.new(shape: String)
    HarnessAgentCoreMemoryRetrievalConfigs.value = Shapes::ShapeRef.new(shape: HarnessAgentCoreMemoryRetrievalConfig)

    HarnessAgentCoreRuntimeEnvironment.add_member(:agent_runtime_arn, Shapes::ShapeRef.new(shape: BedrockAgentcoreResourceArn, required: true, location_name: "agentRuntimeArn"))
    HarnessAgentCoreRuntimeEnvironment.add_member(:agent_runtime_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "agentRuntimeName"))
    HarnessAgentCoreRuntimeEnvironment.add_member(:agent_runtime_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "agentRuntimeId"))
    HarnessAgentCoreRuntimeEnvironment.add_member(:lifecycle_configuration, Shapes::ShapeRef.new(shape: LifecycleConfiguration, required: true, location_name: "lifecycleConfiguration"))
    HarnessAgentCoreRuntimeEnvironment.add_member(:network_configuration, Shapes::ShapeRef.new(shape: NetworkConfiguration, required: true, location_name: "networkConfiguration"))
    HarnessAgentCoreRuntimeEnvironment.add_member(:filesystem_configurations, Shapes::ShapeRef.new(shape: FilesystemConfigurations, location_name: "filesystemConfigurations"))
    HarnessAgentCoreRuntimeEnvironment.struct_class = Types::HarnessAgentCoreRuntimeEnvironment

    HarnessAgentCoreRuntimeEnvironmentRequest.add_member(:lifecycle_configuration, Shapes::ShapeRef.new(shape: LifecycleConfiguration, location_name: "lifecycleConfiguration"))
    HarnessAgentCoreRuntimeEnvironmentRequest.add_member(:network_configuration, Shapes::ShapeRef.new(shape: NetworkConfiguration, location_name: "networkConfiguration"))
    HarnessAgentCoreRuntimeEnvironmentRequest.add_member(:filesystem_configurations, Shapes::ShapeRef.new(shape: FilesystemConfigurations, location_name: "filesystemConfigurations"))
    HarnessAgentCoreRuntimeEnvironmentRequest.struct_class = Types::HarnessAgentCoreRuntimeEnvironmentRequest

    HarnessAllowedTools.member = Shapes::ShapeRef.new(shape: HarnessAllowedTool)

    HarnessAwsSkillPaths.member = Shapes::ShapeRef.new(shape: HarnessAwsSkillPath)

    HarnessBedrockModelConfig.add_member(:model_id, Shapes::ShapeRef.new(shape: ModelId, required: true, location_name: "modelId"))
    HarnessBedrockModelConfig.add_member(:max_tokens, Shapes::ShapeRef.new(shape: MaxTokens, location_name: "maxTokens"))
    HarnessBedrockModelConfig.add_member(:temperature, Shapes::ShapeRef.new(shape: Temperature, location_name: "temperature"))
    HarnessBedrockModelConfig.add_member(:top_p, Shapes::ShapeRef.new(shape: TopP, location_name: "topP"))
    HarnessBedrockModelConfig.add_member(:api_format, Shapes::ShapeRef.new(shape: HarnessBedrockApiFormat, location_name: "apiFormat"))
    HarnessBedrockModelConfig.add_member(:additional_params, Shapes::ShapeRef.new(shape: Document, location_name: "additionalParams"))
    HarnessBedrockModelConfig.struct_class = Types::HarnessBedrockModelConfig

    HarnessDisabledMemoryConfiguration.struct_class = Types::HarnessDisabledMemoryConfiguration

    HarnessEndpoint.add_member(:harness_id, Shapes::ShapeRef.new(shape: HarnessId, required: true, location_name: "harnessId"))
    HarnessEndpoint.add_member(:harness_name, Shapes::ShapeRef.new(shape: HarnessName, required: true, location_name: "harnessName"))
    HarnessEndpoint.add_member(:endpoint_name, Shapes::ShapeRef.new(shape: HarnessEndpointName, required: true, location_name: "endpointName"))
    HarnessEndpoint.add_member(:arn, Shapes::ShapeRef.new(shape: HarnessEndpointArn, required: true, location_name: "arn"))
    HarnessEndpoint.add_member(:status, Shapes::ShapeRef.new(shape: HarnessEndpointStatus, required: true, location_name: "status"))
    HarnessEndpoint.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    HarnessEndpoint.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "updatedAt"))
    HarnessEndpoint.add_member(:live_version, Shapes::ShapeRef.new(shape: HarnessVersion, location_name: "liveVersion"))
    HarnessEndpoint.add_member(:target_version, Shapes::ShapeRef.new(shape: HarnessVersion, location_name: "targetVersion"))
    HarnessEndpoint.add_member(:description, Shapes::ShapeRef.new(shape: HarnessEndpointDescription, location_name: "description"))
    HarnessEndpoint.add_member(:failure_reason, Shapes::ShapeRef.new(shape: String, location_name: "failureReason"))
    HarnessEndpoint.struct_class = Types::HarnessEndpoint

    HarnessEndpoints.member = Shapes::ShapeRef.new(shape: HarnessEndpoint)

    HarnessEnvironmentArtifact.add_member(:container_configuration, Shapes::ShapeRef.new(shape: ContainerConfiguration, location_name: "containerConfiguration"))
    HarnessEnvironmentArtifact.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    HarnessEnvironmentArtifact.add_member_subclass(:container_configuration, Types::HarnessEnvironmentArtifact::ContainerConfiguration)
    HarnessEnvironmentArtifact.add_member_subclass(:unknown, Types::HarnessEnvironmentArtifact::Unknown)
    HarnessEnvironmentArtifact.struct_class = Types::HarnessEnvironmentArtifact

    HarnessEnvironmentProvider.add_member(:agent_core_runtime_environment, Shapes::ShapeRef.new(shape: HarnessAgentCoreRuntimeEnvironment, location_name: "agentCoreRuntimeEnvironment"))
    HarnessEnvironmentProvider.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    HarnessEnvironmentProvider.add_member_subclass(:agent_core_runtime_environment, Types::HarnessEnvironmentProvider::AgentCoreRuntimeEnvironment)
    HarnessEnvironmentProvider.add_member_subclass(:unknown, Types::HarnessEnvironmentProvider::Unknown)
    HarnessEnvironmentProvider.struct_class = Types::HarnessEnvironmentProvider

    HarnessEnvironmentProviderRequest.add_member(:agent_core_runtime_environment, Shapes::ShapeRef.new(shape: HarnessAgentCoreRuntimeEnvironmentRequest, location_name: "agentCoreRuntimeEnvironment"))
    HarnessEnvironmentProviderRequest.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    HarnessEnvironmentProviderRequest.add_member_subclass(:agent_core_runtime_environment, Types::HarnessEnvironmentProviderRequest::AgentCoreRuntimeEnvironment)
    HarnessEnvironmentProviderRequest.add_member_subclass(:unknown, Types::HarnessEnvironmentProviderRequest::Unknown)
    HarnessEnvironmentProviderRequest.struct_class = Types::HarnessEnvironmentProviderRequest

    HarnessGatewayOutboundAuth.add_member(:aws_iam, Shapes::ShapeRef.new(shape: Unit, location_name: "awsIam"))
    HarnessGatewayOutboundAuth.add_member(:none, Shapes::ShapeRef.new(shape: Unit, location_name: "none"))
    HarnessGatewayOutboundAuth.add_member(:oauth, Shapes::ShapeRef.new(shape: OAuthCredentialProvider, location_name: "oauth"))
    HarnessGatewayOutboundAuth.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    HarnessGatewayOutboundAuth.add_member_subclass(:aws_iam, Types::HarnessGatewayOutboundAuth::AwsIam)
    HarnessGatewayOutboundAuth.add_member_subclass(:none, Types::HarnessGatewayOutboundAuth::None)
    HarnessGatewayOutboundAuth.add_member_subclass(:oauth, Types::HarnessGatewayOutboundAuth::Oauth)
    HarnessGatewayOutboundAuth.add_member_subclass(:unknown, Types::HarnessGatewayOutboundAuth::Unknown)
    HarnessGatewayOutboundAuth.struct_class = Types::HarnessGatewayOutboundAuth

    HarnessGeminiModelConfig.add_member(:model_id, Shapes::ShapeRef.new(shape: ModelId, required: true, location_name: "modelId"))
    HarnessGeminiModelConfig.add_member(:api_key_arn, Shapes::ShapeRef.new(shape: ApiKeyArn, required: true, location_name: "apiKeyArn"))
    HarnessGeminiModelConfig.add_member(:max_tokens, Shapes::ShapeRef.new(shape: MaxTokens, location_name: "maxTokens"))
    HarnessGeminiModelConfig.add_member(:temperature, Shapes::ShapeRef.new(shape: Temperature, location_name: "temperature"))
    HarnessGeminiModelConfig.add_member(:top_p, Shapes::ShapeRef.new(shape: TopP, location_name: "topP"))
    HarnessGeminiModelConfig.add_member(:top_k, Shapes::ShapeRef.new(shape: TopK, location_name: "topK"))
    HarnessGeminiModelConfig.add_member(:additional_params, Shapes::ShapeRef.new(shape: Document, location_name: "additionalParams"))
    HarnessGeminiModelConfig.struct_class = Types::HarnessGeminiModelConfig

    HarnessInlineFunctionConfig.add_member(:description, Shapes::ShapeRef.new(shape: HarnessInlineFunctionDescription, required: true, location_name: "description"))
    HarnessInlineFunctionConfig.add_member(:input_schema, Shapes::ShapeRef.new(shape: SensitiveJson, required: true, location_name: "inputSchema"))
    HarnessInlineFunctionConfig.struct_class = Types::HarnessInlineFunctionConfig

    HarnessLiteLlmModelConfig.add_member(:model_id, Shapes::ShapeRef.new(shape: ModelId, required: true, location_name: "modelId"))
    HarnessLiteLlmModelConfig.add_member(:api_key_arn, Shapes::ShapeRef.new(shape: ApiKeyArn, location_name: "apiKeyArn"))
    HarnessLiteLlmModelConfig.add_member(:api_base, Shapes::ShapeRef.new(shape: HarnessLiteLlmApiBase, location_name: "apiBase"))
    HarnessLiteLlmModelConfig.add_member(:max_tokens, Shapes::ShapeRef.new(shape: MaxTokens, location_name: "maxTokens"))
    HarnessLiteLlmModelConfig.add_member(:temperature, Shapes::ShapeRef.new(shape: Temperature, location_name: "temperature"))
    HarnessLiteLlmModelConfig.add_member(:top_p, Shapes::ShapeRef.new(shape: TopP, location_name: "topP"))
    HarnessLiteLlmModelConfig.add_member(:additional_params, Shapes::ShapeRef.new(shape: Document, location_name: "additionalParams"))
    HarnessLiteLlmModelConfig.struct_class = Types::HarnessLiteLlmModelConfig

    HarnessManagedMemoryConfiguration.add_member(:arn, Shapes::ShapeRef.new(shape: MemoryArn, location_name: "arn"))
    HarnessManagedMemoryConfiguration.add_member(:strategies, Shapes::ShapeRef.new(shape: HarnessManagedMemoryStrategyList, location_name: "strategies"))
    HarnessManagedMemoryConfiguration.add_member(:event_expiry_duration, Shapes::ShapeRef.new(shape: HarnessManagedMemoryConfigurationEventExpiryDurationInteger, location_name: "eventExpiryDuration"))
    HarnessManagedMemoryConfiguration.add_member(:encryption_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "encryptionKeyArn"))
    HarnessManagedMemoryConfiguration.struct_class = Types::HarnessManagedMemoryConfiguration

    HarnessManagedMemoryStrategyList.member = Shapes::ShapeRef.new(shape: HarnessManagedMemoryStrategyType)

    HarnessMemoryConfiguration.add_member(:agent_core_memory_configuration, Shapes::ShapeRef.new(shape: HarnessAgentCoreMemoryConfiguration, location_name: "agentCoreMemoryConfiguration"))
    HarnessMemoryConfiguration.add_member(:managed_memory_configuration, Shapes::ShapeRef.new(shape: HarnessManagedMemoryConfiguration, location_name: "managedMemoryConfiguration"))
    HarnessMemoryConfiguration.add_member(:disabled, Shapes::ShapeRef.new(shape: HarnessDisabledMemoryConfiguration, location_name: "disabled"))
    HarnessMemoryConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    HarnessMemoryConfiguration.add_member_subclass(:agent_core_memory_configuration, Types::HarnessMemoryConfiguration::AgentCoreMemoryConfiguration)
    HarnessMemoryConfiguration.add_member_subclass(:managed_memory_configuration, Types::HarnessMemoryConfiguration::ManagedMemoryConfiguration)
    HarnessMemoryConfiguration.add_member_subclass(:disabled, Types::HarnessMemoryConfiguration::Disabled)
    HarnessMemoryConfiguration.add_member_subclass(:unknown, Types::HarnessMemoryConfiguration::Unknown)
    HarnessMemoryConfiguration.struct_class = Types::HarnessMemoryConfiguration

    HarnessModelConfiguration.add_member(:bedrock_model_config, Shapes::ShapeRef.new(shape: HarnessBedrockModelConfig, location_name: "bedrockModelConfig"))
    HarnessModelConfiguration.add_member(:open_ai_model_config, Shapes::ShapeRef.new(shape: HarnessOpenAiModelConfig, location_name: "openAiModelConfig"))
    HarnessModelConfiguration.add_member(:gemini_model_config, Shapes::ShapeRef.new(shape: HarnessGeminiModelConfig, location_name: "geminiModelConfig"))
    HarnessModelConfiguration.add_member(:lite_llm_model_config, Shapes::ShapeRef.new(shape: HarnessLiteLlmModelConfig, location_name: "liteLlmModelConfig"))
    HarnessModelConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    HarnessModelConfiguration.add_member_subclass(:bedrock_model_config, Types::HarnessModelConfiguration::BedrockModelConfig)
    HarnessModelConfiguration.add_member_subclass(:open_ai_model_config, Types::HarnessModelConfiguration::OpenAiModelConfig)
    HarnessModelConfiguration.add_member_subclass(:gemini_model_config, Types::HarnessModelConfiguration::GeminiModelConfig)
    HarnessModelConfiguration.add_member_subclass(:lite_llm_model_config, Types::HarnessModelConfiguration::LiteLlmModelConfig)
    HarnessModelConfiguration.add_member_subclass(:unknown, Types::HarnessModelConfiguration::Unknown)
    HarnessModelConfiguration.struct_class = Types::HarnessModelConfiguration

    HarnessOpenAiModelConfig.add_member(:model_id, Shapes::ShapeRef.new(shape: ModelId, required: true, location_name: "modelId"))
    HarnessOpenAiModelConfig.add_member(:api_key_arn, Shapes::ShapeRef.new(shape: ApiKeyArn, required: true, location_name: "apiKeyArn"))
    HarnessOpenAiModelConfig.add_member(:max_tokens, Shapes::ShapeRef.new(shape: MaxTokens, location_name: "maxTokens"))
    HarnessOpenAiModelConfig.add_member(:temperature, Shapes::ShapeRef.new(shape: Temperature, location_name: "temperature"))
    HarnessOpenAiModelConfig.add_member(:top_p, Shapes::ShapeRef.new(shape: TopP, location_name: "topP"))
    HarnessOpenAiModelConfig.add_member(:api_format, Shapes::ShapeRef.new(shape: HarnessOpenAiApiFormat, location_name: "apiFormat"))
    HarnessOpenAiModelConfig.add_member(:additional_params, Shapes::ShapeRef.new(shape: Document, location_name: "additionalParams"))
    HarnessOpenAiModelConfig.struct_class = Types::HarnessOpenAiModelConfig

    HarnessRemoteMcpConfig.add_member(:url, Shapes::ShapeRef.new(shape: HarnessRemoteMcpUrl, required: true, location_name: "url"))
    HarnessRemoteMcpConfig.add_member(:headers, Shapes::ShapeRef.new(shape: HttpHeadersMap, location_name: "headers"))
    HarnessRemoteMcpConfig.struct_class = Types::HarnessRemoteMcpConfig

    HarnessSkill.add_member(:path, Shapes::ShapeRef.new(shape: HarnessSkillPath, location_name: "path"))
    HarnessSkill.add_member(:s3, Shapes::ShapeRef.new(shape: HarnessSkillS3Source, location_name: "s3"))
    HarnessSkill.add_member(:git, Shapes::ShapeRef.new(shape: HarnessSkillGitSource, location_name: "git"))
    HarnessSkill.add_member(:aws_skills, Shapes::ShapeRef.new(shape: HarnessSkillAwsSkillsSource, location_name: "awsSkills"))
    HarnessSkill.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    HarnessSkill.add_member_subclass(:path, Types::HarnessSkill::Path)
    HarnessSkill.add_member_subclass(:s3, Types::HarnessSkill::S3)
    HarnessSkill.add_member_subclass(:git, Types::HarnessSkill::Git)
    HarnessSkill.add_member_subclass(:aws_skills, Types::HarnessSkill::AwsSkills)
    HarnessSkill.add_member_subclass(:unknown, Types::HarnessSkill::Unknown)
    HarnessSkill.struct_class = Types::HarnessSkill

    HarnessSkillAwsSkillsSource.add_member(:paths, Shapes::ShapeRef.new(shape: HarnessAwsSkillPaths, location_name: "paths"))
    HarnessSkillAwsSkillsSource.struct_class = Types::HarnessSkillAwsSkillsSource

    HarnessSkillGitAuth.add_member(:credential_arn, Shapes::ShapeRef.new(shape: ApiKeyArn, required: true, location_name: "credentialArn"))
    HarnessSkillGitAuth.add_member(:username, Shapes::ShapeRef.new(shape: String, location_name: "username"))
    HarnessSkillGitAuth.struct_class = Types::HarnessSkillGitAuth

    HarnessSkillGitSource.add_member(:url, Shapes::ShapeRef.new(shape: HarnessSkillGitUrl, required: true, location_name: "url"))
    HarnessSkillGitSource.add_member(:path, Shapes::ShapeRef.new(shape: String, location_name: "path"))
    HarnessSkillGitSource.add_member(:auth, Shapes::ShapeRef.new(shape: HarnessSkillGitAuth, location_name: "auth"))
    HarnessSkillGitSource.struct_class = Types::HarnessSkillGitSource

    HarnessSkillS3Source.add_member(:uri, Shapes::ShapeRef.new(shape: HarnessSkillS3Uri, required: true, location_name: "uri"))
    HarnessSkillS3Source.struct_class = Types::HarnessSkillS3Source

    HarnessSkills.member = Shapes::ShapeRef.new(shape: HarnessSkill)

    HarnessSlidingWindowConfiguration.add_member(:messages_count, Shapes::ShapeRef.new(shape: Integer, location_name: "messagesCount"))
    HarnessSlidingWindowConfiguration.struct_class = Types::HarnessSlidingWindowConfiguration

    HarnessSummaries.member = Shapes::ShapeRef.new(shape: HarnessSummary)

    HarnessSummarizationConfiguration.add_member(:summary_ratio, Shapes::ShapeRef.new(shape: Float, location_name: "summaryRatio"))
    HarnessSummarizationConfiguration.add_member(:preserve_recent_messages, Shapes::ShapeRef.new(shape: Integer, location_name: "preserveRecentMessages"))
    HarnessSummarizationConfiguration.add_member(:summarization_system_prompt, Shapes::ShapeRef.new(shape: String, location_name: "summarizationSystemPrompt"))
    HarnessSummarizationConfiguration.struct_class = Types::HarnessSummarizationConfiguration

    HarnessSummary.add_member(:harness_id, Shapes::ShapeRef.new(shape: HarnessId, required: true, location_name: "harnessId"))
    HarnessSummary.add_member(:harness_name, Shapes::ShapeRef.new(shape: HarnessName, required: true, location_name: "harnessName"))
    HarnessSummary.add_member(:arn, Shapes::ShapeRef.new(shape: HarnessArn, required: true, location_name: "arn"))
    HarnessSummary.add_member(:status, Shapes::ShapeRef.new(shape: HarnessStatus, required: true, location_name: "status"))
    HarnessSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    HarnessSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "updatedAt"))
    HarnessSummary.add_member(:harness_version, Shapes::ShapeRef.new(shape: HarnessVersion, location_name: "harnessVersion"))
    HarnessSummary.struct_class = Types::HarnessSummary

    HarnessSystemContentBlock.add_member(:text, Shapes::ShapeRef.new(shape: SensitiveText, location_name: "text"))
    HarnessSystemContentBlock.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    HarnessSystemContentBlock.add_member_subclass(:text, Types::HarnessSystemContentBlock::Text)
    HarnessSystemContentBlock.add_member_subclass(:unknown, Types::HarnessSystemContentBlock::Unknown)
    HarnessSystemContentBlock.struct_class = Types::HarnessSystemContentBlock

    HarnessSystemPrompt.member = Shapes::ShapeRef.new(shape: HarnessSystemContentBlock)

    HarnessTool.add_member(:type, Shapes::ShapeRef.new(shape: HarnessToolType, required: true, location_name: "type"))
    HarnessTool.add_member(:name, Shapes::ShapeRef.new(shape: HarnessToolName, location_name: "name"))
    HarnessTool.add_member(:config, Shapes::ShapeRef.new(shape: HarnessToolConfiguration, location_name: "config"))
    HarnessTool.struct_class = Types::HarnessTool

    HarnessToolConfiguration.add_member(:remote_mcp, Shapes::ShapeRef.new(shape: HarnessRemoteMcpConfig, location_name: "remoteMcp"))
    HarnessToolConfiguration.add_member(:agent_core_browser, Shapes::ShapeRef.new(shape: HarnessAgentCoreBrowserConfig, location_name: "agentCoreBrowser"))
    HarnessToolConfiguration.add_member(:agent_core_gateway, Shapes::ShapeRef.new(shape: HarnessAgentCoreGatewayConfig, location_name: "agentCoreGateway"))
    HarnessToolConfiguration.add_member(:inline_function, Shapes::ShapeRef.new(shape: HarnessInlineFunctionConfig, location_name: "inlineFunction"))
    HarnessToolConfiguration.add_member(:agent_core_code_interpreter, Shapes::ShapeRef.new(shape: HarnessAgentCoreCodeInterpreterConfig, location_name: "agentCoreCodeInterpreter"))
    HarnessToolConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    HarnessToolConfiguration.add_member_subclass(:remote_mcp, Types::HarnessToolConfiguration::RemoteMcp)
    HarnessToolConfiguration.add_member_subclass(:agent_core_browser, Types::HarnessToolConfiguration::AgentCoreBrowser)
    HarnessToolConfiguration.add_member_subclass(:agent_core_gateway, Types::HarnessToolConfiguration::AgentCoreGateway)
    HarnessToolConfiguration.add_member_subclass(:inline_function, Types::HarnessToolConfiguration::InlineFunction)
    HarnessToolConfiguration.add_member_subclass(:agent_core_code_interpreter, Types::HarnessToolConfiguration::AgentCoreCodeInterpreter)
    HarnessToolConfiguration.add_member_subclass(:unknown, Types::HarnessToolConfiguration::Unknown)
    HarnessToolConfiguration.struct_class = Types::HarnessToolConfiguration

    HarnessTools.member = Shapes::ShapeRef.new(shape: HarnessTool)

    HarnessTruncationConfiguration.add_member(:strategy, Shapes::ShapeRef.new(shape: HarnessTruncationStrategy, required: true, location_name: "strategy"))
    HarnessTruncationConfiguration.add_member(:config, Shapes::ShapeRef.new(shape: HarnessTruncationStrategyConfiguration, location_name: "config"))
    HarnessTruncationConfiguration.struct_class = Types::HarnessTruncationConfiguration

    HarnessTruncationStrategyConfiguration.add_member(:sliding_window, Shapes::ShapeRef.new(shape: HarnessSlidingWindowConfiguration, location_name: "slidingWindow"))
    HarnessTruncationStrategyConfiguration.add_member(:summarization, Shapes::ShapeRef.new(shape: HarnessSummarizationConfiguration, location_name: "summarization"))
    HarnessTruncationStrategyConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    HarnessTruncationStrategyConfiguration.add_member_subclass(:sliding_window, Types::HarnessTruncationStrategyConfiguration::SlidingWindow)
    HarnessTruncationStrategyConfiguration.add_member_subclass(:summarization, Types::HarnessTruncationStrategyConfiguration::Summarization)
    HarnessTruncationStrategyConfiguration.add_member_subclass(:unknown, Types::HarnessTruncationStrategyConfiguration::Unknown)
    HarnessTruncationStrategyConfiguration.struct_class = Types::HarnessTruncationStrategyConfiguration

    HarnessVersionSummaries.member = Shapes::ShapeRef.new(shape: HarnessVersionSummary)

    HarnessVersionSummary.add_member(:harness_id, Shapes::ShapeRef.new(shape: HarnessId, required: true, location_name: "harnessId"))
    HarnessVersionSummary.add_member(:harness_name, Shapes::ShapeRef.new(shape: HarnessName, required: true, location_name: "harnessName"))
    HarnessVersionSummary.add_member(:arn, Shapes::ShapeRef.new(shape: HarnessArn, required: true, location_name: "arn"))
    HarnessVersionSummary.add_member(:harness_version, Shapes::ShapeRef.new(shape: HarnessVersion, required: true, location_name: "harnessVersion"))
    HarnessVersionSummary.add_member(:status, Shapes::ShapeRef.new(shape: HarnessStatus, required: true, location_name: "status"))
    HarnessVersionSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    HarnessVersionSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "updatedAt"))
    HarnessVersionSummary.add_member(:failure_reason, Shapes::ShapeRef.new(shape: String, location_name: "failureReason"))
    HarnessVersionSummary.struct_class = Types::HarnessVersionSummary

    HostingEnvironment.add_member(:arn, Shapes::ShapeRef.new(shape: BedrockAgentcoreResourceArn, required: true, location_name: "arn"))
    HostingEnvironment.struct_class = Types::HostingEnvironment

    HostingEnvironmentListType.member = Shapes::ShapeRef.new(shape: HostingEnvironment)

    HttpApiSchemaConfiguration.add_member(:source, Shapes::ShapeRef.new(shape: ApiSchemaConfiguration, required: true, location_name: "source"))
    HttpApiSchemaConfiguration.struct_class = Types::HttpApiSchemaConfiguration

    HttpConnectorParameters.key = Shapes::ShapeRef.new(shape: ConnectorParameterName)
    HttpConnectorParameters.value = Shapes::ShapeRef.new(shape: ConnectorParameterValue)

    HttpConnectorSource.add_member(:connector_id, Shapes::ShapeRef.new(shape: ConnectorId, required: true, location_name: "connectorId"))
    HttpConnectorSource.struct_class = Types::HttpConnectorSource

    HttpConnectorTargetConfiguration.add_member(:source, Shapes::ShapeRef.new(shape: HttpConnectorSource, required: true, location_name: "source"))
    HttpConnectorTargetConfiguration.add_member(:parameters, Shapes::ShapeRef.new(shape: HttpConnectorParameters, location_name: "parameters"))
    HttpConnectorTargetConfiguration.struct_class = Types::HttpConnectorTargetConfiguration

    HttpHeadersMap.key = Shapes::ShapeRef.new(shape: HttpHeaderKey)
    HttpHeadersMap.value = Shapes::ShapeRef.new(shape: HttpHeaderValue)

    HttpTargetConfiguration.add_member(:agentcore_runtime, Shapes::ShapeRef.new(shape: RuntimeTargetConfiguration, location_name: "agentcoreRuntime"))
    HttpTargetConfiguration.add_member(:passthrough, Shapes::ShapeRef.new(shape: PassthroughTargetConfiguration, location_name: "passthrough"))
    HttpTargetConfiguration.add_member(:connector, Shapes::ShapeRef.new(shape: HttpConnectorTargetConfiguration, location_name: "connector"))
    HttpTargetConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    HttpTargetConfiguration.add_member_subclass(:agentcore_runtime, Types::HttpTargetConfiguration::AgentcoreRuntime)
    HttpTargetConfiguration.add_member_subclass(:passthrough, Types::HttpTargetConfiguration::Passthrough)
    HttpTargetConfiguration.add_member_subclass(:connector, Types::HttpTargetConfiguration::Connector)
    HttpTargetConfiguration.add_member_subclass(:unknown, Types::HttpTargetConfiguration::Unknown)
    HttpTargetConfiguration.struct_class = Types::HttpTargetConfiguration

    IamCredentialProvider.add_member(:service, Shapes::ShapeRef.new(shape: IamCredentialProviderServiceString, required: true, location_name: "service"))
    IamCredentialProvider.add_member(:region, Shapes::ShapeRef.new(shape: IamCredentialProviderRegionString, location_name: "region"))
    IamCredentialProvider.struct_class = Types::IamCredentialProvider

    IamPrincipal.add_member(:arn, Shapes::ShapeRef.new(shape: IamPrincipalArn, required: true, location_name: "arn"))
    IamPrincipal.add_member(:operator, Shapes::ShapeRef.new(shape: PrincipalMatchOperator, location_name: "operator"))
    IamPrincipal.struct_class = Types::IamPrincipal

    IncludedOauth2ProviderConfigInput.add_member(:client_id, Shapes::ShapeRef.new(shape: ClientIdType, required: true, location_name: "clientId"))
    IncludedOauth2ProviderConfigInput.add_member(:client_secret, Shapes::ShapeRef.new(shape: DefaultClientSecretType, location_name: "clientSecret"))
    IncludedOauth2ProviderConfigInput.add_member(:client_secret_config, Shapes::ShapeRef.new(shape: SecretReference, location_name: "clientSecretConfig"))
    IncludedOauth2ProviderConfigInput.add_member(:client_secret_source, Shapes::ShapeRef.new(shape: SecretSourceType, location_name: "clientSecretSource"))
    IncludedOauth2ProviderConfigInput.add_member(:issuer, Shapes::ShapeRef.new(shape: IssuerUrlType, location_name: "issuer"))
    IncludedOauth2ProviderConfigInput.add_member(:authorization_endpoint, Shapes::ShapeRef.new(shape: AuthorizationEndpointType, location_name: "authorizationEndpoint"))
    IncludedOauth2ProviderConfigInput.add_member(:token_endpoint, Shapes::ShapeRef.new(shape: TokenEndpointType, location_name: "tokenEndpoint"))
    IncludedOauth2ProviderConfigInput.struct_class = Types::IncludedOauth2ProviderConfigInput

    IncludedOauth2ProviderConfigOutput.add_member(:oauth_discovery, Shapes::ShapeRef.new(shape: Oauth2Discovery, required: true, location_name: "oauthDiscovery"))
    IncludedOauth2ProviderConfigOutput.add_member(:client_id, Shapes::ShapeRef.new(shape: ClientIdType, location_name: "clientId"))
    IncludedOauth2ProviderConfigOutput.struct_class = Types::IncludedOauth2ProviderConfigOutput

    IndexedKey.add_member(:key, Shapes::ShapeRef.new(shape: MetadataKey, required: true, location_name: "key"))
    IndexedKey.add_member(:type, Shapes::ShapeRef.new(shape: MetadataValueType, required: true, location_name: "type"))
    IndexedKey.struct_class = Types::IndexedKey

    IndexedKeysList.member = Shapes::ShapeRef.new(shape: IndexedKey)

    InferenceConfiguration.add_member(:max_tokens, Shapes::ShapeRef.new(shape: InferenceConfigurationMaxTokensInteger, location_name: "maxTokens"))
    InferenceConfiguration.add_member(:temperature, Shapes::ShapeRef.new(shape: InferenceConfigurationTemperatureFloat, location_name: "temperature"))
    InferenceConfiguration.add_member(:top_p, Shapes::ShapeRef.new(shape: InferenceConfigurationTopPFloat, location_name: "topP"))
    InferenceConfiguration.add_member(:stop_sequences, Shapes::ShapeRef.new(shape: InferenceConfigurationStopSequencesList, location_name: "stopSequences"))
    InferenceConfiguration.struct_class = Types::InferenceConfiguration

    InferenceConfigurationStopSequencesList.member = Shapes::ShapeRef.new(shape: NonEmptyString)

    InferenceConnectorSource.add_member(:connector_id, Shapes::ShapeRef.new(shape: InferenceConnectorId, required: true, location_name: "connectorId"))
    InferenceConnectorSource.struct_class = Types::InferenceConnectorSource

    InferenceConnectorTargetConfiguration.add_member(:source, Shapes::ShapeRef.new(shape: InferenceConnectorSource, required: true, location_name: "source"))
    InferenceConnectorTargetConfiguration.struct_class = Types::InferenceConnectorTargetConfiguration

    InferenceOperationConfiguration.add_member(:path, Shapes::ShapeRef.new(shape: InferenceOperationPath, required: true, location_name: "path"))
    InferenceOperationConfiguration.add_member(:provider_path, Shapes::ShapeRef.new(shape: InferenceOperationPath, location_name: "providerPath"))
    InferenceOperationConfiguration.add_member(:models, Shapes::ShapeRef.new(shape: ModelEntries, location_name: "models"))
    InferenceOperationConfiguration.struct_class = Types::InferenceOperationConfiguration

    InferenceOperationConfigurations.member = Shapes::ShapeRef.new(shape: InferenceOperationConfiguration)

    InferenceProviderTargetConfiguration.add_member(:endpoint, Shapes::ShapeRef.new(shape: PassthroughEndpoint, required: true, location_name: "endpoint"))
    InferenceProviderTargetConfiguration.add_member(:model_mapping, Shapes::ShapeRef.new(shape: ModelMapping, location_name: "modelMapping"))
    InferenceProviderTargetConfiguration.add_member(:operations, Shapes::ShapeRef.new(shape: InferenceOperationConfigurations, location_name: "operations"))
    InferenceProviderTargetConfiguration.struct_class = Types::InferenceProviderTargetConfiguration

    InferenceTargetConfiguration.add_member(:connector, Shapes::ShapeRef.new(shape: InferenceConnectorTargetConfiguration, location_name: "connector"))
    InferenceTargetConfiguration.add_member(:provider, Shapes::ShapeRef.new(shape: InferenceProviderTargetConfiguration, location_name: "provider"))
    InferenceTargetConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    InferenceTargetConfiguration.add_member_subclass(:connector, Types::InferenceTargetConfiguration::Connector)
    InferenceTargetConfiguration.add_member_subclass(:provider, Types::InferenceTargetConfiguration::Provider)
    InferenceTargetConfiguration.add_member_subclass(:unknown, Types::InferenceTargetConfiguration::Unknown)
    InferenceTargetConfiguration.struct_class = Types::InferenceTargetConfiguration

    InlineExamplesSource.add_member(:examples, Shapes::ShapeRef.new(shape: InlineExamplesSourceExamplesList, required: true, location_name: "examples"))
    InlineExamplesSource.struct_class = Types::InlineExamplesSource

    InlineExamplesSourceExamplesList.member = Shapes::ShapeRef.new(shape: SensitiveJson)

    Insight.add_member(:insight_id, Shapes::ShapeRef.new(shape: InsightId, required: true, location_name: "insightId"))
    Insight.struct_class = Types::Insight

    InsightList.member = Shapes::ShapeRef.new(shape: Insight)

    InstanceLifecycleConfiguration.add_member(:idle_instance_timeout, Shapes::ShapeRef.new(shape: InstanceLifecycleConfigurationIdleInstanceTimeoutInteger, location_name: "idleInstanceTimeout"))
    InstanceLifecycleConfiguration.add_member(:max_lifetime, Shapes::ShapeRef.new(shape: InstanceLifecycleConfigurationMaxLifetimeInteger, location_name: "maxLifetime"))
    InstanceLifecycleConfiguration.struct_class = Types::InstanceLifecycleConfiguration

    InstanceRequirements.add_member(:allowed_instance_types, Shapes::ShapeRef.new(shape: InstanceRequirementsAllowedInstanceTypesList, required: true, location_name: "allowedInstanceTypes"))
    InstanceRequirements.struct_class = Types::InstanceRequirements

    InstanceRequirementsAllowedInstanceTypesList.member = Shapes::ShapeRef.new(shape: EC2InstanceType)

    InterceptorConfiguration.add_member(:lambda, Shapes::ShapeRef.new(shape: LambdaInterceptorConfiguration, location_name: "lambda"))
    InterceptorConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    InterceptorConfiguration.add_member_subclass(:lambda, Types::InterceptorConfiguration::Lambda)
    InterceptorConfiguration.add_member_subclass(:unknown, Types::InterceptorConfiguration::Unknown)
    InterceptorConfiguration.struct_class = Types::InterceptorConfiguration

    InterceptorInputConfiguration.add_member(:pass_request_headers, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "passRequestHeaders"))
    InterceptorInputConfiguration.add_member(:payload_filter, Shapes::ShapeRef.new(shape: InterceptorPayloadFilter, location_name: "payloadFilter"))
    InterceptorInputConfiguration.struct_class = Types::InterceptorInputConfiguration

    InterceptorPayloadExclusionSelector.add_member(:field, Shapes::ShapeRef.new(shape: InterceptorPayloadExclusion, location_name: "field"))
    InterceptorPayloadExclusionSelector.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    InterceptorPayloadExclusionSelector.add_member_subclass(:field, Types::InterceptorPayloadExclusionSelector::Field)
    InterceptorPayloadExclusionSelector.add_member_subclass(:unknown, Types::InterceptorPayloadExclusionSelector::Unknown)
    InterceptorPayloadExclusionSelector.struct_class = Types::InterceptorPayloadExclusionSelector

    InterceptorPayloadExclusionSelectorList.member = Shapes::ShapeRef.new(shape: InterceptorPayloadExclusionSelector)

    InterceptorPayloadFilter.add_member(:exclude, Shapes::ShapeRef.new(shape: InterceptorPayloadExclusionSelectorList, required: true, location_name: "exclude"))
    InterceptorPayloadFilter.struct_class = Types::InterceptorPayloadFilter

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    InvocationConfiguration.add_member(:topic_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "topicArn"))
    InvocationConfiguration.add_member(:payload_delivery_bucket_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "payloadDeliveryBucketName"))
    InvocationConfiguration.struct_class = Types::InvocationConfiguration

    InvocationConfigurationInput.add_member(:topic_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "topicArn"))
    InvocationConfigurationInput.add_member(:payload_delivery_bucket_name, Shapes::ShapeRef.new(shape: InvocationConfigurationInputPayloadDeliveryBucketNameString, required: true, location_name: "payloadDeliveryBucketName"))
    InvocationConfigurationInput.struct_class = Types::InvocationConfigurationInput

    KinesisResource.add_member(:data_stream_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "dataStreamArn"))
    KinesisResource.add_member(:content_configurations, Shapes::ShapeRef.new(shape: KinesisResourceContentConfigurationsList, required: true, location_name: "contentConfigurations"))
    KinesisResource.struct_class = Types::KinesisResource

    KinesisResourceContentConfigurationsList.member = Shapes::ShapeRef.new(shape: ContentConfiguration)

    KmsConfiguration.add_member(:key_type, Shapes::ShapeRef.new(shape: KeyType, required: true, location_name: "keyType"))
    KmsConfiguration.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "kmsKeyArn"))
    KmsConfiguration.struct_class = Types::KmsConfiguration

    KmsKeySourceType.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, required: true, location_name: "kmsKeyArn"))
    KmsKeySourceType.struct_class = Types::KmsKeySourceType

    LambdaEvaluatorConfig.add_member(:lambda_arn, Shapes::ShapeRef.new(shape: LambdaArn, required: true, location_name: "lambdaArn"))
    LambdaEvaluatorConfig.add_member(:lambda_timeout_in_seconds, Shapes::ShapeRef.new(shape: LambdaEvaluatorConfigLambdaTimeoutInSecondsInteger, location_name: "lambdaTimeoutInSeconds"))
    LambdaEvaluatorConfig.struct_class = Types::LambdaEvaluatorConfig

    LambdaInterceptorConfiguration.add_member(:arn, Shapes::ShapeRef.new(shape: LambdaFunctionArn, required: true, location_name: "arn"))
    LambdaInterceptorConfiguration.struct_class = Types::LambdaInterceptorConfiguration

    LambdaTransformConfiguration.add_member(:arn, Shapes::ShapeRef.new(shape: LambdaFunctionArn, location_name: "arn"))
    LambdaTransformConfiguration.struct_class = Types::LambdaTransformConfiguration

    LaunchParameters.add_member(:operating_system, Shapes::ShapeRef.new(shape: OperatingSystem, required: true, location_name: "operatingSystem"))
    LaunchParameters.add_member(:instance_requirements, Shapes::ShapeRef.new(shape: InstanceRequirements, required: true, location_name: "instanceRequirements"))
    LaunchParameters.add_member(:ephemeral_volumes, Shapes::ShapeRef.new(shape: LaunchParametersEphemeralVolumesList, location_name: "ephemeralVolumes"))
    LaunchParameters.add_member(:monitoring, Shapes::ShapeRef.new(shape: Monitoring, location_name: "monitoring"))
    LaunchParameters.add_member(:license_specifications, Shapes::ShapeRef.new(shape: LaunchParametersLicenseSpecificationsList, location_name: "licenseSpecifications"))
    LaunchParameters.add_member(:capacity_reservation_specification, Shapes::ShapeRef.new(shape: CapacityReservationSpecification, location_name: "capacityReservationSpecification"))
    LaunchParameters.add_member(:ssh_key_name, Shapes::ShapeRef.new(shape: SSHKeyName, location_name: "sshKeyName"))
    LaunchParameters.add_member(:instance_profile_arn, Shapes::ShapeRef.new(shape: InstanceProfileArn, location_name: "instanceProfileArn"))
    LaunchParameters.add_member(:propagated_tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "propagatedTags"))
    LaunchParameters.struct_class = Types::LaunchParameters

    LaunchParametersEphemeralVolumesList.member = Shapes::ShapeRef.new(shape: EphemeralBlockDeviceMapping)

    LaunchParametersLicenseSpecificationsList.member = Shapes::ShapeRef.new(shape: LicenseSpecification)

    LaunchTemplateSource.add_member(:launch_parameters, Shapes::ShapeRef.new(shape: LaunchParameters, location_name: "launchParameters"))
    LaunchTemplateSource.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    LaunchTemplateSource.add_member_subclass(:launch_parameters, Types::LaunchTemplateSource::LaunchParameters)
    LaunchTemplateSource.add_member_subclass(:unknown, Types::LaunchTemplateSource::Unknown)
    LaunchTemplateSource.struct_class = Types::LaunchTemplateSource

    LicenseSpecification.add_member(:license_configuration_arn, Shapes::ShapeRef.new(shape: LicenseConfigurationArn, required: true, location_name: "licenseConfigurationArn"))
    LicenseSpecification.struct_class = Types::LicenseSpecification

    LifecycleConfiguration.add_member(:idle_runtime_session_timeout, Shapes::ShapeRef.new(shape: LifecycleConfigurationIdleRuntimeSessionTimeoutInteger, location_name: "idleRuntimeSessionTimeout"))
    LifecycleConfiguration.add_member(:max_lifetime, Shapes::ShapeRef.new(shape: LifecycleConfigurationMaxLifetimeInteger, location_name: "maxLifetime"))
    LifecycleConfiguration.struct_class = Types::LifecycleConfiguration

    LimitEntries.member = Shapes::ShapeRef.new(shape: LimitEntry)

    LimitEntry.add_member(:dimensions, Shapes::ShapeRef.new(shape: LimitEntryDimensionsMap, required: true, location_name: "dimensions"))
    LimitEntry.add_member(:requests, Shapes::ShapeRef.new(shape: RateConfigs, location_name: "requests"))
    LimitEntry.add_member(:tokens, Shapes::ShapeRef.new(shape: RateConfigs, location_name: "tokens"))
    LimitEntry.add_member(:connections, Shapes::ShapeRef.new(shape: RateConfigs, location_name: "connections"))
    LimitEntry.struct_class = Types::LimitEntry

    LimitEntryDimensionsMap.key = Shapes::ShapeRef.new(shape: DimensionKey)
    LimitEntryDimensionsMap.value = Shapes::ShapeRef.new(shape: DimensionValue)

    LinkedinOauth2ProviderConfigInput.add_member(:client_id, Shapes::ShapeRef.new(shape: ClientIdType, required: true, location_name: "clientId"))
    LinkedinOauth2ProviderConfigInput.add_member(:client_secret, Shapes::ShapeRef.new(shape: DefaultClientSecretType, location_name: "clientSecret"))
    LinkedinOauth2ProviderConfigInput.add_member(:client_secret_config, Shapes::ShapeRef.new(shape: SecretReference, location_name: "clientSecretConfig"))
    LinkedinOauth2ProviderConfigInput.add_member(:client_secret_source, Shapes::ShapeRef.new(shape: SecretSourceType, location_name: "clientSecretSource"))
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

    ListAgentRuntimeVersionsByCapacityProviderInput.add_member(:capacity_provider_id, Shapes::ShapeRef.new(shape: CapacityProviderId, required: true, location: "uri", location_name: "capacityProviderId"))
    ListAgentRuntimeVersionsByCapacityProviderInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListAgentRuntimeVersionsByCapacityProviderInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListAgentRuntimeVersionsByCapacityProviderInput.struct_class = Types::ListAgentRuntimeVersionsByCapacityProviderInput

    ListAgentRuntimeVersionsByCapacityProviderOutput.add_member(:agent_runtimes, Shapes::ShapeRef.new(shape: AgentRuntimeVersionSummaryList, required: true, location_name: "agentRuntimes"))
    ListAgentRuntimeVersionsByCapacityProviderOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListAgentRuntimeVersionsByCapacityProviderOutput.struct_class = Types::ListAgentRuntimeVersionsByCapacityProviderOutput

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

    ListBrowserProfilesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListBrowserProfilesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListBrowserProfilesRequest.add_member(:name, Shapes::ShapeRef.new(shape: BrowserProfileName, location_name: "name"))
    ListBrowserProfilesRequest.struct_class = Types::ListBrowserProfilesRequest

    ListBrowserProfilesResponse.add_member(:profile_summaries, Shapes::ShapeRef.new(shape: BrowserProfileSummaries, required: true, location_name: "profileSummaries"))
    ListBrowserProfilesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListBrowserProfilesResponse.struct_class = Types::ListBrowserProfilesResponse

    ListBrowsersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListBrowsersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListBrowsersRequest.add_member(:type, Shapes::ShapeRef.new(shape: ResourceType, location: "querystring", location_name: "type"))
    ListBrowsersRequest.struct_class = Types::ListBrowsersRequest

    ListBrowsersResponse.add_member(:browser_summaries, Shapes::ShapeRef.new(shape: BrowserSummaries, required: true, location_name: "browserSummaries"))
    ListBrowsersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListBrowsersResponse.struct_class = Types::ListBrowsersResponse

    ListCapacityProvidersInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListCapacityProvidersInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListCapacityProvidersInput.struct_class = Types::ListCapacityProvidersInput

    ListCapacityProvidersOutput.add_member(:capacity_providers, Shapes::ShapeRef.new(shape: CapacityProviderList, required: true, location_name: "capacityProviders"))
    ListCapacityProvidersOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListCapacityProvidersOutput.struct_class = Types::ListCapacityProvidersOutput

    ListCodeInterpretersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListCodeInterpretersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListCodeInterpretersRequest.add_member(:type, Shapes::ShapeRef.new(shape: ResourceType, location: "querystring", location_name: "type"))
    ListCodeInterpretersRequest.struct_class = Types::ListCodeInterpretersRequest

    ListCodeInterpretersResponse.add_member(:code_interpreter_summaries, Shapes::ShapeRef.new(shape: CodeInterpreterSummaries, required: true, location_name: "codeInterpreterSummaries"))
    ListCodeInterpretersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListCodeInterpretersResponse.struct_class = Types::ListCodeInterpretersResponse

    ListConfigurationBundleVersionsRequest.add_member(:bundle_id, Shapes::ShapeRef.new(shape: ConfigurationBundleId, required: true, location: "uri", location_name: "bundleId"))
    ListConfigurationBundleVersionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListConfigurationBundleVersionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListConfigurationBundleVersionsRequestMaxResultsInteger, location: "querystring", location_name: "maxResults"))
    ListConfigurationBundleVersionsRequest.add_member(:filter, Shapes::ShapeRef.new(shape: VersionFilter, location_name: "filter"))
    ListConfigurationBundleVersionsRequest.struct_class = Types::ListConfigurationBundleVersionsRequest

    ListConfigurationBundleVersionsResponse.add_member(:versions, Shapes::ShapeRef.new(shape: ConfigurationBundleVersionSummaryList, required: true, location_name: "versions"))
    ListConfigurationBundleVersionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListConfigurationBundleVersionsResponse.struct_class = Types::ListConfigurationBundleVersionsResponse

    ListConfigurationBundlesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListConfigurationBundlesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListConfigurationBundlesRequestMaxResultsInteger, location: "querystring", location_name: "maxResults"))
    ListConfigurationBundlesRequest.struct_class = Types::ListConfigurationBundlesRequest

    ListConfigurationBundlesResponse.add_member(:bundles, Shapes::ShapeRef.new(shape: ConfigurationBundleSummaryList, required: true, location_name: "bundles"))
    ListConfigurationBundlesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListConfigurationBundlesResponse.struct_class = Types::ListConfigurationBundlesResponse

    ListConsentPortalsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListConsentPortalsRequestMaxResultsInteger, location_name: "maxResults"))
    ListConsentPortalsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListConsentPortalsRequest.struct_class = Types::ListConsentPortalsRequest

    ListConsentPortalsResponse.add_member(:consent_portals, Shapes::ShapeRef.new(shape: ConsentPortalSummaries, required: true, location_name: "consentPortals"))
    ListConsentPortalsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListConsentPortalsResponse.struct_class = Types::ListConsentPortalsResponse

    ListDatasetExamplesRequest.add_member(:dataset_id, Shapes::ShapeRef.new(shape: DatasetId, required: true, location: "uri", location_name: "datasetId"))
    ListDatasetExamplesRequest.add_member(:dataset_version, Shapes::ShapeRef.new(shape: DatasetVersion, location: "querystring", location_name: "datasetVersion"))
    ListDatasetExamplesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListDatasetExamplesRequestMaxResultsInteger, location: "querystring", location_name: "maxResults"))
    ListDatasetExamplesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: ListDatasetExamplesRequestNextTokenString, location: "querystring", location_name: "nextToken"))
    ListDatasetExamplesRequest.struct_class = Types::ListDatasetExamplesRequest

    ListDatasetExamplesResponse.add_member(:dataset_arn, Shapes::ShapeRef.new(shape: DatasetArn, required: true, location_name: "datasetArn"))
    ListDatasetExamplesResponse.add_member(:dataset_id, Shapes::ShapeRef.new(shape: DatasetId, required: true, location_name: "datasetId"))
    ListDatasetExamplesResponse.add_member(:dataset_version, Shapes::ShapeRef.new(shape: DatasetVersion, required: true, location_name: "datasetVersion"))
    ListDatasetExamplesResponse.add_member(:examples, Shapes::ShapeRef.new(shape: DatasetExampleList, required: true, location_name: "examples"))
    ListDatasetExamplesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListDatasetExamplesResponse.struct_class = Types::ListDatasetExamplesResponse

    ListDatasetVersionsRequest.add_member(:dataset_id, Shapes::ShapeRef.new(shape: DatasetId, required: true, location: "uri", location_name: "datasetId"))
    ListDatasetVersionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListDatasetVersionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListDatasetVersionsRequestMaxResultsInteger, location: "querystring", location_name: "maxResults"))
    ListDatasetVersionsRequest.struct_class = Types::ListDatasetVersionsRequest

    ListDatasetVersionsResponse.add_member(:versions, Shapes::ShapeRef.new(shape: DatasetVersionSummaryList, required: true, location_name: "versions"))
    ListDatasetVersionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListDatasetVersionsResponse.struct_class = Types::ListDatasetVersionsResponse

    ListDatasetsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: ListDatasetsRequestNextTokenString, location: "querystring", location_name: "nextToken"))
    ListDatasetsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListDatasetsRequestMaxResultsInteger, location: "querystring", location_name: "maxResults"))
    ListDatasetsRequest.struct_class = Types::ListDatasetsRequest

    ListDatasetsResponse.add_member(:datasets, Shapes::ShapeRef.new(shape: DatasetSummaryList, required: true, location_name: "datasets"))
    ListDatasetsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListDatasetsResponse.struct_class = Types::ListDatasetsResponse

    ListEvaluatorsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListEvaluatorsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListEvaluatorsRequestMaxResultsInteger, location: "querystring", location_name: "maxResults"))
    ListEvaluatorsRequest.struct_class = Types::ListEvaluatorsRequest

    ListEvaluatorsResponse.add_member(:evaluators, Shapes::ShapeRef.new(shape: EvaluatorSummaryList, required: true, location_name: "evaluators"))
    ListEvaluatorsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListEvaluatorsResponse.struct_class = Types::ListEvaluatorsResponse

    ListGatewayRateLimitsRequest.add_member(:gateway_identifier, Shapes::ShapeRef.new(shape: GatewayIdentifier, required: true, location: "uri", location_name: "gatewayIdentifier"))
    ListGatewayRateLimitsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: GatewayRateLimitMaxResults, location: "querystring", location_name: "maxResults"))
    ListGatewayRateLimitsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: GatewayRateLimitNextToken, location: "querystring", location_name: "nextToken"))
    ListGatewayRateLimitsRequest.struct_class = Types::ListGatewayRateLimitsRequest

    ListGatewayRateLimitsResponse.add_member(:rate_limits, Shapes::ShapeRef.new(shape: GatewayRateLimits, required: true, location_name: "rateLimits"))
    ListGatewayRateLimitsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: GatewayRateLimitNextToken, location_name: "nextToken"))
    ListGatewayRateLimitsResponse.struct_class = Types::ListGatewayRateLimitsResponse

    ListGatewayRulesRequest.add_member(:gateway_identifier, Shapes::ShapeRef.new(shape: GatewayIdentifier, required: true, location: "uri", location_name: "gatewayIdentifier"))
    ListGatewayRulesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: GatewayRuleMaxResults, location: "querystring", location_name: "maxResults"))
    ListGatewayRulesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: GatewayRuleNextToken, location: "querystring", location_name: "nextToken"))
    ListGatewayRulesRequest.struct_class = Types::ListGatewayRulesRequest

    ListGatewayRulesResponse.add_member(:gateway_rules, Shapes::ShapeRef.new(shape: GatewayRules, required: true, location_name: "gatewayRules"))
    ListGatewayRulesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: GatewayRuleNextToken, location_name: "nextToken"))
    ListGatewayRulesResponse.struct_class = Types::ListGatewayRulesResponse

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

    ListHarnessEndpointsRequest.add_member(:harness_id, Shapes::ShapeRef.new(shape: HarnessId, required: true, location: "uri", location_name: "harnessId"))
    ListHarnessEndpointsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListHarnessEndpointsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListHarnessEndpointsRequest.struct_class = Types::ListHarnessEndpointsRequest

    ListHarnessEndpointsResponse.add_member(:endpoints, Shapes::ShapeRef.new(shape: HarnessEndpoints, required: true, location_name: "endpoints"))
    ListHarnessEndpointsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListHarnessEndpointsResponse.struct_class = Types::ListHarnessEndpointsResponse

    ListHarnessVersionsRequest.add_member(:harness_id, Shapes::ShapeRef.new(shape: HarnessId, required: true, location: "uri", location_name: "harnessId"))
    ListHarnessVersionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListHarnessVersionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListHarnessVersionsRequest.struct_class = Types::ListHarnessVersionsRequest

    ListHarnessVersionsResponse.add_member(:harness_versions, Shapes::ShapeRef.new(shape: HarnessVersionSummaries, required: true, location_name: "harnessVersions"))
    ListHarnessVersionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListHarnessVersionsResponse.struct_class = Types::ListHarnessVersionsResponse

    ListHarnessesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListHarnessesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListHarnessesRequest.struct_class = Types::ListHarnessesRequest

    ListHarnessesResponse.add_member(:harnesses, Shapes::ShapeRef.new(shape: HarnessSummaries, required: true, location_name: "harnesses"))
    ListHarnessesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListHarnessesResponse.struct_class = Types::ListHarnessesResponse

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

    ListPaymentConnectorsRequest.add_member(:payment_manager_id, Shapes::ShapeRef.new(shape: PaymentManagerId, required: true, location: "uri", location_name: "paymentManagerId"))
    ListPaymentConnectorsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListPaymentConnectorsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListPaymentConnectorsRequest.struct_class = Types::ListPaymentConnectorsRequest

    ListPaymentConnectorsResponse.add_member(:payment_connectors, Shapes::ShapeRef.new(shape: PaymentConnectorSummaries, required: true, location_name: "paymentConnectors"))
    ListPaymentConnectorsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListPaymentConnectorsResponse.struct_class = Types::ListPaymentConnectorsResponse

    ListPaymentCredentialProvidersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListPaymentCredentialProvidersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListPaymentCredentialProvidersRequestMaxResultsInteger, location_name: "maxResults"))
    ListPaymentCredentialProvidersRequest.struct_class = Types::ListPaymentCredentialProvidersRequest

    ListPaymentCredentialProvidersResponse.add_member(:credential_providers, Shapes::ShapeRef.new(shape: PaymentCredentialProviders, required: true, location_name: "credentialProviders"))
    ListPaymentCredentialProvidersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListPaymentCredentialProvidersResponse.struct_class = Types::ListPaymentCredentialProvidersResponse

    ListPaymentManagersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListPaymentManagersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListPaymentManagersRequest.struct_class = Types::ListPaymentManagersRequest

    ListPaymentManagersResponse.add_member(:payment_managers, Shapes::ShapeRef.new(shape: PaymentManagerSummaries, required: true, location_name: "paymentManagers"))
    ListPaymentManagersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListPaymentManagersResponse.struct_class = Types::ListPaymentManagersResponse

    ListPoliciesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListPoliciesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListPoliciesRequest.add_member(:policy_engine_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "policyEngineId"))
    ListPoliciesRequest.add_member(:target_resource_scope, Shapes::ShapeRef.new(shape: BedrockAgentcoreResourceArn, location: "querystring", location_name: "targetResourceScope"))
    ListPoliciesRequest.struct_class = Types::ListPoliciesRequest

    ListPoliciesResponse.add_member(:policies, Shapes::ShapeRef.new(shape: Policies, required: true, location_name: "policies"))
    ListPoliciesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListPoliciesResponse.struct_class = Types::ListPoliciesResponse

    ListPolicyEngineSummariesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListPolicyEngineSummariesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListPolicyEngineSummariesRequest.struct_class = Types::ListPolicyEngineSummariesRequest

    ListPolicyEngineSummariesResponse.add_member(:policy_engines, Shapes::ShapeRef.new(shape: PolicyEngineSummaryList, required: true, location_name: "policyEngines"))
    ListPolicyEngineSummariesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListPolicyEngineSummariesResponse.struct_class = Types::ListPolicyEngineSummariesResponse

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

    ListPolicyGenerationSummariesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListPolicyGenerationSummariesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListPolicyGenerationSummariesRequest.add_member(:policy_engine_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "policyEngineId"))
    ListPolicyGenerationSummariesRequest.struct_class = Types::ListPolicyGenerationSummariesRequest

    ListPolicyGenerationSummariesResponse.add_member(:policy_generations, Shapes::ShapeRef.new(shape: PolicyGenerationSummaryList, required: true, location_name: "policyGenerations"))
    ListPolicyGenerationSummariesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListPolicyGenerationSummariesResponse.struct_class = Types::ListPolicyGenerationSummariesResponse

    ListPolicyGenerationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListPolicyGenerationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListPolicyGenerationsRequest.add_member(:policy_engine_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "policyEngineId"))
    ListPolicyGenerationsRequest.struct_class = Types::ListPolicyGenerationsRequest

    ListPolicyGenerationsResponse.add_member(:policy_generations, Shapes::ShapeRef.new(shape: PolicyGenerations, required: true, location_name: "policyGenerations"))
    ListPolicyGenerationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListPolicyGenerationsResponse.struct_class = Types::ListPolicyGenerationsResponse

    ListPolicySummariesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListPolicySummariesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListPolicySummariesRequest.add_member(:policy_engine_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "policyEngineId"))
    ListPolicySummariesRequest.add_member(:target_resource_scope, Shapes::ShapeRef.new(shape: BedrockAgentcoreResourceArn, location: "querystring", location_name: "targetResourceScope"))
    ListPolicySummariesRequest.struct_class = Types::ListPolicySummariesRequest

    ListPolicySummariesResponse.add_member(:policies, Shapes::ShapeRef.new(shape: PolicySummaryList, required: true, location_name: "policies"))
    ListPolicySummariesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListPolicySummariesResponse.struct_class = Types::ListPolicySummariesResponse

    ListRegistriesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListRegistriesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListRegistriesRequest.add_member(:status, Shapes::ShapeRef.new(shape: RegistryStatus, location: "querystring", location_name: "status"))
    ListRegistriesRequest.add_member(:authorizer_type, Shapes::ShapeRef.new(shape: RegistryAuthorizerType, location: "querystring", location_name: "authorizerType"))
    ListRegistriesRequest.struct_class = Types::ListRegistriesRequest

    ListRegistriesResponse.add_member(:registries, Shapes::ShapeRef.new(shape: RegistrySummaryList, required: true, location_name: "registries"))
    ListRegistriesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListRegistriesResponse.struct_class = Types::ListRegistriesResponse

    ListRegistryRecordsRequest.add_member(:registry_id, Shapes::ShapeRef.new(shape: RegistryIdentifier, required: true, location: "uri", location_name: "registryId"))
    ListRegistryRecordsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListRegistryRecordsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListRegistryRecordsRequest.add_member(:name, Shapes::ShapeRef.new(shape: RegistryRecordName, location: "querystring", location_name: "name"))
    ListRegistryRecordsRequest.add_member(:status, Shapes::ShapeRef.new(shape: RegistryRecordStatus, location: "querystring", location_name: "status"))
    ListRegistryRecordsRequest.add_member(:descriptor_type, Shapes::ShapeRef.new(shape: DescriptorType, location: "querystring", location_name: "descriptorType"))
    ListRegistryRecordsRequest.struct_class = Types::ListRegistryRecordsRequest

    ListRegistryRecordsResponse.add_member(:registry_records, Shapes::ShapeRef.new(shape: RegistryRecordSummaryList, required: true, location_name: "registryRecords"))
    ListRegistryRecordsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListRegistryRecordsResponse.struct_class = Types::ListRegistryRecordsResponse

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

    LlmExtractionConfig.add_member(:llm_extraction_instruction, Shapes::ShapeRef.new(shape: LlmExtractionInstruction, location_name: "llmExtractionInstruction"))
    LlmExtractionConfig.add_member(:definition, Shapes::ShapeRef.new(shape: Definition, required: true, location_name: "definition"))
    LlmExtractionConfig.add_member(:validation, Shapes::ShapeRef.new(shape: Validation, location_name: "validation"))
    LlmExtractionConfig.struct_class = Types::LlmExtractionConfig

    MCPGatewayConfiguration.add_member(:supported_versions, Shapes::ShapeRef.new(shape: McpSupportedVersions, location_name: "supportedVersions"))
    MCPGatewayConfiguration.add_member(:instructions, Shapes::ShapeRef.new(shape: McpInstructions, location_name: "instructions"))
    MCPGatewayConfiguration.add_member(:search_type, Shapes::ShapeRef.new(shape: SearchType, location_name: "searchType"))
    MCPGatewayConfiguration.add_member(:session_configuration, Shapes::ShapeRef.new(shape: SessionConfiguration, location_name: "sessionConfiguration"))
    MCPGatewayConfiguration.add_member(:streaming_configuration, Shapes::ShapeRef.new(shape: StreamingConfiguration, location_name: "streamingConfiguration"))
    MCPGatewayConfiguration.struct_class = Types::MCPGatewayConfiguration

    ManagedResourceDetails.add_member(:domain, Shapes::ShapeRef.new(shape: DomainName, location_name: "domain"))
    ManagedResourceDetails.add_member(:resource_gateway_arn, Shapes::ShapeRef.new(shape: ResourceGatewayArn, location_name: "resourceGatewayArn"))
    ManagedResourceDetails.add_member(:resource_association_arn, Shapes::ShapeRef.new(shape: ResourceAssociationArn, location_name: "resourceAssociationArn"))
    ManagedResourceDetails.struct_class = Types::ManagedResourceDetails

    ManagedVpcResource.add_member(:vpc_identifier, Shapes::ShapeRef.new(shape: VpcIdentifier, required: true, location_name: "vpcIdentifier"))
    ManagedVpcResource.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: SubnetIds, required: true, location_name: "subnetIds"))
    ManagedVpcResource.add_member(:endpoint_ip_address_type, Shapes::ShapeRef.new(shape: EndpointIpAddressType, required: true, location_name: "endpointIpAddressType"))
    ManagedVpcResource.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: SecurityGroupIds, location_name: "securityGroupIds"))
    ManagedVpcResource.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    ManagedVpcResource.add_member(:routing_domain, Shapes::ShapeRef.new(shape: RoutingDomain, location_name: "routingDomain"))
    ManagedVpcResource.struct_class = Types::ManagedVpcResource

    MatchPaths.add_member(:any_of, Shapes::ShapeRef.new(shape: MatchPathsAnyOfList, required: true, location_name: "anyOf"))
    MatchPaths.struct_class = Types::MatchPaths

    MatchPathsAnyOfList.member = Shapes::ShapeRef.new(shape: MatchPathPattern)

    MatchPrincipalEntry.add_member(:iam_principal, Shapes::ShapeRef.new(shape: IamPrincipal, location_name: "iamPrincipal"))
    MatchPrincipalEntry.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    MatchPrincipalEntry.add_member_subclass(:iam_principal, Types::MatchPrincipalEntry::IamPrincipal)
    MatchPrincipalEntry.add_member_subclass(:unknown, Types::MatchPrincipalEntry::Unknown)
    MatchPrincipalEntry.struct_class = Types::MatchPrincipalEntry

    MatchPrincipals.add_member(:any_of, Shapes::ShapeRef.new(shape: MatchPrincipalsAnyOfList, required: true, location_name: "anyOf"))
    MatchPrincipals.struct_class = Types::MatchPrincipals

    MatchPrincipalsAnyOfList.member = Shapes::ShapeRef.new(shape: MatchPrincipalEntry)

    MatchValueStringList.member = Shapes::ShapeRef.new(shape: MatchValueString)

    McpDescriptor.add_member(:server, Shapes::ShapeRef.new(shape: ServerDefinition, location_name: "server"))
    McpDescriptor.add_member(:tools, Shapes::ShapeRef.new(shape: ToolsDefinition, location_name: "tools"))
    McpDescriptor.struct_class = Types::McpDescriptor

    McpLambdaTargetConfiguration.add_member(:lambda_arn, Shapes::ShapeRef.new(shape: LambdaFunctionArn, required: true, location_name: "lambdaArn"))
    McpLambdaTargetConfiguration.add_member(:tool_schema, Shapes::ShapeRef.new(shape: ToolSchema, required: true, location_name: "toolSchema"))
    McpLambdaTargetConfiguration.struct_class = Types::McpLambdaTargetConfiguration

    McpServerTargetConfiguration.add_member(:endpoint, Shapes::ShapeRef.new(shape: McpServerTargetConfigurationEndpointString, required: true, location_name: "endpoint"))
    McpServerTargetConfiguration.add_member(:mcp_tool_schema, Shapes::ShapeRef.new(shape: McpToolSchemaConfiguration, location_name: "mcpToolSchema"))
    McpServerTargetConfiguration.add_member(:listing_mode, Shapes::ShapeRef.new(shape: ListingMode, location_name: "listingMode"))
    McpServerTargetConfiguration.add_member(:resource_priority, Shapes::ShapeRef.new(shape: TargetResourcePriority, location_name: "resourcePriority"))
    McpServerTargetConfiguration.struct_class = Types::McpServerTargetConfiguration

    McpSupportedVersions.member = Shapes::ShapeRef.new(shape: McpVersion)

    McpTargetConfiguration.add_member(:open_api_schema, Shapes::ShapeRef.new(shape: ApiSchemaConfiguration, location_name: "openApiSchema"))
    McpTargetConfiguration.add_member(:smithy_model, Shapes::ShapeRef.new(shape: ApiSchemaConfiguration, location_name: "smithyModel"))
    McpTargetConfiguration.add_member(:lambda, Shapes::ShapeRef.new(shape: McpLambdaTargetConfiguration, location_name: "lambda"))
    McpTargetConfiguration.add_member(:mcp_server, Shapes::ShapeRef.new(shape: McpServerTargetConfiguration, location_name: "mcpServer"))
    McpTargetConfiguration.add_member(:api_gateway, Shapes::ShapeRef.new(shape: ApiGatewayTargetConfiguration, location_name: "apiGateway"))
    McpTargetConfiguration.add_member(:connector, Shapes::ShapeRef.new(shape: ConnectorTargetConfiguration, location_name: "connector"))
    McpTargetConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    McpTargetConfiguration.add_member_subclass(:open_api_schema, Types::McpTargetConfiguration::OpenApiSchema)
    McpTargetConfiguration.add_member_subclass(:smithy_model, Types::McpTargetConfiguration::SmithyModel)
    McpTargetConfiguration.add_member_subclass(:lambda, Types::McpTargetConfiguration::Lambda)
    McpTargetConfiguration.add_member_subclass(:mcp_server, Types::McpTargetConfiguration::McpServer)
    McpTargetConfiguration.add_member_subclass(:api_gateway, Types::McpTargetConfiguration::ApiGateway)
    McpTargetConfiguration.add_member_subclass(:connector, Types::McpTargetConfiguration::Connector)
    McpTargetConfiguration.add_member_subclass(:unknown, Types::McpTargetConfiguration::Unknown)
    McpTargetConfiguration.struct_class = Types::McpTargetConfiguration

    McpToolSchemaConfiguration.add_member(:s3, Shapes::ShapeRef.new(shape: S3Configuration, location_name: "s3"))
    McpToolSchemaConfiguration.add_member(:inline_payload, Shapes::ShapeRef.new(shape: InlinePayload, location_name: "inlinePayload"))
    McpToolSchemaConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    McpToolSchemaConfiguration.add_member_subclass(:s3, Types::McpToolSchemaConfiguration::S3)
    McpToolSchemaConfiguration.add_member_subclass(:inline_payload, Types::McpToolSchemaConfiguration::InlinePayload)
    McpToolSchemaConfiguration.add_member_subclass(:unknown, Types::McpToolSchemaConfiguration::Unknown)
    McpToolSchemaConfiguration.struct_class = Types::McpToolSchemaConfiguration

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
    Memory.add_member(:indexed_keys, Shapes::ShapeRef.new(shape: IndexedKeysList, location_name: "indexedKeys"))
    Memory.add_member(:namespace_keys, Shapes::ShapeRef.new(shape: NamespaceKeysList, location_name: "namespaceKeys"))
    Memory.add_member(:stream_delivery_resources, Shapes::ShapeRef.new(shape: StreamDeliveryResources, location_name: "streamDeliveryResources"))
    Memory.add_member(:managed_by_resource_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "managedByResourceArn"))
    Memory.struct_class = Types::Memory

    MemoryRecordSchema.add_member(:metadata_schema, Shapes::ShapeRef.new(shape: MetadataSchemaList, location_name: "metadataSchema"))
    MemoryRecordSchema.struct_class = Types::MemoryRecordSchema

    MemoryStrategy.add_member(:strategy_id, Shapes::ShapeRef.new(shape: MemoryStrategyId, required: true, location_name: "strategyId"))
    MemoryStrategy.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    MemoryStrategy.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    MemoryStrategy.add_member(:configuration, Shapes::ShapeRef.new(shape: StrategyConfiguration, location_name: "configuration"))
    MemoryStrategy.add_member(:type, Shapes::ShapeRef.new(shape: MemoryStrategyType, required: true, location_name: "type"))
    MemoryStrategy.add_member(:namespaces, Shapes::ShapeRef.new(shape: NamespacesList, required: true, deprecated: true, location_name: "namespaces", metadata: {"deprecatedMessage" => "Use namespaceTemplates instead", "deprecatedSince" => "2026-03-02"}))
    MemoryStrategy.add_member(:namespace_templates, Shapes::ShapeRef.new(shape: NamespacesList, required: true, location_name: "namespaceTemplates"))
    MemoryStrategy.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    MemoryStrategy.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt"))
    MemoryStrategy.add_member(:status, Shapes::ShapeRef.new(shape: MemoryStrategyStatus, location_name: "status"))
    MemoryStrategy.add_member(:memory_record_schema, Shapes::ShapeRef.new(shape: MemoryRecordSchema, location_name: "memoryRecordSchema"))
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
    MemorySummary.add_member(:managed_by_resource_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "managedByResourceArn"))
    MemorySummary.struct_class = Types::MemorySummary

    MemorySummaryList.member = Shapes::ShapeRef.new(shape: MemorySummary)

    MessageBasedTrigger.add_member(:message_count, Shapes::ShapeRef.new(shape: Integer, location_name: "messageCount"))
    MessageBasedTrigger.struct_class = Types::MessageBasedTrigger

    MessageBasedTriggerInput.add_member(:message_count, Shapes::ShapeRef.new(shape: MessageBasedTriggerInputMessageCountInteger, location_name: "messageCount"))
    MessageBasedTriggerInput.struct_class = Types::MessageBasedTriggerInput

    MetadataConfiguration.add_member(:allowed_request_headers, Shapes::ShapeRef.new(shape: AllowedRequestHeaders, location_name: "allowedRequestHeaders"))
    MetadataConfiguration.add_member(:allowed_query_parameters, Shapes::ShapeRef.new(shape: AllowedQueryParameters, location_name: "allowedQueryParameters"))
    MetadataConfiguration.add_member(:allowed_response_headers, Shapes::ShapeRef.new(shape: AllowedResponseHeaders, location_name: "allowedResponseHeaders"))
    MetadataConfiguration.struct_class = Types::MetadataConfiguration

    MetadataSchemaEntry.add_member(:key, Shapes::ShapeRef.new(shape: MetadataKey, required: true, location_name: "key"))
    MetadataSchemaEntry.add_member(:type, Shapes::ShapeRef.new(shape: MetadataValueType, location_name: "type"))
    MetadataSchemaEntry.add_member(:extraction_type, Shapes::ShapeRef.new(shape: ExtractionType, location_name: "extractionType"))
    MetadataSchemaEntry.add_member(:extraction_config, Shapes::ShapeRef.new(shape: ExtractionConfig, location_name: "extractionConfig"))
    MetadataSchemaEntry.struct_class = Types::MetadataSchemaEntry

    MetadataSchemaList.member = Shapes::ShapeRef.new(shape: MetadataSchemaEntry)

    MicrosoftOauth2ProviderConfigInput.add_member(:client_id, Shapes::ShapeRef.new(shape: ClientIdType, required: true, location_name: "clientId"))
    MicrosoftOauth2ProviderConfigInput.add_member(:client_secret, Shapes::ShapeRef.new(shape: DefaultClientSecretType, location_name: "clientSecret"))
    MicrosoftOauth2ProviderConfigInput.add_member(:client_secret_config, Shapes::ShapeRef.new(shape: SecretReference, location_name: "clientSecretConfig"))
    MicrosoftOauth2ProviderConfigInput.add_member(:client_secret_source, Shapes::ShapeRef.new(shape: SecretSourceType, location_name: "clientSecretSource"))
    MicrosoftOauth2ProviderConfigInput.add_member(:tenant_id, Shapes::ShapeRef.new(shape: TenantIdType, location_name: "tenantId"))
    MicrosoftOauth2ProviderConfigInput.struct_class = Types::MicrosoftOauth2ProviderConfigInput

    MicrosoftOauth2ProviderConfigOutput.add_member(:oauth_discovery, Shapes::ShapeRef.new(shape: Oauth2Discovery, required: true, location_name: "oauthDiscovery"))
    MicrosoftOauth2ProviderConfigOutput.add_member(:client_id, Shapes::ShapeRef.new(shape: ClientIdType, location_name: "clientId"))
    MicrosoftOauth2ProviderConfigOutput.struct_class = Types::MicrosoftOauth2ProviderConfigOutput

    ModelEntries.member = Shapes::ShapeRef.new(shape: ModelEntry)

    ModelEntry.add_member(:model, Shapes::ShapeRef.new(shape: ModelPattern, required: true, location_name: "model"))
    ModelEntry.struct_class = Types::ModelEntry

    ModelMapping.add_member(:provider_prefix, Shapes::ShapeRef.new(shape: ProviderPrefix, location_name: "providerPrefix"))
    ModelMapping.struct_class = Types::ModelMapping

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
    ModifyMemoryStrategyInput.add_member(:namespaces, Shapes::ShapeRef.new(shape: NamespacesList, deprecated: true, location_name: "namespaces", metadata: {"deprecatedMessage" => "Use namespaceTemplates instead", "deprecatedSince" => "2026-03-02"}))
    ModifyMemoryStrategyInput.add_member(:namespace_templates, Shapes::ShapeRef.new(shape: NamespacesList, location_name: "namespaceTemplates"))
    ModifyMemoryStrategyInput.add_member(:configuration, Shapes::ShapeRef.new(shape: ModifyStrategyConfiguration, location_name: "configuration"))
    ModifyMemoryStrategyInput.add_member(:memory_record_schema, Shapes::ShapeRef.new(shape: MemoryRecordSchema, location_name: "memoryRecordSchema"))
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

    NamespaceAllowedValuesList.member = Shapes::ShapeRef.new(shape: NamespaceAllowedValue)

    NamespaceKeyEntry.add_member(:key, Shapes::ShapeRef.new(shape: NamespaceVariableKey, required: true, location_name: "key"))
    NamespaceKeyEntry.add_member(:validation, Shapes::ShapeRef.new(shape: NamespaceKeyValidation, location_name: "validation"))
    NamespaceKeyEntry.struct_class = Types::NamespaceKeyEntry

    NamespaceKeyValidation.add_member(:allowed_values, Shapes::ShapeRef.new(shape: NamespaceAllowedValuesList, location_name: "allowedValues"))
    NamespaceKeyValidation.add_member(:regex_pattern, Shapes::ShapeRef.new(shape: NamespaceRegexPattern, location_name: "regexPattern"))
    NamespaceKeyValidation.struct_class = Types::NamespaceKeyValidation

    NamespaceKeysList.member = Shapes::ShapeRef.new(shape: NamespaceKeyEntry)

    NamespacesList.member = Shapes::ShapeRef.new(shape: Namespace)

    NetworkConfiguration.add_member(:network_mode, Shapes::ShapeRef.new(shape: NetworkMode, required: true, location_name: "networkMode"))
    NetworkConfiguration.add_member(:network_mode_config, Shapes::ShapeRef.new(shape: VpcConfig, location_name: "networkModeConfig"))
    NetworkConfiguration.struct_class = Types::NetworkConfiguration

    NumberValidation.add_member(:min_value, Shapes::ShapeRef.new(shape: Double, location_name: "minValue"))
    NumberValidation.add_member(:max_value, Shapes::ShapeRef.new(shape: Double, location_name: "maxValue"))
    NumberValidation.struct_class = Types::NumberValidation

    NumericalScaleDefinition.add_member(:definition, Shapes::ShapeRef.new(shape: String, required: true, location_name: "definition"))
    NumericalScaleDefinition.add_member(:value, Shapes::ShapeRef.new(shape: NumericalScaleDefinitionValueDouble, required: true, location_name: "value"))
    NumericalScaleDefinition.add_member(:label, Shapes::ShapeRef.new(shape: NumericalScaleDefinitionLabelString, required: true, location_name: "label"))
    NumericalScaleDefinition.struct_class = Types::NumericalScaleDefinition

    NumericalScaleDefinitions.member = Shapes::ShapeRef.new(shape: NumericalScaleDefinition)

    OAuth2AuthorizationData.add_member(:authorization_url, Shapes::ShapeRef.new(shape: OAuth2AuthorizationDataAuthorizationUrlString, required: true, location_name: "authorizationUrl"))
    OAuth2AuthorizationData.add_member(:user_id, Shapes::ShapeRef.new(shape: OAuth2AuthorizationDataUserIdString, location_name: "userId"))
    OAuth2AuthorizationData.struct_class = Types::OAuth2AuthorizationData

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

    OnBehalfOfTokenExchangeConfigType.add_member(:grant_type, Shapes::ShapeRef.new(shape: OnBehalfOfTokenExchangeGrantTypeType, required: true, location_name: "grantType"))
    OnBehalfOfTokenExchangeConfigType.add_member(:token_exchange_grant_type_config, Shapes::ShapeRef.new(shape: TokenExchangeGrantTypeConfigType, location_name: "tokenExchangeGrantTypeConfig"))
    OnBehalfOfTokenExchangeConfigType.struct_class = Types::OnBehalfOfTokenExchangeConfigType

    OnlineEvaluationConfigSummary.add_member(:online_evaluation_config_arn, Shapes::ShapeRef.new(shape: OnlineEvaluationConfigArn, required: true, location_name: "onlineEvaluationConfigArn"))
    OnlineEvaluationConfigSummary.add_member(:online_evaluation_config_id, Shapes::ShapeRef.new(shape: OnlineEvaluationConfigId, required: true, location_name: "onlineEvaluationConfigId"))
    OnlineEvaluationConfigSummary.add_member(:online_evaluation_config_name, Shapes::ShapeRef.new(shape: EvaluationConfigName, required: true, location_name: "onlineEvaluationConfigName"))
    OnlineEvaluationConfigSummary.add_member(:description, Shapes::ShapeRef.new(shape: EvaluationConfigDescription, location_name: "description"))
    OnlineEvaluationConfigSummary.add_member(:status, Shapes::ShapeRef.new(shape: OnlineEvaluationConfigStatus, required: true, location_name: "status"))
    OnlineEvaluationConfigSummary.add_member(:execution_status, Shapes::ShapeRef.new(shape: OnlineEvaluationExecutionStatus, required: true, location_name: "executionStatus"))
    OnlineEvaluationConfigSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    OnlineEvaluationConfigSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    OnlineEvaluationConfigSummary.add_member(:failure_reason, Shapes::ShapeRef.new(shape: String, location_name: "failureReason"))
    OnlineEvaluationConfigSummary.add_member(:insights, Shapes::ShapeRef.new(shape: InsightList, location_name: "insights"))
    OnlineEvaluationConfigSummary.add_member(:clustering_config, Shapes::ShapeRef.new(shape: ClusteringConfig, location_name: "clusteringConfig"))
    OnlineEvaluationConfigSummary.struct_class = Types::OnlineEvaluationConfigSummary

    OnlineEvaluationConfigSummaryList.member = Shapes::ShapeRef.new(shape: OnlineEvaluationConfigSummary)

    OpenResponsesEvaluatorModelConfig.add_member(:model_id, Shapes::ShapeRef.new(shape: ModelId, required: true, location_name: "modelId"))
    OpenResponsesEvaluatorModelConfig.add_member(:max_output_tokens, Shapes::ShapeRef.new(shape: OpenResponsesEvaluatorModelConfigMaxOutputTokensInteger, location_name: "maxOutputTokens"))
    OpenResponsesEvaluatorModelConfig.add_member(:temperature, Shapes::ShapeRef.new(shape: OpenResponsesEvaluatorModelConfigTemperatureFloat, location_name: "temperature"))
    OpenResponsesEvaluatorModelConfig.add_member(:top_p, Shapes::ShapeRef.new(shape: OpenResponsesEvaluatorModelConfigTopPFloat, location_name: "topP"))
    OpenResponsesEvaluatorModelConfig.add_member(:reasoning, Shapes::ShapeRef.new(shape: ReasoningConfiguration, location_name: "reasoning"))
    OpenResponsesEvaluatorModelConfig.struct_class = Types::OpenResponsesEvaluatorModelConfig

    OutputConfig.add_member(:cloud_watch_config, Shapes::ShapeRef.new(shape: CloudWatchOutputConfig, required: true, location_name: "cloudWatchConfig"))
    OutputConfig.struct_class = Types::OutputConfig

    PassthroughTargetConfiguration.add_member(:endpoint, Shapes::ShapeRef.new(shape: PassthroughEndpoint, required: true, location_name: "endpoint"))
    PassthroughTargetConfiguration.add_member(:protocol_type, Shapes::ShapeRef.new(shape: PassthroughProtocolType, required: true, location_name: "protocolType"))
    PassthroughTargetConfiguration.add_member(:schema, Shapes::ShapeRef.new(shape: HttpApiSchemaConfiguration, location_name: "schema"))
    PassthroughTargetConfiguration.add_member(:stickiness_configuration, Shapes::ShapeRef.new(shape: StickinessConfiguration, location_name: "stickinessConfiguration"))
    PassthroughTargetConfiguration.add_member(:static_query_parameters, Shapes::ShapeRef.new(shape: StaticQueryParameters, location_name: "staticQueryParameters"))
    PassthroughTargetConfiguration.add_member(:static_query_parameter_conflict_resolution, Shapes::ShapeRef.new(shape: StaticQueryParameterConflictResolution, location_name: "staticQueryParameterConflictResolution"))
    PassthroughTargetConfiguration.struct_class = Types::PassthroughTargetConfiguration

    PaymentConnectorSummaries.member = Shapes::ShapeRef.new(shape: PaymentConnectorSummary)

    PaymentConnectorSummary.add_member(:payment_connector_id, Shapes::ShapeRef.new(shape: PaymentConnectorId, required: true, location_name: "paymentConnectorId"))
    PaymentConnectorSummary.add_member(:name, Shapes::ShapeRef.new(shape: PaymentConnectorName, required: true, location_name: "name"))
    PaymentConnectorSummary.add_member(:type, Shapes::ShapeRef.new(shape: PaymentConnectorType, required: true, location_name: "type"))
    PaymentConnectorSummary.add_member(:status, Shapes::ShapeRef.new(shape: PaymentConnectorStatus, required: true, location_name: "status"))
    PaymentConnectorSummary.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "lastUpdatedAt"))
    PaymentConnectorSummary.struct_class = Types::PaymentConnectorSummary

    PaymentCredentialProviderConfiguration.add_member(:credential_provider_arn, Shapes::ShapeRef.new(shape: PaymentCredentialProviderArn, required: true, location_name: "credentialProviderArn"))
    PaymentCredentialProviderConfiguration.struct_class = Types::PaymentCredentialProviderConfiguration

    PaymentCredentialProviderItem.add_member(:name, Shapes::ShapeRef.new(shape: CredentialProviderName, required: true, location_name: "name"))
    PaymentCredentialProviderItem.add_member(:credential_provider_vendor, Shapes::ShapeRef.new(shape: PaymentCredentialProviderVendorType, required: true, location_name: "credentialProviderVendor"))
    PaymentCredentialProviderItem.add_member(:credential_provider_arn, Shapes::ShapeRef.new(shape: PaymentCredentialProviderArnType, required: true, location_name: "credentialProviderArn"))
    PaymentCredentialProviderItem.add_member(:created_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdTime"))
    PaymentCredentialProviderItem.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "lastUpdatedTime"))
    PaymentCredentialProviderItem.struct_class = Types::PaymentCredentialProviderItem

    PaymentCredentialProviders.member = Shapes::ShapeRef.new(shape: PaymentCredentialProviderItem)

    PaymentManagerSummaries.member = Shapes::ShapeRef.new(shape: PaymentManagerSummary)

    PaymentManagerSummary.add_member(:payment_manager_arn, Shapes::ShapeRef.new(shape: PaymentManagerArn, required: true, location_name: "paymentManagerArn"))
    PaymentManagerSummary.add_member(:payment_manager_id, Shapes::ShapeRef.new(shape: PaymentManagerId, required: true, location_name: "paymentManagerId"))
    PaymentManagerSummary.add_member(:name, Shapes::ShapeRef.new(shape: PaymentManagerName, required: true, location_name: "name"))
    PaymentManagerSummary.add_member(:description, Shapes::ShapeRef.new(shape: PaymentsDescription, location_name: "description"))
    PaymentManagerSummary.add_member(:authorizer_type, Shapes::ShapeRef.new(shape: PaymentsAuthorizerType, required: true, location_name: "authorizerType"))
    PaymentManagerSummary.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "roleArn"))
    PaymentManagerSummary.add_member(:status, Shapes::ShapeRef.new(shape: PaymentManagerStatus, required: true, location_name: "status"))
    PaymentManagerSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, location_name: "createdAt"))
    PaymentManagerSummary.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "lastUpdatedAt"))
    PaymentManagerSummary.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "kmsKeyArn"))
    PaymentManagerSummary.struct_class = Types::PaymentManagerSummary

    PaymentProviderConfigurationInput.add_member(:coinbase_cdp_configuration, Shapes::ShapeRef.new(shape: CoinbaseCdpConfigurationInput, location_name: "coinbaseCdpConfiguration"))
    PaymentProviderConfigurationInput.add_member(:stripe_privy_configuration, Shapes::ShapeRef.new(shape: StripePrivyConfigurationInput, location_name: "stripePrivyConfiguration"))
    PaymentProviderConfigurationInput.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    PaymentProviderConfigurationInput.add_member_subclass(:coinbase_cdp_configuration, Types::PaymentProviderConfigurationInput::CoinbaseCdpConfiguration)
    PaymentProviderConfigurationInput.add_member_subclass(:stripe_privy_configuration, Types::PaymentProviderConfigurationInput::StripePrivyConfiguration)
    PaymentProviderConfigurationInput.add_member_subclass(:unknown, Types::PaymentProviderConfigurationInput::Unknown)
    PaymentProviderConfigurationInput.struct_class = Types::PaymentProviderConfigurationInput

    PaymentProviderConfigurationOutput.add_member(:coinbase_cdp_configuration, Shapes::ShapeRef.new(shape: CoinbaseCdpConfigurationOutput, location_name: "coinbaseCdpConfiguration"))
    PaymentProviderConfigurationOutput.add_member(:stripe_privy_configuration, Shapes::ShapeRef.new(shape: StripePrivyConfigurationOutput, location_name: "stripePrivyConfiguration"))
    PaymentProviderConfigurationOutput.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    PaymentProviderConfigurationOutput.add_member_subclass(:coinbase_cdp_configuration, Types::PaymentProviderConfigurationOutput::CoinbaseCdpConfiguration)
    PaymentProviderConfigurationOutput.add_member_subclass(:stripe_privy_configuration, Types::PaymentProviderConfigurationOutput::StripePrivyConfiguration)
    PaymentProviderConfigurationOutput.add_member_subclass(:unknown, Types::PaymentProviderConfigurationOutput::Unknown)
    PaymentProviderConfigurationOutput.struct_class = Types::PaymentProviderConfigurationOutput

    PermissionsConfiguration.add_member(:capacity_provider_operator_role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "capacityProviderOperatorRoleArn"))
    PermissionsConfiguration.struct_class = Types::PermissionsConfiguration

    Policies.member = Shapes::ShapeRef.new(shape: Policy)

    Policy.add_member(:policy_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "policyId"))
    Policy.add_member(:name, Shapes::ShapeRef.new(shape: PolicyName, required: true, location_name: "name"))
    Policy.add_member(:policy_engine_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "policyEngineId"))
    Policy.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    Policy.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "updatedAt"))
    Policy.add_member(:policy_arn, Shapes::ShapeRef.new(shape: PolicyArn, required: true, location_name: "policyArn"))
    Policy.add_member(:status, Shapes::ShapeRef.new(shape: PolicyStatus, required: true, location_name: "status"))
    Policy.add_member(:enforcement_mode, Shapes::ShapeRef.new(shape: EnforcementMode, location_name: "enforcementMode"))
    Policy.add_member(:definition, Shapes::ShapeRef.new(shape: PolicyDefinition, required: true, location_name: "definition"))
    Policy.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    Policy.add_member(:status_reasons, Shapes::ShapeRef.new(shape: PolicyStatusReasons, required: true, location_name: "statusReasons"))
    Policy.struct_class = Types::Policy

    PolicyDefinition.add_member(:cedar, Shapes::ShapeRef.new(shape: CedarPolicy, location_name: "cedar"))
    PolicyDefinition.add_member(:policy_generation, Shapes::ShapeRef.new(shape: PolicyGenerationDetails, location_name: "policyGeneration"))
    PolicyDefinition.add_member(:policy, Shapes::ShapeRef.new(shape: PolicyStatement, location_name: "policy"))
    PolicyDefinition.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    PolicyDefinition.add_member_subclass(:cedar, Types::PolicyDefinition::Cedar)
    PolicyDefinition.add_member_subclass(:policy_generation, Types::PolicyDefinition::PolicyGeneration)
    PolicyDefinition.add_member_subclass(:policy, Types::PolicyDefinition::Policy)
    PolicyDefinition.add_member_subclass(:unknown, Types::PolicyDefinition::Unknown)
    PolicyDefinition.struct_class = Types::PolicyDefinition

    PolicyEngine.add_member(:policy_engine_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "policyEngineId"))
    PolicyEngine.add_member(:name, Shapes::ShapeRef.new(shape: PolicyEngineName, required: true, location_name: "name"))
    PolicyEngine.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    PolicyEngine.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "updatedAt"))
    PolicyEngine.add_member(:policy_engine_arn, Shapes::ShapeRef.new(shape: PolicyEngineArn, required: true, location_name: "policyEngineArn"))
    PolicyEngine.add_member(:status, Shapes::ShapeRef.new(shape: PolicyEngineStatus, required: true, location_name: "status"))
    PolicyEngine.add_member(:encryption_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "encryptionKeyArn"))
    PolicyEngine.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    PolicyEngine.add_member(:status_reasons, Shapes::ShapeRef.new(shape: PolicyStatusReasons, required: true, location_name: "statusReasons"))
    PolicyEngine.struct_class = Types::PolicyEngine

    PolicyEngineSummary.add_member(:policy_engine_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "policyEngineId"))
    PolicyEngineSummary.add_member(:name, Shapes::ShapeRef.new(shape: PolicyEngineName, required: true, location_name: "name"))
    PolicyEngineSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    PolicyEngineSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "updatedAt"))
    PolicyEngineSummary.add_member(:policy_engine_arn, Shapes::ShapeRef.new(shape: PolicyEngineArn, required: true, location_name: "policyEngineArn"))
    PolicyEngineSummary.add_member(:status, Shapes::ShapeRef.new(shape: PolicyEngineStatus, required: true, location_name: "status"))
    PolicyEngineSummary.add_member(:encryption_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "encryptionKeyArn"))
    PolicyEngineSummary.struct_class = Types::PolicyEngineSummary

    PolicyEngineSummaryList.member = Shapes::ShapeRef.new(shape: PolicyEngineSummary)

    PolicyEngines.member = Shapes::ShapeRef.new(shape: PolicyEngine)

    PolicyGeneration.add_member(:policy_engine_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "policyEngineId"))
    PolicyGeneration.add_member(:policy_generation_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "policyGenerationId"))
    PolicyGeneration.add_member(:name, Shapes::ShapeRef.new(shape: PolicyGenerationName, required: true, location_name: "name"))
    PolicyGeneration.add_member(:policy_generation_arn, Shapes::ShapeRef.new(shape: PolicyGenerationArn, required: true, location_name: "policyGenerationArn"))
    PolicyGeneration.add_member(:resource, Shapes::ShapeRef.new(shape: Resource, required: true, location_name: "resource"))
    PolicyGeneration.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    PolicyGeneration.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "updatedAt"))
    PolicyGeneration.add_member(:status, Shapes::ShapeRef.new(shape: PolicyGenerationStatus, required: true, location_name: "status"))
    PolicyGeneration.add_member(:findings, Shapes::ShapeRef.new(shape: String, location_name: "findings"))
    PolicyGeneration.add_member(:status_reasons, Shapes::ShapeRef.new(shape: PolicyStatusReasons, required: true, location_name: "statusReasons"))
    PolicyGeneration.struct_class = Types::PolicyGeneration

    PolicyGenerationAsset.add_member(:policy_generation_asset_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "policyGenerationAssetId"))
    PolicyGenerationAsset.add_member(:definition, Shapes::ShapeRef.new(shape: PolicyDefinition, location_name: "definition"))
    PolicyGenerationAsset.add_member(:raw_text_fragment, Shapes::ShapeRef.new(shape: NaturalLanguage, required: true, location_name: "rawTextFragment"))
    PolicyGenerationAsset.add_member(:findings, Shapes::ShapeRef.new(shape: Findings, required: true, location_name: "findings"))
    PolicyGenerationAsset.struct_class = Types::PolicyGenerationAsset

    PolicyGenerationAssets.member = Shapes::ShapeRef.new(shape: PolicyGenerationAsset)

    PolicyGenerationDetails.add_member(:policy_generation_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "policyGenerationId"))
    PolicyGenerationDetails.add_member(:policy_generation_asset_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "policyGenerationAssetId"))
    PolicyGenerationDetails.struct_class = Types::PolicyGenerationDetails

    PolicyGenerationSummary.add_member(:policy_engine_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "policyEngineId"))
    PolicyGenerationSummary.add_member(:policy_generation_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "policyGenerationId"))
    PolicyGenerationSummary.add_member(:name, Shapes::ShapeRef.new(shape: PolicyGenerationName, required: true, location_name: "name"))
    PolicyGenerationSummary.add_member(:policy_generation_arn, Shapes::ShapeRef.new(shape: PolicyGenerationArn, required: true, location_name: "policyGenerationArn"))
    PolicyGenerationSummary.add_member(:resource, Shapes::ShapeRef.new(shape: Resource, required: true, location_name: "resource"))
    PolicyGenerationSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    PolicyGenerationSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "updatedAt"))
    PolicyGenerationSummary.add_member(:status, Shapes::ShapeRef.new(shape: PolicyGenerationStatus, required: true, location_name: "status"))
    PolicyGenerationSummary.add_member(:findings, Shapes::ShapeRef.new(shape: String, location_name: "findings"))
    PolicyGenerationSummary.struct_class = Types::PolicyGenerationSummary

    PolicyGenerationSummaryList.member = Shapes::ShapeRef.new(shape: PolicyGenerationSummary)

    PolicyGenerations.member = Shapes::ShapeRef.new(shape: PolicyGeneration)

    PolicyStatement.add_member(:statement, Shapes::ShapeRef.new(shape: Statement, required: true, location_name: "statement"))
    PolicyStatement.struct_class = Types::PolicyStatement

    PolicyStatusReasons.member = Shapes::ShapeRef.new(shape: String)

    PolicySummary.add_member(:policy_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "policyId"))
    PolicySummary.add_member(:name, Shapes::ShapeRef.new(shape: PolicyName, required: true, location_name: "name"))
    PolicySummary.add_member(:policy_engine_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "policyEngineId"))
    PolicySummary.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    PolicySummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "updatedAt"))
    PolicySummary.add_member(:policy_arn, Shapes::ShapeRef.new(shape: PolicyArn, required: true, location_name: "policyArn"))
    PolicySummary.add_member(:status, Shapes::ShapeRef.new(shape: PolicyStatus, required: true, location_name: "status"))
    PolicySummary.add_member(:enforcement_mode, Shapes::ShapeRef.new(shape: EnforcementMode, location_name: "enforcementMode"))
    PolicySummary.struct_class = Types::PolicySummary

    PolicySummaryList.member = Shapes::ShapeRef.new(shape: PolicySummary)

    PrivateEndpoint.add_member(:self_managed_lattice_resource, Shapes::ShapeRef.new(shape: SelfManagedLatticeResource, location_name: "selfManagedLatticeResource"))
    PrivateEndpoint.add_member(:managed_vpc_resource, Shapes::ShapeRef.new(shape: ManagedVpcResource, location_name: "managedVpcResource"))
    PrivateEndpoint.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    PrivateEndpoint.add_member_subclass(:self_managed_lattice_resource, Types::PrivateEndpoint::SelfManagedLatticeResource)
    PrivateEndpoint.add_member_subclass(:managed_vpc_resource, Types::PrivateEndpoint::ManagedVpcResource)
    PrivateEndpoint.add_member_subclass(:unknown, Types::PrivateEndpoint::Unknown)
    PrivateEndpoint.struct_class = Types::PrivateEndpoint

    PrivateEndpointManagedResources.member = Shapes::ShapeRef.new(shape: ManagedResourceDetails)

    PrivateEndpointOverride.add_member(:domain, Shapes::ShapeRef.new(shape: PrivateEndpointOverrideDomain, required: true, location_name: "domain"))
    PrivateEndpointOverride.add_member(:private_endpoint, Shapes::ShapeRef.new(shape: PrivateEndpoint, required: true, location_name: "privateEndpoint"))
    PrivateEndpointOverride.struct_class = Types::PrivateEndpointOverride

    PrivateEndpointOverrides.member = Shapes::ShapeRef.new(shape: PrivateEndpointOverride)

    PrivateKeyJwtConfig.add_member(:private_key_source, Shapes::ShapeRef.new(shape: PrivateKeySource, location_name: "privateKeySource"))
    PrivateKeyJwtConfig.add_member(:signing_algorithm, Shapes::ShapeRef.new(shape: SigningAlgorithm, location_name: "signingAlgorithm"))
    PrivateKeyJwtConfig.add_member(:additional_header_claims, Shapes::ShapeRef.new(shape: AdditionalClaims, location_name: "additionalHeaderClaims"))
    PrivateKeyJwtConfig.add_member(:additional_payload_claims, Shapes::ShapeRef.new(shape: AdditionalClaims, location_name: "additionalPayloadClaims"))
    PrivateKeyJwtConfig.struct_class = Types::PrivateKeyJwtConfig

    PrivateKeySource.add_member(:kms_key_source, Shapes::ShapeRef.new(shape: KmsKeySourceType, location_name: "kmsKeySource"))
    PrivateKeySource.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    PrivateKeySource.add_member_subclass(:kms_key_source, Types::PrivateKeySource::KmsKeySource)
    PrivateKeySource.add_member_subclass(:unknown, Types::PrivateKeySource::Unknown)
    PrivateKeySource.struct_class = Types::PrivateKeySource

    ProtocolConfiguration.add_member(:server_protocol, Shapes::ShapeRef.new(shape: ServerProtocol, required: true, location_name: "serverProtocol"))
    ProtocolConfiguration.struct_class = Types::ProtocolConfiguration

    ProviderPrefix.add_member(:strip, Shapes::ShapeRef.new(shape: Boolean, location_name: "strip"))
    ProviderPrefix.add_member(:separator, Shapes::ShapeRef.new(shape: ProviderPrefixSeparatorString, location_name: "separator"))
    ProviderPrefix.struct_class = Types::ProviderPrefix

    PutResourcePolicyRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: BedrockAgentcoreResourceArn, required: true, location: "uri", location_name: "resourceArn"))
    PutResourcePolicyRequest.add_member(:policy, Shapes::ShapeRef.new(shape: ResourcePolicyBody, required: true, location_name: "policy"))
    PutResourcePolicyRequest.struct_class = Types::PutResourcePolicyRequest

    PutResourcePolicyResponse.add_member(:policy, Shapes::ShapeRef.new(shape: ResourcePolicyBody, required: true, location_name: "policy"))
    PutResourcePolicyResponse.struct_class = Types::PutResourcePolicyResponse

    RateConfig.add_member(:rate, Shapes::ShapeRef.new(shape: RateConfigRateDouble, required: true, location_name: "rate"))
    RateConfig.add_member(:period, Shapes::ShapeRef.new(shape: Period, required: true, location_name: "period"))
    RateConfig.struct_class = Types::RateConfig

    RateConfigs.member = Shapes::ShapeRef.new(shape: RateConfig)

    RatingScale.add_member(:numerical, Shapes::ShapeRef.new(shape: NumericalScaleDefinitions, location_name: "numerical"))
    RatingScale.add_member(:categorical, Shapes::ShapeRef.new(shape: CategoricalScaleDefinitions, location_name: "categorical"))
    RatingScale.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    RatingScale.add_member_subclass(:numerical, Types::RatingScale::Numerical)
    RatingScale.add_member_subclass(:categorical, Types::RatingScale::Categorical)
    RatingScale.add_member_subclass(:unknown, Types::RatingScale::Unknown)
    RatingScale.struct_class = Types::RatingScale

    ReasoningConfiguration.add_member(:effort, Shapes::ShapeRef.new(shape: ReasoningConfigurationEffortString, location_name: "effort"))
    ReasoningConfiguration.struct_class = Types::ReasoningConfiguration

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

    RegistryRecordCredentialProviderConfiguration.add_member(:credential_provider_type, Shapes::ShapeRef.new(shape: RegistryRecordCredentialProviderType, required: true, location_name: "credentialProviderType"))
    RegistryRecordCredentialProviderConfiguration.add_member(:credential_provider, Shapes::ShapeRef.new(shape: RegistryRecordCredentialProviderUnion, required: true, location_name: "credentialProvider"))
    RegistryRecordCredentialProviderConfiguration.struct_class = Types::RegistryRecordCredentialProviderConfiguration

    RegistryRecordCredentialProviderConfigurationList.member = Shapes::ShapeRef.new(shape: RegistryRecordCredentialProviderConfiguration)

    RegistryRecordCredentialProviderUnion.add_member(:oauth_credential_provider, Shapes::ShapeRef.new(shape: RegistryRecordOAuthCredentialProvider, location_name: "oauthCredentialProvider"))
    RegistryRecordCredentialProviderUnion.add_member(:iam_credential_provider, Shapes::ShapeRef.new(shape: RegistryRecordIamCredentialProvider, location_name: "iamCredentialProvider"))
    RegistryRecordCredentialProviderUnion.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    RegistryRecordCredentialProviderUnion.add_member_subclass(:oauth_credential_provider, Types::RegistryRecordCredentialProviderUnion::OauthCredentialProvider)
    RegistryRecordCredentialProviderUnion.add_member_subclass(:iam_credential_provider, Types::RegistryRecordCredentialProviderUnion::IamCredentialProvider)
    RegistryRecordCredentialProviderUnion.add_member_subclass(:unknown, Types::RegistryRecordCredentialProviderUnion::Unknown)
    RegistryRecordCredentialProviderUnion.struct_class = Types::RegistryRecordCredentialProviderUnion

    RegistryRecordIamCredentialProvider.add_member(:role_arn, Shapes::ShapeRef.new(shape: IamRoleArn, location_name: "roleArn"))
    RegistryRecordIamCredentialProvider.add_member(:service, Shapes::ShapeRef.new(shape: IamSigningServiceName, location_name: "service"))
    RegistryRecordIamCredentialProvider.add_member(:region, Shapes::ShapeRef.new(shape: IamSigningRegion, location_name: "region"))
    RegistryRecordIamCredentialProvider.struct_class = Types::RegistryRecordIamCredentialProvider

    RegistryRecordOAuthCredentialProvider.add_member(:provider_arn, Shapes::ShapeRef.new(shape: CredentialProviderArn, required: true, location_name: "providerArn"))
    RegistryRecordOAuthCredentialProvider.add_member(:grant_type, Shapes::ShapeRef.new(shape: RegistryRecordOAuthGrantType, location_name: "grantType"))
    RegistryRecordOAuthCredentialProvider.add_member(:scopes, Shapes::ShapeRef.new(shape: ScopeList, location_name: "scopes"))
    RegistryRecordOAuthCredentialProvider.add_member(:custom_parameters, Shapes::ShapeRef.new(shape: CustomParameterMap, location_name: "customParameters"))
    RegistryRecordOAuthCredentialProvider.struct_class = Types::RegistryRecordOAuthCredentialProvider

    RegistryRecordSummary.add_member(:registry_arn, Shapes::ShapeRef.new(shape: RegistryArn, required: true, location_name: "registryArn"))
    RegistryRecordSummary.add_member(:record_arn, Shapes::ShapeRef.new(shape: RegistryRecordArn, required: true, location_name: "recordArn"))
    RegistryRecordSummary.add_member(:record_id, Shapes::ShapeRef.new(shape: RegistryRecordId, required: true, location_name: "recordId"))
    RegistryRecordSummary.add_member(:name, Shapes::ShapeRef.new(shape: RegistryRecordName, required: true, location_name: "name"))
    RegistryRecordSummary.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    RegistryRecordSummary.add_member(:descriptor_type, Shapes::ShapeRef.new(shape: DescriptorType, required: true, location_name: "descriptorType"))
    RegistryRecordSummary.add_member(:record_version, Shapes::ShapeRef.new(shape: RegistryRecordVersion, required: true, location_name: "recordVersion"))
    RegistryRecordSummary.add_member(:status, Shapes::ShapeRef.new(shape: RegistryRecordStatus, required: true, location_name: "status"))
    RegistryRecordSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    RegistryRecordSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "updatedAt"))
    RegistryRecordSummary.struct_class = Types::RegistryRecordSummary

    RegistryRecordSummaryList.member = Shapes::ShapeRef.new(shape: RegistryRecordSummary)

    RegistrySummary.add_member(:name, Shapes::ShapeRef.new(shape: RegistryName, required: true, location_name: "name"))
    RegistrySummary.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    RegistrySummary.add_member(:registry_id, Shapes::ShapeRef.new(shape: RegistryId, required: true, location_name: "registryId"))
    RegistrySummary.add_member(:registry_arn, Shapes::ShapeRef.new(shape: RegistryArn, required: true, location_name: "registryArn"))
    RegistrySummary.add_member(:authorizer_type, Shapes::ShapeRef.new(shape: RegistryAuthorizerType, location_name: "authorizerType"))
    RegistrySummary.add_member(:status, Shapes::ShapeRef.new(shape: RegistryStatus, required: true, location_name: "status"))
    RegistrySummary.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    RegistrySummary.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    RegistrySummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "updatedAt"))
    RegistrySummary.struct_class = Types::RegistrySummary

    RegistrySummaryList.member = Shapes::ShapeRef.new(shape: RegistrySummary)

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

    ResourceLocation.add_member(:s3, Shapes::ShapeRef.new(shape: S3Location, location_name: "s3"))
    ResourceLocation.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ResourceLocation.add_member_subclass(:s3, Types::ResourceLocation::S3)
    ResourceLocation.add_member_subclass(:unknown, Types::ResourceLocation::Unknown)
    ResourceLocation.struct_class = Types::ResourceLocation

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ResourceOauth2ReturnUrlListType.member = Shapes::ShapeRef.new(shape: ResourceOauth2ReturnUrlType)

    ResponseListType.member = Shapes::ShapeRef.new(shape: ResponseType)

    RestApiMethods.member = Shapes::ShapeRef.new(shape: RestApiMethod)

    RetryableConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    RetryableConflictException.struct_class = Types::RetryableConflictException

    RootVolumeConfiguration.add_member(:volume_type, Shapes::ShapeRef.new(shape: EbsVolumeType, location_name: "volumeType"))
    RootVolumeConfiguration.add_member(:iops, Shapes::ShapeRef.new(shape: VolumeIops, location_name: "iops"))
    RootVolumeConfiguration.add_member(:throughput, Shapes::ShapeRef.new(shape: RootVolumeConfigurationThroughputInteger, location_name: "throughput"))
    RootVolumeConfiguration.add_member(:encrypted, Shapes::ShapeRef.new(shape: Boolean, location_name: "encrypted"))
    RootVolumeConfiguration.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "kmsKeyId"))
    RootVolumeConfiguration.add_member(:free_space_gi_b, Shapes::ShapeRef.new(shape: RootVolumeConfigurationFreeSpaceGiBInteger, location_name: "freeSpaceGiB"))
    RootVolumeConfiguration.struct_class = Types::RootVolumeConfiguration

    RouteToTargetAction.add_member(:static_route, Shapes::ShapeRef.new(shape: StaticRoute, location_name: "staticRoute"))
    RouteToTargetAction.add_member(:weighted_route, Shapes::ShapeRef.new(shape: WeightedRoute, location_name: "weightedRoute"))
    RouteToTargetAction.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    RouteToTargetAction.add_member_subclass(:static_route, Types::RouteToTargetAction::StaticRoute)
    RouteToTargetAction.add_member_subclass(:weighted_route, Types::RouteToTargetAction::WeightedRoute)
    RouteToTargetAction.add_member_subclass(:unknown, Types::RouteToTargetAction::Unknown)
    RouteToTargetAction.struct_class = Types::RouteToTargetAction

    Rule.add_member(:sampling_config, Shapes::ShapeRef.new(shape: SamplingConfig, required: true, location_name: "samplingConfig"))
    Rule.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "filters"))
    Rule.add_member(:session_config, Shapes::ShapeRef.new(shape: SessionConfig, location_name: "sessionConfig"))
    Rule.struct_class = Types::Rule

    RuntimeMetadataConfiguration.add_member(:require_mmdsv2, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "requireMMDSV2"))
    RuntimeMetadataConfiguration.struct_class = Types::RuntimeMetadataConfiguration

    RuntimeTargetConfiguration.add_member(:arn, Shapes::ShapeRef.new(shape: RuntimeArn, required: true, location_name: "arn"))
    RuntimeTargetConfiguration.add_member(:qualifier, Shapes::ShapeRef.new(shape: RuntimeQualifier, location_name: "qualifier"))
    RuntimeTargetConfiguration.add_member(:schema, Shapes::ShapeRef.new(shape: HttpApiSchemaConfiguration, location_name: "schema"))
    RuntimeTargetConfiguration.struct_class = Types::RuntimeTargetConfiguration

    S3Configuration.add_member(:uri, Shapes::ShapeRef.new(shape: S3BucketUri, location_name: "uri"))
    S3Configuration.add_member(:bucket_owner_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, location_name: "bucketOwnerAccountId"))
    S3Configuration.struct_class = Types::S3Configuration

    S3FilesAccessPointConfiguration.add_member(:access_point_arn, Shapes::ShapeRef.new(shape: S3FilesAccessPointArn, required: true, location_name: "accessPointArn"))
    S3FilesAccessPointConfiguration.add_member(:mount_path, Shapes::ShapeRef.new(shape: MountPath, required: true, location_name: "mountPath"))
    S3FilesAccessPointConfiguration.struct_class = Types::S3FilesAccessPointConfiguration

    S3FilesConfiguration.add_member(:access_point_arn, Shapes::ShapeRef.new(shape: S3FilesAccessPointArn, required: true, location_name: "accessPointArn"))
    S3FilesConfiguration.add_member(:mount_path, Shapes::ShapeRef.new(shape: MountPath, required: true, location_name: "mountPath"))
    S3FilesConfiguration.add_member(:file_system_arn, Shapes::ShapeRef.new(shape: S3FilesFileSystemArn, required: true, location_name: "fileSystemArn"))
    S3FilesConfiguration.struct_class = Types::S3FilesConfiguration

    S3Location.add_member(:bucket, Shapes::ShapeRef.new(shape: S3LocationBucketString, required: true, location_name: "bucket"))
    S3Location.add_member(:prefix, Shapes::ShapeRef.new(shape: S3LocationPrefixString, required: true, location_name: "prefix"))
    S3Location.add_member(:version_id, Shapes::ShapeRef.new(shape: S3LocationVersionIdString, location_name: "versionId"))
    S3Location.struct_class = Types::S3Location

    S3Source.add_member(:s3_uri, Shapes::ShapeRef.new(shape: S3Uri, required: true, location_name: "s3Uri"))
    S3Source.struct_class = Types::S3Source

    SalesforceOauth2ProviderConfigInput.add_member(:client_id, Shapes::ShapeRef.new(shape: ClientIdType, required: true, location_name: "clientId"))
    SalesforceOauth2ProviderConfigInput.add_member(:client_secret, Shapes::ShapeRef.new(shape: DefaultClientSecretType, location_name: "clientSecret"))
    SalesforceOauth2ProviderConfigInput.add_member(:client_secret_config, Shapes::ShapeRef.new(shape: SecretReference, location_name: "clientSecretConfig"))
    SalesforceOauth2ProviderConfigInput.add_member(:client_secret_source, Shapes::ShapeRef.new(shape: SecretSourceType, location_name: "clientSecretSource"))
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

    ScopeList.member = Shapes::ShapeRef.new(shape: String)

    ScopesListType.member = Shapes::ShapeRef.new(shape: ScopeType)

    Secret.add_member(:secret_arn, Shapes::ShapeRef.new(shape: SecretArn, required: true, location_name: "secretArn"))
    Secret.struct_class = Types::Secret

    SecretReference.add_member(:secret_id, Shapes::ShapeRef.new(shape: SecretIdType, required: true, location_name: "secretId"))
    SecretReference.add_member(:json_key, Shapes::ShapeRef.new(shape: SecretJsonKeyType, required: true, location_name: "jsonKey"))
    SecretReference.struct_class = Types::SecretReference

    SecretsManagerLocation.add_member(:secret_arn, Shapes::ShapeRef.new(shape: ToolSecretArn, required: true, location_name: "secretArn"))
    SecretsManagerLocation.struct_class = Types::SecretsManagerLocation

    SecurityGroupIds.member = Shapes::ShapeRef.new(shape: SecurityGroupIdentifier)

    SecurityGroups.member = Shapes::ShapeRef.new(shape: SecurityGroupId)

    SelfManagedConfiguration.add_member(:trigger_conditions, Shapes::ShapeRef.new(shape: TriggerConditionsList, required: true, location_name: "triggerConditions"))
    SelfManagedConfiguration.add_member(:invocation_configuration, Shapes::ShapeRef.new(shape: InvocationConfiguration, required: true, location_name: "invocationConfiguration"))
    SelfManagedConfiguration.add_member(:historical_context_window_size, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "historicalContextWindowSize"))
    SelfManagedConfiguration.struct_class = Types::SelfManagedConfiguration

    SelfManagedConfigurationInput.add_member(:trigger_conditions, Shapes::ShapeRef.new(shape: TriggerConditionInputList, location_name: "triggerConditions"))
    SelfManagedConfigurationInput.add_member(:invocation_configuration, Shapes::ShapeRef.new(shape: InvocationConfigurationInput, required: true, location_name: "invocationConfiguration"))
    SelfManagedConfigurationInput.add_member(:historical_context_window_size, Shapes::ShapeRef.new(shape: SelfManagedConfigurationInputHistoricalContextWindowSizeInteger, location_name: "historicalContextWindowSize"))
    SelfManagedConfigurationInput.struct_class = Types::SelfManagedConfigurationInput

    SelfManagedLatticeResource.add_member(:resource_configuration_identifier, Shapes::ShapeRef.new(shape: ResourceConfigurationIdentifier, location_name: "resourceConfigurationIdentifier"))
    SelfManagedLatticeResource.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    SelfManagedLatticeResource.add_member_subclass(:resource_configuration_identifier, Types::SelfManagedLatticeResource::ResourceConfigurationIdentifier)
    SelfManagedLatticeResource.add_member_subclass(:unknown, Types::SelfManagedLatticeResource::Unknown)
    SelfManagedLatticeResource.struct_class = Types::SelfManagedLatticeResource

    SemanticConsolidationOverride.add_member(:append_to_prompt, Shapes::ShapeRef.new(shape: Prompt, required: true, location_name: "appendToPrompt"))
    SemanticConsolidationOverride.add_member(:model_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "modelId"))
    SemanticConsolidationOverride.struct_class = Types::SemanticConsolidationOverride

    SemanticExtractionOverride.add_member(:append_to_prompt, Shapes::ShapeRef.new(shape: Prompt, required: true, location_name: "appendToPrompt"))
    SemanticExtractionOverride.add_member(:model_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "modelId"))
    SemanticExtractionOverride.struct_class = Types::SemanticExtractionOverride

    SemanticMemoryStrategyInput.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    SemanticMemoryStrategyInput.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    SemanticMemoryStrategyInput.add_member(:namespaces, Shapes::ShapeRef.new(shape: NamespacesList, deprecated: true, location_name: "namespaces", metadata: {"deprecatedMessage" => "Use namespaceTemplates instead", "deprecatedSince" => "2026-03-02"}))
    SemanticMemoryStrategyInput.add_member(:namespace_templates, Shapes::ShapeRef.new(shape: NamespacesList, location_name: "namespaceTemplates"))
    SemanticMemoryStrategyInput.add_member(:memory_record_schema, Shapes::ShapeRef.new(shape: MemoryRecordSchema, location_name: "memoryRecordSchema"))
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

    ServerDefinition.add_member(:schema_version, Shapes::ShapeRef.new(shape: SchemaVersion, location_name: "schemaVersion"))
    ServerDefinition.add_member(:inline_content, Shapes::ShapeRef.new(shape: InlineContent, location_name: "inlineContent"))
    ServerDefinition.struct_class = Types::ServerDefinition

    ServiceException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ServiceException.struct_class = Types::ServiceException

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    SessionConfig.add_member(:session_timeout_minutes, Shapes::ShapeRef.new(shape: SessionConfigSessionTimeoutMinutesInteger, required: true, location_name: "sessionTimeoutMinutes"))
    SessionConfig.struct_class = Types::SessionConfig

    SessionConfiguration.add_member(:session_timeout_in_seconds, Shapes::ShapeRef.new(shape: SessionConfigurationSessionTimeoutInSecondsInteger, location_name: "sessionTimeoutInSeconds"))
    SessionConfiguration.struct_class = Types::SessionConfiguration

    SessionStorageConfiguration.add_member(:mount_path, Shapes::ShapeRef.new(shape: MountPath, required: true, location_name: "mountPath"))
    SessionStorageConfiguration.struct_class = Types::SessionStorageConfiguration

    SetTokenVaultCMKRequest.add_member(:token_vault_id, Shapes::ShapeRef.new(shape: TokenVaultIdType, location_name: "tokenVaultId"))
    SetTokenVaultCMKRequest.add_member(:kms_configuration, Shapes::ShapeRef.new(shape: KmsConfiguration, required: true, location_name: "kmsConfiguration"))
    SetTokenVaultCMKRequest.struct_class = Types::SetTokenVaultCMKRequest

    SetTokenVaultCMKResponse.add_member(:token_vault_id, Shapes::ShapeRef.new(shape: TokenVaultIdType, required: true, location_name: "tokenVaultId"))
    SetTokenVaultCMKResponse.add_member(:kms_configuration, Shapes::ShapeRef.new(shape: KmsConfiguration, required: true, location_name: "kmsConfiguration"))
    SetTokenVaultCMKResponse.add_member(:last_modified_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "lastModifiedDate"))
    SetTokenVaultCMKResponse.struct_class = Types::SetTokenVaultCMKResponse

    SkillDefinition.add_member(:schema_version, Shapes::ShapeRef.new(shape: SchemaVersion, location_name: "schemaVersion"))
    SkillDefinition.add_member(:inline_content, Shapes::ShapeRef.new(shape: InlineContent, location_name: "inlineContent"))
    SkillDefinition.struct_class = Types::SkillDefinition

    SkillMdDefinition.add_member(:inline_content, Shapes::ShapeRef.new(shape: InlineContent, location_name: "inlineContent"))
    SkillMdDefinition.struct_class = Types::SkillMdDefinition

    SlackOauth2ProviderConfigInput.add_member(:client_id, Shapes::ShapeRef.new(shape: ClientIdType, required: true, location_name: "clientId"))
    SlackOauth2ProviderConfigInput.add_member(:client_secret, Shapes::ShapeRef.new(shape: DefaultClientSecretType, location_name: "clientSecret"))
    SlackOauth2ProviderConfigInput.add_member(:client_secret_config, Shapes::ShapeRef.new(shape: SecretReference, location_name: "clientSecretConfig"))
    SlackOauth2ProviderConfigInput.add_member(:client_secret_source, Shapes::ShapeRef.new(shape: SecretSourceType, location_name: "clientSecretSource"))
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
    StartPolicyGenerationResponse.add_member(:findings, Shapes::ShapeRef.new(shape: String, location_name: "findings"))
    StartPolicyGenerationResponse.add_member(:status_reasons, Shapes::ShapeRef.new(shape: PolicyStatusReasons, required: true, location_name: "statusReasons"))
    StartPolicyGenerationResponse.struct_class = Types::StartPolicyGenerationResponse

    StaticOverride.add_member(:bundle_arn, Shapes::ShapeRef.new(shape: GatewayConfigurationBundleArn, required: true, location_name: "bundleArn"))
    StaticOverride.add_member(:bundle_version, Shapes::ShapeRef.new(shape: StaticOverrideBundleVersionString, required: true, location_name: "bundleVersion"))
    StaticOverride.struct_class = Types::StaticOverride

    StaticQueryParameters.key = Shapes::ShapeRef.new(shape: StaticQueryParameterName)
    StaticQueryParameters.value = Shapes::ShapeRef.new(shape: StaticQueryParameterValue)

    StaticRoute.add_member(:target_name, Shapes::ShapeRef.new(shape: TargetName, required: true, location_name: "targetName"))
    StaticRoute.struct_class = Types::StaticRoute

    StatusReasons.member = Shapes::ShapeRef.new(shape: StatusReason)

    StickinessConfiguration.add_member(:identifier, Shapes::ShapeRef.new(shape: StickinessConfigurationIdentifierString, required: true, location_name: "identifier"))
    StickinessConfiguration.add_member(:timeout, Shapes::ShapeRef.new(shape: StickinessTimeout, location_name: "timeout"))
    StickinessConfiguration.add_member(:composite_identifier, Shapes::ShapeRef.new(shape: CompositeIdentifierList, location_name: "compositeIdentifier"))
    StickinessConfiguration.struct_class = Types::StickinessConfiguration

    StrategyConfiguration.add_member(:type, Shapes::ShapeRef.new(shape: OverrideType, location_name: "type"))
    StrategyConfiguration.add_member(:extraction, Shapes::ShapeRef.new(shape: ExtractionConfiguration, location_name: "extraction"))
    StrategyConfiguration.add_member(:consolidation, Shapes::ShapeRef.new(shape: ConsolidationConfiguration, location_name: "consolidation"))
    StrategyConfiguration.add_member(:reflection, Shapes::ShapeRef.new(shape: ReflectionConfiguration, location_name: "reflection"))
    StrategyConfiguration.add_member(:self_managed_configuration, Shapes::ShapeRef.new(shape: SelfManagedConfiguration, location_name: "selfManagedConfiguration"))
    StrategyConfiguration.struct_class = Types::StrategyConfiguration

    StreamDeliveryResource.add_member(:kinesis, Shapes::ShapeRef.new(shape: KinesisResource, location_name: "kinesis"))
    StreamDeliveryResource.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    StreamDeliveryResource.add_member_subclass(:kinesis, Types::StreamDeliveryResource::Kinesis)
    StreamDeliveryResource.add_member_subclass(:unknown, Types::StreamDeliveryResource::Unknown)
    StreamDeliveryResource.struct_class = Types::StreamDeliveryResource

    StreamDeliveryResources.add_member(:resources, Shapes::ShapeRef.new(shape: StreamDeliveryResourcesList, required: true, location_name: "resources"))
    StreamDeliveryResources.struct_class = Types::StreamDeliveryResources

    StreamDeliveryResourcesList.member = Shapes::ShapeRef.new(shape: StreamDeliveryResource)

    StreamingConfiguration.add_member(:enable_response_streaming, Shapes::ShapeRef.new(shape: Boolean, location_name: "enableResponseStreaming"))
    StreamingConfiguration.struct_class = Types::StreamingConfiguration

    StringListValidation.add_member(:allowed_values, Shapes::ShapeRef.new(shape: AllowedStringListValuesList, location_name: "allowedValues"))
    StringListValidation.add_member(:max_items, Shapes::ShapeRef.new(shape: StringListValidationMaxItemsInteger, location_name: "maxItems"))
    StringListValidation.struct_class = Types::StringListValidation

    StringValidation.add_member(:allowed_values, Shapes::ShapeRef.new(shape: AllowedStringValuesList, required: true, location_name: "allowedValues"))
    StringValidation.struct_class = Types::StringValidation

    StripePrivyConfigurationInput.add_member(:app_id, Shapes::ShapeRef.new(shape: StripePrivyAppIdType, required: true, location_name: "appId"))
    StripePrivyConfigurationInput.add_member(:app_secret, Shapes::ShapeRef.new(shape: DefaultStripePrivyAppSecretType, location_name: "appSecret"))
    StripePrivyConfigurationInput.add_member(:app_secret_source, Shapes::ShapeRef.new(shape: SecretSourceType, location_name: "appSecretSource"))
    StripePrivyConfigurationInput.add_member(:app_secret_config, Shapes::ShapeRef.new(shape: SecretReference, location_name: "appSecretConfig"))
    StripePrivyConfigurationInput.add_member(:authorization_private_key, Shapes::ShapeRef.new(shape: DefaultStripePrivyAuthorizationPrivateKeyType, location_name: "authorizationPrivateKey"))
    StripePrivyConfigurationInput.add_member(:authorization_private_key_source, Shapes::ShapeRef.new(shape: SecretSourceType, location_name: "authorizationPrivateKeySource"))
    StripePrivyConfigurationInput.add_member(:authorization_private_key_config, Shapes::ShapeRef.new(shape: SecretReference, location_name: "authorizationPrivateKeyConfig"))
    StripePrivyConfigurationInput.add_member(:authorization_id, Shapes::ShapeRef.new(shape: StripePrivyAuthorizationIdType, required: true, location_name: "authorizationId"))
    StripePrivyConfigurationInput.struct_class = Types::StripePrivyConfigurationInput

    StripePrivyConfigurationOutput.add_member(:app_id, Shapes::ShapeRef.new(shape: StripePrivyAppIdType, required: true, location_name: "appId"))
    StripePrivyConfigurationOutput.add_member(:app_secret_arn, Shapes::ShapeRef.new(shape: Secret, required: true, location_name: "appSecretArn"))
    StripePrivyConfigurationOutput.add_member(:app_secret_json_key, Shapes::ShapeRef.new(shape: SecretJsonKeyType, location_name: "appSecretJsonKey"))
    StripePrivyConfigurationOutput.add_member(:app_secret_source, Shapes::ShapeRef.new(shape: SecretSourceType, location_name: "appSecretSource"))
    StripePrivyConfigurationOutput.add_member(:authorization_private_key_arn, Shapes::ShapeRef.new(shape: Secret, required: true, location_name: "authorizationPrivateKeyArn"))
    StripePrivyConfigurationOutput.add_member(:authorization_private_key_json_key, Shapes::ShapeRef.new(shape: SecretJsonKeyType, location_name: "authorizationPrivateKeyJsonKey"))
    StripePrivyConfigurationOutput.add_member(:authorization_private_key_source, Shapes::ShapeRef.new(shape: SecretSourceType, location_name: "authorizationPrivateKeySource"))
    StripePrivyConfigurationOutput.add_member(:authorization_id, Shapes::ShapeRef.new(shape: StripePrivyAuthorizationIdType, required: true, location_name: "authorizationId"))
    StripePrivyConfigurationOutput.struct_class = Types::StripePrivyConfigurationOutput

    SubmitRegistryRecordForApprovalRequest.add_member(:registry_id, Shapes::ShapeRef.new(shape: RegistryIdentifier, required: true, location: "uri", location_name: "registryId"))
    SubmitRegistryRecordForApprovalRequest.add_member(:record_id, Shapes::ShapeRef.new(shape: RecordIdentifier, required: true, location: "uri", location_name: "recordId"))
    SubmitRegistryRecordForApprovalRequest.struct_class = Types::SubmitRegistryRecordForApprovalRequest

    SubmitRegistryRecordForApprovalResponse.add_member(:registry_arn, Shapes::ShapeRef.new(shape: RegistryArn, required: true, location_name: "registryArn"))
    SubmitRegistryRecordForApprovalResponse.add_member(:record_arn, Shapes::ShapeRef.new(shape: RegistryRecordArn, required: true, location_name: "recordArn"))
    SubmitRegistryRecordForApprovalResponse.add_member(:record_id, Shapes::ShapeRef.new(shape: RegistryRecordId, required: true, location_name: "recordId"))
    SubmitRegistryRecordForApprovalResponse.add_member(:status, Shapes::ShapeRef.new(shape: RegistryRecordStatus, required: true, location_name: "status"))
    SubmitRegistryRecordForApprovalResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "updatedAt"))
    SubmitRegistryRecordForApprovalResponse.struct_class = Types::SubmitRegistryRecordForApprovalResponse

    SubnetIds.member = Shapes::ShapeRef.new(shape: SubnetId)

    Subnets.member = Shapes::ShapeRef.new(shape: SubnetId)

    SubscriptionRequiredException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    SubscriptionRequiredException.add_member(:subscription_url, Shapes::ShapeRef.new(shape: String, location_name: "subscriptionUrl"))
    SubscriptionRequiredException.add_member(:product_name, Shapes::ShapeRef.new(shape: String, location_name: "productName"))
    SubscriptionRequiredException.struct_class = Types::SubscriptionRequiredException

    SummaryConsolidationOverride.add_member(:append_to_prompt, Shapes::ShapeRef.new(shape: Prompt, required: true, location_name: "appendToPrompt"))
    SummaryConsolidationOverride.add_member(:model_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "modelId"))
    SummaryConsolidationOverride.struct_class = Types::SummaryConsolidationOverride

    SummaryMemoryStrategyInput.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    SummaryMemoryStrategyInput.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    SummaryMemoryStrategyInput.add_member(:namespaces, Shapes::ShapeRef.new(shape: NamespacesList, deprecated: true, location_name: "namespaces", metadata: {"deprecatedMessage" => "Use namespaceTemplates instead", "deprecatedSince" => "2026-03-02"}))
    SummaryMemoryStrategyInput.add_member(:namespace_templates, Shapes::ShapeRef.new(shape: NamespacesList, location_name: "namespaceTemplates"))
    SummaryMemoryStrategyInput.add_member(:memory_record_schema, Shapes::ShapeRef.new(shape: MemoryRecordSchema, location_name: "memoryRecordSchema"))
    SummaryMemoryStrategyInput.struct_class = Types::SummaryMemoryStrategyInput

    SummaryOverrideConfigurationInput.add_member(:consolidation, Shapes::ShapeRef.new(shape: SummaryOverrideConsolidationConfigurationInput, location_name: "consolidation"))
    SummaryOverrideConfigurationInput.struct_class = Types::SummaryOverrideConfigurationInput

    SummaryOverrideConsolidationConfigurationInput.add_member(:append_to_prompt, Shapes::ShapeRef.new(shape: Prompt, required: true, location_name: "appendToPrompt"))
    SummaryOverrideConsolidationConfigurationInput.add_member(:model_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "modelId"))
    SummaryOverrideConsolidationConfigurationInput.struct_class = Types::SummaryOverrideConsolidationConfigurationInput

    SynchronizationConfiguration.add_member(:from_url, Shapes::ShapeRef.new(shape: FromUrlSynchronizationConfiguration, location_name: "fromUrl"))
    SynchronizationConfiguration.struct_class = Types::SynchronizationConfiguration

    SynchronizeGatewayTargetsRequest.add_member(:gateway_identifier, Shapes::ShapeRef.new(shape: GatewayIdentifier, required: true, location: "uri", location_name: "gatewayIdentifier"))
    SynchronizeGatewayTargetsRequest.add_member(:target_id_list, Shapes::ShapeRef.new(shape: TargetIdList, required: true, location_name: "targetIdList"))
    SynchronizeGatewayTargetsRequest.struct_class = Types::SynchronizeGatewayTargetsRequest

    SynchronizeGatewayTargetsResponse.add_member(:targets, Shapes::ShapeRef.new(shape: GatewayTargetList, location_name: "targets"))
    SynchronizeGatewayTargetsResponse.struct_class = Types::SynchronizeGatewayTargetsResponse

    SystemManagedBlock.add_member(:managed_by, Shapes::ShapeRef.new(shape: String, required: true, location_name: "managedBy"))
    SystemManagedBlock.struct_class = Types::SystemManagedBlock

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: TaggableResourcesArn, required: true, location: "uri", location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    TagsMap.key = Shapes::ShapeRef.new(shape: TagKey)
    TagsMap.value = Shapes::ShapeRef.new(shape: TagValue)

    TargetConfiguration.add_member(:mcp, Shapes::ShapeRef.new(shape: McpTargetConfiguration, location_name: "mcp"))
    TargetConfiguration.add_member(:http, Shapes::ShapeRef.new(shape: HttpTargetConfiguration, location_name: "http"))
    TargetConfiguration.add_member(:inference, Shapes::ShapeRef.new(shape: InferenceTargetConfiguration, location_name: "inference"))
    TargetConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    TargetConfiguration.add_member_subclass(:mcp, Types::TargetConfiguration::Mcp)
    TargetConfiguration.add_member_subclass(:http, Types::TargetConfiguration::Http)
    TargetConfiguration.add_member_subclass(:inference, Types::TargetConfiguration::Inference)
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
    TargetSummary.add_member(:resource_priority, Shapes::ShapeRef.new(shape: TargetResourcePriority, location_name: "resourcePriority"))
    TargetSummary.add_member(:last_synchronized_at, Shapes::ShapeRef.new(shape: DateTimestamp, location_name: "lastSynchronizedAt"))
    TargetSummary.add_member(:authorization_data, Shapes::ShapeRef.new(shape: AuthorizationData, location_name: "authorizationData"))
    TargetSummary.add_member(:target_type, Shapes::ShapeRef.new(shape: TargetType, location_name: "targetType"))
    TargetSummary.add_member(:listing_mode, Shapes::ShapeRef.new(shape: ListingMode, location_name: "listingMode"))
    TargetSummary.struct_class = Types::TargetSummary

    TargetTrafficSplitEntries.member = Shapes::ShapeRef.new(shape: TargetTrafficSplitEntry)

    TargetTrafficSplitEntry.add_member(:name, Shapes::ShapeRef.new(shape: TargetTrafficSplitEntryNameString, required: true, location_name: "name"))
    TargetTrafficSplitEntry.add_member(:weight, Shapes::ShapeRef.new(shape: TargetTrafficSplitEntryWeightInteger, required: true, location_name: "weight"))
    TargetTrafficSplitEntry.add_member(:target_name, Shapes::ShapeRef.new(shape: TargetName, required: true, location_name: "targetName"))
    TargetTrafficSplitEntry.add_member(:description, Shapes::ShapeRef.new(shape: TargetTrafficSplitEntryDescriptionString, location_name: "description"))
    TargetTrafficSplitEntry.add_member(:metadata, Shapes::ShapeRef.new(shape: TrafficSplitMetadataMap, location_name: "metadata"))
    TargetTrafficSplitEntry.struct_class = Types::TargetTrafficSplitEntry

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

    TokenExchangeGrantTypeConfigType.add_member(:actor_token_content, Shapes::ShapeRef.new(shape: ActorTokenContentType, required: true, location_name: "actorTokenContent"))
    TokenExchangeGrantTypeConfigType.add_member(:actor_token_scopes, Shapes::ShapeRef.new(shape: ScopesListType, location_name: "actorTokenScopes"))
    TokenExchangeGrantTypeConfigType.struct_class = Types::TokenExchangeGrantTypeConfigType

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

    ToolsDefinition.add_member(:protocol_version, Shapes::ShapeRef.new(shape: SchemaVersion, location_name: "protocolVersion"))
    ToolsDefinition.add_member(:inline_content, Shapes::ShapeRef.new(shape: InlineContent, location_name: "inlineContent"))
    ToolsDefinition.struct_class = Types::ToolsDefinition

    ToolsFileSystemConfiguration.add_member(:s3_files_configuration, Shapes::ShapeRef.new(shape: S3FilesConfiguration, location_name: "s3FilesConfiguration"))
    ToolsFileSystemConfiguration.add_member(:efs_configuration, Shapes::ShapeRef.new(shape: EfsConfiguration, location_name: "efsConfiguration"))
    ToolsFileSystemConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ToolsFileSystemConfiguration.add_member_subclass(:s3_files_configuration, Types::ToolsFileSystemConfiguration::S3FilesConfiguration)
    ToolsFileSystemConfiguration.add_member_subclass(:efs_configuration, Types::ToolsFileSystemConfiguration::EfsConfiguration)
    ToolsFileSystemConfiguration.add_member_subclass(:unknown, Types::ToolsFileSystemConfiguration::Unknown)
    ToolsFileSystemConfiguration.struct_class = Types::ToolsFileSystemConfiguration

    ToolsFileSystemConfigurations.member = Shapes::ShapeRef.new(shape: ToolsFileSystemConfiguration)

    TrafficSplitEntries.member = Shapes::ShapeRef.new(shape: TrafficSplitEntry)

    TrafficSplitEntry.add_member(:name, Shapes::ShapeRef.new(shape: TrafficSplitEntryNameString, required: true, location_name: "name"))
    TrafficSplitEntry.add_member(:weight, Shapes::ShapeRef.new(shape: TrafficSplitEntryWeightInteger, required: true, location_name: "weight"))
    TrafficSplitEntry.add_member(:configuration_bundle, Shapes::ShapeRef.new(shape: ConfigurationBundleReference, required: true, location_name: "configurationBundle"))
    TrafficSplitEntry.add_member(:description, Shapes::ShapeRef.new(shape: TrafficSplitEntryDescriptionString, location_name: "description"))
    TrafficSplitEntry.add_member(:metadata, Shapes::ShapeRef.new(shape: TrafficSplitMetadataMap, location_name: "metadata"))
    TrafficSplitEntry.struct_class = Types::TrafficSplitEntry

    TrafficSplitMetadataMap.key = Shapes::ShapeRef.new(shape: TrafficSplitMetadataKey)
    TrafficSplitMetadataMap.value = Shapes::ShapeRef.new(shape: TrafficSplitMetadataValue)

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

    Unit.struct_class = Types::Unit

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
    UpdateAgentRuntimeRequest.add_member(:network_configuration, Shapes::ShapeRef.new(shape: NetworkConfiguration, location_name: "networkConfiguration"))
    UpdateAgentRuntimeRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    UpdateAgentRuntimeRequest.add_member(:authorizer_configuration, Shapes::ShapeRef.new(shape: AuthorizerConfiguration, location_name: "authorizerConfiguration"))
    UpdateAgentRuntimeRequest.add_member(:request_header_configuration, Shapes::ShapeRef.new(shape: RequestHeaderConfiguration, location_name: "requestHeaderConfiguration"))
    UpdateAgentRuntimeRequest.add_member(:protocol_configuration, Shapes::ShapeRef.new(shape: ProtocolConfiguration, location_name: "protocolConfiguration"))
    UpdateAgentRuntimeRequest.add_member(:lifecycle_configuration, Shapes::ShapeRef.new(shape: LifecycleConfiguration, location_name: "lifecycleConfiguration"))
    UpdateAgentRuntimeRequest.add_member(:metadata_configuration, Shapes::ShapeRef.new(shape: RuntimeMetadataConfiguration, location_name: "metadataConfiguration"))
    UpdateAgentRuntimeRequest.add_member(:environment_variables, Shapes::ShapeRef.new(shape: EnvironmentVariablesMap, location_name: "environmentVariables"))
    UpdateAgentRuntimeRequest.add_member(:filesystem_configurations, Shapes::ShapeRef.new(shape: FilesystemConfigurations, location_name: "filesystemConfigurations"))
    UpdateAgentRuntimeRequest.add_member(:capacity_provider_configuration, Shapes::ShapeRef.new(shape: CapacityProviderConfiguration, location_name: "capacityProviderConfiguration"))
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
    UpdateApiKeyCredentialProviderRequest.add_member(:api_key, Shapes::ShapeRef.new(shape: DefaultApiKeyType, location_name: "apiKey"))
    UpdateApiKeyCredentialProviderRequest.add_member(:api_key_secret_config, Shapes::ShapeRef.new(shape: SecretReference, location_name: "apiKeySecretConfig"))
    UpdateApiKeyCredentialProviderRequest.add_member(:api_key_secret_source, Shapes::ShapeRef.new(shape: SecretSourceType, location_name: "apiKeySecretSource"))
    UpdateApiKeyCredentialProviderRequest.struct_class = Types::UpdateApiKeyCredentialProviderRequest

    UpdateApiKeyCredentialProviderResponse.add_member(:api_key_secret_arn, Shapes::ShapeRef.new(shape: Secret, required: true, location_name: "apiKeySecretArn"))
    UpdateApiKeyCredentialProviderResponse.add_member(:api_key_secret_json_key, Shapes::ShapeRef.new(shape: SecretJsonKeyType, location_name: "apiKeySecretJsonKey"))
    UpdateApiKeyCredentialProviderResponse.add_member(:api_key_secret_source, Shapes::ShapeRef.new(shape: SecretSourceType, location_name: "apiKeySecretSource"))
    UpdateApiKeyCredentialProviderResponse.add_member(:name, Shapes::ShapeRef.new(shape: CredentialProviderName, required: true, location_name: "name"))
    UpdateApiKeyCredentialProviderResponse.add_member(:credential_provider_arn, Shapes::ShapeRef.new(shape: ApiKeyCredentialProviderArnType, required: true, location_name: "credentialProviderArn"))
    UpdateApiKeyCredentialProviderResponse.add_member(:created_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdTime"))
    UpdateApiKeyCredentialProviderResponse.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "lastUpdatedTime"))
    UpdateApiKeyCredentialProviderResponse.struct_class = Types::UpdateApiKeyCredentialProviderResponse

    UpdateCapacityProviderInput.add_member(:capacity_provider_id, Shapes::ShapeRef.new(shape: CapacityProviderId, required: true, location: "uri", location_name: "capacityProviderId"))
    UpdateCapacityProviderInput.add_member(:description, Shapes::ShapeRef.new(shape: UpdatedDescription, location_name: "description"))
    UpdateCapacityProviderInput.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    UpdateCapacityProviderInput.struct_class = Types::UpdateCapacityProviderInput

    UpdateCapacityProviderOutput.add_member(:capacity_provider_id, Shapes::ShapeRef.new(shape: CapacityProviderId, required: true, location_name: "capacityProviderId"))
    UpdateCapacityProviderOutput.add_member(:capacity_provider_arn, Shapes::ShapeRef.new(shape: CapacityProviderArn, required: true, location_name: "capacityProviderArn"))
    UpdateCapacityProviderOutput.add_member(:name, Shapes::ShapeRef.new(shape: CapacityProviderName, required: true, location_name: "name"))
    UpdateCapacityProviderOutput.add_member(:status, Shapes::ShapeRef.new(shape: CapacityProviderStatus, required: true, location_name: "status"))
    UpdateCapacityProviderOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    UpdateCapacityProviderOutput.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "lastUpdatedAt"))
    UpdateCapacityProviderOutput.struct_class = Types::UpdateCapacityProviderOutput

    UpdateConfigurationBundleRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    UpdateConfigurationBundleRequest.add_member(:bundle_id, Shapes::ShapeRef.new(shape: ConfigurationBundleId, required: true, location: "uri", location_name: "bundleId"))
    UpdateConfigurationBundleRequest.add_member(:bundle_name, Shapes::ShapeRef.new(shape: ConfigurationBundleName, location_name: "bundleName"))
    UpdateConfigurationBundleRequest.add_member(:description, Shapes::ShapeRef.new(shape: ConfigurationBundleDescription, location_name: "description"))
    UpdateConfigurationBundleRequest.add_member(:components, Shapes::ShapeRef.new(shape: ComponentConfigurationMap, location_name: "components"))
    UpdateConfigurationBundleRequest.add_member(:parent_version_ids, Shapes::ShapeRef.new(shape: ConfigurationBundleVersionList, required: true, location_name: "parentVersionIds"))
    UpdateConfigurationBundleRequest.add_member(:branch_name, Shapes::ShapeRef.new(shape: BranchName, location_name: "branchName"))
    UpdateConfigurationBundleRequest.add_member(:commit_message, Shapes::ShapeRef.new(shape: UpdateConfigurationBundleRequestCommitMessageString, location_name: "commitMessage"))
    UpdateConfigurationBundleRequest.add_member(:created_by, Shapes::ShapeRef.new(shape: VersionCreatedBySource, location_name: "createdBy"))
    UpdateConfigurationBundleRequest.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "kmsKeyArn"))
    UpdateConfigurationBundleRequest.struct_class = Types::UpdateConfigurationBundleRequest

    UpdateConfigurationBundleResponse.add_member(:bundle_arn, Shapes::ShapeRef.new(shape: ConfigurationBundleArn, required: true, location_name: "bundleArn"))
    UpdateConfigurationBundleResponse.add_member(:bundle_id, Shapes::ShapeRef.new(shape: ConfigurationBundleId, required: true, location_name: "bundleId"))
    UpdateConfigurationBundleResponse.add_member(:version_id, Shapes::ShapeRef.new(shape: ConfigurationBundleVersion, required: true, location_name: "versionId"))
    UpdateConfigurationBundleResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    UpdateConfigurationBundleResponse.struct_class = Types::UpdateConfigurationBundleResponse

    UpdateConsentPortalRequest.add_member(:consent_portal_identifier, Shapes::ShapeRef.new(shape: ConsentPortalIdentifier, required: true, location_name: "consentPortalIdentifier"))
    UpdateConsentPortalRequest.add_member(:execution_role_arn, Shapes::ShapeRef.new(shape: ExecutionRoleArnType, location_name: "executionRoleArn"))
    UpdateConsentPortalRequest.add_member(:idp_config, Shapes::ShapeRef.new(shape: ConsentPortalIdpConfig, location_name: "idpConfig"))
    UpdateConsentPortalRequest.add_member(:description, Shapes::ShapeRef.new(shape: ConsentPortalDescriptionType, location_name: "description"))
    UpdateConsentPortalRequest.struct_class = Types::UpdateConsentPortalRequest

    UpdateConsentPortalResponse.add_member(:sources, Shapes::ShapeRef.new(shape: ConsentPortalSources, required: true, location_name: "sources"))
    UpdateConsentPortalResponse.add_member(:consent_portal_arn, Shapes::ShapeRef.new(shape: ConsentPortalArnType, required: true, location_name: "consentPortalArn"))
    UpdateConsentPortalResponse.add_member(:consent_portal_id, Shapes::ShapeRef.new(shape: ConsentPortalIdType, required: true, location_name: "consentPortalId"))
    UpdateConsentPortalResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    UpdateConsentPortalResponse.add_member(:description, Shapes::ShapeRef.new(shape: ConsentPortalDescriptionType, location_name: "description"))
    UpdateConsentPortalResponse.add_member(:execution_role_arn, Shapes::ShapeRef.new(shape: ExecutionRoleArnType, required: true, location_name: "executionRoleArn"))
    UpdateConsentPortalResponse.add_member(:idp_config, Shapes::ShapeRef.new(shape: ConsentPortalIdpConfig, required: true, location_name: "idpConfig"))
    UpdateConsentPortalResponse.add_member(:name, Shapes::ShapeRef.new(shape: ConsentPortalNameType, required: true, location_name: "name"))
    UpdateConsentPortalResponse.add_member(:portal_url, Shapes::ShapeRef.new(shape: PortalUrlType, location_name: "portalUrl"))
    UpdateConsentPortalResponse.add_member(:status, Shapes::ShapeRef.new(shape: ConsentPortalStatus, required: true, location_name: "status"))
    UpdateConsentPortalResponse.add_member(:status_reason, Shapes::ShapeRef.new(shape: StatusReasonType, location_name: "statusReason"))
    UpdateConsentPortalResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    UpdateConsentPortalResponse.struct_class = Types::UpdateConsentPortalResponse

    UpdateDatasetExamplesRequest.add_member(:dataset_id, Shapes::ShapeRef.new(shape: DatasetId, required: true, location: "uri", location_name: "datasetId"))
    UpdateDatasetExamplesRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    UpdateDatasetExamplesRequest.add_member(:examples, Shapes::ShapeRef.new(shape: UpdateDatasetExamplesRequestExamplesList, required: true, location_name: "examples"))
    UpdateDatasetExamplesRequest.struct_class = Types::UpdateDatasetExamplesRequest

    UpdateDatasetExamplesRequestExamplesList.member = Shapes::ShapeRef.new(shape: SensitiveJson)

    UpdateDatasetExamplesResponse.add_member(:dataset_arn, Shapes::ShapeRef.new(shape: DatasetArn, required: true, location_name: "datasetArn"))
    UpdateDatasetExamplesResponse.add_member(:dataset_id, Shapes::ShapeRef.new(shape: DatasetId, required: true, location_name: "datasetId"))
    UpdateDatasetExamplesResponse.add_member(:status, Shapes::ShapeRef.new(shape: DatasetStatus, required: true, location_name: "status"))
    UpdateDatasetExamplesResponse.add_member(:updated_count, Shapes::ShapeRef.new(shape: Long, required: true, location_name: "updatedCount"))
    UpdateDatasetExamplesResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    UpdateDatasetExamplesResponse.struct_class = Types::UpdateDatasetExamplesResponse

    UpdateDatasetRequest.add_member(:dataset_id, Shapes::ShapeRef.new(shape: DatasetId, required: true, location: "uri", location_name: "datasetId"))
    UpdateDatasetRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    UpdateDatasetRequest.add_member(:description, Shapes::ShapeRef.new(shape: UpdateDatasetRequestDescriptionString, location_name: "description"))
    UpdateDatasetRequest.struct_class = Types::UpdateDatasetRequest

    UpdateDatasetResponse.add_member(:dataset_arn, Shapes::ShapeRef.new(shape: DatasetArn, required: true, location_name: "datasetArn"))
    UpdateDatasetResponse.add_member(:dataset_id, Shapes::ShapeRef.new(shape: DatasetId, required: true, location_name: "datasetId"))
    UpdateDatasetResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    UpdateDatasetResponse.struct_class = Types::UpdateDatasetResponse

    UpdateEvaluatorRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    UpdateEvaluatorRequest.add_member(:evaluator_id, Shapes::ShapeRef.new(shape: EvaluatorId, required: true, location: "uri", location_name: "evaluatorId"))
    UpdateEvaluatorRequest.add_member(:description, Shapes::ShapeRef.new(shape: EvaluatorDescription, location_name: "description"))
    UpdateEvaluatorRequest.add_member(:evaluator_config, Shapes::ShapeRef.new(shape: EvaluatorConfig, location_name: "evaluatorConfig"))
    UpdateEvaluatorRequest.add_member(:level, Shapes::ShapeRef.new(shape: EvaluatorLevel, location_name: "level"))
    UpdateEvaluatorRequest.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "kmsKeyArn"))
    UpdateEvaluatorRequest.struct_class = Types::UpdateEvaluatorRequest

    UpdateEvaluatorResponse.add_member(:evaluator_arn, Shapes::ShapeRef.new(shape: EvaluatorArn, required: true, location_name: "evaluatorArn"))
    UpdateEvaluatorResponse.add_member(:evaluator_id, Shapes::ShapeRef.new(shape: EvaluatorId, required: true, location_name: "evaluatorId"))
    UpdateEvaluatorResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    UpdateEvaluatorResponse.add_member(:status, Shapes::ShapeRef.new(shape: EvaluatorStatus, required: true, location_name: "status"))
    UpdateEvaluatorResponse.struct_class = Types::UpdateEvaluatorResponse

    UpdateGatewayRateLimitRequest.add_member(:gateway_identifier, Shapes::ShapeRef.new(shape: GatewayIdentifier, required: true, location: "uri", location_name: "gatewayIdentifier"))
    UpdateGatewayRateLimitRequest.add_member(:rate_limit_id, Shapes::ShapeRef.new(shape: GatewayRateLimitId, required: true, location: "uri", location_name: "rateLimitId"))
    UpdateGatewayRateLimitRequest.add_member(:description, Shapes::ShapeRef.new(shape: GatewayRateLimitDescription, location_name: "description"))
    UpdateGatewayRateLimitRequest.add_member(:entries, Shapes::ShapeRef.new(shape: LimitEntries, required: true, location_name: "entries"))
    UpdateGatewayRateLimitRequest.struct_class = Types::UpdateGatewayRateLimitRequest

    UpdateGatewayRateLimitResponse.add_member(:rate_limit_id, Shapes::ShapeRef.new(shape: GatewayRateLimitId, required: true, location_name: "rateLimitId"))
    UpdateGatewayRateLimitResponse.add_member(:gateway_identifier, Shapes::ShapeRef.new(shape: GatewayIdentifier, required: true, location_name: "gatewayIdentifier"))
    UpdateGatewayRateLimitResponse.add_member(:description, Shapes::ShapeRef.new(shape: GatewayRateLimitDescription, location_name: "description"))
    UpdateGatewayRateLimitResponse.add_member(:dimension_keys, Shapes::ShapeRef.new(shape: DimensionKeys, required: true, location_name: "dimensionKeys"))
    UpdateGatewayRateLimitResponse.add_member(:entries, Shapes::ShapeRef.new(shape: LimitEntries, required: true, location_name: "entries"))
    UpdateGatewayRateLimitResponse.add_member(:status, Shapes::ShapeRef.new(shape: GatewayRateLimitStatus, required: true, location_name: "status"))
    UpdateGatewayRateLimitResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    UpdateGatewayRateLimitResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "updatedAt"))
    UpdateGatewayRateLimitResponse.struct_class = Types::UpdateGatewayRateLimitResponse

    UpdateGatewayRequest.add_member(:gateway_identifier, Shapes::ShapeRef.new(shape: GatewayIdentifier, required: true, location: "uri", location_name: "gatewayIdentifier"))
    UpdateGatewayRequest.add_member(:name, Shapes::ShapeRef.new(shape: GatewayName, required: true, location_name: "name"))
    UpdateGatewayRequest.add_member(:description, Shapes::ShapeRef.new(shape: GatewayDescription, location_name: "description"))
    UpdateGatewayRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "roleArn"))
    UpdateGatewayRequest.add_member(:protocol_type, Shapes::ShapeRef.new(shape: GatewayProtocolType, location_name: "protocolType"))
    UpdateGatewayRequest.add_member(:protocol_configuration, Shapes::ShapeRef.new(shape: GatewayProtocolConfiguration, location_name: "protocolConfiguration"))
    UpdateGatewayRequest.add_member(:authorizer_type, Shapes::ShapeRef.new(shape: AuthorizerType, required: true, location_name: "authorizerType"))
    UpdateGatewayRequest.add_member(:authorizer_configuration, Shapes::ShapeRef.new(shape: AuthorizerConfiguration, location_name: "authorizerConfiguration"))
    UpdateGatewayRequest.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "kmsKeyArn"))
    UpdateGatewayRequest.add_member(:custom_transform_configuration, Shapes::ShapeRef.new(shape: CustomTransformConfiguration, location_name: "customTransformConfiguration"))
    UpdateGatewayRequest.add_member(:interceptor_configurations, Shapes::ShapeRef.new(shape: GatewayInterceptorConfigurations, location_name: "interceptorConfigurations"))
    UpdateGatewayRequest.add_member(:policy_engine_configuration, Shapes::ShapeRef.new(shape: GatewayPolicyEngineConfiguration, location_name: "policyEngineConfiguration"))
    UpdateGatewayRequest.add_member(:exception_level, Shapes::ShapeRef.new(shape: ExceptionLevel, location_name: "exceptionLevel"))
    UpdateGatewayRequest.add_member(:waf_configuration, Shapes::ShapeRef.new(shape: WafConfiguration, location_name: "wafConfiguration"))
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
    UpdateGatewayResponse.add_member(:protocol_type, Shapes::ShapeRef.new(shape: GatewayProtocolType, location_name: "protocolType"))
    UpdateGatewayResponse.add_member(:protocol_configuration, Shapes::ShapeRef.new(shape: GatewayProtocolConfiguration, location_name: "protocolConfiguration"))
    UpdateGatewayResponse.add_member(:authorizer_type, Shapes::ShapeRef.new(shape: AuthorizerType, required: true, location_name: "authorizerType"))
    UpdateGatewayResponse.add_member(:authorizer_configuration, Shapes::ShapeRef.new(shape: AuthorizerConfiguration, location_name: "authorizerConfiguration"))
    UpdateGatewayResponse.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "kmsKeyArn"))
    UpdateGatewayResponse.add_member(:custom_transform_configuration, Shapes::ShapeRef.new(shape: CustomTransformConfiguration, location_name: "customTransformConfiguration"))
    UpdateGatewayResponse.add_member(:interceptor_configurations, Shapes::ShapeRef.new(shape: GatewayInterceptorConfigurations, location_name: "interceptorConfigurations"))
    UpdateGatewayResponse.add_member(:policy_engine_configuration, Shapes::ShapeRef.new(shape: GatewayPolicyEngineConfiguration, location_name: "policyEngineConfiguration"))
    UpdateGatewayResponse.add_member(:workload_identity_details, Shapes::ShapeRef.new(shape: WorkloadIdentityDetails, location_name: "workloadIdentityDetails"))
    UpdateGatewayResponse.add_member(:exception_level, Shapes::ShapeRef.new(shape: ExceptionLevel, location_name: "exceptionLevel"))
    UpdateGatewayResponse.add_member(:web_acl_arn, Shapes::ShapeRef.new(shape: WebAclArn, location_name: "webAclArn"))
    UpdateGatewayResponse.add_member(:waf_configuration, Shapes::ShapeRef.new(shape: WafConfiguration, location_name: "wafConfiguration"))
    UpdateGatewayResponse.struct_class = Types::UpdateGatewayResponse

    UpdateGatewayRuleRequest.add_member(:gateway_identifier, Shapes::ShapeRef.new(shape: GatewayIdentifier, required: true, location: "uri", location_name: "gatewayIdentifier"))
    UpdateGatewayRuleRequest.add_member(:rule_id, Shapes::ShapeRef.new(shape: GatewayRuleId, required: true, location: "uri", location_name: "ruleId"))
    UpdateGatewayRuleRequest.add_member(:priority, Shapes::ShapeRef.new(shape: GatewayRulePriority, location_name: "priority"))
    UpdateGatewayRuleRequest.add_member(:conditions, Shapes::ShapeRef.new(shape: Conditions, location_name: "conditions"))
    UpdateGatewayRuleRequest.add_member(:actions, Shapes::ShapeRef.new(shape: Actions, location_name: "actions"))
    UpdateGatewayRuleRequest.add_member(:description, Shapes::ShapeRef.new(shape: GatewayRuleDescription, location_name: "description"))
    UpdateGatewayRuleRequest.struct_class = Types::UpdateGatewayRuleRequest

    UpdateGatewayRuleResponse.add_member(:rule_id, Shapes::ShapeRef.new(shape: GatewayRuleId, required: true, location_name: "ruleId"))
    UpdateGatewayRuleResponse.add_member(:gateway_arn, Shapes::ShapeRef.new(shape: GatewayArn, required: true, location_name: "gatewayArn"))
    UpdateGatewayRuleResponse.add_member(:priority, Shapes::ShapeRef.new(shape: GatewayRulePriority, required: true, location_name: "priority"))
    UpdateGatewayRuleResponse.add_member(:conditions, Shapes::ShapeRef.new(shape: Conditions, location_name: "conditions"))
    UpdateGatewayRuleResponse.add_member(:actions, Shapes::ShapeRef.new(shape: Actions, required: true, location_name: "actions"))
    UpdateGatewayRuleResponse.add_member(:description, Shapes::ShapeRef.new(shape: GatewayRuleDescription, location_name: "description"))
    UpdateGatewayRuleResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    UpdateGatewayRuleResponse.add_member(:status, Shapes::ShapeRef.new(shape: GatewayRuleStatus, required: true, location_name: "status"))
    UpdateGatewayRuleResponse.add_member(:system, Shapes::ShapeRef.new(shape: SystemManagedBlock, location_name: "system"))
    UpdateGatewayRuleResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, location_name: "updatedAt"))
    UpdateGatewayRuleResponse.struct_class = Types::UpdateGatewayRuleResponse

    UpdateGatewayTargetRequest.add_member(:gateway_identifier, Shapes::ShapeRef.new(shape: GatewayIdentifier, required: true, location: "uri", location_name: "gatewayIdentifier"))
    UpdateGatewayTargetRequest.add_member(:target_id, Shapes::ShapeRef.new(shape: TargetId, required: true, location: "uri", location_name: "targetId"))
    UpdateGatewayTargetRequest.add_member(:name, Shapes::ShapeRef.new(shape: TargetName, location_name: "name"))
    UpdateGatewayTargetRequest.add_member(:description, Shapes::ShapeRef.new(shape: TargetDescription, location_name: "description"))
    UpdateGatewayTargetRequest.add_member(:target_configuration, Shapes::ShapeRef.new(shape: TargetConfiguration, required: true, location_name: "targetConfiguration"))
    UpdateGatewayTargetRequest.add_member(:credential_provider_configurations, Shapes::ShapeRef.new(shape: CredentialProviderConfigurations, location_name: "credentialProviderConfigurations"))
    UpdateGatewayTargetRequest.add_member(:metadata_configuration, Shapes::ShapeRef.new(shape: MetadataConfiguration, location_name: "metadataConfiguration"))
    UpdateGatewayTargetRequest.add_member(:private_endpoint, Shapes::ShapeRef.new(shape: PrivateEndpoint, location_name: "privateEndpoint"))
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
    UpdateGatewayTargetResponse.add_member(:metadata_configuration, Shapes::ShapeRef.new(shape: MetadataConfiguration, location_name: "metadataConfiguration"))
    UpdateGatewayTargetResponse.add_member(:private_endpoint, Shapes::ShapeRef.new(shape: PrivateEndpoint, location_name: "privateEndpoint"))
    UpdateGatewayTargetResponse.add_member(:private_endpoint_managed_resources, Shapes::ShapeRef.new(shape: PrivateEndpointManagedResources, location_name: "privateEndpointManagedResources"))
    UpdateGatewayTargetResponse.add_member(:authorization_data, Shapes::ShapeRef.new(shape: AuthorizationData, location_name: "authorizationData"))
    UpdateGatewayTargetResponse.add_member(:protocol_type, Shapes::ShapeRef.new(shape: TargetProtocolType, location_name: "protocolType"))
    UpdateGatewayTargetResponse.struct_class = Types::UpdateGatewayTargetResponse

    UpdateHarnessEndpointRequest.add_member(:harness_id, Shapes::ShapeRef.new(shape: HarnessId, required: true, location: "uri", location_name: "harnessId"))
    UpdateHarnessEndpointRequest.add_member(:endpoint_name, Shapes::ShapeRef.new(shape: HarnessEndpointName, required: true, location: "uri", location_name: "endpointName"))
    UpdateHarnessEndpointRequest.add_member(:target_version, Shapes::ShapeRef.new(shape: HarnessVersion, location_name: "targetVersion"))
    UpdateHarnessEndpointRequest.add_member(:description, Shapes::ShapeRef.new(shape: HarnessEndpointDescription, location_name: "description"))
    UpdateHarnessEndpointRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    UpdateHarnessEndpointRequest.struct_class = Types::UpdateHarnessEndpointRequest

    UpdateHarnessEndpointResponse.add_member(:endpoint, Shapes::ShapeRef.new(shape: HarnessEndpoint, required: true, location_name: "endpoint"))
    UpdateHarnessEndpointResponse.struct_class = Types::UpdateHarnessEndpointResponse

    UpdateHarnessRequest.add_member(:harness_id, Shapes::ShapeRef.new(shape: HarnessId, required: true, location: "uri", location_name: "harnessId"))
    UpdateHarnessRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    UpdateHarnessRequest.add_member(:execution_role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "executionRoleArn"))
    UpdateHarnessRequest.add_member(:environment, Shapes::ShapeRef.new(shape: HarnessEnvironmentProviderRequest, location_name: "environment"))
    UpdateHarnessRequest.add_member(:environment_artifact, Shapes::ShapeRef.new(shape: UpdatedHarnessEnvironmentArtifact, location_name: "environmentArtifact"))
    UpdateHarnessRequest.add_member(:environment_variables, Shapes::ShapeRef.new(shape: EnvironmentVariablesMap, location_name: "environmentVariables"))
    UpdateHarnessRequest.add_member(:authorizer_configuration, Shapes::ShapeRef.new(shape: UpdatedAuthorizerConfiguration, location_name: "authorizerConfiguration"))
    UpdateHarnessRequest.add_member(:model, Shapes::ShapeRef.new(shape: HarnessModelConfiguration, location_name: "model"))
    UpdateHarnessRequest.add_member(:system_prompt, Shapes::ShapeRef.new(shape: HarnessSystemPrompt, location_name: "systemPrompt"))
    UpdateHarnessRequest.add_member(:tools, Shapes::ShapeRef.new(shape: HarnessTools, location_name: "tools"))
    UpdateHarnessRequest.add_member(:skills, Shapes::ShapeRef.new(shape: HarnessSkills, location_name: "skills"))
    UpdateHarnessRequest.add_member(:allowed_tools, Shapes::ShapeRef.new(shape: HarnessAllowedTools, location_name: "allowedTools"))
    UpdateHarnessRequest.add_member(:memory, Shapes::ShapeRef.new(shape: UpdatedHarnessMemoryConfiguration, location_name: "memory"))
    UpdateHarnessRequest.add_member(:truncation, Shapes::ShapeRef.new(shape: HarnessTruncationConfiguration, location_name: "truncation"))
    UpdateHarnessRequest.add_member(:max_iterations, Shapes::ShapeRef.new(shape: Integer, location_name: "maxIterations"))
    UpdateHarnessRequest.add_member(:max_tokens, Shapes::ShapeRef.new(shape: Integer, location_name: "maxTokens"))
    UpdateHarnessRequest.add_member(:timeout_seconds, Shapes::ShapeRef.new(shape: Integer, location_name: "timeoutSeconds"))
    UpdateHarnessRequest.struct_class = Types::UpdateHarnessRequest

    UpdateHarnessResponse.add_member(:harness, Shapes::ShapeRef.new(shape: Harness, required: true, location_name: "harness"))
    UpdateHarnessResponse.struct_class = Types::UpdateHarnessResponse

    UpdateMemoryInput.add_member(:client_token, Shapes::ShapeRef.new(shape: UpdateMemoryInputClientTokenString, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    UpdateMemoryInput.add_member(:memory_id, Shapes::ShapeRef.new(shape: MemoryId, required: true, location: "uri", location_name: "memoryId"))
    UpdateMemoryInput.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    UpdateMemoryInput.add_member(:event_expiry_duration, Shapes::ShapeRef.new(shape: UpdateMemoryInputEventExpiryDurationInteger, location_name: "eventExpiryDuration"))
    UpdateMemoryInput.add_member(:memory_execution_role_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "memoryExecutionRoleArn"))
    UpdateMemoryInput.add_member(:memory_strategies, Shapes::ShapeRef.new(shape: ModifyMemoryStrategies, location_name: "memoryStrategies"))
    UpdateMemoryInput.add_member(:add_indexed_keys, Shapes::ShapeRef.new(shape: IndexedKeysList, location_name: "addIndexedKeys"))
    UpdateMemoryInput.add_member(:namespace_keys, Shapes::ShapeRef.new(shape: NamespaceKeysList, location_name: "namespaceKeys"))
    UpdateMemoryInput.add_member(:stream_delivery_resources, Shapes::ShapeRef.new(shape: StreamDeliveryResources, location_name: "streamDeliveryResources"))
    UpdateMemoryInput.struct_class = Types::UpdateMemoryInput

    UpdateMemoryOutput.add_member(:memory, Shapes::ShapeRef.new(shape: Memory, location_name: "memory"))
    UpdateMemoryOutput.struct_class = Types::UpdateMemoryOutput

    UpdateOauth2CredentialProviderRequest.add_member(:name, Shapes::ShapeRef.new(shape: CredentialProviderName, required: true, location_name: "name"))
    UpdateOauth2CredentialProviderRequest.add_member(:credential_provider_vendor, Shapes::ShapeRef.new(shape: CredentialProviderVendorType, required: true, location_name: "credentialProviderVendor"))
    UpdateOauth2CredentialProviderRequest.add_member(:oauth2_provider_config_input, Shapes::ShapeRef.new(shape: Oauth2ProviderConfigInput, required: true, location_name: "oauth2ProviderConfigInput"))
    UpdateOauth2CredentialProviderRequest.struct_class = Types::UpdateOauth2CredentialProviderRequest

    UpdateOauth2CredentialProviderResponse.add_member(:client_secret_arn, Shapes::ShapeRef.new(shape: Secret, required: true, location_name: "clientSecretArn"))
    UpdateOauth2CredentialProviderResponse.add_member(:client_secret_json_key, Shapes::ShapeRef.new(shape: SecretJsonKeyType, location_name: "clientSecretJsonKey"))
    UpdateOauth2CredentialProviderResponse.add_member(:client_secret_source, Shapes::ShapeRef.new(shape: SecretSourceType, location_name: "clientSecretSource"))
    UpdateOauth2CredentialProviderResponse.add_member(:name, Shapes::ShapeRef.new(shape: CredentialProviderName, required: true, location_name: "name"))
    UpdateOauth2CredentialProviderResponse.add_member(:credential_provider_vendor, Shapes::ShapeRef.new(shape: CredentialProviderVendorType, required: true, location_name: "credentialProviderVendor"))
    UpdateOauth2CredentialProviderResponse.add_member(:credential_provider_arn, Shapes::ShapeRef.new(shape: CredentialProviderArnType, required: true, location_name: "credentialProviderArn"))
    UpdateOauth2CredentialProviderResponse.add_member(:callback_url, Shapes::ShapeRef.new(shape: String, location_name: "callbackUrl"))
    UpdateOauth2CredentialProviderResponse.add_member(:oauth2_provider_config_output, Shapes::ShapeRef.new(shape: Oauth2ProviderConfigOutput, required: true, location_name: "oauth2ProviderConfigOutput"))
    UpdateOauth2CredentialProviderResponse.add_member(:created_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdTime"))
    UpdateOauth2CredentialProviderResponse.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "lastUpdatedTime"))
    UpdateOauth2CredentialProviderResponse.add_member(:status, Shapes::ShapeRef.new(shape: Status, location_name: "status"))
    UpdateOauth2CredentialProviderResponse.struct_class = Types::UpdateOauth2CredentialProviderResponse

    UpdateOnlineEvaluationConfigRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    UpdateOnlineEvaluationConfigRequest.add_member(:online_evaluation_config_id, Shapes::ShapeRef.new(shape: OnlineEvaluationConfigId, required: true, location: "uri", location_name: "onlineEvaluationConfigId"))
    UpdateOnlineEvaluationConfigRequest.add_member(:description, Shapes::ShapeRef.new(shape: EvaluationConfigDescription, location_name: "description"))
    UpdateOnlineEvaluationConfigRequest.add_member(:rule, Shapes::ShapeRef.new(shape: Rule, location_name: "rule"))
    UpdateOnlineEvaluationConfigRequest.add_member(:data_source_config, Shapes::ShapeRef.new(shape: DataSourceConfig, location_name: "dataSourceConfig"))
    UpdateOnlineEvaluationConfigRequest.add_member(:evaluators, Shapes::ShapeRef.new(shape: EvaluatorList, location_name: "evaluators"))
    UpdateOnlineEvaluationConfigRequest.add_member(:insights, Shapes::ShapeRef.new(shape: InsightList, location_name: "insights"))
    UpdateOnlineEvaluationConfigRequest.add_member(:clustering_config, Shapes::ShapeRef.new(shape: ClusteringConfig, location_name: "clusteringConfig"))
    UpdateOnlineEvaluationConfigRequest.add_member(:output_config, Shapes::ShapeRef.new(shape: OutputConfig, location_name: "outputConfig"))
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

    UpdatePaymentConnectorRequest.add_member(:payment_manager_id, Shapes::ShapeRef.new(shape: PaymentManagerId, required: true, location: "uri", location_name: "paymentManagerId"))
    UpdatePaymentConnectorRequest.add_member(:payment_connector_id, Shapes::ShapeRef.new(shape: PaymentConnectorId, required: true, location: "uri", location_name: "paymentConnectorId"))
    UpdatePaymentConnectorRequest.add_member(:description, Shapes::ShapeRef.new(shape: PaymentsDescription, location_name: "description"))
    UpdatePaymentConnectorRequest.add_member(:type, Shapes::ShapeRef.new(shape: PaymentConnectorType, location_name: "type"))
    UpdatePaymentConnectorRequest.add_member(:credential_provider_configurations, Shapes::ShapeRef.new(shape: CredentialsProviderConfigurations, location_name: "credentialProviderConfigurations"))
    UpdatePaymentConnectorRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    UpdatePaymentConnectorRequest.struct_class = Types::UpdatePaymentConnectorRequest

    UpdatePaymentConnectorResponse.add_member(:payment_connector_id, Shapes::ShapeRef.new(shape: PaymentConnectorId, required: true, location_name: "paymentConnectorId"))
    UpdatePaymentConnectorResponse.add_member(:payment_manager_id, Shapes::ShapeRef.new(shape: PaymentManagerId, required: true, location_name: "paymentManagerId"))
    UpdatePaymentConnectorResponse.add_member(:name, Shapes::ShapeRef.new(shape: PaymentConnectorName, required: true, location_name: "name"))
    UpdatePaymentConnectorResponse.add_member(:type, Shapes::ShapeRef.new(shape: PaymentConnectorType, required: true, location_name: "type"))
    UpdatePaymentConnectorResponse.add_member(:credential_provider_configurations, Shapes::ShapeRef.new(shape: CredentialsProviderConfigurations, required: true, location_name: "credentialProviderConfigurations"))
    UpdatePaymentConnectorResponse.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "lastUpdatedAt"))
    UpdatePaymentConnectorResponse.add_member(:status, Shapes::ShapeRef.new(shape: PaymentConnectorStatus, required: true, location_name: "status"))
    UpdatePaymentConnectorResponse.add_member(:authorization_url, Shapes::ShapeRef.new(shape: PaymentConnectorAuthorizationUrl, location_name: "authorizationUrl"))
    UpdatePaymentConnectorResponse.struct_class = Types::UpdatePaymentConnectorResponse

    UpdatePaymentCredentialProviderRequest.add_member(:name, Shapes::ShapeRef.new(shape: CredentialProviderName, required: true, location_name: "name"))
    UpdatePaymentCredentialProviderRequest.add_member(:credential_provider_vendor, Shapes::ShapeRef.new(shape: PaymentCredentialProviderVendorType, required: true, location_name: "credentialProviderVendor"))
    UpdatePaymentCredentialProviderRequest.add_member(:provider_configuration_input, Shapes::ShapeRef.new(shape: PaymentProviderConfigurationInput, required: true, location_name: "providerConfigurationInput"))
    UpdatePaymentCredentialProviderRequest.struct_class = Types::UpdatePaymentCredentialProviderRequest

    UpdatePaymentCredentialProviderResponse.add_member(:name, Shapes::ShapeRef.new(shape: CredentialProviderName, required: true, location_name: "name"))
    UpdatePaymentCredentialProviderResponse.add_member(:credential_provider_vendor, Shapes::ShapeRef.new(shape: PaymentCredentialProviderVendorType, required: true, location_name: "credentialProviderVendor"))
    UpdatePaymentCredentialProviderResponse.add_member(:credential_provider_arn, Shapes::ShapeRef.new(shape: PaymentCredentialProviderArnType, required: true, location_name: "credentialProviderArn"))
    UpdatePaymentCredentialProviderResponse.add_member(:provider_configuration_output, Shapes::ShapeRef.new(shape: PaymentProviderConfigurationOutput, required: true, location_name: "providerConfigurationOutput"))
    UpdatePaymentCredentialProviderResponse.add_member(:created_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdTime"))
    UpdatePaymentCredentialProviderResponse.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "lastUpdatedTime"))
    UpdatePaymentCredentialProviderResponse.struct_class = Types::UpdatePaymentCredentialProviderResponse

    UpdatePaymentManagerRequest.add_member(:payment_manager_id, Shapes::ShapeRef.new(shape: PaymentManagerId, required: true, location: "uri", location_name: "paymentManagerId"))
    UpdatePaymentManagerRequest.add_member(:description, Shapes::ShapeRef.new(shape: PaymentsDescription, location_name: "description"))
    UpdatePaymentManagerRequest.add_member(:authorizer_type, Shapes::ShapeRef.new(shape: PaymentsAuthorizerType, location_name: "authorizerType"))
    UpdatePaymentManagerRequest.add_member(:authorizer_configuration, Shapes::ShapeRef.new(shape: AuthorizerConfiguration, location_name: "authorizerConfiguration"))
    UpdatePaymentManagerRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "roleArn"))
    UpdatePaymentManagerRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    UpdatePaymentManagerRequest.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "kmsKeyArn"))
    UpdatePaymentManagerRequest.struct_class = Types::UpdatePaymentManagerRequest

    UpdatePaymentManagerResponse.add_member(:payment_manager_arn, Shapes::ShapeRef.new(shape: PaymentManagerArn, required: true, location_name: "paymentManagerArn"))
    UpdatePaymentManagerResponse.add_member(:payment_manager_id, Shapes::ShapeRef.new(shape: PaymentManagerId, required: true, location_name: "paymentManagerId"))
    UpdatePaymentManagerResponse.add_member(:name, Shapes::ShapeRef.new(shape: PaymentManagerName, required: true, location_name: "name"))
    UpdatePaymentManagerResponse.add_member(:authorizer_type, Shapes::ShapeRef.new(shape: PaymentsAuthorizerType, required: true, location_name: "authorizerType"))
    UpdatePaymentManagerResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "roleArn"))
    UpdatePaymentManagerResponse.add_member(:workload_identity_details, Shapes::ShapeRef.new(shape: WorkloadIdentityDetails, location_name: "workloadIdentityDetails"))
    UpdatePaymentManagerResponse.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "lastUpdatedAt"))
    UpdatePaymentManagerResponse.add_member(:status, Shapes::ShapeRef.new(shape: PaymentManagerStatus, required: true, location_name: "status"))
    UpdatePaymentManagerResponse.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "kmsKeyArn"))
    UpdatePaymentManagerResponse.struct_class = Types::UpdatePaymentManagerResponse

    UpdatePolicyEngineRequest.add_member(:policy_engine_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "policyEngineId"))
    UpdatePolicyEngineRequest.add_member(:description, Shapes::ShapeRef.new(shape: UpdatedDescription, location_name: "description"))
    UpdatePolicyEngineRequest.struct_class = Types::UpdatePolicyEngineRequest

    UpdatePolicyEngineResponse.add_member(:policy_engine_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "policyEngineId"))
    UpdatePolicyEngineResponse.add_member(:name, Shapes::ShapeRef.new(shape: PolicyEngineName, required: true, location_name: "name"))
    UpdatePolicyEngineResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    UpdatePolicyEngineResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "updatedAt"))
    UpdatePolicyEngineResponse.add_member(:policy_engine_arn, Shapes::ShapeRef.new(shape: PolicyEngineArn, required: true, location_name: "policyEngineArn"))
    UpdatePolicyEngineResponse.add_member(:status, Shapes::ShapeRef.new(shape: PolicyEngineStatus, required: true, location_name: "status"))
    UpdatePolicyEngineResponse.add_member(:encryption_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "encryptionKeyArn"))
    UpdatePolicyEngineResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    UpdatePolicyEngineResponse.add_member(:status_reasons, Shapes::ShapeRef.new(shape: PolicyStatusReasons, required: true, location_name: "statusReasons"))
    UpdatePolicyEngineResponse.struct_class = Types::UpdatePolicyEngineResponse

    UpdatePolicyRequest.add_member(:policy_engine_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "policyEngineId"))
    UpdatePolicyRequest.add_member(:policy_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "policyId"))
    UpdatePolicyRequest.add_member(:description, Shapes::ShapeRef.new(shape: UpdatedDescription, location_name: "description"))
    UpdatePolicyRequest.add_member(:definition, Shapes::ShapeRef.new(shape: PolicyDefinition, location_name: "definition"))
    UpdatePolicyRequest.add_member(:validation_mode, Shapes::ShapeRef.new(shape: PolicyValidationMode, location_name: "validationMode"))
    UpdatePolicyRequest.add_member(:enforcement_mode, Shapes::ShapeRef.new(shape: EnforcementMode, location_name: "enforcementMode"))
    UpdatePolicyRequest.struct_class = Types::UpdatePolicyRequest

    UpdatePolicyResponse.add_member(:policy_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "policyId"))
    UpdatePolicyResponse.add_member(:name, Shapes::ShapeRef.new(shape: PolicyName, required: true, location_name: "name"))
    UpdatePolicyResponse.add_member(:policy_engine_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "policyEngineId"))
    UpdatePolicyResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    UpdatePolicyResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "updatedAt"))
    UpdatePolicyResponse.add_member(:policy_arn, Shapes::ShapeRef.new(shape: PolicyArn, required: true, location_name: "policyArn"))
    UpdatePolicyResponse.add_member(:status, Shapes::ShapeRef.new(shape: PolicyStatus, required: true, location_name: "status"))
    UpdatePolicyResponse.add_member(:enforcement_mode, Shapes::ShapeRef.new(shape: EnforcementMode, location_name: "enforcementMode"))
    UpdatePolicyResponse.add_member(:definition, Shapes::ShapeRef.new(shape: PolicyDefinition, required: true, location_name: "definition"))
    UpdatePolicyResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    UpdatePolicyResponse.add_member(:status_reasons, Shapes::ShapeRef.new(shape: PolicyStatusReasons, required: true, location_name: "statusReasons"))
    UpdatePolicyResponse.struct_class = Types::UpdatePolicyResponse

    UpdateRegistryRecordRequest.add_member(:registry_id, Shapes::ShapeRef.new(shape: RegistryIdentifier, required: true, location: "uri", location_name: "registryId"))
    UpdateRegistryRecordRequest.add_member(:record_id, Shapes::ShapeRef.new(shape: RecordIdentifier, required: true, location: "uri", location_name: "recordId"))
    UpdateRegistryRecordRequest.add_member(:name, Shapes::ShapeRef.new(shape: RegistryRecordName, location_name: "name"))
    UpdateRegistryRecordRequest.add_member(:description, Shapes::ShapeRef.new(shape: UpdatedDescription, location_name: "description"))
    UpdateRegistryRecordRequest.add_member(:descriptor_type, Shapes::ShapeRef.new(shape: DescriptorType, location_name: "descriptorType"))
    UpdateRegistryRecordRequest.add_member(:descriptors, Shapes::ShapeRef.new(shape: UpdatedDescriptors, location_name: "descriptors"))
    UpdateRegistryRecordRequest.add_member(:record_version, Shapes::ShapeRef.new(shape: RegistryRecordVersion, location_name: "recordVersion"))
    UpdateRegistryRecordRequest.add_member(:synchronization_type, Shapes::ShapeRef.new(shape: UpdatedSynchronizationType, location_name: "synchronizationType"))
    UpdateRegistryRecordRequest.add_member(:synchronization_configuration, Shapes::ShapeRef.new(shape: UpdatedSynchronizationConfiguration, location_name: "synchronizationConfiguration"))
    UpdateRegistryRecordRequest.add_member(:trigger_synchronization, Shapes::ShapeRef.new(shape: Boolean, location_name: "triggerSynchronization"))
    UpdateRegistryRecordRequest.struct_class = Types::UpdateRegistryRecordRequest

    UpdateRegistryRecordResponse.add_member(:registry_arn, Shapes::ShapeRef.new(shape: RegistryArn, required: true, location_name: "registryArn"))
    UpdateRegistryRecordResponse.add_member(:record_arn, Shapes::ShapeRef.new(shape: RegistryRecordArn, required: true, location_name: "recordArn"))
    UpdateRegistryRecordResponse.add_member(:record_id, Shapes::ShapeRef.new(shape: RegistryRecordId, required: true, location_name: "recordId"))
    UpdateRegistryRecordResponse.add_member(:name, Shapes::ShapeRef.new(shape: RegistryRecordName, required: true, location_name: "name"))
    UpdateRegistryRecordResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    UpdateRegistryRecordResponse.add_member(:descriptor_type, Shapes::ShapeRef.new(shape: DescriptorType, required: true, location_name: "descriptorType"))
    UpdateRegistryRecordResponse.add_member(:descriptors, Shapes::ShapeRef.new(shape: Descriptors, required: true, location_name: "descriptors"))
    UpdateRegistryRecordResponse.add_member(:record_version, Shapes::ShapeRef.new(shape: RegistryRecordVersion, location_name: "recordVersion"))
    UpdateRegistryRecordResponse.add_member(:status, Shapes::ShapeRef.new(shape: RegistryRecordStatus, required: true, location_name: "status"))
    UpdateRegistryRecordResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    UpdateRegistryRecordResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "updatedAt"))
    UpdateRegistryRecordResponse.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    UpdateRegistryRecordResponse.add_member(:synchronization_type, Shapes::ShapeRef.new(shape: SynchronizationType, location_name: "synchronizationType"))
    UpdateRegistryRecordResponse.add_member(:synchronization_configuration, Shapes::ShapeRef.new(shape: SynchronizationConfiguration, location_name: "synchronizationConfiguration"))
    UpdateRegistryRecordResponse.struct_class = Types::UpdateRegistryRecordResponse

    UpdateRegistryRecordStatusRequest.add_member(:registry_id, Shapes::ShapeRef.new(shape: RegistryIdentifier, required: true, location: "uri", location_name: "registryId"))
    UpdateRegistryRecordStatusRequest.add_member(:record_id, Shapes::ShapeRef.new(shape: RecordIdentifier, required: true, location: "uri", location_name: "recordId"))
    UpdateRegistryRecordStatusRequest.add_member(:status, Shapes::ShapeRef.new(shape: RegistryRecordStatus, required: true, location_name: "status"))
    UpdateRegistryRecordStatusRequest.add_member(:status_reason, Shapes::ShapeRef.new(shape: UpdateRegistryRecordStatusRequestStatusReasonString, required: true, location_name: "statusReason"))
    UpdateRegistryRecordStatusRequest.struct_class = Types::UpdateRegistryRecordStatusRequest

    UpdateRegistryRecordStatusResponse.add_member(:registry_arn, Shapes::ShapeRef.new(shape: RegistryArn, required: true, location_name: "registryArn"))
    UpdateRegistryRecordStatusResponse.add_member(:record_arn, Shapes::ShapeRef.new(shape: RegistryRecordArn, required: true, location_name: "recordArn"))
    UpdateRegistryRecordStatusResponse.add_member(:record_id, Shapes::ShapeRef.new(shape: RegistryRecordId, required: true, location_name: "recordId"))
    UpdateRegistryRecordStatusResponse.add_member(:status, Shapes::ShapeRef.new(shape: RegistryRecordStatus, required: true, location_name: "status"))
    UpdateRegistryRecordStatusResponse.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, required: true, location_name: "statusReason"))
    UpdateRegistryRecordStatusResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "updatedAt"))
    UpdateRegistryRecordStatusResponse.struct_class = Types::UpdateRegistryRecordStatusResponse

    UpdateRegistryRequest.add_member(:registry_id, Shapes::ShapeRef.new(shape: RegistryIdentifier, required: true, location: "uri", location_name: "registryId"))
    UpdateRegistryRequest.add_member(:name, Shapes::ShapeRef.new(shape: RegistryName, location_name: "name"))
    UpdateRegistryRequest.add_member(:description, Shapes::ShapeRef.new(shape: UpdatedDescription, location_name: "description"))
    UpdateRegistryRequest.add_member(:authorizer_configuration, Shapes::ShapeRef.new(shape: UpdatedAuthorizerConfiguration, location_name: "authorizerConfiguration"))
    UpdateRegistryRequest.add_member(:approval_configuration, Shapes::ShapeRef.new(shape: UpdatedApprovalConfiguration, location_name: "approvalConfiguration"))
    UpdateRegistryRequest.struct_class = Types::UpdateRegistryRequest

    UpdateRegistryResponse.add_member(:name, Shapes::ShapeRef.new(shape: RegistryName, required: true, location_name: "name"))
    UpdateRegistryResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    UpdateRegistryResponse.add_member(:registry_id, Shapes::ShapeRef.new(shape: RegistryId, required: true, location_name: "registryId"))
    UpdateRegistryResponse.add_member(:registry_arn, Shapes::ShapeRef.new(shape: RegistryArn, required: true, location_name: "registryArn"))
    UpdateRegistryResponse.add_member(:authorizer_type, Shapes::ShapeRef.new(shape: RegistryAuthorizerType, location_name: "authorizerType"))
    UpdateRegistryResponse.add_member(:authorizer_configuration, Shapes::ShapeRef.new(shape: AuthorizerConfiguration, location_name: "authorizerConfiguration"))
    UpdateRegistryResponse.add_member(:approval_configuration, Shapes::ShapeRef.new(shape: ApprovalConfiguration, location_name: "approvalConfiguration"))
    UpdateRegistryResponse.add_member(:status, Shapes::ShapeRef.new(shape: RegistryStatus, required: true, location_name: "status"))
    UpdateRegistryResponse.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    UpdateRegistryResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    UpdateRegistryResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "updatedAt"))
    UpdateRegistryResponse.struct_class = Types::UpdateRegistryResponse

    UpdateWorkloadIdentityRequest.add_member(:name, Shapes::ShapeRef.new(shape: WorkloadIdentityNameType, required: true, location_name: "name"))
    UpdateWorkloadIdentityRequest.add_member(:allowed_resource_oauth_2_return_urls, Shapes::ShapeRef.new(shape: ResourceOauth2ReturnUrlListType, location_name: "allowedResourceOauth2ReturnUrls"))
    UpdateWorkloadIdentityRequest.struct_class = Types::UpdateWorkloadIdentityRequest

    UpdateWorkloadIdentityResponse.add_member(:name, Shapes::ShapeRef.new(shape: WorkloadIdentityNameType, required: true, location_name: "name"))
    UpdateWorkloadIdentityResponse.add_member(:workload_identity_arn, Shapes::ShapeRef.new(shape: WorkloadIdentityArnType, required: true, location_name: "workloadIdentityArn"))
    UpdateWorkloadIdentityResponse.add_member(:allowed_resource_oauth_2_return_urls, Shapes::ShapeRef.new(shape: ResourceOauth2ReturnUrlListType, location_name: "allowedResourceOauth2ReturnUrls"))
    UpdateWorkloadIdentityResponse.add_member(:created_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdTime"))
    UpdateWorkloadIdentityResponse.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "lastUpdatedTime"))
    UpdateWorkloadIdentityResponse.struct_class = Types::UpdateWorkloadIdentityResponse

    UpdatedA2aDescriptor.add_member(:optional_value, Shapes::ShapeRef.new(shape: A2aDescriptor, location_name: "optionalValue"))
    UpdatedA2aDescriptor.struct_class = Types::UpdatedA2aDescriptor

    UpdatedAgentSkillsDescriptor.add_member(:optional_value, Shapes::ShapeRef.new(shape: UpdatedAgentSkillsDescriptorFields, location_name: "optionalValue"))
    UpdatedAgentSkillsDescriptor.struct_class = Types::UpdatedAgentSkillsDescriptor

    UpdatedAgentSkillsDescriptorFields.add_member(:skill_md, Shapes::ShapeRef.new(shape: UpdatedSkillMdDefinition, location_name: "skillMd"))
    UpdatedAgentSkillsDescriptorFields.add_member(:skill_definition, Shapes::ShapeRef.new(shape: UpdatedSkillDefinition, location_name: "skillDefinition"))
    UpdatedAgentSkillsDescriptorFields.struct_class = Types::UpdatedAgentSkillsDescriptorFields

    UpdatedApprovalConfiguration.add_member(:optional_value, Shapes::ShapeRef.new(shape: ApprovalConfiguration, location_name: "optionalValue"))
    UpdatedApprovalConfiguration.struct_class = Types::UpdatedApprovalConfiguration

    UpdatedAuthorizerConfiguration.add_member(:optional_value, Shapes::ShapeRef.new(shape: AuthorizerConfiguration, location_name: "optionalValue"))
    UpdatedAuthorizerConfiguration.struct_class = Types::UpdatedAuthorizerConfiguration

    UpdatedCustomDescriptor.add_member(:optional_value, Shapes::ShapeRef.new(shape: CustomDescriptor, location_name: "optionalValue"))
    UpdatedCustomDescriptor.struct_class = Types::UpdatedCustomDescriptor

    UpdatedDescription.add_member(:optional_value, Shapes::ShapeRef.new(shape: Description, location_name: "optionalValue"))
    UpdatedDescription.struct_class = Types::UpdatedDescription

    UpdatedDescriptors.add_member(:optional_value, Shapes::ShapeRef.new(shape: UpdatedDescriptorsUnion, location_name: "optionalValue"))
    UpdatedDescriptors.struct_class = Types::UpdatedDescriptors

    UpdatedDescriptorsUnion.add_member(:mcp, Shapes::ShapeRef.new(shape: UpdatedMcpDescriptor, location_name: "mcp"))
    UpdatedDescriptorsUnion.add_member(:a2a, Shapes::ShapeRef.new(shape: UpdatedA2aDescriptor, location_name: "a2a"))
    UpdatedDescriptorsUnion.add_member(:custom, Shapes::ShapeRef.new(shape: UpdatedCustomDescriptor, location_name: "custom"))
    UpdatedDescriptorsUnion.add_member(:agent_skills, Shapes::ShapeRef.new(shape: UpdatedAgentSkillsDescriptor, location_name: "agentSkills"))
    UpdatedDescriptorsUnion.struct_class = Types::UpdatedDescriptorsUnion

    UpdatedHarnessEnvironmentArtifact.add_member(:optional_value, Shapes::ShapeRef.new(shape: HarnessEnvironmentArtifact, location_name: "optionalValue"))
    UpdatedHarnessEnvironmentArtifact.struct_class = Types::UpdatedHarnessEnvironmentArtifact

    UpdatedHarnessMemoryConfiguration.add_member(:optional_value, Shapes::ShapeRef.new(shape: HarnessMemoryConfiguration, location_name: "optionalValue"))
    UpdatedHarnessMemoryConfiguration.struct_class = Types::UpdatedHarnessMemoryConfiguration

    UpdatedMcpDescriptor.add_member(:optional_value, Shapes::ShapeRef.new(shape: UpdatedMcpDescriptorFields, location_name: "optionalValue"))
    UpdatedMcpDescriptor.struct_class = Types::UpdatedMcpDescriptor

    UpdatedMcpDescriptorFields.add_member(:server, Shapes::ShapeRef.new(shape: UpdatedServerDefinition, location_name: "server"))
    UpdatedMcpDescriptorFields.add_member(:tools, Shapes::ShapeRef.new(shape: UpdatedToolsDefinition, location_name: "tools"))
    UpdatedMcpDescriptorFields.struct_class = Types::UpdatedMcpDescriptorFields

    UpdatedServerDefinition.add_member(:optional_value, Shapes::ShapeRef.new(shape: ServerDefinition, location_name: "optionalValue"))
    UpdatedServerDefinition.struct_class = Types::UpdatedServerDefinition

    UpdatedSkillDefinition.add_member(:optional_value, Shapes::ShapeRef.new(shape: SkillDefinition, location_name: "optionalValue"))
    UpdatedSkillDefinition.struct_class = Types::UpdatedSkillDefinition

    UpdatedSkillMdDefinition.add_member(:optional_value, Shapes::ShapeRef.new(shape: SkillMdDefinition, location_name: "optionalValue"))
    UpdatedSkillMdDefinition.struct_class = Types::UpdatedSkillMdDefinition

    UpdatedSynchronizationConfiguration.add_member(:optional_value, Shapes::ShapeRef.new(shape: SynchronizationConfiguration, location_name: "optionalValue"))
    UpdatedSynchronizationConfiguration.struct_class = Types::UpdatedSynchronizationConfiguration

    UpdatedSynchronizationType.add_member(:optional_value, Shapes::ShapeRef.new(shape: SynchronizationType, location_name: "optionalValue"))
    UpdatedSynchronizationType.struct_class = Types::UpdatedSynchronizationType

    UpdatedToolsDefinition.add_member(:optional_value, Shapes::ShapeRef.new(shape: ToolsDefinition, location_name: "optionalValue"))
    UpdatedToolsDefinition.struct_class = Types::UpdatedToolsDefinition

    UserPreferenceConsolidationOverride.add_member(:append_to_prompt, Shapes::ShapeRef.new(shape: Prompt, required: true, location_name: "appendToPrompt"))
    UserPreferenceConsolidationOverride.add_member(:model_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "modelId"))
    UserPreferenceConsolidationOverride.struct_class = Types::UserPreferenceConsolidationOverride

    UserPreferenceExtractionOverride.add_member(:append_to_prompt, Shapes::ShapeRef.new(shape: Prompt, required: true, location_name: "appendToPrompt"))
    UserPreferenceExtractionOverride.add_member(:model_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "modelId"))
    UserPreferenceExtractionOverride.struct_class = Types::UserPreferenceExtractionOverride

    UserPreferenceMemoryStrategyInput.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    UserPreferenceMemoryStrategyInput.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    UserPreferenceMemoryStrategyInput.add_member(:namespaces, Shapes::ShapeRef.new(shape: NamespacesList, deprecated: true, location_name: "namespaces", metadata: {"deprecatedMessage" => "Use namespaceTemplates instead", "deprecatedSince" => "2026-03-02"}))
    UserPreferenceMemoryStrategyInput.add_member(:namespace_templates, Shapes::ShapeRef.new(shape: NamespacesList, location_name: "namespaceTemplates"))
    UserPreferenceMemoryStrategyInput.add_member(:memory_record_schema, Shapes::ShapeRef.new(shape: MemoryRecordSchema, location_name: "memoryRecordSchema"))
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

    Validation.add_member(:string_validation, Shapes::ShapeRef.new(shape: StringValidation, location_name: "stringValidation"))
    Validation.add_member(:string_list_validation, Shapes::ShapeRef.new(shape: StringListValidation, location_name: "stringListValidation"))
    Validation.add_member(:number_validation, Shapes::ShapeRef.new(shape: NumberValidation, location_name: "numberValidation"))
    Validation.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    Validation.add_member_subclass(:string_validation, Types::Validation::StringValidation)
    Validation.add_member_subclass(:string_list_validation, Types::Validation::StringListValidation)
    Validation.add_member_subclass(:number_validation, Types::Validation::NumberValidation)
    Validation.add_member_subclass(:unknown, Types::Validation::Unknown)
    Validation.struct_class = Types::Validation

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationException.add_member(:reason, Shapes::ShapeRef.new(shape: ValidationExceptionReason, required: true, location_name: "reason"))
    ValidationException.add_member(:field_list, Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: "fieldList"))
    ValidationException.struct_class = Types::ValidationException

    ValidationExceptionField.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    ValidationExceptionField.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationExceptionField.struct_class = Types::ValidationExceptionField

    ValidationExceptionFieldList.member = Shapes::ShapeRef.new(shape: ValidationExceptionField)

    VersionCreatedBySource.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    VersionCreatedBySource.add_member(:arn, Shapes::ShapeRef.new(shape: String, location_name: "arn"))
    VersionCreatedBySource.struct_class = Types::VersionCreatedBySource

    VersionFilter.add_member(:branch_name, Shapes::ShapeRef.new(shape: BranchName, location_name: "branchName"))
    VersionFilter.add_member(:created_by_name, Shapes::ShapeRef.new(shape: String, location_name: "createdByName"))
    VersionFilter.add_member(:latest_per_branch, Shapes::ShapeRef.new(shape: Boolean, location_name: "latestPerBranch"))
    VersionFilter.struct_class = Types::VersionFilter

    VersionLineageMetadata.add_member(:parent_version_ids, Shapes::ShapeRef.new(shape: ConfigurationBundleVersionList, location_name: "parentVersionIds"))
    VersionLineageMetadata.add_member(:branch_name, Shapes::ShapeRef.new(shape: BranchName, location_name: "branchName"))
    VersionLineageMetadata.add_member(:created_by, Shapes::ShapeRef.new(shape: VersionCreatedBySource, location_name: "createdBy"))
    VersionLineageMetadata.add_member(:commit_message, Shapes::ShapeRef.new(shape: VersionLineageMetadataCommitMessageString, location_name: "commitMessage"))
    VersionLineageMetadata.struct_class = Types::VersionLineageMetadata

    VolumeConfiguration.add_member(:ebs_configuration, Shapes::ShapeRef.new(shape: EbsVolumeConfiguration, location_name: "ebsConfiguration"))
    VolumeConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    VolumeConfiguration.add_member_subclass(:ebs_configuration, Types::VolumeConfiguration::EbsConfiguration)
    VolumeConfiguration.add_member_subclass(:unknown, Types::VolumeConfiguration::Unknown)
    VolumeConfiguration.struct_class = Types::VolumeConfiguration

    VolumeConfigurationList.member = Shapes::ShapeRef.new(shape: VolumeConfiguration)

    VpcConfig.add_member(:security_groups, Shapes::ShapeRef.new(shape: SecurityGroups, required: true, location_name: "securityGroups"))
    VpcConfig.add_member(:subnets, Shapes::ShapeRef.new(shape: Subnets, required: true, location_name: "subnets"))
    VpcConfig.add_member(:require_service_s3_endpoint, Shapes::ShapeRef.new(shape: Boolean, location_name: "requireServiceS3Endpoint"))
    VpcConfig.struct_class = Types::VpcConfig

    VpcConfiguration.add_member(:subnets, Shapes::ShapeRef.new(shape: VpcConfigurationSubnetsList, required: true, location_name: "subnets"))
    VpcConfiguration.add_member(:security_groups, Shapes::ShapeRef.new(shape: VpcConfigurationSecurityGroupsList, required: true, location_name: "securityGroups"))
    VpcConfiguration.struct_class = Types::VpcConfiguration

    VpcConfigurationSecurityGroupsList.member = Shapes::ShapeRef.new(shape: SecurityGroupId)

    VpcConfigurationSubnetsList.member = Shapes::ShapeRef.new(shape: SubnetId)

    WafConfiguration.add_member(:failure_mode, Shapes::ShapeRef.new(shape: WafFailureMode, location_name: "failureMode"))
    WafConfiguration.struct_class = Types::WafConfiguration

    WeightedOverride.add_member(:traffic_split, Shapes::ShapeRef.new(shape: TrafficSplitEntries, required: true, location_name: "trafficSplit"))
    WeightedOverride.struct_class = Types::WeightedOverride

    WeightedRoute.add_member(:traffic_split, Shapes::ShapeRef.new(shape: TargetTrafficSplitEntries, required: true, location_name: "trafficSplit"))
    WeightedRoute.struct_class = Types::WeightedRoute

    WorkloadIdentityDetails.add_member(:workload_identity_arn, Shapes::ShapeRef.new(shape: WorkloadIdentityArn, required: true, location_name: "workloadIdentityArn"))
    WorkloadIdentityDetails.struct_class = Types::WorkloadIdentityDetails

    WorkloadIdentityList.member = Shapes::ShapeRef.new(shape: WorkloadIdentityType)

    WorkloadIdentityNameListType.member = Shapes::ShapeRef.new(shape: WorkloadIdentityNameType)

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

      api.add_operation(:add_dataset_examples, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AddDatasetExamples"
        o.http_method = "POST"
        o.http_request_uri = "/datasets/{datasetId}/examples/add"
        o.input = Shapes::ShapeRef.new(shape: AddDatasetExamplesRequest)
        o.output = Shapes::ShapeRef.new(shape: AddDatasetExamplesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:batch_put_gateway_rate_limits, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchPutGatewayRateLimits"
        o.http_method = "PUT"
        o.http_request_uri = "/gateways/{gatewayIdentifier}/rate-limits/batch"
        o.input = Shapes::ShapeRef.new(shape: BatchPutGatewayRateLimitsRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchPutGatewayRateLimitsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

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

      api.add_operation(:create_browser_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateBrowserProfile"
        o.http_method = "PUT"
        o.http_request_uri = "/browser-profiles"
        o.input = Shapes::ShapeRef.new(shape: CreateBrowserProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateBrowserProfileResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_capacity_provider, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateCapacityProvider"
        o.http_method = "PUT"
        o.http_request_uri = "/capacity-providers"
        o.input = Shapes::ShapeRef.new(shape: CreateCapacityProviderInput)
        o.output = Shapes::ShapeRef.new(shape: CreateCapacityProviderOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: RetryableConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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

      api.add_operation(:create_configuration_bundle, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateConfigurationBundle"
        o.http_method = "POST"
        o.http_request_uri = "/configuration-bundles/create"
        o.input = Shapes::ShapeRef.new(shape: CreateConfigurationBundleRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateConfigurationBundleResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_consent_portal, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateConsentPortal"
        o.http_method = "POST"
        o.http_request_uri = "/identities/CreateConsentPortal"
        o.input = Shapes::ShapeRef.new(shape: CreateConsentPortalRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateConsentPortalResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_dataset, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDataset"
        o.http_method = "POST"
        o.http_request_uri = "/datasets"
        o.input = Shapes::ShapeRef.new(shape: CreateDatasetRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateDatasetResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_dataset_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDatasetVersion"
        o.http_method = "POST"
        o.http_request_uri = "/datasets/{datasetId}/versions"
        o.input = Shapes::ShapeRef.new(shape: CreateDatasetVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateDatasetVersionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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

      api.add_operation(:create_gateway_rate_limit, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateGatewayRateLimit"
        o.http_method = "POST"
        o.http_request_uri = "/gateways/{gatewayIdentifier}/rate-limits"
        o.input = Shapes::ShapeRef.new(shape: CreateGatewayRateLimitRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateGatewayRateLimitResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_gateway_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateGatewayRule"
        o.http_method = "POST"
        o.http_request_uri = "/gateways/{gatewayIdentifier}/rules"
        o.input = Shapes::ShapeRef.new(shape: CreateGatewayRuleRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateGatewayRuleResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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

      api.add_operation(:create_harness, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateHarness"
        o.http_method = "POST"
        o.http_request_uri = "/harnesses"
        o.input = Shapes::ShapeRef.new(shape: CreateHarnessRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateHarnessResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_harness_endpoint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateHarnessEndpoint"
        o.http_method = "POST"
        o.http_request_uri = "/harnesses/{harnessId}/endpoints"
        o.input = Shapes::ShapeRef.new(shape: CreateHarnessEndpointRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateHarnessEndpointResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
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

      api.add_operation(:create_payment_connector, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreatePaymentConnector"
        o.http_method = "POST"
        o.http_request_uri = "/payments/managers/{paymentManagerId}/connectors"
        o.input = Shapes::ShapeRef.new(shape: CreatePaymentConnectorRequest)
        o.output = Shapes::ShapeRef.new(shape: CreatePaymentConnectorResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: SubscriptionRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_payment_credential_provider, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreatePaymentCredentialProvider"
        o.http_method = "POST"
        o.http_request_uri = "/identities/CreatePaymentCredentialProvider"
        o.input = Shapes::ShapeRef.new(shape: CreatePaymentCredentialProviderRequest)
        o.output = Shapes::ShapeRef.new(shape: CreatePaymentCredentialProviderResponse)
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

      api.add_operation(:create_payment_manager, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreatePaymentManager"
        o.http_method = "POST"
        o.http_request_uri = "/payments/managers"
        o.input = Shapes::ShapeRef.new(shape: CreatePaymentManagerRequest)
        o.output = Shapes::ShapeRef.new(shape: CreatePaymentManagerResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
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
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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

      api.add_operation(:create_registry, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateRegistry"
        o.http_method = "POST"
        o.http_request_uri = "/registries"
        o.input = Shapes::ShapeRef.new(shape: CreateRegistryRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateRegistryResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_registry_record, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateRegistryRecord"
        o.http_method = "POST"
        o.http_request_uri = "/registries/{registryId}/records"
        o.input = Shapes::ShapeRef.new(shape: CreateRegistryRecordRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateRegistryRecordResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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

      api.add_operation(:delete_browser_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteBrowserProfile"
        o.http_method = "DELETE"
        o.http_request_uri = "/browser-profiles/{profileId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteBrowserProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteBrowserProfileResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_capacity_provider, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteCapacityProvider"
        o.http_method = "DELETE"
        o.http_request_uri = "/capacity-providers/{capacityProviderId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteCapacityProviderInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteCapacityProviderOutput)
        o.errors << Shapes::ShapeRef.new(shape: RetryableConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
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

      api.add_operation(:delete_configuration_bundle, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteConfigurationBundle"
        o.http_method = "DELETE"
        o.http_request_uri = "/configuration-bundles/{bundleId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteConfigurationBundleRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteConfigurationBundleResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_consent_portal, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteConsentPortal"
        o.http_method = "POST"
        o.http_request_uri = "/identities/DeleteConsentPortal"
        o.input = Shapes::ShapeRef.new(shape: DeleteConsentPortalRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteConsentPortalResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_dataset, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDataset"
        o.http_method = "DELETE"
        o.http_request_uri = "/datasets/{datasetId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteDatasetRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteDatasetResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_dataset_examples, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDatasetExamples"
        o.http_method = "POST"
        o.http_request_uri = "/datasets/{datasetId}/examples/delete"
        o.input = Shapes::ShapeRef.new(shape: DeleteDatasetExamplesRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteDatasetExamplesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
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

      api.add_operation(:delete_gateway_rate_limit, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteGatewayRateLimit"
        o.http_method = "DELETE"
        o.http_request_uri = "/gateways/{gatewayIdentifier}/rate-limits/{rateLimitId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteGatewayRateLimitRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteGatewayRateLimitResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_gateway_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteGatewayRule"
        o.http_method = "DELETE"
        o.http_request_uri = "/gateways/{gatewayIdentifier}/rules/{ruleId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteGatewayRuleRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteGatewayRuleResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
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

      api.add_operation(:delete_harness, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteHarness"
        o.http_method = "DELETE"
        o.http_request_uri = "/harnesses/{harnessId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteHarnessRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteHarnessResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_harness_endpoint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteHarnessEndpoint"
        o.http_method = "DELETE"
        o.http_request_uri = "/harnesses/{harnessId}/endpoints/{endpointName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteHarnessEndpointRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteHarnessEndpointResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
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
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
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

      api.add_operation(:delete_payment_connector, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeletePaymentConnector"
        o.http_method = "DELETE"
        o.http_request_uri = "/payments/managers/{paymentManagerId}/connectors/{paymentConnectorId}"
        o.input = Shapes::ShapeRef.new(shape: DeletePaymentConnectorRequest)
        o.output = Shapes::ShapeRef.new(shape: DeletePaymentConnectorResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_payment_credential_provider, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeletePaymentCredentialProvider"
        o.http_method = "POST"
        o.http_request_uri = "/identities/DeletePaymentCredentialProvider"
        o.input = Shapes::ShapeRef.new(shape: DeletePaymentCredentialProviderRequest)
        o.output = Shapes::ShapeRef.new(shape: DeletePaymentCredentialProviderResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_payment_manager, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeletePaymentManager"
        o.http_method = "DELETE"
        o.http_request_uri = "/payments/managers/{paymentManagerId}"
        o.input = Shapes::ShapeRef.new(shape: DeletePaymentManagerRequest)
        o.output = Shapes::ShapeRef.new(shape: DeletePaymentManagerResponse)
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
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
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
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_registry, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteRegistry"
        o.http_method = "DELETE"
        o.http_request_uri = "/registries/{registryId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteRegistryRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteRegistryResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_registry_record, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteRegistryRecord"
        o.http_method = "DELETE"
        o.http_request_uri = "/registries/{registryId}/records/{recordId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteRegistryRecordRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteRegistryRecordResponse)
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

      api.add_operation(:get_browser_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetBrowserProfile"
        o.http_method = "GET"
        o.http_request_uri = "/browser-profiles/{profileId}"
        o.input = Shapes::ShapeRef.new(shape: GetBrowserProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: GetBrowserProfileResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_capacity_provider, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCapacityProvider"
        o.http_method = "GET"
        o.http_request_uri = "/capacity-providers/{capacityProviderId}"
        o.input = Shapes::ShapeRef.new(shape: GetCapacityProviderInput)
        o.output = Shapes::ShapeRef.new(shape: GetCapacityProviderOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
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

      api.add_operation(:get_configuration_bundle, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetConfigurationBundle"
        o.http_method = "GET"
        o.http_request_uri = "/configuration-bundles/{bundleId}"
        o.input = Shapes::ShapeRef.new(shape: GetConfigurationBundleRequest)
        o.output = Shapes::ShapeRef.new(shape: GetConfigurationBundleResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_configuration_bundle_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetConfigurationBundleVersion"
        o.http_method = "GET"
        o.http_request_uri = "/configuration-bundles/{bundleId}/versions/{versionId}"
        o.input = Shapes::ShapeRef.new(shape: GetConfigurationBundleVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: GetConfigurationBundleVersionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_consent_portal, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetConsentPortal"
        o.http_method = "POST"
        o.http_request_uri = "/identities/GetConsentPortal"
        o.input = Shapes::ShapeRef.new(shape: GetConsentPortalRequest)
        o.output = Shapes::ShapeRef.new(shape: GetConsentPortalResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_dataset, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDataset"
        o.http_method = "GET"
        o.http_request_uri = "/datasets/{datasetId}"
        o.input = Shapes::ShapeRef.new(shape: GetDatasetRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDatasetResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
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

      api.add_operation(:get_gateway_rate_limit, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetGatewayRateLimit"
        o.http_method = "GET"
        o.http_request_uri = "/gateways/{gatewayIdentifier}/rate-limits/{rateLimitId}"
        o.input = Shapes::ShapeRef.new(shape: GetGatewayRateLimitRequest)
        o.output = Shapes::ShapeRef.new(shape: GetGatewayRateLimitResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_gateway_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetGatewayRule"
        o.http_method = "GET"
        o.http_request_uri = "/gateways/{gatewayIdentifier}/rules/{ruleId}"
        o.input = Shapes::ShapeRef.new(shape: GetGatewayRuleRequest)
        o.output = Shapes::ShapeRef.new(shape: GetGatewayRuleResponse)
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

      api.add_operation(:get_harness, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetHarness"
        o.http_method = "GET"
        o.http_request_uri = "/harnesses/{harnessId}"
        o.input = Shapes::ShapeRef.new(shape: GetHarnessRequest)
        o.output = Shapes::ShapeRef.new(shape: GetHarnessResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_harness_endpoint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetHarnessEndpoint"
        o.http_method = "GET"
        o.http_request_uri = "/harnesses/{harnessId}/endpoints/{endpointName}"
        o.input = Shapes::ShapeRef.new(shape: GetHarnessEndpointRequest)
        o.output = Shapes::ShapeRef.new(shape: GetHarnessEndpointResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
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

      api.add_operation(:get_payment_connector, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetPaymentConnector"
        o.http_method = "GET"
        o.http_request_uri = "/payments/managers/{paymentManagerId}/connectors/{paymentConnectorId}"
        o.input = Shapes::ShapeRef.new(shape: GetPaymentConnectorRequest)
        o.output = Shapes::ShapeRef.new(shape: GetPaymentConnectorResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_payment_credential_provider, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetPaymentCredentialProvider"
        o.http_method = "POST"
        o.http_request_uri = "/identities/GetPaymentCredentialProvider"
        o.input = Shapes::ShapeRef.new(shape: GetPaymentCredentialProviderRequest)
        o.output = Shapes::ShapeRef.new(shape: GetPaymentCredentialProviderResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: DecryptionFailure)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_payment_manager, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetPaymentManager"
        o.http_method = "GET"
        o.http_request_uri = "/payments/managers/{paymentManagerId}"
        o.input = Shapes::ShapeRef.new(shape: GetPaymentManagerRequest)
        o.output = Shapes::ShapeRef.new(shape: GetPaymentManagerResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
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
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_policy_engine_summary, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetPolicyEngineSummary"
        o.http_method = "GET"
        o.http_request_uri = "/policy-engine-summaries/{policyEngineId}"
        o.input = Shapes::ShapeRef.new(shape: GetPolicyEngineSummaryRequest)
        o.output = Shapes::ShapeRef.new(shape: GetPolicyEngineSummaryResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_policy_generation_summary, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetPolicyGenerationSummary"
        o.http_method = "GET"
        o.http_request_uri = "/policy-engines/{policyEngineId}/policy-generation-summaries/{policyGenerationId}"
        o.input = Shapes::ShapeRef.new(shape: GetPolicyGenerationSummaryRequest)
        o.output = Shapes::ShapeRef.new(shape: GetPolicyGenerationSummaryResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_policy_summary, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetPolicySummary"
        o.http_method = "GET"
        o.http_request_uri = "/policy-engines/{policyEngineId}/policy-summaries/{policyId}"
        o.input = Shapes::ShapeRef.new(shape: GetPolicySummaryRequest)
        o.output = Shapes::ShapeRef.new(shape: GetPolicySummaryResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_registry, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetRegistry"
        o.http_method = "GET"
        o.http_request_uri = "/registries/{registryId}"
        o.input = Shapes::ShapeRef.new(shape: GetRegistryRequest)
        o.output = Shapes::ShapeRef.new(shape: GetRegistryResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_registry_record, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetRegistryRecord"
        o.http_method = "GET"
        o.http_request_uri = "/registries/{registryId}/records/{recordId}"
        o.input = Shapes::ShapeRef.new(shape: GetRegistryRecordRequest)
        o.output = Shapes::ShapeRef.new(shape: GetRegistryRecordResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
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

      api.add_operation(:list_agent_runtime_versions_by_capacity_provider, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAgentRuntimeVersionsByCapacityProvider"
        o.http_method = "POST"
        o.http_request_uri = "/capacity-providers/{capacityProviderId}/runtime-versions"
        o.input = Shapes::ShapeRef.new(shape: ListAgentRuntimeVersionsByCapacityProviderInput)
        o.output = Shapes::ShapeRef.new(shape: ListAgentRuntimeVersionsByCapacityProviderOutput)
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

      api.add_operation(:list_browser_profiles, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListBrowserProfiles"
        o.http_method = "POST"
        o.http_request_uri = "/browser-profiles"
        o.input = Shapes::ShapeRef.new(shape: ListBrowserProfilesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListBrowserProfilesResponse)
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

      api.add_operation(:list_capacity_providers, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCapacityProviders"
        o.http_method = "POST"
        o.http_request_uri = "/capacity-providers"
        o.input = Shapes::ShapeRef.new(shape: ListCapacityProvidersInput)
        o.output = Shapes::ShapeRef.new(shape: ListCapacityProvidersOutput)
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

      api.add_operation(:list_configuration_bundle_versions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListConfigurationBundleVersions"
        o.http_method = "POST"
        o.http_request_uri = "/configuration-bundles/{bundleId}/versions"
        o.input = Shapes::ShapeRef.new(shape: ListConfigurationBundleVersionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListConfigurationBundleVersionsResponse)
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

      api.add_operation(:list_configuration_bundles, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListConfigurationBundles"
        o.http_method = "POST"
        o.http_request_uri = "/configuration-bundles"
        o.input = Shapes::ShapeRef.new(shape: ListConfigurationBundlesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListConfigurationBundlesResponse)
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

      api.add_operation(:list_consent_portals, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListConsentPortals"
        o.http_method = "POST"
        o.http_request_uri = "/identities/ListConsentPortals"
        o.input = Shapes::ShapeRef.new(shape: ListConsentPortalsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListConsentPortalsResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
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

      api.add_operation(:list_dataset_examples, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDatasetExamples"
        o.http_method = "GET"
        o.http_request_uri = "/datasets/{datasetId}/examples"
        o.input = Shapes::ShapeRef.new(shape: ListDatasetExamplesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDatasetExamplesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
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

      api.add_operation(:list_dataset_versions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDatasetVersions"
        o.http_method = "GET"
        o.http_request_uri = "/datasets/{datasetId}/versions"
        o.input = Shapes::ShapeRef.new(shape: ListDatasetVersionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDatasetVersionsResponse)
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

      api.add_operation(:list_datasets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDatasets"
        o.http_method = "GET"
        o.http_request_uri = "/datasets"
        o.input = Shapes::ShapeRef.new(shape: ListDatasetsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDatasetsResponse)
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

      api.add_operation(:list_gateway_rate_limits, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListGatewayRateLimits"
        o.http_method = "GET"
        o.http_request_uri = "/gateways/{gatewayIdentifier}/rate-limits"
        o.input = Shapes::ShapeRef.new(shape: ListGatewayRateLimitsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListGatewayRateLimitsResponse)
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

      api.add_operation(:list_gateway_rules, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListGatewayRules"
        o.http_method = "GET"
        o.http_request_uri = "/gateways/{gatewayIdentifier}/rules"
        o.input = Shapes::ShapeRef.new(shape: ListGatewayRulesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListGatewayRulesResponse)
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

      api.add_operation(:list_gateway_targets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListGatewayTargets"
        o.http_method = "GET"
        o.http_request_uri = "/gateways/{gatewayIdentifier}/targets/"
        o.input = Shapes::ShapeRef.new(shape: ListGatewayTargetsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListGatewayTargetsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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

      api.add_operation(:list_harness_endpoints, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListHarnessEndpoints"
        o.http_method = "GET"
        o.http_request_uri = "/harnesses/{harnessId}/endpoints"
        o.input = Shapes::ShapeRef.new(shape: ListHarnessEndpointsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListHarnessEndpointsResponse)
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

      api.add_operation(:list_harness_versions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListHarnessVersions"
        o.http_method = "GET"
        o.http_request_uri = "/harnesses/{harnessId}/versions"
        o.input = Shapes::ShapeRef.new(shape: ListHarnessVersionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListHarnessVersionsResponse)
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

      api.add_operation(:list_harnesses, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListHarnesses"
        o.http_method = "GET"
        o.http_request_uri = "/harnesses"
        o.input = Shapes::ShapeRef.new(shape: ListHarnessesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListHarnessesResponse)
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

      api.add_operation(:list_payment_connectors, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPaymentConnectors"
        o.http_method = "POST"
        o.http_request_uri = "/payments/managers/{paymentManagerId}/connectors-list"
        o.input = Shapes::ShapeRef.new(shape: ListPaymentConnectorsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPaymentConnectorsResponse)
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

      api.add_operation(:list_payment_credential_providers, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPaymentCredentialProviders"
        o.http_method = "POST"
        o.http_request_uri = "/identities/ListPaymentCredentialProviders"
        o.input = Shapes::ShapeRef.new(shape: ListPaymentCredentialProvidersRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPaymentCredentialProvidersResponse)
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

      api.add_operation(:list_payment_managers, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPaymentManagers"
        o.http_method = "POST"
        o.http_request_uri = "/payments/managers-list"
        o.input = Shapes::ShapeRef.new(shape: ListPaymentManagersRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPaymentManagersResponse)
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

      api.add_operation(:list_policies, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPolicies"
        o.http_method = "GET"
        o.http_request_uri = "/policy-engines/{policyEngineId}/policies"
        o.input = Shapes::ShapeRef.new(shape: ListPoliciesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPoliciesResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_policy_engine_summaries, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPolicyEngineSummaries"
        o.http_method = "GET"
        o.http_request_uri = "/policy-engine-summaries"
        o.input = Shapes::ShapeRef.new(shape: ListPolicyEngineSummariesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPolicyEngineSummariesResponse)
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
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_policy_generation_summaries, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPolicyGenerationSummaries"
        o.http_method = "GET"
        o.http_request_uri = "/policy-engines/{policyEngineId}/policy-generation-summaries"
        o.input = Shapes::ShapeRef.new(shape: ListPolicyGenerationSummariesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPolicyGenerationSummariesResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_policy_summaries, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPolicySummaries"
        o.http_method = "GET"
        o.http_request_uri = "/policy-engines/{policyEngineId}/policy-summaries"
        o.input = Shapes::ShapeRef.new(shape: ListPolicySummariesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPolicySummariesResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_registries, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRegistries"
        o.http_method = "GET"
        o.http_request_uri = "/registries"
        o.input = Shapes::ShapeRef.new(shape: ListRegistriesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListRegistriesResponse)
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

      api.add_operation(:list_registry_records, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRegistryRecords"
        o.http_method = "GET"
        o.http_request_uri = "/registries/{registryId}/records"
        o.input = Shapes::ShapeRef.new(shape: ListRegistryRecordsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListRegistryRecordsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
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

      api.add_operation(:submit_registry_record_for_approval, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SubmitRegistryRecordForApproval"
        o.http_method = "POST"
        o.http_request_uri = "/registries/{registryId}/records/{recordId}/submit-for-approval"
        o.input = Shapes::ShapeRef.new(shape: SubmitRegistryRecordForApprovalRequest)
        o.output = Shapes::ShapeRef.new(shape: SubmitRegistryRecordForApprovalResponse)
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

      api.add_operation(:update_capacity_provider, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateCapacityProvider"
        o.http_method = "PUT"
        o.http_request_uri = "/capacity-providers/{capacityProviderId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateCapacityProviderInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateCapacityProviderOutput)
        o.errors << Shapes::ShapeRef.new(shape: RetryableConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_configuration_bundle, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateConfigurationBundle"
        o.http_method = "PUT"
        o.http_request_uri = "/configuration-bundles/{bundleId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateConfigurationBundleRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateConfigurationBundleResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_consent_portal, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateConsentPortal"
        o.http_method = "POST"
        o.http_request_uri = "/identities/UpdateConsentPortal"
        o.input = Shapes::ShapeRef.new(shape: UpdateConsentPortalRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateConsentPortalResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_dataset, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateDataset"
        o.http_method = "PUT"
        o.http_request_uri = "/datasets/{datasetId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateDatasetRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateDatasetResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_dataset_examples, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateDatasetExamples"
        o.http_method = "POST"
        o.http_request_uri = "/datasets/{datasetId}/examples/update"
        o.input = Shapes::ShapeRef.new(shape: UpdateDatasetExamplesRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateDatasetExamplesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
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

      api.add_operation(:update_gateway_rate_limit, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateGatewayRateLimit"
        o.http_method = "PATCH"
        o.http_request_uri = "/gateways/{gatewayIdentifier}/rate-limits/{rateLimitId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateGatewayRateLimitRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateGatewayRateLimitResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_gateway_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateGatewayRule"
        o.http_method = "PATCH"
        o.http_request_uri = "/gateways/{gatewayIdentifier}/rules/{ruleId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateGatewayRuleRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateGatewayRuleResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
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

      api.add_operation(:update_harness, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateHarness"
        o.http_method = "PATCH"
        o.http_request_uri = "/harnesses/{harnessId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateHarnessRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateHarnessResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_harness_endpoint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateHarnessEndpoint"
        o.http_method = "PATCH"
        o.http_request_uri = "/harnesses/{harnessId}/endpoints/{endpointName}"
        o.input = Shapes::ShapeRef.new(shape: UpdateHarnessEndpointRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateHarnessEndpointResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
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

      api.add_operation(:update_payment_connector, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdatePaymentConnector"
        o.http_method = "PATCH"
        o.http_request_uri = "/payments/managers/{paymentManagerId}/connectors/{paymentConnectorId}"
        o.input = Shapes::ShapeRef.new(shape: UpdatePaymentConnectorRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdatePaymentConnectorResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: SubscriptionRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_payment_credential_provider, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdatePaymentCredentialProvider"
        o.http_method = "POST"
        o.http_request_uri = "/identities/UpdatePaymentCredentialProvider"
        o.input = Shapes::ShapeRef.new(shape: UpdatePaymentCredentialProviderRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdatePaymentCredentialProviderResponse)
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

      api.add_operation(:update_payment_manager, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdatePaymentManager"
        o.http_method = "PATCH"
        o.http_request_uri = "/payments/managers/{paymentManagerId}"
        o.input = Shapes::ShapeRef.new(shape: UpdatePaymentManagerRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdatePaymentManagerResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdatePolicy"
        o.http_method = "PATCH"
        o.http_request_uri = "/policy-engines/{policyEngineId}/policies/{policyId}"
        o.input = Shapes::ShapeRef.new(shape: UpdatePolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdatePolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_policy_engine, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdatePolicyEngine"
        o.http_method = "PATCH"
        o.http_request_uri = "/policy-engines/{policyEngineId}"
        o.input = Shapes::ShapeRef.new(shape: UpdatePolicyEngineRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdatePolicyEngineResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_registry, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateRegistry"
        o.http_method = "PATCH"
        o.http_request_uri = "/registries/{registryId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateRegistryRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateRegistryResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_registry_record, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateRegistryRecord"
        o.http_method = "PATCH"
        o.http_request_uri = "/registries/{registryId}/records/{recordId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateRegistryRecordRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateRegistryRecordResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_registry_record_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateRegistryRecordStatus"
        o.http_method = "PATCH"
        o.http_request_uri = "/registries/{registryId}/records/{recordId}/status"
        o.input = Shapes::ShapeRef.new(shape: UpdateRegistryRecordStatusRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateRegistryRecordStatusResponse)
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
