# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
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
    #   A set of up to 10 key-value pairs to use to create the tags.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesis-2013-12-02/AddTagsToStreamInput AWS API Documentation
    #
    class AddTagsToStreamInput < Struct.new(
      :stream_name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] shard_id
    #   @return [String]
    #
    # @!attribute [rw] parent_shards
    #   @return [Array<String>]
    #
    # @!attribute [rw] hash_key_range
    #   The range of possible hash key values for the shard, which is a set
    #   of ordered contiguous positive integers.
    #   @return [Types::HashKeyRange]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesis-2013-12-02/ChildShard AWS API Documentation
    #
    class ChildShard < Struct.new(
      :shard_id,
      :parent_shards,
      :hash_key_range)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents the details of the consumer you registered.
    # This type of object is returned by RegisterStreamConsumer.
    #
    # @!attribute [rw] consumer_name
    #   The name of the consumer is something you choose when you register
    #   the consumer.
    #   @return [String]
    #
    # @!attribute [rw] consumer_arn
    #   When you register a consumer, Kinesis Data Streams generates an ARN
    #   for it. You need this ARN to be able to call SubscribeToShard.
    #
    #   If you delete a consumer and then create a new one with the same
    #   name, it won't have the same ARN. That's because consumer ARNs
    #   contain the creation timestamp. This is important to keep in mind if
    #   you have IAM policies that reference consumer ARNs.
    #   @return [String]
    #
    # @!attribute [rw] consumer_status
    #   A consumer can't read data while in the `CREATING` or `DELETING`
    #   states.
    #   @return [String]
    #
    # @!attribute [rw] consumer_creation_timestamp
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesis-2013-12-02/Consumer AWS API Documentation
    #
    class Consumer < Struct.new(
      :consumer_name,
      :consumer_arn,
      :consumer_status,
      :consumer_creation_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents the details of a registered consumer. This
    # type of object is returned by DescribeStreamConsumer.
    #
    # @!attribute [rw] consumer_name
    #   The name of the consumer is something you choose when you register
    #   the consumer.
    #   @return [String]
    #
    # @!attribute [rw] consumer_arn
    #   When you register a consumer, Kinesis Data Streams generates an ARN
    #   for it. You need this ARN to be able to call SubscribeToShard.
    #
    #   If you delete a consumer and then create a new one with the same
    #   name, it won't have the same ARN. That's because consumer ARNs
    #   contain the creation timestamp. This is important to keep in mind if
    #   you have IAM policies that reference consumer ARNs.
    #   @return [String]
    #
    # @!attribute [rw] consumer_status
    #   A consumer can't read data while in the `CREATING` or `DELETING`
    #   states.
    #   @return [String]
    #
    # @!attribute [rw] consumer_creation_timestamp
    #   @return [Time]
    #
    # @!attribute [rw] stream_arn
    #   The ARN of the stream with which you registered the consumer.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesis-2013-12-02/ConsumerDescription AWS API Documentation
    #
    class ConsumerDescription < Struct.new(
      :consumer_name,
      :consumer_arn,
      :consumer_status,
      :consumer_creation_timestamp,
      :stream_arn)
      SENSITIVE = []
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
    #   scoped by AWS Region. That is, two streams in two different AWS
    #   accounts can have the same name. Two streams in the same AWS account
    #   but in two different Regions can also have the same name.
    #   @return [String]
    #
    # @!attribute [rw] shard_count
    #   The number of shards that the stream will use. The throughput of the
    #   stream is a function of the number of shards; more shards are
    #   required for greater provisioned throughput.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesis-2013-12-02/CreateStreamInput AWS API Documentation
    #
    class CreateStreamInput < Struct.new(
      :stream_name,
      :shard_count)
      SENSITIVE = []
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesis-2013-12-02/DecreaseStreamRetentionPeriodInput AWS API Documentation
    #
    class DecreaseStreamRetentionPeriodInput < Struct.new(
      :stream_name,
      :retention_period_hours)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input for DeleteStream.
    #
    # @note When making an API call, you may pass DeleteStreamInput
    #   data as a hash:
    #
    #       {
    #         stream_name: "StreamName", # required
    #         enforce_consumer_deletion: false,
    #       }
    #
    # @!attribute [rw] stream_name
    #   The name of the stream to delete.
    #   @return [String]
    #
    # @!attribute [rw] enforce_consumer_deletion
    #   If this parameter is unset (`null`) or if you set it to `false`, and
    #   the stream has registered consumers, the call to `DeleteStream`
    #   fails with a `ResourceInUseException`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesis-2013-12-02/DeleteStreamInput AWS API Documentation
    #
    class DeleteStreamInput < Struct.new(
      :stream_name,
      :enforce_consumer_deletion)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeregisterStreamConsumerInput
    #   data as a hash:
    #
    #       {
    #         stream_arn: "StreamARN",
    #         consumer_name: "ConsumerName",
    #         consumer_arn: "ConsumerARN",
    #       }
    #
    # @!attribute [rw] stream_arn
    #   The ARN of the Kinesis data stream that the consumer is registered
    #   with. For more information, see [Amazon Resource Names (ARNs) and
    #   AWS Service Namespaces][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-kinesis-streams
    #   @return [String]
    #
    # @!attribute [rw] consumer_name
    #   The name that you gave to the consumer.
    #   @return [String]
    #
    # @!attribute [rw] consumer_arn
    #   The ARN returned by Kinesis Data Streams when you registered the
    #   consumer. If you don't know the ARN of the consumer that you want
    #   to deregister, you can use the ListStreamConsumers operation to get
    #   a list of the descriptions of all the consumers that are currently
    #   registered with a given data stream. The description of a consumer
    #   contains its ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesis-2013-12-02/DeregisterStreamConsumerInput AWS API Documentation
    #
    class DeregisterStreamConsumerInput < Struct.new(
      :stream_arn,
      :consumer_name,
      :consumer_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesis-2013-12-02/DescribeLimitsInput AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesis-2013-12-02/DescribeLimitsOutput AWS API Documentation
    #
    class DescribeLimitsOutput < Struct.new(
      :shard_limit,
      :open_shard_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeStreamConsumerInput
    #   data as a hash:
    #
    #       {
    #         stream_arn: "StreamARN",
    #         consumer_name: "ConsumerName",
    #         consumer_arn: "ConsumerARN",
    #       }
    #
    # @!attribute [rw] stream_arn
    #   The ARN of the Kinesis data stream that the consumer is registered
    #   with. For more information, see [Amazon Resource Names (ARNs) and
    #   AWS Service Namespaces][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-kinesis-streams
    #   @return [String]
    #
    # @!attribute [rw] consumer_name
    #   The name that you gave to the consumer.
    #   @return [String]
    #
    # @!attribute [rw] consumer_arn
    #   The ARN returned by Kinesis Data Streams when you registered the
    #   consumer.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesis-2013-12-02/DescribeStreamConsumerInput AWS API Documentation
    #
    class DescribeStreamConsumerInput < Struct.new(
      :stream_arn,
      :consumer_name,
      :consumer_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] consumer_description
    #   An object that represents the details of the consumer.
    #   @return [Types::ConsumerDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesis-2013-12-02/DescribeStreamConsumerOutput AWS API Documentation
    #
    class DescribeStreamConsumerOutput < Struct.new(
      :consumer_description)
      SENSITIVE = []
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesis-2013-12-02/DescribeStreamInput AWS API Documentation
    #
    class DescribeStreamInput < Struct.new(
      :stream_name,
      :limit,
      :exclusive_start_shard_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the output for `DescribeStream`.
    #
    # @!attribute [rw] stream_description
    #   The current status of the stream, the stream Amazon Resource Name
    #   (ARN), an array of shard objects that comprise the stream, and
    #   whether there are more shards available.
    #   @return [Types::StreamDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesis-2013-12-02/DescribeStreamOutput AWS API Documentation
    #
    class DescribeStreamOutput < Struct.new(
      :stream_description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeStreamSummaryInput
    #   data as a hash:
    #
    #       {
    #         stream_name: "StreamName", # required
    #       }
    #
    # @!attribute [rw] stream_name
    #   The name of the stream to describe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesis-2013-12-02/DescribeStreamSummaryInput AWS API Documentation
    #
    class DescribeStreamSummaryInput < Struct.new(
      :stream_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] stream_description_summary
    #   A StreamDescriptionSummary containing information about the stream.
    #   @return [Types::StreamDescriptionSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesis-2013-12-02/DescribeStreamSummaryOutput AWS API Documentation
    #
    class DescribeStreamSummaryOutput < Struct.new(
      :stream_description_summary)
      SENSITIVE = []
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
    #   The name of the Kinesis data stream for which to disable enhanced
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
    #   For more information, see [Monitoring the Amazon Kinesis Data
    #   Streams Service with Amazon CloudWatch][1] in the *Amazon Kinesis
    #   Data Streams Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kinesis/latest/dev/monitoring-with-cloudwatch.html
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesis-2013-12-02/DisableEnhancedMonitoringInput AWS API Documentation
    #
    class DisableEnhancedMonitoringInput < Struct.new(
      :stream_name,
      :shard_level_metrics)
      SENSITIVE = []
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
    #   For more information, see [Monitoring the Amazon Kinesis Data
    #   Streams Service with Amazon CloudWatch][1] in the *Amazon Kinesis
    #   Data Streams Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kinesis/latest/dev/monitoring-with-cloudwatch.html
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesis-2013-12-02/EnableEnhancedMonitoringInput AWS API Documentation
    #
    class EnableEnhancedMonitoringInput < Struct.new(
      :stream_name,
      :shard_level_metrics)
      SENSITIVE = []
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
    #   For more information, see [Monitoring the Amazon Kinesis Data
    #   Streams Service with Amazon CloudWatch][1] in the *Amazon Kinesis
    #   Data Streams Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kinesis/latest/dev/monitoring-with-cloudwatch.html
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesis-2013-12-02/EnhancedMetrics AWS API Documentation
    #
    class EnhancedMetrics < Struct.new(
      :shard_level_metrics)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the output for EnableEnhancedMonitoring and
    # DisableEnhancedMonitoring.
    #
    # @!attribute [rw] stream_name
    #   The name of the Kinesis data stream.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesis-2013-12-02/EnhancedMonitoringOutput AWS API Documentation
    #
    class EnhancedMonitoringOutput < Struct.new(
      :stream_name,
      :current_shard_level_metrics,
      :desired_shard_level_metrics)
      SENSITIVE = []
      include Aws::Structure
    end

    # The provided iterator exceeds the maximum age allowed.
    #
    # @!attribute [rw] message
    #   A message that provides information about the error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesis-2013-12-02/ExpiredIteratorException AWS API Documentation
    #
    class ExpiredIteratorException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The pagination token passed to the operation is expired.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesis-2013-12-02/ExpiredNextTokenException AWS API Documentation
    #
    class ExpiredNextTokenException < Struct.new(
      :message)
      SENSITIVE = []
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
    #   GetRecords throws `InvalidArgumentException`. The default value is
    #   10,000.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesis-2013-12-02/GetRecordsInput AWS API Documentation
    #
    class GetRecordsInput < Struct.new(
      :shard_iterator,
      :limit)
      SENSITIVE = []
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
    #   and the requested iterator does not return any more data.
    #   @return [String]
    #
    # @!attribute [rw] millis_behind_latest
    #   The number of milliseconds the GetRecords response is from the tip
    #   of the stream, indicating how far behind current time the consumer
    #   is. A value of zero indicates that record processing is caught up,
    #   and there are no new records to process at this moment.
    #   @return [Integer]
    #
    # @!attribute [rw] child_shards
    #   @return [Array<Types::ChildShard>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesis-2013-12-02/GetRecordsOutput AWS API Documentation
    #
    class GetRecordsOutput < Struct.new(
      :records,
      :next_shard_iterator,
      :millis_behind_latest,
      :child_shards)
      SENSITIVE = []
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
    #   The name of the Amazon Kinesis data stream.
    #   @return [String]
    #
    # @!attribute [rw] shard_id
    #   The shard ID of the Kinesis Data Streams shard to get the iterator
    #   for.
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
    #     specific time stamp, provided in the value `Timestamp`.
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
    #   The time stamp of the data record from which to start reading. Used
    #   with shard iterator type AT\_TIMESTAMP. A time stamp is the Unix
    #   epoch date with precision in milliseconds. For example,
    #   `2016-04-04T19:58:46.480-00:00` or `1459799926.480`. If a record
    #   with this exact time stamp does not exist, the iterator returned is
    #   for the next (later) record. If the time stamp is older than the
    #   current trim horizon, the iterator returned is for the oldest
    #   untrimmed data record (TRIM\_HORIZON).
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesis-2013-12-02/GetShardIteratorInput AWS API Documentation
    #
    class GetShardIteratorInput < Struct.new(
      :stream_name,
      :shard_id,
      :shard_iterator_type,
      :starting_sequence_number,
      :timestamp)
      SENSITIVE = []
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesis-2013-12-02/GetShardIteratorOutput AWS API Documentation
    #
    class GetShardIteratorOutput < Struct.new(
      :shard_iterator)
      SENSITIVE = []
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesis-2013-12-02/HashKeyRange AWS API Documentation
    #
    class HashKeyRange < Struct.new(
      :starting_hash_key,
      :ending_hash_key)
      SENSITIVE = []
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesis-2013-12-02/IncreaseStreamRetentionPeriodInput AWS API Documentation
    #
    class IncreaseStreamRetentionPeriodInput < Struct.new(
      :stream_name,
      :retention_period_hours)
      SENSITIVE = []
      include Aws::Structure
    end

    # The processing of the request failed because of an unknown error,
    # exception, or failure.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesis-2013-12-02/InternalFailureException AWS API Documentation
    #
    class InternalFailureException < Struct.new(
      :message,
      :event_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # A specified parameter exceeds its restrictions, is not supported, or
    # can't be used. For more information, see the returned message.
    #
    # @!attribute [rw] message
    #   A message that provides information about the error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesis-2013-12-02/InvalidArgumentException AWS API Documentation
    #
    class InvalidArgumentException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The ciphertext references a key that doesn't exist or that you don't
    # have access to.
    #
    # @!attribute [rw] message
    #   A message that provides information about the error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesis-2013-12-02/KMSAccessDeniedException AWS API Documentation
    #
    class KMSAccessDeniedException < Struct.new(
      :message,
      :event_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was rejected because the specified customer master key
    # (CMK) isn't enabled.
    #
    # @!attribute [rw] message
    #   A message that provides information about the error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesis-2013-12-02/KMSDisabledException AWS API Documentation
    #
    class KMSDisabledException < Struct.new(
      :message,
      :event_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was rejected because the state of the specified resource
    # isn't valid for this request. For more information, see [How Key
    # State Affects Use of a Customer Master Key][1] in the *AWS Key
    # Management Service Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html
    #
    # @!attribute [rw] message
    #   A message that provides information about the error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesis-2013-12-02/KMSInvalidStateException AWS API Documentation
    #
    class KMSInvalidStateException < Struct.new(
      :message,
      :event_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was rejected because the specified entity or resource
    # can't be found.
    #
    # @!attribute [rw] message
    #   A message that provides information about the error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesis-2013-12-02/KMSNotFoundException AWS API Documentation
    #
    class KMSNotFoundException < Struct.new(
      :message,
      :event_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The AWS access key ID needs a subscription for the service.
    #
    # @!attribute [rw] message
    #   A message that provides information about the error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesis-2013-12-02/KMSOptInRequired AWS API Documentation
    #
    class KMSOptInRequired < Struct.new(
      :message,
      :event_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was denied due to request throttling. For more information
    # about throttling, see [Limits][1] in the *AWS Key Management Service
    # Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kms/latest/developerguide/limits.html#requests-per-second
    #
    # @!attribute [rw] message
    #   A message that provides information about the error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesis-2013-12-02/KMSThrottlingException AWS API Documentation
    #
    class KMSThrottlingException < Struct.new(
      :message,
      :event_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The requested resource exceeds the maximum number allowed, or the
    # number of concurrent stream requests exceeds the maximum number
    # allowed.
    #
    # @!attribute [rw] message
    #   A message that provides information about the error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesis-2013-12-02/LimitExceededException AWS API Documentation
    #
    class LimitExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListShardsInput
    #   data as a hash:
    #
    #       {
    #         stream_name: "StreamName",
    #         next_token: "NextToken",
    #         exclusive_start_shard_id: "ShardId",
    #         max_results: 1,
    #         stream_creation_timestamp: Time.now,
    #         shard_filter: {
    #           type: "AFTER_SHARD_ID", # required, accepts AFTER_SHARD_ID, AT_TRIM_HORIZON, FROM_TRIM_HORIZON, AT_LATEST, AT_TIMESTAMP, FROM_TIMESTAMP
    #           shard_id: "ShardId",
    #           timestamp: Time.now,
    #         },
    #       }
    #
    # @!attribute [rw] stream_name
    #   The name of the data stream whose shards you want to list.
    #
    #   You cannot specify this parameter if you specify the `NextToken`
    #   parameter.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   When the number of shards in the data stream is greater than the
    #   default value for the `MaxResults` parameter, or if you explicitly
    #   specify a value for `MaxResults` that is less than the number of
    #   shards in the data stream, the response includes a pagination token
    #   named `NextToken`. You can specify this `NextToken` value in a
    #   subsequent call to `ListShards` to list the next set of shards.
    #
    #   Don't specify `StreamName` or `StreamCreationTimestamp` if you
    #   specify `NextToken` because the latter unambiguously identifies the
    #   stream.
    #
    #   You can optionally specify a value for the `MaxResults` parameter
    #   when you specify `NextToken`. If you specify a `MaxResults` value
    #   that is less than the number of shards that the operation returns if
    #   you don't specify `MaxResults`, the response will contain a new
    #   `NextToken` value. You can use the new `NextToken` value in a
    #   subsequent call to the `ListShards` operation.
    #
    #   Tokens expire after 300 seconds. When you obtain a value for
    #   `NextToken` in the response to a call to `ListShards`, you have 300
    #   seconds to use that value. If you specify an expired token in a call
    #   to `ListShards`, you get `ExpiredNextTokenException`.
    #   @return [String]
    #
    # @!attribute [rw] exclusive_start_shard_id
    #   Specify this parameter to indicate that you want to list the shards
    #   starting with the shard whose ID immediately follows
    #   `ExclusiveStartShardId`.
    #
    #   If you don't specify this parameter, the default behavior is for
    #   `ListShards` to list the shards starting with the first one in the
    #   stream.
    #
    #   You cannot specify this parameter if you specify `NextToken`.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of shards to return in a single call to
    #   `ListShards`. The minimum value you can specify for this parameter
    #   is 1, and the maximum is 10,000, which is also the default.
    #
    #   When the number of shards to be listed is greater than the value of
    #   `MaxResults`, the response contains a `NextToken` value that you can
    #   use in a subsequent call to `ListShards` to list the next set of
    #   shards.
    #   @return [Integer]
    #
    # @!attribute [rw] stream_creation_timestamp
    #   Specify this input parameter to distinguish data streams that have
    #   the same name. For example, if you create a data stream and then
    #   delete it, and you later create another data stream with the same
    #   name, you can use this input parameter to specify which of the two
    #   streams you want to list the shards for.
    #
    #   You cannot specify this parameter if you specify the `NextToken`
    #   parameter.
    #   @return [Time]
    #
    # @!attribute [rw] shard_filter
    #   @return [Types::ShardFilter]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesis-2013-12-02/ListShardsInput AWS API Documentation
    #
    class ListShardsInput < Struct.new(
      :stream_name,
      :next_token,
      :exclusive_start_shard_id,
      :max_results,
      :stream_creation_timestamp,
      :shard_filter)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] shards
    #   An array of JSON objects. Each object represents one shard and
    #   specifies the IDs of the shard, the shard's parent, and the shard
    #   that's adjacent to the shard's parent. Each object also contains
    #   the starting and ending hash keys and the starting and ending
    #   sequence numbers for the shard.
    #   @return [Array<Types::Shard>]
    #
    # @!attribute [rw] next_token
    #   When the number of shards in the data stream is greater than the
    #   default value for the `MaxResults` parameter, or if you explicitly
    #   specify a value for `MaxResults` that is less than the number of
    #   shards in the data stream, the response includes a pagination token
    #   named `NextToken`. You can specify this `NextToken` value in a
    #   subsequent call to `ListShards` to list the next set of shards. For
    #   more information about the use of this pagination token when calling
    #   the `ListShards` operation, see ListShardsInput$NextToken.
    #
    #   Tokens expire after 300 seconds. When you obtain a value for
    #   `NextToken` in the response to a call to `ListShards`, you have 300
    #   seconds to use that value. If you specify an expired token in a call
    #   to `ListShards`, you get `ExpiredNextTokenException`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesis-2013-12-02/ListShardsOutput AWS API Documentation
    #
    class ListShardsOutput < Struct.new(
      :shards,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListStreamConsumersInput
    #   data as a hash:
    #
    #       {
    #         stream_arn: "StreamARN", # required
    #         next_token: "NextToken",
    #         max_results: 1,
    #         stream_creation_timestamp: Time.now,
    #       }
    #
    # @!attribute [rw] stream_arn
    #   The ARN of the Kinesis data stream for which you want to list the
    #   registered consumers. For more information, see [Amazon Resource
    #   Names (ARNs) and AWS Service Namespaces][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-kinesis-streams
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   When the number of consumers that are registered with the data
    #   stream is greater than the default value for the `MaxResults`
    #   parameter, or if you explicitly specify a value for `MaxResults`
    #   that is less than the number of consumers that are registered with
    #   the data stream, the response includes a pagination token named
    #   `NextToken`. You can specify this `NextToken` value in a subsequent
    #   call to `ListStreamConsumers` to list the next set of registered
    #   consumers.
    #
    #   Don't specify `StreamName` or `StreamCreationTimestamp` if you
    #   specify `NextToken` because the latter unambiguously identifies the
    #   stream.
    #
    #   You can optionally specify a value for the `MaxResults` parameter
    #   when you specify `NextToken`. If you specify a `MaxResults` value
    #   that is less than the number of consumers that the operation returns
    #   if you don't specify `MaxResults`, the response will contain a new
    #   `NextToken` value. You can use the new `NextToken` value in a
    #   subsequent call to the `ListStreamConsumers` operation to list the
    #   next set of consumers.
    #
    #   Tokens expire after 300 seconds. When you obtain a value for
    #   `NextToken` in the response to a call to `ListStreamConsumers`, you
    #   have 300 seconds to use that value. If you specify an expired token
    #   in a call to `ListStreamConsumers`, you get
    #   `ExpiredNextTokenException`.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of consumers that you want a single call of
    #   `ListStreamConsumers` to return.
    #   @return [Integer]
    #
    # @!attribute [rw] stream_creation_timestamp
    #   Specify this input parameter to distinguish data streams that have
    #   the same name. For example, if you create a data stream and then
    #   delete it, and you later create another data stream with the same
    #   name, you can use this input parameter to specify which of the two
    #   streams you want to list the consumers for.
    #
    #   You can't specify this parameter if you specify the NextToken
    #   parameter.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesis-2013-12-02/ListStreamConsumersInput AWS API Documentation
    #
    class ListStreamConsumersInput < Struct.new(
      :stream_arn,
      :next_token,
      :max_results,
      :stream_creation_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] consumers
    #   An array of JSON objects. Each object represents one registered
    #   consumer.
    #   @return [Array<Types::Consumer>]
    #
    # @!attribute [rw] next_token
    #   When the number of consumers that are registered with the data
    #   stream is greater than the default value for the `MaxResults`
    #   parameter, or if you explicitly specify a value for `MaxResults`
    #   that is less than the number of registered consumers, the response
    #   includes a pagination token named `NextToken`. You can specify this
    #   `NextToken` value in a subsequent call to `ListStreamConsumers` to
    #   list the next set of registered consumers. For more information
    #   about the use of this pagination token when calling the
    #   `ListStreamConsumers` operation, see
    #   ListStreamConsumersInput$NextToken.
    #
    #   Tokens expire after 300 seconds. When you obtain a value for
    #   `NextToken` in the response to a call to `ListStreamConsumers`, you
    #   have 300 seconds to use that value. If you specify an expired token
    #   in a call to `ListStreamConsumers`, you get
    #   `ExpiredNextTokenException`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesis-2013-12-02/ListStreamConsumersOutput AWS API Documentation
    #
    class ListStreamConsumersOutput < Struct.new(
      :consumers,
      :next_token)
      SENSITIVE = []
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesis-2013-12-02/ListStreamsInput AWS API Documentation
    #
    class ListStreamsInput < Struct.new(
      :limit,
      :exclusive_start_stream_name)
      SENSITIVE = []
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesis-2013-12-02/ListStreamsOutput AWS API Documentation
    #
    class ListStreamsOutput < Struct.new(
      :stream_names,
      :has_more_streams)
      SENSITIVE = []
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesis-2013-12-02/ListTagsForStreamInput AWS API Documentation
    #
    class ListTagsForStreamInput < Struct.new(
      :stream_name,
      :exclusive_start_tag_key,
      :limit)
      SENSITIVE = []
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesis-2013-12-02/ListTagsForStreamOutput AWS API Documentation
    #
    class ListTagsForStreamOutput < Struct.new(
      :tags,
      :has_more_tags)
      SENSITIVE = []
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesis-2013-12-02/MergeShardsInput AWS API Documentation
    #
    class MergeShardsInput < Struct.new(
      :stream_name,
      :shard_to_merge,
      :adjacent_shard_to_merge)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request rate for the stream is too high, or the requested data is
    # too large for the available throughput. Reduce the frequency or size
    # of your requests. For more information, see [Streams Limits][1] in the
    # *Amazon Kinesis Data Streams Developer Guide*, and [Error Retries and
    # Exponential Backoff in AWS][2] in the *AWS General Reference*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kinesis/latest/dev/service-sizes-and-limits.html
    # [2]: https://docs.aws.amazon.com/general/latest/gr/api-retries.html
    #
    # @!attribute [rw] message
    #   A message that provides information about the error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesis-2013-12-02/ProvisionedThroughputExceededException AWS API Documentation
    #
    class ProvisionedThroughputExceededException < Struct.new(
      :message)
      SENSITIVE = []
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
    #   must not exceed the maximum record size (1 MiB).
    #   @return [String]
    #
    # @!attribute [rw] partition_key
    #   Determines which shard in the stream the data record is assigned to.
    #   Partition keys are Unicode strings with a maximum length limit of
    #   256 characters for each key. Amazon Kinesis Data Streams uses the
    #   partition key as input to a hash function that maps the partition
    #   key and associated data to a specific shard. Specifically, an MD5
    #   hash function is used to map partition keys to 128-bit integer
    #   values and to map associated data records to shards. As a result of
    #   this hashing mechanism, all data records with the same partition key
    #   map to the same shard within the stream.
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
    #   If this parameter is not set, records are coarsely ordered based on
    #   arrival time.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesis-2013-12-02/PutRecordInput AWS API Documentation
    #
    class PutRecordInput < Struct.new(
      :stream_name,
      :data,
      :partition_key,
      :explicit_hash_key,
      :sequence_number_for_ordering)
      SENSITIVE = []
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
    # @!attribute [rw] encryption_type
    #   The encryption type to use on the record. This parameter can be one
    #   of the following values:
    #
    #   * `NONE`\: Do not encrypt the records in the stream.
    #
    #   * `KMS`\: Use server-side encryption on the records in the stream
    #     using a customer-managed AWS KMS key.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesis-2013-12-02/PutRecordOutput AWS API Documentation
    #
    class PutRecordOutput < Struct.new(
      :shard_id,
      :sequence_number,
      :encryption_type)
      SENSITIVE = []
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesis-2013-12-02/PutRecordsInput AWS API Documentation
    #
    class PutRecordsInput < Struct.new(
      :records,
      :stream_name)
      SENSITIVE = []
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
    # @!attribute [rw] encryption_type
    #   The encryption type used on the records. This parameter can be one
    #   of the following values:
    #
    #   * `NONE`\: Do not encrypt the records.
    #
    #   * `KMS`\: Use server-side encryption on the records using a
    #     customer-managed AWS KMS key.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesis-2013-12-02/PutRecordsOutput AWS API Documentation
    #
    class PutRecordsOutput < Struct.new(
      :failed_record_count,
      :records,
      :encryption_type)
      SENSITIVE = []
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
    #   must not exceed the maximum record size (1 MiB).
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
    #   256 characters for each key. Amazon Kinesis Data Streams uses the
    #   partition key as input to a hash function that maps the partition
    #   key and associated data to a specific shard. Specifically, an MD5
    #   hash function is used to map partition keys to 128-bit integer
    #   values and to map associated data records to shards. As a result of
    #   this hashing mechanism, all data records with the same partition key
    #   map to the same shard within the stream.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesis-2013-12-02/PutRecordsRequestEntry AWS API Documentation
    #
    class PutRecordsRequestEntry < Struct.new(
      :data,
      :explicit_hash_key,
      :partition_key)
      SENSITIVE = []
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesis-2013-12-02/PutRecordsResultEntry AWS API Documentation
    #
    class PutRecordsResultEntry < Struct.new(
      :sequence_number,
      :shard_id,
      :error_code,
      :error_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The unit of data of the Kinesis data stream, which is composed of a
    # sequence number, a partition key, and a data blob.
    #
    # @!attribute [rw] sequence_number
    #   The unique identifier of the record within its shard.
    #   @return [String]
    #
    # @!attribute [rw] approximate_arrival_timestamp
    #   The approximate time that the record was inserted into the stream.
    #   @return [Time]
    #
    # @!attribute [rw] data
    #   The data blob. The data in the blob is both opaque and immutable to
    #   Kinesis Data Streams, which does not inspect, interpret, or change
    #   the data in the blob in any way. When the data blob (the payload
    #   before base64-encoding) is added to the partition key size, the
    #   total size must not exceed the maximum record size (1 MiB).
    #   @return [String]
    #
    # @!attribute [rw] partition_key
    #   Identifies which shard in the stream the data record is assigned to.
    #   @return [String]
    #
    # @!attribute [rw] encryption_type
    #   The encryption type used on the record. This parameter can be one of
    #   the following values:
    #
    #   * `NONE`\: Do not encrypt the records in the stream.
    #
    #   * `KMS`\: Use server-side encryption on the records in the stream
    #     using a customer-managed AWS KMS key.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesis-2013-12-02/Record AWS API Documentation
    #
    class Record < Struct.new(
      :sequence_number,
      :approximate_arrival_timestamp,
      :data,
      :partition_key,
      :encryption_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass RegisterStreamConsumerInput
    #   data as a hash:
    #
    #       {
    #         stream_arn: "StreamARN", # required
    #         consumer_name: "ConsumerName", # required
    #       }
    #
    # @!attribute [rw] stream_arn
    #   The ARN of the Kinesis data stream that you want to register the
    #   consumer with. For more info, see [Amazon Resource Names (ARNs) and
    #   AWS Service Namespaces][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-kinesis-streams
    #   @return [String]
    #
    # @!attribute [rw] consumer_name
    #   For a given Kinesis data stream, each consumer must have a unique
    #   name. However, consumer names don't have to be unique across data
    #   streams.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesis-2013-12-02/RegisterStreamConsumerInput AWS API Documentation
    #
    class RegisterStreamConsumerInput < Struct.new(
      :stream_arn,
      :consumer_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] consumer
    #   An object that represents the details of the consumer you
    #   registered. When you register a consumer, it gets an ARN that is
    #   generated by Kinesis Data Streams.
    #   @return [Types::Consumer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesis-2013-12-02/RegisterStreamConsumerOutput AWS API Documentation
    #
    class RegisterStreamConsumerOutput < Struct.new(
      :consumer)
      SENSITIVE = []
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesis-2013-12-02/RemoveTagsFromStreamInput AWS API Documentation
    #
    class RemoveTagsFromStreamInput < Struct.new(
      :stream_name,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resource is not available for this operation. For successful
    # operation, the resource must be in the `ACTIVE` state.
    #
    # @!attribute [rw] message
    #   A message that provides information about the error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesis-2013-12-02/ResourceInUseException AWS API Documentation
    #
    class ResourceInUseException < Struct.new(
      :message,
      :event_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The requested resource could not be found. The stream might not be
    # specified correctly.
    #
    # @!attribute [rw] message
    #   A message that provides information about the error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesis-2013-12-02/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message,
      :event_type)
      SENSITIVE = []
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesis-2013-12-02/SequenceNumberRange AWS API Documentation
    #
    class SequenceNumberRange < Struct.new(
      :starting_sequence_number,
      :ending_sequence_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # A uniquely identified group of data records in a Kinesis data stream.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesis-2013-12-02/Shard AWS API Documentation
    #
    class Shard < Struct.new(
      :shard_id,
      :parent_shard_id,
      :adjacent_parent_shard_id,
      :hash_key_range,
      :sequence_number_range)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ShardFilter
    #   data as a hash:
    #
    #       {
    #         type: "AFTER_SHARD_ID", # required, accepts AFTER_SHARD_ID, AT_TRIM_HORIZON, FROM_TRIM_HORIZON, AT_LATEST, AT_TIMESTAMP, FROM_TIMESTAMP
    #         shard_id: "ShardId",
    #         timestamp: Time.now,
    #       }
    #
    # @!attribute [rw] type
    #   @return [String]
    #
    # @!attribute [rw] shard_id
    #   @return [String]
    #
    # @!attribute [rw] timestamp
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesis-2013-12-02/ShardFilter AWS API Documentation
    #
    class ShardFilter < Struct.new(
      :type,
      :shard_id,
      :timestamp)
      SENSITIVE = []
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesis-2013-12-02/SplitShardInput AWS API Documentation
    #
    class SplitShardInput < Struct.new(
      :stream_name,
      :shard_to_split,
      :new_starting_hash_key)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass StartStreamEncryptionInput
    #   data as a hash:
    #
    #       {
    #         stream_name: "StreamName", # required
    #         encryption_type: "NONE", # required, accepts NONE, KMS
    #         key_id: "KeyId", # required
    #       }
    #
    # @!attribute [rw] stream_name
    #   The name of the stream for which to start encrypting records.
    #   @return [String]
    #
    # @!attribute [rw] encryption_type
    #   The encryption type to use. The only valid value is `KMS`.
    #   @return [String]
    #
    # @!attribute [rw] key_id
    #   The GUID for the customer-managed AWS KMS key to use for encryption.
    #   This value can be a globally unique identifier, a fully specified
    #   Amazon Resource Name (ARN) to either an alias or a key, or an alias
    #   name prefixed by "alias/".You can also use a master key owned by
    #   Kinesis Data Streams by specifying the alias `aws/kinesis`.
    #
    #   * Key ARN example:
    #     `arn:aws:kms:us-east-1:123456789012:key/12345678-1234-1234-1234-123456789012`
    #
    #   * Alias ARN example:
    #     `arn:aws:kms:us-east-1:123456789012:alias/MyAliasName`
    #
    #   * Globally unique key ID example:
    #     `12345678-1234-1234-1234-123456789012`
    #
    #   * Alias name example: `alias/MyAliasName`
    #
    #   * Master key owned by Kinesis Data Streams: `alias/aws/kinesis`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesis-2013-12-02/StartStreamEncryptionInput AWS API Documentation
    #
    class StartStreamEncryptionInput < Struct.new(
      :stream_name,
      :encryption_type,
      :key_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass StartingPosition
    #   data as a hash:
    #
    #       {
    #         type: "AT_SEQUENCE_NUMBER", # required, accepts AT_SEQUENCE_NUMBER, AFTER_SEQUENCE_NUMBER, TRIM_HORIZON, LATEST, AT_TIMESTAMP
    #         sequence_number: "SequenceNumber",
    #         timestamp: Time.now,
    #       }
    #
    # @!attribute [rw] type
    #   You can set the starting position to one of the following values:
    #
    #   `AT_SEQUENCE_NUMBER`\: Start streaming from the position denoted by
    #   the sequence number specified in the `SequenceNumber` field.
    #
    #   `AFTER_SEQUENCE_NUMBER`\: Start streaming right after the position
    #   denoted by the sequence number specified in the `SequenceNumber`
    #   field.
    #
    #   `AT_TIMESTAMP`\: Start streaming from the position denoted by the
    #   time stamp specified in the `Timestamp` field.
    #
    #   `TRIM_HORIZON`\: Start streaming at the last untrimmed record in the
    #   shard, which is the oldest data record in the shard.
    #
    #   `LATEST`\: Start streaming just after the most recent record in the
    #   shard, so that you always read the most recent data in the shard.
    #   @return [String]
    #
    # @!attribute [rw] sequence_number
    #   The sequence number of the data record in the shard from which to
    #   start streaming. To specify a sequence number, set
    #   `StartingPosition` to `AT_SEQUENCE_NUMBER` or
    #   `AFTER_SEQUENCE_NUMBER`.
    #   @return [String]
    #
    # @!attribute [rw] timestamp
    #   The time stamp of the data record from which to start reading. To
    #   specify a time stamp, set `StartingPosition` to `Type AT_TIMESTAMP`.
    #   A time stamp is the Unix epoch date with precision in milliseconds.
    #   For example, `2016-04-04T19:58:46.480-00:00` or `1459799926.480`. If
    #   a record with this exact time stamp does not exist, records will be
    #   streamed from the next (later) record. If the time stamp is older
    #   than the current trim horizon, records will be streamed from the
    #   oldest untrimmed data record (`TRIM_HORIZON`).
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesis-2013-12-02/StartingPosition AWS API Documentation
    #
    class StartingPosition < Struct.new(
      :type,
      :sequence_number,
      :timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass StopStreamEncryptionInput
    #   data as a hash:
    #
    #       {
    #         stream_name: "StreamName", # required
    #         encryption_type: "NONE", # required, accepts NONE, KMS
    #         key_id: "KeyId", # required
    #       }
    #
    # @!attribute [rw] stream_name
    #   The name of the stream on which to stop encrypting records.
    #   @return [String]
    #
    # @!attribute [rw] encryption_type
    #   The encryption type. The only valid value is `KMS`.
    #   @return [String]
    #
    # @!attribute [rw] key_id
    #   The GUID for the customer-managed AWS KMS key to use for encryption.
    #   This value can be a globally unique identifier, a fully specified
    #   Amazon Resource Name (ARN) to either an alias or a key, or an alias
    #   name prefixed by "alias/".You can also use a master key owned by
    #   Kinesis Data Streams by specifying the alias `aws/kinesis`.
    #
    #   * Key ARN example:
    #     `arn:aws:kms:us-east-1:123456789012:key/12345678-1234-1234-1234-123456789012`
    #
    #   * Alias ARN example:
    #     `arn:aws:kms:us-east-1:123456789012:alias/MyAliasName`
    #
    #   * Globally unique key ID example:
    #     `12345678-1234-1234-1234-123456789012`
    #
    #   * Alias name example: `alias/MyAliasName`
    #
    #   * Master key owned by Kinesis Data Streams: `alias/aws/kinesis`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesis-2013-12-02/StopStreamEncryptionInput AWS API Documentation
    #
    class StopStreamEncryptionInput < Struct.new(
      :stream_name,
      :encryption_type,
      :key_id)
      SENSITIVE = []
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
    #   * `CREATING` - The stream is being created. Kinesis Data Streams
    #     immediately returns and sets `StreamStatus` to `CREATING`.
    #
    #   * `DELETING` - The stream is being deleted. The specified stream is
    #     in the `DELETING` state until Kinesis Data Streams completes the
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
    #   The current retention period, in hours. Minimum value of 24. Maximum
    #   value of 168.
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
    # @!attribute [rw] encryption_type
    #   The server-side encryption type used on the stream. This parameter
    #   can be one of the following values:
    #
    #   * `NONE`\: Do not encrypt the records in the stream.
    #
    #   * `KMS`\: Use server-side encryption on the records in the stream
    #     using a customer-managed AWS KMS key.
    #   @return [String]
    #
    # @!attribute [rw] key_id
    #   The GUID for the customer-managed AWS KMS key to use for encryption.
    #   This value can be a globally unique identifier, a fully specified
    #   ARN to either an alias or a key, or an alias name prefixed by
    #   "alias/".You can also use a master key owned by Kinesis Data
    #   Streams by specifying the alias `aws/kinesis`.
    #
    #   * Key ARN example:
    #     `arn:aws:kms:us-east-1:123456789012:key/12345678-1234-1234-1234-123456789012`
    #
    #   * Alias ARN example:
    #     `arn:aws:kms:us-east-1:123456789012:alias/MyAliasName`
    #
    #   * Globally unique key ID example:
    #     `12345678-1234-1234-1234-123456789012`
    #
    #   * Alias name example: `alias/MyAliasName`
    #
    #   * Master key owned by Kinesis Data Streams: `alias/aws/kinesis`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesis-2013-12-02/StreamDescription AWS API Documentation
    #
    class StreamDescription < Struct.new(
      :stream_name,
      :stream_arn,
      :stream_status,
      :shards,
      :has_more_shards,
      :retention_period_hours,
      :stream_creation_timestamp,
      :enhanced_monitoring,
      :encryption_type,
      :key_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the output for DescribeStreamSummary
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
    #   * `CREATING` - The stream is being created. Kinesis Data Streams
    #     immediately returns and sets `StreamStatus` to `CREATING`.
    #
    #   * `DELETING` - The stream is being deleted. The specified stream is
    #     in the `DELETING` state until Kinesis Data Streams completes the
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
    # @!attribute [rw] encryption_type
    #   The encryption type used. This value is one of the following:
    #
    #   * `KMS`
    #
    #   * `NONE`
    #   @return [String]
    #
    # @!attribute [rw] key_id
    #   The GUID for the customer-managed AWS KMS key to use for encryption.
    #   This value can be a globally unique identifier, a fully specified
    #   ARN to either an alias or a key, or an alias name prefixed by
    #   "alias/".You can also use a master key owned by Kinesis Data
    #   Streams by specifying the alias `aws/kinesis`.
    #
    #   * Key ARN example:
    #     `arn:aws:kms:us-east-1:123456789012:key/12345678-1234-1234-1234-123456789012`
    #
    #   * Alias ARN example: `
    #     arn:aws:kms:us-east-1:123456789012:alias/MyAliasName`
    #
    #   * Globally unique key ID example:
    #     `12345678-1234-1234-1234-123456789012`
    #
    #   * Alias name example: `alias/MyAliasName`
    #
    #   * Master key owned by Kinesis Data Streams: `alias/aws/kinesis`
    #   @return [String]
    #
    # @!attribute [rw] open_shard_count
    #   The number of open shards in the stream.
    #   @return [Integer]
    #
    # @!attribute [rw] consumer_count
    #   The number of enhanced fan-out consumers registered with the stream.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesis-2013-12-02/StreamDescriptionSummary AWS API Documentation
    #
    class StreamDescriptionSummary < Struct.new(
      :stream_name,
      :stream_arn,
      :stream_status,
      :retention_period_hours,
      :stream_creation_timestamp,
      :enhanced_monitoring,
      :encryption_type,
      :key_id,
      :open_shard_count,
      :consumer_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # After you call SubscribeToShard, Kinesis Data Streams sends events of
    # this type over an HTTP/2 connection to your consumer.
    #
    # @!attribute [rw] records
    #   @return [Array<Types::Record>]
    #
    # @!attribute [rw] continuation_sequence_number
    #   Use this as `SequenceNumber` in the next call to SubscribeToShard,
    #   with `StartingPosition` set to `AT_SEQUENCE_NUMBER` or
    #   `AFTER_SEQUENCE_NUMBER`. Use `ContinuationSequenceNumber` for
    #   checkpointing because it captures your shard progress even when no
    #   data is written to the shard.
    #   @return [String]
    #
    # @!attribute [rw] millis_behind_latest
    #   The number of milliseconds the read records are from the tip of the
    #   stream, indicating how far behind current time the consumer is. A
    #   value of zero indicates that record processing is caught up, and
    #   there are no new records to process at this moment.
    #   @return [Integer]
    #
    # @!attribute [rw] child_shards
    #   @return [Array<Types::ChildShard>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesis-2013-12-02/SubscribeToShardEvent AWS API Documentation
    #
    class SubscribeToShardEvent < Struct.new(
      :records,
      :continuation_sequence_number,
      :millis_behind_latest,
      :child_shards,
      :event_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass SubscribeToShardInput
    #   data as a hash:
    #
    #       {
    #         consumer_arn: "ConsumerARN", # required
    #         shard_id: "ShardId", # required
    #         starting_position: { # required
    #           type: "AT_SEQUENCE_NUMBER", # required, accepts AT_SEQUENCE_NUMBER, AFTER_SEQUENCE_NUMBER, TRIM_HORIZON, LATEST, AT_TIMESTAMP
    #           sequence_number: "SequenceNumber",
    #           timestamp: Time.now,
    #         },
    #       }
    #
    # @!attribute [rw] consumer_arn
    #   For this parameter, use the value you obtained when you called
    #   RegisterStreamConsumer.
    #   @return [String]
    #
    # @!attribute [rw] shard_id
    #   The ID of the shard you want to subscribe to. To see a list of all
    #   the shards for a given stream, use ListShards.
    #   @return [String]
    #
    # @!attribute [rw] starting_position
    #   @return [Types::StartingPosition]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesis-2013-12-02/SubscribeToShardInput AWS API Documentation
    #
    class SubscribeToShardInput < Struct.new(
      :consumer_arn,
      :shard_id,
      :starting_position)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] event_stream
    #   The event stream that your consumer can use to read records from the
    #   shard.
    #   @return [Types::SubscribeToShardEventStream]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesis-2013-12-02/SubscribeToShardOutput AWS API Documentation
    #
    class SubscribeToShardOutput < Struct.new(
      :event_stream)
      SENSITIVE = []
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesis-2013-12-02/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
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
    #   The new number of shards. This value has the following default
    #   limits. By default, you cannot do the following:
    #
    #   * Set this value to more than double your current shard count for a
    #     stream.
    #
    #   * Set this value below half your current shard count for a stream.
    #
    #   * Set this value to more than 500 shards in a stream (the default
    #     limit for shard count per stream is 500 per account per region),
    #     unless you request a limit increase.
    #
    #   * Scale a stream with more than 500 shards down unless you set this
    #     value to less than 500 shards.
    #   @return [Integer]
    #
    # @!attribute [rw] scaling_type
    #   The scaling type. Uniform scaling creates shards of equal size.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesis-2013-12-02/UpdateShardCountInput AWS API Documentation
    #
    class UpdateShardCountInput < Struct.new(
      :stream_name,
      :target_shard_count,
      :scaling_type)
      SENSITIVE = []
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesis-2013-12-02/UpdateShardCountOutput AWS API Documentation
    #
    class UpdateShardCountOutput < Struct.new(
      :stream_name,
      :current_shard_count,
      :target_shard_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # This is a tagged union for all of the types of events an enhanced
    # fan-out consumer can receive over HTTP/2 after a call to
    # SubscribeToShard.
    #
    # EventStream is an Enumerator of Events.
    #  #event_types #=> Array, returns all modeled event types in the stream
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesis-2013-12-02/SubscribeToShardEventStream AWS API Documentation
    #
    class SubscribeToShardEventStream < Enumerator

      def event_types
        [
          :subscribe_to_shard_event,
          :resource_not_found_exception,
          :resource_in_use_exception,
          :kms_disabled_exception,
          :kms_invalid_state_exception,
          :kms_access_denied_exception,
          :kms_not_found_exception,
          :kms_opt_in_required,
          :kms_throttling_exception,
          :internal_failure_exception
        ]
      end

    end

  end
end
