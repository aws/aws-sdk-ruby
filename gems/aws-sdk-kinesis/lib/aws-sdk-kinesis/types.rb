# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing for info on making contributions:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Kinesis
  module Types

    # Represents the input for `AddTagsToStream`.
    #
    # @note When making an API call, you may pass AddTagsToStreamInput
    #   data as a hash:
    #
    #       {
    #         stream_name: "StreamName", # required
    #         tags: { # required
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] stream_name
    #   The name of the stream.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The set of key-value pairs to use to create the tags.
    #   @return [Hash<String,String>]
    #
    class AddTagsToStreamInput < Struct.new(
      :stream_name,
      :tags)
      include Aws::Structure
    end

    # Represents the input for `CreateStream`.
    #
    # @note When making an API call, you may pass CreateStreamInput
    #   data as a hash:
    #
    #       {
    #         stream_name: "StreamName", # required
    #         shard_count: 1, # required
    #       }
    #
    # @!attribute [rw] stream_name
    #   A name to identify the stream. The stream name is scoped to the AWS
    #   account used by the application that creates the stream. It is also
    #   scoped by region. That is, two streams in two different AWS accounts
    #   can have the same name, and two streams in the same AWS account but
    #   in two different regions can have the same name.
    #   @return [String]
    #
    # @!attribute [rw] shard_count
    #   The number of shards that the stream will use. The throughput of the
    #   stream is a function of the number of shards; more shards are
    #   required for greater provisioned throughput.
    #
    #   DefaultShardLimit;
    #   @return [Integer]
    #
    class CreateStreamInput < Struct.new(
      :stream_name,
      :shard_count)
      include Aws::Structure
    end

    # Represents the input for DecreaseStreamRetentionPeriod.
    #
    # @note When making an API call, you may pass DecreaseStreamRetentionPeriodInput
    #   data as a hash:
    #
    #       {
    #         stream_name: "StreamName", # required
    #         retention_period_hours: 1, # required
    #       }
    #
    # @!attribute [rw] stream_name
    #   The name of the stream to modify.
    #   @return [String]
    #
    # @!attribute [rw] retention_period_hours
    #   The new retention period of the stream, in hours. Must be less than
    #   the current retention period.
    #   @return [Integer]
    #
    class DecreaseStreamRetentionPeriodInput < Struct.new(
      :stream_name,
      :retention_period_hours)
      include Aws::Structure
    end

    # Represents the input for DeleteStream.
    #
    # @note When making an API call, you may pass DeleteStreamInput
    #   data as a hash:
    #
    #       {
    #         stream_name: "StreamName", # required
    #       }
    #
    # @!attribute [rw] stream_name
    #   The name of the stream to delete.
    #   @return [String]
    #
    class DeleteStreamInput < Struct.new(
      :stream_name)
      include Aws::Structure
    end

    # @api private
    #
    class DescribeLimitsInput < Aws::EmptyStructure; end

    # @!attribute [rw] shard_limit
    #   The maximum number of shards.
    #   @return [Integer]
    #
    # @!attribute [rw] open_shard_count
    #   The number of open shards.
    #   @return [Integer]
    #
    class DescribeLimitsOutput < Struct.new(
      :shard_limit,
      :open_shard_count)
      include Aws::Structure
    end

    # Represents the input for `DescribeStream`.
    #
    # @note When making an API call, you may pass DescribeStreamInput
    #   data as a hash:
    #
    #       {
    #         stream_name: "StreamName", # required
    #         limit: 1,
    #         exclusive_start_shard_id: "ShardId",
    #       }
    #
    # @!attribute [rw] stream_name
    #   The name of the stream to describe.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of shards to return in a single call. The default
    #   value is 100. If you specify a value greater than 100, at most 100
    #   shards are returned.
    #   @return [Integer]
    #
    # @!attribute [rw] exclusive_start_shard_id
    #   The shard ID of the shard to start with.
    #   @return [String]
    #
    class DescribeStreamInput < Struct.new(
      :stream_name,
      :limit,
      :exclusive_start_shard_id)
      include Aws::Structure
    end

    # Represents the output for `DescribeStream`.
    #
    # @!attribute [rw] stream_description
    #   The current status of the stream, the stream ARN, an array of shard
    #   objects that comprise the stream, and whether there are more shards
    #   available.
    #   @return [Types::StreamDescription]
    #
    class DescribeStreamOutput < Struct.new(
      :stream_description)
      include Aws::Structure
    end

    # Represents the input for DisableEnhancedMonitoring.
    #
    # @note When making an API call, you may pass DisableEnhancedMonitoringInput
    #   data as a hash:
    #
    #       {
    #         stream_name: "StreamName", # required
    #         shard_level_metrics: ["IncomingBytes"], # required, accepts IncomingBytes, IncomingRecords, OutgoingBytes, OutgoingRecords, WriteProvisionedThroughputExceeded, ReadProvisionedThroughputExceeded, IteratorAgeMilliseconds, ALL
    #       }
    #
    # @!attribute [rw] stream_name
    #   The name of the Amazon Kinesis stream for which to disable enhanced
    #   monitoring.
    #   @return [String]
    #
    # @!attribute [rw] shard_level_metrics
    #   List of shard-level metrics to disable.
    #
    #   The following are the valid shard-level metrics. The value "`ALL`"
    #   disables every metric.
    #
    #   * `IncomingBytes`
    #
    #   * `IncomingRecords`
    #
    #   * `OutgoingBytes`
    #
    #   * `OutgoingRecords`
    #
    #   * `WriteProvisionedThroughputExceeded`
    #
    #   * `ReadProvisionedThroughputExceeded`
    #
    #   * `IteratorAgeMilliseconds`
    #
    #   * `ALL`
    #
    #   For more information, see [Monitoring the Amazon Kinesis Streams
    #   Service with Amazon CloudWatch][1] in the *Amazon Kinesis Streams
    #   Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/kinesis/latest/dev/monitoring-with-cloudwatch.html
    #   @return [Array<String>]
    #
    class DisableEnhancedMonitoringInput < Struct.new(
      :stream_name,
      :shard_level_metrics)
      include Aws::Structure
    end

    # Represents the input for EnableEnhancedMonitoring.
    #
    # @note When making an API call, you may pass EnableEnhancedMonitoringInput
    #   data as a hash:
    #
    #       {
    #         stream_name: "StreamName", # required
    #         shard_level_metrics: ["IncomingBytes"], # required, accepts IncomingBytes, IncomingRecords, OutgoingBytes, OutgoingRecords, WriteProvisionedThroughputExceeded, ReadProvisionedThroughputExceeded, IteratorAgeMilliseconds, ALL
    #       }
    #
    # @!attribute [rw] stream_name
    #   The name of the stream for which to enable enhanced monitoring.
    #   @return [String]
    #
    # @!attribute [rw] shard_level_metrics
    #   List of shard-level metrics to enable.
    #
    #   The following are the valid shard-level metrics. The value "`ALL`"
    #   enables every metric.
    #
    #   * `IncomingBytes`
    #
    #   * `IncomingRecords`
    #
    #   * `OutgoingBytes`
    #
    #   * `OutgoingRecords`
    #
    #   * `WriteProvisionedThroughputExceeded`
    #
    #   * `ReadProvisionedThroughputExceeded`
    #
    #   * `IteratorAgeMilliseconds`
    #
    #   * `ALL`
    #
    #   For more information, see [Monitoring the Amazon Kinesis Streams
    #   Service with Amazon CloudWatch][1] in the *Amazon Kinesis Streams
    #   Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/kinesis/latest/dev/monitoring-with-cloudwatch.html
    #   @return [Array<String>]
    #
    class EnableEnhancedMonitoringInput < Struct.new(
      :stream_name,
      :shard_level_metrics)
      include Aws::Structure
    end

    # Represents enhanced metrics types.
    #
    # @!attribute [rw] shard_level_metrics
    #   List of shard-level metrics.
    #
    #   The following are the valid shard-level metrics. The value "`ALL`"
    #   enhances every metric.
    #
    #   * `IncomingBytes`
    #
    #   * `IncomingRecords`
    #
    #   * `OutgoingBytes`
    #
    #   * `OutgoingRecords`
    #
    #   * `WriteProvisionedThroughputExceeded`
    #
    #   * `ReadProvisionedThroughputExceeded`
    #
    #   * `IteratorAgeMilliseconds`
    #
    #   * `ALL`
    #
    #   For more information, see [Monitoring the Amazon Kinesis Streams
    #   Service with Amazon CloudWatch][1] in the *Amazon Kinesis Streams
    #   Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/kinesis/latest/dev/monitoring-with-cloudwatch.html
    #   @return [Array<String>]
    #
    class EnhancedMetrics < Struct.new(
      :shard_level_metrics)
      include Aws::Structure
    end

    # Represents the output for EnableEnhancedMonitoring and
    # DisableEnhancedMonitoring.
    #
    # @!attribute [rw] stream_name
    #   The name of the Amazon Kinesis stream.
    #   @return [String]
    #
    # @!attribute [rw] current_shard_level_metrics
    #   Represents the current state of the metrics that are in the enhanced
    #   state before the operation.
    #   @return [Array<String>]
    #
    # @!attribute [rw] desired_shard_level_metrics
    #   Represents the list of all the metrics that would be in the enhanced
    #   state after the operation.
    #   @return [Array<String>]
    #
    class EnhancedMonitoringOutput < Struct.new(
      :stream_name,
      :current_shard_level_metrics,
      :desired_shard_level_metrics)
      include Aws::Structure
    end

    # Represents the input for GetRecords.
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
    #   The position in the shard from which you want to start sequentially
    #   reading data records. A shard iterator specifies this position using
    #   the sequence number of a data record in the shard.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of records to return. Specify a value of up to
    #   10,000. If you specify a value that is greater than 10,000,
    #   GetRecords throws `InvalidArgumentException`.
    #   @return [Integer]
    #
    class GetRecordsInput < Struct.new(
      :shard_iterator,
      :limit)
      include Aws::Structure
    end

    # Represents the output for GetRecords.
    #
    # @!attribute [rw] records
    #   The data records retrieved from the shard.
    #   @return [Array<Types::Record>]
    #
    # @!attribute [rw] next_shard_iterator
    #   The next position in the shard from which to start sequentially
    #   reading data records. If set to `null`, the shard has been closed
    #   and the requested iterator will not return any more data.
    #   @return [String]
    #
    # @!attribute [rw] millis_behind_latest
    #   The number of milliseconds the GetRecords response is from the tip
    #   of the stream, indicating how far behind current time the consumer
    #   is. A value of zero indicates record processing is caught up, and
    #   there are no new records to process at this moment.
    #   @return [Integer]
    #
    class GetRecordsOutput < Struct.new(
      :records,
      :next_shard_iterator,
      :millis_behind_latest)
      include Aws::Structure
    end

    # Represents the input for `GetShardIterator`.
    #
    # @note When making an API call, you may pass GetShardIteratorInput
    #   data as a hash:
    #
    #       {
    #         stream_name: "StreamName", # required
    #         shard_id: "ShardId", # required
    #         shard_iterator_type: "AT_SEQUENCE_NUMBER", # required, accepts AT_SEQUENCE_NUMBER, AFTER_SEQUENCE_NUMBER, TRIM_HORIZON, LATEST, AT_TIMESTAMP
    #         starting_sequence_number: "SequenceNumber",
    #         timestamp: Time.now,
    #       }
    #
    # @!attribute [rw] stream_name
    #   The name of the Amazon Kinesis stream.
    #   @return [String]
    #
    # @!attribute [rw] shard_id
    #   The shard ID of the Amazon Kinesis shard to get the iterator for.
    #   @return [String]
    #
    # @!attribute [rw] shard_iterator_type
    #   Determines how the shard iterator is used to start reading data
    #   records from the shard.
    #
    #   The following are the valid Amazon Kinesis shard iterator types:
    #
    #   * AT\_SEQUENCE\_NUMBER - Start reading from the position denoted by
    #     a specific sequence number, provided in the value
    #     `StartingSequenceNumber`.
    #
    #   * AFTER\_SEQUENCE\_NUMBER - Start reading right after the position
    #     denoted by a specific sequence number, provided in the value
    #     `StartingSequenceNumber`.
    #
    #   * AT\_TIMESTAMP - Start reading from the position denoted by a
    #     specific timestamp, provided in the value `Timestamp`.
    #
    #   * TRIM\_HORIZON - Start reading at the last untrimmed record in the
    #     shard in the system, which is the oldest data record in the shard.
    #
    #   * LATEST - Start reading just after the most recent record in the
    #     shard, so that you always read the most recent data in the shard.
    #   @return [String]
    #
    # @!attribute [rw] starting_sequence_number
    #   The sequence number of the data record in the shard from which to
    #   start reading. Used with shard iterator type AT\_SEQUENCE\_NUMBER
    #   and AFTER\_SEQUENCE\_NUMBER.
    #   @return [String]
    #
    # @!attribute [rw] timestamp
    #   The timestamp of the data record from which to start reading. Used
    #   with shard iterator type AT\_TIMESTAMP. A timestamp is the Unix
    #   epoch date with precision in milliseconds. For example,
    #   `2016-04-04T19:58:46.480-00:00` or `1459799926.480`. If a record
    #   with this exact timestamp does not exist, the iterator returned is
    #   for the next (later) record. If the timestamp is older than the
    #   current trim horizon, the iterator returned is for the oldest
    #   untrimmed data record (TRIM\_HORIZON).
    #   @return [Time]
    #
    class GetShardIteratorInput < Struct.new(
      :stream_name,
      :shard_id,
      :shard_iterator_type,
      :starting_sequence_number,
      :timestamp)
      include Aws::Structure
    end

    # Represents the output for `GetShardIterator`.
    #
    # @!attribute [rw] shard_iterator
    #   The position in the shard from which to start reading data records
    #   sequentially. A shard iterator specifies this position using the
    #   sequence number of a data record in a shard.
    #   @return [String]
    #
    class GetShardIteratorOutput < Struct.new(
      :shard_iterator)
      include Aws::Structure
    end

    # The range of possible hash key values for the shard, which is a set of
    # ordered contiguous positive integers.
    #
    # @!attribute [rw] starting_hash_key
    #   The starting hash key of the hash key range.
    #   @return [String]
    #
    # @!attribute [rw] ending_hash_key
    #   The ending hash key of the hash key range.
    #   @return [String]
    #
    class HashKeyRange < Struct.new(
      :starting_hash_key,
      :ending_hash_key)
      include Aws::Structure
    end

    # Represents the input for IncreaseStreamRetentionPeriod.
    #
    # @note When making an API call, you may pass IncreaseStreamRetentionPeriodInput
    #   data as a hash:
    #
    #       {
    #         stream_name: "StreamName", # required
    #         retention_period_hours: 1, # required
    #       }
    #
    # @!attribute [rw] stream_name
    #   The name of the stream to modify.
    #   @return [String]
    #
    # @!attribute [rw] retention_period_hours
    #   The new retention period of the stream, in hours. Must be more than
    #   the current retention period.
    #   @return [Integer]
    #
    class IncreaseStreamRetentionPeriodInput < Struct.new(
      :stream_name,
      :retention_period_hours)
      include Aws::Structure
    end

    # Represents the input for `ListStreams`.
    #
    # @note When making an API call, you may pass ListStreamsInput
    #   data as a hash:
    #
    #       {
    #         limit: 1,
    #         exclusive_start_stream_name: "StreamName",
    #       }
    #
    # @!attribute [rw] limit
    #   The maximum number of streams to list.
    #   @return [Integer]
    #
    # @!attribute [rw] exclusive_start_stream_name
    #   The name of the stream to start the list with.
    #   @return [String]
    #
    class ListStreamsInput < Struct.new(
      :limit,
      :exclusive_start_stream_name)
      include Aws::Structure
    end

    # Represents the output for `ListStreams`.
    #
    # @!attribute [rw] stream_names
    #   The names of the streams that are associated with the AWS account
    #   making the `ListStreams` request.
    #   @return [Array<String>]
    #
    # @!attribute [rw] has_more_streams
    #   If set to `true`, there are more streams available to list.
    #   @return [Boolean]
    #
    class ListStreamsOutput < Struct.new(
      :stream_names,
      :has_more_streams)
      include Aws::Structure
    end

    # Represents the input for `ListTagsForStream`.
    #
    # @note When making an API call, you may pass ListTagsForStreamInput
    #   data as a hash:
    #
    #       {
    #         stream_name: "StreamName", # required
    #         exclusive_start_tag_key: "TagKey",
    #         limit: 1,
    #       }
    #
    # @!attribute [rw] stream_name
    #   The name of the stream.
    #   @return [String]
    #
    # @!attribute [rw] exclusive_start_tag_key
    #   The key to use as the starting point for the list of tags. If this
    #   parameter is set, `ListTagsForStream` gets all tags that occur after
    #   `ExclusiveStartTagKey`.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The number of tags to return. If this number is less than the total
    #   number of tags associated with the stream, `HasMoreTags` is set to
    #   `true`. To list additional tags, set `ExclusiveStartTagKey` to the
    #   last key in the response.
    #   @return [Integer]
    #
    class ListTagsForStreamInput < Struct.new(
      :stream_name,
      :exclusive_start_tag_key,
      :limit)
      include Aws::Structure
    end

    # Represents the output for `ListTagsForStream`.
    #
    # @!attribute [rw] tags
    #   A list of tags associated with `StreamName`, starting with the first
    #   tag after `ExclusiveStartTagKey` and up to the specified `Limit`.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] has_more_tags
    #   If set to `true`, more tags are available. To request additional
    #   tags, set `ExclusiveStartTagKey` to the key of the last tag
    #   returned.
    #   @return [Boolean]
    #
    class ListTagsForStreamOutput < Struct.new(
      :tags,
      :has_more_tags)
      include Aws::Structure
    end

    # Represents the input for `MergeShards`.
    #
    # @note When making an API call, you may pass MergeShardsInput
    #   data as a hash:
    #
    #       {
    #         stream_name: "StreamName", # required
    #         shard_to_merge: "ShardId", # required
    #         adjacent_shard_to_merge: "ShardId", # required
    #       }
    #
    # @!attribute [rw] stream_name
    #   The name of the stream for the merge.
    #   @return [String]
    #
    # @!attribute [rw] shard_to_merge
    #   The shard ID of the shard to combine with the adjacent shard for the
    #   merge.
    #   @return [String]
    #
    # @!attribute [rw] adjacent_shard_to_merge
    #   The shard ID of the adjacent shard for the merge.
    #   @return [String]
    #
    class MergeShardsInput < Struct.new(
      :stream_name,
      :shard_to_merge,
      :adjacent_shard_to_merge)
      include Aws::Structure
    end

    # Represents the input for `PutRecord`.
    #
    # @note When making an API call, you may pass PutRecordInput
    #   data as a hash:
    #
    #       {
    #         stream_name: "StreamName", # required
    #         data: "data", # required
    #         partition_key: "PartitionKey", # required
    #         explicit_hash_key: "HashKey",
    #         sequence_number_for_ordering: "SequenceNumber",
    #       }
    #
    # @!attribute [rw] stream_name
    #   The name of the stream to put the data record into.
    #   @return [String]
    #
    # @!attribute [rw] data
    #   The data blob to put into the record, which is base64-encoded when
    #   the blob is serialized. When the data blob (the payload before
    #   base64-encoding) is added to the partition key size, the total size
    #   must not exceed the maximum record size (1 MB).
    #   @return [String]
    #
    # @!attribute [rw] partition_key
    #   Determines which shard in the stream the data record is assigned to.
    #   Partition keys are Unicode strings with a maximum length limit of
    #   256 characters for each key. Amazon Kinesis uses the partition key
    #   as input to a hash function that maps the partition key and
    #   associated data to a specific shard. Specifically, an MD5 hash
    #   function is used to map partition keys to 128-bit integer values and
    #   to map associated data records to shards. As a result of this
    #   hashing mechanism, all data records with the same partition key map
    #   to the same shard within the stream.
    #   @return [String]
    #
    # @!attribute [rw] explicit_hash_key
    #   The hash value used to explicitly determine the shard the data
    #   record is assigned to by overriding the partition key hash.
    #   @return [String]
    #
    # @!attribute [rw] sequence_number_for_ordering
    #   Guarantees strictly increasing sequence numbers, for puts from the
    #   same client and to the same partition key. Usage: set the
    #   `SequenceNumberForOrdering` of record *n* to the sequence number of
    #   record *n-1* (as returned in the result when putting record *n-1*).
    #   If this parameter is not set, records will be coarsely ordered based
    #   on arrival time.
    #   @return [String]
    #
    class PutRecordInput < Struct.new(
      :stream_name,
      :data,
      :partition_key,
      :explicit_hash_key,
      :sequence_number_for_ordering)
      include Aws::Structure
    end

    # Represents the output for `PutRecord`.
    #
    # @!attribute [rw] shard_id
    #   The shard ID of the shard where the data record was placed.
    #   @return [String]
    #
    # @!attribute [rw] sequence_number
    #   The sequence number identifier that was assigned to the put data
    #   record. The sequence number for the record is unique across all
    #   records in the stream. A sequence number is the identifier
    #   associated with every record put into the stream.
    #   @return [String]
    #
    class PutRecordOutput < Struct.new(
      :shard_id,
      :sequence_number)
      include Aws::Structure
    end

    # A `PutRecords` request.
    #
    # @note When making an API call, you may pass PutRecordsInput
    #   data as a hash:
    #
    #       {
    #         records: [ # required
    #           {
    #             data: "data", # required
    #             explicit_hash_key: "HashKey",
    #             partition_key: "PartitionKey", # required
    #           },
    #         ],
    #         stream_name: "StreamName", # required
    #       }
    #
    # @!attribute [rw] records
    #   The records associated with the request.
    #   @return [Array<Types::PutRecordsRequestEntry>]
    #
    # @!attribute [rw] stream_name
    #   The stream name associated with the request.
    #   @return [String]
    #
    class PutRecordsInput < Struct.new(
      :records,
      :stream_name)
      include Aws::Structure
    end

    # `PutRecords` results.
    #
    # @!attribute [rw] failed_record_count
    #   The number of unsuccessfully processed records in a `PutRecords`
    #   request.
    #   @return [Integer]
    #
    # @!attribute [rw] records
    #   An array of successfully and unsuccessfully processed record
    #   results, correlated with the request by natural ordering. A record
    #   that is successfully added to a stream includes `SequenceNumber` and
    #   `ShardId` in the result. A record that fails to be added to a stream
    #   includes `ErrorCode` and `ErrorMessage` in the result.
    #   @return [Array<Types::PutRecordsResultEntry>]
    #
    class PutRecordsOutput < Struct.new(
      :failed_record_count,
      :records)
      include Aws::Structure
    end

    # Represents the output for `PutRecords`.
    #
    # @note When making an API call, you may pass PutRecordsRequestEntry
    #   data as a hash:
    #
    #       {
    #         data: "data", # required
    #         explicit_hash_key: "HashKey",
    #         partition_key: "PartitionKey", # required
    #       }
    #
    # @!attribute [rw] data
    #   The data blob to put into the record, which is base64-encoded when
    #   the blob is serialized. When the data blob (the payload before
    #   base64-encoding) is added to the partition key size, the total size
    #   must not exceed the maximum record size (1 MB).
    #   @return [String]
    #
    # @!attribute [rw] explicit_hash_key
    #   The hash value used to determine explicitly the shard that the data
    #   record is assigned to by overriding the partition key hash.
    #   @return [String]
    #
    # @!attribute [rw] partition_key
    #   Determines which shard in the stream the data record is assigned to.
    #   Partition keys are Unicode strings with a maximum length limit of
    #   256 characters for each key. Amazon Kinesis uses the partition key
    #   as input to a hash function that maps the partition key and
    #   associated data to a specific shard. Specifically, an MD5 hash
    #   function is used to map partition keys to 128-bit integer values and
    #   to map associated data records to shards. As a result of this
    #   hashing mechanism, all data records with the same partition key map
    #   to the same shard within the stream.
    #   @return [String]
    #
    class PutRecordsRequestEntry < Struct.new(
      :data,
      :explicit_hash_key,
      :partition_key)
      include Aws::Structure
    end

    # Represents the result of an individual record from a `PutRecords`
    # request. A record that is successfully added to a stream includes
    # `SequenceNumber` and `ShardId` in the result. A record that fails to
    # be added to the stream includes `ErrorCode` and `ErrorMessage` in the
    # result.
    #
    # @!attribute [rw] sequence_number
    #   The sequence number for an individual record result.
    #   @return [String]
    #
    # @!attribute [rw] shard_id
    #   The shard ID for an individual record result.
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   The error code for an individual record result. `ErrorCodes` can be
    #   either `ProvisionedThroughputExceededException` or
    #   `InternalFailure`.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   The error message for an individual record result. An `ErrorCode`
    #   value of `ProvisionedThroughputExceededException` has an error
    #   message that includes the account ID, stream name, and shard ID. An
    #   `ErrorCode` value of `InternalFailure` has the error message
    #   `"Internal Service Failure"`.
    #   @return [String]
    #
    class PutRecordsResultEntry < Struct.new(
      :sequence_number,
      :shard_id,
      :error_code,
      :error_message)
      include Aws::Structure
    end

    # The unit of data of the Amazon Kinesis stream, which is composed of a
    # sequence number, a partition key, and a data blob.
    #
    # @!attribute [rw] sequence_number
    #   The unique identifier of the record in the stream.
    #   @return [String]
    #
    # @!attribute [rw] approximate_arrival_timestamp
    #   The approximate time that the record was inserted into the stream.
    #   @return [Time]
    #
    # @!attribute [rw] data
    #   The data blob. The data in the blob is both opaque and immutable to
    #   the Amazon Kinesis service, which does not inspect, interpret, or
    #   change the data in the blob in any way. When the data blob (the
    #   payload before base64-encoding) is added to the partition key size,
    #   the total size must not exceed the maximum record size (1 MB).
    #   @return [String]
    #
    # @!attribute [rw] partition_key
    #   Identifies which shard in the stream the data record is assigned to.
    #   @return [String]
    #
    class Record < Struct.new(
      :sequence_number,
      :approximate_arrival_timestamp,
      :data,
      :partition_key)
      include Aws::Structure
    end

    # Represents the input for `RemoveTagsFromStream`.
    #
    # @note When making an API call, you may pass RemoveTagsFromStreamInput
    #   data as a hash:
    #
    #       {
    #         stream_name: "StreamName", # required
    #         tag_keys: ["TagKey"], # required
    #       }
    #
    # @!attribute [rw] stream_name
    #   The name of the stream.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   A list of tag keys. Each corresponding tag is removed from the
    #   stream.
    #   @return [Array<String>]
    #
    class RemoveTagsFromStreamInput < Struct.new(
      :stream_name,
      :tag_keys)
      include Aws::Structure
    end

    # The range of possible sequence numbers for the shard.
    #
    # @!attribute [rw] starting_sequence_number
    #   The starting sequence number for the range.
    #   @return [String]
    #
    # @!attribute [rw] ending_sequence_number
    #   The ending sequence number for the range. Shards that are in the
    #   OPEN state have an ending sequence number of `null`.
    #   @return [String]
    #
    class SequenceNumberRange < Struct.new(
      :starting_sequence_number,
      :ending_sequence_number)
      include Aws::Structure
    end

    # A uniquely identified group of data records in an Amazon Kinesis
    # stream.
    #
    # @!attribute [rw] shard_id
    #   The unique identifier of the shard within the stream.
    #   @return [String]
    #
    # @!attribute [rw] parent_shard_id
    #   The shard ID of the shard's parent.
    #   @return [String]
    #
    # @!attribute [rw] adjacent_parent_shard_id
    #   The shard ID of the shard adjacent to the shard's parent.
    #   @return [String]
    #
    # @!attribute [rw] hash_key_range
    #   The range of possible hash key values for the shard, which is a set
    #   of ordered contiguous positive integers.
    #   @return [Types::HashKeyRange]
    #
    # @!attribute [rw] sequence_number_range
    #   The range of possible sequence numbers for the shard.
    #   @return [Types::SequenceNumberRange]
    #
    class Shard < Struct.new(
      :shard_id,
      :parent_shard_id,
      :adjacent_parent_shard_id,
      :hash_key_range,
      :sequence_number_range)
      include Aws::Structure
    end

    # Represents the input for `SplitShard`.
    #
    # @note When making an API call, you may pass SplitShardInput
    #   data as a hash:
    #
    #       {
    #         stream_name: "StreamName", # required
    #         shard_to_split: "ShardId", # required
    #         new_starting_hash_key: "HashKey", # required
    #       }
    #
    # @!attribute [rw] stream_name
    #   The name of the stream for the shard split.
    #   @return [String]
    #
    # @!attribute [rw] shard_to_split
    #   The shard ID of the shard to split.
    #   @return [String]
    #
    # @!attribute [rw] new_starting_hash_key
    #   A hash key value for the starting hash key of one of the child
    #   shards created by the split. The hash key range for a given shard
    #   constitutes a set of ordered contiguous positive integers. The value
    #   for `NewStartingHashKey` must be in the range of hash keys being
    #   mapped into the shard. The `NewStartingHashKey` hash key value and
    #   all higher hash key values in hash key range are distributed to one
    #   of the child shards. All the lower hash key values in the range are
    #   distributed to the other child shard.
    #   @return [String]
    #
    class SplitShardInput < Struct.new(
      :stream_name,
      :shard_to_split,
      :new_starting_hash_key)
      include Aws::Structure
    end

    # Represents the output for DescribeStream.
    #
    # @!attribute [rw] stream_name
    #   The name of the stream being described.
    #   @return [String]
    #
    # @!attribute [rw] stream_arn
    #   The Amazon Resource Name (ARN) for the stream being described.
    #   @return [String]
    #
    # @!attribute [rw] stream_status
    #   The current status of the stream being described. The stream status
    #   is one of the following states:
    #
    #   * `CREATING` - The stream is being created. Amazon Kinesis
    #     immediately returns and sets `StreamStatus` to `CREATING`.
    #
    #   * `DELETING` - The stream is being deleted. The specified stream is
    #     in the `DELETING` state until Amazon Kinesis completes the
    #     deletion.
    #
    #   * `ACTIVE` - The stream exists and is ready for read and write
    #     operations or deletion. You should perform read and write
    #     operations only on an `ACTIVE` stream.
    #
    #   * `UPDATING` - Shards in the stream are being merged or split. Read
    #     and write operations continue to work while the stream is in the
    #     `UPDATING` state.
    #   @return [String]
    #
    # @!attribute [rw] shards
    #   The shards that comprise the stream.
    #   @return [Array<Types::Shard>]
    #
    # @!attribute [rw] has_more_shards
    #   If set to `true`, more shards in the stream are available to
    #   describe.
    #   @return [Boolean]
    #
    # @!attribute [rw] retention_period_hours
    #   The current retention period, in hours.
    #   @return [Integer]
    #
    # @!attribute [rw] stream_creation_timestamp
    #   The approximate time that the stream was created.
    #   @return [Time]
    #
    # @!attribute [rw] enhanced_monitoring
    #   Represents the current enhanced monitoring settings of the stream.
    #   @return [Array<Types::EnhancedMetrics>]
    #
    class StreamDescription < Struct.new(
      :stream_name,
      :stream_arn,
      :stream_status,
      :shards,
      :has_more_shards,
      :retention_period_hours,
      :stream_creation_timestamp,
      :enhanced_monitoring)
      include Aws::Structure
    end

    # Metadata assigned to the stream, consisting of a key-value pair.
    #
    # @!attribute [rw] key
    #   A unique identifier for the tag. Maximum length: 128 characters.
    #   Valid characters: Unicode letters, digits, white space, \_ . / = + -
    #   % @
    #   @return [String]
    #
    # @!attribute [rw] value
    #   An optional string, typically used to describe or define the tag.
    #   Maximum length: 256 characters. Valid characters: Unicode letters,
    #   digits, white space, \_ . / = + - % @
    #   @return [String]
    #
    class Tag < Struct.new(
      :key,
      :value)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateShardCountInput
    #   data as a hash:
    #
    #       {
    #         stream_name: "StreamName", # required
    #         target_shard_count: 1, # required
    #         scaling_type: "UNIFORM_SCALING", # required, accepts UNIFORM_SCALING
    #       }
    #
    # @!attribute [rw] stream_name
    #   The name of the stream.
    #   @return [String]
    #
    # @!attribute [rw] target_shard_count
    #   The new number of shards.
    #   @return [Integer]
    #
    # @!attribute [rw] scaling_type
    #   The scaling type. Uniform scaling creates shards of equal size.
    #   @return [String]
    #
    class UpdateShardCountInput < Struct.new(
      :stream_name,
      :target_shard_count,
      :scaling_type)
      include Aws::Structure
    end

    # @!attribute [rw] stream_name
    #   The name of the stream.
    #   @return [String]
    #
    # @!attribute [rw] current_shard_count
    #   The current number of shards.
    #   @return [Integer]
    #
    # @!attribute [rw] target_shard_count
    #   The updated number of shards.
    #   @return [Integer]
    #
    class UpdateShardCountOutput < Struct.new(
      :stream_name,
      :current_shard_count,
      :target_shard_count)
      include Aws::Structure
    end

  end
end
