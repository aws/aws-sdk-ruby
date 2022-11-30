# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::KafkaConnect
  module Types

    # The details of the Apache Kafka cluster to which the connector is
    # connected.
    #
    # @!attribute [rw] bootstrap_servers
    #   The bootstrap servers of the cluster.
    #   @return [String]
    #
    # @!attribute [rw] vpc
    #   Details of an Amazon VPC which has network connectivity to the
    #   Apache Kafka cluster.
    #   @return [Types::Vpc]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafkaconnect-2021-09-14/ApacheKafkaCluster AWS API Documentation
    #
    class ApacheKafkaCluster < Struct.new(
      :bootstrap_servers,
      :vpc)
      SENSITIVE = []
      include Aws::Structure
    end

    # The description of the Apache Kafka cluster to which the connector is
    # connected.
    #
    # @!attribute [rw] bootstrap_servers
    #   The bootstrap servers of the cluster.
    #   @return [String]
    #
    # @!attribute [rw] vpc
    #   Details of an Amazon VPC which has network connectivity to the
    #   Apache Kafka cluster.
    #   @return [Types::VpcDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafkaconnect-2021-09-14/ApacheKafkaClusterDescription AWS API Documentation
    #
    class ApacheKafkaClusterDescription < Struct.new(
      :bootstrap_servers,
      :vpc)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies how the connector scales.
    #
    # @!attribute [rw] max_worker_count
    #   The maximum number of workers allocated to the connector.
    #   @return [Integer]
    #
    # @!attribute [rw] mcu_count
    #   The number of microcontroller units (MCUs) allocated to each
    #   connector worker. The valid values are 1,2,4,8.
    #   @return [Integer]
    #
    # @!attribute [rw] min_worker_count
    #   The minimum number of workers allocated to the connector.
    #   @return [Integer]
    #
    # @!attribute [rw] scale_in_policy
    #   The sacle-in policy for the connector.
    #   @return [Types::ScaleInPolicy]
    #
    # @!attribute [rw] scale_out_policy
    #   The sacle-out policy for the connector.
    #   @return [Types::ScaleOutPolicy]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafkaconnect-2021-09-14/AutoScaling AWS API Documentation
    #
    class AutoScaling < Struct.new(
      :max_worker_count,
      :mcu_count,
      :min_worker_count,
      :scale_in_policy,
      :scale_out_policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the auto scaling parameters for the connector.
    #
    # @!attribute [rw] max_worker_count
    #   The maximum number of workers allocated to the connector.
    #   @return [Integer]
    #
    # @!attribute [rw] mcu_count
    #   The number of microcontroller units (MCUs) allocated to each
    #   connector worker. The valid values are 1,2,4,8.
    #   @return [Integer]
    #
    # @!attribute [rw] min_worker_count
    #   The minimum number of workers allocated to the connector.
    #   @return [Integer]
    #
    # @!attribute [rw] scale_in_policy
    #   The sacle-in policy for the connector.
    #   @return [Types::ScaleInPolicyDescription]
    #
    # @!attribute [rw] scale_out_policy
    #   The sacle-out policy for the connector.&gt;
    #   @return [Types::ScaleOutPolicyDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafkaconnect-2021-09-14/AutoScalingDescription AWS API Documentation
    #
    class AutoScalingDescription < Struct.new(
      :max_worker_count,
      :mcu_count,
      :min_worker_count,
      :scale_in_policy,
      :scale_out_policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # The updates to the auto scaling parameters for the connector.
    #
    # @!attribute [rw] max_worker_count
    #   The target maximum number of workers allocated to the connector.
    #   @return [Integer]
    #
    # @!attribute [rw] mcu_count
    #   The target number of microcontroller units (MCUs) allocated to each
    #   connector worker. The valid values are 1,2,4,8.
    #   @return [Integer]
    #
    # @!attribute [rw] min_worker_count
    #   The target minimum number of workers allocated to the connector.
    #   @return [Integer]
    #
    # @!attribute [rw] scale_in_policy
    #   The target sacle-in policy for the connector.
    #   @return [Types::ScaleInPolicyUpdate]
    #
    # @!attribute [rw] scale_out_policy
    #   The target sacle-out policy for the connector.
    #   @return [Types::ScaleOutPolicyUpdate]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafkaconnect-2021-09-14/AutoScalingUpdate AWS API Documentation
    #
    class AutoScalingUpdate < Struct.new(
      :max_worker_count,
      :mcu_count,
      :min_worker_count,
      :scale_in_policy,
      :scale_out_policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # HTTP Status Code 400: Bad request due to incorrect input. Correct your
    # request and then retry it.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafkaconnect-2021-09-14/BadRequestException AWS API Documentation
    #
    class BadRequestException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the capacity of the connector, whether it is auto
    # scaled or provisioned.
    #
    # @!attribute [rw] auto_scaling
    #   Information about the auto scaling parameters for the connector.
    #   @return [Types::AutoScaling]
    #
    # @!attribute [rw] provisioned_capacity
    #   Details about a fixed capacity allocated to a connector.
    #   @return [Types::ProvisionedCapacity]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafkaconnect-2021-09-14/Capacity AWS API Documentation
    #
    class Capacity < Struct.new(
      :auto_scaling,
      :provisioned_capacity)
      SENSITIVE = []
      include Aws::Structure
    end

    # A description of the connector's capacity.
    #
    # @!attribute [rw] auto_scaling
    #   Describes the connector's auto scaling capacity.
    #   @return [Types::AutoScalingDescription]
    #
    # @!attribute [rw] provisioned_capacity
    #   Describes a connector's provisioned capacity.
    #   @return [Types::ProvisionedCapacityDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafkaconnect-2021-09-14/CapacityDescription AWS API Documentation
    #
    class CapacityDescription < Struct.new(
      :auto_scaling,
      :provisioned_capacity)
      SENSITIVE = []
      include Aws::Structure
    end

    # The target capacity for the connector. The capacity can be auto scaled
    # or provisioned.
    #
    # @!attribute [rw] auto_scaling
    #   The target auto scaling setting.
    #   @return [Types::AutoScalingUpdate]
    #
    # @!attribute [rw] provisioned_capacity
    #   The target settings for provisioned capacity.
    #   @return [Types::ProvisionedCapacityUpdate]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafkaconnect-2021-09-14/CapacityUpdate AWS API Documentation
    #
    class CapacityUpdate < Struct.new(
      :auto_scaling,
      :provisioned_capacity)
      SENSITIVE = []
      include Aws::Structure
    end

    # The settings for delivering connector logs to Amazon CloudWatch Logs.
    #
    # @!attribute [rw] enabled
    #   Whether log delivery to Amazon CloudWatch Logs is enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] log_group
    #   The name of the CloudWatch log group that is the destination for log
    #   delivery.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafkaconnect-2021-09-14/CloudWatchLogsLogDelivery AWS API Documentation
    #
    class CloudWatchLogsLogDelivery < Struct.new(
      :enabled,
      :log_group)
      SENSITIVE = []
      include Aws::Structure
    end

    # A description of the log delivery settings.
    #
    # @!attribute [rw] enabled
    #   Whether log delivery to Amazon CloudWatch Logs is enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] log_group
    #   The name of the CloudWatch log group that is the destination for log
    #   delivery.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafkaconnect-2021-09-14/CloudWatchLogsLogDeliveryDescription AWS API Documentation
    #
    class CloudWatchLogsLogDeliveryDescription < Struct.new(
      :enabled,
      :log_group)
      SENSITIVE = []
      include Aws::Structure
    end

    # HTTP Status Code 409: Conflict. A resource with this name already
    # exists. Retry your request with another name.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafkaconnect-2021-09-14/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary of a connector.
    #
    # @!attribute [rw] capacity
    #   The connector's compute capacity settings.
    #   @return [Types::CapacityDescription]
    #
    # @!attribute [rw] connector_arn
    #   The Amazon Resource Name (ARN) of the connector.
    #   @return [String]
    #
    # @!attribute [rw] connector_description
    #   The description of the connector.
    #   @return [String]
    #
    # @!attribute [rw] connector_name
    #   The name of the connector.
    #   @return [String]
    #
    # @!attribute [rw] connector_state
    #   The state of the connector.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The time that the connector was created.
    #   @return [Time]
    #
    # @!attribute [rw] current_version
    #   The current version of the connector.
    #   @return [String]
    #
    # @!attribute [rw] kafka_cluster
    #   The details of the Apache Kafka cluster to which the connector is
    #   connected.
    #   @return [Types::KafkaClusterDescription]
    #
    # @!attribute [rw] kafka_cluster_client_authentication
    #   The type of client authentication used to connect to the Apache
    #   Kafka cluster. The value is NONE when no client authentication is
    #   used.
    #   @return [Types::KafkaClusterClientAuthenticationDescription]
    #
    # @!attribute [rw] kafka_cluster_encryption_in_transit
    #   Details of encryption in transit to the Apache Kafka cluster.
    #   @return [Types::KafkaClusterEncryptionInTransitDescription]
    #
    # @!attribute [rw] kafka_connect_version
    #   The version of Kafka Connect. It has to be compatible with both the
    #   Apache Kafka cluster's version and the plugins.
    #   @return [String]
    #
    # @!attribute [rw] log_delivery
    #   The settings for delivering connector logs to Amazon CloudWatch
    #   Logs.
    #   @return [Types::LogDeliveryDescription]
    #
    # @!attribute [rw] plugins
    #   Specifies which plugins were used for this connector.
    #   @return [Array<Types::PluginDescription>]
    #
    # @!attribute [rw] service_execution_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role used by the connector
    #   to access Amazon Web Services resources.
    #   @return [String]
    #
    # @!attribute [rw] worker_configuration
    #   The worker configurations that are in use with the connector.
    #   @return [Types::WorkerConfigurationDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafkaconnect-2021-09-14/ConnectorSummary AWS API Documentation
    #
    class ConnectorSummary < Struct.new(
      :capacity,
      :connector_arn,
      :connector_description,
      :connector_name,
      :connector_state,
      :creation_time,
      :current_version,
      :kafka_cluster,
      :kafka_cluster_client_authentication,
      :kafka_cluster_encryption_in_transit,
      :kafka_connect_version,
      :log_delivery,
      :plugins,
      :service_execution_role_arn,
      :worker_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] capacity
    #   Information about the capacity allocated to the connector. Exactly
    #   one of the two properties must be specified.
    #   @return [Types::Capacity]
    #
    # @!attribute [rw] connector_configuration
    #   A map of keys to values that represent the configuration for the
    #   connector.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] connector_description
    #   A summary description of the connector.
    #   @return [String]
    #
    # @!attribute [rw] connector_name
    #   The name of the connector.
    #   @return [String]
    #
    # @!attribute [rw] kafka_cluster
    #   Specifies which Apache Kafka cluster to connect to.
    #   @return [Types::KafkaCluster]
    #
    # @!attribute [rw] kafka_cluster_client_authentication
    #   Details of the client authentication used by the Apache Kafka
    #   cluster.
    #   @return [Types::KafkaClusterClientAuthentication]
    #
    # @!attribute [rw] kafka_cluster_encryption_in_transit
    #   Details of encryption in transit to the Apache Kafka cluster.
    #   @return [Types::KafkaClusterEncryptionInTransit]
    #
    # @!attribute [rw] kafka_connect_version
    #   The version of Kafka Connect. It has to be compatible with both the
    #   Apache Kafka cluster's version and the plugins.
    #   @return [String]
    #
    # @!attribute [rw] log_delivery
    #   Details about log delivery.
    #   @return [Types::LogDelivery]
    #
    # @!attribute [rw] plugins
    #   Specifies which plugins to use for the connector.
    #   @return [Array<Types::Plugin>]
    #
    # @!attribute [rw] service_execution_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role used by the connector
    #   to access the Amazon Web Services resources that it needs. The types
    #   of resources depends on the logic of the connector. For example, a
    #   connector that has Amazon S3 as a destination must have permissions
    #   that allow it to write to the S3 destination bucket.
    #   @return [String]
    #
    # @!attribute [rw] worker_configuration
    #   Specifies which worker configuration to use with the connector.
    #   @return [Types::WorkerConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafkaconnect-2021-09-14/CreateConnectorRequest AWS API Documentation
    #
    class CreateConnectorRequest < Struct.new(
      :capacity,
      :connector_configuration,
      :connector_description,
      :connector_name,
      :kafka_cluster,
      :kafka_cluster_client_authentication,
      :kafka_cluster_encryption_in_transit,
      :kafka_connect_version,
      :log_delivery,
      :plugins,
      :service_execution_role_arn,
      :worker_configuration)
      SENSITIVE = [:connector_configuration]
      include Aws::Structure
    end

    # @!attribute [rw] connector_arn
    #   The Amazon Resource Name (ARN) that Amazon assigned to the
    #   connector.
    #   @return [String]
    #
    # @!attribute [rw] connector_name
    #   The name of the connector.
    #   @return [String]
    #
    # @!attribute [rw] connector_state
    #   The state of the connector.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafkaconnect-2021-09-14/CreateConnectorResponse AWS API Documentation
    #
    class CreateConnectorResponse < Struct.new(
      :connector_arn,
      :connector_name,
      :connector_state)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] content_type
    #   The type of the plugin file.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A summary description of the custom plugin.
    #   @return [String]
    #
    # @!attribute [rw] location
    #   Information about the location of a custom plugin.
    #   @return [Types::CustomPluginLocation]
    #
    # @!attribute [rw] name
    #   The name of the custom plugin.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafkaconnect-2021-09-14/CreateCustomPluginRequest AWS API Documentation
    #
    class CreateCustomPluginRequest < Struct.new(
      :content_type,
      :description,
      :location,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] custom_plugin_arn
    #   The Amazon Resource Name (ARN) that Amazon assigned to the custom
    #   plugin.
    #   @return [String]
    #
    # @!attribute [rw] custom_plugin_state
    #   The state of the custom plugin.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the custom plugin.
    #   @return [String]
    #
    # @!attribute [rw] revision
    #   The revision of the custom plugin.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafkaconnect-2021-09-14/CreateCustomPluginResponse AWS API Documentation
    #
    class CreateCustomPluginResponse < Struct.new(
      :custom_plugin_arn,
      :custom_plugin_state,
      :name,
      :revision)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] description
    #   A summary description of the worker configuration.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the worker configuration.
    #   @return [String]
    #
    # @!attribute [rw] properties_file_content
    #   Base64 encoded contents of connect-distributed.properties file.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafkaconnect-2021-09-14/CreateWorkerConfigurationRequest AWS API Documentation
    #
    class CreateWorkerConfigurationRequest < Struct.new(
      :description,
      :name,
      :properties_file_content)
      SENSITIVE = [:properties_file_content]
      include Aws::Structure
    end

    # @!attribute [rw] creation_time
    #   The time that the worker configuration was created.
    #   @return [Time]
    #
    # @!attribute [rw] latest_revision
    #   The latest revision of the worker configuration.
    #   @return [Types::WorkerConfigurationRevisionSummary]
    #
    # @!attribute [rw] name
    #   The name of the worker configuration.
    #   @return [String]
    #
    # @!attribute [rw] worker_configuration_arn
    #   The Amazon Resource Name (ARN) that Amazon assigned to the worker
    #   configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafkaconnect-2021-09-14/CreateWorkerConfigurationResponse AWS API Documentation
    #
    class CreateWorkerConfigurationResponse < Struct.new(
      :creation_time,
      :latest_revision,
      :name,
      :worker_configuration_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # A plugin is an AWS resource that contains the code that defines a
    # connector's logic.
    #
    # @!attribute [rw] custom_plugin_arn
    #   The Amazon Resource Name (ARN) of the custom plugin.
    #   @return [String]
    #
    # @!attribute [rw] revision
    #   The revision of the custom plugin.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafkaconnect-2021-09-14/CustomPlugin AWS API Documentation
    #
    class CustomPlugin < Struct.new(
      :custom_plugin_arn,
      :revision)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about a custom plugin.
    #
    # @!attribute [rw] custom_plugin_arn
    #   The Amazon Resource Name (ARN) of the custom plugin.
    #   @return [String]
    #
    # @!attribute [rw] revision
    #   The revision of the custom plugin.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafkaconnect-2021-09-14/CustomPluginDescription AWS API Documentation
    #
    class CustomPluginDescription < Struct.new(
      :custom_plugin_arn,
      :revision)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about a custom plugin file.
    #
    # @!attribute [rw] file_md_5
    #   The hex-encoded MD5 checksum of the custom plugin file. You can use
    #   it to validate the file.
    #   @return [String]
    #
    # @!attribute [rw] file_size
    #   The size in bytes of the custom plugin file. You can use it to
    #   validate the file.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafkaconnect-2021-09-14/CustomPluginFileDescription AWS API Documentation
    #
    class CustomPluginFileDescription < Struct.new(
      :file_md_5,
      :file_size)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the location of a custom plugin.
    #
    # @!attribute [rw] s3_location
    #   The S3 bucket Amazon Resource Name (ARN), file key, and object
    #   version of the plugin file stored in Amazon S3.
    #   @return [Types::S3Location]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafkaconnect-2021-09-14/CustomPluginLocation AWS API Documentation
    #
    class CustomPluginLocation < Struct.new(
      :s3_location)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the location of a custom plugin.
    #
    # @!attribute [rw] s3_location
    #   The S3 bucket Amazon Resource Name (ARN), file key, and object
    #   version of the plugin file stored in Amazon S3.
    #   @return [Types::S3LocationDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafkaconnect-2021-09-14/CustomPluginLocationDescription AWS API Documentation
    #
    class CustomPluginLocationDescription < Struct.new(
      :s3_location)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about the revision of a custom plugin.
    #
    # @!attribute [rw] content_type
    #   The format of the plugin file.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The time that the custom plugin was created.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The description of the custom plugin.
    #   @return [String]
    #
    # @!attribute [rw] file_description
    #   Details about the custom plugin file.
    #   @return [Types::CustomPluginFileDescription]
    #
    # @!attribute [rw] location
    #   Information about the location of the custom plugin.
    #   @return [Types::CustomPluginLocationDescription]
    #
    # @!attribute [rw] revision
    #   The revision of the custom plugin.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafkaconnect-2021-09-14/CustomPluginRevisionSummary AWS API Documentation
    #
    class CustomPluginRevisionSummary < Struct.new(
      :content_type,
      :creation_time,
      :description,
      :file_description,
      :location,
      :revision)
      SENSITIVE = []
      include Aws::Structure
    end

    # A summary of the custom plugin.
    #
    # @!attribute [rw] creation_time
    #   The time that the custom plugin was created.
    #   @return [Time]
    #
    # @!attribute [rw] custom_plugin_arn
    #   The Amazon Resource Name (ARN) of the custom plugin.
    #   @return [String]
    #
    # @!attribute [rw] custom_plugin_state
    #   The state of the custom plugin.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the custom plugin.
    #   @return [String]
    #
    # @!attribute [rw] latest_revision
    #   The latest revision of the custom plugin.
    #   @return [Types::CustomPluginRevisionSummary]
    #
    # @!attribute [rw] name
    #   The name of the custom plugin.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafkaconnect-2021-09-14/CustomPluginSummary AWS API Documentation
    #
    class CustomPluginSummary < Struct.new(
      :creation_time,
      :custom_plugin_arn,
      :custom_plugin_state,
      :description,
      :latest_revision,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] connector_arn
    #   The Amazon Resource Name (ARN) of the connector that you want to
    #   delete.
    #   @return [String]
    #
    # @!attribute [rw] current_version
    #   The current version of the connector that you want to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafkaconnect-2021-09-14/DeleteConnectorRequest AWS API Documentation
    #
    class DeleteConnectorRequest < Struct.new(
      :connector_arn,
      :current_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] connector_arn
    #   The Amazon Resource Name (ARN) of the connector that you requested
    #   to delete.
    #   @return [String]
    #
    # @!attribute [rw] connector_state
    #   The state of the connector that you requested to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafkaconnect-2021-09-14/DeleteConnectorResponse AWS API Documentation
    #
    class DeleteConnectorResponse < Struct.new(
      :connector_arn,
      :connector_state)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] custom_plugin_arn
    #   The Amazon Resource Name (ARN) of the custom plugin that you want to
    #   delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafkaconnect-2021-09-14/DeleteCustomPluginRequest AWS API Documentation
    #
    class DeleteCustomPluginRequest < Struct.new(
      :custom_plugin_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] custom_plugin_arn
    #   The Amazon Resource Name (ARN) of the custom plugin that you
    #   requested to delete.
    #   @return [String]
    #
    # @!attribute [rw] custom_plugin_state
    #   The state of the custom plugin.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafkaconnect-2021-09-14/DeleteCustomPluginResponse AWS API Documentation
    #
    class DeleteCustomPluginResponse < Struct.new(
      :custom_plugin_arn,
      :custom_plugin_state)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] connector_arn
    #   The Amazon Resource Name (ARN) of the connector that you want to
    #   describe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafkaconnect-2021-09-14/DescribeConnectorRequest AWS API Documentation
    #
    class DescribeConnectorRequest < Struct.new(
      :connector_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] capacity
    #   Information about the capacity of the connector, whether it is auto
    #   scaled or provisioned.
    #   @return [Types::CapacityDescription]
    #
    # @!attribute [rw] connector_arn
    #   The Amazon Resource Name (ARN) of the connector.
    #   @return [String]
    #
    # @!attribute [rw] connector_configuration
    #   A map of keys to values that represent the configuration for the
    #   connector.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] connector_description
    #   A summary description of the connector.
    #   @return [String]
    #
    # @!attribute [rw] connector_name
    #   The name of the connector.
    #   @return [String]
    #
    # @!attribute [rw] connector_state
    #   The state of the connector.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The time the connector was created.
    #   @return [Time]
    #
    # @!attribute [rw] current_version
    #   The current version of the connector.
    #   @return [String]
    #
    # @!attribute [rw] kafka_cluster
    #   The Apache Kafka cluster that the connector is connected to.
    #   @return [Types::KafkaClusterDescription]
    #
    # @!attribute [rw] kafka_cluster_client_authentication
    #   The type of client authentication used to connect to the Apache
    #   Kafka cluster. The value is NONE when no client authentication is
    #   used.
    #   @return [Types::KafkaClusterClientAuthenticationDescription]
    #
    # @!attribute [rw] kafka_cluster_encryption_in_transit
    #   Details of encryption in transit to the Apache Kafka cluster.
    #   @return [Types::KafkaClusterEncryptionInTransitDescription]
    #
    # @!attribute [rw] kafka_connect_version
    #   The version of Kafka Connect. It has to be compatible with both the
    #   Apache Kafka cluster's version and the plugins.
    #   @return [String]
    #
    # @!attribute [rw] log_delivery
    #   Details about delivering logs to Amazon CloudWatch Logs.
    #   @return [Types::LogDeliveryDescription]
    #
    # @!attribute [rw] plugins
    #   Specifies which plugins were used for this connector.
    #   @return [Array<Types::PluginDescription>]
    #
    # @!attribute [rw] service_execution_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role used by the connector
    #   to access Amazon Web Services resources.
    #   @return [String]
    #
    # @!attribute [rw] state_description
    #   Details about the state of a connector.
    #   @return [Types::StateDescription]
    #
    # @!attribute [rw] worker_configuration
    #   Specifies which worker configuration was used for the connector.
    #   @return [Types::WorkerConfigurationDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafkaconnect-2021-09-14/DescribeConnectorResponse AWS API Documentation
    #
    class DescribeConnectorResponse < Struct.new(
      :capacity,
      :connector_arn,
      :connector_configuration,
      :connector_description,
      :connector_name,
      :connector_state,
      :creation_time,
      :current_version,
      :kafka_cluster,
      :kafka_cluster_client_authentication,
      :kafka_cluster_encryption_in_transit,
      :kafka_connect_version,
      :log_delivery,
      :plugins,
      :service_execution_role_arn,
      :state_description,
      :worker_configuration)
      SENSITIVE = [:connector_configuration]
      include Aws::Structure
    end

    # @!attribute [rw] custom_plugin_arn
    #   Returns information about a custom plugin.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafkaconnect-2021-09-14/DescribeCustomPluginRequest AWS API Documentation
    #
    class DescribeCustomPluginRequest < Struct.new(
      :custom_plugin_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] creation_time
    #   The time that the custom plugin was created.
    #   @return [Time]
    #
    # @!attribute [rw] custom_plugin_arn
    #   The Amazon Resource Name (ARN) of the custom plugin.
    #   @return [String]
    #
    # @!attribute [rw] custom_plugin_state
    #   The state of the custom plugin.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the custom plugin.
    #   @return [String]
    #
    # @!attribute [rw] latest_revision
    #   The latest successfully created revision of the custom plugin. If
    #   there are no successfully created revisions, this field will be
    #   absent.
    #   @return [Types::CustomPluginRevisionSummary]
    #
    # @!attribute [rw] name
    #   The name of the custom plugin.
    #   @return [String]
    #
    # @!attribute [rw] state_description
    #   Details about the state of a custom plugin.
    #   @return [Types::StateDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafkaconnect-2021-09-14/DescribeCustomPluginResponse AWS API Documentation
    #
    class DescribeCustomPluginResponse < Struct.new(
      :creation_time,
      :custom_plugin_arn,
      :custom_plugin_state,
      :description,
      :latest_revision,
      :name,
      :state_description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] worker_configuration_arn
    #   The Amazon Resource Name (ARN) of the worker configuration that you
    #   want to get information about.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafkaconnect-2021-09-14/DescribeWorkerConfigurationRequest AWS API Documentation
    #
    class DescribeWorkerConfigurationRequest < Struct.new(
      :worker_configuration_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] creation_time
    #   The time that the worker configuration was created.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The description of the worker configuration.
    #   @return [String]
    #
    # @!attribute [rw] latest_revision
    #   The latest revision of the custom configuration.
    #   @return [Types::WorkerConfigurationRevisionDescription]
    #
    # @!attribute [rw] name
    #   The name of the worker configuration.
    #   @return [String]
    #
    # @!attribute [rw] worker_configuration_arn
    #   The Amazon Resource Name (ARN) of the custom configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafkaconnect-2021-09-14/DescribeWorkerConfigurationResponse AWS API Documentation
    #
    class DescribeWorkerConfigurationResponse < Struct.new(
      :creation_time,
      :description,
      :latest_revision,
      :name,
      :worker_configuration_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The settings for delivering logs to Amazon Kinesis Data Firehose.
    #
    # @!attribute [rw] delivery_stream
    #   The name of the Kinesis Data Firehose delivery stream that is the
    #   destination for log delivery.
    #   @return [String]
    #
    # @!attribute [rw] enabled
    #   Specifies whether connector logs get delivered to Amazon Kinesis
    #   Data Firehose.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafkaconnect-2021-09-14/FirehoseLogDelivery AWS API Documentation
    #
    class FirehoseLogDelivery < Struct.new(
      :delivery_stream,
      :enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # A description of the settings for delivering logs to Amazon Kinesis
    # Data Firehose.
    #
    # @!attribute [rw] delivery_stream
    #   The name of the Kinesis Data Firehose delivery stream that is the
    #   destination for log delivery.
    #   @return [String]
    #
    # @!attribute [rw] enabled
    #   Specifies whether connector logs get delivered to Amazon Kinesis
    #   Data Firehose.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafkaconnect-2021-09-14/FirehoseLogDeliveryDescription AWS API Documentation
    #
    class FirehoseLogDeliveryDescription < Struct.new(
      :delivery_stream,
      :enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # HTTP Status Code 403: Access forbidden. Correct your credentials and
    # then retry your request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafkaconnect-2021-09-14/ForbiddenException AWS API Documentation
    #
    class ForbiddenException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # HTTP Status Code 500: Unexpected internal server error. Retrying your
    # request might resolve the issue.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafkaconnect-2021-09-14/InternalServerErrorException AWS API Documentation
    #
    class InternalServerErrorException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of the Apache Kafka cluster to which the connector is
    # connected.
    #
    # @!attribute [rw] apache_kafka_cluster
    #   The Apache Kafka cluster to which the connector is connected.
    #   @return [Types::ApacheKafkaCluster]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafkaconnect-2021-09-14/KafkaCluster AWS API Documentation
    #
    class KafkaCluster < Struct.new(
      :apache_kafka_cluster)
      SENSITIVE = []
      include Aws::Structure
    end

    # The client authentication information used in order to authenticate
    # with the Apache Kafka cluster.
    #
    # @!attribute [rw] authentication_type
    #   The type of client authentication used to connect to the Apache
    #   Kafka cluster. Value NONE means that no client authentication is
    #   used.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafkaconnect-2021-09-14/KafkaClusterClientAuthentication AWS API Documentation
    #
    class KafkaClusterClientAuthentication < Struct.new(
      :authentication_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The client authentication information used in order to authenticate
    # with the Apache Kafka cluster.
    #
    # @!attribute [rw] authentication_type
    #   The type of client authentication used to connect to the Apache
    #   Kafka cluster. Value NONE means that no client authentication is
    #   used.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafkaconnect-2021-09-14/KafkaClusterClientAuthenticationDescription AWS API Documentation
    #
    class KafkaClusterClientAuthenticationDescription < Struct.new(
      :authentication_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details of how to connect to the Apache Kafka cluster.
    #
    # @!attribute [rw] apache_kafka_cluster
    #   The Apache Kafka cluster to which the connector is connected.
    #   @return [Types::ApacheKafkaClusterDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafkaconnect-2021-09-14/KafkaClusterDescription AWS API Documentation
    #
    class KafkaClusterDescription < Struct.new(
      :apache_kafka_cluster)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details of encryption in transit to the Apache Kafka cluster.
    #
    # @!attribute [rw] encryption_type
    #   The type of encryption in transit to the Apache Kafka cluster.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafkaconnect-2021-09-14/KafkaClusterEncryptionInTransit AWS API Documentation
    #
    class KafkaClusterEncryptionInTransit < Struct.new(
      :encryption_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The description of the encryption in transit to the Apache Kafka
    # cluster.
    #
    # @!attribute [rw] encryption_type
    #   The type of encryption in transit to the Apache Kafka cluster.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafkaconnect-2021-09-14/KafkaClusterEncryptionInTransitDescription AWS API Documentation
    #
    class KafkaClusterEncryptionInTransitDescription < Struct.new(
      :encryption_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] connector_name_prefix
    #   The name prefix that you want to use to search for and list
    #   connectors.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of connectors to list in one response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If the response of a ListConnectors operation is truncated, it will
    #   include a NextToken. Send this NextToken in a subsequent request to
    #   continue listing from where the previous operation left off.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafkaconnect-2021-09-14/ListConnectorsRequest AWS API Documentation
    #
    class ListConnectorsRequest < Struct.new(
      :connector_name_prefix,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] connectors
    #   An array of connector descriptions.
    #   @return [Array<Types::ConnectorSummary>]
    #
    # @!attribute [rw] next_token
    #   If the response of a ListConnectors operation is truncated, it will
    #   include a NextToken. Send this NextToken in a subsequent request to
    #   continue listing from where it left off.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafkaconnect-2021-09-14/ListConnectorsResponse AWS API Documentation
    #
    class ListConnectorsResponse < Struct.new(
      :connectors,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of custom plugins to list in one response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If the response of a ListCustomPlugins operation is truncated, it
    #   will include a NextToken. Send this NextToken in a subsequent
    #   request to continue listing from where the previous operation left
    #   off.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafkaconnect-2021-09-14/ListCustomPluginsRequest AWS API Documentation
    #
    class ListCustomPluginsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] custom_plugins
    #   An array of custom plugin descriptions.
    #   @return [Array<Types::CustomPluginSummary>]
    #
    # @!attribute [rw] next_token
    #   If the response of a ListCustomPlugins operation is truncated, it
    #   will include a NextToken. Send this NextToken in a subsequent
    #   request to continue listing from where the previous operation left
    #   off.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafkaconnect-2021-09-14/ListCustomPluginsResponse AWS API Documentation
    #
    class ListCustomPluginsResponse < Struct.new(
      :custom_plugins,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of worker configurations to list in one response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If the response of a ListWorkerConfigurations operation is
    #   truncated, it will include a NextToken. Send this NextToken in a
    #   subsequent request to continue listing from where the previous
    #   operation left off.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafkaconnect-2021-09-14/ListWorkerConfigurationsRequest AWS API Documentation
    #
    class ListWorkerConfigurationsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If the response of a ListWorkerConfigurations operation is
    #   truncated, it will include a NextToken. Send this NextToken in a
    #   subsequent request to continue listing from where the previous
    #   operation left off.
    #   @return [String]
    #
    # @!attribute [rw] worker_configurations
    #   An array of worker configuration descriptions.
    #   @return [Array<Types::WorkerConfigurationSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafkaconnect-2021-09-14/ListWorkerConfigurationsResponse AWS API Documentation
    #
    class ListWorkerConfigurationsResponse < Struct.new(
      :next_token,
      :worker_configurations)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about log delivery.
    #
    # @!attribute [rw] worker_log_delivery
    #   The workers can send worker logs to different destination types.
    #   This configuration specifies the details of these destinations.
    #   @return [Types::WorkerLogDelivery]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafkaconnect-2021-09-14/LogDelivery AWS API Documentation
    #
    class LogDelivery < Struct.new(
      :worker_log_delivery)
      SENSITIVE = []
      include Aws::Structure
    end

    # The description of the log delivery settings.
    #
    # @!attribute [rw] worker_log_delivery
    #   The workers can send worker logs to different destination types.
    #   This configuration specifies the details of these destinations.
    #   @return [Types::WorkerLogDeliveryDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafkaconnect-2021-09-14/LogDeliveryDescription AWS API Documentation
    #
    class LogDeliveryDescription < Struct.new(
      :worker_log_delivery)
      SENSITIVE = []
      include Aws::Structure
    end

    # HTTP Status Code 404: Resource not found due to incorrect input.
    # Correct your request and then retry it.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafkaconnect-2021-09-14/NotFoundException AWS API Documentation
    #
    class NotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A plugin is an AWS resource that contains the code that defines your
    # connector logic.
    #
    # @!attribute [rw] custom_plugin
    #   Details about a custom plugin.
    #   @return [Types::CustomPlugin]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafkaconnect-2021-09-14/Plugin AWS API Documentation
    #
    class Plugin < Struct.new(
      :custom_plugin)
      SENSITIVE = []
      include Aws::Structure
    end

    # The description of the plugin.
    #
    # @!attribute [rw] custom_plugin
    #   Details about a custom plugin.
    #   @return [Types::CustomPluginDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafkaconnect-2021-09-14/PluginDescription AWS API Documentation
    #
    class PluginDescription < Struct.new(
      :custom_plugin)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about a connector's provisioned capacity.
    #
    # @!attribute [rw] mcu_count
    #   The number of microcontroller units (MCUs) allocated to each
    #   connector worker. The valid values are 1,2,4,8.
    #   @return [Integer]
    #
    # @!attribute [rw] worker_count
    #   The number of workers that are allocated to the connector.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafkaconnect-2021-09-14/ProvisionedCapacity AWS API Documentation
    #
    class ProvisionedCapacity < Struct.new(
      :mcu_count,
      :worker_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # The description of a connector's provisioned capacity.
    #
    # @!attribute [rw] mcu_count
    #   The number of microcontroller units (MCUs) allocated to each
    #   connector worker. The valid values are 1,2,4,8.
    #   @return [Integer]
    #
    # @!attribute [rw] worker_count
    #   The number of workers that are allocated to the connector.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafkaconnect-2021-09-14/ProvisionedCapacityDescription AWS API Documentation
    #
    class ProvisionedCapacityDescription < Struct.new(
      :mcu_count,
      :worker_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # An update to a connector's fixed capacity.
    #
    # @!attribute [rw] mcu_count
    #   The number of microcontroller units (MCUs) allocated to each
    #   connector worker. The valid values are 1,2,4,8.
    #   @return [Integer]
    #
    # @!attribute [rw] worker_count
    #   The number of workers that are allocated to the connector.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafkaconnect-2021-09-14/ProvisionedCapacityUpdate AWS API Documentation
    #
    class ProvisionedCapacityUpdate < Struct.new(
      :mcu_count,
      :worker_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # The location of an object in Amazon S3.
    #
    # @!attribute [rw] bucket_arn
    #   The Amazon Resource Name (ARN) of an S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] file_key
    #   The file key for an object in an S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] object_version
    #   The version of an object in an S3 bucket.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafkaconnect-2021-09-14/S3Location AWS API Documentation
    #
    class S3Location < Struct.new(
      :bucket_arn,
      :file_key,
      :object_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # The description of the location of an object in Amazon S3.
    #
    # @!attribute [rw] bucket_arn
    #   The Amazon Resource Name (ARN) of an S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] file_key
    #   The file key for an object in an S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] object_version
    #   The version of an object in an S3 bucket.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafkaconnect-2021-09-14/S3LocationDescription AWS API Documentation
    #
    class S3LocationDescription < Struct.new(
      :bucket_arn,
      :file_key,
      :object_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about delivering logs to Amazon S3.
    #
    # @!attribute [rw] bucket
    #   The name of the S3 bucket that is the destination for log delivery.
    #   @return [String]
    #
    # @!attribute [rw] enabled
    #   Specifies whether connector logs get sent to the specified Amazon S3
    #   destination.
    #   @return [Boolean]
    #
    # @!attribute [rw] prefix
    #   The S3 prefix that is the destination for log delivery.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafkaconnect-2021-09-14/S3LogDelivery AWS API Documentation
    #
    class S3LogDelivery < Struct.new(
      :bucket,
      :enabled,
      :prefix)
      SENSITIVE = []
      include Aws::Structure
    end

    # The description of the details about delivering logs to Amazon S3.
    #
    # @!attribute [rw] bucket
    #   The name of the S3 bucket that is the destination for log delivery.
    #   @return [String]
    #
    # @!attribute [rw] enabled
    #   Specifies whether connector logs get sent to the specified Amazon S3
    #   destination.
    #   @return [Boolean]
    #
    # @!attribute [rw] prefix
    #   The S3 prefix that is the destination for log delivery.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafkaconnect-2021-09-14/S3LogDeliveryDescription AWS API Documentation
    #
    class S3LogDeliveryDescription < Struct.new(
      :bucket,
      :enabled,
      :prefix)
      SENSITIVE = []
      include Aws::Structure
    end

    # The scale-in policy for the connector.
    #
    # @!attribute [rw] cpu_utilization_percentage
    #   Specifies the CPU utilization percentage threshold at which you want
    #   connector scale in to be triggered.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafkaconnect-2021-09-14/ScaleInPolicy AWS API Documentation
    #
    class ScaleInPolicy < Struct.new(
      :cpu_utilization_percentage)
      SENSITIVE = []
      include Aws::Structure
    end

    # The description of the scale-in policy for the connector.
    #
    # @!attribute [rw] cpu_utilization_percentage
    #   Specifies the CPU utilization percentage threshold at which you want
    #   connector scale in to be triggered.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafkaconnect-2021-09-14/ScaleInPolicyDescription AWS API Documentation
    #
    class ScaleInPolicyDescription < Struct.new(
      :cpu_utilization_percentage)
      SENSITIVE = []
      include Aws::Structure
    end

    # An update to the connector's scale-in policy.
    #
    # @!attribute [rw] cpu_utilization_percentage
    #   The target CPU utilization percentage threshold at which you want
    #   connector scale in to be triggered.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafkaconnect-2021-09-14/ScaleInPolicyUpdate AWS API Documentation
    #
    class ScaleInPolicyUpdate < Struct.new(
      :cpu_utilization_percentage)
      SENSITIVE = []
      include Aws::Structure
    end

    # The scale-out policy for the connector.
    #
    # @!attribute [rw] cpu_utilization_percentage
    #   The CPU utilization percentage threshold at which you want connector
    #   scale out to be triggered.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafkaconnect-2021-09-14/ScaleOutPolicy AWS API Documentation
    #
    class ScaleOutPolicy < Struct.new(
      :cpu_utilization_percentage)
      SENSITIVE = []
      include Aws::Structure
    end

    # The description of the scale-out policy for the connector.
    #
    # @!attribute [rw] cpu_utilization_percentage
    #   The CPU utilization percentage threshold at which you want connector
    #   scale out to be triggered.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafkaconnect-2021-09-14/ScaleOutPolicyDescription AWS API Documentation
    #
    class ScaleOutPolicyDescription < Struct.new(
      :cpu_utilization_percentage)
      SENSITIVE = []
      include Aws::Structure
    end

    # An update to the connector's scale-out policy.
    #
    # @!attribute [rw] cpu_utilization_percentage
    #   The target CPU utilization percentage threshold at which you want
    #   connector scale out to be triggered.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafkaconnect-2021-09-14/ScaleOutPolicyUpdate AWS API Documentation
    #
    class ScaleOutPolicyUpdate < Struct.new(
      :cpu_utilization_percentage)
      SENSITIVE = []
      include Aws::Structure
    end

    # HTTP Status Code 503: Service Unavailable. Retrying your request in
    # some time might resolve the issue.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafkaconnect-2021-09-14/ServiceUnavailableException AWS API Documentation
    #
    class ServiceUnavailableException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about the state of a resource.
    #
    # @!attribute [rw] code
    #   A code that describes the state of a resource.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   A message that describes the state of a resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafkaconnect-2021-09-14/StateDescription AWS API Documentation
    #
    class StateDescription < Struct.new(
      :code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # HTTP Status Code 429: Limit exceeded. Resource limit reached.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafkaconnect-2021-09-14/TooManyRequestsException AWS API Documentation
    #
    class TooManyRequestsException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # HTTP Status Code 401: Unauthorized request. The provided credentials
    # couldn't be validated.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafkaconnect-2021-09-14/UnauthorizedException AWS API Documentation
    #
    class UnauthorizedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] capacity
    #   The target capacity.
    #   @return [Types::CapacityUpdate]
    #
    # @!attribute [rw] connector_arn
    #   The Amazon Resource Name (ARN) of the connector that you want to
    #   update.
    #   @return [String]
    #
    # @!attribute [rw] current_version
    #   The current version of the connector that you want to update.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafkaconnect-2021-09-14/UpdateConnectorRequest AWS API Documentation
    #
    class UpdateConnectorRequest < Struct.new(
      :capacity,
      :connector_arn,
      :current_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] connector_arn
    #   The Amazon Resource Name (ARN) of the connector.
    #   @return [String]
    #
    # @!attribute [rw] connector_state
    #   The state of the connector.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafkaconnect-2021-09-14/UpdateConnectorResponse AWS API Documentation
    #
    class UpdateConnectorResponse < Struct.new(
      :connector_arn,
      :connector_state)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the VPC in which the connector resides.
    #
    # @!attribute [rw] security_groups
    #   The security groups for the connector.
    #   @return [Array<String>]
    #
    # @!attribute [rw] subnets
    #   The subnets for the connector.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafkaconnect-2021-09-14/Vpc AWS API Documentation
    #
    class Vpc < Struct.new(
      :security_groups,
      :subnets)
      SENSITIVE = []
      include Aws::Structure
    end

    # The description of the VPC in which the connector resides.
    #
    # @!attribute [rw] security_groups
    #   The security groups for the connector.
    #   @return [Array<String>]
    #
    # @!attribute [rw] subnets
    #   The subnets for the connector.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafkaconnect-2021-09-14/VpcDescription AWS API Documentation
    #
    class VpcDescription < Struct.new(
      :security_groups,
      :subnets)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration of the workers, which are the processes that run the
    # connector logic.
    #
    # @!attribute [rw] revision
    #   The revision of the worker configuration.
    #   @return [Integer]
    #
    # @!attribute [rw] worker_configuration_arn
    #   The Amazon Resource Name (ARN) of the worker configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafkaconnect-2021-09-14/WorkerConfiguration AWS API Documentation
    #
    class WorkerConfiguration < Struct.new(
      :revision,
      :worker_configuration_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The description of the worker configuration.
    #
    # @!attribute [rw] revision
    #   The revision of the worker configuration.
    #   @return [Integer]
    #
    # @!attribute [rw] worker_configuration_arn
    #   The Amazon Resource Name (ARN) of the worker configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafkaconnect-2021-09-14/WorkerConfigurationDescription AWS API Documentation
    #
    class WorkerConfigurationDescription < Struct.new(
      :revision,
      :worker_configuration_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The description of the worker configuration revision.
    #
    # @!attribute [rw] creation_time
    #   The time that the worker configuration was created.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The description of the worker configuration revision.
    #   @return [String]
    #
    # @!attribute [rw] properties_file_content
    #   Base64 encoded contents of the connect-distributed.properties file.
    #   @return [String]
    #
    # @!attribute [rw] revision
    #   The description of a revision of the worker configuration.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafkaconnect-2021-09-14/WorkerConfigurationRevisionDescription AWS API Documentation
    #
    class WorkerConfigurationRevisionDescription < Struct.new(
      :creation_time,
      :description,
      :properties_file_content,
      :revision)
      SENSITIVE = [:properties_file_content]
      include Aws::Structure
    end

    # The summary of a worker configuration revision.
    #
    # @!attribute [rw] creation_time
    #   The time that a worker configuration revision was created.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The description of a worker configuration revision.
    #   @return [String]
    #
    # @!attribute [rw] revision
    #   The revision of a worker configuration.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafkaconnect-2021-09-14/WorkerConfigurationRevisionSummary AWS API Documentation
    #
    class WorkerConfigurationRevisionSummary < Struct.new(
      :creation_time,
      :description,
      :revision)
      SENSITIVE = []
      include Aws::Structure
    end

    # The summary of a worker configuration.
    #
    # @!attribute [rw] creation_time
    #   The time that a worker configuration was created.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The description of a worker configuration.
    #   @return [String]
    #
    # @!attribute [rw] latest_revision
    #   The latest revision of a worker configuration.
    #   @return [Types::WorkerConfigurationRevisionSummary]
    #
    # @!attribute [rw] name
    #   The name of the worker configuration.
    #   @return [String]
    #
    # @!attribute [rw] worker_configuration_arn
    #   The Amazon Resource Name (ARN) of the worker configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafkaconnect-2021-09-14/WorkerConfigurationSummary AWS API Documentation
    #
    class WorkerConfigurationSummary < Struct.new(
      :creation_time,
      :description,
      :latest_revision,
      :name,
      :worker_configuration_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Workers can send worker logs to different destination types. This
    # configuration specifies the details of these destinations.
    #
    # @!attribute [rw] cloud_watch_logs
    #   Details about delivering logs to Amazon CloudWatch Logs.
    #   @return [Types::CloudWatchLogsLogDelivery]
    #
    # @!attribute [rw] firehose
    #   Details about delivering logs to Amazon Kinesis Data Firehose.
    #   @return [Types::FirehoseLogDelivery]
    #
    # @!attribute [rw] s3
    #   Details about delivering logs to Amazon S3.
    #   @return [Types::S3LogDelivery]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafkaconnect-2021-09-14/WorkerLogDelivery AWS API Documentation
    #
    class WorkerLogDelivery < Struct.new(
      :cloud_watch_logs,
      :firehose,
      :s3)
      SENSITIVE = []
      include Aws::Structure
    end

    # Workers can send worker logs to different destination types. This
    # configuration specifies the details of these destinations.
    #
    # @!attribute [rw] cloud_watch_logs
    #   Details about delivering logs to Amazon CloudWatch Logs.
    #   @return [Types::CloudWatchLogsLogDeliveryDescription]
    #
    # @!attribute [rw] firehose
    #   Details about delivering logs to Amazon Kinesis Data Firehose.
    #   @return [Types::FirehoseLogDeliveryDescription]
    #
    # @!attribute [rw] s3
    #   Details about delivering logs to Amazon S3.
    #   @return [Types::S3LogDeliveryDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kafkaconnect-2021-09-14/WorkerLogDeliveryDescription AWS API Documentation
    #
    class WorkerLogDeliveryDescription < Struct.new(
      :cloud_watch_logs,
      :firehose,
      :s3)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
