# frozen_string_literal: true

# This is generated code!

module Aws::EKS
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AMITypes = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.eks#AMITypes", name: "AMITypes")
    AccessConfigResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#AccessConfigResponse", name: "AccessConfigResponse")
    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccessEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#AccessEntry", name: "AccessEntry")
    AccessPoliciesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.eks#AccessPoliciesList", name: "AccessPoliciesList")
    AccessPolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#AccessPolicy", name: "AccessPolicy")
    AccessScope = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#AccessScope", name: "AccessScope")
    AccessScopeType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.eks#AccessScopeType", name: "AccessScopeType")
    AdditionalInfoMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.eks#AdditionalInfoMap", name: "AdditionalInfoMap")
    Addon = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#Addon", name: "Addon")
    AddonCompatibilityDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#AddonCompatibilityDetail", name: "AddonCompatibilityDetail")
    AddonCompatibilityDetails = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.eks#AddonCompatibilityDetails", name: "AddonCompatibilityDetails")
    AddonHealth = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#AddonHealth", name: "AddonHealth")
    AddonInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#AddonInfo", name: "AddonInfo")
    AddonIssue = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#AddonIssue", name: "AddonIssue")
    AddonIssueCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.eks#AddonIssueCode", name: "AddonIssueCode")
    AddonIssueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.eks#AddonIssueList", name: "AddonIssueList")
    AddonNamespaceConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#AddonNamespaceConfigRequest", name: "AddonNamespaceConfigRequest")
    AddonNamespaceConfigResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#AddonNamespaceConfigResponse", name: "AddonNamespaceConfigResponse")
    AddonPodIdentityAssociations = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#AddonPodIdentityAssociations", name: "AddonPodIdentityAssociations")
    AddonPodIdentityAssociationsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.eks#AddonPodIdentityAssociationsList", name: "AddonPodIdentityAssociationsList")
    AddonPodIdentityConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#AddonPodIdentityConfiguration", name: "AddonPodIdentityConfiguration")
    AddonPodIdentityConfigurationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.eks#AddonPodIdentityConfigurationList", name: "AddonPodIdentityConfigurationList")
    AddonStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.eks#AddonStatus", name: "AddonStatus")
    AddonVersionInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#AddonVersionInfo", name: "AddonVersionInfo")
    AddonVersionInfoList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.eks#AddonVersionInfoList", name: "AddonVersionInfoList")
    Addons = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.eks#Addons", name: "Addons")
    AssociateAccessPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#AssociateAccessPolicyRequest", name: "AssociateAccessPolicyRequest")
    AssociateAccessPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#AssociateAccessPolicyResponse", name: "AssociateAccessPolicyResponse")
    AssociateEncryptionConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#AssociateEncryptionConfigRequest", name: "AssociateEncryptionConfigRequest")
    AssociateEncryptionConfigResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#AssociateEncryptionConfigResponse", name: "AssociateEncryptionConfigResponse")
    AssociateIdentityProviderConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#AssociateIdentityProviderConfigRequest", name: "AssociateIdentityProviderConfigRequest")
    AssociateIdentityProviderConfigResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#AssociateIdentityProviderConfigResponse", name: "AssociateIdentityProviderConfigResponse")
    AssociatedAccessPoliciesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.eks#AssociatedAccessPoliciesList", name: "AssociatedAccessPoliciesList")
    AssociatedAccessPolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#AssociatedAccessPolicy", name: "AssociatedAccessPolicy")
    AuthenticationMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.eks#AuthenticationMode", name: "AuthenticationMode")
    AutoScalingGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#AutoScalingGroup", name: "AutoScalingGroup")
    AutoScalingGroupList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.eks#AutoScalingGroupList", name: "AutoScalingGroupList")
    BadRequestException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#BadRequestException", name: "BadRequestException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    BlockStorage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#BlockStorage", name: "BlockStorage")
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.eks#Boolean", name: "Boolean", traits: {"smithy.api#default" => false})
    BoxedBoolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.eks#BoxedBoolean", name: "BoxedBoolean")
    BoxedInteger = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.eks#BoxedInteger", name: "BoxedInteger")
    Capacity = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.eks#Capacity", name: "Capacity", traits: {"smithy.api#range" => {"min" => 1}})
    CapacityTypes = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.eks#CapacityTypes", name: "CapacityTypes")
    Category = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.eks#Category", name: "Category")
    CategoryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.eks#CategoryList", name: "CategoryList")
    Certificate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#Certificate", name: "Certificate")
    ClientException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#ClientException", name: "ClientException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ClientStat = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#ClientStat", name: "ClientStat")
    ClientStats = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.eks#ClientStats", name: "ClientStats")
    Cluster = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#Cluster", name: "Cluster")
    ClusterHealth = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#ClusterHealth", name: "ClusterHealth")
    ClusterIssue = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#ClusterIssue", name: "ClusterIssue")
    ClusterIssueCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.eks#ClusterIssueCode", name: "ClusterIssueCode")
    ClusterIssueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.eks#ClusterIssueList", name: "ClusterIssueList")
    ClusterName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.eks#ClusterName", name: "ClusterName", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[0-9A-Za-z][A-Za-z0-9\\-_]*$"})
    ClusterStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.eks#ClusterStatus", name: "ClusterStatus")
    ClusterVersionInformation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#ClusterVersionInformation", name: "ClusterVersionInformation")
    ClusterVersionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.eks#ClusterVersionList", name: "ClusterVersionList")
    ClusterVersionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.eks#ClusterVersionStatus", name: "ClusterVersionStatus")
    Compatibilities = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.eks#Compatibilities", name: "Compatibilities")
    Compatibility = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#Compatibility", name: "Compatibility")
    ComputeConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#ComputeConfigRequest", name: "ComputeConfigRequest")
    ComputeConfigResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#ComputeConfigResponse", name: "ComputeConfigResponse")
    ConnectorConfigProvider = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.eks#ConnectorConfigProvider", name: "ConnectorConfigProvider")
    ConnectorConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#ConnectorConfigRequest", name: "ConnectorConfigRequest")
    ConnectorConfigResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#ConnectorConfigResponse", name: "ConnectorConfigResponse")
    ControlPlanePlacementRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#ControlPlanePlacementRequest", name: "ControlPlanePlacementRequest")
    ControlPlanePlacementResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#ControlPlanePlacementResponse", name: "ControlPlanePlacementResponse")
    CreateAccessConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#CreateAccessConfigRequest", name: "CreateAccessConfigRequest")
    CreateAccessEntryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#CreateAccessEntryRequest", name: "CreateAccessEntryRequest")
    CreateAccessEntryResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#CreateAccessEntryResponse", name: "CreateAccessEntryResponse")
    CreateAddonRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#CreateAddonRequest", name: "CreateAddonRequest")
    CreateAddonResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#CreateAddonResponse", name: "CreateAddonResponse")
    CreateClusterRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#CreateClusterRequest", name: "CreateClusterRequest")
    CreateClusterResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#CreateClusterResponse", name: "CreateClusterResponse")
    CreateEksAnywhereSubscriptionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#CreateEksAnywhereSubscriptionRequest", name: "CreateEksAnywhereSubscriptionRequest")
    CreateEksAnywhereSubscriptionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#CreateEksAnywhereSubscriptionResponse", name: "CreateEksAnywhereSubscriptionResponse")
    CreateFargateProfileRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#CreateFargateProfileRequest", name: "CreateFargateProfileRequest")
    CreateFargateProfileResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#CreateFargateProfileResponse", name: "CreateFargateProfileResponse")
    CreateNodegroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#CreateNodegroupRequest", name: "CreateNodegroupRequest")
    CreateNodegroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#CreateNodegroupResponse", name: "CreateNodegroupResponse")
    CreatePodIdentityAssociationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#CreatePodIdentityAssociationRequest", name: "CreatePodIdentityAssociationRequest")
    CreatePodIdentityAssociationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#CreatePodIdentityAssociationResponse", name: "CreatePodIdentityAssociationResponse")
    DeleteAccessEntryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#DeleteAccessEntryRequest", name: "DeleteAccessEntryRequest")
    DeleteAccessEntryResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#DeleteAccessEntryResponse", name: "DeleteAccessEntryResponse")
    DeleteAddonRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#DeleteAddonRequest", name: "DeleteAddonRequest")
    DeleteAddonResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#DeleteAddonResponse", name: "DeleteAddonResponse")
    DeleteClusterRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#DeleteClusterRequest", name: "DeleteClusterRequest")
    DeleteClusterResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#DeleteClusterResponse", name: "DeleteClusterResponse")
    DeleteEksAnywhereSubscriptionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#DeleteEksAnywhereSubscriptionRequest", name: "DeleteEksAnywhereSubscriptionRequest")
    DeleteEksAnywhereSubscriptionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#DeleteEksAnywhereSubscriptionResponse", name: "DeleteEksAnywhereSubscriptionResponse")
    DeleteFargateProfileRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#DeleteFargateProfileRequest", name: "DeleteFargateProfileRequest")
    DeleteFargateProfileResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#DeleteFargateProfileResponse", name: "DeleteFargateProfileResponse")
    DeleteNodegroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#DeleteNodegroupRequest", name: "DeleteNodegroupRequest")
    DeleteNodegroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#DeleteNodegroupResponse", name: "DeleteNodegroupResponse")
    DeletePodIdentityAssociationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#DeletePodIdentityAssociationRequest", name: "DeletePodIdentityAssociationRequest")
    DeletePodIdentityAssociationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#DeletePodIdentityAssociationResponse", name: "DeletePodIdentityAssociationResponse")
    DeprecationDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#DeprecationDetail", name: "DeprecationDetail")
    DeprecationDetails = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.eks#DeprecationDetails", name: "DeprecationDetails")
    DeregisterClusterRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#DeregisterClusterRequest", name: "DeregisterClusterRequest")
    DeregisterClusterResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#DeregisterClusterResponse", name: "DeregisterClusterResponse")
    DescribeAccessEntryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#DescribeAccessEntryRequest", name: "DescribeAccessEntryRequest")
    DescribeAccessEntryResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#DescribeAccessEntryResponse", name: "DescribeAccessEntryResponse")
    DescribeAddonConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#DescribeAddonConfigurationRequest", name: "DescribeAddonConfigurationRequest")
    DescribeAddonConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#DescribeAddonConfigurationResponse", name: "DescribeAddonConfigurationResponse")
    DescribeAddonRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#DescribeAddonRequest", name: "DescribeAddonRequest")
    DescribeAddonResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#DescribeAddonResponse", name: "DescribeAddonResponse")
    DescribeAddonVersionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#DescribeAddonVersionsRequest", name: "DescribeAddonVersionsRequest")
    DescribeAddonVersionsRequestMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.eks#DescribeAddonVersionsRequestMaxResults", name: "DescribeAddonVersionsRequestMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    DescribeAddonVersionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#DescribeAddonVersionsResponse", name: "DescribeAddonVersionsResponse")
    DescribeClusterRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#DescribeClusterRequest", name: "DescribeClusterRequest")
    DescribeClusterResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#DescribeClusterResponse", name: "DescribeClusterResponse")
    DescribeClusterVersionMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.eks#DescribeClusterVersionMaxResults", name: "DescribeClusterVersionMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    DescribeClusterVersionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#DescribeClusterVersionsRequest", name: "DescribeClusterVersionsRequest")
    DescribeClusterVersionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#DescribeClusterVersionsResponse", name: "DescribeClusterVersionsResponse")
    DescribeEksAnywhereSubscriptionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#DescribeEksAnywhereSubscriptionRequest", name: "DescribeEksAnywhereSubscriptionRequest")
    DescribeEksAnywhereSubscriptionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#DescribeEksAnywhereSubscriptionResponse", name: "DescribeEksAnywhereSubscriptionResponse")
    DescribeFargateProfileRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#DescribeFargateProfileRequest", name: "DescribeFargateProfileRequest")
    DescribeFargateProfileResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#DescribeFargateProfileResponse", name: "DescribeFargateProfileResponse")
    DescribeIdentityProviderConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#DescribeIdentityProviderConfigRequest", name: "DescribeIdentityProviderConfigRequest")
    DescribeIdentityProviderConfigResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#DescribeIdentityProviderConfigResponse", name: "DescribeIdentityProviderConfigResponse")
    DescribeInsightRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#DescribeInsightRequest", name: "DescribeInsightRequest")
    DescribeInsightResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#DescribeInsightResponse", name: "DescribeInsightResponse")
    DescribeInsightsRefreshRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#DescribeInsightsRefreshRequest", name: "DescribeInsightsRefreshRequest")
    DescribeInsightsRefreshResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#DescribeInsightsRefreshResponse", name: "DescribeInsightsRefreshResponse")
    DescribeNodegroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#DescribeNodegroupRequest", name: "DescribeNodegroupRequest")
    DescribeNodegroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#DescribeNodegroupResponse", name: "DescribeNodegroupResponse")
    DescribePodIdentityAssociationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#DescribePodIdentityAssociationRequest", name: "DescribePodIdentityAssociationRequest")
    DescribePodIdentityAssociationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#DescribePodIdentityAssociationResponse", name: "DescribePodIdentityAssociationResponse")
    DescribeUpdateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#DescribeUpdateRequest", name: "DescribeUpdateRequest")
    DescribeUpdateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#DescribeUpdateResponse", name: "DescribeUpdateResponse")
    DisassociateAccessPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#DisassociateAccessPolicyRequest", name: "DisassociateAccessPolicyRequest")
    DisassociateAccessPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#DisassociateAccessPolicyResponse", name: "DisassociateAccessPolicyResponse")
    DisassociateIdentityProviderConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#DisassociateIdentityProviderConfigRequest", name: "DisassociateIdentityProviderConfigRequest")
    DisassociateIdentityProviderConfigResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#DisassociateIdentityProviderConfigResponse", name: "DisassociateIdentityProviderConfigResponse")
    EksAnywhereSubscription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#EksAnywhereSubscription", name: "EksAnywhereSubscription")
    EksAnywhereSubscriptionLicenseType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.eks#EksAnywhereSubscriptionLicenseType", name: "EksAnywhereSubscriptionLicenseType")
    EksAnywhereSubscriptionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.eks#EksAnywhereSubscriptionList", name: "EksAnywhereSubscriptionList")
    EksAnywhereSubscriptionName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.eks#EksAnywhereSubscriptionName", name: "EksAnywhereSubscriptionName", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[0-9A-Za-z][A-Za-z0-9\\-_]*$"})
    EksAnywhereSubscriptionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.eks#EksAnywhereSubscriptionStatus", name: "EksAnywhereSubscriptionStatus")
    EksAnywhereSubscriptionStatusValues = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.eks#EksAnywhereSubscriptionStatusValues", name: "EksAnywhereSubscriptionStatusValues")
    EksAnywhereSubscriptionTerm = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#EksAnywhereSubscriptionTerm", name: "EksAnywhereSubscriptionTerm")
    EksAnywhereSubscriptionTermUnit = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.eks#EksAnywhereSubscriptionTermUnit", name: "EksAnywhereSubscriptionTermUnit")
    ElasticLoadBalancing = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#ElasticLoadBalancing", name: "ElasticLoadBalancing")
    EncryptionConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#EncryptionConfig", name: "EncryptionConfig")
    EncryptionConfigList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.eks#EncryptionConfigList", name: "EncryptionConfigList", traits: {"smithy.api#length" => {"min" => 0, "max" => 1}})
    ErrorCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.eks#ErrorCode", name: "ErrorCode")
    ErrorDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#ErrorDetail", name: "ErrorDetail")
    ErrorDetails = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.eks#ErrorDetails", name: "ErrorDetails")
    FargateProfile = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#FargateProfile", name: "FargateProfile")
    FargateProfileHealth = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#FargateProfileHealth", name: "FargateProfileHealth")
    FargateProfileIssue = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#FargateProfileIssue", name: "FargateProfileIssue")
    FargateProfileIssueCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.eks#FargateProfileIssueCode", name: "FargateProfileIssueCode")
    FargateProfileIssueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.eks#FargateProfileIssueList", name: "FargateProfileIssueList")
    FargateProfileLabel = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.eks#FargateProfileLabel", name: "FargateProfileLabel")
    FargateProfileSelector = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#FargateProfileSelector", name: "FargateProfileSelector")
    FargateProfileSelectors = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.eks#FargateProfileSelectors", name: "FargateProfileSelectors")
    FargateProfileStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.eks#FargateProfileStatus", name: "FargateProfileStatus")
    FargateProfilesRequestMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.eks#FargateProfilesRequestMaxResults", name: "FargateProfilesRequestMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    Identity = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#Identity", name: "Identity")
    IdentityProviderConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#IdentityProviderConfig", name: "IdentityProviderConfig")
    IdentityProviderConfigResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#IdentityProviderConfigResponse", name: "IdentityProviderConfigResponse")
    IdentityProviderConfigs = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.eks#IdentityProviderConfigs", name: "IdentityProviderConfigs")
    IncludeClustersList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.eks#IncludeClustersList", name: "IncludeClustersList")
    Insight = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#Insight", name: "Insight")
    InsightCategorySpecificSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#InsightCategorySpecificSummary", name: "InsightCategorySpecificSummary")
    InsightResourceDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#InsightResourceDetail", name: "InsightResourceDetail")
    InsightResourceDetails = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.eks#InsightResourceDetails", name: "InsightResourceDetails")
    InsightStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#InsightStatus", name: "InsightStatus")
    InsightStatusValue = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.eks#InsightStatusValue", name: "InsightStatusValue")
    InsightStatusValueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.eks#InsightStatusValueList", name: "InsightStatusValueList")
    InsightSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.eks#InsightSummaries", name: "InsightSummaries")
    InsightSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#InsightSummary", name: "InsightSummary")
    InsightsFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#InsightsFilter", name: "InsightsFilter")
    InsightsRefreshStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.eks#InsightsRefreshStatus", name: "InsightsRefreshStatus")
    Integer = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.eks#Integer", name: "Integer", traits: {"smithy.api#default" => 0})
    InvalidParameterException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#InvalidParameterException", name: "InvalidParameterException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidRequestException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#InvalidRequestException", name: "InvalidRequestException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidStateException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#InvalidStateException", name: "InvalidStateException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    IpFamily = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.eks#IpFamily", name: "IpFamily")
    Issue = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#Issue", name: "Issue")
    IssueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.eks#IssueList", name: "IssueList")
    KubernetesNetworkConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#KubernetesNetworkConfigRequest", name: "KubernetesNetworkConfigRequest")
    KubernetesNetworkConfigResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#KubernetesNetworkConfigResponse", name: "KubernetesNetworkConfigResponse")
    LaunchTemplateSpecification = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#LaunchTemplateSpecification", name: "LaunchTemplateSpecification")
    License = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#License", name: "License")
    LicenseList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.eks#LicenseList", name: "LicenseList")
    ListAccessEntriesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#ListAccessEntriesRequest", name: "ListAccessEntriesRequest")
    ListAccessEntriesRequestMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.eks#ListAccessEntriesRequestMaxResults", name: "ListAccessEntriesRequestMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    ListAccessEntriesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#ListAccessEntriesResponse", name: "ListAccessEntriesResponse")
    ListAccessPoliciesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#ListAccessPoliciesRequest", name: "ListAccessPoliciesRequest")
    ListAccessPoliciesRequestMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.eks#ListAccessPoliciesRequestMaxResults", name: "ListAccessPoliciesRequestMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    ListAccessPoliciesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#ListAccessPoliciesResponse", name: "ListAccessPoliciesResponse")
    ListAddonsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#ListAddonsRequest", name: "ListAddonsRequest")
    ListAddonsRequestMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.eks#ListAddonsRequestMaxResults", name: "ListAddonsRequestMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    ListAddonsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#ListAddonsResponse", name: "ListAddonsResponse")
    ListAssociatedAccessPoliciesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#ListAssociatedAccessPoliciesRequest", name: "ListAssociatedAccessPoliciesRequest")
    ListAssociatedAccessPoliciesRequestMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.eks#ListAssociatedAccessPoliciesRequestMaxResults", name: "ListAssociatedAccessPoliciesRequestMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    ListAssociatedAccessPoliciesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#ListAssociatedAccessPoliciesResponse", name: "ListAssociatedAccessPoliciesResponse")
    ListClustersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#ListClustersRequest", name: "ListClustersRequest")
    ListClustersRequestMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.eks#ListClustersRequestMaxResults", name: "ListClustersRequestMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    ListClustersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#ListClustersResponse", name: "ListClustersResponse")
    ListEksAnywhereSubscriptionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#ListEksAnywhereSubscriptionsRequest", name: "ListEksAnywhereSubscriptionsRequest")
    ListEksAnywhereSubscriptionsRequestMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.eks#ListEksAnywhereSubscriptionsRequestMaxResults", name: "ListEksAnywhereSubscriptionsRequestMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    ListEksAnywhereSubscriptionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#ListEksAnywhereSubscriptionsResponse", name: "ListEksAnywhereSubscriptionsResponse")
    ListFargateProfilesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#ListFargateProfilesRequest", name: "ListFargateProfilesRequest")
    ListFargateProfilesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#ListFargateProfilesResponse", name: "ListFargateProfilesResponse")
    ListIdentityProviderConfigsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#ListIdentityProviderConfigsRequest", name: "ListIdentityProviderConfigsRequest")
    ListIdentityProviderConfigsRequestMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.eks#ListIdentityProviderConfigsRequestMaxResults", name: "ListIdentityProviderConfigsRequestMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    ListIdentityProviderConfigsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#ListIdentityProviderConfigsResponse", name: "ListIdentityProviderConfigsResponse")
    ListInsightsMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.eks#ListInsightsMaxResults", name: "ListInsightsMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    ListInsightsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#ListInsightsRequest", name: "ListInsightsRequest")
    ListInsightsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#ListInsightsResponse", name: "ListInsightsResponse")
    ListNodegroupsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#ListNodegroupsRequest", name: "ListNodegroupsRequest")
    ListNodegroupsRequestMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.eks#ListNodegroupsRequestMaxResults", name: "ListNodegroupsRequestMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    ListNodegroupsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#ListNodegroupsResponse", name: "ListNodegroupsResponse")
    ListPodIdentityAssociationsMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.eks#ListPodIdentityAssociationsMaxResults", name: "ListPodIdentityAssociationsMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    ListPodIdentityAssociationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#ListPodIdentityAssociationsRequest", name: "ListPodIdentityAssociationsRequest")
    ListPodIdentityAssociationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#ListPodIdentityAssociationsResponse", name: "ListPodIdentityAssociationsResponse")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    ListUpdatesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#ListUpdatesRequest", name: "ListUpdatesRequest")
    ListUpdatesRequestMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.eks#ListUpdatesRequestMaxResults", name: "ListUpdatesRequestMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    ListUpdatesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#ListUpdatesResponse", name: "ListUpdatesResponse")
    LogSetup = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#LogSetup", name: "LogSetup")
    LogSetups = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.eks#LogSetups", name: "LogSetups")
    LogType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.eks#LogType", name: "LogType")
    LogTypes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.eks#LogTypes", name: "LogTypes")
    Logging = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#Logging", name: "Logging")
    MarketplaceInformation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#MarketplaceInformation", name: "MarketplaceInformation")
    NodeRepairConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#NodeRepairConfig", name: "NodeRepairConfig")
    NodeRepairConfigOverrides = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#NodeRepairConfigOverrides", name: "NodeRepairConfigOverrides")
    NodeRepairConfigOverridesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.eks#NodeRepairConfigOverridesList", name: "NodeRepairConfigOverridesList")
    Nodegroup = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#Nodegroup", name: "Nodegroup")
    NodegroupHealth = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#NodegroupHealth", name: "NodegroupHealth")
    NodegroupIssueCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.eks#NodegroupIssueCode", name: "NodegroupIssueCode")
    NodegroupResources = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#NodegroupResources", name: "NodegroupResources")
    NodegroupScalingConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#NodegroupScalingConfig", name: "NodegroupScalingConfig")
    NodegroupStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.eks#NodegroupStatus", name: "NodegroupStatus")
    NodegroupUpdateConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#NodegroupUpdateConfig", name: "NodegroupUpdateConfig")
    NodegroupUpdateStrategies = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.eks#NodegroupUpdateStrategies", name: "NodegroupUpdateStrategies")
    NonZeroInteger = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.eks#NonZeroInteger", name: "NonZeroInteger", traits: {"smithy.api#range" => {"min" => 1}})
    NotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#NotFoundException", name: "NotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    OIDC = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#OIDC", name: "OIDC")
    OidcIdentityProviderConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#OidcIdentityProviderConfig", name: "OidcIdentityProviderConfig")
    OidcIdentityProviderConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#OidcIdentityProviderConfigRequest", name: "OidcIdentityProviderConfigRequest")
    OutpostConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#OutpostConfigRequest", name: "OutpostConfigRequest")
    OutpostConfigResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#OutpostConfigResponse", name: "OutpostConfigResponse")
    PercentCapacity = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.eks#PercentCapacity", name: "PercentCapacity", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    PodIdentityAssociation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#PodIdentityAssociation", name: "PodIdentityAssociation")
    PodIdentityAssociationSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.eks#PodIdentityAssociationSummaries", name: "PodIdentityAssociationSummaries")
    PodIdentityAssociationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#PodIdentityAssociationSummary", name: "PodIdentityAssociationSummary")
    Provider = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#Provider", name: "Provider")
    RegisterClusterRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#RegisterClusterRequest", name: "RegisterClusterRequest")
    RegisterClusterResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#RegisterClusterResponse", name: "RegisterClusterResponse")
    RemoteAccessConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#RemoteAccessConfig", name: "RemoteAccessConfig")
    RemoteNetworkConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#RemoteNetworkConfigRequest", name: "RemoteNetworkConfigRequest")
    RemoteNetworkConfigResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#RemoteNetworkConfigResponse", name: "RemoteNetworkConfigResponse")
    RemoteNodeNetwork = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#RemoteNodeNetwork", name: "RemoteNodeNetwork")
    RemoteNodeNetworkList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.eks#RemoteNodeNetworkList", name: "RemoteNodeNetworkList", traits: {"smithy.api#length" => {"min" => 0, "max" => 1}})
    RemotePodNetwork = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#RemotePodNetwork", name: "RemotePodNetwork")
    RemotePodNetworkList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.eks#RemotePodNetworkList", name: "RemotePodNetworkList", traits: {"smithy.api#length" => {"min" => 0, "max" => 1}})
    RepairAction = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.eks#RepairAction", name: "RepairAction")
    ResolveConflicts = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.eks#ResolveConflicts", name: "ResolveConflicts")
    ResourceInUseException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#ResourceInUseException", name: "ResourceInUseException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ResourceLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#ResourceLimitExceededException", name: "ResourceLimitExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourcePropagationDelayException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#ResourcePropagationDelayException", name: "ResourcePropagationDelayException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 428})
    RoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.eks#RoleArn", name: "RoleArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    ServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#ServerException", name: "ServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    ServiceUnavailableException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#ServiceUnavailableException", name: "ServiceUnavailableException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 503})
    StartInsightsRefreshRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#StartInsightsRefreshRequest", name: "StartInsightsRefreshRequest")
    StartInsightsRefreshResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#StartInsightsRefreshResponse", name: "StartInsightsRefreshResponse")
    StorageConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#StorageConfigRequest", name: "StorageConfigRequest")
    StorageConfigResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#StorageConfigResponse", name: "StorageConfigResponse")
    String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.eks#String", name: "String")
    StringList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.eks#StringList", name: "StringList")
    SupportType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.eks#SupportType", name: "SupportType")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.eks#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.eks#TagKeyList", name: "TagKeyList", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TagMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.eks#TagMap", name: "TagMap", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#TagResourceResponse", name: "TagResourceResponse")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.eks#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    Taint = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#Taint", name: "Taint")
    TaintEffect = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.eks#TaintEffect", name: "TaintEffect")
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.eks#Timestamp", name: "Timestamp")
    UnsupportedAvailabilityZoneException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#UnsupportedAvailabilityZoneException", name: "UnsupportedAvailabilityZoneException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#UntagResourceRequest", name: "UntagResourceRequest")
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#UntagResourceResponse", name: "UntagResourceResponse")
    Update = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#Update", name: "Update")
    UpdateAccessConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#UpdateAccessConfigRequest", name: "UpdateAccessConfigRequest")
    UpdateAccessEntryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#UpdateAccessEntryRequest", name: "UpdateAccessEntryRequest")
    UpdateAccessEntryResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#UpdateAccessEntryResponse", name: "UpdateAccessEntryResponse")
    UpdateAddonRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#UpdateAddonRequest", name: "UpdateAddonRequest")
    UpdateAddonResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#UpdateAddonResponse", name: "UpdateAddonResponse")
    UpdateClusterConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#UpdateClusterConfigRequest", name: "UpdateClusterConfigRequest")
    UpdateClusterConfigResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#UpdateClusterConfigResponse", name: "UpdateClusterConfigResponse")
    UpdateClusterVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#UpdateClusterVersionRequest", name: "UpdateClusterVersionRequest")
    UpdateClusterVersionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#UpdateClusterVersionResponse", name: "UpdateClusterVersionResponse")
    UpdateEksAnywhereSubscriptionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#UpdateEksAnywhereSubscriptionRequest", name: "UpdateEksAnywhereSubscriptionRequest")
    UpdateEksAnywhereSubscriptionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#UpdateEksAnywhereSubscriptionResponse", name: "UpdateEksAnywhereSubscriptionResponse")
    UpdateLabelsPayload = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#UpdateLabelsPayload", name: "UpdateLabelsPayload")
    UpdateNodegroupConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#UpdateNodegroupConfigRequest", name: "UpdateNodegroupConfigRequest")
    UpdateNodegroupConfigResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#UpdateNodegroupConfigResponse", name: "UpdateNodegroupConfigResponse")
    UpdateNodegroupVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#UpdateNodegroupVersionRequest", name: "UpdateNodegroupVersionRequest")
    UpdateNodegroupVersionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#UpdateNodegroupVersionResponse", name: "UpdateNodegroupVersionResponse")
    UpdateParam = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#UpdateParam", name: "UpdateParam")
    UpdateParamType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.eks#UpdateParamType", name: "UpdateParamType")
    UpdateParams = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.eks#UpdateParams", name: "UpdateParams")
    UpdatePodIdentityAssociationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#UpdatePodIdentityAssociationRequest", name: "UpdatePodIdentityAssociationRequest")
    UpdatePodIdentityAssociationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#UpdatePodIdentityAssociationResponse", name: "UpdatePodIdentityAssociationResponse")
    UpdateStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.eks#UpdateStatus", name: "UpdateStatus")
    UpdateTaintsPayload = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#UpdateTaintsPayload", name: "UpdateTaintsPayload")
    UpdateType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.eks#UpdateType", name: "UpdateType")
    UpgradePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#UpgradePolicyRequest", name: "UpgradePolicyRequest")
    UpgradePolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#UpgradePolicyResponse", name: "UpgradePolicyResponse")
    VersionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.eks#VersionStatus", name: "VersionStatus")
    VpcConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#VpcConfigRequest", name: "VpcConfigRequest")
    VpcConfigResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#VpcConfigResponse", name: "VpcConfigResponse")
    ZeroCapacity = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.eks#ZeroCapacity", name: "ZeroCapacity", traits: {"smithy.api#range" => {"min" => 0}})
    ZonalShiftConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#ZonalShiftConfigRequest", name: "ZonalShiftConfigRequest")
    ZonalShiftConfigResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.eks#ZonalShiftConfigResponse", name: "ZonalShiftConfigResponse")
    ConfigStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.eks#configStatus", name: "ConfigStatus")
    LabelKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.eks#labelKey", name: "LabelKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 63}})
    LabelValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.eks#labelValue", name: "LabelValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 63}})
    LabelsKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.eks#labelsKeyList", name: "LabelsKeyList")
    LabelsMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.eks#labelsMap", name: "LabelsMap")
    Namespace = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.eks#namespace", name: "Namespace", traits: {"smithy.api#length" => {"min" => 1, "max" => 63}})
    RequiredClaimsKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.eks#requiredClaimsKey", name: "RequiredClaimsKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 63}})
    RequiredClaimsMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.eks#requiredClaimsMap", name: "RequiredClaimsMap")
    RequiredClaimsValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.eks#requiredClaimsValue", name: "RequiredClaimsValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 253}})
    TaintKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.eks#taintKey", name: "TaintKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 63}})
    TaintValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.eks#taintValue", name: "TaintValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 63}})
    TaintsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.eks#taintsList", name: "TaintsList")

    AMITypes.add_member(:al2_x86_64, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AL2_x86_64", traits: {"smithy.api#enumValue" => "AL2_x86_64"}))
    AMITypes.add_member(:al2_x86_64_gpu, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AL2_x86_64_GPU", traits: {"smithy.api#enumValue" => "AL2_x86_64_GPU"}))
    AMITypes.add_member(:al2_arm_64, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AL2_ARM_64", traits: {"smithy.api#enumValue" => "AL2_ARM_64"}))
    AMITypes.add_member(:custom, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CUSTOM", traits: {"smithy.api#enumValue" => "CUSTOM"}))
    AMITypes.add_member(:bottlerocket_arm_64, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BOTTLEROCKET_ARM_64", traits: {"smithy.api#enumValue" => "BOTTLEROCKET_ARM_64"}))
    AMITypes.add_member(:bottlerocket_x86_64, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BOTTLEROCKET_x86_64", traits: {"smithy.api#enumValue" => "BOTTLEROCKET_x86_64"}))
    AMITypes.add_member(:bottlerocket_arm_64_fips, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BOTTLEROCKET_ARM_64_FIPS", traits: {"smithy.api#enumValue" => "BOTTLEROCKET_ARM_64_FIPS"}))
    AMITypes.add_member(:bottlerocket_x86_64_fips, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BOTTLEROCKET_x86_64_FIPS", traits: {"smithy.api#enumValue" => "BOTTLEROCKET_x86_64_FIPS"}))
    AMITypes.add_member(:bottlerocket_arm_64_nvidia, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BOTTLEROCKET_ARM_64_NVIDIA", traits: {"smithy.api#enumValue" => "BOTTLEROCKET_ARM_64_NVIDIA"}))
    AMITypes.add_member(:bottlerocket_x86_64_nvidia, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BOTTLEROCKET_x86_64_NVIDIA", traits: {"smithy.api#enumValue" => "BOTTLEROCKET_x86_64_NVIDIA"}))
    AMITypes.add_member(:windows_core_2019_x86_64, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WINDOWS_CORE_2019_x86_64", traits: {"smithy.api#enumValue" => "WINDOWS_CORE_2019_x86_64"}))
    AMITypes.add_member(:windows_full_2019_x86_64, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WINDOWS_FULL_2019_x86_64", traits: {"smithy.api#enumValue" => "WINDOWS_FULL_2019_x86_64"}))
    AMITypes.add_member(:windows_core_2022_x86_64, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WINDOWS_CORE_2022_x86_64", traits: {"smithy.api#enumValue" => "WINDOWS_CORE_2022_x86_64"}))
    AMITypes.add_member(:windows_full_2022_x86_64, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WINDOWS_FULL_2022_x86_64", traits: {"smithy.api#enumValue" => "WINDOWS_FULL_2022_x86_64"}))
    AMITypes.add_member(:al2023_x86_64_standard, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AL2023_x86_64_STANDARD", traits: {"smithy.api#enumValue" => "AL2023_x86_64_STANDARD"}))
    AMITypes.add_member(:al2023_arm_64_standard, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AL2023_ARM_64_STANDARD", traits: {"smithy.api#enumValue" => "AL2023_ARM_64_STANDARD"}))
    AMITypes.add_member(:al2023_x86_64_neuron, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AL2023_x86_64_NEURON", traits: {"smithy.api#enumValue" => "AL2023_x86_64_NEURON"}))
    AMITypes.add_member(:al2023_x86_64_nvidia, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AL2023_x86_64_NVIDIA", traits: {"smithy.api#enumValue" => "AL2023_x86_64_NVIDIA"}))
    AMITypes.add_member(:al2023_arm_64_nvidia, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AL2023_ARM_64_NVIDIA", traits: {"smithy.api#enumValue" => "AL2023_ARM_64_NVIDIA"}))
    AccessConfigResponse.add_member(:bootstrap_cluster_creator_admin_permissions, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, name: "bootstrapClusterCreatorAdminPermissions"))
    AccessConfigResponse.add_member(:authentication_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticationMode, name: "authenticationMode"))
    AccessConfigResponse.type = Types::AccessConfigResponse
    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    AccessDeniedException.type = Types::AccessDeniedException
    AccessEntry.add_member(:cluster_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "clusterName"))
    AccessEntry.add_member(:principal_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "principalArn"))
    AccessEntry.add_member(:kubernetes_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "kubernetesGroups"))
    AccessEntry.add_member(:access_entry_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "accessEntryArn"))
    AccessEntry.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "createdAt"))
    AccessEntry.add_member(:modified_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "modifiedAt"))
    AccessEntry.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    AccessEntry.add_member(:username, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "username"))
    AccessEntry.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "type"))
    AccessEntry.type = Types::AccessEntry
    AccessPoliciesList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPolicy, name: "member"))
    AccessPolicy.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name"))
    AccessPolicy.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "arn"))
    AccessPolicy.type = Types::AccessPolicy
    AccessScope.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessScopeType, name: "type"))
    AccessScope.add_member(:namespaces, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "namespaces"))
    AccessScope.type = Types::AccessScope
    AccessScopeType.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "cluster", traits: {"smithy.api#enumValue" => "cluster"}))
    AccessScopeType.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "namespace", traits: {"smithy.api#enumValue" => "namespace"}))
    AdditionalInfoMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "key"))
    AdditionalInfoMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "value"))
    Addon.add_member(:addon_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "addonName"))
    Addon.add_member(:cluster_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterName, name: "clusterName"))
    Addon.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: AddonStatus, name: "status"))
    Addon.add_member(:addon_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "addonVersion"))
    Addon.add_member(:health, ::Smithy::Schema::Shapes::MemberShape.new(target: AddonHealth, name: "health"))
    Addon.add_member(:addon_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "addonArn"))
    Addon.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "createdAt"))
    Addon.add_member(:modified_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "modifiedAt"))
    Addon.add_member(:service_account_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "serviceAccountRoleArn"))
    Addon.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    Addon.add_member(:publisher, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "publisher"))
    Addon.add_member(:owner, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "owner"))
    Addon.add_member(:marketplace_information, ::Smithy::Schema::Shapes::MemberShape.new(target: MarketplaceInformation, name: "marketplaceInformation"))
    Addon.add_member(:configuration_values, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "configurationValues"))
    Addon.add_member(:pod_identity_associations, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "podIdentityAssociations"))
    Addon.add_member(:namespace_config, ::Smithy::Schema::Shapes::MemberShape.new(target: AddonNamespaceConfigResponse, name: "namespaceConfig"))
    Addon.type = Types::Addon
    AddonCompatibilityDetail.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name"))
    AddonCompatibilityDetail.add_member(:compatible_versions, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "compatibleVersions"))
    AddonCompatibilityDetail.type = Types::AddonCompatibilityDetail
    AddonCompatibilityDetails.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AddonCompatibilityDetail, name: "member"))
    AddonHealth.add_member(:issues, ::Smithy::Schema::Shapes::MemberShape.new(target: AddonIssueList, name: "issues"))
    AddonHealth.type = Types::AddonHealth
    AddonInfo.add_member(:addon_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "addonName"))
    AddonInfo.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "type"))
    AddonInfo.add_member(:addon_versions, ::Smithy::Schema::Shapes::MemberShape.new(target: AddonVersionInfoList, name: "addonVersions"))
    AddonInfo.add_member(:publisher, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "publisher"))
    AddonInfo.add_member(:owner, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "owner"))
    AddonInfo.add_member(:marketplace_information, ::Smithy::Schema::Shapes::MemberShape.new(target: MarketplaceInformation, name: "marketplaceInformation"))
    AddonInfo.add_member(:default_namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "defaultNamespace"))
    AddonInfo.type = Types::AddonInfo
    AddonIssue.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: AddonIssueCode, name: "code"))
    AddonIssue.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    AddonIssue.add_member(:resource_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "resourceIds"))
    AddonIssue.type = Types::AddonIssue
    AddonIssueCode.add_member(:access_denied, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACCESS_DENIED", traits: {"smithy.api#enumValue" => "AccessDenied"}))
    AddonIssueCode.add_member(:internal_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INTERNAL_FAILURE", traits: {"smithy.api#enumValue" => "InternalFailure"}))
    AddonIssueCode.add_member(:cluster_unreachable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CLUSTER_UNREACHABLE", traits: {"smithy.api#enumValue" => "ClusterUnreachable"}))
    AddonIssueCode.add_member(:insufficient_number_of_replicas, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INSUFFICIENT_NUMBER_OF_REPLICAS", traits: {"smithy.api#enumValue" => "InsufficientNumberOfReplicas"}))
    AddonIssueCode.add_member(:configuration_conflict, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONFIGURATION_CONFLICT", traits: {"smithy.api#enumValue" => "ConfigurationConflict"}))
    AddonIssueCode.add_member(:admission_request_denied, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ADMISSION_REQUEST_DENIED", traits: {"smithy.api#enumValue" => "AdmissionRequestDenied"}))
    AddonIssueCode.add_member(:unsupported_addon_modification, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNSUPPORTED_ADDON_MODIFICATION", traits: {"smithy.api#enumValue" => "UnsupportedAddonModification"}))
    AddonIssueCode.add_member(:k8_s_resource_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "K8S_RESOURCE_NOT_FOUND", traits: {"smithy.api#enumValue" => "K8sResourceNotFound"}))
    AddonIssueCode.add_member(:addon_subscription_needed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ADDON_SUBSCRIPTION_NEEDED", traits: {"smithy.api#enumValue" => "AddonSubscriptionNeeded"}))
    AddonIssueCode.add_member(:addon_permission_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ADDON_PERMISSION_FAILURE", traits: {"smithy.api#enumValue" => "AddonPermissionFailure"}))
    AddonIssueList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AddonIssue, name: "member"))
    AddonNamespaceConfigRequest.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: Namespace, name: "namespace"))
    AddonNamespaceConfigRequest.type = Types::AddonNamespaceConfigRequest
    AddonNamespaceConfigResponse.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: Namespace, name: "namespace"))
    AddonNamespaceConfigResponse.type = Types::AddonNamespaceConfigResponse
    AddonPodIdentityAssociations.add_member(:service_account, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "serviceAccount", traits: {"smithy.api#required" => {}}))
    AddonPodIdentityAssociations.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "roleArn", traits: {"smithy.api#required" => {}}))
    AddonPodIdentityAssociations.type = Types::AddonPodIdentityAssociations
    AddonPodIdentityAssociationsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AddonPodIdentityAssociations, name: "member"))
    AddonPodIdentityConfiguration.add_member(:service_account, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "serviceAccount"))
    AddonPodIdentityConfiguration.add_member(:recommended_managed_policies, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "recommendedManagedPolicies"))
    AddonPodIdentityConfiguration.type = Types::AddonPodIdentityConfiguration
    AddonPodIdentityConfigurationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AddonPodIdentityConfiguration, name: "member"))
    AddonStatus.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    AddonStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    AddonStatus.add_member(:create_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATE_FAILED", traits: {"smithy.api#enumValue" => "CREATE_FAILED"}))
    AddonStatus.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    AddonStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    AddonStatus.add_member(:delete_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETE_FAILED", traits: {"smithy.api#enumValue" => "DELETE_FAILED"}))
    AddonStatus.add_member(:degraded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEGRADED", traits: {"smithy.api#enumValue" => "DEGRADED"}))
    AddonStatus.add_member(:update_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATE_FAILED", traits: {"smithy.api#enumValue" => "UPDATE_FAILED"}))
    AddonVersionInfo.add_member(:addon_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "addonVersion"))
    AddonVersionInfo.add_member(:architecture, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "architecture"))
    AddonVersionInfo.add_member(:compute_types, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "computeTypes"))
    AddonVersionInfo.add_member(:compatibilities, ::Smithy::Schema::Shapes::MemberShape.new(target: Compatibilities, name: "compatibilities"))
    AddonVersionInfo.add_member(:requires_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "requiresConfiguration", traits: {"smithy.api#default" => false}))
    AddonVersionInfo.add_member(:requires_iam_permissions, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "requiresIamPermissions", traits: {"smithy.api#default" => false}))
    AddonVersionInfo.type = Types::AddonVersionInfo
    AddonVersionInfoList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AddonVersionInfo, name: "member"))
    Addons.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AddonInfo, name: "member"))
    AssociateAccessPolicyRequest.add_member(:cluster_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "clusterName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociateAccessPolicyRequest.add_member(:principal_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "principalArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociateAccessPolicyRequest.add_member(:policy_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "policyArn", traits: {"smithy.api#required" => {}}))
    AssociateAccessPolicyRequest.add_member(:access_scope, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessScope, name: "accessScope", traits: {"smithy.api#required" => {}}))
    AssociateAccessPolicyRequest.type = Types::AssociateAccessPolicyRequest
    AssociateAccessPolicyResponse.add_member(:cluster_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "clusterName"))
    AssociateAccessPolicyResponse.add_member(:principal_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "principalArn"))
    AssociateAccessPolicyResponse.add_member(:associated_access_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociatedAccessPolicy, name: "associatedAccessPolicy"))
    AssociateAccessPolicyResponse.type = Types::AssociateAccessPolicyResponse
    AssociateEncryptionConfigRequest.add_member(:cluster_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "clusterName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociateEncryptionConfigRequest.add_member(:encryption_config, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionConfigList, name: "encryptionConfig", traits: {"smithy.api#required" => {}}))
    AssociateEncryptionConfigRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "clientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    AssociateEncryptionConfigRequest.type = Types::AssociateEncryptionConfigRequest
    AssociateEncryptionConfigResponse.add_member(:update, ::Smithy::Schema::Shapes::MemberShape.new(target: Update, name: "update"))
    AssociateEncryptionConfigResponse.type = Types::AssociateEncryptionConfigResponse
    AssociateIdentityProviderConfigRequest.add_member(:cluster_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "clusterName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociateIdentityProviderConfigRequest.add_member(:oidc, ::Smithy::Schema::Shapes::MemberShape.new(target: OidcIdentityProviderConfigRequest, name: "oidc", traits: {"smithy.api#required" => {}}))
    AssociateIdentityProviderConfigRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    AssociateIdentityProviderConfigRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "clientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    AssociateIdentityProviderConfigRequest.type = Types::AssociateIdentityProviderConfigRequest
    AssociateIdentityProviderConfigResponse.add_member(:update, ::Smithy::Schema::Shapes::MemberShape.new(target: Update, name: "update"))
    AssociateIdentityProviderConfigResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    AssociateIdentityProviderConfigResponse.type = Types::AssociateIdentityProviderConfigResponse
    AssociatedAccessPoliciesList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociatedAccessPolicy, name: "member"))
    AssociatedAccessPolicy.add_member(:policy_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "policyArn"))
    AssociatedAccessPolicy.add_member(:access_scope, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessScope, name: "accessScope"))
    AssociatedAccessPolicy.add_member(:associated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "associatedAt"))
    AssociatedAccessPolicy.add_member(:modified_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "modifiedAt"))
    AssociatedAccessPolicy.type = Types::AssociatedAccessPolicy
    AuthenticationMode.add_member(:api, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "API", traits: {"smithy.api#enumValue" => "API"}))
    AuthenticationMode.add_member(:api_and_config_map, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "API_AND_CONFIG_MAP", traits: {"smithy.api#enumValue" => "API_AND_CONFIG_MAP"}))
    AuthenticationMode.add_member(:config_map, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONFIG_MAP", traits: {"smithy.api#enumValue" => "CONFIG_MAP"}))
    AutoScalingGroup.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name"))
    AutoScalingGroup.type = Types::AutoScalingGroup
    AutoScalingGroupList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoScalingGroup, name: "member"))
    BadRequestException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    BadRequestException.type = Types::BadRequestException
    BlockStorage.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, name: "enabled"))
    BlockStorage.type = Types::BlockStorage
    CapacityTypes.add_member(:on_demand, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ON_DEMAND", traits: {"smithy.api#enumValue" => "ON_DEMAND"}))
    CapacityTypes.add_member(:spot, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SPOT", traits: {"smithy.api#enumValue" => "SPOT"}))
    CapacityTypes.add_member(:capacity_block, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CAPACITY_BLOCK", traits: {"smithy.api#enumValue" => "CAPACITY_BLOCK"}))
    Category.add_member(:upgrade_readiness, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPGRADE_READINESS", traits: {"smithy.api#enumValue" => "UPGRADE_READINESS"}))
    Category.add_member(:misconfiguration, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MISCONFIGURATION", traits: {"smithy.api#enumValue" => "MISCONFIGURATION"}))
    CategoryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Category, name: "member"))
    Certificate.add_member(:data, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "data"))
    Certificate.type = Types::Certificate
    ClientException.add_member(:cluster_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "clusterName"))
    ClientException.add_member(:nodegroup_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nodegroupName"))
    ClientException.add_member(:addon_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "addonName"))
    ClientException.add_member(:subscription_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "subscriptionId"))
    ClientException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    ClientException.type = Types::ClientException
    ClientStat.add_member(:user_agent, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "userAgent"))
    ClientStat.add_member(:number_of_requests_last30_days, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "numberOfRequestsLast30Days", traits: {"smithy.api#default" => 0}))
    ClientStat.add_member(:last_request_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastRequestTime"))
    ClientStat.type = Types::ClientStat
    ClientStats.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientStat, name: "member"))
    Cluster.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name"))
    Cluster.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "arn"))
    Cluster.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "createdAt"))
    Cluster.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "version"))
    Cluster.add_member(:endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "endpoint"))
    Cluster.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "roleArn"))
    Cluster.add_member(:resources_vpc_config, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcConfigResponse, name: "resourcesVpcConfig"))
    Cluster.add_member(:kubernetes_network_config, ::Smithy::Schema::Shapes::MemberShape.new(target: KubernetesNetworkConfigResponse, name: "kubernetesNetworkConfig"))
    Cluster.add_member(:logging, ::Smithy::Schema::Shapes::MemberShape.new(target: Logging, name: "logging"))
    Cluster.add_member(:identity, ::Smithy::Schema::Shapes::MemberShape.new(target: Identity, name: "identity"))
    Cluster.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterStatus, name: "status"))
    Cluster.add_member(:certificate_authority, ::Smithy::Schema::Shapes::MemberShape.new(target: Certificate, name: "certificateAuthority"))
    Cluster.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "clientRequestToken"))
    Cluster.add_member(:platform_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "platformVersion"))
    Cluster.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    Cluster.add_member(:encryption_config, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionConfigList, name: "encryptionConfig"))
    Cluster.add_member(:connector_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorConfigResponse, name: "connectorConfig"))
    Cluster.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "id"))
    Cluster.add_member(:health, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterHealth, name: "health"))
    Cluster.add_member(:outpost_config, ::Smithy::Schema::Shapes::MemberShape.new(target: OutpostConfigResponse, name: "outpostConfig"))
    Cluster.add_member(:access_config, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessConfigResponse, name: "accessConfig"))
    Cluster.add_member(:upgrade_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: UpgradePolicyResponse, name: "upgradePolicy"))
    Cluster.add_member(:zonal_shift_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ZonalShiftConfigResponse, name: "zonalShiftConfig"))
    Cluster.add_member(:remote_network_config, ::Smithy::Schema::Shapes::MemberShape.new(target: RemoteNetworkConfigResponse, name: "remoteNetworkConfig"))
    Cluster.add_member(:compute_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputeConfigResponse, name: "computeConfig"))
    Cluster.add_member(:storage_config, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageConfigResponse, name: "storageConfig"))
    Cluster.add_member(:deletion_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, name: "deletionProtection"))
    Cluster.type = Types::Cluster
    ClusterHealth.add_member(:issues, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterIssueList, name: "issues"))
    ClusterHealth.type = Types::ClusterHealth
    ClusterIssue.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterIssueCode, name: "code"))
    ClusterIssue.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    ClusterIssue.add_member(:resource_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "resourceIds"))
    ClusterIssue.type = Types::ClusterIssue
    ClusterIssueCode.add_member(:access_denied, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACCESS_DENIED", traits: {"smithy.api#enumValue" => "AccessDenied"}))
    ClusterIssueCode.add_member(:cluster_unreachable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CLUSTER_UNREACHABLE", traits: {"smithy.api#enumValue" => "ClusterUnreachable"}))
    ClusterIssueCode.add_member(:configuration_conflict, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONFIGURATION_CONFLICT", traits: {"smithy.api#enumValue" => "ConfigurationConflict"}))
    ClusterIssueCode.add_member(:internal_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INTERNAL_FAILURE", traits: {"smithy.api#enumValue" => "InternalFailure"}))
    ClusterIssueCode.add_member(:resource_limit_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESOURCE_LIMIT_EXCEEDED", traits: {"smithy.api#enumValue" => "ResourceLimitExceeded"}))
    ClusterIssueCode.add_member(:resource_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESOURCE_NOT_FOUND", traits: {"smithy.api#enumValue" => "ResourceNotFound"}))
    ClusterIssueCode.add_member(:iam_role_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IAM_ROLE_NOT_FOUND", traits: {"smithy.api#enumValue" => "IamRoleNotFound"}))
    ClusterIssueCode.add_member(:vpc_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VPC_NOT_FOUND", traits: {"smithy.api#enumValue" => "VpcNotFound"}))
    ClusterIssueCode.add_member(:insufficient_free_addresses, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INSUFFICIENT_FREE_ADDRESSES", traits: {"smithy.api#enumValue" => "InsufficientFreeAddresses"}))
    ClusterIssueCode.add_member(:ec2_service_not_subscribed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EC2_SERVICE_NOT_SUBSCRIBED", traits: {"smithy.api#enumValue" => "Ec2ServiceNotSubscribed"}))
    ClusterIssueCode.add_member(:ec2_subnet_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EC2_SUBNET_NOT_FOUND", traits: {"smithy.api#enumValue" => "Ec2SubnetNotFound"}))
    ClusterIssueCode.add_member(:ec2_security_group_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EC2_SECURITY_GROUP_NOT_FOUND", traits: {"smithy.api#enumValue" => "Ec2SecurityGroupNotFound"}))
    ClusterIssueCode.add_member(:kms_grant_revoked, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KMS_GRANT_REVOKED", traits: {"smithy.api#enumValue" => "KmsGrantRevoked"}))
    ClusterIssueCode.add_member(:kms_key_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KMS_KEY_NOT_FOUND", traits: {"smithy.api#enumValue" => "KmsKeyNotFound"}))
    ClusterIssueCode.add_member(:kms_key_marked_for_deletion, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KMS_KEY_MARKED_FOR_DELETION", traits: {"smithy.api#enumValue" => "KmsKeyMarkedForDeletion"}))
    ClusterIssueCode.add_member(:kms_key_disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KMS_KEY_DISABLED", traits: {"smithy.api#enumValue" => "KmsKeyDisabled"}))
    ClusterIssueCode.add_member(:sts_regional_endpoint_disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STS_REGIONAL_ENDPOINT_DISABLED", traits: {"smithy.api#enumValue" => "StsRegionalEndpointDisabled"}))
    ClusterIssueCode.add_member(:unsupported_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNSUPPORTED_VERSION", traits: {"smithy.api#enumValue" => "UnsupportedVersion"}))
    ClusterIssueCode.add_member(:other, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OTHER", traits: {"smithy.api#enumValue" => "Other"}))
    ClusterIssueList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterIssue, name: "member"))
    ClusterStatus.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    ClusterStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    ClusterStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    ClusterStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    ClusterStatus.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    ClusterStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    ClusterVersionInformation.add_member(:cluster_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "clusterVersion"))
    ClusterVersionInformation.add_member(:cluster_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "clusterType"))
    ClusterVersionInformation.add_member(:default_platform_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "defaultPlatformVersion"))
    ClusterVersionInformation.add_member(:default_version, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "defaultVersion", traits: {"smithy.api#default" => false}))
    ClusterVersionInformation.add_member(:release_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "releaseDate"))
    ClusterVersionInformation.add_member(:end_of_standard_support_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "endOfStandardSupportDate"))
    ClusterVersionInformation.add_member(:end_of_extended_support_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "endOfExtendedSupportDate"))
    ClusterVersionInformation.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterVersionStatus, name: "status"))
    ClusterVersionInformation.add_member(:version_status, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionStatus, name: "versionStatus"))
    ClusterVersionInformation.add_member(:kubernetes_patch_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "kubernetesPatchVersion"))
    ClusterVersionInformation.type = Types::ClusterVersionInformation
    ClusterVersionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterVersionInformation, name: "member"))
    ClusterVersionStatus.add_member(:unsupported, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "unsupported", traits: {"smithy.api#enumValue" => "unsupported"}))
    ClusterVersionStatus.add_member(:standard_support, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "standard_support", traits: {"smithy.api#enumValue" => "standard-support"}))
    ClusterVersionStatus.add_member(:extended_support, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "extended_support", traits: {"smithy.api#enumValue" => "extended-support"}))
    Compatibilities.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Compatibility, name: "member"))
    Compatibility.add_member(:cluster_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "clusterVersion"))
    Compatibility.add_member(:platform_versions, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "platformVersions"))
    Compatibility.add_member(:default_version, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "defaultVersion", traits: {"smithy.api#default" => false}))
    Compatibility.type = Types::Compatibility
    ComputeConfigRequest.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, name: "enabled"))
    ComputeConfigRequest.add_member(:node_pools, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "nodePools"))
    ComputeConfigRequest.add_member(:node_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nodeRoleArn"))
    ComputeConfigRequest.type = Types::ComputeConfigRequest
    ComputeConfigResponse.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, name: "enabled"))
    ComputeConfigResponse.add_member(:node_pools, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "nodePools"))
    ComputeConfigResponse.add_member(:node_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nodeRoleArn"))
    ComputeConfigResponse.type = Types::ComputeConfigResponse
    ConnectorConfigProvider.add_member(:eks_anywhere, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EKS_ANYWHERE", traits: {"smithy.api#enumValue" => "EKS_ANYWHERE"}))
    ConnectorConfigProvider.add_member(:anthos, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ANTHOS", traits: {"smithy.api#enumValue" => "ANTHOS"}))
    ConnectorConfigProvider.add_member(:gke, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GKE", traits: {"smithy.api#enumValue" => "GKE"}))
    ConnectorConfigProvider.add_member(:aks, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AKS", traits: {"smithy.api#enumValue" => "AKS"}))
    ConnectorConfigProvider.add_member(:openshift, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OPENSHIFT", traits: {"smithy.api#enumValue" => "OPENSHIFT"}))
    ConnectorConfigProvider.add_member(:tanzu, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TANZU", traits: {"smithy.api#enumValue" => "TANZU"}))
    ConnectorConfigProvider.add_member(:rancher, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RANCHER", traits: {"smithy.api#enumValue" => "RANCHER"}))
    ConnectorConfigProvider.add_member(:ec2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EC2", traits: {"smithy.api#enumValue" => "EC2"}))
    ConnectorConfigProvider.add_member(:other, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OTHER", traits: {"smithy.api#enumValue" => "OTHER"}))
    ConnectorConfigRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "roleArn", traits: {"smithy.api#required" => {}}))
    ConnectorConfigRequest.add_member(:provider, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorConfigProvider, name: "provider", traits: {"smithy.api#required" => {}}))
    ConnectorConfigRequest.type = Types::ConnectorConfigRequest
    ConnectorConfigResponse.add_member(:activation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "activationId"))
    ConnectorConfigResponse.add_member(:activation_code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "activationCode"))
    ConnectorConfigResponse.add_member(:activation_expiry, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "activationExpiry"))
    ConnectorConfigResponse.add_member(:provider, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "provider"))
    ConnectorConfigResponse.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "roleArn"))
    ConnectorConfigResponse.type = Types::ConnectorConfigResponse
    ControlPlanePlacementRequest.add_member(:group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "groupName"))
    ControlPlanePlacementRequest.type = Types::ControlPlanePlacementRequest
    ControlPlanePlacementResponse.add_member(:group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "groupName"))
    ControlPlanePlacementResponse.type = Types::ControlPlanePlacementResponse
    CreateAccessConfigRequest.add_member(:bootstrap_cluster_creator_admin_permissions, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, name: "bootstrapClusterCreatorAdminPermissions"))
    CreateAccessConfigRequest.add_member(:authentication_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticationMode, name: "authenticationMode"))
    CreateAccessConfigRequest.type = Types::CreateAccessConfigRequest
    CreateAccessEntryRequest.add_member(:cluster_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "clusterName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateAccessEntryRequest.add_member(:principal_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "principalArn", traits: {"smithy.api#required" => {}}))
    CreateAccessEntryRequest.add_member(:kubernetes_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "kubernetesGroups"))
    CreateAccessEntryRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    CreateAccessEntryRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "clientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateAccessEntryRequest.add_member(:username, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "username"))
    CreateAccessEntryRequest.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "type"))
    CreateAccessEntryRequest.type = Types::CreateAccessEntryRequest
    CreateAccessEntryResponse.add_member(:access_entry, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessEntry, name: "accessEntry"))
    CreateAccessEntryResponse.type = Types::CreateAccessEntryResponse
    CreateAddonRequest.add_member(:cluster_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterName, name: "clusterName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateAddonRequest.add_member(:addon_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "addonName", traits: {"smithy.api#required" => {}}))
    CreateAddonRequest.add_member(:addon_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "addonVersion"))
    CreateAddonRequest.add_member(:service_account_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "serviceAccountRoleArn"))
    CreateAddonRequest.add_member(:resolve_conflicts, ::Smithy::Schema::Shapes::MemberShape.new(target: ResolveConflicts, name: "resolveConflicts"))
    CreateAddonRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "clientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateAddonRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    CreateAddonRequest.add_member(:configuration_values, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "configurationValues"))
    CreateAddonRequest.add_member(:pod_identity_associations, ::Smithy::Schema::Shapes::MemberShape.new(target: AddonPodIdentityAssociationsList, name: "podIdentityAssociations"))
    CreateAddonRequest.add_member(:namespace_config, ::Smithy::Schema::Shapes::MemberShape.new(target: AddonNamespaceConfigRequest, name: "namespaceConfig"))
    CreateAddonRequest.type = Types::CreateAddonRequest
    CreateAddonResponse.add_member(:addon, ::Smithy::Schema::Shapes::MemberShape.new(target: Addon, name: "addon"))
    CreateAddonResponse.type = Types::CreateAddonResponse
    CreateClusterRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterName, name: "name", traits: {"smithy.api#required" => {}}))
    CreateClusterRequest.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "version"))
    CreateClusterRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "roleArn", traits: {"smithy.api#required" => {}}))
    CreateClusterRequest.add_member(:resources_vpc_config, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcConfigRequest, name: "resourcesVpcConfig", traits: {"smithy.api#required" => {}}))
    CreateClusterRequest.add_member(:kubernetes_network_config, ::Smithy::Schema::Shapes::MemberShape.new(target: KubernetesNetworkConfigRequest, name: "kubernetesNetworkConfig"))
    CreateClusterRequest.add_member(:logging, ::Smithy::Schema::Shapes::MemberShape.new(target: Logging, name: "logging"))
    CreateClusterRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "clientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateClusterRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    CreateClusterRequest.add_member(:encryption_config, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionConfigList, name: "encryptionConfig"))
    CreateClusterRequest.add_member(:outpost_config, ::Smithy::Schema::Shapes::MemberShape.new(target: OutpostConfigRequest, name: "outpostConfig"))
    CreateClusterRequest.add_member(:access_config, ::Smithy::Schema::Shapes::MemberShape.new(target: CreateAccessConfigRequest, name: "accessConfig"))
    CreateClusterRequest.add_member(:bootstrap_self_managed_addons, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, name: "bootstrapSelfManagedAddons"))
    CreateClusterRequest.add_member(:upgrade_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: UpgradePolicyRequest, name: "upgradePolicy"))
    CreateClusterRequest.add_member(:zonal_shift_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ZonalShiftConfigRequest, name: "zonalShiftConfig"))
    CreateClusterRequest.add_member(:remote_network_config, ::Smithy::Schema::Shapes::MemberShape.new(target: RemoteNetworkConfigRequest, name: "remoteNetworkConfig"))
    CreateClusterRequest.add_member(:compute_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputeConfigRequest, name: "computeConfig"))
    CreateClusterRequest.add_member(:storage_config, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageConfigRequest, name: "storageConfig"))
    CreateClusterRequest.add_member(:deletion_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, name: "deletionProtection"))
    CreateClusterRequest.type = Types::CreateClusterRequest
    CreateClusterResponse.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: Cluster, name: "cluster"))
    CreateClusterResponse.type = Types::CreateClusterResponse
    CreateEksAnywhereSubscriptionRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: EksAnywhereSubscriptionName, name: "name", traits: {"smithy.api#required" => {}}))
    CreateEksAnywhereSubscriptionRequest.add_member(:term, ::Smithy::Schema::Shapes::MemberShape.new(target: EksAnywhereSubscriptionTerm, name: "term", traits: {"smithy.api#required" => {}}))
    CreateEksAnywhereSubscriptionRequest.add_member(:license_quantity, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "licenseQuantity", traits: {"smithy.api#default" => 0}))
    CreateEksAnywhereSubscriptionRequest.add_member(:license_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EksAnywhereSubscriptionLicenseType, name: "licenseType"))
    CreateEksAnywhereSubscriptionRequest.add_member(:auto_renew, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "autoRenew", traits: {"smithy.api#default" => false}))
    CreateEksAnywhereSubscriptionRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "clientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateEksAnywhereSubscriptionRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    CreateEksAnywhereSubscriptionRequest.type = Types::CreateEksAnywhereSubscriptionRequest
    CreateEksAnywhereSubscriptionResponse.add_member(:subscription, ::Smithy::Schema::Shapes::MemberShape.new(target: EksAnywhereSubscription, name: "subscription"))
    CreateEksAnywhereSubscriptionResponse.type = Types::CreateEksAnywhereSubscriptionResponse
    CreateFargateProfileRequest.add_member(:fargate_profile_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "fargateProfileName", traits: {"smithy.api#required" => {}}))
    CreateFargateProfileRequest.add_member(:cluster_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "clusterName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateFargateProfileRequest.add_member(:pod_execution_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "podExecutionRoleArn", traits: {"smithy.api#required" => {}}))
    CreateFargateProfileRequest.add_member(:subnets, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "subnets"))
    CreateFargateProfileRequest.add_member(:selectors, ::Smithy::Schema::Shapes::MemberShape.new(target: FargateProfileSelectors, name: "selectors"))
    CreateFargateProfileRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "clientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateFargateProfileRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    CreateFargateProfileRequest.type = Types::CreateFargateProfileRequest
    CreateFargateProfileResponse.add_member(:fargate_profile, ::Smithy::Schema::Shapes::MemberShape.new(target: FargateProfile, name: "fargateProfile"))
    CreateFargateProfileResponse.type = Types::CreateFargateProfileResponse
    CreateNodegroupRequest.add_member(:cluster_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "clusterName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateNodegroupRequest.add_member(:nodegroup_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nodegroupName", traits: {"smithy.api#required" => {}}))
    CreateNodegroupRequest.add_member(:scaling_config, ::Smithy::Schema::Shapes::MemberShape.new(target: NodegroupScalingConfig, name: "scalingConfig"))
    CreateNodegroupRequest.add_member(:disk_size, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, name: "diskSize"))
    CreateNodegroupRequest.add_member(:subnets, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "subnets", traits: {"smithy.api#required" => {}}))
    CreateNodegroupRequest.add_member(:instance_types, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "instanceTypes"))
    CreateNodegroupRequest.add_member(:ami_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AMITypes, name: "amiType"))
    CreateNodegroupRequest.add_member(:remote_access, ::Smithy::Schema::Shapes::MemberShape.new(target: RemoteAccessConfig, name: "remoteAccess"))
    CreateNodegroupRequest.add_member(:node_role, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nodeRole", traits: {"smithy.api#required" => {}}))
    CreateNodegroupRequest.add_member(:labels, ::Smithy::Schema::Shapes::MemberShape.new(target: LabelsMap, name: "labels"))
    CreateNodegroupRequest.add_member(:taints, ::Smithy::Schema::Shapes::MemberShape.new(target: TaintsList, name: "taints"))
    CreateNodegroupRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    CreateNodegroupRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "clientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateNodegroupRequest.add_member(:launch_template, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchTemplateSpecification, name: "launchTemplate"))
    CreateNodegroupRequest.add_member(:update_config, ::Smithy::Schema::Shapes::MemberShape.new(target: NodegroupUpdateConfig, name: "updateConfig"))
    CreateNodegroupRequest.add_member(:node_repair_config, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeRepairConfig, name: "nodeRepairConfig"))
    CreateNodegroupRequest.add_member(:capacity_type, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityTypes, name: "capacityType"))
    CreateNodegroupRequest.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "version"))
    CreateNodegroupRequest.add_member(:release_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "releaseVersion"))
    CreateNodegroupRequest.type = Types::CreateNodegroupRequest
    CreateNodegroupResponse.add_member(:nodegroup, ::Smithy::Schema::Shapes::MemberShape.new(target: Nodegroup, name: "nodegroup"))
    CreateNodegroupResponse.type = Types::CreateNodegroupResponse
    CreatePodIdentityAssociationRequest.add_member(:cluster_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "clusterName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreatePodIdentityAssociationRequest.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "namespace", traits: {"smithy.api#required" => {}}))
    CreatePodIdentityAssociationRequest.add_member(:service_account, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "serviceAccount", traits: {"smithy.api#required" => {}}))
    CreatePodIdentityAssociationRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "roleArn", traits: {"smithy.api#required" => {}}))
    CreatePodIdentityAssociationRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "clientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreatePodIdentityAssociationRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    CreatePodIdentityAssociationRequest.add_member(:disable_session_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, name: "disableSessionTags"))
    CreatePodIdentityAssociationRequest.add_member(:target_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "targetRoleArn"))
    CreatePodIdentityAssociationRequest.type = Types::CreatePodIdentityAssociationRequest
    CreatePodIdentityAssociationResponse.add_member(:association, ::Smithy::Schema::Shapes::MemberShape.new(target: PodIdentityAssociation, name: "association"))
    CreatePodIdentityAssociationResponse.type = Types::CreatePodIdentityAssociationResponse
    DeleteAccessEntryRequest.add_member(:cluster_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "clusterName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAccessEntryRequest.add_member(:principal_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "principalArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAccessEntryRequest.type = Types::DeleteAccessEntryRequest
    DeleteAccessEntryResponse.type = Types::DeleteAccessEntryResponse
    DeleteAddonRequest.add_member(:cluster_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterName, name: "clusterName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAddonRequest.add_member(:addon_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "addonName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAddonRequest.add_member(:preserve, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "preserve", traits: {"smithy.api#default" => false, "smithy.api#httpQuery" => "preserve"}))
    DeleteAddonRequest.type = Types::DeleteAddonRequest
    DeleteAddonResponse.add_member(:addon, ::Smithy::Schema::Shapes::MemberShape.new(target: Addon, name: "addon"))
    DeleteAddonResponse.type = Types::DeleteAddonResponse
    DeleteClusterRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteClusterRequest.type = Types::DeleteClusterRequest
    DeleteClusterResponse.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: Cluster, name: "cluster"))
    DeleteClusterResponse.type = Types::DeleteClusterResponse
    DeleteEksAnywhereSubscriptionRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteEksAnywhereSubscriptionRequest.type = Types::DeleteEksAnywhereSubscriptionRequest
    DeleteEksAnywhereSubscriptionResponse.add_member(:subscription, ::Smithy::Schema::Shapes::MemberShape.new(target: EksAnywhereSubscription, name: "subscription"))
    DeleteEksAnywhereSubscriptionResponse.type = Types::DeleteEksAnywhereSubscriptionResponse
    DeleteFargateProfileRequest.add_member(:cluster_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "clusterName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteFargateProfileRequest.add_member(:fargate_profile_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "fargateProfileName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteFargateProfileRequest.type = Types::DeleteFargateProfileRequest
    DeleteFargateProfileResponse.add_member(:fargate_profile, ::Smithy::Schema::Shapes::MemberShape.new(target: FargateProfile, name: "fargateProfile"))
    DeleteFargateProfileResponse.type = Types::DeleteFargateProfileResponse
    DeleteNodegroupRequest.add_member(:cluster_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "clusterName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteNodegroupRequest.add_member(:nodegroup_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nodegroupName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteNodegroupRequest.type = Types::DeleteNodegroupRequest
    DeleteNodegroupResponse.add_member(:nodegroup, ::Smithy::Schema::Shapes::MemberShape.new(target: Nodegroup, name: "nodegroup"))
    DeleteNodegroupResponse.type = Types::DeleteNodegroupResponse
    DeletePodIdentityAssociationRequest.add_member(:cluster_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "clusterName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeletePodIdentityAssociationRequest.add_member(:association_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "associationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeletePodIdentityAssociationRequest.type = Types::DeletePodIdentityAssociationRequest
    DeletePodIdentityAssociationResponse.add_member(:association, ::Smithy::Schema::Shapes::MemberShape.new(target: PodIdentityAssociation, name: "association"))
    DeletePodIdentityAssociationResponse.type = Types::DeletePodIdentityAssociationResponse
    DeprecationDetail.add_member(:usage, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "usage"))
    DeprecationDetail.add_member(:replaced_with, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "replacedWith"))
    DeprecationDetail.add_member(:stop_serving_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "stopServingVersion"))
    DeprecationDetail.add_member(:start_serving_replacement_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "startServingReplacementVersion"))
    DeprecationDetail.add_member(:client_stats, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientStats, name: "clientStats"))
    DeprecationDetail.type = Types::DeprecationDetail
    DeprecationDetails.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DeprecationDetail, name: "member"))
    DeregisterClusterRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeregisterClusterRequest.type = Types::DeregisterClusterRequest
    DeregisterClusterResponse.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: Cluster, name: "cluster"))
    DeregisterClusterResponse.type = Types::DeregisterClusterResponse
    DescribeAccessEntryRequest.add_member(:cluster_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "clusterName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeAccessEntryRequest.add_member(:principal_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "principalArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeAccessEntryRequest.type = Types::DescribeAccessEntryRequest
    DescribeAccessEntryResponse.add_member(:access_entry, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessEntry, name: "accessEntry"))
    DescribeAccessEntryResponse.type = Types::DescribeAccessEntryResponse
    DescribeAddonConfigurationRequest.add_member(:addon_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "addonName", traits: {"smithy.api#httpQuery" => "addonName", "smithy.api#required" => {}}))
    DescribeAddonConfigurationRequest.add_member(:addon_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "addonVersion", traits: {"smithy.api#httpQuery" => "addonVersion", "smithy.api#required" => {}}))
    DescribeAddonConfigurationRequest.type = Types::DescribeAddonConfigurationRequest
    DescribeAddonConfigurationResponse.add_member(:addon_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "addonName"))
    DescribeAddonConfigurationResponse.add_member(:addon_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "addonVersion"))
    DescribeAddonConfigurationResponse.add_member(:configuration_schema, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "configurationSchema"))
    DescribeAddonConfigurationResponse.add_member(:pod_identity_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AddonPodIdentityConfigurationList, name: "podIdentityConfiguration"))
    DescribeAddonConfigurationResponse.type = Types::DescribeAddonConfigurationResponse
    DescribeAddonRequest.add_member(:cluster_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterName, name: "clusterName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeAddonRequest.add_member(:addon_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "addonName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeAddonRequest.type = Types::DescribeAddonRequest
    DescribeAddonResponse.add_member(:addon, ::Smithy::Schema::Shapes::MemberShape.new(target: Addon, name: "addon"))
    DescribeAddonResponse.type = Types::DescribeAddonResponse
    DescribeAddonVersionsRequest.add_member(:kubernetes_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "kubernetesVersion", traits: {"smithy.api#httpQuery" => "kubernetesVersion"}))
    DescribeAddonVersionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: DescribeAddonVersionsRequestMaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    DescribeAddonVersionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    DescribeAddonVersionsRequest.add_member(:addon_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "addonName", traits: {"smithy.api#httpQuery" => "addonName"}))
    DescribeAddonVersionsRequest.add_member(:types, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "types", traits: {"smithy.api#httpQuery" => "types"}))
    DescribeAddonVersionsRequest.add_member(:publishers, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "publishers", traits: {"smithy.api#httpQuery" => "publishers"}))
    DescribeAddonVersionsRequest.add_member(:owners, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "owners", traits: {"smithy.api#httpQuery" => "owners"}))
    DescribeAddonVersionsRequest.type = Types::DescribeAddonVersionsRequest
    DescribeAddonVersionsResponse.add_member(:addons, ::Smithy::Schema::Shapes::MemberShape.new(target: Addons, name: "addons"))
    DescribeAddonVersionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken"))
    DescribeAddonVersionsResponse.type = Types::DescribeAddonVersionsResponse
    DescribeClusterRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeClusterRequest.type = Types::DescribeClusterRequest
    DescribeClusterResponse.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: Cluster, name: "cluster"))
    DescribeClusterResponse.type = Types::DescribeClusterResponse
    DescribeClusterVersionsRequest.add_member(:cluster_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "clusterType", traits: {"smithy.api#httpQuery" => "clusterType"}))
    DescribeClusterVersionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: DescribeClusterVersionMaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    DescribeClusterVersionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    DescribeClusterVersionsRequest.add_member(:default_only, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, name: "defaultOnly", traits: {"smithy.api#httpQuery" => "defaultOnly"}))
    DescribeClusterVersionsRequest.add_member(:include_all, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, name: "includeAll", traits: {"smithy.api#httpQuery" => "includeAll"}))
    DescribeClusterVersionsRequest.add_member(:cluster_versions, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "clusterVersions", traits: {"smithy.api#httpQuery" => "clusterVersions"}))
    DescribeClusterVersionsRequest.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterVersionStatus, name: "status", traits: {"smithy.api#deprecated" => {"since" => "2025-02-15", "message" => "status has been replaced by versionStatus"}, "smithy.api#httpQuery" => "status"}))
    DescribeClusterVersionsRequest.add_member(:version_status, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionStatus, name: "versionStatus", traits: {"smithy.api#httpQuery" => "versionStatus"}))
    DescribeClusterVersionsRequest.type = Types::DescribeClusterVersionsRequest
    DescribeClusterVersionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken"))
    DescribeClusterVersionsResponse.add_member(:cluster_versions, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterVersionList, name: "clusterVersions"))
    DescribeClusterVersionsResponse.type = Types::DescribeClusterVersionsResponse
    DescribeEksAnywhereSubscriptionRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeEksAnywhereSubscriptionRequest.type = Types::DescribeEksAnywhereSubscriptionRequest
    DescribeEksAnywhereSubscriptionResponse.add_member(:subscription, ::Smithy::Schema::Shapes::MemberShape.new(target: EksAnywhereSubscription, name: "subscription"))
    DescribeEksAnywhereSubscriptionResponse.type = Types::DescribeEksAnywhereSubscriptionResponse
    DescribeFargateProfileRequest.add_member(:cluster_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "clusterName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeFargateProfileRequest.add_member(:fargate_profile_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "fargateProfileName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeFargateProfileRequest.type = Types::DescribeFargateProfileRequest
    DescribeFargateProfileResponse.add_member(:fargate_profile, ::Smithy::Schema::Shapes::MemberShape.new(target: FargateProfile, name: "fargateProfile"))
    DescribeFargateProfileResponse.type = Types::DescribeFargateProfileResponse
    DescribeIdentityProviderConfigRequest.add_member(:cluster_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "clusterName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeIdentityProviderConfigRequest.add_member(:identity_provider_config, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityProviderConfig, name: "identityProviderConfig", traits: {"smithy.api#required" => {}}))
    DescribeIdentityProviderConfigRequest.type = Types::DescribeIdentityProviderConfigRequest
    DescribeIdentityProviderConfigResponse.add_member(:identity_provider_config, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityProviderConfigResponse, name: "identityProviderConfig"))
    DescribeIdentityProviderConfigResponse.type = Types::DescribeIdentityProviderConfigResponse
    DescribeInsightRequest.add_member(:cluster_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "clusterName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeInsightRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeInsightRequest.type = Types::DescribeInsightRequest
    DescribeInsightResponse.add_member(:insight, ::Smithy::Schema::Shapes::MemberShape.new(target: Insight, name: "insight"))
    DescribeInsightResponse.type = Types::DescribeInsightResponse
    DescribeInsightsRefreshRequest.add_member(:cluster_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "clusterName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeInsightsRefreshRequest.type = Types::DescribeInsightsRefreshRequest
    DescribeInsightsRefreshResponse.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    DescribeInsightsRefreshResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightsRefreshStatus, name: "status"))
    DescribeInsightsRefreshResponse.add_member(:started_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "startedAt"))
    DescribeInsightsRefreshResponse.add_member(:ended_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "endedAt"))
    DescribeInsightsRefreshResponse.type = Types::DescribeInsightsRefreshResponse
    DescribeNodegroupRequest.add_member(:cluster_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "clusterName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeNodegroupRequest.add_member(:nodegroup_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nodegroupName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeNodegroupRequest.type = Types::DescribeNodegroupRequest
    DescribeNodegroupResponse.add_member(:nodegroup, ::Smithy::Schema::Shapes::MemberShape.new(target: Nodegroup, name: "nodegroup"))
    DescribeNodegroupResponse.type = Types::DescribeNodegroupResponse
    DescribePodIdentityAssociationRequest.add_member(:cluster_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "clusterName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribePodIdentityAssociationRequest.add_member(:association_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "associationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribePodIdentityAssociationRequest.type = Types::DescribePodIdentityAssociationRequest
    DescribePodIdentityAssociationResponse.add_member(:association, ::Smithy::Schema::Shapes::MemberShape.new(target: PodIdentityAssociation, name: "association"))
    DescribePodIdentityAssociationResponse.type = Types::DescribePodIdentityAssociationResponse
    DescribeUpdateRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeUpdateRequest.add_member(:update_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "updateId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeUpdateRequest.add_member(:nodegroup_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nodegroupName", traits: {"smithy.api#httpQuery" => "nodegroupName"}))
    DescribeUpdateRequest.add_member(:addon_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "addonName", traits: {"smithy.api#httpQuery" => "addonName"}))
    DescribeUpdateRequest.type = Types::DescribeUpdateRequest
    DescribeUpdateResponse.add_member(:update, ::Smithy::Schema::Shapes::MemberShape.new(target: Update, name: "update"))
    DescribeUpdateResponse.type = Types::DescribeUpdateResponse
    DisassociateAccessPolicyRequest.add_member(:cluster_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "clusterName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateAccessPolicyRequest.add_member(:principal_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "principalArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateAccessPolicyRequest.add_member(:policy_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "policyArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateAccessPolicyRequest.type = Types::DisassociateAccessPolicyRequest
    DisassociateAccessPolicyResponse.type = Types::DisassociateAccessPolicyResponse
    DisassociateIdentityProviderConfigRequest.add_member(:cluster_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "clusterName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateIdentityProviderConfigRequest.add_member(:identity_provider_config, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityProviderConfig, name: "identityProviderConfig", traits: {"smithy.api#required" => {}}))
    DisassociateIdentityProviderConfigRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "clientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    DisassociateIdentityProviderConfigRequest.type = Types::DisassociateIdentityProviderConfigRequest
    DisassociateIdentityProviderConfigResponse.add_member(:update, ::Smithy::Schema::Shapes::MemberShape.new(target: Update, name: "update"))
    DisassociateIdentityProviderConfigResponse.type = Types::DisassociateIdentityProviderConfigResponse
    EksAnywhereSubscription.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "id"))
    EksAnywhereSubscription.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "arn"))
    EksAnywhereSubscription.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "createdAt"))
    EksAnywhereSubscription.add_member(:effective_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "effectiveDate"))
    EksAnywhereSubscription.add_member(:expiration_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "expirationDate"))
    EksAnywhereSubscription.add_member(:license_quantity, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "licenseQuantity", traits: {"smithy.api#default" => 0}))
    EksAnywhereSubscription.add_member(:license_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EksAnywhereSubscriptionLicenseType, name: "licenseType"))
    EksAnywhereSubscription.add_member(:term, ::Smithy::Schema::Shapes::MemberShape.new(target: EksAnywhereSubscriptionTerm, name: "term"))
    EksAnywhereSubscription.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "status"))
    EksAnywhereSubscription.add_member(:auto_renew, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "autoRenew", traits: {"smithy.api#default" => false}))
    EksAnywhereSubscription.add_member(:license_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "licenseArns"))
    EksAnywhereSubscription.add_member(:licenses, ::Smithy::Schema::Shapes::MemberShape.new(target: LicenseList, name: "licenses"))
    EksAnywhereSubscription.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    EksAnywhereSubscription.type = Types::EksAnywhereSubscription
    EksAnywhereSubscriptionLicenseType.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Cluster", traits: {"smithy.api#enumValue" => "Cluster"}))
    EksAnywhereSubscriptionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EksAnywhereSubscription, name: "member"))
    EksAnywhereSubscriptionStatus.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    EksAnywhereSubscriptionStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    EksAnywhereSubscriptionStatus.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    EksAnywhereSubscriptionStatus.add_member(:expiring, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXPIRING", traits: {"smithy.api#enumValue" => "EXPIRING"}))
    EksAnywhereSubscriptionStatus.add_member(:expired, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXPIRED", traits: {"smithy.api#enumValue" => "EXPIRED"}))
    EksAnywhereSubscriptionStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    EksAnywhereSubscriptionStatusValues.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EksAnywhereSubscriptionStatus, name: "member"))
    EksAnywhereSubscriptionTerm.add_member(:duration, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "duration", traits: {"smithy.api#default" => 0}))
    EksAnywhereSubscriptionTerm.add_member(:unit, ::Smithy::Schema::Shapes::MemberShape.new(target: EksAnywhereSubscriptionTermUnit, name: "unit"))
    EksAnywhereSubscriptionTerm.type = Types::EksAnywhereSubscriptionTerm
    EksAnywhereSubscriptionTermUnit.add_member(:months, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MONTHS", traits: {"smithy.api#enumValue" => "MONTHS"}))
    ElasticLoadBalancing.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, name: "enabled"))
    ElasticLoadBalancing.type = Types::ElasticLoadBalancing
    EncryptionConfig.add_member(:resources, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "resources"))
    EncryptionConfig.add_member(:provider, ::Smithy::Schema::Shapes::MemberShape.new(target: Provider, name: "provider"))
    EncryptionConfig.type = Types::EncryptionConfig
    EncryptionConfigList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionConfig, name: "member"))
    ErrorCode.add_member(:subnet_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUBNET_NOT_FOUND", traits: {"smithy.api#enumValue" => "SubnetNotFound"}))
    ErrorCode.add_member(:security_group_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SECURITY_GROUP_NOT_FOUND", traits: {"smithy.api#enumValue" => "SecurityGroupNotFound"}))
    ErrorCode.add_member(:eni_limit_reached, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENI_LIMIT_REACHED", traits: {"smithy.api#enumValue" => "EniLimitReached"}))
    ErrorCode.add_member(:ip_not_available, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IP_NOT_AVAILABLE", traits: {"smithy.api#enumValue" => "IpNotAvailable"}))
    ErrorCode.add_member(:access_denied, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACCESS_DENIED", traits: {"smithy.api#enumValue" => "AccessDenied"}))
    ErrorCode.add_member(:operation_not_permitted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OPERATION_NOT_PERMITTED", traits: {"smithy.api#enumValue" => "OperationNotPermitted"}))
    ErrorCode.add_member(:vpc_id_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VPC_ID_NOT_FOUND", traits: {"smithy.api#enumValue" => "VpcIdNotFound"}))
    ErrorCode.add_member(:unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNKNOWN", traits: {"smithy.api#enumValue" => "Unknown"}))
    ErrorCode.add_member(:node_creation_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NODE_CREATION_FAILURE", traits: {"smithy.api#enumValue" => "NodeCreationFailure"}))
    ErrorCode.add_member(:pod_eviction_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "POD_EVICTION_FAILURE", traits: {"smithy.api#enumValue" => "PodEvictionFailure"}))
    ErrorCode.add_member(:insufficient_free_addresses, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INSUFFICIENT_FREE_ADDRESSES", traits: {"smithy.api#enumValue" => "InsufficientFreeAddresses"}))
    ErrorCode.add_member(:cluster_unreachable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CLUSTER_UNREACHABLE", traits: {"smithy.api#enumValue" => "ClusterUnreachable"}))
    ErrorCode.add_member(:insufficient_number_of_replicas, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INSUFFICIENT_NUMBER_OF_REPLICAS", traits: {"smithy.api#enumValue" => "InsufficientNumberOfReplicas"}))
    ErrorCode.add_member(:configuration_conflict, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONFIGURATION_CONFLICT", traits: {"smithy.api#enumValue" => "ConfigurationConflict"}))
    ErrorCode.add_member(:admission_request_denied, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ADMISSION_REQUEST_DENIED", traits: {"smithy.api#enumValue" => "AdmissionRequestDenied"}))
    ErrorCode.add_member(:unsupported_addon_modification, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNSUPPORTED_ADDON_MODIFICATION", traits: {"smithy.api#enumValue" => "UnsupportedAddonModification"}))
    ErrorCode.add_member(:k8_s_resource_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "K8S_RESOURCE_NOT_FOUND", traits: {"smithy.api#enumValue" => "K8sResourceNotFound"}))
    ErrorDetail.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "errorCode"))
    ErrorDetail.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "errorMessage"))
    ErrorDetail.add_member(:resource_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "resourceIds"))
    ErrorDetail.type = Types::ErrorDetail
    ErrorDetails.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDetail, name: "member"))
    FargateProfile.add_member(:fargate_profile_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "fargateProfileName"))
    FargateProfile.add_member(:fargate_profile_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "fargateProfileArn"))
    FargateProfile.add_member(:cluster_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "clusterName"))
    FargateProfile.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "createdAt"))
    FargateProfile.add_member(:pod_execution_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "podExecutionRoleArn"))
    FargateProfile.add_member(:subnets, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "subnets"))
    FargateProfile.add_member(:selectors, ::Smithy::Schema::Shapes::MemberShape.new(target: FargateProfileSelectors, name: "selectors"))
    FargateProfile.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: FargateProfileStatus, name: "status"))
    FargateProfile.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    FargateProfile.add_member(:health, ::Smithy::Schema::Shapes::MemberShape.new(target: FargateProfileHealth, name: "health"))
    FargateProfile.type = Types::FargateProfile
    FargateProfileHealth.add_member(:issues, ::Smithy::Schema::Shapes::MemberShape.new(target: FargateProfileIssueList, name: "issues"))
    FargateProfileHealth.type = Types::FargateProfileHealth
    FargateProfileIssue.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: FargateProfileIssueCode, name: "code"))
    FargateProfileIssue.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    FargateProfileIssue.add_member(:resource_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "resourceIds"))
    FargateProfileIssue.type = Types::FargateProfileIssue
    FargateProfileIssueCode.add_member(:pod_execution_role_already_in_use, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "POD_EXECUTION_ROLE_ALREADY_IN_USE", traits: {"smithy.api#enumValue" => "PodExecutionRoleAlreadyInUse"}))
    FargateProfileIssueCode.add_member(:access_denied, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACCESS_DENIED", traits: {"smithy.api#enumValue" => "AccessDenied"}))
    FargateProfileIssueCode.add_member(:cluster_unreachable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CLUSTER_UNREACHABLE", traits: {"smithy.api#enumValue" => "ClusterUnreachable"}))
    FargateProfileIssueCode.add_member(:internal_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INTERNAL_FAILURE", traits: {"smithy.api#enumValue" => "InternalFailure"}))
    FargateProfileIssueList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FargateProfileIssue, name: "member"))
    FargateProfileLabel.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "key"))
    FargateProfileLabel.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "value"))
    FargateProfileSelector.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "namespace"))
    FargateProfileSelector.add_member(:labels, ::Smithy::Schema::Shapes::MemberShape.new(target: FargateProfileLabel, name: "labels"))
    FargateProfileSelector.type = Types::FargateProfileSelector
    FargateProfileSelectors.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FargateProfileSelector, name: "member"))
    FargateProfileStatus.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    FargateProfileStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    FargateProfileStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    FargateProfileStatus.add_member(:create_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATE_FAILED", traits: {"smithy.api#enumValue" => "CREATE_FAILED"}))
    FargateProfileStatus.add_member(:delete_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETE_FAILED", traits: {"smithy.api#enumValue" => "DELETE_FAILED"}))
    Identity.add_member(:oidc, ::Smithy::Schema::Shapes::MemberShape.new(target: OIDC, name: "oidc"))
    Identity.type = Types::Identity
    IdentityProviderConfig.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "type", traits: {"smithy.api#required" => {}}))
    IdentityProviderConfig.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name", traits: {"smithy.api#required" => {}}))
    IdentityProviderConfig.type = Types::IdentityProviderConfig
    IdentityProviderConfigResponse.add_member(:oidc, ::Smithy::Schema::Shapes::MemberShape.new(target: OidcIdentityProviderConfig, name: "oidc"))
    IdentityProviderConfigResponse.type = Types::IdentityProviderConfigResponse
    IdentityProviderConfigs.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityProviderConfig, name: "member"))
    IncludeClustersList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    Insight.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "id"))
    Insight.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name"))
    Insight.add_member(:category, ::Smithy::Schema::Shapes::MemberShape.new(target: Category, name: "category"))
    Insight.add_member(:kubernetes_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "kubernetesVersion"))
    Insight.add_member(:last_refresh_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastRefreshTime"))
    Insight.add_member(:last_transition_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastTransitionTime"))
    Insight.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "description"))
    Insight.add_member(:insight_status, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightStatus, name: "insightStatus"))
    Insight.add_member(:recommendation, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "recommendation"))
    Insight.add_member(:additional_info, ::Smithy::Schema::Shapes::MemberShape.new(target: AdditionalInfoMap, name: "additionalInfo"))
    Insight.add_member(:resources, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightResourceDetails, name: "resources"))
    Insight.add_member(:category_specific_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightCategorySpecificSummary, name: "categorySpecificSummary"))
    Insight.type = Types::Insight
    InsightCategorySpecificSummary.add_member(:deprecation_details, ::Smithy::Schema::Shapes::MemberShape.new(target: DeprecationDetails, name: "deprecationDetails"))
    InsightCategorySpecificSummary.add_member(:addon_compatibility_details, ::Smithy::Schema::Shapes::MemberShape.new(target: AddonCompatibilityDetails, name: "addonCompatibilityDetails"))
    InsightCategorySpecificSummary.type = Types::InsightCategorySpecificSummary
    InsightResourceDetail.add_member(:insight_status, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightStatus, name: "insightStatus"))
    InsightResourceDetail.add_member(:kubernetes_resource_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "kubernetesResourceUri"))
    InsightResourceDetail.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "arn"))
    InsightResourceDetail.type = Types::InsightResourceDetail
    InsightResourceDetails.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightResourceDetail, name: "member"))
    InsightStatus.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightStatusValue, name: "status"))
    InsightStatus.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "reason"))
    InsightStatus.type = Types::InsightStatus
    InsightStatusValue.add_member(:passing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PASSING", traits: {"smithy.api#enumValue" => "PASSING"}))
    InsightStatusValue.add_member(:warning, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WARNING", traits: {"smithy.api#enumValue" => "WARNING"}))
    InsightStatusValue.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ERROR", traits: {"smithy.api#enumValue" => "ERROR"}))
    InsightStatusValue.add_member(:unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNKNOWN", traits: {"smithy.api#enumValue" => "UNKNOWN"}))
    InsightStatusValueList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightStatusValue, name: "member"))
    InsightSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightSummary, name: "member"))
    InsightSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "id"))
    InsightSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name"))
    InsightSummary.add_member(:category, ::Smithy::Schema::Shapes::MemberShape.new(target: Category, name: "category"))
    InsightSummary.add_member(:kubernetes_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "kubernetesVersion"))
    InsightSummary.add_member(:last_refresh_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastRefreshTime"))
    InsightSummary.add_member(:last_transition_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastTransitionTime"))
    InsightSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "description"))
    InsightSummary.add_member(:insight_status, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightStatus, name: "insightStatus"))
    InsightSummary.type = Types::InsightSummary
    InsightsFilter.add_member(:categories, ::Smithy::Schema::Shapes::MemberShape.new(target: CategoryList, name: "categories"))
    InsightsFilter.add_member(:kubernetes_versions, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "kubernetesVersions"))
    InsightsFilter.add_member(:statuses, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightStatusValueList, name: "statuses"))
    InsightsFilter.type = Types::InsightsFilter
    InsightsRefreshStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    InsightsRefreshStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    InsightsRefreshStatus.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    InvalidParameterException.add_member(:cluster_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "clusterName"))
    InvalidParameterException.add_member(:nodegroup_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nodegroupName"))
    InvalidParameterException.add_member(:fargate_profile_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "fargateProfileName"))
    InvalidParameterException.add_member(:addon_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "addonName"))
    InvalidParameterException.add_member(:subscription_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "subscriptionId"))
    InvalidParameterException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    InvalidParameterException.type = Types::InvalidParameterException
    InvalidRequestException.add_member(:cluster_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "clusterName"))
    InvalidRequestException.add_member(:nodegroup_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nodegroupName"))
    InvalidRequestException.add_member(:addon_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "addonName"))
    InvalidRequestException.add_member(:subscription_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "subscriptionId"))
    InvalidRequestException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    InvalidRequestException.type = Types::InvalidRequestException
    InvalidStateException.add_member(:cluster_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "clusterName"))
    InvalidStateException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    InvalidStateException.type = Types::InvalidStateException
    IpFamily.add_member(:ipv4, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IPV4", traits: {"smithy.api#enumValue" => "ipv4"}))
    IpFamily.add_member(:ipv6, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IPV6", traits: {"smithy.api#enumValue" => "ipv6"}))
    Issue.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: NodegroupIssueCode, name: "code"))
    Issue.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    Issue.add_member(:resource_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "resourceIds"))
    Issue.type = Types::Issue
    IssueList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Issue, name: "member"))
    KubernetesNetworkConfigRequest.add_member(:service_ipv4_cidr, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "serviceIpv4Cidr"))
    KubernetesNetworkConfigRequest.add_member(:ip_family, ::Smithy::Schema::Shapes::MemberShape.new(target: IpFamily, name: "ipFamily"))
    KubernetesNetworkConfigRequest.add_member(:elastic_load_balancing, ::Smithy::Schema::Shapes::MemberShape.new(target: ElasticLoadBalancing, name: "elasticLoadBalancing"))
    KubernetesNetworkConfigRequest.type = Types::KubernetesNetworkConfigRequest
    KubernetesNetworkConfigResponse.add_member(:service_ipv4_cidr, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "serviceIpv4Cidr"))
    KubernetesNetworkConfigResponse.add_member(:service_ipv6_cidr, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "serviceIpv6Cidr"))
    KubernetesNetworkConfigResponse.add_member(:ip_family, ::Smithy::Schema::Shapes::MemberShape.new(target: IpFamily, name: "ipFamily"))
    KubernetesNetworkConfigResponse.add_member(:elastic_load_balancing, ::Smithy::Schema::Shapes::MemberShape.new(target: ElasticLoadBalancing, name: "elasticLoadBalancing"))
    KubernetesNetworkConfigResponse.type = Types::KubernetesNetworkConfigResponse
    LaunchTemplateSpecification.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name"))
    LaunchTemplateSpecification.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "version"))
    LaunchTemplateSpecification.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "id"))
    LaunchTemplateSpecification.type = Types::LaunchTemplateSpecification
    License.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "id"))
    License.add_member(:token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "token"))
    License.type = Types::License
    LicenseList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: License, name: "member"))
    ListAccessEntriesRequest.add_member(:cluster_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "clusterName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListAccessEntriesRequest.add_member(:associated_policy_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "associatedPolicyArn", traits: {"smithy.api#httpQuery" => "associatedPolicyArn"}))
    ListAccessEntriesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListAccessEntriesRequestMaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListAccessEntriesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListAccessEntriesRequest.type = Types::ListAccessEntriesRequest
    ListAccessEntriesResponse.add_member(:access_entries, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "accessEntries"))
    ListAccessEntriesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken"))
    ListAccessEntriesResponse.type = Types::ListAccessEntriesResponse
    ListAccessPoliciesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListAccessPoliciesRequestMaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListAccessPoliciesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListAccessPoliciesRequest.type = Types::ListAccessPoliciesRequest
    ListAccessPoliciesResponse.add_member(:access_policies, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPoliciesList, name: "accessPolicies"))
    ListAccessPoliciesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken"))
    ListAccessPoliciesResponse.type = Types::ListAccessPoliciesResponse
    ListAddonsRequest.add_member(:cluster_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterName, name: "clusterName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListAddonsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListAddonsRequestMaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListAddonsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListAddonsRequest.type = Types::ListAddonsRequest
    ListAddonsResponse.add_member(:addons, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "addons"))
    ListAddonsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken"))
    ListAddonsResponse.type = Types::ListAddonsResponse
    ListAssociatedAccessPoliciesRequest.add_member(:cluster_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "clusterName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListAssociatedAccessPoliciesRequest.add_member(:principal_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "principalArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListAssociatedAccessPoliciesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListAssociatedAccessPoliciesRequestMaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListAssociatedAccessPoliciesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListAssociatedAccessPoliciesRequest.type = Types::ListAssociatedAccessPoliciesRequest
    ListAssociatedAccessPoliciesResponse.add_member(:cluster_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "clusterName"))
    ListAssociatedAccessPoliciesResponse.add_member(:principal_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "principalArn"))
    ListAssociatedAccessPoliciesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken"))
    ListAssociatedAccessPoliciesResponse.add_member(:associated_access_policies, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociatedAccessPoliciesList, name: "associatedAccessPolicies"))
    ListAssociatedAccessPoliciesResponse.type = Types::ListAssociatedAccessPoliciesResponse
    ListClustersRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListClustersRequestMaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListClustersRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListClustersRequest.add_member(:include, ::Smithy::Schema::Shapes::MemberShape.new(target: IncludeClustersList, name: "include", traits: {"smithy.api#httpQuery" => "include"}))
    ListClustersRequest.type = Types::ListClustersRequest
    ListClustersResponse.add_member(:clusters, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "clusters"))
    ListClustersResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken"))
    ListClustersResponse.type = Types::ListClustersResponse
    ListEksAnywhereSubscriptionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListEksAnywhereSubscriptionsRequestMaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListEksAnywhereSubscriptionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListEksAnywhereSubscriptionsRequest.add_member(:include_status, ::Smithy::Schema::Shapes::MemberShape.new(target: EksAnywhereSubscriptionStatusValues, name: "includeStatus", traits: {"smithy.api#httpQuery" => "includeStatus"}))
    ListEksAnywhereSubscriptionsRequest.type = Types::ListEksAnywhereSubscriptionsRequest
    ListEksAnywhereSubscriptionsResponse.add_member(:subscriptions, ::Smithy::Schema::Shapes::MemberShape.new(target: EksAnywhereSubscriptionList, name: "subscriptions"))
    ListEksAnywhereSubscriptionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken"))
    ListEksAnywhereSubscriptionsResponse.type = Types::ListEksAnywhereSubscriptionsResponse
    ListFargateProfilesRequest.add_member(:cluster_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "clusterName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListFargateProfilesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: FargateProfilesRequestMaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListFargateProfilesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListFargateProfilesRequest.type = Types::ListFargateProfilesRequest
    ListFargateProfilesResponse.add_member(:fargate_profile_names, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "fargateProfileNames"))
    ListFargateProfilesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken"))
    ListFargateProfilesResponse.type = Types::ListFargateProfilesResponse
    ListIdentityProviderConfigsRequest.add_member(:cluster_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "clusterName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListIdentityProviderConfigsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListIdentityProviderConfigsRequestMaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListIdentityProviderConfigsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListIdentityProviderConfigsRequest.type = Types::ListIdentityProviderConfigsRequest
    ListIdentityProviderConfigsResponse.add_member(:identity_provider_configs, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityProviderConfigs, name: "identityProviderConfigs"))
    ListIdentityProviderConfigsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken"))
    ListIdentityProviderConfigsResponse.type = Types::ListIdentityProviderConfigsResponse
    ListInsightsRequest.add_member(:cluster_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "clusterName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListInsightsRequest.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightsFilter, name: "filter"))
    ListInsightsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListInsightsMaxResults, name: "maxResults"))
    ListInsightsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken"))
    ListInsightsRequest.type = Types::ListInsightsRequest
    ListInsightsResponse.add_member(:insights, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightSummaries, name: "insights"))
    ListInsightsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken"))
    ListInsightsResponse.type = Types::ListInsightsResponse
    ListNodegroupsRequest.add_member(:cluster_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "clusterName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListNodegroupsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListNodegroupsRequestMaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListNodegroupsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListNodegroupsRequest.type = Types::ListNodegroupsRequest
    ListNodegroupsResponse.add_member(:nodegroups, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "nodegroups"))
    ListNodegroupsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken"))
    ListNodegroupsResponse.type = Types::ListNodegroupsResponse
    ListPodIdentityAssociationsRequest.add_member(:cluster_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "clusterName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListPodIdentityAssociationsRequest.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "namespace", traits: {"smithy.api#httpQuery" => "namespace"}))
    ListPodIdentityAssociationsRequest.add_member(:service_account, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "serviceAccount", traits: {"smithy.api#httpQuery" => "serviceAccount"}))
    ListPodIdentityAssociationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListPodIdentityAssociationsMaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListPodIdentityAssociationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListPodIdentityAssociationsRequest.type = Types::ListPodIdentityAssociationsRequest
    ListPodIdentityAssociationsResponse.add_member(:associations, ::Smithy::Schema::Shapes::MemberShape.new(target: PodIdentityAssociationSummaries, name: "associations"))
    ListPodIdentityAssociationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken"))
    ListPodIdentityAssociationsResponse.type = Types::ListPodIdentityAssociationsResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ListUpdatesRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListUpdatesRequest.add_member(:nodegroup_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nodegroupName", traits: {"smithy.api#httpQuery" => "nodegroupName"}))
    ListUpdatesRequest.add_member(:addon_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "addonName", traits: {"smithy.api#httpQuery" => "addonName"}))
    ListUpdatesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListUpdatesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListUpdatesRequestMaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListUpdatesRequest.type = Types::ListUpdatesRequest
    ListUpdatesResponse.add_member(:update_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "updateIds"))
    ListUpdatesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken"))
    ListUpdatesResponse.type = Types::ListUpdatesResponse
    LogSetup.add_member(:types, ::Smithy::Schema::Shapes::MemberShape.new(target: LogTypes, name: "types"))
    LogSetup.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, name: "enabled"))
    LogSetup.type = Types::LogSetup
    LogSetups.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LogSetup, name: "member"))
    LogType.add_member(:api, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "API", traits: {"smithy.api#enumValue" => "api"}))
    LogType.add_member(:audit, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AUDIT", traits: {"smithy.api#enumValue" => "audit"}))
    LogType.add_member(:authenticator, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AUTHENTICATOR", traits: {"smithy.api#enumValue" => "authenticator"}))
    LogType.add_member(:controller_manager, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONTROLLER_MANAGER", traits: {"smithy.api#enumValue" => "controllerManager"}))
    LogType.add_member(:scheduler, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SCHEDULER", traits: {"smithy.api#enumValue" => "scheduler"}))
    LogTypes.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LogType, name: "member"))
    Logging.add_member(:cluster_logging, ::Smithy::Schema::Shapes::MemberShape.new(target: LogSetups, name: "clusterLogging"))
    Logging.type = Types::Logging
    MarketplaceInformation.add_member(:product_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "productId"))
    MarketplaceInformation.add_member(:product_url, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "productUrl"))
    MarketplaceInformation.type = Types::MarketplaceInformation
    NodeRepairConfig.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, name: "enabled"))
    NodeRepairConfig.add_member(:max_unhealthy_node_threshold_count, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroInteger, name: "maxUnhealthyNodeThresholdCount"))
    NodeRepairConfig.add_member(:max_unhealthy_node_threshold_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: PercentCapacity, name: "maxUnhealthyNodeThresholdPercentage"))
    NodeRepairConfig.add_member(:max_parallel_nodes_repaired_count, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroInteger, name: "maxParallelNodesRepairedCount"))
    NodeRepairConfig.add_member(:max_parallel_nodes_repaired_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: PercentCapacity, name: "maxParallelNodesRepairedPercentage"))
    NodeRepairConfig.add_member(:node_repair_config_overrides, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeRepairConfigOverridesList, name: "nodeRepairConfigOverrides"))
    NodeRepairConfig.type = Types::NodeRepairConfig
    NodeRepairConfigOverrides.add_member(:node_monitoring_condition, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nodeMonitoringCondition"))
    NodeRepairConfigOverrides.add_member(:node_unhealthy_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nodeUnhealthyReason"))
    NodeRepairConfigOverrides.add_member(:min_repair_wait_time_mins, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroInteger, name: "minRepairWaitTimeMins"))
    NodeRepairConfigOverrides.add_member(:repair_action, ::Smithy::Schema::Shapes::MemberShape.new(target: RepairAction, name: "repairAction"))
    NodeRepairConfigOverrides.type = Types::NodeRepairConfigOverrides
    NodeRepairConfigOverridesList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeRepairConfigOverrides, name: "member"))
    Nodegroup.add_member(:nodegroup_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nodegroupName"))
    Nodegroup.add_member(:nodegroup_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nodegroupArn"))
    Nodegroup.add_member(:cluster_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "clusterName"))
    Nodegroup.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "version"))
    Nodegroup.add_member(:release_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "releaseVersion"))
    Nodegroup.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "createdAt"))
    Nodegroup.add_member(:modified_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "modifiedAt"))
    Nodegroup.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: NodegroupStatus, name: "status"))
    Nodegroup.add_member(:capacity_type, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityTypes, name: "capacityType"))
    Nodegroup.add_member(:scaling_config, ::Smithy::Schema::Shapes::MemberShape.new(target: NodegroupScalingConfig, name: "scalingConfig"))
    Nodegroup.add_member(:instance_types, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "instanceTypes"))
    Nodegroup.add_member(:subnets, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "subnets"))
    Nodegroup.add_member(:remote_access, ::Smithy::Schema::Shapes::MemberShape.new(target: RemoteAccessConfig, name: "remoteAccess"))
    Nodegroup.add_member(:ami_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AMITypes, name: "amiType"))
    Nodegroup.add_member(:node_role, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nodeRole"))
    Nodegroup.add_member(:labels, ::Smithy::Schema::Shapes::MemberShape.new(target: LabelsMap, name: "labels"))
    Nodegroup.add_member(:taints, ::Smithy::Schema::Shapes::MemberShape.new(target: TaintsList, name: "taints"))
    Nodegroup.add_member(:resources, ::Smithy::Schema::Shapes::MemberShape.new(target: NodegroupResources, name: "resources"))
    Nodegroup.add_member(:disk_size, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, name: "diskSize"))
    Nodegroup.add_member(:health, ::Smithy::Schema::Shapes::MemberShape.new(target: NodegroupHealth, name: "health"))
    Nodegroup.add_member(:update_config, ::Smithy::Schema::Shapes::MemberShape.new(target: NodegroupUpdateConfig, name: "updateConfig"))
    Nodegroup.add_member(:node_repair_config, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeRepairConfig, name: "nodeRepairConfig"))
    Nodegroup.add_member(:launch_template, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchTemplateSpecification, name: "launchTemplate"))
    Nodegroup.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    Nodegroup.type = Types::Nodegroup
    NodegroupHealth.add_member(:issues, ::Smithy::Schema::Shapes::MemberShape.new(target: IssueList, name: "issues"))
    NodegroupHealth.type = Types::NodegroupHealth
    NodegroupIssueCode.add_member(:auto_scaling_group_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AUTO_SCALING_GROUP_NOT_FOUND", traits: {"smithy.api#enumValue" => "AutoScalingGroupNotFound"}))
    NodegroupIssueCode.add_member(:auto_scaling_group_invalid_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AUTO_SCALING_GROUP_INVALID_CONFIGURATION", traits: {"smithy.api#enumValue" => "AutoScalingGroupInvalidConfiguration"}))
    NodegroupIssueCode.add_member(:ec2_security_group_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EC2_SECURITY_GROUP_NOT_FOUND", traits: {"smithy.api#enumValue" => "Ec2SecurityGroupNotFound"}))
    NodegroupIssueCode.add_member(:ec2_security_group_deletion_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EC2_SECURITY_GROUP_DELETION_FAILURE", traits: {"smithy.api#enumValue" => "Ec2SecurityGroupDeletionFailure"}))
    NodegroupIssueCode.add_member(:ec2_launch_template_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EC2_LAUNCH_TEMPLATE_NOT_FOUND", traits: {"smithy.api#enumValue" => "Ec2LaunchTemplateNotFound"}))
    NodegroupIssueCode.add_member(:ec2_launch_template_version_mismatch, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EC2_LAUNCH_TEMPLATE_VERSION_MISMATCH", traits: {"smithy.api#enumValue" => "Ec2LaunchTemplateVersionMismatch"}))
    NodegroupIssueCode.add_member(:ec2_subnet_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EC2_SUBNET_NOT_FOUND", traits: {"smithy.api#enumValue" => "Ec2SubnetNotFound"}))
    NodegroupIssueCode.add_member(:ec2_subnet_invalid_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EC2_SUBNET_INVALID_CONFIGURATION", traits: {"smithy.api#enumValue" => "Ec2SubnetInvalidConfiguration"}))
    NodegroupIssueCode.add_member(:iam_instance_profile_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IAM_INSTANCE_PROFILE_NOT_FOUND", traits: {"smithy.api#enumValue" => "IamInstanceProfileNotFound"}))
    NodegroupIssueCode.add_member(:ec2_subnet_missing_ipv6_assignment, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EC2_SUBNET_MISSING_IPV6_ASSIGNMENT", traits: {"smithy.api#enumValue" => "Ec2SubnetMissingIpv6Assignment"}))
    NodegroupIssueCode.add_member(:iam_limit_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IAM_LIMIT_EXCEEDED", traits: {"smithy.api#enumValue" => "IamLimitExceeded"}))
    NodegroupIssueCode.add_member(:iam_node_role_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IAM_NODE_ROLE_NOT_FOUND", traits: {"smithy.api#enumValue" => "IamNodeRoleNotFound"}))
    NodegroupIssueCode.add_member(:node_creation_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NODE_CREATION_FAILURE", traits: {"smithy.api#enumValue" => "NodeCreationFailure"}))
    NodegroupIssueCode.add_member(:asg_instance_launch_failures, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ASG_INSTANCE_LAUNCH_FAILURES", traits: {"smithy.api#enumValue" => "AsgInstanceLaunchFailures"}))
    NodegroupIssueCode.add_member(:instance_limit_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INSTANCE_LIMIT_EXCEEDED", traits: {"smithy.api#enumValue" => "InstanceLimitExceeded"}))
    NodegroupIssueCode.add_member(:insufficient_free_addresses, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INSUFFICIENT_FREE_ADDRESSES", traits: {"smithy.api#enumValue" => "InsufficientFreeAddresses"}))
    NodegroupIssueCode.add_member(:access_denied, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACCESS_DENIED", traits: {"smithy.api#enumValue" => "AccessDenied"}))
    NodegroupIssueCode.add_member(:internal_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INTERNAL_FAILURE", traits: {"smithy.api#enumValue" => "InternalFailure"}))
    NodegroupIssueCode.add_member(:cluster_unreachable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CLUSTER_UNREACHABLE", traits: {"smithy.api#enumValue" => "ClusterUnreachable"}))
    NodegroupIssueCode.add_member(:ami_id_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AMI_ID_NOT_FOUND", traits: {"smithy.api#enumValue" => "AmiIdNotFound"}))
    NodegroupIssueCode.add_member(:auto_scaling_group_opt_in_required, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AUTO_SCALING_GROUP_OPT_IN_REQUIRED", traits: {"smithy.api#enumValue" => "AutoScalingGroupOptInRequired"}))
    NodegroupIssueCode.add_member(:auto_scaling_group_rate_limit_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AUTO_SCALING_GROUP_RATE_LIMIT_EXCEEDED", traits: {"smithy.api#enumValue" => "AutoScalingGroupRateLimitExceeded"}))
    NodegroupIssueCode.add_member(:ec2_launch_template_deletion_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EC2_LAUNCH_TEMPLATE_DELETION_FAILURE", traits: {"smithy.api#enumValue" => "Ec2LaunchTemplateDeletionFailure"}))
    NodegroupIssueCode.add_member(:ec2_launch_template_invalid_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EC2_LAUNCH_TEMPLATE_INVALID_CONFIGURATION", traits: {"smithy.api#enumValue" => "Ec2LaunchTemplateInvalidConfiguration"}))
    NodegroupIssueCode.add_member(:ec2_launch_template_max_limit_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EC2_LAUNCH_TEMPLATE_MAX_LIMIT_EXCEEDED", traits: {"smithy.api#enumValue" => "Ec2LaunchTemplateMaxLimitExceeded"}))
    NodegroupIssueCode.add_member(:ec2_subnet_list_too_long, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EC2_SUBNET_LIST_TOO_LONG", traits: {"smithy.api#enumValue" => "Ec2SubnetListTooLong"}))
    NodegroupIssueCode.add_member(:iam_throttling, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IAM_THROTTLING", traits: {"smithy.api#enumValue" => "IamThrottling"}))
    NodegroupIssueCode.add_member(:node_termination_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NODE_TERMINATION_FAILURE", traits: {"smithy.api#enumValue" => "NodeTerminationFailure"}))
    NodegroupIssueCode.add_member(:pod_eviction_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "POD_EVICTION_FAILURE", traits: {"smithy.api#enumValue" => "PodEvictionFailure"}))
    NodegroupIssueCode.add_member(:source_ec2_launch_template_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SOURCE_EC2_LAUNCH_TEMPLATE_NOT_FOUND", traits: {"smithy.api#enumValue" => "SourceEc2LaunchTemplateNotFound"}))
    NodegroupIssueCode.add_member(:limit_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LIMIT_EXCEEDED", traits: {"smithy.api#enumValue" => "LimitExceeded"}))
    NodegroupIssueCode.add_member(:unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNKNOWN", traits: {"smithy.api#enumValue" => "Unknown"}))
    NodegroupIssueCode.add_member(:auto_scaling_group_instance_refresh_active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AUTO_SCALING_GROUP_INSTANCE_REFRESH_ACTIVE", traits: {"smithy.api#enumValue" => "AutoScalingGroupInstanceRefreshActive"}))
    NodegroupIssueCode.add_member(:kubernetes_label_invalid, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KUBERNETES_LABEL_INVALID", traits: {"smithy.api#enumValue" => "KubernetesLabelInvalid"}))
    NodegroupIssueCode.add_member(:ec2_launch_template_version_max_limit_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EC2_LAUNCH_TEMPLATE_VERSION_MAX_LIMIT_EXCEEDED", traits: {"smithy.api#enumValue" => "Ec2LaunchTemplateVersionMaxLimitExceeded"}))
    NodegroupIssueCode.add_member(:ec2_instance_type_does_not_exist, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EC2_INSTANCE_TYPE_DOES_NOT_EXIST", traits: {"smithy.api#enumValue" => "Ec2InstanceTypeDoesNotExist"}))
    NodegroupResources.add_member(:auto_scaling_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoScalingGroupList, name: "autoScalingGroups"))
    NodegroupResources.add_member(:remote_access_security_group, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "remoteAccessSecurityGroup"))
    NodegroupResources.type = Types::NodegroupResources
    NodegroupScalingConfig.add_member(:min_size, ::Smithy::Schema::Shapes::MemberShape.new(target: ZeroCapacity, name: "minSize"))
    NodegroupScalingConfig.add_member(:max_size, ::Smithy::Schema::Shapes::MemberShape.new(target: Capacity, name: "maxSize"))
    NodegroupScalingConfig.add_member(:desired_size, ::Smithy::Schema::Shapes::MemberShape.new(target: ZeroCapacity, name: "desiredSize"))
    NodegroupScalingConfig.type = Types::NodegroupScalingConfig
    NodegroupStatus.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    NodegroupStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    NodegroupStatus.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    NodegroupStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    NodegroupStatus.add_member(:create_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATE_FAILED", traits: {"smithy.api#enumValue" => "CREATE_FAILED"}))
    NodegroupStatus.add_member(:delete_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETE_FAILED", traits: {"smithy.api#enumValue" => "DELETE_FAILED"}))
    NodegroupStatus.add_member(:degraded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEGRADED", traits: {"smithy.api#enumValue" => "DEGRADED"}))
    NodegroupUpdateConfig.add_member(:max_unavailable, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroInteger, name: "maxUnavailable"))
    NodegroupUpdateConfig.add_member(:max_unavailable_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: PercentCapacity, name: "maxUnavailablePercentage"))
    NodegroupUpdateConfig.add_member(:update_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: NodegroupUpdateStrategies, name: "updateStrategy"))
    NodegroupUpdateConfig.type = Types::NodegroupUpdateConfig
    NodegroupUpdateStrategies.add_member(:default, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEFAULT", traits: {"smithy.api#enumValue" => "DEFAULT"}))
    NodegroupUpdateStrategies.add_member(:minimal, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MINIMAL", traits: {"smithy.api#enumValue" => "MINIMAL"}))
    NotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    NotFoundException.type = Types::NotFoundException
    OIDC.add_member(:issuer, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "issuer"))
    OIDC.type = Types::OIDC
    OidcIdentityProviderConfig.add_member(:identity_provider_config_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "identityProviderConfigName"))
    OidcIdentityProviderConfig.add_member(:identity_provider_config_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "identityProviderConfigArn"))
    OidcIdentityProviderConfig.add_member(:cluster_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "clusterName"))
    OidcIdentityProviderConfig.add_member(:issuer_url, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "issuerUrl"))
    OidcIdentityProviderConfig.add_member(:client_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "clientId"))
    OidcIdentityProviderConfig.add_member(:username_claim, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "usernameClaim"))
    OidcIdentityProviderConfig.add_member(:username_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "usernamePrefix"))
    OidcIdentityProviderConfig.add_member(:groups_claim, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "groupsClaim"))
    OidcIdentityProviderConfig.add_member(:groups_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "groupsPrefix"))
    OidcIdentityProviderConfig.add_member(:required_claims, ::Smithy::Schema::Shapes::MemberShape.new(target: RequiredClaimsMap, name: "requiredClaims"))
    OidcIdentityProviderConfig.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    OidcIdentityProviderConfig.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigStatus, name: "status"))
    OidcIdentityProviderConfig.type = Types::OidcIdentityProviderConfig
    OidcIdentityProviderConfigRequest.add_member(:identity_provider_config_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "identityProviderConfigName", traits: {"smithy.api#required" => {}}))
    OidcIdentityProviderConfigRequest.add_member(:issuer_url, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "issuerUrl", traits: {"smithy.api#required" => {}}))
    OidcIdentityProviderConfigRequest.add_member(:client_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "clientId", traits: {"smithy.api#required" => {}}))
    OidcIdentityProviderConfigRequest.add_member(:username_claim, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "usernameClaim"))
    OidcIdentityProviderConfigRequest.add_member(:username_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "usernamePrefix"))
    OidcIdentityProviderConfigRequest.add_member(:groups_claim, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "groupsClaim"))
    OidcIdentityProviderConfigRequest.add_member(:groups_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "groupsPrefix"))
    OidcIdentityProviderConfigRequest.add_member(:required_claims, ::Smithy::Schema::Shapes::MemberShape.new(target: RequiredClaimsMap, name: "requiredClaims"))
    OidcIdentityProviderConfigRequest.type = Types::OidcIdentityProviderConfigRequest
    OutpostConfigRequest.add_member(:outpost_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "outpostArns", traits: {"smithy.api#required" => {}}))
    OutpostConfigRequest.add_member(:control_plane_instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "controlPlaneInstanceType", traits: {"smithy.api#required" => {}}))
    OutpostConfigRequest.add_member(:control_plane_placement, ::Smithy::Schema::Shapes::MemberShape.new(target: ControlPlanePlacementRequest, name: "controlPlanePlacement"))
    OutpostConfigRequest.type = Types::OutpostConfigRequest
    OutpostConfigResponse.add_member(:outpost_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "outpostArns", traits: {"smithy.api#required" => {}}))
    OutpostConfigResponse.add_member(:control_plane_instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "controlPlaneInstanceType", traits: {"smithy.api#required" => {}}))
    OutpostConfigResponse.add_member(:control_plane_placement, ::Smithy::Schema::Shapes::MemberShape.new(target: ControlPlanePlacementResponse, name: "controlPlanePlacement"))
    OutpostConfigResponse.type = Types::OutpostConfigResponse
    PodIdentityAssociation.add_member(:cluster_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "clusterName"))
    PodIdentityAssociation.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "namespace"))
    PodIdentityAssociation.add_member(:service_account, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "serviceAccount"))
    PodIdentityAssociation.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "roleArn"))
    PodIdentityAssociation.add_member(:association_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "associationArn"))
    PodIdentityAssociation.add_member(:association_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "associationId"))
    PodIdentityAssociation.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    PodIdentityAssociation.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "createdAt"))
    PodIdentityAssociation.add_member(:modified_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "modifiedAt"))
    PodIdentityAssociation.add_member(:owner_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ownerArn"))
    PodIdentityAssociation.add_member(:disable_session_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, name: "disableSessionTags"))
    PodIdentityAssociation.add_member(:target_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "targetRoleArn"))
    PodIdentityAssociation.add_member(:external_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "externalId"))
    PodIdentityAssociation.type = Types::PodIdentityAssociation
    PodIdentityAssociationSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PodIdentityAssociationSummary, name: "member"))
    PodIdentityAssociationSummary.add_member(:cluster_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "clusterName"))
    PodIdentityAssociationSummary.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "namespace"))
    PodIdentityAssociationSummary.add_member(:service_account, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "serviceAccount"))
    PodIdentityAssociationSummary.add_member(:association_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "associationArn"))
    PodIdentityAssociationSummary.add_member(:association_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "associationId"))
    PodIdentityAssociationSummary.add_member(:owner_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ownerArn"))
    PodIdentityAssociationSummary.type = Types::PodIdentityAssociationSummary
    Provider.add_member(:key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "keyArn"))
    Provider.type = Types::Provider
    RegisterClusterRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterName, name: "name", traits: {"smithy.api#required" => {}}))
    RegisterClusterRequest.add_member(:connector_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectorConfigRequest, name: "connectorConfig", traits: {"smithy.api#required" => {}}))
    RegisterClusterRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "clientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    RegisterClusterRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    RegisterClusterRequest.type = Types::RegisterClusterRequest
    RegisterClusterResponse.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: Cluster, name: "cluster"))
    RegisterClusterResponse.type = Types::RegisterClusterResponse
    RemoteAccessConfig.add_member(:ec2_ssh_key, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ec2SshKey"))
    RemoteAccessConfig.add_member(:source_security_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "sourceSecurityGroups"))
    RemoteAccessConfig.type = Types::RemoteAccessConfig
    RemoteNetworkConfigRequest.add_member(:remote_node_networks, ::Smithy::Schema::Shapes::MemberShape.new(target: RemoteNodeNetworkList, name: "remoteNodeNetworks"))
    RemoteNetworkConfigRequest.add_member(:remote_pod_networks, ::Smithy::Schema::Shapes::MemberShape.new(target: RemotePodNetworkList, name: "remotePodNetworks"))
    RemoteNetworkConfigRequest.type = Types::RemoteNetworkConfigRequest
    RemoteNetworkConfigResponse.add_member(:remote_node_networks, ::Smithy::Schema::Shapes::MemberShape.new(target: RemoteNodeNetworkList, name: "remoteNodeNetworks"))
    RemoteNetworkConfigResponse.add_member(:remote_pod_networks, ::Smithy::Schema::Shapes::MemberShape.new(target: RemotePodNetworkList, name: "remotePodNetworks"))
    RemoteNetworkConfigResponse.type = Types::RemoteNetworkConfigResponse
    RemoteNodeNetwork.add_member(:cidrs, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "cidrs"))
    RemoteNodeNetwork.type = Types::RemoteNodeNetwork
    RemoteNodeNetworkList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RemoteNodeNetwork, name: "member"))
    RemotePodNetwork.add_member(:cidrs, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "cidrs"))
    RemotePodNetwork.type = Types::RemotePodNetwork
    RemotePodNetworkList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RemotePodNetwork, name: "member"))
    RepairAction.add_member(:replace, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Replace", traits: {"smithy.api#enumValue" => "Replace"}))
    RepairAction.add_member(:reboot, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Reboot", traits: {"smithy.api#enumValue" => "Reboot"}))
    RepairAction.add_member(:no_action, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NoAction", traits: {"smithy.api#enumValue" => "NoAction"}))
    ResolveConflicts.add_member(:overwrite, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OVERWRITE", traits: {"smithy.api#enumValue" => "OVERWRITE"}))
    ResolveConflicts.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    ResolveConflicts.add_member(:preserve, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRESERVE", traits: {"smithy.api#enumValue" => "PRESERVE"}))
    ResourceInUseException.add_member(:cluster_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "clusterName"))
    ResourceInUseException.add_member(:nodegroup_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nodegroupName"))
    ResourceInUseException.add_member(:addon_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "addonName"))
    ResourceInUseException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    ResourceInUseException.type = Types::ResourceInUseException
    ResourceLimitExceededException.add_member(:cluster_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "clusterName"))
    ResourceLimitExceededException.add_member(:nodegroup_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nodegroupName"))
    ResourceLimitExceededException.add_member(:subscription_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "subscriptionId"))
    ResourceLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    ResourceLimitExceededException.type = Types::ResourceLimitExceededException
    ResourceNotFoundException.add_member(:cluster_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "clusterName"))
    ResourceNotFoundException.add_member(:nodegroup_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nodegroupName"))
    ResourceNotFoundException.add_member(:fargate_profile_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "fargateProfileName"))
    ResourceNotFoundException.add_member(:addon_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "addonName"))
    ResourceNotFoundException.add_member(:subscription_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "subscriptionId"))
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourcePropagationDelayException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    ResourcePropagationDelayException.type = Types::ResourcePropagationDelayException
    ServerException.add_member(:cluster_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "clusterName"))
    ServerException.add_member(:nodegroup_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nodegroupName"))
    ServerException.add_member(:addon_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "addonName"))
    ServerException.add_member(:subscription_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "subscriptionId"))
    ServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    ServerException.type = Types::ServerException
    ServiceUnavailableException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    ServiceUnavailableException.type = Types::ServiceUnavailableException
    StartInsightsRefreshRequest.add_member(:cluster_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "clusterName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartInsightsRefreshRequest.type = Types::StartInsightsRefreshRequest
    StartInsightsRefreshResponse.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    StartInsightsRefreshResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightsRefreshStatus, name: "status"))
    StartInsightsRefreshResponse.type = Types::StartInsightsRefreshResponse
    StorageConfigRequest.add_member(:block_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: BlockStorage, name: "blockStorage"))
    StorageConfigRequest.type = Types::StorageConfigRequest
    StorageConfigResponse.add_member(:block_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: BlockStorage, name: "blockStorage"))
    StorageConfigResponse.type = Types::StorageConfigResponse
    StringList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    SupportType.add_member(:standard, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STANDARD", traits: {"smithy.api#enumValue" => "STANDARD"}))
    SupportType.add_member(:extended, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXTENDED", traits: {"smithy.api#enumValue" => "EXTENDED"}))
    TagKeyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member"))
    TagMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "key"))
    TagMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "value"))
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    Taint.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TaintKey, name: "key"))
    Taint.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TaintValue, name: "value"))
    Taint.add_member(:effect, ::Smithy::Schema::Shapes::MemberShape.new(target: TaintEffect, name: "effect"))
    Taint.type = Types::Taint
    TaintEffect.add_member(:no_schedule, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NO_SCHEDULE", traits: {"smithy.api#enumValue" => "NO_SCHEDULE"}))
    TaintEffect.add_member(:no_execute, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NO_EXECUTE", traits: {"smithy.api#enumValue" => "NO_EXECUTE"}))
    TaintEffect.add_member(:prefer_no_schedule, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PREFER_NO_SCHEDULE", traits: {"smithy.api#enumValue" => "PREFER_NO_SCHEDULE"}))
    ThrottlingException.add_member(:cluster_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "clusterName"))
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    ThrottlingException.type = Types::ThrottlingException
    UnsupportedAvailabilityZoneException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    UnsupportedAvailabilityZoneException.add_member(:cluster_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "clusterName"))
    UnsupportedAvailabilityZoneException.add_member(:nodegroup_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nodegroupName"))
    UnsupportedAvailabilityZoneException.add_member(:valid_zones, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "validZones"))
    UnsupportedAvailabilityZoneException.type = Types::UnsupportedAvailabilityZoneException
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "tagKeys", traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    Update.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "id"))
    Update.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateStatus, name: "status"))
    Update.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateType, name: "type"))
    Update.add_member(:params, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateParams, name: "params"))
    Update.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "createdAt"))
    Update.add_member(:errors, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDetails, name: "errors"))
    Update.type = Types::Update
    UpdateAccessConfigRequest.add_member(:authentication_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticationMode, name: "authenticationMode"))
    UpdateAccessConfigRequest.type = Types::UpdateAccessConfigRequest
    UpdateAccessEntryRequest.add_member(:cluster_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "clusterName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAccessEntryRequest.add_member(:principal_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "principalArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAccessEntryRequest.add_member(:kubernetes_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "kubernetesGroups"))
    UpdateAccessEntryRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "clientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    UpdateAccessEntryRequest.add_member(:username, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "username"))
    UpdateAccessEntryRequest.type = Types::UpdateAccessEntryRequest
    UpdateAccessEntryResponse.add_member(:access_entry, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessEntry, name: "accessEntry"))
    UpdateAccessEntryResponse.type = Types::UpdateAccessEntryResponse
    UpdateAddonRequest.add_member(:cluster_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterName, name: "clusterName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAddonRequest.add_member(:addon_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "addonName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAddonRequest.add_member(:addon_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "addonVersion"))
    UpdateAddonRequest.add_member(:service_account_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "serviceAccountRoleArn"))
    UpdateAddonRequest.add_member(:resolve_conflicts, ::Smithy::Schema::Shapes::MemberShape.new(target: ResolveConflicts, name: "resolveConflicts"))
    UpdateAddonRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "clientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    UpdateAddonRequest.add_member(:configuration_values, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "configurationValues"))
    UpdateAddonRequest.add_member(:pod_identity_associations, ::Smithy::Schema::Shapes::MemberShape.new(target: AddonPodIdentityAssociationsList, name: "podIdentityAssociations"))
    UpdateAddonRequest.type = Types::UpdateAddonRequest
    UpdateAddonResponse.add_member(:update, ::Smithy::Schema::Shapes::MemberShape.new(target: Update, name: "update"))
    UpdateAddonResponse.type = Types::UpdateAddonResponse
    UpdateClusterConfigRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateClusterConfigRequest.add_member(:resources_vpc_config, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcConfigRequest, name: "resourcesVpcConfig"))
    UpdateClusterConfigRequest.add_member(:logging, ::Smithy::Schema::Shapes::MemberShape.new(target: Logging, name: "logging"))
    UpdateClusterConfigRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "clientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    UpdateClusterConfigRequest.add_member(:access_config, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateAccessConfigRequest, name: "accessConfig"))
    UpdateClusterConfigRequest.add_member(:upgrade_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: UpgradePolicyRequest, name: "upgradePolicy"))
    UpdateClusterConfigRequest.add_member(:zonal_shift_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ZonalShiftConfigRequest, name: "zonalShiftConfig"))
    UpdateClusterConfigRequest.add_member(:compute_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputeConfigRequest, name: "computeConfig"))
    UpdateClusterConfigRequest.add_member(:kubernetes_network_config, ::Smithy::Schema::Shapes::MemberShape.new(target: KubernetesNetworkConfigRequest, name: "kubernetesNetworkConfig"))
    UpdateClusterConfigRequest.add_member(:storage_config, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageConfigRequest, name: "storageConfig"))
    UpdateClusterConfigRequest.add_member(:remote_network_config, ::Smithy::Schema::Shapes::MemberShape.new(target: RemoteNetworkConfigRequest, name: "remoteNetworkConfig"))
    UpdateClusterConfigRequest.add_member(:deletion_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, name: "deletionProtection"))
    UpdateClusterConfigRequest.type = Types::UpdateClusterConfigRequest
    UpdateClusterConfigResponse.add_member(:update, ::Smithy::Schema::Shapes::MemberShape.new(target: Update, name: "update"))
    UpdateClusterConfigResponse.type = Types::UpdateClusterConfigResponse
    UpdateClusterVersionRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateClusterVersionRequest.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "version", traits: {"smithy.api#required" => {}}))
    UpdateClusterVersionRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "clientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    UpdateClusterVersionRequest.add_member(:force, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "force", traits: {"smithy.api#default" => false}))
    UpdateClusterVersionRequest.type = Types::UpdateClusterVersionRequest
    UpdateClusterVersionResponse.add_member(:update, ::Smithy::Schema::Shapes::MemberShape.new(target: Update, name: "update"))
    UpdateClusterVersionResponse.type = Types::UpdateClusterVersionResponse
    UpdateEksAnywhereSubscriptionRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateEksAnywhereSubscriptionRequest.add_member(:auto_renew, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "autoRenew", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    UpdateEksAnywhereSubscriptionRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "clientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    UpdateEksAnywhereSubscriptionRequest.type = Types::UpdateEksAnywhereSubscriptionRequest
    UpdateEksAnywhereSubscriptionResponse.add_member(:subscription, ::Smithy::Schema::Shapes::MemberShape.new(target: EksAnywhereSubscription, name: "subscription"))
    UpdateEksAnywhereSubscriptionResponse.type = Types::UpdateEksAnywhereSubscriptionResponse
    UpdateLabelsPayload.add_member(:add_or_update_labels, ::Smithy::Schema::Shapes::MemberShape.new(target: LabelsMap, name: "addOrUpdateLabels"))
    UpdateLabelsPayload.add_member(:remove_labels, ::Smithy::Schema::Shapes::MemberShape.new(target: LabelsKeyList, name: "removeLabels"))
    UpdateLabelsPayload.type = Types::UpdateLabelsPayload
    UpdateNodegroupConfigRequest.add_member(:cluster_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "clusterName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateNodegroupConfigRequest.add_member(:nodegroup_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nodegroupName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateNodegroupConfigRequest.add_member(:labels, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateLabelsPayload, name: "labels"))
    UpdateNodegroupConfigRequest.add_member(:taints, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateTaintsPayload, name: "taints"))
    UpdateNodegroupConfigRequest.add_member(:scaling_config, ::Smithy::Schema::Shapes::MemberShape.new(target: NodegroupScalingConfig, name: "scalingConfig"))
    UpdateNodegroupConfigRequest.add_member(:update_config, ::Smithy::Schema::Shapes::MemberShape.new(target: NodegroupUpdateConfig, name: "updateConfig"))
    UpdateNodegroupConfigRequest.add_member(:node_repair_config, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeRepairConfig, name: "nodeRepairConfig"))
    UpdateNodegroupConfigRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "clientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    UpdateNodegroupConfigRequest.type = Types::UpdateNodegroupConfigRequest
    UpdateNodegroupConfigResponse.add_member(:update, ::Smithy::Schema::Shapes::MemberShape.new(target: Update, name: "update"))
    UpdateNodegroupConfigResponse.type = Types::UpdateNodegroupConfigResponse
    UpdateNodegroupVersionRequest.add_member(:cluster_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "clusterName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateNodegroupVersionRequest.add_member(:nodegroup_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nodegroupName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateNodegroupVersionRequest.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "version"))
    UpdateNodegroupVersionRequest.add_member(:release_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "releaseVersion"))
    UpdateNodegroupVersionRequest.add_member(:launch_template, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchTemplateSpecification, name: "launchTemplate"))
    UpdateNodegroupVersionRequest.add_member(:force, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "force", traits: {"smithy.api#default" => false}))
    UpdateNodegroupVersionRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "clientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    UpdateNodegroupVersionRequest.type = Types::UpdateNodegroupVersionRequest
    UpdateNodegroupVersionResponse.add_member(:update, ::Smithy::Schema::Shapes::MemberShape.new(target: Update, name: "update"))
    UpdateNodegroupVersionResponse.type = Types::UpdateNodegroupVersionResponse
    UpdateParam.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateParamType, name: "type"))
    UpdateParam.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "value"))
    UpdateParam.type = Types::UpdateParam
    UpdateParamType.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VERSION", traits: {"smithy.api#enumValue" => "Version"}))
    UpdateParamType.add_member(:platform_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PLATFORM_VERSION", traits: {"smithy.api#enumValue" => "PlatformVersion"}))
    UpdateParamType.add_member(:endpoint_private_access, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENDPOINT_PRIVATE_ACCESS", traits: {"smithy.api#enumValue" => "EndpointPrivateAccess"}))
    UpdateParamType.add_member(:endpoint_public_access, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENDPOINT_PUBLIC_ACCESS", traits: {"smithy.api#enumValue" => "EndpointPublicAccess"}))
    UpdateParamType.add_member(:cluster_logging, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CLUSTER_LOGGING", traits: {"smithy.api#enumValue" => "ClusterLogging"}))
    UpdateParamType.add_member(:desired_size, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DESIRED_SIZE", traits: {"smithy.api#enumValue" => "DesiredSize"}))
    UpdateParamType.add_member(:labels_to_add, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LABELS_TO_ADD", traits: {"smithy.api#enumValue" => "LabelsToAdd"}))
    UpdateParamType.add_member(:labels_to_remove, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LABELS_TO_REMOVE", traits: {"smithy.api#enumValue" => "LabelsToRemove"}))
    UpdateParamType.add_member(:taints_to_add, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TAINTS_TO_ADD", traits: {"smithy.api#enumValue" => "TaintsToAdd"}))
    UpdateParamType.add_member(:taints_to_remove, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TAINTS_TO_REMOVE", traits: {"smithy.api#enumValue" => "TaintsToRemove"}))
    UpdateParamType.add_member(:max_size, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MAX_SIZE", traits: {"smithy.api#enumValue" => "MaxSize"}))
    UpdateParamType.add_member(:min_size, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MIN_SIZE", traits: {"smithy.api#enumValue" => "MinSize"}))
    UpdateParamType.add_member(:release_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RELEASE_VERSION", traits: {"smithy.api#enumValue" => "ReleaseVersion"}))
    UpdateParamType.add_member(:public_access_cidrs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PUBLIC_ACCESS_CIDRS", traits: {"smithy.api#enumValue" => "PublicAccessCidrs"}))
    UpdateParamType.add_member(:launch_template_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LAUNCH_TEMPLATE_NAME", traits: {"smithy.api#enumValue" => "LaunchTemplateName"}))
    UpdateParamType.add_member(:launch_template_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LAUNCH_TEMPLATE_VERSION", traits: {"smithy.api#enumValue" => "LaunchTemplateVersion"}))
    UpdateParamType.add_member(:identity_provider_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IDENTITY_PROVIDER_CONFIG", traits: {"smithy.api#enumValue" => "IdentityProviderConfig"}))
    UpdateParamType.add_member(:encryption_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENCRYPTION_CONFIG", traits: {"smithy.api#enumValue" => "EncryptionConfig"}))
    UpdateParamType.add_member(:addon_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ADDON_VERSION", traits: {"smithy.api#enumValue" => "AddonVersion"}))
    UpdateParamType.add_member(:service_account_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SERVICE_ACCOUNT_ROLE_ARN", traits: {"smithy.api#enumValue" => "ServiceAccountRoleArn"}))
    UpdateParamType.add_member(:resolve_conflicts, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESOLVE_CONFLICTS", traits: {"smithy.api#enumValue" => "ResolveConflicts"}))
    UpdateParamType.add_member(:max_unavailable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MAX_UNAVAILABLE", traits: {"smithy.api#enumValue" => "MaxUnavailable"}))
    UpdateParamType.add_member(:max_unavailable_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MAX_UNAVAILABLE_PERCENTAGE", traits: {"smithy.api#enumValue" => "MaxUnavailablePercentage"}))
    UpdateParamType.add_member(:node_repair_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NODE_REPAIR_ENABLED", traits: {"smithy.api#enumValue" => "NodeRepairEnabled"}))
    UpdateParamType.add_member(:update_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATE_STRATEGY", traits: {"smithy.api#enumValue" => "UpdateStrategy"}))
    UpdateParamType.add_member(:configuration_values, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONFIGURATION_VALUES", traits: {"smithy.api#enumValue" => "ConfigurationValues"}))
    UpdateParamType.add_member(:security_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SECURITY_GROUPS", traits: {"smithy.api#enumValue" => "SecurityGroups"}))
    UpdateParamType.add_member(:subnets, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUBNETS", traits: {"smithy.api#enumValue" => "Subnets"}))
    UpdateParamType.add_member(:authentication_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AUTHENTICATION_MODE", traits: {"smithy.api#enumValue" => "AuthenticationMode"}))
    UpdateParamType.add_member(:pod_identity_associations, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "POD_IDENTITY_ASSOCIATIONS", traits: {"smithy.api#enumValue" => "PodIdentityAssociations"}))
    UpdateParamType.add_member(:upgrade_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPGRADE_POLICY", traits: {"smithy.api#enumValue" => "UpgradePolicy"}))
    UpdateParamType.add_member(:zonal_shift_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ZONAL_SHIFT_CONFIG", traits: {"smithy.api#enumValue" => "ZonalShiftConfig"}))
    UpdateParamType.add_member(:compute_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPUTE_CONFIG", traits: {"smithy.api#enumValue" => "ComputeConfig"}))
    UpdateParamType.add_member(:storage_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STORAGE_CONFIG", traits: {"smithy.api#enumValue" => "StorageConfig"}))
    UpdateParamType.add_member(:kubernetes_network_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KUBERNETES_NETWORK_CONFIG", traits: {"smithy.api#enumValue" => "KubernetesNetworkConfig"}))
    UpdateParamType.add_member(:remote_network_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REMOTE_NETWORK_CONFIG", traits: {"smithy.api#enumValue" => "RemoteNetworkConfig"}))
    UpdateParamType.add_member(:deletion_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETION_PROTECTION", traits: {"smithy.api#enumValue" => "DeletionProtection"}))
    UpdateParamType.add_member(:node_repair_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NODE_REPAIR_CONFIG", traits: {"smithy.api#enumValue" => "NodeRepairConfig"}))
    UpdateParams.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateParam, name: "member"))
    UpdatePodIdentityAssociationRequest.add_member(:cluster_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "clusterName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdatePodIdentityAssociationRequest.add_member(:association_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "associationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdatePodIdentityAssociationRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "roleArn"))
    UpdatePodIdentityAssociationRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "clientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    UpdatePodIdentityAssociationRequest.add_member(:disable_session_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, name: "disableSessionTags"))
    UpdatePodIdentityAssociationRequest.add_member(:target_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "targetRoleArn"))
    UpdatePodIdentityAssociationRequest.type = Types::UpdatePodIdentityAssociationRequest
    UpdatePodIdentityAssociationResponse.add_member(:association, ::Smithy::Schema::Shapes::MemberShape.new(target: PodIdentityAssociation, name: "association"))
    UpdatePodIdentityAssociationResponse.type = Types::UpdatePodIdentityAssociationResponse
    UpdateStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "InProgress"}))
    UpdateStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "Failed"}))
    UpdateStatus.add_member(:cancelled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANCELLED", traits: {"smithy.api#enumValue" => "Cancelled"}))
    UpdateStatus.add_member(:successful, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCESSFUL", traits: {"smithy.api#enumValue" => "Successful"}))
    UpdateTaintsPayload.add_member(:add_or_update_taints, ::Smithy::Schema::Shapes::MemberShape.new(target: TaintsList, name: "addOrUpdateTaints"))
    UpdateTaintsPayload.add_member(:remove_taints, ::Smithy::Schema::Shapes::MemberShape.new(target: TaintsList, name: "removeTaints"))
    UpdateTaintsPayload.type = Types::UpdateTaintsPayload
    UpdateType.add_member(:version_update, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VERSION_UPDATE", traits: {"smithy.api#enumValue" => "VersionUpdate"}))
    UpdateType.add_member(:endpoint_access_update, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENDPOINT_ACCESS_UPDATE", traits: {"smithy.api#enumValue" => "EndpointAccessUpdate"}))
    UpdateType.add_member(:logging_update, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LOGGING_UPDATE", traits: {"smithy.api#enumValue" => "LoggingUpdate"}))
    UpdateType.add_member(:config_update, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONFIG_UPDATE", traits: {"smithy.api#enumValue" => "ConfigUpdate"}))
    UpdateType.add_member(:associate_identity_provider_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ASSOCIATE_IDENTITY_PROVIDER_CONFIG", traits: {"smithy.api#enumValue" => "AssociateIdentityProviderConfig"}))
    UpdateType.add_member(:disassociate_identity_provider_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISASSOCIATE_IDENTITY_PROVIDER_CONFIG", traits: {"smithy.api#enumValue" => "DisassociateIdentityProviderConfig"}))
    UpdateType.add_member(:associate_encryption_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ASSOCIATE_ENCRYPTION_CONFIG", traits: {"smithy.api#enumValue" => "AssociateEncryptionConfig"}))
    UpdateType.add_member(:addon_update, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ADDON_UPDATE", traits: {"smithy.api#enumValue" => "AddonUpdate"}))
    UpdateType.add_member(:vpc_config_update, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VPC_CONFIG_UPDATE", traits: {"smithy.api#enumValue" => "VpcConfigUpdate"}))
    UpdateType.add_member(:access_config_update, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACCESS_CONFIG_UPDATE", traits: {"smithy.api#enumValue" => "AccessConfigUpdate"}))
    UpdateType.add_member(:upgrade_policy_update, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPGRADE_POLICY_UPDATE", traits: {"smithy.api#enumValue" => "UpgradePolicyUpdate"}))
    UpdateType.add_member(:zonal_shift_config_update, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ZONAL_SHIFT_CONFIG_UPDATE", traits: {"smithy.api#enumValue" => "ZonalShiftConfigUpdate"}))
    UpdateType.add_member(:auto_mode_update, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AUTO_MODE_UPDATE", traits: {"smithy.api#enumValue" => "AutoModeUpdate"}))
    UpdateType.add_member(:remote_network_config_update, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REMOTE_NETWORK_CONFIG_UPDATE", traits: {"smithy.api#enumValue" => "RemoteNetworkConfigUpdate"}))
    UpdateType.add_member(:deletion_protection_update, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETION_PROTECTION_UPDATE", traits: {"smithy.api#enumValue" => "DeletionProtectionUpdate"}))
    UpgradePolicyRequest.add_member(:support_type, ::Smithy::Schema::Shapes::MemberShape.new(target: SupportType, name: "supportType"))
    UpgradePolicyRequest.type = Types::UpgradePolicyRequest
    UpgradePolicyResponse.add_member(:support_type, ::Smithy::Schema::Shapes::MemberShape.new(target: SupportType, name: "supportType"))
    UpgradePolicyResponse.type = Types::UpgradePolicyResponse
    VersionStatus.add_member(:unsupported, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNSUPPORTED", traits: {"smithy.api#enumValue" => "UNSUPPORTED"}))
    VersionStatus.add_member(:standard_support, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STANDARD_SUPPORT", traits: {"smithy.api#enumValue" => "STANDARD_SUPPORT"}))
    VersionStatus.add_member(:extended_support, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXTENDED_SUPPORT", traits: {"smithy.api#enumValue" => "EXTENDED_SUPPORT"}))
    VpcConfigRequest.add_member(:subnet_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "subnetIds"))
    VpcConfigRequest.add_member(:security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "securityGroupIds"))
    VpcConfigRequest.add_member(:endpoint_public_access, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, name: "endpointPublicAccess"))
    VpcConfigRequest.add_member(:endpoint_private_access, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, name: "endpointPrivateAccess"))
    VpcConfigRequest.add_member(:public_access_cidrs, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "publicAccessCidrs"))
    VpcConfigRequest.type = Types::VpcConfigRequest
    VpcConfigResponse.add_member(:subnet_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "subnetIds"))
    VpcConfigResponse.add_member(:security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "securityGroupIds"))
    VpcConfigResponse.add_member(:cluster_security_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "clusterSecurityGroupId"))
    VpcConfigResponse.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "vpcId"))
    VpcConfigResponse.add_member(:endpoint_public_access, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "endpointPublicAccess", traits: {"smithy.api#default" => false}))
    VpcConfigResponse.add_member(:endpoint_private_access, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "endpointPrivateAccess", traits: {"smithy.api#default" => false}))
    VpcConfigResponse.add_member(:public_access_cidrs, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "publicAccessCidrs"))
    VpcConfigResponse.type = Types::VpcConfigResponse
    ZonalShiftConfigRequest.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, name: "enabled"))
    ZonalShiftConfigRequest.type = Types::ZonalShiftConfigRequest
    ZonalShiftConfigResponse.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, name: "enabled"))
    ZonalShiftConfigResponse.type = Types::ZonalShiftConfigResponse
    ConfigStatus.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    ConfigStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    ConfigStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    LabelsKeyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    LabelsMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: LabelKey, name: "key"))
    LabelsMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: LabelValue, name: "value"))
    RequiredClaimsMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: RequiredClaimsKey, name: "key"))
    RequiredClaimsMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: RequiredClaimsValue, name: "value"))
    TaintsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Taint, name: "member"))

    AWSWesleyFrontend = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.eks#AWSWesleyFrontend"
      service.name = "AWSWesleyFrontend"
      service.version = "2017-11-01"
      service.traits = {"aws.api#service" => {"sdkId" => "EKS", "arnNamespace" => "eks", "cloudFormationName" => "EKS", "cloudTrailEventSource" => "eks.amazonaws.com", "endpointPrefix" => "eks"}, "aws.auth#sigv4" => {"name" => "eks"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "Amazon Elastic Kubernetes Service"}
      service.add_operation(:associate_access_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eks#AssociateAccessPolicy"
        operation.name = "AssociateAccessPolicy"
        operation.input = AssociateAccessPolicyRequest
        operation.output = AssociateAccessPolicyResponse
        operation.errors << InvalidParameterException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ServerException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/clusters/{clusterName}/access-entries/{principalArn}/access-policies", "code" => 200}}
      end)
      service.add_operation(:associate_encryption_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eks#AssociateEncryptionConfig"
        operation.name = "AssociateEncryptionConfig"
        operation.input = AssociateEncryptionConfigRequest
        operation.output = AssociateEncryptionConfigResponse
        operation.errors << ClientException
        operation.errors << InvalidParameterException
        operation.errors << InvalidRequestException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.errors << ServerException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/clusters/{clusterName}/encryption-config/associate", "code" => 200}}
      end)
      service.add_operation(:associate_identity_provider_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eks#AssociateIdentityProviderConfig"
        operation.name = "AssociateIdentityProviderConfig"
        operation.input = AssociateIdentityProviderConfigRequest
        operation.output = AssociateIdentityProviderConfigResponse
        operation.errors << ClientException
        operation.errors << InvalidParameterException
        operation.errors << InvalidRequestException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.errors << ServerException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/clusters/{clusterName}/identity-provider-configs/associate", "code" => 200}}
      end)
      service.add_operation(:create_access_entry, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eks#CreateAccessEntry"
        operation.name = "CreateAccessEntry"
        operation.input = CreateAccessEntryRequest
        operation.output = CreateAccessEntryResponse
        operation.errors << InvalidParameterException
        operation.errors << InvalidRequestException
        operation.errors << ResourceInUseException
        operation.errors << ResourceLimitExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << ServerException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/clusters/{clusterName}/access-entries", "code" => 200}}
      end)
      service.add_operation(:create_addon, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eks#CreateAddon"
        operation.name = "CreateAddon"
        operation.input = CreateAddonRequest
        operation.output = CreateAddonResponse
        operation.errors << ClientException
        operation.errors << InvalidParameterException
        operation.errors << InvalidRequestException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.errors << ServerException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/clusters/{clusterName}/addons", "code" => 200}}
      end)
      service.add_operation(:create_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eks#CreateCluster"
        operation.name = "CreateCluster"
        operation.input = CreateClusterRequest
        operation.output = CreateClusterResponse
        operation.errors << ClientException
        operation.errors << InvalidParameterException
        operation.errors << ResourceInUseException
        operation.errors << ResourceLimitExceededException
        operation.errors << ServerException
        operation.errors << ServiceUnavailableException
        operation.errors << UnsupportedAvailabilityZoneException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/clusters", "code" => 200}}
      end)
      service.add_operation(:create_eks_anywhere_subscription, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eks#CreateEksAnywhereSubscription"
        operation.name = "CreateEksAnywhereSubscription"
        operation.input = CreateEksAnywhereSubscriptionRequest
        operation.output = CreateEksAnywhereSubscriptionResponse
        operation.errors << ClientException
        operation.errors << InvalidParameterException
        operation.errors << ResourceLimitExceededException
        operation.errors << ServerException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/eks-anywhere-subscriptions", "code" => 200}}
      end)
      service.add_operation(:create_fargate_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eks#CreateFargateProfile"
        operation.name = "CreateFargateProfile"
        operation.input = CreateFargateProfileRequest
        operation.output = CreateFargateProfileResponse
        operation.errors << ClientException
        operation.errors << InvalidParameterException
        operation.errors << InvalidRequestException
        operation.errors << ResourceLimitExceededException
        operation.errors << ServerException
        operation.errors << UnsupportedAvailabilityZoneException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/clusters/{clusterName}/fargate-profiles", "code" => 200}}
      end)
      service.add_operation(:create_nodegroup, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eks#CreateNodegroup"
        operation.name = "CreateNodegroup"
        operation.input = CreateNodegroupRequest
        operation.output = CreateNodegroupResponse
        operation.errors << ClientException
        operation.errors << InvalidParameterException
        operation.errors << InvalidRequestException
        operation.errors << ResourceInUseException
        operation.errors << ResourceLimitExceededException
        operation.errors << ServerException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/clusters/{clusterName}/node-groups", "code" => 200}}
      end)
      service.add_operation(:create_pod_identity_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eks#CreatePodIdentityAssociation"
        operation.name = "CreatePodIdentityAssociation"
        operation.input = CreatePodIdentityAssociationRequest
        operation.output = CreatePodIdentityAssociationResponse
        operation.errors << InvalidParameterException
        operation.errors << InvalidRequestException
        operation.errors << ResourceInUseException
        operation.errors << ResourceLimitExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << ServerException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/clusters/{clusterName}/pod-identity-associations", "code" => 200}}
      end)
      service.add_operation(:delete_access_entry, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eks#DeleteAccessEntry"
        operation.name = "DeleteAccessEntry"
        operation.input = DeleteAccessEntryRequest
        operation.output = DeleteAccessEntryResponse
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ServerException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/clusters/{clusterName}/access-entries/{principalArn}", "code" => 200}}
      end)
      service.add_operation(:delete_addon, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eks#DeleteAddon"
        operation.name = "DeleteAddon"
        operation.input = DeleteAddonRequest
        operation.output = DeleteAddonResponse
        operation.errors << ClientException
        operation.errors << InvalidParameterException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ServerException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/clusters/{clusterName}/addons/{addonName}", "code" => 200}}
      end)
      service.add_operation(:delete_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eks#DeleteCluster"
        operation.name = "DeleteCluster"
        operation.input = DeleteClusterRequest
        operation.output = DeleteClusterResponse
        operation.errors << ClientException
        operation.errors << InvalidRequestException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.errors << ServerException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/clusters/{name}", "code" => 200}}
      end)
      service.add_operation(:delete_eks_anywhere_subscription, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eks#DeleteEksAnywhereSubscription"
        operation.name = "DeleteEksAnywhereSubscription"
        operation.input = DeleteEksAnywhereSubscriptionRequest
        operation.output = DeleteEksAnywhereSubscriptionResponse
        operation.errors << ClientException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ServerException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/eks-anywhere-subscriptions/{id}", "code" => 200}}
      end)
      service.add_operation(:delete_fargate_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eks#DeleteFargateProfile"
        operation.name = "DeleteFargateProfile"
        operation.input = DeleteFargateProfileRequest
        operation.output = DeleteFargateProfileResponse
        operation.errors << ClientException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.errors << ServerException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/clusters/{clusterName}/fargate-profiles/{fargateProfileName}", "code" => 200}}
      end)
      service.add_operation(:delete_nodegroup, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eks#DeleteNodegroup"
        operation.name = "DeleteNodegroup"
        operation.input = DeleteNodegroupRequest
        operation.output = DeleteNodegroupResponse
        operation.errors << ClientException
        operation.errors << InvalidParameterException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.errors << ServerException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/clusters/{clusterName}/node-groups/{nodegroupName}", "code" => 200}}
      end)
      service.add_operation(:delete_pod_identity_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eks#DeletePodIdentityAssociation"
        operation.name = "DeletePodIdentityAssociation"
        operation.input = DeletePodIdentityAssociationRequest
        operation.output = DeletePodIdentityAssociationResponse
        operation.errors << InvalidParameterException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ServerException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/clusters/{clusterName}/pod-identity-associations/{associationId}", "code" => 200}}
      end)
      service.add_operation(:deregister_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eks#DeregisterCluster"
        operation.name = "DeregisterCluster"
        operation.input = DeregisterClusterRequest
        operation.output = DeregisterClusterResponse
        operation.errors << AccessDeniedException
        operation.errors << ClientException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.errors << ServerException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/cluster-registrations/{name}", "code" => 200}}
      end)
      service.add_operation(:describe_access_entry, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eks#DescribeAccessEntry"
        operation.name = "DescribeAccessEntry"
        operation.input = DescribeAccessEntryRequest
        operation.output = DescribeAccessEntryResponse
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ServerException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/clusters/{clusterName}/access-entries/{principalArn}", "code" => 200}}
      end)
      service.add_operation(:describe_addon, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eks#DescribeAddon"
        operation.name = "DescribeAddon"
        operation.input = DescribeAddonRequest
        operation.output = DescribeAddonResponse
        operation.errors << ClientException
        operation.errors << InvalidParameterException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ServerException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/clusters/{clusterName}/addons/{addonName}", "code" => 200}}
      end)
      service.add_operation(:describe_addon_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eks#DescribeAddonConfiguration"
        operation.name = "DescribeAddonConfiguration"
        operation.input = DescribeAddonConfigurationRequest
        operation.output = DescribeAddonConfigurationResponse
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.errors << ServerException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/addons/configuration-schemas", "code" => 200}}
      end)
      service.add_operation(:describe_addon_versions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eks#DescribeAddonVersions"
        operation.name = "DescribeAddonVersions"
        operation.input = DescribeAddonVersionsRequest
        operation.output = DescribeAddonVersionsResponse
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.errors << ServerException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/addons/supported-versions", "code" => 200}}
        operation[:paginator] = Paginators::DescribeAddonVersions.new
      end)
      service.add_operation(:describe_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eks#DescribeCluster"
        operation.name = "DescribeCluster"
        operation.input = DescribeClusterRequest
        operation.output = DescribeClusterResponse
        operation.errors << ClientException
        operation.errors << ResourceNotFoundException
        operation.errors << ServerException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/clusters/{name}", "code" => 200}}
      end)
      service.add_operation(:describe_cluster_versions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eks#DescribeClusterVersions"
        operation.name = "DescribeClusterVersions"
        operation.input = DescribeClusterVersionsRequest
        operation.output = DescribeClusterVersionsResponse
        operation.errors << InvalidParameterException
        operation.errors << InvalidRequestException
        operation.errors << ServerException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/cluster-versions", "code" => 200}}
        operation[:paginator] = Paginators::DescribeClusterVersions.new
      end)
      service.add_operation(:describe_eks_anywhere_subscription, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eks#DescribeEksAnywhereSubscription"
        operation.name = "DescribeEksAnywhereSubscription"
        operation.input = DescribeEksAnywhereSubscriptionRequest
        operation.output = DescribeEksAnywhereSubscriptionResponse
        operation.errors << ClientException
        operation.errors << ResourceNotFoundException
        operation.errors << ServerException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/eks-anywhere-subscriptions/{id}", "code" => 200}}
      end)
      service.add_operation(:describe_fargate_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eks#DescribeFargateProfile"
        operation.name = "DescribeFargateProfile"
        operation.input = DescribeFargateProfileRequest
        operation.output = DescribeFargateProfileResponse
        operation.errors << ClientException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.errors << ServerException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/clusters/{clusterName}/fargate-profiles/{fargateProfileName}", "code" => 200}}
      end)
      service.add_operation(:describe_identity_provider_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eks#DescribeIdentityProviderConfig"
        operation.name = "DescribeIdentityProviderConfig"
        operation.input = DescribeIdentityProviderConfigRequest
        operation.output = DescribeIdentityProviderConfigResponse
        operation.errors << ClientException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.errors << ServerException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/clusters/{clusterName}/identity-provider-configs/describe", "code" => 200}}
      end)
      service.add_operation(:describe_insight, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eks#DescribeInsight"
        operation.name = "DescribeInsight"
        operation.input = DescribeInsightRequest
        operation.output = DescribeInsightResponse
        operation.errors << InvalidParameterException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ServerException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/clusters/{clusterName}/insights/{id}", "code" => 200}}
      end)
      service.add_operation(:describe_insights_refresh, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eks#DescribeInsightsRefresh"
        operation.name = "DescribeInsightsRefresh"
        operation.input = DescribeInsightsRefreshRequest
        operation.output = DescribeInsightsRefreshResponse
        operation.errors << InvalidParameterException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ServerException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/clusters/{clusterName}/insights-refresh", "code" => 200}}
      end)
      service.add_operation(:describe_nodegroup, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eks#DescribeNodegroup"
        operation.name = "DescribeNodegroup"
        operation.input = DescribeNodegroupRequest
        operation.output = DescribeNodegroupResponse
        operation.errors << ClientException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.errors << ServerException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/clusters/{clusterName}/node-groups/{nodegroupName}", "code" => 200}}
      end)
      service.add_operation(:describe_pod_identity_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eks#DescribePodIdentityAssociation"
        operation.name = "DescribePodIdentityAssociation"
        operation.input = DescribePodIdentityAssociationRequest
        operation.output = DescribePodIdentityAssociationResponse
        operation.errors << InvalidParameterException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ServerException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/clusters/{clusterName}/pod-identity-associations/{associationId}", "code" => 200}}
      end)
      service.add_operation(:describe_update, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eks#DescribeUpdate"
        operation.name = "DescribeUpdate"
        operation.input = DescribeUpdateRequest
        operation.output = DescribeUpdateResponse
        operation.errors << ClientException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.errors << ServerException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/clusters/{name}/updates/{updateId}", "code" => 200}}
      end)
      service.add_operation(:disassociate_access_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eks#DisassociateAccessPolicy"
        operation.name = "DisassociateAccessPolicy"
        operation.input = DisassociateAccessPolicyRequest
        operation.output = DisassociateAccessPolicyResponse
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ServerException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/clusters/{clusterName}/access-entries/{principalArn}/access-policies/{policyArn}", "code" => 200}}
      end)
      service.add_operation(:disassociate_identity_provider_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eks#DisassociateIdentityProviderConfig"
        operation.name = "DisassociateIdentityProviderConfig"
        operation.input = DisassociateIdentityProviderConfigRequest
        operation.output = DisassociateIdentityProviderConfigResponse
        operation.errors << ClientException
        operation.errors << InvalidParameterException
        operation.errors << InvalidRequestException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.errors << ServerException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/clusters/{clusterName}/identity-provider-configs/disassociate", "code" => 200}}
      end)
      service.add_operation(:list_access_entries, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eks#ListAccessEntries"
        operation.name = "ListAccessEntries"
        operation.input = ListAccessEntriesRequest
        operation.output = ListAccessEntriesResponse
        operation.errors << InvalidParameterException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ServerException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/clusters/{clusterName}/access-entries", "code" => 200}}
        operation[:paginator] = Paginators::ListAccessEntries.new
      end)
      service.add_operation(:list_access_policies, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eks#ListAccessPolicies"
        operation.name = "ListAccessPolicies"
        operation.input = ListAccessPoliciesRequest
        operation.output = ListAccessPoliciesResponse
        operation.errors << ServerException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/access-policies", "code" => 200}}
        operation[:paginator] = Paginators::ListAccessPolicies.new
      end)
      service.add_operation(:list_addons, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eks#ListAddons"
        operation.name = "ListAddons"
        operation.input = ListAddonsRequest
        operation.output = ListAddonsResponse
        operation.errors << ClientException
        operation.errors << InvalidParameterException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ServerException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/clusters/{clusterName}/addons", "code" => 200}}
        operation[:paginator] = Paginators::ListAddons.new
      end)
      service.add_operation(:list_associated_access_policies, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eks#ListAssociatedAccessPolicies"
        operation.name = "ListAssociatedAccessPolicies"
        operation.input = ListAssociatedAccessPoliciesRequest
        operation.output = ListAssociatedAccessPoliciesResponse
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ServerException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/clusters/{clusterName}/access-entries/{principalArn}/access-policies", "code" => 200}}
        operation[:paginator] = Paginators::ListAssociatedAccessPolicies.new
      end)
      service.add_operation(:list_clusters, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eks#ListClusters"
        operation.name = "ListClusters"
        operation.input = ListClustersRequest
        operation.output = ListClustersResponse
        operation.errors << ClientException
        operation.errors << InvalidParameterException
        operation.errors << ServerException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/clusters", "code" => 200}}
        operation[:paginator] = Paginators::ListClusters.new
      end)
      service.add_operation(:list_eks_anywhere_subscriptions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eks#ListEksAnywhereSubscriptions"
        operation.name = "ListEksAnywhereSubscriptions"
        operation.input = ListEksAnywhereSubscriptionsRequest
        operation.output = ListEksAnywhereSubscriptionsResponse
        operation.errors << ClientException
        operation.errors << InvalidParameterException
        operation.errors << ServerException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/eks-anywhere-subscriptions", "code" => 200}}
        operation[:paginator] = Paginators::ListEksAnywhereSubscriptions.new
      end)
      service.add_operation(:list_fargate_profiles, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eks#ListFargateProfiles"
        operation.name = "ListFargateProfiles"
        operation.input = ListFargateProfilesRequest
        operation.output = ListFargateProfilesResponse
        operation.errors << ClientException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.errors << ServerException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/clusters/{clusterName}/fargate-profiles", "code" => 200}}
        operation[:paginator] = Paginators::ListFargateProfiles.new
      end)
      service.add_operation(:list_identity_provider_configs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eks#ListIdentityProviderConfigs"
        operation.name = "ListIdentityProviderConfigs"
        operation.input = ListIdentityProviderConfigsRequest
        operation.output = ListIdentityProviderConfigsResponse
        operation.errors << ClientException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.errors << ServerException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/clusters/{clusterName}/identity-provider-configs", "code" => 200}}
        operation[:paginator] = Paginators::ListIdentityProviderConfigs.new
      end)
      service.add_operation(:list_insights, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eks#ListInsights"
        operation.name = "ListInsights"
        operation.input = ListInsightsRequest
        operation.output = ListInsightsResponse
        operation.errors << InvalidParameterException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ServerException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/clusters/{clusterName}/insights", "code" => 200}}
        operation[:paginator] = Paginators::ListInsights.new
      end)
      service.add_operation(:list_nodegroups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eks#ListNodegroups"
        operation.name = "ListNodegroups"
        operation.input = ListNodegroupsRequest
        operation.output = ListNodegroupsResponse
        operation.errors << ClientException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.errors << ServerException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/clusters/{clusterName}/node-groups", "code" => 200}}
        operation[:paginator] = Paginators::ListNodegroups.new
      end)
      service.add_operation(:list_pod_identity_associations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eks#ListPodIdentityAssociations"
        operation.name = "ListPodIdentityAssociations"
        operation.input = ListPodIdentityAssociationsRequest
        operation.output = ListPodIdentityAssociationsResponse
        operation.errors << InvalidParameterException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ServerException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/clusters/{clusterName}/pod-identity-associations", "code" => 200}}
        operation[:paginator] = Paginators::ListPodIdentityAssociations.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eks#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResponse
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags/{resourceArn}", "code" => 200}}
      end)
      service.add_operation(:list_updates, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eks#ListUpdates"
        operation.name = "ListUpdates"
        operation.input = ListUpdatesRequest
        operation.output = ListUpdatesResponse
        operation.errors << ClientException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.errors << ServerException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/clusters/{name}/updates", "code" => 200}}
        operation[:paginator] = Paginators::ListUpdates.new
      end)
      service.add_operation(:register_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eks#RegisterCluster"
        operation.name = "RegisterCluster"
        operation.input = RegisterClusterRequest
        operation.output = RegisterClusterResponse
        operation.errors << AccessDeniedException
        operation.errors << ClientException
        operation.errors << InvalidParameterException
        operation.errors << ResourceInUseException
        operation.errors << ResourceLimitExceededException
        operation.errors << ResourcePropagationDelayException
        operation.errors << ServerException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/cluster-registrations", "code" => 200}}
      end)
      service.add_operation(:start_insights_refresh, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eks#StartInsightsRefresh"
        operation.name = "StartInsightsRefresh"
        operation.input = StartInsightsRefreshRequest
        operation.output = StartInsightsRefreshResponse
        operation.errors << InvalidParameterException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ServerException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/clusters/{clusterName}/insights-refresh", "code" => 200}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eks#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = TagResourceResponse
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags/{resourceArn}", "code" => 200}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eks#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = UntagResourceResponse
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{resourceArn}", "code" => 200}}
      end)
      service.add_operation(:update_access_entry, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eks#UpdateAccessEntry"
        operation.name = "UpdateAccessEntry"
        operation.input = UpdateAccessEntryRequest
        operation.output = UpdateAccessEntryResponse
        operation.errors << InvalidParameterException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ServerException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/clusters/{clusterName}/access-entries/{principalArn}", "code" => 200}}
      end)
      service.add_operation(:update_addon, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eks#UpdateAddon"
        operation.name = "UpdateAddon"
        operation.input = UpdateAddonRequest
        operation.output = UpdateAddonResponse
        operation.errors << ClientException
        operation.errors << InvalidParameterException
        operation.errors << InvalidRequestException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.errors << ServerException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/clusters/{clusterName}/addons/{addonName}/update", "code" => 200}}
      end)
      service.add_operation(:update_cluster_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eks#UpdateClusterConfig"
        operation.name = "UpdateClusterConfig"
        operation.input = UpdateClusterConfigRequest
        operation.output = UpdateClusterConfigResponse
        operation.errors << ClientException
        operation.errors << InvalidParameterException
        operation.errors << InvalidRequestException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.errors << ServerException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/clusters/{name}/update-config", "code" => 200}}
      end)
      service.add_operation(:update_cluster_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eks#UpdateClusterVersion"
        operation.name = "UpdateClusterVersion"
        operation.input = UpdateClusterVersionRequest
        operation.output = UpdateClusterVersionResponse
        operation.errors << ClientException
        operation.errors << InvalidParameterException
        operation.errors << InvalidRequestException
        operation.errors << InvalidStateException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.errors << ServerException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/clusters/{name}/updates", "code" => 200}}
      end)
      service.add_operation(:update_eks_anywhere_subscription, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eks#UpdateEksAnywhereSubscription"
        operation.name = "UpdateEksAnywhereSubscription"
        operation.input = UpdateEksAnywhereSubscriptionRequest
        operation.output = UpdateEksAnywhereSubscriptionResponse
        operation.errors << ClientException
        operation.errors << InvalidParameterException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ServerException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/eks-anywhere-subscriptions/{id}", "code" => 200}}
      end)
      service.add_operation(:update_nodegroup_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eks#UpdateNodegroupConfig"
        operation.name = "UpdateNodegroupConfig"
        operation.input = UpdateNodegroupConfigRequest
        operation.output = UpdateNodegroupConfigResponse
        operation.errors << ClientException
        operation.errors << InvalidParameterException
        operation.errors << InvalidRequestException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.errors << ServerException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/clusters/{clusterName}/node-groups/{nodegroupName}/update-config", "code" => 200}}
      end)
      service.add_operation(:update_nodegroup_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eks#UpdateNodegroupVersion"
        operation.name = "UpdateNodegroupVersion"
        operation.input = UpdateNodegroupVersionRequest
        operation.output = UpdateNodegroupVersionResponse
        operation.errors << ClientException
        operation.errors << InvalidParameterException
        operation.errors << InvalidRequestException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.errors << ServerException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/clusters/{clusterName}/node-groups/{nodegroupName}/update-version", "code" => 200}}
      end)
      service.add_operation(:update_pod_identity_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eks#UpdatePodIdentityAssociation"
        operation.name = "UpdatePodIdentityAssociation"
        operation.input = UpdatePodIdentityAssociationRequest
        operation.output = UpdatePodIdentityAssociationResponse
        operation.errors << InvalidParameterException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ServerException
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
