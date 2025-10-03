# frozen_string_literal: true

# This is generated code!

module Aws::EKS
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AMITypes = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.eks#AMITypes', name: 'AMITypes')
    AccessConfigResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#AccessConfigResponse', name: 'AccessConfigResponse')
    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccessEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#AccessEntry', name: 'AccessEntry')
    AccessPoliciesList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.eks#AccessPoliciesList', name: 'AccessPoliciesList')
    AccessPolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#AccessPolicy', name: 'AccessPolicy')
    AccessScope = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#AccessScope', name: 'AccessScope')
    AccessScopeType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.eks#AccessScopeType', name: 'AccessScopeType')
    AdditionalInfoMap = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.eks#AdditionalInfoMap', name: 'AdditionalInfoMap')
    Addon = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#Addon', name: 'Addon')
    AddonCompatibilityDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#AddonCompatibilityDetail', name: 'AddonCompatibilityDetail')
    AddonCompatibilityDetails = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.eks#AddonCompatibilityDetails', name: 'AddonCompatibilityDetails')
    AddonHealth = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#AddonHealth', name: 'AddonHealth')
    AddonInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#AddonInfo', name: 'AddonInfo')
    AddonIssue = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#AddonIssue', name: 'AddonIssue')
    AddonIssueCode = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.eks#AddonIssueCode', name: 'AddonIssueCode')
    AddonIssueList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.eks#AddonIssueList', name: 'AddonIssueList')
    AddonNamespaceConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#AddonNamespaceConfigRequest', name: 'AddonNamespaceConfigRequest')
    AddonNamespaceConfigResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#AddonNamespaceConfigResponse', name: 'AddonNamespaceConfigResponse')
    AddonPodIdentityAssociations = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#AddonPodIdentityAssociations', name: 'AddonPodIdentityAssociations')
    AddonPodIdentityAssociationsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.eks#AddonPodIdentityAssociationsList', name: 'AddonPodIdentityAssociationsList')
    AddonPodIdentityConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#AddonPodIdentityConfiguration', name: 'AddonPodIdentityConfiguration')
    AddonPodIdentityConfigurationList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.eks#AddonPodIdentityConfigurationList', name: 'AddonPodIdentityConfigurationList')
    AddonStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.eks#AddonStatus', name: 'AddonStatus')
    AddonVersionInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#AddonVersionInfo', name: 'AddonVersionInfo')
    AddonVersionInfoList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.eks#AddonVersionInfoList', name: 'AddonVersionInfoList')
    Addons = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.eks#Addons', name: 'Addons')
    AssociateAccessPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#AssociateAccessPolicyRequest', name: 'AssociateAccessPolicyRequest')
    AssociateAccessPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#AssociateAccessPolicyResponse', name: 'AssociateAccessPolicyResponse')
    AssociateEncryptionConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#AssociateEncryptionConfigRequest', name: 'AssociateEncryptionConfigRequest')
    AssociateEncryptionConfigResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#AssociateEncryptionConfigResponse', name: 'AssociateEncryptionConfigResponse')
    AssociateIdentityProviderConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#AssociateIdentityProviderConfigRequest', name: 'AssociateIdentityProviderConfigRequest')
    AssociateIdentityProviderConfigResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#AssociateIdentityProviderConfigResponse', name: 'AssociateIdentityProviderConfigResponse')
    AssociatedAccessPoliciesList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.eks#AssociatedAccessPoliciesList', name: 'AssociatedAccessPoliciesList')
    AssociatedAccessPolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#AssociatedAccessPolicy', name: 'AssociatedAccessPolicy')
    AuthenticationMode = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.eks#AuthenticationMode', name: 'AuthenticationMode')
    AutoScalingGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#AutoScalingGroup', name: 'AutoScalingGroup')
    AutoScalingGroupList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.eks#AutoScalingGroupList', name: 'AutoScalingGroupList')
    BadRequestException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#BadRequestException', name: 'BadRequestException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    BlockStorage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#BlockStorage', name: 'BlockStorage')
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.eks#Boolean', name: 'Boolean', traits: {"smithy.api#default" => false})
    BoxedBoolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.eks#BoxedBoolean', name: 'BoxedBoolean')
    BoxedInteger = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.eks#BoxedInteger', name: 'BoxedInteger')
    Capacity = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.eks#Capacity', name: 'Capacity', traits: {"smithy.api#range" => {"min" => 1}})
    CapacityTypes = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.eks#CapacityTypes', name: 'CapacityTypes')
    Category = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.eks#Category', name: 'Category')
    CategoryList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.eks#CategoryList', name: 'CategoryList')
    Certificate = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#Certificate', name: 'Certificate')
    ClientException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#ClientException', name: 'ClientException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ClientStat = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#ClientStat', name: 'ClientStat')
    ClientStats = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.eks#ClientStats', name: 'ClientStats')
    Cluster = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#Cluster', name: 'Cluster')
    ClusterHealth = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#ClusterHealth', name: 'ClusterHealth')
    ClusterIssue = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#ClusterIssue', name: 'ClusterIssue')
    ClusterIssueCode = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.eks#ClusterIssueCode', name: 'ClusterIssueCode')
    ClusterIssueList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.eks#ClusterIssueList', name: 'ClusterIssueList')
    ClusterName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.eks#ClusterName', name: 'ClusterName', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[0-9A-Za-z][A-Za-z0-9\\-_]*$"})
    ClusterStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.eks#ClusterStatus', name: 'ClusterStatus')
    ClusterVersionInformation = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#ClusterVersionInformation', name: 'ClusterVersionInformation')
    ClusterVersionList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.eks#ClusterVersionList', name: 'ClusterVersionList')
    ClusterVersionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.eks#ClusterVersionStatus', name: 'ClusterVersionStatus')
    Compatibilities = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.eks#Compatibilities', name: 'Compatibilities')
    Compatibility = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#Compatibility', name: 'Compatibility')
    ComputeConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#ComputeConfigRequest', name: 'ComputeConfigRequest')
    ComputeConfigResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#ComputeConfigResponse', name: 'ComputeConfigResponse')
    ConnectorConfigProvider = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.eks#ConnectorConfigProvider', name: 'ConnectorConfigProvider')
    ConnectorConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#ConnectorConfigRequest', name: 'ConnectorConfigRequest')
    ConnectorConfigResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#ConnectorConfigResponse', name: 'ConnectorConfigResponse')
    ControlPlanePlacementRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#ControlPlanePlacementRequest', name: 'ControlPlanePlacementRequest')
    ControlPlanePlacementResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#ControlPlanePlacementResponse', name: 'ControlPlanePlacementResponse')
    CreateAccessConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#CreateAccessConfigRequest', name: 'CreateAccessConfigRequest')
    CreateAccessEntryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#CreateAccessEntryRequest', name: 'CreateAccessEntryRequest')
    CreateAccessEntryResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#CreateAccessEntryResponse', name: 'CreateAccessEntryResponse')
    CreateAddonRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#CreateAddonRequest', name: 'CreateAddonRequest')
    CreateAddonResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#CreateAddonResponse', name: 'CreateAddonResponse')
    CreateClusterRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#CreateClusterRequest', name: 'CreateClusterRequest')
    CreateClusterResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#CreateClusterResponse', name: 'CreateClusterResponse')
    CreateEksAnywhereSubscriptionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#CreateEksAnywhereSubscriptionRequest', name: 'CreateEksAnywhereSubscriptionRequest')
    CreateEksAnywhereSubscriptionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#CreateEksAnywhereSubscriptionResponse', name: 'CreateEksAnywhereSubscriptionResponse')
    CreateFargateProfileRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#CreateFargateProfileRequest', name: 'CreateFargateProfileRequest')
    CreateFargateProfileResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#CreateFargateProfileResponse', name: 'CreateFargateProfileResponse')
    CreateNodegroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#CreateNodegroupRequest', name: 'CreateNodegroupRequest')
    CreateNodegroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#CreateNodegroupResponse', name: 'CreateNodegroupResponse')
    CreatePodIdentityAssociationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#CreatePodIdentityAssociationRequest', name: 'CreatePodIdentityAssociationRequest')
    CreatePodIdentityAssociationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#CreatePodIdentityAssociationResponse', name: 'CreatePodIdentityAssociationResponse')
    DeleteAccessEntryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#DeleteAccessEntryRequest', name: 'DeleteAccessEntryRequest')
    DeleteAccessEntryResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#DeleteAccessEntryResponse', name: 'DeleteAccessEntryResponse')
    DeleteAddonRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#DeleteAddonRequest', name: 'DeleteAddonRequest')
    DeleteAddonResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#DeleteAddonResponse', name: 'DeleteAddonResponse')
    DeleteClusterRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#DeleteClusterRequest', name: 'DeleteClusterRequest')
    DeleteClusterResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#DeleteClusterResponse', name: 'DeleteClusterResponse')
    DeleteEksAnywhereSubscriptionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#DeleteEksAnywhereSubscriptionRequest', name: 'DeleteEksAnywhereSubscriptionRequest')
    DeleteEksAnywhereSubscriptionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#DeleteEksAnywhereSubscriptionResponse', name: 'DeleteEksAnywhereSubscriptionResponse')
    DeleteFargateProfileRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#DeleteFargateProfileRequest', name: 'DeleteFargateProfileRequest')
    DeleteFargateProfileResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#DeleteFargateProfileResponse', name: 'DeleteFargateProfileResponse')
    DeleteNodegroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#DeleteNodegroupRequest', name: 'DeleteNodegroupRequest')
    DeleteNodegroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#DeleteNodegroupResponse', name: 'DeleteNodegroupResponse')
    DeletePodIdentityAssociationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#DeletePodIdentityAssociationRequest', name: 'DeletePodIdentityAssociationRequest')
    DeletePodIdentityAssociationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#DeletePodIdentityAssociationResponse', name: 'DeletePodIdentityAssociationResponse')
    DeprecationDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#DeprecationDetail', name: 'DeprecationDetail')
    DeprecationDetails = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.eks#DeprecationDetails', name: 'DeprecationDetails')
    DeregisterClusterRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#DeregisterClusterRequest', name: 'DeregisterClusterRequest')
    DeregisterClusterResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#DeregisterClusterResponse', name: 'DeregisterClusterResponse')
    DescribeAccessEntryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#DescribeAccessEntryRequest', name: 'DescribeAccessEntryRequest')
    DescribeAccessEntryResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#DescribeAccessEntryResponse', name: 'DescribeAccessEntryResponse')
    DescribeAddonConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#DescribeAddonConfigurationRequest', name: 'DescribeAddonConfigurationRequest')
    DescribeAddonConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#DescribeAddonConfigurationResponse', name: 'DescribeAddonConfigurationResponse')
    DescribeAddonRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#DescribeAddonRequest', name: 'DescribeAddonRequest')
    DescribeAddonResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#DescribeAddonResponse', name: 'DescribeAddonResponse')
    DescribeAddonVersionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#DescribeAddonVersionsRequest', name: 'DescribeAddonVersionsRequest')
    DescribeAddonVersionsRequestMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.eks#DescribeAddonVersionsRequestMaxResults', name: 'DescribeAddonVersionsRequestMaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    DescribeAddonVersionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#DescribeAddonVersionsResponse', name: 'DescribeAddonVersionsResponse')
    DescribeClusterRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#DescribeClusterRequest', name: 'DescribeClusterRequest')
    DescribeClusterResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#DescribeClusterResponse', name: 'DescribeClusterResponse')
    DescribeClusterVersionMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.eks#DescribeClusterVersionMaxResults', name: 'DescribeClusterVersionMaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    DescribeClusterVersionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#DescribeClusterVersionsRequest', name: 'DescribeClusterVersionsRequest')
    DescribeClusterVersionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#DescribeClusterVersionsResponse', name: 'DescribeClusterVersionsResponse')
    DescribeEksAnywhereSubscriptionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#DescribeEksAnywhereSubscriptionRequest', name: 'DescribeEksAnywhereSubscriptionRequest')
    DescribeEksAnywhereSubscriptionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#DescribeEksAnywhereSubscriptionResponse', name: 'DescribeEksAnywhereSubscriptionResponse')
    DescribeFargateProfileRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#DescribeFargateProfileRequest', name: 'DescribeFargateProfileRequest')
    DescribeFargateProfileResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#DescribeFargateProfileResponse', name: 'DescribeFargateProfileResponse')
    DescribeIdentityProviderConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#DescribeIdentityProviderConfigRequest', name: 'DescribeIdentityProviderConfigRequest')
    DescribeIdentityProviderConfigResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#DescribeIdentityProviderConfigResponse', name: 'DescribeIdentityProviderConfigResponse')
    DescribeInsightRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#DescribeInsightRequest', name: 'DescribeInsightRequest')
    DescribeInsightResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#DescribeInsightResponse', name: 'DescribeInsightResponse')
    DescribeInsightsRefreshRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#DescribeInsightsRefreshRequest', name: 'DescribeInsightsRefreshRequest')
    DescribeInsightsRefreshResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#DescribeInsightsRefreshResponse', name: 'DescribeInsightsRefreshResponse')
    DescribeNodegroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#DescribeNodegroupRequest', name: 'DescribeNodegroupRequest')
    DescribeNodegroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#DescribeNodegroupResponse', name: 'DescribeNodegroupResponse')
    DescribePodIdentityAssociationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#DescribePodIdentityAssociationRequest', name: 'DescribePodIdentityAssociationRequest')
    DescribePodIdentityAssociationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#DescribePodIdentityAssociationResponse', name: 'DescribePodIdentityAssociationResponse')
    DescribeUpdateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#DescribeUpdateRequest', name: 'DescribeUpdateRequest')
    DescribeUpdateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#DescribeUpdateResponse', name: 'DescribeUpdateResponse')
    DisassociateAccessPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#DisassociateAccessPolicyRequest', name: 'DisassociateAccessPolicyRequest')
    DisassociateAccessPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#DisassociateAccessPolicyResponse', name: 'DisassociateAccessPolicyResponse')
    DisassociateIdentityProviderConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#DisassociateIdentityProviderConfigRequest', name: 'DisassociateIdentityProviderConfigRequest')
    DisassociateIdentityProviderConfigResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#DisassociateIdentityProviderConfigResponse', name: 'DisassociateIdentityProviderConfigResponse')
    EksAnywhereSubscription = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#EksAnywhereSubscription', name: 'EksAnywhereSubscription')
    EksAnywhereSubscriptionLicenseType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.eks#EksAnywhereSubscriptionLicenseType', name: 'EksAnywhereSubscriptionLicenseType')
    EksAnywhereSubscriptionList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.eks#EksAnywhereSubscriptionList', name: 'EksAnywhereSubscriptionList')
    EksAnywhereSubscriptionName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.eks#EksAnywhereSubscriptionName', name: 'EksAnywhereSubscriptionName', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[0-9A-Za-z][A-Za-z0-9\\-_]*$"})
    EksAnywhereSubscriptionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.eks#EksAnywhereSubscriptionStatus', name: 'EksAnywhereSubscriptionStatus')
    EksAnywhereSubscriptionStatusValues = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.eks#EksAnywhereSubscriptionStatusValues', name: 'EksAnywhereSubscriptionStatusValues')
    EksAnywhereSubscriptionTerm = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#EksAnywhereSubscriptionTerm', name: 'EksAnywhereSubscriptionTerm')
    EksAnywhereSubscriptionTermUnit = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.eks#EksAnywhereSubscriptionTermUnit', name: 'EksAnywhereSubscriptionTermUnit')
    ElasticLoadBalancing = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#ElasticLoadBalancing', name: 'ElasticLoadBalancing')
    EncryptionConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#EncryptionConfig', name: 'EncryptionConfig')
    EncryptionConfigList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.eks#EncryptionConfigList', name: 'EncryptionConfigList', traits: {"smithy.api#length" => {"min" => 0, "max" => 1}})
    ErrorCode = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.eks#ErrorCode', name: 'ErrorCode')
    ErrorDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#ErrorDetail', name: 'ErrorDetail')
    ErrorDetails = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.eks#ErrorDetails', name: 'ErrorDetails')
    FargateProfile = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#FargateProfile', name: 'FargateProfile')
    FargateProfileHealth = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#FargateProfileHealth', name: 'FargateProfileHealth')
    FargateProfileIssue = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#FargateProfileIssue', name: 'FargateProfileIssue')
    FargateProfileIssueCode = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.eks#FargateProfileIssueCode', name: 'FargateProfileIssueCode')
    FargateProfileIssueList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.eks#FargateProfileIssueList', name: 'FargateProfileIssueList')
    FargateProfileLabel = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.eks#FargateProfileLabel', name: 'FargateProfileLabel')
    FargateProfileSelector = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#FargateProfileSelector', name: 'FargateProfileSelector')
    FargateProfileSelectors = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.eks#FargateProfileSelectors', name: 'FargateProfileSelectors')
    FargateProfileStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.eks#FargateProfileStatus', name: 'FargateProfileStatus')
    FargateProfilesRequestMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.eks#FargateProfilesRequestMaxResults', name: 'FargateProfilesRequestMaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    Identity = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#Identity', name: 'Identity')
    IdentityProviderConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#IdentityProviderConfig', name: 'IdentityProviderConfig')
    IdentityProviderConfigResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#IdentityProviderConfigResponse', name: 'IdentityProviderConfigResponse')
    IdentityProviderConfigs = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.eks#IdentityProviderConfigs', name: 'IdentityProviderConfigs')
    IncludeClustersList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.eks#IncludeClustersList', name: 'IncludeClustersList')
    Insight = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#Insight', name: 'Insight')
    InsightCategorySpecificSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#InsightCategorySpecificSummary', name: 'InsightCategorySpecificSummary')
    InsightResourceDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#InsightResourceDetail', name: 'InsightResourceDetail')
    InsightResourceDetails = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.eks#InsightResourceDetails', name: 'InsightResourceDetails')
    InsightStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#InsightStatus', name: 'InsightStatus')
    InsightStatusValue = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.eks#InsightStatusValue', name: 'InsightStatusValue')
    InsightStatusValueList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.eks#InsightStatusValueList', name: 'InsightStatusValueList')
    InsightSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.eks#InsightSummaries', name: 'InsightSummaries')
    InsightSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#InsightSummary', name: 'InsightSummary')
    InsightsFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#InsightsFilter', name: 'InsightsFilter')
    InsightsRefreshStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.eks#InsightsRefreshStatus', name: 'InsightsRefreshStatus')
    Integer = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.eks#Integer', name: 'Integer', traits: {"smithy.api#default" => 0})
    InvalidParameterException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#InvalidParameterException', name: 'InvalidParameterException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidRequestException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#InvalidRequestException', name: 'InvalidRequestException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidStateException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#InvalidStateException', name: 'InvalidStateException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    IpFamily = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.eks#IpFamily', name: 'IpFamily')
    Issue = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#Issue', name: 'Issue')
    IssueList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.eks#IssueList', name: 'IssueList')
    KubernetesNetworkConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#KubernetesNetworkConfigRequest', name: 'KubernetesNetworkConfigRequest')
    KubernetesNetworkConfigResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#KubernetesNetworkConfigResponse', name: 'KubernetesNetworkConfigResponse')
    LaunchTemplateSpecification = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#LaunchTemplateSpecification', name: 'LaunchTemplateSpecification')
    License = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#License', name: 'License')
    LicenseList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.eks#LicenseList', name: 'LicenseList')
    ListAccessEntriesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#ListAccessEntriesRequest', name: 'ListAccessEntriesRequest')
    ListAccessEntriesRequestMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.eks#ListAccessEntriesRequestMaxResults', name: 'ListAccessEntriesRequestMaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    ListAccessEntriesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#ListAccessEntriesResponse', name: 'ListAccessEntriesResponse')
    ListAccessPoliciesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#ListAccessPoliciesRequest', name: 'ListAccessPoliciesRequest')
    ListAccessPoliciesRequestMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.eks#ListAccessPoliciesRequestMaxResults', name: 'ListAccessPoliciesRequestMaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    ListAccessPoliciesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#ListAccessPoliciesResponse', name: 'ListAccessPoliciesResponse')
    ListAddonsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#ListAddonsRequest', name: 'ListAddonsRequest')
    ListAddonsRequestMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.eks#ListAddonsRequestMaxResults', name: 'ListAddonsRequestMaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    ListAddonsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#ListAddonsResponse', name: 'ListAddonsResponse')
    ListAssociatedAccessPoliciesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#ListAssociatedAccessPoliciesRequest', name: 'ListAssociatedAccessPoliciesRequest')
    ListAssociatedAccessPoliciesRequestMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.eks#ListAssociatedAccessPoliciesRequestMaxResults', name: 'ListAssociatedAccessPoliciesRequestMaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    ListAssociatedAccessPoliciesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#ListAssociatedAccessPoliciesResponse', name: 'ListAssociatedAccessPoliciesResponse')
    ListClustersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#ListClustersRequest', name: 'ListClustersRequest')
    ListClustersRequestMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.eks#ListClustersRequestMaxResults', name: 'ListClustersRequestMaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    ListClustersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#ListClustersResponse', name: 'ListClustersResponse')
    ListEksAnywhereSubscriptionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#ListEksAnywhereSubscriptionsRequest', name: 'ListEksAnywhereSubscriptionsRequest')
    ListEksAnywhereSubscriptionsRequestMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.eks#ListEksAnywhereSubscriptionsRequestMaxResults', name: 'ListEksAnywhereSubscriptionsRequestMaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    ListEksAnywhereSubscriptionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#ListEksAnywhereSubscriptionsResponse', name: 'ListEksAnywhereSubscriptionsResponse')
    ListFargateProfilesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#ListFargateProfilesRequest', name: 'ListFargateProfilesRequest')
    ListFargateProfilesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#ListFargateProfilesResponse', name: 'ListFargateProfilesResponse')
    ListIdentityProviderConfigsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#ListIdentityProviderConfigsRequest', name: 'ListIdentityProviderConfigsRequest')
    ListIdentityProviderConfigsRequestMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.eks#ListIdentityProviderConfigsRequestMaxResults', name: 'ListIdentityProviderConfigsRequestMaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    ListIdentityProviderConfigsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#ListIdentityProviderConfigsResponse', name: 'ListIdentityProviderConfigsResponse')
    ListInsightsMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.eks#ListInsightsMaxResults', name: 'ListInsightsMaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    ListInsightsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#ListInsightsRequest', name: 'ListInsightsRequest')
    ListInsightsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#ListInsightsResponse', name: 'ListInsightsResponse')
    ListNodegroupsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#ListNodegroupsRequest', name: 'ListNodegroupsRequest')
    ListNodegroupsRequestMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.eks#ListNodegroupsRequestMaxResults', name: 'ListNodegroupsRequestMaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    ListNodegroupsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#ListNodegroupsResponse', name: 'ListNodegroupsResponse')
    ListPodIdentityAssociationsMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.eks#ListPodIdentityAssociationsMaxResults', name: 'ListPodIdentityAssociationsMaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    ListPodIdentityAssociationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#ListPodIdentityAssociationsRequest', name: 'ListPodIdentityAssociationsRequest')
    ListPodIdentityAssociationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#ListPodIdentityAssociationsResponse', name: 'ListPodIdentityAssociationsResponse')
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    ListUpdatesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#ListUpdatesRequest', name: 'ListUpdatesRequest')
    ListUpdatesRequestMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.eks#ListUpdatesRequestMaxResults', name: 'ListUpdatesRequestMaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    ListUpdatesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#ListUpdatesResponse', name: 'ListUpdatesResponse')
    LogSetup = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#LogSetup', name: 'LogSetup')
    LogSetups = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.eks#LogSetups', name: 'LogSetups')
    LogType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.eks#LogType', name: 'LogType')
    LogTypes = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.eks#LogTypes', name: 'LogTypes')
    Logging = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#Logging', name: 'Logging')
    MarketplaceInformation = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#MarketplaceInformation', name: 'MarketplaceInformation')
    NodeRepairConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#NodeRepairConfig', name: 'NodeRepairConfig')
    NodeRepairConfigOverrides = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#NodeRepairConfigOverrides', name: 'NodeRepairConfigOverrides')
    NodeRepairConfigOverridesList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.eks#NodeRepairConfigOverridesList', name: 'NodeRepairConfigOverridesList')
    Nodegroup = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#Nodegroup', name: 'Nodegroup')
    NodegroupHealth = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#NodegroupHealth', name: 'NodegroupHealth')
    NodegroupIssueCode = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.eks#NodegroupIssueCode', name: 'NodegroupIssueCode')
    NodegroupResources = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#NodegroupResources', name: 'NodegroupResources')
    NodegroupScalingConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#NodegroupScalingConfig', name: 'NodegroupScalingConfig')
    NodegroupStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.eks#NodegroupStatus', name: 'NodegroupStatus')
    NodegroupUpdateConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#NodegroupUpdateConfig', name: 'NodegroupUpdateConfig')
    NodegroupUpdateStrategies = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.eks#NodegroupUpdateStrategies', name: 'NodegroupUpdateStrategies')
    NonZeroInteger = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.eks#NonZeroInteger', name: 'NonZeroInteger', traits: {"smithy.api#range" => {"min" => 1}})
    NotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#NotFoundException', name: 'NotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    OIDC = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#OIDC', name: 'OIDC')
    OidcIdentityProviderConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#OidcIdentityProviderConfig', name: 'OidcIdentityProviderConfig')
    OidcIdentityProviderConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#OidcIdentityProviderConfigRequest', name: 'OidcIdentityProviderConfigRequest')
    OutpostConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#OutpostConfigRequest', name: 'OutpostConfigRequest')
    OutpostConfigResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#OutpostConfigResponse', name: 'OutpostConfigResponse')
    PercentCapacity = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.eks#PercentCapacity', name: 'PercentCapacity', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    PodIdentityAssociation = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#PodIdentityAssociation', name: 'PodIdentityAssociation')
    PodIdentityAssociationSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.eks#PodIdentityAssociationSummaries', name: 'PodIdentityAssociationSummaries')
    PodIdentityAssociationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#PodIdentityAssociationSummary', name: 'PodIdentityAssociationSummary')
    Provider = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#Provider', name: 'Provider')
    RegisterClusterRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#RegisterClusterRequest', name: 'RegisterClusterRequest')
    RegisterClusterResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#RegisterClusterResponse', name: 'RegisterClusterResponse')
    RemoteAccessConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#RemoteAccessConfig', name: 'RemoteAccessConfig')
    RemoteNetworkConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#RemoteNetworkConfigRequest', name: 'RemoteNetworkConfigRequest')
    RemoteNetworkConfigResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#RemoteNetworkConfigResponse', name: 'RemoteNetworkConfigResponse')
    RemoteNodeNetwork = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#RemoteNodeNetwork', name: 'RemoteNodeNetwork')
    RemoteNodeNetworkList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.eks#RemoteNodeNetworkList', name: 'RemoteNodeNetworkList', traits: {"smithy.api#length" => {"min" => 0, "max" => 1}})
    RemotePodNetwork = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#RemotePodNetwork', name: 'RemotePodNetwork')
    RemotePodNetworkList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.eks#RemotePodNetworkList', name: 'RemotePodNetworkList', traits: {"smithy.api#length" => {"min" => 0, "max" => 1}})
    RepairAction = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.eks#RepairAction', name: 'RepairAction')
    ResolveConflicts = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.eks#ResolveConflicts', name: 'ResolveConflicts')
    ResourceInUseException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#ResourceInUseException', name: 'ResourceInUseException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ResourceLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#ResourceLimitExceededException', name: 'ResourceLimitExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourcePropagationDelayException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#ResourcePropagationDelayException', name: 'ResourcePropagationDelayException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 428})
    RoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.eks#RoleArn', name: 'RoleArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    ServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#ServerException', name: 'ServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    ServiceUnavailableException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#ServiceUnavailableException', name: 'ServiceUnavailableException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 503})
    StartInsightsRefreshRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#StartInsightsRefreshRequest', name: 'StartInsightsRefreshRequest')
    StartInsightsRefreshResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#StartInsightsRefreshResponse', name: 'StartInsightsRefreshResponse')
    StorageConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#StorageConfigRequest', name: 'StorageConfigRequest')
    StorageConfigResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#StorageConfigResponse', name: 'StorageConfigResponse')
    String = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.eks#String', name: 'String')
    StringList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.eks#StringList', name: 'StringList')
    SupportType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.eks#SupportType', name: 'SupportType')
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.eks#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.eks#TagKeyList', name: 'TagKeyList', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TagMap = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.eks#TagMap', name: 'TagMap', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#TagResourceRequest', name: 'TagResourceRequest')
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#TagResourceResponse', name: 'TagResourceResponse')
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.eks#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    Taint = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#Taint', name: 'Taint')
    TaintEffect = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.eks#TaintEffect', name: 'TaintEffect')
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.eks#Timestamp', name: 'Timestamp')
    UnsupportedAvailabilityZoneException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#UnsupportedAvailabilityZoneException', name: 'UnsupportedAvailabilityZoneException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#UntagResourceRequest', name: 'UntagResourceRequest')
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#UntagResourceResponse', name: 'UntagResourceResponse')
    Update = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#Update', name: 'Update')
    UpdateAccessConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#UpdateAccessConfigRequest', name: 'UpdateAccessConfigRequest')
    UpdateAccessEntryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#UpdateAccessEntryRequest', name: 'UpdateAccessEntryRequest')
    UpdateAccessEntryResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#UpdateAccessEntryResponse', name: 'UpdateAccessEntryResponse')
    UpdateAddonRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#UpdateAddonRequest', name: 'UpdateAddonRequest')
    UpdateAddonResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#UpdateAddonResponse', name: 'UpdateAddonResponse')
    UpdateClusterConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#UpdateClusterConfigRequest', name: 'UpdateClusterConfigRequest')
    UpdateClusterConfigResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#UpdateClusterConfigResponse', name: 'UpdateClusterConfigResponse')
    UpdateClusterVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#UpdateClusterVersionRequest', name: 'UpdateClusterVersionRequest')
    UpdateClusterVersionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#UpdateClusterVersionResponse', name: 'UpdateClusterVersionResponse')
    UpdateEksAnywhereSubscriptionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#UpdateEksAnywhereSubscriptionRequest', name: 'UpdateEksAnywhereSubscriptionRequest')
    UpdateEksAnywhereSubscriptionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#UpdateEksAnywhereSubscriptionResponse', name: 'UpdateEksAnywhereSubscriptionResponse')
    UpdateLabelsPayload = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#UpdateLabelsPayload', name: 'UpdateLabelsPayload')
    UpdateNodegroupConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#UpdateNodegroupConfigRequest', name: 'UpdateNodegroupConfigRequest')
    UpdateNodegroupConfigResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#UpdateNodegroupConfigResponse', name: 'UpdateNodegroupConfigResponse')
    UpdateNodegroupVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#UpdateNodegroupVersionRequest', name: 'UpdateNodegroupVersionRequest')
    UpdateNodegroupVersionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#UpdateNodegroupVersionResponse', name: 'UpdateNodegroupVersionResponse')
    UpdateParam = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#UpdateParam', name: 'UpdateParam')
    UpdateParamType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.eks#UpdateParamType', name: 'UpdateParamType')
    UpdateParams = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.eks#UpdateParams', name: 'UpdateParams')
    UpdatePodIdentityAssociationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#UpdatePodIdentityAssociationRequest', name: 'UpdatePodIdentityAssociationRequest')
    UpdatePodIdentityAssociationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#UpdatePodIdentityAssociationResponse', name: 'UpdatePodIdentityAssociationResponse')
    UpdateStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.eks#UpdateStatus', name: 'UpdateStatus')
    UpdateTaintsPayload = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#UpdateTaintsPayload', name: 'UpdateTaintsPayload')
    UpdateType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.eks#UpdateType', name: 'UpdateType')
    UpgradePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#UpgradePolicyRequest', name: 'UpgradePolicyRequest')
    UpgradePolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#UpgradePolicyResponse', name: 'UpgradePolicyResponse')
    VersionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.eks#VersionStatus', name: 'VersionStatus')
    VpcConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#VpcConfigRequest', name: 'VpcConfigRequest')
    VpcConfigResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#VpcConfigResponse', name: 'VpcConfigResponse')
    ZeroCapacity = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.eks#ZeroCapacity', name: 'ZeroCapacity', traits: {"smithy.api#range" => {"min" => 0}})
    ZonalShiftConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#ZonalShiftConfigRequest', name: 'ZonalShiftConfigRequest')
    ZonalShiftConfigResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eks#ZonalShiftConfigResponse', name: 'ZonalShiftConfigResponse')
    ConfigStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.eks#configStatus', name: 'ConfigStatus')
    LabelKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.eks#labelKey', name: 'LabelKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 63}})
    LabelValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.eks#labelValue', name: 'LabelValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 63}})
    LabelsKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.eks#labelsKeyList', name: 'LabelsKeyList')
    LabelsMap = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.eks#labelsMap', name: 'LabelsMap')
    Namespace = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.eks#namespace', name: 'Namespace', traits: {"smithy.api#length" => {"min" => 1, "max" => 63}})
    RequiredClaimsKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.eks#requiredClaimsKey', name: 'RequiredClaimsKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 63}})
    RequiredClaimsMap = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.eks#requiredClaimsMap', name: 'RequiredClaimsMap')
    RequiredClaimsValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.eks#requiredClaimsValue', name: 'RequiredClaimsValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 253}})
    TaintKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.eks#taintKey', name: 'TaintKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 63}})
    TaintValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.eks#taintValue', name: 'TaintValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 63}})
    TaintsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.eks#taintsList', name: 'TaintsList')

    AMITypes.add_member(:al2_x86_64, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AL2_x86_64', traits: {"smithy.api#enumValue" => "AL2_x86_64"}))
    AMITypes.add_member(:al2_x86_64_gpu, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AL2_x86_64_GPU', traits: {"smithy.api#enumValue" => "AL2_x86_64_GPU"}))
    AMITypes.add_member(:al2_arm_64, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AL2_ARM_64', traits: {"smithy.api#enumValue" => "AL2_ARM_64"}))
    AMITypes.add_member(:custom, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CUSTOM', traits: {"smithy.api#enumValue" => "CUSTOM"}))
    AMITypes.add_member(:bottlerocket_arm_64, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BOTTLEROCKET_ARM_64', traits: {"smithy.api#enumValue" => "BOTTLEROCKET_ARM_64"}))
    AMITypes.add_member(:bottlerocket_x86_64, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BOTTLEROCKET_x86_64', traits: {"smithy.api#enumValue" => "BOTTLEROCKET_x86_64"}))
    AMITypes.add_member(:bottlerocket_arm_64_fips, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BOTTLEROCKET_ARM_64_FIPS', traits: {"smithy.api#enumValue" => "BOTTLEROCKET_ARM_64_FIPS"}))
    AMITypes.add_member(:bottlerocket_x86_64_fips, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BOTTLEROCKET_x86_64_FIPS', traits: {"smithy.api#enumValue" => "BOTTLEROCKET_x86_64_FIPS"}))
    AMITypes.add_member(:bottlerocket_arm_64_nvidia, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BOTTLEROCKET_ARM_64_NVIDIA', traits: {"smithy.api#enumValue" => "BOTTLEROCKET_ARM_64_NVIDIA"}))
    AMITypes.add_member(:bottlerocket_x86_64_nvidia, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BOTTLEROCKET_x86_64_NVIDIA', traits: {"smithy.api#enumValue" => "BOTTLEROCKET_x86_64_NVIDIA"}))
    AMITypes.add_member(:windows_core_2019_x86_64, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WINDOWS_CORE_2019_x86_64', traits: {"smithy.api#enumValue" => "WINDOWS_CORE_2019_x86_64"}))
    AMITypes.add_member(:windows_full_2019_x86_64, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WINDOWS_FULL_2019_x86_64', traits: {"smithy.api#enumValue" => "WINDOWS_FULL_2019_x86_64"}))
    AMITypes.add_member(:windows_core_2022_x86_64, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WINDOWS_CORE_2022_x86_64', traits: {"smithy.api#enumValue" => "WINDOWS_CORE_2022_x86_64"}))
    AMITypes.add_member(:windows_full_2022_x86_64, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WINDOWS_FULL_2022_x86_64', traits: {"smithy.api#enumValue" => "WINDOWS_FULL_2022_x86_64"}))
    AMITypes.add_member(:al2023_x86_64_standard, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AL2023_x86_64_STANDARD', traits: {"smithy.api#enumValue" => "AL2023_x86_64_STANDARD"}))
    AMITypes.add_member(:al2023_arm_64_standard, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AL2023_ARM_64_STANDARD', traits: {"smithy.api#enumValue" => "AL2023_ARM_64_STANDARD"}))
    AMITypes.add_member(:al2023_x86_64_neuron, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AL2023_x86_64_NEURON', traits: {"smithy.api#enumValue" => "AL2023_x86_64_NEURON"}))
    AMITypes.add_member(:al2023_x86_64_nvidia, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AL2023_x86_64_NVIDIA', traits: {"smithy.api#enumValue" => "AL2023_x86_64_NVIDIA"}))
    AMITypes.add_member(:al2023_arm_64_nvidia, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AL2023_ARM_64_NVIDIA', traits: {"smithy.api#enumValue" => "AL2023_ARM_64_NVIDIA"}))
    AccessConfigResponse.add_member(:bootstrap_cluster_creator_admin_permissions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: 'bootstrapClusterCreatorAdminPermissions'))
    AccessConfigResponse.add_member(:authentication_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationMode, location_name: 'authenticationMode'))
    AccessConfigResponse.type = Types::AccessConfigResponse
    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    AccessDeniedException.type = Types::AccessDeniedException
    AccessEntry.add_member(:cluster_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clusterName'))
    AccessEntry.add_member(:principal_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'principalArn'))
    AccessEntry.add_member(:kubernetes_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'kubernetesGroups'))
    AccessEntry.add_member(:access_entry_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'accessEntryArn'))
    AccessEntry.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdAt'))
    AccessEntry.add_member(:modified_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'modifiedAt'))
    AccessEntry.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    AccessEntry.add_member(:username, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'username'))
    AccessEntry.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'type'))
    AccessEntry.type = Types::AccessEntry
    AccessPoliciesList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessPolicy)
    AccessPolicy.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name'))
    AccessPolicy.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'arn'))
    AccessPolicy.type = Types::AccessPolicy
    AccessScope.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessScopeType, location_name: 'type'))
    AccessScope.add_member(:namespaces, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'namespaces'))
    AccessScope.type = Types::AccessScope
    AccessScopeType.add_member(:cluster, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'cluster', traits: {"smithy.api#enumValue" => "cluster"}))
    AccessScopeType.add_member(:namespace, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'namespace', traits: {"smithy.api#enumValue" => "namespace"}))
    AdditionalInfoMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    AdditionalInfoMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    Addon.add_member(:addon_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'addonName'))
    Addon.add_member(:cluster_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterName, location_name: 'clusterName'))
    Addon.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddonStatus, location_name: 'status'))
    Addon.add_member(:addon_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'addonVersion'))
    Addon.add_member(:health, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddonHealth, location_name: 'health'))
    Addon.add_member(:addon_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'addonArn'))
    Addon.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdAt'))
    Addon.add_member(:modified_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'modifiedAt'))
    Addon.add_member(:service_account_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'serviceAccountRoleArn'))
    Addon.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    Addon.add_member(:publisher, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'publisher'))
    Addon.add_member(:owner, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'owner'))
    Addon.add_member(:marketplace_information, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MarketplaceInformation, location_name: 'marketplaceInformation'))
    Addon.add_member(:configuration_values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'configurationValues'))
    Addon.add_member(:pod_identity_associations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'podIdentityAssociations'))
    Addon.add_member(:namespace_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddonNamespaceConfigResponse, location_name: 'namespaceConfig'))
    Addon.type = Types::Addon
    AddonCompatibilityDetail.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name'))
    AddonCompatibilityDetail.add_member(:compatible_versions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'compatibleVersions'))
    AddonCompatibilityDetail.type = Types::AddonCompatibilityDetail
    AddonCompatibilityDetails.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddonCompatibilityDetail)
    AddonHealth.add_member(:issues, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddonIssueList, location_name: 'issues'))
    AddonHealth.type = Types::AddonHealth
    AddonInfo.add_member(:addon_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'addonName'))
    AddonInfo.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'type'))
    AddonInfo.add_member(:addon_versions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddonVersionInfoList, location_name: 'addonVersions'))
    AddonInfo.add_member(:publisher, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'publisher'))
    AddonInfo.add_member(:owner, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'owner'))
    AddonInfo.add_member(:marketplace_information, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MarketplaceInformation, location_name: 'marketplaceInformation'))
    AddonInfo.add_member(:default_namespace, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'defaultNamespace'))
    AddonInfo.type = Types::AddonInfo
    AddonIssue.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddonIssueCode, location_name: 'code'))
    AddonIssue.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    AddonIssue.add_member(:resource_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'resourceIds'))
    AddonIssue.type = Types::AddonIssue
    AddonIssueCode.add_member(:access_denied, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACCESS_DENIED', traits: {"smithy.api#enumValue" => "AccessDenied"}))
    AddonIssueCode.add_member(:internal_failure, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INTERNAL_FAILURE', traits: {"smithy.api#enumValue" => "InternalFailure"}))
    AddonIssueCode.add_member(:cluster_unreachable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CLUSTER_UNREACHABLE', traits: {"smithy.api#enumValue" => "ClusterUnreachable"}))
    AddonIssueCode.add_member(:insufficient_number_of_replicas, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INSUFFICIENT_NUMBER_OF_REPLICAS', traits: {"smithy.api#enumValue" => "InsufficientNumberOfReplicas"}))
    AddonIssueCode.add_member(:configuration_conflict, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONFIGURATION_CONFLICT', traits: {"smithy.api#enumValue" => "ConfigurationConflict"}))
    AddonIssueCode.add_member(:admission_request_denied, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ADMISSION_REQUEST_DENIED', traits: {"smithy.api#enumValue" => "AdmissionRequestDenied"}))
    AddonIssueCode.add_member(:unsupported_addon_modification, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNSUPPORTED_ADDON_MODIFICATION', traits: {"smithy.api#enumValue" => "UnsupportedAddonModification"}))
    AddonIssueCode.add_member(:k8_s_resource_not_found, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'K8S_RESOURCE_NOT_FOUND', traits: {"smithy.api#enumValue" => "K8sResourceNotFound"}))
    AddonIssueCode.add_member(:addon_subscription_needed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ADDON_SUBSCRIPTION_NEEDED', traits: {"smithy.api#enumValue" => "AddonSubscriptionNeeded"}))
    AddonIssueCode.add_member(:addon_permission_failure, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ADDON_PERMISSION_FAILURE', traits: {"smithy.api#enumValue" => "AddonPermissionFailure"}))
    AddonIssueList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddonIssue)
    AddonNamespaceConfigRequest.add_member(:namespace, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Namespace, location_name: 'namespace'))
    AddonNamespaceConfigRequest.type = Types::AddonNamespaceConfigRequest
    AddonNamespaceConfigResponse.add_member(:namespace, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Namespace, location_name: 'namespace'))
    AddonNamespaceConfigResponse.type = Types::AddonNamespaceConfigResponse
    AddonPodIdentityAssociations.add_member(:service_account, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'serviceAccount', traits: {"smithy.api#required" => {}}))
    AddonPodIdentityAssociations.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'roleArn', traits: {"smithy.api#required" => {}}))
    AddonPodIdentityAssociations.type = Types::AddonPodIdentityAssociations
    AddonPodIdentityAssociationsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddonPodIdentityAssociations)
    AddonPodIdentityConfiguration.add_member(:service_account, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'serviceAccount'))
    AddonPodIdentityConfiguration.add_member(:recommended_managed_policies, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'recommendedManagedPolicies'))
    AddonPodIdentityConfiguration.type = Types::AddonPodIdentityConfiguration
    AddonPodIdentityConfigurationList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddonPodIdentityConfiguration)
    AddonStatus.add_member(:creating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "CREATING"}))
    AddonStatus.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    AddonStatus.add_member(:create_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATE_FAILED', traits: {"smithy.api#enumValue" => "CREATE_FAILED"}))
    AddonStatus.add_member(:updating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATING', traits: {"smithy.api#enumValue" => "UPDATING"}))
    AddonStatus.add_member(:deleting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    AddonStatus.add_member(:delete_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETE_FAILED', traits: {"smithy.api#enumValue" => "DELETE_FAILED"}))
    AddonStatus.add_member(:degraded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEGRADED', traits: {"smithy.api#enumValue" => "DEGRADED"}))
    AddonStatus.add_member(:update_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATE_FAILED', traits: {"smithy.api#enumValue" => "UPDATE_FAILED"}))
    AddonVersionInfo.add_member(:addon_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'addonVersion'))
    AddonVersionInfo.add_member(:architecture, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'architecture'))
    AddonVersionInfo.add_member(:compute_types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'computeTypes'))
    AddonVersionInfo.add_member(:compatibilities, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Compatibilities, location_name: 'compatibilities'))
    AddonVersionInfo.add_member(:requires_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'requiresConfiguration', traits: {"smithy.api#default" => false}))
    AddonVersionInfo.add_member(:requires_iam_permissions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'requiresIamPermissions', traits: {"smithy.api#default" => false}))
    AddonVersionInfo.type = Types::AddonVersionInfo
    AddonVersionInfoList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddonVersionInfo)
    Addons.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddonInfo)
    AssociateAccessPolicyRequest.add_member(:cluster_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clusterName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociateAccessPolicyRequest.add_member(:principal_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'principalArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociateAccessPolicyRequest.add_member(:policy_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'policyArn', traits: {"smithy.api#required" => {}}))
    AssociateAccessPolicyRequest.add_member(:access_scope, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessScope, location_name: 'accessScope', traits: {"smithy.api#required" => {}}))
    AssociateAccessPolicyRequest.type = Types::AssociateAccessPolicyRequest
    AssociateAccessPolicyResponse.add_member(:cluster_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clusterName'))
    AssociateAccessPolicyResponse.add_member(:principal_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'principalArn'))
    AssociateAccessPolicyResponse.add_member(:associated_access_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociatedAccessPolicy, location_name: 'associatedAccessPolicy'))
    AssociateAccessPolicyResponse.type = Types::AssociateAccessPolicyResponse
    AssociateEncryptionConfigRequest.add_member(:cluster_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clusterName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociateEncryptionConfigRequest.add_member(:encryption_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionConfigList, location_name: 'encryptionConfig', traits: {"smithy.api#required" => {}}))
    AssociateEncryptionConfigRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clientRequestToken', traits: {"smithy.api#idempotencyToken" => {}}))
    AssociateEncryptionConfigRequest.type = Types::AssociateEncryptionConfigRequest
    AssociateEncryptionConfigResponse.add_member(:update, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Update, location_name: 'update'))
    AssociateEncryptionConfigResponse.type = Types::AssociateEncryptionConfigResponse
    AssociateIdentityProviderConfigRequest.add_member(:cluster_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clusterName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociateIdentityProviderConfigRequest.add_member(:oidc, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OidcIdentityProviderConfigRequest, location_name: 'oidc', traits: {"smithy.api#required" => {}}))
    AssociateIdentityProviderConfigRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    AssociateIdentityProviderConfigRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clientRequestToken', traits: {"smithy.api#idempotencyToken" => {}}))
    AssociateIdentityProviderConfigRequest.type = Types::AssociateIdentityProviderConfigRequest
    AssociateIdentityProviderConfigResponse.add_member(:update, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Update, location_name: 'update'))
    AssociateIdentityProviderConfigResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    AssociateIdentityProviderConfigResponse.type = Types::AssociateIdentityProviderConfigResponse
    AssociatedAccessPoliciesList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociatedAccessPolicy)
    AssociatedAccessPolicy.add_member(:policy_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'policyArn'))
    AssociatedAccessPolicy.add_member(:access_scope, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessScope, location_name: 'accessScope'))
    AssociatedAccessPolicy.add_member(:associated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'associatedAt'))
    AssociatedAccessPolicy.add_member(:modified_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'modifiedAt'))
    AssociatedAccessPolicy.type = Types::AssociatedAccessPolicy
    AuthenticationMode.add_member(:api, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'API', traits: {"smithy.api#enumValue" => "API"}))
    AuthenticationMode.add_member(:api_and_config_map, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'API_AND_CONFIG_MAP', traits: {"smithy.api#enumValue" => "API_AND_CONFIG_MAP"}))
    AuthenticationMode.add_member(:config_map, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONFIG_MAP', traits: {"smithy.api#enumValue" => "CONFIG_MAP"}))
    AutoScalingGroup.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name'))
    AutoScalingGroup.type = Types::AutoScalingGroup
    AutoScalingGroupList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutoScalingGroup)
    BadRequestException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    BadRequestException.type = Types::BadRequestException
    BlockStorage.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: 'enabled'))
    BlockStorage.type = Types::BlockStorage
    CapacityTypes.add_member(:on_demand, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ON_DEMAND', traits: {"smithy.api#enumValue" => "ON_DEMAND"}))
    CapacityTypes.add_member(:spot, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SPOT', traits: {"smithy.api#enumValue" => "SPOT"}))
    CapacityTypes.add_member(:capacity_block, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CAPACITY_BLOCK', traits: {"smithy.api#enumValue" => "CAPACITY_BLOCK"}))
    Category.add_member(:upgrade_readiness, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPGRADE_READINESS', traits: {"smithy.api#enumValue" => "UPGRADE_READINESS"}))
    Category.add_member(:misconfiguration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MISCONFIGURATION', traits: {"smithy.api#enumValue" => "MISCONFIGURATION"}))
    CategoryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Category)
    Certificate.add_member(:data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'data'))
    Certificate.type = Types::Certificate
    ClientException.add_member(:cluster_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clusterName'))
    ClientException.add_member(:nodegroup_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nodegroupName'))
    ClientException.add_member(:addon_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'addonName'))
    ClientException.add_member(:subscription_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'subscriptionId'))
    ClientException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    ClientException.type = Types::ClientException
    ClientStat.add_member(:user_agent, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'userAgent'))
    ClientStat.add_member(:number_of_requests_last30_days, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'numberOfRequestsLast30Days', traits: {"smithy.api#default" => 0}))
    ClientStat.add_member(:last_request_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastRequestTime'))
    ClientStat.type = Types::ClientStat
    ClientStats.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientStat)
    Cluster.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name'))
    Cluster.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'arn'))
    Cluster.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdAt'))
    Cluster.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'version'))
    Cluster.add_member(:endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'endpoint'))
    Cluster.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'roleArn'))
    Cluster.add_member(:resources_vpc_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcConfigResponse, location_name: 'resourcesVpcConfig'))
    Cluster.add_member(:kubernetes_network_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KubernetesNetworkConfigResponse, location_name: 'kubernetesNetworkConfig'))
    Cluster.add_member(:logging, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Logging, location_name: 'logging'))
    Cluster.add_member(:identity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identity, location_name: 'identity'))
    Cluster.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterStatus, location_name: 'status'))
    Cluster.add_member(:certificate_authority, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Certificate, location_name: 'certificateAuthority'))
    Cluster.add_member(:client_request_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clientRequestToken'))
    Cluster.add_member(:platform_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'platformVersion'))
    Cluster.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    Cluster.add_member(:encryption_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionConfigList, location_name: 'encryptionConfig'))
    Cluster.add_member(:connector_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorConfigResponse, location_name: 'connectorConfig'))
    Cluster.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id'))
    Cluster.add_member(:health, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterHealth, location_name: 'health'))
    Cluster.add_member(:outpost_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutpostConfigResponse, location_name: 'outpostConfig'))
    Cluster.add_member(:access_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessConfigResponse, location_name: 'accessConfig'))
    Cluster.add_member(:upgrade_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpgradePolicyResponse, location_name: 'upgradePolicy'))
    Cluster.add_member(:zonal_shift_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ZonalShiftConfigResponse, location_name: 'zonalShiftConfig'))
    Cluster.add_member(:remote_network_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RemoteNetworkConfigResponse, location_name: 'remoteNetworkConfig'))
    Cluster.add_member(:compute_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComputeConfigResponse, location_name: 'computeConfig'))
    Cluster.add_member(:storage_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StorageConfigResponse, location_name: 'storageConfig'))
    Cluster.add_member(:deletion_protection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: 'deletionProtection'))
    Cluster.type = Types::Cluster
    ClusterHealth.add_member(:issues, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterIssueList, location_name: 'issues'))
    ClusterHealth.type = Types::ClusterHealth
    ClusterIssue.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterIssueCode, location_name: 'code'))
    ClusterIssue.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    ClusterIssue.add_member(:resource_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'resourceIds'))
    ClusterIssue.type = Types::ClusterIssue
    ClusterIssueCode.add_member(:access_denied, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACCESS_DENIED', traits: {"smithy.api#enumValue" => "AccessDenied"}))
    ClusterIssueCode.add_member(:cluster_unreachable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CLUSTER_UNREACHABLE', traits: {"smithy.api#enumValue" => "ClusterUnreachable"}))
    ClusterIssueCode.add_member(:configuration_conflict, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONFIGURATION_CONFLICT', traits: {"smithy.api#enumValue" => "ConfigurationConflict"}))
    ClusterIssueCode.add_member(:internal_failure, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INTERNAL_FAILURE', traits: {"smithy.api#enumValue" => "InternalFailure"}))
    ClusterIssueCode.add_member(:resource_limit_exceeded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RESOURCE_LIMIT_EXCEEDED', traits: {"smithy.api#enumValue" => "ResourceLimitExceeded"}))
    ClusterIssueCode.add_member(:resource_not_found, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RESOURCE_NOT_FOUND', traits: {"smithy.api#enumValue" => "ResourceNotFound"}))
    ClusterIssueCode.add_member(:iam_role_not_found, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IAM_ROLE_NOT_FOUND', traits: {"smithy.api#enumValue" => "IamRoleNotFound"}))
    ClusterIssueCode.add_member(:vpc_not_found, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VPC_NOT_FOUND', traits: {"smithy.api#enumValue" => "VpcNotFound"}))
    ClusterIssueCode.add_member(:insufficient_free_addresses, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INSUFFICIENT_FREE_ADDRESSES', traits: {"smithy.api#enumValue" => "InsufficientFreeAddresses"}))
    ClusterIssueCode.add_member(:ec2_service_not_subscribed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EC2_SERVICE_NOT_SUBSCRIBED', traits: {"smithy.api#enumValue" => "Ec2ServiceNotSubscribed"}))
    ClusterIssueCode.add_member(:ec2_subnet_not_found, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EC2_SUBNET_NOT_FOUND', traits: {"smithy.api#enumValue" => "Ec2SubnetNotFound"}))
    ClusterIssueCode.add_member(:ec2_security_group_not_found, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EC2_SECURITY_GROUP_NOT_FOUND', traits: {"smithy.api#enumValue" => "Ec2SecurityGroupNotFound"}))
    ClusterIssueCode.add_member(:kms_grant_revoked, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'KMS_GRANT_REVOKED', traits: {"smithy.api#enumValue" => "KmsGrantRevoked"}))
    ClusterIssueCode.add_member(:kms_key_not_found, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'KMS_KEY_NOT_FOUND', traits: {"smithy.api#enumValue" => "KmsKeyNotFound"}))
    ClusterIssueCode.add_member(:kms_key_marked_for_deletion, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'KMS_KEY_MARKED_FOR_DELETION', traits: {"smithy.api#enumValue" => "KmsKeyMarkedForDeletion"}))
    ClusterIssueCode.add_member(:kms_key_disabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'KMS_KEY_DISABLED', traits: {"smithy.api#enumValue" => "KmsKeyDisabled"}))
    ClusterIssueCode.add_member(:sts_regional_endpoint_disabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STS_REGIONAL_ENDPOINT_DISABLED', traits: {"smithy.api#enumValue" => "StsRegionalEndpointDisabled"}))
    ClusterIssueCode.add_member(:unsupported_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNSUPPORTED_VERSION', traits: {"smithy.api#enumValue" => "UnsupportedVersion"}))
    ClusterIssueCode.add_member(:other, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OTHER', traits: {"smithy.api#enumValue" => "Other"}))
    ClusterIssueList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterIssue)
    ClusterStatus.add_member(:creating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "CREATING"}))
    ClusterStatus.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    ClusterStatus.add_member(:deleting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    ClusterStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    ClusterStatus.add_member(:updating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATING', traits: {"smithy.api#enumValue" => "UPDATING"}))
    ClusterStatus.add_member(:pending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING', traits: {"smithy.api#enumValue" => "PENDING"}))
    ClusterVersionInformation.add_member(:cluster_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clusterVersion'))
    ClusterVersionInformation.add_member(:cluster_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clusterType'))
    ClusterVersionInformation.add_member(:default_platform_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'defaultPlatformVersion'))
    ClusterVersionInformation.add_member(:default_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'defaultVersion', traits: {"smithy.api#default" => false}))
    ClusterVersionInformation.add_member(:release_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'releaseDate'))
    ClusterVersionInformation.add_member(:end_of_standard_support_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'endOfStandardSupportDate'))
    ClusterVersionInformation.add_member(:end_of_extended_support_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'endOfExtendedSupportDate'))
    ClusterVersionInformation.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterVersionStatus, location_name: 'status'))
    ClusterVersionInformation.add_member(:version_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VersionStatus, location_name: 'versionStatus'))
    ClusterVersionInformation.add_member(:kubernetes_patch_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'kubernetesPatchVersion'))
    ClusterVersionInformation.type = Types::ClusterVersionInformation
    ClusterVersionList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterVersionInformation)
    ClusterVersionStatus.add_member(:unsupported, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'unsupported', traits: {"smithy.api#enumValue" => "unsupported"}))
    ClusterVersionStatus.add_member(:standard_support, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'standard_support', traits: {"smithy.api#enumValue" => "standard-support"}))
    ClusterVersionStatus.add_member(:extended_support, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'extended_support', traits: {"smithy.api#enumValue" => "extended-support"}))
    Compatibilities.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Compatibility)
    Compatibility.add_member(:cluster_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clusterVersion'))
    Compatibility.add_member(:platform_versions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'platformVersions'))
    Compatibility.add_member(:default_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'defaultVersion', traits: {"smithy.api#default" => false}))
    Compatibility.type = Types::Compatibility
    ComputeConfigRequest.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: 'enabled'))
    ComputeConfigRequest.add_member(:node_pools, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'nodePools'))
    ComputeConfigRequest.add_member(:node_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nodeRoleArn'))
    ComputeConfigRequest.type = Types::ComputeConfigRequest
    ComputeConfigResponse.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: 'enabled'))
    ComputeConfigResponse.add_member(:node_pools, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'nodePools'))
    ComputeConfigResponse.add_member(:node_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nodeRoleArn'))
    ComputeConfigResponse.type = Types::ComputeConfigResponse
    ConnectorConfigProvider.add_member(:eks_anywhere, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EKS_ANYWHERE', traits: {"smithy.api#enumValue" => "EKS_ANYWHERE"}))
    ConnectorConfigProvider.add_member(:anthos, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ANTHOS', traits: {"smithy.api#enumValue" => "ANTHOS"}))
    ConnectorConfigProvider.add_member(:gke, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GKE', traits: {"smithy.api#enumValue" => "GKE"}))
    ConnectorConfigProvider.add_member(:aks, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AKS', traits: {"smithy.api#enumValue" => "AKS"}))
    ConnectorConfigProvider.add_member(:openshift, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OPENSHIFT', traits: {"smithy.api#enumValue" => "OPENSHIFT"}))
    ConnectorConfigProvider.add_member(:tanzu, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TANZU', traits: {"smithy.api#enumValue" => "TANZU"}))
    ConnectorConfigProvider.add_member(:rancher, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RANCHER', traits: {"smithy.api#enumValue" => "RANCHER"}))
    ConnectorConfigProvider.add_member(:ec2, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EC2', traits: {"smithy.api#enumValue" => "EC2"}))
    ConnectorConfigProvider.add_member(:other, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OTHER', traits: {"smithy.api#enumValue" => "OTHER"}))
    ConnectorConfigRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'roleArn', traits: {"smithy.api#required" => {}}))
    ConnectorConfigRequest.add_member(:provider, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorConfigProvider, location_name: 'provider', traits: {"smithy.api#required" => {}}))
    ConnectorConfigRequest.type = Types::ConnectorConfigRequest
    ConnectorConfigResponse.add_member(:activation_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'activationId'))
    ConnectorConfigResponse.add_member(:activation_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'activationCode'))
    ConnectorConfigResponse.add_member(:activation_expiry, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'activationExpiry'))
    ConnectorConfigResponse.add_member(:provider, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'provider'))
    ConnectorConfigResponse.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'roleArn'))
    ConnectorConfigResponse.type = Types::ConnectorConfigResponse
    ControlPlanePlacementRequest.add_member(:group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'groupName'))
    ControlPlanePlacementRequest.type = Types::ControlPlanePlacementRequest
    ControlPlanePlacementResponse.add_member(:group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'groupName'))
    ControlPlanePlacementResponse.type = Types::ControlPlanePlacementResponse
    CreateAccessConfigRequest.add_member(:bootstrap_cluster_creator_admin_permissions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: 'bootstrapClusterCreatorAdminPermissions'))
    CreateAccessConfigRequest.add_member(:authentication_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationMode, location_name: 'authenticationMode'))
    CreateAccessConfigRequest.type = Types::CreateAccessConfigRequest
    CreateAccessEntryRequest.add_member(:cluster_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clusterName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateAccessEntryRequest.add_member(:principal_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'principalArn', traits: {"smithy.api#required" => {}}))
    CreateAccessEntryRequest.add_member(:kubernetes_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'kubernetesGroups'))
    CreateAccessEntryRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    CreateAccessEntryRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clientRequestToken', traits: {"smithy.api#idempotencyToken" => {}}))
    CreateAccessEntryRequest.add_member(:username, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'username'))
    CreateAccessEntryRequest.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'type'))
    CreateAccessEntryRequest.type = Types::CreateAccessEntryRequest
    CreateAccessEntryResponse.add_member(:access_entry, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessEntry, location_name: 'accessEntry'))
    CreateAccessEntryResponse.type = Types::CreateAccessEntryResponse
    CreateAddonRequest.add_member(:cluster_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterName, location_name: 'clusterName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateAddonRequest.add_member(:addon_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'addonName', traits: {"smithy.api#required" => {}}))
    CreateAddonRequest.add_member(:addon_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'addonVersion'))
    CreateAddonRequest.add_member(:service_account_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'serviceAccountRoleArn'))
    CreateAddonRequest.add_member(:resolve_conflicts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResolveConflicts, location_name: 'resolveConflicts'))
    CreateAddonRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clientRequestToken', traits: {"smithy.api#idempotencyToken" => {}}))
    CreateAddonRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    CreateAddonRequest.add_member(:configuration_values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'configurationValues'))
    CreateAddonRequest.add_member(:pod_identity_associations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddonPodIdentityAssociationsList, location_name: 'podIdentityAssociations'))
    CreateAddonRequest.add_member(:namespace_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddonNamespaceConfigRequest, location_name: 'namespaceConfig'))
    CreateAddonRequest.type = Types::CreateAddonRequest
    CreateAddonResponse.add_member(:addon, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Addon, location_name: 'addon'))
    CreateAddonResponse.type = Types::CreateAddonResponse
    CreateClusterRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    CreateClusterRequest.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'version'))
    CreateClusterRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'roleArn', traits: {"smithy.api#required" => {}}))
    CreateClusterRequest.add_member(:resources_vpc_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcConfigRequest, location_name: 'resourcesVpcConfig', traits: {"smithy.api#required" => {}}))
    CreateClusterRequest.add_member(:kubernetes_network_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KubernetesNetworkConfigRequest, location_name: 'kubernetesNetworkConfig'))
    CreateClusterRequest.add_member(:logging, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Logging, location_name: 'logging'))
    CreateClusterRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clientRequestToken', traits: {"smithy.api#idempotencyToken" => {}}))
    CreateClusterRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    CreateClusterRequest.add_member(:encryption_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionConfigList, location_name: 'encryptionConfig'))
    CreateClusterRequest.add_member(:outpost_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutpostConfigRequest, location_name: 'outpostConfig'))
    CreateClusterRequest.add_member(:access_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAccessConfigRequest, location_name: 'accessConfig'))
    CreateClusterRequest.add_member(:bootstrap_self_managed_addons, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: 'bootstrapSelfManagedAddons'))
    CreateClusterRequest.add_member(:upgrade_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpgradePolicyRequest, location_name: 'upgradePolicy'))
    CreateClusterRequest.add_member(:zonal_shift_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ZonalShiftConfigRequest, location_name: 'zonalShiftConfig'))
    CreateClusterRequest.add_member(:remote_network_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RemoteNetworkConfigRequest, location_name: 'remoteNetworkConfig'))
    CreateClusterRequest.add_member(:compute_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComputeConfigRequest, location_name: 'computeConfig'))
    CreateClusterRequest.add_member(:storage_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StorageConfigRequest, location_name: 'storageConfig'))
    CreateClusterRequest.add_member(:deletion_protection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: 'deletionProtection'))
    CreateClusterRequest.type = Types::CreateClusterRequest
    CreateClusterResponse.add_member(:cluster, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Cluster, location_name: 'cluster'))
    CreateClusterResponse.type = Types::CreateClusterResponse
    CreateEksAnywhereSubscriptionRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EksAnywhereSubscriptionName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    CreateEksAnywhereSubscriptionRequest.add_member(:term, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EksAnywhereSubscriptionTerm, location_name: 'term', traits: {"smithy.api#required" => {}}))
    CreateEksAnywhereSubscriptionRequest.add_member(:license_quantity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'licenseQuantity', traits: {"smithy.api#default" => 0}))
    CreateEksAnywhereSubscriptionRequest.add_member(:license_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EksAnywhereSubscriptionLicenseType, location_name: 'licenseType'))
    CreateEksAnywhereSubscriptionRequest.add_member(:auto_renew, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'autoRenew', traits: {"smithy.api#default" => false}))
    CreateEksAnywhereSubscriptionRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clientRequestToken', traits: {"smithy.api#idempotencyToken" => {}}))
    CreateEksAnywhereSubscriptionRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    CreateEksAnywhereSubscriptionRequest.type = Types::CreateEksAnywhereSubscriptionRequest
    CreateEksAnywhereSubscriptionResponse.add_member(:subscription, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EksAnywhereSubscription, location_name: 'subscription'))
    CreateEksAnywhereSubscriptionResponse.type = Types::CreateEksAnywhereSubscriptionResponse
    CreateFargateProfileRequest.add_member(:fargate_profile_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'fargateProfileName', traits: {"smithy.api#required" => {}}))
    CreateFargateProfileRequest.add_member(:cluster_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clusterName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateFargateProfileRequest.add_member(:pod_execution_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'podExecutionRoleArn', traits: {"smithy.api#required" => {}}))
    CreateFargateProfileRequest.add_member(:subnets, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'subnets'))
    CreateFargateProfileRequest.add_member(:selectors, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FargateProfileSelectors, location_name: 'selectors'))
    CreateFargateProfileRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clientRequestToken', traits: {"smithy.api#idempotencyToken" => {}}))
    CreateFargateProfileRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    CreateFargateProfileRequest.type = Types::CreateFargateProfileRequest
    CreateFargateProfileResponse.add_member(:fargate_profile, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FargateProfile, location_name: 'fargateProfile'))
    CreateFargateProfileResponse.type = Types::CreateFargateProfileResponse
    CreateNodegroupRequest.add_member(:cluster_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clusterName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateNodegroupRequest.add_member(:nodegroup_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nodegroupName', traits: {"smithy.api#required" => {}}))
    CreateNodegroupRequest.add_member(:scaling_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NodegroupScalingConfig, location_name: 'scalingConfig'))
    CreateNodegroupRequest.add_member(:disk_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BoxedInteger, location_name: 'diskSize'))
    CreateNodegroupRequest.add_member(:subnets, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'subnets', traits: {"smithy.api#required" => {}}))
    CreateNodegroupRequest.add_member(:instance_types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'instanceTypes'))
    CreateNodegroupRequest.add_member(:ami_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AMITypes, location_name: 'amiType'))
    CreateNodegroupRequest.add_member(:remote_access, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RemoteAccessConfig, location_name: 'remoteAccess'))
    CreateNodegroupRequest.add_member(:node_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nodeRole', traits: {"smithy.api#required" => {}}))
    CreateNodegroupRequest.add_member(:labels, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LabelsMap, location_name: 'labels'))
    CreateNodegroupRequest.add_member(:taints, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TaintsList, location_name: 'taints'))
    CreateNodegroupRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    CreateNodegroupRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clientRequestToken', traits: {"smithy.api#idempotencyToken" => {}}))
    CreateNodegroupRequest.add_member(:launch_template, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchTemplateSpecification, location_name: 'launchTemplate'))
    CreateNodegroupRequest.add_member(:update_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NodegroupUpdateConfig, location_name: 'updateConfig'))
    CreateNodegroupRequest.add_member(:node_repair_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NodeRepairConfig, location_name: 'nodeRepairConfig'))
    CreateNodegroupRequest.add_member(:capacity_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CapacityTypes, location_name: 'capacityType'))
    CreateNodegroupRequest.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'version'))
    CreateNodegroupRequest.add_member(:release_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'releaseVersion'))
    CreateNodegroupRequest.type = Types::CreateNodegroupRequest
    CreateNodegroupResponse.add_member(:nodegroup, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Nodegroup, location_name: 'nodegroup'))
    CreateNodegroupResponse.type = Types::CreateNodegroupResponse
    CreatePodIdentityAssociationRequest.add_member(:cluster_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clusterName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreatePodIdentityAssociationRequest.add_member(:namespace, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'namespace', traits: {"smithy.api#required" => {}}))
    CreatePodIdentityAssociationRequest.add_member(:service_account, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'serviceAccount', traits: {"smithy.api#required" => {}}))
    CreatePodIdentityAssociationRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'roleArn', traits: {"smithy.api#required" => {}}))
    CreatePodIdentityAssociationRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clientRequestToken', traits: {"smithy.api#idempotencyToken" => {}}))
    CreatePodIdentityAssociationRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    CreatePodIdentityAssociationRequest.add_member(:disable_session_tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: 'disableSessionTags'))
    CreatePodIdentityAssociationRequest.add_member(:target_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'targetRoleArn'))
    CreatePodIdentityAssociationRequest.type = Types::CreatePodIdentityAssociationRequest
    CreatePodIdentityAssociationResponse.add_member(:association, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PodIdentityAssociation, location_name: 'association'))
    CreatePodIdentityAssociationResponse.type = Types::CreatePodIdentityAssociationResponse
    DeleteAccessEntryRequest.add_member(:cluster_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clusterName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAccessEntryRequest.add_member(:principal_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'principalArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAccessEntryRequest.type = Types::DeleteAccessEntryRequest
    DeleteAccessEntryResponse.type = Types::DeleteAccessEntryResponse
    DeleteAddonRequest.add_member(:cluster_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterName, location_name: 'clusterName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAddonRequest.add_member(:addon_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'addonName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAddonRequest.add_member(:preserve, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'preserve', traits: {"smithy.api#default" => false, "smithy.api#httpQuery" => "preserve"}))
    DeleteAddonRequest.type = Types::DeleteAddonRequest
    DeleteAddonResponse.add_member(:addon, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Addon, location_name: 'addon'))
    DeleteAddonResponse.type = Types::DeleteAddonResponse
    DeleteClusterRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteClusterRequest.type = Types::DeleteClusterRequest
    DeleteClusterResponse.add_member(:cluster, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Cluster, location_name: 'cluster'))
    DeleteClusterResponse.type = Types::DeleteClusterResponse
    DeleteEksAnywhereSubscriptionRequest.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteEksAnywhereSubscriptionRequest.type = Types::DeleteEksAnywhereSubscriptionRequest
    DeleteEksAnywhereSubscriptionResponse.add_member(:subscription, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EksAnywhereSubscription, location_name: 'subscription'))
    DeleteEksAnywhereSubscriptionResponse.type = Types::DeleteEksAnywhereSubscriptionResponse
    DeleteFargateProfileRequest.add_member(:cluster_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clusterName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteFargateProfileRequest.add_member(:fargate_profile_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'fargateProfileName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteFargateProfileRequest.type = Types::DeleteFargateProfileRequest
    DeleteFargateProfileResponse.add_member(:fargate_profile, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FargateProfile, location_name: 'fargateProfile'))
    DeleteFargateProfileResponse.type = Types::DeleteFargateProfileResponse
    DeleteNodegroupRequest.add_member(:cluster_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clusterName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteNodegroupRequest.add_member(:nodegroup_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nodegroupName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteNodegroupRequest.type = Types::DeleteNodegroupRequest
    DeleteNodegroupResponse.add_member(:nodegroup, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Nodegroup, location_name: 'nodegroup'))
    DeleteNodegroupResponse.type = Types::DeleteNodegroupResponse
    DeletePodIdentityAssociationRequest.add_member(:cluster_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clusterName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeletePodIdentityAssociationRequest.add_member(:association_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'associationId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeletePodIdentityAssociationRequest.type = Types::DeletePodIdentityAssociationRequest
    DeletePodIdentityAssociationResponse.add_member(:association, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PodIdentityAssociation, location_name: 'association'))
    DeletePodIdentityAssociationResponse.type = Types::DeletePodIdentityAssociationResponse
    DeprecationDetail.add_member(:usage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'usage'))
    DeprecationDetail.add_member(:replaced_with, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'replacedWith'))
    DeprecationDetail.add_member(:stop_serving_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'stopServingVersion'))
    DeprecationDetail.add_member(:start_serving_replacement_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'startServingReplacementVersion'))
    DeprecationDetail.add_member(:client_stats, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientStats, location_name: 'clientStats'))
    DeprecationDetail.type = Types::DeprecationDetail
    DeprecationDetails.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeprecationDetail)
    DeregisterClusterRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeregisterClusterRequest.type = Types::DeregisterClusterRequest
    DeregisterClusterResponse.add_member(:cluster, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Cluster, location_name: 'cluster'))
    DeregisterClusterResponse.type = Types::DeregisterClusterResponse
    DescribeAccessEntryRequest.add_member(:cluster_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clusterName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeAccessEntryRequest.add_member(:principal_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'principalArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeAccessEntryRequest.type = Types::DescribeAccessEntryRequest
    DescribeAccessEntryResponse.add_member(:access_entry, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessEntry, location_name: 'accessEntry'))
    DescribeAccessEntryResponse.type = Types::DescribeAccessEntryResponse
    DescribeAddonConfigurationRequest.add_member(:addon_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'addonName', traits: {"smithy.api#httpQuery" => "addonName", "smithy.api#required" => {}}))
    DescribeAddonConfigurationRequest.add_member(:addon_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'addonVersion', traits: {"smithy.api#httpQuery" => "addonVersion", "smithy.api#required" => {}}))
    DescribeAddonConfigurationRequest.type = Types::DescribeAddonConfigurationRequest
    DescribeAddonConfigurationResponse.add_member(:addon_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'addonName'))
    DescribeAddonConfigurationResponse.add_member(:addon_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'addonVersion'))
    DescribeAddonConfigurationResponse.add_member(:configuration_schema, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'configurationSchema'))
    DescribeAddonConfigurationResponse.add_member(:pod_identity_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddonPodIdentityConfigurationList, location_name: 'podIdentityConfiguration'))
    DescribeAddonConfigurationResponse.type = Types::DescribeAddonConfigurationResponse
    DescribeAddonRequest.add_member(:cluster_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterName, location_name: 'clusterName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeAddonRequest.add_member(:addon_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'addonName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeAddonRequest.type = Types::DescribeAddonRequest
    DescribeAddonResponse.add_member(:addon, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Addon, location_name: 'addon'))
    DescribeAddonResponse.type = Types::DescribeAddonResponse
    DescribeAddonVersionsRequest.add_member(:kubernetes_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'kubernetesVersion', traits: {"smithy.api#httpQuery" => "kubernetesVersion"}))
    DescribeAddonVersionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAddonVersionsRequestMaxResults, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    DescribeAddonVersionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    DescribeAddonVersionsRequest.add_member(:addon_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'addonName', traits: {"smithy.api#httpQuery" => "addonName"}))
    DescribeAddonVersionsRequest.add_member(:types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'types', traits: {"smithy.api#httpQuery" => "types"}))
    DescribeAddonVersionsRequest.add_member(:publishers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'publishers', traits: {"smithy.api#httpQuery" => "publishers"}))
    DescribeAddonVersionsRequest.add_member(:owners, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'owners', traits: {"smithy.api#httpQuery" => "owners"}))
    DescribeAddonVersionsRequest.type = Types::DescribeAddonVersionsRequest
    DescribeAddonVersionsResponse.add_member(:addons, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Addons, location_name: 'addons'))
    DescribeAddonVersionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken'))
    DescribeAddonVersionsResponse.type = Types::DescribeAddonVersionsResponse
    DescribeClusterRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeClusterRequest.type = Types::DescribeClusterRequest
    DescribeClusterResponse.add_member(:cluster, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Cluster, location_name: 'cluster'))
    DescribeClusterResponse.type = Types::DescribeClusterResponse
    DescribeClusterVersionsRequest.add_member(:cluster_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clusterType', traits: {"smithy.api#httpQuery" => "clusterType"}))
    DescribeClusterVersionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeClusterVersionMaxResults, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    DescribeClusterVersionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    DescribeClusterVersionsRequest.add_member(:default_only, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: 'defaultOnly', traits: {"smithy.api#httpQuery" => "defaultOnly"}))
    DescribeClusterVersionsRequest.add_member(:include_all, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: 'includeAll', traits: {"smithy.api#httpQuery" => "includeAll"}))
    DescribeClusterVersionsRequest.add_member(:cluster_versions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'clusterVersions', traits: {"smithy.api#httpQuery" => "clusterVersions"}))
    DescribeClusterVersionsRequest.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterVersionStatus, location_name: 'status', traits: {"smithy.api#deprecated" => {"since" => "2025-02-15", "message" => "status has been replaced by versionStatus"}, "smithy.api#httpQuery" => "status"}))
    DescribeClusterVersionsRequest.add_member(:version_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VersionStatus, location_name: 'versionStatus', traits: {"smithy.api#httpQuery" => "versionStatus"}))
    DescribeClusterVersionsRequest.type = Types::DescribeClusterVersionsRequest
    DescribeClusterVersionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken'))
    DescribeClusterVersionsResponse.add_member(:cluster_versions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterVersionList, location_name: 'clusterVersions'))
    DescribeClusterVersionsResponse.type = Types::DescribeClusterVersionsResponse
    DescribeEksAnywhereSubscriptionRequest.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeEksAnywhereSubscriptionRequest.type = Types::DescribeEksAnywhereSubscriptionRequest
    DescribeEksAnywhereSubscriptionResponse.add_member(:subscription, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EksAnywhereSubscription, location_name: 'subscription'))
    DescribeEksAnywhereSubscriptionResponse.type = Types::DescribeEksAnywhereSubscriptionResponse
    DescribeFargateProfileRequest.add_member(:cluster_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clusterName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeFargateProfileRequest.add_member(:fargate_profile_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'fargateProfileName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeFargateProfileRequest.type = Types::DescribeFargateProfileRequest
    DescribeFargateProfileResponse.add_member(:fargate_profile, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FargateProfile, location_name: 'fargateProfile'))
    DescribeFargateProfileResponse.type = Types::DescribeFargateProfileResponse
    DescribeIdentityProviderConfigRequest.add_member(:cluster_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clusterName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeIdentityProviderConfigRequest.add_member(:identity_provider_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityProviderConfig, location_name: 'identityProviderConfig', traits: {"smithy.api#required" => {}}))
    DescribeIdentityProviderConfigRequest.type = Types::DescribeIdentityProviderConfigRequest
    DescribeIdentityProviderConfigResponse.add_member(:identity_provider_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityProviderConfigResponse, location_name: 'identityProviderConfig'))
    DescribeIdentityProviderConfigResponse.type = Types::DescribeIdentityProviderConfigResponse
    DescribeInsightRequest.add_member(:cluster_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clusterName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeInsightRequest.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeInsightRequest.type = Types::DescribeInsightRequest
    DescribeInsightResponse.add_member(:insight, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Insight, location_name: 'insight'))
    DescribeInsightResponse.type = Types::DescribeInsightResponse
    DescribeInsightsRefreshRequest.add_member(:cluster_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clusterName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeInsightsRefreshRequest.type = Types::DescribeInsightsRefreshRequest
    DescribeInsightsRefreshResponse.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    DescribeInsightsRefreshResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsightsRefreshStatus, location_name: 'status'))
    DescribeInsightsRefreshResponse.add_member(:started_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'startedAt'))
    DescribeInsightsRefreshResponse.add_member(:ended_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'endedAt'))
    DescribeInsightsRefreshResponse.type = Types::DescribeInsightsRefreshResponse
    DescribeNodegroupRequest.add_member(:cluster_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clusterName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeNodegroupRequest.add_member(:nodegroup_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nodegroupName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeNodegroupRequest.type = Types::DescribeNodegroupRequest
    DescribeNodegroupResponse.add_member(:nodegroup, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Nodegroup, location_name: 'nodegroup'))
    DescribeNodegroupResponse.type = Types::DescribeNodegroupResponse
    DescribePodIdentityAssociationRequest.add_member(:cluster_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clusterName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribePodIdentityAssociationRequest.add_member(:association_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'associationId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribePodIdentityAssociationRequest.type = Types::DescribePodIdentityAssociationRequest
    DescribePodIdentityAssociationResponse.add_member(:association, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PodIdentityAssociation, location_name: 'association'))
    DescribePodIdentityAssociationResponse.type = Types::DescribePodIdentityAssociationResponse
    DescribeUpdateRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeUpdateRequest.add_member(:update_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'updateId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeUpdateRequest.add_member(:nodegroup_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nodegroupName', traits: {"smithy.api#httpQuery" => "nodegroupName"}))
    DescribeUpdateRequest.add_member(:addon_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'addonName', traits: {"smithy.api#httpQuery" => "addonName"}))
    DescribeUpdateRequest.type = Types::DescribeUpdateRequest
    DescribeUpdateResponse.add_member(:update, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Update, location_name: 'update'))
    DescribeUpdateResponse.type = Types::DescribeUpdateResponse
    DisassociateAccessPolicyRequest.add_member(:cluster_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clusterName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateAccessPolicyRequest.add_member(:principal_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'principalArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateAccessPolicyRequest.add_member(:policy_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'policyArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateAccessPolicyRequest.type = Types::DisassociateAccessPolicyRequest
    DisassociateAccessPolicyResponse.type = Types::DisassociateAccessPolicyResponse
    DisassociateIdentityProviderConfigRequest.add_member(:cluster_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clusterName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateIdentityProviderConfigRequest.add_member(:identity_provider_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityProviderConfig, location_name: 'identityProviderConfig', traits: {"smithy.api#required" => {}}))
    DisassociateIdentityProviderConfigRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clientRequestToken', traits: {"smithy.api#idempotencyToken" => {}}))
    DisassociateIdentityProviderConfigRequest.type = Types::DisassociateIdentityProviderConfigRequest
    DisassociateIdentityProviderConfigResponse.add_member(:update, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Update, location_name: 'update'))
    DisassociateIdentityProviderConfigResponse.type = Types::DisassociateIdentityProviderConfigResponse
    EksAnywhereSubscription.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id'))
    EksAnywhereSubscription.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'arn'))
    EksAnywhereSubscription.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdAt'))
    EksAnywhereSubscription.add_member(:effective_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'effectiveDate'))
    EksAnywhereSubscription.add_member(:expiration_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'expirationDate'))
    EksAnywhereSubscription.add_member(:license_quantity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'licenseQuantity', traits: {"smithy.api#default" => 0}))
    EksAnywhereSubscription.add_member(:license_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EksAnywhereSubscriptionLicenseType, location_name: 'licenseType'))
    EksAnywhereSubscription.add_member(:term, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EksAnywhereSubscriptionTerm, location_name: 'term'))
    EksAnywhereSubscription.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'status'))
    EksAnywhereSubscription.add_member(:auto_renew, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'autoRenew', traits: {"smithy.api#default" => false}))
    EksAnywhereSubscription.add_member(:license_arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'licenseArns'))
    EksAnywhereSubscription.add_member(:licenses, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LicenseList, location_name: 'licenses'))
    EksAnywhereSubscription.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    EksAnywhereSubscription.type = Types::EksAnywhereSubscription
    EksAnywhereSubscriptionLicenseType.add_member(:cluster, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Cluster', traits: {"smithy.api#enumValue" => "Cluster"}))
    EksAnywhereSubscriptionList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EksAnywhereSubscription)
    EksAnywhereSubscriptionStatus.add_member(:creating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "CREATING"}))
    EksAnywhereSubscriptionStatus.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    EksAnywhereSubscriptionStatus.add_member(:updating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATING', traits: {"smithy.api#enumValue" => "UPDATING"}))
    EksAnywhereSubscriptionStatus.add_member(:expiring, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EXPIRING', traits: {"smithy.api#enumValue" => "EXPIRING"}))
    EksAnywhereSubscriptionStatus.add_member(:expired, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EXPIRED', traits: {"smithy.api#enumValue" => "EXPIRED"}))
    EksAnywhereSubscriptionStatus.add_member(:deleting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    EksAnywhereSubscriptionStatusValues.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EksAnywhereSubscriptionStatus)
    EksAnywhereSubscriptionTerm.add_member(:duration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'duration', traits: {"smithy.api#default" => 0}))
    EksAnywhereSubscriptionTerm.add_member(:unit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EksAnywhereSubscriptionTermUnit, location_name: 'unit'))
    EksAnywhereSubscriptionTerm.type = Types::EksAnywhereSubscriptionTerm
    EksAnywhereSubscriptionTermUnit.add_member(:months, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MONTHS', traits: {"smithy.api#enumValue" => "MONTHS"}))
    ElasticLoadBalancing.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: 'enabled'))
    ElasticLoadBalancing.type = Types::ElasticLoadBalancing
    EncryptionConfig.add_member(:resources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'resources'))
    EncryptionConfig.add_member(:provider, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Provider, location_name: 'provider'))
    EncryptionConfig.type = Types::EncryptionConfig
    EncryptionConfigList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionConfig)
    ErrorCode.add_member(:subnet_not_found, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUBNET_NOT_FOUND', traits: {"smithy.api#enumValue" => "SubnetNotFound"}))
    ErrorCode.add_member(:security_group_not_found, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SECURITY_GROUP_NOT_FOUND', traits: {"smithy.api#enumValue" => "SecurityGroupNotFound"}))
    ErrorCode.add_member(:eni_limit_reached, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENI_LIMIT_REACHED', traits: {"smithy.api#enumValue" => "EniLimitReached"}))
    ErrorCode.add_member(:ip_not_available, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IP_NOT_AVAILABLE', traits: {"smithy.api#enumValue" => "IpNotAvailable"}))
    ErrorCode.add_member(:access_denied, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACCESS_DENIED', traits: {"smithy.api#enumValue" => "AccessDenied"}))
    ErrorCode.add_member(:operation_not_permitted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OPERATION_NOT_PERMITTED', traits: {"smithy.api#enumValue" => "OperationNotPermitted"}))
    ErrorCode.add_member(:vpc_id_not_found, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VPC_ID_NOT_FOUND', traits: {"smithy.api#enumValue" => "VpcIdNotFound"}))
    ErrorCode.add_member(:unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNKNOWN', traits: {"smithy.api#enumValue" => "Unknown"}))
    ErrorCode.add_member(:node_creation_failure, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NODE_CREATION_FAILURE', traits: {"smithy.api#enumValue" => "NodeCreationFailure"}))
    ErrorCode.add_member(:pod_eviction_failure, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'POD_EVICTION_FAILURE', traits: {"smithy.api#enumValue" => "PodEvictionFailure"}))
    ErrorCode.add_member(:insufficient_free_addresses, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INSUFFICIENT_FREE_ADDRESSES', traits: {"smithy.api#enumValue" => "InsufficientFreeAddresses"}))
    ErrorCode.add_member(:cluster_unreachable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CLUSTER_UNREACHABLE', traits: {"smithy.api#enumValue" => "ClusterUnreachable"}))
    ErrorCode.add_member(:insufficient_number_of_replicas, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INSUFFICIENT_NUMBER_OF_REPLICAS', traits: {"smithy.api#enumValue" => "InsufficientNumberOfReplicas"}))
    ErrorCode.add_member(:configuration_conflict, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONFIGURATION_CONFLICT', traits: {"smithy.api#enumValue" => "ConfigurationConflict"}))
    ErrorCode.add_member(:admission_request_denied, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ADMISSION_REQUEST_DENIED', traits: {"smithy.api#enumValue" => "AdmissionRequestDenied"}))
    ErrorCode.add_member(:unsupported_addon_modification, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNSUPPORTED_ADDON_MODIFICATION', traits: {"smithy.api#enumValue" => "UnsupportedAddonModification"}))
    ErrorCode.add_member(:k8_s_resource_not_found, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'K8S_RESOURCE_NOT_FOUND', traits: {"smithy.api#enumValue" => "K8sResourceNotFound"}))
    ErrorDetail.add_member(:error_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'errorCode'))
    ErrorDetail.add_member(:error_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'errorMessage'))
    ErrorDetail.add_member(:resource_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'resourceIds'))
    ErrorDetail.type = Types::ErrorDetail
    ErrorDetails.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDetail)
    FargateProfile.add_member(:fargate_profile_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'fargateProfileName'))
    FargateProfile.add_member(:fargate_profile_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'fargateProfileArn'))
    FargateProfile.add_member(:cluster_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clusterName'))
    FargateProfile.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdAt'))
    FargateProfile.add_member(:pod_execution_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'podExecutionRoleArn'))
    FargateProfile.add_member(:subnets, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'subnets'))
    FargateProfile.add_member(:selectors, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FargateProfileSelectors, location_name: 'selectors'))
    FargateProfile.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FargateProfileStatus, location_name: 'status'))
    FargateProfile.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    FargateProfile.add_member(:health, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FargateProfileHealth, location_name: 'health'))
    FargateProfile.type = Types::FargateProfile
    FargateProfileHealth.add_member(:issues, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FargateProfileIssueList, location_name: 'issues'))
    FargateProfileHealth.type = Types::FargateProfileHealth
    FargateProfileIssue.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FargateProfileIssueCode, location_name: 'code'))
    FargateProfileIssue.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    FargateProfileIssue.add_member(:resource_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'resourceIds'))
    FargateProfileIssue.type = Types::FargateProfileIssue
    FargateProfileIssueCode.add_member(:pod_execution_role_already_in_use, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'POD_EXECUTION_ROLE_ALREADY_IN_USE', traits: {"smithy.api#enumValue" => "PodExecutionRoleAlreadyInUse"}))
    FargateProfileIssueCode.add_member(:access_denied, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACCESS_DENIED', traits: {"smithy.api#enumValue" => "AccessDenied"}))
    FargateProfileIssueCode.add_member(:cluster_unreachable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CLUSTER_UNREACHABLE', traits: {"smithy.api#enumValue" => "ClusterUnreachable"}))
    FargateProfileIssueCode.add_member(:internal_failure, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INTERNAL_FAILURE', traits: {"smithy.api#enumValue" => "InternalFailure"}))
    FargateProfileIssueList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: FargateProfileIssue)
    FargateProfileLabel.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    FargateProfileLabel.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    FargateProfileSelector.add_member(:namespace, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'namespace'))
    FargateProfileSelector.add_member(:labels, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FargateProfileLabel, location_name: 'labels'))
    FargateProfileSelector.type = Types::FargateProfileSelector
    FargateProfileSelectors.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: FargateProfileSelector)
    FargateProfileStatus.add_member(:creating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "CREATING"}))
    FargateProfileStatus.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    FargateProfileStatus.add_member(:deleting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    FargateProfileStatus.add_member(:create_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATE_FAILED', traits: {"smithy.api#enumValue" => "CREATE_FAILED"}))
    FargateProfileStatus.add_member(:delete_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETE_FAILED', traits: {"smithy.api#enumValue" => "DELETE_FAILED"}))
    Identity.add_member(:oidc, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OIDC, location_name: 'oidc'))
    Identity.type = Types::Identity
    IdentityProviderConfig.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'type', traits: {"smithy.api#required" => {}}))
    IdentityProviderConfig.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#required" => {}}))
    IdentityProviderConfig.type = Types::IdentityProviderConfig
    IdentityProviderConfigResponse.add_member(:oidc, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OidcIdentityProviderConfig, location_name: 'oidc'))
    IdentityProviderConfigResponse.type = Types::IdentityProviderConfigResponse
    IdentityProviderConfigs.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityProviderConfig)
    IncludeClustersList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    Insight.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id'))
    Insight.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name'))
    Insight.add_member(:category, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Category, location_name: 'category'))
    Insight.add_member(:kubernetes_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'kubernetesVersion'))
    Insight.add_member(:last_refresh_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastRefreshTime'))
    Insight.add_member(:last_transition_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastTransitionTime'))
    Insight.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'description'))
    Insight.add_member(:insight_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsightStatus, location_name: 'insightStatus'))
    Insight.add_member(:recommendation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'recommendation'))
    Insight.add_member(:additional_info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdditionalInfoMap, location_name: 'additionalInfo'))
    Insight.add_member(:resources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsightResourceDetails, location_name: 'resources'))
    Insight.add_member(:category_specific_summary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsightCategorySpecificSummary, location_name: 'categorySpecificSummary'))
    Insight.type = Types::Insight
    InsightCategorySpecificSummary.add_member(:deprecation_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeprecationDetails, location_name: 'deprecationDetails'))
    InsightCategorySpecificSummary.add_member(:addon_compatibility_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddonCompatibilityDetails, location_name: 'addonCompatibilityDetails'))
    InsightCategorySpecificSummary.type = Types::InsightCategorySpecificSummary
    InsightResourceDetail.add_member(:insight_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsightStatus, location_name: 'insightStatus'))
    InsightResourceDetail.add_member(:kubernetes_resource_uri, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'kubernetesResourceUri'))
    InsightResourceDetail.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'arn'))
    InsightResourceDetail.type = Types::InsightResourceDetail
    InsightResourceDetails.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsightResourceDetail)
    InsightStatus.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsightStatusValue, location_name: 'status'))
    InsightStatus.add_member(:reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'reason'))
    InsightStatus.type = Types::InsightStatus
    InsightStatusValue.add_member(:passing, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PASSING', traits: {"smithy.api#enumValue" => "PASSING"}))
    InsightStatusValue.add_member(:warning, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WARNING', traits: {"smithy.api#enumValue" => "WARNING"}))
    InsightStatusValue.add_member(:error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ERROR', traits: {"smithy.api#enumValue" => "ERROR"}))
    InsightStatusValue.add_member(:unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNKNOWN', traits: {"smithy.api#enumValue" => "UNKNOWN"}))
    InsightStatusValueList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsightStatusValue)
    InsightSummaries.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsightSummary)
    InsightSummary.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id'))
    InsightSummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name'))
    InsightSummary.add_member(:category, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Category, location_name: 'category'))
    InsightSummary.add_member(:kubernetes_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'kubernetesVersion'))
    InsightSummary.add_member(:last_refresh_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastRefreshTime'))
    InsightSummary.add_member(:last_transition_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastTransitionTime'))
    InsightSummary.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'description'))
    InsightSummary.add_member(:insight_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsightStatus, location_name: 'insightStatus'))
    InsightSummary.type = Types::InsightSummary
    InsightsFilter.add_member(:categories, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CategoryList, location_name: 'categories'))
    InsightsFilter.add_member(:kubernetes_versions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'kubernetesVersions'))
    InsightsFilter.add_member(:statuses, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsightStatusValueList, location_name: 'statuses'))
    InsightsFilter.type = Types::InsightsFilter
    InsightsRefreshStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_PROGRESS', traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    InsightsRefreshStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    InsightsRefreshStatus.add_member(:completed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETED', traits: {"smithy.api#enumValue" => "COMPLETED"}))
    InvalidParameterException.add_member(:cluster_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clusterName'))
    InvalidParameterException.add_member(:nodegroup_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nodegroupName'))
    InvalidParameterException.add_member(:fargate_profile_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'fargateProfileName'))
    InvalidParameterException.add_member(:addon_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'addonName'))
    InvalidParameterException.add_member(:subscription_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'subscriptionId'))
    InvalidParameterException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    InvalidParameterException.type = Types::InvalidParameterException
    InvalidRequestException.add_member(:cluster_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clusterName'))
    InvalidRequestException.add_member(:nodegroup_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nodegroupName'))
    InvalidRequestException.add_member(:addon_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'addonName'))
    InvalidRequestException.add_member(:subscription_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'subscriptionId'))
    InvalidRequestException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    InvalidRequestException.type = Types::InvalidRequestException
    InvalidStateException.add_member(:cluster_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clusterName'))
    InvalidStateException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    InvalidStateException.type = Types::InvalidStateException
    IpFamily.add_member(:ipv4, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IPV4', traits: {"smithy.api#enumValue" => "ipv4"}))
    IpFamily.add_member(:ipv6, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IPV6', traits: {"smithy.api#enumValue" => "ipv6"}))
    Issue.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NodegroupIssueCode, location_name: 'code'))
    Issue.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    Issue.add_member(:resource_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'resourceIds'))
    Issue.type = Types::Issue
    IssueList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Issue)
    KubernetesNetworkConfigRequest.add_member(:service_ipv4_cidr, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'serviceIpv4Cidr'))
    KubernetesNetworkConfigRequest.add_member(:ip_family, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IpFamily, location_name: 'ipFamily'))
    KubernetesNetworkConfigRequest.add_member(:elastic_load_balancing, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ElasticLoadBalancing, location_name: 'elasticLoadBalancing'))
    KubernetesNetworkConfigRequest.type = Types::KubernetesNetworkConfigRequest
    KubernetesNetworkConfigResponse.add_member(:service_ipv4_cidr, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'serviceIpv4Cidr'))
    KubernetesNetworkConfigResponse.add_member(:service_ipv6_cidr, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'serviceIpv6Cidr'))
    KubernetesNetworkConfigResponse.add_member(:ip_family, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IpFamily, location_name: 'ipFamily'))
    KubernetesNetworkConfigResponse.add_member(:elastic_load_balancing, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ElasticLoadBalancing, location_name: 'elasticLoadBalancing'))
    KubernetesNetworkConfigResponse.type = Types::KubernetesNetworkConfigResponse
    LaunchTemplateSpecification.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name'))
    LaunchTemplateSpecification.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'version'))
    LaunchTemplateSpecification.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id'))
    LaunchTemplateSpecification.type = Types::LaunchTemplateSpecification
    License.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id'))
    License.add_member(:token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'token'))
    License.type = Types::License
    LicenseList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: License)
    ListAccessEntriesRequest.add_member(:cluster_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clusterName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListAccessEntriesRequest.add_member(:associated_policy_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'associatedPolicyArn', traits: {"smithy.api#httpQuery" => "associatedPolicyArn"}))
    ListAccessEntriesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAccessEntriesRequestMaxResults, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListAccessEntriesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListAccessEntriesRequest.type = Types::ListAccessEntriesRequest
    ListAccessEntriesResponse.add_member(:access_entries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'accessEntries'))
    ListAccessEntriesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken'))
    ListAccessEntriesResponse.type = Types::ListAccessEntriesResponse
    ListAccessPoliciesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAccessPoliciesRequestMaxResults, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListAccessPoliciesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListAccessPoliciesRequest.type = Types::ListAccessPoliciesRequest
    ListAccessPoliciesResponse.add_member(:access_policies, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessPoliciesList, location_name: 'accessPolicies'))
    ListAccessPoliciesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken'))
    ListAccessPoliciesResponse.type = Types::ListAccessPoliciesResponse
    ListAddonsRequest.add_member(:cluster_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterName, location_name: 'clusterName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListAddonsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAddonsRequestMaxResults, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListAddonsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListAddonsRequest.type = Types::ListAddonsRequest
    ListAddonsResponse.add_member(:addons, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'addons'))
    ListAddonsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken'))
    ListAddonsResponse.type = Types::ListAddonsResponse
    ListAssociatedAccessPoliciesRequest.add_member(:cluster_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clusterName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListAssociatedAccessPoliciesRequest.add_member(:principal_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'principalArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListAssociatedAccessPoliciesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAssociatedAccessPoliciesRequestMaxResults, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListAssociatedAccessPoliciesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListAssociatedAccessPoliciesRequest.type = Types::ListAssociatedAccessPoliciesRequest
    ListAssociatedAccessPoliciesResponse.add_member(:cluster_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clusterName'))
    ListAssociatedAccessPoliciesResponse.add_member(:principal_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'principalArn'))
    ListAssociatedAccessPoliciesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken'))
    ListAssociatedAccessPoliciesResponse.add_member(:associated_access_policies, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociatedAccessPoliciesList, location_name: 'associatedAccessPolicies'))
    ListAssociatedAccessPoliciesResponse.type = Types::ListAssociatedAccessPoliciesResponse
    ListClustersRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListClustersRequestMaxResults, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListClustersRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListClustersRequest.add_member(:include, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IncludeClustersList, location_name: 'include', traits: {"smithy.api#httpQuery" => "include"}))
    ListClustersRequest.type = Types::ListClustersRequest
    ListClustersResponse.add_member(:clusters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'clusters'))
    ListClustersResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken'))
    ListClustersResponse.type = Types::ListClustersResponse
    ListEksAnywhereSubscriptionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListEksAnywhereSubscriptionsRequestMaxResults, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListEksAnywhereSubscriptionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListEksAnywhereSubscriptionsRequest.add_member(:include_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EksAnywhereSubscriptionStatusValues, location_name: 'includeStatus', traits: {"smithy.api#httpQuery" => "includeStatus"}))
    ListEksAnywhereSubscriptionsRequest.type = Types::ListEksAnywhereSubscriptionsRequest
    ListEksAnywhereSubscriptionsResponse.add_member(:subscriptions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EksAnywhereSubscriptionList, location_name: 'subscriptions'))
    ListEksAnywhereSubscriptionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken'))
    ListEksAnywhereSubscriptionsResponse.type = Types::ListEksAnywhereSubscriptionsResponse
    ListFargateProfilesRequest.add_member(:cluster_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clusterName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListFargateProfilesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FargateProfilesRequestMaxResults, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListFargateProfilesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListFargateProfilesRequest.type = Types::ListFargateProfilesRequest
    ListFargateProfilesResponse.add_member(:fargate_profile_names, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'fargateProfileNames'))
    ListFargateProfilesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken'))
    ListFargateProfilesResponse.type = Types::ListFargateProfilesResponse
    ListIdentityProviderConfigsRequest.add_member(:cluster_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clusterName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListIdentityProviderConfigsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListIdentityProviderConfigsRequestMaxResults, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListIdentityProviderConfigsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListIdentityProviderConfigsRequest.type = Types::ListIdentityProviderConfigsRequest
    ListIdentityProviderConfigsResponse.add_member(:identity_provider_configs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityProviderConfigs, location_name: 'identityProviderConfigs'))
    ListIdentityProviderConfigsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken'))
    ListIdentityProviderConfigsResponse.type = Types::ListIdentityProviderConfigsResponse
    ListInsightsRequest.add_member(:cluster_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clusterName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListInsightsRequest.add_member(:filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsightsFilter, location_name: 'filter'))
    ListInsightsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListInsightsMaxResults, location_name: 'maxResults'))
    ListInsightsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken'))
    ListInsightsRequest.type = Types::ListInsightsRequest
    ListInsightsResponse.add_member(:insights, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsightSummaries, location_name: 'insights'))
    ListInsightsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken'))
    ListInsightsResponse.type = Types::ListInsightsResponse
    ListNodegroupsRequest.add_member(:cluster_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clusterName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListNodegroupsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListNodegroupsRequestMaxResults, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListNodegroupsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListNodegroupsRequest.type = Types::ListNodegroupsRequest
    ListNodegroupsResponse.add_member(:nodegroups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'nodegroups'))
    ListNodegroupsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken'))
    ListNodegroupsResponse.type = Types::ListNodegroupsResponse
    ListPodIdentityAssociationsRequest.add_member(:cluster_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clusterName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListPodIdentityAssociationsRequest.add_member(:namespace, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'namespace', traits: {"smithy.api#httpQuery" => "namespace"}))
    ListPodIdentityAssociationsRequest.add_member(:service_account, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'serviceAccount', traits: {"smithy.api#httpQuery" => "serviceAccount"}))
    ListPodIdentityAssociationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListPodIdentityAssociationsMaxResults, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListPodIdentityAssociationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListPodIdentityAssociationsRequest.type = Types::ListPodIdentityAssociationsRequest
    ListPodIdentityAssociationsResponse.add_member(:associations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PodIdentityAssociationSummaries, location_name: 'associations'))
    ListPodIdentityAssociationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken'))
    ListPodIdentityAssociationsResponse.type = Types::ListPodIdentityAssociationsResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resourceArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ListUpdatesRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListUpdatesRequest.add_member(:nodegroup_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nodegroupName', traits: {"smithy.api#httpQuery" => "nodegroupName"}))
    ListUpdatesRequest.add_member(:addon_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'addonName', traits: {"smithy.api#httpQuery" => "addonName"}))
    ListUpdatesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListUpdatesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListUpdatesRequestMaxResults, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListUpdatesRequest.type = Types::ListUpdatesRequest
    ListUpdatesResponse.add_member(:update_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'updateIds'))
    ListUpdatesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken'))
    ListUpdatesResponse.type = Types::ListUpdatesResponse
    LogSetup.add_member(:types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogTypes, location_name: 'types'))
    LogSetup.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: 'enabled'))
    LogSetup.type = Types::LogSetup
    LogSetups.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogSetup)
    LogType.add_member(:api, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'API', traits: {"smithy.api#enumValue" => "api"}))
    LogType.add_member(:audit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AUDIT', traits: {"smithy.api#enumValue" => "audit"}))
    LogType.add_member(:authenticator, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AUTHENTICATOR', traits: {"smithy.api#enumValue" => "authenticator"}))
    LogType.add_member(:controller_manager, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONTROLLER_MANAGER', traits: {"smithy.api#enumValue" => "controllerManager"}))
    LogType.add_member(:scheduler, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SCHEDULER', traits: {"smithy.api#enumValue" => "scheduler"}))
    LogTypes.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogType)
    Logging.add_member(:cluster_logging, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogSetups, location_name: 'clusterLogging'))
    Logging.type = Types::Logging
    MarketplaceInformation.add_member(:product_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'productId'))
    MarketplaceInformation.add_member(:product_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'productUrl'))
    MarketplaceInformation.type = Types::MarketplaceInformation
    NodeRepairConfig.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: 'enabled'))
    NodeRepairConfig.add_member(:max_unhealthy_node_threshold_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonZeroInteger, location_name: 'maxUnhealthyNodeThresholdCount'))
    NodeRepairConfig.add_member(:max_unhealthy_node_threshold_percentage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PercentCapacity, location_name: 'maxUnhealthyNodeThresholdPercentage'))
    NodeRepairConfig.add_member(:max_parallel_nodes_repaired_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonZeroInteger, location_name: 'maxParallelNodesRepairedCount'))
    NodeRepairConfig.add_member(:max_parallel_nodes_repaired_percentage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PercentCapacity, location_name: 'maxParallelNodesRepairedPercentage'))
    NodeRepairConfig.add_member(:node_repair_config_overrides, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NodeRepairConfigOverridesList, location_name: 'nodeRepairConfigOverrides'))
    NodeRepairConfig.type = Types::NodeRepairConfig
    NodeRepairConfigOverrides.add_member(:node_monitoring_condition, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nodeMonitoringCondition'))
    NodeRepairConfigOverrides.add_member(:node_unhealthy_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nodeUnhealthyReason'))
    NodeRepairConfigOverrides.add_member(:min_repair_wait_time_mins, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonZeroInteger, location_name: 'minRepairWaitTimeMins'))
    NodeRepairConfigOverrides.add_member(:repair_action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepairAction, location_name: 'repairAction'))
    NodeRepairConfigOverrides.type = Types::NodeRepairConfigOverrides
    NodeRepairConfigOverridesList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: NodeRepairConfigOverrides)
    Nodegroup.add_member(:nodegroup_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nodegroupName'))
    Nodegroup.add_member(:nodegroup_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nodegroupArn'))
    Nodegroup.add_member(:cluster_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clusterName'))
    Nodegroup.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'version'))
    Nodegroup.add_member(:release_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'releaseVersion'))
    Nodegroup.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdAt'))
    Nodegroup.add_member(:modified_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'modifiedAt'))
    Nodegroup.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NodegroupStatus, location_name: 'status'))
    Nodegroup.add_member(:capacity_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CapacityTypes, location_name: 'capacityType'))
    Nodegroup.add_member(:scaling_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NodegroupScalingConfig, location_name: 'scalingConfig'))
    Nodegroup.add_member(:instance_types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'instanceTypes'))
    Nodegroup.add_member(:subnets, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'subnets'))
    Nodegroup.add_member(:remote_access, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RemoteAccessConfig, location_name: 'remoteAccess'))
    Nodegroup.add_member(:ami_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AMITypes, location_name: 'amiType'))
    Nodegroup.add_member(:node_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nodeRole'))
    Nodegroup.add_member(:labels, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LabelsMap, location_name: 'labels'))
    Nodegroup.add_member(:taints, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TaintsList, location_name: 'taints'))
    Nodegroup.add_member(:resources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NodegroupResources, location_name: 'resources'))
    Nodegroup.add_member(:disk_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BoxedInteger, location_name: 'diskSize'))
    Nodegroup.add_member(:health, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NodegroupHealth, location_name: 'health'))
    Nodegroup.add_member(:update_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NodegroupUpdateConfig, location_name: 'updateConfig'))
    Nodegroup.add_member(:node_repair_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NodeRepairConfig, location_name: 'nodeRepairConfig'))
    Nodegroup.add_member(:launch_template, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchTemplateSpecification, location_name: 'launchTemplate'))
    Nodegroup.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    Nodegroup.type = Types::Nodegroup
    NodegroupHealth.add_member(:issues, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IssueList, location_name: 'issues'))
    NodegroupHealth.type = Types::NodegroupHealth
    NodegroupIssueCode.add_member(:auto_scaling_group_not_found, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AUTO_SCALING_GROUP_NOT_FOUND', traits: {"smithy.api#enumValue" => "AutoScalingGroupNotFound"}))
    NodegroupIssueCode.add_member(:auto_scaling_group_invalid_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AUTO_SCALING_GROUP_INVALID_CONFIGURATION', traits: {"smithy.api#enumValue" => "AutoScalingGroupInvalidConfiguration"}))
    NodegroupIssueCode.add_member(:ec2_security_group_not_found, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EC2_SECURITY_GROUP_NOT_FOUND', traits: {"smithy.api#enumValue" => "Ec2SecurityGroupNotFound"}))
    NodegroupIssueCode.add_member(:ec2_security_group_deletion_failure, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EC2_SECURITY_GROUP_DELETION_FAILURE', traits: {"smithy.api#enumValue" => "Ec2SecurityGroupDeletionFailure"}))
    NodegroupIssueCode.add_member(:ec2_launch_template_not_found, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EC2_LAUNCH_TEMPLATE_NOT_FOUND', traits: {"smithy.api#enumValue" => "Ec2LaunchTemplateNotFound"}))
    NodegroupIssueCode.add_member(:ec2_launch_template_version_mismatch, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EC2_LAUNCH_TEMPLATE_VERSION_MISMATCH', traits: {"smithy.api#enumValue" => "Ec2LaunchTemplateVersionMismatch"}))
    NodegroupIssueCode.add_member(:ec2_subnet_not_found, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EC2_SUBNET_NOT_FOUND', traits: {"smithy.api#enumValue" => "Ec2SubnetNotFound"}))
    NodegroupIssueCode.add_member(:ec2_subnet_invalid_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EC2_SUBNET_INVALID_CONFIGURATION', traits: {"smithy.api#enumValue" => "Ec2SubnetInvalidConfiguration"}))
    NodegroupIssueCode.add_member(:iam_instance_profile_not_found, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IAM_INSTANCE_PROFILE_NOT_FOUND', traits: {"smithy.api#enumValue" => "IamInstanceProfileNotFound"}))
    NodegroupIssueCode.add_member(:ec2_subnet_missing_ipv6_assignment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EC2_SUBNET_MISSING_IPV6_ASSIGNMENT', traits: {"smithy.api#enumValue" => "Ec2SubnetMissingIpv6Assignment"}))
    NodegroupIssueCode.add_member(:iam_limit_exceeded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IAM_LIMIT_EXCEEDED', traits: {"smithy.api#enumValue" => "IamLimitExceeded"}))
    NodegroupIssueCode.add_member(:iam_node_role_not_found, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IAM_NODE_ROLE_NOT_FOUND', traits: {"smithy.api#enumValue" => "IamNodeRoleNotFound"}))
    NodegroupIssueCode.add_member(:node_creation_failure, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NODE_CREATION_FAILURE', traits: {"smithy.api#enumValue" => "NodeCreationFailure"}))
    NodegroupIssueCode.add_member(:asg_instance_launch_failures, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ASG_INSTANCE_LAUNCH_FAILURES', traits: {"smithy.api#enumValue" => "AsgInstanceLaunchFailures"}))
    NodegroupIssueCode.add_member(:instance_limit_exceeded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INSTANCE_LIMIT_EXCEEDED', traits: {"smithy.api#enumValue" => "InstanceLimitExceeded"}))
    NodegroupIssueCode.add_member(:insufficient_free_addresses, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INSUFFICIENT_FREE_ADDRESSES', traits: {"smithy.api#enumValue" => "InsufficientFreeAddresses"}))
    NodegroupIssueCode.add_member(:access_denied, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACCESS_DENIED', traits: {"smithy.api#enumValue" => "AccessDenied"}))
    NodegroupIssueCode.add_member(:internal_failure, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INTERNAL_FAILURE', traits: {"smithy.api#enumValue" => "InternalFailure"}))
    NodegroupIssueCode.add_member(:cluster_unreachable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CLUSTER_UNREACHABLE', traits: {"smithy.api#enumValue" => "ClusterUnreachable"}))
    NodegroupIssueCode.add_member(:ami_id_not_found, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AMI_ID_NOT_FOUND', traits: {"smithy.api#enumValue" => "AmiIdNotFound"}))
    NodegroupIssueCode.add_member(:auto_scaling_group_opt_in_required, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AUTO_SCALING_GROUP_OPT_IN_REQUIRED', traits: {"smithy.api#enumValue" => "AutoScalingGroupOptInRequired"}))
    NodegroupIssueCode.add_member(:auto_scaling_group_rate_limit_exceeded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AUTO_SCALING_GROUP_RATE_LIMIT_EXCEEDED', traits: {"smithy.api#enumValue" => "AutoScalingGroupRateLimitExceeded"}))
    NodegroupIssueCode.add_member(:ec2_launch_template_deletion_failure, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EC2_LAUNCH_TEMPLATE_DELETION_FAILURE', traits: {"smithy.api#enumValue" => "Ec2LaunchTemplateDeletionFailure"}))
    NodegroupIssueCode.add_member(:ec2_launch_template_invalid_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EC2_LAUNCH_TEMPLATE_INVALID_CONFIGURATION', traits: {"smithy.api#enumValue" => "Ec2LaunchTemplateInvalidConfiguration"}))
    NodegroupIssueCode.add_member(:ec2_launch_template_max_limit_exceeded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EC2_LAUNCH_TEMPLATE_MAX_LIMIT_EXCEEDED', traits: {"smithy.api#enumValue" => "Ec2LaunchTemplateMaxLimitExceeded"}))
    NodegroupIssueCode.add_member(:ec2_subnet_list_too_long, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EC2_SUBNET_LIST_TOO_LONG', traits: {"smithy.api#enumValue" => "Ec2SubnetListTooLong"}))
    NodegroupIssueCode.add_member(:iam_throttling, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IAM_THROTTLING', traits: {"smithy.api#enumValue" => "IamThrottling"}))
    NodegroupIssueCode.add_member(:node_termination_failure, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NODE_TERMINATION_FAILURE', traits: {"smithy.api#enumValue" => "NodeTerminationFailure"}))
    NodegroupIssueCode.add_member(:pod_eviction_failure, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'POD_EVICTION_FAILURE', traits: {"smithy.api#enumValue" => "PodEvictionFailure"}))
    NodegroupIssueCode.add_member(:source_ec2_launch_template_not_found, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SOURCE_EC2_LAUNCH_TEMPLATE_NOT_FOUND', traits: {"smithy.api#enumValue" => "SourceEc2LaunchTemplateNotFound"}))
    NodegroupIssueCode.add_member(:limit_exceeded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LIMIT_EXCEEDED', traits: {"smithy.api#enumValue" => "LimitExceeded"}))
    NodegroupIssueCode.add_member(:unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNKNOWN', traits: {"smithy.api#enumValue" => "Unknown"}))
    NodegroupIssueCode.add_member(:auto_scaling_group_instance_refresh_active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AUTO_SCALING_GROUP_INSTANCE_REFRESH_ACTIVE', traits: {"smithy.api#enumValue" => "AutoScalingGroupInstanceRefreshActive"}))
    NodegroupIssueCode.add_member(:kubernetes_label_invalid, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'KUBERNETES_LABEL_INVALID', traits: {"smithy.api#enumValue" => "KubernetesLabelInvalid"}))
    NodegroupIssueCode.add_member(:ec2_launch_template_version_max_limit_exceeded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EC2_LAUNCH_TEMPLATE_VERSION_MAX_LIMIT_EXCEEDED', traits: {"smithy.api#enumValue" => "Ec2LaunchTemplateVersionMaxLimitExceeded"}))
    NodegroupIssueCode.add_member(:ec2_instance_type_does_not_exist, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EC2_INSTANCE_TYPE_DOES_NOT_EXIST', traits: {"smithy.api#enumValue" => "Ec2InstanceTypeDoesNotExist"}))
    NodegroupResources.add_member(:auto_scaling_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutoScalingGroupList, location_name: 'autoScalingGroups'))
    NodegroupResources.add_member(:remote_access_security_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'remoteAccessSecurityGroup'))
    NodegroupResources.type = Types::NodegroupResources
    NodegroupScalingConfig.add_member(:min_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ZeroCapacity, location_name: 'minSize'))
    NodegroupScalingConfig.add_member(:max_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Capacity, location_name: 'maxSize'))
    NodegroupScalingConfig.add_member(:desired_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ZeroCapacity, location_name: 'desiredSize'))
    NodegroupScalingConfig.type = Types::NodegroupScalingConfig
    NodegroupStatus.add_member(:creating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "CREATING"}))
    NodegroupStatus.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    NodegroupStatus.add_member(:updating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATING', traits: {"smithy.api#enumValue" => "UPDATING"}))
    NodegroupStatus.add_member(:deleting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    NodegroupStatus.add_member(:create_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATE_FAILED', traits: {"smithy.api#enumValue" => "CREATE_FAILED"}))
    NodegroupStatus.add_member(:delete_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETE_FAILED', traits: {"smithy.api#enumValue" => "DELETE_FAILED"}))
    NodegroupStatus.add_member(:degraded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEGRADED', traits: {"smithy.api#enumValue" => "DEGRADED"}))
    NodegroupUpdateConfig.add_member(:max_unavailable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonZeroInteger, location_name: 'maxUnavailable'))
    NodegroupUpdateConfig.add_member(:max_unavailable_percentage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PercentCapacity, location_name: 'maxUnavailablePercentage'))
    NodegroupUpdateConfig.add_member(:update_strategy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NodegroupUpdateStrategies, location_name: 'updateStrategy'))
    NodegroupUpdateConfig.type = Types::NodegroupUpdateConfig
    NodegroupUpdateStrategies.add_member(:default, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEFAULT', traits: {"smithy.api#enumValue" => "DEFAULT"}))
    NodegroupUpdateStrategies.add_member(:minimal, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MINIMAL', traits: {"smithy.api#enumValue" => "MINIMAL"}))
    NotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    NotFoundException.type = Types::NotFoundException
    OIDC.add_member(:issuer, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'issuer'))
    OIDC.type = Types::OIDC
    OidcIdentityProviderConfig.add_member(:identity_provider_config_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'identityProviderConfigName'))
    OidcIdentityProviderConfig.add_member(:identity_provider_config_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'identityProviderConfigArn'))
    OidcIdentityProviderConfig.add_member(:cluster_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clusterName'))
    OidcIdentityProviderConfig.add_member(:issuer_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'issuerUrl'))
    OidcIdentityProviderConfig.add_member(:client_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clientId'))
    OidcIdentityProviderConfig.add_member(:username_claim, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'usernameClaim'))
    OidcIdentityProviderConfig.add_member(:username_prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'usernamePrefix'))
    OidcIdentityProviderConfig.add_member(:groups_claim, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'groupsClaim'))
    OidcIdentityProviderConfig.add_member(:groups_prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'groupsPrefix'))
    OidcIdentityProviderConfig.add_member(:required_claims, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequiredClaimsMap, location_name: 'requiredClaims'))
    OidcIdentityProviderConfig.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    OidcIdentityProviderConfig.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigStatus, location_name: 'status'))
    OidcIdentityProviderConfig.type = Types::OidcIdentityProviderConfig
    OidcIdentityProviderConfigRequest.add_member(:identity_provider_config_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'identityProviderConfigName', traits: {"smithy.api#required" => {}}))
    OidcIdentityProviderConfigRequest.add_member(:issuer_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'issuerUrl', traits: {"smithy.api#required" => {}}))
    OidcIdentityProviderConfigRequest.add_member(:client_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clientId', traits: {"smithy.api#required" => {}}))
    OidcIdentityProviderConfigRequest.add_member(:username_claim, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'usernameClaim'))
    OidcIdentityProviderConfigRequest.add_member(:username_prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'usernamePrefix'))
    OidcIdentityProviderConfigRequest.add_member(:groups_claim, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'groupsClaim'))
    OidcIdentityProviderConfigRequest.add_member(:groups_prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'groupsPrefix'))
    OidcIdentityProviderConfigRequest.add_member(:required_claims, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequiredClaimsMap, location_name: 'requiredClaims'))
    OidcIdentityProviderConfigRequest.type = Types::OidcIdentityProviderConfigRequest
    OutpostConfigRequest.add_member(:outpost_arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'outpostArns', traits: {"smithy.api#required" => {}}))
    OutpostConfigRequest.add_member(:control_plane_instance_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'controlPlaneInstanceType', traits: {"smithy.api#required" => {}}))
    OutpostConfigRequest.add_member(:control_plane_placement, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ControlPlanePlacementRequest, location_name: 'controlPlanePlacement'))
    OutpostConfigRequest.type = Types::OutpostConfigRequest
    OutpostConfigResponse.add_member(:outpost_arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'outpostArns', traits: {"smithy.api#required" => {}}))
    OutpostConfigResponse.add_member(:control_plane_instance_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'controlPlaneInstanceType', traits: {"smithy.api#required" => {}}))
    OutpostConfigResponse.add_member(:control_plane_placement, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ControlPlanePlacementResponse, location_name: 'controlPlanePlacement'))
    OutpostConfigResponse.type = Types::OutpostConfigResponse
    PodIdentityAssociation.add_member(:cluster_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clusterName'))
    PodIdentityAssociation.add_member(:namespace, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'namespace'))
    PodIdentityAssociation.add_member(:service_account, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'serviceAccount'))
    PodIdentityAssociation.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'roleArn'))
    PodIdentityAssociation.add_member(:association_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'associationArn'))
    PodIdentityAssociation.add_member(:association_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'associationId'))
    PodIdentityAssociation.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    PodIdentityAssociation.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdAt'))
    PodIdentityAssociation.add_member(:modified_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'modifiedAt'))
    PodIdentityAssociation.add_member(:owner_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ownerArn'))
    PodIdentityAssociation.add_member(:disable_session_tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: 'disableSessionTags'))
    PodIdentityAssociation.add_member(:target_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'targetRoleArn'))
    PodIdentityAssociation.add_member(:external_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'externalId'))
    PodIdentityAssociation.type = Types::PodIdentityAssociation
    PodIdentityAssociationSummaries.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PodIdentityAssociationSummary)
    PodIdentityAssociationSummary.add_member(:cluster_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clusterName'))
    PodIdentityAssociationSummary.add_member(:namespace, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'namespace'))
    PodIdentityAssociationSummary.add_member(:service_account, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'serviceAccount'))
    PodIdentityAssociationSummary.add_member(:association_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'associationArn'))
    PodIdentityAssociationSummary.add_member(:association_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'associationId'))
    PodIdentityAssociationSummary.add_member(:owner_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ownerArn'))
    PodIdentityAssociationSummary.type = Types::PodIdentityAssociationSummary
    Provider.add_member(:key_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'keyArn'))
    Provider.type = Types::Provider
    RegisterClusterRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    RegisterClusterRequest.add_member(:connector_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorConfigRequest, location_name: 'connectorConfig', traits: {"smithy.api#required" => {}}))
    RegisterClusterRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clientRequestToken', traits: {"smithy.api#idempotencyToken" => {}}))
    RegisterClusterRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    RegisterClusterRequest.type = Types::RegisterClusterRequest
    RegisterClusterResponse.add_member(:cluster, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Cluster, location_name: 'cluster'))
    RegisterClusterResponse.type = Types::RegisterClusterResponse
    RemoteAccessConfig.add_member(:ec2_ssh_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ec2SshKey'))
    RemoteAccessConfig.add_member(:source_security_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'sourceSecurityGroups'))
    RemoteAccessConfig.type = Types::RemoteAccessConfig
    RemoteNetworkConfigRequest.add_member(:remote_node_networks, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RemoteNodeNetworkList, location_name: 'remoteNodeNetworks'))
    RemoteNetworkConfigRequest.add_member(:remote_pod_networks, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RemotePodNetworkList, location_name: 'remotePodNetworks'))
    RemoteNetworkConfigRequest.type = Types::RemoteNetworkConfigRequest
    RemoteNetworkConfigResponse.add_member(:remote_node_networks, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RemoteNodeNetworkList, location_name: 'remoteNodeNetworks'))
    RemoteNetworkConfigResponse.add_member(:remote_pod_networks, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RemotePodNetworkList, location_name: 'remotePodNetworks'))
    RemoteNetworkConfigResponse.type = Types::RemoteNetworkConfigResponse
    RemoteNodeNetwork.add_member(:cidrs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'cidrs'))
    RemoteNodeNetwork.type = Types::RemoteNodeNetwork
    RemoteNodeNetworkList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RemoteNodeNetwork)
    RemotePodNetwork.add_member(:cidrs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'cidrs'))
    RemotePodNetwork.type = Types::RemotePodNetwork
    RemotePodNetworkList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RemotePodNetwork)
    RepairAction.add_member(:replace, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Replace', traits: {"smithy.api#enumValue" => "Replace"}))
    RepairAction.add_member(:reboot, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Reboot', traits: {"smithy.api#enumValue" => "Reboot"}))
    RepairAction.add_member(:no_action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NoAction', traits: {"smithy.api#enumValue" => "NoAction"}))
    ResolveConflicts.add_member(:overwrite, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OVERWRITE', traits: {"smithy.api#enumValue" => "OVERWRITE"}))
    ResolveConflicts.add_member(:none, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NONE', traits: {"smithy.api#enumValue" => "NONE"}))
    ResolveConflicts.add_member(:preserve, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PRESERVE', traits: {"smithy.api#enumValue" => "PRESERVE"}))
    ResourceInUseException.add_member(:cluster_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clusterName'))
    ResourceInUseException.add_member(:nodegroup_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nodegroupName'))
    ResourceInUseException.add_member(:addon_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'addonName'))
    ResourceInUseException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    ResourceInUseException.type = Types::ResourceInUseException
    ResourceLimitExceededException.add_member(:cluster_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clusterName'))
    ResourceLimitExceededException.add_member(:nodegroup_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nodegroupName'))
    ResourceLimitExceededException.add_member(:subscription_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'subscriptionId'))
    ResourceLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    ResourceLimitExceededException.type = Types::ResourceLimitExceededException
    ResourceNotFoundException.add_member(:cluster_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clusterName'))
    ResourceNotFoundException.add_member(:nodegroup_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nodegroupName'))
    ResourceNotFoundException.add_member(:fargate_profile_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'fargateProfileName'))
    ResourceNotFoundException.add_member(:addon_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'addonName'))
    ResourceNotFoundException.add_member(:subscription_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'subscriptionId'))
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourcePropagationDelayException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    ResourcePropagationDelayException.type = Types::ResourcePropagationDelayException
    ServerException.add_member(:cluster_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clusterName'))
    ServerException.add_member(:nodegroup_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nodegroupName'))
    ServerException.add_member(:addon_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'addonName'))
    ServerException.add_member(:subscription_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'subscriptionId'))
    ServerException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    ServerException.type = Types::ServerException
    ServiceUnavailableException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    ServiceUnavailableException.type = Types::ServiceUnavailableException
    StartInsightsRefreshRequest.add_member(:cluster_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clusterName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartInsightsRefreshRequest.type = Types::StartInsightsRefreshRequest
    StartInsightsRefreshResponse.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    StartInsightsRefreshResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsightsRefreshStatus, location_name: 'status'))
    StartInsightsRefreshResponse.type = Types::StartInsightsRefreshResponse
    StorageConfigRequest.add_member(:block_storage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BlockStorage, location_name: 'blockStorage'))
    StorageConfigRequest.type = Types::StorageConfigRequest
    StorageConfigResponse.add_member(:block_storage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BlockStorage, location_name: 'blockStorage'))
    StorageConfigResponse.type = Types::StorageConfigResponse
    StringList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    SupportType.add_member(:standard, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STANDARD', traits: {"smithy.api#enumValue" => "STANDARD"}))
    SupportType.add_member(:extended, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EXTENDED', traits: {"smithy.api#enumValue" => "EXTENDED"}))
    TagKeyList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue)
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resourceArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    Taint.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TaintKey, location_name: 'key'))
    Taint.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TaintValue, location_name: 'value'))
    Taint.add_member(:effect, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TaintEffect, location_name: 'effect'))
    Taint.type = Types::Taint
    TaintEffect.add_member(:no_schedule, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NO_SCHEDULE', traits: {"smithy.api#enumValue" => "NO_SCHEDULE"}))
    TaintEffect.add_member(:no_execute, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NO_EXECUTE', traits: {"smithy.api#enumValue" => "NO_EXECUTE"}))
    TaintEffect.add_member(:prefer_no_schedule, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PREFER_NO_SCHEDULE', traits: {"smithy.api#enumValue" => "PREFER_NO_SCHEDULE"}))
    ThrottlingException.add_member(:cluster_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clusterName'))
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    ThrottlingException.type = Types::ThrottlingException
    UnsupportedAvailabilityZoneException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    UnsupportedAvailabilityZoneException.add_member(:cluster_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clusterName'))
    UnsupportedAvailabilityZoneException.add_member(:nodegroup_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nodegroupName'))
    UnsupportedAvailabilityZoneException.add_member(:valid_zones, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'validZones'))
    UnsupportedAvailabilityZoneException.type = Types::UnsupportedAvailabilityZoneException
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resourceArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'tagKeys', traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    Update.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id'))
    Update.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateStatus, location_name: 'status'))
    Update.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateType, location_name: 'type'))
    Update.add_member(:params, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateParams, location_name: 'params'))
    Update.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdAt'))
    Update.add_member(:errors, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDetails, location_name: 'errors'))
    Update.type = Types::Update
    UpdateAccessConfigRequest.add_member(:authentication_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationMode, location_name: 'authenticationMode'))
    UpdateAccessConfigRequest.type = Types::UpdateAccessConfigRequest
    UpdateAccessEntryRequest.add_member(:cluster_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clusterName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAccessEntryRequest.add_member(:principal_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'principalArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAccessEntryRequest.add_member(:kubernetes_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'kubernetesGroups'))
    UpdateAccessEntryRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clientRequestToken', traits: {"smithy.api#idempotencyToken" => {}}))
    UpdateAccessEntryRequest.add_member(:username, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'username'))
    UpdateAccessEntryRequest.type = Types::UpdateAccessEntryRequest
    UpdateAccessEntryResponse.add_member(:access_entry, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessEntry, location_name: 'accessEntry'))
    UpdateAccessEntryResponse.type = Types::UpdateAccessEntryResponse
    UpdateAddonRequest.add_member(:cluster_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterName, location_name: 'clusterName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAddonRequest.add_member(:addon_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'addonName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAddonRequest.add_member(:addon_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'addonVersion'))
    UpdateAddonRequest.add_member(:service_account_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'serviceAccountRoleArn'))
    UpdateAddonRequest.add_member(:resolve_conflicts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResolveConflicts, location_name: 'resolveConflicts'))
    UpdateAddonRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clientRequestToken', traits: {"smithy.api#idempotencyToken" => {}}))
    UpdateAddonRequest.add_member(:configuration_values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'configurationValues'))
    UpdateAddonRequest.add_member(:pod_identity_associations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddonPodIdentityAssociationsList, location_name: 'podIdentityAssociations'))
    UpdateAddonRequest.type = Types::UpdateAddonRequest
    UpdateAddonResponse.add_member(:update, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Update, location_name: 'update'))
    UpdateAddonResponse.type = Types::UpdateAddonResponse
    UpdateClusterConfigRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateClusterConfigRequest.add_member(:resources_vpc_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcConfigRequest, location_name: 'resourcesVpcConfig'))
    UpdateClusterConfigRequest.add_member(:logging, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Logging, location_name: 'logging'))
    UpdateClusterConfigRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clientRequestToken', traits: {"smithy.api#idempotencyToken" => {}}))
    UpdateClusterConfigRequest.add_member(:access_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAccessConfigRequest, location_name: 'accessConfig'))
    UpdateClusterConfigRequest.add_member(:upgrade_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpgradePolicyRequest, location_name: 'upgradePolicy'))
    UpdateClusterConfigRequest.add_member(:zonal_shift_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ZonalShiftConfigRequest, location_name: 'zonalShiftConfig'))
    UpdateClusterConfigRequest.add_member(:compute_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComputeConfigRequest, location_name: 'computeConfig'))
    UpdateClusterConfigRequest.add_member(:kubernetes_network_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KubernetesNetworkConfigRequest, location_name: 'kubernetesNetworkConfig'))
    UpdateClusterConfigRequest.add_member(:storage_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StorageConfigRequest, location_name: 'storageConfig'))
    UpdateClusterConfigRequest.add_member(:remote_network_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RemoteNetworkConfigRequest, location_name: 'remoteNetworkConfig'))
    UpdateClusterConfigRequest.add_member(:deletion_protection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: 'deletionProtection'))
    UpdateClusterConfigRequest.type = Types::UpdateClusterConfigRequest
    UpdateClusterConfigResponse.add_member(:update, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Update, location_name: 'update'))
    UpdateClusterConfigResponse.type = Types::UpdateClusterConfigResponse
    UpdateClusterVersionRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateClusterVersionRequest.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'version', traits: {"smithy.api#required" => {}}))
    UpdateClusterVersionRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clientRequestToken', traits: {"smithy.api#idempotencyToken" => {}}))
    UpdateClusterVersionRequest.add_member(:force, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'force', traits: {"smithy.api#default" => false}))
    UpdateClusterVersionRequest.type = Types::UpdateClusterVersionRequest
    UpdateClusterVersionResponse.add_member(:update, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Update, location_name: 'update'))
    UpdateClusterVersionResponse.type = Types::UpdateClusterVersionResponse
    UpdateEksAnywhereSubscriptionRequest.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateEksAnywhereSubscriptionRequest.add_member(:auto_renew, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'autoRenew', traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    UpdateEksAnywhereSubscriptionRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clientRequestToken', traits: {"smithy.api#idempotencyToken" => {}}))
    UpdateEksAnywhereSubscriptionRequest.type = Types::UpdateEksAnywhereSubscriptionRequest
    UpdateEksAnywhereSubscriptionResponse.add_member(:subscription, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EksAnywhereSubscription, location_name: 'subscription'))
    UpdateEksAnywhereSubscriptionResponse.type = Types::UpdateEksAnywhereSubscriptionResponse
    UpdateLabelsPayload.add_member(:add_or_update_labels, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LabelsMap, location_name: 'addOrUpdateLabels'))
    UpdateLabelsPayload.add_member(:remove_labels, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LabelsKeyList, location_name: 'removeLabels'))
    UpdateLabelsPayload.type = Types::UpdateLabelsPayload
    UpdateNodegroupConfigRequest.add_member(:cluster_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clusterName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateNodegroupConfigRequest.add_member(:nodegroup_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nodegroupName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateNodegroupConfigRequest.add_member(:labels, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateLabelsPayload, location_name: 'labels'))
    UpdateNodegroupConfigRequest.add_member(:taints, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTaintsPayload, location_name: 'taints'))
    UpdateNodegroupConfigRequest.add_member(:scaling_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NodegroupScalingConfig, location_name: 'scalingConfig'))
    UpdateNodegroupConfigRequest.add_member(:update_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NodegroupUpdateConfig, location_name: 'updateConfig'))
    UpdateNodegroupConfigRequest.add_member(:node_repair_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NodeRepairConfig, location_name: 'nodeRepairConfig'))
    UpdateNodegroupConfigRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clientRequestToken', traits: {"smithy.api#idempotencyToken" => {}}))
    UpdateNodegroupConfigRequest.type = Types::UpdateNodegroupConfigRequest
    UpdateNodegroupConfigResponse.add_member(:update, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Update, location_name: 'update'))
    UpdateNodegroupConfigResponse.type = Types::UpdateNodegroupConfigResponse
    UpdateNodegroupVersionRequest.add_member(:cluster_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clusterName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateNodegroupVersionRequest.add_member(:nodegroup_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nodegroupName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateNodegroupVersionRequest.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'version'))
    UpdateNodegroupVersionRequest.add_member(:release_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'releaseVersion'))
    UpdateNodegroupVersionRequest.add_member(:launch_template, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchTemplateSpecification, location_name: 'launchTemplate'))
    UpdateNodegroupVersionRequest.add_member(:force, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'force', traits: {"smithy.api#default" => false}))
    UpdateNodegroupVersionRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clientRequestToken', traits: {"smithy.api#idempotencyToken" => {}}))
    UpdateNodegroupVersionRequest.type = Types::UpdateNodegroupVersionRequest
    UpdateNodegroupVersionResponse.add_member(:update, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Update, location_name: 'update'))
    UpdateNodegroupVersionResponse.type = Types::UpdateNodegroupVersionResponse
    UpdateParam.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateParamType, location_name: 'type'))
    UpdateParam.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'value'))
    UpdateParam.type = Types::UpdateParam
    UpdateParamType.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VERSION', traits: {"smithy.api#enumValue" => "Version"}))
    UpdateParamType.add_member(:platform_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PLATFORM_VERSION', traits: {"smithy.api#enumValue" => "PlatformVersion"}))
    UpdateParamType.add_member(:endpoint_private_access, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENDPOINT_PRIVATE_ACCESS', traits: {"smithy.api#enumValue" => "EndpointPrivateAccess"}))
    UpdateParamType.add_member(:endpoint_public_access, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENDPOINT_PUBLIC_ACCESS', traits: {"smithy.api#enumValue" => "EndpointPublicAccess"}))
    UpdateParamType.add_member(:cluster_logging, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CLUSTER_LOGGING', traits: {"smithy.api#enumValue" => "ClusterLogging"}))
    UpdateParamType.add_member(:desired_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DESIRED_SIZE', traits: {"smithy.api#enumValue" => "DesiredSize"}))
    UpdateParamType.add_member(:labels_to_add, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LABELS_TO_ADD', traits: {"smithy.api#enumValue" => "LabelsToAdd"}))
    UpdateParamType.add_member(:labels_to_remove, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LABELS_TO_REMOVE', traits: {"smithy.api#enumValue" => "LabelsToRemove"}))
    UpdateParamType.add_member(:taints_to_add, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TAINTS_TO_ADD', traits: {"smithy.api#enumValue" => "TaintsToAdd"}))
    UpdateParamType.add_member(:taints_to_remove, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TAINTS_TO_REMOVE', traits: {"smithy.api#enumValue" => "TaintsToRemove"}))
    UpdateParamType.add_member(:max_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MAX_SIZE', traits: {"smithy.api#enumValue" => "MaxSize"}))
    UpdateParamType.add_member(:min_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MIN_SIZE', traits: {"smithy.api#enumValue" => "MinSize"}))
    UpdateParamType.add_member(:release_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RELEASE_VERSION', traits: {"smithy.api#enumValue" => "ReleaseVersion"}))
    UpdateParamType.add_member(:public_access_cidrs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PUBLIC_ACCESS_CIDRS', traits: {"smithy.api#enumValue" => "PublicAccessCidrs"}))
    UpdateParamType.add_member(:launch_template_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LAUNCH_TEMPLATE_NAME', traits: {"smithy.api#enumValue" => "LaunchTemplateName"}))
    UpdateParamType.add_member(:launch_template_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LAUNCH_TEMPLATE_VERSION', traits: {"smithy.api#enumValue" => "LaunchTemplateVersion"}))
    UpdateParamType.add_member(:identity_provider_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IDENTITY_PROVIDER_CONFIG', traits: {"smithy.api#enumValue" => "IdentityProviderConfig"}))
    UpdateParamType.add_member(:encryption_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENCRYPTION_CONFIG', traits: {"smithy.api#enumValue" => "EncryptionConfig"}))
    UpdateParamType.add_member(:addon_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ADDON_VERSION', traits: {"smithy.api#enumValue" => "AddonVersion"}))
    UpdateParamType.add_member(:service_account_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SERVICE_ACCOUNT_ROLE_ARN', traits: {"smithy.api#enumValue" => "ServiceAccountRoleArn"}))
    UpdateParamType.add_member(:resolve_conflicts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RESOLVE_CONFLICTS', traits: {"smithy.api#enumValue" => "ResolveConflicts"}))
    UpdateParamType.add_member(:max_unavailable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MAX_UNAVAILABLE', traits: {"smithy.api#enumValue" => "MaxUnavailable"}))
    UpdateParamType.add_member(:max_unavailable_percentage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MAX_UNAVAILABLE_PERCENTAGE', traits: {"smithy.api#enumValue" => "MaxUnavailablePercentage"}))
    UpdateParamType.add_member(:node_repair_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NODE_REPAIR_ENABLED', traits: {"smithy.api#enumValue" => "NodeRepairEnabled"}))
    UpdateParamType.add_member(:update_strategy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATE_STRATEGY', traits: {"smithy.api#enumValue" => "UpdateStrategy"}))
    UpdateParamType.add_member(:configuration_values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONFIGURATION_VALUES', traits: {"smithy.api#enumValue" => "ConfigurationValues"}))
    UpdateParamType.add_member(:security_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SECURITY_GROUPS', traits: {"smithy.api#enumValue" => "SecurityGroups"}))
    UpdateParamType.add_member(:subnets, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUBNETS', traits: {"smithy.api#enumValue" => "Subnets"}))
    UpdateParamType.add_member(:authentication_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AUTHENTICATION_MODE', traits: {"smithy.api#enumValue" => "AuthenticationMode"}))
    UpdateParamType.add_member(:pod_identity_associations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'POD_IDENTITY_ASSOCIATIONS', traits: {"smithy.api#enumValue" => "PodIdentityAssociations"}))
    UpdateParamType.add_member(:upgrade_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPGRADE_POLICY', traits: {"smithy.api#enumValue" => "UpgradePolicy"}))
    UpdateParamType.add_member(:zonal_shift_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ZONAL_SHIFT_CONFIG', traits: {"smithy.api#enumValue" => "ZonalShiftConfig"}))
    UpdateParamType.add_member(:compute_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPUTE_CONFIG', traits: {"smithy.api#enumValue" => "ComputeConfig"}))
    UpdateParamType.add_member(:storage_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STORAGE_CONFIG', traits: {"smithy.api#enumValue" => "StorageConfig"}))
    UpdateParamType.add_member(:kubernetes_network_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'KUBERNETES_NETWORK_CONFIG', traits: {"smithy.api#enumValue" => "KubernetesNetworkConfig"}))
    UpdateParamType.add_member(:remote_network_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REMOTE_NETWORK_CONFIG', traits: {"smithy.api#enumValue" => "RemoteNetworkConfig"}))
    UpdateParamType.add_member(:deletion_protection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETION_PROTECTION', traits: {"smithy.api#enumValue" => "DeletionProtection"}))
    UpdateParamType.add_member(:node_repair_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NODE_REPAIR_CONFIG', traits: {"smithy.api#enumValue" => "NodeRepairConfig"}))
    UpdateParams.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateParam)
    UpdatePodIdentityAssociationRequest.add_member(:cluster_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clusterName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdatePodIdentityAssociationRequest.add_member(:association_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'associationId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdatePodIdentityAssociationRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'roleArn'))
    UpdatePodIdentityAssociationRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clientRequestToken', traits: {"smithy.api#idempotencyToken" => {}}))
    UpdatePodIdentityAssociationRequest.add_member(:disable_session_tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: 'disableSessionTags'))
    UpdatePodIdentityAssociationRequest.add_member(:target_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'targetRoleArn'))
    UpdatePodIdentityAssociationRequest.type = Types::UpdatePodIdentityAssociationRequest
    UpdatePodIdentityAssociationResponse.add_member(:association, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PodIdentityAssociation, location_name: 'association'))
    UpdatePodIdentityAssociationResponse.type = Types::UpdatePodIdentityAssociationResponse
    UpdateStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_PROGRESS', traits: {"smithy.api#enumValue" => "InProgress"}))
    UpdateStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "Failed"}))
    UpdateStatus.add_member(:cancelled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANCELLED', traits: {"smithy.api#enumValue" => "Cancelled"}))
    UpdateStatus.add_member(:successful, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCESSFUL', traits: {"smithy.api#enumValue" => "Successful"}))
    UpdateTaintsPayload.add_member(:add_or_update_taints, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TaintsList, location_name: 'addOrUpdateTaints'))
    UpdateTaintsPayload.add_member(:remove_taints, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TaintsList, location_name: 'removeTaints'))
    UpdateTaintsPayload.type = Types::UpdateTaintsPayload
    UpdateType.add_member(:version_update, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VERSION_UPDATE', traits: {"smithy.api#enumValue" => "VersionUpdate"}))
    UpdateType.add_member(:endpoint_access_update, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENDPOINT_ACCESS_UPDATE', traits: {"smithy.api#enumValue" => "EndpointAccessUpdate"}))
    UpdateType.add_member(:logging_update, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LOGGING_UPDATE', traits: {"smithy.api#enumValue" => "LoggingUpdate"}))
    UpdateType.add_member(:config_update, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONFIG_UPDATE', traits: {"smithy.api#enumValue" => "ConfigUpdate"}))
    UpdateType.add_member(:associate_identity_provider_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ASSOCIATE_IDENTITY_PROVIDER_CONFIG', traits: {"smithy.api#enumValue" => "AssociateIdentityProviderConfig"}))
    UpdateType.add_member(:disassociate_identity_provider_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISASSOCIATE_IDENTITY_PROVIDER_CONFIG', traits: {"smithy.api#enumValue" => "DisassociateIdentityProviderConfig"}))
    UpdateType.add_member(:associate_encryption_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ASSOCIATE_ENCRYPTION_CONFIG', traits: {"smithy.api#enumValue" => "AssociateEncryptionConfig"}))
    UpdateType.add_member(:addon_update, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ADDON_UPDATE', traits: {"smithy.api#enumValue" => "AddonUpdate"}))
    UpdateType.add_member(:vpc_config_update, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VPC_CONFIG_UPDATE', traits: {"smithy.api#enumValue" => "VpcConfigUpdate"}))
    UpdateType.add_member(:access_config_update, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACCESS_CONFIG_UPDATE', traits: {"smithy.api#enumValue" => "AccessConfigUpdate"}))
    UpdateType.add_member(:upgrade_policy_update, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPGRADE_POLICY_UPDATE', traits: {"smithy.api#enumValue" => "UpgradePolicyUpdate"}))
    UpdateType.add_member(:zonal_shift_config_update, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ZONAL_SHIFT_CONFIG_UPDATE', traits: {"smithy.api#enumValue" => "ZonalShiftConfigUpdate"}))
    UpdateType.add_member(:auto_mode_update, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AUTO_MODE_UPDATE', traits: {"smithy.api#enumValue" => "AutoModeUpdate"}))
    UpdateType.add_member(:remote_network_config_update, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REMOTE_NETWORK_CONFIG_UPDATE', traits: {"smithy.api#enumValue" => "RemoteNetworkConfigUpdate"}))
    UpdateType.add_member(:deletion_protection_update, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETION_PROTECTION_UPDATE', traits: {"smithy.api#enumValue" => "DeletionProtectionUpdate"}))
    UpgradePolicyRequest.add_member(:support_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SupportType, location_name: 'supportType'))
    UpgradePolicyRequest.type = Types::UpgradePolicyRequest
    UpgradePolicyResponse.add_member(:support_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SupportType, location_name: 'supportType'))
    UpgradePolicyResponse.type = Types::UpgradePolicyResponse
    VersionStatus.add_member(:unsupported, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNSUPPORTED', traits: {"smithy.api#enumValue" => "UNSUPPORTED"}))
    VersionStatus.add_member(:standard_support, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STANDARD_SUPPORT', traits: {"smithy.api#enumValue" => "STANDARD_SUPPORT"}))
    VersionStatus.add_member(:extended_support, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EXTENDED_SUPPORT', traits: {"smithy.api#enumValue" => "EXTENDED_SUPPORT"}))
    VpcConfigRequest.add_member(:subnet_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'subnetIds'))
    VpcConfigRequest.add_member(:security_group_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'securityGroupIds'))
    VpcConfigRequest.add_member(:endpoint_public_access, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: 'endpointPublicAccess'))
    VpcConfigRequest.add_member(:endpoint_private_access, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: 'endpointPrivateAccess'))
    VpcConfigRequest.add_member(:public_access_cidrs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'publicAccessCidrs'))
    VpcConfigRequest.type = Types::VpcConfigRequest
    VpcConfigResponse.add_member(:subnet_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'subnetIds'))
    VpcConfigResponse.add_member(:security_group_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'securityGroupIds'))
    VpcConfigResponse.add_member(:cluster_security_group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clusterSecurityGroupId'))
    VpcConfigResponse.add_member(:vpc_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'vpcId'))
    VpcConfigResponse.add_member(:endpoint_public_access, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'endpointPublicAccess', traits: {"smithy.api#default" => false}))
    VpcConfigResponse.add_member(:endpoint_private_access, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'endpointPrivateAccess', traits: {"smithy.api#default" => false}))
    VpcConfigResponse.add_member(:public_access_cidrs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'publicAccessCidrs'))
    VpcConfigResponse.type = Types::VpcConfigResponse
    ZonalShiftConfigRequest.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: 'enabled'))
    ZonalShiftConfigRequest.type = Types::ZonalShiftConfigRequest
    ZonalShiftConfigResponse.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: 'enabled'))
    ZonalShiftConfigResponse.type = Types::ZonalShiftConfigResponse
    ConfigStatus.add_member(:creating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "CREATING"}))
    ConfigStatus.add_member(:deleting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    ConfigStatus.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    LabelsKeyList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    LabelsMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: LabelKey)
    LabelsMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: LabelValue)
    RequiredClaimsMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequiredClaimsKey)
    RequiredClaimsMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequiredClaimsValue)
    TaintsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Taint)

    AWSWesleyFrontend = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.eks#AWSWesleyFrontend"
      service.name = "AWSWesleyFrontend"
      service.version = "2017-11-01"
      service.traits = {"aws.api#service" => {"sdkId" => "EKS", "arnNamespace" => "eks", "cloudFormationName" => "EKS", "cloudTrailEventSource" => "eks.amazonaws.com", "endpointPrefix" => "eks"}, "aws.auth#sigv4" => {"name" => "eks"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "Amazon Elastic Kubernetes Service"}
      service.add_operation(:associate_access_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eks#AssociateAccessPolicy"
        operation.name = "AssociateAccessPolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateAccessPolicyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateAccessPolicyResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/clusters/{clusterName}/access-entries/{principalArn}/access-policies", "code" => 200}}
      end)
      service.add_operation(:associate_encryption_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eks#AssociateEncryptionConfig"
        operation.name = "AssociateEncryptionConfig"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateEncryptionConfigRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateEncryptionConfigResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/clusters/{clusterName}/encryption-config/associate", "code" => 200}}
      end)
      service.add_operation(:associate_identity_provider_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eks#AssociateIdentityProviderConfig"
        operation.name = "AssociateIdentityProviderConfig"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateIdentityProviderConfigRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateIdentityProviderConfigResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/clusters/{clusterName}/identity-provider-configs/associate", "code" => 200}}
      end)
      service.add_operation(:create_access_entry, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eks#CreateAccessEntry"
        operation.name = "CreateAccessEntry"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAccessEntryRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAccessEntryResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/clusters/{clusterName}/access-entries", "code" => 200}}
      end)
      service.add_operation(:create_addon, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eks#CreateAddon"
        operation.name = "CreateAddon"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAddonRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAddonResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/clusters/{clusterName}/addons", "code" => 200}}
      end)
      service.add_operation(:create_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eks#CreateCluster"
        operation.name = "CreateCluster"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateClusterRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateClusterResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedAvailabilityZoneException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/clusters", "code" => 200}}
      end)
      service.add_operation(:create_eks_anywhere_subscription, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eks#CreateEksAnywhereSubscription"
        operation.name = "CreateEksAnywhereSubscription"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateEksAnywhereSubscriptionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateEksAnywhereSubscriptionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/eks-anywhere-subscriptions", "code" => 200}}
      end)
      service.add_operation(:create_fargate_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eks#CreateFargateProfile"
        operation.name = "CreateFargateProfile"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateFargateProfileRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateFargateProfileResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedAvailabilityZoneException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/clusters/{clusterName}/fargate-profiles", "code" => 200}}
      end)
      service.add_operation(:create_nodegroup, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eks#CreateNodegroup"
        operation.name = "CreateNodegroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateNodegroupRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateNodegroupResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/clusters/{clusterName}/node-groups", "code" => 200}}
      end)
      service.add_operation(:create_pod_identity_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eks#CreatePodIdentityAssociation"
        operation.name = "CreatePodIdentityAssociation"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreatePodIdentityAssociationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreatePodIdentityAssociationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/clusters/{clusterName}/pod-identity-associations", "code" => 200}}
      end)
      service.add_operation(:delete_access_entry, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eks#DeleteAccessEntry"
        operation.name = "DeleteAccessEntry"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAccessEntryRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAccessEntryResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/clusters/{clusterName}/access-entries/{principalArn}", "code" => 200}}
      end)
      service.add_operation(:delete_addon, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eks#DeleteAddon"
        operation.name = "DeleteAddon"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAddonRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAddonResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/clusters/{clusterName}/addons/{addonName}", "code" => 200}}
      end)
      service.add_operation(:delete_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eks#DeleteCluster"
        operation.name = "DeleteCluster"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteClusterRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteClusterResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/clusters/{name}", "code" => 200}}
      end)
      service.add_operation(:delete_eks_anywhere_subscription, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eks#DeleteEksAnywhereSubscription"
        operation.name = "DeleteEksAnywhereSubscription"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteEksAnywhereSubscriptionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteEksAnywhereSubscriptionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/eks-anywhere-subscriptions/{id}", "code" => 200}}
      end)
      service.add_operation(:delete_fargate_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eks#DeleteFargateProfile"
        operation.name = "DeleteFargateProfile"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteFargateProfileRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteFargateProfileResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/clusters/{clusterName}/fargate-profiles/{fargateProfileName}", "code" => 200}}
      end)
      service.add_operation(:delete_nodegroup, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eks#DeleteNodegroup"
        operation.name = "DeleteNodegroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteNodegroupRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteNodegroupResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/clusters/{clusterName}/node-groups/{nodegroupName}", "code" => 200}}
      end)
      service.add_operation(:delete_pod_identity_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eks#DeletePodIdentityAssociation"
        operation.name = "DeletePodIdentityAssociation"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeletePodIdentityAssociationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeletePodIdentityAssociationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/clusters/{clusterName}/pod-identity-associations/{associationId}", "code" => 200}}
      end)
      service.add_operation(:deregister_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eks#DeregisterCluster"
        operation.name = "DeregisterCluster"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeregisterClusterRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeregisterClusterResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/cluster-registrations/{name}", "code" => 200}}
      end)
      service.add_operation(:describe_access_entry, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eks#DescribeAccessEntry"
        operation.name = "DescribeAccessEntry"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAccessEntryRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAccessEntryResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/clusters/{clusterName}/access-entries/{principalArn}", "code" => 200}}
      end)
      service.add_operation(:describe_addon, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eks#DescribeAddon"
        operation.name = "DescribeAddon"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAddonRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAddonResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/clusters/{clusterName}/addons/{addonName}", "code" => 200}}
      end)
      service.add_operation(:describe_addon_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eks#DescribeAddonConfiguration"
        operation.name = "DescribeAddonConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAddonConfigurationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAddonConfigurationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/addons/configuration-schemas", "code" => 200}}
      end)
      service.add_operation(:describe_addon_versions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eks#DescribeAddonVersions"
        operation.name = "DescribeAddonVersions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAddonVersionsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAddonVersionsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/addons/supported-versions", "code" => 200}}
        operation[:paginator] = Paginators::DescribeAddonVersions.new
      end)
      service.add_operation(:describe_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eks#DescribeCluster"
        operation.name = "DescribeCluster"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeClusterRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeClusterResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/clusters/{name}", "code" => 200}}
      end)
      service.add_operation(:describe_cluster_versions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eks#DescribeClusterVersions"
        operation.name = "DescribeClusterVersions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeClusterVersionsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeClusterVersionsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/cluster-versions", "code" => 200}}
        operation[:paginator] = Paginators::DescribeClusterVersions.new
      end)
      service.add_operation(:describe_eks_anywhere_subscription, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eks#DescribeEksAnywhereSubscription"
        operation.name = "DescribeEksAnywhereSubscription"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEksAnywhereSubscriptionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEksAnywhereSubscriptionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/eks-anywhere-subscriptions/{id}", "code" => 200}}
      end)
      service.add_operation(:describe_fargate_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eks#DescribeFargateProfile"
        operation.name = "DescribeFargateProfile"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeFargateProfileRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeFargateProfileResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/clusters/{clusterName}/fargate-profiles/{fargateProfileName}", "code" => 200}}
      end)
      service.add_operation(:describe_identity_provider_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eks#DescribeIdentityProviderConfig"
        operation.name = "DescribeIdentityProviderConfig"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeIdentityProviderConfigRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeIdentityProviderConfigResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/clusters/{clusterName}/identity-provider-configs/describe", "code" => 200}}
      end)
      service.add_operation(:describe_insight, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eks#DescribeInsight"
        operation.name = "DescribeInsight"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeInsightRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeInsightResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/clusters/{clusterName}/insights/{id}", "code" => 200}}
      end)
      service.add_operation(:describe_insights_refresh, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eks#DescribeInsightsRefresh"
        operation.name = "DescribeInsightsRefresh"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeInsightsRefreshRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeInsightsRefreshResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/clusters/{clusterName}/insights-refresh", "code" => 200}}
      end)
      service.add_operation(:describe_nodegroup, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eks#DescribeNodegroup"
        operation.name = "DescribeNodegroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeNodegroupRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeNodegroupResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/clusters/{clusterName}/node-groups/{nodegroupName}", "code" => 200}}
      end)
      service.add_operation(:describe_pod_identity_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eks#DescribePodIdentityAssociation"
        operation.name = "DescribePodIdentityAssociation"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribePodIdentityAssociationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribePodIdentityAssociationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/clusters/{clusterName}/pod-identity-associations/{associationId}", "code" => 200}}
      end)
      service.add_operation(:describe_update, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eks#DescribeUpdate"
        operation.name = "DescribeUpdate"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeUpdateRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeUpdateResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/clusters/{name}/updates/{updateId}", "code" => 200}}
      end)
      service.add_operation(:disassociate_access_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eks#DisassociateAccessPolicy"
        operation.name = "DisassociateAccessPolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateAccessPolicyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateAccessPolicyResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/clusters/{clusterName}/access-entries/{principalArn}/access-policies/{policyArn}", "code" => 200}}
      end)
      service.add_operation(:disassociate_identity_provider_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eks#DisassociateIdentityProviderConfig"
        operation.name = "DisassociateIdentityProviderConfig"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateIdentityProviderConfigRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateIdentityProviderConfigResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/clusters/{clusterName}/identity-provider-configs/disassociate", "code" => 200}}
      end)
      service.add_operation(:list_access_entries, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eks#ListAccessEntries"
        operation.name = "ListAccessEntries"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAccessEntriesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAccessEntriesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/clusters/{clusterName}/access-entries", "code" => 200}}
        operation[:paginator] = Paginators::ListAccessEntries.new
      end)
      service.add_operation(:list_access_policies, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eks#ListAccessPolicies"
        operation.name = "ListAccessPolicies"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAccessPoliciesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAccessPoliciesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/access-policies", "code" => 200}}
        operation[:paginator] = Paginators::ListAccessPolicies.new
      end)
      service.add_operation(:list_addons, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eks#ListAddons"
        operation.name = "ListAddons"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAddonsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAddonsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/clusters/{clusterName}/addons", "code" => 200}}
        operation[:paginator] = Paginators::ListAddons.new
      end)
      service.add_operation(:list_associated_access_policies, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eks#ListAssociatedAccessPolicies"
        operation.name = "ListAssociatedAccessPolicies"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAssociatedAccessPoliciesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAssociatedAccessPoliciesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/clusters/{clusterName}/access-entries/{principalArn}/access-policies", "code" => 200}}
        operation[:paginator] = Paginators::ListAssociatedAccessPolicies.new
      end)
      service.add_operation(:list_clusters, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eks#ListClusters"
        operation.name = "ListClusters"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListClustersRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListClustersResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/clusters", "code" => 200}}
        operation[:paginator] = Paginators::ListClusters.new
      end)
      service.add_operation(:list_eks_anywhere_subscriptions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eks#ListEksAnywhereSubscriptions"
        operation.name = "ListEksAnywhereSubscriptions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListEksAnywhereSubscriptionsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListEksAnywhereSubscriptionsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/eks-anywhere-subscriptions", "code" => 200}}
        operation[:paginator] = Paginators::ListEksAnywhereSubscriptions.new
      end)
      service.add_operation(:list_fargate_profiles, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eks#ListFargateProfiles"
        operation.name = "ListFargateProfiles"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListFargateProfilesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListFargateProfilesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/clusters/{clusterName}/fargate-profiles", "code" => 200}}
        operation[:paginator] = Paginators::ListFargateProfiles.new
      end)
      service.add_operation(:list_identity_provider_configs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eks#ListIdentityProviderConfigs"
        operation.name = "ListIdentityProviderConfigs"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListIdentityProviderConfigsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListIdentityProviderConfigsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/clusters/{clusterName}/identity-provider-configs", "code" => 200}}
        operation[:paginator] = Paginators::ListIdentityProviderConfigs.new
      end)
      service.add_operation(:list_insights, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eks#ListInsights"
        operation.name = "ListInsights"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListInsightsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListInsightsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/clusters/{clusterName}/insights", "code" => 200}}
        operation[:paginator] = Paginators::ListInsights.new
      end)
      service.add_operation(:list_nodegroups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eks#ListNodegroups"
        operation.name = "ListNodegroups"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListNodegroupsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListNodegroupsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/clusters/{clusterName}/node-groups", "code" => 200}}
        operation[:paginator] = Paginators::ListNodegroups.new
      end)
      service.add_operation(:list_pod_identity_associations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eks#ListPodIdentityAssociations"
        operation.name = "ListPodIdentityAssociations"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListPodIdentityAssociationsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListPodIdentityAssociationsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/clusters/{clusterName}/pod-identity-associations", "code" => 200}}
        operation[:paginator] = Paginators::ListPodIdentityAssociations.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eks#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags/{resourceArn}", "code" => 200}}
      end)
      service.add_operation(:list_updates, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eks#ListUpdates"
        operation.name = "ListUpdates"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListUpdatesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListUpdatesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/clusters/{name}/updates", "code" => 200}}
        operation[:paginator] = Paginators::ListUpdates.new
      end)
      service.add_operation(:register_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eks#RegisterCluster"
        operation.name = "RegisterCluster"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegisterClusterRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegisterClusterResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourcePropagationDelayException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/cluster-registrations", "code" => 200}}
      end)
      service.add_operation(:start_insights_refresh, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eks#StartInsightsRefresh"
        operation.name = "StartInsightsRefresh"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartInsightsRefreshRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartInsightsRefreshResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/clusters/{clusterName}/insights-refresh", "code" => 200}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eks#TagResource"
        operation.name = "TagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags/{resourceArn}", "code" => 200}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eks#UntagResource"
        operation.name = "UntagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{resourceArn}", "code" => 200}}
      end)
      service.add_operation(:update_access_entry, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eks#UpdateAccessEntry"
        operation.name = "UpdateAccessEntry"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAccessEntryRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAccessEntryResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/clusters/{clusterName}/access-entries/{principalArn}", "code" => 200}}
      end)
      service.add_operation(:update_addon, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eks#UpdateAddon"
        operation.name = "UpdateAddon"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAddonRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAddonResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/clusters/{clusterName}/addons/{addonName}/update", "code" => 200}}
      end)
      service.add_operation(:update_cluster_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eks#UpdateClusterConfig"
        operation.name = "UpdateClusterConfig"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateClusterConfigRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateClusterConfigResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/clusters/{name}/update-config", "code" => 200}}
      end)
      service.add_operation(:update_cluster_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eks#UpdateClusterVersion"
        operation.name = "UpdateClusterVersion"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateClusterVersionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateClusterVersionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/clusters/{name}/updates", "code" => 200}}
      end)
      service.add_operation(:update_eks_anywhere_subscription, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eks#UpdateEksAnywhereSubscription"
        operation.name = "UpdateEksAnywhereSubscription"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateEksAnywhereSubscriptionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateEksAnywhereSubscriptionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/eks-anywhere-subscriptions/{id}", "code" => 200}}
      end)
      service.add_operation(:update_nodegroup_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eks#UpdateNodegroupConfig"
        operation.name = "UpdateNodegroupConfig"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateNodegroupConfigRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateNodegroupConfigResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/clusters/{clusterName}/node-groups/{nodegroupName}/update-config", "code" => 200}}
      end)
      service.add_operation(:update_nodegroup_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eks#UpdateNodegroupVersion"
        operation.name = "UpdateNodegroupVersion"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateNodegroupVersionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateNodegroupVersionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/clusters/{clusterName}/node-groups/{nodegroupName}/update-version", "code" => 200}}
      end)
      service.add_operation(:update_pod_identity_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eks#UpdatePodIdentityAssociation"
        operation.name = "UpdatePodIdentityAssociation"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatePodIdentityAssociationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatePodIdentityAssociationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/clusters/{clusterName}/pod-identity-associations/{associationId}", "code" => 200}}
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
