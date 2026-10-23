# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::NetworkSecurityManager
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AccountFilter = Shapes::UnionShape.new(name: 'AccountFilter')
    AccountId = Shapes::StringShape.new(name: 'AccountId')
    AccountIdList = Shapes::ListShape.new(name: 'AccountIdList')
    AccountList = Shapes::ListShape.new(name: 'AccountList')
    AccountReference = Shapes::StructureShape.new(name: 'AccountReference')
    AccountReferenceList = Shapes::ListShape.new(name: 'AccountReferenceList')
    AccountSet = Shapes::StructureShape.new(name: 'AccountSet')
    AdminAccountDetails = Shapes::StructureShape.new(name: 'AdminAccountDetails')
    AdminAccountStatus = Shapes::StringShape.new(name: 'AdminAccountStatus')
    AdminAccountSummary = Shapes::StructureShape.new(name: 'AdminAccountSummary')
    AdminAccountSummaryList = Shapes::ListShape.new(name: 'AdminAccountSummaryList')
    AdminFirewallTypeScope = Shapes::StructureShape.new(name: 'AdminFirewallTypeScope')
    AdminPriority = Shapes::IntegerShape.new(name: 'AdminPriority')
    AdminScope = Shapes::StructureShape.new(name: 'AdminScope')
    AdminScopeFilter = Shapes::UnionShape.new(name: 'AdminScopeFilter')
    AdminScopeFilterInput = Shapes::UnionShape.new(name: 'AdminScopeFilterInput')
    AdminScopeInput = Shapes::StructureShape.new(name: 'AdminScopeInput')
    AdminScopeSelection = Shapes::StructureShape.new(name: 'AdminScopeSelection')
    AdminScopeSelectionInput = Shapes::StructureShape.new(name: 'AdminScopeSelectionInput')
    AlbConfiguration = Shapes::StructureShape.new(name: 'AlbConfiguration')
    Arn = Shapes::StringShape.new(name: 'Arn')
    AssociatedPolicy = Shapes::StructureShape.new(name: 'AssociatedPolicy')
    AssociatedPolicyList = Shapes::ListShape.new(name: 'AssociatedPolicyList')
    AssociatedRule = Shapes::StructureShape.new(name: 'AssociatedRule')
    AssociatedRuleList = Shapes::ListShape.new(name: 'AssociatedRuleList')
    AssociatedScope = Shapes::StructureShape.new(name: 'AssociatedScope')
    AssociatedScopeList = Shapes::ListShape.new(name: 'AssociatedScopeList')
    AssociatedTemplateAndRuleList = Shapes::ListShape.new(name: 'AssociatedTemplateAndRuleList')
    AssociatedTemplateOrRule = Shapes::UnionShape.new(name: 'AssociatedTemplateOrRule')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    ConfigurationIssue = Shapes::StructureShape.new(name: 'ConfigurationIssue')
    ConfigurationIssueList = Shapes::ListShape.new(name: 'ConfigurationIssueList')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateDeploymentInput = Shapes::StructureShape.new(name: 'CreateDeploymentInput')
    CreateDeploymentOutput = Shapes::StructureShape.new(name: 'CreateDeploymentOutput')
    CreateDeploymentSnapshotInput = Shapes::StructureShape.new(name: 'CreateDeploymentSnapshotInput')
    CreateDeploymentSnapshotOutput = Shapes::StructureShape.new(name: 'CreateDeploymentSnapshotOutput')
    CreatePolicyInput = Shapes::StructureShape.new(name: 'CreatePolicyInput')
    CreatePolicyOutput = Shapes::StructureShape.new(name: 'CreatePolicyOutput')
    CreatePolicySnapshotInput = Shapes::StructureShape.new(name: 'CreatePolicySnapshotInput')
    CreatePolicySnapshotOutput = Shapes::StructureShape.new(name: 'CreatePolicySnapshotOutput')
    CreateRuleInput = Shapes::StructureShape.new(name: 'CreateRuleInput')
    CreateRuleOutput = Shapes::StructureShape.new(name: 'CreateRuleOutput')
    CreateRuleSnapshotInput = Shapes::StructureShape.new(name: 'CreateRuleSnapshotInput')
    CreateRuleSnapshotOutput = Shapes::StructureShape.new(name: 'CreateRuleSnapshotOutput')
    CreateScopeInput = Shapes::StructureShape.new(name: 'CreateScopeInput')
    CreateScopeOutput = Shapes::StructureShape.new(name: 'CreateScopeOutput')
    CreateScopeSnapshotInput = Shapes::StructureShape.new(name: 'CreateScopeSnapshotInput')
    CreateScopeSnapshotOutput = Shapes::StructureShape.new(name: 'CreateScopeSnapshotOutput')
    CreateTemplateInput = Shapes::StructureShape.new(name: 'CreateTemplateInput')
    CreateTemplateOutput = Shapes::StructureShape.new(name: 'CreateTemplateOutput')
    CreateTemplateSnapshotInput = Shapes::StructureShape.new(name: 'CreateTemplateSnapshotInput')
    CreateTemplateSnapshotOutput = Shapes::StructureShape.new(name: 'CreateTemplateSnapshotOutput')
    DateTimestamp = Shapes::TimestampShape.new(name: 'DateTimestamp', timestampFormat: "iso8601")
    DeleteAdminAccountRequest = Shapes::StructureShape.new(name: 'DeleteAdminAccountRequest')
    DeleteDeploymentInput = Shapes::StructureShape.new(name: 'DeleteDeploymentInput')
    DeletePolicyInput = Shapes::StructureShape.new(name: 'DeletePolicyInput')
    DeleteRuleInput = Shapes::StructureShape.new(name: 'DeleteRuleInput')
    DeleteScopeInput = Shapes::StructureShape.new(name: 'DeleteScopeInput')
    DeleteTemplateInput = Shapes::StructureShape.new(name: 'DeleteTemplateInput')
    DeploymentArn = Shapes::StringShape.new(name: 'DeploymentArn')
    DeploymentConfiguration = Shapes::StructureShape.new(name: 'DeploymentConfiguration')
    DeploymentCoverageEntry = Shapes::StructureShape.new(name: 'DeploymentCoverageEntry')
    DeploymentCoverageList = Shapes::ListShape.new(name: 'DeploymentCoverageList')
    DeploymentId = Shapes::StringShape.new(name: 'DeploymentId')
    DeploymentIdentifier = Shapes::StringShape.new(name: 'DeploymentIdentifier')
    DeploymentName = Shapes::StringShape.new(name: 'DeploymentName')
    DeploymentPolicyArnList = Shapes::ListShape.new(name: 'DeploymentPolicyArnList')
    DeploymentResourceTypeList = Shapes::ListShape.new(name: 'DeploymentResourceTypeList')
    DeploymentSummary = Shapes::StructureShape.new(name: 'DeploymentSummary')
    DeploymentSummaryList = Shapes::ListShape.new(name: 'DeploymentSummaryList')
    DeploymentWarningEntry = Shapes::StructureShape.new(name: 'DeploymentWarningEntry')
    DeploymentWarningList = Shapes::ListShape.new(name: 'DeploymentWarningList')
    Description = Shapes::StringShape.new(name: 'Description')
    EnableCrossAccountVisibility = Shapes::BooleanShape.new(name: 'EnableCrossAccountVisibility')
    EntityStatus = Shapes::StringShape.new(name: 'EntityStatus')
    EntityStatusFilter = Shapes::StringShape.new(name: 'EntityStatusFilter')
    EntityVersion = Shapes::StringShape.new(name: 'EntityVersion')
    ExistingCustomerWebACLResolution = Shapes::StringShape.new(name: 'ExistingCustomerWebACLResolution')
    FirewallSyncReason = Shapes::UnionShape.new(name: 'FirewallSyncReason')
    FirewallTypeList = Shapes::ListShape.new(name: 'FirewallTypeList')
    GenerateRuleConfigurationRequest = Shapes::StructureShape.new(name: 'GenerateRuleConfigurationRequest')
    GenerateRuleConfigurationRequestCurrentConfigurationString = Shapes::StringShape.new(name: 'GenerateRuleConfigurationRequestCurrentConfigurationString')
    GenerateRuleConfigurationRequestPromptString = Shapes::StringShape.new(name: 'GenerateRuleConfigurationRequestPromptString')
    GenerateRuleConfigurationResponse = Shapes::StructureShape.new(name: 'GenerateRuleConfigurationResponse')
    GenerateRuleConfigurationResponseConfigurationString = Shapes::StringShape.new(name: 'GenerateRuleConfigurationResponseConfigurationString')
    GetAdminAccountRequest = Shapes::StructureShape.new(name: 'GetAdminAccountRequest')
    GetAdminAccountResponse = Shapes::StructureShape.new(name: 'GetAdminAccountResponse')
    GetDeploymentInput = Shapes::StructureShape.new(name: 'GetDeploymentInput')
    GetDeploymentOutput = Shapes::StructureShape.new(name: 'GetDeploymentOutput')
    GetPolicyInput = Shapes::StructureShape.new(name: 'GetPolicyInput')
    GetPolicyOutput = Shapes::StructureShape.new(name: 'GetPolicyOutput')
    GetRuleInput = Shapes::StructureShape.new(name: 'GetRuleInput')
    GetRuleOutput = Shapes::StructureShape.new(name: 'GetRuleOutput')
    GetScopeInput = Shapes::StructureShape.new(name: 'GetScopeInput')
    GetScopeOutput = Shapes::StructureShape.new(name: 'GetScopeOutput')
    GetTemplateInput = Shapes::StructureShape.new(name: 'GetTemplateInput')
    GetTemplateOutput = Shapes::StructureShape.new(name: 'GetTemplateOutput')
    HasPublishedVersion = Shapes::BooleanShape.new(name: 'HasPublishedVersion')
    IdempotencyToken = Shapes::StringShape.new(name: 'IdempotencyToken')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    InvalidFirewallReasons = Shapes::StructureShape.new(name: 'InvalidFirewallReasons')
    IpAddressType = Shapes::StringShape.new(name: 'IpAddressType')
    IsPublished = Shapes::BooleanShape.new(name: 'IsPublished')
    IsSnapshot = Shapes::BooleanShape.new(name: 'IsSnapshot')
    JsonDocument = Shapes::DocumentShape.new(name: 'JsonDocument', document: true)
    ListAdminAccountsRequest = Shapes::StructureShape.new(name: 'ListAdminAccountsRequest')
    ListAdminAccountsResponse = Shapes::StructureShape.new(name: 'ListAdminAccountsResponse')
    ListAggregateResourceSynchronizationStatusesInput = Shapes::StructureShape.new(name: 'ListAggregateResourceSynchronizationStatusesInput')
    ListAggregateResourceSynchronizationStatusesOutput = Shapes::StructureShape.new(name: 'ListAggregateResourceSynchronizationStatusesOutput')
    ListDeploymentSnapshotsInput = Shapes::StructureShape.new(name: 'ListDeploymentSnapshotsInput')
    ListDeploymentSnapshotsOutput = Shapes::StructureShape.new(name: 'ListDeploymentSnapshotsOutput')
    ListDeploymentsInput = Shapes::StructureShape.new(name: 'ListDeploymentsInput')
    ListDeploymentsOutput = Shapes::StructureShape.new(name: 'ListDeploymentsOutput')
    ListPoliciesInput = Shapes::StructureShape.new(name: 'ListPoliciesInput')
    ListPoliciesOutput = Shapes::StructureShape.new(name: 'ListPoliciesOutput')
    ListPolicySnapshotsInput = Shapes::StructureShape.new(name: 'ListPolicySnapshotsInput')
    ListPolicySnapshotsOutput = Shapes::StructureShape.new(name: 'ListPolicySnapshotsOutput')
    ListResourceAssociationsInput = Shapes::StructureShape.new(name: 'ListResourceAssociationsInput')
    ListResourceAssociationsOutput = Shapes::StructureShape.new(name: 'ListResourceAssociationsOutput')
    ListResourceSynchronizationStatusesInput = Shapes::StructureShape.new(name: 'ListResourceSynchronizationStatusesInput')
    ListResourceSynchronizationStatusesOutput = Shapes::StructureShape.new(name: 'ListResourceSynchronizationStatusesOutput')
    ListRuleSnapshotsInput = Shapes::StructureShape.new(name: 'ListRuleSnapshotsInput')
    ListRuleSnapshotsOutput = Shapes::StructureShape.new(name: 'ListRuleSnapshotsOutput')
    ListRulesInput = Shapes::StructureShape.new(name: 'ListRulesInput')
    ListRulesOutput = Shapes::StructureShape.new(name: 'ListRulesOutput')
    ListScopeSnapshotsInput = Shapes::StructureShape.new(name: 'ListScopeSnapshotsInput')
    ListScopeSnapshotsOutput = Shapes::StructureShape.new(name: 'ListScopeSnapshotsOutput')
    ListScopesInput = Shapes::StructureShape.new(name: 'ListScopesInput')
    ListScopesOutput = Shapes::StructureShape.new(name: 'ListScopesOutput')
    ListTagsForResourceInput = Shapes::StructureShape.new(name: 'ListTagsForResourceInput')
    ListTagsForResourceOutput = Shapes::StructureShape.new(name: 'ListTagsForResourceOutput')
    ListTemplateSnapshotsInput = Shapes::StructureShape.new(name: 'ListTemplateSnapshotsInput')
    ListTemplateSnapshotsOutput = Shapes::StructureShape.new(name: 'ListTemplateSnapshotsOutput')
    ListTemplatesInput = Shapes::StructureShape.new(name: 'ListTemplatesInput')
    ListTemplatesOutput = Shapes::StructureShape.new(name: 'ListTemplatesOutput')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    NotVisibleMarker = Shapes::StructureShape.new(name: 'NotVisibleMarker')
    OrganizationalUnit = Shapes::StringShape.new(name: 'OrganizationalUnit')
    OrganizationalUnitId = Shapes::StringShape.new(name: 'OrganizationalUnitId')
    OrganizationalUnitIdList = Shapes::ListShape.new(name: 'OrganizationalUnitIdList')
    OrganizationalUnitList = Shapes::ListShape.new(name: 'OrganizationalUnitList')
    OrganizationalUnitReference = Shapes::StructureShape.new(name: 'OrganizationalUnitReference')
    OrganizationalUnitReferenceList = Shapes::ListShape.new(name: 'OrganizationalUnitReferenceList')
    OutOfSyncReasons = Shapes::MapShape.new(name: 'OutOfSyncReasons')
    OutOfSyncReasonsView = Shapes::UnionShape.new(name: 'OutOfSyncReasonsView')
    PolicyArn = Shapes::StringShape.new(name: 'PolicyArn')
    PolicyConfiguration = Shapes::StructureShape.new(name: 'PolicyConfiguration')
    PolicyFirewallType = Shapes::StringShape.new(name: 'PolicyFirewallType')
    PolicyId = Shapes::StringShape.new(name: 'PolicyId')
    PolicyIdentifier = Shapes::StringShape.new(name: 'PolicyIdentifier')
    PolicyName = Shapes::StringShape.new(name: 'PolicyName')
    PolicyReference = Shapes::StructureShape.new(name: 'PolicyReference')
    PolicyReferenceList = Shapes::ListShape.new(name: 'PolicyReferenceList')
    PolicySummary = Shapes::StructureShape.new(name: 'PolicySummary')
    PolicySummaryList = Shapes::ListShape.new(name: 'PolicySummaryList')
    Priority = Shapes::IntegerShape.new(name: 'Priority')
    PutAdminAccountRequest = Shapes::StructureShape.new(name: 'PutAdminAccountRequest')
    PutAdminAccountResponse = Shapes::StructureShape.new(name: 'PutAdminAccountResponse')
    RemediationEnabled = Shapes::BooleanShape.new(name: 'RemediationEnabled')
    RemediationIssueDetails = Shapes::StructureShape.new(name: 'RemediationIssueDetails')
    RemediationIssues = Shapes::MapShape.new(name: 'RemediationIssues')
    RemediationIssuesView = Shapes::UnionShape.new(name: 'RemediationIssuesView')
    ResourceArnList = Shapes::ListShape.new(name: 'ResourceArnList')
    ResourceAssociation = Shapes::StructureShape.new(name: 'ResourceAssociation')
    ResourceAssociationList = Shapes::ListShape.new(name: 'ResourceAssociationList')
    ResourceCriteria = Shapes::UnionShape.new(name: 'ResourceCriteria')
    ResourceIdentifier = Shapes::StringShape.new(name: 'ResourceIdentifier')
    ResourceLogicalExpression = Shapes::UnionShape.new(name: 'ResourceLogicalExpression')
    ResourceLogicalExpressionList = Shapes::ListShape.new(name: 'ResourceLogicalExpressionList')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceScope = Shapes::StructureShape.new(name: 'ResourceScope')
    ResourceScopeMap = Shapes::MapShape.new(name: 'ResourceScopeMap')
    ResourceSet = Shapes::StructureShape.new(name: 'ResourceSet')
    ResourceSynchronizationStatusSummary = Shapes::StructureShape.new(name: 'ResourceSynchronizationStatusSummary')
    ResourceSynchronizationStatusSummaryList = Shapes::ListShape.new(name: 'ResourceSynchronizationStatusSummaryList')
    ResourceType = Shapes::StringShape.new(name: 'ResourceType')
    ResourcesCleanUp = Shapes::BooleanShape.new(name: 'ResourcesCleanUp')
    RuleArn = Shapes::StringShape.new(name: 'RuleArn')
    RuleFirewallType = Shapes::StringShape.new(name: 'RuleFirewallType')
    RuleId = Shapes::StringShape.new(name: 'RuleId')
    RuleIdentifier = Shapes::StringShape.new(name: 'RuleIdentifier')
    RuleName = Shapes::StringShape.new(name: 'RuleName')
    RuleReference = Shapes::StructureShape.new(name: 'RuleReference')
    RuleReferenceList = Shapes::ListShape.new(name: 'RuleReferenceList')
    RuleSummary = Shapes::StructureShape.new(name: 'RuleSummary')
    RuleSummaryList = Shapes::ListShape.new(name: 'RuleSummaryList')
    RuleType = Shapes::StringShape.new(name: 'RuleType')
    Scheme = Shapes::StringShape.new(name: 'Scheme')
    ScopeArn = Shapes::StringShape.new(name: 'ScopeArn')
    ScopeConfiguration = Shapes::StructureShape.new(name: 'ScopeConfiguration')
    ScopeId = Shapes::StringShape.new(name: 'ScopeId')
    ScopeIdentifier = Shapes::StringShape.new(name: 'ScopeIdentifier')
    ScopeName = Shapes::StringShape.new(name: 'ScopeName')
    ScopeReference = Shapes::StructureShape.new(name: 'ScopeReference')
    ScopeReferenceList = Shapes::ListShape.new(name: 'ScopeReferenceList')
    ScopeResourceType = Shapes::StringShape.new(name: 'ScopeResourceType')
    ScopeSummary = Shapes::StructureShape.new(name: 'ScopeSummary')
    ScopeSummaryList = Shapes::ListShape.new(name: 'ScopeSummaryList')
    SensitiveAccountEmail = Shapes::StringShape.new(name: 'SensitiveAccountEmail')
    SensitiveAccountName = Shapes::StringShape.new(name: 'SensitiveAccountName')
    SensitiveEmail = Shapes::StringShape.new(name: 'SensitiveEmail')
    SensitiveName = Shapes::StringShape.new(name: 'SensitiveName')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    ServiceResourceType = Shapes::StringShape.new(name: 'ServiceResourceType')
    ServiceUnavailableException = Shapes::StructureShape.new(name: 'ServiceUnavailableException')
    String = Shapes::StringShape.new(name: 'String')
    StringMap = Shapes::MapShape.new(name: 'StringMap')
    SynchronizationStatus = Shapes::StringShape.new(name: 'SynchronizationStatus')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagMap = Shapes::MapShape.new(name: 'TagMap')
    TagPolicyViolationException = Shapes::StructureShape.new(name: 'TagPolicyViolationException')
    TagResourceInput = Shapes::StructureShape.new(name: 'TagResourceInput')
    TagResourceOutput = Shapes::StructureShape.new(name: 'TagResourceOutput')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TemplateAndRuleReferenceList = Shapes::ListShape.new(name: 'TemplateAndRuleReferenceList')
    TemplateArn = Shapes::StringShape.new(name: 'TemplateArn')
    TemplateFirewallType = Shapes::StringShape.new(name: 'TemplateFirewallType')
    TemplateId = Shapes::StringShape.new(name: 'TemplateId')
    TemplateIdentifier = Shapes::StringShape.new(name: 'TemplateIdentifier')
    TemplateName = Shapes::StringShape.new(name: 'TemplateName')
    TemplateOrRuleReference = Shapes::UnionShape.new(name: 'TemplateOrRuleReference')
    TemplateSummary = Shapes::StructureShape.new(name: 'TemplateSummary')
    TemplateSummaryList = Shapes::ListShape.new(name: 'TemplateSummaryList')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Unit = Shapes::StructureShape.new(name: 'Unit')
    UntagResourceInput = Shapes::StructureShape.new(name: 'UntagResourceInput')
    UntagResourceOutput = Shapes::StructureShape.new(name: 'UntagResourceOutput')
    UpdateDeploymentInput = Shapes::StructureShape.new(name: 'UpdateDeploymentInput')
    UpdateDeploymentOutput = Shapes::StructureShape.new(name: 'UpdateDeploymentOutput')
    UpdatePolicyInput = Shapes::StructureShape.new(name: 'UpdatePolicyInput')
    UpdatePolicyOutput = Shapes::StructureShape.new(name: 'UpdatePolicyOutput')
    UpdateRuleInput = Shapes::StructureShape.new(name: 'UpdateRuleInput')
    UpdateRuleOutput = Shapes::StructureShape.new(name: 'UpdateRuleOutput')
    UpdateScopeInput = Shapes::StructureShape.new(name: 'UpdateScopeInput')
    UpdateScopeOutput = Shapes::StructureShape.new(name: 'UpdateScopeOutput')
    UpdateTemplateInput = Shapes::StructureShape.new(name: 'UpdateTemplateInput')
    UpdateTemplateOutput = Shapes::StructureShape.new(name: 'UpdateTemplateOutput')
    UpdateToken = Shapes::StringShape.new(name: 'UpdateToken')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationExceptionField = Shapes::StructureShape.new(name: 'ValidationExceptionField')
    ValidationExceptionFieldList = Shapes::ListShape.new(name: 'ValidationExceptionFieldList')
    ValidationExceptionReason = Shapes::StringShape.new(name: 'ValidationExceptionReason')
    WAFConfigDataType = Shapes::StringShape.new(name: 'WAFConfigDataType')
    WAFConflictResolutionOptions = Shapes::StringShape.new(name: 'WAFConflictResolutionOptions')
    WafConfig = Shapes::StructureShape.new(name: 'WafConfig')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AccountFilter.add_member(:include_all, Shapes::ShapeRef.new(shape: Unit, location_name: "includeAll"))
    AccountFilter.add_member(:include, Shapes::ShapeRef.new(shape: AccountSet, location_name: "include"))
    AccountFilter.add_member(:exclude, Shapes::ShapeRef.new(shape: AccountSet, location_name: "exclude"))
    AccountFilter.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    AccountFilter.add_member_subclass(:include_all, Types::AccountFilter::IncludeAll)
    AccountFilter.add_member_subclass(:include, Types::AccountFilter::Include)
    AccountFilter.add_member_subclass(:exclude, Types::AccountFilter::Exclude)
    AccountFilter.add_member_subclass(:unknown, Types::AccountFilter::Unknown)
    AccountFilter.struct_class = Types::AccountFilter

    AccountIdList.member = Shapes::ShapeRef.new(shape: AccountId)

    AccountList.member = Shapes::ShapeRef.new(shape: AccountId)

    AccountReference.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "accountId"))
    AccountReference.add_member(:name, Shapes::ShapeRef.new(shape: SensitiveAccountName, location_name: "name"))
    AccountReference.add_member(:email, Shapes::ShapeRef.new(shape: SensitiveAccountEmail, location_name: "email"))
    AccountReference.struct_class = Types::AccountReference

    AccountReferenceList.member = Shapes::ShapeRef.new(shape: AccountReference)

    AccountSet.add_member(:account_ids, Shapes::ShapeRef.new(shape: AccountList, location_name: "accountIds"))
    AccountSet.add_member(:organizational_units, Shapes::ShapeRef.new(shape: OrganizationalUnitList, location_name: "organizationalUnits"))
    AccountSet.struct_class = Types::AccountSet

    AdminAccountDetails.add_member(:admin_account, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "adminAccount"))
    AdminAccountDetails.add_member(:priority, Shapes::ShapeRef.new(shape: AdminPriority, required: true, location_name: "priority"))
    AdminAccountDetails.add_member(:admin_scope, Shapes::ShapeRef.new(shape: AdminScope, location_name: "adminScope"))
    AdminAccountDetails.add_member(:status, Shapes::ShapeRef.new(shape: AdminAccountStatus, location_name: "status"))
    AdminAccountDetails.struct_class = Types::AdminAccountDetails

    AdminAccountSummary.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "accountId"))
    AdminAccountSummary.add_member(:priority, Shapes::ShapeRef.new(shape: AdminPriority, location_name: "priority"))
    AdminAccountSummary.add_member(:name, Shapes::ShapeRef.new(shape: SensitiveName, location_name: "name"))
    AdminAccountSummary.add_member(:email, Shapes::ShapeRef.new(shape: SensitiveEmail, location_name: "email"))
    AdminAccountSummary.struct_class = Types::AdminAccountSummary

    AdminAccountSummaryList.member = Shapes::ShapeRef.new(shape: AdminAccountSummary)

    AdminFirewallTypeScope.add_member(:all_firewall_types_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "allFirewallTypesEnabled"))
    AdminFirewallTypeScope.add_member(:firewall_types, Shapes::ShapeRef.new(shape: FirewallTypeList, location_name: "firewallTypes"))
    AdminFirewallTypeScope.struct_class = Types::AdminFirewallTypeScope

    AdminScope.add_member(:scope_filter, Shapes::ShapeRef.new(shape: AdminScopeFilter, location_name: "scopeFilter"))
    AdminScope.add_member(:firewall_type_scope, Shapes::ShapeRef.new(shape: AdminFirewallTypeScope, location_name: "firewallTypeScope"))
    AdminScope.struct_class = Types::AdminScope

    AdminScopeFilter.add_member(:include_all, Shapes::ShapeRef.new(shape: Unit, location_name: "includeAll"))
    AdminScopeFilter.add_member(:include_only, Shapes::ShapeRef.new(shape: AdminScopeSelection, location_name: "includeOnly"))
    AdminScopeFilter.add_member(:exclude_only, Shapes::ShapeRef.new(shape: AdminScopeSelection, location_name: "excludeOnly"))
    AdminScopeFilter.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    AdminScopeFilter.add_member_subclass(:include_all, Types::AdminScopeFilter::IncludeAll)
    AdminScopeFilter.add_member_subclass(:include_only, Types::AdminScopeFilter::IncludeOnly)
    AdminScopeFilter.add_member_subclass(:exclude_only, Types::AdminScopeFilter::ExcludeOnly)
    AdminScopeFilter.add_member_subclass(:unknown, Types::AdminScopeFilter::Unknown)
    AdminScopeFilter.struct_class = Types::AdminScopeFilter

    AdminScopeFilterInput.add_member(:include_all, Shapes::ShapeRef.new(shape: Unit, location_name: "includeAll"))
    AdminScopeFilterInput.add_member(:include_only, Shapes::ShapeRef.new(shape: AdminScopeSelectionInput, location_name: "includeOnly"))
    AdminScopeFilterInput.add_member(:exclude_only, Shapes::ShapeRef.new(shape: AdminScopeSelectionInput, location_name: "excludeOnly"))
    AdminScopeFilterInput.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    AdminScopeFilterInput.add_member_subclass(:include_all, Types::AdminScopeFilterInput::IncludeAll)
    AdminScopeFilterInput.add_member_subclass(:include_only, Types::AdminScopeFilterInput::IncludeOnly)
    AdminScopeFilterInput.add_member_subclass(:exclude_only, Types::AdminScopeFilterInput::ExcludeOnly)
    AdminScopeFilterInput.add_member_subclass(:unknown, Types::AdminScopeFilterInput::Unknown)
    AdminScopeFilterInput.struct_class = Types::AdminScopeFilterInput

    AdminScopeInput.add_member(:scope_filter, Shapes::ShapeRef.new(shape: AdminScopeFilterInput, location_name: "scopeFilter"))
    AdminScopeInput.add_member(:firewall_type_scope, Shapes::ShapeRef.new(shape: AdminFirewallTypeScope, location_name: "firewallTypeScope"))
    AdminScopeInput.struct_class = Types::AdminScopeInput

    AdminScopeSelection.add_member(:accounts, Shapes::ShapeRef.new(shape: AccountReferenceList, location_name: "accounts"))
    AdminScopeSelection.add_member(:organizational_units, Shapes::ShapeRef.new(shape: OrganizationalUnitReferenceList, location_name: "organizationalUnits"))
    AdminScopeSelection.struct_class = Types::AdminScopeSelection

    AdminScopeSelectionInput.add_member(:accounts, Shapes::ShapeRef.new(shape: AccountIdList, location_name: "accounts"))
    AdminScopeSelectionInput.add_member(:organizational_units, Shapes::ShapeRef.new(shape: OrganizationalUnitIdList, location_name: "organizationalUnits"))
    AdminScopeSelectionInput.struct_class = Types::AdminScopeSelectionInput

    AlbConfiguration.add_member(:scheme, Shapes::ShapeRef.new(shape: Scheme, location_name: "scheme"))
    AlbConfiguration.add_member(:ip_address_type, Shapes::ShapeRef.new(shape: IpAddressType, location_name: "ipAddressType"))
    AlbConfiguration.struct_class = Types::AlbConfiguration

    AssociatedPolicy.add_member(:policy_arn, Shapes::ShapeRef.new(shape: PolicyArn, required: true, location_name: "policyArn"))
    AssociatedPolicy.struct_class = Types::AssociatedPolicy

    AssociatedPolicyList.member = Shapes::ShapeRef.new(shape: AssociatedPolicy)

    AssociatedRule.add_member(:rule_arn, Shapes::ShapeRef.new(shape: RuleArn, required: true, location_name: "ruleArn"))
    AssociatedRule.struct_class = Types::AssociatedRule

    AssociatedRuleList.member = Shapes::ShapeRef.new(shape: AssociatedRule)

    AssociatedScope.add_member(:scope_arn, Shapes::ShapeRef.new(shape: ScopeArn, required: true, location_name: "scopeArn"))
    AssociatedScope.struct_class = Types::AssociatedScope

    AssociatedScopeList.member = Shapes::ShapeRef.new(shape: AssociatedScope)

    AssociatedTemplateAndRuleList.member = Shapes::ShapeRef.new(shape: AssociatedTemplateOrRule)

    AssociatedTemplateOrRule.add_member(:template_arn, Shapes::ShapeRef.new(shape: TemplateArn, location_name: "templateArn"))
    AssociatedTemplateOrRule.add_member(:rule_arn, Shapes::ShapeRef.new(shape: RuleArn, location_name: "ruleArn"))
    AssociatedTemplateOrRule.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    AssociatedTemplateOrRule.add_member_subclass(:template_arn, Types::AssociatedTemplateOrRule::TemplateArn)
    AssociatedTemplateOrRule.add_member_subclass(:rule_arn, Types::AssociatedTemplateOrRule::RuleArn)
    AssociatedTemplateOrRule.add_member_subclass(:unknown, Types::AssociatedTemplateOrRule::Unknown)
    AssociatedTemplateOrRule.struct_class = Types::AssociatedTemplateOrRule

    ConfigurationIssue.add_member(:configuration_name, Shapes::ShapeRef.new(shape: String, location_name: "configurationName"))
    ConfigurationIssue.add_member(:expected_value, Shapes::ShapeRef.new(shape: String, location_name: "expectedValue"))
    ConfigurationIssue.add_member(:actual_value, Shapes::ShapeRef.new(shape: String, location_name: "actualValue"))
    ConfigurationIssue.struct_class = Types::ConfigurationIssue

    ConfigurationIssueList.member = Shapes::ShapeRef.new(shape: ConfigurationIssue)

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ConflictException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, location_name: "resourceId"))
    ConflictException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, location_name: "resourceType"))
    ConflictException.struct_class = Types::ConflictException

    CreateDeploymentInput.add_member(:client_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateDeploymentInput.add_member(:deployment_name, Shapes::ShapeRef.new(shape: DeploymentName, required: true, location_name: "deploymentName"))
    CreateDeploymentInput.add_member(:deployment_description, Shapes::ShapeRef.new(shape: Description, location_name: "deploymentDescription"))
    CreateDeploymentInput.add_member(:deployment_configuration, Shapes::ShapeRef.new(shape: DeploymentConfiguration, required: true, location_name: "deploymentConfiguration"))
    CreateDeploymentInput.add_member(:associated_policy_list, Shapes::ShapeRef.new(shape: PolicyReferenceList, required: true, location_name: "associatedPolicyList"))
    CreateDeploymentInput.add_member(:associated_scope_list, Shapes::ShapeRef.new(shape: ScopeReferenceList, required: true, location_name: "associatedScopeList"))
    CreateDeploymentInput.add_member(:is_published, Shapes::ShapeRef.new(shape: IsPublished, location_name: "isPublished"))
    CreateDeploymentInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateDeploymentInput.struct_class = Types::CreateDeploymentInput

    CreateDeploymentOutput.add_member(:deployment_id, Shapes::ShapeRef.new(shape: DeploymentId, required: true, location_name: "deploymentId"))
    CreateDeploymentOutput.add_member(:deployment_arn, Shapes::ShapeRef.new(shape: DeploymentArn, required: true, location_name: "deploymentArn"))
    CreateDeploymentOutput.add_member(:deployment_name, Shapes::ShapeRef.new(shape: DeploymentName, required: true, location_name: "deploymentName"))
    CreateDeploymentOutput.add_member(:deployment_description, Shapes::ShapeRef.new(shape: Description, location_name: "deploymentDescription"))
    CreateDeploymentOutput.add_member(:status, Shapes::ShapeRef.new(shape: EntityStatus, required: true, location_name: "status"))
    CreateDeploymentOutput.add_member(:deployment_configuration, Shapes::ShapeRef.new(shape: DeploymentConfiguration, location_name: "deploymentConfiguration"))
    CreateDeploymentOutput.add_member(:associated_policy_list, Shapes::ShapeRef.new(shape: AssociatedPolicyList, required: true, location_name: "associatedPolicyList"))
    CreateDeploymentOutput.add_member(:associated_scope_list, Shapes::ShapeRef.new(shape: AssociatedScopeList, required: true, location_name: "associatedScopeList"))
    CreateDeploymentOutput.add_member(:version, Shapes::ShapeRef.new(shape: EntityVersion, required: true, location_name: "version"))
    CreateDeploymentOutput.add_member(:update_token, Shapes::ShapeRef.new(shape: UpdateToken, location_name: "updateToken"))
    CreateDeploymentOutput.add_member(:is_snapshot, Shapes::ShapeRef.new(shape: IsSnapshot, location_name: "isSnapshot"))
    CreateDeploymentOutput.add_member(:has_published_version, Shapes::ShapeRef.new(shape: HasPublishedVersion, location_name: "hasPublishedVersion"))
    CreateDeploymentOutput.add_member(:deployment_coverage, Shapes::ShapeRef.new(shape: DeploymentCoverageList, location_name: "deploymentCoverage"))
    CreateDeploymentOutput.add_member(:warnings, Shapes::ShapeRef.new(shape: DeploymentWarningList, location_name: "warnings"))
    CreateDeploymentOutput.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, location_name: "updatedAt"))
    CreateDeploymentOutput.struct_class = Types::CreateDeploymentOutput

    CreateDeploymentSnapshotInput.add_member(:deployment_identifier, Shapes::ShapeRef.new(shape: DeploymentIdentifier, required: true, location: "uri", location_name: "deploymentIdentifier"))
    CreateDeploymentSnapshotInput.add_member(:client_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateDeploymentSnapshotInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateDeploymentSnapshotInput.struct_class = Types::CreateDeploymentSnapshotInput

    CreateDeploymentSnapshotOutput.add_member(:deployment_id, Shapes::ShapeRef.new(shape: DeploymentId, required: true, location_name: "deploymentId"))
    CreateDeploymentSnapshotOutput.add_member(:deployment_arn, Shapes::ShapeRef.new(shape: DeploymentArn, required: true, location_name: "deploymentArn"))
    CreateDeploymentSnapshotOutput.add_member(:deployment_name, Shapes::ShapeRef.new(shape: DeploymentName, required: true, location_name: "deploymentName"))
    CreateDeploymentSnapshotOutput.add_member(:deployment_description, Shapes::ShapeRef.new(shape: Description, location_name: "deploymentDescription"))
    CreateDeploymentSnapshotOutput.add_member(:status, Shapes::ShapeRef.new(shape: EntityStatus, required: true, location_name: "status"))
    CreateDeploymentSnapshotOutput.add_member(:deployment_configuration, Shapes::ShapeRef.new(shape: DeploymentConfiguration, location_name: "deploymentConfiguration"))
    CreateDeploymentSnapshotOutput.add_member(:associated_policy_list, Shapes::ShapeRef.new(shape: AssociatedPolicyList, required: true, location_name: "associatedPolicyList"))
    CreateDeploymentSnapshotOutput.add_member(:associated_scope_list, Shapes::ShapeRef.new(shape: AssociatedScopeList, required: true, location_name: "associatedScopeList"))
    CreateDeploymentSnapshotOutput.add_member(:version, Shapes::ShapeRef.new(shape: EntityVersion, required: true, location_name: "version"))
    CreateDeploymentSnapshotOutput.add_member(:update_token, Shapes::ShapeRef.new(shape: UpdateToken, location_name: "updateToken"))
    CreateDeploymentSnapshotOutput.add_member(:is_snapshot, Shapes::ShapeRef.new(shape: IsSnapshot, location_name: "isSnapshot"))
    CreateDeploymentSnapshotOutput.add_member(:has_published_version, Shapes::ShapeRef.new(shape: HasPublishedVersion, location_name: "hasPublishedVersion"))
    CreateDeploymentSnapshotOutput.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, location_name: "updatedAt"))
    CreateDeploymentSnapshotOutput.struct_class = Types::CreateDeploymentSnapshotOutput

    CreatePolicyInput.add_member(:client_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreatePolicyInput.add_member(:policy_name, Shapes::ShapeRef.new(shape: PolicyName, required: true, location_name: "policyName"))
    CreatePolicyInput.add_member(:policy_description, Shapes::ShapeRef.new(shape: Description, location_name: "policyDescription"))
    CreatePolicyInput.add_member(:priority, Shapes::ShapeRef.new(shape: Priority, required: true, location_name: "priority"))
    CreatePolicyInput.add_member(:associated_template_and_rule_list, Shapes::ShapeRef.new(shape: TemplateAndRuleReferenceList, location_name: "associatedTemplateAndRuleList"))
    CreatePolicyInput.add_member(:firewall_type, Shapes::ShapeRef.new(shape: PolicyFirewallType, required: true, location_name: "firewallType"))
    CreatePolicyInput.add_member(:policy_configuration, Shapes::ShapeRef.new(shape: PolicyConfiguration, required: true, location_name: "policyConfiguration"))
    CreatePolicyInput.add_member(:is_published, Shapes::ShapeRef.new(shape: IsPublished, location_name: "isPublished"))
    CreatePolicyInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreatePolicyInput.struct_class = Types::CreatePolicyInput

    CreatePolicyOutput.add_member(:policy_id, Shapes::ShapeRef.new(shape: PolicyId, required: true, location_name: "policyId"))
    CreatePolicyOutput.add_member(:policy_arn, Shapes::ShapeRef.new(shape: PolicyArn, required: true, location_name: "policyArn"))
    CreatePolicyOutput.add_member(:policy_name, Shapes::ShapeRef.new(shape: PolicyName, required: true, location_name: "policyName"))
    CreatePolicyOutput.add_member(:policy_description, Shapes::ShapeRef.new(shape: Description, location_name: "policyDescription"))
    CreatePolicyOutput.add_member(:status, Shapes::ShapeRef.new(shape: EntityStatus, required: true, location_name: "status"))
    CreatePolicyOutput.add_member(:priority, Shapes::ShapeRef.new(shape: Priority, required: true, location_name: "priority"))
    CreatePolicyOutput.add_member(:associated_template_and_rule_list, Shapes::ShapeRef.new(shape: AssociatedTemplateAndRuleList, required: true, location_name: "associatedTemplateAndRuleList"))
    CreatePolicyOutput.add_member(:version, Shapes::ShapeRef.new(shape: EntityVersion, required: true, location_name: "version"))
    CreatePolicyOutput.add_member(:update_token, Shapes::ShapeRef.new(shape: UpdateToken, location_name: "updateToken"))
    CreatePolicyOutput.add_member(:is_snapshot, Shapes::ShapeRef.new(shape: IsSnapshot, location_name: "isSnapshot"))
    CreatePolicyOutput.add_member(:has_published_version, Shapes::ShapeRef.new(shape: HasPublishedVersion, location_name: "hasPublishedVersion"))
    CreatePolicyOutput.add_member(:firewall_type, Shapes::ShapeRef.new(shape: PolicyFirewallType, required: true, location_name: "firewallType"))
    CreatePolicyOutput.add_member(:policy_configuration, Shapes::ShapeRef.new(shape: PolicyConfiguration, location_name: "policyConfiguration"))
    CreatePolicyOutput.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, location_name: "updatedAt"))
    CreatePolicyOutput.struct_class = Types::CreatePolicyOutput

    CreatePolicySnapshotInput.add_member(:policy_identifier, Shapes::ShapeRef.new(shape: PolicyIdentifier, required: true, location: "uri", location_name: "policyIdentifier"))
    CreatePolicySnapshotInput.add_member(:client_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreatePolicySnapshotInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreatePolicySnapshotInput.struct_class = Types::CreatePolicySnapshotInput

    CreatePolicySnapshotOutput.add_member(:policy_id, Shapes::ShapeRef.new(shape: PolicyId, required: true, location_name: "policyId"))
    CreatePolicySnapshotOutput.add_member(:policy_arn, Shapes::ShapeRef.new(shape: PolicyArn, required: true, location_name: "policyArn"))
    CreatePolicySnapshotOutput.add_member(:policy_name, Shapes::ShapeRef.new(shape: PolicyName, required: true, location_name: "policyName"))
    CreatePolicySnapshotOutput.add_member(:policy_description, Shapes::ShapeRef.new(shape: Description, location_name: "policyDescription"))
    CreatePolicySnapshotOutput.add_member(:status, Shapes::ShapeRef.new(shape: EntityStatus, required: true, location_name: "status"))
    CreatePolicySnapshotOutput.add_member(:priority, Shapes::ShapeRef.new(shape: Priority, required: true, location_name: "priority"))
    CreatePolicySnapshotOutput.add_member(:associated_template_and_rule_list, Shapes::ShapeRef.new(shape: AssociatedTemplateAndRuleList, required: true, location_name: "associatedTemplateAndRuleList"))
    CreatePolicySnapshotOutput.add_member(:version, Shapes::ShapeRef.new(shape: EntityVersion, required: true, location_name: "version"))
    CreatePolicySnapshotOutput.add_member(:update_token, Shapes::ShapeRef.new(shape: UpdateToken, location_name: "updateToken"))
    CreatePolicySnapshotOutput.add_member(:is_snapshot, Shapes::ShapeRef.new(shape: IsSnapshot, location_name: "isSnapshot"))
    CreatePolicySnapshotOutput.add_member(:has_published_version, Shapes::ShapeRef.new(shape: HasPublishedVersion, location_name: "hasPublishedVersion"))
    CreatePolicySnapshotOutput.add_member(:firewall_type, Shapes::ShapeRef.new(shape: PolicyFirewallType, required: true, location_name: "firewallType"))
    CreatePolicySnapshotOutput.add_member(:policy_configuration, Shapes::ShapeRef.new(shape: PolicyConfiguration, location_name: "policyConfiguration"))
    CreatePolicySnapshotOutput.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, location_name: "updatedAt"))
    CreatePolicySnapshotOutput.struct_class = Types::CreatePolicySnapshotOutput

    CreateRuleInput.add_member(:client_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateRuleInput.add_member(:rule_name, Shapes::ShapeRef.new(shape: RuleName, required: true, location_name: "ruleName"))
    CreateRuleInput.add_member(:firewall_type, Shapes::ShapeRef.new(shape: RuleFirewallType, required: true, location_name: "firewallType"))
    CreateRuleInput.add_member(:rule_type, Shapes::ShapeRef.new(shape: RuleType, required: true, location_name: "ruleType"))
    CreateRuleInput.add_member(:rule_description, Shapes::ShapeRef.new(shape: Description, location_name: "ruleDescription"))
    CreateRuleInput.add_member(:configuration, Shapes::ShapeRef.new(shape: JsonDocument, required: true, location_name: "configuration"))
    CreateRuleInput.add_member(:is_published, Shapes::ShapeRef.new(shape: IsPublished, location_name: "isPublished"))
    CreateRuleInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateRuleInput.struct_class = Types::CreateRuleInput

    CreateRuleOutput.add_member(:rule_id, Shapes::ShapeRef.new(shape: RuleId, required: true, location_name: "ruleId"))
    CreateRuleOutput.add_member(:rule_arn, Shapes::ShapeRef.new(shape: RuleArn, required: true, location_name: "ruleArn"))
    CreateRuleOutput.add_member(:rule_name, Shapes::ShapeRef.new(shape: RuleName, required: true, location_name: "ruleName"))
    CreateRuleOutput.add_member(:firewall_type, Shapes::ShapeRef.new(shape: RuleFirewallType, required: true, location_name: "firewallType"))
    CreateRuleOutput.add_member(:rule_type, Shapes::ShapeRef.new(shape: RuleType, location_name: "ruleType"))
    CreateRuleOutput.add_member(:rule_description, Shapes::ShapeRef.new(shape: Description, location_name: "ruleDescription"))
    CreateRuleOutput.add_member(:configuration, Shapes::ShapeRef.new(shape: JsonDocument, required: true, location_name: "configuration"))
    CreateRuleOutput.add_member(:status, Shapes::ShapeRef.new(shape: EntityStatus, required: true, location_name: "status"))
    CreateRuleOutput.add_member(:version, Shapes::ShapeRef.new(shape: EntityVersion, required: true, location_name: "version"))
    CreateRuleOutput.add_member(:update_token, Shapes::ShapeRef.new(shape: UpdateToken, location_name: "updateToken"))
    CreateRuleOutput.add_member(:is_snapshot, Shapes::ShapeRef.new(shape: IsSnapshot, location_name: "isSnapshot"))
    CreateRuleOutput.add_member(:has_published_version, Shapes::ShapeRef.new(shape: HasPublishedVersion, location_name: "hasPublishedVersion"))
    CreateRuleOutput.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, location_name: "updatedAt"))
    CreateRuleOutput.struct_class = Types::CreateRuleOutput

    CreateRuleSnapshotInput.add_member(:rule_identifier, Shapes::ShapeRef.new(shape: RuleIdentifier, required: true, location: "uri", location_name: "ruleIdentifier"))
    CreateRuleSnapshotInput.add_member(:client_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateRuleSnapshotInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateRuleSnapshotInput.struct_class = Types::CreateRuleSnapshotInput

    CreateRuleSnapshotOutput.add_member(:rule_id, Shapes::ShapeRef.new(shape: RuleId, required: true, location_name: "ruleId"))
    CreateRuleSnapshotOutput.add_member(:rule_arn, Shapes::ShapeRef.new(shape: RuleArn, required: true, location_name: "ruleArn"))
    CreateRuleSnapshotOutput.add_member(:rule_name, Shapes::ShapeRef.new(shape: RuleName, required: true, location_name: "ruleName"))
    CreateRuleSnapshotOutput.add_member(:firewall_type, Shapes::ShapeRef.new(shape: RuleFirewallType, required: true, location_name: "firewallType"))
    CreateRuleSnapshotOutput.add_member(:rule_type, Shapes::ShapeRef.new(shape: RuleType, location_name: "ruleType"))
    CreateRuleSnapshotOutput.add_member(:rule_description, Shapes::ShapeRef.new(shape: Description, location_name: "ruleDescription"))
    CreateRuleSnapshotOutput.add_member(:configuration, Shapes::ShapeRef.new(shape: JsonDocument, required: true, location_name: "configuration"))
    CreateRuleSnapshotOutput.add_member(:status, Shapes::ShapeRef.new(shape: EntityStatus, required: true, location_name: "status"))
    CreateRuleSnapshotOutput.add_member(:version, Shapes::ShapeRef.new(shape: EntityVersion, required: true, location_name: "version"))
    CreateRuleSnapshotOutput.add_member(:update_token, Shapes::ShapeRef.new(shape: UpdateToken, location_name: "updateToken"))
    CreateRuleSnapshotOutput.add_member(:is_snapshot, Shapes::ShapeRef.new(shape: IsSnapshot, location_name: "isSnapshot"))
    CreateRuleSnapshotOutput.add_member(:has_published_version, Shapes::ShapeRef.new(shape: HasPublishedVersion, location_name: "hasPublishedVersion"))
    CreateRuleSnapshotOutput.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, location_name: "updatedAt"))
    CreateRuleSnapshotOutput.struct_class = Types::CreateRuleSnapshotOutput

    CreateScopeInput.add_member(:client_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateScopeInput.add_member(:scope_name, Shapes::ShapeRef.new(shape: ScopeName, required: true, location_name: "scopeName"))
    CreateScopeInput.add_member(:scope_description, Shapes::ShapeRef.new(shape: Description, location_name: "scopeDescription"))
    CreateScopeInput.add_member(:scope_configuration, Shapes::ShapeRef.new(shape: ScopeConfiguration, required: true, location_name: "scopeConfiguration"))
    CreateScopeInput.add_member(:is_published, Shapes::ShapeRef.new(shape: IsPublished, location_name: "isPublished"))
    CreateScopeInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateScopeInput.struct_class = Types::CreateScopeInput

    CreateScopeOutput.add_member(:scope_id, Shapes::ShapeRef.new(shape: ScopeId, required: true, location_name: "scopeId"))
    CreateScopeOutput.add_member(:scope_arn, Shapes::ShapeRef.new(shape: ScopeArn, required: true, location_name: "scopeArn"))
    CreateScopeOutput.add_member(:scope_name, Shapes::ShapeRef.new(shape: ScopeName, required: true, location_name: "scopeName"))
    CreateScopeOutput.add_member(:scope_description, Shapes::ShapeRef.new(shape: Description, location_name: "scopeDescription"))
    CreateScopeOutput.add_member(:scope_configuration, Shapes::ShapeRef.new(shape: ScopeConfiguration, location_name: "scopeConfiguration"))
    CreateScopeOutput.add_member(:status, Shapes::ShapeRef.new(shape: EntityStatus, required: true, location_name: "status"))
    CreateScopeOutput.add_member(:version, Shapes::ShapeRef.new(shape: EntityVersion, required: true, location_name: "version"))
    CreateScopeOutput.add_member(:update_token, Shapes::ShapeRef.new(shape: UpdateToken, location_name: "updateToken"))
    CreateScopeOutput.add_member(:is_snapshot, Shapes::ShapeRef.new(shape: IsSnapshot, location_name: "isSnapshot"))
    CreateScopeOutput.add_member(:has_published_version, Shapes::ShapeRef.new(shape: HasPublishedVersion, location_name: "hasPublishedVersion"))
    CreateScopeOutput.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, location_name: "updatedAt"))
    CreateScopeOutput.struct_class = Types::CreateScopeOutput

    CreateScopeSnapshotInput.add_member(:scope_identifier, Shapes::ShapeRef.new(shape: ScopeIdentifier, required: true, location: "uri", location_name: "scopeIdentifier"))
    CreateScopeSnapshotInput.add_member(:client_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateScopeSnapshotInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateScopeSnapshotInput.struct_class = Types::CreateScopeSnapshotInput

    CreateScopeSnapshotOutput.add_member(:scope_id, Shapes::ShapeRef.new(shape: ScopeId, required: true, location_name: "scopeId"))
    CreateScopeSnapshotOutput.add_member(:scope_arn, Shapes::ShapeRef.new(shape: ScopeArn, required: true, location_name: "scopeArn"))
    CreateScopeSnapshotOutput.add_member(:scope_name, Shapes::ShapeRef.new(shape: ScopeName, required: true, location_name: "scopeName"))
    CreateScopeSnapshotOutput.add_member(:scope_description, Shapes::ShapeRef.new(shape: Description, location_name: "scopeDescription"))
    CreateScopeSnapshotOutput.add_member(:scope_configuration, Shapes::ShapeRef.new(shape: ScopeConfiguration, location_name: "scopeConfiguration"))
    CreateScopeSnapshotOutput.add_member(:status, Shapes::ShapeRef.new(shape: EntityStatus, required: true, location_name: "status"))
    CreateScopeSnapshotOutput.add_member(:version, Shapes::ShapeRef.new(shape: EntityVersion, required: true, location_name: "version"))
    CreateScopeSnapshotOutput.add_member(:update_token, Shapes::ShapeRef.new(shape: UpdateToken, location_name: "updateToken"))
    CreateScopeSnapshotOutput.add_member(:is_snapshot, Shapes::ShapeRef.new(shape: IsSnapshot, location_name: "isSnapshot"))
    CreateScopeSnapshotOutput.add_member(:has_published_version, Shapes::ShapeRef.new(shape: HasPublishedVersion, location_name: "hasPublishedVersion"))
    CreateScopeSnapshotOutput.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, location_name: "updatedAt"))
    CreateScopeSnapshotOutput.struct_class = Types::CreateScopeSnapshotOutput

    CreateTemplateInput.add_member(:client_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateTemplateInput.add_member(:template_name, Shapes::ShapeRef.new(shape: TemplateName, required: true, location_name: "templateName"))
    CreateTemplateInput.add_member(:template_description, Shapes::ShapeRef.new(shape: Description, location_name: "templateDescription"))
    CreateTemplateInput.add_member(:associated_rule_list, Shapes::ShapeRef.new(shape: RuleReferenceList, required: true, location_name: "associatedRuleList"))
    CreateTemplateInput.add_member(:firewall_type, Shapes::ShapeRef.new(shape: TemplateFirewallType, required: true, location_name: "firewallType"))
    CreateTemplateInput.add_member(:is_published, Shapes::ShapeRef.new(shape: IsPublished, location_name: "isPublished"))
    CreateTemplateInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateTemplateInput.struct_class = Types::CreateTemplateInput

    CreateTemplateOutput.add_member(:template_id, Shapes::ShapeRef.new(shape: TemplateId, required: true, location_name: "templateId"))
    CreateTemplateOutput.add_member(:template_arn, Shapes::ShapeRef.new(shape: TemplateArn, required: true, location_name: "templateArn"))
    CreateTemplateOutput.add_member(:template_name, Shapes::ShapeRef.new(shape: TemplateName, required: true, location_name: "templateName"))
    CreateTemplateOutput.add_member(:template_description, Shapes::ShapeRef.new(shape: Description, location_name: "templateDescription"))
    CreateTemplateOutput.add_member(:status, Shapes::ShapeRef.new(shape: EntityStatus, required: true, location_name: "status"))
    CreateTemplateOutput.add_member(:version, Shapes::ShapeRef.new(shape: EntityVersion, required: true, location_name: "version"))
    CreateTemplateOutput.add_member(:associated_rule_list, Shapes::ShapeRef.new(shape: AssociatedRuleList, required: true, location_name: "associatedRuleList"))
    CreateTemplateOutput.add_member(:update_token, Shapes::ShapeRef.new(shape: UpdateToken, location_name: "updateToken"))
    CreateTemplateOutput.add_member(:is_snapshot, Shapes::ShapeRef.new(shape: IsSnapshot, location_name: "isSnapshot"))
    CreateTemplateOutput.add_member(:has_published_version, Shapes::ShapeRef.new(shape: HasPublishedVersion, location_name: "hasPublishedVersion"))
    CreateTemplateOutput.add_member(:firewall_type, Shapes::ShapeRef.new(shape: TemplateFirewallType, required: true, location_name: "firewallType"))
    CreateTemplateOutput.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, location_name: "updatedAt"))
    CreateTemplateOutput.struct_class = Types::CreateTemplateOutput

    CreateTemplateSnapshotInput.add_member(:template_identifier, Shapes::ShapeRef.new(shape: TemplateIdentifier, required: true, location: "uri", location_name: "templateIdentifier"))
    CreateTemplateSnapshotInput.add_member(:client_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateTemplateSnapshotInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateTemplateSnapshotInput.struct_class = Types::CreateTemplateSnapshotInput

    CreateTemplateSnapshotOutput.add_member(:template_id, Shapes::ShapeRef.new(shape: TemplateId, required: true, location_name: "templateId"))
    CreateTemplateSnapshotOutput.add_member(:template_arn, Shapes::ShapeRef.new(shape: TemplateArn, required: true, location_name: "templateArn"))
    CreateTemplateSnapshotOutput.add_member(:template_name, Shapes::ShapeRef.new(shape: TemplateName, required: true, location_name: "templateName"))
    CreateTemplateSnapshotOutput.add_member(:template_description, Shapes::ShapeRef.new(shape: Description, location_name: "templateDescription"))
    CreateTemplateSnapshotOutput.add_member(:status, Shapes::ShapeRef.new(shape: EntityStatus, required: true, location_name: "status"))
    CreateTemplateSnapshotOutput.add_member(:version, Shapes::ShapeRef.new(shape: EntityVersion, required: true, location_name: "version"))
    CreateTemplateSnapshotOutput.add_member(:associated_rule_list, Shapes::ShapeRef.new(shape: AssociatedRuleList, required: true, location_name: "associatedRuleList"))
    CreateTemplateSnapshotOutput.add_member(:update_token, Shapes::ShapeRef.new(shape: UpdateToken, location_name: "updateToken"))
    CreateTemplateSnapshotOutput.add_member(:is_snapshot, Shapes::ShapeRef.new(shape: IsSnapshot, location_name: "isSnapshot"))
    CreateTemplateSnapshotOutput.add_member(:has_published_version, Shapes::ShapeRef.new(shape: HasPublishedVersion, location_name: "hasPublishedVersion"))
    CreateTemplateSnapshotOutput.add_member(:firewall_type, Shapes::ShapeRef.new(shape: TemplateFirewallType, required: true, location_name: "firewallType"))
    CreateTemplateSnapshotOutput.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, location_name: "updatedAt"))
    CreateTemplateSnapshotOutput.struct_class = Types::CreateTemplateSnapshotOutput

    DeleteAdminAccountRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location: "uri", location_name: "accountId"))
    DeleteAdminAccountRequest.struct_class = Types::DeleteAdminAccountRequest

    DeleteDeploymentInput.add_member(:deployment_identifier, Shapes::ShapeRef.new(shape: DeploymentIdentifier, required: true, location: "uri", location_name: "deploymentIdentifier"))
    DeleteDeploymentInput.struct_class = Types::DeleteDeploymentInput

    DeletePolicyInput.add_member(:policy_identifier, Shapes::ShapeRef.new(shape: PolicyIdentifier, required: true, location: "uri", location_name: "policyIdentifier"))
    DeletePolicyInput.struct_class = Types::DeletePolicyInput

    DeleteRuleInput.add_member(:rule_identifier, Shapes::ShapeRef.new(shape: RuleIdentifier, required: true, location: "uri", location_name: "ruleIdentifier"))
    DeleteRuleInput.struct_class = Types::DeleteRuleInput

    DeleteScopeInput.add_member(:scope_identifier, Shapes::ShapeRef.new(shape: ScopeIdentifier, required: true, location: "uri", location_name: "scopeIdentifier"))
    DeleteScopeInput.struct_class = Types::DeleteScopeInput

    DeleteTemplateInput.add_member(:template_identifier, Shapes::ShapeRef.new(shape: TemplateIdentifier, required: true, location: "uri", location_name: "templateIdentifier"))
    DeleteTemplateInput.struct_class = Types::DeleteTemplateInput

    DeploymentConfiguration.add_member(:enable_cross_account_visibility, Shapes::ShapeRef.new(shape: EnableCrossAccountVisibility, required: true, location_name: "enableCrossAccountVisibility"))
    DeploymentConfiguration.struct_class = Types::DeploymentConfiguration

    DeploymentCoverageEntry.add_member(:firewall_type, Shapes::ShapeRef.new(shape: PolicyFirewallType, required: true, location_name: "firewallType"))
    DeploymentCoverageEntry.add_member(:policy_arns, Shapes::ShapeRef.new(shape: DeploymentPolicyArnList, required: true, location_name: "policyArns"))
    DeploymentCoverageEntry.add_member(:in_scope_resource_types, Shapes::ShapeRef.new(shape: DeploymentResourceTypeList, required: true, location_name: "inScopeResourceTypes"))
    DeploymentCoverageEntry.struct_class = Types::DeploymentCoverageEntry

    DeploymentCoverageList.member = Shapes::ShapeRef.new(shape: DeploymentCoverageEntry)

    DeploymentPolicyArnList.member = Shapes::ShapeRef.new(shape: PolicyArn)

    DeploymentResourceTypeList.member = Shapes::ShapeRef.new(shape: ScopeResourceType)

    DeploymentSummary.add_member(:deployment_id, Shapes::ShapeRef.new(shape: DeploymentId, required: true, location_name: "deploymentId"))
    DeploymentSummary.add_member(:deployment_arn, Shapes::ShapeRef.new(shape: DeploymentArn, required: true, location_name: "deploymentArn"))
    DeploymentSummary.add_member(:deployment_name, Shapes::ShapeRef.new(shape: DeploymentName, location_name: "deploymentName"))
    DeploymentSummary.add_member(:status, Shapes::ShapeRef.new(shape: EntityStatus, location_name: "status"))
    DeploymentSummary.add_member(:version, Shapes::ShapeRef.new(shape: EntityVersion, location_name: "version"))
    DeploymentSummary.add_member(:has_published_version, Shapes::ShapeRef.new(shape: HasPublishedVersion, location_name: "hasPublishedVersion"))
    DeploymentSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, location_name: "updatedAt"))
    DeploymentSummary.struct_class = Types::DeploymentSummary

    DeploymentSummaryList.member = Shapes::ShapeRef.new(shape: DeploymentSummary)

    DeploymentWarningEntry.add_member(:code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "code"))
    DeploymentWarningEntry.add_member(:policy_arn, Shapes::ShapeRef.new(shape: PolicyArn, required: true, location_name: "policyArn"))
    DeploymentWarningEntry.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    DeploymentWarningEntry.struct_class = Types::DeploymentWarningEntry

    DeploymentWarningList.member = Shapes::ShapeRef.new(shape: DeploymentWarningEntry)

    FirewallSyncReason.add_member(:missing_firewall, Shapes::ShapeRef.new(shape: String, location_name: "missingFirewall"))
    FirewallSyncReason.add_member(:invalid_firewall, Shapes::ShapeRef.new(shape: InvalidFirewallReasons, location_name: "invalidFirewall"))
    FirewallSyncReason.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    FirewallSyncReason.add_member_subclass(:missing_firewall, Types::FirewallSyncReason::MissingFirewall)
    FirewallSyncReason.add_member_subclass(:invalid_firewall, Types::FirewallSyncReason::InvalidFirewall)
    FirewallSyncReason.add_member_subclass(:unknown, Types::FirewallSyncReason::Unknown)
    FirewallSyncReason.struct_class = Types::FirewallSyncReason

    FirewallTypeList.member = Shapes::ShapeRef.new(shape: PolicyFirewallType)

    GenerateRuleConfigurationRequest.add_member(:prompt, Shapes::ShapeRef.new(shape: GenerateRuleConfigurationRequestPromptString, required: true, location_name: "prompt"))
    GenerateRuleConfigurationRequest.add_member(:rule_firewall_type, Shapes::ShapeRef.new(shape: RuleFirewallType, required: true, location_name: "ruleFirewallType"))
    GenerateRuleConfigurationRequest.add_member(:rule_type, Shapes::ShapeRef.new(shape: RuleType, required: true, location_name: "ruleType"))
    GenerateRuleConfigurationRequest.add_member(:waf_config_data_type, Shapes::ShapeRef.new(shape: WAFConfigDataType, location_name: "wafConfigDataType"))
    GenerateRuleConfigurationRequest.add_member(:current_configuration, Shapes::ShapeRef.new(shape: GenerateRuleConfigurationRequestCurrentConfigurationString, location_name: "currentConfiguration"))
    GenerateRuleConfigurationRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    GenerateRuleConfigurationRequest.struct_class = Types::GenerateRuleConfigurationRequest

    GenerateRuleConfigurationResponse.add_member(:configuration, Shapes::ShapeRef.new(shape: GenerateRuleConfigurationResponseConfigurationString, required: true, location_name: "configuration"))
    GenerateRuleConfigurationResponse.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    GenerateRuleConfigurationResponse.struct_class = Types::GenerateRuleConfigurationResponse

    GetAdminAccountRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location: "uri", location_name: "accountId"))
    GetAdminAccountRequest.struct_class = Types::GetAdminAccountRequest

    GetAdminAccountResponse.add_member(:admin_account_details, Shapes::ShapeRef.new(shape: AdminAccountDetails, location_name: "adminAccountDetails"))
    GetAdminAccountResponse.struct_class = Types::GetAdminAccountResponse

    GetDeploymentInput.add_member(:deployment_identifier, Shapes::ShapeRef.new(shape: DeploymentIdentifier, required: true, location: "uri", location_name: "deploymentIdentifier"))
    GetDeploymentInput.struct_class = Types::GetDeploymentInput

    GetDeploymentOutput.add_member(:deployment_id, Shapes::ShapeRef.new(shape: DeploymentId, required: true, location_name: "deploymentId"))
    GetDeploymentOutput.add_member(:deployment_arn, Shapes::ShapeRef.new(shape: DeploymentArn, required: true, location_name: "deploymentArn"))
    GetDeploymentOutput.add_member(:deployment_name, Shapes::ShapeRef.new(shape: DeploymentName, required: true, location_name: "deploymentName"))
    GetDeploymentOutput.add_member(:deployment_description, Shapes::ShapeRef.new(shape: Description, location_name: "deploymentDescription"))
    GetDeploymentOutput.add_member(:status, Shapes::ShapeRef.new(shape: EntityStatus, required: true, location_name: "status"))
    GetDeploymentOutput.add_member(:deployment_configuration, Shapes::ShapeRef.new(shape: DeploymentConfiguration, location_name: "deploymentConfiguration"))
    GetDeploymentOutput.add_member(:associated_policy_list, Shapes::ShapeRef.new(shape: AssociatedPolicyList, required: true, location_name: "associatedPolicyList"))
    GetDeploymentOutput.add_member(:associated_scope_list, Shapes::ShapeRef.new(shape: AssociatedScopeList, required: true, location_name: "associatedScopeList"))
    GetDeploymentOutput.add_member(:version, Shapes::ShapeRef.new(shape: EntityVersion, required: true, location_name: "version"))
    GetDeploymentOutput.add_member(:update_token, Shapes::ShapeRef.new(shape: UpdateToken, location_name: "updateToken"))
    GetDeploymentOutput.add_member(:is_snapshot, Shapes::ShapeRef.new(shape: IsSnapshot, location_name: "isSnapshot"))
    GetDeploymentOutput.add_member(:has_published_version, Shapes::ShapeRef.new(shape: HasPublishedVersion, location_name: "hasPublishedVersion"))
    GetDeploymentOutput.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, location_name: "updatedAt"))
    GetDeploymentOutput.add_member(:deployment_coverage, Shapes::ShapeRef.new(shape: DeploymentCoverageList, location_name: "deploymentCoverage"))
    GetDeploymentOutput.add_member(:warnings, Shapes::ShapeRef.new(shape: DeploymentWarningList, location_name: "warnings"))
    GetDeploymentOutput.struct_class = Types::GetDeploymentOutput

    GetPolicyInput.add_member(:policy_identifier, Shapes::ShapeRef.new(shape: PolicyIdentifier, required: true, location: "uri", location_name: "policyIdentifier"))
    GetPolicyInput.struct_class = Types::GetPolicyInput

    GetPolicyOutput.add_member(:policy_id, Shapes::ShapeRef.new(shape: PolicyId, required: true, location_name: "policyId"))
    GetPolicyOutput.add_member(:policy_arn, Shapes::ShapeRef.new(shape: PolicyArn, required: true, location_name: "policyArn"))
    GetPolicyOutput.add_member(:policy_name, Shapes::ShapeRef.new(shape: PolicyName, required: true, location_name: "policyName"))
    GetPolicyOutput.add_member(:policy_description, Shapes::ShapeRef.new(shape: Description, location_name: "policyDescription"))
    GetPolicyOutput.add_member(:status, Shapes::ShapeRef.new(shape: EntityStatus, required: true, location_name: "status"))
    GetPolicyOutput.add_member(:priority, Shapes::ShapeRef.new(shape: Priority, required: true, location_name: "priority"))
    GetPolicyOutput.add_member(:associated_template_and_rule_list, Shapes::ShapeRef.new(shape: AssociatedTemplateAndRuleList, required: true, location_name: "associatedTemplateAndRuleList"))
    GetPolicyOutput.add_member(:version, Shapes::ShapeRef.new(shape: EntityVersion, required: true, location_name: "version"))
    GetPolicyOutput.add_member(:update_token, Shapes::ShapeRef.new(shape: UpdateToken, location_name: "updateToken"))
    GetPolicyOutput.add_member(:is_snapshot, Shapes::ShapeRef.new(shape: IsSnapshot, location_name: "isSnapshot"))
    GetPolicyOutput.add_member(:has_published_version, Shapes::ShapeRef.new(shape: HasPublishedVersion, location_name: "hasPublishedVersion"))
    GetPolicyOutput.add_member(:firewall_type, Shapes::ShapeRef.new(shape: PolicyFirewallType, required: true, location_name: "firewallType"))
    GetPolicyOutput.add_member(:policy_configuration, Shapes::ShapeRef.new(shape: PolicyConfiguration, location_name: "policyConfiguration"))
    GetPolicyOutput.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, location_name: "updatedAt"))
    GetPolicyOutput.struct_class = Types::GetPolicyOutput

    GetRuleInput.add_member(:rule_identifier, Shapes::ShapeRef.new(shape: RuleIdentifier, required: true, location: "uri", location_name: "ruleIdentifier"))
    GetRuleInput.struct_class = Types::GetRuleInput

    GetRuleOutput.add_member(:rule_id, Shapes::ShapeRef.new(shape: RuleId, required: true, location_name: "ruleId"))
    GetRuleOutput.add_member(:rule_arn, Shapes::ShapeRef.new(shape: RuleArn, required: true, location_name: "ruleArn"))
    GetRuleOutput.add_member(:rule_name, Shapes::ShapeRef.new(shape: RuleName, required: true, location_name: "ruleName"))
    GetRuleOutput.add_member(:firewall_type, Shapes::ShapeRef.new(shape: RuleFirewallType, required: true, location_name: "firewallType"))
    GetRuleOutput.add_member(:rule_type, Shapes::ShapeRef.new(shape: RuleType, location_name: "ruleType"))
    GetRuleOutput.add_member(:rule_description, Shapes::ShapeRef.new(shape: Description, location_name: "ruleDescription"))
    GetRuleOutput.add_member(:configuration, Shapes::ShapeRef.new(shape: JsonDocument, required: true, location_name: "configuration"))
    GetRuleOutput.add_member(:status, Shapes::ShapeRef.new(shape: EntityStatus, required: true, location_name: "status"))
    GetRuleOutput.add_member(:version, Shapes::ShapeRef.new(shape: EntityVersion, required: true, location_name: "version"))
    GetRuleOutput.add_member(:update_token, Shapes::ShapeRef.new(shape: UpdateToken, location_name: "updateToken"))
    GetRuleOutput.add_member(:is_snapshot, Shapes::ShapeRef.new(shape: IsSnapshot, location_name: "isSnapshot"))
    GetRuleOutput.add_member(:has_published_version, Shapes::ShapeRef.new(shape: HasPublishedVersion, location_name: "hasPublishedVersion"))
    GetRuleOutput.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, location_name: "updatedAt"))
    GetRuleOutput.struct_class = Types::GetRuleOutput

    GetScopeInput.add_member(:scope_identifier, Shapes::ShapeRef.new(shape: ScopeIdentifier, required: true, location: "uri", location_name: "scopeIdentifier"))
    GetScopeInput.struct_class = Types::GetScopeInput

    GetScopeOutput.add_member(:scope_id, Shapes::ShapeRef.new(shape: ScopeId, required: true, location_name: "scopeId"))
    GetScopeOutput.add_member(:scope_arn, Shapes::ShapeRef.new(shape: ScopeArn, required: true, location_name: "scopeArn"))
    GetScopeOutput.add_member(:scope_name, Shapes::ShapeRef.new(shape: ScopeName, required: true, location_name: "scopeName"))
    GetScopeOutput.add_member(:scope_description, Shapes::ShapeRef.new(shape: Description, location_name: "scopeDescription"))
    GetScopeOutput.add_member(:scope_configuration, Shapes::ShapeRef.new(shape: ScopeConfiguration, location_name: "scopeConfiguration"))
    GetScopeOutput.add_member(:status, Shapes::ShapeRef.new(shape: EntityStatus, required: true, location_name: "status"))
    GetScopeOutput.add_member(:version, Shapes::ShapeRef.new(shape: EntityVersion, required: true, location_name: "version"))
    GetScopeOutput.add_member(:update_token, Shapes::ShapeRef.new(shape: UpdateToken, location_name: "updateToken"))
    GetScopeOutput.add_member(:is_snapshot, Shapes::ShapeRef.new(shape: IsSnapshot, location_name: "isSnapshot"))
    GetScopeOutput.add_member(:has_published_version, Shapes::ShapeRef.new(shape: HasPublishedVersion, location_name: "hasPublishedVersion"))
    GetScopeOutput.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, location_name: "updatedAt"))
    GetScopeOutput.struct_class = Types::GetScopeOutput

    GetTemplateInput.add_member(:template_identifier, Shapes::ShapeRef.new(shape: TemplateIdentifier, required: true, location: "uri", location_name: "templateIdentifier"))
    GetTemplateInput.struct_class = Types::GetTemplateInput

    GetTemplateOutput.add_member(:template_id, Shapes::ShapeRef.new(shape: TemplateId, required: true, location_name: "templateId"))
    GetTemplateOutput.add_member(:template_arn, Shapes::ShapeRef.new(shape: TemplateArn, required: true, location_name: "templateArn"))
    GetTemplateOutput.add_member(:template_name, Shapes::ShapeRef.new(shape: TemplateName, required: true, location_name: "templateName"))
    GetTemplateOutput.add_member(:template_description, Shapes::ShapeRef.new(shape: Description, location_name: "templateDescription"))
    GetTemplateOutput.add_member(:status, Shapes::ShapeRef.new(shape: EntityStatus, required: true, location_name: "status"))
    GetTemplateOutput.add_member(:version, Shapes::ShapeRef.new(shape: EntityVersion, required: true, location_name: "version"))
    GetTemplateOutput.add_member(:associated_rule_list, Shapes::ShapeRef.new(shape: AssociatedRuleList, required: true, location_name: "associatedRuleList"))
    GetTemplateOutput.add_member(:update_token, Shapes::ShapeRef.new(shape: UpdateToken, location_name: "updateToken"))
    GetTemplateOutput.add_member(:is_snapshot, Shapes::ShapeRef.new(shape: IsSnapshot, location_name: "isSnapshot"))
    GetTemplateOutput.add_member(:has_published_version, Shapes::ShapeRef.new(shape: HasPublishedVersion, location_name: "hasPublishedVersion"))
    GetTemplateOutput.add_member(:firewall_type, Shapes::ShapeRef.new(shape: TemplateFirewallType, required: true, location_name: "firewallType"))
    GetTemplateOutput.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, location_name: "updatedAt"))
    GetTemplateOutput.struct_class = Types::GetTemplateOutput

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    InvalidFirewallReasons.add_member(:incorrect_single_value_configurations, Shapes::ShapeRef.new(shape: ConfigurationIssueList, location_name: "incorrectSingleValueConfigurations"))
    InvalidFirewallReasons.add_member(:missing_appendable_configuration_values, Shapes::ShapeRef.new(shape: ConfigurationIssueList, location_name: "missingAppendableConfigurationValues"))
    InvalidFirewallReasons.add_member(:unexpected_appendable_configuration_values, Shapes::ShapeRef.new(shape: ConfigurationIssueList, location_name: "unexpectedAppendableConfigurationValues"))
    InvalidFirewallReasons.add_member(:incorrect_appendable_configuration_order, Shapes::ShapeRef.new(shape: ConfigurationIssueList, location_name: "incorrectAppendableConfigurationOrder"))
    InvalidFirewallReasons.add_member(:missing_mergeable_configuration_values, Shapes::ShapeRef.new(shape: ConfigurationIssueList, location_name: "missingMergeableConfigurationValues"))
    InvalidFirewallReasons.add_member(:unexpected_mergeable_configuration_values, Shapes::ShapeRef.new(shape: ConfigurationIssueList, location_name: "unexpectedMergeableConfigurationValues"))
    InvalidFirewallReasons.struct_class = Types::InvalidFirewallReasons

    ListAdminAccountsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListAdminAccountsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListAdminAccountsRequest.struct_class = Types::ListAdminAccountsRequest

    ListAdminAccountsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListAdminAccountsResponse.add_member(:admin_accounts, Shapes::ShapeRef.new(shape: AdminAccountSummaryList, required: true, location_name: "adminAccounts"))
    ListAdminAccountsResponse.struct_class = Types::ListAdminAccountsResponse

    ListAggregateResourceSynchronizationStatusesInput.add_member(:synchronization_status, Shapes::ShapeRef.new(shape: SynchronizationStatus, location: "querystring", location_name: "synchronizationStatus"))
    ListAggregateResourceSynchronizationStatusesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListAggregateResourceSynchronizationStatusesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListAggregateResourceSynchronizationStatusesInput.struct_class = Types::ListAggregateResourceSynchronizationStatusesInput

    ListAggregateResourceSynchronizationStatusesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListAggregateResourceSynchronizationStatusesOutput.add_member(:resource_synchronization_statuses, Shapes::ShapeRef.new(shape: ResourceSynchronizationStatusSummaryList, required: true, location_name: "resourceSynchronizationStatuses"))
    ListAggregateResourceSynchronizationStatusesOutput.struct_class = Types::ListAggregateResourceSynchronizationStatusesOutput

    ListDeploymentSnapshotsInput.add_member(:deployment_identifier, Shapes::ShapeRef.new(shape: DeploymentIdentifier, required: true, location: "uri", location_name: "deploymentIdentifier"))
    ListDeploymentSnapshotsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListDeploymentSnapshotsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListDeploymentSnapshotsInput.struct_class = Types::ListDeploymentSnapshotsInput

    ListDeploymentSnapshotsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListDeploymentSnapshotsOutput.add_member(:snapshots, Shapes::ShapeRef.new(shape: DeploymentSummaryList, required: true, location_name: "snapshots"))
    ListDeploymentSnapshotsOutput.struct_class = Types::ListDeploymentSnapshotsOutput

    ListDeploymentsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListDeploymentsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListDeploymentsInput.add_member(:status, Shapes::ShapeRef.new(shape: EntityStatusFilter, location: "querystring", location_name: "status"))
    ListDeploymentsInput.struct_class = Types::ListDeploymentsInput

    ListDeploymentsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListDeploymentsOutput.add_member(:deployments, Shapes::ShapeRef.new(shape: DeploymentSummaryList, required: true, location_name: "deployments"))
    ListDeploymentsOutput.struct_class = Types::ListDeploymentsOutput

    ListPoliciesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListPoliciesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListPoliciesInput.add_member(:status, Shapes::ShapeRef.new(shape: EntityStatusFilter, location: "querystring", location_name: "status"))
    ListPoliciesInput.struct_class = Types::ListPoliciesInput

    ListPoliciesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListPoliciesOutput.add_member(:policies, Shapes::ShapeRef.new(shape: PolicySummaryList, required: true, location_name: "policies"))
    ListPoliciesOutput.struct_class = Types::ListPoliciesOutput

    ListPolicySnapshotsInput.add_member(:policy_identifier, Shapes::ShapeRef.new(shape: PolicyIdentifier, required: true, location: "uri", location_name: "policyIdentifier"))
    ListPolicySnapshotsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListPolicySnapshotsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListPolicySnapshotsInput.struct_class = Types::ListPolicySnapshotsInput

    ListPolicySnapshotsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListPolicySnapshotsOutput.add_member(:snapshots, Shapes::ShapeRef.new(shape: PolicySummaryList, required: true, location_name: "snapshots"))
    ListPolicySnapshotsOutput.struct_class = Types::ListPolicySnapshotsOutput

    ListResourceAssociationsInput.add_member(:resource_identifier, Shapes::ShapeRef.new(shape: ResourceIdentifier, required: true, location: "querystring", location_name: "resourceIdentifier"))
    ListResourceAssociationsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListResourceAssociationsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListResourceAssociationsInput.struct_class = Types::ListResourceAssociationsInput

    ListResourceAssociationsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListResourceAssociationsOutput.add_member(:resource_associations, Shapes::ShapeRef.new(shape: ResourceAssociationList, required: true, location_name: "resourceAssociations"))
    ListResourceAssociationsOutput.struct_class = Types::ListResourceAssociationsOutput

    ListResourceSynchronizationStatusesInput.add_member(:deployment_identifier, Shapes::ShapeRef.new(shape: DeploymentIdentifier, required: true, location: "querystring", location_name: "deploymentIdentifier"))
    ListResourceSynchronizationStatusesInput.add_member(:synchronization_status, Shapes::ShapeRef.new(shape: SynchronizationStatus, location: "querystring", location_name: "synchronizationStatus"))
    ListResourceSynchronizationStatusesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListResourceSynchronizationStatusesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListResourceSynchronizationStatusesInput.struct_class = Types::ListResourceSynchronizationStatusesInput

    ListResourceSynchronizationStatusesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListResourceSynchronizationStatusesOutput.add_member(:resource_synchronization_statuses, Shapes::ShapeRef.new(shape: ResourceSynchronizationStatusSummaryList, required: true, location_name: "resourceSynchronizationStatuses"))
    ListResourceSynchronizationStatusesOutput.struct_class = Types::ListResourceSynchronizationStatusesOutput

    ListRuleSnapshotsInput.add_member(:rule_identifier, Shapes::ShapeRef.new(shape: RuleIdentifier, required: true, location: "uri", location_name: "ruleIdentifier"))
    ListRuleSnapshotsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListRuleSnapshotsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListRuleSnapshotsInput.struct_class = Types::ListRuleSnapshotsInput

    ListRuleSnapshotsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListRuleSnapshotsOutput.add_member(:snapshots, Shapes::ShapeRef.new(shape: RuleSummaryList, required: true, location_name: "snapshots"))
    ListRuleSnapshotsOutput.struct_class = Types::ListRuleSnapshotsOutput

    ListRulesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListRulesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListRulesInput.add_member(:status, Shapes::ShapeRef.new(shape: EntityStatusFilter, location: "querystring", location_name: "status"))
    ListRulesInput.struct_class = Types::ListRulesInput

    ListRulesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListRulesOutput.add_member(:rules, Shapes::ShapeRef.new(shape: RuleSummaryList, required: true, location_name: "rules"))
    ListRulesOutput.struct_class = Types::ListRulesOutput

    ListScopeSnapshotsInput.add_member(:scope_identifier, Shapes::ShapeRef.new(shape: ScopeIdentifier, required: true, location: "uri", location_name: "scopeIdentifier"))
    ListScopeSnapshotsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListScopeSnapshotsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListScopeSnapshotsInput.struct_class = Types::ListScopeSnapshotsInput

    ListScopeSnapshotsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListScopeSnapshotsOutput.add_member(:snapshots, Shapes::ShapeRef.new(shape: ScopeSummaryList, required: true, location_name: "snapshots"))
    ListScopeSnapshotsOutput.struct_class = Types::ListScopeSnapshotsOutput

    ListScopesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListScopesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListScopesInput.add_member(:status, Shapes::ShapeRef.new(shape: EntityStatusFilter, location: "querystring", location_name: "status"))
    ListScopesInput.struct_class = Types::ListScopesInput

    ListScopesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListScopesOutput.add_member(:scopes, Shapes::ShapeRef.new(shape: ScopeSummaryList, required: true, location_name: "scopes"))
    ListScopesOutput.struct_class = Types::ListScopesOutput

    ListTagsForResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "resourceArn"))
    ListTagsForResourceInput.struct_class = Types::ListTagsForResourceInput

    ListTagsForResourceOutput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    ListTagsForResourceOutput.struct_class = Types::ListTagsForResourceOutput

    ListTemplateSnapshotsInput.add_member(:template_identifier, Shapes::ShapeRef.new(shape: TemplateIdentifier, required: true, location: "uri", location_name: "templateIdentifier"))
    ListTemplateSnapshotsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListTemplateSnapshotsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListTemplateSnapshotsInput.struct_class = Types::ListTemplateSnapshotsInput

    ListTemplateSnapshotsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListTemplateSnapshotsOutput.add_member(:snapshots, Shapes::ShapeRef.new(shape: TemplateSummaryList, required: true, location_name: "snapshots"))
    ListTemplateSnapshotsOutput.struct_class = Types::ListTemplateSnapshotsOutput

    ListTemplatesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListTemplatesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListTemplatesInput.add_member(:status, Shapes::ShapeRef.new(shape: EntityStatusFilter, location: "querystring", location_name: "status"))
    ListTemplatesInput.struct_class = Types::ListTemplatesInput

    ListTemplatesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListTemplatesOutput.add_member(:templates, Shapes::ShapeRef.new(shape: TemplateSummaryList, required: true, location_name: "templates"))
    ListTemplatesOutput.struct_class = Types::ListTemplatesOutput

    NotVisibleMarker.add_member(:reason, Shapes::ShapeRef.new(shape: String, required: true, location_name: "reason"))
    NotVisibleMarker.struct_class = Types::NotVisibleMarker

    OrganizationalUnitIdList.member = Shapes::ShapeRef.new(shape: OrganizationalUnitId)

    OrganizationalUnitList.member = Shapes::ShapeRef.new(shape: OrganizationalUnit)

    OrganizationalUnitReference.add_member(:ou_id, Shapes::ShapeRef.new(shape: OrganizationalUnitId, required: true, location_name: "ouId"))
    OrganizationalUnitReference.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    OrganizationalUnitReference.struct_class = Types::OrganizationalUnitReference

    OrganizationalUnitReferenceList.member = Shapes::ShapeRef.new(shape: OrganizationalUnitReference)

    OutOfSyncReasons.key = Shapes::ShapeRef.new(shape: PolicyFirewallType)
    OutOfSyncReasons.value = Shapes::ShapeRef.new(shape: FirewallSyncReason)

    OutOfSyncReasonsView.add_member(:reasons, Shapes::ShapeRef.new(shape: OutOfSyncReasons, location_name: "reasons"))
    OutOfSyncReasonsView.add_member(:not_visible, Shapes::ShapeRef.new(shape: NotVisibleMarker, location_name: "notVisible"))
    OutOfSyncReasonsView.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    OutOfSyncReasonsView.add_member_subclass(:reasons, Types::OutOfSyncReasonsView::Reasons)
    OutOfSyncReasonsView.add_member_subclass(:not_visible, Types::OutOfSyncReasonsView::NotVisible)
    OutOfSyncReasonsView.add_member_subclass(:unknown, Types::OutOfSyncReasonsView::Unknown)
    OutOfSyncReasonsView.struct_class = Types::OutOfSyncReasonsView

    PolicyConfiguration.add_member(:remediation_enabled, Shapes::ShapeRef.new(shape: RemediationEnabled, required: true, location_name: "remediationEnabled"))
    PolicyConfiguration.add_member(:resources_clean_up, Shapes::ShapeRef.new(shape: ResourcesCleanUp, required: true, location_name: "resourcesCleanUp"))
    PolicyConfiguration.add_member(:waf_config, Shapes::ShapeRef.new(shape: WafConfig, location_name: "wafConfig"))
    PolicyConfiguration.struct_class = Types::PolicyConfiguration

    PolicyReference.add_member(:policy_identifier, Shapes::ShapeRef.new(shape: PolicyIdentifier, required: true, location_name: "policyIdentifier"))
    PolicyReference.struct_class = Types::PolicyReference

    PolicyReferenceList.member = Shapes::ShapeRef.new(shape: PolicyReference)

    PolicySummary.add_member(:policy_id, Shapes::ShapeRef.new(shape: PolicyId, required: true, location_name: "policyId"))
    PolicySummary.add_member(:policy_arn, Shapes::ShapeRef.new(shape: PolicyArn, required: true, location_name: "policyArn"))
    PolicySummary.add_member(:policy_name, Shapes::ShapeRef.new(shape: PolicyName, location_name: "policyName"))
    PolicySummary.add_member(:status, Shapes::ShapeRef.new(shape: EntityStatus, location_name: "status"))
    PolicySummary.add_member(:version, Shapes::ShapeRef.new(shape: EntityVersion, location_name: "version"))
    PolicySummary.add_member(:has_published_version, Shapes::ShapeRef.new(shape: HasPublishedVersion, location_name: "hasPublishedVersion"))
    PolicySummary.add_member(:firewall_type, Shapes::ShapeRef.new(shape: PolicyFirewallType, location_name: "firewallType"))
    PolicySummary.add_member(:priority, Shapes::ShapeRef.new(shape: Priority, location_name: "priority"))
    PolicySummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, location_name: "updatedAt"))
    PolicySummary.struct_class = Types::PolicySummary

    PolicySummaryList.member = Shapes::ShapeRef.new(shape: PolicySummary)

    PutAdminAccountRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "accountId"))
    PutAdminAccountRequest.add_member(:priority, Shapes::ShapeRef.new(shape: AdminPriority, required: true, location_name: "priority"))
    PutAdminAccountRequest.add_member(:admin_scope, Shapes::ShapeRef.new(shape: AdminScopeInput, location_name: "adminScope"))
    PutAdminAccountRequest.struct_class = Types::PutAdminAccountRequest

    PutAdminAccountResponse.add_member(:admin_account_details, Shapes::ShapeRef.new(shape: AdminAccountDetails, location_name: "adminAccountDetails"))
    PutAdminAccountResponse.struct_class = Types::PutAdminAccountResponse

    RemediationIssueDetails.add_member(:issue_type, Shapes::ShapeRef.new(shape: String, location_name: "issueType"))
    RemediationIssueDetails.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    RemediationIssueDetails.add_member(:corrective_action, Shapes::ShapeRef.new(shape: String, location_name: "correctiveAction"))
    RemediationIssueDetails.struct_class = Types::RemediationIssueDetails

    RemediationIssues.key = Shapes::ShapeRef.new(shape: PolicyFirewallType)
    RemediationIssues.value = Shapes::ShapeRef.new(shape: RemediationIssueDetails)

    RemediationIssuesView.add_member(:issues, Shapes::ShapeRef.new(shape: RemediationIssues, location_name: "issues"))
    RemediationIssuesView.add_member(:not_visible, Shapes::ShapeRef.new(shape: NotVisibleMarker, location_name: "notVisible"))
    RemediationIssuesView.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    RemediationIssuesView.add_member_subclass(:issues, Types::RemediationIssuesView::Issues)
    RemediationIssuesView.add_member_subclass(:not_visible, Types::RemediationIssuesView::NotVisible)
    RemediationIssuesView.add_member_subclass(:unknown, Types::RemediationIssuesView::Unknown)
    RemediationIssuesView.struct_class = Types::RemediationIssuesView

    ResourceArnList.member = Shapes::ShapeRef.new(shape: Arn)

    ResourceAssociation.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "arn"))
    ResourceAssociation.add_member(:resource_type, Shapes::ShapeRef.new(shape: ServiceResourceType, required: true, location_name: "resourceType"))
    ResourceAssociation.struct_class = Types::ResourceAssociation

    ResourceAssociationList.member = Shapes::ShapeRef.new(shape: ResourceAssociation)

    ResourceCriteria.add_member(:tags, Shapes::ShapeRef.new(shape: StringMap, location_name: "tags"))
    ResourceCriteria.add_member(:alb_config, Shapes::ShapeRef.new(shape: AlbConfiguration, location_name: "albConfig"))
    ResourceCriteria.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ResourceCriteria.add_member_subclass(:tags, Types::ResourceCriteria::Tags)
    ResourceCriteria.add_member_subclass(:alb_config, Types::ResourceCriteria::AlbConfig)
    ResourceCriteria.add_member_subclass(:unknown, Types::ResourceCriteria::Unknown)
    ResourceCriteria.struct_class = Types::ResourceCriteria

    ResourceLogicalExpression.add_member(:criteria, Shapes::ShapeRef.new(shape: ResourceCriteria, location_name: "criteria"))
    ResourceLogicalExpression.add_member(:and, Shapes::ShapeRef.new(shape: ResourceLogicalExpressionList, location_name: "and"))
    ResourceLogicalExpression.add_member(:or, Shapes::ShapeRef.new(shape: ResourceLogicalExpressionList, location_name: "or"))
    ResourceLogicalExpression.add_member(:not, Shapes::ShapeRef.new(shape: ResourceLogicalExpression, location_name: "not"))
    ResourceLogicalExpression.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ResourceLogicalExpression.add_member_subclass(:criteria, Types::ResourceLogicalExpression::Criteria)
    ResourceLogicalExpression.add_member_subclass(:and, Types::ResourceLogicalExpression::And)
    ResourceLogicalExpression.add_member_subclass(:or, Types::ResourceLogicalExpression::Or)
    ResourceLogicalExpression.add_member_subclass(:not, Types::ResourceLogicalExpression::Not)
    ResourceLogicalExpression.add_member_subclass(:unknown, Types::ResourceLogicalExpression::Unknown)
    ResourceLogicalExpression.struct_class = Types::ResourceLogicalExpression

    ResourceLogicalExpressionList.member = Shapes::ShapeRef.new(shape: ResourceLogicalExpression)

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ResourceNotFoundException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, location_name: "resourceId"))
    ResourceNotFoundException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, location_name: "resourceType"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ResourceScope.add_member(:include_all, Shapes::ShapeRef.new(shape: Boolean, location_name: "includeAll"))
    ResourceScope.add_member(:include, Shapes::ShapeRef.new(shape: ResourceSet, location_name: "include"))
    ResourceScope.add_member(:exclude, Shapes::ShapeRef.new(shape: ResourceSet, location_name: "exclude"))
    ResourceScope.struct_class = Types::ResourceScope

    ResourceScopeMap.key = Shapes::ShapeRef.new(shape: ScopeResourceType)
    ResourceScopeMap.value = Shapes::ShapeRef.new(shape: ResourceScope)

    ResourceSet.add_member(:explicit_arns, Shapes::ShapeRef.new(shape: ResourceArnList, location_name: "explicitArns"))
    ResourceSet.add_member(:expression, Shapes::ShapeRef.new(shape: ResourceLogicalExpression, location_name: "expression"))
    ResourceSet.struct_class = Types::ResourceSet

    ResourceSynchronizationStatusSummary.add_member(:synchronization_status, Shapes::ShapeRef.new(shape: SynchronizationStatus, required: true, location_name: "synchronizationStatus"))
    ResourceSynchronizationStatusSummary.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "accountId"))
    ResourceSynchronizationStatusSummary.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "resourceArn"))
    ResourceSynchronizationStatusSummary.add_member(:deployment_arn, Shapes::ShapeRef.new(shape: DeploymentArn, location_name: "deploymentArn"))
    ResourceSynchronizationStatusSummary.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "resourceType"))
    ResourceSynchronizationStatusSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "updatedAt"))
    ResourceSynchronizationStatusSummary.add_member(:out_of_sync_reasons, Shapes::ShapeRef.new(shape: OutOfSyncReasonsView, location_name: "outOfSyncReasons"))
    ResourceSynchronizationStatusSummary.add_member(:remediation_issues, Shapes::ShapeRef.new(shape: RemediationIssuesView, location_name: "remediationIssues"))
    ResourceSynchronizationStatusSummary.add_member(:evaluated_at, Shapes::ShapeRef.new(shape: DateTimestamp, location_name: "evaluatedAt"))
    ResourceSynchronizationStatusSummary.struct_class = Types::ResourceSynchronizationStatusSummary

    ResourceSynchronizationStatusSummaryList.member = Shapes::ShapeRef.new(shape: ResourceSynchronizationStatusSummary)

    RuleReference.add_member(:rule_identifier, Shapes::ShapeRef.new(shape: RuleIdentifier, required: true, location_name: "ruleIdentifier"))
    RuleReference.struct_class = Types::RuleReference

    RuleReferenceList.member = Shapes::ShapeRef.new(shape: RuleReference)

    RuleSummary.add_member(:rule_id, Shapes::ShapeRef.new(shape: RuleId, required: true, location_name: "ruleId"))
    RuleSummary.add_member(:rule_arn, Shapes::ShapeRef.new(shape: RuleArn, required: true, location_name: "ruleArn"))
    RuleSummary.add_member(:rule_name, Shapes::ShapeRef.new(shape: RuleName, required: true, location_name: "ruleName"))
    RuleSummary.add_member(:firewall_type, Shapes::ShapeRef.new(shape: RuleFirewallType, location_name: "firewallType"))
    RuleSummary.add_member(:rule_type, Shapes::ShapeRef.new(shape: RuleType, location_name: "ruleType"))
    RuleSummary.add_member(:status, Shapes::ShapeRef.new(shape: EntityStatus, location_name: "status"))
    RuleSummary.add_member(:version, Shapes::ShapeRef.new(shape: EntityVersion, location_name: "version"))
    RuleSummary.add_member(:has_published_version, Shapes::ShapeRef.new(shape: HasPublishedVersion, location_name: "hasPublishedVersion"))
    RuleSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, location_name: "updatedAt"))
    RuleSummary.struct_class = Types::RuleSummary

    RuleSummaryList.member = Shapes::ShapeRef.new(shape: RuleSummary)

    ScopeConfiguration.add_member(:account_filter, Shapes::ShapeRef.new(shape: AccountFilter, location_name: "accountFilter"))
    ScopeConfiguration.add_member(:resource_scopes, Shapes::ShapeRef.new(shape: ResourceScopeMap, required: true, location_name: "resourceScopes"))
    ScopeConfiguration.struct_class = Types::ScopeConfiguration

    ScopeReference.add_member(:scope_identifier, Shapes::ShapeRef.new(shape: ScopeIdentifier, required: true, location_name: "scopeIdentifier"))
    ScopeReference.struct_class = Types::ScopeReference

    ScopeReferenceList.member = Shapes::ShapeRef.new(shape: ScopeReference)

    ScopeSummary.add_member(:scope_id, Shapes::ShapeRef.new(shape: ScopeId, required: true, location_name: "scopeId"))
    ScopeSummary.add_member(:scope_arn, Shapes::ShapeRef.new(shape: ScopeArn, required: true, location_name: "scopeArn"))
    ScopeSummary.add_member(:scope_name, Shapes::ShapeRef.new(shape: ScopeName, location_name: "scopeName"))
    ScopeSummary.add_member(:status, Shapes::ShapeRef.new(shape: EntityStatus, location_name: "status"))
    ScopeSummary.add_member(:version, Shapes::ShapeRef.new(shape: EntityVersion, location_name: "version"))
    ScopeSummary.add_member(:has_published_version, Shapes::ShapeRef.new(shape: HasPublishedVersion, location_name: "hasPublishedVersion"))
    ScopeSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, location_name: "updatedAt"))
    ScopeSummary.struct_class = Types::ScopeSummary

    ScopeSummaryList.member = Shapes::ShapeRef.new(shape: ScopeSummary)

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ServiceQuotaExceededException.add_member(:quota_code, Shapes::ShapeRef.new(shape: String, location_name: "quotaCode"))
    ServiceQuotaExceededException.add_member(:service_code, Shapes::ShapeRef.new(shape: String, location_name: "serviceCode"))
    ServiceQuotaExceededException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, location_name: "resourceId"))
    ServiceQuotaExceededException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, location_name: "resourceType"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    ServiceUnavailableException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ServiceUnavailableException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: Integer, location_name: "retryAfterSeconds"))
    ServiceUnavailableException.struct_class = Types::ServiceUnavailableException

    StringMap.key = Shapes::ShapeRef.new(shape: String)
    StringMap.value = Shapes::ShapeRef.new(shape: String)

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagMap.key = Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Shapes::ShapeRef.new(shape: TagValue)

    TagPolicyViolationException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    TagPolicyViolationException.struct_class = Types::TagPolicyViolationException

    TagResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "resourceArn"))
    TagResourceInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, required: true, location_name: "tags"))
    TagResourceInput.struct_class = Types::TagResourceInput

    TagResourceOutput.struct_class = Types::TagResourceOutput

    TemplateAndRuleReferenceList.member = Shapes::ShapeRef.new(shape: TemplateOrRuleReference)

    TemplateOrRuleReference.add_member(:template_identifier, Shapes::ShapeRef.new(shape: TemplateIdentifier, location_name: "templateIdentifier"))
    TemplateOrRuleReference.add_member(:rule_identifier, Shapes::ShapeRef.new(shape: RuleIdentifier, location_name: "ruleIdentifier"))
    TemplateOrRuleReference.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    TemplateOrRuleReference.add_member_subclass(:template_identifier, Types::TemplateOrRuleReference::TemplateIdentifier)
    TemplateOrRuleReference.add_member_subclass(:rule_identifier, Types::TemplateOrRuleReference::RuleIdentifier)
    TemplateOrRuleReference.add_member_subclass(:unknown, Types::TemplateOrRuleReference::Unknown)
    TemplateOrRuleReference.struct_class = Types::TemplateOrRuleReference

    TemplateSummary.add_member(:template_id, Shapes::ShapeRef.new(shape: TemplateId, required: true, location_name: "templateId"))
    TemplateSummary.add_member(:template_arn, Shapes::ShapeRef.new(shape: TemplateArn, required: true, location_name: "templateArn"))
    TemplateSummary.add_member(:template_name, Shapes::ShapeRef.new(shape: TemplateName, required: true, location_name: "templateName"))
    TemplateSummary.add_member(:status, Shapes::ShapeRef.new(shape: EntityStatus, location_name: "status"))
    TemplateSummary.add_member(:version, Shapes::ShapeRef.new(shape: EntityVersion, location_name: "version"))
    TemplateSummary.add_member(:has_published_version, Shapes::ShapeRef.new(shape: HasPublishedVersion, location_name: "hasPublishedVersion"))
    TemplateSummary.add_member(:firewall_type, Shapes::ShapeRef.new(shape: TemplateFirewallType, location_name: "firewallType"))
    TemplateSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, location_name: "updatedAt"))
    TemplateSummary.struct_class = Types::TemplateSummary

    TemplateSummaryList.member = Shapes::ShapeRef.new(shape: TemplateSummary)

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ThrottlingException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: Integer, location_name: "retryAfterSeconds"))
    ThrottlingException.struct_class = Types::ThrottlingException

    Unit.struct_class = Types::Unit

    UntagResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "resourceArn"))
    UntagResourceInput.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceInput.struct_class = Types::UntagResourceInput

    UntagResourceOutput.struct_class = Types::UntagResourceOutput

    UpdateDeploymentInput.add_member(:deployment_identifier, Shapes::ShapeRef.new(shape: DeploymentIdentifier, required: true, location: "uri", location_name: "deploymentIdentifier"))
    UpdateDeploymentInput.add_member(:update_token, Shapes::ShapeRef.new(shape: UpdateToken, required: true, location_name: "updateToken"))
    UpdateDeploymentInput.add_member(:deployment_description, Shapes::ShapeRef.new(shape: Description, location_name: "deploymentDescription"))
    UpdateDeploymentInput.add_member(:deployment_configuration, Shapes::ShapeRef.new(shape: DeploymentConfiguration, location_name: "deploymentConfiguration"))
    UpdateDeploymentInput.add_member(:associated_policy_list, Shapes::ShapeRef.new(shape: PolicyReferenceList, location_name: "associatedPolicyList"))
    UpdateDeploymentInput.add_member(:associated_scope_list, Shapes::ShapeRef.new(shape: ScopeReferenceList, location_name: "associatedScopeList"))
    UpdateDeploymentInput.add_member(:is_published, Shapes::ShapeRef.new(shape: IsPublished, required: true, location_name: "isPublished"))
    UpdateDeploymentInput.add_member(:client_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    UpdateDeploymentInput.struct_class = Types::UpdateDeploymentInput

    UpdateDeploymentOutput.add_member(:deployment_id, Shapes::ShapeRef.new(shape: DeploymentId, required: true, location_name: "deploymentId"))
    UpdateDeploymentOutput.add_member(:deployment_arn, Shapes::ShapeRef.new(shape: DeploymentArn, required: true, location_name: "deploymentArn"))
    UpdateDeploymentOutput.add_member(:deployment_name, Shapes::ShapeRef.new(shape: DeploymentName, required: true, location_name: "deploymentName"))
    UpdateDeploymentOutput.add_member(:deployment_description, Shapes::ShapeRef.new(shape: Description, location_name: "deploymentDescription"))
    UpdateDeploymentOutput.add_member(:status, Shapes::ShapeRef.new(shape: EntityStatus, required: true, location_name: "status"))
    UpdateDeploymentOutput.add_member(:deployment_configuration, Shapes::ShapeRef.new(shape: DeploymentConfiguration, location_name: "deploymentConfiguration"))
    UpdateDeploymentOutput.add_member(:associated_policy_list, Shapes::ShapeRef.new(shape: AssociatedPolicyList, required: true, location_name: "associatedPolicyList"))
    UpdateDeploymentOutput.add_member(:associated_scope_list, Shapes::ShapeRef.new(shape: AssociatedScopeList, required: true, location_name: "associatedScopeList"))
    UpdateDeploymentOutput.add_member(:version, Shapes::ShapeRef.new(shape: EntityVersion, required: true, location_name: "version"))
    UpdateDeploymentOutput.add_member(:update_token, Shapes::ShapeRef.new(shape: UpdateToken, location_name: "updateToken"))
    UpdateDeploymentOutput.add_member(:is_snapshot, Shapes::ShapeRef.new(shape: IsSnapshot, location_name: "isSnapshot"))
    UpdateDeploymentOutput.add_member(:has_published_version, Shapes::ShapeRef.new(shape: HasPublishedVersion, location_name: "hasPublishedVersion"))
    UpdateDeploymentOutput.add_member(:deployment_coverage, Shapes::ShapeRef.new(shape: DeploymentCoverageList, location_name: "deploymentCoverage"))
    UpdateDeploymentOutput.add_member(:warnings, Shapes::ShapeRef.new(shape: DeploymentWarningList, location_name: "warnings"))
    UpdateDeploymentOutput.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, location_name: "updatedAt"))
    UpdateDeploymentOutput.struct_class = Types::UpdateDeploymentOutput

    UpdatePolicyInput.add_member(:policy_identifier, Shapes::ShapeRef.new(shape: PolicyIdentifier, required: true, location: "uri", location_name: "policyIdentifier"))
    UpdatePolicyInput.add_member(:update_token, Shapes::ShapeRef.new(shape: UpdateToken, required: true, location_name: "updateToken"))
    UpdatePolicyInput.add_member(:policy_description, Shapes::ShapeRef.new(shape: Description, location_name: "policyDescription"))
    UpdatePolicyInput.add_member(:priority, Shapes::ShapeRef.new(shape: Priority, location_name: "priority"))
    UpdatePolicyInput.add_member(:associated_template_and_rule_list, Shapes::ShapeRef.new(shape: TemplateAndRuleReferenceList, location_name: "associatedTemplateAndRuleList"))
    UpdatePolicyInput.add_member(:policy_configuration, Shapes::ShapeRef.new(shape: PolicyConfiguration, location_name: "policyConfiguration"))
    UpdatePolicyInput.add_member(:is_published, Shapes::ShapeRef.new(shape: IsPublished, required: true, location_name: "isPublished"))
    UpdatePolicyInput.add_member(:client_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    UpdatePolicyInput.struct_class = Types::UpdatePolicyInput

    UpdatePolicyOutput.add_member(:policy_id, Shapes::ShapeRef.new(shape: PolicyId, required: true, location_name: "policyId"))
    UpdatePolicyOutput.add_member(:policy_arn, Shapes::ShapeRef.new(shape: PolicyArn, required: true, location_name: "policyArn"))
    UpdatePolicyOutput.add_member(:policy_name, Shapes::ShapeRef.new(shape: PolicyName, required: true, location_name: "policyName"))
    UpdatePolicyOutput.add_member(:policy_description, Shapes::ShapeRef.new(shape: Description, location_name: "policyDescription"))
    UpdatePolicyOutput.add_member(:status, Shapes::ShapeRef.new(shape: EntityStatus, required: true, location_name: "status"))
    UpdatePolicyOutput.add_member(:priority, Shapes::ShapeRef.new(shape: Priority, required: true, location_name: "priority"))
    UpdatePolicyOutput.add_member(:associated_template_and_rule_list, Shapes::ShapeRef.new(shape: AssociatedTemplateAndRuleList, required: true, location_name: "associatedTemplateAndRuleList"))
    UpdatePolicyOutput.add_member(:version, Shapes::ShapeRef.new(shape: EntityVersion, required: true, location_name: "version"))
    UpdatePolicyOutput.add_member(:update_token, Shapes::ShapeRef.new(shape: UpdateToken, location_name: "updateToken"))
    UpdatePolicyOutput.add_member(:is_snapshot, Shapes::ShapeRef.new(shape: IsSnapshot, location_name: "isSnapshot"))
    UpdatePolicyOutput.add_member(:has_published_version, Shapes::ShapeRef.new(shape: HasPublishedVersion, location_name: "hasPublishedVersion"))
    UpdatePolicyOutput.add_member(:firewall_type, Shapes::ShapeRef.new(shape: PolicyFirewallType, required: true, location_name: "firewallType"))
    UpdatePolicyOutput.add_member(:policy_configuration, Shapes::ShapeRef.new(shape: PolicyConfiguration, location_name: "policyConfiguration"))
    UpdatePolicyOutput.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, location_name: "updatedAt"))
    UpdatePolicyOutput.struct_class = Types::UpdatePolicyOutput

    UpdateRuleInput.add_member(:rule_identifier, Shapes::ShapeRef.new(shape: RuleIdentifier, required: true, location: "uri", location_name: "ruleIdentifier"))
    UpdateRuleInput.add_member(:update_token, Shapes::ShapeRef.new(shape: UpdateToken, required: true, location_name: "updateToken"))
    UpdateRuleInput.add_member(:rule_type, Shapes::ShapeRef.new(shape: RuleType, location_name: "ruleType"))
    UpdateRuleInput.add_member(:rule_description, Shapes::ShapeRef.new(shape: Description, location_name: "ruleDescription"))
    UpdateRuleInput.add_member(:configuration, Shapes::ShapeRef.new(shape: JsonDocument, location_name: "configuration"))
    UpdateRuleInput.add_member(:is_published, Shapes::ShapeRef.new(shape: IsPublished, required: true, location_name: "isPublished"))
    UpdateRuleInput.add_member(:client_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    UpdateRuleInput.struct_class = Types::UpdateRuleInput

    UpdateRuleOutput.add_member(:rule_id, Shapes::ShapeRef.new(shape: RuleId, required: true, location_name: "ruleId"))
    UpdateRuleOutput.add_member(:rule_arn, Shapes::ShapeRef.new(shape: RuleArn, required: true, location_name: "ruleArn"))
    UpdateRuleOutput.add_member(:rule_name, Shapes::ShapeRef.new(shape: RuleName, required: true, location_name: "ruleName"))
    UpdateRuleOutput.add_member(:firewall_type, Shapes::ShapeRef.new(shape: RuleFirewallType, required: true, location_name: "firewallType"))
    UpdateRuleOutput.add_member(:rule_type, Shapes::ShapeRef.new(shape: RuleType, location_name: "ruleType"))
    UpdateRuleOutput.add_member(:rule_description, Shapes::ShapeRef.new(shape: Description, location_name: "ruleDescription"))
    UpdateRuleOutput.add_member(:configuration, Shapes::ShapeRef.new(shape: JsonDocument, required: true, location_name: "configuration"))
    UpdateRuleOutput.add_member(:status, Shapes::ShapeRef.new(shape: EntityStatus, required: true, location_name: "status"))
    UpdateRuleOutput.add_member(:version, Shapes::ShapeRef.new(shape: EntityVersion, required: true, location_name: "version"))
    UpdateRuleOutput.add_member(:update_token, Shapes::ShapeRef.new(shape: UpdateToken, location_name: "updateToken"))
    UpdateRuleOutput.add_member(:is_snapshot, Shapes::ShapeRef.new(shape: IsSnapshot, location_name: "isSnapshot"))
    UpdateRuleOutput.add_member(:has_published_version, Shapes::ShapeRef.new(shape: HasPublishedVersion, location_name: "hasPublishedVersion"))
    UpdateRuleOutput.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, location_name: "updatedAt"))
    UpdateRuleOutput.struct_class = Types::UpdateRuleOutput

    UpdateScopeInput.add_member(:scope_identifier, Shapes::ShapeRef.new(shape: ScopeIdentifier, required: true, location: "uri", location_name: "scopeIdentifier"))
    UpdateScopeInput.add_member(:update_token, Shapes::ShapeRef.new(shape: UpdateToken, required: true, location_name: "updateToken"))
    UpdateScopeInput.add_member(:scope_description, Shapes::ShapeRef.new(shape: Description, location_name: "scopeDescription"))
    UpdateScopeInput.add_member(:scope_configuration, Shapes::ShapeRef.new(shape: ScopeConfiguration, location_name: "scopeConfiguration"))
    UpdateScopeInput.add_member(:is_published, Shapes::ShapeRef.new(shape: IsPublished, required: true, location_name: "isPublished"))
    UpdateScopeInput.add_member(:client_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    UpdateScopeInput.struct_class = Types::UpdateScopeInput

    UpdateScopeOutput.add_member(:scope_id, Shapes::ShapeRef.new(shape: ScopeId, required: true, location_name: "scopeId"))
    UpdateScopeOutput.add_member(:scope_arn, Shapes::ShapeRef.new(shape: ScopeArn, required: true, location_name: "scopeArn"))
    UpdateScopeOutput.add_member(:scope_name, Shapes::ShapeRef.new(shape: ScopeName, required: true, location_name: "scopeName"))
    UpdateScopeOutput.add_member(:scope_description, Shapes::ShapeRef.new(shape: Description, location_name: "scopeDescription"))
    UpdateScopeOutput.add_member(:scope_configuration, Shapes::ShapeRef.new(shape: ScopeConfiguration, location_name: "scopeConfiguration"))
    UpdateScopeOutput.add_member(:status, Shapes::ShapeRef.new(shape: EntityStatus, required: true, location_name: "status"))
    UpdateScopeOutput.add_member(:version, Shapes::ShapeRef.new(shape: EntityVersion, required: true, location_name: "version"))
    UpdateScopeOutput.add_member(:update_token, Shapes::ShapeRef.new(shape: UpdateToken, location_name: "updateToken"))
    UpdateScopeOutput.add_member(:is_snapshot, Shapes::ShapeRef.new(shape: IsSnapshot, location_name: "isSnapshot"))
    UpdateScopeOutput.add_member(:has_published_version, Shapes::ShapeRef.new(shape: HasPublishedVersion, location_name: "hasPublishedVersion"))
    UpdateScopeOutput.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, location_name: "updatedAt"))
    UpdateScopeOutput.struct_class = Types::UpdateScopeOutput

    UpdateTemplateInput.add_member(:template_identifier, Shapes::ShapeRef.new(shape: TemplateIdentifier, required: true, location: "uri", location_name: "templateIdentifier"))
    UpdateTemplateInput.add_member(:update_token, Shapes::ShapeRef.new(shape: UpdateToken, required: true, location_name: "updateToken"))
    UpdateTemplateInput.add_member(:template_description, Shapes::ShapeRef.new(shape: Description, location_name: "templateDescription"))
    UpdateTemplateInput.add_member(:associated_rule_list, Shapes::ShapeRef.new(shape: RuleReferenceList, location_name: "associatedRuleList"))
    UpdateTemplateInput.add_member(:is_published, Shapes::ShapeRef.new(shape: IsPublished, required: true, location_name: "isPublished"))
    UpdateTemplateInput.add_member(:client_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    UpdateTemplateInput.struct_class = Types::UpdateTemplateInput

    UpdateTemplateOutput.add_member(:template_id, Shapes::ShapeRef.new(shape: TemplateId, required: true, location_name: "templateId"))
    UpdateTemplateOutput.add_member(:template_arn, Shapes::ShapeRef.new(shape: TemplateArn, required: true, location_name: "templateArn"))
    UpdateTemplateOutput.add_member(:template_name, Shapes::ShapeRef.new(shape: TemplateName, required: true, location_name: "templateName"))
    UpdateTemplateOutput.add_member(:template_description, Shapes::ShapeRef.new(shape: Description, location_name: "templateDescription"))
    UpdateTemplateOutput.add_member(:status, Shapes::ShapeRef.new(shape: EntityStatus, required: true, location_name: "status"))
    UpdateTemplateOutput.add_member(:version, Shapes::ShapeRef.new(shape: EntityVersion, required: true, location_name: "version"))
    UpdateTemplateOutput.add_member(:associated_rule_list, Shapes::ShapeRef.new(shape: AssociatedRuleList, required: true, location_name: "associatedRuleList"))
    UpdateTemplateOutput.add_member(:update_token, Shapes::ShapeRef.new(shape: UpdateToken, location_name: "updateToken"))
    UpdateTemplateOutput.add_member(:is_snapshot, Shapes::ShapeRef.new(shape: IsSnapshot, location_name: "isSnapshot"))
    UpdateTemplateOutput.add_member(:has_published_version, Shapes::ShapeRef.new(shape: HasPublishedVersion, location_name: "hasPublishedVersion"))
    UpdateTemplateOutput.add_member(:firewall_type, Shapes::ShapeRef.new(shape: TemplateFirewallType, required: true, location_name: "firewallType"))
    UpdateTemplateOutput.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, location_name: "updatedAt"))
    UpdateTemplateOutput.struct_class = Types::UpdateTemplateOutput

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationException.add_member(:reason, Shapes::ShapeRef.new(shape: ValidationExceptionReason, location_name: "reason"))
    ValidationException.add_member(:field_list, Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: "fieldList"))
    ValidationException.struct_class = Types::ValidationException

    ValidationExceptionField.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    ValidationExceptionField.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationExceptionField.struct_class = Types::ValidationExceptionField

    ValidationExceptionFieldList.member = Shapes::ShapeRef.new(shape: ValidationExceptionField)

    WafConfig.add_member(:existing_customer_web_acl_resolution, Shapes::ShapeRef.new(shape: ExistingCustomerWebACLResolution, required: true, location_name: "existingCustomerWebACLResolution"))
    WafConfig.add_member(:conflict_resolution, Shapes::ShapeRef.new(shape: WAFConflictResolutionOptions, required: true, location_name: "conflictResolution"))
    WafConfig.struct_class = Types::WafConfig


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2025-10-30"

      api.metadata = {
        "apiVersion" => "2025-10-30",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "network-security-manager",
        "protocol" => "rest-json",
        "protocols" => ["rest-json"],
        "serviceFullName" => "AWS Network Security Manager Customer API",
        "serviceId" => "Network Security Manager",
        "signatureVersion" => "v4",
        "signingName" => "network-security-manager",
        "uid" => "network-security-manager-2025-10-30",
      }

      api.add_operation(:create_deployment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDeployment"
        o.http_method = "POST"
        o.http_request_uri = "/deployments"
        o.input = Shapes::ShapeRef.new(shape: CreateDeploymentInput)
        o.output = Shapes::ShapeRef.new(shape: CreateDeploymentOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TagPolicyViolationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:create_deployment_snapshot, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDeploymentSnapshot"
        o.http_method = "POST"
        o.http_request_uri = "/deployments/{deploymentIdentifier}/snapshots"
        o.input = Shapes::ShapeRef.new(shape: CreateDeploymentSnapshotInput)
        o.output = Shapes::ShapeRef.new(shape: CreateDeploymentSnapshotOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:create_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreatePolicy"
        o.http_method = "POST"
        o.http_request_uri = "/policies"
        o.input = Shapes::ShapeRef.new(shape: CreatePolicyInput)
        o.output = Shapes::ShapeRef.new(shape: CreatePolicyOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TagPolicyViolationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:create_policy_snapshot, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreatePolicySnapshot"
        o.http_method = "POST"
        o.http_request_uri = "/policies/{policyIdentifier}/snapshots"
        o.input = Shapes::ShapeRef.new(shape: CreatePolicySnapshotInput)
        o.output = Shapes::ShapeRef.new(shape: CreatePolicySnapshotOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:create_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateRule"
        o.http_method = "POST"
        o.http_request_uri = "/rules"
        o.input = Shapes::ShapeRef.new(shape: CreateRuleInput)
        o.output = Shapes::ShapeRef.new(shape: CreateRuleOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TagPolicyViolationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:create_rule_snapshot, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateRuleSnapshot"
        o.http_method = "POST"
        o.http_request_uri = "/rules/{ruleIdentifier}/snapshots"
        o.input = Shapes::ShapeRef.new(shape: CreateRuleSnapshotInput)
        o.output = Shapes::ShapeRef.new(shape: CreateRuleSnapshotOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:create_scope, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateScope"
        o.http_method = "POST"
        o.http_request_uri = "/scopes"
        o.input = Shapes::ShapeRef.new(shape: CreateScopeInput)
        o.output = Shapes::ShapeRef.new(shape: CreateScopeOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TagPolicyViolationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:create_scope_snapshot, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateScopeSnapshot"
        o.http_method = "POST"
        o.http_request_uri = "/scopes/{scopeIdentifier}/snapshots"
        o.input = Shapes::ShapeRef.new(shape: CreateScopeSnapshotInput)
        o.output = Shapes::ShapeRef.new(shape: CreateScopeSnapshotOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:create_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateTemplate"
        o.http_method = "POST"
        o.http_request_uri = "/templates"
        o.input = Shapes::ShapeRef.new(shape: CreateTemplateInput)
        o.output = Shapes::ShapeRef.new(shape: CreateTemplateOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TagPolicyViolationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:create_template_snapshot, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateTemplateSnapshot"
        o.http_method = "POST"
        o.http_request_uri = "/templates/{templateIdentifier}/snapshots"
        o.input = Shapes::ShapeRef.new(shape: CreateTemplateSnapshotInput)
        o.output = Shapes::ShapeRef.new(shape: CreateTemplateSnapshotOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_admin_account, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAdminAccount"
        o.http_method = "DELETE"
        o.http_request_uri = "/admin-account/{accountId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteAdminAccountRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_deployment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDeployment"
        o.http_method = "DELETE"
        o.http_request_uri = "/deployments/{deploymentIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: DeleteDeploymentInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeletePolicy"
        o.http_method = "DELETE"
        o.http_request_uri = "/policies/{policyIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: DeletePolicyInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteRule"
        o.http_method = "DELETE"
        o.http_request_uri = "/rules/{ruleIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: DeleteRuleInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_scope, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteScope"
        o.http_method = "DELETE"
        o.http_request_uri = "/scopes/{scopeIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: DeleteScopeInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteTemplate"
        o.http_method = "DELETE"
        o.http_request_uri = "/templates/{templateIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: DeleteTemplateInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:generate_rule_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GenerateRuleConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/GenerateRuleConfiguration"
        o.input = Shapes::ShapeRef.new(shape: GenerateRuleConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: GenerateRuleConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_admin_account, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAdminAccount"
        o.http_method = "GET"
        o.http_request_uri = "/admin-account/{accountId}"
        o.input = Shapes::ShapeRef.new(shape: GetAdminAccountRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAdminAccountResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_deployment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDeployment"
        o.http_method = "GET"
        o.http_request_uri = "/deployments/{deploymentIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: GetDeploymentInput)
        o.output = Shapes::ShapeRef.new(shape: GetDeploymentOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetPolicy"
        o.http_method = "GET"
        o.http_request_uri = "/policies/{policyIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: GetPolicyInput)
        o.output = Shapes::ShapeRef.new(shape: GetPolicyOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetRule"
        o.http_method = "GET"
        o.http_request_uri = "/rules/{ruleIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: GetRuleInput)
        o.output = Shapes::ShapeRef.new(shape: GetRuleOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_scope, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetScope"
        o.http_method = "GET"
        o.http_request_uri = "/scopes/{scopeIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: GetScopeInput)
        o.output = Shapes::ShapeRef.new(shape: GetScopeOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTemplate"
        o.http_method = "GET"
        o.http_request_uri = "/templates/{templateIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: GetTemplateInput)
        o.output = Shapes::ShapeRef.new(shape: GetTemplateOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:list_admin_accounts, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAdminAccounts"
        o.http_method = "GET"
        o.http_request_uri = "/admin-accounts"
        o.input = Shapes::ShapeRef.new(shape: ListAdminAccountsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAdminAccountsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_aggregate_resource_synchronization_statuses, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAggregateResourceSynchronizationStatuses"
        o.http_method = "GET"
        o.http_request_uri = "/aggregate-sync-statuses"
        o.input = Shapes::ShapeRef.new(shape: ListAggregateResourceSynchronizationStatusesInput)
        o.output = Shapes::ShapeRef.new(shape: ListAggregateResourceSynchronizationStatusesOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_deployment_snapshots, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDeploymentSnapshots"
        o.http_method = "GET"
        o.http_request_uri = "/deployments/{deploymentIdentifier}/snapshots"
        o.input = Shapes::ShapeRef.new(shape: ListDeploymentSnapshotsInput)
        o.output = Shapes::ShapeRef.new(shape: ListDeploymentSnapshotsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_deployments, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDeployments"
        o.http_method = "GET"
        o.http_request_uri = "/deployments"
        o.input = Shapes::ShapeRef.new(shape: ListDeploymentsInput)
        o.output = Shapes::ShapeRef.new(shape: ListDeploymentsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
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
        o.http_request_uri = "/policies"
        o.input = Shapes::ShapeRef.new(shape: ListPoliciesInput)
        o.output = Shapes::ShapeRef.new(shape: ListPoliciesOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_policy_snapshots, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPolicySnapshots"
        o.http_method = "GET"
        o.http_request_uri = "/policies/{policyIdentifier}/snapshots"
        o.input = Shapes::ShapeRef.new(shape: ListPolicySnapshotsInput)
        o.output = Shapes::ShapeRef.new(shape: ListPolicySnapshotsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_resource_associations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListResourceAssociations"
        o.http_method = "GET"
        o.http_request_uri = "/resource-associations"
        o.input = Shapes::ShapeRef.new(shape: ListResourceAssociationsInput)
        o.output = Shapes::ShapeRef.new(shape: ListResourceAssociationsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_resource_synchronization_statuses, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListResourceSynchronizationStatuses"
        o.http_method = "GET"
        o.http_request_uri = "/resource-sync-statuses"
        o.input = Shapes::ShapeRef.new(shape: ListResourceSynchronizationStatusesInput)
        o.output = Shapes::ShapeRef.new(shape: ListResourceSynchronizationStatusesOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_rule_snapshots, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRuleSnapshots"
        o.http_method = "GET"
        o.http_request_uri = "/rules/{ruleIdentifier}/snapshots"
        o.input = Shapes::ShapeRef.new(shape: ListRuleSnapshotsInput)
        o.output = Shapes::ShapeRef.new(shape: ListRuleSnapshotsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_rules, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRules"
        o.http_method = "GET"
        o.http_request_uri = "/rules"
        o.input = Shapes::ShapeRef.new(shape: ListRulesInput)
        o.output = Shapes::ShapeRef.new(shape: ListRulesOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_scope_snapshots, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListScopeSnapshots"
        o.http_method = "GET"
        o.http_request_uri = "/scopes/{scopeIdentifier}/snapshots"
        o.input = Shapes::ShapeRef.new(shape: ListScopeSnapshotsInput)
        o.output = Shapes::ShapeRef.new(shape: ListScopeSnapshotsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_scopes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListScopes"
        o.http_method = "GET"
        o.http_request_uri = "/scopes"
        o.input = Shapes::ShapeRef.new(shape: ListScopesInput)
        o.output = Shapes::ShapeRef.new(shape: ListScopesOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
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
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceInput)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:list_template_snapshots, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTemplateSnapshots"
        o.http_method = "GET"
        o.http_request_uri = "/templates/{templateIdentifier}/snapshots"
        o.input = Shapes::ShapeRef.new(shape: ListTemplateSnapshotsInput)
        o.output = Shapes::ShapeRef.new(shape: ListTemplateSnapshotsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_templates, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTemplates"
        o.http_method = "GET"
        o.http_request_uri = "/templates"
        o.input = Shapes::ShapeRef.new(shape: ListTemplatesInput)
        o.output = Shapes::ShapeRef.new(shape: ListTemplatesOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:put_admin_account, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutAdminAccount"
        o.http_method = "PUT"
        o.http_request_uri = "/admin-account"
        o.input = Shapes::ShapeRef.new(shape: PutAdminAccountRequest)
        o.output = Shapes::ShapeRef.new(shape: PutAdminAccountResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceInput)
        o.output = Shapes::ShapeRef.new(shape: TagResourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: TagPolicyViolationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceInput)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: TagPolicyViolationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:update_deployment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateDeployment"
        o.http_method = "PATCH"
        o.http_request_uri = "/deployments/{deploymentIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: UpdateDeploymentInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateDeploymentOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:update_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdatePolicy"
        o.http_method = "PATCH"
        o.http_request_uri = "/policies/{policyIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: UpdatePolicyInput)
        o.output = Shapes::ShapeRef.new(shape: UpdatePolicyOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:update_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateRule"
        o.http_method = "PATCH"
        o.http_request_uri = "/rules/{ruleIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: UpdateRuleInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateRuleOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:update_scope, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateScope"
        o.http_method = "PATCH"
        o.http_request_uri = "/scopes/{scopeIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: UpdateScopeInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateScopeOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:update_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateTemplate"
        o.http_method = "PATCH"
        o.http_request_uri = "/templates/{templateIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: UpdateTemplateInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateTemplateOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)
    end

  end
end
