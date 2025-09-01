# frozen_string_literal: true

# This is generated code!

module Aws::Kafka
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AmazonMskCluster = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#AmazonMskCluster', name: 'AmazonMskCluster')
    BadRequestException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#BadRequestException', name: 'BadRequestException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    BatchAssociateScramSecretRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#BatchAssociateScramSecretRequest', name: 'BatchAssociateScramSecretRequest')
    BatchAssociateScramSecretResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#BatchAssociateScramSecretResponse', name: 'BatchAssociateScramSecretResponse')
    BatchDisassociateScramSecretRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#BatchDisassociateScramSecretRequest', name: 'BatchDisassociateScramSecretRequest')
    BatchDisassociateScramSecretResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#BatchDisassociateScramSecretResponse', name: 'BatchDisassociateScramSecretResponse')
    BrokerAZDistribution = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.kafka#BrokerAZDistribution', name: 'BrokerAZDistribution')
    BrokerCountUpdateInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#BrokerCountUpdateInfo', name: 'BrokerCountUpdateInfo')
    BrokerEBSVolumeInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#BrokerEBSVolumeInfo', name: 'BrokerEBSVolumeInfo')
    BrokerLogs = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#BrokerLogs', name: 'BrokerLogs')
    BrokerNodeGroupInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#BrokerNodeGroupInfo', name: 'BrokerNodeGroupInfo')
    BrokerNodeInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#BrokerNodeInfo', name: 'BrokerNodeInfo')
    BrokerSoftwareInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#BrokerSoftwareInfo', name: 'BrokerSoftwareInfo')
    ClientAuthentication = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#ClientAuthentication', name: 'ClientAuthentication')
    ClientBroker = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.kafka#ClientBroker', name: 'ClientBroker')
    ClientVpcConnection = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#ClientVpcConnection', name: 'ClientVpcConnection')
    CloudWatchLogs = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#CloudWatchLogs', name: 'CloudWatchLogs')
    Cluster = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#Cluster', name: 'Cluster')
    ClusterInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#ClusterInfo', name: 'ClusterInfo')
    ClusterOperationInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#ClusterOperationInfo', name: 'ClusterOperationInfo')
    ClusterOperationStep = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#ClusterOperationStep', name: 'ClusterOperationStep')
    ClusterOperationStepInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#ClusterOperationStepInfo', name: 'ClusterOperationStepInfo')
    ClusterOperationV2 = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#ClusterOperationV2', name: 'ClusterOperationV2')
    ClusterOperationV2Provisioned = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#ClusterOperationV2Provisioned', name: 'ClusterOperationV2Provisioned')
    ClusterOperationV2Serverless = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#ClusterOperationV2Serverless', name: 'ClusterOperationV2Serverless')
    ClusterOperationV2Summary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#ClusterOperationV2Summary', name: 'ClusterOperationV2Summary')
    ClusterState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.kafka#ClusterState', name: 'ClusterState')
    ClusterType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.kafka#ClusterType', name: 'ClusterType')
    CompatibleKafkaVersion = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#CompatibleKafkaVersion', name: 'CompatibleKafkaVersion')
    Configuration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#Configuration', name: 'Configuration')
    ConfigurationInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#ConfigurationInfo', name: 'ConfigurationInfo')
    ConfigurationRevision = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#ConfigurationRevision', name: 'ConfigurationRevision')
    ConfigurationState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.kafka#ConfigurationState', name: 'ConfigurationState')
    ConflictException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ConnectivityInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#ConnectivityInfo', name: 'ConnectivityInfo')
    ConsumerGroupReplication = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#ConsumerGroupReplication', name: 'ConsumerGroupReplication')
    ConsumerGroupReplicationUpdate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#ConsumerGroupReplicationUpdate', name: 'ConsumerGroupReplicationUpdate')
    ControllerNodeInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#ControllerNodeInfo', name: 'ControllerNodeInfo')
    CreateClusterRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#CreateClusterRequest', name: 'CreateClusterRequest')
    CreateClusterResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#CreateClusterResponse', name: 'CreateClusterResponse')
    CreateClusterV2Request = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#CreateClusterV2Request', name: 'CreateClusterV2Request')
    CreateClusterV2Response = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#CreateClusterV2Response', name: 'CreateClusterV2Response')
    CreateConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#CreateConfigurationRequest', name: 'CreateConfigurationRequest')
    CreateConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#CreateConfigurationResponse', name: 'CreateConfigurationResponse')
    CreateReplicatorRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#CreateReplicatorRequest', name: 'CreateReplicatorRequest')
    CreateReplicatorResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#CreateReplicatorResponse', name: 'CreateReplicatorResponse')
    CreateVpcConnectionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#CreateVpcConnectionRequest', name: 'CreateVpcConnectionRequest')
    CreateVpcConnectionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#CreateVpcConnectionResponse', name: 'CreateVpcConnectionResponse')
    CustomerActionStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.kafka#CustomerActionStatus', name: 'CustomerActionStatus')
    DeleteClusterPolicyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#DeleteClusterPolicyRequest', name: 'DeleteClusterPolicyRequest')
    DeleteClusterPolicyResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#DeleteClusterPolicyResponse', name: 'DeleteClusterPolicyResponse')
    DeleteClusterRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#DeleteClusterRequest', name: 'DeleteClusterRequest')
    DeleteClusterResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#DeleteClusterResponse', name: 'DeleteClusterResponse')
    DeleteConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#DeleteConfigurationRequest', name: 'DeleteConfigurationRequest')
    DeleteConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#DeleteConfigurationResponse', name: 'DeleteConfigurationResponse')
    DeleteReplicatorRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#DeleteReplicatorRequest', name: 'DeleteReplicatorRequest')
    DeleteReplicatorResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#DeleteReplicatorResponse', name: 'DeleteReplicatorResponse')
    DeleteVpcConnectionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#DeleteVpcConnectionRequest', name: 'DeleteVpcConnectionRequest')
    DeleteVpcConnectionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#DeleteVpcConnectionResponse', name: 'DeleteVpcConnectionResponse')
    DescribeClusterOperationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#DescribeClusterOperationRequest', name: 'DescribeClusterOperationRequest')
    DescribeClusterOperationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#DescribeClusterOperationResponse', name: 'DescribeClusterOperationResponse')
    DescribeClusterOperationV2Request = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#DescribeClusterOperationV2Request', name: 'DescribeClusterOperationV2Request')
    DescribeClusterOperationV2Response = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#DescribeClusterOperationV2Response', name: 'DescribeClusterOperationV2Response')
    DescribeClusterRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#DescribeClusterRequest', name: 'DescribeClusterRequest')
    DescribeClusterResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#DescribeClusterResponse', name: 'DescribeClusterResponse')
    DescribeClusterV2Request = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#DescribeClusterV2Request', name: 'DescribeClusterV2Request')
    DescribeClusterV2Response = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#DescribeClusterV2Response', name: 'DescribeClusterV2Response')
    DescribeConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#DescribeConfigurationRequest', name: 'DescribeConfigurationRequest')
    DescribeConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#DescribeConfigurationResponse', name: 'DescribeConfigurationResponse')
    DescribeConfigurationRevisionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#DescribeConfigurationRevisionRequest', name: 'DescribeConfigurationRevisionRequest')
    DescribeConfigurationRevisionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#DescribeConfigurationRevisionResponse', name: 'DescribeConfigurationRevisionResponse')
    DescribeReplicatorRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#DescribeReplicatorRequest', name: 'DescribeReplicatorRequest')
    DescribeReplicatorResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#DescribeReplicatorResponse', name: 'DescribeReplicatorResponse')
    DescribeVpcConnectionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#DescribeVpcConnectionRequest', name: 'DescribeVpcConnectionRequest')
    DescribeVpcConnectionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#DescribeVpcConnectionResponse', name: 'DescribeVpcConnectionResponse')
    EBSStorageInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#EBSStorageInfo', name: 'EBSStorageInfo')
    EncryptionAtRest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#EncryptionAtRest', name: 'EncryptionAtRest')
    EncryptionInTransit = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#EncryptionInTransit', name: 'EncryptionInTransit')
    EncryptionInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#EncryptionInfo', name: 'EncryptionInfo')
    EnhancedMonitoring = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.kafka#EnhancedMonitoring', name: 'EnhancedMonitoring')
    ErrorInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#ErrorInfo', name: 'ErrorInfo')
    Firehose = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#Firehose', name: 'Firehose')
    ForbiddenException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#ForbiddenException', name: 'ForbiddenException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    GetBootstrapBrokersRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#GetBootstrapBrokersRequest', name: 'GetBootstrapBrokersRequest')
    GetBootstrapBrokersResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#GetBootstrapBrokersResponse', name: 'GetBootstrapBrokersResponse')
    GetClusterPolicyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#GetClusterPolicyRequest', name: 'GetClusterPolicyRequest')
    GetClusterPolicyResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#GetClusterPolicyResponse', name: 'GetClusterPolicyResponse')
    GetCompatibleKafkaVersionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#GetCompatibleKafkaVersionsRequest', name: 'GetCompatibleKafkaVersionsRequest')
    GetCompatibleKafkaVersionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#GetCompatibleKafkaVersionsResponse', name: 'GetCompatibleKafkaVersionsResponse')
    Iam = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#Iam', name: 'Iam')
    InternalServerErrorException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#InternalServerErrorException', name: 'InternalServerErrorException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    JmxExporter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#JmxExporter', name: 'JmxExporter')
    JmxExporterInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#JmxExporterInfo', name: 'JmxExporterInfo')
    KafkaCluster = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#KafkaCluster', name: 'KafkaCluster')
    KafkaClusterClientVpcConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#KafkaClusterClientVpcConfig', name: 'KafkaClusterClientVpcConfig')
    KafkaClusterDescription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#KafkaClusterDescription', name: 'KafkaClusterDescription')
    KafkaClusterSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#KafkaClusterSummary', name: 'KafkaClusterSummary')
    KafkaVersion = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#KafkaVersion', name: 'KafkaVersion')
    KafkaVersionStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.kafka#KafkaVersionStatus', name: 'KafkaVersionStatus')
    ListClientVpcConnectionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#ListClientVpcConnectionsRequest', name: 'ListClientVpcConnectionsRequest')
    ListClientVpcConnectionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#ListClientVpcConnectionsResponse', name: 'ListClientVpcConnectionsResponse')
    ListClusterOperationsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#ListClusterOperationsRequest', name: 'ListClusterOperationsRequest')
    ListClusterOperationsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#ListClusterOperationsResponse', name: 'ListClusterOperationsResponse')
    ListClusterOperationsV2Request = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#ListClusterOperationsV2Request', name: 'ListClusterOperationsV2Request')
    ListClusterOperationsV2Response = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#ListClusterOperationsV2Response', name: 'ListClusterOperationsV2Response')
    ListClustersRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#ListClustersRequest', name: 'ListClustersRequest')
    ListClustersResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#ListClustersResponse', name: 'ListClustersResponse')
    ListClustersV2Request = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#ListClustersV2Request', name: 'ListClustersV2Request')
    ListClustersV2Response = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#ListClustersV2Response', name: 'ListClustersV2Response')
    ListConfigurationRevisionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#ListConfigurationRevisionsRequest', name: 'ListConfigurationRevisionsRequest')
    ListConfigurationRevisionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#ListConfigurationRevisionsResponse', name: 'ListConfigurationRevisionsResponse')
    ListConfigurationsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#ListConfigurationsRequest', name: 'ListConfigurationsRequest')
    ListConfigurationsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#ListConfigurationsResponse', name: 'ListConfigurationsResponse')
    ListKafkaVersionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#ListKafkaVersionsRequest', name: 'ListKafkaVersionsRequest')
    ListKafkaVersionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#ListKafkaVersionsResponse', name: 'ListKafkaVersionsResponse')
    ListNodesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#ListNodesRequest', name: 'ListNodesRequest')
    ListNodesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#ListNodesResponse', name: 'ListNodesResponse')
    ListReplicatorsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#ListReplicatorsRequest', name: 'ListReplicatorsRequest')
    ListReplicatorsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#ListReplicatorsResponse', name: 'ListReplicatorsResponse')
    ListScramSecretsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#ListScramSecretsRequest', name: 'ListScramSecretsRequest')
    ListScramSecretsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#ListScramSecretsResponse', name: 'ListScramSecretsResponse')
    ListTagsForResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    ListVpcConnectionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#ListVpcConnectionsRequest', name: 'ListVpcConnectionsRequest')
    ListVpcConnectionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#ListVpcConnectionsResponse', name: 'ListVpcConnectionsResponse')
    LoggingInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#LoggingInfo', name: 'LoggingInfo')
    MaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.kafka#MaxResults', name: 'MaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MutableClusterInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#MutableClusterInfo', name: 'MutableClusterInfo')
    NodeExporter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#NodeExporter', name: 'NodeExporter')
    NodeExporterInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#NodeExporterInfo', name: 'NodeExporterInfo')
    NodeInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#NodeInfo', name: 'NodeInfo')
    NodeType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.kafka#NodeType', name: 'NodeType')
    NotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#NotFoundException', name: 'NotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    OpenMonitoring = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#OpenMonitoring', name: 'OpenMonitoring')
    OpenMonitoringInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#OpenMonitoringInfo', name: 'OpenMonitoringInfo')
    Prometheus = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#Prometheus', name: 'Prometheus')
    PrometheusInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#PrometheusInfo', name: 'PrometheusInfo')
    Provisioned = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#Provisioned', name: 'Provisioned')
    ProvisionedRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#ProvisionedRequest', name: 'ProvisionedRequest')
    ProvisionedThroughput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#ProvisionedThroughput', name: 'ProvisionedThroughput')
    PublicAccess = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#PublicAccess', name: 'PublicAccess')
    PutClusterPolicyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#PutClusterPolicyRequest', name: 'PutClusterPolicyRequest')
    PutClusterPolicyResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#PutClusterPolicyResponse', name: 'PutClusterPolicyResponse')
    RebootBrokerRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#RebootBrokerRequest', name: 'RebootBrokerRequest')
    RebootBrokerResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#RebootBrokerResponse', name: 'RebootBrokerResponse')
    RejectClientVpcConnectionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#RejectClientVpcConnectionRequest', name: 'RejectClientVpcConnectionRequest')
    RejectClientVpcConnectionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#RejectClientVpcConnectionResponse', name: 'RejectClientVpcConnectionResponse')
    ReplicationInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#ReplicationInfo', name: 'ReplicationInfo')
    ReplicationInfoDescription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#ReplicationInfoDescription', name: 'ReplicationInfoDescription')
    ReplicationInfoSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#ReplicationInfoSummary', name: 'ReplicationInfoSummary')
    ReplicationStartingPosition = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#ReplicationStartingPosition', name: 'ReplicationStartingPosition')
    ReplicationStartingPositionType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.kafka#ReplicationStartingPositionType', name: 'ReplicationStartingPositionType')
    ReplicationStateInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#ReplicationStateInfo', name: 'ReplicationStateInfo')
    ReplicationTopicNameConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#ReplicationTopicNameConfiguration', name: 'ReplicationTopicNameConfiguration')
    ReplicationTopicNameConfigurationType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.kafka#ReplicationTopicNameConfigurationType', name: 'ReplicationTopicNameConfigurationType')
    ReplicatorState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.kafka#ReplicatorState', name: 'ReplicatorState')
    ReplicatorSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#ReplicatorSummary', name: 'ReplicatorSummary')
    S3 = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#S3', name: 'S3')
    Sasl = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#Sasl', name: 'Sasl')
    Scram = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#Scram', name: 'Scram')
    Serverless = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#Serverless', name: 'Serverless')
    ServerlessClientAuthentication = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#ServerlessClientAuthentication', name: 'ServerlessClientAuthentication')
    ServerlessRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#ServerlessRequest', name: 'ServerlessRequest')
    ServerlessSasl = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#ServerlessSasl', name: 'ServerlessSasl')
    ServiceUnavailableException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#ServiceUnavailableException', name: 'ServiceUnavailableException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 503})
    StateInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#StateInfo', name: 'StateInfo')
    StorageInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#StorageInfo', name: 'StorageInfo')
    StorageMode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.kafka#StorageMode', name: 'StorageMode')
    TagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#TagResourceRequest', name: 'TagResourceRequest')
    TargetCompressionType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.kafka#TargetCompressionType', name: 'TargetCompressionType')
    Tls = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#Tls', name: 'Tls')
    TooManyRequestsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#TooManyRequestsException', name: 'TooManyRequestsException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    TopicReplication = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#TopicReplication', name: 'TopicReplication')
    TopicReplicationUpdate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#TopicReplicationUpdate', name: 'TopicReplicationUpdate')
    Unauthenticated = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#Unauthenticated', name: 'Unauthenticated')
    UnauthorizedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#UnauthorizedException', name: 'UnauthorizedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 401})
    UnprocessedScramSecret = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#UnprocessedScramSecret', name: 'UnprocessedScramSecret')
    UntagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#UntagResourceRequest', name: 'UntagResourceRequest')
    UpdateBrokerCountRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#UpdateBrokerCountRequest', name: 'UpdateBrokerCountRequest')
    UpdateBrokerCountResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#UpdateBrokerCountResponse', name: 'UpdateBrokerCountResponse')
    UpdateBrokerStorageRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#UpdateBrokerStorageRequest', name: 'UpdateBrokerStorageRequest')
    UpdateBrokerStorageResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#UpdateBrokerStorageResponse', name: 'UpdateBrokerStorageResponse')
    UpdateBrokerTypeRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#UpdateBrokerTypeRequest', name: 'UpdateBrokerTypeRequest')
    UpdateBrokerTypeResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#UpdateBrokerTypeResponse', name: 'UpdateBrokerTypeResponse')
    UpdateClusterConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#UpdateClusterConfigurationRequest', name: 'UpdateClusterConfigurationRequest')
    UpdateClusterConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#UpdateClusterConfigurationResponse', name: 'UpdateClusterConfigurationResponse')
    UpdateClusterKafkaVersionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#UpdateClusterKafkaVersionRequest', name: 'UpdateClusterKafkaVersionRequest')
    UpdateClusterKafkaVersionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#UpdateClusterKafkaVersionResponse', name: 'UpdateClusterKafkaVersionResponse')
    UpdateConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#UpdateConfigurationRequest', name: 'UpdateConfigurationRequest')
    UpdateConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#UpdateConfigurationResponse', name: 'UpdateConfigurationResponse')
    UpdateConnectivityRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#UpdateConnectivityRequest', name: 'UpdateConnectivityRequest')
    UpdateConnectivityResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#UpdateConnectivityResponse', name: 'UpdateConnectivityResponse')
    UpdateMonitoringRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#UpdateMonitoringRequest', name: 'UpdateMonitoringRequest')
    UpdateMonitoringResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#UpdateMonitoringResponse', name: 'UpdateMonitoringResponse')
    UpdateReplicationInfoRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#UpdateReplicationInfoRequest', name: 'UpdateReplicationInfoRequest')
    UpdateReplicationInfoResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#UpdateReplicationInfoResponse', name: 'UpdateReplicationInfoResponse')
    UpdateSecurityRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#UpdateSecurityRequest', name: 'UpdateSecurityRequest')
    UpdateSecurityResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#UpdateSecurityResponse', name: 'UpdateSecurityResponse')
    UpdateStorageRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#UpdateStorageRequest', name: 'UpdateStorageRequest')
    UpdateStorageResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#UpdateStorageResponse', name: 'UpdateStorageResponse')
    UserIdentity = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#UserIdentity', name: 'UserIdentity')
    UserIdentityType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.kafka#UserIdentityType', name: 'UserIdentityType')
    VpcConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#VpcConfig', name: 'VpcConfig')
    VpcConnection = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#VpcConnection', name: 'VpcConnection')
    VpcConnectionInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#VpcConnectionInfo', name: 'VpcConnectionInfo')
    VpcConnectionInfoServerless = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#VpcConnectionInfoServerless', name: 'VpcConnectionInfoServerless')
    VpcConnectionState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.kafka#VpcConnectionState', name: 'VpcConnectionState')
    VpcConnectivity = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#VpcConnectivity', name: 'VpcConnectivity')
    VpcConnectivityClientAuthentication = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#VpcConnectivityClientAuthentication', name: 'VpcConnectivityClientAuthentication')
    VpcConnectivityIam = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#VpcConnectivityIam', name: 'VpcConnectivityIam')
    VpcConnectivitySasl = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#VpcConnectivitySasl', name: 'VpcConnectivitySasl')
    VpcConnectivityScram = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#VpcConnectivityScram', name: 'VpcConnectivityScram')
    VpcConnectivityTls = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#VpcConnectivityTls', name: 'VpcConnectivityTls')
    ZookeeperNodeInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.kafka#ZookeeperNodeInfo', name: 'ZookeeperNodeInfo')
    Blob = Smithy::Schema::Shapes::BlobShape.new(id: 'com.amazonaws.kafka#__blob', name: 'Blob')
    Boolean = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.kafka#__boolean', name: 'Boolean')
    Double = Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.kafka#__double', name: 'Double')
    Integer = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.kafka#__integer', name: 'Integer')
    Integermin1max15 = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.kafka#__integerMin1Max15', name: 'Integermin1max15', traits: {"smithy.api#range" => {"min" => 1, "max" => 15}})
    Integermin1max16384 = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.kafka#__integerMin1Max16384', name: 'Integermin1max16384', traits: {"smithy.api#range" => {"min" => 1, "max" => 16384}})
    Listofbrokerebsvolumeinfo = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kafka#__listOfBrokerEBSVolumeInfo', name: 'Listofbrokerebsvolumeinfo')
    Listofclientvpcconnection = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kafka#__listOfClientVpcConnection', name: 'Listofclientvpcconnection')
    Listofcluster = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kafka#__listOfCluster', name: 'Listofcluster')
    Listofclusterinfo = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kafka#__listOfClusterInfo', name: 'Listofclusterinfo')
    Listofclusteroperationinfo = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kafka#__listOfClusterOperationInfo', name: 'Listofclusteroperationinfo')
    Listofclusteroperationstep = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kafka#__listOfClusterOperationStep', name: 'Listofclusteroperationstep')
    Listofclusteroperationv2summary = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kafka#__listOfClusterOperationV2Summary', name: 'Listofclusteroperationv2summary')
    Listofcompatiblekafkaversion = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kafka#__listOfCompatibleKafkaVersion', name: 'Listofcompatiblekafkaversion')
    Listofconfiguration = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kafka#__listOfConfiguration', name: 'Listofconfiguration')
    Listofconfigurationrevision = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kafka#__listOfConfigurationRevision', name: 'Listofconfigurationrevision')
    Listofkafkacluster = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kafka#__listOfKafkaCluster', name: 'Listofkafkacluster')
    Listofkafkaclusterdescription = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kafka#__listOfKafkaClusterDescription', name: 'Listofkafkaclusterdescription')
    Listofkafkaclustersummary = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kafka#__listOfKafkaClusterSummary', name: 'Listofkafkaclustersummary')
    Listofkafkaversion = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kafka#__listOfKafkaVersion', name: 'Listofkafkaversion')
    Listofnodeinfo = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kafka#__listOfNodeInfo', name: 'Listofnodeinfo')
    Listofreplicationinfo = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kafka#__listOfReplicationInfo', name: 'Listofreplicationinfo')
    Listofreplicationinfodescription = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kafka#__listOfReplicationInfoDescription', name: 'Listofreplicationinfodescription')
    Listofreplicationinfosummary = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kafka#__listOfReplicationInfoSummary', name: 'Listofreplicationinfosummary')
    Listofreplicatorsummary = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kafka#__listOfReplicatorSummary', name: 'Listofreplicatorsummary')
    Listofunprocessedscramsecret = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kafka#__listOfUnprocessedScramSecret', name: 'Listofunprocessedscramsecret')
    Listofvpcconfig = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kafka#__listOfVpcConfig', name: 'Listofvpcconfig')
    Listofvpcconnection = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kafka#__listOfVpcConnection', name: 'Listofvpcconnection')
    ListofDouble = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kafka#__listOf__double', name: 'ListofDouble')
    ListofString = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kafka#__listOf__string', name: 'ListofString')
    ListofStringmax249 = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kafka#__listOf__stringMax249', name: 'ListofStringmax249')
    ListofStringmax256 = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.kafka#__listOf__stringMax256', name: 'ListofStringmax256')
    Long = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.kafka#__long', name: 'Long')
    MapofString = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.kafka#__mapOf__string', name: 'MapofString')
    String = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kafka#__string', name: 'String')
    Stringmax1024 = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kafka#__stringMax1024', name: 'Stringmax1024', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    Stringmax249 = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kafka#__stringMax249', name: 'Stringmax249', traits: {"smithy.api#length" => {"min" => 0, "max" => 249}})
    Stringmax256 = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kafka#__stringMax256', name: 'Stringmax256', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    Stringmin1max128 = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kafka#__stringMin1Max128', name: 'Stringmin1max128', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    Stringmin1max128pattern09azaz09azaz0 = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kafka#__stringMin1Max128Pattern09AZaZ09AZaZ0', name: 'Stringmin1max128pattern09azaz09azaz0', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[0-9A-Za-z][0-9A-Za-z-]{0,}$"})
    Stringmin1max64 = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kafka#__stringMin1Max64', name: 'Stringmin1max64', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    Stringmin5max32 = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.kafka#__stringMin5Max32', name: 'Stringmin5max32', traits: {"smithy.api#length" => {"min" => 5, "max" => 32}})
    Timestampiso8601 = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.kafka#__timestampIso8601', name: 'Timestampiso8601', traits: {"smithy.api#timestampFormat" => "date-time"})

    AmazonMskCluster.add_member(:msk_cluster_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MskClusterArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of an Amazon MSK cluster.</p>", "smithy.api#jsonName" => "mskClusterArn", "smithy.api#required" => {}}))
    AmazonMskCluster.type = Types::AmazonMskCluster
    BadRequestException.add_member(:invalid_parameter, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'InvalidParameter', traits: {"smithy.api#documentation" => "<p>The parameter that caused the error.</p>", "smithy.api#jsonName" => "invalidParameter"}))
    BadRequestException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>The description of the error.</p>", "smithy.api#jsonName" => "message"}))
    BadRequestException.type = Types::BadRequestException
    BatchAssociateScramSecretRequest.add_member(:cluster_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the cluster to be updated.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    BatchAssociateScramSecretRequest.add_member(:secret_arn_list, Smithy::Schema::Shapes::ShapeRef.new(shape: ListofString, location_name: 'SecretArnList', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>List of AWS Secrets Manager secret ARNs.</p>", "smithy.api#jsonName" => "secretArnList", "smithy.api#required" => {}}))
    BatchAssociateScramSecretRequest.type = Types::BatchAssociateScramSecretRequest
    BatchAssociateScramSecretResponse.add_member(:cluster_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the cluster.</p>", "smithy.api#jsonName" => "clusterArn"}))
    BatchAssociateScramSecretResponse.add_member(:unprocessed_scram_secrets, Smithy::Schema::Shapes::ShapeRef.new(shape: Listofunprocessedscramsecret, location_name: 'UnprocessedScramSecrets', traits: {"smithy.api#documentation" => "<p>List of errors when associating secrets to cluster.</p>", "smithy.api#jsonName" => "unprocessedScramSecrets"}))
    BatchAssociateScramSecretResponse.type = Types::BatchAssociateScramSecretResponse
    BatchDisassociateScramSecretRequest.add_member(:cluster_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the cluster to be updated.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    BatchDisassociateScramSecretRequest.add_member(:secret_arn_list, Smithy::Schema::Shapes::ShapeRef.new(shape: ListofString, location_name: 'SecretArnList', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>List of AWS Secrets Manager secret ARNs.</p>", "smithy.api#jsonName" => "secretArnList", "smithy.api#required" => {}}))
    BatchDisassociateScramSecretRequest.type = Types::BatchDisassociateScramSecretRequest
    BatchDisassociateScramSecretResponse.add_member(:cluster_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the cluster.</p>", "smithy.api#jsonName" => "clusterArn"}))
    BatchDisassociateScramSecretResponse.add_member(:unprocessed_scram_secrets, Smithy::Schema::Shapes::ShapeRef.new(shape: Listofunprocessedscramsecret, location_name: 'UnprocessedScramSecrets', traits: {"smithy.api#documentation" => "<p>List of errors when disassociating secrets to cluster.</p>", "smithy.api#jsonName" => "unprocessedScramSecrets"}))
    BatchDisassociateScramSecretResponse.type = Types::BatchDisassociateScramSecretResponse
    BrokerAZDistribution.add_member(:default, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEFAULT', traits: {"smithy.api#enumValue" => "DEFAULT"}))
    BrokerCountUpdateInfo.add_member(:created_broker_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: ListofDouble, location_name: 'CreatedBrokerIds', traits: {"smithy.api#documentation" => "<p>Kafka Broker IDs of brokers being created.</p>", "smithy.api#jsonName" => "createdBrokerIds"}))
    BrokerCountUpdateInfo.add_member(:deleted_broker_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: ListofDouble, location_name: 'DeletedBrokerIds', traits: {"smithy.api#documentation" => "<p>Kafka Broker IDs of brokers being deleted.</p>", "smithy.api#jsonName" => "deletedBrokerIds"}))
    BrokerCountUpdateInfo.type = Types::BrokerCountUpdateInfo
    BrokerEBSVolumeInfo.add_member(:kafka_broker_node_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'KafkaBrokerNodeId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The ID of the broker to update.</p>", "smithy.api#jsonName" => "kafkaBrokerNodeId", "smithy.api#required" => {}}))
    BrokerEBSVolumeInfo.add_member(:provisioned_throughput, Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughput, location_name: 'ProvisionedThroughput', traits: {"smithy.api#documentation" => "<p>EBS volume provisioned throughput information.</p>", "smithy.api#jsonName" => "provisionedThroughput"}))
    BrokerEBSVolumeInfo.add_member(:volume_size_gb, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'VolumeSizeGB', traits: {"smithy.api#documentation" => "<p>Size of the EBS volume to update.</p>", "smithy.api#jsonName" => "volumeSizeGB"}))
    BrokerEBSVolumeInfo.type = Types::BrokerEBSVolumeInfo
    BrokerLogs.add_member(:cloud_watch_logs, Smithy::Schema::Shapes::ShapeRef.new(shape: CloudWatchLogs, location_name: 'CloudWatchLogs', traits: {"smithy.api#jsonName" => "cloudWatchLogs"}))
    BrokerLogs.add_member(:firehose, Smithy::Schema::Shapes::ShapeRef.new(shape: Firehose, location_name: 'Firehose', traits: {"smithy.api#jsonName" => "firehose"}))
    BrokerLogs.add_member(:s3, Smithy::Schema::Shapes::ShapeRef.new(shape: S3, location_name: 'S3', traits: {"smithy.api#jsonName" => "s3"}))
    BrokerLogs.type = Types::BrokerLogs
    BrokerNodeGroupInfo.add_member(:broker_az_distribution, Smithy::Schema::Shapes::ShapeRef.new(shape: BrokerAZDistribution, location_name: 'BrokerAZDistribution', traits: {"smithy.api#documentation" => "<p>The distribution of broker nodes across Availability Zones. This is an optional parameter. If you don't specify it, Amazon MSK gives it the value DEFAULT. You can also explicitly set this parameter to the value DEFAULT. No other values are currently allowed.</p>\n         <p>Amazon MSK distributes the broker nodes evenly across the Availability Zones that correspond to the subnets you provide when you create the cluster.</p>", "smithy.api#jsonName" => "brokerAZDistribution"}))
    BrokerNodeGroupInfo.add_member(:client_subnets, Smithy::Schema::Shapes::ShapeRef.new(shape: ListofString, location_name: 'ClientSubnets', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The list of subnets to connect to in the client virtual private cloud (VPC). AWS creates elastic network interfaces inside these subnets. Client applications use elastic network interfaces to produce and consume data. Client subnets can't occupy the Availability Zone with ID use use1-az3.</p>", "smithy.api#jsonName" => "clientSubnets", "smithy.api#required" => {}}))
    BrokerNodeGroupInfo.add_member(:instance_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Stringmin5max32, location_name: 'InstanceType', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The type of Amazon EC2 instances to use for Apache Kafka brokers. The following instance types are allowed: kafka.m5.large, kafka.m5.xlarge, kafka.m5.2xlarge,\nkafka.m5.4xlarge, kafka.m5.12xlarge, and kafka.m5.24xlarge.</p>", "smithy.api#jsonName" => "instanceType", "smithy.api#required" => {}}))
    BrokerNodeGroupInfo.add_member(:security_groups, Smithy::Schema::Shapes::ShapeRef.new(shape: ListofString, location_name: 'SecurityGroups', traits: {"smithy.api#documentation" => "<p>The AWS security groups to associate with the elastic network interfaces in order to specify who can connect to and communicate with the Amazon MSK cluster. If you don't specify a security group, Amazon MSK uses the default security group associated with the VPC.</p>", "smithy.api#jsonName" => "securityGroups"}))
    BrokerNodeGroupInfo.add_member(:storage_info, Smithy::Schema::Shapes::ShapeRef.new(shape: StorageInfo, location_name: 'StorageInfo', traits: {"smithy.api#documentation" => "<p>Contains information about storage volumes attached to MSK broker nodes.</p>", "smithy.api#jsonName" => "storageInfo"}))
    BrokerNodeGroupInfo.add_member(:connectivity_info, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectivityInfo, location_name: 'ConnectivityInfo', traits: {"smithy.api#documentation" => "<p>Information about the broker access configuration.</p>", "smithy.api#jsonName" => "connectivityInfo"}))
    BrokerNodeGroupInfo.add_member(:zone_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: ListofString, location_name: 'ZoneIds', traits: {"smithy.api#documentation" => "<p>The list of zoneIds for the cluster in the virtual private cloud (VPC).</p>", "smithy.api#jsonName" => "zoneIds"}))
    BrokerNodeGroupInfo.type = Types::BrokerNodeGroupInfo
    BrokerNodeInfo.add_member(:attached_eni_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AttachedENIId', traits: {"smithy.api#documentation" => "<p>The attached elastic network interface of the broker.</p>", "smithy.api#jsonName" => "attachedENIId"}))
    BrokerNodeInfo.add_member(:broker_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'BrokerId', traits: {"smithy.api#documentation" => "<p>The ID of the broker.</p>", "smithy.api#jsonName" => "brokerId"}))
    BrokerNodeInfo.add_member(:client_subnet, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClientSubnet', traits: {"smithy.api#documentation" => "<p>The client subnet to which this broker node belongs.</p>", "smithy.api#jsonName" => "clientSubnet"}))
    BrokerNodeInfo.add_member(:client_vpc_ip_address, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClientVpcIpAddress', traits: {"smithy.api#documentation" => "<p>The virtual private cloud (VPC) of the client.</p>", "smithy.api#jsonName" => "clientVpcIpAddress"}))
    BrokerNodeInfo.add_member(:current_broker_software_info, Smithy::Schema::Shapes::ShapeRef.new(shape: BrokerSoftwareInfo, location_name: 'CurrentBrokerSoftwareInfo', traits: {"smithy.api#documentation" => "<p>Information about the version of software currently deployed on the Apache Kafka brokers in the cluster.</p>", "smithy.api#jsonName" => "currentBrokerSoftwareInfo"}))
    BrokerNodeInfo.add_member(:endpoints, Smithy::Schema::Shapes::ShapeRef.new(shape: ListofString, location_name: 'Endpoints', traits: {"smithy.api#documentation" => "<p>Endpoints for accessing the broker.</p>", "smithy.api#jsonName" => "endpoints"}))
    BrokerNodeInfo.type = Types::BrokerNodeInfo
    BrokerSoftwareInfo.add_member(:configuration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ConfigurationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the configuration used for the cluster. This field isn't visible in this preview release.</p>", "smithy.api#jsonName" => "configurationArn"}))
    BrokerSoftwareInfo.add_member(:configuration_revision, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'ConfigurationRevision', traits: {"smithy.api#documentation" => "<p>The revision of the configuration to use. This field isn't visible in this preview release.</p>", "smithy.api#jsonName" => "configurationRevision"}))
    BrokerSoftwareInfo.add_member(:kafka_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'KafkaVersion', traits: {"smithy.api#documentation" => "<p>The version of Apache Kafka.</p>", "smithy.api#jsonName" => "kafkaVersion"}))
    BrokerSoftwareInfo.type = Types::BrokerSoftwareInfo
    ClientAuthentication.add_member(:sasl, Smithy::Schema::Shapes::ShapeRef.new(shape: Sasl, location_name: 'Sasl', traits: {"smithy.api#documentation" => "<p>Details for ClientAuthentication using SASL.</p>", "smithy.api#jsonName" => "sasl"}))
    ClientAuthentication.add_member(:tls, Smithy::Schema::Shapes::ShapeRef.new(shape: Tls, location_name: 'Tls', traits: {"smithy.api#documentation" => "<p>Details for ClientAuthentication using TLS.</p>", "smithy.api#jsonName" => "tls"}))
    ClientAuthentication.add_member(:unauthenticated, Smithy::Schema::Shapes::ShapeRef.new(shape: Unauthenticated, location_name: 'Unauthenticated', traits: {"smithy.api#documentation" => "<p>Contains information about unauthenticated traffic to the cluster.</p>", "smithy.api#jsonName" => "unauthenticated"}))
    ClientAuthentication.type = Types::ClientAuthentication
    ClientBroker.add_member(:tls, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TLS', traits: {"smithy.api#enumValue" => "TLS"}))
    ClientBroker.add_member(:tls_plaintext, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TLS_PLAINTEXT', traits: {"smithy.api#enumValue" => "TLS_PLAINTEXT"}))
    ClientBroker.add_member(:plaintext, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PLAINTEXT', traits: {"smithy.api#enumValue" => "PLAINTEXT"}))
    ClientVpcConnection.add_member(:authentication, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Authentication', traits: {"smithy.api#documentation" => "<p>Information about the auth scheme of Vpc Connection.</p>", "smithy.api#jsonName" => "authentication"}))
    ClientVpcConnection.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'CreationTime', traits: {"smithy.api#documentation" => "<p>Creation time of the Vpc Connection.</p>", "smithy.api#jsonName" => "creationTime"}))
    ClientVpcConnection.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcConnectionState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>State of the Vpc Connection.</p>", "smithy.api#jsonName" => "state"}))
    ClientVpcConnection.add_member(:vpc_connection_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VpcConnectionArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The ARN that identifies the Vpc Connection.</p>", "smithy.api#jsonName" => "vpcConnectionArn", "smithy.api#required" => {}}))
    ClientVpcConnection.add_member(:owner, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Owner', traits: {"smithy.api#documentation" => "<p>The Owner of the Vpc Connection.</p>", "smithy.api#jsonName" => "owner"}))
    ClientVpcConnection.type = Types::ClientVpcConnection
    CloudWatchLogs.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Enabled', traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "enabled", "smithy.api#required" => {}}))
    CloudWatchLogs.add_member(:log_group, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LogGroup', traits: {"smithy.api#jsonName" => "logGroup"}))
    CloudWatchLogs.type = Types::CloudWatchLogs
    Cluster.add_member(:active_operation_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ActiveOperationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that uniquely identifies a cluster operation.</p>", "smithy.api#jsonName" => "activeOperationArn"}))
    Cluster.add_member(:cluster_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterType, location_name: 'ClusterType', traits: {"smithy.api#documentation" => "<p>Cluster Type.</p>", "smithy.api#jsonName" => "clusterType"}))
    Cluster.add_member(:cluster_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that uniquely identifies the cluster.</p>", "smithy.api#jsonName" => "clusterArn"}))
    Cluster.add_member(:cluster_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterName', traits: {"smithy.api#documentation" => "<p>The name of the cluster.</p>", "smithy.api#jsonName" => "clusterName"}))
    Cluster.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'CreationTime', traits: {"smithy.api#documentation" => "<p>The time when the cluster was created.</p>", "smithy.api#jsonName" => "creationTime"}))
    Cluster.add_member(:current_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CurrentVersion', traits: {"smithy.api#documentation" => "<p>The current version of the MSK cluster.</p>", "smithy.api#jsonName" => "currentVersion"}))
    Cluster.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The state of the cluster. The possible states are ACTIVE, CREATING, DELETING, FAILED, HEALING, MAINTENANCE, REBOOTING_BROKER, and UPDATING.</p>", "smithy.api#jsonName" => "state"}))
    Cluster.add_member(:state_info, Smithy::Schema::Shapes::ShapeRef.new(shape: StateInfo, location_name: 'StateInfo', traits: {"smithy.api#documentation" => "<p>State Info for the Amazon MSK cluster.</p>", "smithy.api#jsonName" => "stateInfo"}))
    Cluster.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: MapofString, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>Tags attached to the cluster.</p>", "smithy.api#jsonName" => "tags"}))
    Cluster.add_member(:provisioned, Smithy::Schema::Shapes::ShapeRef.new(shape: Provisioned, location_name: 'Provisioned', traits: {"smithy.api#documentation" => "<p>Information about the provisioned cluster.</p>", "smithy.api#jsonName" => "provisioned"}))
    Cluster.add_member(:serverless, Smithy::Schema::Shapes::ShapeRef.new(shape: Serverless, location_name: 'Serverless', traits: {"smithy.api#documentation" => "<p>Information about the serverless cluster.</p>", "smithy.api#jsonName" => "serverless"}))
    Cluster.type = Types::Cluster
    ClusterInfo.add_member(:active_operation_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ActiveOperationArn', traits: {"smithy.api#documentation" => "<p>Arn of active cluster operation.</p>", "smithy.api#jsonName" => "activeOperationArn"}))
    ClusterInfo.add_member(:broker_node_group_info, Smithy::Schema::Shapes::ShapeRef.new(shape: BrokerNodeGroupInfo, location_name: 'BrokerNodeGroupInfo', traits: {"smithy.api#documentation" => "<p>Information about the broker nodes.</p>", "smithy.api#jsonName" => "brokerNodeGroupInfo"}))
    ClusterInfo.add_member(:client_authentication, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientAuthentication, location_name: 'ClientAuthentication', traits: {"smithy.api#documentation" => "<p>Includes all client authentication information.</p>", "smithy.api#jsonName" => "clientAuthentication"}))
    ClusterInfo.add_member(:cluster_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that uniquely identifies the cluster.</p>", "smithy.api#jsonName" => "clusterArn"}))
    ClusterInfo.add_member(:cluster_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterName', traits: {"smithy.api#documentation" => "<p>The name of the cluster.</p>", "smithy.api#jsonName" => "clusterName"}))
    ClusterInfo.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'CreationTime', traits: {"smithy.api#documentation" => "<p>The time when the cluster was created.</p>", "smithy.api#jsonName" => "creationTime"}))
    ClusterInfo.add_member(:current_broker_software_info, Smithy::Schema::Shapes::ShapeRef.new(shape: BrokerSoftwareInfo, location_name: 'CurrentBrokerSoftwareInfo', traits: {"smithy.api#documentation" => "<p>Information about the version of software currently deployed on the Apache Kafka brokers in the cluster.</p>", "smithy.api#jsonName" => "currentBrokerSoftwareInfo"}))
    ClusterInfo.add_member(:current_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CurrentVersion', traits: {"smithy.api#documentation" => "<p>The current version of the MSK cluster.</p>", "smithy.api#jsonName" => "currentVersion"}))
    ClusterInfo.add_member(:encryption_info, Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionInfo, location_name: 'EncryptionInfo', traits: {"smithy.api#documentation" => "<p>Includes all encryption-related information.</p>", "smithy.api#jsonName" => "encryptionInfo"}))
    ClusterInfo.add_member(:enhanced_monitoring, Smithy::Schema::Shapes::ShapeRef.new(shape: EnhancedMonitoring, location_name: 'EnhancedMonitoring', traits: {"smithy.api#documentation" => "<p>Specifies which metrics are gathered for the MSK cluster. This property has the following possible values: DEFAULT, PER_BROKER, PER_TOPIC_PER_BROKER, and PER_TOPIC_PER_PARTITION. For a list of the metrics associated with each of these levels of monitoring, see <a href=\"https://docs.aws.amazon.com/msk/latest/developerguide/monitoring.html\">Monitoring</a>.</p>", "smithy.api#jsonName" => "enhancedMonitoring"}))
    ClusterInfo.add_member(:open_monitoring, Smithy::Schema::Shapes::ShapeRef.new(shape: OpenMonitoring, location_name: 'OpenMonitoring', traits: {"smithy.api#documentation" => "<p>Settings for open monitoring using Prometheus.</p>", "smithy.api#jsonName" => "openMonitoring"}))
    ClusterInfo.add_member(:logging_info, Smithy::Schema::Shapes::ShapeRef.new(shape: LoggingInfo, location_name: 'LoggingInfo', traits: {"smithy.api#jsonName" => "loggingInfo"}))
    ClusterInfo.add_member(:number_of_broker_nodes, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'NumberOfBrokerNodes', traits: {"smithy.api#documentation" => "<p>The number of broker nodes in the cluster.</p>", "smithy.api#jsonName" => "numberOfBrokerNodes"}))
    ClusterInfo.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The state of the cluster. The possible states are ACTIVE, CREATING, DELETING, FAILED, HEALING, MAINTENANCE, REBOOTING_BROKER, and UPDATING.</p>", "smithy.api#jsonName" => "state"}))
    ClusterInfo.add_member(:state_info, Smithy::Schema::Shapes::ShapeRef.new(shape: StateInfo, location_name: 'StateInfo', traits: {"smithy.api#jsonName" => "stateInfo"}))
    ClusterInfo.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: MapofString, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>Tags attached to the cluster.</p>", "smithy.api#jsonName" => "tags"}))
    ClusterInfo.add_member(:zookeeper_connect_string, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ZookeeperConnectString', traits: {"smithy.api#documentation" => "<p>The connection string to use to connect to the Apache ZooKeeper cluster.</p>", "smithy.api#jsonName" => "zookeeperConnectString"}))
    ClusterInfo.add_member(:zookeeper_connect_string_tls, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ZookeeperConnectStringTls', traits: {"smithy.api#documentation" => "<p>The connection string to use to connect to zookeeper cluster on Tls port.</p>", "smithy.api#jsonName" => "zookeeperConnectStringTls"}))
    ClusterInfo.add_member(:storage_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: StorageMode, location_name: 'StorageMode', traits: {"smithy.api#documentation" => "<p>This controls storage mode for supported storage tiers.</p>", "smithy.api#jsonName" => "storageMode"}))
    ClusterInfo.add_member(:customer_action_status, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerActionStatus, location_name: 'CustomerActionStatus', traits: {"smithy.api#documentation" => "<p>Determines if there is an action required from the customer.</p>", "smithy.api#jsonName" => "customerActionStatus"}))
    ClusterInfo.type = Types::ClusterInfo
    ClusterOperationInfo.add_member(:client_request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClientRequestId', traits: {"smithy.api#documentation" => "<p>The ID of the API request that triggered this operation.</p>", "smithy.api#jsonName" => "clientRequestId"}))
    ClusterOperationInfo.add_member(:cluster_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterArn', traits: {"smithy.api#documentation" => "<p>ARN of the cluster.</p>", "smithy.api#jsonName" => "clusterArn"}))
    ClusterOperationInfo.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'CreationTime', traits: {"smithy.api#documentation" => "<p>The time that the operation was created.</p>", "smithy.api#jsonName" => "creationTime"}))
    ClusterOperationInfo.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'EndTime', traits: {"smithy.api#documentation" => "<p>The time at which the operation finished.</p>", "smithy.api#jsonName" => "endTime"}))
    ClusterOperationInfo.add_member(:error_info, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorInfo, location_name: 'ErrorInfo', traits: {"smithy.api#documentation" => "<p>Describes the error if the operation fails.</p>", "smithy.api#jsonName" => "errorInfo"}))
    ClusterOperationInfo.add_member(:operation_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'OperationArn', traits: {"smithy.api#documentation" => "<p>ARN of the cluster operation.</p>", "smithy.api#jsonName" => "operationArn"}))
    ClusterOperationInfo.add_member(:operation_state, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'OperationState', traits: {"smithy.api#documentation" => "<p>State of the cluster operation.</p>", "smithy.api#jsonName" => "operationState"}))
    ClusterOperationInfo.add_member(:operation_steps, Smithy::Schema::Shapes::ShapeRef.new(shape: Listofclusteroperationstep, location_name: 'OperationSteps', traits: {"smithy.api#documentation" => "<p>Steps completed during the operation.</p>", "smithy.api#jsonName" => "operationSteps"}))
    ClusterOperationInfo.add_member(:operation_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'OperationType', traits: {"smithy.api#documentation" => "<p>Type of the cluster operation.</p>", "smithy.api#jsonName" => "operationType"}))
    ClusterOperationInfo.add_member(:source_cluster_info, Smithy::Schema::Shapes::ShapeRef.new(shape: MutableClusterInfo, location_name: 'SourceClusterInfo', traits: {"smithy.api#documentation" => "<p>Information about cluster attributes before a cluster is updated.</p>", "smithy.api#jsonName" => "sourceClusterInfo"}))
    ClusterOperationInfo.add_member(:target_cluster_info, Smithy::Schema::Shapes::ShapeRef.new(shape: MutableClusterInfo, location_name: 'TargetClusterInfo', traits: {"smithy.api#documentation" => "<p>Information about cluster attributes after a cluster is updated.</p>", "smithy.api#jsonName" => "targetClusterInfo"}))
    ClusterOperationInfo.add_member(:vpc_connection_info, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcConnectionInfo, location_name: 'VpcConnectionInfo', traits: {"smithy.api#documentation" => "<p>Description of the VPC connection for CreateVpcConnection and DeleteVpcConnection operations.</p>", "smithy.api#jsonName" => "vpcConnectionInfo"}))
    ClusterOperationInfo.type = Types::ClusterOperationInfo
    ClusterOperationStep.add_member(:step_info, Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterOperationStepInfo, location_name: 'StepInfo', traits: {"smithy.api#documentation" => "<p>Information about the step and its status.</p>", "smithy.api#jsonName" => "stepInfo"}))
    ClusterOperationStep.add_member(:step_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StepName', traits: {"smithy.api#documentation" => "<p>The name of the step.</p>", "smithy.api#jsonName" => "stepName"}))
    ClusterOperationStep.type = Types::ClusterOperationStep
    ClusterOperationStepInfo.add_member(:step_status, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StepStatus', traits: {"smithy.api#documentation" => "<p>The steps current status.</p>", "smithy.api#jsonName" => "stepStatus"}))
    ClusterOperationStepInfo.type = Types::ClusterOperationStepInfo
    ClusterOperationV2.add_member(:cluster_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterArn', traits: {"smithy.api#documentation" => "<p>ARN of the cluster.</p>", "smithy.api#jsonName" => "clusterArn"}))
    ClusterOperationV2.add_member(:cluster_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterType, location_name: 'ClusterType', traits: {"smithy.api#documentation" => "<p>Type of the backend cluster.</p>", "smithy.api#jsonName" => "clusterType"}))
    ClusterOperationV2.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'StartTime', traits: {"smithy.api#documentation" => "<p>The time at which operation was started.</p>", "smithy.api#jsonName" => "startTime"}))
    ClusterOperationV2.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'EndTime', traits: {"smithy.api#documentation" => "<p>The time at which the operation finished.</p>", "smithy.api#jsonName" => "endTime"}))
    ClusterOperationV2.add_member(:error_info, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorInfo, location_name: 'ErrorInfo', traits: {"smithy.api#documentation" => "<p>If cluster operation failed from an error, it describes the error.</p>", "smithy.api#jsonName" => "errorInfo"}))
    ClusterOperationV2.add_member(:operation_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'OperationArn', traits: {"smithy.api#documentation" => "<p>ARN of the cluster operation.</p>", "smithy.api#jsonName" => "operationArn"}))
    ClusterOperationV2.add_member(:operation_state, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'OperationState', traits: {"smithy.api#documentation" => "<p>State of the cluster operation.</p>", "smithy.api#jsonName" => "operationState"}))
    ClusterOperationV2.add_member(:operation_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'OperationType', traits: {"smithy.api#documentation" => "<p>Type of the cluster operation.</p>", "smithy.api#jsonName" => "operationType"}))
    ClusterOperationV2.add_member(:provisioned, Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterOperationV2Provisioned, location_name: 'Provisioned', traits: {"smithy.api#documentation" => "<p>Properties of a provisioned cluster.</p>", "smithy.api#jsonName" => "provisioned"}))
    ClusterOperationV2.add_member(:serverless, Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterOperationV2Serverless, location_name: 'Serverless', traits: {"smithy.api#documentation" => "<p>Properties of a serverless cluster.</p>", "smithy.api#jsonName" => "serverless"}))
    ClusterOperationV2.type = Types::ClusterOperationV2
    ClusterOperationV2Provisioned.add_member(:operation_steps, Smithy::Schema::Shapes::ShapeRef.new(shape: Listofclusteroperationstep, location_name: 'OperationSteps', traits: {"smithy.api#documentation" => "<p>Steps completed during the operation.</p>", "smithy.api#jsonName" => "operationSteps"}))
    ClusterOperationV2Provisioned.add_member(:source_cluster_info, Smithy::Schema::Shapes::ShapeRef.new(shape: MutableClusterInfo, location_name: 'SourceClusterInfo', traits: {"smithy.api#documentation" => "<p>Information about cluster attributes before a cluster is updated.</p>", "smithy.api#jsonName" => "sourceClusterInfo"}))
    ClusterOperationV2Provisioned.add_member(:target_cluster_info, Smithy::Schema::Shapes::ShapeRef.new(shape: MutableClusterInfo, location_name: 'TargetClusterInfo', traits: {"smithy.api#documentation" => "<p>Information about cluster attributes after a cluster is updated.</p>", "smithy.api#jsonName" => "targetClusterInfo"}))
    ClusterOperationV2Provisioned.add_member(:vpc_connection_info, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcConnectionInfo, location_name: 'VpcConnectionInfo', traits: {"smithy.api#documentation" => "<p>Description of the VPC connection for CreateVpcConnection and DeleteVpcConnection operations.</p>", "smithy.api#jsonName" => "vpcConnectionInfo"}))
    ClusterOperationV2Provisioned.type = Types::ClusterOperationV2Provisioned
    ClusterOperationV2Serverless.add_member(:vpc_connection_info, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcConnectionInfoServerless, location_name: 'VpcConnectionInfo', traits: {"smithy.api#documentation" => "<p>Description of the VPC connection for CreateVpcConnection and DeleteVpcConnection operations.</p>", "smithy.api#jsonName" => "vpcConnectionInfo"}))
    ClusterOperationV2Serverless.type = Types::ClusterOperationV2Serverless
    ClusterOperationV2Summary.add_member(:cluster_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterArn', traits: {"smithy.api#documentation" => "<p>ARN of the cluster.</p>", "smithy.api#jsonName" => "clusterArn"}))
    ClusterOperationV2Summary.add_member(:cluster_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterType, location_name: 'ClusterType', traits: {"smithy.api#documentation" => "<p>Type of the backend cluster.</p>", "smithy.api#jsonName" => "clusterType"}))
    ClusterOperationV2Summary.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'StartTime', traits: {"smithy.api#documentation" => "<p>The time at which operation was started.</p>", "smithy.api#jsonName" => "startTime"}))
    ClusterOperationV2Summary.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'EndTime', traits: {"smithy.api#documentation" => "<p>The time at which the operation finished.</p>", "smithy.api#jsonName" => "endTime"}))
    ClusterOperationV2Summary.add_member(:operation_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'OperationArn', traits: {"smithy.api#documentation" => "<p>ARN of the cluster operation.</p>", "smithy.api#jsonName" => "operationArn"}))
    ClusterOperationV2Summary.add_member(:operation_state, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'OperationState', traits: {"smithy.api#documentation" => "<p>State of the cluster operation.</p>", "smithy.api#jsonName" => "operationState"}))
    ClusterOperationV2Summary.add_member(:operation_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'OperationType', traits: {"smithy.api#documentation" => "<p>Type of the cluster operation.</p>", "smithy.api#jsonName" => "operationType"}))
    ClusterOperationV2Summary.type = Types::ClusterOperationV2Summary
    ClusterState.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    ClusterState.add_member(:creating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "CREATING"}))
    ClusterState.add_member(:deleting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    ClusterState.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    ClusterState.add_member(:healing, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HEALING', traits: {"smithy.api#enumValue" => "HEALING"}))
    ClusterState.add_member(:maintenance, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MAINTENANCE', traits: {"smithy.api#enumValue" => "MAINTENANCE"}))
    ClusterState.add_member(:rebooting_broker, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REBOOTING_BROKER', traits: {"smithy.api#enumValue" => "REBOOTING_BROKER"}))
    ClusterState.add_member(:updating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATING', traits: {"smithy.api#enumValue" => "UPDATING"}))
    ClusterType.add_member(:provisioned, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PROVISIONED', traits: {"smithy.api#enumValue" => "PROVISIONED"}))
    ClusterType.add_member(:serverless, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SERVERLESS', traits: {"smithy.api#enumValue" => "SERVERLESS"}))
    CompatibleKafkaVersion.add_member(:source_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceVersion', traits: {"smithy.api#documentation" => "<p>An Apache Kafka version.</p>", "smithy.api#jsonName" => "sourceVersion"}))
    CompatibleKafkaVersion.add_member(:target_versions, Smithy::Schema::Shapes::ShapeRef.new(shape: ListofString, location_name: 'TargetVersions', traits: {"smithy.api#documentation" => "<p>A list of Apache Kafka versions.</p>", "smithy.api#jsonName" => "targetVersions"}))
    CompatibleKafkaVersion.type = Types::CompatibleKafkaVersion
    Configuration.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the configuration.</p>", "smithy.api#jsonName" => "arn", "smithy.api#required" => {}}))
    Configuration.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'CreationTime', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The time when the configuration was created.</p>", "smithy.api#jsonName" => "creationTime", "smithy.api#required" => {}}))
    Configuration.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The description of the configuration.</p>", "smithy.api#jsonName" => "description", "smithy.api#required" => {}}))
    Configuration.add_member(:kafka_versions, Smithy::Schema::Shapes::ShapeRef.new(shape: ListofString, location_name: 'KafkaVersions', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>An array of the versions of Apache Kafka with which you can use this MSK configuration. You can use this configuration for an MSK cluster only if the Apache Kafka version specified for the cluster appears in this array.</p>", "smithy.api#jsonName" => "kafkaVersions", "smithy.api#required" => {}}))
    Configuration.add_member(:latest_revision, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationRevision, location_name: 'LatestRevision', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>Latest revision of the configuration.</p>", "smithy.api#jsonName" => "latestRevision", "smithy.api#required" => {}}))
    Configuration.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the configuration.</p>", "smithy.api#jsonName" => "name", "smithy.api#required" => {}}))
    Configuration.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationState, location_name: 'State', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The state of the configuration. The possible states are ACTIVE, DELETING, and DELETE_FAILED. </p>", "smithy.api#jsonName" => "state", "smithy.api#required" => {}}))
    Configuration.type = Types::Configuration
    ConfigurationInfo.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>ARN of the configuration to use.</p>", "smithy.api#jsonName" => "arn", "smithy.api#required" => {}}))
    ConfigurationInfo.add_member(:revision, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'Revision', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The revision of the configuration to use.</p>", "smithy.api#jsonName" => "revision", "smithy.api#required" => {}}))
    ConfigurationInfo.type = Types::ConfigurationInfo
    ConfigurationRevision.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'CreationTime', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The time when the configuration revision was created.</p>", "smithy.api#jsonName" => "creationTime", "smithy.api#required" => {}}))
    ConfigurationRevision.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the configuration revision.</p>", "smithy.api#jsonName" => "description"}))
    ConfigurationRevision.add_member(:revision, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'Revision', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The revision number.</p>", "smithy.api#jsonName" => "revision", "smithy.api#required" => {}}))
    ConfigurationRevision.type = Types::ConfigurationRevision
    ConfigurationState.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    ConfigurationState.add_member(:deleting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    ConfigurationState.add_member(:delete_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETE_FAILED', traits: {"smithy.api#enumValue" => "DELETE_FAILED"}))
    ConflictException.add_member(:invalid_parameter, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'InvalidParameter', traits: {"smithy.api#documentation" => "<p>The parameter that caused the error.</p>", "smithy.api#jsonName" => "invalidParameter"}))
    ConflictException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>The description of the error.</p>", "smithy.api#jsonName" => "message"}))
    ConflictException.type = Types::ConflictException
    ConnectivityInfo.add_member(:public_access, Smithy::Schema::Shapes::ShapeRef.new(shape: PublicAccess, location_name: 'PublicAccess', traits: {"smithy.api#documentation" => "<p>Public access control for brokers.</p>", "smithy.api#jsonName" => "publicAccess"}))
    ConnectivityInfo.add_member(:vpc_connectivity, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcConnectivity, location_name: 'VpcConnectivity', traits: {"smithy.api#documentation" => "<p>VPC connectivity access control for brokers.</p>", "smithy.api#jsonName" => "vpcConnectivity"}))
    ConnectivityInfo.type = Types::ConnectivityInfo
    ConsumerGroupReplication.add_member(:consumer_groups_to_exclude, Smithy::Schema::Shapes::ShapeRef.new(shape: ListofStringmax256, location_name: 'ConsumerGroupsToExclude', traits: {"smithy.api#documentation" => "<p>List of regular expression patterns indicating the consumer groups that should not be replicated.</p>", "smithy.api#jsonName" => "consumerGroupsToExclude"}))
    ConsumerGroupReplication.add_member(:consumer_groups_to_replicate, Smithy::Schema::Shapes::ShapeRef.new(shape: ListofStringmax256, location_name: 'ConsumerGroupsToReplicate', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>List of regular expression patterns indicating the consumer groups to copy.</p>", "smithy.api#jsonName" => "consumerGroupsToReplicate", "smithy.api#required" => {}}))
    ConsumerGroupReplication.add_member(:detect_and_copy_new_consumer_groups, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'DetectAndCopyNewConsumerGroups', traits: {"smithy.api#documentation" => "<p>Enables synchronization of consumer groups to target cluster.</p>", "smithy.api#jsonName" => "detectAndCopyNewConsumerGroups"}))
    ConsumerGroupReplication.add_member(:synchronise_consumer_group_offsets, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'SynchroniseConsumerGroupOffsets', traits: {"smithy.api#documentation" => "<p>Enables synchronization of consumer group offsets to target cluster. The translated offsets will be written to topic __consumer_offsets.</p>", "smithy.api#jsonName" => "synchroniseConsumerGroupOffsets"}))
    ConsumerGroupReplication.type = Types::ConsumerGroupReplication
    ConsumerGroupReplicationUpdate.add_member(:consumer_groups_to_exclude, Smithy::Schema::Shapes::ShapeRef.new(shape: ListofStringmax256, location_name: 'ConsumerGroupsToExclude', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>List of regular expression patterns indicating the consumer groups that should not be replicated.</p>", "smithy.api#jsonName" => "consumerGroupsToExclude", "smithy.api#required" => {}}))
    ConsumerGroupReplicationUpdate.add_member(:consumer_groups_to_replicate, Smithy::Schema::Shapes::ShapeRef.new(shape: ListofStringmax256, location_name: 'ConsumerGroupsToReplicate', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>List of regular expression patterns indicating the consumer groups to copy.</p>", "smithy.api#jsonName" => "consumerGroupsToReplicate", "smithy.api#required" => {}}))
    ConsumerGroupReplicationUpdate.add_member(:detect_and_copy_new_consumer_groups, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'DetectAndCopyNewConsumerGroups', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>Enables synchronization of consumer groups to target cluster.</p>", "smithy.api#jsonName" => "detectAndCopyNewConsumerGroups", "smithy.api#required" => {}}))
    ConsumerGroupReplicationUpdate.add_member(:synchronise_consumer_group_offsets, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'SynchroniseConsumerGroupOffsets', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>Enables synchronization of consumer group offsets to target cluster. The translated offsets will be written to topic __consumer_offsets.</p>", "smithy.api#jsonName" => "synchroniseConsumerGroupOffsets", "smithy.api#required" => {}}))
    ConsumerGroupReplicationUpdate.type = Types::ConsumerGroupReplicationUpdate
    ControllerNodeInfo.add_member(:endpoints, Smithy::Schema::Shapes::ShapeRef.new(shape: ListofString, location_name: 'Endpoints', traits: {"smithy.api#documentation" => "<p>Endpoints for accessing the Controller.</p>", "smithy.api#jsonName" => "endpoints"}))
    ControllerNodeInfo.type = Types::ControllerNodeInfo
    CreateClusterRequest.add_member(:broker_node_group_info, Smithy::Schema::Shapes::ShapeRef.new(shape: BrokerNodeGroupInfo, location_name: 'BrokerNodeGroupInfo', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>Information about the broker nodes in the cluster.</p>", "smithy.api#jsonName" => "brokerNodeGroupInfo", "smithy.api#required" => {}}))
    CreateClusterRequest.add_member(:client_authentication, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientAuthentication, location_name: 'ClientAuthentication', traits: {"smithy.api#documentation" => "<p>Includes all client authentication related information.</p>", "smithy.api#jsonName" => "clientAuthentication"}))
    CreateClusterRequest.add_member(:cluster_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Stringmin1max64, location_name: 'ClusterName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the cluster.</p>", "smithy.api#jsonName" => "clusterName", "smithy.api#required" => {}}))
    CreateClusterRequest.add_member(:configuration_info, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationInfo, location_name: 'ConfigurationInfo', traits: {"smithy.api#documentation" => "<p>Represents the configuration that you want MSK to use for the brokers in a cluster.</p>", "smithy.api#jsonName" => "configurationInfo"}))
    CreateClusterRequest.add_member(:encryption_info, Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionInfo, location_name: 'EncryptionInfo', traits: {"smithy.api#documentation" => "<p>Includes all encryption-related information.</p>", "smithy.api#jsonName" => "encryptionInfo"}))
    CreateClusterRequest.add_member(:enhanced_monitoring, Smithy::Schema::Shapes::ShapeRef.new(shape: EnhancedMonitoring, location_name: 'EnhancedMonitoring', traits: {"smithy.api#documentation" => "<p>Specifies the level of monitoring for the MSK cluster. The possible values are DEFAULT, PER_BROKER, PER_TOPIC_PER_BROKER, and PER_TOPIC_PER_PARTITION.</p>", "smithy.api#jsonName" => "enhancedMonitoring"}))
    CreateClusterRequest.add_member(:open_monitoring, Smithy::Schema::Shapes::ShapeRef.new(shape: OpenMonitoringInfo, location_name: 'OpenMonitoring', traits: {"smithy.api#documentation" => "<p>The settings for open monitoring.</p>", "smithy.api#jsonName" => "openMonitoring"}))
    CreateClusterRequest.add_member(:kafka_version, Smithy::Schema::Shapes::ShapeRef.new(shape: Stringmin1max128, location_name: 'KafkaVersion', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The version of Apache Kafka.</p>", "smithy.api#jsonName" => "kafkaVersion", "smithy.api#required" => {}}))
    CreateClusterRequest.add_member(:logging_info, Smithy::Schema::Shapes::ShapeRef.new(shape: LoggingInfo, location_name: 'LoggingInfo', traits: {"smithy.api#jsonName" => "loggingInfo"}))
    CreateClusterRequest.add_member(:number_of_broker_nodes, Smithy::Schema::Shapes::ShapeRef.new(shape: Integermin1max15, location_name: 'NumberOfBrokerNodes', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The number of broker nodes in the cluster.</p>", "smithy.api#jsonName" => "numberOfBrokerNodes", "smithy.api#required" => {}}))
    CreateClusterRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: MapofString, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>Create tags when creating the cluster.</p>", "smithy.api#jsonName" => "tags"}))
    CreateClusterRequest.add_member(:storage_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: StorageMode, location_name: 'StorageMode', traits: {"smithy.api#documentation" => "<p>This controls storage mode for supported storage tiers.</p>", "smithy.api#jsonName" => "storageMode"}))
    CreateClusterRequest.type = Types::CreateClusterRequest
    CreateClusterResponse.add_member(:cluster_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the cluster.</p>", "smithy.api#jsonName" => "clusterArn"}))
    CreateClusterResponse.add_member(:cluster_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterName', traits: {"smithy.api#documentation" => "<p>The name of the MSK cluster.</p>", "smithy.api#jsonName" => "clusterName"}))
    CreateClusterResponse.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The state of the cluster. The possible states are ACTIVE, CREATING, DELETING, FAILED, HEALING, MAINTENANCE, REBOOTING_BROKER, and UPDATING.</p>", "smithy.api#jsonName" => "state"}))
    CreateClusterResponse.type = Types::CreateClusterResponse
    CreateClusterV2Request.add_member(:cluster_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Stringmin1max64, location_name: 'ClusterName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the cluster.</p>", "smithy.api#jsonName" => "clusterName", "smithy.api#required" => {}}))
    CreateClusterV2Request.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: MapofString, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A map of tags that you want the cluster to have.</p>", "smithy.api#jsonName" => "tags"}))
    CreateClusterV2Request.add_member(:provisioned, Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedRequest, location_name: 'Provisioned', traits: {"smithy.api#documentation" => "<p>Information about the provisioned cluster.</p>", "smithy.api#jsonName" => "provisioned"}))
    CreateClusterV2Request.add_member(:serverless, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerlessRequest, location_name: 'Serverless', traits: {"smithy.api#documentation" => "<p>Information about the serverless cluster.</p>", "smithy.api#jsonName" => "serverless"}))
    CreateClusterV2Request.type = Types::CreateClusterV2Request
    CreateClusterV2Response.add_member(:cluster_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the cluster.</p>", "smithy.api#jsonName" => "clusterArn"}))
    CreateClusterV2Response.add_member(:cluster_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterName', traits: {"smithy.api#documentation" => "<p>The name of the MSK cluster.</p>", "smithy.api#jsonName" => "clusterName"}))
    CreateClusterV2Response.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The state of the cluster. The possible states are ACTIVE, CREATING, DELETING, FAILED, HEALING, MAINTENANCE, REBOOTING_BROKER, and UPDATING.</p>", "smithy.api#jsonName" => "state"}))
    CreateClusterV2Response.add_member(:cluster_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterType, location_name: 'ClusterType', traits: {"smithy.api#documentation" => "<p>The type of the cluster. The possible states are PROVISIONED or SERVERLESS.</p>", "smithy.api#jsonName" => "clusterType"}))
    CreateClusterV2Response.type = Types::CreateClusterV2Response
    CreateConfigurationRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the configuration.</p>", "smithy.api#jsonName" => "description"}))
    CreateConfigurationRequest.add_member(:kafka_versions, Smithy::Schema::Shapes::ShapeRef.new(shape: ListofString, location_name: 'KafkaVersions', traits: {"smithy.api#documentation" => "<p>The versions of Apache Kafka with which you can use this MSK configuration.</p>", "smithy.api#jsonName" => "kafkaVersions"}))
    CreateConfigurationRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the configuration.</p>", "smithy.api#jsonName" => "name", "smithy.api#required" => {}}))
    CreateConfigurationRequest.add_member(:server_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: Blob, location_name: 'ServerProperties', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>Contents of the <filename>server.properties</filename> file. When using the API, you must ensure that the contents of the file are base64 encoded. \n               When using the AWS Management Console, the SDK, or the AWS CLI, the contents of <filename>server.properties</filename> can be in plaintext.</p>", "smithy.api#jsonName" => "serverProperties", "smithy.api#required" => {}}))
    CreateConfigurationRequest.type = Types::CreateConfigurationRequest
    CreateConfigurationResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the configuration.</p>", "smithy.api#jsonName" => "arn"}))
    CreateConfigurationResponse.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'CreationTime', traits: {"smithy.api#documentation" => "<p>The time when the configuration was created.</p>", "smithy.api#jsonName" => "creationTime"}))
    CreateConfigurationResponse.add_member(:latest_revision, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationRevision, location_name: 'LatestRevision', traits: {"smithy.api#documentation" => "<p>Latest revision of the configuration.</p>", "smithy.api#jsonName" => "latestRevision"}))
    CreateConfigurationResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the configuration.</p>", "smithy.api#jsonName" => "name"}))
    CreateConfigurationResponse.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The state of the configuration. The possible states are ACTIVE, DELETING, and DELETE_FAILED. </p>", "smithy.api#jsonName" => "state"}))
    CreateConfigurationResponse.type = Types::CreateConfigurationResponse
    CreateReplicatorRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Stringmax1024, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>A summary description of the replicator.</p>", "smithy.api#jsonName" => "description"}))
    CreateReplicatorRequest.add_member(:kafka_clusters, Smithy::Schema::Shapes::ShapeRef.new(shape: Listofkafkacluster, location_name: 'KafkaClusters', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>Kafka Clusters to use in setting up sources / targets for replication.</p>", "smithy.api#jsonName" => "kafkaClusters", "smithy.api#required" => {}}))
    CreateReplicatorRequest.add_member(:replication_info_list, Smithy::Schema::Shapes::ShapeRef.new(shape: Listofreplicationinfo, location_name: 'ReplicationInfoList', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>A list of replication configurations, where each configuration targets a given source cluster to target cluster replication flow.</p>", "smithy.api#jsonName" => "replicationInfoList", "smithy.api#required" => {}}))
    CreateReplicatorRequest.add_member(:replicator_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Stringmin1max128pattern09azaz09azaz0, location_name: 'ReplicatorName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the replicator. Alpha-numeric characters with '-' are allowed.</p>", "smithy.api#jsonName" => "replicatorName", "smithy.api#required" => {}}))
    CreateReplicatorRequest.add_member(:service_execution_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ServiceExecutionRoleArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The ARN of the IAM role used by the replicator to access resources in the customer's account (e.g source and target clusters)</p>", "smithy.api#jsonName" => "serviceExecutionRoleArn", "smithy.api#required" => {}}))
    CreateReplicatorRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: MapofString, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>List of tags to attach to created Replicator.</p>", "smithy.api#jsonName" => "tags"}))
    CreateReplicatorRequest.type = Types::CreateReplicatorRequest
    CreateReplicatorResponse.add_member(:replicator_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReplicatorArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the replicator.</p>", "smithy.api#jsonName" => "replicatorArn"}))
    CreateReplicatorResponse.add_member(:replicator_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReplicatorName', traits: {"smithy.api#documentation" => "<p>Name of the replicator provided by the customer.</p>", "smithy.api#jsonName" => "replicatorName"}))
    CreateReplicatorResponse.add_member(:replicator_state, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicatorState, location_name: 'ReplicatorState', traits: {"smithy.api#documentation" => "<p>State of the replicator.</p>", "smithy.api#jsonName" => "replicatorState"}))
    CreateReplicatorResponse.type = Types::CreateReplicatorResponse
    CreateVpcConnectionRequest.add_member(:target_cluster_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TargetClusterArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The cluster Amazon Resource Name (ARN) for the VPC connection.</p>", "smithy.api#jsonName" => "targetClusterArn", "smithy.api#required" => {}}))
    CreateVpcConnectionRequest.add_member(:authentication, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Authentication', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The authentication type of VPC connection.</p>", "smithy.api#jsonName" => "authentication", "smithy.api#required" => {}}))
    CreateVpcConnectionRequest.add_member(:vpc_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VpcId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The VPC ID of VPC connection.</p>", "smithy.api#jsonName" => "vpcId", "smithy.api#required" => {}}))
    CreateVpcConnectionRequest.add_member(:client_subnets, Smithy::Schema::Shapes::ShapeRef.new(shape: ListofString, location_name: 'ClientSubnets', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The list of client subnets.</p>", "smithy.api#jsonName" => "clientSubnets", "smithy.api#required" => {}}))
    CreateVpcConnectionRequest.add_member(:security_groups, Smithy::Schema::Shapes::ShapeRef.new(shape: ListofString, location_name: 'SecurityGroups', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The list of security groups.</p>", "smithy.api#jsonName" => "securityGroups", "smithy.api#required" => {}}))
    CreateVpcConnectionRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: MapofString, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A map of tags for the VPC connection.</p>", "smithy.api#jsonName" => "tags"}))
    CreateVpcConnectionRequest.type = Types::CreateVpcConnectionRequest
    CreateVpcConnectionResponse.add_member(:vpc_connection_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VpcConnectionArn', traits: {"smithy.api#documentation" => "<p>The VPC connection ARN.</p>", "smithy.api#jsonName" => "vpcConnectionArn"}))
    CreateVpcConnectionResponse.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcConnectionState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The State of Vpc Connection.</p>", "smithy.api#jsonName" => "state"}))
    CreateVpcConnectionResponse.add_member(:authentication, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Authentication', traits: {"smithy.api#documentation" => "<p>The authentication type of VPC connection.</p>", "smithy.api#jsonName" => "authentication"}))
    CreateVpcConnectionResponse.add_member(:vpc_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VpcId', traits: {"smithy.api#documentation" => "<p>The VPC ID of the VPC connection.</p>", "smithy.api#jsonName" => "vpcId"}))
    CreateVpcConnectionResponse.add_member(:client_subnets, Smithy::Schema::Shapes::ShapeRef.new(shape: ListofString, location_name: 'ClientSubnets', traits: {"smithy.api#documentation" => "<p>The list of client subnets.</p>", "smithy.api#jsonName" => "clientSubnets"}))
    CreateVpcConnectionResponse.add_member(:security_groups, Smithy::Schema::Shapes::ShapeRef.new(shape: ListofString, location_name: 'SecurityGroups', traits: {"smithy.api#documentation" => "<p>The list of security groups.</p>", "smithy.api#jsonName" => "securityGroups"}))
    CreateVpcConnectionResponse.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'CreationTime', traits: {"smithy.api#documentation" => "<p>The creation time of VPC connection.</p>", "smithy.api#jsonName" => "creationTime"}))
    CreateVpcConnectionResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: MapofString, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A map of tags for the VPC connection.</p>", "smithy.api#jsonName" => "tags"}))
    CreateVpcConnectionResponse.type = Types::CreateVpcConnectionResponse
    CustomerActionStatus.add_member(:critical_action_required, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CRITICAL_ACTION_REQUIRED', traits: {"smithy.api#enumValue" => "CRITICAL_ACTION_REQUIRED"}))
    CustomerActionStatus.add_member(:action_recommended, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTION_RECOMMENDED', traits: {"smithy.api#enumValue" => "ACTION_RECOMMENDED"}))
    CustomerActionStatus.add_member(:none, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NONE', traits: {"smithy.api#enumValue" => "NONE"}))
    DeleteClusterPolicyRequest.add_member(:cluster_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the cluster.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteClusterPolicyRequest.type = Types::DeleteClusterPolicyRequest
    DeleteClusterPolicyResponse.type = Types::DeleteClusterPolicyResponse
    DeleteClusterRequest.add_member(:cluster_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that uniquely identifies the cluster.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteClusterRequest.add_member(:current_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CurrentVersion', traits: {"smithy.api#documentation" => "<p>The current version of the MSK cluster.</p>", "smithy.api#httpQuery" => "currentVersion"}))
    DeleteClusterRequest.type = Types::DeleteClusterRequest
    DeleteClusterResponse.add_member(:cluster_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the cluster.</p>", "smithy.api#jsonName" => "clusterArn"}))
    DeleteClusterResponse.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The state of the cluster. The possible states are ACTIVE, CREATING, DELETING, FAILED, HEALING, MAINTENANCE, REBOOTING_BROKER, and UPDATING.</p>", "smithy.api#jsonName" => "state"}))
    DeleteClusterResponse.type = Types::DeleteClusterResponse
    DeleteConfigurationRequest.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that uniquely identifies an MSK configuration.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteConfigurationRequest.type = Types::DeleteConfigurationRequest
    DeleteConfigurationResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that uniquely identifies an MSK configuration.</p>", "smithy.api#jsonName" => "arn"}))
    DeleteConfigurationResponse.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The state of the configuration. The possible states are ACTIVE, DELETING, and DELETE_FAILED. </p>", "smithy.api#jsonName" => "state"}))
    DeleteConfigurationResponse.type = Types::DeleteConfigurationResponse
    DeleteReplicatorRequest.add_member(:current_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CurrentVersion', traits: {"smithy.api#documentation" => "<p>The current version of the replicator.</p>", "smithy.api#httpQuery" => "currentVersion"}))
    DeleteReplicatorRequest.add_member(:replicator_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReplicatorArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the replicator to be deleted.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteReplicatorRequest.type = Types::DeleteReplicatorRequest
    DeleteReplicatorResponse.add_member(:replicator_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReplicatorArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the replicator.</p>", "smithy.api#jsonName" => "replicatorArn"}))
    DeleteReplicatorResponse.add_member(:replicator_state, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicatorState, location_name: 'ReplicatorState', traits: {"smithy.api#documentation" => "<p>The state of the replicator.</p>", "smithy.api#jsonName" => "replicatorState"}))
    DeleteReplicatorResponse.type = Types::DeleteReplicatorResponse
    DeleteVpcConnectionRequest.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that uniquely identifies an MSK VPC connection.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteVpcConnectionRequest.type = Types::DeleteVpcConnectionRequest
    DeleteVpcConnectionResponse.add_member(:vpc_connection_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VpcConnectionArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that uniquely identifies an MSK VPC connection.</p>", "smithy.api#jsonName" => "vpcConnectionArn"}))
    DeleteVpcConnectionResponse.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcConnectionState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The state of the VPC connection.</p>", "smithy.api#jsonName" => "state"}))
    DeleteVpcConnectionResponse.type = Types::DeleteVpcConnectionResponse
    DescribeClusterOperationRequest.add_member(:cluster_operation_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterOperationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that uniquely identifies the MSK cluster operation.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeClusterOperationRequest.type = Types::DescribeClusterOperationRequest
    DescribeClusterOperationResponse.add_member(:cluster_operation_info, Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterOperationInfo, location_name: 'ClusterOperationInfo', traits: {"smithy.api#documentation" => "<p>Cluster operation information</p>", "smithy.api#jsonName" => "clusterOperationInfo"}))
    DescribeClusterOperationResponse.type = Types::DescribeClusterOperationResponse
    DescribeClusterOperationV2Request.add_member(:cluster_operation_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterOperationArn', traits: {"smithy.api#documentation" => "ARN of the cluster operation to describe.", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeClusterOperationV2Request.type = Types::DescribeClusterOperationV2Request
    DescribeClusterOperationV2Response.add_member(:cluster_operation_info, Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterOperationV2, location_name: 'ClusterOperationInfo', traits: {"smithy.api#documentation" => "<p>Cluster operation information</p>", "smithy.api#jsonName" => "clusterOperationInfo"}))
    DescribeClusterOperationV2Response.type = Types::DescribeClusterOperationV2Response
    DescribeClusterRequest.add_member(:cluster_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that uniquely identifies the cluster.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeClusterRequest.type = Types::DescribeClusterRequest
    DescribeClusterResponse.add_member(:cluster_info, Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterInfo, location_name: 'ClusterInfo', traits: {"smithy.api#documentation" => "<p>The cluster information.</p>", "smithy.api#jsonName" => "clusterInfo"}))
    DescribeClusterResponse.type = Types::DescribeClusterResponse
    DescribeClusterV2Request.add_member(:cluster_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that uniquely identifies the cluster.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeClusterV2Request.type = Types::DescribeClusterV2Request
    DescribeClusterV2Response.add_member(:cluster_info, Smithy::Schema::Shapes::ShapeRef.new(shape: Cluster, location_name: 'ClusterInfo', traits: {"smithy.api#documentation" => "<p>The cluster information.</p>", "smithy.api#jsonName" => "clusterInfo"}))
    DescribeClusterV2Response.type = Types::DescribeClusterV2Response
    DescribeConfigurationRequest.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that uniquely identifies an MSK configuration and all of its revisions.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeConfigurationRequest.type = Types::DescribeConfigurationRequest
    DescribeConfigurationResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the configuration.</p>", "smithy.api#jsonName" => "arn"}))
    DescribeConfigurationResponse.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'CreationTime', traits: {"smithy.api#documentation" => "<p>The time when the configuration was created.</p>", "smithy.api#jsonName" => "creationTime"}))
    DescribeConfigurationResponse.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the configuration.</p>", "smithy.api#jsonName" => "description"}))
    DescribeConfigurationResponse.add_member(:kafka_versions, Smithy::Schema::Shapes::ShapeRef.new(shape: ListofString, location_name: 'KafkaVersions', traits: {"smithy.api#documentation" => "<p>The versions of Apache Kafka with which you can use this MSK configuration.</p>", "smithy.api#jsonName" => "kafkaVersions"}))
    DescribeConfigurationResponse.add_member(:latest_revision, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationRevision, location_name: 'LatestRevision', traits: {"smithy.api#documentation" => "<p>Latest revision of the configuration.</p>", "smithy.api#jsonName" => "latestRevision"}))
    DescribeConfigurationResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the configuration.</p>", "smithy.api#jsonName" => "name"}))
    DescribeConfigurationResponse.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The state of the configuration. The possible states are ACTIVE, DELETING, and DELETE_FAILED. </p>", "smithy.api#jsonName" => "state"}))
    DescribeConfigurationResponse.type = Types::DescribeConfigurationResponse
    DescribeConfigurationRevisionRequest.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that uniquely identifies an MSK configuration and all of its revisions.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeConfigurationRevisionRequest.add_member(:revision, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'Revision', traits: {"smithy.api#documentation" => "<p>A string that uniquely identifies a revision of an MSK configuration.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeConfigurationRevisionRequest.type = Types::DescribeConfigurationRevisionRequest
    DescribeConfigurationRevisionResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the configuration.</p>", "smithy.api#jsonName" => "arn"}))
    DescribeConfigurationRevisionResponse.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'CreationTime', traits: {"smithy.api#documentation" => "<p>The time when the configuration was created.</p>", "smithy.api#jsonName" => "creationTime"}))
    DescribeConfigurationRevisionResponse.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the configuration.</p>", "smithy.api#jsonName" => "description"}))
    DescribeConfigurationRevisionResponse.add_member(:revision, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'Revision', traits: {"smithy.api#documentation" => "<p>The revision number.</p>", "smithy.api#jsonName" => "revision"}))
    DescribeConfigurationRevisionResponse.add_member(:server_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: Blob, location_name: 'ServerProperties', traits: {"smithy.api#documentation" => "<p>Contents of the <filename>server.properties</filename> file. When using the API, you must ensure that the contents of the file are base64 encoded. \n               When using the AWS Management Console, the SDK, or the AWS CLI, the contents of <filename>server.properties</filename> can be in plaintext.</p>", "smithy.api#jsonName" => "serverProperties"}))
    DescribeConfigurationRevisionResponse.type = Types::DescribeConfigurationRevisionResponse
    DescribeReplicatorRequest.add_member(:replicator_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReplicatorArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the replicator to be described.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeReplicatorRequest.type = Types::DescribeReplicatorRequest
    DescribeReplicatorResponse.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'CreationTime', traits: {"smithy.api#documentation" => "<p>The time when the replicator was created.</p>", "smithy.api#jsonName" => "creationTime"}))
    DescribeReplicatorResponse.add_member(:current_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CurrentVersion', traits: {"smithy.api#documentation" => "<p>The current version number of the replicator.</p>", "smithy.api#jsonName" => "currentVersion"}))
    DescribeReplicatorResponse.add_member(:is_replicator_reference, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IsReplicatorReference', traits: {"smithy.api#documentation" => "<p>Whether this resource is a replicator reference.</p>", "smithy.api#jsonName" => "isReplicatorReference"}))
    DescribeReplicatorResponse.add_member(:kafka_clusters, Smithy::Schema::Shapes::ShapeRef.new(shape: Listofkafkaclusterdescription, location_name: 'KafkaClusters', traits: {"smithy.api#documentation" => "<p>Kafka Clusters used in setting up sources / targets for replication.</p>", "smithy.api#jsonName" => "kafkaClusters"}))
    DescribeReplicatorResponse.add_member(:replication_info_list, Smithy::Schema::Shapes::ShapeRef.new(shape: Listofreplicationinfodescription, location_name: 'ReplicationInfoList', traits: {"smithy.api#documentation" => "<p>A list of replication configurations, where each configuration targets a given source cluster to target cluster replication flow.</p>", "smithy.api#jsonName" => "replicationInfoList"}))
    DescribeReplicatorResponse.add_member(:replicator_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReplicatorArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the replicator.</p>", "smithy.api#jsonName" => "replicatorArn"}))
    DescribeReplicatorResponse.add_member(:replicator_description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReplicatorDescription', traits: {"smithy.api#documentation" => "<p>The description of the replicator.</p>", "smithy.api#jsonName" => "replicatorDescription"}))
    DescribeReplicatorResponse.add_member(:replicator_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReplicatorName', traits: {"smithy.api#documentation" => "<p>The name of the replicator.</p>", "smithy.api#jsonName" => "replicatorName"}))
    DescribeReplicatorResponse.add_member(:replicator_resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReplicatorResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the replicator resource in the region where the replicator was created.</p>", "smithy.api#jsonName" => "replicatorResourceArn"}))
    DescribeReplicatorResponse.add_member(:replicator_state, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicatorState, location_name: 'ReplicatorState', traits: {"smithy.api#documentation" => "<p>State of the replicator.</p>", "smithy.api#jsonName" => "replicatorState"}))
    DescribeReplicatorResponse.add_member(:service_execution_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ServiceExecutionRoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the IAM role used by the replicator to access resources in the customer's account (e.g source and target clusters)</p>", "smithy.api#jsonName" => "serviceExecutionRoleArn"}))
    DescribeReplicatorResponse.add_member(:state_info, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationStateInfo, location_name: 'StateInfo', traits: {"smithy.api#documentation" => "<p>Details about the state of the replicator.</p>", "smithy.api#jsonName" => "stateInfo"}))
    DescribeReplicatorResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: MapofString, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>List of tags attached to the Replicator.</p>", "smithy.api#jsonName" => "tags"}))
    DescribeReplicatorResponse.type = Types::DescribeReplicatorResponse
    DescribeVpcConnectionRequest.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that uniquely identifies a MSK VPC connection.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeVpcConnectionRequest.type = Types::DescribeVpcConnectionRequest
    DescribeVpcConnectionResponse.add_member(:vpc_connection_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VpcConnectionArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that uniquely identifies a MSK VPC connection.</p>", "smithy.api#jsonName" => "vpcConnectionArn"}))
    DescribeVpcConnectionResponse.add_member(:target_cluster_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TargetClusterArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that uniquely identifies an MSK cluster.</p>", "smithy.api#jsonName" => "targetClusterArn"}))
    DescribeVpcConnectionResponse.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcConnectionState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The state of VPC connection.</p>", "smithy.api#jsonName" => "state"}))
    DescribeVpcConnectionResponse.add_member(:authentication, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Authentication', traits: {"smithy.api#documentation" => "<p>The authentication type of VPC connection.</p>", "smithy.api#jsonName" => "authentication"}))
    DescribeVpcConnectionResponse.add_member(:vpc_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VpcId', traits: {"smithy.api#documentation" => "<p>The VPC Id for the VPC connection.</p>", "smithy.api#jsonName" => "vpcId"}))
    DescribeVpcConnectionResponse.add_member(:subnets, Smithy::Schema::Shapes::ShapeRef.new(shape: ListofString, location_name: 'Subnets', traits: {"smithy.api#documentation" => "<p>The list of subnets for the VPC connection.</p>", "smithy.api#jsonName" => "subnets"}))
    DescribeVpcConnectionResponse.add_member(:security_groups, Smithy::Schema::Shapes::ShapeRef.new(shape: ListofString, location_name: 'SecurityGroups', traits: {"smithy.api#documentation" => "<p>The list of security groups for the VPC connection.</p>", "smithy.api#jsonName" => "securityGroups"}))
    DescribeVpcConnectionResponse.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'CreationTime', traits: {"smithy.api#documentation" => "<p>The creation time of the VPC connection.</p>", "smithy.api#jsonName" => "creationTime"}))
    DescribeVpcConnectionResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: MapofString, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A map of tags for the VPC connection.</p>", "smithy.api#jsonName" => "tags"}))
    DescribeVpcConnectionResponse.type = Types::DescribeVpcConnectionResponse
    EBSStorageInfo.add_member(:provisioned_throughput, Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughput, location_name: 'ProvisionedThroughput', traits: {"smithy.api#documentation" => "<p>EBS volume provisioned throughput information.</p>", "smithy.api#jsonName" => "provisionedThroughput"}))
    EBSStorageInfo.add_member(:volume_size, Smithy::Schema::Shapes::ShapeRef.new(shape: Integermin1max16384, location_name: 'VolumeSize', traits: {"smithy.api#documentation" => "<p>The size in GiB of the EBS volume for the data drive on each broker node.</p>", "smithy.api#jsonName" => "volumeSize"}))
    EBSStorageInfo.type = Types::EBSStorageInfo
    EncryptionAtRest.add_member(:data_volume_kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DataVolumeKMSKeyId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The ARN of the AWS KMS key for encrypting data at rest. If you don't specify a KMS key, MSK creates one for you and uses it.</p>", "smithy.api#jsonName" => "dataVolumeKMSKeyId", "smithy.api#required" => {}}))
    EncryptionAtRest.type = Types::EncryptionAtRest
    EncryptionInTransit.add_member(:client_broker, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientBroker, location_name: 'ClientBroker', traits: {"smithy.api#documentation" => "<p>Indicates the encryption setting for data in transit between clients and brokers. The following are the possible values.</p>\n            <p>\n               TLS means that client-broker communication is enabled with TLS only.</p>\n            <p>\n               TLS_PLAINTEXT means that client-broker communication is enabled for both TLS-encrypted, as well as plaintext data.</p>\n            <p>\n               PLAINTEXT means that client-broker communication is enabled in plaintext only.</p>\n            <p>The default value is TLS_PLAINTEXT.</p>", "smithy.api#jsonName" => "clientBroker"}))
    EncryptionInTransit.add_member(:in_cluster, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'InCluster', traits: {"smithy.api#documentation" => "<p>When set to true, it indicates that data communication among the broker nodes of the cluster is encrypted. When set to false, the communication happens in plaintext.</p>\n            <p>The default value is true.</p>", "smithy.api#jsonName" => "inCluster"}))
    EncryptionInTransit.type = Types::EncryptionInTransit
    EncryptionInfo.add_member(:encryption_at_rest, Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionAtRest, location_name: 'EncryptionAtRest', traits: {"smithy.api#documentation" => "<p>The data-volume encryption details.</p>", "smithy.api#jsonName" => "encryptionAtRest"}))
    EncryptionInfo.add_member(:encryption_in_transit, Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionInTransit, location_name: 'EncryptionInTransit', traits: {"smithy.api#documentation" => "<p>The details for encryption in transit.</p>", "smithy.api#jsonName" => "encryptionInTransit"}))
    EncryptionInfo.type = Types::EncryptionInfo
    EnhancedMonitoring.add_member(:default, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEFAULT', traits: {"smithy.api#enumValue" => "DEFAULT"}))
    EnhancedMonitoring.add_member(:per_broker, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PER_BROKER', traits: {"smithy.api#enumValue" => "PER_BROKER"}))
    EnhancedMonitoring.add_member(:per_topic_per_broker, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PER_TOPIC_PER_BROKER', traits: {"smithy.api#enumValue" => "PER_TOPIC_PER_BROKER"}))
    EnhancedMonitoring.add_member(:per_topic_per_partition, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PER_TOPIC_PER_PARTITION', traits: {"smithy.api#enumValue" => "PER_TOPIC_PER_PARTITION"}))
    ErrorInfo.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ErrorCode', traits: {"smithy.api#documentation" => "<p>A number describing the error programmatically.</p>", "smithy.api#jsonName" => "errorCode"}))
    ErrorInfo.add_member(:error_string, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ErrorString', traits: {"smithy.api#documentation" => "<p>An optional field to provide more details about the error.</p>", "smithy.api#jsonName" => "errorString"}))
    ErrorInfo.type = Types::ErrorInfo
    Firehose.add_member(:delivery_stream, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DeliveryStream', traits: {"smithy.api#jsonName" => "deliveryStream"}))
    Firehose.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Enabled', traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "enabled", "smithy.api#required" => {}}))
    Firehose.type = Types::Firehose
    ForbiddenException.add_member(:invalid_parameter, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'InvalidParameter', traits: {"smithy.api#documentation" => "<p>The parameter that caused the error.</p>", "smithy.api#jsonName" => "invalidParameter"}))
    ForbiddenException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>The description of the error.</p>", "smithy.api#jsonName" => "message"}))
    ForbiddenException.type = Types::ForbiddenException
    GetBootstrapBrokersRequest.add_member(:cluster_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that uniquely identifies the cluster.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetBootstrapBrokersRequest.type = Types::GetBootstrapBrokersRequest
    GetBootstrapBrokersResponse.add_member(:bootstrap_broker_string, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BootstrapBrokerString', traits: {"smithy.api#documentation" => "<p>A string containing one or more hostname:port pairs.</p>", "smithy.api#jsonName" => "bootstrapBrokerString"}))
    GetBootstrapBrokersResponse.add_member(:bootstrap_broker_string_tls, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BootstrapBrokerStringTls', traits: {"smithy.api#documentation" => "<p>A string containing one or more DNS names (or IP) and TLS port pairs.</p>", "smithy.api#jsonName" => "bootstrapBrokerStringTls"}))
    GetBootstrapBrokersResponse.add_member(:bootstrap_broker_string_sasl_scram, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BootstrapBrokerStringSaslScram', traits: {"smithy.api#documentation" => "<p>A string containing one or more DNS names (or IP) and Sasl Scram port pairs.</p>", "smithy.api#jsonName" => "bootstrapBrokerStringSaslScram"}))
    GetBootstrapBrokersResponse.add_member(:bootstrap_broker_string_sasl_iam, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BootstrapBrokerStringSaslIam', traits: {"smithy.api#documentation" => "<p>A string that contains one or more DNS names (or IP addresses) and SASL IAM port pairs.</p>", "smithy.api#jsonName" => "bootstrapBrokerStringSaslIam"}))
    GetBootstrapBrokersResponse.add_member(:bootstrap_broker_string_public_tls, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BootstrapBrokerStringPublicTls', traits: {"smithy.api#documentation" => "<p>A string containing one or more DNS names (or IP) and TLS port pairs.</p>", "smithy.api#jsonName" => "bootstrapBrokerStringPublicTls"}))
    GetBootstrapBrokersResponse.add_member(:bootstrap_broker_string_public_sasl_scram, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BootstrapBrokerStringPublicSaslScram', traits: {"smithy.api#documentation" => "<p>A string containing one or more DNS names (or IP) and Sasl Scram port pairs.</p>", "smithy.api#jsonName" => "bootstrapBrokerStringPublicSaslScram"}))
    GetBootstrapBrokersResponse.add_member(:bootstrap_broker_string_public_sasl_iam, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BootstrapBrokerStringPublicSaslIam', traits: {"smithy.api#documentation" => "<p>A string that contains one or more DNS names (or IP addresses) and SASL IAM port pairs.</p>", "smithy.api#jsonName" => "bootstrapBrokerStringPublicSaslIam"}))
    GetBootstrapBrokersResponse.add_member(:bootstrap_broker_string_vpc_connectivity_tls, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BootstrapBrokerStringVpcConnectivityTls', traits: {"smithy.api#documentation" => "<p>A string containing one or more DNS names (or IP) and TLS port pairs for VPC connectivity.</p>", "smithy.api#jsonName" => "bootstrapBrokerStringVpcConnectivityTls"}))
    GetBootstrapBrokersResponse.add_member(:bootstrap_broker_string_vpc_connectivity_sasl_scram, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BootstrapBrokerStringVpcConnectivitySaslScram', traits: {"smithy.api#documentation" => "<p>A string containing one or more DNS names (or IP) and SASL/SCRAM port pairs for VPC connectivity.</p>", "smithy.api#jsonName" => "bootstrapBrokerStringVpcConnectivitySaslScram"}))
    GetBootstrapBrokersResponse.add_member(:bootstrap_broker_string_vpc_connectivity_sasl_iam, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BootstrapBrokerStringVpcConnectivitySaslIam', traits: {"smithy.api#documentation" => "<p>A string containing one or more DNS names (or IP) and SASL/IAM port pairs for VPC connectivity.</p>", "smithy.api#jsonName" => "bootstrapBrokerStringVpcConnectivitySaslIam"}))
    GetBootstrapBrokersResponse.type = Types::GetBootstrapBrokersResponse
    GetClusterPolicyRequest.add_member(:cluster_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the cluster.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetClusterPolicyRequest.type = Types::GetClusterPolicyRequest
    GetClusterPolicyResponse.add_member(:current_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CurrentVersion', traits: {"smithy.api#documentation" => "<p>The version of cluster policy.</p>", "smithy.api#jsonName" => "currentVersion"}))
    GetClusterPolicyResponse.add_member(:policy, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Policy', traits: {"smithy.api#documentation" => "<p>The cluster policy.</p>", "smithy.api#jsonName" => "policy"}))
    GetClusterPolicyResponse.type = Types::GetClusterPolicyResponse
    GetCompatibleKafkaVersionsRequest.add_member(:cluster_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the cluster check.</p>", "smithy.api#httpQuery" => "clusterArn"}))
    GetCompatibleKafkaVersionsRequest.type = Types::GetCompatibleKafkaVersionsRequest
    GetCompatibleKafkaVersionsResponse.add_member(:compatible_kafka_versions, Smithy::Schema::Shapes::ShapeRef.new(shape: Listofcompatiblekafkaversion, location_name: 'CompatibleKafkaVersions', traits: {"smithy.api#documentation" => "<p>A list of CompatibleKafkaVersion objects.</p>", "smithy.api#jsonName" => "compatibleKafkaVersions"}))
    GetCompatibleKafkaVersionsResponse.type = Types::GetCompatibleKafkaVersionsResponse
    Iam.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Enabled', traits: {"smithy.api#documentation" => "<p>Indicates whether IAM access control is enabled.</p>", "smithy.api#jsonName" => "enabled"}))
    Iam.type = Types::Iam
    InternalServerErrorException.add_member(:invalid_parameter, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'InvalidParameter', traits: {"smithy.api#documentation" => "<p>The parameter that caused the error.</p>", "smithy.api#jsonName" => "invalidParameter"}))
    InternalServerErrorException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>The description of the error.</p>", "smithy.api#jsonName" => "message"}))
    InternalServerErrorException.type = Types::InternalServerErrorException
    JmxExporter.add_member(:enabled_in_broker, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'EnabledInBroker', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>Indicates whether you want to turn on or turn off the JMX Exporter.</p>", "smithy.api#jsonName" => "enabledInBroker", "smithy.api#required" => {}}))
    JmxExporter.type = Types::JmxExporter
    JmxExporterInfo.add_member(:enabled_in_broker, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'EnabledInBroker', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>Indicates whether you want to turn on or turn off the JMX Exporter.</p>", "smithy.api#jsonName" => "enabledInBroker", "smithy.api#required" => {}}))
    JmxExporterInfo.type = Types::JmxExporterInfo
    KafkaCluster.add_member(:amazon_msk_cluster, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonMskCluster, location_name: 'AmazonMskCluster', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>Details of an Amazon MSK Cluster.</p>", "smithy.api#jsonName" => "amazonMskCluster", "smithy.api#required" => {}}))
    KafkaCluster.add_member(:vpc_config, Smithy::Schema::Shapes::ShapeRef.new(shape: KafkaClusterClientVpcConfig, location_name: 'VpcConfig', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>Details of an Amazon VPC which has network connectivity to the Apache Kafka cluster.</p>", "smithy.api#jsonName" => "vpcConfig", "smithy.api#required" => {}}))
    KafkaCluster.type = Types::KafkaCluster
    KafkaClusterClientVpcConfig.add_member(:security_group_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: ListofString, location_name: 'SecurityGroupIds', traits: {"smithy.api#documentation" => "<p>The security groups to attach to the ENIs for the broker nodes.</p>", "smithy.api#jsonName" => "securityGroupIds"}))
    KafkaClusterClientVpcConfig.add_member(:subnet_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: ListofString, location_name: 'SubnetIds', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The list of subnets in the client VPC to connect to.</p>", "smithy.api#jsonName" => "subnetIds", "smithy.api#required" => {}}))
    KafkaClusterClientVpcConfig.type = Types::KafkaClusterClientVpcConfig
    KafkaClusterDescription.add_member(:amazon_msk_cluster, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonMskCluster, location_name: 'AmazonMskCluster', traits: {"smithy.api#documentation" => "<p>Details of an Amazon MSK Cluster.</p>", "smithy.api#jsonName" => "amazonMskCluster"}))
    KafkaClusterDescription.add_member(:kafka_cluster_alias, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'KafkaClusterAlias', traits: {"smithy.api#documentation" => "<p>The alias of the Kafka cluster. Used to prefix names of replicated topics.</p>", "smithy.api#jsonName" => "kafkaClusterAlias"}))
    KafkaClusterDescription.add_member(:vpc_config, Smithy::Schema::Shapes::ShapeRef.new(shape: KafkaClusterClientVpcConfig, location_name: 'VpcConfig', traits: {"smithy.api#documentation" => "<p>Details of an Amazon VPC which has network connectivity to the Apache Kafka cluster.</p>", "smithy.api#jsonName" => "vpcConfig"}))
    KafkaClusterDescription.type = Types::KafkaClusterDescription
    KafkaClusterSummary.add_member(:amazon_msk_cluster, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonMskCluster, location_name: 'AmazonMskCluster', traits: {"smithy.api#documentation" => "<p>Details of an Amazon MSK Cluster.</p>", "smithy.api#jsonName" => "amazonMskCluster"}))
    KafkaClusterSummary.add_member(:kafka_cluster_alias, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'KafkaClusterAlias', traits: {"smithy.api#documentation" => "<p>The alias of the Kafka cluster. Used to prefix names of replicated topics.</p>", "smithy.api#jsonName" => "kafkaClusterAlias"}))
    KafkaClusterSummary.type = Types::KafkaClusterSummary
    KafkaVersion.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Version', traits: {"smithy.api#jsonName" => "version"}))
    KafkaVersion.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: KafkaVersionStatus, location_name: 'Status', traits: {"smithy.api#jsonName" => "status"}))
    KafkaVersion.type = Types::KafkaVersion
    KafkaVersionStatus.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    KafkaVersionStatus.add_member(:deprecated, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEPRECATED', traits: {"smithy.api#enumValue" => "DEPRECATED"}))
    ListClientVpcConnectionsRequest.add_member(:cluster_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the cluster.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListClientVpcConnectionsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return in the response. If there are more results, the response includes a NextToken parameter.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListClientVpcConnectionsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The paginated results marker. When the result of the operation is truncated, the call returns NextToken in the response. \n            To get the next batch, provide this token in your next request.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListClientVpcConnectionsRequest.type = Types::ListClientVpcConnectionsRequest
    ListClientVpcConnectionsResponse.add_member(:client_vpc_connections, Smithy::Schema::Shapes::ShapeRef.new(shape: Listofclientvpcconnection, location_name: 'ClientVpcConnections', traits: {"smithy.api#documentation" => "<p>List of client VPC connections.</p>", "smithy.api#jsonName" => "clientVpcConnections"}))
    ListClientVpcConnectionsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The paginated results marker. When the result of a ListClientVpcConnections operation is truncated, the call returns NextToken in the response. \n               To get another batch of configurations, provide this token in your next request.</p>", "smithy.api#jsonName" => "nextToken"}))
    ListClientVpcConnectionsResponse.type = Types::ListClientVpcConnectionsResponse
    ListClusterOperationsRequest.add_member(:cluster_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that uniquely identifies the cluster.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListClusterOperationsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return in the response. If there are more results, the response includes a NextToken parameter.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListClusterOperationsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The paginated results marker. When the result of the operation is truncated, the call returns NextToken in the response. \n            To get the next batch, provide this token in your next request.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListClusterOperationsRequest.type = Types::ListClusterOperationsRequest
    ListClusterOperationsResponse.add_member(:cluster_operation_info_list, Smithy::Schema::Shapes::ShapeRef.new(shape: Listofclusteroperationinfo, location_name: 'ClusterOperationInfoList', traits: {"smithy.api#documentation" => "<p>An array of cluster operation information objects.</p>", "smithy.api#jsonName" => "clusterOperationInfoList"}))
    ListClusterOperationsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If the response of ListClusterOperations is truncated, it returns a NextToken in the response. This Nexttoken should be sent in the subsequent request to ListClusterOperations.</p>", "smithy.api#jsonName" => "nextToken"}))
    ListClusterOperationsResponse.type = Types::ListClusterOperationsResponse
    ListClusterOperationsV2Request.add_member(:cluster_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterArn', traits: {"smithy.api#documentation" => "The arn of the cluster whose operations are being requested.", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListClusterOperationsV2Request.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "The maxResults of the query.", "smithy.api#httpQuery" => "maxResults"}))
    ListClusterOperationsV2Request.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "The nextToken of the query.", "smithy.api#httpQuery" => "nextToken"}))
    ListClusterOperationsV2Request.type = Types::ListClusterOperationsV2Request
    ListClusterOperationsV2Response.add_member(:cluster_operation_info_list, Smithy::Schema::Shapes::ShapeRef.new(shape: Listofclusteroperationv2summary, location_name: 'ClusterOperationInfoList', traits: {"smithy.api#documentation" => "<p>An array of cluster operation information objects.</p>", "smithy.api#jsonName" => "clusterOperationInfoList"}))
    ListClusterOperationsV2Response.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If the response of ListClusterOperationsV2 is truncated, it returns a NextToken in the response. This NextToken should be sent in the subsequent request to ListClusterOperationsV2.</p>", "smithy.api#jsonName" => "nextToken"}))
    ListClusterOperationsV2Response.type = Types::ListClusterOperationsV2Response
    ListClustersRequest.add_member(:cluster_name_filter, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterNameFilter', traits: {"smithy.api#documentation" => "<p>Specify a prefix of the name of the clusters that you want to list. The service lists all the clusters whose names start with this prefix.</p>", "smithy.api#httpQuery" => "clusterNameFilter"}))
    ListClustersRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return in the response. If there are more results, the response includes a NextToken parameter.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListClustersRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The paginated results marker. When the result of the operation is truncated, the call returns NextToken in the response. \n            To get the next batch, provide this token in your next request.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListClustersRequest.type = Types::ListClustersRequest
    ListClustersResponse.add_member(:cluster_info_list, Smithy::Schema::Shapes::ShapeRef.new(shape: Listofclusterinfo, location_name: 'ClusterInfoList', traits: {"smithy.api#documentation" => "<p>Information on each of the MSK clusters in the response.</p>", "smithy.api#jsonName" => "clusterInfoList"}))
    ListClustersResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The paginated results marker. When the result of a ListClusters operation is truncated, the call returns NextToken in the response. \n               To get another batch of clusters, provide this token in your next request.</p>", "smithy.api#jsonName" => "nextToken"}))
    ListClustersResponse.type = Types::ListClustersResponse
    ListClustersV2Request.add_member(:cluster_name_filter, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterNameFilter', traits: {"smithy.api#documentation" => "<p>Specify a prefix of the names of the clusters that you want to list. The service lists all the clusters whose names start with this prefix.</p>", "smithy.api#httpQuery" => "clusterNameFilter"}))
    ListClustersV2Request.add_member(:cluster_type_filter, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterTypeFilter', traits: {"smithy.api#documentation" => "<p>Specify either PROVISIONED or SERVERLESS.</p>", "smithy.api#httpQuery" => "clusterTypeFilter"}))
    ListClustersV2Request.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return in the response. If there are more results, the response includes a NextToken parameter.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListClustersV2Request.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The paginated results marker. When the result of the operation is truncated, the call returns NextToken in the response. \n            To get the next batch, provide this token in your next request.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListClustersV2Request.type = Types::ListClustersV2Request
    ListClustersV2Response.add_member(:cluster_info_list, Smithy::Schema::Shapes::ShapeRef.new(shape: Listofcluster, location_name: 'ClusterInfoList', traits: {"smithy.api#documentation" => "<p>Information on each of the MSK clusters in the response.</p>", "smithy.api#jsonName" => "clusterInfoList"}))
    ListClustersV2Response.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The paginated results marker. When the result of a ListClusters operation is truncated, the call returns NextToken in the response. \n               To get another batch of clusters, provide this token in your next request.</p>", "smithy.api#jsonName" => "nextToken"}))
    ListClustersV2Response.type = Types::ListClustersV2Response
    ListConfigurationRevisionsRequest.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that uniquely identifies an MSK configuration and all of its revisions.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListConfigurationRevisionsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return in the response. If there are more results, the response includes a NextToken parameter.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListConfigurationRevisionsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The paginated results marker. When the result of the operation is truncated, the call returns NextToken in the response. \n            To get the next batch, provide this token in your next request.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListConfigurationRevisionsRequest.type = Types::ListConfigurationRevisionsRequest
    ListConfigurationRevisionsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Paginated results marker.</p>", "smithy.api#jsonName" => "nextToken"}))
    ListConfigurationRevisionsResponse.add_member(:revisions, Smithy::Schema::Shapes::ShapeRef.new(shape: Listofconfigurationrevision, location_name: 'Revisions', traits: {"smithy.api#documentation" => "<p>List of ConfigurationRevision objects.</p>", "smithy.api#jsonName" => "revisions"}))
    ListConfigurationRevisionsResponse.type = Types::ListConfigurationRevisionsResponse
    ListConfigurationsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return in the response. If there are more results, the response includes a NextToken parameter.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListConfigurationsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The paginated results marker. When the result of the operation is truncated, the call returns NextToken in the response. \n            To get the next batch, provide this token in your next request.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListConfigurationsRequest.type = Types::ListConfigurationsRequest
    ListConfigurationsResponse.add_member(:configurations, Smithy::Schema::Shapes::ShapeRef.new(shape: Listofconfiguration, location_name: 'Configurations', traits: {"smithy.api#documentation" => "<p>An array of MSK configurations.</p>", "smithy.api#jsonName" => "configurations"}))
    ListConfigurationsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The paginated results marker. When the result of a ListConfigurations operation is truncated, the call returns NextToken in the response. \n               To get another batch of configurations, provide this token in your next request.</p>", "smithy.api#jsonName" => "nextToken"}))
    ListConfigurationsResponse.type = Types::ListConfigurationsResponse
    ListKafkaVersionsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return in the response. If there are more results, the response includes a NextToken parameter.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListKafkaVersionsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The paginated results marker. When the result of the operation is truncated, the call returns NextToken in the response. To get the next batch, provide this token in your next request.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListKafkaVersionsRequest.type = Types::ListKafkaVersionsRequest
    ListKafkaVersionsResponse.add_member(:kafka_versions, Smithy::Schema::Shapes::ShapeRef.new(shape: Listofkafkaversion, location_name: 'KafkaVersions', traits: {"smithy.api#jsonName" => "kafkaVersions"}))
    ListKafkaVersionsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#jsonName" => "nextToken"}))
    ListKafkaVersionsResponse.type = Types::ListKafkaVersionsResponse
    ListNodesRequest.add_member(:cluster_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that uniquely identifies the cluster.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListNodesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return in the response. If there are more results, the response includes a NextToken parameter.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListNodesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The paginated results marker. When the result of the operation is truncated, the call returns NextToken in the response. \n            To get the next batch, provide this token in your next request.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListNodesRequest.type = Types::ListNodesRequest
    ListNodesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The paginated results marker. When the result of a ListNodes operation is truncated, the call returns NextToken in the response. \n               To get another batch of nodes, provide this token in your next request.</p>", "smithy.api#jsonName" => "nextToken"}))
    ListNodesResponse.add_member(:node_info_list, Smithy::Schema::Shapes::ShapeRef.new(shape: Listofnodeinfo, location_name: 'NodeInfoList', traits: {"smithy.api#documentation" => "<p>List containing a NodeInfo object.</p>", "smithy.api#jsonName" => "nodeInfoList"}))
    ListNodesResponse.type = Types::ListNodesResponse
    ListReplicatorsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return in the response. If there are more results, the response includes a NextToken parameter.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListReplicatorsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If the response of ListReplicators is truncated, it returns a NextToken in the response. This NextToken should be sent in the subsequent request to ListReplicators.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListReplicatorsRequest.add_member(:replicator_name_filter, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReplicatorNameFilter', traits: {"smithy.api#documentation" => "<p>Returns replicators starting with given name.</p>", "smithy.api#httpQuery" => "replicatorNameFilter"}))
    ListReplicatorsRequest.type = Types::ListReplicatorsRequest
    ListReplicatorsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If the response of ListReplicators is truncated, it returns a NextToken in the response. This NextToken should be sent in the subsequent request to ListReplicators.</p>", "smithy.api#jsonName" => "nextToken"}))
    ListReplicatorsResponse.add_member(:replicators, Smithy::Schema::Shapes::ShapeRef.new(shape: Listofreplicatorsummary, location_name: 'Replicators', traits: {"smithy.api#documentation" => "<p>List containing information of each of the replicators in the account.</p>", "smithy.api#jsonName" => "replicators"}))
    ListReplicatorsResponse.type = Types::ListReplicatorsResponse
    ListScramSecretsRequest.add_member(:cluster_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterArn', traits: {"smithy.api#documentation" => "<p>The arn of the cluster.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListScramSecretsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maxResults of the query.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListScramSecretsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The nextToken of the query.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListScramSecretsRequest.type = Types::ListScramSecretsRequest
    ListScramSecretsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Paginated results marker.</p>", "smithy.api#jsonName" => "nextToken"}))
    ListScramSecretsResponse.add_member(:secret_arn_list, Smithy::Schema::Shapes::ShapeRef.new(shape: ListofString, location_name: 'SecretArnList', traits: {"smithy.api#documentation" => "<p>The list of scram secrets associated with the cluster.</p>", "smithy.api#jsonName" => "secretArnList"}))
    ListScramSecretsResponse.type = Types::ListScramSecretsResponse
    ListTagsForResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that uniquely identifies the resource that's associated with the tags.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: MapofString, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The key-value pair for the resource tag.</p>", "smithy.api#jsonName" => "tags"}))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ListVpcConnectionsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return in the response. If there are more results, the response includes a NextToken parameter.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListVpcConnectionsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The paginated results marker. When the result of the operation is truncated, the call returns NextToken in the response. \n            To get the next batch, provide this token in your next request.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListVpcConnectionsRequest.type = Types::ListVpcConnectionsRequest
    ListVpcConnectionsResponse.add_member(:vpc_connections, Smithy::Schema::Shapes::ShapeRef.new(shape: Listofvpcconnection, location_name: 'VpcConnections', traits: {"smithy.api#documentation" => "<p>List of VPC connections.</p>", "smithy.api#jsonName" => "vpcConnections"}))
    ListVpcConnectionsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The paginated results marker. When the result of a ListClientVpcConnections operation is truncated, the call returns NextToken in the response. \n               To get another batch of configurations, provide this token in your next request.</p>", "smithy.api#jsonName" => "nextToken"}))
    ListVpcConnectionsResponse.type = Types::ListVpcConnectionsResponse
    LoggingInfo.add_member(:broker_logs, Smithy::Schema::Shapes::ShapeRef.new(shape: BrokerLogs, location_name: 'BrokerLogs', traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "brokerLogs", "smithy.api#required" => {}}))
    LoggingInfo.type = Types::LoggingInfo
    MutableClusterInfo.add_member(:broker_ebs_volume_info, Smithy::Schema::Shapes::ShapeRef.new(shape: Listofbrokerebsvolumeinfo, location_name: 'BrokerEBSVolumeInfo', traits: {"smithy.api#documentation" => "<p>Specifies the size of the EBS volume and the ID of the associated broker.</p>", "smithy.api#jsonName" => "brokerEBSVolumeInfo"}))
    MutableClusterInfo.add_member(:configuration_info, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationInfo, location_name: 'ConfigurationInfo', traits: {"smithy.api#documentation" => "<p>Information about the changes in the configuration of the brokers.</p>", "smithy.api#jsonName" => "configurationInfo"}))
    MutableClusterInfo.add_member(:number_of_broker_nodes, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'NumberOfBrokerNodes', traits: {"smithy.api#documentation" => "<p>The number of broker nodes in the cluster.</p>", "smithy.api#jsonName" => "numberOfBrokerNodes"}))
    MutableClusterInfo.add_member(:enhanced_monitoring, Smithy::Schema::Shapes::ShapeRef.new(shape: EnhancedMonitoring, location_name: 'EnhancedMonitoring', traits: {"smithy.api#documentation" => "<p>Specifies which Apache Kafka metrics Amazon MSK gathers and sends to Amazon CloudWatch for this cluster.</p>", "smithy.api#jsonName" => "enhancedMonitoring"}))
    MutableClusterInfo.add_member(:open_monitoring, Smithy::Schema::Shapes::ShapeRef.new(shape: OpenMonitoring, location_name: 'OpenMonitoring', traits: {"smithy.api#documentation" => "<p>The settings for open monitoring.</p>", "smithy.api#jsonName" => "openMonitoring"}))
    MutableClusterInfo.add_member(:kafka_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'KafkaVersion', traits: {"smithy.api#documentation" => "<p>The Apache Kafka version.</p>", "smithy.api#jsonName" => "kafkaVersion"}))
    MutableClusterInfo.add_member(:logging_info, Smithy::Schema::Shapes::ShapeRef.new(shape: LoggingInfo, location_name: 'LoggingInfo', traits: {"smithy.api#documentation" => "<p>You can configure your MSK cluster to send broker logs to different destination types. This is a container for the configuration details related to broker logs.</p>", "smithy.api#jsonName" => "loggingInfo"}))
    MutableClusterInfo.add_member(:instance_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Stringmin5max32, location_name: 'InstanceType', traits: {"smithy.api#documentation" => "<p>Information about the Amazon MSK broker type.</p>", "smithy.api#jsonName" => "instanceType"}))
    MutableClusterInfo.add_member(:client_authentication, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientAuthentication, location_name: 'ClientAuthentication', traits: {"smithy.api#documentation" => "<p>Includes all client authentication information.</p>", "smithy.api#jsonName" => "clientAuthentication"}))
    MutableClusterInfo.add_member(:encryption_info, Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionInfo, location_name: 'EncryptionInfo', traits: {"smithy.api#documentation" => "<p>Includes all encryption-related information.</p>", "smithy.api#jsonName" => "encryptionInfo"}))
    MutableClusterInfo.add_member(:connectivity_info, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectivityInfo, location_name: 'ConnectivityInfo', traits: {"smithy.api#documentation" => "<p>Information about the broker access configuration.</p>", "smithy.api#jsonName" => "connectivityInfo"}))
    MutableClusterInfo.add_member(:storage_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: StorageMode, location_name: 'StorageMode', traits: {"smithy.api#documentation" => "<p>This controls storage mode for supported storage tiers.</p>", "smithy.api#jsonName" => "storageMode"}))
    MutableClusterInfo.add_member(:broker_count_update_info, Smithy::Schema::Shapes::ShapeRef.new(shape: BrokerCountUpdateInfo, location_name: 'BrokerCountUpdateInfo', traits: {"smithy.api#documentation" => "<p>Describes brokers being changed during a broker count update.</p>", "smithy.api#jsonName" => "brokerCountUpdateInfo"}))
    MutableClusterInfo.type = Types::MutableClusterInfo
    NodeExporter.add_member(:enabled_in_broker, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'EnabledInBroker', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>Indicates whether you want to turn on or turn off the Node Exporter.</p>", "smithy.api#jsonName" => "enabledInBroker", "smithy.api#required" => {}}))
    NodeExporter.type = Types::NodeExporter
    NodeExporterInfo.add_member(:enabled_in_broker, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'EnabledInBroker', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>Indicates whether you want to turn on or turn off the Node Exporter.</p>", "smithy.api#jsonName" => "enabledInBroker", "smithy.api#required" => {}}))
    NodeExporterInfo.type = Types::NodeExporterInfo
    NodeInfo.add_member(:added_to_cluster_time, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AddedToClusterTime', traits: {"smithy.api#documentation" => "<p>The start time.</p>", "smithy.api#jsonName" => "addedToClusterTime"}))
    NodeInfo.add_member(:broker_node_info, Smithy::Schema::Shapes::ShapeRef.new(shape: BrokerNodeInfo, location_name: 'BrokerNodeInfo', traits: {"smithy.api#documentation" => "<p>The broker node info.</p>", "smithy.api#jsonName" => "brokerNodeInfo"}))
    NodeInfo.add_member(:controller_node_info, Smithy::Schema::Shapes::ShapeRef.new(shape: ControllerNodeInfo, location_name: 'ControllerNodeInfo', traits: {"smithy.api#documentation" => "<p>The ControllerNodeInfo.</p>", "smithy.api#jsonName" => "controllerNodeInfo"}))
    NodeInfo.add_member(:instance_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'InstanceType', traits: {"smithy.api#documentation" => "<p>The instance type.</p>", "smithy.api#jsonName" => "instanceType"}))
    NodeInfo.add_member(:node_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NodeARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the node.</p>", "smithy.api#jsonName" => "nodeARN"}))
    NodeInfo.add_member(:node_type, Smithy::Schema::Shapes::ShapeRef.new(shape: NodeType, location_name: 'NodeType', traits: {"smithy.api#documentation" => "<p>The node type.</p>", "smithy.api#jsonName" => "nodeType"}))
    NodeInfo.add_member(:zookeeper_node_info, Smithy::Schema::Shapes::ShapeRef.new(shape: ZookeeperNodeInfo, location_name: 'ZookeeperNodeInfo', traits: {"smithy.api#documentation" => "<p>The ZookeeperNodeInfo.</p>", "smithy.api#jsonName" => "zookeeperNodeInfo"}))
    NodeInfo.type = Types::NodeInfo
    NodeType.add_member(:broker, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BROKER', traits: {"smithy.api#enumValue" => "BROKER"}))
    NotFoundException.add_member(:invalid_parameter, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'InvalidParameter', traits: {"smithy.api#documentation" => "<p>The parameter that caused the error.</p>", "smithy.api#jsonName" => "invalidParameter"}))
    NotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>The description of the error.</p>", "smithy.api#jsonName" => "message"}))
    NotFoundException.type = Types::NotFoundException
    OpenMonitoring.add_member(:prometheus, Smithy::Schema::Shapes::ShapeRef.new(shape: Prometheus, location_name: 'Prometheus', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>Prometheus settings.</p>", "smithy.api#jsonName" => "prometheus", "smithy.api#required" => {}}))
    OpenMonitoring.type = Types::OpenMonitoring
    OpenMonitoringInfo.add_member(:prometheus, Smithy::Schema::Shapes::ShapeRef.new(shape: PrometheusInfo, location_name: 'Prometheus', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>Prometheus settings.</p>", "smithy.api#jsonName" => "prometheus", "smithy.api#required" => {}}))
    OpenMonitoringInfo.type = Types::OpenMonitoringInfo
    Prometheus.add_member(:jmx_exporter, Smithy::Schema::Shapes::ShapeRef.new(shape: JmxExporter, location_name: 'JmxExporter', traits: {"smithy.api#documentation" => "<p>Indicates whether you want to turn on or turn off the JMX Exporter.</p>", "smithy.api#jsonName" => "jmxExporter"}))
    Prometheus.add_member(:node_exporter, Smithy::Schema::Shapes::ShapeRef.new(shape: NodeExporter, location_name: 'NodeExporter', traits: {"smithy.api#documentation" => "<p>Indicates whether you want to turn on or turn off the Node Exporter.</p>", "smithy.api#jsonName" => "nodeExporter"}))
    Prometheus.type = Types::Prometheus
    PrometheusInfo.add_member(:jmx_exporter, Smithy::Schema::Shapes::ShapeRef.new(shape: JmxExporterInfo, location_name: 'JmxExporter', traits: {"smithy.api#documentation" => "<p>Indicates whether you want to turn on or turn off the JMX Exporter.</p>", "smithy.api#jsonName" => "jmxExporter"}))
    PrometheusInfo.add_member(:node_exporter, Smithy::Schema::Shapes::ShapeRef.new(shape: NodeExporterInfo, location_name: 'NodeExporter', traits: {"smithy.api#documentation" => "<p>Indicates whether you want to turn on or turn off the Node Exporter.</p>", "smithy.api#jsonName" => "nodeExporter"}))
    PrometheusInfo.type = Types::PrometheusInfo
    Provisioned.add_member(:broker_node_group_info, Smithy::Schema::Shapes::ShapeRef.new(shape: BrokerNodeGroupInfo, location_name: 'BrokerNodeGroupInfo', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>Information about the brokers.</p>", "smithy.api#jsonName" => "brokerNodeGroupInfo", "smithy.api#required" => {}}))
    Provisioned.add_member(:current_broker_software_info, Smithy::Schema::Shapes::ShapeRef.new(shape: BrokerSoftwareInfo, location_name: 'CurrentBrokerSoftwareInfo', traits: {"smithy.api#documentation" => "<p>Information about the Apache Kafka version deployed on the brokers.</p>", "smithy.api#jsonName" => "currentBrokerSoftwareInfo"}))
    Provisioned.add_member(:client_authentication, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientAuthentication, location_name: 'ClientAuthentication', traits: {"smithy.api#documentation" => "<p>Includes all client authentication information.</p>", "smithy.api#jsonName" => "clientAuthentication"}))
    Provisioned.add_member(:encryption_info, Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionInfo, location_name: 'EncryptionInfo', traits: {"smithy.api#documentation" => "<p>Includes all encryption-related information.</p>", "smithy.api#jsonName" => "encryptionInfo"}))
    Provisioned.add_member(:enhanced_monitoring, Smithy::Schema::Shapes::ShapeRef.new(shape: EnhancedMonitoring, location_name: 'EnhancedMonitoring', traits: {"smithy.api#documentation" => "<p>Specifies the level of monitoring for the MSK cluster. The possible values are DEFAULT, PER_BROKER, PER_TOPIC_PER_BROKER, and PER_TOPIC_PER_PARTITION.</p>", "smithy.api#jsonName" => "enhancedMonitoring"}))
    Provisioned.add_member(:open_monitoring, Smithy::Schema::Shapes::ShapeRef.new(shape: OpenMonitoringInfo, location_name: 'OpenMonitoring', traits: {"smithy.api#documentation" => "<p>The settings for open monitoring.</p>", "smithy.api#jsonName" => "openMonitoring"}))
    Provisioned.add_member(:logging_info, Smithy::Schema::Shapes::ShapeRef.new(shape: LoggingInfo, location_name: 'LoggingInfo', traits: {"smithy.api#documentation" => "<p>Log delivery information for the cluster.</p>", "smithy.api#jsonName" => "loggingInfo"}))
    Provisioned.add_member(:number_of_broker_nodes, Smithy::Schema::Shapes::ShapeRef.new(shape: Integermin1max15, location_name: 'NumberOfBrokerNodes', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The number of broker nodes in the cluster.</p>", "smithy.api#jsonName" => "numberOfBrokerNodes", "smithy.api#required" => {}}))
    Provisioned.add_member(:zookeeper_connect_string, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ZookeeperConnectString', traits: {"smithy.api#documentation" => "<p>The connection string to use to connect to the Apache ZooKeeper cluster.</p>", "smithy.api#jsonName" => "zookeeperConnectString"}))
    Provisioned.add_member(:zookeeper_connect_string_tls, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ZookeeperConnectStringTls', traits: {"smithy.api#documentation" => "<p>The connection string to use to connect to the Apache ZooKeeper cluster on a TLS port.</p>", "smithy.api#jsonName" => "zookeeperConnectStringTls"}))
    Provisioned.add_member(:storage_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: StorageMode, location_name: 'StorageMode', traits: {"smithy.api#documentation" => "<p>This controls storage mode for supported storage tiers.</p>", "smithy.api#jsonName" => "storageMode"}))
    Provisioned.add_member(:customer_action_status, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerActionStatus, location_name: 'CustomerActionStatus', traits: {"smithy.api#documentation" => "<p>Determines if there is an action required from the customer.</p>", "smithy.api#jsonName" => "customerActionStatus"}))
    Provisioned.type = Types::Provisioned
    ProvisionedRequest.add_member(:broker_node_group_info, Smithy::Schema::Shapes::ShapeRef.new(shape: BrokerNodeGroupInfo, location_name: 'BrokerNodeGroupInfo', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>Information about the brokers.</p>", "smithy.api#jsonName" => "brokerNodeGroupInfo", "smithy.api#required" => {}}))
    ProvisionedRequest.add_member(:client_authentication, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientAuthentication, location_name: 'ClientAuthentication', traits: {"smithy.api#documentation" => "<p>Includes all client authentication information.</p>", "smithy.api#jsonName" => "clientAuthentication"}))
    ProvisionedRequest.add_member(:configuration_info, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationInfo, location_name: 'ConfigurationInfo', traits: {"smithy.api#documentation" => "<p>Represents the configuration that you want Amazon MSK to use for the brokers in a cluster.</p>", "smithy.api#jsonName" => "configurationInfo"}))
    ProvisionedRequest.add_member(:encryption_info, Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionInfo, location_name: 'EncryptionInfo', traits: {"smithy.api#documentation" => "<p>Includes all encryption-related information.</p>", "smithy.api#jsonName" => "encryptionInfo"}))
    ProvisionedRequest.add_member(:enhanced_monitoring, Smithy::Schema::Shapes::ShapeRef.new(shape: EnhancedMonitoring, location_name: 'EnhancedMonitoring', traits: {"smithy.api#documentation" => "<p>Specifies the level of monitoring for the MSK cluster. The possible values are DEFAULT, PER_BROKER, PER_TOPIC_PER_BROKER, and PER_TOPIC_PER_PARTITION.</p>", "smithy.api#jsonName" => "enhancedMonitoring"}))
    ProvisionedRequest.add_member(:open_monitoring, Smithy::Schema::Shapes::ShapeRef.new(shape: OpenMonitoringInfo, location_name: 'OpenMonitoring', traits: {"smithy.api#documentation" => "<p>The settings for open monitoring.</p>", "smithy.api#jsonName" => "openMonitoring"}))
    ProvisionedRequest.add_member(:kafka_version, Smithy::Schema::Shapes::ShapeRef.new(shape: Stringmin1max128, location_name: 'KafkaVersion', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The Apache Kafka version that you want for the cluster.</p>", "smithy.api#jsonName" => "kafkaVersion", "smithy.api#required" => {}}))
    ProvisionedRequest.add_member(:logging_info, Smithy::Schema::Shapes::ShapeRef.new(shape: LoggingInfo, location_name: 'LoggingInfo', traits: {"smithy.api#documentation" => "<p>Log delivery information for the cluster.</p>", "smithy.api#jsonName" => "loggingInfo"}))
    ProvisionedRequest.add_member(:number_of_broker_nodes, Smithy::Schema::Shapes::ShapeRef.new(shape: Integermin1max15, location_name: 'NumberOfBrokerNodes', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The number of broker nodes in the cluster.</p>", "smithy.api#jsonName" => "numberOfBrokerNodes", "smithy.api#required" => {}}))
    ProvisionedRequest.add_member(:storage_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: StorageMode, location_name: 'StorageMode', traits: {"smithy.api#documentation" => "<p>This controls storage mode for supported storage tiers.</p>", "smithy.api#jsonName" => "storageMode"}))
    ProvisionedRequest.type = Types::ProvisionedRequest
    ProvisionedThroughput.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Enabled', traits: {"smithy.api#documentation" => "<p>Provisioned throughput is enabled or not.</p>", "smithy.api#jsonName" => "enabled"}))
    ProvisionedThroughput.add_member(:volume_throughput, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'VolumeThroughput', traits: {"smithy.api#documentation" => "<p>Throughput value of the EBS volumes for the data drive on each kafka broker node in MiB per second.</p>", "smithy.api#jsonName" => "volumeThroughput"}))
    ProvisionedThroughput.type = Types::ProvisionedThroughput
    PublicAccess.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The value DISABLED indicates that public access is turned off. SERVICE_PROVIDED_EIPS indicates that public access is turned on.</p>", "smithy.api#jsonName" => "type"}))
    PublicAccess.type = Types::PublicAccess
    PutClusterPolicyRequest.add_member(:cluster_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the cluster.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutClusterPolicyRequest.add_member(:current_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CurrentVersion', traits: {"smithy.api#documentation" => "<p>The policy version.</p>", "smithy.api#jsonName" => "currentVersion"}))
    PutClusterPolicyRequest.add_member(:policy, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Policy', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The policy.</p>", "smithy.api#jsonName" => "policy", "smithy.api#required" => {}}))
    PutClusterPolicyRequest.type = Types::PutClusterPolicyRequest
    PutClusterPolicyResponse.add_member(:current_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CurrentVersion', traits: {"smithy.api#documentation" => "<p>The policy version.</p>", "smithy.api#jsonName" => "currentVersion"}))
    PutClusterPolicyResponse.type = Types::PutClusterPolicyResponse
    RebootBrokerRequest.add_member(:broker_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: ListofString, location_name: 'BrokerIds', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The list of broker IDs to be rebooted. The reboot-broker operation supports rebooting one broker at a time.</p>", "smithy.api#jsonName" => "brokerIds", "smithy.api#required" => {}}))
    RebootBrokerRequest.add_member(:cluster_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the cluster to be updated.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RebootBrokerRequest.type = Types::RebootBrokerRequest
    RebootBrokerResponse.add_member(:cluster_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the cluster.</p>", "smithy.api#jsonName" => "clusterArn"}))
    RebootBrokerResponse.add_member(:cluster_operation_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterOperationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the cluster operation.</p>", "smithy.api#jsonName" => "clusterOperationArn"}))
    RebootBrokerResponse.type = Types::RebootBrokerResponse
    RejectClientVpcConnectionRequest.add_member(:cluster_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the cluster.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RejectClientVpcConnectionRequest.add_member(:vpc_connection_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VpcConnectionArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The VPC connection ARN.</p>", "smithy.api#jsonName" => "vpcConnectionArn", "smithy.api#required" => {}}))
    RejectClientVpcConnectionRequest.type = Types::RejectClientVpcConnectionRequest
    RejectClientVpcConnectionResponse.type = Types::RejectClientVpcConnectionResponse
    ReplicationInfo.add_member(:consumer_group_replication, Smithy::Schema::Shapes::ShapeRef.new(shape: ConsumerGroupReplication, location_name: 'ConsumerGroupReplication', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>Configuration relating to consumer group replication.</p>", "smithy.api#jsonName" => "consumerGroupReplication", "smithy.api#required" => {}}))
    ReplicationInfo.add_member(:source_kafka_cluster_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceKafkaClusterArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The ARN of the source Kafka cluster.</p>", "smithy.api#jsonName" => "sourceKafkaClusterArn", "smithy.api#required" => {}}))
    ReplicationInfo.add_member(:target_compression_type, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetCompressionType, location_name: 'TargetCompressionType', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The compression type to use when producing records to target cluster.</p>", "smithy.api#jsonName" => "targetCompressionType", "smithy.api#required" => {}}))
    ReplicationInfo.add_member(:target_kafka_cluster_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TargetKafkaClusterArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The ARN of the target Kafka cluster.</p>", "smithy.api#jsonName" => "targetKafkaClusterArn", "smithy.api#required" => {}}))
    ReplicationInfo.add_member(:topic_replication, Smithy::Schema::Shapes::ShapeRef.new(shape: TopicReplication, location_name: 'TopicReplication', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>Configuration relating to topic replication.</p>", "smithy.api#jsonName" => "topicReplication", "smithy.api#required" => {}}))
    ReplicationInfo.type = Types::ReplicationInfo
    ReplicationInfoDescription.add_member(:consumer_group_replication, Smithy::Schema::Shapes::ShapeRef.new(shape: ConsumerGroupReplication, location_name: 'ConsumerGroupReplication', traits: {"smithy.api#documentation" => "<p>Configuration relating to consumer group replication.</p>", "smithy.api#jsonName" => "consumerGroupReplication"}))
    ReplicationInfoDescription.add_member(:source_kafka_cluster_alias, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceKafkaClusterAlias', traits: {"smithy.api#documentation" => "<p>The alias of the source Kafka cluster.</p>", "smithy.api#jsonName" => "sourceKafkaClusterAlias"}))
    ReplicationInfoDescription.add_member(:target_compression_type, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetCompressionType, location_name: 'TargetCompressionType', traits: {"smithy.api#documentation" => "<p>The compression type to use when producing records to target cluster.</p>", "smithy.api#jsonName" => "targetCompressionType"}))
    ReplicationInfoDescription.add_member(:target_kafka_cluster_alias, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TargetKafkaClusterAlias', traits: {"smithy.api#documentation" => "<p>The alias of the target Kafka cluster.</p>", "smithy.api#jsonName" => "targetKafkaClusterAlias"}))
    ReplicationInfoDescription.add_member(:topic_replication, Smithy::Schema::Shapes::ShapeRef.new(shape: TopicReplication, location_name: 'TopicReplication', traits: {"smithy.api#documentation" => "<p>Configuration relating to topic replication.</p>", "smithy.api#jsonName" => "topicReplication"}))
    ReplicationInfoDescription.type = Types::ReplicationInfoDescription
    ReplicationInfoSummary.add_member(:source_kafka_cluster_alias, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceKafkaClusterAlias', traits: {"smithy.api#documentation" => "<p>The alias of the source Kafka cluster.</p>", "smithy.api#jsonName" => "sourceKafkaClusterAlias"}))
    ReplicationInfoSummary.add_member(:target_kafka_cluster_alias, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TargetKafkaClusterAlias', traits: {"smithy.api#documentation" => "<p>The alias of the target Kafka cluster.</p>", "smithy.api#jsonName" => "targetKafkaClusterAlias"}))
    ReplicationInfoSummary.type = Types::ReplicationInfoSummary
    ReplicationStartingPosition.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationStartingPositionType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The type of replication starting position.</p>", "smithy.api#jsonName" => "type"}))
    ReplicationStartingPosition.type = Types::ReplicationStartingPosition
    ReplicationStartingPositionType.add_member(:latest, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LATEST', traits: {"smithy.api#enumValue" => "LATEST"}))
    ReplicationStartingPositionType.add_member(:earliest, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EARLIEST', traits: {"smithy.api#enumValue" => "EARLIEST"}))
    ReplicationStateInfo.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Code', traits: {"smithy.api#documentation" => "Code that describes the current state of the replicator.", "smithy.api#jsonName" => "code"}))
    ReplicationStateInfo.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#documentation" => "Message that describes the state of the replicator.", "smithy.api#jsonName" => "message"}))
    ReplicationStateInfo.type = Types::ReplicationStateInfo
    ReplicationTopicNameConfiguration.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationTopicNameConfigurationType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The type of replicated topic name.</p>", "smithy.api#jsonName" => "type"}))
    ReplicationTopicNameConfiguration.type = Types::ReplicationTopicNameConfiguration
    ReplicationTopicNameConfigurationType.add_member(:prefixed_with_source_cluster_alias, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PREFIXED_WITH_SOURCE_CLUSTER_ALIAS', traits: {"smithy.api#enumValue" => "PREFIXED_WITH_SOURCE_CLUSTER_ALIAS"}))
    ReplicationTopicNameConfigurationType.add_member(:identical, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IDENTICAL', traits: {"smithy.api#enumValue" => "IDENTICAL"}))
    ReplicatorState.add_member(:running, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RUNNING', traits: {"smithy.api#enumValue" => "RUNNING"}))
    ReplicatorState.add_member(:creating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "CREATING"}))
    ReplicatorState.add_member(:updating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATING', traits: {"smithy.api#enumValue" => "UPDATING"}))
    ReplicatorState.add_member(:deleting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    ReplicatorState.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    ReplicatorSummary.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'CreationTime', traits: {"smithy.api#documentation" => "<p>The time the replicator was created.</p>", "smithy.api#jsonName" => "creationTime"}))
    ReplicatorSummary.add_member(:current_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CurrentVersion', traits: {"smithy.api#documentation" => "<p>The current version of the replicator.</p>", "smithy.api#jsonName" => "currentVersion"}))
    ReplicatorSummary.add_member(:is_replicator_reference, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IsReplicatorReference', traits: {"smithy.api#documentation" => "<p>Whether this resource is a replicator reference.</p>", "smithy.api#jsonName" => "isReplicatorReference"}))
    ReplicatorSummary.add_member(:kafka_clusters_summary, Smithy::Schema::Shapes::ShapeRef.new(shape: Listofkafkaclustersummary, location_name: 'KafkaClustersSummary', traits: {"smithy.api#documentation" => "<p>Kafka Clusters used in setting up sources / targets for replication.</p>", "smithy.api#jsonName" => "kafkaClustersSummary"}))
    ReplicatorSummary.add_member(:replication_info_summary_list, Smithy::Schema::Shapes::ShapeRef.new(shape: Listofreplicationinfosummary, location_name: 'ReplicationInfoSummaryList', traits: {"smithy.api#documentation" => "<p>A list of summarized information of replications between clusters.</p>", "smithy.api#jsonName" => "replicationInfoSummaryList"}))
    ReplicatorSummary.add_member(:replicator_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReplicatorArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the replicator.</p>", "smithy.api#jsonName" => "replicatorArn"}))
    ReplicatorSummary.add_member(:replicator_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReplicatorName', traits: {"smithy.api#documentation" => "<p>The name of the replicator.</p>", "smithy.api#jsonName" => "replicatorName"}))
    ReplicatorSummary.add_member(:replicator_resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReplicatorResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the replicator resource in the region where the replicator was created.</p>", "smithy.api#jsonName" => "replicatorResourceArn"}))
    ReplicatorSummary.add_member(:replicator_state, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicatorState, location_name: 'ReplicatorState', traits: {"smithy.api#documentation" => "<p>State of the replicator.</p>", "smithy.api#jsonName" => "replicatorState"}))
    ReplicatorSummary.type = Types::ReplicatorSummary
    S3.add_member(:bucket, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Bucket', traits: {"smithy.api#jsonName" => "bucket"}))
    S3.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Enabled', traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "enabled", "smithy.api#required" => {}}))
    S3.add_member(:prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Prefix', traits: {"smithy.api#jsonName" => "prefix"}))
    S3.type = Types::S3
    Sasl.add_member(:scram, Smithy::Schema::Shapes::ShapeRef.new(shape: Scram, location_name: 'Scram', traits: {"smithy.api#documentation" => "<p>Details for SASL/SCRAM client authentication.</p>", "smithy.api#jsonName" => "scram"}))
    Sasl.add_member(:iam, Smithy::Schema::Shapes::ShapeRef.new(shape: Iam, location_name: 'Iam', traits: {"smithy.api#documentation" => "<p>Indicates whether IAM access control is enabled.</p>", "smithy.api#jsonName" => "iam"}))
    Sasl.type = Types::Sasl
    Scram.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Enabled', traits: {"smithy.api#documentation" => "<p>SASL/SCRAM authentication is enabled or not.</p>", "smithy.api#jsonName" => "enabled"}))
    Scram.type = Types::Scram
    Serverless.add_member(:vpc_configs, Smithy::Schema::Shapes::ShapeRef.new(shape: Listofvpcconfig, location_name: 'VpcConfigs', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The configuration of the Amazon VPCs for the cluster.</p>", "smithy.api#jsonName" => "vpcConfigs", "smithy.api#required" => {}}))
    Serverless.add_member(:client_authentication, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerlessClientAuthentication, location_name: 'ClientAuthentication', traits: {"smithy.api#documentation" => "<p>Includes all client authentication information.</p>", "smithy.api#jsonName" => "clientAuthentication"}))
    Serverless.type = Types::Serverless
    ServerlessClientAuthentication.add_member(:sasl, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerlessSasl, location_name: 'Sasl', traits: {"smithy.api#documentation" => "<p>Details for ClientAuthentication using SASL.</p>", "smithy.api#jsonName" => "sasl"}))
    ServerlessClientAuthentication.type = Types::ServerlessClientAuthentication
    ServerlessRequest.add_member(:vpc_configs, Smithy::Schema::Shapes::ShapeRef.new(shape: Listofvpcconfig, location_name: 'VpcConfigs', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The configuration of the Amazon VPCs for the cluster.</p>", "smithy.api#jsonName" => "vpcConfigs", "smithy.api#required" => {}}))
    ServerlessRequest.add_member(:client_authentication, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerlessClientAuthentication, location_name: 'ClientAuthentication', traits: {"smithy.api#documentation" => "<p>Includes all client authentication information.</p>", "smithy.api#jsonName" => "clientAuthentication"}))
    ServerlessRequest.type = Types::ServerlessRequest
    ServerlessSasl.add_member(:iam, Smithy::Schema::Shapes::ShapeRef.new(shape: Iam, location_name: 'Iam', traits: {"smithy.api#documentation" => "<p>Indicates whether IAM access control is enabled.</p>", "smithy.api#jsonName" => "iam"}))
    ServerlessSasl.type = Types::ServerlessSasl
    ServiceUnavailableException.add_member(:invalid_parameter, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'InvalidParameter', traits: {"smithy.api#documentation" => "<p>The parameter that caused the error.</p>", "smithy.api#jsonName" => "invalidParameter"}))
    ServiceUnavailableException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>The description of the error.</p>", "smithy.api#jsonName" => "message"}))
    ServiceUnavailableException.type = Types::ServiceUnavailableException
    StateInfo.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Code', traits: {"smithy.api#jsonName" => "code"}))
    StateInfo.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#jsonName" => "message"}))
    StateInfo.type = Types::StateInfo
    StorageInfo.add_member(:ebs_storage_info, Smithy::Schema::Shapes::ShapeRef.new(shape: EBSStorageInfo, location_name: 'EbsStorageInfo', traits: {"smithy.api#documentation" => "<p>EBS volume information.</p>", "smithy.api#jsonName" => "ebsStorageInfo"}))
    StorageInfo.type = Types::StorageInfo
    StorageMode.add_member(:local, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LOCAL', traits: {"smithy.api#enumValue" => "LOCAL"}))
    StorageMode.add_member(:tiered, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TIERED', traits: {"smithy.api#enumValue" => "TIERED"}))
    TagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that uniquely identifies the resource that's associated with the tags.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: MapofString, location_name: 'Tags', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The key-value pair for the resource tag.</p>", "smithy.api#jsonName" => "tags", "smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TargetCompressionType.add_member(:none, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NONE', traits: {"smithy.api#enumValue" => "NONE"}))
    TargetCompressionType.add_member(:gzip, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GZIP', traits: {"smithy.api#enumValue" => "GZIP"}))
    TargetCompressionType.add_member(:snappy, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SNAPPY', traits: {"smithy.api#enumValue" => "SNAPPY"}))
    TargetCompressionType.add_member(:lz4, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LZ4', traits: {"smithy.api#enumValue" => "LZ4"}))
    TargetCompressionType.add_member(:zstd, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ZSTD', traits: {"smithy.api#enumValue" => "ZSTD"}))
    Tls.add_member(:certificate_authority_arn_list, Smithy::Schema::Shapes::ShapeRef.new(shape: ListofString, location_name: 'CertificateAuthorityArnList', traits: {"smithy.api#documentation" => "<p>List of ACM Certificate Authority ARNs.</p>", "smithy.api#jsonName" => "certificateAuthorityArnList"}))
    Tls.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Enabled', traits: {"smithy.api#documentation" => "<p>Specifies whether you want to turn on or turn off TLS authentication.</p>", "smithy.api#jsonName" => "enabled"}))
    Tls.type = Types::Tls
    TooManyRequestsException.add_member(:invalid_parameter, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'InvalidParameter', traits: {"smithy.api#documentation" => "<p>The parameter that caused the error.</p>", "smithy.api#jsonName" => "invalidParameter"}))
    TooManyRequestsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>The description of the error.</p>", "smithy.api#jsonName" => "message"}))
    TooManyRequestsException.type = Types::TooManyRequestsException
    TopicReplication.add_member(:copy_access_control_lists_for_topics, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'CopyAccessControlListsForTopics', traits: {"smithy.api#documentation" => "<p>Whether to periodically configure remote topic ACLs to match their corresponding upstream topics.</p>", "smithy.api#jsonName" => "copyAccessControlListsForTopics"}))
    TopicReplication.add_member(:copy_topic_configurations, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'CopyTopicConfigurations', traits: {"smithy.api#documentation" => "<p>Whether to periodically configure remote topics to match their corresponding upstream topics.</p>", "smithy.api#jsonName" => "copyTopicConfigurations"}))
    TopicReplication.add_member(:detect_and_copy_new_topics, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'DetectAndCopyNewTopics', traits: {"smithy.api#documentation" => "<p>Whether to periodically check for new topics and partitions.</p>", "smithy.api#jsonName" => "detectAndCopyNewTopics"}))
    TopicReplication.add_member(:starting_position, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationStartingPosition, location_name: 'StartingPosition', traits: {"smithy.api#documentation" => "<p>Configuration for specifying the position in the topics to start replicating from.</p>", "smithy.api#jsonName" => "startingPosition"}))
    TopicReplication.add_member(:topic_name_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationTopicNameConfiguration, location_name: 'TopicNameConfiguration', traits: {"smithy.api#documentation" => "<p>Configuration for specifying replicated topic names should be the same as their corresponding upstream topics or prefixed with source cluster alias.</p>", "smithy.api#jsonName" => "topicNameConfiguration"}))
    TopicReplication.add_member(:topics_to_exclude, Smithy::Schema::Shapes::ShapeRef.new(shape: ListofStringmax249, location_name: 'TopicsToExclude', traits: {"smithy.api#documentation" => "<p>List of regular expression patterns indicating the topics that should not be replicated.</p>", "smithy.api#jsonName" => "topicsToExclude"}))
    TopicReplication.add_member(:topics_to_replicate, Smithy::Schema::Shapes::ShapeRef.new(shape: ListofStringmax249, location_name: 'TopicsToReplicate', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>List of regular expression patterns indicating the topics to copy.</p>", "smithy.api#jsonName" => "topicsToReplicate", "smithy.api#required" => {}}))
    TopicReplication.type = Types::TopicReplication
    TopicReplicationUpdate.add_member(:copy_access_control_lists_for_topics, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'CopyAccessControlListsForTopics', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>Whether to periodically configure remote topic ACLs to match their corresponding upstream topics.</p>", "smithy.api#jsonName" => "copyAccessControlListsForTopics", "smithy.api#required" => {}}))
    TopicReplicationUpdate.add_member(:copy_topic_configurations, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'CopyTopicConfigurations', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>Whether to periodically configure remote topics to match their corresponding upstream topics.</p>", "smithy.api#jsonName" => "copyTopicConfigurations", "smithy.api#required" => {}}))
    TopicReplicationUpdate.add_member(:detect_and_copy_new_topics, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'DetectAndCopyNewTopics', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>Whether to periodically check for new topics and partitions.</p>", "smithy.api#jsonName" => "detectAndCopyNewTopics", "smithy.api#required" => {}}))
    TopicReplicationUpdate.add_member(:topics_to_exclude, Smithy::Schema::Shapes::ShapeRef.new(shape: ListofStringmax249, location_name: 'TopicsToExclude', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>List of regular expression patterns indicating the topics that should not be replicated.</p>", "smithy.api#jsonName" => "topicsToExclude", "smithy.api#required" => {}}))
    TopicReplicationUpdate.add_member(:topics_to_replicate, Smithy::Schema::Shapes::ShapeRef.new(shape: ListofStringmax249, location_name: 'TopicsToReplicate', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>List of regular expression patterns indicating the topics to copy.</p>", "smithy.api#jsonName" => "topicsToReplicate", "smithy.api#required" => {}}))
    TopicReplicationUpdate.type = Types::TopicReplicationUpdate
    Unauthenticated.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Enabled', traits: {"smithy.api#documentation" => "<p>Specifies whether you want to turn on or turn off unauthenticated traffic to your cluster.</p>", "smithy.api#jsonName" => "enabled"}))
    Unauthenticated.type = Types::Unauthenticated
    UnauthorizedException.add_member(:invalid_parameter, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'InvalidParameter', traits: {"smithy.api#documentation" => "<p>The parameter that caused the error.</p>", "smithy.api#jsonName" => "invalidParameter"}))
    UnauthorizedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>The description of the error.</p>", "smithy.api#jsonName" => "message"}))
    UnauthorizedException.type = Types::UnauthorizedException
    UnprocessedScramSecret.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ErrorCode', traits: {"smithy.api#documentation" => "<p>Error code for associate/disassociate failure.</p>", "smithy.api#jsonName" => "errorCode"}))
    UnprocessedScramSecret.add_member(:error_message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ErrorMessage', traits: {"smithy.api#documentation" => "<p>Error message for associate/disassociate failure.</p>", "smithy.api#jsonName" => "errorMessage"}))
    UnprocessedScramSecret.add_member(:secret_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SecretArn', traits: {"smithy.api#documentation" => "<p>AWS Secrets Manager secret ARN.</p>", "smithy.api#jsonName" => "secretArn"}))
    UnprocessedScramSecret.type = Types::UnprocessedScramSecret
    UntagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that uniquely identifies the resource that's associated with the tags.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: ListofString, location_name: 'TagKeys', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>Tag keys must be unique for a given cluster. In addition, the following restrictions apply:</p>\n            <ul>\n               <li>\n                  <p>Each tag key must be unique. If you add a tag with a key that's already in\n                  use, your new tag overwrites the existing key-value pair. </p>\n               </li>\n               <li>\n                  <p>You can't start a tag key with aws: because this prefix is reserved for use\n                  by  AWS.  AWS creates tags that begin with this prefix on your behalf, but\n                  you can't edit or delete them.</p>\n               </li>\n               <li>\n                  <p>Tag keys must be between 1 and 128 Unicode characters in length.</p>\n               </li>\n               <li>\n                  <p>Tag keys must consist of the following characters: Unicode letters, digits,\n                  white space, and the following special characters: _ . / = + -\n                     @.</p>\n               </li>\n            </ul>", "smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UpdateBrokerCountRequest.add_member(:cluster_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that uniquely identifies the cluster.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateBrokerCountRequest.add_member(:current_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CurrentVersion', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The version of cluster to update from. A successful operation will then generate a new version.</p>", "smithy.api#jsonName" => "currentVersion", "smithy.api#required" => {}}))
    UpdateBrokerCountRequest.add_member(:target_number_of_broker_nodes, Smithy::Schema::Shapes::ShapeRef.new(shape: Integermin1max15, location_name: 'TargetNumberOfBrokerNodes', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The number of broker nodes that you want the cluster to have after this operation completes successfully.</p>", "smithy.api#jsonName" => "targetNumberOfBrokerNodes", "smithy.api#required" => {}}))
    UpdateBrokerCountRequest.type = Types::UpdateBrokerCountRequest
    UpdateBrokerCountResponse.add_member(:cluster_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the cluster.</p>", "smithy.api#jsonName" => "clusterArn"}))
    UpdateBrokerCountResponse.add_member(:cluster_operation_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterOperationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the cluster operation.</p>", "smithy.api#jsonName" => "clusterOperationArn"}))
    UpdateBrokerCountResponse.type = Types::UpdateBrokerCountResponse
    UpdateBrokerStorageRequest.add_member(:cluster_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that uniquely identifies the cluster.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateBrokerStorageRequest.add_member(:current_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CurrentVersion', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The version of cluster to update from. A successful operation will then generate a new version.</p>", "smithy.api#jsonName" => "currentVersion", "smithy.api#required" => {}}))
    UpdateBrokerStorageRequest.add_member(:target_broker_ebs_volume_info, Smithy::Schema::Shapes::ShapeRef.new(shape: Listofbrokerebsvolumeinfo, location_name: 'TargetBrokerEBSVolumeInfo', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>Describes the target volume size and the ID of the broker to apply the update to.</p>", "smithy.api#jsonName" => "targetBrokerEBSVolumeInfo", "smithy.api#required" => {}}))
    UpdateBrokerStorageRequest.type = Types::UpdateBrokerStorageRequest
    UpdateBrokerStorageResponse.add_member(:cluster_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the cluster.</p>", "smithy.api#jsonName" => "clusterArn"}))
    UpdateBrokerStorageResponse.add_member(:cluster_operation_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterOperationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the cluster operation.</p>", "smithy.api#jsonName" => "clusterOperationArn"}))
    UpdateBrokerStorageResponse.type = Types::UpdateBrokerStorageResponse
    UpdateBrokerTypeRequest.add_member(:cluster_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that uniquely identifies the cluster.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateBrokerTypeRequest.add_member(:current_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CurrentVersion', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The cluster version that you want to change. After this operation completes successfully, the cluster will have a new version.</p>", "smithy.api#jsonName" => "currentVersion", "smithy.api#required" => {}}))
    UpdateBrokerTypeRequest.add_member(:target_instance_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TargetInstanceType', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The Amazon MSK broker type that you want all of the brokers in this cluster to be.</p>", "smithy.api#jsonName" => "targetInstanceType", "smithy.api#required" => {}}))
    UpdateBrokerTypeRequest.type = Types::UpdateBrokerTypeRequest
    UpdateBrokerTypeResponse.add_member(:cluster_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the cluster.</p>", "smithy.api#jsonName" => "clusterArn"}))
    UpdateBrokerTypeResponse.add_member(:cluster_operation_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterOperationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the cluster operation.</p>", "smithy.api#jsonName" => "clusterOperationArn"}))
    UpdateBrokerTypeResponse.type = Types::UpdateBrokerTypeResponse
    UpdateClusterConfigurationRequest.add_member(:cluster_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that uniquely identifies the cluster.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateClusterConfigurationRequest.add_member(:configuration_info, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationInfo, location_name: 'ConfigurationInfo', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>Represents the configuration that you want MSK to use for the brokers in a cluster.</p>", "smithy.api#jsonName" => "configurationInfo", "smithy.api#required" => {}}))
    UpdateClusterConfigurationRequest.add_member(:current_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CurrentVersion', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The version of the cluster that needs to be updated.</p>", "smithy.api#jsonName" => "currentVersion", "smithy.api#required" => {}}))
    UpdateClusterConfigurationRequest.type = Types::UpdateClusterConfigurationRequest
    UpdateClusterConfigurationResponse.add_member(:cluster_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the cluster.</p>", "smithy.api#jsonName" => "clusterArn"}))
    UpdateClusterConfigurationResponse.add_member(:cluster_operation_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterOperationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the cluster operation.</p>", "smithy.api#jsonName" => "clusterOperationArn"}))
    UpdateClusterConfigurationResponse.type = Types::UpdateClusterConfigurationResponse
    UpdateClusterKafkaVersionRequest.add_member(:cluster_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the cluster to be updated.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateClusterKafkaVersionRequest.add_member(:configuration_info, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationInfo, location_name: 'ConfigurationInfo', traits: {"smithy.api#documentation" => "<p>The custom configuration that should be applied on the new version of cluster.</p>", "smithy.api#jsonName" => "configurationInfo"}))
    UpdateClusterKafkaVersionRequest.add_member(:current_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CurrentVersion', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>Current cluster version.</p>", "smithy.api#jsonName" => "currentVersion", "smithy.api#required" => {}}))
    UpdateClusterKafkaVersionRequest.add_member(:target_kafka_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TargetKafkaVersion', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>Target Kafka version.</p>", "smithy.api#jsonName" => "targetKafkaVersion", "smithy.api#required" => {}}))
    UpdateClusterKafkaVersionRequest.type = Types::UpdateClusterKafkaVersionRequest
    UpdateClusterKafkaVersionResponse.add_member(:cluster_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the cluster.</p>", "smithy.api#jsonName" => "clusterArn"}))
    UpdateClusterKafkaVersionResponse.add_member(:cluster_operation_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterOperationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the cluster operation.</p>", "smithy.api#jsonName" => "clusterOperationArn"}))
    UpdateClusterKafkaVersionResponse.type = Types::UpdateClusterKafkaVersionResponse
    UpdateConfigurationRequest.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the configuration.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateConfigurationRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the configuration revision.</p>", "smithy.api#jsonName" => "description"}))
    UpdateConfigurationRequest.add_member(:server_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: Blob, location_name: 'ServerProperties', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>Contents of the <filename>server.properties</filename> file. When using the API, you must ensure that the contents of the file are base64 encoded. \n               When using the AWS Management Console, the SDK, or the AWS CLI, the contents of <filename>server.properties</filename> can be in plaintext.</p>", "smithy.api#jsonName" => "serverProperties", "smithy.api#required" => {}}))
    UpdateConfigurationRequest.type = Types::UpdateConfigurationRequest
    UpdateConfigurationResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the configuration.</p>", "smithy.api#jsonName" => "arn"}))
    UpdateConfigurationResponse.add_member(:latest_revision, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationRevision, location_name: 'LatestRevision', traits: {"smithy.api#documentation" => "<p>Latest revision of the configuration.</p>", "smithy.api#jsonName" => "latestRevision"}))
    UpdateConfigurationResponse.type = Types::UpdateConfigurationResponse
    UpdateConnectivityRequest.add_member(:cluster_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the configuration.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateConnectivityRequest.add_member(:connectivity_info, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectivityInfo, location_name: 'ConnectivityInfo', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>Information about the broker access configuration.</p>", "smithy.api#jsonName" => "connectivityInfo", "smithy.api#required" => {}}))
    UpdateConnectivityRequest.add_member(:current_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CurrentVersion', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The version of the MSK cluster to update. Cluster versions aren't simple numbers. You can describe an MSK cluster to find its version. When this update operation is successful, it generates a new cluster version.</p>", "smithy.api#jsonName" => "currentVersion", "smithy.api#required" => {}}))
    UpdateConnectivityRequest.type = Types::UpdateConnectivityRequest
    UpdateConnectivityResponse.add_member(:cluster_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the cluster.</p>", "smithy.api#jsonName" => "clusterArn"}))
    UpdateConnectivityResponse.add_member(:cluster_operation_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterOperationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the cluster operation.</p>", "smithy.api#jsonName" => "clusterOperationArn"}))
    UpdateConnectivityResponse.type = Types::UpdateConnectivityResponse
    UpdateMonitoringRequest.add_member(:cluster_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that uniquely identifies the cluster.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateMonitoringRequest.add_member(:current_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CurrentVersion', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The version of the MSK cluster to update. Cluster versions aren't simple numbers. You can describe an MSK cluster to find its version. When this update operation is successful, it generates a new cluster version.</p>", "smithy.api#jsonName" => "currentVersion", "smithy.api#required" => {}}))
    UpdateMonitoringRequest.add_member(:enhanced_monitoring, Smithy::Schema::Shapes::ShapeRef.new(shape: EnhancedMonitoring, location_name: 'EnhancedMonitoring', traits: {"smithy.api#documentation" => "<p>Specifies which Apache Kafka metrics Amazon MSK gathers and sends to Amazon CloudWatch for this cluster.</p>", "smithy.api#jsonName" => "enhancedMonitoring"}))
    UpdateMonitoringRequest.add_member(:open_monitoring, Smithy::Schema::Shapes::ShapeRef.new(shape: OpenMonitoringInfo, location_name: 'OpenMonitoring', traits: {"smithy.api#documentation" => "<p>The settings for open monitoring.</p>", "smithy.api#jsonName" => "openMonitoring"}))
    UpdateMonitoringRequest.add_member(:logging_info, Smithy::Schema::Shapes::ShapeRef.new(shape: LoggingInfo, location_name: 'LoggingInfo', traits: {"smithy.api#jsonName" => "loggingInfo"}))
    UpdateMonitoringRequest.type = Types::UpdateMonitoringRequest
    UpdateMonitoringResponse.add_member(:cluster_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the cluster.</p>", "smithy.api#jsonName" => "clusterArn"}))
    UpdateMonitoringResponse.add_member(:cluster_operation_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterOperationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the cluster operation.</p>", "smithy.api#jsonName" => "clusterOperationArn"}))
    UpdateMonitoringResponse.type = Types::UpdateMonitoringResponse
    UpdateReplicationInfoRequest.add_member(:consumer_group_replication, Smithy::Schema::Shapes::ShapeRef.new(shape: ConsumerGroupReplicationUpdate, location_name: 'ConsumerGroupReplication', traits: {"smithy.api#documentation" => "<p>Updated consumer group replication information.</p>", "smithy.api#jsonName" => "consumerGroupReplication"}))
    UpdateReplicationInfoRequest.add_member(:current_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CurrentVersion', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>Current replicator version.</p>", "smithy.api#jsonName" => "currentVersion", "smithy.api#required" => {}}))
    UpdateReplicationInfoRequest.add_member(:replicator_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReplicatorArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the replicator to be updated.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateReplicationInfoRequest.add_member(:source_kafka_cluster_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceKafkaClusterArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The ARN of the source Kafka cluster.</p>", "smithy.api#jsonName" => "sourceKafkaClusterArn", "smithy.api#required" => {}}))
    UpdateReplicationInfoRequest.add_member(:target_kafka_cluster_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TargetKafkaClusterArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The ARN of the target Kafka cluster.</p>", "smithy.api#jsonName" => "targetKafkaClusterArn", "smithy.api#required" => {}}))
    UpdateReplicationInfoRequest.add_member(:topic_replication, Smithy::Schema::Shapes::ShapeRef.new(shape: TopicReplicationUpdate, location_name: 'TopicReplication', traits: {"smithy.api#documentation" => "<p>Updated topic replication information.</p>", "smithy.api#jsonName" => "topicReplication"}))
    UpdateReplicationInfoRequest.type = Types::UpdateReplicationInfoRequest
    UpdateReplicationInfoResponse.add_member(:replicator_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReplicatorArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the replicator.</p>", "smithy.api#jsonName" => "replicatorArn"}))
    UpdateReplicationInfoResponse.add_member(:replicator_state, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicatorState, location_name: 'ReplicatorState', traits: {"smithy.api#documentation" => "<p>State of the replicator.</p>", "smithy.api#jsonName" => "replicatorState"}))
    UpdateReplicationInfoResponse.type = Types::UpdateReplicationInfoResponse
    UpdateSecurityRequest.add_member(:client_authentication, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientAuthentication, location_name: 'ClientAuthentication', traits: {"smithy.api#documentation" => "<p>Includes all client authentication related information.</p>", "smithy.api#jsonName" => "clientAuthentication"}))
    UpdateSecurityRequest.add_member(:cluster_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that uniquely identifies the cluster.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateSecurityRequest.add_member(:current_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CurrentVersion', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The version of the MSK cluster to update. Cluster versions aren't simple numbers. You can describe an MSK cluster to find its version. When this update operation is successful, it generates a new cluster version.</p>", "smithy.api#jsonName" => "currentVersion", "smithy.api#required" => {}}))
    UpdateSecurityRequest.add_member(:encryption_info, Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionInfo, location_name: 'EncryptionInfo', traits: {"smithy.api#documentation" => "<p>Includes all encryption-related information.</p>", "smithy.api#jsonName" => "encryptionInfo"}))
    UpdateSecurityRequest.type = Types::UpdateSecurityRequest
    UpdateSecurityResponse.add_member(:cluster_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the cluster.</p>", "smithy.api#jsonName" => "clusterArn"}))
    UpdateSecurityResponse.add_member(:cluster_operation_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterOperationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the cluster operation.</p>", "smithy.api#jsonName" => "clusterOperationArn"}))
    UpdateSecurityResponse.type = Types::UpdateSecurityResponse
    UpdateStorageRequest.add_member(:cluster_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the cluster to be updated.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateStorageRequest.add_member(:current_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CurrentVersion', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The version of cluster to update from. A successful operation will then generate a new version.</p>", "smithy.api#jsonName" => "currentVersion", "smithy.api#required" => {}}))
    UpdateStorageRequest.add_member(:provisioned_throughput, Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughput, location_name: 'ProvisionedThroughput', traits: {"smithy.api#documentation" => "<p>EBS volume provisioned throughput information.</p>", "smithy.api#jsonName" => "provisionedThroughput"}))
    UpdateStorageRequest.add_member(:storage_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: StorageMode, location_name: 'StorageMode', traits: {"smithy.api#documentation" => "<p>Controls storage mode for supported storage tiers.</p>", "smithy.api#jsonName" => "storageMode"}))
    UpdateStorageRequest.add_member(:volume_size_gb, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'VolumeSizeGB', traits: {"smithy.api#documentation" => "<p>size of the EBS volume to update.</p>", "smithy.api#jsonName" => "volumeSizeGB"}))
    UpdateStorageRequest.type = Types::UpdateStorageRequest
    UpdateStorageResponse.add_member(:cluster_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the cluster.</p>", "smithy.api#jsonName" => "clusterArn"}))
    UpdateStorageResponse.add_member(:cluster_operation_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterOperationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the cluster operation.</p>", "smithy.api#jsonName" => "clusterOperationArn"}))
    UpdateStorageResponse.type = Types::UpdateStorageResponse
    UserIdentity.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: UserIdentityType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The identity type of the requester that calls the API operation.</p>", "smithy.api#jsonName" => "type"}))
    UserIdentity.add_member(:principal_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PrincipalId', traits: {"smithy.api#documentation" => "<p>A unique identifier for the requester that calls the API operation.</p>", "smithy.api#jsonName" => "principalId"}))
    UserIdentity.type = Types::UserIdentity
    UserIdentityType.add_member(:awsaccount, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWSACCOUNT', traits: {"smithy.api#enumValue" => "AWSACCOUNT"}))
    UserIdentityType.add_member(:awsservice, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWSSERVICE', traits: {"smithy.api#enumValue" => "AWSSERVICE"}))
    VpcConfig.add_member(:subnet_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: ListofString, location_name: 'SubnetIds', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The IDs of the subnets associated with the cluster.</p>", "smithy.api#jsonName" => "subnetIds", "smithy.api#required" => {}}))
    VpcConfig.add_member(:security_group_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: ListofString, location_name: 'SecurityGroupIds', traits: {"smithy.api#documentation" => "<p>The IDs of the security groups associated with the cluster.</p>", "smithy.api#jsonName" => "securityGroupIds"}))
    VpcConfig.type = Types::VpcConfig
    VpcConnection.add_member(:vpc_connection_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VpcConnectionArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The ARN that identifies the Vpc Connection.</p>", "smithy.api#jsonName" => "vpcConnectionArn", "smithy.api#required" => {}}))
    VpcConnection.add_member(:target_cluster_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TargetClusterArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The ARN that identifies the Cluster which the Vpc Connection belongs to.</p>", "smithy.api#jsonName" => "targetClusterArn", "smithy.api#required" => {}}))
    VpcConnection.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'CreationTime', traits: {"smithy.api#documentation" => "<p>Creation time of the Vpc Connection.</p>", "smithy.api#jsonName" => "creationTime"}))
    VpcConnection.add_member(:authentication, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Authentication', traits: {"smithy.api#documentation" => "<p>Information about the auth scheme of Vpc Connection.</p>", "smithy.api#jsonName" => "authentication"}))
    VpcConnection.add_member(:vpc_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VpcId', traits: {"smithy.api#documentation" => "<p>The vpcId that belongs to the Vpc Connection.</p>", "smithy.api#jsonName" => "vpcId"}))
    VpcConnection.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcConnectionState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>State of the Vpc Connection.</p>", "smithy.api#jsonName" => "state"}))
    VpcConnection.type = Types::VpcConnection
    VpcConnectionInfo.add_member(:vpc_connection_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VpcConnectionArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the VPC connection.</p>", "smithy.api#jsonName" => "vpcConnectionArn"}))
    VpcConnectionInfo.add_member(:owner, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Owner', traits: {"smithy.api#documentation" => "<p>The owner of the VPC Connection.</p>", "smithy.api#jsonName" => "owner"}))
    VpcConnectionInfo.add_member(:user_identity, Smithy::Schema::Shapes::ShapeRef.new(shape: UserIdentity, location_name: 'UserIdentity', traits: {"smithy.api#documentation" => "<p>Description of the requester that calls the API operation.</p>", "smithy.api#jsonName" => "userIdentity"}))
    VpcConnectionInfo.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'CreationTime', traits: {"smithy.api#documentation" => "<p>The time when Amazon MSK creates the VPC Connnection.</p>", "smithy.api#jsonName" => "creationTime"}))
    VpcConnectionInfo.type = Types::VpcConnectionInfo
    VpcConnectionInfoServerless.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'CreationTime', traits: {"smithy.api#documentation" => "<p>The time when Amazon MSK creates the VPC Connnection.</p>", "smithy.api#jsonName" => "creationTime"}))
    VpcConnectionInfoServerless.add_member(:owner, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Owner', traits: {"smithy.api#documentation" => "<p>The owner of the VPC Connection.</p>", "smithy.api#jsonName" => "owner"}))
    VpcConnectionInfoServerless.add_member(:user_identity, Smithy::Schema::Shapes::ShapeRef.new(shape: UserIdentity, location_name: 'UserIdentity', traits: {"smithy.api#documentation" => "<p>Description of the requester that calls the API operation.</p>", "smithy.api#jsonName" => "userIdentity"}))
    VpcConnectionInfoServerless.add_member(:vpc_connection_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VpcConnectionArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the VPC connection.</p>", "smithy.api#jsonName" => "vpcConnectionArn"}))
    VpcConnectionInfoServerless.type = Types::VpcConnectionInfoServerless
    VpcConnectionState.add_member(:creating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "CREATING"}))
    VpcConnectionState.add_member(:available, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AVAILABLE', traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    VpcConnectionState.add_member(:inactive, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INACTIVE', traits: {"smithy.api#enumValue" => "INACTIVE"}))
    VpcConnectionState.add_member(:deactivating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEACTIVATING', traits: {"smithy.api#enumValue" => "DEACTIVATING"}))
    VpcConnectionState.add_member(:deleting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    VpcConnectionState.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    VpcConnectionState.add_member(:rejected, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REJECTED', traits: {"smithy.api#enumValue" => "REJECTED"}))
    VpcConnectionState.add_member(:rejecting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REJECTING', traits: {"smithy.api#enumValue" => "REJECTING"}))
    VpcConnectivity.add_member(:client_authentication, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcConnectivityClientAuthentication, location_name: 'ClientAuthentication', traits: {"smithy.api#documentation" => "<p>Includes all client authentication information for VPC connectivity.</p>", "smithy.api#jsonName" => "clientAuthentication"}))
    VpcConnectivity.type = Types::VpcConnectivity
    VpcConnectivityClientAuthentication.add_member(:sasl, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcConnectivitySasl, location_name: 'Sasl', traits: {"smithy.api#documentation" => "<p>SASL authentication type details for VPC connectivity.</p>", "smithy.api#jsonName" => "sasl"}))
    VpcConnectivityClientAuthentication.add_member(:tls, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcConnectivityTls, location_name: 'Tls', traits: {"smithy.api#documentation" => "<p>TLS authentication type details for VPC connectivity.</p>", "smithy.api#jsonName" => "tls"}))
    VpcConnectivityClientAuthentication.type = Types::VpcConnectivityClientAuthentication
    VpcConnectivityIam.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Enabled', traits: {"smithy.api#documentation" => "<p>SASL/IAM authentication is on or off for VPC connectivity.</p>", "smithy.api#jsonName" => "enabled"}))
    VpcConnectivityIam.type = Types::VpcConnectivityIam
    VpcConnectivitySasl.add_member(:scram, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcConnectivityScram, location_name: 'Scram', traits: {"smithy.api#documentation" => "<p>Details for SASL/SCRAM client authentication for VPC connectivity.</p>", "smithy.api#jsonName" => "scram"}))
    VpcConnectivitySasl.add_member(:iam, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcConnectivityIam, location_name: 'Iam', traits: {"smithy.api#documentation" => "<p>Details for SASL/IAM client authentication for VPC connectivity.</p>", "smithy.api#jsonName" => "iam"}))
    VpcConnectivitySasl.type = Types::VpcConnectivitySasl
    VpcConnectivityScram.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Enabled', traits: {"smithy.api#documentation" => "<p>SASL/SCRAM authentication is on or off for VPC connectivity.</p>", "smithy.api#jsonName" => "enabled"}))
    VpcConnectivityScram.type = Types::VpcConnectivityScram
    VpcConnectivityTls.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Enabled', traits: {"smithy.api#documentation" => "<p>TLS authentication is on or off for VPC connectivity.</p>", "smithy.api#jsonName" => "enabled"}))
    VpcConnectivityTls.type = Types::VpcConnectivityTls
    ZookeeperNodeInfo.add_member(:attached_eni_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AttachedENIId', traits: {"smithy.api#documentation" => "<p>The attached elastic network interface of the broker.</p>", "smithy.api#jsonName" => "attachedENIId"}))
    ZookeeperNodeInfo.add_member(:client_vpc_ip_address, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClientVpcIpAddress', traits: {"smithy.api#documentation" => "<p>The virtual private cloud (VPC) IP address of the client.</p>", "smithy.api#jsonName" => "clientVpcIpAddress"}))
    ZookeeperNodeInfo.add_member(:endpoints, Smithy::Schema::Shapes::ShapeRef.new(shape: ListofString, location_name: 'Endpoints', traits: {"smithy.api#documentation" => "<p>Endpoints for accessing the ZooKeeper.</p>", "smithy.api#jsonName" => "endpoints"}))
    ZookeeperNodeInfo.add_member(:zookeeper_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'ZookeeperId', traits: {"smithy.api#documentation" => "<p>The role-specific ID for Zookeeper.</p>", "smithy.api#jsonName" => "zookeeperId"}))
    ZookeeperNodeInfo.add_member(:zookeeper_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ZookeeperVersion', traits: {"smithy.api#documentation" => "<p>The version of Zookeeper.</p>", "smithy.api#jsonName" => "zookeeperVersion"}))
    ZookeeperNodeInfo.type = Types::ZookeeperNodeInfo
    Listofbrokerebsvolumeinfo.member = Smithy::Schema::Shapes::ShapeRef.new(shape: BrokerEBSVolumeInfo)
    Listofclientvpcconnection.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ClientVpcConnection)
    Listofcluster.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Cluster)
    Listofclusterinfo.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterInfo)
    Listofclusteroperationinfo.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterOperationInfo)
    Listofclusteroperationstep.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterOperationStep)
    Listofclusteroperationv2summary.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterOperationV2Summary)
    Listofcompatiblekafkaversion.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CompatibleKafkaVersion)
    Listofconfiguration.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Configuration)
    Listofconfigurationrevision.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationRevision)
    Listofkafkacluster.member = Smithy::Schema::Shapes::ShapeRef.new(shape: KafkaCluster)
    Listofkafkaclusterdescription.member = Smithy::Schema::Shapes::ShapeRef.new(shape: KafkaClusterDescription)
    Listofkafkaclustersummary.member = Smithy::Schema::Shapes::ShapeRef.new(shape: KafkaClusterSummary)
    Listofkafkaversion.member = Smithy::Schema::Shapes::ShapeRef.new(shape: KafkaVersion)
    Listofnodeinfo.member = Smithy::Schema::Shapes::ShapeRef.new(shape: NodeInfo)
    Listofreplicationinfo.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationInfo)
    Listofreplicationinfodescription.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationInfoDescription)
    Listofreplicationinfosummary.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationInfoSummary)
    Listofreplicatorsummary.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicatorSummary)
    Listofunprocessedscramsecret.member = Smithy::Schema::Shapes::ShapeRef.new(shape: UnprocessedScramSecret)
    Listofvpcconfig.member = Smithy::Schema::Shapes::ShapeRef.new(shape: VpcConfig)
    Listofvpcconnection.member = Smithy::Schema::Shapes::ShapeRef.new(shape: VpcConnection)
    ListofDouble.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Double)
    ListofString.member = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    ListofStringmax249.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Stringmax249)
    ListofStringmax256.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Stringmax256)
    MapofString.key = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    MapofString.value = Smithy::Schema::Shapes::ShapeRef.new(shape: String)

    Kafka = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.kafka#Kafka"
      service.name = "Kafka"
      service.version = "2018-11-14"
      service.traits = {"aws.api#service" => {"sdkId" => "Kafka", "arnNamespace" => "kafka", "cloudFormationName" => "MSK", "cloudTrailEventSource" => "kafka.amazonaws.com", "endpointPrefix" => "kafka"}, "aws.auth#sigv4" => {"name" => "kafka"}, "aws.protocols#restJson1" => {}, "smithy.api#auth" => ["aws.auth#sigv4"], "smithy.api#title" => "Managed Streaming for Kafka"}
      service.add_operation(:batch_associate_scram_secret, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafka#BatchAssociateScramSecret"
        operation.name = "BatchAssociateScramSecret"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchAssociateScramSecretRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchAssociateScramSecretResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/clusters/{ClusterArn}/scram-secrets", "code" => 200}}
      end)
      service.add_operation(:batch_disassociate_scram_secret, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafka#BatchDisassociateScramSecret"
        operation.name = "BatchDisassociateScramSecret"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDisassociateScramSecretRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDisassociateScramSecretResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/v1/clusters/{ClusterArn}/scram-secrets", "code" => 200}}
      end)
      service.add_operation(:create_cluster, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafka#CreateCluster"
        operation.name = "CreateCluster"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateClusterRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateClusterResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/clusters", "code" => 200}}
      end)
      service.add_operation(:create_cluster_v2, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafka#CreateClusterV2"
        operation.name = "CreateClusterV2"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateClusterV2Request)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateClusterV2Response)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/api/v2/clusters", "code" => 200}}
      end)
      service.add_operation(:create_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafka#CreateConfiguration"
        operation.name = "CreateConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/configurations", "code" => 200}}
      end)
      service.add_operation(:create_replicator, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafka#CreateReplicator"
        operation.name = "CreateReplicator"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateReplicatorRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateReplicatorResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/replication/v1/replicators", "code" => 200}}
      end)
      service.add_operation(:create_vpc_connection, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafka#CreateVpcConnection"
        operation.name = "CreateVpcConnection"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateVpcConnectionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateVpcConnectionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/vpc-connection", "code" => 200}}
      end)
      service.add_operation(:delete_cluster, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafka#DeleteCluster"
        operation.name = "DeleteCluster"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteClusterRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteClusterResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/clusters/{ClusterArn}", "code" => 200}}
      end)
      service.add_operation(:delete_cluster_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafka#DeleteClusterPolicy"
        operation.name = "DeleteClusterPolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteClusterPolicyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteClusterPolicyResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/clusters/{ClusterArn}/policy", "code" => 200}}
      end)
      service.add_operation(:delete_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafka#DeleteConfiguration"
        operation.name = "DeleteConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/configurations/{Arn}", "code" => 200}}
      end)
      service.add_operation(:delete_replicator, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafka#DeleteReplicator"
        operation.name = "DeleteReplicator"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteReplicatorRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteReplicatorResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/replication/v1/replicators/{ReplicatorArn}", "code" => 200}}
      end)
      service.add_operation(:delete_vpc_connection, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafka#DeleteVpcConnection"
        operation.name = "DeleteVpcConnection"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteVpcConnectionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteVpcConnectionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/vpc-connection/{Arn}", "code" => 200}}
      end)
      service.add_operation(:describe_cluster, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafka#DescribeCluster"
        operation.name = "DescribeCluster"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeClusterRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeClusterResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/clusters/{ClusterArn}", "code" => 200}}
      end)
      service.add_operation(:describe_cluster_operation, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafka#DescribeClusterOperation"
        operation.name = "DescribeClusterOperation"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeClusterOperationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeClusterOperationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/operations/{ClusterOperationArn}", "code" => 200}}
      end)
      service.add_operation(:describe_cluster_operation_v2, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafka#DescribeClusterOperationV2"
        operation.name = "DescribeClusterOperationV2"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeClusterOperationV2Request)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeClusterOperationV2Response)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/api/v2/operations/{ClusterOperationArn}", "code" => 200}}
      end)
      service.add_operation(:describe_cluster_v2, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafka#DescribeClusterV2"
        operation.name = "DescribeClusterV2"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeClusterV2Request)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeClusterV2Response)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/api/v2/clusters/{ClusterArn}", "code" => 200}}
      end)
      service.add_operation(:describe_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafka#DescribeConfiguration"
        operation.name = "DescribeConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/configurations/{Arn}", "code" => 200}}
      end)
      service.add_operation(:describe_configuration_revision, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafka#DescribeConfigurationRevision"
        operation.name = "DescribeConfigurationRevision"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeConfigurationRevisionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeConfigurationRevisionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/configurations/{Arn}/revisions/{Revision}", "code" => 200}}
      end)
      service.add_operation(:describe_replicator, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafka#DescribeReplicator"
        operation.name = "DescribeReplicator"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeReplicatorRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeReplicatorResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/replication/v1/replicators/{ReplicatorArn}", "code" => 200}}
      end)
      service.add_operation(:describe_vpc_connection, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafka#DescribeVpcConnection"
        operation.name = "DescribeVpcConnection"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeVpcConnectionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeVpcConnectionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/vpc-connection/{Arn}", "code" => 200}}
      end)
      service.add_operation(:get_bootstrap_brokers, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafka#GetBootstrapBrokers"
        operation.name = "GetBootstrapBrokers"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetBootstrapBrokersRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetBootstrapBrokersResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/clusters/{ClusterArn}/bootstrap-brokers", "code" => 200}}
      end)
      service.add_operation(:get_cluster_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafka#GetClusterPolicy"
        operation.name = "GetClusterPolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetClusterPolicyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetClusterPolicyResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/clusters/{ClusterArn}/policy", "code" => 200}}
      end)
      service.add_operation(:get_compatible_kafka_versions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafka#GetCompatibleKafkaVersions"
        operation.name = "GetCompatibleKafkaVersions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetCompatibleKafkaVersionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetCompatibleKafkaVersionsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/compatible-kafka-versions", "code" => 200}}
      end)
      service.add_operation(:list_client_vpc_connections, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafka#ListClientVpcConnections"
        operation.name = "ListClientVpcConnections"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListClientVpcConnectionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListClientVpcConnectionsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/clusters/{ClusterArn}/client-vpc-connections", "code" => 200}}
        operation[:paginator] = Paginators::ListClientVpcConnections.new
      end)
      service.add_operation(:list_cluster_operations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafka#ListClusterOperations"
        operation.name = "ListClusterOperations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListClusterOperationsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListClusterOperationsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/clusters/{ClusterArn}/operations", "code" => 200}}
        operation[:paginator] = Paginators::ListClusterOperations.new
      end)
      service.add_operation(:list_cluster_operations_v2, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafka#ListClusterOperationsV2"
        operation.name = "ListClusterOperationsV2"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListClusterOperationsV2Request)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListClusterOperationsV2Response)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/api/v2/clusters/{ClusterArn}/operations", "code" => 200}}
        operation[:paginator] = Paginators::ListClusterOperationsV2.new
      end)
      service.add_operation(:list_clusters, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafka#ListClusters"
        operation.name = "ListClusters"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListClustersRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListClustersResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/clusters", "code" => 200}}
        operation[:paginator] = Paginators::ListClusters.new
      end)
      service.add_operation(:list_clusters_v2, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafka#ListClustersV2"
        operation.name = "ListClustersV2"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListClustersV2Request)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListClustersV2Response)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/api/v2/clusters", "code" => 200}}
        operation[:paginator] = Paginators::ListClustersV2.new
      end)
      service.add_operation(:list_configuration_revisions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafka#ListConfigurationRevisions"
        operation.name = "ListConfigurationRevisions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListConfigurationRevisionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListConfigurationRevisionsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/configurations/{Arn}/revisions", "code" => 200}}
        operation[:paginator] = Paginators::ListConfigurationRevisions.new
      end)
      service.add_operation(:list_configurations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafka#ListConfigurations"
        operation.name = "ListConfigurations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListConfigurationsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListConfigurationsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/configurations", "code" => 200}}
        operation[:paginator] = Paginators::ListConfigurations.new
      end)
      service.add_operation(:list_kafka_versions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafka#ListKafkaVersions"
        operation.name = "ListKafkaVersions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListKafkaVersionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListKafkaVersionsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/kafka-versions", "code" => 200}}
        operation[:paginator] = Paginators::ListKafkaVersions.new
      end)
      service.add_operation(:list_nodes, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafka#ListNodes"
        operation.name = "ListNodes"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListNodesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListNodesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/clusters/{ClusterArn}/nodes", "code" => 200}}
        operation[:paginator] = Paginators::ListNodes.new
      end)
      service.add_operation(:list_replicators, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafka#ListReplicators"
        operation.name = "ListReplicators"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListReplicatorsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListReplicatorsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/replication/v1/replicators", "code" => 200}}
        operation[:paginator] = Paginators::ListReplicators.new
      end)
      service.add_operation(:list_scram_secrets, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafka#ListScramSecrets"
        operation.name = "ListScramSecrets"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListScramSecretsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListScramSecretsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/clusters/{ClusterArn}/scram-secrets", "code" => 200}}
        operation[:paginator] = Paginators::ListScramSecrets.new
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafka#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/tags/{ResourceArn}", "code" => 200}}
      end)
      service.add_operation(:list_vpc_connections, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafka#ListVpcConnections"
        operation.name = "ListVpcConnections"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListVpcConnectionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListVpcConnectionsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/vpc-connections", "code" => 200}}
        operation[:paginator] = Paginators::ListVpcConnections.new
      end)
      service.add_operation(:put_cluster_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafka#PutClusterPolicy"
        operation.name = "PutClusterPolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutClusterPolicyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutClusterPolicyResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/clusters/{ClusterArn}/policy", "code" => 200}}
      end)
      service.add_operation(:reboot_broker, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafka#RebootBroker"
        operation.name = "RebootBroker"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RebootBrokerRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: RebootBrokerResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/clusters/{ClusterArn}/reboot-broker", "code" => 200}}
      end)
      service.add_operation(:reject_client_vpc_connection, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafka#RejectClientVpcConnection"
        operation.name = "RejectClientVpcConnection"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RejectClientVpcConnectionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: RejectClientVpcConnectionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/clusters/{ClusterArn}/client-vpc-connection", "code" => 200}}
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafka#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/tags/{ResourceArn}", "code" => 204}}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafka#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/tags/{ResourceArn}", "code" => 204}}
      end)
      service.add_operation(:update_broker_count, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafka#UpdateBrokerCount"
        operation.name = "UpdateBrokerCount"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateBrokerCountRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateBrokerCountResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/clusters/{ClusterArn}/nodes/count", "code" => 200}}
      end)
      service.add_operation(:update_broker_storage, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafka#UpdateBrokerStorage"
        operation.name = "UpdateBrokerStorage"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateBrokerStorageRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateBrokerStorageResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/clusters/{ClusterArn}/nodes/storage", "code" => 200}}
      end)
      service.add_operation(:update_broker_type, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafka#UpdateBrokerType"
        operation.name = "UpdateBrokerType"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateBrokerTypeRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateBrokerTypeResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/clusters/{ClusterArn}/nodes/type", "code" => 200}}
      end)
      service.add_operation(:update_cluster_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafka#UpdateClusterConfiguration"
        operation.name = "UpdateClusterConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateClusterConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateClusterConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/clusters/{ClusterArn}/configuration", "code" => 200}}
      end)
      service.add_operation(:update_cluster_kafka_version, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafka#UpdateClusterKafkaVersion"
        operation.name = "UpdateClusterKafkaVersion"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateClusterKafkaVersionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateClusterKafkaVersionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/clusters/{ClusterArn}/version", "code" => 200}}
      end)
      service.add_operation(:update_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafka#UpdateConfiguration"
        operation.name = "UpdateConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/configurations/{Arn}", "code" => 200}}
      end)
      service.add_operation(:update_connectivity, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafka#UpdateConnectivity"
        operation.name = "UpdateConnectivity"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateConnectivityRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateConnectivityResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/clusters/{ClusterArn}/connectivity", "code" => 200}}
      end)
      service.add_operation(:update_monitoring, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafka#UpdateMonitoring"
        operation.name = "UpdateMonitoring"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateMonitoringRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateMonitoringResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/clusters/{ClusterArn}/monitoring", "code" => 200}}
      end)
      service.add_operation(:update_replication_info, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafka#UpdateReplicationInfo"
        operation.name = "UpdateReplicationInfo"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateReplicationInfoRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateReplicationInfoResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/replication/v1/replicators/{ReplicatorArn}/replication-info", "code" => 200}}
      end)
      service.add_operation(:update_security, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafka#UpdateSecurity"
        operation.name = "UpdateSecurity"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSecurityRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSecurityResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/v1/clusters/{ClusterArn}/security", "code" => 200}}
      end)
      service.add_operation(:update_storage, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kafka#UpdateStorage"
        operation.name = "UpdateStorage"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateStorageRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateStorageResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/clusters/{ClusterArn}/storage", "code" => 200}}
      end)

    end

    class << self
      def type_registry
        return @type_registry if @type_registry

        shapes = constants.map { |sym| const_get(sym) }.select { |const| const.is_a?(Smithy::Schema::Shapes::StructureShape) }
        @type_registry = Smithy::Schema::TypeRegistry.new(shapes)
      end
    end
  end
end
