# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::FMS
  # @api private
  module ClientApi

    include Seahorse::Model

    AWSAccountId = Shapes::StringShape.new(name: 'AWSAccountId')
    AWSAccountIdList = Shapes::ListShape.new(name: 'AWSAccountIdList')
    AWSRegion = Shapes::StringShape.new(name: 'AWSRegion')
    AWSRegionList = Shapes::ListShape.new(name: 'AWSRegionList')
    AccountIdList = Shapes::ListShape.new(name: 'AccountIdList')
    AccountRoleStatus = Shapes::StringShape.new(name: 'AccountRoleStatus')
    AccountScope = Shapes::StructureShape.new(name: 'AccountScope')
    ActionTarget = Shapes::StructureShape.new(name: 'ActionTarget')
    AdminAccountSummary = Shapes::StructureShape.new(name: 'AdminAccountSummary')
    AdminAccountSummaryList = Shapes::ListShape.new(name: 'AdminAccountSummaryList')
    AdminScope = Shapes::StructureShape.new(name: 'AdminScope')
    App = Shapes::StructureShape.new(name: 'App')
    AppsList = Shapes::ListShape.new(name: 'AppsList')
    AppsListData = Shapes::StructureShape.new(name: 'AppsListData')
    AppsListDataSummary = Shapes::StructureShape.new(name: 'AppsListDataSummary')
    AppsListsData = Shapes::ListShape.new(name: 'AppsListsData')
    AssociateAdminAccountRequest = Shapes::StructureShape.new(name: 'AssociateAdminAccountRequest')
    AssociateThirdPartyFirewallRequest = Shapes::StructureShape.new(name: 'AssociateThirdPartyFirewallRequest')
    AssociateThirdPartyFirewallResponse = Shapes::StructureShape.new(name: 'AssociateThirdPartyFirewallResponse')
    AwsEc2InstanceViolation = Shapes::StructureShape.new(name: 'AwsEc2InstanceViolation')
    AwsEc2NetworkInterfaceViolation = Shapes::StructureShape.new(name: 'AwsEc2NetworkInterfaceViolation')
    AwsEc2NetworkInterfaceViolations = Shapes::ListShape.new(name: 'AwsEc2NetworkInterfaceViolations')
    AwsVPCSecurityGroupViolation = Shapes::StructureShape.new(name: 'AwsVPCSecurityGroupViolation')
    Base62Id = Shapes::StringShape.new(name: 'Base62Id')
    BasicInteger = Shapes::IntegerShape.new(name: 'BasicInteger')
    BatchAssociateResourceRequest = Shapes::StructureShape.new(name: 'BatchAssociateResourceRequest')
    BatchAssociateResourceResponse = Shapes::StructureShape.new(name: 'BatchAssociateResourceResponse')
    BatchDisassociateResourceRequest = Shapes::StructureShape.new(name: 'BatchDisassociateResourceRequest')
    BatchDisassociateResourceResponse = Shapes::StructureShape.new(name: 'BatchDisassociateResourceResponse')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    CIDR = Shapes::StringShape.new(name: 'CIDR')
    ComplianceViolator = Shapes::StructureShape.new(name: 'ComplianceViolator')
    ComplianceViolatorMetadata = Shapes::MapShape.new(name: 'ComplianceViolatorMetadata')
    ComplianceViolators = Shapes::ListShape.new(name: 'ComplianceViolators')
    CustomerPolicyScopeId = Shapes::StringShape.new(name: 'CustomerPolicyScopeId')
    CustomerPolicyScopeIdList = Shapes::ListShape.new(name: 'CustomerPolicyScopeIdList')
    CustomerPolicyScopeIdType = Shapes::StringShape.new(name: 'CustomerPolicyScopeIdType')
    CustomerPolicyScopeMap = Shapes::MapShape.new(name: 'CustomerPolicyScopeMap')
    CustomerPolicyStatus = Shapes::StringShape.new(name: 'CustomerPolicyStatus')
    DeleteAppsListRequest = Shapes::StructureShape.new(name: 'DeleteAppsListRequest')
    DeleteNotificationChannelRequest = Shapes::StructureShape.new(name: 'DeleteNotificationChannelRequest')
    DeletePolicyRequest = Shapes::StructureShape.new(name: 'DeletePolicyRequest')
    DeleteProtocolsListRequest = Shapes::StructureShape.new(name: 'DeleteProtocolsListRequest')
    DeleteResourceSetRequest = Shapes::StructureShape.new(name: 'DeleteResourceSetRequest')
    DependentServiceName = Shapes::StringShape.new(name: 'DependentServiceName')
    Description = Shapes::StringShape.new(name: 'Description')
    DestinationType = Shapes::StringShape.new(name: 'DestinationType')
    DetailedInfo = Shapes::StringShape.new(name: 'DetailedInfo')
    DisassociateAdminAccountRequest = Shapes::StructureShape.new(name: 'DisassociateAdminAccountRequest')
    DisassociateThirdPartyFirewallRequest = Shapes::StructureShape.new(name: 'DisassociateThirdPartyFirewallRequest')
    DisassociateThirdPartyFirewallResponse = Shapes::StructureShape.new(name: 'DisassociateThirdPartyFirewallResponse')
    DiscoveredResource = Shapes::StructureShape.new(name: 'DiscoveredResource')
    DiscoveredResourceList = Shapes::ListShape.new(name: 'DiscoveredResourceList')
    DnsDuplicateRuleGroupViolation = Shapes::StructureShape.new(name: 'DnsDuplicateRuleGroupViolation')
    DnsRuleGroupLimitExceededViolation = Shapes::StructureShape.new(name: 'DnsRuleGroupLimitExceededViolation')
    DnsRuleGroupPriorities = Shapes::ListShape.new(name: 'DnsRuleGroupPriorities')
    DnsRuleGroupPriority = Shapes::IntegerShape.new(name: 'DnsRuleGroupPriority')
    DnsRuleGroupPriorityConflictViolation = Shapes::StructureShape.new(name: 'DnsRuleGroupPriorityConflictViolation')
    EC2AssociateRouteTableAction = Shapes::StructureShape.new(name: 'EC2AssociateRouteTableAction')
    EC2CopyRouteTableAction = Shapes::StructureShape.new(name: 'EC2CopyRouteTableAction')
    EC2CreateRouteAction = Shapes::StructureShape.new(name: 'EC2CreateRouteAction')
    EC2CreateRouteTableAction = Shapes::StructureShape.new(name: 'EC2CreateRouteTableAction')
    EC2DeleteRouteAction = Shapes::StructureShape.new(name: 'EC2DeleteRouteAction')
    EC2ReplaceRouteAction = Shapes::StructureShape.new(name: 'EC2ReplaceRouteAction')
    EC2ReplaceRouteTableAssociationAction = Shapes::StructureShape.new(name: 'EC2ReplaceRouteTableAssociationAction')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    EvaluationResult = Shapes::StructureShape.new(name: 'EvaluationResult')
    EvaluationResults = Shapes::ListShape.new(name: 'EvaluationResults')
    ExpectedRoute = Shapes::StructureShape.new(name: 'ExpectedRoute')
    ExpectedRoutes = Shapes::ListShape.new(name: 'ExpectedRoutes')
    FMSPolicyUpdateFirewallCreationConfigAction = Shapes::StructureShape.new(name: 'FMSPolicyUpdateFirewallCreationConfigAction')
    FailedItem = Shapes::StructureShape.new(name: 'FailedItem')
    FailedItemList = Shapes::ListShape.new(name: 'FailedItemList')
    FailedItemReason = Shapes::StringShape.new(name: 'FailedItemReason')
    FirewallDeploymentModel = Shapes::StringShape.new(name: 'FirewallDeploymentModel')
    FirewallPolicyId = Shapes::StringShape.new(name: 'FirewallPolicyId')
    FirewallPolicyName = Shapes::StringShape.new(name: 'FirewallPolicyName')
    FirewallSubnetIsOutOfScopeViolation = Shapes::StructureShape.new(name: 'FirewallSubnetIsOutOfScopeViolation')
    FirewallSubnetMissingVPCEndpointViolation = Shapes::StructureShape.new(name: 'FirewallSubnetMissingVPCEndpointViolation')
    GetAdminAccountRequest = Shapes::StructureShape.new(name: 'GetAdminAccountRequest')
    GetAdminAccountResponse = Shapes::StructureShape.new(name: 'GetAdminAccountResponse')
    GetAdminScopeRequest = Shapes::StructureShape.new(name: 'GetAdminScopeRequest')
    GetAdminScopeResponse = Shapes::StructureShape.new(name: 'GetAdminScopeResponse')
    GetAppsListRequest = Shapes::StructureShape.new(name: 'GetAppsListRequest')
    GetAppsListResponse = Shapes::StructureShape.new(name: 'GetAppsListResponse')
    GetComplianceDetailRequest = Shapes::StructureShape.new(name: 'GetComplianceDetailRequest')
    GetComplianceDetailResponse = Shapes::StructureShape.new(name: 'GetComplianceDetailResponse')
    GetNotificationChannelRequest = Shapes::StructureShape.new(name: 'GetNotificationChannelRequest')
    GetNotificationChannelResponse = Shapes::StructureShape.new(name: 'GetNotificationChannelResponse')
    GetPolicyRequest = Shapes::StructureShape.new(name: 'GetPolicyRequest')
    GetPolicyResponse = Shapes::StructureShape.new(name: 'GetPolicyResponse')
    GetProtectionStatusRequest = Shapes::StructureShape.new(name: 'GetProtectionStatusRequest')
    GetProtectionStatusResponse = Shapes::StructureShape.new(name: 'GetProtectionStatusResponse')
    GetProtocolsListRequest = Shapes::StructureShape.new(name: 'GetProtocolsListRequest')
    GetProtocolsListResponse = Shapes::StructureShape.new(name: 'GetProtocolsListResponse')
    GetResourceSetRequest = Shapes::StructureShape.new(name: 'GetResourceSetRequest')
    GetResourceSetResponse = Shapes::StructureShape.new(name: 'GetResourceSetResponse')
    GetThirdPartyFirewallAssociationStatusRequest = Shapes::StructureShape.new(name: 'GetThirdPartyFirewallAssociationStatusRequest')
    GetThirdPartyFirewallAssociationStatusResponse = Shapes::StructureShape.new(name: 'GetThirdPartyFirewallAssociationStatusResponse')
    GetViolationDetailsRequest = Shapes::StructureShape.new(name: 'GetViolationDetailsRequest')
    GetViolationDetailsResponse = Shapes::StructureShape.new(name: 'GetViolationDetailsResponse')
    IPPortNumber = Shapes::IntegerShape.new(name: 'IPPortNumber')
    Identifier = Shapes::StringShape.new(name: 'Identifier')
    IdentifierList = Shapes::ListShape.new(name: 'IdentifierList')
    InternalErrorException = Shapes::StructureShape.new(name: 'InternalErrorException')
    InvalidInputException = Shapes::StructureShape.new(name: 'InvalidInputException')
    InvalidOperationException = Shapes::StructureShape.new(name: 'InvalidOperationException')
    InvalidTypeException = Shapes::StructureShape.new(name: 'InvalidTypeException')
    IssueInfoMap = Shapes::MapShape.new(name: 'IssueInfoMap')
    LengthBoundedString = Shapes::StringShape.new(name: 'LengthBoundedString')
    LengthBoundedStringList = Shapes::ListShape.new(name: 'LengthBoundedStringList')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    ListAdminAccountsForOrganizationRequest = Shapes::StructureShape.new(name: 'ListAdminAccountsForOrganizationRequest')
    ListAdminAccountsForOrganizationResponse = Shapes::StructureShape.new(name: 'ListAdminAccountsForOrganizationResponse')
    ListAdminsManagingAccountRequest = Shapes::StructureShape.new(name: 'ListAdminsManagingAccountRequest')
    ListAdminsManagingAccountResponse = Shapes::StructureShape.new(name: 'ListAdminsManagingAccountResponse')
    ListAppsListsRequest = Shapes::StructureShape.new(name: 'ListAppsListsRequest')
    ListAppsListsResponse = Shapes::StructureShape.new(name: 'ListAppsListsResponse')
    ListComplianceStatusRequest = Shapes::StructureShape.new(name: 'ListComplianceStatusRequest')
    ListComplianceStatusResponse = Shapes::StructureShape.new(name: 'ListComplianceStatusResponse')
    ListDiscoveredResourcesRequest = Shapes::StructureShape.new(name: 'ListDiscoveredResourcesRequest')
    ListDiscoveredResourcesResponse = Shapes::StructureShape.new(name: 'ListDiscoveredResourcesResponse')
    ListId = Shapes::StringShape.new(name: 'ListId')
    ListMemberAccountsRequest = Shapes::StructureShape.new(name: 'ListMemberAccountsRequest')
    ListMemberAccountsResponse = Shapes::StructureShape.new(name: 'ListMemberAccountsResponse')
    ListPoliciesRequest = Shapes::StructureShape.new(name: 'ListPoliciesRequest')
    ListPoliciesResponse = Shapes::StructureShape.new(name: 'ListPoliciesResponse')
    ListProtocolsListsRequest = Shapes::StructureShape.new(name: 'ListProtocolsListsRequest')
    ListProtocolsListsResponse = Shapes::StructureShape.new(name: 'ListProtocolsListsResponse')
    ListResourceSetResourcesRequest = Shapes::StructureShape.new(name: 'ListResourceSetResourcesRequest')
    ListResourceSetResourcesResponse = Shapes::StructureShape.new(name: 'ListResourceSetResourcesResponse')
    ListResourceSetsRequest = Shapes::StructureShape.new(name: 'ListResourceSetsRequest')
    ListResourceSetsResponse = Shapes::StructureShape.new(name: 'ListResourceSetsResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    ListThirdPartyFirewallFirewallPoliciesRequest = Shapes::StructureShape.new(name: 'ListThirdPartyFirewallFirewallPoliciesRequest')
    ListThirdPartyFirewallFirewallPoliciesResponse = Shapes::StructureShape.new(name: 'ListThirdPartyFirewallFirewallPoliciesResponse')
    ManagedServiceData = Shapes::StringShape.new(name: 'ManagedServiceData')
    MarketplaceSubscriptionOnboardingStatus = Shapes::StringShape.new(name: 'MarketplaceSubscriptionOnboardingStatus')
    MemberAccounts = Shapes::ListShape.new(name: 'MemberAccounts')
    Name = Shapes::StringShape.new(name: 'Name')
    NetworkFirewallAction = Shapes::StringShape.new(name: 'NetworkFirewallAction')
    NetworkFirewallActionList = Shapes::ListShape.new(name: 'NetworkFirewallActionList')
    NetworkFirewallBlackHoleRouteDetectedViolation = Shapes::StructureShape.new(name: 'NetworkFirewallBlackHoleRouteDetectedViolation')
    NetworkFirewallInternetTrafficNotInspectedViolation = Shapes::StructureShape.new(name: 'NetworkFirewallInternetTrafficNotInspectedViolation')
    NetworkFirewallInvalidRouteConfigurationViolation = Shapes::StructureShape.new(name: 'NetworkFirewallInvalidRouteConfigurationViolation')
    NetworkFirewallMissingExpectedRTViolation = Shapes::StructureShape.new(name: 'NetworkFirewallMissingExpectedRTViolation')
    NetworkFirewallMissingExpectedRoutesViolation = Shapes::StructureShape.new(name: 'NetworkFirewallMissingExpectedRoutesViolation')
    NetworkFirewallMissingFirewallViolation = Shapes::StructureShape.new(name: 'NetworkFirewallMissingFirewallViolation')
    NetworkFirewallMissingSubnetViolation = Shapes::StructureShape.new(name: 'NetworkFirewallMissingSubnetViolation')
    NetworkFirewallOverrideAction = Shapes::StringShape.new(name: 'NetworkFirewallOverrideAction')
    NetworkFirewallPolicy = Shapes::StructureShape.new(name: 'NetworkFirewallPolicy')
    NetworkFirewallPolicyDescription = Shapes::StructureShape.new(name: 'NetworkFirewallPolicyDescription')
    NetworkFirewallPolicyModifiedViolation = Shapes::StructureShape.new(name: 'NetworkFirewallPolicyModifiedViolation')
    NetworkFirewallResourceName = Shapes::StringShape.new(name: 'NetworkFirewallResourceName')
    NetworkFirewallStatefulRuleGroupOverride = Shapes::StructureShape.new(name: 'NetworkFirewallStatefulRuleGroupOverride')
    NetworkFirewallUnexpectedFirewallRoutesViolation = Shapes::StructureShape.new(name: 'NetworkFirewallUnexpectedFirewallRoutesViolation')
    NetworkFirewallUnexpectedGatewayRoutesViolation = Shapes::StructureShape.new(name: 'NetworkFirewallUnexpectedGatewayRoutesViolation')
    OrderedRemediationActions = Shapes::ListShape.new(name: 'OrderedRemediationActions')
    OrganizationStatus = Shapes::StringShape.new(name: 'OrganizationStatus')
    OrganizationalUnitId = Shapes::StringShape.new(name: 'OrganizationalUnitId')
    OrganizationalUnitIdList = Shapes::ListShape.new(name: 'OrganizationalUnitIdList')
    OrganizationalUnitScope = Shapes::StructureShape.new(name: 'OrganizationalUnitScope')
    PaginationMaxResults = Shapes::IntegerShape.new(name: 'PaginationMaxResults')
    PaginationToken = Shapes::StringShape.new(name: 'PaginationToken')
    PartialMatch = Shapes::StructureShape.new(name: 'PartialMatch')
    PartialMatches = Shapes::ListShape.new(name: 'PartialMatches')
    Policy = Shapes::StructureShape.new(name: 'Policy')
    PolicyComplianceDetail = Shapes::StructureShape.new(name: 'PolicyComplianceDetail')
    PolicyComplianceStatus = Shapes::StructureShape.new(name: 'PolicyComplianceStatus')
    PolicyComplianceStatusList = Shapes::ListShape.new(name: 'PolicyComplianceStatusList')
    PolicyComplianceStatusType = Shapes::StringShape.new(name: 'PolicyComplianceStatusType')
    PolicyId = Shapes::StringShape.new(name: 'PolicyId')
    PolicyOption = Shapes::StructureShape.new(name: 'PolicyOption')
    PolicySummary = Shapes::StructureShape.new(name: 'PolicySummary')
    PolicySummaryList = Shapes::ListShape.new(name: 'PolicySummaryList')
    PolicyTypeScope = Shapes::StructureShape.new(name: 'PolicyTypeScope')
    PolicyUpdateToken = Shapes::StringShape.new(name: 'PolicyUpdateToken')
    PossibleRemediationAction = Shapes::StructureShape.new(name: 'PossibleRemediationAction')
    PossibleRemediationActionList = Shapes::ListShape.new(name: 'PossibleRemediationActionList')
    PossibleRemediationActions = Shapes::StructureShape.new(name: 'PossibleRemediationActions')
    PreviousAppsList = Shapes::MapShape.new(name: 'PreviousAppsList')
    PreviousListVersion = Shapes::StringShape.new(name: 'PreviousListVersion')
    PreviousProtocolsList = Shapes::MapShape.new(name: 'PreviousProtocolsList')
    PriorityNumber = Shapes::IntegerShape.new(name: 'PriorityNumber')
    ProtectionData = Shapes::StringShape.new(name: 'ProtectionData')
    Protocol = Shapes::StringShape.new(name: 'Protocol')
    ProtocolsList = Shapes::ListShape.new(name: 'ProtocolsList')
    ProtocolsListData = Shapes::StructureShape.new(name: 'ProtocolsListData')
    ProtocolsListDataSummary = Shapes::StructureShape.new(name: 'ProtocolsListDataSummary')
    ProtocolsListsData = Shapes::ListShape.new(name: 'ProtocolsListsData')
    PutAdminAccountRequest = Shapes::StructureShape.new(name: 'PutAdminAccountRequest')
    PutAppsListRequest = Shapes::StructureShape.new(name: 'PutAppsListRequest')
    PutAppsListResponse = Shapes::StructureShape.new(name: 'PutAppsListResponse')
    PutNotificationChannelRequest = Shapes::StructureShape.new(name: 'PutNotificationChannelRequest')
    PutPolicyRequest = Shapes::StructureShape.new(name: 'PutPolicyRequest')
    PutPolicyResponse = Shapes::StructureShape.new(name: 'PutPolicyResponse')
    PutProtocolsListRequest = Shapes::StructureShape.new(name: 'PutProtocolsListRequest')
    PutProtocolsListResponse = Shapes::StructureShape.new(name: 'PutProtocolsListResponse')
    PutResourceSetRequest = Shapes::StructureShape.new(name: 'PutResourceSetRequest')
    PutResourceSetResponse = Shapes::StructureShape.new(name: 'PutResourceSetResponse')
    ReferenceRule = Shapes::StringShape.new(name: 'ReferenceRule')
    RegionScope = Shapes::StructureShape.new(name: 'RegionScope')
    RemediationAction = Shapes::StructureShape.new(name: 'RemediationAction')
    RemediationActionDescription = Shapes::StringShape.new(name: 'RemediationActionDescription')
    RemediationActionType = Shapes::StringShape.new(name: 'RemediationActionType')
    RemediationActionWithOrder = Shapes::StructureShape.new(name: 'RemediationActionWithOrder')
    Resource = Shapes::StructureShape.new(name: 'Resource')
    ResourceArn = Shapes::StringShape.new(name: 'ResourceArn')
    ResourceCount = Shapes::IntegerShape.new(name: 'ResourceCount')
    ResourceDescription = Shapes::StringShape.new(name: 'ResourceDescription')
    ResourceId = Shapes::StringShape.new(name: 'ResourceId')
    ResourceIdList = Shapes::ListShape.new(name: 'ResourceIdList')
    ResourceList = Shapes::ListShape.new(name: 'ResourceList')
    ResourceName = Shapes::StringShape.new(name: 'ResourceName')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceSet = Shapes::StructureShape.new(name: 'ResourceSet')
    ResourceSetIds = Shapes::ListShape.new(name: 'ResourceSetIds')
    ResourceSetStatus = Shapes::StringShape.new(name: 'ResourceSetStatus')
    ResourceSetSummary = Shapes::StructureShape.new(name: 'ResourceSetSummary')
    ResourceSetSummaryList = Shapes::ListShape.new(name: 'ResourceSetSummaryList')
    ResourceTag = Shapes::StructureShape.new(name: 'ResourceTag')
    ResourceTagKey = Shapes::StringShape.new(name: 'ResourceTagKey')
    ResourceTagValue = Shapes::StringShape.new(name: 'ResourceTagValue')
    ResourceTags = Shapes::ListShape.new(name: 'ResourceTags')
    ResourceType = Shapes::StringShape.new(name: 'ResourceType')
    ResourceTypeList = Shapes::ListShape.new(name: 'ResourceTypeList')
    ResourceViolation = Shapes::StructureShape.new(name: 'ResourceViolation')
    ResourceViolations = Shapes::ListShape.new(name: 'ResourceViolations')
    Route = Shapes::StructureShape.new(name: 'Route')
    RouteHasOutOfScopeEndpointViolation = Shapes::StructureShape.new(name: 'RouteHasOutOfScopeEndpointViolation')
    Routes = Shapes::ListShape.new(name: 'Routes')
    RuleOrder = Shapes::StringShape.new(name: 'RuleOrder')
    SecurityGroupRemediationAction = Shapes::StructureShape.new(name: 'SecurityGroupRemediationAction')
    SecurityGroupRemediationActions = Shapes::ListShape.new(name: 'SecurityGroupRemediationActions')
    SecurityGroupRuleDescription = Shapes::StructureShape.new(name: 'SecurityGroupRuleDescription')
    SecurityServicePolicyData = Shapes::StructureShape.new(name: 'SecurityServicePolicyData')
    SecurityServiceType = Shapes::StringShape.new(name: 'SecurityServiceType')
    SecurityServiceTypeList = Shapes::ListShape.new(name: 'SecurityServiceTypeList')
    StatefulEngineOptions = Shapes::StructureShape.new(name: 'StatefulEngineOptions')
    StatefulRuleGroup = Shapes::StructureShape.new(name: 'StatefulRuleGroup')
    StatefulRuleGroupList = Shapes::ListShape.new(name: 'StatefulRuleGroupList')
    StatelessRuleGroup = Shapes::StructureShape.new(name: 'StatelessRuleGroup')
    StatelessRuleGroupList = Shapes::ListShape.new(name: 'StatelessRuleGroupList')
    StatelessRuleGroupPriority = Shapes::IntegerShape.new(name: 'StatelessRuleGroupPriority')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TargetType = Shapes::StringShape.new(name: 'TargetType')
    TargetViolationReason = Shapes::StringShape.new(name: 'TargetViolationReason')
    TargetViolationReasons = Shapes::ListShape.new(name: 'TargetViolationReasons')
    ThirdPartyFirewall = Shapes::StringShape.new(name: 'ThirdPartyFirewall')
    ThirdPartyFirewallAssociationStatus = Shapes::StringShape.new(name: 'ThirdPartyFirewallAssociationStatus')
    ThirdPartyFirewallFirewallPolicies = Shapes::ListShape.new(name: 'ThirdPartyFirewallFirewallPolicies')
    ThirdPartyFirewallFirewallPolicy = Shapes::StructureShape.new(name: 'ThirdPartyFirewallFirewallPolicy')
    ThirdPartyFirewallMissingExpectedRouteTableViolation = Shapes::StructureShape.new(name: 'ThirdPartyFirewallMissingExpectedRouteTableViolation')
    ThirdPartyFirewallMissingFirewallViolation = Shapes::StructureShape.new(name: 'ThirdPartyFirewallMissingFirewallViolation')
    ThirdPartyFirewallMissingSubnetViolation = Shapes::StructureShape.new(name: 'ThirdPartyFirewallMissingSubnetViolation')
    ThirdPartyFirewallPolicy = Shapes::StructureShape.new(name: 'ThirdPartyFirewallPolicy')
    TimeStamp = Shapes::TimestampShape.new(name: 'TimeStamp')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateToken = Shapes::StringShape.new(name: 'UpdateToken')
    ViolationDetail = Shapes::StructureShape.new(name: 'ViolationDetail')
    ViolationReason = Shapes::StringShape.new(name: 'ViolationReason')
    ViolationTarget = Shapes::StringShape.new(name: 'ViolationTarget')

    AWSAccountIdList.member = Shapes::ShapeRef.new(shape: AWSAccountId)

    AWSRegionList.member = Shapes::ShapeRef.new(shape: AWSRegion)

    AccountIdList.member = Shapes::ShapeRef.new(shape: AWSAccountId)

    AccountScope.add_member(:accounts, Shapes::ShapeRef.new(shape: AccountIdList, location_name: "Accounts"))
    AccountScope.add_member(:all_accounts_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "AllAccountsEnabled"))
    AccountScope.add_member(:exclude_specified_accounts, Shapes::ShapeRef.new(shape: Boolean, location_name: "ExcludeSpecifiedAccounts"))
    AccountScope.struct_class = Types::AccountScope

    ActionTarget.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "ResourceId"))
    ActionTarget.add_member(:description, Shapes::ShapeRef.new(shape: LengthBoundedString, location_name: "Description"))
    ActionTarget.struct_class = Types::ActionTarget

    AdminAccountSummary.add_member(:admin_account, Shapes::ShapeRef.new(shape: AWSAccountId, location_name: "AdminAccount"))
    AdminAccountSummary.add_member(:default_admin, Shapes::ShapeRef.new(shape: Boolean, location_name: "DefaultAdmin"))
    AdminAccountSummary.add_member(:status, Shapes::ShapeRef.new(shape: OrganizationStatus, location_name: "Status"))
    AdminAccountSummary.struct_class = Types::AdminAccountSummary

    AdminAccountSummaryList.member = Shapes::ShapeRef.new(shape: AdminAccountSummary)

    AdminScope.add_member(:account_scope, Shapes::ShapeRef.new(shape: AccountScope, location_name: "AccountScope"))
    AdminScope.add_member(:organizational_unit_scope, Shapes::ShapeRef.new(shape: OrganizationalUnitScope, location_name: "OrganizationalUnitScope"))
    AdminScope.add_member(:region_scope, Shapes::ShapeRef.new(shape: RegionScope, location_name: "RegionScope"))
    AdminScope.add_member(:policy_type_scope, Shapes::ShapeRef.new(shape: PolicyTypeScope, location_name: "PolicyTypeScope"))
    AdminScope.struct_class = Types::AdminScope

    App.add_member(:app_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "AppName"))
    App.add_member(:protocol, Shapes::ShapeRef.new(shape: Protocol, required: true, location_name: "Protocol"))
    App.add_member(:port, Shapes::ShapeRef.new(shape: IPPortNumber, required: true, location_name: "Port"))
    App.struct_class = Types::App

    AppsList.member = Shapes::ShapeRef.new(shape: App)

    AppsListData.add_member(:list_id, Shapes::ShapeRef.new(shape: ListId, location_name: "ListId"))
    AppsListData.add_member(:list_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "ListName"))
    AppsListData.add_member(:list_update_token, Shapes::ShapeRef.new(shape: UpdateToken, location_name: "ListUpdateToken"))
    AppsListData.add_member(:create_time, Shapes::ShapeRef.new(shape: TimeStamp, location_name: "CreateTime"))
    AppsListData.add_member(:last_update_time, Shapes::ShapeRef.new(shape: TimeStamp, location_name: "LastUpdateTime"))
    AppsListData.add_member(:apps_list, Shapes::ShapeRef.new(shape: AppsList, required: true, location_name: "AppsList"))
    AppsListData.add_member(:previous_apps_list, Shapes::ShapeRef.new(shape: PreviousAppsList, location_name: "PreviousAppsList"))
    AppsListData.struct_class = Types::AppsListData

    AppsListDataSummary.add_member(:list_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "ListArn"))
    AppsListDataSummary.add_member(:list_id, Shapes::ShapeRef.new(shape: ListId, location_name: "ListId"))
    AppsListDataSummary.add_member(:list_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "ListName"))
    AppsListDataSummary.add_member(:apps_list, Shapes::ShapeRef.new(shape: AppsList, location_name: "AppsList"))
    AppsListDataSummary.struct_class = Types::AppsListDataSummary

    AppsListsData.member = Shapes::ShapeRef.new(shape: AppsListDataSummary)

    AssociateAdminAccountRequest.add_member(:admin_account, Shapes::ShapeRef.new(shape: AWSAccountId, required: true, location_name: "AdminAccount"))
    AssociateAdminAccountRequest.struct_class = Types::AssociateAdminAccountRequest

    AssociateThirdPartyFirewallRequest.add_member(:third_party_firewall, Shapes::ShapeRef.new(shape: ThirdPartyFirewall, required: true, location_name: "ThirdPartyFirewall"))
    AssociateThirdPartyFirewallRequest.struct_class = Types::AssociateThirdPartyFirewallRequest

    AssociateThirdPartyFirewallResponse.add_member(:third_party_firewall_status, Shapes::ShapeRef.new(shape: ThirdPartyFirewallAssociationStatus, location_name: "ThirdPartyFirewallStatus"))
    AssociateThirdPartyFirewallResponse.struct_class = Types::AssociateThirdPartyFirewallResponse

    AwsEc2InstanceViolation.add_member(:violation_target, Shapes::ShapeRef.new(shape: ViolationTarget, location_name: "ViolationTarget"))
    AwsEc2InstanceViolation.add_member(:aws_ec2_network_interface_violations, Shapes::ShapeRef.new(shape: AwsEc2NetworkInterfaceViolations, location_name: "AwsEc2NetworkInterfaceViolations"))
    AwsEc2InstanceViolation.struct_class = Types::AwsEc2InstanceViolation

    AwsEc2NetworkInterfaceViolation.add_member(:violation_target, Shapes::ShapeRef.new(shape: ViolationTarget, location_name: "ViolationTarget"))
    AwsEc2NetworkInterfaceViolation.add_member(:violating_security_groups, Shapes::ShapeRef.new(shape: ResourceIdList, location_name: "ViolatingSecurityGroups"))
    AwsEc2NetworkInterfaceViolation.struct_class = Types::AwsEc2NetworkInterfaceViolation

    AwsEc2NetworkInterfaceViolations.member = Shapes::ShapeRef.new(shape: AwsEc2NetworkInterfaceViolation)

    AwsVPCSecurityGroupViolation.add_member(:violation_target, Shapes::ShapeRef.new(shape: ViolationTarget, location_name: "ViolationTarget"))
    AwsVPCSecurityGroupViolation.add_member(:violation_target_description, Shapes::ShapeRef.new(shape: LengthBoundedString, location_name: "ViolationTargetDescription"))
    AwsVPCSecurityGroupViolation.add_member(:partial_matches, Shapes::ShapeRef.new(shape: PartialMatches, location_name: "PartialMatches"))
    AwsVPCSecurityGroupViolation.add_member(:possible_security_group_remediation_actions, Shapes::ShapeRef.new(shape: SecurityGroupRemediationActions, location_name: "PossibleSecurityGroupRemediationActions"))
    AwsVPCSecurityGroupViolation.struct_class = Types::AwsVPCSecurityGroupViolation

    BatchAssociateResourceRequest.add_member(:resource_set_identifier, Shapes::ShapeRef.new(shape: Identifier, required: true, location_name: "ResourceSetIdentifier"))
    BatchAssociateResourceRequest.add_member(:items, Shapes::ShapeRef.new(shape: IdentifierList, required: true, location_name: "Items"))
    BatchAssociateResourceRequest.struct_class = Types::BatchAssociateResourceRequest

    BatchAssociateResourceResponse.add_member(:resource_set_identifier, Shapes::ShapeRef.new(shape: Identifier, required: true, location_name: "ResourceSetIdentifier"))
    BatchAssociateResourceResponse.add_member(:failed_items, Shapes::ShapeRef.new(shape: FailedItemList, required: true, location_name: "FailedItems"))
    BatchAssociateResourceResponse.struct_class = Types::BatchAssociateResourceResponse

    BatchDisassociateResourceRequest.add_member(:resource_set_identifier, Shapes::ShapeRef.new(shape: Identifier, required: true, location_name: "ResourceSetIdentifier"))
    BatchDisassociateResourceRequest.add_member(:items, Shapes::ShapeRef.new(shape: IdentifierList, required: true, location_name: "Items"))
    BatchDisassociateResourceRequest.struct_class = Types::BatchDisassociateResourceRequest

    BatchDisassociateResourceResponse.add_member(:resource_set_identifier, Shapes::ShapeRef.new(shape: Identifier, required: true, location_name: "ResourceSetIdentifier"))
    BatchDisassociateResourceResponse.add_member(:failed_items, Shapes::ShapeRef.new(shape: FailedItemList, required: true, location_name: "FailedItems"))
    BatchDisassociateResourceResponse.struct_class = Types::BatchDisassociateResourceResponse

    ComplianceViolator.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "ResourceId"))
    ComplianceViolator.add_member(:violation_reason, Shapes::ShapeRef.new(shape: ViolationReason, location_name: "ViolationReason"))
    ComplianceViolator.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "ResourceType"))
    ComplianceViolator.add_member(:metadata, Shapes::ShapeRef.new(shape: ComplianceViolatorMetadata, location_name: "Metadata"))
    ComplianceViolator.struct_class = Types::ComplianceViolator

    ComplianceViolatorMetadata.key = Shapes::ShapeRef.new(shape: LengthBoundedString)
    ComplianceViolatorMetadata.value = Shapes::ShapeRef.new(shape: LengthBoundedString)

    ComplianceViolators.member = Shapes::ShapeRef.new(shape: ComplianceViolator)

    CustomerPolicyScopeIdList.member = Shapes::ShapeRef.new(shape: CustomerPolicyScopeId)

    CustomerPolicyScopeMap.key = Shapes::ShapeRef.new(shape: CustomerPolicyScopeIdType)
    CustomerPolicyScopeMap.value = Shapes::ShapeRef.new(shape: CustomerPolicyScopeIdList)

    DeleteAppsListRequest.add_member(:list_id, Shapes::ShapeRef.new(shape: ListId, required: true, location_name: "ListId"))
    DeleteAppsListRequest.struct_class = Types::DeleteAppsListRequest

    DeleteNotificationChannelRequest.struct_class = Types::DeleteNotificationChannelRequest

    DeletePolicyRequest.add_member(:policy_id, Shapes::ShapeRef.new(shape: PolicyId, required: true, location_name: "PolicyId"))
    DeletePolicyRequest.add_member(:delete_all_policy_resources, Shapes::ShapeRef.new(shape: Boolean, location_name: "DeleteAllPolicyResources"))
    DeletePolicyRequest.struct_class = Types::DeletePolicyRequest

    DeleteProtocolsListRequest.add_member(:list_id, Shapes::ShapeRef.new(shape: ListId, required: true, location_name: "ListId"))
    DeleteProtocolsListRequest.struct_class = Types::DeleteProtocolsListRequest

    DeleteResourceSetRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: Base62Id, required: true, location_name: "Identifier"))
    DeleteResourceSetRequest.struct_class = Types::DeleteResourceSetRequest

    DisassociateAdminAccountRequest.struct_class = Types::DisassociateAdminAccountRequest

    DisassociateThirdPartyFirewallRequest.add_member(:third_party_firewall, Shapes::ShapeRef.new(shape: ThirdPartyFirewall, required: true, location_name: "ThirdPartyFirewall"))
    DisassociateThirdPartyFirewallRequest.struct_class = Types::DisassociateThirdPartyFirewallRequest

    DisassociateThirdPartyFirewallResponse.add_member(:third_party_firewall_status, Shapes::ShapeRef.new(shape: ThirdPartyFirewallAssociationStatus, location_name: "ThirdPartyFirewallStatus"))
    DisassociateThirdPartyFirewallResponse.struct_class = Types::DisassociateThirdPartyFirewallResponse

    DiscoveredResource.add_member(:uri, Shapes::ShapeRef.new(shape: Identifier, location_name: "URI"))
    DiscoveredResource.add_member(:account_id, Shapes::ShapeRef.new(shape: AWSAccountId, location_name: "AccountId"))
    DiscoveredResource.add_member(:type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "Type"))
    DiscoveredResource.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "Name"))
    DiscoveredResource.struct_class = Types::DiscoveredResource

    DiscoveredResourceList.member = Shapes::ShapeRef.new(shape: DiscoveredResource)

    DnsDuplicateRuleGroupViolation.add_member(:violation_target, Shapes::ShapeRef.new(shape: ViolationTarget, location_name: "ViolationTarget"))
    DnsDuplicateRuleGroupViolation.add_member(:violation_target_description, Shapes::ShapeRef.new(shape: LengthBoundedString, location_name: "ViolationTargetDescription"))
    DnsDuplicateRuleGroupViolation.struct_class = Types::DnsDuplicateRuleGroupViolation

    DnsRuleGroupLimitExceededViolation.add_member(:violation_target, Shapes::ShapeRef.new(shape: ViolationTarget, location_name: "ViolationTarget"))
    DnsRuleGroupLimitExceededViolation.add_member(:violation_target_description, Shapes::ShapeRef.new(shape: LengthBoundedString, location_name: "ViolationTargetDescription"))
    DnsRuleGroupLimitExceededViolation.add_member(:number_of_rule_groups_already_associated, Shapes::ShapeRef.new(shape: BasicInteger, location_name: "NumberOfRuleGroupsAlreadyAssociated"))
    DnsRuleGroupLimitExceededViolation.struct_class = Types::DnsRuleGroupLimitExceededViolation

    DnsRuleGroupPriorities.member = Shapes::ShapeRef.new(shape: DnsRuleGroupPriority)

    DnsRuleGroupPriorityConflictViolation.add_member(:violation_target, Shapes::ShapeRef.new(shape: ViolationTarget, location_name: "ViolationTarget"))
    DnsRuleGroupPriorityConflictViolation.add_member(:violation_target_description, Shapes::ShapeRef.new(shape: LengthBoundedString, location_name: "ViolationTargetDescription"))
    DnsRuleGroupPriorityConflictViolation.add_member(:conflicting_priority, Shapes::ShapeRef.new(shape: DnsRuleGroupPriority, location_name: "ConflictingPriority"))
    DnsRuleGroupPriorityConflictViolation.add_member(:conflicting_policy_id, Shapes::ShapeRef.new(shape: PolicyId, location_name: "ConflictingPolicyId"))
    DnsRuleGroupPriorityConflictViolation.add_member(:unavailable_priorities, Shapes::ShapeRef.new(shape: DnsRuleGroupPriorities, location_name: "UnavailablePriorities"))
    DnsRuleGroupPriorityConflictViolation.struct_class = Types::DnsRuleGroupPriorityConflictViolation

    EC2AssociateRouteTableAction.add_member(:description, Shapes::ShapeRef.new(shape: LengthBoundedString, location_name: "Description"))
    EC2AssociateRouteTableAction.add_member(:route_table_id, Shapes::ShapeRef.new(shape: ActionTarget, required: true, location_name: "RouteTableId"))
    EC2AssociateRouteTableAction.add_member(:subnet_id, Shapes::ShapeRef.new(shape: ActionTarget, location_name: "SubnetId"))
    EC2AssociateRouteTableAction.add_member(:gateway_id, Shapes::ShapeRef.new(shape: ActionTarget, location_name: "GatewayId"))
    EC2AssociateRouteTableAction.struct_class = Types::EC2AssociateRouteTableAction

    EC2CopyRouteTableAction.add_member(:description, Shapes::ShapeRef.new(shape: LengthBoundedString, location_name: "Description"))
    EC2CopyRouteTableAction.add_member(:vpc_id, Shapes::ShapeRef.new(shape: ActionTarget, required: true, location_name: "VpcId"))
    EC2CopyRouteTableAction.add_member(:route_table_id, Shapes::ShapeRef.new(shape: ActionTarget, required: true, location_name: "RouteTableId"))
    EC2CopyRouteTableAction.struct_class = Types::EC2CopyRouteTableAction

    EC2CreateRouteAction.add_member(:description, Shapes::ShapeRef.new(shape: LengthBoundedString, location_name: "Description"))
    EC2CreateRouteAction.add_member(:destination_cidr_block, Shapes::ShapeRef.new(shape: CIDR, location_name: "DestinationCidrBlock"))
    EC2CreateRouteAction.add_member(:destination_prefix_list_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "DestinationPrefixListId"))
    EC2CreateRouteAction.add_member(:destination_ipv_6_cidr_block, Shapes::ShapeRef.new(shape: CIDR, location_name: "DestinationIpv6CidrBlock"))
    EC2CreateRouteAction.add_member(:vpc_endpoint_id, Shapes::ShapeRef.new(shape: ActionTarget, location_name: "VpcEndpointId"))
    EC2CreateRouteAction.add_member(:gateway_id, Shapes::ShapeRef.new(shape: ActionTarget, location_name: "GatewayId"))
    EC2CreateRouteAction.add_member(:route_table_id, Shapes::ShapeRef.new(shape: ActionTarget, required: true, location_name: "RouteTableId"))
    EC2CreateRouteAction.struct_class = Types::EC2CreateRouteAction

    EC2CreateRouteTableAction.add_member(:description, Shapes::ShapeRef.new(shape: LengthBoundedString, location_name: "Description"))
    EC2CreateRouteTableAction.add_member(:vpc_id, Shapes::ShapeRef.new(shape: ActionTarget, required: true, location_name: "VpcId"))
    EC2CreateRouteTableAction.struct_class = Types::EC2CreateRouteTableAction

    EC2DeleteRouteAction.add_member(:description, Shapes::ShapeRef.new(shape: LengthBoundedString, location_name: "Description"))
    EC2DeleteRouteAction.add_member(:destination_cidr_block, Shapes::ShapeRef.new(shape: CIDR, location_name: "DestinationCidrBlock"))
    EC2DeleteRouteAction.add_member(:destination_prefix_list_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "DestinationPrefixListId"))
    EC2DeleteRouteAction.add_member(:destination_ipv_6_cidr_block, Shapes::ShapeRef.new(shape: CIDR, location_name: "DestinationIpv6CidrBlock"))
    EC2DeleteRouteAction.add_member(:route_table_id, Shapes::ShapeRef.new(shape: ActionTarget, required: true, location_name: "RouteTableId"))
    EC2DeleteRouteAction.struct_class = Types::EC2DeleteRouteAction

    EC2ReplaceRouteAction.add_member(:description, Shapes::ShapeRef.new(shape: LengthBoundedString, location_name: "Description"))
    EC2ReplaceRouteAction.add_member(:destination_cidr_block, Shapes::ShapeRef.new(shape: CIDR, location_name: "DestinationCidrBlock"))
    EC2ReplaceRouteAction.add_member(:destination_prefix_list_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "DestinationPrefixListId"))
    EC2ReplaceRouteAction.add_member(:destination_ipv_6_cidr_block, Shapes::ShapeRef.new(shape: CIDR, location_name: "DestinationIpv6CidrBlock"))
    EC2ReplaceRouteAction.add_member(:gateway_id, Shapes::ShapeRef.new(shape: ActionTarget, location_name: "GatewayId"))
    EC2ReplaceRouteAction.add_member(:route_table_id, Shapes::ShapeRef.new(shape: ActionTarget, required: true, location_name: "RouteTableId"))
    EC2ReplaceRouteAction.struct_class = Types::EC2ReplaceRouteAction

    EC2ReplaceRouteTableAssociationAction.add_member(:description, Shapes::ShapeRef.new(shape: LengthBoundedString, location_name: "Description"))
    EC2ReplaceRouteTableAssociationAction.add_member(:association_id, Shapes::ShapeRef.new(shape: ActionTarget, required: true, location_name: "AssociationId"))
    EC2ReplaceRouteTableAssociationAction.add_member(:route_table_id, Shapes::ShapeRef.new(shape: ActionTarget, required: true, location_name: "RouteTableId"))
    EC2ReplaceRouteTableAssociationAction.struct_class = Types::EC2ReplaceRouteTableAssociationAction

    EvaluationResult.add_member(:compliance_status, Shapes::ShapeRef.new(shape: PolicyComplianceStatusType, location_name: "ComplianceStatus"))
    EvaluationResult.add_member(:violator_count, Shapes::ShapeRef.new(shape: ResourceCount, location_name: "ViolatorCount"))
    EvaluationResult.add_member(:evaluation_limit_exceeded, Shapes::ShapeRef.new(shape: Boolean, location_name: "EvaluationLimitExceeded"))
    EvaluationResult.struct_class = Types::EvaluationResult

    EvaluationResults.member = Shapes::ShapeRef.new(shape: EvaluationResult)

    ExpectedRoute.add_member(:ip_v4_cidr, Shapes::ShapeRef.new(shape: CIDR, location_name: "IpV4Cidr"))
    ExpectedRoute.add_member(:prefix_list_id, Shapes::ShapeRef.new(shape: CIDR, location_name: "PrefixListId"))
    ExpectedRoute.add_member(:ip_v6_cidr, Shapes::ShapeRef.new(shape: CIDR, location_name: "IpV6Cidr"))
    ExpectedRoute.add_member(:contributing_subnets, Shapes::ShapeRef.new(shape: ResourceIdList, location_name: "ContributingSubnets"))
    ExpectedRoute.add_member(:allowed_targets, Shapes::ShapeRef.new(shape: LengthBoundedStringList, location_name: "AllowedTargets"))
    ExpectedRoute.add_member(:route_table_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "RouteTableId"))
    ExpectedRoute.struct_class = Types::ExpectedRoute

    ExpectedRoutes.member = Shapes::ShapeRef.new(shape: ExpectedRoute)

    FMSPolicyUpdateFirewallCreationConfigAction.add_member(:description, Shapes::ShapeRef.new(shape: LengthBoundedString, location_name: "Description"))
    FMSPolicyUpdateFirewallCreationConfigAction.add_member(:firewall_creation_config, Shapes::ShapeRef.new(shape: ManagedServiceData, location_name: "FirewallCreationConfig"))
    FMSPolicyUpdateFirewallCreationConfigAction.struct_class = Types::FMSPolicyUpdateFirewallCreationConfigAction

    FailedItem.add_member(:uri, Shapes::ShapeRef.new(shape: Identifier, location_name: "URI"))
    FailedItem.add_member(:reason, Shapes::ShapeRef.new(shape: FailedItemReason, location_name: "Reason"))
    FailedItem.struct_class = Types::FailedItem

    FailedItemList.member = Shapes::ShapeRef.new(shape: FailedItem)

    FirewallSubnetIsOutOfScopeViolation.add_member(:firewall_subnet_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "FirewallSubnetId"))
    FirewallSubnetIsOutOfScopeViolation.add_member(:vpc_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "VpcId"))
    FirewallSubnetIsOutOfScopeViolation.add_member(:subnet_availability_zone, Shapes::ShapeRef.new(shape: LengthBoundedString, location_name: "SubnetAvailabilityZone"))
    FirewallSubnetIsOutOfScopeViolation.add_member(:subnet_availability_zone_id, Shapes::ShapeRef.new(shape: LengthBoundedString, location_name: "SubnetAvailabilityZoneId"))
    FirewallSubnetIsOutOfScopeViolation.add_member(:vpc_endpoint_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "VpcEndpointId"))
    FirewallSubnetIsOutOfScopeViolation.struct_class = Types::FirewallSubnetIsOutOfScopeViolation

    FirewallSubnetMissingVPCEndpointViolation.add_member(:firewall_subnet_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "FirewallSubnetId"))
    FirewallSubnetMissingVPCEndpointViolation.add_member(:vpc_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "VpcId"))
    FirewallSubnetMissingVPCEndpointViolation.add_member(:subnet_availability_zone, Shapes::ShapeRef.new(shape: LengthBoundedString, location_name: "SubnetAvailabilityZone"))
    FirewallSubnetMissingVPCEndpointViolation.add_member(:subnet_availability_zone_id, Shapes::ShapeRef.new(shape: LengthBoundedString, location_name: "SubnetAvailabilityZoneId"))
    FirewallSubnetMissingVPCEndpointViolation.struct_class = Types::FirewallSubnetMissingVPCEndpointViolation

    GetAdminAccountRequest.struct_class = Types::GetAdminAccountRequest

    GetAdminAccountResponse.add_member(:admin_account, Shapes::ShapeRef.new(shape: AWSAccountId, location_name: "AdminAccount"))
    GetAdminAccountResponse.add_member(:role_status, Shapes::ShapeRef.new(shape: AccountRoleStatus, location_name: "RoleStatus"))
    GetAdminAccountResponse.struct_class = Types::GetAdminAccountResponse

    GetAdminScopeRequest.add_member(:admin_account, Shapes::ShapeRef.new(shape: AWSAccountId, required: true, location_name: "AdminAccount"))
    GetAdminScopeRequest.struct_class = Types::GetAdminScopeRequest

    GetAdminScopeResponse.add_member(:admin_scope, Shapes::ShapeRef.new(shape: AdminScope, location_name: "AdminScope"))
    GetAdminScopeResponse.add_member(:status, Shapes::ShapeRef.new(shape: OrganizationStatus, location_name: "Status"))
    GetAdminScopeResponse.struct_class = Types::GetAdminScopeResponse

    GetAppsListRequest.add_member(:list_id, Shapes::ShapeRef.new(shape: ListId, required: true, location_name: "ListId"))
    GetAppsListRequest.add_member(:default_list, Shapes::ShapeRef.new(shape: Boolean, location_name: "DefaultList"))
    GetAppsListRequest.struct_class = Types::GetAppsListRequest

    GetAppsListResponse.add_member(:apps_list, Shapes::ShapeRef.new(shape: AppsListData, location_name: "AppsList"))
    GetAppsListResponse.add_member(:apps_list_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "AppsListArn"))
    GetAppsListResponse.struct_class = Types::GetAppsListResponse

    GetComplianceDetailRequest.add_member(:policy_id, Shapes::ShapeRef.new(shape: PolicyId, required: true, location_name: "PolicyId"))
    GetComplianceDetailRequest.add_member(:member_account, Shapes::ShapeRef.new(shape: AWSAccountId, required: true, location_name: "MemberAccount"))
    GetComplianceDetailRequest.struct_class = Types::GetComplianceDetailRequest

    GetComplianceDetailResponse.add_member(:policy_compliance_detail, Shapes::ShapeRef.new(shape: PolicyComplianceDetail, location_name: "PolicyComplianceDetail"))
    GetComplianceDetailResponse.struct_class = Types::GetComplianceDetailResponse

    GetNotificationChannelRequest.struct_class = Types::GetNotificationChannelRequest

    GetNotificationChannelResponse.add_member(:sns_topic_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "SnsTopicArn"))
    GetNotificationChannelResponse.add_member(:sns_role_name, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "SnsRoleName"))
    GetNotificationChannelResponse.struct_class = Types::GetNotificationChannelResponse

    GetPolicyRequest.add_member(:policy_id, Shapes::ShapeRef.new(shape: PolicyId, required: true, location_name: "PolicyId"))
    GetPolicyRequest.struct_class = Types::GetPolicyRequest

    GetPolicyResponse.add_member(:policy, Shapes::ShapeRef.new(shape: Policy, location_name: "Policy"))
    GetPolicyResponse.add_member(:policy_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "PolicyArn"))
    GetPolicyResponse.struct_class = Types::GetPolicyResponse

    GetProtectionStatusRequest.add_member(:policy_id, Shapes::ShapeRef.new(shape: PolicyId, required: true, location_name: "PolicyId"))
    GetProtectionStatusRequest.add_member(:member_account_id, Shapes::ShapeRef.new(shape: AWSAccountId, location_name: "MemberAccountId"))
    GetProtectionStatusRequest.add_member(:start_time, Shapes::ShapeRef.new(shape: TimeStamp, location_name: "StartTime"))
    GetProtectionStatusRequest.add_member(:end_time, Shapes::ShapeRef.new(shape: TimeStamp, location_name: "EndTime"))
    GetProtectionStatusRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    GetProtectionStatusRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PaginationMaxResults, location_name: "MaxResults"))
    GetProtectionStatusRequest.struct_class = Types::GetProtectionStatusRequest

    GetProtectionStatusResponse.add_member(:admin_account_id, Shapes::ShapeRef.new(shape: AWSAccountId, location_name: "AdminAccountId"))
    GetProtectionStatusResponse.add_member(:service_type, Shapes::ShapeRef.new(shape: SecurityServiceType, location_name: "ServiceType"))
    GetProtectionStatusResponse.add_member(:data, Shapes::ShapeRef.new(shape: ProtectionData, location_name: "Data"))
    GetProtectionStatusResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    GetProtectionStatusResponse.struct_class = Types::GetProtectionStatusResponse

    GetProtocolsListRequest.add_member(:list_id, Shapes::ShapeRef.new(shape: ListId, required: true, location_name: "ListId"))
    GetProtocolsListRequest.add_member(:default_list, Shapes::ShapeRef.new(shape: Boolean, location_name: "DefaultList"))
    GetProtocolsListRequest.struct_class = Types::GetProtocolsListRequest

    GetProtocolsListResponse.add_member(:protocols_list, Shapes::ShapeRef.new(shape: ProtocolsListData, location_name: "ProtocolsList"))
    GetProtocolsListResponse.add_member(:protocols_list_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "ProtocolsListArn"))
    GetProtocolsListResponse.struct_class = Types::GetProtocolsListResponse

    GetResourceSetRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: Base62Id, required: true, location_name: "Identifier"))
    GetResourceSetRequest.struct_class = Types::GetResourceSetRequest

    GetResourceSetResponse.add_member(:resource_set, Shapes::ShapeRef.new(shape: ResourceSet, required: true, location_name: "ResourceSet"))
    GetResourceSetResponse.add_member(:resource_set_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "ResourceSetArn"))
    GetResourceSetResponse.struct_class = Types::GetResourceSetResponse

    GetThirdPartyFirewallAssociationStatusRequest.add_member(:third_party_firewall, Shapes::ShapeRef.new(shape: ThirdPartyFirewall, required: true, location_name: "ThirdPartyFirewall"))
    GetThirdPartyFirewallAssociationStatusRequest.struct_class = Types::GetThirdPartyFirewallAssociationStatusRequest

    GetThirdPartyFirewallAssociationStatusResponse.add_member(:third_party_firewall_status, Shapes::ShapeRef.new(shape: ThirdPartyFirewallAssociationStatus, location_name: "ThirdPartyFirewallStatus"))
    GetThirdPartyFirewallAssociationStatusResponse.add_member(:marketplace_onboarding_status, Shapes::ShapeRef.new(shape: MarketplaceSubscriptionOnboardingStatus, location_name: "MarketplaceOnboardingStatus"))
    GetThirdPartyFirewallAssociationStatusResponse.struct_class = Types::GetThirdPartyFirewallAssociationStatusResponse

    GetViolationDetailsRequest.add_member(:policy_id, Shapes::ShapeRef.new(shape: PolicyId, required: true, location_name: "PolicyId"))
    GetViolationDetailsRequest.add_member(:member_account, Shapes::ShapeRef.new(shape: AWSAccountId, required: true, location_name: "MemberAccount"))
    GetViolationDetailsRequest.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "ResourceId"))
    GetViolationDetailsRequest.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, required: true, location_name: "ResourceType"))
    GetViolationDetailsRequest.struct_class = Types::GetViolationDetailsRequest

    GetViolationDetailsResponse.add_member(:violation_detail, Shapes::ShapeRef.new(shape: ViolationDetail, location_name: "ViolationDetail"))
    GetViolationDetailsResponse.struct_class = Types::GetViolationDetailsResponse

    IdentifierList.member = Shapes::ShapeRef.new(shape: Identifier)

    InternalErrorException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    InternalErrorException.struct_class = Types::InternalErrorException

    InvalidInputException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    InvalidInputException.struct_class = Types::InvalidInputException

    InvalidOperationException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    InvalidOperationException.struct_class = Types::InvalidOperationException

    InvalidTypeException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    InvalidTypeException.struct_class = Types::InvalidTypeException

    IssueInfoMap.key = Shapes::ShapeRef.new(shape: DependentServiceName)
    IssueInfoMap.value = Shapes::ShapeRef.new(shape: DetailedInfo)

    LengthBoundedStringList.member = Shapes::ShapeRef.new(shape: LengthBoundedString)

    LimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    LimitExceededException.struct_class = Types::LimitExceededException

    ListAdminAccountsForOrganizationRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListAdminAccountsForOrganizationRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PaginationMaxResults, location_name: "MaxResults"))
    ListAdminAccountsForOrganizationRequest.struct_class = Types::ListAdminAccountsForOrganizationRequest

    ListAdminAccountsForOrganizationResponse.add_member(:admin_accounts, Shapes::ShapeRef.new(shape: AdminAccountSummaryList, location_name: "AdminAccounts"))
    ListAdminAccountsForOrganizationResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListAdminAccountsForOrganizationResponse.struct_class = Types::ListAdminAccountsForOrganizationResponse

    ListAdminsManagingAccountRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListAdminsManagingAccountRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PaginationMaxResults, location_name: "MaxResults"))
    ListAdminsManagingAccountRequest.struct_class = Types::ListAdminsManagingAccountRequest

    ListAdminsManagingAccountResponse.add_member(:admin_accounts, Shapes::ShapeRef.new(shape: AccountIdList, location_name: "AdminAccounts"))
    ListAdminsManagingAccountResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListAdminsManagingAccountResponse.struct_class = Types::ListAdminsManagingAccountResponse

    ListAppsListsRequest.add_member(:default_lists, Shapes::ShapeRef.new(shape: Boolean, location_name: "DefaultLists"))
    ListAppsListsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListAppsListsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PaginationMaxResults, required: true, location_name: "MaxResults"))
    ListAppsListsRequest.struct_class = Types::ListAppsListsRequest

    ListAppsListsResponse.add_member(:apps_lists, Shapes::ShapeRef.new(shape: AppsListsData, location_name: "AppsLists"))
    ListAppsListsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListAppsListsResponse.struct_class = Types::ListAppsListsResponse

    ListComplianceStatusRequest.add_member(:policy_id, Shapes::ShapeRef.new(shape: PolicyId, required: true, location_name: "PolicyId"))
    ListComplianceStatusRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListComplianceStatusRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PaginationMaxResults, location_name: "MaxResults"))
    ListComplianceStatusRequest.struct_class = Types::ListComplianceStatusRequest

    ListComplianceStatusResponse.add_member(:policy_compliance_status_list, Shapes::ShapeRef.new(shape: PolicyComplianceStatusList, location_name: "PolicyComplianceStatusList"))
    ListComplianceStatusResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListComplianceStatusResponse.struct_class = Types::ListComplianceStatusResponse

    ListDiscoveredResourcesRequest.add_member(:member_account_ids, Shapes::ShapeRef.new(shape: AWSAccountIdList, required: true, location_name: "MemberAccountIds"))
    ListDiscoveredResourcesRequest.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, required: true, location_name: "ResourceType"))
    ListDiscoveredResourcesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PaginationMaxResults, location_name: "MaxResults"))
    ListDiscoveredResourcesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListDiscoveredResourcesRequest.struct_class = Types::ListDiscoveredResourcesRequest

    ListDiscoveredResourcesResponse.add_member(:items, Shapes::ShapeRef.new(shape: DiscoveredResourceList, location_name: "Items"))
    ListDiscoveredResourcesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListDiscoveredResourcesResponse.struct_class = Types::ListDiscoveredResourcesResponse

    ListMemberAccountsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListMemberAccountsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PaginationMaxResults, location_name: "MaxResults"))
    ListMemberAccountsRequest.struct_class = Types::ListMemberAccountsRequest

    ListMemberAccountsResponse.add_member(:member_accounts, Shapes::ShapeRef.new(shape: MemberAccounts, location_name: "MemberAccounts"))
    ListMemberAccountsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListMemberAccountsResponse.struct_class = Types::ListMemberAccountsResponse

    ListPoliciesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListPoliciesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PaginationMaxResults, location_name: "MaxResults"))
    ListPoliciesRequest.struct_class = Types::ListPoliciesRequest

    ListPoliciesResponse.add_member(:policy_list, Shapes::ShapeRef.new(shape: PolicySummaryList, location_name: "PolicyList"))
    ListPoliciesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListPoliciesResponse.struct_class = Types::ListPoliciesResponse

    ListProtocolsListsRequest.add_member(:default_lists, Shapes::ShapeRef.new(shape: Boolean, location_name: "DefaultLists"))
    ListProtocolsListsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListProtocolsListsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PaginationMaxResults, required: true, location_name: "MaxResults"))
    ListProtocolsListsRequest.struct_class = Types::ListProtocolsListsRequest

    ListProtocolsListsResponse.add_member(:protocols_lists, Shapes::ShapeRef.new(shape: ProtocolsListsData, location_name: "ProtocolsLists"))
    ListProtocolsListsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListProtocolsListsResponse.struct_class = Types::ListProtocolsListsResponse

    ListResourceSetResourcesRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "Identifier"))
    ListResourceSetResourcesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PaginationMaxResults, location_name: "MaxResults"))
    ListResourceSetResourcesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListResourceSetResourcesRequest.struct_class = Types::ListResourceSetResourcesRequest

    ListResourceSetResourcesResponse.add_member(:items, Shapes::ShapeRef.new(shape: ResourceList, required: true, location_name: "Items"))
    ListResourceSetResourcesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListResourceSetResourcesResponse.struct_class = Types::ListResourceSetResourcesResponse

    ListResourceSetsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListResourceSetsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PaginationMaxResults, location_name: "MaxResults"))
    ListResourceSetsRequest.struct_class = Types::ListResourceSetsRequest

    ListResourceSetsResponse.add_member(:resource_sets, Shapes::ShapeRef.new(shape: ResourceSetSummaryList, location_name: "ResourceSets"))
    ListResourceSetsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListResourceSetsResponse.struct_class = Types::ListResourceSetsResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "ResourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tag_list, Shapes::ShapeRef.new(shape: TagList, location_name: "TagList"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    ListThirdPartyFirewallFirewallPoliciesRequest.add_member(:third_party_firewall, Shapes::ShapeRef.new(shape: ThirdPartyFirewall, required: true, location_name: "ThirdPartyFirewall"))
    ListThirdPartyFirewallFirewallPoliciesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListThirdPartyFirewallFirewallPoliciesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PaginationMaxResults, required: true, location_name: "MaxResults"))
    ListThirdPartyFirewallFirewallPoliciesRequest.struct_class = Types::ListThirdPartyFirewallFirewallPoliciesRequest

    ListThirdPartyFirewallFirewallPoliciesResponse.add_member(:third_party_firewall_firewall_policies, Shapes::ShapeRef.new(shape: ThirdPartyFirewallFirewallPolicies, location_name: "ThirdPartyFirewallFirewallPolicies"))
    ListThirdPartyFirewallFirewallPoliciesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListThirdPartyFirewallFirewallPoliciesResponse.struct_class = Types::ListThirdPartyFirewallFirewallPoliciesResponse

    MemberAccounts.member = Shapes::ShapeRef.new(shape: AWSAccountId)

    NetworkFirewallActionList.member = Shapes::ShapeRef.new(shape: NetworkFirewallAction)

    NetworkFirewallBlackHoleRouteDetectedViolation.add_member(:violation_target, Shapes::ShapeRef.new(shape: ViolationTarget, location_name: "ViolationTarget"))
    NetworkFirewallBlackHoleRouteDetectedViolation.add_member(:route_table_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "RouteTableId"))
    NetworkFirewallBlackHoleRouteDetectedViolation.add_member(:vpc_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "VpcId"))
    NetworkFirewallBlackHoleRouteDetectedViolation.add_member(:violating_routes, Shapes::ShapeRef.new(shape: Routes, location_name: "ViolatingRoutes"))
    NetworkFirewallBlackHoleRouteDetectedViolation.struct_class = Types::NetworkFirewallBlackHoleRouteDetectedViolation

    NetworkFirewallInternetTrafficNotInspectedViolation.add_member(:subnet_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "SubnetId"))
    NetworkFirewallInternetTrafficNotInspectedViolation.add_member(:subnet_availability_zone, Shapes::ShapeRef.new(shape: LengthBoundedString, location_name: "SubnetAvailabilityZone"))
    NetworkFirewallInternetTrafficNotInspectedViolation.add_member(:route_table_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "RouteTableId"))
    NetworkFirewallInternetTrafficNotInspectedViolation.add_member(:violating_routes, Shapes::ShapeRef.new(shape: Routes, location_name: "ViolatingRoutes"))
    NetworkFirewallInternetTrafficNotInspectedViolation.add_member(:is_route_table_used_in_different_az, Shapes::ShapeRef.new(shape: Boolean, location_name: "IsRouteTableUsedInDifferentAZ"))
    NetworkFirewallInternetTrafficNotInspectedViolation.add_member(:current_firewall_subnet_route_table, Shapes::ShapeRef.new(shape: ResourceId, location_name: "CurrentFirewallSubnetRouteTable"))
    NetworkFirewallInternetTrafficNotInspectedViolation.add_member(:expected_firewall_endpoint, Shapes::ShapeRef.new(shape: ResourceId, location_name: "ExpectedFirewallEndpoint"))
    NetworkFirewallInternetTrafficNotInspectedViolation.add_member(:firewall_subnet_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "FirewallSubnetId"))
    NetworkFirewallInternetTrafficNotInspectedViolation.add_member(:expected_firewall_subnet_routes, Shapes::ShapeRef.new(shape: ExpectedRoutes, location_name: "ExpectedFirewallSubnetRoutes"))
    NetworkFirewallInternetTrafficNotInspectedViolation.add_member(:actual_firewall_subnet_routes, Shapes::ShapeRef.new(shape: Routes, location_name: "ActualFirewallSubnetRoutes"))
    NetworkFirewallInternetTrafficNotInspectedViolation.add_member(:internet_gateway_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "InternetGatewayId"))
    NetworkFirewallInternetTrafficNotInspectedViolation.add_member(:current_internet_gateway_route_table, Shapes::ShapeRef.new(shape: ResourceId, location_name: "CurrentInternetGatewayRouteTable"))
    NetworkFirewallInternetTrafficNotInspectedViolation.add_member(:expected_internet_gateway_routes, Shapes::ShapeRef.new(shape: ExpectedRoutes, location_name: "ExpectedInternetGatewayRoutes"))
    NetworkFirewallInternetTrafficNotInspectedViolation.add_member(:actual_internet_gateway_routes, Shapes::ShapeRef.new(shape: Routes, location_name: "ActualInternetGatewayRoutes"))
    NetworkFirewallInternetTrafficNotInspectedViolation.add_member(:vpc_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "VpcId"))
    NetworkFirewallInternetTrafficNotInspectedViolation.struct_class = Types::NetworkFirewallInternetTrafficNotInspectedViolation

    NetworkFirewallInvalidRouteConfigurationViolation.add_member(:affected_subnets, Shapes::ShapeRef.new(shape: ResourceIdList, location_name: "AffectedSubnets"))
    NetworkFirewallInvalidRouteConfigurationViolation.add_member(:route_table_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "RouteTableId"))
    NetworkFirewallInvalidRouteConfigurationViolation.add_member(:is_route_table_used_in_different_az, Shapes::ShapeRef.new(shape: Boolean, location_name: "IsRouteTableUsedInDifferentAZ"))
    NetworkFirewallInvalidRouteConfigurationViolation.add_member(:violating_route, Shapes::ShapeRef.new(shape: Route, location_name: "ViolatingRoute"))
    NetworkFirewallInvalidRouteConfigurationViolation.add_member(:current_firewall_subnet_route_table, Shapes::ShapeRef.new(shape: ResourceId, location_name: "CurrentFirewallSubnetRouteTable"))
    NetworkFirewallInvalidRouteConfigurationViolation.add_member(:expected_firewall_endpoint, Shapes::ShapeRef.new(shape: ResourceId, location_name: "ExpectedFirewallEndpoint"))
    NetworkFirewallInvalidRouteConfigurationViolation.add_member(:actual_firewall_endpoint, Shapes::ShapeRef.new(shape: ResourceId, location_name: "ActualFirewallEndpoint"))
    NetworkFirewallInvalidRouteConfigurationViolation.add_member(:expected_firewall_subnet_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "ExpectedFirewallSubnetId"))
    NetworkFirewallInvalidRouteConfigurationViolation.add_member(:actual_firewall_subnet_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "ActualFirewallSubnetId"))
    NetworkFirewallInvalidRouteConfigurationViolation.add_member(:expected_firewall_subnet_routes, Shapes::ShapeRef.new(shape: ExpectedRoutes, location_name: "ExpectedFirewallSubnetRoutes"))
    NetworkFirewallInvalidRouteConfigurationViolation.add_member(:actual_firewall_subnet_routes, Shapes::ShapeRef.new(shape: Routes, location_name: "ActualFirewallSubnetRoutes"))
    NetworkFirewallInvalidRouteConfigurationViolation.add_member(:internet_gateway_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "InternetGatewayId"))
    NetworkFirewallInvalidRouteConfigurationViolation.add_member(:current_internet_gateway_route_table, Shapes::ShapeRef.new(shape: ResourceId, location_name: "CurrentInternetGatewayRouteTable"))
    NetworkFirewallInvalidRouteConfigurationViolation.add_member(:expected_internet_gateway_routes, Shapes::ShapeRef.new(shape: ExpectedRoutes, location_name: "ExpectedInternetGatewayRoutes"))
    NetworkFirewallInvalidRouteConfigurationViolation.add_member(:actual_internet_gateway_routes, Shapes::ShapeRef.new(shape: Routes, location_name: "ActualInternetGatewayRoutes"))
    NetworkFirewallInvalidRouteConfigurationViolation.add_member(:vpc_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "VpcId"))
    NetworkFirewallInvalidRouteConfigurationViolation.struct_class = Types::NetworkFirewallInvalidRouteConfigurationViolation

    NetworkFirewallMissingExpectedRTViolation.add_member(:violation_target, Shapes::ShapeRef.new(shape: ViolationTarget, location_name: "ViolationTarget"))
    NetworkFirewallMissingExpectedRTViolation.add_member(:vpc, Shapes::ShapeRef.new(shape: ResourceId, location_name: "VPC"))
    NetworkFirewallMissingExpectedRTViolation.add_member(:availability_zone, Shapes::ShapeRef.new(shape: LengthBoundedString, location_name: "AvailabilityZone"))
    NetworkFirewallMissingExpectedRTViolation.add_member(:current_route_table, Shapes::ShapeRef.new(shape: ResourceId, location_name: "CurrentRouteTable"))
    NetworkFirewallMissingExpectedRTViolation.add_member(:expected_route_table, Shapes::ShapeRef.new(shape: ResourceId, location_name: "ExpectedRouteTable"))
    NetworkFirewallMissingExpectedRTViolation.struct_class = Types::NetworkFirewallMissingExpectedRTViolation

    NetworkFirewallMissingExpectedRoutesViolation.add_member(:violation_target, Shapes::ShapeRef.new(shape: ViolationTarget, location_name: "ViolationTarget"))
    NetworkFirewallMissingExpectedRoutesViolation.add_member(:expected_routes, Shapes::ShapeRef.new(shape: ExpectedRoutes, location_name: "ExpectedRoutes"))
    NetworkFirewallMissingExpectedRoutesViolation.add_member(:vpc_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "VpcId"))
    NetworkFirewallMissingExpectedRoutesViolation.struct_class = Types::NetworkFirewallMissingExpectedRoutesViolation

    NetworkFirewallMissingFirewallViolation.add_member(:violation_target, Shapes::ShapeRef.new(shape: ViolationTarget, location_name: "ViolationTarget"))
    NetworkFirewallMissingFirewallViolation.add_member(:vpc, Shapes::ShapeRef.new(shape: ResourceId, location_name: "VPC"))
    NetworkFirewallMissingFirewallViolation.add_member(:availability_zone, Shapes::ShapeRef.new(shape: LengthBoundedString, location_name: "AvailabilityZone"))
    NetworkFirewallMissingFirewallViolation.add_member(:target_violation_reason, Shapes::ShapeRef.new(shape: TargetViolationReason, location_name: "TargetViolationReason"))
    NetworkFirewallMissingFirewallViolation.struct_class = Types::NetworkFirewallMissingFirewallViolation

    NetworkFirewallMissingSubnetViolation.add_member(:violation_target, Shapes::ShapeRef.new(shape: ViolationTarget, location_name: "ViolationTarget"))
    NetworkFirewallMissingSubnetViolation.add_member(:vpc, Shapes::ShapeRef.new(shape: ResourceId, location_name: "VPC"))
    NetworkFirewallMissingSubnetViolation.add_member(:availability_zone, Shapes::ShapeRef.new(shape: LengthBoundedString, location_name: "AvailabilityZone"))
    NetworkFirewallMissingSubnetViolation.add_member(:target_violation_reason, Shapes::ShapeRef.new(shape: TargetViolationReason, location_name: "TargetViolationReason"))
    NetworkFirewallMissingSubnetViolation.struct_class = Types::NetworkFirewallMissingSubnetViolation

    NetworkFirewallPolicy.add_member(:firewall_deployment_model, Shapes::ShapeRef.new(shape: FirewallDeploymentModel, location_name: "FirewallDeploymentModel"))
    NetworkFirewallPolicy.struct_class = Types::NetworkFirewallPolicy

    NetworkFirewallPolicyDescription.add_member(:stateless_rule_groups, Shapes::ShapeRef.new(shape: StatelessRuleGroupList, location_name: "StatelessRuleGroups"))
    NetworkFirewallPolicyDescription.add_member(:stateless_default_actions, Shapes::ShapeRef.new(shape: NetworkFirewallActionList, location_name: "StatelessDefaultActions"))
    NetworkFirewallPolicyDescription.add_member(:stateless_fragment_default_actions, Shapes::ShapeRef.new(shape: NetworkFirewallActionList, location_name: "StatelessFragmentDefaultActions"))
    NetworkFirewallPolicyDescription.add_member(:stateless_custom_actions, Shapes::ShapeRef.new(shape: NetworkFirewallActionList, location_name: "StatelessCustomActions"))
    NetworkFirewallPolicyDescription.add_member(:stateful_rule_groups, Shapes::ShapeRef.new(shape: StatefulRuleGroupList, location_name: "StatefulRuleGroups"))
    NetworkFirewallPolicyDescription.add_member(:stateful_default_actions, Shapes::ShapeRef.new(shape: NetworkFirewallActionList, location_name: "StatefulDefaultActions"))
    NetworkFirewallPolicyDescription.add_member(:stateful_engine_options, Shapes::ShapeRef.new(shape: StatefulEngineOptions, location_name: "StatefulEngineOptions"))
    NetworkFirewallPolicyDescription.struct_class = Types::NetworkFirewallPolicyDescription

    NetworkFirewallPolicyModifiedViolation.add_member(:violation_target, Shapes::ShapeRef.new(shape: ViolationTarget, location_name: "ViolationTarget"))
    NetworkFirewallPolicyModifiedViolation.add_member(:current_policy_description, Shapes::ShapeRef.new(shape: NetworkFirewallPolicyDescription, location_name: "CurrentPolicyDescription"))
    NetworkFirewallPolicyModifiedViolation.add_member(:expected_policy_description, Shapes::ShapeRef.new(shape: NetworkFirewallPolicyDescription, location_name: "ExpectedPolicyDescription"))
    NetworkFirewallPolicyModifiedViolation.struct_class = Types::NetworkFirewallPolicyModifiedViolation

    NetworkFirewallStatefulRuleGroupOverride.add_member(:action, Shapes::ShapeRef.new(shape: NetworkFirewallOverrideAction, location_name: "Action"))
    NetworkFirewallStatefulRuleGroupOverride.struct_class = Types::NetworkFirewallStatefulRuleGroupOverride

    NetworkFirewallUnexpectedFirewallRoutesViolation.add_member(:firewall_subnet_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "FirewallSubnetId"))
    NetworkFirewallUnexpectedFirewallRoutesViolation.add_member(:violating_routes, Shapes::ShapeRef.new(shape: Routes, location_name: "ViolatingRoutes"))
    NetworkFirewallUnexpectedFirewallRoutesViolation.add_member(:route_table_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "RouteTableId"))
    NetworkFirewallUnexpectedFirewallRoutesViolation.add_member(:firewall_endpoint, Shapes::ShapeRef.new(shape: ResourceId, location_name: "FirewallEndpoint"))
    NetworkFirewallUnexpectedFirewallRoutesViolation.add_member(:vpc_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "VpcId"))
    NetworkFirewallUnexpectedFirewallRoutesViolation.struct_class = Types::NetworkFirewallUnexpectedFirewallRoutesViolation

    NetworkFirewallUnexpectedGatewayRoutesViolation.add_member(:gateway_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "GatewayId"))
    NetworkFirewallUnexpectedGatewayRoutesViolation.add_member(:violating_routes, Shapes::ShapeRef.new(shape: Routes, location_name: "ViolatingRoutes"))
    NetworkFirewallUnexpectedGatewayRoutesViolation.add_member(:route_table_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "RouteTableId"))
    NetworkFirewallUnexpectedGatewayRoutesViolation.add_member(:vpc_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "VpcId"))
    NetworkFirewallUnexpectedGatewayRoutesViolation.struct_class = Types::NetworkFirewallUnexpectedGatewayRoutesViolation

    OrderedRemediationActions.member = Shapes::ShapeRef.new(shape: RemediationActionWithOrder)

    OrganizationalUnitIdList.member = Shapes::ShapeRef.new(shape: OrganizationalUnitId)

    OrganizationalUnitScope.add_member(:organizational_units, Shapes::ShapeRef.new(shape: OrganizationalUnitIdList, location_name: "OrganizationalUnits"))
    OrganizationalUnitScope.add_member(:all_organizational_units_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "AllOrganizationalUnitsEnabled"))
    OrganizationalUnitScope.add_member(:exclude_specified_organizational_units, Shapes::ShapeRef.new(shape: Boolean, location_name: "ExcludeSpecifiedOrganizationalUnits"))
    OrganizationalUnitScope.struct_class = Types::OrganizationalUnitScope

    PartialMatch.add_member(:reference, Shapes::ShapeRef.new(shape: ReferenceRule, location_name: "Reference"))
    PartialMatch.add_member(:target_violation_reasons, Shapes::ShapeRef.new(shape: TargetViolationReasons, location_name: "TargetViolationReasons"))
    PartialMatch.struct_class = Types::PartialMatch

    PartialMatches.member = Shapes::ShapeRef.new(shape: PartialMatch)

    Policy.add_member(:policy_id, Shapes::ShapeRef.new(shape: PolicyId, location_name: "PolicyId"))
    Policy.add_member(:policy_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "PolicyName"))
    Policy.add_member(:policy_update_token, Shapes::ShapeRef.new(shape: PolicyUpdateToken, location_name: "PolicyUpdateToken"))
    Policy.add_member(:security_service_policy_data, Shapes::ShapeRef.new(shape: SecurityServicePolicyData, required: true, location_name: "SecurityServicePolicyData"))
    Policy.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, required: true, location_name: "ResourceType"))
    Policy.add_member(:resource_type_list, Shapes::ShapeRef.new(shape: ResourceTypeList, location_name: "ResourceTypeList"))
    Policy.add_member(:resource_tags, Shapes::ShapeRef.new(shape: ResourceTags, location_name: "ResourceTags"))
    Policy.add_member(:exclude_resource_tags, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "ExcludeResourceTags"))
    Policy.add_member(:remediation_enabled, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "RemediationEnabled"))
    Policy.add_member(:delete_unused_fm_managed_resources, Shapes::ShapeRef.new(shape: Boolean, location_name: "DeleteUnusedFMManagedResources"))
    Policy.add_member(:include_map, Shapes::ShapeRef.new(shape: CustomerPolicyScopeMap, location_name: "IncludeMap"))
    Policy.add_member(:exclude_map, Shapes::ShapeRef.new(shape: CustomerPolicyScopeMap, location_name: "ExcludeMap"))
    Policy.add_member(:resource_set_ids, Shapes::ShapeRef.new(shape: ResourceSetIds, location_name: "ResourceSetIds"))
    Policy.add_member(:policy_description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "PolicyDescription"))
    Policy.add_member(:policy_status, Shapes::ShapeRef.new(shape: CustomerPolicyStatus, location_name: "PolicyStatus"))
    Policy.struct_class = Types::Policy

    PolicyComplianceDetail.add_member(:policy_owner, Shapes::ShapeRef.new(shape: AWSAccountId, location_name: "PolicyOwner"))
    PolicyComplianceDetail.add_member(:policy_id, Shapes::ShapeRef.new(shape: PolicyId, location_name: "PolicyId"))
    PolicyComplianceDetail.add_member(:member_account, Shapes::ShapeRef.new(shape: AWSAccountId, location_name: "MemberAccount"))
    PolicyComplianceDetail.add_member(:violators, Shapes::ShapeRef.new(shape: ComplianceViolators, location_name: "Violators"))
    PolicyComplianceDetail.add_member(:evaluation_limit_exceeded, Shapes::ShapeRef.new(shape: Boolean, location_name: "EvaluationLimitExceeded"))
    PolicyComplianceDetail.add_member(:expired_at, Shapes::ShapeRef.new(shape: TimeStamp, location_name: "ExpiredAt"))
    PolicyComplianceDetail.add_member(:issue_info_map, Shapes::ShapeRef.new(shape: IssueInfoMap, location_name: "IssueInfoMap"))
    PolicyComplianceDetail.struct_class = Types::PolicyComplianceDetail

    PolicyComplianceStatus.add_member(:policy_owner, Shapes::ShapeRef.new(shape: AWSAccountId, location_name: "PolicyOwner"))
    PolicyComplianceStatus.add_member(:policy_id, Shapes::ShapeRef.new(shape: PolicyId, location_name: "PolicyId"))
    PolicyComplianceStatus.add_member(:policy_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "PolicyName"))
    PolicyComplianceStatus.add_member(:member_account, Shapes::ShapeRef.new(shape: AWSAccountId, location_name: "MemberAccount"))
    PolicyComplianceStatus.add_member(:evaluation_results, Shapes::ShapeRef.new(shape: EvaluationResults, location_name: "EvaluationResults"))
    PolicyComplianceStatus.add_member(:last_updated, Shapes::ShapeRef.new(shape: TimeStamp, location_name: "LastUpdated"))
    PolicyComplianceStatus.add_member(:issue_info_map, Shapes::ShapeRef.new(shape: IssueInfoMap, location_name: "IssueInfoMap"))
    PolicyComplianceStatus.struct_class = Types::PolicyComplianceStatus

    PolicyComplianceStatusList.member = Shapes::ShapeRef.new(shape: PolicyComplianceStatus)

    PolicyOption.add_member(:network_firewall_policy, Shapes::ShapeRef.new(shape: NetworkFirewallPolicy, location_name: "NetworkFirewallPolicy"))
    PolicyOption.add_member(:third_party_firewall_policy, Shapes::ShapeRef.new(shape: ThirdPartyFirewallPolicy, location_name: "ThirdPartyFirewallPolicy"))
    PolicyOption.struct_class = Types::PolicyOption

    PolicySummary.add_member(:policy_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "PolicyArn"))
    PolicySummary.add_member(:policy_id, Shapes::ShapeRef.new(shape: PolicyId, location_name: "PolicyId"))
    PolicySummary.add_member(:policy_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "PolicyName"))
    PolicySummary.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "ResourceType"))
    PolicySummary.add_member(:security_service_type, Shapes::ShapeRef.new(shape: SecurityServiceType, location_name: "SecurityServiceType"))
    PolicySummary.add_member(:remediation_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "RemediationEnabled"))
    PolicySummary.add_member(:delete_unused_fm_managed_resources, Shapes::ShapeRef.new(shape: Boolean, location_name: "DeleteUnusedFMManagedResources"))
    PolicySummary.add_member(:policy_status, Shapes::ShapeRef.new(shape: CustomerPolicyStatus, location_name: "PolicyStatus"))
    PolicySummary.struct_class = Types::PolicySummary

    PolicySummaryList.member = Shapes::ShapeRef.new(shape: PolicySummary)

    PolicyTypeScope.add_member(:policy_types, Shapes::ShapeRef.new(shape: SecurityServiceTypeList, location_name: "PolicyTypes"))
    PolicyTypeScope.add_member(:all_policy_types_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "AllPolicyTypesEnabled"))
    PolicyTypeScope.struct_class = Types::PolicyTypeScope

    PossibleRemediationAction.add_member(:description, Shapes::ShapeRef.new(shape: LengthBoundedString, location_name: "Description"))
    PossibleRemediationAction.add_member(:ordered_remediation_actions, Shapes::ShapeRef.new(shape: OrderedRemediationActions, required: true, location_name: "OrderedRemediationActions"))
    PossibleRemediationAction.add_member(:is_default_action, Shapes::ShapeRef.new(shape: Boolean, location_name: "IsDefaultAction"))
    PossibleRemediationAction.struct_class = Types::PossibleRemediationAction

    PossibleRemediationActionList.member = Shapes::ShapeRef.new(shape: PossibleRemediationAction)

    PossibleRemediationActions.add_member(:description, Shapes::ShapeRef.new(shape: LengthBoundedString, location_name: "Description"))
    PossibleRemediationActions.add_member(:actions, Shapes::ShapeRef.new(shape: PossibleRemediationActionList, location_name: "Actions"))
    PossibleRemediationActions.struct_class = Types::PossibleRemediationActions

    PreviousAppsList.key = Shapes::ShapeRef.new(shape: PreviousListVersion)
    PreviousAppsList.value = Shapes::ShapeRef.new(shape: AppsList)

    PreviousProtocolsList.key = Shapes::ShapeRef.new(shape: PreviousListVersion)
    PreviousProtocolsList.value = Shapes::ShapeRef.new(shape: ProtocolsList)

    ProtocolsList.member = Shapes::ShapeRef.new(shape: Protocol)

    ProtocolsListData.add_member(:list_id, Shapes::ShapeRef.new(shape: ListId, location_name: "ListId"))
    ProtocolsListData.add_member(:list_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "ListName"))
    ProtocolsListData.add_member(:list_update_token, Shapes::ShapeRef.new(shape: UpdateToken, location_name: "ListUpdateToken"))
    ProtocolsListData.add_member(:create_time, Shapes::ShapeRef.new(shape: TimeStamp, location_name: "CreateTime"))
    ProtocolsListData.add_member(:last_update_time, Shapes::ShapeRef.new(shape: TimeStamp, location_name: "LastUpdateTime"))
    ProtocolsListData.add_member(:protocols_list, Shapes::ShapeRef.new(shape: ProtocolsList, required: true, location_name: "ProtocolsList"))
    ProtocolsListData.add_member(:previous_protocols_list, Shapes::ShapeRef.new(shape: PreviousProtocolsList, location_name: "PreviousProtocolsList"))
    ProtocolsListData.struct_class = Types::ProtocolsListData

    ProtocolsListDataSummary.add_member(:list_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "ListArn"))
    ProtocolsListDataSummary.add_member(:list_id, Shapes::ShapeRef.new(shape: ListId, location_name: "ListId"))
    ProtocolsListDataSummary.add_member(:list_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "ListName"))
    ProtocolsListDataSummary.add_member(:protocols_list, Shapes::ShapeRef.new(shape: ProtocolsList, location_name: "ProtocolsList"))
    ProtocolsListDataSummary.struct_class = Types::ProtocolsListDataSummary

    ProtocolsListsData.member = Shapes::ShapeRef.new(shape: ProtocolsListDataSummary)

    PutAdminAccountRequest.add_member(:admin_account, Shapes::ShapeRef.new(shape: AWSAccountId, required: true, location_name: "AdminAccount"))
    PutAdminAccountRequest.add_member(:admin_scope, Shapes::ShapeRef.new(shape: AdminScope, location_name: "AdminScope"))
    PutAdminAccountRequest.struct_class = Types::PutAdminAccountRequest

    PutAppsListRequest.add_member(:apps_list, Shapes::ShapeRef.new(shape: AppsListData, required: true, location_name: "AppsList"))
    PutAppsListRequest.add_member(:tag_list, Shapes::ShapeRef.new(shape: TagList, location_name: "TagList"))
    PutAppsListRequest.struct_class = Types::PutAppsListRequest

    PutAppsListResponse.add_member(:apps_list, Shapes::ShapeRef.new(shape: AppsListData, location_name: "AppsList"))
    PutAppsListResponse.add_member(:apps_list_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "AppsListArn"))
    PutAppsListResponse.struct_class = Types::PutAppsListResponse

    PutNotificationChannelRequest.add_member(:sns_topic_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "SnsTopicArn"))
    PutNotificationChannelRequest.add_member(:sns_role_name, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "SnsRoleName"))
    PutNotificationChannelRequest.struct_class = Types::PutNotificationChannelRequest

    PutPolicyRequest.add_member(:policy, Shapes::ShapeRef.new(shape: Policy, required: true, location_name: "Policy"))
    PutPolicyRequest.add_member(:tag_list, Shapes::ShapeRef.new(shape: TagList, location_name: "TagList"))
    PutPolicyRequest.struct_class = Types::PutPolicyRequest

    PutPolicyResponse.add_member(:policy, Shapes::ShapeRef.new(shape: Policy, location_name: "Policy"))
    PutPolicyResponse.add_member(:policy_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "PolicyArn"))
    PutPolicyResponse.struct_class = Types::PutPolicyResponse

    PutProtocolsListRequest.add_member(:protocols_list, Shapes::ShapeRef.new(shape: ProtocolsListData, required: true, location_name: "ProtocolsList"))
    PutProtocolsListRequest.add_member(:tag_list, Shapes::ShapeRef.new(shape: TagList, location_name: "TagList"))
    PutProtocolsListRequest.struct_class = Types::PutProtocolsListRequest

    PutProtocolsListResponse.add_member(:protocols_list, Shapes::ShapeRef.new(shape: ProtocolsListData, location_name: "ProtocolsList"))
    PutProtocolsListResponse.add_member(:protocols_list_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "ProtocolsListArn"))
    PutProtocolsListResponse.struct_class = Types::PutProtocolsListResponse

    PutResourceSetRequest.add_member(:resource_set, Shapes::ShapeRef.new(shape: ResourceSet, required: true, location_name: "ResourceSet"))
    PutResourceSetRequest.add_member(:tag_list, Shapes::ShapeRef.new(shape: TagList, location_name: "TagList"))
    PutResourceSetRequest.struct_class = Types::PutResourceSetRequest

    PutResourceSetResponse.add_member(:resource_set, Shapes::ShapeRef.new(shape: ResourceSet, required: true, location_name: "ResourceSet"))
    PutResourceSetResponse.add_member(:resource_set_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "ResourceSetArn"))
    PutResourceSetResponse.struct_class = Types::PutResourceSetResponse

    RegionScope.add_member(:regions, Shapes::ShapeRef.new(shape: AWSRegionList, location_name: "Regions"))
    RegionScope.add_member(:all_regions_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "AllRegionsEnabled"))
    RegionScope.struct_class = Types::RegionScope

    RemediationAction.add_member(:description, Shapes::ShapeRef.new(shape: LengthBoundedString, location_name: "Description"))
    RemediationAction.add_member(:ec2_create_route_action, Shapes::ShapeRef.new(shape: EC2CreateRouteAction, location_name: "EC2CreateRouteAction"))
    RemediationAction.add_member(:ec2_replace_route_action, Shapes::ShapeRef.new(shape: EC2ReplaceRouteAction, location_name: "EC2ReplaceRouteAction"))
    RemediationAction.add_member(:ec2_delete_route_action, Shapes::ShapeRef.new(shape: EC2DeleteRouteAction, location_name: "EC2DeleteRouteAction"))
    RemediationAction.add_member(:ec2_copy_route_table_action, Shapes::ShapeRef.new(shape: EC2CopyRouteTableAction, location_name: "EC2CopyRouteTableAction"))
    RemediationAction.add_member(:ec2_replace_route_table_association_action, Shapes::ShapeRef.new(shape: EC2ReplaceRouteTableAssociationAction, location_name: "EC2ReplaceRouteTableAssociationAction"))
    RemediationAction.add_member(:ec2_associate_route_table_action, Shapes::ShapeRef.new(shape: EC2AssociateRouteTableAction, location_name: "EC2AssociateRouteTableAction"))
    RemediationAction.add_member(:ec2_create_route_table_action, Shapes::ShapeRef.new(shape: EC2CreateRouteTableAction, location_name: "EC2CreateRouteTableAction"))
    RemediationAction.add_member(:fms_policy_update_firewall_creation_config_action, Shapes::ShapeRef.new(shape: FMSPolicyUpdateFirewallCreationConfigAction, location_name: "FMSPolicyUpdateFirewallCreationConfigAction"))
    RemediationAction.struct_class = Types::RemediationAction

    RemediationActionWithOrder.add_member(:remediation_action, Shapes::ShapeRef.new(shape: RemediationAction, location_name: "RemediationAction"))
    RemediationActionWithOrder.add_member(:order, Shapes::ShapeRef.new(shape: BasicInteger, location_name: "Order"))
    RemediationActionWithOrder.struct_class = Types::RemediationActionWithOrder

    Resource.add_member(:uri, Shapes::ShapeRef.new(shape: Identifier, required: true, location_name: "URI"))
    Resource.add_member(:account_id, Shapes::ShapeRef.new(shape: AWSAccountId, location_name: "AccountId"))
    Resource.struct_class = Types::Resource

    ResourceIdList.member = Shapes::ShapeRef.new(shape: ResourceId)

    ResourceList.member = Shapes::ShapeRef.new(shape: Resource)

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ResourceSet.add_member(:id, Shapes::ShapeRef.new(shape: Base62Id, location_name: "Id"))
    ResourceSet.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "Name"))
    ResourceSet.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    ResourceSet.add_member(:update_token, Shapes::ShapeRef.new(shape: UpdateToken, location_name: "UpdateToken"))
    ResourceSet.add_member(:resource_type_list, Shapes::ShapeRef.new(shape: ResourceTypeList, required: true, location_name: "ResourceTypeList"))
    ResourceSet.add_member(:last_update_time, Shapes::ShapeRef.new(shape: TimeStamp, location_name: "LastUpdateTime"))
    ResourceSet.add_member(:resource_set_status, Shapes::ShapeRef.new(shape: ResourceSetStatus, location_name: "ResourceSetStatus"))
    ResourceSet.struct_class = Types::ResourceSet

    ResourceSetIds.member = Shapes::ShapeRef.new(shape: Base62Id)

    ResourceSetSummary.add_member(:id, Shapes::ShapeRef.new(shape: Base62Id, location_name: "Id"))
    ResourceSetSummary.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "Name"))
    ResourceSetSummary.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    ResourceSetSummary.add_member(:last_update_time, Shapes::ShapeRef.new(shape: TimeStamp, location_name: "LastUpdateTime"))
    ResourceSetSummary.add_member(:resource_set_status, Shapes::ShapeRef.new(shape: ResourceSetStatus, location_name: "ResourceSetStatus"))
    ResourceSetSummary.struct_class = Types::ResourceSetSummary

    ResourceSetSummaryList.member = Shapes::ShapeRef.new(shape: ResourceSetSummary)

    ResourceTag.add_member(:key, Shapes::ShapeRef.new(shape: ResourceTagKey, required: true, location_name: "Key"))
    ResourceTag.add_member(:value, Shapes::ShapeRef.new(shape: ResourceTagValue, location_name: "Value"))
    ResourceTag.struct_class = Types::ResourceTag

    ResourceTags.member = Shapes::ShapeRef.new(shape: ResourceTag)

    ResourceTypeList.member = Shapes::ShapeRef.new(shape: ResourceType)

    ResourceViolation.add_member(:aws_vpc_security_group_violation, Shapes::ShapeRef.new(shape: AwsVPCSecurityGroupViolation, location_name: "AwsVPCSecurityGroupViolation"))
    ResourceViolation.add_member(:aws_ec2_network_interface_violation, Shapes::ShapeRef.new(shape: AwsEc2NetworkInterfaceViolation, location_name: "AwsEc2NetworkInterfaceViolation"))
    ResourceViolation.add_member(:aws_ec2_instance_violation, Shapes::ShapeRef.new(shape: AwsEc2InstanceViolation, location_name: "AwsEc2InstanceViolation"))
    ResourceViolation.add_member(:network_firewall_missing_firewall_violation, Shapes::ShapeRef.new(shape: NetworkFirewallMissingFirewallViolation, location_name: "NetworkFirewallMissingFirewallViolation"))
    ResourceViolation.add_member(:network_firewall_missing_subnet_violation, Shapes::ShapeRef.new(shape: NetworkFirewallMissingSubnetViolation, location_name: "NetworkFirewallMissingSubnetViolation"))
    ResourceViolation.add_member(:network_firewall_missing_expected_rt_violation, Shapes::ShapeRef.new(shape: NetworkFirewallMissingExpectedRTViolation, location_name: "NetworkFirewallMissingExpectedRTViolation"))
    ResourceViolation.add_member(:network_firewall_policy_modified_violation, Shapes::ShapeRef.new(shape: NetworkFirewallPolicyModifiedViolation, location_name: "NetworkFirewallPolicyModifiedViolation"))
    ResourceViolation.add_member(:network_firewall_internet_traffic_not_inspected_violation, Shapes::ShapeRef.new(shape: NetworkFirewallInternetTrafficNotInspectedViolation, location_name: "NetworkFirewallInternetTrafficNotInspectedViolation"))
    ResourceViolation.add_member(:network_firewall_invalid_route_configuration_violation, Shapes::ShapeRef.new(shape: NetworkFirewallInvalidRouteConfigurationViolation, location_name: "NetworkFirewallInvalidRouteConfigurationViolation"))
    ResourceViolation.add_member(:network_firewall_black_hole_route_detected_violation, Shapes::ShapeRef.new(shape: NetworkFirewallBlackHoleRouteDetectedViolation, location_name: "NetworkFirewallBlackHoleRouteDetectedViolation"))
    ResourceViolation.add_member(:network_firewall_unexpected_firewall_routes_violation, Shapes::ShapeRef.new(shape: NetworkFirewallUnexpectedFirewallRoutesViolation, location_name: "NetworkFirewallUnexpectedFirewallRoutesViolation"))
    ResourceViolation.add_member(:network_firewall_unexpected_gateway_routes_violation, Shapes::ShapeRef.new(shape: NetworkFirewallUnexpectedGatewayRoutesViolation, location_name: "NetworkFirewallUnexpectedGatewayRoutesViolation"))
    ResourceViolation.add_member(:network_firewall_missing_expected_routes_violation, Shapes::ShapeRef.new(shape: NetworkFirewallMissingExpectedRoutesViolation, location_name: "NetworkFirewallMissingExpectedRoutesViolation"))
    ResourceViolation.add_member(:dns_rule_group_priority_conflict_violation, Shapes::ShapeRef.new(shape: DnsRuleGroupPriorityConflictViolation, location_name: "DnsRuleGroupPriorityConflictViolation"))
    ResourceViolation.add_member(:dns_duplicate_rule_group_violation, Shapes::ShapeRef.new(shape: DnsDuplicateRuleGroupViolation, location_name: "DnsDuplicateRuleGroupViolation"))
    ResourceViolation.add_member(:dns_rule_group_limit_exceeded_violation, Shapes::ShapeRef.new(shape: DnsRuleGroupLimitExceededViolation, location_name: "DnsRuleGroupLimitExceededViolation"))
    ResourceViolation.add_member(:possible_remediation_actions, Shapes::ShapeRef.new(shape: PossibleRemediationActions, location_name: "PossibleRemediationActions"))
    ResourceViolation.add_member(:firewall_subnet_is_out_of_scope_violation, Shapes::ShapeRef.new(shape: FirewallSubnetIsOutOfScopeViolation, location_name: "FirewallSubnetIsOutOfScopeViolation"))
    ResourceViolation.add_member(:route_has_out_of_scope_endpoint_violation, Shapes::ShapeRef.new(shape: RouteHasOutOfScopeEndpointViolation, location_name: "RouteHasOutOfScopeEndpointViolation"))
    ResourceViolation.add_member(:third_party_firewall_missing_firewall_violation, Shapes::ShapeRef.new(shape: ThirdPartyFirewallMissingFirewallViolation, location_name: "ThirdPartyFirewallMissingFirewallViolation"))
    ResourceViolation.add_member(:third_party_firewall_missing_subnet_violation, Shapes::ShapeRef.new(shape: ThirdPartyFirewallMissingSubnetViolation, location_name: "ThirdPartyFirewallMissingSubnetViolation"))
    ResourceViolation.add_member(:third_party_firewall_missing_expected_route_table_violation, Shapes::ShapeRef.new(shape: ThirdPartyFirewallMissingExpectedRouteTableViolation, location_name: "ThirdPartyFirewallMissingExpectedRouteTableViolation"))
    ResourceViolation.add_member(:firewall_subnet_missing_vpc_endpoint_violation, Shapes::ShapeRef.new(shape: FirewallSubnetMissingVPCEndpointViolation, location_name: "FirewallSubnetMissingVPCEndpointViolation"))
    ResourceViolation.struct_class = Types::ResourceViolation

    ResourceViolations.member = Shapes::ShapeRef.new(shape: ResourceViolation)

    Route.add_member(:destination_type, Shapes::ShapeRef.new(shape: DestinationType, location_name: "DestinationType"))
    Route.add_member(:target_type, Shapes::ShapeRef.new(shape: TargetType, location_name: "TargetType"))
    Route.add_member(:destination, Shapes::ShapeRef.new(shape: LengthBoundedString, location_name: "Destination"))
    Route.add_member(:target, Shapes::ShapeRef.new(shape: LengthBoundedString, location_name: "Target"))
    Route.struct_class = Types::Route

    RouteHasOutOfScopeEndpointViolation.add_member(:subnet_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "SubnetId"))
    RouteHasOutOfScopeEndpointViolation.add_member(:vpc_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "VpcId"))
    RouteHasOutOfScopeEndpointViolation.add_member(:route_table_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "RouteTableId"))
    RouteHasOutOfScopeEndpointViolation.add_member(:violating_routes, Shapes::ShapeRef.new(shape: Routes, location_name: "ViolatingRoutes"))
    RouteHasOutOfScopeEndpointViolation.add_member(:subnet_availability_zone, Shapes::ShapeRef.new(shape: LengthBoundedString, location_name: "SubnetAvailabilityZone"))
    RouteHasOutOfScopeEndpointViolation.add_member(:subnet_availability_zone_id, Shapes::ShapeRef.new(shape: LengthBoundedString, location_name: "SubnetAvailabilityZoneId"))
    RouteHasOutOfScopeEndpointViolation.add_member(:current_firewall_subnet_route_table, Shapes::ShapeRef.new(shape: ResourceId, location_name: "CurrentFirewallSubnetRouteTable"))
    RouteHasOutOfScopeEndpointViolation.add_member(:firewall_subnet_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "FirewallSubnetId"))
    RouteHasOutOfScopeEndpointViolation.add_member(:firewall_subnet_routes, Shapes::ShapeRef.new(shape: Routes, location_name: "FirewallSubnetRoutes"))
    RouteHasOutOfScopeEndpointViolation.add_member(:internet_gateway_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "InternetGatewayId"))
    RouteHasOutOfScopeEndpointViolation.add_member(:current_internet_gateway_route_table, Shapes::ShapeRef.new(shape: ResourceId, location_name: "CurrentInternetGatewayRouteTable"))
    RouteHasOutOfScopeEndpointViolation.add_member(:internet_gateway_routes, Shapes::ShapeRef.new(shape: Routes, location_name: "InternetGatewayRoutes"))
    RouteHasOutOfScopeEndpointViolation.struct_class = Types::RouteHasOutOfScopeEndpointViolation

    Routes.member = Shapes::ShapeRef.new(shape: Route)

    SecurityGroupRemediationAction.add_member(:remediation_action_type, Shapes::ShapeRef.new(shape: RemediationActionType, location_name: "RemediationActionType"))
    SecurityGroupRemediationAction.add_member(:description, Shapes::ShapeRef.new(shape: RemediationActionDescription, location_name: "Description"))
    SecurityGroupRemediationAction.add_member(:remediation_result, Shapes::ShapeRef.new(shape: SecurityGroupRuleDescription, location_name: "RemediationResult"))
    SecurityGroupRemediationAction.add_member(:is_default_action, Shapes::ShapeRef.new(shape: Boolean, location_name: "IsDefaultAction"))
    SecurityGroupRemediationAction.struct_class = Types::SecurityGroupRemediationAction

    SecurityGroupRemediationActions.member = Shapes::ShapeRef.new(shape: SecurityGroupRemediationAction)

    SecurityGroupRuleDescription.add_member(:ipv4_range, Shapes::ShapeRef.new(shape: CIDR, location_name: "IPV4Range"))
    SecurityGroupRuleDescription.add_member(:ipv6_range, Shapes::ShapeRef.new(shape: CIDR, location_name: "IPV6Range"))
    SecurityGroupRuleDescription.add_member(:prefix_list_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "PrefixListId"))
    SecurityGroupRuleDescription.add_member(:protocol, Shapes::ShapeRef.new(shape: LengthBoundedString, location_name: "Protocol"))
    SecurityGroupRuleDescription.add_member(:from_port, Shapes::ShapeRef.new(shape: IPPortNumber, location_name: "FromPort"))
    SecurityGroupRuleDescription.add_member(:to_port, Shapes::ShapeRef.new(shape: IPPortNumber, location_name: "ToPort"))
    SecurityGroupRuleDescription.struct_class = Types::SecurityGroupRuleDescription

    SecurityServicePolicyData.add_member(:type, Shapes::ShapeRef.new(shape: SecurityServiceType, required: true, location_name: "Type"))
    SecurityServicePolicyData.add_member(:managed_service_data, Shapes::ShapeRef.new(shape: ManagedServiceData, location_name: "ManagedServiceData"))
    SecurityServicePolicyData.add_member(:policy_option, Shapes::ShapeRef.new(shape: PolicyOption, location_name: "PolicyOption"))
    SecurityServicePolicyData.struct_class = Types::SecurityServicePolicyData

    SecurityServiceTypeList.member = Shapes::ShapeRef.new(shape: SecurityServiceType)

    StatefulEngineOptions.add_member(:rule_order, Shapes::ShapeRef.new(shape: RuleOrder, location_name: "RuleOrder"))
    StatefulEngineOptions.struct_class = Types::StatefulEngineOptions

    StatefulRuleGroup.add_member(:rule_group_name, Shapes::ShapeRef.new(shape: NetworkFirewallResourceName, location_name: "RuleGroupName"))
    StatefulRuleGroup.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "ResourceId"))
    StatefulRuleGroup.add_member(:priority, Shapes::ShapeRef.new(shape: PriorityNumber, location_name: "Priority"))
    StatefulRuleGroup.add_member(:override, Shapes::ShapeRef.new(shape: NetworkFirewallStatefulRuleGroupOverride, location_name: "Override"))
    StatefulRuleGroup.struct_class = Types::StatefulRuleGroup

    StatefulRuleGroupList.member = Shapes::ShapeRef.new(shape: StatefulRuleGroup)

    StatelessRuleGroup.add_member(:rule_group_name, Shapes::ShapeRef.new(shape: NetworkFirewallResourceName, location_name: "RuleGroupName"))
    StatelessRuleGroup.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "ResourceId"))
    StatelessRuleGroup.add_member(:priority, Shapes::ShapeRef.new(shape: StatelessRuleGroupPriority, location_name: "Priority"))
    StatelessRuleGroup.struct_class = Types::StatelessRuleGroup

    StatelessRuleGroupList.member = Shapes::ShapeRef.new(shape: StatelessRuleGroup)

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, required: true, location_name: "Value"))
    Tag.struct_class = Types::Tag

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagList.member = Shapes::ShapeRef.new(shape: Tag)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "ResourceArn"))
    TagResourceRequest.add_member(:tag_list, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "TagList"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    TargetViolationReasons.member = Shapes::ShapeRef.new(shape: TargetViolationReason)

    ThirdPartyFirewallFirewallPolicies.member = Shapes::ShapeRef.new(shape: ThirdPartyFirewallFirewallPolicy)

    ThirdPartyFirewallFirewallPolicy.add_member(:firewall_policy_id, Shapes::ShapeRef.new(shape: FirewallPolicyId, location_name: "FirewallPolicyId"))
    ThirdPartyFirewallFirewallPolicy.add_member(:firewall_policy_name, Shapes::ShapeRef.new(shape: FirewallPolicyName, location_name: "FirewallPolicyName"))
    ThirdPartyFirewallFirewallPolicy.struct_class = Types::ThirdPartyFirewallFirewallPolicy

    ThirdPartyFirewallMissingExpectedRouteTableViolation.add_member(:violation_target, Shapes::ShapeRef.new(shape: ViolationTarget, location_name: "ViolationTarget"))
    ThirdPartyFirewallMissingExpectedRouteTableViolation.add_member(:vpc, Shapes::ShapeRef.new(shape: ResourceId, location_name: "VPC"))
    ThirdPartyFirewallMissingExpectedRouteTableViolation.add_member(:availability_zone, Shapes::ShapeRef.new(shape: LengthBoundedString, location_name: "AvailabilityZone"))
    ThirdPartyFirewallMissingExpectedRouteTableViolation.add_member(:current_route_table, Shapes::ShapeRef.new(shape: ResourceId, location_name: "CurrentRouteTable"))
    ThirdPartyFirewallMissingExpectedRouteTableViolation.add_member(:expected_route_table, Shapes::ShapeRef.new(shape: ResourceId, location_name: "ExpectedRouteTable"))
    ThirdPartyFirewallMissingExpectedRouteTableViolation.struct_class = Types::ThirdPartyFirewallMissingExpectedRouteTableViolation

    ThirdPartyFirewallMissingFirewallViolation.add_member(:violation_target, Shapes::ShapeRef.new(shape: ViolationTarget, location_name: "ViolationTarget"))
    ThirdPartyFirewallMissingFirewallViolation.add_member(:vpc, Shapes::ShapeRef.new(shape: ResourceId, location_name: "VPC"))
    ThirdPartyFirewallMissingFirewallViolation.add_member(:availability_zone, Shapes::ShapeRef.new(shape: LengthBoundedString, location_name: "AvailabilityZone"))
    ThirdPartyFirewallMissingFirewallViolation.add_member(:target_violation_reason, Shapes::ShapeRef.new(shape: TargetViolationReason, location_name: "TargetViolationReason"))
    ThirdPartyFirewallMissingFirewallViolation.struct_class = Types::ThirdPartyFirewallMissingFirewallViolation

    ThirdPartyFirewallMissingSubnetViolation.add_member(:violation_target, Shapes::ShapeRef.new(shape: ViolationTarget, location_name: "ViolationTarget"))
    ThirdPartyFirewallMissingSubnetViolation.add_member(:vpc, Shapes::ShapeRef.new(shape: ResourceId, location_name: "VPC"))
    ThirdPartyFirewallMissingSubnetViolation.add_member(:availability_zone, Shapes::ShapeRef.new(shape: LengthBoundedString, location_name: "AvailabilityZone"))
    ThirdPartyFirewallMissingSubnetViolation.add_member(:target_violation_reason, Shapes::ShapeRef.new(shape: TargetViolationReason, location_name: "TargetViolationReason"))
    ThirdPartyFirewallMissingSubnetViolation.struct_class = Types::ThirdPartyFirewallMissingSubnetViolation

    ThirdPartyFirewallPolicy.add_member(:firewall_deployment_model, Shapes::ShapeRef.new(shape: FirewallDeploymentModel, location_name: "FirewallDeploymentModel"))
    ThirdPartyFirewallPolicy.struct_class = Types::ThirdPartyFirewallPolicy

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "ResourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location_name: "TagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    ViolationDetail.add_member(:policy_id, Shapes::ShapeRef.new(shape: PolicyId, required: true, location_name: "PolicyId"))
    ViolationDetail.add_member(:member_account, Shapes::ShapeRef.new(shape: AWSAccountId, required: true, location_name: "MemberAccount"))
    ViolationDetail.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "ResourceId"))
    ViolationDetail.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, required: true, location_name: "ResourceType"))
    ViolationDetail.add_member(:resource_violations, Shapes::ShapeRef.new(shape: ResourceViolations, required: true, location_name: "ResourceViolations"))
    ViolationDetail.add_member(:resource_tags, Shapes::ShapeRef.new(shape: TagList, location_name: "ResourceTags"))
    ViolationDetail.add_member(:resource_description, Shapes::ShapeRef.new(shape: LengthBoundedString, location_name: "ResourceDescription"))
    ViolationDetail.struct_class = Types::ViolationDetail


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2018-01-01"

      api.metadata = {
        "apiVersion" => "2018-01-01",
        "endpointPrefix" => "fms",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "serviceAbbreviation" => "FMS",
        "serviceFullName" => "Firewall Management Service",
        "serviceId" => "FMS",
        "signatureVersion" => "v4",
        "targetPrefix" => "AWSFMS_20180101",
        "uid" => "fms-2018-01-01",
      }

      api.add_operation(:associate_admin_account, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateAdminAccount"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AssociateAdminAccountRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidOperationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:associate_third_party_firewall, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateThirdPartyFirewall"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AssociateThirdPartyFirewallRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateThirdPartyFirewallResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOperationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
      end)

      api.add_operation(:batch_associate_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchAssociateResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: BatchAssociateResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchAssociateResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOperationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:batch_disassociate_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchDisassociateResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: BatchDisassociateResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchDisassociateResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOperationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:delete_apps_list, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAppsList"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteAppsListRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOperationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
      end)

      api.add_operation(:delete_notification_channel, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteNotificationChannel"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteNotificationChannelRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOperationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
      end)

      api.add_operation(:delete_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeletePolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeletePolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOperationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:delete_protocols_list, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteProtocolsList"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteProtocolsListRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOperationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
      end)

      api.add_operation(:delete_resource_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteResourceSet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteResourceSetRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOperationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
      end)

      api.add_operation(:disassociate_admin_account, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateAdminAccount"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DisassociateAdminAccountRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidOperationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
      end)

      api.add_operation(:disassociate_third_party_firewall, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateThirdPartyFirewall"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DisassociateThirdPartyFirewallRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateThirdPartyFirewallResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOperationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
      end)

      api.add_operation(:get_admin_account, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAdminAccount"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetAdminAccountRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAdminAccountResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOperationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
      end)

      api.add_operation(:get_admin_scope, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAdminScope"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetAdminScopeRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAdminScopeResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOperationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:get_apps_list, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAppsList"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetAppsListRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAppsListResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOperationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
      end)

      api.add_operation(:get_compliance_detail, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetComplianceDetail"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetComplianceDetailRequest)
        o.output = Shapes::ShapeRef.new(shape: GetComplianceDetailResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOperationException)
      end)

      api.add_operation(:get_notification_channel, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetNotificationChannel"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetNotificationChannelRequest)
        o.output = Shapes::ShapeRef.new(shape: GetNotificationChannelResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOperationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
      end)

      api.add_operation(:get_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: GetPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOperationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTypeException)
      end)

      api.add_operation(:get_protection_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetProtectionStatus"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetProtectionStatusRequest)
        o.output = Shapes::ShapeRef.new(shape: GetProtectionStatusResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
      end)

      api.add_operation(:get_protocols_list, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetProtocolsList"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetProtocolsListRequest)
        o.output = Shapes::ShapeRef.new(shape: GetProtocolsListResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOperationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
      end)

      api.add_operation(:get_resource_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetResourceSet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetResourceSetRequest)
        o.output = Shapes::ShapeRef.new(shape: GetResourceSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOperationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
      end)

      api.add_operation(:get_third_party_firewall_association_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetThirdPartyFirewallAssociationStatus"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetThirdPartyFirewallAssociationStatusRequest)
        o.output = Shapes::ShapeRef.new(shape: GetThirdPartyFirewallAssociationStatusResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOperationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
      end)

      api.add_operation(:get_violation_details, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetViolationDetails"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetViolationDetailsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetViolationDetailsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
      end)

      api.add_operation(:list_admin_accounts_for_organization, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAdminAccountsForOrganization"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListAdminAccountsForOrganizationRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAdminAccountsForOrganizationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOperationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_admins_managing_account, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAdminsManagingAccount"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListAdminsManagingAccountRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAdminsManagingAccountResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_apps_lists, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAppsLists"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListAppsListsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAppsListsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOperationException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_compliance_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListComplianceStatus"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListComplianceStatusRequest)
        o.output = Shapes::ShapeRef.new(shape: ListComplianceStatusResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_discovered_resources, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDiscoveredResources"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListDiscoveredResourcesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDiscoveredResourcesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOperationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
      end)

      api.add_operation(:list_member_accounts, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListMemberAccounts"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListMemberAccountsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListMemberAccountsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_policies, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPolicies"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListPoliciesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPoliciesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOperationException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_protocols_lists, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListProtocolsLists"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListProtocolsListsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListProtocolsListsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOperationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_resource_set_resources, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListResourceSetResources"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListResourceSetResourcesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListResourceSetResourcesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOperationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:list_resource_sets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListResourceSets"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListResourceSetsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListResourceSetsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOperationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOperationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
      end)

      api.add_operation(:list_third_party_firewall_firewall_policies, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListThirdPartyFirewallFirewallPolicies"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListThirdPartyFirewallFirewallPoliciesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListThirdPartyFirewallFirewallPoliciesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOperationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:put_admin_account, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutAdminAccount"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutAdminAccountRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidOperationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:put_apps_list, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutAppsList"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutAppsListRequest)
        o.output = Shapes::ShapeRef.new(shape: PutAppsListResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOperationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
      end)

      api.add_operation(:put_notification_channel, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutNotificationChannel"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutNotificationChannelRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOperationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
      end)

      api.add_operation(:put_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: PutPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOperationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTypeException)
      end)

      api.add_operation(:put_protocols_list, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutProtocolsList"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutProtocolsListRequest)
        o.output = Shapes::ShapeRef.new(shape: PutProtocolsListResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOperationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
      end)

      api.add_operation(:put_resource_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutResourceSet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutResourceSetRequest)
        o.output = Shapes::ShapeRef.new(shape: PutResourceSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOperationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOperationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOperationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
      end)
    end

  end
end
