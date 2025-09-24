# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::EKS
  # @api private
  module ClientApi

    include Seahorse::Model

    AMITypes = Shapes::StringShape.new(name: 'AMITypes')
    AccessConfigResponse = Shapes::StructureShape.new(name: 'AccessConfigResponse')
    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AccessEntry = Shapes::StructureShape.new(name: 'AccessEntry')
    AccessPoliciesList = Shapes::ListShape.new(name: 'AccessPoliciesList')
    AccessPolicy = Shapes::StructureShape.new(name: 'AccessPolicy')
    AccessScope = Shapes::StructureShape.new(name: 'AccessScope')
    AccessScopeType = Shapes::StringShape.new(name: 'AccessScopeType')
    AdditionalInfoMap = Shapes::MapShape.new(name: 'AdditionalInfoMap')
    Addon = Shapes::StructureShape.new(name: 'Addon')
    AddonCompatibilityDetail = Shapes::StructureShape.new(name: 'AddonCompatibilityDetail')
    AddonCompatibilityDetails = Shapes::ListShape.new(name: 'AddonCompatibilityDetails')
    AddonHealth = Shapes::StructureShape.new(name: 'AddonHealth')
    AddonInfo = Shapes::StructureShape.new(name: 'AddonInfo')
    AddonIssue = Shapes::StructureShape.new(name: 'AddonIssue')
    AddonIssueCode = Shapes::StringShape.new(name: 'AddonIssueCode')
    AddonIssueList = Shapes::ListShape.new(name: 'AddonIssueList')
    AddonNamespaceConfigRequest = Shapes::StructureShape.new(name: 'AddonNamespaceConfigRequest')
    AddonNamespaceConfigResponse = Shapes::StructureShape.new(name: 'AddonNamespaceConfigResponse')
    AddonPodIdentityAssociations = Shapes::StructureShape.new(name: 'AddonPodIdentityAssociations')
    AddonPodIdentityAssociationsList = Shapes::ListShape.new(name: 'AddonPodIdentityAssociationsList')
    AddonPodIdentityConfiguration = Shapes::StructureShape.new(name: 'AddonPodIdentityConfiguration')
    AddonPodIdentityConfigurationList = Shapes::ListShape.new(name: 'AddonPodIdentityConfigurationList')
    AddonStatus = Shapes::StringShape.new(name: 'AddonStatus')
    AddonVersionInfo = Shapes::StructureShape.new(name: 'AddonVersionInfo')
    AddonVersionInfoList = Shapes::ListShape.new(name: 'AddonVersionInfoList')
    Addons = Shapes::ListShape.new(name: 'Addons')
    AssociateAccessPolicyRequest = Shapes::StructureShape.new(name: 'AssociateAccessPolicyRequest')
    AssociateAccessPolicyResponse = Shapes::StructureShape.new(name: 'AssociateAccessPolicyResponse')
    AssociateEncryptionConfigRequest = Shapes::StructureShape.new(name: 'AssociateEncryptionConfigRequest')
    AssociateEncryptionConfigResponse = Shapes::StructureShape.new(name: 'AssociateEncryptionConfigResponse')
    AssociateIdentityProviderConfigRequest = Shapes::StructureShape.new(name: 'AssociateIdentityProviderConfigRequest')
    AssociateIdentityProviderConfigResponse = Shapes::StructureShape.new(name: 'AssociateIdentityProviderConfigResponse')
    AssociatedAccessPoliciesList = Shapes::ListShape.new(name: 'AssociatedAccessPoliciesList')
    AssociatedAccessPolicy = Shapes::StructureShape.new(name: 'AssociatedAccessPolicy')
    AuthenticationMode = Shapes::StringShape.new(name: 'AuthenticationMode')
    AutoScalingGroup = Shapes::StructureShape.new(name: 'AutoScalingGroup')
    AutoScalingGroupList = Shapes::ListShape.new(name: 'AutoScalingGroupList')
    BadRequestException = Shapes::StructureShape.new(name: 'BadRequestException')
    BlockStorage = Shapes::StructureShape.new(name: 'BlockStorage')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    BoxedBoolean = Shapes::BooleanShape.new(name: 'BoxedBoolean')
    BoxedInteger = Shapes::IntegerShape.new(name: 'BoxedInteger')
    Capacity = Shapes::IntegerShape.new(name: 'Capacity')
    CapacityTypes = Shapes::StringShape.new(name: 'CapacityTypes')
    Category = Shapes::StringShape.new(name: 'Category')
    CategoryList = Shapes::ListShape.new(name: 'CategoryList')
    Certificate = Shapes::StructureShape.new(name: 'Certificate')
    ClientException = Shapes::StructureShape.new(name: 'ClientException')
    ClientStat = Shapes::StructureShape.new(name: 'ClientStat')
    ClientStats = Shapes::ListShape.new(name: 'ClientStats')
    Cluster = Shapes::StructureShape.new(name: 'Cluster')
    ClusterHealth = Shapes::StructureShape.new(name: 'ClusterHealth')
    ClusterIssue = Shapes::StructureShape.new(name: 'ClusterIssue')
    ClusterIssueCode = Shapes::StringShape.new(name: 'ClusterIssueCode')
    ClusterIssueList = Shapes::ListShape.new(name: 'ClusterIssueList')
    ClusterName = Shapes::StringShape.new(name: 'ClusterName')
    ClusterStatus = Shapes::StringShape.new(name: 'ClusterStatus')
    ClusterVersionInformation = Shapes::StructureShape.new(name: 'ClusterVersionInformation')
    ClusterVersionList = Shapes::ListShape.new(name: 'ClusterVersionList')
    ClusterVersionStatus = Shapes::StringShape.new(name: 'ClusterVersionStatus')
    Compatibilities = Shapes::ListShape.new(name: 'Compatibilities')
    Compatibility = Shapes::StructureShape.new(name: 'Compatibility')
    ComputeConfigRequest = Shapes::StructureShape.new(name: 'ComputeConfigRequest')
    ComputeConfigResponse = Shapes::StructureShape.new(name: 'ComputeConfigResponse')
    ConnectorConfigProvider = Shapes::StringShape.new(name: 'ConnectorConfigProvider')
    ConnectorConfigRequest = Shapes::StructureShape.new(name: 'ConnectorConfigRequest')
    ConnectorConfigResponse = Shapes::StructureShape.new(name: 'ConnectorConfigResponse')
    ControlPlanePlacementRequest = Shapes::StructureShape.new(name: 'ControlPlanePlacementRequest')
    ControlPlanePlacementResponse = Shapes::StructureShape.new(name: 'ControlPlanePlacementResponse')
    CreateAccessConfigRequest = Shapes::StructureShape.new(name: 'CreateAccessConfigRequest')
    CreateAccessEntryRequest = Shapes::StructureShape.new(name: 'CreateAccessEntryRequest')
    CreateAccessEntryResponse = Shapes::StructureShape.new(name: 'CreateAccessEntryResponse')
    CreateAddonRequest = Shapes::StructureShape.new(name: 'CreateAddonRequest')
    CreateAddonResponse = Shapes::StructureShape.new(name: 'CreateAddonResponse')
    CreateClusterRequest = Shapes::StructureShape.new(name: 'CreateClusterRequest')
    CreateClusterResponse = Shapes::StructureShape.new(name: 'CreateClusterResponse')
    CreateEksAnywhereSubscriptionRequest = Shapes::StructureShape.new(name: 'CreateEksAnywhereSubscriptionRequest')
    CreateEksAnywhereSubscriptionResponse = Shapes::StructureShape.new(name: 'CreateEksAnywhereSubscriptionResponse')
    CreateFargateProfileRequest = Shapes::StructureShape.new(name: 'CreateFargateProfileRequest')
    CreateFargateProfileResponse = Shapes::StructureShape.new(name: 'CreateFargateProfileResponse')
    CreateNodegroupRequest = Shapes::StructureShape.new(name: 'CreateNodegroupRequest')
    CreateNodegroupResponse = Shapes::StructureShape.new(name: 'CreateNodegroupResponse')
    CreatePodIdentityAssociationRequest = Shapes::StructureShape.new(name: 'CreatePodIdentityAssociationRequest')
    CreatePodIdentityAssociationResponse = Shapes::StructureShape.new(name: 'CreatePodIdentityAssociationResponse')
    DeleteAccessEntryRequest = Shapes::StructureShape.new(name: 'DeleteAccessEntryRequest')
    DeleteAccessEntryResponse = Shapes::StructureShape.new(name: 'DeleteAccessEntryResponse')
    DeleteAddonRequest = Shapes::StructureShape.new(name: 'DeleteAddonRequest')
    DeleteAddonResponse = Shapes::StructureShape.new(name: 'DeleteAddonResponse')
    DeleteClusterRequest = Shapes::StructureShape.new(name: 'DeleteClusterRequest')
    DeleteClusterResponse = Shapes::StructureShape.new(name: 'DeleteClusterResponse')
    DeleteEksAnywhereSubscriptionRequest = Shapes::StructureShape.new(name: 'DeleteEksAnywhereSubscriptionRequest')
    DeleteEksAnywhereSubscriptionResponse = Shapes::StructureShape.new(name: 'DeleteEksAnywhereSubscriptionResponse')
    DeleteFargateProfileRequest = Shapes::StructureShape.new(name: 'DeleteFargateProfileRequest')
    DeleteFargateProfileResponse = Shapes::StructureShape.new(name: 'DeleteFargateProfileResponse')
    DeleteNodegroupRequest = Shapes::StructureShape.new(name: 'DeleteNodegroupRequest')
    DeleteNodegroupResponse = Shapes::StructureShape.new(name: 'DeleteNodegroupResponse')
    DeletePodIdentityAssociationRequest = Shapes::StructureShape.new(name: 'DeletePodIdentityAssociationRequest')
    DeletePodIdentityAssociationResponse = Shapes::StructureShape.new(name: 'DeletePodIdentityAssociationResponse')
    DeprecationDetail = Shapes::StructureShape.new(name: 'DeprecationDetail')
    DeprecationDetails = Shapes::ListShape.new(name: 'DeprecationDetails')
    DeregisterClusterRequest = Shapes::StructureShape.new(name: 'DeregisterClusterRequest')
    DeregisterClusterResponse = Shapes::StructureShape.new(name: 'DeregisterClusterResponse')
    DescribeAccessEntryRequest = Shapes::StructureShape.new(name: 'DescribeAccessEntryRequest')
    DescribeAccessEntryResponse = Shapes::StructureShape.new(name: 'DescribeAccessEntryResponse')
    DescribeAddonConfigurationRequest = Shapes::StructureShape.new(name: 'DescribeAddonConfigurationRequest')
    DescribeAddonConfigurationResponse = Shapes::StructureShape.new(name: 'DescribeAddonConfigurationResponse')
    DescribeAddonRequest = Shapes::StructureShape.new(name: 'DescribeAddonRequest')
    DescribeAddonResponse = Shapes::StructureShape.new(name: 'DescribeAddonResponse')
    DescribeAddonVersionsRequest = Shapes::StructureShape.new(name: 'DescribeAddonVersionsRequest')
    DescribeAddonVersionsRequestMaxResults = Shapes::IntegerShape.new(name: 'DescribeAddonVersionsRequestMaxResults')
    DescribeAddonVersionsResponse = Shapes::StructureShape.new(name: 'DescribeAddonVersionsResponse')
    DescribeClusterRequest = Shapes::StructureShape.new(name: 'DescribeClusterRequest')
    DescribeClusterResponse = Shapes::StructureShape.new(name: 'DescribeClusterResponse')
    DescribeClusterVersionMaxResults = Shapes::IntegerShape.new(name: 'DescribeClusterVersionMaxResults')
    DescribeClusterVersionsRequest = Shapes::StructureShape.new(name: 'DescribeClusterVersionsRequest')
    DescribeClusterVersionsResponse = Shapes::StructureShape.new(name: 'DescribeClusterVersionsResponse')
    DescribeEksAnywhereSubscriptionRequest = Shapes::StructureShape.new(name: 'DescribeEksAnywhereSubscriptionRequest')
    DescribeEksAnywhereSubscriptionResponse = Shapes::StructureShape.new(name: 'DescribeEksAnywhereSubscriptionResponse')
    DescribeFargateProfileRequest = Shapes::StructureShape.new(name: 'DescribeFargateProfileRequest')
    DescribeFargateProfileResponse = Shapes::StructureShape.new(name: 'DescribeFargateProfileResponse')
    DescribeIdentityProviderConfigRequest = Shapes::StructureShape.new(name: 'DescribeIdentityProviderConfigRequest')
    DescribeIdentityProviderConfigResponse = Shapes::StructureShape.new(name: 'DescribeIdentityProviderConfigResponse')
    DescribeInsightRequest = Shapes::StructureShape.new(name: 'DescribeInsightRequest')
    DescribeInsightResponse = Shapes::StructureShape.new(name: 'DescribeInsightResponse')
    DescribeInsightsRefreshRequest = Shapes::StructureShape.new(name: 'DescribeInsightsRefreshRequest')
    DescribeInsightsRefreshResponse = Shapes::StructureShape.new(name: 'DescribeInsightsRefreshResponse')
    DescribeNodegroupRequest = Shapes::StructureShape.new(name: 'DescribeNodegroupRequest')
    DescribeNodegroupResponse = Shapes::StructureShape.new(name: 'DescribeNodegroupResponse')
    DescribePodIdentityAssociationRequest = Shapes::StructureShape.new(name: 'DescribePodIdentityAssociationRequest')
    DescribePodIdentityAssociationResponse = Shapes::StructureShape.new(name: 'DescribePodIdentityAssociationResponse')
    DescribeUpdateRequest = Shapes::StructureShape.new(name: 'DescribeUpdateRequest')
    DescribeUpdateResponse = Shapes::StructureShape.new(name: 'DescribeUpdateResponse')
    DisassociateAccessPolicyRequest = Shapes::StructureShape.new(name: 'DisassociateAccessPolicyRequest')
    DisassociateAccessPolicyResponse = Shapes::StructureShape.new(name: 'DisassociateAccessPolicyResponse')
    DisassociateIdentityProviderConfigRequest = Shapes::StructureShape.new(name: 'DisassociateIdentityProviderConfigRequest')
    DisassociateIdentityProviderConfigResponse = Shapes::StructureShape.new(name: 'DisassociateIdentityProviderConfigResponse')
    EksAnywhereSubscription = Shapes::StructureShape.new(name: 'EksAnywhereSubscription')
    EksAnywhereSubscriptionLicenseType = Shapes::StringShape.new(name: 'EksAnywhereSubscriptionLicenseType')
    EksAnywhereSubscriptionList = Shapes::ListShape.new(name: 'EksAnywhereSubscriptionList')
    EksAnywhereSubscriptionName = Shapes::StringShape.new(name: 'EksAnywhereSubscriptionName')
    EksAnywhereSubscriptionStatus = Shapes::StringShape.new(name: 'EksAnywhereSubscriptionStatus')
    EksAnywhereSubscriptionStatusValues = Shapes::ListShape.new(name: 'EksAnywhereSubscriptionStatusValues')
    EksAnywhereSubscriptionTerm = Shapes::StructureShape.new(name: 'EksAnywhereSubscriptionTerm')
    EksAnywhereSubscriptionTermUnit = Shapes::StringShape.new(name: 'EksAnywhereSubscriptionTermUnit')
    ElasticLoadBalancing = Shapes::StructureShape.new(name: 'ElasticLoadBalancing')
    EncryptionConfig = Shapes::StructureShape.new(name: 'EncryptionConfig')
    EncryptionConfigList = Shapes::ListShape.new(name: 'EncryptionConfigList')
    ErrorCode = Shapes::StringShape.new(name: 'ErrorCode')
    ErrorDetail = Shapes::StructureShape.new(name: 'ErrorDetail')
    ErrorDetails = Shapes::ListShape.new(name: 'ErrorDetails')
    FargateProfile = Shapes::StructureShape.new(name: 'FargateProfile')
    FargateProfileHealth = Shapes::StructureShape.new(name: 'FargateProfileHealth')
    FargateProfileIssue = Shapes::StructureShape.new(name: 'FargateProfileIssue')
    FargateProfileIssueCode = Shapes::StringShape.new(name: 'FargateProfileIssueCode')
    FargateProfileIssueList = Shapes::ListShape.new(name: 'FargateProfileIssueList')
    FargateProfileLabel = Shapes::MapShape.new(name: 'FargateProfileLabel')
    FargateProfileSelector = Shapes::StructureShape.new(name: 'FargateProfileSelector')
    FargateProfileSelectors = Shapes::ListShape.new(name: 'FargateProfileSelectors')
    FargateProfileStatus = Shapes::StringShape.new(name: 'FargateProfileStatus')
    FargateProfilesRequestMaxResults = Shapes::IntegerShape.new(name: 'FargateProfilesRequestMaxResults')
    Identity = Shapes::StructureShape.new(name: 'Identity')
    IdentityProviderConfig = Shapes::StructureShape.new(name: 'IdentityProviderConfig')
    IdentityProviderConfigResponse = Shapes::StructureShape.new(name: 'IdentityProviderConfigResponse')
    IdentityProviderConfigs = Shapes::ListShape.new(name: 'IdentityProviderConfigs')
    IncludeClustersList = Shapes::ListShape.new(name: 'IncludeClustersList')
    Insight = Shapes::StructureShape.new(name: 'Insight')
    InsightCategorySpecificSummary = Shapes::StructureShape.new(name: 'InsightCategorySpecificSummary')
    InsightResourceDetail = Shapes::StructureShape.new(name: 'InsightResourceDetail')
    InsightResourceDetails = Shapes::ListShape.new(name: 'InsightResourceDetails')
    InsightStatus = Shapes::StructureShape.new(name: 'InsightStatus')
    InsightStatusValue = Shapes::StringShape.new(name: 'InsightStatusValue')
    InsightStatusValueList = Shapes::ListShape.new(name: 'InsightStatusValueList')
    InsightSummaries = Shapes::ListShape.new(name: 'InsightSummaries')
    InsightSummary = Shapes::StructureShape.new(name: 'InsightSummary')
    InsightsFilter = Shapes::StructureShape.new(name: 'InsightsFilter')
    InsightsRefreshStatus = Shapes::StringShape.new(name: 'InsightsRefreshStatus')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InvalidParameterException = Shapes::StructureShape.new(name: 'InvalidParameterException')
    InvalidRequestException = Shapes::StructureShape.new(name: 'InvalidRequestException')
    InvalidStateException = Shapes::StructureShape.new(name: 'InvalidStateException')
    IpFamily = Shapes::StringShape.new(name: 'IpFamily')
    Issue = Shapes::StructureShape.new(name: 'Issue')
    IssueList = Shapes::ListShape.new(name: 'IssueList')
    KubernetesNetworkConfigRequest = Shapes::StructureShape.new(name: 'KubernetesNetworkConfigRequest')
    KubernetesNetworkConfigResponse = Shapes::StructureShape.new(name: 'KubernetesNetworkConfigResponse')
    LaunchTemplateSpecification = Shapes::StructureShape.new(name: 'LaunchTemplateSpecification')
    License = Shapes::StructureShape.new(name: 'License')
    LicenseList = Shapes::ListShape.new(name: 'LicenseList')
    ListAccessEntriesRequest = Shapes::StructureShape.new(name: 'ListAccessEntriesRequest')
    ListAccessEntriesRequestMaxResults = Shapes::IntegerShape.new(name: 'ListAccessEntriesRequestMaxResults')
    ListAccessEntriesResponse = Shapes::StructureShape.new(name: 'ListAccessEntriesResponse')
    ListAccessPoliciesRequest = Shapes::StructureShape.new(name: 'ListAccessPoliciesRequest')
    ListAccessPoliciesRequestMaxResults = Shapes::IntegerShape.new(name: 'ListAccessPoliciesRequestMaxResults')
    ListAccessPoliciesResponse = Shapes::StructureShape.new(name: 'ListAccessPoliciesResponse')
    ListAddonsRequest = Shapes::StructureShape.new(name: 'ListAddonsRequest')
    ListAddonsRequestMaxResults = Shapes::IntegerShape.new(name: 'ListAddonsRequestMaxResults')
    ListAddonsResponse = Shapes::StructureShape.new(name: 'ListAddonsResponse')
    ListAssociatedAccessPoliciesRequest = Shapes::StructureShape.new(name: 'ListAssociatedAccessPoliciesRequest')
    ListAssociatedAccessPoliciesRequestMaxResults = Shapes::IntegerShape.new(name: 'ListAssociatedAccessPoliciesRequestMaxResults')
    ListAssociatedAccessPoliciesResponse = Shapes::StructureShape.new(name: 'ListAssociatedAccessPoliciesResponse')
    ListClustersRequest = Shapes::StructureShape.new(name: 'ListClustersRequest')
    ListClustersRequestMaxResults = Shapes::IntegerShape.new(name: 'ListClustersRequestMaxResults')
    ListClustersResponse = Shapes::StructureShape.new(name: 'ListClustersResponse')
    ListEksAnywhereSubscriptionsRequest = Shapes::StructureShape.new(name: 'ListEksAnywhereSubscriptionsRequest')
    ListEksAnywhereSubscriptionsRequestMaxResults = Shapes::IntegerShape.new(name: 'ListEksAnywhereSubscriptionsRequestMaxResults')
    ListEksAnywhereSubscriptionsResponse = Shapes::StructureShape.new(name: 'ListEksAnywhereSubscriptionsResponse')
    ListFargateProfilesRequest = Shapes::StructureShape.new(name: 'ListFargateProfilesRequest')
    ListFargateProfilesResponse = Shapes::StructureShape.new(name: 'ListFargateProfilesResponse')
    ListIdentityProviderConfigsRequest = Shapes::StructureShape.new(name: 'ListIdentityProviderConfigsRequest')
    ListIdentityProviderConfigsRequestMaxResults = Shapes::IntegerShape.new(name: 'ListIdentityProviderConfigsRequestMaxResults')
    ListIdentityProviderConfigsResponse = Shapes::StructureShape.new(name: 'ListIdentityProviderConfigsResponse')
    ListInsightsMaxResults = Shapes::IntegerShape.new(name: 'ListInsightsMaxResults')
    ListInsightsRequest = Shapes::StructureShape.new(name: 'ListInsightsRequest')
    ListInsightsResponse = Shapes::StructureShape.new(name: 'ListInsightsResponse')
    ListNodegroupsRequest = Shapes::StructureShape.new(name: 'ListNodegroupsRequest')
    ListNodegroupsRequestMaxResults = Shapes::IntegerShape.new(name: 'ListNodegroupsRequestMaxResults')
    ListNodegroupsResponse = Shapes::StructureShape.new(name: 'ListNodegroupsResponse')
    ListPodIdentityAssociationsMaxResults = Shapes::IntegerShape.new(name: 'ListPodIdentityAssociationsMaxResults')
    ListPodIdentityAssociationsRequest = Shapes::StructureShape.new(name: 'ListPodIdentityAssociationsRequest')
    ListPodIdentityAssociationsResponse = Shapes::StructureShape.new(name: 'ListPodIdentityAssociationsResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    ListUpdatesRequest = Shapes::StructureShape.new(name: 'ListUpdatesRequest')
    ListUpdatesRequestMaxResults = Shapes::IntegerShape.new(name: 'ListUpdatesRequestMaxResults')
    ListUpdatesResponse = Shapes::StructureShape.new(name: 'ListUpdatesResponse')
    LogSetup = Shapes::StructureShape.new(name: 'LogSetup')
    LogSetups = Shapes::ListShape.new(name: 'LogSetups')
    LogType = Shapes::StringShape.new(name: 'LogType')
    LogTypes = Shapes::ListShape.new(name: 'LogTypes')
    Logging = Shapes::StructureShape.new(name: 'Logging')
    MarketplaceInformation = Shapes::StructureShape.new(name: 'MarketplaceInformation')
    NodeRepairConfig = Shapes::StructureShape.new(name: 'NodeRepairConfig')
    NodeRepairConfigOverrides = Shapes::StructureShape.new(name: 'NodeRepairConfigOverrides')
    NodeRepairConfigOverridesList = Shapes::ListShape.new(name: 'NodeRepairConfigOverridesList')
    Nodegroup = Shapes::StructureShape.new(name: 'Nodegroup')
    NodegroupHealth = Shapes::StructureShape.new(name: 'NodegroupHealth')
    NodegroupIssueCode = Shapes::StringShape.new(name: 'NodegroupIssueCode')
    NodegroupResources = Shapes::StructureShape.new(name: 'NodegroupResources')
    NodegroupScalingConfig = Shapes::StructureShape.new(name: 'NodegroupScalingConfig')
    NodegroupStatus = Shapes::StringShape.new(name: 'NodegroupStatus')
    NodegroupUpdateConfig = Shapes::StructureShape.new(name: 'NodegroupUpdateConfig')
    NodegroupUpdateStrategies = Shapes::StringShape.new(name: 'NodegroupUpdateStrategies')
    NonZeroInteger = Shapes::IntegerShape.new(name: 'NonZeroInteger')
    NotFoundException = Shapes::StructureShape.new(name: 'NotFoundException')
    OIDC = Shapes::StructureShape.new(name: 'OIDC')
    OidcIdentityProviderConfig = Shapes::StructureShape.new(name: 'OidcIdentityProviderConfig')
    OidcIdentityProviderConfigRequest = Shapes::StructureShape.new(name: 'OidcIdentityProviderConfigRequest')
    OutpostConfigRequest = Shapes::StructureShape.new(name: 'OutpostConfigRequest')
    OutpostConfigResponse = Shapes::StructureShape.new(name: 'OutpostConfigResponse')
    PercentCapacity = Shapes::IntegerShape.new(name: 'PercentCapacity')
    PodIdentityAssociation = Shapes::StructureShape.new(name: 'PodIdentityAssociation')
    PodIdentityAssociationSummaries = Shapes::ListShape.new(name: 'PodIdentityAssociationSummaries')
    PodIdentityAssociationSummary = Shapes::StructureShape.new(name: 'PodIdentityAssociationSummary')
    Provider = Shapes::StructureShape.new(name: 'Provider')
    RegisterClusterRequest = Shapes::StructureShape.new(name: 'RegisterClusterRequest')
    RegisterClusterResponse = Shapes::StructureShape.new(name: 'RegisterClusterResponse')
    RemoteAccessConfig = Shapes::StructureShape.new(name: 'RemoteAccessConfig')
    RemoteNetworkConfigRequest = Shapes::StructureShape.new(name: 'RemoteNetworkConfigRequest')
    RemoteNetworkConfigResponse = Shapes::StructureShape.new(name: 'RemoteNetworkConfigResponse')
    RemoteNodeNetwork = Shapes::StructureShape.new(name: 'RemoteNodeNetwork')
    RemoteNodeNetworkList = Shapes::ListShape.new(name: 'RemoteNodeNetworkList')
    RemotePodNetwork = Shapes::StructureShape.new(name: 'RemotePodNetwork')
    RemotePodNetworkList = Shapes::ListShape.new(name: 'RemotePodNetworkList')
    RepairAction = Shapes::StringShape.new(name: 'RepairAction')
    ResolveConflicts = Shapes::StringShape.new(name: 'ResolveConflicts')
    ResourceInUseException = Shapes::StructureShape.new(name: 'ResourceInUseException')
    ResourceLimitExceededException = Shapes::StructureShape.new(name: 'ResourceLimitExceededException')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourcePropagationDelayException = Shapes::StructureShape.new(name: 'ResourcePropagationDelayException')
    RoleArn = Shapes::StringShape.new(name: 'RoleArn')
    ServerException = Shapes::StructureShape.new(name: 'ServerException')
    ServiceUnavailableException = Shapes::StructureShape.new(name: 'ServiceUnavailableException')
    StartInsightsRefreshRequest = Shapes::StructureShape.new(name: 'StartInsightsRefreshRequest')
    StartInsightsRefreshResponse = Shapes::StructureShape.new(name: 'StartInsightsRefreshResponse')
    StorageConfigRequest = Shapes::StructureShape.new(name: 'StorageConfigRequest')
    StorageConfigResponse = Shapes::StructureShape.new(name: 'StorageConfigResponse')
    String = Shapes::StringShape.new(name: 'String')
    StringList = Shapes::ListShape.new(name: 'StringList')
    SupportType = Shapes::StringShape.new(name: 'SupportType')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagMap = Shapes::MapShape.new(name: 'TagMap')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    Taint = Shapes::StructureShape.new(name: 'Taint')
    TaintEffect = Shapes::StringShape.new(name: 'TaintEffect')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    UnsupportedAvailabilityZoneException = Shapes::StructureShape.new(name: 'UnsupportedAvailabilityZoneException')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    Update = Shapes::StructureShape.new(name: 'Update')
    UpdateAccessConfigRequest = Shapes::StructureShape.new(name: 'UpdateAccessConfigRequest')
    UpdateAccessEntryRequest = Shapes::StructureShape.new(name: 'UpdateAccessEntryRequest')
    UpdateAccessEntryResponse = Shapes::StructureShape.new(name: 'UpdateAccessEntryResponse')
    UpdateAddonRequest = Shapes::StructureShape.new(name: 'UpdateAddonRequest')
    UpdateAddonResponse = Shapes::StructureShape.new(name: 'UpdateAddonResponse')
    UpdateClusterConfigRequest = Shapes::StructureShape.new(name: 'UpdateClusterConfigRequest')
    UpdateClusterConfigResponse = Shapes::StructureShape.new(name: 'UpdateClusterConfigResponse')
    UpdateClusterVersionRequest = Shapes::StructureShape.new(name: 'UpdateClusterVersionRequest')
    UpdateClusterVersionResponse = Shapes::StructureShape.new(name: 'UpdateClusterVersionResponse')
    UpdateEksAnywhereSubscriptionRequest = Shapes::StructureShape.new(name: 'UpdateEksAnywhereSubscriptionRequest')
    UpdateEksAnywhereSubscriptionResponse = Shapes::StructureShape.new(name: 'UpdateEksAnywhereSubscriptionResponse')
    UpdateLabelsPayload = Shapes::StructureShape.new(name: 'UpdateLabelsPayload')
    UpdateNodegroupConfigRequest = Shapes::StructureShape.new(name: 'UpdateNodegroupConfigRequest')
    UpdateNodegroupConfigResponse = Shapes::StructureShape.new(name: 'UpdateNodegroupConfigResponse')
    UpdateNodegroupVersionRequest = Shapes::StructureShape.new(name: 'UpdateNodegroupVersionRequest')
    UpdateNodegroupVersionResponse = Shapes::StructureShape.new(name: 'UpdateNodegroupVersionResponse')
    UpdateParam = Shapes::StructureShape.new(name: 'UpdateParam')
    UpdateParamType = Shapes::StringShape.new(name: 'UpdateParamType')
    UpdateParams = Shapes::ListShape.new(name: 'UpdateParams')
    UpdatePodIdentityAssociationRequest = Shapes::StructureShape.new(name: 'UpdatePodIdentityAssociationRequest')
    UpdatePodIdentityAssociationResponse = Shapes::StructureShape.new(name: 'UpdatePodIdentityAssociationResponse')
    UpdateStatus = Shapes::StringShape.new(name: 'UpdateStatus')
    UpdateTaintsPayload = Shapes::StructureShape.new(name: 'UpdateTaintsPayload')
    UpdateType = Shapes::StringShape.new(name: 'UpdateType')
    UpgradePolicyRequest = Shapes::StructureShape.new(name: 'UpgradePolicyRequest')
    UpgradePolicyResponse = Shapes::StructureShape.new(name: 'UpgradePolicyResponse')
    VersionStatus = Shapes::StringShape.new(name: 'VersionStatus')
    VpcConfigRequest = Shapes::StructureShape.new(name: 'VpcConfigRequest')
    VpcConfigResponse = Shapes::StructureShape.new(name: 'VpcConfigResponse')
    ZeroCapacity = Shapes::IntegerShape.new(name: 'ZeroCapacity')
    ZonalShiftConfigRequest = Shapes::StructureShape.new(name: 'ZonalShiftConfigRequest')
    ZonalShiftConfigResponse = Shapes::StructureShape.new(name: 'ZonalShiftConfigResponse')
    configStatus = Shapes::StringShape.new(name: 'configStatus')
    labelKey = Shapes::StringShape.new(name: 'labelKey')
    labelValue = Shapes::StringShape.new(name: 'labelValue')
    labelsKeyList = Shapes::ListShape.new(name: 'labelsKeyList')
    labelsMap = Shapes::MapShape.new(name: 'labelsMap')
    namespace = Shapes::StringShape.new(name: 'namespace')
    requiredClaimsKey = Shapes::StringShape.new(name: 'requiredClaimsKey')
    requiredClaimsMap = Shapes::MapShape.new(name: 'requiredClaimsMap')
    requiredClaimsValue = Shapes::StringShape.new(name: 'requiredClaimsValue')
    taintKey = Shapes::StringShape.new(name: 'taintKey')
    taintValue = Shapes::StringShape.new(name: 'taintValue')
    taintsList = Shapes::ListShape.new(name: 'taintsList')

    AccessConfigResponse.add_member(:bootstrap_cluster_creator_admin_permissions, Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: "bootstrapClusterCreatorAdminPermissions"))
    AccessConfigResponse.add_member(:authentication_mode, Shapes::ShapeRef.new(shape: AuthenticationMode, location_name: "authenticationMode"))
    AccessConfigResponse.struct_class = Types::AccessConfigResponse

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AccessEntry.add_member(:cluster_name, Shapes::ShapeRef.new(shape: String, location_name: "clusterName"))
    AccessEntry.add_member(:principal_arn, Shapes::ShapeRef.new(shape: String, location_name: "principalArn"))
    AccessEntry.add_member(:kubernetes_groups, Shapes::ShapeRef.new(shape: StringList, location_name: "kubernetesGroups"))
    AccessEntry.add_member(:access_entry_arn, Shapes::ShapeRef.new(shape: String, location_name: "accessEntryArn"))
    AccessEntry.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    AccessEntry.add_member(:modified_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "modifiedAt"))
    AccessEntry.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    AccessEntry.add_member(:username, Shapes::ShapeRef.new(shape: String, location_name: "username"))
    AccessEntry.add_member(:type, Shapes::ShapeRef.new(shape: String, location_name: "type"))
    AccessEntry.struct_class = Types::AccessEntry

    AccessPoliciesList.member = Shapes::ShapeRef.new(shape: AccessPolicy)

    AccessPolicy.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    AccessPolicy.add_member(:arn, Shapes::ShapeRef.new(shape: String, location_name: "arn"))
    AccessPolicy.struct_class = Types::AccessPolicy

    AccessScope.add_member(:type, Shapes::ShapeRef.new(shape: AccessScopeType, location_name: "type"))
    AccessScope.add_member(:namespaces, Shapes::ShapeRef.new(shape: StringList, location_name: "namespaces"))
    AccessScope.struct_class = Types::AccessScope

    AdditionalInfoMap.key = Shapes::ShapeRef.new(shape: String)
    AdditionalInfoMap.value = Shapes::ShapeRef.new(shape: String)

    Addon.add_member(:addon_name, Shapes::ShapeRef.new(shape: String, location_name: "addonName"))
    Addon.add_member(:cluster_name, Shapes::ShapeRef.new(shape: ClusterName, location_name: "clusterName"))
    Addon.add_member(:status, Shapes::ShapeRef.new(shape: AddonStatus, location_name: "status"))
    Addon.add_member(:addon_version, Shapes::ShapeRef.new(shape: String, location_name: "addonVersion"))
    Addon.add_member(:health, Shapes::ShapeRef.new(shape: AddonHealth, location_name: "health"))
    Addon.add_member(:addon_arn, Shapes::ShapeRef.new(shape: String, location_name: "addonArn"))
    Addon.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    Addon.add_member(:modified_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "modifiedAt"))
    Addon.add_member(:service_account_role_arn, Shapes::ShapeRef.new(shape: String, location_name: "serviceAccountRoleArn"))
    Addon.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    Addon.add_member(:publisher, Shapes::ShapeRef.new(shape: String, location_name: "publisher"))
    Addon.add_member(:owner, Shapes::ShapeRef.new(shape: String, location_name: "owner"))
    Addon.add_member(:marketplace_information, Shapes::ShapeRef.new(shape: MarketplaceInformation, location_name: "marketplaceInformation"))
    Addon.add_member(:configuration_values, Shapes::ShapeRef.new(shape: String, location_name: "configurationValues"))
    Addon.add_member(:pod_identity_associations, Shapes::ShapeRef.new(shape: StringList, location_name: "podIdentityAssociations"))
    Addon.add_member(:namespace_config, Shapes::ShapeRef.new(shape: AddonNamespaceConfigResponse, location_name: "namespaceConfig"))
    Addon.struct_class = Types::Addon

    AddonCompatibilityDetail.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    AddonCompatibilityDetail.add_member(:compatible_versions, Shapes::ShapeRef.new(shape: StringList, location_name: "compatibleVersions"))
    AddonCompatibilityDetail.struct_class = Types::AddonCompatibilityDetail

    AddonCompatibilityDetails.member = Shapes::ShapeRef.new(shape: AddonCompatibilityDetail)

    AddonHealth.add_member(:issues, Shapes::ShapeRef.new(shape: AddonIssueList, location_name: "issues"))
    AddonHealth.struct_class = Types::AddonHealth

    AddonInfo.add_member(:addon_name, Shapes::ShapeRef.new(shape: String, location_name: "addonName"))
    AddonInfo.add_member(:type, Shapes::ShapeRef.new(shape: String, location_name: "type"))
    AddonInfo.add_member(:addon_versions, Shapes::ShapeRef.new(shape: AddonVersionInfoList, location_name: "addonVersions"))
    AddonInfo.add_member(:publisher, Shapes::ShapeRef.new(shape: String, location_name: "publisher"))
    AddonInfo.add_member(:owner, Shapes::ShapeRef.new(shape: String, location_name: "owner"))
    AddonInfo.add_member(:marketplace_information, Shapes::ShapeRef.new(shape: MarketplaceInformation, location_name: "marketplaceInformation"))
    AddonInfo.add_member(:default_namespace, Shapes::ShapeRef.new(shape: String, location_name: "defaultNamespace"))
    AddonInfo.struct_class = Types::AddonInfo

    AddonIssue.add_member(:code, Shapes::ShapeRef.new(shape: AddonIssueCode, location_name: "code"))
    AddonIssue.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    AddonIssue.add_member(:resource_ids, Shapes::ShapeRef.new(shape: StringList, location_name: "resourceIds"))
    AddonIssue.struct_class = Types::AddonIssue

    AddonIssueList.member = Shapes::ShapeRef.new(shape: AddonIssue)

    AddonNamespaceConfigRequest.add_member(:namespace, Shapes::ShapeRef.new(shape: namespace, location_name: "namespace"))
    AddonNamespaceConfigRequest.struct_class = Types::AddonNamespaceConfigRequest

    AddonNamespaceConfigResponse.add_member(:namespace, Shapes::ShapeRef.new(shape: namespace, location_name: "namespace"))
    AddonNamespaceConfigResponse.struct_class = Types::AddonNamespaceConfigResponse

    AddonPodIdentityAssociations.add_member(:service_account, Shapes::ShapeRef.new(shape: String, required: true, location_name: "serviceAccount"))
    AddonPodIdentityAssociations.add_member(:role_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "roleArn"))
    AddonPodIdentityAssociations.struct_class = Types::AddonPodIdentityAssociations

    AddonPodIdentityAssociationsList.member = Shapes::ShapeRef.new(shape: AddonPodIdentityAssociations)

    AddonPodIdentityConfiguration.add_member(:service_account, Shapes::ShapeRef.new(shape: String, location_name: "serviceAccount"))
    AddonPodIdentityConfiguration.add_member(:recommended_managed_policies, Shapes::ShapeRef.new(shape: StringList, location_name: "recommendedManagedPolicies"))
    AddonPodIdentityConfiguration.struct_class = Types::AddonPodIdentityConfiguration

    AddonPodIdentityConfigurationList.member = Shapes::ShapeRef.new(shape: AddonPodIdentityConfiguration)

    AddonVersionInfo.add_member(:addon_version, Shapes::ShapeRef.new(shape: String, location_name: "addonVersion"))
    AddonVersionInfo.add_member(:architecture, Shapes::ShapeRef.new(shape: StringList, location_name: "architecture"))
    AddonVersionInfo.add_member(:compute_types, Shapes::ShapeRef.new(shape: StringList, location_name: "computeTypes"))
    AddonVersionInfo.add_member(:compatibilities, Shapes::ShapeRef.new(shape: Compatibilities, location_name: "compatibilities"))
    AddonVersionInfo.add_member(:requires_configuration, Shapes::ShapeRef.new(shape: Boolean, location_name: "requiresConfiguration"))
    AddonVersionInfo.add_member(:requires_iam_permissions, Shapes::ShapeRef.new(shape: Boolean, location_name: "requiresIamPermissions"))
    AddonVersionInfo.struct_class = Types::AddonVersionInfo

    AddonVersionInfoList.member = Shapes::ShapeRef.new(shape: AddonVersionInfo)

    Addons.member = Shapes::ShapeRef.new(shape: AddonInfo)

    AssociateAccessPolicyRequest.add_member(:cluster_name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "name"))
    AssociateAccessPolicyRequest.add_member(:principal_arn, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "principalArn"))
    AssociateAccessPolicyRequest.add_member(:policy_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "policyArn"))
    AssociateAccessPolicyRequest.add_member(:access_scope, Shapes::ShapeRef.new(shape: AccessScope, required: true, location_name: "accessScope"))
    AssociateAccessPolicyRequest.struct_class = Types::AssociateAccessPolicyRequest

    AssociateAccessPolicyResponse.add_member(:cluster_name, Shapes::ShapeRef.new(shape: String, location_name: "clusterName"))
    AssociateAccessPolicyResponse.add_member(:principal_arn, Shapes::ShapeRef.new(shape: String, location_name: "principalArn"))
    AssociateAccessPolicyResponse.add_member(:associated_access_policy, Shapes::ShapeRef.new(shape: AssociatedAccessPolicy, location_name: "associatedAccessPolicy"))
    AssociateAccessPolicyResponse.struct_class = Types::AssociateAccessPolicyResponse

    AssociateEncryptionConfigRequest.add_member(:cluster_name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "name"))
    AssociateEncryptionConfigRequest.add_member(:encryption_config, Shapes::ShapeRef.new(shape: EncryptionConfigList, required: true, location_name: "encryptionConfig"))
    AssociateEncryptionConfigRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: String, location_name: "clientRequestToken", metadata: {"idempotencyToken" => true}))
    AssociateEncryptionConfigRequest.struct_class = Types::AssociateEncryptionConfigRequest

    AssociateEncryptionConfigResponse.add_member(:update, Shapes::ShapeRef.new(shape: Update, location_name: "update"))
    AssociateEncryptionConfigResponse.struct_class = Types::AssociateEncryptionConfigResponse

    AssociateIdentityProviderConfigRequest.add_member(:cluster_name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "name"))
    AssociateIdentityProviderConfigRequest.add_member(:oidc, Shapes::ShapeRef.new(shape: OidcIdentityProviderConfigRequest, required: true, location_name: "oidc"))
    AssociateIdentityProviderConfigRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    AssociateIdentityProviderConfigRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: String, location_name: "clientRequestToken", metadata: {"idempotencyToken" => true}))
    AssociateIdentityProviderConfigRequest.struct_class = Types::AssociateIdentityProviderConfigRequest

    AssociateIdentityProviderConfigResponse.add_member(:update, Shapes::ShapeRef.new(shape: Update, location_name: "update"))
    AssociateIdentityProviderConfigResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    AssociateIdentityProviderConfigResponse.struct_class = Types::AssociateIdentityProviderConfigResponse

    AssociatedAccessPoliciesList.member = Shapes::ShapeRef.new(shape: AssociatedAccessPolicy)

    AssociatedAccessPolicy.add_member(:policy_arn, Shapes::ShapeRef.new(shape: String, location_name: "policyArn"))
    AssociatedAccessPolicy.add_member(:access_scope, Shapes::ShapeRef.new(shape: AccessScope, location_name: "accessScope"))
    AssociatedAccessPolicy.add_member(:associated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "associatedAt"))
    AssociatedAccessPolicy.add_member(:modified_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "modifiedAt"))
    AssociatedAccessPolicy.struct_class = Types::AssociatedAccessPolicy

    AutoScalingGroup.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    AutoScalingGroup.struct_class = Types::AutoScalingGroup

    AutoScalingGroupList.member = Shapes::ShapeRef.new(shape: AutoScalingGroup)

    BadRequestException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    BadRequestException.struct_class = Types::BadRequestException

    BlockStorage.add_member(:enabled, Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: "enabled"))
    BlockStorage.struct_class = Types::BlockStorage

    CategoryList.member = Shapes::ShapeRef.new(shape: Category)

    Certificate.add_member(:data, Shapes::ShapeRef.new(shape: String, location_name: "data"))
    Certificate.struct_class = Types::Certificate

    ClientException.add_member(:cluster_name, Shapes::ShapeRef.new(shape: String, location_name: "clusterName"))
    ClientException.add_member(:nodegroup_name, Shapes::ShapeRef.new(shape: String, location_name: "nodegroupName"))
    ClientException.add_member(:addon_name, Shapes::ShapeRef.new(shape: String, location_name: "addonName"))
    ClientException.add_member(:subscription_id, Shapes::ShapeRef.new(shape: String, location_name: "subscriptionId"))
    ClientException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ClientException.struct_class = Types::ClientException

    ClientStat.add_member(:user_agent, Shapes::ShapeRef.new(shape: String, location_name: "userAgent"))
    ClientStat.add_member(:number_of_requests_last_30_days, Shapes::ShapeRef.new(shape: Integer, location_name: "numberOfRequestsLast30Days"))
    ClientStat.add_member(:last_request_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastRequestTime"))
    ClientStat.struct_class = Types::ClientStat

    ClientStats.member = Shapes::ShapeRef.new(shape: ClientStat)

    Cluster.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    Cluster.add_member(:arn, Shapes::ShapeRef.new(shape: String, location_name: "arn"))
    Cluster.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    Cluster.add_member(:version, Shapes::ShapeRef.new(shape: String, location_name: "version"))
    Cluster.add_member(:endpoint, Shapes::ShapeRef.new(shape: String, location_name: "endpoint"))
    Cluster.add_member(:role_arn, Shapes::ShapeRef.new(shape: String, location_name: "roleArn"))
    Cluster.add_member(:resources_vpc_config, Shapes::ShapeRef.new(shape: VpcConfigResponse, location_name: "resourcesVpcConfig"))
    Cluster.add_member(:kubernetes_network_config, Shapes::ShapeRef.new(shape: KubernetesNetworkConfigResponse, location_name: "kubernetesNetworkConfig"))
    Cluster.add_member(:logging, Shapes::ShapeRef.new(shape: Logging, location_name: "logging"))
    Cluster.add_member(:identity, Shapes::ShapeRef.new(shape: Identity, location_name: "identity"))
    Cluster.add_member(:status, Shapes::ShapeRef.new(shape: ClusterStatus, location_name: "status"))
    Cluster.add_member(:certificate_authority, Shapes::ShapeRef.new(shape: Certificate, location_name: "certificateAuthority"))
    Cluster.add_member(:client_request_token, Shapes::ShapeRef.new(shape: String, location_name: "clientRequestToken"))
    Cluster.add_member(:platform_version, Shapes::ShapeRef.new(shape: String, location_name: "platformVersion"))
    Cluster.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    Cluster.add_member(:encryption_config, Shapes::ShapeRef.new(shape: EncryptionConfigList, location_name: "encryptionConfig"))
    Cluster.add_member(:connector_config, Shapes::ShapeRef.new(shape: ConnectorConfigResponse, location_name: "connectorConfig"))
    Cluster.add_member(:id, Shapes::ShapeRef.new(shape: String, location_name: "id"))
    Cluster.add_member(:health, Shapes::ShapeRef.new(shape: ClusterHealth, location_name: "health"))
    Cluster.add_member(:outpost_config, Shapes::ShapeRef.new(shape: OutpostConfigResponse, location_name: "outpostConfig"))
    Cluster.add_member(:access_config, Shapes::ShapeRef.new(shape: AccessConfigResponse, location_name: "accessConfig"))
    Cluster.add_member(:upgrade_policy, Shapes::ShapeRef.new(shape: UpgradePolicyResponse, location_name: "upgradePolicy"))
    Cluster.add_member(:zonal_shift_config, Shapes::ShapeRef.new(shape: ZonalShiftConfigResponse, location_name: "zonalShiftConfig"))
    Cluster.add_member(:remote_network_config, Shapes::ShapeRef.new(shape: RemoteNetworkConfigResponse, location_name: "remoteNetworkConfig"))
    Cluster.add_member(:compute_config, Shapes::ShapeRef.new(shape: ComputeConfigResponse, location_name: "computeConfig"))
    Cluster.add_member(:storage_config, Shapes::ShapeRef.new(shape: StorageConfigResponse, location_name: "storageConfig"))
    Cluster.add_member(:deletion_protection, Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: "deletionProtection"))
    Cluster.struct_class = Types::Cluster

    ClusterHealth.add_member(:issues, Shapes::ShapeRef.new(shape: ClusterIssueList, location_name: "issues"))
    ClusterHealth.struct_class = Types::ClusterHealth

    ClusterIssue.add_member(:code, Shapes::ShapeRef.new(shape: ClusterIssueCode, location_name: "code"))
    ClusterIssue.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ClusterIssue.add_member(:resource_ids, Shapes::ShapeRef.new(shape: StringList, location_name: "resourceIds"))
    ClusterIssue.struct_class = Types::ClusterIssue

    ClusterIssueList.member = Shapes::ShapeRef.new(shape: ClusterIssue)

    ClusterVersionInformation.add_member(:cluster_version, Shapes::ShapeRef.new(shape: String, location_name: "clusterVersion"))
    ClusterVersionInformation.add_member(:cluster_type, Shapes::ShapeRef.new(shape: String, location_name: "clusterType"))
    ClusterVersionInformation.add_member(:default_platform_version, Shapes::ShapeRef.new(shape: String, location_name: "defaultPlatformVersion"))
    ClusterVersionInformation.add_member(:default_version, Shapes::ShapeRef.new(shape: Boolean, location_name: "defaultVersion"))
    ClusterVersionInformation.add_member(:release_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "releaseDate"))
    ClusterVersionInformation.add_member(:end_of_standard_support_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "endOfStandardSupportDate"))
    ClusterVersionInformation.add_member(:end_of_extended_support_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "endOfExtendedSupportDate"))
    ClusterVersionInformation.add_member(:status, Shapes::ShapeRef.new(shape: ClusterVersionStatus, location_name: "status"))
    ClusterVersionInformation.add_member(:version_status, Shapes::ShapeRef.new(shape: VersionStatus, location_name: "versionStatus"))
    ClusterVersionInformation.add_member(:kubernetes_patch_version, Shapes::ShapeRef.new(shape: String, location_name: "kubernetesPatchVersion"))
    ClusterVersionInformation.struct_class = Types::ClusterVersionInformation

    ClusterVersionList.member = Shapes::ShapeRef.new(shape: ClusterVersionInformation)

    Compatibilities.member = Shapes::ShapeRef.new(shape: Compatibility)

    Compatibility.add_member(:cluster_version, Shapes::ShapeRef.new(shape: String, location_name: "clusterVersion"))
    Compatibility.add_member(:platform_versions, Shapes::ShapeRef.new(shape: StringList, location_name: "platformVersions"))
    Compatibility.add_member(:default_version, Shapes::ShapeRef.new(shape: Boolean, location_name: "defaultVersion"))
    Compatibility.struct_class = Types::Compatibility

    ComputeConfigRequest.add_member(:enabled, Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: "enabled"))
    ComputeConfigRequest.add_member(:node_pools, Shapes::ShapeRef.new(shape: StringList, location_name: "nodePools"))
    ComputeConfigRequest.add_member(:node_role_arn, Shapes::ShapeRef.new(shape: String, location_name: "nodeRoleArn"))
    ComputeConfigRequest.struct_class = Types::ComputeConfigRequest

    ComputeConfigResponse.add_member(:enabled, Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: "enabled"))
    ComputeConfigResponse.add_member(:node_pools, Shapes::ShapeRef.new(shape: StringList, location_name: "nodePools"))
    ComputeConfigResponse.add_member(:node_role_arn, Shapes::ShapeRef.new(shape: String, location_name: "nodeRoleArn"))
    ComputeConfigResponse.struct_class = Types::ComputeConfigResponse

    ConnectorConfigRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "roleArn"))
    ConnectorConfigRequest.add_member(:provider, Shapes::ShapeRef.new(shape: ConnectorConfigProvider, required: true, location_name: "provider"))
    ConnectorConfigRequest.struct_class = Types::ConnectorConfigRequest

    ConnectorConfigResponse.add_member(:activation_id, Shapes::ShapeRef.new(shape: String, location_name: "activationId"))
    ConnectorConfigResponse.add_member(:activation_code, Shapes::ShapeRef.new(shape: String, location_name: "activationCode"))
    ConnectorConfigResponse.add_member(:activation_expiry, Shapes::ShapeRef.new(shape: Timestamp, location_name: "activationExpiry"))
    ConnectorConfigResponse.add_member(:provider, Shapes::ShapeRef.new(shape: String, location_name: "provider"))
    ConnectorConfigResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: String, location_name: "roleArn"))
    ConnectorConfigResponse.struct_class = Types::ConnectorConfigResponse

    ControlPlanePlacementRequest.add_member(:group_name, Shapes::ShapeRef.new(shape: String, location_name: "groupName"))
    ControlPlanePlacementRequest.struct_class = Types::ControlPlanePlacementRequest

    ControlPlanePlacementResponse.add_member(:group_name, Shapes::ShapeRef.new(shape: String, location_name: "groupName"))
    ControlPlanePlacementResponse.struct_class = Types::ControlPlanePlacementResponse

    CreateAccessConfigRequest.add_member(:bootstrap_cluster_creator_admin_permissions, Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: "bootstrapClusterCreatorAdminPermissions"))
    CreateAccessConfigRequest.add_member(:authentication_mode, Shapes::ShapeRef.new(shape: AuthenticationMode, location_name: "authenticationMode"))
    CreateAccessConfigRequest.struct_class = Types::CreateAccessConfigRequest

    CreateAccessEntryRequest.add_member(:cluster_name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "name"))
    CreateAccessEntryRequest.add_member(:principal_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "principalArn"))
    CreateAccessEntryRequest.add_member(:kubernetes_groups, Shapes::ShapeRef.new(shape: StringList, location_name: "kubernetesGroups"))
    CreateAccessEntryRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateAccessEntryRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: String, location_name: "clientRequestToken", metadata: {"idempotencyToken" => true}))
    CreateAccessEntryRequest.add_member(:username, Shapes::ShapeRef.new(shape: String, location_name: "username"))
    CreateAccessEntryRequest.add_member(:type, Shapes::ShapeRef.new(shape: String, location_name: "type"))
    CreateAccessEntryRequest.struct_class = Types::CreateAccessEntryRequest

    CreateAccessEntryResponse.add_member(:access_entry, Shapes::ShapeRef.new(shape: AccessEntry, location_name: "accessEntry"))
    CreateAccessEntryResponse.struct_class = Types::CreateAccessEntryResponse

    CreateAddonRequest.add_member(:cluster_name, Shapes::ShapeRef.new(shape: ClusterName, required: true, location: "uri", location_name: "name"))
    CreateAddonRequest.add_member(:addon_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "addonName"))
    CreateAddonRequest.add_member(:addon_version, Shapes::ShapeRef.new(shape: String, location_name: "addonVersion"))
    CreateAddonRequest.add_member(:service_account_role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "serviceAccountRoleArn"))
    CreateAddonRequest.add_member(:resolve_conflicts, Shapes::ShapeRef.new(shape: ResolveConflicts, location_name: "resolveConflicts"))
    CreateAddonRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: String, location_name: "clientRequestToken", metadata: {"idempotencyToken" => true}))
    CreateAddonRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateAddonRequest.add_member(:configuration_values, Shapes::ShapeRef.new(shape: String, location_name: "configurationValues"))
    CreateAddonRequest.add_member(:pod_identity_associations, Shapes::ShapeRef.new(shape: AddonPodIdentityAssociationsList, location_name: "podIdentityAssociations"))
    CreateAddonRequest.add_member(:namespace_config, Shapes::ShapeRef.new(shape: AddonNamespaceConfigRequest, location_name: "namespaceConfig"))
    CreateAddonRequest.struct_class = Types::CreateAddonRequest

    CreateAddonResponse.add_member(:addon, Shapes::ShapeRef.new(shape: Addon, location_name: "addon"))
    CreateAddonResponse.struct_class = Types::CreateAddonResponse

    CreateClusterRequest.add_member(:name, Shapes::ShapeRef.new(shape: ClusterName, required: true, location_name: "name"))
    CreateClusterRequest.add_member(:version, Shapes::ShapeRef.new(shape: String, location_name: "version"))
    CreateClusterRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "roleArn"))
    CreateClusterRequest.add_member(:resources_vpc_config, Shapes::ShapeRef.new(shape: VpcConfigRequest, required: true, location_name: "resourcesVpcConfig"))
    CreateClusterRequest.add_member(:kubernetes_network_config, Shapes::ShapeRef.new(shape: KubernetesNetworkConfigRequest, location_name: "kubernetesNetworkConfig"))
    CreateClusterRequest.add_member(:logging, Shapes::ShapeRef.new(shape: Logging, location_name: "logging"))
    CreateClusterRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: String, location_name: "clientRequestToken", metadata: {"idempotencyToken" => true}))
    CreateClusterRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateClusterRequest.add_member(:encryption_config, Shapes::ShapeRef.new(shape: EncryptionConfigList, location_name: "encryptionConfig"))
    CreateClusterRequest.add_member(:outpost_config, Shapes::ShapeRef.new(shape: OutpostConfigRequest, location_name: "outpostConfig"))
    CreateClusterRequest.add_member(:access_config, Shapes::ShapeRef.new(shape: CreateAccessConfigRequest, location_name: "accessConfig"))
    CreateClusterRequest.add_member(:bootstrap_self_managed_addons, Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: "bootstrapSelfManagedAddons"))
    CreateClusterRequest.add_member(:upgrade_policy, Shapes::ShapeRef.new(shape: UpgradePolicyRequest, location_name: "upgradePolicy"))
    CreateClusterRequest.add_member(:zonal_shift_config, Shapes::ShapeRef.new(shape: ZonalShiftConfigRequest, location_name: "zonalShiftConfig"))
    CreateClusterRequest.add_member(:remote_network_config, Shapes::ShapeRef.new(shape: RemoteNetworkConfigRequest, location_name: "remoteNetworkConfig"))
    CreateClusterRequest.add_member(:compute_config, Shapes::ShapeRef.new(shape: ComputeConfigRequest, location_name: "computeConfig"))
    CreateClusterRequest.add_member(:storage_config, Shapes::ShapeRef.new(shape: StorageConfigRequest, location_name: "storageConfig"))
    CreateClusterRequest.add_member(:deletion_protection, Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: "deletionProtection"))
    CreateClusterRequest.struct_class = Types::CreateClusterRequest

    CreateClusterResponse.add_member(:cluster, Shapes::ShapeRef.new(shape: Cluster, location_name: "cluster"))
    CreateClusterResponse.struct_class = Types::CreateClusterResponse

    CreateEksAnywhereSubscriptionRequest.add_member(:name, Shapes::ShapeRef.new(shape: EksAnywhereSubscriptionName, required: true, location_name: "name"))
    CreateEksAnywhereSubscriptionRequest.add_member(:term, Shapes::ShapeRef.new(shape: EksAnywhereSubscriptionTerm, required: true, location_name: "term"))
    CreateEksAnywhereSubscriptionRequest.add_member(:license_quantity, Shapes::ShapeRef.new(shape: Integer, location_name: "licenseQuantity"))
    CreateEksAnywhereSubscriptionRequest.add_member(:license_type, Shapes::ShapeRef.new(shape: EksAnywhereSubscriptionLicenseType, location_name: "licenseType"))
    CreateEksAnywhereSubscriptionRequest.add_member(:auto_renew, Shapes::ShapeRef.new(shape: Boolean, location_name: "autoRenew"))
    CreateEksAnywhereSubscriptionRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: String, location_name: "clientRequestToken", metadata: {"idempotencyToken" => true}))
    CreateEksAnywhereSubscriptionRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateEksAnywhereSubscriptionRequest.struct_class = Types::CreateEksAnywhereSubscriptionRequest

    CreateEksAnywhereSubscriptionResponse.add_member(:subscription, Shapes::ShapeRef.new(shape: EksAnywhereSubscription, location_name: "subscription"))
    CreateEksAnywhereSubscriptionResponse.struct_class = Types::CreateEksAnywhereSubscriptionResponse

    CreateFargateProfileRequest.add_member(:fargate_profile_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "fargateProfileName"))
    CreateFargateProfileRequest.add_member(:cluster_name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "name"))
    CreateFargateProfileRequest.add_member(:pod_execution_role_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "podExecutionRoleArn"))
    CreateFargateProfileRequest.add_member(:subnets, Shapes::ShapeRef.new(shape: StringList, location_name: "subnets"))
    CreateFargateProfileRequest.add_member(:selectors, Shapes::ShapeRef.new(shape: FargateProfileSelectors, location_name: "selectors"))
    CreateFargateProfileRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: String, location_name: "clientRequestToken", metadata: {"idempotencyToken" => true}))
    CreateFargateProfileRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateFargateProfileRequest.struct_class = Types::CreateFargateProfileRequest

    CreateFargateProfileResponse.add_member(:fargate_profile, Shapes::ShapeRef.new(shape: FargateProfile, location_name: "fargateProfile"))
    CreateFargateProfileResponse.struct_class = Types::CreateFargateProfileResponse

    CreateNodegroupRequest.add_member(:cluster_name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "name"))
    CreateNodegroupRequest.add_member(:nodegroup_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "nodegroupName"))
    CreateNodegroupRequest.add_member(:scaling_config, Shapes::ShapeRef.new(shape: NodegroupScalingConfig, location_name: "scalingConfig"))
    CreateNodegroupRequest.add_member(:disk_size, Shapes::ShapeRef.new(shape: BoxedInteger, location_name: "diskSize"))
    CreateNodegroupRequest.add_member(:subnets, Shapes::ShapeRef.new(shape: StringList, required: true, location_name: "subnets"))
    CreateNodegroupRequest.add_member(:instance_types, Shapes::ShapeRef.new(shape: StringList, location_name: "instanceTypes"))
    CreateNodegroupRequest.add_member(:ami_type, Shapes::ShapeRef.new(shape: AMITypes, location_name: "amiType"))
    CreateNodegroupRequest.add_member(:remote_access, Shapes::ShapeRef.new(shape: RemoteAccessConfig, location_name: "remoteAccess"))
    CreateNodegroupRequest.add_member(:node_role, Shapes::ShapeRef.new(shape: String, required: true, location_name: "nodeRole"))
    CreateNodegroupRequest.add_member(:labels, Shapes::ShapeRef.new(shape: labelsMap, location_name: "labels"))
    CreateNodegroupRequest.add_member(:taints, Shapes::ShapeRef.new(shape: taintsList, location_name: "taints"))
    CreateNodegroupRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateNodegroupRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: String, location_name: "clientRequestToken", metadata: {"idempotencyToken" => true}))
    CreateNodegroupRequest.add_member(:launch_template, Shapes::ShapeRef.new(shape: LaunchTemplateSpecification, location_name: "launchTemplate"))
    CreateNodegroupRequest.add_member(:update_config, Shapes::ShapeRef.new(shape: NodegroupUpdateConfig, location_name: "updateConfig"))
    CreateNodegroupRequest.add_member(:node_repair_config, Shapes::ShapeRef.new(shape: NodeRepairConfig, location_name: "nodeRepairConfig"))
    CreateNodegroupRequest.add_member(:capacity_type, Shapes::ShapeRef.new(shape: CapacityTypes, location_name: "capacityType"))
    CreateNodegroupRequest.add_member(:version, Shapes::ShapeRef.new(shape: String, location_name: "version"))
    CreateNodegroupRequest.add_member(:release_version, Shapes::ShapeRef.new(shape: String, location_name: "releaseVersion"))
    CreateNodegroupRequest.struct_class = Types::CreateNodegroupRequest

    CreateNodegroupResponse.add_member(:nodegroup, Shapes::ShapeRef.new(shape: Nodegroup, location_name: "nodegroup"))
    CreateNodegroupResponse.struct_class = Types::CreateNodegroupResponse

    CreatePodIdentityAssociationRequest.add_member(:cluster_name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "name"))
    CreatePodIdentityAssociationRequest.add_member(:namespace, Shapes::ShapeRef.new(shape: String, required: true, location_name: "namespace"))
    CreatePodIdentityAssociationRequest.add_member(:service_account, Shapes::ShapeRef.new(shape: String, required: true, location_name: "serviceAccount"))
    CreatePodIdentityAssociationRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "roleArn"))
    CreatePodIdentityAssociationRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: String, location_name: "clientRequestToken", metadata: {"idempotencyToken" => true}))
    CreatePodIdentityAssociationRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreatePodIdentityAssociationRequest.add_member(:disable_session_tags, Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: "disableSessionTags"))
    CreatePodIdentityAssociationRequest.add_member(:target_role_arn, Shapes::ShapeRef.new(shape: String, location_name: "targetRoleArn"))
    CreatePodIdentityAssociationRequest.struct_class = Types::CreatePodIdentityAssociationRequest

    CreatePodIdentityAssociationResponse.add_member(:association, Shapes::ShapeRef.new(shape: PodIdentityAssociation, location_name: "association"))
    CreatePodIdentityAssociationResponse.struct_class = Types::CreatePodIdentityAssociationResponse

    DeleteAccessEntryRequest.add_member(:cluster_name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "name"))
    DeleteAccessEntryRequest.add_member(:principal_arn, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "principalArn"))
    DeleteAccessEntryRequest.struct_class = Types::DeleteAccessEntryRequest

    DeleteAccessEntryResponse.struct_class = Types::DeleteAccessEntryResponse

    DeleteAddonRequest.add_member(:cluster_name, Shapes::ShapeRef.new(shape: ClusterName, required: true, location: "uri", location_name: "name"))
    DeleteAddonRequest.add_member(:addon_name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "addonName"))
    DeleteAddonRequest.add_member(:preserve, Shapes::ShapeRef.new(shape: Boolean, location: "querystring", location_name: "preserve"))
    DeleteAddonRequest.struct_class = Types::DeleteAddonRequest

    DeleteAddonResponse.add_member(:addon, Shapes::ShapeRef.new(shape: Addon, location_name: "addon"))
    DeleteAddonResponse.struct_class = Types::DeleteAddonResponse

    DeleteClusterRequest.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "name"))
    DeleteClusterRequest.struct_class = Types::DeleteClusterRequest

    DeleteClusterResponse.add_member(:cluster, Shapes::ShapeRef.new(shape: Cluster, location_name: "cluster"))
    DeleteClusterResponse.struct_class = Types::DeleteClusterResponse

    DeleteEksAnywhereSubscriptionRequest.add_member(:id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "id"))
    DeleteEksAnywhereSubscriptionRequest.struct_class = Types::DeleteEksAnywhereSubscriptionRequest

    DeleteEksAnywhereSubscriptionResponse.add_member(:subscription, Shapes::ShapeRef.new(shape: EksAnywhereSubscription, location_name: "subscription"))
    DeleteEksAnywhereSubscriptionResponse.struct_class = Types::DeleteEksAnywhereSubscriptionResponse

    DeleteFargateProfileRequest.add_member(:cluster_name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "name"))
    DeleteFargateProfileRequest.add_member(:fargate_profile_name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "fargateProfileName"))
    DeleteFargateProfileRequest.struct_class = Types::DeleteFargateProfileRequest

    DeleteFargateProfileResponse.add_member(:fargate_profile, Shapes::ShapeRef.new(shape: FargateProfile, location_name: "fargateProfile"))
    DeleteFargateProfileResponse.struct_class = Types::DeleteFargateProfileResponse

    DeleteNodegroupRequest.add_member(:cluster_name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "name"))
    DeleteNodegroupRequest.add_member(:nodegroup_name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "nodegroupName"))
    DeleteNodegroupRequest.struct_class = Types::DeleteNodegroupRequest

    DeleteNodegroupResponse.add_member(:nodegroup, Shapes::ShapeRef.new(shape: Nodegroup, location_name: "nodegroup"))
    DeleteNodegroupResponse.struct_class = Types::DeleteNodegroupResponse

    DeletePodIdentityAssociationRequest.add_member(:cluster_name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "name"))
    DeletePodIdentityAssociationRequest.add_member(:association_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "associationId"))
    DeletePodIdentityAssociationRequest.struct_class = Types::DeletePodIdentityAssociationRequest

    DeletePodIdentityAssociationResponse.add_member(:association, Shapes::ShapeRef.new(shape: PodIdentityAssociation, location_name: "association"))
    DeletePodIdentityAssociationResponse.struct_class = Types::DeletePodIdentityAssociationResponse

    DeprecationDetail.add_member(:usage, Shapes::ShapeRef.new(shape: String, location_name: "usage"))
    DeprecationDetail.add_member(:replaced_with, Shapes::ShapeRef.new(shape: String, location_name: "replacedWith"))
    DeprecationDetail.add_member(:stop_serving_version, Shapes::ShapeRef.new(shape: String, location_name: "stopServingVersion"))
    DeprecationDetail.add_member(:start_serving_replacement_version, Shapes::ShapeRef.new(shape: String, location_name: "startServingReplacementVersion"))
    DeprecationDetail.add_member(:client_stats, Shapes::ShapeRef.new(shape: ClientStats, location_name: "clientStats"))
    DeprecationDetail.struct_class = Types::DeprecationDetail

    DeprecationDetails.member = Shapes::ShapeRef.new(shape: DeprecationDetail)

    DeregisterClusterRequest.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "name"))
    DeregisterClusterRequest.struct_class = Types::DeregisterClusterRequest

    DeregisterClusterResponse.add_member(:cluster, Shapes::ShapeRef.new(shape: Cluster, location_name: "cluster"))
    DeregisterClusterResponse.struct_class = Types::DeregisterClusterResponse

    DescribeAccessEntryRequest.add_member(:cluster_name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "name"))
    DescribeAccessEntryRequest.add_member(:principal_arn, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "principalArn"))
    DescribeAccessEntryRequest.struct_class = Types::DescribeAccessEntryRequest

    DescribeAccessEntryResponse.add_member(:access_entry, Shapes::ShapeRef.new(shape: AccessEntry, location_name: "accessEntry"))
    DescribeAccessEntryResponse.struct_class = Types::DescribeAccessEntryResponse

    DescribeAddonConfigurationRequest.add_member(:addon_name, Shapes::ShapeRef.new(shape: String, required: true, location: "querystring", location_name: "addonName"))
    DescribeAddonConfigurationRequest.add_member(:addon_version, Shapes::ShapeRef.new(shape: String, required: true, location: "querystring", location_name: "addonVersion"))
    DescribeAddonConfigurationRequest.struct_class = Types::DescribeAddonConfigurationRequest

    DescribeAddonConfigurationResponse.add_member(:addon_name, Shapes::ShapeRef.new(shape: String, location_name: "addonName"))
    DescribeAddonConfigurationResponse.add_member(:addon_version, Shapes::ShapeRef.new(shape: String, location_name: "addonVersion"))
    DescribeAddonConfigurationResponse.add_member(:configuration_schema, Shapes::ShapeRef.new(shape: String, location_name: "configurationSchema"))
    DescribeAddonConfigurationResponse.add_member(:pod_identity_configuration, Shapes::ShapeRef.new(shape: AddonPodIdentityConfigurationList, location_name: "podIdentityConfiguration"))
    DescribeAddonConfigurationResponse.struct_class = Types::DescribeAddonConfigurationResponse

    DescribeAddonRequest.add_member(:cluster_name, Shapes::ShapeRef.new(shape: ClusterName, required: true, location: "uri", location_name: "name"))
    DescribeAddonRequest.add_member(:addon_name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "addonName"))
    DescribeAddonRequest.struct_class = Types::DescribeAddonRequest

    DescribeAddonResponse.add_member(:addon, Shapes::ShapeRef.new(shape: Addon, location_name: "addon"))
    DescribeAddonResponse.struct_class = Types::DescribeAddonResponse

    DescribeAddonVersionsRequest.add_member(:kubernetes_version, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "kubernetesVersion"))
    DescribeAddonVersionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: DescribeAddonVersionsRequestMaxResults, location: "querystring", location_name: "maxResults"))
    DescribeAddonVersionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    DescribeAddonVersionsRequest.add_member(:addon_name, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "addonName"))
    DescribeAddonVersionsRequest.add_member(:types, Shapes::ShapeRef.new(shape: StringList, location: "querystring", location_name: "types"))
    DescribeAddonVersionsRequest.add_member(:publishers, Shapes::ShapeRef.new(shape: StringList, location: "querystring", location_name: "publishers"))
    DescribeAddonVersionsRequest.add_member(:owners, Shapes::ShapeRef.new(shape: StringList, location: "querystring", location_name: "owners"))
    DescribeAddonVersionsRequest.struct_class = Types::DescribeAddonVersionsRequest

    DescribeAddonVersionsResponse.add_member(:addons, Shapes::ShapeRef.new(shape: Addons, location_name: "addons"))
    DescribeAddonVersionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    DescribeAddonVersionsResponse.struct_class = Types::DescribeAddonVersionsResponse

    DescribeClusterRequest.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "name"))
    DescribeClusterRequest.struct_class = Types::DescribeClusterRequest

    DescribeClusterResponse.add_member(:cluster, Shapes::ShapeRef.new(shape: Cluster, location_name: "cluster"))
    DescribeClusterResponse.struct_class = Types::DescribeClusterResponse

    DescribeClusterVersionsRequest.add_member(:cluster_type, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "clusterType"))
    DescribeClusterVersionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: DescribeClusterVersionMaxResults, location: "querystring", location_name: "maxResults"))
    DescribeClusterVersionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    DescribeClusterVersionsRequest.add_member(:default_only, Shapes::ShapeRef.new(shape: BoxedBoolean, location: "querystring", location_name: "defaultOnly"))
    DescribeClusterVersionsRequest.add_member(:include_all, Shapes::ShapeRef.new(shape: BoxedBoolean, location: "querystring", location_name: "includeAll"))
    DescribeClusterVersionsRequest.add_member(:cluster_versions, Shapes::ShapeRef.new(shape: StringList, location: "querystring", location_name: "clusterVersions"))
    DescribeClusterVersionsRequest.add_member(:status, Shapes::ShapeRef.new(shape: ClusterVersionStatus, deprecated: true, location: "querystring", location_name: "status", metadata: {"deprecatedMessage" => "status has been replaced by versionStatus", "deprecatedSince" => "2025-02-15"}))
    DescribeClusterVersionsRequest.add_member(:version_status, Shapes::ShapeRef.new(shape: VersionStatus, location: "querystring", location_name: "versionStatus"))
    DescribeClusterVersionsRequest.struct_class = Types::DescribeClusterVersionsRequest

    DescribeClusterVersionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    DescribeClusterVersionsResponse.add_member(:cluster_versions, Shapes::ShapeRef.new(shape: ClusterVersionList, location_name: "clusterVersions"))
    DescribeClusterVersionsResponse.struct_class = Types::DescribeClusterVersionsResponse

    DescribeEksAnywhereSubscriptionRequest.add_member(:id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "id"))
    DescribeEksAnywhereSubscriptionRequest.struct_class = Types::DescribeEksAnywhereSubscriptionRequest

    DescribeEksAnywhereSubscriptionResponse.add_member(:subscription, Shapes::ShapeRef.new(shape: EksAnywhereSubscription, location_name: "subscription"))
    DescribeEksAnywhereSubscriptionResponse.struct_class = Types::DescribeEksAnywhereSubscriptionResponse

    DescribeFargateProfileRequest.add_member(:cluster_name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "name"))
    DescribeFargateProfileRequest.add_member(:fargate_profile_name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "fargateProfileName"))
    DescribeFargateProfileRequest.struct_class = Types::DescribeFargateProfileRequest

    DescribeFargateProfileResponse.add_member(:fargate_profile, Shapes::ShapeRef.new(shape: FargateProfile, location_name: "fargateProfile"))
    DescribeFargateProfileResponse.struct_class = Types::DescribeFargateProfileResponse

    DescribeIdentityProviderConfigRequest.add_member(:cluster_name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "name"))
    DescribeIdentityProviderConfigRequest.add_member(:identity_provider_config, Shapes::ShapeRef.new(shape: IdentityProviderConfig, required: true, location_name: "identityProviderConfig"))
    DescribeIdentityProviderConfigRequest.struct_class = Types::DescribeIdentityProviderConfigRequest

    DescribeIdentityProviderConfigResponse.add_member(:identity_provider_config, Shapes::ShapeRef.new(shape: IdentityProviderConfigResponse, location_name: "identityProviderConfig"))
    DescribeIdentityProviderConfigResponse.struct_class = Types::DescribeIdentityProviderConfigResponse

    DescribeInsightRequest.add_member(:cluster_name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "name"))
    DescribeInsightRequest.add_member(:id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "id"))
    DescribeInsightRequest.struct_class = Types::DescribeInsightRequest

    DescribeInsightResponse.add_member(:insight, Shapes::ShapeRef.new(shape: Insight, location_name: "insight"))
    DescribeInsightResponse.struct_class = Types::DescribeInsightResponse

    DescribeInsightsRefreshRequest.add_member(:cluster_name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "name"))
    DescribeInsightsRefreshRequest.struct_class = Types::DescribeInsightsRefreshRequest

    DescribeInsightsRefreshResponse.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    DescribeInsightsRefreshResponse.add_member(:status, Shapes::ShapeRef.new(shape: InsightsRefreshStatus, location_name: "status"))
    DescribeInsightsRefreshResponse.add_member(:started_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "startedAt"))
    DescribeInsightsRefreshResponse.add_member(:ended_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "endedAt"))
    DescribeInsightsRefreshResponse.struct_class = Types::DescribeInsightsRefreshResponse

    DescribeNodegroupRequest.add_member(:cluster_name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "name"))
    DescribeNodegroupRequest.add_member(:nodegroup_name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "nodegroupName"))
    DescribeNodegroupRequest.struct_class = Types::DescribeNodegroupRequest

    DescribeNodegroupResponse.add_member(:nodegroup, Shapes::ShapeRef.new(shape: Nodegroup, location_name: "nodegroup"))
    DescribeNodegroupResponse.struct_class = Types::DescribeNodegroupResponse

    DescribePodIdentityAssociationRequest.add_member(:cluster_name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "name"))
    DescribePodIdentityAssociationRequest.add_member(:association_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "associationId"))
    DescribePodIdentityAssociationRequest.struct_class = Types::DescribePodIdentityAssociationRequest

    DescribePodIdentityAssociationResponse.add_member(:association, Shapes::ShapeRef.new(shape: PodIdentityAssociation, location_name: "association"))
    DescribePodIdentityAssociationResponse.struct_class = Types::DescribePodIdentityAssociationResponse

    DescribeUpdateRequest.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "name"))
    DescribeUpdateRequest.add_member(:update_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "updateId"))
    DescribeUpdateRequest.add_member(:nodegroup_name, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nodegroupName"))
    DescribeUpdateRequest.add_member(:addon_name, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "addonName"))
    DescribeUpdateRequest.struct_class = Types::DescribeUpdateRequest

    DescribeUpdateResponse.add_member(:update, Shapes::ShapeRef.new(shape: Update, location_name: "update"))
    DescribeUpdateResponse.struct_class = Types::DescribeUpdateResponse

    DisassociateAccessPolicyRequest.add_member(:cluster_name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "name"))
    DisassociateAccessPolicyRequest.add_member(:principal_arn, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "principalArn"))
    DisassociateAccessPolicyRequest.add_member(:policy_arn, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "policyArn"))
    DisassociateAccessPolicyRequest.struct_class = Types::DisassociateAccessPolicyRequest

    DisassociateAccessPolicyResponse.struct_class = Types::DisassociateAccessPolicyResponse

    DisassociateIdentityProviderConfigRequest.add_member(:cluster_name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "name"))
    DisassociateIdentityProviderConfigRequest.add_member(:identity_provider_config, Shapes::ShapeRef.new(shape: IdentityProviderConfig, required: true, location_name: "identityProviderConfig"))
    DisassociateIdentityProviderConfigRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: String, location_name: "clientRequestToken", metadata: {"idempotencyToken" => true}))
    DisassociateIdentityProviderConfigRequest.struct_class = Types::DisassociateIdentityProviderConfigRequest

    DisassociateIdentityProviderConfigResponse.add_member(:update, Shapes::ShapeRef.new(shape: Update, location_name: "update"))
    DisassociateIdentityProviderConfigResponse.struct_class = Types::DisassociateIdentityProviderConfigResponse

    EksAnywhereSubscription.add_member(:id, Shapes::ShapeRef.new(shape: String, location_name: "id"))
    EksAnywhereSubscription.add_member(:arn, Shapes::ShapeRef.new(shape: String, location_name: "arn"))
    EksAnywhereSubscription.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    EksAnywhereSubscription.add_member(:effective_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "effectiveDate"))
    EksAnywhereSubscription.add_member(:expiration_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "expirationDate"))
    EksAnywhereSubscription.add_member(:license_quantity, Shapes::ShapeRef.new(shape: Integer, location_name: "licenseQuantity"))
    EksAnywhereSubscription.add_member(:license_type, Shapes::ShapeRef.new(shape: EksAnywhereSubscriptionLicenseType, location_name: "licenseType"))
    EksAnywhereSubscription.add_member(:term, Shapes::ShapeRef.new(shape: EksAnywhereSubscriptionTerm, location_name: "term"))
    EksAnywhereSubscription.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "status"))
    EksAnywhereSubscription.add_member(:auto_renew, Shapes::ShapeRef.new(shape: Boolean, location_name: "autoRenew"))
    EksAnywhereSubscription.add_member(:license_arns, Shapes::ShapeRef.new(shape: StringList, location_name: "licenseArns"))
    EksAnywhereSubscription.add_member(:licenses, Shapes::ShapeRef.new(shape: LicenseList, location_name: "licenses"))
    EksAnywhereSubscription.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    EksAnywhereSubscription.struct_class = Types::EksAnywhereSubscription

    EksAnywhereSubscriptionList.member = Shapes::ShapeRef.new(shape: EksAnywhereSubscription)

    EksAnywhereSubscriptionStatusValues.member = Shapes::ShapeRef.new(shape: EksAnywhereSubscriptionStatus)

    EksAnywhereSubscriptionTerm.add_member(:duration, Shapes::ShapeRef.new(shape: Integer, location_name: "duration"))
    EksAnywhereSubscriptionTerm.add_member(:unit, Shapes::ShapeRef.new(shape: EksAnywhereSubscriptionTermUnit, location_name: "unit"))
    EksAnywhereSubscriptionTerm.struct_class = Types::EksAnywhereSubscriptionTerm

    ElasticLoadBalancing.add_member(:enabled, Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: "enabled"))
    ElasticLoadBalancing.struct_class = Types::ElasticLoadBalancing

    EncryptionConfig.add_member(:resources, Shapes::ShapeRef.new(shape: StringList, location_name: "resources"))
    EncryptionConfig.add_member(:provider, Shapes::ShapeRef.new(shape: Provider, location_name: "provider"))
    EncryptionConfig.struct_class = Types::EncryptionConfig

    EncryptionConfigList.member = Shapes::ShapeRef.new(shape: EncryptionConfig)

    ErrorDetail.add_member(:error_code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "errorCode"))
    ErrorDetail.add_member(:error_message, Shapes::ShapeRef.new(shape: String, location_name: "errorMessage"))
    ErrorDetail.add_member(:resource_ids, Shapes::ShapeRef.new(shape: StringList, location_name: "resourceIds"))
    ErrorDetail.struct_class = Types::ErrorDetail

    ErrorDetails.member = Shapes::ShapeRef.new(shape: ErrorDetail)

    FargateProfile.add_member(:fargate_profile_name, Shapes::ShapeRef.new(shape: String, location_name: "fargateProfileName"))
    FargateProfile.add_member(:fargate_profile_arn, Shapes::ShapeRef.new(shape: String, location_name: "fargateProfileArn"))
    FargateProfile.add_member(:cluster_name, Shapes::ShapeRef.new(shape: String, location_name: "clusterName"))
    FargateProfile.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    FargateProfile.add_member(:pod_execution_role_arn, Shapes::ShapeRef.new(shape: String, location_name: "podExecutionRoleArn"))
    FargateProfile.add_member(:subnets, Shapes::ShapeRef.new(shape: StringList, location_name: "subnets"))
    FargateProfile.add_member(:selectors, Shapes::ShapeRef.new(shape: FargateProfileSelectors, location_name: "selectors"))
    FargateProfile.add_member(:status, Shapes::ShapeRef.new(shape: FargateProfileStatus, location_name: "status"))
    FargateProfile.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    FargateProfile.add_member(:health, Shapes::ShapeRef.new(shape: FargateProfileHealth, location_name: "health"))
    FargateProfile.struct_class = Types::FargateProfile

    FargateProfileHealth.add_member(:issues, Shapes::ShapeRef.new(shape: FargateProfileIssueList, location_name: "issues"))
    FargateProfileHealth.struct_class = Types::FargateProfileHealth

    FargateProfileIssue.add_member(:code, Shapes::ShapeRef.new(shape: FargateProfileIssueCode, location_name: "code"))
    FargateProfileIssue.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    FargateProfileIssue.add_member(:resource_ids, Shapes::ShapeRef.new(shape: StringList, location_name: "resourceIds"))
    FargateProfileIssue.struct_class = Types::FargateProfileIssue

    FargateProfileIssueList.member = Shapes::ShapeRef.new(shape: FargateProfileIssue)

    FargateProfileLabel.key = Shapes::ShapeRef.new(shape: String)
    FargateProfileLabel.value = Shapes::ShapeRef.new(shape: String)

    FargateProfileSelector.add_member(:namespace, Shapes::ShapeRef.new(shape: String, location_name: "namespace"))
    FargateProfileSelector.add_member(:labels, Shapes::ShapeRef.new(shape: FargateProfileLabel, location_name: "labels"))
    FargateProfileSelector.struct_class = Types::FargateProfileSelector

    FargateProfileSelectors.member = Shapes::ShapeRef.new(shape: FargateProfileSelector)

    Identity.add_member(:oidc, Shapes::ShapeRef.new(shape: OIDC, location_name: "oidc"))
    Identity.struct_class = Types::Identity

    IdentityProviderConfig.add_member(:type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "type"))
    IdentityProviderConfig.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    IdentityProviderConfig.struct_class = Types::IdentityProviderConfig

    IdentityProviderConfigResponse.add_member(:oidc, Shapes::ShapeRef.new(shape: OidcIdentityProviderConfig, location_name: "oidc"))
    IdentityProviderConfigResponse.struct_class = Types::IdentityProviderConfigResponse

    IdentityProviderConfigs.member = Shapes::ShapeRef.new(shape: IdentityProviderConfig)

    IncludeClustersList.member = Shapes::ShapeRef.new(shape: String)

    Insight.add_member(:id, Shapes::ShapeRef.new(shape: String, location_name: "id"))
    Insight.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    Insight.add_member(:category, Shapes::ShapeRef.new(shape: Category, location_name: "category"))
    Insight.add_member(:kubernetes_version, Shapes::ShapeRef.new(shape: String, location_name: "kubernetesVersion"))
    Insight.add_member(:last_refresh_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastRefreshTime"))
    Insight.add_member(:last_transition_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastTransitionTime"))
    Insight.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    Insight.add_member(:insight_status, Shapes::ShapeRef.new(shape: InsightStatus, location_name: "insightStatus"))
    Insight.add_member(:recommendation, Shapes::ShapeRef.new(shape: String, location_name: "recommendation"))
    Insight.add_member(:additional_info, Shapes::ShapeRef.new(shape: AdditionalInfoMap, location_name: "additionalInfo"))
    Insight.add_member(:resources, Shapes::ShapeRef.new(shape: InsightResourceDetails, location_name: "resources"))
    Insight.add_member(:category_specific_summary, Shapes::ShapeRef.new(shape: InsightCategorySpecificSummary, location_name: "categorySpecificSummary"))
    Insight.struct_class = Types::Insight

    InsightCategorySpecificSummary.add_member(:deprecation_details, Shapes::ShapeRef.new(shape: DeprecationDetails, location_name: "deprecationDetails"))
    InsightCategorySpecificSummary.add_member(:addon_compatibility_details, Shapes::ShapeRef.new(shape: AddonCompatibilityDetails, location_name: "addonCompatibilityDetails"))
    InsightCategorySpecificSummary.struct_class = Types::InsightCategorySpecificSummary

    InsightResourceDetail.add_member(:insight_status, Shapes::ShapeRef.new(shape: InsightStatus, location_name: "insightStatus"))
    InsightResourceDetail.add_member(:kubernetes_resource_uri, Shapes::ShapeRef.new(shape: String, location_name: "kubernetesResourceUri"))
    InsightResourceDetail.add_member(:arn, Shapes::ShapeRef.new(shape: String, location_name: "arn"))
    InsightResourceDetail.struct_class = Types::InsightResourceDetail

    InsightResourceDetails.member = Shapes::ShapeRef.new(shape: InsightResourceDetail)

    InsightStatus.add_member(:status, Shapes::ShapeRef.new(shape: InsightStatusValue, location_name: "status"))
    InsightStatus.add_member(:reason, Shapes::ShapeRef.new(shape: String, location_name: "reason"))
    InsightStatus.struct_class = Types::InsightStatus

    InsightStatusValueList.member = Shapes::ShapeRef.new(shape: InsightStatusValue)

    InsightSummaries.member = Shapes::ShapeRef.new(shape: InsightSummary)

    InsightSummary.add_member(:id, Shapes::ShapeRef.new(shape: String, location_name: "id"))
    InsightSummary.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    InsightSummary.add_member(:category, Shapes::ShapeRef.new(shape: Category, location_name: "category"))
    InsightSummary.add_member(:kubernetes_version, Shapes::ShapeRef.new(shape: String, location_name: "kubernetesVersion"))
    InsightSummary.add_member(:last_refresh_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastRefreshTime"))
    InsightSummary.add_member(:last_transition_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastTransitionTime"))
    InsightSummary.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    InsightSummary.add_member(:insight_status, Shapes::ShapeRef.new(shape: InsightStatus, location_name: "insightStatus"))
    InsightSummary.struct_class = Types::InsightSummary

    InsightsFilter.add_member(:categories, Shapes::ShapeRef.new(shape: CategoryList, location_name: "categories"))
    InsightsFilter.add_member(:kubernetes_versions, Shapes::ShapeRef.new(shape: StringList, location_name: "kubernetesVersions"))
    InsightsFilter.add_member(:statuses, Shapes::ShapeRef.new(shape: InsightStatusValueList, location_name: "statuses"))
    InsightsFilter.struct_class = Types::InsightsFilter

    InvalidParameterException.add_member(:cluster_name, Shapes::ShapeRef.new(shape: String, location_name: "clusterName"))
    InvalidParameterException.add_member(:nodegroup_name, Shapes::ShapeRef.new(shape: String, location_name: "nodegroupName"))
    InvalidParameterException.add_member(:fargate_profile_name, Shapes::ShapeRef.new(shape: String, location_name: "fargateProfileName"))
    InvalidParameterException.add_member(:addon_name, Shapes::ShapeRef.new(shape: String, location_name: "addonName"))
    InvalidParameterException.add_member(:subscription_id, Shapes::ShapeRef.new(shape: String, location_name: "subscriptionId"))
    InvalidParameterException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    InvalidParameterException.struct_class = Types::InvalidParameterException

    InvalidRequestException.add_member(:cluster_name, Shapes::ShapeRef.new(shape: String, location_name: "clusterName"))
    InvalidRequestException.add_member(:nodegroup_name, Shapes::ShapeRef.new(shape: String, location_name: "nodegroupName"))
    InvalidRequestException.add_member(:addon_name, Shapes::ShapeRef.new(shape: String, location_name: "addonName"))
    InvalidRequestException.add_member(:subscription_id, Shapes::ShapeRef.new(shape: String, location_name: "subscriptionId"))
    InvalidRequestException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    InvalidRequestException.struct_class = Types::InvalidRequestException

    InvalidStateException.add_member(:cluster_name, Shapes::ShapeRef.new(shape: String, location_name: "clusterName"))
    InvalidStateException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    InvalidStateException.struct_class = Types::InvalidStateException

    Issue.add_member(:code, Shapes::ShapeRef.new(shape: NodegroupIssueCode, location_name: "code"))
    Issue.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    Issue.add_member(:resource_ids, Shapes::ShapeRef.new(shape: StringList, location_name: "resourceIds"))
    Issue.struct_class = Types::Issue

    IssueList.member = Shapes::ShapeRef.new(shape: Issue)

    KubernetesNetworkConfigRequest.add_member(:service_ipv_4_cidr, Shapes::ShapeRef.new(shape: String, location_name: "serviceIpv4Cidr"))
    KubernetesNetworkConfigRequest.add_member(:ip_family, Shapes::ShapeRef.new(shape: IpFamily, location_name: "ipFamily"))
    KubernetesNetworkConfigRequest.add_member(:elastic_load_balancing, Shapes::ShapeRef.new(shape: ElasticLoadBalancing, location_name: "elasticLoadBalancing"))
    KubernetesNetworkConfigRequest.struct_class = Types::KubernetesNetworkConfigRequest

    KubernetesNetworkConfigResponse.add_member(:service_ipv_4_cidr, Shapes::ShapeRef.new(shape: String, location_name: "serviceIpv4Cidr"))
    KubernetesNetworkConfigResponse.add_member(:service_ipv_6_cidr, Shapes::ShapeRef.new(shape: String, location_name: "serviceIpv6Cidr"))
    KubernetesNetworkConfigResponse.add_member(:ip_family, Shapes::ShapeRef.new(shape: IpFamily, location_name: "ipFamily"))
    KubernetesNetworkConfigResponse.add_member(:elastic_load_balancing, Shapes::ShapeRef.new(shape: ElasticLoadBalancing, location_name: "elasticLoadBalancing"))
    KubernetesNetworkConfigResponse.struct_class = Types::KubernetesNetworkConfigResponse

    LaunchTemplateSpecification.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    LaunchTemplateSpecification.add_member(:version, Shapes::ShapeRef.new(shape: String, location_name: "version"))
    LaunchTemplateSpecification.add_member(:id, Shapes::ShapeRef.new(shape: String, location_name: "id"))
    LaunchTemplateSpecification.struct_class = Types::LaunchTemplateSpecification

    License.add_member(:id, Shapes::ShapeRef.new(shape: String, location_name: "id"))
    License.add_member(:token, Shapes::ShapeRef.new(shape: String, location_name: "token"))
    License.struct_class = Types::License

    LicenseList.member = Shapes::ShapeRef.new(shape: License)

    ListAccessEntriesRequest.add_member(:cluster_name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "name"))
    ListAccessEntriesRequest.add_member(:associated_policy_arn, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "associatedPolicyArn"))
    ListAccessEntriesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListAccessEntriesRequestMaxResults, location: "querystring", location_name: "maxResults"))
    ListAccessEntriesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListAccessEntriesRequest.struct_class = Types::ListAccessEntriesRequest

    ListAccessEntriesResponse.add_member(:access_entries, Shapes::ShapeRef.new(shape: StringList, location_name: "accessEntries"))
    ListAccessEntriesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListAccessEntriesResponse.struct_class = Types::ListAccessEntriesResponse

    ListAccessPoliciesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListAccessPoliciesRequestMaxResults, location: "querystring", location_name: "maxResults"))
    ListAccessPoliciesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListAccessPoliciesRequest.struct_class = Types::ListAccessPoliciesRequest

    ListAccessPoliciesResponse.add_member(:access_policies, Shapes::ShapeRef.new(shape: AccessPoliciesList, location_name: "accessPolicies"))
    ListAccessPoliciesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListAccessPoliciesResponse.struct_class = Types::ListAccessPoliciesResponse

    ListAddonsRequest.add_member(:cluster_name, Shapes::ShapeRef.new(shape: ClusterName, required: true, location: "uri", location_name: "name"))
    ListAddonsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListAddonsRequestMaxResults, location: "querystring", location_name: "maxResults"))
    ListAddonsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListAddonsRequest.struct_class = Types::ListAddonsRequest

    ListAddonsResponse.add_member(:addons, Shapes::ShapeRef.new(shape: StringList, location_name: "addons"))
    ListAddonsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListAddonsResponse.struct_class = Types::ListAddonsResponse

    ListAssociatedAccessPoliciesRequest.add_member(:cluster_name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "name"))
    ListAssociatedAccessPoliciesRequest.add_member(:principal_arn, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "principalArn"))
    ListAssociatedAccessPoliciesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListAssociatedAccessPoliciesRequestMaxResults, location: "querystring", location_name: "maxResults"))
    ListAssociatedAccessPoliciesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListAssociatedAccessPoliciesRequest.struct_class = Types::ListAssociatedAccessPoliciesRequest

    ListAssociatedAccessPoliciesResponse.add_member(:cluster_name, Shapes::ShapeRef.new(shape: String, location_name: "clusterName"))
    ListAssociatedAccessPoliciesResponse.add_member(:principal_arn, Shapes::ShapeRef.new(shape: String, location_name: "principalArn"))
    ListAssociatedAccessPoliciesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListAssociatedAccessPoliciesResponse.add_member(:associated_access_policies, Shapes::ShapeRef.new(shape: AssociatedAccessPoliciesList, location_name: "associatedAccessPolicies"))
    ListAssociatedAccessPoliciesResponse.struct_class = Types::ListAssociatedAccessPoliciesResponse

    ListClustersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListClustersRequestMaxResults, location: "querystring", location_name: "maxResults"))
    ListClustersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListClustersRequest.add_member(:include, Shapes::ShapeRef.new(shape: IncludeClustersList, location: "querystring", location_name: "include"))
    ListClustersRequest.struct_class = Types::ListClustersRequest

    ListClustersResponse.add_member(:clusters, Shapes::ShapeRef.new(shape: StringList, location_name: "clusters"))
    ListClustersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListClustersResponse.struct_class = Types::ListClustersResponse

    ListEksAnywhereSubscriptionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListEksAnywhereSubscriptionsRequestMaxResults, location: "querystring", location_name: "maxResults"))
    ListEksAnywhereSubscriptionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListEksAnywhereSubscriptionsRequest.add_member(:include_status, Shapes::ShapeRef.new(shape: EksAnywhereSubscriptionStatusValues, location: "querystring", location_name: "includeStatus"))
    ListEksAnywhereSubscriptionsRequest.struct_class = Types::ListEksAnywhereSubscriptionsRequest

    ListEksAnywhereSubscriptionsResponse.add_member(:subscriptions, Shapes::ShapeRef.new(shape: EksAnywhereSubscriptionList, location_name: "subscriptions"))
    ListEksAnywhereSubscriptionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListEksAnywhereSubscriptionsResponse.struct_class = Types::ListEksAnywhereSubscriptionsResponse

    ListFargateProfilesRequest.add_member(:cluster_name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "name"))
    ListFargateProfilesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: FargateProfilesRequestMaxResults, location: "querystring", location_name: "maxResults"))
    ListFargateProfilesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListFargateProfilesRequest.struct_class = Types::ListFargateProfilesRequest

    ListFargateProfilesResponse.add_member(:fargate_profile_names, Shapes::ShapeRef.new(shape: StringList, location_name: "fargateProfileNames"))
    ListFargateProfilesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListFargateProfilesResponse.struct_class = Types::ListFargateProfilesResponse

    ListIdentityProviderConfigsRequest.add_member(:cluster_name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "name"))
    ListIdentityProviderConfigsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListIdentityProviderConfigsRequestMaxResults, location: "querystring", location_name: "maxResults"))
    ListIdentityProviderConfigsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListIdentityProviderConfigsRequest.struct_class = Types::ListIdentityProviderConfigsRequest

    ListIdentityProviderConfigsResponse.add_member(:identity_provider_configs, Shapes::ShapeRef.new(shape: IdentityProviderConfigs, location_name: "identityProviderConfigs"))
    ListIdentityProviderConfigsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListIdentityProviderConfigsResponse.struct_class = Types::ListIdentityProviderConfigsResponse

    ListInsightsRequest.add_member(:cluster_name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "name"))
    ListInsightsRequest.add_member(:filter, Shapes::ShapeRef.new(shape: InsightsFilter, location_name: "filter"))
    ListInsightsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListInsightsMaxResults, location_name: "maxResults"))
    ListInsightsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListInsightsRequest.struct_class = Types::ListInsightsRequest

    ListInsightsResponse.add_member(:insights, Shapes::ShapeRef.new(shape: InsightSummaries, location_name: "insights"))
    ListInsightsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListInsightsResponse.struct_class = Types::ListInsightsResponse

    ListNodegroupsRequest.add_member(:cluster_name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "name"))
    ListNodegroupsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListNodegroupsRequestMaxResults, location: "querystring", location_name: "maxResults"))
    ListNodegroupsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListNodegroupsRequest.struct_class = Types::ListNodegroupsRequest

    ListNodegroupsResponse.add_member(:nodegroups, Shapes::ShapeRef.new(shape: StringList, location_name: "nodegroups"))
    ListNodegroupsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListNodegroupsResponse.struct_class = Types::ListNodegroupsResponse

    ListPodIdentityAssociationsRequest.add_member(:cluster_name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "name"))
    ListPodIdentityAssociationsRequest.add_member(:namespace, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "namespace"))
    ListPodIdentityAssociationsRequest.add_member(:service_account, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "serviceAccount"))
    ListPodIdentityAssociationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListPodIdentityAssociationsMaxResults, location: "querystring", location_name: "maxResults"))
    ListPodIdentityAssociationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListPodIdentityAssociationsRequest.struct_class = Types::ListPodIdentityAssociationsRequest

    ListPodIdentityAssociationsResponse.add_member(:associations, Shapes::ShapeRef.new(shape: PodIdentityAssociationSummaries, location_name: "associations"))
    ListPodIdentityAssociationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListPodIdentityAssociationsResponse.struct_class = Types::ListPodIdentityAssociationsResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    ListUpdatesRequest.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "name"))
    ListUpdatesRequest.add_member(:nodegroup_name, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nodegroupName"))
    ListUpdatesRequest.add_member(:addon_name, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "addonName"))
    ListUpdatesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListUpdatesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListUpdatesRequestMaxResults, location: "querystring", location_name: "maxResults"))
    ListUpdatesRequest.struct_class = Types::ListUpdatesRequest

    ListUpdatesResponse.add_member(:update_ids, Shapes::ShapeRef.new(shape: StringList, location_name: "updateIds"))
    ListUpdatesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListUpdatesResponse.struct_class = Types::ListUpdatesResponse

    LogSetup.add_member(:types, Shapes::ShapeRef.new(shape: LogTypes, location_name: "types"))
    LogSetup.add_member(:enabled, Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: "enabled"))
    LogSetup.struct_class = Types::LogSetup

    LogSetups.member = Shapes::ShapeRef.new(shape: LogSetup)

    LogTypes.member = Shapes::ShapeRef.new(shape: LogType)

    Logging.add_member(:cluster_logging, Shapes::ShapeRef.new(shape: LogSetups, location_name: "clusterLogging"))
    Logging.struct_class = Types::Logging

    MarketplaceInformation.add_member(:product_id, Shapes::ShapeRef.new(shape: String, location_name: "productId"))
    MarketplaceInformation.add_member(:product_url, Shapes::ShapeRef.new(shape: String, location_name: "productUrl"))
    MarketplaceInformation.struct_class = Types::MarketplaceInformation

    NodeRepairConfig.add_member(:enabled, Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: "enabled"))
    NodeRepairConfig.add_member(:max_unhealthy_node_threshold_count, Shapes::ShapeRef.new(shape: NonZeroInteger, location_name: "maxUnhealthyNodeThresholdCount"))
    NodeRepairConfig.add_member(:max_unhealthy_node_threshold_percentage, Shapes::ShapeRef.new(shape: PercentCapacity, location_name: "maxUnhealthyNodeThresholdPercentage"))
    NodeRepairConfig.add_member(:max_parallel_nodes_repaired_count, Shapes::ShapeRef.new(shape: NonZeroInteger, location_name: "maxParallelNodesRepairedCount"))
    NodeRepairConfig.add_member(:max_parallel_nodes_repaired_percentage, Shapes::ShapeRef.new(shape: PercentCapacity, location_name: "maxParallelNodesRepairedPercentage"))
    NodeRepairConfig.add_member(:node_repair_config_overrides, Shapes::ShapeRef.new(shape: NodeRepairConfigOverridesList, location_name: "nodeRepairConfigOverrides"))
    NodeRepairConfig.struct_class = Types::NodeRepairConfig

    NodeRepairConfigOverrides.add_member(:node_monitoring_condition, Shapes::ShapeRef.new(shape: String, location_name: "nodeMonitoringCondition"))
    NodeRepairConfigOverrides.add_member(:node_unhealthy_reason, Shapes::ShapeRef.new(shape: String, location_name: "nodeUnhealthyReason"))
    NodeRepairConfigOverrides.add_member(:min_repair_wait_time_mins, Shapes::ShapeRef.new(shape: NonZeroInteger, location_name: "minRepairWaitTimeMins"))
    NodeRepairConfigOverrides.add_member(:repair_action, Shapes::ShapeRef.new(shape: RepairAction, location_name: "repairAction"))
    NodeRepairConfigOverrides.struct_class = Types::NodeRepairConfigOverrides

    NodeRepairConfigOverridesList.member = Shapes::ShapeRef.new(shape: NodeRepairConfigOverrides)

    Nodegroup.add_member(:nodegroup_name, Shapes::ShapeRef.new(shape: String, location_name: "nodegroupName"))
    Nodegroup.add_member(:nodegroup_arn, Shapes::ShapeRef.new(shape: String, location_name: "nodegroupArn"))
    Nodegroup.add_member(:cluster_name, Shapes::ShapeRef.new(shape: String, location_name: "clusterName"))
    Nodegroup.add_member(:version, Shapes::ShapeRef.new(shape: String, location_name: "version"))
    Nodegroup.add_member(:release_version, Shapes::ShapeRef.new(shape: String, location_name: "releaseVersion"))
    Nodegroup.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    Nodegroup.add_member(:modified_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "modifiedAt"))
    Nodegroup.add_member(:status, Shapes::ShapeRef.new(shape: NodegroupStatus, location_name: "status"))
    Nodegroup.add_member(:capacity_type, Shapes::ShapeRef.new(shape: CapacityTypes, location_name: "capacityType"))
    Nodegroup.add_member(:scaling_config, Shapes::ShapeRef.new(shape: NodegroupScalingConfig, location_name: "scalingConfig"))
    Nodegroup.add_member(:instance_types, Shapes::ShapeRef.new(shape: StringList, location_name: "instanceTypes"))
    Nodegroup.add_member(:subnets, Shapes::ShapeRef.new(shape: StringList, location_name: "subnets"))
    Nodegroup.add_member(:remote_access, Shapes::ShapeRef.new(shape: RemoteAccessConfig, location_name: "remoteAccess"))
    Nodegroup.add_member(:ami_type, Shapes::ShapeRef.new(shape: AMITypes, location_name: "amiType"))
    Nodegroup.add_member(:node_role, Shapes::ShapeRef.new(shape: String, location_name: "nodeRole"))
    Nodegroup.add_member(:labels, Shapes::ShapeRef.new(shape: labelsMap, location_name: "labels"))
    Nodegroup.add_member(:taints, Shapes::ShapeRef.new(shape: taintsList, location_name: "taints"))
    Nodegroup.add_member(:resources, Shapes::ShapeRef.new(shape: NodegroupResources, location_name: "resources"))
    Nodegroup.add_member(:disk_size, Shapes::ShapeRef.new(shape: BoxedInteger, location_name: "diskSize"))
    Nodegroup.add_member(:health, Shapes::ShapeRef.new(shape: NodegroupHealth, location_name: "health"))
    Nodegroup.add_member(:update_config, Shapes::ShapeRef.new(shape: NodegroupUpdateConfig, location_name: "updateConfig"))
    Nodegroup.add_member(:node_repair_config, Shapes::ShapeRef.new(shape: NodeRepairConfig, location_name: "nodeRepairConfig"))
    Nodegroup.add_member(:launch_template, Shapes::ShapeRef.new(shape: LaunchTemplateSpecification, location_name: "launchTemplate"))
    Nodegroup.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    Nodegroup.struct_class = Types::Nodegroup

    NodegroupHealth.add_member(:issues, Shapes::ShapeRef.new(shape: IssueList, location_name: "issues"))
    NodegroupHealth.struct_class = Types::NodegroupHealth

    NodegroupResources.add_member(:auto_scaling_groups, Shapes::ShapeRef.new(shape: AutoScalingGroupList, location_name: "autoScalingGroups"))
    NodegroupResources.add_member(:remote_access_security_group, Shapes::ShapeRef.new(shape: String, location_name: "remoteAccessSecurityGroup"))
    NodegroupResources.struct_class = Types::NodegroupResources

    NodegroupScalingConfig.add_member(:min_size, Shapes::ShapeRef.new(shape: ZeroCapacity, location_name: "minSize"))
    NodegroupScalingConfig.add_member(:max_size, Shapes::ShapeRef.new(shape: Capacity, location_name: "maxSize"))
    NodegroupScalingConfig.add_member(:desired_size, Shapes::ShapeRef.new(shape: ZeroCapacity, location_name: "desiredSize"))
    NodegroupScalingConfig.struct_class = Types::NodegroupScalingConfig

    NodegroupUpdateConfig.add_member(:max_unavailable, Shapes::ShapeRef.new(shape: NonZeroInteger, location_name: "maxUnavailable"))
    NodegroupUpdateConfig.add_member(:max_unavailable_percentage, Shapes::ShapeRef.new(shape: PercentCapacity, location_name: "maxUnavailablePercentage"))
    NodegroupUpdateConfig.add_member(:update_strategy, Shapes::ShapeRef.new(shape: NodegroupUpdateStrategies, location_name: "updateStrategy"))
    NodegroupUpdateConfig.struct_class = Types::NodegroupUpdateConfig

    NotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    NotFoundException.struct_class = Types::NotFoundException

    OIDC.add_member(:issuer, Shapes::ShapeRef.new(shape: String, location_name: "issuer"))
    OIDC.struct_class = Types::OIDC

    OidcIdentityProviderConfig.add_member(:identity_provider_config_name, Shapes::ShapeRef.new(shape: String, location_name: "identityProviderConfigName"))
    OidcIdentityProviderConfig.add_member(:identity_provider_config_arn, Shapes::ShapeRef.new(shape: String, location_name: "identityProviderConfigArn"))
    OidcIdentityProviderConfig.add_member(:cluster_name, Shapes::ShapeRef.new(shape: String, location_name: "clusterName"))
    OidcIdentityProviderConfig.add_member(:issuer_url, Shapes::ShapeRef.new(shape: String, location_name: "issuerUrl"))
    OidcIdentityProviderConfig.add_member(:client_id, Shapes::ShapeRef.new(shape: String, location_name: "clientId"))
    OidcIdentityProviderConfig.add_member(:username_claim, Shapes::ShapeRef.new(shape: String, location_name: "usernameClaim"))
    OidcIdentityProviderConfig.add_member(:username_prefix, Shapes::ShapeRef.new(shape: String, location_name: "usernamePrefix"))
    OidcIdentityProviderConfig.add_member(:groups_claim, Shapes::ShapeRef.new(shape: String, location_name: "groupsClaim"))
    OidcIdentityProviderConfig.add_member(:groups_prefix, Shapes::ShapeRef.new(shape: String, location_name: "groupsPrefix"))
    OidcIdentityProviderConfig.add_member(:required_claims, Shapes::ShapeRef.new(shape: requiredClaimsMap, location_name: "requiredClaims"))
    OidcIdentityProviderConfig.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    OidcIdentityProviderConfig.add_member(:status, Shapes::ShapeRef.new(shape: configStatus, location_name: "status"))
    OidcIdentityProviderConfig.struct_class = Types::OidcIdentityProviderConfig

    OidcIdentityProviderConfigRequest.add_member(:identity_provider_config_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "identityProviderConfigName"))
    OidcIdentityProviderConfigRequest.add_member(:issuer_url, Shapes::ShapeRef.new(shape: String, required: true, location_name: "issuerUrl"))
    OidcIdentityProviderConfigRequest.add_member(:client_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "clientId"))
    OidcIdentityProviderConfigRequest.add_member(:username_claim, Shapes::ShapeRef.new(shape: String, location_name: "usernameClaim"))
    OidcIdentityProviderConfigRequest.add_member(:username_prefix, Shapes::ShapeRef.new(shape: String, location_name: "usernamePrefix"))
    OidcIdentityProviderConfigRequest.add_member(:groups_claim, Shapes::ShapeRef.new(shape: String, location_name: "groupsClaim"))
    OidcIdentityProviderConfigRequest.add_member(:groups_prefix, Shapes::ShapeRef.new(shape: String, location_name: "groupsPrefix"))
    OidcIdentityProviderConfigRequest.add_member(:required_claims, Shapes::ShapeRef.new(shape: requiredClaimsMap, location_name: "requiredClaims"))
    OidcIdentityProviderConfigRequest.struct_class = Types::OidcIdentityProviderConfigRequest

    OutpostConfigRequest.add_member(:outpost_arns, Shapes::ShapeRef.new(shape: StringList, required: true, location_name: "outpostArns"))
    OutpostConfigRequest.add_member(:control_plane_instance_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "controlPlaneInstanceType"))
    OutpostConfigRequest.add_member(:control_plane_placement, Shapes::ShapeRef.new(shape: ControlPlanePlacementRequest, location_name: "controlPlanePlacement"))
    OutpostConfigRequest.struct_class = Types::OutpostConfigRequest

    OutpostConfigResponse.add_member(:outpost_arns, Shapes::ShapeRef.new(shape: StringList, required: true, location_name: "outpostArns"))
    OutpostConfigResponse.add_member(:control_plane_instance_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "controlPlaneInstanceType"))
    OutpostConfigResponse.add_member(:control_plane_placement, Shapes::ShapeRef.new(shape: ControlPlanePlacementResponse, location_name: "controlPlanePlacement"))
    OutpostConfigResponse.struct_class = Types::OutpostConfigResponse

    PodIdentityAssociation.add_member(:cluster_name, Shapes::ShapeRef.new(shape: String, location_name: "clusterName"))
    PodIdentityAssociation.add_member(:namespace, Shapes::ShapeRef.new(shape: String, location_name: "namespace"))
    PodIdentityAssociation.add_member(:service_account, Shapes::ShapeRef.new(shape: String, location_name: "serviceAccount"))
    PodIdentityAssociation.add_member(:role_arn, Shapes::ShapeRef.new(shape: String, location_name: "roleArn"))
    PodIdentityAssociation.add_member(:association_arn, Shapes::ShapeRef.new(shape: String, location_name: "associationArn"))
    PodIdentityAssociation.add_member(:association_id, Shapes::ShapeRef.new(shape: String, location_name: "associationId"))
    PodIdentityAssociation.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    PodIdentityAssociation.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    PodIdentityAssociation.add_member(:modified_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "modifiedAt"))
    PodIdentityAssociation.add_member(:owner_arn, Shapes::ShapeRef.new(shape: String, location_name: "ownerArn"))
    PodIdentityAssociation.add_member(:disable_session_tags, Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: "disableSessionTags"))
    PodIdentityAssociation.add_member(:target_role_arn, Shapes::ShapeRef.new(shape: String, location_name: "targetRoleArn"))
    PodIdentityAssociation.add_member(:external_id, Shapes::ShapeRef.new(shape: String, location_name: "externalId"))
    PodIdentityAssociation.struct_class = Types::PodIdentityAssociation

    PodIdentityAssociationSummaries.member = Shapes::ShapeRef.new(shape: PodIdentityAssociationSummary)

    PodIdentityAssociationSummary.add_member(:cluster_name, Shapes::ShapeRef.new(shape: String, location_name: "clusterName"))
    PodIdentityAssociationSummary.add_member(:namespace, Shapes::ShapeRef.new(shape: String, location_name: "namespace"))
    PodIdentityAssociationSummary.add_member(:service_account, Shapes::ShapeRef.new(shape: String, location_name: "serviceAccount"))
    PodIdentityAssociationSummary.add_member(:association_arn, Shapes::ShapeRef.new(shape: String, location_name: "associationArn"))
    PodIdentityAssociationSummary.add_member(:association_id, Shapes::ShapeRef.new(shape: String, location_name: "associationId"))
    PodIdentityAssociationSummary.add_member(:owner_arn, Shapes::ShapeRef.new(shape: String, location_name: "ownerArn"))
    PodIdentityAssociationSummary.struct_class = Types::PodIdentityAssociationSummary

    Provider.add_member(:key_arn, Shapes::ShapeRef.new(shape: String, location_name: "keyArn"))
    Provider.struct_class = Types::Provider

    RegisterClusterRequest.add_member(:name, Shapes::ShapeRef.new(shape: ClusterName, required: true, location_name: "name"))
    RegisterClusterRequest.add_member(:connector_config, Shapes::ShapeRef.new(shape: ConnectorConfigRequest, required: true, location_name: "connectorConfig"))
    RegisterClusterRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: String, location_name: "clientRequestToken", metadata: {"idempotencyToken" => true}))
    RegisterClusterRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    RegisterClusterRequest.struct_class = Types::RegisterClusterRequest

    RegisterClusterResponse.add_member(:cluster, Shapes::ShapeRef.new(shape: Cluster, location_name: "cluster"))
    RegisterClusterResponse.struct_class = Types::RegisterClusterResponse

    RemoteAccessConfig.add_member(:ec2_ssh_key, Shapes::ShapeRef.new(shape: String, location_name: "ec2SshKey"))
    RemoteAccessConfig.add_member(:source_security_groups, Shapes::ShapeRef.new(shape: StringList, location_name: "sourceSecurityGroups"))
    RemoteAccessConfig.struct_class = Types::RemoteAccessConfig

    RemoteNetworkConfigRequest.add_member(:remote_node_networks, Shapes::ShapeRef.new(shape: RemoteNodeNetworkList, location_name: "remoteNodeNetworks"))
    RemoteNetworkConfigRequest.add_member(:remote_pod_networks, Shapes::ShapeRef.new(shape: RemotePodNetworkList, location_name: "remotePodNetworks"))
    RemoteNetworkConfigRequest.struct_class = Types::RemoteNetworkConfigRequest

    RemoteNetworkConfigResponse.add_member(:remote_node_networks, Shapes::ShapeRef.new(shape: RemoteNodeNetworkList, location_name: "remoteNodeNetworks"))
    RemoteNetworkConfigResponse.add_member(:remote_pod_networks, Shapes::ShapeRef.new(shape: RemotePodNetworkList, location_name: "remotePodNetworks"))
    RemoteNetworkConfigResponse.struct_class = Types::RemoteNetworkConfigResponse

    RemoteNodeNetwork.add_member(:cidrs, Shapes::ShapeRef.new(shape: StringList, location_name: "cidrs"))
    RemoteNodeNetwork.struct_class = Types::RemoteNodeNetwork

    RemoteNodeNetworkList.member = Shapes::ShapeRef.new(shape: RemoteNodeNetwork)

    RemotePodNetwork.add_member(:cidrs, Shapes::ShapeRef.new(shape: StringList, location_name: "cidrs"))
    RemotePodNetwork.struct_class = Types::RemotePodNetwork

    RemotePodNetworkList.member = Shapes::ShapeRef.new(shape: RemotePodNetwork)

    ResourceInUseException.add_member(:cluster_name, Shapes::ShapeRef.new(shape: String, location_name: "clusterName"))
    ResourceInUseException.add_member(:nodegroup_name, Shapes::ShapeRef.new(shape: String, location_name: "nodegroupName"))
    ResourceInUseException.add_member(:addon_name, Shapes::ShapeRef.new(shape: String, location_name: "addonName"))
    ResourceInUseException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ResourceInUseException.struct_class = Types::ResourceInUseException

    ResourceLimitExceededException.add_member(:cluster_name, Shapes::ShapeRef.new(shape: String, location_name: "clusterName"))
    ResourceLimitExceededException.add_member(:nodegroup_name, Shapes::ShapeRef.new(shape: String, location_name: "nodegroupName"))
    ResourceLimitExceededException.add_member(:subscription_id, Shapes::ShapeRef.new(shape: String, location_name: "subscriptionId"))
    ResourceLimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ResourceLimitExceededException.struct_class = Types::ResourceLimitExceededException

    ResourceNotFoundException.add_member(:cluster_name, Shapes::ShapeRef.new(shape: String, location_name: "clusterName"))
    ResourceNotFoundException.add_member(:nodegroup_name, Shapes::ShapeRef.new(shape: String, location_name: "nodegroupName"))
    ResourceNotFoundException.add_member(:fargate_profile_name, Shapes::ShapeRef.new(shape: String, location_name: "fargateProfileName"))
    ResourceNotFoundException.add_member(:addon_name, Shapes::ShapeRef.new(shape: String, location_name: "addonName"))
    ResourceNotFoundException.add_member(:subscription_id, Shapes::ShapeRef.new(shape: String, location_name: "subscriptionId"))
    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ResourcePropagationDelayException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ResourcePropagationDelayException.struct_class = Types::ResourcePropagationDelayException

    ServerException.add_member(:cluster_name, Shapes::ShapeRef.new(shape: String, location_name: "clusterName"))
    ServerException.add_member(:nodegroup_name, Shapes::ShapeRef.new(shape: String, location_name: "nodegroupName"))
    ServerException.add_member(:addon_name, Shapes::ShapeRef.new(shape: String, location_name: "addonName"))
    ServerException.add_member(:subscription_id, Shapes::ShapeRef.new(shape: String, location_name: "subscriptionId"))
    ServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ServerException.struct_class = Types::ServerException

    ServiceUnavailableException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ServiceUnavailableException.struct_class = Types::ServiceUnavailableException

    StartInsightsRefreshRequest.add_member(:cluster_name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "name"))
    StartInsightsRefreshRequest.struct_class = Types::StartInsightsRefreshRequest

    StartInsightsRefreshResponse.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    StartInsightsRefreshResponse.add_member(:status, Shapes::ShapeRef.new(shape: InsightsRefreshStatus, location_name: "status"))
    StartInsightsRefreshResponse.struct_class = Types::StartInsightsRefreshResponse

    StorageConfigRequest.add_member(:block_storage, Shapes::ShapeRef.new(shape: BlockStorage, location_name: "blockStorage"))
    StorageConfigRequest.struct_class = Types::StorageConfigRequest

    StorageConfigResponse.add_member(:block_storage, Shapes::ShapeRef.new(shape: BlockStorage, location_name: "blockStorage"))
    StorageConfigResponse.struct_class = Types::StorageConfigResponse

    StringList.member = Shapes::ShapeRef.new(shape: String)

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagMap.key = Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Shapes::ShapeRef.new(shape: TagValue)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    Taint.add_member(:key, Shapes::ShapeRef.new(shape: taintKey, location_name: "key"))
    Taint.add_member(:value, Shapes::ShapeRef.new(shape: taintValue, location_name: "value"))
    Taint.add_member(:effect, Shapes::ShapeRef.new(shape: TaintEffect, location_name: "effect"))
    Taint.struct_class = Types::Taint

    ThrottlingException.add_member(:cluster_name, Shapes::ShapeRef.new(shape: String, location_name: "clusterName"))
    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UnsupportedAvailabilityZoneException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    UnsupportedAvailabilityZoneException.add_member(:cluster_name, Shapes::ShapeRef.new(shape: String, location_name: "clusterName"))
    UnsupportedAvailabilityZoneException.add_member(:nodegroup_name, Shapes::ShapeRef.new(shape: String, location_name: "nodegroupName"))
    UnsupportedAvailabilityZoneException.add_member(:valid_zones, Shapes::ShapeRef.new(shape: StringList, location_name: "validZones"))
    UnsupportedAvailabilityZoneException.struct_class = Types::UnsupportedAvailabilityZoneException

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    Update.add_member(:id, Shapes::ShapeRef.new(shape: String, location_name: "id"))
    Update.add_member(:status, Shapes::ShapeRef.new(shape: UpdateStatus, location_name: "status"))
    Update.add_member(:type, Shapes::ShapeRef.new(shape: UpdateType, location_name: "type"))
    Update.add_member(:params, Shapes::ShapeRef.new(shape: UpdateParams, location_name: "params"))
    Update.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    Update.add_member(:errors, Shapes::ShapeRef.new(shape: ErrorDetails, location_name: "errors"))
    Update.struct_class = Types::Update

    UpdateAccessConfigRequest.add_member(:authentication_mode, Shapes::ShapeRef.new(shape: AuthenticationMode, location_name: "authenticationMode"))
    UpdateAccessConfigRequest.struct_class = Types::UpdateAccessConfigRequest

    UpdateAccessEntryRequest.add_member(:cluster_name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "name"))
    UpdateAccessEntryRequest.add_member(:principal_arn, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "principalArn"))
    UpdateAccessEntryRequest.add_member(:kubernetes_groups, Shapes::ShapeRef.new(shape: StringList, location_name: "kubernetesGroups"))
    UpdateAccessEntryRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: String, location_name: "clientRequestToken", metadata: {"idempotencyToken" => true}))
    UpdateAccessEntryRequest.add_member(:username, Shapes::ShapeRef.new(shape: String, location_name: "username"))
    UpdateAccessEntryRequest.struct_class = Types::UpdateAccessEntryRequest

    UpdateAccessEntryResponse.add_member(:access_entry, Shapes::ShapeRef.new(shape: AccessEntry, location_name: "accessEntry"))
    UpdateAccessEntryResponse.struct_class = Types::UpdateAccessEntryResponse

    UpdateAddonRequest.add_member(:cluster_name, Shapes::ShapeRef.new(shape: ClusterName, required: true, location: "uri", location_name: "name"))
    UpdateAddonRequest.add_member(:addon_name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "addonName"))
    UpdateAddonRequest.add_member(:addon_version, Shapes::ShapeRef.new(shape: String, location_name: "addonVersion"))
    UpdateAddonRequest.add_member(:service_account_role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "serviceAccountRoleArn"))
    UpdateAddonRequest.add_member(:resolve_conflicts, Shapes::ShapeRef.new(shape: ResolveConflicts, location_name: "resolveConflicts"))
    UpdateAddonRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: String, location_name: "clientRequestToken", metadata: {"idempotencyToken" => true}))
    UpdateAddonRequest.add_member(:configuration_values, Shapes::ShapeRef.new(shape: String, location_name: "configurationValues"))
    UpdateAddonRequest.add_member(:pod_identity_associations, Shapes::ShapeRef.new(shape: AddonPodIdentityAssociationsList, location_name: "podIdentityAssociations"))
    UpdateAddonRequest.struct_class = Types::UpdateAddonRequest

    UpdateAddonResponse.add_member(:update, Shapes::ShapeRef.new(shape: Update, location_name: "update"))
    UpdateAddonResponse.struct_class = Types::UpdateAddonResponse

    UpdateClusterConfigRequest.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "name"))
    UpdateClusterConfigRequest.add_member(:resources_vpc_config, Shapes::ShapeRef.new(shape: VpcConfigRequest, location_name: "resourcesVpcConfig"))
    UpdateClusterConfigRequest.add_member(:logging, Shapes::ShapeRef.new(shape: Logging, location_name: "logging"))
    UpdateClusterConfigRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: String, location_name: "clientRequestToken", metadata: {"idempotencyToken" => true}))
    UpdateClusterConfigRequest.add_member(:access_config, Shapes::ShapeRef.new(shape: UpdateAccessConfigRequest, location_name: "accessConfig"))
    UpdateClusterConfigRequest.add_member(:upgrade_policy, Shapes::ShapeRef.new(shape: UpgradePolicyRequest, location_name: "upgradePolicy"))
    UpdateClusterConfigRequest.add_member(:zonal_shift_config, Shapes::ShapeRef.new(shape: ZonalShiftConfigRequest, location_name: "zonalShiftConfig"))
    UpdateClusterConfigRequest.add_member(:compute_config, Shapes::ShapeRef.new(shape: ComputeConfigRequest, location_name: "computeConfig"))
    UpdateClusterConfigRequest.add_member(:kubernetes_network_config, Shapes::ShapeRef.new(shape: KubernetesNetworkConfigRequest, location_name: "kubernetesNetworkConfig"))
    UpdateClusterConfigRequest.add_member(:storage_config, Shapes::ShapeRef.new(shape: StorageConfigRequest, location_name: "storageConfig"))
    UpdateClusterConfigRequest.add_member(:remote_network_config, Shapes::ShapeRef.new(shape: RemoteNetworkConfigRequest, location_name: "remoteNetworkConfig"))
    UpdateClusterConfigRequest.add_member(:deletion_protection, Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: "deletionProtection"))
    UpdateClusterConfigRequest.struct_class = Types::UpdateClusterConfigRequest

    UpdateClusterConfigResponse.add_member(:update, Shapes::ShapeRef.new(shape: Update, location_name: "update"))
    UpdateClusterConfigResponse.struct_class = Types::UpdateClusterConfigResponse

    UpdateClusterVersionRequest.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "name"))
    UpdateClusterVersionRequest.add_member(:version, Shapes::ShapeRef.new(shape: String, required: true, location_name: "version"))
    UpdateClusterVersionRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: String, location_name: "clientRequestToken", metadata: {"idempotencyToken" => true}))
    UpdateClusterVersionRequest.add_member(:force, Shapes::ShapeRef.new(shape: Boolean, location_name: "force"))
    UpdateClusterVersionRequest.struct_class = Types::UpdateClusterVersionRequest

    UpdateClusterVersionResponse.add_member(:update, Shapes::ShapeRef.new(shape: Update, location_name: "update"))
    UpdateClusterVersionResponse.struct_class = Types::UpdateClusterVersionResponse

    UpdateEksAnywhereSubscriptionRequest.add_member(:id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "id"))
    UpdateEksAnywhereSubscriptionRequest.add_member(:auto_renew, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "autoRenew"))
    UpdateEksAnywhereSubscriptionRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: String, location_name: "clientRequestToken", metadata: {"idempotencyToken" => true}))
    UpdateEksAnywhereSubscriptionRequest.struct_class = Types::UpdateEksAnywhereSubscriptionRequest

    UpdateEksAnywhereSubscriptionResponse.add_member(:subscription, Shapes::ShapeRef.new(shape: EksAnywhereSubscription, location_name: "subscription"))
    UpdateEksAnywhereSubscriptionResponse.struct_class = Types::UpdateEksAnywhereSubscriptionResponse

    UpdateLabelsPayload.add_member(:add_or_update_labels, Shapes::ShapeRef.new(shape: labelsMap, location_name: "addOrUpdateLabels"))
    UpdateLabelsPayload.add_member(:remove_labels, Shapes::ShapeRef.new(shape: labelsKeyList, location_name: "removeLabels"))
    UpdateLabelsPayload.struct_class = Types::UpdateLabelsPayload

    UpdateNodegroupConfigRequest.add_member(:cluster_name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "name"))
    UpdateNodegroupConfigRequest.add_member(:nodegroup_name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "nodegroupName"))
    UpdateNodegroupConfigRequest.add_member(:labels, Shapes::ShapeRef.new(shape: UpdateLabelsPayload, location_name: "labels"))
    UpdateNodegroupConfigRequest.add_member(:taints, Shapes::ShapeRef.new(shape: UpdateTaintsPayload, location_name: "taints"))
    UpdateNodegroupConfigRequest.add_member(:scaling_config, Shapes::ShapeRef.new(shape: NodegroupScalingConfig, location_name: "scalingConfig"))
    UpdateNodegroupConfigRequest.add_member(:update_config, Shapes::ShapeRef.new(shape: NodegroupUpdateConfig, location_name: "updateConfig"))
    UpdateNodegroupConfigRequest.add_member(:node_repair_config, Shapes::ShapeRef.new(shape: NodeRepairConfig, location_name: "nodeRepairConfig"))
    UpdateNodegroupConfigRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: String, location_name: "clientRequestToken", metadata: {"idempotencyToken" => true}))
    UpdateNodegroupConfigRequest.struct_class = Types::UpdateNodegroupConfigRequest

    UpdateNodegroupConfigResponse.add_member(:update, Shapes::ShapeRef.new(shape: Update, location_name: "update"))
    UpdateNodegroupConfigResponse.struct_class = Types::UpdateNodegroupConfigResponse

    UpdateNodegroupVersionRequest.add_member(:cluster_name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "name"))
    UpdateNodegroupVersionRequest.add_member(:nodegroup_name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "nodegroupName"))
    UpdateNodegroupVersionRequest.add_member(:version, Shapes::ShapeRef.new(shape: String, location_name: "version"))
    UpdateNodegroupVersionRequest.add_member(:release_version, Shapes::ShapeRef.new(shape: String, location_name: "releaseVersion"))
    UpdateNodegroupVersionRequest.add_member(:launch_template, Shapes::ShapeRef.new(shape: LaunchTemplateSpecification, location_name: "launchTemplate"))
    UpdateNodegroupVersionRequest.add_member(:force, Shapes::ShapeRef.new(shape: Boolean, location_name: "force"))
    UpdateNodegroupVersionRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: String, location_name: "clientRequestToken", metadata: {"idempotencyToken" => true}))
    UpdateNodegroupVersionRequest.struct_class = Types::UpdateNodegroupVersionRequest

    UpdateNodegroupVersionResponse.add_member(:update, Shapes::ShapeRef.new(shape: Update, location_name: "update"))
    UpdateNodegroupVersionResponse.struct_class = Types::UpdateNodegroupVersionResponse

    UpdateParam.add_member(:type, Shapes::ShapeRef.new(shape: UpdateParamType, location_name: "type"))
    UpdateParam.add_member(:value, Shapes::ShapeRef.new(shape: String, location_name: "value"))
    UpdateParam.struct_class = Types::UpdateParam

    UpdateParams.member = Shapes::ShapeRef.new(shape: UpdateParam)

    UpdatePodIdentityAssociationRequest.add_member(:cluster_name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "name"))
    UpdatePodIdentityAssociationRequest.add_member(:association_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "associationId"))
    UpdatePodIdentityAssociationRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: String, location_name: "roleArn"))
    UpdatePodIdentityAssociationRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: String, location_name: "clientRequestToken", metadata: {"idempotencyToken" => true}))
    UpdatePodIdentityAssociationRequest.add_member(:disable_session_tags, Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: "disableSessionTags"))
    UpdatePodIdentityAssociationRequest.add_member(:target_role_arn, Shapes::ShapeRef.new(shape: String, location_name: "targetRoleArn"))
    UpdatePodIdentityAssociationRequest.struct_class = Types::UpdatePodIdentityAssociationRequest

    UpdatePodIdentityAssociationResponse.add_member(:association, Shapes::ShapeRef.new(shape: PodIdentityAssociation, location_name: "association"))
    UpdatePodIdentityAssociationResponse.struct_class = Types::UpdatePodIdentityAssociationResponse

    UpdateTaintsPayload.add_member(:add_or_update_taints, Shapes::ShapeRef.new(shape: taintsList, location_name: "addOrUpdateTaints"))
    UpdateTaintsPayload.add_member(:remove_taints, Shapes::ShapeRef.new(shape: taintsList, location_name: "removeTaints"))
    UpdateTaintsPayload.struct_class = Types::UpdateTaintsPayload

    UpgradePolicyRequest.add_member(:support_type, Shapes::ShapeRef.new(shape: SupportType, location_name: "supportType"))
    UpgradePolicyRequest.struct_class = Types::UpgradePolicyRequest

    UpgradePolicyResponse.add_member(:support_type, Shapes::ShapeRef.new(shape: SupportType, location_name: "supportType"))
    UpgradePolicyResponse.struct_class = Types::UpgradePolicyResponse

    VpcConfigRequest.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: StringList, location_name: "subnetIds"))
    VpcConfigRequest.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: StringList, location_name: "securityGroupIds"))
    VpcConfigRequest.add_member(:endpoint_public_access, Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: "endpointPublicAccess"))
    VpcConfigRequest.add_member(:endpoint_private_access, Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: "endpointPrivateAccess"))
    VpcConfigRequest.add_member(:public_access_cidrs, Shapes::ShapeRef.new(shape: StringList, location_name: "publicAccessCidrs"))
    VpcConfigRequest.struct_class = Types::VpcConfigRequest

    VpcConfigResponse.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: StringList, location_name: "subnetIds"))
    VpcConfigResponse.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: StringList, location_name: "securityGroupIds"))
    VpcConfigResponse.add_member(:cluster_security_group_id, Shapes::ShapeRef.new(shape: String, location_name: "clusterSecurityGroupId"))
    VpcConfigResponse.add_member(:vpc_id, Shapes::ShapeRef.new(shape: String, location_name: "vpcId"))
    VpcConfigResponse.add_member(:endpoint_public_access, Shapes::ShapeRef.new(shape: Boolean, location_name: "endpointPublicAccess"))
    VpcConfigResponse.add_member(:endpoint_private_access, Shapes::ShapeRef.new(shape: Boolean, location_name: "endpointPrivateAccess"))
    VpcConfigResponse.add_member(:public_access_cidrs, Shapes::ShapeRef.new(shape: StringList, location_name: "publicAccessCidrs"))
    VpcConfigResponse.struct_class = Types::VpcConfigResponse

    ZonalShiftConfigRequest.add_member(:enabled, Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: "enabled"))
    ZonalShiftConfigRequest.struct_class = Types::ZonalShiftConfigRequest

    ZonalShiftConfigResponse.add_member(:enabled, Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: "enabled"))
    ZonalShiftConfigResponse.struct_class = Types::ZonalShiftConfigResponse

    labelsKeyList.member = Shapes::ShapeRef.new(shape: String)

    labelsMap.key = Shapes::ShapeRef.new(shape: labelKey)
    labelsMap.value = Shapes::ShapeRef.new(shape: labelValue)

    requiredClaimsMap.key = Shapes::ShapeRef.new(shape: requiredClaimsKey)
    requiredClaimsMap.value = Shapes::ShapeRef.new(shape: requiredClaimsValue)

    taintsList.member = Shapes::ShapeRef.new(shape: Taint)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2017-11-01"

      api.metadata = {
        "apiVersion" => "2017-11-01",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "eks",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "protocols" => ["rest-json"],
        "serviceAbbreviation" => "Amazon EKS",
        "serviceFullName" => "Amazon Elastic Kubernetes Service",
        "serviceId" => "EKS",
        "signatureVersion" => "v4",
        "signingName" => "eks",
        "uid" => "eks-2017-11-01",
      }

      api.add_operation(:associate_access_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateAccessPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/clusters/{name}/access-entries/{principalArn}/access-policies"
        o.input = Shapes::ShapeRef.new(shape: AssociateAccessPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateAccessPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
      end)

      api.add_operation(:associate_encryption_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateEncryptionConfig"
        o.http_method = "POST"
        o.http_request_uri = "/clusters/{name}/encryption-config/associate"
        o.input = Shapes::ShapeRef.new(shape: AssociateEncryptionConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateEncryptionConfigResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:associate_identity_provider_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateIdentityProviderConfig"
        o.http_method = "POST"
        o.http_request_uri = "/clusters/{name}/identity-provider-configs/associate"
        o.input = Shapes::ShapeRef.new(shape: AssociateIdentityProviderConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateIdentityProviderConfigResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:create_access_entry, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAccessEntry"
        o.http_method = "POST"
        o.http_request_uri = "/clusters/{name}/access-entries"
        o.input = Shapes::ShapeRef.new(shape: CreateAccessEntryRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateAccessEntryResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
      end)

      api.add_operation(:create_addon, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAddon"
        o.http_method = "POST"
        o.http_request_uri = "/clusters/{name}/addons"
        o.input = Shapes::ShapeRef.new(shape: CreateAddonRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateAddonResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
      end)

      api.add_operation(:create_cluster, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateCluster"
        o.http_method = "POST"
        o.http_request_uri = "/clusters"
        o.input = Shapes::ShapeRef.new(shape: CreateClusterRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateClusterResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedAvailabilityZoneException)
      end)

      api.add_operation(:create_eks_anywhere_subscription, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateEksAnywhereSubscription"
        o.http_method = "POST"
        o.http_request_uri = "/eks-anywhere-subscriptions"
        o.input = Shapes::ShapeRef.new(shape: CreateEksAnywhereSubscriptionRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateEksAnywhereSubscriptionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:create_fargate_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateFargateProfile"
        o.http_method = "POST"
        o.http_request_uri = "/clusters/{name}/fargate-profiles"
        o.input = Shapes::ShapeRef.new(shape: CreateFargateProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateFargateProfileResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedAvailabilityZoneException)
      end)

      api.add_operation(:create_nodegroup, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateNodegroup"
        o.http_method = "POST"
        o.http_request_uri = "/clusters/{name}/node-groups"
        o.input = Shapes::ShapeRef.new(shape: CreateNodegroupRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateNodegroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:create_pod_identity_association, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreatePodIdentityAssociation"
        o.http_method = "POST"
        o.http_request_uri = "/clusters/{name}/pod-identity-associations"
        o.input = Shapes::ShapeRef.new(shape: CreatePodIdentityAssociationRequest)
        o.output = Shapes::ShapeRef.new(shape: CreatePodIdentityAssociationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
      end)

      api.add_operation(:delete_access_entry, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAccessEntry"
        o.http_method = "DELETE"
        o.http_request_uri = "/clusters/{name}/access-entries/{principalArn}"
        o.input = Shapes::ShapeRef.new(shape: DeleteAccessEntryRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteAccessEntryResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)

      api.add_operation(:delete_addon, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAddon"
        o.http_method = "DELETE"
        o.http_request_uri = "/clusters/{name}/addons/{addonName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteAddonRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteAddonResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
      end)

      api.add_operation(:delete_cluster, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteCluster"
        o.http_method = "DELETE"
        o.http_request_uri = "/clusters/{name}"
        o.input = Shapes::ShapeRef.new(shape: DeleteClusterRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteClusterResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)

      api.add_operation(:delete_eks_anywhere_subscription, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteEksAnywhereSubscription"
        o.http_method = "DELETE"
        o.http_request_uri = "/eks-anywhere-subscriptions/{id}"
        o.input = Shapes::ShapeRef.new(shape: DeleteEksAnywhereSubscriptionRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteEksAnywhereSubscriptionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
      end)

      api.add_operation(:delete_fargate_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteFargateProfile"
        o.http_method = "DELETE"
        o.http_request_uri = "/clusters/{name}/fargate-profiles/{fargateProfileName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteFargateProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteFargateProfileResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:delete_nodegroup, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteNodegroup"
        o.http_method = "DELETE"
        o.http_request_uri = "/clusters/{name}/node-groups/{nodegroupName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteNodegroupRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteNodegroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:delete_pod_identity_association, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeletePodIdentityAssociation"
        o.http_method = "DELETE"
        o.http_request_uri = "/clusters/{name}/pod-identity-associations/{associationId}"
        o.input = Shapes::ShapeRef.new(shape: DeletePodIdentityAssociationRequest)
        o.output = Shapes::ShapeRef.new(shape: DeletePodIdentityAssociationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
      end)

      api.add_operation(:deregister_cluster, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeregisterCluster"
        o.http_method = "DELETE"
        o.http_request_uri = "/cluster-registrations/{name}"
        o.input = Shapes::ShapeRef.new(shape: DeregisterClusterRequest)
        o.output = Shapes::ShapeRef.new(shape: DeregisterClusterResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:describe_access_entry, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAccessEntry"
        o.http_method = "GET"
        o.http_request_uri = "/clusters/{name}/access-entries/{principalArn}"
        o.input = Shapes::ShapeRef.new(shape: DescribeAccessEntryRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeAccessEntryResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)

      api.add_operation(:describe_addon, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAddon"
        o.http_method = "GET"
        o.http_request_uri = "/clusters/{name}/addons/{addonName}"
        o.input = Shapes::ShapeRef.new(shape: DescribeAddonRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeAddonResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
      end)

      api.add_operation(:describe_addon_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAddonConfiguration"
        o.http_method = "GET"
        o.http_request_uri = "/addons/configuration-schemas"
        o.input = Shapes::ShapeRef.new(shape: DescribeAddonConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeAddonConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
      end)

      api.add_operation(:describe_addon_versions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAddonVersions"
        o.http_method = "GET"
        o.http_request_uri = "/addons/supported-versions"
        o.input = Shapes::ShapeRef.new(shape: DescribeAddonVersionsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeAddonVersionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_cluster, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeCluster"
        o.http_method = "GET"
        o.http_request_uri = "/clusters/{name}"
        o.input = Shapes::ShapeRef.new(shape: DescribeClusterRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeClusterResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:describe_cluster_versions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeClusterVersions"
        o.http_method = "GET"
        o.http_request_uri = "/cluster-versions"
        o.input = Shapes::ShapeRef.new(shape: DescribeClusterVersionsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeClusterVersionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_eks_anywhere_subscription, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeEksAnywhereSubscription"
        o.http_method = "GET"
        o.http_request_uri = "/eks-anywhere-subscriptions/{id}"
        o.input = Shapes::ShapeRef.new(shape: DescribeEksAnywhereSubscriptionRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeEksAnywhereSubscriptionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:describe_fargate_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeFargateProfile"
        o.http_method = "GET"
        o.http_request_uri = "/clusters/{name}/fargate-profiles/{fargateProfileName}"
        o.input = Shapes::ShapeRef.new(shape: DescribeFargateProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeFargateProfileResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:describe_identity_provider_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeIdentityProviderConfig"
        o.http_method = "POST"
        o.http_request_uri = "/clusters/{name}/identity-provider-configs/describe"
        o.input = Shapes::ShapeRef.new(shape: DescribeIdentityProviderConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeIdentityProviderConfigResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:describe_insight, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeInsight"
        o.http_method = "GET"
        o.http_request_uri = "/clusters/{name}/insights/{id}"
        o.input = Shapes::ShapeRef.new(shape: DescribeInsightRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeInsightResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
      end)

      api.add_operation(:describe_insights_refresh, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeInsightsRefresh"
        o.http_method = "GET"
        o.http_request_uri = "/clusters/{name}/insights-refresh"
        o.input = Shapes::ShapeRef.new(shape: DescribeInsightsRefreshRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeInsightsRefreshResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
      end)

      api.add_operation(:describe_nodegroup, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeNodegroup"
        o.http_method = "GET"
        o.http_request_uri = "/clusters/{name}/node-groups/{nodegroupName}"
        o.input = Shapes::ShapeRef.new(shape: DescribeNodegroupRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeNodegroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:describe_pod_identity_association, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribePodIdentityAssociation"
        o.http_method = "GET"
        o.http_request_uri = "/clusters/{name}/pod-identity-associations/{associationId}"
        o.input = Shapes::ShapeRef.new(shape: DescribePodIdentityAssociationRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribePodIdentityAssociationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
      end)

      api.add_operation(:describe_update, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeUpdate"
        o.http_method = "GET"
        o.http_request_uri = "/clusters/{name}/updates/{updateId}"
        o.input = Shapes::ShapeRef.new(shape: DescribeUpdateRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeUpdateResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:disassociate_access_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateAccessPolicy"
        o.http_method = "DELETE"
        o.http_request_uri = "/clusters/{name}/access-entries/{principalArn}/access-policies/{policyArn}"
        o.input = Shapes::ShapeRef.new(shape: DisassociateAccessPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateAccessPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)

      api.add_operation(:disassociate_identity_provider_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateIdentityProviderConfig"
        o.http_method = "POST"
        o.http_request_uri = "/clusters/{name}/identity-provider-configs/disassociate"
        o.input = Shapes::ShapeRef.new(shape: DisassociateIdentityProviderConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateIdentityProviderConfigResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:list_access_entries, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAccessEntries"
        o.http_method = "GET"
        o.http_request_uri = "/clusters/{name}/access-entries"
        o.input = Shapes::ShapeRef.new(shape: ListAccessEntriesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAccessEntriesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_access_policies, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAccessPolicies"
        o.http_method = "GET"
        o.http_request_uri = "/access-policies"
        o.input = Shapes::ShapeRef.new(shape: ListAccessPoliciesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAccessPoliciesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_addons, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAddons"
        o.http_method = "GET"
        o.http_request_uri = "/clusters/{name}/addons"
        o.input = Shapes::ShapeRef.new(shape: ListAddonsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAddonsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_associated_access_policies, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAssociatedAccessPolicies"
        o.http_method = "GET"
        o.http_request_uri = "/clusters/{name}/access-entries/{principalArn}/access-policies"
        o.input = Shapes::ShapeRef.new(shape: ListAssociatedAccessPoliciesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAssociatedAccessPoliciesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_clusters, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListClusters"
        o.http_method = "GET"
        o.http_request_uri = "/clusters"
        o.input = Shapes::ShapeRef.new(shape: ListClustersRequest)
        o.output = Shapes::ShapeRef.new(shape: ListClustersResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_eks_anywhere_subscriptions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListEksAnywhereSubscriptions"
        o.http_method = "GET"
        o.http_request_uri = "/eks-anywhere-subscriptions"
        o.input = Shapes::ShapeRef.new(shape: ListEksAnywhereSubscriptionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListEksAnywhereSubscriptionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_fargate_profiles, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListFargateProfiles"
        o.http_method = "GET"
        o.http_request_uri = "/clusters/{name}/fargate-profiles"
        o.input = Shapes::ShapeRef.new(shape: ListFargateProfilesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListFargateProfilesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_identity_provider_configs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListIdentityProviderConfigs"
        o.http_method = "GET"
        o.http_request_uri = "/clusters/{name}/identity-provider-configs"
        o.input = Shapes::ShapeRef.new(shape: ListIdentityProviderConfigsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListIdentityProviderConfigsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_insights, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListInsights"
        o.http_method = "POST"
        o.http_request_uri = "/clusters/{name}/insights"
        o.input = Shapes::ShapeRef.new(shape: ListInsightsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListInsightsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_nodegroups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListNodegroups"
        o.http_method = "GET"
        o.http_request_uri = "/clusters/{name}/node-groups"
        o.input = Shapes::ShapeRef.new(shape: ListNodegroupsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListNodegroupsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_pod_identity_associations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPodIdentityAssociations"
        o.http_method = "GET"
        o.http_request_uri = "/clusters/{name}/pod-identity-associations"
        o.input = Shapes::ShapeRef.new(shape: ListPodIdentityAssociationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPodIdentityAssociationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
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
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
      end)

      api.add_operation(:list_updates, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListUpdates"
        o.http_method = "GET"
        o.http_request_uri = "/clusters/{name}/updates"
        o.input = Shapes::ShapeRef.new(shape: ListUpdatesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListUpdatesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:register_cluster, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RegisterCluster"
        o.http_method = "POST"
        o.http_request_uri = "/cluster-registrations"
        o.input = Shapes::ShapeRef.new(shape: RegisterClusterRequest)
        o.output = Shapes::ShapeRef.new(shape: RegisterClusterResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ResourcePropagationDelayException)
      end)

      api.add_operation(:start_insights_refresh, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartInsightsRefresh"
        o.http_method = "POST"
        o.http_request_uri = "/clusters/{name}/insights-refresh"
        o.input = Shapes::ShapeRef.new(shape: StartInsightsRefreshRequest)
        o.output = Shapes::ShapeRef.new(shape: StartInsightsRefreshResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
      end)

      api.add_operation(:update_access_entry, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateAccessEntry"
        o.http_method = "POST"
        o.http_request_uri = "/clusters/{name}/access-entries/{principalArn}"
        o.input = Shapes::ShapeRef.new(shape: UpdateAccessEntryRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateAccessEntryResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
      end)

      api.add_operation(:update_addon, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateAddon"
        o.http_method = "POST"
        o.http_request_uri = "/clusters/{name}/addons/{addonName}/update"
        o.input = Shapes::ShapeRef.new(shape: UpdateAddonRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateAddonResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
      end)

      api.add_operation(:update_cluster_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateClusterConfig"
        o.http_method = "POST"
        o.http_request_uri = "/clusters/{name}/update-config"
        o.input = Shapes::ShapeRef.new(shape: UpdateClusterConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateClusterConfigResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:update_cluster_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateClusterVersion"
        o.http_method = "POST"
        o.http_request_uri = "/clusters/{name}/updates"
        o.input = Shapes::ShapeRef.new(shape: UpdateClusterVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateClusterVersionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidStateException)
      end)

      api.add_operation(:update_eks_anywhere_subscription, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateEksAnywhereSubscription"
        o.http_method = "POST"
        o.http_request_uri = "/eks-anywhere-subscriptions/{id}"
        o.input = Shapes::ShapeRef.new(shape: UpdateEksAnywhereSubscriptionRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateEksAnywhereSubscriptionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)

      api.add_operation(:update_nodegroup_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateNodegroupConfig"
        o.http_method = "POST"
        o.http_request_uri = "/clusters/{name}/node-groups/{nodegroupName}/update-config"
        o.input = Shapes::ShapeRef.new(shape: UpdateNodegroupConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateNodegroupConfigResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)

      api.add_operation(:update_nodegroup_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateNodegroupVersion"
        o.http_method = "POST"
        o.http_request_uri = "/clusters/{name}/node-groups/{nodegroupName}/update-version"
        o.input = Shapes::ShapeRef.new(shape: UpdateNodegroupVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateNodegroupVersionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)

      api.add_operation(:update_pod_identity_association, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdatePodIdentityAssociation"
        o.http_method = "POST"
        o.http_request_uri = "/clusters/{name}/pod-identity-associations/{associationId}"
        o.input = Shapes::ShapeRef.new(shape: UpdatePodIdentityAssociationRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdatePodIdentityAssociationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
      end)
    end

  end
end
