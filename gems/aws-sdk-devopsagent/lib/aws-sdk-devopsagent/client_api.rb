# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::DevOpsAgent
  # @api private
  module ClientApi

    include Seahorse::Model

    AWSConfiguration = Shapes::StructureShape.new(name: 'AWSConfiguration')
    AWSConfigurationAccountIdString = Shapes::StringShape.new(name: 'AWSConfigurationAccountIdString')
    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AdditionalServiceDetails = Shapes::UnionShape.new(name: 'AdditionalServiceDetails')
    AdditionalServiceRegistrationStep = Shapes::UnionShape.new(name: 'AdditionalServiceRegistrationStep')
    AgentSpace = Shapes::StructureShape.new(name: 'AgentSpace')
    AgentSpaceId = Shapes::StringShape.new(name: 'AgentSpaceId')
    AgentSpaceList = Shapes::ListShape.new(name: 'AgentSpaceList')
    AgentSpaceName = Shapes::StringShape.new(name: 'AgentSpaceName')
    ApiKeyValue = Shapes::StringShape.new(name: 'ApiKeyValue')
    AssistantMessage = Shapes::ListShape.new(name: 'AssistantMessage')
    AssistantMessageBlock = Shapes::UnionShape.new(name: 'AssistantMessageBlock')
    AssociateServiceInput = Shapes::StructureShape.new(name: 'AssociateServiceInput')
    AssociateServiceOutput = Shapes::StructureShape.new(name: 'AssociateServiceOutput')
    Association = Shapes::StructureShape.new(name: 'Association')
    AssociationId = Shapes::StringShape.new(name: 'AssociationId')
    AssociationsList = Shapes::ListShape.new(name: 'AssociationsList')
    AuthFlow = Shapes::StringShape.new(name: 'AuthFlow')
    AzureConfiguration = Shapes::StructureShape.new(name: 'AzureConfiguration')
    AzureDevOpsConfiguration = Shapes::StructureShape.new(name: 'AzureDevOpsConfiguration')
    BackLogTimestamp = Shapes::TimestampShape.new(name: 'BackLogTimestamp', timestampFormat: "iso8601")
    BacklogTaskDescription = Shapes::StringShape.new(name: 'BacklogTaskDescription')
    BacklogTaskTitle = Shapes::StringShape.new(name: 'BacklogTaskTitle')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    CertificateString = Shapes::StringShape.new(name: 'CertificateString')
    ChatExecution = Shapes::StructureShape.new(name: 'ChatExecution')
    ChatExecutionList = Shapes::ListShape.new(name: 'ChatExecutionList')
    ClientId = Shapes::StringShape.new(name: 'ClientId')
    ClientSecret = Shapes::StringShape.new(name: 'ClientSecret')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    ContentSizeExceededException = Shapes::StructureShape.new(name: 'ContentSizeExceededException')
    CreateAgentSpaceInput = Shapes::StructureShape.new(name: 'CreateAgentSpaceInput')
    CreateAgentSpaceInputClientTokenString = Shapes::StringShape.new(name: 'CreateAgentSpaceInputClientTokenString')
    CreateAgentSpaceOutput = Shapes::StructureShape.new(name: 'CreateAgentSpaceOutput')
    CreateBacklogTaskRequest = Shapes::StructureShape.new(name: 'CreateBacklogTaskRequest')
    CreateBacklogTaskResponse = Shapes::StructureShape.new(name: 'CreateBacklogTaskResponse')
    CreateChatRequest = Shapes::StructureShape.new(name: 'CreateChatRequest')
    CreateChatResponse = Shapes::StructureShape.new(name: 'CreateChatResponse')
    CreatePrivateConnectionInput = Shapes::StructureShape.new(name: 'CreatePrivateConnectionInput')
    CreatePrivateConnectionOutput = Shapes::StructureShape.new(name: 'CreatePrivateConnectionOutput')
    DatadogAuthorizationConfig = Shapes::UnionShape.new(name: 'DatadogAuthorizationConfig')
    DatadogServiceDetails = Shapes::StructureShape.new(name: 'DatadogServiceDetails')
    DatadogServiceDetailsDescriptionString = Shapes::StringShape.new(name: 'DatadogServiceDetailsDescriptionString')
    DatadogServiceDetailsEndpointString = Shapes::StringShape.new(name: 'DatadogServiceDetailsEndpointString')
    DatadogServiceDetailsNameString = Shapes::StringShape.new(name: 'DatadogServiceDetailsNameString')
    DateTime = Shapes::TimestampShape.new(name: 'DateTime', timestampFormat: "iso8601")
    DeleteAgentSpaceInput = Shapes::StructureShape.new(name: 'DeleteAgentSpaceInput')
    DeleteAgentSpaceOutput = Shapes::StructureShape.new(name: 'DeleteAgentSpaceOutput')
    DeletePrivateConnectionInput = Shapes::StructureShape.new(name: 'DeletePrivateConnectionInput')
    DeletePrivateConnectionOutput = Shapes::StructureShape.new(name: 'DeletePrivateConnectionOutput')
    DeregisterServiceInput = Shapes::StructureShape.new(name: 'DeregisterServiceInput')
    DeregisterServiceOutput = Shapes::StructureShape.new(name: 'DeregisterServiceOutput')
    DescribePrivateConnectionInput = Shapes::StructureShape.new(name: 'DescribePrivateConnectionInput')
    DescribePrivateConnectionOutput = Shapes::StructureShape.new(name: 'DescribePrivateConnectionOutput')
    Description = Shapes::StringShape.new(name: 'Description')
    DisableOperatorAppInput = Shapes::StructureShape.new(name: 'DisableOperatorAppInput')
    DisassociateServiceInput = Shapes::StructureShape.new(name: 'DisassociateServiceInput')
    DisassociateServiceOutput = Shapes::StructureShape.new(name: 'DisassociateServiceOutput')
    Document = Shapes::DocumentShape.new(name: 'Document', document: true)
    DocumentList = Shapes::ListShape.new(name: 'DocumentList')
    Double = Shapes::FloatShape.new(name: 'Double')
    DynatraceConfiguration = Shapes::StructureShape.new(name: 'DynatraceConfiguration')
    DynatraceOAuthClientCredentialsConfig = Shapes::StructureShape.new(name: 'DynatraceOAuthClientCredentialsConfig')
    DynatraceOAuthClientCredentialsConfigClientNameString = Shapes::StringShape.new(name: 'DynatraceOAuthClientCredentialsConfigClientNameString')
    DynatraceResourceList = Shapes::ListShape.new(name: 'DynatraceResourceList')
    DynatraceServiceAuthorizationConfig = Shapes::UnionShape.new(name: 'DynatraceServiceAuthorizationConfig')
    DynatraceServiceDetails = Shapes::StructureShape.new(name: 'DynatraceServiceDetails')
    DynatraceServiceDetailsAccountUrnString = Shapes::StringShape.new(name: 'DynatraceServiceDetailsAccountUrnString')
    EmailAddress = Shapes::StringShape.new(name: 'EmailAddress')
    EnableOperatorAppInput = Shapes::StructureShape.new(name: 'EnableOperatorAppInput')
    EnableOperatorAppOutput = Shapes::StructureShape.new(name: 'EnableOperatorAppOutput')
    EventChannelConfiguration = Shapes::StructureShape.new(name: 'EventChannelConfiguration')
    EventChannelDetails = Shapes::StructureShape.new(name: 'EventChannelDetails')
    EventChannelType = Shapes::StringShape.new(name: 'EventChannelType')
    ExchangeParameterValue = Shapes::StringShape.new(name: 'ExchangeParameterValue')
    ExchangeParameters = Shapes::MapShape.new(name: 'ExchangeParameters')
    Execution = Shapes::StructureShape.new(name: 'Execution')
    ExecutionList = Shapes::ListShape.new(name: 'ExecutionList')
    ExecutionStatus = Shapes::StringShape.new(name: 'ExecutionStatus')
    GenericWebhook = Shapes::StructureShape.new(name: 'GenericWebhook')
    GetAccountUsageInput = Shapes::StructureShape.new(name: 'GetAccountUsageInput')
    GetAccountUsageOutput = Shapes::StructureShape.new(name: 'GetAccountUsageOutput')
    GetAgentSpaceInput = Shapes::StructureShape.new(name: 'GetAgentSpaceInput')
    GetAgentSpaceOutput = Shapes::StructureShape.new(name: 'GetAgentSpaceOutput')
    GetAssociationInput = Shapes::StructureShape.new(name: 'GetAssociationInput')
    GetAssociationOutput = Shapes::StructureShape.new(name: 'GetAssociationOutput')
    GetBacklogTaskRequest = Shapes::StructureShape.new(name: 'GetBacklogTaskRequest')
    GetBacklogTaskResponse = Shapes::StructureShape.new(name: 'GetBacklogTaskResponse')
    GetOperatorAppInput = Shapes::StructureShape.new(name: 'GetOperatorAppInput')
    GetOperatorAppOutput = Shapes::StructureShape.new(name: 'GetOperatorAppOutput')
    GetRecommendationRequest = Shapes::StructureShape.new(name: 'GetRecommendationRequest')
    GetRecommendationResponse = Shapes::StructureShape.new(name: 'GetRecommendationResponse')
    GetServiceInput = Shapes::StructureShape.new(name: 'GetServiceInput')
    GetServiceOutput = Shapes::StructureShape.new(name: 'GetServiceOutput')
    GitHubConfiguration = Shapes::StructureShape.new(name: 'GitHubConfiguration')
    GitLabConfiguration = Shapes::StructureShape.new(name: 'GitLabConfiguration')
    GitLabDetails = Shapes::StructureShape.new(name: 'GitLabDetails')
    GitLabDetailsTargetUrlString = Shapes::StringShape.new(name: 'GitLabDetailsTargetUrlString')
    GitLabDetailsTokenValueString = Shapes::StringShape.new(name: 'GitLabDetailsTokenValueString')
    GitLabTokenType = Shapes::StringShape.new(name: 'GitLabTokenType')
    GithubRepoOwnerType = Shapes::StringShape.new(name: 'GithubRepoOwnerType')
    Goal = Shapes::StructureShape.new(name: 'Goal')
    GoalContent = Shapes::StructureShape.new(name: 'GoalContent')
    GoalList = Shapes::ListShape.new(name: 'GoalList')
    GoalSchedule = Shapes::StructureShape.new(name: 'GoalSchedule')
    GoalScheduleInput = Shapes::StructureShape.new(name: 'GoalScheduleInput')
    GoalStatus = Shapes::StringShape.new(name: 'GoalStatus')
    GoalType = Shapes::StringShape.new(name: 'GoalType')
    GrafanaServiceDetails = Shapes::StructureShape.new(name: 'GrafanaServiceDetails')
    GrafanaServiceDetailsDescriptionString = Shapes::StringShape.new(name: 'GrafanaServiceDetailsDescriptionString')
    GrafanaServiceDetailsEndpointString = Shapes::StringShape.new(name: 'GrafanaServiceDetailsEndpointString')
    GrafanaServiceDetailsNameString = Shapes::StringShape.new(name: 'GrafanaServiceDetailsNameString')
    Guid = Shapes::StringShape.new(name: 'Guid')
    IamAuthConfiguration = Shapes::StructureShape.new(name: 'IamAuthConfiguration')
    IdcAuthConfiguration = Shapes::StructureShape.new(name: 'IdcAuthConfiguration')
    IdentityCenterServiceException = Shapes::StructureShape.new(name: 'IdentityCenterServiceException')
    IdpAuthConfiguration = Shapes::StructureShape.new(name: 'IdpAuthConfiguration')
    IdpClientId = Shapes::StringShape.new(name: 'IdpClientId')
    IdpClientSecret = Shapes::StringShape.new(name: 'IdpClientSecret')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    InvalidParameterException = Shapes::StructureShape.new(name: 'InvalidParameterException')
    IpAddressOrDnsName = Shapes::StringShape.new(name: 'IpAddressOrDnsName')
    IpAddressType = Shapes::StringShape.new(name: 'IpAddressType')
    JournalRecord = Shapes::StructureShape.new(name: 'JournalRecord')
    JournalRecordList = Shapes::ListShape.new(name: 'JournalRecordList')
    JournalTimestamp = Shapes::TimestampShape.new(name: 'JournalTimestamp')
    KmsKeyArn = Shapes::StringShape.new(name: 'KmsKeyArn')
    ListAgentSpacesInput = Shapes::StructureShape.new(name: 'ListAgentSpacesInput')
    ListAgentSpacesInputMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListAgentSpacesInputMaxResultsInteger')
    ListAgentSpacesOutput = Shapes::StructureShape.new(name: 'ListAgentSpacesOutput')
    ListAssociationsInput = Shapes::StructureShape.new(name: 'ListAssociationsInput')
    ListAssociationsInputFilterServiceTypesString = Shapes::StringShape.new(name: 'ListAssociationsInputFilterServiceTypesString')
    ListAssociationsInputMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListAssociationsInputMaxResultsInteger')
    ListAssociationsOutput = Shapes::StructureShape.new(name: 'ListAssociationsOutput')
    ListBacklogTasksRequest = Shapes::StructureShape.new(name: 'ListBacklogTasksRequest')
    ListBacklogTasksRequestLimitInteger = Shapes::IntegerShape.new(name: 'ListBacklogTasksRequestLimitInteger')
    ListBacklogTasksResponse = Shapes::StructureShape.new(name: 'ListBacklogTasksResponse')
    ListChatsRequest = Shapes::StructureShape.new(name: 'ListChatsRequest')
    ListChatsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListChatsRequestMaxResultsInteger')
    ListChatsResponse = Shapes::StructureShape.new(name: 'ListChatsResponse')
    ListExecutionsRequest = Shapes::StructureShape.new(name: 'ListExecutionsRequest')
    ListExecutionsResponse = Shapes::StructureShape.new(name: 'ListExecutionsResponse')
    ListGoalsRequest = Shapes::StructureShape.new(name: 'ListGoalsRequest')
    ListGoalsRequestLimitInteger = Shapes::IntegerShape.new(name: 'ListGoalsRequestLimitInteger')
    ListGoalsResponse = Shapes::StructureShape.new(name: 'ListGoalsResponse')
    ListJournalRecordsRequest = Shapes::StructureShape.new(name: 'ListJournalRecordsRequest')
    ListJournalRecordsRequestLimitInteger = Shapes::IntegerShape.new(name: 'ListJournalRecordsRequestLimitInteger')
    ListJournalRecordsResponse = Shapes::StructureShape.new(name: 'ListJournalRecordsResponse')
    ListOfSecurityGroupIds = Shapes::ListShape.new(name: 'ListOfSecurityGroupIds')
    ListOfSubnetIds = Shapes::ListShape.new(name: 'ListOfSubnetIds')
    ListPendingMessagesRequest = Shapes::StructureShape.new(name: 'ListPendingMessagesRequest')
    ListPendingMessagesResponse = Shapes::StructureShape.new(name: 'ListPendingMessagesResponse')
    ListPrivateConnectionsInput = Shapes::StructureShape.new(name: 'ListPrivateConnectionsInput')
    ListPrivateConnectionsOutput = Shapes::StructureShape.new(name: 'ListPrivateConnectionsOutput')
    ListRecommendationsRequest = Shapes::StructureShape.new(name: 'ListRecommendationsRequest')
    ListRecommendationsRequestLimitInteger = Shapes::IntegerShape.new(name: 'ListRecommendationsRequestLimitInteger')
    ListRecommendationsResponse = Shapes::StructureShape.new(name: 'ListRecommendationsResponse')
    ListServicesInput = Shapes::StructureShape.new(name: 'ListServicesInput')
    ListServicesInputMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListServicesInputMaxResultsInteger')
    ListServicesOutput = Shapes::StructureShape.new(name: 'ListServicesOutput')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceRequestResourceArnString = Shapes::StringShape.new(name: 'ListTagsForResourceRequestResourceArnString')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    ListWebhooksInput = Shapes::StructureShape.new(name: 'ListWebhooksInput')
    ListWebhooksOutput = Shapes::StructureShape.new(name: 'ListWebhooksOutput')
    Locale = Shapes::StringShape.new(name: 'Locale')
    Long = Shapes::IntegerShape.new(name: 'Long')
    MCPServerAPIKeyConfig = Shapes::StructureShape.new(name: 'MCPServerAPIKeyConfig')
    MCPServerAPIKeyConfigApiKeyHeaderString = Shapes::StringShape.new(name: 'MCPServerAPIKeyConfigApiKeyHeaderString')
    MCPServerAPIKeyConfigApiKeyNameString = Shapes::StringShape.new(name: 'MCPServerAPIKeyConfigApiKeyNameString')
    MCPServerAPIKeyConfigApiKeyValueString = Shapes::StringShape.new(name: 'MCPServerAPIKeyConfigApiKeyValueString')
    MCPServerAuthorizationConfig = Shapes::UnionShape.new(name: 'MCPServerAuthorizationConfig')
    MCPServerAuthorizationDiscoveryConfig = Shapes::StructureShape.new(name: 'MCPServerAuthorizationDiscoveryConfig')
    MCPServerAuthorizationDiscoveryConfigReturnToEndpointString = Shapes::StringShape.new(name: 'MCPServerAuthorizationDiscoveryConfigReturnToEndpointString')
    MCPServerAuthorizationMethod = Shapes::StringShape.new(name: 'MCPServerAuthorizationMethod')
    MCPServerBearerTokenConfig = Shapes::StructureShape.new(name: 'MCPServerBearerTokenConfig')
    MCPServerBearerTokenConfigAuthorizationHeaderString = Shapes::StringShape.new(name: 'MCPServerBearerTokenConfigAuthorizationHeaderString')
    MCPServerBearerTokenConfigTokenNameString = Shapes::StringShape.new(name: 'MCPServerBearerTokenConfigTokenNameString')
    MCPServerBearerTokenConfigTokenValueString = Shapes::StringShape.new(name: 'MCPServerBearerTokenConfigTokenValueString')
    MCPServerConfiguration = Shapes::StructureShape.new(name: 'MCPServerConfiguration')
    MCPServerDatadogConfiguration = Shapes::StructureShape.new(name: 'MCPServerDatadogConfiguration')
    MCPServerDetails = Shapes::StructureShape.new(name: 'MCPServerDetails')
    MCPServerDetailsDescriptionString = Shapes::StringShape.new(name: 'MCPServerDetailsDescriptionString')
    MCPServerDetailsEndpointString = Shapes::StringShape.new(name: 'MCPServerDetailsEndpointString')
    MCPServerDetailsNameString = Shapes::StringShape.new(name: 'MCPServerDetailsNameString')
    MCPServerGrafanaConfiguration = Shapes::StructureShape.new(name: 'MCPServerGrafanaConfiguration')
    MCPServerGrafanaConfigurationEndpointString = Shapes::StringShape.new(name: 'MCPServerGrafanaConfigurationEndpointString')
    MCPServerGrafanaConfigurationOrganizationIdString = Shapes::StringShape.new(name: 'MCPServerGrafanaConfigurationOrganizationIdString')
    MCPServerNewRelicConfiguration = Shapes::StructureShape.new(name: 'MCPServerNewRelicConfiguration')
    MCPServerNewRelicConfigurationAccountIdString = Shapes::StringShape.new(name: 'MCPServerNewRelicConfigurationAccountIdString')
    MCPServerNewRelicConfigurationEndpointString = Shapes::StringShape.new(name: 'MCPServerNewRelicConfigurationEndpointString')
    MCPServerOAuth3LOConfig = Shapes::StructureShape.new(name: 'MCPServerOAuth3LOConfig')
    MCPServerOAuth3LOConfigAuthorizationUrlString = Shapes::StringShape.new(name: 'MCPServerOAuth3LOConfigAuthorizationUrlString')
    MCPServerOAuth3LOConfigClientNameString = Shapes::StringShape.new(name: 'MCPServerOAuth3LOConfigClientNameString')
    MCPServerOAuth3LOConfigExchangeUrlString = Shapes::StringShape.new(name: 'MCPServerOAuth3LOConfigExchangeUrlString')
    MCPServerOAuth3LOConfigReturnToEndpointString = Shapes::StringShape.new(name: 'MCPServerOAuth3LOConfigReturnToEndpointString')
    MCPServerOAuthClientCredentialsConfig = Shapes::StructureShape.new(name: 'MCPServerOAuthClientCredentialsConfig')
    MCPServerOAuthClientCredentialsConfigClientNameString = Shapes::StringShape.new(name: 'MCPServerOAuthClientCredentialsConfigClientNameString')
    MCPServerOAuthClientCredentialsConfigExchangeUrlString = Shapes::StringShape.new(name: 'MCPServerOAuthClientCredentialsConfigExchangeUrlString')
    MCPServerSplunkConfiguration = Shapes::StructureShape.new(name: 'MCPServerSplunkConfiguration')
    MCPToolsList = Shapes::ListShape.new(name: 'MCPToolsList')
    MCPToolsListMemberString = Shapes::StringShape.new(name: 'MCPToolsListMemberString')
    MaxIpv4AddressesPerEni = Shapes::IntegerShape.new(name: 'MaxIpv4AddressesPerEni')
    Message = Shapes::UnionShape.new(name: 'Message')
    MessageContent = Shapes::StringShape.new(name: 'MessageContent')
    MonitorAccountType = Shapes::StringShape.new(name: 'MonitorAccountType')
    NewRelicAlertPolicyIds = Shapes::ListShape.new(name: 'NewRelicAlertPolicyIds')
    NewRelicAlertPolicyIdsMemberString = Shapes::StringShape.new(name: 'NewRelicAlertPolicyIdsMemberString')
    NewRelicApiKeyConfig = Shapes::StructureShape.new(name: 'NewRelicApiKeyConfig')
    NewRelicApiKeyConfigAccountIdString = Shapes::StringShape.new(name: 'NewRelicApiKeyConfigAccountIdString')
    NewRelicApiKeyConfigApiKeyString = Shapes::StringShape.new(name: 'NewRelicApiKeyConfigApiKeyString')
    NewRelicApplicationIds = Shapes::ListShape.new(name: 'NewRelicApplicationIds')
    NewRelicApplicationIdsMemberString = Shapes::StringShape.new(name: 'NewRelicApplicationIdsMemberString')
    NewRelicEntityGuids = Shapes::ListShape.new(name: 'NewRelicEntityGuids')
    NewRelicEntityGuidsMemberString = Shapes::StringShape.new(name: 'NewRelicEntityGuidsMemberString')
    NewRelicRegion = Shapes::StringShape.new(name: 'NewRelicRegion')
    NewRelicServiceAuthorizationConfig = Shapes::UnionShape.new(name: 'NewRelicServiceAuthorizationConfig')
    NewRelicServiceDetails = Shapes::StructureShape.new(name: 'NewRelicServiceDetails')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    OAuthAdditionalStepDetails = Shapes::StructureShape.new(name: 'OAuthAdditionalStepDetails')
    OrderType = Shapes::StringShape.new(name: 'OrderType')
    PagerDutyAuthorizationConfig = Shapes::UnionShape.new(name: 'PagerDutyAuthorizationConfig')
    PagerDutyConfiguration = Shapes::StructureShape.new(name: 'PagerDutyConfiguration')
    PagerDutyDetails = Shapes::StructureShape.new(name: 'PagerDutyDetails')
    PagerDutyOAuthClientCredentialsConfig = Shapes::StructureShape.new(name: 'PagerDutyOAuthClientCredentialsConfig')
    PagerDutyOAuthClientCredentialsConfigClientNameString = Shapes::StringShape.new(name: 'PagerDutyOAuthClientCredentialsConfigClientNameString')
    PagerDutyScopes = Shapes::ListShape.new(name: 'PagerDutyScopes')
    PagerDutyScopesList = Shapes::ListShape.new(name: 'PagerDutyScopesList')
    PagerDutyServicesList = Shapes::ListShape.new(name: 'PagerDutyServicesList')
    PendingMessage = Shapes::StructureShape.new(name: 'PendingMessage')
    PendingMessages = Shapes::ListShape.new(name: 'PendingMessages')
    PortRange = Shapes::StringShape.new(name: 'PortRange')
    PortRanges = Shapes::ListShape.new(name: 'PortRanges')
    PostRegisterServiceSupportedService = Shapes::StringShape.new(name: 'PostRegisterServiceSupportedService')
    Priority = Shapes::StringShape.new(name: 'Priority')
    PrivateConnectionMode = Shapes::UnionShape.new(name: 'PrivateConnectionMode')
    PrivateConnectionName = Shapes::StringShape.new(name: 'PrivateConnectionName')
    PrivateConnectionStatus = Shapes::StringShape.new(name: 'PrivateConnectionStatus')
    PrivateConnectionSummary = Shapes::StructureShape.new(name: 'PrivateConnectionSummary')
    PrivateConnectionSummaryList = Shapes::ListShape.new(name: 'PrivateConnectionSummaryList')
    PrivateConnectionType = Shapes::StringShape.new(name: 'PrivateConnectionType')
    Recommendation = Shapes::StructureShape.new(name: 'Recommendation')
    RecommendationContent = Shapes::StructureShape.new(name: 'RecommendationContent')
    RecommendationContentSpecString = Shapes::StringShape.new(name: 'RecommendationContentSpecString')
    RecommendationList = Shapes::ListShape.new(name: 'RecommendationList')
    RecommendationPriority = Shapes::StringShape.new(name: 'RecommendationPriority')
    RecommendationStatus = Shapes::StringShape.new(name: 'RecommendationStatus')
    ReferenceInput = Shapes::StructureShape.new(name: 'ReferenceInput')
    ReferenceInputReferenceUrlString = Shapes::StringShape.new(name: 'ReferenceInputReferenceUrlString')
    ReferenceInputSystemString = Shapes::StringShape.new(name: 'ReferenceInputSystemString')
    ReferenceInputTitleString = Shapes::StringShape.new(name: 'ReferenceInputTitleString')
    ReferenceOutput = Shapes::StructureShape.new(name: 'ReferenceOutput')
    RegisterServiceInput = Shapes::StructureShape.new(name: 'RegisterServiceInput')
    RegisterServiceOutput = Shapes::StructureShape.new(name: 'RegisterServiceOutput')
    RegisteredAzureDevOpsServiceDetails = Shapes::StructureShape.new(name: 'RegisteredAzureDevOpsServiceDetails')
    RegisteredAzureIdentityDetails = Shapes::StructureShape.new(name: 'RegisteredAzureIdentityDetails')
    RegisteredGitLabServiceDetails = Shapes::StructureShape.new(name: 'RegisteredGitLabServiceDetails')
    RegisteredGithubServiceDetails = Shapes::StructureShape.new(name: 'RegisteredGithubServiceDetails')
    RegisteredGrafanaServerDetails = Shapes::StructureShape.new(name: 'RegisteredGrafanaServerDetails')
    RegisteredGrafanaServerDetailsEndpointString = Shapes::StringShape.new(name: 'RegisteredGrafanaServerDetailsEndpointString')
    RegisteredMCPServerDetails = Shapes::StructureShape.new(name: 'RegisteredMCPServerDetails')
    RegisteredNewRelicDetails = Shapes::StructureShape.new(name: 'RegisteredNewRelicDetails')
    RegisteredPagerDutyDetails = Shapes::StructureShape.new(name: 'RegisteredPagerDutyDetails')
    RegisteredService = Shapes::StructureShape.new(name: 'RegisteredService')
    RegisteredServiceNowDetails = Shapes::StructureShape.new(name: 'RegisteredServiceNowDetails')
    RegisteredServicesList = Shapes::ListShape.new(name: 'RegisteredServicesList')
    RegisteredSlackServiceDetails = Shapes::StructureShape.new(name: 'RegisteredSlackServiceDetails')
    ResourceConfigurationArn = Shapes::StringShape.new(name: 'ResourceConfigurationArn')
    ResourceGatewayArn = Shapes::StringShape.new(name: 'ResourceGatewayArn')
    ResourceId = Shapes::StringShape.new(name: 'ResourceId')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    RoleArn = Shapes::StringShape.new(name: 'RoleArn')
    SchedulerState = Shapes::StringShape.new(name: 'SchedulerState')
    Scopes = Shapes::ListShape.new(name: 'Scopes')
    SecurityGroupId = Shapes::StringShape.new(name: 'SecurityGroupId')
    SelfManagedInput = Shapes::StructureShape.new(name: 'SelfManagedInput')
    SendMessageContentBlockDelta = Shapes::UnionShape.new(name: 'SendMessageContentBlockDelta')
    SendMessageContentBlockDeltaEvent = Shapes::StructureShape.new(name: 'SendMessageContentBlockDeltaEvent')
    SendMessageContentBlockStartEvent = Shapes::StructureShape.new(name: 'SendMessageContentBlockStartEvent')
    SendMessageContentBlockStopEvent = Shapes::StructureShape.new(name: 'SendMessageContentBlockStopEvent')
    SendMessageContext = Shapes::StructureShape.new(name: 'SendMessageContext')
    SendMessageEvents = Shapes::StructureShape.new(name: 'SendMessageEvents')
    SendMessageHeartbeatEvent = Shapes::StructureShape.new(name: 'SendMessageHeartbeatEvent')
    SendMessageJsonDelta = Shapes::StructureShape.new(name: 'SendMessageJsonDelta')
    SendMessageRequest = Shapes::StructureShape.new(name: 'SendMessageRequest')
    SendMessageResponse = Shapes::StructureShape.new(name: 'SendMessageResponse')
    SendMessageResponseCompletedEvent = Shapes::StructureShape.new(name: 'SendMessageResponseCompletedEvent')
    SendMessageResponseCreatedEvent = Shapes::StructureShape.new(name: 'SendMessageResponseCreatedEvent')
    SendMessageResponseFailedEvent = Shapes::StructureShape.new(name: 'SendMessageResponseFailedEvent')
    SendMessageResponseInProgressEvent = Shapes::StructureShape.new(name: 'SendMessageResponseInProgressEvent')
    SendMessageSummaryEvent = Shapes::StructureShape.new(name: 'SendMessageSummaryEvent')
    SendMessageTextDelta = Shapes::StructureShape.new(name: 'SendMessageTextDelta')
    SendMessageUsageInfo = Shapes::StructureShape.new(name: 'SendMessageUsageInfo')
    Service = Shapes::StringShape.new(name: 'Service')
    ServiceConfiguration = Shapes::UnionShape.new(name: 'ServiceConfiguration')
    ServiceDetails = Shapes::UnionShape.new(name: 'ServiceDetails')
    ServiceId = Shapes::StringShape.new(name: 'ServiceId')
    ServiceManagedInput = Shapes::StructureShape.new(name: 'ServiceManagedInput')
    ServiceName = Shapes::StringShape.new(name: 'ServiceName')
    ServiceNowAuthenticationScopeList = Shapes::ListShape.new(name: 'ServiceNowAuthenticationScopeList')
    ServiceNowConfiguration = Shapes::StructureShape.new(name: 'ServiceNowConfiguration')
    ServiceNowInstanceUrl = Shapes::StringShape.new(name: 'ServiceNowInstanceUrl')
    ServiceNowOAuthClientCredentialsConfig = Shapes::StructureShape.new(name: 'ServiceNowOAuthClientCredentialsConfig')
    ServiceNowOAuthClientCredentialsConfigClientNameString = Shapes::StringShape.new(name: 'ServiceNowOAuthClientCredentialsConfigClientNameString')
    ServiceNowServiceAuthorizationConfig = Shapes::UnionShape.new(name: 'ServiceNowServiceAuthorizationConfig')
    ServiceNowServiceDetails = Shapes::StructureShape.new(name: 'ServiceNowServiceDetails')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    SlackChannel = Shapes::StructureShape.new(name: 'SlackChannel')
    SlackChannelChannelIdString = Shapes::StringShape.new(name: 'SlackChannelChannelIdString')
    SlackConfiguration = Shapes::StructureShape.new(name: 'SlackConfiguration')
    SlackConfigurationWorkspaceIdString = Shapes::StringShape.new(name: 'SlackConfigurationWorkspaceIdString')
    SlackTransmissionTarget = Shapes::StructureShape.new(name: 'SlackTransmissionTarget')
    SourceAccountType = Shapes::StringShape.new(name: 'SourceAccountType')
    SourceAwsConfiguration = Shapes::StructureShape.new(name: 'SourceAwsConfiguration')
    SourceAwsConfigurationAccountIdString = Shapes::StringShape.new(name: 'SourceAwsConfigurationAccountIdString')
    String = Shapes::StringShape.new(name: 'String')
    SubnetId = Shapes::StringShape.new(name: 'SubnetId')
    SyntheticTimestamp_date_time = Shapes::TimestampShape.new(name: 'SyntheticTimestamp_date_time', timestampFormat: "iso8601")
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceRequestResourceArnString = Shapes::StringShape.new(name: 'TagResourceRequestResourceArnString')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    Tags = Shapes::MapShape.new(name: 'Tags')
    Task = Shapes::StructureShape.new(name: 'Task')
    TaskFilter = Shapes::StructureShape.new(name: 'TaskFilter')
    TaskFilterPriorityList = Shapes::ListShape.new(name: 'TaskFilterPriorityList')
    TaskFilterStatusList = Shapes::ListShape.new(name: 'TaskFilterStatusList')
    TaskFilterTaskTypeList = Shapes::ListShape.new(name: 'TaskFilterTaskTypeList')
    TaskList = Shapes::ListShape.new(name: 'TaskList')
    TaskSortField = Shapes::StringShape.new(name: 'TaskSortField')
    TaskSortOrder = Shapes::StringShape.new(name: 'TaskSortOrder')
    TaskStatus = Shapes::StringShape.new(name: 'TaskStatus')
    TaskType = Shapes::StringShape.new(name: 'TaskType')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceRequestResourceArnString = Shapes::StringShape.new(name: 'UntagResourceRequestResourceArnString')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateAgentSpaceInput = Shapes::StructureShape.new(name: 'UpdateAgentSpaceInput')
    UpdateAgentSpaceOutput = Shapes::StructureShape.new(name: 'UpdateAgentSpaceOutput')
    UpdateAssociationInput = Shapes::StructureShape.new(name: 'UpdateAssociationInput')
    UpdateAssociationOutput = Shapes::StructureShape.new(name: 'UpdateAssociationOutput')
    UpdateBacklogTaskRequest = Shapes::StructureShape.new(name: 'UpdateBacklogTaskRequest')
    UpdateBacklogTaskResponse = Shapes::StructureShape.new(name: 'UpdateBacklogTaskResponse')
    UpdateGoalRequest = Shapes::StructureShape.new(name: 'UpdateGoalRequest')
    UpdateGoalResponse = Shapes::StructureShape.new(name: 'UpdateGoalResponse')
    UpdateOperatorAppIdpConfigInput = Shapes::StructureShape.new(name: 'UpdateOperatorAppIdpConfigInput')
    UpdateOperatorAppIdpConfigOutput = Shapes::StructureShape.new(name: 'UpdateOperatorAppIdpConfigOutput')
    UpdatePrivateConnectionCertificateInput = Shapes::StructureShape.new(name: 'UpdatePrivateConnectionCertificateInput')
    UpdatePrivateConnectionCertificateOutput = Shapes::StructureShape.new(name: 'UpdatePrivateConnectionCertificateOutput')
    UpdateRecommendationRequest = Shapes::StructureShape.new(name: 'UpdateRecommendationRequest')
    UpdateRecommendationResponse = Shapes::StructureShape.new(name: 'UpdateRecommendationResponse')
    UsageMetric = Shapes::StructureShape.new(name: 'UsageMetric')
    UserMessage = Shapes::ListShape.new(name: 'UserMessage')
    UserMessageBlock = Shapes::UnionShape.new(name: 'UserMessageBlock')
    UserReference = Shapes::StructureShape.new(name: 'UserReference')
    UserType = Shapes::StringShape.new(name: 'UserType')
    ValidateAwsAssociationsInput = Shapes::StructureShape.new(name: 'ValidateAwsAssociationsInput')
    ValidateAwsAssociationsOutput = Shapes::StructureShape.new(name: 'ValidateAwsAssociationsOutput')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationExceptionField = Shapes::StructureShape.new(name: 'ValidationExceptionField')
    ValidationExceptionFieldList = Shapes::ListShape.new(name: 'ValidationExceptionFieldList')
    ValidationStatus = Shapes::StringShape.new(name: 'ValidationStatus')
    VpcId = Shapes::StringShape.new(name: 'VpcId')
    WebIdentityTokenAudienceList = Shapes::ListShape.new(name: 'WebIdentityTokenAudienceList')
    Webhook = Shapes::StructureShape.new(name: 'Webhook')
    WebhookSecret = Shapes::StringShape.new(name: 'WebhookSecret')
    WebhookType = Shapes::StringShape.new(name: 'WebhookType')
    WebhookWebhookIdString = Shapes::StringShape.new(name: 'WebhookWebhookIdString')
    WebhookWebhookUrlString = Shapes::StringShape.new(name: 'WebhookWebhookUrlString')
    WebhooksList = Shapes::ListShape.new(name: 'WebhooksList')

    AWSConfiguration.add_member(:assumable_role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "assumableRoleArn"))
    AWSConfiguration.add_member(:account_id, Shapes::ShapeRef.new(shape: AWSConfigurationAccountIdString, required: true, location_name: "accountId"))
    AWSConfiguration.add_member(:account_type, Shapes::ShapeRef.new(shape: MonitorAccountType, required: true, location_name: "accountType"))
    AWSConfiguration.struct_class = Types::AWSConfiguration

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AdditionalServiceDetails.add_member(:github, Shapes::ShapeRef.new(shape: RegisteredGithubServiceDetails, location_name: "github"))
    AdditionalServiceDetails.add_member(:slack, Shapes::ShapeRef.new(shape: RegisteredSlackServiceDetails, location_name: "slack"))
    AdditionalServiceDetails.add_member(:mcpserverdatadog, Shapes::ShapeRef.new(shape: RegisteredMCPServerDetails, location_name: "mcpserverdatadog"))
    AdditionalServiceDetails.add_member(:mcpserver, Shapes::ShapeRef.new(shape: RegisteredMCPServerDetails, location_name: "mcpserver"))
    AdditionalServiceDetails.add_member(:servicenow, Shapes::ShapeRef.new(shape: RegisteredServiceNowDetails, location_name: "servicenow"))
    AdditionalServiceDetails.add_member(:gitlab, Shapes::ShapeRef.new(shape: RegisteredGitLabServiceDetails, location_name: "gitlab"))
    AdditionalServiceDetails.add_member(:mcpserversplunk, Shapes::ShapeRef.new(shape: RegisteredMCPServerDetails, location_name: "mcpserversplunk"))
    AdditionalServiceDetails.add_member(:mcpservernewrelic, Shapes::ShapeRef.new(shape: RegisteredNewRelicDetails, location_name: "mcpservernewrelic"))
    AdditionalServiceDetails.add_member(:azuredevops, Shapes::ShapeRef.new(shape: RegisteredAzureDevOpsServiceDetails, location_name: "azuredevops"))
    AdditionalServiceDetails.add_member(:azureidentity, Shapes::ShapeRef.new(shape: RegisteredAzureIdentityDetails, location_name: "azureidentity"))
    AdditionalServiceDetails.add_member(:mcpservergrafana, Shapes::ShapeRef.new(shape: RegisteredGrafanaServerDetails, location_name: "mcpservergrafana"))
    AdditionalServiceDetails.add_member(:pagerduty, Shapes::ShapeRef.new(shape: RegisteredPagerDutyDetails, location_name: "pagerduty"))
    AdditionalServiceDetails.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    AdditionalServiceDetails.add_member_subclass(:github, Types::AdditionalServiceDetails::Github)
    AdditionalServiceDetails.add_member_subclass(:slack, Types::AdditionalServiceDetails::Slack)
    AdditionalServiceDetails.add_member_subclass(:mcpserverdatadog, Types::AdditionalServiceDetails::Mcpserverdatadog)
    AdditionalServiceDetails.add_member_subclass(:mcpserver, Types::AdditionalServiceDetails::Mcpserver)
    AdditionalServiceDetails.add_member_subclass(:servicenow, Types::AdditionalServiceDetails::Servicenow)
    AdditionalServiceDetails.add_member_subclass(:gitlab, Types::AdditionalServiceDetails::Gitlab)
    AdditionalServiceDetails.add_member_subclass(:mcpserversplunk, Types::AdditionalServiceDetails::Mcpserversplunk)
    AdditionalServiceDetails.add_member_subclass(:mcpservernewrelic, Types::AdditionalServiceDetails::Mcpservernewrelic)
    AdditionalServiceDetails.add_member_subclass(:azuredevops, Types::AdditionalServiceDetails::Azuredevops)
    AdditionalServiceDetails.add_member_subclass(:azureidentity, Types::AdditionalServiceDetails::Azureidentity)
    AdditionalServiceDetails.add_member_subclass(:mcpservergrafana, Types::AdditionalServiceDetails::Mcpservergrafana)
    AdditionalServiceDetails.add_member_subclass(:pagerduty, Types::AdditionalServiceDetails::Pagerduty)
    AdditionalServiceDetails.add_member_subclass(:unknown, Types::AdditionalServiceDetails::Unknown)
    AdditionalServiceDetails.struct_class = Types::AdditionalServiceDetails

    AdditionalServiceRegistrationStep.add_member(:oauth, Shapes::ShapeRef.new(shape: OAuthAdditionalStepDetails, location_name: "oauth"))
    AdditionalServiceRegistrationStep.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    AdditionalServiceRegistrationStep.add_member_subclass(:oauth, Types::AdditionalServiceRegistrationStep::Oauth)
    AdditionalServiceRegistrationStep.add_member_subclass(:unknown, Types::AdditionalServiceRegistrationStep::Unknown)
    AdditionalServiceRegistrationStep.struct_class = Types::AdditionalServiceRegistrationStep

    AgentSpace.add_member(:name, Shapes::ShapeRef.new(shape: AgentSpaceName, required: true, location_name: "name"))
    AgentSpace.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    AgentSpace.add_member(:locale, Shapes::ShapeRef.new(shape: Locale, location_name: "locale"))
    AgentSpace.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "createdAt"))
    AgentSpace.add_member(:updated_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "updatedAt"))
    AgentSpace.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "kmsKeyArn"))
    AgentSpace.add_member(:agent_space_id, Shapes::ShapeRef.new(shape: AgentSpaceId, required: true, location_name: "agentSpaceId"))
    AgentSpace.struct_class = Types::AgentSpace

    AgentSpaceList.member = Shapes::ShapeRef.new(shape: AgentSpace)

    AssistantMessage.member = Shapes::ShapeRef.new(shape: AssistantMessageBlock)

    AssistantMessageBlock.add_member(:text, Shapes::ShapeRef.new(shape: String, location_name: "text"))
    AssistantMessageBlock.add_member(:tool_use, Shapes::ShapeRef.new(shape: Document, location_name: "toolUse"))
    AssistantMessageBlock.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    AssistantMessageBlock.add_member_subclass(:text, Types::AssistantMessageBlock::Text)
    AssistantMessageBlock.add_member_subclass(:tool_use, Types::AssistantMessageBlock::ToolUse)
    AssistantMessageBlock.add_member_subclass(:unknown, Types::AssistantMessageBlock::Unknown)
    AssistantMessageBlock.struct_class = Types::AssistantMessageBlock

    AssociateServiceInput.add_member(:agent_space_id, Shapes::ShapeRef.new(shape: AgentSpaceId, required: true, location: "uri", location_name: "agentSpaceId"))
    AssociateServiceInput.add_member(:service_id, Shapes::ShapeRef.new(shape: ServiceId, required: true, location_name: "serviceId"))
    AssociateServiceInput.add_member(:configuration, Shapes::ShapeRef.new(shape: ServiceConfiguration, required: true, location_name: "configuration"))
    AssociateServiceInput.struct_class = Types::AssociateServiceInput

    AssociateServiceOutput.add_member(:association, Shapes::ShapeRef.new(shape: Association, required: true, location_name: "association"))
    AssociateServiceOutput.add_member(:webhook, Shapes::ShapeRef.new(shape: GenericWebhook, location_name: "webhook"))
    AssociateServiceOutput.struct_class = Types::AssociateServiceOutput

    Association.add_member(:agent_space_id, Shapes::ShapeRef.new(shape: AgentSpaceId, required: true, location_name: "agentSpaceId"))
    Association.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "createdAt"))
    Association.add_member(:updated_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "updatedAt"))
    Association.add_member(:status, Shapes::ShapeRef.new(shape: ValidationStatus, location_name: "status"))
    Association.add_member(:association_id, Shapes::ShapeRef.new(shape: AssociationId, required: true, location_name: "associationId"))
    Association.add_member(:service_id, Shapes::ShapeRef.new(shape: ServiceId, required: true, location_name: "serviceId"))
    Association.add_member(:configuration, Shapes::ShapeRef.new(shape: ServiceConfiguration, required: true, location_name: "configuration"))
    Association.struct_class = Types::Association

    AssociationsList.member = Shapes::ShapeRef.new(shape: Association)

    AzureConfiguration.add_member(:subscription_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "subscriptionId"))
    AzureConfiguration.struct_class = Types::AzureConfiguration

    AzureDevOpsConfiguration.add_member(:organization_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "organizationName"))
    AzureDevOpsConfiguration.add_member(:project_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "projectId"))
    AzureDevOpsConfiguration.add_member(:project_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "projectName"))
    AzureDevOpsConfiguration.struct_class = Types::AzureDevOpsConfiguration

    ChatExecution.add_member(:execution_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "executionId"))
    ChatExecution.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    ChatExecution.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt"))
    ChatExecution.add_member(:summary, Shapes::ShapeRef.new(shape: String, location_name: "summary"))
    ChatExecution.struct_class = Types::ChatExecution

    ChatExecutionList.member = Shapes::ShapeRef.new(shape: ChatExecution)

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ConflictException.struct_class = Types::ConflictException

    ContentSizeExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ContentSizeExceededException.struct_class = Types::ContentSizeExceededException

    CreateAgentSpaceInput.add_member(:name, Shapes::ShapeRef.new(shape: AgentSpaceName, required: true, location_name: "name"))
    CreateAgentSpaceInput.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateAgentSpaceInput.add_member(:locale, Shapes::ShapeRef.new(shape: Locale, location_name: "locale"))
    CreateAgentSpaceInput.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "kmsKeyArn"))
    CreateAgentSpaceInput.add_member(:client_token, Shapes::ShapeRef.new(shape: CreateAgentSpaceInputClientTokenString, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateAgentSpaceInput.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateAgentSpaceInput.struct_class = Types::CreateAgentSpaceInput

    CreateAgentSpaceOutput.add_member(:agent_space, Shapes::ShapeRef.new(shape: AgentSpace, required: true, location_name: "agentSpace"))
    CreateAgentSpaceOutput.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateAgentSpaceOutput.struct_class = Types::CreateAgentSpaceOutput

    CreateBacklogTaskRequest.add_member(:agent_space_id, Shapes::ShapeRef.new(shape: AgentSpaceId, required: true, location: "uri", location_name: "agentSpaceId"))
    CreateBacklogTaskRequest.add_member(:reference, Shapes::ShapeRef.new(shape: ReferenceInput, location_name: "reference"))
    CreateBacklogTaskRequest.add_member(:task_type, Shapes::ShapeRef.new(shape: TaskType, required: true, location_name: "taskType"))
    CreateBacklogTaskRequest.add_member(:title, Shapes::ShapeRef.new(shape: BacklogTaskTitle, required: true, location_name: "title"))
    CreateBacklogTaskRequest.add_member(:description, Shapes::ShapeRef.new(shape: BacklogTaskDescription, location_name: "description"))
    CreateBacklogTaskRequest.add_member(:priority, Shapes::ShapeRef.new(shape: Priority, required: true, location_name: "priority"))
    CreateBacklogTaskRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: String, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateBacklogTaskRequest.struct_class = Types::CreateBacklogTaskRequest

    CreateBacklogTaskResponse.add_member(:task, Shapes::ShapeRef.new(shape: Task, required: true, location_name: "task"))
    CreateBacklogTaskResponse.struct_class = Types::CreateBacklogTaskResponse

    CreateChatRequest.add_member(:agent_space_id, Shapes::ShapeRef.new(shape: AgentSpaceId, required: true, location: "uri", location_name: "agentSpaceId"))
    CreateChatRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: ResourceId, deprecated: true, location: "querystring", location_name: "userId", metadata: {"deprecatedMessage" => "userId is managed by the service and should not be provided by the caller", "deprecatedSince" => "2026-04-15"}))
    CreateChatRequest.add_member(:user_type, Shapes::ShapeRef.new(shape: UserType, location: "querystring", location_name: "userType"))
    CreateChatRequest.struct_class = Types::CreateChatRequest

    CreateChatResponse.add_member(:execution_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "executionId"))
    CreateChatResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    CreateChatResponse.struct_class = Types::CreateChatResponse

    CreatePrivateConnectionInput.add_member(:name, Shapes::ShapeRef.new(shape: PrivateConnectionName, required: true, location_name: "name"))
    CreatePrivateConnectionInput.add_member(:mode, Shapes::ShapeRef.new(shape: PrivateConnectionMode, required: true, location_name: "mode"))
    CreatePrivateConnectionInput.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreatePrivateConnectionInput.struct_class = Types::CreatePrivateConnectionInput

    CreatePrivateConnectionOutput.add_member(:name, Shapes::ShapeRef.new(shape: PrivateConnectionName, required: true, location_name: "name"))
    CreatePrivateConnectionOutput.add_member(:type, Shapes::ShapeRef.new(shape: PrivateConnectionType, required: true, location_name: "type"))
    CreatePrivateConnectionOutput.add_member(:resource_gateway_id, Shapes::ShapeRef.new(shape: ResourceGatewayArn, location_name: "resourceGatewayId"))
    CreatePrivateConnectionOutput.add_member(:host_address, Shapes::ShapeRef.new(shape: IpAddressOrDnsName, location_name: "hostAddress"))
    CreatePrivateConnectionOutput.add_member(:vpc_id, Shapes::ShapeRef.new(shape: VpcId, location_name: "vpcId"))
    CreatePrivateConnectionOutput.add_member(:resource_configuration_id, Shapes::ShapeRef.new(shape: ResourceConfigurationArn, location_name: "resourceConfigurationId"))
    CreatePrivateConnectionOutput.add_member(:status, Shapes::ShapeRef.new(shape: PrivateConnectionStatus, required: true, location_name: "status"))
    CreatePrivateConnectionOutput.add_member(:certificate_expiry_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "certificateExpiryTime"))
    CreatePrivateConnectionOutput.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreatePrivateConnectionOutput.struct_class = Types::CreatePrivateConnectionOutput

    DatadogAuthorizationConfig.add_member(:authorization_discovery, Shapes::ShapeRef.new(shape: MCPServerAuthorizationDiscoveryConfig, location_name: "authorizationDiscovery"))
    DatadogAuthorizationConfig.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    DatadogAuthorizationConfig.add_member_subclass(:authorization_discovery, Types::DatadogAuthorizationConfig::AuthorizationDiscovery)
    DatadogAuthorizationConfig.add_member_subclass(:unknown, Types::DatadogAuthorizationConfig::Unknown)
    DatadogAuthorizationConfig.struct_class = Types::DatadogAuthorizationConfig

    DatadogServiceDetails.add_member(:name, Shapes::ShapeRef.new(shape: DatadogServiceDetailsNameString, required: true, location_name: "name"))
    DatadogServiceDetails.add_member(:endpoint, Shapes::ShapeRef.new(shape: DatadogServiceDetailsEndpointString, required: true, location_name: "endpoint"))
    DatadogServiceDetails.add_member(:description, Shapes::ShapeRef.new(shape: DatadogServiceDetailsDescriptionString, location_name: "description"))
    DatadogServiceDetails.add_member(:authorization_config, Shapes::ShapeRef.new(shape: DatadogAuthorizationConfig, required: true, location_name: "authorizationConfig"))
    DatadogServiceDetails.struct_class = Types::DatadogServiceDetails

    DeleteAgentSpaceInput.add_member(:agent_space_id, Shapes::ShapeRef.new(shape: AgentSpaceId, required: true, location: "uri", location_name: "agentSpaceId"))
    DeleteAgentSpaceInput.struct_class = Types::DeleteAgentSpaceInput

    DeleteAgentSpaceOutput.struct_class = Types::DeleteAgentSpaceOutput

    DeletePrivateConnectionInput.add_member(:name, Shapes::ShapeRef.new(shape: PrivateConnectionName, required: true, location: "uri", location_name: "name"))
    DeletePrivateConnectionInput.struct_class = Types::DeletePrivateConnectionInput

    DeletePrivateConnectionOutput.add_member(:name, Shapes::ShapeRef.new(shape: PrivateConnectionName, required: true, location_name: "name"))
    DeletePrivateConnectionOutput.add_member(:status, Shapes::ShapeRef.new(shape: PrivateConnectionStatus, required: true, location_name: "status"))
    DeletePrivateConnectionOutput.struct_class = Types::DeletePrivateConnectionOutput

    DeregisterServiceInput.add_member(:service_id, Shapes::ShapeRef.new(shape: ServiceId, required: true, location: "uri", location_name: "serviceId"))
    DeregisterServiceInput.struct_class = Types::DeregisterServiceInput

    DeregisterServiceOutput.struct_class = Types::DeregisterServiceOutput

    DescribePrivateConnectionInput.add_member(:name, Shapes::ShapeRef.new(shape: PrivateConnectionName, required: true, location: "uri", location_name: "name"))
    DescribePrivateConnectionInput.struct_class = Types::DescribePrivateConnectionInput

    DescribePrivateConnectionOutput.add_member(:name, Shapes::ShapeRef.new(shape: PrivateConnectionName, required: true, location_name: "name"))
    DescribePrivateConnectionOutput.add_member(:type, Shapes::ShapeRef.new(shape: PrivateConnectionType, required: true, location_name: "type"))
    DescribePrivateConnectionOutput.add_member(:resource_gateway_id, Shapes::ShapeRef.new(shape: ResourceGatewayArn, location_name: "resourceGatewayId"))
    DescribePrivateConnectionOutput.add_member(:host_address, Shapes::ShapeRef.new(shape: IpAddressOrDnsName, location_name: "hostAddress"))
    DescribePrivateConnectionOutput.add_member(:vpc_id, Shapes::ShapeRef.new(shape: VpcId, location_name: "vpcId"))
    DescribePrivateConnectionOutput.add_member(:resource_configuration_id, Shapes::ShapeRef.new(shape: ResourceConfigurationArn, location_name: "resourceConfigurationId"))
    DescribePrivateConnectionOutput.add_member(:status, Shapes::ShapeRef.new(shape: PrivateConnectionStatus, required: true, location_name: "status"))
    DescribePrivateConnectionOutput.add_member(:certificate_expiry_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "certificateExpiryTime"))
    DescribePrivateConnectionOutput.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    DescribePrivateConnectionOutput.struct_class = Types::DescribePrivateConnectionOutput

    DisableOperatorAppInput.add_member(:agent_space_id, Shapes::ShapeRef.new(shape: AgentSpaceId, required: true, location: "uri", location_name: "agentSpaceId"))
    DisableOperatorAppInput.add_member(:auth_flow, Shapes::ShapeRef.new(shape: AuthFlow, location: "header", location_name: "x-amzn-app-auth-flow"))
    DisableOperatorAppInput.struct_class = Types::DisableOperatorAppInput

    DisassociateServiceInput.add_member(:agent_space_id, Shapes::ShapeRef.new(shape: AgentSpaceId, required: true, location: "uri", location_name: "agentSpaceId"))
    DisassociateServiceInput.add_member(:association_id, Shapes::ShapeRef.new(shape: AssociationId, required: true, location: "uri", location_name: "associationId"))
    DisassociateServiceInput.struct_class = Types::DisassociateServiceInput

    DisassociateServiceOutput.struct_class = Types::DisassociateServiceOutput

    DocumentList.member = Shapes::ShapeRef.new(shape: Document)

    DynatraceConfiguration.add_member(:env_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "envId"))
    DynatraceConfiguration.add_member(:resources, Shapes::ShapeRef.new(shape: DynatraceResourceList, location_name: "resources"))
    DynatraceConfiguration.struct_class = Types::DynatraceConfiguration

    DynatraceOAuthClientCredentialsConfig.add_member(:client_name, Shapes::ShapeRef.new(shape: DynatraceOAuthClientCredentialsConfigClientNameString, location_name: "clientName"))
    DynatraceOAuthClientCredentialsConfig.add_member(:client_id, Shapes::ShapeRef.new(shape: ClientId, required: true, location_name: "clientId"))
    DynatraceOAuthClientCredentialsConfig.add_member(:exchange_parameters, Shapes::ShapeRef.new(shape: ExchangeParameters, location_name: "exchangeParameters"))
    DynatraceOAuthClientCredentialsConfig.add_member(:client_secret, Shapes::ShapeRef.new(shape: ClientSecret, required: true, location_name: "clientSecret"))
    DynatraceOAuthClientCredentialsConfig.struct_class = Types::DynatraceOAuthClientCredentialsConfig

    DynatraceResourceList.member = Shapes::ShapeRef.new(shape: String)

    DynatraceServiceAuthorizationConfig.add_member(:o_auth_client_credentials, Shapes::ShapeRef.new(shape: DynatraceOAuthClientCredentialsConfig, location_name: "oAuthClientCredentials"))
    DynatraceServiceAuthorizationConfig.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    DynatraceServiceAuthorizationConfig.add_member_subclass(:o_auth_client_credentials, Types::DynatraceServiceAuthorizationConfig::OAuthClientCredentials)
    DynatraceServiceAuthorizationConfig.add_member_subclass(:unknown, Types::DynatraceServiceAuthorizationConfig::Unknown)
    DynatraceServiceAuthorizationConfig.struct_class = Types::DynatraceServiceAuthorizationConfig

    DynatraceServiceDetails.add_member(:account_urn, Shapes::ShapeRef.new(shape: DynatraceServiceDetailsAccountUrnString, required: true, location_name: "accountUrn"))
    DynatraceServiceDetails.add_member(:authorization_config, Shapes::ShapeRef.new(shape: DynatraceServiceAuthorizationConfig, location_name: "authorizationConfig"))
    DynatraceServiceDetails.struct_class = Types::DynatraceServiceDetails

    EnableOperatorAppInput.add_member(:agent_space_id, Shapes::ShapeRef.new(shape: AgentSpaceId, required: true, location: "uri", location_name: "agentSpaceId"))
    EnableOperatorAppInput.add_member(:auth_flow, Shapes::ShapeRef.new(shape: AuthFlow, required: true, location_name: "authFlow"))
    EnableOperatorAppInput.add_member(:operator_app_role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "operatorAppRoleArn"))
    EnableOperatorAppInput.add_member(:idc_instance_arn, Shapes::ShapeRef.new(shape: String, location_name: "idcInstanceArn"))
    EnableOperatorAppInput.add_member(:issuer_url, Shapes::ShapeRef.new(shape: String, location_name: "issuerUrl"))
    EnableOperatorAppInput.add_member(:idp_client_id, Shapes::ShapeRef.new(shape: IdpClientId, location_name: "idpClientId"))
    EnableOperatorAppInput.add_member(:idp_client_secret, Shapes::ShapeRef.new(shape: IdpClientSecret, location_name: "idpClientSecret"))
    EnableOperatorAppInput.add_member(:provider, Shapes::ShapeRef.new(shape: String, location_name: "provider"))
    EnableOperatorAppInput.struct_class = Types::EnableOperatorAppInput

    EnableOperatorAppOutput.add_member(:agent_space_id, Shapes::ShapeRef.new(shape: AgentSpaceId, required: true, location_name: "agentSpaceId"))
    EnableOperatorAppOutput.add_member(:iam, Shapes::ShapeRef.new(shape: IamAuthConfiguration, location_name: "iam"))
    EnableOperatorAppOutput.add_member(:idc, Shapes::ShapeRef.new(shape: IdcAuthConfiguration, location_name: "idc"))
    EnableOperatorAppOutput.add_member(:idp, Shapes::ShapeRef.new(shape: IdpAuthConfiguration, location_name: "idp"))
    EnableOperatorAppOutput.struct_class = Types::EnableOperatorAppOutput

    EventChannelConfiguration.struct_class = Types::EventChannelConfiguration

    EventChannelDetails.add_member(:type, Shapes::ShapeRef.new(shape: EventChannelType, location_name: "type"))
    EventChannelDetails.struct_class = Types::EventChannelDetails

    ExchangeParameters.key = Shapes::ShapeRef.new(shape: String)
    ExchangeParameters.value = Shapes::ShapeRef.new(shape: ExchangeParameterValue)

    Execution.add_member(:agent_space_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "agentSpaceId"))
    Execution.add_member(:execution_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "executionId"))
    Execution.add_member(:parent_execution_id, Shapes::ShapeRef.new(shape: String, location_name: "parentExecutionId"))
    Execution.add_member(:agent_sub_task, Shapes::ShapeRef.new(shape: String, required: true, location_name: "agentSubTask"))
    Execution.add_member(:created_at, Shapes::ShapeRef.new(shape: JournalTimestamp, required: true, location_name: "createdAt"))
    Execution.add_member(:updated_at, Shapes::ShapeRef.new(shape: JournalTimestamp, required: true, location_name: "updatedAt"))
    Execution.add_member(:execution_status, Shapes::ShapeRef.new(shape: ExecutionStatus, required: true, location_name: "executionStatus"))
    Execution.add_member(:agent_type, Shapes::ShapeRef.new(shape: String, location_name: "agentType"))
    Execution.add_member(:uid, Shapes::ShapeRef.new(shape: String, location_name: "uid"))
    Execution.struct_class = Types::Execution

    ExecutionList.member = Shapes::ShapeRef.new(shape: Execution)

    GenericWebhook.add_member(:webhook_url, Shapes::ShapeRef.new(shape: String, location_name: "webhookUrl"))
    GenericWebhook.add_member(:webhook_id, Shapes::ShapeRef.new(shape: String, location_name: "webhookId"))
    GenericWebhook.add_member(:webhook_type, Shapes::ShapeRef.new(shape: WebhookType, location_name: "webhookType"))
    GenericWebhook.add_member(:webhook_secret, Shapes::ShapeRef.new(shape: WebhookSecret, location_name: "webhookSecret"))
    GenericWebhook.add_member(:api_key, Shapes::ShapeRef.new(shape: ApiKeyValue, location_name: "apiKey"))
    GenericWebhook.struct_class = Types::GenericWebhook

    GetAccountUsageInput.struct_class = Types::GetAccountUsageInput

    GetAccountUsageOutput.add_member(:monthly_account_investigation_hours, Shapes::ShapeRef.new(shape: UsageMetric, location_name: "monthlyAccountInvestigationHours"))
    GetAccountUsageOutput.add_member(:monthly_account_evaluation_hours, Shapes::ShapeRef.new(shape: UsageMetric, location_name: "monthlyAccountEvaluationHours"))
    GetAccountUsageOutput.add_member(:monthly_account_system_learning_hours, Shapes::ShapeRef.new(shape: UsageMetric, location_name: "monthlyAccountSystemLearningHours"))
    GetAccountUsageOutput.add_member(:monthly_account_on_demand_hours, Shapes::ShapeRef.new(shape: UsageMetric, location_name: "monthlyAccountOnDemandHours"))
    GetAccountUsageOutput.add_member(:usage_period_start_time, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "usagePeriodStartTime"))
    GetAccountUsageOutput.add_member(:usage_period_end_time, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "usagePeriodEndTime"))
    GetAccountUsageOutput.struct_class = Types::GetAccountUsageOutput

    GetAgentSpaceInput.add_member(:agent_space_id, Shapes::ShapeRef.new(shape: AgentSpaceId, required: true, location: "uri", location_name: "agentSpaceId"))
    GetAgentSpaceInput.struct_class = Types::GetAgentSpaceInput

    GetAgentSpaceOutput.add_member(:agent_space, Shapes::ShapeRef.new(shape: AgentSpace, required: true, location_name: "agentSpace"))
    GetAgentSpaceOutput.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    GetAgentSpaceOutput.struct_class = Types::GetAgentSpaceOutput

    GetAssociationInput.add_member(:agent_space_id, Shapes::ShapeRef.new(shape: AgentSpaceId, required: true, location: "uri", location_name: "agentSpaceId"))
    GetAssociationInput.add_member(:association_id, Shapes::ShapeRef.new(shape: AssociationId, required: true, location: "uri", location_name: "associationId"))
    GetAssociationInput.struct_class = Types::GetAssociationInput

    GetAssociationOutput.add_member(:association, Shapes::ShapeRef.new(shape: Association, required: true, location_name: "association"))
    GetAssociationOutput.struct_class = Types::GetAssociationOutput

    GetBacklogTaskRequest.add_member(:agent_space_id, Shapes::ShapeRef.new(shape: AgentSpaceId, required: true, location: "uri", location_name: "agentSpaceId"))
    GetBacklogTaskRequest.add_member(:task_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "taskId"))
    GetBacklogTaskRequest.struct_class = Types::GetBacklogTaskRequest

    GetBacklogTaskResponse.add_member(:task, Shapes::ShapeRef.new(shape: Task, required: true, location_name: "task"))
    GetBacklogTaskResponse.struct_class = Types::GetBacklogTaskResponse

    GetOperatorAppInput.add_member(:agent_space_id, Shapes::ShapeRef.new(shape: AgentSpaceId, required: true, location: "uri", location_name: "agentSpaceId"))
    GetOperatorAppInput.struct_class = Types::GetOperatorAppInput

    GetOperatorAppOutput.add_member(:iam, Shapes::ShapeRef.new(shape: IamAuthConfiguration, location_name: "iam"))
    GetOperatorAppOutput.add_member(:idc, Shapes::ShapeRef.new(shape: IdcAuthConfiguration, location_name: "idc"))
    GetOperatorAppOutput.add_member(:idp, Shapes::ShapeRef.new(shape: IdpAuthConfiguration, location_name: "idp"))
    GetOperatorAppOutput.struct_class = Types::GetOperatorAppOutput

    GetRecommendationRequest.add_member(:agent_space_id, Shapes::ShapeRef.new(shape: AgentSpaceId, required: true, location: "uri", location_name: "agentSpaceId"))
    GetRecommendationRequest.add_member(:recommendation_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "recommendationId"))
    GetRecommendationRequest.add_member(:recommendation_version, Shapes::ShapeRef.new(shape: Long, location: "querystring", location_name: "recommendationVersion"))
    GetRecommendationRequest.struct_class = Types::GetRecommendationRequest

    GetRecommendationResponse.add_member(:recommendation, Shapes::ShapeRef.new(shape: Recommendation, required: true, location_name: "recommendation"))
    GetRecommendationResponse.struct_class = Types::GetRecommendationResponse

    GetServiceInput.add_member(:service_id, Shapes::ShapeRef.new(shape: ServiceId, required: true, location: "uri", location_name: "serviceId"))
    GetServiceInput.struct_class = Types::GetServiceInput

    GetServiceOutput.add_member(:service, Shapes::ShapeRef.new(shape: RegisteredService, required: true, location_name: "service"))
    GetServiceOutput.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    GetServiceOutput.struct_class = Types::GetServiceOutput

    GitHubConfiguration.add_member(:repo_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "repoName"))
    GitHubConfiguration.add_member(:repo_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "repoId"))
    GitHubConfiguration.add_member(:owner, Shapes::ShapeRef.new(shape: String, required: true, location_name: "owner"))
    GitHubConfiguration.add_member(:owner_type, Shapes::ShapeRef.new(shape: GithubRepoOwnerType, required: true, location_name: "ownerType"))
    GitHubConfiguration.add_member(:instance_identifier, Shapes::ShapeRef.new(shape: String, location_name: "instanceIdentifier"))
    GitHubConfiguration.struct_class = Types::GitHubConfiguration

    GitLabConfiguration.add_member(:project_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "projectId"))
    GitLabConfiguration.add_member(:project_path, Shapes::ShapeRef.new(shape: String, required: true, location_name: "projectPath"))
    GitLabConfiguration.add_member(:instance_identifier, Shapes::ShapeRef.new(shape: String, location_name: "instanceIdentifier"))
    GitLabConfiguration.struct_class = Types::GitLabConfiguration

    GitLabDetails.add_member(:target_url, Shapes::ShapeRef.new(shape: GitLabDetailsTargetUrlString, required: true, location_name: "targetUrl"))
    GitLabDetails.add_member(:token_type, Shapes::ShapeRef.new(shape: GitLabTokenType, required: true, location_name: "tokenType"))
    GitLabDetails.add_member(:token_value, Shapes::ShapeRef.new(shape: GitLabDetailsTokenValueString, required: true, location_name: "tokenValue"))
    GitLabDetails.add_member(:group_id, Shapes::ShapeRef.new(shape: String, location_name: "groupId"))
    GitLabDetails.struct_class = Types::GitLabDetails

    Goal.add_member(:agent_space_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "agentSpaceArn"))
    Goal.add_member(:goal_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "goalId"))
    Goal.add_member(:title, Shapes::ShapeRef.new(shape: String, required: true, location_name: "title"))
    Goal.add_member(:content, Shapes::ShapeRef.new(shape: GoalContent, required: true, location_name: "content"))
    Goal.add_member(:status, Shapes::ShapeRef.new(shape: GoalStatus, required: true, location_name: "status"))
    Goal.add_member(:goal_type, Shapes::ShapeRef.new(shape: GoalType, required: true, location_name: "goalType"))
    Goal.add_member(:created_at, Shapes::ShapeRef.new(shape: BackLogTimestamp, required: true, location_name: "createdAt"))
    Goal.add_member(:updated_at, Shapes::ShapeRef.new(shape: BackLogTimestamp, required: true, location_name: "updatedAt"))
    Goal.add_member(:last_evaluated_at, Shapes::ShapeRef.new(shape: BackLogTimestamp, location_name: "lastEvaluatedAt"))
    Goal.add_member(:last_task_id, Shapes::ShapeRef.new(shape: String, location_name: "lastTaskId"))
    Goal.add_member(:last_successful_task_id, Shapes::ShapeRef.new(shape: String, location_name: "lastSuccessfulTaskId"))
    Goal.add_member(:version, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "version"))
    Goal.add_member(:evaluation_schedule, Shapes::ShapeRef.new(shape: GoalSchedule, location_name: "evaluationSchedule"))
    Goal.struct_class = Types::Goal

    GoalContent.add_member(:description, Shapes::ShapeRef.new(shape: String, required: true, location_name: "description"))
    GoalContent.add_member(:objectives, Shapes::ShapeRef.new(shape: String, required: true, location_name: "objectives"))
    GoalContent.struct_class = Types::GoalContent

    GoalList.member = Shapes::ShapeRef.new(shape: Goal)

    GoalSchedule.add_member(:state, Shapes::ShapeRef.new(shape: SchedulerState, required: true, location_name: "state"))
    GoalSchedule.add_member(:expression, Shapes::ShapeRef.new(shape: String, location_name: "expression"))
    GoalSchedule.struct_class = Types::GoalSchedule

    GoalScheduleInput.add_member(:state, Shapes::ShapeRef.new(shape: SchedulerState, required: true, location_name: "state"))
    GoalScheduleInput.struct_class = Types::GoalScheduleInput

    GrafanaServiceDetails.add_member(:name, Shapes::ShapeRef.new(shape: GrafanaServiceDetailsNameString, required: true, location_name: "name"))
    GrafanaServiceDetails.add_member(:endpoint, Shapes::ShapeRef.new(shape: GrafanaServiceDetailsEndpointString, required: true, location_name: "endpoint"))
    GrafanaServiceDetails.add_member(:description, Shapes::ShapeRef.new(shape: GrafanaServiceDetailsDescriptionString, location_name: "description"))
    GrafanaServiceDetails.add_member(:authorization_config, Shapes::ShapeRef.new(shape: MCPServerAuthorizationConfig, required: true, location_name: "authorizationConfig"))
    GrafanaServiceDetails.struct_class = Types::GrafanaServiceDetails

    IamAuthConfiguration.add_member(:operator_app_role_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "operatorAppRoleArn"))
    IamAuthConfiguration.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "createdAt"))
    IamAuthConfiguration.add_member(:updated_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "updatedAt"))
    IamAuthConfiguration.struct_class = Types::IamAuthConfiguration

    IdcAuthConfiguration.add_member(:operator_app_role_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "operatorAppRoleArn"))
    IdcAuthConfiguration.add_member(:idc_instance_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "idcInstanceArn"))
    IdcAuthConfiguration.add_member(:idc_application_arn, Shapes::ShapeRef.new(shape: String, location_name: "idcApplicationArn"))
    IdcAuthConfiguration.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "createdAt"))
    IdcAuthConfiguration.add_member(:updated_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "updatedAt"))
    IdcAuthConfiguration.struct_class = Types::IdcAuthConfiguration

    IdentityCenterServiceException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    IdentityCenterServiceException.add_member(:underlying_error_code, Shapes::ShapeRef.new(shape: String, location_name: "underlyingErrorCode"))
    IdentityCenterServiceException.struct_class = Types::IdentityCenterServiceException

    IdpAuthConfiguration.add_member(:issuer_url, Shapes::ShapeRef.new(shape: String, required: true, location_name: "issuerUrl"))
    IdpAuthConfiguration.add_member(:client_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "clientId"))
    IdpAuthConfiguration.add_member(:operator_app_role_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "operatorAppRoleArn"))
    IdpAuthConfiguration.add_member(:provider, Shapes::ShapeRef.new(shape: String, required: true, location_name: "provider"))
    IdpAuthConfiguration.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "createdAt"))
    IdpAuthConfiguration.add_member(:updated_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "updatedAt"))
    IdpAuthConfiguration.struct_class = Types::IdpAuthConfiguration

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    InvalidParameterException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    InvalidParameterException.struct_class = Types::InvalidParameterException

    JournalRecord.add_member(:agent_space_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "agentSpaceId"))
    JournalRecord.add_member(:execution_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "executionId"))
    JournalRecord.add_member(:record_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "recordId"))
    JournalRecord.add_member(:content, Shapes::ShapeRef.new(shape: Document, required: true, location_name: "content"))
    JournalRecord.add_member(:created_at, Shapes::ShapeRef.new(shape: JournalTimestamp, required: true, location_name: "createdAt"))
    JournalRecord.add_member(:record_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "recordType"))
    JournalRecord.add_member(:user_reference, Shapes::ShapeRef.new(shape: UserReference, location_name: "userReference"))
    JournalRecord.struct_class = Types::JournalRecord

    JournalRecordList.member = Shapes::ShapeRef.new(shape: JournalRecord)

    ListAgentSpacesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListAgentSpacesInputMaxResultsInteger, location: "querystring", location_name: "maxResults"))
    ListAgentSpacesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListAgentSpacesInput.struct_class = Types::ListAgentSpacesInput

    ListAgentSpacesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListAgentSpacesOutput.add_member(:agent_spaces, Shapes::ShapeRef.new(shape: AgentSpaceList, required: true, location_name: "agentSpaces"))
    ListAgentSpacesOutput.struct_class = Types::ListAgentSpacesOutput

    ListAssociationsInput.add_member(:agent_space_id, Shapes::ShapeRef.new(shape: AgentSpaceId, required: true, location: "uri", location_name: "agentSpaceId"))
    ListAssociationsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListAssociationsInputMaxResultsInteger, location: "querystring", location_name: "maxResults"))
    ListAssociationsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListAssociationsInput.add_member(:filter_service_types, Shapes::ShapeRef.new(shape: ListAssociationsInputFilterServiceTypesString, location: "querystring", location_name: "filterServiceTypes"))
    ListAssociationsInput.struct_class = Types::ListAssociationsInput

    ListAssociationsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListAssociationsOutput.add_member(:associations, Shapes::ShapeRef.new(shape: AssociationsList, required: true, location_name: "associations"))
    ListAssociationsOutput.struct_class = Types::ListAssociationsOutput

    ListBacklogTasksRequest.add_member(:agent_space_id, Shapes::ShapeRef.new(shape: AgentSpaceId, required: true, location: "uri", location_name: "agentSpaceId"))
    ListBacklogTasksRequest.add_member(:filter, Shapes::ShapeRef.new(shape: TaskFilter, location_name: "filter"))
    ListBacklogTasksRequest.add_member(:limit, Shapes::ShapeRef.new(shape: ListBacklogTasksRequestLimitInteger, location_name: "limit"))
    ListBacklogTasksRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListBacklogTasksRequest.add_member(:sort_field, Shapes::ShapeRef.new(shape: TaskSortField, location_name: "sortField"))
    ListBacklogTasksRequest.add_member(:order, Shapes::ShapeRef.new(shape: TaskSortOrder, location_name: "order"))
    ListBacklogTasksRequest.struct_class = Types::ListBacklogTasksRequest

    ListBacklogTasksResponse.add_member(:tasks, Shapes::ShapeRef.new(shape: TaskList, required: true, location_name: "tasks"))
    ListBacklogTasksResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListBacklogTasksResponse.struct_class = Types::ListBacklogTasksResponse

    ListChatsRequest.add_member(:agent_space_id, Shapes::ShapeRef.new(shape: AgentSpaceId, required: true, location: "uri", location_name: "agentSpaceId"))
    ListChatsRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: ResourceId, deprecated: true, location: "querystring", location_name: "userId", metadata: {"deprecatedMessage" => "userId is managed by the service and should not be provided by the caller", "deprecatedSince" => "2026-04-15"}))
    ListChatsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListChatsRequestMaxResultsInteger, location: "querystring", location_name: "maxResults"))
    ListChatsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListChatsRequest.struct_class = Types::ListChatsRequest

    ListChatsResponse.add_member(:executions, Shapes::ShapeRef.new(shape: ChatExecutionList, required: true, location_name: "executions"))
    ListChatsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListChatsResponse.struct_class = Types::ListChatsResponse

    ListExecutionsRequest.add_member(:agent_space_id, Shapes::ShapeRef.new(shape: AgentSpaceId, required: true, location: "uri", location_name: "agentSpaceId"))
    ListExecutionsRequest.add_member(:task_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "taskId"))
    ListExecutionsRequest.add_member(:limit, Shapes::ShapeRef.new(shape: Integer, location_name: "limit"))
    ListExecutionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListExecutionsRequest.struct_class = Types::ListExecutionsRequest

    ListExecutionsResponse.add_member(:executions, Shapes::ShapeRef.new(shape: ExecutionList, required: true, location_name: "executions"))
    ListExecutionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListExecutionsResponse.struct_class = Types::ListExecutionsResponse

    ListGoalsRequest.add_member(:agent_space_id, Shapes::ShapeRef.new(shape: AgentSpaceId, required: true, location: "uri", location_name: "agentSpaceId"))
    ListGoalsRequest.add_member(:status, Shapes::ShapeRef.new(shape: GoalStatus, location_name: "status"))
    ListGoalsRequest.add_member(:goal_type, Shapes::ShapeRef.new(shape: GoalType, location_name: "goalType"))
    ListGoalsRequest.add_member(:limit, Shapes::ShapeRef.new(shape: ListGoalsRequestLimitInteger, location_name: "limit"))
    ListGoalsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListGoalsRequest.struct_class = Types::ListGoalsRequest

    ListGoalsResponse.add_member(:goals, Shapes::ShapeRef.new(shape: GoalList, required: true, location_name: "goals"))
    ListGoalsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListGoalsResponse.struct_class = Types::ListGoalsResponse

    ListJournalRecordsRequest.add_member(:agent_space_id, Shapes::ShapeRef.new(shape: AgentSpaceId, required: true, location: "uri", location_name: "agentSpaceId"))
    ListJournalRecordsRequest.add_member(:execution_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "executionId"))
    ListJournalRecordsRequest.add_member(:limit, Shapes::ShapeRef.new(shape: ListJournalRecordsRequestLimitInteger, location_name: "limit"))
    ListJournalRecordsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListJournalRecordsRequest.add_member(:record_type, Shapes::ShapeRef.new(shape: String, location_name: "recordType"))
    ListJournalRecordsRequest.add_member(:order, Shapes::ShapeRef.new(shape: OrderType, location_name: "order"))
    ListJournalRecordsRequest.struct_class = Types::ListJournalRecordsRequest

    ListJournalRecordsResponse.add_member(:records, Shapes::ShapeRef.new(shape: JournalRecordList, required: true, location_name: "records"))
    ListJournalRecordsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListJournalRecordsResponse.struct_class = Types::ListJournalRecordsResponse

    ListOfSecurityGroupIds.member = Shapes::ShapeRef.new(shape: SecurityGroupId)

    ListOfSubnetIds.member = Shapes::ShapeRef.new(shape: SubnetId)

    ListPendingMessagesRequest.add_member(:agent_space_id, Shapes::ShapeRef.new(shape: AgentSpaceId, required: true, location: "uri", location_name: "agentSpaceId"))
    ListPendingMessagesRequest.add_member(:execution_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "executionId"))
    ListPendingMessagesRequest.struct_class = Types::ListPendingMessagesRequest

    ListPendingMessagesResponse.add_member(:agent_space_id, Shapes::ShapeRef.new(shape: AgentSpaceId, required: true, location_name: "agentSpaceId"))
    ListPendingMessagesResponse.add_member(:execution_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "executionId"))
    ListPendingMessagesResponse.add_member(:messages, Shapes::ShapeRef.new(shape: PendingMessages, required: true, location_name: "messages"))
    ListPendingMessagesResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    ListPendingMessagesResponse.struct_class = Types::ListPendingMessagesResponse

    ListPrivateConnectionsInput.struct_class = Types::ListPrivateConnectionsInput

    ListPrivateConnectionsOutput.add_member(:private_connections, Shapes::ShapeRef.new(shape: PrivateConnectionSummaryList, required: true, location_name: "privateConnections"))
    ListPrivateConnectionsOutput.struct_class = Types::ListPrivateConnectionsOutput

    ListRecommendationsRequest.add_member(:agent_space_id, Shapes::ShapeRef.new(shape: AgentSpaceId, required: true, location: "uri", location_name: "agentSpaceId"))
    ListRecommendationsRequest.add_member(:task_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "taskId"))
    ListRecommendationsRequest.add_member(:goal_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "goalId"))
    ListRecommendationsRequest.add_member(:status, Shapes::ShapeRef.new(shape: RecommendationStatus, location_name: "status"))
    ListRecommendationsRequest.add_member(:priority, Shapes::ShapeRef.new(shape: RecommendationPriority, location_name: "priority"))
    ListRecommendationsRequest.add_member(:limit, Shapes::ShapeRef.new(shape: ListRecommendationsRequestLimitInteger, location_name: "limit"))
    ListRecommendationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListRecommendationsRequest.struct_class = Types::ListRecommendationsRequest

    ListRecommendationsResponse.add_member(:recommendations, Shapes::ShapeRef.new(shape: RecommendationList, required: true, location_name: "recommendations"))
    ListRecommendationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListRecommendationsResponse.struct_class = Types::ListRecommendationsResponse

    ListServicesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListServicesInputMaxResultsInteger, location: "querystring", location_name: "maxResults"))
    ListServicesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListServicesInput.add_member(:filter_service_type, Shapes::ShapeRef.new(shape: Service, location: "querystring", location_name: "filterServiceType"))
    ListServicesInput.struct_class = Types::ListServicesInput

    ListServicesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListServicesOutput.add_member(:services, Shapes::ShapeRef.new(shape: RegisteredServicesList, required: true, location_name: "services"))
    ListServicesOutput.struct_class = Types::ListServicesOutput

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ListTagsForResourceRequestResourceArnString, required: true, location: "uri", location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, required: true, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    ListWebhooksInput.add_member(:agent_space_id, Shapes::ShapeRef.new(shape: AgentSpaceId, required: true, location: "uri", location_name: "agentSpaceId"))
    ListWebhooksInput.add_member(:association_id, Shapes::ShapeRef.new(shape: AssociationId, required: true, location: "uri", location_name: "associationId"))
    ListWebhooksInput.struct_class = Types::ListWebhooksInput

    ListWebhooksOutput.add_member(:webhooks, Shapes::ShapeRef.new(shape: WebhooksList, required: true, location_name: "webhooks"))
    ListWebhooksOutput.struct_class = Types::ListWebhooksOutput

    MCPServerAPIKeyConfig.add_member(:api_key_name, Shapes::ShapeRef.new(shape: MCPServerAPIKeyConfigApiKeyNameString, required: true, location_name: "apiKeyName"))
    MCPServerAPIKeyConfig.add_member(:api_key_value, Shapes::ShapeRef.new(shape: MCPServerAPIKeyConfigApiKeyValueString, required: true, location_name: "apiKeyValue"))
    MCPServerAPIKeyConfig.add_member(:api_key_header, Shapes::ShapeRef.new(shape: MCPServerAPIKeyConfigApiKeyHeaderString, required: true, location_name: "apiKeyHeader"))
    MCPServerAPIKeyConfig.struct_class = Types::MCPServerAPIKeyConfig

    MCPServerAuthorizationConfig.add_member(:o_auth_client_credentials, Shapes::ShapeRef.new(shape: MCPServerOAuthClientCredentialsConfig, location_name: "oAuthClientCredentials"))
    MCPServerAuthorizationConfig.add_member(:o_auth_3_lo, Shapes::ShapeRef.new(shape: MCPServerOAuth3LOConfig, location_name: "oAuth3LO"))
    MCPServerAuthorizationConfig.add_member(:api_key, Shapes::ShapeRef.new(shape: MCPServerAPIKeyConfig, location_name: "apiKey"))
    MCPServerAuthorizationConfig.add_member(:bearer_token, Shapes::ShapeRef.new(shape: MCPServerBearerTokenConfig, location_name: "bearerToken"))
    MCPServerAuthorizationConfig.add_member(:authorization_discovery, Shapes::ShapeRef.new(shape: MCPServerAuthorizationDiscoveryConfig, location_name: "authorizationDiscovery"))
    MCPServerAuthorizationConfig.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    MCPServerAuthorizationConfig.add_member_subclass(:o_auth_client_credentials, Types::MCPServerAuthorizationConfig::OAuthClientCredentials)
    MCPServerAuthorizationConfig.add_member_subclass(:o_auth_3_lo, Types::MCPServerAuthorizationConfig::OAuth3Lo)
    MCPServerAuthorizationConfig.add_member_subclass(:api_key, Types::MCPServerAuthorizationConfig::ApiKey)
    MCPServerAuthorizationConfig.add_member_subclass(:bearer_token, Types::MCPServerAuthorizationConfig::BearerToken)
    MCPServerAuthorizationConfig.add_member_subclass(:authorization_discovery, Types::MCPServerAuthorizationConfig::AuthorizationDiscovery)
    MCPServerAuthorizationConfig.add_member_subclass(:unknown, Types::MCPServerAuthorizationConfig::Unknown)
    MCPServerAuthorizationConfig.struct_class = Types::MCPServerAuthorizationConfig

    MCPServerAuthorizationDiscoveryConfig.add_member(:return_to_endpoint, Shapes::ShapeRef.new(shape: MCPServerAuthorizationDiscoveryConfigReturnToEndpointString, required: true, location_name: "returnToEndpoint"))
    MCPServerAuthorizationDiscoveryConfig.struct_class = Types::MCPServerAuthorizationDiscoveryConfig

    MCPServerBearerTokenConfig.add_member(:token_name, Shapes::ShapeRef.new(shape: MCPServerBearerTokenConfigTokenNameString, required: true, location_name: "tokenName"))
    MCPServerBearerTokenConfig.add_member(:token_value, Shapes::ShapeRef.new(shape: MCPServerBearerTokenConfigTokenValueString, required: true, location_name: "tokenValue"))
    MCPServerBearerTokenConfig.add_member(:authorization_header, Shapes::ShapeRef.new(shape: MCPServerBearerTokenConfigAuthorizationHeaderString, location_name: "authorizationHeader"))
    MCPServerBearerTokenConfig.struct_class = Types::MCPServerBearerTokenConfig

    MCPServerConfiguration.add_member(:tools, Shapes::ShapeRef.new(shape: MCPToolsList, required: true, location_name: "tools"))
    MCPServerConfiguration.struct_class = Types::MCPServerConfiguration

    MCPServerDatadogConfiguration.struct_class = Types::MCPServerDatadogConfiguration

    MCPServerDetails.add_member(:name, Shapes::ShapeRef.new(shape: MCPServerDetailsNameString, required: true, location_name: "name"))
    MCPServerDetails.add_member(:endpoint, Shapes::ShapeRef.new(shape: MCPServerDetailsEndpointString, required: true, location_name: "endpoint"))
    MCPServerDetails.add_member(:description, Shapes::ShapeRef.new(shape: MCPServerDetailsDescriptionString, location_name: "description"))
    MCPServerDetails.add_member(:authorization_config, Shapes::ShapeRef.new(shape: MCPServerAuthorizationConfig, required: true, location_name: "authorizationConfig"))
    MCPServerDetails.struct_class = Types::MCPServerDetails

    MCPServerGrafanaConfiguration.add_member(:endpoint, Shapes::ShapeRef.new(shape: MCPServerGrafanaConfigurationEndpointString, required: true, location_name: "endpoint"))
    MCPServerGrafanaConfiguration.add_member(:organization_id, Shapes::ShapeRef.new(shape: MCPServerGrafanaConfigurationOrganizationIdString, location_name: "organizationId"))
    MCPServerGrafanaConfiguration.add_member(:tools, Shapes::ShapeRef.new(shape: MCPToolsList, location_name: "tools"))
    MCPServerGrafanaConfiguration.struct_class = Types::MCPServerGrafanaConfiguration

    MCPServerNewRelicConfiguration.add_member(:account_id, Shapes::ShapeRef.new(shape: MCPServerNewRelicConfigurationAccountIdString, required: true, location_name: "accountId"))
    MCPServerNewRelicConfiguration.add_member(:endpoint, Shapes::ShapeRef.new(shape: MCPServerNewRelicConfigurationEndpointString, required: true, location_name: "endpoint"))
    MCPServerNewRelicConfiguration.struct_class = Types::MCPServerNewRelicConfiguration

    MCPServerOAuth3LOConfig.add_member(:client_name, Shapes::ShapeRef.new(shape: MCPServerOAuth3LOConfigClientNameString, location_name: "clientName"))
    MCPServerOAuth3LOConfig.add_member(:client_id, Shapes::ShapeRef.new(shape: ClientId, required: true, location_name: "clientId"))
    MCPServerOAuth3LOConfig.add_member(:exchange_parameters, Shapes::ShapeRef.new(shape: ExchangeParameters, location_name: "exchangeParameters"))
    MCPServerOAuth3LOConfig.add_member(:return_to_endpoint, Shapes::ShapeRef.new(shape: MCPServerOAuth3LOConfigReturnToEndpointString, required: true, location_name: "returnToEndpoint"))
    MCPServerOAuth3LOConfig.add_member(:authorization_url, Shapes::ShapeRef.new(shape: MCPServerOAuth3LOConfigAuthorizationUrlString, required: true, location_name: "authorizationUrl"))
    MCPServerOAuth3LOConfig.add_member(:exchange_url, Shapes::ShapeRef.new(shape: MCPServerOAuth3LOConfigExchangeUrlString, required: true, location_name: "exchangeUrl"))
    MCPServerOAuth3LOConfig.add_member(:client_secret, Shapes::ShapeRef.new(shape: ClientSecret, location_name: "clientSecret"))
    MCPServerOAuth3LOConfig.add_member(:support_code_challenge, Shapes::ShapeRef.new(shape: Boolean, location_name: "supportCodeChallenge"))
    MCPServerOAuth3LOConfig.add_member(:scopes, Shapes::ShapeRef.new(shape: Scopes, location_name: "scopes"))
    MCPServerOAuth3LOConfig.struct_class = Types::MCPServerOAuth3LOConfig

    MCPServerOAuthClientCredentialsConfig.add_member(:client_name, Shapes::ShapeRef.new(shape: MCPServerOAuthClientCredentialsConfigClientNameString, location_name: "clientName"))
    MCPServerOAuthClientCredentialsConfig.add_member(:client_id, Shapes::ShapeRef.new(shape: ClientId, required: true, location_name: "clientId"))
    MCPServerOAuthClientCredentialsConfig.add_member(:exchange_parameters, Shapes::ShapeRef.new(shape: ExchangeParameters, location_name: "exchangeParameters"))
    MCPServerOAuthClientCredentialsConfig.add_member(:client_secret, Shapes::ShapeRef.new(shape: ClientSecret, required: true, location_name: "clientSecret"))
    MCPServerOAuthClientCredentialsConfig.add_member(:exchange_url, Shapes::ShapeRef.new(shape: MCPServerOAuthClientCredentialsConfigExchangeUrlString, required: true, location_name: "exchangeUrl"))
    MCPServerOAuthClientCredentialsConfig.add_member(:scopes, Shapes::ShapeRef.new(shape: Scopes, location_name: "scopes"))
    MCPServerOAuthClientCredentialsConfig.struct_class = Types::MCPServerOAuthClientCredentialsConfig

    MCPServerSplunkConfiguration.struct_class = Types::MCPServerSplunkConfiguration

    MCPToolsList.member = Shapes::ShapeRef.new(shape: MCPToolsListMemberString)

    Message.add_member(:user_message, Shapes::ShapeRef.new(shape: UserMessage, location_name: "userMessage"))
    Message.add_member(:assistant_message, Shapes::ShapeRef.new(shape: AssistantMessage, location_name: "assistantMessage"))
    Message.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    Message.add_member_subclass(:user_message, Types::Message::UserMessage)
    Message.add_member_subclass(:assistant_message, Types::Message::AssistantMessage)
    Message.add_member_subclass(:unknown, Types::Message::Unknown)
    Message.struct_class = Types::Message

    NewRelicAlertPolicyIds.member = Shapes::ShapeRef.new(shape: NewRelicAlertPolicyIdsMemberString)

    NewRelicApiKeyConfig.add_member(:api_key, Shapes::ShapeRef.new(shape: NewRelicApiKeyConfigApiKeyString, required: true, location_name: "apiKey"))
    NewRelicApiKeyConfig.add_member(:account_id, Shapes::ShapeRef.new(shape: NewRelicApiKeyConfigAccountIdString, required: true, location_name: "accountId"))
    NewRelicApiKeyConfig.add_member(:region, Shapes::ShapeRef.new(shape: NewRelicRegion, required: true, location_name: "region"))
    NewRelicApiKeyConfig.add_member(:application_ids, Shapes::ShapeRef.new(shape: NewRelicApplicationIds, location_name: "applicationIds"))
    NewRelicApiKeyConfig.add_member(:entity_guids, Shapes::ShapeRef.new(shape: NewRelicEntityGuids, location_name: "entityGuids"))
    NewRelicApiKeyConfig.add_member(:alert_policy_ids, Shapes::ShapeRef.new(shape: NewRelicAlertPolicyIds, location_name: "alertPolicyIds"))
    NewRelicApiKeyConfig.struct_class = Types::NewRelicApiKeyConfig

    NewRelicApplicationIds.member = Shapes::ShapeRef.new(shape: NewRelicApplicationIdsMemberString)

    NewRelicEntityGuids.member = Shapes::ShapeRef.new(shape: NewRelicEntityGuidsMemberString)

    NewRelicServiceAuthorizationConfig.add_member(:api_key, Shapes::ShapeRef.new(shape: NewRelicApiKeyConfig, location_name: "apiKey"))
    NewRelicServiceAuthorizationConfig.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    NewRelicServiceAuthorizationConfig.add_member_subclass(:api_key, Types::NewRelicServiceAuthorizationConfig::ApiKey)
    NewRelicServiceAuthorizationConfig.add_member_subclass(:unknown, Types::NewRelicServiceAuthorizationConfig::Unknown)
    NewRelicServiceAuthorizationConfig.struct_class = Types::NewRelicServiceAuthorizationConfig

    NewRelicServiceDetails.add_member(:authorization_config, Shapes::ShapeRef.new(shape: NewRelicServiceAuthorizationConfig, required: true, location_name: "authorizationConfig"))
    NewRelicServiceDetails.struct_class = Types::NewRelicServiceDetails

    OAuthAdditionalStepDetails.add_member(:authorization_url, Shapes::ShapeRef.new(shape: String, required: true, location_name: "authorizationUrl"))
    OAuthAdditionalStepDetails.struct_class = Types::OAuthAdditionalStepDetails

    PagerDutyAuthorizationConfig.add_member(:o_auth_client_credentials, Shapes::ShapeRef.new(shape: PagerDutyOAuthClientCredentialsConfig, location_name: "oAuthClientCredentials"))
    PagerDutyAuthorizationConfig.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    PagerDutyAuthorizationConfig.add_member_subclass(:o_auth_client_credentials, Types::PagerDutyAuthorizationConfig::OAuthClientCredentials)
    PagerDutyAuthorizationConfig.add_member_subclass(:unknown, Types::PagerDutyAuthorizationConfig::Unknown)
    PagerDutyAuthorizationConfig.struct_class = Types::PagerDutyAuthorizationConfig

    PagerDutyConfiguration.add_member(:services, Shapes::ShapeRef.new(shape: PagerDutyServicesList, required: true, location_name: "services"))
    PagerDutyConfiguration.add_member(:customer_email, Shapes::ShapeRef.new(shape: EmailAddress, required: true, location_name: "customerEmail"))
    PagerDutyConfiguration.struct_class = Types::PagerDutyConfiguration

    PagerDutyDetails.add_member(:scopes, Shapes::ShapeRef.new(shape: PagerDutyScopes, required: true, location_name: "scopes"))
    PagerDutyDetails.add_member(:authorization_config, Shapes::ShapeRef.new(shape: PagerDutyAuthorizationConfig, required: true, location_name: "authorizationConfig"))
    PagerDutyDetails.struct_class = Types::PagerDutyDetails

    PagerDutyOAuthClientCredentialsConfig.add_member(:client_name, Shapes::ShapeRef.new(shape: PagerDutyOAuthClientCredentialsConfigClientNameString, location_name: "clientName"))
    PagerDutyOAuthClientCredentialsConfig.add_member(:client_id, Shapes::ShapeRef.new(shape: ClientId, required: true, location_name: "clientId"))
    PagerDutyOAuthClientCredentialsConfig.add_member(:exchange_parameters, Shapes::ShapeRef.new(shape: ExchangeParameters, location_name: "exchangeParameters"))
    PagerDutyOAuthClientCredentialsConfig.add_member(:client_secret, Shapes::ShapeRef.new(shape: ClientSecret, required: true, location_name: "clientSecret"))
    PagerDutyOAuthClientCredentialsConfig.struct_class = Types::PagerDutyOAuthClientCredentialsConfig

    PagerDutyScopes.member = Shapes::ShapeRef.new(shape: String)

    PagerDutyScopesList.member = Shapes::ShapeRef.new(shape: String)

    PagerDutyServicesList.member = Shapes::ShapeRef.new(shape: String)

    PendingMessage.add_member(:message_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "messageId"))
    PendingMessage.add_member(:message, Shapes::ShapeRef.new(shape: Message, required: true, location_name: "message"))
    PendingMessage.struct_class = Types::PendingMessage

    PendingMessages.member = Shapes::ShapeRef.new(shape: PendingMessage)

    PortRanges.member = Shapes::ShapeRef.new(shape: PortRange)

    PrivateConnectionMode.add_member(:service_managed, Shapes::ShapeRef.new(shape: ServiceManagedInput, location_name: "serviceManaged"))
    PrivateConnectionMode.add_member(:self_managed, Shapes::ShapeRef.new(shape: SelfManagedInput, location_name: "selfManaged"))
    PrivateConnectionMode.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    PrivateConnectionMode.add_member_subclass(:service_managed, Types::PrivateConnectionMode::ServiceManaged)
    PrivateConnectionMode.add_member_subclass(:self_managed, Types::PrivateConnectionMode::SelfManaged)
    PrivateConnectionMode.add_member_subclass(:unknown, Types::PrivateConnectionMode::Unknown)
    PrivateConnectionMode.struct_class = Types::PrivateConnectionMode

    PrivateConnectionSummary.add_member(:name, Shapes::ShapeRef.new(shape: PrivateConnectionName, required: true, location_name: "name"))
    PrivateConnectionSummary.add_member(:type, Shapes::ShapeRef.new(shape: PrivateConnectionType, required: true, location_name: "type"))
    PrivateConnectionSummary.add_member(:resource_gateway_id, Shapes::ShapeRef.new(shape: ResourceGatewayArn, location_name: "resourceGatewayId"))
    PrivateConnectionSummary.add_member(:host_address, Shapes::ShapeRef.new(shape: IpAddressOrDnsName, location_name: "hostAddress"))
    PrivateConnectionSummary.add_member(:vpc_id, Shapes::ShapeRef.new(shape: VpcId, location_name: "vpcId"))
    PrivateConnectionSummary.add_member(:resource_configuration_id, Shapes::ShapeRef.new(shape: ResourceConfigurationArn, location_name: "resourceConfigurationId"))
    PrivateConnectionSummary.add_member(:status, Shapes::ShapeRef.new(shape: PrivateConnectionStatus, required: true, location_name: "status"))
    PrivateConnectionSummary.add_member(:certificate_expiry_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "certificateExpiryTime"))
    PrivateConnectionSummary.struct_class = Types::PrivateConnectionSummary

    PrivateConnectionSummaryList.member = Shapes::ShapeRef.new(shape: PrivateConnectionSummary)

    Recommendation.add_member(:agent_space_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "agentSpaceArn"))
    Recommendation.add_member(:recommendation_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "recommendationId"))
    Recommendation.add_member(:task_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "taskId"))
    Recommendation.add_member(:goal_id, Shapes::ShapeRef.new(shape: String, location_name: "goalId"))
    Recommendation.add_member(:title, Shapes::ShapeRef.new(shape: String, required: true, location_name: "title"))
    Recommendation.add_member(:content, Shapes::ShapeRef.new(shape: RecommendationContent, required: true, location_name: "content"))
    Recommendation.add_member(:status, Shapes::ShapeRef.new(shape: RecommendationStatus, required: true, location_name: "status"))
    Recommendation.add_member(:priority, Shapes::ShapeRef.new(shape: RecommendationPriority, required: true, location_name: "priority"))
    Recommendation.add_member(:goal_version, Shapes::ShapeRef.new(shape: Long, location_name: "goalVersion"))
    Recommendation.add_member(:additional_context, Shapes::ShapeRef.new(shape: String, location_name: "additionalContext"))
    Recommendation.add_member(:created_at, Shapes::ShapeRef.new(shape: BackLogTimestamp, required: true, location_name: "createdAt"))
    Recommendation.add_member(:updated_at, Shapes::ShapeRef.new(shape: BackLogTimestamp, required: true, location_name: "updatedAt"))
    Recommendation.add_member(:version, Shapes::ShapeRef.new(shape: Long, required: true, location_name: "version"))
    Recommendation.struct_class = Types::Recommendation

    RecommendationContent.add_member(:summary, Shapes::ShapeRef.new(shape: String, required: true, location_name: "summary"))
    RecommendationContent.add_member(:spec, Shapes::ShapeRef.new(shape: RecommendationContentSpecString, location_name: "spec"))
    RecommendationContent.struct_class = Types::RecommendationContent

    RecommendationList.member = Shapes::ShapeRef.new(shape: Recommendation)

    ReferenceInput.add_member(:system, Shapes::ShapeRef.new(shape: ReferenceInputSystemString, required: true, location_name: "system"))
    ReferenceInput.add_member(:title, Shapes::ShapeRef.new(shape: ReferenceInputTitleString, location_name: "title"))
    ReferenceInput.add_member(:reference_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "referenceId"))
    ReferenceInput.add_member(:reference_url, Shapes::ShapeRef.new(shape: ReferenceInputReferenceUrlString, required: true, location_name: "referenceUrl"))
    ReferenceInput.add_member(:association_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "associationId"))
    ReferenceInput.struct_class = Types::ReferenceInput

    ReferenceOutput.add_member(:system, Shapes::ShapeRef.new(shape: String, required: true, location_name: "system"))
    ReferenceOutput.add_member(:title, Shapes::ShapeRef.new(shape: String, location_name: "title"))
    ReferenceOutput.add_member(:reference_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "referenceId"))
    ReferenceOutput.add_member(:reference_url, Shapes::ShapeRef.new(shape: String, required: true, location_name: "referenceUrl"))
    ReferenceOutput.add_member(:association_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "associationId"))
    ReferenceOutput.struct_class = Types::ReferenceOutput

    RegisterServiceInput.add_member(:service, Shapes::ShapeRef.new(shape: PostRegisterServiceSupportedService, required: true, location: "uri", location_name: "service"))
    RegisterServiceInput.add_member(:service_details, Shapes::ShapeRef.new(shape: ServiceDetails, required: true, location_name: "serviceDetails"))
    RegisterServiceInput.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "kmsKeyArn"))
    RegisterServiceInput.add_member(:private_connection_name, Shapes::ShapeRef.new(shape: PrivateConnectionName, location_name: "privateConnectionName"))
    RegisterServiceInput.add_member(:name, Shapes::ShapeRef.new(shape: ServiceName, location_name: "name"))
    RegisterServiceInput.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    RegisterServiceInput.struct_class = Types::RegisterServiceInput

    RegisterServiceOutput.add_member(:service_id, Shapes::ShapeRef.new(shape: ServiceId, location_name: "serviceId"))
    RegisterServiceOutput.add_member(:additional_step, Shapes::ShapeRef.new(shape: AdditionalServiceRegistrationStep, location_name: "additionalStep"))
    RegisterServiceOutput.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "kmsKeyArn"))
    RegisterServiceOutput.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    RegisterServiceOutput.struct_class = Types::RegisterServiceOutput

    RegisteredAzureDevOpsServiceDetails.add_member(:organization_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "organizationName"))
    RegisteredAzureDevOpsServiceDetails.struct_class = Types::RegisteredAzureDevOpsServiceDetails

    RegisteredAzureIdentityDetails.add_member(:tenant_id, Shapes::ShapeRef.new(shape: Guid, required: true, location_name: "tenantId"))
    RegisteredAzureIdentityDetails.add_member(:client_id, Shapes::ShapeRef.new(shape: Guid, required: true, location_name: "clientId"))
    RegisteredAzureIdentityDetails.add_member(:web_identity_role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "webIdentityRoleArn"))
    RegisteredAzureIdentityDetails.add_member(:web_identity_token_audiences, Shapes::ShapeRef.new(shape: WebIdentityTokenAudienceList, required: true, location_name: "webIdentityTokenAudiences"))
    RegisteredAzureIdentityDetails.struct_class = Types::RegisteredAzureIdentityDetails

    RegisteredGitLabServiceDetails.add_member(:target_url, Shapes::ShapeRef.new(shape: String, required: true, location_name: "targetUrl"))
    RegisteredGitLabServiceDetails.add_member(:token_type, Shapes::ShapeRef.new(shape: GitLabTokenType, required: true, location_name: "tokenType"))
    RegisteredGitLabServiceDetails.add_member(:group_id, Shapes::ShapeRef.new(shape: String, location_name: "groupId"))
    RegisteredGitLabServiceDetails.struct_class = Types::RegisteredGitLabServiceDetails

    RegisteredGithubServiceDetails.add_member(:owner, Shapes::ShapeRef.new(shape: String, required: true, location_name: "owner"))
    RegisteredGithubServiceDetails.add_member(:owner_type, Shapes::ShapeRef.new(shape: GithubRepoOwnerType, required: true, location_name: "ownerType"))
    RegisteredGithubServiceDetails.add_member(:target_url, Shapes::ShapeRef.new(shape: String, location_name: "targetUrl"))
    RegisteredGithubServiceDetails.struct_class = Types::RegisteredGithubServiceDetails

    RegisteredGrafanaServerDetails.add_member(:endpoint, Shapes::ShapeRef.new(shape: RegisteredGrafanaServerDetailsEndpointString, required: true, location_name: "endpoint"))
    RegisteredGrafanaServerDetails.add_member(:authorization_method, Shapes::ShapeRef.new(shape: MCPServerAuthorizationMethod, required: true, location_name: "authorizationMethod"))
    RegisteredGrafanaServerDetails.struct_class = Types::RegisteredGrafanaServerDetails

    RegisteredMCPServerDetails.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    RegisteredMCPServerDetails.add_member(:endpoint, Shapes::ShapeRef.new(shape: String, required: true, location_name: "endpoint"))
    RegisteredMCPServerDetails.add_member(:authorization_method, Shapes::ShapeRef.new(shape: MCPServerAuthorizationMethod, required: true, location_name: "authorizationMethod"))
    RegisteredMCPServerDetails.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    RegisteredMCPServerDetails.add_member(:api_key_header, Shapes::ShapeRef.new(shape: String, location_name: "apiKeyHeader"))
    RegisteredMCPServerDetails.struct_class = Types::RegisteredMCPServerDetails

    RegisteredNewRelicDetails.add_member(:account_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "accountId"))
    RegisteredNewRelicDetails.add_member(:region, Shapes::ShapeRef.new(shape: NewRelicRegion, required: true, location_name: "region"))
    RegisteredNewRelicDetails.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    RegisteredNewRelicDetails.struct_class = Types::RegisteredNewRelicDetails

    RegisteredPagerDutyDetails.add_member(:scopes, Shapes::ShapeRef.new(shape: PagerDutyScopesList, required: true, location_name: "scopes"))
    RegisteredPagerDutyDetails.struct_class = Types::RegisteredPagerDutyDetails

    RegisteredService.add_member(:service_id, Shapes::ShapeRef.new(shape: ServiceId, required: true, location_name: "serviceId"))
    RegisteredService.add_member(:service_type, Shapes::ShapeRef.new(shape: Service, required: true, location_name: "serviceType"))
    RegisteredService.add_member(:name, Shapes::ShapeRef.new(shape: ServiceName, location_name: "name"))
    RegisteredService.add_member(:accessible_resources, Shapes::ShapeRef.new(shape: DocumentList, location_name: "accessibleResources"))
    RegisteredService.add_member(:additional_service_details, Shapes::ShapeRef.new(shape: AdditionalServiceDetails, location_name: "additionalServiceDetails"))
    RegisteredService.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "kmsKeyArn"))
    RegisteredService.add_member(:private_connection_name, Shapes::ShapeRef.new(shape: PrivateConnectionName, location_name: "privateConnectionName"))
    RegisteredService.struct_class = Types::RegisteredService

    RegisteredServiceNowDetails.add_member(:instance_url, Shapes::ShapeRef.new(shape: ServiceNowInstanceUrl, location_name: "instanceUrl"))
    RegisteredServiceNowDetails.struct_class = Types::RegisteredServiceNowDetails

    RegisteredServicesList.member = Shapes::ShapeRef.new(shape: RegisteredService)

    RegisteredSlackServiceDetails.add_member(:team_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "teamId"))
    RegisteredSlackServiceDetails.add_member(:team_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "teamName"))
    RegisteredSlackServiceDetails.struct_class = Types::RegisteredSlackServiceDetails

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    Scopes.member = Shapes::ShapeRef.new(shape: String)

    SelfManagedInput.add_member(:resource_configuration_id, Shapes::ShapeRef.new(shape: ResourceConfigurationArn, required: true, location_name: "resourceConfigurationId"))
    SelfManagedInput.add_member(:certificate, Shapes::ShapeRef.new(shape: CertificateString, location_name: "certificate"))
    SelfManagedInput.struct_class = Types::SelfManagedInput

    SendMessageContentBlockDelta.add_member(:text_delta, Shapes::ShapeRef.new(shape: SendMessageTextDelta, location_name: "textDelta"))
    SendMessageContentBlockDelta.add_member(:json_delta, Shapes::ShapeRef.new(shape: SendMessageJsonDelta, location_name: "jsonDelta"))
    SendMessageContentBlockDelta.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    SendMessageContentBlockDelta.add_member_subclass(:text_delta, Types::SendMessageContentBlockDelta::TextDelta)
    SendMessageContentBlockDelta.add_member_subclass(:json_delta, Types::SendMessageContentBlockDelta::JsonDelta)
    SendMessageContentBlockDelta.add_member_subclass(:unknown, Types::SendMessageContentBlockDelta::Unknown)
    SendMessageContentBlockDelta.struct_class = Types::SendMessageContentBlockDelta

    SendMessageContentBlockDeltaEvent.add_member(:index, Shapes::ShapeRef.new(shape: Integer, location_name: "index"))
    SendMessageContentBlockDeltaEvent.add_member(:delta, Shapes::ShapeRef.new(shape: SendMessageContentBlockDelta, location_name: "delta"))
    SendMessageContentBlockDeltaEvent.add_member(:sequence_number, Shapes::ShapeRef.new(shape: Integer, location_name: "sequenceNumber"))
    SendMessageContentBlockDeltaEvent.struct_class = Types::SendMessageContentBlockDeltaEvent

    SendMessageContentBlockStartEvent.add_member(:index, Shapes::ShapeRef.new(shape: Integer, location_name: "index"))
    SendMessageContentBlockStartEvent.add_member(:type, Shapes::ShapeRef.new(shape: String, location_name: "type"))
    SendMessageContentBlockStartEvent.add_member(:id, Shapes::ShapeRef.new(shape: String, location_name: "id"))
    SendMessageContentBlockStartEvent.add_member(:parent_id, Shapes::ShapeRef.new(shape: String, location_name: "parentId"))
    SendMessageContentBlockStartEvent.add_member(:sequence_number, Shapes::ShapeRef.new(shape: Integer, location_name: "sequenceNumber"))
    SendMessageContentBlockStartEvent.struct_class = Types::SendMessageContentBlockStartEvent

    SendMessageContentBlockStopEvent.add_member(:index, Shapes::ShapeRef.new(shape: Integer, location_name: "index"))
    SendMessageContentBlockStopEvent.add_member(:type, Shapes::ShapeRef.new(shape: String, location_name: "type"))
    SendMessageContentBlockStopEvent.add_member(:text, Shapes::ShapeRef.new(shape: String, location_name: "text"))
    SendMessageContentBlockStopEvent.add_member(:last, Shapes::ShapeRef.new(shape: Boolean, location_name: "last"))
    SendMessageContentBlockStopEvent.add_member(:sequence_number, Shapes::ShapeRef.new(shape: Integer, location_name: "sequenceNumber"))
    SendMessageContentBlockStopEvent.struct_class = Types::SendMessageContentBlockStopEvent

    SendMessageContext.add_member(:current_page, Shapes::ShapeRef.new(shape: String, location_name: "currentPage"))
    SendMessageContext.add_member(:last_message, Shapes::ShapeRef.new(shape: String, location_name: "lastMessage"))
    SendMessageContext.add_member(:user_action_response, Shapes::ShapeRef.new(shape: String, location_name: "userActionResponse"))
    SendMessageContext.struct_class = Types::SendMessageContext

    SendMessageEvents.add_member(:response_created, Shapes::ShapeRef.new(shape: SendMessageResponseCreatedEvent, event: true, location_name: "responseCreated"))
    SendMessageEvents.add_member(:response_in_progress, Shapes::ShapeRef.new(shape: SendMessageResponseInProgressEvent, event: true, location_name: "responseInProgress"))
    SendMessageEvents.add_member(:response_completed, Shapes::ShapeRef.new(shape: SendMessageResponseCompletedEvent, event: true, location_name: "responseCompleted"))
    SendMessageEvents.add_member(:response_failed, Shapes::ShapeRef.new(shape: SendMessageResponseFailedEvent, event: true, location_name: "responseFailed"))
    SendMessageEvents.add_member(:summary, Shapes::ShapeRef.new(shape: SendMessageSummaryEvent, event: true, location_name: "summary"))
    SendMessageEvents.add_member(:heartbeat, Shapes::ShapeRef.new(shape: SendMessageHeartbeatEvent, event: true, location_name: "heartbeat"))
    SendMessageEvents.add_member(:content_block_start, Shapes::ShapeRef.new(shape: SendMessageContentBlockStartEvent, event: true, location_name: "contentBlockStart"))
    SendMessageEvents.add_member(:content_block_delta, Shapes::ShapeRef.new(shape: SendMessageContentBlockDeltaEvent, event: true, location_name: "contentBlockDelta"))
    SendMessageEvents.add_member(:content_block_stop, Shapes::ShapeRef.new(shape: SendMessageContentBlockStopEvent, event: true, location_name: "contentBlockStop"))
    SendMessageEvents.struct_class = Types::SendMessageEvents

    SendMessageHeartbeatEvent.struct_class = Types::SendMessageHeartbeatEvent

    SendMessageJsonDelta.add_member(:partial_json, Shapes::ShapeRef.new(shape: String, location_name: "partialJson"))
    SendMessageJsonDelta.struct_class = Types::SendMessageJsonDelta

    SendMessageRequest.add_member(:agent_space_id, Shapes::ShapeRef.new(shape: AgentSpaceId, required: true, location: "uri", location_name: "agentSpaceId"))
    SendMessageRequest.add_member(:execution_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "executionId"))
    SendMessageRequest.add_member(:content, Shapes::ShapeRef.new(shape: MessageContent, required: true, location_name: "content"))
    SendMessageRequest.add_member(:context, Shapes::ShapeRef.new(shape: SendMessageContext, location_name: "context"))
    SendMessageRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: ResourceId, deprecated: true, location_name: "userId", metadata: {"deprecatedMessage" => "userId is managed by the service and should not be provided by the caller", "deprecatedSince" => "2026-04-15"}))
    SendMessageRequest.struct_class = Types::SendMessageRequest

    SendMessageResponse.add_member(:events, Shapes::ShapeRef.new(shape: SendMessageEvents, required: true, eventstream: true, location_name: "events"))
    SendMessageResponse.struct_class = Types::SendMessageResponse
    SendMessageResponse[:payload] = :events
    SendMessageResponse[:payload_member] = SendMessageResponse.member(:events)

    SendMessageResponseCompletedEvent.add_member(:response_id, Shapes::ShapeRef.new(shape: String, location_name: "responseId"))
    SendMessageResponseCompletedEvent.add_member(:usage, Shapes::ShapeRef.new(shape: SendMessageUsageInfo, location_name: "usage"))
    SendMessageResponseCompletedEvent.add_member(:sequence_number, Shapes::ShapeRef.new(shape: Integer, location_name: "sequenceNumber"))
    SendMessageResponseCompletedEvent.struct_class = Types::SendMessageResponseCompletedEvent

    SendMessageResponseCreatedEvent.add_member(:response_id, Shapes::ShapeRef.new(shape: String, location_name: "responseId"))
    SendMessageResponseCreatedEvent.add_member(:sequence_number, Shapes::ShapeRef.new(shape: Integer, location_name: "sequenceNumber"))
    SendMessageResponseCreatedEvent.struct_class = Types::SendMessageResponseCreatedEvent

    SendMessageResponseFailedEvent.add_member(:response_id, Shapes::ShapeRef.new(shape: String, location_name: "responseId"))
    SendMessageResponseFailedEvent.add_member(:error_code, Shapes::ShapeRef.new(shape: String, location_name: "errorCode"))
    SendMessageResponseFailedEvent.add_member(:error_message, Shapes::ShapeRef.new(shape: String, location_name: "errorMessage"))
    SendMessageResponseFailedEvent.add_member(:sequence_number, Shapes::ShapeRef.new(shape: Integer, location_name: "sequenceNumber"))
    SendMessageResponseFailedEvent.struct_class = Types::SendMessageResponseFailedEvent

    SendMessageResponseInProgressEvent.add_member(:response_id, Shapes::ShapeRef.new(shape: String, location_name: "responseId"))
    SendMessageResponseInProgressEvent.add_member(:sequence_number, Shapes::ShapeRef.new(shape: Integer, location_name: "sequenceNumber"))
    SendMessageResponseInProgressEvent.struct_class = Types::SendMessageResponseInProgressEvent

    SendMessageSummaryEvent.add_member(:content, Shapes::ShapeRef.new(shape: String, location_name: "content"))
    SendMessageSummaryEvent.add_member(:sequence_number, Shapes::ShapeRef.new(shape: Integer, location_name: "sequenceNumber"))
    SendMessageSummaryEvent.struct_class = Types::SendMessageSummaryEvent

    SendMessageTextDelta.add_member(:text, Shapes::ShapeRef.new(shape: String, location_name: "text"))
    SendMessageTextDelta.struct_class = Types::SendMessageTextDelta

    SendMessageUsageInfo.add_member(:input_tokens, Shapes::ShapeRef.new(shape: Integer, location_name: "inputTokens"))
    SendMessageUsageInfo.add_member(:output_tokens, Shapes::ShapeRef.new(shape: Integer, location_name: "outputTokens"))
    SendMessageUsageInfo.add_member(:total_tokens, Shapes::ShapeRef.new(shape: Integer, location_name: "totalTokens"))
    SendMessageUsageInfo.struct_class = Types::SendMessageUsageInfo

    ServiceConfiguration.add_member(:source_aws, Shapes::ShapeRef.new(shape: SourceAwsConfiguration, location_name: "sourceAws"))
    ServiceConfiguration.add_member(:aws, Shapes::ShapeRef.new(shape: AWSConfiguration, location_name: "aws"))
    ServiceConfiguration.add_member(:github, Shapes::ShapeRef.new(shape: GitHubConfiguration, location_name: "github"))
    ServiceConfiguration.add_member(:slack, Shapes::ShapeRef.new(shape: SlackConfiguration, location_name: "slack"))
    ServiceConfiguration.add_member(:dynatrace, Shapes::ShapeRef.new(shape: DynatraceConfiguration, location_name: "dynatrace"))
    ServiceConfiguration.add_member(:servicenow, Shapes::ShapeRef.new(shape: ServiceNowConfiguration, location_name: "servicenow"))
    ServiceConfiguration.add_member(:mcpservernewrelic, Shapes::ShapeRef.new(shape: MCPServerNewRelicConfiguration, location_name: "mcpservernewrelic"))
    ServiceConfiguration.add_member(:mcpserverdatadog, Shapes::ShapeRef.new(shape: MCPServerDatadogConfiguration, location_name: "mcpserverdatadog"))
    ServiceConfiguration.add_member(:mcpserver, Shapes::ShapeRef.new(shape: MCPServerConfiguration, location_name: "mcpserver"))
    ServiceConfiguration.add_member(:gitlab, Shapes::ShapeRef.new(shape: GitLabConfiguration, location_name: "gitlab"))
    ServiceConfiguration.add_member(:mcpserversplunk, Shapes::ShapeRef.new(shape: MCPServerSplunkConfiguration, location_name: "mcpserversplunk"))
    ServiceConfiguration.add_member(:event_channel, Shapes::ShapeRef.new(shape: EventChannelConfiguration, location_name: "eventChannel"))
    ServiceConfiguration.add_member(:azure, Shapes::ShapeRef.new(shape: AzureConfiguration, location_name: "azure"))
    ServiceConfiguration.add_member(:azuredevops, Shapes::ShapeRef.new(shape: AzureDevOpsConfiguration, location_name: "azuredevops"))
    ServiceConfiguration.add_member(:mcpservergrafana, Shapes::ShapeRef.new(shape: MCPServerGrafanaConfiguration, location_name: "mcpservergrafana"))
    ServiceConfiguration.add_member(:pagerduty, Shapes::ShapeRef.new(shape: PagerDutyConfiguration, location_name: "pagerduty"))
    ServiceConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ServiceConfiguration.add_member_subclass(:source_aws, Types::ServiceConfiguration::SourceAws)
    ServiceConfiguration.add_member_subclass(:aws, Types::ServiceConfiguration::Aws)
    ServiceConfiguration.add_member_subclass(:github, Types::ServiceConfiguration::Github)
    ServiceConfiguration.add_member_subclass(:slack, Types::ServiceConfiguration::Slack)
    ServiceConfiguration.add_member_subclass(:dynatrace, Types::ServiceConfiguration::Dynatrace)
    ServiceConfiguration.add_member_subclass(:servicenow, Types::ServiceConfiguration::Servicenow)
    ServiceConfiguration.add_member_subclass(:mcpservernewrelic, Types::ServiceConfiguration::Mcpservernewrelic)
    ServiceConfiguration.add_member_subclass(:mcpserverdatadog, Types::ServiceConfiguration::Mcpserverdatadog)
    ServiceConfiguration.add_member_subclass(:mcpserver, Types::ServiceConfiguration::Mcpserver)
    ServiceConfiguration.add_member_subclass(:gitlab, Types::ServiceConfiguration::Gitlab)
    ServiceConfiguration.add_member_subclass(:mcpserversplunk, Types::ServiceConfiguration::Mcpserversplunk)
    ServiceConfiguration.add_member_subclass(:event_channel, Types::ServiceConfiguration::EventChannel)
    ServiceConfiguration.add_member_subclass(:azure, Types::ServiceConfiguration::Azure)
    ServiceConfiguration.add_member_subclass(:azuredevops, Types::ServiceConfiguration::Azuredevops)
    ServiceConfiguration.add_member_subclass(:mcpservergrafana, Types::ServiceConfiguration::Mcpservergrafana)
    ServiceConfiguration.add_member_subclass(:pagerduty, Types::ServiceConfiguration::Pagerduty)
    ServiceConfiguration.add_member_subclass(:unknown, Types::ServiceConfiguration::Unknown)
    ServiceConfiguration.struct_class = Types::ServiceConfiguration

    ServiceDetails.add_member(:dynatrace, Shapes::ShapeRef.new(shape: DynatraceServiceDetails, location_name: "dynatrace"))
    ServiceDetails.add_member(:servicenow, Shapes::ShapeRef.new(shape: ServiceNowServiceDetails, location_name: "servicenow"))
    ServiceDetails.add_member(:mcpserverdatadog, Shapes::ShapeRef.new(shape: DatadogServiceDetails, location_name: "mcpserverdatadog"))
    ServiceDetails.add_member(:mcpserver, Shapes::ShapeRef.new(shape: MCPServerDetails, location_name: "mcpserver"))
    ServiceDetails.add_member(:gitlab, Shapes::ShapeRef.new(shape: GitLabDetails, location_name: "gitlab"))
    ServiceDetails.add_member(:mcpserversplunk, Shapes::ShapeRef.new(shape: MCPServerDetails, location_name: "mcpserversplunk"))
    ServiceDetails.add_member(:mcpservernewrelic, Shapes::ShapeRef.new(shape: NewRelicServiceDetails, location_name: "mcpservernewrelic"))
    ServiceDetails.add_member(:event_channel, Shapes::ShapeRef.new(shape: EventChannelDetails, location_name: "eventChannel"))
    ServiceDetails.add_member(:mcpservergrafana, Shapes::ShapeRef.new(shape: GrafanaServiceDetails, location_name: "mcpservergrafana"))
    ServiceDetails.add_member(:pagerduty, Shapes::ShapeRef.new(shape: PagerDutyDetails, location_name: "pagerduty"))
    ServiceDetails.add_member(:azureidentity, Shapes::ShapeRef.new(shape: RegisteredAzureIdentityDetails, location_name: "azureidentity"))
    ServiceDetails.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ServiceDetails.add_member_subclass(:dynatrace, Types::ServiceDetails::Dynatrace)
    ServiceDetails.add_member_subclass(:servicenow, Types::ServiceDetails::Servicenow)
    ServiceDetails.add_member_subclass(:mcpserverdatadog, Types::ServiceDetails::Mcpserverdatadog)
    ServiceDetails.add_member_subclass(:mcpserver, Types::ServiceDetails::Mcpserver)
    ServiceDetails.add_member_subclass(:gitlab, Types::ServiceDetails::Gitlab)
    ServiceDetails.add_member_subclass(:mcpserversplunk, Types::ServiceDetails::Mcpserversplunk)
    ServiceDetails.add_member_subclass(:mcpservernewrelic, Types::ServiceDetails::Mcpservernewrelic)
    ServiceDetails.add_member_subclass(:event_channel, Types::ServiceDetails::EventChannel)
    ServiceDetails.add_member_subclass(:mcpservergrafana, Types::ServiceDetails::Mcpservergrafana)
    ServiceDetails.add_member_subclass(:pagerduty, Types::ServiceDetails::Pagerduty)
    ServiceDetails.add_member_subclass(:azureidentity, Types::ServiceDetails::Azureidentity)
    ServiceDetails.add_member_subclass(:unknown, Types::ServiceDetails::Unknown)
    ServiceDetails.struct_class = Types::ServiceDetails

    ServiceManagedInput.add_member(:host_address, Shapes::ShapeRef.new(shape: IpAddressOrDnsName, required: true, location_name: "hostAddress"))
    ServiceManagedInput.add_member(:vpc_id, Shapes::ShapeRef.new(shape: VpcId, required: true, location_name: "vpcId"))
    ServiceManagedInput.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: ListOfSubnetIds, required: true, location_name: "subnetIds"))
    ServiceManagedInput.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: ListOfSecurityGroupIds, location_name: "securityGroupIds"))
    ServiceManagedInput.add_member(:ip_address_type, Shapes::ShapeRef.new(shape: IpAddressType, location_name: "ipAddressType"))
    ServiceManagedInput.add_member(:ipv4_addresses_per_eni, Shapes::ShapeRef.new(shape: MaxIpv4AddressesPerEni, location_name: "ipv4AddressesPerEni"))
    ServiceManagedInput.add_member(:port_ranges, Shapes::ShapeRef.new(shape: PortRanges, location_name: "portRanges"))
    ServiceManagedInput.add_member(:certificate, Shapes::ShapeRef.new(shape: CertificateString, location_name: "certificate"))
    ServiceManagedInput.struct_class = Types::ServiceManagedInput

    ServiceNowAuthenticationScopeList.member = Shapes::ShapeRef.new(shape: String)

    ServiceNowConfiguration.add_member(:instance_id, Shapes::ShapeRef.new(shape: String, location_name: "instanceId"))
    ServiceNowConfiguration.add_member(:auth_scopes, Shapes::ShapeRef.new(shape: ServiceNowAuthenticationScopeList, location_name: "authScopes"))
    ServiceNowConfiguration.struct_class = Types::ServiceNowConfiguration

    ServiceNowOAuthClientCredentialsConfig.add_member(:client_name, Shapes::ShapeRef.new(shape: ServiceNowOAuthClientCredentialsConfigClientNameString, location_name: "clientName"))
    ServiceNowOAuthClientCredentialsConfig.add_member(:client_id, Shapes::ShapeRef.new(shape: ClientId, required: true, location_name: "clientId"))
    ServiceNowOAuthClientCredentialsConfig.add_member(:exchange_parameters, Shapes::ShapeRef.new(shape: ExchangeParameters, location_name: "exchangeParameters"))
    ServiceNowOAuthClientCredentialsConfig.add_member(:client_secret, Shapes::ShapeRef.new(shape: ClientSecret, required: true, location_name: "clientSecret"))
    ServiceNowOAuthClientCredentialsConfig.struct_class = Types::ServiceNowOAuthClientCredentialsConfig

    ServiceNowServiceAuthorizationConfig.add_member(:o_auth_client_credentials, Shapes::ShapeRef.new(shape: ServiceNowOAuthClientCredentialsConfig, location_name: "oAuthClientCredentials"))
    ServiceNowServiceAuthorizationConfig.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ServiceNowServiceAuthorizationConfig.add_member_subclass(:o_auth_client_credentials, Types::ServiceNowServiceAuthorizationConfig::OAuthClientCredentials)
    ServiceNowServiceAuthorizationConfig.add_member_subclass(:unknown, Types::ServiceNowServiceAuthorizationConfig::Unknown)
    ServiceNowServiceAuthorizationConfig.struct_class = Types::ServiceNowServiceAuthorizationConfig

    ServiceNowServiceDetails.add_member(:instance_url, Shapes::ShapeRef.new(shape: ServiceNowInstanceUrl, required: true, location_name: "instanceUrl"))
    ServiceNowServiceDetails.add_member(:authorization_config, Shapes::ShapeRef.new(shape: ServiceNowServiceAuthorizationConfig, location_name: "authorizationConfig"))
    ServiceNowServiceDetails.struct_class = Types::ServiceNowServiceDetails

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    SlackChannel.add_member(:channel_name, Shapes::ShapeRef.new(shape: String, location_name: "channelName"))
    SlackChannel.add_member(:channel_id, Shapes::ShapeRef.new(shape: SlackChannelChannelIdString, required: true, location_name: "channelId"))
    SlackChannel.struct_class = Types::SlackChannel

    SlackConfiguration.add_member(:workspace_id, Shapes::ShapeRef.new(shape: SlackConfigurationWorkspaceIdString, required: true, location_name: "workspaceId"))
    SlackConfiguration.add_member(:workspace_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "workspaceName"))
    SlackConfiguration.add_member(:transmission_target, Shapes::ShapeRef.new(shape: SlackTransmissionTarget, required: true, location_name: "transmissionTarget"))
    SlackConfiguration.struct_class = Types::SlackConfiguration

    SlackTransmissionTarget.add_member(:ops_oncall_target, Shapes::ShapeRef.new(shape: SlackChannel, required: true, location_name: "opsOncallTarget"))
    SlackTransmissionTarget.add_member(:ops_sre_target, Shapes::ShapeRef.new(shape: SlackChannel, location_name: "opsSRETarget"))
    SlackTransmissionTarget.struct_class = Types::SlackTransmissionTarget

    SourceAwsConfiguration.add_member(:account_id, Shapes::ShapeRef.new(shape: SourceAwsConfigurationAccountIdString, required: true, location_name: "accountId"))
    SourceAwsConfiguration.add_member(:account_type, Shapes::ShapeRef.new(shape: SourceAccountType, required: true, location_name: "accountType"))
    SourceAwsConfiguration.add_member(:assumable_role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "assumableRoleArn"))
    SourceAwsConfiguration.add_member(:external_id, Shapes::ShapeRef.new(shape: String, location_name: "externalId"))
    SourceAwsConfiguration.struct_class = Types::SourceAwsConfiguration

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: TagResourceRequestResourceArnString, required: true, location: "uri", location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    Tags.key = Shapes::ShapeRef.new(shape: TagKey)
    Tags.value = Shapes::ShapeRef.new(shape: TagValue)

    Task.add_member(:agent_space_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "agentSpaceId"))
    Task.add_member(:task_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "taskId"))
    Task.add_member(:execution_id, Shapes::ShapeRef.new(shape: String, location_name: "executionId"))
    Task.add_member(:title, Shapes::ShapeRef.new(shape: String, required: true, location_name: "title"))
    Task.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    Task.add_member(:reference, Shapes::ShapeRef.new(shape: ReferenceOutput, location_name: "reference"))
    Task.add_member(:task_type, Shapes::ShapeRef.new(shape: TaskType, required: true, location_name: "taskType"))
    Task.add_member(:priority, Shapes::ShapeRef.new(shape: Priority, required: true, location_name: "priority"))
    Task.add_member(:status, Shapes::ShapeRef.new(shape: TaskStatus, required: true, location_name: "status"))
    Task.add_member(:created_at, Shapes::ShapeRef.new(shape: BackLogTimestamp, required: true, location_name: "createdAt"))
    Task.add_member(:updated_at, Shapes::ShapeRef.new(shape: BackLogTimestamp, required: true, location_name: "updatedAt"))
    Task.add_member(:version, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "version"))
    Task.add_member(:support_metadata, Shapes::ShapeRef.new(shape: Document, location_name: "supportMetadata"))
    Task.add_member(:metadata, Shapes::ShapeRef.new(shape: Document, location_name: "metadata"))
    Task.add_member(:primary_task_id, Shapes::ShapeRef.new(shape: String, location_name: "primaryTaskId"))
    Task.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    Task.add_member(:has_linked_tasks, Shapes::ShapeRef.new(shape: Boolean, location_name: "hasLinkedTasks"))
    Task.struct_class = Types::Task

    TaskFilter.add_member(:created_after, Shapes::ShapeRef.new(shape: BackLogTimestamp, location_name: "createdAfter"))
    TaskFilter.add_member(:created_before, Shapes::ShapeRef.new(shape: BackLogTimestamp, location_name: "createdBefore"))
    TaskFilter.add_member(:priority, Shapes::ShapeRef.new(shape: TaskFilterPriorityList, location_name: "priority"))
    TaskFilter.add_member(:status, Shapes::ShapeRef.new(shape: TaskFilterStatusList, location_name: "status"))
    TaskFilter.add_member(:task_type, Shapes::ShapeRef.new(shape: TaskFilterTaskTypeList, location_name: "taskType"))
    TaskFilter.add_member(:primary_task_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "primaryTaskId"))
    TaskFilter.struct_class = Types::TaskFilter

    TaskFilterPriorityList.member = Shapes::ShapeRef.new(shape: Priority)

    TaskFilterStatusList.member = Shapes::ShapeRef.new(shape: TaskStatus)

    TaskFilterTaskTypeList.member = Shapes::ShapeRef.new(shape: TaskType)

    TaskList.member = Shapes::ShapeRef.new(shape: Task)

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: UntagResourceRequestResourceArnString, required: true, location: "uri", location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateAgentSpaceInput.add_member(:agent_space_id, Shapes::ShapeRef.new(shape: AgentSpaceId, required: true, location: "uri", location_name: "agentSpaceId"))
    UpdateAgentSpaceInput.add_member(:name, Shapes::ShapeRef.new(shape: AgentSpaceName, location_name: "name"))
    UpdateAgentSpaceInput.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    UpdateAgentSpaceInput.add_member(:locale, Shapes::ShapeRef.new(shape: Locale, location_name: "locale"))
    UpdateAgentSpaceInput.struct_class = Types::UpdateAgentSpaceInput

    UpdateAgentSpaceOutput.add_member(:agent_space, Shapes::ShapeRef.new(shape: AgentSpace, required: true, location_name: "agentSpace"))
    UpdateAgentSpaceOutput.struct_class = Types::UpdateAgentSpaceOutput

    UpdateAssociationInput.add_member(:agent_space_id, Shapes::ShapeRef.new(shape: AgentSpaceId, required: true, location: "uri", location_name: "agentSpaceId"))
    UpdateAssociationInput.add_member(:association_id, Shapes::ShapeRef.new(shape: AssociationId, required: true, location: "uri", location_name: "associationId"))
    UpdateAssociationInput.add_member(:configuration, Shapes::ShapeRef.new(shape: ServiceConfiguration, required: true, location_name: "configuration"))
    UpdateAssociationInput.struct_class = Types::UpdateAssociationInput

    UpdateAssociationOutput.add_member(:association, Shapes::ShapeRef.new(shape: Association, required: true, location_name: "association"))
    UpdateAssociationOutput.add_member(:webhook, Shapes::ShapeRef.new(shape: GenericWebhook, location_name: "webhook"))
    UpdateAssociationOutput.struct_class = Types::UpdateAssociationOutput

    UpdateBacklogTaskRequest.add_member(:agent_space_id, Shapes::ShapeRef.new(shape: AgentSpaceId, required: true, location: "uri", location_name: "agentSpaceId"))
    UpdateBacklogTaskRequest.add_member(:task_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "taskId"))
    UpdateBacklogTaskRequest.add_member(:task_status, Shapes::ShapeRef.new(shape: TaskStatus, location_name: "taskStatus"))
    UpdateBacklogTaskRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: String, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    UpdateBacklogTaskRequest.struct_class = Types::UpdateBacklogTaskRequest

    UpdateBacklogTaskResponse.add_member(:task, Shapes::ShapeRef.new(shape: Task, required: true, location_name: "task"))
    UpdateBacklogTaskResponse.struct_class = Types::UpdateBacklogTaskResponse

    UpdateGoalRequest.add_member(:agent_space_id, Shapes::ShapeRef.new(shape: AgentSpaceId, required: true, location: "uri", location_name: "agentSpaceId"))
    UpdateGoalRequest.add_member(:goal_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "goalId"))
    UpdateGoalRequest.add_member(:evaluation_schedule, Shapes::ShapeRef.new(shape: GoalScheduleInput, location_name: "evaluationSchedule"))
    UpdateGoalRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: String, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    UpdateGoalRequest.struct_class = Types::UpdateGoalRequest

    UpdateGoalResponse.add_member(:goal, Shapes::ShapeRef.new(shape: Goal, required: true, location_name: "goal"))
    UpdateGoalResponse.struct_class = Types::UpdateGoalResponse

    UpdateOperatorAppIdpConfigInput.add_member(:agent_space_id, Shapes::ShapeRef.new(shape: AgentSpaceId, required: true, location: "uri", location_name: "agentSpaceId"))
    UpdateOperatorAppIdpConfigInput.add_member(:idp_client_secret, Shapes::ShapeRef.new(shape: IdpClientSecret, location_name: "idpClientSecret"))
    UpdateOperatorAppIdpConfigInput.struct_class = Types::UpdateOperatorAppIdpConfigInput

    UpdateOperatorAppIdpConfigOutput.add_member(:agent_space_id, Shapes::ShapeRef.new(shape: AgentSpaceId, required: true, location_name: "agentSpaceId"))
    UpdateOperatorAppIdpConfigOutput.add_member(:idp, Shapes::ShapeRef.new(shape: IdpAuthConfiguration, required: true, location_name: "idp"))
    UpdateOperatorAppIdpConfigOutput.struct_class = Types::UpdateOperatorAppIdpConfigOutput

    UpdatePrivateConnectionCertificateInput.add_member(:name, Shapes::ShapeRef.new(shape: PrivateConnectionName, required: true, location: "uri", location_name: "name"))
    UpdatePrivateConnectionCertificateInput.add_member(:certificate, Shapes::ShapeRef.new(shape: CertificateString, required: true, location_name: "certificate"))
    UpdatePrivateConnectionCertificateInput.struct_class = Types::UpdatePrivateConnectionCertificateInput

    UpdatePrivateConnectionCertificateOutput.add_member(:name, Shapes::ShapeRef.new(shape: PrivateConnectionName, required: true, location_name: "name"))
    UpdatePrivateConnectionCertificateOutput.add_member(:type, Shapes::ShapeRef.new(shape: PrivateConnectionType, required: true, location_name: "type"))
    UpdatePrivateConnectionCertificateOutput.add_member(:resource_gateway_id, Shapes::ShapeRef.new(shape: ResourceGatewayArn, location_name: "resourceGatewayId"))
    UpdatePrivateConnectionCertificateOutput.add_member(:host_address, Shapes::ShapeRef.new(shape: IpAddressOrDnsName, location_name: "hostAddress"))
    UpdatePrivateConnectionCertificateOutput.add_member(:vpc_id, Shapes::ShapeRef.new(shape: VpcId, location_name: "vpcId"))
    UpdatePrivateConnectionCertificateOutput.add_member(:resource_configuration_id, Shapes::ShapeRef.new(shape: ResourceConfigurationArn, location_name: "resourceConfigurationId"))
    UpdatePrivateConnectionCertificateOutput.add_member(:status, Shapes::ShapeRef.new(shape: PrivateConnectionStatus, required: true, location_name: "status"))
    UpdatePrivateConnectionCertificateOutput.add_member(:certificate_expiry_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "certificateExpiryTime"))
    UpdatePrivateConnectionCertificateOutput.struct_class = Types::UpdatePrivateConnectionCertificateOutput

    UpdateRecommendationRequest.add_member(:agent_space_id, Shapes::ShapeRef.new(shape: AgentSpaceId, required: true, location: "uri", location_name: "agentSpaceId"))
    UpdateRecommendationRequest.add_member(:recommendation_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "recommendationId"))
    UpdateRecommendationRequest.add_member(:status, Shapes::ShapeRef.new(shape: RecommendationStatus, location_name: "status"))
    UpdateRecommendationRequest.add_member(:additional_context, Shapes::ShapeRef.new(shape: String, location_name: "additionalContext"))
    UpdateRecommendationRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: String, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    UpdateRecommendationRequest.struct_class = Types::UpdateRecommendationRequest

    UpdateRecommendationResponse.add_member(:recommendation, Shapes::ShapeRef.new(shape: Recommendation, required: true, location_name: "recommendation"))
    UpdateRecommendationResponse.struct_class = Types::UpdateRecommendationResponse

    UsageMetric.add_member(:limit, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "limit"))
    UsageMetric.add_member(:usage, Shapes::ShapeRef.new(shape: Double, required: true, location_name: "usage"))
    UsageMetric.struct_class = Types::UsageMetric

    UserMessage.member = Shapes::ShapeRef.new(shape: UserMessageBlock)

    UserMessageBlock.add_member(:text, Shapes::ShapeRef.new(shape: String, location_name: "text"))
    UserMessageBlock.add_member(:tool_result, Shapes::ShapeRef.new(shape: Document, location_name: "toolResult"))
    UserMessageBlock.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    UserMessageBlock.add_member_subclass(:text, Types::UserMessageBlock::Text)
    UserMessageBlock.add_member_subclass(:tool_result, Types::UserMessageBlock::ToolResult)
    UserMessageBlock.add_member_subclass(:unknown, Types::UserMessageBlock::Unknown)
    UserMessageBlock.struct_class = Types::UserMessageBlock

    UserReference.add_member(:user_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "userId"))
    UserReference.add_member(:user_type, Shapes::ShapeRef.new(shape: UserType, required: true, location_name: "userType"))
    UserReference.struct_class = Types::UserReference

    ValidateAwsAssociationsInput.add_member(:agent_space_id, Shapes::ShapeRef.new(shape: AgentSpaceId, required: true, location: "uri", location_name: "agentSpaceId"))
    ValidateAwsAssociationsInput.struct_class = Types::ValidateAwsAssociationsInput

    ValidateAwsAssociationsOutput.struct_class = Types::ValidateAwsAssociationsOutput

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationException.add_member(:field_list, Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: "fieldList"))
    ValidationException.struct_class = Types::ValidationException

    ValidationExceptionField.add_member(:path, Shapes::ShapeRef.new(shape: String, required: true, location_name: "path"))
    ValidationExceptionField.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationExceptionField.struct_class = Types::ValidationExceptionField

    ValidationExceptionFieldList.member = Shapes::ShapeRef.new(shape: ValidationExceptionField)

    WebIdentityTokenAudienceList.member = Shapes::ShapeRef.new(shape: String)

    Webhook.add_member(:webhook_url, Shapes::ShapeRef.new(shape: WebhookWebhookUrlString, required: true, location_name: "webhookUrl"))
    Webhook.add_member(:webhook_type, Shapes::ShapeRef.new(shape: WebhookType, location_name: "webhookType"))
    Webhook.add_member(:webhook_id, Shapes::ShapeRef.new(shape: WebhookWebhookIdString, required: true, location_name: "webhookId"))
    Webhook.struct_class = Types::Webhook

    WebhooksList.member = Shapes::ShapeRef.new(shape: Webhook)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2026-01-01"

      api.metadata = {
        "apiVersion" => "2026-01-01",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "aidevops",
        "protocol" => "rest-json",
        "protocols" => ["rest-json"],
        "serviceFullName" => "AWS DevOps Agent Service",
        "serviceId" => "DevOps Agent",
        "signatureVersion" => "v4",
        "signingName" => "aidevops",
        "uid" => "devops-agent-2026-01-01",
      }

      api.add_operation(:associate_service, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateService"
        o.http_method = "POST"
        o.http_request_uri = "/v1/agentspaces/{agentSpaceId}/associations"
        o.endpoint_pattern = {
          "hostPrefix" => "cp.",
        }
        o.input = Shapes::ShapeRef.new(shape: AssociateServiceInput)
        o.output = Shapes::ShapeRef.new(shape: AssociateServiceOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ContentSizeExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
      end)

      api.add_operation(:create_agent_space, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAgentSpace"
        o.http_method = "POST"
        o.http_request_uri = "/v1/agentspaces"
        o.endpoint_pattern = {
          "hostPrefix" => "cp.",
        }
        o.input = Shapes::ShapeRef.new(shape: CreateAgentSpaceInput)
        o.output = Shapes::ShapeRef.new(shape: CreateAgentSpaceOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ContentSizeExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:create_backlog_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateBacklogTask"
        o.http_method = "POST"
        o.http_request_uri = "/backlog/agent-space/{agentSpaceId}/tasks"
        o.endpoint_pattern = {
          "hostPrefix" => "dp.",
        }
        o.input = Shapes::ShapeRef.new(shape: CreateBacklogTaskRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateBacklogTaskResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ContentSizeExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
      end)

      api.add_operation(:create_chat, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateChat"
        o.http_method = "POST"
        o.http_request_uri = "/agents/agent-space/{agentSpaceId}/chat/create"
        o.endpoint_pattern = {
          "hostPrefix" => "dp.",
        }
        o.input = Shapes::ShapeRef.new(shape: CreateChatRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateChatResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ContentSizeExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
      end)

      api.add_operation(:create_private_connection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreatePrivateConnection"
        o.http_method = "POST"
        o.http_request_uri = "/v1/private-connections"
        o.endpoint_pattern = {
          "hostPrefix" => "cp.",
        }
        o.input = Shapes::ShapeRef.new(shape: CreatePrivateConnectionInput)
        o.output = Shapes::ShapeRef.new(shape: CreatePrivateConnectionOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ContentSizeExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
      end)

      api.add_operation(:delete_agent_space, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAgentSpace"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/agentspaces/{agentSpaceId}"
        o.endpoint_pattern = {
          "hostPrefix" => "cp.",
        }
        o.input = Shapes::ShapeRef.new(shape: DeleteAgentSpaceInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteAgentSpaceOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ContentSizeExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
      end)

      api.add_operation(:delete_private_connection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeletePrivateConnection"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/private-connections/{name}"
        o.endpoint_pattern = {
          "hostPrefix" => "cp.",
        }
        o.input = Shapes::ShapeRef.new(shape: DeletePrivateConnectionInput)
        o.output = Shapes::ShapeRef.new(shape: DeletePrivateConnectionOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ContentSizeExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
      end)

      api.add_operation(:deregister_service, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeregisterService"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/services/{serviceId}"
        o.endpoint_pattern = {
          "hostPrefix" => "cp.",
        }
        o.input = Shapes::ShapeRef.new(shape: DeregisterServiceInput)
        o.output = Shapes::ShapeRef.new(shape: DeregisterServiceOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ContentSizeExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
      end)

      api.add_operation(:describe_private_connection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribePrivateConnection"
        o.http_method = "GET"
        o.http_request_uri = "/v1/private-connections/{name}"
        o.endpoint_pattern = {
          "hostPrefix" => "cp.",
        }
        o.input = Shapes::ShapeRef.new(shape: DescribePrivateConnectionInput)
        o.output = Shapes::ShapeRef.new(shape: DescribePrivateConnectionOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ContentSizeExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
      end)

      api.add_operation(:disable_operator_app, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisableOperatorApp"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/agentspaces/{agentSpaceId}/operator"
        o.endpoint_pattern = {
          "hostPrefix" => "cp.",
        }
        o.input = Shapes::ShapeRef.new(shape: DisableOperatorAppInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: IdentityCenterServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ContentSizeExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
      end)

      api.add_operation(:disassociate_service, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateService"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/agentspaces/{agentSpaceId}/associations/{associationId}"
        o.endpoint_pattern = {
          "hostPrefix" => "cp.",
        }
        o.input = Shapes::ShapeRef.new(shape: DisassociateServiceInput)
        o.output = Shapes::ShapeRef.new(shape: DisassociateServiceOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ContentSizeExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
      end)

      api.add_operation(:enable_operator_app, Seahorse::Model::Operation.new.tap do |o|
        o.name = "EnableOperatorApp"
        o.http_method = "POST"
        o.http_request_uri = "/v1/agentspaces/{agentSpaceId}/operator"
        o.endpoint_pattern = {
          "hostPrefix" => "cp.",
        }
        o.input = Shapes::ShapeRef.new(shape: EnableOperatorAppInput)
        o.output = Shapes::ShapeRef.new(shape: EnableOperatorAppOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: IdentityCenterServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ContentSizeExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
      end)

      api.add_operation(:get_account_usage, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAccountUsage"
        o.http_method = "GET"
        o.http_request_uri = "/usage/account"
        o.endpoint_pattern = {
          "hostPrefix" => "dp.",
        }
        o.input = Shapes::ShapeRef.new(shape: GetAccountUsageInput)
        o.output = Shapes::ShapeRef.new(shape: GetAccountUsageOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ContentSizeExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
      end)

      api.add_operation(:get_agent_space, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAgentSpace"
        o.http_method = "GET"
        o.http_request_uri = "/v1/agentspaces/{agentSpaceId}"
        o.endpoint_pattern = {
          "hostPrefix" => "cp.",
        }
        o.input = Shapes::ShapeRef.new(shape: GetAgentSpaceInput)
        o.output = Shapes::ShapeRef.new(shape: GetAgentSpaceOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ContentSizeExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
      end)

      api.add_operation(:get_association, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAssociation"
        o.http_method = "GET"
        o.http_request_uri = "/v1/agentspaces/{agentSpaceId}/associations/{associationId}"
        o.endpoint_pattern = {
          "hostPrefix" => "cp.",
        }
        o.input = Shapes::ShapeRef.new(shape: GetAssociationInput)
        o.output = Shapes::ShapeRef.new(shape: GetAssociationOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ContentSizeExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
      end)

      api.add_operation(:get_backlog_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetBacklogTask"
        o.http_method = "GET"
        o.http_request_uri = "/backlog/agent-space/{agentSpaceId}/tasks/{taskId}"
        o.endpoint_pattern = {
          "hostPrefix" => "dp.",
        }
        o.input = Shapes::ShapeRef.new(shape: GetBacklogTaskRequest)
        o.output = Shapes::ShapeRef.new(shape: GetBacklogTaskResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ContentSizeExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
      end)

      api.add_operation(:get_operator_app, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetOperatorApp"
        o.http_method = "GET"
        o.http_request_uri = "/v2/agentspaces/{agentSpaceId}/operator"
        o.endpoint_pattern = {
          "hostPrefix" => "cp.",
        }
        o.input = Shapes::ShapeRef.new(shape: GetOperatorAppInput)
        o.output = Shapes::ShapeRef.new(shape: GetOperatorAppOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ContentSizeExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
      end)

      api.add_operation(:get_recommendation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetRecommendation"
        o.http_method = "GET"
        o.http_request_uri = "/backlog/agent-space/{agentSpaceId}/recommendations/{recommendationId}"
        o.endpoint_pattern = {
          "hostPrefix" => "dp.",
        }
        o.input = Shapes::ShapeRef.new(shape: GetRecommendationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetRecommendationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ContentSizeExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
      end)

      api.add_operation(:get_service, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetService"
        o.http_method = "GET"
        o.http_request_uri = "/v1/services/{serviceId}"
        o.endpoint_pattern = {
          "hostPrefix" => "cp.",
        }
        o.input = Shapes::ShapeRef.new(shape: GetServiceInput)
        o.output = Shapes::ShapeRef.new(shape: GetServiceOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ContentSizeExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
      end)

      api.add_operation(:list_agent_spaces, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAgentSpaces"
        o.http_method = "POST"
        o.http_request_uri = "/v1/agentspaces/list"
        o.endpoint_pattern = {
          "hostPrefix" => "cp.",
        }
        o.input = Shapes::ShapeRef.new(shape: ListAgentSpacesInput)
        o.output = Shapes::ShapeRef.new(shape: ListAgentSpacesOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ContentSizeExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_associations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAssociations"
        o.http_method = "POST"
        o.http_request_uri = "/v1/agentspaces/{agentSpaceId}/associations/list"
        o.endpoint_pattern = {
          "hostPrefix" => "cp.",
        }
        o.input = Shapes::ShapeRef.new(shape: ListAssociationsInput)
        o.output = Shapes::ShapeRef.new(shape: ListAssociationsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ContentSizeExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_backlog_tasks, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListBacklogTasks"
        o.http_method = "POST"
        o.http_request_uri = "/backlog/agent-space/{agentSpaceId}/tasks/list"
        o.endpoint_pattern = {
          "hostPrefix" => "dp.",
        }
        o.input = Shapes::ShapeRef.new(shape: ListBacklogTasksRequest)
        o.output = Shapes::ShapeRef.new(shape: ListBacklogTasksResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ContentSizeExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o[:pager] = Aws::Pager.new(
          limit_key: "limit",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_chats, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListChats"
        o.http_method = "GET"
        o.http_request_uri = "/agents/agent-space/{agentSpaceId}/chat/list"
        o.endpoint_pattern = {
          "hostPrefix" => "dp.",
        }
        o.input = Shapes::ShapeRef.new(shape: ListChatsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListChatsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ContentSizeExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
      end)

      api.add_operation(:list_executions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListExecutions"
        o.http_method = "POST"
        o.http_request_uri = "/journal/agent-space/{agentSpaceId}/executions"
        o.endpoint_pattern = {
          "hostPrefix" => "dp.",
        }
        o.input = Shapes::ShapeRef.new(shape: ListExecutionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListExecutionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ContentSizeExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o[:pager] = Aws::Pager.new(
          limit_key: "limit",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_goals, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListGoals"
        o.http_method = "POST"
        o.http_request_uri = "/backlog/agent-space/{agentSpaceId}/goals/list"
        o.endpoint_pattern = {
          "hostPrefix" => "dp.",
        }
        o.input = Shapes::ShapeRef.new(shape: ListGoalsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListGoalsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ContentSizeExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o[:pager] = Aws::Pager.new(
          limit_key: "limit",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_journal_records, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListJournalRecords"
        o.http_method = "POST"
        o.http_request_uri = "/journal/agent-space/{agentSpaceId}/journalRecords"
        o.endpoint_pattern = {
          "hostPrefix" => "dp.",
        }
        o.input = Shapes::ShapeRef.new(shape: ListJournalRecordsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListJournalRecordsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ContentSizeExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o[:pager] = Aws::Pager.new(
          limit_key: "limit",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_pending_messages, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPendingMessages"
        o.http_method = "POST"
        o.http_request_uri = "/agents/agent-space/{agentSpaceId}/pendingMessages"
        o.endpoint_pattern = {
          "hostPrefix" => "dp.",
        }
        o.input = Shapes::ShapeRef.new(shape: ListPendingMessagesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPendingMessagesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ContentSizeExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
      end)

      api.add_operation(:list_private_connections, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPrivateConnections"
        o.http_method = "GET"
        o.http_request_uri = "/v1/private-connections"
        o.endpoint_pattern = {
          "hostPrefix" => "cp.",
        }
        o.input = Shapes::ShapeRef.new(shape: ListPrivateConnectionsInput)
        o.output = Shapes::ShapeRef.new(shape: ListPrivateConnectionsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ContentSizeExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
      end)

      api.add_operation(:list_recommendations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRecommendations"
        o.http_method = "POST"
        o.http_request_uri = "/backlog/agent-space/{agentSpaceId}/recommendations/list"
        o.endpoint_pattern = {
          "hostPrefix" => "dp.",
        }
        o.input = Shapes::ShapeRef.new(shape: ListRecommendationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListRecommendationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ContentSizeExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
      end)

      api.add_operation(:list_services, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListServices"
        o.http_method = "POST"
        o.http_request_uri = "/v1/services/list"
        o.endpoint_pattern = {
          "hostPrefix" => "cp.",
        }
        o.input = Shapes::ShapeRef.new(shape: ListServicesInput)
        o.output = Shapes::ShapeRef.new(shape: ListServicesOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ContentSizeExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
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
        o.endpoint_pattern = {
          "hostPrefix" => "cp.",
        }
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ContentSizeExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
      end)

      api.add_operation(:list_webhooks, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListWebhooks"
        o.http_method = "POST"
        o.http_request_uri = "/v1/agentspaces/{agentSpaceId}/associations/{associationId}/webhooks/list"
        o.endpoint_pattern = {
          "hostPrefix" => "cp.",
        }
        o.input = Shapes::ShapeRef.new(shape: ListWebhooksInput)
        o.output = Shapes::ShapeRef.new(shape: ListWebhooksOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ContentSizeExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
      end)

      api.add_operation(:register_service, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RegisterService"
        o.http_method = "POST"
        o.http_request_uri = "/v1/register/{service}"
        o.endpoint_pattern = {
          "hostPrefix" => "cp.",
        }
        o.input = Shapes::ShapeRef.new(shape: RegisterServiceInput)
        o.output = Shapes::ShapeRef.new(shape: RegisterServiceOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ContentSizeExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:send_message, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SendMessage"
        o.http_method = "POST"
        o.http_request_uri = "/agents/agent-space/{agentSpaceId}/chat/sendMessage"
        o.endpoint_pattern = {
          "hostPrefix" => "dp.",
        }
        o.input = Shapes::ShapeRef.new(shape: SendMessageRequest)
        o.output = Shapes::ShapeRef.new(shape: SendMessageResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ContentSizeExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{resourceArn}"
        o.endpoint_pattern = {
          "hostPrefix" => "cp.",
        }
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ContentSizeExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{resourceArn}"
        o.endpoint_pattern = {
          "hostPrefix" => "cp.",
        }
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ContentSizeExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
      end)

      api.add_operation(:update_agent_space, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateAgentSpace"
        o.http_method = "PATCH"
        o.http_request_uri = "/v1/agentspaces/{agentSpaceId}"
        o.endpoint_pattern = {
          "hostPrefix" => "cp.",
        }
        o.input = Shapes::ShapeRef.new(shape: UpdateAgentSpaceInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateAgentSpaceOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ContentSizeExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
      end)

      api.add_operation(:update_association, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateAssociation"
        o.http_method = "PATCH"
        o.http_request_uri = "/v1/agentspaces/{agentSpaceId}/associations/{associationId}"
        o.endpoint_pattern = {
          "hostPrefix" => "cp.",
        }
        o.input = Shapes::ShapeRef.new(shape: UpdateAssociationInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateAssociationOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ContentSizeExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
      end)

      api.add_operation(:update_backlog_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateBacklogTask"
        o.http_method = "PATCH"
        o.http_request_uri = "/backlog/agent-space/{agentSpaceId}/tasks/{taskId}"
        o.endpoint_pattern = {
          "hostPrefix" => "dp.",
        }
        o.input = Shapes::ShapeRef.new(shape: UpdateBacklogTaskRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateBacklogTaskResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ContentSizeExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
      end)

      api.add_operation(:update_goal, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateGoal"
        o.http_method = "PATCH"
        o.http_request_uri = "/backlog/agent-space/{agentSpaceId}/goals/{goalId}"
        o.endpoint_pattern = {
          "hostPrefix" => "dp.",
        }
        o.input = Shapes::ShapeRef.new(shape: UpdateGoalRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateGoalResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ContentSizeExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
      end)

      api.add_operation(:update_operator_app_idp_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateOperatorAppIdpConfig"
        o.http_method = "PATCH"
        o.http_request_uri = "/v1/agentspaces/{agentSpaceId}/operator/idp"
        o.input = Shapes::ShapeRef.new(shape: UpdateOperatorAppIdpConfigInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateOperatorAppIdpConfigOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ContentSizeExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
      end)

      api.add_operation(:update_private_connection_certificate, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdatePrivateConnectionCertificate"
        o.http_method = "POST"
        o.http_request_uri = "/v1/private-connections/{name}/certificate"
        o.endpoint_pattern = {
          "hostPrefix" => "cp.",
        }
        o.input = Shapes::ShapeRef.new(shape: UpdatePrivateConnectionCertificateInput)
        o.output = Shapes::ShapeRef.new(shape: UpdatePrivateConnectionCertificateOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ContentSizeExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
      end)

      api.add_operation(:update_recommendation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateRecommendation"
        o.http_method = "PATCH"
        o.http_request_uri = "/backlog/agent-space/{agentSpaceId}/recommendations/{recommendationId}"
        o.endpoint_pattern = {
          "hostPrefix" => "dp.",
        }
        o.input = Shapes::ShapeRef.new(shape: UpdateRecommendationRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateRecommendationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ContentSizeExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
      end)

      api.add_operation(:validate_aws_associations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ValidateAwsAssociations"
        o.http_method = "POST"
        o.http_request_uri = "/v1/agentspaces/{agentSpaceId}/associations/validate"
        o.endpoint_pattern = {
          "hostPrefix" => "cp.",
        }
        o.input = Shapes::ShapeRef.new(shape: ValidateAwsAssociationsInput)
        o.output = Shapes::ShapeRef.new(shape: ValidateAwsAssociationsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ContentSizeExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
      end)
    end

  end
end
