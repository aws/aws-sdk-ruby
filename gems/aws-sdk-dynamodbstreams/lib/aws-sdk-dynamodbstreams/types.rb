# frozen_string_literal: true

# This is generated code!

module Aws::DynamoDBStreams
  # This module contains the types returned by client operations.
  module Types

    # <p>Represents the data for an attribute.</p>
    #          <p>Each attribute value is described as a name-value pair.  The name is the data type, and the value is the data itself.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/HowItWorks.NamingRulesDataTypes.html#HowItWorks.DataTypes">Data Types</a> in the
    #                              <i>Amazon DynamoDB Developer Guide</i>.</p>
    # @!attribute s
    #   <p>An attribute of type  String. For example:</p>
    #            <p>
    #               <code>"S": "Hello"</code>
    #            </p>
    #   @return [String]
    # @!attribute n
    #   <p>An attribute of type Number. For example:</p>
    #            <p>
    #               <code>"N": "123.45"</code>
    #            </p>
    #            <p>Numbers are sent across the network to DynamoDB as strings, to maximize compatibility across languages and libraries. However, DynamoDB treats them as number type attributes for mathematical operations.</p>
    #   @return [String]
    # @!attribute b
    #   <p>An attribute of type Binary.  For example:</p>
    #            <p>
    #               <code>"B": "dGhpcyB0ZXh0IGlzIGJhc2U2NC1lbmNvZGVk"</code>
    #            </p>
    #   @return [String]
    # @!attribute ss
    #   <p>An attribute of type String Set.  For example:</p>
    #            <p>
    #               <code>"SS": ["Giraffe", "Hippo" ,"Zebra"]</code>
    #            </p>
    #   @return [Array<String>]
    # @!attribute ns
    #   <p>An attribute of type Number Set.  For example:</p>
    #            <p>
    #               <code>"NS": ["42.2", "-19", "7.5", "3.14"]</code>
    #            </p>
    #            <p>Numbers are sent across the network to DynamoDB as strings, to maximize compatibility across languages and libraries. However, DynamoDB treats them as number type attributes for mathematical operations.</p>
    #   @return [Array<String>]
    # @!attribute bs
    #   <p>An attribute of type Binary Set.  For example:</p>
    #            <p>
    #               <code>"BS": ["U3Vubnk=", "UmFpbnk=", "U25vd3k="]</code>
    #            </p>
    #   @return [Array<String>]
    # @!attribute m
    #   <p>An attribute of type Map.  For example:</p>
    #            <p>
    #               <code>"M": {"Name": {"S": "Joe"}, "Age": {"N": "35"}}</code>
    #            </p>
    #   @return [Hash<String, Types::AttributeValue>]
    # @!attribute l
    #   <p>An attribute of type List.  For example:</p>
    #            <p>
    #               <code>"L": [ {"S": "Cookies"} , {"S": "Coffee"}, {"N": "3.14159"}]</code>
    #            </p>
    #   @return [Array<Types::AttributeValue>]
    # @!attribute null
    #   <p>An attribute of type Null.  For example:</p>
    #            <p>
    #               <code>"NULL": true</code>
    #            </p>
    #   @return [Boolean]
    # @!attribute bool
    #   <p>An attribute of type Boolean.  For example:</p>
    #            <p>
    #               <code>"BOOL": true</code>
    #            </p>
    #   @return [Boolean]
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
      :bool,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class S < AttributeValue; end
      class N < AttributeValue; end
      class B < AttributeValue; end
      class SS < AttributeValue; end
      class NS < AttributeValue; end
      class BS < AttributeValue; end
      class M < AttributeValue; end
      class L < AttributeValue; end
      class NULL < AttributeValue; end
      class BOOL < AttributeValue; end
      class Unknown < AttributeValue; end
    end

    # <p>Represents the input of a <code>DescribeStream</code> operation.</p>
    # @!attribute stream_arn
    #   <p>The Amazon Resource Name (ARN) for the stream.</p>
    #   @return [String]
    # @!attribute limit
    #   <p>The maximum number of shard objects to return. The upper limit is 100.</p>
    #   @return [Integer]
    # @!attribute exclusive_start_shard_id
    #   <p>The shard ID of the first item that this operation will evaluate. Use the value that was
    #         returned for <code>LastEvaluatedShardId</code> in the previous operation. </p>
    #   @return [String]
    # @!attribute shard_filter
    #   <p>This optional field contains the filter definition for the
    #               <code>DescribeStream</code> API.</p>
    #   @return [Types::ShardFilter]
    class DescribeStreamInput < Struct.new(
      nil,
      :stream_arn,
      :limit,
      :exclusive_start_shard_id,
      :shard_filter,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a <code>DescribeStream</code> operation.</p>
    # @!attribute stream_description
    #   <p>A complete description of the stream, including its creation date and time, the DynamoDB table associated with the stream, the shard IDs within the stream, and the beginning and ending sequence numbers of stream records within the shards.</p>
    #   @return [Types::StreamDescription]
    class DescribeStreamOutput < Struct.new(
      nil,
      :stream_description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The shard iterator has expired and can no longer be used to retrieve stream records. A shard
    #       iterator expires 15 minutes after it is retrieved using the <code>GetShardIterator</code>
    #       action.</p>
    # @!attribute message
    #   <p>The provided iterator exceeds the maximum age allowed.</p>
    #   @return [String]
    class ExpiredIteratorException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of a <code>GetRecords</code> operation.</p>
    # @!attribute shard_iterator
    #   <p>A shard iterator that was retrieved from a previous GetShardIterator operation. This iterator can be used to access the stream records in this shard.</p>
    #   @return [String]
    # @!attribute limit
    #   <p>The maximum number of records to return from the shard. The upper limit is 1000.</p>
    #   @return [Integer]
    class GetRecordsInput < Struct.new(
      nil,
      :shard_iterator,
      :limit,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a <code>GetRecords</code> operation.</p>
    # @!attribute records
    #   <p>The stream records from the shard, which were retrieved using the shard iterator.</p>
    #   @return [Array<Types::Record>]
    # @!attribute next_shard_iterator
    #   <p>The next position in the shard from which to start sequentially reading stream records. If
    #         set to <code>null</code>, the shard has been closed and the requested iterator will not return
    #         any more data.</p>
    #   @return [String]
    class GetRecordsOutput < Struct.new(
      nil,
      :records,
      :next_shard_iterator,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of a <code>GetShardIterator</code> operation.</p>
    # @!attribute stream_arn
    #   <p>The Amazon Resource Name (ARN) for the stream.</p>
    #   @return [String]
    # @!attribute shard_id
    #   <p>The identifier of the shard. The iterator will be returned for this shard ID.</p>
    #   @return [String]
    # @!attribute shard_iterator_type
    #   <p>Determines how the shard iterator is used to start reading stream records from the shard:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>AT_SEQUENCE_NUMBER</code> - Start reading exactly from the position denoted by a
    #             specific sequence number.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AFTER_SEQUENCE_NUMBER</code> - Start reading right after the position denoted by a
    #             specific sequence number.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TRIM_HORIZON</code> - Start reading at the last (untrimmed) stream record, which is
    #             the oldest record in the shard. In DynamoDB Streams, there is a 24 hour limit on data retention.
    #             Stream records whose age exceeds this limit are subject to removal (trimming) from the
    #             stream.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LATEST</code> - Start reading just after the most recent stream record in the
    #             shard, so that you always read the most recent data in the shard.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AT_TIMESTAMP</code> - Start reading from the position denoted by a specific timestamp, provided in the parameter <code>Timestamp</code>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute sequence_number
    #   <p>The sequence number of a stream record in the shard from which to start reading.</p>
    #   @return [String]
    # @!attribute timestamp
    #   <p>The timestamp of the stream record from which to start reading. Used with shard
    #         iterator type <code>AT_TIMESTAMP</code>. A timestamp is the Unix epoch date with precision in
    #         milliseconds. For example, <code>1791316726.480</code>. The iterator points to the first stream record whose
    #         <code>ApproximateCreationDateTime</code> is at or after the specified timestamp. If no record
    #         with that exact timestamp exists, the iterator points to the next (later) record. If the
    #         timestamp is older than the current trim horizon, the iterator points to the oldest
    #         untrimmed stream record (<code>TRIM_HORIZON</code>). If the timestamp is in the future,
    #         the request returns a <code>ValidationException</code>.</p>
    #   @return [Time]
    class GetShardIteratorInput < Struct.new(
      nil,
      :stream_arn,
      :shard_id,
      :shard_iterator_type,
      :sequence_number,
      :timestamp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a <code>GetShardIterator</code> operation.</p>
    # @!attribute shard_iterator
    #   <p>The position in the shard from which to start reading stream records sequentially. A shard iterator specifies this position using the sequence number of a stream record in a shard.</p>
    #   @return [String]
    class GetShardIteratorOutput < Struct.new(
      nil,
      :shard_iterator,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about the type of identity that made the request.</p>
    # @!attribute principal_id
    #   <p>A unique identifier for the entity that made the call. For Time To Live, the
    #         principalId is "dynamodb.amazonaws.com".</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the identity. For Time To Live, the type is "Service".</p>
    #   @return [String]
    class Identity < Struct.new(
      nil,
      :principal_id,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An error occurred on the server side.</p>
    # @!attribute message
    #   <p>The server encountered an internal error trying to fulfill the request.</p>
    #   @return [String]
    class InternalServerError < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents <i>a single element</i> of a key schema. A key schema specifies
    #             the attributes that make up the primary key of a table, or the key attributes of an
    #             index.</p>
    #          <p>A <code>KeySchemaElement</code> represents exactly one attribute of the primary key. For
    #             example, a simple primary key would be represented by one <code>KeySchemaElement</code>
    #             (for the partition key). A composite primary key would require one
    #                 <code>KeySchemaElement</code> for the partition key, and another
    #                 <code>KeySchemaElement</code> for the sort key.</p>
    #          <p>A <code>KeySchemaElement</code> must be a scalar, top-level attribute (not a nested
    #             attribute). The data type must be one of String, Number, or Binary. The attribute cannot
    #             be nested within a List or a Map.</p>
    # @!attribute attribute_name
    #   <p>The name of a key attribute.</p>
    #   @return [String]
    # @!attribute key_type
    #   <p>The role that this key attribute will assume:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>HASH</code> - partition key</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>RANGE</code> - sort key</p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>The partition key of an item is also known as its <i>hash
    #                       attribute</i>. The term "hash attribute" derives from DynamoDB's usage of
    #                   an internal hash function to evenly distribute data items across partitions, based
    #                   on their partition key values.</p>
    #               <p>The sort key of an item is also known as its <i>range
    #                   attribute</i>. The term "range attribute" derives from the way DynamoDB
    #                   stores items with the same partition key physically close together, in sorted order
    #                   by the sort key value.</p>
    #            </note>
    #   @return [String]
    class KeySchemaElement < Struct.new(
      nil,
      :attribute_name,
      :key_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>There is no limit to the number of daily on-demand backups that can be taken. </p>
    #          <p>For most purposes, up to 500 simultaneous table operations are allowed per account. These operations
    #           include <code>CreateTable</code>, <code>UpdateTable</code>,
    #           <code>DeleteTable</code>,<code>UpdateTimeToLive</code>,
    #           <code>RestoreTableFromBackup</code>, and <code>RestoreTableToPointInTime</code>. </p>
    #          <p>When you are creating a table with one or more secondary
    #           indexes, you can have up to 250 such requests running at a time. However, if the table or
    #           index specifications are complex, then DynamoDB might temporarily reduce the number
    #           of concurrent operations.</p>
    #          <p>When importing into DynamoDB, up to 50 simultaneous import table operations are allowed per account.</p>
    #          <p>There is a soft account quota of 2,500 tables.</p>
    #          <p>GetRecords was called with a value of more than 1000 for the limit request parameter.</p>
    #          <p>More than 2 processes are reading from the same streams shard at the same time. Exceeding
    #           this limit may result in request throttling.</p>
    # @!attribute message
    #   <p>Too many operations for a given subscriber.</p>
    #   @return [String]
    class LimitExceededException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of a <code>ListStreams</code> operation.</p>
    # @!attribute table_name
    #   <p>If this parameter is provided, then only the streams associated with this table name are returned.</p>
    #   @return [String]
    # @!attribute limit
    #   <p>The maximum number of streams to return. The upper limit is 100.</p>
    #   @return [Integer]
    # @!attribute exclusive_start_stream_arn
    #   <p>The ARN (Amazon Resource Name) of the first item that this operation will evaluate. Use the
    #         value that was returned for <code>LastEvaluatedStreamArn</code> in the previous operation.
    #       </p>
    #   @return [String]
    class ListStreamsInput < Struct.new(
      nil,
      :table_name,
      :limit,
      :exclusive_start_stream_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a <code>ListStreams</code> operation.</p>
    # @!attribute streams
    #   <p>A list of stream descriptors associated with the current account and endpoint.</p>
    #   @return [Array<Types::Stream>]
    # @!attribute last_evaluated_stream_arn
    #   <p>The stream ARN of the item where the operation stopped, inclusive of the previous result set. Use this value to start a new operation, excluding this value in the new request.</p>
    #            <p>If <code>LastEvaluatedStreamArn</code> is empty, then the "last page" of results has been
    #         processed and there is no more data to be retrieved.</p>
    #            <p>If <code>LastEvaluatedStreamArn</code> is not empty, it does not necessarily mean that there
    #         is more data in the result set. The only way to know when you have reached the end of the
    #         result set is when <code>LastEvaluatedStreamArn</code> is empty.</p>
    #   @return [String]
    class ListStreamsOutput < Struct.new(
      nil,
      :streams,
      :last_evaluated_stream_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A description of a unique event within a stream.</p>
    # @!attribute event_id
    #   <p>A globally unique identifier for the event that was recorded in this stream record.</p>
    #   @return [String]
    # @!attribute event_name
    #   <p>The type of data modification that was performed on the DynamoDB table:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>INSERT</code> - a new item was added to the table.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MODIFY</code> - one or more of an existing item's attributes were modified.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>REMOVE</code> - the item was deleted from the table</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute event_version
    #   <p>The version number of the stream record format.  This number is updated whenever the structure of <code>Record</code> is modified.</p>
    #            <p>Client applications must not assume that <code>eventVersion</code> will remain at a particular
    #         value, as this number is subject to change at any time. In general, <code>eventVersion</code> will
    #         only increase as the low-level DynamoDB Streams API evolves.</p>
    #   @return [String]
    # @!attribute event_source
    #   <p>The Amazon Web Services service from which the stream record originated. For DynamoDB Streams, this is <code>aws:dynamodb</code>.</p>
    #   @return [String]
    # @!attribute aws_region
    #   <p>The region in which the <code>GetRecords</code> request was received.</p>
    #   @return [String]
    # @!attribute dynamodb
    #   <p>The main body of the stream record, containing all of the DynamoDB-specific fields.</p>
    #   @return [Types::StreamRecord]
    # @!attribute user_identity
    #   <p>Items that are deleted by the Time to Live process after expiration have the following fields: </p>
    #            <ul>
    #               <li>
    #                  <p>Records[].userIdentity.type</p>
    #                  <p>"Service"</p>
    #               </li>
    #               <li>
    #                  <p>Records[].userIdentity.principalId</p>
    #                  <p>"dynamodb.amazonaws.com"</p>
    #               </li>
    #            </ul>
    #   @return [Types::Identity]
    class Record < Struct.new(
      nil,
      :event_id,
      :event_name,
      :event_version,
      :event_source,
      :aws_region,
      :dynamodb,
      :user_identity,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The operation tried to access a nonexistent table or index. The resource
    #             might not be specified correctly, or its status might not be
    #             <code>ACTIVE</code>.</p>
    # @!attribute message
    #   <p>The resource which is being requested does not exist.</p>
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The beginning and ending sequence numbers for the stream records contained within a shard.</p>
    # @!attribute starting_sequence_number
    #   <p>The first sequence number for the stream records contained within a shard. String contains numeric characters only.</p>
    #   @return [String]
    # @!attribute ending_sequence_number
    #   <p>The last sequence number for the stream records contained within a shard. String contains numeric characters only.</p>
    #   @return [String]
    class SequenceNumberRange < Struct.new(
      nil,
      :starting_sequence_number,
      :ending_sequence_number,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A uniquely identified group of stream records within a stream.</p>
    # @!attribute shard_id
    #   <p>The system-generated identifier for this shard.</p>
    #   @return [String]
    # @!attribute sequence_number_range
    #   <p>The range of possible sequence numbers for the shard.</p>
    #   @return [Types::SequenceNumberRange]
    # @!attribute parent_shard_id
    #   <p>The shard ID of the current shard's parent.</p>
    #   @return [String]
    class Shard < Struct.new(
      nil,
      :shard_id,
      :sequence_number_range,
      :parent_shard_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>This optional field contains the filter
    #             definition for the <code>DescribeStream</code> API.</p>
    # @!attribute type
    #   <p>Contains the type of filter to be applied on the <code>DescribeStream</code> API.
    #               Currently, the only value this parameter accepts is <code>CHILD_SHARDS</code>.</p>
    #   @return [String]
    # @!attribute shard_id
    #   <p>Contains the <code>shardId</code> of the parent shard for which you are requesting child shards.</p>
    #            <p>
    #               <i>Sample request:</i>
    #            </p>
    #   @return [String]
    class ShardFilter < Struct.new(
      nil,
      :type,
      :shard_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents all of the data describing a particular stream.</p>
    # @!attribute stream_arn
    #   <p>The Amazon Resource Name (ARN) for the stream.</p>
    #   @return [String]
    # @!attribute table_name
    #   <p>The DynamoDB table with which the stream is associated.</p>
    #   @return [String]
    # @!attribute stream_label
    #   <p>A timestamp, in ISO 8601 format, for this stream.</p>
    #            <p>Note that <code>LatestStreamLabel</code> is not a unique identifier for the stream, because it is
    #         possible that a stream from another table might have the same timestamp. However, the
    #         combination of the following three elements is guaranteed to be unique:</p>
    #            <ul>
    #               <li>
    #                  <p>the Amazon Web Services customer ID.</p>
    #               </li>
    #               <li>
    #                  <p>the table name</p>
    #               </li>
    #               <li>
    #                  <p>the <code>StreamLabel</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    class Stream < Struct.new(
      nil,
      :stream_arn,
      :table_name,
      :stream_label,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents all of the data describing a particular stream.</p>
    # @!attribute stream_arn
    #   <p>The Amazon Resource Name (ARN) for the stream.</p>
    #   @return [String]
    # @!attribute stream_label
    #   <p>A timestamp, in ISO 8601 format, for this stream.</p>
    #            <p>Note that <code>LatestStreamLabel</code> is not a unique identifier for the stream, because it is
    #         possible that a stream from another table might have the same timestamp. However, the
    #         combination of the following three elements is guaranteed to be unique:</p>
    #            <ul>
    #               <li>
    #                  <p>the Amazon Web Services customer ID.</p>
    #               </li>
    #               <li>
    #                  <p>the table name</p>
    #               </li>
    #               <li>
    #                  <p>the <code>StreamLabel</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute stream_status
    #   <p>Indicates the current status of the stream:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ENABLING</code> - Streams is currently being enabled on the DynamoDB table.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ENABLED</code> - the stream is enabled.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DISABLING</code> - Streams is currently being disabled on the DynamoDB table.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DISABLED</code> - the stream is disabled.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute stream_view_type
    #   <p>Indicates the format of the records within this stream:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>KEYS_ONLY</code> - only the key attributes of items that were modified in the DynamoDB table.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NEW_IMAGE</code> - entire items from the table, as they appeared after they were modified.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OLD_IMAGE</code> - entire items from the table, as they appeared before they were modified.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NEW_AND_OLD_IMAGES</code> - both the new and the old images of the items from the table.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute creation_request_date_time
    #   <p>The date and time when the request to create this stream was issued.</p>
    #   @return [Time]
    # @!attribute table_name
    #   <p>The DynamoDB table with which the stream is associated.</p>
    #   @return [String]
    # @!attribute key_schema
    #   <p>The key attribute(s) of the stream's DynamoDB table.</p>
    #   @return [Array<Types::KeySchemaElement>]
    # @!attribute shards
    #   <p>The shards that comprise the stream.</p>
    #   @return [Array<Types::Shard>]
    # @!attribute last_evaluated_shard_id
    #   <p>The shard ID of the item where the operation stopped, inclusive of the previous result set. Use this value to start a new operation, excluding this value in the new request.</p>
    #            <p>If <code>LastEvaluatedShardId</code> is empty, then the "last page" of results has been
    #         processed and there is currently no more data to be retrieved.</p>
    #            <p>If <code>LastEvaluatedShardId</code> is not empty, it does not necessarily mean that there is
    #         more data in the result set. The only way to know when you have reached the end of the result
    #         set is when <code>LastEvaluatedShardId</code> is empty.</p>
    #   @return [String]
    class StreamDescription < Struct.new(
      nil,
      :stream_arn,
      :stream_label,
      :stream_status,
      :stream_view_type,
      :creation_request_date_time,
      :table_name,
      :key_schema,
      :shards,
      :last_evaluated_shard_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A description of a single data modification that was performed on an item in a DynamoDB table.</p>
    # @!attribute approximate_creation_date_time
    #   <p>The approximate date and time when the stream record was created, in <a href="http://www.epochconverter.com/">UNIX epoch time</a> format and rounded down to the closest second.
    #               Some tools and SDKs may convert this value to a different format, such as <a href="https://www.iso.org/iso-8601-date-and-time-format.html">ISO 8601</a>.</p>
    #   @return [Time]
    # @!attribute keys
    #   <p>The primary key attribute(s) for the DynamoDB item that was modified.</p>
    #   @return [Hash<String, Types::AttributeValue>]
    # @!attribute new_image
    #   <p>The item in the DynamoDB table as it appeared after it was modified.</p>
    #   @return [Hash<String, Types::AttributeValue>]
    # @!attribute old_image
    #   <p>The item in the DynamoDB table as it appeared before it was modified.</p>
    #   @return [Hash<String, Types::AttributeValue>]
    # @!attribute sequence_number
    #   <p>The sequence number of the stream record.</p>
    #   @return [String]
    # @!attribute size_bytes
    #   <p>The size of the stream record, in bytes.</p>
    #   @return [Integer]
    # @!attribute stream_view_type
    #   <p>The type of data from the modified DynamoDB item that was captured in this stream record:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>KEYS_ONLY</code> - only the key attributes of the modified item.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NEW_IMAGE</code> - the entire item, as it appeared after it was modified.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OLD_IMAGE</code> - the entire item, as it appeared before it was modified.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NEW_AND_OLD_IMAGES</code> - both the new and the old item images of the item.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class StreamRecord < Struct.new(
      nil,
      :approximate_creation_date_time,
      :keys,
      :new_image,
      :old_image,
      :sequence_number,
      :size_bytes,
      :stream_view_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The operation attempted to read past the oldest stream record in a shard.</p>
    #          <p>In DynamoDB Streams, there is a 24 hour limit on data retention. Stream records whose age exceeds this limit are subject to removal (trimming) from the stream. You might receive a TrimmedDataAccessException if:</p>
    #          <ul>
    #             <li>
    #                <p>You request a shard iterator with a sequence number older than the trim point (24 hours).</p>
    #             </li>
    #             <li>
    #                <p>You obtain a shard iterator, but before you use the iterator in a <code>GetRecords</code>
    #         request, a stream record in the shard exceeds the 24 hour period and is trimmed. This causes
    #         the iterator to access a record that no longer exists.</p>
    #             </li>
    #          </ul>
    # @!attribute message
    #   <p>"The data you are trying to access has been trimmed.</p>
    #   @return [String]
    class TrimmedDataAccessException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
