# frozen_string_literal: true

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
    CloudWatchLogs = Shapes::StructureShape.new(name: 'CloudWatchLogs')
    ClusterInfo = Shapes::StructureShape.new(name: 'ClusterInfo')
    ClusterOperationInfo = Shapes::StructureShape.new(name: 'ClusterOperationInfo')
    ClusterOperationStep = Shapes::StructureShape.new(name: 'ClusterOperationStep')
    ClusterOperationStepInfo = Shapes::StructureShape.new(name: 'ClusterOperationStepInfo')
    ClusterState = Shapes::StringShape.new(name: 'ClusterState')
    CompatibleKafkaVersion = Shapes::StructureShape.new(name: 'CompatibleKafkaVersion')
    Configuration = Shapes::StructureShape.new(name: 'Configuration')
    ConfigurationInfo = Shapes::StructureShape.new(name: 'ConfigurationInfo')
    ConfigurationRevision = Shapes::StructureShape.new(name: 'ConfigurationRevision')
    ConfigurationState = Shapes::StringShape.new(name: 'ConfigurationState')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateClusterRequest = Shapes::StructureShape.new(name: 'CreateClusterRequest')
    CreateClusterResponse = Shapes::StructureShape.new(name: 'CreateClusterResponse')
    CreateConfigurationRequest = Shapes::StructureShape.new(name: 'CreateConfigurationRequest')
    CreateConfigurationResponse = Shapes::StructureShape.new(name: 'CreateConfigurationResponse')
    DeleteClusterRequest = Shapes::StructureShape.new(name: 'DeleteClusterRequest')
    DeleteClusterResponse = Shapes::StructureShape.new(name: 'DeleteClusterResponse')
    DeleteConfigurationRequest = Shapes::StructureShape.new(name: 'DeleteConfigurationRequest')
    DeleteConfigurationResponse = Shapes::StructureShape.new(name: 'DeleteConfigurationResponse')
    DescribeClusterOperationRequest = Shapes::StructureShape.new(name: 'DescribeClusterOperationRequest')
    DescribeClusterOperationResponse = Shapes::StructureShape.new(name: 'DescribeClusterOperationResponse')
    DescribeClusterRequest = Shapes::StructureShape.new(name: 'DescribeClusterRequest')
    DescribeClusterResponse = Shapes::StructureShape.new(name: 'DescribeClusterResponse')
    DescribeConfigurationRequest = Shapes::StructureShape.new(name: 'DescribeConfigurationRequest')
    DescribeConfigurationResponse = Shapes::StructureShape.new(name: 'DescribeConfigurationResponse')
    DescribeConfigurationRevisionRequest = Shapes::StructureShape.new(name: 'DescribeConfigurationRevisionRequest')
    DescribeConfigurationRevisionResponse = Shapes::StructureShape.new(name: 'DescribeConfigurationRevisionResponse')
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
    GetCompatibleKafkaVersionsRequest = Shapes::StructureShape.new(name: 'GetCompatibleKafkaVersionsRequest')
    GetCompatibleKafkaVersionsResponse = Shapes::StructureShape.new(name: 'GetCompatibleKafkaVersionsResponse')
    InternalServerErrorException = Shapes::StructureShape.new(name: 'InternalServerErrorException')
    JmxExporter = Shapes::StructureShape.new(name: 'JmxExporter')
    JmxExporterInfo = Shapes::StructureShape.new(name: 'JmxExporterInfo')
    KafkaVersion = Shapes::StructureShape.new(name: 'KafkaVersion')
    KafkaVersionStatus = Shapes::StringShape.new(name: 'KafkaVersionStatus')
    ListClusterOperationsRequest = Shapes::StructureShape.new(name: 'ListClusterOperationsRequest')
    ListClusterOperationsResponse = Shapes::StructureShape.new(name: 'ListClusterOperationsResponse')
    ListClustersRequest = Shapes::StructureShape.new(name: 'ListClustersRequest')
    ListClustersResponse = Shapes::StructureShape.new(name: 'ListClustersResponse')
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
    RebootBrokerRequest = Shapes::StructureShape.new(name: 'RebootBrokerRequest')
    RebootBrokerResponse = Shapes::StructureShape.new(name: 'RebootBrokerResponse')
    S3 = Shapes::StructureShape.new(name: 'S3')
    Sasl = Shapes::StructureShape.new(name: 'Sasl')
    Scram = Shapes::StructureShape.new(name: 'Scram')
    ServiceUnavailableException = Shapes::StructureShape.new(name: 'ServiceUnavailableException')
    StateInfo = Shapes::StructureShape.new(name: 'StateInfo')
    StorageInfo = Shapes::StructureShape.new(name: 'StorageInfo')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    Tls = Shapes::StructureShape.new(name: 'Tls')
    TooManyRequestsException = Shapes::StructureShape.new(name: 'TooManyRequestsException')
    UnauthorizedException = Shapes::StructureShape.new(name: 'UnauthorizedException')
    UnprocessedScramSecret = Shapes::StructureShape.new(name: 'UnprocessedScramSecret')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UpdateBrokerCountRequest = Shapes::StructureShape.new(name: 'UpdateBrokerCountRequest')
    UpdateBrokerCountResponse = Shapes::StructureShape.new(name: 'UpdateBrokerCountResponse')
    UpdateBrokerStorageRequest = Shapes::StructureShape.new(name: 'UpdateBrokerStorageRequest')
    UpdateBrokerStorageResponse = Shapes::StructureShape.new(name: 'UpdateBrokerStorageResponse')
    UpdateClusterConfigurationRequest = Shapes::StructureShape.new(name: 'UpdateClusterConfigurationRequest')
    UpdateClusterConfigurationResponse = Shapes::StructureShape.new(name: 'UpdateClusterConfigurationResponse')
    UpdateClusterKafkaVersionRequest = Shapes::StructureShape.new(name: 'UpdateClusterKafkaVersionRequest')
    UpdateClusterKafkaVersionResponse = Shapes::StructureShape.new(name: 'UpdateClusterKafkaVersionResponse')
    UpdateConfigurationRequest = Shapes::StructureShape.new(name: 'UpdateConfigurationRequest')
    UpdateConfigurationResponse = Shapes::StructureShape.new(name: 'UpdateConfigurationResponse')
    UpdateMonitoringRequest = Shapes::StructureShape.new(name: 'UpdateMonitoringRequest')
    UpdateMonitoringResponse = Shapes::StructureShape.new(name: 'UpdateMonitoringResponse')
    ZookeeperNodeInfo = Shapes::StructureShape.new(name: 'ZookeeperNodeInfo')
    __blob = Shapes::BlobShape.new(name: '__blob')
    __boolean = Shapes::BooleanShape.new(name: '__boolean')
    __double = Shapes::FloatShape.new(name: '__double')
    __integer = Shapes::IntegerShape.new(name: '__integer')
    __integerMin1Max15 = Shapes::IntegerShape.new(name: '__integerMin1Max15')
    __integerMin1Max16384 = Shapes::IntegerShape.new(name: '__integerMin1Max16384')
    __listOfBrokerEBSVolumeInfo = Shapes::ListShape.new(name: '__listOfBrokerEBSVolumeInfo')
    __listOfClusterInfo = Shapes::ListShape.new(name: '__listOfClusterInfo')
    __listOfClusterOperationInfo = Shapes::ListShape.new(name: '__listOfClusterOperationInfo')
    __listOfClusterOperationStep = Shapes::ListShape.new(name: '__listOfClusterOperationStep')
    __listOfCompatibleKafkaVersion = Shapes::ListShape.new(name: '__listOfCompatibleKafkaVersion')
    __listOfConfiguration = Shapes::ListShape.new(name: '__listOfConfiguration')
    __listOfConfigurationRevision = Shapes::ListShape.new(name: '__listOfConfigurationRevision')
    __listOfKafkaVersion = Shapes::ListShape.new(name: '__listOfKafkaVersion')
    __listOfNodeInfo = Shapes::ListShape.new(name: '__listOfNodeInfo')
    __listOfUnprocessedScramSecret = Shapes::ListShape.new(name: '__listOfUnprocessedScramSecret')
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
    BrokerEBSVolumeInfo.add_member(:volume_size_gb, Shapes::ShapeRef.new(shape: __integer, required: true, location_name: "volumeSizeGB"))
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
    ClientAuthentication.struct_class = Types::ClientAuthentication

    CloudWatchLogs.add_member(:enabled, Shapes::ShapeRef.new(shape: __boolean, required: true, location_name: "enabled"))
    CloudWatchLogs.add_member(:log_group, Shapes::ShapeRef.new(shape: __string, location_name: "logGroup"))
    CloudWatchLogs.struct_class = Types::CloudWatchLogs

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
    ClusterInfo.add_member(:tags, Shapes::ShapeRef.new(shape: __mapOf__string, location_name: "tags"))
    ClusterInfo.add_member(:zookeeper_connect_string, Shapes::ShapeRef.new(shape: __string, location_name: "zookeeperConnectString"))
    ClusterInfo.add_member(:zookeeper_connect_string_tls, Shapes::ShapeRef.new(shape: __string, location_name: "zookeeperConnectStringTls"))
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
    CreateClusterRequest.struct_class = Types::CreateClusterRequest

    CreateClusterResponse.add_member(:cluster_arn, Shapes::ShapeRef.new(shape: __string, location_name: "clusterArn"))
    CreateClusterResponse.add_member(:cluster_name, Shapes::ShapeRef.new(shape: __string, location_name: "clusterName"))
    CreateClusterResponse.add_member(:state, Shapes::ShapeRef.new(shape: ClusterState, location_name: "state"))
    CreateClusterResponse.struct_class = Types::CreateClusterResponse

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

    DescribeClusterOperationRequest.add_member(:cluster_operation_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "clusterOperationArn"))
    DescribeClusterOperationRequest.struct_class = Types::DescribeClusterOperationRequest

    DescribeClusterOperationResponse.add_member(:cluster_operation_info, Shapes::ShapeRef.new(shape: ClusterOperationInfo, location_name: "clusterOperationInfo"))
    DescribeClusterOperationResponse.struct_class = Types::DescribeClusterOperationResponse

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
    GetBootstrapBrokersResponse.add_member(:bootstrap_broker_string_tls, Shapes::ShapeRef.new(shape: __string, location_name: "bootstrapBrokerStringTls"))
    GetBootstrapBrokersResponse.add_member(:bootstrap_broker_string_sasl_scram, Shapes::ShapeRef.new(shape: __string, location_name: "bootstrapBrokerStringSaslScram"))
    GetBootstrapBrokersResponse.struct_class = Types::GetBootstrapBrokersResponse

    GetCompatibleKafkaVersionsRequest.add_member(:cluster_arn, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "clusterArn"))
    GetCompatibleKafkaVersionsRequest.struct_class = Types::GetCompatibleKafkaVersionsRequest

    GetCompatibleKafkaVersionsResponse.add_member(:compatible_kafka_versions, Shapes::ShapeRef.new(shape: __listOfCompatibleKafkaVersion, location_name: "compatibleKafkaVersions"))
    GetCompatibleKafkaVersionsResponse.struct_class = Types::GetCompatibleKafkaVersionsResponse

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

    LoggingInfo.add_member(:broker_logs, Shapes::ShapeRef.new(shape: BrokerLogs, required: true, location_name: "brokerLogs"))
    LoggingInfo.struct_class = Types::LoggingInfo

    MutableClusterInfo.add_member(:broker_ebs_volume_info, Shapes::ShapeRef.new(shape: __listOfBrokerEBSVolumeInfo, location_name: "brokerEBSVolumeInfo"))
    MutableClusterInfo.add_member(:configuration_info, Shapes::ShapeRef.new(shape: ConfigurationInfo, location_name: "configurationInfo"))
    MutableClusterInfo.add_member(:number_of_broker_nodes, Shapes::ShapeRef.new(shape: __integer, location_name: "numberOfBrokerNodes"))
    MutableClusterInfo.add_member(:open_monitoring, Shapes::ShapeRef.new(shape: OpenMonitoring, location_name: "openMonitoring"))
    MutableClusterInfo.add_member(:enhanced_monitoring, Shapes::ShapeRef.new(shape: EnhancedMonitoring, location_name: "enhancedMonitoring"))
    MutableClusterInfo.add_member(:kafka_version, Shapes::ShapeRef.new(shape: __string, location_name: "kafkaVersion"))
    MutableClusterInfo.add_member(:logging_info, Shapes::ShapeRef.new(shape: LoggingInfo, location_name: "loggingInfo"))
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

    RebootBrokerRequest.add_member(:broker_ids, Shapes::ShapeRef.new(shape: __listOf__string, required: true, location_name: "brokerIds"))
    RebootBrokerRequest.add_member(:cluster_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "clusterArn"))
    RebootBrokerRequest.struct_class = Types::RebootBrokerRequest

    RebootBrokerResponse.add_member(:cluster_arn, Shapes::ShapeRef.new(shape: __string, location_name: "clusterArn"))
    RebootBrokerResponse.add_member(:cluster_operation_arn, Shapes::ShapeRef.new(shape: __string, location_name: "clusterOperationArn"))
    RebootBrokerResponse.struct_class = Types::RebootBrokerResponse

    S3.add_member(:bucket, Shapes::ShapeRef.new(shape: __string, location_name: "bucket"))
    S3.add_member(:enabled, Shapes::ShapeRef.new(shape: __boolean, required: true, location_name: "enabled"))
    S3.add_member(:prefix, Shapes::ShapeRef.new(shape: __string, location_name: "prefix"))
    S3.struct_class = Types::S3

    Sasl.add_member(:scram, Shapes::ShapeRef.new(shape: Scram, location_name: "scram"))
    Sasl.struct_class = Types::Sasl

    Scram.add_member(:enabled, Shapes::ShapeRef.new(shape: __boolean, location_name: "enabled"))
    Scram.struct_class = Types::Scram

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
    Tls.struct_class = Types::Tls

    TooManyRequestsException.add_member(:invalid_parameter, Shapes::ShapeRef.new(shape: __string, location_name: "invalidParameter"))
    TooManyRequestsException.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "message"))
    TooManyRequestsException.struct_class = Types::TooManyRequestsException

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

    UpdateMonitoringRequest.add_member(:cluster_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "clusterArn"))
    UpdateMonitoringRequest.add_member(:current_version, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "currentVersion"))
    UpdateMonitoringRequest.add_member(:enhanced_monitoring, Shapes::ShapeRef.new(shape: EnhancedMonitoring, location_name: "enhancedMonitoring"))
    UpdateMonitoringRequest.add_member(:open_monitoring, Shapes::ShapeRef.new(shape: OpenMonitoringInfo, location_name: "openMonitoring"))
    UpdateMonitoringRequest.add_member(:logging_info, Shapes::ShapeRef.new(shape: LoggingInfo, location_name: "loggingInfo"))
    UpdateMonitoringRequest.struct_class = Types::UpdateMonitoringRequest

    UpdateMonitoringResponse.add_member(:cluster_arn, Shapes::ShapeRef.new(shape: __string, location_name: "clusterArn"))
    UpdateMonitoringResponse.add_member(:cluster_operation_arn, Shapes::ShapeRef.new(shape: __string, location_name: "clusterOperationArn"))
    UpdateMonitoringResponse.struct_class = Types::UpdateMonitoringResponse

    ZookeeperNodeInfo.add_member(:attached_eni_id, Shapes::ShapeRef.new(shape: __string, location_name: "attachedENIId"))
    ZookeeperNodeInfo.add_member(:client_vpc_ip_address, Shapes::ShapeRef.new(shape: __string, location_name: "clientVpcIpAddress"))
    ZookeeperNodeInfo.add_member(:endpoints, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "endpoints"))
    ZookeeperNodeInfo.add_member(:zookeeper_id, Shapes::ShapeRef.new(shape: __double, location_name: "zookeeperId"))
    ZookeeperNodeInfo.add_member(:zookeeper_version, Shapes::ShapeRef.new(shape: __string, location_name: "zookeeperVersion"))
    ZookeeperNodeInfo.struct_class = Types::ZookeeperNodeInfo

    __listOfBrokerEBSVolumeInfo.member = Shapes::ShapeRef.new(shape: BrokerEBSVolumeInfo)

    __listOfClusterInfo.member = Shapes::ShapeRef.new(shape: ClusterInfo)

    __listOfClusterOperationInfo.member = Shapes::ShapeRef.new(shape: ClusterOperationInfo)

    __listOfClusterOperationStep.member = Shapes::ShapeRef.new(shape: ClusterOperationStep)

    __listOfCompatibleKafkaVersion.member = Shapes::ShapeRef.new(shape: CompatibleKafkaVersion)

    __listOfConfiguration.member = Shapes::ShapeRef.new(shape: Configuration)

    __listOfConfigurationRevision.member = Shapes::ShapeRef.new(shape: ConfigurationRevision)

    __listOfKafkaVersion.member = Shapes::ShapeRef.new(shape: KafkaVersion)

    __listOfNodeInfo.member = Shapes::ShapeRef.new(shape: NodeInfo)

    __listOfUnprocessedScramSecret.member = Shapes::ShapeRef.new(shape: UnprocessedScramSecret)

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
    end

  end
end
