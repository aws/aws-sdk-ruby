# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Kafka
  module Types

    # Request body for BatchAssociateScramSecret.
    #
    # @note When making an API call, you may pass BatchAssociateScramSecretRequest
    #   data as a hash:
    #
    #       {
    #         cluster_arn: "__string", # required
    #         secret_arn_list: ["__string"], # required
    #       }
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
    # @note When making an API call, you may pass BrokerEBSVolumeInfo
    #   data as a hash:
    #
    #       {
    #         kafka_broker_node_id: "__string", # required
    #         volume_size_gb: 1, # required
    #       }
    #
    # @!attribute [rw] kafka_broker_node_id
    #   The ID of the broker to update.
    #   @return [String]
    #
    # @!attribute [rw] volume_size_gb
    #   Size of the EBS volume to update.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/BrokerEBSVolumeInfo AWS API Documentation
    #
    class BrokerEBSVolumeInfo < Struct.new(
      :kafka_broker_node_id,
      :volume_size_gb)
      SENSITIVE = []
      include Aws::Structure
    end

    # The broker logs configuration for this MSK cluster.
    #
    # @note When making an API call, you may pass BrokerLogs
    #   data as a hash:
    #
    #       {
    #         cloud_watch_logs: {
    #           enabled: false, # required
    #           log_group: "__string",
    #         },
    #         firehose: {
    #           delivery_stream: "__string",
    #           enabled: false, # required
    #         },
    #         s3: {
    #           bucket: "__string",
    #           enabled: false, # required
    #           prefix: "__string",
    #         },
    #       }
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

    # Describes the setup to be used for Kafka broker nodes in the cluster.
    #
    # @note When making an API call, you may pass BrokerNodeGroupInfo
    #   data as a hash:
    #
    #       {
    #         broker_az_distribution: "DEFAULT", # accepts DEFAULT
    #         client_subnets: ["__string"], # required
    #         instance_type: "__stringMin5Max32", # required
    #         security_groups: ["__string"],
    #         storage_info: {
    #           ebs_storage_info: {
    #             volume_size: 1,
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] broker_az_distribution
    #   The distribution of broker nodes across Availability Zones.
    #   @return [String]
    #
    # @!attribute [rw] client_subnets
    #   The list of subnets to connect to in the client virtual private
    #   cloud (VPC). AWS creates elastic network interfaces inside these
    #   subnets. Client applications use elastic network interfaces to
    #   produce and consume data. Client subnets can't be in Availability
    #   Zone us-east-1e.
    #   @return [Array<String>]
    #
    # @!attribute [rw] instance_type
    #   The type of Amazon EC2 instances to use for Kafka brokers. The
    #   following instance types are allowed: kafka.m5.large,
    #   kafka.m5.xlarge, kafka.m5.2xlarge, kafka.m5.4xlarge,
    #   kafka.m5.12xlarge, and kafka.m5.24xlarge.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/BrokerNodeGroupInfo AWS API Documentation
    #
    class BrokerNodeGroupInfo < Struct.new(
      :broker_az_distribution,
      :client_subnets,
      :instance_type,
      :security_groups,
      :storage_info)
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
    #   Kafka brokers in the cluster.
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

    # Includes all client authentication information.
    #
    # @note When making an API call, you may pass ClientAuthentication
    #   data as a hash:
    #
    #       {
    #         sasl: {
    #           scram: {
    #             enabled: false,
    #           },
    #         },
    #         tls: {
    #           certificate_authority_arn_list: ["__string"],
    #         },
    #       }
    #
    # @!attribute [rw] sasl
    #   @return [Types::Sasl]
    #
    # @!attribute [rw] tls
    #   Details for ClientAuthentication using TLS.
    #   @return [Types::Tls]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/ClientAuthentication AWS API Documentation
    #
    class ClientAuthentication < Struct.new(
      :sasl,
      :tls)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details of the CloudWatch Logs destination for broker logs.
    #
    # @note When making an API call, you may pass CloudWatchLogs
    #   data as a hash:
    #
    #       {
    #         enabled: false, # required
    #         log_group: "__string",
    #       }
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
    #   Information about the broker nodes.
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
    #   Kafka brokers in the cluster.
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
    #   property has three possible values: DEFAULT, PER\_BROKER, and
    #   PER\_TOPIC\_PER\_BROKER. For a list of the metrics associated with
    #   each of these three levels of monitoring, see [Monitoring][1].
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
    #   The state of the cluster. The possible states are CREATING, ACTIVE,
    #   and FAILED.
    #   @return [String]
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
      :tags,
      :zookeeper_connect_string,
      :zookeeper_connect_string_tls)
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
      :target_cluster_info)
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

    # Contains source Kafka versions and compatible target Kafka versions.
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
    # @note When making an API call, you may pass ConfigurationInfo
    #   data as a hash:
    #
    #       {
    #         arn: "__string", # required
    #         revision: 1, # required
    #       }
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

    # Creates a cluster.
    #
    # @note When making an API call, you may pass CreateClusterRequest
    #   data as a hash:
    #
    #       {
    #         broker_node_group_info: { # required
    #           broker_az_distribution: "DEFAULT", # accepts DEFAULT
    #           client_subnets: ["__string"], # required
    #           instance_type: "__stringMin5Max32", # required
    #           security_groups: ["__string"],
    #           storage_info: {
    #             ebs_storage_info: {
    #               volume_size: 1,
    #             },
    #           },
    #         },
    #         client_authentication: {
    #           sasl: {
    #             scram: {
    #               enabled: false,
    #             },
    #           },
    #           tls: {
    #             certificate_authority_arn_list: ["__string"],
    #           },
    #         },
    #         cluster_name: "__stringMin1Max64", # required
    #         configuration_info: {
    #           arn: "__string", # required
    #           revision: 1, # required
    #         },
    #         encryption_info: {
    #           encryption_at_rest: {
    #             data_volume_kms_key_id: "__string", # required
    #           },
    #           encryption_in_transit: {
    #             client_broker: "TLS", # accepts TLS, TLS_PLAINTEXT, PLAINTEXT
    #             in_cluster: false,
    #           },
    #         },
    #         enhanced_monitoring: "DEFAULT", # accepts DEFAULT, PER_BROKER, PER_TOPIC_PER_BROKER
    #         kafka_version: "__stringMin1Max128", # required
    #         logging_info: {
    #           broker_logs: { # required
    #             cloud_watch_logs: {
    #               enabled: false, # required
    #               log_group: "__string",
    #             },
    #             firehose: {
    #               delivery_stream: "__string",
    #               enabled: false, # required
    #             },
    #             s3: {
    #               bucket: "__string",
    #               enabled: false, # required
    #               prefix: "__string",
    #             },
    #           },
    #         },
    #         number_of_broker_nodes: 1, # required
    #         open_monitoring: {
    #           prometheus: { # required
    #             jmx_exporter: {
    #               enabled_in_broker: false, # required
    #             },
    #             node_exporter: {
    #               enabled_in_broker: false, # required
    #             },
    #           },
    #         },
    #         tags: {
    #           "__string" => "__string",
    #         },
    #       }
    #
    # @!attribute [rw] broker_node_group_info
    #   Information about the broker nodes in the cluster.
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
    #   values are DEFAULT, PER\_BROKER, and PER\_TOPIC\_PER\_BROKER.
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
    #   The number of Kafka broker nodes in the Amazon MSK cluster.
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
      :tags)
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
    #   The state of the cluster. The possible states are CREATING, ACTIVE,
    #   and FAILED.
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
    # @note When making an API call, you may pass CreateConfigurationRequest
    #   data as a hash:
    #
    #       {
    #         description: "__string",
    #         kafka_versions: ["__string"],
    #         name: "__string", # required
    #         server_properties: "data", # required
    #       }
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

    # @note When making an API call, you may pass DeleteClusterRequest
    #   data as a hash:
    #
    #       {
    #         cluster_arn: "__string", # required
    #         current_version: "__string",
    #       }
    #
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
    #   The state of the cluster. The possible states are CREATING, ACTIVE,
    #   and FAILED.
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
    # @note When making an API call, you may pass DeleteConfigurationRequest
    #   data as a hash:
    #
    #       {
    #         arn: "__string", # required
    #       }
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

    # @note When making an API call, you may pass DescribeClusterOperationRequest
    #   data as a hash:
    #
    #       {
    #         cluster_operation_arn: "__string", # required
    #       }
    #
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

    # @note When making an API call, you may pass DescribeClusterRequest
    #   data as a hash:
    #
    #       {
    #         cluster_arn: "__string", # required
    #       }
    #
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

    # @note When making an API call, you may pass DescribeConfigurationRequest
    #   data as a hash:
    #
    #       {
    #         arn: "__string", # required
    #       }
    #
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

    # @note When making an API call, you may pass DescribeConfigurationRevisionRequest
    #   data as a hash:
    #
    #       {
    #         arn: "__string", # required
    #         revision: 1, # required
    #       }
    #
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

    # Request body for BatchDisassociateScramSecret.
    #
    # @note When making an API call, you may pass BatchDisassociateScramSecretRequest
    #   data as a hash:
    #
    #       {
    #         cluster_arn: "__string", # required
    #         secret_arn_list: ["__string"], # required
    #       }
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

    # Contains information about the EBS storage volumes attached to Kafka
    # broker nodes.
    #
    # @note When making an API call, you may pass EBSStorageInfo
    #   data as a hash:
    #
    #       {
    #         volume_size: 1,
    #       }
    #
    # @!attribute [rw] volume_size
    #   The size in GiB of the EBS volume for the data drive on each broker
    #   node.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/EBSStorageInfo AWS API Documentation
    #
    class EBSStorageInfo < Struct.new(
      :volume_size)
      SENSITIVE = []
      include Aws::Structure
    end

    # The data-volume encryption details.
    #
    # @note When making an API call, you may pass EncryptionAtRest
    #   data as a hash:
    #
    #       {
    #         data_volume_kms_key_id: "__string", # required
    #       }
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
    # @note When making an API call, you may pass EncryptionInTransit
    #   data as a hash:
    #
    #       {
    #         client_broker: "TLS", # accepts TLS, TLS_PLAINTEXT, PLAINTEXT
    #         in_cluster: false,
    #       }
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
    # @note When making an API call, you may pass EncryptionInfo
    #   data as a hash:
    #
    #       {
    #         encryption_at_rest: {
    #           data_volume_kms_key_id: "__string", # required
    #         },
    #         encryption_in_transit: {
    #           client_broker: "TLS", # accepts TLS, TLS_PLAINTEXT, PLAINTEXT
    #           in_cluster: false,
    #         },
    #       }
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

    # Firehose details for BrokerLogs.
    #
    # @note When making an API call, you may pass Firehose
    #   data as a hash:
    #
    #       {
    #         delivery_stream: "__string",
    #         enabled: false, # required
    #       }
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

    # @note When making an API call, you may pass GetBootstrapBrokersRequest
    #   data as a hash:
    #
    #       {
    #         cluster_arn: "__string", # required
    #       }
    #
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
    # @!attribute [rw] bootstrap_broker_string_tls
    #   A string containing one or more DNS names (or IP) and TLS port
    #   pairs. The following is an example.
    #
    #   <programlisting>\{ "BootstrapBrokerStringTls": "b-3.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9094,b-1.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9094,b-2.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9094" \}</programlisting>
    #   @return [String]
    #
    # @!attribute [rw] bootstrap_broker_string_sasl_scram
    #   A string containing one or more DNS names (or IP) and SASL SCRAM
    #   port pairs. The following is an example.
    #
    #   <programlisting>\{ "BootstrapBrokerStringSaslScram": "b-3.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9096,b-1.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9096,b-2.exampleClusterName.abcde.c2.kafka.us-east-1.amazonaws.com:9096" \}</programlisting>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/GetBootstrapBrokersResponse AWS API Documentation
    #
    class GetBootstrapBrokersResponse < Struct.new(
      :bootstrap_broker_string,
      :bootstrap_broker_string_tls,
      :bootstrap_broker_string_sasl_scram)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetCompatibleKafkaVersionsRequest
    #   data as a hash:
    #
    #       {
    #         cluster_arn: "__string",
    #       }
    #
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

    # Information about a Kafka version.
    #
    # @!attribute [rw] version
    #   The Kafka version.
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

    # @note When making an API call, you may pass ListClusterOperationsRequest
    #   data as a hash:
    #
    #       {
    #         cluster_arn: "__string", # required
    #         max_results: 1,
    #         next_token: "__string",
    #       }
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/ListClusterOperationsRequest AWS API Documentation
    #
    class ListClusterOperationsRequest < Struct.new(
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

    # @note When making an API call, you may pass ListClustersRequest
    #   data as a hash:
    #
    #       {
    #         cluster_name_filter: "__string",
    #         max_results: 1,
    #         next_token: "__string",
    #       }
    #
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

    # @note When making an API call, you may pass ListConfigurationRevisionsRequest
    #   data as a hash:
    #
    #       {
    #         arn: "__string", # required
    #         max_results: 1,
    #         next_token: "__string",
    #       }
    #
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

    # @note When making an API call, you may pass ListConfigurationsRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "__string",
    #       }
    #
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

    # @note When making an API call, you may pass ListKafkaVersionsRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "__string",
    #       }
    #
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
    #   An array of Kafka version objects.
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

    # @note When making an API call, you may pass ListNodesRequest
    #   data as a hash:
    #
    #       {
    #         cluster_arn: "__string", # required
    #         max_results: 1,
    #         next_token: "__string",
    #       }
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

    # @note When making an API call, you may pass ListScramSecretsRequest
    #   data as a hash:
    #
    #       {
    #         cluster_arn: "__string", # required
    #         max_results: 1,
    #         next_token: "__string",
    #       }
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

    # @note When making an API call, you may pass ListTagsForResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "__string", # required
    #       }
    #
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
    # @note When making an API call, you may pass LoggingInfo
    #   data as a hash:
    #
    #       {
    #         broker_logs: { # required
    #           cloud_watch_logs: {
    #             enabled: false, # required
    #             log_group: "__string",
    #           },
    #           firehose: {
    #             delivery_stream: "__string",
    #             enabled: false, # required
    #           },
    #           s3: {
    #             bucket: "__string",
    #             enabled: false, # required
    #             prefix: "__string",
    #           },
    #         },
    #       }
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
      :broker_logs)
      SENSITIVE = []
      include Aws::Structure
    end

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
    #   @return [String]
    #
    # @!attribute [rw] logging_info
    #   LoggingInfo details.
    #   @return [Types::LoggingInfo]
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
      :logging_info)
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
      :instance_type,
      :node_arn,
      :node_type,
      :zookeeper_node_info)
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

    # @note When making an API call, you may pass Sasl
    #   data as a hash:
    #
    #       {
    #         scram: {
    #           enabled: false,
    #         },
    #       }
    #
    # @!attribute [rw] scram
    #   @return [Types::Scram]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/Sasl AWS API Documentation
    #
    class Sasl < Struct.new(
      :scram)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass Scram
    #   data as a hash:
    #
    #       {
    #         enabled: false,
    #       }
    #
    # @!attribute [rw] enabled
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/Scram AWS API Documentation
    #
    class Scram < Struct.new(
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
    # @note When making an API call, you may pass StorageInfo
    #   data as a hash:
    #
    #       {
    #         ebs_storage_info: {
    #           volume_size: 1,
    #         },
    #       }
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

    # Tag a resource.
    #
    # @note When making an API call, you may pass TagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "__string", # required
    #         tags: { # required
    #           "__string" => "__string",
    #         },
    #       }
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

    # Details for client authentication using TLS.
    #
    # @note When making an API call, you may pass Tls
    #   data as a hash:
    #
    #       {
    #         certificate_authority_arn_list: ["__string"],
    #       }
    #
    # @!attribute [rw] certificate_authority_arn_list
    #   List of ACM Certificate Authority ARNs.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/Tls AWS API Documentation
    #
    class Tls < Struct.new(
      :certificate_authority_arn_list)
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

    # @note When making an API call, you may pass UntagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "__string", # required
    #         tag_keys: ["__string"], # required
    #       }
    #
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

    # Request body for UpdateBrokerCount.
    #
    # @note When making an API call, you may pass UpdateBrokerCountRequest
    #   data as a hash:
    #
    #       {
    #         cluster_arn: "__string", # required
    #         current_version: "__string", # required
    #         target_number_of_broker_nodes: 1, # required
    #       }
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

    # Request object for UpdateBrokerStorage.
    #
    # @note When making an API call, you may pass UpdateBrokerStorageRequest
    #   data as a hash:
    #
    #       {
    #         cluster_arn: "__string", # required
    #         current_version: "__string", # required
    #         target_broker_ebs_volume_info: [ # required
    #           {
    #             kafka_broker_node_id: "__string", # required
    #             volume_size_gb: 1, # required
    #           },
    #         ],
    #       }
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

    # Request body for UpdateClusterConfiguration.
    #
    # @note When making an API call, you may pass UpdateClusterConfigurationRequest
    #   data as a hash:
    #
    #       {
    #         cluster_arn: "__string", # required
    #         configuration_info: { # required
    #           arn: "__string", # required
    #           revision: 1, # required
    #         },
    #         current_version: "__string", # required
    #       }
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
    # @note When making an API call, you may pass UpdateClusterKafkaVersionRequest
    #   data as a hash:
    #
    #       {
    #         cluster_arn: "__string", # required
    #         configuration_info: {
    #           arn: "__string", # required
    #           revision: 1, # required
    #         },
    #         current_version: "__string", # required
    #         target_kafka_version: "__string", # required
    #       }
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
    #   Target Kafka version.
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
    # @note When making an API call, you may pass UpdateConfigurationRequest
    #   data as a hash:
    #
    #       {
    #         arn: "__string", # required
    #         description: "__string",
    #         server_properties: "data", # required
    #       }
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

    # Request body for UpdateMonitoring.
    #
    # @note When making an API call, you may pass UpdateMonitoringRequest
    #   data as a hash:
    #
    #       {
    #         cluster_arn: "__string", # required
    #         current_version: "__string", # required
    #         enhanced_monitoring: "DEFAULT", # accepts DEFAULT, PER_BROKER, PER_TOPIC_PER_BROKER
    #         open_monitoring: {
    #           prometheus: { # required
    #             jmx_exporter: {
    #               enabled_in_broker: false, # required
    #             },
    #             node_exporter: {
    #               enabled_in_broker: false, # required
    #             },
    #           },
    #         },
    #         logging_info: {
    #           broker_logs: { # required
    #             cloud_watch_logs: {
    #               enabled: false, # required
    #               log_group: "__string",
    #             },
    #             firehose: {
    #               delivery_stream: "__string",
    #               enabled: false, # required
    #             },
    #             s3: {
    #               bucket: "__string",
    #               enabled: false, # required
    #               prefix: "__string",
    #             },
    #           },
    #         },
    #       }
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

    # Zookeeper node information.
    #
    # @!attribute [rw] attached_eni_id
    #   The attached elastic network interface of the broker.
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
    # @note When making an API call, you may pass OpenMonitoringInfo
    #   data as a hash:
    #
    #       {
    #         prometheus: { # required
    #           jmx_exporter: {
    #             enabled_in_broker: false, # required
    #           },
    #           node_exporter: {
    #             enabled_in_broker: false, # required
    #           },
    #         },
    #       }
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
    # @note When making an API call, you may pass PrometheusInfo
    #   data as a hash:
    #
    #       {
    #         jmx_exporter: {
    #           enabled_in_broker: false, # required
    #         },
    #         node_exporter: {
    #           enabled_in_broker: false, # required
    #         },
    #       }
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

    # Request body for RebootBrokerNode action.
    #
    # @note When making an API call, you may pass RebootBrokerRequest
    #   data as a hash:
    #
    #       {
    #         broker_ids: ["__string"], # required
    #         cluster_arn: "__string", # required
    #       }
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

    # The details of the Amazon S3 destination for broker logs.
    #
    # @note When making an API call, you may pass S3
    #   data as a hash:
    #
    #       {
    #         bucket: "__string",
    #         enabled: false, # required
    #         prefix: "__string",
    #       }
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
    # @note When making an API call, you may pass JmxExporterInfo
    #   data as a hash:
    #
    #       {
    #         enabled_in_broker: false, # required
    #       }
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
    # @note When making an API call, you may pass NodeExporterInfo
    #   data as a hash:
    #
    #       {
    #         enabled_in_broker: false, # required
    #       }
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
