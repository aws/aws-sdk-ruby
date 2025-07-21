# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::KeyspacesStreams
  module Types

    # You don't have sufficient access permissions to perform this
    # operation.
    #
    # This exception occurs when your IAM user or role lacks the required
    # permissions to access the Amazon Keyspaces resource or perform the
    # requested action. Check your IAM policies and ensure they grant the
    # necessary permissions.
    #
    # @!attribute [rw] message
    #   You don't have sufficient permissions to perform this action.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/keyspacesstreams-2024-09-09/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] shard_iterator
    #   The unique identifier of the shard iterator. A shard iterator
    #   specifies the position in the shard from which you want to start
    #   reading data records sequentially. You obtain this value by calling
    #   the `GetShardIterator` operation. Each shard iterator is valid for
    #   15 minutes after creation.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of records to return in a single `GetRecords`
    #   request. Default value is 1000. You can specify a limit between 1
    #   and 1000, but the actual number returned might be less than the
    #   specified maximum if the size of the data for the returned records
    #   exceeds the internal size limit.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/keyspacesstreams-2024-09-09/GetRecordsInput AWS API Documentation
    #
    class GetRecordsInput < Struct.new(
      :shard_iterator,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] change_records
    #   An array of change data records retrieved from the specified shard.
    #   Each record represents a single data modification (insert, update,
    #   or delete) to a row in the Amazon Keyspaces table. Records include
    #   the primary key columns and information about what data was
    #   modified.
    #   @return [Array<Types::Record>]
    #
    # @!attribute [rw] next_shard_iterator
    #   The next position in the shard from which to start sequentially
    #   reading data records. If null, the shard has been closed and the
    #   requested iterator doesn't return any more data.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/keyspacesstreams-2024-09-09/GetRecordsOutput AWS API Documentation
    #
    class GetRecordsOutput < Struct.new(
      :change_records,
      :next_shard_iterator)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] stream_arn
    #   The Amazon Resource Name (ARN) of the stream for which to get the
    #   shard iterator. The ARN uniquely identifies the stream within Amazon
    #   Keyspaces.
    #   @return [String]
    #
    # @!attribute [rw] shard_id
    #   The identifier of the shard within the stream. The shard ID uniquely
    #   identifies a subset of the stream's data records that you want to
    #   access.
    #   @return [String]
    #
    # @!attribute [rw] shard_iterator_type
    #   Determines how the shard iterator is positioned. Must be one of the
    #   following:
    #
    #   * `TRIM_HORIZON` - Start reading at the last untrimmed record in the
    #     shard, which is the oldest data record in the shard.
    #
    #   * `AT_SEQUENCE_NUMBER` - Start reading exactly from the specified
    #     sequence number.
    #
    #   * `AFTER_SEQUENCE_NUMBER` - Start reading right after the specified
    #     sequence number.
    #
    #   * `LATEST` - Start reading just after the most recent record in the
    #     shard, so that you always read the most recent data.
    #   @return [String]
    #
    # @!attribute [rw] sequence_number
    #   The sequence number of the data record in the shard from which to
    #   start reading. Required if `ShardIteratorType` is
    #   `AT_SEQUENCE_NUMBER` or `AFTER_SEQUENCE_NUMBER`. This parameter is
    #   ignored for other iterator types.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/keyspacesstreams-2024-09-09/GetShardIteratorInput AWS API Documentation
    #
    class GetShardIteratorInput < Struct.new(
      :stream_arn,
      :shard_id,
      :shard_iterator_type,
      :sequence_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] shard_iterator
    #   The unique identifier for the shard iterator. This value is used in
    #   the `GetRecords` operation to retrieve data records from the
    #   specified shard. Each shard iterator expires 15 minutes after it is
    #   returned to the requester.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/keyspacesstreams-2024-09-09/GetShardIteratorOutput AWS API Documentation
    #
    class GetShardIteratorOutput < Struct.new(
      :shard_iterator)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] stream_arn
    #   The Amazon Resource Name (ARN) of the stream for which detailed
    #   information is requested. This uniquely identifies the specific
    #   stream you want to get information about.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of shard objects to return in a single
    #   `GetStream` request. Default value is 100. The minimum value is 1
    #   and the maximum value is 100.
    #   @return [Integer]
    #
    # @!attribute [rw] shard_filter
    #   Optional filter criteria to apply when retrieving shards. You can
    #   filter shards based on their state or other attributes to narrow
    #   down the results returned by the `GetStream` operation.
    #   @return [Types::ShardFilter]
    #
    # @!attribute [rw] next_token
    #   An optional pagination token provided by a previous `GetStream`
    #   operation. If this parameter is specified, the response includes
    #   only records beyond the token, up to the value specified by
    #   `maxResults`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/keyspacesstreams-2024-09-09/GetStreamInput AWS API Documentation
    #
    class GetStreamInput < Struct.new(
      :stream_arn,
      :max_results,
      :shard_filter,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] stream_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies the stream
    #   within Amazon Keyspaces. This ARN can be used in other API
    #   operations to reference this specific stream.
    #   @return [String]
    #
    # @!attribute [rw] stream_label
    #   A timestamp that serves as a unique identifier for this stream, used
    #   for debugging and monitoring purposes. The stream label represents
    #   the point in time when the stream was created.
    #   @return [String]
    #
    # @!attribute [rw] stream_status
    #   The current status of the stream. Values can be `ENABLING`,
    #   `ENABLED`, `DISABLING`, or `DISABLED`. Operations on the stream
    #   depend on its current status.
    #   @return [String]
    #
    # @!attribute [rw] stream_view_type
    #   The format of the data records in this stream. Currently, this can
    #   be one of the following options:
    #
    #   * `NEW_AND_OLD_IMAGES` - both versions of the row, before and after
    #     the change. This is the default.
    #
    #   * `NEW_IMAGE` - the version of the row after the change.
    #
    #   * `OLD_IMAGE` - the version of the row before the change.
    #
    #   * `KEYS_ONLY` - the partition and clustering keys of the row that
    #     was changed.
    #   @return [String]
    #
    # @!attribute [rw] creation_request_date_time
    #   The date and time when the request to create this stream was issued.
    #   The value is represented in ISO 8601 format.
    #   @return [Time]
    #
    # @!attribute [rw] keyspace_name
    #   The name of the keyspace containing the table associated with this
    #   stream. The keyspace name is part of the table's hierarchical
    #   identifier in Amazon Keyspaces.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   The name of the table associated with this stream. The stream
    #   captures changes to rows in this Amazon Keyspaces table.
    #   @return [String]
    #
    # @!attribute [rw] shards
    #   An array of shard objects associated with this stream. Each shard
    #   contains a subset of the stream's data records and has its own
    #   unique identifier. The collection of shards represents the complete
    #   stream data.
    #   @return [Array<Types::Shard>]
    #
    # @!attribute [rw] next_token
    #   A pagination token that can be used in a subsequent `GetStream`
    #   request. This token is returned if the response contains more shards
    #   than can be returned in a single response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/keyspacesstreams-2024-09-09/GetStreamOutput AWS API Documentation
    #
    class GetStreamOutput < Struct.new(
      :stream_arn,
      :stream_label,
      :stream_status,
      :stream_view_type,
      :creation_request_date_time,
      :keyspace_name,
      :table_name,
      :shards,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Amazon Keyspaces service encountered an unexpected error while
    # processing the request.
    #
    # This internal server error is not related to your request parameters.
    # Retry your request after a brief delay. If the issue persists, contact
    # Amazon Web Services Support with details of your request to help
    # identify and resolve the problem.
    #
    # @!attribute [rw] message
    #   The service encountered an internal error. Try your request again.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/keyspacesstreams-2024-09-09/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a cell in an Amazon Keyspaces table, containing both the
    # value and metadata about the cell.
    #
    # @!attribute [rw] value
    #   The value stored in this cell, which can be of various data types
    #   supported by Amazon Keyspaces.
    #   @return [Types::KeyspacesCellValue]
    #
    # @!attribute [rw] metadata
    #   Metadata associated with this cell, such as time-to-live (TTL)
    #   expiration time and write timestamp.
    #   @return [Types::KeyspacesMetadata]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/keyspacesstreams-2024-09-09/KeyspacesCell AWS API Documentation
    #
    class KeyspacesCell < Struct.new(
      :value,
      :metadata)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a key-value pair within a map data type in Amazon
    # Keyspaces, including the associated metadata.
    #
    # @!attribute [rw] key
    #   The key of this map entry in the Amazon Keyspaces cell.
    #   @return [Types::KeyspacesCellValue]
    #
    # @!attribute [rw] value
    #   The value associated with the key in this map entry.
    #   @return [Types::KeyspacesCellValue]
    #
    # @!attribute [rw] metadata
    #   Metadata for this specific key-value pair within the map, such as
    #   timestamps and TTL information.
    #   @return [Types::KeyspacesMetadata]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/keyspacesstreams-2024-09-09/KeyspacesCellMapDefinition AWS API Documentation
    #
    class KeyspacesCellMapDefinition < Struct.new(
      :key,
      :value,
      :metadata)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the value of a cell in an Amazon Keyspaces table,
    # supporting various data types with type-specific fields.
    #
    # @note KeyspacesCellValue is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of KeyspacesCellValue corresponding to the set member.
    #
    # @!attribute [rw] ascii_t
    #   A value of ASCII text type, containing US-ASCII characters.
    #   @return [String]
    #
    # @!attribute [rw] bigint_t
    #   A 64-bit signed integer value.
    #   @return [String]
    #
    # @!attribute [rw] blob_t
    #   A binary large object (BLOB) value stored as a Base64-encoded
    #   string.
    #   @return [String]
    #
    # @!attribute [rw] bool_t
    #   A Boolean value, either `true` or `false`.
    #   @return [Boolean]
    #
    # @!attribute [rw] counter_t
    #   A distributed counter value that can be incremented and decremented.
    #   @return [String]
    #
    # @!attribute [rw] date_t
    #   A date value without a time component, represented as days since
    #   epoch (January 1, 1970).
    #   @return [String]
    #
    # @!attribute [rw] decimal_t
    #   A variable-precision decimal number value.
    #   @return [String]
    #
    # @!attribute [rw] double_t
    #   A 64-bit double-precision floating point value.
    #   @return [String]
    #
    # @!attribute [rw] float_t
    #   A 32-bit single-precision floating point value.
    #   @return [String]
    #
    # @!attribute [rw] inet_t
    #   An IP address value, either IPv4 or IPv6 format.
    #   @return [String]
    #
    # @!attribute [rw] int_t
    #   A 32-bit signed integer value.
    #   @return [String]
    #
    # @!attribute [rw] list_t
    #   An ordered collection of elements that can contain duplicate values.
    #   @return [Array<Types::KeyspacesCell>]
    #
    # @!attribute [rw] map_t
    #   A collection of key-value pairs where each key is unique.
    #   @return [Array<Types::KeyspacesCellMapDefinition>]
    #
    # @!attribute [rw] set_t
    #   An unordered collection of unique elements.
    #   @return [Array<Types::KeyspacesCell>]
    #
    # @!attribute [rw] smallint_t
    #   A 16-bit signed integer value.
    #   @return [String]
    #
    # @!attribute [rw] text_t
    #   A UTF-8 encoded string value.
    #   @return [String]
    #
    # @!attribute [rw] time_t
    #   A time value without a date component, with nanosecond precision.
    #   @return [String]
    #
    # @!attribute [rw] timestamp_t
    #   A timestamp value representing date and time with millisecond
    #   precision.
    #   @return [String]
    #
    # @!attribute [rw] timeuuid_t
    #   A universally unique identifier (UUID) that includes a timestamp
    #   component, ensuring both uniqueness and time ordering.
    #   @return [String]
    #
    # @!attribute [rw] tinyint_t
    #   An 8-bit signed integer value.
    #   @return [String]
    #
    # @!attribute [rw] tuple_t
    #   A fixed-length ordered list of elements, where each element can be
    #   of a different data type.
    #   @return [Array<Types::KeyspacesCell>]
    #
    # @!attribute [rw] uuid_t
    #   A universally unique identifier (UUID) value.
    #   @return [String]
    #
    # @!attribute [rw] varchar_t
    #   A UTF-8 encoded string value, functionally equivalent to text type.
    #   @return [String]
    #
    # @!attribute [rw] varint_t
    #   A variable precision integer value with arbitrary length.
    #   @return [String]
    #
    # @!attribute [rw] udt_t
    #   A user-defined type (UDT) value consisting of named fields, each
    #   with its own data type.
    #   @return [Hash<String,Types::KeyspacesCell>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/keyspacesstreams-2024-09-09/KeyspacesCellValue AWS API Documentation
    #
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
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

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

    # Contains metadata information associated with Amazon Keyspaces cells
    # and rows.
    #
    # @!attribute [rw] expiration_time
    #   The time at which the associated data will expire, based on the
    #   time-to-live (TTL) setting.
    #   @return [String]
    #
    # @!attribute [rw] write_time
    #   The timestamp at which the associated data was written to the
    #   database.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/keyspacesstreams-2024-09-09/KeyspacesMetadata AWS API Documentation
    #
    class KeyspacesMetadata < Struct.new(
      :expiration_time,
      :write_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a row in an Amazon Keyspaces table, containing regular
    # column values, static column values, and row-level metadata.
    #
    # @!attribute [rw] value_cells
    #   A map of regular (non-static) column cells in the row, where keys
    #   are column names and values are the corresponding cells.
    #   @return [Hash<String,Types::KeyspacesCell>]
    #
    # @!attribute [rw] static_cells
    #   A map of static column cells shared by all rows with the same
    #   partition key, where keys are column names and values are the
    #   corresponding cells.
    #   @return [Hash<String,Types::KeyspacesCell>]
    #
    # @!attribute [rw] row_metadata
    #   Metadata that applies to the entire row, such as timestamps and TTL
    #   information.
    #   @return [Types::KeyspacesMetadata]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/keyspacesstreams-2024-09-09/KeyspacesRow AWS API Documentation
    #
    class KeyspacesRow < Struct.new(
      :value_cells,
      :static_cells,
      :row_metadata)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] keyspace_name
    #   The name of the keyspace for which to list streams. If specified,
    #   only streams associated with tables in this keyspace are returned.
    #   If omitted, streams from all keyspaces are included in the results.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   The name of the table for which to list streams. Must be used
    #   together with `keyspaceName`. If specified, only streams associated
    #   with this specific table are returned.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of streams to return in a single `ListStreams`
    #   request. Default value is 100. The minimum value is 1 and the
    #   maximum value is 100.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   An optional pagination token provided by a previous `ListStreams`
    #   operation. If this parameter is specified, the response includes
    #   only records beyond the token, up to the value specified by
    #   `maxResults`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/keyspacesstreams-2024-09-09/ListStreamsInput AWS API Documentation
    #
    class ListStreamsInput < Struct.new(
      :keyspace_name,
      :table_name,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] streams
    #   An array of stream objects, each containing summary information
    #   about a stream including its ARN, status, and associated table
    #   information. This list includes all streams that match the request
    #   criteria.
    #   @return [Array<Types::Stream>]
    #
    # @!attribute [rw] next_token
    #   A pagination token that can be used in a subsequent `ListStreams`
    #   request. This token is returned if the response contains more
    #   streams than can be returned in a single response based on the
    #   `MaxResults` parameter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/keyspacesstreams-2024-09-09/ListStreamsOutput AWS API Documentation
    #
    class ListStreamsOutput < Struct.new(
      :streams,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a change data capture record for a row in an Amazon
    # Keyspaces table, containing both the new and old states of the row.
    #
    # @!attribute [rw] event_version
    #   The version of the record format, used to track the evolution of the
    #   record structure over time.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp indicating when this change data capture record was
    #   created.
    #   @return [Time]
    #
    # @!attribute [rw] origin
    #   The origin or source of this change data capture record.
    #   @return [String]
    #
    # @!attribute [rw] partition_keys
    #   The partition key columns and their values for the affected row.
    #   @return [Hash<String,Types::KeyspacesCellValue>]
    #
    # @!attribute [rw] clustering_keys
    #   The clustering key columns and their values for the affected row,
    #   which determine the order of rows within a partition.
    #   @return [Hash<String,Types::KeyspacesCellValue>]
    #
    # @!attribute [rw] new_image
    #   The state of the row after the change operation that generated this
    #   record.
    #   @return [Types::KeyspacesRow]
    #
    # @!attribute [rw] old_image
    #   The state of the row before the change operation that generated this
    #   record.
    #   @return [Types::KeyspacesRow]
    #
    # @!attribute [rw] sequence_number
    #   A unique identifier assigned to this record within the shard, used
    #   for ordering and tracking purposes.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/keyspacesstreams-2024-09-09/Record AWS API Documentation
    #
    class Record < Struct.new(
      :event_version,
      :created_at,
      :origin,
      :partition_keys,
      :clustering_keys,
      :new_image,
      :old_image,
      :sequence_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # The requested resource doesn't exist or could not be found.
    #
    # This exception occurs when you attempt to access a keyspace, table,
    # stream, or other Amazon Keyspaces resource that doesn't exist or that
    # has been deleted. Verify that the resource identifier is correct and
    # that the resource exists in your account.
    #
    # @!attribute [rw] message
    #   The requested resource wasn't found. Verify that the resource
    #   exists and try again.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/keyspacesstreams-2024-09-09/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines a range of sequence numbers within a change data capture
    # stream's shard for Amazon Keyspaces.
    #
    # @!attribute [rw] starting_sequence_number
    #   The starting sequence number of the range.
    #   @return [String]
    #
    # @!attribute [rw] ending_sequence_number
    #   The ending sequence number of the range, which may be null for
    #   open-ended ranges.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/keyspacesstreams-2024-09-09/SequenceNumberRange AWS API Documentation
    #
    class SequenceNumberRange < Struct.new(
      :starting_sequence_number,
      :ending_sequence_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a uniquely identified group of change records within a
    # change data capture stream for Amazon Keyspaces.
    #
    # @!attribute [rw] shard_id
    #   A unique identifier for this shard within the stream.
    #   @return [String]
    #
    # @!attribute [rw] sequence_number_range
    #   The range of sequence numbers contained within this shard.
    #   @return [Types::SequenceNumberRange]
    #
    # @!attribute [rw] parent_shard_ids
    #   The identifiers of parent shards that this shard evolved from, if
    #   this shard was created through resharding.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/keyspacesstreams-2024-09-09/Shard AWS API Documentation
    #
    class Shard < Struct.new(
      :shard_id,
      :sequence_number_range,
      :parent_shard_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # A filter used to limit the shards returned by a `GetStream` operation.
    #
    # @!attribute [rw] type
    #   The type of shard filter to use, which determines how the shardId
    #   parameter is interpreted.
    #   @return [String]
    #
    # @!attribute [rw] shard_id
    #   The identifier of a specific shard used to filter results based on
    #   the specified filter type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/keyspacesstreams-2024-09-09/ShardFilter AWS API Documentation
    #
    class ShardFilter < Struct.new(
      :type,
      :shard_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a change data capture stream for an Amazon Keyspaces table,
    # which enables tracking and processing of data changes.
    #
    # @!attribute [rw] stream_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies this stream.
    #   @return [String]
    #
    # @!attribute [rw] keyspace_name
    #   The name of the keyspace containing the table associated with this
    #   stream.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   The name of the table associated with this stream.
    #   @return [String]
    #
    # @!attribute [rw] stream_label
    #   A unique identifier for this stream that can be used in stream
    #   operations.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/keyspacesstreams-2024-09-09/Stream AWS API Documentation
    #
    class Stream < Struct.new(
      :stream_arn,
      :keyspace_name,
      :table_name,
      :stream_label)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request rate is too high and exceeds the service's throughput
    # limits.
    #
    # This exception occurs when you send too many requests in a short
    # period of time. Implement exponential backoff in your retry strategy
    # to handle this exception. Reducing your request frequency or
    # distributing requests more evenly can help avoid throughput
    # exceptions.
    #
    # @!attribute [rw] message
    #   The request was denied due to request throttling. Reduce the
    #   frequency of requests and try again.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/keyspacesstreams-2024-09-09/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request validation failed because one or more input parameters
    # failed validation.
    #
    # This exception occurs when there are syntax errors in the request,
    # field constraints are violated, or required parameters are missing. To
    # help you fix the issue, the exception message provides details about
    # which parameter failed and why.
    #
    # @!attribute [rw] message
    #   The input fails to satisfy the constraints specified by the service.
    #   Check the error details and modify your request.
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   An error occurred validating your request. See the error message for
    #   details.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/keyspacesstreams-2024-09-09/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message,
      :error_code)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

