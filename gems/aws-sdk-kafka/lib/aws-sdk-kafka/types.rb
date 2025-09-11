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
      :msk_cluster_arn,
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
      :configuration_arn,
      :configuration_revision,
      :kafka_version,
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

    # <p>Returns information about a cluster.</p>
    # @!attribute active_operation_arn
    #   <p>Arn of active cluster operation.</p>
    #   @return [String]
    # @!attribute broker_node_group_info
    #   <p>Information about the broker nodes.</p>
    #   @return [Types::BrokerNodeGroupInfo]
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
      :active_operation_arn,
      :broker_node_group_info,
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
      :operation_steps,
      :source_cluster_info,
      :target_cluster_info,
      :vpc_connection_info,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Returns information about a serverless cluster operation.</p>
    # @!attribute vpc_connection_info
    #   <p>Description of the VPC connection for CreateVpcConnection and DeleteVpcConnection operations.</p>
    #   @return [Types::VpcConnectionInfoServerless]
    class ClusterOperationV2Serverless < Struct.new(
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
    class ConnectivityInfo < Struct.new(
      :public_access,
      :vpc_connectivity,
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
    class ConsumerGroupReplication < Struct.new(
      :consumer_groups_to_exclude,
      :consumer_groups_to_replicate,
      :detect_and_copy_new_consumer_groups,
      :synchronise_consumer_group_offsets,
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
      :consumer_groups_to_exclude,
      :consumer_groups_to_replicate,
      :detect_and_copy_new_consumer_groups,
      :synchronise_consumer_group_offsets,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Controller node information.</p>
    # @!attribute endpoints
    #   <p>Endpoints for accessing the Controller.</p>
    #   @return [Array<String>]
    class ControllerNodeInfo < Struct.new(
      :endpoints,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute broker_node_group_info
    #   <p>Information about the broker nodes in the cluster.</p>
    #   @return [Types::BrokerNodeGroupInfo]
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
      :broker_node_group_info,
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
    class CreateReplicatorRequest < Struct.new(
      :description,
      :kafka_clusters,
      :replication_info_list,
      :replicator_name,
      :service_execution_role_arn,
      :tags,
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
      :replicator_arn,
      :replicator_name,
      :replicator_state,
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

    # @!attribute cluster_arn
    #   <p>The Amazon Resource Name (ARN) of the cluster.</p>
    #   @return [String]
    class DeleteClusterPolicyRequest < Struct.new(
      :cluster_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteClusterPolicyResponse < Struct.new(
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
      :replicator_arn,
      :replicator_state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies an MSK VPC connection.</p>
    #   @return [String]
    class DeleteVpcConnectionRequest < Struct.new(
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
      :vpc_connection_arn,
      :state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_operation_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the MSK cluster operation.</p>
    #   @return [String]
    class DescribeClusterOperationRequest < Struct.new(
      :cluster_operation_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_operation_info
    #   <p>Cluster operation information</p>
    #   @return [Types::ClusterOperationInfo]
    class DescribeClusterOperationResponse < Struct.new(
      :cluster_operation_info,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_operation_arn
    #   ARN of the cluster operation to describe.
    #   @return [String]
    class DescribeClusterOperationV2Request < Struct.new(
      :cluster_operation_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_operation_info
    #   <p>Cluster operation information</p>
    #   @return [Types::ClusterOperationV2]
    class DescribeClusterOperationV2Response < Struct.new(
      :cluster_operation_info,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the cluster.</p>
    #   @return [String]
    class DescribeClusterRequest < Struct.new(
      :cluster_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_info
    #   <p>The cluster information.</p>
    #   @return [Types::ClusterInfo]
    class DescribeClusterResponse < Struct.new(
      :cluster_info,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the cluster.</p>
    #   @return [String]
    class DescribeClusterV2Request < Struct.new(
      :cluster_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_info
    #   <p>The cluster information.</p>
    #   @return [Types::Cluster]
    class DescribeClusterV2Response < Struct.new(
      :cluster_info,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies an MSK configuration and all of its revisions.</p>
    #   @return [String]
    class DescribeConfigurationRequest < Struct.new(
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
    class DescribeReplicatorResponse < Struct.new(
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
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies a MSK VPC connection.</p>
    #   @return [String]
    class DescribeVpcConnectionRequest < Struct.new(
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

    # <p>Contains information about the EBS storage volumes attached to Apache Kafka broker nodes.</p>
    # @!attribute provisioned_throughput
    #   <p>EBS volume provisioned throughput information.</p>
    #   @return [Types::ProvisionedThroughput]
    # @!attribute volume_size
    #   <p>The size in GiB of the EBS volume for the data drive on each broker node.</p>
    #   @return [Integer]
    class EBSStorageInfo < Struct.new(
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
      :data_volume_kms_key_id,
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
    class GetBootstrapBrokersResponse < Struct.new(
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
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_arn
    #   <p>The Amazon Resource Name (ARN) of the cluster.</p>
    #   @return [String]
    class GetClusterPolicyRequest < Struct.new(
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
      :cluster_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute compatible_kafka_versions
    #   <p>A list of CompatibleKafkaVersion objects.</p>
    #   @return [Array<Types::CompatibleKafkaVersion>]
    class GetCompatibleKafkaVersionsResponse < Struct.new(
      :compatible_kafka_versions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details for IAM access control.</p>
    # @!attribute enabled
    #   <p>Indicates whether IAM access control is enabled.</p>
    #   @return [Boolean]
    class Iam < Struct.new(
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
    class InternalServerErrorException < Struct.new(
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
      :enabled_in_broker,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about Kafka Cluster to be used as source / target for replication.</p>
    # @!attribute amazon_msk_cluster
    #   <p>Details of an Amazon MSK Cluster.</p>
    #   @return [Types::AmazonMskCluster]
    # @!attribute vpc_config
    #   <p>Details of an Amazon VPC which has network connectivity to the Apache Kafka cluster.</p>
    #   @return [Types::KafkaClusterClientVpcConfig]
    class KafkaCluster < Struct.new(
      :amazon_msk_cluster,
      :vpc_config,
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
    # @!attribute kafka_cluster_alias
    #   <p>The alias of the Kafka cluster. Used to prefix names of replicated topics.</p>
    #   @return [String]
    # @!attribute vpc_config
    #   <p>Details of an Amazon VPC which has network connectivity to the Apache Kafka cluster.</p>
    #   @return [Types::KafkaClusterClientVpcConfig]
    class KafkaClusterDescription < Struct.new(
      :amazon_msk_cluster,
      :kafka_cluster_alias,
      :vpc_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summarized information about Kafka Cluster used as source / target for replication.</p>
    # @!attribute amazon_msk_cluster
    #   <p>Details of an Amazon MSK Cluster.</p>
    #   @return [Types::AmazonMskCluster]
    # @!attribute kafka_cluster_alias
    #   <p>The alias of the Kafka cluster. Used to prefix names of replicated topics.</p>
    #   @return [String]
    class KafkaClusterSummary < Struct.new(
      :amazon_msk_cluster,
      :kafka_cluster_alias,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute version
    #   @return [String]
    # @!attribute status
    #   @return [String]
    class KafkaVersion < Struct.new(
      :version,
      :status,
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
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>The key-value pair for the resource tag.</p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceResponse < Struct.new(
      :tags,
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
      :vpc_connections,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute broker_logs
    #   @return [Types::BrokerLogs]
    class LoggingInfo < Struct.new(
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
    class MutableClusterInfo < Struct.new(
      :broker_ebs_volume_info,
      :configuration_info,
      :number_of_broker_nodes,
      :enhanced_monitoring,
      :open_monitoring,
      :kafka_version,
      :logging_info,
      :instance_type,
      :client_authentication,
      :encryption_info,
      :connectivity_info,
      :storage_mode,
      :broker_count_update_info,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Indicates whether you want to turn on or turn off the Node Exporter.</p>
    # @!attribute enabled_in_broker
    #   <p>Indicates whether you want to turn on or turn off the Node Exporter.</p>
    #   @return [Boolean]
    class NodeExporter < Struct.new(
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
    class NotFoundException < Struct.new(
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
      :prometheus,
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
      :customer_action_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provisioned cluster request.</p>
    # @!attribute broker_node_group_info
    #   <p>Information about the brokers.</p>
    #   @return [Types::BrokerNodeGroupInfo]
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
      :current_version,
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
      :cluster_arn,
      :cluster_operation_arn,
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
      :cluster_arn,
      :vpc_connection_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class RejectClientVpcConnectionResponse < Struct.new(
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
    # @!attribute target_compression_type
    #   <p>The compression type to use when producing records to target cluster.</p>
    #   @return [String]
    # @!attribute target_kafka_cluster_arn
    #   <p>The ARN of the target Kafka cluster.</p>
    #   @return [String]
    # @!attribute topic_replication
    #   <p>Configuration relating to topic replication.</p>
    #   @return [Types::TopicReplication]
    class ReplicationInfo < Struct.new(
      :consumer_group_replication,
      :source_kafka_cluster_arn,
      :target_compression_type,
      :target_kafka_cluster_arn,
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
      :type,
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
      :bucket,
      :enabled,
      :prefix,
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
      :scram,
      :iam,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details for SASL/SCRAM client authentication.</p>
    # @!attribute enabled
    #   <p>SASL/SCRAM authentication is enabled or not.</p>
    #   @return [Boolean]
    class Scram < Struct.new(
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
    class Serverless < Struct.new(
      :vpc_configs,
      :client_authentication,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Includes all client authentication information.</p>
    # @!attribute sasl
    #   <p>Details for ClientAuthentication using SASL.</p>
    #   @return [Types::ServerlessSasl]
    class ServerlessClientAuthentication < Struct.new(
      :sasl,
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
      :ebs_storage_info,
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
      :invalid_parameter,
      :message,
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
      :cluster_arn,
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
    class UpdateConnectivityRequest < Struct.new(
      :cluster_arn,
      :connectivity_info,
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
    class UpdateConnectivityResponse < Struct.new(
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
    # @!attribute target_kafka_cluster_arn
    #   <p>The ARN of the target Kafka cluster.</p>
    #   @return [String]
    # @!attribute topic_replication
    #   <p>Updated topic replication information.</p>
    #   @return [Types::TopicReplicationUpdate]
    class UpdateReplicationInfoRequest < Struct.new(
      :consumer_group_replication,
      :current_version,
      :replicator_arn,
      :source_kafka_cluster_arn,
      :target_kafka_cluster_arn,
      :topic_replication,
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
      :cluster_arn,
      :cluster_operation_arn,
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
