# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::DynamoDBStreams
  module Types

    # Represents the data for an attribute. You can set one, and only one,
    # of the elements.
    #
    # Each attribute in an item is a name-value pair. An attribute can be
    # single-valued or multi-valued set. For example, a book item can have
    # title and authors attributes. Each book has one title but can have
    # many authors. The multi-valued attribute is a set; duplicate values
    # are not allowed.
    #
    # @!attribute [rw] s
    #   A String data type.
    #   @return [String]
    #
    # @!attribute [rw] n
    #   A Number data type.
    #   @return [String]
    #
    # @!attribute [rw] b
    #   A Binary data type.
    #   @return [String]
    #
    # @!attribute [rw] ss
    #   A String Set data type.
    #   @return [Array<String>]
    #
    # @!attribute [rw] ns
    #   A Number Set data type.
    #   @return [Array<String>]
    #
    # @!attribute [rw] bs
    #   A Binary Set data type.
    #   @return [Array<String>]
    #
    # @!attribute [rw] m
    #   A Map data type.
    #   @return [Hash<String,Types::AttributeValue>]
    #
    # @!attribute [rw] l
    #   A List data type.
    #   @return [Array<Types::AttributeValue>]
    #
    # @!attribute [rw] null
    #   A Null data type.
    #   @return [Boolean]
    #
    # @!attribute [rw] bool
    #   A Boolean data type.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/streams-dynamodb-2012-08-10/AttributeValue AWS API Documentation
    #
    class AttributeValue < Struct.new(
      :s,
      :n,
      :b,
      :ss,
      :ns,
      :bs,
      :m,
      :l,
      :null,
      :bool)
      include Aws::Structure
    end

    # Represents the input of a `DescribeStream` operation.
    #
    # @note When making an API call, you may pass DescribeStreamInput
    #   data as a hash:
    #
    #       {
    #         stream_arn: "StreamArn", # required
    #         limit: 1,
    #         exclusive_start_shard_id: "ShardId",
    #       }
    #
    # @!attribute [rw] stream_arn
    #   The Amazon Resource Name (ARN) for the stream.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of shard objects to return. The upper limit is
    #   100.
    #   @return [Integer]
    #
    # @!attribute [rw] exclusive_start_shard_id
    #   The shard ID of the first item that this operation will evaluate.
    #   Use the value that was returned for `LastEvaluatedShardId` in the
    #   previous operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/streams-dynamodb-2012-08-10/DescribeStreamInput AWS API Documentation
    #
    class DescribeStreamInput < Struct.new(
      :stream_arn,
      :limit,
      :exclusive_start_shard_id)
      include Aws::Structure
    end

    # Represents the output of a `DescribeStream` operation.
    #
    # @!attribute [rw] stream_description
    #   A complete description of the stream, including its creation date
    #   and time, the DynamoDB table associated with the stream, the shard
    #   IDs within the stream, and the beginning and ending sequence numbers
    #   of stream records within the shards.
    #   @return [Types::StreamDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/streams-dynamodb-2012-08-10/DescribeStreamOutput AWS API Documentation
    #
    class DescribeStreamOutput < Struct.new(
      :stream_description)
      include Aws::Structure
    end

    # Represents the input of a `GetRecords` operation.
    #
    # @note When making an API call, you may pass GetRecordsInput
    #   data as a hash:
    #
    #       {
    #         shard_iterator: "ShardIterator", # required
    #         limit: 1,
    #       }
    #
    # @!attribute [rw] shard_iterator
    #   A shard iterator that was retrieved from a previous GetShardIterator
    #   operation. This iterator can be used to access the stream records in
    #   this shard.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of records to return from the shard. The upper
    #   limit is 1000.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/streams-dynamodb-2012-08-10/GetRecordsInput AWS API Documentation
    #
    class GetRecordsInput < Struct.new(
      :shard_iterator,
      :limit)
      include Aws::Structure
    end

    # Represents the output of a `GetRecords` operation.
    #
    # @!attribute [rw] records
    #   The stream records from the shard, which were retrieved using the
    #   shard iterator.
    #   @return [Array<Types::Record>]
    #
    # @!attribute [rw] next_shard_iterator
    #   The next position in the shard from which to start sequentially
    #   reading stream records. If set to `null`, the shard has been closed
    #   and the requested iterator will not return any more data.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/streams-dynamodb-2012-08-10/GetRecordsOutput AWS API Documentation
    #
    class GetRecordsOutput < Struct.new(
      :records,
      :next_shard_iterator)
      include Aws::Structure
    end

    # Represents the input of a `GetShardIterator` operation.
    #
    # @note When making an API call, you may pass GetShardIteratorInput
    #   data as a hash:
    #
    #       {
    #         stream_arn: "StreamArn", # required
    #         shard_id: "ShardId", # required
    #         shard_iterator_type: "TRIM_HORIZON", # required, accepts TRIM_HORIZON, LATEST, AT_SEQUENCE_NUMBER, AFTER_SEQUENCE_NUMBER
    #         sequence_number: "SequenceNumber",
    #       }
    #
    # @!attribute [rw] stream_arn
    #   The Amazon Resource Name (ARN) for the stream.
    #   @return [String]
    #
    # @!attribute [rw] shard_id
    #   The identifier of the shard. The iterator will be returned for this
    #   shard ID.
    #   @return [String]
    #
    # @!attribute [rw] shard_iterator_type
    #   Determines how the shard iterator is used to start reading stream
    #   records from the shard:
    #
    #   * `AT_SEQUENCE_NUMBER` - Start reading exactly from the position
    #     denoted by a specific sequence number.
    #
    #   * `AFTER_SEQUENCE_NUMBER` - Start reading right after the position
    #     denoted by a specific sequence number.
    #
    #   * `TRIM_HORIZON` - Start reading at the last (untrimmed) stream
    #     record, which is the oldest record in the shard. In DynamoDB
    #     Streams, there is a 24 hour limit on data retention. Stream
    #     records whose age exceeds this limit are subject to removal
    #     (trimming) from the stream.
    #
    #   * `LATEST` - Start reading just after the most recent stream record
    #     in the shard, so that you always read the most recent data in the
    #     shard.
    #   @return [String]
    #
    # @!attribute [rw] sequence_number
    #   The sequence number of a stream record in the shard from which to
    #   start reading.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/streams-dynamodb-2012-08-10/GetShardIteratorInput AWS API Documentation
    #
    class GetShardIteratorInput < Struct.new(
      :stream_arn,
      :shard_id,
      :shard_iterator_type,
      :sequence_number)
      include Aws::Structure
    end

    # Represents the output of a `GetShardIterator` operation.
    #
    # @!attribute [rw] shard_iterator
    #   The position in the shard from which to start reading stream records
    #   sequentially. A shard iterator specifies this position using the
    #   sequence number of a stream record in a shard.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/streams-dynamodb-2012-08-10/GetShardIteratorOutput AWS API Documentation
    #
    class GetShardIteratorOutput < Struct.new(
      :shard_iterator)
      include Aws::Structure
    end

    # Contains details about the type of identity that made the request.
    #
    # @!attribute [rw] principal_id
    #   A unique identifier for the entity that made the call. For Time To
    #   Live, the principalId is "dynamodb.amazonaws.com".
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the identity. For Time To Live, the type is "Service".
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/streams-dynamodb-2012-08-10/Identity AWS API Documentation
    #
    class Identity < Struct.new(
      :principal_id,
      :type)
      include Aws::Structure
    end

    # Represents *a single element* of a key schema. A key schema specifies
    # the attributes that make up the primary key of a table, or the key
    # attributes of an index.
    #
    # A `KeySchemaElement` represents exactly one attribute of the primary
    # key. For example, a simple primary key (partition key) would be
    # represented by one `KeySchemaElement`. A composite primary key
    # (partition key and sort key) would require one `KeySchemaElement` for
    # the partition key, and another `KeySchemaElement` for the sort key.
    #
    # <note markdown="1"> The partition key of an item is also known as its *hash attribute*.
    # The term "hash attribute" derives from DynamoDB's usage of an
    # internal hash function to evenly distribute data items across
    # partitions, based on their partition key values.
    #
    #  The sort key of an item is also known as its *range attribute*. The
    # term "range attribute" derives from the way DynamoDB stores items
    # with the same partition key physically close together, in sorted order
    # by the sort key value.
    #
    #  </note>
    #
    # @!attribute [rw] attribute_name
    #   The name of a key attribute.
    #   @return [String]
    #
    # @!attribute [rw] key_type
    #   The attribute data, consisting of the data type and the attribute
    #   value itself.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/streams-dynamodb-2012-08-10/KeySchemaElement AWS API Documentation
    #
    class KeySchemaElement < Struct.new(
      :attribute_name,
      :key_type)
      include Aws::Structure
    end

    # Represents the input of a `ListStreams` operation.
    #
    # @note When making an API call, you may pass ListStreamsInput
    #   data as a hash:
    #
    #       {
    #         table_name: "TableName",
    #         limit: 1,
    #         exclusive_start_stream_arn: "StreamArn",
    #       }
    #
    # @!attribute [rw] table_name
    #   If this parameter is provided, then only the streams associated with
    #   this table name are returned.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of streams to return. The upper limit is 100.
    #   @return [Integer]
    #
    # @!attribute [rw] exclusive_start_stream_arn
    #   The ARN (Amazon Resource Name) of the first item that this operation
    #   will evaluate. Use the value that was returned for
    #   `LastEvaluatedStreamArn` in the previous operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/streams-dynamodb-2012-08-10/ListStreamsInput AWS API Documentation
    #
    class ListStreamsInput < Struct.new(
      :table_name,
      :limit,
      :exclusive_start_stream_arn)
      include Aws::Structure
    end

    # Represents the output of a `ListStreams` operation.
    #
    # @!attribute [rw] streams
    #   A list of stream descriptors associated with the current account and
    #   endpoint.
    #   @return [Array<Types::Stream>]
    #
    # @!attribute [rw] last_evaluated_stream_arn
    #   The stream ARN of the item where the operation stopped, inclusive of
    #   the previous result set. Use this value to start a new operation,
    #   excluding this value in the new request.
    #
    #   If `LastEvaluatedStreamArn` is empty, then the "last page" of
    #   results has been processed and there is no more data to be
    #   retrieved.
    #
    #   If `LastEvaluatedStreamArn` is not empty, it does not necessarily
    #   mean that there is more data in the result set. The only way to know
    #   when you have reached the end of the result set is when
    #   `LastEvaluatedStreamArn` is empty.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/streams-dynamodb-2012-08-10/ListStreamsOutput AWS API Documentation
    #
    class ListStreamsOutput < Struct.new(
      :streams,
      :last_evaluated_stream_arn)
      include Aws::Structure
    end

    # A description of a unique event within a stream.
    #
    # @!attribute [rw] event_id
    #   A globally unique identifier for the event that was recorded in this
    #   stream record.
    #   @return [String]
    #
    # @!attribute [rw] event_name
    #   The type of data modification that was performed on the DynamoDB
    #   table:
    #
    #   * `INSERT` - a new item was added to the table.
    #
    #   * `MODIFY` - one or more of an existing item's attributes were
    #     modified.
    #
    #   * `REMOVE` - the item was deleted from the table
    #   @return [String]
    #
    # @!attribute [rw] event_version
    #   The version number of the stream record format. This number is
    #   updated whenever the structure of `Record` is modified.
    #
    #   Client applications must not assume that `eventVersion` will remain
    #   at a particular value, as this number is subject to change at any
    #   time. In general, `eventVersion` will only increase as the low-level
    #   DynamoDB Streams API evolves.
    #   @return [String]
    #
    # @!attribute [rw] event_source
    #   The AWS service from which the stream record originated. For
    #   DynamoDB Streams, this is `aws:dynamodb`.
    #   @return [String]
    #
    # @!attribute [rw] aws_region
    #   The region in which the `GetRecords` request was received.
    #   @return [String]
    #
    # @!attribute [rw] dynamodb
    #   The main body of the stream record, containing all of the
    #   DynamoDB-specific fields.
    #   @return [Types::StreamRecord]
    #
    # @!attribute [rw] user_identity
    #   Items that are deleted by the Time to Live process after expiration
    #   have the following fields:
    #
    #   * Records\[\].userIdentity.type
    #
    #     "Service"
    #
    #   * Records\[\].userIdentity.principalId
    #
    #     "dynamodb.amazonaws.com"
    #   @return [Types::Identity]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/streams-dynamodb-2012-08-10/Record AWS API Documentation
    #
    class Record < Struct.new(
      :event_id,
      :event_name,
      :event_version,
      :event_source,
      :aws_region,
      :dynamodb,
      :user_identity)
      include Aws::Structure
    end

    # The beginning and ending sequence numbers for the stream records
    # contained within a shard.
    #
    # @!attribute [rw] starting_sequence_number
    #   The first sequence number.
    #   @return [String]
    #
    # @!attribute [rw] ending_sequence_number
    #   The last sequence number.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/streams-dynamodb-2012-08-10/SequenceNumberRange AWS API Documentation
    #
    class SequenceNumberRange < Struct.new(
      :starting_sequence_number,
      :ending_sequence_number)
      include Aws::Structure
    end

    # A uniquely identified group of stream records within a stream.
    #
    # @!attribute [rw] shard_id
    #   The system-generated identifier for this shard.
    #   @return [String]
    #
    # @!attribute [rw] sequence_number_range
    #   The range of possible sequence numbers for the shard.
    #   @return [Types::SequenceNumberRange]
    #
    # @!attribute [rw] parent_shard_id
    #   The shard ID of the current shard's parent.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/streams-dynamodb-2012-08-10/Shard AWS API Documentation
    #
    class Shard < Struct.new(
      :shard_id,
      :sequence_number_range,
      :parent_shard_id)
      include Aws::Structure
    end

    # Represents all of the data describing a particular stream.
    #
    # @!attribute [rw] stream_arn
    #   The Amazon Resource Name (ARN) for the stream.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   The DynamoDB table with which the stream is associated.
    #   @return [String]
    #
    # @!attribute [rw] stream_label
    #   A timestamp, in ISO 8601 format, for this stream.
    #
    #   Note that `LatestStreamLabel` is not a unique identifier for the
    #   stream, because it is possible that a stream from another table
    #   might have the same timestamp. However, the combination of the
    #   following three elements is guaranteed to be unique:
    #
    #   * the AWS customer ID.
    #
    #   * the table name
    #
    #   * the `StreamLabel`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/streams-dynamodb-2012-08-10/Stream AWS API Documentation
    #
    class Stream < Struct.new(
      :stream_arn,
      :table_name,
      :stream_label)
      include Aws::Structure
    end

    # Represents all of the data describing a particular stream.
    #
    # @!attribute [rw] stream_arn
    #   The Amazon Resource Name (ARN) for the stream.
    #   @return [String]
    #
    # @!attribute [rw] stream_label
    #   A timestamp, in ISO 8601 format, for this stream.
    #
    #   Note that `LatestStreamLabel` is not a unique identifier for the
    #   stream, because it is possible that a stream from another table
    #   might have the same timestamp. However, the combination of the
    #   following three elements is guaranteed to be unique:
    #
    #   * the AWS customer ID.
    #
    #   * the table name
    #
    #   * the `StreamLabel`
    #   @return [String]
    #
    # @!attribute [rw] stream_status
    #   Indicates the current status of the stream:
    #
    #   * `ENABLING` - Streams is currently being enabled on the DynamoDB
    #     table.
    #
    #   * `ENABLED` - the stream is enabled.
    #
    #   * `DISABLING` - Streams is currently being disabled on the DynamoDB
    #     table.
    #
    #   * `DISABLED` - the stream is disabled.
    #   @return [String]
    #
    # @!attribute [rw] stream_view_type
    #   Indicates the format of the records within this stream:
    #
    #   * `KEYS_ONLY` - only the key attributes of items that were modified
    #     in the DynamoDB table.
    #
    #   * `NEW_IMAGE` - entire items from the table, as they appeared after
    #     they were modified.
    #
    #   * `OLD_IMAGE` - entire items from the table, as they appeared before
    #     they were modified.
    #
    #   * `NEW_AND_OLD_IMAGES` - both the new and the old images of the
    #     items from the table.
    #   @return [String]
    #
    # @!attribute [rw] creation_request_date_time
    #   The date and time when the request to create this stream was issued.
    #   @return [Time]
    #
    # @!attribute [rw] table_name
    #   The DynamoDB table with which the stream is associated.
    #   @return [String]
    #
    # @!attribute [rw] key_schema
    #   The key attribute(s) of the stream's DynamoDB table.
    #   @return [Array<Types::KeySchemaElement>]
    #
    # @!attribute [rw] shards
    #   The shards that comprise the stream.
    #   @return [Array<Types::Shard>]
    #
    # @!attribute [rw] last_evaluated_shard_id
    #   The shard ID of the item where the operation stopped, inclusive of
    #   the previous result set. Use this value to start a new operation,
    #   excluding this value in the new request.
    #
    #   If `LastEvaluatedShardId` is empty, then the "last page" of
    #   results has been processed and there is currently no more data to be
    #   retrieved.
    #
    #   If `LastEvaluatedShardId` is not empty, it does not necessarily mean
    #   that there is more data in the result set. The only way to know when
    #   you have reached the end of the result set is when
    #   `LastEvaluatedShardId` is empty.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/streams-dynamodb-2012-08-10/StreamDescription AWS API Documentation
    #
    class StreamDescription < Struct.new(
      :stream_arn,
      :stream_label,
      :stream_status,
      :stream_view_type,
      :creation_request_date_time,
      :table_name,
      :key_schema,
      :shards,
      :last_evaluated_shard_id)
      include Aws::Structure
    end

    # A description of a single data modification that was performed on an
    # item in a DynamoDB table.
    #
    # @!attribute [rw] approximate_creation_date_time
    #   The approximate date and time when the stream record was created, in
    #   [UNIX epoch time][1] format.
    #
    #
    #
    #   [1]: http://www.epochconverter.com/
    #   @return [Time]
    #
    # @!attribute [rw] keys
    #   The primary key attribute(s) for the DynamoDB item that was
    #   modified.
    #   @return [Hash<String,Types::AttributeValue>]
    #
    # @!attribute [rw] new_image
    #   The item in the DynamoDB table as it appeared after it was modified.
    #   @return [Hash<String,Types::AttributeValue>]
    #
    # @!attribute [rw] old_image
    #   The item in the DynamoDB table as it appeared before it was
    #   modified.
    #   @return [Hash<String,Types::AttributeValue>]
    #
    # @!attribute [rw] sequence_number
    #   The sequence number of the stream record.
    #   @return [String]
    #
    # @!attribute [rw] size_bytes
    #   The size of the stream record, in bytes.
    #   @return [Integer]
    #
    # @!attribute [rw] stream_view_type
    #   The type of data from the modified DynamoDB item that was captured
    #   in this stream record:
    #
    #   * `KEYS_ONLY` - only the key attributes of the modified item.
    #
    #   * `NEW_IMAGE` - the entire item, as it appeared after it was
    #     modified.
    #
    #   * `OLD_IMAGE` - the entire item, as it appeared before it was
    #     modified.
    #
    #   * `NEW_AND_OLD_IMAGES` - both the new and the old item images of the
    #     item.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/streams-dynamodb-2012-08-10/StreamRecord AWS API Documentation
    #
    class StreamRecord < Struct.new(
      :approximate_creation_date_time,
      :keys,
      :new_image,
      :old_image,
      :sequence_number,
      :size_bytes,
      :stream_view_type)
      include Aws::Structure
    end

  end
end
