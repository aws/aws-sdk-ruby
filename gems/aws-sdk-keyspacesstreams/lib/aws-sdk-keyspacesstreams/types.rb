# frozen_string_literal: true

# This is generated code!

module Aws::KeyspacesStreams
  # This module contains the types returned by client operations.
  module Types

    # <p>You don't have sufficient access permissions to perform this operation. </p> <p>This exception occurs when your IAM user or role lacks the required permissions to access the Amazon Keyspaces resource or perform the requested action. Check your IAM policies and ensure they grant the necessary permissions.</p>
    # @!attribute message
    #   <p>You don't have sufficient permissions to perform this action.</p>
    #   @return [String]
    class AccessDeniedException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute shard_iterator
    #   <p> The unique identifier of the shard iterator. A shard iterator specifies the position in the shard from which you want to start reading data records sequentially. You obtain this value by calling the <code>GetShardIterator</code> operation. Each shard iterator is valid for 15 minutes after creation. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p> The maximum number of records to return in a single <code>GetRecords</code> request. Default value is 1000. You can specify a limit between 1 and 1000, but the actual number returned might be less than the specified maximum if the size of the data for the returned records exceeds the internal size limit. </p>
    #   @return [Integer]
    class GetRecordsInput < Struct.new(
      :shard_iterator,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute change_records
    #   <p> An array of change data records retrieved from the specified shard. Each record represents a single data modification (insert, update, or delete) to a row in the Amazon Keyspaces table. Records include the primary key columns and information about what data was modified. </p>
    #   @return [Array<Types::Record>]
    # @!attribute next_shard_iterator
    #   <p> The next position in the shard from which to start sequentially reading data records. If null, the shard has been closed and the requested iterator doesn't return any more data. </p>
    #   @return [String]
    class GetRecordsOutput < Struct.new(
      :change_records,
      :next_shard_iterator,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute stream_arn
    #   <p> The Amazon Resource Name (ARN) of the stream for which to get the shard iterator. The ARN uniquely identifies the stream within Amazon Keyspaces. </p>
    #   @return [String]
    # @!attribute shard_id
    #   <p> The identifier of the shard within the stream. The shard ID uniquely identifies a subset of the stream's data records that you want to access. </p>
    #   @return [String]
    # @!attribute shard_iterator_type
    #   <p> Determines how the shard iterator is positioned. Must be one of the following:</p> <ul> <li> <p> <code>TRIM_HORIZON</code> - Start reading at the last untrimmed record in the shard, which is the oldest data record in the shard.</p> </li> <li> <p> <code>AT_SEQUENCE_NUMBER</code> - Start reading exactly from the specified sequence number.</p> </li> <li> <p> <code>AFTER_SEQUENCE_NUMBER</code> - Start reading right after the specified sequence number.</p> </li> <li> <p> <code>LATEST</code> - Start reading just after the most recent record in the shard, so that you always read the most recent data.</p> </li> </ul>
    #   @return [String]
    # @!attribute sequence_number
    #   <p> The sequence number of the data record in the shard from which to start reading. Required if <code>ShardIteratorType</code> is <code>AT_SEQUENCE_NUMBER</code> or <code>AFTER_SEQUENCE_NUMBER</code>. This parameter is ignored for other iterator types. </p>
    #   @return [String]
    class GetShardIteratorInput < Struct.new(
      :stream_arn,
      :shard_id,
      :shard_iterator_type,
      :sequence_number,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute shard_iterator
    #   <p> The unique identifier for the shard iterator. This value is used in the <code>GetRecords</code> operation to retrieve data records from the specified shard. Each shard iterator expires 15 minutes after it is returned to the requester. </p>
    #   @return [String]
    class GetShardIteratorOutput < Struct.new(
      :shard_iterator,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute stream_arn
    #   <p> The Amazon Resource Name (ARN) of the stream for which detailed information is requested. This uniquely identifies the specific stream you want to get information about. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p> The maximum number of shard objects to return in a single <code>GetStream</code> request. Default value is 100. The minimum value is 1 and the maximum value is 100. </p>
    #   @return [Integer]
    # @!attribute shard_filter
    #   <p> Optional filter criteria to apply when retrieving shards. You can filter shards based on their state or other attributes to narrow down the results returned by the <code>GetStream</code> operation. </p>
    #   @return [Types::ShardFilter]
    # @!attribute next_token
    #   <p> An optional pagination token provided by a previous <code>GetStream</code> operation. If this parameter is specified, the response includes only records beyond the token, up to the value specified by <code>maxResults</code>. </p>
    #   @return [String]
    class GetStreamInput < Struct.new(
      :stream_arn,
      :max_results,
      :shard_filter,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute stream_arn
    #   <p> The Amazon Resource Name (ARN) that uniquely identifies the stream within Amazon Keyspaces. This ARN can be used in other API operations to reference this specific stream. </p>
    #   @return [String]
    # @!attribute stream_label
    #   <p> A timestamp that serves as a unique identifier for this stream, used for debugging and monitoring purposes. The stream label represents the point in time when the stream was created. </p>
    #   @return [String]
    # @!attribute stream_status
    #   <p> The current status of the stream. Values can be <code>ENABLING</code>, <code>ENABLED</code>, <code>DISABLING</code>, or <code>DISABLED</code>. Operations on the stream depend on its current status. </p>
    #   @return [String]
    # @!attribute stream_view_type
    #   <p> The format of the data records in this stream. Currently, this can be one of the following options:</p> <ul> <li> <p> <code>NEW_AND_OLD_IMAGES</code> - both versions of the row, before and after the change. This is the default.</p> </li> <li> <p> <code>NEW_IMAGE</code> - the version of the row after the change.</p> </li> <li> <p> <code>OLD_IMAGE</code> - the version of the row before the change.</p> </li> <li> <p> <code>KEYS_ONLY</code> - the partition and clustering keys of the row that was changed.</p> </li> </ul>
    #   @return [String]
    # @!attribute creation_request_date_time
    #   <p> The date and time when the request to create this stream was issued. The value is represented in ISO 8601 format. </p>
    #   @return [Time]
    # @!attribute keyspace_name
    #   <p> The name of the keyspace containing the table associated with this stream. The keyspace name is part of the table's hierarchical identifier in Amazon Keyspaces. </p>
    #   @return [String]
    # @!attribute table_name
    #   <p> The name of the table associated with this stream. The stream captures changes to rows in this Amazon Keyspaces table. </p>
    #   @return [String]
    # @!attribute shards
    #   <p> An array of shard objects associated with this stream. Each shard contains a subset of the stream's data records and has its own unique identifier. The collection of shards represents the complete stream data. </p>
    #   @return [Array<Types::Shard>]
    # @!attribute next_token
    #   <p> A pagination token that can be used in a subsequent <code>GetStream</code> request. This token is returned if the response contains more shards than can be returned in a single response. </p>
    #   @return [String]
    class GetStreamOutput < Struct.new(
      :stream_arn,
      :stream_label,
      :stream_status,
      :stream_view_type,
      :creation_request_date_time,
      :keyspace_name,
      :table_name,
      :shards,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The Amazon Keyspaces service encountered an unexpected error while processing the request. </p> <p>This internal server error is not related to your request parameters. Retry your request after a brief delay. If the issue persists, contact Amazon Web Services Support with details of your request to help identify and resolve the problem.</p>
    # @!attribute message
    #   <p>The service encountered an internal error. Try your request again.</p>
    #   @return [String]
    class InternalServerException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a cell in an Amazon Keyspaces table, containing both the value and metadata about the cell.</p>
    # @!attribute value
    #   <p>The value stored in this cell, which can be of various data types supported by Amazon Keyspaces.</p>
    #   @return [Types::KeyspacesCellValue]
    # @!attribute metadata
    #   <p>Metadata associated with this cell, such as time-to-live (TTL) expiration time and write timestamp.</p>
    #   @return [Types::KeyspacesMetadata]
    class KeyspacesCell < Struct.new(
      :value,
      :metadata,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a key-value pair within a map data type in Amazon Keyspaces, including the associated metadata.</p>
    # @!attribute key
    #   <p>The key of this map entry in the Amazon Keyspaces cell.</p>
    #   @return [Types::KeyspacesCellValue]
    # @!attribute value
    #   <p>The value associated with the key in this map entry.</p>
    #   @return [Types::KeyspacesCellValue]
    # @!attribute metadata
    #   <p>Metadata for this specific key-value pair within the map, such as timestamps and TTL information.</p>
    #   @return [Types::KeyspacesMetadata]
    class KeyspacesCellMapDefinition < Struct.new(
      :key,
      :value,
      :metadata,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the value of a cell in an Amazon Keyspaces table, supporting various data types with type-specific fields.</p>
    # @!attribute ascii_t
    #   <p>A value of ASCII text type, containing US-ASCII characters. </p>
    #   @return [String]
    # @!attribute bigint_t
    #   <p>A 64-bit signed integer value. </p>
    #   @return [String]
    # @!attribute blob_t
    #   <p>A binary large object (BLOB) value stored as a Base64-encoded string. </p>
    #   @return [String]
    # @!attribute bool_t
    #   <p>A Boolean value, either <code>true</code> or <code>false</code>. </p>
    #   @return [Boolean]
    # @!attribute counter_t
    #   <p>A distributed counter value that can be incremented and decremented. </p>
    #   @return [String]
    # @!attribute date_t
    #   <p>A date value without a time component, represented as days since epoch (January 1, 1970). </p>
    #   @return [String]
    # @!attribute decimal_t
    #   <p>A variable-precision decimal number value. </p>
    #   @return [String]
    # @!attribute double_t
    #   <p>A 64-bit double-precision floating point value. </p>
    #   @return [String]
    # @!attribute float_t
    #   <p>A 32-bit single-precision floating point value. </p>
    #   @return [String]
    # @!attribute inet_t
    #   <p>An IP address value, either IPv4 or IPv6 format. </p>
    #   @return [String]
    # @!attribute int_t
    #   <p>A 32-bit signed integer value. </p>
    #   @return [String]
    # @!attribute list_t
    #   <p>An ordered collection of elements that can contain duplicate values. </p>
    #   @return [Array<Types::KeyspacesCell>]
    # @!attribute map_t
    #   <p>A collection of key-value pairs where each key is unique. </p>
    #   @return [Array<Types::KeyspacesCellMapDefinition>]
    # @!attribute set_t
    #   <p>An unordered collection of unique elements. </p>
    #   @return [Array<Types::KeyspacesCell>]
    # @!attribute smallint_t
    #   <p>A 16-bit signed integer value. </p>
    #   @return [String]
    # @!attribute text_t
    #   <p>A UTF-8 encoded string value. </p>
    #   @return [String]
    # @!attribute time_t
    #   <p>A time value without a date component, with nanosecond precision. </p>
    #   @return [String]
    # @!attribute timestamp_t
    #   <p>A timestamp value representing date and time with millisecond precision. </p>
    #   @return [String]
    # @!attribute timeuuid_t
    #   <p>A universally unique identifier (UUID) that includes a timestamp component, ensuring both uniqueness and time ordering. </p>
    #   @return [String]
    # @!attribute tinyint_t
    #   <p>An 8-bit signed integer value. </p>
    #   @return [String]
    # @!attribute tuple_t
    #   <p>A fixed-length ordered list of elements, where each element can be of a different data type. </p>
    #   @return [Array<Types::KeyspacesCell>]
    # @!attribute uuid_t
    #   <p>A universally unique identifier (UUID) value. </p>
    #   @return [String]
    # @!attribute varchar_t
    #   <p>A UTF-8 encoded string value, functionally equivalent to text type. </p>
    #   @return [String]
    # @!attribute varint_t
    #   <p>A variable precision integer value with arbitrary length. </p>
    #   @return [String]
    # @!attribute udt_t
    #   <p>A user-defined type (UDT) value consisting of named fields, each with its own data type. </p>
    #   @return [Hash<String, Types::KeyspacesCell>]
    class KeyspacesCellValue < Struct.new(
      :ascii_t,
      :bigint_t,
      :blob_t,
      :bool_t,
      :counter_t,
      :date_t,
      :decimal_t,
      :double_t,
      :float_t,
      :inet_t,
      :int_t,
      :list_t,
      :map_t,
      :set_t,
      :smallint_t,
      :text_t,
      :time_t,
      :timestamp_t,
      :timeuuid_t,
      :tinyint_t,
      :tuple_t,
      :uuid_t,
      :varchar_t,
      :varint_t,
      :udt_t,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class AsciiT < KeyspacesCellValue; end
      class BigintT < KeyspacesCellValue; end
      class BlobT < KeyspacesCellValue; end
      class BoolT < KeyspacesCellValue; end
      class CounterT < KeyspacesCellValue; end
      class DateT < KeyspacesCellValue; end
      class DecimalT < KeyspacesCellValue; end
      class DoubleT < KeyspacesCellValue; end
      class FloatT < KeyspacesCellValue; end
      class InetT < KeyspacesCellValue; end
      class IntT < KeyspacesCellValue; end
      class ListT < KeyspacesCellValue; end
      class MapT < KeyspacesCellValue; end
      class SetT < KeyspacesCellValue; end
      class SmallintT < KeyspacesCellValue; end
      class TextT < KeyspacesCellValue; end
      class TimeT < KeyspacesCellValue; end
      class TimestampT < KeyspacesCellValue; end
      class TimeuuidT < KeyspacesCellValue; end
      class TinyintT < KeyspacesCellValue; end
      class TupleT < KeyspacesCellValue; end
      class UuidT < KeyspacesCellValue; end
      class VarcharT < KeyspacesCellValue; end
      class VarintT < KeyspacesCellValue; end
      class UdtT < KeyspacesCellValue; end
      class Unknown < KeyspacesCellValue; end
    end

    # <p>Contains metadata information associated with Amazon Keyspaces cells and rows.</p>
    # @!attribute expiration_time
    #   <p>The time at which the associated data will expire, based on the time-to-live (TTL) setting.</p>
    #   @return [String]
    # @!attribute write_time
    #   <p>The timestamp at which the associated data was written to the database.</p>
    #   @return [String]
    class KeyspacesMetadata < Struct.new(
      :expiration_time,
      :write_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a row in an Amazon Keyspaces table, containing regular column values, static column values, and row-level metadata.</p>
    # @!attribute value_cells
    #   <p>A map of regular (non-static) column cells in the row, where keys are column names and values are the corresponding cells.</p>
    #   @return [Hash<String, Types::KeyspacesCell>]
    # @!attribute static_cells
    #   <p>A map of static column cells shared by all rows with the same partition key, where keys are column names and values are the corresponding cells.</p>
    #   @return [Hash<String, Types::KeyspacesCell>]
    # @!attribute row_metadata
    #   <p>Metadata that applies to the entire row, such as timestamps and TTL information.</p>
    #   @return [Types::KeyspacesMetadata]
    class KeyspacesRow < Struct.new(
      :value_cells,
      :static_cells,
      :row_metadata,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute keyspace_name
    #   <p> The name of the keyspace for which to list streams. If specified, only streams associated with tables in this keyspace are returned. If omitted, streams from all keyspaces are included in the results. </p>
    #   @return [String]
    # @!attribute table_name
    #   <p> The name of the table for which to list streams. Must be used together with <code>keyspaceName</code>. If specified, only streams associated with this specific table are returned. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p> The maximum number of streams to return in a single <code>ListStreams</code> request. Default value is 100. The minimum value is 1 and the maximum value is 100. </p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p> An optional pagination token provided by a previous <code>ListStreams</code> operation. If this parameter is specified, the response includes only records beyond the token, up to the value specified by <code>maxResults</code>. </p>
    #   @return [String]
    class ListStreamsInput < Struct.new(
      :keyspace_name,
      :table_name,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute streams
    #   <p> An array of stream objects, each containing summary information about a stream including its ARN, status, and associated table information. This list includes all streams that match the request criteria. </p>
    #   @return [Array<Types::Stream>]
    # @!attribute next_token
    #   <p> A pagination token that can be used in a subsequent <code>ListStreams</code> request. This token is returned if the response contains more streams than can be returned in a single response based on the <code>MaxResults</code> parameter. </p>
    #   @return [String]
    class ListStreamsOutput < Struct.new(
      :streams,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a change data capture record for a row in an Amazon Keyspaces table, containing both the new and old states of the row.</p>
    # @!attribute event_version
    #   <p>The version of the record format, used to track the evolution of the record structure over time.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp indicating when this change data capture record was created.</p>
    #   @return [Time]
    # @!attribute origin
    #   <p>The origin or source of this change data capture record.</p>
    #   @return [String]
    # @!attribute partition_keys
    #   <p>The partition key columns and their values for the affected row.</p>
    #   @return [Hash<String, Types::KeyspacesCellValue>]
    # @!attribute clustering_keys
    #   <p>The clustering key columns and their values for the affected row, which determine the order of rows within a partition.</p>
    #   @return [Hash<String, Types::KeyspacesCellValue>]
    # @!attribute new_image
    #   <p>The state of the row after the change operation that generated this record.</p>
    #   @return [Types::KeyspacesRow]
    # @!attribute old_image
    #   <p>The state of the row before the change operation that generated this record.</p>
    #   @return [Types::KeyspacesRow]
    # @!attribute sequence_number
    #   <p>A unique identifier assigned to this record within the shard, used for ordering and tracking purposes.</p>
    #   @return [String]
    class Record < Struct.new(
      :event_version,
      :created_at,
      :origin,
      :partition_keys,
      :clustering_keys,
      :new_image,
      :old_image,
      :sequence_number,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The requested resource doesn't exist or could not be found. </p> <p>This exception occurs when you attempt to access a keyspace, table, stream, or other Amazon Keyspaces resource that doesn't exist or that has been deleted. Verify that the resource identifier is correct and that the resource exists in your account.</p>
    # @!attribute message
    #   <p>The requested resource wasn't found. Verify that the resource exists and try again.</p>
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines a range of sequence numbers within a change data capture stream's shard for Amazon Keyspaces.</p>
    # @!attribute starting_sequence_number
    #   <p>The starting sequence number of the range.</p>
    #   @return [String]
    # @!attribute ending_sequence_number
    #   <p>The ending sequence number of the range, which may be null for open-ended ranges.</p>
    #   @return [String]
    class SequenceNumberRange < Struct.new(
      :starting_sequence_number,
      :ending_sequence_number,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a uniquely identified group of change records within a change data capture stream for Amazon Keyspaces.</p>
    # @!attribute shard_id
    #   <p>A unique identifier for this shard within the stream.</p>
    #   @return [String]
    # @!attribute sequence_number_range
    #   <p>The range of sequence numbers contained within this shard.</p>
    #   @return [Types::SequenceNumberRange]
    # @!attribute parent_shard_ids
    #   <p>The identifiers of parent shards that this shard evolved from, if this shard was created through resharding.</p>
    #   @return [Array<String>]
    class Shard < Struct.new(
      :shard_id,
      :sequence_number_range,
      :parent_shard_ids,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A filter used to limit the shards returned by a <code>GetStream</code> operation.</p>
    # @!attribute type
    #   <p>The type of shard filter to use, which determines how the shardId parameter is interpreted.</p>
    #   @return [String]
    # @!attribute shard_id
    #   <p>The identifier of a specific shard used to filter results based on the specified filter type.</p>
    #   @return [String]
    class ShardFilter < Struct.new(
      :type,
      :shard_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a change data capture stream for an Amazon Keyspaces table, which enables tracking and processing of data changes.</p>
    # @!attribute stream_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies this stream.</p>
    #   @return [String]
    # @!attribute keyspace_name
    #   <p>The name of the keyspace containing the table associated with this stream.</p>
    #   @return [String]
    # @!attribute table_name
    #   <p>The name of the table associated with this stream.</p>
    #   @return [String]
    # @!attribute stream_label
    #   <p>A unique identifier for this stream that can be used in stream operations.</p>
    #   @return [String]
    class Stream < Struct.new(
      :stream_arn,
      :keyspace_name,
      :table_name,
      :stream_label,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request rate is too high and exceeds the service's throughput limits. </p> <p>This exception occurs when you send too many requests in a short period of time. Implement exponential backoff in your retry strategy to handle this exception. Reducing your request frequency or distributing requests more evenly can help avoid throughput exceptions.</p>
    # @!attribute message
    #   <p>The request was denied due to request throttling. Reduce the frequency of requests and try again.</p>
    #   @return [String]
    class ThrottlingException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request validation failed because one or more input parameters failed validation. </p> <p>This exception occurs when there are syntax errors in the request, field constraints are violated, or required parameters are missing. To help you fix the issue, the exception message provides details about which parameter failed and why.</p>
    # @!attribute message
    #   <p>The input fails to satisfy the constraints specified by the service. Check the error details and modify your request.</p>
    #   @return [String]
    # @!attribute error_code
    #   <p>An error occurred validating your request. See the error message for details.</p>
    #   @return [String]
    class ValidationException < Struct.new(
      :message,
      :error_code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
