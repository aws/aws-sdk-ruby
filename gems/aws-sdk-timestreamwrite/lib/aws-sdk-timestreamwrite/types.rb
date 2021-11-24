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

    # @note When making an API call, you may pass CreateDatabaseRequest
    #   data as a hash:
    #
    #       {
    #         database_name: "ResourceCreateAPIName", # required
    #         kms_key_id: "StringValue2048",
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] database_name
    #   The name of the Timestream database.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   The KMS key for the database. If the KMS key is not specified, the
    #   database will be encrypted with a Timestream managed KMS key located
    #   in your account. Refer to [Amazon Web Services managed KMS keys][1]
    #   for more info.
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

    # @note When making an API call, you may pass CreateTableRequest
    #   data as a hash:
    #
    #       {
    #         database_name: "ResourceCreateAPIName", # required
    #         table_name: "ResourceCreateAPIName", # required
    #         retention_properties: {
    #           memory_store_retention_period_in_hours: 1, # required
    #           magnetic_store_retention_period_in_days: 1, # required
    #         },
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #         magnetic_store_write_properties: {
    #           enable_magnetic_store_writes: false, # required
    #           magnetic_store_rejected_data_location: {
    #             s3_configuration: {
    #               bucket_name: "S3BucketName",
    #               object_key_prefix: "S3ObjectKeyPrefix",
    #               encryption_option: "SSE_S3", # accepts SSE_S3, SSE_KMS
    #               kms_key_id: "StringValue2048",
    #             },
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] database_name
    #   The name of the Timestream database.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   The name of the Timestream table.
    #   @return [String]
    #
    # @!attribute [rw] retention_properties
    #   The duration for which your time series data must be stored in the
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-write-2018-11-01/CreateTableRequest AWS API Documentation
    #
    class CreateTableRequest < Struct.new(
      :database_name,
      :table_name,
      :retention_properties,
      :tags,
      :magnetic_store_write_properties)
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

    # A top level container for a table. Databases and tables are the
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

    # @note When making an API call, you may pass DeleteDatabaseRequest
    #   data as a hash:
    #
    #       {
    #         database_name: "ResourceName", # required
    #       }
    #
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

    # @note When making an API call, you may pass DeleteTableRequest
    #   data as a hash:
    #
    #       {
    #         database_name: "ResourceName", # required
    #         table_name: "ResourceName", # required
    #       }
    #
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

    # @note When making an API call, you may pass DescribeDatabaseRequest
    #   data as a hash:
    #
    #       {
    #         database_name: "ResourceName", # required
    #       }
    #
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

    # @note When making an API call, you may pass DescribeTableRequest
    #   data as a hash:
    #
    #       {
    #         database_name: "ResourceName", # required
    #         table_name: "ResourceName", # required
    #       }
    #
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

    # Dimension represents the meta data attributes of the time series. For
    # example, the name and availability zone of an EC2 instance or the name
    # of the manufacturer of a wind turbine are dimensions.
    #
    # @note When making an API call, you may pass Dimension
    #   data as a hash:
    #
    #       {
    #         name: "SchemaName", # required
    #         value: "SchemaValue", # required
    #         dimension_value_type: "VARCHAR", # accepts VARCHAR
    #       }
    #
    # @!attribute [rw] name
    #   Dimension represents the meta data attributes of the time series.
    #   For example, the name and availability zone of an EC2 instance or
    #   the name of the manufacturer of a wind turbine are dimensions.
    #
    #   For constraints on Dimension names, see [Naming Constraints][1].
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
    #   The data type of the dimension for the time series data point.
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

    # Represents an available endpoint against which to make API calls
    # agaisnt, as well as the TTL for that endpoint.
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

    # The requested endpoint was invalid.
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

    # @note When making an API call, you may pass ListDatabasesRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "String",
    #         max_results: 1,
    #       }
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

    # @note When making an API call, you may pass ListTablesRequest
    #   data as a hash:
    #
    #       {
    #         database_name: "ResourceName",
    #         next_token: "String",
    #         max_results: 1,
    #       }
    #
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

    # @note When making an API call, you may pass ListTagsForResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "AmazonResourceName", # required
    #       }
    #
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
    # @note When making an API call, you may pass MagneticStoreRejectedDataLocation
    #   data as a hash:
    #
    #       {
    #         s3_configuration: {
    #           bucket_name: "S3BucketName",
    #           object_key_prefix: "S3ObjectKeyPrefix",
    #           encryption_option: "SSE_S3", # accepts SSE_S3, SSE_KMS
    #           kms_key_id: "StringValue2048",
    #         },
    #       }
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
    # @note When making an API call, you may pass MagneticStoreWriteProperties
    #   data as a hash:
    #
    #       {
    #         enable_magnetic_store_writes: false, # required
    #         magnetic_store_rejected_data_location: {
    #           s3_configuration: {
    #             bucket_name: "S3BucketName",
    #             object_key_prefix: "S3ObjectKeyPrefix",
    #             encryption_option: "SSE_S3", # accepts SSE_S3, SSE_KMS
    #             kms_key_id: "StringValue2048",
    #           },
    #         },
    #       }
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

    # MeasureValue represents the data attribute of the time series. For
    # example, the CPU utilization of an EC2 instance or the RPM of a wind
    # turbine are measures. MeasureValue has both name and value.
    #
    # MeasureValue is only allowed for type `MULTI`. Using `MULTI` type, you
    # can pass multiple data attributes associated with the same time series
    # in a single record
    #
    # @note When making an API call, you may pass MeasureValue
    #   data as a hash:
    #
    #       {
    #         name: "SchemaName", # required
    #         value: "StringValue2048", # required
    #         type: "DOUBLE", # required, accepts DOUBLE, BIGINT, VARCHAR, BOOLEAN, TIMESTAMP, MULTI
    #       }
    #
    # @!attribute [rw] name
    #   Name of the MeasureValue.
    #
    #   For constraints on MeasureValue names, refer to [ Naming
    #   Constraints][1] in the Timestream developer guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/timestream/latest/developerguide/ts-limits.html#limits.naming
    #   @return [String]
    #
    # @!attribute [rw] value
    #   Value for the MeasureValue.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   Contains the data type of the MeasureValue for the time series data
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

    # Record represents a time series data point being written into
    # Timestream. Each record contains an array of dimensions. Dimensions
    # represent the meta data attributes of a time series data point such as
    # the instance name or availability zone of an EC2 instance. A record
    # also contains the measure name which is the name of the measure being
    # collected for example the CPU utilization of an EC2 instance. A record
    # also contains the measure value and the value type which is the data
    # type of the measure value. In addition, the record contains the
    # timestamp when the measure was collected that the timestamp unit which
    # represents the granularity of the timestamp.
    #
    # Records have a `Version` field, which is a 64-bit `long` that you can
    # use for updating data points. Writes of a duplicate record with the
    # same dimension, timestamp, and measure name but different measure
    # value will only succeed if the `Version` attribute of the record in
    # the write request is higher than that of the existing record.
    # Timestream defaults to a `Version` of `1` for records without the
    # `Version` field.
    #
    # @note When making an API call, you may pass Record
    #   data as a hash:
    #
    #       {
    #         dimensions: [
    #           {
    #             name: "SchemaName", # required
    #             value: "SchemaValue", # required
    #             dimension_value_type: "VARCHAR", # accepts VARCHAR
    #           },
    #         ],
    #         measure_name: "SchemaName",
    #         measure_value: "StringValue2048",
    #         measure_value_type: "DOUBLE", # accepts DOUBLE, BIGINT, VARCHAR, BOOLEAN, TIMESTAMP, MULTI
    #         time: "StringValue256",
    #         time_unit: "MILLISECONDS", # accepts MILLISECONDS, SECONDS, MICROSECONDS, NANOSECONDS
    #         version: 1,
    #         measure_values: [
    #           {
    #             name: "SchemaName", # required
    #             value: "StringValue2048", # required
    #             type: "DOUBLE", # required, accepts DOUBLE, BIGINT, VARCHAR, BOOLEAN, TIMESTAMP, MULTI
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] dimensions
    #   Contains the list of dimensions for time series data points.
    #   @return [Array<Types::Dimension>]
    #
    # @!attribute [rw] measure_name
    #   Measure represents the data attribute of the time series. For
    #   example, the CPU utilization of an EC2 instance or the RPM of a wind
    #   turbine are measures.
    #   @return [String]
    #
    # @!attribute [rw] measure_value
    #   Contains the measure value for the time series data point.
    #   @return [String]
    #
    # @!attribute [rw] measure_value_type
    #   Contains the data type of the measure value for the time series data
    #   point. Default type is `DOUBLE`.
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
    #   value is in seconds, milliseconds, nanoseconds or other supported
    #   values. Default is `MILLISECONDS`.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   64-bit attribute used for record updates. Write requests for
    #   duplicate data with a higher version number will update the existing
    #   measure value and version. In cases where the measure value is the
    #   same, `Version` will still be updated . Default value is `1`.
    #
    #   <note markdown="1"> `Version` must be `1` or greater, or you will receive a
    #   `ValidationException` error.
    #
    #    </note>
    #   @return [Integer]
    #
    # @!attribute [rw] measure_values
    #   Contains the list of MeasureValue for time series data points.
    #
    #   This is only allowed for type `MULTI`. For scalar values, use
    #   `MeasureValue` attribute of the Record directly.
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

    # Records that were not successfully inserted into Timestream due to
    # data validation issues that must be resolved prior to reinserting time
    # series data into the system.
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
    #     * Version is not present in the request *or* the value of version
    #       in the new record is equal to or lower than the existing value
    #
    #     If Timestream rejects data for this case, the `ExistingVersion`
    #     field in the `RejectedRecords` response will indicate the current
    #     record’s version. To force an update, you can resend the request
    #     with a version for the record set to a value greater than the
    #     `ExistingVersion`.
    #
    #   * Records with timestamps that lie outside the retention duration of
    #     the memory store
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
    #   the memory store
    #
    # * Records with dimensions or measures that exceed the Timestream
    #   defined limits.
    #
    # For more information, see [Quotas][1] in the Timestream Developer
    # Guide.
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

    # Retention properties contain the duration for which your time series
    # data must be stored in the magnetic store and the memory store.
    #
    # @note When making an API call, you may pass RetentionProperties
    #   data as a hash:
    #
    #       {
    #         memory_store_retention_period_in_hours: 1, # required
    #         magnetic_store_retention_period_in_days: 1, # required
    #       }
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

    # Configuration specifing an S3 location.
    #
    # @note When making an API call, you may pass S3Configuration
    #   data as a hash:
    #
    #       {
    #         bucket_name: "S3BucketName",
    #         object_key_prefix: "S3ObjectKeyPrefix",
    #         encryption_option: "SSE_S3", # accepts SSE_S3, SSE_KMS
    #         kms_key_id: "StringValue2048",
    #       }
    #
    # @!attribute [rw] bucket_name
    #   &gt;Bucket name of the customer S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] object_key_prefix
    #   Object key preview for the customer S3 location.
    #   @return [String]
    #
    # @!attribute [rw] encryption_option
    #   Encryption option for the customer s3 location. Options are S3
    #   server side encryption with an S3-managed key or KMS managed key.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   KMS key id for the customer s3 location when encrypting with a KMS
    #   managed key.
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

    # Instance quota of resource exceeded for this account.
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

    # Table represents a database table in Timestream. Tables contain one or
    # more related time series. You can modify the retention duration of the
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
      :magnetic_store_write_properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # A tag is a label that you assign to a Timestream database and/or
    # table. Each tag consists of a key and an optional value, both of which
    # you define. Tags enable you to categorize databases and/or tables, for
    # example, by purpose, owner, or environment.
    #
    # @note When making an API call, you may pass Tag
    #   data as a hash:
    #
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
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

    # @note When making an API call, you may pass TagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "AmazonResourceName", # required
    #         tags: [ # required
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
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

    # Too many requests were made by a user exceeding service quotas. The
    # request was throttled.
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

    # @note When making an API call, you may pass UntagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "AmazonResourceName", # required
    #         tag_keys: ["TagKey"], # required
    #       }
    #
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

    # @note When making an API call, you may pass UpdateDatabaseRequest
    #   data as a hash:
    #
    #       {
    #         database_name: "ResourceName", # required
    #         kms_key_id: "StringValue2048", # required
    #       }
    #
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
    #   A top level container for a table. Databases and tables are the
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

    # @note When making an API call, you may pass UpdateTableRequest
    #   data as a hash:
    #
    #       {
    #         database_name: "ResourceName", # required
    #         table_name: "ResourceName", # required
    #         retention_properties: {
    #           memory_store_retention_period_in_hours: 1, # required
    #           magnetic_store_retention_period_in_days: 1, # required
    #         },
    #         magnetic_store_write_properties: {
    #           enable_magnetic_store_writes: false, # required
    #           magnetic_store_rejected_data_location: {
    #             s3_configuration: {
    #               bucket_name: "S3BucketName",
    #               object_key_prefix: "S3ObjectKeyPrefix",
    #               encryption_option: "SSE_S3", # accepts SSE_S3, SSE_KMS
    #               kms_key_id: "StringValue2048",
    #             },
    #           },
    #         },
    #       }
    #
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-write-2018-11-01/UpdateTableRequest AWS API Documentation
    #
    class UpdateTableRequest < Struct.new(
      :database_name,
      :table_name,
      :retention_properties,
      :magnetic_store_write_properties)
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

    # Invalid or malformed request.
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

    # @note When making an API call, you may pass WriteRecordsRequest
    #   data as a hash:
    #
    #       {
    #         database_name: "ResourceName", # required
    #         table_name: "ResourceName", # required
    #         common_attributes: {
    #           dimensions: [
    #             {
    #               name: "SchemaName", # required
    #               value: "SchemaValue", # required
    #               dimension_value_type: "VARCHAR", # accepts VARCHAR
    #             },
    #           ],
    #           measure_name: "SchemaName",
    #           measure_value: "StringValue2048",
    #           measure_value_type: "DOUBLE", # accepts DOUBLE, BIGINT, VARCHAR, BOOLEAN, TIMESTAMP, MULTI
    #           time: "StringValue256",
    #           time_unit: "MILLISECONDS", # accepts MILLISECONDS, SECONDS, MICROSECONDS, NANOSECONDS
    #           version: 1,
    #           measure_values: [
    #             {
    #               name: "SchemaName", # required
    #               value: "StringValue2048", # required
    #               type: "DOUBLE", # required, accepts DOUBLE, BIGINT, VARCHAR, BOOLEAN, TIMESTAMP, MULTI
    #             },
    #           ],
    #         },
    #         records: [ # required
    #           {
    #             dimensions: [
    #               {
    #                 name: "SchemaName", # required
    #                 value: "SchemaValue", # required
    #                 dimension_value_type: "VARCHAR", # accepts VARCHAR
    #               },
    #             ],
    #             measure_name: "SchemaName",
    #             measure_value: "StringValue2048",
    #             measure_value_type: "DOUBLE", # accepts DOUBLE, BIGINT, VARCHAR, BOOLEAN, TIMESTAMP, MULTI
    #             time: "StringValue256",
    #             time_unit: "MILLISECONDS", # accepts MILLISECONDS, SECONDS, MICROSECONDS, NANOSECONDS
    #             version: 1,
    #             measure_values: [
    #               {
    #                 name: "SchemaName", # required
    #                 value: "StringValue2048", # required
    #                 type: "DOUBLE", # required, accepts DOUBLE, BIGINT, VARCHAR, BOOLEAN, TIMESTAMP, MULTI
    #               },
    #             ],
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] database_name
    #   The name of the Timestream database.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   The name of the Timestream table.
    #   @return [String]
    #
    # @!attribute [rw] common_attributes
    #   A record containing the common measure, dimension, time, and version
    #   attributes shared across all the records in the request. The measure
    #   and dimension attributes specified will be merged with the measure
    #   and dimension attributes in the records object when the data is
    #   written into Timestream. Dimensions may not overlap, or a
    #   `ValidationException` will be thrown. In other words, a record must
    #   contain dimensions with unique names.
    #   @return [Types::Record]
    #
    # @!attribute [rw] records
    #   An array of records containing the unique measure, dimension, time,
    #   and version attributes for each time series data point.
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
