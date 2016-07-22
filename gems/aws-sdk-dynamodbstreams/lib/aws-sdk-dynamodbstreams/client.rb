# WARNING ABOUT GENERATED CODE
#
# The AWS SDK for Ruby is largely generated from JSON service definitions. Edits
# made against this file will be lost the next time the SDK updates.  To resolve
# an issue with generated code, a change is likely needed in the generator or
# in one of the service JSON definitions.
#
# * https://github.com/aws/aws-sdk-ruby/tree/master/gems/aws-sdk-code-generator
# * https://github.com/aws/aws-sdk-ruby/tree/master/apis
#
# Open a GitHub issue if you have questions before making changes.  Pull
# requests against this file will be automatically closed.
#
# WARNING ABOUT GENERATED CODE
module Aws
  module DynamoDBStreams
    class Client < Seahorse::Client::Base

      include Aws::ClientStubs
      include Aws::ClientWaiters

      @identifier = :dynamodbstreams

      set_api(ClientApi::API)

      add_plugin(Seahorse::Client::Plugins::ContentLength)
      add_plugin(Aws::Plugins::Logging)
      add_plugin(Aws::Plugins::ParamConverter)
      add_plugin(Aws::Plugins::ParamValidator)
      add_plugin(Aws::Plugins::UserAgent)
      add_plugin(Aws::Plugins::HelpfulSocketErrors)
      add_plugin(Aws::Plugins::RetryErrors)
      add_plugin(Aws::Plugins::GlobalConfiguration)
      add_plugin(Aws::Plugins::RegionalEndpoint)
      add_plugin(Aws::Plugins::RequestSigner)
      add_plugin(Aws::Plugins::ResponsePaging)
      add_plugin(Aws::Plugins::StubResponses)
      add_plugin(Aws::Plugins::Protocols::JsonRpc)

      # @!group API Operations

      # Returns information about a stream, including the current status of
      # the stream, its Amazon Resource Name (ARN), the composition of its
      # shards, and its corresponding DynamoDB table.
      #
      # <note markdown="1"> You can call *DescribeStream* at a maximum rate of 10 times per
      # second.
      #
      #  </note>
      #
      # Each shard in the stream has a `SequenceNumberRange` associated with
      # it. If the `SequenceNumberRange` has a `StartingSequenceNumber` but no
      # `EndingSequenceNumber`, then the shard is still open (able to receive
      # more stream records). If both `StartingSequenceNumber` and
      # `EndingSequenceNumber` are present, then that shard is closed and can
      # no longer receive more data.
      # @option params [required, String] :stream_arn
      #   The Amazon Resource Name (ARN) for the stream.
      # @option params [Integer] :limit
      #   The maximum number of shard objects to return. The upper limit is 100.
      # @option params [String] :exclusive_start_shard_id
      #   The shard ID of the first item that this operation will evaluate. Use
      #   the value that was returned for `LastEvaluatedShardId` in the previous
      #   operation.
      # @return [Types::DescribeStreamOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DescribeStreamOutput#stream_description #StreamDescription} => Types::StreamDescription
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_stream({
      #     stream_arn: "StreamArn", # required
      #     limit: 1,
      #     exclusive_start_shard_id: "ShardId",
      #   })
      #
      # @example Response structure
      #   resp.stream_description.stream_arn #=> String
      #   resp.stream_description.stream_label #=> String
      #   resp.stream_description.stream_status #=> String, one of "ENABLING", "ENABLED", "DISABLING", "DISABLED"
      #   resp.stream_description.stream_view_type #=> String, one of "NEW_IMAGE", "OLD_IMAGE", "NEW_AND_OLD_IMAGES", "KEYS_ONLY"
      #   resp.stream_description.creation_request_date_time #=> Time
      #   resp.stream_description.table_name #=> String
      #   resp.stream_description.key_schema #=> Array
      #   resp.stream_description.key_schema[0].attribute_name #=> String
      #   resp.stream_description.key_schema[0].key_type #=> String, one of "HASH", "RANGE"
      #   resp.stream_description.shards #=> Array
      #   resp.stream_description.shards[0].shard_id #=> String
      #   resp.stream_description.shards[0].sequence_number_range.starting_sequence_number #=> String
      #   resp.stream_description.shards[0].sequence_number_range.ending_sequence_number #=> String
      #   resp.stream_description.shards[0].parent_shard_id #=> String
      #   resp.stream_description.last_evaluated_shard_id #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def describe_stream(params = {}, options = {})
        req = build_request(:describe_stream, params)
        req.send_request(options)
      end

      # Retrieves the stream records from a given shard.
      #
      # Specify a shard iterator using the `ShardIterator` parameter. The
      # shard iterator specifies the position in the shard from which you want
      # to start reading stream records sequentially. If there are no stream
      # records available in the portion of the shard that the iterator points
      # to, `GetRecords` returns an empty list. Note that it might take
      # multiple calls to get to a portion of the shard that contains stream
      # records.
      #
      # <note markdown="1"> `GetRecords` can retrieve a maximum of 1 MB of data or 1000 stream
      # records, whichever comes first.
      #
      #  </note>
      # @option params [required, String] :shard_iterator
      #   A shard iterator that was retrieved from a previous GetShardIterator
      #   operation. This iterator can be used to access the stream records in
      #   this shard.
      # @option params [Integer] :limit
      #   The maximum number of records to return from the shard. The upper
      #   limit is 1000.
      # @return [Types::GetRecordsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::GetRecordsOutput#records #Records} => Array&lt;Types::Record&gt;
      #   * {Types::GetRecordsOutput#next_shard_iterator #NextShardIterator} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.get_records({
      #     shard_iterator: "ShardIterator", # required
      #     limit: 1,
      #   })
      #
      # @example Response structure
      #   resp.records #=> Array
      #   resp.records[0].event_id #=> String
      #   resp.records[0].event_name #=> String, one of "INSERT", "MODIFY", "REMOVE"
      #   resp.records[0].event_version #=> String
      #   resp.records[0].event_source #=> String
      #   resp.records[0].aws_region #=> String
      #   resp.records[0].dynamodb.approximate_creation_date_time #=> Time
      #   resp.records[0].dynamodb.keys #=> Hash
      #   resp.records[0].dynamodb.keys["AttributeName"] #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
      #   resp.records[0].dynamodb.new_image #=> Hash
      #   resp.records[0].dynamodb.new_image["AttributeName"] #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
      #   resp.records[0].dynamodb.old_image #=> Hash
      #   resp.records[0].dynamodb.old_image["AttributeName"] #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
      #   resp.records[0].dynamodb.sequence_number #=> String
      #   resp.records[0].dynamodb.size_bytes #=> Integer
      #   resp.records[0].dynamodb.stream_view_type #=> String, one of "NEW_IMAGE", "OLD_IMAGE", "NEW_AND_OLD_IMAGES", "KEYS_ONLY"
      #   resp.next_shard_iterator #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def get_records(params = {}, options = {})
        req = build_request(:get_records, params)
        req.send_request(options)
      end

      # Returns a shard iterator. A shard iterator provides information about
      # how to retrieve the stream records from within a shard. Use the shard
      # iterator in a subsequent `GetRecords` request to read the stream
      # records from the shard.
      #
      # <note markdown="1"> A shard iterator expires 15 minutes after it is returned to the
      # requester.
      #
      #  </note>
      # @option params [required, String] :stream_arn
      #   The Amazon Resource Name (ARN) for the stream.
      # @option params [required, String] :shard_id
      #   The identifier of the shard. The iterator will be returned for this
      #   shard ID.
      # @option params [required, String] :shard_iterator_type
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
      #     Streams, there is a 24 hour limit on data retention. Stream records
      #     whose age exceeds this limit are subject to removal (trimming) from
      #     the stream.
      #
      #   * `LATEST` - Start reading just after the most recent stream record in
      #     the shard, so that you always read the most recent data in the
      #     shard.
      # @option params [String] :sequence_number
      #   The sequence number of a stream record in the shard from which to
      #   start reading.
      # @return [Types::GetShardIteratorOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::GetShardIteratorOutput#shard_iterator #ShardIterator} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.get_shard_iterator({
      #     stream_arn: "StreamArn", # required
      #     shard_id: "ShardId", # required
      #     shard_iterator_type: "TRIM_HORIZON", # required, accepts TRIM_HORIZON, LATEST, AT_SEQUENCE_NUMBER, AFTER_SEQUENCE_NUMBER
      #     sequence_number: "SequenceNumber",
      #   })
      #
      # @example Response structure
      #   resp.shard_iterator #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def get_shard_iterator(params = {}, options = {})
        req = build_request(:get_shard_iterator, params)
        req.send_request(options)
      end

      # Returns an array of stream ARNs associated with the current account
      # and endpoint. If the `TableName` parameter is present, then
      # *ListStreams* will return only the streams ARNs for that table.
      #
      # <note markdown="1"> You can call *ListStreams* at a maximum rate of 5 times per second.
      #
      #  </note>
      # @option params [String] :table_name
      #   If this parameter is provided, then only the streams associated with
      #   this table name are returned.
      # @option params [Integer] :limit
      #   The maximum number of streams to return. The upper limit is 100.
      # @option params [String] :exclusive_start_stream_arn
      #   The ARN (Amazon Resource Name) of the first item that this operation
      #   will evaluate. Use the value that was returned for
      #   `LastEvaluatedStreamArn` in the previous operation.
      # @return [Types::ListStreamsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ListStreamsOutput#streams #Streams} => Array&lt;Types::Stream&gt;
      #   * {Types::ListStreamsOutput#last_evaluated_stream_arn #LastEvaluatedStreamArn} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.list_streams({
      #     table_name: "TableName",
      #     limit: 1,
      #     exclusive_start_stream_arn: "StreamArn",
      #   })
      #
      # @example Response structure
      #   resp.streams #=> Array
      #   resp.streams[0].stream_arn #=> String
      #   resp.streams[0].table_name #=> String
      #   resp.streams[0].stream_label #=> String
      #   resp.last_evaluated_stream_arn #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def list_streams(params = {}, options = {})
        req = build_request(:list_streams, params)
        req.send_request(options)
      end

      # @!endgroup

      # @param [Symbol] waiter_name
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      # @option options [Integer] :max_attempts
      # @option options [Integer] :delay
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def wait_until(waiter_name, params = {}, options = {})
        w = waiter(waiter_name, options)
        yield(w.waiter) if block_given? # deprecated
        w.wait(params)
      end

      def waiter_names
        waiters.keys
      end

      private

      # @param [Symbol] waiter_name
      # @param [Hash] options ({})
      def waiter(waiter_name, options = {})
        waiter_class = waiters[waiter_name]
        if waiter_class
          waiter_class.new(options.merge(client: self))
        else
          raise Aws::Waiters::Errors::NoSuchWaiterError.new(waiter_name, waiters.keys)
        end
      end

      def waiters
        {}
      end

      # @api private
      class << self

        attr_reader :identifier

        def errors_module
          Errors
        end

      end
    end
  end
end
