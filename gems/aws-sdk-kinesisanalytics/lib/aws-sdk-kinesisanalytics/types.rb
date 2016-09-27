# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing for info on making contributions:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws
  module KinesisAnalytics
    module Types

      # @note When making an API call, pass AddApplicationInputRequest
      #   data as a hash:
      #
      #       {
      #         application_name: "ApplicationName", # required
      #         current_application_version_id: 1, # required
      #         input: { # required
      #           name_prefix: "InAppStreamName", # required
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
      #           input_schema: {
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
      #   When you configure the application input, you specify the streaming
      #   source, the in-application stream name that is created, and the
      #   mapping between the two. For more information, see [Configuring
      #   Application Input][1].
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-input.html
      #   @return [Types::Input]
      class AddApplicationInputRequest < Struct.new(
        :application_name,
        :current_application_version_id,
        :input)
        include Aws::Structure
      end

      class AddApplicationInputResponse < Aws::EmptyStructure; end

      # @note When making an API call, pass AddApplicationOutputRequest
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
      #           destination_schema: { # required
      #             record_format_type: "JSON", # accepts JSON, CSV
      #           },
      #         },
      #       }
      # @!attribute [rw] application_name
      #   Name of the application to which you want to add the output
      #   configuration.
      #   @return [String]
      #
      # @!attribute [rw] current_application_version_id
      #   Version of the application to which you want add the output
      #   configuration. You can use the DescribeApplication operation to get
      #   the current application version. If the version specified is not the
      #   current version, the `ConcurrentModificationException` is returned.
      #   @return [Integer]
      #
      # @!attribute [rw] output
      #   An array of objects, each describing one output configuration. In
      #   the output configuration, you specify the name of an in-application
      #   stream, a destination (that is, an Amazon Kinesis stream or an
      #   Amazon Kinesis Firehose delivery stream), and record the formation
      #   to use when writing to the destination.
      #   @return [Types::Output]
      class AddApplicationOutputRequest < Struct.new(
        :application_name,
        :current_application_version_id,
        :output)
        include Aws::Structure
      end

      class AddApplicationOutputResponse < Aws::EmptyStructure; end

      # @note When making an API call, pass AddApplicationReferenceDataSourceRequest
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
      class AddApplicationReferenceDataSourceRequest < Struct.new(
        :application_name,
        :current_application_version_id,
        :reference_data_source)
        include Aws::Structure
      end

      class AddApplicationReferenceDataSourceResponse < Aws::EmptyStructure; end

      # Provides a description of the application, including the application
      # Amazon Resource Name (ARN), status, latest version, and input and
      # output configuration.
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
      #   Timestamp when the application version was created.
      #   @return [Time]
      #
      # @!attribute [rw] last_update_timestamp
      #   Timestamp when the application was last updated.
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
      # @!attribute [rw] application_code
      #   Returns the application code that you provided to perform data
      #   analysis on any of the in-application streams in your application.
      #   @return [String]
      #
      # @!attribute [rw] application_version_id
      #   Provides the current application version.
      #   @return [Integer]
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
        :application_code,
        :application_version_id)
        include Aws::Structure
      end

      # Provides application summary information, including the application
      # Amazon Resource Name (ARN), name, and status.
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
      class ApplicationSummary < Struct.new(
        :application_name,
        :application_arn,
        :application_status)
        include Aws::Structure
      end

      # Describes updates to apply to an existing Kinesis Analytics
      # application.
      # @note When making an API call, pass ApplicationUpdate
      #   data as a hash:
      #
      #       {
      #         input_updates: [
      #           {
      #             input_id: "Id", # required
      #             name_prefix_update: "InAppStreamName",
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
      #       }
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
      class ApplicationUpdate < Struct.new(
        :input_updates,
        :application_code_update,
        :output_updates,
        :reference_data_source_updates)
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
      # @note When making an API call, pass CSVMappingParameters
      #   data as a hash:
      #
      #       {
      #         record_row_delimiter: "RecordRowDelimiter", # required
      #         record_column_delimiter: "RecordColumnDelimiter", # required
      #       }
      # @!attribute [rw] record_row_delimiter
      #   Row delimiter. For example, in a CSV format, *'\\n'* is the
      #   typical row delimiter.
      #   @return [String]
      #
      # @!attribute [rw] record_column_delimiter
      #   Column delimiter. For example, in a CSV format, a comma (",") is
      #   the typical column delimiter.
      #   @return [String]
      class CSVMappingParameters < Struct.new(
        :record_row_delimiter,
        :record_column_delimiter)
        include Aws::Structure
      end

      # TBD
      # @note When making an API call, pass CreateApplicationRequest
      #   data as a hash:
      #
      #       {
      #         application_name: "ApplicationName", # required
      #         application_description: "ApplicationDescription",
      #         inputs: [
      #           {
      #             name_prefix: "InAppStreamName", # required
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
      #             input_schema: {
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
      #             destination_schema: { # required
      #               record_format_type: "JSON", # accepts JSON, CSV
      #             },
      #           },
      #         ],
      #         application_code: "ApplicationCode",
      #       }
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
      #   and format of data on the stream (for example, JSON, CSV, etc). You
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
      #   in-application streams to up to five destinations.
      #
      #   These destinations can be Amazon Kinesis streams, Amazon Kinesis
      #   Firehose delivery streams, or both.
      #
      #   In the configuration, you specify the in-application stream name,
      #   the destination stream Amazon Resource Name (ARN), and the format to
      #   use when writing data. You must also provide an IAM role that Amazon
      #   Kinesis Analytics can assume to write to the destination stream on
      #   your behalf.
      #
      #   In the output configuration, you also provide the output stream
      #   Amazon Resource Name (ARN) and the format of data in the stream (for
      #   example, JSON, CSV). You also must provide an IAM role that Amazon
      #   Kinesis Analytics can assume to write to this stream on your behalf.
      #   @return [Array<Types::Output>]
      #
      # @!attribute [rw] application_code
      #   One or more SQL statements that read input data, transform it, and
      #   generate output. For example, you can write a SQL statement that
      #   reads input data and generates a running average of the number of
      #   advertisement clicks by vendor.
      #
      #   You can also provide a series of SQL statements, where output of one
      #   statement can be used as the input for the next statement.
      #
      #   Note that the application code must create the streams with names
      #   specified in the `Outputs`. For example, if your `Outputs` defines
      #   output streams named `ExampleOutputStream1` and
      #   `ExampleOutputStream2`, then your application code must create these
      #   streams.
      #   @return [String]
      class CreateApplicationRequest < Struct.new(
        :application_name,
        :application_description,
        :inputs,
        :outputs,
        :application_code)
        include Aws::Structure
      end

      # TBD
      # @!attribute [rw] application_summary
      #   In response to your `CreateApplication` request, Amazon Kinesis
      #   Analytics returns a response with a summary of the application it
      #   created, including the application Amazon Resource Name (ARN), name,
      #   and status.
      #   @return [Types::ApplicationSummary]
      class CreateApplicationResponse < Struct.new(
        :application_summary)
        include Aws::Structure
      end

      # @note When making an API call, pass DeleteApplicationOutputRequest
      #   data as a hash:
      #
      #       {
      #         application_name: "ApplicationName", # required
      #         current_application_version_id: 1, # required
      #         output_id: "Id", # required
      #       }
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
      class DeleteApplicationOutputRequest < Struct.new(
        :application_name,
        :current_application_version_id,
        :output_id)
        include Aws::Structure
      end

      class DeleteApplicationOutputResponse < Aws::EmptyStructure; end

      # @note When making an API call, pass DeleteApplicationReferenceDataSourceRequest
      #   data as a hash:
      #
      #       {
      #         application_name: "ApplicationName", # required
      #         current_application_version_id: 1, # required
      #         reference_id: "Id", # required
      #       }
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
      class DeleteApplicationReferenceDataSourceRequest < Struct.new(
        :application_name,
        :current_application_version_id,
        :reference_id)
        include Aws::Structure
      end

      class DeleteApplicationReferenceDataSourceResponse < Aws::EmptyStructure; end

      # @note When making an API call, pass DeleteApplicationRequest
      #   data as a hash:
      #
      #       {
      #         application_name: "ApplicationName", # required
      #         create_timestamp: Time.now, # required
      #       }
      # @!attribute [rw] application_name
      #   Name of the Amazon Kinesis Analytics application to delete.
      #   @return [String]
      #
      # @!attribute [rw] create_timestamp
      #   You can use the `DescribeApplication` operation to get this value.
      #   @return [Time]
      class DeleteApplicationRequest < Struct.new(
        :application_name,
        :create_timestamp)
        include Aws::Structure
      end

      class DeleteApplicationResponse < Aws::EmptyStructure; end

      # @note When making an API call, pass DescribeApplicationRequest
      #   data as a hash:
      #
      #       {
      #         application_name: "ApplicationName", # required
      #       }
      # @!attribute [rw] application_name
      #   Name of the application.
      #   @return [String]
      class DescribeApplicationRequest < Struct.new(
        :application_name)
        include Aws::Structure
      end

      # @!attribute [rw] application_detail
      #   Provides a description of the application, such as the application
      #   Amazon Resource Name (ARN), status, latest version, and input and
      #   output configuration details.
      #   @return [Types::ApplicationDetail]
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
      # @note When making an API call, pass DestinationSchema
      #   data as a hash:
      #
      #       {
      #         record_format_type: "JSON", # accepts JSON, CSV
      #       }
      # @!attribute [rw] record_format_type
      #   Specifies the format of the records on the output stream.
      #   @return [String]
      class DestinationSchema < Struct.new(
        :record_format_type)
        include Aws::Structure
      end

      # @note When making an API call, pass DiscoverInputSchemaRequest
      #   data as a hash:
      #
      #       {
      #         resource_arn: "ResourceARN", # required
      #         role_arn: "RoleARN", # required
      #         input_starting_position_configuration: { # required
      #           input_starting_position: "NOW", # accepts NOW, TRIM_HORIZON, LAST_STOPPED_POINT
      #         },
      #       }
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
      class DiscoverInputSchemaRequest < Struct.new(
        :resource_arn,
        :role_arn,
        :input_starting_position_configuration)
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
      # @!attribute [rw] raw_input_records
      #   Raw stream data that was sampled to infer the schema.
      #   @return [Array<String>]
      class DiscoverInputSchemaResponse < Struct.new(
        :input_schema,
        :parsed_input_records,
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
      # @note When making an API call, pass Input
      #   data as a hash:
      #
      #       {
      #         name_prefix: "InAppStreamName", # required
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
      #         input_schema: {
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
      # @!attribute [rw] name_prefix
      #   Name prefix to use when creating in-application stream. Suppose you
      #   specify a prefix "MyInApplicationStream". Kinesis Analytics will
      #   then create one or more (as per the `InputParallelism` count you
      #   specified) in-application streams with names
      #   "MyInApplicationStream\_001", "MyInApplicationStream\_002" and
      #   so on.
      #   @return [String]
      #
      # @!attribute [rw] kinesis_streams_input
      #   If the streaming source is an Amazon Kinesis stream, identifies the
      #   stream's Amazon Resource Name (ARN) and an IAM role that enables
      #   Amazon Kinesis Analytics to access the stream on your behalf.
      #   @return [Types::KinesisStreamsInput]
      #
      # @!attribute [rw] kinesis_firehose_input
      #   If the streaming source is an Amazon Kinesis Firehose delivery
      #   stream, identifies the Firehose delivery stream's ARN and an IAM
      #   role that enables Amazon Kinesis Analytics to access the stream on
      #   your behalf.
      #   @return [Types::KinesisFirehoseInput]
      #
      # @!attribute [rw] input_parallelism
      #   Describes the number of in-application streams to create.
      #
      #   Data from your source will be routed to these in-application input
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
      class Input < Struct.new(
        :name_prefix,
        :kinesis_streams_input,
        :kinesis_firehose_input,
        :input_parallelism,
        :input_schema)
        include Aws::Structure
      end

      # When you start your application, you provide this configuration, which
      # identifies the input source and the point in the input source at which
      # you want the application to start processing records.
      # @note When making an API call, pass InputConfiguration
      #   data as a hash:
      #
      #       {
      #         id: "Id", # required
      #         input_starting_position_configuration: { # required
      #           input_starting_position: "NOW", # accepts NOW, TRIM_HORIZON, LAST_STOPPED_POINT
      #         },
      #       }
      # @!attribute [rw] id
      #   Input source ID. You can get this ID by calling the
      #   DescribeApplication operation.
      #   @return [String]
      #
      # @!attribute [rw] input_starting_position_configuration
      #   Point at which you want the application to start processing records
      #   from the streaming source.
      #   @return [Types::InputStartingPositionConfiguration]
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
      # @!attribute [rw] kinesis_streams_input_description
      #   If an Amazon Kinesis stream is configured as streaming source,
      #   provides Amazon Kinesis stream's ARN and an IAM role that enables
      #   Amazon Kinesis Analytics to access the stream on your behalf.
      #   @return [Types::KinesisStreamsInputDescription]
      #
      # @!attribute [rw] kinesis_firehose_input_description
      #   If an Amazon Kinesis Firehose delivery stream is configured as a
      #   streaming source, provides the Firehose delivery stream's Amazon
      #   Resource Name (ARN) and an IAM role that enables Amazon Kinesis
      #   Analytics to access the stream on your behalf.
      #   @return [Types::KinesisFirehoseInputDescription]
      #
      # @!attribute [rw] input_schema
      #   Describes the format of the data in the streaming source, and how
      #   each data element maps to corresponding columns created in the
      #   in-application stream.
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
      class InputDescription < Struct.new(
        :input_id,
        :name_prefix,
        :in_app_stream_names,
        :kinesis_streams_input_description,
        :kinesis_firehose_input_description,
        :input_schema,
        :input_parallelism,
        :input_starting_position_configuration)
        include Aws::Structure
      end

      # Describes the number of in-application streams to create for a given
      # streaming source. For information about parallellism, see [Configuring
      # Application Input][1].
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-input.html
      # @note When making an API call, pass InputParallelism
      #   data as a hash:
      #
      #       {
      #         count: 1,
      #       }
      # @!attribute [rw] count
      #   Number of in-application streams to create. For more information,
      #   see [Limits][1].
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/kinesisanalytics/latest/dev/limits.html
      #   @return [Integer]
      class InputParallelism < Struct.new(
        :count)
        include Aws::Structure
      end

      # Provides updates to the parallelism count.
      # @note When making an API call, pass InputParallelismUpdate
      #   data as a hash:
      #
      #       {
      #         count_update: 1,
      #       }
      # @!attribute [rw] count_update
      #   Number of in-application streams to create for the specified
      #   streaming source.
      #   @return [Integer]
      class InputParallelismUpdate < Struct.new(
        :count_update)
        include Aws::Structure
      end

      # Describes updates for the application's input schema.
      # @note When making an API call, pass InputSchemaUpdate
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
      class InputSchemaUpdate < Struct.new(
        :record_format_update,
        :record_encoding_update,
        :record_column_updates)
        include Aws::Structure
      end

      # Describes the point at which the application reads from the streaming
      # source.
      # @note When making an API call, pass InputStartingPositionConfiguration
      #   data as a hash:
      #
      #       {
      #         input_starting_position: "NOW", # accepts NOW, TRIM_HORIZON, LAST_STOPPED_POINT
      #       }
      # @!attribute [rw] input_starting_position
      #   The starting position on the stream.
      #
      #   * `LATEST` - Start reading just after the most recent record in the
      #     stream.
      #
      #   * `TRIM_HORIZON` - Start reading at the last untrimmed record in the
      #     stream, which is the oldest record available in the stream. This
      #     option is not available for an Amazon Kinesis Firehose delivery
      #     stream.
      #
      #   * `LAST_STOPPED_POINT` - Resume reading from where the application
      #     last stopped reading.
      #   @return [String]
      class InputStartingPositionConfiguration < Struct.new(
        :input_starting_position)
        include Aws::Structure
      end

      # Describes updates to a specific input configuration (identified by the
      # `InputId` of an application).
      # @note When making an API call, pass InputUpdate
      #   data as a hash:
      #
      #       {
      #         input_id: "Id", # required
      #         name_prefix_update: "InAppStreamName",
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
      # @!attribute [rw] input_id
      #   Input ID of the application input to be updated.
      #   @return [String]
      #
      # @!attribute [rw] name_prefix_update
      #   Name prefix for in-application stream(s) that Kinesis Analytics
      #   creates for the specific streaming source.
      #   @return [String]
      #
      # @!attribute [rw] kinesis_streams_input_update
      #   If a Amazon Kinesis stream is the streaming source to be updated,
      #   provides an updated stream ARN and IAM role ARN.
      #   @return [Types::KinesisStreamsInputUpdate]
      #
      # @!attribute [rw] kinesis_firehose_input_update
      #   If an Amazon Kinesis Firehose delivery stream is the streaming
      #   source to be updated, provides an updated stream Amazon Resource
      #   Name (ARN) and IAM role ARN.
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
      #   Kinesis Analytics creates for the specific streaming source).
      #   @return [Types::InputParallelismUpdate]
      class InputUpdate < Struct.new(
        :input_id,
        :name_prefix_update,
        :kinesis_streams_input_update,
        :kinesis_firehose_input_update,
        :input_schema_update,
        :input_parallelism_update)
        include Aws::Structure
      end

      # Provides additional mapping information when JSON is the record format
      # on the streaming source.
      # @note When making an API call, pass JSONMappingParameters
      #   data as a hash:
      #
      #       {
      #         record_row_path: "RecordRowPath", # required
      #       }
      # @!attribute [rw] record_row_path
      #   Path to the top-level parent that contains the records.
      #
      #   For example, consider the following JSON record:
      #
      #   In the `RecordRowPath`, `"$"` refers to the root and path
      #   `"$.vehicle.Model"` refers to the specific `"Model"` key in the
      #   JSON.
      #   @return [String]
      class JSONMappingParameters < Struct.new(
        :record_row_path)
        include Aws::Structure
      end

      # Identifies an Amazon Kinesis Firehose delivery stream as the streaming
      # source. You provide the Firehose delivery stream's Amazon Resource
      # Name (ARN) and an IAM role ARN that enables Amazon Kinesis Analytics
      # to access the stream on your behalf.
      # @note When making an API call, pass KinesisFirehoseInput
      #   data as a hash:
      #
      #       {
      #         resource_arn: "ResourceARN", # required
      #         role_arn: "RoleARN", # required
      #       }
      # @!attribute [rw] resource_arn
      #   ARN of the input Firehose delivery stream.
      #   @return [String]
      #
      # @!attribute [rw] role_arn
      #   ARN of the IAM role that Amazon Kinesis Analytics can assume to
      #   access the stream on your behalf. You need to make sure the role has
      #   necessary permissions to access the stream.
      #   @return [String]
      class KinesisFirehoseInput < Struct.new(
        :resource_arn,
        :role_arn)
        include Aws::Structure
      end

      # Describes the Amazon Kinesis Firehose delivery stream that is
      # configured as the streaming source in the application input
      # configuration.
      # @!attribute [rw] resource_arn
      #   Amazon Resource Name (ARN) of the Amazon Kinesis Firehose delivery
      #   stream.
      #   @return [String]
      #
      # @!attribute [rw] role_arn
      #   ARN of the IAM role that Amazon Kinesis Analytics assumes to access
      #   the stream.
      #   @return [String]
      class KinesisFirehoseInputDescription < Struct.new(
        :resource_arn,
        :role_arn)
        include Aws::Structure
      end

      # When updating application input configuration, provides information
      # about an Amazon Kinesis Firehose delivery stream as the streaming
      # source.
      # @note When making an API call, pass KinesisFirehoseInputUpdate
      #   data as a hash:
      #
      #       {
      #         resource_arn_update: "ResourceARN",
      #         role_arn_update: "RoleARN",
      #       }
      # @!attribute [rw] resource_arn_update
      #   ARN of the input Amazon Kinesis Firehose delivery stream to read.
      #   @return [String]
      #
      # @!attribute [rw] role_arn_update
      #   Amazon Resource Name (ARN) of the IAM role that Amazon Kinesis
      #   Analytics can assume to access the stream on your behalf. You need
      #   to grant necessary permissions to this role.
      #   @return [String]
      class KinesisFirehoseInputUpdate < Struct.new(
        :resource_arn_update,
        :role_arn_update)
        include Aws::Structure
      end

      # When configuring application output, identifies an Amazon Kinesis
      # Firehose delivery stream as the destination. You provide the stream
      # Amazon Resource Name (ARN) and an IAM role that enables Amazon Kinesis
      # Analytics to write to the stream on your behalf.
      # @note When making an API call, pass KinesisFirehoseOutput
      #   data as a hash:
      #
      #       {
      #         resource_arn: "ResourceARN", # required
      #         role_arn: "RoleARN", # required
      #       }
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
      class KinesisFirehoseOutput < Struct.new(
        :resource_arn,
        :role_arn)
        include Aws::Structure
      end

      # For an application output, describes the Amazon Kinesis Firehose
      # delivery stream configured as its destination.
      # @!attribute [rw] resource_arn
      #   Amazon Resource Name (ARN) of the Amazon Kinesis Firehose delivery
      #   stream.
      #   @return [String]
      #
      # @!attribute [rw] role_arn
      #   ARN of the IAM role that Amazon Kinesis Analytics can assume to
      #   access the stream.
      #   @return [String]
      class KinesisFirehoseOutputDescription < Struct.new(
        :resource_arn,
        :role_arn)
        include Aws::Structure
      end

      # When updating an output configuration using the UpdateApplication
      # operation, provides information about an Amazon Kinesis Firehose
      # delivery stream configured as the destination.
      # @note When making an API call, pass KinesisFirehoseOutputUpdate
      #   data as a hash:
      #
      #       {
      #         resource_arn_update: "ResourceARN",
      #         role_arn_update: "RoleARN",
      #       }
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
      class KinesisFirehoseOutputUpdate < Struct.new(
        :resource_arn_update,
        :role_arn_update)
        include Aws::Structure
      end

      # Identifies an Amazon Kinesis stream as the streaming source. You
      # provide the stream's ARN and an IAM role ARN that enables Amazon
      # Kinesis Analytics to access the stream on your behalf.
      # @note When making an API call, pass KinesisStreamsInput
      #   data as a hash:
      #
      #       {
      #         resource_arn: "ResourceARN", # required
      #         role_arn: "RoleARN", # required
      #       }
      # @!attribute [rw] resource_arn
      #   ARN of the input Amazon Kinesis stream to read.
      #   @return [String]
      #
      # @!attribute [rw] role_arn
      #   ARN of the IAM role that Amazon Kinesis Analytics can assume to
      #   access the stream on your behalf. You need to grant the necessary
      #   permissions to this role.
      #   @return [String]
      class KinesisStreamsInput < Struct.new(
        :resource_arn,
        :role_arn)
        include Aws::Structure
      end

      # Describes the Amazon Kinesis stream that is configured as the
      # streaming source in the application input configuration.
      # @!attribute [rw] resource_arn
      #   Amazon Resource Name (ARN) of the Amazon Kinesis stream.
      #   @return [String]
      #
      # @!attribute [rw] role_arn
      #   ARN of the IAM role that Amazon Kinesis Analytics can assume to
      #   access the stream.
      #   @return [String]
      class KinesisStreamsInputDescription < Struct.new(
        :resource_arn,
        :role_arn)
        include Aws::Structure
      end

      # When updating application input configuration, provides information
      # about an Amazon Kinesis stream as the streaming source.
      # @note When making an API call, pass KinesisStreamsInputUpdate
      #   data as a hash:
      #
      #       {
      #         resource_arn_update: "ResourceARN",
      #         role_arn_update: "RoleARN",
      #       }
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
      class KinesisStreamsInputUpdate < Struct.new(
        :resource_arn_update,
        :role_arn_update)
        include Aws::Structure
      end

      # When configuring application output, identifies a Amazon Kinesis
      # stream as the destination. You provide the stream Amazon Resource Name
      # (ARN) and also an IAM role ARN that Amazon Kinesis Analytics can use
      # to write to the stream on your behalf.
      # @note When making an API call, pass KinesisStreamsOutput
      #   data as a hash:
      #
      #       {
      #         resource_arn: "ResourceARN", # required
      #         role_arn: "RoleARN", # required
      #       }
      # @!attribute [rw] resource_arn
      #   ARN of the destination Amazon Kinesis stream to write to.
      #   @return [String]
      #
      # @!attribute [rw] role_arn
      #   ARN of the IAM role that Amazon Kinesis Analytics can assume to
      #   write to the destination stream on your behalf. You need to grant
      #   the necessary permissions to this role.
      #   @return [String]
      class KinesisStreamsOutput < Struct.new(
        :resource_arn,
        :role_arn)
        include Aws::Structure
      end

      # For an application output, describes the Amazon Kinesis stream
      # configured as its destination.
      # @!attribute [rw] resource_arn
      #   Amazon Resource Name (ARN) of the Amazon Kinesis stream.
      #   @return [String]
      #
      # @!attribute [rw] role_arn
      #   ARN of the IAM role that Amazon Kinesis Analytics can assume to
      #   access the stream.
      #   @return [String]
      class KinesisStreamsOutputDescription < Struct.new(
        :resource_arn,
        :role_arn)
        include Aws::Structure
      end

      # When updating an output configuration using the UpdateApplication
      # operation, provides information about an Amazon Kinesis stream
      # configured as the destination.
      # @note When making an API call, pass KinesisStreamsOutputUpdate
      #   data as a hash:
      #
      #       {
      #         resource_arn_update: "ResourceARN",
      #         role_arn_update: "RoleARN",
      #       }
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
      class KinesisStreamsOutputUpdate < Struct.new(
        :resource_arn_update,
        :role_arn_update)
        include Aws::Structure
      end

      # @note When making an API call, pass ListApplicationsRequest
      #   data as a hash:
      #
      #       {
      #         limit: 1,
      #         exclusive_start_application_name: "ApplicationName",
      #       }
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
      class ListApplicationsResponse < Struct.new(
        :application_summaries,
        :has_more_applications)
        include Aws::Structure
      end

      # When configuring application input at the time of creating or updating
      # an application, provides additional mapping information specific to
      # the record format (such as JSON, CSV, or record fields delimited by
      # some delimiter) on the streaming source.
      # @note When making an API call, pass MappingParameters
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
      # @!attribute [rw] json_mapping_parameters
      #   Provides additional mapping information when JSON is the record
      #   format on the streaming source.
      #   @return [Types::JSONMappingParameters]
      #
      # @!attribute [rw] csv_mapping_parameters
      #   Provides additional mapping information when the record format uses
      #   delimiters (for example, CSV).
      #   @return [Types::CSVMappingParameters]
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
      # You can configure your application to write output to up to five
      # destinations.
      # @note When making an API call, pass Output
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
      #         destination_schema: { # required
      #           record_format_type: "JSON", # accepts JSON, CSV
      #         },
      #       }
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
      # @!attribute [rw] destination_schema
      #   Describes the data format when records are written to the
      #   destination. For more information, see [Configuring Application
      #   Output][1].
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-output.html
      #   @return [Types::DestinationSchema]
      class Output < Struct.new(
        :name,
        :kinesis_streams_output,
        :kinesis_firehose_output,
        :destination_schema)
        include Aws::Structure
      end

      # Describes the application output configuration, which includes the
      # in-application stream name and the destination where the stream data
      # is written. The destination can be an Amazon Kinesis stream or an
      # Amazon Kinesis Firehose delivery stream.
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
      # @!attribute [rw] destination_schema
      #   Data format used for writing data to the destination.
      #   @return [Types::DestinationSchema]
      class OutputDescription < Struct.new(
        :output_id,
        :name,
        :kinesis_streams_output_description,
        :kinesis_firehose_output_description,
        :destination_schema)
        include Aws::Structure
      end

      # Describes updates to the output configuration identified by the
      # `OutputId`.
      # @note When making an API call, pass OutputUpdate
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
      #         destination_schema_update: {
      #           record_format_type: "JSON", # accepts JSON, CSV
      #         },
      #       }
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
      #   Describes a Amazon Kinesis Firehose delivery stream as the
      #   destination for the output.
      #   @return [Types::KinesisFirehoseOutputUpdate]
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
      class OutputUpdate < Struct.new(
        :output_id,
        :name_update,
        :kinesis_streams_output_update,
        :kinesis_firehose_output_update,
        :destination_schema_update)
        include Aws::Structure
      end

      # Describes the mapping of each data element in the streaming source to
      # the corresponding column in the in-application stream.
      #
      # Also used to describe the format of the reference data source.
      # @note When making an API call, pass RecordColumn
      #   data as a hash:
      #
      #       {
      #         name: "RecordColumnName", # required
      #         mapping: "RecordColumnMapping",
      #         sql_type: "RecordColumnSqlType", # required
      #       }
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
      class RecordColumn < Struct.new(
        :name,
        :mapping,
        :sql_type)
        include Aws::Structure
      end

      # Describes the record format and relevant mapping information that
      # should be applied to schematize the records on the stream.
      # @note When making an API call, pass RecordFormat
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
      # @note When making an API call, pass ReferenceDataSource
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
      # @!attribute [rw] table_name
      #   Name of the in-application table to create.
      #   @return [String]
      #
      # @!attribute [rw] s3_reference_data_source
      #   Identifies the S3 bucket and object that contains the reference
      #   data. Also identifies the IAM role Amazon Kinesis Analytics can
      #   assume to read this object on your behalf.
      #
      #   An Amazon Kinesis Analytics application loads reference data only
      #   once. If the data changes, you call the UpdateApplication operation
      #   to trigger reloading of data into your application.
      #   @return [Types::S3ReferenceDataSource]
      #
      # @!attribute [rw] reference_schema
      #   Describes the format of the data in the streaming source, and how
      #   each data element maps to corresponding columns created in the
      #   in-application stream.
      #   @return [Types::SourceSchema]
      class ReferenceDataSource < Struct.new(
        :table_name,
        :s3_reference_data_source,
        :reference_schema)
        include Aws::Structure
      end

      # Describes the reference data source configured for an application.
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
      # @note When making an API call, pass ReferenceDataSourceUpdate
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
      class ReferenceDataSourceUpdate < Struct.new(
        :reference_id,
        :table_name_update,
        :s3_reference_data_source_update,
        :reference_schema_update)
        include Aws::Structure
      end

      # Identifies the S3 bucket and object that contains the reference data.
      # Also identifies the IAM role Amazon Kinesis Analytics can assume to
      # read this object on your behalf.
      #
      # An Amazon Kinesis Analytics application loads reference data only
      # once. If the data changes, you call the UpdateApplication operation to
      # trigger reloading of data into your application.
      # @note When making an API call, pass S3ReferenceDataSource
      #   data as a hash:
      #
      #       {
      #         bucket_arn: "BucketARN", # required
      #         file_key: "FileKey", # required
      #         reference_role_arn: "RoleARN", # required
      #       }
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
      class S3ReferenceDataSource < Struct.new(
        :bucket_arn,
        :file_key,
        :reference_role_arn)
        include Aws::Structure
      end

      # Provides the bucket name and object key name that stores the reference
      # data.
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
      class S3ReferenceDataSourceDescription < Struct.new(
        :bucket_arn,
        :file_key,
        :reference_role_arn)
        include Aws::Structure
      end

      # Describes the S3 bucket name, object key name, and IAM role that
      # Amazon Kinesis Analytics can assume to read the Amazon S3 object on
      # your behalf and populate the in-application reference table.
      # @note When making an API call, pass S3ReferenceDataSourceUpdate
      #   data as a hash:
      #
      #       {
      #         bucket_arn_update: "BucketARN",
      #         file_key_update: "FileKey",
      #         reference_role_arn_update: "RoleARN",
      #       }
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
      class S3ReferenceDataSourceUpdate < Struct.new(
        :bucket_arn_update,
        :file_key_update,
        :reference_role_arn_update)
        include Aws::Structure
      end

      # Describes the format of the data in the streaming source, and how each
      # data element maps to corresponding columns created in the
      # in-application stream.
      # @note When making an API call, pass SourceSchema
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
      class SourceSchema < Struct.new(
        :record_format,
        :record_encoding,
        :record_columns)
        include Aws::Structure
      end

      # @note When making an API call, pass StartApplicationRequest
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
      class StartApplicationRequest < Struct.new(
        :application_name,
        :input_configurations)
        include Aws::Structure
      end

      class StartApplicationResponse < Aws::EmptyStructure; end

      # @note When making an API call, pass StopApplicationRequest
      #   data as a hash:
      #
      #       {
      #         application_name: "ApplicationName", # required
      #       }
      # @!attribute [rw] application_name
      #   Name of the running application to stop.
      #   @return [String]
      class StopApplicationRequest < Struct.new(
        :application_name)
        include Aws::Structure
      end

      class StopApplicationResponse < Aws::EmptyStructure; end

      # @note When making an API call, pass UpdateApplicationRequest
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
      #         },
      #       }
      # @!attribute [rw] application_name
      #   Name of the Kinesis Analytics application to update.
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
      class UpdateApplicationRequest < Struct.new(
        :application_name,
        :current_application_version_id,
        :application_update)
        include Aws::Structure
      end

      class UpdateApplicationResponse < Aws::EmptyStructure; end

    end
  end
end
