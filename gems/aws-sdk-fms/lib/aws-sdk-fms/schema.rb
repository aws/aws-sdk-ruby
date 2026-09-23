# frozen_string_literal: true

# This is generated code!

module Aws::FMS
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AWSAccountId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fms#AWSAccountId", name: "AWSAccountId", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^[0-9]+$"})
    AWSAccountIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.fms#AWSAccountIdList", name: "AWSAccountIdList")
    AWSRegion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fms#AWSRegion", name: "AWSRegion", traits: {"smithy.api#length" => {"min" => 6, "max" => 32}, "smithy.api#pattern" => "^(af|ap|ca|eu|il|me|mx|sa|us|cn|us-gov)-\\w+-\\d+$"})
    AWSRegionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.fms#AWSRegionList", name: "AWSRegionList", traits: {"smithy.api#length" => {"min" => 0, "max" => 64}})
    AccountIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.fms#AccountIdList", name: "AccountIdList")
    AccountRoleStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.fms#AccountRoleStatus", name: "AccountRoleStatus")
    AccountScope = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#AccountScope", name: "AccountScope")
    ActionTarget = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#ActionTarget", name: "ActionTarget")
    AdminAccountSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#AdminAccountSummary", name: "AdminAccountSummary")
    AdminAccountSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.fms#AdminAccountSummaryList", name: "AdminAccountSummaryList")
    AdminScope = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#AdminScope", name: "AdminScope")
    App = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#App", name: "App")
    AppsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.fms#AppsList", name: "AppsList")
    AppsListData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#AppsListData", name: "AppsListData")
    AppsListDataSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#AppsListDataSummary", name: "AppsListDataSummary")
    AppsListsData = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.fms#AppsListsData", name: "AppsListsData")
    AssociateAdminAccountRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#AssociateAdminAccountRequest", name: "AssociateAdminAccountRequest")
    AssociateThirdPartyFirewallRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#AssociateThirdPartyFirewallRequest", name: "AssociateThirdPartyFirewallRequest")
    AssociateThirdPartyFirewallResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#AssociateThirdPartyFirewallResponse", name: "AssociateThirdPartyFirewallResponse")
    AwsEc2InstanceViolation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#AwsEc2InstanceViolation", name: "AwsEc2InstanceViolation")
    AwsEc2NetworkInterfaceViolation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#AwsEc2NetworkInterfaceViolation", name: "AwsEc2NetworkInterfaceViolation")
    AwsEc2NetworkInterfaceViolations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.fms#AwsEc2NetworkInterfaceViolations", name: "AwsEc2NetworkInterfaceViolations")
    AwsVPCSecurityGroupViolation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#AwsVPCSecurityGroupViolation", name: "AwsVPCSecurityGroupViolation")
    Base62Id = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fms#Base62Id", name: "Base62Id", traits: {"smithy.api#length" => {"min" => 22, "max" => 22}, "smithy.api#pattern" => "^[a-z0-9A-Z]{22}$"})
    BasicInteger = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.fms#BasicInteger", name: "BasicInteger", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => -2147483648, "max" => 2147483647}})
    BatchAssociateResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#BatchAssociateResourceRequest", name: "BatchAssociateResourceRequest")
    BatchAssociateResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#BatchAssociateResourceResponse", name: "BatchAssociateResourceResponse")
    BatchDisassociateResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#BatchDisassociateResourceRequest", name: "BatchDisassociateResourceRequest")
    BatchDisassociateResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#BatchDisassociateResourceResponse", name: "BatchDisassociateResourceResponse")
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.fms#Boolean", name: "Boolean", traits: {"smithy.api#default" => false})
    BooleanObject = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.fms#BooleanObject", name: "BooleanObject")
    CIDR = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fms#CIDR", name: "CIDR", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[a-f0-9:./]+$"})
    ComplianceViolator = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#ComplianceViolator", name: "ComplianceViolator")
    ComplianceViolatorMetadata = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.fms#ComplianceViolatorMetadata", name: "ComplianceViolatorMetadata")
    ComplianceViolators = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.fms#ComplianceViolators", name: "ComplianceViolators")
    CreateNetworkAclAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#CreateNetworkAclAction", name: "CreateNetworkAclAction")
    CreateNetworkAclEntriesAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#CreateNetworkAclEntriesAction", name: "CreateNetworkAclEntriesAction")
    CustomerPolicyScopeId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fms#CustomerPolicyScopeId", name: "CustomerPolicyScopeId", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    CustomerPolicyScopeIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.fms#CustomerPolicyScopeIdList", name: "CustomerPolicyScopeIdList")
    CustomerPolicyScopeIdType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.fms#CustomerPolicyScopeIdType", name: "CustomerPolicyScopeIdType")
    CustomerPolicyScopeMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.fms#CustomerPolicyScopeMap", name: "CustomerPolicyScopeMap")
    CustomerPolicyStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.fms#CustomerPolicyStatus", name: "CustomerPolicyStatus")
    DeleteAppsListRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#DeleteAppsListRequest", name: "DeleteAppsListRequest")
    DeleteNetworkAclEntriesAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#DeleteNetworkAclEntriesAction", name: "DeleteNetworkAclEntriesAction")
    DeleteNotificationChannelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#DeleteNotificationChannelRequest", name: "DeleteNotificationChannelRequest")
    DeletePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#DeletePolicyRequest", name: "DeletePolicyRequest")
    DeleteProtocolsListRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#DeleteProtocolsListRequest", name: "DeleteProtocolsListRequest")
    DeleteResourceSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#DeleteResourceSetRequest", name: "DeleteResourceSetRequest")
    DependentServiceName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.fms#DependentServiceName", name: "DependentServiceName")
    Description = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fms#Description", name: "Description", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    DestinationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.fms#DestinationType", name: "DestinationType")
    DetailedInfo = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fms#DetailedInfo", name: "DetailedInfo", traits: {"smithy.api#length" => {"min" => 1, "max" => 4096}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=,+\\-@]*)$"})
    DisassociateAdminAccountRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#DisassociateAdminAccountRequest", name: "DisassociateAdminAccountRequest")
    DisassociateThirdPartyFirewallRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#DisassociateThirdPartyFirewallRequest", name: "DisassociateThirdPartyFirewallRequest")
    DisassociateThirdPartyFirewallResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#DisassociateThirdPartyFirewallResponse", name: "DisassociateThirdPartyFirewallResponse")
    DiscoveredResource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#DiscoveredResource", name: "DiscoveredResource")
    DiscoveredResourceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.fms#DiscoveredResourceList", name: "DiscoveredResourceList")
    DnsDuplicateRuleGroupViolation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#DnsDuplicateRuleGroupViolation", name: "DnsDuplicateRuleGroupViolation")
    DnsRuleGroupLimitExceededViolation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#DnsRuleGroupLimitExceededViolation", name: "DnsRuleGroupLimitExceededViolation")
    DnsRuleGroupPriorities = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.fms#DnsRuleGroupPriorities", name: "DnsRuleGroupPriorities")
    DnsRuleGroupPriority = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.fms#DnsRuleGroupPriority", name: "DnsRuleGroupPriority", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 10000}})
    DnsRuleGroupPriorityConflictViolation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#DnsRuleGroupPriorityConflictViolation", name: "DnsRuleGroupPriorityConflictViolation")
    EC2AssociateRouteTableAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#EC2AssociateRouteTableAction", name: "EC2AssociateRouteTableAction")
    EC2CopyRouteTableAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#EC2CopyRouteTableAction", name: "EC2CopyRouteTableAction")
    EC2CreateRouteAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#EC2CreateRouteAction", name: "EC2CreateRouteAction")
    EC2CreateRouteTableAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#EC2CreateRouteTableAction", name: "EC2CreateRouteTableAction")
    EC2DeleteRouteAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#EC2DeleteRouteAction", name: "EC2DeleteRouteAction")
    EC2ReplaceRouteAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#EC2ReplaceRouteAction", name: "EC2ReplaceRouteAction")
    EC2ReplaceRouteTableAssociationAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#EC2ReplaceRouteTableAssociationAction", name: "EC2ReplaceRouteTableAssociationAction")
    EntriesDescription = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.fms#EntriesDescription", name: "EntriesDescription")
    EntriesWithConflicts = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.fms#EntriesWithConflicts", name: "EntriesWithConflicts")
    EntryDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#EntryDescription", name: "EntryDescription")
    EntryType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.fms#EntryType", name: "EntryType")
    EntryViolation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#EntryViolation", name: "EntryViolation")
    EntryViolationReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.fms#EntryViolationReason", name: "EntryViolationReason")
    EntryViolationReasons = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.fms#EntryViolationReasons", name: "EntryViolationReasons")
    EntryViolations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.fms#EntryViolations", name: "EntryViolations")
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fms#ErrorMessage", name: "ErrorMessage")
    EvaluationResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#EvaluationResult", name: "EvaluationResult")
    EvaluationResults = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.fms#EvaluationResults", name: "EvaluationResults")
    ExpectedRoute = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#ExpectedRoute", name: "ExpectedRoute")
    ExpectedRoutes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.fms#ExpectedRoutes", name: "ExpectedRoutes")
    FMSPolicyUpdateFirewallCreationConfigAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#FMSPolicyUpdateFirewallCreationConfigAction", name: "FMSPolicyUpdateFirewallCreationConfigAction")
    FailedItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#FailedItem", name: "FailedItem")
    FailedItemList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.fms#FailedItemList", name: "FailedItemList")
    FailedItemReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.fms#FailedItemReason", name: "FailedItemReason")
    FirewallDeploymentModel = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.fms#FirewallDeploymentModel", name: "FirewallDeploymentModel")
    FirewallPolicyId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fms#FirewallPolicyId", name: "FirewallPolicyId", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    FirewallPolicyName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fms#FirewallPolicyName", name: "FirewallPolicyName", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    FirewallSubnetIsOutOfScopeViolation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#FirewallSubnetIsOutOfScopeViolation", name: "FirewallSubnetIsOutOfScopeViolation")
    FirewallSubnetMissingVPCEndpointViolation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#FirewallSubnetMissingVPCEndpointViolation", name: "FirewallSubnetMissingVPCEndpointViolation")
    GetAdminAccountRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#GetAdminAccountRequest", name: "GetAdminAccountRequest")
    GetAdminAccountResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#GetAdminAccountResponse", name: "GetAdminAccountResponse")
    GetAdminScopeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#GetAdminScopeRequest", name: "GetAdminScopeRequest")
    GetAdminScopeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#GetAdminScopeResponse", name: "GetAdminScopeResponse")
    GetAppsListRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#GetAppsListRequest", name: "GetAppsListRequest")
    GetAppsListResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#GetAppsListResponse", name: "GetAppsListResponse")
    GetComplianceDetailRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#GetComplianceDetailRequest", name: "GetComplianceDetailRequest")
    GetComplianceDetailResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#GetComplianceDetailResponse", name: "GetComplianceDetailResponse")
    GetNotificationChannelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#GetNotificationChannelRequest", name: "GetNotificationChannelRequest")
    GetNotificationChannelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#GetNotificationChannelResponse", name: "GetNotificationChannelResponse")
    GetPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#GetPolicyRequest", name: "GetPolicyRequest")
    GetPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#GetPolicyResponse", name: "GetPolicyResponse")
    GetProtectionStatusRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#GetProtectionStatusRequest", name: "GetProtectionStatusRequest")
    GetProtectionStatusResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#GetProtectionStatusResponse", name: "GetProtectionStatusResponse")
    GetProtocolsListRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#GetProtocolsListRequest", name: "GetProtocolsListRequest")
    GetProtocolsListResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#GetProtocolsListResponse", name: "GetProtocolsListResponse")
    GetResourceSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#GetResourceSetRequest", name: "GetResourceSetRequest")
    GetResourceSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#GetResourceSetResponse", name: "GetResourceSetResponse")
    GetThirdPartyFirewallAssociationStatusRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#GetThirdPartyFirewallAssociationStatusRequest", name: "GetThirdPartyFirewallAssociationStatusRequest")
    GetThirdPartyFirewallAssociationStatusResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#GetThirdPartyFirewallAssociationStatusResponse", name: "GetThirdPartyFirewallAssociationStatusResponse")
    GetViolationDetailsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#GetViolationDetailsRequest", name: "GetViolationDetailsRequest")
    GetViolationDetailsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#GetViolationDetailsResponse", name: "GetViolationDetailsResponse")
    IPPortNumber = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.fms#IPPortNumber", name: "IPPortNumber", traits: {"smithy.api#range" => {"min" => 0, "max" => 65535}})
    IPPortNumberInteger = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.fms#IPPortNumberInteger", name: "IPPortNumberInteger", traits: {"smithy.api#range" => {"min" => 0, "max" => 65535}})
    Identifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fms#Identifier", name: "Identifier", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    IdentifierList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.fms#IdentifierList", name: "IdentifierList")
    IntegerObject = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.fms#IntegerObject", name: "IntegerObject", traits: {"smithy.api#range" => {"min" => -2147483648, "max" => 2147483647}})
    IntegerObjectMinimum0 = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.fms#IntegerObjectMinimum0", name: "IntegerObjectMinimum0", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 2147483647}})
    InternalErrorException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#InternalErrorException", name: "InternalErrorException", traits: {"smithy.api#error" => "client"})
    InvalidInputException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#InvalidInputException", name: "InvalidInputException", traits: {"smithy.api#error" => "client"})
    InvalidNetworkAclEntriesViolation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#InvalidNetworkAclEntriesViolation", name: "InvalidNetworkAclEntriesViolation")
    InvalidOperationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#InvalidOperationException", name: "InvalidOperationException", traits: {"smithy.api#error" => "client"})
    InvalidTypeException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#InvalidTypeException", name: "InvalidTypeException", traits: {"smithy.api#error" => "client"})
    IssueInfoMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.fms#IssueInfoMap", name: "IssueInfoMap")
    LengthBoundedNonEmptyString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fms#LengthBoundedNonEmptyString", name: "LengthBoundedNonEmptyString", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    LengthBoundedString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fms#LengthBoundedString", name: "LengthBoundedString", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    LengthBoundedStringList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.fms#LengthBoundedStringList", name: "LengthBoundedStringList")
    LimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#LimitExceededException", name: "LimitExceededException", traits: {"smithy.api#error" => "client"})
    ListAdminAccountsForOrganizationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#ListAdminAccountsForOrganizationRequest", name: "ListAdminAccountsForOrganizationRequest")
    ListAdminAccountsForOrganizationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#ListAdminAccountsForOrganizationResponse", name: "ListAdminAccountsForOrganizationResponse")
    ListAdminsManagingAccountRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#ListAdminsManagingAccountRequest", name: "ListAdminsManagingAccountRequest")
    ListAdminsManagingAccountResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#ListAdminsManagingAccountResponse", name: "ListAdminsManagingAccountResponse")
    ListAppsListsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#ListAppsListsRequest", name: "ListAppsListsRequest")
    ListAppsListsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#ListAppsListsResponse", name: "ListAppsListsResponse")
    ListComplianceStatusRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#ListComplianceStatusRequest", name: "ListComplianceStatusRequest")
    ListComplianceStatusResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#ListComplianceStatusResponse", name: "ListComplianceStatusResponse")
    ListDiscoveredResourcesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#ListDiscoveredResourcesRequest", name: "ListDiscoveredResourcesRequest")
    ListDiscoveredResourcesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#ListDiscoveredResourcesResponse", name: "ListDiscoveredResourcesResponse")
    ListId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fms#ListId", name: "ListId", traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[a-z0-9A-Z-]{36}$"})
    ListMemberAccountsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#ListMemberAccountsRequest", name: "ListMemberAccountsRequest")
    ListMemberAccountsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#ListMemberAccountsResponse", name: "ListMemberAccountsResponse")
    ListPoliciesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#ListPoliciesRequest", name: "ListPoliciesRequest")
    ListPoliciesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#ListPoliciesResponse", name: "ListPoliciesResponse")
    ListProtocolsListsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#ListProtocolsListsRequest", name: "ListProtocolsListsRequest")
    ListProtocolsListsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#ListProtocolsListsResponse", name: "ListProtocolsListsResponse")
    ListResourceSetResourcesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#ListResourceSetResourcesRequest", name: "ListResourceSetResourcesRequest")
    ListResourceSetResourcesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#ListResourceSetResourcesResponse", name: "ListResourceSetResourcesResponse")
    ListResourceSetsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#ListResourceSetsRequest", name: "ListResourceSetsRequest")
    ListResourceSetsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#ListResourceSetsResponse", name: "ListResourceSetsResponse")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    ListThirdPartyFirewallFirewallPoliciesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#ListThirdPartyFirewallFirewallPoliciesRequest", name: "ListThirdPartyFirewallFirewallPoliciesRequest")
    ListThirdPartyFirewallFirewallPoliciesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#ListThirdPartyFirewallFirewallPoliciesResponse", name: "ListThirdPartyFirewallFirewallPoliciesResponse")
    ManagedServiceData = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fms#ManagedServiceData", name: "ManagedServiceData", traits: {"smithy.api#length" => {"min" => 1, "max" => 30000}, "smithy.api#pattern" => "^((?!\\\\[nr]).)+$"})
    MarketplaceSubscriptionOnboardingStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.fms#MarketplaceSubscriptionOnboardingStatus", name: "MarketplaceSubscriptionOnboardingStatus")
    MemberAccounts = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.fms#MemberAccounts", name: "MemberAccounts")
    Name = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fms#Name", name: "Name", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    NetworkAclCommonPolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#NetworkAclCommonPolicy", name: "NetworkAclCommonPolicy")
    NetworkAclEntries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.fms#NetworkAclEntries", name: "NetworkAclEntries")
    NetworkAclEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#NetworkAclEntry", name: "NetworkAclEntry")
    NetworkAclEntrySet = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#NetworkAclEntrySet", name: "NetworkAclEntrySet")
    NetworkAclIcmpTypeCode = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#NetworkAclIcmpTypeCode", name: "NetworkAclIcmpTypeCode")
    NetworkAclPortRange = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#NetworkAclPortRange", name: "NetworkAclPortRange")
    NetworkAclRuleAction = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.fms#NetworkAclRuleAction", name: "NetworkAclRuleAction")
    NetworkFirewallAction = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fms#NetworkFirewallAction", name: "NetworkFirewallAction", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9]+$"})
    NetworkFirewallActionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.fms#NetworkFirewallActionList", name: "NetworkFirewallActionList")
    NetworkFirewallBlackHoleRouteDetectedViolation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#NetworkFirewallBlackHoleRouteDetectedViolation", name: "NetworkFirewallBlackHoleRouteDetectedViolation")
    NetworkFirewallInternetTrafficNotInspectedViolation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#NetworkFirewallInternetTrafficNotInspectedViolation", name: "NetworkFirewallInternetTrafficNotInspectedViolation")
    NetworkFirewallInvalidRouteConfigurationViolation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#NetworkFirewallInvalidRouteConfigurationViolation", name: "NetworkFirewallInvalidRouteConfigurationViolation")
    NetworkFirewallMissingExpectedRTViolation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#NetworkFirewallMissingExpectedRTViolation", name: "NetworkFirewallMissingExpectedRTViolation")
    NetworkFirewallMissingExpectedRoutesViolation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#NetworkFirewallMissingExpectedRoutesViolation", name: "NetworkFirewallMissingExpectedRoutesViolation")
    NetworkFirewallMissingFirewallViolation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#NetworkFirewallMissingFirewallViolation", name: "NetworkFirewallMissingFirewallViolation")
    NetworkFirewallMissingSubnetViolation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#NetworkFirewallMissingSubnetViolation", name: "NetworkFirewallMissingSubnetViolation")
    NetworkFirewallOverrideAction = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.fms#NetworkFirewallOverrideAction", name: "NetworkFirewallOverrideAction")
    NetworkFirewallPolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#NetworkFirewallPolicy", name: "NetworkFirewallPolicy")
    NetworkFirewallPolicyDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#NetworkFirewallPolicyDescription", name: "NetworkFirewallPolicyDescription")
    NetworkFirewallPolicyModifiedViolation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#NetworkFirewallPolicyModifiedViolation", name: "NetworkFirewallPolicyModifiedViolation")
    NetworkFirewallResourceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fms#NetworkFirewallResourceName", name: "NetworkFirewallResourceName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9-]+$"})
    NetworkFirewallStatefulRuleGroupOverride = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#NetworkFirewallStatefulRuleGroupOverride", name: "NetworkFirewallStatefulRuleGroupOverride")
    NetworkFirewallUnexpectedFirewallRoutesViolation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#NetworkFirewallUnexpectedFirewallRoutesViolation", name: "NetworkFirewallUnexpectedFirewallRoutesViolation")
    NetworkFirewallUnexpectedGatewayRoutesViolation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#NetworkFirewallUnexpectedGatewayRoutesViolation", name: "NetworkFirewallUnexpectedGatewayRoutesViolation")
    OrderedRemediationActions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.fms#OrderedRemediationActions", name: "OrderedRemediationActions")
    OrganizationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.fms#OrganizationStatus", name: "OrganizationStatus")
    OrganizationalUnitId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fms#OrganizationalUnitId", name: "OrganizationalUnitId", traits: {"smithy.api#length" => {"min" => 16, "max" => 68}, "smithy.api#pattern" => "^ou-[0-9a-z]{4,32}-[a-z0-9]{8,32}$"})
    OrganizationalUnitIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.fms#OrganizationalUnitIdList", name: "OrganizationalUnitIdList")
    OrganizationalUnitScope = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#OrganizationalUnitScope", name: "OrganizationalUnitScope")
    PaginationMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.fms#PaginationMaxResults", name: "PaginationMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    PaginationToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fms#PaginationToken", name: "PaginationToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 4096}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    PartialMatch = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#PartialMatch", name: "PartialMatch")
    PartialMatches = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.fms#PartialMatches", name: "PartialMatches")
    Policy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#Policy", name: "Policy")
    PolicyComplianceDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#PolicyComplianceDetail", name: "PolicyComplianceDetail")
    PolicyComplianceStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#PolicyComplianceStatus", name: "PolicyComplianceStatus")
    PolicyComplianceStatusList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.fms#PolicyComplianceStatusList", name: "PolicyComplianceStatusList")
    PolicyComplianceStatusType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.fms#PolicyComplianceStatusType", name: "PolicyComplianceStatusType")
    PolicyId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fms#PolicyId", name: "PolicyId", traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[a-z0-9A-Z-]{36}$"})
    PolicyOption = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#PolicyOption", name: "PolicyOption")
    PolicySummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#PolicySummary", name: "PolicySummary")
    PolicySummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.fms#PolicySummaryList", name: "PolicySummaryList")
    PolicyTypeScope = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#PolicyTypeScope", name: "PolicyTypeScope")
    PolicyUpdateToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fms#PolicyUpdateToken", name: "PolicyUpdateToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    PossibleRemediationAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#PossibleRemediationAction", name: "PossibleRemediationAction")
    PossibleRemediationActionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.fms#PossibleRemediationActionList", name: "PossibleRemediationActionList")
    PossibleRemediationActions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#PossibleRemediationActions", name: "PossibleRemediationActions")
    PreviousAppsList = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.fms#PreviousAppsList", name: "PreviousAppsList")
    PreviousListVersion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fms#PreviousListVersion", name: "PreviousListVersion", traits: {"smithy.api#length" => {"min" => 1, "max" => 2}, "smithy.api#pattern" => "^\\d{1,2}$"})
    PreviousProtocolsList = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.fms#PreviousProtocolsList", name: "PreviousProtocolsList")
    PriorityNumber = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.fms#PriorityNumber", name: "PriorityNumber")
    ProtectionData = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fms#ProtectionData", name: "ProtectionData")
    Protocol = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fms#Protocol", name: "Protocol", traits: {"smithy.api#length" => {"min" => 1, "max" => 20}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    ProtocolsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.fms#ProtocolsList", name: "ProtocolsList")
    ProtocolsListData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#ProtocolsListData", name: "ProtocolsListData")
    ProtocolsListDataSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#ProtocolsListDataSummary", name: "ProtocolsListDataSummary")
    ProtocolsListsData = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.fms#ProtocolsListsData", name: "ProtocolsListsData")
    PutAdminAccountRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#PutAdminAccountRequest", name: "PutAdminAccountRequest")
    PutAppsListRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#PutAppsListRequest", name: "PutAppsListRequest")
    PutAppsListResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#PutAppsListResponse", name: "PutAppsListResponse")
    PutNotificationChannelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#PutNotificationChannelRequest", name: "PutNotificationChannelRequest")
    PutPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#PutPolicyRequest", name: "PutPolicyRequest")
    PutPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#PutPolicyResponse", name: "PutPolicyResponse")
    PutProtocolsListRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#PutProtocolsListRequest", name: "PutProtocolsListRequest")
    PutProtocolsListResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#PutProtocolsListResponse", name: "PutProtocolsListResponse")
    PutResourceSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#PutResourceSetRequest", name: "PutResourceSetRequest")
    PutResourceSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#PutResourceSetResponse", name: "PutResourceSetResponse")
    ReferenceRule = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fms#ReferenceRule", name: "ReferenceRule")
    RegionScope = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#RegionScope", name: "RegionScope")
    RemediationAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#RemediationAction", name: "RemediationAction")
    RemediationActionDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fms#RemediationActionDescription", name: "RemediationActionDescription", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => ".*"})
    RemediationActionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.fms#RemediationActionType", name: "RemediationActionType")
    RemediationActionWithOrder = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#RemediationActionWithOrder", name: "RemediationActionWithOrder")
    ReplaceNetworkAclAssociationAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#ReplaceNetworkAclAssociationAction", name: "ReplaceNetworkAclAssociationAction")
    Resource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#Resource", name: "Resource")
    ResourceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fms#ResourceArn", name: "ResourceArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    ResourceArnList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.fms#ResourceArnList", name: "ResourceArnList")
    ResourceCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.fms#ResourceCount", name: "ResourceCount", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0}})
    ResourceDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fms#ResourceDescription", name: "ResourceDescription", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    ResourceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fms#ResourceId", name: "ResourceId", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    ResourceIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.fms#ResourceIdList", name: "ResourceIdList")
    ResourceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.fms#ResourceList", name: "ResourceList")
    ResourceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fms#ResourceName", name: "ResourceName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client"})
    ResourceSet = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#ResourceSet", name: "ResourceSet")
    ResourceSetIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.fms#ResourceSetIds", name: "ResourceSetIds")
    ResourceSetStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.fms#ResourceSetStatus", name: "ResourceSetStatus")
    ResourceSetSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#ResourceSetSummary", name: "ResourceSetSummary")
    ResourceSetSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.fms#ResourceSetSummaryList", name: "ResourceSetSummaryList")
    ResourceTag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#ResourceTag", name: "ResourceTag")
    ResourceTagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fms#ResourceTagKey", name: "ResourceTagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:\\/=+\\-@*\\\\]*)$"})
    ResourceTagLogicalOperator = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.fms#ResourceTagLogicalOperator", name: "ResourceTagLogicalOperator")
    ResourceTagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fms#ResourceTagValue", name: "ResourceTagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:\\/=+\\-@*\\\\]*)$"})
    ResourceTags = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.fms#ResourceTags", name: "ResourceTags", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    ResourceType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fms#ResourceType", name: "ResourceType", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    ResourceTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.fms#ResourceTypeList", name: "ResourceTypeList")
    ResourceViolation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#ResourceViolation", name: "ResourceViolation")
    ResourceViolations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.fms#ResourceViolations", name: "ResourceViolations")
    Route = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#Route", name: "Route")
    RouteHasOutOfScopeEndpointViolation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#RouteHasOutOfScopeEndpointViolation", name: "RouteHasOutOfScopeEndpointViolation")
    Routes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.fms#Routes", name: "Routes")
    RuleOrder = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.fms#RuleOrder", name: "RuleOrder")
    SecurityGroupRemediationAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#SecurityGroupRemediationAction", name: "SecurityGroupRemediationAction")
    SecurityGroupRemediationActions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.fms#SecurityGroupRemediationActions", name: "SecurityGroupRemediationActions")
    SecurityGroupRuleDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#SecurityGroupRuleDescription", name: "SecurityGroupRuleDescription")
    SecurityServicePolicyData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#SecurityServicePolicyData", name: "SecurityServicePolicyData")
    SecurityServiceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.fms#SecurityServiceType", name: "SecurityServiceType")
    SecurityServiceTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.fms#SecurityServiceTypeList", name: "SecurityServiceTypeList", traits: {"smithy.api#length" => {"min" => 0, "max" => 32}})
    StatefulEngineOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#StatefulEngineOptions", name: "StatefulEngineOptions")
    StatefulRuleGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#StatefulRuleGroup", name: "StatefulRuleGroup")
    StatefulRuleGroupList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.fms#StatefulRuleGroupList", name: "StatefulRuleGroupList")
    StatelessRuleGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#StatelessRuleGroup", name: "StatelessRuleGroup")
    StatelessRuleGroupList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.fms#StatelessRuleGroupList", name: "StatelessRuleGroupList")
    StatelessRuleGroupPriority = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.fms#StatelessRuleGroupPriority", name: "StatelessRuleGroupPriority", traits: {"smithy.api#range" => {"min" => 1, "max" => 65535}})
    StreamExceptionPolicy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.fms#StreamExceptionPolicy", name: "StreamExceptionPolicy")
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#Tag", name: "Tag")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fms#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.fms#TagKeyList", name: "TagKeyList", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.fms#TagList", name: "TagList", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#TagResourceResponse", name: "TagResourceResponse")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fms#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    TargetType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.fms#TargetType", name: "TargetType")
    TargetViolationReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fms#TargetViolationReason", name: "TargetViolationReason", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^\\w+$"})
    TargetViolationReasons = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.fms#TargetViolationReasons", name: "TargetViolationReasons")
    ThirdPartyFirewall = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.fms#ThirdPartyFirewall", name: "ThirdPartyFirewall")
    ThirdPartyFirewallAssociationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.fms#ThirdPartyFirewallAssociationStatus", name: "ThirdPartyFirewallAssociationStatus")
    ThirdPartyFirewallFirewallPolicies = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.fms#ThirdPartyFirewallFirewallPolicies", name: "ThirdPartyFirewallFirewallPolicies")
    ThirdPartyFirewallFirewallPolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#ThirdPartyFirewallFirewallPolicy", name: "ThirdPartyFirewallFirewallPolicy")
    ThirdPartyFirewallMissingExpectedRouteTableViolation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#ThirdPartyFirewallMissingExpectedRouteTableViolation", name: "ThirdPartyFirewallMissingExpectedRouteTableViolation")
    ThirdPartyFirewallMissingFirewallViolation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#ThirdPartyFirewallMissingFirewallViolation", name: "ThirdPartyFirewallMissingFirewallViolation")
    ThirdPartyFirewallMissingSubnetViolation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#ThirdPartyFirewallMissingSubnetViolation", name: "ThirdPartyFirewallMissingSubnetViolation")
    ThirdPartyFirewallPolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#ThirdPartyFirewallPolicy", name: "ThirdPartyFirewallPolicy")
    TimeStamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.fms#TimeStamp", name: "TimeStamp")
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#UntagResourceRequest", name: "UntagResourceRequest")
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#UntagResourceResponse", name: "UntagResourceResponse")
    UpdateToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fms#UpdateToken", name: "UpdateToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    ViolationDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#ViolationDetail", name: "ViolationDetail")
    ViolationReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.fms#ViolationReason", name: "ViolationReason")
    ViolationTarget = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.fms#ViolationTarget", name: "ViolationTarget", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => ".*"})
    WebACLHasIncompatibleConfigurationViolation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#WebACLHasIncompatibleConfigurationViolation", name: "WebACLHasIncompatibleConfigurationViolation")
    WebACLHasOutOfScopeResourcesViolation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.fms#WebACLHasOutOfScopeResourcesViolation", name: "WebACLHasOutOfScopeResourcesViolation")

    AWSAccountIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AWSAccountId, name: "member"))
    AWSRegionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AWSRegion, name: "member"))
    AccountIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AWSAccountId, name: "member"))
    AccountRoleStatus.add_member(:ready, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Ready", traits: {"smithy.api#enumValue" => "READY"}))
    AccountRoleStatus.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Creating", traits: {"smithy.api#enumValue" => "CREATING"}))
    AccountRoleStatus.add_member(:pending_deletion, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PendingDeletion", traits: {"smithy.api#enumValue" => "PENDING_DELETION"}))
    AccountRoleStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Deleting", traits: {"smithy.api#enumValue" => "DELETING"}))
    AccountRoleStatus.add_member(:deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Deleted", traits: {"smithy.api#enumValue" => "DELETED"}))
    AccountScope.add_member(:accounts, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountIdList, name: "Accounts"))
    AccountScope.add_member(:all_accounts_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "AllAccountsEnabled", traits: {"smithy.api#default" => false}))
    AccountScope.add_member(:exclude_specified_accounts, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "ExcludeSpecifiedAccounts", traits: {"smithy.api#default" => false}))
    AccountScope.type = Types::AccountScope
    ActionTarget.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "ResourceId"))
    ActionTarget.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: LengthBoundedString, name: "Description"))
    ActionTarget.type = Types::ActionTarget
    AdminAccountSummary.add_member(:admin_account, ::Smithy::Schema::Shapes::MemberShape.new(target: AWSAccountId, name: "AdminAccount"))
    AdminAccountSummary.add_member(:default_admin, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "DefaultAdmin", traits: {"smithy.api#default" => false}))
    AdminAccountSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationStatus, name: "Status"))
    AdminAccountSummary.type = Types::AdminAccountSummary
    AdminAccountSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AdminAccountSummary, name: "member"))
    AdminScope.add_member(:account_scope, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountScope, name: "AccountScope"))
    AdminScope.add_member(:organizational_unit_scope, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationalUnitScope, name: "OrganizationalUnitScope"))
    AdminScope.add_member(:region_scope, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionScope, name: "RegionScope"))
    AdminScope.add_member(:policy_type_scope, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyTypeScope, name: "PolicyTypeScope"))
    AdminScope.type = Types::AdminScope
    App.add_member(:app_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "AppName", traits: {"smithy.api#required" => {}}))
    App.add_member(:protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: Protocol, name: "Protocol", traits: {"smithy.api#required" => {}}))
    App.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: IPPortNumber, name: "Port", traits: {"smithy.api#required" => {}}))
    App.type = Types::App
    AppsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: App, name: "member"))
    AppsListData.add_member(:list_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ListId, name: "ListId"))
    AppsListData.add_member(:list_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ListName", traits: {"smithy.api#required" => {}}))
    AppsListData.add_member(:list_update_token, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateToken, name: "ListUpdateToken"))
    AppsListData.add_member(:create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeStamp, name: "CreateTime"))
    AppsListData.add_member(:last_update_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeStamp, name: "LastUpdateTime"))
    AppsListData.add_member(:apps_list, ::Smithy::Schema::Shapes::MemberShape.new(target: AppsList, name: "AppsList", traits: {"smithy.api#required" => {}}))
    AppsListData.add_member(:previous_apps_list, ::Smithy::Schema::Shapes::MemberShape.new(target: PreviousAppsList, name: "PreviousAppsList"))
    AppsListData.type = Types::AppsListData
    AppsListDataSummary.add_member(:list_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ListArn"))
    AppsListDataSummary.add_member(:list_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ListId, name: "ListId"))
    AppsListDataSummary.add_member(:list_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ListName"))
    AppsListDataSummary.add_member(:apps_list, ::Smithy::Schema::Shapes::MemberShape.new(target: AppsList, name: "AppsList"))
    AppsListDataSummary.type = Types::AppsListDataSummary
    AppsListsData.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AppsListDataSummary, name: "member"))
    AssociateAdminAccountRequest.add_member(:admin_account, ::Smithy::Schema::Shapes::MemberShape.new(target: AWSAccountId, name: "AdminAccount", traits: {"smithy.api#required" => {}}))
    AssociateAdminAccountRequest.type = Types::AssociateAdminAccountRequest
    AssociateThirdPartyFirewallRequest.add_member(:third_party_firewall, ::Smithy::Schema::Shapes::MemberShape.new(target: ThirdPartyFirewall, name: "ThirdPartyFirewall", traits: {"smithy.api#required" => {}}))
    AssociateThirdPartyFirewallRequest.type = Types::AssociateThirdPartyFirewallRequest
    AssociateThirdPartyFirewallResponse.add_member(:third_party_firewall_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ThirdPartyFirewallAssociationStatus, name: "ThirdPartyFirewallStatus"))
    AssociateThirdPartyFirewallResponse.type = Types::AssociateThirdPartyFirewallResponse
    AwsEc2InstanceViolation.add_member(:violation_target, ::Smithy::Schema::Shapes::MemberShape.new(target: ViolationTarget, name: "ViolationTarget"))
    AwsEc2InstanceViolation.add_member(:aws_ec2_network_interface_violations, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsEc2NetworkInterfaceViolations, name: "AwsEc2NetworkInterfaceViolations"))
    AwsEc2InstanceViolation.type = Types::AwsEc2InstanceViolation
    AwsEc2NetworkInterfaceViolation.add_member(:violation_target, ::Smithy::Schema::Shapes::MemberShape.new(target: ViolationTarget, name: "ViolationTarget"))
    AwsEc2NetworkInterfaceViolation.add_member(:violating_security_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdList, name: "ViolatingSecurityGroups"))
    AwsEc2NetworkInterfaceViolation.type = Types::AwsEc2NetworkInterfaceViolation
    AwsEc2NetworkInterfaceViolations.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsEc2NetworkInterfaceViolation, name: "member"))
    AwsVPCSecurityGroupViolation.add_member(:violation_target, ::Smithy::Schema::Shapes::MemberShape.new(target: ViolationTarget, name: "ViolationTarget"))
    AwsVPCSecurityGroupViolation.add_member(:violation_target_description, ::Smithy::Schema::Shapes::MemberShape.new(target: LengthBoundedString, name: "ViolationTargetDescription"))
    AwsVPCSecurityGroupViolation.add_member(:partial_matches, ::Smithy::Schema::Shapes::MemberShape.new(target: PartialMatches, name: "PartialMatches"))
    AwsVPCSecurityGroupViolation.add_member(:possible_security_group_remediation_actions, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupRemediationActions, name: "PossibleSecurityGroupRemediationActions"))
    AwsVPCSecurityGroupViolation.type = Types::AwsVPCSecurityGroupViolation
    BatchAssociateResourceRequest.add_member(:resource_set_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: Identifier, name: "ResourceSetIdentifier", traits: {"smithy.api#required" => {}}))
    BatchAssociateResourceRequest.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentifierList, name: "Items", traits: {"smithy.api#required" => {}}))
    BatchAssociateResourceRequest.type = Types::BatchAssociateResourceRequest
    BatchAssociateResourceResponse.add_member(:resource_set_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: Identifier, name: "ResourceSetIdentifier", traits: {"smithy.api#required" => {}}))
    BatchAssociateResourceResponse.add_member(:failed_items, ::Smithy::Schema::Shapes::MemberShape.new(target: FailedItemList, name: "FailedItems", traits: {"smithy.api#required" => {}}))
    BatchAssociateResourceResponse.type = Types::BatchAssociateResourceResponse
    BatchDisassociateResourceRequest.add_member(:resource_set_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: Identifier, name: "ResourceSetIdentifier", traits: {"smithy.api#required" => {}}))
    BatchDisassociateResourceRequest.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentifierList, name: "Items", traits: {"smithy.api#required" => {}}))
    BatchDisassociateResourceRequest.type = Types::BatchDisassociateResourceRequest
    BatchDisassociateResourceResponse.add_member(:resource_set_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: Identifier, name: "ResourceSetIdentifier", traits: {"smithy.api#required" => {}}))
    BatchDisassociateResourceResponse.add_member(:failed_items, ::Smithy::Schema::Shapes::MemberShape.new(target: FailedItemList, name: "FailedItems", traits: {"smithy.api#required" => {}}))
    BatchDisassociateResourceResponse.type = Types::BatchDisassociateResourceResponse
    ComplianceViolator.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "ResourceId"))
    ComplianceViolator.add_member(:violation_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ViolationReason, name: "ViolationReason"))
    ComplianceViolator.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "ResourceType"))
    ComplianceViolator.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: ComplianceViolatorMetadata, name: "Metadata"))
    ComplianceViolator.type = Types::ComplianceViolator
    ComplianceViolatorMetadata.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: LengthBoundedString, name: "key"))
    ComplianceViolatorMetadata.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: LengthBoundedString, name: "value"))
    ComplianceViolators.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ComplianceViolator, name: "member"))
    CreateNetworkAclAction.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: LengthBoundedString, name: "Description"))
    CreateNetworkAclAction.add_member(:vpc, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionTarget, name: "Vpc"))
    CreateNetworkAclAction.add_member(:fms_can_remediate, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "FMSCanRemediate", traits: {"smithy.api#default" => false}))
    CreateNetworkAclAction.type = Types::CreateNetworkAclAction
    CreateNetworkAclEntriesAction.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: LengthBoundedString, name: "Description"))
    CreateNetworkAclEntriesAction.add_member(:network_acl_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionTarget, name: "NetworkAclId"))
    CreateNetworkAclEntriesAction.add_member(:network_acl_entries_to_be_created, ::Smithy::Schema::Shapes::MemberShape.new(target: EntriesDescription, name: "NetworkAclEntriesToBeCreated"))
    CreateNetworkAclEntriesAction.add_member(:fms_can_remediate, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "FMSCanRemediate", traits: {"smithy.api#default" => false}))
    CreateNetworkAclEntriesAction.type = Types::CreateNetworkAclEntriesAction
    CustomerPolicyScopeIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerPolicyScopeId, name: "member"))
    CustomerPolicyScopeIdType.add_member(:account, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACCOUNT", traits: {"smithy.api#enumValue" => "ACCOUNT"}))
    CustomerPolicyScopeIdType.add_member(:org_unit, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ORG_UNIT", traits: {"smithy.api#enumValue" => "ORG_UNIT"}))
    CustomerPolicyScopeMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerPolicyScopeIdType, name: "key"))
    CustomerPolicyScopeMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerPolicyScopeIdList, name: "value"))
    CustomerPolicyStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    CustomerPolicyStatus.add_member(:out_of_admin_scope, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OUT_OF_ADMIN_SCOPE", traits: {"smithy.api#enumValue" => "OUT_OF_ADMIN_SCOPE"}))
    DeleteAppsListRequest.add_member(:list_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ListId, name: "ListId", traits: {"smithy.api#required" => {}}))
    DeleteAppsListRequest.type = Types::DeleteAppsListRequest
    DeleteNetworkAclEntriesAction.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: LengthBoundedString, name: "Description"))
    DeleteNetworkAclEntriesAction.add_member(:network_acl_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionTarget, name: "NetworkAclId"))
    DeleteNetworkAclEntriesAction.add_member(:network_acl_entries_to_be_deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: EntriesDescription, name: "NetworkAclEntriesToBeDeleted"))
    DeleteNetworkAclEntriesAction.add_member(:fms_can_remediate, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "FMSCanRemediate", traits: {"smithy.api#default" => false}))
    DeleteNetworkAclEntriesAction.type = Types::DeleteNetworkAclEntriesAction
    DeleteNotificationChannelRequest.type = Types::DeleteNotificationChannelRequest
    DeletePolicyRequest.add_member(:policy_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyId, name: "PolicyId", traits: {"smithy.api#required" => {}}))
    DeletePolicyRequest.add_member(:delete_all_policy_resources, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "DeleteAllPolicyResources", traits: {"smithy.api#default" => false}))
    DeletePolicyRequest.type = Types::DeletePolicyRequest
    DeleteProtocolsListRequest.add_member(:list_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ListId, name: "ListId", traits: {"smithy.api#required" => {}}))
    DeleteProtocolsListRequest.type = Types::DeleteProtocolsListRequest
    DeleteResourceSetRequest.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: Base62Id, name: "Identifier", traits: {"smithy.api#required" => {}}))
    DeleteResourceSetRequest.type = Types::DeleteResourceSetRequest
    DependentServiceName.add_member(:aws_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWSConfig", traits: {"smithy.api#enumValue" => "AWSCONFIG"}))
    DependentServiceName.add_member(:awswaf, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWSWAF", traits: {"smithy.api#enumValue" => "AWSWAF"}))
    DependentServiceName.add_member(:aws_shield_advanced, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWSShieldAdvanced", traits: {"smithy.api#enumValue" => "AWSSHIELD_ADVANCED"}))
    DependentServiceName.add_member(:aws_virtual_private_cloud, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWSVirtualPrivateCloud", traits: {"smithy.api#enumValue" => "AWSVPC"}))
    DestinationType.add_member(:ipv4, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IPV4", traits: {"smithy.api#enumValue" => "IPV4"}))
    DestinationType.add_member(:ipv6, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IPV6", traits: {"smithy.api#enumValue" => "IPV6"}))
    DestinationType.add_member(:prefix_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PrefixList", traits: {"smithy.api#enumValue" => "PREFIX_LIST"}))
    DisassociateAdminAccountRequest.type = Types::DisassociateAdminAccountRequest
    DisassociateThirdPartyFirewallRequest.add_member(:third_party_firewall, ::Smithy::Schema::Shapes::MemberShape.new(target: ThirdPartyFirewall, name: "ThirdPartyFirewall", traits: {"smithy.api#required" => {}}))
    DisassociateThirdPartyFirewallRequest.type = Types::DisassociateThirdPartyFirewallRequest
    DisassociateThirdPartyFirewallResponse.add_member(:third_party_firewall_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ThirdPartyFirewallAssociationStatus, name: "ThirdPartyFirewallStatus"))
    DisassociateThirdPartyFirewallResponse.type = Types::DisassociateThirdPartyFirewallResponse
    DiscoveredResource.add_member(:uri, ::Smithy::Schema::Shapes::MemberShape.new(target: Identifier, name: "URI"))
    DiscoveredResource.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AWSAccountId, name: "AccountId"))
    DiscoveredResource.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "Type"))
    DiscoveredResource.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "Name"))
    DiscoveredResource.type = Types::DiscoveredResource
    DiscoveredResourceList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DiscoveredResource, name: "member"))
    DnsDuplicateRuleGroupViolation.add_member(:violation_target, ::Smithy::Schema::Shapes::MemberShape.new(target: ViolationTarget, name: "ViolationTarget"))
    DnsDuplicateRuleGroupViolation.add_member(:violation_target_description, ::Smithy::Schema::Shapes::MemberShape.new(target: LengthBoundedString, name: "ViolationTargetDescription"))
    DnsDuplicateRuleGroupViolation.type = Types::DnsDuplicateRuleGroupViolation
    DnsRuleGroupLimitExceededViolation.add_member(:violation_target, ::Smithy::Schema::Shapes::MemberShape.new(target: ViolationTarget, name: "ViolationTarget"))
    DnsRuleGroupLimitExceededViolation.add_member(:violation_target_description, ::Smithy::Schema::Shapes::MemberShape.new(target: LengthBoundedString, name: "ViolationTargetDescription"))
    DnsRuleGroupLimitExceededViolation.add_member(:number_of_rule_groups_already_associated, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicInteger, name: "NumberOfRuleGroupsAlreadyAssociated", traits: {"smithy.api#default" => 0}))
    DnsRuleGroupLimitExceededViolation.type = Types::DnsRuleGroupLimitExceededViolation
    DnsRuleGroupPriorities.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DnsRuleGroupPriority, name: "member"))
    DnsRuleGroupPriorityConflictViolation.add_member(:violation_target, ::Smithy::Schema::Shapes::MemberShape.new(target: ViolationTarget, name: "ViolationTarget"))
    DnsRuleGroupPriorityConflictViolation.add_member(:violation_target_description, ::Smithy::Schema::Shapes::MemberShape.new(target: LengthBoundedString, name: "ViolationTargetDescription"))
    DnsRuleGroupPriorityConflictViolation.add_member(:conflicting_priority, ::Smithy::Schema::Shapes::MemberShape.new(target: DnsRuleGroupPriority, name: "ConflictingPriority", traits: {"smithy.api#default" => 0}))
    DnsRuleGroupPriorityConflictViolation.add_member(:conflicting_policy_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyId, name: "ConflictingPolicyId"))
    DnsRuleGroupPriorityConflictViolation.add_member(:unavailable_priorities, ::Smithy::Schema::Shapes::MemberShape.new(target: DnsRuleGroupPriorities, name: "UnavailablePriorities"))
    DnsRuleGroupPriorityConflictViolation.type = Types::DnsRuleGroupPriorityConflictViolation
    EC2AssociateRouteTableAction.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: LengthBoundedString, name: "Description"))
    EC2AssociateRouteTableAction.add_member(:route_table_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionTarget, name: "RouteTableId", traits: {"smithy.api#required" => {}}))
    EC2AssociateRouteTableAction.add_member(:subnet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionTarget, name: "SubnetId"))
    EC2AssociateRouteTableAction.add_member(:gateway_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionTarget, name: "GatewayId"))
    EC2AssociateRouteTableAction.type = Types::EC2AssociateRouteTableAction
    EC2CopyRouteTableAction.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: LengthBoundedString, name: "Description"))
    EC2CopyRouteTableAction.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionTarget, name: "VpcId", traits: {"smithy.api#required" => {}}))
    EC2CopyRouteTableAction.add_member(:route_table_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionTarget, name: "RouteTableId", traits: {"smithy.api#required" => {}}))
    EC2CopyRouteTableAction.type = Types::EC2CopyRouteTableAction
    EC2CreateRouteAction.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: LengthBoundedString, name: "Description"))
    EC2CreateRouteAction.add_member(:destination_cidr_block, ::Smithy::Schema::Shapes::MemberShape.new(target: CIDR, name: "DestinationCidrBlock"))
    EC2CreateRouteAction.add_member(:destination_prefix_list_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "DestinationPrefixListId"))
    EC2CreateRouteAction.add_member(:destination_ipv6_cidr_block, ::Smithy::Schema::Shapes::MemberShape.new(target: CIDR, name: "DestinationIpv6CidrBlock"))
    EC2CreateRouteAction.add_member(:vpc_endpoint_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionTarget, name: "VpcEndpointId"))
    EC2CreateRouteAction.add_member(:gateway_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionTarget, name: "GatewayId"))
    EC2CreateRouteAction.add_member(:route_table_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionTarget, name: "RouteTableId", traits: {"smithy.api#required" => {}}))
    EC2CreateRouteAction.type = Types::EC2CreateRouteAction
    EC2CreateRouteTableAction.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: LengthBoundedString, name: "Description"))
    EC2CreateRouteTableAction.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionTarget, name: "VpcId", traits: {"smithy.api#required" => {}}))
    EC2CreateRouteTableAction.type = Types::EC2CreateRouteTableAction
    EC2DeleteRouteAction.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: LengthBoundedString, name: "Description"))
    EC2DeleteRouteAction.add_member(:destination_cidr_block, ::Smithy::Schema::Shapes::MemberShape.new(target: CIDR, name: "DestinationCidrBlock"))
    EC2DeleteRouteAction.add_member(:destination_prefix_list_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "DestinationPrefixListId"))
    EC2DeleteRouteAction.add_member(:destination_ipv6_cidr_block, ::Smithy::Schema::Shapes::MemberShape.new(target: CIDR, name: "DestinationIpv6CidrBlock"))
    EC2DeleteRouteAction.add_member(:route_table_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionTarget, name: "RouteTableId", traits: {"smithy.api#required" => {}}))
    EC2DeleteRouteAction.type = Types::EC2DeleteRouteAction
    EC2ReplaceRouteAction.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: LengthBoundedString, name: "Description"))
    EC2ReplaceRouteAction.add_member(:destination_cidr_block, ::Smithy::Schema::Shapes::MemberShape.new(target: CIDR, name: "DestinationCidrBlock"))
    EC2ReplaceRouteAction.add_member(:destination_prefix_list_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "DestinationPrefixListId"))
    EC2ReplaceRouteAction.add_member(:destination_ipv6_cidr_block, ::Smithy::Schema::Shapes::MemberShape.new(target: CIDR, name: "DestinationIpv6CidrBlock"))
    EC2ReplaceRouteAction.add_member(:gateway_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionTarget, name: "GatewayId"))
    EC2ReplaceRouteAction.add_member(:route_table_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionTarget, name: "RouteTableId", traits: {"smithy.api#required" => {}}))
    EC2ReplaceRouteAction.type = Types::EC2ReplaceRouteAction
    EC2ReplaceRouteTableAssociationAction.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: LengthBoundedString, name: "Description"))
    EC2ReplaceRouteTableAssociationAction.add_member(:association_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionTarget, name: "AssociationId", traits: {"smithy.api#required" => {}}))
    EC2ReplaceRouteTableAssociationAction.add_member(:route_table_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionTarget, name: "RouteTableId", traits: {"smithy.api#required" => {}}))
    EC2ReplaceRouteTableAssociationAction.type = Types::EC2ReplaceRouteTableAssociationAction
    EntriesDescription.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EntryDescription, name: "member"))
    EntriesWithConflicts.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EntryDescription, name: "member"))
    EntryDescription.add_member(:entry_detail, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkAclEntry, name: "EntryDetail"))
    EntryDescription.add_member(:entry_rule_number, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerObjectMinimum0, name: "EntryRuleNumber", traits: {"smithy.api#default" => 0}))
    EntryDescription.add_member(:entry_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EntryType, name: "EntryType"))
    EntryDescription.type = Types::EntryDescription
    EntryType.add_member(:fms_managed_first_entry, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FMSManagedFirstEntry", traits: {"smithy.api#enumValue" => "FMS_MANAGED_FIRST_ENTRY"}))
    EntryType.add_member(:fms_managed_last_entry, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FMSManagedLastEntry", traits: {"smithy.api#enumValue" => "FMS_MANAGED_LAST_ENTRY"}))
    EntryType.add_member(:custom_entry, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CustomEntry", traits: {"smithy.api#enumValue" => "CUSTOM_ENTRY"}))
    EntryViolation.add_member(:expected_entry, ::Smithy::Schema::Shapes::MemberShape.new(target: EntryDescription, name: "ExpectedEntry"))
    EntryViolation.add_member(:expected_evaluation_order, ::Smithy::Schema::Shapes::MemberShape.new(target: LengthBoundedString, name: "ExpectedEvaluationOrder"))
    EntryViolation.add_member(:actual_evaluation_order, ::Smithy::Schema::Shapes::MemberShape.new(target: LengthBoundedString, name: "ActualEvaluationOrder"))
    EntryViolation.add_member(:entry_at_expected_evaluation_order, ::Smithy::Schema::Shapes::MemberShape.new(target: EntryDescription, name: "EntryAtExpectedEvaluationOrder"))
    EntryViolation.add_member(:entries_with_conflicts, ::Smithy::Schema::Shapes::MemberShape.new(target: EntriesWithConflicts, name: "EntriesWithConflicts"))
    EntryViolation.add_member(:entry_violation_reasons, ::Smithy::Schema::Shapes::MemberShape.new(target: EntryViolationReasons, name: "EntryViolationReasons"))
    EntryViolation.type = Types::EntryViolation
    EntryViolationReason.add_member(:missing_expected_entry, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MissingExpectedEntry", traits: {"smithy.api#enumValue" => "MISSING_EXPECTED_ENTRY"}))
    EntryViolationReason.add_member(:incorrect_entry_order, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IncorrectEntryOrder", traits: {"smithy.api#enumValue" => "INCORRECT_ENTRY_ORDER"}))
    EntryViolationReason.add_member(:entry_conflict, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EntryConflict", traits: {"smithy.api#enumValue" => "ENTRY_CONFLICT"}))
    EntryViolationReasons.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EntryViolationReason, name: "member"))
    EntryViolations.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EntryViolation, name: "member"))
    EvaluationResult.add_member(:compliance_status, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyComplianceStatusType, name: "ComplianceStatus"))
    EvaluationResult.add_member(:violator_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceCount, name: "ViolatorCount", traits: {"smithy.api#default" => 0}))
    EvaluationResult.add_member(:evaluation_limit_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "EvaluationLimitExceeded", traits: {"smithy.api#default" => false}))
    EvaluationResult.type = Types::EvaluationResult
    EvaluationResults.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EvaluationResult, name: "member"))
    ExpectedRoute.add_member(:ip_v4_cidr, ::Smithy::Schema::Shapes::MemberShape.new(target: CIDR, name: "IpV4Cidr"))
    ExpectedRoute.add_member(:prefix_list_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CIDR, name: "PrefixListId"))
    ExpectedRoute.add_member(:ip_v6_cidr, ::Smithy::Schema::Shapes::MemberShape.new(target: CIDR, name: "IpV6Cidr"))
    ExpectedRoute.add_member(:contributing_subnets, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdList, name: "ContributingSubnets"))
    ExpectedRoute.add_member(:allowed_targets, ::Smithy::Schema::Shapes::MemberShape.new(target: LengthBoundedStringList, name: "AllowedTargets"))
    ExpectedRoute.add_member(:route_table_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "RouteTableId"))
    ExpectedRoute.type = Types::ExpectedRoute
    ExpectedRoutes.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpectedRoute, name: "member"))
    FMSPolicyUpdateFirewallCreationConfigAction.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: LengthBoundedString, name: "Description"))
    FMSPolicyUpdateFirewallCreationConfigAction.add_member(:firewall_creation_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedServiceData, name: "FirewallCreationConfig"))
    FMSPolicyUpdateFirewallCreationConfigAction.type = Types::FMSPolicyUpdateFirewallCreationConfigAction
    FailedItem.add_member(:uri, ::Smithy::Schema::Shapes::MemberShape.new(target: Identifier, name: "URI"))
    FailedItem.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: FailedItemReason, name: "Reason"))
    FailedItem.type = Types::FailedItem
    FailedItemList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FailedItem, name: "member"))
    FailedItemReason.add_member(:not_valid_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NotValidArn", traits: {"smithy.api#enumValue" => "NOT_VALID_ARN"}))
    FailedItemReason.add_member(:not_valid_partition, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NotValidPartition", traits: {"smithy.api#enumValue" => "NOT_VALID_PARTITION"}))
    FailedItemReason.add_member(:not_valid_region, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NotValidRegion", traits: {"smithy.api#enumValue" => "NOT_VALID_REGION"}))
    FailedItemReason.add_member(:not_valid_service, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NotValidService", traits: {"smithy.api#enumValue" => "NOT_VALID_SERVICE"}))
    FailedItemReason.add_member(:not_valid_resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NotValidResourceType", traits: {"smithy.api#enumValue" => "NOT_VALID_RESOURCE_TYPE"}))
    FailedItemReason.add_member(:not_valid_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NotValidAccountId", traits: {"smithy.api#enumValue" => "NOT_VALID_ACCOUNT_ID"}))
    FirewallDeploymentModel.add_member(:centralized, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CENTRALIZED", traits: {"smithy.api#enumValue" => "CENTRALIZED"}))
    FirewallDeploymentModel.add_member(:distributed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISTRIBUTED", traits: {"smithy.api#enumValue" => "DISTRIBUTED"}))
    FirewallSubnetIsOutOfScopeViolation.add_member(:firewall_subnet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "FirewallSubnetId"))
    FirewallSubnetIsOutOfScopeViolation.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "VpcId"))
    FirewallSubnetIsOutOfScopeViolation.add_member(:subnet_availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: LengthBoundedString, name: "SubnetAvailabilityZone"))
    FirewallSubnetIsOutOfScopeViolation.add_member(:subnet_availability_zone_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LengthBoundedString, name: "SubnetAvailabilityZoneId"))
    FirewallSubnetIsOutOfScopeViolation.add_member(:vpc_endpoint_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "VpcEndpointId"))
    FirewallSubnetIsOutOfScopeViolation.type = Types::FirewallSubnetIsOutOfScopeViolation
    FirewallSubnetMissingVPCEndpointViolation.add_member(:firewall_subnet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "FirewallSubnetId"))
    FirewallSubnetMissingVPCEndpointViolation.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "VpcId"))
    FirewallSubnetMissingVPCEndpointViolation.add_member(:subnet_availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: LengthBoundedString, name: "SubnetAvailabilityZone"))
    FirewallSubnetMissingVPCEndpointViolation.add_member(:subnet_availability_zone_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LengthBoundedString, name: "SubnetAvailabilityZoneId"))
    FirewallSubnetMissingVPCEndpointViolation.type = Types::FirewallSubnetMissingVPCEndpointViolation
    GetAdminAccountRequest.type = Types::GetAdminAccountRequest
    GetAdminAccountResponse.add_member(:admin_account, ::Smithy::Schema::Shapes::MemberShape.new(target: AWSAccountId, name: "AdminAccount"))
    GetAdminAccountResponse.add_member(:role_status, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountRoleStatus, name: "RoleStatus"))
    GetAdminAccountResponse.type = Types::GetAdminAccountResponse
    GetAdminScopeRequest.add_member(:admin_account, ::Smithy::Schema::Shapes::MemberShape.new(target: AWSAccountId, name: "AdminAccount", traits: {"smithy.api#required" => {}}))
    GetAdminScopeRequest.type = Types::GetAdminScopeRequest
    GetAdminScopeResponse.add_member(:admin_scope, ::Smithy::Schema::Shapes::MemberShape.new(target: AdminScope, name: "AdminScope"))
    GetAdminScopeResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationStatus, name: "Status"))
    GetAdminScopeResponse.type = Types::GetAdminScopeResponse
    GetAppsListRequest.add_member(:list_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ListId, name: "ListId", traits: {"smithy.api#required" => {}}))
    GetAppsListRequest.add_member(:default_list, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "DefaultList", traits: {"smithy.api#default" => false}))
    GetAppsListRequest.type = Types::GetAppsListRequest
    GetAppsListResponse.add_member(:apps_list, ::Smithy::Schema::Shapes::MemberShape.new(target: AppsListData, name: "AppsList"))
    GetAppsListResponse.add_member(:apps_list_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "AppsListArn"))
    GetAppsListResponse.type = Types::GetAppsListResponse
    GetComplianceDetailRequest.add_member(:policy_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyId, name: "PolicyId", traits: {"smithy.api#required" => {}}))
    GetComplianceDetailRequest.add_member(:member_account, ::Smithy::Schema::Shapes::MemberShape.new(target: AWSAccountId, name: "MemberAccount", traits: {"smithy.api#required" => {}}))
    GetComplianceDetailRequest.type = Types::GetComplianceDetailRequest
    GetComplianceDetailResponse.add_member(:policy_compliance_detail, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyComplianceDetail, name: "PolicyComplianceDetail"))
    GetComplianceDetailResponse.type = Types::GetComplianceDetailResponse
    GetNotificationChannelRequest.type = Types::GetNotificationChannelRequest
    GetNotificationChannelResponse.add_member(:sns_topic_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "SnsTopicArn"))
    GetNotificationChannelResponse.add_member(:sns_role_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "SnsRoleName"))
    GetNotificationChannelResponse.type = Types::GetNotificationChannelResponse
    GetPolicyRequest.add_member(:policy_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyId, name: "PolicyId", traits: {"smithy.api#required" => {}}))
    GetPolicyRequest.type = Types::GetPolicyRequest
    GetPolicyResponse.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: Policy, name: "Policy"))
    GetPolicyResponse.add_member(:policy_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "PolicyArn"))
    GetPolicyResponse.type = Types::GetPolicyResponse
    GetProtectionStatusRequest.add_member(:policy_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyId, name: "PolicyId", traits: {"smithy.api#required" => {}}))
    GetProtectionStatusRequest.add_member(:member_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AWSAccountId, name: "MemberAccountId"))
    GetProtectionStatusRequest.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeStamp, name: "StartTime"))
    GetProtectionStatusRequest.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeStamp, name: "EndTime"))
    GetProtectionStatusRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken"))
    GetProtectionStatusRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationMaxResults, name: "MaxResults"))
    GetProtectionStatusRequest.type = Types::GetProtectionStatusRequest
    GetProtectionStatusResponse.add_member(:admin_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AWSAccountId, name: "AdminAccountId"))
    GetProtectionStatusResponse.add_member(:service_type, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityServiceType, name: "ServiceType"))
    GetProtectionStatusResponse.add_member(:data, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectionData, name: "Data"))
    GetProtectionStatusResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken"))
    GetProtectionStatusResponse.type = Types::GetProtectionStatusResponse
    GetProtocolsListRequest.add_member(:list_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ListId, name: "ListId", traits: {"smithy.api#required" => {}}))
    GetProtocolsListRequest.add_member(:default_list, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "DefaultList", traits: {"smithy.api#default" => false}))
    GetProtocolsListRequest.type = Types::GetProtocolsListRequest
    GetProtocolsListResponse.add_member(:protocols_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtocolsListData, name: "ProtocolsList"))
    GetProtocolsListResponse.add_member(:protocols_list_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ProtocolsListArn"))
    GetProtocolsListResponse.type = Types::GetProtocolsListResponse
    GetResourceSetRequest.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: Base62Id, name: "Identifier", traits: {"smithy.api#required" => {}}))
    GetResourceSetRequest.type = Types::GetResourceSetRequest
    GetResourceSetResponse.add_member(:resource_set, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceSet, name: "ResourceSet", traits: {"smithy.api#required" => {}}))
    GetResourceSetResponse.add_member(:resource_set_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ResourceSetArn", traits: {"smithy.api#required" => {}}))
    GetResourceSetResponse.type = Types::GetResourceSetResponse
    GetThirdPartyFirewallAssociationStatusRequest.add_member(:third_party_firewall, ::Smithy::Schema::Shapes::MemberShape.new(target: ThirdPartyFirewall, name: "ThirdPartyFirewall", traits: {"smithy.api#required" => {}}))
    GetThirdPartyFirewallAssociationStatusRequest.type = Types::GetThirdPartyFirewallAssociationStatusRequest
    GetThirdPartyFirewallAssociationStatusResponse.add_member(:third_party_firewall_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ThirdPartyFirewallAssociationStatus, name: "ThirdPartyFirewallStatus"))
    GetThirdPartyFirewallAssociationStatusResponse.add_member(:marketplace_onboarding_status, ::Smithy::Schema::Shapes::MemberShape.new(target: MarketplaceSubscriptionOnboardingStatus, name: "MarketplaceOnboardingStatus"))
    GetThirdPartyFirewallAssociationStatusResponse.type = Types::GetThirdPartyFirewallAssociationStatusResponse
    GetViolationDetailsRequest.add_member(:policy_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyId, name: "PolicyId", traits: {"smithy.api#required" => {}}))
    GetViolationDetailsRequest.add_member(:member_account, ::Smithy::Schema::Shapes::MemberShape.new(target: AWSAccountId, name: "MemberAccount", traits: {"smithy.api#required" => {}}))
    GetViolationDetailsRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "ResourceId", traits: {"smithy.api#required" => {}}))
    GetViolationDetailsRequest.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "ResourceType", traits: {"smithy.api#required" => {}}))
    GetViolationDetailsRequest.type = Types::GetViolationDetailsRequest
    GetViolationDetailsResponse.add_member(:violation_detail, ::Smithy::Schema::Shapes::MemberShape.new(target: ViolationDetail, name: "ViolationDetail"))
    GetViolationDetailsResponse.type = Types::GetViolationDetailsResponse
    IdentifierList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Identifier, name: "member"))
    InternalErrorException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    InternalErrorException.type = Types::InternalErrorException
    InvalidInputException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    InvalidInputException.type = Types::InvalidInputException
    InvalidNetworkAclEntriesViolation.add_member(:vpc, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "Vpc"))
    InvalidNetworkAclEntriesViolation.add_member(:subnet, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "Subnet"))
    InvalidNetworkAclEntriesViolation.add_member(:subnet_availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: LengthBoundedString, name: "SubnetAvailabilityZone"))
    InvalidNetworkAclEntriesViolation.add_member(:current_associated_network_acl, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "CurrentAssociatedNetworkAcl"))
    InvalidNetworkAclEntriesViolation.add_member(:entry_violations, ::Smithy::Schema::Shapes::MemberShape.new(target: EntryViolations, name: "EntryViolations"))
    InvalidNetworkAclEntriesViolation.type = Types::InvalidNetworkAclEntriesViolation
    InvalidOperationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    InvalidOperationException.type = Types::InvalidOperationException
    InvalidTypeException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    InvalidTypeException.type = Types::InvalidTypeException
    IssueInfoMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: DependentServiceName, name: "key"))
    IssueInfoMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: DetailedInfo, name: "value"))
    LengthBoundedStringList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LengthBoundedString, name: "member"))
    LimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    LimitExceededException.type = Types::LimitExceededException
    ListAdminAccountsForOrganizationRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken"))
    ListAdminAccountsForOrganizationRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationMaxResults, name: "MaxResults"))
    ListAdminAccountsForOrganizationRequest.type = Types::ListAdminAccountsForOrganizationRequest
    ListAdminAccountsForOrganizationResponse.add_member(:admin_accounts, ::Smithy::Schema::Shapes::MemberShape.new(target: AdminAccountSummaryList, name: "AdminAccounts"))
    ListAdminAccountsForOrganizationResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken"))
    ListAdminAccountsForOrganizationResponse.type = Types::ListAdminAccountsForOrganizationResponse
    ListAdminsManagingAccountRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken"))
    ListAdminsManagingAccountRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationMaxResults, name: "MaxResults"))
    ListAdminsManagingAccountRequest.type = Types::ListAdminsManagingAccountRequest
    ListAdminsManagingAccountResponse.add_member(:admin_accounts, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountIdList, name: "AdminAccounts"))
    ListAdminsManagingAccountResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken"))
    ListAdminsManagingAccountResponse.type = Types::ListAdminsManagingAccountResponse
    ListAppsListsRequest.add_member(:default_lists, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "DefaultLists", traits: {"smithy.api#default" => false}))
    ListAppsListsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken"))
    ListAppsListsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationMaxResults, name: "MaxResults", traits: {"smithy.api#required" => {}}))
    ListAppsListsRequest.type = Types::ListAppsListsRequest
    ListAppsListsResponse.add_member(:apps_lists, ::Smithy::Schema::Shapes::MemberShape.new(target: AppsListsData, name: "AppsLists"))
    ListAppsListsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken"))
    ListAppsListsResponse.type = Types::ListAppsListsResponse
    ListComplianceStatusRequest.add_member(:policy_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyId, name: "PolicyId", traits: {"smithy.api#required" => {}}))
    ListComplianceStatusRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken"))
    ListComplianceStatusRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationMaxResults, name: "MaxResults"))
    ListComplianceStatusRequest.type = Types::ListComplianceStatusRequest
    ListComplianceStatusResponse.add_member(:policy_compliance_status_list, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyComplianceStatusList, name: "PolicyComplianceStatusList"))
    ListComplianceStatusResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken"))
    ListComplianceStatusResponse.type = Types::ListComplianceStatusResponse
    ListDiscoveredResourcesRequest.add_member(:member_account_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: AWSAccountIdList, name: "MemberAccountIds", traits: {"smithy.api#required" => {}}))
    ListDiscoveredResourcesRequest.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "ResourceType", traits: {"smithy.api#required" => {}}))
    ListDiscoveredResourcesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationMaxResults, name: "MaxResults"))
    ListDiscoveredResourcesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken"))
    ListDiscoveredResourcesRequest.type = Types::ListDiscoveredResourcesRequest
    ListDiscoveredResourcesResponse.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: DiscoveredResourceList, name: "Items"))
    ListDiscoveredResourcesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken"))
    ListDiscoveredResourcesResponse.type = Types::ListDiscoveredResourcesResponse
    ListMemberAccountsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken"))
    ListMemberAccountsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationMaxResults, name: "MaxResults"))
    ListMemberAccountsRequest.type = Types::ListMemberAccountsRequest
    ListMemberAccountsResponse.add_member(:member_accounts, ::Smithy::Schema::Shapes::MemberShape.new(target: MemberAccounts, name: "MemberAccounts"))
    ListMemberAccountsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken"))
    ListMemberAccountsResponse.type = Types::ListMemberAccountsResponse
    ListPoliciesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken"))
    ListPoliciesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationMaxResults, name: "MaxResults"))
    ListPoliciesRequest.type = Types::ListPoliciesRequest
    ListPoliciesResponse.add_member(:policy_list, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicySummaryList, name: "PolicyList"))
    ListPoliciesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken"))
    ListPoliciesResponse.type = Types::ListPoliciesResponse
    ListProtocolsListsRequest.add_member(:default_lists, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "DefaultLists", traits: {"smithy.api#default" => false}))
    ListProtocolsListsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken"))
    ListProtocolsListsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationMaxResults, name: "MaxResults", traits: {"smithy.api#required" => {}}))
    ListProtocolsListsRequest.type = Types::ListProtocolsListsRequest
    ListProtocolsListsResponse.add_member(:protocols_lists, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtocolsListsData, name: "ProtocolsLists"))
    ListProtocolsListsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken"))
    ListProtocolsListsResponse.type = Types::ListProtocolsListsResponse
    ListResourceSetResourcesRequest.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "Identifier", traits: {"smithy.api#required" => {}}))
    ListResourceSetResourcesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationMaxResults, name: "MaxResults"))
    ListResourceSetResourcesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken"))
    ListResourceSetResourcesRequest.type = Types::ListResourceSetResourcesRequest
    ListResourceSetResourcesResponse.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceList, name: "Items", traits: {"smithy.api#required" => {}}))
    ListResourceSetResourcesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken"))
    ListResourceSetResourcesResponse.type = Types::ListResourceSetResourcesResponse
    ListResourceSetsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken"))
    ListResourceSetsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationMaxResults, name: "MaxResults"))
    ListResourceSetsRequest.type = Types::ListResourceSetsRequest
    ListResourceSetsResponse.add_member(:resource_sets, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceSetSummaryList, name: "ResourceSets"))
    ListResourceSetsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken"))
    ListResourceSetsResponse.type = Types::ListResourceSetsResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tag_list, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "TagList"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ListThirdPartyFirewallFirewallPoliciesRequest.add_member(:third_party_firewall, ::Smithy::Schema::Shapes::MemberShape.new(target: ThirdPartyFirewall, name: "ThirdPartyFirewall", traits: {"smithy.api#required" => {}}))
    ListThirdPartyFirewallFirewallPoliciesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken"))
    ListThirdPartyFirewallFirewallPoliciesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationMaxResults, name: "MaxResults", traits: {"smithy.api#required" => {}}))
    ListThirdPartyFirewallFirewallPoliciesRequest.type = Types::ListThirdPartyFirewallFirewallPoliciesRequest
    ListThirdPartyFirewallFirewallPoliciesResponse.add_member(:third_party_firewall_firewall_policies, ::Smithy::Schema::Shapes::MemberShape.new(target: ThirdPartyFirewallFirewallPolicies, name: "ThirdPartyFirewallFirewallPolicies"))
    ListThirdPartyFirewallFirewallPoliciesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken"))
    ListThirdPartyFirewallFirewallPoliciesResponse.type = Types::ListThirdPartyFirewallFirewallPoliciesResponse
    MarketplaceSubscriptionOnboardingStatus.add_member(:no_subscription, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NO_SUBSCRIPTION", traits: {"smithy.api#enumValue" => "NO_SUBSCRIPTION"}))
    MarketplaceSubscriptionOnboardingStatus.add_member(:not_complete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_COMPLETE", traits: {"smithy.api#enumValue" => "NOT_COMPLETE"}))
    MarketplaceSubscriptionOnboardingStatus.add_member(:complete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETE", traits: {"smithy.api#enumValue" => "COMPLETE"}))
    MemberAccounts.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AWSAccountId, name: "member"))
    NetworkAclCommonPolicy.add_member(:network_acl_entry_set, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkAclEntrySet, name: "NetworkAclEntrySet", traits: {"smithy.api#required" => {}}))
    NetworkAclCommonPolicy.type = Types::NetworkAclCommonPolicy
    NetworkAclEntries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkAclEntry, name: "member"))
    NetworkAclEntry.add_member(:icmp_type_code, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkAclIcmpTypeCode, name: "IcmpTypeCode"))
    NetworkAclEntry.add_member(:protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: LengthBoundedString, name: "Protocol", traits: {"smithy.api#required" => {}}))
    NetworkAclEntry.add_member(:port_range, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkAclPortRange, name: "PortRange"))
    NetworkAclEntry.add_member(:cidr_block, ::Smithy::Schema::Shapes::MemberShape.new(target: LengthBoundedNonEmptyString, name: "CidrBlock"))
    NetworkAclEntry.add_member(:ipv6_cidr_block, ::Smithy::Schema::Shapes::MemberShape.new(target: LengthBoundedNonEmptyString, name: "Ipv6CidrBlock"))
    NetworkAclEntry.add_member(:rule_action, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkAclRuleAction, name: "RuleAction", traits: {"smithy.api#required" => {}}))
    NetworkAclEntry.add_member(:egress, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanObject, name: "Egress", traits: {"smithy.api#required" => {}}))
    NetworkAclEntry.type = Types::NetworkAclEntry
    NetworkAclEntrySet.add_member(:first_entries, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkAclEntries, name: "FirstEntries"))
    NetworkAclEntrySet.add_member(:force_remediate_for_first_entries, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanObject, name: "ForceRemediateForFirstEntries", traits: {"smithy.api#required" => {}}))
    NetworkAclEntrySet.add_member(:last_entries, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkAclEntries, name: "LastEntries"))
    NetworkAclEntrySet.add_member(:force_remediate_for_last_entries, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanObject, name: "ForceRemediateForLastEntries", traits: {"smithy.api#required" => {}}))
    NetworkAclEntrySet.type = Types::NetworkAclEntrySet
    NetworkAclIcmpTypeCode.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerObject, name: "Code"))
    NetworkAclIcmpTypeCode.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerObject, name: "Type"))
    NetworkAclIcmpTypeCode.type = Types::NetworkAclIcmpTypeCode
    NetworkAclPortRange.add_member(:from, ::Smithy::Schema::Shapes::MemberShape.new(target: IPPortNumberInteger, name: "From"))
    NetworkAclPortRange.add_member(:to, ::Smithy::Schema::Shapes::MemberShape.new(target: IPPortNumberInteger, name: "To"))
    NetworkAclPortRange.type = Types::NetworkAclPortRange
    NetworkAclRuleAction.add_member(:allow, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALLOW", traits: {"smithy.api#enumValue" => "allow"}))
    NetworkAclRuleAction.add_member(:deny, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DENY", traits: {"smithy.api#enumValue" => "deny"}))
    NetworkFirewallActionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkFirewallAction, name: "member"))
    NetworkFirewallBlackHoleRouteDetectedViolation.add_member(:violation_target, ::Smithy::Schema::Shapes::MemberShape.new(target: ViolationTarget, name: "ViolationTarget"))
    NetworkFirewallBlackHoleRouteDetectedViolation.add_member(:route_table_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "RouteTableId"))
    NetworkFirewallBlackHoleRouteDetectedViolation.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "VpcId"))
    NetworkFirewallBlackHoleRouteDetectedViolation.add_member(:violating_routes, ::Smithy::Schema::Shapes::MemberShape.new(target: Routes, name: "ViolatingRoutes"))
    NetworkFirewallBlackHoleRouteDetectedViolation.type = Types::NetworkFirewallBlackHoleRouteDetectedViolation
    NetworkFirewallInternetTrafficNotInspectedViolation.add_member(:subnet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "SubnetId"))
    NetworkFirewallInternetTrafficNotInspectedViolation.add_member(:subnet_availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: LengthBoundedString, name: "SubnetAvailabilityZone"))
    NetworkFirewallInternetTrafficNotInspectedViolation.add_member(:route_table_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "RouteTableId"))
    NetworkFirewallInternetTrafficNotInspectedViolation.add_member(:violating_routes, ::Smithy::Schema::Shapes::MemberShape.new(target: Routes, name: "ViolatingRoutes"))
    NetworkFirewallInternetTrafficNotInspectedViolation.add_member(:is_route_table_used_in_different_az, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "IsRouteTableUsedInDifferentAZ", traits: {"smithy.api#default" => false}))
    NetworkFirewallInternetTrafficNotInspectedViolation.add_member(:current_firewall_subnet_route_table, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "CurrentFirewallSubnetRouteTable"))
    NetworkFirewallInternetTrafficNotInspectedViolation.add_member(:expected_firewall_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "ExpectedFirewallEndpoint"))
    NetworkFirewallInternetTrafficNotInspectedViolation.add_member(:firewall_subnet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "FirewallSubnetId"))
    NetworkFirewallInternetTrafficNotInspectedViolation.add_member(:expected_firewall_subnet_routes, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpectedRoutes, name: "ExpectedFirewallSubnetRoutes"))
    NetworkFirewallInternetTrafficNotInspectedViolation.add_member(:actual_firewall_subnet_routes, ::Smithy::Schema::Shapes::MemberShape.new(target: Routes, name: "ActualFirewallSubnetRoutes"))
    NetworkFirewallInternetTrafficNotInspectedViolation.add_member(:internet_gateway_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "InternetGatewayId"))
    NetworkFirewallInternetTrafficNotInspectedViolation.add_member(:current_internet_gateway_route_table, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "CurrentInternetGatewayRouteTable"))
    NetworkFirewallInternetTrafficNotInspectedViolation.add_member(:expected_internet_gateway_routes, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpectedRoutes, name: "ExpectedInternetGatewayRoutes"))
    NetworkFirewallInternetTrafficNotInspectedViolation.add_member(:actual_internet_gateway_routes, ::Smithy::Schema::Shapes::MemberShape.new(target: Routes, name: "ActualInternetGatewayRoutes"))
    NetworkFirewallInternetTrafficNotInspectedViolation.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "VpcId"))
    NetworkFirewallInternetTrafficNotInspectedViolation.type = Types::NetworkFirewallInternetTrafficNotInspectedViolation
    NetworkFirewallInvalidRouteConfigurationViolation.add_member(:affected_subnets, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdList, name: "AffectedSubnets"))
    NetworkFirewallInvalidRouteConfigurationViolation.add_member(:route_table_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "RouteTableId"))
    NetworkFirewallInvalidRouteConfigurationViolation.add_member(:is_route_table_used_in_different_az, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "IsRouteTableUsedInDifferentAZ", traits: {"smithy.api#default" => false}))
    NetworkFirewallInvalidRouteConfigurationViolation.add_member(:violating_route, ::Smithy::Schema::Shapes::MemberShape.new(target: Route, name: "ViolatingRoute"))
    NetworkFirewallInvalidRouteConfigurationViolation.add_member(:current_firewall_subnet_route_table, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "CurrentFirewallSubnetRouteTable"))
    NetworkFirewallInvalidRouteConfigurationViolation.add_member(:expected_firewall_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "ExpectedFirewallEndpoint"))
    NetworkFirewallInvalidRouteConfigurationViolation.add_member(:actual_firewall_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "ActualFirewallEndpoint"))
    NetworkFirewallInvalidRouteConfigurationViolation.add_member(:expected_firewall_subnet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "ExpectedFirewallSubnetId"))
    NetworkFirewallInvalidRouteConfigurationViolation.add_member(:actual_firewall_subnet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "ActualFirewallSubnetId"))
    NetworkFirewallInvalidRouteConfigurationViolation.add_member(:expected_firewall_subnet_routes, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpectedRoutes, name: "ExpectedFirewallSubnetRoutes"))
    NetworkFirewallInvalidRouteConfigurationViolation.add_member(:actual_firewall_subnet_routes, ::Smithy::Schema::Shapes::MemberShape.new(target: Routes, name: "ActualFirewallSubnetRoutes"))
    NetworkFirewallInvalidRouteConfigurationViolation.add_member(:internet_gateway_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "InternetGatewayId"))
    NetworkFirewallInvalidRouteConfigurationViolation.add_member(:current_internet_gateway_route_table, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "CurrentInternetGatewayRouteTable"))
    NetworkFirewallInvalidRouteConfigurationViolation.add_member(:expected_internet_gateway_routes, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpectedRoutes, name: "ExpectedInternetGatewayRoutes"))
    NetworkFirewallInvalidRouteConfigurationViolation.add_member(:actual_internet_gateway_routes, ::Smithy::Schema::Shapes::MemberShape.new(target: Routes, name: "ActualInternetGatewayRoutes"))
    NetworkFirewallInvalidRouteConfigurationViolation.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "VpcId"))
    NetworkFirewallInvalidRouteConfigurationViolation.type = Types::NetworkFirewallInvalidRouteConfigurationViolation
    NetworkFirewallMissingExpectedRTViolation.add_member(:violation_target, ::Smithy::Schema::Shapes::MemberShape.new(target: ViolationTarget, name: "ViolationTarget"))
    NetworkFirewallMissingExpectedRTViolation.add_member(:vpc, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "VPC"))
    NetworkFirewallMissingExpectedRTViolation.add_member(:availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: LengthBoundedString, name: "AvailabilityZone"))
    NetworkFirewallMissingExpectedRTViolation.add_member(:current_route_table, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "CurrentRouteTable"))
    NetworkFirewallMissingExpectedRTViolation.add_member(:expected_route_table, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "ExpectedRouteTable"))
    NetworkFirewallMissingExpectedRTViolation.type = Types::NetworkFirewallMissingExpectedRTViolation
    NetworkFirewallMissingExpectedRoutesViolation.add_member(:violation_target, ::Smithy::Schema::Shapes::MemberShape.new(target: ViolationTarget, name: "ViolationTarget"))
    NetworkFirewallMissingExpectedRoutesViolation.add_member(:expected_routes, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpectedRoutes, name: "ExpectedRoutes"))
    NetworkFirewallMissingExpectedRoutesViolation.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "VpcId"))
    NetworkFirewallMissingExpectedRoutesViolation.type = Types::NetworkFirewallMissingExpectedRoutesViolation
    NetworkFirewallMissingFirewallViolation.add_member(:violation_target, ::Smithy::Schema::Shapes::MemberShape.new(target: ViolationTarget, name: "ViolationTarget"))
    NetworkFirewallMissingFirewallViolation.add_member(:vpc, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "VPC"))
    NetworkFirewallMissingFirewallViolation.add_member(:availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: LengthBoundedString, name: "AvailabilityZone"))
    NetworkFirewallMissingFirewallViolation.add_member(:target_violation_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetViolationReason, name: "TargetViolationReason"))
    NetworkFirewallMissingFirewallViolation.type = Types::NetworkFirewallMissingFirewallViolation
    NetworkFirewallMissingSubnetViolation.add_member(:violation_target, ::Smithy::Schema::Shapes::MemberShape.new(target: ViolationTarget, name: "ViolationTarget"))
    NetworkFirewallMissingSubnetViolation.add_member(:vpc, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "VPC"))
    NetworkFirewallMissingSubnetViolation.add_member(:availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: LengthBoundedString, name: "AvailabilityZone"))
    NetworkFirewallMissingSubnetViolation.add_member(:target_violation_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetViolationReason, name: "TargetViolationReason"))
    NetworkFirewallMissingSubnetViolation.type = Types::NetworkFirewallMissingSubnetViolation
    NetworkFirewallOverrideAction.add_member(:drop_to_alert, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DROP_TO_ALERT", traits: {"smithy.api#enumValue" => "DROP_TO_ALERT"}))
    NetworkFirewallPolicy.add_member(:firewall_deployment_model, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallDeploymentModel, name: "FirewallDeploymentModel"))
    NetworkFirewallPolicy.type = Types::NetworkFirewallPolicy
    NetworkFirewallPolicyDescription.add_member(:stateless_rule_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: StatelessRuleGroupList, name: "StatelessRuleGroups"))
    NetworkFirewallPolicyDescription.add_member(:stateless_default_actions, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkFirewallActionList, name: "StatelessDefaultActions"))
    NetworkFirewallPolicyDescription.add_member(:stateless_fragment_default_actions, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkFirewallActionList, name: "StatelessFragmentDefaultActions"))
    NetworkFirewallPolicyDescription.add_member(:stateless_custom_actions, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkFirewallActionList, name: "StatelessCustomActions"))
    NetworkFirewallPolicyDescription.add_member(:stateful_rule_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: StatefulRuleGroupList, name: "StatefulRuleGroups"))
    NetworkFirewallPolicyDescription.add_member(:stateful_default_actions, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkFirewallActionList, name: "StatefulDefaultActions"))
    NetworkFirewallPolicyDescription.add_member(:stateful_engine_options, ::Smithy::Schema::Shapes::MemberShape.new(target: StatefulEngineOptions, name: "StatefulEngineOptions"))
    NetworkFirewallPolicyDescription.type = Types::NetworkFirewallPolicyDescription
    NetworkFirewallPolicyModifiedViolation.add_member(:violation_target, ::Smithy::Schema::Shapes::MemberShape.new(target: ViolationTarget, name: "ViolationTarget"))
    NetworkFirewallPolicyModifiedViolation.add_member(:current_policy_description, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkFirewallPolicyDescription, name: "CurrentPolicyDescription"))
    NetworkFirewallPolicyModifiedViolation.add_member(:expected_policy_description, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkFirewallPolicyDescription, name: "ExpectedPolicyDescription"))
    NetworkFirewallPolicyModifiedViolation.type = Types::NetworkFirewallPolicyModifiedViolation
    NetworkFirewallStatefulRuleGroupOverride.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkFirewallOverrideAction, name: "Action"))
    NetworkFirewallStatefulRuleGroupOverride.type = Types::NetworkFirewallStatefulRuleGroupOverride
    NetworkFirewallUnexpectedFirewallRoutesViolation.add_member(:firewall_subnet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "FirewallSubnetId"))
    NetworkFirewallUnexpectedFirewallRoutesViolation.add_member(:violating_routes, ::Smithy::Schema::Shapes::MemberShape.new(target: Routes, name: "ViolatingRoutes"))
    NetworkFirewallUnexpectedFirewallRoutesViolation.add_member(:route_table_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "RouteTableId"))
    NetworkFirewallUnexpectedFirewallRoutesViolation.add_member(:firewall_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "FirewallEndpoint"))
    NetworkFirewallUnexpectedFirewallRoutesViolation.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "VpcId"))
    NetworkFirewallUnexpectedFirewallRoutesViolation.type = Types::NetworkFirewallUnexpectedFirewallRoutesViolation
    NetworkFirewallUnexpectedGatewayRoutesViolation.add_member(:gateway_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "GatewayId"))
    NetworkFirewallUnexpectedGatewayRoutesViolation.add_member(:violating_routes, ::Smithy::Schema::Shapes::MemberShape.new(target: Routes, name: "ViolatingRoutes"))
    NetworkFirewallUnexpectedGatewayRoutesViolation.add_member(:route_table_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "RouteTableId"))
    NetworkFirewallUnexpectedGatewayRoutesViolation.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "VpcId"))
    NetworkFirewallUnexpectedGatewayRoutesViolation.type = Types::NetworkFirewallUnexpectedGatewayRoutesViolation
    OrderedRemediationActions.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RemediationActionWithOrder, name: "member"))
    OrganizationStatus.add_member(:onboarding, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Onboarding", traits: {"smithy.api#enumValue" => "ONBOARDING"}))
    OrganizationStatus.add_member(:onboarding_complete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OnboardingComplete", traits: {"smithy.api#enumValue" => "ONBOARDING_COMPLETE"}))
    OrganizationStatus.add_member(:offboarding, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Offboarding", traits: {"smithy.api#enumValue" => "OFFBOARDING"}))
    OrganizationStatus.add_member(:offboarding_complete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OffboardingComplete", traits: {"smithy.api#enumValue" => "OFFBOARDING_COMPLETE"}))
    OrganizationalUnitIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationalUnitId, name: "member"))
    OrganizationalUnitScope.add_member(:organizational_units, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationalUnitIdList, name: "OrganizationalUnits"))
    OrganizationalUnitScope.add_member(:all_organizational_units_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "AllOrganizationalUnitsEnabled", traits: {"smithy.api#default" => false}))
    OrganizationalUnitScope.add_member(:exclude_specified_organizational_units, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "ExcludeSpecifiedOrganizationalUnits", traits: {"smithy.api#default" => false}))
    OrganizationalUnitScope.type = Types::OrganizationalUnitScope
    PartialMatch.add_member(:reference, ::Smithy::Schema::Shapes::MemberShape.new(target: ReferenceRule, name: "Reference"))
    PartialMatch.add_member(:target_violation_reasons, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetViolationReasons, name: "TargetViolationReasons"))
    PartialMatch.type = Types::PartialMatch
    PartialMatches.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PartialMatch, name: "member"))
    Policy.add_member(:policy_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyId, name: "PolicyId"))
    Policy.add_member(:policy_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "PolicyName", traits: {"smithy.api#required" => {}}))
    Policy.add_member(:policy_update_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyUpdateToken, name: "PolicyUpdateToken"))
    Policy.add_member(:security_service_policy_data, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityServicePolicyData, name: "SecurityServicePolicyData", traits: {"smithy.api#required" => {}}))
    Policy.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "ResourceType", traits: {"smithy.api#required" => {}}))
    Policy.add_member(:resource_type_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTypeList, name: "ResourceTypeList"))
    Policy.add_member(:resource_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTags, name: "ResourceTags"))
    Policy.add_member(:exclude_resource_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "ExcludeResourceTags", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    Policy.add_member(:remediation_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "RemediationEnabled", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    Policy.add_member(:delete_unused_fm_managed_resources, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "DeleteUnusedFMManagedResources", traits: {"smithy.api#default" => false}))
    Policy.add_member(:include_map, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerPolicyScopeMap, name: "IncludeMap"))
    Policy.add_member(:exclude_map, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerPolicyScopeMap, name: "ExcludeMap"))
    Policy.add_member(:resource_set_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceSetIds, name: "ResourceSetIds"))
    Policy.add_member(:policy_description, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDescription, name: "PolicyDescription"))
    Policy.add_member(:policy_status, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerPolicyStatus, name: "PolicyStatus"))
    Policy.add_member(:resource_tag_logical_operator, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTagLogicalOperator, name: "ResourceTagLogicalOperator"))
    Policy.type = Types::Policy
    PolicyComplianceDetail.add_member(:policy_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AWSAccountId, name: "PolicyOwner"))
    PolicyComplianceDetail.add_member(:policy_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyId, name: "PolicyId"))
    PolicyComplianceDetail.add_member(:member_account, ::Smithy::Schema::Shapes::MemberShape.new(target: AWSAccountId, name: "MemberAccount"))
    PolicyComplianceDetail.add_member(:violators, ::Smithy::Schema::Shapes::MemberShape.new(target: ComplianceViolators, name: "Violators"))
    PolicyComplianceDetail.add_member(:evaluation_limit_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "EvaluationLimitExceeded", traits: {"smithy.api#default" => false}))
    PolicyComplianceDetail.add_member(:expired_at, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeStamp, name: "ExpiredAt"))
    PolicyComplianceDetail.add_member(:issue_info_map, ::Smithy::Schema::Shapes::MemberShape.new(target: IssueInfoMap, name: "IssueInfoMap"))
    PolicyComplianceDetail.type = Types::PolicyComplianceDetail
    PolicyComplianceStatus.add_member(:policy_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AWSAccountId, name: "PolicyOwner"))
    PolicyComplianceStatus.add_member(:policy_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyId, name: "PolicyId"))
    PolicyComplianceStatus.add_member(:policy_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "PolicyName"))
    PolicyComplianceStatus.add_member(:member_account, ::Smithy::Schema::Shapes::MemberShape.new(target: AWSAccountId, name: "MemberAccount"))
    PolicyComplianceStatus.add_member(:evaluation_results, ::Smithy::Schema::Shapes::MemberShape.new(target: EvaluationResults, name: "EvaluationResults"))
    PolicyComplianceStatus.add_member(:last_updated, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeStamp, name: "LastUpdated"))
    PolicyComplianceStatus.add_member(:issue_info_map, ::Smithy::Schema::Shapes::MemberShape.new(target: IssueInfoMap, name: "IssueInfoMap"))
    PolicyComplianceStatus.type = Types::PolicyComplianceStatus
    PolicyComplianceStatusList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyComplianceStatus, name: "member"))
    PolicyComplianceStatusType.add_member(:compliant, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Compliant", traits: {"smithy.api#enumValue" => "COMPLIANT"}))
    PolicyComplianceStatusType.add_member(:non_compliant, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NonCompliant", traits: {"smithy.api#enumValue" => "NON_COMPLIANT"}))
    PolicyOption.add_member(:network_firewall_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkFirewallPolicy, name: "NetworkFirewallPolicy"))
    PolicyOption.add_member(:third_party_firewall_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ThirdPartyFirewallPolicy, name: "ThirdPartyFirewallPolicy"))
    PolicyOption.add_member(:network_acl_common_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkAclCommonPolicy, name: "NetworkAclCommonPolicy"))
    PolicyOption.type = Types::PolicyOption
    PolicySummary.add_member(:policy_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "PolicyArn"))
    PolicySummary.add_member(:policy_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyId, name: "PolicyId"))
    PolicySummary.add_member(:policy_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "PolicyName"))
    PolicySummary.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "ResourceType"))
    PolicySummary.add_member(:security_service_type, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityServiceType, name: "SecurityServiceType"))
    PolicySummary.add_member(:remediation_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "RemediationEnabled", traits: {"smithy.api#default" => false}))
    PolicySummary.add_member(:delete_unused_fm_managed_resources, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "DeleteUnusedFMManagedResources", traits: {"smithy.api#default" => false}))
    PolicySummary.add_member(:policy_status, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerPolicyStatus, name: "PolicyStatus"))
    PolicySummary.type = Types::PolicySummary
    PolicySummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicySummary, name: "member"))
    PolicyTypeScope.add_member(:policy_types, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityServiceTypeList, name: "PolicyTypes"))
    PolicyTypeScope.add_member(:all_policy_types_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "AllPolicyTypesEnabled", traits: {"smithy.api#default" => false}))
    PolicyTypeScope.type = Types::PolicyTypeScope
    PossibleRemediationAction.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: LengthBoundedString, name: "Description"))
    PossibleRemediationAction.add_member(:ordered_remediation_actions, ::Smithy::Schema::Shapes::MemberShape.new(target: OrderedRemediationActions, name: "OrderedRemediationActions", traits: {"smithy.api#required" => {}}))
    PossibleRemediationAction.add_member(:is_default_action, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "IsDefaultAction", traits: {"smithy.api#default" => false}))
    PossibleRemediationAction.type = Types::PossibleRemediationAction
    PossibleRemediationActionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PossibleRemediationAction, name: "member"))
    PossibleRemediationActions.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: LengthBoundedString, name: "Description"))
    PossibleRemediationActions.add_member(:actions, ::Smithy::Schema::Shapes::MemberShape.new(target: PossibleRemediationActionList, name: "Actions"))
    PossibleRemediationActions.type = Types::PossibleRemediationActions
    PreviousAppsList.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: PreviousListVersion, name: "key"))
    PreviousAppsList.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: AppsList, name: "value"))
    PreviousProtocolsList.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: PreviousListVersion, name: "key"))
    PreviousProtocolsList.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtocolsList, name: "value"))
    ProtocolsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Protocol, name: "member"))
    ProtocolsListData.add_member(:list_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ListId, name: "ListId"))
    ProtocolsListData.add_member(:list_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ListName", traits: {"smithy.api#required" => {}}))
    ProtocolsListData.add_member(:list_update_token, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateToken, name: "ListUpdateToken"))
    ProtocolsListData.add_member(:create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeStamp, name: "CreateTime"))
    ProtocolsListData.add_member(:last_update_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeStamp, name: "LastUpdateTime"))
    ProtocolsListData.add_member(:protocols_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtocolsList, name: "ProtocolsList", traits: {"smithy.api#required" => {}}))
    ProtocolsListData.add_member(:previous_protocols_list, ::Smithy::Schema::Shapes::MemberShape.new(target: PreviousProtocolsList, name: "PreviousProtocolsList"))
    ProtocolsListData.type = Types::ProtocolsListData
    ProtocolsListDataSummary.add_member(:list_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ListArn"))
    ProtocolsListDataSummary.add_member(:list_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ListId, name: "ListId"))
    ProtocolsListDataSummary.add_member(:list_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ListName"))
    ProtocolsListDataSummary.add_member(:protocols_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtocolsList, name: "ProtocolsList"))
    ProtocolsListDataSummary.type = Types::ProtocolsListDataSummary
    ProtocolsListsData.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtocolsListDataSummary, name: "member"))
    PutAdminAccountRequest.add_member(:admin_account, ::Smithy::Schema::Shapes::MemberShape.new(target: AWSAccountId, name: "AdminAccount", traits: {"smithy.api#required" => {}}))
    PutAdminAccountRequest.add_member(:admin_scope, ::Smithy::Schema::Shapes::MemberShape.new(target: AdminScope, name: "AdminScope"))
    PutAdminAccountRequest.type = Types::PutAdminAccountRequest
    PutAppsListRequest.add_member(:apps_list, ::Smithy::Schema::Shapes::MemberShape.new(target: AppsListData, name: "AppsList", traits: {"smithy.api#required" => {}}))
    PutAppsListRequest.add_member(:tag_list, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "TagList"))
    PutAppsListRequest.type = Types::PutAppsListRequest
    PutAppsListResponse.add_member(:apps_list, ::Smithy::Schema::Shapes::MemberShape.new(target: AppsListData, name: "AppsList"))
    PutAppsListResponse.add_member(:apps_list_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "AppsListArn"))
    PutAppsListResponse.type = Types::PutAppsListResponse
    PutNotificationChannelRequest.add_member(:sns_topic_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "SnsTopicArn", traits: {"smithy.api#required" => {}}))
    PutNotificationChannelRequest.add_member(:sns_role_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "SnsRoleName", traits: {"smithy.api#required" => {}}))
    PutNotificationChannelRequest.type = Types::PutNotificationChannelRequest
    PutPolicyRequest.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: Policy, name: "Policy", traits: {"smithy.api#required" => {}}))
    PutPolicyRequest.add_member(:tag_list, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "TagList"))
    PutPolicyRequest.type = Types::PutPolicyRequest
    PutPolicyResponse.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: Policy, name: "Policy"))
    PutPolicyResponse.add_member(:policy_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "PolicyArn"))
    PutPolicyResponse.type = Types::PutPolicyResponse
    PutProtocolsListRequest.add_member(:protocols_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtocolsListData, name: "ProtocolsList", traits: {"smithy.api#required" => {}}))
    PutProtocolsListRequest.add_member(:tag_list, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "TagList"))
    PutProtocolsListRequest.type = Types::PutProtocolsListRequest
    PutProtocolsListResponse.add_member(:protocols_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtocolsListData, name: "ProtocolsList"))
    PutProtocolsListResponse.add_member(:protocols_list_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ProtocolsListArn"))
    PutProtocolsListResponse.type = Types::PutProtocolsListResponse
    PutResourceSetRequest.add_member(:resource_set, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceSet, name: "ResourceSet", traits: {"smithy.api#required" => {}}))
    PutResourceSetRequest.add_member(:tag_list, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "TagList"))
    PutResourceSetRequest.type = Types::PutResourceSetRequest
    PutResourceSetResponse.add_member(:resource_set, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceSet, name: "ResourceSet", traits: {"smithy.api#required" => {}}))
    PutResourceSetResponse.add_member(:resource_set_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ResourceSetArn", traits: {"smithy.api#required" => {}}))
    PutResourceSetResponse.type = Types::PutResourceSetResponse
    RegionScope.add_member(:regions, ::Smithy::Schema::Shapes::MemberShape.new(target: AWSRegionList, name: "Regions"))
    RegionScope.add_member(:all_regions_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "AllRegionsEnabled", traits: {"smithy.api#default" => false}))
    RegionScope.type = Types::RegionScope
    RemediationAction.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: LengthBoundedString, name: "Description"))
    RemediationAction.add_member(:ec2_create_route_action, ::Smithy::Schema::Shapes::MemberShape.new(target: EC2CreateRouteAction, name: "EC2CreateRouteAction"))
    RemediationAction.add_member(:ec2_replace_route_action, ::Smithy::Schema::Shapes::MemberShape.new(target: EC2ReplaceRouteAction, name: "EC2ReplaceRouteAction"))
    RemediationAction.add_member(:ec2_delete_route_action, ::Smithy::Schema::Shapes::MemberShape.new(target: EC2DeleteRouteAction, name: "EC2DeleteRouteAction"))
    RemediationAction.add_member(:ec2_copy_route_table_action, ::Smithy::Schema::Shapes::MemberShape.new(target: EC2CopyRouteTableAction, name: "EC2CopyRouteTableAction"))
    RemediationAction.add_member(:ec2_replace_route_table_association_action, ::Smithy::Schema::Shapes::MemberShape.new(target: EC2ReplaceRouteTableAssociationAction, name: "EC2ReplaceRouteTableAssociationAction"))
    RemediationAction.add_member(:ec2_associate_route_table_action, ::Smithy::Schema::Shapes::MemberShape.new(target: EC2AssociateRouteTableAction, name: "EC2AssociateRouteTableAction"))
    RemediationAction.add_member(:ec2_create_route_table_action, ::Smithy::Schema::Shapes::MemberShape.new(target: EC2CreateRouteTableAction, name: "EC2CreateRouteTableAction"))
    RemediationAction.add_member(:fms_policy_update_firewall_creation_config_action, ::Smithy::Schema::Shapes::MemberShape.new(target: FMSPolicyUpdateFirewallCreationConfigAction, name: "FMSPolicyUpdateFirewallCreationConfigAction"))
    RemediationAction.add_member(:create_network_acl_action, ::Smithy::Schema::Shapes::MemberShape.new(target: CreateNetworkAclAction, name: "CreateNetworkAclAction"))
    RemediationAction.add_member(:replace_network_acl_association_action, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplaceNetworkAclAssociationAction, name: "ReplaceNetworkAclAssociationAction"))
    RemediationAction.add_member(:create_network_acl_entries_action, ::Smithy::Schema::Shapes::MemberShape.new(target: CreateNetworkAclEntriesAction, name: "CreateNetworkAclEntriesAction"))
    RemediationAction.add_member(:delete_network_acl_entries_action, ::Smithy::Schema::Shapes::MemberShape.new(target: DeleteNetworkAclEntriesAction, name: "DeleteNetworkAclEntriesAction"))
    RemediationAction.type = Types::RemediationAction
    RemediationActionType.add_member(:remove, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Remove", traits: {"smithy.api#enumValue" => "REMOVE"}))
    RemediationActionType.add_member(:modify, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Modify", traits: {"smithy.api#enumValue" => "MODIFY"}))
    RemediationActionWithOrder.add_member(:remediation_action, ::Smithy::Schema::Shapes::MemberShape.new(target: RemediationAction, name: "RemediationAction"))
    RemediationActionWithOrder.add_member(:order, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicInteger, name: "Order", traits: {"smithy.api#default" => 0}))
    RemediationActionWithOrder.type = Types::RemediationActionWithOrder
    ReplaceNetworkAclAssociationAction.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: LengthBoundedString, name: "Description"))
    ReplaceNetworkAclAssociationAction.add_member(:association_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionTarget, name: "AssociationId"))
    ReplaceNetworkAclAssociationAction.add_member(:network_acl_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionTarget, name: "NetworkAclId"))
    ReplaceNetworkAclAssociationAction.add_member(:fms_can_remediate, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "FMSCanRemediate", traits: {"smithy.api#default" => false}))
    ReplaceNetworkAclAssociationAction.type = Types::ReplaceNetworkAclAssociationAction
    Resource.add_member(:uri, ::Smithy::Schema::Shapes::MemberShape.new(target: Identifier, name: "URI", traits: {"smithy.api#required" => {}}))
    Resource.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AWSAccountId, name: "AccountId"))
    Resource.type = Types::Resource
    ResourceArnList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "member"))
    ResourceIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "member"))
    ResourceList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Resource, name: "member"))
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceSet.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Base62Id, name: "Id"))
    ResourceSet.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "Name", traits: {"smithy.api#required" => {}}))
    ResourceSet.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    ResourceSet.add_member(:update_token, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateToken, name: "UpdateToken"))
    ResourceSet.add_member(:resource_type_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTypeList, name: "ResourceTypeList", traits: {"smithy.api#required" => {}}))
    ResourceSet.add_member(:last_update_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeStamp, name: "LastUpdateTime"))
    ResourceSet.add_member(:resource_set_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceSetStatus, name: "ResourceSetStatus"))
    ResourceSet.type = Types::ResourceSet
    ResourceSetIds.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Base62Id, name: "member"))
    ResourceSetStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    ResourceSetStatus.add_member(:out_of_admin_scope, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OUT_OF_ADMIN_SCOPE", traits: {"smithy.api#enumValue" => "OUT_OF_ADMIN_SCOPE"}))
    ResourceSetSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Base62Id, name: "Id"))
    ResourceSetSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "Name"))
    ResourceSetSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    ResourceSetSummary.add_member(:last_update_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeStamp, name: "LastUpdateTime"))
    ResourceSetSummary.add_member(:resource_set_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceSetStatus, name: "ResourceSetStatus"))
    ResourceSetSummary.type = Types::ResourceSetSummary
    ResourceSetSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceSetSummary, name: "member"))
    ResourceTag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTagKey, name: "Key", traits: {"smithy.api#required" => {}}))
    ResourceTag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTagValue, name: "Value"))
    ResourceTag.type = Types::ResourceTag
    ResourceTagLogicalOperator.add_member(:and, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AND", traits: {"smithy.api#enumValue" => "AND"}))
    ResourceTagLogicalOperator.add_member(:or, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OR", traits: {"smithy.api#enumValue" => "OR"}))
    ResourceTags.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTag, name: "member"))
    ResourceTypeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "member"))
    ResourceViolation.add_member(:aws_vpc_security_group_violation, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsVPCSecurityGroupViolation, name: "AwsVPCSecurityGroupViolation"))
    ResourceViolation.add_member(:aws_ec2_network_interface_violation, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsEc2NetworkInterfaceViolation, name: "AwsEc2NetworkInterfaceViolation"))
    ResourceViolation.add_member(:aws_ec2_instance_violation, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsEc2InstanceViolation, name: "AwsEc2InstanceViolation"))
    ResourceViolation.add_member(:network_firewall_missing_firewall_violation, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkFirewallMissingFirewallViolation, name: "NetworkFirewallMissingFirewallViolation"))
    ResourceViolation.add_member(:network_firewall_missing_subnet_violation, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkFirewallMissingSubnetViolation, name: "NetworkFirewallMissingSubnetViolation"))
    ResourceViolation.add_member(:network_firewall_missing_expected_rt_violation, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkFirewallMissingExpectedRTViolation, name: "NetworkFirewallMissingExpectedRTViolation"))
    ResourceViolation.add_member(:network_firewall_policy_modified_violation, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkFirewallPolicyModifiedViolation, name: "NetworkFirewallPolicyModifiedViolation"))
    ResourceViolation.add_member(:network_firewall_internet_traffic_not_inspected_violation, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkFirewallInternetTrafficNotInspectedViolation, name: "NetworkFirewallInternetTrafficNotInspectedViolation"))
    ResourceViolation.add_member(:network_firewall_invalid_route_configuration_violation, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkFirewallInvalidRouteConfigurationViolation, name: "NetworkFirewallInvalidRouteConfigurationViolation"))
    ResourceViolation.add_member(:network_firewall_black_hole_route_detected_violation, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkFirewallBlackHoleRouteDetectedViolation, name: "NetworkFirewallBlackHoleRouteDetectedViolation"))
    ResourceViolation.add_member(:network_firewall_unexpected_firewall_routes_violation, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkFirewallUnexpectedFirewallRoutesViolation, name: "NetworkFirewallUnexpectedFirewallRoutesViolation"))
    ResourceViolation.add_member(:network_firewall_unexpected_gateway_routes_violation, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkFirewallUnexpectedGatewayRoutesViolation, name: "NetworkFirewallUnexpectedGatewayRoutesViolation"))
    ResourceViolation.add_member(:network_firewall_missing_expected_routes_violation, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkFirewallMissingExpectedRoutesViolation, name: "NetworkFirewallMissingExpectedRoutesViolation"))
    ResourceViolation.add_member(:dns_rule_group_priority_conflict_violation, ::Smithy::Schema::Shapes::MemberShape.new(target: DnsRuleGroupPriorityConflictViolation, name: "DnsRuleGroupPriorityConflictViolation"))
    ResourceViolation.add_member(:dns_duplicate_rule_group_violation, ::Smithy::Schema::Shapes::MemberShape.new(target: DnsDuplicateRuleGroupViolation, name: "DnsDuplicateRuleGroupViolation"))
    ResourceViolation.add_member(:dns_rule_group_limit_exceeded_violation, ::Smithy::Schema::Shapes::MemberShape.new(target: DnsRuleGroupLimitExceededViolation, name: "DnsRuleGroupLimitExceededViolation"))
    ResourceViolation.add_member(:firewall_subnet_is_out_of_scope_violation, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallSubnetIsOutOfScopeViolation, name: "FirewallSubnetIsOutOfScopeViolation"))
    ResourceViolation.add_member(:route_has_out_of_scope_endpoint_violation, ::Smithy::Schema::Shapes::MemberShape.new(target: RouteHasOutOfScopeEndpointViolation, name: "RouteHasOutOfScopeEndpointViolation"))
    ResourceViolation.add_member(:third_party_firewall_missing_firewall_violation, ::Smithy::Schema::Shapes::MemberShape.new(target: ThirdPartyFirewallMissingFirewallViolation, name: "ThirdPartyFirewallMissingFirewallViolation"))
    ResourceViolation.add_member(:third_party_firewall_missing_subnet_violation, ::Smithy::Schema::Shapes::MemberShape.new(target: ThirdPartyFirewallMissingSubnetViolation, name: "ThirdPartyFirewallMissingSubnetViolation"))
    ResourceViolation.add_member(:third_party_firewall_missing_expected_route_table_violation, ::Smithy::Schema::Shapes::MemberShape.new(target: ThirdPartyFirewallMissingExpectedRouteTableViolation, name: "ThirdPartyFirewallMissingExpectedRouteTableViolation"))
    ResourceViolation.add_member(:firewall_subnet_missing_vpc_endpoint_violation, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallSubnetMissingVPCEndpointViolation, name: "FirewallSubnetMissingVPCEndpointViolation"))
    ResourceViolation.add_member(:invalid_network_acl_entries_violation, ::Smithy::Schema::Shapes::MemberShape.new(target: InvalidNetworkAclEntriesViolation, name: "InvalidNetworkAclEntriesViolation"))
    ResourceViolation.add_member(:possible_remediation_actions, ::Smithy::Schema::Shapes::MemberShape.new(target: PossibleRemediationActions, name: "PossibleRemediationActions"))
    ResourceViolation.add_member(:web_acl_has_incompatible_configuration_violation, ::Smithy::Schema::Shapes::MemberShape.new(target: WebACLHasIncompatibleConfigurationViolation, name: "WebACLHasIncompatibleConfigurationViolation"))
    ResourceViolation.add_member(:web_acl_has_out_of_scope_resources_violation, ::Smithy::Schema::Shapes::MemberShape.new(target: WebACLHasOutOfScopeResourcesViolation, name: "WebACLHasOutOfScopeResourcesViolation"))
    ResourceViolation.type = Types::ResourceViolation
    ResourceViolations.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceViolation, name: "member"))
    Route.add_member(:destination_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationType, name: "DestinationType"))
    Route.add_member(:target_type, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetType, name: "TargetType"))
    Route.add_member(:destination, ::Smithy::Schema::Shapes::MemberShape.new(target: LengthBoundedString, name: "Destination"))
    Route.add_member(:target, ::Smithy::Schema::Shapes::MemberShape.new(target: LengthBoundedString, name: "Target"))
    Route.type = Types::Route
    RouteHasOutOfScopeEndpointViolation.add_member(:subnet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "SubnetId"))
    RouteHasOutOfScopeEndpointViolation.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "VpcId"))
    RouteHasOutOfScopeEndpointViolation.add_member(:route_table_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "RouteTableId"))
    RouteHasOutOfScopeEndpointViolation.add_member(:violating_routes, ::Smithy::Schema::Shapes::MemberShape.new(target: Routes, name: "ViolatingRoutes"))
    RouteHasOutOfScopeEndpointViolation.add_member(:subnet_availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: LengthBoundedString, name: "SubnetAvailabilityZone"))
    RouteHasOutOfScopeEndpointViolation.add_member(:subnet_availability_zone_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LengthBoundedString, name: "SubnetAvailabilityZoneId"))
    RouteHasOutOfScopeEndpointViolation.add_member(:current_firewall_subnet_route_table, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "CurrentFirewallSubnetRouteTable"))
    RouteHasOutOfScopeEndpointViolation.add_member(:firewall_subnet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "FirewallSubnetId"))
    RouteHasOutOfScopeEndpointViolation.add_member(:firewall_subnet_routes, ::Smithy::Schema::Shapes::MemberShape.new(target: Routes, name: "FirewallSubnetRoutes"))
    RouteHasOutOfScopeEndpointViolation.add_member(:internet_gateway_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "InternetGatewayId"))
    RouteHasOutOfScopeEndpointViolation.add_member(:current_internet_gateway_route_table, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "CurrentInternetGatewayRouteTable"))
    RouteHasOutOfScopeEndpointViolation.add_member(:internet_gateway_routes, ::Smithy::Schema::Shapes::MemberShape.new(target: Routes, name: "InternetGatewayRoutes"))
    RouteHasOutOfScopeEndpointViolation.type = Types::RouteHasOutOfScopeEndpointViolation
    Routes.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Route, name: "member"))
    RuleOrder.add_member(:strict_order, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STRICT_ORDER", traits: {"smithy.api#enumValue" => "STRICT_ORDER"}))
    RuleOrder.add_member(:default_action_order, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEFAULT_ACTION_ORDER", traits: {"smithy.api#enumValue" => "DEFAULT_ACTION_ORDER"}))
    SecurityGroupRemediationAction.add_member(:remediation_action_type, ::Smithy::Schema::Shapes::MemberShape.new(target: RemediationActionType, name: "RemediationActionType"))
    SecurityGroupRemediationAction.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: RemediationActionDescription, name: "Description"))
    SecurityGroupRemediationAction.add_member(:remediation_result, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupRuleDescription, name: "RemediationResult"))
    SecurityGroupRemediationAction.add_member(:is_default_action, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "IsDefaultAction", traits: {"smithy.api#default" => false}))
    SecurityGroupRemediationAction.type = Types::SecurityGroupRemediationAction
    SecurityGroupRemediationActions.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupRemediationAction, name: "member"))
    SecurityGroupRuleDescription.add_member(:ipv4_range, ::Smithy::Schema::Shapes::MemberShape.new(target: CIDR, name: "IPV4Range"))
    SecurityGroupRuleDescription.add_member(:ipv6_range, ::Smithy::Schema::Shapes::MemberShape.new(target: CIDR, name: "IPV6Range"))
    SecurityGroupRuleDescription.add_member(:prefix_list_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "PrefixListId"))
    SecurityGroupRuleDescription.add_member(:protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: LengthBoundedString, name: "Protocol"))
    SecurityGroupRuleDescription.add_member(:from_port, ::Smithy::Schema::Shapes::MemberShape.new(target: IPPortNumber, name: "FromPort"))
    SecurityGroupRuleDescription.add_member(:to_port, ::Smithy::Schema::Shapes::MemberShape.new(target: IPPortNumber, name: "ToPort"))
    SecurityGroupRuleDescription.type = Types::SecurityGroupRuleDescription
    SecurityServicePolicyData.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityServiceType, name: "Type", traits: {"smithy.api#required" => {}}))
    SecurityServicePolicyData.add_member(:managed_service_data, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedServiceData, name: "ManagedServiceData"))
    SecurityServicePolicyData.add_member(:policy_option, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyOption, name: "PolicyOption"))
    SecurityServicePolicyData.type = Types::SecurityServicePolicyData
    SecurityServiceType.add_member(:waf, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WAF", traits: {"smithy.api#enumValue" => "WAF"}))
    SecurityServiceType.add_member(:wafv2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WAFV2", traits: {"smithy.api#enumValue" => "WAFV2"}))
    SecurityServiceType.add_member(:shield_advanced, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SHIELD_ADVANCED", traits: {"smithy.api#enumValue" => "SHIELD_ADVANCED"}))
    SecurityServiceType.add_member(:security_groups_common, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SECURITY_GROUPS_COMMON", traits: {"smithy.api#enumValue" => "SECURITY_GROUPS_COMMON"}))
    SecurityServiceType.add_member(:security_groups_content_audit, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SECURITY_GROUPS_CONTENT_AUDIT", traits: {"smithy.api#enumValue" => "SECURITY_GROUPS_CONTENT_AUDIT"}))
    SecurityServiceType.add_member(:security_groups_usage_audit, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SECURITY_GROUPS_USAGE_AUDIT", traits: {"smithy.api#enumValue" => "SECURITY_GROUPS_USAGE_AUDIT"}))
    SecurityServiceType.add_member(:network_firewall, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NETWORK_FIREWALL", traits: {"smithy.api#enumValue" => "NETWORK_FIREWALL"}))
    SecurityServiceType.add_member(:dns_firewall, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DNS_FIREWALL", traits: {"smithy.api#enumValue" => "DNS_FIREWALL"}))
    SecurityServiceType.add_member(:third_party_firewall, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "THIRD_PARTY_FIREWALL", traits: {"smithy.api#enumValue" => "THIRD_PARTY_FIREWALL"}))
    SecurityServiceType.add_member(:import_network_firewall, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IMPORT_NETWORK_FIREWALL", traits: {"smithy.api#enumValue" => "IMPORT_NETWORK_FIREWALL"}))
    SecurityServiceType.add_member(:network_acl_common, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NETWORK_ACL_COMMON", traits: {"smithy.api#enumValue" => "NETWORK_ACL_COMMON"}))
    SecurityServiceTypeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityServiceType, name: "member"))
    StatefulEngineOptions.add_member(:rule_order, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleOrder, name: "RuleOrder"))
    StatefulEngineOptions.add_member(:stream_exception_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamExceptionPolicy, name: "StreamExceptionPolicy"))
    StatefulEngineOptions.type = Types::StatefulEngineOptions
    StatefulRuleGroup.add_member(:rule_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkFirewallResourceName, name: "RuleGroupName"))
    StatefulRuleGroup.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "ResourceId"))
    StatefulRuleGroup.add_member(:priority, ::Smithy::Schema::Shapes::MemberShape.new(target: PriorityNumber, name: "Priority"))
    StatefulRuleGroup.add_member(:override, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkFirewallStatefulRuleGroupOverride, name: "Override"))
    StatefulRuleGroup.type = Types::StatefulRuleGroup
    StatefulRuleGroupList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: StatefulRuleGroup, name: "member"))
    StatelessRuleGroup.add_member(:rule_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkFirewallResourceName, name: "RuleGroupName"))
    StatelessRuleGroup.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "ResourceId"))
    StatelessRuleGroup.add_member(:priority, ::Smithy::Schema::Shapes::MemberShape.new(target: StatelessRuleGroupPriority, name: "Priority"))
    StatelessRuleGroup.type = Types::StatelessRuleGroup
    StatelessRuleGroupList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: StatelessRuleGroup, name: "member"))
    StreamExceptionPolicy.add_member(:drop, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DROP", traits: {"smithy.api#enumValue" => "DROP"}))
    StreamExceptionPolicy.add_member(:continue, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONTINUE", traits: {"smithy.api#enumValue" => "CONTINUE"}))
    StreamExceptionPolicy.add_member(:reject, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REJECT", traits: {"smithy.api#enumValue" => "REJECT"}))
    StreamExceptionPolicy.add_member(:fms_ignore, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FMS_IGNORE", traits: {"smithy.api#enumValue" => "FMS_IGNORE"}))
    Tag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "Key", traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "Value", traits: {"smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member"))
    TagList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Tag, name: "member"))
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tag_list, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "TagList", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    TargetType.add_member(:gateway, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Gateway", traits: {"smithy.api#enumValue" => "GATEWAY"}))
    TargetType.add_member(:carrier_gateway, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CarrierGateway", traits: {"smithy.api#enumValue" => "CARRIER_GATEWAY"}))
    TargetType.add_member(:instance, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Instance", traits: {"smithy.api#enumValue" => "INSTANCE"}))
    TargetType.add_member(:local_gateway, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LocalGateway", traits: {"smithy.api#enumValue" => "LOCAL_GATEWAY"}))
    TargetType.add_member(:nat_gateway, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NatGateway", traits: {"smithy.api#enumValue" => "NAT_GATEWAY"}))
    TargetType.add_member(:network_interface, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NetworkInterface", traits: {"smithy.api#enumValue" => "NETWORK_INTERFACE"}))
    TargetType.add_member(:vpc_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VPCEndpoint", traits: {"smithy.api#enumValue" => "VPC_ENDPOINT"}))
    TargetType.add_member(:vpc_peering_connection, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VPCPeeringConnection", traits: {"smithy.api#enumValue" => "VPC_PEERING_CONNECTION"}))
    TargetType.add_member(:egress_only_internet_gateway, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EgressOnlyInternetGateway", traits: {"smithy.api#enumValue" => "EGRESS_ONLY_INTERNET_GATEWAY"}))
    TargetType.add_member(:transit_gateway, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TransitGateway", traits: {"smithy.api#enumValue" => "TRANSIT_GATEWAY"}))
    TargetViolationReasons.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetViolationReason, name: "member"))
    ThirdPartyFirewall.add_member(:palo_alto_networks_cloud_ngfw, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PALO_ALTO_NETWORKS_CLOUD_NGFW", traits: {"smithy.api#enumValue" => "PALO_ALTO_NETWORKS_CLOUD_NGFW"}))
    ThirdPartyFirewall.add_member(:fortigate_cloud_native_firewall, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FORTIGATE_CLOUD_NATIVE_FIREWALL", traits: {"smithy.api#enumValue" => "FORTIGATE_CLOUD_NATIVE_FIREWALL"}))
    ThirdPartyFirewallAssociationStatus.add_member(:onboarding, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ONBOARDING", traits: {"smithy.api#enumValue" => "ONBOARDING"}))
    ThirdPartyFirewallAssociationStatus.add_member(:onboard_complete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ONBOARD_COMPLETE", traits: {"smithy.api#enumValue" => "ONBOARD_COMPLETE"}))
    ThirdPartyFirewallAssociationStatus.add_member(:offboarding, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OFFBOARDING", traits: {"smithy.api#enumValue" => "OFFBOARDING"}))
    ThirdPartyFirewallAssociationStatus.add_member(:offboard_complete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OFFBOARD_COMPLETE", traits: {"smithy.api#enumValue" => "OFFBOARD_COMPLETE"}))
    ThirdPartyFirewallAssociationStatus.add_member(:not_exist, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_EXIST", traits: {"smithy.api#enumValue" => "NOT_EXIST"}))
    ThirdPartyFirewallFirewallPolicies.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ThirdPartyFirewallFirewallPolicy, name: "member"))
    ThirdPartyFirewallFirewallPolicy.add_member(:firewall_policy_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallPolicyId, name: "FirewallPolicyId"))
    ThirdPartyFirewallFirewallPolicy.add_member(:firewall_policy_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallPolicyName, name: "FirewallPolicyName"))
    ThirdPartyFirewallFirewallPolicy.type = Types::ThirdPartyFirewallFirewallPolicy
    ThirdPartyFirewallMissingExpectedRouteTableViolation.add_member(:violation_target, ::Smithy::Schema::Shapes::MemberShape.new(target: ViolationTarget, name: "ViolationTarget"))
    ThirdPartyFirewallMissingExpectedRouteTableViolation.add_member(:vpc, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "VPC"))
    ThirdPartyFirewallMissingExpectedRouteTableViolation.add_member(:availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: LengthBoundedString, name: "AvailabilityZone"))
    ThirdPartyFirewallMissingExpectedRouteTableViolation.add_member(:current_route_table, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "CurrentRouteTable"))
    ThirdPartyFirewallMissingExpectedRouteTableViolation.add_member(:expected_route_table, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "ExpectedRouteTable"))
    ThirdPartyFirewallMissingExpectedRouteTableViolation.type = Types::ThirdPartyFirewallMissingExpectedRouteTableViolation
    ThirdPartyFirewallMissingFirewallViolation.add_member(:violation_target, ::Smithy::Schema::Shapes::MemberShape.new(target: ViolationTarget, name: "ViolationTarget"))
    ThirdPartyFirewallMissingFirewallViolation.add_member(:vpc, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "VPC"))
    ThirdPartyFirewallMissingFirewallViolation.add_member(:availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: LengthBoundedString, name: "AvailabilityZone"))
    ThirdPartyFirewallMissingFirewallViolation.add_member(:target_violation_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetViolationReason, name: "TargetViolationReason"))
    ThirdPartyFirewallMissingFirewallViolation.type = Types::ThirdPartyFirewallMissingFirewallViolation
    ThirdPartyFirewallMissingSubnetViolation.add_member(:violation_target, ::Smithy::Schema::Shapes::MemberShape.new(target: ViolationTarget, name: "ViolationTarget"))
    ThirdPartyFirewallMissingSubnetViolation.add_member(:vpc, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "VPC"))
    ThirdPartyFirewallMissingSubnetViolation.add_member(:availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: LengthBoundedString, name: "AvailabilityZone"))
    ThirdPartyFirewallMissingSubnetViolation.add_member(:target_violation_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetViolationReason, name: "TargetViolationReason"))
    ThirdPartyFirewallMissingSubnetViolation.type = Types::ThirdPartyFirewallMissingSubnetViolation
    ThirdPartyFirewallPolicy.add_member(:firewall_deployment_model, ::Smithy::Schema::Shapes::MemberShape.new(target: FirewallDeploymentModel, name: "FirewallDeploymentModel"))
    ThirdPartyFirewallPolicy.type = Types::ThirdPartyFirewallPolicy
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "TagKeys", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    ViolationDetail.add_member(:policy_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyId, name: "PolicyId", traits: {"smithy.api#required" => {}}))
    ViolationDetail.add_member(:member_account, ::Smithy::Schema::Shapes::MemberShape.new(target: AWSAccountId, name: "MemberAccount", traits: {"smithy.api#required" => {}}))
    ViolationDetail.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "ResourceId", traits: {"smithy.api#required" => {}}))
    ViolationDetail.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "ResourceType", traits: {"smithy.api#required" => {}}))
    ViolationDetail.add_member(:resource_violations, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceViolations, name: "ResourceViolations", traits: {"smithy.api#required" => {}}))
    ViolationDetail.add_member(:resource_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "ResourceTags"))
    ViolationDetail.add_member(:resource_description, ::Smithy::Schema::Shapes::MemberShape.new(target: LengthBoundedString, name: "ResourceDescription"))
    ViolationDetail.type = Types::ViolationDetail
    ViolationReason.add_member(:web_acl_missing_rule_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WebAclMissingRuleGroup", traits: {"smithy.api#enumValue" => "WEB_ACL_MISSING_RULE_GROUP"}))
    ViolationReason.add_member(:resource_missing_web_acl, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ResourceMissingWebAcl", traits: {"smithy.api#enumValue" => "RESOURCE_MISSING_WEB_ACL"}))
    ViolationReason.add_member(:resource_incorrect_web_acl, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ResourceIncorrectWebAcl", traits: {"smithy.api#enumValue" => "RESOURCE_INCORRECT_WEB_ACL"}))
    ViolationReason.add_member(:resource_missing_shield_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ResourceMissingShieldProtection", traits: {"smithy.api#enumValue" => "RESOURCE_MISSING_SHIELD_PROTECTION"}))
    ViolationReason.add_member(:resource_missing_webacl_or_shield_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ResourceMissingWebaclOrShieldProtection", traits: {"smithy.api#enumValue" => "RESOURCE_MISSING_WEB_ACL_OR_SHIELD_PROTECTION"}))
    ViolationReason.add_member(:resource_missing_security_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ResourceMissingSecurityGroup", traits: {"smithy.api#enumValue" => "RESOURCE_MISSING_SECURITY_GROUP"}))
    ViolationReason.add_member(:resource_violates_audit_security_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ResourceViolatesAuditSecurityGroup", traits: {"smithy.api#enumValue" => "RESOURCE_VIOLATES_AUDIT_SECURITY_GROUP"}))
    ViolationReason.add_member(:security_group_unused, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SecurityGroupUnused", traits: {"smithy.api#enumValue" => "SECURITY_GROUP_UNUSED"}))
    ViolationReason.add_member(:security_group_redundant, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SecurityGroupRedundant", traits: {"smithy.api#enumValue" => "SECURITY_GROUP_REDUNDANT"}))
    ViolationReason.add_member(:fms_created_security_group_edited, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FMSCreatedSecurityGroupEdited", traits: {"smithy.api#enumValue" => "FMS_CREATED_SECURITY_GROUP_EDITED"}))
    ViolationReason.add_member(:missing_firewall, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MissingFirewall", traits: {"smithy.api#enumValue" => "MISSING_FIREWALL"}))
    ViolationReason.add_member(:missing_firewall_subnet_in_az, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MissingFirewallSubnetInAZ", traits: {"smithy.api#enumValue" => "MISSING_FIREWALL_SUBNET_IN_AZ"}))
    ViolationReason.add_member(:missing_expected_route_table, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MissingExpectedRouteTable", traits: {"smithy.api#enumValue" => "MISSING_EXPECTED_ROUTE_TABLE"}))
    ViolationReason.add_member(:network_firewall_policy_modified, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NetworkFirewallPolicyModified", traits: {"smithy.api#enumValue" => "NETWORK_FIREWALL_POLICY_MODIFIED"}))
    ViolationReason.add_member(:firewall_subnet_is_out_of_scope, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FirewallSubnetIsOutOfScope", traits: {"smithy.api#enumValue" => "FIREWALL_SUBNET_IS_OUT_OF_SCOPE"}))
    ViolationReason.add_member(:internet_gateway_missing_expected_route, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InternetGatewayMissingExpectedRoute", traits: {"smithy.api#enumValue" => "INTERNET_GATEWAY_MISSING_EXPECTED_ROUTE"}))
    ViolationReason.add_member(:firewall_subnet_missing_expected_route, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FirewallSubnetMissingExpectedRoute", traits: {"smithy.api#enumValue" => "FIREWALL_SUBNET_MISSING_EXPECTED_ROUTE"}))
    ViolationReason.add_member(:unexpected_firewall_routes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UnexpectedFirewallRoutes", traits: {"smithy.api#enumValue" => "UNEXPECTED_FIREWALL_ROUTES"}))
    ViolationReason.add_member(:unexpected_target_gateway_routes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UnexpectedTargetGatewayRoutes", traits: {"smithy.api#enumValue" => "UNEXPECTED_TARGET_GATEWAY_ROUTES"}))
    ViolationReason.add_member(:traffic_inspection_crosses_az_boundary, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TrafficInspectionCrossesAZBoundary", traits: {"smithy.api#enumValue" => "TRAFFIC_INSPECTION_CROSSES_AZ_BOUNDARY"}))
    ViolationReason.add_member(:invalid_route_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InvalidRouteConfiguration", traits: {"smithy.api#enumValue" => "INVALID_ROUTE_CONFIGURATION"}))
    ViolationReason.add_member(:missing_target_gateway, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MissingTargetGateway", traits: {"smithy.api#enumValue" => "MISSING_TARGET_GATEWAY"}))
    ViolationReason.add_member(:internet_traffic_not_inspected, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InternetTrafficNotInspected", traits: {"smithy.api#enumValue" => "INTERNET_TRAFFIC_NOT_INSPECTED"}))
    ViolationReason.add_member(:black_hole_route_detected, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BlackHoleRouteDetected", traits: {"smithy.api#enumValue" => "BLACK_HOLE_ROUTE_DETECTED"}))
    ViolationReason.add_member(:black_hole_route_detected_in_firewall_subnet, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BlackHoleRouteDetectedInFirewallSubnet", traits: {"smithy.api#enumValue" => "BLACK_HOLE_ROUTE_DETECTED_IN_FIREWALL_SUBNET"}))
    ViolationReason.add_member(:resource_missing_dns_firewall, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ResourceMissingDnsFirewall", traits: {"smithy.api#enumValue" => "RESOURCE_MISSING_DNS_FIREWALL"}))
    ViolationReason.add_member(:route_has_out_of_scope_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RouteHasOutOfScopeEndpoint", traits: {"smithy.api#enumValue" => "ROUTE_HAS_OUT_OF_SCOPE_ENDPOINT"}))
    ViolationReason.add_member(:firewall_subnet_missing_vpc_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FirewallSubnetMissingVPCEndpoint", traits: {"smithy.api#enumValue" => "FIREWALL_SUBNET_MISSING_VPCE_ENDPOINT"}))
    ViolationReason.add_member(:invalid_network_acl_entry, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InvalidNetworkAclEntry", traits: {"smithy.api#enumValue" => "INVALID_NETWORK_ACL_ENTRY"}))
    ViolationReason.add_member(:web_acl_configuration_or_scope_of_use, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WebACLConfigurationOrScopeOfUse", traits: {"smithy.api#enumValue" => "WEB_ACL_CONFIGURATION_OR_SCOPE_OF_USE"}))
    WebACLHasIncompatibleConfigurationViolation.add_member(:web_acl_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "WebACLArn"))
    WebACLHasIncompatibleConfigurationViolation.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: LengthBoundedString, name: "Description"))
    WebACLHasIncompatibleConfigurationViolation.type = Types::WebACLHasIncompatibleConfigurationViolation
    WebACLHasOutOfScopeResourcesViolation.add_member(:web_acl_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "WebACLArn"))
    WebACLHasOutOfScopeResourcesViolation.add_member(:out_of_scope_resource_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArnList, name: "OutOfScopeResourceList"))
    WebACLHasOutOfScopeResourcesViolation.type = Types::WebACLHasOutOfScopeResourcesViolation

    AWSFMS20180101 = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.fms#AWSFMS_20180101"
      service.name = "AWSFMS20180101"
      service.version = "2018-01-01"
      service.traits = {"aws.api#service" => {"sdkId" => "FMS", "arnNamespace" => "fms", "cloudFormationName" => "FMS", "cloudTrailEventSource" => "fms.amazonaws.com", "endpointPrefix" => "fms"}, "aws.auth#sigv4" => {"name" => "fms"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "Firewall Management Service"}
      service.add_operation(:associate_admin_account, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fms#AssociateAdminAccount"
        operation.name = "AssociateAdminAccount"
        operation.input = AssociateAdminAccountRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InternalErrorException
        operation.errors << InvalidInputException
        operation.errors << InvalidOperationException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:associate_third_party_firewall, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fms#AssociateThirdPartyFirewall"
        operation.name = "AssociateThirdPartyFirewall"
        operation.input = AssociateThirdPartyFirewallRequest
        operation.output = AssociateThirdPartyFirewallResponse
        operation.errors << InternalErrorException
        operation.errors << InvalidInputException
        operation.errors << InvalidOperationException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:batch_associate_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fms#BatchAssociateResource"
        operation.name = "BatchAssociateResource"
        operation.input = BatchAssociateResourceRequest
        operation.output = BatchAssociateResourceResponse
        operation.errors << InternalErrorException
        operation.errors << InvalidInputException
        operation.errors << InvalidOperationException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:batch_disassociate_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fms#BatchDisassociateResource"
        operation.name = "BatchDisassociateResource"
        operation.input = BatchDisassociateResourceRequest
        operation.output = BatchDisassociateResourceResponse
        operation.errors << InternalErrorException
        operation.errors << InvalidInputException
        operation.errors << InvalidOperationException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:delete_apps_list, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fms#DeleteAppsList"
        operation.name = "DeleteAppsList"
        operation.input = DeleteAppsListRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InternalErrorException
        operation.errors << InvalidOperationException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:delete_notification_channel, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fms#DeleteNotificationChannel"
        operation.name = "DeleteNotificationChannel"
        operation.input = DeleteNotificationChannelRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InternalErrorException
        operation.errors << InvalidOperationException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:delete_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fms#DeletePolicy"
        operation.name = "DeletePolicy"
        operation.input = DeletePolicyRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InternalErrorException
        operation.errors << InvalidInputException
        operation.errors << InvalidOperationException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:delete_protocols_list, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fms#DeleteProtocolsList"
        operation.name = "DeleteProtocolsList"
        operation.input = DeleteProtocolsListRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InternalErrorException
        operation.errors << InvalidOperationException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:delete_resource_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fms#DeleteResourceSet"
        operation.name = "DeleteResourceSet"
        operation.input = DeleteResourceSetRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InternalErrorException
        operation.errors << InvalidInputException
        operation.errors << InvalidOperationException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:disassociate_admin_account, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fms#DisassociateAdminAccount"
        operation.name = "DisassociateAdminAccount"
        operation.input = DisassociateAdminAccountRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InternalErrorException
        operation.errors << InvalidOperationException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:disassociate_third_party_firewall, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fms#DisassociateThirdPartyFirewall"
        operation.name = "DisassociateThirdPartyFirewall"
        operation.input = DisassociateThirdPartyFirewallRequest
        operation.output = DisassociateThirdPartyFirewallResponse
        operation.errors << InternalErrorException
        operation.errors << InvalidInputException
        operation.errors << InvalidOperationException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:get_admin_account, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fms#GetAdminAccount"
        operation.name = "GetAdminAccount"
        operation.input = GetAdminAccountRequest
        operation.output = GetAdminAccountResponse
        operation.errors << InternalErrorException
        operation.errors << InvalidOperationException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:get_admin_scope, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fms#GetAdminScope"
        operation.name = "GetAdminScope"
        operation.input = GetAdminScopeRequest
        operation.output = GetAdminScopeResponse
        operation.errors << InternalErrorException
        operation.errors << InvalidInputException
        operation.errors << InvalidOperationException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:get_apps_list, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fms#GetAppsList"
        operation.name = "GetAppsList"
        operation.input = GetAppsListRequest
        operation.output = GetAppsListResponse
        operation.errors << InternalErrorException
        operation.errors << InvalidOperationException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:get_compliance_detail, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fms#GetComplianceDetail"
        operation.name = "GetComplianceDetail"
        operation.input = GetComplianceDetailRequest
        operation.output = GetComplianceDetailResponse
        operation.errors << InternalErrorException
        operation.errors << InvalidInputException
        operation.errors << InvalidOperationException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:get_notification_channel, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fms#GetNotificationChannel"
        operation.name = "GetNotificationChannel"
        operation.input = GetNotificationChannelRequest
        operation.output = GetNotificationChannelResponse
        operation.errors << InternalErrorException
        operation.errors << InvalidOperationException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:get_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fms#GetPolicy"
        operation.name = "GetPolicy"
        operation.input = GetPolicyRequest
        operation.output = GetPolicyResponse
        operation.errors << InternalErrorException
        operation.errors << InvalidOperationException
        operation.errors << InvalidTypeException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:get_protection_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fms#GetProtectionStatus"
        operation.name = "GetProtectionStatus"
        operation.input = GetProtectionStatusRequest
        operation.output = GetProtectionStatusResponse
        operation.errors << InternalErrorException
        operation.errors << InvalidInputException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:get_protocols_list, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fms#GetProtocolsList"
        operation.name = "GetProtocolsList"
        operation.input = GetProtocolsListRequest
        operation.output = GetProtocolsListResponse
        operation.errors << InternalErrorException
        operation.errors << InvalidOperationException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:get_resource_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fms#GetResourceSet"
        operation.name = "GetResourceSet"
        operation.input = GetResourceSetRequest
        operation.output = GetResourceSetResponse
        operation.errors << InternalErrorException
        operation.errors << InvalidInputException
        operation.errors << InvalidOperationException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:get_third_party_firewall_association_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fms#GetThirdPartyFirewallAssociationStatus"
        operation.name = "GetThirdPartyFirewallAssociationStatus"
        operation.input = GetThirdPartyFirewallAssociationStatusRequest
        operation.output = GetThirdPartyFirewallAssociationStatusResponse
        operation.errors << InternalErrorException
        operation.errors << InvalidInputException
        operation.errors << InvalidOperationException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:get_violation_details, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fms#GetViolationDetails"
        operation.name = "GetViolationDetails"
        operation.input = GetViolationDetailsRequest
        operation.output = GetViolationDetailsResponse
        operation.errors << InternalErrorException
        operation.errors << InvalidInputException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:list_admin_accounts_for_organization, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fms#ListAdminAccountsForOrganization"
        operation.name = "ListAdminAccountsForOrganization"
        operation.input = ListAdminAccountsForOrganizationRequest
        operation.output = ListAdminAccountsForOrganizationResponse
        operation.errors << InternalErrorException
        operation.errors << InvalidOperationException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
        operation[:paginator] = Paginators::ListAdminAccountsForOrganization.new
      end)
      service.add_operation(:list_admins_managing_account, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fms#ListAdminsManagingAccount"
        operation.name = "ListAdminsManagingAccount"
        operation.input = ListAdminsManagingAccountRequest
        operation.output = ListAdminsManagingAccountResponse
        operation.errors << InternalErrorException
        operation.errors << InvalidInputException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
        operation[:paginator] = Paginators::ListAdminsManagingAccount.new
      end)
      service.add_operation(:list_apps_lists, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fms#ListAppsLists"
        operation.name = "ListAppsLists"
        operation.input = ListAppsListsRequest
        operation.output = ListAppsListsResponse
        operation.errors << InternalErrorException
        operation.errors << InvalidOperationException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
        operation[:paginator] = Paginators::ListAppsLists.new
      end)
      service.add_operation(:list_compliance_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fms#ListComplianceStatus"
        operation.name = "ListComplianceStatus"
        operation.input = ListComplianceStatusRequest
        operation.output = ListComplianceStatusResponse
        operation.errors << InternalErrorException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
        operation[:paginator] = Paginators::ListComplianceStatus.new
      end)
      service.add_operation(:list_discovered_resources, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fms#ListDiscoveredResources"
        operation.name = "ListDiscoveredResources"
        operation.input = ListDiscoveredResourcesRequest
        operation.output = ListDiscoveredResourcesResponse
        operation.errors << InternalErrorException
        operation.errors << InvalidInputException
        operation.errors << InvalidOperationException
        operation.traits = {}
      end)
      service.add_operation(:list_member_accounts, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fms#ListMemberAccounts"
        operation.name = "ListMemberAccounts"
        operation.input = ListMemberAccountsRequest
        operation.output = ListMemberAccountsResponse
        operation.errors << InternalErrorException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
        operation[:paginator] = Paginators::ListMemberAccounts.new
      end)
      service.add_operation(:list_policies, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fms#ListPolicies"
        operation.name = "ListPolicies"
        operation.input = ListPoliciesRequest
        operation.output = ListPoliciesResponse
        operation.errors << InternalErrorException
        operation.errors << InvalidOperationException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
        operation[:paginator] = Paginators::ListPolicies.new
      end)
      service.add_operation(:list_protocols_lists, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fms#ListProtocolsLists"
        operation.name = "ListProtocolsLists"
        operation.input = ListProtocolsListsRequest
        operation.output = ListProtocolsListsResponse
        operation.errors << InternalErrorException
        operation.errors << InvalidOperationException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
        operation[:paginator] = Paginators::ListProtocolsLists.new
      end)
      service.add_operation(:list_resource_set_resources, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fms#ListResourceSetResources"
        operation.name = "ListResourceSetResources"
        operation.input = ListResourceSetResourcesRequest
        operation.output = ListResourceSetResourcesResponse
        operation.errors << InternalErrorException
        operation.errors << InvalidInputException
        operation.errors << InvalidOperationException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:list_resource_sets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fms#ListResourceSets"
        operation.name = "ListResourceSets"
        operation.input = ListResourceSetsRequest
        operation.output = ListResourceSetsResponse
        operation.errors << InternalErrorException
        operation.errors << InvalidInputException
        operation.errors << InvalidOperationException
        operation.traits = {}
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fms#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResponse
        operation.errors << InternalErrorException
        operation.errors << InvalidInputException
        operation.errors << InvalidOperationException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:list_third_party_firewall_firewall_policies, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fms#ListThirdPartyFirewallFirewallPolicies"
        operation.name = "ListThirdPartyFirewallFirewallPolicies"
        operation.input = ListThirdPartyFirewallFirewallPoliciesRequest
        operation.output = ListThirdPartyFirewallFirewallPoliciesResponse
        operation.errors << InternalErrorException
        operation.errors << InvalidInputException
        operation.errors << InvalidOperationException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
        operation[:paginator] = Paginators::ListThirdPartyFirewallFirewallPolicies.new
      end)
      service.add_operation(:put_admin_account, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fms#PutAdminAccount"
        operation.name = "PutAdminAccount"
        operation.input = PutAdminAccountRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InternalErrorException
        operation.errors << InvalidInputException
        operation.errors << InvalidOperationException
        operation.errors << LimitExceededException
        operation.traits = {}
      end)
      service.add_operation(:put_apps_list, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fms#PutAppsList"
        operation.name = "PutAppsList"
        operation.input = PutAppsListRequest
        operation.output = PutAppsListResponse
        operation.errors << InternalErrorException
        operation.errors << InvalidInputException
        operation.errors << InvalidOperationException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:put_notification_channel, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fms#PutNotificationChannel"
        operation.name = "PutNotificationChannel"
        operation.input = PutNotificationChannelRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InternalErrorException
        operation.errors << InvalidOperationException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:put_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fms#PutPolicy"
        operation.name = "PutPolicy"
        operation.input = PutPolicyRequest
        operation.output = PutPolicyResponse
        operation.errors << InternalErrorException
        operation.errors << InvalidInputException
        operation.errors << InvalidOperationException
        operation.errors << InvalidTypeException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:put_protocols_list, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fms#PutProtocolsList"
        operation.name = "PutProtocolsList"
        operation.input = PutProtocolsListRequest
        operation.output = PutProtocolsListResponse
        operation.errors << InternalErrorException
        operation.errors << InvalidInputException
        operation.errors << InvalidOperationException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:put_resource_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fms#PutResourceSet"
        operation.name = "PutResourceSet"
        operation.input = PutResourceSetRequest
        operation.output = PutResourceSetResponse
        operation.errors << InternalErrorException
        operation.errors << InvalidInputException
        operation.errors << InvalidOperationException
        operation.errors << LimitExceededException
        operation.traits = {}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fms#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = TagResourceResponse
        operation.errors << InternalErrorException
        operation.errors << InvalidInputException
        operation.errors << InvalidOperationException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fms#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = UntagResourceResponse
        operation.errors << InternalErrorException
        operation.errors << InvalidInputException
        operation.errors << InvalidOperationException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
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
