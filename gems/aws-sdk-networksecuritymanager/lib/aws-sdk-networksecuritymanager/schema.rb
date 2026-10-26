# frozen_string_literal: true

# This is generated code!

module Aws::NetworkSecurityManager
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networksecuritymanager#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccountFilter = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.networksecuritymanager#AccountFilter", name: "AccountFilter")
    AccountId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networksecuritymanager#AccountId", name: "AccountId", traits: {"smithy.api#length" => {"min" => 12, "max" => 12}, "smithy.api#pattern" => "^(?:[0-9]{12})$"})
    AccountIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networksecuritymanager#AccountIdList", name: "AccountIdList", traits: {"smithy.api#length" => {"max" => 1000}})
    AccountList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networksecuritymanager#AccountList", name: "AccountList", traits: {"smithy.api#length" => {"max" => 1000}})
    AccountReference = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networksecuritymanager#AccountReference", name: "AccountReference")
    AccountReferenceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networksecuritymanager#AccountReferenceList", name: "AccountReferenceList", traits: {"smithy.api#length" => {"max" => 1000}})
    AccountSet = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networksecuritymanager#AccountSet", name: "AccountSet")
    AdminAccountDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networksecuritymanager#AdminAccountDetails", name: "AdminAccountDetails")
    AdminAccountStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.networksecuritymanager#AdminAccountStatus", name: "AdminAccountStatus")
    AdminAccountSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networksecuritymanager#AdminAccountSummary", name: "AdminAccountSummary")
    AdminAccountSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networksecuritymanager#AdminAccountSummaryList", name: "AdminAccountSummaryList", traits: {"smithy.api#length" => {"max" => 100}})
    AdminFirewallTypeScope = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networksecuritymanager#AdminFirewallTypeScope", name: "AdminFirewallTypeScope")
    AdminPriority = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.networksecuritymanager#AdminPriority", name: "AdminPriority", traits: {"smithy.api#range" => {"min" => 1, "max" => 10}})
    AdminScope = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networksecuritymanager#AdminScope", name: "AdminScope")
    AdminScopeFilter = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.networksecuritymanager#AdminScopeFilter", name: "AdminScopeFilter")
    AdminScopeFilterInput = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.networksecuritymanager#AdminScopeFilterInput", name: "AdminScopeFilterInput")
    AdminScopeInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networksecuritymanager#AdminScopeInput", name: "AdminScopeInput")
    AdminScopeSelection = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networksecuritymanager#AdminScopeSelection", name: "AdminScopeSelection")
    AdminScopeSelectionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networksecuritymanager#AdminScopeSelectionInput", name: "AdminScopeSelectionInput")
    AlbConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networksecuritymanager#AlbConfiguration", name: "AlbConfiguration")
    Arn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networksecuritymanager#Arn", name: "Arn", traits: {"smithy.api#length" => {"min" => 20, "max" => 1010}, "smithy.api#pattern" => "^arn(:[a-z0-9]+([.-][a-z0-9]+)*){2}(:([a-z0-9]+([.-][a-z0-9]+)*)?){2}:(.+)$"})
    AssociatedPolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networksecuritymanager#AssociatedPolicy", name: "AssociatedPolicy", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.networksecuritymanager#Policy", "ids" => {"policyIdentifier" => "policyArn"}}]})
    AssociatedPolicyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networksecuritymanager#AssociatedPolicyList", name: "AssociatedPolicyList", traits: {"smithy.api#length" => {"min" => 1, "max" => 2}})
    AssociatedRule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networksecuritymanager#AssociatedRule", name: "AssociatedRule", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.networksecuritymanager#Rule", "ids" => {"ruleIdentifier" => "ruleArn"}}]})
    AssociatedRuleList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networksecuritymanager#AssociatedRuleList", name: "AssociatedRuleList", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    AssociatedScope = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networksecuritymanager#AssociatedScope", name: "AssociatedScope", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.networksecuritymanager#Scope", "ids" => {"scopeIdentifier" => "scopeArn"}}]})
    AssociatedScopeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networksecuritymanager#AssociatedScopeList", name: "AssociatedScopeList", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    AssociatedTemplateAndRuleList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networksecuritymanager#AssociatedTemplateAndRuleList", name: "AssociatedTemplateAndRuleList", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    AssociatedTemplateOrRule = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.networksecuritymanager#AssociatedTemplateOrRule", name: "AssociatedTemplateOrRule")
    ConfigurationIssue = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networksecuritymanager#ConfigurationIssue", name: "ConfigurationIssue")
    ConfigurationIssueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networksecuritymanager#ConfigurationIssueList", name: "ConfigurationIssueList", traits: {"smithy.api#length" => {"max" => 100}})
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networksecuritymanager#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateDeploymentInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networksecuritymanager#CreateDeploymentInput", name: "CreateDeploymentInput")
    CreateDeploymentOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networksecuritymanager#CreateDeploymentOutput", name: "CreateDeploymentOutput")
    CreateDeploymentSnapshotInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networksecuritymanager#CreateDeploymentSnapshotInput", name: "CreateDeploymentSnapshotInput", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.networksecuritymanager#Deployment"}]})
    CreateDeploymentSnapshotOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networksecuritymanager#CreateDeploymentSnapshotOutput", name: "CreateDeploymentSnapshotOutput")
    CreatePolicyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networksecuritymanager#CreatePolicyInput", name: "CreatePolicyInput")
    CreatePolicyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networksecuritymanager#CreatePolicyOutput", name: "CreatePolicyOutput")
    CreatePolicySnapshotInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networksecuritymanager#CreatePolicySnapshotInput", name: "CreatePolicySnapshotInput", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.networksecuritymanager#Policy"}]})
    CreatePolicySnapshotOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networksecuritymanager#CreatePolicySnapshotOutput", name: "CreatePolicySnapshotOutput")
    CreateRuleInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networksecuritymanager#CreateRuleInput", name: "CreateRuleInput")
    CreateRuleOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networksecuritymanager#CreateRuleOutput", name: "CreateRuleOutput")
    CreateRuleSnapshotInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networksecuritymanager#CreateRuleSnapshotInput", name: "CreateRuleSnapshotInput", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.networksecuritymanager#Rule"}]})
    CreateRuleSnapshotOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networksecuritymanager#CreateRuleSnapshotOutput", name: "CreateRuleSnapshotOutput")
    CreateScopeInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networksecuritymanager#CreateScopeInput", name: "CreateScopeInput")
    CreateScopeOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networksecuritymanager#CreateScopeOutput", name: "CreateScopeOutput")
    CreateScopeSnapshotInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networksecuritymanager#CreateScopeSnapshotInput", name: "CreateScopeSnapshotInput", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.networksecuritymanager#Scope"}]})
    CreateScopeSnapshotOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networksecuritymanager#CreateScopeSnapshotOutput", name: "CreateScopeSnapshotOutput")
    CreateTemplateInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networksecuritymanager#CreateTemplateInput", name: "CreateTemplateInput")
    CreateTemplateOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networksecuritymanager#CreateTemplateOutput", name: "CreateTemplateOutput")
    CreateTemplateSnapshotInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networksecuritymanager#CreateTemplateSnapshotInput", name: "CreateTemplateSnapshotInput", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.networksecuritymanager#Template"}]})
    CreateTemplateSnapshotOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networksecuritymanager#CreateTemplateSnapshotOutput", name: "CreateTemplateSnapshotOutput")
    DateTimestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.networksecuritymanager#DateTimestamp", name: "DateTimestamp", traits: {"smithy.api#timestampFormat" => "date-time"})
    DeleteAdminAccountRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networksecuritymanager#DeleteAdminAccountRequest", name: "DeleteAdminAccountRequest")
    DeleteDeploymentInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networksecuritymanager#DeleteDeploymentInput", name: "DeleteDeploymentInput", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.networksecuritymanager#Deployment"}]})
    DeletePolicyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networksecuritymanager#DeletePolicyInput", name: "DeletePolicyInput", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.networksecuritymanager#Policy"}]})
    DeleteRuleInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networksecuritymanager#DeleteRuleInput", name: "DeleteRuleInput", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.networksecuritymanager#Rule"}]})
    DeleteScopeInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networksecuritymanager#DeleteScopeInput", name: "DeleteScopeInput", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.networksecuritymanager#Scope"}]})
    DeleteTemplateInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networksecuritymanager#DeleteTemplateInput", name: "DeleteTemplateInput", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.networksecuritymanager#Template"}]})
    DeploymentArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networksecuritymanager#DeploymentArn", name: "DeploymentArn", traits: {"aws.api#arnReference" => {"type" => "AWS::NetworkSecurityManager::Deployment"}, "smithy.api#length" => {"min" => 20, "max" => 1010}, "smithy.api#pattern" => "^arn(:[a-z0-9]+([.-][a-z0-9]+)*){2}(:([a-z0-9]+([.-][a-z0-9]+)*)?){2}:(.+)$"})
    DeploymentConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networksecuritymanager#DeploymentConfiguration", name: "DeploymentConfiguration")
    DeploymentCoverageEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networksecuritymanager#DeploymentCoverageEntry", name: "DeploymentCoverageEntry")
    DeploymentCoverageList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networksecuritymanager#DeploymentCoverageList", name: "DeploymentCoverageList", traits: {"smithy.api#length" => {"max" => 10}})
    DeploymentId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networksecuritymanager#DeploymentId", name: "DeploymentId", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-z0-9]{1,64}$"})
    DeploymentIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networksecuritymanager#DeploymentIdentifier", name: "DeploymentIdentifier", traits: {"smithy.api#length" => {"min" => 1, "max" => 1010}})
    DeploymentName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networksecuritymanager#DeploymentName", name: "DeploymentName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9 _.:/=+\\-@]*$"})
    DeploymentPolicyArnList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networksecuritymanager#DeploymentPolicyArnList", name: "DeploymentPolicyArnList", traits: {"smithy.api#length" => {"max" => 100}})
    DeploymentResourceTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networksecuritymanager#DeploymentResourceTypeList", name: "DeploymentResourceTypeList", traits: {"smithy.api#length" => {"max" => 50}})
    DeploymentSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networksecuritymanager#DeploymentSummary", name: "DeploymentSummary")
    DeploymentSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networksecuritymanager#DeploymentSummaryList", name: "DeploymentSummaryList", traits: {"smithy.api#length" => {"max" => 100}})
    DeploymentWarningEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networksecuritymanager#DeploymentWarningEntry", name: "DeploymentWarningEntry", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.networksecuritymanager#Policy", "ids" => {"policyIdentifier" => "policyArn"}}]})
    DeploymentWarningList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networksecuritymanager#DeploymentWarningList", name: "DeploymentWarningList", traits: {"smithy.api#length" => {"max" => 100}})
    Description = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networksecuritymanager#Description", name: "Description", traits: {"smithy.api#length" => {"max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9 _.:/=+\\-@]*$"})
    EnableCrossAccountVisibility = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.networksecuritymanager#EnableCrossAccountVisibility", name: "EnableCrossAccountVisibility")
    EntityStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.networksecuritymanager#EntityStatus", name: "EntityStatus")
    EntityStatusFilter = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.networksecuritymanager#EntityStatusFilter", name: "EntityStatusFilter")
    EntityVersion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networksecuritymanager#EntityVersion", name: "EntityVersion", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}, "smithy.api#pattern" => "^[1-9][0-9]*$"})
    ExistingCustomerWebACLResolution = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.networksecuritymanager#ExistingCustomerWebACLResolution", name: "ExistingCustomerWebACLResolution")
    FirewallSyncReason = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.networksecuritymanager#FirewallSyncReason", name: "FirewallSyncReason")
    FirewallTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networksecuritymanager#FirewallTypeList", name: "FirewallTypeList", traits: {"smithy.api#length" => {"max" => 10}})
    GenerateRuleConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networksecuritymanager#GenerateRuleConfigurationRequest", name: "GenerateRuleConfigurationRequest")
    GenerateRuleConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networksecuritymanager#GenerateRuleConfigurationResponse", name: "GenerateRuleConfigurationResponse")
    GetAdminAccountRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networksecuritymanager#GetAdminAccountRequest", name: "GetAdminAccountRequest")
    GetAdminAccountResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networksecuritymanager#GetAdminAccountResponse", name: "GetAdminAccountResponse")
    GetDeploymentInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networksecuritymanager#GetDeploymentInput", name: "GetDeploymentInput", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.networksecuritymanager#Deployment"}]})
    GetDeploymentOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networksecuritymanager#GetDeploymentOutput", name: "GetDeploymentOutput")
    GetPolicyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networksecuritymanager#GetPolicyInput", name: "GetPolicyInput", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.networksecuritymanager#Policy"}]})
    GetPolicyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networksecuritymanager#GetPolicyOutput", name: "GetPolicyOutput")
    GetRuleInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networksecuritymanager#GetRuleInput", name: "GetRuleInput", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.networksecuritymanager#Rule"}]})
    GetRuleOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networksecuritymanager#GetRuleOutput", name: "GetRuleOutput")
    GetScopeInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networksecuritymanager#GetScopeInput", name: "GetScopeInput", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.networksecuritymanager#Scope"}]})
    GetScopeOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networksecuritymanager#GetScopeOutput", name: "GetScopeOutput")
    GetTemplateInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networksecuritymanager#GetTemplateInput", name: "GetTemplateInput", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.networksecuritymanager#Template"}]})
    GetTemplateOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networksecuritymanager#GetTemplateOutput", name: "GetTemplateOutput")
    HasPublishedVersion = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.networksecuritymanager#HasPublishedVersion", name: "HasPublishedVersion")
    IdempotencyToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networksecuritymanager#IdempotencyToken", name: "IdempotencyToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[\\x21-\\x7E]+$"})
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networksecuritymanager#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500, "smithy.api#retryable" => {}})
    InvalidFirewallReasons = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networksecuritymanager#InvalidFirewallReasons", name: "InvalidFirewallReasons")
    IpAddressType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.networksecuritymanager#IpAddressType", name: "IpAddressType")
    IsPublished = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.networksecuritymanager#IsPublished", name: "IsPublished")
    IsSnapshot = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.networksecuritymanager#IsSnapshot", name: "IsSnapshot")
    JsonDocument = ::Smithy::Schema::Shapes::DocumentShape.new(id: "com.amazonaws.networksecuritymanager#JsonDocument", name: "JsonDocument")
    ListAdminAccountsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networksecuritymanager#ListAdminAccountsRequest", name: "ListAdminAccountsRequest")
    ListAdminAccountsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networksecuritymanager#ListAdminAccountsResponse", name: "ListAdminAccountsResponse")
    ListAggregateResourceSynchronizationStatusesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networksecuritymanager#ListAggregateResourceSynchronizationStatusesInput", name: "ListAggregateResourceSynchronizationStatusesInput")
    ListAggregateResourceSynchronizationStatusesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networksecuritymanager#ListAggregateResourceSynchronizationStatusesOutput", name: "ListAggregateResourceSynchronizationStatusesOutput")
    ListDeploymentSnapshotsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networksecuritymanager#ListDeploymentSnapshotsInput", name: "ListDeploymentSnapshotsInput", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.networksecuritymanager#Deployment"}]})
    ListDeploymentSnapshotsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networksecuritymanager#ListDeploymentSnapshotsOutput", name: "ListDeploymentSnapshotsOutput")
    ListDeploymentsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networksecuritymanager#ListDeploymentsInput", name: "ListDeploymentsInput")
    ListDeploymentsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networksecuritymanager#ListDeploymentsOutput", name: "ListDeploymentsOutput")
    ListPoliciesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networksecuritymanager#ListPoliciesInput", name: "ListPoliciesInput")
    ListPoliciesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networksecuritymanager#ListPoliciesOutput", name: "ListPoliciesOutput")
    ListPolicySnapshotsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networksecuritymanager#ListPolicySnapshotsInput", name: "ListPolicySnapshotsInput", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.networksecuritymanager#Policy"}]})
    ListPolicySnapshotsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networksecuritymanager#ListPolicySnapshotsOutput", name: "ListPolicySnapshotsOutput")
    ListResourceAssociationsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networksecuritymanager#ListResourceAssociationsInput", name: "ListResourceAssociationsInput")
    ListResourceAssociationsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networksecuritymanager#ListResourceAssociationsOutput", name: "ListResourceAssociationsOutput")
    ListResourceSynchronizationStatusesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networksecuritymanager#ListResourceSynchronizationStatusesInput", name: "ListResourceSynchronizationStatusesInput", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.networksecuritymanager#Deployment"}]})
    ListResourceSynchronizationStatusesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networksecuritymanager#ListResourceSynchronizationStatusesOutput", name: "ListResourceSynchronizationStatusesOutput")
    ListRuleSnapshotsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networksecuritymanager#ListRuleSnapshotsInput", name: "ListRuleSnapshotsInput", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.networksecuritymanager#Rule"}]})
    ListRuleSnapshotsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networksecuritymanager#ListRuleSnapshotsOutput", name: "ListRuleSnapshotsOutput")
    ListRulesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networksecuritymanager#ListRulesInput", name: "ListRulesInput")
    ListRulesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networksecuritymanager#ListRulesOutput", name: "ListRulesOutput")
    ListScopeSnapshotsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networksecuritymanager#ListScopeSnapshotsInput", name: "ListScopeSnapshotsInput", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.networksecuritymanager#Scope"}]})
    ListScopeSnapshotsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networksecuritymanager#ListScopeSnapshotsOutput", name: "ListScopeSnapshotsOutput")
    ListScopesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networksecuritymanager#ListScopesInput", name: "ListScopesInput")
    ListScopesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networksecuritymanager#ListScopesOutput", name: "ListScopesOutput")
    ListTagsForResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networksecuritymanager#ListTagsForResourceInput", name: "ListTagsForResourceInput")
    ListTagsForResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networksecuritymanager#ListTagsForResourceOutput", name: "ListTagsForResourceOutput")
    ListTemplateSnapshotsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networksecuritymanager#ListTemplateSnapshotsInput", name: "ListTemplateSnapshotsInput", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.networksecuritymanager#Template"}]})
    ListTemplateSnapshotsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networksecuritymanager#ListTemplateSnapshotsOutput", name: "ListTemplateSnapshotsOutput")
    ListTemplatesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networksecuritymanager#ListTemplatesInput", name: "ListTemplatesInput")
    ListTemplatesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networksecuritymanager#ListTemplatesOutput", name: "ListTemplatesOutput")
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.networksecuritymanager#MaxResults", name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networksecuritymanager#NextToken", name: "NextToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 4096}, "smithy.api#pattern" => "^[0-9A-Za-z:/+=_-]+$"})
    NotVisibleMarker = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networksecuritymanager#NotVisibleMarker", name: "NotVisibleMarker")
    OrganizationalUnit = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networksecuritymanager#OrganizationalUnit", name: "OrganizationalUnit", traits: {"smithy.api#length" => {"max" => 68}})
    OrganizationalUnitId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networksecuritymanager#OrganizationalUnitId", name: "OrganizationalUnitId", traits: {"smithy.api#length" => {"min" => 16, "max" => 68}, "smithy.api#pattern" => "^(ou-[0-9a-z]{4,32}-[a-z0-9]{8,32})$"})
    OrganizationalUnitIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networksecuritymanager#OrganizationalUnitIdList", name: "OrganizationalUnitIdList", traits: {"smithy.api#length" => {"max" => 100}})
    OrganizationalUnitList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networksecuritymanager#OrganizationalUnitList", name: "OrganizationalUnitList", traits: {"smithy.api#length" => {"max" => 1000}})
    OrganizationalUnitReference = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networksecuritymanager#OrganizationalUnitReference", name: "OrganizationalUnitReference")
    OrganizationalUnitReferenceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networksecuritymanager#OrganizationalUnitReferenceList", name: "OrganizationalUnitReferenceList", traits: {"smithy.api#length" => {"max" => 1000}})
    OutOfSyncReasons = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.networksecuritymanager#OutOfSyncReasons", name: "OutOfSyncReasons", traits: {"smithy.api#length" => {"max" => 10}})
    OutOfSyncReasonsView = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.networksecuritymanager#OutOfSyncReasonsView", name: "OutOfSyncReasonsView")
    PolicyArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networksecuritymanager#PolicyArn", name: "PolicyArn", traits: {"aws.api#arnReference" => {"type" => "AWS::NetworkSecurityManager::Policy"}, "smithy.api#length" => {"min" => 20, "max" => 1010}, "smithy.api#pattern" => "^arn(:[a-z0-9]+([.-][a-z0-9]+)*){2}(:([a-z0-9]+([.-][a-z0-9]+)*)?){2}:(.+)$"})
    PolicyConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networksecuritymanager#PolicyConfiguration", name: "PolicyConfiguration")
    PolicyFirewallType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.networksecuritymanager#PolicyFirewallType", name: "PolicyFirewallType")
    PolicyId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networksecuritymanager#PolicyId", name: "PolicyId", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-z0-9]{1,64}$"})
    PolicyIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networksecuritymanager#PolicyIdentifier", name: "PolicyIdentifier", traits: {"smithy.api#length" => {"min" => 1, "max" => 1010}})
    PolicyName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networksecuritymanager#PolicyName", name: "PolicyName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9 _.:/=+\\-@]*$"})
    PolicyReference = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networksecuritymanager#PolicyReference", name: "PolicyReference", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.networksecuritymanager#Policy"}]})
    PolicyReferenceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networksecuritymanager#PolicyReferenceList", name: "PolicyReferenceList", traits: {"smithy.api#length" => {"min" => 1, "max" => 2}})
    PolicySummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networksecuritymanager#PolicySummary", name: "PolicySummary")
    PolicySummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networksecuritymanager#PolicySummaryList", name: "PolicySummaryList", traits: {"smithy.api#length" => {"max" => 100}})
    Priority = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.networksecuritymanager#Priority", name: "Priority", traits: {"smithy.api#range" => {"min" => 1}})
    PutAdminAccountRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networksecuritymanager#PutAdminAccountRequest", name: "PutAdminAccountRequest")
    PutAdminAccountResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networksecuritymanager#PutAdminAccountResponse", name: "PutAdminAccountResponse")
    RemediationEnabled = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.networksecuritymanager#RemediationEnabled", name: "RemediationEnabled")
    RemediationIssueDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networksecuritymanager#RemediationIssueDetails", name: "RemediationIssueDetails")
    RemediationIssues = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.networksecuritymanager#RemediationIssues", name: "RemediationIssues", traits: {"smithy.api#length" => {"max" => 10}})
    RemediationIssuesView = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.networksecuritymanager#RemediationIssuesView", name: "RemediationIssuesView")
    ResourceArnList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networksecuritymanager#ResourceArnList", name: "ResourceArnList", traits: {"smithy.api#length" => {"max" => 100}})
    ResourceAssociation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networksecuritymanager#ResourceAssociation", name: "ResourceAssociation")
    ResourceAssociationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networksecuritymanager#ResourceAssociationList", name: "ResourceAssociationList", traits: {"smithy.api#length" => {"max" => 100}})
    ResourceCriteria = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.networksecuritymanager#ResourceCriteria", name: "ResourceCriteria")
    ResourceIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networksecuritymanager#ResourceIdentifier", name: "ResourceIdentifier", traits: {"smithy.api#length" => {"min" => 1, "max" => 1010}})
    ResourceLogicalExpression = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.networksecuritymanager#ResourceLogicalExpression", name: "ResourceLogicalExpression")
    ResourceLogicalExpressionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networksecuritymanager#ResourceLogicalExpressionList", name: "ResourceLogicalExpressionList", traits: {"smithy.api#length" => {"max" => 20}})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networksecuritymanager#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceScope = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networksecuritymanager#ResourceScope", name: "ResourceScope")
    ResourceScopeMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.networksecuritymanager#ResourceScopeMap", name: "ResourceScopeMap", traits: {"smithy.api#length" => {"max" => 20}})
    ResourceSet = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networksecuritymanager#ResourceSet", name: "ResourceSet")
    ResourceSynchronizationStatusSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networksecuritymanager#ResourceSynchronizationStatusSummary", name: "ResourceSynchronizationStatusSummary", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.networksecuritymanager#Deployment", "ids" => {"deploymentIdentifier" => "deploymentArn"}}]})
    ResourceSynchronizationStatusSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networksecuritymanager#ResourceSynchronizationStatusSummaryList", name: "ResourceSynchronizationStatusSummaryList", traits: {"smithy.api#length" => {"max" => 100}})
    ResourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.networksecuritymanager#ResourceType", name: "ResourceType")
    ResourcesCleanUp = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.networksecuritymanager#ResourcesCleanUp", name: "ResourcesCleanUp")
    RuleArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networksecuritymanager#RuleArn", name: "RuleArn", traits: {"aws.api#arnReference" => {"type" => "AWS::NetworkSecurityManager::Rule"}, "smithy.api#length" => {"min" => 20, "max" => 1010}, "smithy.api#pattern" => "^arn(:[a-z0-9]+([.-][a-z0-9]+)*){2}(:([a-z0-9]+([.-][a-z0-9]+)*)?){2}:(.+)$"})
    RuleFirewallType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.networksecuritymanager#RuleFirewallType", name: "RuleFirewallType")
    RuleId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networksecuritymanager#RuleId", name: "RuleId", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-z0-9]{1,64}$"})
    RuleIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networksecuritymanager#RuleIdentifier", name: "RuleIdentifier", traits: {"smithy.api#length" => {"min" => 1, "max" => 1010}})
    RuleName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networksecuritymanager#RuleName", name: "RuleName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9 _.:/=+\\-@]*$"})
    RuleReference = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networksecuritymanager#RuleReference", name: "RuleReference", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.networksecuritymanager#Rule"}]})
    RuleReferenceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networksecuritymanager#RuleReferenceList", name: "RuleReferenceList", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    RuleSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networksecuritymanager#RuleSummary", name: "RuleSummary")
    RuleSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networksecuritymanager#RuleSummaryList", name: "RuleSummaryList", traits: {"smithy.api#length" => {"max" => 100}})
    RuleType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.networksecuritymanager#RuleType", name: "RuleType")
    Scheme = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.networksecuritymanager#Scheme", name: "Scheme")
    ScopeArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networksecuritymanager#ScopeArn", name: "ScopeArn", traits: {"aws.api#arnReference" => {"type" => "AWS::NetworkSecurityManager::Scope"}, "smithy.api#length" => {"min" => 20, "max" => 1010}, "smithy.api#pattern" => "^arn(:[a-z0-9]+([.-][a-z0-9]+)*){2}(:([a-z0-9]+([.-][a-z0-9]+)*)?){2}:(.+)$"})
    ScopeConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networksecuritymanager#ScopeConfiguration", name: "ScopeConfiguration")
    ScopeId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networksecuritymanager#ScopeId", name: "ScopeId", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-z0-9]{1,64}$"})
    ScopeIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networksecuritymanager#ScopeIdentifier", name: "ScopeIdentifier", traits: {"smithy.api#length" => {"min" => 1, "max" => 1010}})
    ScopeName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networksecuritymanager#ScopeName", name: "ScopeName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9 _.:/=+\\-@]*$"})
    ScopeReference = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networksecuritymanager#ScopeReference", name: "ScopeReference", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.networksecuritymanager#Scope"}]})
    ScopeReferenceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networksecuritymanager#ScopeReferenceList", name: "ScopeReferenceList", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    ScopeResourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.networksecuritymanager#ScopeResourceType", name: "ScopeResourceType")
    ScopeSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networksecuritymanager#ScopeSummary", name: "ScopeSummary")
    ScopeSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networksecuritymanager#ScopeSummaryList", name: "ScopeSummaryList", traits: {"smithy.api#length" => {"max" => 100}})
    SensitiveAccountEmail = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networksecuritymanager#SensitiveAccountEmail", name: "SensitiveAccountEmail", traits: {"smithy.api#length" => {"min" => 6, "max" => 64}, "smithy.api#sensitive" => {}})
    SensitiveAccountName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networksecuritymanager#SensitiveAccountName", name: "SensitiveAccountName", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#sensitive" => {}})
    SensitiveEmail = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networksecuritymanager#SensitiveEmail", name: "SensitiveEmail", traits: {"smithy.api#length" => {"max" => 256}, "smithy.api#sensitive" => {}})
    SensitiveName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networksecuritymanager#SensitiveName", name: "SensitiveName", traits: {"smithy.api#length" => {"max" => 256}, "smithy.api#sensitive" => {}})
    SensitiveString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networksecuritymanager#SensitiveString", name: "SensitiveString", traits: {"smithy.api#length" => {"max" => 32768}, "smithy.api#sensitive" => {}})
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networksecuritymanager#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    ServiceResourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.networksecuritymanager#ServiceResourceType", name: "ServiceResourceType")
    ServiceUnavailableException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networksecuritymanager#ServiceUnavailableException", name: "ServiceUnavailableException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 503, "smithy.api#retryable" => {}})
    StringMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.networksecuritymanager#StringMap", name: "StringMap", traits: {"smithy.api#length" => {"max" => 100}})
    SynchronizationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.networksecuritymanager#SynchronizationStatus", name: "SynchronizationStatus")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networksecuritymanager#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networksecuritymanager#TagKeyList", name: "TagKeyList", traits: {"smithy.api#length" => {"max" => 200}})
    TagMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.networksecuritymanager#TagMap", name: "TagMap", traits: {"smithy.api#length" => {"max" => 200}})
    TagPolicyViolationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networksecuritymanager#TagPolicyViolationException", name: "TagPolicyViolationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networksecuritymanager#TagResourceInput", name: "TagResourceInput")
    TagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networksecuritymanager#TagResourceOutput", name: "TagResourceOutput")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networksecuritymanager#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    TemplateAndRuleReferenceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networksecuritymanager#TemplateAndRuleReferenceList", name: "TemplateAndRuleReferenceList", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    TemplateArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networksecuritymanager#TemplateArn", name: "TemplateArn", traits: {"aws.api#arnReference" => {"type" => "AWS::NetworkSecurityManager::Template"}, "smithy.api#length" => {"min" => 20, "max" => 1010}, "smithy.api#pattern" => "^arn(:[a-z0-9]+([.-][a-z0-9]+)*){2}(:([a-z0-9]+([.-][a-z0-9]+)*)?){2}:(.+)$"})
    TemplateFirewallType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.networksecuritymanager#TemplateFirewallType", name: "TemplateFirewallType")
    TemplateId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networksecuritymanager#TemplateId", name: "TemplateId", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-z0-9]{1,64}$"})
    TemplateIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networksecuritymanager#TemplateIdentifier", name: "TemplateIdentifier", traits: {"smithy.api#length" => {"min" => 1, "max" => 1010}})
    TemplateName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networksecuritymanager#TemplateName", name: "TemplateName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9 _.:/=+\\-@]*$"})
    TemplateOrRuleReference = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.networksecuritymanager#TemplateOrRuleReference", name: "TemplateOrRuleReference")
    TemplateSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networksecuritymanager#TemplateSummary", name: "TemplateSummary")
    TemplateSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networksecuritymanager#TemplateSummaryList", name: "TemplateSummaryList", traits: {"smithy.api#length" => {"max" => 100}})
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networksecuritymanager#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429, "smithy.api#retryable" => {"throttling" => true}})
    UntagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networksecuritymanager#UntagResourceInput", name: "UntagResourceInput")
    UntagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networksecuritymanager#UntagResourceOutput", name: "UntagResourceOutput")
    UpdateDeploymentInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networksecuritymanager#UpdateDeploymentInput", name: "UpdateDeploymentInput", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.networksecuritymanager#Deployment"}]})
    UpdateDeploymentOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networksecuritymanager#UpdateDeploymentOutput", name: "UpdateDeploymentOutput")
    UpdatePolicyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networksecuritymanager#UpdatePolicyInput", name: "UpdatePolicyInput", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.networksecuritymanager#Policy"}]})
    UpdatePolicyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networksecuritymanager#UpdatePolicyOutput", name: "UpdatePolicyOutput")
    UpdateRuleInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networksecuritymanager#UpdateRuleInput", name: "UpdateRuleInput", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.networksecuritymanager#Rule"}]})
    UpdateRuleOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networksecuritymanager#UpdateRuleOutput", name: "UpdateRuleOutput")
    UpdateScopeInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networksecuritymanager#UpdateScopeInput", name: "UpdateScopeInput", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.networksecuritymanager#Scope"}]})
    UpdateScopeOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networksecuritymanager#UpdateScopeOutput", name: "UpdateScopeOutput")
    UpdateTemplateInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networksecuritymanager#UpdateTemplateInput", name: "UpdateTemplateInput", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.networksecuritymanager#Template"}]})
    UpdateTemplateOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networksecuritymanager#UpdateTemplateOutput", name: "UpdateTemplateOutput")
    UpdateToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.networksecuritymanager#UpdateToken", name: "UpdateToken", traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^([0-9a-f]{8})-([0-9a-f]{4}-){3}([0-9a-f]{12})$"})
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networksecuritymanager#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionField = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networksecuritymanager#ValidationExceptionField", name: "ValidationExceptionField")
    ValidationExceptionFieldList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.networksecuritymanager#ValidationExceptionFieldList", name: "ValidationExceptionFieldList", traits: {"smithy.api#length" => {"max" => 100}})
    ValidationExceptionReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.networksecuritymanager#ValidationExceptionReason", name: "ValidationExceptionReason")
    WAFConfigDataType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.networksecuritymanager#WAFConfigDataType", name: "WAFConfigDataType")
    WAFConflictResolutionOptions = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.networksecuritymanager#WAFConflictResolutionOptions", name: "WAFConflictResolutionOptions")
    WafConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.networksecuritymanager#WafConfig", name: "WafConfig")

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    AccountFilter.add_member(:include_all, Types::AccountFilter::IncludeAll, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "includeAll"))
    AccountFilter.add_member(:include, Types::AccountFilter::Include, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountSet, name: "include"))
    AccountFilter.add_member(:exclude, Types::AccountFilter::Exclude, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountSet, name: "exclude"))
    AccountFilter.add_member(:unknown, Types::AccountFilter::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    AccountFilter.type = Types::AccountFilter
    AccountIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "member"))
    AccountList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "member"))
    AccountReference.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "accountId", traits: {"smithy.api#required" => {}}))
    AccountReference.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveAccountName, name: "name"))
    AccountReference.add_member(:email, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveAccountEmail, name: "email"))
    AccountReference.type = Types::AccountReference
    AccountReferenceList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountReference, name: "member"))
    AccountSet.add_member(:account_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountList, name: "accountIds"))
    AccountSet.add_member(:organizational_units, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationalUnitList, name: "organizationalUnits"))
    AccountSet.type = Types::AccountSet
    AdminAccountDetails.add_member(:admin_account, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "adminAccount", traits: {"smithy.api#required" => {}}))
    AdminAccountDetails.add_member(:priority, ::Smithy::Schema::Shapes::MemberShape.new(target: AdminPriority, name: "priority", traits: {"smithy.api#required" => {}}))
    AdminAccountDetails.add_member(:admin_scope, ::Smithy::Schema::Shapes::MemberShape.new(target: AdminScope, name: "adminScope"))
    AdminAccountDetails.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: AdminAccountStatus, name: "status"))
    AdminAccountDetails.type = Types::AdminAccountDetails
    AdminAccountStatus.add_member(:onboarded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ONBOARDED", traits: {"smithy.api#enumValue" => "ONBOARDED"}))
    AdminAccountStatus.add_member(:offboarded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OFFBOARDED", traits: {"smithy.api#enumValue" => "OFFBOARDED"}))
    AdminAccountSummary.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "accountId", traits: {"smithy.api#required" => {}}))
    AdminAccountSummary.add_member(:priority, ::Smithy::Schema::Shapes::MemberShape.new(target: AdminPriority, name: "priority"))
    AdminAccountSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveName, name: "name"))
    AdminAccountSummary.add_member(:email, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveEmail, name: "email"))
    AdminAccountSummary.type = Types::AdminAccountSummary
    AdminAccountSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AdminAccountSummary, name: "member"))
    AdminFirewallTypeScope.add_member(:all_firewall_types_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "allFirewallTypesEnabled"))
    AdminFirewallTypeScope.add_member(:firewall_types, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallTypeList, name: "firewallTypes"))
    AdminFirewallTypeScope.type = Types::AdminFirewallTypeScope
    AdminScope.add_member(:scope_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: AdminScopeFilter, name: "scopeFilter"))
    AdminScope.add_member(:firewall_type_scope, ::Smithy::Schema::Shapes::MemberShape.new(target: AdminFirewallTypeScope, name: "firewallTypeScope"))
    AdminScope.type = Types::AdminScope
    AdminScopeFilter.add_member(:include_all, Types::AdminScopeFilter::IncludeAll, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "includeAll"))
    AdminScopeFilter.add_member(:include_only, Types::AdminScopeFilter::IncludeOnly, ::Smithy::Schema::Shapes::MemberShape.new(target: AdminScopeSelection, name: "includeOnly"))
    AdminScopeFilter.add_member(:exclude_only, Types::AdminScopeFilter::ExcludeOnly, ::Smithy::Schema::Shapes::MemberShape.new(target: AdminScopeSelection, name: "excludeOnly"))
    AdminScopeFilter.add_member(:unknown, Types::AdminScopeFilter::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    AdminScopeFilter.type = Types::AdminScopeFilter
    AdminScopeFilterInput.add_member(:include_all, Types::AdminScopeFilterInput::IncludeAll, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "includeAll"))
    AdminScopeFilterInput.add_member(:include_only, Types::AdminScopeFilterInput::IncludeOnly, ::Smithy::Schema::Shapes::MemberShape.new(target: AdminScopeSelectionInput, name: "includeOnly"))
    AdminScopeFilterInput.add_member(:exclude_only, Types::AdminScopeFilterInput::ExcludeOnly, ::Smithy::Schema::Shapes::MemberShape.new(target: AdminScopeSelectionInput, name: "excludeOnly"))
    AdminScopeFilterInput.add_member(:unknown, Types::AdminScopeFilterInput::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    AdminScopeFilterInput.type = Types::AdminScopeFilterInput
    AdminScopeInput.add_member(:scope_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: AdminScopeFilterInput, name: "scopeFilter"))
    AdminScopeInput.add_member(:firewall_type_scope, ::Smithy::Schema::Shapes::MemberShape.new(target: AdminFirewallTypeScope, name: "firewallTypeScope"))
    AdminScopeInput.type = Types::AdminScopeInput
    AdminScopeSelection.add_member(:accounts, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountReferenceList, name: "accounts"))
    AdminScopeSelection.add_member(:organizational_units, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationalUnitReferenceList, name: "organizationalUnits"))
    AdminScopeSelection.type = Types::AdminScopeSelection
    AdminScopeSelectionInput.add_member(:accounts, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountIdList, name: "accounts"))
    AdminScopeSelectionInput.add_member(:organizational_units, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationalUnitIdList, name: "organizationalUnits"))
    AdminScopeSelectionInput.type = Types::AdminScopeSelectionInput
    AlbConfiguration.add_member(:scheme, ::Smithy::Schema::Shapes::MemberShape.new(target: Scheme, name: "scheme"))
    AlbConfiguration.add_member(:ip_address_type, ::Smithy::Schema::Shapes::MemberShape.new(target: IpAddressType, name: "ipAddressType"))
    AlbConfiguration.type = Types::AlbConfiguration
    AssociatedPolicy.add_member(:policy_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyArn, name: "policyArn", traits: {"smithy.api#required" => {}}))
    AssociatedPolicy.type = Types::AssociatedPolicy
    AssociatedPolicyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociatedPolicy, name: "member"))
    AssociatedRule.add_member(:rule_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleArn, name: "ruleArn", traits: {"smithy.api#required" => {}}))
    AssociatedRule.type = Types::AssociatedRule
    AssociatedRuleList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociatedRule, name: "member"))
    AssociatedScope.add_member(:scope_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ScopeArn, name: "scopeArn", traits: {"smithy.api#required" => {}}))
    AssociatedScope.type = Types::AssociatedScope
    AssociatedScopeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociatedScope, name: "member"))
    AssociatedTemplateAndRuleList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociatedTemplateOrRule, name: "member"))
    AssociatedTemplateOrRule.add_member(:template_arn, Types::AssociatedTemplateOrRule::TemplateArn, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateArn, name: "templateArn"))
    AssociatedTemplateOrRule.add_member(:rule_arn, Types::AssociatedTemplateOrRule::RuleArn, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleArn, name: "ruleArn"))
    AssociatedTemplateOrRule.add_member(:unknown, Types::AssociatedTemplateOrRule::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    AssociatedTemplateOrRule.type = Types::AssociatedTemplateOrRule
    ConfigurationIssue.add_member(:configuration_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "configurationName"))
    ConfigurationIssue.add_member(:expected_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "expectedValue"))
    ConfigurationIssue.add_member(:actual_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "actualValue"))
    ConfigurationIssue.type = Types::ConfigurationIssue
    ConfigurationIssueList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationIssue, name: "member"))
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceId"))
    ConflictException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceType"))
    ConflictException.type = Types::ConflictException
    CreateDeploymentInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: IdempotencyToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateDeploymentInput.add_member(:deployment_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentName, name: "deploymentName", traits: {"smithy.api#required" => {}}))
    CreateDeploymentInput.add_member(:deployment_description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "deploymentDescription"))
    CreateDeploymentInput.add_member(:deployment_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentConfiguration, name: "deploymentConfiguration", traits: {"smithy.api#required" => {}}))
    CreateDeploymentInput.add_member(:associated_policy_list, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyReferenceList, name: "associatedPolicyList", traits: {"smithy.api#notProperty" => {}, "smithy.api#required" => {}}))
    CreateDeploymentInput.add_member(:associated_scope_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ScopeReferenceList, name: "associatedScopeList", traits: {"smithy.api#notProperty" => {}, "smithy.api#required" => {}}))
    CreateDeploymentInput.add_member(:is_published, ::Smithy::Schema::Shapes::MemberShape.new(target: IsPublished, name: "isPublished", traits: {"smithy.api#default" => true, "smithy.api#notProperty" => {}}))
    CreateDeploymentInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags", traits: {"smithy.api#notProperty" => {}}))
    CreateDeploymentInput.type = Types::CreateDeploymentInput
    CreateDeploymentOutput.add_member(:deployment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentId, name: "deploymentId", traits: {"smithy.api#required" => {}}))
    CreateDeploymentOutput.add_member(:deployment_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentArn, name: "deploymentArn", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "deploymentIdentifier"}))
    CreateDeploymentOutput.add_member(:deployment_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentName, name: "deploymentName", traits: {"smithy.api#required" => {}}))
    CreateDeploymentOutput.add_member(:deployment_description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "deploymentDescription"))
    CreateDeploymentOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityStatus, name: "status", traits: {"smithy.api#required" => {}}))
    CreateDeploymentOutput.add_member(:deployment_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentConfiguration, name: "deploymentConfiguration"))
    CreateDeploymentOutput.add_member(:associated_policy_list, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociatedPolicyList, name: "associatedPolicyList", traits: {"smithy.api#notProperty" => {}, "smithy.api#required" => {}}))
    CreateDeploymentOutput.add_member(:associated_scope_list, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociatedScopeList, name: "associatedScopeList", traits: {"smithy.api#notProperty" => {}, "smithy.api#required" => {}}))
    CreateDeploymentOutput.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityVersion, name: "version", traits: {"smithy.api#required" => {}}))
    CreateDeploymentOutput.add_member(:update_token, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateToken, name: "updateToken"))
    CreateDeploymentOutput.add_member(:is_snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: IsSnapshot, name: "isSnapshot"))
    CreateDeploymentOutput.add_member(:has_published_version, ::Smithy::Schema::Shapes::MemberShape.new(target: HasPublishedVersion, name: "hasPublishedVersion"))
    CreateDeploymentOutput.add_member(:deployment_coverage, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentCoverageList, name: "deploymentCoverage", traits: {"smithy.api#notProperty" => {}}))
    CreateDeploymentOutput.add_member(:warnings, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentWarningList, name: "warnings", traits: {"smithy.api#notProperty" => {}}))
    CreateDeploymentOutput.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimestamp, name: "updatedAt"))
    CreateDeploymentOutput.type = Types::CreateDeploymentOutput
    CreateDeploymentSnapshotInput.add_member(:deployment_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentIdentifier, name: "deploymentIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateDeploymentSnapshotInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: IdempotencyToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateDeploymentSnapshotInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags", traits: {"smithy.api#notProperty" => {}}))
    CreateDeploymentSnapshotInput.type = Types::CreateDeploymentSnapshotInput
    CreateDeploymentSnapshotOutput.add_member(:deployment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentId, name: "deploymentId", traits: {"smithy.api#required" => {}}))
    CreateDeploymentSnapshotOutput.add_member(:deployment_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentArn, name: "deploymentArn", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "deploymentIdentifier"}))
    CreateDeploymentSnapshotOutput.add_member(:deployment_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentName, name: "deploymentName", traits: {"smithy.api#required" => {}}))
    CreateDeploymentSnapshotOutput.add_member(:deployment_description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "deploymentDescription"))
    CreateDeploymentSnapshotOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityStatus, name: "status", traits: {"smithy.api#required" => {}}))
    CreateDeploymentSnapshotOutput.add_member(:deployment_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentConfiguration, name: "deploymentConfiguration"))
    CreateDeploymentSnapshotOutput.add_member(:associated_policy_list, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociatedPolicyList, name: "associatedPolicyList", traits: {"smithy.api#notProperty" => {}, "smithy.api#required" => {}}))
    CreateDeploymentSnapshotOutput.add_member(:associated_scope_list, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociatedScopeList, name: "associatedScopeList", traits: {"smithy.api#notProperty" => {}, "smithy.api#required" => {}}))
    CreateDeploymentSnapshotOutput.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityVersion, name: "version", traits: {"smithy.api#required" => {}}))
    CreateDeploymentSnapshotOutput.add_member(:update_token, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateToken, name: "updateToken"))
    CreateDeploymentSnapshotOutput.add_member(:is_snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: IsSnapshot, name: "isSnapshot"))
    CreateDeploymentSnapshotOutput.add_member(:has_published_version, ::Smithy::Schema::Shapes::MemberShape.new(target: HasPublishedVersion, name: "hasPublishedVersion"))
    CreateDeploymentSnapshotOutput.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimestamp, name: "updatedAt"))
    CreateDeploymentSnapshotOutput.type = Types::CreateDeploymentSnapshotOutput
    CreatePolicyInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: IdempotencyToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreatePolicyInput.add_member(:policy_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyName, name: "policyName", traits: {"smithy.api#required" => {}}))
    CreatePolicyInput.add_member(:policy_description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "policyDescription"))
    CreatePolicyInput.add_member(:priority, ::Smithy::Schema::Shapes::MemberShape.new(target: Priority, name: "priority", traits: {"smithy.api#required" => {}}))
    CreatePolicyInput.add_member(:associated_template_and_rule_list, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateAndRuleReferenceList, name: "associatedTemplateAndRuleList", traits: {"smithy.api#notProperty" => {}}))
    CreatePolicyInput.add_member(:firewall_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyFirewallType, name: "firewallType", traits: {"smithy.api#required" => {}}))
    CreatePolicyInput.add_member(:policy_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyConfiguration, name: "policyConfiguration", traits: {"smithy.api#required" => {}}))
    CreatePolicyInput.add_member(:is_published, ::Smithy::Schema::Shapes::MemberShape.new(target: IsPublished, name: "isPublished", traits: {"smithy.api#default" => true, "smithy.api#notProperty" => {}}))
    CreatePolicyInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags", traits: {"smithy.api#notProperty" => {}}))
    CreatePolicyInput.type = Types::CreatePolicyInput
    CreatePolicyOutput.add_member(:policy_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyId, name: "policyId", traits: {"smithy.api#required" => {}}))
    CreatePolicyOutput.add_member(:policy_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyArn, name: "policyArn", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "policyIdentifier"}))
    CreatePolicyOutput.add_member(:policy_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyName, name: "policyName", traits: {"smithy.api#required" => {}}))
    CreatePolicyOutput.add_member(:policy_description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "policyDescription"))
    CreatePolicyOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityStatus, name: "status", traits: {"smithy.api#required" => {}}))
    CreatePolicyOutput.add_member(:priority, ::Smithy::Schema::Shapes::MemberShape.new(target: Priority, name: "priority", traits: {"smithy.api#required" => {}}))
    CreatePolicyOutput.add_member(:associated_template_and_rule_list, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociatedTemplateAndRuleList, name: "associatedTemplateAndRuleList", traits: {"smithy.api#notProperty" => {}, "smithy.api#required" => {}}))
    CreatePolicyOutput.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityVersion, name: "version", traits: {"smithy.api#required" => {}}))
    CreatePolicyOutput.add_member(:update_token, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateToken, name: "updateToken"))
    CreatePolicyOutput.add_member(:is_snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: IsSnapshot, name: "isSnapshot"))
    CreatePolicyOutput.add_member(:has_published_version, ::Smithy::Schema::Shapes::MemberShape.new(target: HasPublishedVersion, name: "hasPublishedVersion"))
    CreatePolicyOutput.add_member(:firewall_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyFirewallType, name: "firewallType", traits: {"smithy.api#required" => {}}))
    CreatePolicyOutput.add_member(:policy_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyConfiguration, name: "policyConfiguration"))
    CreatePolicyOutput.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimestamp, name: "updatedAt"))
    CreatePolicyOutput.type = Types::CreatePolicyOutput
    CreatePolicySnapshotInput.add_member(:policy_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyIdentifier, name: "policyIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreatePolicySnapshotInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: IdempotencyToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreatePolicySnapshotInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags", traits: {"smithy.api#notProperty" => {}}))
    CreatePolicySnapshotInput.type = Types::CreatePolicySnapshotInput
    CreatePolicySnapshotOutput.add_member(:policy_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyId, name: "policyId", traits: {"smithy.api#required" => {}}))
    CreatePolicySnapshotOutput.add_member(:policy_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyArn, name: "policyArn", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "policyIdentifier"}))
    CreatePolicySnapshotOutput.add_member(:policy_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyName, name: "policyName", traits: {"smithy.api#required" => {}}))
    CreatePolicySnapshotOutput.add_member(:policy_description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "policyDescription"))
    CreatePolicySnapshotOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityStatus, name: "status", traits: {"smithy.api#required" => {}}))
    CreatePolicySnapshotOutput.add_member(:priority, ::Smithy::Schema::Shapes::MemberShape.new(target: Priority, name: "priority", traits: {"smithy.api#required" => {}}))
    CreatePolicySnapshotOutput.add_member(:associated_template_and_rule_list, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociatedTemplateAndRuleList, name: "associatedTemplateAndRuleList", traits: {"smithy.api#notProperty" => {}, "smithy.api#required" => {}}))
    CreatePolicySnapshotOutput.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityVersion, name: "version", traits: {"smithy.api#required" => {}}))
    CreatePolicySnapshotOutput.add_member(:update_token, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateToken, name: "updateToken"))
    CreatePolicySnapshotOutput.add_member(:is_snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: IsSnapshot, name: "isSnapshot"))
    CreatePolicySnapshotOutput.add_member(:has_published_version, ::Smithy::Schema::Shapes::MemberShape.new(target: HasPublishedVersion, name: "hasPublishedVersion"))
    CreatePolicySnapshotOutput.add_member(:firewall_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyFirewallType, name: "firewallType", traits: {"smithy.api#required" => {}}))
    CreatePolicySnapshotOutput.add_member(:policy_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyConfiguration, name: "policyConfiguration"))
    CreatePolicySnapshotOutput.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimestamp, name: "updatedAt"))
    CreatePolicySnapshotOutput.type = Types::CreatePolicySnapshotOutput
    CreateRuleInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: IdempotencyToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateRuleInput.add_member(:rule_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleName, name: "ruleName", traits: {"smithy.api#required" => {}}))
    CreateRuleInput.add_member(:firewall_type, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleFirewallType, name: "firewallType", traits: {"smithy.api#required" => {}}))
    CreateRuleInput.add_member(:rule_type, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleType, name: "ruleType", traits: {"smithy.api#required" => {}}))
    CreateRuleInput.add_member(:rule_description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "ruleDescription"))
    CreateRuleInput.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: JsonDocument, name: "configuration", traits: {"smithy.api#required" => {}}))
    CreateRuleInput.add_member(:is_published, ::Smithy::Schema::Shapes::MemberShape.new(target: IsPublished, name: "isPublished", traits: {"smithy.api#default" => true, "smithy.api#notProperty" => {}}))
    CreateRuleInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags", traits: {"smithy.api#notProperty" => {}}))
    CreateRuleInput.type = Types::CreateRuleInput
    CreateRuleOutput.add_member(:rule_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleId, name: "ruleId", traits: {"smithy.api#required" => {}}))
    CreateRuleOutput.add_member(:rule_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleArn, name: "ruleArn", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "ruleIdentifier"}))
    CreateRuleOutput.add_member(:rule_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleName, name: "ruleName", traits: {"smithy.api#required" => {}}))
    CreateRuleOutput.add_member(:firewall_type, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleFirewallType, name: "firewallType", traits: {"smithy.api#required" => {}}))
    CreateRuleOutput.add_member(:rule_type, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleType, name: "ruleType"))
    CreateRuleOutput.add_member(:rule_description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "ruleDescription"))
    CreateRuleOutput.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: JsonDocument, name: "configuration", traits: {"smithy.api#required" => {}}))
    CreateRuleOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityStatus, name: "status", traits: {"smithy.api#required" => {}}))
    CreateRuleOutput.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityVersion, name: "version", traits: {"smithy.api#required" => {}}))
    CreateRuleOutput.add_member(:update_token, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateToken, name: "updateToken"))
    CreateRuleOutput.add_member(:is_snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: IsSnapshot, name: "isSnapshot"))
    CreateRuleOutput.add_member(:has_published_version, ::Smithy::Schema::Shapes::MemberShape.new(target: HasPublishedVersion, name: "hasPublishedVersion"))
    CreateRuleOutput.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimestamp, name: "updatedAt"))
    CreateRuleOutput.type = Types::CreateRuleOutput
    CreateRuleSnapshotInput.add_member(:rule_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleIdentifier, name: "ruleIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateRuleSnapshotInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: IdempotencyToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateRuleSnapshotInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags", traits: {"smithy.api#notProperty" => {}}))
    CreateRuleSnapshotInput.type = Types::CreateRuleSnapshotInput
    CreateRuleSnapshotOutput.add_member(:rule_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleId, name: "ruleId", traits: {"smithy.api#required" => {}}))
    CreateRuleSnapshotOutput.add_member(:rule_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleArn, name: "ruleArn", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "ruleIdentifier"}))
    CreateRuleSnapshotOutput.add_member(:rule_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleName, name: "ruleName", traits: {"smithy.api#required" => {}}))
    CreateRuleSnapshotOutput.add_member(:firewall_type, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleFirewallType, name: "firewallType", traits: {"smithy.api#required" => {}}))
    CreateRuleSnapshotOutput.add_member(:rule_type, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleType, name: "ruleType"))
    CreateRuleSnapshotOutput.add_member(:rule_description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "ruleDescription"))
    CreateRuleSnapshotOutput.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: JsonDocument, name: "configuration", traits: {"smithy.api#required" => {}}))
    CreateRuleSnapshotOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityStatus, name: "status", traits: {"smithy.api#required" => {}}))
    CreateRuleSnapshotOutput.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityVersion, name: "version", traits: {"smithy.api#required" => {}}))
    CreateRuleSnapshotOutput.add_member(:update_token, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateToken, name: "updateToken"))
    CreateRuleSnapshotOutput.add_member(:is_snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: IsSnapshot, name: "isSnapshot"))
    CreateRuleSnapshotOutput.add_member(:has_published_version, ::Smithy::Schema::Shapes::MemberShape.new(target: HasPublishedVersion, name: "hasPublishedVersion"))
    CreateRuleSnapshotOutput.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimestamp, name: "updatedAt"))
    CreateRuleSnapshotOutput.type = Types::CreateRuleSnapshotOutput
    CreateScopeInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: IdempotencyToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateScopeInput.add_member(:scope_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ScopeName, name: "scopeName", traits: {"smithy.api#required" => {}}))
    CreateScopeInput.add_member(:scope_description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "scopeDescription"))
    CreateScopeInput.add_member(:scope_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ScopeConfiguration, name: "scopeConfiguration", traits: {"smithy.api#required" => {}}))
    CreateScopeInput.add_member(:is_published, ::Smithy::Schema::Shapes::MemberShape.new(target: IsPublished, name: "isPublished", traits: {"smithy.api#default" => true, "smithy.api#notProperty" => {}}))
    CreateScopeInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags", traits: {"smithy.api#notProperty" => {}}))
    CreateScopeInput.type = Types::CreateScopeInput
    CreateScopeOutput.add_member(:scope_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ScopeId, name: "scopeId", traits: {"smithy.api#required" => {}}))
    CreateScopeOutput.add_member(:scope_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ScopeArn, name: "scopeArn", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "scopeIdentifier"}))
    CreateScopeOutput.add_member(:scope_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ScopeName, name: "scopeName", traits: {"smithy.api#required" => {}}))
    CreateScopeOutput.add_member(:scope_description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "scopeDescription"))
    CreateScopeOutput.add_member(:scope_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ScopeConfiguration, name: "scopeConfiguration"))
    CreateScopeOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityStatus, name: "status", traits: {"smithy.api#required" => {}}))
    CreateScopeOutput.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityVersion, name: "version", traits: {"smithy.api#required" => {}}))
    CreateScopeOutput.add_member(:update_token, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateToken, name: "updateToken"))
    CreateScopeOutput.add_member(:is_snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: IsSnapshot, name: "isSnapshot"))
    CreateScopeOutput.add_member(:has_published_version, ::Smithy::Schema::Shapes::MemberShape.new(target: HasPublishedVersion, name: "hasPublishedVersion"))
    CreateScopeOutput.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimestamp, name: "updatedAt"))
    CreateScopeOutput.type = Types::CreateScopeOutput
    CreateScopeSnapshotInput.add_member(:scope_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ScopeIdentifier, name: "scopeIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateScopeSnapshotInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: IdempotencyToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateScopeSnapshotInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags", traits: {"smithy.api#notProperty" => {}}))
    CreateScopeSnapshotInput.type = Types::CreateScopeSnapshotInput
    CreateScopeSnapshotOutput.add_member(:scope_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ScopeId, name: "scopeId", traits: {"smithy.api#required" => {}}))
    CreateScopeSnapshotOutput.add_member(:scope_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ScopeArn, name: "scopeArn", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "scopeIdentifier"}))
    CreateScopeSnapshotOutput.add_member(:scope_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ScopeName, name: "scopeName", traits: {"smithy.api#required" => {}}))
    CreateScopeSnapshotOutput.add_member(:scope_description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "scopeDescription"))
    CreateScopeSnapshotOutput.add_member(:scope_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ScopeConfiguration, name: "scopeConfiguration"))
    CreateScopeSnapshotOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityStatus, name: "status", traits: {"smithy.api#required" => {}}))
    CreateScopeSnapshotOutput.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityVersion, name: "version", traits: {"smithy.api#required" => {}}))
    CreateScopeSnapshotOutput.add_member(:update_token, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateToken, name: "updateToken"))
    CreateScopeSnapshotOutput.add_member(:is_snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: IsSnapshot, name: "isSnapshot"))
    CreateScopeSnapshotOutput.add_member(:has_published_version, ::Smithy::Schema::Shapes::MemberShape.new(target: HasPublishedVersion, name: "hasPublishedVersion"))
    CreateScopeSnapshotOutput.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimestamp, name: "updatedAt"))
    CreateScopeSnapshotOutput.type = Types::CreateScopeSnapshotOutput
    CreateTemplateInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: IdempotencyToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateTemplateInput.add_member(:template_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateName, name: "templateName", traits: {"smithy.api#required" => {}}))
    CreateTemplateInput.add_member(:template_description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "templateDescription"))
    CreateTemplateInput.add_member(:associated_rule_list, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleReferenceList, name: "associatedRuleList", traits: {"smithy.api#notProperty" => {}, "smithy.api#required" => {}}))
    CreateTemplateInput.add_member(:firewall_type, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateFirewallType, name: "firewallType", traits: {"smithy.api#required" => {}}))
    CreateTemplateInput.add_member(:is_published, ::Smithy::Schema::Shapes::MemberShape.new(target: IsPublished, name: "isPublished", traits: {"smithy.api#default" => true, "smithy.api#notProperty" => {}}))
    CreateTemplateInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags", traits: {"smithy.api#notProperty" => {}}))
    CreateTemplateInput.type = Types::CreateTemplateInput
    CreateTemplateOutput.add_member(:template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateId, name: "templateId", traits: {"smithy.api#required" => {}}))
    CreateTemplateOutput.add_member(:template_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateArn, name: "templateArn", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "templateIdentifier"}))
    CreateTemplateOutput.add_member(:template_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateName, name: "templateName", traits: {"smithy.api#required" => {}}))
    CreateTemplateOutput.add_member(:template_description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "templateDescription"))
    CreateTemplateOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityStatus, name: "status", traits: {"smithy.api#required" => {}}))
    CreateTemplateOutput.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityVersion, name: "version", traits: {"smithy.api#required" => {}}))
    CreateTemplateOutput.add_member(:associated_rule_list, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociatedRuleList, name: "associatedRuleList", traits: {"smithy.api#notProperty" => {}, "smithy.api#required" => {}}))
    CreateTemplateOutput.add_member(:update_token, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateToken, name: "updateToken"))
    CreateTemplateOutput.add_member(:is_snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: IsSnapshot, name: "isSnapshot"))
    CreateTemplateOutput.add_member(:has_published_version, ::Smithy::Schema::Shapes::MemberShape.new(target: HasPublishedVersion, name: "hasPublishedVersion"))
    CreateTemplateOutput.add_member(:firewall_type, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateFirewallType, name: "firewallType", traits: {"smithy.api#required" => {}}))
    CreateTemplateOutput.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimestamp, name: "updatedAt"))
    CreateTemplateOutput.type = Types::CreateTemplateOutput
    CreateTemplateSnapshotInput.add_member(:template_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateIdentifier, name: "templateIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateTemplateSnapshotInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: IdempotencyToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateTemplateSnapshotInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags", traits: {"smithy.api#notProperty" => {}}))
    CreateTemplateSnapshotInput.type = Types::CreateTemplateSnapshotInput
    CreateTemplateSnapshotOutput.add_member(:template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateId, name: "templateId", traits: {"smithy.api#required" => {}}))
    CreateTemplateSnapshotOutput.add_member(:template_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateArn, name: "templateArn", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "templateIdentifier"}))
    CreateTemplateSnapshotOutput.add_member(:template_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateName, name: "templateName", traits: {"smithy.api#required" => {}}))
    CreateTemplateSnapshotOutput.add_member(:template_description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "templateDescription"))
    CreateTemplateSnapshotOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityStatus, name: "status", traits: {"smithy.api#required" => {}}))
    CreateTemplateSnapshotOutput.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityVersion, name: "version", traits: {"smithy.api#required" => {}}))
    CreateTemplateSnapshotOutput.add_member(:associated_rule_list, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociatedRuleList, name: "associatedRuleList", traits: {"smithy.api#notProperty" => {}, "smithy.api#required" => {}}))
    CreateTemplateSnapshotOutput.add_member(:update_token, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateToken, name: "updateToken"))
    CreateTemplateSnapshotOutput.add_member(:is_snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: IsSnapshot, name: "isSnapshot"))
    CreateTemplateSnapshotOutput.add_member(:has_published_version, ::Smithy::Schema::Shapes::MemberShape.new(target: HasPublishedVersion, name: "hasPublishedVersion"))
    CreateTemplateSnapshotOutput.add_member(:firewall_type, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateFirewallType, name: "firewallType", traits: {"smithy.api#required" => {}}))
    CreateTemplateSnapshotOutput.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimestamp, name: "updatedAt"))
    CreateTemplateSnapshotOutput.type = Types::CreateTemplateSnapshotOutput
    DeleteAdminAccountRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "accountId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAdminAccountRequest.type = Types::DeleteAdminAccountRequest
    DeleteDeploymentInput.add_member(:deployment_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentIdentifier, name: "deploymentIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDeploymentInput.type = Types::DeleteDeploymentInput
    DeletePolicyInput.add_member(:policy_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyIdentifier, name: "policyIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeletePolicyInput.type = Types::DeletePolicyInput
    DeleteRuleInput.add_member(:rule_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleIdentifier, name: "ruleIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteRuleInput.type = Types::DeleteRuleInput
    DeleteScopeInput.add_member(:scope_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ScopeIdentifier, name: "scopeIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteScopeInput.type = Types::DeleteScopeInput
    DeleteTemplateInput.add_member(:template_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateIdentifier, name: "templateIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteTemplateInput.type = Types::DeleteTemplateInput
    DeploymentConfiguration.add_member(:enable_cross_account_visibility, ::Smithy::Schema::Shapes::MemberShape.new(target: EnableCrossAccountVisibility, name: "enableCrossAccountVisibility", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    DeploymentConfiguration.type = Types::DeploymentConfiguration
    DeploymentCoverageEntry.add_member(:firewall_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyFirewallType, name: "firewallType", traits: {"smithy.api#required" => {}}))
    DeploymentCoverageEntry.add_member(:policy_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentPolicyArnList, name: "policyArns", traits: {"smithy.api#required" => {}}))
    DeploymentCoverageEntry.add_member(:in_scope_resource_types, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentResourceTypeList, name: "inScopeResourceTypes", traits: {"smithy.api#required" => {}}))
    DeploymentCoverageEntry.type = Types::DeploymentCoverageEntry
    DeploymentCoverageList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentCoverageEntry, name: "member"))
    DeploymentPolicyArnList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyArn, name: "member"))
    DeploymentResourceTypeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ScopeResourceType, name: "member"))
    DeploymentSummary.add_member(:deployment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentId, name: "deploymentId", traits: {"smithy.api#required" => {}}))
    DeploymentSummary.add_member(:deployment_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentArn, name: "deploymentArn", traits: {"smithy.api#required" => {}}))
    DeploymentSummary.add_member(:deployment_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentName, name: "deploymentName"))
    DeploymentSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityStatus, name: "status"))
    DeploymentSummary.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityVersion, name: "version"))
    DeploymentSummary.add_member(:has_published_version, ::Smithy::Schema::Shapes::MemberShape.new(target: HasPublishedVersion, name: "hasPublishedVersion"))
    DeploymentSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimestamp, name: "updatedAt"))
    DeploymentSummary.type = Types::DeploymentSummary
    DeploymentSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentSummary, name: "member"))
    DeploymentWarningEntry.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "code", traits: {"smithy.api#required" => {}}))
    DeploymentWarningEntry.add_member(:policy_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyArn, name: "policyArn", traits: {"smithy.api#required" => {}}))
    DeploymentWarningEntry.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    DeploymentWarningEntry.type = Types::DeploymentWarningEntry
    DeploymentWarningList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentWarningEntry, name: "member"))
    EntityStatus.add_member(:draft, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DRAFT", traits: {"smithy.api#enumValue" => "DRAFT"}))
    EntityStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    EntityStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    EntityStatusFilter.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    EntityStatusFilter.add_member(:draft, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DRAFT", traits: {"smithy.api#enumValue" => "DRAFT"}))
    EntityStatusFilter.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    ExistingCustomerWebACLResolution.add_member(:retrofit, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RETROFIT", traits: {"smithy.api#enumValue" => "RETROFIT"}))
    ExistingCustomerWebACLResolution.add_member(:override_association, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OVERRIDE_ASSOCIATION", traits: {"smithy.api#enumValue" => "OVERRIDE_ASSOCIATION"}))
    ExistingCustomerWebACLResolution.add_member(:no_remediation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NO_REMEDIATION", traits: {"smithy.api#enumValue" => "NO_REMEDIATION"}))
    FirewallSyncReason.add_member(:missing_firewall, Types::FirewallSyncReason::MissingFirewall, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "missingFirewall"))
    FirewallSyncReason.add_member(:invalid_firewall, Types::FirewallSyncReason::InvalidFirewall, ::Smithy::Schema::Shapes::MemberShape.new(target: InvalidFirewallReasons, name: "invalidFirewall"))
    FirewallSyncReason.add_member(:unknown, Types::FirewallSyncReason::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    FirewallSyncReason.type = Types::FirewallSyncReason
    FirewallTypeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyFirewallType, name: "member"))
    GenerateRuleConfigurationRequest.add_member(:prompt, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "prompt", traits: {"smithy.api#length" => {"min" => 1, "max" => 2000}, "smithy.api#pattern" => "^[A-Za-z0-9.,?!@&:;()'\"\\s\\-\\/\\n_=<>+*\\#\\[\\]{}]*$", "smithy.api#required" => {}}))
    GenerateRuleConfigurationRequest.add_member(:rule_firewall_type, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleFirewallType, name: "ruleFirewallType", traits: {"smithy.api#required" => {}}))
    GenerateRuleConfigurationRequest.add_member(:rule_type, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleType, name: "ruleType", traits: {"smithy.api#required" => {}}))
    GenerateRuleConfigurationRequest.add_member(:waf_config_data_type, ::Smithy::Schema::Shapes::MemberShape.new(target: WAFConfigDataType, name: "wafConfigDataType"))
    GenerateRuleConfigurationRequest.add_member(:current_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "currentConfiguration", traits: {"smithy.api#length" => {"max" => 32768}}))
    GenerateRuleConfigurationRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: IdempotencyToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    GenerateRuleConfigurationRequest.type = Types::GenerateRuleConfigurationRequest
    GenerateRuleConfigurationResponse.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "configuration", traits: {"smithy.api#length" => {"max" => 32768}, "smithy.api#required" => {}}))
    GenerateRuleConfigurationResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "description"))
    GenerateRuleConfigurationResponse.type = Types::GenerateRuleConfigurationResponse
    GetAdminAccountRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "accountId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAdminAccountRequest.type = Types::GetAdminAccountRequest
    GetAdminAccountResponse.add_member(:admin_account_details, ::Smithy::Schema::Shapes::MemberShape.new(target: AdminAccountDetails, name: "adminAccountDetails"))
    GetAdminAccountResponse.type = Types::GetAdminAccountResponse
    GetDeploymentInput.add_member(:deployment_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentIdentifier, name: "deploymentIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDeploymentInput.type = Types::GetDeploymentInput
    GetDeploymentOutput.add_member(:deployment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentId, name: "deploymentId", traits: {"smithy.api#required" => {}}))
    GetDeploymentOutput.add_member(:deployment_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentArn, name: "deploymentArn", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "deploymentIdentifier"}))
    GetDeploymentOutput.add_member(:deployment_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentName, name: "deploymentName", traits: {"smithy.api#required" => {}}))
    GetDeploymentOutput.add_member(:deployment_description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "deploymentDescription"))
    GetDeploymentOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityStatus, name: "status", traits: {"smithy.api#required" => {}}))
    GetDeploymentOutput.add_member(:deployment_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentConfiguration, name: "deploymentConfiguration"))
    GetDeploymentOutput.add_member(:associated_policy_list, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociatedPolicyList, name: "associatedPolicyList", traits: {"smithy.api#notProperty" => {}, "smithy.api#required" => {}}))
    GetDeploymentOutput.add_member(:associated_scope_list, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociatedScopeList, name: "associatedScopeList", traits: {"smithy.api#notProperty" => {}, "smithy.api#required" => {}}))
    GetDeploymentOutput.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityVersion, name: "version", traits: {"smithy.api#required" => {}}))
    GetDeploymentOutput.add_member(:update_token, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateToken, name: "updateToken"))
    GetDeploymentOutput.add_member(:is_snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: IsSnapshot, name: "isSnapshot"))
    GetDeploymentOutput.add_member(:has_published_version, ::Smithy::Schema::Shapes::MemberShape.new(target: HasPublishedVersion, name: "hasPublishedVersion"))
    GetDeploymentOutput.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimestamp, name: "updatedAt"))
    GetDeploymentOutput.add_member(:deployment_coverage, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentCoverageList, name: "deploymentCoverage", traits: {"smithy.api#notProperty" => {}}))
    GetDeploymentOutput.add_member(:warnings, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentWarningList, name: "warnings", traits: {"smithy.api#notProperty" => {}}))
    GetDeploymentOutput.type = Types::GetDeploymentOutput
    GetPolicyInput.add_member(:policy_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyIdentifier, name: "policyIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetPolicyInput.type = Types::GetPolicyInput
    GetPolicyOutput.add_member(:policy_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyId, name: "policyId", traits: {"smithy.api#required" => {}}))
    GetPolicyOutput.add_member(:policy_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyArn, name: "policyArn", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "policyIdentifier"}))
    GetPolicyOutput.add_member(:policy_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyName, name: "policyName", traits: {"smithy.api#required" => {}}))
    GetPolicyOutput.add_member(:policy_description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "policyDescription"))
    GetPolicyOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityStatus, name: "status", traits: {"smithy.api#required" => {}}))
    GetPolicyOutput.add_member(:priority, ::Smithy::Schema::Shapes::MemberShape.new(target: Priority, name: "priority", traits: {"smithy.api#required" => {}}))
    GetPolicyOutput.add_member(:associated_template_and_rule_list, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociatedTemplateAndRuleList, name: "associatedTemplateAndRuleList", traits: {"smithy.api#notProperty" => {}, "smithy.api#required" => {}}))
    GetPolicyOutput.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityVersion, name: "version", traits: {"smithy.api#required" => {}}))
    GetPolicyOutput.add_member(:update_token, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateToken, name: "updateToken"))
    GetPolicyOutput.add_member(:is_snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: IsSnapshot, name: "isSnapshot"))
    GetPolicyOutput.add_member(:has_published_version, ::Smithy::Schema::Shapes::MemberShape.new(target: HasPublishedVersion, name: "hasPublishedVersion"))
    GetPolicyOutput.add_member(:firewall_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyFirewallType, name: "firewallType", traits: {"smithy.api#required" => {}}))
    GetPolicyOutput.add_member(:policy_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyConfiguration, name: "policyConfiguration"))
    GetPolicyOutput.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimestamp, name: "updatedAt"))
    GetPolicyOutput.type = Types::GetPolicyOutput
    GetRuleInput.add_member(:rule_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleIdentifier, name: "ruleIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetRuleInput.type = Types::GetRuleInput
    GetRuleOutput.add_member(:rule_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleId, name: "ruleId", traits: {"smithy.api#required" => {}}))
    GetRuleOutput.add_member(:rule_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleArn, name: "ruleArn", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "ruleIdentifier"}))
    GetRuleOutput.add_member(:rule_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleName, name: "ruleName", traits: {"smithy.api#required" => {}}))
    GetRuleOutput.add_member(:firewall_type, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleFirewallType, name: "firewallType", traits: {"smithy.api#required" => {}}))
    GetRuleOutput.add_member(:rule_type, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleType, name: "ruleType"))
    GetRuleOutput.add_member(:rule_description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "ruleDescription"))
    GetRuleOutput.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: JsonDocument, name: "configuration", traits: {"smithy.api#required" => {}}))
    GetRuleOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityStatus, name: "status", traits: {"smithy.api#required" => {}}))
    GetRuleOutput.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityVersion, name: "version", traits: {"smithy.api#required" => {}}))
    GetRuleOutput.add_member(:update_token, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateToken, name: "updateToken"))
    GetRuleOutput.add_member(:is_snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: IsSnapshot, name: "isSnapshot"))
    GetRuleOutput.add_member(:has_published_version, ::Smithy::Schema::Shapes::MemberShape.new(target: HasPublishedVersion, name: "hasPublishedVersion"))
    GetRuleOutput.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimestamp, name: "updatedAt"))
    GetRuleOutput.type = Types::GetRuleOutput
    GetScopeInput.add_member(:scope_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ScopeIdentifier, name: "scopeIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetScopeInput.type = Types::GetScopeInput
    GetScopeOutput.add_member(:scope_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ScopeId, name: "scopeId", traits: {"smithy.api#required" => {}}))
    GetScopeOutput.add_member(:scope_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ScopeArn, name: "scopeArn", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "scopeIdentifier"}))
    GetScopeOutput.add_member(:scope_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ScopeName, name: "scopeName", traits: {"smithy.api#required" => {}}))
    GetScopeOutput.add_member(:scope_description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "scopeDescription"))
    GetScopeOutput.add_member(:scope_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ScopeConfiguration, name: "scopeConfiguration"))
    GetScopeOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityStatus, name: "status", traits: {"smithy.api#required" => {}}))
    GetScopeOutput.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityVersion, name: "version", traits: {"smithy.api#required" => {}}))
    GetScopeOutput.add_member(:update_token, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateToken, name: "updateToken"))
    GetScopeOutput.add_member(:is_snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: IsSnapshot, name: "isSnapshot"))
    GetScopeOutput.add_member(:has_published_version, ::Smithy::Schema::Shapes::MemberShape.new(target: HasPublishedVersion, name: "hasPublishedVersion"))
    GetScopeOutput.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimestamp, name: "updatedAt"))
    GetScopeOutput.type = Types::GetScopeOutput
    GetTemplateInput.add_member(:template_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateIdentifier, name: "templateIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetTemplateInput.type = Types::GetTemplateInput
    GetTemplateOutput.add_member(:template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateId, name: "templateId", traits: {"smithy.api#required" => {}}))
    GetTemplateOutput.add_member(:template_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateArn, name: "templateArn", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "templateIdentifier"}))
    GetTemplateOutput.add_member(:template_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateName, name: "templateName", traits: {"smithy.api#required" => {}}))
    GetTemplateOutput.add_member(:template_description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "templateDescription"))
    GetTemplateOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityStatus, name: "status", traits: {"smithy.api#required" => {}}))
    GetTemplateOutput.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityVersion, name: "version", traits: {"smithy.api#required" => {}}))
    GetTemplateOutput.add_member(:associated_rule_list, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociatedRuleList, name: "associatedRuleList", traits: {"smithy.api#notProperty" => {}, "smithy.api#required" => {}}))
    GetTemplateOutput.add_member(:update_token, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateToken, name: "updateToken"))
    GetTemplateOutput.add_member(:is_snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: IsSnapshot, name: "isSnapshot"))
    GetTemplateOutput.add_member(:has_published_version, ::Smithy::Schema::Shapes::MemberShape.new(target: HasPublishedVersion, name: "hasPublishedVersion"))
    GetTemplateOutput.add_member(:firewall_type, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateFirewallType, name: "firewallType", traits: {"smithy.api#required" => {}}))
    GetTemplateOutput.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimestamp, name: "updatedAt"))
    GetTemplateOutput.type = Types::GetTemplateOutput
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    InternalServerException.type = Types::InternalServerException
    InvalidFirewallReasons.add_member(:incorrect_single_value_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationIssueList, name: "incorrectSingleValueConfigurations"))
    InvalidFirewallReasons.add_member(:missing_appendable_configuration_values, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationIssueList, name: "missingAppendableConfigurationValues"))
    InvalidFirewallReasons.add_member(:unexpected_appendable_configuration_values, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationIssueList, name: "unexpectedAppendableConfigurationValues"))
    InvalidFirewallReasons.add_member(:incorrect_appendable_configuration_order, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationIssueList, name: "incorrectAppendableConfigurationOrder"))
    InvalidFirewallReasons.add_member(:missing_mergeable_configuration_values, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationIssueList, name: "missingMergeableConfigurationValues"))
    InvalidFirewallReasons.add_member(:unexpected_mergeable_configuration_values, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationIssueList, name: "unexpectedMergeableConfigurationValues"))
    InvalidFirewallReasons.type = Types::InvalidFirewallReasons
    IpAddressType.add_member(:ipv4, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IPV4", traits: {"smithy.api#enumValue" => "ipv4"}))
    IpAddressType.add_member(:dualstack, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DUALSTACK", traits: {"smithy.api#enumValue" => "dualstack"}))
    IpAddressType.add_member(:dualstack_without_public_ipv4, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DUALSTACK_WITHOUT_PUBLIC_IPV4", traits: {"smithy.api#enumValue" => "dualstack-without-public-ipv4"}))
    ListAdminAccountsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListAdminAccountsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListAdminAccountsRequest.type = Types::ListAdminAccountsRequest
    ListAdminAccountsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListAdminAccountsResponse.add_member(:admin_accounts, ::Smithy::Schema::Shapes::MemberShape.new(target: AdminAccountSummaryList, name: "adminAccounts", traits: {"smithy.api#required" => {}}))
    ListAdminAccountsResponse.type = Types::ListAdminAccountsResponse
    ListAggregateResourceSynchronizationStatusesInput.add_member(:synchronization_status, ::Smithy::Schema::Shapes::MemberShape.new(target: SynchronizationStatus, name: "synchronizationStatus", traits: {"smithy.api#httpQuery" => "synchronizationStatus"}))
    ListAggregateResourceSynchronizationStatusesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListAggregateResourceSynchronizationStatusesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListAggregateResourceSynchronizationStatusesInput.type = Types::ListAggregateResourceSynchronizationStatusesInput
    ListAggregateResourceSynchronizationStatusesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListAggregateResourceSynchronizationStatusesOutput.add_member(:resource_synchronization_statuses, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceSynchronizationStatusSummaryList, name: "resourceSynchronizationStatuses", traits: {"smithy.api#required" => {}}))
    ListAggregateResourceSynchronizationStatusesOutput.type = Types::ListAggregateResourceSynchronizationStatusesOutput
    ListDeploymentSnapshotsInput.add_member(:deployment_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentIdentifier, name: "deploymentIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListDeploymentSnapshotsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#notProperty" => {}}))
    ListDeploymentSnapshotsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken", "smithy.api#notProperty" => {}}))
    ListDeploymentSnapshotsInput.type = Types::ListDeploymentSnapshotsInput
    ListDeploymentSnapshotsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#notProperty" => {}}))
    ListDeploymentSnapshotsOutput.add_member(:snapshots, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentSummaryList, name: "snapshots", traits: {"smithy.api#notProperty" => {}, "smithy.api#required" => {}}))
    ListDeploymentSnapshotsOutput.type = Types::ListDeploymentSnapshotsOutput
    ListDeploymentsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListDeploymentsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListDeploymentsInput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityStatusFilter, name: "status", traits: {"smithy.api#httpQuery" => "status", "smithy.api#notProperty" => {}}))
    ListDeploymentsInput.type = Types::ListDeploymentsInput
    ListDeploymentsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListDeploymentsOutput.add_member(:deployments, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentSummaryList, name: "deployments", traits: {"smithy.api#required" => {}}))
    ListDeploymentsOutput.type = Types::ListDeploymentsOutput
    ListPoliciesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListPoliciesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListPoliciesInput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityStatusFilter, name: "status", traits: {"smithy.api#httpQuery" => "status", "smithy.api#notProperty" => {}}))
    ListPoliciesInput.type = Types::ListPoliciesInput
    ListPoliciesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListPoliciesOutput.add_member(:policies, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicySummaryList, name: "policies", traits: {"smithy.api#required" => {}}))
    ListPoliciesOutput.type = Types::ListPoliciesOutput
    ListPolicySnapshotsInput.add_member(:policy_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyIdentifier, name: "policyIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListPolicySnapshotsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#notProperty" => {}}))
    ListPolicySnapshotsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken", "smithy.api#notProperty" => {}}))
    ListPolicySnapshotsInput.type = Types::ListPolicySnapshotsInput
    ListPolicySnapshotsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#notProperty" => {}}))
    ListPolicySnapshotsOutput.add_member(:snapshots, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicySummaryList, name: "snapshots", traits: {"smithy.api#notProperty" => {}, "smithy.api#required" => {}}))
    ListPolicySnapshotsOutput.type = Types::ListPolicySnapshotsOutput
    ListResourceAssociationsInput.add_member(:resource_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdentifier, name: "resourceIdentifier", traits: {"smithy.api#httpQuery" => "resourceIdentifier", "smithy.api#required" => {}}))
    ListResourceAssociationsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListResourceAssociationsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListResourceAssociationsInput.type = Types::ListResourceAssociationsInput
    ListResourceAssociationsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListResourceAssociationsOutput.add_member(:resource_associations, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceAssociationList, name: "resourceAssociations", traits: {"smithy.api#required" => {}}))
    ListResourceAssociationsOutput.type = Types::ListResourceAssociationsOutput
    ListResourceSynchronizationStatusesInput.add_member(:deployment_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentIdentifier, name: "deploymentIdentifier", traits: {"smithy.api#httpQuery" => "deploymentIdentifier", "smithy.api#required" => {}}))
    ListResourceSynchronizationStatusesInput.add_member(:synchronization_status, ::Smithy::Schema::Shapes::MemberShape.new(target: SynchronizationStatus, name: "synchronizationStatus", traits: {"smithy.api#httpQuery" => "synchronizationStatus", "smithy.api#notProperty" => {}}))
    ListResourceSynchronizationStatusesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#notProperty" => {}}))
    ListResourceSynchronizationStatusesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken", "smithy.api#notProperty" => {}}))
    ListResourceSynchronizationStatusesInput.type = Types::ListResourceSynchronizationStatusesInput
    ListResourceSynchronizationStatusesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#notProperty" => {}}))
    ListResourceSynchronizationStatusesOutput.add_member(:resource_synchronization_statuses, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceSynchronizationStatusSummaryList, name: "resourceSynchronizationStatuses", traits: {"smithy.api#notProperty" => {}, "smithy.api#required" => {}}))
    ListResourceSynchronizationStatusesOutput.type = Types::ListResourceSynchronizationStatusesOutput
    ListRuleSnapshotsInput.add_member(:rule_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleIdentifier, name: "ruleIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListRuleSnapshotsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#notProperty" => {}}))
    ListRuleSnapshotsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken", "smithy.api#notProperty" => {}}))
    ListRuleSnapshotsInput.type = Types::ListRuleSnapshotsInput
    ListRuleSnapshotsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#notProperty" => {}}))
    ListRuleSnapshotsOutput.add_member(:snapshots, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleSummaryList, name: "snapshots", traits: {"smithy.api#notProperty" => {}, "smithy.api#required" => {}}))
    ListRuleSnapshotsOutput.type = Types::ListRuleSnapshotsOutput
    ListRulesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListRulesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListRulesInput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityStatusFilter, name: "status", traits: {"smithy.api#httpQuery" => "status", "smithy.api#notProperty" => {}}))
    ListRulesInput.type = Types::ListRulesInput
    ListRulesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListRulesOutput.add_member(:rules, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleSummaryList, name: "rules", traits: {"smithy.api#required" => {}}))
    ListRulesOutput.type = Types::ListRulesOutput
    ListScopeSnapshotsInput.add_member(:scope_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ScopeIdentifier, name: "scopeIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListScopeSnapshotsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#notProperty" => {}}))
    ListScopeSnapshotsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken", "smithy.api#notProperty" => {}}))
    ListScopeSnapshotsInput.type = Types::ListScopeSnapshotsInput
    ListScopeSnapshotsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#notProperty" => {}}))
    ListScopeSnapshotsOutput.add_member(:snapshots, ::Smithy::Schema::Shapes::MemberShape.new(target: ScopeSummaryList, name: "snapshots", traits: {"smithy.api#notProperty" => {}, "smithy.api#required" => {}}))
    ListScopeSnapshotsOutput.type = Types::ListScopeSnapshotsOutput
    ListScopesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListScopesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListScopesInput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityStatusFilter, name: "status", traits: {"smithy.api#httpQuery" => "status", "smithy.api#notProperty" => {}}))
    ListScopesInput.type = Types::ListScopesInput
    ListScopesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListScopesOutput.add_member(:scopes, ::Smithy::Schema::Shapes::MemberShape.new(target: ScopeSummaryList, name: "scopes", traits: {"smithy.api#required" => {}}))
    ListScopesOutput.type = Types::ListScopesOutput
    ListTagsForResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceInput.type = Types::ListTagsForResourceInput
    ListTagsForResourceOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    ListTemplateSnapshotsInput.add_member(:template_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateIdentifier, name: "templateIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTemplateSnapshotsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#notProperty" => {}}))
    ListTemplateSnapshotsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken", "smithy.api#notProperty" => {}}))
    ListTemplateSnapshotsInput.type = Types::ListTemplateSnapshotsInput
    ListTemplateSnapshotsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#notProperty" => {}}))
    ListTemplateSnapshotsOutput.add_member(:snapshots, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateSummaryList, name: "snapshots", traits: {"smithy.api#notProperty" => {}, "smithy.api#required" => {}}))
    ListTemplateSnapshotsOutput.type = Types::ListTemplateSnapshotsOutput
    ListTemplatesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListTemplatesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListTemplatesInput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityStatusFilter, name: "status", traits: {"smithy.api#httpQuery" => "status", "smithy.api#notProperty" => {}}))
    ListTemplatesInput.type = Types::ListTemplatesInput
    ListTemplatesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListTemplatesOutput.add_member(:templates, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateSummaryList, name: "templates", traits: {"smithy.api#required" => {}}))
    ListTemplatesOutput.type = Types::ListTemplatesOutput
    NotVisibleMarker.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "reason", traits: {"smithy.api#required" => {}}))
    NotVisibleMarker.type = Types::NotVisibleMarker
    OrganizationalUnitIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationalUnitId, name: "member"))
    OrganizationalUnitList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationalUnit, name: "member"))
    OrganizationalUnitReference.add_member(:ou_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationalUnitId, name: "ouId", traits: {"smithy.api#required" => {}}))
    OrganizationalUnitReference.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name"))
    OrganizationalUnitReference.type = Types::OrganizationalUnitReference
    OrganizationalUnitReferenceList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationalUnitReference, name: "member"))
    OutOfSyncReasons.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyFirewallType, name: "key"))
    OutOfSyncReasons.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallSyncReason, name: "value"))
    OutOfSyncReasonsView.add_member(:reasons, Types::OutOfSyncReasonsView::Reasons, ::Smithy::Schema::Shapes::MemberShape.new(target: OutOfSyncReasons, name: "reasons"))
    OutOfSyncReasonsView.add_member(:not_visible, Types::OutOfSyncReasonsView::NotVisible, ::Smithy::Schema::Shapes::MemberShape.new(target: NotVisibleMarker, name: "notVisible"))
    OutOfSyncReasonsView.add_member(:unknown, Types::OutOfSyncReasonsView::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    OutOfSyncReasonsView.type = Types::OutOfSyncReasonsView
    PolicyConfiguration.add_member(:remediation_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: RemediationEnabled, name: "remediationEnabled", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    PolicyConfiguration.add_member(:resources_clean_up, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourcesCleanUp, name: "resourcesCleanUp", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    PolicyConfiguration.add_member(:waf_config, ::Smithy::Schema::Shapes::MemberShape.new(target: WafConfig, name: "wafConfig"))
    PolicyConfiguration.type = Types::PolicyConfiguration
    PolicyFirewallType.add_member(:waf, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WAF", traits: {"smithy.api#enumValue" => "WAF"}))
    PolicyFirewallType.add_member(:shield_advanced, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SHIELD_ADVANCED", traits: {"smithy.api#enumValue" => "SHIELD_ADVANCED"}))
    PolicyReference.add_member(:policy_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyIdentifier, name: "policyIdentifier", traits: {"smithy.api#required" => {}}))
    PolicyReference.type = Types::PolicyReference
    PolicyReferenceList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyReference, name: "member"))
    PolicySummary.add_member(:policy_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyId, name: "policyId", traits: {"smithy.api#required" => {}}))
    PolicySummary.add_member(:policy_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyArn, name: "policyArn", traits: {"smithy.api#required" => {}}))
    PolicySummary.add_member(:policy_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyName, name: "policyName"))
    PolicySummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityStatus, name: "status"))
    PolicySummary.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityVersion, name: "version"))
    PolicySummary.add_member(:has_published_version, ::Smithy::Schema::Shapes::MemberShape.new(target: HasPublishedVersion, name: "hasPublishedVersion"))
    PolicySummary.add_member(:firewall_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyFirewallType, name: "firewallType"))
    PolicySummary.add_member(:priority, ::Smithy::Schema::Shapes::MemberShape.new(target: Priority, name: "priority"))
    PolicySummary.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimestamp, name: "updatedAt"))
    PolicySummary.type = Types::PolicySummary
    PolicySummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicySummary, name: "member"))
    PutAdminAccountRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "accountId", traits: {"smithy.api#required" => {}}))
    PutAdminAccountRequest.add_member(:priority, ::Smithy::Schema::Shapes::MemberShape.new(target: AdminPriority, name: "priority", traits: {"smithy.api#required" => {}}))
    PutAdminAccountRequest.add_member(:admin_scope, ::Smithy::Schema::Shapes::MemberShape.new(target: AdminScopeInput, name: "adminScope"))
    PutAdminAccountRequest.type = Types::PutAdminAccountRequest
    PutAdminAccountResponse.add_member(:admin_account_details, ::Smithy::Schema::Shapes::MemberShape.new(target: AdminAccountDetails, name: "adminAccountDetails"))
    PutAdminAccountResponse.type = Types::PutAdminAccountResponse
    RemediationIssueDetails.add_member(:issue_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "issueType"))
    RemediationIssueDetails.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    RemediationIssueDetails.add_member(:corrective_action, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "correctiveAction"))
    RemediationIssueDetails.type = Types::RemediationIssueDetails
    RemediationIssues.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyFirewallType, name: "key"))
    RemediationIssues.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: RemediationIssueDetails, name: "value"))
    RemediationIssuesView.add_member(:issues, Types::RemediationIssuesView::Issues, ::Smithy::Schema::Shapes::MemberShape.new(target: RemediationIssues, name: "issues"))
    RemediationIssuesView.add_member(:not_visible, Types::RemediationIssuesView::NotVisible, ::Smithy::Schema::Shapes::MemberShape.new(target: NotVisibleMarker, name: "notVisible"))
    RemediationIssuesView.add_member(:unknown, Types::RemediationIssuesView::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    RemediationIssuesView.type = Types::RemediationIssuesView
    ResourceArnList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "member"))
    ResourceAssociation.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "arn", traits: {"smithy.api#required" => {}}))
    ResourceAssociation.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceResourceType, name: "resourceType", traits: {"smithy.api#required" => {}}))
    ResourceAssociation.type = Types::ResourceAssociation
    ResourceAssociationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceAssociation, name: "member"))
    ResourceCriteria.add_member(:tags, Types::ResourceCriteria::Tags, ::Smithy::Schema::Shapes::MemberShape.new(target: StringMap, name: "tags"))
    ResourceCriteria.add_member(:alb_config, Types::ResourceCriteria::AlbConfig, ::Smithy::Schema::Shapes::MemberShape.new(target: AlbConfiguration, name: "albConfig"))
    ResourceCriteria.add_member(:unknown, Types::ResourceCriteria::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    ResourceCriteria.type = Types::ResourceCriteria
    ResourceLogicalExpression.add_member(:criteria, Types::ResourceLogicalExpression::Criteria, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceCriteria, name: "criteria"))
    ResourceLogicalExpression.add_member(:and, Types::ResourceLogicalExpression::And, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceLogicalExpressionList, name: "and"))
    ResourceLogicalExpression.add_member(:or, Types::ResourceLogicalExpression::Or, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceLogicalExpressionList, name: "or"))
    ResourceLogicalExpression.add_member(:not, Types::ResourceLogicalExpression::Not, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceLogicalExpression, name: "not"))
    ResourceLogicalExpression.add_member(:unknown, Types::ResourceLogicalExpression::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    ResourceLogicalExpression.type = Types::ResourceLogicalExpression
    ResourceLogicalExpressionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceLogicalExpression, name: "member"))
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceId"))
    ResourceNotFoundException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceType"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceScope.add_member(:include_all, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "includeAll"))
    ResourceScope.add_member(:include, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceSet, name: "include"))
    ResourceScope.add_member(:exclude, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceSet, name: "exclude"))
    ResourceScope.type = Types::ResourceScope
    ResourceScopeMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ScopeResourceType, name: "key"))
    ResourceScopeMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceScope, name: "value"))
    ResourceSet.add_member(:explicit_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArnList, name: "explicitArns"))
    ResourceSet.add_member(:expression, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceLogicalExpression, name: "expression"))
    ResourceSet.type = Types::ResourceSet
    ResourceSynchronizationStatusSummary.add_member(:synchronization_status, ::Smithy::Schema::Shapes::MemberShape.new(target: SynchronizationStatus, name: "synchronizationStatus", traits: {"smithy.api#required" => {}}))
    ResourceSynchronizationStatusSummary.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "accountId", traits: {"smithy.api#required" => {}}))
    ResourceSynchronizationStatusSummary.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "resourceArn", traits: {"smithy.api#required" => {}}))
    ResourceSynchronizationStatusSummary.add_member(:deployment_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentArn, name: "deploymentArn"))
    ResourceSynchronizationStatusSummary.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "resourceType"))
    ResourceSynchronizationStatusSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimestamp, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    ResourceSynchronizationStatusSummary.add_member(:out_of_sync_reasons, ::Smithy::Schema::Shapes::MemberShape.new(target: OutOfSyncReasonsView, name: "outOfSyncReasons"))
    ResourceSynchronizationStatusSummary.add_member(:remediation_issues, ::Smithy::Schema::Shapes::MemberShape.new(target: RemediationIssuesView, name: "remediationIssues"))
    ResourceSynchronizationStatusSummary.add_member(:evaluated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimestamp, name: "evaluatedAt"))
    ResourceSynchronizationStatusSummary.type = Types::ResourceSynchronizationStatusSummary
    ResourceSynchronizationStatusSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceSynchronizationStatusSummary, name: "member"))
    ResourceType.add_member(:apigw, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "APIGW", traits: {"smithy.api#enumValue" => "AWS::ApiGateway::Stage"}))
    ResourceType.add_member(:cfd, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CFD", traits: {"smithy.api#enumValue" => "AWS::CloudFront::Distribution"}))
    ResourceType.add_member(:eip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EIP", traits: {"smithy.api#enumValue" => "AWS::EC2::EIP"}))
    ResourceType.add_member(:alb, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALB", traits: {"smithy.api#enumValue" => "AWS::ElasticLoadBalancingV2::LoadBalancer::application"}))
    ResourceType.add_member(:clb, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CLB", traits: {"smithy.api#enumValue" => "AWS::ElasticLoadBalancing::LoadBalancer"}))
    ResourceType.add_member(:waf_v2_webacl, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WAF_V2_WEBACL", traits: {"smithy.api#enumValue" => "AWS::WAFv2::WebACL"}))
    ResourceType.add_member(:shield_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SHIELD_PROTECTION", traits: {"smithy.api#enumValue" => "AWS::Shield::Protection"}))
    ResourceType.add_member(:shieldregional_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SHIELDREGIONAL_PROTECTION", traits: {"smithy.api#enumValue" => "AWS::ShieldRegional::Protection"}))
    RuleFirewallType.add_member(:waf, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WAF", traits: {"smithy.api#enumValue" => "WAF"}))
    RuleReference.add_member(:rule_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleIdentifier, name: "ruleIdentifier", traits: {"smithy.api#required" => {}}))
    RuleReference.type = Types::RuleReference
    RuleReferenceList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleReference, name: "member"))
    RuleSummary.add_member(:rule_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleId, name: "ruleId", traits: {"smithy.api#required" => {}}))
    RuleSummary.add_member(:rule_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleArn, name: "ruleArn", traits: {"smithy.api#required" => {}}))
    RuleSummary.add_member(:rule_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleName, name: "ruleName", traits: {"smithy.api#required" => {}}))
    RuleSummary.add_member(:firewall_type, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleFirewallType, name: "firewallType"))
    RuleSummary.add_member(:rule_type, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleType, name: "ruleType"))
    RuleSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityStatus, name: "status"))
    RuleSummary.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityVersion, name: "version"))
    RuleSummary.add_member(:has_published_version, ::Smithy::Schema::Shapes::MemberShape.new(target: HasPublishedVersion, name: "hasPublishedVersion"))
    RuleSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimestamp, name: "updatedAt"))
    RuleSummary.type = Types::RuleSummary
    RuleSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleSummary, name: "member"))
    RuleType.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONFIGURATION", traits: {"smithy.api#enumValue" => "CONFIGURATION"}))
    RuleType.add_member(:inspection, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INSPECTION", traits: {"smithy.api#enumValue" => "INSPECTION"}))
    Scheme.add_member(:internet_facing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INTERNET_FACING", traits: {"smithy.api#enumValue" => "internet-facing"}))
    Scheme.add_member(:internal, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INTERNAL", traits: {"smithy.api#enumValue" => "internal"}))
    ScopeConfiguration.add_member(:account_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountFilter, name: "accountFilter"))
    ScopeConfiguration.add_member(:resource_scopes, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceScopeMap, name: "resourceScopes", traits: {"smithy.api#required" => {}}))
    ScopeConfiguration.type = Types::ScopeConfiguration
    ScopeReference.add_member(:scope_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ScopeIdentifier, name: "scopeIdentifier", traits: {"smithy.api#required" => {}}))
    ScopeReference.type = Types::ScopeReference
    ScopeReferenceList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ScopeReference, name: "member"))
    ScopeResourceType.add_member(:apigw, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "APIGW", traits: {"smithy.api#enumValue" => "AWS::ApiGateway::Stage"}))
    ScopeResourceType.add_member(:cfd, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CFD", traits: {"smithy.api#enumValue" => "AWS::CloudFront::Distribution"}))
    ScopeResourceType.add_member(:eip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EIP", traits: {"smithy.api#enumValue" => "AWS::EC2::EIP"}))
    ScopeResourceType.add_member(:alb, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALB", traits: {"smithy.api#enumValue" => "AWS::ElasticLoadBalancingV2::LoadBalancer::application"}))
    ScopeResourceType.add_member(:clb, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CLB", traits: {"smithy.api#enumValue" => "AWS::ElasticLoadBalancing::LoadBalancer"}))
    ScopeSummary.add_member(:scope_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ScopeId, name: "scopeId", traits: {"smithy.api#required" => {}}))
    ScopeSummary.add_member(:scope_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ScopeArn, name: "scopeArn", traits: {"smithy.api#required" => {}}))
    ScopeSummary.add_member(:scope_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ScopeName, name: "scopeName"))
    ScopeSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityStatus, name: "status"))
    ScopeSummary.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityVersion, name: "version"))
    ScopeSummary.add_member(:has_published_version, ::Smithy::Schema::Shapes::MemberShape.new(target: HasPublishedVersion, name: "hasPublishedVersion"))
    ScopeSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimestamp, name: "updatedAt"))
    ScopeSummary.type = Types::ScopeSummary
    ScopeSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ScopeSummary, name: "member"))
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:quota_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "quotaCode"))
    ServiceQuotaExceededException.add_member(:service_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "serviceCode"))
    ServiceQuotaExceededException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceId"))
    ServiceQuotaExceededException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceType"))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    ServiceResourceType.add_member(:rule, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RULE", traits: {"smithy.api#enumValue" => "Rule"}))
    ServiceResourceType.add_member(:template, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TEMPLATE", traits: {"smithy.api#enumValue" => "Template"}))
    ServiceResourceType.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "POLICY", traits: {"smithy.api#enumValue" => "Policy"}))
    ServiceResourceType.add_member(:deployment, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEPLOYMENT", traits: {"smithy.api#enumValue" => "Deployment"}))
    ServiceResourceType.add_member(:scope, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SCOPE", traits: {"smithy.api#enumValue" => "Scope"}))
    ServiceUnavailableException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ServiceUnavailableException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "retryAfterSeconds"))
    ServiceUnavailableException.type = Types::ServiceUnavailableException
    StringMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "key"))
    StringMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "value"))
    SynchronizationStatus.add_member(:in_sync, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_SYNC", traits: {"smithy.api#enumValue" => "IN_SYNC"}))
    SynchronizationStatus.add_member(:out_of_sync, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OUT_OF_SYNC", traits: {"smithy.api#enumValue" => "OUT_OF_SYNC"}))
    SynchronizationStatus.add_member(:not_applicable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_APPLICABLE", traits: {"smithy.api#enumValue" => "NOT_APPLICABLE"}))
    TagKeyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member"))
    TagMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "key"))
    TagMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "value"))
    TagPolicyViolationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    TagPolicyViolationException.type = Types::TagPolicyViolationException
    TagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags", traits: {"smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    TagResourceOutput.type = Types::TagResourceOutput
    TemplateAndRuleReferenceList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateOrRuleReference, name: "member"))
    TemplateFirewallType.add_member(:waf, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WAF", traits: {"smithy.api#enumValue" => "WAF"}))
    TemplateOrRuleReference.add_member(:template_identifier, Types::TemplateOrRuleReference::TemplateIdentifier, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateIdentifier, name: "templateIdentifier", traits: {"smithy.api#suppress" => ["MemberShouldReferenceResource"]}))
    TemplateOrRuleReference.add_member(:rule_identifier, Types::TemplateOrRuleReference::RuleIdentifier, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleIdentifier, name: "ruleIdentifier", traits: {"smithy.api#suppress" => ["MemberShouldReferenceResource"]}))
    TemplateOrRuleReference.add_member(:unknown, Types::TemplateOrRuleReference::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    TemplateOrRuleReference.type = Types::TemplateOrRuleReference
    TemplateSummary.add_member(:template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateId, name: "templateId", traits: {"smithy.api#required" => {}}))
    TemplateSummary.add_member(:template_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateArn, name: "templateArn", traits: {"smithy.api#required" => {}}))
    TemplateSummary.add_member(:template_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateName, name: "templateName", traits: {"smithy.api#required" => {}}))
    TemplateSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityStatus, name: "status"))
    TemplateSummary.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityVersion, name: "version"))
    TemplateSummary.add_member(:has_published_version, ::Smithy::Schema::Shapes::MemberShape.new(target: HasPublishedVersion, name: "hasPublishedVersion"))
    TemplateSummary.add_member(:firewall_type, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateFirewallType, name: "firewallType"))
    TemplateSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimestamp, name: "updatedAt"))
    TemplateSummary.type = Types::TemplateSummary
    TemplateSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateSummary, name: "member"))
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ThrottlingException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "retryAfterSeconds"))
    ThrottlingException.type = Types::ThrottlingException
    UntagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceInput.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "tagKeys", traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    UntagResourceOutput.type = Types::UntagResourceOutput
    UpdateDeploymentInput.add_member(:deployment_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentIdentifier, name: "deploymentIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateDeploymentInput.add_member(:update_token, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateToken, name: "updateToken", traits: {"smithy.api#required" => {}}))
    UpdateDeploymentInput.add_member(:deployment_description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "deploymentDescription"))
    UpdateDeploymentInput.add_member(:deployment_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentConfiguration, name: "deploymentConfiguration"))
    UpdateDeploymentInput.add_member(:associated_policy_list, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyReferenceList, name: "associatedPolicyList", traits: {"smithy.api#notProperty" => {}}))
    UpdateDeploymentInput.add_member(:associated_scope_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ScopeReferenceList, name: "associatedScopeList", traits: {"smithy.api#notProperty" => {}}))
    UpdateDeploymentInput.add_member(:is_published, ::Smithy::Schema::Shapes::MemberShape.new(target: IsPublished, name: "isPublished", traits: {"smithy.api#notProperty" => {}, "smithy.api#required" => {}}))
    UpdateDeploymentInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: IdempotencyToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#notProperty" => {}}))
    UpdateDeploymentInput.type = Types::UpdateDeploymentInput
    UpdateDeploymentOutput.add_member(:deployment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentId, name: "deploymentId", traits: {"smithy.api#required" => {}}))
    UpdateDeploymentOutput.add_member(:deployment_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentArn, name: "deploymentArn", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "deploymentIdentifier"}))
    UpdateDeploymentOutput.add_member(:deployment_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentName, name: "deploymentName", traits: {"smithy.api#required" => {}}))
    UpdateDeploymentOutput.add_member(:deployment_description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "deploymentDescription"))
    UpdateDeploymentOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityStatus, name: "status", traits: {"smithy.api#required" => {}}))
    UpdateDeploymentOutput.add_member(:deployment_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentConfiguration, name: "deploymentConfiguration"))
    UpdateDeploymentOutput.add_member(:associated_policy_list, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociatedPolicyList, name: "associatedPolicyList", traits: {"smithy.api#notProperty" => {}, "smithy.api#required" => {}}))
    UpdateDeploymentOutput.add_member(:associated_scope_list, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociatedScopeList, name: "associatedScopeList", traits: {"smithy.api#notProperty" => {}, "smithy.api#required" => {}}))
    UpdateDeploymentOutput.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityVersion, name: "version", traits: {"smithy.api#required" => {}}))
    UpdateDeploymentOutput.add_member(:update_token, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateToken, name: "updateToken"))
    UpdateDeploymentOutput.add_member(:is_snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: IsSnapshot, name: "isSnapshot"))
    UpdateDeploymentOutput.add_member(:has_published_version, ::Smithy::Schema::Shapes::MemberShape.new(target: HasPublishedVersion, name: "hasPublishedVersion"))
    UpdateDeploymentOutput.add_member(:deployment_coverage, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentCoverageList, name: "deploymentCoverage", traits: {"smithy.api#notProperty" => {}}))
    UpdateDeploymentOutput.add_member(:warnings, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentWarningList, name: "warnings", traits: {"smithy.api#notProperty" => {}}))
    UpdateDeploymentOutput.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimestamp, name: "updatedAt"))
    UpdateDeploymentOutput.type = Types::UpdateDeploymentOutput
    UpdatePolicyInput.add_member(:policy_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyIdentifier, name: "policyIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdatePolicyInput.add_member(:update_token, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateToken, name: "updateToken", traits: {"smithy.api#required" => {}}))
    UpdatePolicyInput.add_member(:policy_description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "policyDescription"))
    UpdatePolicyInput.add_member(:priority, ::Smithy::Schema::Shapes::MemberShape.new(target: Priority, name: "priority"))
    UpdatePolicyInput.add_member(:associated_template_and_rule_list, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateAndRuleReferenceList, name: "associatedTemplateAndRuleList", traits: {"smithy.api#notProperty" => {}}))
    UpdatePolicyInput.add_member(:policy_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyConfiguration, name: "policyConfiguration"))
    UpdatePolicyInput.add_member(:is_published, ::Smithy::Schema::Shapes::MemberShape.new(target: IsPublished, name: "isPublished", traits: {"smithy.api#notProperty" => {}, "smithy.api#required" => {}}))
    UpdatePolicyInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: IdempotencyToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#notProperty" => {}}))
    UpdatePolicyInput.type = Types::UpdatePolicyInput
    UpdatePolicyOutput.add_member(:policy_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyId, name: "policyId", traits: {"smithy.api#required" => {}}))
    UpdatePolicyOutput.add_member(:policy_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyArn, name: "policyArn", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "policyIdentifier"}))
    UpdatePolicyOutput.add_member(:policy_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyName, name: "policyName", traits: {"smithy.api#required" => {}}))
    UpdatePolicyOutput.add_member(:policy_description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "policyDescription"))
    UpdatePolicyOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityStatus, name: "status", traits: {"smithy.api#required" => {}}))
    UpdatePolicyOutput.add_member(:priority, ::Smithy::Schema::Shapes::MemberShape.new(target: Priority, name: "priority", traits: {"smithy.api#required" => {}}))
    UpdatePolicyOutput.add_member(:associated_template_and_rule_list, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociatedTemplateAndRuleList, name: "associatedTemplateAndRuleList", traits: {"smithy.api#notProperty" => {}, "smithy.api#required" => {}}))
    UpdatePolicyOutput.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityVersion, name: "version", traits: {"smithy.api#required" => {}}))
    UpdatePolicyOutput.add_member(:update_token, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateToken, name: "updateToken"))
    UpdatePolicyOutput.add_member(:is_snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: IsSnapshot, name: "isSnapshot"))
    UpdatePolicyOutput.add_member(:has_published_version, ::Smithy::Schema::Shapes::MemberShape.new(target: HasPublishedVersion, name: "hasPublishedVersion"))
    UpdatePolicyOutput.add_member(:firewall_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyFirewallType, name: "firewallType", traits: {"smithy.api#required" => {}}))
    UpdatePolicyOutput.add_member(:policy_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyConfiguration, name: "policyConfiguration"))
    UpdatePolicyOutput.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimestamp, name: "updatedAt"))
    UpdatePolicyOutput.type = Types::UpdatePolicyOutput
    UpdateRuleInput.add_member(:rule_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleIdentifier, name: "ruleIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateRuleInput.add_member(:update_token, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateToken, name: "updateToken", traits: {"smithy.api#required" => {}}))
    UpdateRuleInput.add_member(:rule_type, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleType, name: "ruleType"))
    UpdateRuleInput.add_member(:rule_description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "ruleDescription"))
    UpdateRuleInput.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: JsonDocument, name: "configuration"))
    UpdateRuleInput.add_member(:is_published, ::Smithy::Schema::Shapes::MemberShape.new(target: IsPublished, name: "isPublished", traits: {"smithy.api#notProperty" => {}, "smithy.api#required" => {}}))
    UpdateRuleInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: IdempotencyToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#notProperty" => {}}))
    UpdateRuleInput.type = Types::UpdateRuleInput
    UpdateRuleOutput.add_member(:rule_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleId, name: "ruleId", traits: {"smithy.api#required" => {}}))
    UpdateRuleOutput.add_member(:rule_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleArn, name: "ruleArn", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "ruleIdentifier"}))
    UpdateRuleOutput.add_member(:rule_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleName, name: "ruleName", traits: {"smithy.api#required" => {}}))
    UpdateRuleOutput.add_member(:firewall_type, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleFirewallType, name: "firewallType", traits: {"smithy.api#required" => {}}))
    UpdateRuleOutput.add_member(:rule_type, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleType, name: "ruleType"))
    UpdateRuleOutput.add_member(:rule_description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "ruleDescription"))
    UpdateRuleOutput.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: JsonDocument, name: "configuration", traits: {"smithy.api#required" => {}}))
    UpdateRuleOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityStatus, name: "status", traits: {"smithy.api#required" => {}}))
    UpdateRuleOutput.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityVersion, name: "version", traits: {"smithy.api#required" => {}}))
    UpdateRuleOutput.add_member(:update_token, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateToken, name: "updateToken"))
    UpdateRuleOutput.add_member(:is_snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: IsSnapshot, name: "isSnapshot"))
    UpdateRuleOutput.add_member(:has_published_version, ::Smithy::Schema::Shapes::MemberShape.new(target: HasPublishedVersion, name: "hasPublishedVersion"))
    UpdateRuleOutput.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimestamp, name: "updatedAt"))
    UpdateRuleOutput.type = Types::UpdateRuleOutput
    UpdateScopeInput.add_member(:scope_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ScopeIdentifier, name: "scopeIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateScopeInput.add_member(:update_token, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateToken, name: "updateToken", traits: {"smithy.api#required" => {}}))
    UpdateScopeInput.add_member(:scope_description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "scopeDescription"))
    UpdateScopeInput.add_member(:scope_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ScopeConfiguration, name: "scopeConfiguration"))
    UpdateScopeInput.add_member(:is_published, ::Smithy::Schema::Shapes::MemberShape.new(target: IsPublished, name: "isPublished", traits: {"smithy.api#notProperty" => {}, "smithy.api#required" => {}}))
    UpdateScopeInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: IdempotencyToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#notProperty" => {}}))
    UpdateScopeInput.type = Types::UpdateScopeInput
    UpdateScopeOutput.add_member(:scope_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ScopeId, name: "scopeId", traits: {"smithy.api#required" => {}}))
    UpdateScopeOutput.add_member(:scope_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ScopeArn, name: "scopeArn", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "scopeIdentifier"}))
    UpdateScopeOutput.add_member(:scope_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ScopeName, name: "scopeName", traits: {"smithy.api#required" => {}}))
    UpdateScopeOutput.add_member(:scope_description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "scopeDescription"))
    UpdateScopeOutput.add_member(:scope_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ScopeConfiguration, name: "scopeConfiguration"))
    UpdateScopeOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityStatus, name: "status", traits: {"smithy.api#required" => {}}))
    UpdateScopeOutput.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityVersion, name: "version", traits: {"smithy.api#required" => {}}))
    UpdateScopeOutput.add_member(:update_token, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateToken, name: "updateToken"))
    UpdateScopeOutput.add_member(:is_snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: IsSnapshot, name: "isSnapshot"))
    UpdateScopeOutput.add_member(:has_published_version, ::Smithy::Schema::Shapes::MemberShape.new(target: HasPublishedVersion, name: "hasPublishedVersion"))
    UpdateScopeOutput.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimestamp, name: "updatedAt"))
    UpdateScopeOutput.type = Types::UpdateScopeOutput
    UpdateTemplateInput.add_member(:template_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateIdentifier, name: "templateIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateTemplateInput.add_member(:update_token, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateToken, name: "updateToken", traits: {"smithy.api#required" => {}}))
    UpdateTemplateInput.add_member(:template_description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "templateDescription"))
    UpdateTemplateInput.add_member(:associated_rule_list, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleReferenceList, name: "associatedRuleList", traits: {"smithy.api#notProperty" => {}}))
    UpdateTemplateInput.add_member(:is_published, ::Smithy::Schema::Shapes::MemberShape.new(target: IsPublished, name: "isPublished", traits: {"smithy.api#notProperty" => {}, "smithy.api#required" => {}}))
    UpdateTemplateInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: IdempotencyToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#notProperty" => {}}))
    UpdateTemplateInput.type = Types::UpdateTemplateInput
    UpdateTemplateOutput.add_member(:template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateId, name: "templateId", traits: {"smithy.api#required" => {}}))
    UpdateTemplateOutput.add_member(:template_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateArn, name: "templateArn", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "templateIdentifier"}))
    UpdateTemplateOutput.add_member(:template_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateName, name: "templateName", traits: {"smithy.api#required" => {}}))
    UpdateTemplateOutput.add_member(:template_description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "templateDescription"))
    UpdateTemplateOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityStatus, name: "status", traits: {"smithy.api#required" => {}}))
    UpdateTemplateOutput.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityVersion, name: "version", traits: {"smithy.api#required" => {}}))
    UpdateTemplateOutput.add_member(:associated_rule_list, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociatedRuleList, name: "associatedRuleList", traits: {"smithy.api#notProperty" => {}, "smithy.api#required" => {}}))
    UpdateTemplateOutput.add_member(:update_token, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateToken, name: "updateToken"))
    UpdateTemplateOutput.add_member(:is_snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: IsSnapshot, name: "isSnapshot"))
    UpdateTemplateOutput.add_member(:has_published_version, ::Smithy::Schema::Shapes::MemberShape.new(target: HasPublishedVersion, name: "hasPublishedVersion"))
    UpdateTemplateOutput.add_member(:firewall_type, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateFirewallType, name: "firewallType", traits: {"smithy.api#required" => {}}))
    UpdateTemplateOutput.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimestamp, name: "updatedAt"))
    UpdateTemplateOutput.type = Types::UpdateTemplateOutput
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionReason, name: "reason"))
    ValidationException.add_member(:field_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionFieldList, name: "fieldList"))
    ValidationException.type = Types::ValidationException
    ValidationExceptionField.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.type = Types::ValidationExceptionField
    ValidationExceptionFieldList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionField, name: "member"))
    ValidationExceptionReason.add_member(:account_not_onboarded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACCOUNT_NOT_ONBOARDED", traits: {"smithy.api#enumValue" => "ACCOUNT_NOT_ONBOARDED"}))
    ValidationExceptionReason.add_member(:field_validation_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FIELD_VALIDATION_FAILED", traits: {"smithy.api#enumValue" => "FIELD_VALIDATION_FAILED"}))
    ValidationExceptionReason.add_member(:other, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OTHER", traits: {"smithy.api#enumValue" => "OTHER"}))
    WAFConfigDataType.add_member(:default_action, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEFAULT_ACTION", traits: {"smithy.api#enumValue" => "DefaultAction"}))
    WAFConfigDataType.add_member(:visibility_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VISIBILITY_CONFIG", traits: {"smithy.api#enumValue" => "VisibilityConfig"}))
    WAFConfigDataType.add_member(:captcha_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CAPTCHA_CONFIG", traits: {"smithy.api#enumValue" => "CaptchaConfig"}))
    WAFConfigDataType.add_member(:challenge_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CHALLENGE_CONFIG", traits: {"smithy.api#enumValue" => "ChallengeConfig"}))
    WAFConfigDataType.add_member(:custom_response_bodies, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CUSTOM_RESPONSE_BODIES", traits: {"smithy.api#enumValue" => "CustomResponseBodies"}))
    WAFConfigDataType.add_member(:logging_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LOGGING_CONFIGURATION", traits: {"smithy.api#enumValue" => "LoggingConfiguration"}))
    WAFConfigDataType.add_member(:data_protection_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DATA_PROTECTION_CONFIG", traits: {"smithy.api#enumValue" => "DataProtectionConfig"}))
    WAFConfigDataType.add_member(:association_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ASSOCIATION_CONFIG", traits: {"smithy.api#enumValue" => "AssociationConfig"}))
    WAFConfigDataType.add_member(:on_source_ddos_protection_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ON_SOURCE_DDOS_PROTECTION_CONFIG", traits: {"smithy.api#enumValue" => "OnSourceDDoSProtectionConfig"}))
    WAFConfigDataType.add_member(:token_domains, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TOKEN_DOMAINS", traits: {"smithy.api#enumValue" => "TokenDomains"}))
    WAFConflictResolutionOptions.add_member(:merge_where_applicable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MERGE_WHERE_APPLICABLE", traits: {"smithy.api#enumValue" => "MERGE_WHERE_APPLICABLE"}))
    WafConfig.add_member(:existing_customer_web_acl_resolution, ::Smithy::Schema::Shapes::MemberShape.new(target: ExistingCustomerWebACLResolution, name: "existingCustomerWebACLResolution", traits: {"smithy.api#required" => {}}))
    WafConfig.add_member(:conflict_resolution, ::Smithy::Schema::Shapes::MemberShape.new(target: WAFConflictResolutionOptions, name: "conflictResolution", traits: {"smithy.api#required" => {}}))
    WafConfig.type = Types::WafConfig

    PiccoloCustomerAPIService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.networksecuritymanager#PiccoloCustomerAPIService"
      service.name = "PiccoloCustomerAPIService"
      service.version = "2025-10-30"
      service.traits = {"aws.api#service" => {"sdkId" => "Network Security Manager", "arnNamespace" => "network-security-manager", "endpointPrefix" => "network-security-manager", "cloudTrailEventSource" => "network-security-manager.amazonaws.com"}, "aws.api#tagEnabled" => {}, "aws.auth#sigv4" => {"name" => "network-security-manager"}, "aws.endpoints#dualStackOnlyEndpoints" => {}, "aws.endpoints#standardRegionalEndpoints" => {}, "aws.iam#defineConditionKeys" => {"aws:RequestTag/${TagKey}" => {"type" => "String", "documentation" => "Filters access by the tags that are passed in the request", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-requesttag"}, "aws:ResourceTag/${TagKey}" => {"type" => "String", "documentation" => "Filters access by the tags associated with the resource", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-resourcetag"}, "aws:TagKeys" => {"type" => "ArrayOfString", "documentation" => "Filters access by the tag keys that are passed in the request", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-tagkeys"}}, "aws.iam#supportedPrincipalTypes" => ["Root", "IAMUser", "IAMRole", "FederatedUser"], "aws.protocols#restJson1" => {}, "smithy.api#cors" => {"additionalAllowedHeaders" => ["*", "content-type", "x-amz-content-sha256", "x-amz-user-agent", "x-amzn-platform-id", "x-amzn-trace-id", "x-amazon-apigateway-service-name"], "additionalExposedHeaders" => ["x-amzn-errortype", "x-amzn-requestid", "x-amzn-trace-id"]}, "smithy.api#title" => "AWS Network Security Manager Customer API", "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}, "Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://network-security-manager-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://network-security-manager.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 6, "nodes" => "/////wAAAAH/////AAAAAAAAAAYAAAADAAAAAQAAAAQF9eEFAAAAAgAAAAUF9eEFAAAAAwX14QMF9eEEAAAAAwX14QEF9eEC"}}
      service.add_operation(:create_deployment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networksecuritymanager#CreateDeployment"
        operation.name = "CreateDeployment"
        operation.input = CreateDeploymentInput
        operation.output = CreateDeploymentOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ServiceUnavailableException
        operation.errors << TagPolicyViolationException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:TagKeys"], "aws.iam#iamAction" => {"documentation" => "Grants permission to create a deployment", "resources" => {"required" => {"policy" => {}, "policy-snapshot" => {}, "scope" => {}, "scope-snapshot" => {}}}}, "smithy.api#http" => {"uri" => "/deployments", "method" => "POST", "code" => 201}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_deployment_snapshot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networksecuritymanager#CreateDeploymentSnapshot"
        operation.name = "CreateDeploymentSnapshot"
        operation.input = CreateDeploymentSnapshotInput
        operation.output = CreateDeploymentSnapshotOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:TagKeys"], "aws.iam#iamAction" => {"documentation" => "Grants permission to create a snapshot of a deployment", "resources" => {"required" => {"deployment" => {}}}, "createsResources" => ["deployment-snapshot"]}, "smithy.api#http" => {"uri" => "/deployments/{deploymentIdentifier}/snapshots", "method" => "POST", "code" => 201}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networksecuritymanager#CreatePolicy"
        operation.name = "CreatePolicy"
        operation.input = CreatePolicyInput
        operation.output = CreatePolicyOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ServiceUnavailableException
        operation.errors << TagPolicyViolationException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:TagKeys"], "aws.iam#iamAction" => {"documentation" => "Grants permission to create a policy", "resources" => {"optional" => {"rule" => {}, "rule-snapshot" => {}, "template" => {}, "template-snapshot" => {}}}}, "smithy.api#http" => {"uri" => "/policies", "method" => "POST", "code" => 201}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_policy_snapshot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networksecuritymanager#CreatePolicySnapshot"
        operation.name = "CreatePolicySnapshot"
        operation.input = CreatePolicySnapshotInput
        operation.output = CreatePolicySnapshotOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:TagKeys"], "aws.iam#iamAction" => {"documentation" => "Grants permission to create a snapshot of a policy", "resources" => {"required" => {"policy" => {}}}, "createsResources" => ["policy-snapshot"]}, "smithy.api#http" => {"uri" => "/policies/{policyIdentifier}/snapshots", "method" => "POST", "code" => 201}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networksecuritymanager#CreateRule"
        operation.name = "CreateRule"
        operation.input = CreateRuleInput
        operation.output = CreateRuleOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ServiceUnavailableException
        operation.errors << TagPolicyViolationException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:TagKeys"], "aws.iam#iamAction" => {"documentation" => "Grants permission to create a rule", "resources" => {}}, "smithy.api#http" => {"uri" => "/rules", "method" => "POST", "code" => 201}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_rule_snapshot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networksecuritymanager#CreateRuleSnapshot"
        operation.name = "CreateRuleSnapshot"
        operation.input = CreateRuleSnapshotInput
        operation.output = CreateRuleSnapshotOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:TagKeys"], "aws.iam#iamAction" => {"documentation" => "Grants permission to create a snapshot of a rule", "resources" => {"required" => {"rule" => {}}}, "createsResources" => ["rule-snapshot"]}, "smithy.api#http" => {"uri" => "/rules/{ruleIdentifier}/snapshots", "method" => "POST", "code" => 201}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_scope, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networksecuritymanager#CreateScope"
        operation.name = "CreateScope"
        operation.input = CreateScopeInput
        operation.output = CreateScopeOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ServiceUnavailableException
        operation.errors << TagPolicyViolationException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:TagKeys"], "aws.iam#iamAction" => {"documentation" => "Grants permission to create a scope", "resources" => {}}, "smithy.api#http" => {"uri" => "/scopes", "method" => "POST", "code" => 201}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_scope_snapshot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networksecuritymanager#CreateScopeSnapshot"
        operation.name = "CreateScopeSnapshot"
        operation.input = CreateScopeSnapshotInput
        operation.output = CreateScopeSnapshotOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:TagKeys"], "aws.iam#iamAction" => {"documentation" => "Grants permission to create a snapshot of a scope", "resources" => {"required" => {"scope" => {}}}, "createsResources" => ["scope-snapshot"]}, "smithy.api#http" => {"uri" => "/scopes/{scopeIdentifier}/snapshots", "method" => "POST", "code" => 201}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networksecuritymanager#CreateTemplate"
        operation.name = "CreateTemplate"
        operation.input = CreateTemplateInput
        operation.output = CreateTemplateOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ServiceUnavailableException
        operation.errors << TagPolicyViolationException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:TagKeys"], "aws.iam#iamAction" => {"documentation" => "Grants permission to create a template", "resources" => {"required" => {"rule" => {}, "rule-snapshot" => {}}}}, "smithy.api#http" => {"uri" => "/templates", "method" => "POST", "code" => 201}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_template_snapshot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networksecuritymanager#CreateTemplateSnapshot"
        operation.name = "CreateTemplateSnapshot"
        operation.input = CreateTemplateSnapshotInput
        operation.output = CreateTemplateSnapshotOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:TagKeys"], "aws.iam#iamAction" => {"documentation" => "Grants permission to create a snapshot of a template", "resources" => {"required" => {"template" => {}}}, "createsResources" => ["template-snapshot"]}, "smithy.api#http" => {"uri" => "/templates/{templateIdentifier}/snapshots", "method" => "POST", "code" => 201}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_admin_account, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networksecuritymanager#DeleteAdminAccount"
        operation.name = "DeleteAdminAccount"
        operation.input = DeleteAdminAccountRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to remove a Network Security Manager administrator account"}, "smithy.api#http" => {"uri" => "/admin-account/{accountId}", "method" => "DELETE", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_deployment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networksecuritymanager#DeleteDeployment"
        operation.name = "DeleteDeployment"
        operation.input = DeleteDeploymentInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to delete a deployment", "resources" => {"required" => {"deployment" => {}, "deployment-snapshot" => {}}}}, "smithy.api#http" => {"uri" => "/deployments/{deploymentIdentifier}", "method" => "DELETE", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networksecuritymanager#DeletePolicy"
        operation.name = "DeletePolicy"
        operation.input = DeletePolicyInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to delete a policy", "resources" => {"required" => {"policy" => {}, "policy-snapshot" => {}}}}, "smithy.api#http" => {"uri" => "/policies/{policyIdentifier}", "method" => "DELETE", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networksecuritymanager#DeleteRule"
        operation.name = "DeleteRule"
        operation.input = DeleteRuleInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to delete a rule", "resources" => {"required" => {"rule" => {}, "rule-snapshot" => {}}}}, "smithy.api#http" => {"uri" => "/rules/{ruleIdentifier}", "method" => "DELETE", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_scope, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networksecuritymanager#DeleteScope"
        operation.name = "DeleteScope"
        operation.input = DeleteScopeInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to delete a scope", "resources" => {"required" => {"scope" => {}, "scope-snapshot" => {}}}}, "smithy.api#http" => {"uri" => "/scopes/{scopeIdentifier}", "method" => "DELETE", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networksecuritymanager#DeleteTemplate"
        operation.name = "DeleteTemplate"
        operation.input = DeleteTemplateInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to delete a template", "resources" => {"required" => {"template" => {}, "template-snapshot" => {}}}}, "smithy.api#http" => {"uri" => "/templates/{templateIdentifier}", "method" => "DELETE", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:generate_rule_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networksecuritymanager#GenerateRuleConfiguration"
        operation.name = "GenerateRuleConfiguration"
        operation.input = GenerateRuleConfigurationRequest
        operation.output = GenerateRuleConfigurationResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to generate a rule configuration from a natural-language prompt"}, "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/GenerateRuleConfiguration"}}
      end)
      service.add_operation(:get_admin_account, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networksecuritymanager#GetAdminAccount"
        operation.name = "GetAdminAccount"
        operation.input = GetAdminAccountRequest
        operation.output = GetAdminAccountResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to retrieve a Network Security Manager administrator account"}, "smithy.api#http" => {"uri" => "/admin-account/{accountId}", "method" => "GET", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_deployment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networksecuritymanager#GetDeployment"
        operation.name = "GetDeployment"
        operation.input = GetDeploymentInput
        operation.output = GetDeploymentOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to retrieve a deployment", "resources" => {"required" => {"deployment" => {}, "deployment-snapshot" => {}}}}, "smithy.api#http" => {"uri" => "/deployments/{deploymentIdentifier}", "method" => "GET", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networksecuritymanager#GetPolicy"
        operation.name = "GetPolicy"
        operation.input = GetPolicyInput
        operation.output = GetPolicyOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to retrieve a policy", "resources" => {"required" => {"policy" => {}, "policy-snapshot" => {}}}}, "smithy.api#http" => {"uri" => "/policies/{policyIdentifier}", "method" => "GET", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networksecuritymanager#GetRule"
        operation.name = "GetRule"
        operation.input = GetRuleInput
        operation.output = GetRuleOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to retrieve a rule", "resources" => {"required" => {"rule" => {}, "rule-snapshot" => {}}}}, "smithy.api#http" => {"uri" => "/rules/{ruleIdentifier}", "method" => "GET", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_scope, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networksecuritymanager#GetScope"
        operation.name = "GetScope"
        operation.input = GetScopeInput
        operation.output = GetScopeOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to retrieve a scope", "resources" => {"required" => {"scope" => {}, "scope-snapshot" => {}}}}, "smithy.api#http" => {"uri" => "/scopes/{scopeIdentifier}", "method" => "GET", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networksecuritymanager#GetTemplate"
        operation.name = "GetTemplate"
        operation.input = GetTemplateInput
        operation.output = GetTemplateOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to retrieve a template", "resources" => {"required" => {"template" => {}, "template-snapshot" => {}}}}, "smithy.api#http" => {"uri" => "/templates/{templateIdentifier}", "method" => "GET", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_admin_accounts, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networksecuritymanager#ListAdminAccounts"
        operation.name = "ListAdminAccounts"
        operation.input = ListAdminAccountsRequest
        operation.output = ListAdminAccountsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to list Network Security Manager administrator accounts"}, "smithy.api#http" => {"uri" => "/admin-accounts", "method" => "GET", "code" => 200}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "ListAdminAccountsNotOnboarded", "params" => {}, "expect" => {"failure" => {"errorId" => "com.amazonaws.networksecuritymanager#ValidationException"}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
        operation[:paginator] = Paginators::ListAdminAccounts.new
      end)
      service.add_operation(:list_aggregate_resource_synchronization_statuses, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networksecuritymanager#ListAggregateResourceSynchronizationStatuses"
        operation.name = "ListAggregateResourceSynchronizationStatuses"
        operation.input = ListAggregateResourceSynchronizationStatusesInput
        operation.output = ListAggregateResourceSynchronizationStatusesOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to list aggregate resource synchronization statuses across the caller's deployments"}, "smithy.api#http" => {"uri" => "/aggregate-sync-statuses", "method" => "GET", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListAggregateResourceSynchronizationStatuses.new
      end)
      service.add_operation(:list_deployment_snapshots, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networksecuritymanager#ListDeploymentSnapshots"
        operation.name = "ListDeploymentSnapshots"
        operation.input = ListDeploymentSnapshotsInput
        operation.output = ListDeploymentSnapshotsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to list the snapshots of a deployment", "resources" => {"required" => {"deployment" => {}}}}, "smithy.api#http" => {"uri" => "/deployments/{deploymentIdentifier}/snapshots", "method" => "GET", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListDeploymentSnapshots.new
      end)
      service.add_operation(:list_deployments, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networksecuritymanager#ListDeployments"
        operation.name = "ListDeployments"
        operation.input = ListDeploymentsInput
        operation.output = ListDeploymentsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to list deployments"}, "smithy.api#http" => {"uri" => "/deployments", "method" => "GET", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListDeployments.new
      end)
      service.add_operation(:list_policies, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networksecuritymanager#ListPolicies"
        operation.name = "ListPolicies"
        operation.input = ListPoliciesInput
        operation.output = ListPoliciesOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to list policies"}, "smithy.api#http" => {"uri" => "/policies", "method" => "GET", "code" => 200}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "ListPoliciesSuccess", "params" => {}, "expect" => {"success" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
        operation[:paginator] = Paginators::ListPolicies.new
      end)
      service.add_operation(:list_policy_snapshots, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networksecuritymanager#ListPolicySnapshots"
        operation.name = "ListPolicySnapshots"
        operation.input = ListPolicySnapshotsInput
        operation.output = ListPolicySnapshotsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to list the snapshots of a policy", "resources" => {"required" => {"policy" => {}}}}, "smithy.api#http" => {"uri" => "/policies/{policyIdentifier}/snapshots", "method" => "GET", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListPolicySnapshots.new
      end)
      service.add_operation(:list_resource_associations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networksecuritymanager#ListResourceAssociations"
        operation.name = "ListResourceAssociations"
        operation.input = ListResourceAssociationsInput
        operation.output = ListResourceAssociationsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:ResourceTag/${TagKey}"], "aws.iam#iamAction" => {"documentation" => "Grants permission to list the associations of a Network Security Manager resource", "resources" => {"required" => {"deployment" => {}, "deployment-snapshot" => {}, "policy" => {}, "policy-snapshot" => {}, "rule" => {}, "rule-snapshot" => {}, "scope" => {}, "scope-snapshot" => {}, "template" => {}, "template-snapshot" => {}}}}, "smithy.api#http" => {"uri" => "/resource-associations", "method" => "GET", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListResourceAssociations.new
      end)
      service.add_operation(:list_resource_synchronization_statuses, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networksecuritymanager#ListResourceSynchronizationStatuses"
        operation.name = "ListResourceSynchronizationStatuses"
        operation.input = ListResourceSynchronizationStatusesInput
        operation.output = ListResourceSynchronizationStatusesOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to list resource synchronization statuses for a deployment", "resources" => {"required" => {"deployment" => {}, "deployment-snapshot" => {}}}}, "smithy.api#http" => {"uri" => "/resource-sync-statuses", "method" => "GET", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListResourceSynchronizationStatuses.new
      end)
      service.add_operation(:list_rule_snapshots, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networksecuritymanager#ListRuleSnapshots"
        operation.name = "ListRuleSnapshots"
        operation.input = ListRuleSnapshotsInput
        operation.output = ListRuleSnapshotsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to list the snapshots of a rule", "resources" => {"required" => {"rule" => {}}}}, "smithy.api#http" => {"uri" => "/rules/{ruleIdentifier}/snapshots", "method" => "GET", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListRuleSnapshots.new
      end)
      service.add_operation(:list_rules, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networksecuritymanager#ListRules"
        operation.name = "ListRules"
        operation.input = ListRulesInput
        operation.output = ListRulesOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to list rules"}, "smithy.api#http" => {"uri" => "/rules", "method" => "GET", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListRules.new
      end)
      service.add_operation(:list_scope_snapshots, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networksecuritymanager#ListScopeSnapshots"
        operation.name = "ListScopeSnapshots"
        operation.input = ListScopeSnapshotsInput
        operation.output = ListScopeSnapshotsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to list the snapshots of a scope", "resources" => {"required" => {"scope" => {}}}}, "smithy.api#http" => {"uri" => "/scopes/{scopeIdentifier}/snapshots", "method" => "GET", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListScopeSnapshots.new
      end)
      service.add_operation(:list_scopes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networksecuritymanager#ListScopes"
        operation.name = "ListScopes"
        operation.input = ListScopesInput
        operation.output = ListScopesOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to list scopes"}, "smithy.api#http" => {"uri" => "/scopes", "method" => "GET", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListScopes.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networksecuritymanager#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceInput
        operation.output = ListTagsForResourceOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:ResourceTag/${TagKey}"], "aws.iam#iamAction" => {"documentation" => "Grants permission to list the tags of a Network Security Manager resource", "resources" => {"optional" => {"deployment" => {}, "deployment-snapshot" => {}, "policy" => {}, "policy-snapshot" => {}, "rule" => {}, "rule-snapshot" => {}, "scope" => {}, "scope-snapshot" => {}, "template" => {}, "template-snapshot" => {}}}}, "smithy.api#http" => {"uri" => "/tags/{resourceArn}", "method" => "GET", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_template_snapshots, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networksecuritymanager#ListTemplateSnapshots"
        operation.name = "ListTemplateSnapshots"
        operation.input = ListTemplateSnapshotsInput
        operation.output = ListTemplateSnapshotsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to list the snapshots of a template", "resources" => {"required" => {"template" => {}}}}, "smithy.api#http" => {"uri" => "/templates/{templateIdentifier}/snapshots", "method" => "GET", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListTemplateSnapshots.new
      end)
      service.add_operation(:list_templates, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networksecuritymanager#ListTemplates"
        operation.name = "ListTemplates"
        operation.input = ListTemplatesInput
        operation.output = ListTemplatesOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to list templates"}, "smithy.api#http" => {"uri" => "/templates", "method" => "GET", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListTemplates.new
      end)
      service.add_operation(:put_admin_account, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networksecuritymanager#PutAdminAccount"
        operation.name = "PutAdminAccount"
        operation.input = PutAdminAccountRequest
        operation.output = PutAdminAccountResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to set a Network Security Manager administrator account"}, "smithy.api#http" => {"uri" => "/admin-account", "method" => "PUT", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networksecuritymanager#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceInput
        operation.output = TagResourceOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << TagPolicyViolationException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:TagKeys", "aws:ResourceTag/${TagKey}"], "aws.iam#iamAction" => {"documentation" => "Grants permission to add or overwrite tags on a Network Security Manager resource", "resources" => {"optional" => {"deployment" => {}, "deployment-snapshot" => {}, "policy" => {}, "policy-snapshot" => {}, "rule" => {}, "rule-snapshot" => {}, "scope" => {}, "scope-snapshot" => {}, "template" => {}, "template-snapshot" => {}}}}, "smithy.api#http" => {"uri" => "/tags/{resourceArn}", "method" => "POST", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networksecuritymanager#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceInput
        operation.output = UntagResourceOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << TagPolicyViolationException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:TagKeys", "aws:ResourceTag/${TagKey}"], "aws.iam#iamAction" => {"documentation" => "Grants permission to remove tags from a Network Security Manager resource", "resources" => {"optional" => {"deployment" => {}, "deployment-snapshot" => {}, "policy" => {}, "policy-snapshot" => {}, "rule" => {}, "rule-snapshot" => {}, "scope" => {}, "scope-snapshot" => {}, "template" => {}, "template-snapshot" => {}}}}, "smithy.api#http" => {"uri" => "/tags/{resourceArn}", "method" => "DELETE", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_deployment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networksecuritymanager#UpdateDeployment"
        operation.name = "UpdateDeployment"
        operation.input = UpdateDeploymentInput
        operation.output = UpdateDeploymentOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to update a deployment", "resources" => {"required" => {"deployment" => {}}, "optional" => {"policy" => {}, "policy-snapshot" => {}, "scope" => {}, "scope-snapshot" => {}}}}, "smithy.api#http" => {"uri" => "/deployments/{deploymentIdentifier}", "method" => "PATCH", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networksecuritymanager#UpdatePolicy"
        operation.name = "UpdatePolicy"
        operation.input = UpdatePolicyInput
        operation.output = UpdatePolicyOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to update a policy", "resources" => {"required" => {"policy" => {}}, "optional" => {"rule" => {}, "rule-snapshot" => {}, "template" => {}, "template-snapshot" => {}}}}, "smithy.api#http" => {"uri" => "/policies/{policyIdentifier}", "method" => "PATCH", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networksecuritymanager#UpdateRule"
        operation.name = "UpdateRule"
        operation.input = UpdateRuleInput
        operation.output = UpdateRuleOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to update a rule", "resources" => {"required" => {"rule" => {}}}}, "smithy.api#http" => {"uri" => "/rules/{ruleIdentifier}", "method" => "PATCH", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_scope, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networksecuritymanager#UpdateScope"
        operation.name = "UpdateScope"
        operation.input = UpdateScopeInput
        operation.output = UpdateScopeOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to update a scope", "resources" => {"required" => {"scope" => {}}}}, "smithy.api#http" => {"uri" => "/scopes/{scopeIdentifier}", "method" => "PATCH", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.networksecuritymanager#UpdateTemplate"
        operation.name = "UpdateTemplate"
        operation.input = UpdateTemplateInput
        operation.output = UpdateTemplateOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to update a template", "resources" => {"required" => {"template" => {}}, "optional" => {"rule" => {}, "rule-snapshot" => {}}}}, "smithy.api#http" => {"uri" => "/templates/{templateIdentifier}", "method" => "PATCH", "code" => 200}, "smithy.api#idempotent" => {}}
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
