# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Kafka
  # @api private
  module ClientApi

    include Seahorse::Model

    BadRequestException = Shapes::StructureShape.new(name: 'BadRequestException')
    BrokerAZDistribution = Shapes::StringShape.new(name: 'BrokerAZDistribution')
    BrokerNodeGroupInfo = Shapes::StructureShape.new(name: 'BrokerNodeGroupInfo')
    BrokerNodeInfo = Shapes::StructureShape.new(name: 'BrokerNodeInfo')
    BrokerSoftwareInfo = Shapes::StructureShape.new(name: 'BrokerSoftwareInfo')
    ClusterInfo = Shapes::StructureShape.new(name: 'ClusterInfo')
    ClusterState = Shapes::StringShape.new(name: 'ClusterState')
    Configuration = Shapes::StructureShape.new(name: 'Configuration')
    ConfigurationInfo = Shapes::StructureShape.new(name: 'ConfigurationInfo')
    ConfigurationRevision = Shapes::StructureShape.new(name: 'ConfigurationRevision')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateClusterRequest = Shapes::StructureShape.new(name: 'CreateClusterRequest')
    CreateClusterResponse = Shapes::StructureShape.new(name: 'CreateClusterResponse')
    CreateConfigurationRequest = Shapes::StructureShape.new(name: 'CreateConfigurationRequest')
    CreateConfigurationResponse = Shapes::StructureShape.new(name: 'CreateConfigurationResponse')
    DeleteClusterRequest = Shapes::StructureShape.new(name: 'DeleteClusterRequest')
    DeleteClusterResponse = Shapes::StructureShape.new(name: 'DeleteClusterResponse')
    DescribeClusterRequest = Shapes::StructureShape.new(name: 'DescribeClusterRequest')
    DescribeClusterResponse = Shapes::StructureShape.new(name: 'DescribeClusterResponse')
    DescribeConfigurationRequest = Shapes::StructureShape.new(name: 'DescribeConfigurationRequest')
    DescribeConfigurationResponse = Shapes::StructureShape.new(name: 'DescribeConfigurationResponse')
    DescribeConfigurationRevisionRequest = Shapes::StructureShape.new(name: 'DescribeConfigurationRevisionRequest')
    DescribeConfigurationRevisionResponse = Shapes::StructureShape.new(name: 'DescribeConfigurationRevisionResponse')
    EBSStorageInfo = Shapes::StructureShape.new(name: 'EBSStorageInfo')
    EncryptionAtRest = Shapes::StructureShape.new(name: 'EncryptionAtRest')
    EncryptionInfo = Shapes::StructureShape.new(name: 'EncryptionInfo')
    EnhancedMonitoring = Shapes::StringShape.new(name: 'EnhancedMonitoring')
    Error = Shapes::StructureShape.new(name: 'Error')
    ForbiddenException = Shapes::StructureShape.new(name: 'ForbiddenException')
    GetBootstrapBrokersRequest = Shapes::StructureShape.new(name: 'GetBootstrapBrokersRequest')
    GetBootstrapBrokersResponse = Shapes::StructureShape.new(name: 'GetBootstrapBrokersResponse')
    InternalServerErrorException = Shapes::StructureShape.new(name: 'InternalServerErrorException')
    ListClustersRequest = Shapes::StructureShape.new(name: 'ListClustersRequest')
    ListClustersResponse = Shapes::StructureShape.new(name: 'ListClustersResponse')
    ListConfigurationsRequest = Shapes::StructureShape.new(name: 'ListConfigurationsRequest')
    ListConfigurationsResponse = Shapes::StructureShape.new(name: 'ListConfigurationsResponse')
    ListNodesRequest = Shapes::StructureShape.new(name: 'ListNodesRequest')
    ListNodesResponse = Shapes::StructureShape.new(name: 'ListNodesResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    NodeInfo = Shapes::StructureShape.new(name: 'NodeInfo')
    NodeType = Shapes::StringShape.new(name: 'NodeType')
    NotFoundException = Shapes::StructureShape.new(name: 'NotFoundException')
    ServiceUnavailableException = Shapes::StructureShape.new(name: 'ServiceUnavailableException')
    StorageInfo = Shapes::StructureShape.new(name: 'StorageInfo')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TooManyRequestsException = Shapes::StructureShape.new(name: 'TooManyRequestsException')
    UnauthorizedException = Shapes::StructureShape.new(name: 'UnauthorizedException')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    ZookeeperNodeInfo = Shapes::StructureShape.new(name: 'ZookeeperNodeInfo')
    __blob = Shapes::BlobShape.new(name: '__blob')
    __boolean = Shapes::BooleanShape.new(name: '__boolean')
    __double = Shapes::FloatShape.new(name: '__double')
    __integer = Shapes::IntegerShape.new(name: '__integer')
    __integerMin1Max15 = Shapes::IntegerShape.new(name: '__integerMin1Max15')
    __integerMin1Max16384 = Shapes::IntegerShape.new(name: '__integerMin1Max16384')
    __listOfClusterInfo = Shapes::ListShape.new(name: '__listOfClusterInfo')
    __listOfConfiguration = Shapes::ListShape.new(name: '__listOfConfiguration')
    __listOfNodeInfo = Shapes::ListShape.new(name: '__listOfNodeInfo')
    __listOf__string = Shapes::ListShape.new(name: '__listOf__string')
    __long = Shapes::IntegerShape.new(name: '__long')
    __mapOf__string = Shapes::MapShape.new(name: '__mapOf__string')
    __string = Shapes::StringShape.new(name: '__string')
    __stringMin1Max128 = Shapes::StringShape.new(name: '__stringMin1Max128')
    __stringMin1Max64 = Shapes::StringShape.new(name: '__stringMin1Max64')
    __stringMin5Max32 = Shapes::StringShape.new(name: '__stringMin5Max32')
    __timestampIso8601 = Shapes::TimestampShape.new(name: '__timestampIso8601', timestampFormat: "iso8601")
    __timestampUnix = Shapes::TimestampShape.new(name: '__timestampUnix', timestampFormat: "unixTimestamp")

    BadRequestException.add_member(:invalid_parameter, Shapes::ShapeRef.new(shape: __string, location_name: "invalidParameter"))
    BadRequestException.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "message"))
    BadRequestException.struct_class = Types::BadRequestException

    BrokerNodeGroupInfo.add_member(:broker_az_distribution, Shapes::ShapeRef.new(shape: BrokerAZDistribution, location_name: "brokerAZDistribution"))
    BrokerNodeGroupInfo.add_member(:client_subnets, Shapes::ShapeRef.new(shape: __listOf__string, required: true, location_name: "clientSubnets"))
    BrokerNodeGroupInfo.add_member(:instance_type, Shapes::ShapeRef.new(shape: __stringMin5Max32, required: true, location_name: "instanceType"))
    BrokerNodeGroupInfo.add_member(:security_groups, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "securityGroups"))
    BrokerNodeGroupInfo.add_member(:storage_info, Shapes::ShapeRef.new(shape: StorageInfo, location_name: "storageInfo"))
    BrokerNodeGroupInfo.struct_class = Types::BrokerNodeGroupInfo

    BrokerNodeInfo.add_member(:attached_eni_id, Shapes::ShapeRef.new(shape: __string, location_name: "attachedENIId"))
    BrokerNodeInfo.add_member(:broker_id, Shapes::ShapeRef.new(shape: __double, location_name: "brokerId"))
    BrokerNodeInfo.add_member(:client_subnet, Shapes::ShapeRef.new(shape: __string, location_name: "clientSubnet"))
    BrokerNodeInfo.add_member(:client_vpc_ip_address, Shapes::ShapeRef.new(shape: __string, location_name: "clientVpcIpAddress"))
    BrokerNodeInfo.add_member(:current_broker_software_info, Shapes::ShapeRef.new(shape: BrokerSoftwareInfo, location_name: "currentBrokerSoftwareInfo"))
    BrokerNodeInfo.struct_class = Types::BrokerNodeInfo

    BrokerSoftwareInfo.add_member(:configuration_arn, Shapes::ShapeRef.new(shape: __string, location_name: "configurationArn"))
    BrokerSoftwareInfo.add_member(:configuration_revision, Shapes::ShapeRef.new(shape: __long, location_name: "configurationRevision"))
    BrokerSoftwareInfo.add_member(:kafka_version, Shapes::ShapeRef.new(shape: __string, location_name: "kafkaVersion"))
    BrokerSoftwareInfo.struct_class = Types::BrokerSoftwareInfo

    ClusterInfo.add_member(:broker_node_group_info, Shapes::ShapeRef.new(shape: BrokerNodeGroupInfo, location_name: "brokerNodeGroupInfo"))
    ClusterInfo.add_member(:cluster_arn, Shapes::ShapeRef.new(shape: __string, location_name: "clusterArn"))
    ClusterInfo.add_member(:cluster_name, Shapes::ShapeRef.new(shape: __string, location_name: "clusterName"))
    ClusterInfo.add_member(:creation_time, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "creationTime"))
    ClusterInfo.add_member(:current_broker_software_info, Shapes::ShapeRef.new(shape: BrokerSoftwareInfo, location_name: "currentBrokerSoftwareInfo"))
    ClusterInfo.add_member(:current_version, Shapes::ShapeRef.new(shape: __string, location_name: "currentVersion"))
    ClusterInfo.add_member(:encryption_info, Shapes::ShapeRef.new(shape: EncryptionInfo, location_name: "encryptionInfo"))
    ClusterInfo.add_member(:enhanced_monitoring, Shapes::ShapeRef.new(shape: EnhancedMonitoring, location_name: "enhancedMonitoring"))
    ClusterInfo.add_member(:number_of_broker_nodes, Shapes::ShapeRef.new(shape: __integer, location_name: "numberOfBrokerNodes"))
    ClusterInfo.add_member(:state, Shapes::ShapeRef.new(shape: ClusterState, location_name: "state"))
    ClusterInfo.add_member(:zookeeper_connect_string, Shapes::ShapeRef.new(shape: __string, location_name: "zookeeperConnectString"))
    ClusterInfo.struct_class = Types::ClusterInfo

    Configuration.add_member(:arn, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "arn"))
    Configuration.add_member(:creation_time, Shapes::ShapeRef.new(shape: __timestampIso8601, required: true, location_name: "creationTime"))
    Configuration.add_member(:description, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "description"))
    Configuration.add_member(:kafka_versions, Shapes::ShapeRef.new(shape: __listOf__string, required: true, location_name: "kafkaVersions"))
    Configuration.add_member(:latest_revision, Shapes::ShapeRef.new(shape: ConfigurationRevision, required: true, location_name: "latestRevision"))
    Configuration.add_member(:name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "name"))
    Configuration.struct_class = Types::Configuration

    ConfigurationInfo.add_member(:arn, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "arn"))
    ConfigurationInfo.add_member(:revision, Shapes::ShapeRef.new(shape: __long, required: true, location_name: "revision"))
    ConfigurationInfo.struct_class = Types::ConfigurationInfo

    ConfigurationRevision.add_member(:creation_time, Shapes::ShapeRef.new(shape: __timestampIso8601, required: true, location_name: "creationTime"))
    ConfigurationRevision.add_member(:description, Shapes::ShapeRef.new(shape: __string, location_name: "description"))
    ConfigurationRevision.add_member(:revision, Shapes::ShapeRef.new(shape: __long, required: true, location_name: "revision"))
    ConfigurationRevision.struct_class = Types::ConfigurationRevision

    ConflictException.add_member(:invalid_parameter, Shapes::ShapeRef.new(shape: __string, location_name: "invalidParameter"))
    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "message"))
    ConflictException.struct_class = Types::ConflictException

    CreateClusterRequest.add_member(:broker_node_group_info, Shapes::ShapeRef.new(shape: BrokerNodeGroupInfo, required: true, location_name: "brokerNodeGroupInfo"))
    CreateClusterRequest.add_member(:cluster_name, Shapes::ShapeRef.new(shape: __stringMin1Max64, required: true, location_name: "clusterName"))
    CreateClusterRequest.add_member(:configuration_info, Shapes::ShapeRef.new(shape: ConfigurationInfo, location_name: "configurationInfo"))
    CreateClusterRequest.add_member(:encryption_info, Shapes::ShapeRef.new(shape: EncryptionInfo, location_name: "encryptionInfo"))
    CreateClusterRequest.add_member(:enhanced_monitoring, Shapes::ShapeRef.new(shape: EnhancedMonitoring, location_name: "enhancedMonitoring"))
    CreateClusterRequest.add_member(:kafka_version, Shapes::ShapeRef.new(shape: __stringMin1Max128, required: true, location_name: "kafkaVersion"))
    CreateClusterRequest.add_member(:number_of_broker_nodes, Shapes::ShapeRef.new(shape: __integerMin1Max15, required: true, location_name: "numberOfBrokerNodes"))
    CreateClusterRequest.struct_class = Types::CreateClusterRequest

    CreateClusterResponse.add_member(:cluster_arn, Shapes::ShapeRef.new(shape: __string, location_name: "clusterArn"))
    CreateClusterResponse.add_member(:cluster_name, Shapes::ShapeRef.new(shape: __string, location_name: "clusterName"))
    CreateClusterResponse.add_member(:state, Shapes::ShapeRef.new(shape: ClusterState, location_name: "state"))
    CreateClusterResponse.struct_class = Types::CreateClusterResponse

    CreateConfigurationRequest.add_member(:description, Shapes::ShapeRef.new(shape: __string, location_name: "description"))
    CreateConfigurationRequest.add_member(:kafka_versions, Shapes::ShapeRef.new(shape: __listOf__string, required: true, location_name: "kafkaVersions"))
    CreateConfigurationRequest.add_member(:name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "name"))
    CreateConfigurationRequest.add_member(:server_properties, Shapes::ShapeRef.new(shape: __blob, required: true, location_name: "serverProperties"))
    CreateConfigurationRequest.struct_class = Types::CreateConfigurationRequest

    CreateConfigurationResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    CreateConfigurationResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "creationTime"))
    CreateConfigurationResponse.add_member(:latest_revision, Shapes::ShapeRef.new(shape: ConfigurationRevision, location_name: "latestRevision"))
    CreateConfigurationResponse.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    CreateConfigurationResponse.struct_class = Types::CreateConfigurationResponse

    DeleteClusterRequest.add_member(:cluster_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "clusterArn"))
    DeleteClusterRequest.add_member(:current_version, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "currentVersion"))
    DeleteClusterRequest.struct_class = Types::DeleteClusterRequest

    DeleteClusterResponse.add_member(:cluster_arn, Shapes::ShapeRef.new(shape: __string, location_name: "clusterArn"))
    DeleteClusterResponse.add_member(:state, Shapes::ShapeRef.new(shape: ClusterState, location_name: "state"))
    DeleteClusterResponse.struct_class = Types::DeleteClusterResponse

    DescribeClusterRequest.add_member(:cluster_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "clusterArn"))
    DescribeClusterRequest.struct_class = Types::DescribeClusterRequest

    DescribeClusterResponse.add_member(:cluster_info, Shapes::ShapeRef.new(shape: ClusterInfo, location_name: "clusterInfo"))
    DescribeClusterResponse.struct_class = Types::DescribeClusterResponse

    DescribeConfigurationRequest.add_member(:arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "arn"))
    DescribeConfigurationRequest.struct_class = Types::DescribeConfigurationRequest

    DescribeConfigurationResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    DescribeConfigurationResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "creationTime"))
    DescribeConfigurationResponse.add_member(:description, Shapes::ShapeRef.new(shape: __string, location_name: "description"))
    DescribeConfigurationResponse.add_member(:kafka_versions, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "kafkaVersions"))
    DescribeConfigurationResponse.add_member(:latest_revision, Shapes::ShapeRef.new(shape: ConfigurationRevision, location_name: "latestRevision"))
    DescribeConfigurationResponse.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    DescribeConfigurationResponse.struct_class = Types::DescribeConfigurationResponse

    DescribeConfigurationRevisionRequest.add_member(:arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "arn"))
    DescribeConfigurationRevisionRequest.add_member(:revision, Shapes::ShapeRef.new(shape: __long, required: true, location: "uri", location_name: "revision"))
    DescribeConfigurationRevisionRequest.struct_class = Types::DescribeConfigurationRevisionRequest

    DescribeConfigurationRevisionResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    DescribeConfigurationRevisionResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "creationTime"))
    DescribeConfigurationRevisionResponse.add_member(:description, Shapes::ShapeRef.new(shape: __string, location_name: "description"))
    DescribeConfigurationRevisionResponse.add_member(:revision, Shapes::ShapeRef.new(shape: __long, location_name: "revision"))
    DescribeConfigurationRevisionResponse.add_member(:server_properties, Shapes::ShapeRef.new(shape: __blob, location_name: "serverProperties"))
    DescribeConfigurationRevisionResponse.struct_class = Types::DescribeConfigurationRevisionResponse

    EBSStorageInfo.add_member(:volume_size, Shapes::ShapeRef.new(shape: __integerMin1Max16384, location_name: "volumeSize"))
    EBSStorageInfo.struct_class = Types::EBSStorageInfo

    EncryptionAtRest.add_member(:data_volume_kms_key_id, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "dataVolumeKMSKeyId"))
    EncryptionAtRest.struct_class = Types::EncryptionAtRest

    EncryptionInfo.add_member(:encryption_at_rest, Shapes::ShapeRef.new(shape: EncryptionAtRest, location_name: "encryptionAtRest"))
    EncryptionInfo.struct_class = Types::EncryptionInfo

    Error.add_member(:invalid_parameter, Shapes::ShapeRef.new(shape: __string, location_name: "invalidParameter"))
    Error.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "message"))
    Error.struct_class = Types::Error

    ForbiddenException.add_member(:invalid_parameter, Shapes::ShapeRef.new(shape: __string, location_name: "invalidParameter"))
    ForbiddenException.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "message"))
    ForbiddenException.struct_class = Types::ForbiddenException

    GetBootstrapBrokersRequest.add_member(:cluster_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "clusterArn"))
    GetBootstrapBrokersRequest.struct_class = Types::GetBootstrapBrokersRequest

    GetBootstrapBrokersResponse.add_member(:bootstrap_broker_string, Shapes::ShapeRef.new(shape: __string, location_name: "bootstrapBrokerString"))
    GetBootstrapBrokersResponse.struct_class = Types::GetBootstrapBrokersResponse

    InternalServerErrorException.add_member(:invalid_parameter, Shapes::ShapeRef.new(shape: __string, location_name: "invalidParameter"))
    InternalServerErrorException.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "message"))
    InternalServerErrorException.struct_class = Types::InternalServerErrorException

    ListClustersRequest.add_member(:cluster_name_filter, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "clusterNameFilter"))
    ListClustersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListClustersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    ListClustersRequest.struct_class = Types::ListClustersRequest

    ListClustersResponse.add_member(:cluster_info_list, Shapes::ShapeRef.new(shape: __listOfClusterInfo, location_name: "clusterInfoList"))
    ListClustersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListClustersResponse.struct_class = Types::ListClustersResponse

    ListConfigurationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "maxResults"))
    ListConfigurationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    ListConfigurationsRequest.struct_class = Types::ListConfigurationsRequest

    ListConfigurationsResponse.add_member(:configurations, Shapes::ShapeRef.new(shape: __listOfConfiguration, location_name: "configurations"))
    ListConfigurationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListConfigurationsResponse.struct_class = Types::ListConfigurationsResponse

    ListNodesRequest.add_member(:cluster_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "clusterArn"))
    ListNodesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListNodesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    ListNodesRequest.struct_class = Types::ListNodesRequest

    ListNodesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListNodesResponse.add_member(:node_info_list, Shapes::ShapeRef.new(shape: __listOfNodeInfo, location_name: "nodeInfoList"))
    ListNodesResponse.struct_class = Types::ListNodesResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: __mapOf__string, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    NodeInfo.add_member(:added_to_cluster_time, Shapes::ShapeRef.new(shape: __string, location_name: "addedToClusterTime"))
    NodeInfo.add_member(:broker_node_info, Shapes::ShapeRef.new(shape: BrokerNodeInfo, location_name: "brokerNodeInfo"))
    NodeInfo.add_member(:instance_type, Shapes::ShapeRef.new(shape: __string, location_name: "instanceType"))
    NodeInfo.add_member(:node_arn, Shapes::ShapeRef.new(shape: __string, location_name: "nodeARN"))
    NodeInfo.add_member(:node_type, Shapes::ShapeRef.new(shape: NodeType, location_name: "nodeType"))
    NodeInfo.add_member(:zookeeper_node_info, Shapes::ShapeRef.new(shape: ZookeeperNodeInfo, location_name: "zookeeperNodeInfo"))
    NodeInfo.struct_class = Types::NodeInfo

    NotFoundException.add_member(:invalid_parameter, Shapes::ShapeRef.new(shape: __string, location_name: "invalidParameter"))
    NotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "message"))
    NotFoundException.struct_class = Types::NotFoundException

    ServiceUnavailableException.add_member(:invalid_parameter, Shapes::ShapeRef.new(shape: __string, location_name: "invalidParameter"))
    ServiceUnavailableException.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "message"))
    ServiceUnavailableException.struct_class = Types::ServiceUnavailableException

    StorageInfo.add_member(:ebs_storage_info, Shapes::ShapeRef.new(shape: EBSStorageInfo, location_name: "ebsStorageInfo"))
    StorageInfo.struct_class = Types::StorageInfo

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: __mapOf__string, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TooManyRequestsException.add_member(:invalid_parameter, Shapes::ShapeRef.new(shape: __string, location_name: "invalidParameter"))
    TooManyRequestsException.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "message"))
    TooManyRequestsException.struct_class = Types::TooManyRequestsException

    UnauthorizedException.add_member(:invalid_parameter, Shapes::ShapeRef.new(shape: __string, location_name: "invalidParameter"))
    UnauthorizedException.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "message"))
    UnauthorizedException.struct_class = Types::UnauthorizedException

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: __listOf__string, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    ZookeeperNodeInfo.add_member(:attached_eni_id, Shapes::ShapeRef.new(shape: __string, location_name: "attachedENIId"))
    ZookeeperNodeInfo.add_member(:client_vpc_ip_address, Shapes::ShapeRef.new(shape: __string, location_name: "clientVpcIpAddress"))
    ZookeeperNodeInfo.add_member(:zookeeper_id, Shapes::ShapeRef.new(shape: __double, location_name: "zookeeperId"))
    ZookeeperNodeInfo.add_member(:zookeeper_version, Shapes::ShapeRef.new(shape: __string, location_name: "zookeeperVersion"))
    ZookeeperNodeInfo.struct_class = Types::ZookeeperNodeInfo

    __listOfClusterInfo.member = Shapes::ShapeRef.new(shape: ClusterInfo)

    __listOfConfiguration.member = Shapes::ShapeRef.new(shape: Configuration)

    __listOfNodeInfo.member = Shapes::ShapeRef.new(shape: NodeInfo)

    __listOf__string.member = Shapes::ShapeRef.new(shape: __string)

    __mapOf__string.key = Shapes::ShapeRef.new(shape: __string)
    __mapOf__string.value = Shapes::ShapeRef.new(shape: __string)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2018-11-14"

      api.metadata = {
        "apiVersion" => "2018-11-14",
        "endpointPrefix" => "kafka",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceAbbreviation" => "Kafka",
        "serviceFullName" => "Managed Streaming for Kafka",
        "serviceId" => "Kafka",
        "signatureVersion" => "v4",
        "signingName" => "kafka",
        "uid" => "kafka-2018-11-14",
      }

      api.add_operation(:create_cluster, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateCluster"
        o.http_method = "POST"
        o.http_request_uri = "/v1/clusters"
        o.input = Shapes::ShapeRef.new(shape: CreateClusterRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateClusterResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:create_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/v1/configurations"
        o.input = Shapes::ShapeRef.new(shape: CreateConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_cluster, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteCluster"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/clusters/{clusterArn}"
        o.input = Shapes::ShapeRef.new(shape: DeleteClusterRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteClusterResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
      end)

      api.add_operation(:describe_cluster, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeCluster"
        o.http_method = "GET"
        o.http_request_uri = "/v1/clusters/{clusterArn}"
        o.input = Shapes::ShapeRef.new(shape: DescribeClusterRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeClusterResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
      end)

      api.add_operation(:describe_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeConfiguration"
        o.http_method = "GET"
        o.http_request_uri = "/v1/configurations/{arn}"
        o.input = Shapes::ShapeRef.new(shape: DescribeConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:describe_configuration_revision, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeConfigurationRevision"
        o.http_method = "GET"
        o.http_request_uri = "/v1/configurations/{arn}/revisions/{revision}"
        o.input = Shapes::ShapeRef.new(shape: DescribeConfigurationRevisionRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeConfigurationRevisionResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:get_bootstrap_brokers, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetBootstrapBrokers"
        o.http_method = "GET"
        o.http_request_uri = "/v1/clusters/{clusterArn}/bootstrap-brokers"
        o.input = Shapes::ShapeRef.new(shape: GetBootstrapBrokersRequest)
        o.output = Shapes::ShapeRef.new(shape: GetBootstrapBrokersResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
      end)

      api.add_operation(:list_clusters, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListClusters"
        o.http_method = "GET"
        o.http_request_uri = "/v1/clusters"
        o.input = Shapes::ShapeRef.new(shape: ListClustersRequest)
        o.output = Shapes::ShapeRef.new(shape: ListClustersResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_configurations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListConfigurations"
        o.http_method = "GET"
        o.http_request_uri = "/v1/configurations"
        o.input = Shapes::ShapeRef.new(shape: ListConfigurationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListConfigurationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_nodes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListNodes"
        o.http_method = "GET"
        o.http_request_uri = "/v1/clusters/{clusterArn}/nodes"
        o.input = Shapes::ShapeRef.new(shape: ListNodesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListNodesResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
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
        o.http_request_uri = "/v1/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/v1/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)
    end

  end
end
