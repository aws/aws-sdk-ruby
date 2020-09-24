# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::EKS
  # @api private
  module ClientApi

    include Seahorse::Model

    AMITypes = Shapes::StringShape.new(name: 'AMITypes')
    AutoScalingGroup = Shapes::StructureShape.new(name: 'AutoScalingGroup')
    AutoScalingGroupList = Shapes::ListShape.new(name: 'AutoScalingGroupList')
    BadRequestException = Shapes::StructureShape.new(name: 'BadRequestException')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    BoxedBoolean = Shapes::BooleanShape.new(name: 'BoxedBoolean')
    BoxedInteger = Shapes::IntegerShape.new(name: 'BoxedInteger')
    Capacity = Shapes::IntegerShape.new(name: 'Capacity')
    Certificate = Shapes::StructureShape.new(name: 'Certificate')
    ClientException = Shapes::StructureShape.new(name: 'ClientException')
    Cluster = Shapes::StructureShape.new(name: 'Cluster')
    ClusterName = Shapes::StringShape.new(name: 'ClusterName')
    ClusterStatus = Shapes::StringShape.new(name: 'ClusterStatus')
    CreateClusterRequest = Shapes::StructureShape.new(name: 'CreateClusterRequest')
    CreateClusterResponse = Shapes::StructureShape.new(name: 'CreateClusterResponse')
    CreateFargateProfileRequest = Shapes::StructureShape.new(name: 'CreateFargateProfileRequest')
    CreateFargateProfileResponse = Shapes::StructureShape.new(name: 'CreateFargateProfileResponse')
    CreateNodegroupRequest = Shapes::StructureShape.new(name: 'CreateNodegroupRequest')
    CreateNodegroupResponse = Shapes::StructureShape.new(name: 'CreateNodegroupResponse')
    DeleteClusterRequest = Shapes::StructureShape.new(name: 'DeleteClusterRequest')
    DeleteClusterResponse = Shapes::StructureShape.new(name: 'DeleteClusterResponse')
    DeleteFargateProfileRequest = Shapes::StructureShape.new(name: 'DeleteFargateProfileRequest')
    DeleteFargateProfileResponse = Shapes::StructureShape.new(name: 'DeleteFargateProfileResponse')
    DeleteNodegroupRequest = Shapes::StructureShape.new(name: 'DeleteNodegroupRequest')
    DeleteNodegroupResponse = Shapes::StructureShape.new(name: 'DeleteNodegroupResponse')
    DescribeClusterRequest = Shapes::StructureShape.new(name: 'DescribeClusterRequest')
    DescribeClusterResponse = Shapes::StructureShape.new(name: 'DescribeClusterResponse')
    DescribeFargateProfileRequest = Shapes::StructureShape.new(name: 'DescribeFargateProfileRequest')
    DescribeFargateProfileResponse = Shapes::StructureShape.new(name: 'DescribeFargateProfileResponse')
    DescribeNodegroupRequest = Shapes::StructureShape.new(name: 'DescribeNodegroupRequest')
    DescribeNodegroupResponse = Shapes::StructureShape.new(name: 'DescribeNodegroupResponse')
    DescribeUpdateRequest = Shapes::StructureShape.new(name: 'DescribeUpdateRequest')
    DescribeUpdateResponse = Shapes::StructureShape.new(name: 'DescribeUpdateResponse')
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
    InvalidParameterException = Shapes::StructureShape.new(name: 'InvalidParameterException')
    InvalidRequestException = Shapes::StructureShape.new(name: 'InvalidRequestException')
    Issue = Shapes::StructureShape.new(name: 'Issue')
    IssueList = Shapes::ListShape.new(name: 'IssueList')
    KubernetesNetworkConfigRequest = Shapes::StructureShape.new(name: 'KubernetesNetworkConfigRequest')
    KubernetesNetworkConfigResponse = Shapes::StructureShape.new(name: 'KubernetesNetworkConfigResponse')
    LaunchTemplateSpecification = Shapes::StructureShape.new(name: 'LaunchTemplateSpecification')
    ListClustersRequest = Shapes::StructureShape.new(name: 'ListClustersRequest')
    ListClustersRequestMaxResults = Shapes::IntegerShape.new(name: 'ListClustersRequestMaxResults')
    ListClustersResponse = Shapes::StructureShape.new(name: 'ListClustersResponse')
    ListFargateProfilesRequest = Shapes::StructureShape.new(name: 'ListFargateProfilesRequest')
    ListFargateProfilesResponse = Shapes::StructureShape.new(name: 'ListFargateProfilesResponse')
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
    Nodegroup = Shapes::StructureShape.new(name: 'Nodegroup')
    NodegroupHealth = Shapes::StructureShape.new(name: 'NodegroupHealth')
    NodegroupIssueCode = Shapes::StringShape.new(name: 'NodegroupIssueCode')
    NodegroupResources = Shapes::StructureShape.new(name: 'NodegroupResources')
    NodegroupScalingConfig = Shapes::StructureShape.new(name: 'NodegroupScalingConfig')
    NodegroupStatus = Shapes::StringShape.new(name: 'NodegroupStatus')
    NotFoundException = Shapes::StructureShape.new(name: 'NotFoundException')
    OIDC = Shapes::StructureShape.new(name: 'OIDC')
    Provider = Shapes::StructureShape.new(name: 'Provider')
    RemoteAccessConfig = Shapes::StructureShape.new(name: 'RemoteAccessConfig')
    ResourceInUseException = Shapes::StructureShape.new(name: 'ResourceInUseException')
    ResourceLimitExceededException = Shapes::StructureShape.new(name: 'ResourceLimitExceededException')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
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
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    UnsupportedAvailabilityZoneException = Shapes::StructureShape.new(name: 'UnsupportedAvailabilityZoneException')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    Update = Shapes::StructureShape.new(name: 'Update')
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
    UpdateType = Shapes::StringShape.new(name: 'UpdateType')
    VpcConfigRequest = Shapes::StructureShape.new(name: 'VpcConfigRequest')
    VpcConfigResponse = Shapes::StructureShape.new(name: 'VpcConfigResponse')
    labelKey = Shapes::StringShape.new(name: 'labelKey')
    labelValue = Shapes::StringShape.new(name: 'labelValue')
    labelsKeyList = Shapes::ListShape.new(name: 'labelsKeyList')
    labelsMap = Shapes::MapShape.new(name: 'labelsMap')

    AutoScalingGroup.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    AutoScalingGroup.struct_class = Types::AutoScalingGroup

    AutoScalingGroupList.member = Shapes::ShapeRef.new(shape: AutoScalingGroup)

    BadRequestException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    BadRequestException.struct_class = Types::BadRequestException

    Certificate.add_member(:data, Shapes::ShapeRef.new(shape: String, location_name: "data"))
    Certificate.struct_class = Types::Certificate

    ClientException.add_member(:cluster_name, Shapes::ShapeRef.new(shape: String, location_name: "clusterName"))
    ClientException.add_member(:nodegroup_name, Shapes::ShapeRef.new(shape: String, location_name: "nodegroupName"))
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
    Cluster.struct_class = Types::Cluster

    CreateClusterRequest.add_member(:name, Shapes::ShapeRef.new(shape: ClusterName, required: true, location_name: "name"))
    CreateClusterRequest.add_member(:version, Shapes::ShapeRef.new(shape: String, location_name: "version"))
    CreateClusterRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "roleArn"))
    CreateClusterRequest.add_member(:resources_vpc_config, Shapes::ShapeRef.new(shape: VpcConfigRequest, required: true, location_name: "resourcesVpcConfig"))
    CreateClusterRequest.add_member(:kubernetes_network_config, Shapes::ShapeRef.new(shape: KubernetesNetworkConfigRequest, location_name: "kubernetesNetworkConfig"))
    CreateClusterRequest.add_member(:logging, Shapes::ShapeRef.new(shape: Logging, location_name: "logging"))
    CreateClusterRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: String, location_name: "clientRequestToken", metadata: {"idempotencyToken"=>true}))
    CreateClusterRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateClusterRequest.add_member(:encryption_config, Shapes::ShapeRef.new(shape: EncryptionConfigList, location_name: "encryptionConfig"))
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
    CreateNodegroupRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateNodegroupRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: String, location_name: "clientRequestToken", metadata: {"idempotencyToken"=>true}))
    CreateNodegroupRequest.add_member(:launch_template, Shapes::ShapeRef.new(shape: LaunchTemplateSpecification, location_name: "launchTemplate"))
    CreateNodegroupRequest.add_member(:version, Shapes::ShapeRef.new(shape: String, location_name: "version"))
    CreateNodegroupRequest.add_member(:release_version, Shapes::ShapeRef.new(shape: String, location_name: "releaseVersion"))
    CreateNodegroupRequest.struct_class = Types::CreateNodegroupRequest

    CreateNodegroupResponse.add_member(:nodegroup, Shapes::ShapeRef.new(shape: Nodegroup, location_name: "nodegroup"))
    CreateNodegroupResponse.struct_class = Types::CreateNodegroupResponse

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

    DescribeClusterRequest.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "name"))
    DescribeClusterRequest.struct_class = Types::DescribeClusterRequest

    DescribeClusterResponse.add_member(:cluster, Shapes::ShapeRef.new(shape: Cluster, location_name: "cluster"))
    DescribeClusterResponse.struct_class = Types::DescribeClusterResponse

    DescribeFargateProfileRequest.add_member(:cluster_name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "name"))
    DescribeFargateProfileRequest.add_member(:fargate_profile_name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "fargateProfileName"))
    DescribeFargateProfileRequest.struct_class = Types::DescribeFargateProfileRequest

    DescribeFargateProfileResponse.add_member(:fargate_profile, Shapes::ShapeRef.new(shape: FargateProfile, location_name: "fargateProfile"))
    DescribeFargateProfileResponse.struct_class = Types::DescribeFargateProfileResponse

    DescribeNodegroupRequest.add_member(:cluster_name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "name"))
    DescribeNodegroupRequest.add_member(:nodegroup_name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "nodegroupName"))
    DescribeNodegroupRequest.struct_class = Types::DescribeNodegroupRequest

    DescribeNodegroupResponse.add_member(:nodegroup, Shapes::ShapeRef.new(shape: Nodegroup, location_name: "nodegroup"))
    DescribeNodegroupResponse.struct_class = Types::DescribeNodegroupResponse

    DescribeUpdateRequest.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "name"))
    DescribeUpdateRequest.add_member(:update_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "updateId"))
    DescribeUpdateRequest.add_member(:nodegroup_name, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nodegroupName"))
    DescribeUpdateRequest.struct_class = Types::DescribeUpdateRequest

    DescribeUpdateResponse.add_member(:update, Shapes::ShapeRef.new(shape: Update, location_name: "update"))
    DescribeUpdateResponse.struct_class = Types::DescribeUpdateResponse

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

    InvalidParameterException.add_member(:cluster_name, Shapes::ShapeRef.new(shape: String, location_name: "clusterName"))
    InvalidParameterException.add_member(:nodegroup_name, Shapes::ShapeRef.new(shape: String, location_name: "nodegroupName"))
    InvalidParameterException.add_member(:fargate_profile_name, Shapes::ShapeRef.new(shape: String, location_name: "fargateProfileName"))
    InvalidParameterException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    InvalidParameterException.struct_class = Types::InvalidParameterException

    InvalidRequestException.add_member(:cluster_name, Shapes::ShapeRef.new(shape: String, location_name: "clusterName"))
    InvalidRequestException.add_member(:nodegroup_name, Shapes::ShapeRef.new(shape: String, location_name: "nodegroupName"))
    InvalidRequestException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    InvalidRequestException.struct_class = Types::InvalidRequestException

    Issue.add_member(:code, Shapes::ShapeRef.new(shape: NodegroupIssueCode, location_name: "code"))
    Issue.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    Issue.add_member(:resource_ids, Shapes::ShapeRef.new(shape: StringList, location_name: "resourceIds"))
    Issue.struct_class = Types::Issue

    IssueList.member = Shapes::ShapeRef.new(shape: Issue)

    KubernetesNetworkConfigRequest.add_member(:service_ipv_4_cidr, Shapes::ShapeRef.new(shape: String, location_name: "serviceIpv4Cidr"))
    KubernetesNetworkConfigRequest.struct_class = Types::KubernetesNetworkConfigRequest

    KubernetesNetworkConfigResponse.add_member(:service_ipv_4_cidr, Shapes::ShapeRef.new(shape: String, location_name: "serviceIpv4Cidr"))
    KubernetesNetworkConfigResponse.struct_class = Types::KubernetesNetworkConfigResponse

    LaunchTemplateSpecification.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    LaunchTemplateSpecification.add_member(:version, Shapes::ShapeRef.new(shape: String, location_name: "version"))
    LaunchTemplateSpecification.add_member(:id, Shapes::ShapeRef.new(shape: String, location_name: "id"))
    LaunchTemplateSpecification.struct_class = Types::LaunchTemplateSpecification

    ListClustersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListClustersRequestMaxResults, location: "querystring", location_name: "maxResults"))
    ListClustersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
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

    Nodegroup.add_member(:nodegroup_name, Shapes::ShapeRef.new(shape: String, location_name: "nodegroupName"))
    Nodegroup.add_member(:nodegroup_arn, Shapes::ShapeRef.new(shape: String, location_name: "nodegroupArn"))
    Nodegroup.add_member(:cluster_name, Shapes::ShapeRef.new(shape: String, location_name: "clusterName"))
    Nodegroup.add_member(:version, Shapes::ShapeRef.new(shape: String, location_name: "version"))
    Nodegroup.add_member(:release_version, Shapes::ShapeRef.new(shape: String, location_name: "releaseVersion"))
    Nodegroup.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    Nodegroup.add_member(:modified_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "modifiedAt"))
    Nodegroup.add_member(:status, Shapes::ShapeRef.new(shape: NodegroupStatus, location_name: "status"))
    Nodegroup.add_member(:scaling_config, Shapes::ShapeRef.new(shape: NodegroupScalingConfig, location_name: "scalingConfig"))
    Nodegroup.add_member(:instance_types, Shapes::ShapeRef.new(shape: StringList, location_name: "instanceTypes"))
    Nodegroup.add_member(:subnets, Shapes::ShapeRef.new(shape: StringList, location_name: "subnets"))
    Nodegroup.add_member(:remote_access, Shapes::ShapeRef.new(shape: RemoteAccessConfig, location_name: "remoteAccess"))
    Nodegroup.add_member(:ami_type, Shapes::ShapeRef.new(shape: AMITypes, location_name: "amiType"))
    Nodegroup.add_member(:node_role, Shapes::ShapeRef.new(shape: String, location_name: "nodeRole"))
    Nodegroup.add_member(:labels, Shapes::ShapeRef.new(shape: labelsMap, location_name: "labels"))
    Nodegroup.add_member(:resources, Shapes::ShapeRef.new(shape: NodegroupResources, location_name: "resources"))
    Nodegroup.add_member(:disk_size, Shapes::ShapeRef.new(shape: BoxedInteger, location_name: "diskSize"))
    Nodegroup.add_member(:health, Shapes::ShapeRef.new(shape: NodegroupHealth, location_name: "health"))
    Nodegroup.add_member(:launch_template, Shapes::ShapeRef.new(shape: LaunchTemplateSpecification, location_name: "launchTemplate"))
    Nodegroup.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    Nodegroup.struct_class = Types::Nodegroup

    NodegroupHealth.add_member(:issues, Shapes::ShapeRef.new(shape: IssueList, location_name: "issues"))
    NodegroupHealth.struct_class = Types::NodegroupHealth

    NodegroupResources.add_member(:auto_scaling_groups, Shapes::ShapeRef.new(shape: AutoScalingGroupList, location_name: "autoScalingGroups"))
    NodegroupResources.add_member(:remote_access_security_group, Shapes::ShapeRef.new(shape: String, location_name: "remoteAccessSecurityGroup"))
    NodegroupResources.struct_class = Types::NodegroupResources

    NodegroupScalingConfig.add_member(:min_size, Shapes::ShapeRef.new(shape: Capacity, location_name: "minSize"))
    NodegroupScalingConfig.add_member(:max_size, Shapes::ShapeRef.new(shape: Capacity, location_name: "maxSize"))
    NodegroupScalingConfig.add_member(:desired_size, Shapes::ShapeRef.new(shape: Capacity, location_name: "desiredSize"))
    NodegroupScalingConfig.struct_class = Types::NodegroupScalingConfig

    NotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    NotFoundException.struct_class = Types::NotFoundException

    OIDC.add_member(:issuer, Shapes::ShapeRef.new(shape: String, location_name: "issuer"))
    OIDC.struct_class = Types::OIDC

    Provider.add_member(:key_arn, Shapes::ShapeRef.new(shape: String, location_name: "keyArn"))
    Provider.struct_class = Types::Provider

    RemoteAccessConfig.add_member(:ec2_ssh_key, Shapes::ShapeRef.new(shape: String, location_name: "ec2SshKey"))
    RemoteAccessConfig.add_member(:source_security_groups, Shapes::ShapeRef.new(shape: StringList, location_name: "sourceSecurityGroups"))
    RemoteAccessConfig.struct_class = Types::RemoteAccessConfig

    ResourceInUseException.add_member(:cluster_name, Shapes::ShapeRef.new(shape: String, location_name: "clusterName"))
    ResourceInUseException.add_member(:nodegroup_name, Shapes::ShapeRef.new(shape: String, location_name: "nodegroupName"))
    ResourceInUseException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ResourceInUseException.struct_class = Types::ResourceInUseException

    ResourceLimitExceededException.add_member(:cluster_name, Shapes::ShapeRef.new(shape: String, location_name: "clusterName"))
    ResourceLimitExceededException.add_member(:nodegroup_name, Shapes::ShapeRef.new(shape: String, location_name: "nodegroupName"))
    ResourceLimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ResourceLimitExceededException.struct_class = Types::ResourceLimitExceededException

    ResourceNotFoundException.add_member(:cluster_name, Shapes::ShapeRef.new(shape: String, location_name: "clusterName"))
    ResourceNotFoundException.add_member(:nodegroup_name, Shapes::ShapeRef.new(shape: String, location_name: "nodegroupName"))
    ResourceNotFoundException.add_member(:fargate_profile_name, Shapes::ShapeRef.new(shape: String, location_name: "fargateProfileName"))
    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ServerException.add_member(:cluster_name, Shapes::ShapeRef.new(shape: String, location_name: "clusterName"))
    ServerException.add_member(:nodegroup_name, Shapes::ShapeRef.new(shape: String, location_name: "nodegroupName"))
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
    UpdateNodegroupConfigRequest.add_member(:scaling_config, Shapes::ShapeRef.new(shape: NodegroupScalingConfig, location_name: "scalingConfig"))
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
