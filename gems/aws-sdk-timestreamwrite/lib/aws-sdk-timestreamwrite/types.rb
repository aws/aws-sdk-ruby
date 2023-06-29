# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::TimestreamWrite
  module Types

    # You are not authorized to perform this action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-write-2018-11-01/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about the progress of a batch load task.
    #
    # @!attribute [rw] records_processed
    #   @return [Integer]
    #
    # @!attribute [rw] records_ingested
    #   @return [Integer]
    #
    # @!attribute [rw] parse_failures
    #   @return [Integer]
    #
    # @!attribute [rw] record_ingestion_failures
    #   @return [Integer]
    #
    # @!attribute [rw] file_failures
    #   @return [Integer]
    #
    # @!attribute [rw] bytes_metered
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-write-2018-11-01/BatchLoadProgressReport AWS API Documentation
    #
    class BatchLoadProgressReport < Struct.new(
      :records_processed,
      :records_ingested,
      :parse_failures,
      :record_ingestion_failures,
      :file_failures,
      :bytes_metered)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about a batch load task.
    #
    # @!attribute [rw] task_id
    #   The ID of the batch load task.
    #   @return [String]
    #
    # @!attribute [rw] task_status
    #   Status of the batch load task.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   Database name for the database into which a batch load task loads
    #   data.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   Table name for the table into which a batch load task loads data.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The time when the Timestream batch load task was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_time
    #   The time when the Timestream batch load task was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] resumable_until
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-write-2018-11-01/BatchLoadTask AWS API Documentation
    #
    class BatchLoadTask < Struct.new(
      :task_id,
      :task_status,
      :database_name,
      :table_name,
      :creation_time,
      :last_updated_time,
      :resumable_until)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about a batch load task.
    #
    # @!attribute [rw] task_id
    #   The ID of the batch load task.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   @return [String]
    #
    # @!attribute [rw] data_source_configuration
    #   Configuration details about the data source for a batch load task.
    #   @return [Types::DataSourceConfiguration]
    #
    # @!attribute [rw] progress_report
    #   @return [Types::BatchLoadProgressReport]
    #
    # @!attribute [rw] report_configuration
    #   Report configuration for a batch load task. This contains details
    #   about where error reports are stored.
    #   @return [Types::ReportConfiguration]
    #
    # @!attribute [rw] data_model_configuration
    #   Data model configuration for a batch load task. This contains
    #   details about where a data model for a batch load task is stored.
    #   @return [Types::DataModelConfiguration]
    #
    # @!attribute [rw] target_database_name
    #   @return [String]
    #
    # @!attribute [rw] target_table_name
    #   @return [String]
    #
    # @!attribute [rw] task_status
    #   Status of the batch load task.
    #   @return [String]
    #
    # @!attribute [rw] record_version
    #   @return [Integer]
    #
    # @!attribute [rw] creation_time
    #   The time when the Timestream batch load task was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_time
    #   The time when the Timestream batch load task was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] resumable_until
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-write-2018-11-01/BatchLoadTaskDescription AWS API Documentation
    #
    class BatchLoadTaskDescription < Struct.new(
      :task_id,
      :error_message,
      :data_source_configuration,
      :progress_report,
      :report_configuration,
      :data_model_configuration,
      :target_database_name,
      :target_table_name,
      :task_status,
      :record_version,
      :creation_time,
      :last_updated_time,
      :resumable_until)
      SENSITIVE = []
      include Aws::Structure
    end

    # Timestream was unable to process this request because it contains
    # resource that already exists.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-write-2018-11-01/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] data_model_configuration
    #   @return [Types::DataModelConfiguration]
    #
    # @!attribute [rw] data_source_configuration
    #   Defines configuration details about the data source for a batch load
    #   task.
    #   @return [Types::DataSourceConfiguration]
    #
    # @!attribute [rw] report_configuration
    #   Report configuration for a batch load task. This contains details
    #   about where error reports are stored.
    #   @return [Types::ReportConfiguration]
    #
    # @!attribute [rw] target_database_name
    #   Target Timestream database for a batch load task.
    #   @return [String]
    #
    # @!attribute [rw] target_table_name
    #   Target Timestream table for a batch load task.
    #   @return [String]
    #
    # @!attribute [rw] record_version
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-write-2018-11-01/CreateBatchLoadTaskRequest AWS API Documentation
    #
    class CreateBatchLoadTaskRequest < Struct.new(
      :client_token,
      :data_model_configuration,
      :data_source_configuration,
      :report_configuration,
      :target_database_name,
      :target_table_name,
      :record_version)
      SENSITIVE = [:client_token]
      include Aws::Structure
    end

    # @!attribute [rw] task_id
    #   The ID of the batch load task.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-write-2018-11-01/CreateBatchLoadTaskResponse AWS API Documentation
    #
    class CreateBatchLoadTaskResponse < Struct.new(
      :task_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] database_name
    #   The name of the Timestream database.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   The KMS key for the database. If the KMS key is not specified, the
    #   database will be encrypted with a Timestream managed KMS key located
    #   in your account. For more information, see [Amazon Web Services
    #   managed keys][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-managed-cmk
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of key-value pairs to label the table.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-write-2018-11-01/CreateDatabaseRequest AWS API Documentation
    #
    class CreateDatabaseRequest < Struct.new(
      :database_name,
      :kms_key_id,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] database
    #   The newly created Timestream database.
    #   @return [Types::Database]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-write-2018-11-01/CreateDatabaseResponse AWS API Documentation
    #
    class CreateDatabaseResponse < Struct.new(
      :database)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] database_name
    #   The name of the Timestream database.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   The name of the Timestream table.
    #   @return [String]
    #
    # @!attribute [rw] retention_properties
    #   The duration for which your time-series data must be stored in the
    #   memory store and the magnetic store.
    #   @return [Types::RetentionProperties]
    #
    # @!attribute [rw] tags
    #   A list of key-value pairs to label the table.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] magnetic_store_write_properties
    #   Contains properties to set on the table when enabling magnetic store
    #   writes.
    #   @return [Types::MagneticStoreWriteProperties]
    #
    # @!attribute [rw] schema
    #   The schema of the table.
    #   @return [Types::Schema]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-write-2018-11-01/CreateTableRequest AWS API Documentation
    #
    class CreateTableRequest < Struct.new(
      :database_name,
      :table_name,
      :retention_properties,
      :tags,
      :magnetic_store_write_properties,
      :schema)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] table
    #   The newly created Timestream table.
    #   @return [Types::Table]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-write-2018-11-01/CreateTableResponse AWS API Documentation
    #
    class CreateTableResponse < Struct.new(
      :table)
      SENSITIVE = []
      include Aws::Structure
    end

    # A delimited data format where the column separator can be a comma and
    # the record separator is a newline character.
    #
    # @!attribute [rw] column_separator
    #   Column separator can be one of comma (','), pipe ('\|), semicolon
    #   (';'), tab('/t'), or blank space (' ').
    #   @return [String]
    #
    # @!attribute [rw] escape_char
    #   Escape character can be one of
    #   @return [String]
    #
    # @!attribute [rw] quote_char
    #   Can be single quote (') or double quote (").
    #   @return [String]
    #
    # @!attribute [rw] null_value
    #   Can be blank space (' ').
    #   @return [String]
    #
    # @!attribute [rw] trim_white_space
    #   Specifies to trim leading and trailing white space.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-write-2018-11-01/CsvConfiguration AWS API Documentation
    #
    class CsvConfiguration < Struct.new(
      :column_separator,
      :escape_char,
      :quote_char,
      :null_value,
      :trim_white_space)
      SENSITIVE = []
      include Aws::Structure
    end

    # Data model for a batch load task.
    #
    # @!attribute [rw] time_column
    #   Source column to be mapped to time.
    #   @return [String]
    #
    # @!attribute [rw] time_unit
    #   The granularity of the timestamp unit. It indicates if the time
    #   value is in seconds, milliseconds, nanoseconds, or other supported
    #   values. Default is `MILLISECONDS`.
    #   @return [String]
    #
    # @!attribute [rw] dimension_mappings
    #   Source to target mappings for dimensions.
    #   @return [Array<Types::DimensionMapping>]
    #
    # @!attribute [rw] multi_measure_mappings
    #   Source to target mappings for multi-measure records.
    #   @return [Types::MultiMeasureMappings]
    #
    # @!attribute [rw] mixed_measure_mappings
    #   Source to target mappings for measures.
    #   @return [Array<Types::MixedMeasureMapping>]
    #
    # @!attribute [rw] measure_name_column
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-write-2018-11-01/DataModel AWS API Documentation
    #
    class DataModel < Struct.new(
      :time_column,
      :time_unit,
      :dimension_mappings,
      :multi_measure_mappings,
      :mixed_measure_mappings,
      :measure_name_column)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] data_model
    #   @return [Types::DataModel]
    #
    # @!attribute [rw] data_model_s3_configuration
    #   @return [Types::DataModelS3Configuration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-write-2018-11-01/DataModelConfiguration AWS API Documentation
    #
    class DataModelConfiguration < Struct.new(
      :data_model,
      :data_model_s3_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] bucket_name
    #   @return [String]
    #
    # @!attribute [rw] object_key
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-write-2018-11-01/DataModelS3Configuration AWS API Documentation
    #
    class DataModelS3Configuration < Struct.new(
      :bucket_name,
      :object_key)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines configuration details about the data source.
    #
    # @!attribute [rw] data_source_s3_configuration
    #   Configuration of an S3 location for a file which contains data to
    #   load.
    #   @return [Types::DataSourceS3Configuration]
    #
    # @!attribute [rw] csv_configuration
    #   A delimited data format where the column separator can be a comma
    #   and the record separator is a newline character.
    #   @return [Types::CsvConfiguration]
    #
    # @!attribute [rw] data_format
    #   This is currently CSV.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-write-2018-11-01/DataSourceConfiguration AWS API Documentation
    #
    class DataSourceConfiguration < Struct.new(
      :data_source_s3_configuration,
      :csv_configuration,
      :data_format)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] bucket_name
    #   The bucket name of the customer S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] object_key_prefix
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-write-2018-11-01/DataSourceS3Configuration AWS API Documentation
    #
    class DataSourceS3Configuration < Struct.new(
      :bucket_name,
      :object_key_prefix)
      SENSITIVE = []
      include Aws::Structure
    end

    # A top-level container for a table. Databases and tables are the
    # fundamental management concepts in Amazon Timestream. All tables in a
    # database are encrypted with the same KMS key.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name that uniquely identifies this database.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The name of the Timestream database.
    #   @return [String]
    #
    # @!attribute [rw] table_count
    #   The total number of tables found within a Timestream database.
    #   @return [Integer]
    #
    # @!attribute [rw] kms_key_id
    #   The identifier of the KMS key used to encrypt the data stored in the
    #   database.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The time when the database was created, calculated from the Unix
    #   epoch time.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_time
    #   The last time that this database was updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-write-2018-11-01/Database AWS API Documentation
    #
    class Database < Struct.new(
      :arn,
      :database_name,
      :table_count,
      :kms_key_id,
      :creation_time,
      :last_updated_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] database_name
    #   The name of the Timestream database to be deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-write-2018-11-01/DeleteDatabaseRequest AWS API Documentation
    #
    class DeleteDatabaseRequest < Struct.new(
      :database_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] database_name
    #   The name of the database where the Timestream database is to be
    #   deleted.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   The name of the Timestream table to be deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-write-2018-11-01/DeleteTableRequest AWS API Documentation
    #
    class DeleteTableRequest < Struct.new(
      :database_name,
      :table_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] task_id
    #   The ID of the batch load task.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-write-2018-11-01/DescribeBatchLoadTaskRequest AWS API Documentation
    #
    class DescribeBatchLoadTaskRequest < Struct.new(
      :task_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] batch_load_task_description
    #   Description of the batch load task.
    #   @return [Types::BatchLoadTaskDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-write-2018-11-01/DescribeBatchLoadTaskResponse AWS API Documentation
    #
    class DescribeBatchLoadTaskResponse < Struct.new(
      :batch_load_task_description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] database_name
    #   The name of the Timestream database.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-write-2018-11-01/DescribeDatabaseRequest AWS API Documentation
    #
    class DescribeDatabaseRequest < Struct.new(
      :database_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] database
    #   The name of the Timestream table.
    #   @return [Types::Database]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-write-2018-11-01/DescribeDatabaseResponse AWS API Documentation
    #
    class DescribeDatabaseResponse < Struct.new(
      :database)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-write-2018-11-01/DescribeEndpointsRequest AWS API Documentation
    #
    class DescribeEndpointsRequest < Aws::EmptyStructure; end

    # @!attribute [rw] endpoints
    #   An `Endpoints` object is returned when a `DescribeEndpoints` request
    #   is made.
    #   @return [Array<Types::Endpoint>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-write-2018-11-01/DescribeEndpointsResponse AWS API Documentation
    #
    class DescribeEndpointsResponse < Struct.new(
      :endpoints)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] database_name
    #   The name of the Timestream database.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   The name of the Timestream table.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-write-2018-11-01/DescribeTableRequest AWS API Documentation
    #
    class DescribeTableRequest < Struct.new(
      :database_name,
      :table_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] table
    #   The Timestream table.
    #   @return [Types::Table]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-write-2018-11-01/DescribeTableResponse AWS API Documentation
    #
    class DescribeTableResponse < Struct.new(
      :table)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the metadata attributes of the time series. For example,
    # the name and Availability Zone of an EC2 instance or the name of the
    # manufacturer of a wind turbine are dimensions.
    #
    # @!attribute [rw] name
    #   Dimension represents the metadata attributes of the time series. For
    #   example, the name and Availability Zone of an EC2 instance or the
    #   name of the manufacturer of a wind turbine are dimensions.
    #
    #   For constraints on dimension names, see [Naming Constraints][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/timestream/latest/developerguide/ts-limits.html#limits.naming
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the dimension.
    #   @return [String]
    #
    # @!attribute [rw] dimension_value_type
    #   The data type of the dimension for the time-series data point.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-write-2018-11-01/Dimension AWS API Documentation
    #
    class Dimension < Struct.new(
      :name,
      :value,
      :dimension_value_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] source_column
    #   @return [String]
    #
    # @!attribute [rw] destination_column
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-write-2018-11-01/DimensionMapping AWS API Documentation
    #
    class DimensionMapping < Struct.new(
      :source_column,
      :destination_column)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents an available endpoint against which to make API calls
    # against, as well as the TTL for that endpoint.
    #
    # @!attribute [rw] address
    #   An endpoint address.
    #   @return [String]
    #
    # @!attribute [rw] cache_period_in_minutes
    #   The TTL for the endpoint, in minutes.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-write-2018-11-01/Endpoint AWS API Documentation
    #
    class Endpoint < Struct.new(
      :address,
      :cache_period_in_minutes)
      SENSITIVE = []
      include Aws::Structure
    end

    # Timestream was unable to fully process this request because of an
    # internal server error.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-write-2018-11-01/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The requested endpoint was not valid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-write-2018-11-01/InvalidEndpointException AWS API Documentation
    #
    class InvalidEndpointException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A token to specify where to start paginating. This is the NextToken
    #   from a previously truncated response.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The total number of items to return in the output. If the total
    #   number of items available is more than the value specified, a
    #   NextToken is provided in the output. To resume pagination, provide
    #   the NextToken value as argument of a subsequent API invocation.
    #   @return [Integer]
    #
    # @!attribute [rw] task_status
    #   Status of the batch load task.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-write-2018-11-01/ListBatchLoadTasksRequest AWS API Documentation
    #
    class ListBatchLoadTasksRequest < Struct.new(
      :next_token,
      :max_results,
      :task_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A token to specify where to start paginating. Provide the next
    #   ListBatchLoadTasksRequest.
    #   @return [String]
    #
    # @!attribute [rw] batch_load_tasks
    #   A list of batch load task details.
    #   @return [Array<Types::BatchLoadTask>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-write-2018-11-01/ListBatchLoadTasksResponse AWS API Documentation
    #
    class ListBatchLoadTasksResponse < Struct.new(
      :next_token,
      :batch_load_tasks)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The pagination token. To resume pagination, provide the NextToken
    #   value as argument of a subsequent API invocation.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The total number of items to return in the output. If the total
    #   number of items available is more than the value specified, a
    #   NextToken is provided in the output. To resume pagination, provide
    #   the NextToken value as argument of a subsequent API invocation.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-write-2018-11-01/ListDatabasesRequest AWS API Documentation
    #
    class ListDatabasesRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] databases
    #   A list of database names.
    #   @return [Array<Types::Database>]
    #
    # @!attribute [rw] next_token
    #   The pagination token. This parameter is returned when the response
    #   is truncated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-write-2018-11-01/ListDatabasesResponse AWS API Documentation
    #
    class ListDatabasesResponse < Struct.new(
      :databases,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] database_name
    #   The name of the Timestream database.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The pagination token. To resume pagination, provide the NextToken
    #   value as argument of a subsequent API invocation.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The total number of items to return in the output. If the total
    #   number of items available is more than the value specified, a
    #   NextToken is provided in the output. To resume pagination, provide
    #   the NextToken value as argument of a subsequent API invocation.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-write-2018-11-01/ListTablesRequest AWS API Documentation
    #
    class ListTablesRequest < Struct.new(
      :database_name,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tables
    #   A list of tables.
    #   @return [Array<Types::Table>]
    #
    # @!attribute [rw] next_token
    #   A token to specify where to start paginating. This is the NextToken
    #   from a previously truncated response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-write-2018-11-01/ListTablesResponse AWS API Documentation
    #
    class ListTablesResponse < Struct.new(
      :tables,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Timestream resource with tags to be listed. This value is an
    #   Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-write-2018-11-01/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The tags currently associated with the Timestream resource.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-write-2018-11-01/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The location to write error reports for records rejected,
    # asynchronously, during magnetic store writes.
    #
    # @!attribute [rw] s3_configuration
    #   Configuration of an S3 location to write error reports for records
    #   rejected, asynchronously, during magnetic store writes.
    #   @return [Types::S3Configuration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-write-2018-11-01/MagneticStoreRejectedDataLocation AWS API Documentation
    #
    class MagneticStoreRejectedDataLocation < Struct.new(
      :s3_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The set of properties on a table for configuring magnetic store
    # writes.
    #
    # @!attribute [rw] enable_magnetic_store_writes
    #   A flag to enable magnetic store writes.
    #   @return [Boolean]
    #
    # @!attribute [rw] magnetic_store_rejected_data_location
    #   The location to write error reports for records rejected
    #   asynchronously during magnetic store writes.
    #   @return [Types::MagneticStoreRejectedDataLocation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-write-2018-11-01/MagneticStoreWriteProperties AWS API Documentation
    #
    class MagneticStoreWriteProperties < Struct.new(
      :enable_magnetic_store_writes,
      :magnetic_store_rejected_data_location)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the data attribute of the time series. For example, the CPU
    # utilization of an EC2 instance or the RPM of a wind turbine are
    # measures. MeasureValue has both name and value.
    #
    # MeasureValue is only allowed for type `MULTI`. Using `MULTI` type, you
    # can pass multiple data attributes associated with the same time series
    # in a single record
    #
    # @!attribute [rw] name
    #   The name of the MeasureValue.
    #
    #   For constraints on MeasureValue names, see [ Naming Constraints][1]
    #   in the Amazon Timestream Developer Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/timestream/latest/developerguide/ts-limits.html#limits.naming
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value for the MeasureValue. For information, see [Data
    #   types][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/timestream/latest/developerguide/writes.html#writes.data-types
    #   @return [String]
    #
    # @!attribute [rw] type
    #   Contains the data type of the MeasureValue for the time-series data
    #   point.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-write-2018-11-01/MeasureValue AWS API Documentation
    #
    class MeasureValue < Struct.new(
      :name,
      :value,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] measure_name
    #   @return [String]
    #
    # @!attribute [rw] source_column
    #   @return [String]
    #
    # @!attribute [rw] target_measure_name
    #   @return [String]
    #
    # @!attribute [rw] measure_value_type
    #   @return [String]
    #
    # @!attribute [rw] multi_measure_attribute_mappings
    #   @return [Array<Types::MultiMeasureAttributeMapping>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-write-2018-11-01/MixedMeasureMapping AWS API Documentation
    #
    class MixedMeasureMapping < Struct.new(
      :measure_name,
      :source_column,
      :target_measure_name,
      :measure_value_type,
      :multi_measure_attribute_mappings)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] source_column
    #   @return [String]
    #
    # @!attribute [rw] target_multi_measure_attribute_name
    #   @return [String]
    #
    # @!attribute [rw] measure_value_type
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-write-2018-11-01/MultiMeasureAttributeMapping AWS API Documentation
    #
    class MultiMeasureAttributeMapping < Struct.new(
      :source_column,
      :target_multi_measure_attribute_name,
      :measure_value_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] target_multi_measure_name
    #   @return [String]
    #
    # @!attribute [rw] multi_measure_attribute_mappings
    #   @return [Array<Types::MultiMeasureAttributeMapping>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-write-2018-11-01/MultiMeasureMappings AWS API Documentation
    #
    class MultiMeasureMappings < Struct.new(
      :target_multi_measure_name,
      :multi_measure_attribute_mappings)
      SENSITIVE = []
      include Aws::Structure
    end

    # An attribute used in partitioning data in a table. A dimension key
    # partitions data using the values of the dimension specified by the
    # dimension-name as partition key, while a measure key partitions data
    # using measure names (values of the 'measure\_name' column).
    #
    # @!attribute [rw] type
    #   The type of the partition key. Options are DIMENSION (dimension key)
    #   and MEASURE (measure key).
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the attribute used for a dimension key.
    #   @return [String]
    #
    # @!attribute [rw] enforcement_in_record
    #   The level of enforcement for the specification of a dimension key in
    #   ingested records. Options are REQUIRED (dimension key must be
    #   specified) and OPTIONAL (dimension key does not have to be
    #   specified).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-write-2018-11-01/PartitionKey AWS API Documentation
    #
    class PartitionKey < Struct.new(
      :type,
      :name,
      :enforcement_in_record)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a time-series data point being written into Timestream.
    # Each record contains an array of dimensions. Dimensions represent the
    # metadata attributes of a time-series data point, such as the instance
    # name or Availability Zone of an EC2 instance. A record also contains
    # the measure name, which is the name of the measure being collected
    # (for example, the CPU utilization of an EC2 instance). Additionally, a
    # record contains the measure value and the value type, which is the
    # data type of the measure value. Also, the record contains the
    # timestamp of when the measure was collected and the timestamp unit,
    # which represents the granularity of the timestamp.
    #
    # Records have a `Version` field, which is a 64-bit `long` that you can
    # use for updating data points. Writes of a duplicate record with the
    # same dimension, timestamp, and measure name but different measure
    # value will only succeed if the `Version` attribute of the record in
    # the write request is higher than that of the existing record.
    # Timestream defaults to a `Version` of `1` for records without the
    # `Version` field.
    #
    # @!attribute [rw] dimensions
    #   Contains the list of dimensions for time-series data points.
    #   @return [Array<Types::Dimension>]
    #
    # @!attribute [rw] measure_name
    #   Measure represents the data attribute of the time series. For
    #   example, the CPU utilization of an EC2 instance or the RPM of a wind
    #   turbine are measures.
    #   @return [String]
    #
    # @!attribute [rw] measure_value
    #   Contains the measure value for the time-series data point.
    #   @return [String]
    #
    # @!attribute [rw] measure_value_type
    #   Contains the data type of the measure value for the time-series data
    #   point. Default type is `DOUBLE`. For more information, see [Data
    #   types][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/timestream/latest/developerguide/writes.html#writes.data-types
    #   @return [String]
    #
    # @!attribute [rw] time
    #   Contains the time at which the measure value for the data point was
    #   collected. The time value plus the unit provides the time elapsed
    #   since the epoch. For example, if the time value is `12345` and the
    #   unit is `ms`, then `12345 ms` have elapsed since the epoch.
    #   @return [String]
    #
    # @!attribute [rw] time_unit
    #   The granularity of the timestamp unit. It indicates if the time
    #   value is in seconds, milliseconds, nanoseconds, or other supported
    #   values. Default is `MILLISECONDS`.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   64-bit attribute used for record updates. Write requests for
    #   duplicate data with a higher version number will update the existing
    #   measure value and version. In cases where the measure value is the
    #   same, `Version` will still be updated. Default value is `1`.
    #
    #   <note markdown="1"> `Version` must be `1` or greater, or you will receive a
    #   `ValidationException` error.
    #
    #    </note>
    #   @return [Integer]
    #
    # @!attribute [rw] measure_values
    #   Contains the list of MeasureValue for time-series data points.
    #
    #   This is only allowed for type `MULTI`. For scalar values, use
    #   `MeasureValue` attribute of the record directly.
    #   @return [Array<Types::MeasureValue>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-write-2018-11-01/Record AWS API Documentation
    #
    class Record < Struct.new(
      :dimensions,
      :measure_name,
      :measure_value,
      :measure_value_type,
      :time,
      :time_unit,
      :version,
      :measure_values)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information on the records ingested by this request.
    #
    # @!attribute [rw] total
    #   Total count of successfully ingested records.
    #   @return [Integer]
    #
    # @!attribute [rw] memory_store
    #   Count of records ingested into the memory store.
    #   @return [Integer]
    #
    # @!attribute [rw] magnetic_store
    #   Count of records ingested into the magnetic store.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-write-2018-11-01/RecordsIngested AWS API Documentation
    #
    class RecordsIngested < Struct.new(
      :total,
      :memory_store,
      :magnetic_store)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents records that were not successfully inserted into Timestream
    # due to data validation issues that must be resolved before reinserting
    # time-series data into the system.
    #
    # @!attribute [rw] record_index
    #   The index of the record in the input request for WriteRecords.
    #   Indexes begin with 0.
    #   @return [Integer]
    #
    # @!attribute [rw] reason
    #   The reason why a record was not successfully inserted into
    #   Timestream. Possible causes of failure include:
    #
    #   * Records with duplicate data where there are multiple records with
    #     the same dimensions, timestamps, and measure names but:
    #
    #     * Measure values are different
    #
    #     * Version is not present in the request, *or* the value of version
    #       in the new record is equal to or lower than the existing value
    #
    #     If Timestream rejects data for this case, the `ExistingVersion`
    #     field in the `RejectedRecords` response will indicate the current
    #     record’s version. To force an update, you can resend the request
    #     with a version for the record set to a value greater than the
    #     `ExistingVersion`.
    #
    #   * Records with timestamps that lie outside the retention duration of
    #     the memory store.
    #
    #     <note markdown="1"> When the retention window is updated, you will receive a
    #     `RejectedRecords` exception if you immediately try to ingest data
    #     within the new window. To avoid a `RejectedRecords` exception,
    #     wait until the duration of the new window to ingest new data. For
    #     further information, see [ Best Practices for Configuring
    #     Timestream][1] and [the explanation of how storage works in
    #     Timestream][2].
    #
    #      </note>
    #
    #   * Records with dimensions or measures that exceed the Timestream
    #     defined limits.
    #
    #   For more information, see [Access Management][3] in the Timestream
    #   Developer Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/timestream/latest/developerguide/best-practices.html#configuration
    #   [2]: https://docs.aws.amazon.com/timestream/latest/developerguide/storage.html
    #   [3]: https://docs.aws.amazon.com/timestream/latest/developerguide/ts-limits.html
    #   @return [String]
    #
    # @!attribute [rw] existing_version
    #   The existing version of the record. This value is populated in
    #   scenarios where an identical record exists with a higher version
    #   than the version in the write request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-write-2018-11-01/RejectedRecord AWS API Documentation
    #
    class RejectedRecord < Struct.new(
      :record_index,
      :reason,
      :existing_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # WriteRecords would throw this exception in the following cases:
    #
    # * Records with duplicate data where there are multiple records with
    #   the same dimensions, timestamps, and measure names but:
    #
    #   * Measure values are different
    #
    #   * Version is not present in the request *or* the value of version in
    #     the new record is equal to or lower than the existing value
    #
    #   In this case, if Timestream rejects data, the `ExistingVersion`
    #   field in the `RejectedRecords` response will indicate the current
    #   record’s version. To force an update, you can resend the request
    #   with a version for the record set to a value greater than the
    #   `ExistingVersion`.
    #
    # * Records with timestamps that lie outside the retention duration of
    #   the memory store.
    #
    # * Records with dimensions or measures that exceed the Timestream
    #   defined limits.
    #
    # For more information, see [Quotas][1] in the Amazon Timestream
    # Developer Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/timestream/latest/developerguide/ts-limits.html
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] rejected_records
    #   @return [Array<Types::RejectedRecord>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-write-2018-11-01/RejectedRecordsException AWS API Documentation
    #
    class RejectedRecordsException < Struct.new(
      :message,
      :rejected_records)
      SENSITIVE = []
      include Aws::Structure
    end

    # Report configuration for a batch load task. This contains details
    # about where error reports are stored.
    #
    # @!attribute [rw] report_s3_configuration
    #   Configuration of an S3 location to write error reports and events
    #   for a batch load.
    #   @return [Types::ReportS3Configuration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-write-2018-11-01/ReportConfiguration AWS API Documentation
    #
    class ReportConfiguration < Struct.new(
      :report_s3_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] bucket_name
    #   @return [String]
    #
    # @!attribute [rw] object_key_prefix
    #   @return [String]
    #
    # @!attribute [rw] encryption_option
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-write-2018-11-01/ReportS3Configuration AWS API Documentation
    #
    class ReportS3Configuration < Struct.new(
      :bucket_name,
      :object_key_prefix,
      :encryption_option,
      :kms_key_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The operation tried to access a nonexistent resource. The resource
    # might not be specified correctly, or its status might not be ACTIVE.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-write-2018-11-01/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] task_id
    #   The ID of the batch load task to resume.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-write-2018-11-01/ResumeBatchLoadTaskRequest AWS API Documentation
    #
    class ResumeBatchLoadTaskRequest < Struct.new(
      :task_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-write-2018-11-01/ResumeBatchLoadTaskResponse AWS API Documentation
    #
    class ResumeBatchLoadTaskResponse < Aws::EmptyStructure; end

    # Retention properties contain the duration for which your time-series
    # data must be stored in the magnetic store and the memory store.
    #
    # @!attribute [rw] memory_store_retention_period_in_hours
    #   The duration for which data must be stored in the memory store.
    #   @return [Integer]
    #
    # @!attribute [rw] magnetic_store_retention_period_in_days
    #   The duration for which data must be stored in the magnetic store.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-write-2018-11-01/RetentionProperties AWS API Documentation
    #
    class RetentionProperties < Struct.new(
      :memory_store_retention_period_in_hours,
      :magnetic_store_retention_period_in_days)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration that specifies an S3 location.
    #
    # @!attribute [rw] bucket_name
    #   The bucket name of the customer S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] object_key_prefix
    #   The object key preview for the customer S3 location.
    #   @return [String]
    #
    # @!attribute [rw] encryption_option
    #   The encryption option for the customer S3 location. Options are S3
    #   server-side encryption with an S3 managed key or Amazon Web Services
    #   managed key.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   The KMS key ID for the customer S3 location when encrypting with an
    #   Amazon Web Services managed key.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-write-2018-11-01/S3Configuration AWS API Documentation
    #
    class S3Configuration < Struct.new(
      :bucket_name,
      :object_key_prefix,
      :encryption_option,
      :kms_key_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # A Schema specifies the expected data model of the table.
    #
    # @!attribute [rw] composite_partition_key
    #   A non-empty list of partition keys defining the attributes used to
    #   partition the table data. The order of the list determines the
    #   partition hierarchy. The name and type of each partition key as well
    #   as the partition key order cannot be changed after the table is
    #   created. However, the enforcement level of each partition key can be
    #   changed.
    #   @return [Array<Types::PartitionKey>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-write-2018-11-01/Schema AWS API Documentation
    #
    class Schema < Struct.new(
      :composite_partition_key)
      SENSITIVE = []
      include Aws::Structure
    end

    # The instance quota of resource exceeded for this account.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-write-2018-11-01/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a database table in Timestream. Tables contain one or more
    # related time series. You can modify the retention duration of the
    # memory store and the magnetic store for a table.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name that uniquely identifies this table.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   The name of the Timestream table.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The name of the Timestream database that contains this table.
    #   @return [String]
    #
    # @!attribute [rw] table_status
    #   The current state of the table:
    #
    #   * `DELETING` - The table is being deleted.
    #
    #   * `ACTIVE` - The table is ready for use.
    #   @return [String]
    #
    # @!attribute [rw] retention_properties
    #   The retention duration for the memory store and magnetic store.
    #   @return [Types::RetentionProperties]
    #
    # @!attribute [rw] creation_time
    #   The time when the Timestream table was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_time
    #   The time when the Timestream table was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] magnetic_store_write_properties
    #   Contains properties to set on the table when enabling magnetic store
    #   writes.
    #   @return [Types::MagneticStoreWriteProperties]
    #
    # @!attribute [rw] schema
    #   The schema of the table.
    #   @return [Types::Schema]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-write-2018-11-01/Table AWS API Documentation
    #
    class Table < Struct.new(
      :arn,
      :table_name,
      :database_name,
      :table_status,
      :retention_properties,
      :creation_time,
      :last_updated_time,
      :magnetic_store_write_properties,
      :schema)
      SENSITIVE = []
      include Aws::Structure
    end

    # A tag is a label that you assign to a Timestream database and/or
    # table. Each tag consists of a key and an optional value, both of which
    # you define. With tags, you can categorize databases and/or tables, for
    # example, by purpose, owner, or environment.
    #
    # @!attribute [rw] key
    #   The key of the tag. Tag keys are case sensitive.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the tag. Tag values are case-sensitive and can be null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-write-2018-11-01/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   Identifies the Timestream resource to which tags should be added.
    #   This value is an Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to be assigned to the Timestream resource.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-write-2018-11-01/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-write-2018-11-01/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # Too many requests were made by a user and they exceeded the service
    # quotas. The request was throttled.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-write-2018-11-01/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Timestream resource that the tags will be removed from. This
    #   value is an Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   A list of tags keys. Existing tags of the resource whose keys are
    #   members of this list will be removed from the Timestream resource.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-write-2018-11-01/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-write-2018-11-01/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] database_name
    #   The name of the database.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   The identifier of the new KMS key (`KmsKeyId`) to be used to encrypt
    #   the data stored in the database. If the `KmsKeyId` currently
    #   registered with the database is the same as the `KmsKeyId` in the
    #   request, there will not be any update.
    #
    #   You can specify the `KmsKeyId` using any of the following:
    #
    #   * Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Key ARN:
    #     `arn:aws:kms:us-east-1:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Alias name: `alias/ExampleAlias`
    #
    #   * Alias ARN: `arn:aws:kms:us-east-1:111122223333:alias/ExampleAlias`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-write-2018-11-01/UpdateDatabaseRequest AWS API Documentation
    #
    class UpdateDatabaseRequest < Struct.new(
      :database_name,
      :kms_key_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] database
    #   A top-level container for a table. Databases and tables are the
    #   fundamental management concepts in Amazon Timestream. All tables in
    #   a database are encrypted with the same KMS key.
    #   @return [Types::Database]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-write-2018-11-01/UpdateDatabaseResponse AWS API Documentation
    #
    class UpdateDatabaseResponse < Struct.new(
      :database)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] database_name
    #   The name of the Timestream database.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   The name of the Timestream table.
    #   @return [String]
    #
    # @!attribute [rw] retention_properties
    #   The retention duration of the memory store and the magnetic store.
    #   @return [Types::RetentionProperties]
    #
    # @!attribute [rw] magnetic_store_write_properties
    #   Contains properties to set on the table when enabling magnetic store
    #   writes.
    #   @return [Types::MagneticStoreWriteProperties]
    #
    # @!attribute [rw] schema
    #   The schema of the table.
    #   @return [Types::Schema]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-write-2018-11-01/UpdateTableRequest AWS API Documentation
    #
    class UpdateTableRequest < Struct.new(
      :database_name,
      :table_name,
      :retention_properties,
      :magnetic_store_write_properties,
      :schema)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] table
    #   The updated Timestream table.
    #   @return [Types::Table]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-write-2018-11-01/UpdateTableResponse AWS API Documentation
    #
    class UpdateTableResponse < Struct.new(
      :table)
      SENSITIVE = []
      include Aws::Structure
    end

    # An invalid or malformed request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-write-2018-11-01/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] database_name
    #   The name of the Timestream database.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   The name of the Timestream table.
    #   @return [String]
    #
    # @!attribute [rw] common_attributes
    #   A record that contains the common measure, dimension, time, and
    #   version attributes shared across all the records in the request. The
    #   measure and dimension attributes specified will be merged with the
    #   measure and dimension attributes in the records object when the data
    #   is written into Timestream. Dimensions may not overlap, or a
    #   `ValidationException` will be thrown. In other words, a record must
    #   contain dimensions with unique names.
    #   @return [Types::Record]
    #
    # @!attribute [rw] records
    #   An array of records that contain the unique measure, dimension,
    #   time, and version attributes for each time-series data point.
    #   @return [Array<Types::Record>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-write-2018-11-01/WriteRecordsRequest AWS API Documentation
    #
    class WriteRecordsRequest < Struct.new(
      :database_name,
      :table_name,
      :common_attributes,
      :records)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] records_ingested
    #   Information on the records ingested by this request.
    #   @return [Types::RecordsIngested]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-write-2018-11-01/WriteRecordsResponse AWS API Documentation
    #
    class WriteRecordsResponse < Struct.new(
      :records_ingested)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
