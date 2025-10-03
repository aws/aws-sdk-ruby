# frozen_string_literal: true

# This is generated code!

module Aws::Kinesis
  # This module contains the types returned by client operations.
  module Types

    # <p>Specifies that you do not have the permissions required to perform this
    #             operation.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input for <code>AddTagsToStream</code>.</p>
    # @!attribute stream_name
    #   <p>The name of the stream.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A set of up to 50 key-value pairs to use to create the tags. A tag consists of a required key and an optional value. You can add up to 50 tags per resource.</p>
    #   @return [Hash<String, String>]
    # @!attribute stream_arn
    #   <p>The ARN of the stream.</p>
    #   @return [String]
    class AddTagsToStreamInput < Struct.new(
      :stream_name,
      :tags,
      :stream_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Output parameter of the GetRecords API. The existing child shard of the current
    #             shard.</p>
    # @!attribute shard_id
    #   <p>The shard ID of the existing child shard of the current shard.</p>
    #   @return [String]
    # @!attribute parent_shards
    #   <p>The current shard that is the parent of the existing child shard.</p>
    #   @return [Array<String>]
    # @!attribute hash_key_range
    #   <p>The range of possible hash key values for the shard, which is a set of ordered
    #               contiguous positive integers.</p>
    #   @return [Types::HashKeyRange]
    class ChildShard < Struct.new(
      :shard_id,
      :parent_shards,
      :hash_key_range,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object that represents the details of the consumer you registered. This type of
    #             object is returned by <a>RegisterStreamConsumer</a>.</p>
    # @!attribute consumer_name
    #   <p>The name of the consumer is something you choose when you register the
    #               consumer.</p>
    #   @return [String]
    # @!attribute consumer_arn
    #   <p>When you register a consumer, Kinesis Data Streams generates an ARN for it. You need
    #               this ARN to be able to call <a>SubscribeToShard</a>.</p>
    #            <p>If you delete a consumer and then create a new one with the same name, it won't have
    #               the same ARN. That's because consumer ARNs contain the creation timestamp. This is
    #               important to keep in mind if you have IAM policies that reference consumer ARNs.</p>
    #   @return [String]
    # @!attribute consumer_status
    #   <p>A consumer can't read data while in the <code>CREATING</code> or <code>DELETING</code>
    #               states.</p>
    #   @return [String]
    # @!attribute consumer_creation_timestamp
    #   <p></p>
    #   @return [Time]
    class Consumer < Struct.new(
      :consumer_name,
      :consumer_arn,
      :consumer_status,
      :consumer_creation_timestamp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object that represents the details of a registered consumer. This type of object is
    #             returned by <a>DescribeStreamConsumer</a>.</p>
    # @!attribute consumer_name
    #   <p>The name of the consumer is something you choose when you register the
    #               consumer.</p>
    #   @return [String]
    # @!attribute consumer_arn
    #   <p>When you register a consumer, Kinesis Data Streams generates an ARN for it. You need
    #               this ARN to be able to call <a>SubscribeToShard</a>.</p>
    #            <p>If you delete a consumer and then create a new one with the same name, it won't have
    #               the same ARN. That's because consumer ARNs contain the creation timestamp. This is
    #               important to keep in mind if you have IAM policies that reference consumer ARNs.</p>
    #   @return [String]
    # @!attribute consumer_status
    #   <p>A consumer can't read data while in the <code>CREATING</code> or <code>DELETING</code>
    #               states.</p>
    #   @return [String]
    # @!attribute consumer_creation_timestamp
    #   <p></p>
    #   @return [Time]
    # @!attribute stream_arn
    #   <p>The ARN of the stream with which you registered the consumer.</p>
    #   @return [String]
    class ConsumerDescription < Struct.new(
      :consumer_name,
      :consumer_arn,
      :consumer_status,
      :consumer_creation_timestamp,
      :stream_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input for <code>CreateStream</code>.</p>
    # @!attribute stream_name
    #   <p>A name to identify the stream. The stream name is scoped to the Amazon Web Services
    #               account used by the application that creates the stream. It is also scoped by Amazon Web Services Region. That is, two streams in two different Amazon Web Services accounts
    #               can have the same name. Two streams in the same Amazon Web Services account but in two
    #               different Regions can also have the same name.</p>
    #   @return [String]
    # @!attribute shard_count
    #   <p>The number of shards that the stream will use. The throughput of the stream is a
    #               function of the number of shards; more shards are required for greater provisioned
    #               throughput.</p>
    #   @return [Integer]
    # @!attribute stream_mode_details
    #   <p> Indicates the capacity mode of the data stream. Currently, in Kinesis Data Streams,
    #               you can choose between an <b>on-demand</b> capacity mode and a
    #                   <b>provisioned</b> capacity mode for your data
    #               streams.</p>
    #   @return [Types::StreamModeDetails]
    # @!attribute tags
    #   <p>A set of up to 50 key-value pairs to use to create the tags. A tag consists of a required key and an optional value.</p>
    #   @return [Hash<String, String>]
    class CreateStreamInput < Struct.new(
      :stream_name,
      :shard_count,
      :stream_mode_details,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input for <a>DecreaseStreamRetentionPeriod</a>.</p>
    # @!attribute stream_name
    #   <p>The name of the stream to modify.</p>
    #   @return [String]
    # @!attribute retention_period_hours
    #   <p>The new retention period of the stream, in hours. Must be less than the current
    #               retention period.</p>
    #   @return [Integer]
    # @!attribute stream_arn
    #   <p>The ARN of the stream.</p>
    #   @return [String]
    class DecreaseStreamRetentionPeriodInput < Struct.new(
      :stream_name,
      :retention_period_hours,
      :stream_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the data stream or consumer.</p>
    #   @return [String]
    class DeleteResourcePolicyInput < Struct.new(
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input for <a>DeleteStream</a>.</p>
    # @!attribute stream_name
    #   <p>The name of the stream to delete.</p>
    #   @return [String]
    # @!attribute enforce_consumer_deletion
    #   <p>If this parameter is unset (<code>null</code>) or if you set it to <code>false</code>,
    #               and the stream has registered consumers, the call to <code>DeleteStream</code> fails
    #               with a <code>ResourceInUseException</code>. </p>
    #   @return [Boolean]
    # @!attribute stream_arn
    #   <p>The ARN of the stream.</p>
    #   @return [String]
    class DeleteStreamInput < Struct.new(
      :stream_name,
      :enforce_consumer_deletion,
      :stream_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute stream_arn
    #   <p>The ARN of the Kinesis data stream that the consumer is registered with. For more
    #               information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-kinesis-streams">Amazon Resource Names (ARNs) and Amazon Web Services Service
    #               Namespaces</a>.</p>
    #   @return [String]
    # @!attribute consumer_name
    #   <p>The name that you gave to the consumer.</p>
    #   @return [String]
    # @!attribute consumer_arn
    #   <p>The ARN returned by Kinesis Data Streams when you registered the consumer. If you
    #               don't know the ARN of the consumer that you want to deregister, you can use the
    #               ListStreamConsumers operation to get a list of the descriptions of all the consumers
    #               that are currently registered with a given data stream. The description of a consumer
    #               contains its ARN.</p>
    #   @return [String]
    class DeregisterStreamConsumerInput < Struct.new(
      :stream_arn,
      :consumer_name,
      :consumer_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DescribeLimitsInput < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute shard_limit
    #   <p>The maximum number of shards.</p>
    #   @return [Integer]
    # @!attribute open_shard_count
    #   <p>The number of open shards.</p>
    #   @return [Integer]
    # @!attribute on_demand_stream_count
    #   <p> Indicates the number of data streams with the on-demand capacity mode.</p>
    #   @return [Integer]
    # @!attribute on_demand_stream_count_limit
    #   <p> The maximum number of data streams with the on-demand capacity mode. </p>
    #   @return [Integer]
    class DescribeLimitsOutput < Struct.new(
      :shard_limit,
      :open_shard_count,
      :on_demand_stream_count,
      :on_demand_stream_count_limit,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute stream_arn
    #   <p>The ARN of the Kinesis data stream that the consumer is registered with. For more
    #               information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-kinesis-streams">Amazon Resource Names (ARNs) and Amazon Web Services Service
    #               Namespaces</a>.</p>
    #   @return [String]
    # @!attribute consumer_name
    #   <p>The name that you gave to the consumer.</p>
    #   @return [String]
    # @!attribute consumer_arn
    #   <p>The ARN returned by Kinesis Data Streams when you registered the consumer.</p>
    #   @return [String]
    class DescribeStreamConsumerInput < Struct.new(
      :stream_arn,
      :consumer_name,
      :consumer_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute consumer_description
    #   <p>An object that represents the details of the consumer.</p>
    #   @return [Types::ConsumerDescription]
    class DescribeStreamConsumerOutput < Struct.new(
      :consumer_description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input for <code>DescribeStream</code>.</p>
    # @!attribute stream_name
    #   <p>The name of the stream to describe.</p>
    #   @return [String]
    # @!attribute limit
    #   <p>The maximum number of shards to return in a single call. The default value is 100. If
    #               you specify a value greater than 100, at most 100 results are returned.</p>
    #   @return [Integer]
    # @!attribute exclusive_start_shard_id
    #   <p>The shard ID of the shard to start with.</p>
    #            <p>Specify this parameter to indicate that you want to describe the stream starting with
    #               the shard whose ID immediately follows <code>ExclusiveStartShardId</code>.</p>
    #            <p>If you don't specify this parameter, the default behavior for
    #                   <code>DescribeStream</code> is to describe the stream starting with the first shard
    #               in the stream.</p>
    #   @return [String]
    # @!attribute stream_arn
    #   <p>The ARN of the stream.</p>
    #   @return [String]
    class DescribeStreamInput < Struct.new(
      :stream_name,
      :limit,
      :exclusive_start_shard_id,
      :stream_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output for <code>DescribeStream</code>.</p>
    # @!attribute stream_description
    #   <p>The current status of the stream, the stream Amazon Resource Name (ARN), an array of
    #               shard objects that comprise the stream, and whether there are more shards
    #               available.</p>
    #   @return [Types::StreamDescription]
    class DescribeStreamOutput < Struct.new(
      :stream_description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute stream_name
    #   <p>The name of the stream to describe.</p>
    #   @return [String]
    # @!attribute stream_arn
    #   <p>The ARN of the stream.</p>
    #   @return [String]
    class DescribeStreamSummaryInput < Struct.new(
      :stream_name,
      :stream_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute stream_description_summary
    #   <p>A <a>StreamDescriptionSummary</a> containing information about the
    #               stream.</p>
    #   @return [Types::StreamDescriptionSummary]
    class DescribeStreamSummaryOutput < Struct.new(
      :stream_description_summary,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input for <a>DisableEnhancedMonitoring</a>.</p>
    # @!attribute stream_name
    #   <p>The name of the Kinesis data stream for which to disable enhanced monitoring.</p>
    #   @return [String]
    # @!attribute shard_level_metrics
    #   <p>List of shard-level metrics to disable.</p>
    #            <p>The following are the valid shard-level metrics. The value "<code>ALL</code>" disables
    #               every metric.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>IncomingBytes</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IncomingRecords</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OutgoingBytes</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OutgoingRecords</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>WriteProvisionedThroughputExceeded</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ReadProvisionedThroughputExceeded</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IteratorAgeMilliseconds</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ALL</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/kinesis/latest/dev/monitoring-with-cloudwatch.html">Monitoring the Amazon
    #                   Kinesis Data Streams Service with Amazon CloudWatch</a> in the <i>Amazon
    #                   Kinesis Data Streams Developer Guide</i>.</p>
    #   @return [Array<String>]
    # @!attribute stream_arn
    #   <p>The ARN of the stream.</p>
    #   @return [String]
    class DisableEnhancedMonitoringInput < Struct.new(
      :stream_name,
      :shard_level_metrics,
      :stream_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output for <a>EnableEnhancedMonitoring</a> and <a>DisableEnhancedMonitoring</a>.</p>
    # @!attribute stream_name
    #   <p>The name of the Kinesis data stream.</p>
    #   @return [String]
    # @!attribute current_shard_level_metrics
    #   <p>Represents the current state of the metrics that are in the enhanced state before the
    #               operation.</p>
    #   @return [Array<String>]
    # @!attribute desired_shard_level_metrics
    #   <p>Represents the list of all the metrics that would be in the enhanced state after the
    #               operation.</p>
    #   @return [Array<String>]
    # @!attribute stream_arn
    #   <p>The ARN of the stream.</p>
    #   @return [String]
    class DisableEnhancedMonitoringOutput < Struct.new(
      :stream_name,
      :current_shard_level_metrics,
      :desired_shard_level_metrics,
      :stream_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input for <a>EnableEnhancedMonitoring</a>.</p>
    # @!attribute stream_name
    #   <p>The name of the stream for which to enable enhanced monitoring.</p>
    #   @return [String]
    # @!attribute shard_level_metrics
    #   <p>List of shard-level metrics to enable.</p>
    #            <p>The following are the valid shard-level metrics. The value "<code>ALL</code>" enables
    #               every metric.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>IncomingBytes</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IncomingRecords</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OutgoingBytes</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OutgoingRecords</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>WriteProvisionedThroughputExceeded</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ReadProvisionedThroughputExceeded</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IteratorAgeMilliseconds</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ALL</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/kinesis/latest/dev/monitoring-with-cloudwatch.html">Monitoring the Amazon
    #                   Kinesis Data Streams Service with Amazon CloudWatch</a> in the <i>Amazon
    #                   Kinesis Data Streams Developer Guide</i>.</p>
    #   @return [Array<String>]
    # @!attribute stream_arn
    #   <p>The ARN of the stream.</p>
    #   @return [String]
    class EnableEnhancedMonitoringInput < Struct.new(
      :stream_name,
      :shard_level_metrics,
      :stream_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output for <a>EnableEnhancedMonitoring</a> and <a>DisableEnhancedMonitoring</a>.</p>
    # @!attribute stream_name
    #   <p>The name of the Kinesis data stream.</p>
    #   @return [String]
    # @!attribute current_shard_level_metrics
    #   <p>Represents the current state of the metrics that are in the enhanced state before the
    #               operation.</p>
    #   @return [Array<String>]
    # @!attribute desired_shard_level_metrics
    #   <p>Represents the list of all the metrics that would be in the enhanced state after the
    #               operation.</p>
    #   @return [Array<String>]
    # @!attribute stream_arn
    #   <p>The ARN of the stream.</p>
    #   @return [String]
    class EnableEnhancedMonitoringOutput < Struct.new(
      :stream_name,
      :current_shard_level_metrics,
      :desired_shard_level_metrics,
      :stream_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents enhanced metrics types.</p>
    # @!attribute shard_level_metrics
    #   <p>List of shard-level metrics.</p>
    #            <p>The following are the valid shard-level metrics. The value "<code>ALL</code>" enhances
    #               every metric.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>IncomingBytes</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IncomingRecords</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OutgoingBytes</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OutgoingRecords</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>WriteProvisionedThroughputExceeded</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ReadProvisionedThroughputExceeded</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IteratorAgeMilliseconds</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ALL</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/kinesis/latest/dev/monitoring-with-cloudwatch.html">Monitoring the Amazon
    #                   Kinesis Data Streams Service with Amazon CloudWatch</a> in the <i>Amazon
    #                   Kinesis Data Streams Developer Guide</i>.</p>
    #   @return [Array<String>]
    class EnhancedMetrics < Struct.new(
      :shard_level_metrics,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The provided iterator exceeds the maximum age allowed.</p>
    # @!attribute message
    #   <p>A message that provides information about the error.</p>
    #   @return [String]
    class ExpiredIteratorException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The pagination token passed to the operation is expired.</p>
    # @!attribute message
    #   @return [String]
    class ExpiredNextTokenException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input for <a>GetRecords</a>.</p>
    # @!attribute shard_iterator
    #   <p>The position in the shard from which you want to start sequentially reading data
    #               records. A shard iterator specifies this position using the sequence number of a data
    #               record in the shard.</p>
    #   @return [String]
    # @!attribute limit
    #   <p>The maximum number of records to return. Specify a value of up to 10,000. If you
    #               specify a value that is greater than 10,000, <a>GetRecords</a> throws
    #                   <code>InvalidArgumentException</code>. The default value is 10,000.</p>
    #   @return [Integer]
    # @!attribute stream_arn
    #   <p>The ARN of the stream.</p>
    #   @return [String]
    class GetRecordsInput < Struct.new(
      :shard_iterator,
      :limit,
      :stream_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output for <a>GetRecords</a>.</p>
    # @!attribute records
    #   <p>The data records retrieved from the shard.</p>
    #   @return [Array<Types::Record>]
    # @!attribute next_shard_iterator
    #   <p>The next position in the shard from which to start sequentially reading data records.
    #               If set to <code>null</code>, the shard has been closed and the requested iterator does
    #               not return any more data. </p>
    #   @return [String]
    # @!attribute millis_behind_latest
    #   <p>The number of milliseconds the <a>GetRecords</a> response is from the tip
    #               of the stream, indicating how far behind current time the consumer is. A value of zero
    #               indicates that record processing is caught up, and there are no new records to process
    #               at this moment.</p>
    #   @return [Integer]
    # @!attribute child_shards
    #   <p>The list of the current shard's child shards, returned in the <code>GetRecords</code>
    #               API's response only when the end of the current shard is reached.</p>
    #   @return [Array<Types::ChildShard>]
    class GetRecordsOutput < Struct.new(
      :records,
      :next_shard_iterator,
      :millis_behind_latest,
      :child_shards,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the data stream or consumer.</p>
    #   @return [String]
    class GetResourcePolicyInput < Struct.new(
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy
    #   <p>Details of the resource policy. This is formatted as a JSON string.</p>
    #   @return [String]
    class GetResourcePolicyOutput < Struct.new(
      :policy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input for <code>GetShardIterator</code>.</p>
    # @!attribute stream_name
    #   <p>The name of the Amazon Kinesis data stream.</p>
    #   @return [String]
    # @!attribute shard_id
    #   <p>The shard ID of the Kinesis Data Streams shard to get the iterator for.</p>
    #   @return [String]
    # @!attribute shard_iterator_type
    #   <p>Determines how the shard iterator is used to start reading data records from the
    #               shard.</p>
    #            <p>The following are the valid Amazon Kinesis shard iterator types:</p>
    #            <ul>
    #               <li>
    #                  <p>AT_SEQUENCE_NUMBER - Start reading from the position denoted by a specific
    #                       sequence number, provided in the value
    #                       <code>StartingSequenceNumber</code>.</p>
    #               </li>
    #               <li>
    #                  <p>AFTER_SEQUENCE_NUMBER - Start reading right after the position denoted by a
    #                       specific sequence number, provided in the value
    #                           <code>StartingSequenceNumber</code>.</p>
    #               </li>
    #               <li>
    #                  <p>AT_TIMESTAMP - Start reading from the position denoted by a specific time
    #                       stamp, provided in the value <code>Timestamp</code>.</p>
    #               </li>
    #               <li>
    #                  <p>TRIM_HORIZON - Start reading at the last untrimmed record in the shard in the
    #                       system, which is the oldest data record in the shard.</p>
    #               </li>
    #               <li>
    #                  <p>LATEST - Start reading just after the most recent record in the shard, so that
    #                       you always read the most recent data in the shard.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute starting_sequence_number
    #   <p>The sequence number of the data record in the shard from which to start reading. Used
    #               with shard iterator type AT_SEQUENCE_NUMBER and AFTER_SEQUENCE_NUMBER.</p>
    #   @return [String]
    # @!attribute timestamp
    #   <p>The time stamp of the data record from which to start reading. Used with shard
    #               iterator type AT_TIMESTAMP. A time stamp is the Unix epoch date with precision in
    #               milliseconds. For example, <code>2016-04-04T19:58:46.480-00:00</code> or
    #                   <code>1459799926.480</code>. If a record with this exact time stamp does not exist,
    #               the iterator returned is for the next (later) record. If the time stamp is older than
    #               the current trim horizon, the iterator returned is for the oldest untrimmed data record
    #               (TRIM_HORIZON).</p>
    #   @return [Time]
    # @!attribute stream_arn
    #   <p>The ARN of the stream.</p>
    #   @return [String]
    class GetShardIteratorInput < Struct.new(
      :stream_name,
      :shard_id,
      :shard_iterator_type,
      :starting_sequence_number,
      :timestamp,
      :stream_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output for <code>GetShardIterator</code>.</p>
    # @!attribute shard_iterator
    #   <p>The position in the shard from which to start reading data records sequentially. A
    #               shard iterator specifies this position using the sequence number of a data record in a
    #               shard.</p>
    #   @return [String]
    class GetShardIteratorOutput < Struct.new(
      :shard_iterator,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The range of possible hash key values for the shard, which is a set of ordered
    #             contiguous positive integers.</p>
    # @!attribute starting_hash_key
    #   <p>The starting hash key of the hash key range.</p>
    #   @return [String]
    # @!attribute ending_hash_key
    #   <p>The ending hash key of the hash key range.</p>
    #   @return [String]
    class HashKeyRange < Struct.new(
      :starting_hash_key,
      :ending_hash_key,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input for <a>IncreaseStreamRetentionPeriod</a>.</p>
    # @!attribute stream_name
    #   <p>The name of the stream to modify.</p>
    #   @return [String]
    # @!attribute retention_period_hours
    #   <p>The new retention period of the stream, in hours. Must be more than the current
    #               retention period.</p>
    #   @return [Integer]
    # @!attribute stream_arn
    #   <p>The ARN of the stream.</p>
    #   @return [String]
    class IncreaseStreamRetentionPeriodInput < Struct.new(
      :stream_name,
      :retention_period_hours,
      :stream_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The processing of the request failed because of an unknown error, exception, or
    #             failure.</p>
    # @!attribute message
    #   @return [String]
    class InternalFailureException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A specified parameter exceeds its restrictions, is not supported, or can't be used.
    #             For more information, see the returned message.</p>
    # @!attribute message
    #   <p>A message that provides information about the error.</p>
    #   @return [String]
    class InvalidArgumentException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The ciphertext references a key that doesn't exist or that you don't have access
    #             to.</p>
    # @!attribute message
    #   <p>A message that provides information about the error.</p>
    #   @return [String]
    class KMSAccessDeniedException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request was rejected because the specified customer master key (CMK) isn't
    #             enabled.</p>
    # @!attribute message
    #   <p>A message that provides information about the error.</p>
    #   @return [String]
    class KMSDisabledException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request was rejected because the state of the specified resource isn't valid for
    #             this request. For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">How Key State Affects Use of a
    #                 Customer Master Key</a> in the <i>Amazon Web Services Key Management
    #                 Service Developer Guide</i>.</p>
    # @!attribute message
    #   <p>A message that provides information about the error.</p>
    #   @return [String]
    class KMSInvalidStateException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request was rejected because the specified entity or resource can't be
    #             found.</p>
    # @!attribute message
    #   <p>A message that provides information about the error.</p>
    #   @return [String]
    class KMSNotFoundException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The Amazon Web Services access key ID needs a subscription for the service.</p>
    # @!attribute message
    #   <p>A message that provides information about the error.</p>
    #   @return [String]
    class KMSOptInRequired < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request was denied due to request throttling. For more information about
    #             throttling, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/limits.html#requests-per-second">Limits</a> in
    #             the <i>Amazon Web Services Key Management Service Developer
    #             Guide</i>.</p>
    # @!attribute message
    #   <p>A message that provides information about the error.</p>
    #   @return [String]
    class KMSThrottlingException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The requested resource exceeds the maximum number allowed, or the number of concurrent
    #             stream requests exceeds the maximum number allowed. </p>
    # @!attribute message
    #   <p>A message that provides information about the error.</p>
    #   @return [String]
    class LimitExceededException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute stream_name
    #   <p>The name of the data stream whose shards you want to list. </p>
    #            <p>You cannot specify this parameter if you specify the <code>NextToken</code>
    #               parameter.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>When the number of shards in the data stream is greater than the default value for the
    #                   <code>MaxResults</code> parameter, or if you explicitly specify a value for
    #                   <code>MaxResults</code> that is less than the number of shards in the data stream,
    #               the response includes a pagination token named <code>NextToken</code>. You can specify
    #               this <code>NextToken</code> value in a subsequent call to <code>ListShards</code> to
    #               list the next set of shards.</p>
    #            <p>Don't specify <code>StreamName</code> or <code>StreamCreationTimestamp</code> if you
    #               specify <code>NextToken</code> because the latter unambiguously identifies the
    #               stream.</p>
    #            <p>You can optionally specify a value for the <code>MaxResults</code> parameter when you
    #               specify <code>NextToken</code>. If you specify a <code>MaxResults</code> value that is
    #               less than the number of shards that the operation returns if you don't specify
    #                   <code>MaxResults</code>, the response will contain a new <code>NextToken</code>
    #               value. You can use the new <code>NextToken</code> value in a subsequent call to the
    #                   <code>ListShards</code> operation.</p>
    #            <important>
    #               <p>Tokens expire after 300 seconds. When you obtain a value for
    #                       <code>NextToken</code> in the response to a call to <code>ListShards</code>, you
    #                   have 300 seconds to use that value. If you specify an expired token in a call to
    #                       <code>ListShards</code>, you get <code>ExpiredNextTokenException</code>.</p>
    #            </important>
    #   @return [String]
    # @!attribute exclusive_start_shard_id
    #   <p>Specify this parameter to indicate that you want to list the shards starting with the
    #               shard whose ID immediately follows <code>ExclusiveStartShardId</code>.</p>
    #            <p>If you don't specify this parameter, the default behavior is for
    #                   <code>ListShards</code> to list the shards starting with the first one in the
    #               stream.</p>
    #            <p>You cannot specify this parameter if you specify <code>NextToken</code>.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of shards to return in a single call to <code>ListShards</code>.
    #               The maximum number of shards to return in a single call. The default value is 1000. If
    #               you specify a value greater than 1000, at most 1000 results are returned. </p>
    #            <p>When the number of shards to be listed is greater than the value of
    #                   <code>MaxResults</code>, the response contains a <code>NextToken</code> value that
    #               you can use in a subsequent call to <code>ListShards</code> to list the next set of
    #               shards.</p>
    #   @return [Integer]
    # @!attribute stream_creation_timestamp
    #   <p>Specify this input parameter to distinguish data streams that have the same name. For
    #               example, if you create a data stream and then delete it, and you later create another
    #               data stream with the same name, you can use this input parameter to specify which of the
    #               two streams you want to list the shards for.</p>
    #            <p>You cannot specify this parameter if you specify the <code>NextToken</code>
    #               parameter.</p>
    #   @return [Time]
    # @!attribute shard_filter
    #   <p>Enables you to filter out the response of the <code>ListShards</code> API. You can
    #               only specify one filter at a time. </p>
    #            <p>If you use the <code>ShardFilter</code> parameter when invoking the ListShards API,
    #               the <code>Type</code> is the required property and must be specified. If you specify the
    #                   <code>AT_TRIM_HORIZON</code>, <code>FROM_TRIM_HORIZON</code>, or
    #                   <code>AT_LATEST</code> types, you do not need to specify either the
    #                   <code>ShardId</code> or the <code>Timestamp</code> optional properties. </p>
    #            <p>If you specify the <code>AFTER_SHARD_ID</code> type, you must also provide the value
    #               for the optional <code>ShardId</code> property. The <code>ShardId</code> property is
    #               identical in fuctionality to the <code>ExclusiveStartShardId</code> parameter of the
    #                   <code>ListShards</code> API. When <code>ShardId</code> property is specified, the
    #               response includes the shards starting with the shard whose ID immediately follows the
    #                   <code>ShardId</code> that you provided. </p>
    #            <p>If you specify the <code>AT_TIMESTAMP</code> or <code>FROM_TIMESTAMP_ID</code> type,
    #               you must also provide the value for the optional <code>Timestamp</code> property. If you
    #               specify the AT_TIMESTAMP type, then all shards that were open at the provided timestamp
    #               are returned. If you specify the FROM_TIMESTAMP type, then all shards starting from the
    #               provided timestamp to TIP are returned. </p>
    #   @return [Types::ShardFilter]
    # @!attribute stream_arn
    #   <p>The ARN of the stream.</p>
    #   @return [String]
    class ListShardsInput < Struct.new(
      :stream_name,
      :next_token,
      :exclusive_start_shard_id,
      :max_results,
      :stream_creation_timestamp,
      :shard_filter,
      :stream_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute shards
    #   <p>An array of JSON objects. Each object represents one shard and specifies the IDs of
    #               the shard, the shard's parent, and the shard that's adjacent to the shard's parent. Each
    #               object also contains the starting and ending hash keys and the starting and ending
    #               sequence numbers for the shard.</p>
    #   @return [Array<Types::Shard>]
    # @!attribute next_token
    #   <p>When the number of shards in the data stream is greater than the default value for the
    #                   <code>MaxResults</code> parameter, or if you explicitly specify a value for
    #                   <code>MaxResults</code> that is less than the number of shards in the data stream,
    #               the response includes a pagination token named <code>NextToken</code>. You can specify
    #               this <code>NextToken</code> value in a subsequent call to <code>ListShards</code> to
    #               list the next set of shards. For more information about the use of this pagination token
    #               when calling the <code>ListShards</code> operation, see <a>ListShardsInput$NextToken</a>.</p>
    #            <important>
    #               <p>Tokens expire after 300 seconds. When you obtain a value for
    #                       <code>NextToken</code> in the response to a call to <code>ListShards</code>, you
    #                   have 300 seconds to use that value. If you specify an expired token in a call to
    #                       <code>ListShards</code>, you get <code>ExpiredNextTokenException</code>.</p>
    #            </important>
    #   @return [String]
    class ListShardsOutput < Struct.new(
      :shards,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute stream_arn
    #   <p>The ARN of the Kinesis data stream for which you want to list the registered
    #               consumers. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-kinesis-streams">Amazon Resource Names (ARNs) and Amazon Web Services Service
    #               Namespaces</a>.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>When the number of consumers that are registered with the data stream is greater than
    #               the default value for the <code>MaxResults</code> parameter, or if you explicitly
    #               specify a value for <code>MaxResults</code> that is less than the number of consumers
    #               that are registered with the data stream, the response includes a pagination token named
    #                   <code>NextToken</code>. You can specify this <code>NextToken</code> value in a
    #               subsequent call to <code>ListStreamConsumers</code> to list the next set of registered
    #               consumers.</p>
    #            <p>Don't specify <code>StreamName</code> or <code>StreamCreationTimestamp</code> if you
    #               specify <code>NextToken</code> because the latter unambiguously identifies the
    #               stream.</p>
    #            <p>You can optionally specify a value for the <code>MaxResults</code> parameter when you
    #               specify <code>NextToken</code>. If you specify a <code>MaxResults</code> value that is
    #               less than the number of consumers that the operation returns if you don't specify
    #                   <code>MaxResults</code>, the response will contain a new <code>NextToken</code>
    #               value. You can use the new <code>NextToken</code> value in a subsequent call to the
    #                   <code>ListStreamConsumers</code> operation to list the next set of consumers.</p>
    #            <important>
    #               <p>Tokens expire after 300 seconds. When you obtain a value for
    #                       <code>NextToken</code> in the response to a call to
    #                       <code>ListStreamConsumers</code>, you have 300 seconds to use that value. If you
    #                   specify an expired token in a call to <code>ListStreamConsumers</code>, you get
    #                       <code>ExpiredNextTokenException</code>.</p>
    #            </important>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of consumers that you want a single call of
    #                   <code>ListStreamConsumers</code> to return. The default value is 100. If you specify
    #               a value greater than 100, at most 100 results are returned. </p>
    #   @return [Integer]
    # @!attribute stream_creation_timestamp
    #   <p>Specify this input parameter to distinguish data streams that have the same name. For
    #               example, if you create a data stream and then delete it, and you later create another
    #               data stream with the same name, you can use this input parameter to specify which of the
    #               two streams you want to list the consumers for. </p>
    #            <p>You can't specify this parameter if you specify the NextToken parameter. </p>
    #   @return [Time]
    class ListStreamConsumersInput < Struct.new(
      :stream_arn,
      :next_token,
      :max_results,
      :stream_creation_timestamp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute consumers
    #   <p>An array of JSON objects. Each object represents one registered consumer.</p>
    #   @return [Array<Types::Consumer>]
    # @!attribute next_token
    #   <p>When the number of consumers that are registered with the data stream is greater than
    #               the default value for the <code>MaxResults</code> parameter, or if you explicitly
    #               specify a value for <code>MaxResults</code> that is less than the number of registered
    #               consumers, the response includes a pagination token named <code>NextToken</code>. You
    #               can specify this <code>NextToken</code> value in a subsequent call to
    #                   <code>ListStreamConsumers</code> to list the next set of registered consumers. For
    #               more information about the use of this pagination token when calling the
    #                   <code>ListStreamConsumers</code> operation, see <a>ListStreamConsumersInput$NextToken</a>.</p>
    #            <important>
    #               <p>Tokens expire after 300 seconds. When you obtain a value for
    #                       <code>NextToken</code> in the response to a call to
    #                       <code>ListStreamConsumers</code>, you have 300 seconds to use that value. If you
    #                   specify an expired token in a call to <code>ListStreamConsumers</code>, you get
    #                       <code>ExpiredNextTokenException</code>.</p>
    #            </important>
    #   @return [String]
    class ListStreamConsumersOutput < Struct.new(
      :consumers,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input for <code>ListStreams</code>.</p>
    # @!attribute limit
    #   <p>The maximum number of streams to list. The default value is 100. If you specify a
    #               value greater than 100, at most 100 results are returned.</p>
    #   @return [Integer]
    # @!attribute exclusive_start_stream_name
    #   <p>The name of the stream to start the list with.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p></p>
    #   @return [String]
    class ListStreamsInput < Struct.new(
      :limit,
      :exclusive_start_stream_name,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output for <code>ListStreams</code>.</p>
    # @!attribute stream_names
    #   <p>The names of the streams that are associated with the Amazon Web Services account
    #               making the <code>ListStreams</code> request.</p>
    #   @return [Array<String>]
    # @!attribute has_more_streams
    #   <p>If set to <code>true</code>, there are more streams available to list.</p>
    #   @return [Boolean]
    # @!attribute next_token
    #   <p></p>
    #   @return [String]
    # @!attribute stream_summaries
    #   <p></p>
    #   @return [Array<Types::StreamSummary>]
    class ListStreamsOutput < Struct.new(
      :stream_names,
      :has_more_streams,
      :next_token,
      :stream_summaries,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the Kinesis resource for which to list tags.</p>
    #   @return [String]
    class ListTagsForResourceInput < Struct.new(
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>An array of tags associated with the specified Kinesis resource.</p>
    #   @return [Array<Types::Tag>]
    class ListTagsForResourceOutput < Struct.new(
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input for <code>ListTagsForStream</code>.</p>
    # @!attribute stream_name
    #   <p>The name of the stream.</p>
    #   @return [String]
    # @!attribute exclusive_start_tag_key
    #   <p>The key to use as the starting point for the list of tags. If this parameter is set,
    #                   <code>ListTagsForStream</code> gets all tags that occur after
    #                   <code>ExclusiveStartTagKey</code>. </p>
    #   @return [String]
    # @!attribute limit
    #   <p>The number of tags to return. If this number is less than the total number of tags
    #               associated with the stream, <code>HasMoreTags</code> is set to <code>true</code>. To
    #               list additional tags, set <code>ExclusiveStartTagKey</code> to the last key in the
    #               response.</p>
    #   @return [Integer]
    # @!attribute stream_arn
    #   <p>The ARN of the stream.</p>
    #   @return [String]
    class ListTagsForStreamInput < Struct.new(
      :stream_name,
      :exclusive_start_tag_key,
      :limit,
      :stream_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output for <code>ListTagsForStream</code>.</p>
    # @!attribute tags
    #   <p>A list of tags associated with <code>StreamName</code>, starting with the first tag
    #               after <code>ExclusiveStartTagKey</code> and up to the specified <code>Limit</code>.
    #           </p>
    #   @return [Array<Types::Tag>]
    # @!attribute has_more_tags
    #   <p>If set to <code>true</code>, more tags are available. To request additional tags, set
    #                   <code>ExclusiveStartTagKey</code> to the key of the last tag returned.</p>
    #   @return [Boolean]
    class ListTagsForStreamOutput < Struct.new(
      :tags,
      :has_more_tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input for <code>MergeShards</code>.</p>
    # @!attribute stream_name
    #   <p>The name of the stream for the merge.</p>
    #   @return [String]
    # @!attribute shard_to_merge
    #   <p>The shard ID of the shard to combine with the adjacent shard for the merge.</p>
    #   @return [String]
    # @!attribute adjacent_shard_to_merge
    #   <p>The shard ID of the adjacent shard for the merge.</p>
    #   @return [String]
    # @!attribute stream_arn
    #   <p>The ARN of the stream.</p>
    #   @return [String]
    class MergeShardsInput < Struct.new(
      :stream_name,
      :shard_to_merge,
      :adjacent_shard_to_merge,
      :stream_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request rate for the stream is too high, or the requested data is too large for
    #             the available throughput. Reduce the frequency or size of your requests. For more
    #             information, see <a href="https://docs.aws.amazon.com/kinesis/latest/dev/service-sizes-and-limits.html">Streams Limits</a> in the
    #                 <i>Amazon Kinesis Data Streams Developer Guide</i>, and <a href="https://docs.aws.amazon.com/general/latest/gr/api-retries.html">Error Retries and
    #                 Exponential Backoff in Amazon Web Services</a> in the <i>Amazon Web Services General Reference</i>.</p>
    # @!attribute message
    #   <p>A message that provides information about the error.</p>
    #   @return [String]
    class ProvisionedThroughputExceededException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input for <code>PutRecord</code>.</p>
    # @!attribute stream_name
    #   <p>The name of the stream to put the data record into.</p>
    #   @return [String]
    # @!attribute data
    #   <p>The data blob to put into the record, which is base64-encoded when the blob is
    #               serialized. When the data blob (the payload before base64-encoding) is added to the
    #               partition key size, the total size must not exceed the maximum record size (1
    #               MiB).</p>
    #   @return [String]
    # @!attribute partition_key
    #   <p>Determines which shard in the stream the data record is assigned to. Partition keys
    #               are Unicode strings with a maximum length limit of 256 characters for each key. Amazon
    #               Kinesis Data Streams uses the partition key as input to a hash function that maps the
    #               partition key and associated data to a specific shard. Specifically, an MD5 hash
    #               function is used to map partition keys to 128-bit integer values and to map associated
    #               data records to shards. As a result of this hashing mechanism, all data records with the
    #               same partition key map to the same shard within the stream.</p>
    #   @return [String]
    # @!attribute explicit_hash_key
    #   <p>The hash value used to explicitly determine the shard the data record is assigned to
    #               by overriding the partition key hash.</p>
    #   @return [String]
    # @!attribute sequence_number_for_ordering
    #   <p>Guarantees strictly increasing sequence numbers, for puts from the same client and to
    #               the same partition key. Usage: set the <code>SequenceNumberForOrdering</code> of record
    #                   <i>n</i> to the sequence number of record <i>n-1</i> (as
    #               returned in the result when putting record <i>n-1</i>). If this parameter
    #               is not set, records are coarsely ordered based on arrival time.</p>
    #   @return [String]
    # @!attribute stream_arn
    #   <p>The ARN of the stream.</p>
    #   @return [String]
    class PutRecordInput < Struct.new(
      :stream_name,
      :data,
      :partition_key,
      :explicit_hash_key,
      :sequence_number_for_ordering,
      :stream_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output for <code>PutRecord</code>.</p>
    # @!attribute shard_id
    #   <p>The shard ID of the shard where the data record was placed.</p>
    #   @return [String]
    # @!attribute sequence_number
    #   <p>The sequence number identifier that was assigned to the put data record. The sequence
    #               number for the record is unique across all records in the stream. A sequence number is
    #               the identifier associated with every record put into the stream.</p>
    #   @return [String]
    # @!attribute encryption_type
    #   <p>The encryption type to use on the record. This parameter can be one of the following
    #               values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>NONE</code>: Do not encrypt the records in the stream.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>KMS</code>: Use server-side encryption on the records in the stream
    #                       using a customer-managed Amazon Web Services KMS key.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class PutRecordOutput < Struct.new(
      :shard_id,
      :sequence_number,
      :encryption_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A <code>PutRecords</code> request.</p>
    # @!attribute records
    #   <p>The records associated with the request.</p>
    #   @return [Array<Types::PutRecordsRequestEntry>]
    # @!attribute stream_name
    #   <p>The stream name associated with the request.</p>
    #   @return [String]
    # @!attribute stream_arn
    #   <p>The ARN of the stream.</p>
    #   @return [String]
    class PutRecordsInput < Struct.new(
      :records,
      :stream_name,
      :stream_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #             <code>PutRecords</code> results.</p>
    # @!attribute failed_record_count
    #   <p>The number of unsuccessfully processed records in a <code>PutRecords</code>
    #               request.</p>
    #   @return [Integer]
    # @!attribute records
    #   <p>An array of successfully and unsuccessfully processed record results. A record that is
    #               successfully added to a stream includes <code>SequenceNumber</code> and
    #                   <code>ShardId</code> in the result. A record that fails to be added to a stream
    #               includes <code>ErrorCode</code> and <code>ErrorMessage</code> in the result.</p>
    #   @return [Array<Types::PutRecordsResultEntry>]
    # @!attribute encryption_type
    #   <p>The encryption type used on the records. This parameter can be one of the following
    #               values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>NONE</code>: Do not encrypt the records.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>KMS</code>: Use server-side encryption on the records using a
    #                       customer-managed Amazon Web Services KMS key.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class PutRecordsOutput < Struct.new(
      :failed_record_count,
      :records,
      :encryption_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output for <code>PutRecords</code>.</p>
    # @!attribute data
    #   <p>The data blob to put into the record, which is base64-encoded when the blob is
    #               serialized. When the data blob (the payload before base64-encoding) is added to the
    #               partition key size, the total size must not exceed the maximum record size (1
    #               MiB).</p>
    #   @return [String]
    # @!attribute explicit_hash_key
    #   <p>The hash value used to determine explicitly the shard that the data record is assigned
    #               to by overriding the partition key hash.</p>
    #   @return [String]
    # @!attribute partition_key
    #   <p>Determines which shard in the stream the data record is assigned to. Partition keys
    #               are Unicode strings with a maximum length limit of 256 characters for each key. Amazon
    #               Kinesis Data Streams uses the partition key as input to a hash function that maps the
    #               partition key and associated data to a specific shard. Specifically, an MD5 hash
    #               function is used to map partition keys to 128-bit integer values and to map associated
    #               data records to shards. As a result of this hashing mechanism, all data records with the
    #               same partition key map to the same shard within the stream.</p>
    #   @return [String]
    class PutRecordsRequestEntry < Struct.new(
      :data,
      :explicit_hash_key,
      :partition_key,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the result of an individual record from a <code>PutRecords</code> request.
    #             A record that is successfully added to a stream includes <code>SequenceNumber</code> and
    #                 <code>ShardId</code> in the result. A record that fails to be added to the stream
    #             includes <code>ErrorCode</code> and <code>ErrorMessage</code> in the result.</p>
    # @!attribute sequence_number
    #   <p>The sequence number for an individual record result.</p>
    #   @return [String]
    # @!attribute shard_id
    #   <p>The shard ID for an individual record result.</p>
    #   @return [String]
    # @!attribute error_code
    #   <p>The error code for an individual record result. <code>ErrorCodes</code> can be either
    #                   <code>ProvisionedThroughputExceededException</code> or
    #               <code>InternalFailure</code>.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>The error message for an individual record result. An <code>ErrorCode</code> value of
    #                   <code>ProvisionedThroughputExceededException</code> has an error message that
    #               includes the account ID, stream name, and shard ID. An <code>ErrorCode</code> value of
    #                   <code>InternalFailure</code> has the error message <code>"Internal Service
    #                   Failure"</code>.</p>
    #   @return [String]
    class PutRecordsResultEntry < Struct.new(
      :sequence_number,
      :shard_id,
      :error_code,
      :error_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the data stream or consumer.</p>
    #   @return [String]
    # @!attribute policy
    #   <p>Details of the resource policy. It must include the identity of the principal and the actions allowed on this resource. This is formatted as a JSON string.</p>
    #   @return [String]
    class PutResourcePolicyInput < Struct.new(
      :resource_arn,
      :policy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The unit of data of the Kinesis data stream, which is composed of a sequence number, a
    #             partition key, and a data blob.</p>
    # @!attribute sequence_number
    #   <p>The unique identifier of the record within its shard.</p>
    #   @return [String]
    # @!attribute approximate_arrival_timestamp
    #   <p>The approximate time that the record was inserted into the stream.</p>
    #   @return [Time]
    # @!attribute data
    #   <p>The data blob. The data in the blob is both opaque and immutable to Kinesis Data
    #               Streams, which does not inspect, interpret, or change the data in the blob in any way.
    #               When the data blob (the payload before base64-encoding) is added to the partition key
    #               size, the total size must not exceed the maximum record size (1 MiB).</p>
    #   @return [String]
    # @!attribute partition_key
    #   <p>Identifies which shard in the stream the data record is assigned to.</p>
    #   @return [String]
    # @!attribute encryption_type
    #   <p>The encryption type used on the record. This parameter can be one of the following
    #               values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>NONE</code>: Do not encrypt the records in the stream.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>KMS</code>: Use server-side encryption on the records in the stream
    #                       using a customer-managed Amazon Web Services KMS key.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class Record < Struct.new(
      :sequence_number,
      :approximate_arrival_timestamp,
      :data,
      :partition_key,
      :encryption_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute stream_arn
    #   <p>The ARN of the Kinesis data stream that you want to register the consumer with. For
    #               more info, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-kinesis-streams">Amazon Resource Names (ARNs) and Amazon Web Services Service
    #               Namespaces</a>.</p>
    #   @return [String]
    # @!attribute consumer_name
    #   <p>For a given Kinesis data stream, each consumer must have a unique name. However,
    #               consumer names don't have to be unique across data streams.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A set of up to 50 key-value pairs. A tag consists of a required key and an optional value.</p>
    #   @return [Hash<String, String>]
    class RegisterStreamConsumerInput < Struct.new(
      :stream_arn,
      :consumer_name,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute consumer
    #   <p>An object that represents the details of the consumer you registered. When you
    #               register a consumer, it gets an ARN that is generated by Kinesis Data Streams.</p>
    #   @return [Types::Consumer]
    class RegisterStreamConsumerOutput < Struct.new(
      :consumer,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input for <code>RemoveTagsFromStream</code>.</p>
    # @!attribute stream_name
    #   <p>The name of the stream.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>A list of tag keys. Each corresponding tag is removed from the stream.</p>
    #   @return [Array<String>]
    # @!attribute stream_arn
    #   <p>The ARN of the stream.</p>
    #   @return [String]
    class RemoveTagsFromStreamInput < Struct.new(
      :stream_name,
      :tag_keys,
      :stream_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The resource is not available for this operation. For successful operation, the
    #             resource must be in the <code>ACTIVE</code> state.</p>
    # @!attribute message
    #   <p>A message that provides information about the error.</p>
    #   @return [String]
    class ResourceInUseException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The requested resource could not be found. The stream might not be specified
    #             correctly.</p>
    # @!attribute message
    #   <p>A message that provides information about the error.</p>
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The range of possible sequence numbers for the shard.</p>
    # @!attribute starting_sequence_number
    #   <p>The starting sequence number for the range.</p>
    #   @return [String]
    # @!attribute ending_sequence_number
    #   <p>The ending sequence number for the range. Shards that are in the OPEN state have an
    #               ending sequence number of <code>null</code>.</p>
    #   @return [String]
    class SequenceNumberRange < Struct.new(
      :starting_sequence_number,
      :ending_sequence_number,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A uniquely identified group of data records in a Kinesis data stream.</p>
    # @!attribute shard_id
    #   <p>The unique identifier of the shard within the stream.</p>
    #   @return [String]
    # @!attribute parent_shard_id
    #   <p>The shard ID of the shard's parent.</p>
    #   @return [String]
    # @!attribute adjacent_parent_shard_id
    #   <p>The shard ID of the shard adjacent to the shard's parent.</p>
    #   @return [String]
    # @!attribute hash_key_range
    #   <p>The range of possible hash key values for the shard, which is a set of ordered
    #               contiguous positive integers.</p>
    #   @return [Types::HashKeyRange]
    # @!attribute sequence_number_range
    #   <p>The range of possible sequence numbers for the shard.</p>
    #   @return [Types::SequenceNumberRange]
    class Shard < Struct.new(
      :shard_id,
      :parent_shard_id,
      :adjacent_parent_shard_id,
      :hash_key_range,
      :sequence_number_range,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request parameter used to filter out the response of the <code>ListShards</code>
    #             API.</p>
    # @!attribute type
    #   <p>The shard type specified in the <code>ShardFilter</code> parameter. This is a required
    #               property of the <code>ShardFilter</code> parameter.</p>
    #            <p>You can specify the following valid values: </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>AFTER_SHARD_ID</code> - the response includes all the shards, starting
    #                       with the shard whose ID immediately follows the <code>ShardId</code> that you
    #                       provided. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AT_TRIM_HORIZON</code> - the response includes all the shards that were
    #                       open at <code>TRIM_HORIZON</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FROM_TRIM_HORIZON</code> - (default), the response includes all the
    #                       shards within the retention period of the data stream (trim to tip).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AT_LATEST</code> - the response includes only the currently open shards
    #                       of the data stream.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AT_TIMESTAMP</code> - the response includes all shards whose start
    #                       timestamp is less than or equal to the given timestamp and end timestamp is
    #                       greater than or equal to the given timestamp or still open. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FROM_TIMESTAMP</code> - the response incldues all closed shards whose
    #                       end timestamp is greater than or equal to the given timestamp and also all open
    #                       shards. Corrected to <code>TRIM_HORIZON</code> of the data stream if
    #                           <code>FROM_TIMESTAMP</code> is less than the <code>TRIM_HORIZON</code>
    #                       value.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute shard_id
    #   <p>The exclusive start <code>shardID</code> speified in the <code>ShardFilter</code>
    #               parameter. This property can only be used if the <code>AFTER_SHARD_ID</code> shard type
    #               is specified.</p>
    #   @return [String]
    # @!attribute timestamp
    #   <p>The timestamps specified in the <code>ShardFilter</code> parameter. A timestamp is a
    #               Unix epoch date with precision in milliseconds. For example,
    #               2016-04-04T19:58:46.480-00:00 or 1459799926.480. This property can only be used if
    #                   <code>FROM_TIMESTAMP</code> or <code>AT_TIMESTAMP</code> shard types are
    #               specified.</p>
    #   @return [Time]
    class ShardFilter < Struct.new(
      :type,
      :shard_id,
      :timestamp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input for <code>SplitShard</code>.</p>
    # @!attribute stream_name
    #   <p>The name of the stream for the shard split.</p>
    #   @return [String]
    # @!attribute shard_to_split
    #   <p>The shard ID of the shard to split.</p>
    #   @return [String]
    # @!attribute new_starting_hash_key
    #   <p>A hash key value for the starting hash key of one of the child shards created by the
    #               split. The hash key range for a given shard constitutes a set of ordered contiguous
    #               positive integers. The value for <code>NewStartingHashKey</code> must be in the range of
    #               hash keys being mapped into the shard. The <code>NewStartingHashKey</code> hash key
    #               value and all higher hash key values in hash key range are distributed to one of the
    #               child shards. All the lower hash key values in the range are distributed to the other
    #               child shard.</p>
    #   @return [String]
    # @!attribute stream_arn
    #   <p>The ARN of the stream.</p>
    #   @return [String]
    class SplitShardInput < Struct.new(
      :stream_name,
      :shard_to_split,
      :new_starting_hash_key,
      :stream_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute stream_name
    #   <p>The name of the stream for which to start encrypting records.</p>
    #   @return [String]
    # @!attribute encryption_type
    #   <p>The encryption type to use. The only valid value is <code>KMS</code>.</p>
    #   @return [String]
    # @!attribute key_id
    #   <p>The GUID for the customer-managed Amazon Web Services KMS key to use for encryption.
    #               This value can be a globally unique identifier, a fully specified Amazon Resource Name
    #               (ARN) to either an alias or a key, or an alias name prefixed by "alias/".You can also
    #               use a master key owned by Kinesis Data Streams by specifying the alias
    #                   <code>aws/kinesis</code>.</p>
    #            <ul>
    #               <li>
    #                  <p>Key ARN example:
    #                           <code>arn:aws:kms:us-east-1:123456789012:key/12345678-1234-1234-1234-123456789012</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Alias ARN example:
    #                           <code>arn:aws:kms:us-east-1:123456789012:alias/MyAliasName</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Globally unique key ID example:
    #                           <code>12345678-1234-1234-1234-123456789012</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Alias name example: <code>alias/MyAliasName</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Master key owned by Kinesis Data Streams:
    #                       <code>alias/aws/kinesis</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute stream_arn
    #   <p>The ARN of the stream.</p>
    #   @return [String]
    class StartStreamEncryptionInput < Struct.new(
      :stream_name,
      :encryption_type,
      :key_id,
      :stream_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The starting position in the data stream from which to start streaming.</p>
    # @!attribute type
    #   <p>You can set the starting position to one of the following values:</p>
    #            <p>
    #               <code>AT_SEQUENCE_NUMBER</code>: Start streaming from the position denoted by the
    #               sequence number specified in the <code>SequenceNumber</code> field.</p>
    #            <p>
    #               <code>AFTER_SEQUENCE_NUMBER</code>: Start streaming right after the position denoted
    #               by the sequence number specified in the <code>SequenceNumber</code> field.</p>
    #            <p>
    #               <code>AT_TIMESTAMP</code>: Start streaming from the position denoted by the time stamp
    #               specified in the <code>Timestamp</code> field.</p>
    #            <p>
    #               <code>TRIM_HORIZON</code>: Start streaming at the last untrimmed record in the shard,
    #               which is the oldest data record in the shard.</p>
    #            <p>
    #               <code>LATEST</code>: Start streaming just after the most recent record in the shard,
    #               so that you always read the most recent data in the shard.</p>
    #   @return [String]
    # @!attribute sequence_number
    #   <p>The sequence number of the data record in the shard from which to start streaming. To
    #               specify a sequence number, set <code>StartingPosition</code> to
    #                   <code>AT_SEQUENCE_NUMBER</code> or <code>AFTER_SEQUENCE_NUMBER</code>.</p>
    #   @return [String]
    # @!attribute timestamp
    #   <p>The time stamp of the data record from which to start reading. To specify a time
    #               stamp, set <code>StartingPosition</code> to <code>Type AT_TIMESTAMP</code>. A time stamp
    #               is the Unix epoch date with precision in milliseconds. For example,
    #                   <code>2016-04-04T19:58:46.480-00:00</code> or <code>1459799926.480</code>. If a
    #               record with this exact time stamp does not exist, records will be streamed from the next
    #               (later) record. If the time stamp is older than the current trim horizon, records will
    #               be streamed from the oldest untrimmed data record (<code>TRIM_HORIZON</code>).</p>
    #   @return [Time]
    class StartingPosition < Struct.new(
      :type,
      :sequence_number,
      :timestamp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute stream_name
    #   <p>The name of the stream on which to stop encrypting records.</p>
    #   @return [String]
    # @!attribute encryption_type
    #   <p>The encryption type. The only valid value is <code>KMS</code>.</p>
    #   @return [String]
    # @!attribute key_id
    #   <p>The GUID for the customer-managed Amazon Web Services KMS key to use for encryption.
    #               This value can be a globally unique identifier, a fully specified Amazon Resource Name
    #               (ARN) to either an alias or a key, or an alias name prefixed by "alias/".You can also
    #               use a master key owned by Kinesis Data Streams by specifying the alias
    #                   <code>aws/kinesis</code>.</p>
    #            <ul>
    #               <li>
    #                  <p>Key ARN example:
    #                           <code>arn:aws:kms:us-east-1:123456789012:key/12345678-1234-1234-1234-123456789012</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Alias ARN example:
    #                           <code>arn:aws:kms:us-east-1:123456789012:alias/MyAliasName</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Globally unique key ID example:
    #                           <code>12345678-1234-1234-1234-123456789012</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Alias name example: <code>alias/MyAliasName</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Master key owned by Kinesis Data Streams:
    #                       <code>alias/aws/kinesis</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute stream_arn
    #   <p>The ARN of the stream.</p>
    #   @return [String]
    class StopStreamEncryptionInput < Struct.new(
      :stream_name,
      :encryption_type,
      :key_id,
      :stream_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output for <a>DescribeStream</a>.</p>
    # @!attribute stream_name
    #   <p>The name of the stream being described.</p>
    #   @return [String]
    # @!attribute stream_arn
    #   <p>The Amazon Resource Name (ARN) for the stream being described.</p>
    #   @return [String]
    # @!attribute stream_status
    #   <p>The current status of the stream being described. The stream status is one of the
    #               following states:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CREATING</code> - The stream is being created. Kinesis Data Streams
    #                       immediately returns and sets <code>StreamStatus</code> to
    #                       <code>CREATING</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETING</code> - The stream is being deleted. The specified stream is in
    #                       the <code>DELETING</code> state until Kinesis Data Streams completes the
    #                       deletion.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ACTIVE</code> - The stream exists and is ready for read and write
    #                       operations or deletion. You should perform read and write operations only on an
    #                           <code>ACTIVE</code> stream.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UPDATING</code> - Shards in the stream are being merged or split. Read and
    #                       write operations continue to work while the stream is in the
    #                           <code>UPDATING</code> state.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute stream_mode_details
    #   <p> Specifies the capacity mode to which you want to set your data stream. Currently, in
    #               Kinesis Data Streams, you can choose between an <b>on-demand</b> capacity mode and a <b>provisioned</b> capacity mode for your data streams. </p>
    #   @return [Types::StreamModeDetails]
    # @!attribute shards
    #   <p>The shards that comprise the stream.</p>
    #   @return [Array<Types::Shard>]
    # @!attribute has_more_shards
    #   <p>If set to <code>true</code>, more shards in the stream are available to
    #               describe.</p>
    #   @return [Boolean]
    # @!attribute retention_period_hours
    #   <p>The current retention period, in hours. Minimum value of 24. Maximum value of
    #               168.</p>
    #   @return [Integer]
    # @!attribute stream_creation_timestamp
    #   <p>The approximate time that the stream was created.</p>
    #   @return [Time]
    # @!attribute enhanced_monitoring
    #   <p>Represents the current enhanced monitoring settings of the stream.</p>
    #   @return [Array<Types::EnhancedMetrics>]
    # @!attribute encryption_type
    #   <p>The server-side encryption type used on the stream. This parameter can be one of the
    #               following values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>NONE</code>: Do not encrypt the records in the stream.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>KMS</code>: Use server-side encryption on the records in the stream
    #                       using a customer-managed Amazon Web Services KMS key.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute key_id
    #   <p>The GUID for the customer-managed Amazon Web Services KMS key to use for encryption.
    #               This value can be a globally unique identifier, a fully specified ARN to either an alias
    #               or a key, or an alias name prefixed by "alias/".You can also use a master key owned by
    #               Kinesis Data Streams by specifying the alias <code>aws/kinesis</code>.</p>
    #            <ul>
    #               <li>
    #                  <p>Key ARN example:
    #                           <code>arn:aws:kms:us-east-1:123456789012:key/12345678-1234-1234-1234-123456789012</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Alias ARN example:
    #                           <code>arn:aws:kms:us-east-1:123456789012:alias/MyAliasName</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Globally unique key ID example:
    #                           <code>12345678-1234-1234-1234-123456789012</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Alias name example: <code>alias/MyAliasName</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Master key owned by Kinesis Data Streams:
    #                       <code>alias/aws/kinesis</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    class StreamDescription < Struct.new(
      :stream_name,
      :stream_arn,
      :stream_status,
      :stream_mode_details,
      :shards,
      :has_more_shards,
      :retention_period_hours,
      :stream_creation_timestamp,
      :enhanced_monitoring,
      :encryption_type,
      :key_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output for <a>DescribeStreamSummary</a>
    #          </p>
    # @!attribute stream_name
    #   <p>The name of the stream being described.</p>
    #   @return [String]
    # @!attribute stream_arn
    #   <p>The Amazon Resource Name (ARN) for the stream being described.</p>
    #   @return [String]
    # @!attribute stream_status
    #   <p>The current status of the stream being described. The stream status is one of the
    #               following states:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CREATING</code> - The stream is being created. Kinesis Data Streams
    #                       immediately returns and sets <code>StreamStatus</code> to
    #                       <code>CREATING</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETING</code> - The stream is being deleted. The specified stream is in
    #                       the <code>DELETING</code> state until Kinesis Data Streams completes the
    #                       deletion.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ACTIVE</code> - The stream exists and is ready for read and write
    #                       operations or deletion. You should perform read and write operations only on an
    #                           <code>ACTIVE</code> stream.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UPDATING</code> - Shards in the stream are being merged or split. Read and
    #                       write operations continue to work while the stream is in the
    #                           <code>UPDATING</code> state.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute stream_mode_details
    #   <p> Specifies the capacity mode to which you want to set your data stream. Currently, in
    #               Kinesis Data Streams, you can choose between an <b>on-demand</b> ycapacity mode and a <b>provisioned</b> capacity mode for your data streams. </p>
    #   @return [Types::StreamModeDetails]
    # @!attribute retention_period_hours
    #   <p>The current retention period, in hours.</p>
    #   @return [Integer]
    # @!attribute stream_creation_timestamp
    #   <p>The approximate time that the stream was created.</p>
    #   @return [Time]
    # @!attribute enhanced_monitoring
    #   <p>Represents the current enhanced monitoring settings of the stream.</p>
    #   @return [Array<Types::EnhancedMetrics>]
    # @!attribute encryption_type
    #   <p>The encryption type used. This value is one of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>KMS</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NONE</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute key_id
    #   <p>The GUID for the customer-managed Amazon Web Services KMS key to use for encryption.
    #               This value can be a globally unique identifier, a fully specified ARN to either an alias
    #               or a key, or an alias name prefixed by "alias/".You can also use a master key owned by
    #               Kinesis Data Streams by specifying the alias <code>aws/kinesis</code>.</p>
    #            <ul>
    #               <li>
    #                  <p>Key ARN example:
    #                           <code>arn:aws:kms:us-east-1:123456789012:key/12345678-1234-1234-1234-123456789012</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Alias ARN example: <code>
    #                           arn:aws:kms:us-east-1:123456789012:alias/MyAliasName</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Globally unique key ID example:
    #                           <code>12345678-1234-1234-1234-123456789012</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Alias name example: <code>alias/MyAliasName</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Master key owned by Kinesis Data Streams:
    #                       <code>alias/aws/kinesis</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute open_shard_count
    #   <p>The number of open shards in the stream.</p>
    #   @return [Integer]
    # @!attribute consumer_count
    #   <p>The number of enhanced fan-out consumers registered with the stream.</p>
    #   @return [Integer]
    class StreamDescriptionSummary < Struct.new(
      :stream_name,
      :stream_arn,
      :stream_status,
      :stream_mode_details,
      :retention_period_hours,
      :stream_creation_timestamp,
      :enhanced_monitoring,
      :encryption_type,
      :key_id,
      :open_shard_count,
      :consumer_count,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Specifies the capacity mode to which you want to set your data stream. Currently, in
    #             Kinesis Data Streams, you can choose between an <b>on-demand</b> capacity mode and a <b>provisioned</b> capacity mode for your data streams. </p>
    # @!attribute stream_mode
    #   <p> Specifies the capacity mode to which you want to set your data stream. Currently, in
    #               Kinesis Data Streams, you can choose between an <b>on-demand</b> capacity mode and a <b>provisioned</b> capacity mode for your data streams. </p>
    #   @return [String]
    class StreamModeDetails < Struct.new(
      :stream_mode,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The summary of a stream.</p>
    # @!attribute stream_name
    #   <p>The name of a stream.</p>
    #   @return [String]
    # @!attribute stream_arn
    #   <p>The ARN of the stream.</p>
    #   @return [String]
    # @!attribute stream_status
    #   <p>The status of the stream.</p>
    #   @return [String]
    # @!attribute stream_mode_details
    #   <p> Specifies the capacity mode to which you want to set your data stream. Currently, in
    #               Kinesis Data Streams, you can choose between an <b>on-demand</b> capacity mode and a <b>provisioned</b> capacity mode for your data streams. </p>
    #   @return [Types::StreamModeDetails]
    # @!attribute stream_creation_timestamp
    #   <p>The timestamp at which the stream was created.</p>
    #   @return [Time]
    class StreamSummary < Struct.new(
      :stream_name,
      :stream_arn,
      :stream_status,
      :stream_mode_details,
      :stream_creation_timestamp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>After you call <a>SubscribeToShard</a>, Kinesis Data Streams sends events
    #             of this type over an HTTP/2 connection to your consumer.</p>
    # @!attribute records
    #   <p></p>
    #   @return [Array<Types::Record>]
    # @!attribute continuation_sequence_number
    #   <p>Use this as <code>SequenceNumber</code> in the next call to <a>SubscribeToShard</a>, with <code>StartingPosition</code> set to
    #                   <code>AT_SEQUENCE_NUMBER</code> or <code>AFTER_SEQUENCE_NUMBER</code>. Use
    #                   <code>ContinuationSequenceNumber</code> for checkpointing because it captures your
    #               shard progress even when no data is written to the shard.</p>
    #   @return [String]
    # @!attribute millis_behind_latest
    #   <p>The number of milliseconds the read records are from the tip of the stream, indicating
    #               how far behind current time the consumer is. A value of zero indicates that record
    #               processing is caught up, and there are no new records to process at this moment.</p>
    #   @return [Integer]
    # @!attribute child_shards
    #   <p>The list of the child shards of the current shard, returned only at the end of the
    #               current shard.</p>
    #   @return [Array<Types::ChildShard>]
    class SubscribeToShardEvent < Struct.new(
      :records,
      :continuation_sequence_number,
      :millis_behind_latest,
      :child_shards,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>This is a tagged union for all of the types of events an enhanced fan-out consumer can
    #             receive over HTTP/2 after a call to <a>SubscribeToShard</a>.</p>
    # @!attribute subscribe_to_shard_event
    #   <p>After you call <a>SubscribeToShard</a>, Kinesis Data Streams sends events
    #               of this type to your consumer. For an example of how to handle these events, see <a href="/streams/latest/dev/building-enhanced-consumers-api.html">Enhanced Fan-Out
    #                   Using the Kinesis Data Streams API</a>.</p>
    #   @return [Types::SubscribeToShardEvent]
    # @!attribute resource_not_found_exception
    #   <p>The requested resource could not be found. The stream might not be specified
    #               correctly.</p>
    #   @return [Types::ResourceNotFoundException]
    # @!attribute resource_in_use_exception
    #   <p>The resource is not available for this operation. For successful operation, the
    #               resource must be in the <code>ACTIVE</code> state.</p>
    #   @return [Types::ResourceInUseException]
    # @!attribute kms_disabled_exception
    #   <p>The request was rejected because the specified customer master key (CMK) isn't
    #               enabled.</p>
    #   @return [Types::KMSDisabledException]
    # @!attribute kms_invalid_state_exception
    #   <p>The request was rejected because the state of the specified resource isn't valid for
    #               this request. For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">How Key State Affects Use of a
    #                   Customer Master Key</a> in the <i>Amazon Web Services Key Management
    #                   Service Developer Guide</i>.</p>
    #   @return [Types::KMSInvalidStateException]
    # @!attribute kms_access_denied_exception
    #   <p>The ciphertext references a key that doesn't exist or that you don't have access
    #               to.</p>
    #   @return [Types::KMSAccessDeniedException]
    # @!attribute kms_not_found_exception
    #   <p>The request was rejected because the specified entity or resource can't be
    #               found.</p>
    #   @return [Types::KMSNotFoundException]
    # @!attribute kms_opt_in_required
    #   <p>The Amazon Web Services access key ID needs a subscription for the service.</p>
    #   @return [Types::KMSOptInRequired]
    # @!attribute kms_throttling_exception
    #   <p>The request was denied due to request throttling. For more information about
    #               throttling, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/limits.html#requests-per-second">Limits</a> in
    #               the <i>Amazon Web Services Key Management Service Developer
    #               Guide</i>.</p>
    #   @return [Types::KMSThrottlingException]
    # @!attribute internal_failure_exception
    #   <p>The processing of the request failed because of an unknown error, exception, or
    #               failure.</p>
    #   @return [Types::InternalFailureException]
    class SubscribeToShardEventStream < Struct.new(
      :subscribe_to_shard_event,
      :resource_not_found_exception,
      :resource_in_use_exception,
      :kms_disabled_exception,
      :kms_invalid_state_exception,
      :kms_access_denied_exception,
      :kms_not_found_exception,
      :kms_opt_in_required,
      :kms_throttling_exception,
      :internal_failure_exception,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class SubscribeToShardEvent < SubscribeToShardEventStream; end
      class ResourceNotFoundException < SubscribeToShardEventStream; end
      class ResourceInUseException < SubscribeToShardEventStream; end
      class KMSDisabledException < SubscribeToShardEventStream; end
      class KMSInvalidStateException < SubscribeToShardEventStream; end
      class KMSAccessDeniedException < SubscribeToShardEventStream; end
      class KMSNotFoundException < SubscribeToShardEventStream; end
      class KMSOptInRequired < SubscribeToShardEventStream; end
      class KMSThrottlingException < SubscribeToShardEventStream; end
      class InternalFailureException < SubscribeToShardEventStream; end
      class Unknown < SubscribeToShardEventStream; end
    end

    # @!attribute consumer_arn
    #   <p>For this parameter, use the value you obtained when you called <a>RegisterStreamConsumer</a>.</p>
    #   @return [String]
    # @!attribute shard_id
    #   <p>The ID of the shard you want to subscribe to. To see a list of all the shards for a
    #               given stream, use <a>ListShards</a>.</p>
    #   @return [String]
    # @!attribute starting_position
    #   <p>The starting position in the data stream from which to start streaming.</p>
    #   @return [Types::StartingPosition]
    class SubscribeToShardInput < Struct.new(
      :consumer_arn,
      :shard_id,
      :starting_position,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute event_stream
    #   <p>The event stream that your consumer can use to read records from the shard.</p>
    #   @return [Types::SubscribeToShardEventStream]
    class SubscribeToShardOutput < Struct.new(
      :event_stream,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Metadata assigned to the stream or consumer, consisting of a key-value pair.</p>
    # @!attribute key
    #   <p>A unique identifier for the tag. Maximum length: 128 characters. Valid characters:
    #               Unicode letters, digits, white space, _ . / = + - % @</p>
    #   @return [String]
    # @!attribute value
    #   <p>An optional string, typically used to describe or define the tag. Maximum length: 256
    #               characters. Valid characters: Unicode letters, digits, white space, _ . / = + - %
    #               @</p>
    #   @return [String]
    class Tag < Struct.new(
      :key,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>An array of tags to be added to the Kinesis resource. A tag consists of a required key and an optional value. You can add up to 50 tags per resource.</p>
    #            <p>Tags may only contain Unicode letters, digits, white space, or these symbols: _ . : / = + - @.</p>
    #   @return [Hash<String, String>]
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the Kinesis resource to which to add tags.</p>
    #   @return [String]
    class TagResourceInput < Struct.new(
      :tags,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tag_keys
    #   <p>A list of tag key-value pairs. Existing tags of the resource whose keys are members of this list will be removed from the Kinesis resource.</p>
    #   @return [Array<String>]
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the Kinesis resource from which to remove tags.</p>
    #   @return [String]
    class UntagResourceInput < Struct.new(
      :tag_keys,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute stream_name
    #   <p>The name of the stream.</p>
    #   @return [String]
    # @!attribute target_shard_count
    #   <p>The new number of shards. This value has the following default limits. By default, you
    #               cannot do the following: </p>
    #            <ul>
    #               <li>
    #                  <p>Set this value to more than double your current shard count for a
    #                       stream.</p>
    #               </li>
    #               <li>
    #                  <p>Set this value below half your current shard count for a stream.</p>
    #               </li>
    #               <li>
    #                  <p>Set this value to more than 10000 shards in a stream (the default limit for
    #                       shard count per stream is 10000 per account per region), unless you request a
    #                       limit increase.</p>
    #               </li>
    #               <li>
    #                  <p>Scale a stream with more than 10000 shards down unless you set this value to
    #                       less than 10000 shards.</p>
    #               </li>
    #            </ul>
    #   @return [Integer]
    # @!attribute scaling_type
    #   <p>The scaling type. Uniform scaling creates shards of equal size.</p>
    #   @return [String]
    # @!attribute stream_arn
    #   <p>The ARN of the stream.</p>
    #   @return [String]
    class UpdateShardCountInput < Struct.new(
      :stream_name,
      :target_shard_count,
      :scaling_type,
      :stream_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute stream_name
    #   <p>The name of the stream.</p>
    #   @return [String]
    # @!attribute current_shard_count
    #   <p>The current number of shards.</p>
    #   @return [Integer]
    # @!attribute target_shard_count
    #   <p>The updated number of shards.</p>
    #   @return [Integer]
    # @!attribute stream_arn
    #   <p>The ARN of the stream.</p>
    #   @return [String]
    class UpdateShardCountOutput < Struct.new(
      :stream_name,
      :current_shard_count,
      :target_shard_count,
      :stream_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute stream_arn
    #   <p> Specifies the ARN of the data stream whose capacity mode you want to update. </p>
    #   @return [String]
    # @!attribute stream_mode_details
    #   <p> Specifies the capacity mode to which you want to set your data stream. Currently, in
    #               Kinesis Data Streams, you can choose between an <b>on-demand</b> capacity mode and a <b>provisioned</b> capacity mode for your data streams. </p>
    #   @return [Types::StreamModeDetails]
    class UpdateStreamModeInput < Struct.new(
      :stream_arn,
      :stream_mode_details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies that you tried to invoke this API for a data stream with the on-demand
    #             capacity mode. This API is only supported for data streams with the provisioned capacity
    #             mode. </p>
    # @!attribute message
    #   @return [String]
    class ValidationException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
