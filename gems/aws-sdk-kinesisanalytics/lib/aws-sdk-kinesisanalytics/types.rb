# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::KinesisAnalytics
  module Types

    # @note When making an API call, you may pass AddApplicationCloudWatchLoggingOptionRequest
    #   data as a hash:
    #
    #       {
    #         application_name: "ApplicationName", # required
    #         current_application_version_id: 1, # required
    #         cloud_watch_logging_option: { # required
    #           log_stream_arn: "LogStreamARN", # required
    #           role_arn: "RoleARN", # required
    #         },
    #       }
    #
    # @!attribute [rw] application_name
    #   The Kinesis Analytics application name.
    #   @return [String]
    #
    # @!attribute [rw] current_application_version_id
    #   The version ID of the Kinesis Analytics application.
    #   @return [Integer]
    #
    # @!attribute [rw] cloud_watch_logging_option
    #   Provides the CloudWatch log stream Amazon Resource Name (ARN) and
    #   the IAM role ARN. Note: To write application messages to CloudWatch,
    #   the IAM role that is used must have the `PutLogEvents` policy action
    #   enabled.
    #   @return [Types::CloudWatchLoggingOption]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics-2015-08-14/AddApplicationCloudWatchLoggingOptionRequest AWS API Documentation
    #
    class AddApplicationCloudWatchLoggingOptionRequest < Struct.new(
      :application_name,
      :current_application_version_id,
      :cloud_watch_logging_option)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics-2015-08-14/AddApplicationCloudWatchLoggingOptionResponse AWS API Documentation
    #
    class AddApplicationCloudWatchLoggingOptionResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass AddApplicationInputProcessingConfigurationRequest
    #   data as a hash:
    #
    #       {
    #         application_name: "ApplicationName", # required
    #         current_application_version_id: 1, # required
    #         input_id: "Id", # required
    #         input_processing_configuration: { # required
    #           input_lambda_processor: { # required
    #             resource_arn: "ResourceARN", # required
    #             role_arn: "RoleARN", # required
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] application_name
    #   Name of the application to which you want to add the input
    #   processing configuration.
    #   @return [String]
    #
    # @!attribute [rw] current_application_version_id
    #   Version of the application to which you want to add the input
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics-2015-08-14/AddApplicationInputProcessingConfigurationRequest AWS API Documentation
    #
    class AddApplicationInputProcessingConfigurationRequest < Struct.new(
      :application_name,
      :current_application_version_id,
      :input_id,
      :input_processing_configuration)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics-2015-08-14/AddApplicationInputProcessingConfigurationResponse AWS API Documentation
    #
    class AddApplicationInputProcessingConfigurationResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass AddApplicationInputRequest
    #   data as a hash:
    #
    #       {
    #         application_name: "ApplicationName", # required
    #         current_application_version_id: 1, # required
    #         input: { # required
    #           name_prefix: "InAppStreamName", # required
    #           input_processing_configuration: {
    #             input_lambda_processor: { # required
    #               resource_arn: "ResourceARN", # required
    #               role_arn: "RoleARN", # required
    #             },
    #           },
    #           kinesis_streams_input: {
    #             resource_arn: "ResourceARN", # required
    #             role_arn: "RoleARN", # required
    #           },
    #           kinesis_firehose_input: {
    #             resource_arn: "ResourceARN", # required
    #             role_arn: "RoleARN", # required
    #           },
    #           input_parallelism: {
    #             count: 1,
    #           },
    #           input_schema: { # required
    #             record_format: { # required
    #               record_format_type: "JSON", # required, accepts JSON, CSV
    #               mapping_parameters: {
    #                 json_mapping_parameters: {
    #                   record_row_path: "RecordRowPath", # required
    #                 },
    #                 csv_mapping_parameters: {
    #                   record_row_delimiter: "RecordRowDelimiter", # required
    #                   record_column_delimiter: "RecordColumnDelimiter", # required
    #                 },
    #               },
    #             },
    #             record_encoding: "RecordEncoding",
    #             record_columns: [ # required
    #               {
    #                 name: "RecordColumnName", # required
    #                 mapping: "RecordColumnMapping",
    #                 sql_type: "RecordColumnSqlType", # required
    #               },
    #             ],
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] application_name
    #   Name of your existing Amazon Kinesis Analytics application to which
    #   you want to add the streaming source.
    #   @return [String]
    #
    # @!attribute [rw] current_application_version_id
    #   Current version of your Amazon Kinesis Analytics application. You
    #   can use the DescribeApplication operation to find the current
    #   application version.
    #   @return [Integer]
    #
    # @!attribute [rw] input
    #   The Input to add.
    #   @return [Types::Input]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics-2015-08-14/AddApplicationInputRequest AWS API Documentation
    #
    class AddApplicationInputRequest < Struct.new(
      :application_name,
      :current_application_version_id,
      :input)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics-2015-08-14/AddApplicationInputResponse AWS API Documentation
    #
    class AddApplicationInputResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass AddApplicationOutputRequest
    #   data as a hash:
    #
    #       {
    #         application_name: "ApplicationName", # required
    #         current_application_version_id: 1, # required
    #         output: { # required
    #           name: "InAppStreamName", # required
    #           kinesis_streams_output: {
    #             resource_arn: "ResourceARN", # required
    #             role_arn: "RoleARN", # required
    #           },
    #           kinesis_firehose_output: {
    #             resource_arn: "ResourceARN", # required
    #             role_arn: "RoleARN", # required
    #           },
    #           lambda_output: {
    #             resource_arn: "ResourceARN", # required
    #             role_arn: "RoleARN", # required
    #           },
    #           destination_schema: { # required
    #             record_format_type: "JSON", # accepts JSON, CSV
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] application_name
    #   Name of the application to which you want to add the output
    #   configuration.
    #   @return [String]
    #
    # @!attribute [rw] current_application_version_id
    #   Version of the application to which you want to add the output
    #   configuration. You can use the DescribeApplication operation to get
    #   the current application version. If the version specified is not the
    #   current version, the `ConcurrentModificationException` is returned.
    #   @return [Integer]
    #
    # @!attribute [rw] output
    #   An array of objects, each describing one output configuration. In
    #   the output configuration, you specify the name of an in-application
    #   stream, a destination (that is, an Amazon Kinesis stream, an Amazon
    #   Kinesis Firehose delivery stream, or an Amazon Lambda function), and
    #   record the formation to use when writing to the destination.
    #   @return [Types::Output]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics-2015-08-14/AddApplicationOutputRequest AWS API Documentation
    #
    class AddApplicationOutputRequest < Struct.new(
      :application_name,
      :current_application_version_id,
      :output)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics-2015-08-14/AddApplicationOutputResponse AWS API Documentation
    #
    class AddApplicationOutputResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass AddApplicationReferenceDataSourceRequest
    #   data as a hash:
    #
    #       {
    #         application_name: "ApplicationName", # required
    #         current_application_version_id: 1, # required
    #         reference_data_source: { # required
    #           table_name: "InAppTableName", # required
    #           s3_reference_data_source: {
    #             bucket_arn: "BucketARN", # required
    #             file_key: "FileKey", # required
    #             reference_role_arn: "RoleARN", # required
    #           },
    #           reference_schema: { # required
    #             record_format: { # required
    #               record_format_type: "JSON", # required, accepts JSON, CSV
    #               mapping_parameters: {
    #                 json_mapping_parameters: {
    #                   record_row_path: "RecordRowPath", # required
    #                 },
    #                 csv_mapping_parameters: {
    #                   record_row_delimiter: "RecordRowDelimiter", # required
    #                   record_column_delimiter: "RecordColumnDelimiter", # required
    #                 },
    #               },
    #             },
    #             record_encoding: "RecordEncoding",
    #             record_columns: [ # required
    #               {
    #                 name: "RecordColumnName", # required
    #                 mapping: "RecordColumnMapping",
    #                 sql_type: "RecordColumnSqlType", # required
    #               },
    #             ],
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] application_name
    #   Name of an existing application.
    #   @return [String]
    #
    # @!attribute [rw] current_application_version_id
    #   Version of the application for which you are adding the reference
    #   data source. You can use the DescribeApplication operation to get
    #   the current application version. If the version specified is not the
    #   current version, the `ConcurrentModificationException` is returned.
    #   @return [Integer]
    #
    # @!attribute [rw] reference_data_source
    #   The reference data source can be an object in your Amazon S3 bucket.
    #   Amazon Kinesis Analytics reads the object and copies the data into
    #   the in-application table that is created. You provide an S3 bucket,
    #   object key name, and the resulting in-application table that is
    #   created. You must also provide an IAM role with the necessary
    #   permissions that Amazon Kinesis Analytics can assume to read the
    #   object from your S3 bucket on your behalf.
    #   @return [Types::ReferenceDataSource]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics-2015-08-14/AddApplicationReferenceDataSourceRequest AWS API Documentation
    #
    class AddApplicationReferenceDataSourceRequest < Struct.new(
      :application_name,
      :current_application_version_id,
      :reference_data_source)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics-2015-08-14/AddApplicationReferenceDataSourceResponse AWS API Documentation
    #
    class AddApplicationReferenceDataSourceResponse < Aws::EmptyStructure; end

    # Provides a description of the application, including the application
    # Amazon Resource Name (ARN), status, latest version, and input and
    # output configuration.
    #
    # @!attribute [rw] application_name
    #   Name of the application.
    #   @return [String]
    #
    # @!attribute [rw] application_description
    #   Description of the application.
    #   @return [String]
    #
    # @!attribute [rw] application_arn
    #   ARN of the application.
    #   @return [String]
    #
    # @!attribute [rw] application_status
    #   Status of the application.
    #   @return [String]
    #
    # @!attribute [rw] create_timestamp
    #   Time stamp when the application version was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_update_timestamp
    #   Time stamp when the application was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] input_descriptions
    #   Describes the application input configuration. For more information,
    #   see [Configuring Application Input][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-input.html
    #   @return [Array<Types::InputDescription>]
    #
    # @!attribute [rw] output_descriptions
    #   Describes the application output configuration. For more
    #   information, see [Configuring Application Output][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-output.html
    #   @return [Array<Types::OutputDescription>]
    #
    # @!attribute [rw] reference_data_source_descriptions
    #   Describes reference data sources configured for the application. For
    #   more information, see [Configuring Application Input][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-input.html
    #   @return [Array<Types::ReferenceDataSourceDescription>]
    #
    # @!attribute [rw] cloud_watch_logging_option_descriptions
    #   Describes the CloudWatch log streams that are configured to receive
    #   application messages. For more information about using CloudWatch
    #   log streams with Amazon Kinesis Analytics applications, see [Working
    #   with Amazon CloudWatch Logs][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/kinesisanalytics/latest/dev/cloudwatch-logs.html
    #   @return [Array<Types::CloudWatchLoggingOptionDescription>]
    #
    # @!attribute [rw] application_code
    #   Returns the application code that you provided to perform data
    #   analysis on any of the in-application streams in your application.
    #   @return [String]
    #
    # @!attribute [rw] application_version_id
    #   Provides the current application version.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics-2015-08-14/ApplicationDetail AWS API Documentation
    #
    class ApplicationDetail < Struct.new(
      :application_name,
      :application_description,
      :application_arn,
      :application_status,
      :create_timestamp,
      :last_update_timestamp,
      :input_descriptions,
      :output_descriptions,
      :reference_data_source_descriptions,
      :cloud_watch_logging_option_descriptions,
      :application_code,
      :application_version_id)
      include Aws::Structure
    end

    # Provides application summary information, including the application
    # Amazon Resource Name (ARN), name, and status.
    #
    # @!attribute [rw] application_name
    #   Name of the application.
    #   @return [String]
    #
    # @!attribute [rw] application_arn
    #   ARN of the application.
    #   @return [String]
    #
    # @!attribute [rw] application_status
    #   Status of the application.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics-2015-08-14/ApplicationSummary AWS API Documentation
    #
    class ApplicationSummary < Struct.new(
      :application_name,
      :application_arn,
      :application_status)
      include Aws::Structure
    end

    # Describes updates to apply to an existing Amazon Kinesis Analytics
    # application.
    #
    # @note When making an API call, you may pass ApplicationUpdate
    #   data as a hash:
    #
    #       {
    #         input_updates: [
    #           {
    #             input_id: "Id", # required
    #             name_prefix_update: "InAppStreamName",
    #             input_processing_configuration_update: {
    #               input_lambda_processor_update: { # required
    #                 resource_arn_update: "ResourceARN",
    #                 role_arn_update: "RoleARN",
    #               },
    #             },
    #             kinesis_streams_input_update: {
    #               resource_arn_update: "ResourceARN",
    #               role_arn_update: "RoleARN",
    #             },
    #             kinesis_firehose_input_update: {
    #               resource_arn_update: "ResourceARN",
    #               role_arn_update: "RoleARN",
    #             },
    #             input_schema_update: {
    #               record_format_update: {
    #                 record_format_type: "JSON", # required, accepts JSON, CSV
    #                 mapping_parameters: {
    #                   json_mapping_parameters: {
    #                     record_row_path: "RecordRowPath", # required
    #                   },
    #                   csv_mapping_parameters: {
    #                     record_row_delimiter: "RecordRowDelimiter", # required
    #                     record_column_delimiter: "RecordColumnDelimiter", # required
    #                   },
    #                 },
    #               },
    #               record_encoding_update: "RecordEncoding",
    #               record_column_updates: [
    #                 {
    #                   name: "RecordColumnName", # required
    #                   mapping: "RecordColumnMapping",
    #                   sql_type: "RecordColumnSqlType", # required
    #                 },
    #               ],
    #             },
    #             input_parallelism_update: {
    #               count_update: 1,
    #             },
    #           },
    #         ],
    #         application_code_update: "ApplicationCode",
    #         output_updates: [
    #           {
    #             output_id: "Id", # required
    #             name_update: "InAppStreamName",
    #             kinesis_streams_output_update: {
    #               resource_arn_update: "ResourceARN",
    #               role_arn_update: "RoleARN",
    #             },
    #             kinesis_firehose_output_update: {
    #               resource_arn_update: "ResourceARN",
    #               role_arn_update: "RoleARN",
    #             },
    #             lambda_output_update: {
    #               resource_arn_update: "ResourceARN",
    #               role_arn_update: "RoleARN",
    #             },
    #             destination_schema_update: {
    #               record_format_type: "JSON", # accepts JSON, CSV
    #             },
    #           },
    #         ],
    #         reference_data_source_updates: [
    #           {
    #             reference_id: "Id", # required
    #             table_name_update: "InAppTableName",
    #             s3_reference_data_source_update: {
    #               bucket_arn_update: "BucketARN",
    #               file_key_update: "FileKey",
    #               reference_role_arn_update: "RoleARN",
    #             },
    #             reference_schema_update: {
    #               record_format: { # required
    #                 record_format_type: "JSON", # required, accepts JSON, CSV
    #                 mapping_parameters: {
    #                   json_mapping_parameters: {
    #                     record_row_path: "RecordRowPath", # required
    #                   },
    #                   csv_mapping_parameters: {
    #                     record_row_delimiter: "RecordRowDelimiter", # required
    #                     record_column_delimiter: "RecordColumnDelimiter", # required
    #                   },
    #                 },
    #               },
    #               record_encoding: "RecordEncoding",
    #               record_columns: [ # required
    #                 {
    #                   name: "RecordColumnName", # required
    #                   mapping: "RecordColumnMapping",
    #                   sql_type: "RecordColumnSqlType", # required
    #                 },
    #               ],
    #             },
    #           },
    #         ],
    #         cloud_watch_logging_option_updates: [
    #           {
    #             cloud_watch_logging_option_id: "Id", # required
    #             log_stream_arn_update: "LogStreamARN",
    #             role_arn_update: "RoleARN",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] input_updates
    #   Describes application input configuration updates.
    #   @return [Array<Types::InputUpdate>]
    #
    # @!attribute [rw] application_code_update
    #   Describes application code updates.
    #   @return [String]
    #
    # @!attribute [rw] output_updates
    #   Describes application output configuration updates.
    #   @return [Array<Types::OutputUpdate>]
    #
    # @!attribute [rw] reference_data_source_updates
    #   Describes application reference data source updates.
    #   @return [Array<Types::ReferenceDataSourceUpdate>]
    #
    # @!attribute [rw] cloud_watch_logging_option_updates
    #   Describes application CloudWatch logging option updates.
    #   @return [Array<Types::CloudWatchLoggingOptionUpdate>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics-2015-08-14/ApplicationUpdate AWS API Documentation
    #
    class ApplicationUpdate < Struct.new(
      :input_updates,
      :application_code_update,
      :output_updates,
      :reference_data_source_updates,
      :cloud_watch_logging_option_updates)
      include Aws::Structure
    end

    # Provides additional mapping information when the record format uses
    # delimiters, such as CSV. For example, the following sample records use
    # CSV format, where the records use the *'\\n'* as the row delimiter
    # and a comma (",") as the column delimiter:
    #
    # `"name1", "address1" `
    #
    # `"name2, "address2"`
    #
    # @note When making an API call, you may pass CSVMappingParameters
    #   data as a hash:
    #
    #       {
    #         record_row_delimiter: "RecordRowDelimiter", # required
    #         record_column_delimiter: "RecordColumnDelimiter", # required
    #       }
    #
    # @!attribute [rw] record_row_delimiter
    #   Row delimiter. For example, in a CSV format, *'\\n'* is the
    #   typical row delimiter.
    #   @return [String]
    #
    # @!attribute [rw] record_column_delimiter
    #   Column delimiter. For example, in a CSV format, a comma (",") is
    #   the typical column delimiter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics-2015-08-14/CSVMappingParameters AWS API Documentation
    #
    class CSVMappingParameters < Struct.new(
      :record_row_delimiter,
      :record_column_delimiter)
      include Aws::Structure
    end

    # Provides a description of CloudWatch logging options, including the
    # log stream Amazon Resource Name (ARN) and the role ARN.
    #
    # @note When making an API call, you may pass CloudWatchLoggingOption
    #   data as a hash:
    #
    #       {
    #         log_stream_arn: "LogStreamARN", # required
    #         role_arn: "RoleARN", # required
    #       }
    #
    # @!attribute [rw] log_stream_arn
    #   ARN of the CloudWatch log to receive application messages.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   IAM ARN of the role to use to send application messages. Note: To
    #   write application messages to CloudWatch, the IAM role that is used
    #   must have the `PutLogEvents` policy action enabled.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics-2015-08-14/CloudWatchLoggingOption AWS API Documentation
    #
    class CloudWatchLoggingOption < Struct.new(
      :log_stream_arn,
      :role_arn)
      include Aws::Structure
    end

    # Description of the CloudWatch logging option.
    #
    # @!attribute [rw] cloud_watch_logging_option_id
    #   ID of the CloudWatch logging option description.
    #   @return [String]
    #
    # @!attribute [rw] log_stream_arn
    #   ARN of the CloudWatch log to receive application messages.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   IAM ARN of the role to use to send application messages. Note: To
    #   write application messages to CloudWatch, the IAM role used must
    #   have the `PutLogEvents` policy action enabled.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics-2015-08-14/CloudWatchLoggingOptionDescription AWS API Documentation
    #
    class CloudWatchLoggingOptionDescription < Struct.new(
      :cloud_watch_logging_option_id,
      :log_stream_arn,
      :role_arn)
      include Aws::Structure
    end

    # Describes CloudWatch logging option updates.
    #
    # @note When making an API call, you may pass CloudWatchLoggingOptionUpdate
    #   data as a hash:
    #
    #       {
    #         cloud_watch_logging_option_id: "Id", # required
    #         log_stream_arn_update: "LogStreamARN",
    #         role_arn_update: "RoleARN",
    #       }
    #
    # @!attribute [rw] cloud_watch_logging_option_id
    #   ID of the CloudWatch logging option to update
    #   @return [String]
    #
    # @!attribute [rw] log_stream_arn_update
    #   ARN of the CloudWatch log to receive application messages.
    #   @return [String]
    #
    # @!attribute [rw] role_arn_update
    #   IAM ARN of the role to use to send application messages. Note: To
    #   write application messages to CloudWatch, the IAM role used must
    #   have the `PutLogEvents` policy action enabled.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics-2015-08-14/CloudWatchLoggingOptionUpdate AWS API Documentation
    #
    class CloudWatchLoggingOptionUpdate < Struct.new(
      :cloud_watch_logging_option_id,
      :log_stream_arn_update,
      :role_arn_update)
      include Aws::Structure
    end

    # TBD
    #
    # @note When making an API call, you may pass CreateApplicationRequest
    #   data as a hash:
    #
    #       {
    #         application_name: "ApplicationName", # required
    #         application_description: "ApplicationDescription",
    #         inputs: [
    #           {
    #             name_prefix: "InAppStreamName", # required
    #             input_processing_configuration: {
    #               input_lambda_processor: { # required
    #                 resource_arn: "ResourceARN", # required
    #                 role_arn: "RoleARN", # required
    #               },
    #             },
    #             kinesis_streams_input: {
    #               resource_arn: "ResourceARN", # required
    #               role_arn: "RoleARN", # required
    #             },
    #             kinesis_firehose_input: {
    #               resource_arn: "ResourceARN", # required
    #               role_arn: "RoleARN", # required
    #             },
    #             input_parallelism: {
    #               count: 1,
    #             },
    #             input_schema: { # required
    #               record_format: { # required
    #                 record_format_type: "JSON", # required, accepts JSON, CSV
    #                 mapping_parameters: {
    #                   json_mapping_parameters: {
    #                     record_row_path: "RecordRowPath", # required
    #                   },
    #                   csv_mapping_parameters: {
    #                     record_row_delimiter: "RecordRowDelimiter", # required
    #                     record_column_delimiter: "RecordColumnDelimiter", # required
    #                   },
    #                 },
    #               },
    #               record_encoding: "RecordEncoding",
    #               record_columns: [ # required
    #                 {
    #                   name: "RecordColumnName", # required
    #                   mapping: "RecordColumnMapping",
    #                   sql_type: "RecordColumnSqlType", # required
    #                 },
    #               ],
    #             },
    #           },
    #         ],
    #         outputs: [
    #           {
    #             name: "InAppStreamName", # required
    #             kinesis_streams_output: {
    #               resource_arn: "ResourceARN", # required
    #               role_arn: "RoleARN", # required
    #             },
    #             kinesis_firehose_output: {
    #               resource_arn: "ResourceARN", # required
    #               role_arn: "RoleARN", # required
    #             },
    #             lambda_output: {
    #               resource_arn: "ResourceARN", # required
    #               role_arn: "RoleARN", # required
    #             },
    #             destination_schema: { # required
    #               record_format_type: "JSON", # accepts JSON, CSV
    #             },
    #           },
    #         ],
    #         cloud_watch_logging_options: [
    #           {
    #             log_stream_arn: "LogStreamARN", # required
    #             role_arn: "RoleARN", # required
    #           },
    #         ],
    #         application_code: "ApplicationCode",
    #       }
    #
    # @!attribute [rw] application_name
    #   Name of your Amazon Kinesis Analytics application (for example,
    #   `sample-app`).
    #   @return [String]
    #
    # @!attribute [rw] application_description
    #   Summary description of the application.
    #   @return [String]
    #
    # @!attribute [rw] inputs
    #   Use this parameter to configure the application input.
    #
    #   You can configure your application to receive input from a single
    #   streaming source. In this configuration, you map this streaming
    #   source to an in-application stream that is created. Your application
    #   code can then query the in-application stream like a table (you can
    #   think of it as a constantly updating table).
    #
    #   For the streaming source, you provide its Amazon Resource Name (ARN)
    #   and format of data on the stream (for example, JSON, CSV, etc.). You
    #   also must provide an IAM role that Amazon Kinesis Analytics can
    #   assume to read this stream on your behalf.
    #
    #   To create the in-application stream, you need to specify a schema to
    #   transform your data into a schematized version used in SQL. In the
    #   schema, you provide the necessary mapping of the data elements in
    #   the streaming source to record columns in the in-app stream.
    #   @return [Array<Types::Input>]
    #
    # @!attribute [rw] outputs
    #   You can configure application output to write data from any of the
    #   in-application streams to up to three destinations.
    #
    #   These destinations can be Amazon Kinesis streams, Amazon Kinesis
    #   Firehose delivery streams, Amazon Lambda destinations, or any
    #   combination of the three.
    #
    #   In the configuration, you specify the in-application stream name,
    #   the destination stream or Lambda function Amazon Resource Name
    #   (ARN), and the format to use when writing data. You must also
    #   provide an IAM role that Amazon Kinesis Analytics can assume to
    #   write to the destination stream or Lambda function on your behalf.
    #
    #   In the output configuration, you also provide the output stream or
    #   Lambda function ARN. For stream destinations, you provide the format
    #   of data in the stream (for example, JSON, CSV). You also must
    #   provide an IAM role that Amazon Kinesis Analytics can assume to
    #   write to the stream or Lambda function on your behalf.
    #   @return [Array<Types::Output>]
    #
    # @!attribute [rw] cloud_watch_logging_options
    #   Use this parameter to configure a CloudWatch log stream to monitor
    #   application configuration errors. For more information, see [Working
    #   with Amazon CloudWatch Logs][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/kinesisanalytics/latest/dev/cloudwatch-logs.html
    #   @return [Array<Types::CloudWatchLoggingOption>]
    #
    # @!attribute [rw] application_code
    #   One or more SQL statements that read input data, transform it, and
    #   generate output. For example, you can write a SQL statement that
    #   reads data from one in-application stream, generates a running
    #   average of the number of advertisement clicks by vendor, and insert
    #   resulting rows in another in-application stream using pumps. For
    #   more information about the typical pattern, see [Application
    #   Code][1].
    #
    #   You can provide such series of SQL statements, where output of one
    #   statement can be used as the input for the next statement. You store
    #   intermediate results by creating in-application streams and pumps.
    #
    #   Note that the application code must create the streams with names
    #   specified in the `Outputs`. For example, if your `Outputs` defines
    #   output streams named `ExampleOutputStream1` and
    #   `ExampleOutputStream2`, then your application code must create these
    #   streams.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-app-code.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics-2015-08-14/CreateApplicationRequest AWS API Documentation
    #
    class CreateApplicationRequest < Struct.new(
      :application_name,
      :application_description,
      :inputs,
      :outputs,
      :cloud_watch_logging_options,
      :application_code)
      include Aws::Structure
    end

    # TBD
    #
    # @!attribute [rw] application_summary
    #   In response to your `CreateApplication` request, Amazon Kinesis
    #   Analytics returns a response with a summary of the application it
    #   created, including the application Amazon Resource Name (ARN), name,
    #   and status.
    #   @return [Types::ApplicationSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics-2015-08-14/CreateApplicationResponse AWS API Documentation
    #
    class CreateApplicationResponse < Struct.new(
      :application_summary)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteApplicationCloudWatchLoggingOptionRequest
    #   data as a hash:
    #
    #       {
    #         application_name: "ApplicationName", # required
    #         current_application_version_id: 1, # required
    #         cloud_watch_logging_option_id: "Id", # required
    #       }
    #
    # @!attribute [rw] application_name
    #   The Kinesis Analytics application name.
    #   @return [String]
    #
    # @!attribute [rw] current_application_version_id
    #   The version ID of the Kinesis Analytics application.
    #   @return [Integer]
    #
    # @!attribute [rw] cloud_watch_logging_option_id
    #   The `CloudWatchLoggingOptionId` of the CloudWatch logging option to
    #   delete. You can get the `CloudWatchLoggingOptionId` by using the
    #   DescribeApplication operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics-2015-08-14/DeleteApplicationCloudWatchLoggingOptionRequest AWS API Documentation
    #
    class DeleteApplicationCloudWatchLoggingOptionRequest < Struct.new(
      :application_name,
      :current_application_version_id,
      :cloud_watch_logging_option_id)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics-2015-08-14/DeleteApplicationCloudWatchLoggingOptionResponse AWS API Documentation
    #
    class DeleteApplicationCloudWatchLoggingOptionResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteApplicationInputProcessingConfigurationRequest
    #   data as a hash:
    #
    #       {
    #         application_name: "ApplicationName", # required
    #         current_application_version_id: 1, # required
    #         input_id: "Id", # required
    #       }
    #
    # @!attribute [rw] application_name
    #   The Kinesis Analytics application name.
    #   @return [String]
    #
    # @!attribute [rw] current_application_version_id
    #   The version ID of the Kinesis Analytics application.
    #   @return [Integer]
    #
    # @!attribute [rw] input_id
    #   The ID of the input configuration from which to delete the input
    #   processing configuration. You can get a list of the input IDs for an
    #   application by using the DescribeApplication operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics-2015-08-14/DeleteApplicationInputProcessingConfigurationRequest AWS API Documentation
    #
    class DeleteApplicationInputProcessingConfigurationRequest < Struct.new(
      :application_name,
      :current_application_version_id,
      :input_id)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics-2015-08-14/DeleteApplicationInputProcessingConfigurationResponse AWS API Documentation
    #
    class DeleteApplicationInputProcessingConfigurationResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteApplicationOutputRequest
    #   data as a hash:
    #
    #       {
    #         application_name: "ApplicationName", # required
    #         current_application_version_id: 1, # required
    #         output_id: "Id", # required
    #       }
    #
    # @!attribute [rw] application_name
    #   Amazon Kinesis Analytics application name.
    #   @return [String]
    #
    # @!attribute [rw] current_application_version_id
    #   Amazon Kinesis Analytics application version. You can use the
    #   DescribeApplication operation to get the current application
    #   version. If the version specified is not the current version, the
    #   `ConcurrentModificationException` is returned.
    #   @return [Integer]
    #
    # @!attribute [rw] output_id
    #   The ID of the configuration to delete. Each output configuration
    #   that is added to the application, either when the application is
    #   created or later using the AddApplicationOutput operation, has a
    #   unique ID. You need to provide the ID to uniquely identify the
    #   output configuration that you want to delete from the application
    #   configuration. You can use the DescribeApplication operation to get
    #   the specific `OutputId`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics-2015-08-14/DeleteApplicationOutputRequest AWS API Documentation
    #
    class DeleteApplicationOutputRequest < Struct.new(
      :application_name,
      :current_application_version_id,
      :output_id)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics-2015-08-14/DeleteApplicationOutputResponse AWS API Documentation
    #
    class DeleteApplicationOutputResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteApplicationReferenceDataSourceRequest
    #   data as a hash:
    #
    #       {
    #         application_name: "ApplicationName", # required
    #         current_application_version_id: 1, # required
    #         reference_id: "Id", # required
    #       }
    #
    # @!attribute [rw] application_name
    #   Name of an existing application.
    #   @return [String]
    #
    # @!attribute [rw] current_application_version_id
    #   Version of the application. You can use the DescribeApplication
    #   operation to get the current application version. If the version
    #   specified is not the current version, the
    #   `ConcurrentModificationException` is returned.
    #   @return [Integer]
    #
    # @!attribute [rw] reference_id
    #   ID of the reference data source. When you add a reference data
    #   source to your application using the
    #   AddApplicationReferenceDataSource, Amazon Kinesis Analytics assigns
    #   an ID. You can use the DescribeApplication operation to get the
    #   reference ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics-2015-08-14/DeleteApplicationReferenceDataSourceRequest AWS API Documentation
    #
    class DeleteApplicationReferenceDataSourceRequest < Struct.new(
      :application_name,
      :current_application_version_id,
      :reference_id)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics-2015-08-14/DeleteApplicationReferenceDataSourceResponse AWS API Documentation
    #
    class DeleteApplicationReferenceDataSourceResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteApplicationRequest
    #   data as a hash:
    #
    #       {
    #         application_name: "ApplicationName", # required
    #         create_timestamp: Time.now, # required
    #       }
    #
    # @!attribute [rw] application_name
    #   Name of the Amazon Kinesis Analytics application to delete.
    #   @return [String]
    #
    # @!attribute [rw] create_timestamp
    #   You can use the `DescribeApplication` operation to get this value.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics-2015-08-14/DeleteApplicationRequest AWS API Documentation
    #
    class DeleteApplicationRequest < Struct.new(
      :application_name,
      :create_timestamp)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics-2015-08-14/DeleteApplicationResponse AWS API Documentation
    #
    class DeleteApplicationResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DescribeApplicationRequest
    #   data as a hash:
    #
    #       {
    #         application_name: "ApplicationName", # required
    #       }
    #
    # @!attribute [rw] application_name
    #   Name of the application.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics-2015-08-14/DescribeApplicationRequest AWS API Documentation
    #
    class DescribeApplicationRequest < Struct.new(
      :application_name)
      include Aws::Structure
    end

    # @!attribute [rw] application_detail
    #   Provides a description of the application, such as the application
    #   Amazon Resource Name (ARN), status, latest version, and input and
    #   output configuration details.
    #   @return [Types::ApplicationDetail]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics-2015-08-14/DescribeApplicationResponse AWS API Documentation
    #
    class DescribeApplicationResponse < Struct.new(
      :application_detail)
      include Aws::Structure
    end

    # Describes the data format when records are written to the destination.
    # For more information, see [Configuring Application Output][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-output.html
    #
    # @note When making an API call, you may pass DestinationSchema
    #   data as a hash:
    #
    #       {
    #         record_format_type: "JSON", # accepts JSON, CSV
    #       }
    #
    # @!attribute [rw] record_format_type
    #   Specifies the format of the records on the output stream.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics-2015-08-14/DestinationSchema AWS API Documentation
    #
    class DestinationSchema < Struct.new(
      :record_format_type)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DiscoverInputSchemaRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "ResourceARN",
    #         role_arn: "RoleARN",
    #         input_starting_position_configuration: {
    #           input_starting_position: "NOW", # accepts NOW, TRIM_HORIZON, LAST_STOPPED_POINT
    #         },
    #         s3_configuration: {
    #           role_arn: "RoleARN", # required
    #           bucket_arn: "BucketARN", # required
    #           file_key: "FileKey", # required
    #         },
    #         input_processing_configuration: {
    #           input_lambda_processor: { # required
    #             resource_arn: "ResourceARN", # required
    #             role_arn: "RoleARN", # required
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] resource_arn
    #   Amazon Resource Name (ARN) of the streaming source.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   ARN of the IAM role that Amazon Kinesis Analytics can assume to
    #   access the stream on your behalf.
    #   @return [String]
    #
    # @!attribute [rw] input_starting_position_configuration
    #   Point at which you want Amazon Kinesis Analytics to start reading
    #   records from the specified streaming source discovery purposes.
    #   @return [Types::InputStartingPositionConfiguration]
    #
    # @!attribute [rw] s3_configuration
    #   Specify this parameter to discover a schema from data in an S3
    #   object.
    #   @return [Types::S3Configuration]
    #
    # @!attribute [rw] input_processing_configuration
    #   The InputProcessingConfiguration to use to preprocess the records
    #   before discovering the schema of the records.
    #   @return [Types::InputProcessingConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics-2015-08-14/DiscoverInputSchemaRequest AWS API Documentation
    #
    class DiscoverInputSchemaRequest < Struct.new(
      :resource_arn,
      :role_arn,
      :input_starting_position_configuration,
      :s3_configuration,
      :input_processing_configuration)
      include Aws::Structure
    end

    # @!attribute [rw] input_schema
    #   Schema inferred from the streaming source. It identifies the format
    #   of the data in the streaming source and how each data element maps
    #   to corresponding columns in the in-application stream that you can
    #   create.
    #   @return [Types::SourceSchema]
    #
    # @!attribute [rw] parsed_input_records
    #   An array of elements, where each element corresponds to a row in a
    #   stream record (a stream record can have more than one row).
    #   @return [Array<Array<String>>]
    #
    # @!attribute [rw] processed_input_records
    #   Stream data that was modified by the processor specified in the
    #   `InputProcessingConfiguration` parameter.
    #   @return [Array<String>]
    #
    # @!attribute [rw] raw_input_records
    #   Raw stream data that was sampled to infer the schema.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics-2015-08-14/DiscoverInputSchemaResponse AWS API Documentation
    #
    class DiscoverInputSchemaResponse < Struct.new(
      :input_schema,
      :parsed_input_records,
      :processed_input_records,
      :raw_input_records)
      include Aws::Structure
    end

    # When you configure the application input, you specify the streaming
    # source, the in-application stream name that is created, and the
    # mapping between the two. For more information, see [Configuring
    # Application Input][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-input.html
    #
    # @note When making an API call, you may pass Input
    #   data as a hash:
    #
    #       {
    #         name_prefix: "InAppStreamName", # required
    #         input_processing_configuration: {
    #           input_lambda_processor: { # required
    #             resource_arn: "ResourceARN", # required
    #             role_arn: "RoleARN", # required
    #           },
    #         },
    #         kinesis_streams_input: {
    #           resource_arn: "ResourceARN", # required
    #           role_arn: "RoleARN", # required
    #         },
    #         kinesis_firehose_input: {
    #           resource_arn: "ResourceARN", # required
    #           role_arn: "RoleARN", # required
    #         },
    #         input_parallelism: {
    #           count: 1,
    #         },
    #         input_schema: { # required
    #           record_format: { # required
    #             record_format_type: "JSON", # required, accepts JSON, CSV
    #             mapping_parameters: {
    #               json_mapping_parameters: {
    #                 record_row_path: "RecordRowPath", # required
    #               },
    #               csv_mapping_parameters: {
    #                 record_row_delimiter: "RecordRowDelimiter", # required
    #                 record_column_delimiter: "RecordColumnDelimiter", # required
    #               },
    #             },
    #           },
    #           record_encoding: "RecordEncoding",
    #           record_columns: [ # required
    #             {
    #               name: "RecordColumnName", # required
    #               mapping: "RecordColumnMapping",
    #               sql_type: "RecordColumnSqlType", # required
    #             },
    #           ],
    #         },
    #       }
    #
    # @!attribute [rw] name_prefix
    #   Name prefix to use when creating an in-application stream. Suppose
    #   that you specify a prefix "MyInApplicationStream." Amazon Kinesis
    #   Analytics then creates one or more (as per the `InputParallelism`
    #   count you specified) in-application streams with names
    #   "MyInApplicationStream\_001," "MyInApplicationStream\_002," and
    #   so on.
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
    #   If the streaming source is an Amazon Kinesis stream, identifies the
    #   stream's Amazon Resource Name (ARN) and an IAM role that enables
    #   Amazon Kinesis Analytics to access the stream on your behalf.
    #
    #   Note: Either `KinesisStreamsInput` or `KinesisFirehoseInput` is
    #   required.
    #   @return [Types::KinesisStreamsInput]
    #
    # @!attribute [rw] kinesis_firehose_input
    #   If the streaming source is an Amazon Kinesis Firehose delivery
    #   stream, identifies the delivery stream's ARN and an IAM role that
    #   enables Amazon Kinesis Analytics to access the stream on your
    #   behalf.
    #
    #   Note: Either `KinesisStreamsInput` or `KinesisFirehoseInput` is
    #   required.
    #   @return [Types::KinesisFirehoseInput]
    #
    # @!attribute [rw] input_parallelism
    #   Describes the number of in-application streams to create.
    #
    #   Data from your source is routed to these in-application input
    #   streams.
    #
    #   (see [Configuring Application Input][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-input.html
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics-2015-08-14/Input AWS API Documentation
    #
    class Input < Struct.new(
      :name_prefix,
      :input_processing_configuration,
      :kinesis_streams_input,
      :kinesis_firehose_input,
      :input_parallelism,
      :input_schema)
      include Aws::Structure
    end

    # When you start your application, you provide this configuration, which
    # identifies the input source and the point in the input source at which
    # you want the application to start processing records.
    #
    # @note When making an API call, you may pass InputConfiguration
    #   data as a hash:
    #
    #       {
    #         id: "Id", # required
    #         input_starting_position_configuration: { # required
    #           input_starting_position: "NOW", # accepts NOW, TRIM_HORIZON, LAST_STOPPED_POINT
    #         },
    #       }
    #
    # @!attribute [rw] id
    #   Input source ID. You can get this ID by calling the
    #   DescribeApplication operation.
    #   @return [String]
    #
    # @!attribute [rw] input_starting_position_configuration
    #   Point at which you want the application to start processing records
    #   from the streaming source.
    #   @return [Types::InputStartingPositionConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics-2015-08-14/InputConfiguration AWS API Documentation
    #
    class InputConfiguration < Struct.new(
      :id,
      :input_starting_position_configuration)
      include Aws::Structure
    end

    # Describes the application input configuration. For more information,
    # see [Configuring Application Input][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-input.html
    #
    # @!attribute [rw] input_id
    #   Input ID associated with the application input. This is the ID that
    #   Amazon Kinesis Analytics assigns to each input configuration you add
    #   to your application.
    #   @return [String]
    #
    # @!attribute [rw] name_prefix
    #   In-application name prefix.
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
    #   If an Amazon Kinesis stream is configured as streaming source,
    #   provides Amazon Kinesis stream's Amazon Resource Name (ARN) and an
    #   IAM role that enables Amazon Kinesis Analytics to access the stream
    #   on your behalf.
    #   @return [Types::KinesisStreamsInputDescription]
    #
    # @!attribute [rw] kinesis_firehose_input_description
    #   If an Amazon Kinesis Firehose delivery stream is configured as a
    #   streaming source, provides the delivery stream's ARN and an IAM
    #   role that enables Amazon Kinesis Analytics to access the stream on
    #   your behalf.
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
    #   Point at which the application is configured to read from the input
    #   stream.
    #   @return [Types::InputStartingPositionConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics-2015-08-14/InputDescription AWS API Documentation
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
      include Aws::Structure
    end

    # An object that contains the Amazon Resource Name (ARN) of the [AWS
    # Lambda][1] function that is used to preprocess records in the stream,
    # and the ARN of the IAM role that is used to access the AWS Lambda
    # function.
    #
    #
    #
    # [1]: https://aws.amazon.com/documentation/lambda/
    #
    # @note When making an API call, you may pass InputLambdaProcessor
    #   data as a hash:
    #
    #       {
    #         resource_arn: "ResourceARN", # required
    #         role_arn: "RoleARN", # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The ARN of the [AWS Lambda][1] function that operates on records in
    #   the stream.
    #
    #
    #
    #   [1]: https://aws.amazon.com/documentation/lambda/
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The ARN of the IAM role that is used to access the AWS Lambda
    #   function.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics-2015-08-14/InputLambdaProcessor AWS API Documentation
    #
    class InputLambdaProcessor < Struct.new(
      :resource_arn,
      :role_arn)
      include Aws::Structure
    end

    # An object that contains the Amazon Resource Name (ARN) of the [AWS
    # Lambda][1] function that is used to preprocess records in the stream,
    # and the ARN of the IAM role that is used to access the AWS Lambda
    # expression.
    #
    #
    #
    # [1]: https://aws.amazon.com/documentation/lambda/
    #
    # @!attribute [rw] resource_arn
    #   The ARN of the [AWS Lambda][1] function that is used to preprocess
    #   the records in the stream.
    #
    #
    #
    #   [1]: https://aws.amazon.com/documentation/lambda/
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The ARN of the IAM role that is used to access the AWS Lambda
    #   function.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics-2015-08-14/InputLambdaProcessorDescription AWS API Documentation
    #
    class InputLambdaProcessorDescription < Struct.new(
      :resource_arn,
      :role_arn)
      include Aws::Structure
    end

    # Represents an update to the InputLambdaProcessor that is used to
    # preprocess the records in the stream.
    #
    # @note When making an API call, you may pass InputLambdaProcessorUpdate
    #   data as a hash:
    #
    #       {
    #         resource_arn_update: "ResourceARN",
    #         role_arn_update: "RoleARN",
    #       }
    #
    # @!attribute [rw] resource_arn_update
    #   The Amazon Resource Name (ARN) of the new [AWS Lambda][1] function
    #   that is used to preprocess the records in the stream.
    #
    #
    #
    #   [1]: https://aws.amazon.com/documentation/lambda/
    #   @return [String]
    #
    # @!attribute [rw] role_arn_update
    #   The ARN of the new IAM role that is used to access the AWS Lambda
    #   function.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics-2015-08-14/InputLambdaProcessorUpdate AWS API Documentation
    #
    class InputLambdaProcessorUpdate < Struct.new(
      :resource_arn_update,
      :role_arn_update)
      include Aws::Structure
    end

    # Describes the number of in-application streams to create for a given
    # streaming source. For information about parallelism, see [Configuring
    # Application Input][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-input.html
    #
    # @note When making an API call, you may pass InputParallelism
    #   data as a hash:
    #
    #       {
    #         count: 1,
    #       }
    #
    # @!attribute [rw] count
    #   Number of in-application streams to create. For more information,
    #   see [Limits][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/kinesisanalytics/latest/dev/limits.html
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics-2015-08-14/InputParallelism AWS API Documentation
    #
    class InputParallelism < Struct.new(
      :count)
      include Aws::Structure
    end

    # Provides updates to the parallelism count.
    #
    # @note When making an API call, you may pass InputParallelismUpdate
    #   data as a hash:
    #
    #       {
    #         count_update: 1,
    #       }
    #
    # @!attribute [rw] count_update
    #   Number of in-application streams to create for the specified
    #   streaming source.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics-2015-08-14/InputParallelismUpdate AWS API Documentation
    #
    class InputParallelismUpdate < Struct.new(
      :count_update)
      include Aws::Structure
    end

    # Provides a description of a processor that is used to preprocess the
    # records in the stream before being processed by your application code.
    # Currently, the only input processor available is [AWS Lambda][1].
    #
    #
    #
    # [1]: https://aws.amazon.com/documentation/lambda/
    #
    # @note When making an API call, you may pass InputProcessingConfiguration
    #   data as a hash:
    #
    #       {
    #         input_lambda_processor: { # required
    #           resource_arn: "ResourceARN", # required
    #           role_arn: "RoleARN", # required
    #         },
    #       }
    #
    # @!attribute [rw] input_lambda_processor
    #   The InputLambdaProcessor that is used to preprocess the records in
    #   the stream before being processed by your application code.
    #   @return [Types::InputLambdaProcessor]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics-2015-08-14/InputProcessingConfiguration AWS API Documentation
    #
    class InputProcessingConfiguration < Struct.new(
      :input_lambda_processor)
      include Aws::Structure
    end

    # Provides configuration information about an input processor.
    # Currently, the only input processor available is [AWS Lambda][1].
    #
    #
    #
    # [1]: https://aws.amazon.com/documentation/lambda/
    #
    # @!attribute [rw] input_lambda_processor_description
    #   Provides configuration information about the associated
    #   InputLambdaProcessorDescription.
    #   @return [Types::InputLambdaProcessorDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics-2015-08-14/InputProcessingConfigurationDescription AWS API Documentation
    #
    class InputProcessingConfigurationDescription < Struct.new(
      :input_lambda_processor_description)
      include Aws::Structure
    end

    # Describes updates to an InputProcessingConfiguration.
    #
    # @note When making an API call, you may pass InputProcessingConfigurationUpdate
    #   data as a hash:
    #
    #       {
    #         input_lambda_processor_update: { # required
    #           resource_arn_update: "ResourceARN",
    #           role_arn_update: "RoleARN",
    #         },
    #       }
    #
    # @!attribute [rw] input_lambda_processor_update
    #   Provides update information for an InputLambdaProcessor.
    #   @return [Types::InputLambdaProcessorUpdate]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics-2015-08-14/InputProcessingConfigurationUpdate AWS API Documentation
    #
    class InputProcessingConfigurationUpdate < Struct.new(
      :input_lambda_processor_update)
      include Aws::Structure
    end

    # Describes updates for the application's input schema.
    #
    # @note When making an API call, you may pass InputSchemaUpdate
    #   data as a hash:
    #
    #       {
    #         record_format_update: {
    #           record_format_type: "JSON", # required, accepts JSON, CSV
    #           mapping_parameters: {
    #             json_mapping_parameters: {
    #               record_row_path: "RecordRowPath", # required
    #             },
    #             csv_mapping_parameters: {
    #               record_row_delimiter: "RecordRowDelimiter", # required
    #               record_column_delimiter: "RecordColumnDelimiter", # required
    #             },
    #           },
    #         },
    #         record_encoding_update: "RecordEncoding",
    #         record_column_updates: [
    #           {
    #             name: "RecordColumnName", # required
    #             mapping: "RecordColumnMapping",
    #             sql_type: "RecordColumnSqlType", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] record_format_update
    #   Specifies the format of the records on the streaming source.
    #   @return [Types::RecordFormat]
    #
    # @!attribute [rw] record_encoding_update
    #   Specifies the encoding of the records in the streaming source. For
    #   example, UTF-8.
    #   @return [String]
    #
    # @!attribute [rw] record_column_updates
    #   A list of `RecordColumn` objects. Each object describes the mapping
    #   of the streaming source element to the corresponding column in the
    #   in-application stream.
    #   @return [Array<Types::RecordColumn>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics-2015-08-14/InputSchemaUpdate AWS API Documentation
    #
    class InputSchemaUpdate < Struct.new(
      :record_format_update,
      :record_encoding_update,
      :record_column_updates)
      include Aws::Structure
    end

    # Describes the point at which the application reads from the streaming
    # source.
    #
    # @note When making an API call, you may pass InputStartingPositionConfiguration
    #   data as a hash:
    #
    #       {
    #         input_starting_position: "NOW", # accepts NOW, TRIM_HORIZON, LAST_STOPPED_POINT
    #       }
    #
    # @!attribute [rw] input_starting_position
    #   The starting position on the stream.
    #
    #   * `NOW` - Start reading just after the most recent record in the
    #     stream, start at the request time stamp that the customer issued.
    #
    #   * `TRIM_HORIZON` - Start reading at the last untrimmed record in the
    #     stream, which is the oldest record available in the stream. This
    #     option is not available for an Amazon Kinesis Firehose delivery
    #     stream.
    #
    #   * `LAST_STOPPED_POINT` - Resume reading from where the application
    #     last stopped reading.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics-2015-08-14/InputStartingPositionConfiguration AWS API Documentation
    #
    class InputStartingPositionConfiguration < Struct.new(
      :input_starting_position)
      include Aws::Structure
    end

    # Describes updates to a specific input configuration (identified by the
    # `InputId` of an application).
    #
    # @note When making an API call, you may pass InputUpdate
    #   data as a hash:
    #
    #       {
    #         input_id: "Id", # required
    #         name_prefix_update: "InAppStreamName",
    #         input_processing_configuration_update: {
    #           input_lambda_processor_update: { # required
    #             resource_arn_update: "ResourceARN",
    #             role_arn_update: "RoleARN",
    #           },
    #         },
    #         kinesis_streams_input_update: {
    #           resource_arn_update: "ResourceARN",
    #           role_arn_update: "RoleARN",
    #         },
    #         kinesis_firehose_input_update: {
    #           resource_arn_update: "ResourceARN",
    #           role_arn_update: "RoleARN",
    #         },
    #         input_schema_update: {
    #           record_format_update: {
    #             record_format_type: "JSON", # required, accepts JSON, CSV
    #             mapping_parameters: {
    #               json_mapping_parameters: {
    #                 record_row_path: "RecordRowPath", # required
    #               },
    #               csv_mapping_parameters: {
    #                 record_row_delimiter: "RecordRowDelimiter", # required
    #                 record_column_delimiter: "RecordColumnDelimiter", # required
    #               },
    #             },
    #           },
    #           record_encoding_update: "RecordEncoding",
    #           record_column_updates: [
    #             {
    #               name: "RecordColumnName", # required
    #               mapping: "RecordColumnMapping",
    #               sql_type: "RecordColumnSqlType", # required
    #             },
    #           ],
    #         },
    #         input_parallelism_update: {
    #           count_update: 1,
    #         },
    #       }
    #
    # @!attribute [rw] input_id
    #   Input ID of the application input to be updated.
    #   @return [String]
    #
    # @!attribute [rw] name_prefix_update
    #   Name prefix for in-application streams that Amazon Kinesis Analytics
    #   creates for the specific streaming source.
    #   @return [String]
    #
    # @!attribute [rw] input_processing_configuration_update
    #   Describes updates for an input processing configuration.
    #   @return [Types::InputProcessingConfigurationUpdate]
    #
    # @!attribute [rw] kinesis_streams_input_update
    #   If an Amazon Kinesis stream is the streaming source to be updated,
    #   provides an updated stream Amazon Resource Name (ARN) and IAM role
    #   ARN.
    #   @return [Types::KinesisStreamsInputUpdate]
    #
    # @!attribute [rw] kinesis_firehose_input_update
    #   If an Amazon Kinesis Firehose delivery stream is the streaming
    #   source to be updated, provides an updated stream ARN and IAM role
    #   ARN.
    #   @return [Types::KinesisFirehoseInputUpdate]
    #
    # @!attribute [rw] input_schema_update
    #   Describes the data format on the streaming source, and how record
    #   elements on the streaming source map to columns of the
    #   in-application stream that is created.
    #   @return [Types::InputSchemaUpdate]
    #
    # @!attribute [rw] input_parallelism_update
    #   Describes the parallelism updates (the number in-application streams
    #   Amazon Kinesis Analytics creates for the specific streaming source).
    #   @return [Types::InputParallelismUpdate]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics-2015-08-14/InputUpdate AWS API Documentation
    #
    class InputUpdate < Struct.new(
      :input_id,
      :name_prefix_update,
      :input_processing_configuration_update,
      :kinesis_streams_input_update,
      :kinesis_firehose_input_update,
      :input_schema_update,
      :input_parallelism_update)
      include Aws::Structure
    end

    # Provides additional mapping information when JSON is the record format
    # on the streaming source.
    #
    # @note When making an API call, you may pass JSONMappingParameters
    #   data as a hash:
    #
    #       {
    #         record_row_path: "RecordRowPath", # required
    #       }
    #
    # @!attribute [rw] record_row_path
    #   Path to the top-level parent that contains the records.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics-2015-08-14/JSONMappingParameters AWS API Documentation
    #
    class JSONMappingParameters < Struct.new(
      :record_row_path)
      include Aws::Structure
    end

    # Identifies an Amazon Kinesis Firehose delivery stream as the streaming
    # source. You provide the delivery stream's Amazon Resource Name (ARN)
    # and an IAM role ARN that enables Amazon Kinesis Analytics to access
    # the stream on your behalf.
    #
    # @note When making an API call, you may pass KinesisFirehoseInput
    #   data as a hash:
    #
    #       {
    #         resource_arn: "ResourceARN", # required
    #         role_arn: "RoleARN", # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   ARN of the input delivery stream.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   ARN of the IAM role that Amazon Kinesis Analytics can assume to
    #   access the stream on your behalf. You need to make sure the role has
    #   necessary permissions to access the stream.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics-2015-08-14/KinesisFirehoseInput AWS API Documentation
    #
    class KinesisFirehoseInput < Struct.new(
      :resource_arn,
      :role_arn)
      include Aws::Structure
    end

    # Describes the Amazon Kinesis Firehose delivery stream that is
    # configured as the streaming source in the application input
    # configuration.
    #
    # @!attribute [rw] resource_arn
    #   Amazon Resource Name (ARN) of the Amazon Kinesis Firehose delivery
    #   stream.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   ARN of the IAM role that Amazon Kinesis Analytics assumes to access
    #   the stream.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics-2015-08-14/KinesisFirehoseInputDescription AWS API Documentation
    #
    class KinesisFirehoseInputDescription < Struct.new(
      :resource_arn,
      :role_arn)
      include Aws::Structure
    end

    # When updating application input configuration, provides information
    # about an Amazon Kinesis Firehose delivery stream as the streaming
    # source.
    #
    # @note When making an API call, you may pass KinesisFirehoseInputUpdate
    #   data as a hash:
    #
    #       {
    #         resource_arn_update: "ResourceARN",
    #         role_arn_update: "RoleARN",
    #       }
    #
    # @!attribute [rw] resource_arn_update
    #   Amazon Resource Name (ARN) of the input Amazon Kinesis Firehose
    #   delivery stream to read.
    #   @return [String]
    #
    # @!attribute [rw] role_arn_update
    #   ARN of the IAM role that Amazon Kinesis Analytics can assume to
    #   access the stream on your behalf. You need to grant necessary
    #   permissions to this role.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics-2015-08-14/KinesisFirehoseInputUpdate AWS API Documentation
    #
    class KinesisFirehoseInputUpdate < Struct.new(
      :resource_arn_update,
      :role_arn_update)
      include Aws::Structure
    end

    # When configuring application output, identifies an Amazon Kinesis
    # Firehose delivery stream as the destination. You provide the stream
    # Amazon Resource Name (ARN) and an IAM role that enables Amazon Kinesis
    # Analytics to write to the stream on your behalf.
    #
    # @note When making an API call, you may pass KinesisFirehoseOutput
    #   data as a hash:
    #
    #       {
    #         resource_arn: "ResourceARN", # required
    #         role_arn: "RoleARN", # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   ARN of the destination Amazon Kinesis Firehose delivery stream to
    #   write to.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   ARN of the IAM role that Amazon Kinesis Analytics can assume to
    #   write to the destination stream on your behalf. You need to grant
    #   the necessary permissions to this role.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics-2015-08-14/KinesisFirehoseOutput AWS API Documentation
    #
    class KinesisFirehoseOutput < Struct.new(
      :resource_arn,
      :role_arn)
      include Aws::Structure
    end

    # For an application output, describes the Amazon Kinesis Firehose
    # delivery stream configured as its destination.
    #
    # @!attribute [rw] resource_arn
    #   Amazon Resource Name (ARN) of the Amazon Kinesis Firehose delivery
    #   stream.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   ARN of the IAM role that Amazon Kinesis Analytics can assume to
    #   access the stream.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics-2015-08-14/KinesisFirehoseOutputDescription AWS API Documentation
    #
    class KinesisFirehoseOutputDescription < Struct.new(
      :resource_arn,
      :role_arn)
      include Aws::Structure
    end

    # When updating an output configuration using the UpdateApplication
    # operation, provides information about an Amazon Kinesis Firehose
    # delivery stream configured as the destination.
    #
    # @note When making an API call, you may pass KinesisFirehoseOutputUpdate
    #   data as a hash:
    #
    #       {
    #         resource_arn_update: "ResourceARN",
    #         role_arn_update: "RoleARN",
    #       }
    #
    # @!attribute [rw] resource_arn_update
    #   Amazon Resource Name (ARN) of the Amazon Kinesis Firehose delivery
    #   stream to write to.
    #   @return [String]
    #
    # @!attribute [rw] role_arn_update
    #   ARN of the IAM role that Amazon Kinesis Analytics can assume to
    #   access the stream on your behalf. You need to grant necessary
    #   permissions to this role.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics-2015-08-14/KinesisFirehoseOutputUpdate AWS API Documentation
    #
    class KinesisFirehoseOutputUpdate < Struct.new(
      :resource_arn_update,
      :role_arn_update)
      include Aws::Structure
    end

    # Identifies an Amazon Kinesis stream as the streaming source. You
    # provide the stream's Amazon Resource Name (ARN) and an IAM role ARN
    # that enables Amazon Kinesis Analytics to access the stream on your
    # behalf.
    #
    # @note When making an API call, you may pass KinesisStreamsInput
    #   data as a hash:
    #
    #       {
    #         resource_arn: "ResourceARN", # required
    #         role_arn: "RoleARN", # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   ARN of the input Amazon Kinesis stream to read.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   ARN of the IAM role that Amazon Kinesis Analytics can assume to
    #   access the stream on your behalf. You need to grant the necessary
    #   permissions to this role.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics-2015-08-14/KinesisStreamsInput AWS API Documentation
    #
    class KinesisStreamsInput < Struct.new(
      :resource_arn,
      :role_arn)
      include Aws::Structure
    end

    # Describes the Amazon Kinesis stream that is configured as the
    # streaming source in the application input configuration.
    #
    # @!attribute [rw] resource_arn
    #   Amazon Resource Name (ARN) of the Amazon Kinesis stream.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   ARN of the IAM role that Amazon Kinesis Analytics can assume to
    #   access the stream.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics-2015-08-14/KinesisStreamsInputDescription AWS API Documentation
    #
    class KinesisStreamsInputDescription < Struct.new(
      :resource_arn,
      :role_arn)
      include Aws::Structure
    end

    # When updating application input configuration, provides information
    # about an Amazon Kinesis stream as the streaming source.
    #
    # @note When making an API call, you may pass KinesisStreamsInputUpdate
    #   data as a hash:
    #
    #       {
    #         resource_arn_update: "ResourceARN",
    #         role_arn_update: "RoleARN",
    #       }
    #
    # @!attribute [rw] resource_arn_update
    #   Amazon Resource Name (ARN) of the input Amazon Kinesis stream to
    #   read.
    #   @return [String]
    #
    # @!attribute [rw] role_arn_update
    #   ARN of the IAM role that Amazon Kinesis Analytics can assume to
    #   access the stream on your behalf. You need to grant the necessary
    #   permissions to this role.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics-2015-08-14/KinesisStreamsInputUpdate AWS API Documentation
    #
    class KinesisStreamsInputUpdate < Struct.new(
      :resource_arn_update,
      :role_arn_update)
      include Aws::Structure
    end

    # When configuring application output, identifies an Amazon Kinesis
    # stream as the destination. You provide the stream Amazon Resource Name
    # (ARN) and also an IAM role ARN that Amazon Kinesis Analytics can use
    # to write to the stream on your behalf.
    #
    # @note When making an API call, you may pass KinesisStreamsOutput
    #   data as a hash:
    #
    #       {
    #         resource_arn: "ResourceARN", # required
    #         role_arn: "RoleARN", # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   ARN of the destination Amazon Kinesis stream to write to.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   ARN of the IAM role that Amazon Kinesis Analytics can assume to
    #   write to the destination stream on your behalf. You need to grant
    #   the necessary permissions to this role.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics-2015-08-14/KinesisStreamsOutput AWS API Documentation
    #
    class KinesisStreamsOutput < Struct.new(
      :resource_arn,
      :role_arn)
      include Aws::Structure
    end

    # For an application output, describes the Amazon Kinesis stream
    # configured as its destination.
    #
    # @!attribute [rw] resource_arn
    #   Amazon Resource Name (ARN) of the Amazon Kinesis stream.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   ARN of the IAM role that Amazon Kinesis Analytics can assume to
    #   access the stream.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics-2015-08-14/KinesisStreamsOutputDescription AWS API Documentation
    #
    class KinesisStreamsOutputDescription < Struct.new(
      :resource_arn,
      :role_arn)
      include Aws::Structure
    end

    # When updating an output configuration using the UpdateApplication
    # operation, provides information about an Amazon Kinesis stream
    # configured as the destination.
    #
    # @note When making an API call, you may pass KinesisStreamsOutputUpdate
    #   data as a hash:
    #
    #       {
    #         resource_arn_update: "ResourceARN",
    #         role_arn_update: "RoleARN",
    #       }
    #
    # @!attribute [rw] resource_arn_update
    #   Amazon Resource Name (ARN) of the Amazon Kinesis stream where you
    #   want to write the output.
    #   @return [String]
    #
    # @!attribute [rw] role_arn_update
    #   ARN of the IAM role that Amazon Kinesis Analytics can assume to
    #   access the stream on your behalf. You need to grant the necessary
    #   permissions to this role.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics-2015-08-14/KinesisStreamsOutputUpdate AWS API Documentation
    #
    class KinesisStreamsOutputUpdate < Struct.new(
      :resource_arn_update,
      :role_arn_update)
      include Aws::Structure
    end

    # When configuring application output, identifies an AWS Lambda function
    # as the destination. You provide the function Amazon Resource Name
    # (ARN) and also an IAM role ARN that Amazon Kinesis Analytics can use
    # to write to the function on your behalf.
    #
    # @note When making an API call, you may pass LambdaOutput
    #   data as a hash:
    #
    #       {
    #         resource_arn: "ResourceARN", # required
    #         role_arn: "RoleARN", # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   Amazon Resource Name (ARN) of the destination Lambda function to
    #   write to.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   ARN of the IAM role that Amazon Kinesis Analytics can assume to
    #   write to the destination function on your behalf. You need to grant
    #   the necessary permissions to this role.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics-2015-08-14/LambdaOutput AWS API Documentation
    #
    class LambdaOutput < Struct.new(
      :resource_arn,
      :role_arn)
      include Aws::Structure
    end

    # For an application output, describes the AWS Lambda function
    # configured as its destination.
    #
    # @!attribute [rw] resource_arn
    #   Amazon Resource Name (ARN) of the destination Lambda function.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   ARN of the IAM role that Amazon Kinesis Analytics can assume to
    #   write to the destination function.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics-2015-08-14/LambdaOutputDescription AWS API Documentation
    #
    class LambdaOutputDescription < Struct.new(
      :resource_arn,
      :role_arn)
      include Aws::Structure
    end

    # When updating an output configuration using the UpdateApplication
    # operation, provides information about an AWS Lambda function
    # configured as the destination.
    #
    # @note When making an API call, you may pass LambdaOutputUpdate
    #   data as a hash:
    #
    #       {
    #         resource_arn_update: "ResourceARN",
    #         role_arn_update: "RoleARN",
    #       }
    #
    # @!attribute [rw] resource_arn_update
    #   Amazon Resource Name (ARN) of the destination Lambda function.
    #   @return [String]
    #
    # @!attribute [rw] role_arn_update
    #   ARN of the IAM role that Amazon Kinesis Analytics can assume to
    #   write to the destination function on your behalf. You need to grant
    #   the necessary permissions to this role.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics-2015-08-14/LambdaOutputUpdate AWS API Documentation
    #
    class LambdaOutputUpdate < Struct.new(
      :resource_arn_update,
      :role_arn_update)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListApplicationsRequest
    #   data as a hash:
    #
    #       {
    #         limit: 1,
    #         exclusive_start_application_name: "ApplicationName",
    #       }
    #
    # @!attribute [rw] limit
    #   Maximum number of applications to list.
    #   @return [Integer]
    #
    # @!attribute [rw] exclusive_start_application_name
    #   Name of the application to start the list with. When using
    #   pagination to retrieve the list, you don't need to specify this
    #   parameter in the first request. However, in subsequent requests, you
    #   add the last application name from the previous response to get the
    #   next page of applications.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics-2015-08-14/ListApplicationsRequest AWS API Documentation
    #
    class ListApplicationsRequest < Struct.new(
      :limit,
      :exclusive_start_application_name)
      include Aws::Structure
    end

    # @!attribute [rw] application_summaries
    #   List of `ApplicationSummary` objects.
    #   @return [Array<Types::ApplicationSummary>]
    #
    # @!attribute [rw] has_more_applications
    #   Returns true if there are more applications to retrieve.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics-2015-08-14/ListApplicationsResponse AWS API Documentation
    #
    class ListApplicationsResponse < Struct.new(
      :application_summaries,
      :has_more_applications)
      include Aws::Structure
    end

    # When configuring application input at the time of creating or updating
    # an application, provides additional mapping information specific to
    # the record format (such as JSON, CSV, or record fields delimited by
    # some delimiter) on the streaming source.
    #
    # @note When making an API call, you may pass MappingParameters
    #   data as a hash:
    #
    #       {
    #         json_mapping_parameters: {
    #           record_row_path: "RecordRowPath", # required
    #         },
    #         csv_mapping_parameters: {
    #           record_row_delimiter: "RecordRowDelimiter", # required
    #           record_column_delimiter: "RecordColumnDelimiter", # required
    #         },
    #       }
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics-2015-08-14/MappingParameters AWS API Documentation
    #
    class MappingParameters < Struct.new(
      :json_mapping_parameters,
      :csv_mapping_parameters)
      include Aws::Structure
    end

    # Describes application output configuration in which you identify an
    # in-application stream and a destination where you want the
    # in-application stream data to be written. The destination can be an
    # Amazon Kinesis stream or an Amazon Kinesis Firehose delivery stream.
    #
    #
    #
    # For limits on how many destinations an application can write and other
    # limitations, see [Limits][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/kinesisanalytics/latest/dev/limits.html
    #
    # @note When making an API call, you may pass Output
    #   data as a hash:
    #
    #       {
    #         name: "InAppStreamName", # required
    #         kinesis_streams_output: {
    #           resource_arn: "ResourceARN", # required
    #           role_arn: "RoleARN", # required
    #         },
    #         kinesis_firehose_output: {
    #           resource_arn: "ResourceARN", # required
    #           role_arn: "RoleARN", # required
    #         },
    #         lambda_output: {
    #           resource_arn: "ResourceARN", # required
    #           role_arn: "RoleARN", # required
    #         },
    #         destination_schema: { # required
    #           record_format_type: "JSON", # accepts JSON, CSV
    #         },
    #       }
    #
    # @!attribute [rw] name
    #   Name of the in-application stream.
    #   @return [String]
    #
    # @!attribute [rw] kinesis_streams_output
    #   Identifies an Amazon Kinesis stream as the destination.
    #   @return [Types::KinesisStreamsOutput]
    #
    # @!attribute [rw] kinesis_firehose_output
    #   Identifies an Amazon Kinesis Firehose delivery stream as the
    #   destination.
    #   @return [Types::KinesisFirehoseOutput]
    #
    # @!attribute [rw] lambda_output
    #   Identifies an AWS Lambda function as the destination.
    #   @return [Types::LambdaOutput]
    #
    # @!attribute [rw] destination_schema
    #   Describes the data format when records are written to the
    #   destination. For more information, see [Configuring Application
    #   Output][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-output.html
    #   @return [Types::DestinationSchema]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics-2015-08-14/Output AWS API Documentation
    #
    class Output < Struct.new(
      :name,
      :kinesis_streams_output,
      :kinesis_firehose_output,
      :lambda_output,
      :destination_schema)
      include Aws::Structure
    end

    # Describes the application output configuration, which includes the
    # in-application stream name and the destination where the stream data
    # is written. The destination can be an Amazon Kinesis stream or an
    # Amazon Kinesis Firehose delivery stream.
    #
    # @!attribute [rw] output_id
    #   A unique identifier for the output configuration.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Name of the in-application stream configured as output.
    #   @return [String]
    #
    # @!attribute [rw] kinesis_streams_output_description
    #   Describes Amazon Kinesis stream configured as the destination where
    #   output is written.
    #   @return [Types::KinesisStreamsOutputDescription]
    #
    # @!attribute [rw] kinesis_firehose_output_description
    #   Describes the Amazon Kinesis Firehose delivery stream configured as
    #   the destination where output is written.
    #   @return [Types::KinesisFirehoseOutputDescription]
    #
    # @!attribute [rw] lambda_output_description
    #   Describes the AWS Lambda function configured as the destination
    #   where output is written.
    #   @return [Types::LambdaOutputDescription]
    #
    # @!attribute [rw] destination_schema
    #   Data format used for writing data to the destination.
    #   @return [Types::DestinationSchema]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics-2015-08-14/OutputDescription AWS API Documentation
    #
    class OutputDescription < Struct.new(
      :output_id,
      :name,
      :kinesis_streams_output_description,
      :kinesis_firehose_output_description,
      :lambda_output_description,
      :destination_schema)
      include Aws::Structure
    end

    # Describes updates to the output configuration identified by the
    # `OutputId`.
    #
    # @note When making an API call, you may pass OutputUpdate
    #   data as a hash:
    #
    #       {
    #         output_id: "Id", # required
    #         name_update: "InAppStreamName",
    #         kinesis_streams_output_update: {
    #           resource_arn_update: "ResourceARN",
    #           role_arn_update: "RoleARN",
    #         },
    #         kinesis_firehose_output_update: {
    #           resource_arn_update: "ResourceARN",
    #           role_arn_update: "RoleARN",
    #         },
    #         lambda_output_update: {
    #           resource_arn_update: "ResourceARN",
    #           role_arn_update: "RoleARN",
    #         },
    #         destination_schema_update: {
    #           record_format_type: "JSON", # accepts JSON, CSV
    #         },
    #       }
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
    #   Describes an Amazon Kinesis stream as the destination for the
    #   output.
    #   @return [Types::KinesisStreamsOutputUpdate]
    #
    # @!attribute [rw] kinesis_firehose_output_update
    #   Describes an Amazon Kinesis Firehose delivery stream as the
    #   destination for the output.
    #   @return [Types::KinesisFirehoseOutputUpdate]
    #
    # @!attribute [rw] lambda_output_update
    #   Describes an AWS Lambda function as the destination for the output.
    #   @return [Types::LambdaOutputUpdate]
    #
    # @!attribute [rw] destination_schema_update
    #   Describes the data format when records are written to the
    #   destination. For more information, see [Configuring Application
    #   Output][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-output.html
    #   @return [Types::DestinationSchema]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics-2015-08-14/OutputUpdate AWS API Documentation
    #
    class OutputUpdate < Struct.new(
      :output_id,
      :name_update,
      :kinesis_streams_output_update,
      :kinesis_firehose_output_update,
      :lambda_output_update,
      :destination_schema_update)
      include Aws::Structure
    end

    # Describes the mapping of each data element in the streaming source to
    # the corresponding column in the in-application stream.
    #
    # Also used to describe the format of the reference data source.
    #
    # @note When making an API call, you may pass RecordColumn
    #   data as a hash:
    #
    #       {
    #         name: "RecordColumnName", # required
    #         mapping: "RecordColumnMapping",
    #         sql_type: "RecordColumnSqlType", # required
    #       }
    #
    # @!attribute [rw] name
    #   Name of the column created in the in-application input stream or
    #   reference table.
    #   @return [String]
    #
    # @!attribute [rw] mapping
    #   Reference to the data element in the streaming input of the
    #   reference data source.
    #   @return [String]
    #
    # @!attribute [rw] sql_type
    #   Type of column created in the in-application input stream or
    #   reference table.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics-2015-08-14/RecordColumn AWS API Documentation
    #
    class RecordColumn < Struct.new(
      :name,
      :mapping,
      :sql_type)
      include Aws::Structure
    end

    # Describes the record format and relevant mapping information that
    # should be applied to schematize the records on the stream.
    #
    # @note When making an API call, you may pass RecordFormat
    #   data as a hash:
    #
    #       {
    #         record_format_type: "JSON", # required, accepts JSON, CSV
    #         mapping_parameters: {
    #           json_mapping_parameters: {
    #             record_row_path: "RecordRowPath", # required
    #           },
    #           csv_mapping_parameters: {
    #             record_row_delimiter: "RecordRowDelimiter", # required
    #             record_column_delimiter: "RecordColumnDelimiter", # required
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] record_format_type
    #   The type of record format.
    #   @return [String]
    #
    # @!attribute [rw] mapping_parameters
    #   When configuring application input at the time of creating or
    #   updating an application, provides additional mapping information
    #   specific to the record format (such as JSON, CSV, or record fields
    #   delimited by some delimiter) on the streaming source.
    #   @return [Types::MappingParameters]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics-2015-08-14/RecordFormat AWS API Documentation
    #
    class RecordFormat < Struct.new(
      :record_format_type,
      :mapping_parameters)
      include Aws::Structure
    end

    # Describes the reference data source by providing the source
    # information (S3 bucket name and object key name), the resulting
    # in-application table name that is created, and the necessary schema to
    # map the data elements in the Amazon S3 object to the in-application
    # table.
    #
    # @note When making an API call, you may pass ReferenceDataSource
    #   data as a hash:
    #
    #       {
    #         table_name: "InAppTableName", # required
    #         s3_reference_data_source: {
    #           bucket_arn: "BucketARN", # required
    #           file_key: "FileKey", # required
    #           reference_role_arn: "RoleARN", # required
    #         },
    #         reference_schema: { # required
    #           record_format: { # required
    #             record_format_type: "JSON", # required, accepts JSON, CSV
    #             mapping_parameters: {
    #               json_mapping_parameters: {
    #                 record_row_path: "RecordRowPath", # required
    #               },
    #               csv_mapping_parameters: {
    #                 record_row_delimiter: "RecordRowDelimiter", # required
    #                 record_column_delimiter: "RecordColumnDelimiter", # required
    #               },
    #             },
    #           },
    #           record_encoding: "RecordEncoding",
    #           record_columns: [ # required
    #             {
    #               name: "RecordColumnName", # required
    #               mapping: "RecordColumnMapping",
    #               sql_type: "RecordColumnSqlType", # required
    #             },
    #           ],
    #         },
    #       }
    #
    # @!attribute [rw] table_name
    #   Name of the in-application table to create.
    #   @return [String]
    #
    # @!attribute [rw] s3_reference_data_source
    #   Identifies the S3 bucket and object that contains the reference
    #   data. Also identifies the IAM role Amazon Kinesis Analytics can
    #   assume to read this object on your behalf. An Amazon Kinesis
    #   Analytics application loads reference data only once. If the data
    #   changes, you call the UpdateApplication operation to trigger
    #   reloading of data into your application.
    #   @return [Types::S3ReferenceDataSource]
    #
    # @!attribute [rw] reference_schema
    #   Describes the format of the data in the streaming source, and how
    #   each data element maps to corresponding columns created in the
    #   in-application stream.
    #   @return [Types::SourceSchema]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics-2015-08-14/ReferenceDataSource AWS API Documentation
    #
    class ReferenceDataSource < Struct.new(
      :table_name,
      :s3_reference_data_source,
      :reference_schema)
      include Aws::Structure
    end

    # Describes the reference data source configured for an application.
    #
    # @!attribute [rw] reference_id
    #   ID of the reference data source. This is the ID that Amazon Kinesis
    #   Analytics assigns when you add the reference data source to your
    #   application using the AddApplicationReferenceDataSource operation.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   The in-application table name created by the specific reference data
    #   source configuration.
    #   @return [String]
    #
    # @!attribute [rw] s3_reference_data_source_description
    #   Provides the S3 bucket name, the object key name that contains the
    #   reference data. It also provides the Amazon Resource Name (ARN) of
    #   the IAM role that Amazon Kinesis Analytics can assume to read the
    #   Amazon S3 object and populate the in-application reference table.
    #   @return [Types::S3ReferenceDataSourceDescription]
    #
    # @!attribute [rw] reference_schema
    #   Describes the format of the data in the streaming source, and how
    #   each data element maps to corresponding columns created in the
    #   in-application stream.
    #   @return [Types::SourceSchema]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics-2015-08-14/ReferenceDataSourceDescription AWS API Documentation
    #
    class ReferenceDataSourceDescription < Struct.new(
      :reference_id,
      :table_name,
      :s3_reference_data_source_description,
      :reference_schema)
      include Aws::Structure
    end

    # When you update a reference data source configuration for an
    # application, this object provides all the updated values (such as the
    # source bucket name and object key name), the in-application table name
    # that is created, and updated mapping information that maps the data in
    # the Amazon S3 object to the in-application reference table that is
    # created.
    #
    # @note When making an API call, you may pass ReferenceDataSourceUpdate
    #   data as a hash:
    #
    #       {
    #         reference_id: "Id", # required
    #         table_name_update: "InAppTableName",
    #         s3_reference_data_source_update: {
    #           bucket_arn_update: "BucketARN",
    #           file_key_update: "FileKey",
    #           reference_role_arn_update: "RoleARN",
    #         },
    #         reference_schema_update: {
    #           record_format: { # required
    #             record_format_type: "JSON", # required, accepts JSON, CSV
    #             mapping_parameters: {
    #               json_mapping_parameters: {
    #                 record_row_path: "RecordRowPath", # required
    #               },
    #               csv_mapping_parameters: {
    #                 record_row_delimiter: "RecordRowDelimiter", # required
    #                 record_column_delimiter: "RecordColumnDelimiter", # required
    #               },
    #             },
    #           },
    #           record_encoding: "RecordEncoding",
    #           record_columns: [ # required
    #             {
    #               name: "RecordColumnName", # required
    #               mapping: "RecordColumnMapping",
    #               sql_type: "RecordColumnSqlType", # required
    #             },
    #           ],
    #         },
    #       }
    #
    # @!attribute [rw] reference_id
    #   ID of the reference data source being updated. You can use the
    #   DescribeApplication operation to get this value.
    #   @return [String]
    #
    # @!attribute [rw] table_name_update
    #   In-application table name that is created by this update.
    #   @return [String]
    #
    # @!attribute [rw] s3_reference_data_source_update
    #   Describes the S3 bucket name, object key name, and IAM role that
    #   Amazon Kinesis Analytics can assume to read the Amazon S3 object on
    #   your behalf and populate the in-application reference table.
    #   @return [Types::S3ReferenceDataSourceUpdate]
    #
    # @!attribute [rw] reference_schema_update
    #   Describes the format of the data in the streaming source, and how
    #   each data element maps to corresponding columns created in the
    #   in-application stream.
    #   @return [Types::SourceSchema]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics-2015-08-14/ReferenceDataSourceUpdate AWS API Documentation
    #
    class ReferenceDataSourceUpdate < Struct.new(
      :reference_id,
      :table_name_update,
      :s3_reference_data_source_update,
      :reference_schema_update)
      include Aws::Structure
    end

    # Provides a description of an Amazon S3 data source, including the
    # Amazon Resource Name (ARN) of the S3 bucket, the ARN of the IAM role
    # that is used to access the bucket, and the name of the S3 object that
    # contains the data.
    #
    # @note When making an API call, you may pass S3Configuration
    #   data as a hash:
    #
    #       {
    #         role_arn: "RoleARN", # required
    #         bucket_arn: "BucketARN", # required
    #         file_key: "FileKey", # required
    #       }
    #
    # @!attribute [rw] role_arn
    #   IAM ARN of the role used to access the data.
    #   @return [String]
    #
    # @!attribute [rw] bucket_arn
    #   ARN of the S3 bucket that contains the data.
    #   @return [String]
    #
    # @!attribute [rw] file_key
    #   The name of the object that contains the data.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics-2015-08-14/S3Configuration AWS API Documentation
    #
    class S3Configuration < Struct.new(
      :role_arn,
      :bucket_arn,
      :file_key)
      include Aws::Structure
    end

    # Identifies the S3 bucket and object that contains the reference data.
    # Also identifies the IAM role Amazon Kinesis Analytics can assume to
    # read this object on your behalf.
    #
    # An Amazon Kinesis Analytics application loads reference data only
    # once. If the data changes, you call the UpdateApplication operation to
    # trigger reloading of data into your application.
    #
    # @note When making an API call, you may pass S3ReferenceDataSource
    #   data as a hash:
    #
    #       {
    #         bucket_arn: "BucketARN", # required
    #         file_key: "FileKey", # required
    #         reference_role_arn: "RoleARN", # required
    #       }
    #
    # @!attribute [rw] bucket_arn
    #   Amazon Resource Name (ARN) of the S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] file_key
    #   Object key name containing reference data.
    #   @return [String]
    #
    # @!attribute [rw] reference_role_arn
    #   ARN of the IAM role that the service can assume to read data on your
    #   behalf. This role must have permission for the `s3:GetObject` action
    #   on the object and trust policy that allows Amazon Kinesis Analytics
    #   service principal to assume this role.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics-2015-08-14/S3ReferenceDataSource AWS API Documentation
    #
    class S3ReferenceDataSource < Struct.new(
      :bucket_arn,
      :file_key,
      :reference_role_arn)
      include Aws::Structure
    end

    # Provides the bucket name and object key name that stores the reference
    # data.
    #
    # @!attribute [rw] bucket_arn
    #   Amazon Resource Name (ARN) of the S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] file_key
    #   Amazon S3 object key name.
    #   @return [String]
    #
    # @!attribute [rw] reference_role_arn
    #   ARN of the IAM role that Amazon Kinesis Analytics can assume to read
    #   the Amazon S3 object on your behalf to populate the in-application
    #   reference table.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics-2015-08-14/S3ReferenceDataSourceDescription AWS API Documentation
    #
    class S3ReferenceDataSourceDescription < Struct.new(
      :bucket_arn,
      :file_key,
      :reference_role_arn)
      include Aws::Structure
    end

    # Describes the S3 bucket name, object key name, and IAM role that
    # Amazon Kinesis Analytics can assume to read the Amazon S3 object on
    # your behalf and populate the in-application reference table.
    #
    # @note When making an API call, you may pass S3ReferenceDataSourceUpdate
    #   data as a hash:
    #
    #       {
    #         bucket_arn_update: "BucketARN",
    #         file_key_update: "FileKey",
    #         reference_role_arn_update: "RoleARN",
    #       }
    #
    # @!attribute [rw] bucket_arn_update
    #   Amazon Resource Name (ARN) of the S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] file_key_update
    #   Object key name.
    #   @return [String]
    #
    # @!attribute [rw] reference_role_arn_update
    #   ARN of the IAM role that Amazon Kinesis Analytics can assume to read
    #   the Amazon S3 object and populate the in-application.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics-2015-08-14/S3ReferenceDataSourceUpdate AWS API Documentation
    #
    class S3ReferenceDataSourceUpdate < Struct.new(
      :bucket_arn_update,
      :file_key_update,
      :reference_role_arn_update)
      include Aws::Structure
    end

    # Describes the format of the data in the streaming source, and how each
    # data element maps to corresponding columns created in the
    # in-application stream.
    #
    # @note When making an API call, you may pass SourceSchema
    #   data as a hash:
    #
    #       {
    #         record_format: { # required
    #           record_format_type: "JSON", # required, accepts JSON, CSV
    #           mapping_parameters: {
    #             json_mapping_parameters: {
    #               record_row_path: "RecordRowPath", # required
    #             },
    #             csv_mapping_parameters: {
    #               record_row_delimiter: "RecordRowDelimiter", # required
    #               record_column_delimiter: "RecordColumnDelimiter", # required
    #             },
    #           },
    #         },
    #         record_encoding: "RecordEncoding",
    #         record_columns: [ # required
    #           {
    #             name: "RecordColumnName", # required
    #             mapping: "RecordColumnMapping",
    #             sql_type: "RecordColumnSqlType", # required
    #           },
    #         ],
    #       }
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics-2015-08-14/SourceSchema AWS API Documentation
    #
    class SourceSchema < Struct.new(
      :record_format,
      :record_encoding,
      :record_columns)
      include Aws::Structure
    end

    # @note When making an API call, you may pass StartApplicationRequest
    #   data as a hash:
    #
    #       {
    #         application_name: "ApplicationName", # required
    #         input_configurations: [ # required
    #           {
    #             id: "Id", # required
    #             input_starting_position_configuration: { # required
    #               input_starting_position: "NOW", # accepts NOW, TRIM_HORIZON, LAST_STOPPED_POINT
    #             },
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] application_name
    #   Name of the application.
    #   @return [String]
    #
    # @!attribute [rw] input_configurations
    #   Identifies the specific input, by ID, that the application starts
    #   consuming. Amazon Kinesis Analytics starts reading the streaming
    #   source associated with the input. You can also specify where in the
    #   streaming source you want Amazon Kinesis Analytics to start reading.
    #   @return [Array<Types::InputConfiguration>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics-2015-08-14/StartApplicationRequest AWS API Documentation
    #
    class StartApplicationRequest < Struct.new(
      :application_name,
      :input_configurations)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics-2015-08-14/StartApplicationResponse AWS API Documentation
    #
    class StartApplicationResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass StopApplicationRequest
    #   data as a hash:
    #
    #       {
    #         application_name: "ApplicationName", # required
    #       }
    #
    # @!attribute [rw] application_name
    #   Name of the running application to stop.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics-2015-08-14/StopApplicationRequest AWS API Documentation
    #
    class StopApplicationRequest < Struct.new(
      :application_name)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics-2015-08-14/StopApplicationResponse AWS API Documentation
    #
    class StopApplicationResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateApplicationRequest
    #   data as a hash:
    #
    #       {
    #         application_name: "ApplicationName", # required
    #         current_application_version_id: 1, # required
    #         application_update: { # required
    #           input_updates: [
    #             {
    #               input_id: "Id", # required
    #               name_prefix_update: "InAppStreamName",
    #               input_processing_configuration_update: {
    #                 input_lambda_processor_update: { # required
    #                   resource_arn_update: "ResourceARN",
    #                   role_arn_update: "RoleARN",
    #                 },
    #               },
    #               kinesis_streams_input_update: {
    #                 resource_arn_update: "ResourceARN",
    #                 role_arn_update: "RoleARN",
    #               },
    #               kinesis_firehose_input_update: {
    #                 resource_arn_update: "ResourceARN",
    #                 role_arn_update: "RoleARN",
    #               },
    #               input_schema_update: {
    #                 record_format_update: {
    #                   record_format_type: "JSON", # required, accepts JSON, CSV
    #                   mapping_parameters: {
    #                     json_mapping_parameters: {
    #                       record_row_path: "RecordRowPath", # required
    #                     },
    #                     csv_mapping_parameters: {
    #                       record_row_delimiter: "RecordRowDelimiter", # required
    #                       record_column_delimiter: "RecordColumnDelimiter", # required
    #                     },
    #                   },
    #                 },
    #                 record_encoding_update: "RecordEncoding",
    #                 record_column_updates: [
    #                   {
    #                     name: "RecordColumnName", # required
    #                     mapping: "RecordColumnMapping",
    #                     sql_type: "RecordColumnSqlType", # required
    #                   },
    #                 ],
    #               },
    #               input_parallelism_update: {
    #                 count_update: 1,
    #               },
    #             },
    #           ],
    #           application_code_update: "ApplicationCode",
    #           output_updates: [
    #             {
    #               output_id: "Id", # required
    #               name_update: "InAppStreamName",
    #               kinesis_streams_output_update: {
    #                 resource_arn_update: "ResourceARN",
    #                 role_arn_update: "RoleARN",
    #               },
    #               kinesis_firehose_output_update: {
    #                 resource_arn_update: "ResourceARN",
    #                 role_arn_update: "RoleARN",
    #               },
    #               lambda_output_update: {
    #                 resource_arn_update: "ResourceARN",
    #                 role_arn_update: "RoleARN",
    #               },
    #               destination_schema_update: {
    #                 record_format_type: "JSON", # accepts JSON, CSV
    #               },
    #             },
    #           ],
    #           reference_data_source_updates: [
    #             {
    #               reference_id: "Id", # required
    #               table_name_update: "InAppTableName",
    #               s3_reference_data_source_update: {
    #                 bucket_arn_update: "BucketARN",
    #                 file_key_update: "FileKey",
    #                 reference_role_arn_update: "RoleARN",
    #               },
    #               reference_schema_update: {
    #                 record_format: { # required
    #                   record_format_type: "JSON", # required, accepts JSON, CSV
    #                   mapping_parameters: {
    #                     json_mapping_parameters: {
    #                       record_row_path: "RecordRowPath", # required
    #                     },
    #                     csv_mapping_parameters: {
    #                       record_row_delimiter: "RecordRowDelimiter", # required
    #                       record_column_delimiter: "RecordColumnDelimiter", # required
    #                     },
    #                   },
    #                 },
    #                 record_encoding: "RecordEncoding",
    #                 record_columns: [ # required
    #                   {
    #                     name: "RecordColumnName", # required
    #                     mapping: "RecordColumnMapping",
    #                     sql_type: "RecordColumnSqlType", # required
    #                   },
    #                 ],
    #               },
    #             },
    #           ],
    #           cloud_watch_logging_option_updates: [
    #             {
    #               cloud_watch_logging_option_id: "Id", # required
    #               log_stream_arn_update: "LogStreamARN",
    #               role_arn_update: "RoleARN",
    #             },
    #           ],
    #         },
    #       }
    #
    # @!attribute [rw] application_name
    #   Name of the Amazon Kinesis Analytics application to update.
    #   @return [String]
    #
    # @!attribute [rw] current_application_version_id
    #   The current application version ID. You can use the
    #   DescribeApplication operation to get this value.
    #   @return [Integer]
    #
    # @!attribute [rw] application_update
    #   Describes application updates.
    #   @return [Types::ApplicationUpdate]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics-2015-08-14/UpdateApplicationRequest AWS API Documentation
    #
    class UpdateApplicationRequest < Struct.new(
      :application_name,
      :current_application_version_id,
      :application_update)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics-2015-08-14/UpdateApplicationResponse AWS API Documentation
    #
    class UpdateApplicationResponse < Aws::EmptyStructure; end

  end
end
