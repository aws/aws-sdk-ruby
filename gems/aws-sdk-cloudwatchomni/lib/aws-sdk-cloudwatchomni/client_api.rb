# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::CloudWatchOmni
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AccessGrant = Shapes::StructureShape.new(name: 'AccessGrant')
    AccessGrantNameString = Shapes::StringShape.new(name: 'AccessGrantNameString')
    AccessGrantPermission = Shapes::StringShape.new(name: 'AccessGrantPermission')
    AccessGrantPrincipal = Shapes::StructureShape.new(name: 'AccessGrantPrincipal')
    AccessGrantPrincipalAttribute = Shapes::StructureShape.new(name: 'AccessGrantPrincipalAttribute')
    AccessGrantPrincipalAttributeKeyString = Shapes::StringShape.new(name: 'AccessGrantPrincipalAttributeKeyString')
    AccessGrantPrincipalAttributeList = Shapes::ListShape.new(name: 'AccessGrantPrincipalAttributeList')
    AccessGrantPrincipalAttributeValueString = Shapes::StringShape.new(name: 'AccessGrantPrincipalAttributeValueString')
    AccessGrantPrincipalType = Shapes::StringShape.new(name: 'AccessGrantPrincipalType')
    AccessGrantSummary = Shapes::StructureShape.new(name: 'AccessGrantSummary')
    AccessGrantSummaryList = Shapes::ListShape.new(name: 'AccessGrantSummaryList')
    AccessGrantSummaryNameString = Shapes::StringShape.new(name: 'AccessGrantSummaryNameString')
    AccessGrantType = Shapes::StringShape.new(name: 'AccessGrantType')
    AccessKeyId = Shapes::StringShape.new(name: 'AccessKeyId')
    AccessProfile = Shapes::StructureShape.new(name: 'AccessProfile')
    AccessProfileName = Shapes::StringShape.new(name: 'AccessProfileName')
    AccessProfileSummary = Shapes::StructureShape.new(name: 'AccessProfileSummary')
    AccessProfileSummaryList = Shapes::ListShape.new(name: 'AccessProfileSummaryList')
    AccessProfileType = Shapes::StringShape.new(name: 'AccessProfileType')
    AccountId = Shapes::StringShape.new(name: 'AccountId')
    Alert = Shapes::StructureShape.new(name: 'Alert')
    AlertCondition = Shapes::StructureShape.new(name: 'AlertCondition')
    AlertConditionThresholdFieldString = Shapes::StringShape.new(name: 'AlertConditionThresholdFieldString')
    AlertEvaluation = Shapes::StructureShape.new(name: 'AlertEvaluation')
    AlertFilterCriteria = Shapes::StructureShape.new(name: 'AlertFilterCriteria')
    AlertFilterCriteriaNamePrefixString = Shapes::StringShape.new(name: 'AlertFilterCriteriaNamePrefixString')
    AlertId = Shapes::StringShape.new(name: 'AlertId')
    AlertIdFilterList = Shapes::ListShape.new(name: 'AlertIdFilterList')
    AlertNameFilterList = Shapes::ListShape.new(name: 'AlertNameFilterList')
    AlertNameFilterListMemberString = Shapes::StringShape.new(name: 'AlertNameFilterListMemberString')
    AlertRuleQuery = Shapes::StructureShape.new(name: 'AlertRuleQuery')
    AlertRuleQueryExpressionString = Shapes::StringShape.new(name: 'AlertRuleQueryExpressionString')
    AlertSortField = Shapes::StringShape.new(name: 'AlertSortField')
    AlertSortOrder = Shapes::StringShape.new(name: 'AlertSortOrder')
    AlertState = Shapes::StringShape.new(name: 'AlertState')
    AlertStateData = Shapes::StructureShape.new(name: 'AlertStateData')
    AlertStateInfo = Shapes::StructureShape.new(name: 'AlertStateInfo')
    AlertStateList = Shapes::ListShape.new(name: 'AlertStateList')
    AlertSummary = Shapes::StructureShape.new(name: 'AlertSummary')
    AlertSummaryList = Shapes::ListShape.new(name: 'AlertSummaryList')
    ApiKeyCredential = Shapes::StructureShape.new(name: 'ApiKeyCredential')
    ApiKeyCredentialApiKeyValueString = Shapes::StringShape.new(name: 'ApiKeyCredentialApiKeyValueString')
    Arn = Shapes::StringShape.new(name: 'Arn')
    AssumeStatus = Shapes::StringShape.new(name: 'AssumeStatus')
    AuthType = Shapes::StringShape.new(name: 'AuthType')
    AwsCredentials = Shapes::StructureShape.new(name: 'AwsCredentials')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    ClientToken = Shapes::StringShape.new(name: 'ClientToken')
    Comparator = Shapes::StringShape.new(name: 'Comparator')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    ContextConditionsMap = Shapes::MapShape.new(name: 'ContextConditionsMap')
    ContextGraphAttributeMap = Shapes::MapShape.new(name: 'ContextGraphAttributeMap')
    ContextGraphId = Shapes::StringShape.new(name: 'ContextGraphId')
    ContextGraphName = Shapes::StringShape.new(name: 'ContextGraphName')
    ContributorSummary = Shapes::StructureShape.new(name: 'ContributorSummary')
    CreateAccessGrantInput = Shapes::StructureShape.new(name: 'CreateAccessGrantInput')
    CreateAccessGrantInputNameString = Shapes::StringShape.new(name: 'CreateAccessGrantInputNameString')
    CreateAccessGrantOutput = Shapes::StructureShape.new(name: 'CreateAccessGrantOutput')
    CreateAccessProfileInput = Shapes::StructureShape.new(name: 'CreateAccessProfileInput')
    CreateAccessProfileInputDescriptionString = Shapes::StringShape.new(name: 'CreateAccessProfileInputDescriptionString')
    CreateAccessProfileOutput = Shapes::StructureShape.new(name: 'CreateAccessProfileOutput')
    CreateAlertInput = Shapes::StructureShape.new(name: 'CreateAlertInput')
    CreateAlertInputClientTokenString = Shapes::StringShape.new(name: 'CreateAlertInputClientTokenString')
    CreateAlertInputDescriptionString = Shapes::StringShape.new(name: 'CreateAlertInputDescriptionString')
    CreateAlertInputNameString = Shapes::StringShape.new(name: 'CreateAlertInputNameString')
    CreateAlertOutput = Shapes::StructureShape.new(name: 'CreateAlertOutput')
    CreateDomainAccessGrantForOrganizationInput = Shapes::StructureShape.new(name: 'CreateDomainAccessGrantForOrganizationInput')
    CreateDomainAccessGrantForOrganizationInputNameString = Shapes::StringShape.new(name: 'CreateDomainAccessGrantForOrganizationInputNameString')
    CreateDomainAccessGrantForOrganizationOutput = Shapes::StructureShape.new(name: 'CreateDomainAccessGrantForOrganizationOutput')
    CreateDomainForOrganizationInput = Shapes::StructureShape.new(name: 'CreateDomainForOrganizationInput')
    CreateDomainForOrganizationInputNameString = Shapes::StringShape.new(name: 'CreateDomainForOrganizationInputNameString')
    CreateDomainForOrganizationOutput = Shapes::StructureShape.new(name: 'CreateDomainForOrganizationOutput')
    CreateDomainInput = Shapes::StructureShape.new(name: 'CreateDomainInput')
    CreateDomainInputNameString = Shapes::StringShape.new(name: 'CreateDomainInputNameString')
    CreateDomainOutput = Shapes::StructureShape.new(name: 'CreateDomainOutput')
    CreateIntegrationInput = Shapes::StructureShape.new(name: 'CreateIntegrationInput')
    CreateIntegrationInputClientTokenString = Shapes::StringShape.new(name: 'CreateIntegrationInputClientTokenString')
    CreateIntegrationInputIntegrationAttributesMap = Shapes::MapShape.new(name: 'CreateIntegrationInputIntegrationAttributesMap')
    CreateIntegrationInputIntegrationAttributesMapKeyString = Shapes::StringShape.new(name: 'CreateIntegrationInputIntegrationAttributesMapKeyString')
    CreateIntegrationInputIntegrationAttributesMapValueString = Shapes::StringShape.new(name: 'CreateIntegrationInputIntegrationAttributesMapValueString')
    CreateIntegrationInputNameString = Shapes::StringShape.new(name: 'CreateIntegrationInputNameString')
    CreateIntegrationOutput = Shapes::StructureShape.new(name: 'CreateIntegrationOutput')
    CreateOmniDashboardInput = Shapes::StructureShape.new(name: 'CreateOmniDashboardInput')
    CreateOmniDashboardInputBodyString = Shapes::StringShape.new(name: 'CreateOmniDashboardInputBodyString')
    CreateOmniDashboardInputDescriptionString = Shapes::StringShape.new(name: 'CreateOmniDashboardInputDescriptionString')
    CreateOmniDashboardInputNameString = Shapes::StringShape.new(name: 'CreateOmniDashboardInputNameString')
    CreateOmniDashboardOutput = Shapes::StructureShape.new(name: 'CreateOmniDashboardOutput')
    CreateOneTimeDeepLinkCodeInput = Shapes::StructureShape.new(name: 'CreateOneTimeDeepLinkCodeInput')
    CreateOneTimeDeepLinkCodeInputTtlSecondsInteger = Shapes::IntegerShape.new(name: 'CreateOneTimeDeepLinkCodeInputTtlSecondsInteger')
    CreateOneTimeDeepLinkCodeOutput = Shapes::StructureShape.new(name: 'CreateOneTimeDeepLinkCodeOutput')
    CreateSpaceInput = Shapes::StructureShape.new(name: 'CreateSpaceInput')
    CreateSpaceInputNameString = Shapes::StringShape.new(name: 'CreateSpaceInputNameString')
    CreateSpaceOutput = Shapes::StructureShape.new(name: 'CreateSpaceOutput')
    CreateViewRequest = Shapes::StructureShape.new(name: 'CreateViewRequest')
    CreateViewRequestClientTokenString = Shapes::StringShape.new(name: 'CreateViewRequestClientTokenString')
    CreateViewResponse = Shapes::StructureShape.new(name: 'CreateViewResponse')
    DashboardId = Shapes::StringShape.new(name: 'DashboardId')
    DeepLinkCode = Shapes::StringShape.new(name: 'DeepLinkCode')
    DeepLinkUrl = Shapes::StringShape.new(name: 'DeepLinkUrl')
    DeleteAccessGrantInput = Shapes::StructureShape.new(name: 'DeleteAccessGrantInput')
    DeleteAccessGrantOutput = Shapes::StructureShape.new(name: 'DeleteAccessGrantOutput')
    DeleteAccessProfileInput = Shapes::StructureShape.new(name: 'DeleteAccessProfileInput')
    DeleteAccessProfileOutput = Shapes::StructureShape.new(name: 'DeleteAccessProfileOutput')
    DeleteAlertInput = Shapes::StructureShape.new(name: 'DeleteAlertInput')
    DeleteAlertOutput = Shapes::StructureShape.new(name: 'DeleteAlertOutput')
    DeleteDomainAccessGrantForOrganizationInput = Shapes::StructureShape.new(name: 'DeleteDomainAccessGrantForOrganizationInput')
    DeleteDomainAccessGrantForOrganizationOutput = Shapes::StructureShape.new(name: 'DeleteDomainAccessGrantForOrganizationOutput')
    DeleteDomainForOrganizationInput = Shapes::StructureShape.new(name: 'DeleteDomainForOrganizationInput')
    DeleteDomainForOrganizationOutput = Shapes::StructureShape.new(name: 'DeleteDomainForOrganizationOutput')
    DeleteDomainInput = Shapes::StructureShape.new(name: 'DeleteDomainInput')
    DeleteDomainOutput = Shapes::StructureShape.new(name: 'DeleteDomainOutput')
    DeleteIntegrationInput = Shapes::StructureShape.new(name: 'DeleteIntegrationInput')
    DeleteIntegrationOutput = Shapes::StructureShape.new(name: 'DeleteIntegrationOutput')
    DeleteOmniDashboardInput = Shapes::StructureShape.new(name: 'DeleteOmniDashboardInput')
    DeleteOmniDashboardOutput = Shapes::StructureShape.new(name: 'DeleteOmniDashboardOutput')
    DeleteSpaceInput = Shapes::StructureShape.new(name: 'DeleteSpaceInput')
    DeleteSpaceOutput = Shapes::StructureShape.new(name: 'DeleteSpaceOutput')
    DeleteViewRequest = Shapes::StructureShape.new(name: 'DeleteViewRequest')
    DeleteViewResponse = Shapes::StructureShape.new(name: 'DeleteViewResponse')
    Domain = Shapes::StructureShape.new(name: 'Domain')
    DomainId = Shapes::StringShape.new(name: 'DomainId')
    DomainNameString = Shapes::StringShape.new(name: 'DomainNameString')
    DomainStatus = Shapes::StringShape.new(name: 'DomainStatus')
    DomainSummary = Shapes::StructureShape.new(name: 'DomainSummary')
    DomainSummaryList = Shapes::ListShape.new(name: 'DomainSummaryList')
    DomainSummaryNameString = Shapes::StringShape.new(name: 'DomainSummaryNameString')
    Double = Shapes::FloatShape.new(name: 'Double')
    Edge = Shapes::StructureShape.new(name: 'Edge')
    EdgeFilters = Shapes::StructureShape.new(name: 'EdgeFilters')
    EdgeList = Shapes::ListShape.new(name: 'EdgeList')
    EdgeProperties = Shapes::StructureShape.new(name: 'EdgeProperties')
    EdgeTrafficStats = Shapes::StructureShape.new(name: 'EdgeTrafficStats')
    EdgeTrafficStatsBytesLong = Shapes::IntegerShape.new(name: 'EdgeTrafficStatsBytesLong')
    EdgeTrafficStatsFlowsLong = Shapes::IntegerShape.new(name: 'EdgeTrafficStatsFlowsLong')
    EdgeTrafficStatsPacketsLong = Shapes::IntegerShape.new(name: 'EdgeTrafficStatsPacketsLong')
    EdgeTrafficStatsReceivedBytesLong = Shapes::IntegerShape.new(name: 'EdgeTrafficStatsReceivedBytesLong')
    EdgeTrafficStatsSentBytesLong = Shapes::IntegerShape.new(name: 'EdgeTrafficStatsSentBytesLong')
    EdgeType = Shapes::StringShape.new(name: 'EdgeType')
    EncryptionConfiguration = Shapes::StructureShape.new(name: 'EncryptionConfiguration')
    EncryptionStrategy = Shapes::StringShape.new(name: 'EncryptionStrategy')
    Field = Shapes::StructureShape.new(name: 'Field')
    FieldChildrenList = Shapes::ListShape.new(name: 'FieldChildrenList')
    FieldList = Shapes::ListShape.new(name: 'FieldList')
    GetAccessGrantInput = Shapes::StructureShape.new(name: 'GetAccessGrantInput')
    GetAccessGrantOutput = Shapes::StructureShape.new(name: 'GetAccessGrantOutput')
    GetAccessProfileInput = Shapes::StructureShape.new(name: 'GetAccessProfileInput')
    GetAccessProfileOutput = Shapes::StructureShape.new(name: 'GetAccessProfileOutput')
    GetAlertInput = Shapes::StructureShape.new(name: 'GetAlertInput')
    GetAlertOutput = Shapes::StructureShape.new(name: 'GetAlertOutput')
    GetContextGraphInput = Shapes::StructureShape.new(name: 'GetContextGraphInput')
    GetContextGraphInputDepthInteger = Shapes::IntegerShape.new(name: 'GetContextGraphInputDepthInteger')
    GetContextGraphInputMaxEdgesPerNodeInteger = Shapes::IntegerShape.new(name: 'GetContextGraphInputMaxEdgesPerNodeInteger')
    GetContextGraphInputMaxResultsInteger = Shapes::IntegerShape.new(name: 'GetContextGraphInputMaxResultsInteger')
    GetContextGraphOutput = Shapes::StructureShape.new(name: 'GetContextGraphOutput')
    GetDomainAccessGrantForOrganizationInput = Shapes::StructureShape.new(name: 'GetDomainAccessGrantForOrganizationInput')
    GetDomainAccessGrantForOrganizationOutput = Shapes::StructureShape.new(name: 'GetDomainAccessGrantForOrganizationOutput')
    GetDomainForOrganizationInput = Shapes::StructureShape.new(name: 'GetDomainForOrganizationInput')
    GetDomainForOrganizationOutput = Shapes::StructureShape.new(name: 'GetDomainForOrganizationOutput')
    GetDomainInput = Shapes::StructureShape.new(name: 'GetDomainInput')
    GetDomainOutput = Shapes::StructureShape.new(name: 'GetDomainOutput')
    GetIntegrationInput = Shapes::StructureShape.new(name: 'GetIntegrationInput')
    GetIntegrationOutput = Shapes::StructureShape.new(name: 'GetIntegrationOutput')
    GetIntelligenceConfigurationInput = Shapes::StructureShape.new(name: 'GetIntelligenceConfigurationInput')
    GetIntelligenceConfigurationOutput = Shapes::StructureShape.new(name: 'GetIntelligenceConfigurationOutput')
    GetOmniDashboardInput = Shapes::StructureShape.new(name: 'GetOmniDashboardInput')
    GetOmniDashboardOutput = Shapes::StructureShape.new(name: 'GetOmniDashboardOutput')
    GetSpaceCredentialsForOrganizationInput = Shapes::StructureShape.new(name: 'GetSpaceCredentialsForOrganizationInput')
    GetSpaceCredentialsForOrganizationOutput = Shapes::StructureShape.new(name: 'GetSpaceCredentialsForOrganizationOutput')
    GetSpaceInput = Shapes::StructureShape.new(name: 'GetSpaceInput')
    GetSpaceOutput = Shapes::StructureShape.new(name: 'GetSpaceOutput')
    GetTelemetryQueryResultsRequest = Shapes::StructureShape.new(name: 'GetTelemetryQueryResultsRequest')
    GetTelemetryQueryResultsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'GetTelemetryQueryResultsRequestMaxResultsInteger')
    GetTelemetryQueryResultsRequestQueryIdString = Shapes::StringShape.new(name: 'GetTelemetryQueryResultsRequestQueryIdString')
    GetTelemetryQueryResultsResponse = Shapes::StructureShape.new(name: 'GetTelemetryQueryResultsResponse')
    GetViewRequest = Shapes::StructureShape.new(name: 'GetViewRequest')
    GetViewResponse = Shapes::StructureShape.new(name: 'GetViewResponse')
    GrantId = Shapes::StringShape.new(name: 'GrantId')
    IamRoleArn = Shapes::StringShape.new(name: 'IamRoleArn')
    IdentityCenterConfiguration = Shapes::StructureShape.new(name: 'IdentityCenterConfiguration')
    IdentityCenterInstanceArn = Shapes::StringShape.new(name: 'IdentityCenterInstanceArn')
    IdentityProvider = Shapes::StringShape.new(name: 'IdentityProvider')
    IdentityProviderConfiguration = Shapes::StructureShape.new(name: 'IdentityProviderConfiguration')
    IdentityProviderList = Shapes::ListShape.new(name: 'IdentityProviderList')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    Integration = Shapes::StructureShape.new(name: 'Integration')
    IntegrationArn = Shapes::StringShape.new(name: 'IntegrationArn')
    IntegrationCredential = Shapes::UnionShape.new(name: 'IntegrationCredential')
    IntegrationIdentifier = Shapes::UnionShape.new(name: 'IntegrationIdentifier')
    IntegrationList = Shapes::ListShape.new(name: 'IntegrationList')
    IntegrationStatus = Shapes::StringShape.new(name: 'IntegrationStatus')
    IntegrationType = Shapes::StringShape.new(name: 'IntegrationType')
    IntelligenceKmsKeyArn = Shapes::StringShape.new(name: 'IntelligenceKmsKeyArn')
    IntelligenceTagMap = Shapes::MapShape.new(name: 'IntelligenceTagMap')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    KeyFilter = Shapes::StructureShape.new(name: 'KeyFilter')
    KeyFilterKey = Shapes::StringShape.new(name: 'KeyFilterKey')
    KeyFilterList = Shapes::ListShape.new(name: 'KeyFilterList')
    KeyFilterValue = Shapes::StringShape.new(name: 'KeyFilterValue')
    KeyFilterValues = Shapes::ListShape.new(name: 'KeyFilterValues')
    KmsKeyArn = Shapes::StringShape.new(name: 'KmsKeyArn')
    ListAccessGrantsInput = Shapes::StructureShape.new(name: 'ListAccessGrantsInput')
    ListAccessGrantsInputMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListAccessGrantsInputMaxResultsInteger')
    ListAccessGrantsOutput = Shapes::StructureShape.new(name: 'ListAccessGrantsOutput')
    ListAccessProfilesInput = Shapes::StructureShape.new(name: 'ListAccessProfilesInput')
    ListAccessProfilesInputMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListAccessProfilesInputMaxResultsInteger')
    ListAccessProfilesOutput = Shapes::StructureShape.new(name: 'ListAccessProfilesOutput')
    ListAlertsInput = Shapes::StructureShape.new(name: 'ListAlertsInput')
    ListAlertsInputMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListAlertsInputMaxResultsInteger')
    ListAlertsOutput = Shapes::StructureShape.new(name: 'ListAlertsOutput')
    ListDomainAccessGrantsForOrganizationInput = Shapes::StructureShape.new(name: 'ListDomainAccessGrantsForOrganizationInput')
    ListDomainAccessGrantsForOrganizationInputMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListDomainAccessGrantsForOrganizationInputMaxResultsInteger')
    ListDomainAccessGrantsForOrganizationOutput = Shapes::StructureShape.new(name: 'ListDomainAccessGrantsForOrganizationOutput')
    ListDomainsInput = Shapes::StructureShape.new(name: 'ListDomainsInput')
    ListDomainsInputMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListDomainsInputMaxResultsInteger')
    ListDomainsOutput = Shapes::StructureShape.new(name: 'ListDomainsOutput')
    ListIntegrationsInput = Shapes::StructureShape.new(name: 'ListIntegrationsInput')
    ListIntegrationsInputMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListIntegrationsInputMaxResultsInteger')
    ListIntegrationsOutput = Shapes::StructureShape.new(name: 'ListIntegrationsOutput')
    ListOmniDashboardsInput = Shapes::StructureShape.new(name: 'ListOmniDashboardsInput')
    ListOmniDashboardsInputMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListOmniDashboardsInputMaxResultsInteger')
    ListOmniDashboardsInputNamePrefixString = Shapes::StringShape.new(name: 'ListOmniDashboardsInputNamePrefixString')
    ListOmniDashboardsOutput = Shapes::StructureShape.new(name: 'ListOmniDashboardsOutput')
    ListSpacesForOrganizationInput = Shapes::StructureShape.new(name: 'ListSpacesForOrganizationInput')
    ListSpacesForOrganizationInputMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListSpacesForOrganizationInputMaxResultsInteger')
    ListSpacesForOrganizationOutput = Shapes::StructureShape.new(name: 'ListSpacesForOrganizationOutput')
    ListSpacesInput = Shapes::StructureShape.new(name: 'ListSpacesInput')
    ListSpacesInputMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListSpacesInputMaxResultsInteger')
    ListSpacesOutput = Shapes::StructureShape.new(name: 'ListSpacesOutput')
    ListTelemetryFieldsRequest = Shapes::StructureShape.new(name: 'ListTelemetryFieldsRequest')
    ListTelemetryFieldsRequestDataSetNameString = Shapes::StringShape.new(name: 'ListTelemetryFieldsRequestDataSetNameString')
    ListTelemetryFieldsResponse = Shapes::StructureShape.new(name: 'ListTelemetryFieldsResponse')
    ListTelemetryQuerySessionsRequest = Shapes::StructureShape.new(name: 'ListTelemetryQuerySessionsRequest')
    ListTelemetryQuerySessionsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListTelemetryQuerySessionsRequestMaxResultsInteger')
    ListTelemetryQuerySessionsResponse = Shapes::StructureShape.new(name: 'ListTelemetryQuerySessionsResponse')
    ListViewsRequest = Shapes::StructureShape.new(name: 'ListViewsRequest')
    ListViewsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListViewsRequestMaxResultsInteger')
    ListViewsResponse = Shapes::StructureShape.new(name: 'ListViewsResponse')
    LogMetadata = Shapes::StructureShape.new(name: 'LogMetadata')
    LogMetadataAttributeMap = Shapes::MapShape.new(name: 'LogMetadataAttributeMap')
    LogMetadataList = Shapes::ListShape.new(name: 'LogMetadataList')
    Long = Shapes::IntegerShape.new(name: 'Long')
    Metadata = Shapes::StructureShape.new(name: 'Metadata')
    MetadataAttributeMap = Shapes::MapShape.new(name: 'MetadataAttributeMap')
    MetricMetadata = Shapes::StructureShape.new(name: 'MetricMetadata')
    MetricMetadataList = Shapes::ListShape.new(name: 'MetricMetadataList')
    MetricSemantics = Shapes::StructureShape.new(name: 'MetricSemantics')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    NoData = Shapes::StructureShape.new(name: 'NoData')
    Node = Shapes::StructureShape.new(name: 'Node')
    NodeCategory = Shapes::StringShape.new(name: 'NodeCategory')
    NodeCategorySet = Shapes::ListShape.new(name: 'NodeCategorySet')
    NodeFilters = Shapes::StructureShape.new(name: 'NodeFilters')
    NodeList = Shapes::ListShape.new(name: 'NodeList')
    NodeProperties = Shapes::StructureShape.new(name: 'NodeProperties')
    NodeSemantics = Shapes::StructureShape.new(name: 'NodeSemantics')
    NodeType = Shapes::StringShape.new(name: 'NodeType')
    NotificationRule = Shapes::StructureShape.new(name: 'NotificationRule')
    NotificationRuleList = Shapes::ListShape.new(name: 'NotificationRuleList')
    NotificationStatus = Shapes::StringShape.new(name: 'NotificationStatus')
    NotificationTarget = Shapes::StructureShape.new(name: 'NotificationTarget')
    NotificationTargetArnString = Shapes::StringShape.new(name: 'NotificationTargetArnString')
    NotificationTargetMetadataMap = Shapes::MapShape.new(name: 'NotificationTargetMetadataMap')
    NotificationTargetMetadataMapKeyString = Shapes::StringShape.new(name: 'NotificationTargetMetadataMapKeyString')
    NotificationTargetMetadataMapValueString = Shapes::StringShape.new(name: 'NotificationTargetMetadataMapValueString')
    NotificationTargetType = Shapes::StringShape.new(name: 'NotificationTargetType')
    NotificationTrigger = Shapes::StructureShape.new(name: 'NotificationTrigger')
    OAuthClientCredential = Shapes::StructureShape.new(name: 'OAuthClientCredential')
    OAuthCodeCredential = Shapes::StructureShape.new(name: 'OAuthCodeCredential')
    OAuthCodeCredentialAuthCodeString = Shapes::StringShape.new(name: 'OAuthCodeCredentialAuthCodeString')
    OmniDashboard = Shapes::StructureShape.new(name: 'OmniDashboard')
    OmniDashboardSummary = Shapes::StructureShape.new(name: 'OmniDashboardSummary')
    OmniDashboardSummaryList = Shapes::ListShape.new(name: 'OmniDashboardSummaryList')
    OperationDetails = Shapes::MapShape.new(name: 'OperationDetails')
    OperationIdentifierKey = Shapes::StringShape.new(name: 'OperationIdentifierKey')
    OperationIdentifierSet = Shapes::MapShape.new(name: 'OperationIdentifierSet')
    OperationIdentifierSets = Shapes::ListShape.new(name: 'OperationIdentifierSets')
    OperationIdentifierValue = Shapes::StringShape.new(name: 'OperationIdentifierValue')
    OperationName = Shapes::StringShape.new(name: 'OperationName')
    OrganizationAccessGrant = Shapes::StructureShape.new(name: 'OrganizationAccessGrant')
    OrganizationAccessGrantNameString = Shapes::StringShape.new(name: 'OrganizationAccessGrantNameString')
    OrganizationAccessGrantPrincipal = Shapes::StructureShape.new(name: 'OrganizationAccessGrantPrincipal')
    OrganizationAccessGrantSummary = Shapes::StructureShape.new(name: 'OrganizationAccessGrantSummary')
    OrganizationAccessGrantSummaryList = Shapes::ListShape.new(name: 'OrganizationAccessGrantSummaryList')
    OrganizationAccessGrantSummaryNameString = Shapes::StringShape.new(name: 'OrganizationAccessGrantSummaryNameString')
    OrganizationCredentialType = Shapes::StringShape.new(name: 'OrganizationCredentialType')
    OrganizationDomain = Shapes::StructureShape.new(name: 'OrganizationDomain')
    OrganizationDomainNameString = Shapes::StringShape.new(name: 'OrganizationDomainNameString')
    OrganizationGrantPermission = Shapes::StringShape.new(name: 'OrganizationGrantPermission')
    OrganizationGrantPrincipalType = Shapes::StringShape.new(name: 'OrganizationGrantPrincipalType')
    OrganizationPrincipalId = Shapes::StringShape.new(name: 'OrganizationPrincipalId')
    PaginationToken = Shapes::StringShape.new(name: 'PaginationToken')
    PartialResults = Shapes::StructureShape.new(name: 'PartialResults')
    PrincipalId = Shapes::StringShape.new(name: 'PrincipalId')
    PrincipalSearchResult = Shapes::StructureShape.new(name: 'PrincipalSearchResult')
    PrincipalSearchResultList = Shapes::ListShape.new(name: 'PrincipalSearchResultList')
    PrincipalType = Shapes::StringShape.new(name: 'PrincipalType')
    ProfileId = Shapes::StringShape.new(name: 'ProfileId')
    PutIntelligenceConfigurationInput = Shapes::StructureShape.new(name: 'PutIntelligenceConfigurationInput')
    PutIntelligenceConfigurationOutput = Shapes::StructureShape.new(name: 'PutIntelligenceConfigurationOutput')
    QueryLanguage = Shapes::StringShape.new(name: 'QueryLanguage')
    QueryStatistics = Shapes::StructureShape.new(name: 'QueryStatistics')
    QueryStatus = Shapes::StringShape.new(name: 'QueryStatus')
    ResourceArnList = Shapes::ListShape.new(name: 'ResourceArnList')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceScope = Shapes::StructureShape.new(name: 'ResourceScope')
    ResourceScopeList = Shapes::ListShape.new(name: 'ResourceScopeList')
    ResourceScopeTagMap = Shapes::MapShape.new(name: 'ResourceScopeTagMap')
    Row = Shapes::MapShape.new(name: 'Row')
    RowList = Shapes::ListShape.new(name: 'RowList')
    RowScope = Shapes::StructureShape.new(name: 'RowScope')
    RowScopeFieldString = Shapes::StringShape.new(name: 'RowScopeFieldString')
    RowScopeGroup = Shapes::ListShape.new(name: 'RowScopeGroup')
    RowScopeGroupList = Shapes::ListShape.new(name: 'RowScopeGroupList')
    RowScopeOperator = Shapes::StringShape.new(name: 'RowScopeOperator')
    RowScopeValue = Shapes::StringShape.new(name: 'RowScopeValue')
    RowScopeValueList = Shapes::ListShape.new(name: 'RowScopeValueList')
    Rule = Shapes::UnionShape.new(name: 'Rule')
    Scope = Shapes::StringShape.new(name: 'Scope')
    ScopedActionName = Shapes::StringShape.new(name: 'ScopedActionName')
    ScopedActionNameList = Shapes::ListShape.new(name: 'ScopedActionNameList')
    ScopedActions = Shapes::StructureShape.new(name: 'ScopedActions')
    ScopedActionsList = Shapes::ListShape.new(name: 'ScopedActionsList')
    SearchPrincipalsInput = Shapes::StructureShape.new(name: 'SearchPrincipalsInput')
    SearchPrincipalsInputMaxResultsInteger = Shapes::IntegerShape.new(name: 'SearchPrincipalsInputMaxResultsInteger')
    SearchPrincipalsInputSearchQueryString = Shapes::StringShape.new(name: 'SearchPrincipalsInputSearchQueryString')
    SearchPrincipalsNextToken = Shapes::StringShape.new(name: 'SearchPrincipalsNextToken')
    SearchPrincipalsOutput = Shapes::StructureShape.new(name: 'SearchPrincipalsOutput')
    SecretAccessKey = Shapes::StringShape.new(name: 'SecretAccessKey')
    SensitiveString = Shapes::StringShape.new(name: 'SensitiveString')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    SessionSummary = Shapes::StructureShape.new(name: 'SessionSummary')
    SessionSummaryList = Shapes::ListShape.new(name: 'SessionSummaryList')
    SessionSummarySessionNameString = Shapes::StringShape.new(name: 'SessionSummarySessionNameString')
    SessionToken = Shapes::StringShape.new(name: 'SessionToken')
    Signal = Shapes::StringShape.new(name: 'Signal')
    SignalSet = Shapes::ListShape.new(name: 'SignalSet')
    SignalType = Shapes::StringShape.new(name: 'SignalType')
    SignalTypeList = Shapes::ListShape.new(name: 'SignalTypeList')
    Source = Shapes::StringShape.new(name: 'Source')
    SourceSet = Shapes::ListShape.new(name: 'SourceSet')
    Space = Shapes::StructureShape.new(name: 'Space')
    SpaceCredentialRequestContext = Shapes::StructureShape.new(name: 'SpaceCredentialRequestContext')
    SpaceId = Shapes::StringShape.new(name: 'SpaceId')
    SpaceStatus = Shapes::StringShape.new(name: 'SpaceStatus')
    SpaceSummary = Shapes::StructureShape.new(name: 'SpaceSummary')
    SpaceSummaryList = Shapes::ListShape.new(name: 'SpaceSummaryList')
    StartTelemetryQueryRequest = Shapes::StructureShape.new(name: 'StartTelemetryQueryRequest')
    StartTelemetryQueryRequestQueryStringString = Shapes::StringShape.new(name: 'StartTelemetryQueryRequestQueryStringString')
    StartTelemetryQueryRequestSessionIdString = Shapes::StringShape.new(name: 'StartTelemetryQueryRequestSessionIdString')
    StartTelemetryQueryResponse = Shapes::StructureShape.new(name: 'StartTelemetryQueryResponse')
    StartTelemetryQueryResponseQueryIdString = Shapes::StringShape.new(name: 'StartTelemetryQueryResponseQueryIdString')
    StartTelemetryQueryResponseSessionIdString = Shapes::StringShape.new(name: 'StartTelemetryQueryResponseSessionIdString')
    StartTelemetryQuerySessionRequest = Shapes::StructureShape.new(name: 'StartTelemetryQuerySessionRequest')
    StartTelemetryQuerySessionRequestSessionNameString = Shapes::StringShape.new(name: 'StartTelemetryQuerySessionRequestSessionNameString')
    StartTelemetryQuerySessionResponse = Shapes::StructureShape.new(name: 'StartTelemetryQuerySessionResponse')
    StartTelemetryQuerySessionResponseSessionIdString = Shapes::StringShape.new(name: 'StartTelemetryQuerySessionResponseSessionIdString')
    StopTelemetryQueryRequest = Shapes::StructureShape.new(name: 'StopTelemetryQueryRequest')
    StopTelemetryQueryRequestQueryIdString = Shapes::StringShape.new(name: 'StopTelemetryQueryRequestQueryIdString')
    StopTelemetryQueryResponse = Shapes::StructureShape.new(name: 'StopTelemetryQueryResponse')
    StopTelemetryQuerySessionRequest = Shapes::StructureShape.new(name: 'StopTelemetryQuerySessionRequest')
    StopTelemetryQuerySessionRequestSessionIdString = Shapes::StringShape.new(name: 'StopTelemetryQuerySessionRequestSessionIdString')
    StopTelemetryQuerySessionResponse = Shapes::StructureShape.new(name: 'StopTelemetryQuerySessionResponse')
    String = Shapes::StringShape.new(name: 'String')
    StringList = Shapes::ListShape.new(name: 'StringList')
    StringMap = Shapes::MapShape.new(name: 'StringMap')
    StringMapKeyString = Shapes::StringShape.new(name: 'StringMapKeyString')
    StringMapValueString = Shapes::StringShape.new(name: 'StringMapValueString')
    StringSet = Shapes::ListShape.new(name: 'StringSet')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagMap = Shapes::MapShape.new(name: 'TagMap')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TelemetryRule = Shapes::StructureShape.new(name: 'TelemetryRule')
    TelemetryType = Shapes::StringShape.new(name: 'TelemetryType')
    ThresholdMode = Shapes::StringShape.new(name: 'ThresholdMode')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    TraceMetadata = Shapes::StructureShape.new(name: 'TraceMetadata')
    TraceMetadataAttributeMap = Shapes::MapShape.new(name: 'TraceMetadataAttributeMap')
    TraceMetadataList = Shapes::ListShape.new(name: 'TraceMetadataList')
    UpdateAccessProfileInput = Shapes::StructureShape.new(name: 'UpdateAccessProfileInput')
    UpdateAccessProfileInputDescriptionString = Shapes::StringShape.new(name: 'UpdateAccessProfileInputDescriptionString')
    UpdateAccessProfileOutput = Shapes::StructureShape.new(name: 'UpdateAccessProfileOutput')
    UpdateAlertInput = Shapes::StructureShape.new(name: 'UpdateAlertInput')
    UpdateAlertInputDescriptionString = Shapes::StringShape.new(name: 'UpdateAlertInputDescriptionString')
    UpdateAlertInputNameString = Shapes::StringShape.new(name: 'UpdateAlertInputNameString')
    UpdateAlertOutput = Shapes::StructureShape.new(name: 'UpdateAlertOutput')
    UpdateDomainForOrganizationInput = Shapes::StructureShape.new(name: 'UpdateDomainForOrganizationInput')
    UpdateDomainForOrganizationInputNameString = Shapes::StringShape.new(name: 'UpdateDomainForOrganizationInputNameString')
    UpdateDomainForOrganizationOutput = Shapes::StructureShape.new(name: 'UpdateDomainForOrganizationOutput')
    UpdateDomainInput = Shapes::StructureShape.new(name: 'UpdateDomainInput')
    UpdateDomainInputNameString = Shapes::StringShape.new(name: 'UpdateDomainInputNameString')
    UpdateDomainOutput = Shapes::StructureShape.new(name: 'UpdateDomainOutput')
    UpdateIntegrationInput = Shapes::StructureShape.new(name: 'UpdateIntegrationInput')
    UpdateIntegrationOutput = Shapes::StructureShape.new(name: 'UpdateIntegrationOutput')
    UpdateOmniDashboardInput = Shapes::StructureShape.new(name: 'UpdateOmniDashboardInput')
    UpdateOmniDashboardInputBodyString = Shapes::StringShape.new(name: 'UpdateOmniDashboardInputBodyString')
    UpdateOmniDashboardInputDescriptionString = Shapes::StringShape.new(name: 'UpdateOmniDashboardInputDescriptionString')
    UpdateOmniDashboardInputNameString = Shapes::StringShape.new(name: 'UpdateOmniDashboardInputNameString')
    UpdateOmniDashboardOutput = Shapes::StructureShape.new(name: 'UpdateOmniDashboardOutput')
    UpdateSpaceInput = Shapes::StructureShape.new(name: 'UpdateSpaceInput')
    UpdateSpaceInputNameString = Shapes::StringShape.new(name: 'UpdateSpaceInputNameString')
    UpdateSpaceOutput = Shapes::StructureShape.new(name: 'UpdateSpaceOutput')
    UpdateViewRequest = Shapes::StructureShape.new(name: 'UpdateViewRequest')
    UpdateViewResponse = Shapes::StructureShape.new(name: 'UpdateViewResponse')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ViewDefinition = Shapes::StringShape.new(name: 'ViewDefinition')
    ViewDescription = Shapes::StringShape.new(name: 'ViewDescription')
    ViewName = Shapes::StringShape.new(name: 'ViewName')
    ViewSummary = Shapes::StructureShape.new(name: 'ViewSummary')
    ViewSummaryList = Shapes::ListShape.new(name: 'ViewSummaryList')
    ViewType = Shapes::StringShape.new(name: 'ViewType')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AccessGrant.add_member(:grant_id, Shapes::ShapeRef.new(shape: GrantId, required: true, location_name: "grantId"))
    AccessGrant.add_member(:grant_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "grantArn"))
    AccessGrant.add_member(:name, Shapes::ShapeRef.new(shape: AccessGrantNameString, location_name: "name"))
    AccessGrant.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "accountId"))
    AccessGrant.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location_name: "domainId"))
    AccessGrant.add_member(:principal, Shapes::ShapeRef.new(shape: AccessGrantPrincipal, required: true, location_name: "principal"))
    AccessGrant.add_member(:permission, Shapes::ShapeRef.new(shape: AccessGrantPermission, required: true, location_name: "permission"))
    AccessGrant.add_member(:grant_type, Shapes::ShapeRef.new(shape: AccessGrantType, required: true, location_name: "grantType"))
    AccessGrant.add_member(:created_by, Shapes::ShapeRef.new(shape: String, required: true, location_name: "createdBy"))
    AccessGrant.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    AccessGrant.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    AccessGrant.add_member(:space_id, Shapes::ShapeRef.new(shape: SpaceId, required: true, location_name: "spaceId"))
    AccessGrant.add_member(:scoped_actions, Shapes::ShapeRef.new(shape: ScopedActionsList, location_name: "scopedActions"))
    AccessGrant.struct_class = Types::AccessGrant

    AccessGrantPrincipal.add_member(:principal_type, Shapes::ShapeRef.new(shape: AccessGrantPrincipalType, required: true, location_name: "principalType"))
    AccessGrantPrincipal.add_member(:principal_id, Shapes::ShapeRef.new(shape: PrincipalId, location_name: "principalId"))
    AccessGrantPrincipal.add_member(:principal_attributes, Shapes::ShapeRef.new(shape: AccessGrantPrincipalAttributeList, location_name: "principalAttributes"))
    AccessGrantPrincipal.struct_class = Types::AccessGrantPrincipal

    AccessGrantPrincipalAttribute.add_member(:key, Shapes::ShapeRef.new(shape: AccessGrantPrincipalAttributeKeyString, required: true, location_name: "key"))
    AccessGrantPrincipalAttribute.add_member(:value, Shapes::ShapeRef.new(shape: AccessGrantPrincipalAttributeValueString, required: true, location_name: "value"))
    AccessGrantPrincipalAttribute.struct_class = Types::AccessGrantPrincipalAttribute

    AccessGrantPrincipalAttributeList.member = Shapes::ShapeRef.new(shape: AccessGrantPrincipalAttribute)

    AccessGrantSummary.add_member(:grant_id, Shapes::ShapeRef.new(shape: GrantId, required: true, location_name: "grantId"))
    AccessGrantSummary.add_member(:grant_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "grantArn"))
    AccessGrantSummary.add_member(:name, Shapes::ShapeRef.new(shape: AccessGrantSummaryNameString, location_name: "name"))
    AccessGrantSummary.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location_name: "domainId"))
    AccessGrantSummary.add_member(:principal, Shapes::ShapeRef.new(shape: AccessGrantPrincipal, required: true, location_name: "principal"))
    AccessGrantSummary.add_member(:permission, Shapes::ShapeRef.new(shape: AccessGrantPermission, required: true, location_name: "permission"))
    AccessGrantSummary.add_member(:grant_type, Shapes::ShapeRef.new(shape: AccessGrantType, required: true, location_name: "grantType"))
    AccessGrantSummary.add_member(:space_id, Shapes::ShapeRef.new(shape: SpaceId, required: true, location_name: "spaceId"))
    AccessGrantSummary.struct_class = Types::AccessGrantSummary

    AccessGrantSummaryList.member = Shapes::ShapeRef.new(shape: AccessGrantSummary)

    AccessProfile.add_member(:profile_id, Shapes::ShapeRef.new(shape: ProfileId, required: true, location_name: "profileId"))
    AccessProfile.add_member(:space_id, Shapes::ShapeRef.new(shape: SpaceId, required: true, location_name: "spaceId"))
    AccessProfile.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "arn"))
    AccessProfile.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    AccessProfile.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    AccessProfile.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    AccessProfile.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    AccessProfile.add_member(:assume_status, Shapes::ShapeRef.new(shape: AssumeStatus, location_name: "assumeStatus"))
    AccessProfile.add_member(:profile_type, Shapes::ShapeRef.new(shape: AccessProfileType, location_name: "profileType"))
    AccessProfile.struct_class = Types::AccessProfile

    AccessProfileSummary.add_member(:profile_id, Shapes::ShapeRef.new(shape: ProfileId, required: true, location_name: "profileId"))
    AccessProfileSummary.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "arn"))
    AccessProfileSummary.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    AccessProfileSummary.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    AccessProfileSummary.add_member(:profile_type, Shapes::ShapeRef.new(shape: AccessProfileType, location_name: "profileType"))
    AccessProfileSummary.struct_class = Types::AccessProfileSummary

    AccessProfileSummaryList.member = Shapes::ShapeRef.new(shape: AccessProfileSummary)

    Alert.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    Alert.add_member(:alert_id, Shapes::ShapeRef.new(shape: AlertId, location_name: "alertId"))
    Alert.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    Alert.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "accountId"))
    Alert.add_member(:space_id, Shapes::ShapeRef.new(shape: SpaceId, location_name: "spaceId"))
    Alert.add_member(:profile_id, Shapes::ShapeRef.new(shape: ProfileId, location_name: "profileId"))
    Alert.add_member(:rule, Shapes::ShapeRef.new(shape: Rule, required: true, location_name: "rule"))
    Alert.add_member(:notification_status, Shapes::ShapeRef.new(shape: NotificationStatus, location_name: "notificationStatus"))
    Alert.add_member(:state, Shapes::ShapeRef.new(shape: AlertStateInfo, location_name: "state"))
    Alert.add_member(:notification_rules, Shapes::ShapeRef.new(shape: NotificationRuleList, location_name: "notificationRules"))
    Alert.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    Alert.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    Alert.add_member(:alert_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "alertArn"))
    Alert.struct_class = Types::Alert

    AlertCondition.add_member(:threshold_mode, Shapes::ShapeRef.new(shape: ThresholdMode, location_name: "thresholdMode"))
    AlertCondition.add_member(:threshold_field, Shapes::ShapeRef.new(shape: AlertConditionThresholdFieldString, location_name: "thresholdField"))
    AlertCondition.add_member(:comparator, Shapes::ShapeRef.new(shape: Comparator, location_name: "comparator"))
    AlertCondition.add_member(:warning_threshold, Shapes::ShapeRef.new(shape: Double, location_name: "warningThreshold"))
    AlertCondition.add_member(:critical_threshold, Shapes::ShapeRef.new(shape: Double, location_name: "criticalThreshold"))
    AlertCondition.struct_class = Types::AlertCondition

    AlertEvaluation.add_member(:interval_seconds, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "intervalSeconds"))
    AlertEvaluation.add_member(:pending_duration_seconds, Shapes::ShapeRef.new(shape: Integer, location_name: "pendingDurationSeconds"))
    AlertEvaluation.add_member(:recovery_duration_seconds, Shapes::ShapeRef.new(shape: Integer, location_name: "recoveryDurationSeconds"))
    AlertEvaluation.struct_class = Types::AlertEvaluation

    AlertFilterCriteria.add_member(:names, Shapes::ShapeRef.new(shape: AlertNameFilterList, location_name: "names"))
    AlertFilterCriteria.add_member(:name_prefix, Shapes::ShapeRef.new(shape: AlertFilterCriteriaNamePrefixString, location_name: "namePrefix"))
    AlertFilterCriteria.add_member(:ids, Shapes::ShapeRef.new(shape: AlertIdFilterList, location_name: "ids"))
    AlertFilterCriteria.add_member(:state_value, Shapes::ShapeRef.new(shape: AlertStateList, location_name: "stateValue"))
    AlertFilterCriteria.add_member(:notifications_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "notificationsEnabled"))
    AlertFilterCriteria.struct_class = Types::AlertFilterCriteria

    AlertIdFilterList.member = Shapes::ShapeRef.new(shape: AlertId)

    AlertNameFilterList.member = Shapes::ShapeRef.new(shape: AlertNameFilterListMemberString)

    AlertRuleQuery.add_member(:language, Shapes::ShapeRef.new(shape: QueryLanguage, required: true, location_name: "language"))
    AlertRuleQuery.add_member(:expression, Shapes::ShapeRef.new(shape: AlertRuleQueryExpressionString, required: true, location_name: "expression"))
    AlertRuleQuery.struct_class = Types::AlertRuleQuery

    AlertStateData.add_member(:threshold_breached, Shapes::ShapeRef.new(shape: Double, location_name: "thresholdBreached"))
    AlertStateData.struct_class = Types::AlertStateData

    AlertStateInfo.add_member(:value, Shapes::ShapeRef.new(shape: AlertState, required: true, location_name: "value"))
    AlertStateInfo.add_member(:transitioned_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "transitionedAt"))
    AlertStateInfo.add_member(:contributor_summary, Shapes::ShapeRef.new(shape: ContributorSummary, location_name: "contributorSummary"))
    AlertStateInfo.add_member(:data, Shapes::ShapeRef.new(shape: AlertStateData, location_name: "data"))
    AlertStateInfo.struct_class = Types::AlertStateInfo

    AlertStateList.member = Shapes::ShapeRef.new(shape: AlertState)

    AlertSummary.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    AlertSummary.add_member(:alert_id, Shapes::ShapeRef.new(shape: AlertId, location_name: "alertId"))
    AlertSummary.add_member(:space_id, Shapes::ShapeRef.new(shape: SpaceId, location_name: "spaceId"))
    AlertSummary.add_member(:profile_id, Shapes::ShapeRef.new(shape: ProfileId, location_name: "profileId"))
    AlertSummary.add_member(:notification_status, Shapes::ShapeRef.new(shape: NotificationStatus, location_name: "notificationStatus"))
    AlertSummary.add_member(:state, Shapes::ShapeRef.new(shape: AlertStateInfo, required: true, location_name: "state"))
    AlertSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    AlertSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    AlertSummary.add_member(:alert_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "alertArn"))
    AlertSummary.struct_class = Types::AlertSummary

    AlertSummaryList.member = Shapes::ShapeRef.new(shape: AlertSummary)

    ApiKeyCredential.add_member(:api_key_value, Shapes::ShapeRef.new(shape: ApiKeyCredentialApiKeyValueString, required: true, location_name: "apiKeyValue"))
    ApiKeyCredential.struct_class = Types::ApiKeyCredential

    AwsCredentials.add_member(:access_key_id, Shapes::ShapeRef.new(shape: AccessKeyId, required: true, location_name: "accessKeyId"))
    AwsCredentials.add_member(:secret_access_key, Shapes::ShapeRef.new(shape: SecretAccessKey, required: true, location_name: "secretAccessKey"))
    AwsCredentials.add_member(:session_token, Shapes::ShapeRef.new(shape: SessionToken, required: true, location_name: "sessionToken"))
    AwsCredentials.add_member(:expiration, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "expiration"))
    AwsCredentials.struct_class = Types::AwsCredentials

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ConflictException.add_member(:conflict_type, Shapes::ShapeRef.new(shape: String, location_name: "conflictType"))
    ConflictException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, location_name: "resourceId"))
    ConflictException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, location_name: "resourceType"))
    ConflictException.add_member(:error_code, Shapes::ShapeRef.new(shape: String, location_name: "errorCode"))
    ConflictException.struct_class = Types::ConflictException

    ContextConditionsMap.key = Shapes::ShapeRef.new(shape: String)
    ContextConditionsMap.value = Shapes::ShapeRef.new(shape: StringList)

    ContextGraphAttributeMap.key = Shapes::ShapeRef.new(shape: String)
    ContextGraphAttributeMap.value = Shapes::ShapeRef.new(shape: String)

    ContributorSummary.add_member(:warning_count, Shapes::ShapeRef.new(shape: Integer, location_name: "warningCount"))
    ContributorSummary.add_member(:critical_count, Shapes::ShapeRef.new(shape: Integer, location_name: "criticalCount"))
    ContributorSummary.struct_class = Types::ContributorSummary

    CreateAccessGrantInput.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location_name: "domainId"))
    CreateAccessGrantInput.add_member(:space_id, Shapes::ShapeRef.new(shape: SpaceId, required: true, location_name: "spaceId"))
    CreateAccessGrantInput.add_member(:name, Shapes::ShapeRef.new(shape: CreateAccessGrantInputNameString, required: true, location_name: "name"))
    CreateAccessGrantInput.add_member(:principal, Shapes::ShapeRef.new(shape: AccessGrantPrincipal, required: true, location_name: "principal"))
    CreateAccessGrantInput.add_member(:permission, Shapes::ShapeRef.new(shape: AccessGrantPermission, required: true, location_name: "permission"))
    CreateAccessGrantInput.add_member(:scoped_actions, Shapes::ShapeRef.new(shape: ScopedActionsList, location_name: "scopedActions"))
    CreateAccessGrantInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateAccessGrantInput.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateAccessGrantInput.struct_class = Types::CreateAccessGrantInput

    CreateAccessGrantOutput.add_member(:access_grant, Shapes::ShapeRef.new(shape: AccessGrant, required: true, location_name: "accessGrant"))
    CreateAccessGrantOutput.struct_class = Types::CreateAccessGrantOutput

    CreateAccessProfileInput.add_member(:space_id, Shapes::ShapeRef.new(shape: SpaceId, required: true, location_name: "spaceId"))
    CreateAccessProfileInput.add_member(:name, Shapes::ShapeRef.new(shape: AccessProfileName, required: true, location_name: "name"))
    CreateAccessProfileInput.add_member(:description, Shapes::ShapeRef.new(shape: CreateAccessProfileInputDescriptionString, location_name: "description"))
    CreateAccessProfileInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateAccessProfileInput.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateAccessProfileInput.struct_class = Types::CreateAccessProfileInput

    CreateAccessProfileOutput.add_member(:access_profile, Shapes::ShapeRef.new(shape: AccessProfile, required: true, location_name: "accessProfile"))
    CreateAccessProfileOutput.struct_class = Types::CreateAccessProfileOutput

    CreateAlertInput.add_member(:space_id, Shapes::ShapeRef.new(shape: SpaceId, required: true, location_name: "spaceId"))
    CreateAlertInput.add_member(:profile_id, Shapes::ShapeRef.new(shape: ProfileId, required: true, location_name: "profileId"))
    CreateAlertInput.add_member(:name, Shapes::ShapeRef.new(shape: CreateAlertInputNameString, required: true, location_name: "name"))
    CreateAlertInput.add_member(:description, Shapes::ShapeRef.new(shape: CreateAlertInputDescriptionString, location_name: "description"))
    CreateAlertInput.add_member(:rule, Shapes::ShapeRef.new(shape: Rule, required: true, location_name: "rule"))
    CreateAlertInput.add_member(:notifications_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "notificationsEnabled"))
    CreateAlertInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateAlertInput.add_member(:notification_rules, Shapes::ShapeRef.new(shape: NotificationRuleList, location_name: "notificationRules"))
    CreateAlertInput.add_member(:client_token, Shapes::ShapeRef.new(shape: CreateAlertInputClientTokenString, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateAlertInput.struct_class = Types::CreateAlertInput

    CreateAlertOutput.add_member(:alert_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "alertArn"))
    CreateAlertOutput.add_member(:alert, Shapes::ShapeRef.new(shape: Alert, required: true, location_name: "alert"))
    CreateAlertOutput.struct_class = Types::CreateAlertOutput

    CreateDomainAccessGrantForOrganizationInput.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location_name: "domainId"))
    CreateDomainAccessGrantForOrganizationInput.add_member(:name, Shapes::ShapeRef.new(shape: CreateDomainAccessGrantForOrganizationInputNameString, required: true, location_name: "name"))
    CreateDomainAccessGrantForOrganizationInput.add_member(:principal, Shapes::ShapeRef.new(shape: OrganizationAccessGrantPrincipal, required: true, location_name: "principal"))
    CreateDomainAccessGrantForOrganizationInput.add_member(:permission, Shapes::ShapeRef.new(shape: OrganizationGrantPermission, required: true, location_name: "permission"))
    CreateDomainAccessGrantForOrganizationInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateDomainAccessGrantForOrganizationInput.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateDomainAccessGrantForOrganizationInput.struct_class = Types::CreateDomainAccessGrantForOrganizationInput

    CreateDomainAccessGrantForOrganizationOutput.add_member(:access_grant, Shapes::ShapeRef.new(shape: OrganizationAccessGrant, required: true, location_name: "accessGrant"))
    CreateDomainAccessGrantForOrganizationOutput.struct_class = Types::CreateDomainAccessGrantForOrganizationOutput

    CreateDomainForOrganizationInput.add_member(:name, Shapes::ShapeRef.new(shape: CreateDomainForOrganizationInputNameString, required: true, location_name: "name"))
    CreateDomainForOrganizationInput.add_member(:identity_providers, Shapes::ShapeRef.new(shape: IdentityProviderList, required: true, location_name: "identityProviders"))
    CreateDomainForOrganizationInput.add_member(:identity_provider_configuration, Shapes::ShapeRef.new(shape: IdentityProviderConfiguration, location_name: "identityProviderConfiguration"))
    CreateDomainForOrganizationInput.add_member(:domain_access_role_arn, Shapes::ShapeRef.new(shape: IamRoleArn, required: true, location_name: "domainAccessRoleArn"))
    CreateDomainForOrganizationInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateDomainForOrganizationInput.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateDomainForOrganizationInput.struct_class = Types::CreateDomainForOrganizationInput

    CreateDomainForOrganizationOutput.add_member(:organization_domain, Shapes::ShapeRef.new(shape: OrganizationDomain, required: true, location_name: "organizationDomain"))
    CreateDomainForOrganizationOutput.struct_class = Types::CreateDomainForOrganizationOutput

    CreateDomainInput.add_member(:name, Shapes::ShapeRef.new(shape: CreateDomainInputNameString, required: true, location_name: "name"))
    CreateDomainInput.add_member(:identity_providers, Shapes::ShapeRef.new(shape: IdentityProviderList, required: true, location_name: "identityProviders"))
    CreateDomainInput.add_member(:identity_provider_configuration, Shapes::ShapeRef.new(shape: IdentityProviderConfiguration, location_name: "identityProviderConfiguration"))
    CreateDomainInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateDomainInput.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateDomainInput.struct_class = Types::CreateDomainInput

    CreateDomainOutput.add_member(:domain, Shapes::ShapeRef.new(shape: Domain, required: true, location_name: "domain"))
    CreateDomainOutput.struct_class = Types::CreateDomainOutput

    CreateIntegrationInput.add_member(:integration_type, Shapes::ShapeRef.new(shape: IntegrationType, required: true, location_name: "integrationType"))
    CreateIntegrationInput.add_member(:name, Shapes::ShapeRef.new(shape: CreateIntegrationInputNameString, required: true, location_name: "name"))
    CreateIntegrationInput.add_member(:credential, Shapes::ShapeRef.new(shape: IntegrationCredential, location_name: "credential"))
    CreateIntegrationInput.add_member(:integration_attributes, Shapes::ShapeRef.new(shape: CreateIntegrationInputIntegrationAttributesMap, location_name: "integrationAttributes"))
    CreateIntegrationInput.add_member(:role_arn, Shapes::ShapeRef.new(shape: String, location_name: "roleArn"))
    CreateIntegrationInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateIntegrationInput.add_member(:client_token, Shapes::ShapeRef.new(shape: CreateIntegrationInputClientTokenString, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateIntegrationInput.struct_class = Types::CreateIntegrationInput

    CreateIntegrationInputIntegrationAttributesMap.key = Shapes::ShapeRef.new(shape: CreateIntegrationInputIntegrationAttributesMapKeyString)
    CreateIntegrationInputIntegrationAttributesMap.value = Shapes::ShapeRef.new(shape: CreateIntegrationInputIntegrationAttributesMapValueString)

    CreateIntegrationOutput.add_member(:integration, Shapes::ShapeRef.new(shape: Integration, required: true, location_name: "integration"))
    CreateIntegrationOutput.struct_class = Types::CreateIntegrationOutput

    CreateOmniDashboardInput.add_member(:space_id, Shapes::ShapeRef.new(shape: SpaceId, required: true, location_name: "spaceId"))
    CreateOmniDashboardInput.add_member(:name, Shapes::ShapeRef.new(shape: CreateOmniDashboardInputNameString, required: true, location_name: "name"))
    CreateOmniDashboardInput.add_member(:body, Shapes::ShapeRef.new(shape: CreateOmniDashboardInputBodyString, required: true, location_name: "body"))
    CreateOmniDashboardInput.add_member(:description, Shapes::ShapeRef.new(shape: CreateOmniDashboardInputDescriptionString, location_name: "description"))
    CreateOmniDashboardInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateOmniDashboardInput.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateOmniDashboardInput.struct_class = Types::CreateOmniDashboardInput

    CreateOmniDashboardOutput.add_member(:omni_dashboard, Shapes::ShapeRef.new(shape: OmniDashboard, required: true, location_name: "omniDashboard"))
    CreateOmniDashboardOutput.struct_class = Types::CreateOmniDashboardOutput

    CreateOneTimeDeepLinkCodeInput.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location_name: "domainId"))
    CreateOneTimeDeepLinkCodeInput.add_member(:ttl_seconds, Shapes::ShapeRef.new(shape: CreateOneTimeDeepLinkCodeInputTtlSecondsInteger, location_name: "ttlSeconds"))
    CreateOneTimeDeepLinkCodeInput.add_member(:redirect_url, Shapes::ShapeRef.new(shape: String, location_name: "redirectUrl"))
    CreateOneTimeDeepLinkCodeInput.struct_class = Types::CreateOneTimeDeepLinkCodeInput

    CreateOneTimeDeepLinkCodeOutput.add_member(:code, Shapes::ShapeRef.new(shape: DeepLinkCode, required: true, location_name: "code"))
    CreateOneTimeDeepLinkCodeOutput.add_member(:deep_link_url, Shapes::ShapeRef.new(shape: DeepLinkUrl, required: true, location_name: "deepLinkUrl"))
    CreateOneTimeDeepLinkCodeOutput.add_member(:expires_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "expiresAt"))
    CreateOneTimeDeepLinkCodeOutput.struct_class = Types::CreateOneTimeDeepLinkCodeOutput

    CreateSpaceInput.add_member(:name, Shapes::ShapeRef.new(shape: CreateSpaceInputNameString, required: true, location_name: "name"))
    CreateSpaceInput.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location_name: "domainId"))
    CreateSpaceInput.add_member(:data_access_role_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "dataAccessRoleArn"))
    CreateSpaceInput.add_member(:agent_core_evaluation_role_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "agentCoreEvaluationRoleArn"))
    CreateSpaceInput.add_member(:encryption_configuration, Shapes::ShapeRef.new(shape: EncryptionConfiguration, location_name: "encryptionConfiguration"))
    CreateSpaceInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateSpaceInput.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateSpaceInput.struct_class = Types::CreateSpaceInput

    CreateSpaceOutput.add_member(:space, Shapes::ShapeRef.new(shape: Space, required: true, location_name: "space"))
    CreateSpaceOutput.struct_class = Types::CreateSpaceOutput

    CreateViewRequest.add_member(:name, Shapes::ShapeRef.new(shape: ViewName, required: true, location_name: "name"))
    CreateViewRequest.add_member(:definition, Shapes::ShapeRef.new(shape: ViewDefinition, required: true, location_name: "definition"))
    CreateViewRequest.add_member(:description, Shapes::ShapeRef.new(shape: ViewDescription, location_name: "description"))
    CreateViewRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateViewRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: CreateViewRequestClientTokenString, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateViewRequest.struct_class = Types::CreateViewRequest

    CreateViewResponse.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    CreateViewResponse.add_member(:type, Shapes::ShapeRef.new(shape: ViewType, required: true, location_name: "type"))
    CreateViewResponse.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    CreateViewResponse.add_member(:definition, Shapes::ShapeRef.new(shape: String, required: true, location_name: "definition"))
    CreateViewResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    CreateViewResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    CreateViewResponse.add_member(:arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "arn"))
    CreateViewResponse.struct_class = Types::CreateViewResponse

    DeleteAccessGrantInput.add_member(:grant_id, Shapes::ShapeRef.new(shape: GrantId, required: true, location_name: "grantId"))
    DeleteAccessGrantInput.struct_class = Types::DeleteAccessGrantInput

    DeleteAccessGrantOutput.struct_class = Types::DeleteAccessGrantOutput

    DeleteAccessProfileInput.add_member(:space_id, Shapes::ShapeRef.new(shape: SpaceId, required: true, location_name: "spaceId"))
    DeleteAccessProfileInput.add_member(:profile_id, Shapes::ShapeRef.new(shape: ProfileId, required: true, location_name: "profileId"))
    DeleteAccessProfileInput.struct_class = Types::DeleteAccessProfileInput

    DeleteAccessProfileOutput.struct_class = Types::DeleteAccessProfileOutput

    DeleteAlertInput.add_member(:space_id, Shapes::ShapeRef.new(shape: SpaceId, required: true, location_name: "spaceId"))
    DeleteAlertInput.add_member(:alert_id, Shapes::ShapeRef.new(shape: AlertId, required: true, location_name: "alertId"))
    DeleteAlertInput.struct_class = Types::DeleteAlertInput

    DeleteAlertOutput.struct_class = Types::DeleteAlertOutput

    DeleteDomainAccessGrantForOrganizationInput.add_member(:grant_id, Shapes::ShapeRef.new(shape: GrantId, required: true, location_name: "grantId"))
    DeleteDomainAccessGrantForOrganizationInput.struct_class = Types::DeleteDomainAccessGrantForOrganizationInput

    DeleteDomainAccessGrantForOrganizationOutput.struct_class = Types::DeleteDomainAccessGrantForOrganizationOutput

    DeleteDomainForOrganizationInput.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location_name: "domainId"))
    DeleteDomainForOrganizationInput.struct_class = Types::DeleteDomainForOrganizationInput

    DeleteDomainForOrganizationOutput.struct_class = Types::DeleteDomainForOrganizationOutput

    DeleteDomainInput.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location_name: "domainId"))
    DeleteDomainInput.struct_class = Types::DeleteDomainInput

    DeleteDomainOutput.struct_class = Types::DeleteDomainOutput

    DeleteIntegrationInput.add_member(:identifier, Shapes::ShapeRef.new(shape: IntegrationIdentifier, required: true, location_name: "identifier"))
    DeleteIntegrationInput.struct_class = Types::DeleteIntegrationInput

    DeleteIntegrationOutput.struct_class = Types::DeleteIntegrationOutput

    DeleteOmniDashboardInput.add_member(:space_id, Shapes::ShapeRef.new(shape: SpaceId, required: true, location_name: "spaceId"))
    DeleteOmniDashboardInput.add_member(:dashboard_id, Shapes::ShapeRef.new(shape: DashboardId, required: true, location_name: "dashboardId"))
    DeleteOmniDashboardInput.struct_class = Types::DeleteOmniDashboardInput

    DeleteOmniDashboardOutput.struct_class = Types::DeleteOmniDashboardOutput

    DeleteSpaceInput.add_member(:space_id, Shapes::ShapeRef.new(shape: SpaceId, required: true, location_name: "spaceId"))
    DeleteSpaceInput.struct_class = Types::DeleteSpaceInput

    DeleteSpaceOutput.struct_class = Types::DeleteSpaceOutput

    DeleteViewRequest.add_member(:name, Shapes::ShapeRef.new(shape: ViewName, required: true, location_name: "name"))
    DeleteViewRequest.struct_class = Types::DeleteViewRequest

    DeleteViewResponse.struct_class = Types::DeleteViewResponse

    Domain.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location_name: "domainId"))
    Domain.add_member(:domain_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "domainArn"))
    Domain.add_member(:name, Shapes::ShapeRef.new(shape: DomainNameString, location_name: "name"))
    Domain.add_member(:identity_providers, Shapes::ShapeRef.new(shape: IdentityProviderList, required: true, location_name: "identityProviders"))
    Domain.add_member(:identity_provider_configuration, Shapes::ShapeRef.new(shape: IdentityProviderConfiguration, location_name: "identityProviderConfiguration"))
    Domain.add_member(:domain_endpoint_url, Shapes::ShapeRef.new(shape: String, required: true, location_name: "domainEndpointUrl"))
    Domain.add_member(:custom_endpoint_urls, Shapes::ShapeRef.new(shape: StringList, location_name: "customEndpointUrls"))
    Domain.add_member(:identity_center_application_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "identityCenterApplicationArn"))
    Domain.add_member(:region, Shapes::ShapeRef.new(shape: String, required: true, location_name: "region"))
    Domain.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    Domain.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    Domain.add_member(:status, Shapes::ShapeRef.new(shape: DomainStatus, required: true, location_name: "status"))
    Domain.struct_class = Types::Domain

    DomainSummary.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location_name: "domainId"))
    DomainSummary.add_member(:domain_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "domainArn"))
    DomainSummary.add_member(:name, Shapes::ShapeRef.new(shape: DomainSummaryNameString, location_name: "name"))
    DomainSummary.add_member(:identity_center_instance_arn, Shapes::ShapeRef.new(shape: IdentityCenterInstanceArn, location_name: "identityCenterInstanceArn"))
    DomainSummary.add_member(:region, Shapes::ShapeRef.new(shape: String, location_name: "region"))
    DomainSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    DomainSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    DomainSummary.add_member(:status, Shapes::ShapeRef.new(shape: DomainStatus, required: true, location_name: "status"))
    DomainSummary.struct_class = Types::DomainSummary

    DomainSummaryList.member = Shapes::ShapeRef.new(shape: DomainSummary)

    Edge.add_member(:edge_id, Shapes::ShapeRef.new(shape: ContextGraphId, location_name: "edgeId"))
    Edge.add_member(:from, Shapes::ShapeRef.new(shape: ContextGraphId, location_name: "from"))
    Edge.add_member(:to, Shapes::ShapeRef.new(shape: ContextGraphId, location_name: "to"))
    Edge.add_member(:edge_type, Shapes::ShapeRef.new(shape: EdgeType, location_name: "edgeType"))
    Edge.add_member(:operations, Shapes::ShapeRef.new(shape: StringSet, location_name: "operations"))
    Edge.add_member(:edge_properties, Shapes::ShapeRef.new(shape: EdgeProperties, location_name: "edgeProperties"))
    Edge.add_member(:telemetry_attributes, Shapes::ShapeRef.new(shape: ContextGraphAttributeMap, location_name: "telemetryAttributes"))
    Edge.add_member(:signal_types, Shapes::ShapeRef.new(shape: SignalSet, location_name: "signalTypes"))
    Edge.add_member(:sources, Shapes::ShapeRef.new(shape: SourceSet, location_name: "sources"))
    Edge.add_member(:metadata, Shapes::ShapeRef.new(shape: Metadata, location_name: "metadata"))
    Edge.add_member(:first_observed_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "firstObservedAt"))
    Edge.add_member(:last_observed_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastObservedAt"))
    Edge.struct_class = Types::Edge

    EdgeFilters.add_member(:edge_id, Shapes::ShapeRef.new(shape: ContextGraphId, location_name: "edgeId"))
    EdgeFilters.add_member(:from, Shapes::ShapeRef.new(shape: ContextGraphId, location_name: "from"))
    EdgeFilters.add_member(:to, Shapes::ShapeRef.new(shape: ContextGraphId, location_name: "to"))
    EdgeFilters.add_member(:edge_type, Shapes::ShapeRef.new(shape: EdgeType, location_name: "edgeType"))
    EdgeFilters.add_member(:operations, Shapes::ShapeRef.new(shape: StringSet, location_name: "operations"))
    EdgeFilters.add_member(:telemetry_attributes, Shapes::ShapeRef.new(shape: KeyFilterList, location_name: "telemetryAttributes"))
    EdgeFilters.add_member(:sources, Shapes::ShapeRef.new(shape: SourceSet, location_name: "sources"))
    EdgeFilters.struct_class = Types::EdgeFilters

    EdgeList.member = Shapes::ShapeRef.new(shape: Edge)

    EdgeProperties.add_member(:protocol, Shapes::ShapeRef.new(shape: String, location_name: "protocol"))
    EdgeProperties.add_member(:source_port, Shapes::ShapeRef.new(shape: String, location_name: "sourcePort"))
    EdgeProperties.add_member(:destination_port, Shapes::ShapeRef.new(shape: String, location_name: "destinationPort"))
    EdgeProperties.add_member(:blocked, Shapes::ShapeRef.new(shape: Boolean, location_name: "blocked"))
    EdgeProperties.add_member(:error_code, Shapes::ShapeRef.new(shape: String, location_name: "errorCode"))
    EdgeProperties.add_member(:http_status_code, Shapes::ShapeRef.new(shape: String, location_name: "httpStatusCode"))
    EdgeProperties.add_member(:http_method, Shapes::ShapeRef.new(shape: String, location_name: "httpMethod"))
    EdgeProperties.add_member(:service_initiated, Shapes::ShapeRef.new(shape: Boolean, location_name: "serviceInitiated"))
    EdgeProperties.add_member(:traffic_stats, Shapes::ShapeRef.new(shape: EdgeTrafficStats, location_name: "trafficStats"))
    EdgeProperties.struct_class = Types::EdgeProperties

    EdgeTrafficStats.add_member(:bytes, Shapes::ShapeRef.new(shape: EdgeTrafficStatsBytesLong, location_name: "bytes"))
    EdgeTrafficStats.add_member(:packets, Shapes::ShapeRef.new(shape: EdgeTrafficStatsPacketsLong, location_name: "packets"))
    EdgeTrafficStats.add_member(:flows, Shapes::ShapeRef.new(shape: EdgeTrafficStatsFlowsLong, location_name: "flows"))
    EdgeTrafficStats.add_member(:sent_bytes, Shapes::ShapeRef.new(shape: EdgeTrafficStatsSentBytesLong, location_name: "sentBytes"))
    EdgeTrafficStats.add_member(:received_bytes, Shapes::ShapeRef.new(shape: EdgeTrafficStatsReceivedBytesLong, location_name: "receivedBytes"))
    EdgeTrafficStats.struct_class = Types::EdgeTrafficStats

    EncryptionConfiguration.add_member(:encryption_strategy, Shapes::ShapeRef.new(shape: EncryptionStrategy, required: true, location_name: "encryptionStrategy"))
    EncryptionConfiguration.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "kmsKeyArn"))
    EncryptionConfiguration.struct_class = Types::EncryptionConfiguration

    Field.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    Field.add_member(:children, Shapes::ShapeRef.new(shape: FieldChildrenList, location_name: "children"))
    Field.struct_class = Types::Field

    FieldChildrenList.member = Shapes::ShapeRef.new(shape: Field)

    FieldList.member = Shapes::ShapeRef.new(shape: Field)

    GetAccessGrantInput.add_member(:grant_id, Shapes::ShapeRef.new(shape: GrantId, required: true, location_name: "grantId"))
    GetAccessGrantInput.struct_class = Types::GetAccessGrantInput

    GetAccessGrantOutput.add_member(:access_grant, Shapes::ShapeRef.new(shape: AccessGrant, required: true, location_name: "accessGrant"))
    GetAccessGrantOutput.struct_class = Types::GetAccessGrantOutput

    GetAccessProfileInput.add_member(:space_id, Shapes::ShapeRef.new(shape: SpaceId, required: true, location_name: "spaceId"))
    GetAccessProfileInput.add_member(:profile_id, Shapes::ShapeRef.new(shape: ProfileId, required: true, location_name: "profileId"))
    GetAccessProfileInput.struct_class = Types::GetAccessProfileInput

    GetAccessProfileOutput.add_member(:access_profile, Shapes::ShapeRef.new(shape: AccessProfile, required: true, location_name: "accessProfile"))
    GetAccessProfileOutput.struct_class = Types::GetAccessProfileOutput

    GetAlertInput.add_member(:space_id, Shapes::ShapeRef.new(shape: SpaceId, required: true, location_name: "spaceId"))
    GetAlertInput.add_member(:alert_id, Shapes::ShapeRef.new(shape: AlertId, required: true, location_name: "alertId"))
    GetAlertInput.struct_class = Types::GetAlertInput

    GetAlertOutput.add_member(:alert, Shapes::ShapeRef.new(shape: Alert, required: true, location_name: "alert"))
    GetAlertOutput.struct_class = Types::GetAlertOutput

    GetContextGraphInput.add_member(:node_filters, Shapes::ShapeRef.new(shape: NodeFilters, location_name: "nodeFilters"))
    GetContextGraphInput.add_member(:edge_filters, Shapes::ShapeRef.new(shape: EdgeFilters, location_name: "edgeFilters"))
    GetContextGraphInput.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "startTime"))
    GetContextGraphInput.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "endTime"))
    GetContextGraphInput.add_member(:depth, Shapes::ShapeRef.new(shape: GetContextGraphInputDepthInteger, location_name: "depth"))
    GetContextGraphInput.add_member(:max_results, Shapes::ShapeRef.new(shape: GetContextGraphInputMaxResultsInteger, location_name: "maxResults"))
    GetContextGraphInput.add_member(:max_edges_per_node, Shapes::ShapeRef.new(shape: GetContextGraphInputMaxEdgesPerNodeInteger, location_name: "maxEdgesPerNode"))
    GetContextGraphInput.add_member(:include_metadata, Shapes::ShapeRef.new(shape: Boolean, location_name: "includeMetadata"))
    GetContextGraphInput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    GetContextGraphInput.struct_class = Types::GetContextGraphInput

    GetContextGraphOutput.add_member(:nodes, Shapes::ShapeRef.new(shape: NodeList, required: true, location_name: "nodes"))
    GetContextGraphOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    GetContextGraphOutput.struct_class = Types::GetContextGraphOutput

    GetDomainAccessGrantForOrganizationInput.add_member(:grant_id, Shapes::ShapeRef.new(shape: GrantId, required: true, location_name: "grantId"))
    GetDomainAccessGrantForOrganizationInput.struct_class = Types::GetDomainAccessGrantForOrganizationInput

    GetDomainAccessGrantForOrganizationOutput.add_member(:access_grant, Shapes::ShapeRef.new(shape: OrganizationAccessGrant, required: true, location_name: "accessGrant"))
    GetDomainAccessGrantForOrganizationOutput.struct_class = Types::GetDomainAccessGrantForOrganizationOutput

    GetDomainForOrganizationInput.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location_name: "domainId"))
    GetDomainForOrganizationInput.struct_class = Types::GetDomainForOrganizationInput

    GetDomainForOrganizationOutput.add_member(:organization_domain, Shapes::ShapeRef.new(shape: OrganizationDomain, required: true, location_name: "organizationDomain"))
    GetDomainForOrganizationOutput.struct_class = Types::GetDomainForOrganizationOutput

    GetDomainInput.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location_name: "domainId"))
    GetDomainInput.struct_class = Types::GetDomainInput

    GetDomainOutput.add_member(:domain, Shapes::ShapeRef.new(shape: Domain, required: true, location_name: "domain"))
    GetDomainOutput.struct_class = Types::GetDomainOutput

    GetIntegrationInput.add_member(:identifier, Shapes::ShapeRef.new(shape: IntegrationIdentifier, required: true, location_name: "identifier"))
    GetIntegrationInput.struct_class = Types::GetIntegrationInput

    GetIntegrationOutput.add_member(:integration, Shapes::ShapeRef.new(shape: Integration, required: true, location_name: "integration"))
    GetIntegrationOutput.struct_class = Types::GetIntegrationOutput

    GetIntelligenceConfigurationInput.struct_class = Types::GetIntelligenceConfigurationInput

    GetIntelligenceConfigurationOutput.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "accountId"))
    GetIntelligenceConfigurationOutput.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: IntelligenceKmsKeyArn, location_name: "kmsKeyArn"))
    GetIntelligenceConfigurationOutput.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    GetIntelligenceConfigurationOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    GetIntelligenceConfigurationOutput.struct_class = Types::GetIntelligenceConfigurationOutput

    GetOmniDashboardInput.add_member(:space_id, Shapes::ShapeRef.new(shape: SpaceId, required: true, location_name: "spaceId"))
    GetOmniDashboardInput.add_member(:dashboard_id, Shapes::ShapeRef.new(shape: DashboardId, required: true, location_name: "dashboardId"))
    GetOmniDashboardInput.struct_class = Types::GetOmniDashboardInput

    GetOmniDashboardOutput.add_member(:omni_dashboard, Shapes::ShapeRef.new(shape: OmniDashboard, required: true, location_name: "omniDashboard"))
    GetOmniDashboardOutput.struct_class = Types::GetOmniDashboardOutput

    GetSpaceCredentialsForOrganizationInput.add_member(:context, Shapes::ShapeRef.new(shape: SpaceCredentialRequestContext, required: true, location_name: "context"))
    GetSpaceCredentialsForOrganizationInput.add_member(:credential_type, Shapes::ShapeRef.new(shape: OrganizationCredentialType, required: true, location_name: "credentialType"))
    GetSpaceCredentialsForOrganizationInput.struct_class = Types::GetSpaceCredentialsForOrganizationInput

    GetSpaceCredentialsForOrganizationOutput.add_member(:credentials, Shapes::ShapeRef.new(shape: AwsCredentials, required: true, location_name: "credentials"))
    GetSpaceCredentialsForOrganizationOutput.struct_class = Types::GetSpaceCredentialsForOrganizationOutput

    GetSpaceInput.add_member(:space_id, Shapes::ShapeRef.new(shape: SpaceId, required: true, location_name: "spaceId"))
    GetSpaceInput.struct_class = Types::GetSpaceInput

    GetSpaceOutput.add_member(:space, Shapes::ShapeRef.new(shape: Space, required: true, location_name: "space"))
    GetSpaceOutput.struct_class = Types::GetSpaceOutput

    GetTelemetryQueryResultsRequest.add_member(:query_id, Shapes::ShapeRef.new(shape: GetTelemetryQueryResultsRequestQueryIdString, required: true, location_name: "queryId"))
    GetTelemetryQueryResultsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    GetTelemetryQueryResultsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: GetTelemetryQueryResultsRequestMaxResultsInteger, location_name: "maxResults"))
    GetTelemetryQueryResultsRequest.struct_class = Types::GetTelemetryQueryResultsRequest

    GetTelemetryQueryResultsResponse.add_member(:status, Shapes::ShapeRef.new(shape: QueryStatus, required: true, location_name: "status"))
    GetTelemetryQueryResultsResponse.add_member(:rows, Shapes::ShapeRef.new(shape: RowList, location_name: "rows"))
    GetTelemetryQueryResultsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    GetTelemetryQueryResultsResponse.add_member(:statistics, Shapes::ShapeRef.new(shape: QueryStatistics, location_name: "statistics"))
    GetTelemetryQueryResultsResponse.struct_class = Types::GetTelemetryQueryResultsResponse

    GetViewRequest.add_member(:name, Shapes::ShapeRef.new(shape: ViewName, required: true, location_name: "name"))
    GetViewRequest.struct_class = Types::GetViewRequest

    GetViewResponse.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    GetViewResponse.add_member(:type, Shapes::ShapeRef.new(shape: ViewType, required: true, location_name: "type"))
    GetViewResponse.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    GetViewResponse.add_member(:definition, Shapes::ShapeRef.new(shape: String, required: true, location_name: "definition"))
    GetViewResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    GetViewResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    GetViewResponse.add_member(:arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "arn"))
    GetViewResponse.struct_class = Types::GetViewResponse

    IdentityCenterConfiguration.add_member(:identity_center_instance_arn, Shapes::ShapeRef.new(shape: IdentityCenterInstanceArn, location_name: "identityCenterInstanceArn"))
    IdentityCenterConfiguration.struct_class = Types::IdentityCenterConfiguration

    IdentityProviderConfiguration.add_member(:identity_center_configuration, Shapes::ShapeRef.new(shape: IdentityCenterConfiguration, location_name: "identityCenterConfiguration"))
    IdentityProviderConfiguration.struct_class = Types::IdentityProviderConfiguration

    IdentityProviderList.member = Shapes::ShapeRef.new(shape: IdentityProvider)

    Integration.add_member(:integration_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "integrationId"))
    Integration.add_member(:integration_arn, Shapes::ShapeRef.new(shape: IntegrationArn, location_name: "integrationArn"))
    Integration.add_member(:integration_type, Shapes::ShapeRef.new(shape: IntegrationType, required: true, location_name: "integrationType"))
    Integration.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    Integration.add_member(:status, Shapes::ShapeRef.new(shape: IntegrationStatus, required: true, location_name: "status"))
    Integration.add_member(:auth_type, Shapes::ShapeRef.new(shape: AuthType, location_name: "authType"))
    Integration.add_member(:credential_arn, Shapes::ShapeRef.new(shape: String, location_name: "credentialArn"))
    Integration.add_member(:role_arn, Shapes::ShapeRef.new(shape: String, location_name: "roleArn"))
    Integration.add_member(:integration_attributes, Shapes::ShapeRef.new(shape: StringMap, location_name: "integrationAttributes"))
    Integration.add_member(:authorization_url, Shapes::ShapeRef.new(shape: String, location_name: "authorizationUrl"))
    Integration.add_member(:error_message, Shapes::ShapeRef.new(shape: String, location_name: "errorMessage"))
    Integration.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    Integration.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt"))
    Integration.add_member(:scope, Shapes::ShapeRef.new(shape: Scope, location_name: "scope"))
    Integration.struct_class = Types::Integration

    IntegrationCredential.add_member(:oauth_code_credential, Shapes::ShapeRef.new(shape: OAuthCodeCredential, location_name: "oauthCodeCredential"))
    IntegrationCredential.add_member(:oauth_client_credential, Shapes::ShapeRef.new(shape: OAuthClientCredential, location_name: "oauthClientCredential"))
    IntegrationCredential.add_member(:api_key_credential, Shapes::ShapeRef.new(shape: ApiKeyCredential, location_name: "apiKeyCredential"))
    IntegrationCredential.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    IntegrationCredential.add_member_subclass(:oauth_code_credential, Types::IntegrationCredential::OauthCodeCredential)
    IntegrationCredential.add_member_subclass(:oauth_client_credential, Types::IntegrationCredential::OauthClientCredential)
    IntegrationCredential.add_member_subclass(:api_key_credential, Types::IntegrationCredential::ApiKeyCredential)
    IntegrationCredential.add_member_subclass(:unknown, Types::IntegrationCredential::Unknown)
    IntegrationCredential.struct_class = Types::IntegrationCredential

    IntegrationIdentifier.add_member(:integration_id, Shapes::ShapeRef.new(shape: String, location_name: "integrationId"))
    IntegrationIdentifier.add_member(:integration_arn, Shapes::ShapeRef.new(shape: IntegrationArn, location_name: "integrationArn"))
    IntegrationIdentifier.add_member(:integration_name, Shapes::ShapeRef.new(shape: String, location_name: "integrationName"))
    IntegrationIdentifier.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    IntegrationIdentifier.add_member_subclass(:integration_id, Types::IntegrationIdentifier::IntegrationId)
    IntegrationIdentifier.add_member_subclass(:integration_arn, Types::IntegrationIdentifier::IntegrationArn)
    IntegrationIdentifier.add_member_subclass(:integration_name, Types::IntegrationIdentifier::IntegrationName)
    IntegrationIdentifier.add_member_subclass(:unknown, Types::IntegrationIdentifier::Unknown)
    IntegrationIdentifier.struct_class = Types::IntegrationIdentifier

    IntegrationList.member = Shapes::ShapeRef.new(shape: Integration)

    IntelligenceTagMap.key = Shapes::ShapeRef.new(shape: String)
    IntelligenceTagMap.value = Shapes::ShapeRef.new(shape: String)

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    InternalServerException.add_member(:error_code, Shapes::ShapeRef.new(shape: String, location_name: "errorCode"))
    InternalServerException.struct_class = Types::InternalServerException

    KeyFilter.add_member(:key, Shapes::ShapeRef.new(shape: KeyFilterKey, required: true, location_name: "key"))
    KeyFilter.add_member(:values, Shapes::ShapeRef.new(shape: KeyFilterValues, location_name: "values"))
    KeyFilter.struct_class = Types::KeyFilter

    KeyFilterList.member = Shapes::ShapeRef.new(shape: KeyFilter)

    KeyFilterValues.member = Shapes::ShapeRef.new(shape: KeyFilterValue)

    ListAccessGrantsInput.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, location_name: "domainId"))
    ListAccessGrantsInput.add_member(:space_id, Shapes::ShapeRef.new(shape: SpaceId, location_name: "spaceId"))
    ListAccessGrantsInput.add_member(:principal_id, Shapes::ShapeRef.new(shape: PrincipalId, location_name: "principalId"))
    ListAccessGrantsInput.add_member(:principal_type, Shapes::ShapeRef.new(shape: AccessGrantPrincipalType, location_name: "principalType"))
    ListAccessGrantsInput.add_member(:permission, Shapes::ShapeRef.new(shape: AccessGrantPermission, location_name: "permission"))
    ListAccessGrantsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListAccessGrantsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListAccessGrantsInputMaxResultsInteger, location_name: "maxResults"))
    ListAccessGrantsInput.struct_class = Types::ListAccessGrantsInput

    ListAccessGrantsOutput.add_member(:items, Shapes::ShapeRef.new(shape: AccessGrantSummaryList, required: true, location_name: "items"))
    ListAccessGrantsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListAccessGrantsOutput.struct_class = Types::ListAccessGrantsOutput

    ListAccessProfilesInput.add_member(:space_id, Shapes::ShapeRef.new(shape: SpaceId, required: true, location_name: "spaceId"))
    ListAccessProfilesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListAccessProfilesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListAccessProfilesInputMaxResultsInteger, location_name: "maxResults"))
    ListAccessProfilesInput.struct_class = Types::ListAccessProfilesInput

    ListAccessProfilesOutput.add_member(:items, Shapes::ShapeRef.new(shape: AccessProfileSummaryList, required: true, location_name: "items"))
    ListAccessProfilesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListAccessProfilesOutput.struct_class = Types::ListAccessProfilesOutput

    ListAlertsInput.add_member(:space_id, Shapes::ShapeRef.new(shape: SpaceId, required: true, location_name: "spaceId"))
    ListAlertsInput.add_member(:filter_criteria, Shapes::ShapeRef.new(shape: AlertFilterCriteria, location_name: "filterCriteria"))
    ListAlertsInput.add_member(:sort_by, Shapes::ShapeRef.new(shape: AlertSortField, location_name: "sortBy"))
    ListAlertsInput.add_member(:sort_order, Shapes::ShapeRef.new(shape: AlertSortOrder, location_name: "sortOrder"))
    ListAlertsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListAlertsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListAlertsInputMaxResultsInteger, location_name: "maxResults"))
    ListAlertsInput.struct_class = Types::ListAlertsInput

    ListAlertsOutput.add_member(:items, Shapes::ShapeRef.new(shape: AlertSummaryList, required: true, location_name: "items"))
    ListAlertsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListAlertsOutput.struct_class = Types::ListAlertsOutput

    ListDomainAccessGrantsForOrganizationInput.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, location_name: "domainId"))
    ListDomainAccessGrantsForOrganizationInput.add_member(:principal_id, Shapes::ShapeRef.new(shape: PrincipalId, location_name: "principalId"))
    ListDomainAccessGrantsForOrganizationInput.add_member(:principal_type, Shapes::ShapeRef.new(shape: OrganizationGrantPrincipalType, location_name: "principalType"))
    ListDomainAccessGrantsForOrganizationInput.add_member(:permission, Shapes::ShapeRef.new(shape: OrganizationGrantPermission, location_name: "permission"))
    ListDomainAccessGrantsForOrganizationInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListDomainAccessGrantsForOrganizationInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListDomainAccessGrantsForOrganizationInputMaxResultsInteger, location_name: "maxResults"))
    ListDomainAccessGrantsForOrganizationInput.struct_class = Types::ListDomainAccessGrantsForOrganizationInput

    ListDomainAccessGrantsForOrganizationOutput.add_member(:items, Shapes::ShapeRef.new(shape: OrganizationAccessGrantSummaryList, required: true, location_name: "items"))
    ListDomainAccessGrantsForOrganizationOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListDomainAccessGrantsForOrganizationOutput.struct_class = Types::ListDomainAccessGrantsForOrganizationOutput

    ListDomainsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListDomainsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListDomainsInputMaxResultsInteger, location_name: "maxResults"))
    ListDomainsInput.struct_class = Types::ListDomainsInput

    ListDomainsOutput.add_member(:items, Shapes::ShapeRef.new(shape: DomainSummaryList, required: true, location_name: "items"))
    ListDomainsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListDomainsOutput.struct_class = Types::ListDomainsOutput

    ListIntegrationsInput.add_member(:integration_type, Shapes::ShapeRef.new(shape: IntegrationType, location_name: "integrationType"))
    ListIntegrationsInput.add_member(:status, Shapes::ShapeRef.new(shape: IntegrationStatus, location_name: "status"))
    ListIntegrationsInput.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    ListIntegrationsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListIntegrationsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListIntegrationsInputMaxResultsInteger, location_name: "maxResults"))
    ListIntegrationsInput.struct_class = Types::ListIntegrationsInput

    ListIntegrationsOutput.add_member(:items, Shapes::ShapeRef.new(shape: IntegrationList, required: true, location_name: "items"))
    ListIntegrationsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListIntegrationsOutput.struct_class = Types::ListIntegrationsOutput

    ListOmniDashboardsInput.add_member(:space_id, Shapes::ShapeRef.new(shape: SpaceId, required: true, location_name: "spaceId"))
    ListOmniDashboardsInput.add_member(:name_prefix, Shapes::ShapeRef.new(shape: ListOmniDashboardsInputNamePrefixString, location_name: "namePrefix"))
    ListOmniDashboardsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListOmniDashboardsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListOmniDashboardsInputMaxResultsInteger, location_name: "maxResults"))
    ListOmniDashboardsInput.struct_class = Types::ListOmniDashboardsInput

    ListOmniDashboardsOutput.add_member(:items, Shapes::ShapeRef.new(shape: OmniDashboardSummaryList, required: true, location_name: "items"))
    ListOmniDashboardsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListOmniDashboardsOutput.struct_class = Types::ListOmniDashboardsOutput

    ListSpacesForOrganizationInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListSpacesForOrganizationInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListSpacesForOrganizationInputMaxResultsInteger, location_name: "maxResults"))
    ListSpacesForOrganizationInput.struct_class = Types::ListSpacesForOrganizationInput

    ListSpacesForOrganizationOutput.add_member(:items, Shapes::ShapeRef.new(shape: SpaceSummaryList, required: true, location_name: "items"))
    ListSpacesForOrganizationOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListSpacesForOrganizationOutput.struct_class = Types::ListSpacesForOrganizationOutput

    ListSpacesInput.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, location_name: "domainId"))
    ListSpacesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListSpacesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListSpacesInputMaxResultsInteger, location_name: "maxResults"))
    ListSpacesInput.struct_class = Types::ListSpacesInput

    ListSpacesOutput.add_member(:items, Shapes::ShapeRef.new(shape: SpaceSummaryList, required: true, location_name: "items"))
    ListSpacesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListSpacesOutput.struct_class = Types::ListSpacesOutput

    ListTelemetryFieldsRequest.add_member(:data_set_name, Shapes::ShapeRef.new(shape: ListTelemetryFieldsRequestDataSetNameString, required: true, location_name: "dataSetName"))
    ListTelemetryFieldsRequest.add_member(:telemetry_type, Shapes::ShapeRef.new(shape: TelemetryType, location_name: "telemetryType"))
    ListTelemetryFieldsRequest.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "startTime"))
    ListTelemetryFieldsRequest.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "endTime"))
    ListTelemetryFieldsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListTelemetryFieldsRequest.struct_class = Types::ListTelemetryFieldsRequest

    ListTelemetryFieldsResponse.add_member(:fields, Shapes::ShapeRef.new(shape: FieldList, required: true, location_name: "fields"))
    ListTelemetryFieldsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListTelemetryFieldsResponse.struct_class = Types::ListTelemetryFieldsResponse

    ListTelemetryQuerySessionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListTelemetryQuerySessionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListTelemetryQuerySessionsRequestMaxResultsInteger, location_name: "maxResults"))
    ListTelemetryQuerySessionsRequest.struct_class = Types::ListTelemetryQuerySessionsRequest

    ListTelemetryQuerySessionsResponse.add_member(:sessions, Shapes::ShapeRef.new(shape: SessionSummaryList, required: true, location_name: "sessions"))
    ListTelemetryQuerySessionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListTelemetryQuerySessionsResponse.struct_class = Types::ListTelemetryQuerySessionsResponse

    ListViewsRequest.add_member(:type, Shapes::ShapeRef.new(shape: ViewType, location_name: "type"))
    ListViewsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListViewsRequestMaxResultsInteger, location_name: "maxResults"))
    ListViewsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListViewsRequest.struct_class = Types::ListViewsRequest

    ListViewsResponse.add_member(:items, Shapes::ShapeRef.new(shape: ViewSummaryList, required: true, location_name: "items"))
    ListViewsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListViewsResponse.struct_class = Types::ListViewsResponse

    LogMetadata.add_member(:attributes, Shapes::ShapeRef.new(shape: LogMetadataAttributeMap, location_name: "attributes"))
    LogMetadata.struct_class = Types::LogMetadata

    LogMetadataAttributeMap.key = Shapes::ShapeRef.new(shape: String)
    LogMetadataAttributeMap.value = Shapes::ShapeRef.new(shape: String)

    LogMetadataList.member = Shapes::ShapeRef.new(shape: LogMetadata)

    Metadata.add_member(:metrics, Shapes::ShapeRef.new(shape: MetricMetadataList, location_name: "metrics"))
    Metadata.add_member(:semantics, Shapes::ShapeRef.new(shape: NodeSemantics, location_name: "semantics"))
    Metadata.add_member(:logs, Shapes::ShapeRef.new(shape: LogMetadataList, location_name: "logs"))
    Metadata.add_member(:traces, Shapes::ShapeRef.new(shape: TraceMetadataList, location_name: "traces"))
    Metadata.struct_class = Types::Metadata

    MetadataAttributeMap.key = Shapes::ShapeRef.new(shape: String)
    MetadataAttributeMap.value = Shapes::ShapeRef.new(shape: String)

    MetricMetadata.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    MetricMetadata.add_member(:namespace, Shapes::ShapeRef.new(shape: String, deprecated: true, location_name: "namespace", metadata: {"deprecatedMessage" => "Use attributes['service.namespace']; retained for backward compatibility.", "deprecatedSince" => "2026-08-19"}))
    MetricMetadata.add_member(:preferred_stat, Shapes::ShapeRef.new(shape: String, location_name: "preferredStat"))
    MetricMetadata.add_member(:metric_type, Shapes::ShapeRef.new(shape: String, location_name: "metricType"))
    MetricMetadata.add_member(:attributes, Shapes::ShapeRef.new(shape: MetadataAttributeMap, location_name: "attributes"))
    MetricMetadata.add_member(:semantics, Shapes::ShapeRef.new(shape: MetricSemantics, location_name: "semantics"))
    MetricMetadata.struct_class = Types::MetricMetadata

    MetricMetadataList.member = Shapes::ShapeRef.new(shape: MetricMetadata)

    MetricSemantics.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    MetricSemantics.add_member(:unit, Shapes::ShapeRef.new(shape: String, location_name: "unit"))
    MetricSemantics.struct_class = Types::MetricSemantics

    NoData.add_member(:treat_as, Shapes::ShapeRef.new(shape: AlertState, required: true, location_name: "treatAs"))
    NoData.struct_class = Types::NoData

    Node.add_member(:node_id, Shapes::ShapeRef.new(shape: ContextGraphId, location_name: "nodeId"))
    Node.add_member(:node_type, Shapes::ShapeRef.new(shape: NodeType, location_name: "nodeType"))
    Node.add_member(:name, Shapes::ShapeRef.new(shape: ContextGraphName, location_name: "name"))
    Node.add_member(:alternate_names, Shapes::ShapeRef.new(shape: StringSet, location_name: "alternateNames"))
    Node.add_member(:tags, Shapes::ShapeRef.new(shape: IntelligenceTagMap, location_name: "tags"))
    Node.add_member(:node_properties, Shapes::ShapeRef.new(shape: NodeProperties, location_name: "nodeProperties"))
    Node.add_member(:telemetry_attributes, Shapes::ShapeRef.new(shape: ContextGraphAttributeMap, location_name: "telemetryAttributes"))
    Node.add_member(:operation_details, Shapes::ShapeRef.new(shape: OperationDetails, location_name: "operationDetails"))
    Node.add_member(:signal_types, Shapes::ShapeRef.new(shape: SignalSet, location_name: "signalTypes"))
    Node.add_member(:sources, Shapes::ShapeRef.new(shape: SourceSet, location_name: "sources"))
    Node.add_member(:metadata, Shapes::ShapeRef.new(shape: Metadata, location_name: "metadata"))
    Node.add_member(:first_observed_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "firstObservedAt"))
    Node.add_member(:last_observed_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastObservedAt"))
    Node.add_member(:edges, Shapes::ShapeRef.new(shape: EdgeList, location_name: "edges"))
    Node.struct_class = Types::Node

    NodeCategorySet.member = Shapes::ShapeRef.new(shape: NodeCategory)

    NodeFilters.add_member(:node_id, Shapes::ShapeRef.new(shape: ContextGraphId, location_name: "nodeId"))
    NodeFilters.add_member(:node_type, Shapes::ShapeRef.new(shape: NodeType, location_name: "nodeType"))
    NodeFilters.add_member(:name, Shapes::ShapeRef.new(shape: ContextGraphName, location_name: "name"))
    NodeFilters.add_member(:tags, Shapes::ShapeRef.new(shape: KeyFilterList, location_name: "tags"))
    NodeFilters.add_member(:telemetry_attributes, Shapes::ShapeRef.new(shape: KeyFilterList, location_name: "telemetryAttributes"))
    NodeFilters.add_member(:region, Shapes::ShapeRef.new(shape: StringSet, location_name: "region"))
    NodeFilters.add_member(:cloud_provider, Shapes::ShapeRef.new(shape: StringSet, location_name: "cloudProvider"))
    NodeFilters.add_member(:source_account_id, Shapes::ShapeRef.new(shape: StringSet, location_name: "sourceAccountId"))
    NodeFilters.add_member(:namespace, Shapes::ShapeRef.new(shape: StringSet, location_name: "namespace"))
    NodeFilters.add_member(:category, Shapes::ShapeRef.new(shape: NodeCategorySet, location_name: "category"))
    NodeFilters.add_member(:stage, Shapes::ShapeRef.new(shape: StringSet, location_name: "stage"))
    NodeFilters.add_member(:sources, Shapes::ShapeRef.new(shape: SourceSet, location_name: "sources"))
    NodeFilters.struct_class = Types::NodeFilters

    NodeList.member = Shapes::ShapeRef.new(shape: Node)

    NodeProperties.add_member(:region, Shapes::ShapeRef.new(shape: String, location_name: "region"))
    NodeProperties.add_member(:cloud_provider, Shapes::ShapeRef.new(shape: String, location_name: "cloudProvider"))
    NodeProperties.add_member(:source_account_id, Shapes::ShapeRef.new(shape: String, location_name: "sourceAccountId"))
    NodeProperties.add_member(:namespace, Shapes::ShapeRef.new(shape: String, location_name: "namespace"))
    NodeProperties.add_member(:category, Shapes::ShapeRef.new(shape: NodeCategory, location_name: "category"))
    NodeProperties.add_member(:stage, Shapes::ShapeRef.new(shape: String, location_name: "stage"))
    NodeProperties.struct_class = Types::NodeProperties

    NodeSemantics.add_member(:purpose, Shapes::ShapeRef.new(shape: String, location_name: "purpose"))
    NodeSemantics.add_member(:language, Shapes::ShapeRef.new(shape: String, location_name: "language"))
    NodeSemantics.add_member(:framework, Shapes::ShapeRef.new(shape: String, location_name: "framework"))
    NodeSemantics.add_member(:kind, Shapes::ShapeRef.new(shape: String, location_name: "kind"))
    NodeSemantics.add_member(:repository, Shapes::ShapeRef.new(shape: String, location_name: "repository"))
    NodeSemantics.struct_class = Types::NodeSemantics

    NotificationRule.add_member(:trigger, Shapes::ShapeRef.new(shape: NotificationTrigger, required: true, location_name: "trigger"))
    NotificationRule.add_member(:target, Shapes::ShapeRef.new(shape: NotificationTarget, required: true, location_name: "target"))
    NotificationRule.struct_class = Types::NotificationRule

    NotificationRuleList.member = Shapes::ShapeRef.new(shape: NotificationRule)

    NotificationTarget.add_member(:type, Shapes::ShapeRef.new(shape: NotificationTargetType, required: true, location_name: "type"))
    NotificationTarget.add_member(:arn, Shapes::ShapeRef.new(shape: NotificationTargetArnString, required: true, location_name: "arn"))
    NotificationTarget.add_member(:metadata, Shapes::ShapeRef.new(shape: NotificationTargetMetadataMap, location_name: "metadata"))
    NotificationTarget.struct_class = Types::NotificationTarget

    NotificationTargetMetadataMap.key = Shapes::ShapeRef.new(shape: NotificationTargetMetadataMapKeyString)
    NotificationTargetMetadataMap.value = Shapes::ShapeRef.new(shape: NotificationTargetMetadataMapValueString)

    NotificationTrigger.add_member(:state_values, Shapes::ShapeRef.new(shape: AlertStateList, location_name: "stateValues"))
    NotificationTrigger.struct_class = Types::NotificationTrigger

    OAuthClientCredential.add_member(:client_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "clientId"))
    OAuthClientCredential.add_member(:client_secret, Shapes::ShapeRef.new(shape: SensitiveString, required: true, location_name: "clientSecret"))
    OAuthClientCredential.add_member(:provider_id, Shapes::ShapeRef.new(shape: String, location_name: "providerId"))
    OAuthClientCredential.struct_class = Types::OAuthClientCredential

    OAuthCodeCredential.add_member(:auth_code, Shapes::ShapeRef.new(shape: OAuthCodeCredentialAuthCodeString, required: true, location_name: "authCode"))
    OAuthCodeCredential.struct_class = Types::OAuthCodeCredential

    OmniDashboard.add_member(:dashboard_id, Shapes::ShapeRef.new(shape: DashboardId, required: true, location_name: "dashboardId"))
    OmniDashboard.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "arn"))
    OmniDashboard.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    OmniDashboard.add_member(:body, Shapes::ShapeRef.new(shape: String, required: true, location_name: "body"))
    OmniDashboard.add_member(:created_by, Shapes::ShapeRef.new(shape: String, required: true, location_name: "createdBy"))
    OmniDashboard.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    OmniDashboard.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    OmniDashboard.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    OmniDashboard.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    OmniDashboard.struct_class = Types::OmniDashboard

    OmniDashboardSummary.add_member(:dashboard_id, Shapes::ShapeRef.new(shape: DashboardId, required: true, location_name: "dashboardId"))
    OmniDashboardSummary.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "arn"))
    OmniDashboardSummary.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    OmniDashboardSummary.add_member(:created_by, Shapes::ShapeRef.new(shape: String, required: true, location_name: "createdBy"))
    OmniDashboardSummary.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    OmniDashboardSummary.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    OmniDashboardSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    OmniDashboardSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    OmniDashboardSummary.struct_class = Types::OmniDashboardSummary

    OmniDashboardSummaryList.member = Shapes::ShapeRef.new(shape: OmniDashboardSummary)

    OperationDetails.key = Shapes::ShapeRef.new(shape: OperationName)
    OperationDetails.value = Shapes::ShapeRef.new(shape: OperationIdentifierSets)

    OperationIdentifierSet.key = Shapes::ShapeRef.new(shape: OperationIdentifierKey)
    OperationIdentifierSet.value = Shapes::ShapeRef.new(shape: OperationIdentifierValue)

    OperationIdentifierSets.member = Shapes::ShapeRef.new(shape: OperationIdentifierSet)

    OrganizationAccessGrant.add_member(:grant_id, Shapes::ShapeRef.new(shape: GrantId, required: true, location_name: "grantId"))
    OrganizationAccessGrant.add_member(:grant_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "grantArn"))
    OrganizationAccessGrant.add_member(:name, Shapes::ShapeRef.new(shape: OrganizationAccessGrantNameString, location_name: "name"))
    OrganizationAccessGrant.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location_name: "domainId"))
    OrganizationAccessGrant.add_member(:principal, Shapes::ShapeRef.new(shape: OrganizationAccessGrantPrincipal, required: true, location_name: "principal"))
    OrganizationAccessGrant.add_member(:permission, Shapes::ShapeRef.new(shape: OrganizationGrantPermission, required: true, location_name: "permission"))
    OrganizationAccessGrant.add_member(:grant_type, Shapes::ShapeRef.new(shape: AccessGrantType, required: true, location_name: "grantType"))
    OrganizationAccessGrant.add_member(:created_by, Shapes::ShapeRef.new(shape: String, required: true, location_name: "createdBy"))
    OrganizationAccessGrant.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    OrganizationAccessGrant.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    OrganizationAccessGrant.struct_class = Types::OrganizationAccessGrant

    OrganizationAccessGrantPrincipal.add_member(:principal_type, Shapes::ShapeRef.new(shape: OrganizationGrantPrincipalType, required: true, location_name: "principalType"))
    OrganizationAccessGrantPrincipal.add_member(:principal_id, Shapes::ShapeRef.new(shape: OrganizationPrincipalId, location_name: "principalId"))
    OrganizationAccessGrantPrincipal.add_member(:principal_attributes, Shapes::ShapeRef.new(shape: AccessGrantPrincipalAttributeList, location_name: "principalAttributes"))
    OrganizationAccessGrantPrincipal.struct_class = Types::OrganizationAccessGrantPrincipal

    OrganizationAccessGrantSummary.add_member(:grant_id, Shapes::ShapeRef.new(shape: GrantId, required: true, location_name: "grantId"))
    OrganizationAccessGrantSummary.add_member(:grant_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "grantArn"))
    OrganizationAccessGrantSummary.add_member(:name, Shapes::ShapeRef.new(shape: OrganizationAccessGrantSummaryNameString, location_name: "name"))
    OrganizationAccessGrantSummary.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location_name: "domainId"))
    OrganizationAccessGrantSummary.add_member(:principal, Shapes::ShapeRef.new(shape: OrganizationAccessGrantPrincipal, required: true, location_name: "principal"))
    OrganizationAccessGrantSummary.add_member(:permission, Shapes::ShapeRef.new(shape: OrganizationGrantPermission, required: true, location_name: "permission"))
    OrganizationAccessGrantSummary.add_member(:grant_type, Shapes::ShapeRef.new(shape: AccessGrantType, required: true, location_name: "grantType"))
    OrganizationAccessGrantSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    OrganizationAccessGrantSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    OrganizationAccessGrantSummary.struct_class = Types::OrganizationAccessGrantSummary

    OrganizationAccessGrantSummaryList.member = Shapes::ShapeRef.new(shape: OrganizationAccessGrantSummary)

    OrganizationDomain.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location_name: "domainId"))
    OrganizationDomain.add_member(:domain_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "domainArn"))
    OrganizationDomain.add_member(:name, Shapes::ShapeRef.new(shape: OrganizationDomainNameString, location_name: "name"))
    OrganizationDomain.add_member(:domain_endpoint_url, Shapes::ShapeRef.new(shape: String, required: true, location_name: "domainEndpointUrl"))
    OrganizationDomain.add_member(:custom_endpoint_urls, Shapes::ShapeRef.new(shape: StringList, location_name: "customEndpointUrls"))
    OrganizationDomain.add_member(:organization_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "organizationId"))
    OrganizationDomain.add_member(:owner_account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "ownerAccountId"))
    OrganizationDomain.add_member(:identity_providers, Shapes::ShapeRef.new(shape: IdentityProviderList, required: true, location_name: "identityProviders"))
    OrganizationDomain.add_member(:identity_provider_configuration, Shapes::ShapeRef.new(shape: IdentityProviderConfiguration, location_name: "identityProviderConfiguration"))
    OrganizationDomain.add_member(:identity_center_application_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "identityCenterApplicationArn"))
    OrganizationDomain.add_member(:region, Shapes::ShapeRef.new(shape: String, required: true, location_name: "region"))
    OrganizationDomain.add_member(:status, Shapes::ShapeRef.new(shape: DomainStatus, required: true, location_name: "status"))
    OrganizationDomain.add_member(:domain_access_role_arn, Shapes::ShapeRef.new(shape: IamRoleArn, location_name: "domainAccessRoleArn"))
    OrganizationDomain.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    OrganizationDomain.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    OrganizationDomain.struct_class = Types::OrganizationDomain

    PartialResults.add_member(:partial_results_detected, Shapes::ShapeRef.new(shape: Boolean, location_name: "partialResultsDetected"))
    PartialResults.struct_class = Types::PartialResults

    PrincipalSearchResult.add_member(:principal_id, Shapes::ShapeRef.new(shape: PrincipalId, required: true, location_name: "principalId"))
    PrincipalSearchResult.add_member(:principal_type, Shapes::ShapeRef.new(shape: PrincipalType, required: true, location_name: "principalType"))
    PrincipalSearchResult.add_member(:display_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "displayName"))
    PrincipalSearchResult.add_member(:user_name, Shapes::ShapeRef.new(shape: String, location_name: "userName"))
    PrincipalSearchResult.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    PrincipalSearchResult.struct_class = Types::PrincipalSearchResult

    PrincipalSearchResultList.member = Shapes::ShapeRef.new(shape: PrincipalSearchResult)

    PutIntelligenceConfigurationInput.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: IntelligenceKmsKeyArn, location_name: "kmsKeyArn"))
    PutIntelligenceConfigurationInput.add_member(:remove_kms_key, Shapes::ShapeRef.new(shape: Boolean, location_name: "removeKmsKey"))
    PutIntelligenceConfigurationInput.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    PutIntelligenceConfigurationInput.struct_class = Types::PutIntelligenceConfigurationInput

    PutIntelligenceConfigurationOutput.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "accountId"))
    PutIntelligenceConfigurationOutput.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: IntelligenceKmsKeyArn, location_name: "kmsKeyArn"))
    PutIntelligenceConfigurationOutput.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    PutIntelligenceConfigurationOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    PutIntelligenceConfigurationOutput.struct_class = Types::PutIntelligenceConfigurationOutput

    QueryStatistics.add_member(:bytes_scanned, Shapes::ShapeRef.new(shape: Double, location_name: "bytesScanned"))
    QueryStatistics.add_member(:percent_complete, Shapes::ShapeRef.new(shape: Integer, location_name: "percentComplete"))
    QueryStatistics.add_member(:records_scanned, Shapes::ShapeRef.new(shape: Long, location_name: "recordsScanned"))
    QueryStatistics.add_member(:records_matched, Shapes::ShapeRef.new(shape: Long, location_name: "recordsMatched"))
    QueryStatistics.add_member(:partial_results, Shapes::ShapeRef.new(shape: PartialResults, location_name: "partialResults"))
    QueryStatistics.struct_class = Types::QueryStatistics

    ResourceArnList.member = Shapes::ShapeRef.new(shape: String)

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ResourceNotFoundException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, location_name: "resourceType"))
    ResourceNotFoundException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, location_name: "resourceId"))
    ResourceNotFoundException.add_member(:error_code, Shapes::ShapeRef.new(shape: String, location_name: "errorCode"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ResourceScope.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceType"))
    ResourceScope.add_member(:resource_arns, Shapes::ShapeRef.new(shape: ResourceArnList, location_name: "resourceArns"))
    ResourceScope.add_member(:tags, Shapes::ShapeRef.new(shape: ResourceScopeTagMap, location_name: "tags"))
    ResourceScope.add_member(:signal_types, Shapes::ShapeRef.new(shape: SignalTypeList, location_name: "signalTypes"))
    ResourceScope.add_member(:row_scope_groups, Shapes::ShapeRef.new(shape: RowScopeGroupList, location_name: "rowScopeGroups"))
    ResourceScope.struct_class = Types::ResourceScope

    ResourceScopeList.member = Shapes::ShapeRef.new(shape: ResourceScope)

    ResourceScopeTagMap.key = Shapes::ShapeRef.new(shape: String)
    ResourceScopeTagMap.value = Shapes::ShapeRef.new(shape: String)

    Row.key = Shapes::ShapeRef.new(shape: String)
    Row.value = Shapes::ShapeRef.new(shape: String)

    RowList.member = Shapes::ShapeRef.new(shape: Row)

    RowScope.add_member(:field, Shapes::ShapeRef.new(shape: RowScopeFieldString, required: true, location_name: "field"))
    RowScope.add_member(:operator, Shapes::ShapeRef.new(shape: RowScopeOperator, required: true, location_name: "operator"))
    RowScope.add_member(:values, Shapes::ShapeRef.new(shape: RowScopeValueList, required: true, location_name: "values"))
    RowScope.struct_class = Types::RowScope

    RowScopeGroup.member = Shapes::ShapeRef.new(shape: RowScope)

    RowScopeGroupList.member = Shapes::ShapeRef.new(shape: RowScopeGroup)

    RowScopeValueList.member = Shapes::ShapeRef.new(shape: RowScopeValue)

    Rule.add_member(:telemetry_rule, Shapes::ShapeRef.new(shape: TelemetryRule, location_name: "telemetryRule"))
    Rule.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    Rule.add_member_subclass(:telemetry_rule, Types::Rule::TelemetryRule)
    Rule.add_member_subclass(:unknown, Types::Rule::Unknown)
    Rule.struct_class = Types::Rule

    ScopedActionNameList.member = Shapes::ShapeRef.new(shape: ScopedActionName)

    ScopedActions.add_member(:actions, Shapes::ShapeRef.new(shape: ScopedActionNameList, required: true, location_name: "actions"))
    ScopedActions.add_member(:resources, Shapes::ShapeRef.new(shape: ResourceScopeList, location_name: "resources"))
    ScopedActions.add_member(:context_conditions, Shapes::ShapeRef.new(shape: ContextConditionsMap, location_name: "contextConditions"))
    ScopedActions.struct_class = Types::ScopedActions

    ScopedActionsList.member = Shapes::ShapeRef.new(shape: ScopedActions)

    SearchPrincipalsInput.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location_name: "domainId"))
    SearchPrincipalsInput.add_member(:search_query, Shapes::ShapeRef.new(shape: SearchPrincipalsInputSearchQueryString, required: true, location_name: "searchQuery"))
    SearchPrincipalsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: SearchPrincipalsInputMaxResultsInteger, location_name: "maxResults"))
    SearchPrincipalsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: SearchPrincipalsNextToken, location_name: "nextToken"))
    SearchPrincipalsInput.struct_class = Types::SearchPrincipalsInput

    SearchPrincipalsOutput.add_member(:results, Shapes::ShapeRef.new(shape: PrincipalSearchResultList, required: true, location_name: "results"))
    SearchPrincipalsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: SearchPrincipalsNextToken, location_name: "nextToken"))
    SearchPrincipalsOutput.struct_class = Types::SearchPrincipalsOutput

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    SessionSummary.add_member(:session_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "sessionId"))
    SessionSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    SessionSummary.add_member(:last_activity_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastActivityAt"))
    SessionSummary.add_member(:session_name, Shapes::ShapeRef.new(shape: SessionSummarySessionNameString, location_name: "sessionName"))
    SessionSummary.struct_class = Types::SessionSummary

    SessionSummaryList.member = Shapes::ShapeRef.new(shape: SessionSummary)

    SignalSet.member = Shapes::ShapeRef.new(shape: Signal)

    SignalTypeList.member = Shapes::ShapeRef.new(shape: SignalType)

    SourceSet.member = Shapes::ShapeRef.new(shape: Source)

    Space.add_member(:space_id, Shapes::ShapeRef.new(shape: SpaceId, required: true, location_name: "spaceId"))
    Space.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    Space.add_member(:space_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "spaceArn"))
    Space.add_member(:domain_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "domainArn"))
    Space.add_member(:region, Shapes::ShapeRef.new(shape: String, required: true, location_name: "region"))
    Space.add_member(:owner_account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "ownerAccountId"))
    Space.add_member(:data_access_role_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "dataAccessRoleArn"))
    Space.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    Space.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    Space.add_member(:agent_core_evaluation_role_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "agentCoreEvaluationRoleArn"))
    Space.add_member(:status, Shapes::ShapeRef.new(shape: SpaceStatus, required: true, location_name: "status"))
    Space.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    Space.add_member(:encryption_configuration, Shapes::ShapeRef.new(shape: EncryptionConfiguration, location_name: "encryptionConfiguration"))
    Space.struct_class = Types::Space

    SpaceCredentialRequestContext.add_member(:space_id, Shapes::ShapeRef.new(shape: SpaceId, location_name: "spaceId"))
    SpaceCredentialRequestContext.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, location_name: "domainId"))
    SpaceCredentialRequestContext.add_member(:target_account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "targetAccountId"))
    SpaceCredentialRequestContext.struct_class = Types::SpaceCredentialRequestContext

    SpaceSummary.add_member(:space_id, Shapes::ShapeRef.new(shape: SpaceId, required: true, location_name: "spaceId"))
    SpaceSummary.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    SpaceSummary.add_member(:space_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "spaceArn"))
    SpaceSummary.add_member(:domain_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "domainArn"))
    SpaceSummary.add_member(:region, Shapes::ShapeRef.new(shape: String, required: true, location_name: "region"))
    SpaceSummary.add_member(:owner_account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "ownerAccountId"))
    SpaceSummary.add_member(:status, Shapes::ShapeRef.new(shape: SpaceStatus, required: true, location_name: "status"))
    SpaceSummary.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    SpaceSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    SpaceSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    SpaceSummary.struct_class = Types::SpaceSummary

    SpaceSummaryList.member = Shapes::ShapeRef.new(shape: SpaceSummary)

    StartTelemetryQueryRequest.add_member(:query_string, Shapes::ShapeRef.new(shape: StartTelemetryQueryRequestQueryStringString, required: true, location_name: "queryString"))
    StartTelemetryQueryRequest.add_member(:session_id, Shapes::ShapeRef.new(shape: StartTelemetryQueryRequestSessionIdString, required: true, location_name: "sessionId"))
    StartTelemetryQueryRequest.struct_class = Types::StartTelemetryQueryRequest

    StartTelemetryQueryResponse.add_member(:query_id, Shapes::ShapeRef.new(shape: StartTelemetryQueryResponseQueryIdString, required: true, location_name: "queryId"))
    StartTelemetryQueryResponse.add_member(:session_id, Shapes::ShapeRef.new(shape: StartTelemetryQueryResponseSessionIdString, required: true, location_name: "sessionId"))
    StartTelemetryQueryResponse.struct_class = Types::StartTelemetryQueryResponse

    StartTelemetryQuerySessionRequest.add_member(:session_name, Shapes::ShapeRef.new(shape: StartTelemetryQuerySessionRequestSessionNameString, location_name: "sessionName"))
    StartTelemetryQuerySessionRequest.struct_class = Types::StartTelemetryQuerySessionRequest

    StartTelemetryQuerySessionResponse.add_member(:session_id, Shapes::ShapeRef.new(shape: StartTelemetryQuerySessionResponseSessionIdString, required: true, location_name: "sessionId"))
    StartTelemetryQuerySessionResponse.struct_class = Types::StartTelemetryQuerySessionResponse

    StopTelemetryQueryRequest.add_member(:query_id, Shapes::ShapeRef.new(shape: StopTelemetryQueryRequestQueryIdString, required: true, location_name: "queryId"))
    StopTelemetryQueryRequest.struct_class = Types::StopTelemetryQueryRequest

    StopTelemetryQueryResponse.struct_class = Types::StopTelemetryQueryResponse

    StopTelemetryQuerySessionRequest.add_member(:session_id, Shapes::ShapeRef.new(shape: StopTelemetryQuerySessionRequestSessionIdString, required: true, location_name: "sessionId"))
    StopTelemetryQuerySessionRequest.struct_class = Types::StopTelemetryQuerySessionRequest

    StopTelemetryQuerySessionResponse.struct_class = Types::StopTelemetryQuerySessionResponse

    StringList.member = Shapes::ShapeRef.new(shape: String)

    StringMap.key = Shapes::ShapeRef.new(shape: StringMapKeyString)
    StringMap.value = Shapes::ShapeRef.new(shape: StringMapValueString)

    StringSet.member = Shapes::ShapeRef.new(shape: String)

    TagMap.key = Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Shapes::ShapeRef.new(shape: TagValue)

    TelemetryRule.add_member(:query, Shapes::ShapeRef.new(shape: AlertRuleQuery, location_name: "query"))
    TelemetryRule.add_member(:condition, Shapes::ShapeRef.new(shape: AlertCondition, location_name: "condition"))
    TelemetryRule.add_member(:evaluation, Shapes::ShapeRef.new(shape: AlertEvaluation, location_name: "evaluation"))
    TelemetryRule.add_member(:no_data, Shapes::ShapeRef.new(shape: NoData, location_name: "noData"))
    TelemetryRule.struct_class = Types::TelemetryRule

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ThrottlingException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: Integer, location_name: "retryAfterSeconds"))
    ThrottlingException.struct_class = Types::ThrottlingException

    TraceMetadata.add_member(:attributes, Shapes::ShapeRef.new(shape: TraceMetadataAttributeMap, location_name: "attributes"))
    TraceMetadata.struct_class = Types::TraceMetadata

    TraceMetadataAttributeMap.key = Shapes::ShapeRef.new(shape: String)
    TraceMetadataAttributeMap.value = Shapes::ShapeRef.new(shape: String)

    TraceMetadataList.member = Shapes::ShapeRef.new(shape: TraceMetadata)

    UpdateAccessProfileInput.add_member(:space_id, Shapes::ShapeRef.new(shape: SpaceId, required: true, location_name: "spaceId"))
    UpdateAccessProfileInput.add_member(:profile_id, Shapes::ShapeRef.new(shape: ProfileId, required: true, location_name: "profileId"))
    UpdateAccessProfileInput.add_member(:name, Shapes::ShapeRef.new(shape: AccessProfileName, location_name: "name"))
    UpdateAccessProfileInput.add_member(:description, Shapes::ShapeRef.new(shape: UpdateAccessProfileInputDescriptionString, location_name: "description"))
    UpdateAccessProfileInput.struct_class = Types::UpdateAccessProfileInput

    UpdateAccessProfileOutput.add_member(:access_profile, Shapes::ShapeRef.new(shape: AccessProfile, required: true, location_name: "accessProfile"))
    UpdateAccessProfileOutput.struct_class = Types::UpdateAccessProfileOutput

    UpdateAlertInput.add_member(:space_id, Shapes::ShapeRef.new(shape: SpaceId, required: true, location_name: "spaceId"))
    UpdateAlertInput.add_member(:alert_id, Shapes::ShapeRef.new(shape: AlertId, required: true, location_name: "alertId"))
    UpdateAlertInput.add_member(:profile_id, Shapes::ShapeRef.new(shape: ProfileId, location_name: "profileId"))
    UpdateAlertInput.add_member(:name, Shapes::ShapeRef.new(shape: UpdateAlertInputNameString, location_name: "name"))
    UpdateAlertInput.add_member(:description, Shapes::ShapeRef.new(shape: UpdateAlertInputDescriptionString, location_name: "description"))
    UpdateAlertInput.add_member(:rule, Shapes::ShapeRef.new(shape: Rule, location_name: "rule"))
    UpdateAlertInput.add_member(:notifications_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "notificationsEnabled"))
    UpdateAlertInput.add_member(:notification_rules, Shapes::ShapeRef.new(shape: NotificationRuleList, location_name: "notificationRules"))
    UpdateAlertInput.struct_class = Types::UpdateAlertInput

    UpdateAlertOutput.struct_class = Types::UpdateAlertOutput

    UpdateDomainForOrganizationInput.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location_name: "domainId"))
    UpdateDomainForOrganizationInput.add_member(:name, Shapes::ShapeRef.new(shape: UpdateDomainForOrganizationInputNameString, location_name: "name"))
    UpdateDomainForOrganizationInput.add_member(:identity_providers, Shapes::ShapeRef.new(shape: IdentityProviderList, location_name: "identityProviders"))
    UpdateDomainForOrganizationInput.add_member(:identity_provider_configuration, Shapes::ShapeRef.new(shape: IdentityProviderConfiguration, location_name: "identityProviderConfiguration"))
    UpdateDomainForOrganizationInput.struct_class = Types::UpdateDomainForOrganizationInput

    UpdateDomainForOrganizationOutput.add_member(:organization_domain, Shapes::ShapeRef.new(shape: OrganizationDomain, required: true, location_name: "organizationDomain"))
    UpdateDomainForOrganizationOutput.struct_class = Types::UpdateDomainForOrganizationOutput

    UpdateDomainInput.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location_name: "domainId"))
    UpdateDomainInput.add_member(:name, Shapes::ShapeRef.new(shape: UpdateDomainInputNameString, location_name: "name"))
    UpdateDomainInput.add_member(:identity_providers, Shapes::ShapeRef.new(shape: IdentityProviderList, location_name: "identityProviders"))
    UpdateDomainInput.add_member(:identity_provider_configuration, Shapes::ShapeRef.new(shape: IdentityProviderConfiguration, location_name: "identityProviderConfiguration"))
    UpdateDomainInput.struct_class = Types::UpdateDomainInput

    UpdateDomainOutput.add_member(:domain, Shapes::ShapeRef.new(shape: Domain, required: true, location_name: "domain"))
    UpdateDomainOutput.struct_class = Types::UpdateDomainOutput

    UpdateIntegrationInput.add_member(:identifier, Shapes::ShapeRef.new(shape: IntegrationIdentifier, required: true, location_name: "identifier"))
    UpdateIntegrationInput.add_member(:credential, Shapes::ShapeRef.new(shape: IntegrationCredential, location_name: "credential"))
    UpdateIntegrationInput.add_member(:integration_attributes, Shapes::ShapeRef.new(shape: StringMap, location_name: "integrationAttributes"))
    UpdateIntegrationInput.add_member(:role_arn, Shapes::ShapeRef.new(shape: String, location_name: "roleArn"))
    UpdateIntegrationInput.struct_class = Types::UpdateIntegrationInput

    UpdateIntegrationOutput.add_member(:integration, Shapes::ShapeRef.new(shape: Integration, location_name: "integration"))
    UpdateIntegrationOutput.struct_class = Types::UpdateIntegrationOutput

    UpdateOmniDashboardInput.add_member(:space_id, Shapes::ShapeRef.new(shape: SpaceId, required: true, location_name: "spaceId"))
    UpdateOmniDashboardInput.add_member(:dashboard_id, Shapes::ShapeRef.new(shape: DashboardId, required: true, location_name: "dashboardId"))
    UpdateOmniDashboardInput.add_member(:body, Shapes::ShapeRef.new(shape: UpdateOmniDashboardInputBodyString, location_name: "body"))
    UpdateOmniDashboardInput.add_member(:name, Shapes::ShapeRef.new(shape: UpdateOmniDashboardInputNameString, location_name: "name"))
    UpdateOmniDashboardInput.add_member(:description, Shapes::ShapeRef.new(shape: UpdateOmniDashboardInputDescriptionString, location_name: "description"))
    UpdateOmniDashboardInput.struct_class = Types::UpdateOmniDashboardInput

    UpdateOmniDashboardOutput.add_member(:omni_dashboard, Shapes::ShapeRef.new(shape: OmniDashboard, required: true, location_name: "omniDashboard"))
    UpdateOmniDashboardOutput.struct_class = Types::UpdateOmniDashboardOutput

    UpdateSpaceInput.add_member(:space_id, Shapes::ShapeRef.new(shape: SpaceId, required: true, location_name: "spaceId"))
    UpdateSpaceInput.add_member(:name, Shapes::ShapeRef.new(shape: UpdateSpaceInputNameString, location_name: "name"))
    UpdateSpaceInput.add_member(:encryption_configuration, Shapes::ShapeRef.new(shape: EncryptionConfiguration, location_name: "encryptionConfiguration"))
    UpdateSpaceInput.struct_class = Types::UpdateSpaceInput

    UpdateSpaceOutput.add_member(:space, Shapes::ShapeRef.new(shape: Space, required: true, location_name: "space"))
    UpdateSpaceOutput.struct_class = Types::UpdateSpaceOutput

    UpdateViewRequest.add_member(:name, Shapes::ShapeRef.new(shape: ViewName, required: true, location_name: "name"))
    UpdateViewRequest.add_member(:definition, Shapes::ShapeRef.new(shape: ViewDefinition, location_name: "definition"))
    UpdateViewRequest.add_member(:description, Shapes::ShapeRef.new(shape: ViewDescription, location_name: "description"))
    UpdateViewRequest.struct_class = Types::UpdateViewRequest

    UpdateViewResponse.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    UpdateViewResponse.add_member(:type, Shapes::ShapeRef.new(shape: ViewType, required: true, location_name: "type"))
    UpdateViewResponse.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    UpdateViewResponse.add_member(:definition, Shapes::ShapeRef.new(shape: String, required: true, location_name: "definition"))
    UpdateViewResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    UpdateViewResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    UpdateViewResponse.add_member(:arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "arn"))
    UpdateViewResponse.struct_class = Types::UpdateViewResponse

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationException.add_member(:error_code, Shapes::ShapeRef.new(shape: String, location_name: "errorCode"))
    ValidationException.struct_class = Types::ValidationException

    ViewSummary.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    ViewSummary.add_member(:type, Shapes::ShapeRef.new(shape: ViewType, required: true, location_name: "type"))
    ViewSummary.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    ViewSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    ViewSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    ViewSummary.struct_class = Types::ViewSummary

    ViewSummaryList.member = Shapes::ShapeRef.new(shape: ViewSummary)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2025-01-01"

      api.metadata = {
        "apiVersion" => "2025-01-01",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "cloudwatch-omni",
        "protocol" => "smithy-rpc-v2-cbor",
        "protocols" => ["smithy-rpc-v2-cbor"],
        "serviceFullName" => "CloudWatch Omni",
        "serviceId" => "CloudWatchOmni",
        "signatureVersion" => "v4",
        "signingName" => "cloudwatch",
        "targetPrefix" => "CloudWatchOmniFrontend",
        "uid" => "cloudwatchomni-2025-01-01",
      }

      api.add_operation(:create_access_grant, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAccessGrant"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateAccessGrantInput)
        o.output = Shapes::ShapeRef.new(shape: CreateAccessGrantOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_access_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAccessProfile"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateAccessProfileInput)
        o.output = Shapes::ShapeRef.new(shape: CreateAccessProfileOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_alert, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAlert"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateAlertInput)
        o.output = Shapes::ShapeRef.new(shape: CreateAlertOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_domain, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDomain"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateDomainInput)
        o.output = Shapes::ShapeRef.new(shape: CreateDomainOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_domain_access_grant_for_organization, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDomainAccessGrantForOrganization"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateDomainAccessGrantForOrganizationInput)
        o.output = Shapes::ShapeRef.new(shape: CreateDomainAccessGrantForOrganizationOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_domain_for_organization, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDomainForOrganization"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateDomainForOrganizationInput)
        o.output = Shapes::ShapeRef.new(shape: CreateDomainForOrganizationOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:create_integration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateIntegration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateIntegrationInput)
        o.output = Shapes::ShapeRef.new(shape: CreateIntegrationOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:create_omni_dashboard, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateOmniDashboard"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateOmniDashboardInput)
        o.output = Shapes::ShapeRef.new(shape: CreateOmniDashboardOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_one_time_deep_link_code, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateOneTimeDeepLinkCode"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateOneTimeDeepLinkCodeInput)
        o.output = Shapes::ShapeRef.new(shape: CreateOneTimeDeepLinkCodeOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_space, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateSpace"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateSpaceInput)
        o.output = Shapes::ShapeRef.new(shape: CreateSpaceOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_view, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateView"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateViewRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateViewResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_access_grant, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAccessGrant"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteAccessGrantInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteAccessGrantOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_access_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAccessProfile"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteAccessProfileInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteAccessProfileOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_alert, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAlert"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteAlertInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteAlertOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_domain, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDomain"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteDomainInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteDomainOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_domain_access_grant_for_organization, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDomainAccessGrantForOrganization"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteDomainAccessGrantForOrganizationInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteDomainAccessGrantForOrganizationOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_domain_for_organization, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDomainForOrganization"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteDomainForOrganizationInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteDomainForOrganizationOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_integration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteIntegration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteIntegrationInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteIntegrationOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_omni_dashboard, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteOmniDashboard"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteOmniDashboardInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteOmniDashboardOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_space, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteSpace"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteSpaceInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteSpaceOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_view, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteView"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteViewRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteViewResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_access_grant, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAccessGrant"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetAccessGrantInput)
        o.output = Shapes::ShapeRef.new(shape: GetAccessGrantOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_access_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAccessProfile"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetAccessProfileInput)
        o.output = Shapes::ShapeRef.new(shape: GetAccessProfileOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_alert, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAlert"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetAlertInput)
        o.output = Shapes::ShapeRef.new(shape: GetAlertOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_context_graph, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetContextGraph"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetContextGraphInput)
        o.output = Shapes::ShapeRef.new(shape: GetContextGraphOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_domain, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDomain"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetDomainInput)
        o.output = Shapes::ShapeRef.new(shape: GetDomainOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_domain_access_grant_for_organization, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDomainAccessGrantForOrganization"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetDomainAccessGrantForOrganizationInput)
        o.output = Shapes::ShapeRef.new(shape: GetDomainAccessGrantForOrganizationOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_domain_for_organization, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDomainForOrganization"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetDomainForOrganizationInput)
        o.output = Shapes::ShapeRef.new(shape: GetDomainForOrganizationOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_integration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetIntegration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetIntegrationInput)
        o.output = Shapes::ShapeRef.new(shape: GetIntegrationOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_intelligence_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetIntelligenceConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetIntelligenceConfigurationInput)
        o.output = Shapes::ShapeRef.new(shape: GetIntelligenceConfigurationOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_omni_dashboard, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetOmniDashboard"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetOmniDashboardInput)
        o.output = Shapes::ShapeRef.new(shape: GetOmniDashboardOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_space, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSpace"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetSpaceInput)
        o.output = Shapes::ShapeRef.new(shape: GetSpaceOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_space_credentials_for_organization, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSpaceCredentialsForOrganization"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetSpaceCredentialsForOrganizationInput)
        o.output = Shapes::ShapeRef.new(shape: GetSpaceCredentialsForOrganizationOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_telemetry_query_results, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTelemetryQueryResults"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetTelemetryQueryResultsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetTelemetryQueryResultsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_view, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetView"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetViewRequest)
        o.output = Shapes::ShapeRef.new(shape: GetViewResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:list_access_grants, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAccessGrants"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListAccessGrantsInput)
        o.output = Shapes::ShapeRef.new(shape: ListAccessGrantsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_access_profiles, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAccessProfiles"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListAccessProfilesInput)
        o.output = Shapes::ShapeRef.new(shape: ListAccessProfilesOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_alerts, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAlerts"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListAlertsInput)
        o.output = Shapes::ShapeRef.new(shape: ListAlertsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_domain_access_grants_for_organization, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDomainAccessGrantsForOrganization"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListDomainAccessGrantsForOrganizationInput)
        o.output = Shapes::ShapeRef.new(shape: ListDomainAccessGrantsForOrganizationOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_domains, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDomains"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListDomainsInput)
        o.output = Shapes::ShapeRef.new(shape: ListDomainsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_integrations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListIntegrations"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListIntegrationsInput)
        o.output = Shapes::ShapeRef.new(shape: ListIntegrationsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_omni_dashboards, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListOmniDashboards"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListOmniDashboardsInput)
        o.output = Shapes::ShapeRef.new(shape: ListOmniDashboardsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_spaces, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSpaces"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListSpacesInput)
        o.output = Shapes::ShapeRef.new(shape: ListSpacesOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_spaces_for_organization, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSpacesForOrganization"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListSpacesForOrganizationInput)
        o.output = Shapes::ShapeRef.new(shape: ListSpacesForOrganizationOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_telemetry_fields, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTelemetryFields"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTelemetryFieldsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTelemetryFieldsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_telemetry_query_sessions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTelemetryQuerySessions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTelemetryQuerySessionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTelemetryQuerySessionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_views, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListViews"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListViewsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListViewsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:put_intelligence_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutIntelligenceConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutIntelligenceConfigurationInput)
        o.output = Shapes::ShapeRef.new(shape: PutIntelligenceConfigurationOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:search_principals, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SearchPrincipals"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SearchPrincipalsInput)
        o.output = Shapes::ShapeRef.new(shape: SearchPrincipalsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:start_telemetry_query, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartTelemetryQuery"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartTelemetryQueryRequest)
        o.output = Shapes::ShapeRef.new(shape: StartTelemetryQueryResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:start_telemetry_query_session, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartTelemetryQuerySession"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartTelemetryQuerySessionRequest)
        o.output = Shapes::ShapeRef.new(shape: StartTelemetryQuerySessionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:stop_telemetry_query, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopTelemetryQuery"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StopTelemetryQueryRequest)
        o.output = Shapes::ShapeRef.new(shape: StopTelemetryQueryResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:stop_telemetry_query_session, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopTelemetryQuerySession"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StopTelemetryQuerySessionRequest)
        o.output = Shapes::ShapeRef.new(shape: StopTelemetryQuerySessionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_access_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateAccessProfile"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateAccessProfileInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateAccessProfileOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:update_alert, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateAlert"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateAlertInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateAlertOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:update_domain, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateDomain"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateDomainInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateDomainOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:update_domain_for_organization, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateDomainForOrganization"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateDomainForOrganizationInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateDomainForOrganizationOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:update_integration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateIntegration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateIntegrationInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateIntegrationOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_omni_dashboard, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateOmniDashboard"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateOmniDashboardInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateOmniDashboardOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:update_space, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateSpace"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateSpaceInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateSpaceOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:update_view, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateView"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateViewRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateViewResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)
    end

  end
end
