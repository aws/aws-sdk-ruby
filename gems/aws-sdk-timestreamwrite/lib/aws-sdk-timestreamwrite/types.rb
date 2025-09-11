# frozen_string_literal: true

# This is generated code!

module Aws::TimestreamWrite
  # This module contains the types returned by client operations.
  module Types

    # <p>You are not authorized to perform this action.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about the progress of a batch load task.</p>
    # @!attribute records_processed
    #   <p></p>
    #   @return [Integer]
    # @!attribute records_ingested
    #   <p></p>
    #   @return [Integer]
    # @!attribute parse_failures
    #   <p></p>
    #   @return [Integer]
    # @!attribute record_ingestion_failures
    #   <p></p>
    #   @return [Integer]
    # @!attribute file_failures
    #   <p></p>
    #   @return [Integer]
    # @!attribute bytes_metered
    #   <p></p>
    #   @return [Integer]
    class BatchLoadProgressReport < Struct.new(
      :records_processed,
      :records_ingested,
      :parse_failures,
      :record_ingestion_failures,
      :file_failures,
      :bytes_metered,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:records_processed] = 0 unless options.key?(:records_processed)
        options[:records_ingested] = 0 unless options.key?(:records_ingested)
        options[:parse_failures] = 0 unless options.key?(:parse_failures)
        options[:record_ingestion_failures] = 0 unless options.key?(:record_ingestion_failures)
        options[:file_failures] = 0 unless options.key?(:file_failures)
        options[:bytes_metered] = 0 unless options.key?(:bytes_metered)
        super
      end
    end

    # <p>Details about a batch load task.</p>
    # @!attribute task_id
    #   <p>The ID of the batch load task.</p>
    #   @return [String]
    # @!attribute task_status
    #   <p>Status of the batch load task.</p>
    #   @return [String]
    # @!attribute database_name
    #   <p>Database name for the database into which a batch load task loads data.</p>
    #   @return [String]
    # @!attribute table_name
    #   <p>Table name for the table into which a batch load task loads data.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The time when the Timestream batch load task was created.</p>
    #   @return [Time]
    # @!attribute last_updated_time
    #   <p>The time when the Timestream batch load task was last updated.</p>
    #   @return [Time]
    # @!attribute resumable_until
    #   <p>
    #         </p>
    #   @return [Time]
    class BatchLoadTask < Struct.new(
      :task_id,
      :task_status,
      :database_name,
      :table_name,
      :creation_time,
      :last_updated_time,
      :resumable_until,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about a batch load task.</p>
    # @!attribute task_id
    #   <p>The ID of the batch load task.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p></p>
    #   @return [String]
    # @!attribute data_source_configuration
    #   <p>Configuration details about the data source for a batch load task.</p>
    #   @return [Types::DataSourceConfiguration]
    # @!attribute progress_report
    #   <p></p>
    #   @return [Types::BatchLoadProgressReport]
    # @!attribute report_configuration
    #   <p>Report configuration for a batch load task. This contains details about where error
    #            reports are stored.</p>
    #   @return [Types::ReportConfiguration]
    # @!attribute data_model_configuration
    #   <p>Data model configuration for a batch load task. This contains details about where a data
    #            model for a batch load task is stored.</p>
    #   @return [Types::DataModelConfiguration]
    # @!attribute target_database_name
    #   <p></p>
    #   @return [String]
    # @!attribute target_table_name
    #   <p></p>
    #   @return [String]
    # @!attribute task_status
    #   <p>Status of the batch load task.</p>
    #   @return [String]
    # @!attribute record_version
    #   <p></p>
    #   @return [Integer]
    # @!attribute creation_time
    #   <p>The time when the Timestream batch load task was created.</p>
    #   @return [Time]
    # @!attribute last_updated_time
    #   <p>The time when the Timestream batch load task was last updated.</p>
    #   @return [Time]
    # @!attribute resumable_until
    #   <p>
    #         </p>
    #   @return [Time]
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
      :resumable_until,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:record_version] = 0 unless options.key?(:record_version)
        super
      end
    end

    # <p>Timestream was unable to process this request because it contains resource that
    #          already exists.</p>
    # @!attribute message
    #   @return [String]
    class ConflictException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <p></p>
    #   @return [String]
    # @!attribute data_model_configuration
    #   <p></p>
    #   @return [Types::DataModelConfiguration]
    # @!attribute data_source_configuration
    #   <p>Defines configuration details about the data source for a batch load task.</p>
    #   @return [Types::DataSourceConfiguration]
    # @!attribute report_configuration
    #   <p>Report configuration for a batch load task. This contains details about where error
    #            reports are stored.</p>
    #   @return [Types::ReportConfiguration]
    # @!attribute target_database_name
    #   <p>Target Timestream database for a batch load task.</p>
    #   @return [String]
    # @!attribute target_table_name
    #   <p>Target Timestream table for a batch load task.</p>
    #   @return [String]
    # @!attribute record_version
    #   <p></p>
    #   @return [Integer]
    class CreateBatchLoadTaskRequest < Struct.new(
      :client_token,
      :data_model_configuration,
      :data_source_configuration,
      :report_configuration,
      :target_database_name,
      :target_table_name,
      :record_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute task_id
    #   <p>The ID of the batch load task.</p>
    #   @return [String]
    class CreateBatchLoadTaskResponse < Struct.new(
      :task_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute database_name
    #   <p>The name of the Timestream database.</p>
    #   @return [String]
    # @!attribute kms_key_id
    #   <p>The KMS key for the database. If the KMS key is not
    #            specified, the database will be encrypted with a Timestream managed KMS key located in your account. For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-managed-cmk">Amazon Web Services managed keys</a>.</p>
    #   @return [String]
    # @!attribute tags
    #   <p> A list of key-value pairs to label the table. </p>
    #   @return [Array<Types::Tag>]
    class CreateDatabaseRequest < Struct.new(
      :database_name,
      :kms_key_id,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute database
    #   <p>The newly created Timestream database.</p>
    #   @return [Types::Database]
    class CreateDatabaseResponse < Struct.new(
      :database,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute database_name
    #   <p>The name of the Timestream database.</p>
    #   @return [String]
    # @!attribute table_name
    #   <p>The name of the Timestream table.</p>
    #   @return [String]
    # @!attribute retention_properties
    #   <p>The duration for which your time-series data must be stored in the memory store and the
    #            magnetic store.</p>
    #   @return [Types::RetentionProperties]
    # @!attribute tags
    #   <p> A list of key-value pairs to label the table. </p>
    #   @return [Array<Types::Tag>]
    # @!attribute magnetic_store_write_properties
    #   <p>Contains properties to set on the table when enabling magnetic store writes.</p>
    #   @return [Types::MagneticStoreWriteProperties]
    # @!attribute schema
    #   <p> The schema of the table. </p>
    #   @return [Types::Schema]
    class CreateTableRequest < Struct.new(
      :database_name,
      :table_name,
      :retention_properties,
      :tags,
      :magnetic_store_write_properties,
      :schema,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute table
    #   <p>The newly created Timestream table.</p>
    #   @return [Types::Table]
    class CreateTableResponse < Struct.new(
      :table,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A delimited data format where the column separator can be a comma and the record
    #          separator is a newline character.</p>
    # @!attribute column_separator
    #   <p>Column separator can be one of comma (','), pipe ('|), semicolon (';'), tab('/t'), or
    #            blank space (' '). </p>
    #   @return [String]
    # @!attribute escape_char
    #   <p>Escape character can be one of </p>
    #   @return [String]
    # @!attribute quote_char
    #   <p>Can be single quote (') or double quote (").</p>
    #   @return [String]
    # @!attribute null_value
    #   <p>Can be blank space (' ').</p>
    #   @return [String]
    # @!attribute trim_white_space
    #   <p>Specifies to trim leading and trailing white space.</p>
    #   @return [Boolean]
    class CsvConfiguration < Struct.new(
      :column_separator,
      :escape_char,
      :quote_char,
      :null_value,
      :trim_white_space,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Data model for a batch load task.</p>
    # @!attribute time_column
    #   <p>Source column to be mapped to time.</p>
    #   @return [String]
    # @!attribute time_unit
    #   <p> The granularity of the timestamp unit. It indicates if the time value is in seconds,
    #            milliseconds, nanoseconds, or other supported values. Default is <code>MILLISECONDS</code>.
    #         </p>
    #   @return [String]
    # @!attribute dimension_mappings
    #   <p>Source to target mappings for dimensions.</p>
    #   @return [Array<Types::DimensionMapping>]
    # @!attribute multi_measure_mappings
    #   <p>Source to target mappings for multi-measure records.</p>
    #   @return [Types::MultiMeasureMappings]
    # @!attribute mixed_measure_mappings
    #   <p>Source to target mappings for measures.</p>
    #   @return [Array<Types::MixedMeasureMapping>]
    # @!attribute measure_name_column
    #   <p></p>
    #   @return [String]
    class DataModel < Struct.new(
      :time_column,
      :time_unit,
      :dimension_mappings,
      :multi_measure_mappings,
      :mixed_measure_mappings,
      :measure_name_column,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute data_model
    #   <p></p>
    #   @return [Types::DataModel]
    # @!attribute data_model_s3_configuration
    #   <p></p>
    #   @return [Types::DataModelS3Configuration]
    class DataModelConfiguration < Struct.new(
      :data_model,
      :data_model_s3_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute bucket_name
    #   <p></p>
    #   @return [String]
    # @!attribute object_key
    #   <p></p>
    #   @return [String]
    class DataModelS3Configuration < Struct.new(
      :bucket_name,
      :object_key,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines configuration details about the data source.</p>
    # @!attribute data_source_s3_configuration
    #   <p>Configuration of an S3 location for a file which contains data to load.</p>
    #   @return [Types::DataSourceS3Configuration]
    # @!attribute csv_configuration
    #   <p>A delimited data format where the column separator can be a comma and the record
    #            separator is a newline character.</p>
    #   @return [Types::CsvConfiguration]
    # @!attribute data_format
    #   <p>This is currently CSV.</p>
    #   @return [String]
    class DataSourceConfiguration < Struct.new(
      :data_source_s3_configuration,
      :csv_configuration,
      :data_format,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #       </p>
    # @!attribute bucket_name
    #   <p>The bucket name of the customer S3 bucket.</p>
    #   @return [String]
    # @!attribute object_key_prefix
    #   <p>
    #         </p>
    #   @return [String]
    class DataSourceS3Configuration < Struct.new(
      :bucket_name,
      :object_key_prefix,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A top-level container for a table. Databases and tables are the fundamental management
    #          concepts in Amazon Timestream. All tables in a database are encrypted with the
    #          same KMS key.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name that uniquely identifies this database.</p>
    #   @return [String]
    # @!attribute database_name
    #   <p>The name of the Timestream database.</p>
    #   @return [String]
    # @!attribute table_count
    #   <p>The total number of tables found within a Timestream database. </p>
    #   @return [Integer]
    # @!attribute kms_key_id
    #   <p>The identifier of the KMS key used to encrypt the data stored in the
    #            database.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The time when the database was created, calculated from the Unix epoch time.</p>
    #   @return [Time]
    # @!attribute last_updated_time
    #   <p> The last time that this database was updated. </p>
    #   @return [Time]
    class Database < Struct.new(
      :arn,
      :database_name,
      :table_count,
      :kms_key_id,
      :creation_time,
      :last_updated_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:table_count] = 0 unless options.key?(:table_count)
        super
      end
    end

    # @!attribute database_name
    #   <p>The name of the Timestream database to be deleted.</p>
    #   @return [String]
    class DeleteDatabaseRequest < Struct.new(
      :database_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute database_name
    #   <p>The name of the database where the Timestream database is to be deleted.</p>
    #   @return [String]
    # @!attribute table_name
    #   <p>The name of the Timestream table to be deleted.</p>
    #   @return [String]
    class DeleteTableRequest < Struct.new(
      :database_name,
      :table_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute task_id
    #   <p>The ID of the batch load task.</p>
    #   @return [String]
    class DescribeBatchLoadTaskRequest < Struct.new(
      :task_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute batch_load_task_description
    #   <p>Description of the batch load task.</p>
    #   @return [Types::BatchLoadTaskDescription]
    class DescribeBatchLoadTaskResponse < Struct.new(
      :batch_load_task_description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute database_name
    #   <p>The name of the Timestream database.</p>
    #   @return [String]
    class DescribeDatabaseRequest < Struct.new(
      :database_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute database
    #   <p>The name of the Timestream table.</p>
    #   @return [Types::Database]
    class DescribeDatabaseResponse < Struct.new(
      :database,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DescribeEndpointsRequest < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute endpoints
    #   <p>An <code>Endpoints</code> object is returned when a <code>DescribeEndpoints</code>
    #            request is made.</p>
    #   @return [Array<Types::Endpoint>]
    class DescribeEndpointsResponse < Struct.new(
      :endpoints,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute database_name
    #   <p>The name of the Timestream database.</p>
    #   @return [String]
    # @!attribute table_name
    #   <p>The name of the Timestream table.</p>
    #   @return [String]
    class DescribeTableRequest < Struct.new(
      :database_name,
      :table_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute table
    #   <p>The Timestream table.</p>
    #   @return [Types::Table]
    class DescribeTableResponse < Struct.new(
      :table,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the metadata attributes of the time series. For example, the name and
    #          Availability Zone of an EC2 instance or the name of the manufacturer of a wind turbine are
    #          dimensions. </p>
    # @!attribute name
    #   <p> Dimension represents the metadata attributes of the time series. For example, the name
    #            and Availability Zone of an EC2 instance or the name of the manufacturer of a wind turbine
    #            are dimensions. </p>
    #            <p>For constraints on dimension names, see <a href="https://docs.aws.amazon.com/timestream/latest/developerguide/ts-limits.html#limits.naming">Naming
    #               Constraints</a>.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value of the dimension.</p>
    #   @return [String]
    # @!attribute dimension_value_type
    #   <p>The data type of the dimension for the time-series data point.</p>
    #   @return [String]
    class Dimension < Struct.new(
      :name,
      :value,
      :dimension_value_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute source_column
    #   <p></p>
    #   @return [String]
    # @!attribute destination_column
    #   <p>
    #         </p>
    #   @return [String]
    class DimensionMapping < Struct.new(
      :source_column,
      :destination_column,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents an available endpoint against which to make API calls against, as well as the
    #          TTL for that endpoint.</p>
    # @!attribute address
    #   <p>An endpoint address.</p>
    #   @return [String]
    # @!attribute cache_period_in_minutes
    #   <p>The TTL for the endpoint, in minutes.</p>
    #   @return [Integer]
    class Endpoint < Struct.new(
      :address,
      :cache_period_in_minutes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:cache_period_in_minutes] = 0 unless options.key?(:cache_period_in_minutes)
        super
      end
    end

    # <p>
    #          Timestream was unable to fully process this request because of an internal server
    #          error.</p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The requested endpoint was not valid.</p>
    # @!attribute message
    #   @return [String]
    class InvalidEndpointException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A token to specify where to start paginating. This is the NextToken from a previously
    #            truncated response.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The total number of items to return in the output. If the total number of items
    #            available is more than the value specified, a NextToken is provided in the output. To
    #            resume pagination, provide the NextToken value as argument of a subsequent API
    #            invocation.</p>
    #   @return [Integer]
    # @!attribute task_status
    #   <p>Status of the batch load task.</p>
    #   @return [String]
    class ListBatchLoadTasksRequest < Struct.new(
      :next_token,
      :max_results,
      :task_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A token to specify where to start paginating. Provide the next
    #            ListBatchLoadTasksRequest.</p>
    #   @return [String]
    # @!attribute batch_load_tasks
    #   <p>A list of batch load task details.</p>
    #   @return [Array<Types::BatchLoadTask>]
    class ListBatchLoadTasksResponse < Struct.new(
      :next_token,
      :batch_load_tasks,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The pagination token. To resume pagination, provide the NextToken value as argument of a
    #            subsequent API invocation.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The total number of items to return in the output. If the total number of items
    #            available is more than the value specified, a NextToken is provided in the output. To
    #            resume pagination, provide the NextToken value as argument of a subsequent API
    #            invocation.</p>
    #   @return [Integer]
    class ListDatabasesRequest < Struct.new(
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute databases
    #   <p>A list of database names.</p>
    #   @return [Array<Types::Database>]
    # @!attribute next_token
    #   <p>The pagination token. This parameter is returned when the response is truncated.</p>
    #   @return [String]
    class ListDatabasesResponse < Struct.new(
      :databases,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute database_name
    #   <p>The name of the Timestream database.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The pagination token. To resume pagination, provide the NextToken value as argument of a
    #            subsequent API invocation.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The total number of items to return in the output. If the total number of items
    #            available is more than the value specified, a NextToken is provided in the output. To
    #            resume pagination, provide the NextToken value as argument of a subsequent API
    #            invocation.</p>
    #   @return [Integer]
    class ListTablesRequest < Struct.new(
      :database_name,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tables
    #   <p>A list of tables.</p>
    #   @return [Array<Types::Table>]
    # @!attribute next_token
    #   <p>A token to specify where to start paginating. This is the NextToken from a previously
    #            truncated response.</p>
    #   @return [String]
    class ListTablesResponse < Struct.new(
      :tables,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p> The Timestream resource with tags to be listed. This value is an Amazon
    #            Resource Name (ARN). </p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p> The tags currently associated with the Timestream resource. </p>
    #   @return [Array<Types::Tag>]
    class ListTagsForResourceResponse < Struct.new(
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The location to write error reports for records rejected, asynchronously, during
    #          magnetic store writes.</p>
    # @!attribute s3_configuration
    #   <p>Configuration of an S3 location to write error reports for records rejected,
    #            asynchronously, during magnetic store writes.</p>
    #   @return [Types::S3Configuration]
    class MagneticStoreRejectedDataLocation < Struct.new(
      :s3_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The set of properties on a table for configuring magnetic store writes.</p>
    # @!attribute enable_magnetic_store_writes
    #   <p>A flag to enable magnetic store writes.</p>
    #   @return [Boolean]
    # @!attribute magnetic_store_rejected_data_location
    #   <p>The location to write error reports for records rejected asynchronously during magnetic
    #            store writes.</p>
    #   @return [Types::MagneticStoreRejectedDataLocation]
    class MagneticStoreWriteProperties < Struct.new(
      :enable_magnetic_store_writes,
      :magnetic_store_rejected_data_location,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Represents the data attribute of the time series. For example, the CPU utilization of
    #          an EC2 instance or the RPM of a wind turbine are measures. MeasureValue has both name and
    #          value. </p>
    #          <p> MeasureValue is only allowed for type <code>MULTI</code>. Using <code>MULTI</code>
    #          type, you can pass multiple data attributes associated with the same time series in a
    #          single record </p>
    # @!attribute name
    #   <p> The name of the MeasureValue. </p>
    #            <p> For constraints on MeasureValue names, see <a href="https://docs.aws.amazon.com/timestream/latest/developerguide/ts-limits.html#limits.naming"> Naming Constraints</a> in the Amazon Timestream Developer Guide.</p>
    #   @return [String]
    # @!attribute value
    #   <p> The value for the MeasureValue. For information, see <a href="https://docs.aws.amazon.com/timestream/latest/developerguide/writes.html#writes.data-types">Data
    #            types</a>.</p>
    #   @return [String]
    # @!attribute type
    #   <p>Contains the data type of the MeasureValue for the time-series data point.</p>
    #   @return [String]
    class MeasureValue < Struct.new(
      :name,
      :value,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute measure_name
    #   <p></p>
    #   @return [String]
    # @!attribute source_column
    #   <p></p>
    #   @return [String]
    # @!attribute target_measure_name
    #   <p></p>
    #   @return [String]
    # @!attribute measure_value_type
    #   <p></p>
    #   @return [String]
    # @!attribute multi_measure_attribute_mappings
    #   <p></p>
    #   @return [Array<Types::MultiMeasureAttributeMapping>]
    class MixedMeasureMapping < Struct.new(
      :measure_name,
      :source_column,
      :target_measure_name,
      :measure_value_type,
      :multi_measure_attribute_mappings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute source_column
    #   <p></p>
    #   @return [String]
    # @!attribute target_multi_measure_attribute_name
    #   <p></p>
    #   @return [String]
    # @!attribute measure_value_type
    #   <p></p>
    #   @return [String]
    class MultiMeasureAttributeMapping < Struct.new(
      :source_column,
      :target_multi_measure_attribute_name,
      :measure_value_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute target_multi_measure_name
    #   <p></p>
    #   @return [String]
    # @!attribute multi_measure_attribute_mappings
    #   <p></p>
    #   @return [Array<Types::MultiMeasureAttributeMapping>]
    class MultiMeasureMappings < Struct.new(
      :target_multi_measure_name,
      :multi_measure_attribute_mappings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> An attribute used in partitioning data in a table. A dimension key partitions data
    #          using the values of the dimension specified by the dimension-name as partition key, while a
    #          measure key partitions data using measure names (values of the 'measure_name' column).
    #       </p>
    # @!attribute type
    #   <p> The type of the partition key. Options are DIMENSION (dimension key) and MEASURE
    #            (measure key). </p>
    #   @return [String]
    # @!attribute name
    #   <p> The name of the attribute used for a dimension key. </p>
    #   @return [String]
    # @!attribute enforcement_in_record
    #   <p> The level of enforcement for the specification of a dimension key in ingested records.
    #            Options are REQUIRED (dimension key must be specified) and OPTIONAL (dimension key does not
    #            have to be specified). </p>
    #   @return [String]
    class PartitionKey < Struct.new(
      :type,
      :name,
      :enforcement_in_record,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a time-series data point being written into Timestream. Each record
    #          contains an array of dimensions. Dimensions represent the metadata attributes of a
    #          time-series data point, such as the instance name or Availability Zone of an EC2 instance.
    #          A record also contains the measure name, which is the name of the measure being collected
    #          (for example, the CPU utilization of an EC2 instance). Additionally, a record contains the
    #          measure value and the value type, which is the data type of the measure value. Also, the
    #          record contains the timestamp of when the measure was collected and the timestamp unit,
    #          which represents the granularity of the timestamp. </p>
    #          <p> Records have a <code>Version</code> field, which is a 64-bit <code>long</code> that you
    #          can use for updating data points. Writes of a duplicate record with the same dimension,
    #          timestamp, and measure name but different measure value will only succeed if the
    #             <code>Version</code> attribute of the record in the write request is higher than that of
    #          the existing record. Timestream defaults to a <code>Version</code> of
    #             <code>1</code> for records without the <code>Version</code> field. </p>
    # @!attribute dimensions
    #   <p>Contains the list of dimensions for time-series data points.</p>
    #   @return [Array<Types::Dimension>]
    # @!attribute measure_name
    #   <p>Measure represents the data attribute of the time series. For example, the CPU
    #            utilization of an EC2 instance or the RPM of a wind turbine are measures. </p>
    #   @return [String]
    # @!attribute measure_value
    #   <p> Contains the measure value for the time-series data point. </p>
    #   @return [String]
    # @!attribute measure_value_type
    #   <p> Contains the data type of the measure value for the time-series data point. Default
    #            type is <code>DOUBLE</code>. For more information, see <a href="https://docs.aws.amazon.com/timestream/latest/developerguide/writes.html#writes.data-types">Data
    #            types</a>.</p>
    #   @return [String]
    # @!attribute time
    #   <p> Contains the time at which the measure value for the data point was collected. The time
    #            value plus the unit provides the time elapsed since the epoch. For example, if the time
    #            value is <code>12345</code> and the unit is <code>ms</code>, then <code>12345 ms</code>
    #            have elapsed since the epoch. </p>
    #   @return [String]
    # @!attribute time_unit
    #   <p> The granularity of the timestamp unit. It indicates if the time value is in seconds,
    #            milliseconds, nanoseconds, or other supported values. Default is <code>MILLISECONDS</code>.
    #         </p>
    #   @return [String]
    # @!attribute version
    #   <p>64-bit attribute used for record updates. Write requests for duplicate data with a
    #            higher version number will update the existing measure value and version. In cases where
    #            the measure value is the same, <code>Version</code> will still be updated. Default value is
    #               <code>1</code>.</p>
    #            <note>
    #               <p>
    #                  <code>Version</code> must be <code>1</code> or greater, or you will receive a
    #                  <code>ValidationException</code> error.</p>
    #            </note>
    #   @return [Integer]
    # @!attribute measure_values
    #   <p> Contains the list of MeasureValue for time-series data points. </p>
    #            <p> This is only allowed for type <code>MULTI</code>. For scalar values, use
    #               <code>MeasureValue</code> attribute of the record directly. </p>
    #   @return [Array<Types::MeasureValue>]
    class Record < Struct.new(
      :dimensions,
      :measure_name,
      :measure_value,
      :measure_value_type,
      :time,
      :time_unit,
      :version,
      :measure_values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:version] = nil unless options.key?(:version)
        super
      end
    end

    # <p>Information on the records ingested by this request.</p>
    # @!attribute total
    #   <p>Total count of successfully ingested records.</p>
    #   @return [Integer]
    # @!attribute memory_store
    #   <p>Count of records ingested into the memory store.</p>
    #   @return [Integer]
    # @!attribute magnetic_store
    #   <p>Count of records ingested into the magnetic store.</p>
    #   @return [Integer]
    class RecordsIngested < Struct.new(
      :total,
      :memory_store,
      :magnetic_store,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:total] = 0 unless options.key?(:total)
        options[:memory_store] = 0 unless options.key?(:memory_store)
        options[:magnetic_store] = 0 unless options.key?(:magnetic_store)
        super
      end
    end

    # <p> Represents records that were not successfully inserted into Timestream due to
    #          data validation issues that must be resolved before reinserting time-series data into the
    #          system. </p>
    # @!attribute record_index
    #   <p> The index of the record in the input request for WriteRecords. Indexes begin with 0.
    #         </p>
    #   @return [Integer]
    # @!attribute reason
    #   <p> The reason why a record was not successfully inserted into Timestream.
    #            Possible causes of failure include: </p>
    #            <ul>
    #               <li>
    #                  <p>Records with duplicate data where there are multiple records with the same
    #                  dimensions, timestamps, and measure names but: </p>
    #                  <ul>
    #                     <li>
    #                        <p>Measure values are different</p>
    #                     </li>
    #                     <li>
    #                        <p>Version is not present in the request, <i>or</i> the value of
    #                        version in the new record is equal to or lower than the existing value</p>
    #                     </li>
    #                  </ul>
    #                  <p>If Timestream rejects data for this case, the
    #                     <code>ExistingVersion</code> field in the <code>RejectedRecords</code> response
    #                  will indicate the current record’s version. To force an update, you can resend the
    #                  request with a version for the record set to a value greater than the
    #                     <code>ExistingVersion</code>.</p>
    #               </li>
    #               <li>
    #                  <p> Records with timestamps that lie outside the retention duration of the memory
    #                  store. </p>
    #                  <note>
    #                     <p>When the retention window is updated, you will receive a
    #                        <code>RejectedRecords</code> exception if you immediately try to ingest data
    #                     within the new window. To avoid a <code>RejectedRecords</code> exception, wait
    #                     until the duration of the new window to ingest new data. For further information,
    #                     see <a href="https://docs.aws.amazon.com/timestream/latest/developerguide/best-practices.html#configuration"> Best
    #                        Practices for Configuring Timestream</a> and <a href="https://docs.aws.amazon.com/timestream/latest/developerguide/storage.html">the
    #                        explanation of how storage works in Timestream</a>.</p>
    #                  </note>
    #               </li>
    #               <li>
    #                  <p> Records with dimensions or measures that exceed the Timestream defined
    #                  limits. </p>
    #               </li>
    #            </ul>
    #            <p> For more information, see <a href="https://docs.aws.amazon.com/timestream/latest/developerguide/ts-limits.html">Access Management</a> in the
    #               Timestream Developer Guide. </p>
    #   @return [String]
    # @!attribute existing_version
    #   <p>The existing version of the record. This value is populated in scenarios where an
    #            identical record exists with a higher version than the version in the write request.</p>
    #   @return [Integer]
    class RejectedRecord < Struct.new(
      :record_index,
      :reason,
      :existing_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:record_index] = 0 unless options.key?(:record_index)
        options[:existing_version] = nil unless options.key?(:existing_version)
        super
      end
    end

    # <p> WriteRecords would throw this exception in the following cases: </p>
    #          <ul>
    #             <li>
    #                <p>Records with duplicate data where there are multiple records with the same
    #                dimensions, timestamps, and measure names but: </p>
    #                <ul>
    #                   <li>
    #                      <p>Measure values are different</p>
    #                   </li>
    #                   <li>
    #                      <p>Version is not present in the request <i>or</i> the value of
    #                      version in the new record is equal to or lower than the existing value</p>
    #                   </li>
    #                </ul>
    #                <p> In this case, if Timestream rejects data, the
    #                   <code>ExistingVersion</code> field in the <code>RejectedRecords</code> response
    #                will indicate the current record’s version. To force an update, you can resend the
    #                request with a version for the record set to a value greater than the
    #                   <code>ExistingVersion</code>.</p>
    #             </li>
    #             <li>
    #                <p> Records with timestamps that lie outside the retention duration of the memory
    #                store. </p>
    #             </li>
    #             <li>
    #                <p> Records with dimensions or measures that exceed the Timestream defined
    #                limits. </p>
    #             </li>
    #          </ul>
    #          <p> For more information, see <a href="https://docs.aws.amazon.com/timestream/latest/developerguide/ts-limits.html">Quotas</a> in the Amazon Timestream Developer Guide. </p>
    # @!attribute message
    #   @return [String]
    # @!attribute rejected_records
    #   <p>
    #         </p>
    #   @return [Array<Types::RejectedRecord>]
    class RejectedRecordsException < Struct.new(
      :message,
      :rejected_records,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Report configuration for a batch load task. This contains details about where error
    #          reports are stored.</p>
    # @!attribute report_s3_configuration
    #   <p>Configuration of an S3 location to write error reports and events for a batch
    #            load.</p>
    #   @return [Types::ReportS3Configuration]
    class ReportConfiguration < Struct.new(
      :report_s3_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute bucket_name
    #   <p></p>
    #   @return [String]
    # @!attribute object_key_prefix
    #   <p></p>
    #   @return [String]
    # @!attribute encryption_option
    #   <p></p>
    #   @return [String]
    # @!attribute kms_key_id
    #   <p></p>
    #   @return [String]
    class ReportS3Configuration < Struct.new(
      :bucket_name,
      :object_key_prefix,
      :encryption_option,
      :kms_key_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The operation tried to access a nonexistent resource. The resource might not be
    #          specified correctly, or its status might not be ACTIVE.</p>
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute task_id
    #   <p>The ID of the batch load task to resume.</p>
    #   @return [String]
    class ResumeBatchLoadTaskRequest < Struct.new(
      :task_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class ResumeBatchLoadTaskResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Retention properties contain the duration for which your time-series data must be stored
    #          in the magnetic store and the memory store. </p>
    # @!attribute memory_store_retention_period_in_hours
    #   <p>The duration for which data must be stored in the memory store. </p>
    #   @return [Integer]
    # @!attribute magnetic_store_retention_period_in_days
    #   <p>The duration for which data must be stored in the magnetic store. </p>
    #   @return [Integer]
    class RetentionProperties < Struct.new(
      :memory_store_retention_period_in_hours,
      :magnetic_store_retention_period_in_days,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration that specifies an S3 location.</p>
    # @!attribute bucket_name
    #   <p>The bucket name of the customer S3 bucket.</p>
    #   @return [String]
    # @!attribute object_key_prefix
    #   <p>The object key preview for the customer S3 location.</p>
    #   @return [String]
    # @!attribute encryption_option
    #   <p>The encryption option for the customer S3 location. Options are S3 server-side
    #            encryption with an S3 managed key or Amazon Web Services managed key.</p>
    #   @return [String]
    # @!attribute kms_key_id
    #   <p>The KMS key ID for the customer S3 location when encrypting with an
    #               Amazon Web Services managed key.</p>
    #   @return [String]
    class S3Configuration < Struct.new(
      :bucket_name,
      :object_key_prefix,
      :encryption_option,
      :kms_key_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> A Schema specifies the expected data model of the table. </p>
    # @!attribute composite_partition_key
    #   <p>A non-empty list of partition keys defining the attributes used to partition the table
    #            data. The order of the list determines the partition hierarchy. The name and type of each
    #            partition key as well as the partition key order cannot be changed after the table is
    #            created. However, the enforcement level of each partition key can be changed. </p>
    #   @return [Array<Types::PartitionKey>]
    class Schema < Struct.new(
      :composite_partition_key,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The instance quota of resource exceeded for this account.</p>
    # @!attribute message
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a database table in Timestream. Tables contain one or more related
    #          time series. You can modify the retention duration of the memory store and the magnetic
    #          store for a table. </p>
    # @!attribute arn
    #   <p>The Amazon Resource Name that uniquely identifies this table.</p>
    #   @return [String]
    # @!attribute table_name
    #   <p>The name of the Timestream table.</p>
    #   @return [String]
    # @!attribute database_name
    #   <p>The name of the Timestream database that contains this table.</p>
    #   @return [String]
    # @!attribute table_status
    #   <p>The current state of the table:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>DELETING</code> - The table is being deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ACTIVE</code> - The table is ready for use.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute retention_properties
    #   <p>The retention duration for the memory store and magnetic store.</p>
    #   @return [Types::RetentionProperties]
    # @!attribute creation_time
    #   <p>The time when the Timestream table was created. </p>
    #   @return [Time]
    # @!attribute last_updated_time
    #   <p>The time when the Timestream table was last updated.</p>
    #   @return [Time]
    # @!attribute magnetic_store_write_properties
    #   <p>Contains properties to set on the table when enabling magnetic store writes.</p>
    #   @return [Types::MagneticStoreWriteProperties]
    # @!attribute schema
    #   <p> The schema of the table. </p>
    #   @return [Types::Schema]
    class Table < Struct.new(
      :arn,
      :table_name,
      :database_name,
      :table_status,
      :retention_properties,
      :creation_time,
      :last_updated_time,
      :magnetic_store_write_properties,
      :schema,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> A tag is a label that you assign to a Timestream database and/or table. Each
    #          tag consists of a key and an optional value, both of which you define. With tags, you can
    #          categorize databases and/or tables, for example, by purpose, owner, or environment. </p>
    # @!attribute key
    #   <p> The key of the tag. Tag keys are case sensitive. </p>
    #   @return [String]
    # @!attribute value
    #   <p> The value of the tag. Tag values are case-sensitive and can be null. </p>
    #   @return [String]
    class Tag < Struct.new(
      :key,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p> Identifies the Timestream resource to which tags should be added. This value
    #            is an Amazon Resource Name (ARN). </p>
    #   @return [String]
    # @!attribute tags
    #   <p> The tags to be assigned to the Timestream resource. </p>
    #   @return [Array<Types::Tag>]
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class TagResourceResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Too many requests were made by a user and they exceeded the service quotas. The request
    #          was throttled.</p>
    # @!attribute message
    #   @return [String]
    class ThrottlingException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p> The Timestream resource that the tags will be removed from. This value is an
    #            Amazon Resource Name (ARN). </p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p> A list of tags keys. Existing tags of the resource whose keys are members of this list
    #            will be removed from the Timestream resource. </p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UntagResourceResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute database_name
    #   <p> The name of the database. </p>
    #   @return [String]
    # @!attribute kms_key_id
    #   <p> The identifier of the new KMS key (<code>KmsKeyId</code>) to be used to
    #            encrypt the data stored in the database. If the <code>KmsKeyId</code> currently registered
    #            with the database is the same as the <code>KmsKeyId</code> in the request, there will not
    #            be any update. </p>
    #            <p>You can specify the <code>KmsKeyId</code> using any of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Key ARN:
    #                     <code>arn:aws:kms:us-east-1:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Alias name: <code>alias/ExampleAlias</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Alias ARN:
    #                  <code>arn:aws:kms:us-east-1:111122223333:alias/ExampleAlias</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    class UpdateDatabaseRequest < Struct.new(
      :database_name,
      :kms_key_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute database
    #   <p>A top-level container for a table. Databases and tables are the fundamental management
    #            concepts in Amazon Timestream. All tables in a database are encrypted with the
    #            same KMS key.</p>
    #   @return [Types::Database]
    class UpdateDatabaseResponse < Struct.new(
      :database,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute database_name
    #   <p>The name of the Timestream database.</p>
    #   @return [String]
    # @!attribute table_name
    #   <p>The name of the Timestream table.</p>
    #   @return [String]
    # @!attribute retention_properties
    #   <p>The retention duration of the memory store and the magnetic store.</p>
    #   @return [Types::RetentionProperties]
    # @!attribute magnetic_store_write_properties
    #   <p>Contains properties to set on the table when enabling magnetic store writes.</p>
    #   @return [Types::MagneticStoreWriteProperties]
    # @!attribute schema
    #   <p> The schema of the table. </p>
    #   @return [Types::Schema]
    class UpdateTableRequest < Struct.new(
      :database_name,
      :table_name,
      :retention_properties,
      :magnetic_store_write_properties,
      :schema,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute table
    #   <p>The updated Timestream table.</p>
    #   @return [Types::Table]
    class UpdateTableResponse < Struct.new(
      :table,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> An invalid or malformed request.</p>
    # @!attribute message
    #   @return [String]
    class ValidationException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute database_name
    #   <p>The name of the Timestream database.</p>
    #   @return [String]
    # @!attribute table_name
    #   <p>The name of the Timestream table.</p>
    #   @return [String]
    # @!attribute common_attributes
    #   <p>A record that contains the common measure, dimension, time, and version attributes
    #            shared across all the records in the request. The measure and dimension attributes
    #            specified will be merged with the measure and dimension attributes in the records object
    #            when the data is written into Timestream. Dimensions may not overlap, or a
    #               <code>ValidationException</code> will be thrown. In other words, a record must contain
    #            dimensions with unique names. </p>
    #   @return [Types::Record]
    # @!attribute records
    #   <p>An array of records that contain the unique measure, dimension, time, and version
    #            attributes for each time-series data point. </p>
    #   @return [Array<Types::Record>]
    class WriteRecordsRequest < Struct.new(
      :database_name,
      :table_name,
      :common_attributes,
      :records,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute records_ingested
    #   <p>Information on the records ingested by this request.</p>
    #   @return [Types::RecordsIngested]
    class WriteRecordsResponse < Struct.new(
      :records_ingested,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
