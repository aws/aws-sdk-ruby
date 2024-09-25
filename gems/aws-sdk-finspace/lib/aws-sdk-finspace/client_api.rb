# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::Finspace
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AttachedClusterList = Shapes::ListShape.new(name: 'AttachedClusterList')
    AttributeMap = Shapes::MapShape.new(name: 'AttributeMap')
    AutoScalingConfiguration = Shapes::StructureShape.new(name: 'AutoScalingConfiguration')
    AutoScalingMetric = Shapes::StringShape.new(name: 'AutoScalingMetric')
    AutoScalingMetricTarget = Shapes::FloatShape.new(name: 'AutoScalingMetricTarget')
    AvailabilityZoneId = Shapes::StringShape.new(name: 'AvailabilityZoneId')
    AvailabilityZoneIds = Shapes::ListShape.new(name: 'AvailabilityZoneIds')
    BoxedInteger = Shapes::IntegerShape.new(name: 'BoxedInteger')
    CapacityConfiguration = Shapes::StructureShape.new(name: 'CapacityConfiguration')
    ChangeRequest = Shapes::StructureShape.new(name: 'ChangeRequest')
    ChangeRequests = Shapes::ListShape.new(name: 'ChangeRequests')
    ChangeType = Shapes::StringShape.new(name: 'ChangeType')
    ChangesetId = Shapes::StringShape.new(name: 'ChangesetId')
    ChangesetStatus = Shapes::StringShape.new(name: 'ChangesetStatus')
    ClientToken = Shapes::StringShape.new(name: 'ClientToken')
    ClientTokenString = Shapes::StringShape.new(name: 'ClientTokenString')
    ClusterNodeCount = Shapes::IntegerShape.new(name: 'ClusterNodeCount')
    CodeConfiguration = Shapes::StructureShape.new(name: 'CodeConfiguration')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CooldownTime = Shapes::FloatShape.new(name: 'CooldownTime')
    CpuCount = Shapes::FloatShape.new(name: 'CpuCount')
    CreateEnvironmentRequest = Shapes::StructureShape.new(name: 'CreateEnvironmentRequest')
    CreateEnvironmentResponse = Shapes::StructureShape.new(name: 'CreateEnvironmentResponse')
    CreateKxChangesetRequest = Shapes::StructureShape.new(name: 'CreateKxChangesetRequest')
    CreateKxChangesetResponse = Shapes::StructureShape.new(name: 'CreateKxChangesetResponse')
    CreateKxClusterRequest = Shapes::StructureShape.new(name: 'CreateKxClusterRequest')
    CreateKxClusterResponse = Shapes::StructureShape.new(name: 'CreateKxClusterResponse')
    CreateKxDatabaseRequest = Shapes::StructureShape.new(name: 'CreateKxDatabaseRequest')
    CreateKxDatabaseResponse = Shapes::StructureShape.new(name: 'CreateKxDatabaseResponse')
    CreateKxDataviewRequest = Shapes::StructureShape.new(name: 'CreateKxDataviewRequest')
    CreateKxDataviewResponse = Shapes::StructureShape.new(name: 'CreateKxDataviewResponse')
    CreateKxEnvironmentRequest = Shapes::StructureShape.new(name: 'CreateKxEnvironmentRequest')
    CreateKxEnvironmentResponse = Shapes::StructureShape.new(name: 'CreateKxEnvironmentResponse')
    CreateKxScalingGroupRequest = Shapes::StructureShape.new(name: 'CreateKxScalingGroupRequest')
    CreateKxScalingGroupResponse = Shapes::StructureShape.new(name: 'CreateKxScalingGroupResponse')
    CreateKxUserRequest = Shapes::StructureShape.new(name: 'CreateKxUserRequest')
    CreateKxUserResponse = Shapes::StructureShape.new(name: 'CreateKxUserResponse')
    CreateKxVolumeRequest = Shapes::StructureShape.new(name: 'CreateKxVolumeRequest')
    CreateKxVolumeResponse = Shapes::StructureShape.new(name: 'CreateKxVolumeResponse')
    CustomDNSConfiguration = Shapes::ListShape.new(name: 'CustomDNSConfiguration')
    CustomDNSServer = Shapes::StructureShape.new(name: 'CustomDNSServer')
    DataBundleArn = Shapes::StringShape.new(name: 'DataBundleArn')
    DataBundleArns = Shapes::ListShape.new(name: 'DataBundleArns')
    DatabaseArn = Shapes::StringShape.new(name: 'DatabaseArn')
    DatabaseName = Shapes::StringShape.new(name: 'DatabaseName')
    DbPath = Shapes::StringShape.new(name: 'DbPath')
    DbPaths = Shapes::ListShape.new(name: 'DbPaths')
    DeleteEnvironmentRequest = Shapes::StructureShape.new(name: 'DeleteEnvironmentRequest')
    DeleteEnvironmentResponse = Shapes::StructureShape.new(name: 'DeleteEnvironmentResponse')
    DeleteKxClusterNodeRequest = Shapes::StructureShape.new(name: 'DeleteKxClusterNodeRequest')
    DeleteKxClusterNodeResponse = Shapes::StructureShape.new(name: 'DeleteKxClusterNodeResponse')
    DeleteKxClusterRequest = Shapes::StructureShape.new(name: 'DeleteKxClusterRequest')
    DeleteKxClusterResponse = Shapes::StructureShape.new(name: 'DeleteKxClusterResponse')
    DeleteKxDatabaseRequest = Shapes::StructureShape.new(name: 'DeleteKxDatabaseRequest')
    DeleteKxDatabaseResponse = Shapes::StructureShape.new(name: 'DeleteKxDatabaseResponse')
    DeleteKxDataviewRequest = Shapes::StructureShape.new(name: 'DeleteKxDataviewRequest')
    DeleteKxDataviewResponse = Shapes::StructureShape.new(name: 'DeleteKxDataviewResponse')
    DeleteKxEnvironmentRequest = Shapes::StructureShape.new(name: 'DeleteKxEnvironmentRequest')
    DeleteKxEnvironmentResponse = Shapes::StructureShape.new(name: 'DeleteKxEnvironmentResponse')
    DeleteKxScalingGroupRequest = Shapes::StructureShape.new(name: 'DeleteKxScalingGroupRequest')
    DeleteKxScalingGroupResponse = Shapes::StructureShape.new(name: 'DeleteKxScalingGroupResponse')
    DeleteKxUserRequest = Shapes::StructureShape.new(name: 'DeleteKxUserRequest')
    DeleteKxUserResponse = Shapes::StructureShape.new(name: 'DeleteKxUserResponse')
    DeleteKxVolumeRequest = Shapes::StructureShape.new(name: 'DeleteKxVolumeRequest')
    DeleteKxVolumeResponse = Shapes::StructureShape.new(name: 'DeleteKxVolumeResponse')
    Description = Shapes::StringShape.new(name: 'Description')
    EmailId = Shapes::StringShape.new(name: 'EmailId')
    Environment = Shapes::StructureShape.new(name: 'Environment')
    EnvironmentArn = Shapes::StringShape.new(name: 'EnvironmentArn')
    EnvironmentErrorMessage = Shapes::StringShape.new(name: 'EnvironmentErrorMessage')
    EnvironmentId = Shapes::StringShape.new(name: 'EnvironmentId')
    EnvironmentList = Shapes::ListShape.new(name: 'EnvironmentList')
    EnvironmentName = Shapes::StringShape.new(name: 'EnvironmentName')
    EnvironmentStatus = Shapes::StringShape.new(name: 'EnvironmentStatus')
    ErrorDetails = Shapes::StringShape.new(name: 'ErrorDetails')
    ErrorInfo = Shapes::StructureShape.new(name: 'ErrorInfo')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    ExecutionRoleArn = Shapes::StringShape.new(name: 'ExecutionRoleArn')
    FederationAttributeKey = Shapes::StringShape.new(name: 'FederationAttributeKey')
    FederationAttributeValue = Shapes::StringShape.new(name: 'FederationAttributeValue')
    FederationMode = Shapes::StringShape.new(name: 'FederationMode')
    FederationParameters = Shapes::StructureShape.new(name: 'FederationParameters')
    FederationProviderName = Shapes::StringShape.new(name: 'FederationProviderName')
    FinSpaceTaggableArn = Shapes::StringShape.new(name: 'FinSpaceTaggableArn')
    GetEnvironmentRequest = Shapes::StructureShape.new(name: 'GetEnvironmentRequest')
    GetEnvironmentResponse = Shapes::StructureShape.new(name: 'GetEnvironmentResponse')
    GetKxChangesetRequest = Shapes::StructureShape.new(name: 'GetKxChangesetRequest')
    GetKxChangesetResponse = Shapes::StructureShape.new(name: 'GetKxChangesetResponse')
    GetKxClusterRequest = Shapes::StructureShape.new(name: 'GetKxClusterRequest')
    GetKxClusterResponse = Shapes::StructureShape.new(name: 'GetKxClusterResponse')
    GetKxConnectionStringRequest = Shapes::StructureShape.new(name: 'GetKxConnectionStringRequest')
    GetKxConnectionStringResponse = Shapes::StructureShape.new(name: 'GetKxConnectionStringResponse')
    GetKxDatabaseRequest = Shapes::StructureShape.new(name: 'GetKxDatabaseRequest')
    GetKxDatabaseResponse = Shapes::StructureShape.new(name: 'GetKxDatabaseResponse')
    GetKxDataviewRequest = Shapes::StructureShape.new(name: 'GetKxDataviewRequest')
    GetKxDataviewResponse = Shapes::StructureShape.new(name: 'GetKxDataviewResponse')
    GetKxEnvironmentRequest = Shapes::StructureShape.new(name: 'GetKxEnvironmentRequest')
    GetKxEnvironmentResponse = Shapes::StructureShape.new(name: 'GetKxEnvironmentResponse')
    GetKxScalingGroupRequest = Shapes::StructureShape.new(name: 'GetKxScalingGroupRequest')
    GetKxScalingGroupResponse = Shapes::StructureShape.new(name: 'GetKxScalingGroupResponse')
    GetKxUserRequest = Shapes::StructureShape.new(name: 'GetKxUserRequest')
    GetKxUserResponse = Shapes::StructureShape.new(name: 'GetKxUserResponse')
    GetKxVolumeRequest = Shapes::StructureShape.new(name: 'GetKxVolumeRequest')
    GetKxVolumeResponse = Shapes::StructureShape.new(name: 'GetKxVolumeResponse')
    IPAddressType = Shapes::StringShape.new(name: 'IPAddressType')
    IcmpTypeCode = Shapes::StructureShape.new(name: 'IcmpTypeCode')
    IcmpTypeOrCode = Shapes::IntegerShape.new(name: 'IcmpTypeOrCode')
    IdType = Shapes::StringShape.new(name: 'IdType')
    InitializationScriptFilePath = Shapes::StringShape.new(name: 'InitializationScriptFilePath')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    InvalidRequestException = Shapes::StructureShape.new(name: 'InvalidRequestException')
    KmsKeyARN = Shapes::StringShape.new(name: 'KmsKeyARN')
    KmsKeyId = Shapes::StringShape.new(name: 'KmsKeyId')
    KxAttachedCluster = Shapes::StructureShape.new(name: 'KxAttachedCluster')
    KxAttachedClusters = Shapes::ListShape.new(name: 'KxAttachedClusters')
    KxAzMode = Shapes::StringShape.new(name: 'KxAzMode')
    KxCacheStorageConfiguration = Shapes::StructureShape.new(name: 'KxCacheStorageConfiguration')
    KxCacheStorageConfigurations = Shapes::ListShape.new(name: 'KxCacheStorageConfigurations')
    KxCacheStorageSize = Shapes::IntegerShape.new(name: 'KxCacheStorageSize')
    KxCacheStorageType = Shapes::StringShape.new(name: 'KxCacheStorageType')
    KxChangesetListEntry = Shapes::StructureShape.new(name: 'KxChangesetListEntry')
    KxChangesets = Shapes::ListShape.new(name: 'KxChangesets')
    KxCluster = Shapes::StructureShape.new(name: 'KxCluster')
    KxClusterCodeDeploymentConfiguration = Shapes::StructureShape.new(name: 'KxClusterCodeDeploymentConfiguration')
    KxClusterCodeDeploymentStrategy = Shapes::StringShape.new(name: 'KxClusterCodeDeploymentStrategy')
    KxClusterDescription = Shapes::StringShape.new(name: 'KxClusterDescription')
    KxClusterName = Shapes::StringShape.new(name: 'KxClusterName')
    KxClusterNameList = Shapes::ListShape.new(name: 'KxClusterNameList')
    KxClusterNodeIdString = Shapes::StringShape.new(name: 'KxClusterNodeIdString')
    KxClusterStatus = Shapes::StringShape.new(name: 'KxClusterStatus')
    KxClusterStatusReason = Shapes::StringShape.new(name: 'KxClusterStatusReason')
    KxClusterType = Shapes::StringShape.new(name: 'KxClusterType')
    KxClusters = Shapes::ListShape.new(name: 'KxClusters')
    KxCommandLineArgument = Shapes::StructureShape.new(name: 'KxCommandLineArgument')
    KxCommandLineArgumentKey = Shapes::StringShape.new(name: 'KxCommandLineArgumentKey')
    KxCommandLineArgumentValue = Shapes::StringShape.new(name: 'KxCommandLineArgumentValue')
    KxCommandLineArguments = Shapes::ListShape.new(name: 'KxCommandLineArguments')
    KxDatabaseCacheConfiguration = Shapes::StructureShape.new(name: 'KxDatabaseCacheConfiguration')
    KxDatabaseCacheConfigurations = Shapes::ListShape.new(name: 'KxDatabaseCacheConfigurations')
    KxDatabaseConfiguration = Shapes::StructureShape.new(name: 'KxDatabaseConfiguration')
    KxDatabaseConfigurations = Shapes::ListShape.new(name: 'KxDatabaseConfigurations')
    KxDatabaseListEntry = Shapes::StructureShape.new(name: 'KxDatabaseListEntry')
    KxDatabases = Shapes::ListShape.new(name: 'KxDatabases')
    KxDataviewActiveVersion = Shapes::StructureShape.new(name: 'KxDataviewActiveVersion')
    KxDataviewActiveVersionList = Shapes::ListShape.new(name: 'KxDataviewActiveVersionList')
    KxDataviewConfiguration = Shapes::StructureShape.new(name: 'KxDataviewConfiguration')
    KxDataviewListEntry = Shapes::StructureShape.new(name: 'KxDataviewListEntry')
    KxDataviewName = Shapes::StringShape.new(name: 'KxDataviewName')
    KxDataviewSegmentConfiguration = Shapes::StructureShape.new(name: 'KxDataviewSegmentConfiguration')
    KxDataviewSegmentConfigurationList = Shapes::ListShape.new(name: 'KxDataviewSegmentConfigurationList')
    KxDataviewStatus = Shapes::StringShape.new(name: 'KxDataviewStatus')
    KxDataviewStatusReason = Shapes::StringShape.new(name: 'KxDataviewStatusReason')
    KxDataviews = Shapes::ListShape.new(name: 'KxDataviews')
    KxDeploymentConfiguration = Shapes::StructureShape.new(name: 'KxDeploymentConfiguration')
    KxDeploymentStrategy = Shapes::StringShape.new(name: 'KxDeploymentStrategy')
    KxEnvironment = Shapes::StructureShape.new(name: 'KxEnvironment')
    KxEnvironmentId = Shapes::StringShape.new(name: 'KxEnvironmentId')
    KxEnvironmentList = Shapes::ListShape.new(name: 'KxEnvironmentList')
    KxEnvironmentName = Shapes::StringShape.new(name: 'KxEnvironmentName')
    KxHostType = Shapes::StringShape.new(name: 'KxHostType')
    KxNAS1Configuration = Shapes::StructureShape.new(name: 'KxNAS1Configuration')
    KxNAS1Size = Shapes::IntegerShape.new(name: 'KxNAS1Size')
    KxNAS1Type = Shapes::StringShape.new(name: 'KxNAS1Type')
    KxNode = Shapes::StructureShape.new(name: 'KxNode')
    KxNodeStatus = Shapes::StringShape.new(name: 'KxNodeStatus')
    KxNodeSummaries = Shapes::ListShape.new(name: 'KxNodeSummaries')
    KxSavedownStorageConfiguration = Shapes::StructureShape.new(name: 'KxSavedownStorageConfiguration')
    KxSavedownStorageSize = Shapes::IntegerShape.new(name: 'KxSavedownStorageSize')
    KxSavedownStorageType = Shapes::StringShape.new(name: 'KxSavedownStorageType')
    KxScalingGroup = Shapes::StructureShape.new(name: 'KxScalingGroup')
    KxScalingGroupConfiguration = Shapes::StructureShape.new(name: 'KxScalingGroupConfiguration')
    KxScalingGroupList = Shapes::ListShape.new(name: 'KxScalingGroupList')
    KxScalingGroupName = Shapes::StringShape.new(name: 'KxScalingGroupName')
    KxScalingGroupStatus = Shapes::StringShape.new(name: 'KxScalingGroupStatus')
    KxUser = Shapes::StructureShape.new(name: 'KxUser')
    KxUserArn = Shapes::StringShape.new(name: 'KxUserArn')
    KxUserList = Shapes::ListShape.new(name: 'KxUserList')
    KxUserNameString = Shapes::StringShape.new(name: 'KxUserNameString')
    KxVolume = Shapes::StructureShape.new(name: 'KxVolume')
    KxVolumeArn = Shapes::StringShape.new(name: 'KxVolumeArn')
    KxVolumeName = Shapes::StringShape.new(name: 'KxVolumeName')
    KxVolumeStatus = Shapes::StringShape.new(name: 'KxVolumeStatus')
    KxVolumeStatusReason = Shapes::StringShape.new(name: 'KxVolumeStatusReason')
    KxVolumeType = Shapes::StringShape.new(name: 'KxVolumeType')
    KxVolumes = Shapes::ListShape.new(name: 'KxVolumes')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    ListEnvironmentsRequest = Shapes::StructureShape.new(name: 'ListEnvironmentsRequest')
    ListEnvironmentsResponse = Shapes::StructureShape.new(name: 'ListEnvironmentsResponse')
    ListKxChangesetsRequest = Shapes::StructureShape.new(name: 'ListKxChangesetsRequest')
    ListKxChangesetsResponse = Shapes::StructureShape.new(name: 'ListKxChangesetsResponse')
    ListKxClusterNodesRequest = Shapes::StructureShape.new(name: 'ListKxClusterNodesRequest')
    ListKxClusterNodesResponse = Shapes::StructureShape.new(name: 'ListKxClusterNodesResponse')
    ListKxClustersRequest = Shapes::StructureShape.new(name: 'ListKxClustersRequest')
    ListKxClustersResponse = Shapes::StructureShape.new(name: 'ListKxClustersResponse')
    ListKxDatabasesRequest = Shapes::StructureShape.new(name: 'ListKxDatabasesRequest')
    ListKxDatabasesResponse = Shapes::StructureShape.new(name: 'ListKxDatabasesResponse')
    ListKxDataviewsRequest = Shapes::StructureShape.new(name: 'ListKxDataviewsRequest')
    ListKxDataviewsResponse = Shapes::StructureShape.new(name: 'ListKxDataviewsResponse')
    ListKxEnvironmentsRequest = Shapes::StructureShape.new(name: 'ListKxEnvironmentsRequest')
    ListKxEnvironmentsResponse = Shapes::StructureShape.new(name: 'ListKxEnvironmentsResponse')
    ListKxScalingGroupsRequest = Shapes::StructureShape.new(name: 'ListKxScalingGroupsRequest')
    ListKxScalingGroupsResponse = Shapes::StructureShape.new(name: 'ListKxScalingGroupsResponse')
    ListKxUsersRequest = Shapes::StructureShape.new(name: 'ListKxUsersRequest')
    ListKxUsersResponse = Shapes::StructureShape.new(name: 'ListKxUsersResponse')
    ListKxVolumesRequest = Shapes::StructureShape.new(name: 'ListKxVolumesRequest')
    ListKxVolumesResponse = Shapes::StructureShape.new(name: 'ListKxVolumesResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    MemoryMib = Shapes::IntegerShape.new(name: 'MemoryMib')
    NameString = Shapes::StringShape.new(name: 'NameString')
    NetworkACLConfiguration = Shapes::ListShape.new(name: 'NetworkACLConfiguration')
    NetworkACLEntry = Shapes::StructureShape.new(name: 'NetworkACLEntry')
    NodeCount = Shapes::IntegerShape.new(name: 'NodeCount')
    NodeType = Shapes::StringShape.new(name: 'NodeType')
    PaginationToken = Shapes::StringShape.new(name: 'PaginationToken')
    Port = Shapes::IntegerShape.new(name: 'Port')
    PortRange = Shapes::StructureShape.new(name: 'PortRange')
    Protocol = Shapes::StringShape.new(name: 'Protocol')
    ReleaseLabel = Shapes::StringShape.new(name: 'ReleaseLabel')
    ResourceAlreadyExistsException = Shapes::StructureShape.new(name: 'ResourceAlreadyExistsException')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResultLimit = Shapes::IntegerShape.new(name: 'ResultLimit')
    RoleArn = Shapes::StringShape.new(name: 'RoleArn')
    RuleAction = Shapes::StringShape.new(name: 'RuleAction')
    RuleNumber = Shapes::IntegerShape.new(name: 'RuleNumber')
    S3Bucket = Shapes::StringShape.new(name: 'S3Bucket')
    S3Key = Shapes::StringShape.new(name: 'S3Key')
    S3ObjectVersion = Shapes::StringShape.new(name: 'S3ObjectVersion')
    S3Path = Shapes::StringShape.new(name: 'S3Path')
    SamlMetadataDocument = Shapes::StringShape.new(name: 'SamlMetadataDocument')
    SecurityGroupIdList = Shapes::ListShape.new(name: 'SecurityGroupIdList')
    SecurityGroupIdString = Shapes::StringShape.new(name: 'SecurityGroupIdString')
    SegmentConfigurationDbPathList = Shapes::ListShape.new(name: 'SegmentConfigurationDbPathList')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    SignedKxConnectionString = Shapes::StringShape.new(name: 'SignedKxConnectionString')
    SmsDomainUrl = Shapes::StringShape.new(name: 'SmsDomainUrl')
    SubnetIdList = Shapes::ListShape.new(name: 'SubnetIdList')
    SubnetIdString = Shapes::StringShape.new(name: 'SubnetIdString')
    SuperuserParameters = Shapes::StructureShape.new(name: 'SuperuserParameters')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagMap = Shapes::MapShape.new(name: 'TagMap')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    TickerplantLogConfiguration = Shapes::StructureShape.new(name: 'TickerplantLogConfiguration')
    TickerplantLogVolumes = Shapes::ListShape.new(name: 'TickerplantLogVolumes')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    TransitGatewayConfiguration = Shapes::StructureShape.new(name: 'TransitGatewayConfiguration')
    TransitGatewayID = Shapes::StringShape.new(name: 'TransitGatewayID')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateEnvironmentRequest = Shapes::StructureShape.new(name: 'UpdateEnvironmentRequest')
    UpdateEnvironmentResponse = Shapes::StructureShape.new(name: 'UpdateEnvironmentResponse')
    UpdateKxClusterCodeConfigurationRequest = Shapes::StructureShape.new(name: 'UpdateKxClusterCodeConfigurationRequest')
    UpdateKxClusterCodeConfigurationResponse = Shapes::StructureShape.new(name: 'UpdateKxClusterCodeConfigurationResponse')
    UpdateKxClusterDatabasesRequest = Shapes::StructureShape.new(name: 'UpdateKxClusterDatabasesRequest')
    UpdateKxClusterDatabasesResponse = Shapes::StructureShape.new(name: 'UpdateKxClusterDatabasesResponse')
    UpdateKxDatabaseRequest = Shapes::StructureShape.new(name: 'UpdateKxDatabaseRequest')
    UpdateKxDatabaseResponse = Shapes::StructureShape.new(name: 'UpdateKxDatabaseResponse')
    UpdateKxDataviewRequest = Shapes::StructureShape.new(name: 'UpdateKxDataviewRequest')
    UpdateKxDataviewResponse = Shapes::StructureShape.new(name: 'UpdateKxDataviewResponse')
    UpdateKxEnvironmentNetworkRequest = Shapes::StructureShape.new(name: 'UpdateKxEnvironmentNetworkRequest')
    UpdateKxEnvironmentNetworkResponse = Shapes::StructureShape.new(name: 'UpdateKxEnvironmentNetworkResponse')
    UpdateKxEnvironmentRequest = Shapes::StructureShape.new(name: 'UpdateKxEnvironmentRequest')
    UpdateKxEnvironmentResponse = Shapes::StructureShape.new(name: 'UpdateKxEnvironmentResponse')
    UpdateKxUserRequest = Shapes::StructureShape.new(name: 'UpdateKxUserRequest')
    UpdateKxUserResponse = Shapes::StructureShape.new(name: 'UpdateKxUserResponse')
    UpdateKxVolumeRequest = Shapes::StructureShape.new(name: 'UpdateKxVolumeRequest')
    UpdateKxVolumeResponse = Shapes::StructureShape.new(name: 'UpdateKxVolumeResponse')
    ValidCIDRBlock = Shapes::StringShape.new(name: 'ValidCIDRBlock')
    ValidCIDRSpace = Shapes::StringShape.new(name: 'ValidCIDRSpace')
    ValidHostname = Shapes::StringShape.new(name: 'ValidHostname')
    ValidIPAddress = Shapes::StringShape.new(name: 'ValidIPAddress')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    VersionId = Shapes::StringShape.new(name: 'VersionId')
    Volume = Shapes::StructureShape.new(name: 'Volume')
    VolumeName = Shapes::StringShape.new(name: 'VolumeName')
    VolumeType = Shapes::StringShape.new(name: 'VolumeType')
    Volumes = Shapes::ListShape.new(name: 'Volumes')
    VpcConfiguration = Shapes::StructureShape.new(name: 'VpcConfiguration')
    VpcIdString = Shapes::StringShape.new(name: 'VpcIdString')
    arn = Shapes::StringShape.new(name: 'arn')
    booleanValue = Shapes::BooleanShape.new(name: 'booleanValue')
    dnsStatus = Shapes::StringShape.new(name: 'dnsStatus')
    errorMessage = Shapes::StringShape.new(name: 'errorMessage')
    numBytes = Shapes::IntegerShape.new(name: 'numBytes')
    numChangesets = Shapes::IntegerShape.new(name: 'numChangesets')
    numFiles = Shapes::IntegerShape.new(name: 'numFiles')
    stringValueLength1to255 = Shapes::StringShape.new(name: 'stringValueLength1to255')
    tgwStatus = Shapes::StringShape.new(name: 'tgwStatus')
    url = Shapes::StringShape.new(name: 'url')
    urn = Shapes::StringShape.new(name: 'urn')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AttachedClusterList.member = Shapes::ShapeRef.new(shape: KxClusterName)

    AttributeMap.key = Shapes::ShapeRef.new(shape: FederationAttributeKey)
    AttributeMap.value = Shapes::ShapeRef.new(shape: FederationAttributeValue)

    AutoScalingConfiguration.add_member(:min_node_count, Shapes::ShapeRef.new(shape: NodeCount, location_name: "minNodeCount"))
    AutoScalingConfiguration.add_member(:max_node_count, Shapes::ShapeRef.new(shape: NodeCount, location_name: "maxNodeCount"))
    AutoScalingConfiguration.add_member(:auto_scaling_metric, Shapes::ShapeRef.new(shape: AutoScalingMetric, location_name: "autoScalingMetric"))
    AutoScalingConfiguration.add_member(:metric_target, Shapes::ShapeRef.new(shape: AutoScalingMetricTarget, location_name: "metricTarget"))
    AutoScalingConfiguration.add_member(:scale_in_cooldown_seconds, Shapes::ShapeRef.new(shape: CooldownTime, location_name: "scaleInCooldownSeconds"))
    AutoScalingConfiguration.add_member(:scale_out_cooldown_seconds, Shapes::ShapeRef.new(shape: CooldownTime, location_name: "scaleOutCooldownSeconds"))
    AutoScalingConfiguration.struct_class = Types::AutoScalingConfiguration

    AvailabilityZoneIds.member = Shapes::ShapeRef.new(shape: AvailabilityZoneId)

    CapacityConfiguration.add_member(:node_type, Shapes::ShapeRef.new(shape: NodeType, location_name: "nodeType"))
    CapacityConfiguration.add_member(:node_count, Shapes::ShapeRef.new(shape: NodeCount, location_name: "nodeCount"))
    CapacityConfiguration.struct_class = Types::CapacityConfiguration

    ChangeRequest.add_member(:change_type, Shapes::ShapeRef.new(shape: ChangeType, required: true, location_name: "changeType"))
    ChangeRequest.add_member(:s3_path, Shapes::ShapeRef.new(shape: S3Path, location_name: "s3Path"))
    ChangeRequest.add_member(:db_path, Shapes::ShapeRef.new(shape: DbPath, required: true, location_name: "dbPath"))
    ChangeRequest.struct_class = Types::ChangeRequest

    ChangeRequests.member = Shapes::ShapeRef.new(shape: ChangeRequest)

    CodeConfiguration.add_member(:s3_bucket, Shapes::ShapeRef.new(shape: S3Bucket, location_name: "s3Bucket"))
    CodeConfiguration.add_member(:s3_key, Shapes::ShapeRef.new(shape: S3Key, location_name: "s3Key"))
    CodeConfiguration.add_member(:s3_object_version, Shapes::ShapeRef.new(shape: S3ObjectVersion, location_name: "s3ObjectVersion"))
    CodeConfiguration.struct_class = Types::CodeConfiguration

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "message"))
    ConflictException.add_member(:reason, Shapes::ShapeRef.new(shape: errorMessage, location_name: "reason"))
    ConflictException.struct_class = Types::ConflictException

    CreateEnvironmentRequest.add_member(:name, Shapes::ShapeRef.new(shape: EnvironmentName, required: true, location_name: "name"))
    CreateEnvironmentRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateEnvironmentRequest.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "kmsKeyId"))
    CreateEnvironmentRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateEnvironmentRequest.add_member(:federation_mode, Shapes::ShapeRef.new(shape: FederationMode, location_name: "federationMode"))
    CreateEnvironmentRequest.add_member(:federation_parameters, Shapes::ShapeRef.new(shape: FederationParameters, location_name: "federationParameters"))
    CreateEnvironmentRequest.add_member(:superuser_parameters, Shapes::ShapeRef.new(shape: SuperuserParameters, location_name: "superuserParameters"))
    CreateEnvironmentRequest.add_member(:data_bundles, Shapes::ShapeRef.new(shape: DataBundleArns, location_name: "dataBundles"))
    CreateEnvironmentRequest.struct_class = Types::CreateEnvironmentRequest

    CreateEnvironmentResponse.add_member(:environment_id, Shapes::ShapeRef.new(shape: IdType, location_name: "environmentId"))
    CreateEnvironmentResponse.add_member(:environment_arn, Shapes::ShapeRef.new(shape: EnvironmentArn, location_name: "environmentArn"))
    CreateEnvironmentResponse.add_member(:environment_url, Shapes::ShapeRef.new(shape: url, location_name: "environmentUrl"))
    CreateEnvironmentResponse.struct_class = Types::CreateEnvironmentResponse

    CreateKxChangesetRequest.add_member(:environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, required: true, location: "uri", location_name: "environmentId"))
    CreateKxChangesetRequest.add_member(:database_name, Shapes::ShapeRef.new(shape: DatabaseName, required: true, location: "uri", location_name: "databaseName"))
    CreateKxChangesetRequest.add_member(:change_requests, Shapes::ShapeRef.new(shape: ChangeRequests, required: true, location_name: "changeRequests"))
    CreateKxChangesetRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientTokenString, required: true, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateKxChangesetRequest.struct_class = Types::CreateKxChangesetRequest

    CreateKxChangesetResponse.add_member(:changeset_id, Shapes::ShapeRef.new(shape: ChangesetId, location_name: "changesetId"))
    CreateKxChangesetResponse.add_member(:database_name, Shapes::ShapeRef.new(shape: DatabaseName, location_name: "databaseName"))
    CreateKxChangesetResponse.add_member(:environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, location_name: "environmentId"))
    CreateKxChangesetResponse.add_member(:change_requests, Shapes::ShapeRef.new(shape: ChangeRequests, location_name: "changeRequests"))
    CreateKxChangesetResponse.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdTimestamp"))
    CreateKxChangesetResponse.add_member(:last_modified_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastModifiedTimestamp"))
    CreateKxChangesetResponse.add_member(:status, Shapes::ShapeRef.new(shape: ChangesetStatus, location_name: "status"))
    CreateKxChangesetResponse.add_member(:error_info, Shapes::ShapeRef.new(shape: ErrorInfo, location_name: "errorInfo"))
    CreateKxChangesetResponse.struct_class = Types::CreateKxChangesetResponse

    CreateKxClusterRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateKxClusterRequest.add_member(:environment_id, Shapes::ShapeRef.new(shape: KxEnvironmentId, required: true, location: "uri", location_name: "environmentId"))
    CreateKxClusterRequest.add_member(:cluster_name, Shapes::ShapeRef.new(shape: KxClusterName, required: true, location_name: "clusterName"))
    CreateKxClusterRequest.add_member(:cluster_type, Shapes::ShapeRef.new(shape: KxClusterType, required: true, location_name: "clusterType"))
    CreateKxClusterRequest.add_member(:tickerplant_log_configuration, Shapes::ShapeRef.new(shape: TickerplantLogConfiguration, location_name: "tickerplantLogConfiguration"))
    CreateKxClusterRequest.add_member(:databases, Shapes::ShapeRef.new(shape: KxDatabaseConfigurations, location_name: "databases"))
    CreateKxClusterRequest.add_member(:cache_storage_configurations, Shapes::ShapeRef.new(shape: KxCacheStorageConfigurations, location_name: "cacheStorageConfigurations"))
    CreateKxClusterRequest.add_member(:auto_scaling_configuration, Shapes::ShapeRef.new(shape: AutoScalingConfiguration, location_name: "autoScalingConfiguration"))
    CreateKxClusterRequest.add_member(:cluster_description, Shapes::ShapeRef.new(shape: KxClusterDescription, location_name: "clusterDescription"))
    CreateKxClusterRequest.add_member(:capacity_configuration, Shapes::ShapeRef.new(shape: CapacityConfiguration, location_name: "capacityConfiguration"))
    CreateKxClusterRequest.add_member(:release_label, Shapes::ShapeRef.new(shape: ReleaseLabel, required: true, location_name: "releaseLabel"))
    CreateKxClusterRequest.add_member(:vpc_configuration, Shapes::ShapeRef.new(shape: VpcConfiguration, required: true, location_name: "vpcConfiguration"))
    CreateKxClusterRequest.add_member(:initialization_script, Shapes::ShapeRef.new(shape: InitializationScriptFilePath, location_name: "initializationScript"))
    CreateKxClusterRequest.add_member(:command_line_arguments, Shapes::ShapeRef.new(shape: KxCommandLineArguments, location_name: "commandLineArguments"))
    CreateKxClusterRequest.add_member(:code, Shapes::ShapeRef.new(shape: CodeConfiguration, location_name: "code"))
    CreateKxClusterRequest.add_member(:execution_role, Shapes::ShapeRef.new(shape: ExecutionRoleArn, location_name: "executionRole"))
    CreateKxClusterRequest.add_member(:savedown_storage_configuration, Shapes::ShapeRef.new(shape: KxSavedownStorageConfiguration, location_name: "savedownStorageConfiguration"))
    CreateKxClusterRequest.add_member(:az_mode, Shapes::ShapeRef.new(shape: KxAzMode, required: true, location_name: "azMode"))
    CreateKxClusterRequest.add_member(:availability_zone_id, Shapes::ShapeRef.new(shape: AvailabilityZoneId, location_name: "availabilityZoneId"))
    CreateKxClusterRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateKxClusterRequest.add_member(:scaling_group_configuration, Shapes::ShapeRef.new(shape: KxScalingGroupConfiguration, location_name: "scalingGroupConfiguration"))
    CreateKxClusterRequest.struct_class = Types::CreateKxClusterRequest

    CreateKxClusterResponse.add_member(:environment_id, Shapes::ShapeRef.new(shape: KxEnvironmentId, location_name: "environmentId"))
    CreateKxClusterResponse.add_member(:status, Shapes::ShapeRef.new(shape: KxClusterStatus, location_name: "status"))
    CreateKxClusterResponse.add_member(:status_reason, Shapes::ShapeRef.new(shape: KxClusterStatusReason, location_name: "statusReason"))
    CreateKxClusterResponse.add_member(:cluster_name, Shapes::ShapeRef.new(shape: KxClusterName, location_name: "clusterName"))
    CreateKxClusterResponse.add_member(:cluster_type, Shapes::ShapeRef.new(shape: KxClusterType, location_name: "clusterType"))
    CreateKxClusterResponse.add_member(:tickerplant_log_configuration, Shapes::ShapeRef.new(shape: TickerplantLogConfiguration, location_name: "tickerplantLogConfiguration"))
    CreateKxClusterResponse.add_member(:volumes, Shapes::ShapeRef.new(shape: Volumes, location_name: "volumes"))
    CreateKxClusterResponse.add_member(:databases, Shapes::ShapeRef.new(shape: KxDatabaseConfigurations, location_name: "databases"))
    CreateKxClusterResponse.add_member(:cache_storage_configurations, Shapes::ShapeRef.new(shape: KxCacheStorageConfigurations, location_name: "cacheStorageConfigurations"))
    CreateKxClusterResponse.add_member(:auto_scaling_configuration, Shapes::ShapeRef.new(shape: AutoScalingConfiguration, location_name: "autoScalingConfiguration"))
    CreateKxClusterResponse.add_member(:cluster_description, Shapes::ShapeRef.new(shape: KxClusterDescription, location_name: "clusterDescription"))
    CreateKxClusterResponse.add_member(:capacity_configuration, Shapes::ShapeRef.new(shape: CapacityConfiguration, location_name: "capacityConfiguration"))
    CreateKxClusterResponse.add_member(:release_label, Shapes::ShapeRef.new(shape: ReleaseLabel, location_name: "releaseLabel"))
    CreateKxClusterResponse.add_member(:vpc_configuration, Shapes::ShapeRef.new(shape: VpcConfiguration, location_name: "vpcConfiguration"))
    CreateKxClusterResponse.add_member(:initialization_script, Shapes::ShapeRef.new(shape: InitializationScriptFilePath, location_name: "initializationScript"))
    CreateKxClusterResponse.add_member(:command_line_arguments, Shapes::ShapeRef.new(shape: KxCommandLineArguments, location_name: "commandLineArguments"))
    CreateKxClusterResponse.add_member(:code, Shapes::ShapeRef.new(shape: CodeConfiguration, location_name: "code"))
    CreateKxClusterResponse.add_member(:execution_role, Shapes::ShapeRef.new(shape: ExecutionRoleArn, location_name: "executionRole"))
    CreateKxClusterResponse.add_member(:last_modified_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastModifiedTimestamp"))
    CreateKxClusterResponse.add_member(:savedown_storage_configuration, Shapes::ShapeRef.new(shape: KxSavedownStorageConfiguration, location_name: "savedownStorageConfiguration"))
    CreateKxClusterResponse.add_member(:az_mode, Shapes::ShapeRef.new(shape: KxAzMode, location_name: "azMode"))
    CreateKxClusterResponse.add_member(:availability_zone_id, Shapes::ShapeRef.new(shape: AvailabilityZoneId, location_name: "availabilityZoneId"))
    CreateKxClusterResponse.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdTimestamp"))
    CreateKxClusterResponse.add_member(:scaling_group_configuration, Shapes::ShapeRef.new(shape: KxScalingGroupConfiguration, location_name: "scalingGroupConfiguration"))
    CreateKxClusterResponse.struct_class = Types::CreateKxClusterResponse

    CreateKxDatabaseRequest.add_member(:environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, required: true, location: "uri", location_name: "environmentId"))
    CreateKxDatabaseRequest.add_member(:database_name, Shapes::ShapeRef.new(shape: DatabaseName, required: true, location_name: "databaseName"))
    CreateKxDatabaseRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateKxDatabaseRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateKxDatabaseRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientTokenString, required: true, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateKxDatabaseRequest.struct_class = Types::CreateKxDatabaseRequest

    CreateKxDatabaseResponse.add_member(:database_name, Shapes::ShapeRef.new(shape: DatabaseName, location_name: "databaseName"))
    CreateKxDatabaseResponse.add_member(:database_arn, Shapes::ShapeRef.new(shape: DatabaseArn, location_name: "databaseArn"))
    CreateKxDatabaseResponse.add_member(:environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, location_name: "environmentId"))
    CreateKxDatabaseResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateKxDatabaseResponse.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdTimestamp"))
    CreateKxDatabaseResponse.add_member(:last_modified_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastModifiedTimestamp"))
    CreateKxDatabaseResponse.struct_class = Types::CreateKxDatabaseResponse

    CreateKxDataviewRequest.add_member(:environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, required: true, location: "uri", location_name: "environmentId"))
    CreateKxDataviewRequest.add_member(:database_name, Shapes::ShapeRef.new(shape: DatabaseName, required: true, location: "uri", location_name: "databaseName"))
    CreateKxDataviewRequest.add_member(:dataview_name, Shapes::ShapeRef.new(shape: KxDataviewName, required: true, location_name: "dataviewName"))
    CreateKxDataviewRequest.add_member(:az_mode, Shapes::ShapeRef.new(shape: KxAzMode, required: true, location_name: "azMode"))
    CreateKxDataviewRequest.add_member(:availability_zone_id, Shapes::ShapeRef.new(shape: AvailabilityZoneId, location_name: "availabilityZoneId"))
    CreateKxDataviewRequest.add_member(:changeset_id, Shapes::ShapeRef.new(shape: ChangesetId, location_name: "changesetId"))
    CreateKxDataviewRequest.add_member(:segment_configurations, Shapes::ShapeRef.new(shape: KxDataviewSegmentConfigurationList, location_name: "segmentConfigurations"))
    CreateKxDataviewRequest.add_member(:auto_update, Shapes::ShapeRef.new(shape: booleanValue, location_name: "autoUpdate"))
    CreateKxDataviewRequest.add_member(:read_write, Shapes::ShapeRef.new(shape: booleanValue, location_name: "readWrite"))
    CreateKxDataviewRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateKxDataviewRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateKxDataviewRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientTokenString, required: true, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateKxDataviewRequest.struct_class = Types::CreateKxDataviewRequest

    CreateKxDataviewResponse.add_member(:dataview_name, Shapes::ShapeRef.new(shape: KxDataviewName, location_name: "dataviewName"))
    CreateKxDataviewResponse.add_member(:database_name, Shapes::ShapeRef.new(shape: DatabaseName, location_name: "databaseName"))
    CreateKxDataviewResponse.add_member(:environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, location_name: "environmentId"))
    CreateKxDataviewResponse.add_member(:az_mode, Shapes::ShapeRef.new(shape: KxAzMode, location_name: "azMode"))
    CreateKxDataviewResponse.add_member(:availability_zone_id, Shapes::ShapeRef.new(shape: AvailabilityZoneId, location_name: "availabilityZoneId"))
    CreateKxDataviewResponse.add_member(:changeset_id, Shapes::ShapeRef.new(shape: ChangesetId, location_name: "changesetId"))
    CreateKxDataviewResponse.add_member(:segment_configurations, Shapes::ShapeRef.new(shape: KxDataviewSegmentConfigurationList, location_name: "segmentConfigurations"))
    CreateKxDataviewResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateKxDataviewResponse.add_member(:auto_update, Shapes::ShapeRef.new(shape: booleanValue, location_name: "autoUpdate"))
    CreateKxDataviewResponse.add_member(:read_write, Shapes::ShapeRef.new(shape: booleanValue, location_name: "readWrite"))
    CreateKxDataviewResponse.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdTimestamp"))
    CreateKxDataviewResponse.add_member(:last_modified_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastModifiedTimestamp"))
    CreateKxDataviewResponse.add_member(:status, Shapes::ShapeRef.new(shape: KxDataviewStatus, location_name: "status"))
    CreateKxDataviewResponse.struct_class = Types::CreateKxDataviewResponse

    CreateKxEnvironmentRequest.add_member(:name, Shapes::ShapeRef.new(shape: KxEnvironmentName, required: true, location_name: "name"))
    CreateKxEnvironmentRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateKxEnvironmentRequest.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyARN, required: true, location_name: "kmsKeyId"))
    CreateKxEnvironmentRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateKxEnvironmentRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateKxEnvironmentRequest.struct_class = Types::CreateKxEnvironmentRequest

    CreateKxEnvironmentResponse.add_member(:name, Shapes::ShapeRef.new(shape: KxEnvironmentName, location_name: "name"))
    CreateKxEnvironmentResponse.add_member(:status, Shapes::ShapeRef.new(shape: EnvironmentStatus, location_name: "status"))
    CreateKxEnvironmentResponse.add_member(:environment_id, Shapes::ShapeRef.new(shape: IdType, location_name: "environmentId"))
    CreateKxEnvironmentResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateKxEnvironmentResponse.add_member(:environment_arn, Shapes::ShapeRef.new(shape: EnvironmentArn, location_name: "environmentArn"))
    CreateKxEnvironmentResponse.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "kmsKeyId"))
    CreateKxEnvironmentResponse.add_member(:creation_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationTimestamp"))
    CreateKxEnvironmentResponse.struct_class = Types::CreateKxEnvironmentResponse

    CreateKxScalingGroupRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, required: true, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateKxScalingGroupRequest.add_member(:environment_id, Shapes::ShapeRef.new(shape: KxEnvironmentId, required: true, location: "uri", location_name: "environmentId"))
    CreateKxScalingGroupRequest.add_member(:scaling_group_name, Shapes::ShapeRef.new(shape: KxScalingGroupName, required: true, location_name: "scalingGroupName"))
    CreateKxScalingGroupRequest.add_member(:host_type, Shapes::ShapeRef.new(shape: KxHostType, required: true, location_name: "hostType"))
    CreateKxScalingGroupRequest.add_member(:availability_zone_id, Shapes::ShapeRef.new(shape: AvailabilityZoneId, required: true, location_name: "availabilityZoneId"))
    CreateKxScalingGroupRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateKxScalingGroupRequest.struct_class = Types::CreateKxScalingGroupRequest

    CreateKxScalingGroupResponse.add_member(:environment_id, Shapes::ShapeRef.new(shape: KxEnvironmentId, location_name: "environmentId"))
    CreateKxScalingGroupResponse.add_member(:scaling_group_name, Shapes::ShapeRef.new(shape: KxScalingGroupName, location_name: "scalingGroupName"))
    CreateKxScalingGroupResponse.add_member(:host_type, Shapes::ShapeRef.new(shape: KxHostType, location_name: "hostType"))
    CreateKxScalingGroupResponse.add_member(:availability_zone_id, Shapes::ShapeRef.new(shape: AvailabilityZoneId, location_name: "availabilityZoneId"))
    CreateKxScalingGroupResponse.add_member(:status, Shapes::ShapeRef.new(shape: KxScalingGroupStatus, location_name: "status"))
    CreateKxScalingGroupResponse.add_member(:last_modified_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastModifiedTimestamp"))
    CreateKxScalingGroupResponse.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdTimestamp"))
    CreateKxScalingGroupResponse.struct_class = Types::CreateKxScalingGroupResponse

    CreateKxUserRequest.add_member(:environment_id, Shapes::ShapeRef.new(shape: IdType, required: true, location: "uri", location_name: "environmentId"))
    CreateKxUserRequest.add_member(:user_name, Shapes::ShapeRef.new(shape: KxUserNameString, required: true, location_name: "userName"))
    CreateKxUserRequest.add_member(:iam_role, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "iamRole"))
    CreateKxUserRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateKxUserRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateKxUserRequest.struct_class = Types::CreateKxUserRequest

    CreateKxUserResponse.add_member(:user_name, Shapes::ShapeRef.new(shape: KxUserNameString, location_name: "userName"))
    CreateKxUserResponse.add_member(:user_arn, Shapes::ShapeRef.new(shape: KxUserArn, location_name: "userArn"))
    CreateKxUserResponse.add_member(:environment_id, Shapes::ShapeRef.new(shape: IdType, location_name: "environmentId"))
    CreateKxUserResponse.add_member(:iam_role, Shapes::ShapeRef.new(shape: RoleArn, location_name: "iamRole"))
    CreateKxUserResponse.struct_class = Types::CreateKxUserResponse

    CreateKxVolumeRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateKxVolumeRequest.add_member(:environment_id, Shapes::ShapeRef.new(shape: KxEnvironmentId, required: true, location: "uri", location_name: "environmentId"))
    CreateKxVolumeRequest.add_member(:volume_type, Shapes::ShapeRef.new(shape: KxVolumeType, required: true, location_name: "volumeType"))
    CreateKxVolumeRequest.add_member(:volume_name, Shapes::ShapeRef.new(shape: KxVolumeName, required: true, location_name: "volumeName"))
    CreateKxVolumeRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateKxVolumeRequest.add_member(:nas1_configuration, Shapes::ShapeRef.new(shape: KxNAS1Configuration, location_name: "nas1Configuration"))
    CreateKxVolumeRequest.add_member(:az_mode, Shapes::ShapeRef.new(shape: KxAzMode, required: true, location_name: "azMode"))
    CreateKxVolumeRequest.add_member(:availability_zone_ids, Shapes::ShapeRef.new(shape: AvailabilityZoneIds, required: true, location_name: "availabilityZoneIds"))
    CreateKxVolumeRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateKxVolumeRequest.struct_class = Types::CreateKxVolumeRequest

    CreateKxVolumeResponse.add_member(:environment_id, Shapes::ShapeRef.new(shape: KxEnvironmentId, location_name: "environmentId"))
    CreateKxVolumeResponse.add_member(:volume_name, Shapes::ShapeRef.new(shape: KxVolumeName, location_name: "volumeName"))
    CreateKxVolumeResponse.add_member(:volume_type, Shapes::ShapeRef.new(shape: KxVolumeType, location_name: "volumeType"))
    CreateKxVolumeResponse.add_member(:volume_arn, Shapes::ShapeRef.new(shape: KxVolumeArn, location_name: "volumeArn"))
    CreateKxVolumeResponse.add_member(:nas1_configuration, Shapes::ShapeRef.new(shape: KxNAS1Configuration, location_name: "nas1Configuration"))
    CreateKxVolumeResponse.add_member(:status, Shapes::ShapeRef.new(shape: KxVolumeStatus, location_name: "status"))
    CreateKxVolumeResponse.add_member(:status_reason, Shapes::ShapeRef.new(shape: KxVolumeStatusReason, location_name: "statusReason"))
    CreateKxVolumeResponse.add_member(:az_mode, Shapes::ShapeRef.new(shape: KxAzMode, location_name: "azMode"))
    CreateKxVolumeResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateKxVolumeResponse.add_member(:availability_zone_ids, Shapes::ShapeRef.new(shape: AvailabilityZoneIds, location_name: "availabilityZoneIds"))
    CreateKxVolumeResponse.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdTimestamp"))
    CreateKxVolumeResponse.struct_class = Types::CreateKxVolumeResponse

    CustomDNSConfiguration.member = Shapes::ShapeRef.new(shape: CustomDNSServer)

    CustomDNSServer.add_member(:custom_dns_server_name, Shapes::ShapeRef.new(shape: ValidHostname, required: true, location_name: "customDNSServerName"))
    CustomDNSServer.add_member(:custom_dns_server_ip, Shapes::ShapeRef.new(shape: ValidIPAddress, required: true, location_name: "customDNSServerIP"))
    CustomDNSServer.struct_class = Types::CustomDNSServer

    DataBundleArns.member = Shapes::ShapeRef.new(shape: DataBundleArn)

    DbPaths.member = Shapes::ShapeRef.new(shape: DbPath)

    DeleteEnvironmentRequest.add_member(:environment_id, Shapes::ShapeRef.new(shape: IdType, required: true, location: "uri", location_name: "environmentId"))
    DeleteEnvironmentRequest.struct_class = Types::DeleteEnvironmentRequest

    DeleteEnvironmentResponse.struct_class = Types::DeleteEnvironmentResponse

    DeleteKxClusterNodeRequest.add_member(:environment_id, Shapes::ShapeRef.new(shape: KxEnvironmentId, required: true, location: "uri", location_name: "environmentId"))
    DeleteKxClusterNodeRequest.add_member(:cluster_name, Shapes::ShapeRef.new(shape: KxClusterName, required: true, location: "uri", location_name: "clusterName"))
    DeleteKxClusterNodeRequest.add_member(:node_id, Shapes::ShapeRef.new(shape: KxClusterNodeIdString, required: true, location: "uri", location_name: "nodeId"))
    DeleteKxClusterNodeRequest.struct_class = Types::DeleteKxClusterNodeRequest

    DeleteKxClusterNodeResponse.struct_class = Types::DeleteKxClusterNodeResponse

    DeleteKxClusterRequest.add_member(:environment_id, Shapes::ShapeRef.new(shape: KxEnvironmentId, required: true, location: "uri", location_name: "environmentId"))
    DeleteKxClusterRequest.add_member(:cluster_name, Shapes::ShapeRef.new(shape: KxClusterName, required: true, location: "uri", location_name: "clusterName"))
    DeleteKxClusterRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientTokenString, location: "querystring", location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    DeleteKxClusterRequest.struct_class = Types::DeleteKxClusterRequest

    DeleteKxClusterResponse.struct_class = Types::DeleteKxClusterResponse

    DeleteKxDatabaseRequest.add_member(:environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, required: true, location: "uri", location_name: "environmentId"))
    DeleteKxDatabaseRequest.add_member(:database_name, Shapes::ShapeRef.new(shape: DatabaseName, required: true, location: "uri", location_name: "databaseName"))
    DeleteKxDatabaseRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientTokenString, required: true, location: "querystring", location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    DeleteKxDatabaseRequest.struct_class = Types::DeleteKxDatabaseRequest

    DeleteKxDatabaseResponse.struct_class = Types::DeleteKxDatabaseResponse

    DeleteKxDataviewRequest.add_member(:environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, required: true, location: "uri", location_name: "environmentId"))
    DeleteKxDataviewRequest.add_member(:database_name, Shapes::ShapeRef.new(shape: DatabaseName, required: true, location: "uri", location_name: "databaseName"))
    DeleteKxDataviewRequest.add_member(:dataview_name, Shapes::ShapeRef.new(shape: KxDataviewName, required: true, location: "uri", location_name: "dataviewName"))
    DeleteKxDataviewRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientTokenString, required: true, location: "querystring", location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    DeleteKxDataviewRequest.struct_class = Types::DeleteKxDataviewRequest

    DeleteKxDataviewResponse.struct_class = Types::DeleteKxDataviewResponse

    DeleteKxEnvironmentRequest.add_member(:environment_id, Shapes::ShapeRef.new(shape: IdType, required: true, location: "uri", location_name: "environmentId"))
    DeleteKxEnvironmentRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "querystring", location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    DeleteKxEnvironmentRequest.struct_class = Types::DeleteKxEnvironmentRequest

    DeleteKxEnvironmentResponse.struct_class = Types::DeleteKxEnvironmentResponse

    DeleteKxScalingGroupRequest.add_member(:environment_id, Shapes::ShapeRef.new(shape: KxEnvironmentId, required: true, location: "uri", location_name: "environmentId"))
    DeleteKxScalingGroupRequest.add_member(:scaling_group_name, Shapes::ShapeRef.new(shape: KxScalingGroupName, required: true, location: "uri", location_name: "scalingGroupName"))
    DeleteKxScalingGroupRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientTokenString, location: "querystring", location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    DeleteKxScalingGroupRequest.struct_class = Types::DeleteKxScalingGroupRequest

    DeleteKxScalingGroupResponse.struct_class = Types::DeleteKxScalingGroupResponse

    DeleteKxUserRequest.add_member(:user_name, Shapes::ShapeRef.new(shape: KxUserNameString, required: true, location: "uri", location_name: "userName"))
    DeleteKxUserRequest.add_member(:environment_id, Shapes::ShapeRef.new(shape: IdType, required: true, location: "uri", location_name: "environmentId"))
    DeleteKxUserRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "querystring", location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    DeleteKxUserRequest.struct_class = Types::DeleteKxUserRequest

    DeleteKxUserResponse.struct_class = Types::DeleteKxUserResponse

    DeleteKxVolumeRequest.add_member(:environment_id, Shapes::ShapeRef.new(shape: KxEnvironmentId, required: true, location: "uri", location_name: "environmentId"))
    DeleteKxVolumeRequest.add_member(:volume_name, Shapes::ShapeRef.new(shape: KxVolumeName, required: true, location: "uri", location_name: "volumeName"))
    DeleteKxVolumeRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientTokenString, location: "querystring", location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    DeleteKxVolumeRequest.struct_class = Types::DeleteKxVolumeRequest

    DeleteKxVolumeResponse.struct_class = Types::DeleteKxVolumeResponse

    Environment.add_member(:name, Shapes::ShapeRef.new(shape: EnvironmentName, location_name: "name"))
    Environment.add_member(:environment_id, Shapes::ShapeRef.new(shape: IdType, location_name: "environmentId"))
    Environment.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: IdType, location_name: "awsAccountId"))
    Environment.add_member(:status, Shapes::ShapeRef.new(shape: EnvironmentStatus, location_name: "status"))
    Environment.add_member(:environment_url, Shapes::ShapeRef.new(shape: url, location_name: "environmentUrl"))
    Environment.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    Environment.add_member(:environment_arn, Shapes::ShapeRef.new(shape: EnvironmentArn, location_name: "environmentArn"))
    Environment.add_member(:sage_maker_studio_domain_url, Shapes::ShapeRef.new(shape: SmsDomainUrl, location_name: "sageMakerStudioDomainUrl"))
    Environment.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "kmsKeyId"))
    Environment.add_member(:dedicated_service_account_id, Shapes::ShapeRef.new(shape: IdType, location_name: "dedicatedServiceAccountId"))
    Environment.add_member(:federation_mode, Shapes::ShapeRef.new(shape: FederationMode, location_name: "federationMode"))
    Environment.add_member(:federation_parameters, Shapes::ShapeRef.new(shape: FederationParameters, location_name: "federationParameters"))
    Environment.struct_class = Types::Environment

    EnvironmentList.member = Shapes::ShapeRef.new(shape: Environment)

    ErrorInfo.add_member(:error_message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "errorMessage"))
    ErrorInfo.add_member(:error_type, Shapes::ShapeRef.new(shape: ErrorDetails, location_name: "errorType"))
    ErrorInfo.struct_class = Types::ErrorInfo

    FederationParameters.add_member(:saml_metadata_document, Shapes::ShapeRef.new(shape: SamlMetadataDocument, location_name: "samlMetadataDocument"))
    FederationParameters.add_member(:saml_metadata_url, Shapes::ShapeRef.new(shape: url, location_name: "samlMetadataURL"))
    FederationParameters.add_member(:application_call_back_url, Shapes::ShapeRef.new(shape: url, location_name: "applicationCallBackURL"))
    FederationParameters.add_member(:federation_urn, Shapes::ShapeRef.new(shape: urn, location_name: "federationURN"))
    FederationParameters.add_member(:federation_provider_name, Shapes::ShapeRef.new(shape: FederationProviderName, location_name: "federationProviderName"))
    FederationParameters.add_member(:attribute_map, Shapes::ShapeRef.new(shape: AttributeMap, location_name: "attributeMap"))
    FederationParameters.struct_class = Types::FederationParameters

    GetEnvironmentRequest.add_member(:environment_id, Shapes::ShapeRef.new(shape: IdType, required: true, location: "uri", location_name: "environmentId"))
    GetEnvironmentRequest.struct_class = Types::GetEnvironmentRequest

    GetEnvironmentResponse.add_member(:environment, Shapes::ShapeRef.new(shape: Environment, location_name: "environment"))
    GetEnvironmentResponse.struct_class = Types::GetEnvironmentResponse

    GetKxChangesetRequest.add_member(:environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, required: true, location: "uri", location_name: "environmentId"))
    GetKxChangesetRequest.add_member(:database_name, Shapes::ShapeRef.new(shape: DatabaseName, required: true, location: "uri", location_name: "databaseName"))
    GetKxChangesetRequest.add_member(:changeset_id, Shapes::ShapeRef.new(shape: ChangesetId, required: true, location: "uri", location_name: "changesetId"))
    GetKxChangesetRequest.struct_class = Types::GetKxChangesetRequest

    GetKxChangesetResponse.add_member(:changeset_id, Shapes::ShapeRef.new(shape: ChangesetId, location_name: "changesetId"))
    GetKxChangesetResponse.add_member(:database_name, Shapes::ShapeRef.new(shape: DatabaseName, location_name: "databaseName"))
    GetKxChangesetResponse.add_member(:environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, location_name: "environmentId"))
    GetKxChangesetResponse.add_member(:change_requests, Shapes::ShapeRef.new(shape: ChangeRequests, location_name: "changeRequests"))
    GetKxChangesetResponse.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdTimestamp"))
    GetKxChangesetResponse.add_member(:active_from_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "activeFromTimestamp"))
    GetKxChangesetResponse.add_member(:last_modified_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastModifiedTimestamp"))
    GetKxChangesetResponse.add_member(:status, Shapes::ShapeRef.new(shape: ChangesetStatus, location_name: "status"))
    GetKxChangesetResponse.add_member(:error_info, Shapes::ShapeRef.new(shape: ErrorInfo, location_name: "errorInfo"))
    GetKxChangesetResponse.struct_class = Types::GetKxChangesetResponse

    GetKxClusterRequest.add_member(:environment_id, Shapes::ShapeRef.new(shape: KxEnvironmentId, required: true, location: "uri", location_name: "environmentId"))
    GetKxClusterRequest.add_member(:cluster_name, Shapes::ShapeRef.new(shape: KxClusterName, required: true, location: "uri", location_name: "clusterName"))
    GetKxClusterRequest.struct_class = Types::GetKxClusterRequest

    GetKxClusterResponse.add_member(:status, Shapes::ShapeRef.new(shape: KxClusterStatus, location_name: "status"))
    GetKxClusterResponse.add_member(:status_reason, Shapes::ShapeRef.new(shape: KxClusterStatusReason, location_name: "statusReason"))
    GetKxClusterResponse.add_member(:cluster_name, Shapes::ShapeRef.new(shape: KxClusterName, location_name: "clusterName"))
    GetKxClusterResponse.add_member(:cluster_type, Shapes::ShapeRef.new(shape: KxClusterType, location_name: "clusterType"))
    GetKxClusterResponse.add_member(:tickerplant_log_configuration, Shapes::ShapeRef.new(shape: TickerplantLogConfiguration, location_name: "tickerplantLogConfiguration"))
    GetKxClusterResponse.add_member(:volumes, Shapes::ShapeRef.new(shape: Volumes, location_name: "volumes"))
    GetKxClusterResponse.add_member(:databases, Shapes::ShapeRef.new(shape: KxDatabaseConfigurations, location_name: "databases"))
    GetKxClusterResponse.add_member(:cache_storage_configurations, Shapes::ShapeRef.new(shape: KxCacheStorageConfigurations, location_name: "cacheStorageConfigurations"))
    GetKxClusterResponse.add_member(:auto_scaling_configuration, Shapes::ShapeRef.new(shape: AutoScalingConfiguration, location_name: "autoScalingConfiguration"))
    GetKxClusterResponse.add_member(:cluster_description, Shapes::ShapeRef.new(shape: KxClusterDescription, location_name: "clusterDescription"))
    GetKxClusterResponse.add_member(:capacity_configuration, Shapes::ShapeRef.new(shape: CapacityConfiguration, location_name: "capacityConfiguration"))
    GetKxClusterResponse.add_member(:release_label, Shapes::ShapeRef.new(shape: ReleaseLabel, location_name: "releaseLabel"))
    GetKxClusterResponse.add_member(:vpc_configuration, Shapes::ShapeRef.new(shape: VpcConfiguration, location_name: "vpcConfiguration"))
    GetKxClusterResponse.add_member(:initialization_script, Shapes::ShapeRef.new(shape: InitializationScriptFilePath, location_name: "initializationScript"))
    GetKxClusterResponse.add_member(:command_line_arguments, Shapes::ShapeRef.new(shape: KxCommandLineArguments, location_name: "commandLineArguments"))
    GetKxClusterResponse.add_member(:code, Shapes::ShapeRef.new(shape: CodeConfiguration, location_name: "code"))
    GetKxClusterResponse.add_member(:execution_role, Shapes::ShapeRef.new(shape: ExecutionRoleArn, location_name: "executionRole"))
    GetKxClusterResponse.add_member(:last_modified_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastModifiedTimestamp"))
    GetKxClusterResponse.add_member(:savedown_storage_configuration, Shapes::ShapeRef.new(shape: KxSavedownStorageConfiguration, location_name: "savedownStorageConfiguration"))
    GetKxClusterResponse.add_member(:az_mode, Shapes::ShapeRef.new(shape: KxAzMode, location_name: "azMode"))
    GetKxClusterResponse.add_member(:availability_zone_id, Shapes::ShapeRef.new(shape: AvailabilityZoneId, location_name: "availabilityZoneId"))
    GetKxClusterResponse.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdTimestamp"))
    GetKxClusterResponse.add_member(:scaling_group_configuration, Shapes::ShapeRef.new(shape: KxScalingGroupConfiguration, location_name: "scalingGroupConfiguration"))
    GetKxClusterResponse.struct_class = Types::GetKxClusterResponse

    GetKxConnectionStringRequest.add_member(:user_arn, Shapes::ShapeRef.new(shape: KxUserArn, required: true, location: "querystring", location_name: "userArn"))
    GetKxConnectionStringRequest.add_member(:environment_id, Shapes::ShapeRef.new(shape: IdType, required: true, location: "uri", location_name: "environmentId"))
    GetKxConnectionStringRequest.add_member(:cluster_name, Shapes::ShapeRef.new(shape: KxClusterName, required: true, location: "querystring", location_name: "clusterName"))
    GetKxConnectionStringRequest.struct_class = Types::GetKxConnectionStringRequest

    GetKxConnectionStringResponse.add_member(:signed_connection_string, Shapes::ShapeRef.new(shape: SignedKxConnectionString, location_name: "signedConnectionString"))
    GetKxConnectionStringResponse.struct_class = Types::GetKxConnectionStringResponse

    GetKxDatabaseRequest.add_member(:environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, required: true, location: "uri", location_name: "environmentId"))
    GetKxDatabaseRequest.add_member(:database_name, Shapes::ShapeRef.new(shape: DatabaseName, required: true, location: "uri", location_name: "databaseName"))
    GetKxDatabaseRequest.struct_class = Types::GetKxDatabaseRequest

    GetKxDatabaseResponse.add_member(:database_name, Shapes::ShapeRef.new(shape: DatabaseName, location_name: "databaseName"))
    GetKxDatabaseResponse.add_member(:database_arn, Shapes::ShapeRef.new(shape: DatabaseArn, location_name: "databaseArn"))
    GetKxDatabaseResponse.add_member(:environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, location_name: "environmentId"))
    GetKxDatabaseResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    GetKxDatabaseResponse.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdTimestamp"))
    GetKxDatabaseResponse.add_member(:last_modified_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastModifiedTimestamp"))
    GetKxDatabaseResponse.add_member(:last_completed_changeset_id, Shapes::ShapeRef.new(shape: ChangesetId, location_name: "lastCompletedChangesetId"))
    GetKxDatabaseResponse.add_member(:num_bytes, Shapes::ShapeRef.new(shape: numBytes, location_name: "numBytes"))
    GetKxDatabaseResponse.add_member(:num_changesets, Shapes::ShapeRef.new(shape: numChangesets, location_name: "numChangesets"))
    GetKxDatabaseResponse.add_member(:num_files, Shapes::ShapeRef.new(shape: numFiles, location_name: "numFiles"))
    GetKxDatabaseResponse.struct_class = Types::GetKxDatabaseResponse

    GetKxDataviewRequest.add_member(:environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, required: true, location: "uri", location_name: "environmentId"))
    GetKxDataviewRequest.add_member(:database_name, Shapes::ShapeRef.new(shape: DatabaseName, required: true, location: "uri", location_name: "databaseName"))
    GetKxDataviewRequest.add_member(:dataview_name, Shapes::ShapeRef.new(shape: KxDataviewName, required: true, location: "uri", location_name: "dataviewName"))
    GetKxDataviewRequest.struct_class = Types::GetKxDataviewRequest

    GetKxDataviewResponse.add_member(:database_name, Shapes::ShapeRef.new(shape: DatabaseName, location_name: "databaseName"))
    GetKxDataviewResponse.add_member(:dataview_name, Shapes::ShapeRef.new(shape: KxDataviewName, location_name: "dataviewName"))
    GetKxDataviewResponse.add_member(:az_mode, Shapes::ShapeRef.new(shape: KxAzMode, location_name: "azMode"))
    GetKxDataviewResponse.add_member(:availability_zone_id, Shapes::ShapeRef.new(shape: AvailabilityZoneId, location_name: "availabilityZoneId"))
    GetKxDataviewResponse.add_member(:changeset_id, Shapes::ShapeRef.new(shape: ChangesetId, location_name: "changesetId"))
    GetKxDataviewResponse.add_member(:segment_configurations, Shapes::ShapeRef.new(shape: KxDataviewSegmentConfigurationList, location_name: "segmentConfigurations"))
    GetKxDataviewResponse.add_member(:active_versions, Shapes::ShapeRef.new(shape: KxDataviewActiveVersionList, location_name: "activeVersions"))
    GetKxDataviewResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    GetKxDataviewResponse.add_member(:auto_update, Shapes::ShapeRef.new(shape: booleanValue, location_name: "autoUpdate"))
    GetKxDataviewResponse.add_member(:read_write, Shapes::ShapeRef.new(shape: booleanValue, location_name: "readWrite"))
    GetKxDataviewResponse.add_member(:environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, location_name: "environmentId"))
    GetKxDataviewResponse.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdTimestamp"))
    GetKxDataviewResponse.add_member(:last_modified_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastModifiedTimestamp"))
    GetKxDataviewResponse.add_member(:status, Shapes::ShapeRef.new(shape: KxDataviewStatus, location_name: "status"))
    GetKxDataviewResponse.add_member(:status_reason, Shapes::ShapeRef.new(shape: KxDataviewStatusReason, location_name: "statusReason"))
    GetKxDataviewResponse.struct_class = Types::GetKxDataviewResponse

    GetKxEnvironmentRequest.add_member(:environment_id, Shapes::ShapeRef.new(shape: IdType, required: true, location: "uri", location_name: "environmentId"))
    GetKxEnvironmentRequest.struct_class = Types::GetKxEnvironmentRequest

    GetKxEnvironmentResponse.add_member(:name, Shapes::ShapeRef.new(shape: KxEnvironmentName, location_name: "name"))
    GetKxEnvironmentResponse.add_member(:environment_id, Shapes::ShapeRef.new(shape: IdType, location_name: "environmentId"))
    GetKxEnvironmentResponse.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: IdType, location_name: "awsAccountId"))
    GetKxEnvironmentResponse.add_member(:status, Shapes::ShapeRef.new(shape: EnvironmentStatus, location_name: "status"))
    GetKxEnvironmentResponse.add_member(:tgw_status, Shapes::ShapeRef.new(shape: tgwStatus, location_name: "tgwStatus"))
    GetKxEnvironmentResponse.add_member(:dns_status, Shapes::ShapeRef.new(shape: dnsStatus, location_name: "dnsStatus"))
    GetKxEnvironmentResponse.add_member(:error_message, Shapes::ShapeRef.new(shape: EnvironmentErrorMessage, location_name: "errorMessage"))
    GetKxEnvironmentResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    GetKxEnvironmentResponse.add_member(:environment_arn, Shapes::ShapeRef.new(shape: EnvironmentArn, location_name: "environmentArn"))
    GetKxEnvironmentResponse.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "kmsKeyId"))
    GetKxEnvironmentResponse.add_member(:dedicated_service_account_id, Shapes::ShapeRef.new(shape: IdType, location_name: "dedicatedServiceAccountId"))
    GetKxEnvironmentResponse.add_member(:transit_gateway_configuration, Shapes::ShapeRef.new(shape: TransitGatewayConfiguration, location_name: "transitGatewayConfiguration"))
    GetKxEnvironmentResponse.add_member(:custom_dns_configuration, Shapes::ShapeRef.new(shape: CustomDNSConfiguration, location_name: "customDNSConfiguration"))
    GetKxEnvironmentResponse.add_member(:creation_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationTimestamp"))
    GetKxEnvironmentResponse.add_member(:update_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updateTimestamp"))
    GetKxEnvironmentResponse.add_member(:availability_zone_ids, Shapes::ShapeRef.new(shape: AvailabilityZoneIds, location_name: "availabilityZoneIds"))
    GetKxEnvironmentResponse.add_member(:certificate_authority_arn, Shapes::ShapeRef.new(shape: stringValueLength1to255, location_name: "certificateAuthorityArn"))
    GetKxEnvironmentResponse.struct_class = Types::GetKxEnvironmentResponse

    GetKxScalingGroupRequest.add_member(:environment_id, Shapes::ShapeRef.new(shape: KxEnvironmentId, required: true, location: "uri", location_name: "environmentId"))
    GetKxScalingGroupRequest.add_member(:scaling_group_name, Shapes::ShapeRef.new(shape: KxScalingGroupName, required: true, location: "uri", location_name: "scalingGroupName"))
    GetKxScalingGroupRequest.struct_class = Types::GetKxScalingGroupRequest

    GetKxScalingGroupResponse.add_member(:scaling_group_name, Shapes::ShapeRef.new(shape: KxScalingGroupName, location_name: "scalingGroupName"))
    GetKxScalingGroupResponse.add_member(:scaling_group_arn, Shapes::ShapeRef.new(shape: arn, location_name: "scalingGroupArn"))
    GetKxScalingGroupResponse.add_member(:host_type, Shapes::ShapeRef.new(shape: KxHostType, location_name: "hostType"))
    GetKxScalingGroupResponse.add_member(:clusters, Shapes::ShapeRef.new(shape: KxClusterNameList, location_name: "clusters"))
    GetKxScalingGroupResponse.add_member(:availability_zone_id, Shapes::ShapeRef.new(shape: AvailabilityZoneId, location_name: "availabilityZoneId"))
    GetKxScalingGroupResponse.add_member(:status, Shapes::ShapeRef.new(shape: KxScalingGroupStatus, location_name: "status"))
    GetKxScalingGroupResponse.add_member(:status_reason, Shapes::ShapeRef.new(shape: KxClusterStatusReason, location_name: "statusReason"))
    GetKxScalingGroupResponse.add_member(:last_modified_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastModifiedTimestamp"))
    GetKxScalingGroupResponse.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdTimestamp"))
    GetKxScalingGroupResponse.struct_class = Types::GetKxScalingGroupResponse

    GetKxUserRequest.add_member(:user_name, Shapes::ShapeRef.new(shape: KxUserNameString, required: true, location: "uri", location_name: "userName"))
    GetKxUserRequest.add_member(:environment_id, Shapes::ShapeRef.new(shape: IdType, required: true, location: "uri", location_name: "environmentId"))
    GetKxUserRequest.struct_class = Types::GetKxUserRequest

    GetKxUserResponse.add_member(:user_name, Shapes::ShapeRef.new(shape: IdType, location_name: "userName"))
    GetKxUserResponse.add_member(:user_arn, Shapes::ShapeRef.new(shape: KxUserArn, location_name: "userArn"))
    GetKxUserResponse.add_member(:environment_id, Shapes::ShapeRef.new(shape: IdType, location_name: "environmentId"))
    GetKxUserResponse.add_member(:iam_role, Shapes::ShapeRef.new(shape: RoleArn, location_name: "iamRole"))
    GetKxUserResponse.struct_class = Types::GetKxUserResponse

    GetKxVolumeRequest.add_member(:environment_id, Shapes::ShapeRef.new(shape: KxEnvironmentId, required: true, location: "uri", location_name: "environmentId"))
    GetKxVolumeRequest.add_member(:volume_name, Shapes::ShapeRef.new(shape: KxVolumeName, required: true, location: "uri", location_name: "volumeName"))
    GetKxVolumeRequest.struct_class = Types::GetKxVolumeRequest

    GetKxVolumeResponse.add_member(:environment_id, Shapes::ShapeRef.new(shape: KxEnvironmentId, location_name: "environmentId"))
    GetKxVolumeResponse.add_member(:volume_name, Shapes::ShapeRef.new(shape: KxVolumeName, location_name: "volumeName"))
    GetKxVolumeResponse.add_member(:volume_type, Shapes::ShapeRef.new(shape: KxVolumeType, location_name: "volumeType"))
    GetKxVolumeResponse.add_member(:volume_arn, Shapes::ShapeRef.new(shape: KxVolumeArn, location_name: "volumeArn"))
    GetKxVolumeResponse.add_member(:nas1_configuration, Shapes::ShapeRef.new(shape: KxNAS1Configuration, location_name: "nas1Configuration"))
    GetKxVolumeResponse.add_member(:status, Shapes::ShapeRef.new(shape: KxVolumeStatus, location_name: "status"))
    GetKxVolumeResponse.add_member(:status_reason, Shapes::ShapeRef.new(shape: KxVolumeStatusReason, location_name: "statusReason"))
    GetKxVolumeResponse.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdTimestamp"))
    GetKxVolumeResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    GetKxVolumeResponse.add_member(:az_mode, Shapes::ShapeRef.new(shape: KxAzMode, location_name: "azMode"))
    GetKxVolumeResponse.add_member(:availability_zone_ids, Shapes::ShapeRef.new(shape: AvailabilityZoneIds, location_name: "availabilityZoneIds"))
    GetKxVolumeResponse.add_member(:last_modified_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastModifiedTimestamp"))
    GetKxVolumeResponse.add_member(:attached_clusters, Shapes::ShapeRef.new(shape: KxAttachedClusters, location_name: "attachedClusters"))
    GetKxVolumeResponse.struct_class = Types::GetKxVolumeResponse

    IcmpTypeCode.add_member(:type, Shapes::ShapeRef.new(shape: IcmpTypeOrCode, required: true, location_name: "type"))
    IcmpTypeCode.add_member(:code, Shapes::ShapeRef.new(shape: IcmpTypeOrCode, required: true, location_name: "code"))
    IcmpTypeCode.struct_class = Types::IcmpTypeCode

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    InvalidRequestException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "message"))
    InvalidRequestException.struct_class = Types::InvalidRequestException

    KxAttachedCluster.add_member(:cluster_name, Shapes::ShapeRef.new(shape: KxClusterName, location_name: "clusterName"))
    KxAttachedCluster.add_member(:cluster_type, Shapes::ShapeRef.new(shape: KxClusterType, location_name: "clusterType"))
    KxAttachedCluster.add_member(:cluster_status, Shapes::ShapeRef.new(shape: KxClusterStatus, location_name: "clusterStatus"))
    KxAttachedCluster.struct_class = Types::KxAttachedCluster

    KxAttachedClusters.member = Shapes::ShapeRef.new(shape: KxAttachedCluster)

    KxCacheStorageConfiguration.add_member(:type, Shapes::ShapeRef.new(shape: KxCacheStorageType, required: true, location_name: "type"))
    KxCacheStorageConfiguration.add_member(:size, Shapes::ShapeRef.new(shape: KxCacheStorageSize, required: true, location_name: "size"))
    KxCacheStorageConfiguration.struct_class = Types::KxCacheStorageConfiguration

    KxCacheStorageConfigurations.member = Shapes::ShapeRef.new(shape: KxCacheStorageConfiguration)

    KxChangesetListEntry.add_member(:changeset_id, Shapes::ShapeRef.new(shape: ChangesetId, location_name: "changesetId"))
    KxChangesetListEntry.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdTimestamp"))
    KxChangesetListEntry.add_member(:active_from_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "activeFromTimestamp"))
    KxChangesetListEntry.add_member(:last_modified_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastModifiedTimestamp"))
    KxChangesetListEntry.add_member(:status, Shapes::ShapeRef.new(shape: ChangesetStatus, location_name: "status"))
    KxChangesetListEntry.struct_class = Types::KxChangesetListEntry

    KxChangesets.member = Shapes::ShapeRef.new(shape: KxChangesetListEntry)

    KxCluster.add_member(:status, Shapes::ShapeRef.new(shape: KxClusterStatus, location_name: "status"))
    KxCluster.add_member(:status_reason, Shapes::ShapeRef.new(shape: KxClusterStatusReason, location_name: "statusReason"))
    KxCluster.add_member(:cluster_name, Shapes::ShapeRef.new(shape: KxClusterName, location_name: "clusterName"))
    KxCluster.add_member(:cluster_type, Shapes::ShapeRef.new(shape: KxClusterType, location_name: "clusterType"))
    KxCluster.add_member(:cluster_description, Shapes::ShapeRef.new(shape: KxClusterDescription, location_name: "clusterDescription"))
    KxCluster.add_member(:release_label, Shapes::ShapeRef.new(shape: ReleaseLabel, location_name: "releaseLabel"))
    KxCluster.add_member(:volumes, Shapes::ShapeRef.new(shape: Volumes, location_name: "volumes"))
    KxCluster.add_member(:initialization_script, Shapes::ShapeRef.new(shape: InitializationScriptFilePath, location_name: "initializationScript"))
    KxCluster.add_member(:execution_role, Shapes::ShapeRef.new(shape: ExecutionRoleArn, location_name: "executionRole"))
    KxCluster.add_member(:az_mode, Shapes::ShapeRef.new(shape: KxAzMode, location_name: "azMode"))
    KxCluster.add_member(:availability_zone_id, Shapes::ShapeRef.new(shape: AvailabilityZoneId, location_name: "availabilityZoneId"))
    KxCluster.add_member(:last_modified_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastModifiedTimestamp"))
    KxCluster.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdTimestamp"))
    KxCluster.struct_class = Types::KxCluster

    KxClusterCodeDeploymentConfiguration.add_member(:deployment_strategy, Shapes::ShapeRef.new(shape: KxClusterCodeDeploymentStrategy, required: true, location_name: "deploymentStrategy"))
    KxClusterCodeDeploymentConfiguration.struct_class = Types::KxClusterCodeDeploymentConfiguration

    KxClusterNameList.member = Shapes::ShapeRef.new(shape: KxClusterName)

    KxClusters.member = Shapes::ShapeRef.new(shape: KxCluster)

    KxCommandLineArgument.add_member(:key, Shapes::ShapeRef.new(shape: KxCommandLineArgumentKey, location_name: "key"))
    KxCommandLineArgument.add_member(:value, Shapes::ShapeRef.new(shape: KxCommandLineArgumentValue, location_name: "value"))
    KxCommandLineArgument.struct_class = Types::KxCommandLineArgument

    KxCommandLineArguments.member = Shapes::ShapeRef.new(shape: KxCommandLineArgument)

    KxDatabaseCacheConfiguration.add_member(:cache_type, Shapes::ShapeRef.new(shape: KxCacheStorageType, required: true, location_name: "cacheType"))
    KxDatabaseCacheConfiguration.add_member(:db_paths, Shapes::ShapeRef.new(shape: DbPaths, required: true, location_name: "dbPaths"))
    KxDatabaseCacheConfiguration.add_member(:dataview_name, Shapes::ShapeRef.new(shape: KxDataviewName, location_name: "dataviewName"))
    KxDatabaseCacheConfiguration.struct_class = Types::KxDatabaseCacheConfiguration

    KxDatabaseCacheConfigurations.member = Shapes::ShapeRef.new(shape: KxDatabaseCacheConfiguration)

    KxDatabaseConfiguration.add_member(:database_name, Shapes::ShapeRef.new(shape: DatabaseName, required: true, location_name: "databaseName"))
    KxDatabaseConfiguration.add_member(:cache_configurations, Shapes::ShapeRef.new(shape: KxDatabaseCacheConfigurations, location_name: "cacheConfigurations"))
    KxDatabaseConfiguration.add_member(:changeset_id, Shapes::ShapeRef.new(shape: ChangesetId, location_name: "changesetId"))
    KxDatabaseConfiguration.add_member(:dataview_name, Shapes::ShapeRef.new(shape: KxDataviewName, location_name: "dataviewName"))
    KxDatabaseConfiguration.add_member(:dataview_configuration, Shapes::ShapeRef.new(shape: KxDataviewConfiguration, location_name: "dataviewConfiguration"))
    KxDatabaseConfiguration.struct_class = Types::KxDatabaseConfiguration

    KxDatabaseConfigurations.member = Shapes::ShapeRef.new(shape: KxDatabaseConfiguration)

    KxDatabaseListEntry.add_member(:database_name, Shapes::ShapeRef.new(shape: DatabaseName, location_name: "databaseName"))
    KxDatabaseListEntry.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdTimestamp"))
    KxDatabaseListEntry.add_member(:last_modified_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastModifiedTimestamp"))
    KxDatabaseListEntry.struct_class = Types::KxDatabaseListEntry

    KxDatabases.member = Shapes::ShapeRef.new(shape: KxDatabaseListEntry)

    KxDataviewActiveVersion.add_member(:changeset_id, Shapes::ShapeRef.new(shape: ChangesetId, location_name: "changesetId"))
    KxDataviewActiveVersion.add_member(:segment_configurations, Shapes::ShapeRef.new(shape: KxDataviewSegmentConfigurationList, location_name: "segmentConfigurations"))
    KxDataviewActiveVersion.add_member(:attached_clusters, Shapes::ShapeRef.new(shape: AttachedClusterList, location_name: "attachedClusters"))
    KxDataviewActiveVersion.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdTimestamp"))
    KxDataviewActiveVersion.add_member(:version_id, Shapes::ShapeRef.new(shape: VersionId, location_name: "versionId"))
    KxDataviewActiveVersion.struct_class = Types::KxDataviewActiveVersion

    KxDataviewActiveVersionList.member = Shapes::ShapeRef.new(shape: KxDataviewActiveVersion)

    KxDataviewConfiguration.add_member(:dataview_name, Shapes::ShapeRef.new(shape: KxDataviewName, location_name: "dataviewName"))
    KxDataviewConfiguration.add_member(:dataview_version_id, Shapes::ShapeRef.new(shape: VersionId, location_name: "dataviewVersionId"))
    KxDataviewConfiguration.add_member(:changeset_id, Shapes::ShapeRef.new(shape: ChangesetId, location_name: "changesetId"))
    KxDataviewConfiguration.add_member(:segment_configurations, Shapes::ShapeRef.new(shape: KxDataviewSegmentConfigurationList, location_name: "segmentConfigurations"))
    KxDataviewConfiguration.struct_class = Types::KxDataviewConfiguration

    KxDataviewListEntry.add_member(:environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, location_name: "environmentId"))
    KxDataviewListEntry.add_member(:database_name, Shapes::ShapeRef.new(shape: DatabaseName, location_name: "databaseName"))
    KxDataviewListEntry.add_member(:dataview_name, Shapes::ShapeRef.new(shape: KxDataviewName, location_name: "dataviewName"))
    KxDataviewListEntry.add_member(:az_mode, Shapes::ShapeRef.new(shape: KxAzMode, location_name: "azMode"))
    KxDataviewListEntry.add_member(:availability_zone_id, Shapes::ShapeRef.new(shape: AvailabilityZoneId, location_name: "availabilityZoneId"))
    KxDataviewListEntry.add_member(:changeset_id, Shapes::ShapeRef.new(shape: ChangesetId, location_name: "changesetId"))
    KxDataviewListEntry.add_member(:segment_configurations, Shapes::ShapeRef.new(shape: KxDataviewSegmentConfigurationList, location_name: "segmentConfigurations"))
    KxDataviewListEntry.add_member(:active_versions, Shapes::ShapeRef.new(shape: KxDataviewActiveVersionList, location_name: "activeVersions"))
    KxDataviewListEntry.add_member(:status, Shapes::ShapeRef.new(shape: KxDataviewStatus, location_name: "status"))
    KxDataviewListEntry.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    KxDataviewListEntry.add_member(:auto_update, Shapes::ShapeRef.new(shape: booleanValue, location_name: "autoUpdate"))
    KxDataviewListEntry.add_member(:read_write, Shapes::ShapeRef.new(shape: booleanValue, location_name: "readWrite"))
    KxDataviewListEntry.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdTimestamp"))
    KxDataviewListEntry.add_member(:last_modified_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastModifiedTimestamp"))
    KxDataviewListEntry.add_member(:status_reason, Shapes::ShapeRef.new(shape: KxDataviewStatusReason, location_name: "statusReason"))
    KxDataviewListEntry.struct_class = Types::KxDataviewListEntry

    KxDataviewSegmentConfiguration.add_member(:db_paths, Shapes::ShapeRef.new(shape: SegmentConfigurationDbPathList, required: true, location_name: "dbPaths"))
    KxDataviewSegmentConfiguration.add_member(:volume_name, Shapes::ShapeRef.new(shape: KxVolumeName, required: true, location_name: "volumeName"))
    KxDataviewSegmentConfiguration.add_member(:on_demand, Shapes::ShapeRef.new(shape: booleanValue, location_name: "onDemand"))
    KxDataviewSegmentConfiguration.struct_class = Types::KxDataviewSegmentConfiguration

    KxDataviewSegmentConfigurationList.member = Shapes::ShapeRef.new(shape: KxDataviewSegmentConfiguration)

    KxDataviews.member = Shapes::ShapeRef.new(shape: KxDataviewListEntry)

    KxDeploymentConfiguration.add_member(:deployment_strategy, Shapes::ShapeRef.new(shape: KxDeploymentStrategy, required: true, location_name: "deploymentStrategy"))
    KxDeploymentConfiguration.struct_class = Types::KxDeploymentConfiguration

    KxEnvironment.add_member(:name, Shapes::ShapeRef.new(shape: KxEnvironmentName, location_name: "name"))
    KxEnvironment.add_member(:environment_id, Shapes::ShapeRef.new(shape: IdType, location_name: "environmentId"))
    KxEnvironment.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: IdType, location_name: "awsAccountId"))
    KxEnvironment.add_member(:status, Shapes::ShapeRef.new(shape: EnvironmentStatus, location_name: "status"))
    KxEnvironment.add_member(:tgw_status, Shapes::ShapeRef.new(shape: tgwStatus, location_name: "tgwStatus"))
    KxEnvironment.add_member(:dns_status, Shapes::ShapeRef.new(shape: dnsStatus, location_name: "dnsStatus"))
    KxEnvironment.add_member(:error_message, Shapes::ShapeRef.new(shape: EnvironmentErrorMessage, location_name: "errorMessage"))
    KxEnvironment.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    KxEnvironment.add_member(:environment_arn, Shapes::ShapeRef.new(shape: EnvironmentArn, location_name: "environmentArn"))
    KxEnvironment.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "kmsKeyId"))
    KxEnvironment.add_member(:dedicated_service_account_id, Shapes::ShapeRef.new(shape: IdType, location_name: "dedicatedServiceAccountId"))
    KxEnvironment.add_member(:transit_gateway_configuration, Shapes::ShapeRef.new(shape: TransitGatewayConfiguration, location_name: "transitGatewayConfiguration"))
    KxEnvironment.add_member(:custom_dns_configuration, Shapes::ShapeRef.new(shape: CustomDNSConfiguration, location_name: "customDNSConfiguration"))
    KxEnvironment.add_member(:creation_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationTimestamp"))
    KxEnvironment.add_member(:update_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updateTimestamp"))
    KxEnvironment.add_member(:availability_zone_ids, Shapes::ShapeRef.new(shape: AvailabilityZoneIds, location_name: "availabilityZoneIds"))
    KxEnvironment.add_member(:certificate_authority_arn, Shapes::ShapeRef.new(shape: stringValueLength1to255, location_name: "certificateAuthorityArn"))
    KxEnvironment.struct_class = Types::KxEnvironment

    KxEnvironmentList.member = Shapes::ShapeRef.new(shape: KxEnvironment)

    KxNAS1Configuration.add_member(:type, Shapes::ShapeRef.new(shape: KxNAS1Type, location_name: "type"))
    KxNAS1Configuration.add_member(:size, Shapes::ShapeRef.new(shape: KxNAS1Size, location_name: "size"))
    KxNAS1Configuration.struct_class = Types::KxNAS1Configuration

    KxNode.add_member(:node_id, Shapes::ShapeRef.new(shape: KxClusterNodeIdString, location_name: "nodeId"))
    KxNode.add_member(:availability_zone_id, Shapes::ShapeRef.new(shape: AvailabilityZoneId, location_name: "availabilityZoneId"))
    KxNode.add_member(:launch_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "launchTime"))
    KxNode.add_member(:status, Shapes::ShapeRef.new(shape: KxNodeStatus, location_name: "status"))
    KxNode.struct_class = Types::KxNode

    KxNodeSummaries.member = Shapes::ShapeRef.new(shape: KxNode)

    KxSavedownStorageConfiguration.add_member(:type, Shapes::ShapeRef.new(shape: KxSavedownStorageType, location_name: "type"))
    KxSavedownStorageConfiguration.add_member(:size, Shapes::ShapeRef.new(shape: KxSavedownStorageSize, location_name: "size"))
    KxSavedownStorageConfiguration.add_member(:volume_name, Shapes::ShapeRef.new(shape: KxVolumeName, location_name: "volumeName"))
    KxSavedownStorageConfiguration.struct_class = Types::KxSavedownStorageConfiguration

    KxScalingGroup.add_member(:scaling_group_name, Shapes::ShapeRef.new(shape: KxScalingGroupName, location_name: "scalingGroupName"))
    KxScalingGroup.add_member(:host_type, Shapes::ShapeRef.new(shape: KxHostType, location_name: "hostType"))
    KxScalingGroup.add_member(:clusters, Shapes::ShapeRef.new(shape: KxClusterNameList, location_name: "clusters"))
    KxScalingGroup.add_member(:availability_zone_id, Shapes::ShapeRef.new(shape: AvailabilityZoneId, location_name: "availabilityZoneId"))
    KxScalingGroup.add_member(:status, Shapes::ShapeRef.new(shape: KxScalingGroupStatus, location_name: "status"))
    KxScalingGroup.add_member(:status_reason, Shapes::ShapeRef.new(shape: KxClusterStatusReason, location_name: "statusReason"))
    KxScalingGroup.add_member(:last_modified_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastModifiedTimestamp"))
    KxScalingGroup.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdTimestamp"))
    KxScalingGroup.struct_class = Types::KxScalingGroup

    KxScalingGroupConfiguration.add_member(:scaling_group_name, Shapes::ShapeRef.new(shape: KxScalingGroupName, required: true, location_name: "scalingGroupName"))
    KxScalingGroupConfiguration.add_member(:memory_limit, Shapes::ShapeRef.new(shape: MemoryMib, location_name: "memoryLimit"))
    KxScalingGroupConfiguration.add_member(:memory_reservation, Shapes::ShapeRef.new(shape: MemoryMib, required: true, location_name: "memoryReservation"))
    KxScalingGroupConfiguration.add_member(:node_count, Shapes::ShapeRef.new(shape: ClusterNodeCount, required: true, location_name: "nodeCount"))
    KxScalingGroupConfiguration.add_member(:cpu, Shapes::ShapeRef.new(shape: CpuCount, location_name: "cpu"))
    KxScalingGroupConfiguration.struct_class = Types::KxScalingGroupConfiguration

    KxScalingGroupList.member = Shapes::ShapeRef.new(shape: KxScalingGroup)

    KxUser.add_member(:user_arn, Shapes::ShapeRef.new(shape: KxUserArn, location_name: "userArn"))
    KxUser.add_member(:user_name, Shapes::ShapeRef.new(shape: KxUserNameString, location_name: "userName"))
    KxUser.add_member(:iam_role, Shapes::ShapeRef.new(shape: RoleArn, location_name: "iamRole"))
    KxUser.add_member(:create_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createTimestamp"))
    KxUser.add_member(:update_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updateTimestamp"))
    KxUser.struct_class = Types::KxUser

    KxUserList.member = Shapes::ShapeRef.new(shape: KxUser)

    KxVolume.add_member(:volume_name, Shapes::ShapeRef.new(shape: KxVolumeName, location_name: "volumeName"))
    KxVolume.add_member(:volume_type, Shapes::ShapeRef.new(shape: KxVolumeType, location_name: "volumeType"))
    KxVolume.add_member(:status, Shapes::ShapeRef.new(shape: KxVolumeStatus, location_name: "status"))
    KxVolume.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    KxVolume.add_member(:status_reason, Shapes::ShapeRef.new(shape: KxVolumeStatusReason, location_name: "statusReason"))
    KxVolume.add_member(:az_mode, Shapes::ShapeRef.new(shape: KxAzMode, location_name: "azMode"))
    KxVolume.add_member(:availability_zone_ids, Shapes::ShapeRef.new(shape: AvailabilityZoneIds, location_name: "availabilityZoneIds"))
    KxVolume.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdTimestamp"))
    KxVolume.add_member(:last_modified_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastModifiedTimestamp"))
    KxVolume.struct_class = Types::KxVolume

    KxVolumes.member = Shapes::ShapeRef.new(shape: KxVolume)

    LimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "message"))
    LimitExceededException.struct_class = Types::LimitExceededException

    ListEnvironmentsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListEnvironmentsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ResultLimit, location: "querystring", location_name: "maxResults"))
    ListEnvironmentsRequest.struct_class = Types::ListEnvironmentsRequest

    ListEnvironmentsResponse.add_member(:environments, Shapes::ShapeRef.new(shape: EnvironmentList, location_name: "environments"))
    ListEnvironmentsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListEnvironmentsResponse.struct_class = Types::ListEnvironmentsResponse

    ListKxChangesetsRequest.add_member(:environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, required: true, location: "uri", location_name: "environmentId"))
    ListKxChangesetsRequest.add_member(:database_name, Shapes::ShapeRef.new(shape: DatabaseName, required: true, location: "uri", location_name: "databaseName"))
    ListKxChangesetsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListKxChangesetsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListKxChangesetsRequest.struct_class = Types::ListKxChangesetsRequest

    ListKxChangesetsResponse.add_member(:kx_changesets, Shapes::ShapeRef.new(shape: KxChangesets, location_name: "kxChangesets"))
    ListKxChangesetsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListKxChangesetsResponse.struct_class = Types::ListKxChangesetsResponse

    ListKxClusterNodesRequest.add_member(:environment_id, Shapes::ShapeRef.new(shape: KxEnvironmentId, required: true, location: "uri", location_name: "environmentId"))
    ListKxClusterNodesRequest.add_member(:cluster_name, Shapes::ShapeRef.new(shape: KxClusterName, required: true, location: "uri", location_name: "clusterName"))
    ListKxClusterNodesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListKxClusterNodesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ResultLimit, location: "querystring", location_name: "maxResults"))
    ListKxClusterNodesRequest.struct_class = Types::ListKxClusterNodesRequest

    ListKxClusterNodesResponse.add_member(:nodes, Shapes::ShapeRef.new(shape: KxNodeSummaries, location_name: "nodes"))
    ListKxClusterNodesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListKxClusterNodesResponse.struct_class = Types::ListKxClusterNodesResponse

    ListKxClustersRequest.add_member(:environment_id, Shapes::ShapeRef.new(shape: KxEnvironmentId, required: true, location: "uri", location_name: "environmentId"))
    ListKxClustersRequest.add_member(:cluster_type, Shapes::ShapeRef.new(shape: KxClusterType, location: "querystring", location_name: "clusterType"))
    ListKxClustersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListKxClustersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListKxClustersRequest.struct_class = Types::ListKxClustersRequest

    ListKxClustersResponse.add_member(:kx_cluster_summaries, Shapes::ShapeRef.new(shape: KxClusters, location_name: "kxClusterSummaries"))
    ListKxClustersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListKxClustersResponse.struct_class = Types::ListKxClustersResponse

    ListKxDatabasesRequest.add_member(:environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, required: true, location: "uri", location_name: "environmentId"))
    ListKxDatabasesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListKxDatabasesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListKxDatabasesRequest.struct_class = Types::ListKxDatabasesRequest

    ListKxDatabasesResponse.add_member(:kx_databases, Shapes::ShapeRef.new(shape: KxDatabases, location_name: "kxDatabases"))
    ListKxDatabasesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListKxDatabasesResponse.struct_class = Types::ListKxDatabasesResponse

    ListKxDataviewsRequest.add_member(:environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, required: true, location: "uri", location_name: "environmentId"))
    ListKxDataviewsRequest.add_member(:database_name, Shapes::ShapeRef.new(shape: DatabaseName, required: true, location: "uri", location_name: "databaseName"))
    ListKxDataviewsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListKxDataviewsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListKxDataviewsRequest.struct_class = Types::ListKxDataviewsRequest

    ListKxDataviewsResponse.add_member(:kx_dataviews, Shapes::ShapeRef.new(shape: KxDataviews, location_name: "kxDataviews"))
    ListKxDataviewsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListKxDataviewsResponse.struct_class = Types::ListKxDataviewsResponse

    ListKxEnvironmentsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListKxEnvironmentsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: BoxedInteger, location: "querystring", location_name: "maxResults"))
    ListKxEnvironmentsRequest.struct_class = Types::ListKxEnvironmentsRequest

    ListKxEnvironmentsResponse.add_member(:environments, Shapes::ShapeRef.new(shape: KxEnvironmentList, location_name: "environments"))
    ListKxEnvironmentsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListKxEnvironmentsResponse.struct_class = Types::ListKxEnvironmentsResponse

    ListKxScalingGroupsRequest.add_member(:environment_id, Shapes::ShapeRef.new(shape: KxEnvironmentId, required: true, location: "uri", location_name: "environmentId"))
    ListKxScalingGroupsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListKxScalingGroupsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListKxScalingGroupsRequest.struct_class = Types::ListKxScalingGroupsRequest

    ListKxScalingGroupsResponse.add_member(:scaling_groups, Shapes::ShapeRef.new(shape: KxScalingGroupList, location_name: "scalingGroups"))
    ListKxScalingGroupsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListKxScalingGroupsResponse.struct_class = Types::ListKxScalingGroupsResponse

    ListKxUsersRequest.add_member(:environment_id, Shapes::ShapeRef.new(shape: IdType, required: true, location: "uri", location_name: "environmentId"))
    ListKxUsersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListKxUsersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ResultLimit, location: "querystring", location_name: "maxResults"))
    ListKxUsersRequest.struct_class = Types::ListKxUsersRequest

    ListKxUsersResponse.add_member(:users, Shapes::ShapeRef.new(shape: KxUserList, location_name: "users"))
    ListKxUsersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListKxUsersResponse.struct_class = Types::ListKxUsersResponse

    ListKxVolumesRequest.add_member(:environment_id, Shapes::ShapeRef.new(shape: KxEnvironmentId, required: true, location: "uri", location_name: "environmentId"))
    ListKxVolumesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListKxVolumesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListKxVolumesRequest.add_member(:volume_type, Shapes::ShapeRef.new(shape: KxVolumeType, location: "querystring", location_name: "volumeType"))
    ListKxVolumesRequest.struct_class = Types::ListKxVolumesRequest

    ListKxVolumesResponse.add_member(:kx_volume_summaries, Shapes::ShapeRef.new(shape: KxVolumes, location_name: "kxVolumeSummaries"))
    ListKxVolumesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListKxVolumesResponse.struct_class = Types::ListKxVolumesResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: FinSpaceTaggableArn, required: true, location: "uri", location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    NetworkACLConfiguration.member = Shapes::ShapeRef.new(shape: NetworkACLEntry)

    NetworkACLEntry.add_member(:rule_number, Shapes::ShapeRef.new(shape: RuleNumber, required: true, location_name: "ruleNumber"))
    NetworkACLEntry.add_member(:protocol, Shapes::ShapeRef.new(shape: Protocol, required: true, location_name: "protocol"))
    NetworkACLEntry.add_member(:rule_action, Shapes::ShapeRef.new(shape: RuleAction, required: true, location_name: "ruleAction"))
    NetworkACLEntry.add_member(:port_range, Shapes::ShapeRef.new(shape: PortRange, location_name: "portRange"))
    NetworkACLEntry.add_member(:icmp_type_code, Shapes::ShapeRef.new(shape: IcmpTypeCode, location_name: "icmpTypeCode"))
    NetworkACLEntry.add_member(:cidr_block, Shapes::ShapeRef.new(shape: ValidCIDRBlock, required: true, location_name: "cidrBlock"))
    NetworkACLEntry.struct_class = Types::NetworkACLEntry

    PortRange.add_member(:from, Shapes::ShapeRef.new(shape: Port, required: true, location_name: "from"))
    PortRange.add_member(:to, Shapes::ShapeRef.new(shape: Port, required: true, location_name: "to"))
    PortRange.struct_class = Types::PortRange

    ResourceAlreadyExistsException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "message"))
    ResourceAlreadyExistsException.struct_class = Types::ResourceAlreadyExistsException

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    SecurityGroupIdList.member = Shapes::ShapeRef.new(shape: SecurityGroupIdString)

    SegmentConfigurationDbPathList.member = Shapes::ShapeRef.new(shape: DbPath)

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    SubnetIdList.member = Shapes::ShapeRef.new(shape: SubnetIdString)

    SuperuserParameters.add_member(:email_address, Shapes::ShapeRef.new(shape: EmailId, required: true, location_name: "emailAddress"))
    SuperuserParameters.add_member(:first_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "firstName"))
    SuperuserParameters.add_member(:last_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "lastName"))
    SuperuserParameters.struct_class = Types::SuperuserParameters

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagMap.key = Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Shapes::ShapeRef.new(shape: TagValue)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: FinSpaceTaggableArn, required: true, location: "uri", location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    TickerplantLogConfiguration.add_member(:tickerplant_log_volumes, Shapes::ShapeRef.new(shape: TickerplantLogVolumes, location_name: "tickerplantLogVolumes"))
    TickerplantLogConfiguration.struct_class = Types::TickerplantLogConfiguration

    TickerplantLogVolumes.member = Shapes::ShapeRef.new(shape: VolumeName)

    TransitGatewayConfiguration.add_member(:transit_gateway_id, Shapes::ShapeRef.new(shape: TransitGatewayID, required: true, location_name: "transitGatewayID"))
    TransitGatewayConfiguration.add_member(:routable_cidr_space, Shapes::ShapeRef.new(shape: ValidCIDRSpace, required: true, location_name: "routableCIDRSpace"))
    TransitGatewayConfiguration.add_member(:attachment_network_acl_configuration, Shapes::ShapeRef.new(shape: NetworkACLConfiguration, location_name: "attachmentNetworkAclConfiguration"))
    TransitGatewayConfiguration.struct_class = Types::TransitGatewayConfiguration

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: FinSpaceTaggableArn, required: true, location: "uri", location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateEnvironmentRequest.add_member(:environment_id, Shapes::ShapeRef.new(shape: IdType, required: true, location: "uri", location_name: "environmentId"))
    UpdateEnvironmentRequest.add_member(:name, Shapes::ShapeRef.new(shape: EnvironmentName, location_name: "name"))
    UpdateEnvironmentRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    UpdateEnvironmentRequest.add_member(:federation_mode, Shapes::ShapeRef.new(shape: FederationMode, location_name: "federationMode"))
    UpdateEnvironmentRequest.add_member(:federation_parameters, Shapes::ShapeRef.new(shape: FederationParameters, location_name: "federationParameters"))
    UpdateEnvironmentRequest.struct_class = Types::UpdateEnvironmentRequest

    UpdateEnvironmentResponse.add_member(:environment, Shapes::ShapeRef.new(shape: Environment, location_name: "environment"))
    UpdateEnvironmentResponse.struct_class = Types::UpdateEnvironmentResponse

    UpdateKxClusterCodeConfigurationRequest.add_member(:environment_id, Shapes::ShapeRef.new(shape: KxEnvironmentId, required: true, location: "uri", location_name: "environmentId"))
    UpdateKxClusterCodeConfigurationRequest.add_member(:cluster_name, Shapes::ShapeRef.new(shape: KxClusterName, required: true, location: "uri", location_name: "clusterName"))
    UpdateKxClusterCodeConfigurationRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientTokenString, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    UpdateKxClusterCodeConfigurationRequest.add_member(:code, Shapes::ShapeRef.new(shape: CodeConfiguration, required: true, location_name: "code"))
    UpdateKxClusterCodeConfigurationRequest.add_member(:initialization_script, Shapes::ShapeRef.new(shape: InitializationScriptFilePath, location_name: "initializationScript"))
    UpdateKxClusterCodeConfigurationRequest.add_member(:command_line_arguments, Shapes::ShapeRef.new(shape: KxCommandLineArguments, location_name: "commandLineArguments"))
    UpdateKxClusterCodeConfigurationRequest.add_member(:deployment_configuration, Shapes::ShapeRef.new(shape: KxClusterCodeDeploymentConfiguration, location_name: "deploymentConfiguration"))
    UpdateKxClusterCodeConfigurationRequest.struct_class = Types::UpdateKxClusterCodeConfigurationRequest

    UpdateKxClusterCodeConfigurationResponse.struct_class = Types::UpdateKxClusterCodeConfigurationResponse

    UpdateKxClusterDatabasesRequest.add_member(:environment_id, Shapes::ShapeRef.new(shape: KxEnvironmentId, required: true, location: "uri", location_name: "environmentId"))
    UpdateKxClusterDatabasesRequest.add_member(:cluster_name, Shapes::ShapeRef.new(shape: KxClusterName, required: true, location: "uri", location_name: "clusterName"))
    UpdateKxClusterDatabasesRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientTokenString, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    UpdateKxClusterDatabasesRequest.add_member(:databases, Shapes::ShapeRef.new(shape: KxDatabaseConfigurations, required: true, location_name: "databases"))
    UpdateKxClusterDatabasesRequest.add_member(:deployment_configuration, Shapes::ShapeRef.new(shape: KxDeploymentConfiguration, location_name: "deploymentConfiguration"))
    UpdateKxClusterDatabasesRequest.struct_class = Types::UpdateKxClusterDatabasesRequest

    UpdateKxClusterDatabasesResponse.struct_class = Types::UpdateKxClusterDatabasesResponse

    UpdateKxDatabaseRequest.add_member(:environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, required: true, location: "uri", location_name: "environmentId"))
    UpdateKxDatabaseRequest.add_member(:database_name, Shapes::ShapeRef.new(shape: DatabaseName, required: true, location: "uri", location_name: "databaseName"))
    UpdateKxDatabaseRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    UpdateKxDatabaseRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientTokenString, required: true, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    UpdateKxDatabaseRequest.struct_class = Types::UpdateKxDatabaseRequest

    UpdateKxDatabaseResponse.add_member(:database_name, Shapes::ShapeRef.new(shape: DatabaseName, location_name: "databaseName"))
    UpdateKxDatabaseResponse.add_member(:environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, location_name: "environmentId"))
    UpdateKxDatabaseResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    UpdateKxDatabaseResponse.add_member(:last_modified_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastModifiedTimestamp"))
    UpdateKxDatabaseResponse.struct_class = Types::UpdateKxDatabaseResponse

    UpdateKxDataviewRequest.add_member(:environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, required: true, location: "uri", location_name: "environmentId"))
    UpdateKxDataviewRequest.add_member(:database_name, Shapes::ShapeRef.new(shape: DatabaseName, required: true, location: "uri", location_name: "databaseName"))
    UpdateKxDataviewRequest.add_member(:dataview_name, Shapes::ShapeRef.new(shape: KxDataviewName, required: true, location: "uri", location_name: "dataviewName"))
    UpdateKxDataviewRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    UpdateKxDataviewRequest.add_member(:changeset_id, Shapes::ShapeRef.new(shape: ChangesetId, location_name: "changesetId"))
    UpdateKxDataviewRequest.add_member(:segment_configurations, Shapes::ShapeRef.new(shape: KxDataviewSegmentConfigurationList, location_name: "segmentConfigurations"))
    UpdateKxDataviewRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientTokenString, required: true, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    UpdateKxDataviewRequest.struct_class = Types::UpdateKxDataviewRequest

    UpdateKxDataviewResponse.add_member(:environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, location_name: "environmentId"))
    UpdateKxDataviewResponse.add_member(:database_name, Shapes::ShapeRef.new(shape: DatabaseName, location_name: "databaseName"))
    UpdateKxDataviewResponse.add_member(:dataview_name, Shapes::ShapeRef.new(shape: KxDataviewName, location_name: "dataviewName"))
    UpdateKxDataviewResponse.add_member(:az_mode, Shapes::ShapeRef.new(shape: KxAzMode, location_name: "azMode"))
    UpdateKxDataviewResponse.add_member(:availability_zone_id, Shapes::ShapeRef.new(shape: AvailabilityZoneId, location_name: "availabilityZoneId"))
    UpdateKxDataviewResponse.add_member(:changeset_id, Shapes::ShapeRef.new(shape: ChangesetId, location_name: "changesetId"))
    UpdateKxDataviewResponse.add_member(:segment_configurations, Shapes::ShapeRef.new(shape: KxDataviewSegmentConfigurationList, location_name: "segmentConfigurations"))
    UpdateKxDataviewResponse.add_member(:active_versions, Shapes::ShapeRef.new(shape: KxDataviewActiveVersionList, location_name: "activeVersions"))
    UpdateKxDataviewResponse.add_member(:status, Shapes::ShapeRef.new(shape: KxDataviewStatus, location_name: "status"))
    UpdateKxDataviewResponse.add_member(:auto_update, Shapes::ShapeRef.new(shape: booleanValue, location_name: "autoUpdate"))
    UpdateKxDataviewResponse.add_member(:read_write, Shapes::ShapeRef.new(shape: booleanValue, location_name: "readWrite"))
    UpdateKxDataviewResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    UpdateKxDataviewResponse.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdTimestamp"))
    UpdateKxDataviewResponse.add_member(:last_modified_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastModifiedTimestamp"))
    UpdateKxDataviewResponse.struct_class = Types::UpdateKxDataviewResponse

    UpdateKxEnvironmentNetworkRequest.add_member(:environment_id, Shapes::ShapeRef.new(shape: IdType, required: true, location: "uri", location_name: "environmentId"))
    UpdateKxEnvironmentNetworkRequest.add_member(:transit_gateway_configuration, Shapes::ShapeRef.new(shape: TransitGatewayConfiguration, location_name: "transitGatewayConfiguration"))
    UpdateKxEnvironmentNetworkRequest.add_member(:custom_dns_configuration, Shapes::ShapeRef.new(shape: CustomDNSConfiguration, location_name: "customDNSConfiguration"))
    UpdateKxEnvironmentNetworkRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    UpdateKxEnvironmentNetworkRequest.struct_class = Types::UpdateKxEnvironmentNetworkRequest

    UpdateKxEnvironmentNetworkResponse.add_member(:name, Shapes::ShapeRef.new(shape: KxEnvironmentName, location_name: "name"))
    UpdateKxEnvironmentNetworkResponse.add_member(:environment_id, Shapes::ShapeRef.new(shape: IdType, location_name: "environmentId"))
    UpdateKxEnvironmentNetworkResponse.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: IdType, location_name: "awsAccountId"))
    UpdateKxEnvironmentNetworkResponse.add_member(:status, Shapes::ShapeRef.new(shape: EnvironmentStatus, location_name: "status"))
    UpdateKxEnvironmentNetworkResponse.add_member(:tgw_status, Shapes::ShapeRef.new(shape: tgwStatus, location_name: "tgwStatus"))
    UpdateKxEnvironmentNetworkResponse.add_member(:dns_status, Shapes::ShapeRef.new(shape: dnsStatus, location_name: "dnsStatus"))
    UpdateKxEnvironmentNetworkResponse.add_member(:error_message, Shapes::ShapeRef.new(shape: EnvironmentErrorMessage, location_name: "errorMessage"))
    UpdateKxEnvironmentNetworkResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    UpdateKxEnvironmentNetworkResponse.add_member(:environment_arn, Shapes::ShapeRef.new(shape: EnvironmentArn, location_name: "environmentArn"))
    UpdateKxEnvironmentNetworkResponse.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "kmsKeyId"))
    UpdateKxEnvironmentNetworkResponse.add_member(:dedicated_service_account_id, Shapes::ShapeRef.new(shape: IdType, location_name: "dedicatedServiceAccountId"))
    UpdateKxEnvironmentNetworkResponse.add_member(:transit_gateway_configuration, Shapes::ShapeRef.new(shape: TransitGatewayConfiguration, location_name: "transitGatewayConfiguration"))
    UpdateKxEnvironmentNetworkResponse.add_member(:custom_dns_configuration, Shapes::ShapeRef.new(shape: CustomDNSConfiguration, location_name: "customDNSConfiguration"))
    UpdateKxEnvironmentNetworkResponse.add_member(:creation_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationTimestamp"))
    UpdateKxEnvironmentNetworkResponse.add_member(:update_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updateTimestamp"))
    UpdateKxEnvironmentNetworkResponse.add_member(:availability_zone_ids, Shapes::ShapeRef.new(shape: AvailabilityZoneIds, location_name: "availabilityZoneIds"))
    UpdateKxEnvironmentNetworkResponse.struct_class = Types::UpdateKxEnvironmentNetworkResponse

    UpdateKxEnvironmentRequest.add_member(:environment_id, Shapes::ShapeRef.new(shape: IdType, required: true, location: "uri", location_name: "environmentId"))
    UpdateKxEnvironmentRequest.add_member(:name, Shapes::ShapeRef.new(shape: KxEnvironmentName, location_name: "name"))
    UpdateKxEnvironmentRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    UpdateKxEnvironmentRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    UpdateKxEnvironmentRequest.struct_class = Types::UpdateKxEnvironmentRequest

    UpdateKxEnvironmentResponse.add_member(:name, Shapes::ShapeRef.new(shape: KxEnvironmentName, location_name: "name"))
    UpdateKxEnvironmentResponse.add_member(:environment_id, Shapes::ShapeRef.new(shape: IdType, location_name: "environmentId"))
    UpdateKxEnvironmentResponse.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: IdType, location_name: "awsAccountId"))
    UpdateKxEnvironmentResponse.add_member(:status, Shapes::ShapeRef.new(shape: EnvironmentStatus, location_name: "status"))
    UpdateKxEnvironmentResponse.add_member(:tgw_status, Shapes::ShapeRef.new(shape: tgwStatus, location_name: "tgwStatus"))
    UpdateKxEnvironmentResponse.add_member(:dns_status, Shapes::ShapeRef.new(shape: dnsStatus, location_name: "dnsStatus"))
    UpdateKxEnvironmentResponse.add_member(:error_message, Shapes::ShapeRef.new(shape: EnvironmentErrorMessage, location_name: "errorMessage"))
    UpdateKxEnvironmentResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    UpdateKxEnvironmentResponse.add_member(:environment_arn, Shapes::ShapeRef.new(shape: EnvironmentArn, location_name: "environmentArn"))
    UpdateKxEnvironmentResponse.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "kmsKeyId"))
    UpdateKxEnvironmentResponse.add_member(:dedicated_service_account_id, Shapes::ShapeRef.new(shape: IdType, location_name: "dedicatedServiceAccountId"))
    UpdateKxEnvironmentResponse.add_member(:transit_gateway_configuration, Shapes::ShapeRef.new(shape: TransitGatewayConfiguration, location_name: "transitGatewayConfiguration"))
    UpdateKxEnvironmentResponse.add_member(:custom_dns_configuration, Shapes::ShapeRef.new(shape: CustomDNSConfiguration, location_name: "customDNSConfiguration"))
    UpdateKxEnvironmentResponse.add_member(:creation_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationTimestamp"))
    UpdateKxEnvironmentResponse.add_member(:update_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updateTimestamp"))
    UpdateKxEnvironmentResponse.add_member(:availability_zone_ids, Shapes::ShapeRef.new(shape: AvailabilityZoneIds, location_name: "availabilityZoneIds"))
    UpdateKxEnvironmentResponse.struct_class = Types::UpdateKxEnvironmentResponse

    UpdateKxUserRequest.add_member(:environment_id, Shapes::ShapeRef.new(shape: IdType, required: true, location: "uri", location_name: "environmentId"))
    UpdateKxUserRequest.add_member(:user_name, Shapes::ShapeRef.new(shape: KxUserNameString, required: true, location: "uri", location_name: "userName"))
    UpdateKxUserRequest.add_member(:iam_role, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "iamRole"))
    UpdateKxUserRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    UpdateKxUserRequest.struct_class = Types::UpdateKxUserRequest

    UpdateKxUserResponse.add_member(:user_name, Shapes::ShapeRef.new(shape: KxUserNameString, location_name: "userName"))
    UpdateKxUserResponse.add_member(:user_arn, Shapes::ShapeRef.new(shape: KxUserArn, location_name: "userArn"))
    UpdateKxUserResponse.add_member(:environment_id, Shapes::ShapeRef.new(shape: IdType, location_name: "environmentId"))
    UpdateKxUserResponse.add_member(:iam_role, Shapes::ShapeRef.new(shape: RoleArn, location_name: "iamRole"))
    UpdateKxUserResponse.struct_class = Types::UpdateKxUserResponse

    UpdateKxVolumeRequest.add_member(:environment_id, Shapes::ShapeRef.new(shape: KxEnvironmentId, required: true, location: "uri", location_name: "environmentId"))
    UpdateKxVolumeRequest.add_member(:volume_name, Shapes::ShapeRef.new(shape: KxVolumeName, required: true, location: "uri", location_name: "volumeName"))
    UpdateKxVolumeRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    UpdateKxVolumeRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientTokenString, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    UpdateKxVolumeRequest.add_member(:nas1_configuration, Shapes::ShapeRef.new(shape: KxNAS1Configuration, location_name: "nas1Configuration"))
    UpdateKxVolumeRequest.struct_class = Types::UpdateKxVolumeRequest

    UpdateKxVolumeResponse.add_member(:environment_id, Shapes::ShapeRef.new(shape: KxEnvironmentId, location_name: "environmentId"))
    UpdateKxVolumeResponse.add_member(:volume_name, Shapes::ShapeRef.new(shape: KxVolumeName, location_name: "volumeName"))
    UpdateKxVolumeResponse.add_member(:volume_type, Shapes::ShapeRef.new(shape: KxVolumeType, location_name: "volumeType"))
    UpdateKxVolumeResponse.add_member(:volume_arn, Shapes::ShapeRef.new(shape: KxVolumeArn, location_name: "volumeArn"))
    UpdateKxVolumeResponse.add_member(:nas1_configuration, Shapes::ShapeRef.new(shape: KxNAS1Configuration, location_name: "nas1Configuration"))
    UpdateKxVolumeResponse.add_member(:status, Shapes::ShapeRef.new(shape: KxVolumeStatus, location_name: "status"))
    UpdateKxVolumeResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    UpdateKxVolumeResponse.add_member(:status_reason, Shapes::ShapeRef.new(shape: KxVolumeStatusReason, location_name: "statusReason"))
    UpdateKxVolumeResponse.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdTimestamp"))
    UpdateKxVolumeResponse.add_member(:az_mode, Shapes::ShapeRef.new(shape: KxAzMode, location_name: "azMode"))
    UpdateKxVolumeResponse.add_member(:availability_zone_ids, Shapes::ShapeRef.new(shape: AvailabilityZoneIds, location_name: "availabilityZoneIds"))
    UpdateKxVolumeResponse.add_member(:last_modified_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastModifiedTimestamp"))
    UpdateKxVolumeResponse.add_member(:attached_clusters, Shapes::ShapeRef.new(shape: KxAttachedClusters, location_name: "attachedClusters"))
    UpdateKxVolumeResponse.struct_class = Types::UpdateKxVolumeResponse

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "message"))
    ValidationException.struct_class = Types::ValidationException

    Volume.add_member(:volume_name, Shapes::ShapeRef.new(shape: VolumeName, location_name: "volumeName"))
    Volume.add_member(:volume_type, Shapes::ShapeRef.new(shape: VolumeType, location_name: "volumeType"))
    Volume.struct_class = Types::Volume

    Volumes.member = Shapes::ShapeRef.new(shape: Volume)

    VpcConfiguration.add_member(:vpc_id, Shapes::ShapeRef.new(shape: VpcIdString, location_name: "vpcId"))
    VpcConfiguration.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: SecurityGroupIdList, location_name: "securityGroupIds"))
    VpcConfiguration.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: SubnetIdList, location_name: "subnetIds"))
    VpcConfiguration.add_member(:ip_address_type, Shapes::ShapeRef.new(shape: IPAddressType, location_name: "ipAddressType"))
    VpcConfiguration.struct_class = Types::VpcConfiguration


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2021-03-12"

      api.metadata = {
        "apiVersion" => "2021-03-12",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "finspace",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "protocols" => ["rest-json"],
        "serviceAbbreviation" => "finspace",
        "serviceFullName" => "FinSpace User Environment Management service",
        "serviceId" => "finspace",
        "signatureVersion" => "v4",
        "signingName" => "finspace",
        "uid" => "finspace-2021-03-12",
      }

      api.add_operation(:create_environment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateEnvironment"
        o.http_method = "POST"
        o.http_request_uri = "/environment"
        o.deprecated = true
        o.input = Shapes::ShapeRef.new(shape: CreateEnvironmentRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateEnvironmentResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:create_kx_changeset, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateKxChangeset"
        o.http_method = "POST"
        o.http_request_uri = "/kx/environments/{environmentId}/databases/{databaseName}/changesets"
        o.input = Shapes::ShapeRef.new(shape: CreateKxChangesetRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateKxChangesetResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:create_kx_cluster, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateKxCluster"
        o.http_method = "POST"
        o.http_request_uri = "/kx/environments/{environmentId}/clusters"
        o.input = Shapes::ShapeRef.new(shape: CreateKxClusterRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateKxClusterResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_kx_database, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateKxDatabase"
        o.http_method = "POST"
        o.http_request_uri = "/kx/environments/{environmentId}/databases"
        o.input = Shapes::ShapeRef.new(shape: CreateKxDatabaseRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateKxDatabaseResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:create_kx_dataview, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateKxDataview"
        o.http_method = "POST"
        o.http_request_uri = "/kx/environments/{environmentId}/databases/{databaseName}/dataviews"
        o.input = Shapes::ShapeRef.new(shape: CreateKxDataviewRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateKxDataviewResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
      end)

      api.add_operation(:create_kx_environment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateKxEnvironment"
        o.http_method = "POST"
        o.http_request_uri = "/kx/environments"
        o.input = Shapes::ShapeRef.new(shape: CreateKxEnvironmentRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateKxEnvironmentResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:create_kx_scaling_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateKxScalingGroup"
        o.http_method = "POST"
        o.http_request_uri = "/kx/environments/{environmentId}/scalingGroups"
        o.input = Shapes::ShapeRef.new(shape: CreateKxScalingGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateKxScalingGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_kx_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateKxUser"
        o.http_method = "POST"
        o.http_request_uri = "/kx/environments/{environmentId}/users"
        o.input = Shapes::ShapeRef.new(shape: CreateKxUserRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateKxUserResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:create_kx_volume, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateKxVolume"
        o.http_method = "POST"
        o.http_request_uri = "/kx/environments/{environmentId}/kxvolumes"
        o.input = Shapes::ShapeRef.new(shape: CreateKxVolumeRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateKxVolumeResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_environment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteEnvironment"
        o.http_method = "DELETE"
        o.http_request_uri = "/environment/{environmentId}"
        o.deprecated = true
        o.input = Shapes::ShapeRef.new(shape: DeleteEnvironmentRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteEnvironmentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:delete_kx_cluster, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteKxCluster"
        o.http_method = "DELETE"
        o.http_request_uri = "/kx/environments/{environmentId}/clusters/{clusterName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteKxClusterRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteKxClusterResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:delete_kx_cluster_node, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteKxClusterNode"
        o.http_method = "DELETE"
        o.http_request_uri = "/kx/environments/{environmentId}/clusters/{clusterName}/nodes/{nodeId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteKxClusterNodeRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteKxClusterNodeResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:delete_kx_database, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteKxDatabase"
        o.http_method = "DELETE"
        o.http_request_uri = "/kx/environments/{environmentId}/databases/{databaseName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteKxDatabaseRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteKxDatabaseResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_kx_dataview, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteKxDataview"
        o.http_method = "DELETE"
        o.http_request_uri = "/kx/environments/{environmentId}/databases/{databaseName}/dataviews/{dataviewName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteKxDataviewRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteKxDataviewResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_kx_environment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteKxEnvironment"
        o.http_method = "DELETE"
        o.http_request_uri = "/kx/environments/{environmentId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteKxEnvironmentRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteKxEnvironmentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_kx_scaling_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteKxScalingGroup"
        o.http_method = "DELETE"
        o.http_request_uri = "/kx/environments/{environmentId}/scalingGroups/{scalingGroupName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteKxScalingGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteKxScalingGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:delete_kx_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteKxUser"
        o.http_method = "DELETE"
        o.http_request_uri = "/kx/environments/{environmentId}/users/{userName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteKxUserRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteKxUserResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_kx_volume, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteKxVolume"
        o.http_method = "DELETE"
        o.http_request_uri = "/kx/environments/{environmentId}/kxvolumes/{volumeName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteKxVolumeRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteKxVolumeResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_environment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetEnvironment"
        o.http_method = "GET"
        o.http_request_uri = "/environment/{environmentId}"
        o.deprecated = true
        o.input = Shapes::ShapeRef.new(shape: GetEnvironmentRequest)
        o.output = Shapes::ShapeRef.new(shape: GetEnvironmentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_kx_changeset, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetKxChangeset"
        o.http_method = "GET"
        o.http_request_uri = "/kx/environments/{environmentId}/databases/{databaseName}/changesets/{changesetId}"
        o.input = Shapes::ShapeRef.new(shape: GetKxChangesetRequest)
        o.output = Shapes::ShapeRef.new(shape: GetKxChangesetResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_kx_cluster, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetKxCluster"
        o.http_method = "GET"
        o.http_request_uri = "/kx/environments/{environmentId}/clusters/{clusterName}"
        o.input = Shapes::ShapeRef.new(shape: GetKxClusterRequest)
        o.output = Shapes::ShapeRef.new(shape: GetKxClusterResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_kx_connection_string, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetKxConnectionString"
        o.http_method = "GET"
        o.http_request_uri = "/kx/environments/{environmentId}/connectionString"
        o.input = Shapes::ShapeRef.new(shape: GetKxConnectionStringRequest)
        o.output = Shapes::ShapeRef.new(shape: GetKxConnectionStringResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_kx_database, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetKxDatabase"
        o.http_method = "GET"
        o.http_request_uri = "/kx/environments/{environmentId}/databases/{databaseName}"
        o.input = Shapes::ShapeRef.new(shape: GetKxDatabaseRequest)
        o.output = Shapes::ShapeRef.new(shape: GetKxDatabaseResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_kx_dataview, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetKxDataview"
        o.http_method = "GET"
        o.http_request_uri = "/kx/environments/{environmentId}/databases/{databaseName}/dataviews/{dataviewName}"
        o.input = Shapes::ShapeRef.new(shape: GetKxDataviewRequest)
        o.output = Shapes::ShapeRef.new(shape: GetKxDataviewResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_kx_environment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetKxEnvironment"
        o.http_method = "GET"
        o.http_request_uri = "/kx/environments/{environmentId}"
        o.input = Shapes::ShapeRef.new(shape: GetKxEnvironmentRequest)
        o.output = Shapes::ShapeRef.new(shape: GetKxEnvironmentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:get_kx_scaling_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetKxScalingGroup"
        o.http_method = "GET"
        o.http_request_uri = "/kx/environments/{environmentId}/scalingGroups/{scalingGroupName}"
        o.input = Shapes::ShapeRef.new(shape: GetKxScalingGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: GetKxScalingGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_kx_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetKxUser"
        o.http_method = "GET"
        o.http_request_uri = "/kx/environments/{environmentId}/users/{userName}"
        o.input = Shapes::ShapeRef.new(shape: GetKxUserRequest)
        o.output = Shapes::ShapeRef.new(shape: GetKxUserResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_kx_volume, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetKxVolume"
        o.http_method = "GET"
        o.http_request_uri = "/kx/environments/{environmentId}/kxvolumes/{volumeName}"
        o.input = Shapes::ShapeRef.new(shape: GetKxVolumeRequest)
        o.output = Shapes::ShapeRef.new(shape: GetKxVolumeResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:list_environments, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListEnvironments"
        o.http_method = "GET"
        o.http_request_uri = "/environment"
        o.deprecated = true
        o.input = Shapes::ShapeRef.new(shape: ListEnvironmentsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListEnvironmentsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:list_kx_changesets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListKxChangesets"
        o.http_method = "GET"
        o.http_request_uri = "/kx/environments/{environmentId}/databases/{databaseName}/changesets"
        o.input = Shapes::ShapeRef.new(shape: ListKxChangesetsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListKxChangesetsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_kx_cluster_nodes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListKxClusterNodes"
        o.http_method = "GET"
        o.http_request_uri = "/kx/environments/{environmentId}/clusters/{clusterName}/nodes"
        o.input = Shapes::ShapeRef.new(shape: ListKxClusterNodesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListKxClusterNodesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_kx_clusters, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListKxClusters"
        o.http_method = "GET"
        o.http_request_uri = "/kx/environments/{environmentId}/clusters"
        o.input = Shapes::ShapeRef.new(shape: ListKxClustersRequest)
        o.output = Shapes::ShapeRef.new(shape: ListKxClustersResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:list_kx_databases, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListKxDatabases"
        o.http_method = "GET"
        o.http_request_uri = "/kx/environments/{environmentId}/databases"
        o.input = Shapes::ShapeRef.new(shape: ListKxDatabasesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListKxDatabasesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_kx_dataviews, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListKxDataviews"
        o.http_method = "GET"
        o.http_request_uri = "/kx/environments/{environmentId}/databases/{databaseName}/dataviews"
        o.input = Shapes::ShapeRef.new(shape: ListKxDataviewsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListKxDataviewsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_kx_environments, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListKxEnvironments"
        o.http_method = "GET"
        o.http_request_uri = "/kx/environments"
        o.input = Shapes::ShapeRef.new(shape: ListKxEnvironmentsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListKxEnvironmentsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_kx_scaling_groups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListKxScalingGroups"
        o.http_method = "GET"
        o.http_request_uri = "/kx/environments/{environmentId}/scalingGroups"
        o.input = Shapes::ShapeRef.new(shape: ListKxScalingGroupsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListKxScalingGroupsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_kx_users, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListKxUsers"
        o.http_method = "GET"
        o.http_request_uri = "/kx/environments/{environmentId}/users"
        o.input = Shapes::ShapeRef.new(shape: ListKxUsersRequest)
        o.output = Shapes::ShapeRef.new(shape: ListKxUsersResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:list_kx_volumes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListKxVolumes"
        o.http_method = "GET"
        o.http_request_uri = "/kx/environments/{environmentId}/kxvolumes"
        o.input = Shapes::ShapeRef.new(shape: ListKxVolumesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListKxVolumesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "GET"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_environment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateEnvironment"
        o.http_method = "PUT"
        o.http_request_uri = "/environment/{environmentId}"
        o.deprecated = true
        o.input = Shapes::ShapeRef.new(shape: UpdateEnvironmentRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateEnvironmentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:update_kx_cluster_code_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateKxClusterCodeConfiguration"
        o.http_method = "PUT"
        o.http_request_uri = "/kx/environments/{environmentId}/clusters/{clusterName}/configuration/code"
        o.input = Shapes::ShapeRef.new(shape: UpdateKxClusterCodeConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateKxClusterCodeConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_kx_cluster_databases, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateKxClusterDatabases"
        o.http_method = "PUT"
        o.http_request_uri = "/kx/environments/{environmentId}/clusters/{clusterName}/configuration/databases"
        o.input = Shapes::ShapeRef.new(shape: UpdateKxClusterDatabasesRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateKxClusterDatabasesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_kx_database, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateKxDatabase"
        o.http_method = "PUT"
        o.http_request_uri = "/kx/environments/{environmentId}/databases/{databaseName}"
        o.input = Shapes::ShapeRef.new(shape: UpdateKxDatabaseRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateKxDatabaseResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:update_kx_dataview, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateKxDataview"
        o.http_method = "PUT"
        o.http_request_uri = "/kx/environments/{environmentId}/databases/{databaseName}/dataviews/{dataviewName}"
        o.input = Shapes::ShapeRef.new(shape: UpdateKxDataviewRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateKxDataviewResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
      end)

      api.add_operation(:update_kx_environment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateKxEnvironment"
        o.http_method = "PUT"
        o.http_request_uri = "/kx/environments/{environmentId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateKxEnvironmentRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateKxEnvironmentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:update_kx_environment_network, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateKxEnvironmentNetwork"
        o.http_method = "PUT"
        o.http_request_uri = "/kx/environments/{environmentId}/network"
        o.input = Shapes::ShapeRef.new(shape: UpdateKxEnvironmentNetworkRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateKxEnvironmentNetworkResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:update_kx_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateKxUser"
        o.http_method = "PUT"
        o.http_request_uri = "/kx/environments/{environmentId}/users/{userName}"
        o.input = Shapes::ShapeRef.new(shape: UpdateKxUserRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateKxUserResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:update_kx_volume, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateKxVolume"
        o.http_method = "PATCH"
        o.http_request_uri = "/kx/environments/{environmentId}/kxvolumes/{volumeName}"
        o.input = Shapes::ShapeRef.new(shape: UpdateKxVolumeRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateKxVolumeResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)
    end

  end
end
