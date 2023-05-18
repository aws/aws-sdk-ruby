# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Kafka
  # @api private
  module ClientApi

    include Seahorse::Model

    BadRequestException = Shapes::StructureShape.new(name: 'BadRequestException')
    BatchAssociateScramSecretRequest = Shapes::StructureShape.new(name: 'BatchAssociateScramSecretRequest')
    BatchAssociateScramSecretResponse = Shapes::StructureShape.new(name: 'BatchAssociateScramSecretResponse')
    BatchDisassociateScramSecretRequest = Shapes::StructureShape.new(name: 'BatchDisassociateScramSecretRequest')
    BatchDisassociateScramSecretResponse = Shapes::StructureShape.new(name: 'BatchDisassociateScramSecretResponse')
    BrokerAZDistribution = Shapes::StringShape.new(name: 'BrokerAZDistribution')
    BrokerEBSVolumeInfo = Shapes::StructureShape.new(name: 'BrokerEBSVolumeInfo')
    BrokerLogs = Shapes::StructureShape.new(name: 'BrokerLogs')
    BrokerNodeGroupInfo = Shapes::StructureShape.new(name: 'BrokerNodeGroupInfo')
    BrokerNodeInfo = Shapes::StructureShape.new(name: 'BrokerNodeInfo')
    BrokerSoftwareInfo = Shapes::StructureShape.new(name: 'BrokerSoftwareInfo')
    ClientAuthentication = Shapes::StructureShape.new(name: 'ClientAuthentication')
    ClientBroker = Shapes::StringShape.new(name: 'ClientBroker')
    ClientVpcConnection = Shapes::StructureShape.new(name: 'ClientVpcConnection')
    CloudWatchLogs = Shapes::StructureShape.new(name: 'CloudWatchLogs')
    Cluster = Shapes::StructureShape.new(name: 'Cluster')
    ClusterInfo = Shapes::StructureShape.new(name: 'ClusterInfo')
    ClusterOperationInfo = Shapes::StructureShape.new(name: 'ClusterOperationInfo')
    ClusterOperationStep = Shapes::StructureShape.new(name: 'ClusterOperationStep')
    ClusterOperationStepInfo = Shapes::StructureShape.new(name: 'ClusterOperationStepInfo')
    ClusterState = Shapes::StringShape.new(name: 'ClusterState')
    ClusterType = Shapes::StringShape.new(name: 'ClusterType')
    CompatibleKafkaVersion = Shapes::StructureShape.new(name: 'CompatibleKafkaVersion')
    Configuration = Shapes::StructureShape.new(name: 'Configuration')
    ConfigurationInfo = Shapes::StructureShape.new(name: 'ConfigurationInfo')
    ConfigurationRevision = Shapes::StructureShape.new(name: 'ConfigurationRevision')
    ConfigurationState = Shapes::StringShape.new(name: 'ConfigurationState')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    ConnectivityInfo = Shapes::StructureShape.new(name: 'ConnectivityInfo')
    CreateClusterRequest = Shapes::StructureShape.new(name: 'CreateClusterRequest')
    CreateClusterResponse = Shapes::StructureShape.new(name: 'CreateClusterResponse')
    CreateClusterV2Request = Shapes::StructureShape.new(name: 'CreateClusterV2Request')
    CreateClusterV2Response = Shapes::StructureShape.new(name: 'CreateClusterV2Response')
    CreateConfigurationRequest = Shapes::StructureShape.new(name: 'CreateConfigurationRequest')
    CreateConfigurationResponse = Shapes::StructureShape.new(name: 'CreateConfigurationResponse')
    CreateVpcConnectionRequest = Shapes::StructureShape.new(name: 'CreateVpcConnectionRequest')
    CreateVpcConnectionResponse = Shapes::StructureShape.new(name: 'CreateVpcConnectionResponse')
    DeleteClusterPolicyRequest = Shapes::StructureShape.new(name: 'DeleteClusterPolicyRequest')
    DeleteClusterPolicyResponse = Shapes::StructureShape.new(name: 'DeleteClusterPolicyResponse')
    DeleteClusterRequest = Shapes::StructureShape.new(name: 'DeleteClusterRequest')
    DeleteClusterResponse = Shapes::StructureShape.new(name: 'DeleteClusterResponse')
    DeleteConfigurationRequest = Shapes::StructureShape.new(name: 'DeleteConfigurationRequest')
    DeleteConfigurationResponse = Shapes::StructureShape.new(name: 'DeleteConfigurationResponse')
    DeleteVpcConnectionRequest = Shapes::StructureShape.new(name: 'DeleteVpcConnectionRequest')
    DeleteVpcConnectionResponse = Shapes::StructureShape.new(name: 'DeleteVpcConnectionResponse')
    DescribeClusterOperationRequest = Shapes::StructureShape.new(name: 'DescribeClusterOperationRequest')
    DescribeClusterOperationResponse = Shapes::StructureShape.new(name: 'DescribeClusterOperationResponse')
    DescribeClusterRequest = Shapes::StructureShape.new(name: 'DescribeClusterRequest')
    DescribeClusterResponse = Shapes::StructureShape.new(name: 'DescribeClusterResponse')
    DescribeClusterV2Request = Shapes::StructureShape.new(name: 'DescribeClusterV2Request')
    DescribeClusterV2Response = Shapes::StructureShape.new(name: 'DescribeClusterV2Response')
    DescribeConfigurationRequest = Shapes::StructureShape.new(name: 'DescribeConfigurationRequest')
    DescribeConfigurationResponse = Shapes::StructureShape.new(name: 'DescribeConfigurationResponse')
    DescribeConfigurationRevisionRequest = Shapes::StructureShape.new(name: 'DescribeConfigurationRevisionRequest')
    DescribeConfigurationRevisionResponse = Shapes::StructureShape.new(name: 'DescribeConfigurationRevisionResponse')
    DescribeVpcConnectionRequest = Shapes::StructureShape.new(name: 'DescribeVpcConnectionRequest')
    DescribeVpcConnectionResponse = Shapes::StructureShape.new(name: 'DescribeVpcConnectionResponse')
    EBSStorageInfo = Shapes::StructureShape.new(name: 'EBSStorageInfo')
    EncryptionAtRest = Shapes::StructureShape.new(name: 'EncryptionAtRest')
    EncryptionInTransit = Shapes::StructureShape.new(name: 'EncryptionInTransit')
    EncryptionInfo = Shapes::StructureShape.new(name: 'EncryptionInfo')
    EnhancedMonitoring = Shapes::StringShape.new(name: 'EnhancedMonitoring')
    Error = Shapes::StructureShape.new(name: 'Error')
    ErrorInfo = Shapes::StructureShape.new(name: 'ErrorInfo')
    Firehose = Shapes::StructureShape.new(name: 'Firehose')
    ForbiddenException = Shapes::StructureShape.new(name: 'ForbiddenException')
    GetBootstrapBrokersRequest = Shapes::StructureShape.new(name: 'GetBootstrapBrokersRequest')
    GetBootstrapBrokersResponse = Shapes::StructureShape.new(name: 'GetBootstrapBrokersResponse')
    GetClusterPolicyRequest = Shapes::StructureShape.new(name: 'GetClusterPolicyRequest')
    GetClusterPolicyResponse = Shapes::StructureShape.new(name: 'GetClusterPolicyResponse')
    GetCompatibleKafkaVersionsRequest = Shapes::StructureShape.new(name: 'GetCompatibleKafkaVersionsRequest')
    GetCompatibleKafkaVersionsResponse = Shapes::StructureShape.new(name: 'GetCompatibleKafkaVersionsResponse')
    Iam = Shapes::StructureShape.new(name: 'Iam')
    InternalServerErrorException = Shapes::StructureShape.new(name: 'InternalServerErrorException')
    JmxExporter = Shapes::StructureShape.new(name: 'JmxExporter')
    JmxExporterInfo = Shapes::StructureShape.new(name: 'JmxExporterInfo')
    KafkaVersion = Shapes::StructureShape.new(name: 'KafkaVersion')
    KafkaVersionStatus = Shapes::StringShape.new(name: 'KafkaVersionStatus')
    ListClientVpcConnectionsRequest = Shapes::StructureShape.new(name: 'ListClientVpcConnectionsRequest')
    ListClientVpcConnectionsResponse = Shapes::StructureShape.new(name: 'ListClientVpcConnectionsResponse')
    ListClusterOperationsRequest = Shapes::StructureShape.new(name: 'ListClusterOperationsRequest')
    ListClusterOperationsResponse = Shapes::StructureShape.new(name: 'ListClusterOperationsResponse')
    ListClustersRequest = Shapes::StructureShape.new(name: 'ListClustersRequest')
    ListClustersResponse = Shapes::StructureShape.new(name: 'ListClustersResponse')
    ListClustersV2Request = Shapes::StructureShape.new(name: 'ListClustersV2Request')
    ListClustersV2Response = Shapes::StructureShape.new(name: 'ListClustersV2Response')
    ListConfigurationRevisionsRequest = Shapes::StructureShape.new(name: 'ListConfigurationRevisionsRequest')
    ListConfigurationRevisionsResponse = Shapes::StructureShape.new(name: 'ListConfigurationRevisionsResponse')
    ListConfigurationsRequest = Shapes::StructureShape.new(name: 'ListConfigurationsRequest')
    ListConfigurationsResponse = Shapes::StructureShape.new(name: 'ListConfigurationsResponse')
    ListKafkaVersionsRequest = Shapes::StructureShape.new(name: 'ListKafkaVersionsRequest')
    ListKafkaVersionsResponse = Shapes::StructureShape.new(name: 'ListKafkaVersionsResponse')
    ListNodesRequest = Shapes::StructureShape.new(name: 'ListNodesRequest')
    ListNodesResponse = Shapes::StructureShape.new(name: 'ListNodesResponse')
    ListScramSecretsRequest = Shapes::StructureShape.new(name: 'ListScramSecretsRequest')
    ListScramSecretsResponse = Shapes::StructureShape.new(name: 'ListScramSecretsResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    ListVpcConnectionsRequest = Shapes::StructureShape.new(name: 'ListVpcConnectionsRequest')
    ListVpcConnectionsResponse = Shapes::StructureShape.new(name: 'ListVpcConnectionsResponse')
    LoggingInfo = Shapes::StructureShape.new(name: 'LoggingInfo')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    MutableClusterInfo = Shapes::StructureShape.new(name: 'MutableClusterInfo')
    NodeExporter = Shapes::StructureShape.new(name: 'NodeExporter')
    NodeExporterInfo = Shapes::StructureShape.new(name: 'NodeExporterInfo')
    NodeInfo = Shapes::StructureShape.new(name: 'NodeInfo')
    NodeType = Shapes::StringShape.new(name: 'NodeType')
    NotFoundException = Shapes::StructureShape.new(name: 'NotFoundException')
    OpenMonitoring = Shapes::StructureShape.new(name: 'OpenMonitoring')
    OpenMonitoringInfo = Shapes::StructureShape.new(name: 'OpenMonitoringInfo')
    Prometheus = Shapes::StructureShape.new(name: 'Prometheus')
    PrometheusInfo = Shapes::StructureShape.new(name: 'PrometheusInfo')
    Provisioned = Shapes::StructureShape.new(name: 'Provisioned')
    ProvisionedRequest = Shapes::StructureShape.new(name: 'ProvisionedRequest')
    ProvisionedThroughput = Shapes::StructureShape.new(name: 'ProvisionedThroughput')
    PublicAccess = Shapes::StructureShape.new(name: 'PublicAccess')
    PutClusterPolicyRequest = Shapes::StructureShape.new(name: 'PutClusterPolicyRequest')
    PutClusterPolicyResponse = Shapes::StructureShape.new(name: 'PutClusterPolicyResponse')
    RebootBrokerRequest = Shapes::StructureShape.new(name: 'RebootBrokerRequest')
    RebootBrokerResponse = Shapes::StructureShape.new(name: 'RebootBrokerResponse')
    RejectClientVpcConnectionRequest = Shapes::StructureShape.new(name: 'RejectClientVpcConnectionRequest')
    RejectClientVpcConnectionResponse = Shapes::StructureShape.new(name: 'RejectClientVpcConnectionResponse')
    S3 = Shapes::StructureShape.new(name: 'S3')
    Sasl = Shapes::StructureShape.new(name: 'Sasl')
    Scram = Shapes::StructureShape.new(name: 'Scram')
    Serverless = Shapes::StructureShape.new(name: 'Serverless')
    ServerlessClientAuthentication = Shapes::StructureShape.new(name: 'ServerlessClientAuthentication')
    ServerlessRequest = Shapes::StructureShape.new(name: 'ServerlessRequest')
    ServerlessSasl = Shapes::StructureShape.new(name: 'ServerlessSasl')
    ServiceUnavailableException = Shapes::StructureShape.new(name: 'ServiceUnavailableException')
    StateInfo = Shapes::StructureShape.new(name: 'StateInfo')
    StorageInfo = Shapes::StructureShape.new(name: 'StorageInfo')
    StorageMode = Shapes::StringShape.new(name: 'StorageMode')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    Tls = Shapes::StructureShape.new(name: 'Tls')
    TooManyRequestsException = Shapes::StructureShape.new(name: 'TooManyRequestsException')
    Unauthenticated = Shapes::StructureShape.new(name: 'Unauthenticated')
    UnauthorizedException = Shapes::StructureShape.new(name: 'UnauthorizedException')
    UnprocessedScramSecret = Shapes::StructureShape.new(name: 'UnprocessedScramSecret')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UpdateBrokerCountRequest = Shapes::StructureShape.new(name: 'UpdateBrokerCountRequest')
    UpdateBrokerCountResponse = Shapes::StructureShape.new(name: 'UpdateBrokerCountResponse')
    UpdateBrokerStorageRequest = Shapes::StructureShape.new(name: 'UpdateBrokerStorageRequest')
    UpdateBrokerStorageResponse = Shapes::StructureShape.new(name: 'UpdateBrokerStorageResponse')
    UpdateBrokerTypeRequest = Shapes::StructureShape.new(name: 'UpdateBrokerTypeRequest')
    UpdateBrokerTypeResponse = Shapes::StructureShape.new(name: 'UpdateBrokerTypeResponse')
    UpdateClusterConfigurationRequest = Shapes::StructureShape.new(name: 'UpdateClusterConfigurationRequest')
    UpdateClusterConfigurationResponse = Shapes::StructureShape.new(name: 'UpdateClusterConfigurationResponse')
    UpdateClusterKafkaVersionRequest = Shapes::StructureShape.new(name: 'UpdateClusterKafkaVersionRequest')
    UpdateClusterKafkaVersionResponse = Shapes::StructureShape.new(name: 'UpdateClusterKafkaVersionResponse')
    UpdateConfigurationRequest = Shapes::StructureShape.new(name: 'UpdateConfigurationRequest')
    UpdateConfigurationResponse = Shapes::StructureShape.new(name: 'UpdateConfigurationResponse')
    UpdateConnectivityRequest = Shapes::StructureShape.new(name: 'UpdateConnectivityRequest')
    UpdateConnectivityResponse = Shapes::StructureShape.new(name: 'UpdateConnectivityResponse')
    UpdateMonitoringRequest = Shapes::StructureShape.new(name: 'UpdateMonitoringRequest')
    UpdateMonitoringResponse = Shapes::StructureShape.new(name: 'UpdateMonitoringResponse')
    UpdateSecurityRequest = Shapes::StructureShape.new(name: 'UpdateSecurityRequest')
    UpdateSecurityResponse = Shapes::StructureShape.new(name: 'UpdateSecurityResponse')
    UpdateStorageRequest = Shapes::StructureShape.new(name: 'UpdateStorageRequest')
    UpdateStorageResponse = Shapes::StructureShape.new(name: 'UpdateStorageResponse')
    UserIdentity = Shapes::StructureShape.new(name: 'UserIdentity')
    UserIdentityType = Shapes::StringShape.new(name: 'UserIdentityType')
    VpcConfig = Shapes::StructureShape.new(name: 'VpcConfig')
    VpcConnection = Shapes::StructureShape.new(name: 'VpcConnection')
    VpcConnectionInfo = Shapes::StructureShape.new(name: 'VpcConnectionInfo')
    VpcConnectionState = Shapes::StringShape.new(name: 'VpcConnectionState')
    VpcConnectivity = Shapes::StructureShape.new(name: 'VpcConnectivity')
    VpcConnectivityClientAuthentication = Shapes::StructureShape.new(name: 'VpcConnectivityClientAuthentication')
    VpcConnectivityIam = Shapes::StructureShape.new(name: 'VpcConnectivityIam')
    VpcConnectivitySasl = Shapes::StructureShape.new(name: 'VpcConnectivitySasl')
    VpcConnectivityScram = Shapes::StructureShape.new(name: 'VpcConnectivityScram')
    VpcConnectivityTls = Shapes::StructureShape.new(name: 'VpcConnectivityTls')
    ZookeeperNodeInfo = Shapes::StructureShape.new(name: 'ZookeeperNodeInfo')
    __blob = Shapes::BlobShape.new(name: '__blob')
    __boolean = Shapes::BooleanShape.new(name: '__boolean')
    __double = Shapes::FloatShape.new(name: '__double')
    __integer = Shapes::IntegerShape.new(name: '__integer')
    __integerMin1Max15 = Shapes::IntegerShape.new(name: '__integerMin1Max15')
    __integerMin1Max16384 = Shapes::IntegerShape.new(name: '__integerMin1Max16384')
    __listOfBrokerEBSVolumeInfo = Shapes::ListShape.new(name: '__listOfBrokerEBSVolumeInfo')
    __listOfClientVpcConnection = Shapes::ListShape.new(name: '__listOfClientVpcConnection')
    __listOfCluster = Shapes::ListShape.new(name: '__listOfCluster')
    __listOfClusterInfo = Shapes::ListShape.new(name: '__listOfClusterInfo')
    __listOfClusterOperationInfo = Shapes::ListShape.new(name: '__listOfClusterOperationInfo')
    __listOfClusterOperationStep = Shapes::ListShape.new(name: '__listOfClusterOperationStep')
    __listOfCompatibleKafkaVersion = Shapes::ListShape.new(name: '__listOfCompatibleKafkaVersion')
    __listOfConfiguration = Shapes::ListShape.new(name: '__listOfConfiguration')
    __listOfConfigurationRevision = Shapes::ListShape.new(name: '__listOfConfigurationRevision')
    __listOfKafkaVersion = Shapes::ListShape.new(name: '__listOfKafkaVersion')
    __listOfNodeInfo = Shapes::ListShape.new(name: '__listOfNodeInfo')
    __listOfUnprocessedScramSecret = Shapes::ListShape.new(name: '__listOfUnprocessedScramSecret')
    __listOfVpcConfig = Shapes::ListShape.new(name: '__listOfVpcConfig')
    __listOfVpcConnection = Shapes::ListShape.new(name: '__listOfVpcConnection')
    __listOf__string = Shapes::ListShape.new(name: '__listOf__string')
    __long = Shapes::IntegerShape.new(name: '__long')
    __mapOf__string = Shapes::MapShape.new(name: '__mapOf__string')
    __string = Shapes::StringShape.new(name: '__string')
    __stringMin1Max128 = Shapes::StringShape.new(name: '__stringMin1Max128')
    __stringMin1Max64 = Shapes::StringShape.new(name: '__stringMin1Max64')
    __stringMin5Max32 = Shapes::StringShape.new(name: '__stringMin5Max32')
    __timestampIso8601 = Shapes::TimestampShape.new(name: '__timestampIso8601', timestampFormat: "iso8601")

    BadRequestException.add_member(:invalid_parameter, Shapes::ShapeRef.new(shape: __string, location_name: "invalidParameter"))
    BadRequestException.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "message"))
    BadRequestException.struct_class = Types::BadRequestException

    BatchAssociateScramSecretRequest.add_member(:cluster_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "clusterArn"))
    BatchAssociateScramSecretRequest.add_member(:secret_arn_list, Shapes::ShapeRef.new(shape: __listOf__string, required: true, location_name: "secretArnList"))
    BatchAssociateScramSecretRequest.struct_class = Types::BatchAssociateScramSecretRequest

    BatchAssociateScramSecretResponse.add_member(:cluster_arn, Shapes::ShapeRef.new(shape: __string, location_name: "clusterArn"))
    BatchAssociateScramSecretResponse.add_member(:unprocessed_scram_secrets, Shapes::ShapeRef.new(shape: __listOfUnprocessedScramSecret, location_name: "unprocessedScramSecrets"))
    BatchAssociateScramSecretResponse.struct_class = Types::BatchAssociateScramSecretResponse

    BatchDisassociateScramSecretRequest.add_member(:cluster_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "clusterArn"))
    BatchDisassociateScramSecretRequest.add_member(:secret_arn_list, Shapes::ShapeRef.new(shape: __listOf__string, required: true, location_name: "secretArnList"))
    BatchDisassociateScramSecretRequest.struct_class = Types::BatchDisassociateScramSecretRequest

    BatchDisassociateScramSecretResponse.add_member(:cluster_arn, Shapes::ShapeRef.new(shape: __string, location_name: "clusterArn"))
    BatchDisassociateScramSecretResponse.add_member(:unprocessed_scram_secrets, Shapes::ShapeRef.new(shape: __listOfUnprocessedScramSecret, location_name: "unprocessedScramSecrets"))
    BatchDisassociateScramSecretResponse.struct_class = Types::BatchDisassociateScramSecretResponse

    BrokerEBSVolumeInfo.add_member(:kafka_broker_node_id, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "kafkaBrokerNodeId"))
    BrokerEBSVolumeInfo.add_member(:provisioned_throughput, Shapes::ShapeRef.new(shape: ProvisionedThroughput, location_name: "provisionedThroughput"))
    BrokerEBSVolumeInfo.add_member(:volume_size_gb, Shapes::ShapeRef.new(shape: __integer, location_name: "volumeSizeGB"))
    BrokerEBSVolumeInfo.struct_class = Types::BrokerEBSVolumeInfo

    BrokerLogs.add_member(:cloud_watch_logs, Shapes::ShapeRef.new(shape: CloudWatchLogs, location_name: "cloudWatchLogs"))
    BrokerLogs.add_member(:firehose, Shapes::ShapeRef.new(shape: Firehose, location_name: "firehose"))
    BrokerLogs.add_member(:s3, Shapes::ShapeRef.new(shape: S3, location_name: "s3"))
    BrokerLogs.struct_class = Types::BrokerLogs

    BrokerNodeGroupInfo.add_member(:broker_az_distribution, Shapes::ShapeRef.new(shape: BrokerAZDistribution, location_name: "brokerAZDistribution"))
    BrokerNodeGroupInfo.add_member(:client_subnets, Shapes::ShapeRef.new(shape: __listOf__string, required: true, location_name: "clientSubnets"))
    BrokerNodeGroupInfo.add_member(:instance_type, Shapes::ShapeRef.new(shape: __stringMin5Max32, required: true, location_name: "instanceType"))
    BrokerNodeGroupInfo.add_member(:security_groups, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "securityGroups"))
    BrokerNodeGroupInfo.add_member(:storage_info, Shapes::ShapeRef.new(shape: StorageInfo, location_name: "storageInfo"))
    BrokerNodeGroupInfo.add_member(:connectivity_info, Shapes::ShapeRef.new(shape: ConnectivityInfo, location_name: "connectivityInfo"))
    BrokerNodeGroupInfo.add_member(:zone_ids, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "zoneIds"))
    BrokerNodeGroupInfo.struct_class = Types::BrokerNodeGroupInfo

    BrokerNodeInfo.add_member(:attached_eni_id, Shapes::ShapeRef.new(shape: __string, location_name: "attachedENIId"))
    BrokerNodeInfo.add_member(:broker_id, Shapes::ShapeRef.new(shape: __double, location_name: "brokerId"))
    BrokerNodeInfo.add_member(:client_subnet, Shapes::ShapeRef.new(shape: __string, location_name: "clientSubnet"))
    BrokerNodeInfo.add_member(:client_vpc_ip_address, Shapes::ShapeRef.new(shape: __string, location_name: "clientVpcIpAddress"))
    BrokerNodeInfo.add_member(:current_broker_software_info, Shapes::ShapeRef.new(shape: BrokerSoftwareInfo, location_name: "currentBrokerSoftwareInfo"))
    BrokerNodeInfo.add_member(:endpoints, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "endpoints"))
    BrokerNodeInfo.struct_class = Types::BrokerNodeInfo

    BrokerSoftwareInfo.add_member(:configuration_arn, Shapes::ShapeRef.new(shape: __string, location_name: "configurationArn"))
    BrokerSoftwareInfo.add_member(:configuration_revision, Shapes::ShapeRef.new(shape: __long, location_name: "configurationRevision"))
    BrokerSoftwareInfo.add_member(:kafka_version, Shapes::ShapeRef.new(shape: __string, location_name: "kafkaVersion"))
    BrokerSoftwareInfo.struct_class = Types::BrokerSoftwareInfo

    ClientAuthentication.add_member(:sasl, Shapes::ShapeRef.new(shape: Sasl, location_name: "sasl"))
    ClientAuthentication.add_member(:tls, Shapes::ShapeRef.new(shape: Tls, location_name: "tls"))
    ClientAuthentication.add_member(:unauthenticated, Shapes::ShapeRef.new(shape: Unauthenticated, location_name: "unauthenticated"))
    ClientAuthentication.struct_class = Types::ClientAuthentication

    ClientVpcConnection.add_member(:authentication, Shapes::ShapeRef.new(shape: __string, location_name: "authentication"))
    ClientVpcConnection.add_member(:creation_time, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "creationTime"))
    ClientVpcConnection.add_member(:state, Shapes::ShapeRef.new(shape: VpcConnectionState, location_name: "state"))
    ClientVpcConnection.add_member(:vpc_connection_arn, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "vpcConnectionArn"))
    ClientVpcConnection.add_member(:owner, Shapes::ShapeRef.new(shape: __string, location_name: "owner"))
    ClientVpcConnection.struct_class = Types::ClientVpcConnection

    CloudWatchLogs.add_member(:enabled, Shapes::ShapeRef.new(shape: __boolean, required: true, location_name: "enabled"))
    CloudWatchLogs.add_member(:log_group, Shapes::ShapeRef.new(shape: __string, location_name: "logGroup"))
    CloudWatchLogs.struct_class = Types::CloudWatchLogs

    Cluster.add_member(:active_operation_arn, Shapes::ShapeRef.new(shape: __string, location_name: "activeOperationArn"))
    Cluster.add_member(:cluster_type, Shapes::ShapeRef.new(shape: ClusterType, location_name: "clusterType"))
    Cluster.add_member(:cluster_arn, Shapes::ShapeRef.new(shape: __string, location_name: "clusterArn"))
    Cluster.add_member(:cluster_name, Shapes::ShapeRef.new(shape: __string, location_name: "clusterName"))
    Cluster.add_member(:creation_time, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "creationTime"))
    Cluster.add_member(:current_version, Shapes::ShapeRef.new(shape: __string, location_name: "currentVersion"))
    Cluster.add_member(:state, Shapes::ShapeRef.new(shape: ClusterState, location_name: "state"))
    Cluster.add_member(:state_info, Shapes::ShapeRef.new(shape: StateInfo, location_name: "stateInfo"))
    Cluster.add_member(:tags, Shapes::ShapeRef.new(shape: __mapOf__string, location_name: "tags"))
    Cluster.add_member(:provisioned, Shapes::ShapeRef.new(shape: Provisioned, location_name: "provisioned"))
    Cluster.add_member(:serverless, Shapes::ShapeRef.new(shape: Serverless, location_name: "serverless"))
    Cluster.struct_class = Types::Cluster

    ClusterInfo.add_member(:active_operation_arn, Shapes::ShapeRef.new(shape: __string, location_name: "activeOperationArn"))
    ClusterInfo.add_member(:broker_node_group_info, Shapes::ShapeRef.new(shape: BrokerNodeGroupInfo, location_name: "brokerNodeGroupInfo"))
    ClusterInfo.add_member(:client_authentication, Shapes::ShapeRef.new(shape: ClientAuthentication, location_name: "clientAuthentication"))
    ClusterInfo.add_member(:cluster_arn, Shapes::ShapeRef.new(shape: __string, location_name: "clusterArn"))
    ClusterInfo.add_member(:cluster_name, Shapes::ShapeRef.new(shape: __string, location_name: "clusterName"))
    ClusterInfo.add_member(:creation_time, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "creationTime"))
    ClusterInfo.add_member(:current_broker_software_info, Shapes::ShapeRef.new(shape: BrokerSoftwareInfo, location_name: "currentBrokerSoftwareInfo"))
    ClusterInfo.add_member(:logging_info, Shapes::ShapeRef.new(shape: LoggingInfo, location_name: "loggingInfo"))
    ClusterInfo.add_member(:current_version, Shapes::ShapeRef.new(shape: __string, location_name: "currentVersion"))
    ClusterInfo.add_member(:encryption_info, Shapes::ShapeRef.new(shape: EncryptionInfo, location_name: "encryptionInfo"))
    ClusterInfo.add_member(:enhanced_monitoring, Shapes::ShapeRef.new(shape: EnhancedMonitoring, location_name: "enhancedMonitoring"))
    ClusterInfo.add_member(:number_of_broker_nodes, Shapes::ShapeRef.new(shape: __integer, location_name: "numberOfBrokerNodes"))
    ClusterInfo.add_member(:open_monitoring, Shapes::ShapeRef.new(shape: OpenMonitoring, location_name: "openMonitoring"))
    ClusterInfo.add_member(:state, Shapes::ShapeRef.new(shape: ClusterState, location_name: "state"))
    ClusterInfo.add_member(:state_info, Shapes::ShapeRef.new(shape: StateInfo, location_name: "stateInfo"))
    ClusterInfo.add_member(:tags, Shapes::ShapeRef.new(shape: __mapOf__string, location_name: "tags"))
    ClusterInfo.add_member(:zookeeper_connect_string, Shapes::ShapeRef.new(shape: __string, location_name: "zookeeperConnectString"))
    ClusterInfo.add_member(:zookeeper_connect_string_tls, Shapes::ShapeRef.new(shape: __string, location_name: "zookeeperConnectStringTls"))
    ClusterInfo.add_member(:storage_mode, Shapes::ShapeRef.new(shape: StorageMode, location_name: "storageMode"))
    ClusterInfo.struct_class = Types::ClusterInfo

    ClusterOperationInfo.add_member(:client_request_id, Shapes::ShapeRef.new(shape: __string, location_name: "clientRequestId"))
    ClusterOperationInfo.add_member(:cluster_arn, Shapes::ShapeRef.new(shape: __string, location_name: "clusterArn"))
    ClusterOperationInfo.add_member(:creation_time, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "creationTime"))
    ClusterOperationInfo.add_member(:end_time, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "endTime"))
    ClusterOperationInfo.add_member(:error_info, Shapes::ShapeRef.new(shape: ErrorInfo, location_name: "errorInfo"))
    ClusterOperationInfo.add_member(:operation_steps, Shapes::ShapeRef.new(shape: __listOfClusterOperationStep, location_name: "operationSteps"))
    ClusterOperationInfo.add_member(:operation_arn, Shapes::ShapeRef.new(shape: __string, location_name: "operationArn"))
    ClusterOperationInfo.add_member(:operation_state, Shapes::ShapeRef.new(shape: __string, location_name: "operationState"))
    ClusterOperationInfo.add_member(:operation_type, Shapes::ShapeRef.new(shape: __string, location_name: "operationType"))
    ClusterOperationInfo.add_member(:source_cluster_info, Shapes::ShapeRef.new(shape: MutableClusterInfo, location_name: "sourceClusterInfo"))
    ClusterOperationInfo.add_member(:target_cluster_info, Shapes::ShapeRef.new(shape: MutableClusterInfo, location_name: "targetClusterInfo"))
    ClusterOperationInfo.add_member(:vpc_connection_info, Shapes::ShapeRef.new(shape: VpcConnectionInfo, location_name: "vpcConnectionInfo"))
    ClusterOperationInfo.struct_class = Types::ClusterOperationInfo

    ClusterOperationStep.add_member(:step_info, Shapes::ShapeRef.new(shape: ClusterOperationStepInfo, location_name: "stepInfo"))
    ClusterOperationStep.add_member(:step_name, Shapes::ShapeRef.new(shape: __string, location_name: "stepName"))
    ClusterOperationStep.struct_class = Types::ClusterOperationStep

    ClusterOperationStepInfo.add_member(:step_status, Shapes::ShapeRef.new(shape: __string, location_name: "stepStatus"))
    ClusterOperationStepInfo.struct_class = Types::ClusterOperationStepInfo

    CompatibleKafkaVersion.add_member(:source_version, Shapes::ShapeRef.new(shape: __string, location_name: "sourceVersion"))
    CompatibleKafkaVersion.add_member(:target_versions, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "targetVersions"))
    CompatibleKafkaVersion.struct_class = Types::CompatibleKafkaVersion

    Configuration.add_member(:arn, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "arn"))
    Configuration.add_member(:creation_time, Shapes::ShapeRef.new(shape: __timestampIso8601, required: true, location_name: "creationTime"))
    Configuration.add_member(:description, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "description"))
    Configuration.add_member(:kafka_versions, Shapes::ShapeRef.new(shape: __listOf__string, required: true, location_name: "kafkaVersions"))
    Configuration.add_member(:latest_revision, Shapes::ShapeRef.new(shape: ConfigurationRevision, required: true, location_name: "latestRevision"))
    Configuration.add_member(:name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "name"))
    Configuration.add_member(:state, Shapes::ShapeRef.new(shape: ConfigurationState, required: true, location_name: "state"))
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

    ConnectivityInfo.add_member(:public_access, Shapes::ShapeRef.new(shape: PublicAccess, location_name: "publicAccess"))
    ConnectivityInfo.add_member(:vpc_connectivity, Shapes::ShapeRef.new(shape: VpcConnectivity, location_name: "vpcConnectivity"))
    ConnectivityInfo.struct_class = Types::ConnectivityInfo

    CreateClusterRequest.add_member(:broker_node_group_info, Shapes::ShapeRef.new(shape: BrokerNodeGroupInfo, required: true, location_name: "brokerNodeGroupInfo"))
    CreateClusterRequest.add_member(:client_authentication, Shapes::ShapeRef.new(shape: ClientAuthentication, location_name: "clientAuthentication"))
    CreateClusterRequest.add_member(:cluster_name, Shapes::ShapeRef.new(shape: __stringMin1Max64, required: true, location_name: "clusterName"))
    CreateClusterRequest.add_member(:configuration_info, Shapes::ShapeRef.new(shape: ConfigurationInfo, location_name: "configurationInfo"))
    CreateClusterRequest.add_member(:encryption_info, Shapes::ShapeRef.new(shape: EncryptionInfo, location_name: "encryptionInfo"))
    CreateClusterRequest.add_member(:enhanced_monitoring, Shapes::ShapeRef.new(shape: EnhancedMonitoring, location_name: "enhancedMonitoring"))
    CreateClusterRequest.add_member(:kafka_version, Shapes::ShapeRef.new(shape: __stringMin1Max128, required: true, location_name: "kafkaVersion"))
    CreateClusterRequest.add_member(:logging_info, Shapes::ShapeRef.new(shape: LoggingInfo, location_name: "loggingInfo"))
    CreateClusterRequest.add_member(:number_of_broker_nodes, Shapes::ShapeRef.new(shape: __integerMin1Max15, required: true, location_name: "numberOfBrokerNodes"))
    CreateClusterRequest.add_member(:open_monitoring, Shapes::ShapeRef.new(shape: OpenMonitoringInfo, location_name: "openMonitoring"))
    CreateClusterRequest.add_member(:tags, Shapes::ShapeRef.new(shape: __mapOf__string, location_name: "tags"))
    CreateClusterRequest.add_member(:storage_mode, Shapes::ShapeRef.new(shape: StorageMode, location_name: "storageMode"))
    CreateClusterRequest.struct_class = Types::CreateClusterRequest

    CreateClusterResponse.add_member(:cluster_arn, Shapes::ShapeRef.new(shape: __string, location_name: "clusterArn"))
    CreateClusterResponse.add_member(:cluster_name, Shapes::ShapeRef.new(shape: __string, location_name: "clusterName"))
    CreateClusterResponse.add_member(:state, Shapes::ShapeRef.new(shape: ClusterState, location_name: "state"))
    CreateClusterResponse.struct_class = Types::CreateClusterResponse

    CreateClusterV2Request.add_member(:cluster_name, Shapes::ShapeRef.new(shape: __stringMin1Max64, required: true, location_name: "clusterName"))
    CreateClusterV2Request.add_member(:tags, Shapes::ShapeRef.new(shape: __mapOf__string, location_name: "tags"))
    CreateClusterV2Request.add_member(:provisioned, Shapes::ShapeRef.new(shape: ProvisionedRequest, location_name: "provisioned"))
    CreateClusterV2Request.add_member(:serverless, Shapes::ShapeRef.new(shape: ServerlessRequest, location_name: "serverless"))
    CreateClusterV2Request.struct_class = Types::CreateClusterV2Request

    CreateClusterV2Response.add_member(:cluster_arn, Shapes::ShapeRef.new(shape: __string, location_name: "clusterArn"))
    CreateClusterV2Response.add_member(:cluster_name, Shapes::ShapeRef.new(shape: __string, location_name: "clusterName"))
    CreateClusterV2Response.add_member(:state, Shapes::ShapeRef.new(shape: ClusterState, location_name: "state"))
    CreateClusterV2Response.add_member(:cluster_type, Shapes::ShapeRef.new(shape: ClusterType, location_name: "clusterType"))
    CreateClusterV2Response.struct_class = Types::CreateClusterV2Response

    CreateConfigurationRequest.add_member(:description, Shapes::ShapeRef.new(shape: __string, location_name: "description"))
    CreateConfigurationRequest.add_member(:kafka_versions, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "kafkaVersions"))
    CreateConfigurationRequest.add_member(:name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "name"))
    CreateConfigurationRequest.add_member(:server_properties, Shapes::ShapeRef.new(shape: __blob, required: true, location_name: "serverProperties"))
    CreateConfigurationRequest.struct_class = Types::CreateConfigurationRequest

    CreateConfigurationResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    CreateConfigurationResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "creationTime"))
    CreateConfigurationResponse.add_member(:latest_revision, Shapes::ShapeRef.new(shape: ConfigurationRevision, location_name: "latestRevision"))
    CreateConfigurationResponse.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    CreateConfigurationResponse.add_member(:state, Shapes::ShapeRef.new(shape: ConfigurationState, location_name: "state"))
    CreateConfigurationResponse.struct_class = Types::CreateConfigurationResponse

    CreateVpcConnectionRequest.add_member(:target_cluster_arn, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "targetClusterArn"))
    CreateVpcConnectionRequest.add_member(:authentication, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "authentication"))
    CreateVpcConnectionRequest.add_member(:vpc_id, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "vpcId"))
    CreateVpcConnectionRequest.add_member(:client_subnets, Shapes::ShapeRef.new(shape: __listOf__string, required: true, location_name: "clientSubnets"))
    CreateVpcConnectionRequest.add_member(:security_groups, Shapes::ShapeRef.new(shape: __listOf__string, required: true, location_name: "securityGroups"))
    CreateVpcConnectionRequest.add_member(:tags, Shapes::ShapeRef.new(shape: __mapOf__string, location_name: "tags"))
    CreateVpcConnectionRequest.struct_class = Types::CreateVpcConnectionRequest

    CreateVpcConnectionResponse.add_member(:vpc_connection_arn, Shapes::ShapeRef.new(shape: __string, location_name: "vpcConnectionArn"))
    CreateVpcConnectionResponse.add_member(:state, Shapes::ShapeRef.new(shape: VpcConnectionState, location_name: "state"))
    CreateVpcConnectionResponse.add_member(:authentication, Shapes::ShapeRef.new(shape: __string, location_name: "authentication"))
    CreateVpcConnectionResponse.add_member(:vpc_id, Shapes::ShapeRef.new(shape: __string, location_name: "vpcId"))
    CreateVpcConnectionResponse.add_member(:client_subnets, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "clientSubnets"))
    CreateVpcConnectionResponse.add_member(:security_groups, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "securityGroups"))
    CreateVpcConnectionResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "creationTime"))
    CreateVpcConnectionResponse.add_member(:tags, Shapes::ShapeRef.new(shape: __mapOf__string, location_name: "tags"))
    CreateVpcConnectionResponse.struct_class = Types::CreateVpcConnectionResponse

    DeleteClusterPolicyRequest.add_member(:cluster_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "clusterArn"))
    DeleteClusterPolicyRequest.struct_class = Types::DeleteClusterPolicyRequest

    DeleteClusterPolicyResponse.struct_class = Types::DeleteClusterPolicyResponse

    DeleteClusterRequest.add_member(:cluster_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "clusterArn"))
    DeleteClusterRequest.add_member(:current_version, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "currentVersion"))
    DeleteClusterRequest.struct_class = Types::DeleteClusterRequest

    DeleteClusterResponse.add_member(:cluster_arn, Shapes::ShapeRef.new(shape: __string, location_name: "clusterArn"))
    DeleteClusterResponse.add_member(:state, Shapes::ShapeRef.new(shape: ClusterState, location_name: "state"))
    DeleteClusterResponse.struct_class = Types::DeleteClusterResponse

    DeleteConfigurationRequest.add_member(:arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "arn"))
    DeleteConfigurationRequest.struct_class = Types::DeleteConfigurationRequest

    DeleteConfigurationResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    DeleteConfigurationResponse.add_member(:state, Shapes::ShapeRef.new(shape: ConfigurationState, location_name: "state"))
    DeleteConfigurationResponse.struct_class = Types::DeleteConfigurationResponse

    DeleteVpcConnectionRequest.add_member(:arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "arn"))
    DeleteVpcConnectionRequest.struct_class = Types::DeleteVpcConnectionRequest

    DeleteVpcConnectionResponse.add_member(:vpc_connection_arn, Shapes::ShapeRef.new(shape: __string, location_name: "vpcConnectionArn"))
    DeleteVpcConnectionResponse.add_member(:state, Shapes::ShapeRef.new(shape: VpcConnectionState, location_name: "state"))
    DeleteVpcConnectionResponse.struct_class = Types::DeleteVpcConnectionResponse

    DescribeClusterOperationRequest.add_member(:cluster_operation_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "clusterOperationArn"))
    DescribeClusterOperationRequest.struct_class = Types::DescribeClusterOperationRequest

    DescribeClusterOperationResponse.add_member(:cluster_operation_info, Shapes::ShapeRef.new(shape: ClusterOperationInfo, location_name: "clusterOperationInfo"))
    DescribeClusterOperationResponse.struct_class = Types::DescribeClusterOperationResponse

    DescribeClusterRequest.add_member(:cluster_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "clusterArn"))
    DescribeClusterRequest.struct_class = Types::DescribeClusterRequest

    DescribeClusterResponse.add_member(:cluster_info, Shapes::ShapeRef.new(shape: ClusterInfo, location_name: "clusterInfo"))
    DescribeClusterResponse.struct_class = Types::DescribeClusterResponse

    DescribeClusterV2Request.add_member(:cluster_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "clusterArn"))
    DescribeClusterV2Request.struct_class = Types::DescribeClusterV2Request

    DescribeClusterV2Response.add_member(:cluster_info, Shapes::ShapeRef.new(shape: Cluster, location_name: "clusterInfo"))
    DescribeClusterV2Response.struct_class = Types::DescribeClusterV2Response

    DescribeConfigurationRequest.add_member(:arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "arn"))
    DescribeConfigurationRequest.struct_class = Types::DescribeConfigurationRequest

    DescribeConfigurationResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    DescribeConfigurationResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "creationTime"))
    DescribeConfigurationResponse.add_member(:description, Shapes::ShapeRef.new(shape: __string, location_name: "description"))
    DescribeConfigurationResponse.add_member(:kafka_versions, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "kafkaVersions"))
    DescribeConfigurationResponse.add_member(:latest_revision, Shapes::ShapeRef.new(shape: ConfigurationRevision, location_name: "latestRevision"))
    DescribeConfigurationResponse.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    DescribeConfigurationResponse.add_member(:state, Shapes::ShapeRef.new(shape: ConfigurationState, location_name: "state"))
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

    DescribeVpcConnectionRequest.add_member(:arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "arn"))
    DescribeVpcConnectionRequest.struct_class = Types::DescribeVpcConnectionRequest

    DescribeVpcConnectionResponse.add_member(:vpc_connection_arn, Shapes::ShapeRef.new(shape: __string, location_name: "vpcConnectionArn"))
    DescribeVpcConnectionResponse.add_member(:target_cluster_arn, Shapes::ShapeRef.new(shape: __string, location_name: "targetClusterArn"))
    DescribeVpcConnectionResponse.add_member(:state, Shapes::ShapeRef.new(shape: VpcConnectionState, location_name: "state"))
    DescribeVpcConnectionResponse.add_member(:authentication, Shapes::ShapeRef.new(shape: __string, location_name: "authentication"))
    DescribeVpcConnectionResponse.add_member(:vpc_id, Shapes::ShapeRef.new(shape: __string, location_name: "vpcId"))
    DescribeVpcConnectionResponse.add_member(:subnets, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "subnets"))
    DescribeVpcConnectionResponse.add_member(:security_groups, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "securityGroups"))
    DescribeVpcConnectionResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "creationTime"))
    DescribeVpcConnectionResponse.add_member(:tags, Shapes::ShapeRef.new(shape: __mapOf__string, location_name: "tags"))
    DescribeVpcConnectionResponse.struct_class = Types::DescribeVpcConnectionResponse

    EBSStorageInfo.add_member(:provisioned_throughput, Shapes::ShapeRef.new(shape: ProvisionedThroughput, location_name: "provisionedThroughput"))
    EBSStorageInfo.add_member(:volume_size, Shapes::ShapeRef.new(shape: __integerMin1Max16384, location_name: "volumeSize"))
    EBSStorageInfo.struct_class = Types::EBSStorageInfo

    EncryptionAtRest.add_member(:data_volume_kms_key_id, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "dataVolumeKMSKeyId"))
    EncryptionAtRest.struct_class = Types::EncryptionAtRest

    EncryptionInTransit.add_member(:client_broker, Shapes::ShapeRef.new(shape: ClientBroker, location_name: "clientBroker"))
    EncryptionInTransit.add_member(:in_cluster, Shapes::ShapeRef.new(shape: __boolean, location_name: "inCluster"))
    EncryptionInTransit.struct_class = Types::EncryptionInTransit

    EncryptionInfo.add_member(:encryption_at_rest, Shapes::ShapeRef.new(shape: EncryptionAtRest, location_name: "encryptionAtRest"))
    EncryptionInfo.add_member(:encryption_in_transit, Shapes::ShapeRef.new(shape: EncryptionInTransit, location_name: "encryptionInTransit"))
    EncryptionInfo.struct_class = Types::EncryptionInfo

    Error.add_member(:invalid_parameter, Shapes::ShapeRef.new(shape: __string, location_name: "invalidParameter"))
    Error.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "message"))
    Error.struct_class = Types::Error

    ErrorInfo.add_member(:error_code, Shapes::ShapeRef.new(shape: __string, location_name: "errorCode"))
    ErrorInfo.add_member(:error_string, Shapes::ShapeRef.new(shape: __string, location_name: "errorString"))
    ErrorInfo.struct_class = Types::ErrorInfo

    Firehose.add_member(:delivery_stream, Shapes::ShapeRef.new(shape: __string, location_name: "deliveryStream"))
    Firehose.add_member(:enabled, Shapes::ShapeRef.new(shape: __boolean, required: true, location_name: "enabled"))
    Firehose.struct_class = Types::Firehose

    ForbiddenException.add_member(:invalid_parameter, Shapes::ShapeRef.new(shape: __string, location_name: "invalidParameter"))
    ForbiddenException.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "message"))
    ForbiddenException.struct_class = Types::ForbiddenException

    GetBootstrapBrokersRequest.add_member(:cluster_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "clusterArn"))
    GetBootstrapBrokersRequest.struct_class = Types::GetBootstrapBrokersRequest

    GetBootstrapBrokersResponse.add_member(:bootstrap_broker_string, Shapes::ShapeRef.new(shape: __string, location_name: "bootstrapBrokerString"))
    GetBootstrapBrokersResponse.add_member(:bootstrap_broker_string_public_sasl_iam, Shapes::ShapeRef.new(shape: __string, location_name: "bootstrapBrokerStringPublicSaslIam"))
    GetBootstrapBrokersResponse.add_member(:bootstrap_broker_string_public_sasl_scram, Shapes::ShapeRef.new(shape: __string, location_name: "bootstrapBrokerStringPublicSaslScram"))
    GetBootstrapBrokersResponse.add_member(:bootstrap_broker_string_public_tls, Shapes::ShapeRef.new(shape: __string, location_name: "bootstrapBrokerStringPublicTls"))
    GetBootstrapBrokersResponse.add_member(:bootstrap_broker_string_tls, Shapes::ShapeRef.new(shape: __string, location_name: "bootstrapBrokerStringTls"))
    GetBootstrapBrokersResponse.add_member(:bootstrap_broker_string_sasl_scram, Shapes::ShapeRef.new(shape: __string, location_name: "bootstrapBrokerStringSaslScram"))
    GetBootstrapBrokersResponse.add_member(:bootstrap_broker_string_sasl_iam, Shapes::ShapeRef.new(shape: __string, location_name: "bootstrapBrokerStringSaslIam"))
    GetBootstrapBrokersResponse.add_member(:bootstrap_broker_string_vpc_connectivity_tls, Shapes::ShapeRef.new(shape: __string, location_name: "bootstrapBrokerStringVpcConnectivityTls"))
    GetBootstrapBrokersResponse.add_member(:bootstrap_broker_string_vpc_connectivity_sasl_scram, Shapes::ShapeRef.new(shape: __string, location_name: "bootstrapBrokerStringVpcConnectivitySaslScram"))
    GetBootstrapBrokersResponse.add_member(:bootstrap_broker_string_vpc_connectivity_sasl_iam, Shapes::ShapeRef.new(shape: __string, location_name: "bootstrapBrokerStringVpcConnectivitySaslIam"))
    GetBootstrapBrokersResponse.struct_class = Types::GetBootstrapBrokersResponse

    GetClusterPolicyRequest.add_member(:cluster_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "clusterArn"))
    GetClusterPolicyRequest.struct_class = Types::GetClusterPolicyRequest

    GetClusterPolicyResponse.add_member(:current_version, Shapes::ShapeRef.new(shape: __string, location_name: "currentVersion"))
    GetClusterPolicyResponse.add_member(:policy, Shapes::ShapeRef.new(shape: __string, location_name: "policy"))
    GetClusterPolicyResponse.struct_class = Types::GetClusterPolicyResponse

    GetCompatibleKafkaVersionsRequest.add_member(:cluster_arn, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "clusterArn"))
    GetCompatibleKafkaVersionsRequest.struct_class = Types::GetCompatibleKafkaVersionsRequest

    GetCompatibleKafkaVersionsResponse.add_member(:compatible_kafka_versions, Shapes::ShapeRef.new(shape: __listOfCompatibleKafkaVersion, location_name: "compatibleKafkaVersions"))
    GetCompatibleKafkaVersionsResponse.struct_class = Types::GetCompatibleKafkaVersionsResponse

    Iam.add_member(:enabled, Shapes::ShapeRef.new(shape: __boolean, location_name: "enabled"))
    Iam.struct_class = Types::Iam

    InternalServerErrorException.add_member(:invalid_parameter, Shapes::ShapeRef.new(shape: __string, location_name: "invalidParameter"))
    InternalServerErrorException.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "message"))
    InternalServerErrorException.struct_class = Types::InternalServerErrorException

    JmxExporter.add_member(:enabled_in_broker, Shapes::ShapeRef.new(shape: __boolean, required: true, location_name: "enabledInBroker"))
    JmxExporter.struct_class = Types::JmxExporter

    JmxExporterInfo.add_member(:enabled_in_broker, Shapes::ShapeRef.new(shape: __boolean, required: true, location_name: "enabledInBroker"))
    JmxExporterInfo.struct_class = Types::JmxExporterInfo

    KafkaVersion.add_member(:version, Shapes::ShapeRef.new(shape: __string, location_name: "version"))
    KafkaVersion.add_member(:status, Shapes::ShapeRef.new(shape: KafkaVersionStatus, location_name: "status"))
    KafkaVersion.struct_class = Types::KafkaVersion

    ListClientVpcConnectionsRequest.add_member(:cluster_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "clusterArn"))
    ListClientVpcConnectionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListClientVpcConnectionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    ListClientVpcConnectionsRequest.struct_class = Types::ListClientVpcConnectionsRequest

    ListClientVpcConnectionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListClientVpcConnectionsResponse.add_member(:client_vpc_connections, Shapes::ShapeRef.new(shape: __listOfClientVpcConnection, location_name: "clientVpcConnections"))
    ListClientVpcConnectionsResponse.struct_class = Types::ListClientVpcConnectionsResponse

    ListClusterOperationsRequest.add_member(:cluster_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "clusterArn"))
    ListClusterOperationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListClusterOperationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    ListClusterOperationsRequest.struct_class = Types::ListClusterOperationsRequest

    ListClusterOperationsResponse.add_member(:cluster_operation_info_list, Shapes::ShapeRef.new(shape: __listOfClusterOperationInfo, location_name: "clusterOperationInfoList"))
    ListClusterOperationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListClusterOperationsResponse.struct_class = Types::ListClusterOperationsResponse

    ListClustersRequest.add_member(:cluster_name_filter, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "clusterNameFilter"))
    ListClustersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListClustersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    ListClustersRequest.struct_class = Types::ListClustersRequest

    ListClustersResponse.add_member(:cluster_info_list, Shapes::ShapeRef.new(shape: __listOfClusterInfo, location_name: "clusterInfoList"))
    ListClustersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListClustersResponse.struct_class = Types::ListClustersResponse

    ListClustersV2Request.add_member(:cluster_name_filter, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "clusterNameFilter"))
    ListClustersV2Request.add_member(:cluster_type_filter, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "clusterTypeFilter"))
    ListClustersV2Request.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListClustersV2Request.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    ListClustersV2Request.struct_class = Types::ListClustersV2Request

    ListClustersV2Response.add_member(:cluster_info_list, Shapes::ShapeRef.new(shape: __listOfCluster, location_name: "clusterInfoList"))
    ListClustersV2Response.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListClustersV2Response.struct_class = Types::ListClustersV2Response

    ListConfigurationRevisionsRequest.add_member(:arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "arn"))
    ListConfigurationRevisionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListConfigurationRevisionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    ListConfigurationRevisionsRequest.struct_class = Types::ListConfigurationRevisionsRequest

    ListConfigurationRevisionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListConfigurationRevisionsResponse.add_member(:revisions, Shapes::ShapeRef.new(shape: __listOfConfigurationRevision, location_name: "revisions"))
    ListConfigurationRevisionsResponse.struct_class = Types::ListConfigurationRevisionsResponse

    ListConfigurationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListConfigurationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    ListConfigurationsRequest.struct_class = Types::ListConfigurationsRequest

    ListConfigurationsResponse.add_member(:configurations, Shapes::ShapeRef.new(shape: __listOfConfiguration, location_name: "configurations"))
    ListConfigurationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListConfigurationsResponse.struct_class = Types::ListConfigurationsResponse

    ListKafkaVersionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListKafkaVersionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    ListKafkaVersionsRequest.struct_class = Types::ListKafkaVersionsRequest

    ListKafkaVersionsResponse.add_member(:kafka_versions, Shapes::ShapeRef.new(shape: __listOfKafkaVersion, location_name: "kafkaVersions"))
    ListKafkaVersionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListKafkaVersionsResponse.struct_class = Types::ListKafkaVersionsResponse

    ListNodesRequest.add_member(:cluster_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "clusterArn"))
    ListNodesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListNodesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    ListNodesRequest.struct_class = Types::ListNodesRequest

    ListNodesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListNodesResponse.add_member(:node_info_list, Shapes::ShapeRef.new(shape: __listOfNodeInfo, location_name: "nodeInfoList"))
    ListNodesResponse.struct_class = Types::ListNodesResponse

    ListScramSecretsRequest.add_member(:cluster_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "clusterArn"))
    ListScramSecretsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListScramSecretsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    ListScramSecretsRequest.struct_class = Types::ListScramSecretsRequest

    ListScramSecretsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListScramSecretsResponse.add_member(:secret_arn_list, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "secretArnList"))
    ListScramSecretsResponse.struct_class = Types::ListScramSecretsResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: __mapOf__string, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    ListVpcConnectionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListVpcConnectionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    ListVpcConnectionsRequest.struct_class = Types::ListVpcConnectionsRequest

    ListVpcConnectionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListVpcConnectionsResponse.add_member(:vpc_connections, Shapes::ShapeRef.new(shape: __listOfVpcConnection, location_name: "vpcConnections"))
    ListVpcConnectionsResponse.struct_class = Types::ListVpcConnectionsResponse

    LoggingInfo.add_member(:broker_logs, Shapes::ShapeRef.new(shape: BrokerLogs, required: true, location_name: "brokerLogs"))
    LoggingInfo.struct_class = Types::LoggingInfo

    MutableClusterInfo.add_member(:broker_ebs_volume_info, Shapes::ShapeRef.new(shape: __listOfBrokerEBSVolumeInfo, location_name: "brokerEBSVolumeInfo"))
    MutableClusterInfo.add_member(:configuration_info, Shapes::ShapeRef.new(shape: ConfigurationInfo, location_name: "configurationInfo"))
    MutableClusterInfo.add_member(:number_of_broker_nodes, Shapes::ShapeRef.new(shape: __integer, location_name: "numberOfBrokerNodes"))
    MutableClusterInfo.add_member(:open_monitoring, Shapes::ShapeRef.new(shape: OpenMonitoring, location_name: "openMonitoring"))
    MutableClusterInfo.add_member(:enhanced_monitoring, Shapes::ShapeRef.new(shape: EnhancedMonitoring, location_name: "enhancedMonitoring"))
    MutableClusterInfo.add_member(:kafka_version, Shapes::ShapeRef.new(shape: __string, location_name: "kafkaVersion"))
    MutableClusterInfo.add_member(:logging_info, Shapes::ShapeRef.new(shape: LoggingInfo, location_name: "loggingInfo"))
    MutableClusterInfo.add_member(:instance_type, Shapes::ShapeRef.new(shape: __string, location_name: "instanceType"))
    MutableClusterInfo.add_member(:client_authentication, Shapes::ShapeRef.new(shape: ClientAuthentication, location_name: "clientAuthentication"))
    MutableClusterInfo.add_member(:encryption_info, Shapes::ShapeRef.new(shape: EncryptionInfo, location_name: "encryptionInfo"))
    MutableClusterInfo.add_member(:connectivity_info, Shapes::ShapeRef.new(shape: ConnectivityInfo, location_name: "connectivityInfo"))
    MutableClusterInfo.add_member(:storage_mode, Shapes::ShapeRef.new(shape: StorageMode, location_name: "storageMode"))
    MutableClusterInfo.struct_class = Types::MutableClusterInfo

    NodeExporter.add_member(:enabled_in_broker, Shapes::ShapeRef.new(shape: __boolean, required: true, location_name: "enabledInBroker"))
    NodeExporter.struct_class = Types::NodeExporter

    NodeExporterInfo.add_member(:enabled_in_broker, Shapes::ShapeRef.new(shape: __boolean, required: true, location_name: "enabledInBroker"))
    NodeExporterInfo.struct_class = Types::NodeExporterInfo

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

    OpenMonitoring.add_member(:prometheus, Shapes::ShapeRef.new(shape: Prometheus, required: true, location_name: "prometheus"))
    OpenMonitoring.struct_class = Types::OpenMonitoring

    OpenMonitoringInfo.add_member(:prometheus, Shapes::ShapeRef.new(shape: PrometheusInfo, required: true, location_name: "prometheus"))
    OpenMonitoringInfo.struct_class = Types::OpenMonitoringInfo

    Prometheus.add_member(:jmx_exporter, Shapes::ShapeRef.new(shape: JmxExporter, location_name: "jmxExporter"))
    Prometheus.add_member(:node_exporter, Shapes::ShapeRef.new(shape: NodeExporter, location_name: "nodeExporter"))
    Prometheus.struct_class = Types::Prometheus

    PrometheusInfo.add_member(:jmx_exporter, Shapes::ShapeRef.new(shape: JmxExporterInfo, location_name: "jmxExporter"))
    PrometheusInfo.add_member(:node_exporter, Shapes::ShapeRef.new(shape: NodeExporterInfo, location_name: "nodeExporter"))
    PrometheusInfo.struct_class = Types::PrometheusInfo

    Provisioned.add_member(:broker_node_group_info, Shapes::ShapeRef.new(shape: BrokerNodeGroupInfo, required: true, location_name: "brokerNodeGroupInfo"))
    Provisioned.add_member(:current_broker_software_info, Shapes::ShapeRef.new(shape: BrokerSoftwareInfo, location_name: "currentBrokerSoftwareInfo"))
    Provisioned.add_member(:client_authentication, Shapes::ShapeRef.new(shape: ClientAuthentication, location_name: "clientAuthentication"))
    Provisioned.add_member(:encryption_info, Shapes::ShapeRef.new(shape: EncryptionInfo, location_name: "encryptionInfo"))
    Provisioned.add_member(:enhanced_monitoring, Shapes::ShapeRef.new(shape: EnhancedMonitoring, location_name: "enhancedMonitoring"))
    Provisioned.add_member(:open_monitoring, Shapes::ShapeRef.new(shape: OpenMonitoringInfo, location_name: "openMonitoring"))
    Provisioned.add_member(:logging_info, Shapes::ShapeRef.new(shape: LoggingInfo, location_name: "loggingInfo"))
    Provisioned.add_member(:number_of_broker_nodes, Shapes::ShapeRef.new(shape: __integerMin1Max15, required: true, location_name: "numberOfBrokerNodes"))
    Provisioned.add_member(:zookeeper_connect_string, Shapes::ShapeRef.new(shape: __string, location_name: "zookeeperConnectString"))
    Provisioned.add_member(:zookeeper_connect_string_tls, Shapes::ShapeRef.new(shape: __string, location_name: "zookeeperConnectStringTls"))
    Provisioned.add_member(:storage_mode, Shapes::ShapeRef.new(shape: StorageMode, location_name: "storageMode"))
    Provisioned.struct_class = Types::Provisioned

    ProvisionedRequest.add_member(:broker_node_group_info, Shapes::ShapeRef.new(shape: BrokerNodeGroupInfo, required: true, location_name: "brokerNodeGroupInfo"))
    ProvisionedRequest.add_member(:client_authentication, Shapes::ShapeRef.new(shape: ClientAuthentication, location_name: "clientAuthentication"))
    ProvisionedRequest.add_member(:configuration_info, Shapes::ShapeRef.new(shape: ConfigurationInfo, location_name: "configurationInfo"))
    ProvisionedRequest.add_member(:encryption_info, Shapes::ShapeRef.new(shape: EncryptionInfo, location_name: "encryptionInfo"))
    ProvisionedRequest.add_member(:enhanced_monitoring, Shapes::ShapeRef.new(shape: EnhancedMonitoring, location_name: "enhancedMonitoring"))
    ProvisionedRequest.add_member(:open_monitoring, Shapes::ShapeRef.new(shape: OpenMonitoringInfo, location_name: "openMonitoring"))
    ProvisionedRequest.add_member(:kafka_version, Shapes::ShapeRef.new(shape: __stringMin1Max128, required: true, location_name: "kafkaVersion"))
    ProvisionedRequest.add_member(:logging_info, Shapes::ShapeRef.new(shape: LoggingInfo, location_name: "loggingInfo"))
    ProvisionedRequest.add_member(:number_of_broker_nodes, Shapes::ShapeRef.new(shape: __integerMin1Max15, required: true, location_name: "numberOfBrokerNodes"))
    ProvisionedRequest.add_member(:storage_mode, Shapes::ShapeRef.new(shape: StorageMode, location_name: "storageMode"))
    ProvisionedRequest.struct_class = Types::ProvisionedRequest

    ProvisionedThroughput.add_member(:enabled, Shapes::ShapeRef.new(shape: __boolean, location_name: "enabled"))
    ProvisionedThroughput.add_member(:volume_throughput, Shapes::ShapeRef.new(shape: __integer, location_name: "volumeThroughput"))
    ProvisionedThroughput.struct_class = Types::ProvisionedThroughput

    PublicAccess.add_member(:type, Shapes::ShapeRef.new(shape: __string, location_name: "type"))
    PublicAccess.struct_class = Types::PublicAccess

    PutClusterPolicyRequest.add_member(:cluster_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "clusterArn"))
    PutClusterPolicyRequest.add_member(:current_version, Shapes::ShapeRef.new(shape: __string, location_name: "currentVersion"))
    PutClusterPolicyRequest.add_member(:policy, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "policy"))
    PutClusterPolicyRequest.struct_class = Types::PutClusterPolicyRequest

    PutClusterPolicyResponse.add_member(:current_version, Shapes::ShapeRef.new(shape: __string, location_name: "currentVersion"))
    PutClusterPolicyResponse.struct_class = Types::PutClusterPolicyResponse

    RebootBrokerRequest.add_member(:broker_ids, Shapes::ShapeRef.new(shape: __listOf__string, required: true, location_name: "brokerIds"))
    RebootBrokerRequest.add_member(:cluster_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "clusterArn"))
    RebootBrokerRequest.struct_class = Types::RebootBrokerRequest

    RebootBrokerResponse.add_member(:cluster_arn, Shapes::ShapeRef.new(shape: __string, location_name: "clusterArn"))
    RebootBrokerResponse.add_member(:cluster_operation_arn, Shapes::ShapeRef.new(shape: __string, location_name: "clusterOperationArn"))
    RebootBrokerResponse.struct_class = Types::RebootBrokerResponse

    RejectClientVpcConnectionRequest.add_member(:cluster_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "clusterArn"))
    RejectClientVpcConnectionRequest.add_member(:vpc_connection_arn, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "vpcConnectionArn"))
    RejectClientVpcConnectionRequest.struct_class = Types::RejectClientVpcConnectionRequest

    RejectClientVpcConnectionResponse.struct_class = Types::RejectClientVpcConnectionResponse

    S3.add_member(:bucket, Shapes::ShapeRef.new(shape: __string, location_name: "bucket"))
    S3.add_member(:enabled, Shapes::ShapeRef.new(shape: __boolean, required: true, location_name: "enabled"))
    S3.add_member(:prefix, Shapes::ShapeRef.new(shape: __string, location_name: "prefix"))
    S3.struct_class = Types::S3

    Sasl.add_member(:scram, Shapes::ShapeRef.new(shape: Scram, location_name: "scram"))
    Sasl.add_member(:iam, Shapes::ShapeRef.new(shape: Iam, location_name: "iam"))
    Sasl.struct_class = Types::Sasl

    Scram.add_member(:enabled, Shapes::ShapeRef.new(shape: __boolean, location_name: "enabled"))
    Scram.struct_class = Types::Scram

    Serverless.add_member(:vpc_configs, Shapes::ShapeRef.new(shape: __listOfVpcConfig, required: true, location_name: "vpcConfigs"))
    Serverless.add_member(:client_authentication, Shapes::ShapeRef.new(shape: ServerlessClientAuthentication, location_name: "clientAuthentication"))
    Serverless.struct_class = Types::Serverless

    ServerlessClientAuthentication.add_member(:sasl, Shapes::ShapeRef.new(shape: ServerlessSasl, location_name: "sasl"))
    ServerlessClientAuthentication.struct_class = Types::ServerlessClientAuthentication

    ServerlessRequest.add_member(:vpc_configs, Shapes::ShapeRef.new(shape: __listOfVpcConfig, required: true, location_name: "vpcConfigs"))
    ServerlessRequest.add_member(:client_authentication, Shapes::ShapeRef.new(shape: ServerlessClientAuthentication, location_name: "clientAuthentication"))
    ServerlessRequest.struct_class = Types::ServerlessRequest

    ServerlessSasl.add_member(:iam, Shapes::ShapeRef.new(shape: Iam, location_name: "iam"))
    ServerlessSasl.struct_class = Types::ServerlessSasl

    ServiceUnavailableException.add_member(:invalid_parameter, Shapes::ShapeRef.new(shape: __string, location_name: "invalidParameter"))
    ServiceUnavailableException.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "message"))
    ServiceUnavailableException.struct_class = Types::ServiceUnavailableException

    StateInfo.add_member(:code, Shapes::ShapeRef.new(shape: __string, location_name: "code"))
    StateInfo.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "message"))
    StateInfo.struct_class = Types::StateInfo

    StorageInfo.add_member(:ebs_storage_info, Shapes::ShapeRef.new(shape: EBSStorageInfo, location_name: "ebsStorageInfo"))
    StorageInfo.struct_class = Types::StorageInfo

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: __mapOf__string, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    Tls.add_member(:certificate_authority_arn_list, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "certificateAuthorityArnList"))
    Tls.add_member(:enabled, Shapes::ShapeRef.new(shape: __boolean, location_name: "enabled"))
    Tls.struct_class = Types::Tls

    TooManyRequestsException.add_member(:invalid_parameter, Shapes::ShapeRef.new(shape: __string, location_name: "invalidParameter"))
    TooManyRequestsException.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "message"))
    TooManyRequestsException.struct_class = Types::TooManyRequestsException

    Unauthenticated.add_member(:enabled, Shapes::ShapeRef.new(shape: __boolean, location_name: "enabled"))
    Unauthenticated.struct_class = Types::Unauthenticated

    UnauthorizedException.add_member(:invalid_parameter, Shapes::ShapeRef.new(shape: __string, location_name: "invalidParameter"))
    UnauthorizedException.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "message"))
    UnauthorizedException.struct_class = Types::UnauthorizedException

    UnprocessedScramSecret.add_member(:error_code, Shapes::ShapeRef.new(shape: __string, location_name: "errorCode"))
    UnprocessedScramSecret.add_member(:error_message, Shapes::ShapeRef.new(shape: __string, location_name: "errorMessage"))
    UnprocessedScramSecret.add_member(:secret_arn, Shapes::ShapeRef.new(shape: __string, location_name: "secretArn"))
    UnprocessedScramSecret.struct_class = Types::UnprocessedScramSecret

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: __listOf__string, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UpdateBrokerCountRequest.add_member(:cluster_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "clusterArn"))
    UpdateBrokerCountRequest.add_member(:current_version, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "currentVersion"))
    UpdateBrokerCountRequest.add_member(:target_number_of_broker_nodes, Shapes::ShapeRef.new(shape: __integerMin1Max15, required: true, location_name: "targetNumberOfBrokerNodes"))
    UpdateBrokerCountRequest.struct_class = Types::UpdateBrokerCountRequest

    UpdateBrokerCountResponse.add_member(:cluster_arn, Shapes::ShapeRef.new(shape: __string, location_name: "clusterArn"))
    UpdateBrokerCountResponse.add_member(:cluster_operation_arn, Shapes::ShapeRef.new(shape: __string, location_name: "clusterOperationArn"))
    UpdateBrokerCountResponse.struct_class = Types::UpdateBrokerCountResponse

    UpdateBrokerStorageRequest.add_member(:cluster_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "clusterArn"))
    UpdateBrokerStorageRequest.add_member(:current_version, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "currentVersion"))
    UpdateBrokerStorageRequest.add_member(:target_broker_ebs_volume_info, Shapes::ShapeRef.new(shape: __listOfBrokerEBSVolumeInfo, required: true, location_name: "targetBrokerEBSVolumeInfo"))
    UpdateBrokerStorageRequest.struct_class = Types::UpdateBrokerStorageRequest

    UpdateBrokerStorageResponse.add_member(:cluster_arn, Shapes::ShapeRef.new(shape: __string, location_name: "clusterArn"))
    UpdateBrokerStorageResponse.add_member(:cluster_operation_arn, Shapes::ShapeRef.new(shape: __string, location_name: "clusterOperationArn"))
    UpdateBrokerStorageResponse.struct_class = Types::UpdateBrokerStorageResponse

    UpdateBrokerTypeRequest.add_member(:cluster_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "clusterArn"))
    UpdateBrokerTypeRequest.add_member(:current_version, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "currentVersion"))
    UpdateBrokerTypeRequest.add_member(:target_instance_type, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "targetInstanceType"))
    UpdateBrokerTypeRequest.struct_class = Types::UpdateBrokerTypeRequest

    UpdateBrokerTypeResponse.add_member(:cluster_arn, Shapes::ShapeRef.new(shape: __string, location_name: "clusterArn"))
    UpdateBrokerTypeResponse.add_member(:cluster_operation_arn, Shapes::ShapeRef.new(shape: __string, location_name: "clusterOperationArn"))
    UpdateBrokerTypeResponse.struct_class = Types::UpdateBrokerTypeResponse

    UpdateClusterConfigurationRequest.add_member(:cluster_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "clusterArn"))
    UpdateClusterConfigurationRequest.add_member(:configuration_info, Shapes::ShapeRef.new(shape: ConfigurationInfo, required: true, location_name: "configurationInfo"))
    UpdateClusterConfigurationRequest.add_member(:current_version, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "currentVersion"))
    UpdateClusterConfigurationRequest.struct_class = Types::UpdateClusterConfigurationRequest

    UpdateClusterConfigurationResponse.add_member(:cluster_arn, Shapes::ShapeRef.new(shape: __string, location_name: "clusterArn"))
    UpdateClusterConfigurationResponse.add_member(:cluster_operation_arn, Shapes::ShapeRef.new(shape: __string, location_name: "clusterOperationArn"))
    UpdateClusterConfigurationResponse.struct_class = Types::UpdateClusterConfigurationResponse

    UpdateClusterKafkaVersionRequest.add_member(:cluster_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "clusterArn"))
    UpdateClusterKafkaVersionRequest.add_member(:configuration_info, Shapes::ShapeRef.new(shape: ConfigurationInfo, location_name: "configurationInfo"))
    UpdateClusterKafkaVersionRequest.add_member(:current_version, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "currentVersion"))
    UpdateClusterKafkaVersionRequest.add_member(:target_kafka_version, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "targetKafkaVersion"))
    UpdateClusterKafkaVersionRequest.struct_class = Types::UpdateClusterKafkaVersionRequest

    UpdateClusterKafkaVersionResponse.add_member(:cluster_arn, Shapes::ShapeRef.new(shape: __string, location_name: "clusterArn"))
    UpdateClusterKafkaVersionResponse.add_member(:cluster_operation_arn, Shapes::ShapeRef.new(shape: __string, location_name: "clusterOperationArn"))
    UpdateClusterKafkaVersionResponse.struct_class = Types::UpdateClusterKafkaVersionResponse

    UpdateConfigurationRequest.add_member(:arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "arn"))
    UpdateConfigurationRequest.add_member(:description, Shapes::ShapeRef.new(shape: __string, location_name: "description"))
    UpdateConfigurationRequest.add_member(:server_properties, Shapes::ShapeRef.new(shape: __blob, required: true, location_name: "serverProperties"))
    UpdateConfigurationRequest.struct_class = Types::UpdateConfigurationRequest

    UpdateConfigurationResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    UpdateConfigurationResponse.add_member(:latest_revision, Shapes::ShapeRef.new(shape: ConfigurationRevision, location_name: "latestRevision"))
    UpdateConfigurationResponse.struct_class = Types::UpdateConfigurationResponse

    UpdateConnectivityRequest.add_member(:cluster_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "clusterArn"))
    UpdateConnectivityRequest.add_member(:connectivity_info, Shapes::ShapeRef.new(shape: ConnectivityInfo, required: true, location_name: "connectivityInfo"))
    UpdateConnectivityRequest.add_member(:current_version, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "currentVersion"))
    UpdateConnectivityRequest.struct_class = Types::UpdateConnectivityRequest

    UpdateConnectivityResponse.add_member(:cluster_arn, Shapes::ShapeRef.new(shape: __string, location_name: "clusterArn"))
    UpdateConnectivityResponse.add_member(:cluster_operation_arn, Shapes::ShapeRef.new(shape: __string, location_name: "clusterOperationArn"))
    UpdateConnectivityResponse.struct_class = Types::UpdateConnectivityResponse

    UpdateMonitoringRequest.add_member(:cluster_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "clusterArn"))
    UpdateMonitoringRequest.add_member(:current_version, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "currentVersion"))
    UpdateMonitoringRequest.add_member(:enhanced_monitoring, Shapes::ShapeRef.new(shape: EnhancedMonitoring, location_name: "enhancedMonitoring"))
    UpdateMonitoringRequest.add_member(:open_monitoring, Shapes::ShapeRef.new(shape: OpenMonitoringInfo, location_name: "openMonitoring"))
    UpdateMonitoringRequest.add_member(:logging_info, Shapes::ShapeRef.new(shape: LoggingInfo, location_name: "loggingInfo"))
    UpdateMonitoringRequest.struct_class = Types::UpdateMonitoringRequest

    UpdateMonitoringResponse.add_member(:cluster_arn, Shapes::ShapeRef.new(shape: __string, location_name: "clusterArn"))
    UpdateMonitoringResponse.add_member(:cluster_operation_arn, Shapes::ShapeRef.new(shape: __string, location_name: "clusterOperationArn"))
    UpdateMonitoringResponse.struct_class = Types::UpdateMonitoringResponse

    UpdateSecurityRequest.add_member(:client_authentication, Shapes::ShapeRef.new(shape: ClientAuthentication, location_name: "clientAuthentication"))
    UpdateSecurityRequest.add_member(:cluster_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "clusterArn"))
    UpdateSecurityRequest.add_member(:current_version, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "currentVersion"))
    UpdateSecurityRequest.add_member(:encryption_info, Shapes::ShapeRef.new(shape: EncryptionInfo, location_name: "encryptionInfo"))
    UpdateSecurityRequest.struct_class = Types::UpdateSecurityRequest

    UpdateSecurityResponse.add_member(:cluster_arn, Shapes::ShapeRef.new(shape: __string, location_name: "clusterArn"))
    UpdateSecurityResponse.add_member(:cluster_operation_arn, Shapes::ShapeRef.new(shape: __string, location_name: "clusterOperationArn"))
    UpdateSecurityResponse.struct_class = Types::UpdateSecurityResponse

    UpdateStorageRequest.add_member(:cluster_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "clusterArn"))
    UpdateStorageRequest.add_member(:current_version, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "currentVersion"))
    UpdateStorageRequest.add_member(:provisioned_throughput, Shapes::ShapeRef.new(shape: ProvisionedThroughput, location_name: "provisionedThroughput"))
    UpdateStorageRequest.add_member(:storage_mode, Shapes::ShapeRef.new(shape: StorageMode, location_name: "storageMode"))
    UpdateStorageRequest.add_member(:volume_size_gb, Shapes::ShapeRef.new(shape: __integer, location_name: "volumeSizeGB"))
    UpdateStorageRequest.struct_class = Types::UpdateStorageRequest

    UpdateStorageResponse.add_member(:cluster_arn, Shapes::ShapeRef.new(shape: __string, location_name: "clusterArn"))
    UpdateStorageResponse.add_member(:cluster_operation_arn, Shapes::ShapeRef.new(shape: __string, location_name: "clusterOperationArn"))
    UpdateStorageResponse.struct_class = Types::UpdateStorageResponse

    UserIdentity.add_member(:type, Shapes::ShapeRef.new(shape: UserIdentityType, location_name: "type"))
    UserIdentity.add_member(:principal_id, Shapes::ShapeRef.new(shape: __string, location_name: "principalId"))
    UserIdentity.struct_class = Types::UserIdentity

    VpcConfig.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: __listOf__string, required: true, location_name: "subnetIds"))
    VpcConfig.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "securityGroupIds"))
    VpcConfig.struct_class = Types::VpcConfig

    VpcConnection.add_member(:vpc_connection_arn, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "vpcConnectionArn"))
    VpcConnection.add_member(:target_cluster_arn, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "targetClusterArn"))
    VpcConnection.add_member(:creation_time, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "creationTime"))
    VpcConnection.add_member(:authentication, Shapes::ShapeRef.new(shape: __string, location_name: "authentication"))
    VpcConnection.add_member(:vpc_id, Shapes::ShapeRef.new(shape: __string, location_name: "vpcId"))
    VpcConnection.add_member(:state, Shapes::ShapeRef.new(shape: VpcConnectionState, location_name: "state"))
    VpcConnection.struct_class = Types::VpcConnection

    VpcConnectionInfo.add_member(:vpc_connection_arn, Shapes::ShapeRef.new(shape: __string, location_name: "vpcConnectionArn"))
    VpcConnectionInfo.add_member(:owner, Shapes::ShapeRef.new(shape: __string, location_name: "owner"))
    VpcConnectionInfo.add_member(:user_identity, Shapes::ShapeRef.new(shape: UserIdentity, location_name: "userIdentity"))
    VpcConnectionInfo.add_member(:creation_time, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "creationTime"))
    VpcConnectionInfo.struct_class = Types::VpcConnectionInfo

    VpcConnectivity.add_member(:client_authentication, Shapes::ShapeRef.new(shape: VpcConnectivityClientAuthentication, location_name: "clientAuthentication"))
    VpcConnectivity.struct_class = Types::VpcConnectivity

    VpcConnectivityClientAuthentication.add_member(:sasl, Shapes::ShapeRef.new(shape: VpcConnectivitySasl, location_name: "sasl"))
    VpcConnectivityClientAuthentication.add_member(:tls, Shapes::ShapeRef.new(shape: VpcConnectivityTls, location_name: "tls"))
    VpcConnectivityClientAuthentication.struct_class = Types::VpcConnectivityClientAuthentication

    VpcConnectivityIam.add_member(:enabled, Shapes::ShapeRef.new(shape: __boolean, location_name: "enabled"))
    VpcConnectivityIam.struct_class = Types::VpcConnectivityIam

    VpcConnectivitySasl.add_member(:scram, Shapes::ShapeRef.new(shape: VpcConnectivityScram, location_name: "scram"))
    VpcConnectivitySasl.add_member(:iam, Shapes::ShapeRef.new(shape: VpcConnectivityIam, location_name: "iam"))
    VpcConnectivitySasl.struct_class = Types::VpcConnectivitySasl

    VpcConnectivityScram.add_member(:enabled, Shapes::ShapeRef.new(shape: __boolean, location_name: "enabled"))
    VpcConnectivityScram.struct_class = Types::VpcConnectivityScram

    VpcConnectivityTls.add_member(:enabled, Shapes::ShapeRef.new(shape: __boolean, location_name: "enabled"))
    VpcConnectivityTls.struct_class = Types::VpcConnectivityTls

    ZookeeperNodeInfo.add_member(:attached_eni_id, Shapes::ShapeRef.new(shape: __string, location_name: "attachedENIId"))
    ZookeeperNodeInfo.add_member(:client_vpc_ip_address, Shapes::ShapeRef.new(shape: __string, location_name: "clientVpcIpAddress"))
    ZookeeperNodeInfo.add_member(:endpoints, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "endpoints"))
    ZookeeperNodeInfo.add_member(:zookeeper_id, Shapes::ShapeRef.new(shape: __double, location_name: "zookeeperId"))
    ZookeeperNodeInfo.add_member(:zookeeper_version, Shapes::ShapeRef.new(shape: __string, location_name: "zookeeperVersion"))
    ZookeeperNodeInfo.struct_class = Types::ZookeeperNodeInfo

    __listOfBrokerEBSVolumeInfo.member = Shapes::ShapeRef.new(shape: BrokerEBSVolumeInfo)

    __listOfClientVpcConnection.member = Shapes::ShapeRef.new(shape: ClientVpcConnection)

    __listOfCluster.member = Shapes::ShapeRef.new(shape: Cluster)

    __listOfClusterInfo.member = Shapes::ShapeRef.new(shape: ClusterInfo)

    __listOfClusterOperationInfo.member = Shapes::ShapeRef.new(shape: ClusterOperationInfo)

    __listOfClusterOperationStep.member = Shapes::ShapeRef.new(shape: ClusterOperationStep)

    __listOfCompatibleKafkaVersion.member = Shapes::ShapeRef.new(shape: CompatibleKafkaVersion)

    __listOfConfiguration.member = Shapes::ShapeRef.new(shape: Configuration)

    __listOfConfigurationRevision.member = Shapes::ShapeRef.new(shape: ConfigurationRevision)

    __listOfKafkaVersion.member = Shapes::ShapeRef.new(shape: KafkaVersion)

    __listOfNodeInfo.member = Shapes::ShapeRef.new(shape: NodeInfo)

    __listOfUnprocessedScramSecret.member = Shapes::ShapeRef.new(shape: UnprocessedScramSecret)

    __listOfVpcConfig.member = Shapes::ShapeRef.new(shape: VpcConfig)

    __listOfVpcConnection.member = Shapes::ShapeRef.new(shape: VpcConnection)

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

      api.add_operation(:batch_associate_scram_secret, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchAssociateScramSecret"
        o.http_method = "POST"
        o.http_request_uri = "/v1/clusters/{clusterArn}/scram-secrets"
        o.input = Shapes::ShapeRef.new(shape: BatchAssociateScramSecretRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchAssociateScramSecretResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

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

      api.add_operation(:create_cluster_v2, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateClusterV2"
        o.http_method = "POST"
        o.http_request_uri = "/api/v2/clusters"
        o.input = Shapes::ShapeRef.new(shape: CreateClusterV2Request)
        o.output = Shapes::ShapeRef.new(shape: CreateClusterV2Response)
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

      api.add_operation(:create_vpc_connection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateVpcConnection"
        o.http_method = "POST"
        o.http_request_uri = "/v1/vpc-connection"
        o.input = Shapes::ShapeRef.new(shape: CreateVpcConnectionRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateVpcConnectionResponse)
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

      api.add_operation(:delete_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteConfiguration"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/configurations/{arn}"
        o.input = Shapes::ShapeRef.new(shape: DeleteConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
      end)

      api.add_operation(:delete_vpc_connection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteVpcConnection"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/vpc-connection/{arn}"
        o.input = Shapes::ShapeRef.new(shape: DeleteVpcConnectionRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteVpcConnectionResponse)
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

      api.add_operation(:describe_cluster_v2, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeClusterV2"
        o.http_method = "GET"
        o.http_request_uri = "/api/v2/clusters/{clusterArn}"
        o.input = Shapes::ShapeRef.new(shape: DescribeClusterV2Request)
        o.output = Shapes::ShapeRef.new(shape: DescribeClusterV2Response)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
      end)

      api.add_operation(:describe_cluster_operation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeClusterOperation"
        o.http_method = "GET"
        o.http_request_uri = "/v1/operations/{clusterOperationArn}"
        o.input = Shapes::ShapeRef.new(shape: DescribeClusterOperationRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeClusterOperationResponse)
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

      api.add_operation(:describe_vpc_connection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeVpcConnection"
        o.http_method = "GET"
        o.http_request_uri = "/v1/vpc-connection/{arn}"
        o.input = Shapes::ShapeRef.new(shape: DescribeVpcConnectionRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeVpcConnectionResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:batch_disassociate_scram_secret, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchDisassociateScramSecret"
        o.http_method = "PATCH"
        o.http_request_uri = "/v1/clusters/{clusterArn}/scram-secrets"
        o.input = Shapes::ShapeRef.new(shape: BatchDisassociateScramSecretRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchDisassociateScramSecretResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
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

      api.add_operation(:get_compatible_kafka_versions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCompatibleKafkaVersions"
        o.http_method = "GET"
        o.http_request_uri = "/v1/compatible-kafka-versions"
        o.input = Shapes::ShapeRef.new(shape: GetCompatibleKafkaVersionsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetCompatibleKafkaVersionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:list_cluster_operations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListClusterOperations"
        o.http_method = "GET"
        o.http_request_uri = "/v1/clusters/{clusterArn}/operations"
        o.input = Shapes::ShapeRef.new(shape: ListClusterOperationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListClusterOperationsResponse)
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

      api.add_operation(:list_clusters_v2, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListClustersV2"
        o.http_method = "GET"
        o.http_request_uri = "/api/v2/clusters"
        o.input = Shapes::ShapeRef.new(shape: ListClustersV2Request)
        o.output = Shapes::ShapeRef.new(shape: ListClustersV2Response)
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

      api.add_operation(:list_configuration_revisions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListConfigurationRevisions"
        o.http_method = "GET"
        o.http_request_uri = "/v1/configurations/{arn}/revisions"
        o.input = Shapes::ShapeRef.new(shape: ListConfigurationRevisionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListConfigurationRevisionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
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

      api.add_operation(:list_kafka_versions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListKafkaVersions"
        o.http_method = "GET"
        o.http_request_uri = "/v1/kafka-versions"
        o.input = Shapes::ShapeRef.new(shape: ListKafkaVersionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListKafkaVersionsResponse)
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

      api.add_operation(:list_scram_secrets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListScramSecrets"
        o.http_method = "GET"
        o.http_request_uri = "/v1/clusters/{clusterArn}/scram-secrets"
        o.input = Shapes::ShapeRef.new(shape: ListScramSecretsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListScramSecretsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
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

      api.add_operation(:list_client_vpc_connections, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListClientVpcConnections"
        o.http_method = "GET"
        o.http_request_uri = "/v1/clusters/{clusterArn}/client-vpc-connections"
        o.input = Shapes::ShapeRef.new(shape: ListClientVpcConnectionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListClientVpcConnectionsResponse)
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

      api.add_operation(:list_vpc_connections, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListVpcConnections"
        o.http_method = "GET"
        o.http_request_uri = "/v1/vpc-connections"
        o.input = Shapes::ShapeRef.new(shape: ListVpcConnectionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListVpcConnectionsResponse)
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

      api.add_operation(:reject_client_vpc_connection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RejectClientVpcConnection"
        o.http_method = "PUT"
        o.http_request_uri = "/v1/clusters/{clusterArn}/client-vpc-connection"
        o.input = Shapes::ShapeRef.new(shape: RejectClientVpcConnectionRequest)
        o.output = Shapes::ShapeRef.new(shape: RejectClientVpcConnectionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
      end)

      api.add_operation(:delete_cluster_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteClusterPolicy"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/clusters/{clusterArn}/policy"
        o.input = Shapes::ShapeRef.new(shape: DeleteClusterPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteClusterPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
      end)

      api.add_operation(:get_cluster_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetClusterPolicy"
        o.http_method = "GET"
        o.http_request_uri = "/v1/clusters/{clusterArn}/policy"
        o.input = Shapes::ShapeRef.new(shape: GetClusterPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: GetClusterPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
      end)

      api.add_operation(:put_cluster_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutClusterPolicy"
        o.http_method = "PUT"
        o.http_request_uri = "/v1/clusters/{clusterArn}/policy"
        o.input = Shapes::ShapeRef.new(shape: PutClusterPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: PutClusterPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
      end)

      api.add_operation(:reboot_broker, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RebootBroker"
        o.http_method = "PUT"
        o.http_request_uri = "/v1/clusters/{clusterArn}/reboot-broker"
        o.input = Shapes::ShapeRef.new(shape: RebootBrokerRequest)
        o.output = Shapes::ShapeRef.new(shape: RebootBrokerResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
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

      api.add_operation(:update_broker_count, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateBrokerCount"
        o.http_method = "PUT"
        o.http_request_uri = "/v1/clusters/{clusterArn}/nodes/count"
        o.input = Shapes::ShapeRef.new(shape: UpdateBrokerCountRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateBrokerCountResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
      end)

      api.add_operation(:update_broker_type, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateBrokerType"
        o.http_method = "PUT"
        o.http_request_uri = "/v1/clusters/{clusterArn}/nodes/type"
        o.input = Shapes::ShapeRef.new(shape: UpdateBrokerTypeRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateBrokerTypeResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:update_broker_storage, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateBrokerStorage"
        o.http_method = "PUT"
        o.http_request_uri = "/v1/clusters/{clusterArn}/nodes/storage"
        o.input = Shapes::ShapeRef.new(shape: UpdateBrokerStorageRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateBrokerStorageResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
      end)

      api.add_operation(:update_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateConfiguration"
        o.http_method = "PUT"
        o.http_request_uri = "/v1/configurations/{arn}"
        o.input = Shapes::ShapeRef.new(shape: UpdateConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
      end)

      api.add_operation(:update_cluster_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateClusterConfiguration"
        o.http_method = "PUT"
        o.http_request_uri = "/v1/clusters/{clusterArn}/configuration"
        o.input = Shapes::ShapeRef.new(shape: UpdateClusterConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateClusterConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:update_cluster_kafka_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateClusterKafkaVersion"
        o.http_method = "PUT"
        o.http_request_uri = "/v1/clusters/{clusterArn}/version"
        o.input = Shapes::ShapeRef.new(shape: UpdateClusterKafkaVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateClusterKafkaVersionResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:update_connectivity, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateConnectivity"
        o.http_method = "PUT"
        o.http_request_uri = "/v1/clusters/{clusterArn}/connectivity"
        o.input = Shapes::ShapeRef.new(shape: UpdateConnectivityRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateConnectivityResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:update_monitoring, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateMonitoring"
        o.http_method = "PUT"
        o.http_request_uri = "/v1/clusters/{clusterArn}/monitoring"
        o.input = Shapes::ShapeRef.new(shape: UpdateMonitoringRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateMonitoringResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
      end)

      api.add_operation(:update_security, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateSecurity"
        o.http_method = "PATCH"
        o.http_request_uri = "/v1/clusters/{clusterArn}/security"
        o.input = Shapes::ShapeRef.new(shape: UpdateSecurityRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateSecurityResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:update_storage, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateStorage"
        o.http_method = "PUT"
        o.http_request_uri = "/v1/clusters/{clusterArn}/storage"
        o.input = Shapes::ShapeRef.new(shape: UpdateStorageRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateStorageResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)
    end

  end
end
