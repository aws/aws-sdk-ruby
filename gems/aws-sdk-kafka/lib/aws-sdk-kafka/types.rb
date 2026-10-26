# frozen_string_literal: true

# This is generated code!

module Aws::Kafka
  # This module contains the types returned by client operations.
  module Types

    # <p>Details of an Amazon MSK Cluster.</p>
    # @!attribute msk_cluster_arn
    #   <p>The Amazon Resource Name (ARN) of an Amazon MSK cluster.</p>
    #   @return [String]
    class AmazonMskCluster < Struct.new(
      nil,
      :msk_cluster_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details of an Apache Kafka Cluster.</p>
    # @!attribute apache_kafka_cluster_id
    #   <p>The ID of the Apache Kafka cluster.</p>
    #   @return [String]
    # @!attribute bootstrap_broker_string
    #   <p>The bootstrap broker string of the Apache Kafka cluster.</p>
    #   @return [String]
    class ApacheKafkaCluster < Struct.new(
      nil,
      :apache_kafka_cluster_id,
      :bootstrap_broker_string,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The authorizer logs configuration for this MSK cluster.</p>
    # @!attribute cloud_watch_logs
    #   <p>Details of the CloudWatch Logs destination for authorizer logs.</p>
    #   @return [Types::CloudWatchLogs]
    # @!attribute firehose
    #   <p>Details of the Kinesis Data Firehose delivery stream that is the destination for authorizer logs.</p>
    #   @return [Types::Firehose]
    # @!attribute s3
    #   <p>Details of the Amazon S3 destination for authorizer logs.</p>
    #   @return [Types::S3]
    class AuthorizerLogs < Struct.new(
      nil,
      :cloud_watch_logs,
      :firehose,
      :s3,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Returns information about an error.</p>
    # @!attribute invalid_parameter
    #   <p>The parameter that caused the error.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The description of the error.</p>
    #   @return [String]
    class BadRequestException < Struct.new(
      nil,
      :invalid_parameter,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Associates sasl scram secrets to cluster.</p>
    # @!attribute cluster_arn
    #   <p>The Amazon Resource Name (ARN) of the cluster to be updated.</p>
    #   @return [String]
    # @!attribute secret_arn_list
    #   <p>List of AWS Secrets Manager secret ARNs.</p>
    #   @return [Array<String>]
    class BatchAssociateScramSecretRequest < Struct.new(
      nil,
      :cluster_arn,
      :secret_arn_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_arn
    #   <p>The Amazon Resource Name (ARN) of the cluster.</p>
    #   @return [String]
    # @!attribute unprocessed_scram_secrets
    #   <p>List of errors when associating secrets to cluster.</p>
    #   @return [Array<Types::UnprocessedScramSecret>]
    class BatchAssociateScramSecretResponse < Struct.new(
      nil,
      :cluster_arn,
      :unprocessed_scram_secrets,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Disassociates sasl scram secrets to cluster.</p>
    # @!attribute cluster_arn
    #   <p>The Amazon Resource Name (ARN) of the cluster to be updated.</p>
    #   @return [String]
    # @!attribute secret_arn_list
    #   <p>List of AWS Secrets Manager secret ARNs.</p>
    #   @return [Array<String>]
    class BatchDisassociateScramSecretRequest < Struct.new(
      nil,
      :cluster_arn,
      :secret_arn_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_arn
    #   <p>The Amazon Resource Name (ARN) of the cluster.</p>
    #   @return [String]
    # @!attribute unprocessed_scram_secrets
    #   <p>List of errors when disassociating secrets to cluster.</p>
    #   @return [Array<Types::UnprocessedScramSecret>]
    class BatchDisassociateScramSecretResponse < Struct.new(
      nil,
      :cluster_arn,
      :unprocessed_scram_secrets,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information regarding UpdateBrokerCount.</p>
    # @!attribute created_broker_ids
    #   <p>Kafka Broker IDs of brokers being created.</p>
    #   @return [Array<Float>]
    # @!attribute deleted_broker_ids
    #   <p>Kafka Broker IDs of brokers being deleted.</p>
    #   @return [Array<Float>]
    class BrokerCountUpdateInfo < Struct.new(
      nil,
      :created_broker_ids,
      :deleted_broker_ids,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the EBS volume upgrade information. The broker identifier must be set to the keyword ALL. This means the changes apply to all the brokers in the cluster.</p>
    # @!attribute kafka_broker_node_id
    #   <p>The ID of the broker to update.</p>
    #   @return [String]
    # @!attribute provisioned_throughput
    #   <p>EBS volume provisioned throughput information.</p>
    #   @return [Types::ProvisionedThroughput]
    # @!attribute volume_size_gb
    #   <p>Size of the EBS volume to update.</p>
    #   @return [Integer]
    class BrokerEBSVolumeInfo < Struct.new(
      nil,
      :kafka_broker_node_id,
      :provisioned_throughput,
      :volume_size_gb,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute cloud_watch_logs
    #   @return [Types::CloudWatchLogs]
    # @!attribute firehose
    #   @return [Types::Firehose]
    # @!attribute s3
    #   @return [Types::S3]
    class BrokerLogs < Struct.new(
      nil,
      :cloud_watch_logs,
      :firehose,
      :s3,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the setup to be used for Apache Kafka broker nodes in the cluster.</p>
    # @!attribute broker_az_distribution
    #   <p>The distribution of broker nodes across Availability Zones. This is an optional parameter. If you don't specify it, Amazon MSK gives it the value DEFAULT. You can also explicitly set this parameter to the value DEFAULT. No other values are currently allowed.</p>
    #            <p>Amazon MSK distributes the broker nodes evenly across the Availability Zones that correspond to the subnets you provide when you create the cluster.</p>
    #   @return [String]
    # @!attribute client_subnets
    #   <p>The list of subnets to connect to in the client virtual private cloud (VPC). AWS creates elastic network interfaces inside these subnets. Client applications use elastic network interfaces to produce and consume data. Client subnets can't occupy the Availability Zone with ID use use1-az3.</p>
    #   @return [Array<String>]
    # @!attribute instance_type
    #   <p>The type of Amazon EC2 instances to use for Apache Kafka brokers. The following instance types are allowed: kafka.m5.large, kafka.m5.xlarge, kafka.m5.2xlarge,
    #   kafka.m5.4xlarge, kafka.m5.12xlarge, and kafka.m5.24xlarge.</p>
    #   @return [String]
    # @!attribute security_groups
    #   <p>The AWS security groups to associate with the elastic network interfaces in order to specify who can connect to and communicate with the Amazon MSK cluster. If you don't specify a security group, Amazon MSK uses the default security group associated with the VPC.</p>
    #   @return [Array<String>]
    # @!attribute storage_info
    #   <p>Contains information about storage volumes attached to MSK broker nodes.</p>
    #   @return [Types::StorageInfo]
    # @!attribute connectivity_info
    #   <p>Information about the broker access configuration.</p>
    #   @return [Types::ConnectivityInfo]
    # @!attribute zone_ids
    #   <p>The list of zoneIds for the cluster in the virtual private cloud (VPC).</p>
    #   @return [Array<String>]
    class BrokerNodeGroupInfo < Struct.new(
      nil,
      :broker_az_distribution,
      :client_subnets,
      :instance_type,
      :security_groups,
      :storage_info,
      :connectivity_info,
      :zone_ids,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>BrokerNodeInfo</p>
    # @!attribute attached_eni_id
    #   <p>The attached elastic network interface of the broker.</p>
    #   @return [String]
    # @!attribute broker_id
    #   <p>The ID of the broker.</p>
    #   @return [Float]
    # @!attribute client_subnet
    #   <p>The client subnet to which this broker node belongs.</p>
    #   @return [String]
    # @!attribute client_vpc_ip_address
    #   <p>The virtual private cloud (VPC) of the client.</p>
    #   @return [String]
    # @!attribute current_broker_software_info
    #   <p>Information about the version of software currently deployed on the Apache Kafka brokers in the cluster.</p>
    #   @return [Types::BrokerSoftwareInfo]
    # @!attribute endpoints
    #   <p>Endpoints for accessing the broker.</p>
    #   @return [Array<String>]
    class BrokerNodeInfo < Struct.new(
      nil,
      :attached_eni_id,
      :broker_id,
      :client_subnet,
      :client_vpc_ip_address,
      :current_broker_software_info,
      :endpoints,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the current software installed on the cluster.</p>
    # @!attribute configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the configuration used for the cluster. This field isn't visible in this preview release.</p>
    #   @return [String]
    # @!attribute configuration_revision
    #   <p>The revision of the configuration to use. This field isn't visible in this preview release.</p>
    #   @return [Integer]
    # @!attribute kafka_version
    #   <p>The version of Apache Kafka.</p>
    #   @return [String]
    class BrokerSoftwareInfo < Struct.new(
      nil,
      :configuration_arn,
      :configuration_revision,
      :kafka_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration of the AWS Glue Data Catalog and S3 Tables warehouse used by the Apache Iceberg destination.</p>
    # @!attribute catalog_arn
    #   <p>The Amazon Resource Name (ARN) of the federated AWS Glue Data Catalog that projects the S3 Tables bucket. If omitted, MSK derives the catalog ARN from warehouseLocation.</p>
    #   @return [String]
    # @!attribute warehouse_location
    #   <p>The Amazon Resource Name (ARN) of the S3 Tables bucket that backs the Apache Iceberg warehouse.</p>
    #   @return [String]
    class Catalog < Struct.new(
      nil,
      :catalog_arn,
      :warehouse_location,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary information about a channel returned by ListChannels.</p>
    # @!attribute channel_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the channel.</p>
    #   @return [String]
    # @!attribute channel_name
    #   <p>The name of the channel.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current lifecycle state of the channel.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The time when the channel was created.</p>
    #   @return [Time]
    # @!attribute destination_type
    #   <p>The type of destination configured for the channel.</p>
    #   @return [String]
    # @!attribute cluster_operation_arn
    #   <p>The Amazon Resource Name (ARN) of the in-flight cluster operation. Returned only while the channel is in CREATING, UPDATING, or DELETING.</p>
    #   @return [String]
    class ChannelInfo < Struct.new(
      nil,
      :channel_arn,
      :channel_name,
      :status,
      :creation_time,
      :destination_type,
      :cluster_operation_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for the destinations to which the channel publishes operational logs.</p>
    # @!attribute cloud_watch_logs
    #   <p>Details of the CloudWatch Logs destination for Channel logs.</p>
    #   @return [Types::CloudWatchLogs]
    # @!attribute firehose
    #   <p>Details of the Kinesis Data Firehose delivery stream that is the destination for Channel logs.</p>
    #   @return [Types::Firehose]
    # @!attribute s3
    #   <p>Details of the Amazon S3 destination for Channel logs.</p>
    #   @return [Types::S3]
    class ChannelLoggingInfo < Struct.new(
      nil,
      :cloud_watch_logs,
      :firehose,
      :s3,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Additional context for the current channel state, populated when the channel is in FAILED.</p>
    # @!attribute code
    #   <p>A short, machine-readable code identifying the failure cause.</p>
    #   @return [String]
    # @!attribute message
    #   <p>A human-readable message describing the failure.</p>
    #   @return [String]
    class ChannelStateInfo < Struct.new(
      nil,
      :code,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Includes all client authentication information.</p>
    # @!attribute sasl
    #   <p>Details for ClientAuthentication using SASL.</p>
    #   @return [Types::Sasl]
    # @!attribute tls
    #   <p>Details for ClientAuthentication using TLS.</p>
    #   @return [Types::Tls]
    # @!attribute unauthenticated
    #   <p>Contains information about unauthenticated traffic to the cluster.</p>
    #   @return [Types::Unauthenticated]
    class ClientAuthentication < Struct.new(
      nil,
      :sasl,
      :tls,
      :unauthenticated,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The client VPC connection object.</p>
    # @!attribute authentication
    #   <p>Information about the auth scheme of Vpc Connection.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>Creation time of the Vpc Connection.</p>
    #   @return [Time]
    # @!attribute state
    #   <p>State of the Vpc Connection.</p>
    #   @return [String]
    # @!attribute vpc_connection_arn
    #   <p>The ARN that identifies the Vpc Connection.</p>
    #   @return [String]
    # @!attribute owner
    #   <p>The Owner of the Vpc Connection.</p>
    #   @return [String]
    class ClientVpcConnection < Struct.new(
      nil,
      :authentication,
      :creation_time,
      :state,
      :vpc_connection_arn,
      :owner,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute enabled
    #   @return [Boolean]
    # @!attribute log_group
    #   @return [String]
    class CloudWatchLogs < Struct.new(
      nil,
      :enabled,
      :log_group,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Returns information about a cluster.</p>
    # @!attribute active_operation_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies a cluster operation.</p>
    #   @return [String]
    # @!attribute cluster_type
    #   <p>Cluster Type.</p>
    #   @return [String]
    # @!attribute cluster_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the cluster.</p>
    #   @return [String]
    # @!attribute cluster_name
    #   <p>The name of the cluster.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The time when the cluster was created.</p>
    #   @return [Time]
    # @!attribute current_version
    #   <p>The current version of the MSK cluster.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The state of the cluster. The possible states are ACTIVE, CREATING, DELETING, FAILED, HEALING, MAINTENANCE, REBOOTING_BROKER, and UPDATING.</p>
    #   @return [String]
    # @!attribute state_info
    #   <p>State Info for the Amazon MSK cluster.</p>
    #   @return [Types::StateInfo]
    # @!attribute tags
    #   <p>Tags attached to the cluster.</p>
    #   @return [Hash<String, String>]
    # @!attribute provisioned
    #   <p>Information about the provisioned cluster.</p>
    #   @return [Types::Provisioned]
    # @!attribute serverless
    #   <p>Information about the serverless cluster.</p>
    #   @return [Types::Serverless]
    class Cluster < Struct.new(
      nil,
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
      :serverless,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Returns information about an error.</p>
    # @!attribute invalid_parameter
    #   <p>The parameter that caused the error.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The description of the error.</p>
    #   @return [String]
    class ClusterConnectivityException < Struct.new(
      nil,
      :invalid_parameter,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Returns information about a cluster.</p>
    # @!attribute active_operation_arn
    #   <p>Arn of active cluster operation.</p>
    #   @return [String]
    # @!attribute broker_node_group_info
    #   <p>Information about the broker nodes.</p>
    #   @return [Types::BrokerNodeGroupInfo]
    # @!attribute rebalancing
    #   <p>Contains information about intelligent rebalancing for new MSK Provisioned clusters with Express brokers. By default, intelligent rebalancing status is ACTIVE.</p>
    #   @return [Types::Rebalancing]
    # @!attribute client_authentication
    #   <p>Includes all client authentication information.</p>
    #   @return [Types::ClientAuthentication]
    # @!attribute cluster_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the cluster.</p>
    #   @return [String]
    # @!attribute cluster_name
    #   <p>The name of the cluster.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The time when the cluster was created.</p>
    #   @return [Time]
    # @!attribute current_broker_software_info
    #   <p>Information about the version of software currently deployed on the Apache Kafka brokers in the cluster.</p>
    #   @return [Types::BrokerSoftwareInfo]
    # @!attribute current_version
    #   <p>The current version of the MSK cluster.</p>
    #   @return [String]
    # @!attribute encryption_info
    #   <p>Includes all encryption-related information.</p>
    #   @return [Types::EncryptionInfo]
    # @!attribute enhanced_monitoring
    #   <p>Specifies which metrics are gathered for the MSK cluster. This property has the following possible values: DEFAULT, PER_BROKER, PER_TOPIC_PER_BROKER, and PER_TOPIC_PER_PARTITION. For a list of the metrics associated with each of these levels of monitoring, see <a href="https://docs.aws.amazon.com/msk/latest/developerguide/monitoring.html">Monitoring</a>.</p>
    #   @return [String]
    # @!attribute open_monitoring
    #   <p>Settings for open monitoring using Prometheus.</p>
    #   @return [Types::OpenMonitoring]
    # @!attribute logging_info
    #   @return [Types::LoggingInfo]
    # @!attribute number_of_broker_nodes
    #   <p>The number of broker nodes in the cluster.</p>
    #   @return [Integer]
    # @!attribute state
    #   <p>The state of the cluster. The possible states are ACTIVE, CREATING, DELETING, FAILED, HEALING, MAINTENANCE, REBOOTING_BROKER, and UPDATING.</p>
    #   @return [String]
    # @!attribute state_info
    #   @return [Types::StateInfo]
    # @!attribute tags
    #   <p>Tags attached to the cluster.</p>
    #   @return [Hash<String, String>]
    # @!attribute zookeeper_connect_string
    #   <p>The connection string to use to connect to the Apache ZooKeeper cluster.</p>
    #   @return [String]
    # @!attribute zookeeper_connect_string_tls
    #   <p>The connection string to use to connect to zookeeper cluster on Tls port.</p>
    #   @return [String]
    # @!attribute storage_mode
    #   <p>This controls storage mode for supported storage tiers.</p>
    #   @return [String]
    # @!attribute customer_action_status
    #   <p>Determines if there is an action required from the customer.</p>
    #   @return [String]
    class ClusterInfo < Struct.new(
      nil,
      :active_operation_arn,
      :broker_node_group_info,
      :rebalancing,
      :client_authentication,
      :cluster_arn,
      :cluster_name,
      :creation_time,
      :current_broker_software_info,
      :current_version,
      :encryption_info,
      :enhanced_monitoring,
      :open_monitoring,
      :logging_info,
      :number_of_broker_nodes,
      :state,
      :state_info,
      :tags,
      :zookeeper_connect_string,
      :zookeeper_connect_string_tls,
      :storage_mode,
      :customer_action_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Returns information about a cluster operation.</p>
    # @!attribute client_request_id
    #   <p>The ID of the API request that triggered this operation.</p>
    #   @return [String]
    # @!attribute cluster_arn
    #   <p>ARN of the cluster.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The time that the operation was created.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The time at which the operation finished.</p>
    #   @return [Time]
    # @!attribute error_info
    #   <p>Describes the error if the operation fails.</p>
    #   @return [Types::ErrorInfo]
    # @!attribute operation_arn
    #   <p>ARN of the cluster operation.</p>
    #   @return [String]
    # @!attribute operation_state
    #   <p>State of the cluster operation.</p>
    #   @return [String]
    # @!attribute operation_steps
    #   <p>Steps completed during the operation.</p>
    #   @return [Array<Types::ClusterOperationStep>]
    # @!attribute operation_type
    #   <p>Type of the cluster operation.</p>
    #   @return [String]
    # @!attribute source_cluster_info
    #   <p>Information about cluster attributes before a cluster is updated.</p>
    #   @return [Types::MutableClusterInfo]
    # @!attribute target_cluster_info
    #   <p>Information about cluster attributes after a cluster is updated.</p>
    #   @return [Types::MutableClusterInfo]
    # @!attribute vpc_connection_info
    #   <p>Description of the VPC connection for CreateVpcConnection and DeleteVpcConnection operations.</p>
    #   @return [Types::VpcConnectionInfo]
    class ClusterOperationInfo < Struct.new(
      nil,
      :client_request_id,
      :cluster_arn,
      :creation_time,
      :end_time,
      :error_info,
      :operation_arn,
      :operation_state,
      :operation_steps,
      :operation_type,
      :source_cluster_info,
      :target_cluster_info,
      :vpc_connection_info,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Step taken during a cluster operation.</p>
    # @!attribute step_info
    #   <p>Information about the step and its status.</p>
    #   @return [Types::ClusterOperationStepInfo]
    # @!attribute step_name
    #   <p>The name of the step.</p>
    #   @return [String]
    class ClusterOperationStep < Struct.new(
      nil,
      :step_info,
      :step_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>State information about the operation step.</p>
    # @!attribute step_status
    #   <p>The steps current status.</p>
    #   @return [String]
    class ClusterOperationStepInfo < Struct.new(
      nil,
      :step_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Returns information about a cluster operation.</p>
    # @!attribute cluster_arn
    #   <p>ARN of the cluster.</p>
    #   @return [String]
    # @!attribute cluster_type
    #   <p>Type of the backend cluster.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>The time at which operation was started.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The time at which the operation finished.</p>
    #   @return [Time]
    # @!attribute error_info
    #   <p>If cluster operation failed from an error, it describes the error.</p>
    #   @return [Types::ErrorInfo]
    # @!attribute operation_arn
    #   <p>ARN of the cluster operation.</p>
    #   @return [String]
    # @!attribute operation_state
    #   <p>State of the cluster operation.</p>
    #   @return [String]
    # @!attribute operation_type
    #   <p>Type of the cluster operation.</p>
    #   @return [String]
    # @!attribute provisioned
    #   <p>Properties of a provisioned cluster.</p>
    #   @return [Types::ClusterOperationV2Provisioned]
    # @!attribute serverless
    #   <p>Properties of a serverless cluster.</p>
    #   @return [Types::ClusterOperationV2Serverless]
    class ClusterOperationV2 < Struct.new(
      nil,
      :cluster_arn,
      :cluster_type,
      :start_time,
      :end_time,
      :error_info,
      :operation_arn,
      :operation_state,
      :operation_type,
      :provisioned,
      :serverless,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Returns information about a provisioned cluster operation.</p>
    # @!attribute operation_steps
    #   <p>Steps completed during the operation.</p>
    #   @return [Array<Types::ClusterOperationStep>]
    # @!attribute source_cluster_info
    #   <p>Information about cluster attributes before a cluster is updated.</p>
    #   @return [Types::MutableClusterInfo]
    # @!attribute target_cluster_info
    #   <p>Information about cluster attributes after a cluster is updated.</p>
    #   @return [Types::MutableClusterInfo]
    # @!attribute vpc_connection_info
    #   <p>Description of the VPC connection for CreateVpcConnection and DeleteVpcConnection operations.</p>
    #   @return [Types::VpcConnectionInfo]
    class ClusterOperationV2Provisioned < Struct.new(
      nil,
      :operation_steps,
      :source_cluster_info,
      :target_cluster_info,
      :vpc_connection_info,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Returns information about a serverless cluster operation.</p>
    # @!attribute source_cluster_info
    #   <p>Describes the cluster's attributes before any updates are applied. For example, networkType, which can be either IPv4 or DUAL.</p>
    #   @return [Types::ServerlessConnectivityInfo]
    # @!attribute target_cluster_info
    #   <p>Describes the cluster's attributes after any updates are applied. For example, networkType, which can be either IPv4 or DUAL.</p>
    #   @return [Types::ServerlessConnectivityInfo]
    # @!attribute vpc_connection_info
    #   <p>Description of the VPC connection for CreateVpcConnection and DeleteVpcConnection operations.</p>
    #   @return [Types::VpcConnectionInfoServerless]
    class ClusterOperationV2Serverless < Struct.new(
      nil,
      :source_cluster_info,
      :target_cluster_info,
      :vpc_connection_info,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Returns information about a cluster operation.</p>
    # @!attribute cluster_arn
    #   <p>ARN of the cluster.</p>
    #   @return [String]
    # @!attribute cluster_type
    #   <p>Type of the backend cluster.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>The time at which operation was started.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The time at which the operation finished.</p>
    #   @return [Time]
    # @!attribute operation_arn
    #   <p>ARN of the cluster operation.</p>
    #   @return [String]
    # @!attribute operation_state
    #   <p>State of the cluster operation.</p>
    #   @return [String]
    # @!attribute operation_type
    #   <p>Type of the cluster operation.</p>
    #   @return [String]
    class ClusterOperationV2Summary < Struct.new(
      nil,
      :cluster_arn,
      :cluster_type,
      :start_time,
      :end_time,
      :operation_arn,
      :operation_state,
      :operation_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains source Apache Kafka versions and compatible target Apache Kafka versions.</p>
    # @!attribute source_version
    #   <p>An Apache Kafka version.</p>
    #   @return [String]
    # @!attribute target_versions
    #   <p>A list of Apache Kafka versions.</p>
    #   @return [Array<String>]
    class CompatibleKafkaVersion < Struct.new(
      nil,
      :source_version,
      :target_versions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents an MSK Configuration.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the configuration.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The time when the configuration was created.</p>
    #   @return [Time]
    # @!attribute description
    #   <p>The description of the configuration.</p>
    #   @return [String]
    # @!attribute kafka_versions
    #   <p>An array of the versions of Apache Kafka with which you can use this MSK configuration. You can use this configuration for an MSK cluster only if the Apache Kafka version specified for the cluster appears in this array.</p>
    #   @return [Array<String>]
    # @!attribute latest_revision
    #   <p>Latest revision of the configuration.</p>
    #   @return [Types::ConfigurationRevision]
    # @!attribute name
    #   <p>The name of the configuration.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The state of the configuration. The possible states are ACTIVE, DELETING, and DELETE_FAILED. </p>
    #   @return [String]
    class Configuration < Struct.new(
      nil,
      :arn,
      :creation_time,
      :description,
      :kafka_versions,
      :latest_revision,
      :name,
      :state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the configuration to use for the brokers.</p>
    # @!attribute arn
    #   <p>ARN of the configuration to use.</p>
    #   @return [String]
    # @!attribute revision
    #   <p>The revision of the configuration to use.</p>
    #   @return [Integer]
    class ConfigurationInfo < Struct.new(
      nil,
      :arn,
      :revision,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a configuration revision.</p>
    # @!attribute creation_time
    #   <p>The time when the configuration revision was created.</p>
    #   @return [Time]
    # @!attribute description
    #   <p>The description of the configuration revision.</p>
    #   @return [String]
    # @!attribute revision
    #   <p>The revision number.</p>
    #   @return [Integer]
    class ConfigurationRevision < Struct.new(
      nil,
      :creation_time,
      :description,
      :revision,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Returns information about an error.</p>
    # @!attribute invalid_parameter
    #   <p>The parameter that caused the error.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The description of the error.</p>
    #   @return [String]
    class ConflictException < Struct.new(
      nil,
      :invalid_parameter,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the broker access configuration.</p>
    # @!attribute public_access
    #   <p>Public access control for brokers.</p>
    #   @return [Types::PublicAccess]
    # @!attribute vpc_connectivity
    #   <p>VPC connectivity access control for brokers.</p>
    #   @return [Types::VpcConnectivity]
    # @!attribute network_type
    #   <p>The network type of the cluster, which is IPv4 or DUAL. The DUAL network type uses both IPv4 and IPv6 addresses for your cluster and its resources.</p><p>By default, a cluster uses the IPv4 network type.</p>
    #   @return [String]
    class ConnectivityInfo < Struct.new(
      nil,
      :public_access,
      :vpc_connectivity,
      :network_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about consumer group replication.</p>
    # @!attribute consumer_groups_to_exclude
    #   <p>List of regular expression patterns indicating the consumer groups that should not be replicated.</p>
    #   @return [Array<String>]
    # @!attribute consumer_groups_to_replicate
    #   <p>List of regular expression patterns indicating the consumer groups to copy.</p>
    #   @return [Array<String>]
    # @!attribute detect_and_copy_new_consumer_groups
    #   <p>Enables synchronization of consumer groups to target cluster.</p>
    #   @return [Boolean]
    # @!attribute synchronise_consumer_group_offsets
    #   <p>Enables synchronization of consumer group offsets to target cluster. The translated offsets will be written to topic __consumer_offsets.</p>
    #   @return [Boolean]
    # @!attribute consumer_group_offset_sync_mode
    #   <p>The consumer group offset synchronization mode. With LEGACY, offsets are synchronized when producers write to the source cluster. With ENHANCED, consumer offsets are synchronized regardless of producer location. ENHANCED requires a corresponding replicator that replicates data from the target cluster to the source cluster.</p>
    #   @return [String]
    class ConsumerGroupReplication < Struct.new(
      nil,
      :consumer_groups_to_exclude,
      :consumer_groups_to_replicate,
      :detect_and_copy_new_consumer_groups,
      :synchronise_consumer_group_offsets,
      :consumer_group_offset_sync_mode,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about consumer group replication.</p>
    # @!attribute consumer_groups_to_exclude
    #   <p>List of regular expression patterns indicating the consumer groups that should not be replicated.</p>
    #   @return [Array<String>]
    # @!attribute consumer_groups_to_replicate
    #   <p>List of regular expression patterns indicating the consumer groups to copy.</p>
    #   @return [Array<String>]
    # @!attribute detect_and_copy_new_consumer_groups
    #   <p>Enables synchronization of consumer groups to target cluster.</p>
    #   @return [Boolean]
    # @!attribute synchronise_consumer_group_offsets
    #   <p>Enables synchronization of consumer group offsets to target cluster. The translated offsets will be written to topic __consumer_offsets.</p>
    #   @return [Boolean]
    class ConsumerGroupReplicationUpdate < Struct.new(
      nil,
      :consumer_groups_to_exclude,
      :consumer_groups_to_replicate,
      :detect_and_copy_new_consumer_groups,
      :synchronise_consumer_group_offsets,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Returns information about an error.</p>
    # @!attribute invalid_parameter
    #   <p>The parameter that caused the error.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The description of the error.</p>
    #   @return [String]
    class ControllerMovedException < Struct.new(
      nil,
      :invalid_parameter,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Controller node information.</p>
    # @!attribute endpoints
    #   <p>Endpoints for accessing the Controller.</p>
    #   @return [Array<String>]
    class ControllerNodeInfo < Struct.new(
      nil,
      :endpoints,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Creates a Channel that streams records from an Amazon MSK Express cluster topic to Amazon S3 or Apache Iceberg.</p>
    # @!attribute channel_name
    #   <p>The name of the channel. Must be unique within the cluster.</p>
    #   @return [String]
    # @!attribute cluster_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the cluster.</p>
    #   @return [String]
    # @!attribute encryption_configuration
    #   <p>The encryption configuration applied to the channel.</p>
    #   @return [Types::EncryptionConfiguration]
    # @!attribute iceberg_destination_configuration
    #   <p>The Apache Iceberg destination for the channel. Mutually exclusive with s3DestinationConfiguration.</p>
    #   @return [Types::IcebergDestinationConfiguration]
    # @!attribute s3_destination_configuration
    #   <p>The Amazon S3 destination for the channel. Mutually exclusive with icebergDestinationConfiguration.</p>
    #   @return [Types::S3DestinationConfiguration]
    # @!attribute tags
    #   <p>The tags attached to the channel.</p>
    #   @return [Hash<String, String>]
    # @!attribute topic_configuration_list
    #   <p>The list of topic configurations for the channel. Currently exactly one topic must be specified.</p>
    #   @return [Array<Types::TopicConfiguration>]
    # @!attribute logging_info
    #   <p>The destinations to which the channel publishes operational logs.</p>
    #   @return [Types::ChannelLoggingInfo]
    class CreateChannelRequest < Struct.new(
      nil,
      :channel_name,
      :cluster_arn,
      :encryption_configuration,
      :iceberg_destination_configuration,
      :s3_destination_configuration,
      :tags,
      :topic_configuration_list,
      :logging_info,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Returns the channel ARN and the cluster-operation ARN that tracks the asynchronous create.</p>
    # @!attribute channel_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the channel.</p>
    #   @return [String]
    # @!attribute cluster_operation_arn
    #   <p>The Amazon Resource Name (ARN) of the cluster operation.</p>
    #   @return [String]
    class CreateChannelResponse < Struct.new(
      nil,
      :channel_arn,
      :cluster_operation_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute broker_node_group_info
    #   <p>Information about the broker nodes in the cluster.</p>
    #   @return [Types::BrokerNodeGroupInfo]
    # @!attribute rebalancing
    #   <p>Specifies if intelligent rebalancing should be turned on for the new MSK Provisioned cluster with Express brokers. By default, intelligent rebalancing status is ACTIVE for all new clusters.</p>
    #   @return [Types::Rebalancing]
    # @!attribute client_authentication
    #   <p>Includes all client authentication related information.</p>
    #   @return [Types::ClientAuthentication]
    # @!attribute cluster_name
    #   <p>The name of the cluster.</p>
    #   @return [String]
    # @!attribute configuration_info
    #   <p>Represents the configuration that you want MSK to use for the brokers in a cluster.</p>
    #   @return [Types::ConfigurationInfo]
    # @!attribute encryption_info
    #   <p>Includes all encryption-related information.</p>
    #   @return [Types::EncryptionInfo]
    # @!attribute enhanced_monitoring
    #   <p>Specifies the level of monitoring for the MSK cluster. The possible values are DEFAULT, PER_BROKER, PER_TOPIC_PER_BROKER, and PER_TOPIC_PER_PARTITION.</p>
    #   @return [String]
    # @!attribute open_monitoring
    #   <p>The settings for open monitoring.</p>
    #   @return [Types::OpenMonitoringInfo]
    # @!attribute kafka_version
    #   <p>The version of Apache Kafka.</p>
    #   @return [String]
    # @!attribute logging_info
    #   @return [Types::LoggingInfo]
    # @!attribute number_of_broker_nodes
    #   <p>The number of broker nodes in the cluster.</p>
    #   @return [Integer]
    # @!attribute tags
    #   <p>Create tags when creating the cluster.</p>
    #   @return [Hash<String, String>]
    # @!attribute storage_mode
    #   <p>This controls storage mode for supported storage tiers.</p>
    #   @return [String]
    class CreateClusterRequest < Struct.new(
      nil,
      :broker_node_group_info,
      :rebalancing,
      :client_authentication,
      :cluster_name,
      :configuration_info,
      :encryption_info,
      :enhanced_monitoring,
      :open_monitoring,
      :kafka_version,
      :logging_info,
      :number_of_broker_nodes,
      :tags,
      :storage_mode,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_arn
    #   <p>The Amazon Resource Name (ARN) of the cluster.</p>
    #   @return [String]
    # @!attribute cluster_name
    #   <p>The name of the MSK cluster.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The state of the cluster. The possible states are ACTIVE, CREATING, DELETING, FAILED, HEALING, MAINTENANCE, REBOOTING_BROKER, and UPDATING.</p>
    #   @return [String]
    class CreateClusterResponse < Struct.new(
      nil,
      :cluster_arn,
      :cluster_name,
      :state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_name
    #   <p>The name of the cluster.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A map of tags that you want the cluster to have.</p>
    #   @return [Hash<String, String>]
    # @!attribute provisioned
    #   <p>Information about the provisioned cluster.</p>
    #   @return [Types::ProvisionedRequest]
    # @!attribute serverless
    #   <p>Information about the serverless cluster.</p>
    #   @return [Types::ServerlessRequest]
    class CreateClusterV2Request < Struct.new(
      nil,
      :cluster_name,
      :tags,
      :provisioned,
      :serverless,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_arn
    #   <p>The Amazon Resource Name (ARN) of the cluster.</p>
    #   @return [String]
    # @!attribute cluster_name
    #   <p>The name of the MSK cluster.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The state of the cluster. The possible states are ACTIVE, CREATING, DELETING, FAILED, HEALING, MAINTENANCE, REBOOTING_BROKER, and UPDATING.</p>
    #   @return [String]
    # @!attribute cluster_type
    #   <p>The type of the cluster. The possible states are PROVISIONED or SERVERLESS.</p>
    #   @return [String]
    class CreateClusterV2Response < Struct.new(
      nil,
      :cluster_arn,
      :cluster_name,
      :state,
      :cluster_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute description
    #   <p>The description of the configuration.</p>
    #   @return [String]
    # @!attribute kafka_versions
    #   <p>The versions of Apache Kafka with which you can use this MSK configuration.</p>
    #   @return [Array<String>]
    # @!attribute name
    #   <p>The name of the configuration.</p>
    #   @return [String]
    # @!attribute server_properties
    #   <p>Contents of the <filename>server.properties</filename> file. When using the API, you must ensure that the contents of the file are base64 encoded.
    #                  When using the AWS Management Console, the SDK, or the AWS CLI, the contents of <filename>server.properties</filename> can be in plaintext.</p>
    #   @return [String]
    class CreateConfigurationRequest < Struct.new(
      nil,
      :description,
      :kafka_versions,
      :name,
      :server_properties,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the configuration.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The time when the configuration was created.</p>
    #   @return [Time]
    # @!attribute latest_revision
    #   <p>Latest revision of the configuration.</p>
    #   @return [Types::ConfigurationRevision]
    # @!attribute name
    #   <p>The name of the configuration.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The state of the configuration. The possible states are ACTIVE, DELETING, and DELETE_FAILED. </p>
    #   @return [String]
    class CreateConfigurationResponse < Struct.new(
      nil,
      :arn,
      :creation_time,
      :latest_revision,
      :name,
      :state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Creates a replicator using the specified configuration.</p>
    # @!attribute description
    #   <p>A summary description of the replicator.</p>
    #   @return [String]
    # @!attribute kafka_clusters
    #   <p>Kafka Clusters to use in setting up sources / targets for replication.</p>
    #   @return [Array<Types::KafkaCluster>]
    # @!attribute replication_info_list
    #   <p>A list of replication configurations, where each configuration targets a given source cluster to target cluster replication flow.</p>
    #   @return [Array<Types::ReplicationInfo>]
    # @!attribute replicator_name
    #   <p>The name of the replicator. Alpha-numeric characters with '-' are allowed.</p>
    #   @return [String]
    # @!attribute service_execution_role_arn
    #   <p>The ARN of the IAM role used by the replicator to access resources in the customer's account (e.g source and target clusters)</p>
    #   @return [String]
    # @!attribute tags
    #   <p>List of tags to attach to created Replicator.</p>
    #   @return [Hash<String, String>]
    # @!attribute log_delivery
    #   <p>Configuration for delivering replicator logs to customer destinations.</p>
    #   @return [Types::LogDelivery]
    class CreateReplicatorRequest < Struct.new(
      nil,
      :description,
      :kafka_clusters,
      :replication_info_list,
      :replicator_name,
      :service_execution_role_arn,
      :tags,
      :log_delivery,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute replicator_arn
    #   <p>The Amazon Resource Name (ARN) of the replicator.</p>
    #   @return [String]
    # @!attribute replicator_name
    #   <p>Name of the replicator provided by the customer.</p>
    #   @return [String]
    # @!attribute replicator_state
    #   <p>State of the replicator.</p>
    #   @return [String]
    class CreateReplicatorResponse < Struct.new(
      nil,
      :replicator_arn,
      :replicator_name,
      :replicator_state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the cluster.</p>
    #   @return [String]
    # @!attribute topic_name
    #   <p>The name of the topic to create.</p>
    #   @return [String]
    # @!attribute partition_count
    #   <p>The number of partitions for the topic.</p>
    #   @return [Integer]
    # @!attribute replication_factor
    #   <p>The replication factor for the topic.</p>
    #   @return [Integer]
    # @!attribute configs
    #   <p>Topic configurations encoded as a Base64 string.</p>
    #   @return [String]
    class CreateTopicRequest < Struct.new(
      nil,
      :cluster_arn,
      :topic_name,
      :partition_count,
      :replication_factor,
      :configs,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute topic_arn
    #   <p>The Amazon Resource Name (ARN) of the topic.</p>
    #   @return [String]
    # @!attribute topic_name
    #   <p>The name of the topic that was created.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the topic creation.</p>
    #   @return [String]
    class CreateTopicResponse < Struct.new(
      nil,
      :topic_arn,
      :topic_name,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute target_cluster_arn
    #   <p>The cluster Amazon Resource Name (ARN) for the VPC connection.</p>
    #   @return [String]
    # @!attribute authentication
    #   <p>The authentication type of VPC connection.</p>
    #   @return [String]
    # @!attribute vpc_id
    #   <p>The VPC ID of VPC connection.</p>
    #   @return [String]
    # @!attribute client_subnets
    #   <p>The list of client subnets.</p>
    #   @return [Array<String>]
    # @!attribute security_groups
    #   <p>The list of security groups.</p>
    #   @return [Array<String>]
    # @!attribute tags
    #   <p>A map of tags for the VPC connection.</p>
    #   @return [Hash<String, String>]
    class CreateVpcConnectionRequest < Struct.new(
      nil,
      :target_cluster_arn,
      :authentication,
      :vpc_id,
      :client_subnets,
      :security_groups,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute vpc_connection_arn
    #   <p>The VPC connection ARN.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The State of Vpc Connection.</p>
    #   @return [String]
    # @!attribute authentication
    #   <p>The authentication type of VPC connection.</p>
    #   @return [String]
    # @!attribute vpc_id
    #   <p>The VPC ID of the VPC connection.</p>
    #   @return [String]
    # @!attribute client_subnets
    #   <p>The list of client subnets.</p>
    #   @return [Array<String>]
    # @!attribute security_groups
    #   <p>The list of security groups.</p>
    #   @return [Array<String>]
    # @!attribute creation_time
    #   <p>The creation time of VPC connection.</p>
    #   @return [Time]
    # @!attribute tags
    #   <p>A map of tags for the VPC connection.</p>
    #   @return [Hash<String, String>]
    class CreateVpcConnectionResponse < Struct.new(
      nil,
      :vpc_connection_arn,
      :state,
      :authentication,
      :vpc_id,
      :client_subnets,
      :security_groups,
      :creation_time,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration of the Amazon S3 bucket where records that fail to deliver are stored.</p>
    # @!attribute bucket_arn
    #   <p>The Amazon Resource Name (ARN) of the dead-letter Amazon S3 bucket.</p>
    #   @return [String]
    # @!attribute error_output_prefix
    #   <p>An optional prefix prepended to every dead-letter Amazon S3 object key.</p>
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>Optional 12-digit AWS account ID expected to own the dead-letter Amazon S3 bucket.</p>
    #   @return [String]
    class DeadLetterQueueS3 < Struct.new(
      nil,
      :bucket_arn,
      :error_output_prefix,
      :expected_bucket_owner,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute channel_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the channel.</p>
    #   @return [String]
    # @!attribute cluster_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the cluster.</p>
    #   @return [String]
    class DeleteChannelRequest < Struct.new(
      nil,
      :channel_arn,
      :cluster_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Returns the channel ARN and the cluster-operation ARN that tracks the asynchronous delete.</p>
    # @!attribute channel_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the channel.</p>
    #   @return [String]
    # @!attribute cluster_operation_arn
    #   <p>The Amazon Resource Name (ARN) of the cluster operation.</p>
    #   @return [String]
    class DeleteChannelResponse < Struct.new(
      nil,
      :channel_arn,
      :cluster_operation_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_arn
    #   <p>The Amazon Resource Name (ARN) of the cluster.</p>
    #   @return [String]
    class DeleteClusterPolicyRequest < Struct.new(
      nil,
      :cluster_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteClusterPolicyResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the cluster.</p>
    #   @return [String]
    # @!attribute current_version
    #   <p>The current version of the MSK cluster.</p>
    #   @return [String]
    class DeleteClusterRequest < Struct.new(
      nil,
      :cluster_arn,
      :current_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_arn
    #   <p>The Amazon Resource Name (ARN) of the cluster.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The state of the cluster. The possible states are ACTIVE, CREATING, DELETING, FAILED, HEALING, MAINTENANCE, REBOOTING_BROKER, and UPDATING.</p>
    #   @return [String]
    class DeleteClusterResponse < Struct.new(
      nil,
      :cluster_arn,
      :state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies an MSK configuration.</p>
    #   @return [String]
    class DeleteConfigurationRequest < Struct.new(
      nil,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies an MSK configuration.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The state of the configuration. The possible states are ACTIVE, DELETING, and DELETE_FAILED. </p>
    #   @return [String]
    class DeleteConfigurationResponse < Struct.new(
      nil,
      :arn,
      :state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute current_version
    #   <p>The current version of the replicator.</p>
    #   @return [String]
    # @!attribute replicator_arn
    #   <p>The Amazon Resource Name (ARN) of the replicator to be deleted.</p>
    #   @return [String]
    class DeleteReplicatorRequest < Struct.new(
      nil,
      :current_version,
      :replicator_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute replicator_arn
    #   <p>The Amazon Resource Name (ARN) of the replicator.</p>
    #   @return [String]
    # @!attribute replicator_state
    #   <p>The state of the replicator.</p>
    #   @return [String]
    class DeleteReplicatorResponse < Struct.new(
      nil,
      :replicator_arn,
      :replicator_state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the cluster.</p>
    #   @return [String]
    # @!attribute topic_name
    #   <p>The name of the topic to delete.</p>
    #   @return [String]
    class DeleteTopicRequest < Struct.new(
      nil,
      :cluster_arn,
      :topic_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute topic_arn
    #   <p>The Amazon Resource Name (ARN) of the topic.</p>
    #   @return [String]
    # @!attribute topic_name
    #   <p>The name of the topic that was deleted.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the topic deletion.</p>
    #   @return [String]
    class DeleteTopicResponse < Struct.new(
      nil,
      :topic_arn,
      :topic_name,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies an MSK VPC connection.</p>
    #   @return [String]
    class DeleteVpcConnectionRequest < Struct.new(
      nil,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute vpc_connection_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies an MSK VPC connection.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The state of the VPC connection.</p>
    #   @return [String]
    class DeleteVpcConnectionResponse < Struct.new(
      nil,
      :vpc_connection_arn,
      :state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute channel_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the channel.</p>
    #   @return [String]
    # @!attribute cluster_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the cluster.</p>
    #   @return [String]
    class DescribeChannelRequest < Struct.new(
      nil,
      :channel_arn,
      :cluster_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the current configuration and state of a channel.</p>
    # @!attribute channel_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the channel.</p>
    #   @return [String]
    # @!attribute channel_name
    #   <p>The name of the channel.</p>
    #   @return [String]
    # @!attribute encryption_configuration
    #   <p>The encryption configuration applied to the channel.</p>
    #   @return [Types::EncryptionConfiguration]
    # @!attribute iceberg_destination_configuration
    #   <p>The Apache Iceberg destination for the channel, if configured.</p>
    #   @return [Types::IcebergDestinationConfiguration]
    # @!attribute s3_destination_configuration
    #   <p>The Amazon S3 destination for the channel, if configured.</p>
    #   @return [Types::S3DestinationConfiguration]
    # @!attribute status
    #   <p>The current lifecycle state of the channel.</p>
    #   @return [String]
    # @!attribute destination_type
    #   <p>The type of destination configured for the channel.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The time when the channel was created.</p>
    #   @return [Time]
    # @!attribute topic_configuration_list
    #   <p>The list of topic configurations for the channel.</p>
    #   @return [Array<Types::TopicConfiguration>]
    # @!attribute logging_info
    #   <p>The destinations to which the channel publishes operational logs.</p>
    #   @return [Types::ChannelLoggingInfo]
    # @!attribute state_info
    #   <p>Additional context for the current channel state, populated when the channel is in FAILED.</p>
    #   @return [Types::ChannelStateInfo]
    # @!attribute cluster_operation_arn
    #   <p>The Amazon Resource Name (ARN) of the in-flight cluster operation. Returned only while the channel is in CREATING, UPDATING, or DELETING.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags attached to the channel.</p>
    #   @return [Hash<String, String>]
    class DescribeChannelResponse < Struct.new(
      nil,
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
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_operation_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the MSK cluster operation.</p>
    #   @return [String]
    class DescribeClusterOperationRequest < Struct.new(
      nil,
      :cluster_operation_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_operation_info
    #   <p>Cluster operation information</p>
    #   @return [Types::ClusterOperationInfo]
    class DescribeClusterOperationResponse < Struct.new(
      nil,
      :cluster_operation_info,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_operation_arn
    #   ARN of the cluster operation to describe.
    #   @return [String]
    class DescribeClusterOperationV2Request < Struct.new(
      nil,
      :cluster_operation_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_operation_info
    #   <p>Cluster operation information</p>
    #   @return [Types::ClusterOperationV2]
    class DescribeClusterOperationV2Response < Struct.new(
      nil,
      :cluster_operation_info,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the cluster.</p>
    #   @return [String]
    class DescribeClusterRequest < Struct.new(
      nil,
      :cluster_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_info
    #   <p>The cluster information.</p>
    #   @return [Types::ClusterInfo]
    class DescribeClusterResponse < Struct.new(
      nil,
      :cluster_info,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the cluster.</p>
    #   @return [String]
    class DescribeClusterV2Request < Struct.new(
      nil,
      :cluster_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_info
    #   <p>The cluster information.</p>
    #   @return [Types::Cluster]
    class DescribeClusterV2Response < Struct.new(
      nil,
      :cluster_info,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies an MSK configuration and all of its revisions.</p>
    #   @return [String]
    class DescribeConfigurationRequest < Struct.new(
      nil,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the configuration.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The time when the configuration was created.</p>
    #   @return [Time]
    # @!attribute description
    #   <p>The description of the configuration.</p>
    #   @return [String]
    # @!attribute kafka_versions
    #   <p>The versions of Apache Kafka with which you can use this MSK configuration.</p>
    #   @return [Array<String>]
    # @!attribute latest_revision
    #   <p>Latest revision of the configuration.</p>
    #   @return [Types::ConfigurationRevision]
    # @!attribute name
    #   <p>The name of the configuration.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The state of the configuration. The possible states are ACTIVE, DELETING, and DELETE_FAILED. </p>
    #   @return [String]
    class DescribeConfigurationResponse < Struct.new(
      nil,
      :arn,
      :creation_time,
      :description,
      :kafka_versions,
      :latest_revision,
      :name,
      :state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies an MSK configuration and all of its revisions.</p>
    #   @return [String]
    # @!attribute revision
    #   <p>A string that uniquely identifies a revision of an MSK configuration.</p>
    #   @return [Integer]
    class DescribeConfigurationRevisionRequest < Struct.new(
      nil,
      :arn,
      :revision,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the configuration.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The time when the configuration was created.</p>
    #   @return [Time]
    # @!attribute description
    #   <p>The description of the configuration.</p>
    #   @return [String]
    # @!attribute revision
    #   <p>The revision number.</p>
    #   @return [Integer]
    # @!attribute server_properties
    #   <p>Contents of the <filename>server.properties</filename> file. When using the API, you must ensure that the contents of the file are base64 encoded.
    #                  When using the AWS Management Console, the SDK, or the AWS CLI, the contents of <filename>server.properties</filename> can be in plaintext.</p>
    #   @return [String]
    class DescribeConfigurationRevisionResponse < Struct.new(
      nil,
      :arn,
      :creation_time,
      :description,
      :revision,
      :server_properties,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute replicator_arn
    #   <p>The Amazon Resource Name (ARN) of the replicator to be described.</p>
    #   @return [String]
    class DescribeReplicatorRequest < Struct.new(
      nil,
      :replicator_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute creation_time
    #   <p>The time when the replicator was created.</p>
    #   @return [Time]
    # @!attribute current_version
    #   <p>The current version number of the replicator.</p>
    #   @return [String]
    # @!attribute is_replicator_reference
    #   <p>Whether this resource is a replicator reference.</p>
    #   @return [Boolean]
    # @!attribute kafka_clusters
    #   <p>Kafka Clusters used in setting up sources / targets for replication.</p>
    #   @return [Array<Types::KafkaClusterDescription>]
    # @!attribute replication_info_list
    #   <p>A list of replication configurations, where each configuration targets a given source cluster to target cluster replication flow.</p>
    #   @return [Array<Types::ReplicationInfoDescription>]
    # @!attribute replicator_arn
    #   <p>The Amazon Resource Name (ARN) of the replicator.</p>
    #   @return [String]
    # @!attribute replicator_description
    #   <p>The description of the replicator.</p>
    #   @return [String]
    # @!attribute replicator_name
    #   <p>The name of the replicator.</p>
    #   @return [String]
    # @!attribute replicator_resource_arn
    #   <p>The Amazon Resource Name (ARN) of the replicator resource in the region where the replicator was created.</p>
    #   @return [String]
    # @!attribute replicator_state
    #   <p>State of the replicator.</p>
    #   @return [String]
    # @!attribute service_execution_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role used by the replicator to access resources in the customer's account (e.g source and target clusters)</p>
    #   @return [String]
    # @!attribute state_info
    #   <p>Details about the state of the replicator.</p>
    #   @return [Types::ReplicationStateInfo]
    # @!attribute tags
    #   <p>List of tags attached to the Replicator.</p>
    #   @return [Hash<String, String>]
    # @!attribute log_delivery
    #   <p>Configuration for log delivery.</p>
    #   @return [Types::LogDelivery]
    class DescribeReplicatorResponse < Struct.new(
      nil,
      :creation_time,
      :current_version,
      :is_replicator_reference,
      :kafka_clusters,
      :replication_info_list,
      :replicator_arn,
      :replicator_description,
      :replicator_name,
      :replicator_resource_arn,
      :replicator_state,
      :service_execution_role_arn,
      :state_info,
      :tags,
      :log_delivery,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the cluster.</p>
    #   @return [String]
    # @!attribute topic_name
    #   <p>The Kafka topic name that uniquely identifies the topic.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in the response. If there are more results, the response includes a NextToken parameter.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The paginated results marker. When the result of the operation is truncated, the call returns NextToken in the response.
    #               To get the next batch, provide this token in your next request.</p>
    #   @return [String]
    class DescribeTopicPartitionsRequest < Struct.new(
      nil,
      :cluster_arn,
      :topic_name,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute partitions
    #   <p>The list of partition information for the topic.</p>
    #   @return [Array<Types::TopicPartitionInfo>]
    # @!attribute next_token
    #   <p>The paginated results marker. When the result of a DescribeTopicPartitions operation is truncated, the call returns NextToken in the response.
    #                  To get another batch of configurations, provide this token in your next request.</p>
    #   @return [String]
    class DescribeTopicPartitionsResponse < Struct.new(
      nil,
      :partitions,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the cluster.</p>
    #   @return [String]
    # @!attribute topic_name
    #   <p>The Kafka topic name that uniquely identifies the topic.</p>
    #   @return [String]
    class DescribeTopicRequest < Struct.new(
      nil,
      :cluster_arn,
      :topic_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute topic_arn
    #   <p>The Amazon Resource Name (ARN) of the topic.</p>
    #   @return [String]
    # @!attribute topic_name
    #   <p>The Kafka topic name of the topic.</p>
    #   @return [String]
    # @!attribute replication_factor
    #   <p>The replication factor of the topic.</p>
    #   @return [Integer]
    # @!attribute partition_count
    #   <p>The partition count of the topic.</p>
    #   @return [Integer]
    # @!attribute configs
    #   <p>Topic configurations encoded as a Base64 string.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the topic.</p>
    #   @return [String]
    class DescribeTopicResponse < Struct.new(
      nil,
      :topic_arn,
      :topic_name,
      :replication_factor,
      :partition_count,
      :configs,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies a MSK VPC connection.</p>
    #   @return [String]
    class DescribeVpcConnectionRequest < Struct.new(
      nil,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute vpc_connection_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies a MSK VPC connection.</p>
    #   @return [String]
    # @!attribute target_cluster_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies an MSK cluster.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The state of VPC connection.</p>
    #   @return [String]
    # @!attribute authentication
    #   <p>The authentication type of VPC connection.</p>
    #   @return [String]
    # @!attribute vpc_id
    #   <p>The VPC Id for the VPC connection.</p>
    #   @return [String]
    # @!attribute subnets
    #   <p>The list of subnets for the VPC connection.</p>
    #   @return [Array<String>]
    # @!attribute security_groups
    #   <p>The list of security groups for the VPC connection.</p>
    #   @return [Array<String>]
    # @!attribute creation_time
    #   <p>The creation time of the VPC connection.</p>
    #   @return [Time]
    # @!attribute tags
    #   <p>A map of tags for the VPC connection.</p>
    #   @return [Hash<String, String>]
    class DescribeVpcConnectionResponse < Struct.new(
      nil,
      :vpc_connection_arn,
      :target_cluster_arn,
      :state,
      :authentication,
      :vpc_id,
      :subnets,
      :security_groups,
      :creation_time,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration of an Apache Iceberg destination table.</p>
    # @!attribute destination_database_name
    #   <p>The name of the destination namespace (database) in the AWS Glue Data Catalog.</p>
    #   @return [String]
    # @!attribute destination_table_name
    #   <p>The name of the destination Apache Iceberg table.</p>
    #   @return [String]
    # @!attribute partition_spec
    #   <p>The partition specification for the destination table.</p>
    #   @return [Types::PartitionSpec]
    class DestinationTable < Struct.new(
      nil,
      :destination_database_name,
      :destination_table_name,
      :partition_spec,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the EBS storage volumes attached to Apache Kafka broker nodes.</p>
    # @!attribute provisioned_throughput
    #   <p>EBS volume provisioned throughput information.</p>
    #   @return [Types::ProvisionedThroughput]
    # @!attribute volume_size
    #   <p>The size in GiB of the EBS volume for the data drive on each broker node.</p>
    #   @return [Integer]
    class EBSStorageInfo < Struct.new(
      nil,
      :provisioned_throughput,
      :volume_size,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The data-volume encryption details.</p>
    # @!attribute data_volume_kms_key_id
    #   <p>The ARN of the AWS KMS key for encrypting data at rest. If you don't specify a KMS key, MSK creates one for you and uses it.</p>
    #   @return [String]
    class EncryptionAtRest < Struct.new(
      nil,
      :data_volume_kms_key_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The AWS KMS encryption configuration applied to data at rest.</p>
    # @!attribute kms_key_arn
    #   <p>The Amazon Resource Name (ARN) of the AWS KMS key used to encrypt the data.</p>
    #   @return [String]
    class EncryptionConfiguration < Struct.new(
      nil,
      :kms_key_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The settings for encrypting data in transit.</p>
    # @!attribute client_broker
    #   <p>Indicates the encryption setting for data in transit between clients and brokers. The following are the possible values.</p>
    #               <p>
    #                  TLS means that client-broker communication is enabled with TLS only.</p>
    #               <p>
    #                  TLS_PLAINTEXT means that client-broker communication is enabled for both TLS-encrypted, as well as plaintext data.</p>
    #               <p>
    #                  PLAINTEXT means that client-broker communication is enabled in plaintext only.</p>
    #               <p>The default value is TLS_PLAINTEXT.</p>
    #   @return [String]
    # @!attribute in_cluster
    #   <p>When set to true, it indicates that data communication among the broker nodes of the cluster is encrypted. When set to false, the communication happens in plaintext.</p>
    #               <p>The default value is true.</p>
    #   @return [Boolean]
    class EncryptionInTransit < Struct.new(
      nil,
      :client_broker,
      :in_cluster,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Includes encryption-related information, such as the AWS KMS key used for encrypting data at rest and whether you want MSK to encrypt your data in transit.</p>
    # @!attribute encryption_at_rest
    #   <p>The data-volume encryption details.</p>
    #   @return [Types::EncryptionAtRest]
    # @!attribute encryption_in_transit
    #   <p>The details for encryption in transit.</p>
    #   @return [Types::EncryptionInTransit]
    class EncryptionInfo < Struct.new(
      nil,
      :encryption_at_rest,
      :encryption_in_transit,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Returns information about an error state of the cluster.</p>
    # @!attribute error_code
    #   <p>A number describing the error programmatically.</p>
    #   @return [String]
    # @!attribute error_string
    #   <p>An optional field to provide more details about the error.</p>
    #   @return [String]
    class ErrorInfo < Struct.new(
      nil,
      :error_code,
      :error_string,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute delivery_stream
    #   @return [String]
    # @!attribute enabled
    #   @return [Boolean]
    class Firehose < Struct.new(
      nil,
      :delivery_stream,
      :enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Returns information about an error.</p>
    # @!attribute invalid_parameter
    #   <p>The parameter that caused the error.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The description of the error.</p>
    #   @return [String]
    class ForbiddenException < Struct.new(
      nil,
      :invalid_parameter,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the cluster.</p>
    #   @return [String]
    class GetBootstrapBrokersRequest < Struct.new(
      nil,
      :cluster_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bootstrap_broker_string
    #   <p>A string containing one or more hostname:port pairs.</p>
    #   @return [String]
    # @!attribute bootstrap_broker_string_tls
    #   <p>A string containing one or more DNS names (or IP) and TLS port pairs.</p>
    #   @return [String]
    # @!attribute bootstrap_broker_string_sasl_scram
    #   <p>A string containing one or more DNS names (or IP) and Sasl Scram port pairs.</p>
    #   @return [String]
    # @!attribute bootstrap_broker_string_sasl_iam
    #   <p>A string that contains one or more DNS names (or IP addresses) and SASL IAM port pairs.</p>
    #   @return [String]
    # @!attribute bootstrap_broker_string_public_tls
    #   <p>A string containing one or more DNS names (or IP) and TLS port pairs.</p>
    #   @return [String]
    # @!attribute bootstrap_broker_string_public_sasl_scram
    #   <p>A string containing one or more DNS names (or IP) and Sasl Scram port pairs.</p>
    #   @return [String]
    # @!attribute bootstrap_broker_string_public_sasl_iam
    #   <p>A string that contains one or more DNS names (or IP addresses) and SASL IAM port pairs.</p>
    #   @return [String]
    # @!attribute bootstrap_broker_string_vpc_connectivity_tls
    #   <p>A string containing one or more DNS names (or IP) and TLS port pairs for VPC connectivity.</p>
    #   @return [String]
    # @!attribute bootstrap_broker_string_vpc_connectivity_sasl_scram
    #   <p>A string containing one or more DNS names (or IP) and SASL/SCRAM port pairs for VPC connectivity.</p>
    #   @return [String]
    # @!attribute bootstrap_broker_string_vpc_connectivity_sasl_iam
    #   <p>A string containing one or more DNS names (or IP) and SASL/IAM port pairs for VPC connectivity.</p>
    #   @return [String]
    # @!attribute bootstrap_broker_string_ipv6
    #   <p>A string that contains one or more DNS names (or IP) and port pairs for IPv6 connectivity.</p>
    #   @return [String]
    # @!attribute bootstrap_broker_string_tls_ipv6
    #   <p>A string that contains one or more DNS names (or IP) and TLS port pairs for IPv6 connectivity.</p>
    #   @return [String]
    # @!attribute bootstrap_broker_string_sasl_scram_ipv6
    #   <p>A string that contains one or more DNS names (or IP) and SASL SCRAM port pairs for IPv6 connectivity.</p>
    #   @return [String]
    # @!attribute bootstrap_broker_string_sasl_iam_ipv6
    #   <p>A string that contains one or more DNS names (or IP) and SASL IAM port pairs for IPv6 connectivity.</p>
    #   @return [String]
    class GetBootstrapBrokersResponse < Struct.new(
      nil,
      :bootstrap_broker_string,
      :bootstrap_broker_string_tls,
      :bootstrap_broker_string_sasl_scram,
      :bootstrap_broker_string_sasl_iam,
      :bootstrap_broker_string_public_tls,
      :bootstrap_broker_string_public_sasl_scram,
      :bootstrap_broker_string_public_sasl_iam,
      :bootstrap_broker_string_vpc_connectivity_tls,
      :bootstrap_broker_string_vpc_connectivity_sasl_scram,
      :bootstrap_broker_string_vpc_connectivity_sasl_iam,
      :bootstrap_broker_string_ipv6,
      :bootstrap_broker_string_tls_ipv6,
      :bootstrap_broker_string_sasl_scram_ipv6,
      :bootstrap_broker_string_sasl_iam_ipv6,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_arn
    #   <p>The Amazon Resource Name (ARN) of the cluster.</p>
    #   @return [String]
    class GetClusterPolicyRequest < Struct.new(
      nil,
      :cluster_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute current_version
    #   <p>The version of cluster policy.</p>
    #   @return [String]
    # @!attribute policy
    #   <p>The cluster policy.</p>
    #   @return [String]
    class GetClusterPolicyResponse < Struct.new(
      nil,
      :current_version,
      :policy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_arn
    #   <p>The Amazon Resource Name (ARN) of the cluster check.</p>
    #   @return [String]
    class GetCompatibleKafkaVersionsRequest < Struct.new(
      nil,
      :cluster_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute compatible_kafka_versions
    #   <p>A list of CompatibleKafkaVersion objects.</p>
    #   @return [Array<Types::CompatibleKafkaVersion>]
    class GetCompatibleKafkaVersionsResponse < Struct.new(
      nil,
      :compatible_kafka_versions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Returns information about an error.</p>
    # @!attribute invalid_parameter
    #   <p>The parameter that caused the error.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The description of the error.</p>
    #   @return [String]
    class GroupSubscribedToTopicException < Struct.new(
      nil,
      :invalid_parameter,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details for IAM access control.</p>
    # @!attribute enabled
    #   <p>Indicates whether IAM access control is enabled.</p>
    #   @return [Boolean]
    class Iam < Struct.new(
      nil,
      :enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration of an Apache Iceberg destination for a channel.</p>
    # @!attribute append_only
    #   <p>Whether the destination is append-only. Must be true; updates and deletes are not supported.</p>
    #   @return [Boolean]
    # @!attribute catalog
    #   <p>The AWS Glue Data Catalog and S3 Tables warehouse used by the destination.</p>
    #   @return [Types::Catalog]
    # @!attribute data_freshness_in_seconds
    #   <p>The maximum time, in seconds, that records buffer in MSK before being flushed to the destination. Allowed range: 300 to 900. Default: 600.</p>
    #   @return [Integer]
    # @!attribute dead_letter_queue_s3
    #   <p>The Amazon S3 bucket and prefix where MSK writes records that fail to deliver.</p>
    #   @return [Types::DeadLetterQueueS3]
    # @!attribute destination_table_list
    #   <p>The destination Iceberg tables. Currently exactly one table must be specified.</p>
    #   @return [Array<Types::DestinationTable>]
    # @!attribute schema_evolution
    #   <p>Configuration controlling whether the destination table's schema is evolved to match incoming records.</p>
    #   @return [Types::SchemaEvolution]
    # @!attribute service_execution_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that MSK assumes to access the destination table, the AWS Glue Data Catalog, and the dead-letter Amazon S3 bucket.</p>
    #   @return [String]
    # @!attribute table_creation
    #   <p>Configuration controlling whether MSK creates the destination table if it does not already exist.</p>
    #   @return [Types::TableCreation]
    # @!attribute compression_type
    #   <p>The compression codec for Iceberg table data files. Defaults to ZSTD.</p>
    #   @return [String]
    class IcebergDestinationConfiguration < Struct.new(
      nil,
      :append_only,
      :catalog,
      :data_freshness_in_seconds,
      :dead_letter_queue_s3,
      :destination_table_list,
      :schema_evolution,
      :service_execution_role_arn,
      :table_creation,
      :compression_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Update payload for an Apache Iceberg destination.</p>
    # @!attribute data_freshness_in_seconds
    #   <p>The maximum time, in seconds, that records buffer in MSK before being flushed to the destination. Allowed range: 300 to 900.</p>
    #   @return [Integer]
    class IcebergDestinationUpdate < Struct.new(
      nil,
      :data_freshness_in_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Returns information about an error.</p>
    # @!attribute invalid_parameter
    #   <p>The parameter that caused the error.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The description of the error.</p>
    #   @return [String]
    class InternalServerErrorException < Struct.new(
      nil,
      :invalid_parameter,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Indicates whether you want to turn on or turn off the JMX Exporter.</p>
    # @!attribute enabled_in_broker
    #   <p>Indicates whether you want to turn on or turn off the JMX Exporter.</p>
    #   @return [Boolean]
    class JmxExporter < Struct.new(
      nil,
      :enabled_in_broker,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Indicates whether you want to turn on or turn off the JMX Exporter.</p>
    # @!attribute enabled_in_broker
    #   <p>Indicates whether you want to turn on or turn off the JMX Exporter.</p>
    #   @return [Boolean]
    class JmxExporterInfo < Struct.new(
      nil,
      :enabled_in_broker,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about Kafka Cluster to be used as source / target for replication.</p>
    # @!attribute amazon_msk_cluster
    #   <p>Details of an Amazon MSK Cluster.</p>
    #   @return [Types::AmazonMskCluster]
    # @!attribute apache_kafka_cluster
    #   <p>Details of an Apache Kafka Cluster.</p>
    #   @return [Types::ApacheKafkaCluster]
    # @!attribute vpc_config
    #   <p>Details of an Amazon VPC which has network connectivity to the Apache Kafka cluster.</p>
    #   @return [Types::KafkaClusterClientVpcConfig]
    # @!attribute client_authentication
    #   <p>Details of the client authentication used by the Apache Kafka cluster.</p>
    #   @return [Types::KafkaClusterClientAuthentication]
    # @!attribute encryption_in_transit
    #   <p>Details of encryption in transit to the Apache Kafka cluster.</p>
    #   @return [Types::KafkaClusterEncryptionInTransit]
    class KafkaCluster < Struct.new(
      nil,
      :amazon_msk_cluster,
      :apache_kafka_cluster,
      :vpc_config,
      :client_authentication,
      :encryption_in_transit,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details of the client authentication used by the Apache Kafka cluster.</p>
    # @!attribute sasl_scram
    #   <p>Details for SASL/SCRAM client authentication.</p>
    #   @return [Types::KafkaClusterSaslScramAuthentication]
    # @!attribute mtls
    #   <p>Details for mTLS client authentication.</p>
    #   @return [Types::KafkaClusterMTLSAuthentication]
    # @!attribute sasl_o_auth_bearer
    #   <p>Details for SASL/OAUTHBEARER client authentication.</p>
    #   @return [Types::KafkaClusterSaslOAuthBearerAuthentication]
    class KafkaClusterClientAuthentication < Struct.new(
      nil,
      :sasl_scram,
      :mtls,
      :sasl_o_auth_bearer,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details of an Amazon VPC which has network connectivity to the Apache Kafka cluster.</p>
    # @!attribute security_group_ids
    #   <p>The security groups to attach to the ENIs for the broker nodes.</p>
    #   @return [Array<String>]
    # @!attribute subnet_ids
    #   <p>The list of subnets in the client VPC to connect to.</p>
    #   @return [Array<String>]
    class KafkaClusterClientVpcConfig < Struct.new(
      nil,
      :security_group_ids,
      :subnet_ids,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about Kafka Cluster used as source / target for replication.</p>
    # @!attribute amazon_msk_cluster
    #   <p>Details of an Amazon MSK Cluster.</p>
    #   @return [Types::AmazonMskCluster]
    # @!attribute apache_kafka_cluster
    #   <p>Details of an Apache Kafka Cluster.</p>
    #   @return [Types::ApacheKafkaCluster]
    # @!attribute kafka_cluster_alias
    #   <p>The alias of the Kafka cluster. Used to prefix names of replicated topics.</p>
    #   @return [String]
    # @!attribute vpc_config
    #   <p>Details of an Amazon VPC which has network connectivity to the Apache Kafka cluster.</p>
    #   @return [Types::KafkaClusterClientVpcConfig]
    # @!attribute client_authentication
    #   <p>Details of the client authentication used by the Apache Kafka cluster.</p>
    #   @return [Types::KafkaClusterClientAuthentication]
    # @!attribute encryption_in_transit
    #   <p>Details of encryption in transit to the Apache Kafka cluster.</p>
    #   @return [Types::KafkaClusterEncryptionInTransit]
    class KafkaClusterDescription < Struct.new(
      nil,
      :amazon_msk_cluster,
      :apache_kafka_cluster,
      :kafka_cluster_alias,
      :vpc_config,
      :client_authentication,
      :encryption_in_transit,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details of encryption in transit to the Apache Kafka cluster.</p>
    # @!attribute encryption_type
    #   <p>The type of encryption in transit to the Apache Kafka cluster.</p>
    #   @return [String]
    # @!attribute root_ca_certificate
    #   <p>The root CA certificate.</p>
    #   @return [String]
    class KafkaClusterEncryptionInTransit < Struct.new(
      nil,
      :encryption_type,
      :root_ca_certificate,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details for mTLS client authentication.</p>
    # @!attribute secret_arn
    #   <p>The Amazon Resource Name (ARN) of the Secrets Manager secret.</p>
    #   @return [String]
    class KafkaClusterMTLSAuthentication < Struct.new(
      nil,
      :secret_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details for SASL/OAUTHBEARER using standard client_credentials grant.</p>
    # @!attribute token_request_secret_arn
    #   <p>The Amazon Resource Name (ARN) of the Secrets Manager secret containing the OAuth client credentials.</p>
    #   @return [String]
    class KafkaClusterOAuthClientCredentials < Struct.new(
      nil,
      :token_request_secret_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details for SASL/OAUTHBEARER using client credentials grant with JWT client assertion.</p>
    # @!attribute audience
    #   <p>The audience for the JWT client assertion.</p>
    #   @return [String]
    # @!attribute signing_algorithm
    #   <p>The signing algorithm for the JWT client assertion.</p>
    #   @return [String]
    # @!attribute token_request_secret_arn
    #   <p>The Amazon Resource Name (ARN) of the Secrets Manager secret containing the signing key.</p>
    #   @return [String]
    class KafkaClusterOAuthClientCredentialsAssertion < Struct.new(
      nil,
      :audience,
      :signing_algorithm,
      :token_request_secret_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details for SASL/OAUTHBEARER using JWT Bearer assertion grant.</p>
    # @!attribute audience
    #   <p>The audience for the JWT Bearer assertion.</p>
    #   @return [String]
    # @!attribute signing_algorithm
    #   <p>The signing algorithm for the JWT Bearer assertion.</p>
    #   @return [String]
    # @!attribute token_request_secret_arn
    #   <p>The Amazon Resource Name (ARN) of the Secrets Manager secret containing the signing key.</p>
    #   @return [String]
    class KafkaClusterOAuthIamJwtBearer < Struct.new(
      nil,
      :audience,
      :signing_algorithm,
      :token_request_secret_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details for SASL/OAUTHBEARER client authentication.</p>
    # @!attribute token_endpoint_url
    #   <p>The HTTPS URL of the OAuth token endpoint that vends OAuth Bearer tokens per RFC 6749.</p>
    #   @return [String]
    # @!attribute client_credentials
    #   <p>Details for SASL/OAUTHBEARER using standard client_credentials grant.</p>
    #   @return [Types::KafkaClusterOAuthClientCredentials]
    # @!attribute iam_jwt_bearer
    #   <p>Details for SASL/OAUTHBEARER using JWT Bearer assertion grant (RFC 7523).</p>
    #   @return [Types::KafkaClusterOAuthIamJwtBearer]
    # @!attribute client_credentials_assertion
    #   <p>Details for SASL/OAUTHBEARER using client credentials grant with JWT client assertion.</p>
    #   @return [Types::KafkaClusterOAuthClientCredentialsAssertion]
    # @!attribute token_endpoint_authentication_method
    #   <p>How client credentials are sent to the identity provider. Valid values are POST, BASIC, or NONE.</p>
    #   @return [String]
    # @!attribute scope
    #   <p>OAuth scope to request.</p>
    #   @return [String]
    # @!attribute token_endpoint_tls_certificate_arn
    #   <p>Secrets Manager ARN containing a custom CA certificate for the identity provider.</p>
    #   @return [String]
    class KafkaClusterSaslOAuthBearerAuthentication < Struct.new(
      nil,
      :token_endpoint_url,
      :client_credentials,
      :iam_jwt_bearer,
      :client_credentials_assertion,
      :token_endpoint_authentication_method,
      :scope,
      :token_endpoint_tls_certificate_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details for SASL/SCRAM client authentication.</p>
    # @!attribute mechanism
    #   <p>The SASL/SCRAM authentication mechanism.</p>
    #   @return [String]
    # @!attribute secret_arn
    #   <p>The Amazon Resource Name (ARN) of the Secrets Manager secret.</p>
    #   @return [String]
    class KafkaClusterSaslScramAuthentication < Struct.new(
      nil,
      :mechanism,
      :secret_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summarized information about Kafka Cluster used as source / target for replication.</p>
    # @!attribute amazon_msk_cluster
    #   <p>Details of an Amazon MSK Cluster.</p>
    #   @return [Types::AmazonMskCluster]
    # @!attribute apache_kafka_cluster
    #   <p>Details of an Apache Kafka Cluster.</p>
    #   @return [Types::ApacheKafkaCluster]
    # @!attribute kafka_cluster_alias
    #   <p>The alias of the Kafka cluster. Used to prefix names of replicated topics.</p>
    #   @return [String]
    class KafkaClusterSummary < Struct.new(
      nil,
      :amazon_msk_cluster,
      :apache_kafka_cluster,
      :kafka_cluster_alias,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Returns information about an error.</p>
    # @!attribute invalid_parameter
    #   <p>The parameter that caused the error.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The description of the error.</p>
    #   @return [String]
    class KafkaRequestException < Struct.new(
      nil,
      :invalid_parameter,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Returns information about an error.</p>
    # @!attribute invalid_parameter
    #   <p>The parameter that caused the error.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The description of the error.</p>
    #   @return [String]
    class KafkaTimeoutException < Struct.new(
      nil,
      :invalid_parameter,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute version
    #   @return [String]
    # @!attribute status
    #   @return [String]
    class KafkaVersion < Struct.new(
      nil,
      :version,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the cluster.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Maximum number of channels to return in a single response.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If the response of ListChannels is truncated, it returns a nextToken in the response. This nextToken should be sent in the subsequent request to ListChannels.</p>
    #   @return [String]
    # @!attribute topic_name_filter
    #   <p>Filters results to channels whose topic name matches the specified value.</p>
    #   @return [String]
    class ListChannelsRequest < Struct.new(
      nil,
      :cluster_arn,
      :max_results,
      :next_token,
      :topic_name_filter,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Returns the list of channels in the cluster.</p>
    # @!attribute channels
    #   <p>The list of channels in the cluster.</p>
    #   @return [Array<Types::ChannelInfo>]
    # @!attribute next_token
    #   <p>If the response from ListChannels is truncated, this token is included. Send it as the nextToken parameter on a subsequent ListChannels call to retrieve the next page.</p>
    #   @return [String]
    class ListChannelsResponse < Struct.new(
      nil,
      :channels,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_arn
    #   <p>The Amazon Resource Name (ARN) of the cluster.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in the response. If there are more results, the response includes a NextToken parameter.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The paginated results marker. When the result of the operation is truncated, the call returns NextToken in the response.
    #               To get the next batch, provide this token in your next request.</p>
    #   @return [String]
    class ListClientVpcConnectionsRequest < Struct.new(
      nil,
      :cluster_arn,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_vpc_connections
    #   <p>List of client VPC connections.</p>
    #   @return [Array<Types::ClientVpcConnection>]
    # @!attribute next_token
    #   <p>The paginated results marker. When the result of a ListClientVpcConnections operation is truncated, the call returns NextToken in the response.
    #                  To get another batch of configurations, provide this token in your next request.</p>
    #   @return [String]
    class ListClientVpcConnectionsResponse < Struct.new(
      nil,
      :client_vpc_connections,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the cluster.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in the response. If there are more results, the response includes a NextToken parameter.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The paginated results marker. When the result of the operation is truncated, the call returns NextToken in the response.
    #               To get the next batch, provide this token in your next request.</p>
    #   @return [String]
    class ListClusterOperationsRequest < Struct.new(
      nil,
      :cluster_arn,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_operation_info_list
    #   <p>An array of cluster operation information objects.</p>
    #   @return [Array<Types::ClusterOperationInfo>]
    # @!attribute next_token
    #   <p>If the response of ListClusterOperations is truncated, it returns a NextToken in the response. This Nexttoken should be sent in the subsequent request to ListClusterOperations.</p>
    #   @return [String]
    class ListClusterOperationsResponse < Struct.new(
      nil,
      :cluster_operation_info_list,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_arn
    #   The arn of the cluster whose operations are being requested.
    #   @return [String]
    # @!attribute max_results
    #   The maxResults of the query.
    #   @return [Integer]
    # @!attribute next_token
    #   The nextToken of the query.
    #   @return [String]
    class ListClusterOperationsV2Request < Struct.new(
      nil,
      :cluster_arn,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_operation_info_list
    #   <p>An array of cluster operation information objects.</p>
    #   @return [Array<Types::ClusterOperationV2Summary>]
    # @!attribute next_token
    #   <p>If the response of ListClusterOperationsV2 is truncated, it returns a NextToken in the response. This NextToken should be sent in the subsequent request to ListClusterOperationsV2.</p>
    #   @return [String]
    class ListClusterOperationsV2Response < Struct.new(
      nil,
      :cluster_operation_info_list,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_name_filter
    #   <p>Specify a prefix of the name of the clusters that you want to list. The service lists all the clusters whose names start with this prefix.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in the response. If there are more results, the response includes a NextToken parameter.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The paginated results marker. When the result of the operation is truncated, the call returns NextToken in the response.
    #               To get the next batch, provide this token in your next request.</p>
    #   @return [String]
    class ListClustersRequest < Struct.new(
      nil,
      :cluster_name_filter,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_info_list
    #   <p>Information on each of the MSK clusters in the response.</p>
    #   @return [Array<Types::ClusterInfo>]
    # @!attribute next_token
    #   <p>The paginated results marker. When the result of a ListClusters operation is truncated, the call returns NextToken in the response.
    #                  To get another batch of clusters, provide this token in your next request.</p>
    #   @return [String]
    class ListClustersResponse < Struct.new(
      nil,
      :cluster_info_list,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_name_filter
    #   <p>Specify a prefix of the names of the clusters that you want to list. The service lists all the clusters whose names start with this prefix.</p>
    #   @return [String]
    # @!attribute cluster_type_filter
    #   <p>Specify either PROVISIONED or SERVERLESS.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in the response. If there are more results, the response includes a NextToken parameter.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The paginated results marker. When the result of the operation is truncated, the call returns NextToken in the response.
    #               To get the next batch, provide this token in your next request.</p>
    #   @return [String]
    class ListClustersV2Request < Struct.new(
      nil,
      :cluster_name_filter,
      :cluster_type_filter,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_info_list
    #   <p>Information on each of the MSK clusters in the response.</p>
    #   @return [Array<Types::Cluster>]
    # @!attribute next_token
    #   <p>The paginated results marker. When the result of a ListClusters operation is truncated, the call returns NextToken in the response.
    #                  To get another batch of clusters, provide this token in your next request.</p>
    #   @return [String]
    class ListClustersV2Response < Struct.new(
      nil,
      :cluster_info_list,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies an MSK configuration and all of its revisions.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in the response. If there are more results, the response includes a NextToken parameter.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The paginated results marker. When the result of the operation is truncated, the call returns NextToken in the response.
    #               To get the next batch, provide this token in your next request.</p>
    #   @return [String]
    class ListConfigurationRevisionsRequest < Struct.new(
      nil,
      :arn,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>Paginated results marker.</p>
    #   @return [String]
    # @!attribute revisions
    #   <p>List of ConfigurationRevision objects.</p>
    #   @return [Array<Types::ConfigurationRevision>]
    class ListConfigurationRevisionsResponse < Struct.new(
      nil,
      :next_token,
      :revisions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to return in the response. If there are more results, the response includes a NextToken parameter.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The paginated results marker. When the result of the operation is truncated, the call returns NextToken in the response.
    #               To get the next batch, provide this token in your next request.</p>
    #   @return [String]
    class ListConfigurationsRequest < Struct.new(
      nil,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute configurations
    #   <p>An array of MSK configurations.</p>
    #   @return [Array<Types::Configuration>]
    # @!attribute next_token
    #   <p>The paginated results marker. When the result of a ListConfigurations operation is truncated, the call returns NextToken in the response.
    #                  To get another batch of configurations, provide this token in your next request.</p>
    #   @return [String]
    class ListConfigurationsResponse < Struct.new(
      nil,
      :configurations,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to return in the response. If there are more results, the response includes a NextToken parameter.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The paginated results marker. When the result of the operation is truncated, the call returns NextToken in the response. To get the next batch, provide this token in your next request.</p>
    #   @return [String]
    class ListKafkaVersionsRequest < Struct.new(
      nil,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute kafka_versions
    #   @return [Array<Types::KafkaVersion>]
    # @!attribute next_token
    #   @return [String]
    class ListKafkaVersionsResponse < Struct.new(
      nil,
      :kafka_versions,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the cluster.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in the response. If there are more results, the response includes a NextToken parameter.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The paginated results marker. When the result of the operation is truncated, the call returns NextToken in the response.
    #               To get the next batch, provide this token in your next request.</p>
    #   @return [String]
    class ListNodesRequest < Struct.new(
      nil,
      :cluster_arn,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The paginated results marker. When the result of a ListNodes operation is truncated, the call returns NextToken in the response.
    #                  To get another batch of nodes, provide this token in your next request.</p>
    #   @return [String]
    # @!attribute node_info_list
    #   <p>List containing a NodeInfo object.</p>
    #   @return [Array<Types::NodeInfo>]
    class ListNodesResponse < Struct.new(
      nil,
      :next_token,
      :node_info_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to return in the response. If there are more results, the response includes a NextToken parameter.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If the response of ListReplicators is truncated, it returns a NextToken in the response. This NextToken should be sent in the subsequent request to ListReplicators.</p>
    #   @return [String]
    # @!attribute replicator_name_filter
    #   <p>Returns replicators starting with given name.</p>
    #   @return [String]
    class ListReplicatorsRequest < Struct.new(
      nil,
      :max_results,
      :next_token,
      :replicator_name_filter,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>If the response of ListReplicators is truncated, it returns a NextToken in the response. This NextToken should be sent in the subsequent request to ListReplicators.</p>
    #   @return [String]
    # @!attribute replicators
    #   <p>List containing information of each of the replicators in the account.</p>
    #   @return [Array<Types::ReplicatorSummary>]
    class ListReplicatorsResponse < Struct.new(
      nil,
      :next_token,
      :replicators,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_arn
    #   <p>The arn of the cluster.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maxResults of the query.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The nextToken of the query.</p>
    #   @return [String]
    class ListScramSecretsRequest < Struct.new(
      nil,
      :cluster_arn,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>Paginated results marker.</p>
    #   @return [String]
    # @!attribute secret_arn_list
    #   <p>The list of scram secrets associated with the cluster.</p>
    #   @return [Array<String>]
    class ListScramSecretsResponse < Struct.new(
      nil,
      :next_token,
      :secret_arn_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the resource that's associated with the tags.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      nil,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>The key-value pair for the resource tag.</p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceResponse < Struct.new(
      nil,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the cluster.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in the response. If there are more results, the response includes a NextToken parameter.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The paginated results marker. When the result of the operation is truncated, the call returns NextToken in the response.
    #               To get the next batch, provide this token in your next request.</p>
    #   @return [String]
    # @!attribute topic_name_filter
    #   <p>Returns topics starting with given name.</p>
    #   @return [String]
    class ListTopicsRequest < Struct.new(
      nil,
      :cluster_arn,
      :max_results,
      :next_token,
      :topic_name_filter,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute topics
    #   <p>List containing topics info.</p>
    #   @return [Array<Types::TopicInfo>]
    # @!attribute next_token
    #   <p>The paginated results marker. When the result of a ListTopics operation is truncated, the call returns NextToken in the response.
    #                  To get another batch of configurations, provide this token in your next request.</p>
    #   @return [String]
    class ListTopicsResponse < Struct.new(
      nil,
      :topics,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to return in the response. If there are more results, the response includes a NextToken parameter.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The paginated results marker. When the result of the operation is truncated, the call returns NextToken in the response.
    #               To get the next batch, provide this token in your next request.</p>
    #   @return [String]
    class ListVpcConnectionsRequest < Struct.new(
      nil,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute vpc_connections
    #   <p>List of VPC connections.</p>
    #   @return [Array<Types::VpcConnection>]
    # @!attribute next_token
    #   <p>The paginated results marker. When the result of a ListClientVpcConnections operation is truncated, the call returns NextToken in the response.
    #                  To get another batch of configurations, provide this token in your next request.</p>
    #   @return [String]
    class ListVpcConnectionsResponse < Struct.new(
      nil,
      :vpc_connections,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for log delivery to customer destinations.</p>
    # @!attribute replicator_log_delivery
    #   <p>Configuration for replicator log delivery.</p>
    #   @return [Types::ReplicatorLogDelivery]
    class LogDelivery < Struct.new(
      nil,
      :replicator_log_delivery,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute authorizer_logs
    #   <p>You can configure your MSK cluster to send authorizer logs to different destination types.</p>
    #   @return [Types::AuthorizerLogs]
    # @!attribute broker_logs
    #   @return [Types::BrokerLogs]
    class LoggingInfo < Struct.new(
      nil,
      :authorizer_logs,
      :broker_logs,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about cluster attributes that can be updated via update APIs.</p>
    # @!attribute broker_ebs_volume_info
    #   <p>Specifies the size of the EBS volume and the ID of the associated broker.</p>
    #   @return [Array<Types::BrokerEBSVolumeInfo>]
    # @!attribute configuration_info
    #   <p>Information about the changes in the configuration of the brokers.</p>
    #   @return [Types::ConfigurationInfo]
    # @!attribute number_of_broker_nodes
    #   <p>The number of broker nodes in the cluster.</p>
    #   @return [Integer]
    # @!attribute enhanced_monitoring
    #   <p>Specifies which Apache Kafka metrics Amazon MSK gathers and sends to Amazon CloudWatch for this cluster.</p>
    #   @return [String]
    # @!attribute open_monitoring
    #   <p>The settings for open monitoring.</p>
    #   @return [Types::OpenMonitoring]
    # @!attribute zookeeper_access
    #   <p>Access control settings for zookeeper</p>
    #   @return [Types::ZookeeperAccess]
    # @!attribute kafka_version
    #   <p>The Apache Kafka version.</p>
    #   @return [String]
    # @!attribute logging_info
    #   <p>You can configure your MSK cluster to send broker logs to different destination types. This is a container for the configuration details related to broker logs.</p>
    #   @return [Types::LoggingInfo]
    # @!attribute instance_type
    #   <p>Information about the Amazon MSK broker type.</p>
    #   @return [String]
    # @!attribute client_authentication
    #   <p>Includes all client authentication information.</p>
    #   @return [Types::ClientAuthentication]
    # @!attribute encryption_info
    #   <p>Includes all encryption-related information.</p>
    #   @return [Types::EncryptionInfo]
    # @!attribute connectivity_info
    #   <p>Information about the broker access configuration.</p>
    #   @return [Types::ConnectivityInfo]
    # @!attribute storage_mode
    #   <p>This controls storage mode for supported storage tiers.</p>
    #   @return [String]
    # @!attribute broker_count_update_info
    #   <p>Describes brokers being changed during a broker count update.</p>
    #   @return [Types::BrokerCountUpdateInfo]
    # @!attribute rebalancing
    #   <p>Describes the intelligent rebalancing configuration of an MSK Provisioned cluster with Express brokers.</p>
    #   @return [Types::Rebalancing]
    class MutableClusterInfo < Struct.new(
      nil,
      :broker_ebs_volume_info,
      :configuration_info,
      :number_of_broker_nodes,
      :enhanced_monitoring,
      :open_monitoring,
      :zookeeper_access,
      :kafka_version,
      :logging_info,
      :instance_type,
      :client_authentication,
      :encryption_info,
      :connectivity_info,
      :storage_mode,
      :broker_count_update_info,
      :rebalancing,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Indicates whether you want to turn on or turn off the Node Exporter.</p>
    # @!attribute enabled_in_broker
    #   <p>Indicates whether you want to turn on or turn off the Node Exporter.</p>
    #   @return [Boolean]
    class NodeExporter < Struct.new(
      nil,
      :enabled_in_broker,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Indicates whether you want to turn on or turn off the Node Exporter.</p>
    # @!attribute enabled_in_broker
    #   <p>Indicates whether you want to turn on or turn off the Node Exporter.</p>
    #   @return [Boolean]
    class NodeExporterInfo < Struct.new(
      nil,
      :enabled_in_broker,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The node information object.</p>
    # @!attribute added_to_cluster_time
    #   <p>The start time.</p>
    #   @return [String]
    # @!attribute broker_node_info
    #   <p>The broker node info.</p>
    #   @return [Types::BrokerNodeInfo]
    # @!attribute controller_node_info
    #   <p>The ControllerNodeInfo.</p>
    #   @return [Types::ControllerNodeInfo]
    # @!attribute instance_type
    #   <p>The instance type.</p>
    #   @return [String]
    # @!attribute node_arn
    #   <p>The Amazon Resource Name (ARN) of the node.</p>
    #   @return [String]
    # @!attribute node_type
    #   <p>The node type.</p>
    #   @return [String]
    # @!attribute zookeeper_node_info
    #   <p>The ZookeeperNodeInfo.</p>
    #   @return [Types::ZookeeperNodeInfo]
    class NodeInfo < Struct.new(
      nil,
      :added_to_cluster_time,
      :broker_node_info,
      :controller_node_info,
      :instance_type,
      :node_arn,
      :node_type,
      :zookeeper_node_info,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Returns information about an error.</p>
    # @!attribute invalid_parameter
    #   <p>The parameter that caused the error.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The description of the error.</p>
    #   @return [String]
    class NotControllerException < Struct.new(
      nil,
      :invalid_parameter,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Returns information about an error.</p>
    # @!attribute invalid_parameter
    #   <p>The parameter that caused the error.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The description of the error.</p>
    #   @return [String]
    class NotFoundException < Struct.new(
      nil,
      :invalid_parameter,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>JMX and Node monitoring for the MSK cluster.</p>
    # @!attribute prometheus
    #   <p>Prometheus settings.</p>
    #   @return [Types::Prometheus]
    class OpenMonitoring < Struct.new(
      nil,
      :prometheus,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>JMX and Node monitoring for the MSK cluster.</p>
    # @!attribute prometheus
    #   <p>Prometheus settings.</p>
    #   @return [Types::PrometheusInfo]
    class OpenMonitoringInfo < Struct.new(
      nil,
      :prometheus,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A source column used by an Apache Iceberg destination table's partition specification.</p>
    # @!attribute source_name
    #   <p>Source name.</p>
    #   @return [String]
    class PartitionSource < Struct.new(
      nil,
      :source_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Partition specification for an Apache Iceberg destination table.</p>
    # @!attribute partition_strategy
    #   <p>The partitioning strategy applied to records written to the table.</p>
    #   @return [String]
    # @!attribute source_list
    #   <p>The source columns used by the partitioning strategy. For TIME_HOUR, must contain exactly one source column whose value is a timestamp.</p>
    #   @return [Array<Types::PartitionSource>]
    class PartitionSpec < Struct.new(
      nil,
      :partition_strategy,
      :source_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Prometheus settings.</p>
    # @!attribute jmx_exporter
    #   <p>Indicates whether you want to turn on or turn off the JMX Exporter.</p>
    #   @return [Types::JmxExporter]
    # @!attribute node_exporter
    #   <p>Indicates whether you want to turn on or turn off the Node Exporter.</p>
    #   @return [Types::NodeExporter]
    class Prometheus < Struct.new(
      nil,
      :jmx_exporter,
      :node_exporter,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Prometheus settings.</p>
    # @!attribute jmx_exporter
    #   <p>Indicates whether you want to turn on or turn off the JMX Exporter.</p>
    #   @return [Types::JmxExporterInfo]
    # @!attribute node_exporter
    #   <p>Indicates whether you want to turn on or turn off the Node Exporter.</p>
    #   @return [Types::NodeExporterInfo]
    class PrometheusInfo < Struct.new(
      nil,
      :jmx_exporter,
      :node_exporter,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provisioned cluster.</p>
    # @!attribute broker_node_group_info
    #   <p>Information about the brokers.</p>
    #   @return [Types::BrokerNodeGroupInfo]
    # @!attribute rebalancing
    #   <p>Specifies whether or not intelligent rebalancing is turned on for a newly created MSK Provisioned cluster with Express brokers. Intelligent rebalancing performs automatic partition balancing operations when you scale your clusters up or down.  By default, intelligent rebalancing is ACTIVE for all new Express-based clusters.</p>
    #   @return [Types::Rebalancing]
    # @!attribute current_broker_software_info
    #   <p>Information about the Apache Kafka version deployed on the brokers.</p>
    #   @return [Types::BrokerSoftwareInfo]
    # @!attribute client_authentication
    #   <p>Includes all client authentication information.</p>
    #   @return [Types::ClientAuthentication]
    # @!attribute encryption_info
    #   <p>Includes all encryption-related information.</p>
    #   @return [Types::EncryptionInfo]
    # @!attribute enhanced_monitoring
    #   <p>Specifies the level of monitoring for the MSK cluster. The possible values are DEFAULT, PER_BROKER, PER_TOPIC_PER_BROKER, and PER_TOPIC_PER_PARTITION.</p>
    #   @return [String]
    # @!attribute open_monitoring
    #   <p>The settings for open monitoring.</p>
    #   @return [Types::OpenMonitoringInfo]
    # @!attribute logging_info
    #   <p>Log delivery information for the cluster.</p>
    #   @return [Types::LoggingInfo]
    # @!attribute number_of_broker_nodes
    #   <p>The number of broker nodes in the cluster.</p>
    #   @return [Integer]
    # @!attribute zookeeper_connect_string
    #   <p>The connection string to use to connect to the Apache ZooKeeper cluster.</p>
    #   @return [String]
    # @!attribute zookeeper_connect_string_tls
    #   <p>The connection string to use to connect to the Apache ZooKeeper cluster on a TLS port.</p>
    #   @return [String]
    # @!attribute storage_mode
    #   <p>This controls storage mode for supported storage tiers.</p>
    #   @return [String]
    # @!attribute customer_action_status
    #   <p>Determines if there is an action required from the customer.</p>
    #   @return [String]
    class Provisioned < Struct.new(
      nil,
      :broker_node_group_info,
      :rebalancing,
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
      :customer_action_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provisioned cluster request.</p>
    # @!attribute broker_node_group_info
    #   <p>Information about the brokers.</p>
    #   @return [Types::BrokerNodeGroupInfo]
    # @!attribute rebalancing
    #   <p>Specifies if intelligent rebalancing is turned on for your MSK Provisioned cluster with Express brokers. For all new Express-based clusters that you create, intelligent rebalancing is turned on by default.</p>
    #   @return [Types::Rebalancing]
    # @!attribute client_authentication
    #   <p>Includes all client authentication information.</p>
    #   @return [Types::ClientAuthentication]
    # @!attribute configuration_info
    #   <p>Represents the configuration that you want Amazon MSK to use for the brokers in a cluster.</p>
    #   @return [Types::ConfigurationInfo]
    # @!attribute encryption_info
    #   <p>Includes all encryption-related information.</p>
    #   @return [Types::EncryptionInfo]
    # @!attribute enhanced_monitoring
    #   <p>Specifies the level of monitoring for the MSK cluster. The possible values are DEFAULT, PER_BROKER, PER_TOPIC_PER_BROKER, and PER_TOPIC_PER_PARTITION.</p>
    #   @return [String]
    # @!attribute open_monitoring
    #   <p>The settings for open monitoring.</p>
    #   @return [Types::OpenMonitoringInfo]
    # @!attribute kafka_version
    #   <p>The Apache Kafka version that you want for the cluster.</p>
    #   @return [String]
    # @!attribute logging_info
    #   <p>Log delivery information for the cluster.</p>
    #   @return [Types::LoggingInfo]
    # @!attribute number_of_broker_nodes
    #   <p>The number of broker nodes in the cluster.</p>
    #   @return [Integer]
    # @!attribute storage_mode
    #   <p>This controls storage mode for supported storage tiers.</p>
    #   @return [String]
    class ProvisionedRequest < Struct.new(
      nil,
      :broker_node_group_info,
      :rebalancing,
      :client_authentication,
      :configuration_info,
      :encryption_info,
      :enhanced_monitoring,
      :open_monitoring,
      :kafka_version,
      :logging_info,
      :number_of_broker_nodes,
      :storage_mode,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about provisioned throughput for EBS storage volumes attached to kafka broker nodes.</p>
    # @!attribute enabled
    #   <p>Provisioned throughput is enabled or not.</p>
    #   @return [Boolean]
    # @!attribute volume_throughput
    #   <p>Throughput value of the EBS volumes for the data drive on each kafka broker node in MiB per second.</p>
    #   @return [Integer]
    class ProvisionedThroughput < Struct.new(
      nil,
      :enabled,
      :volume_throughput,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Public access control for brokers.
    # @!attribute type
    #   <p>The value DISABLED indicates that public access is turned off. SERVICE_PROVIDED_EIPS indicates that public access is turned on.</p>
    #   @return [String]
    class PublicAccess < Struct.new(
      nil,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_arn
    #   <p>The Amazon Resource Name (ARN) of the cluster.</p>
    #   @return [String]
    # @!attribute current_version
    #   <p>The policy version.</p>
    #   @return [String]
    # @!attribute policy
    #   <p>The policy.</p>
    #   @return [String]
    class PutClusterPolicyRequest < Struct.new(
      nil,
      :cluster_arn,
      :current_version,
      :policy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute current_version
    #   <p>The policy version.</p>
    #   @return [String]
    class PutClusterPolicyResponse < Struct.new(
      nil,
      :current_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Returns information about an error.</p>
    # @!attribute invalid_parameter
    #   <p>The parameter that caused the error.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The description of the error.</p>
    #   @return [String]
    class ReassignmentInProgressException < Struct.new(
      nil,
      :invalid_parameter,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies whether or not intelligent rebalancing is turned on for a newly created MSK Provisioned cluster with Express brokers. Intelligent rebalancing performs automatic partition balancing operations when you scale your clusters up or down. By default, intelligent rebalancing is ACTIVE for all new Express-based clusters.</p>
    # @!attribute status
    #   <p>Intelligent rebalancing status. The default intelligent rebalancing status is ACTIVE for all new Express-based clusters.</p>
    #   @return [String]
    class Rebalancing < Struct.new(
      nil,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Reboots a node.
    # @!attribute broker_ids
    #   <p>The list of broker IDs to be rebooted. The reboot-broker operation supports rebooting one broker at a time.</p>
    #   @return [Array<String>]
    # @!attribute cluster_arn
    #   <p>The Amazon Resource Name (ARN) of the cluster to be updated.</p>
    #   @return [String]
    class RebootBrokerRequest < Struct.new(
      nil,
      :broker_ids,
      :cluster_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_arn
    #   <p>The Amazon Resource Name (ARN) of the cluster.</p>
    #   @return [String]
    # @!attribute cluster_operation_arn
    #   <p>The Amazon Resource Name (ARN) of the cluster operation.</p>
    #   @return [String]
    class RebootBrokerResponse < Struct.new(
      nil,
      :cluster_arn,
      :cluster_operation_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration that controls how Apache Kafka record values are deserialized for the destination.</p>
    # @!attribute value_converter
    #   <p>The deserialization format applied to Apache Kafka record values.</p>
    #   @return [String]
    class RecordConverter < Struct.new(
      nil,
      :value_converter,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Schema configuration that controls how Apache Kafka record values are validated.</p>
    # @!attribute gsr_arn
    #   <p>The Amazon Resource Name (ARN) of the AWS Glue Schema Registry schema (not registry) used to validate records for the destination Apache Iceberg table.</p>
    #   @return [String]
    class RecordSchema < Struct.new(
      nil,
      :gsr_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_arn
    #   <p>The Amazon Resource Name (ARN) of the cluster.</p>
    #   @return [String]
    # @!attribute vpc_connection_arn
    #   <p>The VPC connection ARN.</p>
    #   @return [String]
    class RejectClientVpcConnectionRequest < Struct.new(
      nil,
      :cluster_arn,
      :vpc_connection_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class RejectClientVpcConnectionResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies configuration for replication between a source and target Kafka cluster.</p>
    # @!attribute consumer_group_replication
    #   <p>Configuration relating to consumer group replication.</p>
    #   @return [Types::ConsumerGroupReplication]
    # @!attribute source_kafka_cluster_arn
    #   <p>The ARN of the source Kafka cluster.</p>
    #   @return [String]
    # @!attribute source_kafka_cluster_id
    #   <p>The ID of the source Kafka cluster.</p>
    #   @return [String]
    # @!attribute target_compression_type
    #   <p>The compression type to use when producing records to target cluster.</p>
    #   @return [String]
    # @!attribute target_kafka_cluster_arn
    #   <p>The ARN of the target Kafka cluster.</p>
    #   @return [String]
    # @!attribute target_kafka_cluster_id
    #   <p>The ID of the target Kafka cluster.</p>
    #   @return [String]
    # @!attribute topic_replication
    #   <p>Configuration relating to topic replication.</p>
    #   @return [Types::TopicReplication]
    class ReplicationInfo < Struct.new(
      nil,
      :consumer_group_replication,
      :source_kafka_cluster_arn,
      :source_kafka_cluster_id,
      :target_compression_type,
      :target_kafka_cluster_arn,
      :target_kafka_cluster_id,
      :topic_replication,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies configuration for replication between a source and target Kafka cluster (sourceKafkaClusterAlias -> targetKafkaClusterAlias)</p>
    # @!attribute consumer_group_replication
    #   <p>Configuration relating to consumer group replication.</p>
    #   @return [Types::ConsumerGroupReplication]
    # @!attribute source_kafka_cluster_alias
    #   <p>The alias of the source Kafka cluster.</p>
    #   @return [String]
    # @!attribute target_compression_type
    #   <p>The compression type to use when producing records to target cluster.</p>
    #   @return [String]
    # @!attribute target_kafka_cluster_alias
    #   <p>The alias of the target Kafka cluster.</p>
    #   @return [String]
    # @!attribute topic_replication
    #   <p>Configuration relating to topic replication.</p>
    #   @return [Types::TopicReplication]
    class ReplicationInfoDescription < Struct.new(
      nil,
      :consumer_group_replication,
      :source_kafka_cluster_alias,
      :target_compression_type,
      :target_kafka_cluster_alias,
      :topic_replication,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summarized information of replication between clusters.</p>
    # @!attribute source_kafka_cluster_alias
    #   <p>The alias of the source Kafka cluster.</p>
    #   @return [String]
    # @!attribute target_kafka_cluster_alias
    #   <p>The alias of the target Kafka cluster.</p>
    #   @return [String]
    class ReplicationInfoSummary < Struct.new(
      nil,
      :source_kafka_cluster_alias,
      :target_kafka_cluster_alias,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for specifying the position in the topics to start replicating from.</p>
    # @!attribute type
    #   <p>The type of replication starting position.</p>
    #   @return [String]
    class ReplicationStartingPosition < Struct.new(
      nil,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Details about the state of a replicator
    # @!attribute code
    #   Code that describes the current state of the replicator.
    #   @return [String]
    # @!attribute message
    #   Message that describes the state of the replicator.
    #   @return [String]
    class ReplicationStateInfo < Struct.new(
      nil,
      :code,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for specifying replicated topic names should be the same as their corresponding upstream topics or prefixed with source cluster alias.</p>
    # @!attribute type
    #   <p>The type of replicated topic name.</p>
    #   @return [String]
    class ReplicationTopicNameConfiguration < Struct.new(
      nil,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about delivering logs to CloudWatch Logs.</p>
    # @!attribute enabled
    #   <p>Whether log delivery to CloudWatch Logs is enabled.</p>
    #   @return [Boolean]
    # @!attribute log_group
    #   <p>The CloudWatch log group that is the destination for log delivery.</p>
    #   @return [String]
    class ReplicatorCloudWatchLogs < Struct.new(
      nil,
      :enabled,
      :log_group,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about delivering logs to Firehose.</p>
    # @!attribute enabled
    #   <p>Whether log delivery to Firehose is enabled.</p>
    #   @return [Boolean]
    # @!attribute delivery_stream
    #   <p>The Firehose delivery stream that is the destination for log delivery.</p>
    #   @return [String]
    class ReplicatorFirehose < Struct.new(
      nil,
      :enabled,
      :delivery_stream,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for replicator log delivery.</p>
    # @!attribute cloud_watch_logs
    #   <p>Configuration for CloudWatch Logs delivery.</p>
    #   @return [Types::ReplicatorCloudWatchLogs]
    # @!attribute firehose
    #   <p>Configuration for Firehose delivery.</p>
    #   @return [Types::ReplicatorFirehose]
    # @!attribute s3
    #   <p>Configuration for S3 delivery.</p>
    #   @return [Types::ReplicatorS3]
    class ReplicatorLogDelivery < Struct.new(
      nil,
      :cloud_watch_logs,
      :firehose,
      :s3,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about delivering logs to S3.</p>
    # @!attribute enabled
    #   <p>Whether log delivery to S3 is enabled.</p>
    #   @return [Boolean]
    # @!attribute bucket
    #   <p>The S3 bucket that is the destination for log delivery.</p>
    #   @return [String]
    # @!attribute prefix
    #   <p>The S3 prefix that is the destination for log delivery.</p>
    #   @return [String]
    class ReplicatorS3 < Struct.new(
      nil,
      :enabled,
      :bucket,
      :prefix,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a replicator.</p>
    # @!attribute creation_time
    #   <p>The time the replicator was created.</p>
    #   @return [Time]
    # @!attribute current_version
    #   <p>The current version of the replicator.</p>
    #   @return [String]
    # @!attribute is_replicator_reference
    #   <p>Whether this resource is a replicator reference.</p>
    #   @return [Boolean]
    # @!attribute kafka_clusters_summary
    #   <p>Kafka Clusters used in setting up sources / targets for replication.</p>
    #   @return [Array<Types::KafkaClusterSummary>]
    # @!attribute replication_info_summary_list
    #   <p>A list of summarized information of replications between clusters.</p>
    #   @return [Array<Types::ReplicationInfoSummary>]
    # @!attribute replicator_arn
    #   <p>The Amazon Resource Name (ARN) of the replicator.</p>
    #   @return [String]
    # @!attribute replicator_name
    #   <p>The name of the replicator.</p>
    #   @return [String]
    # @!attribute replicator_resource_arn
    #   <p>The Amazon Resource Name (ARN) of the replicator resource in the region where the replicator was created.</p>
    #   @return [String]
    # @!attribute replicator_state
    #   <p>State of the replicator.</p>
    #   @return [String]
    class ReplicatorSummary < Struct.new(
      nil,
      :creation_time,
      :current_version,
      :is_replicator_reference,
      :kafka_clusters_summary,
      :replication_info_summary_list,
      :replicator_arn,
      :replicator_name,
      :replicator_resource_arn,
      :replicator_state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bucket
    #   @return [String]
    # @!attribute enabled
    #   @return [Boolean]
    # @!attribute prefix
    #   @return [String]
    class S3 < Struct.new(
      nil,
      :bucket,
      :enabled,
      :prefix,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration of an Amazon S3 destination for a channel.</p>
    # @!attribute data_freshness_in_seconds
    #   <p>The maximum time, in seconds, that records buffer in MSK before being flushed to the destination. Allowed range: 300 to 900. Default: 600.</p>
    #   @return [Integer]
    # @!attribute dead_letter_queue_s3
    #   <p>The Amazon S3 bucket and prefix where MSK writes records that fail to deliver.</p>
    #   @return [Types::DeadLetterQueueS3]
    # @!attribute service_execution_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that MSK assumes to write to the destination Amazon S3 bucket and the dead-letter bucket.</p>
    #   @return [String]
    # @!attribute storage
    #   <p>The Amazon S3 bucket, prefix, and storage class for delivered records.</p>
    #   @return [Types::S3Storage]
    class S3DestinationConfiguration < Struct.new(
      nil,
      :data_freshness_in_seconds,
      :dead_letter_queue_s3,
      :service_execution_role_arn,
      :storage,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Update payload for an Amazon S3 destination.</p>
    # @!attribute data_freshness_in_seconds
    #   <p>The maximum time, in seconds, that records buffer in MSK before being flushed to the destination. Allowed range: 300 to 900.</p>
    #   @return [Integer]
    class S3DestinationUpdate < Struct.new(
      nil,
      :data_freshness_in_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Storage configuration for an Amazon S3 destination bucket.</p>
    # @!attribute bucket_arn
    #   <p>The Amazon Resource Name (ARN) of the destination Amazon S3 bucket.</p>
    #   @return [String]
    # @!attribute compression_type
    #   <p>The compression codec applied to delivered Amazon S3 objects.</p>
    #   @return [String]
    # @!attribute output_prefix
    #   <p>An optional prefix prepended to every Amazon S3 object key written by the channel.</p>
    #   @return [String]
    # @!attribute output_key_template
    #   <p>An optional template that controls the Amazon S3 object key for each delivered record. Supports the placeholders !{partition-id}, !{sequence-number}, and !{kafka-offset}.</p>
    #   @return [String]
    # @!attribute storage_class
    #   <p>The Amazon S3 storage class for delivered objects.</p>
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>Optional 12-digit AWS account ID expected to own the Amazon S3 bucket.</p>
    #   @return [String]
    class S3Storage < Struct.new(
      nil,
      :bucket_arn,
      :compression_type,
      :output_prefix,
      :output_key_template,
      :storage_class,
      :expected_bucket_owner,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details for client authentication using SASL.</p>
    # @!attribute scram
    #   <p>Details for SASL/SCRAM client authentication.</p>
    #   @return [Types::Scram]
    # @!attribute iam
    #   <p>Indicates whether IAM access control is enabled.</p>
    #   @return [Types::Iam]
    class Sasl < Struct.new(
      nil,
      :scram,
      :iam,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration controlling whether the Apache Iceberg destination table's schema is evolved as incoming records change.</p>
    # @!attribute enable_schema_evolution
    #   <p>Whether to allow MSK to evolve the destination table's schema. Must be false for the current release.</p>
    #   @return [Boolean]
    class SchemaEvolution < Struct.new(
      nil,
      :enable_schema_evolution,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details for SASL/SCRAM client authentication.</p>
    # @!attribute enabled
    #   <p>SASL/SCRAM authentication is enabled or not.</p>
    #   @return [Boolean]
    class Scram < Struct.new(
      nil,
      :enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Serverless cluster.</p>
    # @!attribute vpc_configs
    #   <p>The configuration of the Amazon VPCs for the cluster.</p>
    #   @return [Array<Types::VpcConfig>]
    # @!attribute client_authentication
    #   <p>Includes all client authentication information.</p>
    #   @return [Types::ServerlessClientAuthentication]
    # @!attribute connectivity_info
    #   <p>Describes the cluster's connectivity information, such as its network type, which is IPv4 or DUAL.</p>
    #   @return [Types::ServerlessConnectivityInfo]
    class Serverless < Struct.new(
      nil,
      :vpc_configs,
      :client_authentication,
      :connectivity_info,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Includes all client authentication information.</p>
    # @!attribute sasl
    #   <p>Details for ClientAuthentication using SASL.</p>
    #   @return [Types::ServerlessSasl]
    class ServerlessClientAuthentication < Struct.new(
      nil,
      :sasl,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the cluster's connectivity information, such as its network type, which is IPv4 or DUAL.</p>
    # @!attribute network_type
    #   <p>The network type of the cluster, which is IPv4 or DUAL. The DUAL network type uses both IPv4 and IPv6 addresses for your cluster and its resources.</p><p>By default, a cluster uses the IPv4 network type.</p>
    #   @return [String]
    class ServerlessConnectivityInfo < Struct.new(
      nil,
      :network_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Serverless cluster request.</p>
    # @!attribute vpc_configs
    #   <p>The configuration of the Amazon VPCs for the cluster.</p>
    #   @return [Array<Types::VpcConfig>]
    # @!attribute client_authentication
    #   <p>Includes all client authentication information.</p>
    #   @return [Types::ServerlessClientAuthentication]
    class ServerlessRequest < Struct.new(
      nil,
      :vpc_configs,
      :client_authentication,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details for client authentication using SASL.</p>
    # @!attribute iam
    #   <p>Indicates whether IAM access control is enabled.</p>
    #   @return [Types::Iam]
    class ServerlessSasl < Struct.new(
      nil,
      :iam,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Returns information about an error.</p>
    # @!attribute invalid_parameter
    #   <p>The parameter that caused the error.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The description of the error.</p>
    #   @return [String]
    class ServiceUnavailableException < Struct.new(
      nil,
      :invalid_parameter,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute code
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class StateInfo < Struct.new(
      nil,
      :code,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about storage volumes attached to MSK broker nodes.</p>
    # @!attribute ebs_storage_info
    #   <p>EBS volume information.</p>
    #   @return [Types::EBSStorageInfo]
    class StorageInfo < Struct.new(
      nil,
      :ebs_storage_info,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration controlling whether MSK creates the destination Apache Iceberg table if it does not already exist.</p>
    # @!attribute enable_table_creation
    #   <p>Whether MSK creates the destination table on the customer's behalf. Must be true for the current release.</p>
    #   @return [Boolean]
    class TableCreation < Struct.new(
      nil,
      :enable_table_creation,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the resource that's associated with the tags.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The key-value pair for the resource tag.</p>
    #   @return [Hash<String, String>]
    class TagResourceRequest < Struct.new(
      nil,
      :resource_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details for client authentication using TLS.</p>
    # @!attribute certificate_authority_arn_list
    #   <p>List of ACM Certificate Authority ARNs.</p>
    #   @return [Array<String>]
    # @!attribute enabled
    #   <p>Specifies whether you want to turn on or turn off TLS authentication.</p>
    #   @return [Boolean]
    class Tls < Struct.new(
      nil,
      :certificate_authority_arn_list,
      :enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Returns information about an error.</p>
    # @!attribute invalid_parameter
    #   <p>The parameter that caused the error.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The description of the error.</p>
    #   @return [String]
    class TooManyRequestsException < Struct.new(
      nil,
      :invalid_parameter,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration of an Apache Kafka topic that feeds a channel.</p>
    # @!attribute record_converter
    #   <p>Configuration that controls how Apache Kafka record values are deserialized for the destination.</p>
    #   @return [Types::RecordConverter]
    # @!attribute record_schema
    #   <p>The schema used to validate records when the value converter requires one (for example, JSON_SCHEMA_GSR).</p>
    #   @return [Types::RecordSchema]
    # @!attribute topic_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the topic.</p>
    #   @return [String]
    class TopicConfiguration < Struct.new(
      nil,
      :record_converter,
      :record_schema,
      :topic_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Returns information about an error.</p>
    # @!attribute invalid_parameter
    #   <p>The parameter that caused the error.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The description of the error.</p>
    #   @return [String]
    class TopicExistsException < Struct.new(
      nil,
      :invalid_parameter,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Includes identification info about the topic.</p>
    # @!attribute topic_arn
    #   <p>The Amazon Resource Name (ARN) of the topic.</p>
    #   @return [String]
    # @!attribute topic_name
    #   <p>Name for a topic.</p>
    #   @return [String]
    # @!attribute replication_factor
    #   <p>Replication factor for a topic.</p>
    #   @return [Integer]
    # @!attribute partition_count
    #   <p>Partition count for a topic.</p>
    #   @return [Integer]
    # @!attribute out_of_sync_replica_count
    #   <p>Number of out-of-sync replicas for a topic.</p>
    #   @return [Integer]
    class TopicInfo < Struct.new(
      nil,
      :topic_arn,
      :topic_name,
      :replication_factor,
      :partition_count,
      :out_of_sync_replica_count,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a topic partition.</p>
    # @!attribute partition
    #   <p>The partition ID.</p>
    #   @return [Integer]
    # @!attribute leader
    #   <p>The leader broker ID for the partition.</p>
    #   @return [Integer]
    # @!attribute replicas
    #   <p>The list of replica broker IDs for the partition.</p>
    #   @return [Array<Integer>]
    # @!attribute isr
    #   <p>The list of in-sync replica broker IDs for the partition.</p>
    #   @return [Array<Integer>]
    class TopicPartitionInfo < Struct.new(
      nil,
      :partition,
      :leader,
      :replicas,
      :isr,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about topic replication.</p>
    # @!attribute copy_access_control_lists_for_topics
    #   <p>Whether to periodically configure remote topic ACLs to match their corresponding upstream topics.</p>
    #   @return [Boolean]
    # @!attribute copy_topic_configurations
    #   <p>Whether to periodically configure remote topics to match their corresponding upstream topics.</p>
    #   @return [Boolean]
    # @!attribute detect_and_copy_new_topics
    #   <p>Whether to periodically check for new topics and partitions.</p>
    #   @return [Boolean]
    # @!attribute starting_position
    #   <p>Configuration for specifying the position in the topics to start replicating from.</p>
    #   @return [Types::ReplicationStartingPosition]
    # @!attribute topic_name_configuration
    #   <p>Configuration for specifying replicated topic names should be the same as their corresponding upstream topics or prefixed with source cluster alias.</p>
    #   @return [Types::ReplicationTopicNameConfiguration]
    # @!attribute topics_to_exclude
    #   <p>List of regular expression patterns indicating the topics that should not be replicated.</p>
    #   @return [Array<String>]
    # @!attribute topics_to_replicate
    #   <p>List of regular expression patterns indicating the topics to copy.</p>
    #   @return [Array<String>]
    class TopicReplication < Struct.new(
      nil,
      :copy_access_control_lists_for_topics,
      :copy_topic_configurations,
      :detect_and_copy_new_topics,
      :starting_position,
      :topic_name_configuration,
      :topics_to_exclude,
      :topics_to_replicate,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details for updating the topic replication of a replicator.</p>
    # @!attribute copy_access_control_lists_for_topics
    #   <p>Whether to periodically configure remote topic ACLs to match their corresponding upstream topics.</p>
    #   @return [Boolean]
    # @!attribute copy_topic_configurations
    #   <p>Whether to periodically configure remote topics to match their corresponding upstream topics.</p>
    #   @return [Boolean]
    # @!attribute detect_and_copy_new_topics
    #   <p>Whether to periodically check for new topics and partitions.</p>
    #   @return [Boolean]
    # @!attribute topics_to_exclude
    #   <p>List of regular expression patterns indicating the topics that should not be replicated.</p>
    #   @return [Array<String>]
    # @!attribute topics_to_replicate
    #   <p>List of regular expression patterns indicating the topics to copy.</p>
    #   @return [Array<String>]
    class TopicReplicationUpdate < Struct.new(
      nil,
      :copy_access_control_lists_for_topics,
      :copy_topic_configurations,
      :detect_and_copy_new_topics,
      :topics_to_exclude,
      :topics_to_replicate,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute enabled
    #   <p>Specifies whether you want to turn on or turn off unauthenticated traffic to your cluster.</p>
    #   @return [Boolean]
    class Unauthenticated < Struct.new(
      nil,
      :enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Returns information about an error.</p>
    # @!attribute invalid_parameter
    #   <p>The parameter that caused the error.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The description of the error.</p>
    #   @return [String]
    class UnauthorizedException < Struct.new(
      nil,
      :invalid_parameter,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Returns information about an error.</p>
    # @!attribute invalid_parameter
    #   <p>The parameter that caused the error.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The description of the error.</p>
    #   @return [String]
    class UnknownTopicOrPartitionException < Struct.new(
      nil,
      :invalid_parameter,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Error info for scram secret associate/disassociate failure.</p>
    # @!attribute error_code
    #   <p>Error code for associate/disassociate failure.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>Error message for associate/disassociate failure.</p>
    #   @return [String]
    # @!attribute secret_arn
    #   <p>AWS Secrets Manager secret ARN.</p>
    #   @return [String]
    class UnprocessedScramSecret < Struct.new(
      nil,
      :error_code,
      :error_message,
      :secret_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the resource that's associated with the tags.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>Tag keys must be unique for a given cluster. In addition, the following restrictions apply:</p>
    #               <ul>
    #                  <li>
    #                     <p>Each tag key must be unique. If you add a tag with a key that's already in
    #                     use, your new tag overwrites the existing key-value pair. </p>
    #                  </li>
    #                  <li>
    #                     <p>You can't start a tag key with aws: because this prefix is reserved for use
    #                     by  AWS.  AWS creates tags that begin with this prefix on your behalf, but
    #                     you can't edit or delete them.</p>
    #                  </li>
    #                  <li>
    #                     <p>Tag keys must be between 1 and 128 Unicode characters in length.</p>
    #                  </li>
    #                  <li>
    #                     <p>Tag keys must consist of the following characters: Unicode letters, digits,
    #                     white space, and the following special characters: _ . / = + -
    #                        @.</p>
    #                  </li>
    #               </ul>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      nil,
      :resource_arn,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the cluster.</p>
    #   @return [String]
    # @!attribute current_version
    #   <p>The version of cluster to update from. A successful operation will then generate a new version.</p>
    #   @return [String]
    # @!attribute target_number_of_broker_nodes
    #   <p>The number of broker nodes that you want the cluster to have after this operation completes successfully.</p>
    #   @return [Integer]
    class UpdateBrokerCountRequest < Struct.new(
      nil,
      :cluster_arn,
      :current_version,
      :target_number_of_broker_nodes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_arn
    #   <p>The Amazon Resource Name (ARN) of the cluster.</p>
    #   @return [String]
    # @!attribute cluster_operation_arn
    #   <p>The Amazon Resource Name (ARN) of the cluster operation.</p>
    #   @return [String]
    class UpdateBrokerCountResponse < Struct.new(
      nil,
      :cluster_arn,
      :cluster_operation_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the cluster.</p>
    #   @return [String]
    # @!attribute current_version
    #   <p>The version of cluster to update from. A successful operation will then generate a new version.</p>
    #   @return [String]
    # @!attribute target_broker_ebs_volume_info
    #   <p>Describes the target volume size and the ID of the broker to apply the update to.</p>
    #   @return [Array<Types::BrokerEBSVolumeInfo>]
    class UpdateBrokerStorageRequest < Struct.new(
      nil,
      :cluster_arn,
      :current_version,
      :target_broker_ebs_volume_info,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_arn
    #   <p>The Amazon Resource Name (ARN) of the cluster.</p>
    #   @return [String]
    # @!attribute cluster_operation_arn
    #   <p>The Amazon Resource Name (ARN) of the cluster operation.</p>
    #   @return [String]
    class UpdateBrokerStorageResponse < Struct.new(
      nil,
      :cluster_arn,
      :cluster_operation_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the cluster.</p>
    #   @return [String]
    # @!attribute current_version
    #   <p>The cluster version that you want to change. After this operation completes successfully, the cluster will have a new version.</p>
    #   @return [String]
    # @!attribute target_instance_type
    #   <p>The Amazon MSK broker type that you want all of the brokers in this cluster to be.</p>
    #   @return [String]
    class UpdateBrokerTypeRequest < Struct.new(
      nil,
      :cluster_arn,
      :current_version,
      :target_instance_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_arn
    #   <p>The Amazon Resource Name (ARN) of the cluster.</p>
    #   @return [String]
    # @!attribute cluster_operation_arn
    #   <p>The Amazon Resource Name (ARN) of the cluster operation.</p>
    #   @return [String]
    class UpdateBrokerTypeResponse < Struct.new(
      nil,
      :cluster_arn,
      :cluster_operation_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Updates an existing channel's destination configuration. You must update the same destination type the channel was created with; the destination type cannot be changed.</p>
    # @!attribute channel_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the channel.</p>
    #   @return [String]
    # @!attribute cluster_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the cluster.</p>
    #   @return [String]
    # @!attribute iceberg_destination_update
    #   <p>Updates fields on an Apache Iceberg destination. Use only when the channel was created with an Iceberg destination.</p>
    #   @return [Types::IcebergDestinationUpdate]
    # @!attribute s3_destination_update
    #   <p>Updates fields on an Amazon S3 destination. Use only when the channel was created with an Amazon S3 destination.</p>
    #   @return [Types::S3DestinationUpdate]
    class UpdateChannelRequest < Struct.new(
      nil,
      :channel_arn,
      :cluster_arn,
      :iceberg_destination_update,
      :s3_destination_update,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Returns the channel ARN and the cluster-operation ARN that tracks the asynchronous update.</p>
    # @!attribute channel_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the channel.</p>
    #   @return [String]
    # @!attribute cluster_operation_arn
    #   <p>The Amazon Resource Name (ARN) of the cluster operation.</p>
    #   @return [String]
    class UpdateChannelResponse < Struct.new(
      nil,
      :channel_arn,
      :cluster_operation_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the cluster.</p>
    #   @return [String]
    # @!attribute configuration_info
    #   <p>Represents the configuration that you want MSK to use for the brokers in a cluster.</p>
    #   @return [Types::ConfigurationInfo]
    # @!attribute current_version
    #   <p>The version of the cluster that needs to be updated.</p>
    #   @return [String]
    class UpdateClusterConfigurationRequest < Struct.new(
      nil,
      :cluster_arn,
      :configuration_info,
      :current_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_arn
    #   <p>The Amazon Resource Name (ARN) of the cluster.</p>
    #   @return [String]
    # @!attribute cluster_operation_arn
    #   <p>The Amazon Resource Name (ARN) of the cluster operation.</p>
    #   @return [String]
    class UpdateClusterConfigurationResponse < Struct.new(
      nil,
      :cluster_arn,
      :cluster_operation_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_arn
    #   <p>The Amazon Resource Name (ARN) of the cluster to be updated.</p>
    #   @return [String]
    # @!attribute configuration_info
    #   <p>The custom configuration that should be applied on the new version of cluster.</p>
    #   @return [Types::ConfigurationInfo]
    # @!attribute current_version
    #   <p>Current cluster version.</p>
    #   @return [String]
    # @!attribute target_kafka_version
    #   <p>Target Kafka version.</p>
    #   @return [String]
    class UpdateClusterKafkaVersionRequest < Struct.new(
      nil,
      :cluster_arn,
      :configuration_info,
      :current_version,
      :target_kafka_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_arn
    #   <p>The Amazon Resource Name (ARN) of the cluster.</p>
    #   @return [String]
    # @!attribute cluster_operation_arn
    #   <p>The Amazon Resource Name (ARN) of the cluster operation.</p>
    #   @return [String]
    class UpdateClusterKafkaVersionResponse < Struct.new(
      nil,
      :cluster_arn,
      :cluster_operation_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the configuration.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the configuration revision.</p>
    #   @return [String]
    # @!attribute server_properties
    #   <p>Contents of the <filename>server.properties</filename> file. When using the API, you must ensure that the contents of the file are base64 encoded.
    #                  When using the AWS Management Console, the SDK, or the AWS CLI, the contents of <filename>server.properties</filename> can be in plaintext.</p>
    #   @return [String]
    class UpdateConfigurationRequest < Struct.new(
      nil,
      :arn,
      :description,
      :server_properties,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the configuration.</p>
    #   @return [String]
    # @!attribute latest_revision
    #   <p>Latest revision of the configuration.</p>
    #   @return [Types::ConfigurationRevision]
    class UpdateConfigurationResponse < Struct.new(
      nil,
      :arn,
      :latest_revision,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Request body for UpdateConnectivity.
    # @!attribute cluster_arn
    #   <p>The Amazon Resource Name (ARN) of the configuration.</p>
    #   @return [String]
    # @!attribute connectivity_info
    #   <p>Information about the broker access configuration.</p>
    #   @return [Types::ConnectivityInfo]
    # @!attribute current_version
    #   <p>The version of the MSK cluster to update. Cluster versions aren't simple numbers. You can describe an MSK cluster to find its version. When this update operation is successful, it generates a new cluster version.</p>
    #   @return [String]
    # @!attribute zookeeper_access
    #   <p>Access control settings for zookeeper</p>
    #   @return [Types::ZookeeperAccess]
    class UpdateConnectivityRequest < Struct.new(
      nil,
      :cluster_arn,
      :connectivity_info,
      :current_version,
      :zookeeper_access,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_arn
    #   <p>The Amazon Resource Name (ARN) of the cluster.</p>
    #   @return [String]
    # @!attribute cluster_operation_arn
    #   <p>The Amazon Resource Name (ARN) of the cluster operation.</p>
    #   @return [String]
    class UpdateConnectivityResponse < Struct.new(
      nil,
      :cluster_arn,
      :cluster_operation_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Request body for UpdateMonitoring.
    # @!attribute cluster_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the cluster.</p>
    #   @return [String]
    # @!attribute current_version
    #   <p>The version of the MSK cluster to update. Cluster versions aren't simple numbers. You can describe an MSK cluster to find its version. When this update operation is successful, it generates a new cluster version.</p>
    #   @return [String]
    # @!attribute enhanced_monitoring
    #   <p>Specifies which Apache Kafka metrics Amazon MSK gathers and sends to Amazon CloudWatch for this cluster.</p>
    #   @return [String]
    # @!attribute open_monitoring
    #   <p>The settings for open monitoring.</p>
    #   @return [Types::OpenMonitoringInfo]
    # @!attribute logging_info
    #   @return [Types::LoggingInfo]
    class UpdateMonitoringRequest < Struct.new(
      nil,
      :cluster_arn,
      :current_version,
      :enhanced_monitoring,
      :open_monitoring,
      :logging_info,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_arn
    #   <p>The Amazon Resource Name (ARN) of the cluster.</p>
    #   @return [String]
    # @!attribute cluster_operation_arn
    #   <p>The Amazon Resource Name (ARN) of the cluster operation.</p>
    #   @return [String]
    class UpdateMonitoringResponse < Struct.new(
      nil,
      :cluster_arn,
      :cluster_operation_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_arn
    #   <p>The Amazon Resource Name (ARN) of the cluster.</p>
    #   @return [String]
    # @!attribute current_version
    #   <p>The current version of the cluster.</p>
    #   @return [String]
    # @!attribute rebalancing
    #   <p>Specifies if intelligent rebalancing should be turned on for your cluster. The default intelligent rebalancing status is ACTIVE for all new MSK Provisioned clusters that you create with Express brokers.</p>
    #   @return [Types::Rebalancing]
    class UpdateRebalancingRequest < Struct.new(
      nil,
      :cluster_arn,
      :current_version,
      :rebalancing,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_arn
    #   <p>The Amazon Resource Name (ARN) of the cluster whose intelligent rebalancing status you've updated.</p>
    #   @return [String]
    # @!attribute cluster_operation_arn
    #   <p>The Amazon Resource Name (ARN) of the cluster operation.</p>
    #   @return [String]
    class UpdateRebalancingResponse < Struct.new(
      nil,
      :cluster_arn,
      :cluster_operation_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Update information relating to replication between a given source and target Kafka cluster.</p>
    # @!attribute consumer_group_replication
    #   <p>Updated consumer group replication information.</p>
    #   @return [Types::ConsumerGroupReplicationUpdate]
    # @!attribute current_version
    #   <p>Current replicator version.</p>
    #   @return [String]
    # @!attribute replicator_arn
    #   <p>The Amazon Resource Name (ARN) of the replicator to be updated.</p>
    #   @return [String]
    # @!attribute source_kafka_cluster_arn
    #   <p>The ARN of the source Kafka cluster.</p>
    #   @return [String]
    # @!attribute source_kafka_cluster_id
    #   <p>The ID of the source Kafka cluster.</p>
    #   @return [String]
    # @!attribute target_kafka_cluster_arn
    #   <p>The ARN of the target Kafka cluster.</p>
    #   @return [String]
    # @!attribute target_kafka_cluster_id
    #   <p>The ID of the target Kafka cluster.</p>
    #   @return [String]
    # @!attribute topic_replication
    #   <p>Updated topic replication information.</p>
    #   @return [Types::TopicReplicationUpdate]
    # @!attribute log_delivery
    #   <p>Configuration for delivering replicator logs to customer destinations.</p>
    #   @return [Types::LogDelivery]
    class UpdateReplicationInfoRequest < Struct.new(
      nil,
      :consumer_group_replication,
      :current_version,
      :replicator_arn,
      :source_kafka_cluster_arn,
      :source_kafka_cluster_id,
      :target_kafka_cluster_arn,
      :target_kafka_cluster_id,
      :topic_replication,
      :log_delivery,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute replicator_arn
    #   <p>The Amazon Resource Name (ARN) of the replicator.</p>
    #   @return [String]
    # @!attribute replicator_state
    #   <p>State of the replicator.</p>
    #   @return [String]
    class UpdateReplicationInfoResponse < Struct.new(
      nil,
      :replicator_arn,
      :replicator_state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_authentication
    #   <p>Includes all client authentication related information.</p>
    #   @return [Types::ClientAuthentication]
    # @!attribute cluster_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the cluster.</p>
    #   @return [String]
    # @!attribute current_version
    #   <p>The version of the MSK cluster to update. Cluster versions aren't simple numbers. You can describe an MSK cluster to find its version. When this update operation is successful, it generates a new cluster version.</p>
    #   @return [String]
    # @!attribute encryption_info
    #   <p>Includes all encryption-related information.</p>
    #   @return [Types::EncryptionInfo]
    class UpdateSecurityRequest < Struct.new(
      nil,
      :client_authentication,
      :cluster_arn,
      :current_version,
      :encryption_info,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_arn
    #   <p>The Amazon Resource Name (ARN) of the cluster.</p>
    #   @return [String]
    # @!attribute cluster_operation_arn
    #   <p>The Amazon Resource Name (ARN) of the cluster operation.</p>
    #   @return [String]
    class UpdateSecurityResponse < Struct.new(
      nil,
      :cluster_arn,
      :cluster_operation_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request object for UpdateStorage api. Its used to update the storage attributes for the cluster.</p>
    # @!attribute cluster_arn
    #   <p>The Amazon Resource Name (ARN) of the cluster to be updated.</p>
    #   @return [String]
    # @!attribute current_version
    #   <p>The version of cluster to update from. A successful operation will then generate a new version.</p>
    #   @return [String]
    # @!attribute provisioned_throughput
    #   <p>EBS volume provisioned throughput information.</p>
    #   @return [Types::ProvisionedThroughput]
    # @!attribute storage_mode
    #   <p>Controls storage mode for supported storage tiers.</p>
    #   @return [String]
    # @!attribute volume_size_gb
    #   <p>size of the EBS volume to update.</p>
    #   @return [Integer]
    class UpdateStorageRequest < Struct.new(
      nil,
      :cluster_arn,
      :current_version,
      :provisioned_throughput,
      :storage_mode,
      :volume_size_gb,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_arn
    #   <p>The Amazon Resource Name (ARN) of the cluster.</p>
    #   @return [String]
    # @!attribute cluster_operation_arn
    #   <p>The Amazon Resource Name (ARN) of the cluster operation.</p>
    #   @return [String]
    class UpdateStorageResponse < Struct.new(
      nil,
      :cluster_arn,
      :cluster_operation_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the cluster.</p>
    #   @return [String]
    # @!attribute topic_name
    #   <p>The name of the topic to update configuration for.</p>
    #   @return [String]
    # @!attribute configs
    #   <p>The new topic configurations encoded as a Base64 string.</p>
    #   @return [String]
    # @!attribute partition_count
    #   <p>The new total number of partitions for the topic.</p>
    #   @return [Integer]
    class UpdateTopicRequest < Struct.new(
      nil,
      :cluster_arn,
      :topic_name,
      :configs,
      :partition_count,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute topic_arn
    #   <p>The Amazon Resource Name (ARN) of the topic.</p>
    #   @return [String]
    # @!attribute topic_name
    #   <p>The name of the topic whose configuration was updated.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the topic update.</p>
    #   @return [String]
    class UpdateTopicResponse < Struct.new(
      nil,
      :topic_arn,
      :topic_name,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Description of the requester that calls the API operation.</p>
    # @!attribute type
    #   <p>The identity type of the requester that calls the API operation.</p>
    #   @return [String]
    # @!attribute principal_id
    #   <p>A unique identifier for the requester that calls the API operation.</p>
    #   @return [String]
    class UserIdentity < Struct.new(
      nil,
      :type,
      :principal_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration of the Amazon VPCs for the cluster.</p>
    # @!attribute subnet_ids
    #   <p>The IDs of the subnets associated with the cluster.</p>
    #   @return [Array<String>]
    # @!attribute security_group_ids
    #   <p>The IDs of the security groups associated with the cluster.</p>
    #   @return [Array<String>]
    class VpcConfig < Struct.new(
      nil,
      :subnet_ids,
      :security_group_ids,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The VPC connection object.</p>
    # @!attribute vpc_connection_arn
    #   <p>The ARN that identifies the Vpc Connection.</p>
    #   @return [String]
    # @!attribute target_cluster_arn
    #   <p>The ARN that identifies the Cluster which the Vpc Connection belongs to.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>Creation time of the Vpc Connection.</p>
    #   @return [Time]
    # @!attribute authentication
    #   <p>Information about the auth scheme of Vpc Connection.</p>
    #   @return [String]
    # @!attribute vpc_id
    #   <p>The vpcId that belongs to the Vpc Connection.</p>
    #   @return [String]
    # @!attribute state
    #   <p>State of the Vpc Connection.</p>
    #   @return [String]
    class VpcConnection < Struct.new(
      nil,
      :vpc_connection_arn,
      :target_cluster_arn,
      :creation_time,
      :authentication,
      :vpc_id,
      :state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Description of the VPC connection.</p>
    # @!attribute vpc_connection_arn
    #   <p>The Amazon Resource Name (ARN) of the VPC connection.</p>
    #   @return [String]
    # @!attribute owner
    #   <p>The owner of the VPC Connection.</p>
    #   @return [String]
    # @!attribute user_identity
    #   <p>Description of the requester that calls the API operation.</p>
    #   @return [Types::UserIdentity]
    # @!attribute creation_time
    #   <p>The time when Amazon MSK creates the VPC Connnection.</p>
    #   @return [Time]
    class VpcConnectionInfo < Struct.new(
      nil,
      :vpc_connection_arn,
      :owner,
      :user_identity,
      :creation_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Description of the VPC connection.
    # @!attribute creation_time
    #   <p>The time when Amazon MSK creates the VPC Connnection.</p>
    #   @return [Time]
    # @!attribute owner
    #   <p>The owner of the VPC Connection.</p>
    #   @return [String]
    # @!attribute user_identity
    #   <p>Description of the requester that calls the API operation.</p>
    #   @return [Types::UserIdentity]
    # @!attribute vpc_connection_arn
    #   <p>The Amazon Resource Name (ARN) of the VPC connection.</p>
    #   @return [String]
    class VpcConnectionInfoServerless < Struct.new(
      nil,
      :creation_time,
      :owner,
      :user_identity,
      :vpc_connection_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # VPC connectivity access control for brokers.
    # @!attribute client_authentication
    #   <p>Includes all client authentication information for VPC connectivity.</p>
    #   @return [Types::VpcConnectivityClientAuthentication]
    class VpcConnectivity < Struct.new(
      nil,
      :client_authentication,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Includes all client authentication information for VPC connectivity.</p>
    # @!attribute sasl
    #   <p>SASL authentication type details for VPC connectivity.</p>
    #   @return [Types::VpcConnectivitySasl]
    # @!attribute tls
    #   <p>TLS authentication type details for VPC connectivity.</p>
    #   @return [Types::VpcConnectivityTls]
    class VpcConnectivityClientAuthentication < Struct.new(
      nil,
      :sasl,
      :tls,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details for IAM access control for VPC connectivity.</p>
    # @!attribute enabled
    #   <p>SASL/IAM authentication is on or off for VPC connectivity.</p>
    #   @return [Boolean]
    class VpcConnectivityIam < Struct.new(
      nil,
      :enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details for SASL client authentication for VPC connectivity.</p>
    # @!attribute scram
    #   <p>Details for SASL/SCRAM client authentication for VPC connectivity.</p>
    #   @return [Types::VpcConnectivityScram]
    # @!attribute iam
    #   <p>Details for SASL/IAM client authentication for VPC connectivity.</p>
    #   @return [Types::VpcConnectivityIam]
    class VpcConnectivitySasl < Struct.new(
      nil,
      :scram,
      :iam,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details for SASL/SCRAM client authentication for VPC connectivity.</p>
    # @!attribute enabled
    #   <p>SASL/SCRAM authentication is on or off for VPC connectivity.</p>
    #   @return [Boolean]
    class VpcConnectivityScram < Struct.new(
      nil,
      :enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details for TLS client authentication for VPC connectivity.</p>
    # @!attribute enabled
    #   <p>TLS authentication is on or off for VPC connectivity.</p>
    #   @return [Boolean]
    class VpcConnectivityTls < Struct.new(
      nil,
      :enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Access control settings for zookeeper</p>
    # @!attribute enabled
    #   <p>Zookeeper Access was on or off for the cluster</p>
    #   @return [Boolean]
    class ZookeeperAccess < Struct.new(
      nil,
      :enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Zookeeper node information.</p>
    # @!attribute attached_eni_id
    #   <p>The attached elastic network interface of the broker.</p>
    #   @return [String]
    # @!attribute client_vpc_ip_address
    #   <p>The virtual private cloud (VPC) IP address of the client.</p>
    #   @return [String]
    # @!attribute endpoints
    #   <p>Endpoints for accessing the ZooKeeper.</p>
    #   @return [Array<String>]
    # @!attribute zookeeper_id
    #   <p>The role-specific ID for Zookeeper.</p>
    #   @return [Float]
    # @!attribute zookeeper_version
    #   <p>The version of Zookeeper.</p>
    #   @return [String]
    class ZookeeperNodeInfo < Struct.new(
      nil,
      :attached_eni_id,
      :client_vpc_ip_address,
      :endpoints,
      :zookeeper_id,
      :zookeeper_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
