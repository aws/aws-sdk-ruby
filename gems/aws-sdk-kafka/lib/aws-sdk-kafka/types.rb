# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Kafka
  module Types

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
      include Aws::Structure
    end

    # Includes all client authentication information.
    #
    # @note When making an API call, you may pass ClientAuthentication
    #   data as a hash:
    #
    #       {
    #         tls: {
    #           certificate_authority_arn_list: ["__string"],
    #         },
    #       }
    #
    # @!attribute [rw] tls
    #   Details for ClientAuthentication using TLS.
    #   @return [Types::Tls]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/ClientAuthentication AWS API Documentation
    #
    class ClientAuthentication < Struct.new(
      :tls)
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
    # @!attribute [rw] current_version
    #   The current version of the MSK cluster.
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
      :current_version,
      :encryption_info,
      :enhanced_monitoring,
      :number_of_broker_nodes,
      :state,
      :tags,
      :zookeeper_connect_string)
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
      :operation_arn,
      :operation_state,
      :operation_type,
      :source_cluster_info,
      :target_cluster_info)
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
    #   The name of the configuration.
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
      :name)
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
    #         number_of_broker_nodes: 1, # required
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
    #   brokers in a cluster.
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
    # @!attribute [rw] number_of_broker_nodes
    #   The number of Kafka broker nodes in the Amazon MSK cluster.
    #   @return [Integer]
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
      :number_of_broker_nodes,
      :tags)
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
      include Aws::Structure
    end

    # Request body for CreateConfiguration.
    #
    # @note When making an API call, you may pass CreateConfigurationRequest
    #   data as a hash:
    #
    #       {
    #         description: "__string",
    #         kafka_versions: ["__string"], # required
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
    #   The name of the configuration.
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
    #   The name of the configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/CreateConfigurationResponse AWS API Documentation
    #
    class CreateConfigurationResponse < Struct.new(
      :arn,
      :creation_time,
      :latest_revision,
      :name)
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
    #   The name of the configuration.
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
      :name)
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
    #   and brokers. The following are the possible values.
    #
    #   TLS means that client-broker communication is enabled with TLS only.
    #
    #   TLS\_PLAINTEXT means that client-broker communication is enabled for
    #   both TLS-encrypted, as well as plaintext data.
    #
    #   PLAINTEXT means that client-broker communication is enabled in
    #   plaintext only.
    #
    #   The default value is TLS\_PLAINTEXT.
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
    #   pairs.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/GetBootstrapBrokersResponse AWS API Documentation
    #
    class GetBootstrapBrokersResponse < Struct.new(
      :bootstrap_broker_string,
      :bootstrap_broker_string_tls)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/MutableClusterInfo AWS API Documentation
    #
    class MutableClusterInfo < Struct.new(
      :broker_ebs_volume_info,
      :configuration_info,
      :number_of_broker_nodes)
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
    #   @return [Array<Types::BrokerEBSVolumeInfo>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/UpdateBrokerStorageRequest AWS API Documentation
    #
    class UpdateBrokerStorageRequest < Struct.new(
      :cluster_arn,
      :current_version,
      :target_broker_ebs_volume_info)
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
    #   brokers in a cluster.
    #   @return [Types::ConfigurationInfo]
    #
    # @!attribute [rw] current_version
    #   The version of the cluster that needs to be updated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14/UpdateClusterConfigurationRequest AWS API Documentation
    #
    class UpdateClusterConfigurationRequest < Struct.new(
      :cluster_arn,
      :configuration_info,
      :current_version)
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
      include Aws::Structure
    end

  end
end
