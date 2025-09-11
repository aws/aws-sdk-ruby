# frozen_string_literal: true

# This is generated code!

module Aws::KafkaConnect
  # This module contains the types returned by client operations.
  module Types

    # <p>The details of the Apache Kafka cluster to which the connector is connected.</p>
    # @!attribute bootstrap_servers
    #   <p>The bootstrap servers of the cluster.</p>
    #   @return [String]
    # @!attribute vpc
    #   <p>Details of an Amazon VPC which has network connectivity to the Apache Kafka
    #            cluster.</p>
    #   @return [Types::Vpc]
    class ApacheKafkaCluster < Struct.new(
      :bootstrap_servers,
      :vpc,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The description of the Apache Kafka cluster to which the connector is connected.</p>
    # @!attribute bootstrap_servers
    #   <p>The bootstrap servers of the cluster.</p>
    #   @return [String]
    # @!attribute vpc
    #   <p>Details of an Amazon VPC which has network connectivity to the Apache Kafka
    #            cluster.</p>
    #   @return [Types::VpcDescription]
    class ApacheKafkaClusterDescription < Struct.new(
      :bootstrap_servers,
      :vpc,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies how the connector scales.</p>
    # @!attribute max_worker_count
    #   <p>The maximum number of workers allocated to the connector.</p>
    #   @return [Integer]
    # @!attribute mcu_count
    #   <p>The number of microcontroller units (MCUs) allocated to each connector worker. The valid
    #            values are 1,2,4,8.</p>
    #   @return [Integer]
    # @!attribute min_worker_count
    #   <p>The minimum number of workers allocated to the connector.</p>
    #   @return [Integer]
    # @!attribute scale_in_policy
    #   <p>The sacle-in policy for the connector.</p>
    #   @return [Types::ScaleInPolicy]
    # @!attribute scale_out_policy
    #   <p>The sacle-out policy for the connector.</p>
    #   @return [Types::ScaleOutPolicy]
    class AutoScaling < Struct.new(
      :max_worker_count,
      :mcu_count,
      :min_worker_count,
      :scale_in_policy,
      :scale_out_policy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:max_worker_count] = 0 unless options.key?(:max_worker_count)
        options[:mcu_count] = 0 unless options.key?(:mcu_count)
        options[:min_worker_count] = 0 unless options.key?(:min_worker_count)
        super
      end
    end

    # <p>Information about the auto scaling parameters for the connector.</p>
    # @!attribute max_worker_count
    #   <p>The maximum number of workers allocated to the connector.</p>
    #   @return [Integer]
    # @!attribute mcu_count
    #   <p>The number of microcontroller units (MCUs) allocated to each connector worker. The valid
    #            values are 1,2,4,8.</p>
    #   @return [Integer]
    # @!attribute min_worker_count
    #   <p>The minimum number of workers allocated to the connector.</p>
    #   @return [Integer]
    # @!attribute scale_in_policy
    #   <p>The sacle-in policy for the connector.</p>
    #   @return [Types::ScaleInPolicyDescription]
    # @!attribute scale_out_policy
    #   <p>The sacle-out policy for the connector.&gt;</p>
    #   @return [Types::ScaleOutPolicyDescription]
    class AutoScalingDescription < Struct.new(
      :max_worker_count,
      :mcu_count,
      :min_worker_count,
      :scale_in_policy,
      :scale_out_policy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:max_worker_count] = 0 unless options.key?(:max_worker_count)
        options[:mcu_count] = 0 unless options.key?(:mcu_count)
        options[:min_worker_count] = 0 unless options.key?(:min_worker_count)
        super
      end
    end

    # <p>The updates to the auto scaling parameters for the connector.</p>
    # @!attribute max_worker_count
    #   <p>The target maximum number of workers allocated to the connector.</p>
    #   @return [Integer]
    # @!attribute mcu_count
    #   <p>The target number of microcontroller units (MCUs) allocated to each connector worker.
    #            The valid values are 1,2,4,8.</p>
    #   @return [Integer]
    # @!attribute min_worker_count
    #   <p>The target minimum number of workers allocated to the connector.</p>
    #   @return [Integer]
    # @!attribute scale_in_policy
    #   <p>The target sacle-in policy for the connector.</p>
    #   @return [Types::ScaleInPolicyUpdate]
    # @!attribute scale_out_policy
    #   <p>The target sacle-out policy for the connector.</p>
    #   @return [Types::ScaleOutPolicyUpdate]
    class AutoScalingUpdate < Struct.new(
      :max_worker_count,
      :mcu_count,
      :min_worker_count,
      :scale_in_policy,
      :scale_out_policy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:max_worker_count] = 0 unless options.key?(:max_worker_count)
        options[:mcu_count] = 0 unless options.key?(:mcu_count)
        options[:min_worker_count] = 0 unless options.key?(:min_worker_count)
        super
      end
    end

    # <p>HTTP Status Code 400: Bad request due to incorrect input. Correct your request and then
    #          retry it.</p>
    # @!attribute message
    #   @return [String]
    class BadRequestException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the capacity of the connector, whether it is auto scaled or
    #          provisioned.</p>
    # @!attribute auto_scaling
    #   <p>Information about the auto scaling parameters for the connector.</p>
    #   @return [Types::AutoScaling]
    # @!attribute provisioned_capacity
    #   <p>Details about a fixed capacity allocated to a connector.</p>
    #   @return [Types::ProvisionedCapacity]
    class Capacity < Struct.new(
      :auto_scaling,
      :provisioned_capacity,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A description of the connector's capacity.</p>
    # @!attribute auto_scaling
    #   <p>Describes the connector's auto scaling capacity.</p>
    #   @return [Types::AutoScalingDescription]
    # @!attribute provisioned_capacity
    #   <p>Describes a connector's provisioned capacity.</p>
    #   @return [Types::ProvisionedCapacityDescription]
    class CapacityDescription < Struct.new(
      :auto_scaling,
      :provisioned_capacity,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The target capacity for the connector. The capacity can be auto scaled or
    #          provisioned.</p>
    # @!attribute auto_scaling
    #   <p>The target auto scaling setting.</p>
    #   @return [Types::AutoScalingUpdate]
    # @!attribute provisioned_capacity
    #   <p>The target settings for provisioned capacity.</p>
    #   @return [Types::ProvisionedCapacityUpdate]
    class CapacityUpdate < Struct.new(
      :auto_scaling,
      :provisioned_capacity,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The settings for delivering connector logs to Amazon CloudWatch Logs.</p>
    # @!attribute enabled
    #   <p>Whether log delivery to Amazon CloudWatch Logs is enabled.</p>
    #   @return [Boolean]
    # @!attribute log_group
    #   <p>The name of the CloudWatch log group that is the destination for log delivery.</p>
    #   @return [String]
    class CloudWatchLogsLogDelivery < Struct.new(
      :enabled,
      :log_group,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:enabled] = false unless options.key?(:enabled)
        super
      end
    end

    # <p>A description of the log delivery settings.</p>
    # @!attribute enabled
    #   <p>Whether log delivery to Amazon CloudWatch Logs is enabled.</p>
    #   @return [Boolean]
    # @!attribute log_group
    #   <p>The name of the CloudWatch log group that is the destination for log delivery.</p>
    #   @return [String]
    class CloudWatchLogsLogDeliveryDescription < Struct.new(
      :enabled,
      :log_group,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:enabled] = false unless options.key?(:enabled)
        super
      end
    end

    # <p>HTTP Status Code 409: Conflict. A resource with this name already exists. Retry your
    #          request with another name.</p>
    # @!attribute message
    #   @return [String]
    class ConflictException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details of a step that is involved in a connector's operation.</p>
    # @!attribute step_type
    #   <p>The step type of the operation.</p>
    #   @return [String]
    # @!attribute step_state
    #   <p>The step state of the operation.</p>
    #   @return [String]
    class ConnectorOperationStep < Struct.new(
      :step_type,
      :step_state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary of a connector operation.</p>
    # @!attribute connector_operation_arn
    #   <p>The Amazon Resource Name (ARN) of the connector operation.</p>
    #   @return [String]
    # @!attribute connector_operation_type
    #   <p>The type of connector operation performed.</p>
    #   @return [String]
    # @!attribute connector_operation_state
    #   <p>The state of the connector operation.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The time when operation was created.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The time when operation ended.</p>
    #   @return [Time]
    class ConnectorOperationSummary < Struct.new(
      :connector_operation_arn,
      :connector_operation_type,
      :connector_operation_state,
      :creation_time,
      :end_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary of a connector.</p>
    # @!attribute capacity
    #   <p>The connector's compute capacity settings.</p>
    #   @return [Types::CapacityDescription]
    # @!attribute connector_arn
    #   <p>The Amazon Resource Name (ARN) of the connector.</p>
    #   @return [String]
    # @!attribute connector_description
    #   <p>The description of the connector.</p>
    #   @return [String]
    # @!attribute connector_name
    #   <p>The name of the connector.</p>
    #   @return [String]
    # @!attribute connector_state
    #   <p>The state of the connector.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The time that the connector was created.</p>
    #   @return [Time]
    # @!attribute current_version
    #   <p>The current version of the connector.</p>
    #   @return [String]
    # @!attribute kafka_cluster
    #   <p>The details of the Apache Kafka cluster to which the connector is connected.</p>
    #   @return [Types::KafkaClusterDescription]
    # @!attribute kafka_cluster_client_authentication
    #   <p>The type of client authentication used to connect to the Apache Kafka cluster. The value
    #            is NONE when no client authentication is used.</p>
    #   @return [Types::KafkaClusterClientAuthenticationDescription]
    # @!attribute kafka_cluster_encryption_in_transit
    #   <p>Details of encryption in transit to the Apache Kafka cluster.</p>
    #   @return [Types::KafkaClusterEncryptionInTransitDescription]
    # @!attribute kafka_connect_version
    #   <p>The version of Kafka Connect. It has to be compatible with both the Apache Kafka
    #            cluster's version and the plugins.</p>
    #   @return [String]
    # @!attribute log_delivery
    #   <p>The settings for delivering connector logs to Amazon CloudWatch Logs.</p>
    #   @return [Types::LogDeliveryDescription]
    # @!attribute plugins
    #   <p>Specifies which plugins were used for this connector.</p>
    #   @return [Array<Types::PluginDescription>]
    # @!attribute service_execution_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role used by the connector to access Amazon
    #            Web Services resources.</p>
    #   @return [String]
    # @!attribute worker_configuration
    #   <p>The worker configurations that are in use with the connector.</p>
    #   @return [Types::WorkerConfigurationDescription]
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
      :worker_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute connector_arn
    #   <p>The Amazon Resource Name (ARN) that Amazon assigned to the connector.</p>
    #   @return [String]
    # @!attribute connector_name
    #   <p>The name of the connector.</p>
    #   @return [String]
    # @!attribute connector_state
    #   <p>The state of the connector.</p>
    #   @return [String]
    class CreateConnectorOutput < Struct.new(
      :connector_arn,
      :connector_name,
      :connector_state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute capacity
    #   <p>Information about the capacity allocated to the connector. Exactly one of the two
    #            properties must be specified.</p>
    #   @return [Types::Capacity]
    # @!attribute connector_configuration
    #   <p>A map of keys to values that represent the configuration for the connector.</p>
    #   @return [Hash<String, String>]
    # @!attribute connector_description
    #   <p>A summary description of the connector.</p>
    #   @return [String]
    # @!attribute connector_name
    #   <p>The name of the connector.</p>
    #   @return [String]
    # @!attribute kafka_cluster
    #   <p>Specifies which Apache Kafka cluster to connect to.</p>
    #   @return [Types::KafkaCluster]
    # @!attribute kafka_cluster_client_authentication
    #   <p>Details of the client authentication used by the Apache Kafka cluster.</p>
    #   @return [Types::KafkaClusterClientAuthentication]
    # @!attribute kafka_cluster_encryption_in_transit
    #   <p>Details of encryption in transit to the Apache Kafka cluster.</p>
    #   @return [Types::KafkaClusterEncryptionInTransit]
    # @!attribute kafka_connect_version
    #   <p>The version of Kafka Connect. It has to be compatible with both the Apache Kafka
    #            cluster's version and the plugins.</p>
    #   @return [String]
    # @!attribute log_delivery
    #   <p>Details about log delivery.</p>
    #   @return [Types::LogDelivery]
    # @!attribute plugins
    #   <important>
    #               <p>Amazon MSK Connect does not currently support specifying multiple plugins as a list. To use more than one plugin for your connector, you can create a single custom plugin using a ZIP file that bundles multiple plugins together.</p>
    #            </important>
    #            <p>Specifies which plugin to use for the connector. You must specify a single-element list containing one <code>customPlugin</code> object.</p>
    #   @return [Array<Types::Plugin>]
    # @!attribute service_execution_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role used by the connector to access the
    #            Amazon Web Services resources that it needs. The types of resources depends on the logic of
    #            the connector. For example, a connector that has Amazon S3 as a destination must have
    #            permissions that allow it to write to the S3 destination bucket.</p>
    #   @return [String]
    # @!attribute worker_configuration
    #   <p>Specifies which worker configuration to use with the connector.</p>
    #   @return [Types::WorkerConfiguration]
    # @!attribute tags
    #   <p>The tags you want to attach to the connector.</p>
    #   @return [Hash<String, String>]
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
      :worker_configuration,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute custom_plugin_arn
    #   <p>The Amazon Resource Name (ARN) that Amazon assigned to the custom plugin.</p>
    #   @return [String]
    # @!attribute custom_plugin_state
    #   <p>The state of the custom plugin.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the custom plugin.</p>
    #   @return [String]
    # @!attribute revision
    #   <p>The revision of the custom plugin.</p>
    #   @return [Integer]
    class CreateCustomPluginOutput < Struct.new(
      :custom_plugin_arn,
      :custom_plugin_state,
      :name,
      :revision,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:revision] = 0 unless options.key?(:revision)
        super
      end
    end

    # @!attribute content_type
    #   <p>The type of the plugin file.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A summary description of the custom plugin.</p>
    #   @return [String]
    # @!attribute location
    #   <p>Information about the location of a custom plugin.</p>
    #   @return [Types::CustomPluginLocation]
    # @!attribute name
    #   <p>The name of the custom plugin.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags you want to attach to the custom plugin.</p>
    #   @return [Hash<String, String>]
    class CreateCustomPluginRequest < Struct.new(
      :content_type,
      :description,
      :location,
      :name,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute creation_time
    #   <p>The time that the worker configuration was created.</p>
    #   @return [Time]
    # @!attribute latest_revision
    #   <p>The latest revision of the worker configuration.</p>
    #   @return [Types::WorkerConfigurationRevisionSummary]
    # @!attribute name
    #   <p>The name of the worker configuration.</p>
    #   @return [String]
    # @!attribute worker_configuration_arn
    #   <p>The Amazon Resource Name (ARN) that Amazon assigned to the worker configuration.</p>
    #   @return [String]
    # @!attribute worker_configuration_state
    #   <p>The state of the worker configuration.</p>
    #   @return [String]
    class CreateWorkerConfigurationOutput < Struct.new(
      :creation_time,
      :latest_revision,
      :name,
      :worker_configuration_arn,
      :worker_configuration_state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute description
    #   <p>A summary description of the worker configuration.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the worker configuration.</p>
    #   @return [String]
    # @!attribute properties_file_content
    #   <p>Base64 encoded contents of connect-distributed.properties file.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags you want to attach to the worker configuration.</p>
    #   @return [Hash<String, String>]
    class CreateWorkerConfigurationRequest < Struct.new(
      :description,
      :name,
      :properties_file_content,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A plugin is an Amazon Web Services resource that contains the code that defines a connector's logic.</p>
    # @!attribute custom_plugin_arn
    #   <p>The Amazon Resource Name (ARN) of the custom plugin.</p>
    #   @return [String]
    # @!attribute revision
    #   <p>The revision of the custom plugin.</p>
    #   @return [Integer]
    class CustomPlugin < Struct.new(
      :custom_plugin_arn,
      :revision,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:revision] = 0 unless options.key?(:revision)
        super
      end
    end

    # <p>Details about a custom plugin.</p>
    # @!attribute custom_plugin_arn
    #   <p>The Amazon Resource Name (ARN) of the custom plugin.</p>
    #   @return [String]
    # @!attribute revision
    #   <p>The revision of the custom plugin.</p>
    #   @return [Integer]
    class CustomPluginDescription < Struct.new(
      :custom_plugin_arn,
      :revision,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:revision] = 0 unless options.key?(:revision)
        super
      end
    end

    # <p>Details about a custom plugin file.</p>
    # @!attribute file_md5
    #   <p>The hex-encoded MD5 checksum of the custom plugin file. You can use it to validate the
    #            file.</p>
    #   @return [String]
    # @!attribute file_size
    #   <p>The size in bytes of the custom plugin file. You can use it to validate the file.</p>
    #   @return [Integer]
    class CustomPluginFileDescription < Struct.new(
      :file_md5,
      :file_size,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:file_size] = 0 unless options.key?(:file_size)
        super
      end
    end

    # <p>Information about the location of a custom plugin.</p>
    # @!attribute s3_location
    #   <p>The S3 bucket Amazon Resource Name (ARN), file key, and object version of the plugin
    #            file stored in Amazon S3.</p>
    #   @return [Types::S3Location]
    class CustomPluginLocation < Struct.new(
      :s3_location,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the location of a custom plugin.</p>
    # @!attribute s3_location
    #   <p>The S3 bucket Amazon Resource Name (ARN), file key, and object version of the plugin
    #            file stored in Amazon S3.</p>
    #   @return [Types::S3LocationDescription]
    class CustomPluginLocationDescription < Struct.new(
      :s3_location,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about the revision of a custom plugin.</p>
    # @!attribute content_type
    #   <p>The format of the plugin file.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The time that the custom plugin was created.</p>
    #   @return [Time]
    # @!attribute description
    #   <p>The description of the custom plugin.</p>
    #   @return [String]
    # @!attribute file_description
    #   <p>Details about the custom plugin file.</p>
    #   @return [Types::CustomPluginFileDescription]
    # @!attribute location
    #   <p>Information about the location of the custom plugin.</p>
    #   @return [Types::CustomPluginLocationDescription]
    # @!attribute revision
    #   <p>The revision of the custom plugin.</p>
    #   @return [Integer]
    class CustomPluginRevisionSummary < Struct.new(
      :content_type,
      :creation_time,
      :description,
      :file_description,
      :location,
      :revision,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:revision] = 0 unless options.key?(:revision)
        super
      end
    end

    # <p>A summary of the custom plugin.</p>
    # @!attribute creation_time
    #   <p>The time that the custom plugin was created.</p>
    #   @return [Time]
    # @!attribute custom_plugin_arn
    #   <p>The Amazon Resource Name (ARN) of the custom plugin.</p>
    #   @return [String]
    # @!attribute custom_plugin_state
    #   <p>The state of the custom plugin.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the custom plugin.</p>
    #   @return [String]
    # @!attribute latest_revision
    #   <p>The latest revision of the custom plugin.</p>
    #   @return [Types::CustomPluginRevisionSummary]
    # @!attribute name
    #   <p>The name of the custom plugin.</p>
    #   @return [String]
    class CustomPluginSummary < Struct.new(
      :creation_time,
      :custom_plugin_arn,
      :custom_plugin_state,
      :description,
      :latest_revision,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute connector_arn
    #   <p>The Amazon Resource Name (ARN) of the connector that you requested to delete.</p>
    #   @return [String]
    # @!attribute connector_state
    #   <p>The state of the connector that you requested to delete.</p>
    #   @return [String]
    class DeleteConnectorOutput < Struct.new(
      :connector_arn,
      :connector_state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute connector_arn
    #   <p>The Amazon Resource Name (ARN) of the connector that you want to delete.</p>
    #   @return [String]
    # @!attribute current_version
    #   <p>The current version of the connector that you want to delete.</p>
    #   @return [String]
    class DeleteConnectorRequest < Struct.new(
      :connector_arn,
      :current_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute custom_plugin_arn
    #   <p>The Amazon Resource Name (ARN) of the custom plugin that you requested to delete.</p>
    #   @return [String]
    # @!attribute custom_plugin_state
    #   <p>The state of the custom plugin.</p>
    #   @return [String]
    class DeleteCustomPluginOutput < Struct.new(
      :custom_plugin_arn,
      :custom_plugin_state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute custom_plugin_arn
    #   <p>The Amazon Resource Name (ARN) of the custom plugin that you want to delete.</p>
    #   @return [String]
    class DeleteCustomPluginRequest < Struct.new(
      :custom_plugin_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute worker_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the worker configuration that you requested to delete.</p>
    #   @return [String]
    # @!attribute worker_configuration_state
    #   <p>The state of the worker configuration.</p>
    #   @return [String]
    class DeleteWorkerConfigurationOutput < Struct.new(
      :worker_configuration_arn,
      :worker_configuration_state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute worker_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the worker configuration that you want to delete.</p>
    #   @return [String]
    class DeleteWorkerConfigurationRequest < Struct.new(
      :worker_configuration_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute connector_operation_arn
    #   <p>ARN of the connector operation to be described.</p>
    #   @return [String]
    class DescribeConnectorOperationRequest < Struct.new(
      :connector_operation_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute connector_arn
    #   <p>The Amazon Resource Name (ARN) of the connector.</p>
    #   @return [String]
    # @!attribute connector_operation_arn
    #   <p>The Amazon Resource Name (ARN) of the connector operation.</p>
    #   @return [String]
    # @!attribute connector_operation_state
    #   <p>The state of the connector operation.</p>
    #   @return [String]
    # @!attribute connector_operation_type
    #   <p>The type of connector operation performed.</p>
    #   @return [String]
    # @!attribute operation_steps
    #   <p>The array of operation steps taken.</p>
    #   @return [Array<Types::ConnectorOperationStep>]
    # @!attribute origin_worker_setting
    #   <p>The origin worker setting.</p>
    #   @return [Types::WorkerSetting]
    # @!attribute origin_connector_configuration
    #   <p>The origin connector configuration.</p>
    #   @return [Hash<String, String>]
    # @!attribute target_worker_setting
    #   <p>The target worker setting.</p>
    #   @return [Types::WorkerSetting]
    # @!attribute target_connector_configuration
    #   <p>The target connector configuration.</p>
    #   @return [Hash<String, String>]
    # @!attribute error_info
    #   <p>Details about the state of a resource.</p>
    #   @return [Types::StateDescription]
    # @!attribute creation_time
    #   <p>The time when the operation was created.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The time when the operation ended.</p>
    #   @return [Time]
    class DescribeConnectorOperationResponse < Struct.new(
      :connector_arn,
      :connector_operation_arn,
      :connector_operation_state,
      :connector_operation_type,
      :operation_steps,
      :origin_worker_setting,
      :origin_connector_configuration,
      :target_worker_setting,
      :target_connector_configuration,
      :error_info,
      :creation_time,
      :end_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute capacity
    #   <p>Information about the capacity of the connector, whether it is auto scaled or
    #            provisioned.</p>
    #   @return [Types::CapacityDescription]
    # @!attribute connector_arn
    #   <p>The Amazon Resource Name (ARN) of the connector.</p>
    #   @return [String]
    # @!attribute connector_configuration
    #   <p>A map of keys to values that represent the configuration for the connector.</p>
    #   @return [Hash<String, String>]
    # @!attribute connector_description
    #   <p>A summary description of the connector.</p>
    #   @return [String]
    # @!attribute connector_name
    #   <p>The name of the connector.</p>
    #   @return [String]
    # @!attribute connector_state
    #   <p>The state of the connector.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The time the connector was created.</p>
    #   @return [Time]
    # @!attribute current_version
    #   <p>The current version of the connector.</p>
    #   @return [String]
    # @!attribute kafka_cluster
    #   <p>The Apache Kafka cluster that the connector is connected to.</p>
    #   @return [Types::KafkaClusterDescription]
    # @!attribute kafka_cluster_client_authentication
    #   <p>The type of client authentication used to connect to the Apache Kafka cluster. The value
    #            is NONE when no client authentication is used.</p>
    #   @return [Types::KafkaClusterClientAuthenticationDescription]
    # @!attribute kafka_cluster_encryption_in_transit
    #   <p>Details of encryption in transit to the Apache Kafka cluster.</p>
    #   @return [Types::KafkaClusterEncryptionInTransitDescription]
    # @!attribute kafka_connect_version
    #   <p>The version of Kafka Connect. It has to be compatible with both the Apache Kafka
    #            cluster's version and the plugins.</p>
    #   @return [String]
    # @!attribute log_delivery
    #   <p>Details about delivering logs to Amazon CloudWatch Logs.</p>
    #   @return [Types::LogDeliveryDescription]
    # @!attribute plugins
    #   <p>Specifies which plugins were used for this connector.</p>
    #   @return [Array<Types::PluginDescription>]
    # @!attribute service_execution_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role used by the connector to access Amazon
    #            Web Services resources.</p>
    #   @return [String]
    # @!attribute worker_configuration
    #   <p>Specifies which worker configuration was used for the connector.</p>
    #   @return [Types::WorkerConfigurationDescription]
    # @!attribute state_description
    #   <p>Details about the state of a connector.</p>
    #   @return [Types::StateDescription]
    class DescribeConnectorOutput < Struct.new(
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
      :worker_configuration,
      :state_description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute connector_arn
    #   <p>The Amazon Resource Name (ARN) of the connector that you want to describe.</p>
    #   @return [String]
    class DescribeConnectorRequest < Struct.new(
      :connector_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute creation_time
    #   <p>The time that the custom plugin was created.</p>
    #   @return [Time]
    # @!attribute custom_plugin_arn
    #   <p>The Amazon Resource Name (ARN) of the custom plugin.</p>
    #   @return [String]
    # @!attribute custom_plugin_state
    #   <p>The state of the custom plugin.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the custom plugin.</p>
    #   @return [String]
    # @!attribute latest_revision
    #   <p>The latest successfully created revision of the custom plugin. If there are no
    #            successfully created revisions, this field will be absent.</p>
    #   @return [Types::CustomPluginRevisionSummary]
    # @!attribute name
    #   <p>The name of the custom plugin.</p>
    #   @return [String]
    # @!attribute state_description
    #   <p>Details about the state of a custom plugin.</p>
    #   @return [Types::StateDescription]
    class DescribeCustomPluginOutput < Struct.new(
      :creation_time,
      :custom_plugin_arn,
      :custom_plugin_state,
      :description,
      :latest_revision,
      :name,
      :state_description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute custom_plugin_arn
    #   <p>Returns information about a custom plugin.</p>
    #   @return [String]
    class DescribeCustomPluginRequest < Struct.new(
      :custom_plugin_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute creation_time
    #   <p>The time that the worker configuration was created.</p>
    #   @return [Time]
    # @!attribute description
    #   <p>The description of the worker configuration.</p>
    #   @return [String]
    # @!attribute latest_revision
    #   <p>The latest revision of the custom configuration.</p>
    #   @return [Types::WorkerConfigurationRevisionDescription]
    # @!attribute name
    #   <p>The name of the worker configuration.</p>
    #   @return [String]
    # @!attribute worker_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the custom configuration.</p>
    #   @return [String]
    # @!attribute worker_configuration_state
    #   <p>The state of the worker configuration.</p>
    #   @return [String]
    class DescribeWorkerConfigurationOutput < Struct.new(
      :creation_time,
      :description,
      :latest_revision,
      :name,
      :worker_configuration_arn,
      :worker_configuration_state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute worker_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the worker configuration that you want to get
    #            information about.</p>
    #   @return [String]
    class DescribeWorkerConfigurationRequest < Struct.new(
      :worker_configuration_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The settings for delivering logs to Amazon Kinesis Data Firehose.</p>
    # @!attribute delivery_stream
    #   <p>The name of the Kinesis Data Firehose delivery stream that is the destination for log
    #            delivery.</p>
    #   @return [String]
    # @!attribute enabled
    #   <p>Specifies whether connector logs get delivered to Amazon Kinesis Data Firehose.</p>
    #   @return [Boolean]
    class FirehoseLogDelivery < Struct.new(
      :delivery_stream,
      :enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:enabled] = false unless options.key?(:enabled)
        super
      end
    end

    # <p>A description of the settings for delivering logs to Amazon Kinesis Data
    #          Firehose.</p>
    # @!attribute delivery_stream
    #   <p>The name of the Kinesis Data Firehose delivery stream that is the destination for log
    #            delivery.</p>
    #   @return [String]
    # @!attribute enabled
    #   <p>Specifies whether connector logs get delivered to Amazon Kinesis Data Firehose.</p>
    #   @return [Boolean]
    class FirehoseLogDeliveryDescription < Struct.new(
      :delivery_stream,
      :enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:enabled] = false unless options.key?(:enabled)
        super
      end
    end

    # <p>HTTP Status Code 403: Access forbidden. Correct your credentials and then retry your
    #          request.</p>
    # @!attribute message
    #   @return [String]
    class ForbiddenException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>HTTP Status Code 500: Unexpected internal server error. Retrying your request might
    #          resolve the issue.</p>
    # @!attribute message
    #   @return [String]
    class InternalServerErrorException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The details of the Apache Kafka cluster to which the connector is connected.</p>
    # @!attribute apache_kafka_cluster
    #   <p>The Apache Kafka cluster to which the connector is connected.</p>
    #   @return [Types::ApacheKafkaCluster]
    class KafkaCluster < Struct.new(
      :apache_kafka_cluster,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The client authentication information used in order to authenticate with the Apache
    #          Kafka cluster.</p>
    # @!attribute authentication_type
    #   <p>The type of client authentication used to connect to the Apache Kafka cluster. Value
    #            NONE means that no client authentication is used.</p>
    #   @return [String]
    class KafkaClusterClientAuthentication < Struct.new(
      :authentication_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The client authentication information used in order to authenticate with the Apache
    #          Kafka cluster.</p>
    # @!attribute authentication_type
    #   <p>The type of client authentication used to connect to the Apache Kafka cluster. Value
    #            NONE means that no client authentication is used.</p>
    #   @return [String]
    class KafkaClusterClientAuthenticationDescription < Struct.new(
      :authentication_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details of how to connect to the Apache Kafka cluster.</p>
    # @!attribute apache_kafka_cluster
    #   <p>The Apache Kafka cluster to which the connector is connected.</p>
    #   @return [Types::ApacheKafkaClusterDescription]
    class KafkaClusterDescription < Struct.new(
      :apache_kafka_cluster,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details of encryption in transit to the Apache Kafka cluster.</p>
    # @!attribute encryption_type
    #   <p>The type of encryption in transit to the Apache Kafka cluster.</p>
    #   @return [String]
    class KafkaClusterEncryptionInTransit < Struct.new(
      :encryption_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The description of the encryption in transit to the Apache Kafka cluster.</p>
    # @!attribute encryption_type
    #   <p>The type of encryption in transit to the Apache Kafka cluster.</p>
    #   @return [String]
    class KafkaClusterEncryptionInTransitDescription < Struct.new(
      :encryption_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute connector_arn
    #   <p>The Amazon Resource Name (ARN) of the connector for which to list operations.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Maximum number of connector operations to fetch in one get request.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If the response is truncated, it includes a NextToken. Send this NextToken in a subsequent request to continue listing from where it left off.</p>
    #   @return [String]
    class ListConnectorOperationsRequest < Struct.new(
      :connector_arn,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute connector_operations
    #   <p>An array of connector operation descriptions.</p>
    #   @return [Array<Types::ConnectorOperationSummary>]
    # @!attribute next_token
    #   <p>If the response is truncated, it includes a NextToken. Send this NextToken in a subsequent request to continue listing from where it left off.</p>
    #   @return [String]
    class ListConnectorOperationsResponse < Struct.new(
      :connector_operations,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute connectors
    #   <p>An array of connector descriptions.</p>
    #   @return [Array<Types::ConnectorSummary>]
    # @!attribute next_token
    #   <p>If the response of a ListConnectors operation is truncated, it will include a NextToken.
    #            Send this NextToken in a subsequent request to continue listing from where it left
    #            off.</p>
    #   @return [String]
    class ListConnectorsOutput < Struct.new(
      :connectors,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute connector_name_prefix
    #   <p>The name prefix that you want to use to search for and list connectors.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of connectors to list in one response.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If the response of a ListConnectors operation is truncated, it will include a NextToken.
    #            Send this NextToken in a subsequent request to continue listing from where the previous
    #            operation left off.</p>
    #   @return [String]
    class ListConnectorsRequest < Struct.new(
      :connector_name_prefix,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute custom_plugins
    #   <p>An array of custom plugin descriptions.</p>
    #   @return [Array<Types::CustomPluginSummary>]
    # @!attribute next_token
    #   <p>If the response of a ListCustomPlugins operation is truncated, it will include a
    #            NextToken. Send this NextToken in a subsequent request to continue listing from where the
    #            previous operation left off.</p>
    #   @return [String]
    class ListCustomPluginsOutput < Struct.new(
      :custom_plugins,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of custom plugins to list in one response.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If the response of a ListCustomPlugins operation is truncated, it will include a
    #            NextToken. Send this NextToken in a subsequent request to continue listing from where the
    #            previous operation left off.</p>
    #   @return [String]
    # @!attribute name_prefix
    #   <p>Lists custom plugin names that start with the specified text string.</p>
    #   @return [String]
    class ListCustomPluginsRequest < Struct.new(
      :max_results,
      :next_token,
      :name_prefix,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>Lists the tags attached to the specified resource in the corresponding request.</p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceOutput < Struct.new(
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource for which you want to list all attached tags.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>If the response of a ListWorkerConfigurations operation is truncated, it will include a
    #            NextToken. Send this NextToken in a subsequent request to continue listing from where the
    #            previous operation left off.</p>
    #   @return [String]
    # @!attribute worker_configurations
    #   <p>An array of worker configuration descriptions.</p>
    #   @return [Array<Types::WorkerConfigurationSummary>]
    class ListWorkerConfigurationsOutput < Struct.new(
      :next_token,
      :worker_configurations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of worker configurations to list in one response.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If the response of a ListWorkerConfigurations operation is truncated, it will include a
    #            NextToken. Send this NextToken in a subsequent request to continue listing from where the
    #            previous operation left off.</p>
    #   @return [String]
    # @!attribute name_prefix
    #   <p>Lists worker configuration names that start with the specified text string.</p>
    #   @return [String]
    class ListWorkerConfigurationsRequest < Struct.new(
      :max_results,
      :next_token,
      :name_prefix,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about log delivery.</p>
    # @!attribute worker_log_delivery
    #   <p>The workers can send worker logs to different destination types. This configuration
    #            specifies the details of these destinations.</p>
    #   @return [Types::WorkerLogDelivery]
    class LogDelivery < Struct.new(
      :worker_log_delivery,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The description of the log delivery settings.</p>
    # @!attribute worker_log_delivery
    #   <p>The workers can send worker logs to different destination types. This configuration
    #            specifies the details of these destinations.</p>
    #   @return [Types::WorkerLogDeliveryDescription]
    class LogDeliveryDescription < Struct.new(
      :worker_log_delivery,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>HTTP Status Code 404: Resource not found due to incorrect input. Correct your request
    #          and then retry it.</p>
    # @!attribute message
    #   @return [String]
    class NotFoundException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A plugin is an Amazon Web Services resource that contains the code that defines your connector logic. </p>
    # @!attribute custom_plugin
    #   <p>Details about a custom plugin.</p>
    #   @return [Types::CustomPlugin]
    class Plugin < Struct.new(
      :custom_plugin,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The description of the plugin.</p>
    # @!attribute custom_plugin
    #   <p>Details about a custom plugin.</p>
    #   @return [Types::CustomPluginDescription]
    class PluginDescription < Struct.new(
      :custom_plugin,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about a connector's provisioned capacity.</p>
    # @!attribute mcu_count
    #   <p>The number of microcontroller units (MCUs) allocated to each connector worker. The valid
    #            values are 1,2,4,8.</p>
    #   @return [Integer]
    # @!attribute worker_count
    #   <p>The number of workers that are allocated to the connector.</p>
    #   @return [Integer]
    class ProvisionedCapacity < Struct.new(
      :mcu_count,
      :worker_count,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:mcu_count] = 0 unless options.key?(:mcu_count)
        options[:worker_count] = 0 unless options.key?(:worker_count)
        super
      end
    end

    # <p>The description of a connector's provisioned capacity.</p>
    # @!attribute mcu_count
    #   <p>The number of microcontroller units (MCUs) allocated to each connector worker. The valid
    #            values are 1,2,4,8.</p>
    #   @return [Integer]
    # @!attribute worker_count
    #   <p>The number of workers that are allocated to the connector.</p>
    #   @return [Integer]
    class ProvisionedCapacityDescription < Struct.new(
      :mcu_count,
      :worker_count,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:mcu_count] = 0 unless options.key?(:mcu_count)
        options[:worker_count] = 0 unless options.key?(:worker_count)
        super
      end
    end

    # <p>An update to a connector's fixed capacity.</p>
    # @!attribute mcu_count
    #   <p>The number of microcontroller units (MCUs) allocated to each connector worker. The valid
    #            values are 1,2,4,8.</p>
    #   @return [Integer]
    # @!attribute worker_count
    #   <p>The number of workers that are allocated to the connector.</p>
    #   @return [Integer]
    class ProvisionedCapacityUpdate < Struct.new(
      :mcu_count,
      :worker_count,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:mcu_count] = 0 unless options.key?(:mcu_count)
        options[:worker_count] = 0 unless options.key?(:worker_count)
        super
      end
    end

    # <p>The location of an object in Amazon S3.</p>
    # @!attribute bucket_arn
    #   <p>The Amazon Resource Name (ARN) of an S3 bucket.</p>
    #   @return [String]
    # @!attribute file_key
    #   <p>The file key for an object in an S3 bucket.</p>
    #   @return [String]
    # @!attribute object_version
    #   <p>The version of an object in an S3 bucket.</p>
    #   @return [String]
    class S3Location < Struct.new(
      :bucket_arn,
      :file_key,
      :object_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The description of the location of an object in Amazon S3.</p>
    # @!attribute bucket_arn
    #   <p>The Amazon Resource Name (ARN) of an S3 bucket.</p>
    #   @return [String]
    # @!attribute file_key
    #   <p>The file key for an object in an S3 bucket.</p>
    #   @return [String]
    # @!attribute object_version
    #   <p>The version of an object in an S3 bucket.</p>
    #   @return [String]
    class S3LocationDescription < Struct.new(
      :bucket_arn,
      :file_key,
      :object_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about delivering logs to Amazon S3.</p>
    # @!attribute bucket
    #   <p>The name of the S3 bucket that is the destination for log delivery.</p>
    #   @return [String]
    # @!attribute enabled
    #   <p>Specifies whether connector logs get sent to the specified Amazon S3 destination.</p>
    #   @return [Boolean]
    # @!attribute prefix
    #   <p>The S3 prefix that is the destination for log delivery.</p>
    #   @return [String]
    class S3LogDelivery < Struct.new(
      :bucket,
      :enabled,
      :prefix,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:enabled] = false unless options.key?(:enabled)
        super
      end
    end

    # <p>The description of the details about delivering logs to Amazon S3.</p>
    # @!attribute bucket
    #   <p>The name of the S3 bucket that is the destination for log delivery.</p>
    #   @return [String]
    # @!attribute enabled
    #   <p>Specifies whether connector logs get sent to the specified Amazon S3 destination.</p>
    #   @return [Boolean]
    # @!attribute prefix
    #   <p>The S3 prefix that is the destination for log delivery.</p>
    #   @return [String]
    class S3LogDeliveryDescription < Struct.new(
      :bucket,
      :enabled,
      :prefix,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:enabled] = false unless options.key?(:enabled)
        super
      end
    end

    # <p>The scale-in policy for the connector.</p>
    # @!attribute cpu_utilization_percentage
    #   <p>Specifies the CPU utilization percentage threshold at which you want connector scale in
    #            to be triggered.</p>
    #   @return [Integer]
    class ScaleInPolicy < Struct.new(
      :cpu_utilization_percentage,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:cpu_utilization_percentage] = 0 unless options.key?(:cpu_utilization_percentage)
        super
      end
    end

    # <p>The description of the scale-in policy for the connector.</p>
    # @!attribute cpu_utilization_percentage
    #   <p>Specifies the CPU utilization percentage threshold at which you want connector scale in
    #            to be triggered.</p>
    #   @return [Integer]
    class ScaleInPolicyDescription < Struct.new(
      :cpu_utilization_percentage,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:cpu_utilization_percentage] = 0 unless options.key?(:cpu_utilization_percentage)
        super
      end
    end

    # <p>An update to the connector's scale-in policy.</p>
    # @!attribute cpu_utilization_percentage
    #   <p>The target CPU utilization percentage threshold at which you want connector scale in to
    #            be triggered.</p>
    #   @return [Integer]
    class ScaleInPolicyUpdate < Struct.new(
      :cpu_utilization_percentage,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:cpu_utilization_percentage] = 0 unless options.key?(:cpu_utilization_percentage)
        super
      end
    end

    # <p>The scale-out policy for the connector.</p>
    # @!attribute cpu_utilization_percentage
    #   <p>The CPU utilization percentage threshold at which you want connector scale out to be
    #            triggered.</p>
    #   @return [Integer]
    class ScaleOutPolicy < Struct.new(
      :cpu_utilization_percentage,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:cpu_utilization_percentage] = 0 unless options.key?(:cpu_utilization_percentage)
        super
      end
    end

    # <p>The description of the scale-out policy for the connector.</p>
    # @!attribute cpu_utilization_percentage
    #   <p>The CPU utilization percentage threshold at which you want connector scale out to be
    #            triggered.</p>
    #   @return [Integer]
    class ScaleOutPolicyDescription < Struct.new(
      :cpu_utilization_percentage,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:cpu_utilization_percentage] = 0 unless options.key?(:cpu_utilization_percentage)
        super
      end
    end

    # <p>An update to the connector's scale-out policy.</p>
    # @!attribute cpu_utilization_percentage
    #   <p>The target CPU utilization percentage threshold at which you want connector scale out to
    #            be triggered.</p>
    #   @return [Integer]
    class ScaleOutPolicyUpdate < Struct.new(
      :cpu_utilization_percentage,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:cpu_utilization_percentage] = 0 unless options.key?(:cpu_utilization_percentage)
        super
      end
    end

    # <p>HTTP Status Code 503: Service Unavailable. Retrying your request in some time might
    #          resolve the issue.</p>
    # @!attribute message
    #   @return [String]
    class ServiceUnavailableException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about the state of a resource.</p>
    # @!attribute code
    #   <p>A code that describes the state of a resource.</p>
    #   @return [String]
    # @!attribute message
    #   <p>A message that describes the state of a resource.</p>
    #   @return [String]
    class StateDescription < Struct.new(
      :code,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class TagResourceOutput < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to which you want to attach tags.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags that you want to attach to the resource.</p>
    #   @return [Hash<String, String>]
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>HTTP Status Code 429: Limit exceeded. Resource limit reached.</p>
    # @!attribute message
    #   @return [String]
    class TooManyRequestsException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>HTTP Status Code 401: Unauthorized request. The provided credentials couldn't be
    #          validated.</p>
    # @!attribute message
    #   @return [String]
    class UnauthorizedException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UntagResourceOutput < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource from which you want to remove tags.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The keys of the tags that you want to remove from the resource.</p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute connector_arn
    #   <p>The Amazon Resource Name (ARN) of the connector.</p>
    #   @return [String]
    # @!attribute connector_state
    #   <p>The state of the connector.</p>
    #   @return [String]
    # @!attribute connector_operation_arn
    #   <p>The Amazon Resource Name (ARN) of the connector operation.</p>
    #   @return [String]
    class UpdateConnectorOutput < Struct.new(
      :connector_arn,
      :connector_state,
      :connector_operation_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute capacity
    #   <p>The target capacity.</p>
    #   @return [Types::CapacityUpdate]
    # @!attribute connector_configuration
    #   <p>A map of keys to values that represent the configuration for the connector.</p>
    #   @return [Hash<String, String>]
    # @!attribute connector_arn
    #   <p>The Amazon Resource Name (ARN) of the connector that you want to update.</p>
    #   @return [String]
    # @!attribute current_version
    #   <p>The current version of the connector that you want to update.</p>
    #   @return [String]
    class UpdateConnectorRequest < Struct.new(
      :capacity,
      :connector_configuration,
      :connector_arn,
      :current_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the VPC in which the connector resides.</p>
    # @!attribute security_groups
    #   <p>The security groups for the connector.</p>
    #   @return [Array<String>]
    # @!attribute subnets
    #   <p>The subnets for the connector.</p>
    #   @return [Array<String>]
    class Vpc < Struct.new(
      :security_groups,
      :subnets,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The description of the VPC in which the connector resides.</p>
    # @!attribute security_groups
    #   <p>The security groups for the connector.</p>
    #   @return [Array<String>]
    # @!attribute subnets
    #   <p>The subnets for the connector.</p>
    #   @return [Array<String>]
    class VpcDescription < Struct.new(
      :security_groups,
      :subnets,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration of the workers, which are the processes that run the connector
    #          logic.</p>
    # @!attribute revision
    #   <p>The revision of the worker configuration.</p>
    #   @return [Integer]
    # @!attribute worker_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the worker configuration.</p>
    #   @return [String]
    class WorkerConfiguration < Struct.new(
      :revision,
      :worker_configuration_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:revision] = 0 unless options.key?(:revision)
        super
      end
    end

    # <p>The description of the worker configuration.</p>
    # @!attribute revision
    #   <p>The revision of the worker configuration.</p>
    #   @return [Integer]
    # @!attribute worker_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the worker configuration.</p>
    #   @return [String]
    class WorkerConfigurationDescription < Struct.new(
      :revision,
      :worker_configuration_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:revision] = 0 unless options.key?(:revision)
        super
      end
    end

    # <p>The description of the worker configuration revision.</p>
    # @!attribute creation_time
    #   <p>The time that the worker configuration was created.</p>
    #   @return [Time]
    # @!attribute description
    #   <p>The description of the worker configuration revision.</p>
    #   @return [String]
    # @!attribute properties_file_content
    #   <p>Base64 encoded contents of the connect-distributed.properties file.</p>
    #   @return [String]
    # @!attribute revision
    #   <p>The description of a revision of the worker configuration.</p>
    #   @return [Integer]
    class WorkerConfigurationRevisionDescription < Struct.new(
      :creation_time,
      :description,
      :properties_file_content,
      :revision,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:revision] = 0 unless options.key?(:revision)
        super
      end
    end

    # <p>The summary of a worker configuration revision.</p>
    # @!attribute creation_time
    #   <p>The time that a worker configuration revision was created.</p>
    #   @return [Time]
    # @!attribute description
    #   <p>The description of a worker configuration revision.</p>
    #   @return [String]
    # @!attribute revision
    #   <p>The revision of a worker configuration.</p>
    #   @return [Integer]
    class WorkerConfigurationRevisionSummary < Struct.new(
      :creation_time,
      :description,
      :revision,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:revision] = 0 unless options.key?(:revision)
        super
      end
    end

    # <p>The summary of a worker configuration.</p>
    # @!attribute creation_time
    #   <p>The time that a worker configuration was created.</p>
    #   @return [Time]
    # @!attribute description
    #   <p>The description of a worker configuration.</p>
    #   @return [String]
    # @!attribute latest_revision
    #   <p>The latest revision of a worker configuration.</p>
    #   @return [Types::WorkerConfigurationRevisionSummary]
    # @!attribute name
    #   <p>The name of the worker configuration.</p>
    #   @return [String]
    # @!attribute worker_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the worker configuration.</p>
    #   @return [String]
    # @!attribute worker_configuration_state
    #   <p>The state of the worker configuration.</p>
    #   @return [String]
    class WorkerConfigurationSummary < Struct.new(
      :creation_time,
      :description,
      :latest_revision,
      :name,
      :worker_configuration_arn,
      :worker_configuration_state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Workers can send worker logs to different destination types. This configuration
    #          specifies the details of these destinations.</p>
    # @!attribute cloud_watch_logs
    #   <p>Details about delivering logs to Amazon CloudWatch Logs.</p>
    #   @return [Types::CloudWatchLogsLogDelivery]
    # @!attribute firehose
    #   <p>Details about delivering logs to Amazon Kinesis Data Firehose.</p>
    #   @return [Types::FirehoseLogDelivery]
    # @!attribute s3
    #   <p>Details about delivering logs to Amazon S3.</p>
    #   @return [Types::S3LogDelivery]
    class WorkerLogDelivery < Struct.new(
      :cloud_watch_logs,
      :firehose,
      :s3,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Workers can send worker logs to different destination types. This configuration
    #          specifies the details of these destinations.</p>
    # @!attribute cloud_watch_logs
    #   <p>Details about delivering logs to Amazon CloudWatch Logs.</p>
    #   @return [Types::CloudWatchLogsLogDeliveryDescription]
    # @!attribute firehose
    #   <p>Details about delivering logs to Amazon Kinesis Data Firehose.</p>
    #   @return [Types::FirehoseLogDeliveryDescription]
    # @!attribute s3
    #   <p>Details about delivering logs to Amazon S3.</p>
    #   @return [Types::S3LogDeliveryDescription]
    class WorkerLogDeliveryDescription < Struct.new(
      :cloud_watch_logs,
      :firehose,
      :s3,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about worker setting of a connector</p>
    # @!attribute capacity
    #   <p>A description of the connector's capacity.</p>
    #   @return [Types::CapacityDescription]
    class WorkerSetting < Struct.new(
      :capacity,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
