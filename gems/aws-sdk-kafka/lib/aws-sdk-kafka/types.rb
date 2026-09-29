# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Kafka
  module Types

    # Details of an Amazon MSK Cluster.
    #
    # @!attribute [rw] msk_cluster_arn
    #   The Amazon Resource Name (ARN) of an Amazon MSK cluster.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/AmazonMskCluster AWS API Documentation
    #
    class AmazonMskCluster < Struct.new(
      :msk_cluster_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details of an Apache Kafka Cluster.
    #
    # @!attribute [rw] apache_kafka_cluster_id
    #   The ID of the Apache Kafka cluster.
    #   @return [String]
    #
    # @!attribute [rw] bootstrap_broker_string
    #   The bootstrap broker string of the Apache Kafka cluster.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/ApacheKafkaCluster AWS API Documentation
    #
    class ApacheKafkaCluster < Struct.new(
      :apache_kafka_cluster_id,
      :bootstrap_broker_string)
      SENSITIVE = []
      include Aws::Structure
    end

    # The authorizer logs configuration for this MSK cluster.
    #
    # @!attribute [rw] cloud_watch_logs
    #   Details of the CloudWatch Logs destination for authorizer logs.
    #   @return [Types::CloudWatchLogs]
    #
    # @!attribute [rw] firehose
    #   Details of the Kinesis Data Firehose delivery stream that is the
    #   destination for authorizer logs.
    #   @return [Types::Firehose]
    #
    # @!attribute [rw] s3
    #   Details of the Amazon S3 destination for authorizer logs.
    #   @return [Types::S3]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/AuthorizerLogs AWS API Documentation
    #
    class AuthorizerLogs < Struct.new(
      :cloud_watch_logs,
      :firehose,
      :s3)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request body for BatchAssociateScramSecret.
    #
    # @!attribute [rw] cluster_arn
    #   @return [String]
    #
    # @!attribute [rw] secret_arn_list
    #   List of AWS Secrets Manager secret ARNs.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/BatchAssociateScramSecretRequest AWS API Documentation
    #
    class BatchAssociateScramSecretRequest < Struct.new(
      :cluster_arn,
      :secret_arn_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # Response body for BatchAssociateScramSecret.
    #
    # @!attribute [rw] cluster_arn
    #   The Amazon Resource Name (ARN) of the cluster.
    #   @return [String]
    #
    # @!attribute [rw] unprocessed_scram_secrets
    #   List of errors when associating secrets to cluster.
    #   @return [Array<Types::UnprocessedScramSecret>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/BatchAssociateScramSecretResponse AWS API Documentation
    #
    class BatchAssociateScramSecretResponse < Struct.new(
      :cluster_arn,
      :unprocessed_scram_secrets)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns information about an error.
    #
    # @!attribute [rw] invalid_parameter
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/BadRequestException AWS API Documentation
    #
    class BadRequestException < Struct.new(
      :invalid_parameter,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the EBS volume upgrade information. The broker identifier
    # must be set to the keyword ALL. This means the changes apply to all
    # the brokers in the cluster.
    #
    # @!attribute [rw] kafka_broker_node_id
    #   The ID of the broker to update.
    #   @return [String]
    #
    # @!attribute [rw] provisioned_throughput
    #   EBS volume provisioned throughput information.
    #   @return [Types::ProvisionedThroughput]
    #
    # @!attribute [rw] volume_size_gb
    #   Size of the EBS volume to update.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/BrokerEBSVolumeInfo AWS API Documentation
    #
    class BrokerEBSVolumeInfo < Struct.new(
      :kafka_broker_node_id,
      :provisioned_throughput,
      :volume_size_gb)
      SENSITIVE = []
      include Aws::Structure
    end

    # The broker logs configuration for this MSK cluster.
    #
    # @!attribute [rw] cloud_watch_logs
    #   Details of the CloudWatch Logs destination for broker logs.
    #   @return [Types::CloudWatchLogs]
    #
    # @!attribute [rw] firehose
    #   Details of the Kinesis Data Firehose delivery stream that is the
    #   destination for broker logs.
    #   @return [Types::Firehose]
    #
    # @!attribute [rw] s3
    #   Details of the Amazon S3 destination for broker logs.
    #   @return [Types::S3]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/BrokerLogs AWS API Documentation
    #
    class BrokerLogs < Struct.new(
      :cloud_watch_logs,
      :firehose,
      :s3)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the setup to be used for Apache Kafka broker nodes in the
    # cluster.
    #
    # @!attribute [rw] broker_az_distribution
    #   The distribution of broker nodes across Availability Zones.
    #   @return [String]
    #
    # @!attribute [rw] client_subnets
    #   The list of subnets to connect to in the client virtual private
    #   cloud (VPC). AWS creates elastic network interfaces inside these
    #   subnets. Client applications use elastic network interfaces to
    #   produce and consume data. Client subnets can't occupy the
    #   Availability Zone with ID use use1-az3.
    #   @return [Array<String>]
    #
    # @!attribute [rw] instance_type
    #   The type of broker used in the Amazon MSK cluster.
    #   @return [String]
    #
    # @!attribute [rw] security_groups
    #   The AWS security groups to associate with the elastic network
    #   interfaces in order to specify who can connect to and communicate
    #   with the Amazon MSK cluster. If you don't specify a security group,
    #   Amazon MSK uses the default security group associated with the VPC.
    #   If you specify security groups that were shared with you, you must
    #   ensure that you have permissions to them. Specifically, you need the
    #   ec2:DescribeSecurityGroups permission.
    #   @return [Array<String>]
    #
    # @!attribute [rw] storage_info
    #   Contains information about storage volumes attached to MSK broker
    #   nodes.
    #   @return [Types::StorageInfo]
    #
    # @!attribute [rw] connectivity_info
    #   Information about the broker access configuration.
    #   @return [Types::ConnectivityInfo]
    #
    # @!attribute [rw] zone_ids
    #   The zoneIds for the cluster.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/BrokerNodeGroupInfo AWS API Documentation
    #
    class BrokerNodeGroupInfo < Struct.new(
      :broker_az_distribution,
      :client_subnets,
      :instance_type,
      :security_groups,
      :storage_info,
      :connectivity_info,
      :zone_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # BrokerNodeInfo
    #
    # @!attribute [rw] attached_eni_id
    #   The attached elastic network interface of the broker.
    #   @return [String]
    #
    # @!attribute [rw] broker_id
    #   The ID of the broker.
    #   @return [Float]
    #
    # @!attribute [rw] client_subnet
    #   The client subnet to which this broker node belongs.
    #   @return [String]
    #
    # @!attribute [rw] client_vpc_ip_address
    #   The virtual private cloud (VPC) of the client.
    #   @return [String]
    #
    # @!attribute [rw] current_broker_software_info
    #   Information about the version of software currently deployed on the
    #   Apache Kafka brokers in the cluster.
    #   @return [Types::BrokerSoftwareInfo]
    #
    # @!attribute [rw] endpoints
    #   Endpoints for accessing the broker.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/BrokerNodeInfo AWS API Documentation
    #
    class BrokerNodeInfo < Struct.new(
      :attached_eni_id,
      :broker_id,
      :client_subnet,
      :client_vpc_ip_address,
      :current_broker_software_info,
      :endpoints)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the current software installed on the cluster.
    #
    # @!attribute [rw] configuration_arn
    #   The Amazon Resource Name (ARN) of the configuration used for the
    #   cluster. This field isn't visible in this preview release.
    #   @return [String]
    #
    # @!attribute [rw] configuration_revision
    #   The revision of the configuration to use. This field isn't visible
    #   in this preview release.
    #   @return [Integer]
    #
    # @!attribute [rw] kafka_version
    #   The version of Apache Kafka.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/BrokerSoftwareInfo AWS API Documentation
    #
    class BrokerSoftwareInfo < Struct.new(
      :configuration_arn,
      :configuration_revision,
      :kafka_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration of the AWS Glue Data Catalog and S3 Tables warehouse
    # used by the Apache Iceberg destination.
    #
    # @!attribute [rw] catalog_arn
    #   The Amazon Resource Name (ARN) of the federated AWS Glue Data
    #   Catalog that projects the S3 Tables bucket. If omitted, MSK derives
    #   the catalog ARN from warehouseLocation.
    #   @return [String]
    #
    # @!attribute [rw] warehouse_location
    #   The Amazon Resource Name (ARN) of the S3 Tables bucket that backs
    #   the Apache Iceberg warehouse.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/Catalog AWS API Documentation
    #
    class Catalog < Struct.new(
      :catalog_arn,
      :warehouse_location)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information about a channel returned by ListChannels.
    #
    # @!attribute [rw] channel_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies the channel.
    #   @return [String]
    #
    # @!attribute [rw] channel_name
    #   The name of the channel.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current lifecycle state of the channel.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The time when the channel was created.
    #   @return [Time]
    #
    # @!attribute [rw] destination_type
    #   The type of destination configured for the channel.
    #   @return [String]
    #
    # @!attribute [rw] cluster_operation_arn
    #   The Amazon Resource Name (ARN) of the in-flight cluster operation.
    #   Returned only while the channel is in CREATING, UPDATING, or
    #   DELETING.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/ChannelInfo AWS API Documentation
    #
    class ChannelInfo < Struct.new(
      :channel_arn,
      :channel_name,
      :status,
      :creation_time,
      :destination_type,
      :cluster_operation_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Additional context for the current channel state, populated when the
    # channel is in FAILED.
    #
    # @!attribute [rw] code
    #   A short, machine-readable code identifying the failure cause.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   A human-readable message describing the failure.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/ChannelStateInfo AWS API Documentation
    #
    class ChannelStateInfo < Struct.new(
      :code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Creates a Channel that streams records from an Amazon MSK Express
    # cluster topic to Amazon S3 or Apache Iceberg.
    #
    # @!attribute [rw] channel_name
    #   The name of the channel. Must be unique within the cluster.
    #   @return [String]
    #
    # @!attribute [rw] cluster_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies the cluster.
    #   @return [String]
    #
    # @!attribute [rw] encryption_configuration
    #   The encryption configuration applied to the channel.
    #   @return [Types::EncryptionConfiguration]
    #
    # @!attribute [rw] iceberg_destination_configuration
    #   The Apache Iceberg destination for the channel. Mutually exclusive
    #   with s3DestinationConfiguration.
    #   @return [Types::IcebergDestinationConfiguration]
    #
    # @!attribute [rw] logging_info
    #   The destinations to which the channel publishes operational logs.
    #   @return [Types::ChannelLoggingInfo]
    #
    # @!attribute [rw] s3_destination_configuration
    #   The Amazon S3 destination for the channel. Mutually exclusive with
    #   icebergDestinationConfiguration.
    #   @return [Types::S3DestinationConfiguration]
    #
    # @!attribute [rw] tags
    #   The tags attached to the channel.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] topic_configuration_list
    #   The list of topic configurations for the channel. Currently exactly
    #   one topic must be specified.
    #   @return [Array<Types::TopicConfiguration>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/CreateChannelRequest AWS API Documentation
    #
    class CreateChannelRequest < Struct.new(
      :channel_name,
      :cluster_arn,
      :encryption_configuration,
      :iceberg_destination_configuration,
      :logging_info,
      :s3_destination_configuration,
      :tags,
      :topic_configuration_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # Includes all client authentication information.
    #
    # @!attribute [rw] sasl
    #   @return [Types::Sasl]
    #
    # @!attribute [rw] tls
    #   Details for ClientAuthentication using TLS.
    #   @return [Types::Tls]
    #
    # @!attribute [rw] unauthenticated
    #   Contains information about unauthenticated traffic to the cluster.
    #   @return [Types::Unauthenticated]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/ClientAuthentication AWS API Documentation
    #
    class ClientAuthentication < Struct.new(
      :sasl,
      :tls,
      :unauthenticated)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] sasl
    #   @return [Types::VpcConnectivitySasl]
    #
    # @!attribute [rw] tls
    #   @return [Types::VpcConnectivityTls]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/VpcConnectivityClientAuthentication AWS API Documentation
    #
    class VpcConnectivityClientAuthentication < Struct.new(
      :sasl,
      :tls)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details of the CloudWatch Logs destination for broker logs.
    #
    # @!attribute [rw] enabled
    #   Specifies whether broker logs get sent to the specified CloudWatch
    #   Logs destination.
    #   @return [Boolean]
    #
    # @!attribute [rw] log_group
    #   The CloudWatch log group that is the destination for broker logs.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/CloudWatchLogs AWS API Documentation
    #
    class CloudWatchLogs < Struct.new(
      :enabled,
      :log_group)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns information about a cluster.
    #
    # @!attribute [rw] active_operation_arn
    #   Arn of active cluster operation.
    #   @return [String]
    #
    # @!attribute [rw] broker_node_group_info
    #   Information about the brokers.
    #   @return [Types::BrokerNodeGroupInfo]
    #
    # @!attribute [rw] client_authentication
    #   Includes all client authentication information.
    #   @return [Types::ClientAuthentication]
    #
    # @!attribute [rw] cluster_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies the cluster.
    #   @return [String]
    #
    # @!attribute [rw] cluster_name
    #   The name of the cluster.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The time when the cluster was created.
    #   @return [Time]
    #
    # @!attribute [rw] current_broker_software_info
    #   Information about the version of software currently deployed on the
    #   Apache Kafka brokers in the cluster.
    #   @return [Types::BrokerSoftwareInfo]
    #
    # @!attribute [rw] logging_info
    #   You can configure your MSK cluster to send broker logs to different
    #   destination types. This is a container for the configuration details
    #   related to broker logs.
    #   @return [Types::LoggingInfo]
    #
    # @!attribute [rw] current_version
    #   The current version of the MSK cluster. Cluster versions aren't
    #   simple integers. You can obtain the current version by describing
    #   the cluster. An example version is KTVPDKIKX0DER.
    #   @return [String]
    #
    # @!attribute [rw] encryption_info
    #   Includes all encryption-related information.
    #   @return [Types::EncryptionInfo]
    #
    # @!attribute [rw] enhanced_monitoring
    #   Specifies which metrics are gathered for the MSK cluster. This
    #   property has the following possible values: DEFAULT, PER\_BROKER,
    #   PER\_TOPIC\_PER\_BROKER, and PER\_TOPIC\_PER\_PARTITION. For a list
    #   of the metrics associated with each of these levels of monitoring,
    #   see [Monitoring][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/msk/latest/developerguide/monitoring.html
    #   @return [String]
    #
    # @!attribute [rw] number_of_broker_nodes
    #   The number of broker nodes in the cluster.
    #   @return [Integer]
    #
    # @!attribute [rw] open_monitoring
    #   Settings for open monitoring using Prometheus.
    #   @return [Types::OpenMonitoring]
    #
    # @!attribute [rw] state
    #   The state of the cluster. The possible states are ACTIVE, CREATING,
    #   DELETING, FAILED, HEALING, MAINTENANCE, REBOOTING\_BROKER, and
    #   UPDATING.
    #   @return [String]
    #
    # @!attribute [rw] state_info
    #   Contains information about the state of the Amazon MSK cluster.
    #   @return [Types::StateInfo]
    #
    # @!attribute [rw] tags
    #   Tags attached to the cluster.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] zookeeper_connect_string
    #   The connection string to use to connect to the Apache ZooKeeper
    #   cluster.
    #   @return [String]
    #
    # @!attribute [rw] zookeeper_connect_string_tls
    #   The connection string to use to connect to zookeeper cluster on Tls
    #   port.
    #   @return [String]
    #
    # @!attribute [rw] storage_mode
    #   This controls storage mode for supported storage tiers.
    #   @return [String]
    #
    # @!attribute [rw] rebalancing
    #   Contains information about intelligent rebalancing for new MSK
    #   Provisioned clusters with Express brokers. By default, intelligent
    #   rebalancing status is ACTIVE.
    #   @return [Types::Rebalancing]
    #
    # @!attribute [rw] customer_action_status
    #   Determines if there is an action required from the customer.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/ClusterInfo AWS API Documentation
    #
    class ClusterInfo < Struct.new(
      :active_operation_arn,
      :broker_node_group_info,
      :client_authentication,
      :cluster_arn,
      :cluster_name,
      :creation_time,
      :current_broker_software_info,
      :logging_info,
      :current_version,
      :encryption_info,
      :enhanced_monitoring,
      :number_of_broker_nodes,
      :open_monitoring,
      :state,
      :state_info,
      :tags,
      :zookeeper_connect_string,
      :zookeeper_connect_string_tls,
      :storage_mode,
      :rebalancing,
      :customer_action_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns information about a cluster operation.
    #
    # @!attribute [rw] client_request_id
    #   The ID of the API request that triggered this operation.
    #   @return [String]
    #
    # @!attribute [rw] cluster_arn
    #   ARN of the cluster.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The time at which operation was created.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The time at which the operation finished.
    #   @return [Time]
    #
    # @!attribute [rw] error_info
    #   Describes the error if the operation fails.
    #   @return [Types::ErrorInfo]
    #
    # @!attribute [rw] operation_steps
    #   Steps completed during the operation.
    #   @return [Array<Types::ClusterOperationStep>]
    #
    # @!attribute [rw] operation_arn
    #   ARN of the cluster operation.
    #   @return [String]
    #
    # @!attribute [rw] operation_state
    #   State of the cluster operation.
    #   @return [String]
    #
    # @!attribute [rw] operation_type
    #   Type of the cluster operation.
    #   @return [String]
    #
    # @!attribute [rw] source_cluster_info
    #   Information about cluster attributes before a cluster is updated.
    #   @return [Types::MutableClusterInfo]
    #
    # @!attribute [rw] target_cluster_info
    #   Information about cluster attributes after a cluster is updated.
    #   @return [Types::MutableClusterInfo]
    #
    # @!attribute [rw] vpc_connection_info
    #   Description of the VPC connection for CreateVpcConnection and
    #   DeleteVpcConnection operations.
    #   @return [Types::VpcConnectionInfo]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/ClusterOperationInfo AWS API Documentation
    #
    class ClusterOperationInfo < Struct.new(
      :client_request_id,
      :cluster_arn,
      :creation_time,
      :end_time,
      :error_info,
      :operation_steps,
      :operation_arn,
      :operation_state,
      :operation_type,
      :source_cluster_info,
      :target_cluster_info,
      :vpc_connection_info)
      SENSITIVE = []
      include Aws::Structure
    end

    # Step taken during a cluster operation.
    #
    # @!attribute [rw] step_info
    #   Information about the step and its status.
    #   @return [Types::ClusterOperationStepInfo]
    #
    # @!attribute [rw] step_name
    #   The name of the step.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/ClusterOperationStep AWS API Documentation
    #
    class ClusterOperationStep < Struct.new(
      :step_info,
      :step_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # State information about the operation step.
    #
    # @!attribute [rw] step_status
    #   The steps current status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/ClusterOperationStepInfo AWS API Documentation
    #
    class ClusterOperationStepInfo < Struct.new(
      :step_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns information about a cluster operation.
    #
    # @!attribute [rw] cluster_arn
    #   @return [String]
    #
    # @!attribute [rw] cluster_type
    #   The type of cluster.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   @return [Time]
    #
    # @!attribute [rw] operation_arn
    #   @return [String]
    #
    # @!attribute [rw] operation_state
    #   @return [String]
    #
    # @!attribute [rw] operation_type
    #   @return [String]
    #
    # @!attribute [rw] provisioned
    #   Properties of a provisioned cluster.
    #   @return [Types::ClusterOperationV2Provisioned]
    #
    # @!attribute [rw] serverless
    #   Properties of a serverless cluster.
    #   @return [Types::ClusterOperationV2Serverless]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/ClusterOperationV2 AWS API Documentation
    #
    class ClusterOperationV2 < Struct.new(
      :cluster_arn,
      :cluster_type,
      :start_time,
      :end_time,
      :operation_arn,
      :operation_state,
      :operation_type,
      :provisioned,
      :serverless)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns information about a provisioned cluster operation.
    #
    # @!attribute [rw] operation_steps
    #   @return [Array<Types::ClusterOperationStep>]
    #
    # @!attribute [rw] source_cluster_info
    #   Information about cluster attributes that can be updated via update
    #   APIs.
    #   @return [Types::MutableClusterInfo]
    #
    # @!attribute [rw] target_cluster_info
    #   Information about cluster attributes that can be updated via update
    #   APIs.
    #   @return [Types::MutableClusterInfo]
    #
    # @!attribute [rw] vpc_connection_info
    #   Description of the VPC connection for CreateVpcConnection and
    #   DeleteVpcConnection operations.
    #   @return [Types::VpcConnectionInfo]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/ClusterOperationV2Provisioned AWS API Documentation
    #
    class ClusterOperationV2Provisioned < Struct.new(
      :operation_steps,
      :source_cluster_info,
      :target_cluster_info,
      :vpc_connection_info)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns information about a serverless cluster operation.
    #
    # @!attribute [rw] source_cluster_info
    #   Source cluster connectivity information for the cluster.
    #   @return [Types::ServerlessConnectivityInfo]
    #
    # @!attribute [rw] target_cluster_info
    #   Target cluster connectivity information for the cluster.
    #   @return [Types::ServerlessConnectivityInfo]
    #
    # @!attribute [rw] vpc_connection_info
    #   Description of the VPC connection for CreateVpcConnection and
    #   DeleteVpcConnection operations.
    #   @return [Types::VpcConnectionInfoServerless]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/ClusterOperationV2Serverless AWS API Documentation
    #
    class ClusterOperationV2Serverless < Struct.new(
      :source_cluster_info,
      :target_cluster_info,
      :vpc_connection_info)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns information about a cluster operation.
    #
    # @!attribute [rw] cluster_arn
    #   @return [String]
    #
    # @!attribute [rw] cluster_type
    #   The type of cluster.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   @return [Time]
    #
    # @!attribute [rw] operation_arn
    #   @return [String]
    #
    # @!attribute [rw] operation_state
    #   @return [String]
    #
    # @!attribute [rw] operation_type
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/ClusterOperationV2Summary AWS API Documentation
    #
    class ClusterOperationV2Summary < Struct.new(
      :cluster_arn,
      :cluster_type,
      :start_time,
      :end_time,
      :operation_arn,
      :operation_state,
      :operation_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The client VPC connection object.
    #
    # @!attribute [rw] authentication
    #   The VPC connection authentication type.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The creation time of the VPC connection.
    #   @return [Time]
    #
    # @!attribute [rw] state
    #   The state of a configuration.
    #   @return [String]
    #
    # @!attribute [rw] vpc_connection_arn
    #   The Amazon Resource Name (ARN) of the VPC connection.
    #   @return [String]
    #
    # @!attribute [rw] owner
    #   The owner of the VPC connection.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/ClientVpcConnection AWS API Documentation
    #
    class ClientVpcConnection < Struct.new(
      :authentication,
      :creation_time,
      :state,
      :vpc_connection_arn,
      :owner)
      SENSITIVE = []
      include Aws::Structure
    end

    # The VPC connection object.
    #
    # @!attribute [rw] vpc_connection_arn
    #   The Amazon Resource Name (ARN) of the VPC connection.
    #   @return [String]
    #
    # @!attribute [rw] target_cluster_arn
    #   The Amazon Resource Name (ARN) of the cluster.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The creation time of the VPC connection.
    #   @return [Time]
    #
    # @!attribute [rw] authentication
    #   The authentication type for the VPC connection.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   The VPC ID of the VPC connection.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of a configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/VpcConnection AWS API Documentation
    #
    class VpcConnection < Struct.new(
      :vpc_connection_arn,
      :target_cluster_arn,
      :creation_time,
      :authentication,
      :vpc_id,
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains source Apache Kafka versions and compatible target Apache
    # Kafka versions.
    #
    # @!attribute [rw] source_version
    #   @return [String]
    #
    # @!attribute [rw] target_versions
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/CompatibleKafkaVersion AWS API Documentation
    #
    class CompatibleKafkaVersion < Struct.new(
      :source_version,
      :target_versions)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents an MSK Configuration.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the configuration.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The time when the configuration was created.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The description of the configuration.
    #   @return [String]
    #
    # @!attribute [rw] kafka_versions
    #   An array of the versions of Apache Kafka with which you can use this
    #   MSK configuration. You can use this configuration for an MSK cluster
    #   only if the Apache Kafka version specified for the cluster appears
    #   in this array.
    #   @return [Array<String>]
    #
    # @!attribute [rw] latest_revision
    #   Latest revision of the configuration.
    #   @return [Types::ConfigurationRevision]
    #
    # @!attribute [rw] name
    #   The name of the configuration. Configuration names are strings that
    #   match the regex "^\[0-9A-Za-z-\]+$".
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of a configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/Configuration AWS API Documentation
    #
    class Configuration < Struct.new(
      :arn,
      :creation_time,
      :description,
      :kafka_versions,
      :latest_revision,
      :name,
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the configuration to use for the brokers.
    #
    # @!attribute [rw] arn
    #   ARN of the configuration to use.
    #   @return [String]
    #
    # @!attribute [rw] revision
    #   The revision of the configuration to use.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/ConfigurationInfo AWS API Documentation
    #
    class ConfigurationInfo < Struct.new(
      :arn,
      :revision)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a configuration revision.
    #
    # @!attribute [rw] creation_time
    #   The time when the configuration revision was created.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The description of the configuration revision.
    #   @return [String]
    #
    # @!attribute [rw] revision
    #   The revision number.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/ConfigurationRevision AWS API Documentation
    #
    class ConfigurationRevision < Struct.new(
      :creation_time,
      :description,
      :revision)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns information about an error.
    #
    # @!attribute [rw] invalid_parameter
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :invalid_parameter,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the broker access configuration.
    #
    # @!attribute [rw] public_access
    #   Public access control for brokers.
    #   @return [Types::PublicAccess]
    #
    # @!attribute [rw] vpc_connectivity
    #   VpcConnectivity control for brokers.
    #   @return [Types::VpcConnectivity]
    #
    # @!attribute [rw] network_type
    #   The network type of the cluster, which is IPv4 or DUAL. The DUAL
    #   network type uses both IPv4 and IPv6 addresses for your cluster and
    #   its resources.
    #
    #   By default, a cluster uses the IPv4 network type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/ConnectivityInfo AWS API Documentation
    #
    class ConnectivityInfo < Struct.new(
      :public_access,
      :vpc_connectivity,
      :network_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes brokers being changed during a broker count update.
    #
    # @!attribute [rw] created_broker_ids
    #   List of Broker Ids when creating new Brokers in a cluster.
    #   @return [Array<Float>]
    #
    # @!attribute [rw] deleted_broker_ids
    #   List of Broker Ids when deleting existing Brokers in a cluster.
    #   @return [Array<Float>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/BrokerCountUpdateInfo AWS API Documentation
    #
    class BrokerCountUpdateInfo < Struct.new(
      :created_broker_ids,
      :deleted_broker_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about consumer group replication.
    #
    # @!attribute [rw] consumer_groups_to_exclude
    #   List of regular expression patterns indicating the consumer groups
    #   that should not be replicated.
    #   @return [Array<String>]
    #
    # @!attribute [rw] consumer_groups_to_replicate
    #   List of regular expression patterns indicating the consumer groups
    #   to copy.
    #   @return [Array<String>]
    #
    # @!attribute [rw] detect_and_copy_new_consumer_groups
    #   Enables synchronization of consumer groups to target cluster.
    #   @return [Boolean]
    #
    # @!attribute [rw] synchronise_consumer_group_offsets
    #   Enables synchronization of consumer group offsets to target cluster.
    #   The translated offsets will be written to topic
    #   \_\_consumer\_offsets.
    #   @return [Boolean]
    #
    # @!attribute [rw] consumer_group_offset_sync_mode
    #   The consumer group offset synchronization mode. With LEGACY, offsets
    #   are synchronized when producers write to the source cluster. With
    #   ENHANCED, consumer offsets are synchronized regardless of producer
    #   location. ENHANCED requires a corresponding replicator that
    #   replicates data from the target cluster to the source cluster.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/ConsumerGroupReplication AWS API Documentation
    #
    class ConsumerGroupReplication < Struct.new(
      :consumer_groups_to_exclude,
      :consumer_groups_to_replicate,
      :detect_and_copy_new_consumer_groups,
      :synchronise_consumer_group_offsets,
      :consumer_group_offset_sync_mode)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about consumer group replication.
    #
    # @!attribute [rw] consumer_groups_to_exclude
    #   List of regular expression patterns indicating the consumer groups
    #   that should not be replicated.
    #   @return [Array<String>]
    #
    # @!attribute [rw] consumer_groups_to_replicate
    #   List of regular expression patterns indicating the consumer groups
    #   to copy.
    #   @return [Array<String>]
    #
    # @!attribute [rw] detect_and_copy_new_consumer_groups
    #   Enables synchronization of consumer groups to target cluster.
    #   @return [Boolean]
    #
    # @!attribute [rw] synchronise_consumer_group_offsets
    #   Enables synchronization of consumer group offsets to target cluster.
    #   The translated offsets will be written to topic
    #   \_\_consumer\_offsets.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/ConsumerGroupReplicationUpdate AWS API Documentation
    #
    class ConsumerGroupReplicationUpdate < Struct.new(
      :consumer_groups_to_exclude,
      :consumer_groups_to_replicate,
      :detect_and_copy_new_consumer_groups,
      :synchronise_consumer_group_offsets)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns the channel ARN and the cluster-operation ARN that tracks the
    # asynchronous create.
    #
    # @!attribute [rw] channel_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies the channel.
    #   @return [String]
    #
    # @!attribute [rw] cluster_operation_arn
    #   The Amazon Resource Name (ARN) of the cluster operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/CreateChannelResponse AWS API Documentation
    #
    class CreateChannelResponse < Struct.new(
      :channel_arn,
      :cluster_operation_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Creates a cluster.
    #
    # @!attribute [rw] broker_node_group_info
    #   Information about the brokers.
    #   @return [Types::BrokerNodeGroupInfo]
    #
    # @!attribute [rw] client_authentication
    #   Includes all client authentication related information.
    #   @return [Types::ClientAuthentication]
    #
    # @!attribute [rw] cluster_name
    #   The name of the cluster.
    #   @return [String]
    #
    # @!attribute [rw] configuration_info
    #   Represents the configuration that you want MSK to use for the
    #   cluster.
    #   @return [Types::ConfigurationInfo]
    #
    # @!attribute [rw] encryption_info
    #   Includes all encryption-related information.
    #   @return [Types::EncryptionInfo]
    #
    # @!attribute [rw] enhanced_monitoring
    #   Specifies the level of monitoring for the MSK cluster. The possible
    #   values are DEFAULT, PER\_BROKER, PER\_TOPIC\_PER\_BROKER, and
    #   PER\_TOPIC\_PER\_PARTITION.
    #   @return [String]
    #
    # @!attribute [rw] kafka_version
    #   The version of Apache Kafka.
    #   @return [String]
    #
    # @!attribute [rw] logging_info
    #   LoggingInfo details.
    #   @return [Types::LoggingInfo]
    #
    # @!attribute [rw] number_of_broker_nodes
    #   The number of Apache Kafka broker nodes in the Amazon MSK cluster.
    #   @return [Integer]
    #
    # @!attribute [rw] open_monitoring
    #   The settings for open monitoring.
    #   @return [Types::OpenMonitoringInfo]
    #
    # @!attribute [rw] tags
    #   Create tags when creating the cluster.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] rebalancing
    #   Specifies if intelligent rebalancing should be turned on for the new
    #   MSK Provisioned cluster with Express brokers. By default,
    #   intelligent rebalancing status is ACTIVE for all new clusters.
    #   @return [Types::Rebalancing]
    #
    # @!attribute [rw] storage_mode
    #   This controls storage mode for supported storage tiers.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/CreateClusterRequest AWS API Documentation
    #
    class CreateClusterRequest < Struct.new(
      :broker_node_group_info,
      :client_authentication,
      :cluster_name,
      :configuration_info,
      :encryption_info,
      :enhanced_monitoring,
      :kafka_version,
      :logging_info,
      :number_of_broker_nodes,
      :open_monitoring,
      :tags,
      :rebalancing,
      :storage_mode)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns information about the created cluster.
    #
    # @!attribute [rw] cluster_arn
    #   The Amazon Resource Name (ARN) of the cluster.
    #   @return [String]
    #
    # @!attribute [rw] cluster_name
    #   The name of the MSK cluster.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the cluster. The possible states are ACTIVE, CREATING,
    #   DELETING, FAILED, HEALING, MAINTENANCE, REBOOTING\_BROKER, and
    #   UPDATING.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/CreateClusterResponse AWS API Documentation
    #
    class CreateClusterResponse < Struct.new(
      :cluster_arn,
      :cluster_name,
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request body for CreateConfiguration.
    #
    # @!attribute [rw] description
    #   The description of the configuration.
    #   @return [String]
    #
    # @!attribute [rw] kafka_versions
    #   The versions of Apache Kafka with which you can use this MSK
    #   configuration.
    #   @return [Array<String>]
    #
    # @!attribute [rw] name
    #   The name of the configuration. Configuration names are strings that
    #   match the regex "^\[0-9A-Za-z-\]+$".
    #   @return [String]
    #
    # @!attribute [rw] server_properties
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/CreateConfigurationRequest AWS API Documentation
    #
    class CreateConfigurationRequest < Struct.new(
      :description,
      :kafka_versions,
      :name,
      :server_properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # Response body for CreateConfiguration
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the configuration.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The time when the configuration was created.
    #   @return [Time]
    #
    # @!attribute [rw] latest_revision
    #   Latest revision of the configuration.
    #   @return [Types::ConfigurationRevision]
    #
    # @!attribute [rw] name
    #   The name of the configuration. Configuration names are strings that
    #   match the regex "^\[0-9A-Za-z-\]+$".
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the configuration. The possible states are ACTIVE,
    #   DELETING and DELETE\_FAILED.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/CreateConfigurationResponse AWS API Documentation
    #
    class CreateConfigurationResponse < Struct.new(
      :arn,
      :creation_time,
      :latest_revision,
      :name,
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request body for replicator.
    #
    # @!attribute [rw] description
    #   A summary description of the replicator.
    #   @return [String]
    #
    # @!attribute [rw] kafka_clusters
    #   Kafka Clusters to use in setting up sources / targets for
    #   replication.
    #   @return [Array<Types::KafkaCluster>]
    #
    # @!attribute [rw] log_delivery
    #   Configuration for delivering replicator logs to customer
    #   destinations.
    #   @return [Types::LogDelivery]
    #
    # @!attribute [rw] replication_info_list
    #   A list of replication configurations, where each configuration
    #   targets a given source cluster to target cluster replication flow.
    #   @return [Array<Types::ReplicationInfo>]
    #
    # @!attribute [rw] replicator_name
    #   The name of the replicator. Alpha-numeric characters with '-' are
    #   allowed.
    #   @return [String]
    #
    # @!attribute [rw] service_execution_role_arn
    #   The ARN of the IAM role used by the replicator to access resources
    #   in the customer's account (e.g source and target clusters)
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   List of tags to attach to created Replicator.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/CreateReplicatorRequest AWS API Documentation
    #
    class CreateReplicatorRequest < Struct.new(
      :description,
      :kafka_clusters,
      :log_delivery,
      :replication_info_list,
      :replicator_name,
      :service_execution_role_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns information about the created replicator.
    #
    # @!attribute [rw] replicator_arn
    #   The Amazon Resource Name (ARN) of the replicator.
    #   @return [String]
    #
    # @!attribute [rw] replicator_name
    #   Name of the replicator provided by the customer.
    #   @return [String]
    #
    # @!attribute [rw] replicator_state
    #   State of the replicator.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/CreateReplicatorResponse AWS API Documentation
    #
    class CreateReplicatorResponse < Struct.new(
      :replicator_arn,
      :replicator_name,
      :replicator_state)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request body for CreateTopic.
    #
    # @!attribute [rw] cluster_arn
    #   @return [String]
    #
    # @!attribute [rw] topic_name
    #   @return [String]
    #
    # @!attribute [rw] partition_count
    #   @return [Integer]
    #
    # @!attribute [rw] replication_factor
    #   @return [Integer]
    #
    # @!attribute [rw] configs
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/CreateTopicRequest AWS API Documentation
    #
    class CreateTopicRequest < Struct.new(
      :cluster_arn,
      :topic_name,
      :partition_count,
      :replication_factor,
      :configs)
      SENSITIVE = []
      include Aws::Structure
    end

    # Response body for CreateTopic.
    #
    # @!attribute [rw] topic_arn
    #   @return [String]
    #
    # @!attribute [rw] topic_name
    #   @return [String]
    #
    # @!attribute [rw] status
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/CreateTopicResponse AWS API Documentation
    #
    class CreateTopicResponse < Struct.new(
      :topic_arn,
      :topic_name,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request body for CreateVpcConnection.
    #
    # @!attribute [rw] target_cluster_arn
    #   The Amazon Resource Name (ARN) of the cluster.
    #   @return [String]
    #
    # @!attribute [rw] authentication
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   The VPC ID of the VPC connection.
    #   @return [String]
    #
    # @!attribute [rw] client_subnets
    #   The list of subnets in the client VPC.
    #   @return [Array<String>]
    #
    # @!attribute [rw] security_groups
    #   The list of security groups to attach to the VPC connection.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   Create tags when creating the VPC connection.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/CreateVpcConnectionRequest AWS API Documentation
    #
    class CreateVpcConnectionRequest < Struct.new(
      :target_cluster_arn,
      :authentication,
      :vpc_id,
      :client_subnets,
      :security_groups,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Response body for CreateVpcConnection
    #
    # @!attribute [rw] vpc_connection_arn
    #   The Amazon Resource Name (ARN) of the VPC connection.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the VPC connection. The only possible state is
    #   CREATING.
    #   @return [String]
    #
    # @!attribute [rw] authentication
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   The VPC ID of the VPC connection.
    #   @return [String]
    #
    # @!attribute [rw] client_subnets
    #   The list of subnets in the client VPC.
    #   @return [Array<String>]
    #
    # @!attribute [rw] security_groups
    #   The list of security groups attached to the VPC connection.
    #   @return [Array<String>]
    #
    # @!attribute [rw] creation_time
    #   The time when the VPC connection was created.
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   Tags attached to the VPC connection.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/CreateVpcConnectionResponse AWS API Documentation
    #
    class CreateVpcConnectionResponse < Struct.new(
      :vpc_connection_arn,
      :state,
      :authentication,
      :vpc_id,
      :client_subnets,
      :security_groups,
      :creation_time,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster_arn
    #   @return [String]
    #
    # @!attribute [rw] current_version
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/DeleteClusterRequest AWS API Documentation
    #
    class DeleteClusterRequest < Struct.new(
      :cluster_arn,
      :current_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns information about the deleted cluster.
    #
    # @!attribute [rw] cluster_arn
    #   The Amazon Resource Name (ARN) of the cluster.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the cluster. The possible states are ACTIVE, CREATING,
    #   DELETING, FAILED, HEALING, MAINTENANCE, REBOOTING\_BROKER, and
    #   UPDATING.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/DeleteClusterResponse AWS API Documentation
    #
    class DeleteClusterResponse < Struct.new(
      :cluster_arn,
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request body for DeleteConfiguration.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/DeleteConfigurationRequest AWS API Documentation
    #
    class DeleteConfigurationRequest < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Response body for DeleteConfiguration.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the configuration.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the configuration. The possible states are ACTIVE,
    #   DELETING and DELETE\_FAILED.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/DeleteConfigurationResponse AWS API Documentation
    #
    class DeleteConfigurationResponse < Struct.new(
      :arn,
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] current_version
    #   @return [String]
    #
    # @!attribute [rw] replicator_arn
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/DeleteReplicatorRequest AWS API Documentation
    #
    class DeleteReplicatorRequest < Struct.new(
      :current_version,
      :replicator_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns information about the deleted replicator.
    #
    # @!attribute [rw] replicator_arn
    #   The Amazon Resource Name (ARN) of the replicator.
    #   @return [String]
    #
    # @!attribute [rw] replicator_state
    #   The state of the replicator.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/DeleteReplicatorResponse AWS API Documentation
    #
    class DeleteReplicatorResponse < Struct.new(
      :replicator_arn,
      :replicator_state)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request body for DeleteTopic.
    #
    # @!attribute [rw] cluster_arn
    #   @return [String]
    #
    # @!attribute [rw] topic_name
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/DeleteTopicRequest AWS API Documentation
    #
    class DeleteTopicRequest < Struct.new(
      :cluster_arn,
      :topic_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Response body for DeleteTopic.
    #
    # @!attribute [rw] topic_arn
    #   @return [String]
    #
    # @!attribute [rw] topic_name
    #   @return [String]
    #
    # @!attribute [rw] status
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/DeleteTopicResponse AWS API Documentation
    #
    class DeleteTopicResponse < Struct.new(
      :topic_arn,
      :topic_name,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request body for DeleteVpcConnection.
    #
    # @!attribute [rw] arn
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/DeleteVpcConnectionRequest AWS API Documentation
    #
    class DeleteVpcConnectionRequest < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Response body for DeleteVpcConnection.
    #
    # @!attribute [rw] vpc_connection_arn
    #   The Amazon Resource Name (ARN) of the VPC connection.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the VPC connection. The only possible state is
    #   DELETING.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/DeleteVpcConnectionResponse AWS API Documentation
    #
    class DeleteVpcConnectionResponse < Struct.new(
      :vpc_connection_arn,
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies the channel.
    #   @return [String]
    #
    # @!attribute [rw] cluster_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies the cluster.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/DescribeChannelRequest AWS API Documentation
    #
    class DescribeChannelRequest < Struct.new(
      :channel_arn,
      :cluster_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster_operation_arn
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/DescribeClusterOperationRequest AWS API Documentation
    #
    class DescribeClusterOperationRequest < Struct.new(
      :cluster_operation_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster_operation_arn
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/DescribeClusterOperationV2Request AWS API Documentation
    #
    class DescribeClusterOperationV2Request < Struct.new(
      :cluster_operation_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the current configuration and state of a channel.
    #
    # @!attribute [rw] channel_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies the channel.
    #   @return [String]
    #
    # @!attribute [rw] channel_name
    #   The name of the channel.
    #   @return [String]
    #
    # @!attribute [rw] encryption_configuration
    #   The encryption configuration applied to the channel.
    #   @return [Types::EncryptionConfiguration]
    #
    # @!attribute [rw] iceberg_destination_configuration
    #   The Apache Iceberg destination for the channel, if configured.
    #   @return [Types::IcebergDestinationConfiguration]
    #
    # @!attribute [rw] s3_destination_configuration
    #   The Amazon S3 destination for the channel, if configured.
    #   @return [Types::S3DestinationConfiguration]
    #
    # @!attribute [rw] status
    #   The current lifecycle state of the channel.
    #   @return [String]
    #
    # @!attribute [rw] destination_type
    #   The type of destination configured for the channel.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The time when the channel was created.
    #   @return [Time]
    #
    # @!attribute [rw] topic_configuration_list
    #   The list of topic configurations for the channel.
    #   @return [Array<Types::TopicConfiguration>]
    #
    # @!attribute [rw] logging_info
    #   The destinations to which the channel publishes operational logs.
    #   @return [Types::ChannelLoggingInfo]
    #
    # @!attribute [rw] state_info
    #   Additional context for the current channel state, populated when the
    #   channel is in FAILED.
    #   @return [Types::ChannelStateInfo]
    #
    # @!attribute [rw] cluster_operation_arn
    #   The Amazon Resource Name (ARN) of the in-flight cluster operation.
    #   Returned only while the channel is in CREATING, UPDATING, or
    #   DELETING.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags attached to the channel.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/DescribeChannelResponse AWS API Documentation
    #
    class DescribeChannelResponse < Struct.new(
      :channel_arn,
      :channel_name,
      :encryption_configuration,
      :iceberg_destination_configuration,
      :s3_destination_configuration,
      :status,
      :destination_type,
      :creation_time,
      :topic_configuration_list,
      :logging_info,
      :state_info,
      :cluster_operation_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a cluster operation.
    #
    # @!attribute [rw] cluster_operation_info
    #   Cluster operation information
    #   @return [Types::ClusterOperationInfo]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/DescribeClusterOperationResponse AWS API Documentation
    #
    class DescribeClusterOperationResponse < Struct.new(
      :cluster_operation_info)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a cluster operation.
    #
    # @!attribute [rw] cluster_operation_info
    #   Cluster operation information
    #   @return [Types::ClusterOperationV2]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/DescribeClusterOperationV2Response AWS API Documentation
    #
    class DescribeClusterOperationV2Response < Struct.new(
      :cluster_operation_info)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster_arn
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/DescribeClusterRequest AWS API Documentation
    #
    class DescribeClusterRequest < Struct.new(
      :cluster_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns information about a cluster.
    #
    # @!attribute [rw] cluster_info
    #   The cluster information.
    #   @return [Types::ClusterInfo]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/DescribeClusterResponse AWS API Documentation
    #
    class DescribeClusterResponse < Struct.new(
      :cluster_info)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/DescribeConfigurationRequest AWS API Documentation
    #
    class DescribeConfigurationRequest < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Response body for DescribeConfiguration.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the configuration.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The time when the configuration was created.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The description of the configuration.
    #   @return [String]
    #
    # @!attribute [rw] kafka_versions
    #   The versions of Apache Kafka with which you can use this MSK
    #   configuration.
    #   @return [Array<String>]
    #
    # @!attribute [rw] latest_revision
    #   Latest revision of the configuration.
    #   @return [Types::ConfigurationRevision]
    #
    # @!attribute [rw] name
    #   The name of the configuration. Configuration names are strings that
    #   match the regex "^\[0-9A-Za-z-\]+$".
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the configuration. The possible states are ACTIVE,
    #   DELETING and DELETE\_FAILED.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/DescribeConfigurationResponse AWS API Documentation
    #
    class DescribeConfigurationResponse < Struct.new(
      :arn,
      :creation_time,
      :description,
      :kafka_versions,
      :latest_revision,
      :name,
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   @return [String]
    #
    # @!attribute [rw] revision
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/DescribeConfigurationRevisionRequest AWS API Documentation
    #
    class DescribeConfigurationRevisionRequest < Struct.new(
      :arn,
      :revision)
      SENSITIVE = []
      include Aws::Structure
    end

    # Response body for DescribeConfigurationRevision.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the configuration.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The time when the configuration was created.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The description of the configuration.
    #   @return [String]
    #
    # @!attribute [rw] revision
    #   The revision number.
    #   @return [Integer]
    #
    # @!attribute [rw] server_properties
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/DescribeConfigurationRevisionResponse AWS API Documentation
    #
    class DescribeConfigurationRevisionResponse < Struct.new(
      :arn,
      :creation_time,
      :description,
      :revision,
      :server_properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request body for DescribeTopic.
    #
    # @!attribute [rw] cluster_arn
    #   @return [String]
    #
    # @!attribute [rw] topic_name
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/DescribeTopicRequest AWS API Documentation
    #
    class DescribeTopicRequest < Struct.new(
      :cluster_arn,
      :topic_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request body for DescribeTopicPartitions.
    #
    # @!attribute [rw] cluster_arn
    #   @return [String]
    #
    # @!attribute [rw] topic_name
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/DescribeTopicPartitionsRequest AWS API Documentation
    #
    class DescribeTopicPartitionsRequest < Struct.new(
      :cluster_arn,
      :topic_name,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration of an Apache Iceberg destination table.
    #
    # @!attribute [rw] destination_database_name
    #   The name of the destination namespace (database) in the AWS Glue
    #   Data Catalog.
    #   @return [String]
    #
    # @!attribute [rw] destination_table_name
    #   The name of the destination Apache Iceberg table.
    #   @return [String]
    #
    # @!attribute [rw] partition_spec
    #   The partition specification for the destination table.
    #   @return [Types::PartitionSpec]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/DestinationTable AWS API Documentation
    #
    class DestinationTable < Struct.new(
      :destination_database_name,
      :destination_table_name,
      :partition_spec)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response containing details for a topic.
    #
    # @!attribute [rw] topic_arn
    #   @return [String]
    #
    # @!attribute [rw] topic_name
    #   @return [String]
    #
    # @!attribute [rw] replication_factor
    #   @return [Integer]
    #
    # @!attribute [rw] partition_count
    #   @return [Integer]
    #
    # @!attribute [rw] configs
    #   @return [String]
    #
    # @!attribute [rw] status
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/DescribeTopicResponse AWS API Documentation
    #
    class DescribeTopicResponse < Struct.new(
      :topic_arn,
      :topic_name,
      :replication_factor,
      :partition_count,
      :configs,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response containing partitions details for a topic.
    #
    # @!attribute [rw] partitions
    #   @return [Array<Types::TopicPartitionInfo>]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/DescribeTopicPartitionsResponse AWS API Documentation
    #
    class DescribeTopicPartitionsResponse < Struct.new(
      :partitions,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a topic partition.
    #
    # @!attribute [rw] partition
    #   @return [Integer]
    #
    # @!attribute [rw] leader
    #   @return [Integer]
    #
    # @!attribute [rw] replicas
    #   @return [Array<Integer>]
    #
    # @!attribute [rw] isr
    #   @return [Array<Integer>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/TopicPartitionInfo AWS API Documentation
    #
    class TopicPartitionInfo < Struct.new(
      :partition,
      :leader,
      :replicas,
      :isr)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] replicator_arn
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/DescribeReplicatorRequest AWS API Documentation
    #
    class DescribeReplicatorRequest < Struct.new(
      :replicator_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Response body for DescribeReplicator.
    #
    # @!attribute [rw] creation_time
    #   The time when the replicator was created.
    #   @return [Time]
    #
    # @!attribute [rw] current_version
    #   The current version number of the replicator.
    #   @return [String]
    #
    # @!attribute [rw] is_replicator_reference
    #   Whether this resource is a replicator reference.
    #   @return [Boolean]
    #
    # @!attribute [rw] kafka_clusters
    #   Kafka Clusters used in setting up sources / targets for replication.
    #   @return [Array<Types::KafkaClusterDescription>]
    #
    # @!attribute [rw] log_delivery
    #   Configuration for log delivery for the replicator.
    #   @return [Types::LogDelivery]
    #
    # @!attribute [rw] replication_info_list
    #   A list of replication configurations, where each configuration
    #   targets a given source cluster to target cluster replication flow.
    #   @return [Array<Types::ReplicationInfoDescription>]
    #
    # @!attribute [rw] replicator_arn
    #   The Amazon Resource Name (ARN) of the replicator.
    #   @return [String]
    #
    # @!attribute [rw] replicator_description
    #   The description of the replicator.
    #   @return [String]
    #
    # @!attribute [rw] replicator_name
    #   The name of the replicator.
    #   @return [String]
    #
    # @!attribute [rw] replicator_resource_arn
    #   The Amazon Resource Name (ARN) of the replicator resource in the
    #   region where the replicator was created.
    #   @return [String]
    #
    # @!attribute [rw] replicator_state
    #   State of the replicator.
    #   @return [String]
    #
    # @!attribute [rw] service_execution_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role used by the
    #   replicator to access resources in the customer's account (e.g
    #   source and target clusters)
    #   @return [String]
    #
    # @!attribute [rw] state_info
    #   Details about the state of the replicator.
    #   @return [Types::ReplicationStateInfo]
    #
    # @!attribute [rw] tags
    #   List of tags attached to the Replicator.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/DescribeReplicatorResponse AWS API Documentation
    #
    class DescribeReplicatorResponse < Struct.new(
      :creation_time,
      :current_version,
      :is_replicator_reference,
      :kafka_clusters,
      :log_delivery,
      :replication_info_list,
      :replicator_arn,
      :replicator_description,
      :replicator_name,
      :replicator_resource_arn,
      :replicator_state,
      :service_execution_role_arn,
      :state_info,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/DescribeVpcConnectionRequest AWS API Documentation
    #
    class DescribeVpcConnectionRequest < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Response body for DescribeVpcConnection.
    #
    # @!attribute [rw] vpc_connection_arn
    #   The Amazon Resource Name (ARN) of the VPC connection.
    #   @return [String]
    #
    # @!attribute [rw] target_cluster_arn
    #   The Amazon Resource Name (ARN) of the cluster.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the VPC connection. The possible states are AVAILABLE,
    #   INACTIVE, DEACTIVATING, DELETING, CREATING, REJECTING, REJECTED and
    #   FAILED.
    #   @return [String]
    #
    # @!attribute [rw] authentication
    #   The authentication type of the VPC connection.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   The VPC ID of the VPC connection.
    #   @return [String]
    #
    # @!attribute [rw] subnets
    #   The list of subnets in the client VPC.
    #   @return [Array<String>]
    #
    # @!attribute [rw] security_groups
    #   The list of security groups attached to the VPC connection.
    #   @return [Array<String>]
    #
    # @!attribute [rw] creation_time
    #   The creation time of the VPC connection.
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   Tags attached to the VPC connection.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/DescribeVpcConnectionResponse AWS API Documentation
    #
    class DescribeVpcConnectionResponse < Struct.new(
      :vpc_connection_arn,
      :target_cluster_arn,
      :state,
      :authentication,
      :vpc_id,
      :subnets,
      :security_groups,
      :creation_time,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request body for BatchDisassociateScramSecret.
    #
    # @!attribute [rw] cluster_arn
    #   @return [String]
    #
    # @!attribute [rw] secret_arn_list
    #   List of AWS Secrets Manager secret ARNs.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/BatchDisassociateScramSecretRequest AWS API Documentation
    #
    class BatchDisassociateScramSecretRequest < Struct.new(
      :cluster_arn,
      :secret_arn_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # Response body for BatchDisassociateScramSecret.
    #
    # @!attribute [rw] cluster_arn
    #   The Amazon Resource Name (ARN) of the cluster.
    #   @return [String]
    #
    # @!attribute [rw] unprocessed_scram_secrets
    #   List of errors when disassociating secrets to cluster.
    #   @return [Array<Types::UnprocessedScramSecret>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/BatchDisassociateScramSecretResponse AWS API Documentation
    #
    class BatchDisassociateScramSecretResponse < Struct.new(
      :cluster_arn,
      :unprocessed_scram_secrets)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the EBS storage volumes attached to Apache
    # Kafka broker nodes.
    #
    # @!attribute [rw] provisioned_throughput
    #   EBS volume provisioned throughput information.
    #   @return [Types::ProvisionedThroughput]
    #
    # @!attribute [rw] volume_size
    #   The size in GiB of the EBS volume for the data drive on each broker
    #   node.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/EBSStorageInfo AWS API Documentation
    #
    class EBSStorageInfo < Struct.new(
      :provisioned_throughput,
      :volume_size)
      SENSITIVE = []
      include Aws::Structure
    end

    # The AWS KMS encryption configuration applied to data at rest.
    #
    # @!attribute [rw] kms_key_arn
    #   The Amazon Resource Name (ARN) of the AWS KMS key used to encrypt
    #   the data.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/EncryptionConfiguration AWS API Documentation
    #
    class EncryptionConfiguration < Struct.new(
      :kms_key_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The data-volume encryption details.
    #
    # @!attribute [rw] data_volume_kms_key_id
    #   The ARN of the AWS KMS key for encrypting data at rest. If you
    #   don't specify a KMS key, MSK creates one for you and uses it.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/EncryptionAtRest AWS API Documentation
    #
    class EncryptionAtRest < Struct.new(
      :data_volume_kms_key_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The settings for encrypting data in transit.
    #
    # @!attribute [rw] client_broker
    #   Indicates the encryption setting for data in transit between clients
    #   and brokers. You must set it to one of the following values.
    #
    #   TLS means that client-broker communication is enabled with TLS only.
    #
    #   TLS\_PLAINTEXT means that client-broker communication is enabled for
    #   both TLS-encrypted, as well as plaintext data.
    #
    #   PLAINTEXT means that client-broker communication is enabled in
    #   plaintext only.
    #
    #   The default value is TLS.
    #   @return [String]
    #
    # @!attribute [rw] in_cluster
    #   When set to true, it indicates that data communication among the
    #   broker nodes of the cluster is encrypted. When set to false, the
    #   communication happens in plaintext.
    #
    #   The default value is true.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/EncryptionInTransit AWS API Documentation
    #
    class EncryptionInTransit < Struct.new(
      :client_broker,
      :in_cluster)
      SENSITIVE = []
      include Aws::Structure
    end

    # Includes encryption-related information, such as the AWS KMS key used
    # for encrypting data at rest and whether you want MSK to encrypt your
    # data in transit.
    #
    # @!attribute [rw] encryption_at_rest
    #   The data-volume encryption details.
    #   @return [Types::EncryptionAtRest]
    #
    # @!attribute [rw] encryption_in_transit
    #   The details for encryption in transit.
    #   @return [Types::EncryptionInTransit]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/EncryptionInfo AWS API Documentation
    #
    class EncryptionInfo < Struct.new(
      :encryption_at_rest,
      :encryption_in_transit)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns information about an error.
    #
    # @!attribute [rw] invalid_parameter
    #   The parameter that caused the error.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The description of the error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/Error AWS API Documentation
    #
    class Error < Struct.new(
      :invalid_parameter,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Firehose details for logs.
    #
    # @!attribute [rw] delivery_stream
    #   The Kinesis Data Firehose delivery stream that is the destination
    #   for broker logs.
    #   @return [String]
    #
    # @!attribute [rw] enabled
    #   Specifies whether broker logs get sent to the specified Kinesis Data
    #   Firehose delivery stream.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/Firehose AWS API Documentation
    #
    class Firehose < Struct.new(
      :delivery_stream,
      :enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns information about an error state of the cluster.
    #
    # @!attribute [rw] error_code
    #   A number describing the error programmatically.
    #   @return [String]
    #
    # @!attribute [rw] error_string
    #   An optional field to provide more details about the error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/ErrorInfo AWS API Documentation
    #
    class ErrorInfo < Struct.new(
      :error_code,
      :error_string)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns information about an error.
    #
    # @!attribute [rw] invalid_parameter
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/ForbiddenException AWS API Documentation
    #
    class ForbiddenException < Struct.new(
      :invalid_parameter,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster_arn
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/GetBootstrapBrokersRequest AWS API Documentation
    #
    class GetBootstrapBrokersRequest < Struct.new(
      :cluster_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns a string containing one or more hostname:port pairs.
    #
    # @!attribute [rw] bootstrap_broker_string
    #   A string containing one or more hostname:port pairs.
    #   @return [String]
    #
    # @!attribute [rw] bootstrap_broker_string_public_sasl_iam
    #   A string that contains one or more DNS names (or IP addresses) and
    #   SASL IAM port pairs. The following is an example.
    #
    #   <programlisting>{ "BootstrapBrokerStringSaslIam": "b-3.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9198,b-1.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9198,b-2.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9198" }</programlisting>
    #   @return [String]
    #
    # @!attribute [rw] bootstrap_broker_string_public_sasl_scram
    #   A string containing one or more DNS names (or IP addresses) and SASL
    #   SCRAM port pairs. The following is an example.
    #
    #   <programlisting>{ "BootstrapBrokerStringSaslScram": "b-3.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9196,b-1.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9196,b-2.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9196" }</programlisting>
    #   @return [String]
    #
    # @!attribute [rw] bootstrap_broker_string_public_tls
    #   A string containing one or more DNS names (or IP addresses) and TLS
    #   port pairs. The following is an example.
    #
    #   <programlisting>{ "BootstrapBrokerStringTls": "b-3.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9194,b-1.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9194,b-2.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9194" }</programlisting>
    #   @return [String]
    #
    # @!attribute [rw] bootstrap_broker_string_tls
    #   A string containing one or more DNS names (or IP addresses) and TLS
    #   port pairs. The following is an example.
    #
    #   <programlisting>{ "BootstrapBrokerStringTls": "b-3.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9094,b-1.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9094,b-2.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9094" }</programlisting>
    #   @return [String]
    #
    # @!attribute [rw] bootstrap_broker_string_sasl_scram
    #   A string containing one or more DNS names (or IP addresses) and SASL
    #   SCRAM port pairs. The following is an example.
    #
    #   <programlisting>{ "BootstrapBrokerStringSaslScram": "b-3.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9096,b-1.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9096,b-2.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9096" }</programlisting>
    #   @return [String]
    #
    # @!attribute [rw] bootstrap_broker_string_sasl_iam
    #   A string that contains one or more DNS names (or IP addresses) and
    #   SASL IAM port pairs. The following is an example.
    #
    #   <programlisting>{ "BootstrapBrokerStringSaslIam": "b-3.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9098,b-1.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9098,b-2.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9098" }</programlisting>
    #   @return [String]
    #
    # @!attribute [rw] bootstrap_broker_string_vpc_connectivity_tls
    #   A string containing one or more dns name (or IP) and Tls port pairs
    #   for VPC connectivity.
    #   @return [String]
    #
    # @!attribute [rw] bootstrap_broker_string_vpc_connectivity_sasl_scram
    #   A string containing one or more dns name (or IP) and SASL SCRAM port
    #   pairs for VPC connectivity.
    #   @return [String]
    #
    # @!attribute [rw] bootstrap_broker_string_vpc_connectivity_sasl_iam
    #   A string containing one or more dns name (or IP) and SASL IAM port
    #   pairs for VPC connectivity.
    #   @return [String]
    #
    # @!attribute [rw] bootstrap_broker_string_ipv_6
    #   A string that contains one or more DNS names (or IP) and port pairs
    #   for IPv6 connectivity.
    #   @return [String]
    #
    # @!attribute [rw] bootstrap_broker_string_tls_ipv_6
    #   A string that contains one or more DNS names (or IP) and TLS port
    #   pairs for IPv6 connectivity.
    #   @return [String]
    #
    # @!attribute [rw] bootstrap_broker_string_sasl_scram_ipv_6
    #   A string that contains one or more DNS names (or IP) and SASL SCRAM
    #   port pairs for IPv6 connectivity.
    #   @return [String]
    #
    # @!attribute [rw] bootstrap_broker_string_sasl_iam_ipv_6
    #   A string that contains one or more DNS names (or IP) and SASL IAM
    #   port pairs for IPv6 connectivity.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/GetBootstrapBrokersResponse AWS API Documentation
    #
    class GetBootstrapBrokersResponse < Struct.new(
      :bootstrap_broker_string,
      :bootstrap_broker_string_public_sasl_iam,
      :bootstrap_broker_string_public_sasl_scram,
      :bootstrap_broker_string_public_tls,
      :bootstrap_broker_string_tls,
      :bootstrap_broker_string_sasl_scram,
      :bootstrap_broker_string_sasl_iam,
      :bootstrap_broker_string_vpc_connectivity_tls,
      :bootstrap_broker_string_vpc_connectivity_sasl_scram,
      :bootstrap_broker_string_vpc_connectivity_sasl_iam,
      :bootstrap_broker_string_ipv_6,
      :bootstrap_broker_string_tls_ipv_6,
      :bootstrap_broker_string_sasl_scram_ipv_6,
      :bootstrap_broker_string_sasl_iam_ipv_6)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster_arn
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/GetCompatibleKafkaVersionsRequest AWS API Documentation
    #
    class GetCompatibleKafkaVersionsRequest < Struct.new(
      :cluster_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Response body for GetCompatibleKafkaVersions.
    #
    # @!attribute [rw] compatible_kafka_versions
    #   A list of CompatibleKafkaVersion objects.
    #   @return [Array<Types::CompatibleKafkaVersion>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/GetCompatibleKafkaVersionsResponse AWS API Documentation
    #
    class GetCompatibleKafkaVersionsResponse < Struct.new(
      :compatible_kafka_versions)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration of an Apache Iceberg destination for a channel.
    #
    # @!attribute [rw] append_only
    #   Whether the destination is append-only. Must be true; updates and
    #   deletes are not supported.
    #   @return [Boolean]
    #
    # @!attribute [rw] catalog
    #   The AWS Glue Data Catalog and S3 Tables warehouse used by the
    #   destination.
    #   @return [Types::Catalog]
    #
    # @!attribute [rw] data_freshness_in_seconds
    #   The maximum time, in seconds, that records buffer in MSK before
    #   being flushed to the destination. Allowed range: 300 to 900.
    #   Default: 600.
    #   @return [Integer]
    #
    # @!attribute [rw] dead_letter_queue_s3
    #   The Amazon S3 bucket and prefix where MSK writes records that fail
    #   to deliver.
    #   @return [Types::DeadLetterQueueS3]
    #
    # @!attribute [rw] destination_table_list
    #   The destination Iceberg tables. Currently exactly one table must be
    #   specified.
    #   @return [Array<Types::DestinationTable>]
    #
    # @!attribute [rw] schema_evolution
    #   Configuration controlling whether the destination table's schema is
    #   evolved to match incoming records.
    #   @return [Types::SchemaEvolution]
    #
    # @!attribute [rw] service_execution_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that MSK assumes to
    #   access the destination table, the AWS Glue Data Catalog, and the
    #   dead-letter Amazon S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] table_creation
    #   Configuration controlling whether MSK creates the destination table
    #   if it does not already exist.
    #   @return [Types::TableCreation]
    #
    # @!attribute [rw] compression_type
    #   The compression codec for Iceberg table data files. Defaults to
    #   ZSTD.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/IcebergDestinationConfiguration AWS API Documentation
    #
    class IcebergDestinationConfiguration < Struct.new(
      :append_only,
      :catalog,
      :data_freshness_in_seconds,
      :dead_letter_queue_s3,
      :destination_table_list,
      :schema_evolution,
      :service_execution_role_arn,
      :table_creation,
      :compression_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns information about an error.
    #
    # @!attribute [rw] invalid_parameter
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/InternalServerErrorException AWS API Documentation
    #
    class InternalServerErrorException < Struct.new(
      :invalid_parameter,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about Kafka Cluster to be used as source / target for
    # replication.
    #
    # @!attribute [rw] amazon_msk_cluster
    #   Details of an Amazon MSK Cluster.
    #   @return [Types::AmazonMskCluster]
    #
    # @!attribute [rw] apache_kafka_cluster
    #   Details of an Apache Kafka Cluster.
    #   @return [Types::ApacheKafkaCluster]
    #
    # @!attribute [rw] vpc_config
    #   Details of an Amazon VPC which has network connectivity to the
    #   Apache Kafka cluster.
    #   @return [Types::KafkaClusterClientVpcConfig]
    #
    # @!attribute [rw] client_authentication
    #   Details of the client authentication used by the Apache Kafka
    #   cluster.
    #   @return [Types::KafkaClusterClientAuthentication]
    #
    # @!attribute [rw] encryption_in_transit
    #   Details of encryption in transit to the Apache Kafka cluster.
    #   @return [Types::KafkaClusterEncryptionInTransit]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/KafkaCluster AWS API Documentation
    #
    class KafkaCluster < Struct.new(
      :amazon_msk_cluster,
      :apache_kafka_cluster,
      :vpc_config,
      :client_authentication,
      :encryption_in_transit)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] security_group_ids
    #   The security groups to attach to the ENIs for the broker nodes.
    #   @return [Array<String>]
    #
    # @!attribute [rw] subnet_ids
    #   The list of subnets in the client VPC to connect to.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/KafkaClusterClientVpcConfig AWS API Documentation
    #
    class KafkaClusterClientVpcConfig < Struct.new(
      :security_group_ids,
      :subnet_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details of the client authentication used by the Apache Kafka cluster.
    #
    # @!attribute [rw] sasl_scram
    #   Details for SASL/SCRAM client authentication.
    #   @return [Types::KafkaClusterSaslScramAuthentication]
    #
    # @!attribute [rw] mtls
    #   Details for mTLS client authentication.
    #   @return [Types::KafkaClusterMTLSAuthentication]
    #
    # @!attribute [rw] sasl_o_auth_bearer
    #   Details for SASL/OAUTHBEARER client authentication.
    #   @return [Types::KafkaClusterSaslOAuthBearerAuthentication]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/KafkaClusterClientAuthentication AWS API Documentation
    #
    class KafkaClusterClientAuthentication < Struct.new(
      :sasl_scram,
      :mtls,
      :sasl_o_auth_bearer)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details for SASL/OAUTHBEARER client authentication.
    #
    # @!attribute [rw] token_endpoint_url
    #   The HTTPS URL of the OAuth token endpoint that vends OAuth Bearer
    #   tokens per RFC 6749.
    #   @return [String]
    #
    # @!attribute [rw] client_credentials
    #   Details for SASL/OAUTHBEARER using standard client\_credentials
    #   grant.
    #   @return [Types::KafkaClusterOAuthClientCredentials]
    #
    # @!attribute [rw] iam_jwt_bearer
    #   Details for SASL/OAUTHBEARER using JWT Bearer assertion grant.
    #   @return [Types::KafkaClusterOAuthIamJwtBearer]
    #
    # @!attribute [rw] client_credentials_assertion
    #   Details for SASL/OAUTHBEARER using client credentials grant with JWT
    #   client assertion.
    #   @return [Types::KafkaClusterOAuthClientCredentialsAssertion]
    #
    # @!attribute [rw] token_endpoint_authentication_method
    #   How client credentials are sent to the identity provider. Valid
    #   values are POST, BASIC, or NONE.
    #   @return [String]
    #
    # @!attribute [rw] scope
    #   OAuth scope to request. Included in the token request if provided.
    #   @return [String]
    #
    # @!attribute [rw] token_endpoint_tls_certificate_arn
    #   Secrets Manager ARN containing a custom CA certificate for the
    #   identity provider. Required only if the identity provider uses a
    #   private CA.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/KafkaClusterSaslOAuthBearerAuthentication AWS API Documentation
    #
    class KafkaClusterSaslOAuthBearerAuthentication < Struct.new(
      :token_endpoint_url,
      :client_credentials,
      :iam_jwt_bearer,
      :client_credentials_assertion,
      :token_endpoint_authentication_method,
      :scope,
      :token_endpoint_tls_certificate_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details for SASL/OAUTHBEARER using standard client\_credentials grant
    # (RFC 6749).
    #
    # @!attribute [rw] token_request_secret_arn
    #   The Amazon Resource Name (ARN) of the Secrets Manager secret
    #   containing the OAuth client credentials.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/KafkaClusterOAuthClientCredentials AWS API Documentation
    #
    class KafkaClusterOAuthClientCredentials < Struct.new(
      :token_request_secret_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details for SASL/OAUTHBEARER using JWT Bearer assertion grant (RFC
    # 7523).
    #
    # @!attribute [rw] audience
    #   The audience for the JWT Bearer assertion.
    #   @return [String]
    #
    # @!attribute [rw] signing_algorithm
    #   The signing algorithm for the JWT Bearer assertion.
    #   @return [String]
    #
    # @!attribute [rw] token_request_secret_arn
    #   The Amazon Resource Name (ARN) of the Secrets Manager secret
    #   containing the signing key.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/KafkaClusterOAuthIamJwtBearer AWS API Documentation
    #
    class KafkaClusterOAuthIamJwtBearer < Struct.new(
      :audience,
      :signing_algorithm,
      :token_request_secret_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details for SASL/OAUTHBEARER using client credentials grant with JWT
    # client assertion (RFC 7521/7523).
    #
    # @!attribute [rw] audience
    #   The audience for the JWT client assertion.
    #   @return [String]
    #
    # @!attribute [rw] signing_algorithm
    #   The signing algorithm for the JWT client assertion.
    #   @return [String]
    #
    # @!attribute [rw] token_request_secret_arn
    #   The Amazon Resource Name (ARN) of the Secrets Manager secret
    #   containing the signing key.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/KafkaClusterOAuthClientCredentialsAssertion AWS API Documentation
    #
    class KafkaClusterOAuthClientCredentialsAssertion < Struct.new(
      :audience,
      :signing_algorithm,
      :token_request_secret_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details for SASL/SCRAM client authentication.
    #
    # @!attribute [rw] mechanism
    #   The SASL/SCRAM authentication mechanism.
    #   @return [String]
    #
    # @!attribute [rw] secret_arn
    #   The Amazon Resource Name (ARN) of the Secrets Manager secret.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/KafkaClusterSaslScramAuthentication AWS API Documentation
    #
    class KafkaClusterSaslScramAuthentication < Struct.new(
      :mechanism,
      :secret_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details for mTLS client authentication.
    #
    # @!attribute [rw] secret_arn
    #   The Amazon Resource Name (ARN) of the Secrets Manager secret.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/KafkaClusterMTLSAuthentication AWS API Documentation
    #
    class KafkaClusterMTLSAuthentication < Struct.new(
      :secret_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details of encryption in transit to the Apache Kafka cluster.
    #
    # @!attribute [rw] encryption_type
    #   The type of encryption in transit to the Apache Kafka cluster.
    #   @return [String]
    #
    # @!attribute [rw] root_ca_certificate
    #   The root CA certificate.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/KafkaClusterEncryptionInTransit AWS API Documentation
    #
    class KafkaClusterEncryptionInTransit < Struct.new(
      :encryption_type,
      :root_ca_certificate)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about Kafka Cluster used as source / target for
    # replication.
    #
    # @!attribute [rw] amazon_msk_cluster
    #   Details of an Amazon MSK Cluster.
    #   @return [Types::AmazonMskCluster]
    #
    # @!attribute [rw] apache_kafka_cluster
    #   Details of an Apache Kafka Cluster.
    #   @return [Types::ApacheKafkaCluster]
    #
    # @!attribute [rw] kafka_cluster_alias
    #   The alias of the Kafka cluster. Used to prefix names of replicated
    #   topics.
    #   @return [String]
    #
    # @!attribute [rw] vpc_config
    #   Details of an Amazon VPC which has network connectivity to the
    #   Apache Kafka cluster.
    #   @return [Types::KafkaClusterClientVpcConfig]
    #
    # @!attribute [rw] client_authentication
    #   Details of the client authentication used by the Apache Kafka
    #   cluster.
    #   @return [Types::KafkaClusterClientAuthentication]
    #
    # @!attribute [rw] encryption_in_transit
    #   Details of encryption in transit to the Apache Kafka cluster.
    #   @return [Types::KafkaClusterEncryptionInTransit]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/KafkaClusterDescription AWS API Documentation
    #
    class KafkaClusterDescription < Struct.new(
      :amazon_msk_cluster,
      :apache_kafka_cluster,
      :kafka_cluster_alias,
      :vpc_config,
      :client_authentication,
      :encryption_in_transit)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summarized information about Kafka Cluster used as source / target for
    # replication.
    #
    # @!attribute [rw] amazon_msk_cluster
    #   Details of an Amazon MSK Cluster
    #
    #   .
    #   @return [Types::AmazonMskCluster]
    #
    # @!attribute [rw] apache_kafka_cluster
    #   Details of an Apache Kafka Cluster.
    #   @return [Types::ApacheKafkaCluster]
    #
    # @!attribute [rw] kafka_cluster_alias
    #   The alias of the Kafka cluster. Used to prefix names of replicated
    #   topics.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/KafkaClusterSummary AWS API Documentation
    #
    class KafkaClusterSummary < Struct.new(
      :amazon_msk_cluster,
      :apache_kafka_cluster,
      :kafka_cluster_alias)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a Apache Kafka version.
    #
    # @!attribute [rw] version
    #   The Apache Kafka version.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the Apache Kafka version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/KafkaVersion AWS API Documentation
    #
    class KafkaVersion < Struct.new(
      :version,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster_arn
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/ListClusterOperationsRequest AWS API Documentation
    #
    class ListClusterOperationsRequest < Struct.new(
      :cluster_arn,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster_arn
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/ListClusterOperationsV2Request AWS API Documentation
    #
    class ListClusterOperationsV2Request < Struct.new(
      :cluster_arn,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response contains an array containing cluster operation
    # information and a next token if the response is truncated.
    #
    # @!attribute [rw] cluster_operation_info_list
    #   An array of cluster operation information objects.
    #   @return [Array<Types::ClusterOperationInfo>]
    #
    # @!attribute [rw] next_token
    #   If the response of ListClusterOperations is truncated, it returns a
    #   NextToken in the response. This Nexttoken should be sent in the
    #   subsequent request to ListClusterOperations.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/ListClusterOperationsResponse AWS API Documentation
    #
    class ListClusterOperationsResponse < Struct.new(
      :cluster_operation_info_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response contains an array containing cluster operation
    # information and a next token if the response is truncated.
    #
    # @!attribute [rw] cluster_operation_info_list
    #   @return [Array<Types::ClusterOperationV2Summary>]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/ListClusterOperationsV2Response AWS API Documentation
    #
    class ListClusterOperationsV2Response < Struct.new(
      :cluster_operation_info_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster_name_filter
    #   Specify a prefix of the names of the clusters that you want to list.
    #   The service lists all the clusters whose names start with this
    #   prefix.
    #   @return [String]
    #
    # @!attribute [rw] cluster_type_filter
    #   Specify either PROVISIONED or SERVERLESS.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in the response. If there
    #   are more results, the response includes a NextToken parameter.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The paginated results marker. When the result of the operation is
    #   truncated, the call returns NextToken in the response. To get the
    #   next batch, provide this token in your next request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/ListClustersV2Request AWS API Documentation
    #
    class ListClustersV2Request < Struct.new(
      :cluster_name_filter,
      :cluster_type_filter,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response contains an array containing cluster information and a
    # next token if the response is truncated.
    #
    # @!attribute [rw] cluster_info_list
    #   Information on each of the MSK clusters in the response.
    #   @return [Array<Types::Cluster>]
    #
    # @!attribute [rw] next_token
    #   The paginated results marker. When the result of a ListClusters
    #   operation is truncated, the call returns NextToken in the response.
    #   To get another batch of clusters, provide this token in your next
    #   request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/ListClustersV2Response AWS API Documentation
    #
    class ListClustersV2Response < Struct.new(
      :cluster_info_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Creates a new Amazon MSK cluster of either the provisioned or the
    # serverless type.
    #
    # @!attribute [rw] cluster_name
    #   The name of the cluster.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A map of tags that you want the cluster to have.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] provisioned
    #   Creates a provisioned cluster.
    #   @return [Types::ProvisionedRequest]
    #
    # @!attribute [rw] serverless
    #   Creates a serverless cluster.
    #   @return [Types::ServerlessRequest]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/CreateClusterV2Request AWS API Documentation
    #
    class CreateClusterV2Request < Struct.new(
      :cluster_name,
      :tags,
      :provisioned,
      :serverless)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns information about the created cluster of either the
    # provisioned or the serverless type.
    #
    # @!attribute [rw] cluster_arn
    #   The Amazon Resource Name (ARN) of the cluster.
    #   @return [String]
    #
    # @!attribute [rw] cluster_name
    #   The name of the MSK cluster.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the cluster. The possible states are ACTIVE, CREATING,
    #   DELETING, FAILED, HEALING, MAINTENANCE, REBOOTING\_BROKER, and
    #   UPDATING.
    #   @return [String]
    #
    # @!attribute [rw] cluster_type
    #   The type of the cluster. The possible types are PROVISIONED or
    #   SERVERLESS.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/CreateClusterV2Response AWS API Documentation
    #
    class CreateClusterV2Response < Struct.new(
      :cluster_arn,
      :cluster_name,
      :state,
      :cluster_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration of the Amazon S3 bucket where records that fail to
    # deliver are stored.
    #
    # @!attribute [rw] bucket_arn
    #   The Amazon Resource Name (ARN) of the dead-letter Amazon S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] error_output_prefix
    #   An optional prefix prepended to every dead-letter Amazon S3 object
    #   key.
    #   @return [String]
    #
    # @!attribute [rw] expected_bucket_owner
    #   Optional 12-digit AWS account ID expected to own the dead-letter
    #   Amazon S3 bucket.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/DeadLetterQueueS3 AWS API Documentation
    #
    class DeadLetterQueueS3 < Struct.new(
      :bucket_arn,
      :error_output_prefix,
      :expected_bucket_owner)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies the cluster.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/DescribeClusterV2Request AWS API Documentation
    #
    class DescribeClusterV2Request < Struct.new(
      :cluster_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns information about a cluster of either the provisioned or the
    # serverless type.
    #
    # @!attribute [rw] cluster_info
    #   The cluster information.
    #   @return [Types::Cluster]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/DescribeClusterV2Response AWS API Documentation
    #
    class DescribeClusterV2Response < Struct.new(
      :cluster_info)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies the channel.
    #   @return [String]
    #
    # @!attribute [rw] cluster_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies the cluster.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/DeleteChannelRequest AWS API Documentation
    #
    class DeleteChannelRequest < Struct.new(
      :channel_arn,
      :cluster_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns the channel ARN and the cluster-operation ARN that tracks the
    # asynchronous delete.
    #
    # @!attribute [rw] channel_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies the channel.
    #   @return [String]
    #
    # @!attribute [rw] cluster_operation_arn
    #   The Amazon Resource Name (ARN) of the cluster operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/DeleteChannelResponse AWS API Documentation
    #
    class DeleteChannelResponse < Struct.new(
      :channel_arn,
      :cluster_operation_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request body for DeleteClusterPolicy.
    #
    # @!attribute [rw] cluster_arn
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/DeleteClusterPolicyRequest AWS API Documentation
    #
    class DeleteClusterPolicyRequest < Struct.new(
      :cluster_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Response body for DeleteClusterPolicy.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/DeleteClusterPolicyResponse AWS API Documentation
    #
    class DeleteClusterPolicyResponse < Aws::EmptyStructure; end

    # Request body for GetClusterPolicy.
    #
    # @!attribute [rw] cluster_arn
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/GetClusterPolicyRequest AWS API Documentation
    #
    class GetClusterPolicyRequest < Struct.new(
      :cluster_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns information about the specified cluster policy.
    #
    # @!attribute [rw] current_version
    #   Cluster policy version.
    #   @return [String]
    #
    # @!attribute [rw] policy
    #   Cluster policy attached to the MSK cluster.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/GetClusterPolicyResponse AWS API Documentation
    #
    class GetClusterPolicyResponse < Struct.new(
      :current_version,
      :policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration that controls how Apache Kafka record values are
    # deserialized for the destination.
    #
    # @!attribute [rw] value_converter
    #   The deserialization format applied to Apache Kafka record values.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/RecordConverter AWS API Documentation
    #
    class RecordConverter < Struct.new(
      :value_converter)
      SENSITIVE = []
      include Aws::Structure
    end

    # Schema configuration that controls how Apache Kafka record values are
    # validated.
    #
    # @!attribute [rw] gsr_arn
    #   The Amazon Resource Name (ARN) of the AWS Glue Schema Registry
    #   schema (not registry) used to validate records for the destination
    #   Apache Iceberg table.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/RecordSchema AWS API Documentation
    #
    class RecordSchema < Struct.new(
      :gsr_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request body for PutClusterPolicy.
    #
    # @!attribute [rw] cluster_arn
    #   @return [String]
    #
    # @!attribute [rw] current_version
    #   @return [String]
    #
    # @!attribute [rw] policy
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/PutClusterPolicyRequest AWS API Documentation
    #
    class PutClusterPolicyRequest < Struct.new(
      :cluster_arn,
      :current_version,
      :policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # Response body for PutClusterPolicy.
    #
    # @!attribute [rw] current_version
    #   Cluster policy version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/PutClusterPolicyResponse AWS API Documentation
    #
    class PutClusterPolicyResponse < Struct.new(
      :current_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns information about a cluster of either the provisioned or the
    # serverless type.
    #
    # @!attribute [rw] active_operation_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies a cluster
    #   operation.
    #   @return [String]
    #
    # @!attribute [rw] cluster_type
    #   Cluster Type.
    #   @return [String]
    #
    # @!attribute [rw] cluster_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies the cluster.
    #   @return [String]
    #
    # @!attribute [rw] cluster_name
    #   The name of the cluster.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The time when the cluster was created.
    #   @return [Time]
    #
    # @!attribute [rw] current_version
    #   The current version of the MSK cluster.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the cluster. The possible states are ACTIVE, CREATING,
    #   DELETING, FAILED, HEALING, MAINTENANCE, REBOOTING\_BROKER, and
    #   UPDATING.
    #   @return [String]
    #
    # @!attribute [rw] state_info
    #   State Info for the Amazon MSK cluster.
    #   @return [Types::StateInfo]
    #
    # @!attribute [rw] tags
    #   Tags attached to the cluster.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] provisioned
    #   Information about the provisioned cluster.
    #   @return [Types::Provisioned]
    #
    # @!attribute [rw] serverless
    #   Information about the serverless cluster.
    #   @return [Types::Serverless]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/Cluster AWS API Documentation
    #
    class Cluster < Struct.new(
      :active_operation_arn,
      :cluster_type,
      :cluster_arn,
      :cluster_name,
      :creation_time,
      :current_version,
      :state,
      :state_info,
      :tags,
      :provisioned,
      :serverless)
      SENSITIVE = []
      include Aws::Structure
    end

    # Includes all rebalancing-related information for the cluster.
    #
    # @!attribute [rw] status
    #   Intelligent rebalancing status. The default intelligent rebalancing
    #   status is ACTIVE for all new Express-based clusters.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/Rebalancing AWS API Documentation
    #
    class Rebalancing < Struct.new(
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Creates a provisioned cluster.
    #
    # @!attribute [rw] broker_node_group_info
    #   Information about the brokers.
    #   @return [Types::BrokerNodeGroupInfo]
    #
    # @!attribute [rw] client_authentication
    #   Includes all client authentication related information.
    #   @return [Types::ClientAuthentication]
    #
    # @!attribute [rw] configuration_info
    #   Represents the configuration that you want MSK to use for the
    #   cluster.
    #   @return [Types::ConfigurationInfo]
    #
    # @!attribute [rw] encryption_info
    #   Includes all encryption-related information.
    #   @return [Types::EncryptionInfo]
    #
    # @!attribute [rw] enhanced_monitoring
    #   Specifies the level of monitoring for the MSK cluster. The possible
    #   values are DEFAULT, PER\_BROKER, PER\_TOPIC\_PER\_BROKER, and
    #   PER\_TOPIC\_PER\_PARTITION.
    #   @return [String]
    #
    # @!attribute [rw] open_monitoring
    #   The settings for open monitoring.
    #   @return [Types::OpenMonitoringInfo]
    #
    # @!attribute [rw] kafka_version
    #   The Apache Kafka version that you want for the cluster.
    #   @return [String]
    #
    # @!attribute [rw] logging_info
    #   LoggingInfo details.
    #   @return [Types::LoggingInfo]
    #
    # @!attribute [rw] number_of_broker_nodes
    #   The number of brokers in the cluster.
    #   @return [Integer]
    #
    # @!attribute [rw] storage_mode
    #   This controls storage mode for supported storage tiers.
    #   @return [String]
    #
    # @!attribute [rw] rebalancing
    #   Specifies if intelligent rebalancing is turned on for your MSK
    #   Provisioned cluster with Express brokers. For all new Express-based
    #   clusters that you create, intelligent rebalancing is turned on by
    #   default.
    #   @return [Types::Rebalancing]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/ProvisionedRequest AWS API Documentation
    #
    class ProvisionedRequest < Struct.new(
      :broker_node_group_info,
      :client_authentication,
      :configuration_info,
      :encryption_info,
      :enhanced_monitoring,
      :open_monitoring,
      :kafka_version,
      :logging_info,
      :number_of_broker_nodes,
      :storage_mode,
      :rebalancing)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the provisioned cluster.
    #
    # @!attribute [rw] broker_node_group_info
    #   Information about the brokers.
    #   @return [Types::BrokerNodeGroupInfo]
    #
    # @!attribute [rw] current_broker_software_info
    #   Information about the version of software currently deployed on the
    #   Apache Kafka brokers in the cluster.
    #   @return [Types::BrokerSoftwareInfo]
    #
    # @!attribute [rw] client_authentication
    #   Includes all client authentication information.
    #   @return [Types::ClientAuthentication]
    #
    # @!attribute [rw] encryption_info
    #   Includes all encryption-related information.
    #   @return [Types::EncryptionInfo]
    #
    # @!attribute [rw] enhanced_monitoring
    #   Specifies which metrics are gathered for the MSK cluster. This
    #   property has the following possible values: DEFAULT, PER\_BROKER,
    #   PER\_TOPIC\_PER\_BROKER, and PER\_TOPIC\_PER\_PARTITION. For a list
    #   of the metrics associated with each of these levels of monitoring,
    #   see [Monitoring][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/msk/latest/developerguide/monitoring.html
    #   @return [String]
    #
    # @!attribute [rw] open_monitoring
    #   Settings for open monitoring using Prometheus.
    #   @return [Types::OpenMonitoringInfo]
    #
    # @!attribute [rw] logging_info
    #   You can configure your MSK cluster to send broker logs to different
    #   destination types. This is a container for the configuration details
    #   related to broker logs.
    #   @return [Types::LoggingInfo]
    #
    # @!attribute [rw] number_of_broker_nodes
    #   The number of brokers in the cluster.
    #   @return [Integer]
    #
    # @!attribute [rw] zookeeper_connect_string
    #   The connection string to use to connect to the Apache ZooKeeper
    #   cluster.
    #   @return [String]
    #
    # @!attribute [rw] zookeeper_connect_string_tls
    #   The connection string to use to connect to the Apache ZooKeeper
    #   cluster on a TLS port.
    #   @return [String]
    #
    # @!attribute [rw] storage_mode
    #   This controls storage mode for supported storage tiers.
    #   @return [String]
    #
    # @!attribute [rw] rebalancing
    #   Specifies whether or not intelligent rebalancing is turned on for a
    #   newly created MSK Provisioned cluster with Express brokers.
    #   Intelligent rebalancing performs automatic partition balancing
    #   operations when you scale your clusters up or down. By default,
    #   intelligent rebalancing is ACTIVE for all new Express-based
    #   clusters.
    #   @return [Types::Rebalancing]
    #
    # @!attribute [rw] customer_action_status
    #   Determines if there is an action required from the customer.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/Provisioned AWS API Documentation
    #
    class Provisioned < Struct.new(
      :broker_node_group_info,
      :current_broker_software_info,
      :client_authentication,
      :encryption_info,
      :enhanced_monitoring,
      :open_monitoring,
      :logging_info,
      :number_of_broker_nodes,
      :zookeeper_connect_string,
      :zookeeper_connect_string_tls,
      :storage_mode,
      :rebalancing,
      :customer_action_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration of the Amazon VPCs for the cluster.
    #
    # @!attribute [rw] subnet_ids
    #   The IDs of the subnets associated with the cluster.
    #   @return [Array<String>]
    #
    # @!attribute [rw] security_group_ids
    #   The IDs of the security groups associated with the cluster.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/VpcConfig AWS API Documentation
    #
    class VpcConfig < Struct.new(
      :subnet_ids,
      :security_group_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # Creates serverless cluster.
    #
    # @!attribute [rw] vpc_configs
    #   Information on vpc config for the serverless cluster.
    #   @return [Array<Types::VpcConfig>]
    #
    # @!attribute [rw] client_authentication
    #   Information about the serverless cluster client authentication.
    #   @return [Types::ServerlessClientAuthentication]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/ServerlessRequest AWS API Documentation
    #
    class ServerlessRequest < Struct.new(
      :vpc_configs,
      :client_authentication)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the serverless cluster client authentication.
    #
    # @!attribute [rw] sasl
    #   Serverless cluster SASL information.
    #   @return [Types::ServerlessSasl]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/ServerlessClientAuthentication AWS API Documentation
    #
    class ServerlessClientAuthentication < Struct.new(
      :sasl)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the serverless cluster SASL information.
    #
    # @!attribute [rw] iam
    #   Indicates whether IAM access control is enabled.
    #   @return [Types::Iam]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/ServerlessSasl AWS API Documentation
    #
    class ServerlessSasl < Struct.new(
      :iam)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the cluster's connectivity information, such as its network
    # type, which is IPv4 or DUAL.
    #
    # @!attribute [rw] network_type
    #   The network type of the cluster, which is IPv4 or DUAL. The DUAL
    #   network type uses both IPv4 and IPv6 addresses for your cluster and
    #   its resources.
    #
    #   By default, a cluster uses the IPv4 network type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/ServerlessConnectivityInfo AWS API Documentation
    #
    class ServerlessConnectivityInfo < Struct.new(
      :network_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the serverless cluster.
    #
    # @!attribute [rw] vpc_configs
    #   Information on vpc config for the serverless cluster.
    #   @return [Array<Types::VpcConfig>]
    #
    # @!attribute [rw] client_authentication
    #   Information about the serverless cluster client authentication.
    #   @return [Types::ServerlessClientAuthentication]
    #
    # @!attribute [rw] connectivity_info
    #   Describes the cluster's connectivity information, such as its
    #   network type, which is IPv4 or DUAL.
    #   @return [Types::ServerlessConnectivityInfo]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/Serverless AWS API Documentation
    #
    class Serverless < Struct.new(
      :vpc_configs,
      :client_authentication,
      :connectivity_info)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies the cluster.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Maximum number of channels to return in a single response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If the response of ListChannels is truncated, it returns a nextToken
    #   in the response. This nextToken should be sent in the subsequent
    #   request to ListChannels.
    #   @return [String]
    #
    # @!attribute [rw] topic_name_filter
    #   Filters results to channels whose topic name matches the specified
    #   value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/ListChannelsRequest AWS API Documentation
    #
    class ListChannelsRequest < Struct.new(
      :cluster_arn,
      :max_results,
      :next_token,
      :topic_name_filter)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns the list of channels in the cluster.
    #
    # @!attribute [rw] channels
    #   The list of channels in the cluster.
    #   @return [Array<Types::ChannelInfo>]
    #
    # @!attribute [rw] next_token
    #   If the response from ListChannels is truncated, this token is
    #   included. Send it as the nextToken parameter on a subsequent
    #   ListChannels call to retrieve the next page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/ListChannelsResponse AWS API Documentation
    #
    class ListChannelsResponse < Struct.new(
      :channels,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster_name_filter
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/ListClustersRequest AWS API Documentation
    #
    class ListClustersRequest < Struct.new(
      :cluster_name_filter,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response contains an array containing cluster information and a
    # next token if the response is truncated.
    #
    # @!attribute [rw] cluster_info_list
    #   Information on each of the MSK clusters in the response.
    #   @return [Array<Types::ClusterInfo>]
    #
    # @!attribute [rw] next_token
    #   The paginated results marker. When the result of a ListClusters
    #   operation is truncated, the call returns NextToken in the response.
    #   To get another batch of clusters, provide this token in your next
    #   request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/ListClustersResponse AWS API Documentation
    #
    class ListClustersResponse < Struct.new(
      :cluster_info_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/ListConfigurationRevisionsRequest AWS API Documentation
    #
    class ListConfigurationRevisionsRequest < Struct.new(
      :arn,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about revisions of an MSK configuration.
    #
    # @!attribute [rw] next_token
    #   Paginated results marker.
    #   @return [String]
    #
    # @!attribute [rw] revisions
    #   List of ConfigurationRevision objects.
    #   @return [Array<Types::ConfigurationRevision>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/ListConfigurationRevisionsResponse AWS API Documentation
    #
    class ListConfigurationRevisionsResponse < Struct.new(
      :next_token,
      :revisions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/ListConfigurationsRequest AWS API Documentation
    #
    class ListConfigurationsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response contains an array of Configuration and a next token if
    # the response is truncated.
    #
    # @!attribute [rw] configurations
    #   An array of MSK configurations.
    #   @return [Array<Types::Configuration>]
    #
    # @!attribute [rw] next_token
    #   The paginated results marker. When the result of a
    #   ListConfigurations operation is truncated, the call returns
    #   NextToken in the response. To get another batch of configurations,
    #   provide this token in your next request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/ListConfigurationsResponse AWS API Documentation
    #
    class ListConfigurationsResponse < Struct.new(
      :configurations,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/ListKafkaVersionsRequest AWS API Documentation
    #
    class ListKafkaVersionsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Response for ListKafkaVersions.
    #
    # @!attribute [rw] kafka_versions
    #   An array of Apache Kafka version objects.
    #   @return [Array<Types::KafkaVersion>]
    #
    # @!attribute [rw] next_token
    #   Paginated results marker.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/ListKafkaVersionsResponse AWS API Documentation
    #
    class ListKafkaVersionsResponse < Struct.new(
      :kafka_versions,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster_arn
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/ListNodesRequest AWS API Documentation
    #
    class ListNodesRequest < Struct.new(
      :cluster_arn,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about nodes in the cluster.
    #
    # @!attribute [rw] next_token
    #   The paginated results marker. When the result of a ListNodes
    #   operation is truncated, the call returns NextToken in the response.
    #   To get another batch of nodes, provide this token in your next
    #   request.
    #   @return [String]
    #
    # @!attribute [rw] node_info_list
    #   List containing a NodeInfo object.
    #   @return [Array<Types::NodeInfo>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/ListNodesResponse AWS API Documentation
    #
    class ListNodesResponse < Struct.new(
      :next_token,
      :node_info_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster_arn
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/ListScramSecretsRequest AWS API Documentation
    #
    class ListScramSecretsRequest < Struct.new(
      :cluster_arn,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about scram secrets associated to the cluster.
    #
    # @!attribute [rw] next_token
    #   Paginated results marker.
    #   @return [String]
    #
    # @!attribute [rw] secret_arn_list
    #   The list of scram secrets associated with the cluster.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/ListScramSecretsResponse AWS API Documentation
    #
    class ListScramSecretsResponse < Struct.new(
      :next_token,
      :secret_arn_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Response of listing tags for a resource.
    #
    # @!attribute [rw] tags
    #   The key-value pair for the resource tag.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # You can configure your MSK cluster to send broker logs to different
    # destination types. This is a container for the configuration details
    # related to broker logs.
    #
    # @!attribute [rw] authorizer_logs
    #   You can configure your MSK cluster to send authorizer logs to
    #   different destination types.
    #   @return [Types::AuthorizerLogs]
    #
    # @!attribute [rw] broker_logs
    #   You can configure your MSK cluster to send broker logs to different
    #   destination types. This configuration specifies the details of these
    #   destinations.
    #   @return [Types::BrokerLogs]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/LoggingInfo AWS API Documentation
    #
    class LoggingInfo < Struct.new(
      :authorizer_logs,
      :broker_logs)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration for the destinations to which the channel publishes
    # operational logs.
    #
    # @!attribute [rw] cloud_watch_logs
    #   Details of the CloudWatch Logs destination for Channel logs.
    #   @return [Types::CloudWatchLogs]
    #
    # @!attribute [rw] firehose
    #   Details of the Kinesis Data Firehose delivery stream that is the
    #   destination for Channel logs.
    #   @return [Types::Firehose]
    #
    # @!attribute [rw] s3
    #   Details of the Amazon S3 destination for Channel logs.
    #   @return [Types::S3]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/ChannelLoggingInfo AWS API Documentation
    #
    class ChannelLoggingInfo < Struct.new(
      :cloud_watch_logs,
      :firehose,
      :s3)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request body for ListClientVpcConnections.
    #
    # @!attribute [rw] cluster_arn
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/ListClientVpcConnectionsRequest AWS API Documentation
    #
    class ListClientVpcConnectionsRequest < Struct.new(
      :cluster_arn,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response contains an array of client VPC connections and a next
    # token if the response is truncated.
    #
    # @!attribute [rw] next_token
    #   If the response of ListClientVpcConnections is truncated, it returns
    #   a NextToken in the response. This Nexttoken should be sent in the
    #   subsequent request to ListClientVpcConnections.
    #   @return [String]
    #
    # @!attribute [rw] client_vpc_connections
    #   List containing a ClientVpcConnection object.
    #   @return [Array<Types::ClientVpcConnection>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/ListClientVpcConnectionsResponse AWS API Documentation
    #
    class ListClientVpcConnectionsResponse < Struct.new(
      :next_token,
      :client_vpc_connections)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request body for ListTopics.
    #
    # @!attribute [rw] cluster_arn
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @!attribute [rw] topic_name_filter
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/ListTopicsRequest AWS API Documentation
    #
    class ListTopicsRequest < Struct.new(
      :cluster_arn,
      :max_results,
      :next_token,
      :topic_name_filter)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response contains an array of topics on a MSK Cluster.
    #
    # @!attribute [rw] topics
    #   @return [Array<Types::TopicInfo>]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/ListTopicsResponse AWS API Documentation
    #
    class ListTopicsResponse < Struct.new(
      :topics,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @!attribute [rw] replicator_name_filter
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/ListReplicatorsRequest AWS API Documentation
    #
    class ListReplicatorsRequest < Struct.new(
      :max_results,
      :next_token,
      :replicator_name_filter)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response contains an array containing replicator information and a
    # NextToken if the response is truncated.
    #
    # @!attribute [rw] next_token
    #   If the response of ListReplicators is truncated, it returns a
    #   NextToken in the response. This NextToken should be sent in the
    #   subsequent request to ListReplicators.
    #   @return [String]
    #
    # @!attribute [rw] replicators
    #   List containing information of each of the replicators in the
    #   account.
    #   @return [Array<Types::ReplicatorSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/ListReplicatorsResponse AWS API Documentation
    #
    class ListReplicatorsResponse < Struct.new(
      :next_token,
      :replicators)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request body for ListVpcConnections.
    #
    # @!attribute [rw] max_results
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/ListVpcConnectionsRequest AWS API Documentation
    #
    class ListVpcConnectionsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response contains an array of MSK VPC connections and a next token
    # if the response is truncated.
    #
    # @!attribute [rw] next_token
    #   If the response of ListVpcConnections is truncated, it returns a
    #   NextToken in the response. This NextToken should be sent in the
    #   subsequent request to ListVpcConnections.
    #   @return [String]
    #
    # @!attribute [rw] vpc_connections
    #   List containing a VpcConnection object.
    #   @return [Array<Types::VpcConnection>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/ListVpcConnectionsResponse AWS API Documentation
    #
    class ListVpcConnectionsResponse < Struct.new(
      :next_token,
      :vpc_connections)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request body for RejectClientVpcConnection.
    #
    # @!attribute [rw] cluster_arn
    #   @return [String]
    #
    # @!attribute [rw] vpc_connection_arn
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/RejectClientVpcConnectionRequest AWS API Documentation
    #
    class RejectClientVpcConnectionRequest < Struct.new(
      :cluster_arn,
      :vpc_connection_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Response body for RejectClientVpcConnection.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/RejectClientVpcConnectionResponse AWS API Documentation
    #
    class RejectClientVpcConnectionResponse < Aws::EmptyStructure; end

    # Information about cluster attributes that can be updated via update
    # APIs.
    #
    # @!attribute [rw] broker_ebs_volume_info
    #   Specifies the size of the EBS volume and the ID of the associated
    #   broker.
    #   @return [Array<Types::BrokerEBSVolumeInfo>]
    #
    # @!attribute [rw] configuration_info
    #   Information about the changes in the configuration of the brokers.
    #   @return [Types::ConfigurationInfo]
    #
    # @!attribute [rw] number_of_broker_nodes
    #   The number of broker nodes in the cluster.
    #   @return [Integer]
    #
    # @!attribute [rw] open_monitoring
    #   Settings for open monitoring using Prometheus.
    #   @return [Types::OpenMonitoring]
    #
    # @!attribute [rw] enhanced_monitoring
    #   Specifies which Apache Kafka metrics Amazon MSK gathers and sends to
    #   Amazon CloudWatch for this cluster.
    #   @return [String]
    #
    # @!attribute [rw] kafka_version
    #   The Apache Kafka version.
    #   @return [String]
    #
    # @!attribute [rw] logging_info
    #   LoggingInfo details.
    #   @return [Types::LoggingInfo]
    #
    # @!attribute [rw] instance_type
    #   The Amazon MSK broker type that you want all of the brokers in this
    #   cluster to be.
    #   @return [String]
    #
    # @!attribute [rw] client_authentication
    #   Includes all client authentication related information.
    #   @return [Types::ClientAuthentication]
    #
    # @!attribute [rw] encryption_info
    #   Includes all encryption-related information.
    #   @return [Types::EncryptionInfo]
    #
    # @!attribute [rw] connectivity_info
    #   Information about the broker access configuration.
    #   @return [Types::ConnectivityInfo]
    #
    # @!attribute [rw] zookeeper_access
    #   Access control settings for zookeeper
    #   @return [Types::ZookeeperAccess]
    #
    # @!attribute [rw] storage_mode
    #   This controls storage mode for supported storage tiers.
    #   @return [String]
    #
    # @!attribute [rw] broker_count_update_info
    #   Describes brokers being changed during a broker count update.
    #   @return [Types::BrokerCountUpdateInfo]
    #
    # @!attribute [rw] rebalancing
    #   Describes the intelligent rebalancing configuration of an MSK
    #   Provisioned cluster with Express brokers.
    #   @return [Types::Rebalancing]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/MutableClusterInfo AWS API Documentation
    #
    class MutableClusterInfo < Struct.new(
      :broker_ebs_volume_info,
      :configuration_info,
      :number_of_broker_nodes,
      :open_monitoring,
      :enhanced_monitoring,
      :kafka_version,
      :logging_info,
      :instance_type,
      :client_authentication,
      :encryption_info,
      :connectivity_info,
      :zookeeper_access,
      :storage_mode,
      :broker_count_update_info,
      :rebalancing)
      SENSITIVE = []
      include Aws::Structure
    end

    # The node information object.
    #
    # @!attribute [rw] added_to_cluster_time
    #   The start time.
    #   @return [String]
    #
    # @!attribute [rw] broker_node_info
    #   The broker node info.
    #   @return [Types::BrokerNodeInfo]
    #
    # @!attribute [rw] controller_node_info
    #   The ControllerNodeInfo.
    #   @return [Types::ControllerNodeInfo]
    #
    # @!attribute [rw] instance_type
    #   The instance type.
    #   @return [String]
    #
    # @!attribute [rw] node_arn
    #   The Amazon Resource Name (ARN) of the node.
    #   @return [String]
    #
    # @!attribute [rw] node_type
    #   The node type.
    #   @return [String]
    #
    # @!attribute [rw] zookeeper_node_info
    #   The ZookeeperNodeInfo.
    #   @return [Types::ZookeeperNodeInfo]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/NodeInfo AWS API Documentation
    #
    class NodeInfo < Struct.new(
      :added_to_cluster_time,
      :broker_node_info,
      :controller_node_info,
      :instance_type,
      :node_arn,
      :node_type,
      :zookeeper_node_info)
      SENSITIVE = []
      include Aws::Structure
    end

    # Access control settings for zookeeper
    #
    # @!attribute [rw] enabled
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/ZookeeperAccess AWS API Documentation
    #
    class ZookeeperAccess < Struct.new(
      :enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns information about an error.
    #
    # @!attribute [rw] invalid_parameter
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/NotFoundException AWS API Documentation
    #
    class NotFoundException < Struct.new(
      :invalid_parameter,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies configuration for replication between a source and target
    # Kafka cluster.
    #
    # @!attribute [rw] consumer_group_replication
    #   Configuration relating to consumer group replication.
    #   @return [Types::ConsumerGroupReplication]
    #
    # @!attribute [rw] source_kafka_cluster_arn
    #   The ARN of the source Kafka cluster.
    #   @return [String]
    #
    # @!attribute [rw] source_kafka_cluster_id
    #   The ID of the source Kafka cluster.
    #   @return [String]
    #
    # @!attribute [rw] target_compression_type
    #   The compression type to use when producing records to target
    #   cluster.
    #   @return [String]
    #
    # @!attribute [rw] target_kafka_cluster_arn
    #   The ARN of the target Kafka cluster.
    #   @return [String]
    #
    # @!attribute [rw] target_kafka_cluster_id
    #   The ID of the target Kafka cluster.
    #   @return [String]
    #
    # @!attribute [rw] topic_replication
    #   Configuration relating to topic replication.
    #   @return [Types::TopicReplication]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/ReplicationInfo AWS API Documentation
    #
    class ReplicationInfo < Struct.new(
      :consumer_group_replication,
      :source_kafka_cluster_arn,
      :source_kafka_cluster_id,
      :target_compression_type,
      :target_kafka_cluster_arn,
      :target_kafka_cluster_id,
      :topic_replication)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies configuration for replication between a source and target
    # Kafka cluster (sourceKafkaClusterAlias -> targetKafkaClusterAlias)
    #
    # @!attribute [rw] consumer_group_replication
    #   Configuration relating to consumer group replication
    #
    #   .
    #   @return [Types::ConsumerGroupReplication]
    #
    # @!attribute [rw] source_kafka_cluster_alias
    #   The alias of the source Kafka cluster.
    #   @return [String]
    #
    # @!attribute [rw] target_compression_type
    #   The compression type to use when producing records to target
    #   cluster.
    #   @return [String]
    #
    # @!attribute [rw] target_kafka_cluster_alias
    #   The alias of the target Kafka cluster.
    #   @return [String]
    #
    # @!attribute [rw] topic_replication
    #   Configuration relating to topic replication.
    #   @return [Types::TopicReplication]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/ReplicationInfoDescription AWS API Documentation
    #
    class ReplicationInfoDescription < Struct.new(
      :consumer_group_replication,
      :source_kafka_cluster_alias,
      :target_compression_type,
      :target_kafka_cluster_alias,
      :topic_replication)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summarized information of replication between clusters.
    #
    # @!attribute [rw] source_kafka_cluster_alias
    #   The alias of the source Kafka cluster.
    #   @return [String]
    #
    # @!attribute [rw] target_kafka_cluster_alias
    #   The alias of the target Kafka cluster.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/ReplicationInfoSummary AWS API Documentation
    #
    class ReplicationInfoSummary < Struct.new(
      :source_kafka_cluster_alias,
      :target_kafka_cluster_alias)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration for specifying the position in the topics to start
    # replicating from.
    #
    # @!attribute [rw] type
    #   The type of replication starting position.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/ReplicationStartingPosition AWS API Documentation
    #
    class ReplicationStartingPosition < Struct.new(
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration for specifying replicated topic names should be the same
    # as their corresponding upstream topics or prefixed with source cluster
    # alias.
    #
    # @!attribute [rw] type
    #   The type of replicated topic name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/ReplicationTopicNameConfiguration AWS API Documentation
    #
    class ReplicationTopicNameConfiguration < Struct.new(
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details of the CloudWatch Logs destination for replicator logs.
    #
    # @!attribute [rw] enabled
    #   Specifies whether broker logs get sent to the specified CloudWatch
    #   Logs destination for replication.
    #   @return [Boolean]
    #
    # @!attribute [rw] log_group
    #   The CloudWatch log group that is the destination for replicator
    #   logs.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/ReplicatorCloudWatchLogs AWS API Documentation
    #
    class ReplicatorCloudWatchLogs < Struct.new(
      :enabled,
      :log_group)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details of the Kinesis Data Firehose delivery stream that is the
    # destination for replicator logs.
    #
    # @!attribute [rw] delivery_stream
    #   The Kinesis Data Firehose delivery stream that is the destination
    #   for replicator logs.
    #   @return [String]
    #
    # @!attribute [rw] enabled
    #   Specifies whether broker logs get sent to the specified Kinesis Data
    #   Firehose delivery stream for replication.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/ReplicatorFirehose AWS API Documentation
    #
    class ReplicatorFirehose < Struct.new(
      :delivery_stream,
      :enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details of the Amazon S3 destination for replicator logs.
    #
    # @!attribute [rw] bucket
    #   The name of the S3 bucket that is the destination for replicator
    #   logs.
    #   @return [String]
    #
    # @!attribute [rw] enabled
    #   Specifies whether broker logs get sent to the specified Amazon S3
    #   destination for replication.
    #   @return [Boolean]
    #
    # @!attribute [rw] prefix
    #   The S3 prefix that is the destination for replicator logs.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/ReplicatorS3 AWS API Documentation
    #
    class ReplicatorS3 < Struct.new(
      :bucket,
      :enabled,
      :prefix)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration for log delivery for the replicator.
    #
    # @!attribute [rw] replicator_log_delivery
    #   The replicator logs configuration for this MSK replicator.
    #   @return [Types::ReplicatorLogDelivery]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/LogDelivery AWS API Documentation
    #
    class LogDelivery < Struct.new(
      :replicator_log_delivery)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details of the log delivery for the replicator.
    #
    # @!attribute [rw] cloud_watch_logs
    #   Details of the CloudWatch Logs destination for replicator logs.
    #   @return [Types::ReplicatorCloudWatchLogs]
    #
    # @!attribute [rw] firehose
    #   Details of the Kinesis Data Firehose delivery stream that is the
    #   destination for replicator logs.
    #   @return [Types::ReplicatorFirehose]
    #
    # @!attribute [rw] s3
    #   Details of the Amazon S3 destination for replicator logs.
    #   @return [Types::ReplicatorS3]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/ReplicatorLogDelivery AWS API Documentation
    #
    class ReplicatorLogDelivery < Struct.new(
      :cloud_watch_logs,
      :firehose,
      :s3)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about the state of a replicator
    #
    # @!attribute [rw] code
    #   Code that describes the current state of the replicator.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   Message that describes the state of the replicator.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/ReplicationStateInfo AWS API Documentation
    #
    class ReplicationStateInfo < Struct.new(
      :code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a replicator.
    #
    # @!attribute [rw] creation_time
    #   The time the replicator was created.
    #   @return [Time]
    #
    # @!attribute [rw] current_version
    #   The current version of the replicator.
    #   @return [String]
    #
    # @!attribute [rw] is_replicator_reference
    #   Whether this resource is a replicator reference.
    #   @return [Boolean]
    #
    # @!attribute [rw] kafka_clusters_summary
    #   Kafka Clusters used in setting up sources / targets for replication.
    #   @return [Array<Types::KafkaClusterSummary>]
    #
    # @!attribute [rw] replication_info_summary_list
    #   A list of summarized information of replications between clusters.
    #   @return [Array<Types::ReplicationInfoSummary>]
    #
    # @!attribute [rw] replicator_arn
    #   The Amazon Resource Name (ARN) of the replicator.
    #   @return [String]
    #
    # @!attribute [rw] replicator_name
    #   The name of the replicator.
    #   @return [String]
    #
    # @!attribute [rw] replicator_resource_arn
    #   The Amazon Resource Name (ARN) of the replicator resource in the
    #   region where the replicator was created.
    #
    #   </p>
    #   @return [String]
    #
    # @!attribute [rw] replicator_state
    #   State of the replicator.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/ReplicatorSummary AWS API Documentation
    #
    class ReplicatorSummary < Struct.new(
      :creation_time,
      :current_version,
      :is_replicator_reference,
      :kafka_clusters_summary,
      :replication_info_summary_list,
      :replicator_arn,
      :replicator_name,
      :replicator_resource_arn,
      :replicator_state)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration controlling whether the Apache Iceberg destination
    # table's schema is evolved as incoming records change.
    #
    # @!attribute [rw] enable_schema_evolution
    #   Whether to allow MSK to evolve the destination table's schema. Must
    #   be false for the current release.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/SchemaEvolution AWS API Documentation
    #
    class SchemaEvolution < Struct.new(
      :enable_schema_evolution)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] scram
    #   @return [Types::Scram]
    #
    # @!attribute [rw] iam
    #   @return [Types::Iam]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/Sasl AWS API Documentation
    #
    class Sasl < Struct.new(
      :scram,
      :iam)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] scram
    #   @return [Types::VpcConnectivityScram]
    #
    # @!attribute [rw] iam
    #   @return [Types::VpcConnectivityIam]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/VpcConnectivitySasl AWS API Documentation
    #
    class VpcConnectivitySasl < Struct.new(
      :scram,
      :iam)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] enabled
    #   SASL/SCRAM authentication is enabled or not.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/Scram AWS API Documentation
    #
    class Scram < Struct.new(
      :enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] enabled
    #   SASL/SCRAM authentication for VPC connectivity is on or off.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/VpcConnectivityScram AWS API Documentation
    #
    class VpcConnectivityScram < Struct.new(
      :enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] enabled
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/Iam AWS API Documentation
    #
    class Iam < Struct.new(
      :enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] enabled
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/VpcConnectivityIam AWS API Documentation
    #
    class VpcConnectivityIam < Struct.new(
      :enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns information about an error.
    #
    # @!attribute [rw] invalid_parameter
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/ServiceUnavailableException AWS API Documentation
    #
    class ServiceUnavailableException < Struct.new(
      :invalid_parameter,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the state of the Amazon MSK cluster.
    #
    # @!attribute [rw] code
    #   If the cluster is in an unusable state, this field contains the code
    #   that describes the issue.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   If the cluster is in an unusable state, this field contains a
    #   message that describes the issue.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/StateInfo AWS API Documentation
    #
    class StateInfo < Struct.new(
      :code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about storage volumes attached to MSK broker
    # nodes.
    #
    # @!attribute [rw] ebs_storage_info
    #   EBS volume information.
    #   @return [Types::EBSStorageInfo]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/StorageInfo AWS API Documentation
    #
    class StorageInfo < Struct.new(
      :ebs_storage_info)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration controlling whether MSK creates the destination Apache
    # Iceberg table if it does not already exist.
    #
    # @!attribute [rw] enable_table_creation
    #   Whether MSK creates the destination table on the customer's behalf.
    #   Must be true for the current release.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/TableCreation AWS API Documentation
    #
    class TableCreation < Struct.new(
      :enable_table_creation)
      SENSITIVE = []
      include Aws::Structure
    end

    # Tag a resource.
    #
    # @!attribute [rw] resource_arn
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The key-value pair for the resource tag.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about topic replication.
    #
    # @!attribute [rw] copy_access_control_lists_for_topics
    #   Whether to periodically configure remote topic ACLs to match their
    #   corresponding upstream topics.
    #   @return [Boolean]
    #
    # @!attribute [rw] copy_topic_configurations
    #   Whether to periodically configure remote topics to match their
    #   corresponding upstream topics.
    #   @return [Boolean]
    #
    # @!attribute [rw] detect_and_copy_new_topics
    #   Whether to periodically check for new topics and partitions.
    #   @return [Boolean]
    #
    # @!attribute [rw] starting_position
    #   Configuration for specifying the position in the topics to start
    #   replicating from.
    #   @return [Types::ReplicationStartingPosition]
    #
    # @!attribute [rw] topic_name_configuration
    #   Configuration for specifying replicated topic names same as their
    #   corresponding upstream topics or prefixed with source cluster alias.
    #   @return [Types::ReplicationTopicNameConfiguration]
    #
    # @!attribute [rw] topics_to_exclude
    #   List of regular expression patterns indicating the topics that
    #   should not be replicated.
    #   @return [Array<String>]
    #
    # @!attribute [rw] topics_to_replicate
    #   List of regular expression patterns indicating the topics to copy.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/TopicReplication AWS API Documentation
    #
    class TopicReplication < Struct.new(
      :copy_access_control_lists_for_topics,
      :copy_topic_configurations,
      :detect_and_copy_new_topics,
      :starting_position,
      :topic_name_configuration,
      :topics_to_exclude,
      :topics_to_replicate)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details for updating the topic replication of a replicator.
    #
    # @!attribute [rw] copy_access_control_lists_for_topics
    #   Whether to periodically configure remote topic ACLs to match their
    #   corresponding upstream topics.
    #   @return [Boolean]
    #
    # @!attribute [rw] copy_topic_configurations
    #   Whether to periodically configure remote topics to match their
    #   corresponding upstream topics.
    #   @return [Boolean]
    #
    # @!attribute [rw] detect_and_copy_new_topics
    #   Whether to periodically check for new topics and partitions.
    #   @return [Boolean]
    #
    # @!attribute [rw] topics_to_exclude
    #   List of regular expression patterns indicating the topics that
    #   should not be replicated.
    #   @return [Array<String>]
    #
    # @!attribute [rw] topics_to_replicate
    #   List of regular expression patterns indicating the topics to copy.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/TopicReplicationUpdate AWS API Documentation
    #
    class TopicReplicationUpdate < Struct.new(
      :copy_access_control_lists_for_topics,
      :copy_topic_configurations,
      :detect_and_copy_new_topics,
      :topics_to_exclude,
      :topics_to_replicate)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details for client authentication using TLS.
    #
    # @!attribute [rw] certificate_authority_arn_list
    #   List of ACM Certificate Authority ARNs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] enabled
    #   TLS authentication is enabled or not.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/Tls AWS API Documentation
    #
    class Tls < Struct.new(
      :certificate_authority_arn_list,
      :enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration of an Apache Kafka topic that feeds a channel.
    #
    # @!attribute [rw] record_converter
    #   Configuration that controls how Apache Kafka record values are
    #   deserialized for the destination.
    #   @return [Types::RecordConverter]
    #
    # @!attribute [rw] record_schema
    #   The schema used to validate records when the value converter
    #   requires one (for example, JSON\_SCHEMA\_GSR).
    #   @return [Types::RecordSchema]
    #
    # @!attribute [rw] topic_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies the topic.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/TopicConfiguration AWS API Documentation
    #
    class TopicConfiguration < Struct.new(
      :record_converter,
      :record_schema,
      :topic_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Includes identification info about the topic.
    #
    # @!attribute [rw] topic_arn
    #   @return [String]
    #
    # @!attribute [rw] topic_name
    #   @return [String]
    #
    # @!attribute [rw] replication_factor
    #   @return [Integer]
    #
    # @!attribute [rw] partition_count
    #   @return [Integer]
    #
    # @!attribute [rw] out_of_sync_replica_count
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/TopicInfo AWS API Documentation
    #
    class TopicInfo < Struct.new(
      :topic_arn,
      :topic_name,
      :replication_factor,
      :partition_count,
      :out_of_sync_replica_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] enabled
    #   TLS authentication for VPC connectivity is on or off.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/VpcConnectivityTls AWS API Documentation
    #
    class VpcConnectivityTls < Struct.new(
      :enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns information about an error.
    #
    # @!attribute [rw] invalid_parameter
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/TooManyRequestsException AWS API Documentation
    #
    class TooManyRequestsException < Struct.new(
      :invalid_parameter,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about unauthenticated traffic to the cluster.
    #
    # @!attribute [rw] enabled
    #   Specifies whether you want to enable or disable unauthenticated
    #   traffic to your cluster.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/Unauthenticated AWS API Documentation
    #
    class Unauthenticated < Struct.new(
      :enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns information about an error.
    #
    # @!attribute [rw] invalid_parameter
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/UnauthorizedException AWS API Documentation
    #
    class UnauthorizedException < Struct.new(
      :invalid_parameter,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns information about an error.
    #
    # @!attribute [rw] invalid_parameter
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/TopicExistsException AWS API Documentation
    #
    class TopicExistsException < Struct.new(
      :invalid_parameter,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns information about an error.
    #
    # @!attribute [rw] invalid_parameter
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/ClusterConnectivityException AWS API Documentation
    #
    class ClusterConnectivityException < Struct.new(
      :invalid_parameter,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns information about an error.
    #
    # @!attribute [rw] invalid_parameter
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/KafkaTimeoutException AWS API Documentation
    #
    class KafkaTimeoutException < Struct.new(
      :invalid_parameter,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns information about an error.
    #
    # @!attribute [rw] invalid_parameter
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/UnknownTopicOrPartitionException AWS API Documentation
    #
    class UnknownTopicOrPartitionException < Struct.new(
      :invalid_parameter,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns information about an error.
    #
    # @!attribute [rw] invalid_parameter
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/ControllerMovedException AWS API Documentation
    #
    class ControllerMovedException < Struct.new(
      :invalid_parameter,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns information about an error.
    #
    # @!attribute [rw] invalid_parameter
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/NotControllerException AWS API Documentation
    #
    class NotControllerException < Struct.new(
      :invalid_parameter,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns information about an error.
    #
    # @!attribute [rw] invalid_parameter
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/ReassignmentInProgressException AWS API Documentation
    #
    class ReassignmentInProgressException < Struct.new(
      :invalid_parameter,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns information about an error.
    #
    # @!attribute [rw] invalid_parameter
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/GroupSubscribedToTopicException AWS API Documentation
    #
    class GroupSubscribedToTopicException < Struct.new(
      :invalid_parameter,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns information about an error.
    #
    # @!attribute [rw] invalid_parameter
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/KafkaRequestException AWS API Documentation
    #
    class KafkaRequestException < Struct.new(
      :invalid_parameter,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] error_code
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   @return [String]
    #
    # @!attribute [rw] secret_arn
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/UnprocessedScramSecret AWS API Documentation
    #
    class UnprocessedScramSecret < Struct.new(
      :error_code,
      :error_message,
      :secret_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request body for UpdateBrokerType.
    #
    # @!attribute [rw] cluster_arn
    #   @return [String]
    #
    # @!attribute [rw] current_version
    #   The current version of the cluster.
    #   @return [String]
    #
    # @!attribute [rw] target_instance_type
    #   The Amazon MSK broker type that you want all of the brokers in this
    #   cluster to be.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/UpdateBrokerTypeRequest AWS API Documentation
    #
    class UpdateBrokerTypeRequest < Struct.new(
      :cluster_arn,
      :current_version,
      :target_instance_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Response body for UpdateBrokerType.
    #
    # @!attribute [rw] cluster_arn
    #   The Amazon Resource Name (ARN) of the cluster.
    #   @return [String]
    #
    # @!attribute [rw] cluster_operation_arn
    #   The Amazon Resource Name (ARN) of the cluster operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/UpdateBrokerTypeResponse AWS API Documentation
    #
    class UpdateBrokerTypeResponse < Struct.new(
      :cluster_arn,
      :cluster_operation_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request body for UpdateBrokerCount.
    #
    # @!attribute [rw] cluster_arn
    #   @return [String]
    #
    # @!attribute [rw] current_version
    #   The current version of the cluster.
    #   @return [String]
    #
    # @!attribute [rw] target_number_of_broker_nodes
    #   The number of broker nodes that you want the cluster to have after
    #   this operation completes successfully.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/UpdateBrokerCountRequest AWS API Documentation
    #
    class UpdateBrokerCountRequest < Struct.new(
      :cluster_arn,
      :current_version,
      :target_number_of_broker_nodes)
      SENSITIVE = []
      include Aws::Structure
    end

    # Response body for UpdateBrokerCount.
    #
    # @!attribute [rw] cluster_arn
    #   The Amazon Resource Name (ARN) of the cluster.
    #   @return [String]
    #
    # @!attribute [rw] cluster_operation_arn
    #   The Amazon Resource Name (ARN) of the cluster operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/UpdateBrokerCountResponse AWS API Documentation
    #
    class UpdateBrokerCountResponse < Struct.new(
      :cluster_arn,
      :cluster_operation_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request body for UpdateRebalancing.
    #
    # @!attribute [rw] cluster_arn
    #   The Amazon Resource Name (ARN) of the cluster.
    #   @return [String]
    #
    # @!attribute [rw] current_version
    #   The current version of the cluster.
    #   @return [String]
    #
    # @!attribute [rw] rebalancing
    #   Includes all rebalancing-related information for the cluster.
    #   @return [Types::Rebalancing]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/UpdateRebalancingRequest AWS API Documentation
    #
    class UpdateRebalancingRequest < Struct.new(
      :cluster_arn,
      :current_version,
      :rebalancing)
      SENSITIVE = []
      include Aws::Structure
    end

    # Response body for UpdateRebalancing.
    #
    # @!attribute [rw] cluster_arn
    #   The Amazon Resource Name (ARN) of the cluster whose intelligent
    #   rebalancing status you've updated.
    #   @return [String]
    #
    # @!attribute [rw] cluster_operation_arn
    #   The Amazon Resource Name (ARN) of the cluster operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/UpdateRebalancingResponse AWS API Documentation
    #
    class UpdateRebalancingResponse < Struct.new(
      :cluster_arn,
      :cluster_operation_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request object for UpdateBrokerStorage.
    #
    # @!attribute [rw] cluster_arn
    #   @return [String]
    #
    # @!attribute [rw] current_version
    #   The version of cluster to update from. A successful operation will
    #   then generate a new version.
    #   @return [String]
    #
    # @!attribute [rw] target_broker_ebs_volume_info
    #   Describes the target volume size and the ID of the broker to apply
    #   the update to.
    #
    #   The value you specify for Target-Volume-in-GiB must be a whole
    #   number that is greater than 100 GiB.
    #
    #   The storage per broker after the update operation can't exceed
    #   16384 GiB.
    #   @return [Array<Types::BrokerEBSVolumeInfo>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/UpdateBrokerStorageRequest AWS API Documentation
    #
    class UpdateBrokerStorageRequest < Struct.new(
      :cluster_arn,
      :current_version,
      :target_broker_ebs_volume_info)
      SENSITIVE = []
      include Aws::Structure
    end

    # Response body for UpdateBrokerStorage.
    #
    # @!attribute [rw] cluster_arn
    #   The Amazon Resource Name (ARN) of the cluster.
    #   @return [String]
    #
    # @!attribute [rw] cluster_operation_arn
    #   The Amazon Resource Name (ARN) of the cluster operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/UpdateBrokerStorageResponse AWS API Documentation
    #
    class UpdateBrokerStorageResponse < Struct.new(
      :cluster_arn,
      :cluster_operation_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration of an Amazon S3 destination for a channel.
    #
    # @!attribute [rw] data_freshness_in_seconds
    #   The maximum time, in seconds, that records buffer in MSK before
    #   being flushed to the destination. Allowed range: 300 to 900.
    #   Default: 600.
    #   @return [Integer]
    #
    # @!attribute [rw] dead_letter_queue_s3
    #   The Amazon S3 bucket and prefix where MSK writes records that fail
    #   to deliver.
    #   @return [Types::DeadLetterQueueS3]
    #
    # @!attribute [rw] service_execution_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that MSK assumes to
    #   write to the destination Amazon S3 bucket and the dead-letter
    #   bucket.
    #   @return [String]
    #
    # @!attribute [rw] storage
    #   The Amazon S3 bucket, prefix, and storage class for delivered
    #   records.
    #   @return [Types::S3Storage]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/S3DestinationConfiguration AWS API Documentation
    #
    class S3DestinationConfiguration < Struct.new(
      :data_freshness_in_seconds,
      :dead_letter_queue_s3,
      :service_execution_role_arn,
      :storage)
      SENSITIVE = []
      include Aws::Structure
    end

    # Update payload for an Apache Iceberg destination.
    #
    # @!attribute [rw] data_freshness_in_seconds
    #   The maximum time, in seconds, that records buffer in MSK before
    #   being flushed to the destination. Allowed range: 300 to 900.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/IcebergDestinationUpdate AWS API Documentation
    #
    class IcebergDestinationUpdate < Struct.new(
      :data_freshness_in_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # Update payload for an Amazon S3 destination.
    #
    # @!attribute [rw] data_freshness_in_seconds
    #   The maximum time, in seconds, that records buffer in MSK before
    #   being flushed to the destination. Allowed range: 300 to 900.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/S3DestinationUpdate AWS API Documentation
    #
    class S3DestinationUpdate < Struct.new(
      :data_freshness_in_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # Storage configuration for an Amazon S3 destination bucket.
    #
    # @!attribute [rw] bucket_arn
    #   The Amazon Resource Name (ARN) of the destination Amazon S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] compression_type
    #   The compression codec applied to delivered Amazon S3 objects.
    #   @return [String]
    #
    # @!attribute [rw] output_prefix
    #   An optional prefix prepended to every Amazon S3 object key written
    #   by the channel.
    #   @return [String]
    #
    # @!attribute [rw] output_key_template
    #   An optional template that controls the Amazon S3 object key for each
    #   delivered record. Supports the placeholders !\{partition-id},
    #   !\{sequence-number}, and !\{kafka-offset}.
    #   @return [String]
    #
    # @!attribute [rw] storage_class
    #   The Amazon S3 storage class for delivered objects.
    #   @return [String]
    #
    # @!attribute [rw] expected_bucket_owner
    #   Optional 12-digit AWS account ID expected to own the Amazon S3
    #   bucket.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/S3Storage AWS API Documentation
    #
    class S3Storage < Struct.new(
      :bucket_arn,
      :compression_type,
      :output_prefix,
      :output_key_template,
      :storage_class,
      :expected_bucket_owner)
      SENSITIVE = []
      include Aws::Structure
    end

    # Updates an existing channel's destination configuration. You must
    # update the same destination type the channel was created with; the
    # destination type cannot be changed.
    #
    # @!attribute [rw] channel_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies the channel.
    #   @return [String]
    #
    # @!attribute [rw] cluster_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies the cluster.
    #   @return [String]
    #
    # @!attribute [rw] iceberg_destination_update
    #   Updates fields on an Apache Iceberg destination. Use only when the
    #   channel was created with an Iceberg destination.
    #   @return [Types::IcebergDestinationUpdate]
    #
    # @!attribute [rw] s3_destination_update
    #   Updates fields on an Amazon S3 destination. Use only when the
    #   channel was created with an Amazon S3 destination.
    #   @return [Types::S3DestinationUpdate]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/UpdateChannelRequest AWS API Documentation
    #
    class UpdateChannelRequest < Struct.new(
      :channel_arn,
      :cluster_arn,
      :iceberg_destination_update,
      :s3_destination_update)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns the channel ARN and the cluster-operation ARN that tracks the
    # asynchronous update.
    #
    # @!attribute [rw] channel_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies the channel.
    #   @return [String]
    #
    # @!attribute [rw] cluster_operation_arn
    #   The Amazon Resource Name (ARN) of the cluster operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/UpdateChannelResponse AWS API Documentation
    #
    class UpdateChannelResponse < Struct.new(
      :channel_arn,
      :cluster_operation_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request body for UpdateClusterConfiguration.
    #
    # @!attribute [rw] cluster_arn
    #   @return [String]
    #
    # @!attribute [rw] configuration_info
    #   Represents the configuration that you want MSK to use for the
    #   cluster.
    #   @return [Types::ConfigurationInfo]
    #
    # @!attribute [rw] current_version
    #   The version of the cluster that you want to update.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/UpdateClusterConfigurationRequest AWS API Documentation
    #
    class UpdateClusterConfigurationRequest < Struct.new(
      :cluster_arn,
      :configuration_info,
      :current_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Response body for UpdateClusterConfiguration.
    #
    # @!attribute [rw] cluster_arn
    #   The Amazon Resource Name (ARN) of the cluster.
    #   @return [String]
    #
    # @!attribute [rw] cluster_operation_arn
    #   The Amazon Resource Name (ARN) of the cluster operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/UpdateClusterConfigurationResponse AWS API Documentation
    #
    class UpdateClusterConfigurationResponse < Struct.new(
      :cluster_arn,
      :cluster_operation_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request body for UpdateClusterKafkaVersion.
    #
    # @!attribute [rw] cluster_arn
    #   @return [String]
    #
    # @!attribute [rw] configuration_info
    #   Specifies the configuration to use for the brokers.
    #   @return [Types::ConfigurationInfo]
    #
    # @!attribute [rw] current_version
    #   Current cluster version.
    #   @return [String]
    #
    # @!attribute [rw] target_kafka_version
    #   Target Apache Kafka version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/UpdateClusterKafkaVersionRequest AWS API Documentation
    #
    class UpdateClusterKafkaVersionRequest < Struct.new(
      :cluster_arn,
      :configuration_info,
      :current_version,
      :target_kafka_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Response body for UpdateClusterKafkaVersion.
    #
    # @!attribute [rw] cluster_arn
    #   The Amazon Resource Name (ARN) of the cluster.
    #   @return [String]
    #
    # @!attribute [rw] cluster_operation_arn
    #   The Amazon Resource Name (ARN) of the cluster operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/UpdateClusterKafkaVersionResponse AWS API Documentation
    #
    class UpdateClusterKafkaVersionResponse < Struct.new(
      :cluster_arn,
      :cluster_operation_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request body for UpdateConfiguration.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the configuration.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the configuration.
    #   @return [String]
    #
    # @!attribute [rw] server_properties
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/UpdateConfigurationRequest AWS API Documentation
    #
    class UpdateConfigurationRequest < Struct.new(
      :arn,
      :description,
      :server_properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # Response body for UpdateConfiguration.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the configuration.
    #   @return [String]
    #
    # @!attribute [rw] latest_revision
    #   Latest revision of the configuration.
    #   @return [Types::ConfigurationRevision]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/UpdateConfigurationResponse AWS API Documentation
    #
    class UpdateConfigurationResponse < Struct.new(
      :arn,
      :latest_revision)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request body for UpdateConnectivity.
    #
    # @!attribute [rw] cluster_arn
    #   @return [String]
    #
    # @!attribute [rw] connectivity_info
    #   Information about the broker access configuration.
    #   @return [Types::ConnectivityInfo]
    #
    # @!attribute [rw] current_version
    #   The current version of the cluster.
    #   @return [String]
    #
    # @!attribute [rw] zookeeper_access
    #   Access control settings for zookeeper
    #   @return [Types::ZookeeperAccess]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/UpdateConnectivityRequest AWS API Documentation
    #
    class UpdateConnectivityRequest < Struct.new(
      :cluster_arn,
      :connectivity_info,
      :current_version,
      :zookeeper_access)
      SENSITIVE = []
      include Aws::Structure
    end

    # Response body for UpdateConnectivity.
    #
    # @!attribute [rw] cluster_arn
    #   The Amazon Resource Name (ARN) of the cluster.
    #   @return [String]
    #
    # @!attribute [rw] cluster_operation_arn
    #   The Amazon Resource Name (ARN) of the cluster operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/UpdateConnectivityResponse AWS API Documentation
    #
    class UpdateConnectivityResponse < Struct.new(
      :cluster_arn,
      :cluster_operation_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request body for UpdateMonitoring.
    #
    # @!attribute [rw] cluster_arn
    #   @return [String]
    #
    # @!attribute [rw] current_version
    #   The version of cluster to update from. A successful operation will
    #   then generate a new version.
    #   @return [String]
    #
    # @!attribute [rw] enhanced_monitoring
    #   Specifies which Apache Kafka metrics Amazon MSK gathers and sends to
    #   Amazon CloudWatch for this cluster.
    #   @return [String]
    #
    # @!attribute [rw] open_monitoring
    #   The settings for open monitoring.
    #   @return [Types::OpenMonitoringInfo]
    #
    # @!attribute [rw] logging_info
    #   LoggingInfo details.
    #   @return [Types::LoggingInfo]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/UpdateMonitoringRequest AWS API Documentation
    #
    class UpdateMonitoringRequest < Struct.new(
      :cluster_arn,
      :current_version,
      :enhanced_monitoring,
      :open_monitoring,
      :logging_info)
      SENSITIVE = []
      include Aws::Structure
    end

    # Response body for UpdateMonitoring.
    #
    # @!attribute [rw] cluster_arn
    #   The Amazon Resource Name (ARN) of the cluster.
    #   @return [String]
    #
    # @!attribute [rw] cluster_operation_arn
    #   The Amazon Resource Name (ARN) of the cluster operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/UpdateMonitoringResponse AWS API Documentation
    #
    class UpdateMonitoringResponse < Struct.new(
      :cluster_arn,
      :cluster_operation_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Parameters for updating replication information between source and
    # target Kafka clusters of a replicator.
    #
    # @!attribute [rw] consumer_group_replication
    #   Updated consumer group replication information.
    #   @return [Types::ConsumerGroupReplicationUpdate]
    #
    # @!attribute [rw] current_version
    #   Current replicator version.
    #   @return [String]
    #
    # @!attribute [rw] log_delivery
    #   Configuration for delivering replicator logs to customer
    #   destinations.
    #   @return [Types::LogDelivery]
    #
    # @!attribute [rw] replicator_arn
    #   @return [String]
    #
    # @!attribute [rw] source_kafka_cluster_arn
    #   The ARN of the source Kafka cluster.
    #   @return [String]
    #
    # @!attribute [rw] source_kafka_cluster_id
    #   The ID of the source Kafka cluster.
    #   @return [String]
    #
    # @!attribute [rw] target_kafka_cluster_arn
    #   The ARN of the target Kafka cluster.
    #   @return [String]
    #
    # @!attribute [rw] target_kafka_cluster_id
    #   The ID of the target Kafka cluster.
    #   @return [String]
    #
    # @!attribute [rw] topic_replication
    #   Updated topic replication information.
    #   @return [Types::TopicReplicationUpdate]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/UpdateReplicationInfoRequest AWS API Documentation
    #
    class UpdateReplicationInfoRequest < Struct.new(
      :consumer_group_replication,
      :current_version,
      :log_delivery,
      :replicator_arn,
      :source_kafka_cluster_arn,
      :source_kafka_cluster_id,
      :target_kafka_cluster_arn,
      :target_kafka_cluster_id,
      :topic_replication)
      SENSITIVE = []
      include Aws::Structure
    end

    # Updated Replication information of a replicator.
    #
    # @!attribute [rw] replicator_arn
    #   The Amazon Resource Name (ARN) of the replicator.
    #   @return [String]
    #
    # @!attribute [rw] replicator_state
    #   State of the replicator.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/UpdateReplicationInfoResponse AWS API Documentation
    #
    class UpdateReplicationInfoResponse < Struct.new(
      :replicator_arn,
      :replicator_state)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request body for UpdateSecurity.
    #
    # @!attribute [rw] client_authentication
    #   Includes all client authentication related information.
    #   @return [Types::ClientAuthentication]
    #
    # @!attribute [rw] cluster_arn
    #   @return [String]
    #
    # @!attribute [rw] current_version
    #   You can use the DescribeCluster operation to get the current version
    #   of the cluster. After the security update is complete, the cluster
    #   will have a new version.
    #   @return [String]
    #
    # @!attribute [rw] encryption_info
    #   Includes all encryption-related information.
    #   @return [Types::EncryptionInfo]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/UpdateSecurityRequest AWS API Documentation
    #
    class UpdateSecurityRequest < Struct.new(
      :client_authentication,
      :cluster_arn,
      :current_version,
      :encryption_info)
      SENSITIVE = []
      include Aws::Structure
    end

    # Response body for UpdateSecurity.
    #
    # @!attribute [rw] cluster_arn
    #   The Amazon Resource Name (ARN) of the cluster.
    #   @return [String]
    #
    # @!attribute [rw] cluster_operation_arn
    #   The Amazon Resource Name (ARN) of the cluster operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/UpdateSecurityResponse AWS API Documentation
    #
    class UpdateSecurityResponse < Struct.new(
      :cluster_arn,
      :cluster_operation_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request object for UpdateStorageApi.
    #
    # @!attribute [rw] cluster_arn
    #   @return [String]
    #
    # @!attribute [rw] current_version
    #   The version of cluster to update from. A successful operation will
    #   then generate a new version.
    #   @return [String]
    #
    # @!attribute [rw] provisioned_throughput
    #   EBS volume provisioned throughput information.
    #   @return [Types::ProvisionedThroughput]
    #
    # @!attribute [rw] storage_mode
    #   Controls storage mode for supported storage tiers.
    #   @return [String]
    #
    # @!attribute [rw] volume_size_gb
    #   size of the EBS volume to update.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/UpdateStorageRequest AWS API Documentation
    #
    class UpdateStorageRequest < Struct.new(
      :cluster_arn,
      :current_version,
      :provisioned_throughput,
      :storage_mode,
      :volume_size_gb)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request body for UpdateTopic.
    #
    # @!attribute [rw] cluster_arn
    #   @return [String]
    #
    # @!attribute [rw] topic_name
    #   @return [String]
    #
    # @!attribute [rw] configs
    #   @return [String]
    #
    # @!attribute [rw] partition_count
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/UpdateTopicRequest AWS API Documentation
    #
    class UpdateTopicRequest < Struct.new(
      :cluster_arn,
      :topic_name,
      :configs,
      :partition_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # Response body for UpdateTopic.
    #
    # @!attribute [rw] topic_arn
    #   @return [String]
    #
    # @!attribute [rw] topic_name
    #   @return [String]
    #
    # @!attribute [rw] status
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/UpdateTopicResponse AWS API Documentation
    #
    class UpdateTopicResponse < Struct.new(
      :topic_arn,
      :topic_name,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Response body for UpdateStorageResponse Api.
    #
    # @!attribute [rw] cluster_arn
    #   The Amazon Resource Name (ARN) of the cluster.
    #   @return [String]
    #
    # @!attribute [rw] cluster_operation_arn
    #   The Amazon Resource Name (ARN) of the cluster operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/UpdateStorageResponse AWS API Documentation
    #
    class UpdateStorageResponse < Struct.new(
      :cluster_arn,
      :cluster_operation_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Description of the requester that calls the API operation.
    #
    # @!attribute [rw] type
    #   The identity type of the requester that calls the API operation.
    #   @return [String]
    #
    # @!attribute [rw] principal_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/UserIdentity AWS API Documentation
    #
    class UserIdentity < Struct.new(
      :type,
      :principal_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Zookeeper node information.
    #
    # @!attribute [rw] attached_eni_id
    #   The attached elastic network interface of the zookeeper.
    #   @return [String]
    #
    # @!attribute [rw] client_vpc_ip_address
    #   The virtual private cloud (VPC) IP address of the client.
    #   @return [String]
    #
    # @!attribute [rw] endpoints
    #   Endpoints for accessing the ZooKeeper.
    #   @return [Array<String>]
    #
    # @!attribute [rw] zookeeper_id
    #   The role-specific ID for Zookeeper.
    #   @return [Float]
    #
    # @!attribute [rw] zookeeper_version
    #   The version of Zookeeper.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/ZookeeperNodeInfo AWS API Documentation
    #
    class ZookeeperNodeInfo < Struct.new(
      :attached_eni_id,
      :client_vpc_ip_address,
      :endpoints,
      :zookeeper_id,
      :zookeeper_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Controller node information.
    #
    # @!attribute [rw] endpoints
    #   Endpoints for accessing the Controller.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/ControllerNodeInfo AWS API Documentation
    #
    class ControllerNodeInfo < Struct.new(
      :endpoints)
      SENSITIVE = []
      include Aws::Structure
    end

    # JMX and Node monitoring for the MSK cluster.
    #
    # @!attribute [rw] prometheus
    #   Prometheus settings.
    #   @return [Types::Prometheus]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/OpenMonitoring AWS API Documentation
    #
    class OpenMonitoring < Struct.new(
      :prometheus)
      SENSITIVE = []
      include Aws::Structure
    end

    # JMX and Node monitoring for the MSK cluster.
    #
    # @!attribute [rw] prometheus
    #   Prometheus settings.
    #   @return [Types::PrometheusInfo]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/OpenMonitoringInfo AWS API Documentation
    #
    class OpenMonitoringInfo < Struct.new(
      :prometheus)
      SENSITIVE = []
      include Aws::Structure
    end

    # A source column used by an Apache Iceberg destination table's
    # partition specification.
    #
    # @!attribute [rw] source_name
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/PartitionSource AWS API Documentation
    #
    class PartitionSource < Struct.new(
      :source_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Partition specification for an Apache Iceberg destination table.
    #
    # @!attribute [rw] partition_strategy
    #   The partitioning strategy applied to records written to the table.
    #   @return [String]
    #
    # @!attribute [rw] source_list
    #   The source columns used by the partitioning strategy. For
    #   TIME\_HOUR, must contain exactly one source column whose value is a
    #   timestamp.
    #   @return [Array<Types::PartitionSource>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/PartitionSpec AWS API Documentation
    #
    class PartitionSpec < Struct.new(
      :partition_strategy,
      :source_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # Prometheus settings for open monitoring.
    #
    # @!attribute [rw] jmx_exporter
    #   Indicates whether you want to enable or disable the JMX Exporter.
    #   @return [Types::JmxExporter]
    #
    # @!attribute [rw] node_exporter
    #   Indicates whether you want to enable or disable the Node Exporter.
    #   @return [Types::NodeExporter]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/Prometheus AWS API Documentation
    #
    class Prometheus < Struct.new(
      :jmx_exporter,
      :node_exporter)
      SENSITIVE = []
      include Aws::Structure
    end

    # Prometheus settings.
    #
    # @!attribute [rw] jmx_exporter
    #   JMX Exporter settings.
    #   @return [Types::JmxExporterInfo]
    #
    # @!attribute [rw] node_exporter
    #   Node Exporter settings.
    #   @return [Types::NodeExporterInfo]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/PrometheusInfo AWS API Documentation
    #
    class PrometheusInfo < Struct.new(
      :jmx_exporter,
      :node_exporter)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about provisioned throughput for EBS storage
    # volumes attached to kafka broker nodes.
    #
    # @!attribute [rw] enabled
    #   Provisioned throughput is enabled or not.
    #   @return [Boolean]
    #
    # @!attribute [rw] volume_throughput
    #   Throughput value of the EBS volumes for the data drive on each kafka
    #   broker node in MiB per second.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/ProvisionedThroughput AWS API Documentation
    #
    class ProvisionedThroughput < Struct.new(
      :enabled,
      :volume_throughput)
      SENSITIVE = []
      include Aws::Structure
    end

    # Broker public access control.
    #
    # @!attribute [rw] type
    #   The value DISABLED indicates that public access is disabled.
    #   SERVICE\_PROVIDED\_EIPS indicates that public access is enabled.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/PublicAccess AWS API Documentation
    #
    class PublicAccess < Struct.new(
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Broker VPC connectivity access control.
    #
    # @!attribute [rw] client_authentication
    #   @return [Types::VpcConnectivityClientAuthentication]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/VpcConnectivity AWS API Documentation
    #
    class VpcConnectivity < Struct.new(
      :client_authentication)
      SENSITIVE = []
      include Aws::Structure
    end

    # Description of the VPC connection for CreateVpcConnection and
    # DeleteVpcConnection operations.
    #
    # @!attribute [rw] vpc_connection_arn
    #   @return [String]
    #
    # @!attribute [rw] owner
    #   @return [String]
    #
    # @!attribute [rw] user_identity
    #   Description of the requester that calls the API operation.
    #   @return [Types::UserIdentity]
    #
    # @!attribute [rw] creation_time
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/VpcConnectionInfo AWS API Documentation
    #
    class VpcConnectionInfo < Struct.new(
      :vpc_connection_arn,
      :owner,
      :user_identity,
      :creation_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Description of the VPC connection for CreateVpcConnection and
    # DeleteVpcConnection operations.
    #
    # @!attribute [rw] creation_time
    #   @return [Time]
    #
    # @!attribute [rw] owner
    #   @return [String]
    #
    # @!attribute [rw] user_identity
    #   Description of the requester that calls the API operation.
    #   @return [Types::UserIdentity]
    #
    # @!attribute [rw] vpc_connection_arn
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/VpcConnectionInfoServerless AWS API Documentation
    #
    class VpcConnectionInfoServerless < Struct.new(
      :creation_time,
      :owner,
      :user_identity,
      :vpc_connection_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request body for RebootBrokerNode action.
    #
    # @!attribute [rw] broker_ids
    #   The list of broker ids to be rebooted.
    #   @return [Array<String>]
    #
    # @!attribute [rw] cluster_arn
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/RebootBrokerRequest AWS API Documentation
    #
    class RebootBrokerRequest < Struct.new(
      :broker_ids,
      :cluster_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Response body for RebootBrokers action.
    #
    # @!attribute [rw] cluster_arn
    #   The Amazon Resource Name (ARN) of the cluster.
    #   @return [String]
    #
    # @!attribute [rw] cluster_operation_arn
    #   The Amazon Resource Name (ARN) of the cluster operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/RebootBrokerResponse AWS API Documentation
    #
    class RebootBrokerResponse < Struct.new(
      :cluster_arn,
      :cluster_operation_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of the Amazon S3 destination for logs.
    #
    # @!attribute [rw] bucket
    #   The name of the S3 bucket that is the destination for broker logs.
    #   @return [String]
    #
    # @!attribute [rw] enabled
    #   Specifies whether broker logs get sent to the specified Amazon S3
    #   destination.
    #   @return [Boolean]
    #
    # @!attribute [rw] prefix
    #   The S3 prefix that is the destination for broker logs.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/S3 AWS API Documentation
    #
    class S3 < Struct.new(
      :bucket,
      :enabled,
      :prefix)
      SENSITIVE = []
      include Aws::Structure
    end

    # Indicates whether you want to enable or disable the JMX Exporter.
    #
    # @!attribute [rw] enabled_in_broker
    #   Indicates whether you want to enable or disable the JMX Exporter.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/JmxExporter AWS API Documentation
    #
    class JmxExporter < Struct.new(
      :enabled_in_broker)
      SENSITIVE = []
      include Aws::Structure
    end

    # Indicates whether you want to enable or disable the JMX Exporter.
    #
    # @!attribute [rw] enabled_in_broker
    #   JMX Exporter being enabled in broker.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/JmxExporterInfo AWS API Documentation
    #
    class JmxExporterInfo < Struct.new(
      :enabled_in_broker)
      SENSITIVE = []
      include Aws::Structure
    end

    # Indicates whether you want to enable or disable the Node Exporter.
    #
    # @!attribute [rw] enabled_in_broker
    #   Indicates whether you want to enable or disable the Node Exporter.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/NodeExporter AWS API Documentation
    #
    class NodeExporter < Struct.new(
      :enabled_in_broker)
      SENSITIVE = []
      include Aws::Structure
    end

    # Indicates whether you want to enable or disable the Node Exporter.
    #
    # @!attribute [rw] enabled_in_broker
    #   Node Exporter being enabled in broker.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/NodeExporterInfo AWS API Documentation
    #
    class NodeExporterInfo < Struct.new(
      :enabled_in_broker)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

