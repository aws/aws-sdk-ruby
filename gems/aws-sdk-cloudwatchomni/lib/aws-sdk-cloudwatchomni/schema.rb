# frozen_string_literal: true

# This is generated code!

module Aws::CloudWatchOmni
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccessGrant = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#AccessGrant", name: "AccessGrant")
    AccessGrantPermission = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudwatchomni#AccessGrantPermission", name: "AccessGrantPermission")
    AccessGrantPrincipal = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#AccessGrantPrincipal", name: "AccessGrantPrincipal")
    AccessGrantPrincipalAttribute = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#AccessGrantPrincipalAttribute", name: "AccessGrantPrincipalAttribute")
    AccessGrantPrincipalAttributeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchomni#AccessGrantPrincipalAttributeList", name: "AccessGrantPrincipalAttributeList", traits: {"smithy.api#length" => {"max" => 10}})
    AccessGrantPrincipalType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudwatchomni#AccessGrantPrincipalType", name: "AccessGrantPrincipalType")
    AccessGrantSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#AccessGrantSummary", name: "AccessGrantSummary")
    AccessGrantSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchomni#AccessGrantSummaryList", name: "AccessGrantSummaryList")
    AccessGrantType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudwatchomni#AccessGrantType", name: "AccessGrantType")
    AccessKeyId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchomni#AccessKeyId", name: "AccessKeyId", traits: {"smithy.api#sensitive" => {}})
    AccessProfile = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#AccessProfile", name: "AccessProfile")
    AccessProfileName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchomni#AccessProfileName", name: "AccessProfileName", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9 _.:/=+@-]+$"})
    AccessProfileSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#AccessProfileSummary", name: "AccessProfileSummary")
    AccessProfileSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchomni#AccessProfileSummaryList", name: "AccessProfileSummaryList")
    AccessProfileType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudwatchomni#AccessProfileType", name: "AccessProfileType")
    AccountId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchomni#AccountId", name: "AccountId", traits: {"smithy.api#length" => {"min" => 12, "max" => 12}, "smithy.api#pattern" => "^[0-9]{12}$"})
    Alert = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#Alert", name: "Alert")
    AlertCondition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#AlertCondition", name: "AlertCondition")
    AlertEvaluation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#AlertEvaluation", name: "AlertEvaluation")
    AlertFilterCriteria = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#AlertFilterCriteria", name: "AlertFilterCriteria")
    AlertId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchomni#AlertId", name: "AlertId", traits: {"smithy.api#length" => {"min" => 32, "max" => 32}, "smithy.api#pattern" => "^[0-9a-f]{32}$"})
    AlertIdFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchomni#AlertIdFilterList", name: "AlertIdFilterList", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    AlertNameFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchomni#AlertNameFilterList", name: "AlertNameFilterList", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    AlertRuleQuery = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#AlertRuleQuery", name: "AlertRuleQuery")
    AlertSortField = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudwatchomni#AlertSortField", name: "AlertSortField")
    AlertSortOrder = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudwatchomni#AlertSortOrder", name: "AlertSortOrder")
    AlertState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudwatchomni#AlertState", name: "AlertState")
    AlertStateData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#AlertStateData", name: "AlertStateData")
    AlertStateInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#AlertStateInfo", name: "AlertStateInfo")
    AlertStateList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchomni#AlertStateList", name: "AlertStateList", traits: {"smithy.api#length" => {"max" => 4}})
    AlertSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#AlertSummary", name: "AlertSummary")
    AlertSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchomni#AlertSummaryList", name: "AlertSummaryList")
    ApiKeyCredential = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#ApiKeyCredential", name: "ApiKeyCredential", traits: {"smithy.api#sensitive" => {}})
    Arn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchomni#Arn", name: "Arn", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^arn:.+$"})
    AssumeStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudwatchomni#AssumeStatus", name: "AssumeStatus")
    AuthType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudwatchomni#AuthType", name: "AuthType")
    AwsCredentials = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#AwsCredentials", name: "AwsCredentials", traits: {"smithy.api#sensitive" => {}})
    ClientToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchomni#ClientToken", name: "ClientToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[!-~]+$"})
    Comparator = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudwatchomni#Comparator", name: "Comparator")
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ContextConditionsMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.cloudwatchomni#ContextConditionsMap", name: "ContextConditionsMap", traits: {"smithy.api#length" => {"max" => 10}})
    ContextGraphAttributeMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.cloudwatchomni#ContextGraphAttributeMap", name: "ContextGraphAttributeMap", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    ContextGraphId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchomni#ContextGraphId", name: "ContextGraphId", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    ContextGraphName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchomni#ContextGraphName", name: "ContextGraphName", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}})
    ContributorSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#ContributorSummary", name: "ContributorSummary")
    CreateAccessGrantInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#CreateAccessGrantInput", name: "CreateAccessGrantInput")
    CreateAccessGrantOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#CreateAccessGrantOutput", name: "CreateAccessGrantOutput")
    CreateAccessProfileInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#CreateAccessProfileInput", name: "CreateAccessProfileInput")
    CreateAccessProfileOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#CreateAccessProfileOutput", name: "CreateAccessProfileOutput")
    CreateAlertInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#CreateAlertInput", name: "CreateAlertInput")
    CreateAlertOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#CreateAlertOutput", name: "CreateAlertOutput")
    CreateDomainAccessGrantForOrganizationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#CreateDomainAccessGrantForOrganizationInput", name: "CreateDomainAccessGrantForOrganizationInput")
    CreateDomainAccessGrantForOrganizationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#CreateDomainAccessGrantForOrganizationOutput", name: "CreateDomainAccessGrantForOrganizationOutput")
    CreateDomainForOrganizationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#CreateDomainForOrganizationInput", name: "CreateDomainForOrganizationInput")
    CreateDomainForOrganizationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#CreateDomainForOrganizationOutput", name: "CreateDomainForOrganizationOutput")
    CreateDomainInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#CreateDomainInput", name: "CreateDomainInput")
    CreateDomainOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#CreateDomainOutput", name: "CreateDomainOutput")
    CreateIntegrationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#CreateIntegrationInput", name: "CreateIntegrationInput")
    CreateIntegrationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#CreateIntegrationOutput", name: "CreateIntegrationOutput")
    CreateOmniDashboardInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#CreateOmniDashboardInput", name: "CreateOmniDashboardInput")
    CreateOmniDashboardOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#CreateOmniDashboardOutput", name: "CreateOmniDashboardOutput")
    CreateOneTimeDeepLinkCodeInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#CreateOneTimeDeepLinkCodeInput", name: "CreateOneTimeDeepLinkCodeInput")
    CreateOneTimeDeepLinkCodeOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#CreateOneTimeDeepLinkCodeOutput", name: "CreateOneTimeDeepLinkCodeOutput")
    CreateSpaceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#CreateSpaceInput", name: "CreateSpaceInput")
    CreateSpaceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#CreateSpaceOutput", name: "CreateSpaceOutput")
    CreateViewRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#CreateViewRequest", name: "CreateViewRequest")
    CreateViewResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#CreateViewResponse", name: "CreateViewResponse")
    DashboardId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchomni#DashboardId", name: "DashboardId", traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$"})
    DeepLinkCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchomni#DeepLinkCode", name: "DeepLinkCode", traits: {"smithy.api#sensitive" => {}})
    DeepLinkUrl = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchomni#DeepLinkUrl", name: "DeepLinkUrl", traits: {"smithy.api#sensitive" => {}})
    DeleteAccessGrantInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#DeleteAccessGrantInput", name: "DeleteAccessGrantInput")
    DeleteAccessGrantOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#DeleteAccessGrantOutput", name: "DeleteAccessGrantOutput")
    DeleteAccessProfileInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#DeleteAccessProfileInput", name: "DeleteAccessProfileInput")
    DeleteAccessProfileOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#DeleteAccessProfileOutput", name: "DeleteAccessProfileOutput")
    DeleteAlertInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#DeleteAlertInput", name: "DeleteAlertInput")
    DeleteAlertOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#DeleteAlertOutput", name: "DeleteAlertOutput")
    DeleteDomainAccessGrantForOrganizationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#DeleteDomainAccessGrantForOrganizationInput", name: "DeleteDomainAccessGrantForOrganizationInput")
    DeleteDomainAccessGrantForOrganizationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#DeleteDomainAccessGrantForOrganizationOutput", name: "DeleteDomainAccessGrantForOrganizationOutput")
    DeleteDomainForOrganizationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#DeleteDomainForOrganizationInput", name: "DeleteDomainForOrganizationInput")
    DeleteDomainForOrganizationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#DeleteDomainForOrganizationOutput", name: "DeleteDomainForOrganizationOutput")
    DeleteDomainInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#DeleteDomainInput", name: "DeleteDomainInput")
    DeleteDomainOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#DeleteDomainOutput", name: "DeleteDomainOutput")
    DeleteIntegrationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#DeleteIntegrationInput", name: "DeleteIntegrationInput")
    DeleteIntegrationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#DeleteIntegrationOutput", name: "DeleteIntegrationOutput")
    DeleteOmniDashboardInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#DeleteOmniDashboardInput", name: "DeleteOmniDashboardInput")
    DeleteOmniDashboardOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#DeleteOmniDashboardOutput", name: "DeleteOmniDashboardOutput")
    DeleteSpaceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#DeleteSpaceInput", name: "DeleteSpaceInput")
    DeleteSpaceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#DeleteSpaceOutput", name: "DeleteSpaceOutput")
    DeleteViewRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#DeleteViewRequest", name: "DeleteViewRequest")
    DeleteViewResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#DeleteViewResponse", name: "DeleteViewResponse")
    Domain = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#Domain", name: "Domain")
    DomainId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchomni#DomainId", name: "DomainId", traits: {"smithy.api#pattern" => "^d-[0-9a-z]{1,25}$"})
    DomainStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudwatchomni#DomainStatus", name: "DomainStatus")
    DomainSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#DomainSummary", name: "DomainSummary")
    DomainSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchomni#DomainSummaryList", name: "DomainSummaryList")
    Edge = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#Edge", name: "Edge")
    EdgeFilters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#EdgeFilters", name: "EdgeFilters")
    EdgeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchomni#EdgeList", name: "EdgeList", traits: {"smithy.api#length" => {"min" => 0, "max" => 5000}})
    EdgeProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#EdgeProperties", name: "EdgeProperties")
    EdgeTrafficStats = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#EdgeTrafficStats", name: "EdgeTrafficStats")
    EdgeType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudwatchomni#EdgeType", name: "EdgeType")
    EncryptionConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#EncryptionConfiguration", name: "EncryptionConfiguration")
    EncryptionStrategy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudwatchomni#EncryptionStrategy", name: "EncryptionStrategy")
    Field = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#Field", name: "Field")
    FieldList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchomni#FieldList", name: "FieldList")
    GetAccessGrantInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#GetAccessGrantInput", name: "GetAccessGrantInput")
    GetAccessGrantOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#GetAccessGrantOutput", name: "GetAccessGrantOutput")
    GetAccessProfileInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#GetAccessProfileInput", name: "GetAccessProfileInput")
    GetAccessProfileOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#GetAccessProfileOutput", name: "GetAccessProfileOutput")
    GetAlertInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#GetAlertInput", name: "GetAlertInput")
    GetAlertOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#GetAlertOutput", name: "GetAlertOutput")
    GetContextGraphInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#GetContextGraphInput", name: "GetContextGraphInput")
    GetContextGraphOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#GetContextGraphOutput", name: "GetContextGraphOutput")
    GetDomainAccessGrantForOrganizationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#GetDomainAccessGrantForOrganizationInput", name: "GetDomainAccessGrantForOrganizationInput")
    GetDomainAccessGrantForOrganizationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#GetDomainAccessGrantForOrganizationOutput", name: "GetDomainAccessGrantForOrganizationOutput")
    GetDomainForOrganizationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#GetDomainForOrganizationInput", name: "GetDomainForOrganizationInput")
    GetDomainForOrganizationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#GetDomainForOrganizationOutput", name: "GetDomainForOrganizationOutput")
    GetDomainInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#GetDomainInput", name: "GetDomainInput")
    GetDomainOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#GetDomainOutput", name: "GetDomainOutput")
    GetIntegrationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#GetIntegrationInput", name: "GetIntegrationInput")
    GetIntegrationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#GetIntegrationOutput", name: "GetIntegrationOutput")
    GetIntelligenceConfigurationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#GetIntelligenceConfigurationInput", name: "GetIntelligenceConfigurationInput")
    GetIntelligenceConfigurationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#GetIntelligenceConfigurationOutput", name: "GetIntelligenceConfigurationOutput")
    GetOmniDashboardInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#GetOmniDashboardInput", name: "GetOmniDashboardInput")
    GetOmniDashboardOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#GetOmniDashboardOutput", name: "GetOmniDashboardOutput")
    GetSpaceCredentialsForOrganizationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#GetSpaceCredentialsForOrganizationInput", name: "GetSpaceCredentialsForOrganizationInput")
    GetSpaceCredentialsForOrganizationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#GetSpaceCredentialsForOrganizationOutput", name: "GetSpaceCredentialsForOrganizationOutput")
    GetSpaceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#GetSpaceInput", name: "GetSpaceInput")
    GetSpaceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#GetSpaceOutput", name: "GetSpaceOutput")
    GetTelemetryQueryResultsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#GetTelemetryQueryResultsRequest", name: "GetTelemetryQueryResultsRequest")
    GetTelemetryQueryResultsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#GetTelemetryQueryResultsResponse", name: "GetTelemetryQueryResultsResponse")
    GetViewRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#GetViewRequest", name: "GetViewRequest")
    GetViewResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#GetViewResponse", name: "GetViewResponse")
    GrantId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchomni#GrantId", name: "GrantId", traits: {"smithy.api#pattern" => "^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$"})
    IamRoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchomni#IamRoleArn", name: "IamRoleArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:aws[a-zA-Z-]*:iam::[0-9]{12}:role/.+$"})
    IdentityCenterConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#IdentityCenterConfiguration", name: "IdentityCenterConfiguration")
    IdentityCenterInstanceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchomni#IdentityCenterInstanceArn", name: "IdentityCenterInstanceArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^arn:aws[a-z-]*:sso:::instance/[a-zA-Z0-9-]+$"})
    IdentityProvider = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudwatchomni#IdentityProvider", name: "IdentityProvider")
    IdentityProviderConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#IdentityProviderConfiguration", name: "IdentityProviderConfiguration")
    IdentityProviderList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchomni#IdentityProviderList", name: "IdentityProviderList", traits: {"smithy.api#length" => {"min" => 1, "max" => 2}, "smithy.api#uniqueItems" => {}})
    Integration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#Integration", name: "Integration")
    IntegrationArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchomni#IntegrationArn", name: "IntegrationArn")
    IntegrationCredential = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.cloudwatchomni#IntegrationCredential", name: "IntegrationCredential")
    IntegrationIdentifier = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.cloudwatchomni#IntegrationIdentifier", name: "IntegrationIdentifier")
    IntegrationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchomni#IntegrationList", name: "IntegrationList")
    IntegrationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudwatchomni#IntegrationStatus", name: "IntegrationStatus")
    IntegrationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudwatchomni#IntegrationType", name: "IntegrationType")
    IntelligenceKmsKeyArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchomni#IntelligenceKmsKeyArn", name: "IntelligenceKmsKeyArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^arn:(aws|aws-cn|aws-us-gov):kms:[a-z0-9-]+:[0-9]{12}:key/(?:mrk-)?[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$"})
    IntelligenceTagMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.cloudwatchomni#IntelligenceTagMap", name: "IntelligenceTagMap", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500, "smithy.api#retryable" => {}})
    KeyFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#KeyFilter", name: "KeyFilter")
    KeyFilterKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchomni#KeyFilterKey", name: "KeyFilterKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    KeyFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchomni#KeyFilterList", name: "KeyFilterList", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    KeyFilterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchomni#KeyFilterValue", name: "KeyFilterValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 259}})
    KeyFilterValues = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchomni#KeyFilterValues", name: "KeyFilterValues", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    KmsKeyArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchomni#KmsKeyArn", name: "KmsKeyArn", traits: {"smithy.api#pattern" => "^arn:aws[a-zA-Z-]*:kms:[a-z0-9-]+:[0-9]{12}:key/(mrk-)?[a-f0-9-]+$"})
    ListAccessGrantsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#ListAccessGrantsInput", name: "ListAccessGrantsInput")
    ListAccessGrantsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#ListAccessGrantsOutput", name: "ListAccessGrantsOutput")
    ListAccessProfilesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#ListAccessProfilesInput", name: "ListAccessProfilesInput")
    ListAccessProfilesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#ListAccessProfilesOutput", name: "ListAccessProfilesOutput")
    ListAlertsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#ListAlertsInput", name: "ListAlertsInput")
    ListAlertsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#ListAlertsOutput", name: "ListAlertsOutput")
    ListDomainAccessGrantsForOrganizationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#ListDomainAccessGrantsForOrganizationInput", name: "ListDomainAccessGrantsForOrganizationInput")
    ListDomainAccessGrantsForOrganizationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#ListDomainAccessGrantsForOrganizationOutput", name: "ListDomainAccessGrantsForOrganizationOutput")
    ListDomainsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#ListDomainsInput", name: "ListDomainsInput")
    ListDomainsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#ListDomainsOutput", name: "ListDomainsOutput")
    ListIntegrationsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#ListIntegrationsInput", name: "ListIntegrationsInput")
    ListIntegrationsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#ListIntegrationsOutput", name: "ListIntegrationsOutput")
    ListOmniDashboardsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#ListOmniDashboardsInput", name: "ListOmniDashboardsInput")
    ListOmniDashboardsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#ListOmniDashboardsOutput", name: "ListOmniDashboardsOutput")
    ListSpacesForOrganizationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#ListSpacesForOrganizationInput", name: "ListSpacesForOrganizationInput")
    ListSpacesForOrganizationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#ListSpacesForOrganizationOutput", name: "ListSpacesForOrganizationOutput")
    ListSpacesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#ListSpacesInput", name: "ListSpacesInput")
    ListSpacesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#ListSpacesOutput", name: "ListSpacesOutput")
    ListTelemetryFieldsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#ListTelemetryFieldsRequest", name: "ListTelemetryFieldsRequest")
    ListTelemetryFieldsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#ListTelemetryFieldsResponse", name: "ListTelemetryFieldsResponse")
    ListTelemetryQuerySessionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#ListTelemetryQuerySessionsRequest", name: "ListTelemetryQuerySessionsRequest")
    ListTelemetryQuerySessionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#ListTelemetryQuerySessionsResponse", name: "ListTelemetryQuerySessionsResponse")
    ListViewsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#ListViewsRequest", name: "ListViewsRequest")
    ListViewsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#ListViewsResponse", name: "ListViewsResponse")
    LogMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#LogMetadata", name: "LogMetadata")
    LogMetadataAttributeMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.cloudwatchomni#LogMetadataAttributeMap", name: "LogMetadataAttributeMap", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    LogMetadataList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchomni#LogMetadataList", name: "LogMetadataList", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    Metadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#Metadata", name: "Metadata")
    MetadataAttributeMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.cloudwatchomni#MetadataAttributeMap", name: "MetadataAttributeMap", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    MetricMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#MetricMetadata", name: "MetricMetadata")
    MetricMetadataList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchomni#MetricMetadataList", name: "MetricMetadataList", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    MetricSemantics = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#MetricSemantics", name: "MetricSemantics")
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchomni#NextToken", name: "NextToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    NoData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#NoData", name: "NoData")
    Node = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#Node", name: "Node")
    NodeCategory = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudwatchomni#NodeCategory", name: "NodeCategory")
    NodeCategorySet = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchomni#NodeCategorySet", name: "NodeCategorySet", traits: {"smithy.api#length" => {"min" => 0, "max" => 4}})
    NodeFilters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#NodeFilters", name: "NodeFilters")
    NodeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchomni#NodeList", name: "NodeList", traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}})
    NodeProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#NodeProperties", name: "NodeProperties")
    NodeSemantics = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#NodeSemantics", name: "NodeSemantics")
    NodeType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudwatchomni#NodeType", name: "NodeType")
    NotificationRule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#NotificationRule", name: "NotificationRule")
    NotificationRuleList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchomni#NotificationRuleList", name: "NotificationRuleList", traits: {"smithy.api#length" => {"min" => 0, "max" => 5}})
    NotificationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudwatchomni#NotificationStatus", name: "NotificationStatus")
    NotificationTarget = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#NotificationTarget", name: "NotificationTarget")
    NotificationTargetMetadata = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.cloudwatchomni#NotificationTargetMetadata", name: "NotificationTargetMetadata")
    NotificationTargetType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudwatchomni#NotificationTargetType", name: "NotificationTargetType")
    NotificationTrigger = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#NotificationTrigger", name: "NotificationTrigger")
    OAuthClientCredential = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#OAuthClientCredential", name: "OAuthClientCredential", traits: {"smithy.api#sensitive" => {}})
    OAuthCodeCredential = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#OAuthCodeCredential", name: "OAuthCodeCredential", traits: {"smithy.api#sensitive" => {}})
    OmniDashboard = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#OmniDashboard", name: "OmniDashboard")
    OmniDashboardSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#OmniDashboardSummary", name: "OmniDashboardSummary")
    OmniDashboardSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchomni#OmniDashboardSummaryList", name: "OmniDashboardSummaryList")
    OperationDetails = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.cloudwatchomni#OperationDetails", name: "OperationDetails", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    OperationIdentifierKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchomni#OperationIdentifierKey", name: "OperationIdentifierKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    OperationIdentifierSet = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.cloudwatchomni#OperationIdentifierSet", name: "OperationIdentifierSet", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    OperationIdentifierSets = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchomni#OperationIdentifierSets", name: "OperationIdentifierSets", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    OperationIdentifierValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchomni#OperationIdentifierValue", name: "OperationIdentifierValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    OperationName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchomni#OperationName", name: "OperationName", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    OrganizationAccessGrant = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#OrganizationAccessGrant", name: "OrganizationAccessGrant")
    OrganizationAccessGrantPrincipal = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#OrganizationAccessGrantPrincipal", name: "OrganizationAccessGrantPrincipal")
    OrganizationAccessGrantSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#OrganizationAccessGrantSummary", name: "OrganizationAccessGrantSummary")
    OrganizationAccessGrantSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchomni#OrganizationAccessGrantSummaryList", name: "OrganizationAccessGrantSummaryList")
    OrganizationCredentialType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudwatchomni#OrganizationCredentialType", name: "OrganizationCredentialType")
    OrganizationDomain = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#OrganizationDomain", name: "OrganizationDomain")
    OrganizationGrantPermission = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudwatchomni#OrganizationGrantPermission", name: "OrganizationGrantPermission")
    OrganizationGrantPrincipalType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudwatchomni#OrganizationGrantPrincipalType", name: "OrganizationGrantPrincipalType")
    OrganizationPrincipalId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchomni#OrganizationPrincipalId", name: "OrganizationPrincipalId", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9:/_+=,.@-]*$"})
    PaginationToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchomni#PaginationToken", name: "PaginationToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    PartialResults = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#PartialResults", name: "PartialResults")
    PrincipalId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchomni#PrincipalId", name: "PrincipalId", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9:/_+=,.@-]*$"})
    PrincipalSearchResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#PrincipalSearchResult", name: "PrincipalSearchResult")
    PrincipalSearchResultList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchomni#PrincipalSearchResultList", name: "PrincipalSearchResultList")
    PrincipalType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudwatchomni#PrincipalType", name: "PrincipalType")
    ProfileId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchomni#ProfileId", name: "ProfileId", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9_-]+$"})
    PutIntelligenceConfigurationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#PutIntelligenceConfigurationInput", name: "PutIntelligenceConfigurationInput")
    PutIntelligenceConfigurationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#PutIntelligenceConfigurationOutput", name: "PutIntelligenceConfigurationOutput")
    QueryLanguage = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudwatchomni#QueryLanguage", name: "QueryLanguage")
    QueryStatistics = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#QueryStatistics", name: "QueryStatistics")
    QueryStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudwatchomni#QueryStatus", name: "QueryStatus")
    ResourceArnList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchomni#ResourceArnList", name: "ResourceArnList", traits: {"smithy.api#length" => {"max" => 5}})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceScope = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#ResourceScope", name: "ResourceScope")
    ResourceScopeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchomni#ResourceScopeList", name: "ResourceScopeList", traits: {"smithy.api#length" => {"max" => 10}})
    ResourceScopeTagMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.cloudwatchomni#ResourceScopeTagMap", name: "ResourceScopeTagMap", traits: {"smithy.api#length" => {"max" => 3}})
    Row = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.cloudwatchomni#Row", name: "Row")
    RowList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchomni#RowList", name: "RowList")
    RowScope = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#RowScope", name: "RowScope")
    RowScopeGroup = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchomni#RowScopeGroup", name: "RowScopeGroup", traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    RowScopeGroupList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchomni#RowScopeGroupList", name: "RowScopeGroupList", traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    RowScopeOperator = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudwatchomni#RowScopeOperator", name: "RowScopeOperator")
    RowScopeValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchomni#RowScopeValue", name: "RowScopeValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    RowScopeValueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchomni#RowScopeValueList", name: "RowScopeValueList", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#uniqueItems" => {}})
    Rule = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.cloudwatchomni#Rule", name: "Rule")
    Scope = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudwatchomni#Scope", name: "Scope")
    ScopedActionName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchomni#ScopedActionName", name: "ScopedActionName", traits: {"smithy.api#length" => {"min" => 3, "max" => 256}, "smithy.api#pattern" => "^[a-z0-9][a-z0-9-]*:[A-Za-z][A-Za-z0-9]*$"})
    ScopedActionNameList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchomni#ScopedActionNameList", name: "ScopedActionNameList", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    ScopedActions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#ScopedActions", name: "ScopedActions")
    ScopedActionsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchomni#ScopedActionsList", name: "ScopedActionsList", traits: {"smithy.api#length" => {"max" => 20}})
    SearchPrincipalsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#SearchPrincipalsInput", name: "SearchPrincipalsInput")
    SearchPrincipalsNextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchomni#SearchPrincipalsNextToken", name: "SearchPrincipalsNextToken")
    SearchPrincipalsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#SearchPrincipalsOutput", name: "SearchPrincipalsOutput")
    SecretAccessKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchomni#SecretAccessKey", name: "SecretAccessKey", traits: {"smithy.api#sensitive" => {}})
    SensitiveString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchomni#SensitiveString", name: "SensitiveString", traits: {"smithy.api#sensitive" => {}})
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    SessionSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#SessionSummary", name: "SessionSummary")
    SessionSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchomni#SessionSummaryList", name: "SessionSummaryList")
    SessionToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchomni#SessionToken", name: "SessionToken", traits: {"smithy.api#sensitive" => {}})
    Signal = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudwatchomni#Signal", name: "Signal")
    SignalSet = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchomni#SignalSet", name: "SignalSet", traits: {"smithy.api#length" => {"min" => 0, "max" => 5}})
    SignalType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudwatchomni#SignalType", name: "SignalType")
    SignalTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchomni#SignalTypeList", name: "SignalTypeList", traits: {"smithy.api#length" => {"min" => 1, "max" => 3}, "smithy.api#uniqueItems" => {}})
    Source = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudwatchomni#Source", name: "Source")
    SourceSet = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchomni#SourceSet", name: "SourceSet", traits: {"smithy.api#length" => {"min" => 0, "max" => 20}})
    Space = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#Space", name: "Space")
    SpaceCredentialRequestContext = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#SpaceCredentialRequestContext", name: "SpaceCredentialRequestContext")
    SpaceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchomni#SpaceId", name: "SpaceId", traits: {"smithy.api#pattern" => "^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$"})
    SpaceStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudwatchomni#SpaceStatus", name: "SpaceStatus")
    SpaceSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#SpaceSummary", name: "SpaceSummary")
    SpaceSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchomni#SpaceSummaryList", name: "SpaceSummaryList")
    StartTelemetryQueryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#StartTelemetryQueryRequest", name: "StartTelemetryQueryRequest")
    StartTelemetryQueryResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#StartTelemetryQueryResponse", name: "StartTelemetryQueryResponse")
    StartTelemetryQuerySessionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#StartTelemetryQuerySessionRequest", name: "StartTelemetryQuerySessionRequest")
    StartTelemetryQuerySessionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#StartTelemetryQuerySessionResponse", name: "StartTelemetryQuerySessionResponse")
    StopTelemetryQueryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#StopTelemetryQueryRequest", name: "StopTelemetryQueryRequest")
    StopTelemetryQueryResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#StopTelemetryQueryResponse", name: "StopTelemetryQueryResponse")
    StopTelemetryQuerySessionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#StopTelemetryQuerySessionRequest", name: "StopTelemetryQuerySessionRequest")
    StopTelemetryQuerySessionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#StopTelemetryQuerySessionResponse", name: "StopTelemetryQuerySessionResponse")
    StringList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchomni#StringList", name: "StringList")
    StringMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.cloudwatchomni#StringMap", name: "StringMap")
    StringSet = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchomni#StringSet", name: "StringSet", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchomni#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.cloudwatchomni#TagMap", name: "TagMap", traits: {"smithy.api#length" => {"max" => 50}})
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchomni#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    TelemetryRule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#TelemetryRule", name: "TelemetryRule")
    TelemetryType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudwatchomni#TelemetryType", name: "TelemetryType")
    ThresholdMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudwatchomni#ThresholdMode", name: "ThresholdMode")
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429, "smithy.api#retryable" => {"throttling" => true}})
    TraceMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#TraceMetadata", name: "TraceMetadata")
    TraceMetadataAttributeMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.cloudwatchomni#TraceMetadataAttributeMap", name: "TraceMetadataAttributeMap", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    TraceMetadataList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchomni#TraceMetadataList", name: "TraceMetadataList", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    UpdateAccessProfileInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#UpdateAccessProfileInput", name: "UpdateAccessProfileInput")
    UpdateAccessProfileOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#UpdateAccessProfileOutput", name: "UpdateAccessProfileOutput")
    UpdateAlertInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#UpdateAlertInput", name: "UpdateAlertInput")
    UpdateAlertOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#UpdateAlertOutput", name: "UpdateAlertOutput")
    UpdateDomainForOrganizationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#UpdateDomainForOrganizationInput", name: "UpdateDomainForOrganizationInput")
    UpdateDomainForOrganizationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#UpdateDomainForOrganizationOutput", name: "UpdateDomainForOrganizationOutput")
    UpdateDomainInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#UpdateDomainInput", name: "UpdateDomainInput")
    UpdateDomainOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#UpdateDomainOutput", name: "UpdateDomainOutput")
    UpdateIntegrationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#UpdateIntegrationInput", name: "UpdateIntegrationInput")
    UpdateIntegrationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#UpdateIntegrationOutput", name: "UpdateIntegrationOutput")
    UpdateOmniDashboardInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#UpdateOmniDashboardInput", name: "UpdateOmniDashboardInput")
    UpdateOmniDashboardOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#UpdateOmniDashboardOutput", name: "UpdateOmniDashboardOutput")
    UpdateSpaceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#UpdateSpaceInput", name: "UpdateSpaceInput")
    UpdateSpaceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#UpdateSpaceOutput", name: "UpdateSpaceOutput")
    UpdateViewRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#UpdateViewRequest", name: "UpdateViewRequest")
    UpdateViewResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#UpdateViewResponse", name: "UpdateViewResponse")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ViewDefinition = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchomni#ViewDefinition", name: "ViewDefinition", traits: {"smithy.api#length" => {"min" => 1, "max" => 10000}})
    ViewDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchomni#ViewDescription", name: "ViewDescription", traits: {"smithy.api#length" => {"max" => 1024}})
    ViewName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudwatchomni#ViewName", name: "ViewName", traits: {"smithy.api#length" => {"min" => 6, "max" => 256}, "smithy.api#pattern" => "^view\\.[a-z0-9][a-z0-9_-]{0,250}$"})
    ViewSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudwatchomni#ViewSummary", name: "ViewSummary")
    ViewSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudwatchomni#ViewSummaryList", name: "ViewSummaryList")
    ViewType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudwatchomni#ViewType", name: "ViewType")

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    AccessGrant.add_member(:grant_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GrantId, name: "grantId", traits: {"smithy.api#required" => {}}))
    AccessGrant.add_member(:grant_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "grantArn", traits: {"smithy.api#required" => {}}))
    AccessGrant.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9_-]+$"}))
    AccessGrant.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "accountId", traits: {"smithy.api#required" => {}}))
    AccessGrant.add_member(:domain_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainId, name: "domainId", traits: {"smithy.api#required" => {}}))
    AccessGrant.add_member(:principal, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessGrantPrincipal, name: "principal", traits: {"smithy.api#required" => {}}))
    AccessGrant.add_member(:permission, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessGrantPermission, name: "permission", traits: {"smithy.api#required" => {}}))
    AccessGrant.add_member(:grant_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessGrantType, name: "grantType", traits: {"smithy.api#required" => {}}))
    AccessGrant.add_member(:created_by, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "createdBy", traits: {"smithy.api#required" => {}}))
    AccessGrant.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#required" => {}}))
    AccessGrant.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    AccessGrant.add_member(:space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SpaceId, name: "spaceId", traits: {"smithy.api#required" => {}}))
    AccessGrant.add_member(:scoped_actions, ::Smithy::Schema::Shapes::MemberShape.new(target: ScopedActionsList, name: "scopedActions"))
    AccessGrant.type = Types::AccessGrant
    AccessGrantPermission.add_member(:space_admin, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SPACE_ADMIN", traits: {"smithy.api#enumValue" => "SPACE_ADMIN"}))
    AccessGrantPermission.add_member(:read, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "READ", traits: {"smithy.api#enumValue" => "READ"}))
    AccessGrantPermission.add_member(:read_write_delete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "READ_WRITE_DELETE", traits: {"smithy.api#enumValue" => "READ_WRITE_DELETE"}))
    AccessGrantPermission.add_member(:custom, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CUSTOM", traits: {"smithy.api#enumValue" => "CUSTOM"}))
    AccessGrantPrincipal.add_member(:principal_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessGrantPrincipalType, name: "principalType", traits: {"smithy.api#required" => {}}))
    AccessGrantPrincipal.add_member(:principal_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PrincipalId, name: "principalId"))
    AccessGrantPrincipal.add_member(:principal_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessGrantPrincipalAttributeList, name: "principalAttributes"))
    AccessGrantPrincipal.type = Types::AccessGrantPrincipal
    AccessGrantPrincipalAttribute.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "key", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#required" => {}}))
    AccessGrantPrincipalAttribute.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "value", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#required" => {}}))
    AccessGrantPrincipalAttribute.type = Types::AccessGrantPrincipalAttribute
    AccessGrantPrincipalAttributeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessGrantPrincipalAttribute, name: "member"))
    AccessGrantPrincipalType.add_member(:idc_user, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IDC_USER", traits: {"smithy.api#enumValue" => "IDC_USER"}))
    AccessGrantPrincipalType.add_member(:idc_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IDC_GROUP", traits: {"smithy.api#enumValue" => "IDC_GROUP"}))
    AccessGrantPrincipalType.add_member(:iam_user, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IAM_USER", traits: {"smithy.api#enumValue" => "IAM_USER"}))
    AccessGrantPrincipalType.add_member(:iam_role, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IAM_ROLE", traits: {"smithy.api#enumValue" => "IAM_ROLE"}))
    AccessGrantPrincipalType.add_member(:iam_root, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IAM_ROOT", traits: {"smithy.api#enumValue" => "IAM_ROOT"}))
    AccessGrantPrincipalType.add_member(:access_profile, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACCESS_PROFILE", traits: {"smithy.api#enumValue" => "ACCESS_PROFILE"}))
    AccessGrantPrincipalType.add_member(:alert, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALERT", traits: {"smithy.api#enumValue" => "ALERT"}))
    AccessGrantPrincipalType.add_member(:agent, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AGENT", traits: {"smithy.api#enumValue" => "AGENT"}))
    AccessGrantSummary.add_member(:grant_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GrantId, name: "grantId", traits: {"smithy.api#required" => {}}))
    AccessGrantSummary.add_member(:grant_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "grantArn", traits: {"smithy.api#required" => {}}))
    AccessGrantSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9_-]+$"}))
    AccessGrantSummary.add_member(:domain_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainId, name: "domainId", traits: {"smithy.api#required" => {}}))
    AccessGrantSummary.add_member(:principal, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessGrantPrincipal, name: "principal", traits: {"smithy.api#required" => {}}))
    AccessGrantSummary.add_member(:permission, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessGrantPermission, name: "permission", traits: {"smithy.api#required" => {}}))
    AccessGrantSummary.add_member(:grant_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessGrantType, name: "grantType", traits: {"smithy.api#required" => {}}))
    AccessGrantSummary.add_member(:space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SpaceId, name: "spaceId", traits: {"smithy.api#required" => {}}))
    AccessGrantSummary.type = Types::AccessGrantSummary
    AccessGrantSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessGrantSummary, name: "member"))
    AccessGrantType.add_member(:service_managed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SERVICE_MANAGED", traits: {"smithy.api#enumValue" => "SERVICE_MANAGED"}))
    AccessGrantType.add_member(:customer_managed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CUSTOMER_MANAGED", traits: {"smithy.api#enumValue" => "CUSTOMER_MANAGED"}))
    AccessProfile.add_member(:profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileId, name: "profileId", traits: {"smithy.api#required" => {}}))
    AccessProfile.add_member(:space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SpaceId, name: "spaceId", traits: {"smithy.api#required" => {}}))
    AccessProfile.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "arn", traits: {"smithy.api#required" => {}}))
    AccessProfile.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name", traits: {"smithy.api#required" => {}}))
    AccessProfile.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "description"))
    AccessProfile.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#required" => {}}))
    AccessProfile.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    AccessProfile.add_member(:assume_status, ::Smithy::Schema::Shapes::MemberShape.new(target: AssumeStatus, name: "assumeStatus"))
    AccessProfile.add_member(:profile_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessProfileType, name: "profileType"))
    AccessProfile.type = Types::AccessProfile
    AccessProfileSummary.add_member(:profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileId, name: "profileId", traits: {"smithy.api#required" => {}}))
    AccessProfileSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "arn", traits: {"smithy.api#required" => {}}))
    AccessProfileSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name", traits: {"smithy.api#required" => {}}))
    AccessProfileSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "description"))
    AccessProfileSummary.add_member(:profile_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessProfileType, name: "profileType"))
    AccessProfileSummary.type = Types::AccessProfileSummary
    AccessProfileSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessProfileSummary, name: "member"))
    AccessProfileType.add_member(:service_managed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SERVICE_MANAGED", traits: {"smithy.api#enumValue" => "SERVICE_MANAGED"}))
    AccessProfileType.add_member(:customer_managed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CUSTOMER_MANAGED", traits: {"smithy.api#enumValue" => "CUSTOMER_MANAGED"}))
    Alert.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name", traits: {"smithy.api#required" => {}}))
    Alert.add_member(:alert_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AlertId, name: "alertId"))
    Alert.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "description"))
    Alert.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "accountId", traits: {"smithy.api#required" => {}}))
    Alert.add_member(:space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SpaceId, name: "spaceId"))
    Alert.add_member(:profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileId, name: "profileId"))
    Alert.add_member(:rule, ::Smithy::Schema::Shapes::MemberShape.new(target: Rule, name: "rule", traits: {"smithy.api#required" => {}}))
    Alert.add_member(:notification_status, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationStatus, name: "notificationStatus"))
    Alert.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: AlertStateInfo, name: "state"))
    Alert.add_member(:notification_rules, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationRuleList, name: "notificationRules"))
    Alert.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#required" => {}}))
    Alert.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    Alert.add_member(:alert_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "alertArn", traits: {"smithy.api#required" => {}}))
    Alert.type = Types::Alert
    AlertCondition.add_member(:threshold_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ThresholdMode, name: "thresholdMode"))
    AlertCondition.add_member(:threshold_field, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "thresholdField", traits: {"smithy.api#length" => {"max" => 256}}))
    AlertCondition.add_member(:comparator, ::Smithy::Schema::Shapes::MemberShape.new(target: Comparator, name: "comparator"))
    AlertCondition.add_member(:warning_threshold, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "warningThreshold"))
    AlertCondition.add_member(:critical_threshold, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "criticalThreshold"))
    AlertCondition.type = Types::AlertCondition
    AlertEvaluation.add_member(:interval_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "intervalSeconds", traits: {"smithy.api#required" => {}}))
    AlertEvaluation.add_member(:pending_duration_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "pendingDurationSeconds"))
    AlertEvaluation.add_member(:recovery_duration_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "recoveryDurationSeconds"))
    AlertEvaluation.type = Types::AlertEvaluation
    AlertFilterCriteria.add_member(:names, ::Smithy::Schema::Shapes::MemberShape.new(target: AlertNameFilterList, name: "names"))
    AlertFilterCriteria.add_member(:name_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "namePrefix", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9_.@~()-]+$"}))
    AlertFilterCriteria.add_member(:ids, ::Smithy::Schema::Shapes::MemberShape.new(target: AlertIdFilterList, name: "ids"))
    AlertFilterCriteria.add_member(:state_value, ::Smithy::Schema::Shapes::MemberShape.new(target: AlertStateList, name: "stateValue"))
    AlertFilterCriteria.add_member(:notifications_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "notificationsEnabled"))
    AlertFilterCriteria.type = Types::AlertFilterCriteria
    AlertIdFilterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AlertId, name: "member"))
    AlertNameFilterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9_.@~()-]+$"}))
    AlertRuleQuery.add_member(:language, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryLanguage, name: "language", traits: {"smithy.api#required" => {}}))
    AlertRuleQuery.add_member(:expression, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "expression", traits: {"smithy.api#length" => {"min" => 1, "max" => 10000}, "smithy.api#required" => {}}))
    AlertRuleQuery.type = Types::AlertRuleQuery
    AlertSortField.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NAME", traits: {"smithy.api#enumValue" => "NAME"}))
    AlertSortField.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STATE", traits: {"smithy.api#enumValue" => "STATE"}))
    AlertSortOrder.add_member(:asc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ASC", traits: {"smithy.api#enumValue" => "ASC"}))
    AlertSortOrder.add_member(:desc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DESC", traits: {"smithy.api#enumValue" => "DESC"}))
    AlertState.add_member(:ok, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OK", traits: {"smithy.api#enumValue" => "OK"}))
    AlertState.add_member(:warning, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WARNING", traits: {"smithy.api#enumValue" => "WARNING"}))
    AlertState.add_member(:critical, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CRITICAL", traits: {"smithy.api#enumValue" => "CRITICAL"}))
    AlertState.add_member(:nodata, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NODATA", traits: {"smithy.api#enumValue" => "NODATA"}))
    AlertStateData.add_member(:threshold_breached, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "thresholdBreached"))
    AlertStateData.type = Types::AlertStateData
    AlertStateInfo.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: AlertState, name: "value", traits: {"smithy.api#required" => {}}))
    AlertStateInfo.add_member(:transitioned_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "transitionedAt"))
    AlertStateInfo.add_member(:contributor_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: ContributorSummary, name: "contributorSummary"))
    AlertStateInfo.add_member(:data, ::Smithy::Schema::Shapes::MemberShape.new(target: AlertStateData, name: "data"))
    AlertStateInfo.type = Types::AlertStateInfo
    AlertStateList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AlertState, name: "member"))
    AlertSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name", traits: {"smithy.api#required" => {}}))
    AlertSummary.add_member(:alert_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AlertId, name: "alertId"))
    AlertSummary.add_member(:space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SpaceId, name: "spaceId"))
    AlertSummary.add_member(:profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileId, name: "profileId"))
    AlertSummary.add_member(:notification_status, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationStatus, name: "notificationStatus"))
    AlertSummary.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: AlertStateInfo, name: "state", traits: {"smithy.api#required" => {}}))
    AlertSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#required" => {}}))
    AlertSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    AlertSummary.add_member(:alert_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "alertArn", traits: {"smithy.api#required" => {}}))
    AlertSummary.type = Types::AlertSummary
    AlertSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AlertSummary, name: "member"))
    ApiKeyCredential.add_member(:api_key_value, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "apiKeyValue", traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#required" => {}}))
    ApiKeyCredential.type = Types::ApiKeyCredential
    AssumeStatus.add_member(:allowed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALLOWED", traits: {"smithy.api#enumValue" => "ALLOWED"}))
    AssumeStatus.add_member(:denied, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DENIED", traits: {"smithy.api#enumValue" => "DENIED"}))
    AuthType.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    AuthType.add_member(:oauth2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OAUTH2", traits: {"smithy.api#enumValue" => "OAUTH2"}))
    AuthType.add_member(:api_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "API_KEY", traits: {"smithy.api#enumValue" => "API_KEY"}))
    AwsCredentials.add_member(:access_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessKeyId, name: "accessKeyId", traits: {"smithy.api#required" => {}}))
    AwsCredentials.add_member(:secret_access_key, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretAccessKey, name: "secretAccessKey", traits: {"smithy.api#required" => {}}))
    AwsCredentials.add_member(:session_token, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionToken, name: "sessionToken", traits: {"smithy.api#required" => {}}))
    AwsCredentials.add_member(:expiration, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "expiration", traits: {"smithy.api#required" => {}}))
    AwsCredentials.type = Types::AwsCredentials
    Comparator.add_member(:gt, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GT", traits: {"smithy.api#enumValue" => "GT"}))
    Comparator.add_member(:lt, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LT", traits: {"smithy.api#enumValue" => "LT"}))
    Comparator.add_member(:gte, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GTE", traits: {"smithy.api#enumValue" => "GTE"}))
    Comparator.add_member(:lte, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LTE", traits: {"smithy.api#enumValue" => "LTE"}))
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:conflict_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "conflictType"))
    ConflictException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceId"))
    ConflictException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceType"))
    ConflictException.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "errorCode"))
    ConflictException.type = Types::ConflictException
    ContextConditionsMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "key"))
    ContextConditionsMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "value"))
    ContextGraphAttributeMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "key"))
    ContextGraphAttributeMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "value"))
    ContributorSummary.add_member(:warning_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "warningCount"))
    ContributorSummary.add_member(:critical_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "criticalCount"))
    ContributorSummary.type = Types::ContributorSummary
    CreateAccessGrantInput.add_member(:domain_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainId, name: "domainId", traits: {"smithy.api#required" => {}}))
    CreateAccessGrantInput.add_member(:space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SpaceId, name: "spaceId", traits: {"smithy.api#required" => {}}))
    CreateAccessGrantInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9_-]+$", "smithy.api#required" => {}}))
    CreateAccessGrantInput.add_member(:principal, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessGrantPrincipal, name: "principal", traits: {"smithy.api#required" => {}}))
    CreateAccessGrantInput.add_member(:permission, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessGrantPermission, name: "permission", traits: {"smithy.api#required" => {}}))
    CreateAccessGrantInput.add_member(:scoped_actions, ::Smithy::Schema::Shapes::MemberShape.new(target: ScopedActionsList, name: "scopedActions"))
    CreateAccessGrantInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    CreateAccessGrantInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateAccessGrantInput.type = Types::CreateAccessGrantInput
    CreateAccessGrantOutput.add_member(:access_grant, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessGrant, name: "accessGrant", traits: {"smithy.api#required" => {}}))
    CreateAccessGrantOutput.type = Types::CreateAccessGrantOutput
    CreateAccessProfileInput.add_member(:space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SpaceId, name: "spaceId", traits: {"smithy.api#required" => {}}))
    CreateAccessProfileInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessProfileName, name: "name", traits: {"smithy.api#required" => {}}))
    CreateAccessProfileInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "description", traits: {"smithy.api#length" => {"max" => 1024}}))
    CreateAccessProfileInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    CreateAccessProfileInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateAccessProfileInput.type = Types::CreateAccessProfileInput
    CreateAccessProfileOutput.add_member(:access_profile, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessProfile, name: "accessProfile", traits: {"smithy.api#required" => {}}))
    CreateAccessProfileOutput.type = Types::CreateAccessProfileOutput
    CreateAlertInput.add_member(:space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SpaceId, name: "spaceId", traits: {"smithy.api#required" => {}}))
    CreateAlertInput.add_member(:profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileId, name: "profileId", traits: {"smithy.api#required" => {}}))
    CreateAlertInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9_.@~()-]+$", "smithy.api#required" => {}}))
    CreateAlertInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "description", traits: {"smithy.api#length" => {"max" => 1024}}))
    CreateAlertInput.add_member(:rule, ::Smithy::Schema::Shapes::MemberShape.new(target: Rule, name: "rule", traits: {"smithy.api#required" => {}}))
    CreateAlertInput.add_member(:notifications_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "notificationsEnabled"))
    CreateAlertInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    CreateAlertInput.add_member(:notification_rules, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationRuleList, name: "notificationRules"))
    CreateAlertInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[\\u0021-\\u007E]+$"}))
    CreateAlertInput.type = Types::CreateAlertInput
    CreateAlertOutput.add_member(:alert_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "alertArn"))
    CreateAlertOutput.add_member(:alert, ::Smithy::Schema::Shapes::MemberShape.new(target: Alert, name: "alert", traits: {"smithy.api#required" => {}}))
    CreateAlertOutput.type = Types::CreateAlertOutput
    CreateDomainAccessGrantForOrganizationInput.add_member(:domain_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainId, name: "domainId", traits: {"smithy.api#required" => {}}))
    CreateDomainAccessGrantForOrganizationInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9_-]+$", "smithy.api#required" => {}}))
    CreateDomainAccessGrantForOrganizationInput.add_member(:principal, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationAccessGrantPrincipal, name: "principal", traits: {"smithy.api#required" => {}}))
    CreateDomainAccessGrantForOrganizationInput.add_member(:permission, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationGrantPermission, name: "permission", traits: {"smithy.api#required" => {}}))
    CreateDomainAccessGrantForOrganizationInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    CreateDomainAccessGrantForOrganizationInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateDomainAccessGrantForOrganizationInput.type = Types::CreateDomainAccessGrantForOrganizationInput
    CreateDomainAccessGrantForOrganizationOutput.add_member(:access_grant, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationAccessGrant, name: "accessGrant", traits: {"smithy.api#required" => {}}))
    CreateDomainAccessGrantForOrganizationOutput.type = Types::CreateDomainAccessGrantForOrganizationOutput
    CreateDomainForOrganizationInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name", traits: {"smithy.api#length" => {"min" => 3, "max" => 63}, "smithy.api#pattern" => "^[a-z0-9]+(-[a-z0-9]+)*$", "smithy.api#required" => {}}))
    CreateDomainForOrganizationInput.add_member(:identity_providers, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityProviderList, name: "identityProviders", traits: {"smithy.api#required" => {}}))
    CreateDomainForOrganizationInput.add_member(:identity_provider_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityProviderConfiguration, name: "identityProviderConfiguration"))
    CreateDomainForOrganizationInput.add_member(:domain_access_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArn, name: "domainAccessRoleArn", traits: {"smithy.api#required" => {}}))
    CreateDomainForOrganizationInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    CreateDomainForOrganizationInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateDomainForOrganizationInput.type = Types::CreateDomainForOrganizationInput
    CreateDomainForOrganizationOutput.add_member(:organization_domain, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationDomain, name: "organizationDomain", traits: {"smithy.api#required" => {}}))
    CreateDomainForOrganizationOutput.type = Types::CreateDomainForOrganizationOutput
    CreateDomainInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name", traits: {"smithy.api#length" => {"min" => 3, "max" => 63}, "smithy.api#pattern" => "^[a-z0-9]+(-[a-z0-9]+)*$", "smithy.api#required" => {}}))
    CreateDomainInput.add_member(:identity_providers, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityProviderList, name: "identityProviders", traits: {"smithy.api#required" => {}}))
    CreateDomainInput.add_member(:identity_provider_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityProviderConfiguration, name: "identityProviderConfiguration"))
    CreateDomainInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    CreateDomainInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateDomainInput.type = Types::CreateDomainInput
    CreateDomainOutput.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: Domain, name: "domain", traits: {"smithy.api#required" => {}}))
    CreateDomainOutput.type = Types::CreateDomainOutput
    CreateIntegrationInput.add_member(:integration_type, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationType, name: "integrationType", traits: {"smithy.api#required" => {}}))
    CreateIntegrationInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#required" => {}}))
    CreateIntegrationInput.add_member(:credential, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationCredential, name: "credential"))
    CreateIntegrationInput.add_member(:integration_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: StringMap, name: "integrationAttributes", traits: {"smithy.api#length" => {"max" => 50}}))
    CreateIntegrationInput.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "roleArn"))
    CreateIntegrationInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags", traits: {"smithy.api#since" => "2026-08-14"}))
    CreateIntegrationInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[!-~]+$"}))
    CreateIntegrationInput.type = Types::CreateIntegrationInput
    CreateIntegrationOutput.add_member(:integration, ::Smithy::Schema::Shapes::MemberShape.new(target: Integration, name: "integration", traits: {"smithy.api#required" => {}}))
    CreateIntegrationOutput.type = Types::CreateIntegrationOutput
    CreateOmniDashboardInput.add_member(:space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SpaceId, name: "spaceId", traits: {"smithy.api#required" => {}}))
    CreateOmniDashboardInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9_.@~()-]+$", "smithy.api#required" => {}}))
    CreateOmniDashboardInput.add_member(:body, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "body", traits: {"smithy.api#length" => {"min" => 1, "max" => 1048576}, "smithy.api#required" => {}}))
    CreateOmniDashboardInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "description", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}}))
    CreateOmniDashboardInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    CreateOmniDashboardInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateOmniDashboardInput.type = Types::CreateOmniDashboardInput
    CreateOmniDashboardOutput.add_member(:omni_dashboard, ::Smithy::Schema::Shapes::MemberShape.new(target: OmniDashboard, name: "omniDashboard", traits: {"smithy.api#required" => {}}))
    CreateOmniDashboardOutput.type = Types::CreateOmniDashboardOutput
    CreateOneTimeDeepLinkCodeInput.add_member(:domain_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainId, name: "domainId", traits: {"smithy.api#required" => {}}))
    CreateOneTimeDeepLinkCodeInput.add_member(:ttl_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "ttlSeconds", traits: {"smithy.api#range" => {"min" => 60, "max" => 600}}))
    CreateOneTimeDeepLinkCodeInput.add_member(:redirect_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "redirectUrl"))
    CreateOneTimeDeepLinkCodeInput.type = Types::CreateOneTimeDeepLinkCodeInput
    CreateOneTimeDeepLinkCodeOutput.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: DeepLinkCode, name: "code", traits: {"smithy.api#required" => {}}))
    CreateOneTimeDeepLinkCodeOutput.add_member(:deep_link_url, ::Smithy::Schema::Shapes::MemberShape.new(target: DeepLinkUrl, name: "deepLinkUrl", traits: {"smithy.api#required" => {}}))
    CreateOneTimeDeepLinkCodeOutput.add_member(:expires_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "expiresAt", traits: {"smithy.api#required" => {}}))
    CreateOneTimeDeepLinkCodeOutput.type = Types::CreateOneTimeDeepLinkCodeOutput
    CreateSpaceInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name", traits: {"smithy.api#length" => {"min" => 3, "max" => 64}, "smithy.api#pattern" => "^[a-z0-9]+(-[a-z0-9]+)*$", "smithy.api#required" => {}}))
    CreateSpaceInput.add_member(:domain_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainId, name: "domainId", traits: {"smithy.api#required" => {}}))
    CreateSpaceInput.add_member(:data_access_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "dataAccessRoleArn", traits: {"smithy.api#required" => {}}))
    CreateSpaceInput.add_member(:agent_core_evaluation_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "agentCoreEvaluationRoleArn"))
    CreateSpaceInput.add_member(:encryption_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionConfiguration, name: "encryptionConfiguration"))
    CreateSpaceInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    CreateSpaceInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateSpaceInput.type = Types::CreateSpaceInput
    CreateSpaceOutput.add_member(:space, ::Smithy::Schema::Shapes::MemberShape.new(target: Space, name: "space", traits: {"smithy.api#required" => {}}))
    CreateSpaceOutput.type = Types::CreateSpaceOutput
    CreateViewRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ViewName, name: "name", traits: {"smithy.api#required" => {}}))
    CreateViewRequest.add_member(:definition, ::Smithy::Schema::Shapes::MemberShape.new(target: ViewDefinition, name: "definition", traits: {"smithy.api#required" => {}}))
    CreateViewRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ViewDescription, name: "description"))
    CreateViewRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    CreateViewRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[!-~]+$"}))
    CreateViewRequest.type = Types::CreateViewRequest
    CreateViewResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name", traits: {"smithy.api#required" => {}}))
    CreateViewResponse.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ViewType, name: "type", traits: {"smithy.api#required" => {}}))
    CreateViewResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "description"))
    CreateViewResponse.add_member(:definition, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "definition", traits: {"smithy.api#required" => {}}))
    CreateViewResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#required" => {}}))
    CreateViewResponse.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    CreateViewResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "arn", traits: {"smithy.api#required" => {}}))
    CreateViewResponse.type = Types::CreateViewResponse
    DeleteAccessGrantInput.add_member(:grant_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GrantId, name: "grantId", traits: {"smithy.api#required" => {}}))
    DeleteAccessGrantInput.type = Types::DeleteAccessGrantInput
    DeleteAccessGrantOutput.type = Types::DeleteAccessGrantOutput
    DeleteAccessProfileInput.add_member(:space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SpaceId, name: "spaceId", traits: {"smithy.api#required" => {}}))
    DeleteAccessProfileInput.add_member(:profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileId, name: "profileId", traits: {"smithy.api#required" => {}}))
    DeleteAccessProfileInput.type = Types::DeleteAccessProfileInput
    DeleteAccessProfileOutput.type = Types::DeleteAccessProfileOutput
    DeleteAlertInput.add_member(:space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SpaceId, name: "spaceId", traits: {"smithy.api#required" => {}}))
    DeleteAlertInput.add_member(:alert_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AlertId, name: "alertId", traits: {"smithy.api#required" => {}}))
    DeleteAlertInput.type = Types::DeleteAlertInput
    DeleteAlertOutput.type = Types::DeleteAlertOutput
    DeleteDomainAccessGrantForOrganizationInput.add_member(:grant_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GrantId, name: "grantId", traits: {"smithy.api#required" => {}}))
    DeleteDomainAccessGrantForOrganizationInput.type = Types::DeleteDomainAccessGrantForOrganizationInput
    DeleteDomainAccessGrantForOrganizationOutput.type = Types::DeleteDomainAccessGrantForOrganizationOutput
    DeleteDomainForOrganizationInput.add_member(:domain_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainId, name: "domainId", traits: {"smithy.api#required" => {}}))
    DeleteDomainForOrganizationInput.type = Types::DeleteDomainForOrganizationInput
    DeleteDomainForOrganizationOutput.type = Types::DeleteDomainForOrganizationOutput
    DeleteDomainInput.add_member(:domain_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainId, name: "domainId", traits: {"smithy.api#required" => {}}))
    DeleteDomainInput.type = Types::DeleteDomainInput
    DeleteDomainOutput.type = Types::DeleteDomainOutput
    DeleteIntegrationInput.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationIdentifier, name: "identifier", traits: {"smithy.api#required" => {}}))
    DeleteIntegrationInput.type = Types::DeleteIntegrationInput
    DeleteIntegrationOutput.type = Types::DeleteIntegrationOutput
    DeleteOmniDashboardInput.add_member(:space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SpaceId, name: "spaceId", traits: {"smithy.api#required" => {}}))
    DeleteOmniDashboardInput.add_member(:dashboard_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DashboardId, name: "dashboardId", traits: {"smithy.api#required" => {}}))
    DeleteOmniDashboardInput.type = Types::DeleteOmniDashboardInput
    DeleteOmniDashboardOutput.type = Types::DeleteOmniDashboardOutput
    DeleteSpaceInput.add_member(:space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SpaceId, name: "spaceId", traits: {"smithy.api#required" => {}}))
    DeleteSpaceInput.type = Types::DeleteSpaceInput
    DeleteSpaceOutput.type = Types::DeleteSpaceOutput
    DeleteViewRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ViewName, name: "name", traits: {"smithy.api#required" => {}}))
    DeleteViewRequest.type = Types::DeleteViewRequest
    DeleteViewResponse.type = Types::DeleteViewResponse
    Domain.add_member(:domain_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainId, name: "domainId", traits: {"smithy.api#required" => {}}))
    Domain.add_member(:domain_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "domainArn", traits: {"smithy.api#required" => {}}))
    Domain.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name", traits: {"smithy.api#length" => {"min" => 3, "max" => 63}, "smithy.api#pattern" => "^[a-z0-9]+(-[a-z0-9]+)*$"}))
    Domain.add_member(:identity_providers, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityProviderList, name: "identityProviders", traits: {"smithy.api#required" => {}}))
    Domain.add_member(:identity_provider_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityProviderConfiguration, name: "identityProviderConfiguration"))
    Domain.add_member(:domain_endpoint_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "domainEndpointUrl", traits: {"smithy.api#required" => {}}))
    Domain.add_member(:custom_endpoint_urls, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "customEndpointUrls"))
    Domain.add_member(:identity_center_application_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "identityCenterApplicationArn"))
    Domain.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "region", traits: {"smithy.api#required" => {}}))
    Domain.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#required" => {}}))
    Domain.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    Domain.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainStatus, name: "status", traits: {"smithy.api#required" => {}}))
    Domain.type = Types::Domain
    DomainStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    DomainSummary.add_member(:domain_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainId, name: "domainId", traits: {"smithy.api#required" => {}}))
    DomainSummary.add_member(:domain_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "domainArn"))
    DomainSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name", traits: {"smithy.api#length" => {"min" => 3, "max" => 63}, "smithy.api#pattern" => "^[a-z0-9]+(-[a-z0-9]+)*$"}))
    DomainSummary.add_member(:identity_center_instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityCenterInstanceArn, name: "identityCenterInstanceArn"))
    DomainSummary.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "region"))
    DomainSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#required" => {}}))
    DomainSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    DomainSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainStatus, name: "status", traits: {"smithy.api#required" => {}}))
    DomainSummary.type = Types::DomainSummary
    DomainSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainSummary, name: "member"))
    Edge.add_member(:edge_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ContextGraphId, name: "edgeId"))
    Edge.add_member(:from, ::Smithy::Schema::Shapes::MemberShape.new(target: ContextGraphId, name: "from"))
    Edge.add_member(:to, ::Smithy::Schema::Shapes::MemberShape.new(target: ContextGraphId, name: "to"))
    Edge.add_member(:edge_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EdgeType, name: "edgeType"))
    Edge.add_member(:operations, ::Smithy::Schema::Shapes::MemberShape.new(target: StringSet, name: "operations"))
    Edge.add_member(:edge_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: EdgeProperties, name: "edgeProperties"))
    Edge.add_member(:telemetry_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: ContextGraphAttributeMap, name: "telemetryAttributes"))
    Edge.add_member(:signal_types, ::Smithy::Schema::Shapes::MemberShape.new(target: SignalSet, name: "signalTypes"))
    Edge.add_member(:sources, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceSet, name: "sources"))
    Edge.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: Metadata, name: "metadata"))
    Edge.add_member(:first_observed_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "firstObservedAt"))
    Edge.add_member(:last_observed_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "lastObservedAt"))
    Edge.type = Types::Edge
    EdgeFilters.add_member(:edge_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ContextGraphId, name: "edgeId"))
    EdgeFilters.add_member(:from, ::Smithy::Schema::Shapes::MemberShape.new(target: ContextGraphId, name: "from"))
    EdgeFilters.add_member(:to, ::Smithy::Schema::Shapes::MemberShape.new(target: ContextGraphId, name: "to"))
    EdgeFilters.add_member(:edge_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EdgeType, name: "edgeType"))
    EdgeFilters.add_member(:operations, ::Smithy::Schema::Shapes::MemberShape.new(target: StringSet, name: "operations"))
    EdgeFilters.add_member(:telemetry_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyFilterList, name: "telemetryAttributes"))
    EdgeFilters.add_member(:sources, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceSet, name: "sources"))
    EdgeFilters.type = Types::EdgeFilters
    EdgeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Edge, name: "member"))
    EdgeProperties.add_member(:protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "protocol"))
    EdgeProperties.add_member(:source_port, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "sourcePort"))
    EdgeProperties.add_member(:destination_port, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "destinationPort"))
    EdgeProperties.add_member(:blocked, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "blocked"))
    EdgeProperties.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "errorCode"))
    EdgeProperties.add_member(:http_status_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "httpStatusCode"))
    EdgeProperties.add_member(:http_method, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "httpMethod"))
    EdgeProperties.add_member(:service_initiated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "serviceInitiated"))
    EdgeProperties.add_member(:traffic_stats, ::Smithy::Schema::Shapes::MemberShape.new(target: EdgeTrafficStats, name: "trafficStats"))
    EdgeProperties.type = Types::EdgeProperties
    EdgeTrafficStats.add_member(:bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "bytes", traits: {"smithy.api#range" => {"min" => 0}}))
    EdgeTrafficStats.add_member(:packets, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "packets", traits: {"smithy.api#range" => {"min" => 0}}))
    EdgeTrafficStats.add_member(:flows, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "flows", traits: {"smithy.api#range" => {"min" => 0}}))
    EdgeTrafficStats.add_member(:sent_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "sentBytes", traits: {"smithy.api#range" => {"min" => 0}}))
    EdgeTrafficStats.add_member(:received_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "receivedBytes", traits: {"smithy.api#range" => {"min" => 0}}))
    EdgeTrafficStats.type = Types::EdgeTrafficStats
    EdgeType.add_member(:calls, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CALLS", traits: {"smithy.api#enumValue" => "CALLS"}))
    EdgeType.add_member(:accesses, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACCESSES", traits: {"smithy.api#enumValue" => "ACCESSES"}))
    EdgeType.add_member(:runs_on, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RUNS_ON", traits: {"smithy.api#enumValue" => "RUNS_ON"}))
    EncryptionConfiguration.add_member(:encryption_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionStrategy, name: "encryptionStrategy", traits: {"smithy.api#required" => {}}))
    EncryptionConfiguration.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyArn, name: "kmsKeyArn"))
    EncryptionConfiguration.type = Types::EncryptionConfiguration
    EncryptionStrategy.add_member(:aws_owned, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_OWNED", traits: {"smithy.api#enumValue" => "AWS_OWNED"}))
    EncryptionStrategy.add_member(:customer_managed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CUSTOMER_MANAGED", traits: {"smithy.api#enumValue" => "CUSTOMER_MANAGED"}))
    Field.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name", traits: {"smithy.api#required" => {}}))
    Field.add_member(:children, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldList, name: "children", traits: {"smithy.api#length" => {"max" => 1000}}))
    Field.type = Types::Field
    FieldList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Field, name: "member"))
    GetAccessGrantInput.add_member(:grant_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GrantId, name: "grantId", traits: {"smithy.api#required" => {}}))
    GetAccessGrantInput.type = Types::GetAccessGrantInput
    GetAccessGrantOutput.add_member(:access_grant, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessGrant, name: "accessGrant", traits: {"smithy.api#required" => {}}))
    GetAccessGrantOutput.type = Types::GetAccessGrantOutput
    GetAccessProfileInput.add_member(:space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SpaceId, name: "spaceId", traits: {"smithy.api#required" => {}}))
    GetAccessProfileInput.add_member(:profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileId, name: "profileId", traits: {"smithy.api#required" => {}}))
    GetAccessProfileInput.type = Types::GetAccessProfileInput
    GetAccessProfileOutput.add_member(:access_profile, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessProfile, name: "accessProfile", traits: {"smithy.api#required" => {}}))
    GetAccessProfileOutput.type = Types::GetAccessProfileOutput
    GetAlertInput.add_member(:space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SpaceId, name: "spaceId", traits: {"smithy.api#required" => {}}))
    GetAlertInput.add_member(:alert_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AlertId, name: "alertId", traits: {"smithy.api#required" => {}}))
    GetAlertInput.type = Types::GetAlertInput
    GetAlertOutput.add_member(:alert, ::Smithy::Schema::Shapes::MemberShape.new(target: Alert, name: "alert", traits: {"smithy.api#required" => {}}))
    GetAlertOutput.type = Types::GetAlertOutput
    GetContextGraphInput.add_member(:node_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeFilters, name: "nodeFilters"))
    GetContextGraphInput.add_member(:edge_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: EdgeFilters, name: "edgeFilters"))
    GetContextGraphInput.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "startTime", traits: {"smithy.api#required" => {}}))
    GetContextGraphInput.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "endTime", traits: {"smithy.api#required" => {}}))
    GetContextGraphInput.add_member(:depth, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "depth", traits: {"smithy.api#range" => {"min" => 0, "max" => 3}}))
    GetContextGraphInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}}))
    GetContextGraphInput.add_member(:max_edges_per_node, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxEdgesPerNode", traits: {"smithy.api#range" => {"min" => 1, "max" => 50}}))
    GetContextGraphInput.add_member(:include_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "includeMetadata"))
    GetContextGraphInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    GetContextGraphInput.type = Types::GetContextGraphInput
    GetContextGraphOutput.add_member(:nodes, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeList, name: "nodes", traits: {"smithy.api#required" => {}}))
    GetContextGraphOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    GetContextGraphOutput.type = Types::GetContextGraphOutput
    GetDomainAccessGrantForOrganizationInput.add_member(:grant_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GrantId, name: "grantId", traits: {"smithy.api#required" => {}}))
    GetDomainAccessGrantForOrganizationInput.type = Types::GetDomainAccessGrantForOrganizationInput
    GetDomainAccessGrantForOrganizationOutput.add_member(:access_grant, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationAccessGrant, name: "accessGrant", traits: {"smithy.api#required" => {}}))
    GetDomainAccessGrantForOrganizationOutput.type = Types::GetDomainAccessGrantForOrganizationOutput
    GetDomainForOrganizationInput.add_member(:domain_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainId, name: "domainId", traits: {"smithy.api#required" => {}}))
    GetDomainForOrganizationInput.type = Types::GetDomainForOrganizationInput
    GetDomainForOrganizationOutput.add_member(:organization_domain, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationDomain, name: "organizationDomain", traits: {"smithy.api#required" => {}}))
    GetDomainForOrganizationOutput.type = Types::GetDomainForOrganizationOutput
    GetDomainInput.add_member(:domain_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainId, name: "domainId", traits: {"smithy.api#required" => {}}))
    GetDomainInput.type = Types::GetDomainInput
    GetDomainOutput.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: Domain, name: "domain", traits: {"smithy.api#required" => {}}))
    GetDomainOutput.type = Types::GetDomainOutput
    GetIntegrationInput.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationIdentifier, name: "identifier", traits: {"smithy.api#required" => {}}))
    GetIntegrationInput.type = Types::GetIntegrationInput
    GetIntegrationOutput.add_member(:integration, ::Smithy::Schema::Shapes::MemberShape.new(target: Integration, name: "integration", traits: {"smithy.api#required" => {}}))
    GetIntegrationOutput.type = Types::GetIntegrationOutput
    GetIntelligenceConfigurationInput.type = Types::GetIntelligenceConfigurationInput
    GetIntelligenceConfigurationOutput.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "accountId", traits: {"smithy.api#required" => {}}))
    GetIntelligenceConfigurationOutput.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IntelligenceKmsKeyArn, name: "kmsKeyArn"))
    GetIntelligenceConfigurationOutput.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    GetIntelligenceConfigurationOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#required" => {}}))
    GetIntelligenceConfigurationOutput.type = Types::GetIntelligenceConfigurationOutput
    GetOmniDashboardInput.add_member(:space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SpaceId, name: "spaceId", traits: {"smithy.api#required" => {}}))
    GetOmniDashboardInput.add_member(:dashboard_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DashboardId, name: "dashboardId", traits: {"smithy.api#required" => {}}))
    GetOmniDashboardInput.type = Types::GetOmniDashboardInput
    GetOmniDashboardOutput.add_member(:omni_dashboard, ::Smithy::Schema::Shapes::MemberShape.new(target: OmniDashboard, name: "omniDashboard", traits: {"smithy.api#required" => {}}))
    GetOmniDashboardOutput.type = Types::GetOmniDashboardOutput
    GetSpaceCredentialsForOrganizationInput.add_member(:context, ::Smithy::Schema::Shapes::MemberShape.new(target: SpaceCredentialRequestContext, name: "context", traits: {"smithy.api#required" => {}}))
    GetSpaceCredentialsForOrganizationInput.add_member(:credential_type, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationCredentialType, name: "credentialType", traits: {"smithy.api#required" => {}}))
    GetSpaceCredentialsForOrganizationInput.type = Types::GetSpaceCredentialsForOrganizationInput
    GetSpaceCredentialsForOrganizationOutput.add_member(:credentials, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsCredentials, name: "credentials", traits: {"smithy.api#required" => {}}))
    GetSpaceCredentialsForOrganizationOutput.type = Types::GetSpaceCredentialsForOrganizationOutput
    GetSpaceInput.add_member(:space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SpaceId, name: "spaceId", traits: {"smithy.api#required" => {}}))
    GetSpaceInput.type = Types::GetSpaceInput
    GetSpaceOutput.add_member(:space, ::Smithy::Schema::Shapes::MemberShape.new(target: Space, name: "space", traits: {"smithy.api#required" => {}}))
    GetSpaceOutput.type = Types::GetSpaceOutput
    GetTelemetryQueryResultsRequest.add_member(:query_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "queryId", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-z0-9-]+$", "smithy.api#required" => {}}))
    GetTelemetryQueryResultsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken"))
    GetTelemetryQueryResultsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}}))
    GetTelemetryQueryResultsRequest.type = Types::GetTelemetryQueryResultsRequest
    GetTelemetryQueryResultsResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryStatus, name: "status", traits: {"smithy.api#required" => {}}))
    GetTelemetryQueryResultsResponse.add_member(:rows, ::Smithy::Schema::Shapes::MemberShape.new(target: RowList, name: "rows"))
    GetTelemetryQueryResultsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken"))
    GetTelemetryQueryResultsResponse.add_member(:statistics, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryStatistics, name: "statistics"))
    GetTelemetryQueryResultsResponse.type = Types::GetTelemetryQueryResultsResponse
    GetViewRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ViewName, name: "name", traits: {"smithy.api#required" => {}}))
    GetViewRequest.type = Types::GetViewRequest
    GetViewResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name", traits: {"smithy.api#required" => {}}))
    GetViewResponse.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ViewType, name: "type", traits: {"smithy.api#required" => {}}))
    GetViewResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "description"))
    GetViewResponse.add_member(:definition, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "definition", traits: {"smithy.api#required" => {}}))
    GetViewResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#required" => {}}))
    GetViewResponse.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    GetViewResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "arn", traits: {"smithy.api#required" => {}}))
    GetViewResponse.type = Types::GetViewResponse
    IdentityCenterConfiguration.add_member(:identity_center_instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityCenterInstanceArn, name: "identityCenterInstanceArn"))
    IdentityCenterConfiguration.type = Types::IdentityCenterConfiguration
    IdentityProvider.add_member(:iam, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IAM", traits: {"smithy.api#enumValue" => "IAM"}))
    IdentityProvider.add_member(:idc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IDC", traits: {"smithy.api#enumValue" => "IDC"}))
    IdentityProviderConfiguration.add_member(:identity_center_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityCenterConfiguration, name: "identityCenterConfiguration"))
    IdentityProviderConfiguration.type = Types::IdentityProviderConfiguration
    IdentityProviderList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityProvider, name: "member"))
    Integration.add_member(:integration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "integrationId", traits: {"smithy.api#required" => {}}))
    Integration.add_member(:integration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationArn, name: "integrationArn"))
    Integration.add_member(:integration_type, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationType, name: "integrationType", traits: {"smithy.api#required" => {}}))
    Integration.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name", traits: {"smithy.api#required" => {}}))
    Integration.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationStatus, name: "status", traits: {"smithy.api#required" => {}}))
    Integration.add_member(:auth_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthType, name: "authType"))
    Integration.add_member(:credential_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "credentialArn"))
    Integration.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "roleArn"))
    Integration.add_member(:integration_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: StringMap, name: "integrationAttributes"))
    Integration.add_member(:authorization_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "authorizationUrl"))
    Integration.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "errorMessage"))
    Integration.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt"))
    Integration.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt"))
    Integration.add_member(:scope, ::Smithy::Schema::Shapes::MemberShape.new(target: Scope, name: "scope"))
    Integration.type = Types::Integration
    IntegrationCredential.add_member(:oauth_code_credential, Types::IntegrationCredential::OauthCodeCredential, ::Smithy::Schema::Shapes::MemberShape.new(target: OAuthCodeCredential, name: "oauthCodeCredential"))
    IntegrationCredential.add_member(:oauth_client_credential, Types::IntegrationCredential::OauthClientCredential, ::Smithy::Schema::Shapes::MemberShape.new(target: OAuthClientCredential, name: "oauthClientCredential"))
    IntegrationCredential.add_member(:api_key_credential, Types::IntegrationCredential::ApiKeyCredential, ::Smithy::Schema::Shapes::MemberShape.new(target: ApiKeyCredential, name: "apiKeyCredential"))
    IntegrationCredential.add_member(:unknown, Types::IntegrationCredential::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    IntegrationCredential.type = Types::IntegrationCredential
    IntegrationIdentifier.add_member(:integration_id, Types::IntegrationIdentifier::IntegrationId, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "integrationId"))
    IntegrationIdentifier.add_member(:integration_arn, Types::IntegrationIdentifier::IntegrationArn, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationArn, name: "integrationArn"))
    IntegrationIdentifier.add_member(:integration_name, Types::IntegrationIdentifier::IntegrationName, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "integrationName"))
    IntegrationIdentifier.add_member(:unknown, Types::IntegrationIdentifier::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    IntegrationIdentifier.type = Types::IntegrationIdentifier
    IntegrationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Integration, name: "member"))
    IntegrationStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    IntegrationStatus.add_member(:deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETED", traits: {"smithy.api#enumValue" => "DELETED"}))
    IntegrationStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    IntegrationStatus.add_member(:pending_oauth, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING_OAUTH", traits: {"smithy.api#enumValue" => "PENDING_OAUTH"}))
    IntegrationStatus.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ERROR", traits: {"smithy.api#enumValue" => "ERROR"}))
    IntegrationStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    IntegrationType.add_member(:aws_config_slrec, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_CONFIG_SLREC", traits: {"smithy.api#enumValue" => "AWS_CONFIG_SLREC"}))
    IntegrationType.add_member(:slack, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SLACK", traits: {"smithy.api#enumValue" => "SLACK"}))
    IntegrationType.add_member(:external_agent, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXTERNAL_AGENT", traits: {"smithy.api#enumValue" => "EXTERNAL_AGENT"}))
    IntegrationType.add_member(:aws_integration, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_INTEGRATION", traits: {"smithy.api#enumValue" => "AWS_INTEGRATION"}))
    IntelligenceTagMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "key"))
    IntelligenceTagMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "value"))
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    InternalServerException.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "errorCode"))
    InternalServerException.type = Types::InternalServerException
    KeyFilter.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyFilterKey, name: "key", traits: {"smithy.api#required" => {}}))
    KeyFilter.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyFilterValues, name: "values"))
    KeyFilter.type = Types::KeyFilter
    KeyFilterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyFilter, name: "member"))
    KeyFilterValues.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyFilterValue, name: "member"))
    ListAccessGrantsInput.add_member(:domain_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainId, name: "domainId"))
    ListAccessGrantsInput.add_member(:space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SpaceId, name: "spaceId"))
    ListAccessGrantsInput.add_member(:principal_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PrincipalId, name: "principalId"))
    ListAccessGrantsInput.add_member(:principal_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessGrantPrincipalType, name: "principalType"))
    ListAccessGrantsInput.add_member(:permission, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessGrantPermission, name: "permission"))
    ListAccessGrantsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListAccessGrantsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListAccessGrantsInput.type = Types::ListAccessGrantsInput
    ListAccessGrantsOutput.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessGrantSummaryList, name: "items", traits: {"smithy.api#required" => {}}))
    ListAccessGrantsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListAccessGrantsOutput.type = Types::ListAccessGrantsOutput
    ListAccessProfilesInput.add_member(:space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SpaceId, name: "spaceId", traits: {"smithy.api#required" => {}}))
    ListAccessProfilesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListAccessProfilesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListAccessProfilesInput.type = Types::ListAccessProfilesInput
    ListAccessProfilesOutput.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessProfileSummaryList, name: "items", traits: {"smithy.api#required" => {}}))
    ListAccessProfilesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListAccessProfilesOutput.type = Types::ListAccessProfilesOutput
    ListAlertsInput.add_member(:space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SpaceId, name: "spaceId", traits: {"smithy.api#required" => {}}))
    ListAlertsInput.add_member(:filter_criteria, ::Smithy::Schema::Shapes::MemberShape.new(target: AlertFilterCriteria, name: "filterCriteria"))
    ListAlertsInput.add_member(:sort_by, ::Smithy::Schema::Shapes::MemberShape.new(target: AlertSortField, name: "sortBy"))
    ListAlertsInput.add_member(:sort_order, ::Smithy::Schema::Shapes::MemberShape.new(target: AlertSortOrder, name: "sortOrder"))
    ListAlertsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListAlertsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListAlertsInput.type = Types::ListAlertsInput
    ListAlertsOutput.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: AlertSummaryList, name: "items", traits: {"smithy.api#required" => {}}))
    ListAlertsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListAlertsOutput.type = Types::ListAlertsOutput
    ListDomainAccessGrantsForOrganizationInput.add_member(:domain_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainId, name: "domainId"))
    ListDomainAccessGrantsForOrganizationInput.add_member(:principal_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PrincipalId, name: "principalId"))
    ListDomainAccessGrantsForOrganizationInput.add_member(:principal_type, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationGrantPrincipalType, name: "principalType"))
    ListDomainAccessGrantsForOrganizationInput.add_member(:permission, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationGrantPermission, name: "permission"))
    ListDomainAccessGrantsForOrganizationInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListDomainAccessGrantsForOrganizationInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListDomainAccessGrantsForOrganizationInput.type = Types::ListDomainAccessGrantsForOrganizationInput
    ListDomainAccessGrantsForOrganizationOutput.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationAccessGrantSummaryList, name: "items", traits: {"smithy.api#required" => {}}))
    ListDomainAccessGrantsForOrganizationOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListDomainAccessGrantsForOrganizationOutput.type = Types::ListDomainAccessGrantsForOrganizationOutput
    ListDomainsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListDomainsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListDomainsInput.type = Types::ListDomainsInput
    ListDomainsOutput.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainSummaryList, name: "items", traits: {"smithy.api#required" => {}}))
    ListDomainsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListDomainsOutput.type = Types::ListDomainsOutput
    ListIntegrationsInput.add_member(:integration_type, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationType, name: "integrationType"))
    ListIntegrationsInput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationStatus, name: "status"))
    ListIntegrationsInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name"))
    ListIntegrationsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken"))
    ListIntegrationsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListIntegrationsInput.type = Types::ListIntegrationsInput
    ListIntegrationsOutput.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationList, name: "items", traits: {"smithy.api#required" => {}}))
    ListIntegrationsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken"))
    ListIntegrationsOutput.type = Types::ListIntegrationsOutput
    ListOmniDashboardsInput.add_member(:space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SpaceId, name: "spaceId", traits: {"smithy.api#required" => {}}))
    ListOmniDashboardsInput.add_member(:name_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "namePrefix", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9_.@~()-]+$"}))
    ListOmniDashboardsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListOmniDashboardsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListOmniDashboardsInput.type = Types::ListOmniDashboardsInput
    ListOmniDashboardsOutput.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: OmniDashboardSummaryList, name: "items", traits: {"smithy.api#required" => {}}))
    ListOmniDashboardsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListOmniDashboardsOutput.type = Types::ListOmniDashboardsOutput
    ListSpacesForOrganizationInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListSpacesForOrganizationInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListSpacesForOrganizationInput.type = Types::ListSpacesForOrganizationInput
    ListSpacesForOrganizationOutput.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: SpaceSummaryList, name: "items", traits: {"smithy.api#required" => {}}))
    ListSpacesForOrganizationOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListSpacesForOrganizationOutput.type = Types::ListSpacesForOrganizationOutput
    ListSpacesInput.add_member(:domain_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainId, name: "domainId"))
    ListSpacesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListSpacesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListSpacesInput.type = Types::ListSpacesInput
    ListSpacesOutput.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: SpaceSummaryList, name: "items", traits: {"smithy.api#required" => {}}))
    ListSpacesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListSpacesOutput.type = Types::ListSpacesOutput
    ListTelemetryFieldsRequest.add_member(:data_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "dataSetName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#required" => {}}))
    ListTelemetryFieldsRequest.add_member(:telemetry_type, ::Smithy::Schema::Shapes::MemberShape.new(target: TelemetryType, name: "telemetryType"))
    ListTelemetryFieldsRequest.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "startTime"))
    ListTelemetryFieldsRequest.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "endTime"))
    ListTelemetryFieldsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken"))
    ListTelemetryFieldsRequest.type = Types::ListTelemetryFieldsRequest
    ListTelemetryFieldsResponse.add_member(:fields, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldList, name: "fields", traits: {"smithy.api#required" => {}}))
    ListTelemetryFieldsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken"))
    ListTelemetryFieldsResponse.type = Types::ListTelemetryFieldsResponse
    ListTelemetryQuerySessionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken"))
    ListTelemetryQuerySessionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListTelemetryQuerySessionsRequest.type = Types::ListTelemetryQuerySessionsRequest
    ListTelemetryQuerySessionsResponse.add_member(:sessions, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionSummaryList, name: "sessions", traits: {"smithy.api#required" => {}}))
    ListTelemetryQuerySessionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken"))
    ListTelemetryQuerySessionsResponse.type = Types::ListTelemetryQuerySessionsResponse
    ListViewsRequest.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ViewType, name: "type"))
    ListViewsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListViewsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken"))
    ListViewsRequest.type = Types::ListViewsRequest
    ListViewsResponse.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: ViewSummaryList, name: "items", traits: {"smithy.api#required" => {}}))
    ListViewsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken"))
    ListViewsResponse.type = Types::ListViewsResponse
    LogMetadata.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: LogMetadataAttributeMap, name: "attributes"))
    LogMetadata.type = Types::LogMetadata
    LogMetadataAttributeMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "key"))
    LogMetadataAttributeMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "value"))
    LogMetadataList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LogMetadata, name: "member"))
    Metadata.add_member(:metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricMetadataList, name: "metrics"))
    Metadata.add_member(:semantics, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeSemantics, name: "semantics"))
    Metadata.add_member(:logs, ::Smithy::Schema::Shapes::MemberShape.new(target: LogMetadataList, name: "logs"))
    Metadata.add_member(:traces, ::Smithy::Schema::Shapes::MemberShape.new(target: TraceMetadataList, name: "traces"))
    Metadata.type = Types::Metadata
    MetadataAttributeMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "key"))
    MetadataAttributeMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "value"))
    MetricMetadata.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name"))
    MetricMetadata.add_member(:preferred_stat, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "preferredStat"))
    MetricMetadata.add_member(:metric_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "metricType"))
    MetricMetadata.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: MetadataAttributeMap, name: "attributes"))
    MetricMetadata.add_member(:semantics, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricSemantics, name: "semantics"))
    MetricMetadata.type = Types::MetricMetadata
    MetricMetadataList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricMetadata, name: "member"))
    MetricSemantics.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "description"))
    MetricSemantics.add_member(:unit, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "unit"))
    MetricSemantics.type = Types::MetricSemantics
    NoData.add_member(:treat_as, ::Smithy::Schema::Shapes::MemberShape.new(target: AlertState, name: "treatAs", traits: {"smithy.api#required" => {}}))
    NoData.type = Types::NoData
    Node.add_member(:node_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ContextGraphId, name: "nodeId"))
    Node.add_member(:node_type, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeType, name: "nodeType"))
    Node.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ContextGraphName, name: "name"))
    Node.add_member(:alternate_names, ::Smithy::Schema::Shapes::MemberShape.new(target: StringSet, name: "alternateNames"))
    Node.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: IntelligenceTagMap, name: "tags"))
    Node.add_member(:node_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeProperties, name: "nodeProperties"))
    Node.add_member(:telemetry_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: ContextGraphAttributeMap, name: "telemetryAttributes"))
    Node.add_member(:operation_details, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationDetails, name: "operationDetails"))
    Node.add_member(:signal_types, ::Smithy::Schema::Shapes::MemberShape.new(target: SignalSet, name: "signalTypes"))
    Node.add_member(:sources, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceSet, name: "sources"))
    Node.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: Metadata, name: "metadata"))
    Node.add_member(:first_observed_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "firstObservedAt"))
    Node.add_member(:last_observed_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "lastObservedAt"))
    Node.add_member(:edges, ::Smithy::Schema::Shapes::MemberShape.new(target: EdgeList, name: "edges"))
    Node.type = Types::Node
    NodeCategory.add_member(:gen_ai_agent, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GEN_AI_AGENT", traits: {"smithy.api#enumValue" => "GEN_AI_AGENT"}))
    NodeCategory.add_member(:gen_ai_model, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GEN_AI_MODEL", traits: {"smithy.api#enumValue" => "GEN_AI_MODEL"}))
    NodeCategory.add_member(:database, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DATABASE", traits: {"smithy.api#enumValue" => "DATABASE"}))
    NodeCategory.add_member(:messaging_queue, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MESSAGING_QUEUE", traits: {"smithy.api#enumValue" => "MESSAGING_QUEUE"}))
    NodeCategory.add_member(:compute, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPUTE", traits: {"smithy.api#enumValue" => "COMPUTE"}))
    NodeCategory.add_member(:storage, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STORAGE", traits: {"smithy.api#enumValue" => "STORAGE"}))
    NodeCategory.add_member(:network, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NETWORK", traits: {"smithy.api#enumValue" => "NETWORK"}))
    NodeCategorySet.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeCategory, name: "member"))
    NodeFilters.add_member(:node_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ContextGraphId, name: "nodeId"))
    NodeFilters.add_member(:node_type, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeType, name: "nodeType"))
    NodeFilters.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ContextGraphName, name: "name"))
    NodeFilters.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyFilterList, name: "tags"))
    NodeFilters.add_member(:telemetry_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyFilterList, name: "telemetryAttributes"))
    NodeFilters.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: StringSet, name: "region"))
    NodeFilters.add_member(:cloud_provider, ::Smithy::Schema::Shapes::MemberShape.new(target: StringSet, name: "cloudProvider"))
    NodeFilters.add_member(:source_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StringSet, name: "sourceAccountId"))
    NodeFilters.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: StringSet, name: "namespace"))
    NodeFilters.add_member(:category, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeCategorySet, name: "category"))
    NodeFilters.add_member(:stage, ::Smithy::Schema::Shapes::MemberShape.new(target: StringSet, name: "stage"))
    NodeFilters.add_member(:sources, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceSet, name: "sources"))
    NodeFilters.type = Types::NodeFilters
    NodeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Node, name: "member"))
    NodeProperties.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "region"))
    NodeProperties.add_member(:cloud_provider, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "cloudProvider"))
    NodeProperties.add_member(:source_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "sourceAccountId"))
    NodeProperties.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "namespace"))
    NodeProperties.add_member(:category, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeCategory, name: "category"))
    NodeProperties.add_member(:stage, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "stage"))
    NodeProperties.type = Types::NodeProperties
    NodeSemantics.add_member(:purpose, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "purpose"))
    NodeSemantics.add_member(:language, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "language"))
    NodeSemantics.add_member(:framework, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "framework"))
    NodeSemantics.add_member(:kind, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "kind"))
    NodeSemantics.add_member(:repository, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "repository"))
    NodeSemantics.type = Types::NodeSemantics
    NodeType.add_member(:service, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SERVICE", traits: {"smithy.api#enumValue" => "SERVICE"}))
    NodeType.add_member(:resource, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESOURCE", traits: {"smithy.api#enumValue" => "RESOURCE"}))
    NodeType.add_member(:remote_service, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REMOTE_SERVICE", traits: {"smithy.api#enumValue" => "REMOTE_SERVICE"}))
    NotificationRule.add_member(:trigger, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationTrigger, name: "trigger", traits: {"smithy.api#required" => {}}))
    NotificationRule.add_member(:target, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationTarget, name: "target", traits: {"smithy.api#required" => {}}))
    NotificationRule.type = Types::NotificationRule
    NotificationRuleList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationRule, name: "member"))
    NotificationStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    NotificationStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    NotificationTarget.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationTargetType, name: "type", traits: {"smithy.api#required" => {}}))
    NotificationTarget.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "arn", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#required" => {}}))
    NotificationTarget.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationTargetMetadata, name: "metadata", traits: {"smithy.api#length" => {"max" => 20}}))
    NotificationTarget.type = Types::NotificationTarget
    NotificationTargetMetadata.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "key", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}}))
    NotificationTargetMetadata.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "value", traits: {"smithy.api#length" => {"max" => 1024}}))
    NotificationTargetType.add_member(:sns, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SNS", traits: {"smithy.api#enumValue" => "sns"}))
    NotificationTargetType.add_member(:slack, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SLACK", traits: {"smithy.api#enumValue" => "slack"}))
    NotificationTargetType.add_member(:pagerduty, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PAGERDUTY", traits: {"smithy.api#enumValue" => "pagerduty"}))
    NotificationTrigger.add_member(:state_values, ::Smithy::Schema::Shapes::MemberShape.new(target: AlertStateList, name: "stateValues"))
    NotificationTrigger.type = Types::NotificationTrigger
    OAuthClientCredential.add_member(:client_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "clientId", traits: {"smithy.api#required" => {}}))
    OAuthClientCredential.add_member(:client_secret, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "clientSecret", traits: {"smithy.api#required" => {}}))
    OAuthClientCredential.add_member(:provider_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "providerId"))
    OAuthClientCredential.type = Types::OAuthClientCredential
    OAuthCodeCredential.add_member(:auth_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "authCode", traits: {"smithy.api#length" => {"min" => 1, "max" => 4096}, "smithy.api#required" => {}}))
    OAuthCodeCredential.type = Types::OAuthCodeCredential
    OmniDashboard.add_member(:dashboard_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DashboardId, name: "dashboardId", traits: {"smithy.api#required" => {}}))
    OmniDashboard.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "arn", traits: {"smithy.api#required" => {}}))
    OmniDashboard.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name", traits: {"smithy.api#required" => {}}))
    OmniDashboard.add_member(:body, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "body", traits: {"smithy.api#required" => {}}))
    OmniDashboard.add_member(:created_by, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "createdBy", traits: {"smithy.api#required" => {}}))
    OmniDashboard.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "description"))
    OmniDashboard.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    OmniDashboard.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#required" => {}}))
    OmniDashboard.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    OmniDashboard.type = Types::OmniDashboard
    OmniDashboardSummary.add_member(:dashboard_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DashboardId, name: "dashboardId", traits: {"smithy.api#required" => {}}))
    OmniDashboardSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "arn", traits: {"smithy.api#required" => {}}))
    OmniDashboardSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name", traits: {"smithy.api#required" => {}}))
    OmniDashboardSummary.add_member(:created_by, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "createdBy", traits: {"smithy.api#required" => {}}))
    OmniDashboardSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "description"))
    OmniDashboardSummary.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    OmniDashboardSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#required" => {}}))
    OmniDashboardSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    OmniDashboardSummary.type = Types::OmniDashboardSummary
    OmniDashboardSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: OmniDashboardSummary, name: "member"))
    OperationDetails.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationName, name: "key"))
    OperationDetails.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationIdentifierSets, name: "value"))
    OperationIdentifierSet.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationIdentifierKey, name: "key"))
    OperationIdentifierSet.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationIdentifierValue, name: "value"))
    OperationIdentifierSets.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationIdentifierSet, name: "member"))
    OrganizationAccessGrant.add_member(:grant_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GrantId, name: "grantId", traits: {"smithy.api#required" => {}}))
    OrganizationAccessGrant.add_member(:grant_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "grantArn", traits: {"smithy.api#required" => {}}))
    OrganizationAccessGrant.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9_-]+$"}))
    OrganizationAccessGrant.add_member(:domain_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainId, name: "domainId", traits: {"smithy.api#required" => {}}))
    OrganizationAccessGrant.add_member(:principal, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationAccessGrantPrincipal, name: "principal", traits: {"smithy.api#required" => {}}))
    OrganizationAccessGrant.add_member(:permission, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationGrantPermission, name: "permission", traits: {"smithy.api#required" => {}}))
    OrganizationAccessGrant.add_member(:grant_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessGrantType, name: "grantType", traits: {"smithy.api#required" => {}}))
    OrganizationAccessGrant.add_member(:created_by, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "createdBy", traits: {"smithy.api#required" => {}}))
    OrganizationAccessGrant.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#required" => {}}))
    OrganizationAccessGrant.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    OrganizationAccessGrant.type = Types::OrganizationAccessGrant
    OrganizationAccessGrantPrincipal.add_member(:principal_type, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationGrantPrincipalType, name: "principalType", traits: {"smithy.api#required" => {}}))
    OrganizationAccessGrantPrincipal.add_member(:principal_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationPrincipalId, name: "principalId"))
    OrganizationAccessGrantPrincipal.add_member(:principal_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessGrantPrincipalAttributeList, name: "principalAttributes"))
    OrganizationAccessGrantPrincipal.type = Types::OrganizationAccessGrantPrincipal
    OrganizationAccessGrantSummary.add_member(:grant_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GrantId, name: "grantId", traits: {"smithy.api#required" => {}}))
    OrganizationAccessGrantSummary.add_member(:grant_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "grantArn", traits: {"smithy.api#required" => {}}))
    OrganizationAccessGrantSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9_-]+$"}))
    OrganizationAccessGrantSummary.add_member(:domain_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainId, name: "domainId", traits: {"smithy.api#required" => {}}))
    OrganizationAccessGrantSummary.add_member(:principal, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationAccessGrantPrincipal, name: "principal", traits: {"smithy.api#required" => {}}))
    OrganizationAccessGrantSummary.add_member(:permission, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationGrantPermission, name: "permission", traits: {"smithy.api#required" => {}}))
    OrganizationAccessGrantSummary.add_member(:grant_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessGrantType, name: "grantType", traits: {"smithy.api#required" => {}}))
    OrganizationAccessGrantSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#required" => {}}))
    OrganizationAccessGrantSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    OrganizationAccessGrantSummary.type = Types::OrganizationAccessGrantSummary
    OrganizationAccessGrantSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationAccessGrantSummary, name: "member"))
    OrganizationCredentialType.add_member(:space_operation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SPACE_OPERATION", traits: {"smithy.api#enumValue" => "SPACE_OPERATION"}))
    OrganizationDomain.add_member(:domain_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainId, name: "domainId", traits: {"smithy.api#required" => {}}))
    OrganizationDomain.add_member(:domain_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "domainArn", traits: {"smithy.api#required" => {}}))
    OrganizationDomain.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name", traits: {"smithy.api#length" => {"min" => 3, "max" => 63}, "smithy.api#pattern" => "^[a-z0-9]+(-[a-z0-9]+)*$"}))
    OrganizationDomain.add_member(:domain_endpoint_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "domainEndpointUrl", traits: {"smithy.api#required" => {}}))
    OrganizationDomain.add_member(:custom_endpoint_urls, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "customEndpointUrls"))
    OrganizationDomain.add_member(:organization_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "organizationId", traits: {"smithy.api#required" => {}}))
    OrganizationDomain.add_member(:owner_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "ownerAccountId", traits: {"smithy.api#required" => {}}))
    OrganizationDomain.add_member(:identity_providers, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityProviderList, name: "identityProviders", traits: {"smithy.api#required" => {}}))
    OrganizationDomain.add_member(:identity_provider_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityProviderConfiguration, name: "identityProviderConfiguration"))
    OrganizationDomain.add_member(:identity_center_application_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "identityCenterApplicationArn"))
    OrganizationDomain.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "region", traits: {"smithy.api#required" => {}}))
    OrganizationDomain.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainStatus, name: "status", traits: {"smithy.api#required" => {}}))
    OrganizationDomain.add_member(:domain_access_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArn, name: "domainAccessRoleArn"))
    OrganizationDomain.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#required" => {}}))
    OrganizationDomain.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    OrganizationDomain.type = Types::OrganizationDomain
    OrganizationGrantPermission.add_member(:admin, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ADMIN", traits: {"smithy.api#enumValue" => "ADMIN"}))
    OrganizationGrantPrincipalType.add_member(:idc_user, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IDC_USER", traits: {"smithy.api#enumValue" => "IDC_USER"}))
    OrganizationGrantPrincipalType.add_member(:idc_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IDC_GROUP", traits: {"smithy.api#enumValue" => "IDC_GROUP"}))
    OrganizationGrantPrincipalType.add_member(:iam_user, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IAM_USER", traits: {"smithy.api#enumValue" => "IAM_USER"}))
    OrganizationGrantPrincipalType.add_member(:iam_role, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IAM_ROLE", traits: {"smithy.api#enumValue" => "IAM_ROLE"}))
    OrganizationGrantPrincipalType.add_member(:iam_root, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IAM_ROOT", traits: {"smithy.api#enumValue" => "IAM_ROOT"}))
    PartialResults.add_member(:partial_results_detected, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "partialResultsDetected"))
    PartialResults.type = Types::PartialResults
    PrincipalSearchResult.add_member(:principal_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PrincipalId, name: "principalId", traits: {"smithy.api#required" => {}}))
    PrincipalSearchResult.add_member(:principal_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PrincipalType, name: "principalType", traits: {"smithy.api#required" => {}}))
    PrincipalSearchResult.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "displayName", traits: {"smithy.api#required" => {}}))
    PrincipalSearchResult.add_member(:user_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "userName"))
    PrincipalSearchResult.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "description"))
    PrincipalSearchResult.type = Types::PrincipalSearchResult
    PrincipalSearchResultList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PrincipalSearchResult, name: "member"))
    PrincipalType.add_member(:user, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "USER", traits: {"smithy.api#enumValue" => "USER"}))
    PrincipalType.add_member(:group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GROUP", traits: {"smithy.api#enumValue" => "GROUP"}))
    PutIntelligenceConfigurationInput.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IntelligenceKmsKeyArn, name: "kmsKeyArn"))
    PutIntelligenceConfigurationInput.add_member(:remove_kms_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "removeKmsKey"))
    PutIntelligenceConfigurationInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    PutIntelligenceConfigurationInput.type = Types::PutIntelligenceConfigurationInput
    PutIntelligenceConfigurationOutput.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "accountId", traits: {"smithy.api#required" => {}}))
    PutIntelligenceConfigurationOutput.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IntelligenceKmsKeyArn, name: "kmsKeyArn"))
    PutIntelligenceConfigurationOutput.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    PutIntelligenceConfigurationOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#required" => {}}))
    PutIntelligenceConfigurationOutput.type = Types::PutIntelligenceConfigurationOutput
    QueryLanguage.add_member(:sql, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SQL", traits: {"smithy.api#enumValue" => "SQL"}))
    QueryLanguage.add_member(:promql, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PROMQL", traits: {"smithy.api#enumValue" => "PROMQL"}))
    QueryStatistics.add_member(:bytes_scanned, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "bytesScanned"))
    QueryStatistics.add_member(:percent_complete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "percentComplete"))
    QueryStatistics.add_member(:records_scanned, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "recordsScanned"))
    QueryStatistics.add_member(:records_matched, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "recordsMatched"))
    QueryStatistics.add_member(:partial_results, ::Smithy::Schema::Shapes::MemberShape.new(target: PartialResults, name: "partialResults"))
    QueryStatistics.type = Types::QueryStatistics
    QueryStatus.add_member(:running, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RUNNING", traits: {"smithy.api#enumValue" => "Running"}))
    QueryStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "Failed"}))
    QueryStatus.add_member(:complete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETE", traits: {"smithy.api#enumValue" => "Complete"}))
    QueryStatus.add_member(:cancelled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANCELLED", traits: {"smithy.api#enumValue" => "Cancelled"}))
    ResourceArnList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member"))
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceType"))
    ResourceNotFoundException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceId"))
    ResourceNotFoundException.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "errorCode"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceScope.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceType", traits: {"smithy.api#required" => {}}))
    ResourceScope.add_member(:resource_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArnList, name: "resourceArns"))
    ResourceScope.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceScopeTagMap, name: "tags"))
    ResourceScope.add_member(:signal_types, ::Smithy::Schema::Shapes::MemberShape.new(target: SignalTypeList, name: "signalTypes"))
    ResourceScope.add_member(:row_scope_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: RowScopeGroupList, name: "rowScopeGroups"))
    ResourceScope.type = Types::ResourceScope
    ResourceScopeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceScope, name: "member"))
    ResourceScopeTagMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "key"))
    ResourceScopeTagMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "value"))
    Row.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "key"))
    Row.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "value"))
    RowList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Row, name: "member"))
    RowScope.add_member(:field, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "field", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#required" => {}}))
    RowScope.add_member(:operator, ::Smithy::Schema::Shapes::MemberShape.new(target: RowScopeOperator, name: "operator", traits: {"smithy.api#required" => {}}))
    RowScope.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: RowScopeValueList, name: "values", traits: {"smithy.api#required" => {}}))
    RowScope.type = Types::RowScope
    RowScopeGroup.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RowScope, name: "member"))
    RowScopeGroupList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RowScopeGroup, name: "member"))
    RowScopeOperator.add_member(:in, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN", traits: {"smithy.api#enumValue" => "IN"}))
    RowScopeValueList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RowScopeValue, name: "member"))
    Rule.add_member(:telemetry_rule, Types::Rule::TelemetryRule, ::Smithy::Schema::Shapes::MemberShape.new(target: TelemetryRule, name: "telemetryRule"))
    Rule.add_member(:unknown, Types::Rule::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    Rule.type = Types::Rule
    Scope.add_member(:account, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACCOUNT", traits: {"smithy.api#enumValue" => "ACCOUNT"}))
    Scope.add_member(:organization, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ORGANIZATION", traits: {"smithy.api#enumValue" => "ORGANIZATION"}))
    ScopedActionNameList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ScopedActionName, name: "member"))
    ScopedActions.add_member(:actions, ::Smithy::Schema::Shapes::MemberShape.new(target: ScopedActionNameList, name: "actions", traits: {"smithy.api#required" => {}}))
    ScopedActions.add_member(:resources, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceScopeList, name: "resources"))
    ScopedActions.add_member(:context_conditions, ::Smithy::Schema::Shapes::MemberShape.new(target: ContextConditionsMap, name: "contextConditions"))
    ScopedActions.type = Types::ScopedActions
    ScopedActionsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ScopedActions, name: "member"))
    SearchPrincipalsInput.add_member(:domain_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainId, name: "domainId", traits: {"smithy.api#required" => {}}))
    SearchPrincipalsInput.add_member(:search_query, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "searchQuery", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#required" => {}}))
    SearchPrincipalsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 50}}))
    SearchPrincipalsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchPrincipalsNextToken, name: "nextToken"))
    SearchPrincipalsInput.type = Types::SearchPrincipalsInput
    SearchPrincipalsOutput.add_member(:results, ::Smithy::Schema::Shapes::MemberShape.new(target: PrincipalSearchResultList, name: "results", traits: {"smithy.api#required" => {}}))
    SearchPrincipalsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchPrincipalsNextToken, name: "nextToken"))
    SearchPrincipalsOutput.type = Types::SearchPrincipalsOutput
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    SessionSummary.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "sessionId", traits: {"smithy.api#required" => {}}))
    SessionSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt"))
    SessionSummary.add_member(:last_activity_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "lastActivityAt"))
    SessionSummary.add_member(:session_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "sessionName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^([a-zA-Z0-9_-]+|/aws/[a-zA-Z0-9_-]+(/[a-zA-Z0-9_-]+)?)$"}))
    SessionSummary.type = Types::SessionSummary
    SessionSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionSummary, name: "member"))
    Signal.add_member(:logs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LOGS", traits: {"smithy.api#enumValue" => "LOGS"}))
    Signal.add_member(:metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "METRICS", traits: {"smithy.api#enumValue" => "METRICS"}))
    Signal.add_member(:traces, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TRACES", traits: {"smithy.api#enumValue" => "TRACES"}))
    Signal.add_member(:config, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONFIG", traits: {"smithy.api#enumValue" => "CONFIG"}))
    Signal.add_member(:unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNKNOWN", traits: {"smithy.api#enumValue" => "UNKNOWN"}))
    SignalSet.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Signal, name: "member"))
    SignalType.add_member(:logs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LOGS", traits: {"smithy.api#enumValue" => "LOGS"}))
    SignalType.add_member(:traces, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TRACES", traits: {"smithy.api#enumValue" => "TRACES"}))
    SignalTypeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SignalType, name: "member"))
    Source.add_member(:vpc_flow_log, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VPC_FLOW_LOG", traits: {"smithy.api#enumValue" => "VPC_FLOW_LOG"}))
    Source.add_member(:cloudtrail, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CLOUDTRAIL", traits: {"smithy.api#enumValue" => "CLOUDTRAIL"}))
    Source.add_member(:iam_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IAM_POLICY", traits: {"smithy.api#enumValue" => "IAM_POLICY"}))
    Source.add_member(:code_semantics, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CODE_SEMANTICS", traits: {"smithy.api#enumValue" => "CODE_SEMANTICS"}))
    Source.add_member(:telemetry, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TELEMETRY", traits: {"smithy.api#enumValue" => "TELEMETRY"}))
    Source.add_member(:azure_vnet_flow_log, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AZURE_VNET_FLOW_LOG", traits: {"smithy.api#enumValue" => "AZURE_VNET_FLOW_LOG"}))
    Source.add_member(:elb_access_log, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ELB_ACCESS_LOG", traits: {"smithy.api#enumValue" => "ELB_ACCESS_LOG"}))
    Source.add_member(:cloudfront_access_log, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CLOUDFRONT_ACCESS_LOG", traits: {"smithy.api#enumValue" => "CLOUDFRONT_ACCESS_LOG"}))
    Source.add_member(:s3_access_log, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "S3_ACCESS_LOG", traits: {"smithy.api#enumValue" => "S3_ACCESS_LOG"}))
    Source.add_member(:waf_access_log, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WAF_ACCESS_LOG", traits: {"smithy.api#enumValue" => "WAF_ACCESS_LOG"}))
    Source.add_member(:aws_integration, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_INTEGRATION", traits: {"smithy.api#enumValue" => "AWS_INTEGRATION"}))
    Source.add_member(:config, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONFIG", traits: {"smithy.api#enumValue" => "CONFIG"}))
    SourceSet.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Source, name: "member"))
    Space.add_member(:space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SpaceId, name: "spaceId", traits: {"smithy.api#required" => {}}))
    Space.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name", traits: {"smithy.api#required" => {}}))
    Space.add_member(:space_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "spaceArn", traits: {"smithy.api#required" => {}}))
    Space.add_member(:domain_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "domainArn"))
    Space.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "region", traits: {"smithy.api#required" => {}}))
    Space.add_member(:owner_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "ownerAccountId", traits: {"smithy.api#required" => {}}))
    Space.add_member(:data_access_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "dataAccessRoleArn", traits: {"smithy.api#required" => {}}))
    Space.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#required" => {}}))
    Space.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    Space.add_member(:agent_core_evaluation_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "agentCoreEvaluationRoleArn"))
    Space.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: SpaceStatus, name: "status", traits: {"smithy.api#required" => {}}))
    Space.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "statusReason"))
    Space.add_member(:encryption_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionConfiguration, name: "encryptionConfiguration"))
    Space.type = Types::Space
    SpaceCredentialRequestContext.add_member(:space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SpaceId, name: "spaceId"))
    SpaceCredentialRequestContext.add_member(:domain_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainId, name: "domainId"))
    SpaceCredentialRequestContext.add_member(:target_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "targetAccountId"))
    SpaceCredentialRequestContext.type = Types::SpaceCredentialRequestContext
    SpaceStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    SpaceStatus.add_member(:suspended, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUSPENDED", traits: {"smithy.api#enumValue" => "SUSPENDED"}))
    SpaceStatus.add_member(:moving, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MOVING", traits: {"smithy.api#enumValue" => "MOVING"}))
    SpaceSummary.add_member(:space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SpaceId, name: "spaceId", traits: {"smithy.api#required" => {}}))
    SpaceSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name", traits: {"smithy.api#required" => {}}))
    SpaceSummary.add_member(:space_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "spaceArn", traits: {"smithy.api#required" => {}}))
    SpaceSummary.add_member(:domain_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "domainArn"))
    SpaceSummary.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "region", traits: {"smithy.api#required" => {}}))
    SpaceSummary.add_member(:owner_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "ownerAccountId", traits: {"smithy.api#required" => {}}))
    SpaceSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: SpaceStatus, name: "status", traits: {"smithy.api#required" => {}}))
    SpaceSummary.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "statusReason"))
    SpaceSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#required" => {}}))
    SpaceSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    SpaceSummary.type = Types::SpaceSummary
    SpaceSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SpaceSummary, name: "member"))
    StartTelemetryQueryRequest.add_member(:query_string, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "queryString", traits: {"smithy.api#length" => {"min" => 1, "max" => 64000}, "smithy.api#required" => {}}))
    StartTelemetryQueryRequest.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "sessionId", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-z0-9-]+$", "smithy.api#required" => {}}))
    StartTelemetryQueryRequest.type = Types::StartTelemetryQueryRequest
    StartTelemetryQueryResponse.add_member(:query_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "queryId", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-z0-9-]+$", "smithy.api#required" => {}}))
    StartTelemetryQueryResponse.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "sessionId", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-z0-9-]+$", "smithy.api#required" => {}}))
    StartTelemetryQueryResponse.type = Types::StartTelemetryQueryResponse
    StartTelemetryQuerySessionRequest.add_member(:session_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "sessionName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^([a-zA-Z0-9_-]+|/aws/[a-zA-Z0-9_-]+(/[a-zA-Z0-9_-]+)?)$"}))
    StartTelemetryQuerySessionRequest.type = Types::StartTelemetryQuerySessionRequest
    StartTelemetryQuerySessionResponse.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "sessionId", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-z0-9-]+$", "smithy.api#required" => {}}))
    StartTelemetryQuerySessionResponse.type = Types::StartTelemetryQuerySessionResponse
    StopTelemetryQueryRequest.add_member(:query_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "queryId", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-z0-9-]+$", "smithy.api#required" => {}}))
    StopTelemetryQueryRequest.type = Types::StopTelemetryQueryRequest
    StopTelemetryQueryResponse.type = Types::StopTelemetryQueryResponse
    StopTelemetryQuerySessionRequest.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "sessionId", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-z0-9-]+$", "smithy.api#required" => {}}))
    StopTelemetryQuerySessionRequest.type = Types::StopTelemetryQuerySessionRequest
    StopTelemetryQuerySessionResponse.type = Types::StopTelemetryQuerySessionResponse
    StringList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member"))
    StringMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "key", traits: {"smithy.api#length" => {"max" => 128}}))
    StringMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "value", traits: {"smithy.api#length" => {"max" => 4096}}))
    StringSet.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member"))
    TagMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "key"))
    TagMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "value"))
    TelemetryRule.add_member(:query, ::Smithy::Schema::Shapes::MemberShape.new(target: AlertRuleQuery, name: "query"))
    TelemetryRule.add_member(:condition, ::Smithy::Schema::Shapes::MemberShape.new(target: AlertCondition, name: "condition"))
    TelemetryRule.add_member(:evaluation, ::Smithy::Schema::Shapes::MemberShape.new(target: AlertEvaluation, name: "evaluation"))
    TelemetryRule.add_member(:no_data, ::Smithy::Schema::Shapes::MemberShape.new(target: NoData, name: "noData"))
    TelemetryRule.type = Types::TelemetryRule
    TelemetryType.add_member(:logs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LOGS", traits: {"smithy.api#enumValue" => "LOGS"}))
    TelemetryType.add_member(:traces, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TRACES", traits: {"smithy.api#enumValue" => "TRACES"}))
    ThresholdMode.add_member(:count_of_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COUNT_OF_RESULTS", traits: {"smithy.api#enumValue" => "COUNT_OF_RESULTS"}))
    ThresholdMode.add_member(:field_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FIELD_VALUE", traits: {"smithy.api#enumValue" => "FIELD_VALUE"}))
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ThrottlingException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "retryAfterSeconds"))
    ThrottlingException.type = Types::ThrottlingException
    TraceMetadata.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: TraceMetadataAttributeMap, name: "attributes"))
    TraceMetadata.type = Types::TraceMetadata
    TraceMetadataAttributeMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "key"))
    TraceMetadataAttributeMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "value"))
    TraceMetadataList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TraceMetadata, name: "member"))
    UpdateAccessProfileInput.add_member(:space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SpaceId, name: "spaceId", traits: {"smithy.api#required" => {}}))
    UpdateAccessProfileInput.add_member(:profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileId, name: "profileId", traits: {"smithy.api#required" => {}}))
    UpdateAccessProfileInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessProfileName, name: "name"))
    UpdateAccessProfileInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "description", traits: {"smithy.api#length" => {"max" => 1024}}))
    UpdateAccessProfileInput.type = Types::UpdateAccessProfileInput
    UpdateAccessProfileOutput.add_member(:access_profile, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessProfile, name: "accessProfile", traits: {"smithy.api#required" => {}}))
    UpdateAccessProfileOutput.type = Types::UpdateAccessProfileOutput
    UpdateAlertInput.add_member(:space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SpaceId, name: "spaceId", traits: {"smithy.api#required" => {}}))
    UpdateAlertInput.add_member(:alert_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AlertId, name: "alertId", traits: {"smithy.api#required" => {}}))
    UpdateAlertInput.add_member(:profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileId, name: "profileId"))
    UpdateAlertInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9_.@~()-]+$"}))
    UpdateAlertInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "description", traits: {"smithy.api#length" => {"max" => 1024}}))
    UpdateAlertInput.add_member(:rule, ::Smithy::Schema::Shapes::MemberShape.new(target: Rule, name: "rule"))
    UpdateAlertInput.add_member(:notifications_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "notificationsEnabled"))
    UpdateAlertInput.add_member(:notification_rules, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationRuleList, name: "notificationRules"))
    UpdateAlertInput.type = Types::UpdateAlertInput
    UpdateAlertOutput.type = Types::UpdateAlertOutput
    UpdateDomainForOrganizationInput.add_member(:domain_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainId, name: "domainId", traits: {"smithy.api#required" => {}}))
    UpdateDomainForOrganizationInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name", traits: {"smithy.api#length" => {"min" => 3, "max" => 63}, "smithy.api#pattern" => "^[a-z0-9]+(-[a-z0-9]+)*$"}))
    UpdateDomainForOrganizationInput.add_member(:identity_providers, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityProviderList, name: "identityProviders"))
    UpdateDomainForOrganizationInput.add_member(:identity_provider_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityProviderConfiguration, name: "identityProviderConfiguration"))
    UpdateDomainForOrganizationInput.type = Types::UpdateDomainForOrganizationInput
    UpdateDomainForOrganizationOutput.add_member(:organization_domain, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationDomain, name: "organizationDomain", traits: {"smithy.api#required" => {}}))
    UpdateDomainForOrganizationOutput.type = Types::UpdateDomainForOrganizationOutput
    UpdateDomainInput.add_member(:domain_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainId, name: "domainId", traits: {"smithy.api#required" => {}}))
    UpdateDomainInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name", traits: {"smithy.api#length" => {"min" => 3, "max" => 63}, "smithy.api#pattern" => "^[a-z0-9]+(-[a-z0-9]+)*$"}))
    UpdateDomainInput.add_member(:identity_providers, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityProviderList, name: "identityProviders"))
    UpdateDomainInput.add_member(:identity_provider_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityProviderConfiguration, name: "identityProviderConfiguration"))
    UpdateDomainInput.type = Types::UpdateDomainInput
    UpdateDomainOutput.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: Domain, name: "domain", traits: {"smithy.api#required" => {}}))
    UpdateDomainOutput.type = Types::UpdateDomainOutput
    UpdateIntegrationInput.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationIdentifier, name: "identifier", traits: {"smithy.api#required" => {}}))
    UpdateIntegrationInput.add_member(:credential, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationCredential, name: "credential"))
    UpdateIntegrationInput.add_member(:integration_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: StringMap, name: "integrationAttributes"))
    UpdateIntegrationInput.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "roleArn"))
    UpdateIntegrationInput.type = Types::UpdateIntegrationInput
    UpdateIntegrationOutput.add_member(:integration, ::Smithy::Schema::Shapes::MemberShape.new(target: Integration, name: "integration"))
    UpdateIntegrationOutput.type = Types::UpdateIntegrationOutput
    UpdateOmniDashboardInput.add_member(:space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SpaceId, name: "spaceId", traits: {"smithy.api#required" => {}}))
    UpdateOmniDashboardInput.add_member(:dashboard_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DashboardId, name: "dashboardId", traits: {"smithy.api#required" => {}}))
    UpdateOmniDashboardInput.add_member(:body, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "body", traits: {"smithy.api#length" => {"min" => 1, "max" => 1048576}}))
    UpdateOmniDashboardInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9_.@~()-]+$"}))
    UpdateOmniDashboardInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "description", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}}))
    UpdateOmniDashboardInput.type = Types::UpdateOmniDashboardInput
    UpdateOmniDashboardOutput.add_member(:omni_dashboard, ::Smithy::Schema::Shapes::MemberShape.new(target: OmniDashboard, name: "omniDashboard", traits: {"smithy.api#required" => {}}))
    UpdateOmniDashboardOutput.type = Types::UpdateOmniDashboardOutput
    UpdateSpaceInput.add_member(:space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SpaceId, name: "spaceId", traits: {"smithy.api#required" => {}}))
    UpdateSpaceInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name", traits: {"smithy.api#length" => {"min" => 3, "max" => 64}, "smithy.api#pattern" => "^[a-z0-9]+(-[a-z0-9]+)*$"}))
    UpdateSpaceInput.add_member(:agent_core_evaluation_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "agentCoreEvaluationRoleArn"))
    UpdateSpaceInput.add_member(:encryption_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionConfiguration, name: "encryptionConfiguration"))
    UpdateSpaceInput.type = Types::UpdateSpaceInput
    UpdateSpaceOutput.add_member(:space, ::Smithy::Schema::Shapes::MemberShape.new(target: Space, name: "space", traits: {"smithy.api#required" => {}}))
    UpdateSpaceOutput.type = Types::UpdateSpaceOutput
    UpdateViewRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ViewName, name: "name", traits: {"smithy.api#required" => {}}))
    UpdateViewRequest.add_member(:definition, ::Smithy::Schema::Shapes::MemberShape.new(target: ViewDefinition, name: "definition"))
    UpdateViewRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ViewDescription, name: "description"))
    UpdateViewRequest.type = Types::UpdateViewRequest
    UpdateViewResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name", traits: {"smithy.api#required" => {}}))
    UpdateViewResponse.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ViewType, name: "type", traits: {"smithy.api#required" => {}}))
    UpdateViewResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "description"))
    UpdateViewResponse.add_member(:definition, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "definition", traits: {"smithy.api#required" => {}}))
    UpdateViewResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#required" => {}}))
    UpdateViewResponse.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    UpdateViewResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "arn", traits: {"smithy.api#required" => {}}))
    UpdateViewResponse.type = Types::UpdateViewResponse
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "errorCode"))
    ValidationException.type = Types::ValidationException
    ViewSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name", traits: {"smithy.api#required" => {}}))
    ViewSummary.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ViewType, name: "type", traits: {"smithy.api#required" => {}}))
    ViewSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "description"))
    ViewSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#required" => {}}))
    ViewSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    ViewSummary.type = Types::ViewSummary
    ViewSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ViewSummary, name: "member"))
    ViewType.add_member(:user, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "USER", traits: {"smithy.api#enumValue" => "USER"}))
    ViewType.add_member(:managed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MANAGED", traits: {"smithy.api#enumValue" => "MANAGED"}))

    CloudWatchOmniFrontend = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.cloudwatchomni#CloudWatchOmniFrontend"
      service.name = "CloudWatchOmniFrontend"
      service.version = "2025-01-01"
      service.traits = {"aws.api#service" => {"sdkId" => "CloudWatchOmni", "arnNamespace" => "cloudwatch", "endpointPrefix" => "cloudwatch-omni"}, "aws.auth#sigv4" => {"name" => "cloudwatch"}, "aws.endpoints#dualStackOnlyEndpoints" => {}, "aws.endpoints#standardRegionalEndpoints" => {}, "smithy.api#title" => "CloudWatch Omni", "smithy.protocols#rpcv2Cbor" => {}, "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}, "Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://cloudwatch-omni-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://cloudwatch-omni.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 6, "nodes" => "/////wAAAAH/////AAAAAAAAAAYAAAADAAAAAQAAAAQF9eEFAAAAAgAAAAUF9eEFAAAAAwX14QMF9eEEAAAAAwX14QEF9eEC"}}
      service.add_operation(:create_access_grant, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchomni#CreateAccessGrant"
        operation.name = "CreateAccessGrant"
        operation.input = CreateAccessGrantInput
        operation.output = CreateAccessGrantOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"name" => "CreateAccessGrant"}}
      end)
      service.add_operation(:create_access_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchomni#CreateAccessProfile"
        operation.name = "CreateAccessProfile"
        operation.input = CreateAccessProfileInput
        operation.output = CreateAccessProfileOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"name" => "CreateAccessProfile"}}
      end)
      service.add_operation(:create_alert, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchomni#CreateAlert"
        operation.name = "CreateAlert"
        operation.input = CreateAlertInput
        operation.output = CreateAlertOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"name" => "CreateAlert"}}
      end)
      service.add_operation(:create_domain, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchomni#CreateDomain"
        operation.name = "CreateDomain"
        operation.input = CreateDomainInput
        operation.output = CreateDomainOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"name" => "CreateDomain"}}
      end)
      service.add_operation(:create_domain_access_grant_for_organization, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchomni#CreateDomainAccessGrantForOrganization"
        operation.name = "CreateDomainAccessGrantForOrganization"
        operation.input = CreateDomainAccessGrantForOrganizationInput
        operation.output = CreateDomainAccessGrantForOrganizationOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"name" => "CreateDomainAccessGrantForOrganization"}}
      end)
      service.add_operation(:create_domain_for_organization, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchomni#CreateDomainForOrganization"
        operation.name = "CreateDomainForOrganization"
        operation.input = CreateDomainForOrganizationInput
        operation.output = CreateDomainForOrganizationOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"name" => "CreateDomainForOrganization"}}
      end)
      service.add_operation(:create_integration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchomni#CreateIntegration"
        operation.name = "CreateIntegration"
        operation.input = CreateIntegrationInput
        operation.output = CreateIntegrationOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_omni_dashboard, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchomni#CreateOmniDashboard"
        operation.name = "CreateOmniDashboard"
        operation.input = CreateOmniDashboardInput
        operation.output = CreateOmniDashboardOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"name" => "CreateOmniDashboard"}}
      end)
      service.add_operation(:create_one_time_deep_link_code, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchomni#CreateOneTimeDeepLinkCode"
        operation.name = "CreateOneTimeDeepLinkCode"
        operation.input = CreateOneTimeDeepLinkCodeInput
        operation.output = CreateOneTimeDeepLinkCodeOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"name" => "CreateOneTimeDeepLinkCode"}}
      end)
      service.add_operation(:create_space, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchomni#CreateSpace"
        operation.name = "CreateSpace"
        operation.input = CreateSpaceInput
        operation.output = CreateSpaceOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"name" => "CreateSpace"}}
      end)
      service.add_operation(:create_view, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchomni#CreateView"
        operation.name = "CreateView"
        operation.input = CreateViewRequest
        operation.output = CreateViewResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:delete_access_grant, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchomni#DeleteAccessGrant"
        operation.name = "DeleteAccessGrant"
        operation.input = DeleteAccessGrantInput
        operation.output = DeleteAccessGrantOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"name" => "DeleteAccessGrant"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_access_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchomni#DeleteAccessProfile"
        operation.name = "DeleteAccessProfile"
        operation.input = DeleteAccessProfileInput
        operation.output = DeleteAccessProfileOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"name" => "DeleteAccessProfile"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_alert, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchomni#DeleteAlert"
        operation.name = "DeleteAlert"
        operation.input = DeleteAlertInput
        operation.output = DeleteAlertOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"name" => "DeleteAlert"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_domain, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchomni#DeleteDomain"
        operation.name = "DeleteDomain"
        operation.input = DeleteDomainInput
        operation.output = DeleteDomainOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"name" => "DeleteDomain"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_domain_access_grant_for_organization, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchomni#DeleteDomainAccessGrantForOrganization"
        operation.name = "DeleteDomainAccessGrantForOrganization"
        operation.input = DeleteDomainAccessGrantForOrganizationInput
        operation.output = DeleteDomainAccessGrantForOrganizationOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"name" => "DeleteDomainAccessGrantForOrganization"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_domain_for_organization, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchomni#DeleteDomainForOrganization"
        operation.name = "DeleteDomainForOrganization"
        operation.input = DeleteDomainForOrganizationInput
        operation.output = DeleteDomainForOrganizationOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"name" => "DeleteDomainForOrganization"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_integration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchomni#DeleteIntegration"
        operation.name = "DeleteIntegration"
        operation.input = DeleteIntegrationInput
        operation.output = DeleteIntegrationOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_omni_dashboard, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchomni#DeleteOmniDashboard"
        operation.name = "DeleteOmniDashboard"
        operation.input = DeleteOmniDashboardInput
        operation.output = DeleteOmniDashboardOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"name" => "DeleteOmniDashboard"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_space, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchomni#DeleteSpace"
        operation.name = "DeleteSpace"
        operation.input = DeleteSpaceInput
        operation.output = DeleteSpaceOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"name" => "DeleteSpace"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_view, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchomni#DeleteView"
        operation.name = "DeleteView"
        operation.input = DeleteViewRequest
        operation.output = DeleteViewResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_access_grant, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchomni#GetAccessGrant"
        operation.name = "GetAccessGrant"
        operation.input = GetAccessGrantInput
        operation.output = GetAccessGrantOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"name" => "GetAccessGrant"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_access_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchomni#GetAccessProfile"
        operation.name = "GetAccessProfile"
        operation.input = GetAccessProfileInput
        operation.output = GetAccessProfileOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"name" => "GetAccessProfile"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_alert, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchomni#GetAlert"
        operation.name = "GetAlert"
        operation.input = GetAlertInput
        operation.output = GetAlertOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"name" => "GetAlert"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_context_graph, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchomni#GetContextGraph"
        operation.name = "GetContextGraph"
        operation.input = GetContextGraphInput
        operation.output = GetContextGraphOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::GetContextGraph.new
      end)
      service.add_operation(:get_domain, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchomni#GetDomain"
        operation.name = "GetDomain"
        operation.input = GetDomainInput
        operation.output = GetDomainOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"name" => "GetDomain"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_domain_access_grant_for_organization, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchomni#GetDomainAccessGrantForOrganization"
        operation.name = "GetDomainAccessGrantForOrganization"
        operation.input = GetDomainAccessGrantForOrganizationInput
        operation.output = GetDomainAccessGrantForOrganizationOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"name" => "GetDomainAccessGrantForOrganization"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_domain_for_organization, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchomni#GetDomainForOrganization"
        operation.name = "GetDomainForOrganization"
        operation.input = GetDomainForOrganizationInput
        operation.output = GetDomainForOrganizationOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"name" => "GetDomainForOrganization"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_integration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchomni#GetIntegration"
        operation.name = "GetIntegration"
        operation.input = GetIntegrationInput
        operation.output = GetIntegrationOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_intelligence_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchomni#GetIntelligenceConfiguration"
        operation.name = "GetIntelligenceConfiguration"
        operation.input = GetIntelligenceConfigurationInput
        operation.output = GetIntelligenceConfigurationOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_omni_dashboard, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchomni#GetOmniDashboard"
        operation.name = "GetOmniDashboard"
        operation.input = GetOmniDashboardInput
        operation.output = GetOmniDashboardOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"name" => "GetOmniDashboard"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_space, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchomni#GetSpace"
        operation.name = "GetSpace"
        operation.input = GetSpaceInput
        operation.output = GetSpaceOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"name" => "GetSpace"}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "GetSpaceNotFound", "params" => {"spaceId" => "00000000-0000-4000-8000-000000000000"}, "expect" => {"failure" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
      end)
      service.add_operation(:get_space_credentials_for_organization, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchomni#GetSpaceCredentialsForOrganization"
        operation.name = "GetSpaceCredentialsForOrganization"
        operation.input = GetSpaceCredentialsForOrganizationInput
        operation.output = GetSpaceCredentialsForOrganizationOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"name" => "GetSpaceCredentialsForOrganization"}}
      end)
      service.add_operation(:get_telemetry_query_results, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchomni#GetTelemetryQueryResults"
        operation.name = "GetTelemetryQueryResults"
        operation.input = GetTelemetryQueryResultsRequest
        operation.output = GetTelemetryQueryResultsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
        operation[:paginator] = Paginators::GetTelemetryQueryResults.new
      end)
      service.add_operation(:get_view, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchomni#GetView"
        operation.name = "GetView"
        operation.input = GetViewRequest
        operation.output = GetViewResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_access_grants, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchomni#ListAccessGrants"
        operation.name = "ListAccessGrants"
        operation.input = ListAccessGrantsInput
        operation.output = ListAccessGrantsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"name" => "ListAccessGrants"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListAccessGrants.new
      end)
      service.add_operation(:list_access_profiles, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchomni#ListAccessProfiles"
        operation.name = "ListAccessProfiles"
        operation.input = ListAccessProfilesInput
        operation.output = ListAccessProfilesOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"name" => "ListAccessProfiles"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListAccessProfiles.new
      end)
      service.add_operation(:list_alerts, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchomni#ListAlerts"
        operation.name = "ListAlerts"
        operation.input = ListAlertsInput
        operation.output = ListAlertsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"name" => "ListAlerts"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListAlerts.new
      end)
      service.add_operation(:list_domain_access_grants_for_organization, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchomni#ListDomainAccessGrantsForOrganization"
        operation.name = "ListDomainAccessGrantsForOrganization"
        operation.input = ListDomainAccessGrantsForOrganizationInput
        operation.output = ListDomainAccessGrantsForOrganizationOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"name" => "ListDomainAccessGrantsForOrganization"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListDomainAccessGrantsForOrganization.new
      end)
      service.add_operation(:list_domains, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchomni#ListDomains"
        operation.name = "ListDomains"
        operation.input = ListDomainsInput
        operation.output = ListDomainsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"name" => "ListDomains"}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "ListDomainsSuccess", "params" => {}, "expect" => {"success" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
        operation[:paginator] = Paginators::ListDomains.new
      end)
      service.add_operation(:list_integrations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchomni#ListIntegrations"
        operation.name = "ListIntegrations"
        operation.input = ListIntegrationsInput
        operation.output = ListIntegrationsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListIntegrations.new
      end)
      service.add_operation(:list_omni_dashboards, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchomni#ListOmniDashboards"
        operation.name = "ListOmniDashboards"
        operation.input = ListOmniDashboardsInput
        operation.output = ListOmniDashboardsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"name" => "ListOmniDashboards"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListOmniDashboards.new
      end)
      service.add_operation(:list_spaces, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchomni#ListSpaces"
        operation.name = "ListSpaces"
        operation.input = ListSpacesInput
        operation.output = ListSpacesOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"name" => "ListSpaces"}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "ListSpacesSuccess", "params" => {}, "expect" => {"success" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
        operation[:paginator] = Paginators::ListSpaces.new
      end)
      service.add_operation(:list_spaces_for_organization, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchomni#ListSpacesForOrganization"
        operation.name = "ListSpacesForOrganization"
        operation.input = ListSpacesForOrganizationInput
        operation.output = ListSpacesForOrganizationOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"name" => "ListSpacesForOrganization"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListSpacesForOrganization.new
      end)
      service.add_operation(:list_telemetry_fields, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchomni#ListTelemetryFields"
        operation.name = "ListTelemetryFields"
        operation.input = ListTelemetryFieldsRequest
        operation.output = ListTelemetryFieldsResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
        operation[:paginator] = Paginators::ListTelemetryFields.new
      end)
      service.add_operation(:list_telemetry_query_sessions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchomni#ListTelemetryQuerySessions"
        operation.name = "ListTelemetryQuerySessions"
        operation.input = ListTelemetryQuerySessionsRequest
        operation.output = ListTelemetryQuerySessionsResponse
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
        operation[:paginator] = Paginators::ListTelemetryQuerySessions.new
      end)
      service.add_operation(:list_views, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchomni#ListViews"
        operation.name = "ListViews"
        operation.input = ListViewsRequest
        operation.output = ListViewsResponse
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListViews.new
      end)
      service.add_operation(:put_intelligence_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchomni#PutIntelligenceConfiguration"
        operation.name = "PutIntelligenceConfiguration"
        operation.input = PutIntelligenceConfigurationInput
        operation.output = PutIntelligenceConfigurationOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:search_principals, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchomni#SearchPrincipals"
        operation.name = "SearchPrincipals"
        operation.input = SearchPrincipalsInput
        operation.output = SearchPrincipalsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"name" => "SearchPrincipals"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::SearchPrincipals.new
      end)
      service.add_operation(:start_telemetry_query, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchomni#StartTelemetryQuery"
        operation.name = "StartTelemetryQuery"
        operation.input = StartTelemetryQueryRequest
        operation.output = StartTelemetryQueryResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:start_telemetry_query_session, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchomni#StartTelemetryQuerySession"
        operation.name = "StartTelemetryQuerySession"
        operation.input = StartTelemetryQuerySessionRequest
        operation.output = StartTelemetryQuerySessionResponse
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:stop_telemetry_query, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchomni#StopTelemetryQuery"
        operation.name = "StopTelemetryQuery"
        operation.input = StopTelemetryQueryRequest
        operation.output = StopTelemetryQueryResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:stop_telemetry_query_session, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchomni#StopTelemetryQuerySession"
        operation.name = "StopTelemetryQuerySession"
        operation.input = StopTelemetryQuerySessionRequest
        operation.output = StopTelemetryQuerySessionResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_access_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchomni#UpdateAccessProfile"
        operation.name = "UpdateAccessProfile"
        operation.input = UpdateAccessProfileInput
        operation.output = UpdateAccessProfileOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"name" => "UpdateAccessProfile"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_alert, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchomni#UpdateAlert"
        operation.name = "UpdateAlert"
        operation.input = UpdateAlertInput
        operation.output = UpdateAlertOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"name" => "UpdateAlert"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_domain, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchomni#UpdateDomain"
        operation.name = "UpdateDomain"
        operation.input = UpdateDomainInput
        operation.output = UpdateDomainOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"name" => "UpdateDomain"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_domain_for_organization, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchomni#UpdateDomainForOrganization"
        operation.name = "UpdateDomainForOrganization"
        operation.input = UpdateDomainForOrganizationInput
        operation.output = UpdateDomainForOrganizationOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"name" => "UpdateDomainForOrganization"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_integration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchomni#UpdateIntegration"
        operation.name = "UpdateIntegration"
        operation.input = UpdateIntegrationInput
        operation.output = UpdateIntegrationOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_omni_dashboard, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchomni#UpdateOmniDashboard"
        operation.name = "UpdateOmniDashboard"
        operation.input = UpdateOmniDashboardInput
        operation.output = UpdateOmniDashboardOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"name" => "UpdateOmniDashboard"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_space, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchomni#UpdateSpace"
        operation.name = "UpdateSpace"
        operation.input = UpdateSpaceInput
        operation.output = UpdateSpaceOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"name" => "UpdateSpace"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_view, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudwatchomni#UpdateView"
        operation.name = "UpdateView"
        operation.input = UpdateViewRequest
        operation.output = UpdateViewResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}}
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
