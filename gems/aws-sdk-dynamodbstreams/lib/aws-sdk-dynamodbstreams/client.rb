# frozen_string_literal: true

# This is generated code!

require_relative 'plugins/endpoint'
require 'smithy-client/plugins/checksum_required'
require 'smithy-client/plugins/content_length'
require 'smithy-client/plugins/default_params'
require 'smithy-client/plugins/host_prefix'
require 'smithy-client/plugins/idempotency_token'
require 'smithy-client/plugins/logging'
require 'smithy-client/plugins/net_http'
require 'smithy-client/plugins/pageable_response'
require 'smithy-client/plugins/param_converter'
require 'smithy-client/plugins/param_validator'
require 'smithy-client/plugins/raise_response_errors'
require 'smithy-client/plugins/request_compression'
require 'smithy-client/plugins/resolve_auth'
require 'smithy-client/plugins/response_target'
require 'smithy-client/plugins/retry_errors'
require 'smithy-client/plugins/stub_responses'
require 'aws-sdk-core/plugins/sigv4'
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/json_rpc'

module Aws::DynamoDBStreams
  # An API client for Aws::DynamoDBStreams.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::DynamoDBStreams20120810

    add_plugin(::Aws::DynamoDBStreams::Plugins::Endpoint)
    add_plugin(Smithy::Client::Plugins::ChecksumRequired)
    add_plugin(Smithy::Client::Plugins::ContentLength)
    add_plugin(Smithy::Client::Plugins::DefaultParams)
    add_plugin(Smithy::Client::Plugins::HostPrefix)
    add_plugin(Smithy::Client::Plugins::IdempotencyToken)
    add_plugin(Smithy::Client::Plugins::Logging)
    add_plugin(Smithy::Client::Plugins::NetHTTP)
    add_plugin(Smithy::Client::Plugins::PageableResponse)
    add_plugin(Smithy::Client::Plugins::ParamConverter)
    add_plugin(Smithy::Client::Plugins::ParamValidator)
    add_plugin(Smithy::Client::Plugins::RaiseResponseErrors)
    add_plugin(Smithy::Client::Plugins::RequestCompression)
    add_plugin(Smithy::Client::Plugins::ResolveAuth)
    add_plugin(Smithy::Client::Plugins::ResponseTarget)
    add_plugin(Smithy::Client::Plugins::RetryErrors)
    add_plugin(Smithy::Client::Plugins::StubResponses)
    add_plugin(Aws::Core::Plugins::SigV4)
    add_plugin(Aws::Core::Plugins::SharedConfig)
    add_plugin(Aws::Core::Plugins::UserAgent)
    add_plugin(Aws::Core::Plugins::JsonRpc)

    # @param options [Hash] Client options
    # @option options [String] :access_key_id
    # @option options [String] :account_id
    # @option options [Boolean] :adaptive_retry_wait_to_fill (true)
    #  When true, the request will sleep until there is sufficient client side capacity to retry
    #  the request. When false, the request will raise a `CapacityNotAvailableError` and will
    #  not retry instead of sleeping.
    # @option options [#resolve(context)] :auth_resolver (AuthResolver.new)
    #  An object that resolves authentication schemes for request signing
    # @option options [Boolean] :convert_params (true)
    #  When `true`, request parameters are coerced into the required types.
    # @option options [#identity] :credentials
    #  The credentials provider used to resolve credentials. Any object that responds to `#identity`
    #  and returns a {Aws::Core::Credentials}.
    # @option options [Boolean] :disable_host_prefix_injection
    #  When `true`, the SDK will not prepend the modeled host prefix to the endpoint.
    # @option options [Boolean] :disable_request_compression
    #  When `true`, the request body will not be compressed for supported operations.
    # @option options [String] :endpoint
    #  Custom Endpoint
    # @option options [Aws::DynamoDBStreams::EndpointProvider] :endpoint_provider
    #  The endpoint provider used to resolve endpoints. Any object that responds to `#resolve(parameters)`.
    # @option options [String] :http_ca_file
    #  The path to a CA certification file in PEM format. Defaults to `nil` which uses
    #  the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-ca_file Net::HTTP#ca_file}.
    # @option options [String] :http_ca_path
    #  The path of to CA directory containing certification files in PEM format. Defaults to
    #  `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-ca_path Net::HTTP#ca_path}.
    # @option options [OpenSSL::X509::Certificate] :http_cert
    #  Sets the OpenSSL::X509::Certificate object to be used for client certification. Defaults
    #  to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-cert Net::HTTP#cert}.
    # @option options [OpenSSL::X509::Store] :http_cert_store
    #  Sets the OpenSSL::X509::Store to be used for verifying peer certificate. Defaults to
    #  `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-cert_store Net::HTTP#cert_store}.
    # @option options [Numeric] :http_continue_timeout
    #  Sets the continue timeout value, which is the number of seconds to wait for an
    #  expected 100 Continue response. If the HTTP object does not receive a response
    #  in this many seconds it sends the request body. Defaults to `nil` which uses the
    #  Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-continue_timeout Net::HTTP#continue_timeout}.
    # @option options [Boolean] :http_debug_output
    #  When `true`, Net::HTTP debug output will be sent to the configured logger.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#method-i-set_debug_output Net::HTTP#set_debug_output}.
    # @option options [Numeric] :http_keep_alive_timeout
    #  The number of seconds to keep the connection open after a request is sent. If a
    #  new request is made during the given interval, the still-open connection is used;
    #  otherwise the connection will have been closed and a new connection is opened.
    #  Defaults to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-keep_alive_timeout Net::HTTP#keep_alive_timeout}.
    # @option options [OpenSSL::PKey::RSA, OpenSSL::PKey::DSA] :http_key
    #  Sets the OpenSSL::PKey object to be used for client private key. Defaults to `nil` which
    #  uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-key Net::HTTP#key}.
    # @option options [Numeric] :http_open_timeout
    #  The number of seconds to wait for a connection to open. If the connection is not
    #  made in the given interval, an exception is raised. Defaults to `nil` which uses
    #  the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-open_timeout Net::HTTP#open_timeout}.
    # @option options [URI::HTTP, String] :http_proxy
    #  A proxy to send requests through. Formatted like 'http://proxy.com:123'.
    # @option options [Numeric] :http_read_timeout
    #  The number of seconds to wait for one block to be read (via one read(2) call).
    #  Defaults to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-read_timeout Net::HTTP#read_timeout}.
    # @option options [Numeric] :http_ssl_timeout
    #  Sets the SSL timeout seconds. Defaults to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-ssl_timeout Net::HTTP#ssl_timeout}.
    # @option options [Integer] :http_verify_mode (OpenSSL::SSL::VERIFY_PEER)
    #  Sets the verify mode for SSL. Defaults to `OpenSSL::SSL::VERIFY_PEER`.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-verify_mode Net::HTTP#verify_mode}.
    # @option options [Numeric] :http_write_timeout
    #  The number of seconds to wait for one block to be written (via one write(2) call).
    #  Defaults to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-write_timeout Net::HTTP#write_timeout}.
    # @option options [Smithy::Client::LogFormatter] :log_formatter (Aws::Log::Formatter.default)
    #  The log formatter used by the logger.
    # @option options [Symbol] :log_level (:info)
    #  The log level to send messages to the logger at.
    # @option options [Logger] :logger
    #  The Logger instance to send log messages to. If this option is not set, logging is disabled.
    # @option options [String] :profile (default)
    #  Used when loading credentials from the shared config file and credentials file
    #  at ~/.aws/config and ~/.aws/credentials, respectively.  When not specified, 'default' is used.
    # @option options [Boolean] :raise_response_errors (true)
    #  When `true`, response errors are raised. When `false`, the error is placed on the
    #  output in the {Smithy::Client::Response#error error accessor}.
    # @option options [String] :region
    #  TODO
    # @option options [Integer] :request_min_compression_size_bytes (10240)
    #  The minimum size in bytes that triggers compression for request bodies.
    #  The value must be non-negative integer value between 0 and 10,485,780 bytes inclusive.
    # @option options [lambda] :retry_backoff (Smithy::Client::Retry::EXPONENTIAL_BACKOFF)
    #  A callable object that calculates a backoff delay for a retry attempt. The callable
    #  should accept a single argument, `attempts`, that represents the number of attempts
    #  that have been made. Used in the `standard` and `adaptive` retry strategies.
    # @option options [Integer] :retry_max_attempts (3)
    #  The maximum number attempts that will be made for a single request, including
    #  the initial attempt. Used in the `standard` and `adaptive` retry strategies.
    # @option options [String, Class] :retry_strategy ('standard')
    #  The retry strategy to use when retrying errors. This can be one of the following:
    #  * `standard` - A standardized retry strategy used by the AWS SDKs. This includes support
    #    for retry quotas, which limit the number of unsuccessful retries a client can make.
    #  * `adaptive` - An experimental retry strategy that includes all the functionality of the
    #    `standard` strategy along with automatic client side throttling. This is a provisional
    #    strategy that may change behavior in the future.
    #  * Any instance of a class that implements the following methods:
    #    - `acquire_initial_retry_token(token_scope)`
    #    - `refresh_retry_token(retry_token, error_info)`
    #    - `record_success(retry_token)`
    # @option options [String] :sdk_ua_app_id
    #  A unique and opaque application ID that is appended to the User-Agent header as app/sdk_ua_app_id.
    #  It should have a maximum length of 50. This variable is sourced from environment variable
    #  `AWS_SDK_UA_APP_ID` or the shared config profile attribute `sdk_ua_app_id`.
    # @option options [String] :secret_access_key
    # @option options [String] :session_token
    # @option options [Boolean] :stub_responses
    #  When `true`, the client will return stubbed responses instead of networking requests.
    #  By default fake responses are generated and returned. You can specify the response data
    #  to return or errors to raise by calling {Stubs#stub_responses}.
    #  @see Stubs
    # @option options [Boolean] :use_dual_stack_endpoint
    #  TODO
    # @option options [Boolean] :use_fips_endpoint
    #  TODO
    # @option options [Boolean] :validate_params (true)
    #  When `true`, request parameters are validated before sending the request.
    def initialize(*options)
      super
    end

    # <p>Returns information about a stream, including the current status of the stream, its Amazon Resource Name (ARN), the composition of its shards, and its corresponding DynamoDB table.</p>
    #          <note>
    #             <p>You can call <code>DescribeStream</code> at a maximum rate of 10 times per second.</p>
    #          </note>
    #          <p>Each shard in the stream has a <code>SequenceNumberRange</code> associated with it. If the
    #         <code>SequenceNumberRange</code> has a <code>StartingSequenceNumber</code> but no
    #         <code>EndingSequenceNumber</code>, then the shard is still open (able to receive more stream
    #       records). If both <code>StartingSequenceNumber</code> and <code>EndingSequenceNumber</code>
    #       are present, then that shard is closed and can no longer receive more data.</p>
    # @param [Hash, Types::DescribeStreamInput] params
    # @option params [String] :stream_arn
    #   <p>The Amazon Resource Name (ARN) for the stream.</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of shard objects to return. The upper limit is 100.</p>
    # @option params [String] :exclusive_start_shard_id
    #   <p>The shard ID of the first item that this operation will evaluate. Use the value that was
    #         returned for <code>LastEvaluatedShardId</code> in the previous operation. </p>
    # @option params [Types::ShardFilter] :shard_filter
    #   <p>This optional field contains the filter definition for the
    #               <code>DescribeStream</code> API.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     stream_arn: "StreamArn", # required
    #     limit: 1,
    #     exclusive_start_shard_id: "ShardId",
    #     shard_filter: {
    #       type: "CHILD_SHARDS" # One of: ["CHILD_SHARDS"],
    #       shard_id: "ShardId"
    #     }
    #   }
    #   options = {}
    #   response = client.describe_stream(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     stream_description: {
    #       stream_arn: "StreamArn",
    #       stream_label: "String",
    #       stream_status: "ENABLING" # One of: ["ENABLING", "ENABLED", "DISABLING", "DISABLED"],
    #       stream_view_type: "NEW_IMAGE" # One of: ["NEW_IMAGE", "OLD_IMAGE", "NEW_AND_OLD_IMAGES", "KEYS_ONLY"],
    #       creation_request_date_time: Time.now,
    #       table_name: "TableName",
    #       key_schema: [
    #         {
    #           attribute_name: "KeySchemaAttributeName", # required
    #           key_type: "HASH" # One of: ["HASH", "RANGE"], # required
    #         }
    #       ],
    #       shards: [
    #         {
    #           shard_id: "ShardId",
    #           sequence_number_range: {
    #             starting_sequence_number: "SequenceNumber",
    #             ending_sequence_number: "SequenceNumber"
    #           },
    #           parent_shard_id: "ShardId"
    #         }
    #       ],
    #       last_evaluated_shard_id: "ShardId"
    #     }
    #   }
    # @return [Types::DescribeStreamOutput]
    def describe_stream(params = {}, options = {})
      request = build_request(:describe_stream, params)
      request.send_request(options)
    end

    # <p>Retrieves the stream records from a given shard.</p>
    #          <p>Specify a shard iterator using the <code>ShardIterator</code> parameter. The shard iterator
    #       specifies the position in the shard from which you want to start reading stream records
    #       sequentially. If there are no stream records available in the portion of the shard that the
    #       iterator points to, <code>GetRecords</code> returns an empty list. Note that it might take
    #       multiple calls to get to a portion of the shard that contains stream records.</p>
    #          <note>
    #             <p>
    #                <code>GetRecords</code> can retrieve a maximum of 1 MB of data or 1000 stream records,
    #         whichever comes first.</p>
    #          </note>
    # @param [Hash, Types::GetRecordsInput] params
    # @option params [String] :shard_iterator
    #   <p>A shard iterator that was retrieved from a previous GetShardIterator operation. This iterator can be used to access the stream records in this shard.</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of records to return from the shard. The upper limit is 1000.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     shard_iterator: "ShardIterator", # required
    #     limit: 1
    #   }
    #   options = {}
    #   response = client.get_records(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     records: [
    #       {
    #         event_id: "String",
    #         event_name: "INSERT" # One of: ["INSERT", "MODIFY", "REMOVE"],
    #         event_version: "String",
    #         event_source: "String",
    #         aws_region: "String",
    #         dynamodb: {
    #           approximate_creation_date_time: Time.now,
    #           keys: {
    #             "AttributeName" => {
    #               # One of:
    #               s: "StringAttributeValue",
    #               n: "NumberAttributeValue",
    #               b: "data",
    #               ss: ["StringAttributeValue"],
    #               ns: ["NumberAttributeValue"],
    #               bs: ["data"],
    #               m: {
    #                 "AttributeName" => {
    #                   # recursive AttributeValue
    #                 }
    #               },
    #               l: [{
    #                 # recursive AttributeValue
    #               }],
    #               null: false,
    #               bool: false
    #             }
    #           },
    #           new_image: {
    #             "AttributeName" => {
    #               # One of:
    #               s: "StringAttributeValue",
    #               n: "NumberAttributeValue",
    #               b: "data",
    #               ss: ["StringAttributeValue"],
    #               ns: ["NumberAttributeValue"],
    #               bs: ["data"],
    #               m: {
    #                 "AttributeName" => {
    #                   # recursive AttributeValue
    #                 }
    #               },
    #               l: [{
    #                 # recursive AttributeValue
    #               }],
    #               null: false,
    #               bool: false
    #             }
    #           },
    #           old_image: {
    #             "AttributeName" => {
    #               # One of:
    #               s: "StringAttributeValue",
    #               n: "NumberAttributeValue",
    #               b: "data",
    #               ss: ["StringAttributeValue"],
    #               ns: ["NumberAttributeValue"],
    #               bs: ["data"],
    #               m: {
    #                 "AttributeName" => {
    #                   # recursive AttributeValue
    #                 }
    #               },
    #               l: [{
    #                 # recursive AttributeValue
    #               }],
    #               null: false,
    #               bool: false
    #             }
    #           },
    #           sequence_number: "SequenceNumber",
    #           size_bytes: 1,
    #           stream_view_type: "NEW_IMAGE" # One of: ["NEW_IMAGE", "OLD_IMAGE", "NEW_AND_OLD_IMAGES", "KEYS_ONLY"]
    #         },
    #         user_identity: {
    #           principal_id: "String",
    #           type: "String"
    #         }
    #       }
    #     ],
    #     next_shard_iterator: "ShardIterator"
    #   }
    # @return [Types::GetRecordsOutput]
    def get_records(params = {}, options = {})
      request = build_request(:get_records, params)
      request.send_request(options)
    end

    # <p>Returns a shard iterator. A shard iterator provides information
    #       about how to retrieve the stream records from within a shard.  Use
    #       the shard iterator in a subsequent 
    #       <code>GetRecords</code> request to read the stream records
    #       from the shard.</p>
    #          <note>
    #             <p>A shard iterator expires 15 minutes after it is returned to the requester.</p>
    #          </note>
    # @param [Hash, Types::GetShardIteratorInput] params
    # @option params [String] :stream_arn
    #   <p>The Amazon Resource Name (ARN) for the stream.</p>
    # @option params [String] :shard_id
    #   <p>The identifier of the shard. The iterator will be returned for this shard ID.</p>
    # @option params [String] :shard_iterator_type
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
    #            </ul>
    # @option params [String] :sequence_number
    #   <p>The sequence number of a stream record in the shard from which to start reading.</p>
    # @example To obtain a shard iterator for the provided stream ARN and shard ID
    #   # The following example returns a shard iterator for the provided stream ARN and shard ID.
    #   params = {
    #     stream_arn: "arn:aws:dynamodb:us-west-2:111122223333:table/Forum/stream/2015-05-20T20:51:10.252",
    #     shard_id: "00000001414576573621-f55eea83",
    #     shard_iterator_type: TRIM_HORIZON
    #   }
    #   options = {}
    #   response = client.get_shard_iterator(params, options)
    #   response.to_h #=>
    #   {
    #     shard_iterator: "arn:aws:dynamodb:us-west-2:111122223333:table/Forum/stream/2015-05-20T20:51:10.252|1|AAAAAAAAAAEvJp6D+zaQ...  <remaining characters omitted> ..."
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     stream_arn: "StreamArn", # required
    #     shard_id: "ShardId", # required
    #     shard_iterator_type: "TRIM_HORIZON" # One of: ["TRIM_HORIZON", "LATEST", "AT_SEQUENCE_NUMBER", "AFTER_SEQUENCE_NUMBER"], # required
    #     sequence_number: "SequenceNumber"
    #   }
    #   options = {}
    #   response = client.get_shard_iterator(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     shard_iterator: "ShardIterator"
    #   }
    # @return [Types::GetShardIteratorOutput]
    def get_shard_iterator(params = {}, options = {})
      request = build_request(:get_shard_iterator, params)
      request.send_request(options)
    end

    # <p>Returns an array of stream ARNs associated with the current account and endpoint. If the
    #         <code>TableName</code> parameter is present, then <code>ListStreams</code> will return only the
    #       streams ARNs for that table.</p>
    #          <note>
    #             <p>You can call <code>ListStreams</code> at a maximum rate of 5 times per second.</p>
    #          </note>
    # @param [Hash, Types::ListStreamsInput] params
    # @option params [String] :table_name
    #   <p>If this parameter is provided, then only the streams associated with this table name are returned.</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of streams to return. The upper limit is 100.</p>
    # @option params [String] :exclusive_start_stream_arn
    #   <p>The ARN (Amazon Resource Name) of the first item that this operation will evaluate. Use the
    #         value that was returned for <code>LastEvaluatedStreamArn</code> in the previous operation.
    #       </p>
    # @example To list all of the stream ARNs 
    #   # The following example lists all of the stream ARNs.
    #   params = {}
    #   options = {}
    #   response = client.list_streams(params, options)
    #   response.to_h #=>
    #   {
    #     streams: [
    #       {
    #         stream_arn: "arn:aws:dynamodb:us-wesst-2:111122223333:table/Forum/stream/2015-05-20T20:51:10.252",
    #         table_name: "Forum",
    #         stream_label: "2015-05-20T20:51:10.252"
    #       },
    #       {
    #         stream_arn: "arn:aws:dynamodb:us-west-2:111122223333:table/Forum/stream/2015-05-20T20:50:02.714",
    #         table_name: "Forum",
    #         stream_label: "2015-05-20T20:50:02.714"
    #       },
    #       {
    #         stream_arn: "arn:aws:dynamodb:us-west-2:111122223333:table/Forum/stream/2015-05-19T23:03:50.641",
    #         table_name: "Forum",
    #         stream_label: "2015-05-19T23:03:50.641"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     table_name: "TableName",
    #     limit: 1,
    #     exclusive_start_stream_arn: "StreamArn"
    #   }
    #   options = {}
    #   response = client.list_streams(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     streams: [
    #       {
    #         stream_arn: "StreamArn",
    #         table_name: "TableName",
    #         stream_label: "String"
    #       }
    #     ],
    #     last_evaluated_stream_arn: "StreamArn"
    #   }
    # @return [Types::ListStreamsOutput]
    def list_streams(params = {}, options = {})
      request = build_request(:list_streams, params)
      request.send_request(options)
    end

    # Polls an API operation until a resource enters a desired state.
    #
    # ## Basic Usage
    #
    # A waiter will call an API operation until:
    #
    # * It is successful
    # * It enters a terminal state
    # * It reaches the maximum wait time allowed
    #
    # In between attempts, the waiter will sleep.
    #
    #     # polls in a loop, sleeping between attempts
    #     client.wait_until(waiter_name, params, options)
    #
    # ## Configuration
    #
    # You must configure the maximum amount of time in seconds a
    # waiter should wait for. You may also configure the minimum
    # and maximum amount of time in seconds to delay between
    # retries. You can pass these configuration as the final
    # arguments hash.
    #
    #     weather = Weather::Client.new
    #
    #     # poll for a maximum of 25 seconds
    #     weather.wait_until(:forecast_exists, { forecast_id: '1' }, {
    #       max_wait_time: 25,
    #       min_delay: 2,
    #       max_delay: 10
    #     })
    #
    # ## Handling Errors
    #
    # When a waiter is unsuccessful, it will raise an error.
    # All the failure errors extend from
    # {Smithy::Client::Waiters::WaiterFailed}.
    #
    #     weather = Weather::Client.new
    #     begin
    #       weather.wait_until(:forecast_exists, { forecast_id: '1' }, max_wait_time: 60)
    #     rescue Smithy::Client::Waiters::WaiterFailed
    #       # resource did not enter the desired state in time
    #     end
    #
    # @param [Symbol] waiter_name
    # @param [Hash] params ({})
    # @param [Hash] options ({})
    # @option options [Integer] :max_wait_time
    # @option options [Integer] :min_delay
    # @option options [Integer] :max_delay
    # @return [nil] Returns `nil` if the waiter was successful.
    # @raise [FailureStateError] Raised when the waiter terminates
    #   because the waiter has entered a state that it will not transition
    #   out of, preventing success.
    # @raise [MaxWaitTimeExceededError] Raised when the configured
    #   maximum wait time is reached and the waiter is not yet successful.
    # @raise [UnexpectedError] Raised when an error that is not
    #   expected is encountered while polling for a resource.
    # @raise [NoSuchWaiterError] Raised when you request to wait
    #   for an unknown state.
    def wait_until(waiter_name, params = {}, options = {})
      waiter(waiter_name, options).wait(params)
    end

    # @api private
    def build_request(operation_name, params)
      handlers = @handlers.for(operation_name)
      context = Smithy::Client::HandlerContext.new(
        operation_name: operation_name,
        operation: config.service.operation(operation_name),
        client: self,
        config: config,
        params: params
      )
      context[:gem_name] = 'aws-sdk-dynamodbstreams'
      context[:gem_version] = '2.0.0.pre0'
      Smithy::Client::Request.new(handlers: handlers, context: context)
    end

    private

    def waiters
      {}
    end

    class << self
      # @api private
      attr_reader :identifier

      # @api private
      def auth_parameters
        AuthParameters
      end

      # @api private
      def auth_resolver
        AuthResolver
      end

      # @api private
      def errors_module
        Errors
      end
    end
  end
end
