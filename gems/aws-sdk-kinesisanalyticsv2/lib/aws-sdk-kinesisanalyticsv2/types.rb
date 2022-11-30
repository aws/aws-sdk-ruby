# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::KinesisAnalyticsV2
  module Types

    # @!attribute [rw] application_name
    #   The Kinesis Data Analytics application name.
    #   @return [String]
    #
    # @!attribute [rw] current_application_version_id
    #   The version ID of the Kinesis Data Analytics application. You must
    #   provide the `CurrentApplicationVersionId` or the
    #   `ConditionalToken`.You can retrieve the application version ID using
    #   DescribeApplication. For better concurrency support, use the
    #   `ConditionalToken` parameter instead of
    #   `CurrentApplicationVersionId`.
    #   @return [Integer]
    #
    # @!attribute [rw] cloud_watch_logging_option
    #   Provides the Amazon CloudWatch log stream Amazon Resource Name
    #   (ARN).
    #   @return [Types::CloudWatchLoggingOption]
    #
    # @!attribute [rw] conditional_token
    #   A value you use to implement strong concurrency for application
    #   updates. You must provide the `CurrentApplicationVersionId` or the
    #   `ConditionalToken`. You get the application's current
    #   `ConditionalToken` using DescribeApplication. For better concurrency
    #   support, use the `ConditionalToken` parameter instead of
    #   `CurrentApplicationVersionId`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/AddApplicationCloudWatchLoggingOptionRequest AWS API Documentation
    #
    class AddApplicationCloudWatchLoggingOptionRequest < Struct.new(
      :application_name,
      :current_application_version_id,
      :cloud_watch_logging_option,
      :conditional_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_arn
    #   The application's ARN.
    #   @return [String]
    #
    # @!attribute [rw] application_version_id
    #   The new version ID of the Kinesis Data Analytics application.
    #   Kinesis Data Analytics updates the `ApplicationVersionId` each time
    #   you change the CloudWatch logging options.
    #   @return [Integer]
    #
    # @!attribute [rw] cloud_watch_logging_option_descriptions
    #   The descriptions of the current CloudWatch logging options for the
    #   Kinesis Data Analytics application.
    #   @return [Array<Types::CloudWatchLoggingOptionDescription>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/AddApplicationCloudWatchLoggingOptionResponse AWS API Documentation
    #
    class AddApplicationCloudWatchLoggingOptionResponse < Struct.new(
      :application_arn,
      :application_version_id,
      :cloud_watch_logging_option_descriptions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_name
    #   The name of the application to which you want to add the input
    #   processing configuration.
    #   @return [String]
    #
    # @!attribute [rw] current_application_version_id
    #   The version of the application to which you want to add the input
    #   processing configuration. You can use the DescribeApplication
    #   operation to get the current application version. If the version
    #   specified is not the current version, the
    #   `ConcurrentModificationException` is returned.
    #   @return [Integer]
    #
    # @!attribute [rw] input_id
    #   The ID of the input configuration to add the input processing
    #   configuration to. You can get a list of the input IDs for an
    #   application using the DescribeApplication operation.
    #   @return [String]
    #
    # @!attribute [rw] input_processing_configuration
    #   The InputProcessingConfiguration to add to the application.
    #   @return [Types::InputProcessingConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/AddApplicationInputProcessingConfigurationRequest AWS API Documentation
    #
    class AddApplicationInputProcessingConfigurationRequest < Struct.new(
      :application_name,
      :current_application_version_id,
      :input_id,
      :input_processing_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_arn
    #   The Amazon Resource Name (ARN) of the application.
    #   @return [String]
    #
    # @!attribute [rw] application_version_id
    #   Provides the current application version.
    #   @return [Integer]
    #
    # @!attribute [rw] input_id
    #   The input ID that is associated with the application input. This is
    #   the ID that Kinesis Data Analytics assigns to each input
    #   configuration that you add to your application.
    #   @return [String]
    #
    # @!attribute [rw] input_processing_configuration_description
    #   The description of the preprocessor that executes on records in this
    #   input before the application's code is run.
    #   @return [Types::InputProcessingConfigurationDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/AddApplicationInputProcessingConfigurationResponse AWS API Documentation
    #
    class AddApplicationInputProcessingConfigurationResponse < Struct.new(
      :application_arn,
      :application_version_id,
      :input_id,
      :input_processing_configuration_description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_name
    #   The name of your existing application to which you want to add the
    #   streaming source.
    #   @return [String]
    #
    # @!attribute [rw] current_application_version_id
    #   The current version of your application. You must provide the
    #   `ApplicationVersionID` or the `ConditionalToken`.You can use the
    #   DescribeApplication operation to find the current application
    #   version.
    #   @return [Integer]
    #
    # @!attribute [rw] input
    #   The Input to add.
    #   @return [Types::Input]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/AddApplicationInputRequest AWS API Documentation
    #
    class AddApplicationInputRequest < Struct.new(
      :application_name,
      :current_application_version_id,
      :input)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_arn
    #   The Amazon Resource Name (ARN) of the application.
    #   @return [String]
    #
    # @!attribute [rw] application_version_id
    #   Provides the current application version.
    #   @return [Integer]
    #
    # @!attribute [rw] input_descriptions
    #   Describes the application input configuration.
    #   @return [Array<Types::InputDescription>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/AddApplicationInputResponse AWS API Documentation
    #
    class AddApplicationInputResponse < Struct.new(
      :application_arn,
      :application_version_id,
      :input_descriptions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_name
    #   The name of the application to which you want to add the output
    #   configuration.
    #   @return [String]
    #
    # @!attribute [rw] current_application_version_id
    #   The version of the application to which you want to add the output
    #   configuration. You can use the DescribeApplication operation to get
    #   the current application version. If the version specified is not the
    #   current version, the `ConcurrentModificationException` is returned.
    #   @return [Integer]
    #
    # @!attribute [rw] output
    #   An array of objects, each describing one output configuration. In
    #   the output configuration, you specify the name of an in-application
    #   stream, a destination (that is, a Kinesis data stream, a Kinesis
    #   Data Firehose delivery stream, or an Amazon Lambda function), and
    #   record the formation to use when writing to the destination.
    #   @return [Types::Output]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/AddApplicationOutputRequest AWS API Documentation
    #
    class AddApplicationOutputRequest < Struct.new(
      :application_name,
      :current_application_version_id,
      :output)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_arn
    #   The application Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] application_version_id
    #   The updated application version ID. Kinesis Data Analytics
    #   increments this ID when the application is updated.
    #   @return [Integer]
    #
    # @!attribute [rw] output_descriptions
    #   Describes the application output configuration. For more
    #   information, see [Configuring Application Output][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-output.html
    #   @return [Array<Types::OutputDescription>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/AddApplicationOutputResponse AWS API Documentation
    #
    class AddApplicationOutputResponse < Struct.new(
      :application_arn,
      :application_version_id,
      :output_descriptions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_name
    #   The name of an existing application.
    #   @return [String]
    #
    # @!attribute [rw] current_application_version_id
    #   The version of the application for which you are adding the
    #   reference data source. You can use the DescribeApplication operation
    #   to get the current application version. If the version specified is
    #   not the current version, the `ConcurrentModificationException` is
    #   returned.
    #   @return [Integer]
    #
    # @!attribute [rw] reference_data_source
    #   The reference data source can be an object in your Amazon S3 bucket.
    #   Kinesis Data Analytics reads the object and copies the data into the
    #   in-application table that is created. You provide an S3 bucket,
    #   object key name, and the resulting in-application table that is
    #   created.
    #   @return [Types::ReferenceDataSource]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/AddApplicationReferenceDataSourceRequest AWS API Documentation
    #
    class AddApplicationReferenceDataSourceRequest < Struct.new(
      :application_name,
      :current_application_version_id,
      :reference_data_source)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_arn
    #   The application Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] application_version_id
    #   The updated application version ID. Kinesis Data Analytics
    #   increments this ID when the application is updated.
    #   @return [Integer]
    #
    # @!attribute [rw] reference_data_source_descriptions
    #   Describes reference data sources configured for the application.
    #   @return [Array<Types::ReferenceDataSourceDescription>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/AddApplicationReferenceDataSourceResponse AWS API Documentation
    #
    class AddApplicationReferenceDataSourceResponse < Struct.new(
      :application_arn,
      :application_version_id,
      :reference_data_source_descriptions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_name
    #   The name of an existing application.
    #   @return [String]
    #
    # @!attribute [rw] current_application_version_id
    #   The version of the application to which you want to add the VPC
    #   configuration. You must provide the `CurrentApplicationVersionId` or
    #   the `ConditionalToken`. You can use the DescribeApplication
    #   operation to get the current application version. If the version
    #   specified is not the current version, the
    #   `ConcurrentModificationException` is returned. For better
    #   concurrency support, use the `ConditionalToken` parameter instead of
    #   `CurrentApplicationVersionId`.
    #   @return [Integer]
    #
    # @!attribute [rw] vpc_configuration
    #   Description of the VPC to add to the application.
    #   @return [Types::VpcConfiguration]
    #
    # @!attribute [rw] conditional_token
    #   A value you use to implement strong concurrency for application
    #   updates. You must provide the `ApplicationVersionID` or the
    #   `ConditionalToken`. You get the application's current
    #   `ConditionalToken` using DescribeApplication. For better concurrency
    #   support, use the `ConditionalToken` parameter instead of
    #   `CurrentApplicationVersionId`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/AddApplicationVpcConfigurationRequest AWS API Documentation
    #
    class AddApplicationVpcConfigurationRequest < Struct.new(
      :application_name,
      :current_application_version_id,
      :vpc_configuration,
      :conditional_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_arn
    #   The ARN of the application.
    #   @return [String]
    #
    # @!attribute [rw] application_version_id
    #   Provides the current application version. Kinesis Data Analytics
    #   updates the ApplicationVersionId each time you update the
    #   application.
    #   @return [Integer]
    #
    # @!attribute [rw] vpc_configuration_description
    #   The parameters of the new VPC configuration.
    #   @return [Types::VpcConfigurationDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/AddApplicationVpcConfigurationResponse AWS API Documentation
    #
    class AddApplicationVpcConfigurationResponse < Struct.new(
      :application_arn,
      :application_version_id,
      :vpc_configuration_description)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes code configuration for an application.
    #
    # @!attribute [rw] code_content
    #   The location and type of the application code.
    #   @return [Types::CodeContent]
    #
    # @!attribute [rw] code_content_type
    #   Specifies whether the code content is in text or zip format.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/ApplicationCodeConfiguration AWS API Documentation
    #
    class ApplicationCodeConfiguration < Struct.new(
      :code_content,
      :code_content_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes code configuration for an application.
    #
    # @!attribute [rw] code_content_type
    #   Specifies whether the code content is in text or zip format.
    #   @return [String]
    #
    # @!attribute [rw] code_content_description
    #   Describes details about the location and format of the application
    #   code.
    #   @return [Types::CodeContentDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/ApplicationCodeConfigurationDescription AWS API Documentation
    #
    class ApplicationCodeConfigurationDescription < Struct.new(
      :code_content_type,
      :code_content_description)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes code configuration updates for an application. This is
    # supported for a Flink-based Kinesis Data Analytics application or a
    # SQL-based Kinesis Data Analytics application.
    #
    # @!attribute [rw] code_content_type_update
    #   Describes updates to the code content type.
    #   @return [String]
    #
    # @!attribute [rw] code_content_update
    #   Describes updates to the code content of an application.
    #   @return [Types::CodeContentUpdate]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/ApplicationCodeConfigurationUpdate AWS API Documentation
    #
    class ApplicationCodeConfigurationUpdate < Struct.new(
      :code_content_type_update,
      :code_content_update)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the creation parameters for a Kinesis Data Analytics
    # application.
    #
    # @!attribute [rw] sql_application_configuration
    #   The creation and update parameters for a SQL-based Kinesis Data
    #   Analytics application.
    #   @return [Types::SqlApplicationConfiguration]
    #
    # @!attribute [rw] flink_application_configuration
    #   The creation and update parameters for a Flink-based Kinesis Data
    #   Analytics application.
    #   @return [Types::FlinkApplicationConfiguration]
    #
    # @!attribute [rw] environment_properties
    #   Describes execution properties for a Flink-based Kinesis Data
    #   Analytics application.
    #   @return [Types::EnvironmentProperties]
    #
    # @!attribute [rw] application_code_configuration
    #   The code location and type parameters for a Flink-based Kinesis Data
    #   Analytics application.
    #   @return [Types::ApplicationCodeConfiguration]
    #
    # @!attribute [rw] application_snapshot_configuration
    #   Describes whether snapshots are enabled for a Flink-based Kinesis
    #   Data Analytics application.
    #   @return [Types::ApplicationSnapshotConfiguration]
    #
    # @!attribute [rw] vpc_configurations
    #   The array of descriptions of VPC configurations available to the
    #   application.
    #   @return [Array<Types::VpcConfiguration>]
    #
    # @!attribute [rw] zeppelin_application_configuration
    #   The configuration parameters for a Kinesis Data Analytics Studio
    #   notebook.
    #   @return [Types::ZeppelinApplicationConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/ApplicationConfiguration AWS API Documentation
    #
    class ApplicationConfiguration < Struct.new(
      :sql_application_configuration,
      :flink_application_configuration,
      :environment_properties,
      :application_code_configuration,
      :application_snapshot_configuration,
      :vpc_configurations,
      :zeppelin_application_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes details about the application code and starting parameters
    # for a Kinesis Data Analytics application.
    #
    # @!attribute [rw] sql_application_configuration_description
    #   The details about inputs, outputs, and reference data sources for a
    #   SQL-based Kinesis Data Analytics application.
    #   @return [Types::SqlApplicationConfigurationDescription]
    #
    # @!attribute [rw] application_code_configuration_description
    #   The details about the application code for a Flink-based Kinesis
    #   Data Analytics application.
    #   @return [Types::ApplicationCodeConfigurationDescription]
    #
    # @!attribute [rw] run_configuration_description
    #   The details about the starting properties for a Kinesis Data
    #   Analytics application.
    #   @return [Types::RunConfigurationDescription]
    #
    # @!attribute [rw] flink_application_configuration_description
    #   The details about a Flink-based Kinesis Data Analytics application.
    #   @return [Types::FlinkApplicationConfigurationDescription]
    #
    # @!attribute [rw] environment_property_descriptions
    #   Describes execution properties for a Flink-based Kinesis Data
    #   Analytics application.
    #   @return [Types::EnvironmentPropertyDescriptions]
    #
    # @!attribute [rw] application_snapshot_configuration_description
    #   Describes whether snapshots are enabled for a Flink-based Kinesis
    #   Data Analytics application.
    #   @return [Types::ApplicationSnapshotConfigurationDescription]
    #
    # @!attribute [rw] vpc_configuration_descriptions
    #   The array of descriptions of VPC configurations available to the
    #   application.
    #   @return [Array<Types::VpcConfigurationDescription>]
    #
    # @!attribute [rw] zeppelin_application_configuration_description
    #   The configuration parameters for a Kinesis Data Analytics Studio
    #   notebook.
    #   @return [Types::ZeppelinApplicationConfigurationDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/ApplicationConfigurationDescription AWS API Documentation
    #
    class ApplicationConfigurationDescription < Struct.new(
      :sql_application_configuration_description,
      :application_code_configuration_description,
      :run_configuration_description,
      :flink_application_configuration_description,
      :environment_property_descriptions,
      :application_snapshot_configuration_description,
      :vpc_configuration_descriptions,
      :zeppelin_application_configuration_description)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes updates to an application's configuration.
    #
    # @!attribute [rw] sql_application_configuration_update
    #   Describes updates to a SQL-based Kinesis Data Analytics
    #   application's configuration.
    #   @return [Types::SqlApplicationConfigurationUpdate]
    #
    # @!attribute [rw] application_code_configuration_update
    #   Describes updates to an application's code configuration.
    #   @return [Types::ApplicationCodeConfigurationUpdate]
    #
    # @!attribute [rw] flink_application_configuration_update
    #   Describes updates to a Flink-based Kinesis Data Analytics
    #   application's configuration.
    #   @return [Types::FlinkApplicationConfigurationUpdate]
    #
    # @!attribute [rw] environment_property_updates
    #   Describes updates to the environment properties for a Flink-based
    #   Kinesis Data Analytics application.
    #   @return [Types::EnvironmentPropertyUpdates]
    #
    # @!attribute [rw] application_snapshot_configuration_update
    #   Describes whether snapshots are enabled for a Flink-based Kinesis
    #   Data Analytics application.
    #   @return [Types::ApplicationSnapshotConfigurationUpdate]
    #
    # @!attribute [rw] vpc_configuration_updates
    #   Updates to the array of descriptions of VPC configurations available
    #   to the application.
    #   @return [Array<Types::VpcConfigurationUpdate>]
    #
    # @!attribute [rw] zeppelin_application_configuration_update
    #   Updates to the configuration of a Kinesis Data Analytics Studio
    #   notebook.
    #   @return [Types::ZeppelinApplicationConfigurationUpdate]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/ApplicationConfigurationUpdate AWS API Documentation
    #
    class ApplicationConfigurationUpdate < Struct.new(
      :sql_application_configuration_update,
      :application_code_configuration_update,
      :flink_application_configuration_update,
      :environment_property_updates,
      :application_snapshot_configuration_update,
      :vpc_configuration_updates,
      :zeppelin_application_configuration_update)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the application, including the application Amazon Resource
    # Name (ARN), status, latest version, and input and output
    # configurations.
    #
    # @!attribute [rw] application_arn
    #   The ARN of the application.
    #   @return [String]
    #
    # @!attribute [rw] application_description
    #   The description of the application.
    #   @return [String]
    #
    # @!attribute [rw] application_name
    #   The name of the application.
    #   @return [String]
    #
    # @!attribute [rw] runtime_environment
    #   The runtime environment for the application.
    #   @return [String]
    #
    # @!attribute [rw] service_execution_role
    #   Specifies the IAM role that the application uses to access external
    #   resources.
    #   @return [String]
    #
    # @!attribute [rw] application_status
    #   The status of the application.
    #   @return [String]
    #
    # @!attribute [rw] application_version_id
    #   Provides the current application version. Kinesis Data Analytics
    #   updates the `ApplicationVersionId` each time you update the
    #   application.
    #   @return [Integer]
    #
    # @!attribute [rw] create_timestamp
    #   The current timestamp when the application was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_update_timestamp
    #   The current timestamp when the application was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] application_configuration_description
    #   Describes details about the application code and starting parameters
    #   for a Kinesis Data Analytics application.
    #   @return [Types::ApplicationConfigurationDescription]
    #
    # @!attribute [rw] cloud_watch_logging_option_descriptions
    #   Describes the application Amazon CloudWatch logging options.
    #   @return [Array<Types::CloudWatchLoggingOptionDescription>]
    #
    # @!attribute [rw] application_maintenance_configuration_description
    #   The details of the maintenance configuration for the application.
    #   @return [Types::ApplicationMaintenanceConfigurationDescription]
    #
    # @!attribute [rw] application_version_updated_from
    #   The previous application version before the latest application
    #   update. RollbackApplication reverts the application to this version.
    #   @return [Integer]
    #
    # @!attribute [rw] application_version_rolled_back_from
    #   If you reverted the application using RollbackApplication, the
    #   application version when `RollbackApplication` was called.
    #   @return [Integer]
    #
    # @!attribute [rw] conditional_token
    #   A value you use to implement strong concurrency for application
    #   updates.
    #   @return [String]
    #
    # @!attribute [rw] application_version_rolled_back_to
    #   The version to which you want to roll back the application.
    #   @return [Integer]
    #
    # @!attribute [rw] application_mode
    #   To create a Kinesis Data Analytics Studio notebook, you must set the
    #   mode to `INTERACTIVE`. However, for a Kinesis Data Analytics for
    #   Apache Flink application, the mode is optional.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/ApplicationDetail AWS API Documentation
    #
    class ApplicationDetail < Struct.new(
      :application_arn,
      :application_description,
      :application_name,
      :runtime_environment,
      :service_execution_role,
      :application_status,
      :application_version_id,
      :create_timestamp,
      :last_update_timestamp,
      :application_configuration_description,
      :cloud_watch_logging_option_descriptions,
      :application_maintenance_configuration_description,
      :application_version_updated_from,
      :application_version_rolled_back_from,
      :conditional_token,
      :application_version_rolled_back_to,
      :application_mode)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of the maintenance configuration for the application.
    #
    # @!attribute [rw] application_maintenance_window_start_time
    #   The start time for the maintenance window.
    #   @return [String]
    #
    # @!attribute [rw] application_maintenance_window_end_time
    #   The end time for the maintenance window.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/ApplicationMaintenanceConfigurationDescription AWS API Documentation
    #
    class ApplicationMaintenanceConfigurationDescription < Struct.new(
      :application_maintenance_window_start_time,
      :application_maintenance_window_end_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the updated maintenance configuration for the application.
    #
    # @!attribute [rw] application_maintenance_window_start_time_update
    #   The updated start time for the maintenance window.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/ApplicationMaintenanceConfigurationUpdate AWS API Documentation
    #
    class ApplicationMaintenanceConfigurationUpdate < Struct.new(
      :application_maintenance_window_start_time_update)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the method and snapshot to use when restarting an
    # application using previously saved application state.
    #
    # @!attribute [rw] application_restore_type
    #   Specifies how the application should be restored.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_name
    #   The identifier of an existing snapshot of application state to use
    #   to restart an application. The application uses this value if
    #   `RESTORE_FROM_CUSTOM_SNAPSHOT` is specified for the
    #   `ApplicationRestoreType`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/ApplicationRestoreConfiguration AWS API Documentation
    #
    class ApplicationRestoreConfiguration < Struct.new(
      :application_restore_type,
      :snapshot_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes whether snapshots are enabled for a Flink-based Kinesis Data
    # Analytics application.
    #
    # @!attribute [rw] snapshots_enabled
    #   Describes whether snapshots are enabled for a Flink-based Kinesis
    #   Data Analytics application.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/ApplicationSnapshotConfiguration AWS API Documentation
    #
    class ApplicationSnapshotConfiguration < Struct.new(
      :snapshots_enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes whether snapshots are enabled for a Flink-based Kinesis Data
    # Analytics application.
    #
    # @!attribute [rw] snapshots_enabled
    #   Describes whether snapshots are enabled for a Flink-based Kinesis
    #   Data Analytics application.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/ApplicationSnapshotConfigurationDescription AWS API Documentation
    #
    class ApplicationSnapshotConfigurationDescription < Struct.new(
      :snapshots_enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes updates to whether snapshots are enabled for a Flink-based
    # Kinesis Data Analytics application.
    #
    # @!attribute [rw] snapshots_enabled_update
    #   Describes updates to whether snapshots are enabled for an
    #   application.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/ApplicationSnapshotConfigurationUpdate AWS API Documentation
    #
    class ApplicationSnapshotConfigurationUpdate < Struct.new(
      :snapshots_enabled_update)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides application summary information, including the application
    # Amazon Resource Name (ARN), name, and status.
    #
    # @!attribute [rw] application_name
    #   The name of the application.
    #   @return [String]
    #
    # @!attribute [rw] application_arn
    #   The ARN of the application.
    #   @return [String]
    #
    # @!attribute [rw] application_status
    #   The status of the application.
    #   @return [String]
    #
    # @!attribute [rw] application_version_id
    #   Provides the current application version.
    #   @return [Integer]
    #
    # @!attribute [rw] runtime_environment
    #   The runtime environment for the application.
    #   @return [String]
    #
    # @!attribute [rw] application_mode
    #   For a Kinesis Data Analytics for Apache Flink application, the mode
    #   is `STREAMING`. For a Kinesis Data Analytics Studio notebook, it is
    #   `INTERACTIVE`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/ApplicationSummary AWS API Documentation
    #
    class ApplicationSummary < Struct.new(
      :application_name,
      :application_arn,
      :application_status,
      :application_version_id,
      :runtime_environment,
      :application_mode)
      SENSITIVE = []
      include Aws::Structure
    end

    # The summary of the application version.
    #
    # @!attribute [rw] application_version_id
    #   The ID of the application version. Kinesis Data Analytics updates
    #   the `ApplicationVersionId` each time you update the application.
    #   @return [Integer]
    #
    # @!attribute [rw] application_status
    #   The status of the application.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/ApplicationVersionSummary AWS API Documentation
    #
    class ApplicationVersionSummary < Struct.new(
      :application_version_id,
      :application_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # For a SQL-based Kinesis Data Analytics application, provides
    # additional mapping information when the record format uses delimiters,
    # such as CSV. For example, the following sample records use CSV format,
    # where the records use the *'\\n'* as the row delimiter and a comma
    # (",") as the column delimiter:
    #
    # `"name1", "address1"`
    #
    # `"name2", "address2"`
    #
    # @!attribute [rw] record_row_delimiter
    #   The row delimiter. For example, in a CSV format, *'\\n'* is the
    #   typical row delimiter.
    #   @return [String]
    #
    # @!attribute [rw] record_column_delimiter
    #   The column delimiter. For example, in a CSV format, a comma (",")
    #   is the typical column delimiter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/CSVMappingParameters AWS API Documentation
    #
    class CSVMappingParameters < Struct.new(
      :record_row_delimiter,
      :record_column_delimiter)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration parameters for the default Amazon Glue database. You
    # use this database for SQL queries that you write in a Kinesis Data
    # Analytics Studio notebook.
    #
    # @!attribute [rw] glue_data_catalog_configuration
    #   The configuration parameters for the default Amazon Glue database.
    #   You use this database for Apache Flink SQL queries and table API
    #   transforms that you write in a Kinesis Data Analytics Studio
    #   notebook.
    #   @return [Types::GlueDataCatalogConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/CatalogConfiguration AWS API Documentation
    #
    class CatalogConfiguration < Struct.new(
      :glue_data_catalog_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration parameters for the default Amazon Glue database. You
    # use this database for Apache Flink SQL queries and table API
    # transforms that you write in a Kinesis Data Analytics Studio notebook.
    #
    # @!attribute [rw] glue_data_catalog_configuration_description
    #   The configuration parameters for the default Amazon Glue database.
    #   You use this database for SQL queries that you write in a Kinesis
    #   Data Analytics Studio notebook.
    #   @return [Types::GlueDataCatalogConfigurationDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/CatalogConfigurationDescription AWS API Documentation
    #
    class CatalogConfigurationDescription < Struct.new(
      :glue_data_catalog_configuration_description)
      SENSITIVE = []
      include Aws::Structure
    end

    # Updates to the configuration parameters for the default Amazon Glue
    # database. You use this database for SQL queries that you write in a
    # Kinesis Data Analytics Studio notebook.
    #
    # @!attribute [rw] glue_data_catalog_configuration_update
    #   Updates to the configuration parameters for the default Amazon Glue
    #   database. You use this database for SQL queries that you write in a
    #   Kinesis Data Analytics Studio notebook.
    #   @return [Types::GlueDataCatalogConfigurationUpdate]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/CatalogConfigurationUpdate AWS API Documentation
    #
    class CatalogConfigurationUpdate < Struct.new(
      :glue_data_catalog_configuration_update)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an application's checkpointing configuration. Checkpointing
    # is the process of persisting application state for fault tolerance.
    # For more information, see [ Checkpoints for Fault Tolerance][1] in the
    # [Apache Flink Documentation][2].
    #
    #
    #
    # [1]: https://ci.apache.org/projects/flink/flink-docs-release-1.8/concepts/programming-model.html#checkpoints-for-fault-tolerance
    # [2]: https://ci.apache.org/projects/flink/flink-docs-release-1.8/
    #
    # @!attribute [rw] configuration_type
    #   Describes whether the application uses Kinesis Data Analytics'
    #   default checkpointing behavior. You must set this property to
    #   `CUSTOM` in order to set the `CheckpointingEnabled`,
    #   `CheckpointInterval`, or `MinPauseBetweenCheckpoints` parameters.
    #
    #   <note markdown="1"> If this value is set to `DEFAULT`, the application will use the
    #   following values, even if they are set to other values using APIs or
    #   application code:
    #
    #    * **CheckpointingEnabled:** true
    #
    #   * **CheckpointInterval:** 60000
    #
    #   * **MinPauseBetweenCheckpoints:** 5000
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] checkpointing_enabled
    #   Describes whether checkpointing is enabled for a Flink-based Kinesis
    #   Data Analytics application.
    #
    #   <note markdown="1"> If `CheckpointConfiguration.ConfigurationType` is `DEFAULT`, the
    #   application will use a `CheckpointingEnabled` value of `true`, even
    #   if this value is set to another value using this API or in
    #   application code.
    #
    #    </note>
    #   @return [Boolean]
    #
    # @!attribute [rw] checkpoint_interval
    #   Describes the interval in milliseconds between checkpoint
    #   operations.
    #
    #   <note markdown="1"> If `CheckpointConfiguration.ConfigurationType` is `DEFAULT`, the
    #   application will use a `CheckpointInterval` value of 60000, even if
    #   this value is set to another value using this API or in application
    #   code.
    #
    #    </note>
    #   @return [Integer]
    #
    # @!attribute [rw] min_pause_between_checkpoints
    #   Describes the minimum time in milliseconds after a checkpoint
    #   operation completes that a new checkpoint operation can start. If a
    #   checkpoint operation takes longer than the `CheckpointInterval`, the
    #   application otherwise performs continual checkpoint operations. For
    #   more information, see [ Tuning Checkpointing][1] in the [Apache
    #   Flink Documentation][2].
    #
    #   <note markdown="1"> If `CheckpointConfiguration.ConfigurationType` is `DEFAULT`, the
    #   application will use a `MinPauseBetweenCheckpoints` value of 5000,
    #   even if this value is set using this API or in application code.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://ci.apache.org/projects/flink/flink-docs-release-1.8/ops/state/large_state_tuning.html#tuning-checkpointing
    #   [2]: https://ci.apache.org/projects/flink/flink-docs-release-1.8/
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/CheckpointConfiguration AWS API Documentation
    #
    class CheckpointConfiguration < Struct.new(
      :configuration_type,
      :checkpointing_enabled,
      :checkpoint_interval,
      :min_pause_between_checkpoints)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes checkpointing parameters for a Flink-based Kinesis Data
    # Analytics application.
    #
    # @!attribute [rw] configuration_type
    #   Describes whether the application uses the default checkpointing
    #   behavior in Kinesis Data Analytics.
    #
    #   <note markdown="1"> If this value is set to `DEFAULT`, the application will use the
    #   following values, even if they are set to other values using APIs or
    #   application code:
    #
    #    * **CheckpointingEnabled:** true
    #
    #   * **CheckpointInterval:** 60000
    #
    #   * **MinPauseBetweenCheckpoints:** 5000
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] checkpointing_enabled
    #   Describes whether checkpointing is enabled for a Flink-based Kinesis
    #   Data Analytics application.
    #
    #   <note markdown="1"> If `CheckpointConfiguration.ConfigurationType` is `DEFAULT`, the
    #   application will use a `CheckpointingEnabled` value of `true`, even
    #   if this value is set to another value using this API or in
    #   application code.
    #
    #    </note>
    #   @return [Boolean]
    #
    # @!attribute [rw] checkpoint_interval
    #   Describes the interval in milliseconds between checkpoint
    #   operations.
    #
    #   <note markdown="1"> If `CheckpointConfiguration.ConfigurationType` is `DEFAULT`, the
    #   application will use a `CheckpointInterval` value of 60000, even if
    #   this value is set to another value using this API or in application
    #   code.
    #
    #    </note>
    #   @return [Integer]
    #
    # @!attribute [rw] min_pause_between_checkpoints
    #   Describes the minimum time in milliseconds after a checkpoint
    #   operation completes that a new checkpoint operation can start.
    #
    #   <note markdown="1"> If `CheckpointConfiguration.ConfigurationType` is `DEFAULT`, the
    #   application will use a `MinPauseBetweenCheckpoints` value of 5000,
    #   even if this value is set using this API or in application code.
    #
    #    </note>
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/CheckpointConfigurationDescription AWS API Documentation
    #
    class CheckpointConfigurationDescription < Struct.new(
      :configuration_type,
      :checkpointing_enabled,
      :checkpoint_interval,
      :min_pause_between_checkpoints)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes updates to the checkpointing parameters for a Flink-based
    # Kinesis Data Analytics application.
    #
    # @!attribute [rw] configuration_type_update
    #   Describes updates to whether the application uses the default
    #   checkpointing behavior of Kinesis Data Analytics. You must set this
    #   property to `CUSTOM` in order to set the `CheckpointingEnabled`,
    #   `CheckpointInterval`, or `MinPauseBetweenCheckpoints` parameters.
    #
    #   <note markdown="1"> If this value is set to `DEFAULT`, the application will use the
    #   following values, even if they are set to other values using APIs or
    #   application code:
    #
    #    * **CheckpointingEnabled:** true
    #
    #   * **CheckpointInterval:** 60000
    #
    #   * **MinPauseBetweenCheckpoints:** 5000
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] checkpointing_enabled_update
    #   Describes updates to whether checkpointing is enabled for an
    #   application.
    #
    #   <note markdown="1"> If `CheckpointConfiguration.ConfigurationType` is `DEFAULT`, the
    #   application will use a `CheckpointingEnabled` value of `true`, even
    #   if this value is set to another value using this API or in
    #   application code.
    #
    #    </note>
    #   @return [Boolean]
    #
    # @!attribute [rw] checkpoint_interval_update
    #   Describes updates to the interval in milliseconds between checkpoint
    #   operations.
    #
    #   <note markdown="1"> If `CheckpointConfiguration.ConfigurationType` is `DEFAULT`, the
    #   application will use a `CheckpointInterval` value of 60000, even if
    #   this value is set to another value using this API or in application
    #   code.
    #
    #    </note>
    #   @return [Integer]
    #
    # @!attribute [rw] min_pause_between_checkpoints_update
    #   Describes updates to the minimum time in milliseconds after a
    #   checkpoint operation completes that a new checkpoint operation can
    #   start.
    #
    #   <note markdown="1"> If `CheckpointConfiguration.ConfigurationType` is `DEFAULT`, the
    #   application will use a `MinPauseBetweenCheckpoints` value of 5000,
    #   even if this value is set using this API or in application code.
    #
    #    </note>
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/CheckpointConfigurationUpdate AWS API Documentation
    #
    class CheckpointConfigurationUpdate < Struct.new(
      :configuration_type_update,
      :checkpointing_enabled_update,
      :checkpoint_interval_update,
      :min_pause_between_checkpoints_update)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides a description of Amazon CloudWatch logging options, including
    # the log stream Amazon Resource Name (ARN).
    #
    # @!attribute [rw] log_stream_arn
    #   The ARN of the CloudWatch log to receive application messages.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/CloudWatchLoggingOption AWS API Documentation
    #
    class CloudWatchLoggingOption < Struct.new(
      :log_stream_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the Amazon CloudWatch logging option.
    #
    # @!attribute [rw] cloud_watch_logging_option_id
    #   The ID of the CloudWatch logging option description.
    #   @return [String]
    #
    # @!attribute [rw] log_stream_arn
    #   The Amazon Resource Name (ARN) of the CloudWatch log to receive
    #   application messages.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The IAM ARN of the role to use to send application messages.
    #
    #   <note markdown="1"> Provided for backward compatibility. Applications created with the
    #   current API version have an application-level service execution role
    #   rather than a resource-level role.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/CloudWatchLoggingOptionDescription AWS API Documentation
    #
    class CloudWatchLoggingOptionDescription < Struct.new(
      :cloud_watch_logging_option_id,
      :log_stream_arn,
      :role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the Amazon CloudWatch logging option updates.
    #
    # @!attribute [rw] cloud_watch_logging_option_id
    #   The ID of the CloudWatch logging option to update
    #   @return [String]
    #
    # @!attribute [rw] log_stream_arn_update
    #   The Amazon Resource Name (ARN) of the CloudWatch log to receive
    #   application messages.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/CloudWatchLoggingOptionUpdate AWS API Documentation
    #
    class CloudWatchLoggingOptionUpdate < Struct.new(
      :cloud_watch_logging_option_id,
      :log_stream_arn_update)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies either the application code, or the location of the
    # application code, for a Flink-based Kinesis Data Analytics
    # application.
    #
    # @!attribute [rw] text_content
    #   The text-format code for a Flink-based Kinesis Data Analytics
    #   application.
    #   @return [String]
    #
    # @!attribute [rw] zip_file_content
    #   The zip-format code for a Flink-based Kinesis Data Analytics
    #   application.
    #   @return [String]
    #
    # @!attribute [rw] s3_content_location
    #   Information about the Amazon S3 bucket that contains the application
    #   code.
    #   @return [Types::S3ContentLocation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/CodeContent AWS API Documentation
    #
    class CodeContent < Struct.new(
      :text_content,
      :zip_file_content,
      :s3_content_location)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes details about the code of a Kinesis Data Analytics
    # application.
    #
    # @!attribute [rw] text_content
    #   The text-format code
    #   @return [String]
    #
    # @!attribute [rw] code_md5
    #   The checksum that can be used to validate zip-format code.
    #   @return [String]
    #
    # @!attribute [rw] code_size
    #   The size in bytes of the application code. Can be used to validate
    #   zip-format code.
    #   @return [Integer]
    #
    # @!attribute [rw] s3_application_code_location_description
    #   The S3 bucket Amazon Resource Name (ARN), file key, and object
    #   version of the application code stored in Amazon S3.
    #   @return [Types::S3ApplicationCodeLocationDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/CodeContentDescription AWS API Documentation
    #
    class CodeContentDescription < Struct.new(
      :text_content,
      :code_md5,
      :code_size,
      :s3_application_code_location_description)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an update to the code of an application. Not supported for
    # Apache Zeppelin.
    #
    # @!attribute [rw] text_content_update
    #   Describes an update to the text code for an application.
    #   @return [String]
    #
    # @!attribute [rw] zip_file_content_update
    #   Describes an update to the zipped code for an application.
    #   @return [String]
    #
    # @!attribute [rw] s3_content_location_update
    #   Describes an update to the location of code for an application.
    #   @return [Types::S3ContentLocationUpdate]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/CodeContentUpdate AWS API Documentation
    #
    class CodeContentUpdate < Struct.new(
      :text_content_update,
      :zip_file_content_update,
      :s3_content_location_update)
      SENSITIVE = []
      include Aws::Structure
    end

    # The user-provided application code (query) is not valid. This can be a
    # simple syntax error.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/CodeValidationException AWS API Documentation
    #
    class CodeValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Exception thrown as a result of concurrent modifications to an
    # application. This error can be the result of attempting to modify an
    # application without using the current application ID.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/ConcurrentModificationException AWS API Documentation
    #
    class ConcurrentModificationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_name
    #   The name of the application.
    #   @return [String]
    #
    # @!attribute [rw] url_type
    #   The type of the extension for which to create and return a URL.
    #   Currently, the only valid extension URL type is
    #   `FLINK_DASHBOARD_URL`.
    #   @return [String]
    #
    # @!attribute [rw] session_expiration_duration_in_seconds
    #   The duration in seconds for which the returned URL will be valid.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/CreateApplicationPresignedUrlRequest AWS API Documentation
    #
    class CreateApplicationPresignedUrlRequest < Struct.new(
      :application_name,
      :url_type,
      :session_expiration_duration_in_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] authorized_url
    #   The URL of the extension.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/CreateApplicationPresignedUrlResponse AWS API Documentation
    #
    class CreateApplicationPresignedUrlResponse < Struct.new(
      :authorized_url)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_name
    #   The name of your application (for example, `sample-app`).
    #   @return [String]
    #
    # @!attribute [rw] application_description
    #   A summary description of the application.
    #   @return [String]
    #
    # @!attribute [rw] runtime_environment
    #   The runtime environment for the application.
    #   @return [String]
    #
    # @!attribute [rw] service_execution_role
    #   The IAM role used by the application to access Kinesis data streams,
    #   Kinesis Data Firehose delivery streams, Amazon S3 objects, and other
    #   external resources.
    #   @return [String]
    #
    # @!attribute [rw] application_configuration
    #   Use this parameter to configure the application.
    #   @return [Types::ApplicationConfiguration]
    #
    # @!attribute [rw] cloud_watch_logging_options
    #   Use this parameter to configure an Amazon CloudWatch log stream to
    #   monitor application configuration errors.
    #   @return [Array<Types::CloudWatchLoggingOption>]
    #
    # @!attribute [rw] tags
    #   A list of one or more tags to assign to the application. A tag is a
    #   key-value pair that identifies an application. Note that the maximum
    #   number of application tags includes system tags. The maximum number
    #   of user-defined application tags is 50. For more information, see
    #   [Using Tagging][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kinesisanalytics/latest/java/how-tagging.html
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] application_mode
    #   Use the `STREAMING` mode to create a Kinesis Data Analytics For
    #   Flink application. To create a Kinesis Data Analytics Studio
    #   notebook, use the `INTERACTIVE` mode.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/CreateApplicationRequest AWS API Documentation
    #
    class CreateApplicationRequest < Struct.new(
      :application_name,
      :application_description,
      :runtime_environment,
      :service_execution_role,
      :application_configuration,
      :cloud_watch_logging_options,
      :tags,
      :application_mode)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_detail
    #   In response to your `CreateApplication` request, Kinesis Data
    #   Analytics returns a response with details of the application it
    #   created.
    #   @return [Types::ApplicationDetail]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/CreateApplicationResponse AWS API Documentation
    #
    class CreateApplicationResponse < Struct.new(
      :application_detail)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_name
    #   The name of an existing application
    #   @return [String]
    #
    # @!attribute [rw] snapshot_name
    #   An identifier for the application snapshot.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/CreateApplicationSnapshotRequest AWS API Documentation
    #
    class CreateApplicationSnapshotRequest < Struct.new(
      :application_name,
      :snapshot_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/CreateApplicationSnapshotResponse AWS API Documentation
    #
    class CreateApplicationSnapshotResponse < Aws::EmptyStructure; end

    # Specifies dependency JARs, as well as JAR files that contain
    # user-defined functions (UDF).
    #
    # @!attribute [rw] artifact_type
    #   `UDF` stands for user-defined functions. This type of artifact must
    #   be in an S3 bucket. A `DEPENDENCY_JAR` can be in either Maven or an
    #   S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] s3_content_location
    #   For a Kinesis Data Analytics application provides a description of
    #   an Amazon S3 object, including the Amazon Resource Name (ARN) of the
    #   S3 bucket, the name of the Amazon S3 object that contains the data,
    #   and the version number of the Amazon S3 object that contains the
    #   data.
    #   @return [Types::S3ContentLocation]
    #
    # @!attribute [rw] maven_reference
    #   The parameters required to fully specify a Maven reference.
    #   @return [Types::MavenReference]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/CustomArtifactConfiguration AWS API Documentation
    #
    class CustomArtifactConfiguration < Struct.new(
      :artifact_type,
      :s3_content_location,
      :maven_reference)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a dependency JAR or a JAR of user-defined functions.
    #
    # @!attribute [rw] artifact_type
    #   `UDF` stands for user-defined functions. This type of artifact must
    #   be in an S3 bucket. A `DEPENDENCY_JAR` can be in either Maven or an
    #   S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] s3_content_location_description
    #   For a Kinesis Data Analytics application provides a description of
    #   an Amazon S3 object, including the Amazon Resource Name (ARN) of the
    #   S3 bucket, the name of the Amazon S3 object that contains the data,
    #   and the version number of the Amazon S3 object that contains the
    #   data.
    #   @return [Types::S3ContentLocation]
    #
    # @!attribute [rw] maven_reference_description
    #   The parameters that are required to specify a Maven dependency.
    #   @return [Types::MavenReference]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/CustomArtifactConfigurationDescription AWS API Documentation
    #
    class CustomArtifactConfigurationDescription < Struct.new(
      :artifact_type,
      :s3_content_location_description,
      :maven_reference_description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_name
    #   The application name.
    #   @return [String]
    #
    # @!attribute [rw] current_application_version_id
    #   The version ID of the application. You must provide the
    #   `CurrentApplicationVersionId` or the `ConditionalToken`. You can
    #   retrieve the application version ID using DescribeApplication. For
    #   better concurrency support, use the `ConditionalToken` parameter
    #   instead of `CurrentApplicationVersionId`.
    #   @return [Integer]
    #
    # @!attribute [rw] cloud_watch_logging_option_id
    #   The `CloudWatchLoggingOptionId` of the Amazon CloudWatch logging
    #   option to delete. You can get the `CloudWatchLoggingOptionId` by
    #   using the DescribeApplication operation.
    #   @return [String]
    #
    # @!attribute [rw] conditional_token
    #   A value you use to implement strong concurrency for application
    #   updates. You must provide the `CurrentApplicationVersionId` or the
    #   `ConditionalToken`. You get the application's current
    #   `ConditionalToken` using DescribeApplication. For better concurrency
    #   support, use the `ConditionalToken` parameter instead of
    #   `CurrentApplicationVersionId`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/DeleteApplicationCloudWatchLoggingOptionRequest AWS API Documentation
    #
    class DeleteApplicationCloudWatchLoggingOptionRequest < Struct.new(
      :application_name,
      :current_application_version_id,
      :cloud_watch_logging_option_id,
      :conditional_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_arn
    #   The application's Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] application_version_id
    #   The version ID of the application. Kinesis Data Analytics updates
    #   the `ApplicationVersionId` each time you change the CloudWatch
    #   logging options.
    #   @return [Integer]
    #
    # @!attribute [rw] cloud_watch_logging_option_descriptions
    #   The descriptions of the remaining CloudWatch logging options for the
    #   application.
    #   @return [Array<Types::CloudWatchLoggingOptionDescription>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/DeleteApplicationCloudWatchLoggingOptionResponse AWS API Documentation
    #
    class DeleteApplicationCloudWatchLoggingOptionResponse < Struct.new(
      :application_arn,
      :application_version_id,
      :cloud_watch_logging_option_descriptions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_name
    #   The name of the application.
    #   @return [String]
    #
    # @!attribute [rw] current_application_version_id
    #   The application version. You can use the DescribeApplication
    #   operation to get the current application version. If the version
    #   specified is not the current version, the
    #   `ConcurrentModificationException` is returned.
    #   @return [Integer]
    #
    # @!attribute [rw] input_id
    #   The ID of the input configuration from which to delete the input
    #   processing configuration. You can get a list of the input IDs for an
    #   application by using the DescribeApplication operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/DeleteApplicationInputProcessingConfigurationRequest AWS API Documentation
    #
    class DeleteApplicationInputProcessingConfigurationRequest < Struct.new(
      :application_name,
      :current_application_version_id,
      :input_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_arn
    #   The Amazon Resource Name (ARN) of the application.
    #   @return [String]
    #
    # @!attribute [rw] application_version_id
    #   The current application version ID.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/DeleteApplicationInputProcessingConfigurationResponse AWS API Documentation
    #
    class DeleteApplicationInputProcessingConfigurationResponse < Struct.new(
      :application_arn,
      :application_version_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_name
    #   The application name.
    #   @return [String]
    #
    # @!attribute [rw] current_application_version_id
    #   The application version. You can use the DescribeApplication
    #   operation to get the current application version. If the version
    #   specified is not the current version, the
    #   `ConcurrentModificationException` is returned.
    #   @return [Integer]
    #
    # @!attribute [rw] output_id
    #   The ID of the configuration to delete. Each output configuration
    #   that is added to the application (either when the application is
    #   created or later) using the AddApplicationOutput operation has a
    #   unique ID. You need to provide the ID to uniquely identify the
    #   output configuration that you want to delete from the application
    #   configuration. You can use the DescribeApplication operation to get
    #   the specific `OutputId`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/DeleteApplicationOutputRequest AWS API Documentation
    #
    class DeleteApplicationOutputRequest < Struct.new(
      :application_name,
      :current_application_version_id,
      :output_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_arn
    #   The application Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] application_version_id
    #   The current application version ID.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/DeleteApplicationOutputResponse AWS API Documentation
    #
    class DeleteApplicationOutputResponse < Struct.new(
      :application_arn,
      :application_version_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_name
    #   The name of an existing application.
    #   @return [String]
    #
    # @!attribute [rw] current_application_version_id
    #   The current application version. You can use the DescribeApplication
    #   operation to get the current application version. If the version
    #   specified is not the current version, the
    #   `ConcurrentModificationException` is returned.
    #   @return [Integer]
    #
    # @!attribute [rw] reference_id
    #   The ID of the reference data source. When you add a reference data
    #   source to your application using the
    #   AddApplicationReferenceDataSource, Kinesis Data Analytics assigns an
    #   ID. You can use the DescribeApplication operation to get the
    #   reference ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/DeleteApplicationReferenceDataSourceRequest AWS API Documentation
    #
    class DeleteApplicationReferenceDataSourceRequest < Struct.new(
      :application_name,
      :current_application_version_id,
      :reference_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_arn
    #   The application Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] application_version_id
    #   The updated version ID of the application.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/DeleteApplicationReferenceDataSourceResponse AWS API Documentation
    #
    class DeleteApplicationReferenceDataSourceResponse < Struct.new(
      :application_arn,
      :application_version_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_name
    #   The name of the application to delete.
    #   @return [String]
    #
    # @!attribute [rw] create_timestamp
    #   Use the `DescribeApplication` operation to get this value.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/DeleteApplicationRequest AWS API Documentation
    #
    class DeleteApplicationRequest < Struct.new(
      :application_name,
      :create_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/DeleteApplicationResponse AWS API Documentation
    #
    class DeleteApplicationResponse < Aws::EmptyStructure; end

    # @!attribute [rw] application_name
    #   The name of an existing application.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_name
    #   The identifier for the snapshot delete.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_creation_timestamp
    #   The creation timestamp of the application snapshot to delete. You
    #   can retrieve this value using or .
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/DeleteApplicationSnapshotRequest AWS API Documentation
    #
    class DeleteApplicationSnapshotRequest < Struct.new(
      :application_name,
      :snapshot_name,
      :snapshot_creation_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/DeleteApplicationSnapshotResponse AWS API Documentation
    #
    class DeleteApplicationSnapshotResponse < Aws::EmptyStructure; end

    # @!attribute [rw] application_name
    #   The name of an existing application.
    #   @return [String]
    #
    # @!attribute [rw] current_application_version_id
    #   The current application version ID. You must provide the
    #   `CurrentApplicationVersionId` or the `ConditionalToken`. You can
    #   retrieve the application version ID using DescribeApplication. For
    #   better concurrency support, use the `ConditionalToken` parameter
    #   instead of `CurrentApplicationVersionId`.
    #   @return [Integer]
    #
    # @!attribute [rw] vpc_configuration_id
    #   The ID of the VPC configuration to delete.
    #   @return [String]
    #
    # @!attribute [rw] conditional_token
    #   A value you use to implement strong concurrency for application
    #   updates. You must provide the `CurrentApplicationVersionId` or the
    #   `ConditionalToken`. You get the application's current
    #   `ConditionalToken` using DescribeApplication. For better concurrency
    #   support, use the `ConditionalToken` parameter instead of
    #   `CurrentApplicationVersionId`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/DeleteApplicationVpcConfigurationRequest AWS API Documentation
    #
    class DeleteApplicationVpcConfigurationRequest < Struct.new(
      :application_name,
      :current_application_version_id,
      :vpc_configuration_id,
      :conditional_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_arn
    #   The ARN of the Kinesis Data Analytics application.
    #   @return [String]
    #
    # @!attribute [rw] application_version_id
    #   The updated version ID of the application.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/DeleteApplicationVpcConfigurationResponse AWS API Documentation
    #
    class DeleteApplicationVpcConfigurationResponse < Struct.new(
      :application_arn,
      :application_version_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The information required to deploy a Kinesis Data Analytics Studio
    # notebook as an application with durable state.
    #
    # @!attribute [rw] s3_content_location
    #   The description of an Amazon S3 object that contains the Amazon Data
    #   Analytics application, including the Amazon Resource Name (ARN) of
    #   the S3 bucket, the name of the Amazon S3 object that contains the
    #   data, and the version number of the Amazon S3 object that contains
    #   the data.
    #   @return [Types::S3ContentBaseLocation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/DeployAsApplicationConfiguration AWS API Documentation
    #
    class DeployAsApplicationConfiguration < Struct.new(
      :s3_content_location)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration information required to deploy an Amazon Data
    # Analytics Studio notebook as an application with durable state.
    #
    # @!attribute [rw] s3_content_location_description
    #   The location that holds the data required to specify an Amazon Data
    #   Analytics application.
    #   @return [Types::S3ContentBaseLocationDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/DeployAsApplicationConfigurationDescription AWS API Documentation
    #
    class DeployAsApplicationConfigurationDescription < Struct.new(
      :s3_content_location_description)
      SENSITIVE = []
      include Aws::Structure
    end

    # Updates to the configuration information required to deploy an Amazon
    # Data Analytics Studio notebook as an application with durable state.
    #
    # @!attribute [rw] s3_content_location_update
    #   Updates to the location that holds the data required to specify an
    #   Amazon Data Analytics application.
    #   @return [Types::S3ContentBaseLocationUpdate]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/DeployAsApplicationConfigurationUpdate AWS API Documentation
    #
    class DeployAsApplicationConfigurationUpdate < Struct.new(
      :s3_content_location_update)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_name
    #   The name of the application.
    #   @return [String]
    #
    # @!attribute [rw] include_additional_details
    #   Displays verbose information about a Kinesis Data Analytics
    #   application, including the application's job plan.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/DescribeApplicationRequest AWS API Documentation
    #
    class DescribeApplicationRequest < Struct.new(
      :application_name,
      :include_additional_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_detail
    #   Provides a description of the application, such as the
    #   application's Amazon Resource Name (ARN), status, and latest
    #   version.
    #   @return [Types::ApplicationDetail]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/DescribeApplicationResponse AWS API Documentation
    #
    class DescribeApplicationResponse < Struct.new(
      :application_detail)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_name
    #   The name of an existing application.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_name
    #   The identifier of an application snapshot. You can retrieve this
    #   value using .
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/DescribeApplicationSnapshotRequest AWS API Documentation
    #
    class DescribeApplicationSnapshotRequest < Struct.new(
      :application_name,
      :snapshot_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] snapshot_details
    #   An object containing information about the application snapshot.
    #   @return [Types::SnapshotDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/DescribeApplicationSnapshotResponse AWS API Documentation
    #
    class DescribeApplicationSnapshotResponse < Struct.new(
      :snapshot_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_name
    #   The name of the application for which you want to get the version
    #   description.
    #   @return [String]
    #
    # @!attribute [rw] application_version_id
    #   The ID of the application version for which you want to get the
    #   description.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/DescribeApplicationVersionRequest AWS API Documentation
    #
    class DescribeApplicationVersionRequest < Struct.new(
      :application_name,
      :application_version_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_version_detail
    #   Describes the application, including the application Amazon Resource
    #   Name (ARN), status, latest version, and input and output
    #   configurations.
    #   @return [Types::ApplicationDetail]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/DescribeApplicationVersionResponse AWS API Documentation
    #
    class DescribeApplicationVersionResponse < Struct.new(
      :application_version_detail)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the data format when records are written to the destination
    # in a SQL-based Kinesis Data Analytics application.
    #
    # @!attribute [rw] record_format_type
    #   Specifies the format of the records on the output stream.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/DestinationSchema AWS API Documentation
    #
    class DestinationSchema < Struct.new(
      :record_format_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the streaming source.
    #   @return [String]
    #
    # @!attribute [rw] service_execution_role
    #   The ARN of the role that is used to access the streaming source.
    #   @return [String]
    #
    # @!attribute [rw] input_starting_position_configuration
    #   The point at which you want Kinesis Data Analytics to start reading
    #   records from the specified streaming source discovery purposes.
    #   @return [Types::InputStartingPositionConfiguration]
    #
    # @!attribute [rw] s3_configuration
    #   Specify this parameter to discover a schema from data in an Amazon
    #   S3 object.
    #   @return [Types::S3Configuration]
    #
    # @!attribute [rw] input_processing_configuration
    #   The InputProcessingConfiguration to use to preprocess the records
    #   before discovering the schema of the records.
    #   @return [Types::InputProcessingConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/DiscoverInputSchemaRequest AWS API Documentation
    #
    class DiscoverInputSchemaRequest < Struct.new(
      :resource_arn,
      :service_execution_role,
      :input_starting_position_configuration,
      :s3_configuration,
      :input_processing_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] input_schema
    #   The schema inferred from the streaming source. It identifies the
    #   format of the data in the streaming source and how each data element
    #   maps to corresponding columns in the in-application stream that you
    #   can create.
    #   @return [Types::SourceSchema]
    #
    # @!attribute [rw] parsed_input_records
    #   An array of elements, where each element corresponds to a row in a
    #   stream record (a stream record can have more than one row).
    #   @return [Array<Array<String>>]
    #
    # @!attribute [rw] processed_input_records
    #   The stream data that was modified by the processor specified in the
    #   `InputProcessingConfiguration` parameter.
    #   @return [Array<String>]
    #
    # @!attribute [rw] raw_input_records
    #   The raw stream data that was sampled to infer the schema.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/DiscoverInputSchemaResponse AWS API Documentation
    #
    class DiscoverInputSchemaResponse < Struct.new(
      :input_schema,
      :parsed_input_records,
      :processed_input_records,
      :raw_input_records)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes execution properties for a Flink-based Kinesis Data
    # Analytics application.
    #
    # @!attribute [rw] property_groups
    #   Describes the execution property groups.
    #   @return [Array<Types::PropertyGroup>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/EnvironmentProperties AWS API Documentation
    #
    class EnvironmentProperties < Struct.new(
      :property_groups)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the execution properties for an Apache Flink runtime.
    #
    # @!attribute [rw] property_group_descriptions
    #   Describes the execution property groups.
    #   @return [Array<Types::PropertyGroup>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/EnvironmentPropertyDescriptions AWS API Documentation
    #
    class EnvironmentPropertyDescriptions < Struct.new(
      :property_group_descriptions)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes updates to the execution property groups for a Flink-based
    # Kinesis Data Analytics application or a Studio notebook.
    #
    # @!attribute [rw] property_groups
    #   Describes updates to the execution property groups.
    #   @return [Array<Types::PropertyGroup>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/EnvironmentPropertyUpdates AWS API Documentation
    #
    class EnvironmentPropertyUpdates < Struct.new(
      :property_groups)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes configuration parameters for a Flink-based Kinesis Data
    # Analytics application or a Studio notebook.
    #
    # @!attribute [rw] checkpoint_configuration
    #   Describes an application's checkpointing configuration.
    #   Checkpointing is the process of persisting application state for
    #   fault tolerance. For more information, see [ Checkpoints for Fault
    #   Tolerance][1] in the [Apache Flink Documentation][2].
    #
    #
    #
    #   [1]: https://ci.apache.org/projects/flink/flink-docs-release-1.8/concepts/programming-model.html#checkpoints-for-fault-tolerance
    #   [2]: https://ci.apache.org/projects/flink/flink-docs-release-1.8/
    #   @return [Types::CheckpointConfiguration]
    #
    # @!attribute [rw] monitoring_configuration
    #   Describes configuration parameters for Amazon CloudWatch logging for
    #   an application.
    #   @return [Types::MonitoringConfiguration]
    #
    # @!attribute [rw] parallelism_configuration
    #   Describes parameters for how an application executes multiple tasks
    #   simultaneously.
    #   @return [Types::ParallelismConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/FlinkApplicationConfiguration AWS API Documentation
    #
    class FlinkApplicationConfiguration < Struct.new(
      :checkpoint_configuration,
      :monitoring_configuration,
      :parallelism_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes configuration parameters for a Flink-based Kinesis Data
    # Analytics application.
    #
    # @!attribute [rw] checkpoint_configuration_description
    #   Describes an application's checkpointing configuration.
    #   Checkpointing is the process of persisting application state for
    #   fault tolerance.
    #   @return [Types::CheckpointConfigurationDescription]
    #
    # @!attribute [rw] monitoring_configuration_description
    #   Describes configuration parameters for Amazon CloudWatch logging for
    #   an application.
    #   @return [Types::MonitoringConfigurationDescription]
    #
    # @!attribute [rw] parallelism_configuration_description
    #   Describes parameters for how an application executes multiple tasks
    #   simultaneously.
    #   @return [Types::ParallelismConfigurationDescription]
    #
    # @!attribute [rw] job_plan_description
    #   The job plan for an application. For more information about the job
    #   plan, see [Jobs and Scheduling][1] in the [Apache Flink
    #   Documentation][2]. To retrieve the job plan for the application, use
    #   the DescribeApplicationRequest$IncludeAdditionalDetails parameter of
    #   the DescribeApplication operation.
    #
    #
    #
    #   [1]: https://ci.apache.org/projects/flink/flink-docs-release-1.8/internals/job_scheduling.html
    #   [2]: https://ci.apache.org/projects/flink/flink-docs-release-1.8/
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/FlinkApplicationConfigurationDescription AWS API Documentation
    #
    class FlinkApplicationConfigurationDescription < Struct.new(
      :checkpoint_configuration_description,
      :monitoring_configuration_description,
      :parallelism_configuration_description,
      :job_plan_description)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes updates to the configuration parameters for a Flink-based
    # Kinesis Data Analytics application.
    #
    # @!attribute [rw] checkpoint_configuration_update
    #   Describes updates to an application's checkpointing configuration.
    #   Checkpointing is the process of persisting application state for
    #   fault tolerance.
    #   @return [Types::CheckpointConfigurationUpdate]
    #
    # @!attribute [rw] monitoring_configuration_update
    #   Describes updates to the configuration parameters for Amazon
    #   CloudWatch logging for an application.
    #   @return [Types::MonitoringConfigurationUpdate]
    #
    # @!attribute [rw] parallelism_configuration_update
    #   Describes updates to the parameters for how an application executes
    #   multiple tasks simultaneously.
    #   @return [Types::ParallelismConfigurationUpdate]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/FlinkApplicationConfigurationUpdate AWS API Documentation
    #
    class FlinkApplicationConfigurationUpdate < Struct.new(
      :checkpoint_configuration_update,
      :monitoring_configuration_update,
      :parallelism_configuration_update)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the starting parameters for a Flink-based Kinesis Data
    # Analytics application.
    #
    # @!attribute [rw] allow_non_restored_state
    #   When restoring from a snapshot, specifies whether the runtime is
    #   allowed to skip a state that cannot be mapped to the new program.
    #   This will happen if the program is updated between snapshots to
    #   remove stateful parameters, and state data in the snapshot no longer
    #   corresponds to valid application data. For more information, see [
    #   Allowing Non-Restored State][1] in the [Apache Flink
    #   documentation][2].
    #
    #   <note markdown="1"> This value defaults to `false`. If you update your application
    #   without specifying this parameter, `AllowNonRestoredState` will be
    #   set to `false`, even if it was previously set to `true`.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://ci.apache.org/projects/flink/flink-docs-release-1.8/ops/state/savepoints.html#allowing-non-restored-state
    #   [2]: https://ci.apache.org/projects/flink/flink-docs-release-1.8/
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/FlinkRunConfiguration AWS API Documentation
    #
    class FlinkRunConfiguration < Struct.new(
      :allow_non_restored_state)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration of the Glue Data Catalog that you use for Apache
    # Flink SQL queries and table API transforms that you write in an
    # application.
    #
    # @!attribute [rw] database_arn
    #   The Amazon Resource Name (ARN) of the database.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/GlueDataCatalogConfiguration AWS API Documentation
    #
    class GlueDataCatalogConfiguration < Struct.new(
      :database_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration of the Glue Data Catalog that you use for Apache
    # Flink SQL queries and table API transforms that you write in an
    # application.
    #
    # @!attribute [rw] database_arn
    #   The Amazon Resource Name (ARN) of the database.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/GlueDataCatalogConfigurationDescription AWS API Documentation
    #
    class GlueDataCatalogConfigurationDescription < Struct.new(
      :database_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Updates to the configuration of the Glue Data Catalog that you use for
    # SQL queries that you write in a Kinesis Data Analytics Studio
    # notebook.
    #
    # @!attribute [rw] database_arn_update
    #   The updated Amazon Resource Name (ARN) of the database.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/GlueDataCatalogConfigurationUpdate AWS API Documentation
    #
    class GlueDataCatalogConfigurationUpdate < Struct.new(
      :database_arn_update)
      SENSITIVE = []
      include Aws::Structure
    end

    # When you configure the application input for a SQL-based Kinesis Data
    # Analytics application, you specify the streaming source, the
    # in-application stream name that is created, and the mapping between
    # the two.
    #
    # @!attribute [rw] name_prefix
    #   The name prefix to use when creating an in-application stream.
    #   Suppose that you specify a prefix "`MyInApplicationStream`."
    #   Kinesis Data Analytics then creates one or more (as per the
    #   `InputParallelism` count you specified) in-application streams with
    #   the names "`MyInApplicationStream_001`,"
    #   "`MyInApplicationStream_002`," and so on.
    #   @return [String]
    #
    # @!attribute [rw] input_processing_configuration
    #   The InputProcessingConfiguration for the input. An input processor
    #   transforms records as they are received from the stream, before the
    #   application's SQL code executes. Currently, the only input
    #   processing configuration available is InputLambdaProcessor.
    #   @return [Types::InputProcessingConfiguration]
    #
    # @!attribute [rw] kinesis_streams_input
    #   If the streaming source is an Amazon Kinesis data stream, identifies
    #   the stream's Amazon Resource Name (ARN).
    #   @return [Types::KinesisStreamsInput]
    #
    # @!attribute [rw] kinesis_firehose_input
    #   If the streaming source is an Amazon Kinesis Data Firehose delivery
    #   stream, identifies the delivery stream's ARN.
    #   @return [Types::KinesisFirehoseInput]
    #
    # @!attribute [rw] input_parallelism
    #   Describes the number of in-application streams to create.
    #   @return [Types::InputParallelism]
    #
    # @!attribute [rw] input_schema
    #   Describes the format of the data in the streaming source, and how
    #   each data element maps to corresponding columns in the
    #   in-application stream that is being created.
    #
    #   Also used to describe the format of the reference data source.
    #   @return [Types::SourceSchema]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/Input AWS API Documentation
    #
    class Input < Struct.new(
      :name_prefix,
      :input_processing_configuration,
      :kinesis_streams_input,
      :kinesis_firehose_input,
      :input_parallelism,
      :input_schema)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the application input configuration for a SQL-based Kinesis
    # Data Analytics application.
    #
    # @!attribute [rw] input_id
    #   The input ID that is associated with the application input. This is
    #   the ID that Kinesis Data Analytics assigns to each input
    #   configuration that you add to your application.
    #   @return [String]
    #
    # @!attribute [rw] name_prefix
    #   The in-application name prefix.
    #   @return [String]
    #
    # @!attribute [rw] in_app_stream_names
    #   Returns the in-application stream names that are mapped to the
    #   stream source.
    #   @return [Array<String>]
    #
    # @!attribute [rw] input_processing_configuration_description
    #   The description of the preprocessor that executes on records in this
    #   input before the application's code is run.
    #   @return [Types::InputProcessingConfigurationDescription]
    #
    # @!attribute [rw] kinesis_streams_input_description
    #   If a Kinesis data stream is configured as a streaming source,
    #   provides the Kinesis data stream's Amazon Resource Name (ARN).
    #   @return [Types::KinesisStreamsInputDescription]
    #
    # @!attribute [rw] kinesis_firehose_input_description
    #   If a Kinesis Data Firehose delivery stream is configured as a
    #   streaming source, provides the delivery stream's ARN.
    #   @return [Types::KinesisFirehoseInputDescription]
    #
    # @!attribute [rw] input_schema
    #   Describes the format of the data in the streaming source, and how
    #   each data element maps to corresponding columns in the
    #   in-application stream that is being created.
    #   @return [Types::SourceSchema]
    #
    # @!attribute [rw] input_parallelism
    #   Describes the configured parallelism (number of in-application
    #   streams mapped to the streaming source).
    #   @return [Types::InputParallelism]
    #
    # @!attribute [rw] input_starting_position_configuration
    #   The point at which the application is configured to read from the
    #   input stream.
    #   @return [Types::InputStartingPositionConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/InputDescription AWS API Documentation
    #
    class InputDescription < Struct.new(
      :input_id,
      :name_prefix,
      :in_app_stream_names,
      :input_processing_configuration_description,
      :kinesis_streams_input_description,
      :kinesis_firehose_input_description,
      :input_schema,
      :input_parallelism,
      :input_starting_position_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that contains the Amazon Resource Name (ARN) of the Amazon
    # Lambda function that is used to preprocess records in the stream in a
    # SQL-based Kinesis Data Analytics application.
    #
    # @!attribute [rw] resource_arn
    #   The ARN of the Amazon Lambda function that operates on records in
    #   the stream.
    #
    #   <note markdown="1"> To specify an earlier version of the Lambda function than the
    #   latest, include the Lambda function version in the Lambda function
    #   ARN. For more information about Lambda ARNs, see [Example ARNs:
    #   Amazon Lambda][1]
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-lambda
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/InputLambdaProcessor AWS API Documentation
    #
    class InputLambdaProcessor < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # For a SQL-based Kinesis Data Analytics application, an object that
    # contains the Amazon Resource Name (ARN) of the Amazon Lambda function
    # that is used to preprocess records in the stream.
    #
    # @!attribute [rw] resource_arn
    #   The ARN of the Amazon Lambda function that is used to preprocess the
    #   records in the stream.
    #
    #   <note markdown="1"> To specify an earlier version of the Lambda function than the
    #   latest, include the Lambda function version in the Lambda function
    #   ARN. For more information about Lambda ARNs, see [Example ARNs:
    #   Amazon Lambda][1]
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-lambda
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The ARN of the IAM role that is used to access the Amazon Lambda
    #   function.
    #
    #   <note markdown="1"> Provided for backward compatibility. Applications that are created
    #   with the current API version have an application-level service
    #   execution role rather than a resource-level role.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/InputLambdaProcessorDescription AWS API Documentation
    #
    class InputLambdaProcessorDescription < Struct.new(
      :resource_arn,
      :role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # For a SQL-based Kinesis Data Analytics application, represents an
    # update to the InputLambdaProcessor that is used to preprocess the
    # records in the stream.
    #
    # @!attribute [rw] resource_arn_update
    #   The Amazon Resource Name (ARN) of the new Amazon Lambda function
    #   that is used to preprocess the records in the stream.
    #
    #   <note markdown="1"> To specify an earlier version of the Lambda function than the
    #   latest, include the Lambda function version in the Lambda function
    #   ARN. For more information about Lambda ARNs, see [Example ARNs:
    #   Amazon Lambda][1]
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-lambda
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/InputLambdaProcessorUpdate AWS API Documentation
    #
    class InputLambdaProcessorUpdate < Struct.new(
      :resource_arn_update)
      SENSITIVE = []
      include Aws::Structure
    end

    # For a SQL-based Kinesis Data Analytics application, describes the
    # number of in-application streams to create for a given streaming
    # source.
    #
    # @!attribute [rw] count
    #   The number of in-application streams to create.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/InputParallelism AWS API Documentation
    #
    class InputParallelism < Struct.new(
      :count)
      SENSITIVE = []
      include Aws::Structure
    end

    # For a SQL-based Kinesis Data Analytics application, provides updates
    # to the parallelism count.
    #
    # @!attribute [rw] count_update
    #   The number of in-application streams to create for the specified
    #   streaming source.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/InputParallelismUpdate AWS API Documentation
    #
    class InputParallelismUpdate < Struct.new(
      :count_update)
      SENSITIVE = []
      include Aws::Structure
    end

    # For a SQL-based Kinesis Data Analytics application, describes a
    # processor that is used to preprocess the records in the stream before
    # being processed by your application code. Currently, the only input
    # processor available is [Amazon Lambda][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lambda/
    #
    # @!attribute [rw] input_lambda_processor
    #   The InputLambdaProcessor that is used to preprocess the records in
    #   the stream before being processed by your application code.
    #   @return [Types::InputLambdaProcessor]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/InputProcessingConfiguration AWS API Documentation
    #
    class InputProcessingConfiguration < Struct.new(
      :input_lambda_processor)
      SENSITIVE = []
      include Aws::Structure
    end

    # For a SQL-based Kinesis Data Analytics application, provides the
    # configuration information about an input processor. Currently, the
    # only input processor available is [Amazon Lambda][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lambda/
    #
    # @!attribute [rw] input_lambda_processor_description
    #   Provides configuration information about the associated
    #   InputLambdaProcessorDescription
    #   @return [Types::InputLambdaProcessorDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/InputProcessingConfigurationDescription AWS API Documentation
    #
    class InputProcessingConfigurationDescription < Struct.new(
      :input_lambda_processor_description)
      SENSITIVE = []
      include Aws::Structure
    end

    # For a SQL-based Kinesis Data Analytics application, describes updates
    # to an InputProcessingConfiguration.
    #
    # @!attribute [rw] input_lambda_processor_update
    #   Provides update information for an InputLambdaProcessor.
    #   @return [Types::InputLambdaProcessorUpdate]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/InputProcessingConfigurationUpdate AWS API Documentation
    #
    class InputProcessingConfigurationUpdate < Struct.new(
      :input_lambda_processor_update)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes updates for an SQL-based Kinesis Data Analytics
    # application's input schema.
    #
    # @!attribute [rw] record_format_update
    #   Specifies the format of the records on the streaming source.
    #   @return [Types::RecordFormat]
    #
    # @!attribute [rw] record_encoding_update
    #   Specifies the encoding of the records in the streaming source; for
    #   example, UTF-8.
    #   @return [String]
    #
    # @!attribute [rw] record_column_updates
    #   A list of `RecordColumn` objects. Each object describes the mapping
    #   of the streaming source element to the corresponding column in the
    #   in-application stream.
    #   @return [Array<Types::RecordColumn>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/InputSchemaUpdate AWS API Documentation
    #
    class InputSchemaUpdate < Struct.new(
      :record_format_update,
      :record_encoding_update,
      :record_column_updates)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the point at which the application reads from the streaming
    # source.
    #
    # @!attribute [rw] input_starting_position
    #   The starting position on the stream.
    #
    #   * `NOW` - Start reading just after the most recent record in the
    #     stream, and start at the request timestamp that the customer
    #     issued.
    #
    #   * `TRIM_HORIZON` - Start reading at the last untrimmed record in the
    #     stream, which is the oldest record available in the stream. This
    #     option is not available for an Amazon Kinesis Data Firehose
    #     delivery stream.
    #
    #   * `LAST_STOPPED_POINT` - Resume reading from where the application
    #     last stopped reading.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/InputStartingPositionConfiguration AWS API Documentation
    #
    class InputStartingPositionConfiguration < Struct.new(
      :input_starting_position)
      SENSITIVE = []
      include Aws::Structure
    end

    # For a SQL-based Kinesis Data Analytics application, describes updates
    # to a specific input configuration (identified by the `InputId` of an
    # application).
    #
    # @!attribute [rw] input_id
    #   The input ID of the application input to be updated.
    #   @return [String]
    #
    # @!attribute [rw] name_prefix_update
    #   The name prefix for in-application streams that Kinesis Data
    #   Analytics creates for the specific streaming source.
    #   @return [String]
    #
    # @!attribute [rw] input_processing_configuration_update
    #   Describes updates to an InputProcessingConfiguration.
    #   @return [Types::InputProcessingConfigurationUpdate]
    #
    # @!attribute [rw] kinesis_streams_input_update
    #   If a Kinesis data stream is the streaming source to be updated,
    #   provides an updated stream Amazon Resource Name (ARN).
    #   @return [Types::KinesisStreamsInputUpdate]
    #
    # @!attribute [rw] kinesis_firehose_input_update
    #   If a Kinesis Data Firehose delivery stream is the streaming source
    #   to be updated, provides an updated stream ARN.
    #   @return [Types::KinesisFirehoseInputUpdate]
    #
    # @!attribute [rw] input_schema_update
    #   Describes the data format on the streaming source, and how record
    #   elements on the streaming source map to columns of the
    #   in-application stream that is created.
    #   @return [Types::InputSchemaUpdate]
    #
    # @!attribute [rw] input_parallelism_update
    #   Describes the parallelism updates (the number of in-application
    #   streams Kinesis Data Analytics creates for the specific streaming
    #   source).
    #   @return [Types::InputParallelismUpdate]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/InputUpdate AWS API Documentation
    #
    class InputUpdate < Struct.new(
      :input_id,
      :name_prefix_update,
      :input_processing_configuration_update,
      :kinesis_streams_input_update,
      :kinesis_firehose_input_update,
      :input_schema_update,
      :input_parallelism_update)
      SENSITIVE = []
      include Aws::Structure
    end

    # The user-provided application configuration is not valid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/InvalidApplicationConfigurationException AWS API Documentation
    #
    class InvalidApplicationConfigurationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified input parameter value is not valid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/InvalidArgumentException AWS API Documentation
    #
    class InvalidArgumentException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request JSON is not valid for the operation.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/InvalidRequestException AWS API Documentation
    #
    class InvalidRequestException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # For a SQL-based Kinesis Data Analytics application, provides
    # additional mapping information when JSON is the record format on the
    # streaming source.
    #
    # @!attribute [rw] record_row_path
    #   The path to the top-level parent that contains the records.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/JSONMappingParameters AWS API Documentation
    #
    class JSONMappingParameters < Struct.new(
      :record_row_path)
      SENSITIVE = []
      include Aws::Structure
    end

    # For a SQL-based Kinesis Data Analytics application, identifies a
    # Kinesis Data Firehose delivery stream as the streaming source. You
    # provide the delivery stream's Amazon Resource Name (ARN).
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the delivery stream.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/KinesisFirehoseInput AWS API Documentation
    #
    class KinesisFirehoseInput < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the Amazon Kinesis Data Firehose delivery stream that is
    # configured as the streaming source in the application input
    # configuration.
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the delivery stream.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The ARN of the IAM role that Kinesis Data Analytics assumes to
    #   access the stream.
    #
    #   <note markdown="1"> Provided for backward compatibility. Applications that are created
    #   with the current API version have an application-level service
    #   execution role rather than a resource-level role.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/KinesisFirehoseInputDescription AWS API Documentation
    #
    class KinesisFirehoseInputDescription < Struct.new(
      :resource_arn,
      :role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # For a SQL-based Kinesis Data Analytics application, when updating
    # application input configuration, provides information about a Kinesis
    # Data Firehose delivery stream as the streaming source.
    #
    # @!attribute [rw] resource_arn_update
    #   The Amazon Resource Name (ARN) of the input delivery stream to read.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/KinesisFirehoseInputUpdate AWS API Documentation
    #
    class KinesisFirehoseInputUpdate < Struct.new(
      :resource_arn_update)
      SENSITIVE = []
      include Aws::Structure
    end

    # For a SQL-based Kinesis Data Analytics application, when configuring
    # application output, identifies a Kinesis Data Firehose delivery stream
    # as the destination. You provide the stream Amazon Resource Name (ARN)
    # of the delivery stream.
    #
    # @!attribute [rw] resource_arn
    #   The ARN of the destination delivery stream to write to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/KinesisFirehoseOutput AWS API Documentation
    #
    class KinesisFirehoseOutput < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # For a SQL-based Kinesis Data Analytics application's output,
    # describes the Kinesis Data Firehose delivery stream that is configured
    # as its destination.
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the delivery stream.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The ARN of the IAM role that Kinesis Data Analytics can assume to
    #   access the stream.
    #
    #   <note markdown="1"> Provided for backward compatibility. Applications that are created
    #   with the current API version have an application-level service
    #   execution role rather than a resource-level role.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/KinesisFirehoseOutputDescription AWS API Documentation
    #
    class KinesisFirehoseOutputDescription < Struct.new(
      :resource_arn,
      :role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # For a SQL-based Kinesis Data Analytics application, when updating an
    # output configuration using the UpdateApplication operation, provides
    # information about a Kinesis Data Firehose delivery stream that is
    # configured as the destination.
    #
    # @!attribute [rw] resource_arn_update
    #   The Amazon Resource Name (ARN) of the delivery stream to write to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/KinesisFirehoseOutputUpdate AWS API Documentation
    #
    class KinesisFirehoseOutputUpdate < Struct.new(
      :resource_arn_update)
      SENSITIVE = []
      include Aws::Structure
    end

    # Identifies a Kinesis data stream as the streaming source. You provide
    # the stream's Amazon Resource Name (ARN).
    #
    # @!attribute [rw] resource_arn
    #   The ARN of the input Kinesis data stream to read.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/KinesisStreamsInput AWS API Documentation
    #
    class KinesisStreamsInput < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # For a SQL-based Kinesis Data Analytics application, describes the
    # Kinesis data stream that is configured as the streaming source in the
    # application input configuration.
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the Kinesis data stream.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The ARN of the IAM role that Kinesis Data Analytics can assume to
    #   access the stream.
    #
    #   <note markdown="1"> Provided for backward compatibility. Applications that are created
    #   with the current API version have an application-level service
    #   execution role rather than a resource-level role.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/KinesisStreamsInputDescription AWS API Documentation
    #
    class KinesisStreamsInputDescription < Struct.new(
      :resource_arn,
      :role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # When you update the input configuration for a SQL-based Kinesis Data
    # Analytics application, provides information about a Kinesis stream as
    # the streaming source.
    #
    # @!attribute [rw] resource_arn_update
    #   The Amazon Resource Name (ARN) of the input Kinesis data stream to
    #   read.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/KinesisStreamsInputUpdate AWS API Documentation
    #
    class KinesisStreamsInputUpdate < Struct.new(
      :resource_arn_update)
      SENSITIVE = []
      include Aws::Structure
    end

    # When you configure a SQL-based Kinesis Data Analytics application's
    # output, identifies a Kinesis data stream as the destination. You
    # provide the stream Amazon Resource Name (ARN).
    #
    # @!attribute [rw] resource_arn
    #   The ARN of the destination Kinesis data stream to write to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/KinesisStreamsOutput AWS API Documentation
    #
    class KinesisStreamsOutput < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # For an SQL-based Kinesis Data Analytics application's output,
    # describes the Kinesis data stream that is configured as its
    # destination.
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the Kinesis data stream.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The ARN of the IAM role that Kinesis Data Analytics can assume to
    #   access the stream.
    #
    #   <note markdown="1"> Provided for backward compatibility. Applications that are created
    #   with the current API version have an application-level service
    #   execution role rather than a resource-level role.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/KinesisStreamsOutputDescription AWS API Documentation
    #
    class KinesisStreamsOutputDescription < Struct.new(
      :resource_arn,
      :role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # When you update a SQL-based Kinesis Data Analytics application's
    # output configuration using the UpdateApplication operation, provides
    # information about a Kinesis data stream that is configured as the
    # destination.
    #
    # @!attribute [rw] resource_arn_update
    #   The Amazon Resource Name (ARN) of the Kinesis data stream where you
    #   want to write the output.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/KinesisStreamsOutputUpdate AWS API Documentation
    #
    class KinesisStreamsOutputUpdate < Struct.new(
      :resource_arn_update)
      SENSITIVE = []
      include Aws::Structure
    end

    # When you configure a SQL-based Kinesis Data Analytics application's
    # output, identifies an Amazon Lambda function as the destination. You
    # provide the function Amazon Resource Name (ARN) of the Lambda
    # function.
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the destination Lambda function to
    #   write to.
    #
    #   <note markdown="1"> To specify an earlier version of the Lambda function than the
    #   latest, include the Lambda function version in the Lambda function
    #   ARN. For more information about Lambda ARNs, see [Example ARNs:
    #   Amazon Lambda][1]
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-lambda
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/LambdaOutput AWS API Documentation
    #
    class LambdaOutput < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # For a SQL-based Kinesis Data Analytics application's output,
    # describes the Amazon Lambda function that is configured as its
    # destination.
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the destination Lambda function.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The ARN of the IAM role that Kinesis Data Analytics can assume to
    #   write to the destination function.
    #
    #   <note markdown="1"> Provided for backward compatibility. Applications that are created
    #   with the current API version have an application-level service
    #   execution role rather than a resource-level role.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/LambdaOutputDescription AWS API Documentation
    #
    class LambdaOutputDescription < Struct.new(
      :resource_arn,
      :role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # When you update an SQL-based Kinesis Data Analytics application's
    # output configuration using the UpdateApplication operation, provides
    # information about an Amazon Lambda function that is configured as the
    # destination.
    #
    # @!attribute [rw] resource_arn_update
    #   The Amazon Resource Name (ARN) of the destination Amazon Lambda
    #   function.
    #
    #   <note markdown="1"> To specify an earlier version of the Lambda function than the
    #   latest, include the Lambda function version in the Lambda function
    #   ARN. For more information about Lambda ARNs, see [Example ARNs:
    #   Amazon Lambda][1]
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-lambda
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/LambdaOutputUpdate AWS API Documentation
    #
    class LambdaOutputUpdate < Struct.new(
      :resource_arn_update)
      SENSITIVE = []
      include Aws::Structure
    end

    # The number of allowed resources has been exceeded.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/LimitExceededException AWS API Documentation
    #
    class LimitExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_name
    #   The name of an existing application.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of application snapshots to list.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Use this parameter if you receive a `NextToken` response in a
    #   previous request that indicates that there is more output available.
    #   Set it to the value of the previous call's `NextToken` response to
    #   indicate where the output should continue from.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/ListApplicationSnapshotsRequest AWS API Documentation
    #
    class ListApplicationSnapshotsRequest < Struct.new(
      :application_name,
      :limit,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] snapshot_summaries
    #   A collection of objects containing information about the application
    #   snapshots.
    #   @return [Array<Types::SnapshotDetails>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or `null` if there are no
    #   additional results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/ListApplicationSnapshotsResponse AWS API Documentation
    #
    class ListApplicationSnapshotsResponse < Struct.new(
      :snapshot_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_name
    #   The name of the application for which you want to list all versions.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of versions to list in this invocation of the
    #   operation.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If a previous invocation of this operation returned a pagination
    #   token, pass it into this value to retrieve the next set of results.
    #   For more information about pagination, see [Using the Amazon Command
    #   Line Interface's Pagination Options][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cli/latest/userguide/pagination.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/ListApplicationVersionsRequest AWS API Documentation
    #
    class ListApplicationVersionsRequest < Struct.new(
      :application_name,
      :limit,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_version_summaries
    #   A list of the application versions and the associated configuration
    #   summaries. The list includes application versions that were rolled
    #   back.
    #
    #   To get the complete description of a specific application version,
    #   invoke the DescribeApplicationVersion operation.
    #   @return [Array<Types::ApplicationVersionSummary>]
    #
    # @!attribute [rw] next_token
    #   The pagination token for the next set of results, or `null` if there
    #   are no additional results. To retrieve the next set of items, pass
    #   this token into a subsequent invocation of this operation. For more
    #   information about pagination, see [Using the Amazon Command Line
    #   Interface's Pagination Options][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cli/latest/userguide/pagination.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/ListApplicationVersionsResponse AWS API Documentation
    #
    class ListApplicationVersionsResponse < Struct.new(
      :application_version_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] limit
    #   The maximum number of applications to list.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If a previous command returned a pagination token, pass it into this
    #   value to retrieve the next set of results. For more information
    #   about pagination, see [Using the Amazon Command Line Interface's
    #   Pagination Options][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cli/latest/userguide/pagination.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/ListApplicationsRequest AWS API Documentation
    #
    class ListApplicationsRequest < Struct.new(
      :limit,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_summaries
    #   A list of `ApplicationSummary` objects.
    #   @return [Array<Types::ApplicationSummary>]
    #
    # @!attribute [rw] next_token
    #   The pagination token for the next set of results, or `null` if there
    #   are no additional results. Pass this token into a subsequent command
    #   to retrieve the next set of items For more information about
    #   pagination, see [Using the Amazon Command Line Interface's
    #   Pagination Options][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cli/latest/userguide/pagination.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/ListApplicationsResponse AWS API Documentation
    #
    class ListApplicationsResponse < Struct.new(
      :application_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the application for which to retrieve tags.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The key-value tags assigned to the application.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # When you configure a SQL-based Kinesis Data Analytics application's
    # input at the time of creating or updating an application, provides
    # additional mapping information specific to the record format (such as
    # JSON, CSV, or record fields delimited by some delimiter) on the
    # streaming source.
    #
    # @!attribute [rw] json_mapping_parameters
    #   Provides additional mapping information when JSON is the record
    #   format on the streaming source.
    #   @return [Types::JSONMappingParameters]
    #
    # @!attribute [rw] csv_mapping_parameters
    #   Provides additional mapping information when the record format uses
    #   delimiters (for example, CSV).
    #   @return [Types::CSVMappingParameters]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/MappingParameters AWS API Documentation
    #
    class MappingParameters < Struct.new(
      :json_mapping_parameters,
      :csv_mapping_parameters)
      SENSITIVE = []
      include Aws::Structure
    end

    # The information required to specify a Maven reference. You can use
    # Maven references to specify dependency JAR files.
    #
    # @!attribute [rw] group_id
    #   The group ID of the Maven reference.
    #   @return [String]
    #
    # @!attribute [rw] artifact_id
    #   The artifact ID of the Maven reference.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of the Maven reference.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/MavenReference AWS API Documentation
    #
    class MavenReference < Struct.new(
      :group_id,
      :artifact_id,
      :version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes configuration parameters for Amazon CloudWatch logging for
    # an application. For more information about CloudWatch logging, see
    # [Monitoring][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kinesisanalytics/latest/java/monitoring-overview.html
    #
    # @!attribute [rw] configuration_type
    #   Describes whether to use the default CloudWatch logging
    #   configuration for an application. You must set this property to
    #   `CUSTOM` in order to set the `LogLevel` or `MetricsLevel`
    #   parameters.
    #   @return [String]
    #
    # @!attribute [rw] metrics_level
    #   Describes the granularity of the CloudWatch Logs for an application.
    #   The `Parallelism` level is not recommended for applications with a
    #   Parallelism over 64 due to excessive costs.
    #   @return [String]
    #
    # @!attribute [rw] log_level
    #   Describes the verbosity of the CloudWatch Logs for an application.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/MonitoringConfiguration AWS API Documentation
    #
    class MonitoringConfiguration < Struct.new(
      :configuration_type,
      :metrics_level,
      :log_level)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes configuration parameters for CloudWatch logging for an
    # application.
    #
    # @!attribute [rw] configuration_type
    #   Describes whether to use the default CloudWatch logging
    #   configuration for an application.
    #   @return [String]
    #
    # @!attribute [rw] metrics_level
    #   Describes the granularity of the CloudWatch Logs for an application.
    #   @return [String]
    #
    # @!attribute [rw] log_level
    #   Describes the verbosity of the CloudWatch Logs for an application.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/MonitoringConfigurationDescription AWS API Documentation
    #
    class MonitoringConfigurationDescription < Struct.new(
      :configuration_type,
      :metrics_level,
      :log_level)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes updates to configuration parameters for Amazon CloudWatch
    # logging for an application.
    #
    # @!attribute [rw] configuration_type_update
    #   Describes updates to whether to use the default CloudWatch logging
    #   configuration for an application. You must set this property to
    #   `CUSTOM` in order to set the `LogLevel` or `MetricsLevel`
    #   parameters.
    #   @return [String]
    #
    # @!attribute [rw] metrics_level_update
    #   Describes updates to the granularity of the CloudWatch Logs for an
    #   application. The `Parallelism` level is not recommended for
    #   applications with a Parallelism over 64 due to excessive costs.
    #   @return [String]
    #
    # @!attribute [rw] log_level_update
    #   Describes updates to the verbosity of the CloudWatch Logs for an
    #   application.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/MonitoringConfigurationUpdate AWS API Documentation
    #
    class MonitoringConfigurationUpdate < Struct.new(
      :configuration_type_update,
      :metrics_level_update,
      :log_level_update)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a SQL-based Kinesis Data Analytics application's output
    # configuration, in which you identify an in-application stream and a
    # destination where you want the in-application stream data to be
    # written. The destination can be a Kinesis data stream or a Kinesis
    # Data Firehose delivery stream.
    #
    # @!attribute [rw] name
    #   The name of the in-application stream.
    #   @return [String]
    #
    # @!attribute [rw] kinesis_streams_output
    #   Identifies a Kinesis data stream as the destination.
    #   @return [Types::KinesisStreamsOutput]
    #
    # @!attribute [rw] kinesis_firehose_output
    #   Identifies a Kinesis Data Firehose delivery stream as the
    #   destination.
    #   @return [Types::KinesisFirehoseOutput]
    #
    # @!attribute [rw] lambda_output
    #   Identifies an Amazon Lambda function as the destination.
    #   @return [Types::LambdaOutput]
    #
    # @!attribute [rw] destination_schema
    #   Describes the data format when records are written to the
    #   destination.
    #   @return [Types::DestinationSchema]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/Output AWS API Documentation
    #
    class Output < Struct.new(
      :name,
      :kinesis_streams_output,
      :kinesis_firehose_output,
      :lambda_output,
      :destination_schema)
      SENSITIVE = []
      include Aws::Structure
    end

    # For a SQL-based Kinesis Data Analytics application, describes the
    # application output configuration, which includes the in-application
    # stream name and the destination where the stream data is written. The
    # destination can be a Kinesis data stream or a Kinesis Data Firehose
    # delivery stream.
    #
    # @!attribute [rw] output_id
    #   A unique identifier for the output configuration.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the in-application stream that is configured as output.
    #   @return [String]
    #
    # @!attribute [rw] kinesis_streams_output_description
    #   Describes the Kinesis data stream that is configured as the
    #   destination where output is written.
    #   @return [Types::KinesisStreamsOutputDescription]
    #
    # @!attribute [rw] kinesis_firehose_output_description
    #   Describes the Kinesis Data Firehose delivery stream that is
    #   configured as the destination where output is written.
    #   @return [Types::KinesisFirehoseOutputDescription]
    #
    # @!attribute [rw] lambda_output_description
    #   Describes the Lambda function that is configured as the destination
    #   where output is written.
    #   @return [Types::LambdaOutputDescription]
    #
    # @!attribute [rw] destination_schema
    #   The data format used for writing data to the destination.
    #   @return [Types::DestinationSchema]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/OutputDescription AWS API Documentation
    #
    class OutputDescription < Struct.new(
      :output_id,
      :name,
      :kinesis_streams_output_description,
      :kinesis_firehose_output_description,
      :lambda_output_description,
      :destination_schema)
      SENSITIVE = []
      include Aws::Structure
    end

    # For a SQL-based Kinesis Data Analytics application, describes updates
    # to the output configuration identified by the `OutputId`.
    #
    # @!attribute [rw] output_id
    #   Identifies the specific output configuration that you want to
    #   update.
    #   @return [String]
    #
    # @!attribute [rw] name_update
    #   If you want to specify a different in-application stream for this
    #   output configuration, use this field to specify the new
    #   in-application stream name.
    #   @return [String]
    #
    # @!attribute [rw] kinesis_streams_output_update
    #   Describes a Kinesis data stream as the destination for the output.
    #   @return [Types::KinesisStreamsOutputUpdate]
    #
    # @!attribute [rw] kinesis_firehose_output_update
    #   Describes a Kinesis Data Firehose delivery stream as the destination
    #   for the output.
    #   @return [Types::KinesisFirehoseOutputUpdate]
    #
    # @!attribute [rw] lambda_output_update
    #   Describes an Amazon Lambda function as the destination for the
    #   output.
    #   @return [Types::LambdaOutputUpdate]
    #
    # @!attribute [rw] destination_schema_update
    #   Describes the data format when records are written to the
    #   destination.
    #   @return [Types::DestinationSchema]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/OutputUpdate AWS API Documentation
    #
    class OutputUpdate < Struct.new(
      :output_id,
      :name_update,
      :kinesis_streams_output_update,
      :kinesis_firehose_output_update,
      :lambda_output_update,
      :destination_schema_update)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes parameters for how a Flink-based Kinesis Data Analytics
    # application executes multiple tasks simultaneously. For more
    # information about parallelism, see [Parallel Execution][1] in the
    # [Apache Flink Documentation][2].
    #
    #
    #
    # [1]: https://ci.apache.org/projects/flink/flink-docs-release-1.8/dev/parallel.html
    # [2]: https://ci.apache.org/projects/flink/flink-docs-release-1.8/
    #
    # @!attribute [rw] configuration_type
    #   Describes whether the application uses the default parallelism for
    #   the Kinesis Data Analytics service. You must set this property to
    #   `CUSTOM` in order to change your application's
    #   `AutoScalingEnabled`, `Parallelism`, or `ParallelismPerKPU`
    #   properties.
    #   @return [String]
    #
    # @!attribute [rw] parallelism
    #   Describes the initial number of parallel tasks that a Flink-based
    #   Kinesis Data Analytics application can perform. If
    #   `AutoScalingEnabled` is set to True, Kinesis Data Analytics
    #   increases the `CurrentParallelism` value in response to application
    #   load. The service can increase the `CurrentParallelism` value up to
    #   the maximum parallelism, which is `ParalellismPerKPU` times the
    #   maximum KPUs for the application. The maximum KPUs for an
    #   application is 32 by default, and can be increased by requesting a
    #   limit increase. If application load is reduced, the service can
    #   reduce the `CurrentParallelism` value down to the `Parallelism`
    #   setting.
    #   @return [Integer]
    #
    # @!attribute [rw] parallelism_per_kpu
    #   Describes the number of parallel tasks that a Flink-based Kinesis
    #   Data Analytics application can perform per Kinesis Processing Unit
    #   (KPU) used by the application. For more information about KPUs, see
    #   [Amazon Kinesis Data Analytics Pricing][1].
    #
    #
    #
    #   [1]: http://aws.amazon.com/kinesis/data-analytics/pricing/
    #   @return [Integer]
    #
    # @!attribute [rw] auto_scaling_enabled
    #   Describes whether the Kinesis Data Analytics service can increase
    #   the parallelism of the application in response to increased
    #   throughput.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/ParallelismConfiguration AWS API Documentation
    #
    class ParallelismConfiguration < Struct.new(
      :configuration_type,
      :parallelism,
      :parallelism_per_kpu,
      :auto_scaling_enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes parameters for how a Flink-based Kinesis Data Analytics
    # application executes multiple tasks simultaneously.
    #
    # @!attribute [rw] configuration_type
    #   Describes whether the application uses the default parallelism for
    #   the Kinesis Data Analytics service.
    #   @return [String]
    #
    # @!attribute [rw] parallelism
    #   Describes the initial number of parallel tasks that a Flink-based
    #   Kinesis Data Analytics application can perform. If
    #   `AutoScalingEnabled` is set to True, then Kinesis Data Analytics can
    #   increase the `CurrentParallelism` value in response to application
    #   load. The service can increase `CurrentParallelism` up to the
    #   maximum parallelism, which is `ParalellismPerKPU` times the maximum
    #   KPUs for the application. The maximum KPUs for an application is 32
    #   by default, and can be increased by requesting a limit increase. If
    #   application load is reduced, the service can reduce the
    #   `CurrentParallelism` value down to the `Parallelism` setting.
    #   @return [Integer]
    #
    # @!attribute [rw] parallelism_per_kpu
    #   Describes the number of parallel tasks that a Flink-based Kinesis
    #   Data Analytics application can perform per Kinesis Processing Unit
    #   (KPU) used by the application.
    #   @return [Integer]
    #
    # @!attribute [rw] current_parallelism
    #   Describes the current number of parallel tasks that a Flink-based
    #   Kinesis Data Analytics application can perform. If
    #   `AutoScalingEnabled` is set to True, Kinesis Data Analytics can
    #   increase this value in response to application load. The service can
    #   increase this value up to the maximum parallelism, which is
    #   `ParalellismPerKPU` times the maximum KPUs for the application. The
    #   maximum KPUs for an application is 32 by default, and can be
    #   increased by requesting a limit increase. If application load is
    #   reduced, the service can reduce the `CurrentParallelism` value down
    #   to the `Parallelism` setting.
    #   @return [Integer]
    #
    # @!attribute [rw] auto_scaling_enabled
    #   Describes whether the Kinesis Data Analytics service can increase
    #   the parallelism of the application in response to increased
    #   throughput.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/ParallelismConfigurationDescription AWS API Documentation
    #
    class ParallelismConfigurationDescription < Struct.new(
      :configuration_type,
      :parallelism,
      :parallelism_per_kpu,
      :current_parallelism,
      :auto_scaling_enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes updates to parameters for how an application executes
    # multiple tasks simultaneously.
    #
    # @!attribute [rw] configuration_type_update
    #   Describes updates to whether the application uses the default
    #   parallelism for the Kinesis Data Analytics service, or if a custom
    #   parallelism is used. You must set this property to `CUSTOM` in order
    #   to change your application's `AutoScalingEnabled`, `Parallelism`,
    #   or `ParallelismPerKPU` properties.
    #   @return [String]
    #
    # @!attribute [rw] parallelism_update
    #   Describes updates to the initial number of parallel tasks an
    #   application can perform. If `AutoScalingEnabled` is set to True,
    #   then Kinesis Data Analytics can increase the `CurrentParallelism`
    #   value in response to application load. The service can increase
    #   `CurrentParallelism` up to the maximum parallelism, which is
    #   `ParalellismPerKPU` times the maximum KPUs for the application. The
    #   maximum KPUs for an application is 32 by default, and can be
    #   increased by requesting a limit increase. If application load is
    #   reduced, the service will reduce `CurrentParallelism` down to the
    #   `Parallelism` setting.
    #   @return [Integer]
    #
    # @!attribute [rw] parallelism_per_kpu_update
    #   Describes updates to the number of parallel tasks an application can
    #   perform per Kinesis Processing Unit (KPU) used by the application.
    #   @return [Integer]
    #
    # @!attribute [rw] auto_scaling_enabled_update
    #   Describes updates to whether the Kinesis Data Analytics service can
    #   increase the parallelism of a Flink-based Kinesis Data Analytics
    #   application in response to increased throughput.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/ParallelismConfigurationUpdate AWS API Documentation
    #
    class ParallelismConfigurationUpdate < Struct.new(
      :configuration_type_update,
      :parallelism_update,
      :parallelism_per_kpu_update,
      :auto_scaling_enabled_update)
      SENSITIVE = []
      include Aws::Structure
    end

    # Property key-value pairs passed into an application.
    #
    # @!attribute [rw] property_group_id
    #   Describes the key of an application execution property key-value
    #   pair.
    #   @return [String]
    #
    # @!attribute [rw] property_map
    #   Describes the value of an application execution property key-value
    #   pair.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/PropertyGroup AWS API Documentation
    #
    class PropertyGroup < Struct.new(
      :property_group_id,
      :property_map)
      SENSITIVE = []
      include Aws::Structure
    end

    # For a SQL-based Kinesis Data Analytics application, describes the
    # mapping of each data element in the streaming source to the
    # corresponding column in the in-application stream.
    #
    # Also used to describe the format of the reference data source.
    #
    # @!attribute [rw] name
    #   The name of the column that is created in the in-application input
    #   stream or reference table.
    #   @return [String]
    #
    # @!attribute [rw] mapping
    #   A reference to the data element in the streaming input or the
    #   reference data source.
    #   @return [String]
    #
    # @!attribute [rw] sql_type
    #   The type of column created in the in-application input stream or
    #   reference table.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/RecordColumn AWS API Documentation
    #
    class RecordColumn < Struct.new(
      :name,
      :mapping,
      :sql_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # For a SQL-based Kinesis Data Analytics application, describes the
    # record format and relevant mapping information that should be applied
    # to schematize the records on the stream.
    #
    # @!attribute [rw] record_format_type
    #   The type of record format.
    #   @return [String]
    #
    # @!attribute [rw] mapping_parameters
    #   When you configure application input at the time of creating or
    #   updating an application, provides additional mapping information
    #   specific to the record format (such as JSON, CSV, or record fields
    #   delimited by some delimiter) on the streaming source.
    #   @return [Types::MappingParameters]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/RecordFormat AWS API Documentation
    #
    class RecordFormat < Struct.new(
      :record_format_type,
      :mapping_parameters)
      SENSITIVE = []
      include Aws::Structure
    end

    # For a SQL-based Kinesis Data Analytics application, describes the
    # reference data source by providing the source information (Amazon S3
    # bucket name and object key name), the resulting in-application table
    # name that is created, and the necessary schema to map the data
    # elements in the Amazon S3 object to the in-application table.
    #
    # @!attribute [rw] table_name
    #   The name of the in-application table to create.
    #   @return [String]
    #
    # @!attribute [rw] s3_reference_data_source
    #   Identifies the S3 bucket and object that contains the reference
    #   data. A Kinesis Data Analytics application loads reference data only
    #   once. If the data changes, you call the UpdateApplication operation
    #   to trigger reloading of data into your application.
    #   @return [Types::S3ReferenceDataSource]
    #
    # @!attribute [rw] reference_schema
    #   Describes the format of the data in the streaming source, and how
    #   each data element maps to corresponding columns created in the
    #   in-application stream.
    #   @return [Types::SourceSchema]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/ReferenceDataSource AWS API Documentation
    #
    class ReferenceDataSource < Struct.new(
      :table_name,
      :s3_reference_data_source,
      :reference_schema)
      SENSITIVE = []
      include Aws::Structure
    end

    # For a SQL-based Kinesis Data Analytics application, describes the
    # reference data source configured for an application.
    #
    # @!attribute [rw] reference_id
    #   The ID of the reference data source. This is the ID that Kinesis
    #   Data Analytics assigns when you add the reference data source to
    #   your application using the CreateApplication or UpdateApplication
    #   operation.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   The in-application table name created by the specific reference data
    #   source configuration.
    #   @return [String]
    #
    # @!attribute [rw] s3_reference_data_source_description
    #   Provides the Amazon S3 bucket name, the object key name that
    #   contains the reference data.
    #   @return [Types::S3ReferenceDataSourceDescription]
    #
    # @!attribute [rw] reference_schema
    #   Describes the format of the data in the streaming source, and how
    #   each data element maps to corresponding columns created in the
    #   in-application stream.
    #   @return [Types::SourceSchema]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/ReferenceDataSourceDescription AWS API Documentation
    #
    class ReferenceDataSourceDescription < Struct.new(
      :reference_id,
      :table_name,
      :s3_reference_data_source_description,
      :reference_schema)
      SENSITIVE = []
      include Aws::Structure
    end

    # When you update a reference data source configuration for a SQL-based
    # Kinesis Data Analytics application, this object provides all the
    # updated values (such as the source bucket name and object key name),
    # the in-application table name that is created, and updated mapping
    # information that maps the data in the Amazon S3 object to the
    # in-application reference table that is created.
    #
    # @!attribute [rw] reference_id
    #   The ID of the reference data source that is being updated. You can
    #   use the DescribeApplication operation to get this value.
    #   @return [String]
    #
    # @!attribute [rw] table_name_update
    #   The in-application table name that is created by this update.
    #   @return [String]
    #
    # @!attribute [rw] s3_reference_data_source_update
    #   Describes the S3 bucket name, object key name, and IAM role that
    #   Kinesis Data Analytics can assume to read the Amazon S3 object on
    #   your behalf and populate the in-application reference table.
    #   @return [Types::S3ReferenceDataSourceUpdate]
    #
    # @!attribute [rw] reference_schema_update
    #   Describes the format of the data in the streaming source, and how
    #   each data element maps to corresponding columns created in the
    #   in-application stream.
    #   @return [Types::SourceSchema]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/ReferenceDataSourceUpdate AWS API Documentation
    #
    class ReferenceDataSourceUpdate < Struct.new(
      :reference_id,
      :table_name_update,
      :s3_reference_data_source_update,
      :reference_schema_update)
      SENSITIVE = []
      include Aws::Structure
    end

    # The application is not available for this operation.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/ResourceInUseException AWS API Documentation
    #
    class ResourceInUseException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specified application can't be found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Discovery failed to get a record from the streaming source because of
    # the Kinesis Streams `ProvisionedThroughputExceededException`. For more
    # information, see [GetRecords][1] in the Amazon Kinesis Streams API
    # Reference.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/kinesis/latest/APIReference/API_GetRecords.html
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/ResourceProvisionedThroughputExceededException AWS API Documentation
    #
    class ResourceProvisionedThroughputExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_name
    #   The name of the application.
    #   @return [String]
    #
    # @!attribute [rw] current_application_version_id
    #   The current application version ID. You can retrieve the application
    #   version ID using DescribeApplication.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/RollbackApplicationRequest AWS API Documentation
    #
    class RollbackApplicationRequest < Struct.new(
      :application_name,
      :current_application_version_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_detail
    #   Describes the application, including the application Amazon Resource
    #   Name (ARN), status, latest version, and input and output
    #   configurations.
    #   @return [Types::ApplicationDetail]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/RollbackApplicationResponse AWS API Documentation
    #
    class RollbackApplicationResponse < Struct.new(
      :application_detail)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the starting parameters for an Kinesis Data Analytics
    # application.
    #
    # @!attribute [rw] flink_run_configuration
    #   Describes the starting parameters for a Flink-based Kinesis Data
    #   Analytics application.
    #   @return [Types::FlinkRunConfiguration]
    #
    # @!attribute [rw] sql_run_configurations
    #   Describes the starting parameters for a SQL-based Kinesis Data
    #   Analytics application application.
    #   @return [Array<Types::SqlRunConfiguration>]
    #
    # @!attribute [rw] application_restore_configuration
    #   Describes the restore behavior of a restarting application.
    #   @return [Types::ApplicationRestoreConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/RunConfiguration AWS API Documentation
    #
    class RunConfiguration < Struct.new(
      :flink_run_configuration,
      :sql_run_configurations,
      :application_restore_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the starting properties for a Kinesis Data Analytics
    # application.
    #
    # @!attribute [rw] application_restore_configuration_description
    #   Describes the restore behavior of a restarting application.
    #   @return [Types::ApplicationRestoreConfiguration]
    #
    # @!attribute [rw] flink_run_configuration_description
    #   Describes the starting parameters for a Flink-based Kinesis Data
    #   Analytics application.
    #   @return [Types::FlinkRunConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/RunConfigurationDescription AWS API Documentation
    #
    class RunConfigurationDescription < Struct.new(
      :application_restore_configuration_description,
      :flink_run_configuration_description)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the updates to the starting parameters for a Kinesis Data
    # Analytics application.
    #
    # @!attribute [rw] flink_run_configuration
    #   Describes the starting parameters for a Flink-based Kinesis Data
    #   Analytics application.
    #   @return [Types::FlinkRunConfiguration]
    #
    # @!attribute [rw] application_restore_configuration
    #   Describes updates to the restore behavior of a restarting
    #   application.
    #   @return [Types::ApplicationRestoreConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/RunConfigurationUpdate AWS API Documentation
    #
    class RunConfigurationUpdate < Struct.new(
      :flink_run_configuration,
      :application_restore_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the location of an application's code stored in an S3
    # bucket.
    #
    # @!attribute [rw] bucket_arn
    #   The Amazon Resource Name (ARN) for the S3 bucket containing the
    #   application code.
    #   @return [String]
    #
    # @!attribute [rw] file_key
    #   The file key for the object containing the application code.
    #   @return [String]
    #
    # @!attribute [rw] object_version
    #   The version of the object containing the application code.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/S3ApplicationCodeLocationDescription AWS API Documentation
    #
    class S3ApplicationCodeLocationDescription < Struct.new(
      :bucket_arn,
      :file_key,
      :object_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # For a SQL-based Kinesis Data Analytics application, provides a
    # description of an Amazon S3 data source, including the Amazon Resource
    # Name (ARN) of the S3 bucket and the name of the Amazon S3 object that
    # contains the data.
    #
    # @!attribute [rw] bucket_arn
    #   The ARN of the S3 bucket that contains the data.
    #   @return [String]
    #
    # @!attribute [rw] file_key
    #   The name of the object that contains the data.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/S3Configuration AWS API Documentation
    #
    class S3Configuration < Struct.new(
      :bucket_arn,
      :file_key)
      SENSITIVE = []
      include Aws::Structure
    end

    # The S3 bucket that holds the application information.
    #
    # @!attribute [rw] bucket_arn
    #   The Amazon Resource Name (ARN) of the S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] base_path
    #   The base path for the S3 bucket.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/S3ContentBaseLocation AWS API Documentation
    #
    class S3ContentBaseLocation < Struct.new(
      :bucket_arn,
      :base_path)
      SENSITIVE = []
      include Aws::Structure
    end

    # The description of the S3 base location that holds the application.
    #
    # @!attribute [rw] bucket_arn
    #   The Amazon Resource Name (ARN) of the S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] base_path
    #   The base path for the S3 bucket.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/S3ContentBaseLocationDescription AWS API Documentation
    #
    class S3ContentBaseLocationDescription < Struct.new(
      :bucket_arn,
      :base_path)
      SENSITIVE = []
      include Aws::Structure
    end

    # The information required to update the S3 base location that holds the
    # application.
    #
    # @!attribute [rw] bucket_arn_update
    #   The updated Amazon Resource Name (ARN) of the S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] base_path_update
    #   The updated S3 bucket path.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/S3ContentBaseLocationUpdate AWS API Documentation
    #
    class S3ContentBaseLocationUpdate < Struct.new(
      :bucket_arn_update,
      :base_path_update)
      SENSITIVE = []
      include Aws::Structure
    end

    # For a Kinesis Data Analytics application provides a description of an
    # Amazon S3 object, including the Amazon Resource Name (ARN) of the S3
    # bucket, the name of the Amazon S3 object that contains the data, and
    # the version number of the Amazon S3 object that contains the data.
    #
    # @!attribute [rw] bucket_arn
    #   The Amazon Resource Name (ARN) for the S3 bucket containing the
    #   application code.
    #   @return [String]
    #
    # @!attribute [rw] file_key
    #   The file key for the object containing the application code.
    #   @return [String]
    #
    # @!attribute [rw] object_version
    #   The version of the object containing the application code.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/S3ContentLocation AWS API Documentation
    #
    class S3ContentLocation < Struct.new(
      :bucket_arn,
      :file_key,
      :object_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an update for the Amazon S3 code content location for an
    # application.
    #
    # @!attribute [rw] bucket_arn_update
    #   The new Amazon Resource Name (ARN) for the S3 bucket containing the
    #   application code.
    #   @return [String]
    #
    # @!attribute [rw] file_key_update
    #   The new file key for the object containing the application code.
    #   @return [String]
    #
    # @!attribute [rw] object_version_update
    #   The new version of the object containing the application code.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/S3ContentLocationUpdate AWS API Documentation
    #
    class S3ContentLocationUpdate < Struct.new(
      :bucket_arn_update,
      :file_key_update,
      :object_version_update)
      SENSITIVE = []
      include Aws::Structure
    end

    # For a SQL-based Kinesis Data Analytics application, identifies the
    # Amazon S3 bucket and object that contains the reference data.
    #
    # A Kinesis Data Analytics application loads reference data only once.
    # If the data changes, you call the UpdateApplication operation to
    # trigger reloading of data into your application.
    #
    # @!attribute [rw] bucket_arn
    #   The Amazon Resource Name (ARN) of the S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] file_key
    #   The object key name containing the reference data.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/S3ReferenceDataSource AWS API Documentation
    #
    class S3ReferenceDataSource < Struct.new(
      :bucket_arn,
      :file_key)
      SENSITIVE = []
      include Aws::Structure
    end

    # For a SQL-based Kinesis Data Analytics application, provides the
    # bucket name and object key name that stores the reference data.
    #
    # @!attribute [rw] bucket_arn
    #   The Amazon Resource Name (ARN) of the S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] file_key
    #   Amazon S3 object key name.
    #   @return [String]
    #
    # @!attribute [rw] reference_role_arn
    #   The ARN of the IAM role that Kinesis Data Analytics can assume to
    #   read the Amazon S3 object on your behalf to populate the
    #   in-application reference table.
    #
    #   <note markdown="1"> Provided for backward compatibility. Applications that are created
    #   with the current API version have an application-level service
    #   execution role rather than a resource-level role.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/S3ReferenceDataSourceDescription AWS API Documentation
    #
    class S3ReferenceDataSourceDescription < Struct.new(
      :bucket_arn,
      :file_key,
      :reference_role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # For a SQL-based Kinesis Data Analytics application, describes the
    # Amazon S3 bucket name and object key name for an in-application
    # reference table.
    #
    # @!attribute [rw] bucket_arn_update
    #   The Amazon Resource Name (ARN) of the S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] file_key_update
    #   The object key name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/S3ReferenceDataSourceUpdate AWS API Documentation
    #
    class S3ReferenceDataSourceUpdate < Struct.new(
      :bucket_arn_update,
      :file_key_update)
      SENSITIVE = []
      include Aws::Structure
    end

    # The service cannot complete the request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/ServiceUnavailableException AWS API Documentation
    #
    class ServiceUnavailableException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides details about a snapshot of application state.
    #
    # @!attribute [rw] snapshot_name
    #   The identifier for the application snapshot.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_status
    #   The status of the application snapshot.
    #   @return [String]
    #
    # @!attribute [rw] application_version_id
    #   The current application version ID when the snapshot was created.
    #   @return [Integer]
    #
    # @!attribute [rw] snapshot_creation_timestamp
    #   The timestamp of the application snapshot.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/SnapshotDetails AWS API Documentation
    #
    class SnapshotDetails < Struct.new(
      :snapshot_name,
      :snapshot_status,
      :application_version_id,
      :snapshot_creation_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # For a SQL-based Kinesis Data Analytics application, describes the
    # format of the data in the streaming source, and how each data element
    # maps to corresponding columns created in the in-application stream.
    #
    # @!attribute [rw] record_format
    #   Specifies the format of the records on the streaming source.
    #   @return [Types::RecordFormat]
    #
    # @!attribute [rw] record_encoding
    #   Specifies the encoding of the records in the streaming source. For
    #   example, UTF-8.
    #   @return [String]
    #
    # @!attribute [rw] record_columns
    #   A list of `RecordColumn` objects.
    #   @return [Array<Types::RecordColumn>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/SourceSchema AWS API Documentation
    #
    class SourceSchema < Struct.new(
      :record_format,
      :record_encoding,
      :record_columns)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the inputs, outputs, and reference data sources for a
    # SQL-based Kinesis Data Analytics application.
    #
    # @!attribute [rw] inputs
    #   The array of Input objects describing the input streams used by the
    #   application.
    #   @return [Array<Types::Input>]
    #
    # @!attribute [rw] outputs
    #   The array of Output objects describing the destination streams used
    #   by the application.
    #   @return [Array<Types::Output>]
    #
    # @!attribute [rw] reference_data_sources
    #   The array of ReferenceDataSource objects describing the reference
    #   data sources used by the application.
    #   @return [Array<Types::ReferenceDataSource>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/SqlApplicationConfiguration AWS API Documentation
    #
    class SqlApplicationConfiguration < Struct.new(
      :inputs,
      :outputs,
      :reference_data_sources)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the inputs, outputs, and reference data sources for a
    # SQL-based Kinesis Data Analytics application.
    #
    # @!attribute [rw] input_descriptions
    #   The array of InputDescription objects describing the input streams
    #   used by the application.
    #   @return [Array<Types::InputDescription>]
    #
    # @!attribute [rw] output_descriptions
    #   The array of OutputDescription objects describing the destination
    #   streams used by the application.
    #   @return [Array<Types::OutputDescription>]
    #
    # @!attribute [rw] reference_data_source_descriptions
    #   The array of ReferenceDataSourceDescription objects describing the
    #   reference data sources used by the application.
    #   @return [Array<Types::ReferenceDataSourceDescription>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/SqlApplicationConfigurationDescription AWS API Documentation
    #
    class SqlApplicationConfigurationDescription < Struct.new(
      :input_descriptions,
      :output_descriptions,
      :reference_data_source_descriptions)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes updates to the input streams, destination streams, and
    # reference data sources for a SQL-based Kinesis Data Analytics
    # application.
    #
    # @!attribute [rw] input_updates
    #   The array of InputUpdate objects describing the new input streams
    #   used by the application.
    #   @return [Array<Types::InputUpdate>]
    #
    # @!attribute [rw] output_updates
    #   The array of OutputUpdate objects describing the new destination
    #   streams used by the application.
    #   @return [Array<Types::OutputUpdate>]
    #
    # @!attribute [rw] reference_data_source_updates
    #   The array of ReferenceDataSourceUpdate objects describing the new
    #   reference data sources used by the application.
    #   @return [Array<Types::ReferenceDataSourceUpdate>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/SqlApplicationConfigurationUpdate AWS API Documentation
    #
    class SqlApplicationConfigurationUpdate < Struct.new(
      :input_updates,
      :output_updates,
      :reference_data_source_updates)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the starting parameters for a SQL-based Kinesis Data
    # Analytics application.
    #
    # @!attribute [rw] input_id
    #   The input source ID. You can get this ID by calling the
    #   DescribeApplication operation.
    #   @return [String]
    #
    # @!attribute [rw] input_starting_position_configuration
    #   The point at which you want the application to start processing
    #   records from the streaming source.
    #   @return [Types::InputStartingPositionConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/SqlRunConfiguration AWS API Documentation
    #
    class SqlRunConfiguration < Struct.new(
      :input_id,
      :input_starting_position_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_name
    #   The name of the application.
    #   @return [String]
    #
    # @!attribute [rw] run_configuration
    #   Identifies the run configuration (start parameters) of a Kinesis
    #   Data Analytics application.
    #   @return [Types::RunConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/StartApplicationRequest AWS API Documentation
    #
    class StartApplicationRequest < Struct.new(
      :application_name,
      :run_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/StartApplicationResponse AWS API Documentation
    #
    class StartApplicationResponse < Aws::EmptyStructure; end

    # @!attribute [rw] application_name
    #   The name of the running application to stop.
    #   @return [String]
    #
    # @!attribute [rw] force
    #   Set to `true` to force the application to stop. If you set `Force`
    #   to `true`, Kinesis Data Analytics stops the application without
    #   taking a snapshot.
    #
    #   <note markdown="1"> Force-stopping your application may lead to data loss or
    #   duplication. To prevent data loss or duplicate processing of data
    #   during application restarts, we recommend you to take frequent
    #   snapshots of your application.
    #
    #    </note>
    #
    #   You can only force stop a Flink-based Kinesis Data Analytics
    #   application. You can't force stop a SQL-based Kinesis Data
    #   Analytics application.
    #
    #   The application must be in the `STARTING`, `UPDATING`, `STOPPING`,
    #   `AUTOSCALING`, or `RUNNING` status.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/StopApplicationRequest AWS API Documentation
    #
    class StopApplicationRequest < Struct.new(
      :application_name,
      :force)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/StopApplicationResponse AWS API Documentation
    #
    class StopApplicationResponse < Aws::EmptyStructure; end

    # A key-value pair (the value is optional) that you can define and
    # assign to Amazon resources. If you specify a tag that already exists,
    # the tag value is replaced with the value that you specify in the
    # request. Note that the maximum number of application tags includes
    # system tags. The maximum number of user-defined application tags is
    # 50. For more information, see [Using Tagging][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kinesisanalytics/latest/java/how-tagging.html
    #
    # @!attribute [rw] key
    #   The key of the key-value tag.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the key-value tag. The value is optional.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the application to assign the tags.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The key-value tags to assign to the application.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # Application created with too many tags, or too many tags added to an
    # application. Note that the maximum number of application tags includes
    # system tags. The maximum number of user-defined application tags is
    # 50.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/TooManyTagsException AWS API Documentation
    #
    class TooManyTagsException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The data format is not valid. Kinesis Data Analytics cannot detect the
    # schema for the given streaming source.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] raw_input_records
    #   Raw stream data that was sampled to infer the schema.
    #   @return [Array<String>]
    #
    # @!attribute [rw] processed_input_records
    #   Stream data that was modified by the processor specified in the
    #   `InputProcessingConfiguration` parameter.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/UnableToDetectSchemaException AWS API Documentation
    #
    class UnableToDetectSchemaException < Struct.new(
      :message,
      :raw_input_records,
      :processed_input_records)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was rejected because a specified parameter is not
    # supported or a specified resource is not valid for this operation.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/UnsupportedOperationException AWS API Documentation
    #
    class UnsupportedOperationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the Kinesis Data Analytics application from which to
    #   remove the tags.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   A list of keys of tags to remove from the specified application.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] application_name
    #   The name of the application for which you want to update the
    #   maintenance configuration.
    #   @return [String]
    #
    # @!attribute [rw] application_maintenance_configuration_update
    #   Describes the application maintenance configuration update.
    #   @return [Types::ApplicationMaintenanceConfigurationUpdate]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/UpdateApplicationMaintenanceConfigurationRequest AWS API Documentation
    #
    class UpdateApplicationMaintenanceConfigurationRequest < Struct.new(
      :application_name,
      :application_maintenance_configuration_update)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_arn
    #   The Amazon Resource Name (ARN) of the application.
    #   @return [String]
    #
    # @!attribute [rw] application_maintenance_configuration_description
    #   The application maintenance configuration description after the
    #   update.
    #   @return [Types::ApplicationMaintenanceConfigurationDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/UpdateApplicationMaintenanceConfigurationResponse AWS API Documentation
    #
    class UpdateApplicationMaintenanceConfigurationResponse < Struct.new(
      :application_arn,
      :application_maintenance_configuration_description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_name
    #   The name of the application to update.
    #   @return [String]
    #
    # @!attribute [rw] current_application_version_id
    #   The current application version ID. You must provide the
    #   `CurrentApplicationVersionId` or the `ConditionalToken`.You can
    #   retrieve the application version ID using DescribeApplication. For
    #   better concurrency support, use the `ConditionalToken` parameter
    #   instead of `CurrentApplicationVersionId`.
    #   @return [Integer]
    #
    # @!attribute [rw] application_configuration_update
    #   Describes application configuration updates.
    #   @return [Types::ApplicationConfigurationUpdate]
    #
    # @!attribute [rw] service_execution_role_update
    #   Describes updates to the service execution role.
    #   @return [String]
    #
    # @!attribute [rw] run_configuration_update
    #   Describes updates to the application's starting parameters.
    #   @return [Types::RunConfigurationUpdate]
    #
    # @!attribute [rw] cloud_watch_logging_option_updates
    #   Describes application Amazon CloudWatch logging option updates. You
    #   can only update existing CloudWatch logging options with this
    #   action. To add a new CloudWatch logging option, use
    #   AddApplicationCloudWatchLoggingOption.
    #   @return [Array<Types::CloudWatchLoggingOptionUpdate>]
    #
    # @!attribute [rw] conditional_token
    #   A value you use to implement strong concurrency for application
    #   updates. You must provide the `CurrentApplicationVersionId` or the
    #   `ConditionalToken`. You get the application's current
    #   `ConditionalToken` using DescribeApplication. For better concurrency
    #   support, use the `ConditionalToken` parameter instead of
    #   `CurrentApplicationVersionId`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/UpdateApplicationRequest AWS API Documentation
    #
    class UpdateApplicationRequest < Struct.new(
      :application_name,
      :current_application_version_id,
      :application_configuration_update,
      :service_execution_role_update,
      :run_configuration_update,
      :cloud_watch_logging_option_updates,
      :conditional_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_detail
    #   Describes application updates.
    #   @return [Types::ApplicationDetail]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/UpdateApplicationResponse AWS API Documentation
    #
    class UpdateApplicationResponse < Struct.new(
      :application_detail)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the parameters of a VPC used by the application.
    #
    # @!attribute [rw] subnet_ids
    #   The array of [Subnet][1] IDs used by the VPC configuration.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_Subnet.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] security_group_ids
    #   The array of [SecurityGroup][1] IDs used by the VPC configuration.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_SecurityGroup.html
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/VpcConfiguration AWS API Documentation
    #
    class VpcConfiguration < Struct.new(
      :subnet_ids,
      :security_group_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the parameters of a VPC used by the application.
    #
    # @!attribute [rw] vpc_configuration_id
    #   The ID of the VPC configuration.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   The ID of the associated VPC.
    #   @return [String]
    #
    # @!attribute [rw] subnet_ids
    #   The array of [Subnet][1] IDs used by the VPC configuration.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_Subnet.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] security_group_ids
    #   The array of [SecurityGroup][1] IDs used by the VPC configuration.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_SecurityGroup.html
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/VpcConfigurationDescription AWS API Documentation
    #
    class VpcConfigurationDescription < Struct.new(
      :vpc_configuration_id,
      :vpc_id,
      :subnet_ids,
      :security_group_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes updates to the VPC configuration used by the application.
    #
    # @!attribute [rw] vpc_configuration_id
    #   Describes an update to the ID of the VPC configuration.
    #   @return [String]
    #
    # @!attribute [rw] subnet_id_updates
    #   Describes updates to the array of [Subnet][1] IDs used by the VPC
    #   configuration.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_Subnet.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] security_group_id_updates
    #   Describes updates to the array of [SecurityGroup][1] IDs used by the
    #   VPC configuration.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_SecurityGroup.html
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/VpcConfigurationUpdate AWS API Documentation
    #
    class VpcConfigurationUpdate < Struct.new(
      :vpc_configuration_id,
      :subnet_id_updates,
      :security_group_id_updates)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration of a Kinesis Data Analytics Studio notebook.
    #
    # @!attribute [rw] monitoring_configuration
    #   The monitoring configuration of a Kinesis Data Analytics Studio
    #   notebook.
    #   @return [Types::ZeppelinMonitoringConfiguration]
    #
    # @!attribute [rw] catalog_configuration
    #   The Amazon Glue Data Catalog that you use in queries in a Kinesis
    #   Data Analytics Studio notebook.
    #   @return [Types::CatalogConfiguration]
    #
    # @!attribute [rw] deploy_as_application_configuration
    #   The information required to deploy a Kinesis Data Analytics Studio
    #   notebook as an application with durable state.
    #   @return [Types::DeployAsApplicationConfiguration]
    #
    # @!attribute [rw] custom_artifacts_configuration
    #   Custom artifacts are dependency JARs and user-defined functions
    #   (UDF).
    #   @return [Array<Types::CustomArtifactConfiguration>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/ZeppelinApplicationConfiguration AWS API Documentation
    #
    class ZeppelinApplicationConfiguration < Struct.new(
      :monitoring_configuration,
      :catalog_configuration,
      :deploy_as_application_configuration,
      :custom_artifacts_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration of a Kinesis Data Analytics Studio notebook.
    #
    # @!attribute [rw] monitoring_configuration_description
    #   The monitoring configuration of a Kinesis Data Analytics Studio
    #   notebook.
    #   @return [Types::ZeppelinMonitoringConfigurationDescription]
    #
    # @!attribute [rw] catalog_configuration_description
    #   The Amazon Glue Data Catalog that is associated with the Kinesis
    #   Data Analytics Studio notebook.
    #   @return [Types::CatalogConfigurationDescription]
    #
    # @!attribute [rw] deploy_as_application_configuration_description
    #   The parameters required to deploy a Kinesis Data Analytics Studio
    #   notebook as an application with durable state.
    #   @return [Types::DeployAsApplicationConfigurationDescription]
    #
    # @!attribute [rw] custom_artifacts_configuration_description
    #   Custom artifacts are dependency JARs and user-defined functions
    #   (UDF).
    #   @return [Array<Types::CustomArtifactConfigurationDescription>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/ZeppelinApplicationConfigurationDescription AWS API Documentation
    #
    class ZeppelinApplicationConfigurationDescription < Struct.new(
      :monitoring_configuration_description,
      :catalog_configuration_description,
      :deploy_as_application_configuration_description,
      :custom_artifacts_configuration_description)
      SENSITIVE = []
      include Aws::Structure
    end

    # Updates to the configuration of Kinesis Data Analytics Studio
    # notebook.
    #
    # @!attribute [rw] monitoring_configuration_update
    #   Updates to the monitoring configuration of a Kinesis Data Analytics
    #   Studio notebook.
    #   @return [Types::ZeppelinMonitoringConfigurationUpdate]
    #
    # @!attribute [rw] catalog_configuration_update
    #   Updates to the configuration of the Amazon Glue Data Catalog that is
    #   associated with the Kinesis Data Analytics Studio notebook.
    #   @return [Types::CatalogConfigurationUpdate]
    #
    # @!attribute [rw] deploy_as_application_configuration_update
    #   Updates to the configuration information required to deploy an
    #   Amazon Data Analytics Studio notebook as an application with durable
    #   state.
    #   @return [Types::DeployAsApplicationConfigurationUpdate]
    #
    # @!attribute [rw] custom_artifacts_configuration_update
    #   Updates to the customer artifacts. Custom artifacts are dependency
    #   JAR files and user-defined functions (UDF).
    #   @return [Array<Types::CustomArtifactConfiguration>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/ZeppelinApplicationConfigurationUpdate AWS API Documentation
    #
    class ZeppelinApplicationConfigurationUpdate < Struct.new(
      :monitoring_configuration_update,
      :catalog_configuration_update,
      :deploy_as_application_configuration_update,
      :custom_artifacts_configuration_update)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes configuration parameters for Amazon CloudWatch logging for a
    # Kinesis Data Analytics Studio notebook. For more information about
    # CloudWatch logging, see [Monitoring][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kinesisanalytics/latest/java/monitoring-overview.html
    #
    # @!attribute [rw] log_level
    #   The verbosity of the CloudWatch Logs for an application.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/ZeppelinMonitoringConfiguration AWS API Documentation
    #
    class ZeppelinMonitoringConfiguration < Struct.new(
      :log_level)
      SENSITIVE = []
      include Aws::Structure
    end

    # The monitoring configuration for Apache Zeppelin within a Kinesis Data
    # Analytics Studio notebook.
    #
    # @!attribute [rw] log_level
    #   Describes the verbosity of the CloudWatch Logs for an application.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/ZeppelinMonitoringConfigurationDescription AWS API Documentation
    #
    class ZeppelinMonitoringConfigurationDescription < Struct.new(
      :log_level)
      SENSITIVE = []
      include Aws::Structure
    end

    # Updates to the monitoring configuration for Apache Zeppelin within a
    # Kinesis Data Analytics Studio notebook.
    #
    # @!attribute [rw] log_level_update
    #   Updates to the logging level for Apache Zeppelin within a Kinesis
    #   Data Analytics Studio notebook.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/ZeppelinMonitoringConfigurationUpdate AWS API Documentation
    #
    class ZeppelinMonitoringConfigurationUpdate < Struct.new(
      :log_level_update)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
