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
    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    Addon = Shapes::StructureShape.new(name: 'Addon')
    AddonHealth = Shapes::StructureShape.new(name: 'AddonHealth')
    AddonInfo = Shapes::StructureShape.new(name: 'AddonInfo')
    AddonIssue = Shapes::StructureShape.new(name: 'AddonIssue')
    AddonIssueCode = Shapes::StringShape.new(name: 'AddonIssueCode')
    AddonIssueList = Shapes::ListShape.new(name: 'AddonIssueList')
    AddonStatus = Shapes::StringShape.new(name: 'AddonStatus')
    AddonVersionInfo = Shapes::StructureShape.new(name: 'AddonVersionInfo')
    AddonVersionInfoList = Shapes::ListShape.new(name: 'AddonVersionInfoList')
    Addons = Shapes::ListShape.new(name: 'Addons')
    AssociateEncryptionConfigRequest = Shapes::StructureShape.new(name: 'AssociateEncryptionConfigRequest')
    AssociateEncryptionConfigResponse = Shapes::StructureShape.new(name: 'AssociateEncryptionConfigResponse')
    AssociateIdentityProviderConfigRequest = Shapes::StructureShape.new(name: 'AssociateIdentityProviderConfigRequest')
    AssociateIdentityProviderConfigResponse = Shapes::StructureShape.new(name: 'AssociateIdentityProviderConfigResponse')
    AutoScalingGroup = Shapes::StructureShape.new(name: 'AutoScalingGroup')
    AutoScalingGroupList = Shapes::ListShape.new(name: 'AutoScalingGroupList')
    BadRequestException = Shapes::StructureShape.new(name: 'BadRequestException')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    BoxedBoolean = Shapes::BooleanShape.new(name: 'BoxedBoolean')
    BoxedInteger = Shapes::IntegerShape.new(name: 'BoxedInteger')
    Capacity = Shapes::IntegerShape.new(name: 'Capacity')
    CapacityTypes = Shapes::StringShape.new(name: 'CapacityTypes')
    Certificate = Shapes::StructureShape.new(name: 'Certificate')
    ClientException = Shapes::StructureShape.new(name: 'ClientException')
    Cluster = Shapes::StructureShape.new(name: 'Cluster')
    ClusterHealth = Shapes::StructureShape.new(name: 'ClusterHealth')
    ClusterIssue = Shapes::StructureShape.new(name: 'ClusterIssue')
    ClusterIssueCode = Shapes::StringShape.new(name: 'ClusterIssueCode')
    ClusterIssueList = Shapes::ListShape.new(name: 'ClusterIssueList')
    ClusterName = Shapes::StringShape.new(name: 'ClusterName')
    ClusterStatus = Shapes::StringShape.new(name: 'ClusterStatus')
    Compatibilities = Shapes::ListShape.new(name: 'Compatibilities')
    Compatibility = Shapes::StructureShape.new(name: 'Compatibility')
    ConnectorConfigProvider = Shapes::StringShape.new(name: 'ConnectorConfigProvider')
    ConnectorConfigRequest = Shapes::StructureShape.new(name: 'ConnectorConfigRequest')
    ConnectorConfigResponse = Shapes::StructureShape.new(name: 'ConnectorConfigResponse')
    ControlPlanePlacementRequest = Shapes::StructureShape.new(name: 'ControlPlanePlacementRequest')
    ControlPlanePlacementResponse = Shapes::StructureShape.new(name: 'ControlPlanePlacementResponse')
    CreateAddonRequest = Shapes::StructureShape.new(name: 'CreateAddonRequest')
    CreateAddonResponse = Shapes::StructureShape.new(name: 'CreateAddonResponse')
    CreateClusterRequest = Shapes::StructureShape.new(name: 'CreateClusterRequest')
    CreateClusterResponse = Shapes::StructureShape.new(name: 'CreateClusterResponse')
    CreateFargateProfileRequest = Shapes::StructureShape.new(name: 'CreateFargateProfileRequest')
    CreateFargateProfileResponse = Shapes::StructureShape.new(name: 'CreateFargateProfileResponse')
    CreateNodegroupRequest = Shapes::StructureShape.new(name: 'CreateNodegroupRequest')
    CreateNodegroupResponse = Shapes::StructureShape.new(name: 'CreateNodegroupResponse')
    DeleteAddonRequest = Shapes::StructureShape.new(name: 'DeleteAddonRequest')
    DeleteAddonResponse = Shapes::StructureShape.new(name: 'DeleteAddonResponse')
    DeleteClusterRequest = Shapes::StructureShape.new(name: 'DeleteClusterRequest')
    DeleteClusterResponse = Shapes::StructureShape.new(name: 'DeleteClusterResponse')
    DeleteFargateProfileRequest = Shapes::StructureShape.new(name: 'DeleteFargateProfileRequest')
    DeleteFargateProfileResponse = Shapes::StructureShape.new(name: 'DeleteFargateProfileResponse')
    DeleteNodegroupRequest = Shapes::StructureShape.new(name: 'DeleteNodegroupRequest')
    DeleteNodegroupResponse = Shapes::StructureShape.new(name: 'DeleteNodegroupResponse')
    DeregisterClusterRequest = Shapes::StructureShape.new(name: 'DeregisterClusterRequest')
    DeregisterClusterResponse = Shapes::StructureShape.new(name: 'DeregisterClusterResponse')
    DescribeAddonConfigurationRequest = Shapes::StructureShape.new(name: 'DescribeAddonConfigurationRequest')
    DescribeAddonConfigurationResponse = Shapes::StructureShape.new(name: 'DescribeAddonConfigurationResponse')
    DescribeAddonRequest = Shapes::StructureShape.new(name: 'DescribeAddonRequest')
    DescribeAddonResponse = Shapes::StructureShape.new(name: 'DescribeAddonResponse')
    DescribeAddonVersionsRequest = Shapes::StructureShape.new(name: 'DescribeAddonVersionsRequest')
    DescribeAddonVersionsRequestMaxResults = Shapes::IntegerShape.new(name: 'DescribeAddonVersionsRequestMaxResults')
    DescribeAddonVersionsResponse = Shapes::StructureShape.new(name: 'DescribeAddonVersionsResponse')
    DescribeClusterRequest = Shapes::StructureShape.new(name: 'DescribeClusterRequest')
    DescribeClusterResponse = Shapes::StructureShape.new(name: 'DescribeClusterResponse')
    DescribeFargateProfileRequest = Shapes::StructureShape.new(name: 'DescribeFargateProfileRequest')
    DescribeFargateProfileResponse = Shapes::StructureShape.new(name: 'DescribeFargateProfileResponse')
    DescribeIdentityProviderConfigRequest = Shapes::StructureShape.new(name: 'DescribeIdentityProviderConfigRequest')
    DescribeIdentityProviderConfigResponse = Shapes::StructureShape.new(name: 'DescribeIdentityProviderConfigResponse')
    DescribeNodegroupRequest = Shapes::StructureShape.new(name: 'DescribeNodegroupRequest')
    DescribeNodegroupResponse = Shapes::StructureShape.new(name: 'DescribeNodegroupResponse')
    DescribeUpdateRequest = Shapes::StructureShape.new(name: 'DescribeUpdateRequest')
    DescribeUpdateResponse = Shapes::StructureShape.new(name: 'DescribeUpdateResponse')
    DisassociateIdentityProviderConfigRequest = Shapes::StructureShape.new(name: 'DisassociateIdentityProviderConfigRequest')
    DisassociateIdentityProviderConfigResponse = Shapes::StructureShape.new(name: 'DisassociateIdentityProviderConfigResponse')
    EncryptionConfig = Shapes::StructureShape.new(name: 'EncryptionConfig')
    EncryptionConfigList = Shapes::ListShape.new(name: 'EncryptionConfigList')
    ErrorCode = Shapes::StringShape.new(name: 'ErrorCode')
    ErrorDetail = Shapes::StructureShape.new(name: 'ErrorDetail')
    ErrorDetails = Shapes::ListShape.new(name: 'ErrorDetails')
    FargateProfile = Shapes::StructureShape.new(name: 'FargateProfile')
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
    InvalidParameterException = Shapes::StructureShape.new(name: 'InvalidParameterException')
    InvalidRequestException = Shapes::StructureShape.new(name: 'InvalidRequestException')
    IpFamily = Shapes::StringShape.new(name: 'IpFamily')
    Issue = Shapes::StructureShape.new(name: 'Issue')
    IssueList = Shapes::ListShape.new(name: 'IssueList')
    KubernetesNetworkConfigRequest = Shapes::StructureShape.new(name: 'KubernetesNetworkConfigRequest')
    KubernetesNetworkConfigResponse = Shapes::StructureShape.new(name: 'KubernetesNetworkConfigResponse')
    LaunchTemplateSpecification = Shapes::StructureShape.new(name: 'LaunchTemplateSpecification')
    ListAddonsRequest = Shapes::StructureShape.new(name: 'ListAddonsRequest')
    ListAddonsRequestMaxResults = Shapes::IntegerShape.new(name: 'ListAddonsRequestMaxResults')
    ListAddonsResponse = Shapes::StructureShape.new(name: 'ListAddonsResponse')
    ListClustersRequest = Shapes::StructureShape.new(name: 'ListClustersRequest')
    ListClustersRequestMaxResults = Shapes::IntegerShape.new(name: 'ListClustersRequestMaxResults')
    ListClustersResponse = Shapes::StructureShape.new(name: 'ListClustersResponse')
    ListFargateProfilesRequest = Shapes::StructureShape.new(name: 'ListFargateProfilesRequest')
    ListFargateProfilesResponse = Shapes::StructureShape.new(name: 'ListFargateProfilesResponse')
    ListIdentityProviderConfigsRequest = Shapes::StructureShape.new(name: 'ListIdentityProviderConfigsRequest')
    ListIdentityProviderConfigsRequestMaxResults = Shapes::IntegerShape.new(name: 'ListIdentityProviderConfigsRequestMaxResults')
    ListIdentityProviderConfigsResponse = Shapes::StructureShape.new(name: 'ListIdentityProviderConfigsResponse')
    ListNodegroupsRequest = Shapes::StructureShape.new(name: 'ListNodegroupsRequest')
    ListNodegroupsRequestMaxResults = Shapes::IntegerShape.new(name: 'ListNodegroupsRequestMaxResults')
    ListNodegroupsResponse = Shapes::StructureShape.new(name: 'ListNodegroupsResponse')
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
    Nodegroup = Shapes::StructureShape.new(name: 'Nodegroup')
    NodegroupHealth = Shapes::StructureShape.new(name: 'NodegroupHealth')
    NodegroupIssueCode = Shapes::StringShape.new(name: 'NodegroupIssueCode')
    NodegroupResources = Shapes::StructureShape.new(name: 'NodegroupResources')
    NodegroupScalingConfig = Shapes::StructureShape.new(name: 'NodegroupScalingConfig')
    NodegroupStatus = Shapes::StringShape.new(name: 'NodegroupStatus')
    NodegroupUpdateConfig = Shapes::StructureShape.new(name: 'NodegroupUpdateConfig')
    NonZeroInteger = Shapes::IntegerShape.new(name: 'NonZeroInteger')
    NotFoundException = Shapes::StructureShape.new(name: 'NotFoundException')
    OIDC = Shapes::StructureShape.new(name: 'OIDC')
    OidcIdentityProviderConfig = Shapes::StructureShape.new(name: 'OidcIdentityProviderConfig')
    OidcIdentityProviderConfigRequest = Shapes::StructureShape.new(name: 'OidcIdentityProviderConfigRequest')
    OutpostConfigRequest = Shapes::StructureShape.new(name: 'OutpostConfigRequest')
    OutpostConfigResponse = Shapes::StructureShape.new(name: 'OutpostConfigResponse')
    PercentCapacity = Shapes::IntegerShape.new(name: 'PercentCapacity')
    Provider = Shapes::StructureShape.new(name: 'Provider')
    RegisterClusterRequest = Shapes::StructureShape.new(name: 'RegisterClusterRequest')
    RegisterClusterResponse = Shapes::StructureShape.new(name: 'RegisterClusterResponse')
    RemoteAccessConfig = Shapes::StructureShape.new(name: 'RemoteAccessConfig')
    ResolveConflicts = Shapes::StringShape.new(name: 'ResolveConflicts')
    ResourceInUseException = Shapes::StructureShape.new(name: 'ResourceInUseException')
    ResourceLimitExceededException = Shapes::StructureShape.new(name: 'ResourceLimitExceededException')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourcePropagationDelayException = Shapes::StructureShape.new(name: 'ResourcePropagationDelayException')
    RoleArn = Shapes::StringShape.new(name: 'RoleArn')
    ServerException = Shapes::StructureShape.new(name: 'ServerException')
    ServiceUnavailableException = Shapes::StructureShape.new(name: 'ServiceUnavailableException')
    String = Shapes::StringShape.new(name: 'String')
    StringList = Shapes::ListShape.new(name: 'StringList')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagMap = Shapes::MapShape.new(name: 'TagMap')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    Taint = Shapes::StructureShape.new(name: 'Taint')
    TaintEffect = Shapes::StringShape.new(name: 'TaintEffect')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    UnsupportedAvailabilityZoneException = Shapes::StructureShape.new(name: 'UnsupportedAvailabilityZoneException')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    Update = Shapes::StructureShape.new(name: 'Update')
    UpdateAddonRequest = Shapes::StructureShape.new(name: 'UpdateAddonRequest')
    UpdateAddonResponse = Shapes::StructureShape.new(name: 'UpdateAddonResponse')
    UpdateClusterConfigRequest = Shapes::StructureShape.new(name: 'UpdateClusterConfigRequest')
    UpdateClusterConfigResponse = Shapes::StructureShape.new(name: 'UpdateClusterConfigResponse')
    UpdateClusterVersionRequest = Shapes::StructureShape.new(name: 'UpdateClusterVersionRequest')
    UpdateClusterVersionResponse = Shapes::StructureShape.new(name: 'UpdateClusterVersionResponse')
    UpdateLabelsPayload = Shapes::StructureShape.new(name: 'UpdateLabelsPayload')
    UpdateNodegroupConfigRequest = Shapes::StructureShape.new(name: 'UpdateNodegroupConfigRequest')
    UpdateNodegroupConfigResponse = Shapes::StructureShape.new(name: 'UpdateNodegroupConfigResponse')
    UpdateNodegroupVersionRequest = Shapes::StructureShape.new(name: 'UpdateNodegroupVersionRequest')
    UpdateNodegroupVersionResponse = Shapes::StructureShape.new(name: 'UpdateNodegroupVersionResponse')
    UpdateParam = Shapes::StructureShape.new(name: 'UpdateParam')
    UpdateParamType = Shapes::StringShape.new(name: 'UpdateParamType')
    UpdateParams = Shapes::ListShape.new(name: 'UpdateParams')
    UpdateStatus = Shapes::StringShape.new(name: 'UpdateStatus')
    UpdateTaintsPayload = Shapes::StructureShape.new(name: 'UpdateTaintsPayload')
    UpdateType = Shapes::StringShape.new(name: 'UpdateType')
    VpcConfigRequest = Shapes::StructureShape.new(name: 'VpcConfigRequest')
    VpcConfigResponse = Shapes::StructureShape.new(name: 'VpcConfigResponse')
    ZeroCapacity = Shapes::IntegerShape.new(name: 'ZeroCapacity')
    configStatus = Shapes::StringShape.new(name: 'configStatus')
    labelKey = Shapes::StringShape.new(name: 'labelKey')
    labelValue = Shapes::StringShape.new(name: 'labelValue')
    labelsKeyList = Shapes::ListShape.new(name: 'labelsKeyList')
    labelsMap = Shapes::MapShape.new(name: 'labelsMap')
    requiredClaimsKey = Shapes::StringShape.new(name: 'requiredClaimsKey')
    requiredClaimsMap = Shapes::MapShape.new(name: 'requiredClaimsMap')
    requiredClaimsValue = Shapes::StringShape.new(name: 'requiredClaimsValue')
    taintKey = Shapes::StringShape.new(name: 'taintKey')
    taintValue = Shapes::StringShape.new(name: 'taintValue')
    taintsList = Shapes::ListShape.new(name: 'taintsList')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

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
    Addon.struct_class = Types::Addon

    AddonHealth.add_member(:issues, Shapes::ShapeRef.new(shape: AddonIssueList, location_name: "issues"))
    AddonHealth.struct_class = Types::AddonHealth

    AddonInfo.add_member(:addon_name, Shapes::ShapeRef.new(shape: String, location_name: "addonName"))
    AddonInfo.add_member(:type, Shapes::ShapeRef.new(shape: String, location_name: "type"))
    AddonInfo.add_member(:addon_versions, Shapes::ShapeRef.new(shape: AddonVersionInfoList, location_name: "addonVersions"))
    AddonInfo.add_member(:publisher, Shapes::ShapeRef.new(shape: String, location_name: "publisher"))
    AddonInfo.add_member(:owner, Shapes::ShapeRef.new(shape: String, location_name: "owner"))
    AddonInfo.add_member(:marketplace_information, Shapes::ShapeRef.new(shape: MarketplaceInformation, location_name: "marketplaceInformation"))
    AddonInfo.struct_class = Types::AddonInfo

    AddonIssue.add_member(:code, Shapes::ShapeRef.new(shape: AddonIssueCode, location_name: "code"))
    AddonIssue.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    AddonIssue.add_member(:resource_ids, Shapes::ShapeRef.new(shape: StringList, location_name: "resourceIds"))
    AddonIssue.struct_class = Types::AddonIssue

    AddonIssueList.member = Shapes::ShapeRef.new(shape: AddonIssue)

    AddonVersionInfo.add_member(:addon_version, Shapes::ShapeRef.new(shape: String, location_name: "addonVersion"))
    AddonVersionInfo.add_member(:architecture, Shapes::ShapeRef.new(shape: StringList, location_name: "architecture"))
    AddonVersionInfo.add_member(:compatibilities, Shapes::ShapeRef.new(shape: Compatibilities, location_name: "compatibilities"))
    AddonVersionInfo.add_member(:requires_configuration, Shapes::ShapeRef.new(shape: Boolean, location_name: "requiresConfiguration"))
    AddonVersionInfo.struct_class = Types::AddonVersionInfo

    AddonVersionInfoList.member = Shapes::ShapeRef.new(shape: AddonVersionInfo)

    Addons.member = Shapes::ShapeRef.new(shape: AddonInfo)

    AssociateEncryptionConfigRequest.add_member(:cluster_name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "name"))
    AssociateEncryptionConfigRequest.add_member(:encryption_config, Shapes::ShapeRef.new(shape: EncryptionConfigList, required: true, location_name: "encryptionConfig"))
    AssociateEncryptionConfigRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: String, location_name: "clientRequestToken", metadata: {"idempotencyToken"=>true}))
    AssociateEncryptionConfigRequest.struct_class = Types::AssociateEncryptionConfigRequest

    AssociateEncryptionConfigResponse.add_member(:update, Shapes::ShapeRef.new(shape: Update, location_name: "update"))
    AssociateEncryptionConfigResponse.struct_class = Types::AssociateEncryptionConfigResponse

    AssociateIdentityProviderConfigRequest.add_member(:cluster_name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "name"))
    AssociateIdentityProviderConfigRequest.add_member(:oidc, Shapes::ShapeRef.new(shape: OidcIdentityProviderConfigRequest, required: true, location_name: "oidc"))
    AssociateIdentityProviderConfigRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    AssociateIdentityProviderConfigRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: String, location_name: "clientRequestToken", metadata: {"idempotencyToken"=>true}))
    AssociateIdentityProviderConfigRequest.struct_class = Types::AssociateIdentityProviderConfigRequest

    AssociateIdentityProviderConfigResponse.add_member(:update, Shapes::ShapeRef.new(shape: Update, location_name: "update"))
    AssociateIdentityProviderConfigResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    AssociateIdentityProviderConfigResponse.struct_class = Types::AssociateIdentityProviderConfigResponse

    AutoScalingGroup.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    AutoScalingGroup.struct_class = Types::AutoScalingGroup

    AutoScalingGroupList.member = Shapes::ShapeRef.new(shape: AutoScalingGroup)

    BadRequestException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    BadRequestException.struct_class = Types::BadRequestException

    Certificate.add_member(:data, Shapes::ShapeRef.new(shape: String, location_name: "data"))
    Certificate.struct_class = Types::Certificate

    ClientException.add_member(:cluster_name, Shapes::ShapeRef.new(shape: String, location_name: "clusterName"))
    ClientException.add_member(:nodegroup_name, Shapes::ShapeRef.new(shape: String, location_name: "nodegroupName"))
    ClientException.add_member(:addon_name, Shapes::ShapeRef.new(shape: String, location_name: "addonName"))
    ClientException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ClientException.struct_class = Types::ClientException

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
    Cluster.struct_class = Types::Cluster

    ClusterHealth.add_member(:issues, Shapes::ShapeRef.new(shape: ClusterIssueList, location_name: "issues"))
    ClusterHealth.struct_class = Types::ClusterHealth

    ClusterIssue.add_member(:code, Shapes::ShapeRef.new(shape: ClusterIssueCode, location_name: "code"))
    ClusterIssue.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ClusterIssue.add_member(:resource_ids, Shapes::ShapeRef.new(shape: StringList, location_name: "resourceIds"))
    ClusterIssue.struct_class = Types::ClusterIssue

    ClusterIssueList.member = Shapes::ShapeRef.new(shape: ClusterIssue)

    Compatibilities.member = Shapes::ShapeRef.new(shape: Compatibility)

    Compatibility.add_member(:cluster_version, Shapes::ShapeRef.new(shape: String, location_name: "clusterVersion"))
    Compatibility.add_member(:platform_versions, Shapes::ShapeRef.new(shape: StringList, location_name: "platformVersions"))
    Compatibility.add_member(:default_version, Shapes::ShapeRef.new(shape: Boolean, location_name: "defaultVersion"))
    Compatibility.struct_class = Types::Compatibility

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

    CreateAddonRequest.add_member(:cluster_name, Shapes::ShapeRef.new(shape: ClusterName, required: true, location: "uri", location_name: "name"))
    CreateAddonRequest.add_member(:addon_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "addonName"))
    CreateAddonRequest.add_member(:addon_version, Shapes::ShapeRef.new(shape: String, location_name: "addonVersion"))
    CreateAddonRequest.add_member(:service_account_role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "serviceAccountRoleArn"))
    CreateAddonRequest.add_member(:resolve_conflicts, Shapes::ShapeRef.new(shape: ResolveConflicts, location_name: "resolveConflicts"))
    CreateAddonRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: String, location_name: "clientRequestToken", metadata: {"idempotencyToken"=>true}))
    CreateAddonRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateAddonRequest.add_member(:configuration_values, Shapes::ShapeRef.new(shape: String, location_name: "configurationValues"))
    CreateAddonRequest.struct_class = Types::CreateAddonRequest

    CreateAddonResponse.add_member(:addon, Shapes::ShapeRef.new(shape: Addon, location_name: "addon"))
    CreateAddonResponse.struct_class = Types::CreateAddonResponse

    CreateClusterRequest.add_member(:name, Shapes::ShapeRef.new(shape: ClusterName, required: true, location_name: "name"))
    CreateClusterRequest.add_member(:version, Shapes::ShapeRef.new(shape: String, location_name: "version"))
    CreateClusterRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "roleArn"))
    CreateClusterRequest.add_member(:resources_vpc_config, Shapes::ShapeRef.new(shape: VpcConfigRequest, required: true, location_name: "resourcesVpcConfig"))
    CreateClusterRequest.add_member(:kubernetes_network_config, Shapes::ShapeRef.new(shape: KubernetesNetworkConfigRequest, location_name: "kubernetesNetworkConfig"))
    CreateClusterRequest.add_member(:logging, Shapes::ShapeRef.new(shape: Logging, location_name: "logging"))
    CreateClusterRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: String, location_name: "clientRequestToken", metadata: {"idempotencyToken"=>true}))
    CreateClusterRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateClusterRequest.add_member(:encryption_config, Shapes::ShapeRef.new(shape: EncryptionConfigList, location_name: "encryptionConfig"))
    CreateClusterRequest.add_member(:outpost_config, Shapes::ShapeRef.new(shape: OutpostConfigRequest, location_name: "outpostConfig"))
    CreateClusterRequest.struct_class = Types::CreateClusterRequest

    CreateClusterResponse.add_member(:cluster, Shapes::ShapeRef.new(shape: Cluster, location_name: "cluster"))
    CreateClusterResponse.struct_class = Types::CreateClusterResponse

    CreateFargateProfileRequest.add_member(:fargate_profile_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "fargateProfileName"))
    CreateFargateProfileRequest.add_member(:cluster_name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "name"))
    CreateFargateProfileRequest.add_member(:pod_execution_role_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "podExecutionRoleArn"))
    CreateFargateProfileRequest.add_member(:subnets, Shapes::ShapeRef.new(shape: StringList, location_name: "subnets"))
    CreateFargateProfileRequest.add_member(:selectors, Shapes::ShapeRef.new(shape: FargateProfileSelectors, location_name: "selectors"))
    CreateFargateProfileRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: String, location_name: "clientRequestToken", metadata: {"idempotencyToken"=>true}))
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
    CreateNodegroupRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: String, location_name: "clientRequestToken", metadata: {"idempotencyToken"=>true}))
    CreateNodegroupRequest.add_member(:launch_template, Shapes::ShapeRef.new(shape: LaunchTemplateSpecification, location_name: "launchTemplate"))
    CreateNodegroupRequest.add_member(:update_config, Shapes::ShapeRef.new(shape: NodegroupUpdateConfig, location_name: "updateConfig"))
    CreateNodegroupRequest.add_member(:capacity_type, Shapes::ShapeRef.new(shape: CapacityTypes, location_name: "capacityType"))
    CreateNodegroupRequest.add_member(:version, Shapes::ShapeRef.new(shape: String, location_name: "version"))
    CreateNodegroupRequest.add_member(:release_version, Shapes::ShapeRef.new(shape: String, location_name: "releaseVersion"))
    CreateNodegroupRequest.struct_class = Types::CreateNodegroupRequest

    CreateNodegroupResponse.add_member(:nodegroup, Shapes::ShapeRef.new(shape: Nodegroup, location_name: "nodegroup"))
    CreateNodegroupResponse.struct_class = Types::CreateNodegroupResponse

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

    DeregisterClusterRequest.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "name"))
    DeregisterClusterRequest.struct_class = Types::DeregisterClusterRequest

    DeregisterClusterResponse.add_member(:cluster, Shapes::ShapeRef.new(shape: Cluster, location_name: "cluster"))
    DeregisterClusterResponse.struct_class = Types::DeregisterClusterResponse

    DescribeAddonConfigurationRequest.add_member(:addon_name, Shapes::ShapeRef.new(shape: String, required: true, location: "querystring", location_name: "addonName"))
    DescribeAddonConfigurationRequest.add_member(:addon_version, Shapes::ShapeRef.new(shape: String, required: true, location: "querystring", location_name: "addonVersion"))
    DescribeAddonConfigurationRequest.struct_class = Types::DescribeAddonConfigurationRequest

    DescribeAddonConfigurationResponse.add_member(:addon_name, Shapes::ShapeRef.new(shape: String, location_name: "addonName"))
    DescribeAddonConfigurationResponse.add_member(:addon_version, Shapes::ShapeRef.new(shape: String, location_name: "addonVersion"))
    DescribeAddonConfigurationResponse.add_member(:configuration_schema, Shapes::ShapeRef.new(shape: String, location_name: "configurationSchema"))
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

    DescribeNodegroupRequest.add_member(:cluster_name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "name"))
    DescribeNodegroupRequest.add_member(:nodegroup_name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "nodegroupName"))
    DescribeNodegroupRequest.struct_class = Types::DescribeNodegroupRequest

    DescribeNodegroupResponse.add_member(:nodegroup, Shapes::ShapeRef.new(shape: Nodegroup, location_name: "nodegroup"))
    DescribeNodegroupResponse.struct_class = Types::DescribeNodegroupResponse

    DescribeUpdateRequest.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "name"))
    DescribeUpdateRequest.add_member(:update_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "updateId"))
    DescribeUpdateRequest.add_member(:nodegroup_name, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nodegroupName"))
    DescribeUpdateRequest.add_member(:addon_name, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "addonName"))
    DescribeUpdateRequest.struct_class = Types::DescribeUpdateRequest

    DescribeUpdateResponse.add_member(:update, Shapes::ShapeRef.new(shape: Update, location_name: "update"))
    DescribeUpdateResponse.struct_class = Types::DescribeUpdateResponse

    DisassociateIdentityProviderConfigRequest.add_member(:cluster_name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "name"))
    DisassociateIdentityProviderConfigRequest.add_member(:identity_provider_config, Shapes::ShapeRef.new(shape: IdentityProviderConfig, required: true, location_name: "identityProviderConfig"))
    DisassociateIdentityProviderConfigRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: String, location_name: "clientRequestToken", metadata: {"idempotencyToken"=>true}))
    DisassociateIdentityProviderConfigRequest.struct_class = Types::DisassociateIdentityProviderConfigRequest

    DisassociateIdentityProviderConfigResponse.add_member(:update, Shapes::ShapeRef.new(shape: Update, location_name: "update"))
    DisassociateIdentityProviderConfigResponse.struct_class = Types::DisassociateIdentityProviderConfigResponse

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
    FargateProfile.struct_class = Types::FargateProfile

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

    InvalidParameterException.add_member(:cluster_name, Shapes::ShapeRef.new(shape: String, location_name: "clusterName"))
    InvalidParameterException.add_member(:nodegroup_name, Shapes::ShapeRef.new(shape: String, location_name: "nodegroupName"))
    InvalidParameterException.add_member(:fargate_profile_name, Shapes::ShapeRef.new(shape: String, location_name: "fargateProfileName"))
    InvalidParameterException.add_member(:addon_name, Shapes::ShapeRef.new(shape: String, location_name: "addonName"))
    InvalidParameterException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    InvalidParameterException.struct_class = Types::InvalidParameterException

    InvalidRequestException.add_member(:cluster_name, Shapes::ShapeRef.new(shape: String, location_name: "clusterName"))
    InvalidRequestException.add_member(:nodegroup_name, Shapes::ShapeRef.new(shape: String, location_name: "nodegroupName"))
    InvalidRequestException.add_member(:addon_name, Shapes::ShapeRef.new(shape: String, location_name: "addonName"))
    InvalidRequestException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    InvalidRequestException.struct_class = Types::InvalidRequestException

    Issue.add_member(:code, Shapes::ShapeRef.new(shape: NodegroupIssueCode, location_name: "code"))
    Issue.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    Issue.add_member(:resource_ids, Shapes::ShapeRef.new(shape: StringList, location_name: "resourceIds"))
    Issue.struct_class = Types::Issue

    IssueList.member = Shapes::ShapeRef.new(shape: Issue)

    KubernetesNetworkConfigRequest.add_member(:service_ipv_4_cidr, Shapes::ShapeRef.new(shape: String, location_name: "serviceIpv4Cidr"))
    KubernetesNetworkConfigRequest.add_member(:ip_family, Shapes::ShapeRef.new(shape: IpFamily, location_name: "ipFamily"))
    KubernetesNetworkConfigRequest.struct_class = Types::KubernetesNetworkConfigRequest

    KubernetesNetworkConfigResponse.add_member(:service_ipv_4_cidr, Shapes::ShapeRef.new(shape: String, location_name: "serviceIpv4Cidr"))
    KubernetesNetworkConfigResponse.add_member(:service_ipv_6_cidr, Shapes::ShapeRef.new(shape: String, location_name: "serviceIpv6Cidr"))
    KubernetesNetworkConfigResponse.add_member(:ip_family, Shapes::ShapeRef.new(shape: IpFamily, location_name: "ipFamily"))
    KubernetesNetworkConfigResponse.struct_class = Types::KubernetesNetworkConfigResponse

    LaunchTemplateSpecification.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    LaunchTemplateSpecification.add_member(:version, Shapes::ShapeRef.new(shape: String, location_name: "version"))
    LaunchTemplateSpecification.add_member(:id, Shapes::ShapeRef.new(shape: String, location_name: "id"))
    LaunchTemplateSpecification.struct_class = Types::LaunchTemplateSpecification

    ListAddonsRequest.add_member(:cluster_name, Shapes::ShapeRef.new(shape: ClusterName, required: true, location: "uri", location_name: "name"))
    ListAddonsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListAddonsRequestMaxResults, location: "querystring", location_name: "maxResults"))
    ListAddonsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListAddonsRequest.struct_class = Types::ListAddonsRequest

    ListAddonsResponse.add_member(:addons, Shapes::ShapeRef.new(shape: StringList, location_name: "addons"))
    ListAddonsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListAddonsResponse.struct_class = Types::ListAddonsResponse

    ListClustersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListClustersRequestMaxResults, location: "querystring", location_name: "maxResults"))
    ListClustersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListClustersRequest.add_member(:include, Shapes::ShapeRef.new(shape: IncludeClustersList, location: "querystring", location_name: "include"))
    ListClustersRequest.struct_class = Types::ListClustersRequest

    ListClustersResponse.add_member(:clusters, Shapes::ShapeRef.new(shape: StringList, location_name: "clusters"))
    ListClustersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListClustersResponse.struct_class = Types::ListClustersResponse

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

    ListNodegroupsRequest.add_member(:cluster_name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "name"))
    ListNodegroupsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListNodegroupsRequestMaxResults, location: "querystring", location_name: "maxResults"))
    ListNodegroupsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListNodegroupsRequest.struct_class = Types::ListNodegroupsRequest

    ListNodegroupsResponse.add_member(:nodegroups, Shapes::ShapeRef.new(shape: StringList, location_name: "nodegroups"))
    ListNodegroupsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListNodegroupsResponse.struct_class = Types::ListNodegroupsResponse

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

    Provider.add_member(:key_arn, Shapes::ShapeRef.new(shape: String, location_name: "keyArn"))
    Provider.struct_class = Types::Provider

    RegisterClusterRequest.add_member(:name, Shapes::ShapeRef.new(shape: ClusterName, required: true, location_name: "name"))
    RegisterClusterRequest.add_member(:connector_config, Shapes::ShapeRef.new(shape: ConnectorConfigRequest, required: true, location_name: "connectorConfig"))
    RegisterClusterRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: String, location_name: "clientRequestToken", metadata: {"idempotencyToken"=>true}))
    RegisterClusterRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    RegisterClusterRequest.struct_class = Types::RegisterClusterRequest

    RegisterClusterResponse.add_member(:cluster, Shapes::ShapeRef.new(shape: Cluster, location_name: "cluster"))
    RegisterClusterResponse.struct_class = Types::RegisterClusterResponse

    RemoteAccessConfig.add_member(:ec2_ssh_key, Shapes::ShapeRef.new(shape: String, location_name: "ec2SshKey"))
    RemoteAccessConfig.add_member(:source_security_groups, Shapes::ShapeRef.new(shape: StringList, location_name: "sourceSecurityGroups"))
    RemoteAccessConfig.struct_class = Types::RemoteAccessConfig

    ResourceInUseException.add_member(:cluster_name, Shapes::ShapeRef.new(shape: String, location_name: "clusterName"))
    ResourceInUseException.add_member(:nodegroup_name, Shapes::ShapeRef.new(shape: String, location_name: "nodegroupName"))
    ResourceInUseException.add_member(:addon_name, Shapes::ShapeRef.new(shape: String, location_name: "addonName"))
    ResourceInUseException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ResourceInUseException.struct_class = Types::ResourceInUseException

    ResourceLimitExceededException.add_member(:cluster_name, Shapes::ShapeRef.new(shape: String, location_name: "clusterName"))
    ResourceLimitExceededException.add_member(:nodegroup_name, Shapes::ShapeRef.new(shape: String, location_name: "nodegroupName"))
    ResourceLimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ResourceLimitExceededException.struct_class = Types::ResourceLimitExceededException

    ResourceNotFoundException.add_member(:cluster_name, Shapes::ShapeRef.new(shape: String, location_name: "clusterName"))
    ResourceNotFoundException.add_member(:nodegroup_name, Shapes::ShapeRef.new(shape: String, location_name: "nodegroupName"))
    ResourceNotFoundException.add_member(:fargate_profile_name, Shapes::ShapeRef.new(shape: String, location_name: "fargateProfileName"))
    ResourceNotFoundException.add_member(:addon_name, Shapes::ShapeRef.new(shape: String, location_name: "addonName"))
    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ResourcePropagationDelayException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ResourcePropagationDelayException.struct_class = Types::ResourcePropagationDelayException

    ServerException.add_member(:cluster_name, Shapes::ShapeRef.new(shape: String, location_name: "clusterName"))
    ServerException.add_member(:nodegroup_name, Shapes::ShapeRef.new(shape: String, location_name: "nodegroupName"))
    ServerException.add_member(:addon_name, Shapes::ShapeRef.new(shape: String, location_name: "addonName"))
    ServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ServerException.struct_class = Types::ServerException

    ServiceUnavailableException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ServiceUnavailableException.struct_class = Types::ServiceUnavailableException

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

    UpdateAddonRequest.add_member(:cluster_name, Shapes::ShapeRef.new(shape: ClusterName, required: true, location: "uri", location_name: "name"))
    UpdateAddonRequest.add_member(:addon_name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "addonName"))
    UpdateAddonRequest.add_member(:addon_version, Shapes::ShapeRef.new(shape: String, location_name: "addonVersion"))
    UpdateAddonRequest.add_member(:service_account_role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "serviceAccountRoleArn"))
    UpdateAddonRequest.add_member(:resolve_conflicts, Shapes::ShapeRef.new(shape: ResolveConflicts, location_name: "resolveConflicts"))
    UpdateAddonRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: String, location_name: "clientRequestToken", metadata: {"idempotencyToken"=>true}))
    UpdateAddonRequest.add_member(:configuration_values, Shapes::ShapeRef.new(shape: String, location_name: "configurationValues"))
    UpdateAddonRequest.struct_class = Types::UpdateAddonRequest

    UpdateAddonResponse.add_member(:update, Shapes::ShapeRef.new(shape: Update, location_name: "update"))
    UpdateAddonResponse.struct_class = Types::UpdateAddonResponse

    UpdateClusterConfigRequest.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "name"))
    UpdateClusterConfigRequest.add_member(:resources_vpc_config, Shapes::ShapeRef.new(shape: VpcConfigRequest, location_name: "resourcesVpcConfig"))
    UpdateClusterConfigRequest.add_member(:logging, Shapes::ShapeRef.new(shape: Logging, location_name: "logging"))
    UpdateClusterConfigRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: String, location_name: "clientRequestToken", metadata: {"idempotencyToken"=>true}))
    UpdateClusterConfigRequest.struct_class = Types::UpdateClusterConfigRequest

    UpdateClusterConfigResponse.add_member(:update, Shapes::ShapeRef.new(shape: Update, location_name: "update"))
    UpdateClusterConfigResponse.struct_class = Types::UpdateClusterConfigResponse

    UpdateClusterVersionRequest.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "name"))
    UpdateClusterVersionRequest.add_member(:version, Shapes::ShapeRef.new(shape: String, required: true, location_name: "version"))
    UpdateClusterVersionRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: String, location_name: "clientRequestToken", metadata: {"idempotencyToken"=>true}))
    UpdateClusterVersionRequest.struct_class = Types::UpdateClusterVersionRequest

    UpdateClusterVersionResponse.add_member(:update, Shapes::ShapeRef.new(shape: Update, location_name: "update"))
    UpdateClusterVersionResponse.struct_class = Types::UpdateClusterVersionResponse

    UpdateLabelsPayload.add_member(:add_or_update_labels, Shapes::ShapeRef.new(shape: labelsMap, location_name: "addOrUpdateLabels"))
    UpdateLabelsPayload.add_member(:remove_labels, Shapes::ShapeRef.new(shape: labelsKeyList, location_name: "removeLabels"))
    UpdateLabelsPayload.struct_class = Types::UpdateLabelsPayload

    UpdateNodegroupConfigRequest.add_member(:cluster_name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "name"))
    UpdateNodegroupConfigRequest.add_member(:nodegroup_name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "nodegroupName"))
    UpdateNodegroupConfigRequest.add_member(:labels, Shapes::ShapeRef.new(shape: UpdateLabelsPayload, location_name: "labels"))
    UpdateNodegroupConfigRequest.add_member(:taints, Shapes::ShapeRef.new(shape: UpdateTaintsPayload, location_name: "taints"))
    UpdateNodegroupConfigRequest.add_member(:scaling_config, Shapes::ShapeRef.new(shape: NodegroupScalingConfig, location_name: "scalingConfig"))
    UpdateNodegroupConfigRequest.add_member(:update_config, Shapes::ShapeRef.new(shape: NodegroupUpdateConfig, location_name: "updateConfig"))
    UpdateNodegroupConfigRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: String, location_name: "clientRequestToken", metadata: {"idempotencyToken"=>true}))
    UpdateNodegroupConfigRequest.struct_class = Types::UpdateNodegroupConfigRequest

    UpdateNodegroupConfigResponse.add_member(:update, Shapes::ShapeRef.new(shape: Update, location_name: "update"))
    UpdateNodegroupConfigResponse.struct_class = Types::UpdateNodegroupConfigResponse

    UpdateNodegroupVersionRequest.add_member(:cluster_name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "name"))
    UpdateNodegroupVersionRequest.add_member(:nodegroup_name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "nodegroupName"))
    UpdateNodegroupVersionRequest.add_member(:version, Shapes::ShapeRef.new(shape: String, location_name: "version"))
    UpdateNodegroupVersionRequest.add_member(:release_version, Shapes::ShapeRef.new(shape: String, location_name: "releaseVersion"))
    UpdateNodegroupVersionRequest.add_member(:launch_template, Shapes::ShapeRef.new(shape: LaunchTemplateSpecification, location_name: "launchTemplate"))
    UpdateNodegroupVersionRequest.add_member(:force, Shapes::ShapeRef.new(shape: Boolean, location_name: "force"))
    UpdateNodegroupVersionRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: String, location_name: "clientRequestToken", metadata: {"idempotencyToken"=>true}))
    UpdateNodegroupVersionRequest.struct_class = Types::UpdateNodegroupVersionRequest

    UpdateNodegroupVersionResponse.add_member(:update, Shapes::ShapeRef.new(shape: Update, location_name: "update"))
    UpdateNodegroupVersionResponse.struct_class = Types::UpdateNodegroupVersionResponse

    UpdateParam.add_member(:type, Shapes::ShapeRef.new(shape: UpdateParamType, location_name: "type"))
    UpdateParam.add_member(:value, Shapes::ShapeRef.new(shape: String, location_name: "value"))
    UpdateParam.struct_class = Types::UpdateParam

    UpdateParams.member = Shapes::ShapeRef.new(shape: UpdateParam)

    UpdateTaintsPayload.add_member(:add_or_update_taints, Shapes::ShapeRef.new(shape: taintsList, location_name: "addOrUpdateTaints"))
    UpdateTaintsPayload.add_member(:remove_taints, Shapes::ShapeRef.new(shape: taintsList, location_name: "removeTaints"))
    UpdateTaintsPayload.struct_class = Types::UpdateTaintsPayload

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
        "endpointPrefix" => "eks",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceAbbreviation" => "Amazon EKS",
        "serviceFullName" => "Amazon Elastic Kubernetes Service",
        "serviceId" => "EKS",
        "signatureVersion" => "v4",
        "signingName" => "eks",
        "uid" => "eks-2017-11-01",
      }

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
    end

  end
end
