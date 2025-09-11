# frozen_string_literal: true

# This is generated code!

module Aws::FMS
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AWSAccountId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.fms#AWSAccountId', name: 'AWSAccountId', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^[0-9]+$"})
    AWSAccountIdList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.fms#AWSAccountIdList', name: 'AWSAccountIdList')
    AWSRegion = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.fms#AWSRegion', name: 'AWSRegion', traits: {"smithy.api#length" => {"min" => 6, "max" => 32}, "smithy.api#pattern" => "^(af|ap|ca|eu|il|me|mx|sa|us|cn|us-gov)-\\w+-\\d+$"})
    AWSRegionList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.fms#AWSRegionList', name: 'AWSRegionList', traits: {"smithy.api#length" => {"min" => 0, "max" => 64}})
    AccountIdList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.fms#AccountIdList', name: 'AccountIdList')
    AccountRoleStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.fms#AccountRoleStatus', name: 'AccountRoleStatus')
    AccountScope = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#AccountScope', name: 'AccountScope')
    ActionTarget = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#ActionTarget', name: 'ActionTarget')
    AdminAccountSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#AdminAccountSummary', name: 'AdminAccountSummary')
    AdminAccountSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.fms#AdminAccountSummaryList', name: 'AdminAccountSummaryList')
    AdminScope = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#AdminScope', name: 'AdminScope')
    App = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#App', name: 'App')
    AppsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.fms#AppsList', name: 'AppsList')
    AppsListData = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#AppsListData', name: 'AppsListData')
    AppsListDataSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#AppsListDataSummary', name: 'AppsListDataSummary')
    AppsListsData = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.fms#AppsListsData', name: 'AppsListsData')
    AssociateAdminAccountRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#AssociateAdminAccountRequest', name: 'AssociateAdminAccountRequest')
    AssociateThirdPartyFirewallRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#AssociateThirdPartyFirewallRequest', name: 'AssociateThirdPartyFirewallRequest')
    AssociateThirdPartyFirewallResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#AssociateThirdPartyFirewallResponse', name: 'AssociateThirdPartyFirewallResponse')
    AwsEc2InstanceViolation = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#AwsEc2InstanceViolation', name: 'AwsEc2InstanceViolation')
    AwsEc2NetworkInterfaceViolation = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#AwsEc2NetworkInterfaceViolation', name: 'AwsEc2NetworkInterfaceViolation')
    AwsEc2NetworkInterfaceViolations = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.fms#AwsEc2NetworkInterfaceViolations', name: 'AwsEc2NetworkInterfaceViolations')
    AwsVPCSecurityGroupViolation = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#AwsVPCSecurityGroupViolation', name: 'AwsVPCSecurityGroupViolation')
    Base62Id = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.fms#Base62Id', name: 'Base62Id', traits: {"smithy.api#length" => {"min" => 22, "max" => 22}, "smithy.api#pattern" => "^[a-z0-9A-Z]{22}$"})
    BasicInteger = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.fms#BasicInteger', name: 'BasicInteger', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => -2147483648, "max" => 2147483647}})
    BatchAssociateResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#BatchAssociateResourceRequest', name: 'BatchAssociateResourceRequest')
    BatchAssociateResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#BatchAssociateResourceResponse', name: 'BatchAssociateResourceResponse')
    BatchDisassociateResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#BatchDisassociateResourceRequest', name: 'BatchDisassociateResourceRequest')
    BatchDisassociateResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#BatchDisassociateResourceResponse', name: 'BatchDisassociateResourceResponse')
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.fms#Boolean', name: 'Boolean', traits: {"smithy.api#default" => false})
    BooleanObject = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.fms#BooleanObject', name: 'BooleanObject')
    CIDR = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.fms#CIDR', name: 'CIDR', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[a-f0-9:./]+$"})
    ComplianceViolator = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#ComplianceViolator', name: 'ComplianceViolator')
    ComplianceViolatorMetadata = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.fms#ComplianceViolatorMetadata', name: 'ComplianceViolatorMetadata')
    ComplianceViolators = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.fms#ComplianceViolators', name: 'ComplianceViolators')
    CreateNetworkAclAction = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#CreateNetworkAclAction', name: 'CreateNetworkAclAction')
    CreateNetworkAclEntriesAction = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#CreateNetworkAclEntriesAction', name: 'CreateNetworkAclEntriesAction')
    CustomerPolicyScopeId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.fms#CustomerPolicyScopeId', name: 'CustomerPolicyScopeId', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    CustomerPolicyScopeIdList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.fms#CustomerPolicyScopeIdList', name: 'CustomerPolicyScopeIdList')
    CustomerPolicyScopeIdType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.fms#CustomerPolicyScopeIdType', name: 'CustomerPolicyScopeIdType')
    CustomerPolicyScopeMap = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.fms#CustomerPolicyScopeMap', name: 'CustomerPolicyScopeMap')
    CustomerPolicyStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.fms#CustomerPolicyStatus', name: 'CustomerPolicyStatus')
    DeleteAppsListRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#DeleteAppsListRequest', name: 'DeleteAppsListRequest')
    DeleteNetworkAclEntriesAction = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#DeleteNetworkAclEntriesAction', name: 'DeleteNetworkAclEntriesAction')
    DeleteNotificationChannelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#DeleteNotificationChannelRequest', name: 'DeleteNotificationChannelRequest')
    DeletePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#DeletePolicyRequest', name: 'DeletePolicyRequest')
    DeleteProtocolsListRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#DeleteProtocolsListRequest', name: 'DeleteProtocolsListRequest')
    DeleteResourceSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#DeleteResourceSetRequest', name: 'DeleteResourceSetRequest')
    DependentServiceName = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.fms#DependentServiceName', name: 'DependentServiceName')
    Description = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.fms#Description', name: 'Description', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    DestinationType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.fms#DestinationType', name: 'DestinationType')
    DetailedInfo = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.fms#DetailedInfo', name: 'DetailedInfo', traits: {"smithy.api#length" => {"min" => 1, "max" => 4096}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=,+\\-@]*)$"})
    DisassociateAdminAccountRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#DisassociateAdminAccountRequest', name: 'DisassociateAdminAccountRequest')
    DisassociateThirdPartyFirewallRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#DisassociateThirdPartyFirewallRequest', name: 'DisassociateThirdPartyFirewallRequest')
    DisassociateThirdPartyFirewallResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#DisassociateThirdPartyFirewallResponse', name: 'DisassociateThirdPartyFirewallResponse')
    DiscoveredResource = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#DiscoveredResource', name: 'DiscoveredResource')
    DiscoveredResourceList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.fms#DiscoveredResourceList', name: 'DiscoveredResourceList')
    DnsDuplicateRuleGroupViolation = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#DnsDuplicateRuleGroupViolation', name: 'DnsDuplicateRuleGroupViolation')
    DnsRuleGroupLimitExceededViolation = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#DnsRuleGroupLimitExceededViolation', name: 'DnsRuleGroupLimitExceededViolation')
    DnsRuleGroupPriorities = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.fms#DnsRuleGroupPriorities', name: 'DnsRuleGroupPriorities')
    DnsRuleGroupPriority = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.fms#DnsRuleGroupPriority', name: 'DnsRuleGroupPriority', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 10000}})
    DnsRuleGroupPriorityConflictViolation = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#DnsRuleGroupPriorityConflictViolation', name: 'DnsRuleGroupPriorityConflictViolation')
    EC2AssociateRouteTableAction = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#EC2AssociateRouteTableAction', name: 'EC2AssociateRouteTableAction')
    EC2CopyRouteTableAction = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#EC2CopyRouteTableAction', name: 'EC2CopyRouteTableAction')
    EC2CreateRouteAction = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#EC2CreateRouteAction', name: 'EC2CreateRouteAction')
    EC2CreateRouteTableAction = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#EC2CreateRouteTableAction', name: 'EC2CreateRouteTableAction')
    EC2DeleteRouteAction = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#EC2DeleteRouteAction', name: 'EC2DeleteRouteAction')
    EC2ReplaceRouteAction = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#EC2ReplaceRouteAction', name: 'EC2ReplaceRouteAction')
    EC2ReplaceRouteTableAssociationAction = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#EC2ReplaceRouteTableAssociationAction', name: 'EC2ReplaceRouteTableAssociationAction')
    EntriesDescription = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.fms#EntriesDescription', name: 'EntriesDescription')
    EntriesWithConflicts = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.fms#EntriesWithConflicts', name: 'EntriesWithConflicts')
    EntryDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#EntryDescription', name: 'EntryDescription')
    EntryType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.fms#EntryType', name: 'EntryType')
    EntryViolation = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#EntryViolation', name: 'EntryViolation')
    EntryViolationReason = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.fms#EntryViolationReason', name: 'EntryViolationReason')
    EntryViolationReasons = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.fms#EntryViolationReasons', name: 'EntryViolationReasons')
    EntryViolations = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.fms#EntryViolations', name: 'EntryViolations')
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.fms#ErrorMessage', name: 'ErrorMessage')
    EvaluationResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#EvaluationResult', name: 'EvaluationResult')
    EvaluationResults = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.fms#EvaluationResults', name: 'EvaluationResults')
    ExpectedRoute = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#ExpectedRoute', name: 'ExpectedRoute')
    ExpectedRoutes = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.fms#ExpectedRoutes', name: 'ExpectedRoutes')
    FMSPolicyUpdateFirewallCreationConfigAction = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#FMSPolicyUpdateFirewallCreationConfigAction', name: 'FMSPolicyUpdateFirewallCreationConfigAction')
    FailedItem = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#FailedItem', name: 'FailedItem')
    FailedItemList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.fms#FailedItemList', name: 'FailedItemList')
    FailedItemReason = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.fms#FailedItemReason', name: 'FailedItemReason')
    FirewallDeploymentModel = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.fms#FirewallDeploymentModel', name: 'FirewallDeploymentModel')
    FirewallPolicyId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.fms#FirewallPolicyId', name: 'FirewallPolicyId', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    FirewallPolicyName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.fms#FirewallPolicyName', name: 'FirewallPolicyName', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    FirewallSubnetIsOutOfScopeViolation = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#FirewallSubnetIsOutOfScopeViolation', name: 'FirewallSubnetIsOutOfScopeViolation')
    FirewallSubnetMissingVPCEndpointViolation = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#FirewallSubnetMissingVPCEndpointViolation', name: 'FirewallSubnetMissingVPCEndpointViolation')
    GetAdminAccountRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#GetAdminAccountRequest', name: 'GetAdminAccountRequest')
    GetAdminAccountResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#GetAdminAccountResponse', name: 'GetAdminAccountResponse')
    GetAdminScopeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#GetAdminScopeRequest', name: 'GetAdminScopeRequest')
    GetAdminScopeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#GetAdminScopeResponse', name: 'GetAdminScopeResponse')
    GetAppsListRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#GetAppsListRequest', name: 'GetAppsListRequest')
    GetAppsListResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#GetAppsListResponse', name: 'GetAppsListResponse')
    GetComplianceDetailRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#GetComplianceDetailRequest', name: 'GetComplianceDetailRequest')
    GetComplianceDetailResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#GetComplianceDetailResponse', name: 'GetComplianceDetailResponse')
    GetNotificationChannelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#GetNotificationChannelRequest', name: 'GetNotificationChannelRequest')
    GetNotificationChannelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#GetNotificationChannelResponse', name: 'GetNotificationChannelResponse')
    GetPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#GetPolicyRequest', name: 'GetPolicyRequest')
    GetPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#GetPolicyResponse', name: 'GetPolicyResponse')
    GetProtectionStatusRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#GetProtectionStatusRequest', name: 'GetProtectionStatusRequest')
    GetProtectionStatusResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#GetProtectionStatusResponse', name: 'GetProtectionStatusResponse')
    GetProtocolsListRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#GetProtocolsListRequest', name: 'GetProtocolsListRequest')
    GetProtocolsListResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#GetProtocolsListResponse', name: 'GetProtocolsListResponse')
    GetResourceSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#GetResourceSetRequest', name: 'GetResourceSetRequest')
    GetResourceSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#GetResourceSetResponse', name: 'GetResourceSetResponse')
    GetThirdPartyFirewallAssociationStatusRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#GetThirdPartyFirewallAssociationStatusRequest', name: 'GetThirdPartyFirewallAssociationStatusRequest')
    GetThirdPartyFirewallAssociationStatusResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#GetThirdPartyFirewallAssociationStatusResponse', name: 'GetThirdPartyFirewallAssociationStatusResponse')
    GetViolationDetailsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#GetViolationDetailsRequest', name: 'GetViolationDetailsRequest')
    GetViolationDetailsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#GetViolationDetailsResponse', name: 'GetViolationDetailsResponse')
    IPPortNumber = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.fms#IPPortNumber', name: 'IPPortNumber', traits: {"smithy.api#range" => {"min" => 0, "max" => 65535}})
    IPPortNumberInteger = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.fms#IPPortNumberInteger', name: 'IPPortNumberInteger', traits: {"smithy.api#range" => {"min" => 0, "max" => 65535}})
    Identifier = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.fms#Identifier', name: 'Identifier', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    IdentifierList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.fms#IdentifierList', name: 'IdentifierList')
    IntegerObject = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.fms#IntegerObject', name: 'IntegerObject', traits: {"smithy.api#range" => {"min" => -2147483648, "max" => 2147483647}})
    IntegerObjectMinimum0 = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.fms#IntegerObjectMinimum0', name: 'IntegerObjectMinimum0', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 2147483647}})
    InternalErrorException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#InternalErrorException', name: 'InternalErrorException', traits: {"smithy.api#error" => "client"})
    InvalidInputException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#InvalidInputException', name: 'InvalidInputException', traits: {"smithy.api#error" => "client"})
    InvalidNetworkAclEntriesViolation = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#InvalidNetworkAclEntriesViolation', name: 'InvalidNetworkAclEntriesViolation')
    InvalidOperationException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#InvalidOperationException', name: 'InvalidOperationException', traits: {"smithy.api#error" => "client"})
    InvalidTypeException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#InvalidTypeException', name: 'InvalidTypeException', traits: {"smithy.api#error" => "client"})
    IssueInfoMap = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.fms#IssueInfoMap', name: 'IssueInfoMap')
    LengthBoundedNonEmptyString = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.fms#LengthBoundedNonEmptyString', name: 'LengthBoundedNonEmptyString', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    LengthBoundedString = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.fms#LengthBoundedString', name: 'LengthBoundedString', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    LengthBoundedStringList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.fms#LengthBoundedStringList', name: 'LengthBoundedStringList')
    LimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#LimitExceededException', name: 'LimitExceededException', traits: {"smithy.api#error" => "client"})
    ListAdminAccountsForOrganizationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#ListAdminAccountsForOrganizationRequest', name: 'ListAdminAccountsForOrganizationRequest')
    ListAdminAccountsForOrganizationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#ListAdminAccountsForOrganizationResponse', name: 'ListAdminAccountsForOrganizationResponse')
    ListAdminsManagingAccountRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#ListAdminsManagingAccountRequest', name: 'ListAdminsManagingAccountRequest')
    ListAdminsManagingAccountResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#ListAdminsManagingAccountResponse', name: 'ListAdminsManagingAccountResponse')
    ListAppsListsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#ListAppsListsRequest', name: 'ListAppsListsRequest')
    ListAppsListsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#ListAppsListsResponse', name: 'ListAppsListsResponse')
    ListComplianceStatusRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#ListComplianceStatusRequest', name: 'ListComplianceStatusRequest')
    ListComplianceStatusResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#ListComplianceStatusResponse', name: 'ListComplianceStatusResponse')
    ListDiscoveredResourcesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#ListDiscoveredResourcesRequest', name: 'ListDiscoveredResourcesRequest')
    ListDiscoveredResourcesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#ListDiscoveredResourcesResponse', name: 'ListDiscoveredResourcesResponse')
    ListId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.fms#ListId', name: 'ListId', traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[a-z0-9A-Z-]{36}$"})
    ListMemberAccountsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#ListMemberAccountsRequest', name: 'ListMemberAccountsRequest')
    ListMemberAccountsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#ListMemberAccountsResponse', name: 'ListMemberAccountsResponse')
    ListPoliciesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#ListPoliciesRequest', name: 'ListPoliciesRequest')
    ListPoliciesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#ListPoliciesResponse', name: 'ListPoliciesResponse')
    ListProtocolsListsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#ListProtocolsListsRequest', name: 'ListProtocolsListsRequest')
    ListProtocolsListsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#ListProtocolsListsResponse', name: 'ListProtocolsListsResponse')
    ListResourceSetResourcesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#ListResourceSetResourcesRequest', name: 'ListResourceSetResourcesRequest')
    ListResourceSetResourcesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#ListResourceSetResourcesResponse', name: 'ListResourceSetResourcesResponse')
    ListResourceSetsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#ListResourceSetsRequest', name: 'ListResourceSetsRequest')
    ListResourceSetsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#ListResourceSetsResponse', name: 'ListResourceSetsResponse')
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    ListThirdPartyFirewallFirewallPoliciesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#ListThirdPartyFirewallFirewallPoliciesRequest', name: 'ListThirdPartyFirewallFirewallPoliciesRequest')
    ListThirdPartyFirewallFirewallPoliciesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#ListThirdPartyFirewallFirewallPoliciesResponse', name: 'ListThirdPartyFirewallFirewallPoliciesResponse')
    ManagedServiceData = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.fms#ManagedServiceData', name: 'ManagedServiceData', traits: {"smithy.api#length" => {"min" => 1, "max" => 30000}, "smithy.api#pattern" => "^((?!\\\\[nr]).)+$"})
    MarketplaceSubscriptionOnboardingStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.fms#MarketplaceSubscriptionOnboardingStatus', name: 'MarketplaceSubscriptionOnboardingStatus')
    MemberAccounts = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.fms#MemberAccounts', name: 'MemberAccounts')
    Name = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.fms#Name', name: 'Name', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    NetworkAclCommonPolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#NetworkAclCommonPolicy', name: 'NetworkAclCommonPolicy')
    NetworkAclEntries = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.fms#NetworkAclEntries', name: 'NetworkAclEntries')
    NetworkAclEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#NetworkAclEntry', name: 'NetworkAclEntry')
    NetworkAclEntrySet = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#NetworkAclEntrySet', name: 'NetworkAclEntrySet')
    NetworkAclIcmpTypeCode = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#NetworkAclIcmpTypeCode', name: 'NetworkAclIcmpTypeCode')
    NetworkAclPortRange = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#NetworkAclPortRange', name: 'NetworkAclPortRange')
    NetworkAclRuleAction = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.fms#NetworkAclRuleAction', name: 'NetworkAclRuleAction')
    NetworkFirewallAction = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.fms#NetworkFirewallAction', name: 'NetworkFirewallAction', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9]+$"})
    NetworkFirewallActionList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.fms#NetworkFirewallActionList', name: 'NetworkFirewallActionList')
    NetworkFirewallBlackHoleRouteDetectedViolation = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#NetworkFirewallBlackHoleRouteDetectedViolation', name: 'NetworkFirewallBlackHoleRouteDetectedViolation')
    NetworkFirewallInternetTrafficNotInspectedViolation = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#NetworkFirewallInternetTrafficNotInspectedViolation', name: 'NetworkFirewallInternetTrafficNotInspectedViolation')
    NetworkFirewallInvalidRouteConfigurationViolation = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#NetworkFirewallInvalidRouteConfigurationViolation', name: 'NetworkFirewallInvalidRouteConfigurationViolation')
    NetworkFirewallMissingExpectedRTViolation = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#NetworkFirewallMissingExpectedRTViolation', name: 'NetworkFirewallMissingExpectedRTViolation')
    NetworkFirewallMissingExpectedRoutesViolation = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#NetworkFirewallMissingExpectedRoutesViolation', name: 'NetworkFirewallMissingExpectedRoutesViolation')
    NetworkFirewallMissingFirewallViolation = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#NetworkFirewallMissingFirewallViolation', name: 'NetworkFirewallMissingFirewallViolation')
    NetworkFirewallMissingSubnetViolation = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#NetworkFirewallMissingSubnetViolation', name: 'NetworkFirewallMissingSubnetViolation')
    NetworkFirewallOverrideAction = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.fms#NetworkFirewallOverrideAction', name: 'NetworkFirewallOverrideAction')
    NetworkFirewallPolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#NetworkFirewallPolicy', name: 'NetworkFirewallPolicy')
    NetworkFirewallPolicyDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#NetworkFirewallPolicyDescription', name: 'NetworkFirewallPolicyDescription')
    NetworkFirewallPolicyModifiedViolation = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#NetworkFirewallPolicyModifiedViolation', name: 'NetworkFirewallPolicyModifiedViolation')
    NetworkFirewallResourceName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.fms#NetworkFirewallResourceName', name: 'NetworkFirewallResourceName', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9-]+$"})
    NetworkFirewallStatefulRuleGroupOverride = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#NetworkFirewallStatefulRuleGroupOverride', name: 'NetworkFirewallStatefulRuleGroupOverride')
    NetworkFirewallUnexpectedFirewallRoutesViolation = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#NetworkFirewallUnexpectedFirewallRoutesViolation', name: 'NetworkFirewallUnexpectedFirewallRoutesViolation')
    NetworkFirewallUnexpectedGatewayRoutesViolation = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#NetworkFirewallUnexpectedGatewayRoutesViolation', name: 'NetworkFirewallUnexpectedGatewayRoutesViolation')
    OrderedRemediationActions = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.fms#OrderedRemediationActions', name: 'OrderedRemediationActions')
    OrganizationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.fms#OrganizationStatus', name: 'OrganizationStatus')
    OrganizationalUnitId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.fms#OrganizationalUnitId', name: 'OrganizationalUnitId', traits: {"smithy.api#length" => {"min" => 16, "max" => 68}, "smithy.api#pattern" => "^ou-[0-9a-z]{4,32}-[a-z0-9]{8,32}$"})
    OrganizationalUnitIdList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.fms#OrganizationalUnitIdList', name: 'OrganizationalUnitIdList')
    OrganizationalUnitScope = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#OrganizationalUnitScope', name: 'OrganizationalUnitScope')
    PaginationMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.fms#PaginationMaxResults', name: 'PaginationMaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    PaginationToken = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.fms#PaginationToken', name: 'PaginationToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 4096}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    PartialMatch = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#PartialMatch', name: 'PartialMatch')
    PartialMatches = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.fms#PartialMatches', name: 'PartialMatches')
    Policy = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#Policy', name: 'Policy')
    PolicyComplianceDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#PolicyComplianceDetail', name: 'PolicyComplianceDetail')
    PolicyComplianceStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#PolicyComplianceStatus', name: 'PolicyComplianceStatus')
    PolicyComplianceStatusList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.fms#PolicyComplianceStatusList', name: 'PolicyComplianceStatusList')
    PolicyComplianceStatusType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.fms#PolicyComplianceStatusType', name: 'PolicyComplianceStatusType')
    PolicyId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.fms#PolicyId', name: 'PolicyId', traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[a-z0-9A-Z-]{36}$"})
    PolicyOption = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#PolicyOption', name: 'PolicyOption')
    PolicySummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#PolicySummary', name: 'PolicySummary')
    PolicySummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.fms#PolicySummaryList', name: 'PolicySummaryList')
    PolicyTypeScope = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#PolicyTypeScope', name: 'PolicyTypeScope')
    PolicyUpdateToken = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.fms#PolicyUpdateToken', name: 'PolicyUpdateToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    PossibleRemediationAction = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#PossibleRemediationAction', name: 'PossibleRemediationAction')
    PossibleRemediationActionList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.fms#PossibleRemediationActionList', name: 'PossibleRemediationActionList')
    PossibleRemediationActions = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#PossibleRemediationActions', name: 'PossibleRemediationActions')
    PreviousAppsList = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.fms#PreviousAppsList', name: 'PreviousAppsList')
    PreviousListVersion = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.fms#PreviousListVersion', name: 'PreviousListVersion', traits: {"smithy.api#length" => {"min" => 1, "max" => 2}, "smithy.api#pattern" => "^\\d{1,2}$"})
    PreviousProtocolsList = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.fms#PreviousProtocolsList', name: 'PreviousProtocolsList')
    PriorityNumber = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.fms#PriorityNumber', name: 'PriorityNumber')
    ProtectionData = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.fms#ProtectionData', name: 'ProtectionData')
    Protocol = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.fms#Protocol', name: 'Protocol', traits: {"smithy.api#length" => {"min" => 1, "max" => 20}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    ProtocolsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.fms#ProtocolsList', name: 'ProtocolsList')
    ProtocolsListData = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#ProtocolsListData', name: 'ProtocolsListData')
    ProtocolsListDataSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#ProtocolsListDataSummary', name: 'ProtocolsListDataSummary')
    ProtocolsListsData = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.fms#ProtocolsListsData', name: 'ProtocolsListsData')
    PutAdminAccountRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#PutAdminAccountRequest', name: 'PutAdminAccountRequest')
    PutAppsListRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#PutAppsListRequest', name: 'PutAppsListRequest')
    PutAppsListResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#PutAppsListResponse', name: 'PutAppsListResponse')
    PutNotificationChannelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#PutNotificationChannelRequest', name: 'PutNotificationChannelRequest')
    PutPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#PutPolicyRequest', name: 'PutPolicyRequest')
    PutPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#PutPolicyResponse', name: 'PutPolicyResponse')
    PutProtocolsListRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#PutProtocolsListRequest', name: 'PutProtocolsListRequest')
    PutProtocolsListResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#PutProtocolsListResponse', name: 'PutProtocolsListResponse')
    PutResourceSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#PutResourceSetRequest', name: 'PutResourceSetRequest')
    PutResourceSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#PutResourceSetResponse', name: 'PutResourceSetResponse')
    ReferenceRule = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.fms#ReferenceRule', name: 'ReferenceRule')
    RegionScope = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#RegionScope', name: 'RegionScope')
    RemediationAction = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#RemediationAction', name: 'RemediationAction')
    RemediationActionDescription = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.fms#RemediationActionDescription', name: 'RemediationActionDescription', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => ".*"})
    RemediationActionType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.fms#RemediationActionType', name: 'RemediationActionType')
    RemediationActionWithOrder = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#RemediationActionWithOrder', name: 'RemediationActionWithOrder')
    ReplaceNetworkAclAssociationAction = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#ReplaceNetworkAclAssociationAction', name: 'ReplaceNetworkAclAssociationAction')
    Resource = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#Resource', name: 'Resource')
    ResourceArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.fms#ResourceArn', name: 'ResourceArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    ResourceArnList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.fms#ResourceArnList', name: 'ResourceArnList')
    ResourceCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.fms#ResourceCount', name: 'ResourceCount', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0}})
    ResourceDescription = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.fms#ResourceDescription', name: 'ResourceDescription', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    ResourceId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.fms#ResourceId', name: 'ResourceId', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    ResourceIdList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.fms#ResourceIdList', name: 'ResourceIdList')
    ResourceList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.fms#ResourceList', name: 'ResourceList')
    ResourceName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.fms#ResourceName', name: 'ResourceName', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client"})
    ResourceSet = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#ResourceSet', name: 'ResourceSet')
    ResourceSetIds = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.fms#ResourceSetIds', name: 'ResourceSetIds')
    ResourceSetStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.fms#ResourceSetStatus', name: 'ResourceSetStatus')
    ResourceSetSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#ResourceSetSummary', name: 'ResourceSetSummary')
    ResourceSetSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.fms#ResourceSetSummaryList', name: 'ResourceSetSummaryList')
    ResourceTag = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#ResourceTag', name: 'ResourceTag')
    ResourceTagKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.fms#ResourceTagKey', name: 'ResourceTagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:\\/=+\\-@*\\\\]*)$"})
    ResourceTagLogicalOperator = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.fms#ResourceTagLogicalOperator', name: 'ResourceTagLogicalOperator')
    ResourceTagValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.fms#ResourceTagValue', name: 'ResourceTagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:\\/=+\\-@*\\\\]*)$"})
    ResourceTags = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.fms#ResourceTags', name: 'ResourceTags', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    ResourceType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.fms#ResourceType', name: 'ResourceType', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    ResourceTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.fms#ResourceTypeList', name: 'ResourceTypeList')
    ResourceViolation = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#ResourceViolation', name: 'ResourceViolation')
    ResourceViolations = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.fms#ResourceViolations', name: 'ResourceViolations')
    Route = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#Route', name: 'Route')
    RouteHasOutOfScopeEndpointViolation = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#RouteHasOutOfScopeEndpointViolation', name: 'RouteHasOutOfScopeEndpointViolation')
    Routes = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.fms#Routes', name: 'Routes')
    RuleOrder = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.fms#RuleOrder', name: 'RuleOrder')
    SecurityGroupRemediationAction = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#SecurityGroupRemediationAction', name: 'SecurityGroupRemediationAction')
    SecurityGroupRemediationActions = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.fms#SecurityGroupRemediationActions', name: 'SecurityGroupRemediationActions')
    SecurityGroupRuleDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#SecurityGroupRuleDescription', name: 'SecurityGroupRuleDescription')
    SecurityServicePolicyData = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#SecurityServicePolicyData', name: 'SecurityServicePolicyData')
    SecurityServiceType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.fms#SecurityServiceType', name: 'SecurityServiceType')
    SecurityServiceTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.fms#SecurityServiceTypeList', name: 'SecurityServiceTypeList', traits: {"smithy.api#length" => {"min" => 0, "max" => 32}})
    StatefulEngineOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#StatefulEngineOptions', name: 'StatefulEngineOptions')
    StatefulRuleGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#StatefulRuleGroup', name: 'StatefulRuleGroup')
    StatefulRuleGroupList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.fms#StatefulRuleGroupList', name: 'StatefulRuleGroupList')
    StatelessRuleGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#StatelessRuleGroup', name: 'StatelessRuleGroup')
    StatelessRuleGroupList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.fms#StatelessRuleGroupList', name: 'StatelessRuleGroupList')
    StatelessRuleGroupPriority = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.fms#StatelessRuleGroupPriority', name: 'StatelessRuleGroupPriority', traits: {"smithy.api#range" => {"min" => 1, "max" => 65535}})
    StreamExceptionPolicy = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.fms#StreamExceptionPolicy', name: 'StreamExceptionPolicy')
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#Tag', name: 'Tag')
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.fms#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.fms#TagKeyList', name: 'TagKeyList', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.fms#TagList', name: 'TagList', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#TagResourceRequest', name: 'TagResourceRequest')
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#TagResourceResponse', name: 'TagResourceResponse')
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.fms#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    TargetType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.fms#TargetType', name: 'TargetType')
    TargetViolationReason = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.fms#TargetViolationReason', name: 'TargetViolationReason', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^\\w+$"})
    TargetViolationReasons = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.fms#TargetViolationReasons', name: 'TargetViolationReasons')
    ThirdPartyFirewall = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.fms#ThirdPartyFirewall', name: 'ThirdPartyFirewall')
    ThirdPartyFirewallAssociationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.fms#ThirdPartyFirewallAssociationStatus', name: 'ThirdPartyFirewallAssociationStatus')
    ThirdPartyFirewallFirewallPolicies = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.fms#ThirdPartyFirewallFirewallPolicies', name: 'ThirdPartyFirewallFirewallPolicies')
    ThirdPartyFirewallFirewallPolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#ThirdPartyFirewallFirewallPolicy', name: 'ThirdPartyFirewallFirewallPolicy')
    ThirdPartyFirewallMissingExpectedRouteTableViolation = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#ThirdPartyFirewallMissingExpectedRouteTableViolation', name: 'ThirdPartyFirewallMissingExpectedRouteTableViolation')
    ThirdPartyFirewallMissingFirewallViolation = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#ThirdPartyFirewallMissingFirewallViolation', name: 'ThirdPartyFirewallMissingFirewallViolation')
    ThirdPartyFirewallMissingSubnetViolation = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#ThirdPartyFirewallMissingSubnetViolation', name: 'ThirdPartyFirewallMissingSubnetViolation')
    ThirdPartyFirewallPolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#ThirdPartyFirewallPolicy', name: 'ThirdPartyFirewallPolicy')
    TimeStamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.fms#TimeStamp', name: 'TimeStamp')
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#UntagResourceRequest', name: 'UntagResourceRequest')
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#UntagResourceResponse', name: 'UntagResourceResponse')
    UpdateToken = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.fms#UpdateToken', name: 'UpdateToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    ViolationDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#ViolationDetail', name: 'ViolationDetail')
    ViolationReason = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.fms#ViolationReason', name: 'ViolationReason')
    ViolationTarget = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.fms#ViolationTarget', name: 'ViolationTarget', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => ".*"})
    WebACLHasIncompatibleConfigurationViolation = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#WebACLHasIncompatibleConfigurationViolation', name: 'WebACLHasIncompatibleConfigurationViolation')
    WebACLHasOutOfScopeResourcesViolation = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.fms#WebACLHasOutOfScopeResourcesViolation', name: 'WebACLHasOutOfScopeResourcesViolation')

    AWSAccountIdList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AWSAccountId)
    AWSRegionList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AWSRegion)
    AccountIdList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AWSAccountId)
    AccountRoleStatus.add_member(:ready, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Ready', traits: {"smithy.api#enumValue" => "READY"}))
    AccountRoleStatus.add_member(:creating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Creating', traits: {"smithy.api#enumValue" => "CREATING"}))
    AccountRoleStatus.add_member(:pending_deletion, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PendingDeletion', traits: {"smithy.api#enumValue" => "PENDING_DELETION"}))
    AccountRoleStatus.add_member(:deleting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Deleting', traits: {"smithy.api#enumValue" => "DELETING"}))
    AccountRoleStatus.add_member(:deleted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Deleted', traits: {"smithy.api#enumValue" => "DELETED"}))
    AccountScope.add_member(:accounts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountIdList, location_name: 'Accounts'))
    AccountScope.add_member(:all_accounts_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'AllAccountsEnabled', traits: {"smithy.api#default" => false}))
    AccountScope.add_member(:exclude_specified_accounts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'ExcludeSpecifiedAccounts', traits: {"smithy.api#default" => false}))
    AccountScope.type = Types::AccountScope
    ActionTarget.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'ResourceId'))
    ActionTarget.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LengthBoundedString, location_name: 'Description'))
    ActionTarget.type = Types::ActionTarget
    AdminAccountSummary.add_member(:admin_account, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AWSAccountId, location_name: 'AdminAccount'))
    AdminAccountSummary.add_member(:default_admin, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'DefaultAdmin', traits: {"smithy.api#default" => false}))
    AdminAccountSummary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationStatus, location_name: 'Status'))
    AdminAccountSummary.type = Types::AdminAccountSummary
    AdminAccountSummaryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdminAccountSummary)
    AdminScope.add_member(:account_scope, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountScope, location_name: 'AccountScope'))
    AdminScope.add_member(:organizational_unit_scope, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationalUnitScope, location_name: 'OrganizationalUnitScope'))
    AdminScope.add_member(:region_scope, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionScope, location_name: 'RegionScope'))
    AdminScope.add_member(:policy_type_scope, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyTypeScope, location_name: 'PolicyTypeScope'))
    AdminScope.type = Types::AdminScope
    App.add_member(:app_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'AppName', traits: {"smithy.api#required" => {}}))
    App.add_member(:protocol, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Protocol, location_name: 'Protocol', traits: {"smithy.api#required" => {}}))
    App.add_member(:port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IPPortNumber, location_name: 'Port', traits: {"smithy.api#required" => {}}))
    App.type = Types::App
    AppsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: App)
    AppsListData.add_member(:list_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListId, location_name: 'ListId'))
    AppsListData.add_member(:list_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'ListName', traits: {"smithy.api#required" => {}}))
    AppsListData.add_member(:list_update_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateToken, location_name: 'ListUpdateToken'))
    AppsListData.add_member(:create_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimeStamp, location_name: 'CreateTime'))
    AppsListData.add_member(:last_update_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimeStamp, location_name: 'LastUpdateTime'))
    AppsListData.add_member(:apps_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppsList, location_name: 'AppsList', traits: {"smithy.api#required" => {}}))
    AppsListData.add_member(:previous_apps_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PreviousAppsList, location_name: 'PreviousAppsList'))
    AppsListData.type = Types::AppsListData
    AppsListDataSummary.add_member(:list_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'ListArn'))
    AppsListDataSummary.add_member(:list_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListId, location_name: 'ListId'))
    AppsListDataSummary.add_member(:list_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'ListName'))
    AppsListDataSummary.add_member(:apps_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppsList, location_name: 'AppsList'))
    AppsListDataSummary.type = Types::AppsListDataSummary
    AppsListsData.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppsListDataSummary)
    AssociateAdminAccountRequest.add_member(:admin_account, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AWSAccountId, location_name: 'AdminAccount', traits: {"smithy.api#required" => {}}))
    AssociateAdminAccountRequest.type = Types::AssociateAdminAccountRequest
    AssociateThirdPartyFirewallRequest.add_member(:third_party_firewall, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThirdPartyFirewall, location_name: 'ThirdPartyFirewall', traits: {"smithy.api#required" => {}}))
    AssociateThirdPartyFirewallRequest.type = Types::AssociateThirdPartyFirewallRequest
    AssociateThirdPartyFirewallResponse.add_member(:third_party_firewall_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThirdPartyFirewallAssociationStatus, location_name: 'ThirdPartyFirewallStatus'))
    AssociateThirdPartyFirewallResponse.type = Types::AssociateThirdPartyFirewallResponse
    AwsEc2InstanceViolation.add_member(:violation_target, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ViolationTarget, location_name: 'ViolationTarget'))
    AwsEc2InstanceViolation.add_member(:aws_ec2_network_interface_violations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsEc2NetworkInterfaceViolations, location_name: 'AwsEc2NetworkInterfaceViolations'))
    AwsEc2InstanceViolation.type = Types::AwsEc2InstanceViolation
    AwsEc2NetworkInterfaceViolation.add_member(:violation_target, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ViolationTarget, location_name: 'ViolationTarget'))
    AwsEc2NetworkInterfaceViolation.add_member(:violating_security_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdList, location_name: 'ViolatingSecurityGroups'))
    AwsEc2NetworkInterfaceViolation.type = Types::AwsEc2NetworkInterfaceViolation
    AwsEc2NetworkInterfaceViolations.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsEc2NetworkInterfaceViolation)
    AwsVPCSecurityGroupViolation.add_member(:violation_target, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ViolationTarget, location_name: 'ViolationTarget'))
    AwsVPCSecurityGroupViolation.add_member(:violation_target_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LengthBoundedString, location_name: 'ViolationTargetDescription'))
    AwsVPCSecurityGroupViolation.add_member(:partial_matches, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PartialMatches, location_name: 'PartialMatches'))
    AwsVPCSecurityGroupViolation.add_member(:possible_security_group_remediation_actions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupRemediationActions, location_name: 'PossibleSecurityGroupRemediationActions'))
    AwsVPCSecurityGroupViolation.type = Types::AwsVPCSecurityGroupViolation
    BatchAssociateResourceRequest.add_member(:resource_set_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'ResourceSetIdentifier', traits: {"smithy.api#required" => {}}))
    BatchAssociateResourceRequest.add_member(:items, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentifierList, location_name: 'Items', traits: {"smithy.api#required" => {}}))
    BatchAssociateResourceRequest.type = Types::BatchAssociateResourceRequest
    BatchAssociateResourceResponse.add_member(:resource_set_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'ResourceSetIdentifier', traits: {"smithy.api#required" => {}}))
    BatchAssociateResourceResponse.add_member(:failed_items, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailedItemList, location_name: 'FailedItems', traits: {"smithy.api#required" => {}}))
    BatchAssociateResourceResponse.type = Types::BatchAssociateResourceResponse
    BatchDisassociateResourceRequest.add_member(:resource_set_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'ResourceSetIdentifier', traits: {"smithy.api#required" => {}}))
    BatchDisassociateResourceRequest.add_member(:items, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentifierList, location_name: 'Items', traits: {"smithy.api#required" => {}}))
    BatchDisassociateResourceRequest.type = Types::BatchDisassociateResourceRequest
    BatchDisassociateResourceResponse.add_member(:resource_set_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'ResourceSetIdentifier', traits: {"smithy.api#required" => {}}))
    BatchDisassociateResourceResponse.add_member(:failed_items, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailedItemList, location_name: 'FailedItems', traits: {"smithy.api#required" => {}}))
    BatchDisassociateResourceResponse.type = Types::BatchDisassociateResourceResponse
    ComplianceViolator.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'ResourceId'))
    ComplianceViolator.add_member(:violation_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ViolationReason, location_name: 'ViolationReason'))
    ComplianceViolator.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'ResourceType'))
    ComplianceViolator.add_member(:metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComplianceViolatorMetadata, location_name: 'Metadata'))
    ComplianceViolator.type = Types::ComplianceViolator
    ComplianceViolatorMetadata.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: LengthBoundedString)
    ComplianceViolatorMetadata.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: LengthBoundedString)
    ComplianceViolators.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComplianceViolator)
    CreateNetworkAclAction.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LengthBoundedString, location_name: 'Description'))
    CreateNetworkAclAction.add_member(:vpc, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActionTarget, location_name: 'Vpc'))
    CreateNetworkAclAction.add_member(:fms_can_remediate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'FMSCanRemediate', traits: {"smithy.api#default" => false}))
    CreateNetworkAclAction.type = Types::CreateNetworkAclAction
    CreateNetworkAclEntriesAction.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LengthBoundedString, location_name: 'Description'))
    CreateNetworkAclEntriesAction.add_member(:network_acl_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActionTarget, location_name: 'NetworkAclId'))
    CreateNetworkAclEntriesAction.add_member(:network_acl_entries_to_be_created, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntriesDescription, location_name: 'NetworkAclEntriesToBeCreated'))
    CreateNetworkAclEntriesAction.add_member(:fms_can_remediate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'FMSCanRemediate', traits: {"smithy.api#default" => false}))
    CreateNetworkAclEntriesAction.type = Types::CreateNetworkAclEntriesAction
    CustomerPolicyScopeIdList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerPolicyScopeId)
    CustomerPolicyScopeIdType.add_member(:account, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACCOUNT', traits: {"smithy.api#enumValue" => "ACCOUNT"}))
    CustomerPolicyScopeIdType.add_member(:org_unit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ORG_UNIT', traits: {"smithy.api#enumValue" => "ORG_UNIT"}))
    CustomerPolicyScopeMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerPolicyScopeIdType)
    CustomerPolicyScopeMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerPolicyScopeIdList)
    CustomerPolicyStatus.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    CustomerPolicyStatus.add_member(:out_of_admin_scope, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OUT_OF_ADMIN_SCOPE', traits: {"smithy.api#enumValue" => "OUT_OF_ADMIN_SCOPE"}))
    DeleteAppsListRequest.add_member(:list_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListId, location_name: 'ListId', traits: {"smithy.api#required" => {}}))
    DeleteAppsListRequest.type = Types::DeleteAppsListRequest
    DeleteNetworkAclEntriesAction.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LengthBoundedString, location_name: 'Description'))
    DeleteNetworkAclEntriesAction.add_member(:network_acl_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActionTarget, location_name: 'NetworkAclId'))
    DeleteNetworkAclEntriesAction.add_member(:network_acl_entries_to_be_deleted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntriesDescription, location_name: 'NetworkAclEntriesToBeDeleted'))
    DeleteNetworkAclEntriesAction.add_member(:fms_can_remediate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'FMSCanRemediate', traits: {"smithy.api#default" => false}))
    DeleteNetworkAclEntriesAction.type = Types::DeleteNetworkAclEntriesAction
    DeleteNotificationChannelRequest.type = Types::DeleteNotificationChannelRequest
    DeletePolicyRequest.add_member(:policy_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyId, location_name: 'PolicyId', traits: {"smithy.api#required" => {}}))
    DeletePolicyRequest.add_member(:delete_all_policy_resources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'DeleteAllPolicyResources', traits: {"smithy.api#default" => false}))
    DeletePolicyRequest.type = Types::DeletePolicyRequest
    DeleteProtocolsListRequest.add_member(:list_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListId, location_name: 'ListId', traits: {"smithy.api#required" => {}}))
    DeleteProtocolsListRequest.type = Types::DeleteProtocolsListRequest
    DeleteResourceSetRequest.add_member(:identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Base62Id, location_name: 'Identifier', traits: {"smithy.api#required" => {}}))
    DeleteResourceSetRequest.type = Types::DeleteResourceSetRequest
    DependentServiceName.add_member(:aws_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWSConfig', traits: {"smithy.api#enumValue" => "AWSCONFIG"}))
    DependentServiceName.add_member(:awswaf, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWSWAF', traits: {"smithy.api#enumValue" => "AWSWAF"}))
    DependentServiceName.add_member(:aws_shield_advanced, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWSShieldAdvanced', traits: {"smithy.api#enumValue" => "AWSSHIELD_ADVANCED"}))
    DependentServiceName.add_member(:aws_virtual_private_cloud, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWSVirtualPrivateCloud', traits: {"smithy.api#enumValue" => "AWSVPC"}))
    DestinationType.add_member(:ipv4, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IPV4', traits: {"smithy.api#enumValue" => "IPV4"}))
    DestinationType.add_member(:ipv6, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IPV6', traits: {"smithy.api#enumValue" => "IPV6"}))
    DestinationType.add_member(:prefix_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PrefixList', traits: {"smithy.api#enumValue" => "PREFIX_LIST"}))
    DisassociateAdminAccountRequest.type = Types::DisassociateAdminAccountRequest
    DisassociateThirdPartyFirewallRequest.add_member(:third_party_firewall, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThirdPartyFirewall, location_name: 'ThirdPartyFirewall', traits: {"smithy.api#required" => {}}))
    DisassociateThirdPartyFirewallRequest.type = Types::DisassociateThirdPartyFirewallRequest
    DisassociateThirdPartyFirewallResponse.add_member(:third_party_firewall_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThirdPartyFirewallAssociationStatus, location_name: 'ThirdPartyFirewallStatus'))
    DisassociateThirdPartyFirewallResponse.type = Types::DisassociateThirdPartyFirewallResponse
    DiscoveredResource.add_member(:uri, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'URI'))
    DiscoveredResource.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AWSAccountId, location_name: 'AccountId'))
    DiscoveredResource.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'Type'))
    DiscoveredResource.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'Name'))
    DiscoveredResource.type = Types::DiscoveredResource
    DiscoveredResourceList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DiscoveredResource)
    DnsDuplicateRuleGroupViolation.add_member(:violation_target, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ViolationTarget, location_name: 'ViolationTarget'))
    DnsDuplicateRuleGroupViolation.add_member(:violation_target_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LengthBoundedString, location_name: 'ViolationTargetDescription'))
    DnsDuplicateRuleGroupViolation.type = Types::DnsDuplicateRuleGroupViolation
    DnsRuleGroupLimitExceededViolation.add_member(:violation_target, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ViolationTarget, location_name: 'ViolationTarget'))
    DnsRuleGroupLimitExceededViolation.add_member(:violation_target_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LengthBoundedString, location_name: 'ViolationTargetDescription'))
    DnsRuleGroupLimitExceededViolation.add_member(:number_of_rule_groups_already_associated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BasicInteger, location_name: 'NumberOfRuleGroupsAlreadyAssociated', traits: {"smithy.api#default" => 0}))
    DnsRuleGroupLimitExceededViolation.type = Types::DnsRuleGroupLimitExceededViolation
    DnsRuleGroupPriorities.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DnsRuleGroupPriority)
    DnsRuleGroupPriorityConflictViolation.add_member(:violation_target, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ViolationTarget, location_name: 'ViolationTarget'))
    DnsRuleGroupPriorityConflictViolation.add_member(:violation_target_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LengthBoundedString, location_name: 'ViolationTargetDescription'))
    DnsRuleGroupPriorityConflictViolation.add_member(:conflicting_priority, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DnsRuleGroupPriority, location_name: 'ConflictingPriority', traits: {"smithy.api#default" => 0}))
    DnsRuleGroupPriorityConflictViolation.add_member(:conflicting_policy_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyId, location_name: 'ConflictingPolicyId'))
    DnsRuleGroupPriorityConflictViolation.add_member(:unavailable_priorities, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DnsRuleGroupPriorities, location_name: 'UnavailablePriorities'))
    DnsRuleGroupPriorityConflictViolation.type = Types::DnsRuleGroupPriorityConflictViolation
    EC2AssociateRouteTableAction.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LengthBoundedString, location_name: 'Description'))
    EC2AssociateRouteTableAction.add_member(:route_table_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActionTarget, location_name: 'RouteTableId', traits: {"smithy.api#required" => {}}))
    EC2AssociateRouteTableAction.add_member(:subnet_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActionTarget, location_name: 'SubnetId'))
    EC2AssociateRouteTableAction.add_member(:gateway_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActionTarget, location_name: 'GatewayId'))
    EC2AssociateRouteTableAction.type = Types::EC2AssociateRouteTableAction
    EC2CopyRouteTableAction.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LengthBoundedString, location_name: 'Description'))
    EC2CopyRouteTableAction.add_member(:vpc_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActionTarget, location_name: 'VpcId', traits: {"smithy.api#required" => {}}))
    EC2CopyRouteTableAction.add_member(:route_table_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActionTarget, location_name: 'RouteTableId', traits: {"smithy.api#required" => {}}))
    EC2CopyRouteTableAction.type = Types::EC2CopyRouteTableAction
    EC2CreateRouteAction.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LengthBoundedString, location_name: 'Description'))
    EC2CreateRouteAction.add_member(:destination_cidr_block, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CIDR, location_name: 'DestinationCidrBlock'))
    EC2CreateRouteAction.add_member(:destination_prefix_list_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'DestinationPrefixListId'))
    EC2CreateRouteAction.add_member(:destination_ipv6_cidr_block, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CIDR, location_name: 'DestinationIpv6CidrBlock'))
    EC2CreateRouteAction.add_member(:vpc_endpoint_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActionTarget, location_name: 'VpcEndpointId'))
    EC2CreateRouteAction.add_member(:gateway_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActionTarget, location_name: 'GatewayId'))
    EC2CreateRouteAction.add_member(:route_table_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActionTarget, location_name: 'RouteTableId', traits: {"smithy.api#required" => {}}))
    EC2CreateRouteAction.type = Types::EC2CreateRouteAction
    EC2CreateRouteTableAction.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LengthBoundedString, location_name: 'Description'))
    EC2CreateRouteTableAction.add_member(:vpc_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActionTarget, location_name: 'VpcId', traits: {"smithy.api#required" => {}}))
    EC2CreateRouteTableAction.type = Types::EC2CreateRouteTableAction
    EC2DeleteRouteAction.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LengthBoundedString, location_name: 'Description'))
    EC2DeleteRouteAction.add_member(:destination_cidr_block, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CIDR, location_name: 'DestinationCidrBlock'))
    EC2DeleteRouteAction.add_member(:destination_prefix_list_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'DestinationPrefixListId'))
    EC2DeleteRouteAction.add_member(:destination_ipv6_cidr_block, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CIDR, location_name: 'DestinationIpv6CidrBlock'))
    EC2DeleteRouteAction.add_member(:route_table_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActionTarget, location_name: 'RouteTableId', traits: {"smithy.api#required" => {}}))
    EC2DeleteRouteAction.type = Types::EC2DeleteRouteAction
    EC2ReplaceRouteAction.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LengthBoundedString, location_name: 'Description'))
    EC2ReplaceRouteAction.add_member(:destination_cidr_block, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CIDR, location_name: 'DestinationCidrBlock'))
    EC2ReplaceRouteAction.add_member(:destination_prefix_list_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'DestinationPrefixListId'))
    EC2ReplaceRouteAction.add_member(:destination_ipv6_cidr_block, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CIDR, location_name: 'DestinationIpv6CidrBlock'))
    EC2ReplaceRouteAction.add_member(:gateway_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActionTarget, location_name: 'GatewayId'))
    EC2ReplaceRouteAction.add_member(:route_table_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActionTarget, location_name: 'RouteTableId', traits: {"smithy.api#required" => {}}))
    EC2ReplaceRouteAction.type = Types::EC2ReplaceRouteAction
    EC2ReplaceRouteTableAssociationAction.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LengthBoundedString, location_name: 'Description'))
    EC2ReplaceRouteTableAssociationAction.add_member(:association_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActionTarget, location_name: 'AssociationId', traits: {"smithy.api#required" => {}}))
    EC2ReplaceRouteTableAssociationAction.add_member(:route_table_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActionTarget, location_name: 'RouteTableId', traits: {"smithy.api#required" => {}}))
    EC2ReplaceRouteTableAssociationAction.type = Types::EC2ReplaceRouteTableAssociationAction
    EntriesDescription.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntryDescription)
    EntriesWithConflicts.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntryDescription)
    EntryDescription.add_member(:entry_detail, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkAclEntry, location_name: 'EntryDetail'))
    EntryDescription.add_member(:entry_rule_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerObjectMinimum0, location_name: 'EntryRuleNumber', traits: {"smithy.api#default" => 0}))
    EntryDescription.add_member(:entry_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntryType, location_name: 'EntryType'))
    EntryDescription.type = Types::EntryDescription
    EntryType.add_member(:fms_managed_first_entry, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FMSManagedFirstEntry', traits: {"smithy.api#enumValue" => "FMS_MANAGED_FIRST_ENTRY"}))
    EntryType.add_member(:fms_managed_last_entry, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FMSManagedLastEntry', traits: {"smithy.api#enumValue" => "FMS_MANAGED_LAST_ENTRY"}))
    EntryType.add_member(:custom_entry, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CustomEntry', traits: {"smithy.api#enumValue" => "CUSTOM_ENTRY"}))
    EntryViolation.add_member(:expected_entry, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntryDescription, location_name: 'ExpectedEntry'))
    EntryViolation.add_member(:expected_evaluation_order, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LengthBoundedString, location_name: 'ExpectedEvaluationOrder'))
    EntryViolation.add_member(:actual_evaluation_order, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LengthBoundedString, location_name: 'ActualEvaluationOrder'))
    EntryViolation.add_member(:entry_at_expected_evaluation_order, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntryDescription, location_name: 'EntryAtExpectedEvaluationOrder'))
    EntryViolation.add_member(:entries_with_conflicts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntriesWithConflicts, location_name: 'EntriesWithConflicts'))
    EntryViolation.add_member(:entry_violation_reasons, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntryViolationReasons, location_name: 'EntryViolationReasons'))
    EntryViolation.type = Types::EntryViolation
    EntryViolationReason.add_member(:missing_expected_entry, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MissingExpectedEntry', traits: {"smithy.api#enumValue" => "MISSING_EXPECTED_ENTRY"}))
    EntryViolationReason.add_member(:incorrect_entry_order, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IncorrectEntryOrder', traits: {"smithy.api#enumValue" => "INCORRECT_ENTRY_ORDER"}))
    EntryViolationReason.add_member(:entry_conflict, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EntryConflict', traits: {"smithy.api#enumValue" => "ENTRY_CONFLICT"}))
    EntryViolationReasons.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntryViolationReason)
    EntryViolations.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntryViolation)
    EvaluationResult.add_member(:compliance_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyComplianceStatusType, location_name: 'ComplianceStatus'))
    EvaluationResult.add_member(:violator_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceCount, location_name: 'ViolatorCount', traits: {"smithy.api#default" => 0}))
    EvaluationResult.add_member(:evaluation_limit_exceeded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'EvaluationLimitExceeded', traits: {"smithy.api#default" => false}))
    EvaluationResult.type = Types::EvaluationResult
    EvaluationResults.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluationResult)
    ExpectedRoute.add_member(:ip_v4_cidr, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CIDR, location_name: 'IpV4Cidr'))
    ExpectedRoute.add_member(:prefix_list_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CIDR, location_name: 'PrefixListId'))
    ExpectedRoute.add_member(:ip_v6_cidr, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CIDR, location_name: 'IpV6Cidr'))
    ExpectedRoute.add_member(:contributing_subnets, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdList, location_name: 'ContributingSubnets'))
    ExpectedRoute.add_member(:allowed_targets, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LengthBoundedStringList, location_name: 'AllowedTargets'))
    ExpectedRoute.add_member(:route_table_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'RouteTableId'))
    ExpectedRoute.type = Types::ExpectedRoute
    ExpectedRoutes.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExpectedRoute)
    FMSPolicyUpdateFirewallCreationConfigAction.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LengthBoundedString, location_name: 'Description'))
    FMSPolicyUpdateFirewallCreationConfigAction.add_member(:firewall_creation_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedServiceData, location_name: 'FirewallCreationConfig'))
    FMSPolicyUpdateFirewallCreationConfigAction.type = Types::FMSPolicyUpdateFirewallCreationConfigAction
    FailedItem.add_member(:uri, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'URI'))
    FailedItem.add_member(:reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailedItemReason, location_name: 'Reason'))
    FailedItem.type = Types::FailedItem
    FailedItemList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailedItem)
    FailedItemReason.add_member(:not_valid_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NotValidArn', traits: {"smithy.api#enumValue" => "NOT_VALID_ARN"}))
    FailedItemReason.add_member(:not_valid_partition, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NotValidPartition', traits: {"smithy.api#enumValue" => "NOT_VALID_PARTITION"}))
    FailedItemReason.add_member(:not_valid_region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NotValidRegion', traits: {"smithy.api#enumValue" => "NOT_VALID_REGION"}))
    FailedItemReason.add_member(:not_valid_service, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NotValidService', traits: {"smithy.api#enumValue" => "NOT_VALID_SERVICE"}))
    FailedItemReason.add_member(:not_valid_resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NotValidResourceType', traits: {"smithy.api#enumValue" => "NOT_VALID_RESOURCE_TYPE"}))
    FailedItemReason.add_member(:not_valid_account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NotValidAccountId', traits: {"smithy.api#enumValue" => "NOT_VALID_ACCOUNT_ID"}))
    FirewallDeploymentModel.add_member(:centralized, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CENTRALIZED', traits: {"smithy.api#enumValue" => "CENTRALIZED"}))
    FirewallDeploymentModel.add_member(:distributed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISTRIBUTED', traits: {"smithy.api#enumValue" => "DISTRIBUTED"}))
    FirewallSubnetIsOutOfScopeViolation.add_member(:firewall_subnet_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'FirewallSubnetId'))
    FirewallSubnetIsOutOfScopeViolation.add_member(:vpc_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'VpcId'))
    FirewallSubnetIsOutOfScopeViolation.add_member(:subnet_availability_zone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LengthBoundedString, location_name: 'SubnetAvailabilityZone'))
    FirewallSubnetIsOutOfScopeViolation.add_member(:subnet_availability_zone_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LengthBoundedString, location_name: 'SubnetAvailabilityZoneId'))
    FirewallSubnetIsOutOfScopeViolation.add_member(:vpc_endpoint_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'VpcEndpointId'))
    FirewallSubnetIsOutOfScopeViolation.type = Types::FirewallSubnetIsOutOfScopeViolation
    FirewallSubnetMissingVPCEndpointViolation.add_member(:firewall_subnet_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'FirewallSubnetId'))
    FirewallSubnetMissingVPCEndpointViolation.add_member(:vpc_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'VpcId'))
    FirewallSubnetMissingVPCEndpointViolation.add_member(:subnet_availability_zone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LengthBoundedString, location_name: 'SubnetAvailabilityZone'))
    FirewallSubnetMissingVPCEndpointViolation.add_member(:subnet_availability_zone_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LengthBoundedString, location_name: 'SubnetAvailabilityZoneId'))
    FirewallSubnetMissingVPCEndpointViolation.type = Types::FirewallSubnetMissingVPCEndpointViolation
    GetAdminAccountRequest.type = Types::GetAdminAccountRequest
    GetAdminAccountResponse.add_member(:admin_account, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AWSAccountId, location_name: 'AdminAccount'))
    GetAdminAccountResponse.add_member(:role_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountRoleStatus, location_name: 'RoleStatus'))
    GetAdminAccountResponse.type = Types::GetAdminAccountResponse
    GetAdminScopeRequest.add_member(:admin_account, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AWSAccountId, location_name: 'AdminAccount', traits: {"smithy.api#required" => {}}))
    GetAdminScopeRequest.type = Types::GetAdminScopeRequest
    GetAdminScopeResponse.add_member(:admin_scope, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdminScope, location_name: 'AdminScope'))
    GetAdminScopeResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationStatus, location_name: 'Status'))
    GetAdminScopeResponse.type = Types::GetAdminScopeResponse
    GetAppsListRequest.add_member(:list_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListId, location_name: 'ListId', traits: {"smithy.api#required" => {}}))
    GetAppsListRequest.add_member(:default_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'DefaultList', traits: {"smithy.api#default" => false}))
    GetAppsListRequest.type = Types::GetAppsListRequest
    GetAppsListResponse.add_member(:apps_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppsListData, location_name: 'AppsList'))
    GetAppsListResponse.add_member(:apps_list_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'AppsListArn'))
    GetAppsListResponse.type = Types::GetAppsListResponse
    GetComplianceDetailRequest.add_member(:policy_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyId, location_name: 'PolicyId', traits: {"smithy.api#required" => {}}))
    GetComplianceDetailRequest.add_member(:member_account, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AWSAccountId, location_name: 'MemberAccount', traits: {"smithy.api#required" => {}}))
    GetComplianceDetailRequest.type = Types::GetComplianceDetailRequest
    GetComplianceDetailResponse.add_member(:policy_compliance_detail, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyComplianceDetail, location_name: 'PolicyComplianceDetail'))
    GetComplianceDetailResponse.type = Types::GetComplianceDetailResponse
    GetNotificationChannelRequest.type = Types::GetNotificationChannelRequest
    GetNotificationChannelResponse.add_member(:sns_topic_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'SnsTopicArn'))
    GetNotificationChannelResponse.add_member(:sns_role_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'SnsRoleName'))
    GetNotificationChannelResponse.type = Types::GetNotificationChannelResponse
    GetPolicyRequest.add_member(:policy_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyId, location_name: 'PolicyId', traits: {"smithy.api#required" => {}}))
    GetPolicyRequest.type = Types::GetPolicyRequest
    GetPolicyResponse.add_member(:policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Policy, location_name: 'Policy'))
    GetPolicyResponse.add_member(:policy_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'PolicyArn'))
    GetPolicyResponse.type = Types::GetPolicyResponse
    GetProtectionStatusRequest.add_member(:policy_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyId, location_name: 'PolicyId', traits: {"smithy.api#required" => {}}))
    GetProtectionStatusRequest.add_member(:member_account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AWSAccountId, location_name: 'MemberAccountId'))
    GetProtectionStatusRequest.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimeStamp, location_name: 'StartTime'))
    GetProtectionStatusRequest.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimeStamp, location_name: 'EndTime'))
    GetProtectionStatusRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken'))
    GetProtectionStatusRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationMaxResults, location_name: 'MaxResults'))
    GetProtectionStatusRequest.type = Types::GetProtectionStatusRequest
    GetProtectionStatusResponse.add_member(:admin_account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AWSAccountId, location_name: 'AdminAccountId'))
    GetProtectionStatusResponse.add_member(:service_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityServiceType, location_name: 'ServiceType'))
    GetProtectionStatusResponse.add_member(:data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProtectionData, location_name: 'Data'))
    GetProtectionStatusResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken'))
    GetProtectionStatusResponse.type = Types::GetProtectionStatusResponse
    GetProtocolsListRequest.add_member(:list_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListId, location_name: 'ListId', traits: {"smithy.api#required" => {}}))
    GetProtocolsListRequest.add_member(:default_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'DefaultList', traits: {"smithy.api#default" => false}))
    GetProtocolsListRequest.type = Types::GetProtocolsListRequest
    GetProtocolsListResponse.add_member(:protocols_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProtocolsListData, location_name: 'ProtocolsList'))
    GetProtocolsListResponse.add_member(:protocols_list_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'ProtocolsListArn'))
    GetProtocolsListResponse.type = Types::GetProtocolsListResponse
    GetResourceSetRequest.add_member(:identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Base62Id, location_name: 'Identifier', traits: {"smithy.api#required" => {}}))
    GetResourceSetRequest.type = Types::GetResourceSetRequest
    GetResourceSetResponse.add_member(:resource_set, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceSet, location_name: 'ResourceSet', traits: {"smithy.api#required" => {}}))
    GetResourceSetResponse.add_member(:resource_set_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'ResourceSetArn', traits: {"smithy.api#required" => {}}))
    GetResourceSetResponse.type = Types::GetResourceSetResponse
    GetThirdPartyFirewallAssociationStatusRequest.add_member(:third_party_firewall, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThirdPartyFirewall, location_name: 'ThirdPartyFirewall', traits: {"smithy.api#required" => {}}))
    GetThirdPartyFirewallAssociationStatusRequest.type = Types::GetThirdPartyFirewallAssociationStatusRequest
    GetThirdPartyFirewallAssociationStatusResponse.add_member(:third_party_firewall_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThirdPartyFirewallAssociationStatus, location_name: 'ThirdPartyFirewallStatus'))
    GetThirdPartyFirewallAssociationStatusResponse.add_member(:marketplace_onboarding_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MarketplaceSubscriptionOnboardingStatus, location_name: 'MarketplaceOnboardingStatus'))
    GetThirdPartyFirewallAssociationStatusResponse.type = Types::GetThirdPartyFirewallAssociationStatusResponse
    GetViolationDetailsRequest.add_member(:policy_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyId, location_name: 'PolicyId', traits: {"smithy.api#required" => {}}))
    GetViolationDetailsRequest.add_member(:member_account, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AWSAccountId, location_name: 'MemberAccount', traits: {"smithy.api#required" => {}}))
    GetViolationDetailsRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'ResourceId', traits: {"smithy.api#required" => {}}))
    GetViolationDetailsRequest.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'ResourceType', traits: {"smithy.api#required" => {}}))
    GetViolationDetailsRequest.type = Types::GetViolationDetailsRequest
    GetViolationDetailsResponse.add_member(:violation_detail, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ViolationDetail, location_name: 'ViolationDetail'))
    GetViolationDetailsResponse.type = Types::GetViolationDetailsResponse
    IdentifierList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier)
    InternalErrorException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    InternalErrorException.type = Types::InternalErrorException
    InvalidInputException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    InvalidInputException.type = Types::InvalidInputException
    InvalidNetworkAclEntriesViolation.add_member(:vpc, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'Vpc'))
    InvalidNetworkAclEntriesViolation.add_member(:subnet, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'Subnet'))
    InvalidNetworkAclEntriesViolation.add_member(:subnet_availability_zone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LengthBoundedString, location_name: 'SubnetAvailabilityZone'))
    InvalidNetworkAclEntriesViolation.add_member(:current_associated_network_acl, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'CurrentAssociatedNetworkAcl'))
    InvalidNetworkAclEntriesViolation.add_member(:entry_violations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntryViolations, location_name: 'EntryViolations'))
    InvalidNetworkAclEntriesViolation.type = Types::InvalidNetworkAclEntriesViolation
    InvalidOperationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    InvalidOperationException.type = Types::InvalidOperationException
    InvalidTypeException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    InvalidTypeException.type = Types::InvalidTypeException
    IssueInfoMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DependentServiceName)
    IssueInfoMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DetailedInfo)
    LengthBoundedStringList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: LengthBoundedString)
    LimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    LimitExceededException.type = Types::LimitExceededException
    ListAdminAccountsForOrganizationRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken'))
    ListAdminAccountsForOrganizationRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationMaxResults, location_name: 'MaxResults'))
    ListAdminAccountsForOrganizationRequest.type = Types::ListAdminAccountsForOrganizationRequest
    ListAdminAccountsForOrganizationResponse.add_member(:admin_accounts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdminAccountSummaryList, location_name: 'AdminAccounts'))
    ListAdminAccountsForOrganizationResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken'))
    ListAdminAccountsForOrganizationResponse.type = Types::ListAdminAccountsForOrganizationResponse
    ListAdminsManagingAccountRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken'))
    ListAdminsManagingAccountRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationMaxResults, location_name: 'MaxResults'))
    ListAdminsManagingAccountRequest.type = Types::ListAdminsManagingAccountRequest
    ListAdminsManagingAccountResponse.add_member(:admin_accounts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountIdList, location_name: 'AdminAccounts'))
    ListAdminsManagingAccountResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken'))
    ListAdminsManagingAccountResponse.type = Types::ListAdminsManagingAccountResponse
    ListAppsListsRequest.add_member(:default_lists, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'DefaultLists', traits: {"smithy.api#default" => false}))
    ListAppsListsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken'))
    ListAppsListsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationMaxResults, location_name: 'MaxResults', traits: {"smithy.api#required" => {}}))
    ListAppsListsRequest.type = Types::ListAppsListsRequest
    ListAppsListsResponse.add_member(:apps_lists, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppsListsData, location_name: 'AppsLists'))
    ListAppsListsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken'))
    ListAppsListsResponse.type = Types::ListAppsListsResponse
    ListComplianceStatusRequest.add_member(:policy_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyId, location_name: 'PolicyId', traits: {"smithy.api#required" => {}}))
    ListComplianceStatusRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken'))
    ListComplianceStatusRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationMaxResults, location_name: 'MaxResults'))
    ListComplianceStatusRequest.type = Types::ListComplianceStatusRequest
    ListComplianceStatusResponse.add_member(:policy_compliance_status_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyComplianceStatusList, location_name: 'PolicyComplianceStatusList'))
    ListComplianceStatusResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken'))
    ListComplianceStatusResponse.type = Types::ListComplianceStatusResponse
    ListDiscoveredResourcesRequest.add_member(:member_account_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AWSAccountIdList, location_name: 'MemberAccountIds', traits: {"smithy.api#required" => {}}))
    ListDiscoveredResourcesRequest.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'ResourceType', traits: {"smithy.api#required" => {}}))
    ListDiscoveredResourcesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationMaxResults, location_name: 'MaxResults'))
    ListDiscoveredResourcesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken'))
    ListDiscoveredResourcesRequest.type = Types::ListDiscoveredResourcesRequest
    ListDiscoveredResourcesResponse.add_member(:items, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DiscoveredResourceList, location_name: 'Items'))
    ListDiscoveredResourcesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken'))
    ListDiscoveredResourcesResponse.type = Types::ListDiscoveredResourcesResponse
    ListMemberAccountsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken'))
    ListMemberAccountsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationMaxResults, location_name: 'MaxResults'))
    ListMemberAccountsRequest.type = Types::ListMemberAccountsRequest
    ListMemberAccountsResponse.add_member(:member_accounts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MemberAccounts, location_name: 'MemberAccounts'))
    ListMemberAccountsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken'))
    ListMemberAccountsResponse.type = Types::ListMemberAccountsResponse
    ListPoliciesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken'))
    ListPoliciesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationMaxResults, location_name: 'MaxResults'))
    ListPoliciesRequest.type = Types::ListPoliciesRequest
    ListPoliciesResponse.add_member(:policy_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicySummaryList, location_name: 'PolicyList'))
    ListPoliciesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken'))
    ListPoliciesResponse.type = Types::ListPoliciesResponse
    ListProtocolsListsRequest.add_member(:default_lists, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'DefaultLists', traits: {"smithy.api#default" => false}))
    ListProtocolsListsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken'))
    ListProtocolsListsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationMaxResults, location_name: 'MaxResults', traits: {"smithy.api#required" => {}}))
    ListProtocolsListsRequest.type = Types::ListProtocolsListsRequest
    ListProtocolsListsResponse.add_member(:protocols_lists, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProtocolsListsData, location_name: 'ProtocolsLists'))
    ListProtocolsListsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken'))
    ListProtocolsListsResponse.type = Types::ListProtocolsListsResponse
    ListResourceSetResourcesRequest.add_member(:identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'Identifier', traits: {"smithy.api#required" => {}}))
    ListResourceSetResourcesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationMaxResults, location_name: 'MaxResults'))
    ListResourceSetResourcesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken'))
    ListResourceSetResourcesRequest.type = Types::ListResourceSetResourcesRequest
    ListResourceSetResourcesResponse.add_member(:items, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceList, location_name: 'Items', traits: {"smithy.api#required" => {}}))
    ListResourceSetResourcesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken'))
    ListResourceSetResourcesResponse.type = Types::ListResourceSetResourcesResponse
    ListResourceSetsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken'))
    ListResourceSetsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationMaxResults, location_name: 'MaxResults'))
    ListResourceSetsRequest.type = Types::ListResourceSetsRequest
    ListResourceSetsResponse.add_member(:resource_sets, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceSetSummaryList, location_name: 'ResourceSets'))
    ListResourceSetsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken'))
    ListResourceSetsResponse.type = Types::ListResourceSetsResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'ResourceArn', traits: {"smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tag_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'TagList'))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ListThirdPartyFirewallFirewallPoliciesRequest.add_member(:third_party_firewall, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThirdPartyFirewall, location_name: 'ThirdPartyFirewall', traits: {"smithy.api#required" => {}}))
    ListThirdPartyFirewallFirewallPoliciesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken'))
    ListThirdPartyFirewallFirewallPoliciesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationMaxResults, location_name: 'MaxResults', traits: {"smithy.api#required" => {}}))
    ListThirdPartyFirewallFirewallPoliciesRequest.type = Types::ListThirdPartyFirewallFirewallPoliciesRequest
    ListThirdPartyFirewallFirewallPoliciesResponse.add_member(:third_party_firewall_firewall_policies, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThirdPartyFirewallFirewallPolicies, location_name: 'ThirdPartyFirewallFirewallPolicies'))
    ListThirdPartyFirewallFirewallPoliciesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken'))
    ListThirdPartyFirewallFirewallPoliciesResponse.type = Types::ListThirdPartyFirewallFirewallPoliciesResponse
    MarketplaceSubscriptionOnboardingStatus.add_member(:no_subscription, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NO_SUBSCRIPTION', traits: {"smithy.api#enumValue" => "NO_SUBSCRIPTION"}))
    MarketplaceSubscriptionOnboardingStatus.add_member(:not_complete, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NOT_COMPLETE', traits: {"smithy.api#enumValue" => "NOT_COMPLETE"}))
    MarketplaceSubscriptionOnboardingStatus.add_member(:complete, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETE', traits: {"smithy.api#enumValue" => "COMPLETE"}))
    MemberAccounts.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AWSAccountId)
    NetworkAclCommonPolicy.add_member(:network_acl_entry_set, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkAclEntrySet, location_name: 'NetworkAclEntrySet', traits: {"smithy.api#required" => {}}))
    NetworkAclCommonPolicy.type = Types::NetworkAclCommonPolicy
    NetworkAclEntries.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkAclEntry)
    NetworkAclEntry.add_member(:icmp_type_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkAclIcmpTypeCode, location_name: 'IcmpTypeCode'))
    NetworkAclEntry.add_member(:protocol, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LengthBoundedString, location_name: 'Protocol', traits: {"smithy.api#required" => {}}))
    NetworkAclEntry.add_member(:port_range, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkAclPortRange, location_name: 'PortRange'))
    NetworkAclEntry.add_member(:cidr_block, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LengthBoundedNonEmptyString, location_name: 'CidrBlock'))
    NetworkAclEntry.add_member(:ipv6_cidr_block, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LengthBoundedNonEmptyString, location_name: 'Ipv6CidrBlock'))
    NetworkAclEntry.add_member(:rule_action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkAclRuleAction, location_name: 'RuleAction', traits: {"smithy.api#required" => {}}))
    NetworkAclEntry.add_member(:egress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanObject, location_name: 'Egress', traits: {"smithy.api#required" => {}}))
    NetworkAclEntry.type = Types::NetworkAclEntry
    NetworkAclEntrySet.add_member(:first_entries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkAclEntries, location_name: 'FirstEntries'))
    NetworkAclEntrySet.add_member(:force_remediate_for_first_entries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanObject, location_name: 'ForceRemediateForFirstEntries', traits: {"smithy.api#required" => {}}))
    NetworkAclEntrySet.add_member(:last_entries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkAclEntries, location_name: 'LastEntries'))
    NetworkAclEntrySet.add_member(:force_remediate_for_last_entries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanObject, location_name: 'ForceRemediateForLastEntries', traits: {"smithy.api#required" => {}}))
    NetworkAclEntrySet.type = Types::NetworkAclEntrySet
    NetworkAclIcmpTypeCode.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerObject, location_name: 'Code'))
    NetworkAclIcmpTypeCode.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerObject, location_name: 'Type'))
    NetworkAclIcmpTypeCode.type = Types::NetworkAclIcmpTypeCode
    NetworkAclPortRange.add_member(:from, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IPPortNumberInteger, location_name: 'From'))
    NetworkAclPortRange.add_member(:to, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IPPortNumberInteger, location_name: 'To'))
    NetworkAclPortRange.type = Types::NetworkAclPortRange
    NetworkAclRuleAction.add_member(:allow, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALLOW', traits: {"smithy.api#enumValue" => "allow"}))
    NetworkAclRuleAction.add_member(:deny, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DENY', traits: {"smithy.api#enumValue" => "deny"}))
    NetworkFirewallActionList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkFirewallAction)
    NetworkFirewallBlackHoleRouteDetectedViolation.add_member(:violation_target, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ViolationTarget, location_name: 'ViolationTarget'))
    NetworkFirewallBlackHoleRouteDetectedViolation.add_member(:route_table_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'RouteTableId'))
    NetworkFirewallBlackHoleRouteDetectedViolation.add_member(:vpc_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'VpcId'))
    NetworkFirewallBlackHoleRouteDetectedViolation.add_member(:violating_routes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Routes, location_name: 'ViolatingRoutes'))
    NetworkFirewallBlackHoleRouteDetectedViolation.type = Types::NetworkFirewallBlackHoleRouteDetectedViolation
    NetworkFirewallInternetTrafficNotInspectedViolation.add_member(:subnet_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'SubnetId'))
    NetworkFirewallInternetTrafficNotInspectedViolation.add_member(:subnet_availability_zone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LengthBoundedString, location_name: 'SubnetAvailabilityZone'))
    NetworkFirewallInternetTrafficNotInspectedViolation.add_member(:route_table_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'RouteTableId'))
    NetworkFirewallInternetTrafficNotInspectedViolation.add_member(:violating_routes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Routes, location_name: 'ViolatingRoutes'))
    NetworkFirewallInternetTrafficNotInspectedViolation.add_member(:is_route_table_used_in_different_az, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IsRouteTableUsedInDifferentAZ', traits: {"smithy.api#default" => false}))
    NetworkFirewallInternetTrafficNotInspectedViolation.add_member(:current_firewall_subnet_route_table, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'CurrentFirewallSubnetRouteTable'))
    NetworkFirewallInternetTrafficNotInspectedViolation.add_member(:expected_firewall_endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'ExpectedFirewallEndpoint'))
    NetworkFirewallInternetTrafficNotInspectedViolation.add_member(:firewall_subnet_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'FirewallSubnetId'))
    NetworkFirewallInternetTrafficNotInspectedViolation.add_member(:expected_firewall_subnet_routes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExpectedRoutes, location_name: 'ExpectedFirewallSubnetRoutes'))
    NetworkFirewallInternetTrafficNotInspectedViolation.add_member(:actual_firewall_subnet_routes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Routes, location_name: 'ActualFirewallSubnetRoutes'))
    NetworkFirewallInternetTrafficNotInspectedViolation.add_member(:internet_gateway_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'InternetGatewayId'))
    NetworkFirewallInternetTrafficNotInspectedViolation.add_member(:current_internet_gateway_route_table, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'CurrentInternetGatewayRouteTable'))
    NetworkFirewallInternetTrafficNotInspectedViolation.add_member(:expected_internet_gateway_routes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExpectedRoutes, location_name: 'ExpectedInternetGatewayRoutes'))
    NetworkFirewallInternetTrafficNotInspectedViolation.add_member(:actual_internet_gateway_routes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Routes, location_name: 'ActualInternetGatewayRoutes'))
    NetworkFirewallInternetTrafficNotInspectedViolation.add_member(:vpc_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'VpcId'))
    NetworkFirewallInternetTrafficNotInspectedViolation.type = Types::NetworkFirewallInternetTrafficNotInspectedViolation
    NetworkFirewallInvalidRouteConfigurationViolation.add_member(:affected_subnets, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdList, location_name: 'AffectedSubnets'))
    NetworkFirewallInvalidRouteConfigurationViolation.add_member(:route_table_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'RouteTableId'))
    NetworkFirewallInvalidRouteConfigurationViolation.add_member(:is_route_table_used_in_different_az, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IsRouteTableUsedInDifferentAZ', traits: {"smithy.api#default" => false}))
    NetworkFirewallInvalidRouteConfigurationViolation.add_member(:violating_route, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Route, location_name: 'ViolatingRoute'))
    NetworkFirewallInvalidRouteConfigurationViolation.add_member(:current_firewall_subnet_route_table, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'CurrentFirewallSubnetRouteTable'))
    NetworkFirewallInvalidRouteConfigurationViolation.add_member(:expected_firewall_endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'ExpectedFirewallEndpoint'))
    NetworkFirewallInvalidRouteConfigurationViolation.add_member(:actual_firewall_endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'ActualFirewallEndpoint'))
    NetworkFirewallInvalidRouteConfigurationViolation.add_member(:expected_firewall_subnet_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'ExpectedFirewallSubnetId'))
    NetworkFirewallInvalidRouteConfigurationViolation.add_member(:actual_firewall_subnet_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'ActualFirewallSubnetId'))
    NetworkFirewallInvalidRouteConfigurationViolation.add_member(:expected_firewall_subnet_routes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExpectedRoutes, location_name: 'ExpectedFirewallSubnetRoutes'))
    NetworkFirewallInvalidRouteConfigurationViolation.add_member(:actual_firewall_subnet_routes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Routes, location_name: 'ActualFirewallSubnetRoutes'))
    NetworkFirewallInvalidRouteConfigurationViolation.add_member(:internet_gateway_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'InternetGatewayId'))
    NetworkFirewallInvalidRouteConfigurationViolation.add_member(:current_internet_gateway_route_table, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'CurrentInternetGatewayRouteTable'))
    NetworkFirewallInvalidRouteConfigurationViolation.add_member(:expected_internet_gateway_routes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExpectedRoutes, location_name: 'ExpectedInternetGatewayRoutes'))
    NetworkFirewallInvalidRouteConfigurationViolation.add_member(:actual_internet_gateway_routes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Routes, location_name: 'ActualInternetGatewayRoutes'))
    NetworkFirewallInvalidRouteConfigurationViolation.add_member(:vpc_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'VpcId'))
    NetworkFirewallInvalidRouteConfigurationViolation.type = Types::NetworkFirewallInvalidRouteConfigurationViolation
    NetworkFirewallMissingExpectedRTViolation.add_member(:violation_target, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ViolationTarget, location_name: 'ViolationTarget'))
    NetworkFirewallMissingExpectedRTViolation.add_member(:vpc, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'VPC'))
    NetworkFirewallMissingExpectedRTViolation.add_member(:availability_zone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LengthBoundedString, location_name: 'AvailabilityZone'))
    NetworkFirewallMissingExpectedRTViolation.add_member(:current_route_table, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'CurrentRouteTable'))
    NetworkFirewallMissingExpectedRTViolation.add_member(:expected_route_table, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'ExpectedRouteTable'))
    NetworkFirewallMissingExpectedRTViolation.type = Types::NetworkFirewallMissingExpectedRTViolation
    NetworkFirewallMissingExpectedRoutesViolation.add_member(:violation_target, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ViolationTarget, location_name: 'ViolationTarget'))
    NetworkFirewallMissingExpectedRoutesViolation.add_member(:expected_routes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExpectedRoutes, location_name: 'ExpectedRoutes'))
    NetworkFirewallMissingExpectedRoutesViolation.add_member(:vpc_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'VpcId'))
    NetworkFirewallMissingExpectedRoutesViolation.type = Types::NetworkFirewallMissingExpectedRoutesViolation
    NetworkFirewallMissingFirewallViolation.add_member(:violation_target, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ViolationTarget, location_name: 'ViolationTarget'))
    NetworkFirewallMissingFirewallViolation.add_member(:vpc, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'VPC'))
    NetworkFirewallMissingFirewallViolation.add_member(:availability_zone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LengthBoundedString, location_name: 'AvailabilityZone'))
    NetworkFirewallMissingFirewallViolation.add_member(:target_violation_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetViolationReason, location_name: 'TargetViolationReason'))
    NetworkFirewallMissingFirewallViolation.type = Types::NetworkFirewallMissingFirewallViolation
    NetworkFirewallMissingSubnetViolation.add_member(:violation_target, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ViolationTarget, location_name: 'ViolationTarget'))
    NetworkFirewallMissingSubnetViolation.add_member(:vpc, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'VPC'))
    NetworkFirewallMissingSubnetViolation.add_member(:availability_zone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LengthBoundedString, location_name: 'AvailabilityZone'))
    NetworkFirewallMissingSubnetViolation.add_member(:target_violation_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetViolationReason, location_name: 'TargetViolationReason'))
    NetworkFirewallMissingSubnetViolation.type = Types::NetworkFirewallMissingSubnetViolation
    NetworkFirewallOverrideAction.add_member(:drop_to_alert, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DROP_TO_ALERT', traits: {"smithy.api#enumValue" => "DROP_TO_ALERT"}))
    NetworkFirewallPolicy.add_member(:firewall_deployment_model, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FirewallDeploymentModel, location_name: 'FirewallDeploymentModel'))
    NetworkFirewallPolicy.type = Types::NetworkFirewallPolicy
    NetworkFirewallPolicyDescription.add_member(:stateless_rule_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatelessRuleGroupList, location_name: 'StatelessRuleGroups'))
    NetworkFirewallPolicyDescription.add_member(:stateless_default_actions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkFirewallActionList, location_name: 'StatelessDefaultActions'))
    NetworkFirewallPolicyDescription.add_member(:stateless_fragment_default_actions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkFirewallActionList, location_name: 'StatelessFragmentDefaultActions'))
    NetworkFirewallPolicyDescription.add_member(:stateless_custom_actions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkFirewallActionList, location_name: 'StatelessCustomActions'))
    NetworkFirewallPolicyDescription.add_member(:stateful_rule_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatefulRuleGroupList, location_name: 'StatefulRuleGroups'))
    NetworkFirewallPolicyDescription.add_member(:stateful_default_actions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkFirewallActionList, location_name: 'StatefulDefaultActions'))
    NetworkFirewallPolicyDescription.add_member(:stateful_engine_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatefulEngineOptions, location_name: 'StatefulEngineOptions'))
    NetworkFirewallPolicyDescription.type = Types::NetworkFirewallPolicyDescription
    NetworkFirewallPolicyModifiedViolation.add_member(:violation_target, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ViolationTarget, location_name: 'ViolationTarget'))
    NetworkFirewallPolicyModifiedViolation.add_member(:current_policy_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkFirewallPolicyDescription, location_name: 'CurrentPolicyDescription'))
    NetworkFirewallPolicyModifiedViolation.add_member(:expected_policy_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkFirewallPolicyDescription, location_name: 'ExpectedPolicyDescription'))
    NetworkFirewallPolicyModifiedViolation.type = Types::NetworkFirewallPolicyModifiedViolation
    NetworkFirewallStatefulRuleGroupOverride.add_member(:action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkFirewallOverrideAction, location_name: 'Action'))
    NetworkFirewallStatefulRuleGroupOverride.type = Types::NetworkFirewallStatefulRuleGroupOverride
    NetworkFirewallUnexpectedFirewallRoutesViolation.add_member(:firewall_subnet_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'FirewallSubnetId'))
    NetworkFirewallUnexpectedFirewallRoutesViolation.add_member(:violating_routes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Routes, location_name: 'ViolatingRoutes'))
    NetworkFirewallUnexpectedFirewallRoutesViolation.add_member(:route_table_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'RouteTableId'))
    NetworkFirewallUnexpectedFirewallRoutesViolation.add_member(:firewall_endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'FirewallEndpoint'))
    NetworkFirewallUnexpectedFirewallRoutesViolation.add_member(:vpc_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'VpcId'))
    NetworkFirewallUnexpectedFirewallRoutesViolation.type = Types::NetworkFirewallUnexpectedFirewallRoutesViolation
    NetworkFirewallUnexpectedGatewayRoutesViolation.add_member(:gateway_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'GatewayId'))
    NetworkFirewallUnexpectedGatewayRoutesViolation.add_member(:violating_routes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Routes, location_name: 'ViolatingRoutes'))
    NetworkFirewallUnexpectedGatewayRoutesViolation.add_member(:route_table_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'RouteTableId'))
    NetworkFirewallUnexpectedGatewayRoutesViolation.add_member(:vpc_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'VpcId'))
    NetworkFirewallUnexpectedGatewayRoutesViolation.type = Types::NetworkFirewallUnexpectedGatewayRoutesViolation
    OrderedRemediationActions.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RemediationActionWithOrder)
    OrganizationStatus.add_member(:onboarding, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Onboarding', traits: {"smithy.api#enumValue" => "ONBOARDING"}))
    OrganizationStatus.add_member(:onboarding_complete, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OnboardingComplete', traits: {"smithy.api#enumValue" => "ONBOARDING_COMPLETE"}))
    OrganizationStatus.add_member(:offboarding, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Offboarding', traits: {"smithy.api#enumValue" => "OFFBOARDING"}))
    OrganizationStatus.add_member(:offboarding_complete, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OffboardingComplete', traits: {"smithy.api#enumValue" => "OFFBOARDING_COMPLETE"}))
    OrganizationalUnitIdList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationalUnitId)
    OrganizationalUnitScope.add_member(:organizational_units, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationalUnitIdList, location_name: 'OrganizationalUnits'))
    OrganizationalUnitScope.add_member(:all_organizational_units_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'AllOrganizationalUnitsEnabled', traits: {"smithy.api#default" => false}))
    OrganizationalUnitScope.add_member(:exclude_specified_organizational_units, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'ExcludeSpecifiedOrganizationalUnits', traits: {"smithy.api#default" => false}))
    OrganizationalUnitScope.type = Types::OrganizationalUnitScope
    PartialMatch.add_member(:reference, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReferenceRule, location_name: 'Reference'))
    PartialMatch.add_member(:target_violation_reasons, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetViolationReasons, location_name: 'TargetViolationReasons'))
    PartialMatch.type = Types::PartialMatch
    PartialMatches.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PartialMatch)
    Policy.add_member(:policy_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyId, location_name: 'PolicyId'))
    Policy.add_member(:policy_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'PolicyName', traits: {"smithy.api#required" => {}}))
    Policy.add_member(:policy_update_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyUpdateToken, location_name: 'PolicyUpdateToken'))
    Policy.add_member(:security_service_policy_data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityServicePolicyData, location_name: 'SecurityServicePolicyData', traits: {"smithy.api#required" => {}}))
    Policy.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'ResourceType', traits: {"smithy.api#required" => {}}))
    Policy.add_member(:resource_type_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTypeList, location_name: 'ResourceTypeList'))
    Policy.add_member(:resource_tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTags, location_name: 'ResourceTags'))
    Policy.add_member(:exclude_resource_tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'ExcludeResourceTags', traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    Policy.add_member(:remediation_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'RemediationEnabled', traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    Policy.add_member(:delete_unused_fm_managed_resources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'DeleteUnusedFMManagedResources', traits: {"smithy.api#default" => false}))
    Policy.add_member(:include_map, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerPolicyScopeMap, location_name: 'IncludeMap'))
    Policy.add_member(:exclude_map, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerPolicyScopeMap, location_name: 'ExcludeMap'))
    Policy.add_member(:resource_set_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceSetIds, location_name: 'ResourceSetIds'))
    Policy.add_member(:policy_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceDescription, location_name: 'PolicyDescription'))
    Policy.add_member(:policy_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerPolicyStatus, location_name: 'PolicyStatus'))
    Policy.add_member(:resource_tag_logical_operator, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTagLogicalOperator, location_name: 'ResourceTagLogicalOperator'))
    Policy.type = Types::Policy
    PolicyComplianceDetail.add_member(:policy_owner, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AWSAccountId, location_name: 'PolicyOwner'))
    PolicyComplianceDetail.add_member(:policy_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyId, location_name: 'PolicyId'))
    PolicyComplianceDetail.add_member(:member_account, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AWSAccountId, location_name: 'MemberAccount'))
    PolicyComplianceDetail.add_member(:violators, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComplianceViolators, location_name: 'Violators'))
    PolicyComplianceDetail.add_member(:evaluation_limit_exceeded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'EvaluationLimitExceeded', traits: {"smithy.api#default" => false}))
    PolicyComplianceDetail.add_member(:expired_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimeStamp, location_name: 'ExpiredAt'))
    PolicyComplianceDetail.add_member(:issue_info_map, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IssueInfoMap, location_name: 'IssueInfoMap'))
    PolicyComplianceDetail.type = Types::PolicyComplianceDetail
    PolicyComplianceStatus.add_member(:policy_owner, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AWSAccountId, location_name: 'PolicyOwner'))
    PolicyComplianceStatus.add_member(:policy_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyId, location_name: 'PolicyId'))
    PolicyComplianceStatus.add_member(:policy_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'PolicyName'))
    PolicyComplianceStatus.add_member(:member_account, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AWSAccountId, location_name: 'MemberAccount'))
    PolicyComplianceStatus.add_member(:evaluation_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluationResults, location_name: 'EvaluationResults'))
    PolicyComplianceStatus.add_member(:last_updated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimeStamp, location_name: 'LastUpdated'))
    PolicyComplianceStatus.add_member(:issue_info_map, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IssueInfoMap, location_name: 'IssueInfoMap'))
    PolicyComplianceStatus.type = Types::PolicyComplianceStatus
    PolicyComplianceStatusList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyComplianceStatus)
    PolicyComplianceStatusType.add_member(:compliant, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Compliant', traits: {"smithy.api#enumValue" => "COMPLIANT"}))
    PolicyComplianceStatusType.add_member(:non_compliant, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NonCompliant', traits: {"smithy.api#enumValue" => "NON_COMPLIANT"}))
    PolicyOption.add_member(:network_firewall_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkFirewallPolicy, location_name: 'NetworkFirewallPolicy'))
    PolicyOption.add_member(:third_party_firewall_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThirdPartyFirewallPolicy, location_name: 'ThirdPartyFirewallPolicy'))
    PolicyOption.add_member(:network_acl_common_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkAclCommonPolicy, location_name: 'NetworkAclCommonPolicy'))
    PolicyOption.type = Types::PolicyOption
    PolicySummary.add_member(:policy_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'PolicyArn'))
    PolicySummary.add_member(:policy_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyId, location_name: 'PolicyId'))
    PolicySummary.add_member(:policy_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'PolicyName'))
    PolicySummary.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'ResourceType'))
    PolicySummary.add_member(:security_service_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityServiceType, location_name: 'SecurityServiceType'))
    PolicySummary.add_member(:remediation_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'RemediationEnabled', traits: {"smithy.api#default" => false}))
    PolicySummary.add_member(:delete_unused_fm_managed_resources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'DeleteUnusedFMManagedResources', traits: {"smithy.api#default" => false}))
    PolicySummary.add_member(:policy_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerPolicyStatus, location_name: 'PolicyStatus'))
    PolicySummary.type = Types::PolicySummary
    PolicySummaryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicySummary)
    PolicyTypeScope.add_member(:policy_types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityServiceTypeList, location_name: 'PolicyTypes'))
    PolicyTypeScope.add_member(:all_policy_types_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'AllPolicyTypesEnabled', traits: {"smithy.api#default" => false}))
    PolicyTypeScope.type = Types::PolicyTypeScope
    PossibleRemediationAction.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LengthBoundedString, location_name: 'Description'))
    PossibleRemediationAction.add_member(:ordered_remediation_actions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrderedRemediationActions, location_name: 'OrderedRemediationActions', traits: {"smithy.api#required" => {}}))
    PossibleRemediationAction.add_member(:is_default_action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IsDefaultAction', traits: {"smithy.api#default" => false}))
    PossibleRemediationAction.type = Types::PossibleRemediationAction
    PossibleRemediationActionList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PossibleRemediationAction)
    PossibleRemediationActions.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LengthBoundedString, location_name: 'Description'))
    PossibleRemediationActions.add_member(:actions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PossibleRemediationActionList, location_name: 'Actions'))
    PossibleRemediationActions.type = Types::PossibleRemediationActions
    PreviousAppsList.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PreviousListVersion)
    PreviousAppsList.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppsList)
    PreviousProtocolsList.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PreviousListVersion)
    PreviousProtocolsList.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProtocolsList)
    ProtocolsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Protocol)
    ProtocolsListData.add_member(:list_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListId, location_name: 'ListId'))
    ProtocolsListData.add_member(:list_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'ListName', traits: {"smithy.api#required" => {}}))
    ProtocolsListData.add_member(:list_update_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateToken, location_name: 'ListUpdateToken'))
    ProtocolsListData.add_member(:create_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimeStamp, location_name: 'CreateTime'))
    ProtocolsListData.add_member(:last_update_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimeStamp, location_name: 'LastUpdateTime'))
    ProtocolsListData.add_member(:protocols_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProtocolsList, location_name: 'ProtocolsList', traits: {"smithy.api#required" => {}}))
    ProtocolsListData.add_member(:previous_protocols_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PreviousProtocolsList, location_name: 'PreviousProtocolsList'))
    ProtocolsListData.type = Types::ProtocolsListData
    ProtocolsListDataSummary.add_member(:list_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'ListArn'))
    ProtocolsListDataSummary.add_member(:list_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListId, location_name: 'ListId'))
    ProtocolsListDataSummary.add_member(:list_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'ListName'))
    ProtocolsListDataSummary.add_member(:protocols_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProtocolsList, location_name: 'ProtocolsList'))
    ProtocolsListDataSummary.type = Types::ProtocolsListDataSummary
    ProtocolsListsData.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProtocolsListDataSummary)
    PutAdminAccountRequest.add_member(:admin_account, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AWSAccountId, location_name: 'AdminAccount', traits: {"smithy.api#required" => {}}))
    PutAdminAccountRequest.add_member(:admin_scope, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdminScope, location_name: 'AdminScope'))
    PutAdminAccountRequest.type = Types::PutAdminAccountRequest
    PutAppsListRequest.add_member(:apps_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppsListData, location_name: 'AppsList', traits: {"smithy.api#required" => {}}))
    PutAppsListRequest.add_member(:tag_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'TagList'))
    PutAppsListRequest.type = Types::PutAppsListRequest
    PutAppsListResponse.add_member(:apps_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppsListData, location_name: 'AppsList'))
    PutAppsListResponse.add_member(:apps_list_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'AppsListArn'))
    PutAppsListResponse.type = Types::PutAppsListResponse
    PutNotificationChannelRequest.add_member(:sns_topic_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'SnsTopicArn', traits: {"smithy.api#required" => {}}))
    PutNotificationChannelRequest.add_member(:sns_role_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'SnsRoleName', traits: {"smithy.api#required" => {}}))
    PutNotificationChannelRequest.type = Types::PutNotificationChannelRequest
    PutPolicyRequest.add_member(:policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Policy, location_name: 'Policy', traits: {"smithy.api#required" => {}}))
    PutPolicyRequest.add_member(:tag_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'TagList'))
    PutPolicyRequest.type = Types::PutPolicyRequest
    PutPolicyResponse.add_member(:policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Policy, location_name: 'Policy'))
    PutPolicyResponse.add_member(:policy_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'PolicyArn'))
    PutPolicyResponse.type = Types::PutPolicyResponse
    PutProtocolsListRequest.add_member(:protocols_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProtocolsListData, location_name: 'ProtocolsList', traits: {"smithy.api#required" => {}}))
    PutProtocolsListRequest.add_member(:tag_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'TagList'))
    PutProtocolsListRequest.type = Types::PutProtocolsListRequest
    PutProtocolsListResponse.add_member(:protocols_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProtocolsListData, location_name: 'ProtocolsList'))
    PutProtocolsListResponse.add_member(:protocols_list_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'ProtocolsListArn'))
    PutProtocolsListResponse.type = Types::PutProtocolsListResponse
    PutResourceSetRequest.add_member(:resource_set, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceSet, location_name: 'ResourceSet', traits: {"smithy.api#required" => {}}))
    PutResourceSetRequest.add_member(:tag_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'TagList'))
    PutResourceSetRequest.type = Types::PutResourceSetRequest
    PutResourceSetResponse.add_member(:resource_set, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceSet, location_name: 'ResourceSet', traits: {"smithy.api#required" => {}}))
    PutResourceSetResponse.add_member(:resource_set_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'ResourceSetArn', traits: {"smithy.api#required" => {}}))
    PutResourceSetResponse.type = Types::PutResourceSetResponse
    RegionScope.add_member(:regions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AWSRegionList, location_name: 'Regions'))
    RegionScope.add_member(:all_regions_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'AllRegionsEnabled', traits: {"smithy.api#default" => false}))
    RegionScope.type = Types::RegionScope
    RemediationAction.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LengthBoundedString, location_name: 'Description'))
    RemediationAction.add_member(:ec2_create_route_action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EC2CreateRouteAction, location_name: 'EC2CreateRouteAction'))
    RemediationAction.add_member(:ec2_replace_route_action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EC2ReplaceRouteAction, location_name: 'EC2ReplaceRouteAction'))
    RemediationAction.add_member(:ec2_delete_route_action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EC2DeleteRouteAction, location_name: 'EC2DeleteRouteAction'))
    RemediationAction.add_member(:ec2_copy_route_table_action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EC2CopyRouteTableAction, location_name: 'EC2CopyRouteTableAction'))
    RemediationAction.add_member(:ec2_replace_route_table_association_action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EC2ReplaceRouteTableAssociationAction, location_name: 'EC2ReplaceRouteTableAssociationAction'))
    RemediationAction.add_member(:ec2_associate_route_table_action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EC2AssociateRouteTableAction, location_name: 'EC2AssociateRouteTableAction'))
    RemediationAction.add_member(:ec2_create_route_table_action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EC2CreateRouteTableAction, location_name: 'EC2CreateRouteTableAction'))
    RemediationAction.add_member(:fms_policy_update_firewall_creation_config_action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FMSPolicyUpdateFirewallCreationConfigAction, location_name: 'FMSPolicyUpdateFirewallCreationConfigAction'))
    RemediationAction.add_member(:create_network_acl_action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateNetworkAclAction, location_name: 'CreateNetworkAclAction'))
    RemediationAction.add_member(:replace_network_acl_association_action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplaceNetworkAclAssociationAction, location_name: 'ReplaceNetworkAclAssociationAction'))
    RemediationAction.add_member(:create_network_acl_entries_action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateNetworkAclEntriesAction, location_name: 'CreateNetworkAclEntriesAction'))
    RemediationAction.add_member(:delete_network_acl_entries_action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteNetworkAclEntriesAction, location_name: 'DeleteNetworkAclEntriesAction'))
    RemediationAction.type = Types::RemediationAction
    RemediationActionType.add_member(:remove, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Remove', traits: {"smithy.api#enumValue" => "REMOVE"}))
    RemediationActionType.add_member(:modify, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Modify', traits: {"smithy.api#enumValue" => "MODIFY"}))
    RemediationActionWithOrder.add_member(:remediation_action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RemediationAction, location_name: 'RemediationAction'))
    RemediationActionWithOrder.add_member(:order, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BasicInteger, location_name: 'Order', traits: {"smithy.api#default" => 0}))
    RemediationActionWithOrder.type = Types::RemediationActionWithOrder
    ReplaceNetworkAclAssociationAction.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LengthBoundedString, location_name: 'Description'))
    ReplaceNetworkAclAssociationAction.add_member(:association_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActionTarget, location_name: 'AssociationId'))
    ReplaceNetworkAclAssociationAction.add_member(:network_acl_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActionTarget, location_name: 'NetworkAclId'))
    ReplaceNetworkAclAssociationAction.add_member(:fms_can_remediate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'FMSCanRemediate', traits: {"smithy.api#default" => false}))
    ReplaceNetworkAclAssociationAction.type = Types::ReplaceNetworkAclAssociationAction
    Resource.add_member(:uri, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'URI', traits: {"smithy.api#required" => {}}))
    Resource.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AWSAccountId, location_name: 'AccountId'))
    Resource.type = Types::Resource
    ResourceArnList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn)
    ResourceIdList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId)
    ResourceList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Resource)
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceSet.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Base62Id, location_name: 'Id'))
    ResourceSet.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'Name', traits: {"smithy.api#required" => {}}))
    ResourceSet.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description'))
    ResourceSet.add_member(:update_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateToken, location_name: 'UpdateToken'))
    ResourceSet.add_member(:resource_type_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTypeList, location_name: 'ResourceTypeList', traits: {"smithy.api#required" => {}}))
    ResourceSet.add_member(:last_update_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimeStamp, location_name: 'LastUpdateTime'))
    ResourceSet.add_member(:resource_set_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceSetStatus, location_name: 'ResourceSetStatus'))
    ResourceSet.type = Types::ResourceSet
    ResourceSetIds.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Base62Id)
    ResourceSetStatus.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    ResourceSetStatus.add_member(:out_of_admin_scope, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OUT_OF_ADMIN_SCOPE', traits: {"smithy.api#enumValue" => "OUT_OF_ADMIN_SCOPE"}))
    ResourceSetSummary.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Base62Id, location_name: 'Id'))
    ResourceSetSummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'Name'))
    ResourceSetSummary.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description'))
    ResourceSetSummary.add_member(:last_update_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimeStamp, location_name: 'LastUpdateTime'))
    ResourceSetSummary.add_member(:resource_set_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceSetStatus, location_name: 'ResourceSetStatus'))
    ResourceSetSummary.type = Types::ResourceSetSummary
    ResourceSetSummaryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceSetSummary)
    ResourceTag.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTagKey, location_name: 'Key', traits: {"smithy.api#required" => {}}))
    ResourceTag.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTagValue, location_name: 'Value'))
    ResourceTag.type = Types::ResourceTag
    ResourceTagLogicalOperator.add_member(:and, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AND', traits: {"smithy.api#enumValue" => "AND"}))
    ResourceTagLogicalOperator.add_member(:or, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OR', traits: {"smithy.api#enumValue" => "OR"}))
    ResourceTags.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTag)
    ResourceTypeList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType)
    ResourceViolation.add_member(:aws_vpc_security_group_violation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsVPCSecurityGroupViolation, location_name: 'AwsVPCSecurityGroupViolation'))
    ResourceViolation.add_member(:aws_ec2_network_interface_violation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsEc2NetworkInterfaceViolation, location_name: 'AwsEc2NetworkInterfaceViolation'))
    ResourceViolation.add_member(:aws_ec2_instance_violation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsEc2InstanceViolation, location_name: 'AwsEc2InstanceViolation'))
    ResourceViolation.add_member(:network_firewall_missing_firewall_violation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkFirewallMissingFirewallViolation, location_name: 'NetworkFirewallMissingFirewallViolation'))
    ResourceViolation.add_member(:network_firewall_missing_subnet_violation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkFirewallMissingSubnetViolation, location_name: 'NetworkFirewallMissingSubnetViolation'))
    ResourceViolation.add_member(:network_firewall_missing_expected_rt_violation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkFirewallMissingExpectedRTViolation, location_name: 'NetworkFirewallMissingExpectedRTViolation'))
    ResourceViolation.add_member(:network_firewall_policy_modified_violation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkFirewallPolicyModifiedViolation, location_name: 'NetworkFirewallPolicyModifiedViolation'))
    ResourceViolation.add_member(:network_firewall_internet_traffic_not_inspected_violation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkFirewallInternetTrafficNotInspectedViolation, location_name: 'NetworkFirewallInternetTrafficNotInspectedViolation'))
    ResourceViolation.add_member(:network_firewall_invalid_route_configuration_violation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkFirewallInvalidRouteConfigurationViolation, location_name: 'NetworkFirewallInvalidRouteConfigurationViolation'))
    ResourceViolation.add_member(:network_firewall_black_hole_route_detected_violation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkFirewallBlackHoleRouteDetectedViolation, location_name: 'NetworkFirewallBlackHoleRouteDetectedViolation'))
    ResourceViolation.add_member(:network_firewall_unexpected_firewall_routes_violation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkFirewallUnexpectedFirewallRoutesViolation, location_name: 'NetworkFirewallUnexpectedFirewallRoutesViolation'))
    ResourceViolation.add_member(:network_firewall_unexpected_gateway_routes_violation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkFirewallUnexpectedGatewayRoutesViolation, location_name: 'NetworkFirewallUnexpectedGatewayRoutesViolation'))
    ResourceViolation.add_member(:network_firewall_missing_expected_routes_violation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkFirewallMissingExpectedRoutesViolation, location_name: 'NetworkFirewallMissingExpectedRoutesViolation'))
    ResourceViolation.add_member(:dns_rule_group_priority_conflict_violation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DnsRuleGroupPriorityConflictViolation, location_name: 'DnsRuleGroupPriorityConflictViolation'))
    ResourceViolation.add_member(:dns_duplicate_rule_group_violation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DnsDuplicateRuleGroupViolation, location_name: 'DnsDuplicateRuleGroupViolation'))
    ResourceViolation.add_member(:dns_rule_group_limit_exceeded_violation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DnsRuleGroupLimitExceededViolation, location_name: 'DnsRuleGroupLimitExceededViolation'))
    ResourceViolation.add_member(:firewall_subnet_is_out_of_scope_violation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FirewallSubnetIsOutOfScopeViolation, location_name: 'FirewallSubnetIsOutOfScopeViolation'))
    ResourceViolation.add_member(:route_has_out_of_scope_endpoint_violation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RouteHasOutOfScopeEndpointViolation, location_name: 'RouteHasOutOfScopeEndpointViolation'))
    ResourceViolation.add_member(:third_party_firewall_missing_firewall_violation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThirdPartyFirewallMissingFirewallViolation, location_name: 'ThirdPartyFirewallMissingFirewallViolation'))
    ResourceViolation.add_member(:third_party_firewall_missing_subnet_violation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThirdPartyFirewallMissingSubnetViolation, location_name: 'ThirdPartyFirewallMissingSubnetViolation'))
    ResourceViolation.add_member(:third_party_firewall_missing_expected_route_table_violation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThirdPartyFirewallMissingExpectedRouteTableViolation, location_name: 'ThirdPartyFirewallMissingExpectedRouteTableViolation'))
    ResourceViolation.add_member(:firewall_subnet_missing_vpc_endpoint_violation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FirewallSubnetMissingVPCEndpointViolation, location_name: 'FirewallSubnetMissingVPCEndpointViolation'))
    ResourceViolation.add_member(:invalid_network_acl_entries_violation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNetworkAclEntriesViolation, location_name: 'InvalidNetworkAclEntriesViolation'))
    ResourceViolation.add_member(:possible_remediation_actions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PossibleRemediationActions, location_name: 'PossibleRemediationActions'))
    ResourceViolation.add_member(:web_acl_has_incompatible_configuration_violation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WebACLHasIncompatibleConfigurationViolation, location_name: 'WebACLHasIncompatibleConfigurationViolation'))
    ResourceViolation.add_member(:web_acl_has_out_of_scope_resources_violation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WebACLHasOutOfScopeResourcesViolation, location_name: 'WebACLHasOutOfScopeResourcesViolation'))
    ResourceViolation.type = Types::ResourceViolation
    ResourceViolations.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceViolation)
    Route.add_member(:destination_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DestinationType, location_name: 'DestinationType'))
    Route.add_member(:target_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetType, location_name: 'TargetType'))
    Route.add_member(:destination, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LengthBoundedString, location_name: 'Destination'))
    Route.add_member(:target, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LengthBoundedString, location_name: 'Target'))
    Route.type = Types::Route
    RouteHasOutOfScopeEndpointViolation.add_member(:subnet_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'SubnetId'))
    RouteHasOutOfScopeEndpointViolation.add_member(:vpc_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'VpcId'))
    RouteHasOutOfScopeEndpointViolation.add_member(:route_table_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'RouteTableId'))
    RouteHasOutOfScopeEndpointViolation.add_member(:violating_routes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Routes, location_name: 'ViolatingRoutes'))
    RouteHasOutOfScopeEndpointViolation.add_member(:subnet_availability_zone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LengthBoundedString, location_name: 'SubnetAvailabilityZone'))
    RouteHasOutOfScopeEndpointViolation.add_member(:subnet_availability_zone_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LengthBoundedString, location_name: 'SubnetAvailabilityZoneId'))
    RouteHasOutOfScopeEndpointViolation.add_member(:current_firewall_subnet_route_table, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'CurrentFirewallSubnetRouteTable'))
    RouteHasOutOfScopeEndpointViolation.add_member(:firewall_subnet_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'FirewallSubnetId'))
    RouteHasOutOfScopeEndpointViolation.add_member(:firewall_subnet_routes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Routes, location_name: 'FirewallSubnetRoutes'))
    RouteHasOutOfScopeEndpointViolation.add_member(:internet_gateway_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'InternetGatewayId'))
    RouteHasOutOfScopeEndpointViolation.add_member(:current_internet_gateway_route_table, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'CurrentInternetGatewayRouteTable'))
    RouteHasOutOfScopeEndpointViolation.add_member(:internet_gateway_routes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Routes, location_name: 'InternetGatewayRoutes'))
    RouteHasOutOfScopeEndpointViolation.type = Types::RouteHasOutOfScopeEndpointViolation
    Routes.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Route)
    RuleOrder.add_member(:strict_order, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STRICT_ORDER', traits: {"smithy.api#enumValue" => "STRICT_ORDER"}))
    RuleOrder.add_member(:default_action_order, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEFAULT_ACTION_ORDER', traits: {"smithy.api#enumValue" => "DEFAULT_ACTION_ORDER"}))
    SecurityGroupRemediationAction.add_member(:remediation_action_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RemediationActionType, location_name: 'RemediationActionType'))
    SecurityGroupRemediationAction.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RemediationActionDescription, location_name: 'Description'))
    SecurityGroupRemediationAction.add_member(:remediation_result, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupRuleDescription, location_name: 'RemediationResult'))
    SecurityGroupRemediationAction.add_member(:is_default_action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IsDefaultAction', traits: {"smithy.api#default" => false}))
    SecurityGroupRemediationAction.type = Types::SecurityGroupRemediationAction
    SecurityGroupRemediationActions.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupRemediationAction)
    SecurityGroupRuleDescription.add_member(:ipv4_range, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CIDR, location_name: 'IPV4Range'))
    SecurityGroupRuleDescription.add_member(:ipv6_range, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CIDR, location_name: 'IPV6Range'))
    SecurityGroupRuleDescription.add_member(:prefix_list_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'PrefixListId'))
    SecurityGroupRuleDescription.add_member(:protocol, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LengthBoundedString, location_name: 'Protocol'))
    SecurityGroupRuleDescription.add_member(:from_port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IPPortNumber, location_name: 'FromPort'))
    SecurityGroupRuleDescription.add_member(:to_port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IPPortNumber, location_name: 'ToPort'))
    SecurityGroupRuleDescription.type = Types::SecurityGroupRuleDescription
    SecurityServicePolicyData.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityServiceType, location_name: 'Type', traits: {"smithy.api#required" => {}}))
    SecurityServicePolicyData.add_member(:managed_service_data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedServiceData, location_name: 'ManagedServiceData'))
    SecurityServicePolicyData.add_member(:policy_option, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyOption, location_name: 'PolicyOption'))
    SecurityServicePolicyData.type = Types::SecurityServicePolicyData
    SecurityServiceType.add_member(:waf, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WAF', traits: {"smithy.api#enumValue" => "WAF"}))
    SecurityServiceType.add_member(:wafv2, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WAFV2', traits: {"smithy.api#enumValue" => "WAFV2"}))
    SecurityServiceType.add_member(:shield_advanced, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SHIELD_ADVANCED', traits: {"smithy.api#enumValue" => "SHIELD_ADVANCED"}))
    SecurityServiceType.add_member(:security_groups_common, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SECURITY_GROUPS_COMMON', traits: {"smithy.api#enumValue" => "SECURITY_GROUPS_COMMON"}))
    SecurityServiceType.add_member(:security_groups_content_audit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SECURITY_GROUPS_CONTENT_AUDIT', traits: {"smithy.api#enumValue" => "SECURITY_GROUPS_CONTENT_AUDIT"}))
    SecurityServiceType.add_member(:security_groups_usage_audit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SECURITY_GROUPS_USAGE_AUDIT', traits: {"smithy.api#enumValue" => "SECURITY_GROUPS_USAGE_AUDIT"}))
    SecurityServiceType.add_member(:network_firewall, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NETWORK_FIREWALL', traits: {"smithy.api#enumValue" => "NETWORK_FIREWALL"}))
    SecurityServiceType.add_member(:dns_firewall, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DNS_FIREWALL', traits: {"smithy.api#enumValue" => "DNS_FIREWALL"}))
    SecurityServiceType.add_member(:third_party_firewall, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'THIRD_PARTY_FIREWALL', traits: {"smithy.api#enumValue" => "THIRD_PARTY_FIREWALL"}))
    SecurityServiceType.add_member(:import_network_firewall, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IMPORT_NETWORK_FIREWALL', traits: {"smithy.api#enumValue" => "IMPORT_NETWORK_FIREWALL"}))
    SecurityServiceType.add_member(:network_acl_common, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NETWORK_ACL_COMMON', traits: {"smithy.api#enumValue" => "NETWORK_ACL_COMMON"}))
    SecurityServiceTypeList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityServiceType)
    StatefulEngineOptions.add_member(:rule_order, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuleOrder, location_name: 'RuleOrder'))
    StatefulEngineOptions.add_member(:stream_exception_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StreamExceptionPolicy, location_name: 'StreamExceptionPolicy'))
    StatefulEngineOptions.type = Types::StatefulEngineOptions
    StatefulRuleGroup.add_member(:rule_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkFirewallResourceName, location_name: 'RuleGroupName'))
    StatefulRuleGroup.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'ResourceId'))
    StatefulRuleGroup.add_member(:priority, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PriorityNumber, location_name: 'Priority'))
    StatefulRuleGroup.add_member(:override, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkFirewallStatefulRuleGroupOverride, location_name: 'Override'))
    StatefulRuleGroup.type = Types::StatefulRuleGroup
    StatefulRuleGroupList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatefulRuleGroup)
    StatelessRuleGroup.add_member(:rule_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkFirewallResourceName, location_name: 'RuleGroupName'))
    StatelessRuleGroup.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'ResourceId'))
    StatelessRuleGroup.add_member(:priority, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatelessRuleGroupPriority, location_name: 'Priority'))
    StatelessRuleGroup.type = Types::StatelessRuleGroup
    StatelessRuleGroupList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatelessRuleGroup)
    StreamExceptionPolicy.add_member(:drop, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DROP', traits: {"smithy.api#enumValue" => "DROP"}))
    StreamExceptionPolicy.add_member(:continue, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONTINUE', traits: {"smithy.api#enumValue" => "CONTINUE"}))
    StreamExceptionPolicy.add_member(:reject, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REJECT', traits: {"smithy.api#enumValue" => "REJECT"}))
    StreamExceptionPolicy.add_member(:fms_ignore, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FMS_IGNORE', traits: {"smithy.api#enumValue" => "FMS_IGNORE"}))
    Tag.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: 'Key', traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'Value', traits: {"smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeyList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'ResourceArn', traits: {"smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tag_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'TagList', traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    TargetType.add_member(:gateway, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Gateway', traits: {"smithy.api#enumValue" => "GATEWAY"}))
    TargetType.add_member(:carrier_gateway, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CarrierGateway', traits: {"smithy.api#enumValue" => "CARRIER_GATEWAY"}))
    TargetType.add_member(:instance, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Instance', traits: {"smithy.api#enumValue" => "INSTANCE"}))
    TargetType.add_member(:local_gateway, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LocalGateway', traits: {"smithy.api#enumValue" => "LOCAL_GATEWAY"}))
    TargetType.add_member(:nat_gateway, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NatGateway', traits: {"smithy.api#enumValue" => "NAT_GATEWAY"}))
    TargetType.add_member(:network_interface, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NetworkInterface', traits: {"smithy.api#enumValue" => "NETWORK_INTERFACE"}))
    TargetType.add_member(:vpc_endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VPCEndpoint', traits: {"smithy.api#enumValue" => "VPC_ENDPOINT"}))
    TargetType.add_member(:vpc_peering_connection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VPCPeeringConnection', traits: {"smithy.api#enumValue" => "VPC_PEERING_CONNECTION"}))
    TargetType.add_member(:egress_only_internet_gateway, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EgressOnlyInternetGateway', traits: {"smithy.api#enumValue" => "EGRESS_ONLY_INTERNET_GATEWAY"}))
    TargetType.add_member(:transit_gateway, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TransitGateway', traits: {"smithy.api#enumValue" => "TRANSIT_GATEWAY"}))
    TargetViolationReasons.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetViolationReason)
    ThirdPartyFirewall.add_member(:palo_alto_networks_cloud_ngfw, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PALO_ALTO_NETWORKS_CLOUD_NGFW', traits: {"smithy.api#enumValue" => "PALO_ALTO_NETWORKS_CLOUD_NGFW"}))
    ThirdPartyFirewall.add_member(:fortigate_cloud_native_firewall, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FORTIGATE_CLOUD_NATIVE_FIREWALL', traits: {"smithy.api#enumValue" => "FORTIGATE_CLOUD_NATIVE_FIREWALL"}))
    ThirdPartyFirewallAssociationStatus.add_member(:onboarding, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ONBOARDING', traits: {"smithy.api#enumValue" => "ONBOARDING"}))
    ThirdPartyFirewallAssociationStatus.add_member(:onboard_complete, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ONBOARD_COMPLETE', traits: {"smithy.api#enumValue" => "ONBOARD_COMPLETE"}))
    ThirdPartyFirewallAssociationStatus.add_member(:offboarding, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OFFBOARDING', traits: {"smithy.api#enumValue" => "OFFBOARDING"}))
    ThirdPartyFirewallAssociationStatus.add_member(:offboard_complete, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OFFBOARD_COMPLETE', traits: {"smithy.api#enumValue" => "OFFBOARD_COMPLETE"}))
    ThirdPartyFirewallAssociationStatus.add_member(:not_exist, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NOT_EXIST', traits: {"smithy.api#enumValue" => "NOT_EXIST"}))
    ThirdPartyFirewallFirewallPolicies.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThirdPartyFirewallFirewallPolicy)
    ThirdPartyFirewallFirewallPolicy.add_member(:firewall_policy_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FirewallPolicyId, location_name: 'FirewallPolicyId'))
    ThirdPartyFirewallFirewallPolicy.add_member(:firewall_policy_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FirewallPolicyName, location_name: 'FirewallPolicyName'))
    ThirdPartyFirewallFirewallPolicy.type = Types::ThirdPartyFirewallFirewallPolicy
    ThirdPartyFirewallMissingExpectedRouteTableViolation.add_member(:violation_target, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ViolationTarget, location_name: 'ViolationTarget'))
    ThirdPartyFirewallMissingExpectedRouteTableViolation.add_member(:vpc, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'VPC'))
    ThirdPartyFirewallMissingExpectedRouteTableViolation.add_member(:availability_zone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LengthBoundedString, location_name: 'AvailabilityZone'))
    ThirdPartyFirewallMissingExpectedRouteTableViolation.add_member(:current_route_table, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'CurrentRouteTable'))
    ThirdPartyFirewallMissingExpectedRouteTableViolation.add_member(:expected_route_table, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'ExpectedRouteTable'))
    ThirdPartyFirewallMissingExpectedRouteTableViolation.type = Types::ThirdPartyFirewallMissingExpectedRouteTableViolation
    ThirdPartyFirewallMissingFirewallViolation.add_member(:violation_target, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ViolationTarget, location_name: 'ViolationTarget'))
    ThirdPartyFirewallMissingFirewallViolation.add_member(:vpc, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'VPC'))
    ThirdPartyFirewallMissingFirewallViolation.add_member(:availability_zone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LengthBoundedString, location_name: 'AvailabilityZone'))
    ThirdPartyFirewallMissingFirewallViolation.add_member(:target_violation_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetViolationReason, location_name: 'TargetViolationReason'))
    ThirdPartyFirewallMissingFirewallViolation.type = Types::ThirdPartyFirewallMissingFirewallViolation
    ThirdPartyFirewallMissingSubnetViolation.add_member(:violation_target, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ViolationTarget, location_name: 'ViolationTarget'))
    ThirdPartyFirewallMissingSubnetViolation.add_member(:vpc, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'VPC'))
    ThirdPartyFirewallMissingSubnetViolation.add_member(:availability_zone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LengthBoundedString, location_name: 'AvailabilityZone'))
    ThirdPartyFirewallMissingSubnetViolation.add_member(:target_violation_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetViolationReason, location_name: 'TargetViolationReason'))
    ThirdPartyFirewallMissingSubnetViolation.type = Types::ThirdPartyFirewallMissingSubnetViolation
    ThirdPartyFirewallPolicy.add_member(:firewall_deployment_model, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FirewallDeploymentModel, location_name: 'FirewallDeploymentModel'))
    ThirdPartyFirewallPolicy.type = Types::ThirdPartyFirewallPolicy
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'ResourceArn', traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'TagKeys', traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    ViolationDetail.add_member(:policy_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyId, location_name: 'PolicyId', traits: {"smithy.api#required" => {}}))
    ViolationDetail.add_member(:member_account, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AWSAccountId, location_name: 'MemberAccount', traits: {"smithy.api#required" => {}}))
    ViolationDetail.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'ResourceId', traits: {"smithy.api#required" => {}}))
    ViolationDetail.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'ResourceType', traits: {"smithy.api#required" => {}}))
    ViolationDetail.add_member(:resource_violations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceViolations, location_name: 'ResourceViolations', traits: {"smithy.api#required" => {}}))
    ViolationDetail.add_member(:resource_tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'ResourceTags'))
    ViolationDetail.add_member(:resource_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LengthBoundedString, location_name: 'ResourceDescription'))
    ViolationDetail.type = Types::ViolationDetail
    ViolationReason.add_member(:web_acl_missing_rule_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WebAclMissingRuleGroup', traits: {"smithy.api#enumValue" => "WEB_ACL_MISSING_RULE_GROUP"}))
    ViolationReason.add_member(:resource_missing_web_acl, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ResourceMissingWebAcl', traits: {"smithy.api#enumValue" => "RESOURCE_MISSING_WEB_ACL"}))
    ViolationReason.add_member(:resource_incorrect_web_acl, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ResourceIncorrectWebAcl', traits: {"smithy.api#enumValue" => "RESOURCE_INCORRECT_WEB_ACL"}))
    ViolationReason.add_member(:resource_missing_shield_protection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ResourceMissingShieldProtection', traits: {"smithy.api#enumValue" => "RESOURCE_MISSING_SHIELD_PROTECTION"}))
    ViolationReason.add_member(:resource_missing_webacl_or_shield_protection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ResourceMissingWebaclOrShieldProtection', traits: {"smithy.api#enumValue" => "RESOURCE_MISSING_WEB_ACL_OR_SHIELD_PROTECTION"}))
    ViolationReason.add_member(:resource_missing_security_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ResourceMissingSecurityGroup', traits: {"smithy.api#enumValue" => "RESOURCE_MISSING_SECURITY_GROUP"}))
    ViolationReason.add_member(:resource_violates_audit_security_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ResourceViolatesAuditSecurityGroup', traits: {"smithy.api#enumValue" => "RESOURCE_VIOLATES_AUDIT_SECURITY_GROUP"}))
    ViolationReason.add_member(:security_group_unused, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SecurityGroupUnused', traits: {"smithy.api#enumValue" => "SECURITY_GROUP_UNUSED"}))
    ViolationReason.add_member(:security_group_redundant, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SecurityGroupRedundant', traits: {"smithy.api#enumValue" => "SECURITY_GROUP_REDUNDANT"}))
    ViolationReason.add_member(:fms_created_security_group_edited, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FMSCreatedSecurityGroupEdited', traits: {"smithy.api#enumValue" => "FMS_CREATED_SECURITY_GROUP_EDITED"}))
    ViolationReason.add_member(:missing_firewall, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MissingFirewall', traits: {"smithy.api#enumValue" => "MISSING_FIREWALL"}))
    ViolationReason.add_member(:missing_firewall_subnet_in_az, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MissingFirewallSubnetInAZ', traits: {"smithy.api#enumValue" => "MISSING_FIREWALL_SUBNET_IN_AZ"}))
    ViolationReason.add_member(:missing_expected_route_table, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MissingExpectedRouteTable', traits: {"smithy.api#enumValue" => "MISSING_EXPECTED_ROUTE_TABLE"}))
    ViolationReason.add_member(:network_firewall_policy_modified, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NetworkFirewallPolicyModified', traits: {"smithy.api#enumValue" => "NETWORK_FIREWALL_POLICY_MODIFIED"}))
    ViolationReason.add_member(:firewall_subnet_is_out_of_scope, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FirewallSubnetIsOutOfScope', traits: {"smithy.api#enumValue" => "FIREWALL_SUBNET_IS_OUT_OF_SCOPE"}))
    ViolationReason.add_member(:internet_gateway_missing_expected_route, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'InternetGatewayMissingExpectedRoute', traits: {"smithy.api#enumValue" => "INTERNET_GATEWAY_MISSING_EXPECTED_ROUTE"}))
    ViolationReason.add_member(:firewall_subnet_missing_expected_route, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FirewallSubnetMissingExpectedRoute', traits: {"smithy.api#enumValue" => "FIREWALL_SUBNET_MISSING_EXPECTED_ROUTE"}))
    ViolationReason.add_member(:unexpected_firewall_routes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UnexpectedFirewallRoutes', traits: {"smithy.api#enumValue" => "UNEXPECTED_FIREWALL_ROUTES"}))
    ViolationReason.add_member(:unexpected_target_gateway_routes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UnexpectedTargetGatewayRoutes', traits: {"smithy.api#enumValue" => "UNEXPECTED_TARGET_GATEWAY_ROUTES"}))
    ViolationReason.add_member(:traffic_inspection_crosses_az_boundary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TrafficInspectionCrossesAZBoundary', traits: {"smithy.api#enumValue" => "TRAFFIC_INSPECTION_CROSSES_AZ_BOUNDARY"}))
    ViolationReason.add_member(:invalid_route_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'InvalidRouteConfiguration', traits: {"smithy.api#enumValue" => "INVALID_ROUTE_CONFIGURATION"}))
    ViolationReason.add_member(:missing_target_gateway, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MissingTargetGateway', traits: {"smithy.api#enumValue" => "MISSING_TARGET_GATEWAY"}))
    ViolationReason.add_member(:internet_traffic_not_inspected, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'InternetTrafficNotInspected', traits: {"smithy.api#enumValue" => "INTERNET_TRAFFIC_NOT_INSPECTED"}))
    ViolationReason.add_member(:black_hole_route_detected, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BlackHoleRouteDetected', traits: {"smithy.api#enumValue" => "BLACK_HOLE_ROUTE_DETECTED"}))
    ViolationReason.add_member(:black_hole_route_detected_in_firewall_subnet, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BlackHoleRouteDetectedInFirewallSubnet', traits: {"smithy.api#enumValue" => "BLACK_HOLE_ROUTE_DETECTED_IN_FIREWALL_SUBNET"}))
    ViolationReason.add_member(:resource_missing_dns_firewall, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ResourceMissingDnsFirewall', traits: {"smithy.api#enumValue" => "RESOURCE_MISSING_DNS_FIREWALL"}))
    ViolationReason.add_member(:route_has_out_of_scope_endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RouteHasOutOfScopeEndpoint', traits: {"smithy.api#enumValue" => "ROUTE_HAS_OUT_OF_SCOPE_ENDPOINT"}))
    ViolationReason.add_member(:firewall_subnet_missing_vpc_endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FirewallSubnetMissingVPCEndpoint', traits: {"smithy.api#enumValue" => "FIREWALL_SUBNET_MISSING_VPCE_ENDPOINT"}))
    ViolationReason.add_member(:invalid_network_acl_entry, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'InvalidNetworkAclEntry', traits: {"smithy.api#enumValue" => "INVALID_NETWORK_ACL_ENTRY"}))
    ViolationReason.add_member(:web_acl_configuration_or_scope_of_use, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WebACLConfigurationOrScopeOfUse', traits: {"smithy.api#enumValue" => "WEB_ACL_CONFIGURATION_OR_SCOPE_OF_USE"}))
    WebACLHasIncompatibleConfigurationViolation.add_member(:web_acl_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'WebACLArn'))
    WebACLHasIncompatibleConfigurationViolation.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LengthBoundedString, location_name: 'Description'))
    WebACLHasIncompatibleConfigurationViolation.type = Types::WebACLHasIncompatibleConfigurationViolation
    WebACLHasOutOfScopeResourcesViolation.add_member(:web_acl_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'WebACLArn'))
    WebACLHasOutOfScopeResourcesViolation.add_member(:out_of_scope_resource_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArnList, location_name: 'OutOfScopeResourceList'))
    WebACLHasOutOfScopeResourcesViolation.type = Types::WebACLHasOutOfScopeResourcesViolation

    AWSFMS20180101 = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.fms#AWSFMS_20180101"
      service.name = "AWSFMS20180101"
      service.version = "2018-01-01"
      service.traits = {"aws.api#service" => {"sdkId" => "FMS", "arnNamespace" => "fms", "cloudFormationName" => "FMS", "cloudTrailEventSource" => "fms.amazonaws.com", "endpointPrefix" => "fms"}, "aws.auth#sigv4" => {"name" => "fms"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "Firewall Management Service"}
      service.add_operation(:associate_admin_account, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fms#AssociateAdminAccount"
        operation.name = "AssociateAdminAccount"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateAdminAccountRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:associate_third_party_firewall, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fms#AssociateThirdPartyFirewall"
        operation.name = "AssociateThirdPartyFirewall"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateThirdPartyFirewallRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateThirdPartyFirewallResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:batch_associate_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fms#BatchAssociateResource"
        operation.name = "BatchAssociateResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchAssociateResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchAssociateResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:batch_disassociate_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fms#BatchDisassociateResource"
        operation.name = "BatchDisassociateResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDisassociateResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDisassociateResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:delete_apps_list, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fms#DeleteAppsList"
        operation.name = "DeleteAppsList"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAppsListRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:delete_notification_channel, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fms#DeleteNotificationChannel"
        operation.name = "DeleteNotificationChannel"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteNotificationChannelRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:delete_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fms#DeletePolicy"
        operation.name = "DeletePolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeletePolicyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:delete_protocols_list, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fms#DeleteProtocolsList"
        operation.name = "DeleteProtocolsList"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteProtocolsListRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:delete_resource_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fms#DeleteResourceSet"
        operation.name = "DeleteResourceSet"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteResourceSetRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:disassociate_admin_account, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fms#DisassociateAdminAccount"
        operation.name = "DisassociateAdminAccount"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateAdminAccountRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:disassociate_third_party_firewall, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fms#DisassociateThirdPartyFirewall"
        operation.name = "DisassociateThirdPartyFirewall"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateThirdPartyFirewallRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateThirdPartyFirewallResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:get_admin_account, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fms#GetAdminAccount"
        operation.name = "GetAdminAccount"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAdminAccountRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAdminAccountResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:get_admin_scope, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fms#GetAdminScope"
        operation.name = "GetAdminScope"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAdminScopeRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAdminScopeResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:get_apps_list, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fms#GetAppsList"
        operation.name = "GetAppsList"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAppsListRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAppsListResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:get_compliance_detail, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fms#GetComplianceDetail"
        operation.name = "GetComplianceDetail"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetComplianceDetailRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetComplianceDetailResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:get_notification_channel, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fms#GetNotificationChannel"
        operation.name = "GetNotificationChannel"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetNotificationChannelRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetNotificationChannelResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:get_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fms#GetPolicy"
        operation.name = "GetPolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetPolicyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetPolicyResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTypeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:get_protection_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fms#GetProtectionStatus"
        operation.name = "GetProtectionStatus"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetProtectionStatusRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetProtectionStatusResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:get_protocols_list, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fms#GetProtocolsList"
        operation.name = "GetProtocolsList"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetProtocolsListRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetProtocolsListResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:get_resource_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fms#GetResourceSet"
        operation.name = "GetResourceSet"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetResourceSetRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetResourceSetResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:get_third_party_firewall_association_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fms#GetThirdPartyFirewallAssociationStatus"
        operation.name = "GetThirdPartyFirewallAssociationStatus"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetThirdPartyFirewallAssociationStatusRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetThirdPartyFirewallAssociationStatusResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:get_violation_details, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fms#GetViolationDetails"
        operation.name = "GetViolationDetails"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetViolationDetailsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetViolationDetailsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:list_admin_accounts_for_organization, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fms#ListAdminAccountsForOrganization"
        operation.name = "ListAdminAccountsForOrganization"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAdminAccountsForOrganizationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAdminAccountsForOrganizationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListAdminAccountsForOrganization.new
      end)
      service.add_operation(:list_admins_managing_account, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fms#ListAdminsManagingAccount"
        operation.name = "ListAdminsManagingAccount"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAdminsManagingAccountRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAdminsManagingAccountResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListAdminsManagingAccount.new
      end)
      service.add_operation(:list_apps_lists, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fms#ListAppsLists"
        operation.name = "ListAppsLists"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAppsListsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAppsListsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListAppsLists.new
      end)
      service.add_operation(:list_compliance_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fms#ListComplianceStatus"
        operation.name = "ListComplianceStatus"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListComplianceStatusRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListComplianceStatusResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListComplianceStatus.new
      end)
      service.add_operation(:list_discovered_resources, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fms#ListDiscoveredResources"
        operation.name = "ListDiscoveredResources"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListDiscoveredResourcesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListDiscoveredResourcesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidOperationException)
        operation.traits = {}
      end)
      service.add_operation(:list_member_accounts, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fms#ListMemberAccounts"
        operation.name = "ListMemberAccounts"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListMemberAccountsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListMemberAccountsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListMemberAccounts.new
      end)
      service.add_operation(:list_policies, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fms#ListPolicies"
        operation.name = "ListPolicies"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListPoliciesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListPoliciesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListPolicies.new
      end)
      service.add_operation(:list_protocols_lists, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fms#ListProtocolsLists"
        operation.name = "ListProtocolsLists"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListProtocolsListsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListProtocolsListsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListProtocolsLists.new
      end)
      service.add_operation(:list_resource_set_resources, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fms#ListResourceSetResources"
        operation.name = "ListResourceSetResources"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListResourceSetResourcesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListResourceSetResourcesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:list_resource_sets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fms#ListResourceSets"
        operation.name = "ListResourceSets"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListResourceSetsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListResourceSetsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidOperationException)
        operation.traits = {}
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fms#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:list_third_party_firewall_firewall_policies, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fms#ListThirdPartyFirewallFirewallPolicies"
        operation.name = "ListThirdPartyFirewallFirewallPolicies"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListThirdPartyFirewallFirewallPoliciesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListThirdPartyFirewallFirewallPoliciesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListThirdPartyFirewallFirewallPolicies.new
      end)
      service.add_operation(:put_admin_account, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fms#PutAdminAccount"
        operation.name = "PutAdminAccount"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutAdminAccountRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.traits = {}
      end)
      service.add_operation(:put_apps_list, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fms#PutAppsList"
        operation.name = "PutAppsList"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutAppsListRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutAppsListResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:put_notification_channel, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fms#PutNotificationChannel"
        operation.name = "PutNotificationChannel"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutNotificationChannelRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:put_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fms#PutPolicy"
        operation.name = "PutPolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutPolicyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutPolicyResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTypeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:put_protocols_list, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fms#PutProtocolsList"
        operation.name = "PutProtocolsList"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutProtocolsListRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutProtocolsListResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:put_resource_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fms#PutResourceSet"
        operation.name = "PutResourceSet"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutResourceSetRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutResourceSetResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.traits = {}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fms#TagResource"
        operation.name = "TagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.fms#UntagResource"
        operation.name = "UntagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidOperationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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
