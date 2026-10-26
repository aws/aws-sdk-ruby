# frozen_string_literal: true

# This is generated code!

module Aws::Kafka
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AmazonMskCluster = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#AmazonMskCluster", name: "AmazonMskCluster")
    ApacheKafkaCluster = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#ApacheKafkaCluster", name: "ApacheKafkaCluster")
    AuthorizerLogs = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#AuthorizerLogs", name: "AuthorizerLogs")
    BadRequestException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#BadRequestException", name: "BadRequestException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    BatchAssociateScramSecretRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#BatchAssociateScramSecretRequest", name: "BatchAssociateScramSecretRequest")
    BatchAssociateScramSecretResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#BatchAssociateScramSecretResponse", name: "BatchAssociateScramSecretResponse")
    BatchDisassociateScramSecretRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#BatchDisassociateScramSecretRequest", name: "BatchDisassociateScramSecretRequest")
    BatchDisassociateScramSecretResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#BatchDisassociateScramSecretResponse", name: "BatchDisassociateScramSecretResponse")
    BrokerAZDistribution = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.kafka#BrokerAZDistribution", name: "BrokerAZDistribution")
    BrokerCountUpdateInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#BrokerCountUpdateInfo", name: "BrokerCountUpdateInfo")
    BrokerEBSVolumeInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#BrokerEBSVolumeInfo", name: "BrokerEBSVolumeInfo")
    BrokerLogs = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#BrokerLogs", name: "BrokerLogs")
    BrokerNodeGroupInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#BrokerNodeGroupInfo", name: "BrokerNodeGroupInfo")
    BrokerNodeInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#BrokerNodeInfo", name: "BrokerNodeInfo")
    BrokerSoftwareInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#BrokerSoftwareInfo", name: "BrokerSoftwareInfo")
    Catalog = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#Catalog", name: "Catalog")
    ChannelDestinationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.kafka#ChannelDestinationType", name: "ChannelDestinationType")
    ChannelInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#ChannelInfo", name: "ChannelInfo")
    ChannelLoggingInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#ChannelLoggingInfo", name: "ChannelLoggingInfo")
    ChannelStateInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#ChannelStateInfo", name: "ChannelStateInfo")
    ChannelStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.kafka#ChannelStatus", name: "ChannelStatus")
    ClientAuthentication = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#ClientAuthentication", name: "ClientAuthentication")
    ClientBroker = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.kafka#ClientBroker", name: "ClientBroker")
    ClientVpcConnection = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#ClientVpcConnection", name: "ClientVpcConnection")
    CloudWatchLogs = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#CloudWatchLogs", name: "CloudWatchLogs")
    Cluster = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#Cluster", name: "Cluster")
    ClusterConnectivityException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#ClusterConnectivityException", name: "ClusterConnectivityException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ClusterInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#ClusterInfo", name: "ClusterInfo")
    ClusterOperationInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#ClusterOperationInfo", name: "ClusterOperationInfo")
    ClusterOperationStep = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#ClusterOperationStep", name: "ClusterOperationStep")
    ClusterOperationStepInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#ClusterOperationStepInfo", name: "ClusterOperationStepInfo")
    ClusterOperationV2 = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#ClusterOperationV2", name: "ClusterOperationV2")
    ClusterOperationV2Provisioned = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#ClusterOperationV2Provisioned", name: "ClusterOperationV2Provisioned")
    ClusterOperationV2Serverless = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#ClusterOperationV2Serverless", name: "ClusterOperationV2Serverless")
    ClusterOperationV2Summary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#ClusterOperationV2Summary", name: "ClusterOperationV2Summary")
    ClusterState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.kafka#ClusterState", name: "ClusterState")
    ClusterType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.kafka#ClusterType", name: "ClusterType")
    CompatibleKafkaVersion = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#CompatibleKafkaVersion", name: "CompatibleKafkaVersion")
    Configuration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#Configuration", name: "Configuration")
    ConfigurationInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#ConfigurationInfo", name: "ConfigurationInfo")
    ConfigurationRevision = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#ConfigurationRevision", name: "ConfigurationRevision")
    ConfigurationState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.kafka#ConfigurationState", name: "ConfigurationState")
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ConnectivityInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#ConnectivityInfo", name: "ConnectivityInfo")
    ConsumerGroupOffsetSyncMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.kafka#ConsumerGroupOffsetSyncMode", name: "ConsumerGroupOffsetSyncMode")
    ConsumerGroupReplication = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#ConsumerGroupReplication", name: "ConsumerGroupReplication")
    ConsumerGroupReplicationUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#ConsumerGroupReplicationUpdate", name: "ConsumerGroupReplicationUpdate")
    ControllerMovedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#ControllerMovedException", name: "ControllerMovedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ControllerNodeInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#ControllerNodeInfo", name: "ControllerNodeInfo")
    CreateChannelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#CreateChannelRequest", name: "CreateChannelRequest")
    CreateChannelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#CreateChannelResponse", name: "CreateChannelResponse")
    CreateClusterRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#CreateClusterRequest", name: "CreateClusterRequest")
    CreateClusterResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#CreateClusterResponse", name: "CreateClusterResponse")
    CreateClusterV2Request = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#CreateClusterV2Request", name: "CreateClusterV2Request")
    CreateClusterV2Response = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#CreateClusterV2Response", name: "CreateClusterV2Response")
    CreateConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#CreateConfigurationRequest", name: "CreateConfigurationRequest")
    CreateConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#CreateConfigurationResponse", name: "CreateConfigurationResponse")
    CreateReplicatorRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#CreateReplicatorRequest", name: "CreateReplicatorRequest")
    CreateReplicatorResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#CreateReplicatorResponse", name: "CreateReplicatorResponse")
    CreateTopicRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#CreateTopicRequest", name: "CreateTopicRequest")
    CreateTopicResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#CreateTopicResponse", name: "CreateTopicResponse")
    CreateVpcConnectionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#CreateVpcConnectionRequest", name: "CreateVpcConnectionRequest")
    CreateVpcConnectionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#CreateVpcConnectionResponse", name: "CreateVpcConnectionResponse")
    CustomerActionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.kafka#CustomerActionStatus", name: "CustomerActionStatus")
    DeadLetterQueueS3 = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#DeadLetterQueueS3", name: "DeadLetterQueueS3")
    DeleteChannelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#DeleteChannelRequest", name: "DeleteChannelRequest")
    DeleteChannelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#DeleteChannelResponse", name: "DeleteChannelResponse")
    DeleteClusterPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#DeleteClusterPolicyRequest", name: "DeleteClusterPolicyRequest")
    DeleteClusterPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#DeleteClusterPolicyResponse", name: "DeleteClusterPolicyResponse")
    DeleteClusterRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#DeleteClusterRequest", name: "DeleteClusterRequest")
    DeleteClusterResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#DeleteClusterResponse", name: "DeleteClusterResponse")
    DeleteConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#DeleteConfigurationRequest", name: "DeleteConfigurationRequest")
    DeleteConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#DeleteConfigurationResponse", name: "DeleteConfigurationResponse")
    DeleteReplicatorRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#DeleteReplicatorRequest", name: "DeleteReplicatorRequest")
    DeleteReplicatorResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#DeleteReplicatorResponse", name: "DeleteReplicatorResponse")
    DeleteTopicRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#DeleteTopicRequest", name: "DeleteTopicRequest")
    DeleteTopicResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#DeleteTopicResponse", name: "DeleteTopicResponse")
    DeleteVpcConnectionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#DeleteVpcConnectionRequest", name: "DeleteVpcConnectionRequest")
    DeleteVpcConnectionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#DeleteVpcConnectionResponse", name: "DeleteVpcConnectionResponse")
    DescribeChannelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#DescribeChannelRequest", name: "DescribeChannelRequest")
    DescribeChannelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#DescribeChannelResponse", name: "DescribeChannelResponse")
    DescribeClusterOperationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#DescribeClusterOperationRequest", name: "DescribeClusterOperationRequest")
    DescribeClusterOperationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#DescribeClusterOperationResponse", name: "DescribeClusterOperationResponse")
    DescribeClusterOperationV2Request = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#DescribeClusterOperationV2Request", name: "DescribeClusterOperationV2Request")
    DescribeClusterOperationV2Response = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#DescribeClusterOperationV2Response", name: "DescribeClusterOperationV2Response")
    DescribeClusterRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#DescribeClusterRequest", name: "DescribeClusterRequest")
    DescribeClusterResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#DescribeClusterResponse", name: "DescribeClusterResponse")
    DescribeClusterV2Request = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#DescribeClusterV2Request", name: "DescribeClusterV2Request")
    DescribeClusterV2Response = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#DescribeClusterV2Response", name: "DescribeClusterV2Response")
    DescribeConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#DescribeConfigurationRequest", name: "DescribeConfigurationRequest")
    DescribeConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#DescribeConfigurationResponse", name: "DescribeConfigurationResponse")
    DescribeConfigurationRevisionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#DescribeConfigurationRevisionRequest", name: "DescribeConfigurationRevisionRequest")
    DescribeConfigurationRevisionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#DescribeConfigurationRevisionResponse", name: "DescribeConfigurationRevisionResponse")
    DescribeReplicatorRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#DescribeReplicatorRequest", name: "DescribeReplicatorRequest")
    DescribeReplicatorResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#DescribeReplicatorResponse", name: "DescribeReplicatorResponse")
    DescribeTopicPartitionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#DescribeTopicPartitionsRequest", name: "DescribeTopicPartitionsRequest")
    DescribeTopicPartitionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#DescribeTopicPartitionsResponse", name: "DescribeTopicPartitionsResponse")
    DescribeTopicRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#DescribeTopicRequest", name: "DescribeTopicRequest")
    DescribeTopicResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#DescribeTopicResponse", name: "DescribeTopicResponse")
    DescribeVpcConnectionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#DescribeVpcConnectionRequest", name: "DescribeVpcConnectionRequest")
    DescribeVpcConnectionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#DescribeVpcConnectionResponse", name: "DescribeVpcConnectionResponse")
    DestinationTable = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#DestinationTable", name: "DestinationTable")
    EBSStorageInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#EBSStorageInfo", name: "EBSStorageInfo")
    EncryptionAtRest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#EncryptionAtRest", name: "EncryptionAtRest")
    EncryptionConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#EncryptionConfiguration", name: "EncryptionConfiguration")
    EncryptionInTransit = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#EncryptionInTransit", name: "EncryptionInTransit")
    EncryptionInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#EncryptionInfo", name: "EncryptionInfo")
    EnhancedMonitoring = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.kafka#EnhancedMonitoring", name: "EnhancedMonitoring")
    ErrorInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#ErrorInfo", name: "ErrorInfo")
    Firehose = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#Firehose", name: "Firehose")
    ForbiddenException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#ForbiddenException", name: "ForbiddenException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    GetBootstrapBrokersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#GetBootstrapBrokersRequest", name: "GetBootstrapBrokersRequest")
    GetBootstrapBrokersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#GetBootstrapBrokersResponse", name: "GetBootstrapBrokersResponse")
    GetClusterPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#GetClusterPolicyRequest", name: "GetClusterPolicyRequest")
    GetClusterPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#GetClusterPolicyResponse", name: "GetClusterPolicyResponse")
    GetCompatibleKafkaVersionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#GetCompatibleKafkaVersionsRequest", name: "GetCompatibleKafkaVersionsRequest")
    GetCompatibleKafkaVersionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#GetCompatibleKafkaVersionsResponse", name: "GetCompatibleKafkaVersionsResponse")
    GroupSubscribedToTopicException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#GroupSubscribedToTopicException", name: "GroupSubscribedToTopicException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    Iam = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#Iam", name: "Iam")
    IcebergCompressionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.kafka#IcebergCompressionType", name: "IcebergCompressionType")
    IcebergDestinationConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#IcebergDestinationConfiguration", name: "IcebergDestinationConfiguration")
    IcebergDestinationUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#IcebergDestinationUpdate", name: "IcebergDestinationUpdate")
    InternalServerErrorException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#InternalServerErrorException", name: "InternalServerErrorException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    JmxExporter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#JmxExporter", name: "JmxExporter")
    JmxExporterInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#JmxExporterInfo", name: "JmxExporterInfo")
    JwtSigningAlgorithm = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.kafka#JwtSigningAlgorithm", name: "JwtSigningAlgorithm")
    KafkaCluster = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#KafkaCluster", name: "KafkaCluster")
    KafkaClusterClientAuthentication = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#KafkaClusterClientAuthentication", name: "KafkaClusterClientAuthentication")
    KafkaClusterClientVpcConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#KafkaClusterClientVpcConfig", name: "KafkaClusterClientVpcConfig")
    KafkaClusterDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#KafkaClusterDescription", name: "KafkaClusterDescription")
    KafkaClusterEncryptionInTransit = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#KafkaClusterEncryptionInTransit", name: "KafkaClusterEncryptionInTransit")
    KafkaClusterEncryptionInTransitType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.kafka#KafkaClusterEncryptionInTransitType", name: "KafkaClusterEncryptionInTransitType")
    KafkaClusterMTLSAuthentication = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#KafkaClusterMTLSAuthentication", name: "KafkaClusterMTLSAuthentication")
    KafkaClusterOAuthClientCredentials = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#KafkaClusterOAuthClientCredentials", name: "KafkaClusterOAuthClientCredentials")
    KafkaClusterOAuthClientCredentialsAssertion = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#KafkaClusterOAuthClientCredentialsAssertion", name: "KafkaClusterOAuthClientCredentialsAssertion")
    KafkaClusterOAuthIamJwtBearer = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#KafkaClusterOAuthIamJwtBearer", name: "KafkaClusterOAuthIamJwtBearer")
    KafkaClusterSaslOAuthBearerAuthentication = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#KafkaClusterSaslOAuthBearerAuthentication", name: "KafkaClusterSaslOAuthBearerAuthentication")
    KafkaClusterSaslScramAuthentication = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#KafkaClusterSaslScramAuthentication", name: "KafkaClusterSaslScramAuthentication")
    KafkaClusterSaslScramMechanism = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.kafka#KafkaClusterSaslScramMechanism", name: "KafkaClusterSaslScramMechanism")
    KafkaClusterSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#KafkaClusterSummary", name: "KafkaClusterSummary")
    KafkaRequestException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#KafkaRequestException", name: "KafkaRequestException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    KafkaTimeoutException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#KafkaTimeoutException", name: "KafkaTimeoutException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    KafkaVersion = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#KafkaVersion", name: "KafkaVersion")
    KafkaVersionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.kafka#KafkaVersionStatus", name: "KafkaVersionStatus")
    ListChannelsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#ListChannelsRequest", name: "ListChannelsRequest")
    ListChannelsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#ListChannelsResponse", name: "ListChannelsResponse")
    ListClientVpcConnectionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#ListClientVpcConnectionsRequest", name: "ListClientVpcConnectionsRequest")
    ListClientVpcConnectionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#ListClientVpcConnectionsResponse", name: "ListClientVpcConnectionsResponse")
    ListClusterOperationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#ListClusterOperationsRequest", name: "ListClusterOperationsRequest")
    ListClusterOperationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#ListClusterOperationsResponse", name: "ListClusterOperationsResponse")
    ListClusterOperationsV2Request = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#ListClusterOperationsV2Request", name: "ListClusterOperationsV2Request")
    ListClusterOperationsV2Response = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#ListClusterOperationsV2Response", name: "ListClusterOperationsV2Response")
    ListClustersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#ListClustersRequest", name: "ListClustersRequest")
    ListClustersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#ListClustersResponse", name: "ListClustersResponse")
    ListClustersV2Request = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#ListClustersV2Request", name: "ListClustersV2Request")
    ListClustersV2Response = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#ListClustersV2Response", name: "ListClustersV2Response")
    ListConfigurationRevisionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#ListConfigurationRevisionsRequest", name: "ListConfigurationRevisionsRequest")
    ListConfigurationRevisionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#ListConfigurationRevisionsResponse", name: "ListConfigurationRevisionsResponse")
    ListConfigurationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#ListConfigurationsRequest", name: "ListConfigurationsRequest")
    ListConfigurationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#ListConfigurationsResponse", name: "ListConfigurationsResponse")
    ListKafkaVersionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#ListKafkaVersionsRequest", name: "ListKafkaVersionsRequest")
    ListKafkaVersionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#ListKafkaVersionsResponse", name: "ListKafkaVersionsResponse")
    ListNodesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#ListNodesRequest", name: "ListNodesRequest")
    ListNodesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#ListNodesResponse", name: "ListNodesResponse")
    ListReplicatorsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#ListReplicatorsRequest", name: "ListReplicatorsRequest")
    ListReplicatorsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#ListReplicatorsResponse", name: "ListReplicatorsResponse")
    ListScramSecretsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#ListScramSecretsRequest", name: "ListScramSecretsRequest")
    ListScramSecretsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#ListScramSecretsResponse", name: "ListScramSecretsResponse")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    ListTopicsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#ListTopicsRequest", name: "ListTopicsRequest")
    ListTopicsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#ListTopicsResponse", name: "ListTopicsResponse")
    ListVpcConnectionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#ListVpcConnectionsRequest", name: "ListVpcConnectionsRequest")
    ListVpcConnectionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#ListVpcConnectionsResponse", name: "ListVpcConnectionsResponse")
    LogDelivery = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#LogDelivery", name: "LogDelivery")
    LoggingInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#LoggingInfo", name: "LoggingInfo")
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.kafka#MaxResults", name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MutableClusterInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#MutableClusterInfo", name: "MutableClusterInfo")
    NetworkType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.kafka#NetworkType", name: "NetworkType")
    NodeExporter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#NodeExporter", name: "NodeExporter")
    NodeExporterInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#NodeExporterInfo", name: "NodeExporterInfo")
    NodeInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#NodeInfo", name: "NodeInfo")
    NodeType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.kafka#NodeType", name: "NodeType")
    NotControllerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#NotControllerException", name: "NotControllerException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    NotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#NotFoundException", name: "NotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    OpenMonitoring = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#OpenMonitoring", name: "OpenMonitoring")
    OpenMonitoringInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#OpenMonitoringInfo", name: "OpenMonitoringInfo")
    PartitionSource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#PartitionSource", name: "PartitionSource")
    PartitionSpec = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#PartitionSpec", name: "PartitionSpec")
    PartitionStrategy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.kafka#PartitionStrategy", name: "PartitionStrategy")
    Prometheus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#Prometheus", name: "Prometheus")
    PrometheusInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#PrometheusInfo", name: "PrometheusInfo")
    Provisioned = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#Provisioned", name: "Provisioned")
    ProvisionedRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#ProvisionedRequest", name: "ProvisionedRequest")
    ProvisionedThroughput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#ProvisionedThroughput", name: "ProvisionedThroughput")
    PublicAccess = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#PublicAccess", name: "PublicAccess")
    PutClusterPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#PutClusterPolicyRequest", name: "PutClusterPolicyRequest")
    PutClusterPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#PutClusterPolicyResponse", name: "PutClusterPolicyResponse")
    ReassignmentInProgressException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#ReassignmentInProgressException", name: "ReassignmentInProgressException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    Rebalancing = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#Rebalancing", name: "Rebalancing")
    RebalancingStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.kafka#RebalancingStatus", name: "RebalancingStatus")
    RebootBrokerRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#RebootBrokerRequest", name: "RebootBrokerRequest")
    RebootBrokerResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#RebootBrokerResponse", name: "RebootBrokerResponse")
    RecordConverter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#RecordConverter", name: "RecordConverter")
    RecordSchema = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#RecordSchema", name: "RecordSchema")
    RejectClientVpcConnectionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#RejectClientVpcConnectionRequest", name: "RejectClientVpcConnectionRequest")
    RejectClientVpcConnectionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#RejectClientVpcConnectionResponse", name: "RejectClientVpcConnectionResponse")
    ReplicationInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#ReplicationInfo", name: "ReplicationInfo")
    ReplicationInfoDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#ReplicationInfoDescription", name: "ReplicationInfoDescription")
    ReplicationInfoSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#ReplicationInfoSummary", name: "ReplicationInfoSummary")
    ReplicationStartingPosition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#ReplicationStartingPosition", name: "ReplicationStartingPosition")
    ReplicationStartingPositionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.kafka#ReplicationStartingPositionType", name: "ReplicationStartingPositionType")
    ReplicationStateInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#ReplicationStateInfo", name: "ReplicationStateInfo")
    ReplicationTopicNameConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#ReplicationTopicNameConfiguration", name: "ReplicationTopicNameConfiguration")
    ReplicationTopicNameConfigurationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.kafka#ReplicationTopicNameConfigurationType", name: "ReplicationTopicNameConfigurationType")
    ReplicatorCloudWatchLogs = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#ReplicatorCloudWatchLogs", name: "ReplicatorCloudWatchLogs")
    ReplicatorFirehose = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#ReplicatorFirehose", name: "ReplicatorFirehose")
    ReplicatorLogDelivery = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#ReplicatorLogDelivery", name: "ReplicatorLogDelivery")
    ReplicatorS3 = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#ReplicatorS3", name: "ReplicatorS3")
    ReplicatorState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.kafka#ReplicatorState", name: "ReplicatorState")
    ReplicatorSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#ReplicatorSummary", name: "ReplicatorSummary")
    S3 = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#S3", name: "S3")
    S3CompressionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.kafka#S3CompressionType", name: "S3CompressionType")
    S3DestinationConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#S3DestinationConfiguration", name: "S3DestinationConfiguration")
    S3DestinationUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#S3DestinationUpdate", name: "S3DestinationUpdate")
    S3Storage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#S3Storage", name: "S3Storage")
    S3StorageClass = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.kafka#S3StorageClass", name: "S3StorageClass")
    Sasl = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#Sasl", name: "Sasl")
    SchemaEvolution = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#SchemaEvolution", name: "SchemaEvolution")
    Scram = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#Scram", name: "Scram")
    Serverless = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#Serverless", name: "Serverless")
    ServerlessClientAuthentication = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#ServerlessClientAuthentication", name: "ServerlessClientAuthentication")
    ServerlessConnectivityInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#ServerlessConnectivityInfo", name: "ServerlessConnectivityInfo")
    ServerlessRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#ServerlessRequest", name: "ServerlessRequest")
    ServerlessSasl = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#ServerlessSasl", name: "ServerlessSasl")
    ServiceUnavailableException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#ServiceUnavailableException", name: "ServiceUnavailableException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 503})
    StateInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#StateInfo", name: "StateInfo")
    StorageInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#StorageInfo", name: "StorageInfo")
    StorageMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.kafka#StorageMode", name: "StorageMode")
    TableCreation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#TableCreation", name: "TableCreation")
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#TagResourceRequest", name: "TagResourceRequest")
    TargetCompressionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.kafka#TargetCompressionType", name: "TargetCompressionType")
    Tls = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#Tls", name: "Tls")
    TokenEndpointAuthenticationMethod = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.kafka#TokenEndpointAuthenticationMethod", name: "TokenEndpointAuthenticationMethod")
    TooManyRequestsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#TooManyRequestsException", name: "TooManyRequestsException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    TopicConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#TopicConfiguration", name: "TopicConfiguration")
    TopicExistsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#TopicExistsException", name: "TopicExistsException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    TopicInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#TopicInfo", name: "TopicInfo")
    TopicPartitionInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#TopicPartitionInfo", name: "TopicPartitionInfo")
    TopicReplication = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#TopicReplication", name: "TopicReplication")
    TopicReplicationUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#TopicReplicationUpdate", name: "TopicReplicationUpdate")
    TopicState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.kafka#TopicState", name: "TopicState")
    Unauthenticated = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#Unauthenticated", name: "Unauthenticated")
    UnauthorizedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#UnauthorizedException", name: "UnauthorizedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 401})
    UnknownTopicOrPartitionException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#UnknownTopicOrPartitionException", name: "UnknownTopicOrPartitionException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    UnprocessedScramSecret = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#UnprocessedScramSecret", name: "UnprocessedScramSecret")
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#UntagResourceRequest", name: "UntagResourceRequest")
    UpdateBrokerCountRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#UpdateBrokerCountRequest", name: "UpdateBrokerCountRequest")
    UpdateBrokerCountResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#UpdateBrokerCountResponse", name: "UpdateBrokerCountResponse")
    UpdateBrokerStorageRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#UpdateBrokerStorageRequest", name: "UpdateBrokerStorageRequest")
    UpdateBrokerStorageResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#UpdateBrokerStorageResponse", name: "UpdateBrokerStorageResponse")
    UpdateBrokerTypeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#UpdateBrokerTypeRequest", name: "UpdateBrokerTypeRequest")
    UpdateBrokerTypeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#UpdateBrokerTypeResponse", name: "UpdateBrokerTypeResponse")
    UpdateChannelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#UpdateChannelRequest", name: "UpdateChannelRequest")
    UpdateChannelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#UpdateChannelResponse", name: "UpdateChannelResponse")
    UpdateClusterConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#UpdateClusterConfigurationRequest", name: "UpdateClusterConfigurationRequest")
    UpdateClusterConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#UpdateClusterConfigurationResponse", name: "UpdateClusterConfigurationResponse")
    UpdateClusterKafkaVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#UpdateClusterKafkaVersionRequest", name: "UpdateClusterKafkaVersionRequest")
    UpdateClusterKafkaVersionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#UpdateClusterKafkaVersionResponse", name: "UpdateClusterKafkaVersionResponse")
    UpdateConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#UpdateConfigurationRequest", name: "UpdateConfigurationRequest")
    UpdateConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#UpdateConfigurationResponse", name: "UpdateConfigurationResponse")
    UpdateConnectivityRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#UpdateConnectivityRequest", name: "UpdateConnectivityRequest")
    UpdateConnectivityResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#UpdateConnectivityResponse", name: "UpdateConnectivityResponse")
    UpdateMonitoringRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#UpdateMonitoringRequest", name: "UpdateMonitoringRequest")
    UpdateMonitoringResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#UpdateMonitoringResponse", name: "UpdateMonitoringResponse")
    UpdateRebalancingRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#UpdateRebalancingRequest", name: "UpdateRebalancingRequest")
    UpdateRebalancingResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#UpdateRebalancingResponse", name: "UpdateRebalancingResponse")
    UpdateReplicationInfoRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#UpdateReplicationInfoRequest", name: "UpdateReplicationInfoRequest")
    UpdateReplicationInfoResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#UpdateReplicationInfoResponse", name: "UpdateReplicationInfoResponse")
    UpdateSecurityRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#UpdateSecurityRequest", name: "UpdateSecurityRequest")
    UpdateSecurityResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#UpdateSecurityResponse", name: "UpdateSecurityResponse")
    UpdateStorageRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#UpdateStorageRequest", name: "UpdateStorageRequest")
    UpdateStorageResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#UpdateStorageResponse", name: "UpdateStorageResponse")
    UpdateTopicRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#UpdateTopicRequest", name: "UpdateTopicRequest")
    UpdateTopicResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#UpdateTopicResponse", name: "UpdateTopicResponse")
    UserIdentity = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#UserIdentity", name: "UserIdentity")
    UserIdentityType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.kafka#UserIdentityType", name: "UserIdentityType")
    ValueConverter = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.kafka#ValueConverter", name: "ValueConverter")
    VpcConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#VpcConfig", name: "VpcConfig")
    VpcConnection = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#VpcConnection", name: "VpcConnection")
    VpcConnectionInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#VpcConnectionInfo", name: "VpcConnectionInfo")
    VpcConnectionInfoServerless = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#VpcConnectionInfoServerless", name: "VpcConnectionInfoServerless")
    VpcConnectionState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.kafka#VpcConnectionState", name: "VpcConnectionState")
    VpcConnectivity = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#VpcConnectivity", name: "VpcConnectivity")
    VpcConnectivityClientAuthentication = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#VpcConnectivityClientAuthentication", name: "VpcConnectivityClientAuthentication")
    VpcConnectivityIam = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#VpcConnectivityIam", name: "VpcConnectivityIam")
    VpcConnectivitySasl = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#VpcConnectivitySasl", name: "VpcConnectivitySasl")
    VpcConnectivityScram = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#VpcConnectivityScram", name: "VpcConnectivityScram")
    VpcConnectivityTls = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#VpcConnectivityTls", name: "VpcConnectivityTls")
    ZookeeperAccess = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#ZookeeperAccess", name: "ZookeeperAccess")
    ZookeeperNodeInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kafka#ZookeeperNodeInfo", name: "ZookeeperNodeInfo")
    Blob = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.kafka#__blob", name: "Blob")
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.kafka#__boolean", name: "Boolean")
    Double = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.kafka#__double", name: "Double")
    Integer = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.kafka#__integer", name: "Integer")
    Integermin1 = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.kafka#__integerMin1", name: "Integermin1", traits: {"smithy.api#range" => {"min" => 1}})
    Integermin1max15 = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.kafka#__integerMin1Max15", name: "Integermin1max15", traits: {"smithy.api#range" => {"min" => 1, "max" => 15}})
    Integermin1max16384 = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.kafka#__integerMin1Max16384", name: "Integermin1max16384", traits: {"smithy.api#range" => {"min" => 1, "max" => 16384}})
    Listofbrokerebsvolumeinfo = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kafka#__listOfBrokerEBSVolumeInfo", name: "Listofbrokerebsvolumeinfo")
    Listofchannelinfo = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kafka#__listOfChannelInfo", name: "Listofchannelinfo")
    Listofclientvpcconnection = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kafka#__listOfClientVpcConnection", name: "Listofclientvpcconnection")
    Listofcluster = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kafka#__listOfCluster", name: "Listofcluster")
    Listofclusterinfo = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kafka#__listOfClusterInfo", name: "Listofclusterinfo")
    Listofclusteroperationinfo = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kafka#__listOfClusterOperationInfo", name: "Listofclusteroperationinfo")
    Listofclusteroperationstep = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kafka#__listOfClusterOperationStep", name: "Listofclusteroperationstep")
    Listofclusteroperationv2summary = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kafka#__listOfClusterOperationV2Summary", name: "Listofclusteroperationv2summary")
    Listofcompatiblekafkaversion = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kafka#__listOfCompatibleKafkaVersion", name: "Listofcompatiblekafkaversion")
    Listofconfiguration = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kafka#__listOfConfiguration", name: "Listofconfiguration")
    Listofconfigurationrevision = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kafka#__listOfConfigurationRevision", name: "Listofconfigurationrevision")
    Listofdestinationtable = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kafka#__listOfDestinationTable", name: "Listofdestinationtable")
    Listofkafkacluster = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kafka#__listOfKafkaCluster", name: "Listofkafkacluster")
    Listofkafkaclusterdescription = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kafka#__listOfKafkaClusterDescription", name: "Listofkafkaclusterdescription")
    Listofkafkaclustersummary = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kafka#__listOfKafkaClusterSummary", name: "Listofkafkaclustersummary")
    Listofkafkaversion = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kafka#__listOfKafkaVersion", name: "Listofkafkaversion")
    Listofnodeinfo = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kafka#__listOfNodeInfo", name: "Listofnodeinfo")
    Listofpartitionsource = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kafka#__listOfPartitionSource", name: "Listofpartitionsource")
    Listofreplicationinfo = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kafka#__listOfReplicationInfo", name: "Listofreplicationinfo")
    Listofreplicationinfodescription = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kafka#__listOfReplicationInfoDescription", name: "Listofreplicationinfodescription")
    Listofreplicationinfosummary = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kafka#__listOfReplicationInfoSummary", name: "Listofreplicationinfosummary")
    Listofreplicatorsummary = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kafka#__listOfReplicatorSummary", name: "Listofreplicatorsummary")
    Listoftopicconfiguration = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kafka#__listOfTopicConfiguration", name: "Listoftopicconfiguration")
    Listoftopicinfo = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kafka#__listOfTopicInfo", name: "Listoftopicinfo")
    Listoftopicpartitioninfo = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kafka#__listOfTopicPartitionInfo", name: "Listoftopicpartitioninfo")
    Listofunprocessedscramsecret = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kafka#__listOfUnprocessedScramSecret", name: "Listofunprocessedscramsecret")
    Listofvpcconfig = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kafka#__listOfVpcConfig", name: "Listofvpcconfig")
    Listofvpcconnection = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kafka#__listOfVpcConnection", name: "Listofvpcconnection")
    ListofDouble = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kafka#__listOf__double", name: "ListofDouble")
    ListofInteger = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kafka#__listOf__integer", name: "ListofInteger")
    ListofString = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kafka#__listOf__string", name: "ListofString")
    ListofStringmax249 = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kafka#__listOf__stringMax249", name: "ListofStringmax249")
    ListofStringmax256 = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kafka#__listOf__stringMax256", name: "ListofStringmax256")
    Long = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.kafka#__long", name: "Long")
    MapofString = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.kafka#__mapOf__string", name: "MapofString")
    String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kafka#__string", name: "String")
    Stringmax1024 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kafka#__stringMax1024", name: "Stringmax1024", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    Stringmax249 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kafka#__stringMax249", name: "Stringmax249", traits: {"smithy.api#length" => {"min" => 0, "max" => 249}})
    Stringmax256 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kafka#__stringMax256", name: "Stringmax256", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    Stringmin1max128 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kafka#__stringMin1Max128", name: "Stringmin1max128", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    Stringmin1max128pattern09azaz09azaz0 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kafka#__stringMin1Max128Pattern09AZaZ09AZaZ0", name: "Stringmin1max128pattern09azaz09azaz0", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[0-9A-Za-z][0-9A-Za-z-]{0,}$"})
    Stringmin1max64 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kafka#__stringMin1Max64", name: "Stringmin1max64", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    Stringmin5max32 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kafka#__stringMin5Max32", name: "Stringmin5max32", traits: {"smithy.api#length" => {"min" => 5, "max" => 32}})
    Timestampiso8601 = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.kafka#__timestampIso8601", name: "Timestampiso8601", traits: {"smithy.api#timestampFormat" => "date-time"})

    AmazonMskCluster.add_member(:msk_cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MskClusterArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "mskClusterArn", "smithy.api#required" => {}}))
    AmazonMskCluster.type = Types::AmazonMskCluster
    ApacheKafkaCluster.add_member(:apache_kafka_cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ApacheKafkaClusterId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "apacheKafkaClusterId", "smithy.api#required" => {}}))
    ApacheKafkaCluster.add_member(:bootstrap_broker_string, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "BootstrapBrokerString", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "bootstrapBrokerString", "smithy.api#required" => {}}))
    ApacheKafkaCluster.type = Types::ApacheKafkaCluster
    AuthorizerLogs.add_member(:cloud_watch_logs, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchLogs, name: "CloudWatchLogs", traits: {"smithy.api#jsonName" => "cloudWatchLogs"}))
    AuthorizerLogs.add_member(:firehose, ::Smithy::Schema::Shapes::MemberShape.new(target: Firehose, name: "Firehose", traits: {"smithy.api#jsonName" => "firehose"}))
    AuthorizerLogs.add_member(:s3, ::Smithy::Schema::Shapes::MemberShape.new(target: S3, name: "S3", traits: {"smithy.api#jsonName" => "s3"}))
    AuthorizerLogs.type = Types::AuthorizerLogs
    BadRequestException.add_member(:invalid_parameter, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "InvalidParameter", traits: {"smithy.api#jsonName" => "invalidParameter"}))
    BadRequestException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#jsonName" => "message"}))
    BadRequestException.type = Types::BadRequestException
    BatchAssociateScramSecretRequest.add_member(:cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    BatchAssociateScramSecretRequest.add_member(:secret_arn_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ListofString, name: "SecretArnList", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "secretArnList", "smithy.api#required" => {}}))
    BatchAssociateScramSecretRequest.type = Types::BatchAssociateScramSecretRequest
    BatchAssociateScramSecretResponse.add_member(:cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterArn", traits: {"smithy.api#jsonName" => "clusterArn"}))
    BatchAssociateScramSecretResponse.add_member(:unprocessed_scram_secrets, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofunprocessedscramsecret, name: "UnprocessedScramSecrets", traits: {"smithy.api#jsonName" => "unprocessedScramSecrets"}))
    BatchAssociateScramSecretResponse.type = Types::BatchAssociateScramSecretResponse
    BatchDisassociateScramSecretRequest.add_member(:cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    BatchDisassociateScramSecretRequest.add_member(:secret_arn_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ListofString, name: "SecretArnList", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "secretArnList", "smithy.api#required" => {}}))
    BatchDisassociateScramSecretRequest.type = Types::BatchDisassociateScramSecretRequest
    BatchDisassociateScramSecretResponse.add_member(:cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterArn", traits: {"smithy.api#jsonName" => "clusterArn"}))
    BatchDisassociateScramSecretResponse.add_member(:unprocessed_scram_secrets, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofunprocessedscramsecret, name: "UnprocessedScramSecrets", traits: {"smithy.api#jsonName" => "unprocessedScramSecrets"}))
    BatchDisassociateScramSecretResponse.type = Types::BatchDisassociateScramSecretResponse
    BrokerAZDistribution.add_member(:default, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEFAULT", traits: {"smithy.api#enumValue" => "DEFAULT"}))
    BrokerCountUpdateInfo.add_member(:created_broker_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: ListofDouble, name: "CreatedBrokerIds", traits: {"smithy.api#jsonName" => "createdBrokerIds"}))
    BrokerCountUpdateInfo.add_member(:deleted_broker_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: ListofDouble, name: "DeletedBrokerIds", traits: {"smithy.api#jsonName" => "deletedBrokerIds"}))
    BrokerCountUpdateInfo.type = Types::BrokerCountUpdateInfo
    BrokerEBSVolumeInfo.add_member(:kafka_broker_node_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "KafkaBrokerNodeId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "kafkaBrokerNodeId", "smithy.api#required" => {}}))
    BrokerEBSVolumeInfo.add_member(:provisioned_throughput, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisionedThroughput, name: "ProvisionedThroughput", traits: {"smithy.api#jsonName" => "provisionedThroughput"}))
    BrokerEBSVolumeInfo.add_member(:volume_size_gb, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "VolumeSizeGB", traits: {"smithy.api#jsonName" => "volumeSizeGB"}))
    BrokerEBSVolumeInfo.type = Types::BrokerEBSVolumeInfo
    BrokerLogs.add_member(:cloud_watch_logs, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchLogs, name: "CloudWatchLogs", traits: {"smithy.api#jsonName" => "cloudWatchLogs"}))
    BrokerLogs.add_member(:firehose, ::Smithy::Schema::Shapes::MemberShape.new(target: Firehose, name: "Firehose", traits: {"smithy.api#jsonName" => "firehose"}))
    BrokerLogs.add_member(:s3, ::Smithy::Schema::Shapes::MemberShape.new(target: S3, name: "S3", traits: {"smithy.api#jsonName" => "s3"}))
    BrokerLogs.type = Types::BrokerLogs
    BrokerNodeGroupInfo.add_member(:broker_az_distribution, ::Smithy::Schema::Shapes::MemberShape.new(target: BrokerAZDistribution, name: "BrokerAZDistribution", traits: {"smithy.api#jsonName" => "brokerAZDistribution"}))
    BrokerNodeGroupInfo.add_member(:client_subnets, ::Smithy::Schema::Shapes::MemberShape.new(target: ListofString, name: "ClientSubnets", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "clientSubnets", "smithy.api#required" => {}}))
    BrokerNodeGroupInfo.add_member(:instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringmin5max32, name: "InstanceType", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "instanceType", "smithy.api#required" => {}}))
    BrokerNodeGroupInfo.add_member(:security_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: ListofString, name: "SecurityGroups", traits: {"smithy.api#jsonName" => "securityGroups"}))
    BrokerNodeGroupInfo.add_member(:storage_info, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageInfo, name: "StorageInfo", traits: {"smithy.api#jsonName" => "storageInfo"}))
    BrokerNodeGroupInfo.add_member(:connectivity_info, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectivityInfo, name: "ConnectivityInfo", traits: {"smithy.api#jsonName" => "connectivityInfo"}))
    BrokerNodeGroupInfo.add_member(:zone_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: ListofString, name: "ZoneIds", traits: {"smithy.api#jsonName" => "zoneIds"}))
    BrokerNodeGroupInfo.type = Types::BrokerNodeGroupInfo
    BrokerNodeInfo.add_member(:attached_eni_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AttachedENIId", traits: {"smithy.api#jsonName" => "attachedENIId"}))
    BrokerNodeInfo.add_member(:broker_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "BrokerId", traits: {"smithy.api#jsonName" => "brokerId"}))
    BrokerNodeInfo.add_member(:client_subnet, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClientSubnet", traits: {"smithy.api#jsonName" => "clientSubnet"}))
    BrokerNodeInfo.add_member(:client_vpc_ip_address, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClientVpcIpAddress", traits: {"smithy.api#jsonName" => "clientVpcIpAddress"}))
    BrokerNodeInfo.add_member(:current_broker_software_info, ::Smithy::Schema::Shapes::MemberShape.new(target: BrokerSoftwareInfo, name: "CurrentBrokerSoftwareInfo", traits: {"smithy.api#jsonName" => "currentBrokerSoftwareInfo"}))
    BrokerNodeInfo.add_member(:endpoints, ::Smithy::Schema::Shapes::MemberShape.new(target: ListofString, name: "Endpoints", traits: {"smithy.api#jsonName" => "endpoints"}))
    BrokerNodeInfo.type = Types::BrokerNodeInfo
    BrokerSoftwareInfo.add_member(:configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ConfigurationArn", traits: {"smithy.api#jsonName" => "configurationArn"}))
    BrokerSoftwareInfo.add_member(:configuration_revision, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "ConfigurationRevision", traits: {"smithy.api#jsonName" => "configurationRevision"}))
    BrokerSoftwareInfo.add_member(:kafka_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "KafkaVersion", traits: {"smithy.api#jsonName" => "kafkaVersion"}))
    BrokerSoftwareInfo.type = Types::BrokerSoftwareInfo
    Catalog.add_member(:catalog_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CatalogArn", traits: {"smithy.api#jsonName" => "catalogArn"}))
    Catalog.add_member(:warehouse_location, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "WarehouseLocation", traits: {"smithy.api#jsonName" => "warehouseLocation"}))
    Catalog.type = Types::Catalog
    ChannelDestinationType.add_member(:iceberg, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ICEBERG", traits: {"smithy.api#enumValue" => "ICEBERG"}))
    ChannelDestinationType.add_member(:s3, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "S3", traits: {"smithy.api#enumValue" => "S3"}))
    ChannelInfo.add_member(:channel_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ChannelArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "channelArn", "smithy.api#required" => {}}))
    ChannelInfo.add_member(:channel_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ChannelName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "channelName", "smithy.api#required" => {}}))
    ChannelInfo.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelStatus, name: "Status", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "status", "smithy.api#required" => {}}))
    ChannelInfo.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestampiso8601, name: "CreationTime", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "creationTime", "smithy.api#required" => {}}))
    ChannelInfo.add_member(:destination_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelDestinationType, name: "DestinationType", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "destinationType", "smithy.api#required" => {}}))
    ChannelInfo.add_member(:cluster_operation_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterOperationArn", traits: {"smithy.api#jsonName" => "clusterOperationArn"}))
    ChannelInfo.type = Types::ChannelInfo
    ChannelLoggingInfo.add_member(:cloud_watch_logs, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchLogs, name: "CloudWatchLogs", traits: {"smithy.api#jsonName" => "cloudWatchLogs"}))
    ChannelLoggingInfo.add_member(:firehose, ::Smithy::Schema::Shapes::MemberShape.new(target: Firehose, name: "Firehose", traits: {"smithy.api#jsonName" => "firehose"}))
    ChannelLoggingInfo.add_member(:s3, ::Smithy::Schema::Shapes::MemberShape.new(target: S3, name: "S3", traits: {"smithy.api#jsonName" => "s3"}))
    ChannelLoggingInfo.type = Types::ChannelLoggingInfo
    ChannelStateInfo.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Code", traits: {"smithy.api#jsonName" => "code"}))
    ChannelStateInfo.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#jsonName" => "message"}))
    ChannelStateInfo.type = Types::ChannelStateInfo
    ChannelStatus.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    ChannelStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    ChannelStatus.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    ChannelStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    ChannelStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    ChannelStatus.add_member(:suspending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUSPENDING", traits: {"smithy.api#enumValue" => "SUSPENDING"}))
    ChannelStatus.add_member(:suspended, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUSPENDED", traits: {"smithy.api#enumValue" => "SUSPENDED"}))
    ClientAuthentication.add_member(:sasl, ::Smithy::Schema::Shapes::MemberShape.new(target: Sasl, name: "Sasl", traits: {"smithy.api#jsonName" => "sasl"}))
    ClientAuthentication.add_member(:tls, ::Smithy::Schema::Shapes::MemberShape.new(target: Tls, name: "Tls", traits: {"smithy.api#jsonName" => "tls"}))
    ClientAuthentication.add_member(:unauthenticated, ::Smithy::Schema::Shapes::MemberShape.new(target: Unauthenticated, name: "Unauthenticated", traits: {"smithy.api#jsonName" => "unauthenticated"}))
    ClientAuthentication.type = Types::ClientAuthentication
    ClientBroker.add_member(:tls, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TLS", traits: {"smithy.api#enumValue" => "TLS"}))
    ClientBroker.add_member(:tls_plaintext, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TLS_PLAINTEXT", traits: {"smithy.api#enumValue" => "TLS_PLAINTEXT"}))
    ClientBroker.add_member(:plaintext, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PLAINTEXT", traits: {"smithy.api#enumValue" => "PLAINTEXT"}))
    ClientVpcConnection.add_member(:authentication, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Authentication", traits: {"smithy.api#jsonName" => "authentication"}))
    ClientVpcConnection.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestampiso8601, name: "CreationTime", traits: {"smithy.api#jsonName" => "creationTime"}))
    ClientVpcConnection.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcConnectionState, name: "State", traits: {"smithy.api#jsonName" => "state"}))
    ClientVpcConnection.add_member(:vpc_connection_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "VpcConnectionArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "vpcConnectionArn", "smithy.api#required" => {}}))
    ClientVpcConnection.add_member(:owner, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Owner", traits: {"smithy.api#jsonName" => "owner"}))
    ClientVpcConnection.type = Types::ClientVpcConnection
    CloudWatchLogs.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Enabled", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "enabled", "smithy.api#required" => {}}))
    CloudWatchLogs.add_member(:log_group, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LogGroup", traits: {"smithy.api#jsonName" => "logGroup"}))
    CloudWatchLogs.type = Types::CloudWatchLogs
    Cluster.add_member(:active_operation_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ActiveOperationArn", traits: {"smithy.api#jsonName" => "activeOperationArn"}))
    Cluster.add_member(:cluster_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterType, name: "ClusterType", traits: {"smithy.api#jsonName" => "clusterType"}))
    Cluster.add_member(:cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterArn", traits: {"smithy.api#jsonName" => "clusterArn"}))
    Cluster.add_member(:cluster_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterName", traits: {"smithy.api#jsonName" => "clusterName"}))
    Cluster.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestampiso8601, name: "CreationTime", traits: {"smithy.api#jsonName" => "creationTime"}))
    Cluster.add_member(:current_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CurrentVersion", traits: {"smithy.api#jsonName" => "currentVersion"}))
    Cluster.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterState, name: "State", traits: {"smithy.api#jsonName" => "state"}))
    Cluster.add_member(:state_info, ::Smithy::Schema::Shapes::MemberShape.new(target: StateInfo, name: "StateInfo", traits: {"smithy.api#jsonName" => "stateInfo"}))
    Cluster.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: MapofString, name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    Cluster.add_member(:provisioned, ::Smithy::Schema::Shapes::MemberShape.new(target: Provisioned, name: "Provisioned", traits: {"smithy.api#jsonName" => "provisioned"}))
    Cluster.add_member(:serverless, ::Smithy::Schema::Shapes::MemberShape.new(target: Serverless, name: "Serverless", traits: {"smithy.api#jsonName" => "serverless"}))
    Cluster.type = Types::Cluster
    ClusterConnectivityException.add_member(:invalid_parameter, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "InvalidParameter", traits: {"smithy.api#jsonName" => "invalidParameter"}))
    ClusterConnectivityException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#jsonName" => "message"}))
    ClusterConnectivityException.type = Types::ClusterConnectivityException
    ClusterInfo.add_member(:active_operation_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ActiveOperationArn", traits: {"smithy.api#jsonName" => "activeOperationArn"}))
    ClusterInfo.add_member(:broker_node_group_info, ::Smithy::Schema::Shapes::MemberShape.new(target: BrokerNodeGroupInfo, name: "BrokerNodeGroupInfo", traits: {"smithy.api#jsonName" => "brokerNodeGroupInfo"}))
    ClusterInfo.add_member(:rebalancing, ::Smithy::Schema::Shapes::MemberShape.new(target: Rebalancing, name: "Rebalancing", traits: {"smithy.api#jsonName" => "rebalancing"}))
    ClusterInfo.add_member(:client_authentication, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientAuthentication, name: "ClientAuthentication", traits: {"smithy.api#jsonName" => "clientAuthentication"}))
    ClusterInfo.add_member(:cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterArn", traits: {"smithy.api#jsonName" => "clusterArn"}))
    ClusterInfo.add_member(:cluster_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterName", traits: {"smithy.api#jsonName" => "clusterName"}))
    ClusterInfo.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestampiso8601, name: "CreationTime", traits: {"smithy.api#jsonName" => "creationTime"}))
    ClusterInfo.add_member(:current_broker_software_info, ::Smithy::Schema::Shapes::MemberShape.new(target: BrokerSoftwareInfo, name: "CurrentBrokerSoftwareInfo", traits: {"smithy.api#jsonName" => "currentBrokerSoftwareInfo"}))
    ClusterInfo.add_member(:current_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CurrentVersion", traits: {"smithy.api#jsonName" => "currentVersion"}))
    ClusterInfo.add_member(:encryption_info, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionInfo, name: "EncryptionInfo", traits: {"smithy.api#jsonName" => "encryptionInfo"}))
    ClusterInfo.add_member(:enhanced_monitoring, ::Smithy::Schema::Shapes::MemberShape.new(target: EnhancedMonitoring, name: "EnhancedMonitoring", traits: {"smithy.api#jsonName" => "enhancedMonitoring"}))
    ClusterInfo.add_member(:open_monitoring, ::Smithy::Schema::Shapes::MemberShape.new(target: OpenMonitoring, name: "OpenMonitoring", traits: {"smithy.api#jsonName" => "openMonitoring"}))
    ClusterInfo.add_member(:logging_info, ::Smithy::Schema::Shapes::MemberShape.new(target: LoggingInfo, name: "LoggingInfo", traits: {"smithy.api#jsonName" => "loggingInfo"}))
    ClusterInfo.add_member(:number_of_broker_nodes, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "NumberOfBrokerNodes", traits: {"smithy.api#jsonName" => "numberOfBrokerNodes"}))
    ClusterInfo.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterState, name: "State", traits: {"smithy.api#jsonName" => "state"}))
    ClusterInfo.add_member(:state_info, ::Smithy::Schema::Shapes::MemberShape.new(target: StateInfo, name: "StateInfo", traits: {"smithy.api#jsonName" => "stateInfo"}))
    ClusterInfo.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: MapofString, name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    ClusterInfo.add_member(:zookeeper_connect_string, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ZookeeperConnectString", traits: {"smithy.api#jsonName" => "zookeeperConnectString"}))
    ClusterInfo.add_member(:zookeeper_connect_string_tls, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ZookeeperConnectStringTls", traits: {"smithy.api#jsonName" => "zookeeperConnectStringTls"}))
    ClusterInfo.add_member(:storage_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageMode, name: "StorageMode", traits: {"smithy.api#jsonName" => "storageMode"}))
    ClusterInfo.add_member(:customer_action_status, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerActionStatus, name: "CustomerActionStatus", traits: {"smithy.api#jsonName" => "customerActionStatus"}))
    ClusterInfo.type = Types::ClusterInfo
    ClusterOperationInfo.add_member(:client_request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClientRequestId", traits: {"smithy.api#jsonName" => "clientRequestId"}))
    ClusterOperationInfo.add_member(:cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterArn", traits: {"smithy.api#jsonName" => "clusterArn"}))
    ClusterOperationInfo.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestampiso8601, name: "CreationTime", traits: {"smithy.api#jsonName" => "creationTime"}))
    ClusterOperationInfo.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestampiso8601, name: "EndTime", traits: {"smithy.api#jsonName" => "endTime"}))
    ClusterOperationInfo.add_member(:error_info, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorInfo, name: "ErrorInfo", traits: {"smithy.api#jsonName" => "errorInfo"}))
    ClusterOperationInfo.add_member(:operation_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "OperationArn", traits: {"smithy.api#jsonName" => "operationArn"}))
    ClusterOperationInfo.add_member(:operation_state, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "OperationState", traits: {"smithy.api#jsonName" => "operationState"}))
    ClusterOperationInfo.add_member(:operation_steps, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofclusteroperationstep, name: "OperationSteps", traits: {"smithy.api#jsonName" => "operationSteps"}))
    ClusterOperationInfo.add_member(:operation_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "OperationType", traits: {"smithy.api#jsonName" => "operationType"}))
    ClusterOperationInfo.add_member(:source_cluster_info, ::Smithy::Schema::Shapes::MemberShape.new(target: MutableClusterInfo, name: "SourceClusterInfo", traits: {"smithy.api#jsonName" => "sourceClusterInfo"}))
    ClusterOperationInfo.add_member(:target_cluster_info, ::Smithy::Schema::Shapes::MemberShape.new(target: MutableClusterInfo, name: "TargetClusterInfo", traits: {"smithy.api#jsonName" => "targetClusterInfo"}))
    ClusterOperationInfo.add_member(:vpc_connection_info, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcConnectionInfo, name: "VpcConnectionInfo", traits: {"smithy.api#jsonName" => "vpcConnectionInfo"}))
    ClusterOperationInfo.type = Types::ClusterOperationInfo
    ClusterOperationStep.add_member(:step_info, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterOperationStepInfo, name: "StepInfo", traits: {"smithy.api#jsonName" => "stepInfo"}))
    ClusterOperationStep.add_member(:step_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "StepName", traits: {"smithy.api#jsonName" => "stepName"}))
    ClusterOperationStep.type = Types::ClusterOperationStep
    ClusterOperationStepInfo.add_member(:step_status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "StepStatus", traits: {"smithy.api#jsonName" => "stepStatus"}))
    ClusterOperationStepInfo.type = Types::ClusterOperationStepInfo
    ClusterOperationV2.add_member(:cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterArn", traits: {"smithy.api#jsonName" => "clusterArn"}))
    ClusterOperationV2.add_member(:cluster_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterType, name: "ClusterType", traits: {"smithy.api#jsonName" => "clusterType"}))
    ClusterOperationV2.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestampiso8601, name: "StartTime", traits: {"smithy.api#jsonName" => "startTime"}))
    ClusterOperationV2.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestampiso8601, name: "EndTime", traits: {"smithy.api#jsonName" => "endTime"}))
    ClusterOperationV2.add_member(:error_info, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorInfo, name: "ErrorInfo", traits: {"smithy.api#jsonName" => "errorInfo"}))
    ClusterOperationV2.add_member(:operation_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "OperationArn", traits: {"smithy.api#jsonName" => "operationArn"}))
    ClusterOperationV2.add_member(:operation_state, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "OperationState", traits: {"smithy.api#jsonName" => "operationState"}))
    ClusterOperationV2.add_member(:operation_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "OperationType", traits: {"smithy.api#jsonName" => "operationType"}))
    ClusterOperationV2.add_member(:provisioned, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterOperationV2Provisioned, name: "Provisioned", traits: {"smithy.api#jsonName" => "provisioned"}))
    ClusterOperationV2.add_member(:serverless, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterOperationV2Serverless, name: "Serverless", traits: {"smithy.api#jsonName" => "serverless"}))
    ClusterOperationV2.type = Types::ClusterOperationV2
    ClusterOperationV2Provisioned.add_member(:operation_steps, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofclusteroperationstep, name: "OperationSteps", traits: {"smithy.api#jsonName" => "operationSteps"}))
    ClusterOperationV2Provisioned.add_member(:source_cluster_info, ::Smithy::Schema::Shapes::MemberShape.new(target: MutableClusterInfo, name: "SourceClusterInfo", traits: {"smithy.api#jsonName" => "sourceClusterInfo"}))
    ClusterOperationV2Provisioned.add_member(:target_cluster_info, ::Smithy::Schema::Shapes::MemberShape.new(target: MutableClusterInfo, name: "TargetClusterInfo", traits: {"smithy.api#jsonName" => "targetClusterInfo"}))
    ClusterOperationV2Provisioned.add_member(:vpc_connection_info, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcConnectionInfo, name: "VpcConnectionInfo", traits: {"smithy.api#jsonName" => "vpcConnectionInfo"}))
    ClusterOperationV2Provisioned.type = Types::ClusterOperationV2Provisioned
    ClusterOperationV2Serverless.add_member(:source_cluster_info, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerlessConnectivityInfo, name: "SourceClusterInfo", traits: {"smithy.api#jsonName" => "sourceClusterInfo"}))
    ClusterOperationV2Serverless.add_member(:target_cluster_info, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerlessConnectivityInfo, name: "TargetClusterInfo", traits: {"smithy.api#jsonName" => "targetClusterInfo"}))
    ClusterOperationV2Serverless.add_member(:vpc_connection_info, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcConnectionInfoServerless, name: "VpcConnectionInfo", traits: {"smithy.api#jsonName" => "vpcConnectionInfo"}))
    ClusterOperationV2Serverless.type = Types::ClusterOperationV2Serverless
    ClusterOperationV2Summary.add_member(:cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterArn", traits: {"smithy.api#jsonName" => "clusterArn"}))
    ClusterOperationV2Summary.add_member(:cluster_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterType, name: "ClusterType", traits: {"smithy.api#jsonName" => "clusterType"}))
    ClusterOperationV2Summary.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestampiso8601, name: "StartTime", traits: {"smithy.api#jsonName" => "startTime"}))
    ClusterOperationV2Summary.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestampiso8601, name: "EndTime", traits: {"smithy.api#jsonName" => "endTime"}))
    ClusterOperationV2Summary.add_member(:operation_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "OperationArn", traits: {"smithy.api#jsonName" => "operationArn"}))
    ClusterOperationV2Summary.add_member(:operation_state, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "OperationState", traits: {"smithy.api#jsonName" => "operationState"}))
    ClusterOperationV2Summary.add_member(:operation_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "OperationType", traits: {"smithy.api#jsonName" => "operationType"}))
    ClusterOperationV2Summary.type = Types::ClusterOperationV2Summary
    ClusterState.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    ClusterState.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    ClusterState.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    ClusterState.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    ClusterState.add_member(:healing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HEALING", traits: {"smithy.api#enumValue" => "HEALING"}))
    ClusterState.add_member(:maintenance, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MAINTENANCE", traits: {"smithy.api#enumValue" => "MAINTENANCE"}))
    ClusterState.add_member(:rebooting_broker, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REBOOTING_BROKER", traits: {"smithy.api#enumValue" => "REBOOTING_BROKER"}))
    ClusterState.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    ClusterType.add_member(:provisioned, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PROVISIONED", traits: {"smithy.api#enumValue" => "PROVISIONED"}))
    ClusterType.add_member(:serverless, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SERVERLESS", traits: {"smithy.api#enumValue" => "SERVERLESS"}))
    CompatibleKafkaVersion.add_member(:source_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceVersion", traits: {"smithy.api#jsonName" => "sourceVersion"}))
    CompatibleKafkaVersion.add_member(:target_versions, ::Smithy::Schema::Shapes::MemberShape.new(target: ListofString, name: "TargetVersions", traits: {"smithy.api#jsonName" => "targetVersions"}))
    CompatibleKafkaVersion.type = Types::CompatibleKafkaVersion
    Configuration.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Arn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "arn", "smithy.api#required" => {}}))
    Configuration.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestampiso8601, name: "CreationTime", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "creationTime", "smithy.api#required" => {}}))
    Configuration.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Description", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "description", "smithy.api#required" => {}}))
    Configuration.add_member(:kafka_versions, ::Smithy::Schema::Shapes::MemberShape.new(target: ListofString, name: "KafkaVersions", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "kafkaVersions", "smithy.api#required" => {}}))
    Configuration.add_member(:latest_revision, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationRevision, name: "LatestRevision", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "latestRevision", "smithy.api#required" => {}}))
    Configuration.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "name", "smithy.api#required" => {}}))
    Configuration.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationState, name: "State", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "state", "smithy.api#required" => {}}))
    Configuration.type = Types::Configuration
    ConfigurationInfo.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Arn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "arn", "smithy.api#required" => {}}))
    ConfigurationInfo.add_member(:revision, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "Revision", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "revision", "smithy.api#required" => {}}))
    ConfigurationInfo.type = Types::ConfigurationInfo
    ConfigurationRevision.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestampiso8601, name: "CreationTime", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "creationTime", "smithy.api#required" => {}}))
    ConfigurationRevision.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Description", traits: {"smithy.api#jsonName" => "description"}))
    ConfigurationRevision.add_member(:revision, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "Revision", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "revision", "smithy.api#required" => {}}))
    ConfigurationRevision.type = Types::ConfigurationRevision
    ConfigurationState.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    ConfigurationState.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    ConfigurationState.add_member(:delete_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETE_FAILED", traits: {"smithy.api#enumValue" => "DELETE_FAILED"}))
    ConflictException.add_member(:invalid_parameter, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "InvalidParameter", traits: {"smithy.api#jsonName" => "invalidParameter"}))
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#jsonName" => "message"}))
    ConflictException.type = Types::ConflictException
    ConnectivityInfo.add_member(:public_access, ::Smithy::Schema::Shapes::MemberShape.new(target: PublicAccess, name: "PublicAccess", traits: {"smithy.api#jsonName" => "publicAccess"}))
    ConnectivityInfo.add_member(:vpc_connectivity, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcConnectivity, name: "VpcConnectivity", traits: {"smithy.api#jsonName" => "vpcConnectivity"}))
    ConnectivityInfo.add_member(:network_type, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkType, name: "NetworkType", traits: {"smithy.api#jsonName" => "networkType"}))
    ConnectivityInfo.type = Types::ConnectivityInfo
    ConsumerGroupOffsetSyncMode.add_member(:legacy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LEGACY", traits: {"smithy.api#enumValue" => "LEGACY"}))
    ConsumerGroupOffsetSyncMode.add_member(:enhanced, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENHANCED", traits: {"smithy.api#enumValue" => "ENHANCED"}))
    ConsumerGroupReplication.add_member(:consumer_groups_to_exclude, ::Smithy::Schema::Shapes::MemberShape.new(target: ListofStringmax256, name: "ConsumerGroupsToExclude", traits: {"smithy.api#jsonName" => "consumerGroupsToExclude"}))
    ConsumerGroupReplication.add_member(:consumer_groups_to_replicate, ::Smithy::Schema::Shapes::MemberShape.new(target: ListofStringmax256, name: "ConsumerGroupsToReplicate", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "consumerGroupsToReplicate", "smithy.api#required" => {}}))
    ConsumerGroupReplication.add_member(:detect_and_copy_new_consumer_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "DetectAndCopyNewConsumerGroups", traits: {"smithy.api#jsonName" => "detectAndCopyNewConsumerGroups"}))
    ConsumerGroupReplication.add_member(:synchronise_consumer_group_offsets, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "SynchroniseConsumerGroupOffsets", traits: {"smithy.api#jsonName" => "synchroniseConsumerGroupOffsets"}))
    ConsumerGroupReplication.add_member(:consumer_group_offset_sync_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ConsumerGroupOffsetSyncMode, name: "ConsumerGroupOffsetSyncMode", traits: {"smithy.api#jsonName" => "consumerGroupOffsetSyncMode"}))
    ConsumerGroupReplication.type = Types::ConsumerGroupReplication
    ConsumerGroupReplicationUpdate.add_member(:consumer_groups_to_exclude, ::Smithy::Schema::Shapes::MemberShape.new(target: ListofStringmax256, name: "ConsumerGroupsToExclude", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "consumerGroupsToExclude", "smithy.api#required" => {}}))
    ConsumerGroupReplicationUpdate.add_member(:consumer_groups_to_replicate, ::Smithy::Schema::Shapes::MemberShape.new(target: ListofStringmax256, name: "ConsumerGroupsToReplicate", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "consumerGroupsToReplicate", "smithy.api#required" => {}}))
    ConsumerGroupReplicationUpdate.add_member(:detect_and_copy_new_consumer_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "DetectAndCopyNewConsumerGroups", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "detectAndCopyNewConsumerGroups", "smithy.api#required" => {}}))
    ConsumerGroupReplicationUpdate.add_member(:synchronise_consumer_group_offsets, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "SynchroniseConsumerGroupOffsets", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "synchroniseConsumerGroupOffsets", "smithy.api#required" => {}}))
    ConsumerGroupReplicationUpdate.type = Types::ConsumerGroupReplicationUpdate
    ControllerMovedException.add_member(:invalid_parameter, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "InvalidParameter", traits: {"smithy.api#jsonName" => "invalidParameter"}))
    ControllerMovedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#jsonName" => "message"}))
    ControllerMovedException.type = Types::ControllerMovedException
    ControllerNodeInfo.add_member(:endpoints, ::Smithy::Schema::Shapes::MemberShape.new(target: ListofString, name: "Endpoints", traits: {"smithy.api#jsonName" => "endpoints"}))
    ControllerNodeInfo.type = Types::ControllerNodeInfo
    CreateChannelRequest.add_member(:channel_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ChannelName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "channelName", "smithy.api#required" => {}}))
    CreateChannelRequest.add_member(:cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateChannelRequest.add_member(:encryption_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionConfiguration, name: "EncryptionConfiguration", traits: {"smithy.api#jsonName" => "encryptionConfiguration"}))
    CreateChannelRequest.add_member(:iceberg_destination_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: IcebergDestinationConfiguration, name: "IcebergDestinationConfiguration", traits: {"smithy.api#jsonName" => "icebergDestinationConfiguration"}))
    CreateChannelRequest.add_member(:s3_destination_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: S3DestinationConfiguration, name: "S3DestinationConfiguration", traits: {"smithy.api#jsonName" => "s3DestinationConfiguration"}))
    CreateChannelRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: MapofString, name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    CreateChannelRequest.add_member(:topic_configuration_list, ::Smithy::Schema::Shapes::MemberShape.new(target: Listoftopicconfiguration, name: "TopicConfigurationList", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "topicConfigurationList", "smithy.api#required" => {}}))
    CreateChannelRequest.add_member(:logging_info, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelLoggingInfo, name: "LoggingInfo", traits: {"smithy.api#jsonName" => "loggingInfo"}))
    CreateChannelRequest.type = Types::CreateChannelRequest
    CreateChannelResponse.add_member(:channel_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ChannelArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "channelArn", "smithy.api#required" => {}}))
    CreateChannelResponse.add_member(:cluster_operation_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterOperationArn", traits: {"smithy.api#jsonName" => "clusterOperationArn"}))
    CreateChannelResponse.type = Types::CreateChannelResponse
    CreateClusterRequest.add_member(:broker_node_group_info, ::Smithy::Schema::Shapes::MemberShape.new(target: BrokerNodeGroupInfo, name: "BrokerNodeGroupInfo", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "brokerNodeGroupInfo", "smithy.api#required" => {}}))
    CreateClusterRequest.add_member(:rebalancing, ::Smithy::Schema::Shapes::MemberShape.new(target: Rebalancing, name: "Rebalancing", traits: {"smithy.api#jsonName" => "rebalancing"}))
    CreateClusterRequest.add_member(:client_authentication, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientAuthentication, name: "ClientAuthentication", traits: {"smithy.api#jsonName" => "clientAuthentication"}))
    CreateClusterRequest.add_member(:cluster_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringmin1max64, name: "ClusterName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "clusterName", "smithy.api#required" => {}}))
    CreateClusterRequest.add_member(:configuration_info, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationInfo, name: "ConfigurationInfo", traits: {"smithy.api#jsonName" => "configurationInfo"}))
    CreateClusterRequest.add_member(:encryption_info, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionInfo, name: "EncryptionInfo", traits: {"smithy.api#jsonName" => "encryptionInfo"}))
    CreateClusterRequest.add_member(:enhanced_monitoring, ::Smithy::Schema::Shapes::MemberShape.new(target: EnhancedMonitoring, name: "EnhancedMonitoring", traits: {"smithy.api#jsonName" => "enhancedMonitoring"}))
    CreateClusterRequest.add_member(:open_monitoring, ::Smithy::Schema::Shapes::MemberShape.new(target: OpenMonitoringInfo, name: "OpenMonitoring", traits: {"smithy.api#jsonName" => "openMonitoring"}))
    CreateClusterRequest.add_member(:kafka_version, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringmin1max128, name: "KafkaVersion", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "kafkaVersion", "smithy.api#required" => {}}))
    CreateClusterRequest.add_member(:logging_info, ::Smithy::Schema::Shapes::MemberShape.new(target: LoggingInfo, name: "LoggingInfo", traits: {"smithy.api#jsonName" => "loggingInfo"}))
    CreateClusterRequest.add_member(:number_of_broker_nodes, ::Smithy::Schema::Shapes::MemberShape.new(target: Integermin1max15, name: "NumberOfBrokerNodes", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "numberOfBrokerNodes", "smithy.api#required" => {}}))
    CreateClusterRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: MapofString, name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    CreateClusterRequest.add_member(:storage_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageMode, name: "StorageMode", traits: {"smithy.api#jsonName" => "storageMode"}))
    CreateClusterRequest.type = Types::CreateClusterRequest
    CreateClusterResponse.add_member(:cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterArn", traits: {"smithy.api#jsonName" => "clusterArn"}))
    CreateClusterResponse.add_member(:cluster_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterName", traits: {"smithy.api#jsonName" => "clusterName"}))
    CreateClusterResponse.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterState, name: "State", traits: {"smithy.api#jsonName" => "state"}))
    CreateClusterResponse.type = Types::CreateClusterResponse
    CreateClusterV2Request.add_member(:cluster_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringmin1max64, name: "ClusterName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "clusterName", "smithy.api#required" => {}}))
    CreateClusterV2Request.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: MapofString, name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    CreateClusterV2Request.add_member(:provisioned, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisionedRequest, name: "Provisioned", traits: {"smithy.api#jsonName" => "provisioned"}))
    CreateClusterV2Request.add_member(:serverless, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerlessRequest, name: "Serverless", traits: {"smithy.api#jsonName" => "serverless"}))
    CreateClusterV2Request.type = Types::CreateClusterV2Request
    CreateClusterV2Response.add_member(:cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterArn", traits: {"smithy.api#jsonName" => "clusterArn"}))
    CreateClusterV2Response.add_member(:cluster_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterName", traits: {"smithy.api#jsonName" => "clusterName"}))
    CreateClusterV2Response.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterState, name: "State", traits: {"smithy.api#jsonName" => "state"}))
    CreateClusterV2Response.add_member(:cluster_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterType, name: "ClusterType", traits: {"smithy.api#jsonName" => "clusterType"}))
    CreateClusterV2Response.type = Types::CreateClusterV2Response
    CreateConfigurationRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Description", traits: {"smithy.api#jsonName" => "description"}))
    CreateConfigurationRequest.add_member(:kafka_versions, ::Smithy::Schema::Shapes::MemberShape.new(target: ListofString, name: "KafkaVersions", traits: {"smithy.api#jsonName" => "kafkaVersions"}))
    CreateConfigurationRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "name", "smithy.api#required" => {}}))
    CreateConfigurationRequest.add_member(:server_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: Blob, name: "ServerProperties", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "serverProperties", "smithy.api#required" => {}}))
    CreateConfigurationRequest.type = Types::CreateConfigurationRequest
    CreateConfigurationResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Arn", traits: {"smithy.api#jsonName" => "arn"}))
    CreateConfigurationResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestampiso8601, name: "CreationTime", traits: {"smithy.api#jsonName" => "creationTime"}))
    CreateConfigurationResponse.add_member(:latest_revision, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationRevision, name: "LatestRevision", traits: {"smithy.api#jsonName" => "latestRevision"}))
    CreateConfigurationResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name", traits: {"smithy.api#jsonName" => "name"}))
    CreateConfigurationResponse.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationState, name: "State", traits: {"smithy.api#jsonName" => "state"}))
    CreateConfigurationResponse.type = Types::CreateConfigurationResponse
    CreateReplicatorRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringmax1024, name: "Description", traits: {"smithy.api#jsonName" => "description"}))
    CreateReplicatorRequest.add_member(:kafka_clusters, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofkafkacluster, name: "KafkaClusters", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "kafkaClusters", "smithy.api#required" => {}}))
    CreateReplicatorRequest.add_member(:replication_info_list, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofreplicationinfo, name: "ReplicationInfoList", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "replicationInfoList", "smithy.api#required" => {}}))
    CreateReplicatorRequest.add_member(:replicator_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringmin1max128pattern09azaz09azaz0, name: "ReplicatorName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "replicatorName", "smithy.api#required" => {}}))
    CreateReplicatorRequest.add_member(:service_execution_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ServiceExecutionRoleArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "serviceExecutionRoleArn", "smithy.api#required" => {}}))
    CreateReplicatorRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: MapofString, name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    CreateReplicatorRequest.add_member(:log_delivery, ::Smithy::Schema::Shapes::MemberShape.new(target: LogDelivery, name: "LogDelivery", traits: {"smithy.api#jsonName" => "logDelivery"}))
    CreateReplicatorRequest.type = Types::CreateReplicatorRequest
    CreateReplicatorResponse.add_member(:replicator_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReplicatorArn", traits: {"smithy.api#jsonName" => "replicatorArn"}))
    CreateReplicatorResponse.add_member(:replicator_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReplicatorName", traits: {"smithy.api#jsonName" => "replicatorName"}))
    CreateReplicatorResponse.add_member(:replicator_state, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicatorState, name: "ReplicatorState", traits: {"smithy.api#jsonName" => "replicatorState"}))
    CreateReplicatorResponse.type = Types::CreateReplicatorResponse
    CreateTopicRequest.add_member(:cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateTopicRequest.add_member(:topic_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TopicName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "topicName", "smithy.api#required" => {}}))
    CreateTopicRequest.add_member(:partition_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integermin1, name: "PartitionCount", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "partitionCount", "smithy.api#required" => {}}))
    CreateTopicRequest.add_member(:replication_factor, ::Smithy::Schema::Shapes::MemberShape.new(target: Integermin1, name: "ReplicationFactor", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "replicationFactor", "smithy.api#required" => {}}))
    CreateTopicRequest.add_member(:configs, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Configs", traits: {"smithy.api#jsonName" => "configs"}))
    CreateTopicRequest.type = Types::CreateTopicRequest
    CreateTopicResponse.add_member(:topic_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TopicArn", traits: {"smithy.api#jsonName" => "topicArn"}))
    CreateTopicResponse.add_member(:topic_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TopicName", traits: {"smithy.api#jsonName" => "topicName"}))
    CreateTopicResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: TopicState, name: "Status", traits: {"smithy.api#jsonName" => "status"}))
    CreateTopicResponse.type = Types::CreateTopicResponse
    CreateVpcConnectionRequest.add_member(:target_cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TargetClusterArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "targetClusterArn", "smithy.api#required" => {}}))
    CreateVpcConnectionRequest.add_member(:authentication, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Authentication", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "authentication", "smithy.api#required" => {}}))
    CreateVpcConnectionRequest.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "VpcId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "vpcId", "smithy.api#required" => {}}))
    CreateVpcConnectionRequest.add_member(:client_subnets, ::Smithy::Schema::Shapes::MemberShape.new(target: ListofString, name: "ClientSubnets", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "clientSubnets", "smithy.api#required" => {}}))
    CreateVpcConnectionRequest.add_member(:security_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: ListofString, name: "SecurityGroups", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "securityGroups", "smithy.api#required" => {}}))
    CreateVpcConnectionRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: MapofString, name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    CreateVpcConnectionRequest.type = Types::CreateVpcConnectionRequest
    CreateVpcConnectionResponse.add_member(:vpc_connection_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "VpcConnectionArn", traits: {"smithy.api#jsonName" => "vpcConnectionArn"}))
    CreateVpcConnectionResponse.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcConnectionState, name: "State", traits: {"smithy.api#jsonName" => "state"}))
    CreateVpcConnectionResponse.add_member(:authentication, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Authentication", traits: {"smithy.api#jsonName" => "authentication"}))
    CreateVpcConnectionResponse.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "VpcId", traits: {"smithy.api#jsonName" => "vpcId"}))
    CreateVpcConnectionResponse.add_member(:client_subnets, ::Smithy::Schema::Shapes::MemberShape.new(target: ListofString, name: "ClientSubnets", traits: {"smithy.api#jsonName" => "clientSubnets"}))
    CreateVpcConnectionResponse.add_member(:security_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: ListofString, name: "SecurityGroups", traits: {"smithy.api#jsonName" => "securityGroups"}))
    CreateVpcConnectionResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestampiso8601, name: "CreationTime", traits: {"smithy.api#jsonName" => "creationTime"}))
    CreateVpcConnectionResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: MapofString, name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    CreateVpcConnectionResponse.type = Types::CreateVpcConnectionResponse
    CustomerActionStatus.add_member(:critical_action_required, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CRITICAL_ACTION_REQUIRED", traits: {"smithy.api#enumValue" => "CRITICAL_ACTION_REQUIRED"}))
    CustomerActionStatus.add_member(:action_recommended, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTION_RECOMMENDED", traits: {"smithy.api#enumValue" => "ACTION_RECOMMENDED"}))
    CustomerActionStatus.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    DeadLetterQueueS3.add_member(:bucket_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "BucketArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "bucketArn", "smithy.api#required" => {}}))
    DeadLetterQueueS3.add_member(:error_output_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ErrorOutputPrefix", traits: {"smithy.api#jsonName" => "errorOutputPrefix"}))
    DeadLetterQueueS3.add_member(:expected_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ExpectedBucketOwner", traits: {"smithy.api#jsonName" => "expectedBucketOwner"}))
    DeadLetterQueueS3.type = Types::DeadLetterQueueS3
    DeleteChannelRequest.add_member(:channel_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ChannelArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteChannelRequest.add_member(:cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteChannelRequest.type = Types::DeleteChannelRequest
    DeleteChannelResponse.add_member(:channel_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ChannelArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "channelArn", "smithy.api#required" => {}}))
    DeleteChannelResponse.add_member(:cluster_operation_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterOperationArn", traits: {"smithy.api#jsonName" => "clusterOperationArn"}))
    DeleteChannelResponse.type = Types::DeleteChannelResponse
    DeleteClusterPolicyRequest.add_member(:cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteClusterPolicyRequest.type = Types::DeleteClusterPolicyRequest
    DeleteClusterPolicyResponse.type = Types::DeleteClusterPolicyResponse
    DeleteClusterRequest.add_member(:cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteClusterRequest.add_member(:current_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CurrentVersion", traits: {"smithy.api#httpQuery" => "currentVersion"}))
    DeleteClusterRequest.type = Types::DeleteClusterRequest
    DeleteClusterResponse.add_member(:cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterArn", traits: {"smithy.api#jsonName" => "clusterArn"}))
    DeleteClusterResponse.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterState, name: "State", traits: {"smithy.api#jsonName" => "state"}))
    DeleteClusterResponse.type = Types::DeleteClusterResponse
    DeleteConfigurationRequest.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Arn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteConfigurationRequest.type = Types::DeleteConfigurationRequest
    DeleteConfigurationResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Arn", traits: {"smithy.api#jsonName" => "arn"}))
    DeleteConfigurationResponse.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationState, name: "State", traits: {"smithy.api#jsonName" => "state"}))
    DeleteConfigurationResponse.type = Types::DeleteConfigurationResponse
    DeleteReplicatorRequest.add_member(:current_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CurrentVersion", traits: {"smithy.api#httpQuery" => "currentVersion"}))
    DeleteReplicatorRequest.add_member(:replicator_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReplicatorArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteReplicatorRequest.type = Types::DeleteReplicatorRequest
    DeleteReplicatorResponse.add_member(:replicator_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReplicatorArn", traits: {"smithy.api#jsonName" => "replicatorArn"}))
    DeleteReplicatorResponse.add_member(:replicator_state, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicatorState, name: "ReplicatorState", traits: {"smithy.api#jsonName" => "replicatorState"}))
    DeleteReplicatorResponse.type = Types::DeleteReplicatorResponse
    DeleteTopicRequest.add_member(:cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteTopicRequest.add_member(:topic_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TopicName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteTopicRequest.type = Types::DeleteTopicRequest
    DeleteTopicResponse.add_member(:topic_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TopicArn", traits: {"smithy.api#jsonName" => "topicArn"}))
    DeleteTopicResponse.add_member(:topic_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TopicName", traits: {"smithy.api#jsonName" => "topicName"}))
    DeleteTopicResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: TopicState, name: "Status", traits: {"smithy.api#jsonName" => "status"}))
    DeleteTopicResponse.type = Types::DeleteTopicResponse
    DeleteVpcConnectionRequest.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Arn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteVpcConnectionRequest.type = Types::DeleteVpcConnectionRequest
    DeleteVpcConnectionResponse.add_member(:vpc_connection_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "VpcConnectionArn", traits: {"smithy.api#jsonName" => "vpcConnectionArn"}))
    DeleteVpcConnectionResponse.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcConnectionState, name: "State", traits: {"smithy.api#jsonName" => "state"}))
    DeleteVpcConnectionResponse.type = Types::DeleteVpcConnectionResponse
    DescribeChannelRequest.add_member(:channel_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ChannelArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeChannelRequest.add_member(:cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeChannelRequest.type = Types::DescribeChannelRequest
    DescribeChannelResponse.add_member(:channel_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ChannelArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "channelArn", "smithy.api#required" => {}}))
    DescribeChannelResponse.add_member(:channel_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ChannelName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "channelName", "smithy.api#required" => {}}))
    DescribeChannelResponse.add_member(:encryption_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionConfiguration, name: "EncryptionConfiguration", traits: {"smithy.api#jsonName" => "encryptionConfiguration"}))
    DescribeChannelResponse.add_member(:iceberg_destination_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: IcebergDestinationConfiguration, name: "IcebergDestinationConfiguration", traits: {"smithy.api#jsonName" => "icebergDestinationConfiguration"}))
    DescribeChannelResponse.add_member(:s3_destination_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: S3DestinationConfiguration, name: "S3DestinationConfiguration", traits: {"smithy.api#jsonName" => "s3DestinationConfiguration"}))
    DescribeChannelResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelStatus, name: "Status", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "status", "smithy.api#required" => {}}))
    DescribeChannelResponse.add_member(:destination_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelDestinationType, name: "DestinationType", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "destinationType", "smithy.api#required" => {}}))
    DescribeChannelResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestampiso8601, name: "CreationTime", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "creationTime", "smithy.api#required" => {}}))
    DescribeChannelResponse.add_member(:topic_configuration_list, ::Smithy::Schema::Shapes::MemberShape.new(target: Listoftopicconfiguration, name: "TopicConfigurationList", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "topicConfigurationList", "smithy.api#required" => {}}))
    DescribeChannelResponse.add_member(:logging_info, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelLoggingInfo, name: "LoggingInfo", traits: {"smithy.api#jsonName" => "loggingInfo"}))
    DescribeChannelResponse.add_member(:state_info, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelStateInfo, name: "StateInfo", traits: {"smithy.api#jsonName" => "stateInfo"}))
    DescribeChannelResponse.add_member(:cluster_operation_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterOperationArn", traits: {"smithy.api#jsonName" => "clusterOperationArn"}))
    DescribeChannelResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: MapofString, name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    DescribeChannelResponse.type = Types::DescribeChannelResponse
    DescribeClusterOperationRequest.add_member(:cluster_operation_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterOperationArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeClusterOperationRequest.type = Types::DescribeClusterOperationRequest
    DescribeClusterOperationResponse.add_member(:cluster_operation_info, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterOperationInfo, name: "ClusterOperationInfo", traits: {"smithy.api#jsonName" => "clusterOperationInfo"}))
    DescribeClusterOperationResponse.type = Types::DescribeClusterOperationResponse
    DescribeClusterOperationV2Request.add_member(:cluster_operation_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterOperationArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeClusterOperationV2Request.type = Types::DescribeClusterOperationV2Request
    DescribeClusterOperationV2Response.add_member(:cluster_operation_info, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterOperationV2, name: "ClusterOperationInfo", traits: {"smithy.api#jsonName" => "clusterOperationInfo"}))
    DescribeClusterOperationV2Response.type = Types::DescribeClusterOperationV2Response
    DescribeClusterRequest.add_member(:cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeClusterRequest.type = Types::DescribeClusterRequest
    DescribeClusterResponse.add_member(:cluster_info, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterInfo, name: "ClusterInfo", traits: {"smithy.api#jsonName" => "clusterInfo"}))
    DescribeClusterResponse.type = Types::DescribeClusterResponse
    DescribeClusterV2Request.add_member(:cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeClusterV2Request.type = Types::DescribeClusterV2Request
    DescribeClusterV2Response.add_member(:cluster_info, ::Smithy::Schema::Shapes::MemberShape.new(target: Cluster, name: "ClusterInfo", traits: {"smithy.api#jsonName" => "clusterInfo"}))
    DescribeClusterV2Response.type = Types::DescribeClusterV2Response
    DescribeConfigurationRequest.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Arn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeConfigurationRequest.type = Types::DescribeConfigurationRequest
    DescribeConfigurationResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Arn", traits: {"smithy.api#jsonName" => "arn"}))
    DescribeConfigurationResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestampiso8601, name: "CreationTime", traits: {"smithy.api#jsonName" => "creationTime"}))
    DescribeConfigurationResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Description", traits: {"smithy.api#jsonName" => "description"}))
    DescribeConfigurationResponse.add_member(:kafka_versions, ::Smithy::Schema::Shapes::MemberShape.new(target: ListofString, name: "KafkaVersions", traits: {"smithy.api#jsonName" => "kafkaVersions"}))
    DescribeConfigurationResponse.add_member(:latest_revision, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationRevision, name: "LatestRevision", traits: {"smithy.api#jsonName" => "latestRevision"}))
    DescribeConfigurationResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name", traits: {"smithy.api#jsonName" => "name"}))
    DescribeConfigurationResponse.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationState, name: "State", traits: {"smithy.api#jsonName" => "state"}))
    DescribeConfigurationResponse.type = Types::DescribeConfigurationResponse
    DescribeConfigurationRevisionRequest.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Arn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeConfigurationRevisionRequest.add_member(:revision, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "Revision", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeConfigurationRevisionRequest.type = Types::DescribeConfigurationRevisionRequest
    DescribeConfigurationRevisionResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Arn", traits: {"smithy.api#jsonName" => "arn"}))
    DescribeConfigurationRevisionResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestampiso8601, name: "CreationTime", traits: {"smithy.api#jsonName" => "creationTime"}))
    DescribeConfigurationRevisionResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Description", traits: {"smithy.api#jsonName" => "description"}))
    DescribeConfigurationRevisionResponse.add_member(:revision, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "Revision", traits: {"smithy.api#jsonName" => "revision"}))
    DescribeConfigurationRevisionResponse.add_member(:server_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: Blob, name: "ServerProperties", traits: {"smithy.api#jsonName" => "serverProperties"}))
    DescribeConfigurationRevisionResponse.type = Types::DescribeConfigurationRevisionResponse
    DescribeReplicatorRequest.add_member(:replicator_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReplicatorArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeReplicatorRequest.type = Types::DescribeReplicatorRequest
    DescribeReplicatorResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestampiso8601, name: "CreationTime", traits: {"smithy.api#jsonName" => "creationTime"}))
    DescribeReplicatorResponse.add_member(:current_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CurrentVersion", traits: {"smithy.api#jsonName" => "currentVersion"}))
    DescribeReplicatorResponse.add_member(:is_replicator_reference, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "IsReplicatorReference", traits: {"smithy.api#jsonName" => "isReplicatorReference"}))
    DescribeReplicatorResponse.add_member(:kafka_clusters, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofkafkaclusterdescription, name: "KafkaClusters", traits: {"smithy.api#jsonName" => "kafkaClusters"}))
    DescribeReplicatorResponse.add_member(:replication_info_list, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofreplicationinfodescription, name: "ReplicationInfoList", traits: {"smithy.api#jsonName" => "replicationInfoList"}))
    DescribeReplicatorResponse.add_member(:replicator_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReplicatorArn", traits: {"smithy.api#jsonName" => "replicatorArn"}))
    DescribeReplicatorResponse.add_member(:replicator_description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReplicatorDescription", traits: {"smithy.api#jsonName" => "replicatorDescription"}))
    DescribeReplicatorResponse.add_member(:replicator_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReplicatorName", traits: {"smithy.api#jsonName" => "replicatorName"}))
    DescribeReplicatorResponse.add_member(:replicator_resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReplicatorResourceArn", traits: {"smithy.api#jsonName" => "replicatorResourceArn"}))
    DescribeReplicatorResponse.add_member(:replicator_state, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicatorState, name: "ReplicatorState", traits: {"smithy.api#jsonName" => "replicatorState"}))
    DescribeReplicatorResponse.add_member(:service_execution_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ServiceExecutionRoleArn", traits: {"smithy.api#jsonName" => "serviceExecutionRoleArn"}))
    DescribeReplicatorResponse.add_member(:state_info, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationStateInfo, name: "StateInfo", traits: {"smithy.api#jsonName" => "stateInfo"}))
    DescribeReplicatorResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: MapofString, name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    DescribeReplicatorResponse.add_member(:log_delivery, ::Smithy::Schema::Shapes::MemberShape.new(target: LogDelivery, name: "LogDelivery", traits: {"smithy.api#jsonName" => "logDelivery"}))
    DescribeReplicatorResponse.type = Types::DescribeReplicatorResponse
    DescribeTopicPartitionsRequest.add_member(:cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeTopicPartitionsRequest.add_member(:topic_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TopicName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeTopicPartitionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    DescribeTopicPartitionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    DescribeTopicPartitionsRequest.type = Types::DescribeTopicPartitionsRequest
    DescribeTopicPartitionsResponse.add_member(:partitions, ::Smithy::Schema::Shapes::MemberShape.new(target: Listoftopicpartitioninfo, name: "Partitions", traits: {"smithy.api#jsonName" => "partitions"}))
    DescribeTopicPartitionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#jsonName" => "nextToken"}))
    DescribeTopicPartitionsResponse.type = Types::DescribeTopicPartitionsResponse
    DescribeTopicRequest.add_member(:cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeTopicRequest.add_member(:topic_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TopicName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeTopicRequest.type = Types::DescribeTopicRequest
    DescribeTopicResponse.add_member(:topic_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TopicArn", traits: {"smithy.api#jsonName" => "topicArn"}))
    DescribeTopicResponse.add_member(:topic_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TopicName", traits: {"smithy.api#jsonName" => "topicName"}))
    DescribeTopicResponse.add_member(:replication_factor, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "ReplicationFactor", traits: {"smithy.api#jsonName" => "replicationFactor"}))
    DescribeTopicResponse.add_member(:partition_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "PartitionCount", traits: {"smithy.api#jsonName" => "partitionCount"}))
    DescribeTopicResponse.add_member(:configs, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Configs", traits: {"smithy.api#jsonName" => "configs"}))
    DescribeTopicResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: TopicState, name: "Status", traits: {"smithy.api#jsonName" => "status"}))
    DescribeTopicResponse.type = Types::DescribeTopicResponse
    DescribeVpcConnectionRequest.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Arn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeVpcConnectionRequest.type = Types::DescribeVpcConnectionRequest
    DescribeVpcConnectionResponse.add_member(:vpc_connection_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "VpcConnectionArn", traits: {"smithy.api#jsonName" => "vpcConnectionArn"}))
    DescribeVpcConnectionResponse.add_member(:target_cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TargetClusterArn", traits: {"smithy.api#jsonName" => "targetClusterArn"}))
    DescribeVpcConnectionResponse.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcConnectionState, name: "State", traits: {"smithy.api#jsonName" => "state"}))
    DescribeVpcConnectionResponse.add_member(:authentication, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Authentication", traits: {"smithy.api#jsonName" => "authentication"}))
    DescribeVpcConnectionResponse.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "VpcId", traits: {"smithy.api#jsonName" => "vpcId"}))
    DescribeVpcConnectionResponse.add_member(:subnets, ::Smithy::Schema::Shapes::MemberShape.new(target: ListofString, name: "Subnets", traits: {"smithy.api#jsonName" => "subnets"}))
    DescribeVpcConnectionResponse.add_member(:security_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: ListofString, name: "SecurityGroups", traits: {"smithy.api#jsonName" => "securityGroups"}))
    DescribeVpcConnectionResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestampiso8601, name: "CreationTime", traits: {"smithy.api#jsonName" => "creationTime"}))
    DescribeVpcConnectionResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: MapofString, name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    DescribeVpcConnectionResponse.type = Types::DescribeVpcConnectionResponse
    DestinationTable.add_member(:destination_database_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DestinationDatabaseName", traits: {"smithy.api#jsonName" => "destinationDatabaseName"}))
    DestinationTable.add_member(:destination_table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DestinationTableName", traits: {"smithy.api#jsonName" => "destinationTableName"}))
    DestinationTable.add_member(:partition_spec, ::Smithy::Schema::Shapes::MemberShape.new(target: PartitionSpec, name: "PartitionSpec", traits: {"smithy.api#jsonName" => "partitionSpec"}))
    DestinationTable.type = Types::DestinationTable
    EBSStorageInfo.add_member(:provisioned_throughput, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisionedThroughput, name: "ProvisionedThroughput", traits: {"smithy.api#jsonName" => "provisionedThroughput"}))
    EBSStorageInfo.add_member(:volume_size, ::Smithy::Schema::Shapes::MemberShape.new(target: Integermin1max16384, name: "VolumeSize", traits: {"smithy.api#jsonName" => "volumeSize"}))
    EBSStorageInfo.type = Types::EBSStorageInfo
    EncryptionAtRest.add_member(:data_volume_kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DataVolumeKMSKeyId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "dataVolumeKMSKeyId", "smithy.api#required" => {}}))
    EncryptionAtRest.type = Types::EncryptionAtRest
    EncryptionConfiguration.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "KmsKeyArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "kmsKeyArn", "smithy.api#required" => {}}))
    EncryptionConfiguration.type = Types::EncryptionConfiguration
    EncryptionInTransit.add_member(:client_broker, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientBroker, name: "ClientBroker", traits: {"smithy.api#jsonName" => "clientBroker"}))
    EncryptionInTransit.add_member(:in_cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "InCluster", traits: {"smithy.api#jsonName" => "inCluster"}))
    EncryptionInTransit.type = Types::EncryptionInTransit
    EncryptionInfo.add_member(:encryption_at_rest, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionAtRest, name: "EncryptionAtRest", traits: {"smithy.api#jsonName" => "encryptionAtRest"}))
    EncryptionInfo.add_member(:encryption_in_transit, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionInTransit, name: "EncryptionInTransit", traits: {"smithy.api#jsonName" => "encryptionInTransit"}))
    EncryptionInfo.type = Types::EncryptionInfo
    EnhancedMonitoring.add_member(:default, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEFAULT", traits: {"smithy.api#enumValue" => "DEFAULT"}))
    EnhancedMonitoring.add_member(:per_broker, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PER_BROKER", traits: {"smithy.api#enumValue" => "PER_BROKER"}))
    EnhancedMonitoring.add_member(:per_topic_per_broker, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PER_TOPIC_PER_BROKER", traits: {"smithy.api#enumValue" => "PER_TOPIC_PER_BROKER"}))
    EnhancedMonitoring.add_member(:per_topic_per_partition, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PER_TOPIC_PER_PARTITION", traits: {"smithy.api#enumValue" => "PER_TOPIC_PER_PARTITION"}))
    ErrorInfo.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ErrorCode", traits: {"smithy.api#jsonName" => "errorCode"}))
    ErrorInfo.add_member(:error_string, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ErrorString", traits: {"smithy.api#jsonName" => "errorString"}))
    ErrorInfo.type = Types::ErrorInfo
    Firehose.add_member(:delivery_stream, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DeliveryStream", traits: {"smithy.api#jsonName" => "deliveryStream"}))
    Firehose.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Enabled", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "enabled", "smithy.api#required" => {}}))
    Firehose.type = Types::Firehose
    ForbiddenException.add_member(:invalid_parameter, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "InvalidParameter", traits: {"smithy.api#jsonName" => "invalidParameter"}))
    ForbiddenException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#jsonName" => "message"}))
    ForbiddenException.type = Types::ForbiddenException
    GetBootstrapBrokersRequest.add_member(:cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetBootstrapBrokersRequest.type = Types::GetBootstrapBrokersRequest
    GetBootstrapBrokersResponse.add_member(:bootstrap_broker_string, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "BootstrapBrokerString", traits: {"smithy.api#jsonName" => "bootstrapBrokerString"}))
    GetBootstrapBrokersResponse.add_member(:bootstrap_broker_string_tls, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "BootstrapBrokerStringTls", traits: {"smithy.api#jsonName" => "bootstrapBrokerStringTls"}))
    GetBootstrapBrokersResponse.add_member(:bootstrap_broker_string_sasl_scram, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "BootstrapBrokerStringSaslScram", traits: {"smithy.api#jsonName" => "bootstrapBrokerStringSaslScram"}))
    GetBootstrapBrokersResponse.add_member(:bootstrap_broker_string_sasl_iam, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "BootstrapBrokerStringSaslIam", traits: {"smithy.api#jsonName" => "bootstrapBrokerStringSaslIam"}))
    GetBootstrapBrokersResponse.add_member(:bootstrap_broker_string_public_tls, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "BootstrapBrokerStringPublicTls", traits: {"smithy.api#jsonName" => "bootstrapBrokerStringPublicTls"}))
    GetBootstrapBrokersResponse.add_member(:bootstrap_broker_string_public_sasl_scram, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "BootstrapBrokerStringPublicSaslScram", traits: {"smithy.api#jsonName" => "bootstrapBrokerStringPublicSaslScram"}))
    GetBootstrapBrokersResponse.add_member(:bootstrap_broker_string_public_sasl_iam, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "BootstrapBrokerStringPublicSaslIam", traits: {"smithy.api#jsonName" => "bootstrapBrokerStringPublicSaslIam"}))
    GetBootstrapBrokersResponse.add_member(:bootstrap_broker_string_vpc_connectivity_tls, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "BootstrapBrokerStringVpcConnectivityTls", traits: {"smithy.api#jsonName" => "bootstrapBrokerStringVpcConnectivityTls"}))
    GetBootstrapBrokersResponse.add_member(:bootstrap_broker_string_vpc_connectivity_sasl_scram, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "BootstrapBrokerStringVpcConnectivitySaslScram", traits: {"smithy.api#jsonName" => "bootstrapBrokerStringVpcConnectivitySaslScram"}))
    GetBootstrapBrokersResponse.add_member(:bootstrap_broker_string_vpc_connectivity_sasl_iam, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "BootstrapBrokerStringVpcConnectivitySaslIam", traits: {"smithy.api#jsonName" => "bootstrapBrokerStringVpcConnectivitySaslIam"}))
    GetBootstrapBrokersResponse.add_member(:bootstrap_broker_string_ipv6, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "BootstrapBrokerStringIpv6", traits: {"smithy.api#jsonName" => "bootstrapBrokerStringIpv6"}))
    GetBootstrapBrokersResponse.add_member(:bootstrap_broker_string_tls_ipv6, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "BootstrapBrokerStringTlsIpv6", traits: {"smithy.api#jsonName" => "bootstrapBrokerStringTlsIpv6"}))
    GetBootstrapBrokersResponse.add_member(:bootstrap_broker_string_sasl_scram_ipv6, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "BootstrapBrokerStringSaslScramIpv6", traits: {"smithy.api#jsonName" => "bootstrapBrokerStringSaslScramIpv6"}))
    GetBootstrapBrokersResponse.add_member(:bootstrap_broker_string_sasl_iam_ipv6, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "BootstrapBrokerStringSaslIamIpv6", traits: {"smithy.api#jsonName" => "bootstrapBrokerStringSaslIamIpv6"}))
    GetBootstrapBrokersResponse.type = Types::GetBootstrapBrokersResponse
    GetClusterPolicyRequest.add_member(:cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetClusterPolicyRequest.type = Types::GetClusterPolicyRequest
    GetClusterPolicyResponse.add_member(:current_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CurrentVersion", traits: {"smithy.api#jsonName" => "currentVersion"}))
    GetClusterPolicyResponse.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Policy", traits: {"smithy.api#jsonName" => "policy"}))
    GetClusterPolicyResponse.type = Types::GetClusterPolicyResponse
    GetCompatibleKafkaVersionsRequest.add_member(:cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterArn", traits: {"smithy.api#httpQuery" => "clusterArn"}))
    GetCompatibleKafkaVersionsRequest.type = Types::GetCompatibleKafkaVersionsRequest
    GetCompatibleKafkaVersionsResponse.add_member(:compatible_kafka_versions, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofcompatiblekafkaversion, name: "CompatibleKafkaVersions", traits: {"smithy.api#jsonName" => "compatibleKafkaVersions"}))
    GetCompatibleKafkaVersionsResponse.type = Types::GetCompatibleKafkaVersionsResponse
    GroupSubscribedToTopicException.add_member(:invalid_parameter, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "InvalidParameter", traits: {"smithy.api#jsonName" => "invalidParameter"}))
    GroupSubscribedToTopicException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#jsonName" => "message"}))
    GroupSubscribedToTopicException.type = Types::GroupSubscribedToTopicException
    Iam.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Enabled", traits: {"smithy.api#jsonName" => "enabled"}))
    Iam.type = Types::Iam
    IcebergCompressionType.add_member(:zstd, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ZSTD", traits: {"smithy.api#enumValue" => "ZSTD"}))
    IcebergCompressionType.add_member(:snappy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SNAPPY", traits: {"smithy.api#enumValue" => "SNAPPY"}))
    IcebergDestinationConfiguration.add_member(:append_only, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "AppendOnly", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "appendOnly", "smithy.api#required" => {}}))
    IcebergDestinationConfiguration.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: Catalog, name: "Catalog", traits: {"smithy.api#jsonName" => "catalog"}))
    IcebergDestinationConfiguration.add_member(:data_freshness_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "DataFreshnessInSeconds", traits: {"smithy.api#jsonName" => "dataFreshnessInSeconds"}))
    IcebergDestinationConfiguration.add_member(:dead_letter_queue_s3, ::Smithy::Schema::Shapes::MemberShape.new(target: DeadLetterQueueS3, name: "DeadLetterQueueS3", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "deadLetterQueueS3", "smithy.api#required" => {}}))
    IcebergDestinationConfiguration.add_member(:destination_table_list, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofdestinationtable, name: "DestinationTableList", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "destinationTableList", "smithy.api#required" => {}}))
    IcebergDestinationConfiguration.add_member(:schema_evolution, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaEvolution, name: "SchemaEvolution", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "schemaEvolution", "smithy.api#required" => {}}))
    IcebergDestinationConfiguration.add_member(:service_execution_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ServiceExecutionRoleArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "serviceExecutionRoleArn", "smithy.api#required" => {}}))
    IcebergDestinationConfiguration.add_member(:table_creation, ::Smithy::Schema::Shapes::MemberShape.new(target: TableCreation, name: "TableCreation", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "tableCreation", "smithy.api#required" => {}}))
    IcebergDestinationConfiguration.add_member(:compression_type, ::Smithy::Schema::Shapes::MemberShape.new(target: IcebergCompressionType, name: "CompressionType", traits: {"smithy.api#jsonName" => "compressionType"}))
    IcebergDestinationConfiguration.type = Types::IcebergDestinationConfiguration
    IcebergDestinationUpdate.add_member(:data_freshness_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "DataFreshnessInSeconds", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "dataFreshnessInSeconds", "smithy.api#required" => {}}))
    IcebergDestinationUpdate.type = Types::IcebergDestinationUpdate
    InternalServerErrorException.add_member(:invalid_parameter, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "InvalidParameter", traits: {"smithy.api#jsonName" => "invalidParameter"}))
    InternalServerErrorException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#jsonName" => "message"}))
    InternalServerErrorException.type = Types::InternalServerErrorException
    JmxExporter.add_member(:enabled_in_broker, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "EnabledInBroker", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "enabledInBroker", "smithy.api#required" => {}}))
    JmxExporter.type = Types::JmxExporter
    JmxExporterInfo.add_member(:enabled_in_broker, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "EnabledInBroker", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "enabledInBroker", "smithy.api#required" => {}}))
    JmxExporterInfo.type = Types::JmxExporterInfo
    JwtSigningAlgorithm.add_member(:rs256, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RS256", traits: {"smithy.api#enumValue" => "RS256"}))
    JwtSigningAlgorithm.add_member(:es384, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ES384", traits: {"smithy.api#enumValue" => "ES384"}))
    KafkaCluster.add_member(:amazon_msk_cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonMskCluster, name: "AmazonMskCluster", traits: {"smithy.api#jsonName" => "amazonMskCluster"}))
    KafkaCluster.add_member(:apache_kafka_cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: ApacheKafkaCluster, name: "ApacheKafkaCluster", traits: {"smithy.api#jsonName" => "apacheKafkaCluster"}))
    KafkaCluster.add_member(:vpc_config, ::Smithy::Schema::Shapes::MemberShape.new(target: KafkaClusterClientVpcConfig, name: "VpcConfig", traits: {"smithy.api#jsonName" => "vpcConfig"}))
    KafkaCluster.add_member(:client_authentication, ::Smithy::Schema::Shapes::MemberShape.new(target: KafkaClusterClientAuthentication, name: "ClientAuthentication", traits: {"smithy.api#jsonName" => "clientAuthentication"}))
    KafkaCluster.add_member(:encryption_in_transit, ::Smithy::Schema::Shapes::MemberShape.new(target: KafkaClusterEncryptionInTransit, name: "EncryptionInTransit", traits: {"smithy.api#jsonName" => "encryptionInTransit"}))
    KafkaCluster.type = Types::KafkaCluster
    KafkaClusterClientAuthentication.add_member(:sasl_scram, ::Smithy::Schema::Shapes::MemberShape.new(target: KafkaClusterSaslScramAuthentication, name: "SaslScram", traits: {"smithy.api#jsonName" => "saslScram"}))
    KafkaClusterClientAuthentication.add_member(:mtls, ::Smithy::Schema::Shapes::MemberShape.new(target: KafkaClusterMTLSAuthentication, name: "MTLS", traits: {"smithy.api#jsonName" => "mTLS"}))
    KafkaClusterClientAuthentication.add_member(:sasl_o_auth_bearer, ::Smithy::Schema::Shapes::MemberShape.new(target: KafkaClusterSaslOAuthBearerAuthentication, name: "SaslOAuthBearer", traits: {"smithy.api#jsonName" => "saslOAuthBearer"}))
    KafkaClusterClientAuthentication.type = Types::KafkaClusterClientAuthentication
    KafkaClusterClientVpcConfig.add_member(:security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: ListofString, name: "SecurityGroupIds", traits: {"smithy.api#jsonName" => "securityGroupIds"}))
    KafkaClusterClientVpcConfig.add_member(:subnet_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: ListofString, name: "SubnetIds", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "subnetIds", "smithy.api#required" => {}}))
    KafkaClusterClientVpcConfig.type = Types::KafkaClusterClientVpcConfig
    KafkaClusterDescription.add_member(:amazon_msk_cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonMskCluster, name: "AmazonMskCluster", traits: {"smithy.api#jsonName" => "amazonMskCluster"}))
    KafkaClusterDescription.add_member(:apache_kafka_cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: ApacheKafkaCluster, name: "ApacheKafkaCluster", traits: {"smithy.api#jsonName" => "apacheKafkaCluster"}))
    KafkaClusterDescription.add_member(:kafka_cluster_alias, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "KafkaClusterAlias", traits: {"smithy.api#jsonName" => "kafkaClusterAlias"}))
    KafkaClusterDescription.add_member(:vpc_config, ::Smithy::Schema::Shapes::MemberShape.new(target: KafkaClusterClientVpcConfig, name: "VpcConfig", traits: {"smithy.api#jsonName" => "vpcConfig"}))
    KafkaClusterDescription.add_member(:client_authentication, ::Smithy::Schema::Shapes::MemberShape.new(target: KafkaClusterClientAuthentication, name: "ClientAuthentication", traits: {"smithy.api#jsonName" => "clientAuthentication"}))
    KafkaClusterDescription.add_member(:encryption_in_transit, ::Smithy::Schema::Shapes::MemberShape.new(target: KafkaClusterEncryptionInTransit, name: "EncryptionInTransit", traits: {"smithy.api#jsonName" => "encryptionInTransit"}))
    KafkaClusterDescription.type = Types::KafkaClusterDescription
    KafkaClusterEncryptionInTransit.add_member(:encryption_type, ::Smithy::Schema::Shapes::MemberShape.new(target: KafkaClusterEncryptionInTransitType, name: "EncryptionType", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "encryptionType", "smithy.api#required" => {}}))
    KafkaClusterEncryptionInTransit.add_member(:root_ca_certificate, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RootCaCertificate", traits: {"smithy.api#jsonName" => "rootCaCertificate"}))
    KafkaClusterEncryptionInTransit.type = Types::KafkaClusterEncryptionInTransit
    KafkaClusterEncryptionInTransitType.add_member(:tls, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TLS", traits: {"smithy.api#enumValue" => "TLS"}))
    KafkaClusterMTLSAuthentication.add_member(:secret_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SecretArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "secretArn", "smithy.api#required" => {}}))
    KafkaClusterMTLSAuthentication.type = Types::KafkaClusterMTLSAuthentication
    KafkaClusterOAuthClientCredentials.add_member(:token_request_secret_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TokenRequestSecretArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "tokenRequestSecretArn", "smithy.api#required" => {}}))
    KafkaClusterOAuthClientCredentials.type = Types::KafkaClusterOAuthClientCredentials
    KafkaClusterOAuthClientCredentialsAssertion.add_member(:audience, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Audience", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "audience", "smithy.api#required" => {}}))
    KafkaClusterOAuthClientCredentialsAssertion.add_member(:signing_algorithm, ::Smithy::Schema::Shapes::MemberShape.new(target: JwtSigningAlgorithm, name: "SigningAlgorithm", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "signingAlgorithm", "smithy.api#required" => {}}))
    KafkaClusterOAuthClientCredentialsAssertion.add_member(:token_request_secret_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TokenRequestSecretArn", traits: {"smithy.api#jsonName" => "tokenRequestSecretArn"}))
    KafkaClusterOAuthClientCredentialsAssertion.type = Types::KafkaClusterOAuthClientCredentialsAssertion
    KafkaClusterOAuthIamJwtBearer.add_member(:audience, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Audience", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "audience", "smithy.api#required" => {}}))
    KafkaClusterOAuthIamJwtBearer.add_member(:signing_algorithm, ::Smithy::Schema::Shapes::MemberShape.new(target: JwtSigningAlgorithm, name: "SigningAlgorithm", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "signingAlgorithm", "smithy.api#required" => {}}))
    KafkaClusterOAuthIamJwtBearer.add_member(:token_request_secret_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TokenRequestSecretArn", traits: {"smithy.api#jsonName" => "tokenRequestSecretArn"}))
    KafkaClusterOAuthIamJwtBearer.type = Types::KafkaClusterOAuthIamJwtBearer
    KafkaClusterSaslOAuthBearerAuthentication.add_member(:token_endpoint_url, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TokenEndpointUrl", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "tokenEndpointUrl", "smithy.api#required" => {}}))
    KafkaClusterSaslOAuthBearerAuthentication.add_member(:client_credentials, ::Smithy::Schema::Shapes::MemberShape.new(target: KafkaClusterOAuthClientCredentials, name: "ClientCredentials", traits: {"smithy.api#jsonName" => "clientCredentials"}))
    KafkaClusterSaslOAuthBearerAuthentication.add_member(:iam_jwt_bearer, ::Smithy::Schema::Shapes::MemberShape.new(target: KafkaClusterOAuthIamJwtBearer, name: "IamJwtBearer", traits: {"smithy.api#jsonName" => "iamJwtBearer"}))
    KafkaClusterSaslOAuthBearerAuthentication.add_member(:client_credentials_assertion, ::Smithy::Schema::Shapes::MemberShape.new(target: KafkaClusterOAuthClientCredentialsAssertion, name: "ClientCredentialsAssertion", traits: {"smithy.api#jsonName" => "clientCredentialsAssertion"}))
    KafkaClusterSaslOAuthBearerAuthentication.add_member(:token_endpoint_authentication_method, ::Smithy::Schema::Shapes::MemberShape.new(target: TokenEndpointAuthenticationMethod, name: "TokenEndpointAuthenticationMethod", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "tokenEndpointAuthenticationMethod", "smithy.api#required" => {}}))
    KafkaClusterSaslOAuthBearerAuthentication.add_member(:scope, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Scope", traits: {"smithy.api#jsonName" => "scope"}))
    KafkaClusterSaslOAuthBearerAuthentication.add_member(:token_endpoint_tls_certificate_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TokenEndpointTlsCertificateArn", traits: {"smithy.api#jsonName" => "tokenEndpointTlsCertificateArn"}))
    KafkaClusterSaslOAuthBearerAuthentication.type = Types::KafkaClusterSaslOAuthBearerAuthentication
    KafkaClusterSaslScramAuthentication.add_member(:mechanism, ::Smithy::Schema::Shapes::MemberShape.new(target: KafkaClusterSaslScramMechanism, name: "Mechanism", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "mechanism", "smithy.api#required" => {}}))
    KafkaClusterSaslScramAuthentication.add_member(:secret_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SecretArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "secretArn", "smithy.api#required" => {}}))
    KafkaClusterSaslScramAuthentication.type = Types::KafkaClusterSaslScramAuthentication
    KafkaClusterSaslScramMechanism.add_member(:sha256, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SHA256", traits: {"smithy.api#enumValue" => "SHA256"}))
    KafkaClusterSaslScramMechanism.add_member(:sha512, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SHA512", traits: {"smithy.api#enumValue" => "SHA512"}))
    KafkaClusterSummary.add_member(:amazon_msk_cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonMskCluster, name: "AmazonMskCluster", traits: {"smithy.api#jsonName" => "amazonMskCluster"}))
    KafkaClusterSummary.add_member(:apache_kafka_cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: ApacheKafkaCluster, name: "ApacheKafkaCluster", traits: {"smithy.api#jsonName" => "apacheKafkaCluster"}))
    KafkaClusterSummary.add_member(:kafka_cluster_alias, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "KafkaClusterAlias", traits: {"smithy.api#jsonName" => "kafkaClusterAlias"}))
    KafkaClusterSummary.type = Types::KafkaClusterSummary
    KafkaRequestException.add_member(:invalid_parameter, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "InvalidParameter", traits: {"smithy.api#jsonName" => "invalidParameter"}))
    KafkaRequestException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#jsonName" => "message"}))
    KafkaRequestException.type = Types::KafkaRequestException
    KafkaTimeoutException.add_member(:invalid_parameter, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "InvalidParameter", traits: {"smithy.api#jsonName" => "invalidParameter"}))
    KafkaTimeoutException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#jsonName" => "message"}))
    KafkaTimeoutException.type = Types::KafkaTimeoutException
    KafkaVersion.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Version", traits: {"smithy.api#jsonName" => "version"}))
    KafkaVersion.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: KafkaVersionStatus, name: "Status", traits: {"smithy.api#jsonName" => "status"}))
    KafkaVersion.type = Types::KafkaVersion
    KafkaVersionStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    KafkaVersionStatus.add_member(:deprecated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEPRECATED", traits: {"smithy.api#enumValue" => "DEPRECATED"}))
    ListChannelsRequest.add_member(:cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListChannelsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListChannelsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListChannelsRequest.add_member(:topic_name_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TopicNameFilter", traits: {"smithy.api#httpQuery" => "topicNameFilter"}))
    ListChannelsRequest.type = Types::ListChannelsRequest
    ListChannelsResponse.add_member(:channels, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofchannelinfo, name: "Channels", traits: {"smithy.api#jsonName" => "channels"}))
    ListChannelsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#jsonName" => "nextToken"}))
    ListChannelsResponse.type = Types::ListChannelsResponse
    ListClientVpcConnectionsRequest.add_member(:cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListClientVpcConnectionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListClientVpcConnectionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListClientVpcConnectionsRequest.type = Types::ListClientVpcConnectionsRequest
    ListClientVpcConnectionsResponse.add_member(:client_vpc_connections, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofclientvpcconnection, name: "ClientVpcConnections", traits: {"smithy.api#jsonName" => "clientVpcConnections"}))
    ListClientVpcConnectionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#jsonName" => "nextToken"}))
    ListClientVpcConnectionsResponse.type = Types::ListClientVpcConnectionsResponse
    ListClusterOperationsRequest.add_member(:cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListClusterOperationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListClusterOperationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListClusterOperationsRequest.type = Types::ListClusterOperationsRequest
    ListClusterOperationsResponse.add_member(:cluster_operation_info_list, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofclusteroperationinfo, name: "ClusterOperationInfoList", traits: {"smithy.api#jsonName" => "clusterOperationInfoList"}))
    ListClusterOperationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#jsonName" => "nextToken"}))
    ListClusterOperationsResponse.type = Types::ListClusterOperationsResponse
    ListClusterOperationsV2Request.add_member(:cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListClusterOperationsV2Request.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListClusterOperationsV2Request.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListClusterOperationsV2Request.type = Types::ListClusterOperationsV2Request
    ListClusterOperationsV2Response.add_member(:cluster_operation_info_list, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofclusteroperationv2summary, name: "ClusterOperationInfoList", traits: {"smithy.api#jsonName" => "clusterOperationInfoList"}))
    ListClusterOperationsV2Response.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#jsonName" => "nextToken"}))
    ListClusterOperationsV2Response.type = Types::ListClusterOperationsV2Response
    ListClustersRequest.add_member(:cluster_name_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterNameFilter", traits: {"smithy.api#httpQuery" => "clusterNameFilter"}))
    ListClustersRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListClustersRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListClustersRequest.type = Types::ListClustersRequest
    ListClustersResponse.add_member(:cluster_info_list, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofclusterinfo, name: "ClusterInfoList", traits: {"smithy.api#jsonName" => "clusterInfoList"}))
    ListClustersResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#jsonName" => "nextToken"}))
    ListClustersResponse.type = Types::ListClustersResponse
    ListClustersV2Request.add_member(:cluster_name_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterNameFilter", traits: {"smithy.api#httpQuery" => "clusterNameFilter"}))
    ListClustersV2Request.add_member(:cluster_type_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterTypeFilter", traits: {"smithy.api#httpQuery" => "clusterTypeFilter"}))
    ListClustersV2Request.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListClustersV2Request.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListClustersV2Request.type = Types::ListClustersV2Request
    ListClustersV2Response.add_member(:cluster_info_list, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofcluster, name: "ClusterInfoList", traits: {"smithy.api#jsonName" => "clusterInfoList"}))
    ListClustersV2Response.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#jsonName" => "nextToken"}))
    ListClustersV2Response.type = Types::ListClustersV2Response
    ListConfigurationRevisionsRequest.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Arn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListConfigurationRevisionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListConfigurationRevisionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListConfigurationRevisionsRequest.type = Types::ListConfigurationRevisionsRequest
    ListConfigurationRevisionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#jsonName" => "nextToken"}))
    ListConfigurationRevisionsResponse.add_member(:revisions, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofconfigurationrevision, name: "Revisions", traits: {"smithy.api#jsonName" => "revisions"}))
    ListConfigurationRevisionsResponse.type = Types::ListConfigurationRevisionsResponse
    ListConfigurationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListConfigurationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListConfigurationsRequest.type = Types::ListConfigurationsRequest
    ListConfigurationsResponse.add_member(:configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofconfiguration, name: "Configurations", traits: {"smithy.api#jsonName" => "configurations"}))
    ListConfigurationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#jsonName" => "nextToken"}))
    ListConfigurationsResponse.type = Types::ListConfigurationsResponse
    ListKafkaVersionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListKafkaVersionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListKafkaVersionsRequest.type = Types::ListKafkaVersionsRequest
    ListKafkaVersionsResponse.add_member(:kafka_versions, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofkafkaversion, name: "KafkaVersions", traits: {"smithy.api#jsonName" => "kafkaVersions"}))
    ListKafkaVersionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#jsonName" => "nextToken"}))
    ListKafkaVersionsResponse.type = Types::ListKafkaVersionsResponse
    ListNodesRequest.add_member(:cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListNodesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListNodesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListNodesRequest.type = Types::ListNodesRequest
    ListNodesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#jsonName" => "nextToken"}))
    ListNodesResponse.add_member(:node_info_list, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofnodeinfo, name: "NodeInfoList", traits: {"smithy.api#jsonName" => "nodeInfoList"}))
    ListNodesResponse.type = Types::ListNodesResponse
    ListReplicatorsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListReplicatorsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListReplicatorsRequest.add_member(:replicator_name_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReplicatorNameFilter", traits: {"smithy.api#httpQuery" => "replicatorNameFilter"}))
    ListReplicatorsRequest.type = Types::ListReplicatorsRequest
    ListReplicatorsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#jsonName" => "nextToken"}))
    ListReplicatorsResponse.add_member(:replicators, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofreplicatorsummary, name: "Replicators", traits: {"smithy.api#jsonName" => "replicators"}))
    ListReplicatorsResponse.type = Types::ListReplicatorsResponse
    ListScramSecretsRequest.add_member(:cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListScramSecretsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListScramSecretsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListScramSecretsRequest.type = Types::ListScramSecretsRequest
    ListScramSecretsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#jsonName" => "nextToken"}))
    ListScramSecretsResponse.add_member(:secret_arn_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ListofString, name: "SecretArnList", traits: {"smithy.api#jsonName" => "secretArnList"}))
    ListScramSecretsResponse.type = Types::ListScramSecretsResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: MapofString, name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ListTopicsRequest.add_member(:cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTopicsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListTopicsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListTopicsRequest.add_member(:topic_name_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TopicNameFilter", traits: {"smithy.api#httpQuery" => "topicNameFilter"}))
    ListTopicsRequest.type = Types::ListTopicsRequest
    ListTopicsResponse.add_member(:topics, ::Smithy::Schema::Shapes::MemberShape.new(target: Listoftopicinfo, name: "Topics", traits: {"smithy.api#jsonName" => "topics"}))
    ListTopicsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#jsonName" => "nextToken"}))
    ListTopicsResponse.type = Types::ListTopicsResponse
    ListVpcConnectionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListVpcConnectionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListVpcConnectionsRequest.type = Types::ListVpcConnectionsRequest
    ListVpcConnectionsResponse.add_member(:vpc_connections, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofvpcconnection, name: "VpcConnections", traits: {"smithy.api#jsonName" => "vpcConnections"}))
    ListVpcConnectionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#jsonName" => "nextToken"}))
    ListVpcConnectionsResponse.type = Types::ListVpcConnectionsResponse
    LogDelivery.add_member(:replicator_log_delivery, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicatorLogDelivery, name: "ReplicatorLogDelivery", traits: {"smithy.api#jsonName" => "replicatorLogDelivery"}))
    LogDelivery.type = Types::LogDelivery
    LoggingInfo.add_member(:authorizer_logs, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthorizerLogs, name: "AuthorizerLogs", traits: {"smithy.api#jsonName" => "authorizerLogs"}))
    LoggingInfo.add_member(:broker_logs, ::Smithy::Schema::Shapes::MemberShape.new(target: BrokerLogs, name: "BrokerLogs", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "brokerLogs", "smithy.api#required" => {}}))
    LoggingInfo.type = Types::LoggingInfo
    MutableClusterInfo.add_member(:broker_ebs_volume_info, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofbrokerebsvolumeinfo, name: "BrokerEBSVolumeInfo", traits: {"smithy.api#jsonName" => "brokerEBSVolumeInfo"}))
    MutableClusterInfo.add_member(:configuration_info, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationInfo, name: "ConfigurationInfo", traits: {"smithy.api#jsonName" => "configurationInfo"}))
    MutableClusterInfo.add_member(:number_of_broker_nodes, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "NumberOfBrokerNodes", traits: {"smithy.api#jsonName" => "numberOfBrokerNodes"}))
    MutableClusterInfo.add_member(:enhanced_monitoring, ::Smithy::Schema::Shapes::MemberShape.new(target: EnhancedMonitoring, name: "EnhancedMonitoring", traits: {"smithy.api#jsonName" => "enhancedMonitoring"}))
    MutableClusterInfo.add_member(:open_monitoring, ::Smithy::Schema::Shapes::MemberShape.new(target: OpenMonitoring, name: "OpenMonitoring", traits: {"smithy.api#jsonName" => "openMonitoring"}))
    MutableClusterInfo.add_member(:zookeeper_access, ::Smithy::Schema::Shapes::MemberShape.new(target: ZookeeperAccess, name: "ZookeeperAccess", traits: {"smithy.api#jsonName" => "zookeeperAccess"}))
    MutableClusterInfo.add_member(:kafka_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "KafkaVersion", traits: {"smithy.api#jsonName" => "kafkaVersion"}))
    MutableClusterInfo.add_member(:logging_info, ::Smithy::Schema::Shapes::MemberShape.new(target: LoggingInfo, name: "LoggingInfo", traits: {"smithy.api#jsonName" => "loggingInfo"}))
    MutableClusterInfo.add_member(:instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringmin5max32, name: "InstanceType", traits: {"smithy.api#jsonName" => "instanceType"}))
    MutableClusterInfo.add_member(:client_authentication, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientAuthentication, name: "ClientAuthentication", traits: {"smithy.api#jsonName" => "clientAuthentication"}))
    MutableClusterInfo.add_member(:encryption_info, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionInfo, name: "EncryptionInfo", traits: {"smithy.api#jsonName" => "encryptionInfo"}))
    MutableClusterInfo.add_member(:connectivity_info, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectivityInfo, name: "ConnectivityInfo", traits: {"smithy.api#jsonName" => "connectivityInfo"}))
    MutableClusterInfo.add_member(:storage_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageMode, name: "StorageMode", traits: {"smithy.api#jsonName" => "storageMode"}))
    MutableClusterInfo.add_member(:broker_count_update_info, ::Smithy::Schema::Shapes::MemberShape.new(target: BrokerCountUpdateInfo, name: "BrokerCountUpdateInfo", traits: {"smithy.api#jsonName" => "brokerCountUpdateInfo"}))
    MutableClusterInfo.add_member(:rebalancing, ::Smithy::Schema::Shapes::MemberShape.new(target: Rebalancing, name: "Rebalancing", traits: {"smithy.api#jsonName" => "rebalancing"}))
    MutableClusterInfo.type = Types::MutableClusterInfo
    NetworkType.add_member(:ipv4, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IPV4", traits: {"smithy.api#enumValue" => "IPV4"}))
    NetworkType.add_member(:dual, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DUAL", traits: {"smithy.api#enumValue" => "DUAL"}))
    NodeExporter.add_member(:enabled_in_broker, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "EnabledInBroker", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "enabledInBroker", "smithy.api#required" => {}}))
    NodeExporter.type = Types::NodeExporter
    NodeExporterInfo.add_member(:enabled_in_broker, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "EnabledInBroker", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "enabledInBroker", "smithy.api#required" => {}}))
    NodeExporterInfo.type = Types::NodeExporterInfo
    NodeInfo.add_member(:added_to_cluster_time, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AddedToClusterTime", traits: {"smithy.api#jsonName" => "addedToClusterTime"}))
    NodeInfo.add_member(:broker_node_info, ::Smithy::Schema::Shapes::MemberShape.new(target: BrokerNodeInfo, name: "BrokerNodeInfo", traits: {"smithy.api#jsonName" => "brokerNodeInfo"}))
    NodeInfo.add_member(:controller_node_info, ::Smithy::Schema::Shapes::MemberShape.new(target: ControllerNodeInfo, name: "ControllerNodeInfo", traits: {"smithy.api#jsonName" => "controllerNodeInfo"}))
    NodeInfo.add_member(:instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "InstanceType", traits: {"smithy.api#jsonName" => "instanceType"}))
    NodeInfo.add_member(:node_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NodeARN", traits: {"smithy.api#jsonName" => "nodeARN"}))
    NodeInfo.add_member(:node_type, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeType, name: "NodeType", traits: {"smithy.api#jsonName" => "nodeType"}))
    NodeInfo.add_member(:zookeeper_node_info, ::Smithy::Schema::Shapes::MemberShape.new(target: ZookeeperNodeInfo, name: "ZookeeperNodeInfo", traits: {"smithy.api#jsonName" => "zookeeperNodeInfo"}))
    NodeInfo.type = Types::NodeInfo
    NodeType.add_member(:broker, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BROKER", traits: {"smithy.api#enumValue" => "BROKER"}))
    NotControllerException.add_member(:invalid_parameter, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "InvalidParameter", traits: {"smithy.api#jsonName" => "invalidParameter"}))
    NotControllerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#jsonName" => "message"}))
    NotControllerException.type = Types::NotControllerException
    NotFoundException.add_member(:invalid_parameter, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "InvalidParameter", traits: {"smithy.api#jsonName" => "invalidParameter"}))
    NotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#jsonName" => "message"}))
    NotFoundException.type = Types::NotFoundException
    OpenMonitoring.add_member(:prometheus, ::Smithy::Schema::Shapes::MemberShape.new(target: Prometheus, name: "Prometheus", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "prometheus", "smithy.api#required" => {}}))
    OpenMonitoring.type = Types::OpenMonitoring
    OpenMonitoringInfo.add_member(:prometheus, ::Smithy::Schema::Shapes::MemberShape.new(target: PrometheusInfo, name: "Prometheus", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "prometheus", "smithy.api#required" => {}}))
    OpenMonitoringInfo.type = Types::OpenMonitoringInfo
    PartitionSource.add_member(:source_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceName", traits: {"smithy.api#jsonName" => "sourceName"}))
    PartitionSource.type = Types::PartitionSource
    PartitionSpec.add_member(:partition_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: PartitionStrategy, name: "PartitionStrategy", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "partitionStrategy", "smithy.api#required" => {}}))
    PartitionSpec.add_member(:source_list, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofpartitionsource, name: "SourceList", traits: {"smithy.api#jsonName" => "sourceList"}))
    PartitionSpec.type = Types::PartitionSpec
    PartitionStrategy.add_member(:time_hour, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TIME_HOUR", traits: {"smithy.api#enumValue" => "TIME_HOUR"}))
    Prometheus.add_member(:jmx_exporter, ::Smithy::Schema::Shapes::MemberShape.new(target: JmxExporter, name: "JmxExporter", traits: {"smithy.api#jsonName" => "jmxExporter"}))
    Prometheus.add_member(:node_exporter, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeExporter, name: "NodeExporter", traits: {"smithy.api#jsonName" => "nodeExporter"}))
    Prometheus.type = Types::Prometheus
    PrometheusInfo.add_member(:jmx_exporter, ::Smithy::Schema::Shapes::MemberShape.new(target: JmxExporterInfo, name: "JmxExporter", traits: {"smithy.api#jsonName" => "jmxExporter"}))
    PrometheusInfo.add_member(:node_exporter, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeExporterInfo, name: "NodeExporter", traits: {"smithy.api#jsonName" => "nodeExporter"}))
    PrometheusInfo.type = Types::PrometheusInfo
    Provisioned.add_member(:broker_node_group_info, ::Smithy::Schema::Shapes::MemberShape.new(target: BrokerNodeGroupInfo, name: "BrokerNodeGroupInfo", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "brokerNodeGroupInfo", "smithy.api#required" => {}}))
    Provisioned.add_member(:rebalancing, ::Smithy::Schema::Shapes::MemberShape.new(target: Rebalancing, name: "Rebalancing", traits: {"smithy.api#jsonName" => "rebalancing"}))
    Provisioned.add_member(:current_broker_software_info, ::Smithy::Schema::Shapes::MemberShape.new(target: BrokerSoftwareInfo, name: "CurrentBrokerSoftwareInfo", traits: {"smithy.api#jsonName" => "currentBrokerSoftwareInfo"}))
    Provisioned.add_member(:client_authentication, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientAuthentication, name: "ClientAuthentication", traits: {"smithy.api#jsonName" => "clientAuthentication"}))
    Provisioned.add_member(:encryption_info, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionInfo, name: "EncryptionInfo", traits: {"smithy.api#jsonName" => "encryptionInfo"}))
    Provisioned.add_member(:enhanced_monitoring, ::Smithy::Schema::Shapes::MemberShape.new(target: EnhancedMonitoring, name: "EnhancedMonitoring", traits: {"smithy.api#jsonName" => "enhancedMonitoring"}))
    Provisioned.add_member(:open_monitoring, ::Smithy::Schema::Shapes::MemberShape.new(target: OpenMonitoringInfo, name: "OpenMonitoring", traits: {"smithy.api#jsonName" => "openMonitoring"}))
    Provisioned.add_member(:logging_info, ::Smithy::Schema::Shapes::MemberShape.new(target: LoggingInfo, name: "LoggingInfo", traits: {"smithy.api#jsonName" => "loggingInfo"}))
    Provisioned.add_member(:number_of_broker_nodes, ::Smithy::Schema::Shapes::MemberShape.new(target: Integermin1max15, name: "NumberOfBrokerNodes", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "numberOfBrokerNodes", "smithy.api#required" => {}}))
    Provisioned.add_member(:zookeeper_connect_string, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ZookeeperConnectString", traits: {"smithy.api#jsonName" => "zookeeperConnectString"}))
    Provisioned.add_member(:zookeeper_connect_string_tls, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ZookeeperConnectStringTls", traits: {"smithy.api#jsonName" => "zookeeperConnectStringTls"}))
    Provisioned.add_member(:storage_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageMode, name: "StorageMode", traits: {"smithy.api#jsonName" => "storageMode"}))
    Provisioned.add_member(:customer_action_status, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerActionStatus, name: "CustomerActionStatus", traits: {"smithy.api#jsonName" => "customerActionStatus"}))
    Provisioned.type = Types::Provisioned
    ProvisionedRequest.add_member(:broker_node_group_info, ::Smithy::Schema::Shapes::MemberShape.new(target: BrokerNodeGroupInfo, name: "BrokerNodeGroupInfo", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "brokerNodeGroupInfo", "smithy.api#required" => {}}))
    ProvisionedRequest.add_member(:rebalancing, ::Smithy::Schema::Shapes::MemberShape.new(target: Rebalancing, name: "Rebalancing", traits: {"smithy.api#jsonName" => "rebalancing"}))
    ProvisionedRequest.add_member(:client_authentication, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientAuthentication, name: "ClientAuthentication", traits: {"smithy.api#jsonName" => "clientAuthentication"}))
    ProvisionedRequest.add_member(:configuration_info, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationInfo, name: "ConfigurationInfo", traits: {"smithy.api#jsonName" => "configurationInfo"}))
    ProvisionedRequest.add_member(:encryption_info, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionInfo, name: "EncryptionInfo", traits: {"smithy.api#jsonName" => "encryptionInfo"}))
    ProvisionedRequest.add_member(:enhanced_monitoring, ::Smithy::Schema::Shapes::MemberShape.new(target: EnhancedMonitoring, name: "EnhancedMonitoring", traits: {"smithy.api#jsonName" => "enhancedMonitoring"}))
    ProvisionedRequest.add_member(:open_monitoring, ::Smithy::Schema::Shapes::MemberShape.new(target: OpenMonitoringInfo, name: "OpenMonitoring", traits: {"smithy.api#jsonName" => "openMonitoring"}))
    ProvisionedRequest.add_member(:kafka_version, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringmin1max128, name: "KafkaVersion", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "kafkaVersion", "smithy.api#required" => {}}))
    ProvisionedRequest.add_member(:logging_info, ::Smithy::Schema::Shapes::MemberShape.new(target: LoggingInfo, name: "LoggingInfo", traits: {"smithy.api#jsonName" => "loggingInfo"}))
    ProvisionedRequest.add_member(:number_of_broker_nodes, ::Smithy::Schema::Shapes::MemberShape.new(target: Integermin1max15, name: "NumberOfBrokerNodes", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "numberOfBrokerNodes", "smithy.api#required" => {}}))
    ProvisionedRequest.add_member(:storage_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageMode, name: "StorageMode", traits: {"smithy.api#jsonName" => "storageMode"}))
    ProvisionedRequest.type = Types::ProvisionedRequest
    ProvisionedThroughput.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Enabled", traits: {"smithy.api#jsonName" => "enabled"}))
    ProvisionedThroughput.add_member(:volume_throughput, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "VolumeThroughput", traits: {"smithy.api#jsonName" => "volumeThroughput"}))
    ProvisionedThroughput.type = Types::ProvisionedThroughput
    PublicAccess.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type", traits: {"smithy.api#jsonName" => "type"}))
    PublicAccess.type = Types::PublicAccess
    PutClusterPolicyRequest.add_member(:cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutClusterPolicyRequest.add_member(:current_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CurrentVersion", traits: {"smithy.api#jsonName" => "currentVersion"}))
    PutClusterPolicyRequest.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Policy", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "policy", "smithy.api#required" => {}}))
    PutClusterPolicyRequest.type = Types::PutClusterPolicyRequest
    PutClusterPolicyResponse.add_member(:current_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CurrentVersion", traits: {"smithy.api#jsonName" => "currentVersion"}))
    PutClusterPolicyResponse.type = Types::PutClusterPolicyResponse
    ReassignmentInProgressException.add_member(:invalid_parameter, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "InvalidParameter", traits: {"smithy.api#jsonName" => "invalidParameter"}))
    ReassignmentInProgressException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#jsonName" => "message"}))
    ReassignmentInProgressException.type = Types::ReassignmentInProgressException
    Rebalancing.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: RebalancingStatus, name: "Status", traits: {"smithy.api#jsonName" => "status"}))
    Rebalancing.type = Types::Rebalancing
    RebalancingStatus.add_member(:paused, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PAUSED", traits: {"smithy.api#enumValue" => "PAUSED"}))
    RebalancingStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    RebootBrokerRequest.add_member(:broker_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: ListofString, name: "BrokerIds", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "brokerIds", "smithy.api#required" => {}}))
    RebootBrokerRequest.add_member(:cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RebootBrokerRequest.type = Types::RebootBrokerRequest
    RebootBrokerResponse.add_member(:cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterArn", traits: {"smithy.api#jsonName" => "clusterArn"}))
    RebootBrokerResponse.add_member(:cluster_operation_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterOperationArn", traits: {"smithy.api#jsonName" => "clusterOperationArn"}))
    RebootBrokerResponse.type = Types::RebootBrokerResponse
    RecordConverter.add_member(:value_converter, ::Smithy::Schema::Shapes::MemberShape.new(target: ValueConverter, name: "ValueConverter", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "valueConverter", "smithy.api#required" => {}}))
    RecordConverter.type = Types::RecordConverter
    RecordSchema.add_member(:gsr_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "GsrArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "gsrArn", "smithy.api#required" => {}}))
    RecordSchema.type = Types::RecordSchema
    RejectClientVpcConnectionRequest.add_member(:cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RejectClientVpcConnectionRequest.add_member(:vpc_connection_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "VpcConnectionArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "vpcConnectionArn", "smithy.api#required" => {}}))
    RejectClientVpcConnectionRequest.type = Types::RejectClientVpcConnectionRequest
    RejectClientVpcConnectionResponse.type = Types::RejectClientVpcConnectionResponse
    ReplicationInfo.add_member(:consumer_group_replication, ::Smithy::Schema::Shapes::MemberShape.new(target: ConsumerGroupReplication, name: "ConsumerGroupReplication", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "consumerGroupReplication", "smithy.api#required" => {}}))
    ReplicationInfo.add_member(:source_kafka_cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceKafkaClusterArn", traits: {"smithy.api#jsonName" => "sourceKafkaClusterArn"}))
    ReplicationInfo.add_member(:source_kafka_cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceKafkaClusterId", traits: {"smithy.api#jsonName" => "sourceKafkaClusterId"}))
    ReplicationInfo.add_member(:target_compression_type, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetCompressionType, name: "TargetCompressionType", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "targetCompressionType", "smithy.api#required" => {}}))
    ReplicationInfo.add_member(:target_kafka_cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TargetKafkaClusterArn", traits: {"smithy.api#jsonName" => "targetKafkaClusterArn"}))
    ReplicationInfo.add_member(:target_kafka_cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TargetKafkaClusterId", traits: {"smithy.api#jsonName" => "targetKafkaClusterId"}))
    ReplicationInfo.add_member(:topic_replication, ::Smithy::Schema::Shapes::MemberShape.new(target: TopicReplication, name: "TopicReplication", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "topicReplication", "smithy.api#required" => {}}))
    ReplicationInfo.type = Types::ReplicationInfo
    ReplicationInfoDescription.add_member(:consumer_group_replication, ::Smithy::Schema::Shapes::MemberShape.new(target: ConsumerGroupReplication, name: "ConsumerGroupReplication", traits: {"smithy.api#jsonName" => "consumerGroupReplication"}))
    ReplicationInfoDescription.add_member(:source_kafka_cluster_alias, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceKafkaClusterAlias", traits: {"smithy.api#jsonName" => "sourceKafkaClusterAlias"}))
    ReplicationInfoDescription.add_member(:target_compression_type, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetCompressionType, name: "TargetCompressionType", traits: {"smithy.api#jsonName" => "targetCompressionType"}))
    ReplicationInfoDescription.add_member(:target_kafka_cluster_alias, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TargetKafkaClusterAlias", traits: {"smithy.api#jsonName" => "targetKafkaClusterAlias"}))
    ReplicationInfoDescription.add_member(:topic_replication, ::Smithy::Schema::Shapes::MemberShape.new(target: TopicReplication, name: "TopicReplication", traits: {"smithy.api#jsonName" => "topicReplication"}))
    ReplicationInfoDescription.type = Types::ReplicationInfoDescription
    ReplicationInfoSummary.add_member(:source_kafka_cluster_alias, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceKafkaClusterAlias", traits: {"smithy.api#jsonName" => "sourceKafkaClusterAlias"}))
    ReplicationInfoSummary.add_member(:target_kafka_cluster_alias, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TargetKafkaClusterAlias", traits: {"smithy.api#jsonName" => "targetKafkaClusterAlias"}))
    ReplicationInfoSummary.type = Types::ReplicationInfoSummary
    ReplicationStartingPosition.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationStartingPositionType, name: "Type", traits: {"smithy.api#jsonName" => "type"}))
    ReplicationStartingPosition.type = Types::ReplicationStartingPosition
    ReplicationStartingPositionType.add_member(:latest, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LATEST", traits: {"smithy.api#enumValue" => "LATEST"}))
    ReplicationStartingPositionType.add_member(:earliest, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EARLIEST", traits: {"smithy.api#enumValue" => "EARLIEST"}))
    ReplicationStateInfo.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Code", traits: {"smithy.api#jsonName" => "code"}))
    ReplicationStateInfo.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#jsonName" => "message"}))
    ReplicationStateInfo.type = Types::ReplicationStateInfo
    ReplicationTopicNameConfiguration.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationTopicNameConfigurationType, name: "Type", traits: {"smithy.api#jsonName" => "type"}))
    ReplicationTopicNameConfiguration.type = Types::ReplicationTopicNameConfiguration
    ReplicationTopicNameConfigurationType.add_member(:prefixed_with_source_cluster_alias, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PREFIXED_WITH_SOURCE_CLUSTER_ALIAS", traits: {"smithy.api#enumValue" => "PREFIXED_WITH_SOURCE_CLUSTER_ALIAS"}))
    ReplicationTopicNameConfigurationType.add_member(:identical, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IDENTICAL", traits: {"smithy.api#enumValue" => "IDENTICAL"}))
    ReplicatorCloudWatchLogs.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Enabled", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "enabled", "smithy.api#required" => {}}))
    ReplicatorCloudWatchLogs.add_member(:log_group, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LogGroup", traits: {"smithy.api#jsonName" => "logGroup"}))
    ReplicatorCloudWatchLogs.type = Types::ReplicatorCloudWatchLogs
    ReplicatorFirehose.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Enabled", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "enabled", "smithy.api#required" => {}}))
    ReplicatorFirehose.add_member(:delivery_stream, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DeliveryStream", traits: {"smithy.api#jsonName" => "deliveryStream"}))
    ReplicatorFirehose.type = Types::ReplicatorFirehose
    ReplicatorLogDelivery.add_member(:cloud_watch_logs, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicatorCloudWatchLogs, name: "CloudWatchLogs", traits: {"smithy.api#jsonName" => "cloudWatchLogs"}))
    ReplicatorLogDelivery.add_member(:firehose, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicatorFirehose, name: "Firehose", traits: {"smithy.api#jsonName" => "firehose"}))
    ReplicatorLogDelivery.add_member(:s3, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicatorS3, name: "S3", traits: {"smithy.api#jsonName" => "s3"}))
    ReplicatorLogDelivery.type = Types::ReplicatorLogDelivery
    ReplicatorS3.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Enabled", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "enabled", "smithy.api#required" => {}}))
    ReplicatorS3.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Bucket", traits: {"smithy.api#jsonName" => "bucket"}))
    ReplicatorS3.add_member(:prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Prefix", traits: {"smithy.api#jsonName" => "prefix"}))
    ReplicatorS3.type = Types::ReplicatorS3
    ReplicatorState.add_member(:running, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RUNNING", traits: {"smithy.api#enumValue" => "RUNNING"}))
    ReplicatorState.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    ReplicatorState.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    ReplicatorState.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    ReplicatorState.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    ReplicatorSummary.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestampiso8601, name: "CreationTime", traits: {"smithy.api#jsonName" => "creationTime"}))
    ReplicatorSummary.add_member(:current_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CurrentVersion", traits: {"smithy.api#jsonName" => "currentVersion"}))
    ReplicatorSummary.add_member(:is_replicator_reference, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "IsReplicatorReference", traits: {"smithy.api#jsonName" => "isReplicatorReference"}))
    ReplicatorSummary.add_member(:kafka_clusters_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofkafkaclustersummary, name: "KafkaClustersSummary", traits: {"smithy.api#jsonName" => "kafkaClustersSummary"}))
    ReplicatorSummary.add_member(:replication_info_summary_list, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofreplicationinfosummary, name: "ReplicationInfoSummaryList", traits: {"smithy.api#jsonName" => "replicationInfoSummaryList"}))
    ReplicatorSummary.add_member(:replicator_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReplicatorArn", traits: {"smithy.api#jsonName" => "replicatorArn"}))
    ReplicatorSummary.add_member(:replicator_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReplicatorName", traits: {"smithy.api#jsonName" => "replicatorName"}))
    ReplicatorSummary.add_member(:replicator_resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReplicatorResourceArn", traits: {"smithy.api#jsonName" => "replicatorResourceArn"}))
    ReplicatorSummary.add_member(:replicator_state, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicatorState, name: "ReplicatorState", traits: {"smithy.api#jsonName" => "replicatorState"}))
    ReplicatorSummary.type = Types::ReplicatorSummary
    S3.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Bucket", traits: {"smithy.api#jsonName" => "bucket"}))
    S3.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Enabled", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "enabled", "smithy.api#required" => {}}))
    S3.add_member(:prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Prefix", traits: {"smithy.api#jsonName" => "prefix"}))
    S3.type = Types::S3
    S3CompressionType.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    S3CompressionType.add_member(:gzip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GZIP", traits: {"smithy.api#enumValue" => "GZIP"}))
    S3CompressionType.add_member(:zstd, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ZSTD", traits: {"smithy.api#enumValue" => "ZSTD"}))
    S3DestinationConfiguration.add_member(:data_freshness_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "DataFreshnessInSeconds", traits: {"smithy.api#jsonName" => "dataFreshnessInSeconds"}))
    S3DestinationConfiguration.add_member(:dead_letter_queue_s3, ::Smithy::Schema::Shapes::MemberShape.new(target: DeadLetterQueueS3, name: "DeadLetterQueueS3", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "deadLetterQueueS3", "smithy.api#required" => {}}))
    S3DestinationConfiguration.add_member(:service_execution_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ServiceExecutionRoleArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "serviceExecutionRoleArn", "smithy.api#required" => {}}))
    S3DestinationConfiguration.add_member(:storage, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Storage, name: "Storage", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "storage", "smithy.api#required" => {}}))
    S3DestinationConfiguration.type = Types::S3DestinationConfiguration
    S3DestinationUpdate.add_member(:data_freshness_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "DataFreshnessInSeconds", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "dataFreshnessInSeconds", "smithy.api#required" => {}}))
    S3DestinationUpdate.type = Types::S3DestinationUpdate
    S3Storage.add_member(:bucket_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "BucketArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "bucketArn", "smithy.api#required" => {}}))
    S3Storage.add_member(:compression_type, ::Smithy::Schema::Shapes::MemberShape.new(target: S3CompressionType, name: "CompressionType", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "compressionType", "smithy.api#required" => {}}))
    S3Storage.add_member(:output_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "OutputPrefix", traits: {"smithy.api#jsonName" => "outputPrefix"}))
    S3Storage.add_member(:output_key_template, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "OutputKeyTemplate", traits: {"smithy.api#jsonName" => "outputKeyTemplate"}))
    S3Storage.add_member(:storage_class, ::Smithy::Schema::Shapes::MemberShape.new(target: S3StorageClass, name: "StorageClass", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "storageClass", "smithy.api#required" => {}}))
    S3Storage.add_member(:expected_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ExpectedBucketOwner", traits: {"smithy.api#jsonName" => "expectedBucketOwner"}))
    S3Storage.type = Types::S3Storage
    S3StorageClass.add_member(:standard, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STANDARD", traits: {"smithy.api#enumValue" => "STANDARD"}))
    S3StorageClass.add_member(:intelligent_tiering, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INTELLIGENT_TIERING", traits: {"smithy.api#enumValue" => "INTELLIGENT_TIERING"}))
    S3StorageClass.add_member(:glacier_ir, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GLACIER_IR", traits: {"smithy.api#enumValue" => "GLACIER_IR"}))
    Sasl.add_member(:scram, ::Smithy::Schema::Shapes::MemberShape.new(target: Scram, name: "Scram", traits: {"smithy.api#jsonName" => "scram"}))
    Sasl.add_member(:iam, ::Smithy::Schema::Shapes::MemberShape.new(target: Iam, name: "Iam", traits: {"smithy.api#jsonName" => "iam"}))
    Sasl.type = Types::Sasl
    SchemaEvolution.add_member(:enable_schema_evolution, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "EnableSchemaEvolution", traits: {"smithy.api#jsonName" => "enableSchemaEvolution"}))
    SchemaEvolution.type = Types::SchemaEvolution
    Scram.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Enabled", traits: {"smithy.api#jsonName" => "enabled"}))
    Scram.type = Types::Scram
    Serverless.add_member(:vpc_configs, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofvpcconfig, name: "VpcConfigs", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "vpcConfigs", "smithy.api#required" => {}}))
    Serverless.add_member(:client_authentication, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerlessClientAuthentication, name: "ClientAuthentication", traits: {"smithy.api#jsonName" => "clientAuthentication"}))
    Serverless.add_member(:connectivity_info, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerlessConnectivityInfo, name: "ConnectivityInfo", traits: {"smithy.api#jsonName" => "connectivityInfo"}))
    Serverless.type = Types::Serverless
    ServerlessClientAuthentication.add_member(:sasl, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerlessSasl, name: "Sasl", traits: {"smithy.api#jsonName" => "sasl"}))
    ServerlessClientAuthentication.type = Types::ServerlessClientAuthentication
    ServerlessConnectivityInfo.add_member(:network_type, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkType, name: "NetworkType", traits: {"smithy.api#jsonName" => "networkType"}))
    ServerlessConnectivityInfo.type = Types::ServerlessConnectivityInfo
    ServerlessRequest.add_member(:vpc_configs, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofvpcconfig, name: "VpcConfigs", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "vpcConfigs", "smithy.api#required" => {}}))
    ServerlessRequest.add_member(:client_authentication, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerlessClientAuthentication, name: "ClientAuthentication", traits: {"smithy.api#jsonName" => "clientAuthentication"}))
    ServerlessRequest.type = Types::ServerlessRequest
    ServerlessSasl.add_member(:iam, ::Smithy::Schema::Shapes::MemberShape.new(target: Iam, name: "Iam", traits: {"smithy.api#jsonName" => "iam"}))
    ServerlessSasl.type = Types::ServerlessSasl
    ServiceUnavailableException.add_member(:invalid_parameter, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "InvalidParameter", traits: {"smithy.api#jsonName" => "invalidParameter"}))
    ServiceUnavailableException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#jsonName" => "message"}))
    ServiceUnavailableException.type = Types::ServiceUnavailableException
    StateInfo.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Code", traits: {"smithy.api#jsonName" => "code"}))
    StateInfo.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#jsonName" => "message"}))
    StateInfo.type = Types::StateInfo
    StorageInfo.add_member(:ebs_storage_info, ::Smithy::Schema::Shapes::MemberShape.new(target: EBSStorageInfo, name: "EbsStorageInfo", traits: {"smithy.api#jsonName" => "ebsStorageInfo"}))
    StorageInfo.type = Types::StorageInfo
    StorageMode.add_member(:local, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LOCAL", traits: {"smithy.api#enumValue" => "LOCAL"}))
    StorageMode.add_member(:tiered, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TIERED", traits: {"smithy.api#enumValue" => "TIERED"}))
    TableCreation.add_member(:enable_table_creation, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "EnableTableCreation", traits: {"smithy.api#jsonName" => "enableTableCreation"}))
    TableCreation.type = Types::TableCreation
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: MapofString, name: "Tags", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "tags", "smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TargetCompressionType.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    TargetCompressionType.add_member(:gzip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GZIP", traits: {"smithy.api#enumValue" => "GZIP"}))
    TargetCompressionType.add_member(:snappy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SNAPPY", traits: {"smithy.api#enumValue" => "SNAPPY"}))
    TargetCompressionType.add_member(:lz4, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LZ4", traits: {"smithy.api#enumValue" => "LZ4"}))
    TargetCompressionType.add_member(:zstd, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ZSTD", traits: {"smithy.api#enumValue" => "ZSTD"}))
    Tls.add_member(:certificate_authority_arn_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ListofString, name: "CertificateAuthorityArnList", traits: {"smithy.api#jsonName" => "certificateAuthorityArnList"}))
    Tls.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Enabled", traits: {"smithy.api#jsonName" => "enabled"}))
    Tls.type = Types::Tls
    TokenEndpointAuthenticationMethod.add_member(:post, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "POST", traits: {"smithy.api#enumValue" => "POST"}))
    TokenEndpointAuthenticationMethod.add_member(:basic, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BASIC", traits: {"smithy.api#enumValue" => "BASIC"}))
    TokenEndpointAuthenticationMethod.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    TooManyRequestsException.add_member(:invalid_parameter, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "InvalidParameter", traits: {"smithy.api#jsonName" => "invalidParameter"}))
    TooManyRequestsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#jsonName" => "message"}))
    TooManyRequestsException.type = Types::TooManyRequestsException
    TopicConfiguration.add_member(:record_converter, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordConverter, name: "RecordConverter", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "recordConverter", "smithy.api#required" => {}}))
    TopicConfiguration.add_member(:record_schema, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordSchema, name: "RecordSchema", traits: {"smithy.api#jsonName" => "recordSchema"}))
    TopicConfiguration.add_member(:topic_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TopicArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "topicArn", "smithy.api#required" => {}}))
    TopicConfiguration.type = Types::TopicConfiguration
    TopicExistsException.add_member(:invalid_parameter, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "InvalidParameter", traits: {"smithy.api#jsonName" => "invalidParameter"}))
    TopicExistsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#jsonName" => "message"}))
    TopicExistsException.type = Types::TopicExistsException
    TopicInfo.add_member(:topic_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TopicArn", traits: {"smithy.api#jsonName" => "topicArn"}))
    TopicInfo.add_member(:topic_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TopicName", traits: {"smithy.api#jsonName" => "topicName"}))
    TopicInfo.add_member(:replication_factor, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "ReplicationFactor", traits: {"smithy.api#jsonName" => "replicationFactor"}))
    TopicInfo.add_member(:partition_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "PartitionCount", traits: {"smithy.api#jsonName" => "partitionCount"}))
    TopicInfo.add_member(:out_of_sync_replica_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "OutOfSyncReplicaCount", traits: {"smithy.api#jsonName" => "outOfSyncReplicaCount"}))
    TopicInfo.type = Types::TopicInfo
    TopicPartitionInfo.add_member(:partition, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Partition", traits: {"smithy.api#jsonName" => "partition"}))
    TopicPartitionInfo.add_member(:leader, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Leader", traits: {"smithy.api#jsonName" => "leader"}))
    TopicPartitionInfo.add_member(:replicas, ::Smithy::Schema::Shapes::MemberShape.new(target: ListofInteger, name: "Replicas", traits: {"smithy.api#jsonName" => "replicas"}))
    TopicPartitionInfo.add_member(:isr, ::Smithy::Schema::Shapes::MemberShape.new(target: ListofInteger, name: "Isr", traits: {"smithy.api#jsonName" => "isr"}))
    TopicPartitionInfo.type = Types::TopicPartitionInfo
    TopicReplication.add_member(:copy_access_control_lists_for_topics, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "CopyAccessControlListsForTopics", traits: {"smithy.api#jsonName" => "copyAccessControlListsForTopics"}))
    TopicReplication.add_member(:copy_topic_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "CopyTopicConfigurations", traits: {"smithy.api#jsonName" => "copyTopicConfigurations"}))
    TopicReplication.add_member(:detect_and_copy_new_topics, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "DetectAndCopyNewTopics", traits: {"smithy.api#jsonName" => "detectAndCopyNewTopics"}))
    TopicReplication.add_member(:starting_position, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationStartingPosition, name: "StartingPosition", traits: {"smithy.api#jsonName" => "startingPosition"}))
    TopicReplication.add_member(:topic_name_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationTopicNameConfiguration, name: "TopicNameConfiguration", traits: {"smithy.api#jsonName" => "topicNameConfiguration"}))
    TopicReplication.add_member(:topics_to_exclude, ::Smithy::Schema::Shapes::MemberShape.new(target: ListofStringmax249, name: "TopicsToExclude", traits: {"smithy.api#jsonName" => "topicsToExclude"}))
    TopicReplication.add_member(:topics_to_replicate, ::Smithy::Schema::Shapes::MemberShape.new(target: ListofStringmax249, name: "TopicsToReplicate", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "topicsToReplicate", "smithy.api#required" => {}}))
    TopicReplication.type = Types::TopicReplication
    TopicReplicationUpdate.add_member(:copy_access_control_lists_for_topics, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "CopyAccessControlListsForTopics", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "copyAccessControlListsForTopics", "smithy.api#required" => {}}))
    TopicReplicationUpdate.add_member(:copy_topic_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "CopyTopicConfigurations", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "copyTopicConfigurations", "smithy.api#required" => {}}))
    TopicReplicationUpdate.add_member(:detect_and_copy_new_topics, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "DetectAndCopyNewTopics", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "detectAndCopyNewTopics", "smithy.api#required" => {}}))
    TopicReplicationUpdate.add_member(:topics_to_exclude, ::Smithy::Schema::Shapes::MemberShape.new(target: ListofStringmax249, name: "TopicsToExclude", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "topicsToExclude", "smithy.api#required" => {}}))
    TopicReplicationUpdate.add_member(:topics_to_replicate, ::Smithy::Schema::Shapes::MemberShape.new(target: ListofStringmax249, name: "TopicsToReplicate", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "topicsToReplicate", "smithy.api#required" => {}}))
    TopicReplicationUpdate.type = Types::TopicReplicationUpdate
    TopicState.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    TopicState.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    TopicState.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    TopicState.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    Unauthenticated.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Enabled", traits: {"smithy.api#jsonName" => "enabled"}))
    Unauthenticated.type = Types::Unauthenticated
    UnauthorizedException.add_member(:invalid_parameter, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "InvalidParameter", traits: {"smithy.api#jsonName" => "invalidParameter"}))
    UnauthorizedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#jsonName" => "message"}))
    UnauthorizedException.type = Types::UnauthorizedException
    UnknownTopicOrPartitionException.add_member(:invalid_parameter, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "InvalidParameter", traits: {"smithy.api#jsonName" => "invalidParameter"}))
    UnknownTopicOrPartitionException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#jsonName" => "message"}))
    UnknownTopicOrPartitionException.type = Types::UnknownTopicOrPartitionException
    UnprocessedScramSecret.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ErrorCode", traits: {"smithy.api#jsonName" => "errorCode"}))
    UnprocessedScramSecret.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ErrorMessage", traits: {"smithy.api#jsonName" => "errorMessage"}))
    UnprocessedScramSecret.add_member(:secret_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SecretArn", traits: {"smithy.api#jsonName" => "secretArn"}))
    UnprocessedScramSecret.type = Types::UnprocessedScramSecret
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: ListofString, name: "TagKeys", traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UpdateBrokerCountRequest.add_member(:cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateBrokerCountRequest.add_member(:current_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CurrentVersion", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "currentVersion", "smithy.api#required" => {}}))
    UpdateBrokerCountRequest.add_member(:target_number_of_broker_nodes, ::Smithy::Schema::Shapes::MemberShape.new(target: Integermin1max15, name: "TargetNumberOfBrokerNodes", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "targetNumberOfBrokerNodes", "smithy.api#required" => {}}))
    UpdateBrokerCountRequest.type = Types::UpdateBrokerCountRequest
    UpdateBrokerCountResponse.add_member(:cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterArn", traits: {"smithy.api#jsonName" => "clusterArn"}))
    UpdateBrokerCountResponse.add_member(:cluster_operation_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterOperationArn", traits: {"smithy.api#jsonName" => "clusterOperationArn"}))
    UpdateBrokerCountResponse.type = Types::UpdateBrokerCountResponse
    UpdateBrokerStorageRequest.add_member(:cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateBrokerStorageRequest.add_member(:current_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CurrentVersion", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "currentVersion", "smithy.api#required" => {}}))
    UpdateBrokerStorageRequest.add_member(:target_broker_ebs_volume_info, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofbrokerebsvolumeinfo, name: "TargetBrokerEBSVolumeInfo", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "targetBrokerEBSVolumeInfo", "smithy.api#required" => {}}))
    UpdateBrokerStorageRequest.type = Types::UpdateBrokerStorageRequest
    UpdateBrokerStorageResponse.add_member(:cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterArn", traits: {"smithy.api#jsonName" => "clusterArn"}))
    UpdateBrokerStorageResponse.add_member(:cluster_operation_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterOperationArn", traits: {"smithy.api#jsonName" => "clusterOperationArn"}))
    UpdateBrokerStorageResponse.type = Types::UpdateBrokerStorageResponse
    UpdateBrokerTypeRequest.add_member(:cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateBrokerTypeRequest.add_member(:current_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CurrentVersion", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "currentVersion", "smithy.api#required" => {}}))
    UpdateBrokerTypeRequest.add_member(:target_instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TargetInstanceType", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "targetInstanceType", "smithy.api#required" => {}}))
    UpdateBrokerTypeRequest.type = Types::UpdateBrokerTypeRequest
    UpdateBrokerTypeResponse.add_member(:cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterArn", traits: {"smithy.api#jsonName" => "clusterArn"}))
    UpdateBrokerTypeResponse.add_member(:cluster_operation_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterOperationArn", traits: {"smithy.api#jsonName" => "clusterOperationArn"}))
    UpdateBrokerTypeResponse.type = Types::UpdateBrokerTypeResponse
    UpdateChannelRequest.add_member(:channel_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ChannelArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateChannelRequest.add_member(:cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateChannelRequest.add_member(:iceberg_destination_update, ::Smithy::Schema::Shapes::MemberShape.new(target: IcebergDestinationUpdate, name: "IcebergDestinationUpdate", traits: {"smithy.api#jsonName" => "icebergDestinationUpdate"}))
    UpdateChannelRequest.add_member(:s3_destination_update, ::Smithy::Schema::Shapes::MemberShape.new(target: S3DestinationUpdate, name: "S3DestinationUpdate", traits: {"smithy.api#jsonName" => "s3DestinationUpdate"}))
    UpdateChannelRequest.type = Types::UpdateChannelRequest
    UpdateChannelResponse.add_member(:channel_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ChannelArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "channelArn", "smithy.api#required" => {}}))
    UpdateChannelResponse.add_member(:cluster_operation_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterOperationArn", traits: {"smithy.api#jsonName" => "clusterOperationArn"}))
    UpdateChannelResponse.type = Types::UpdateChannelResponse
    UpdateClusterConfigurationRequest.add_member(:cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateClusterConfigurationRequest.add_member(:configuration_info, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationInfo, name: "ConfigurationInfo", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "configurationInfo", "smithy.api#required" => {}}))
    UpdateClusterConfigurationRequest.add_member(:current_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CurrentVersion", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "currentVersion", "smithy.api#required" => {}}))
    UpdateClusterConfigurationRequest.type = Types::UpdateClusterConfigurationRequest
    UpdateClusterConfigurationResponse.add_member(:cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterArn", traits: {"smithy.api#jsonName" => "clusterArn"}))
    UpdateClusterConfigurationResponse.add_member(:cluster_operation_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterOperationArn", traits: {"smithy.api#jsonName" => "clusterOperationArn"}))
    UpdateClusterConfigurationResponse.type = Types::UpdateClusterConfigurationResponse
    UpdateClusterKafkaVersionRequest.add_member(:cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateClusterKafkaVersionRequest.add_member(:configuration_info, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationInfo, name: "ConfigurationInfo", traits: {"smithy.api#jsonName" => "configurationInfo"}))
    UpdateClusterKafkaVersionRequest.add_member(:current_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CurrentVersion", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "currentVersion", "smithy.api#required" => {}}))
    UpdateClusterKafkaVersionRequest.add_member(:target_kafka_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TargetKafkaVersion", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "targetKafkaVersion", "smithy.api#required" => {}}))
    UpdateClusterKafkaVersionRequest.type = Types::UpdateClusterKafkaVersionRequest
    UpdateClusterKafkaVersionResponse.add_member(:cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterArn", traits: {"smithy.api#jsonName" => "clusterArn"}))
    UpdateClusterKafkaVersionResponse.add_member(:cluster_operation_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterOperationArn", traits: {"smithy.api#jsonName" => "clusterOperationArn"}))
    UpdateClusterKafkaVersionResponse.type = Types::UpdateClusterKafkaVersionResponse
    UpdateConfigurationRequest.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Arn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateConfigurationRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Description", traits: {"smithy.api#jsonName" => "description"}))
    UpdateConfigurationRequest.add_member(:server_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: Blob, name: "ServerProperties", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "serverProperties", "smithy.api#required" => {}}))
    UpdateConfigurationRequest.type = Types::UpdateConfigurationRequest
    UpdateConfigurationResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Arn", traits: {"smithy.api#jsonName" => "arn"}))
    UpdateConfigurationResponse.add_member(:latest_revision, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationRevision, name: "LatestRevision", traits: {"smithy.api#jsonName" => "latestRevision"}))
    UpdateConfigurationResponse.type = Types::UpdateConfigurationResponse
    UpdateConnectivityRequest.add_member(:cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateConnectivityRequest.add_member(:connectivity_info, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectivityInfo, name: "ConnectivityInfo", traits: {"smithy.api#jsonName" => "connectivityInfo"}))
    UpdateConnectivityRequest.add_member(:current_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CurrentVersion", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "currentVersion", "smithy.api#required" => {}}))
    UpdateConnectivityRequest.add_member(:zookeeper_access, ::Smithy::Schema::Shapes::MemberShape.new(target: ZookeeperAccess, name: "ZookeeperAccess", traits: {"smithy.api#jsonName" => "zookeeperAccess"}))
    UpdateConnectivityRequest.type = Types::UpdateConnectivityRequest
    UpdateConnectivityResponse.add_member(:cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterArn", traits: {"smithy.api#jsonName" => "clusterArn"}))
    UpdateConnectivityResponse.add_member(:cluster_operation_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterOperationArn", traits: {"smithy.api#jsonName" => "clusterOperationArn"}))
    UpdateConnectivityResponse.type = Types::UpdateConnectivityResponse
    UpdateMonitoringRequest.add_member(:cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateMonitoringRequest.add_member(:current_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CurrentVersion", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "currentVersion", "smithy.api#required" => {}}))
    UpdateMonitoringRequest.add_member(:enhanced_monitoring, ::Smithy::Schema::Shapes::MemberShape.new(target: EnhancedMonitoring, name: "EnhancedMonitoring", traits: {"smithy.api#jsonName" => "enhancedMonitoring"}))
    UpdateMonitoringRequest.add_member(:open_monitoring, ::Smithy::Schema::Shapes::MemberShape.new(target: OpenMonitoringInfo, name: "OpenMonitoring", traits: {"smithy.api#jsonName" => "openMonitoring"}))
    UpdateMonitoringRequest.add_member(:logging_info, ::Smithy::Schema::Shapes::MemberShape.new(target: LoggingInfo, name: "LoggingInfo", traits: {"smithy.api#jsonName" => "loggingInfo"}))
    UpdateMonitoringRequest.type = Types::UpdateMonitoringRequest
    UpdateMonitoringResponse.add_member(:cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterArn", traits: {"smithy.api#jsonName" => "clusterArn"}))
    UpdateMonitoringResponse.add_member(:cluster_operation_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterOperationArn", traits: {"smithy.api#jsonName" => "clusterOperationArn"}))
    UpdateMonitoringResponse.type = Types::UpdateMonitoringResponse
    UpdateRebalancingRequest.add_member(:cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateRebalancingRequest.add_member(:current_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CurrentVersion", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "currentVersion", "smithy.api#required" => {}}))
    UpdateRebalancingRequest.add_member(:rebalancing, ::Smithy::Schema::Shapes::MemberShape.new(target: Rebalancing, name: "Rebalancing", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "rebalancing", "smithy.api#required" => {}}))
    UpdateRebalancingRequest.type = Types::UpdateRebalancingRequest
    UpdateRebalancingResponse.add_member(:cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterArn", traits: {"smithy.api#jsonName" => "clusterArn"}))
    UpdateRebalancingResponse.add_member(:cluster_operation_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterOperationArn", traits: {"smithy.api#jsonName" => "clusterOperationArn"}))
    UpdateRebalancingResponse.type = Types::UpdateRebalancingResponse
    UpdateReplicationInfoRequest.add_member(:consumer_group_replication, ::Smithy::Schema::Shapes::MemberShape.new(target: ConsumerGroupReplicationUpdate, name: "ConsumerGroupReplication", traits: {"smithy.api#jsonName" => "consumerGroupReplication"}))
    UpdateReplicationInfoRequest.add_member(:current_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CurrentVersion", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "currentVersion", "smithy.api#required" => {}}))
    UpdateReplicationInfoRequest.add_member(:replicator_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReplicatorArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateReplicationInfoRequest.add_member(:source_kafka_cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceKafkaClusterArn", traits: {"smithy.api#jsonName" => "sourceKafkaClusterArn"}))
    UpdateReplicationInfoRequest.add_member(:source_kafka_cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceKafkaClusterId", traits: {"smithy.api#jsonName" => "sourceKafkaClusterId"}))
    UpdateReplicationInfoRequest.add_member(:target_kafka_cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TargetKafkaClusterArn", traits: {"smithy.api#jsonName" => "targetKafkaClusterArn"}))
    UpdateReplicationInfoRequest.add_member(:target_kafka_cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TargetKafkaClusterId", traits: {"smithy.api#jsonName" => "targetKafkaClusterId"}))
    UpdateReplicationInfoRequest.add_member(:topic_replication, ::Smithy::Schema::Shapes::MemberShape.new(target: TopicReplicationUpdate, name: "TopicReplication", traits: {"smithy.api#jsonName" => "topicReplication"}))
    UpdateReplicationInfoRequest.add_member(:log_delivery, ::Smithy::Schema::Shapes::MemberShape.new(target: LogDelivery, name: "LogDelivery", traits: {"smithy.api#jsonName" => "logDelivery"}))
    UpdateReplicationInfoRequest.type = Types::UpdateReplicationInfoRequest
    UpdateReplicationInfoResponse.add_member(:replicator_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReplicatorArn", traits: {"smithy.api#jsonName" => "replicatorArn"}))
    UpdateReplicationInfoResponse.add_member(:replicator_state, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicatorState, name: "ReplicatorState", traits: {"smithy.api#jsonName" => "replicatorState"}))
    UpdateReplicationInfoResponse.type = Types::UpdateReplicationInfoResponse
    UpdateSecurityRequest.add_member(:client_authentication, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientAuthentication, name: "ClientAuthentication", traits: {"smithy.api#jsonName" => "clientAuthentication"}))
    UpdateSecurityRequest.add_member(:cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateSecurityRequest.add_member(:current_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CurrentVersion", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "currentVersion", "smithy.api#required" => {}}))
    UpdateSecurityRequest.add_member(:encryption_info, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionInfo, name: "EncryptionInfo", traits: {"smithy.api#jsonName" => "encryptionInfo"}))
    UpdateSecurityRequest.type = Types::UpdateSecurityRequest
    UpdateSecurityResponse.add_member(:cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterArn", traits: {"smithy.api#jsonName" => "clusterArn"}))
    UpdateSecurityResponse.add_member(:cluster_operation_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterOperationArn", traits: {"smithy.api#jsonName" => "clusterOperationArn"}))
    UpdateSecurityResponse.type = Types::UpdateSecurityResponse
    UpdateStorageRequest.add_member(:cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateStorageRequest.add_member(:current_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CurrentVersion", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "currentVersion", "smithy.api#required" => {}}))
    UpdateStorageRequest.add_member(:provisioned_throughput, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisionedThroughput, name: "ProvisionedThroughput", traits: {"smithy.api#jsonName" => "provisionedThroughput"}))
    UpdateStorageRequest.add_member(:storage_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageMode, name: "StorageMode", traits: {"smithy.api#jsonName" => "storageMode"}))
    UpdateStorageRequest.add_member(:volume_size_gb, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "VolumeSizeGB", traits: {"smithy.api#jsonName" => "volumeSizeGB"}))
    UpdateStorageRequest.type = Types::UpdateStorageRequest
    UpdateStorageResponse.add_member(:cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterArn", traits: {"smithy.api#jsonName" => "clusterArn"}))
    UpdateStorageResponse.add_member(:cluster_operation_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterOperationArn", traits: {"smithy.api#jsonName" => "clusterOperationArn"}))
    UpdateStorageResponse.type = Types::UpdateStorageResponse
    UpdateTopicRequest.add_member(:cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateTopicRequest.add_member(:topic_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TopicName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateTopicRequest.add_member(:configs, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Configs", traits: {"smithy.api#jsonName" => "configs"}))
    UpdateTopicRequest.add_member(:partition_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "PartitionCount", traits: {"smithy.api#jsonName" => "partitionCount"}))
    UpdateTopicRequest.type = Types::UpdateTopicRequest
    UpdateTopicResponse.add_member(:topic_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TopicArn", traits: {"smithy.api#jsonName" => "topicArn"}))
    UpdateTopicResponse.add_member(:topic_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TopicName", traits: {"smithy.api#jsonName" => "topicName"}))
    UpdateTopicResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: TopicState, name: "Status", traits: {"smithy.api#jsonName" => "status"}))
    UpdateTopicResponse.type = Types::UpdateTopicResponse
    UserIdentity.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: UserIdentityType, name: "Type", traits: {"smithy.api#jsonName" => "type"}))
    UserIdentity.add_member(:principal_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PrincipalId", traits: {"smithy.api#jsonName" => "principalId"}))
    UserIdentity.type = Types::UserIdentity
    UserIdentityType.add_member(:awsaccount, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWSACCOUNT", traits: {"smithy.api#enumValue" => "AWSACCOUNT"}))
    UserIdentityType.add_member(:awsservice, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWSSERVICE", traits: {"smithy.api#enumValue" => "AWSSERVICE"}))
    ValueConverter.add_member(:byte_array, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BYTE_ARRAY", traits: {"smithy.api#enumValue" => "BYTE_ARRAY"}))
    ValueConverter.add_member(:json, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "JSON", traits: {"smithy.api#enumValue" => "JSON"}))
    ValueConverter.add_member(:json_schema_gsr, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "JSON_SCHEMA_GSR", traits: {"smithy.api#enumValue" => "JSON_SCHEMA_GSR"}))
    ValueConverter.add_member(:string, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STRING", traits: {"smithy.api#enumValue" => "STRING"}))
    VpcConfig.add_member(:subnet_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: ListofString, name: "SubnetIds", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "subnetIds", "smithy.api#required" => {}}))
    VpcConfig.add_member(:security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: ListofString, name: "SecurityGroupIds", traits: {"smithy.api#jsonName" => "securityGroupIds"}))
    VpcConfig.type = Types::VpcConfig
    VpcConnection.add_member(:vpc_connection_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "VpcConnectionArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "vpcConnectionArn", "smithy.api#required" => {}}))
    VpcConnection.add_member(:target_cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TargetClusterArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "targetClusterArn", "smithy.api#required" => {}}))
    VpcConnection.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestampiso8601, name: "CreationTime", traits: {"smithy.api#jsonName" => "creationTime"}))
    VpcConnection.add_member(:authentication, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Authentication", traits: {"smithy.api#jsonName" => "authentication"}))
    VpcConnection.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "VpcId", traits: {"smithy.api#jsonName" => "vpcId"}))
    VpcConnection.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcConnectionState, name: "State", traits: {"smithy.api#jsonName" => "state"}))
    VpcConnection.type = Types::VpcConnection
    VpcConnectionInfo.add_member(:vpc_connection_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "VpcConnectionArn", traits: {"smithy.api#jsonName" => "vpcConnectionArn"}))
    VpcConnectionInfo.add_member(:owner, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Owner", traits: {"smithy.api#jsonName" => "owner"}))
    VpcConnectionInfo.add_member(:user_identity, ::Smithy::Schema::Shapes::MemberShape.new(target: UserIdentity, name: "UserIdentity", traits: {"smithy.api#jsonName" => "userIdentity"}))
    VpcConnectionInfo.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestampiso8601, name: "CreationTime", traits: {"smithy.api#jsonName" => "creationTime"}))
    VpcConnectionInfo.type = Types::VpcConnectionInfo
    VpcConnectionInfoServerless.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestampiso8601, name: "CreationTime", traits: {"smithy.api#jsonName" => "creationTime"}))
    VpcConnectionInfoServerless.add_member(:owner, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Owner", traits: {"smithy.api#jsonName" => "owner"}))
    VpcConnectionInfoServerless.add_member(:user_identity, ::Smithy::Schema::Shapes::MemberShape.new(target: UserIdentity, name: "UserIdentity", traits: {"smithy.api#jsonName" => "userIdentity"}))
    VpcConnectionInfoServerless.add_member(:vpc_connection_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "VpcConnectionArn", traits: {"smithy.api#jsonName" => "vpcConnectionArn"}))
    VpcConnectionInfoServerless.type = Types::VpcConnectionInfoServerless
    VpcConnectionState.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    VpcConnectionState.add_member(:available, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AVAILABLE", traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    VpcConnectionState.add_member(:inactive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INACTIVE", traits: {"smithy.api#enumValue" => "INACTIVE"}))
    VpcConnectionState.add_member(:deactivating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEACTIVATING", traits: {"smithy.api#enumValue" => "DEACTIVATING"}))
    VpcConnectionState.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    VpcConnectionState.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    VpcConnectionState.add_member(:rejected, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REJECTED", traits: {"smithy.api#enumValue" => "REJECTED"}))
    VpcConnectionState.add_member(:rejecting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REJECTING", traits: {"smithy.api#enumValue" => "REJECTING"}))
    VpcConnectivity.add_member(:client_authentication, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcConnectivityClientAuthentication, name: "ClientAuthentication", traits: {"smithy.api#jsonName" => "clientAuthentication"}))
    VpcConnectivity.type = Types::VpcConnectivity
    VpcConnectivityClientAuthentication.add_member(:sasl, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcConnectivitySasl, name: "Sasl", traits: {"smithy.api#jsonName" => "sasl"}))
    VpcConnectivityClientAuthentication.add_member(:tls, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcConnectivityTls, name: "Tls", traits: {"smithy.api#jsonName" => "tls"}))
    VpcConnectivityClientAuthentication.type = Types::VpcConnectivityClientAuthentication
    VpcConnectivityIam.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Enabled", traits: {"smithy.api#jsonName" => "enabled"}))
    VpcConnectivityIam.type = Types::VpcConnectivityIam
    VpcConnectivitySasl.add_member(:scram, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcConnectivityScram, name: "Scram", traits: {"smithy.api#jsonName" => "scram"}))
    VpcConnectivitySasl.add_member(:iam, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcConnectivityIam, name: "Iam", traits: {"smithy.api#jsonName" => "iam"}))
    VpcConnectivitySasl.type = Types::VpcConnectivitySasl
    VpcConnectivityScram.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Enabled", traits: {"smithy.api#jsonName" => "enabled"}))
    VpcConnectivityScram.type = Types::VpcConnectivityScram
    VpcConnectivityTls.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Enabled", traits: {"smithy.api#jsonName" => "enabled"}))
    VpcConnectivityTls.type = Types::VpcConnectivityTls
    ZookeeperAccess.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Enabled", traits: {"smithy.api#jsonName" => "enabled"}))
    ZookeeperAccess.type = Types::ZookeeperAccess
    ZookeeperNodeInfo.add_member(:attached_eni_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AttachedENIId", traits: {"smithy.api#jsonName" => "attachedENIId"}))
    ZookeeperNodeInfo.add_member(:client_vpc_ip_address, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClientVpcIpAddress", traits: {"smithy.api#jsonName" => "clientVpcIpAddress"}))
    ZookeeperNodeInfo.add_member(:endpoints, ::Smithy::Schema::Shapes::MemberShape.new(target: ListofString, name: "Endpoints", traits: {"smithy.api#jsonName" => "endpoints"}))
    ZookeeperNodeInfo.add_member(:zookeeper_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "ZookeeperId", traits: {"smithy.api#jsonName" => "zookeeperId"}))
    ZookeeperNodeInfo.add_member(:zookeeper_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ZookeeperVersion", traits: {"smithy.api#jsonName" => "zookeeperVersion"}))
    ZookeeperNodeInfo.type = Types::ZookeeperNodeInfo
    Listofbrokerebsvolumeinfo.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BrokerEBSVolumeInfo, name: "member"))
    Listofchannelinfo.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelInfo, name: "member"))
    Listofclientvpcconnection.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientVpcConnection, name: "member"))
    Listofcluster.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Cluster, name: "member"))
    Listofclusterinfo.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterInfo, name: "member"))
    Listofclusteroperationinfo.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterOperationInfo, name: "member"))
    Listofclusteroperationstep.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterOperationStep, name: "member"))
    Listofclusteroperationv2summary.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterOperationV2Summary, name: "member"))
    Listofcompatiblekafkaversion.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CompatibleKafkaVersion, name: "member"))
    Listofconfiguration.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Configuration, name: "member"))
    Listofconfigurationrevision.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationRevision, name: "member"))
    Listofdestinationtable.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationTable, name: "member"))
    Listofkafkacluster.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: KafkaCluster, name: "member"))
    Listofkafkaclusterdescription.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: KafkaClusterDescription, name: "member"))
    Listofkafkaclustersummary.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: KafkaClusterSummary, name: "member"))
    Listofkafkaversion.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: KafkaVersion, name: "member"))
    Listofnodeinfo.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeInfo, name: "member"))
    Listofpartitionsource.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PartitionSource, name: "member"))
    Listofreplicationinfo.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationInfo, name: "member"))
    Listofreplicationinfodescription.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationInfoDescription, name: "member"))
    Listofreplicationinfosummary.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationInfoSummary, name: "member"))
    Listofreplicatorsummary.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicatorSummary, name: "member"))
    Listoftopicconfiguration.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TopicConfiguration, name: "member"))
    Listoftopicinfo.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TopicInfo, name: "member"))
    Listoftopicpartitioninfo.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TopicPartitionInfo, name: "member"))
    Listofunprocessedscramsecret.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: UnprocessedScramSecret, name: "member"))
    Listofvpcconfig.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcConfig, name: "member"))
    Listofvpcconnection.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcConnection, name: "member"))
    ListofDouble.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "member"))
    ListofInteger.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "member"))
    ListofString.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    ListofStringmax249.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringmax249, name: "member"))
    ListofStringmax256.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringmax256, name: "member"))
    MapofString.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "key"))
    MapofString.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "value"))

    Kafka = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.kafka#Kafka"
      service.name = "Kafka"
      service.version = "2018-11-14"
      service.traits = {"aws.api#service" => {"sdkId" => "Kafka", "arnNamespace" => "kafka", "cloudFormationName" => "MSK", "cloudTrailEventSource" => "kafka.amazonaws.com", "endpointPrefix" => "kafka"}, "aws.auth#sigv4" => {"name" => "kafka"}, "aws.protocols#restJson1" => {}, "smithy.api#auth" => ["aws.auth#sigv4"], "smithy.api#title" => "Managed Streaming for Kafka", "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"UseDualStack" => {"builtIn" => "AWS::UseDualStack", "required" => true, "default" => false, "documentation" => "When true, use the dual-stack endpoint. If the configured endpoint does not support dual-stack, dispatching the request MAY return an error.", "type" => "boolean"}, "UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}, "Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseDualStack"}, true]}, {"fn" => "stringEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "name"]}, "aws"]}, {"fn" => "stringEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "name"]}, "aws-cn"]}, {"fn" => "stringEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "name"]}, "aws-eusc"]}, {"fn" => "stringEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "name"]}, "aws-us-gov"]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsDualStack"]}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsFIPS"]}, true]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "error" => "Invalid Configuration: Dualstack and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://kafka-api.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://kafka-api-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://kafka.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://kafka-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS and DualStack are enabled, but this partition does not support one or both", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://kafka-fips.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS is enabled but this partition does not support FIPS", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://kafka.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "DualStack is enabled but this partition does not support DualStack", "type" => "error"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 20, "nodes" => "/////wAAAAH/////AAAAAAAAABMAAAADAAAAAQAAAAQF9eENAAAAAgAAAAUF9eENAAAAAwAAAAwAAAAGAAAABAAAAAcF9eEGAAAABQX14QQAAAAIAAAABgX14QQAAAAJAAAABwX14QQAAAAKAAAACAX14QQAAAALAAAACQX14QsF9eEMAAAABAAAAA8AAAANAAAACAX14QYAAAAOAAAACgX14QkF9eEKAAAABQX14QUAAAAQAAAACAX14QQAAAARAAAACQAAABIF9eEIAAAACgX14QcF9eEIAAAAAwX14QEAAAAUAAAABAX14QIF9eED"}}
      service.add_operation(:batch_associate_scram_secret, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafka#BatchAssociateScramSecret"
        operation.name = "BatchAssociateScramSecret"
        operation.input = BatchAssociateScramSecretRequest
        operation.output = BatchAssociateScramSecretResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/clusters/{ClusterArn}/scram-secrets", "code" => 200}}
      end)
      service.add_operation(:batch_disassociate_scram_secret, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafka#BatchDisassociateScramSecret"
        operation.name = "BatchDisassociateScramSecret"
        operation.input = BatchDisassociateScramSecretRequest
        operation.output = BatchDisassociateScramSecretResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/v1/clusters/{ClusterArn}/scram-secrets", "code" => 200}}
      end)
      service.add_operation(:create_channel, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafka#CreateChannel"
        operation.name = "CreateChannel"
        operation.input = CreateChannelRequest
        operation.output = CreateChannelResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/clusters/{ClusterArn}/channels", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafka#CreateCluster"
        operation.name = "CreateCluster"
        operation.input = CreateClusterRequest
        operation.output = CreateClusterResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/clusters", "code" => 200}}
      end)
      service.add_operation(:create_cluster_v2, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafka#CreateClusterV2"
        operation.name = "CreateClusterV2"
        operation.input = CreateClusterV2Request
        operation.output = CreateClusterV2Response
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/api/v2/clusters", "code" => 200}}
      end)
      service.add_operation(:create_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafka#CreateConfiguration"
        operation.name = "CreateConfiguration"
        operation.input = CreateConfigurationRequest
        operation.output = CreateConfigurationResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/configurations", "code" => 200}}
      end)
      service.add_operation(:create_replicator, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafka#CreateReplicator"
        operation.name = "CreateReplicator"
        operation.input = CreateReplicatorRequest
        operation.output = CreateReplicatorResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/replication/v1/replicators", "code" => 200}}
      end)
      service.add_operation(:create_topic, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafka#CreateTopic"
        operation.name = "CreateTopic"
        operation.input = CreateTopicRequest
        operation.output = CreateTopicResponse
        operation.errors << BadRequestException
        operation.errors << ClusterConnectivityException
        operation.errors << ConflictException
        operation.errors << ControllerMovedException
        operation.errors << ForbiddenException
        operation.errors << GroupSubscribedToTopicException
        operation.errors << InternalServerErrorException
        operation.errors << KafkaRequestException
        operation.errors << KafkaTimeoutException
        operation.errors << NotControllerException
        operation.errors << ReassignmentInProgressException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.errors << TopicExistsException
        operation.errors << UnauthorizedException
        operation.errors << UnknownTopicOrPartitionException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/clusters/{ClusterArn}/topics", "code" => 200}}
      end)
      service.add_operation(:create_vpc_connection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafka#CreateVpcConnection"
        operation.name = "CreateVpcConnection"
        operation.input = CreateVpcConnectionRequest
        operation.output = CreateVpcConnectionResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/vpc-connection", "code" => 200}}
      end)
      service.add_operation(:delete_channel, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafka#DeleteChannel"
        operation.name = "DeleteChannel"
        operation.input = DeleteChannelRequest
        operation.output = DeleteChannelResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/clusters/{ClusterArn}/channels/{ChannelArn}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafka#DeleteCluster"
        operation.name = "DeleteCluster"
        operation.input = DeleteClusterRequest
        operation.output = DeleteClusterResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/clusters/{ClusterArn}", "code" => 200}}
      end)
      service.add_operation(:delete_cluster_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafka#DeleteClusterPolicy"
        operation.name = "DeleteClusterPolicy"
        operation.input = DeleteClusterPolicyRequest
        operation.output = DeleteClusterPolicyResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/clusters/{ClusterArn}/policy", "code" => 200}}
      end)
      service.add_operation(:delete_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafka#DeleteConfiguration"
        operation.name = "DeleteConfiguration"
        operation.input = DeleteConfigurationRequest
        operation.output = DeleteConfigurationResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/configurations/{Arn}", "code" => 200}}
      end)
      service.add_operation(:delete_replicator, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafka#DeleteReplicator"
        operation.name = "DeleteReplicator"
        operation.input = DeleteReplicatorRequest
        operation.output = DeleteReplicatorResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/replication/v1/replicators/{ReplicatorArn}", "code" => 200}}
      end)
      service.add_operation(:delete_topic, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafka#DeleteTopic"
        operation.name = "DeleteTopic"
        operation.input = DeleteTopicRequest
        operation.output = DeleteTopicResponse
        operation.errors << BadRequestException
        operation.errors << ClusterConnectivityException
        operation.errors << ControllerMovedException
        operation.errors << ForbiddenException
        operation.errors << GroupSubscribedToTopicException
        operation.errors << InternalServerErrorException
        operation.errors << KafkaRequestException
        operation.errors << KafkaTimeoutException
        operation.errors << NotControllerException
        operation.errors << NotFoundException
        operation.errors << ReassignmentInProgressException
        operation.errors << UnknownTopicOrPartitionException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/clusters/{ClusterArn}/topics/{TopicName}", "code" => 200}}
      end)
      service.add_operation(:delete_vpc_connection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafka#DeleteVpcConnection"
        operation.name = "DeleteVpcConnection"
        operation.input = DeleteVpcConnectionRequest
        operation.output = DeleteVpcConnectionResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/vpc-connection/{Arn}", "code" => 200}}
      end)
      service.add_operation(:describe_channel, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafka#DescribeChannel"
        operation.name = "DescribeChannel"
        operation.input = DescribeChannelRequest
        operation.output = DescribeChannelResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/clusters/{ClusterArn}/channels/{ChannelArn}", "code" => 200}}
      end)
      service.add_operation(:describe_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafka#DescribeCluster"
        operation.name = "DescribeCluster"
        operation.input = DescribeClusterRequest
        operation.output = DescribeClusterResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/clusters/{ClusterArn}", "code" => 200}}
      end)
      service.add_operation(:describe_cluster_operation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafka#DescribeClusterOperation"
        operation.name = "DescribeClusterOperation"
        operation.input = DescribeClusterOperationRequest
        operation.output = DescribeClusterOperationResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/operations/{ClusterOperationArn}", "code" => 200}}
      end)
      service.add_operation(:describe_cluster_operation_v2, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafka#DescribeClusterOperationV2"
        operation.name = "DescribeClusterOperationV2"
        operation.input = DescribeClusterOperationV2Request
        operation.output = DescribeClusterOperationV2Response
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/api/v2/operations/{ClusterOperationArn}", "code" => 200}}
      end)
      service.add_operation(:describe_cluster_v2, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafka#DescribeClusterV2"
        operation.name = "DescribeClusterV2"
        operation.input = DescribeClusterV2Request
        operation.output = DescribeClusterV2Response
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/api/v2/clusters/{ClusterArn}", "code" => 200}}
      end)
      service.add_operation(:describe_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafka#DescribeConfiguration"
        operation.name = "DescribeConfiguration"
        operation.input = DescribeConfigurationRequest
        operation.output = DescribeConfigurationResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/configurations/{Arn}", "code" => 200}}
      end)
      service.add_operation(:describe_configuration_revision, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafka#DescribeConfigurationRevision"
        operation.name = "DescribeConfigurationRevision"
        operation.input = DescribeConfigurationRevisionRequest
        operation.output = DescribeConfigurationRevisionResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/configurations/{Arn}/revisions/{Revision}", "code" => 200}}
      end)
      service.add_operation(:describe_replicator, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafka#DescribeReplicator"
        operation.name = "DescribeReplicator"
        operation.input = DescribeReplicatorRequest
        operation.output = DescribeReplicatorResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/replication/v1/replicators/{ReplicatorArn}", "code" => 200}}
      end)
      service.add_operation(:describe_topic, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafka#DescribeTopic"
        operation.name = "DescribeTopic"
        operation.input = DescribeTopicRequest
        operation.output = DescribeTopicResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/clusters/{ClusterArn}/topics/{TopicName}", "code" => 200}}
      end)
      service.add_operation(:describe_topic_partitions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafka#DescribeTopicPartitions"
        operation.name = "DescribeTopicPartitions"
        operation.input = DescribeTopicPartitionsRequest
        operation.output = DescribeTopicPartitionsResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/clusters/{ClusterArn}/topics/{TopicName}/partitions", "code" => 200}}
        operation[:paginator] = Paginators::DescribeTopicPartitions.new
      end)
      service.add_operation(:describe_vpc_connection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafka#DescribeVpcConnection"
        operation.name = "DescribeVpcConnection"
        operation.input = DescribeVpcConnectionRequest
        operation.output = DescribeVpcConnectionResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/vpc-connection/{Arn}", "code" => 200}}
      end)
      service.add_operation(:get_bootstrap_brokers, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafka#GetBootstrapBrokers"
        operation.name = "GetBootstrapBrokers"
        operation.input = GetBootstrapBrokersRequest
        operation.output = GetBootstrapBrokersResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/clusters/{ClusterArn}/bootstrap-brokers", "code" => 200}}
      end)
      service.add_operation(:get_cluster_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafka#GetClusterPolicy"
        operation.name = "GetClusterPolicy"
        operation.input = GetClusterPolicyRequest
        operation.output = GetClusterPolicyResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/clusters/{ClusterArn}/policy", "code" => 200}}
      end)
      service.add_operation(:get_compatible_kafka_versions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafka#GetCompatibleKafkaVersions"
        operation.name = "GetCompatibleKafkaVersions"
        operation.input = GetCompatibleKafkaVersionsRequest
        operation.output = GetCompatibleKafkaVersionsResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/compatible-kafka-versions", "code" => 200}}
      end)
      service.add_operation(:list_channels, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafka#ListChannels"
        operation.name = "ListChannels"
        operation.input = ListChannelsRequest
        operation.output = ListChannelsResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/clusters/{ClusterArn}/channels", "code" => 200}}
      end)
      service.add_operation(:list_client_vpc_connections, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafka#ListClientVpcConnections"
        operation.name = "ListClientVpcConnections"
        operation.input = ListClientVpcConnectionsRequest
        operation.output = ListClientVpcConnectionsResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << ServiceUnavailableException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/clusters/{ClusterArn}/client-vpc-connections", "code" => 200}}
        operation[:paginator] = Paginators::ListClientVpcConnections.new
      end)
      service.add_operation(:list_cluster_operations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafka#ListClusterOperations"
        operation.name = "ListClusterOperations"
        operation.input = ListClusterOperationsRequest
        operation.output = ListClusterOperationsResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/clusters/{ClusterArn}/operations", "code" => 200}}
        operation[:paginator] = Paginators::ListClusterOperations.new
      end)
      service.add_operation(:list_cluster_operations_v2, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafka#ListClusterOperationsV2"
        operation.name = "ListClusterOperationsV2"
        operation.input = ListClusterOperationsV2Request
        operation.output = ListClusterOperationsV2Response
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/api/v2/clusters/{ClusterArn}/operations", "code" => 200}}
        operation[:paginator] = Paginators::ListClusterOperationsV2.new
      end)
      service.add_operation(:list_clusters, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafka#ListClusters"
        operation.name = "ListClusters"
        operation.input = ListClustersRequest
        operation.output = ListClustersResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/clusters", "code" => 200}}
        operation[:paginator] = Paginators::ListClusters.new
      end)
      service.add_operation(:list_clusters_v2, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafka#ListClustersV2"
        operation.name = "ListClustersV2"
        operation.input = ListClustersV2Request
        operation.output = ListClustersV2Response
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/api/v2/clusters", "code" => 200}}
        operation[:paginator] = Paginators::ListClustersV2.new
      end)
      service.add_operation(:list_configuration_revisions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafka#ListConfigurationRevisions"
        operation.name = "ListConfigurationRevisions"
        operation.input = ListConfigurationRevisionsRequest
        operation.output = ListConfigurationRevisionsResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/configurations/{Arn}/revisions", "code" => 200}}
        operation[:paginator] = Paginators::ListConfigurationRevisions.new
      end)
      service.add_operation(:list_configurations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafka#ListConfigurations"
        operation.name = "ListConfigurations"
        operation.input = ListConfigurationsRequest
        operation.output = ListConfigurationsResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << ServiceUnavailableException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/configurations", "code" => 200}}
        operation[:paginator] = Paginators::ListConfigurations.new
      end)
      service.add_operation(:list_kafka_versions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafka#ListKafkaVersions"
        operation.name = "ListKafkaVersions"
        operation.input = ListKafkaVersionsRequest
        operation.output = ListKafkaVersionsResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/kafka-versions", "code" => 200}}
        operation[:paginator] = Paginators::ListKafkaVersions.new
      end)
      service.add_operation(:list_nodes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafka#ListNodes"
        operation.name = "ListNodes"
        operation.input = ListNodesRequest
        operation.output = ListNodesResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/clusters/{ClusterArn}/nodes", "code" => 200}}
        operation[:paginator] = Paginators::ListNodes.new
      end)
      service.add_operation(:list_replicators, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafka#ListReplicators"
        operation.name = "ListReplicators"
        operation.input = ListReplicatorsRequest
        operation.output = ListReplicatorsResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/replication/v1/replicators", "code" => 200}}
        operation[:paginator] = Paginators::ListReplicators.new
      end)
      service.add_operation(:list_scram_secrets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafka#ListScramSecrets"
        operation.name = "ListScramSecrets"
        operation.input = ListScramSecretsRequest
        operation.output = ListScramSecretsResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/clusters/{ClusterArn}/scram-secrets", "code" => 200}}
        operation[:paginator] = Paginators::ListScramSecrets.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafka#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResponse
        operation.errors << BadRequestException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/tags/{ResourceArn}", "code" => 200}}
      end)
      service.add_operation(:list_topics, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafka#ListTopics"
        operation.name = "ListTopics"
        operation.input = ListTopicsRequest
        operation.output = ListTopicsResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << ServiceUnavailableException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/clusters/{ClusterArn}/topics", "code" => 200}}
        operation[:paginator] = Paginators::ListTopics.new
      end)
      service.add_operation(:list_vpc_connections, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafka#ListVpcConnections"
        operation.name = "ListVpcConnections"
        operation.input = ListVpcConnectionsRequest
        operation.output = ListVpcConnectionsResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << ServiceUnavailableException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/vpc-connections", "code" => 200}}
        operation[:paginator] = Paginators::ListVpcConnections.new
      end)
      service.add_operation(:put_cluster_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafka#PutClusterPolicy"
        operation.name = "PutClusterPolicy"
        operation.input = PutClusterPolicyRequest
        operation.output = PutClusterPolicyResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/clusters/{ClusterArn}/policy", "code" => 200}}
      end)
      service.add_operation(:reboot_broker, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafka#RebootBroker"
        operation.name = "RebootBroker"
        operation.input = RebootBrokerRequest
        operation.output = RebootBrokerResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/clusters/{ClusterArn}/reboot-broker", "code" => 200}}
      end)
      service.add_operation(:reject_client_vpc_connection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafka#RejectClientVpcConnection"
        operation.name = "RejectClientVpcConnection"
        operation.input = RejectClientVpcConnectionRequest
        operation.output = RejectClientVpcConnectionResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << ServiceUnavailableException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/clusters/{ClusterArn}/client-vpc-connection", "code" => 200}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafka#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequestException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/tags/{ResourceArn}", "code" => 204}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafka#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequestException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/tags/{ResourceArn}", "code" => 204}}
      end)
      service.add_operation(:update_broker_count, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafka#UpdateBrokerCount"
        operation.name = "UpdateBrokerCount"
        operation.input = UpdateBrokerCountRequest
        operation.output = UpdateBrokerCountResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << ServiceUnavailableException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/clusters/{ClusterArn}/nodes/count", "code" => 200}}
      end)
      service.add_operation(:update_broker_storage, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafka#UpdateBrokerStorage"
        operation.name = "UpdateBrokerStorage"
        operation.input = UpdateBrokerStorageRequest
        operation.output = UpdateBrokerStorageResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << ServiceUnavailableException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/clusters/{ClusterArn}/nodes/storage", "code" => 200}}
      end)
      service.add_operation(:update_broker_type, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafka#UpdateBrokerType"
        operation.name = "UpdateBrokerType"
        operation.input = UpdateBrokerTypeRequest
        operation.output = UpdateBrokerTypeResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/clusters/{ClusterArn}/nodes/type", "code" => 200}}
      end)
      service.add_operation(:update_channel, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafka#UpdateChannel"
        operation.name = "UpdateChannel"
        operation.input = UpdateChannelRequest
        operation.output = UpdateChannelResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/clusters/{ClusterArn}/channels/{ChannelArn}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_cluster_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafka#UpdateClusterConfiguration"
        operation.name = "UpdateClusterConfiguration"
        operation.input = UpdateClusterConfigurationRequest
        operation.output = UpdateClusterConfigurationResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/clusters/{ClusterArn}/configuration", "code" => 200}}
      end)
      service.add_operation(:update_cluster_kafka_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafka#UpdateClusterKafkaVersion"
        operation.name = "UpdateClusterKafkaVersion"
        operation.input = UpdateClusterKafkaVersionRequest
        operation.output = UpdateClusterKafkaVersionResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/clusters/{ClusterArn}/version", "code" => 200}}
      end)
      service.add_operation(:update_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafka#UpdateConfiguration"
        operation.name = "UpdateConfiguration"
        operation.input = UpdateConfigurationRequest
        operation.output = UpdateConfigurationResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/configurations/{Arn}", "code" => 200}}
      end)
      service.add_operation(:update_connectivity, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafka#UpdateConnectivity"
        operation.name = "UpdateConnectivity"
        operation.input = UpdateConnectivityRequest
        operation.output = UpdateConnectivityResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/clusters/{ClusterArn}/connectivity", "code" => 200}}
      end)
      service.add_operation(:update_monitoring, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafka#UpdateMonitoring"
        operation.name = "UpdateMonitoring"
        operation.input = UpdateMonitoringRequest
        operation.output = UpdateMonitoringResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << ServiceUnavailableException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/clusters/{ClusterArn}/monitoring", "code" => 200}}
      end)
      service.add_operation(:update_rebalancing, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafka#UpdateRebalancing"
        operation.name = "UpdateRebalancing"
        operation.input = UpdateRebalancingRequest
        operation.output = UpdateRebalancingResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/clusters/{ClusterArn}/rebalancing", "code" => 200}}
      end)
      service.add_operation(:update_replication_info, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafka#UpdateReplicationInfo"
        operation.name = "UpdateReplicationInfo"
        operation.input = UpdateReplicationInfoRequest
        operation.output = UpdateReplicationInfoResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/replication/v1/replicators/{ReplicatorArn}/replication-info", "code" => 200}}
      end)
      service.add_operation(:update_security, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafka#UpdateSecurity"
        operation.name = "UpdateSecurity"
        operation.input = UpdateSecurityRequest
        operation.output = UpdateSecurityResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/v1/clusters/{ClusterArn}/security", "code" => 200}}
      end)
      service.add_operation(:update_storage, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafka#UpdateStorage"
        operation.name = "UpdateStorage"
        operation.input = UpdateStorageRequest
        operation.output = UpdateStorageResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/clusters/{ClusterArn}/storage", "code" => 200}}
      end)
      service.add_operation(:update_topic, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafka#UpdateTopic"
        operation.name = "UpdateTopic"
        operation.input = UpdateTopicRequest
        operation.output = UpdateTopicResponse
        operation.errors << BadRequestException
        operation.errors << ClusterConnectivityException
        operation.errors << ControllerMovedException
        operation.errors << ForbiddenException
        operation.errors << GroupSubscribedToTopicException
        operation.errors << InternalServerErrorException
        operation.errors << KafkaRequestException
        operation.errors << KafkaTimeoutException
        operation.errors << NotControllerException
        operation.errors << NotFoundException
        operation.errors << ReassignmentInProgressException
        operation.errors << ServiceUnavailableException
        operation.errors << UnauthorizedException
        operation.errors << UnknownTopicOrPartitionException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/clusters/{ClusterArn}/topics/{TopicName}", "code" => 200}}
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
