# frozen_string_literal: true

# This is generated code!

require_relative 'plugins/endpoint'
require 'smithy-client/plugins/checksum_required'
require 'smithy-client/plugins/content_length'
require 'smithy-client/plugins/default_params'
require 'smithy-client/plugins/host_prefix'
require 'smithy-client/plugins/idempotency_token'
require 'smithy-client/plugins/logging'
require 'smithy-client/plugins/transport'
require 'smithy-client/plugins/pageable_response'
require 'smithy-client/plugins/param_converter'
require 'smithy-client/plugins/param_validator'
require 'smithy-client/plugins/protocol'
require 'smithy-client/plugins/raise_response_errors'
require 'smithy-client/plugins/request_compression'
require 'smithy-client/plugins/resolve_auth'
require 'smithy-client/plugins/response_target'
require 'smithy-client/plugins/sign_requests'
require 'smithy-client/plugins/transfer_encoding'
require 'aws-sdk-core/plugins/global_configuration'
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/invocation_id'
require 'aws-sdk-core/plugins/recursion_detection'
require 'aws-sdk-core/plugins/retry_errors'
require 'aws-sdk-core/plugins/stub_responses'
require 'aws-sdk-core/plugins/regional_endpoints'
require 'aws-sdk-core/plugins/sigv4'
require 'aws-sdk-kinesis/plugins/custom_paginators'
require 'aws-sdk-core/json_rpc'

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:kinesis)

module Aws::Kinesis
  # An API client for Aws::Kinesis.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::Kinesis20131202
    @identifier = :kinesis

    add_plugin(::Aws::Kinesis::Plugins::Endpoint)
    add_plugin(Smithy::Client::Plugins::ChecksumRequired)
    add_plugin(Smithy::Client::Plugins::ContentLength)
    add_plugin(Smithy::Client::Plugins::DefaultParams)
    add_plugin(Smithy::Client::Plugins::HostPrefix)
    add_plugin(Smithy::Client::Plugins::IdempotencyToken)
    add_plugin(Smithy::Client::Plugins::Logging)
    add_plugin(Smithy::Client::Plugins::Transport)
    add_plugin(Smithy::Client::Plugins::PageableResponse)
    add_plugin(Smithy::Client::Plugins::ParamConverter)
    add_plugin(Smithy::Client::Plugins::ParamValidator)
    add_plugin(Smithy::Client::Plugins::Protocol)
    add_plugin(Smithy::Client::Plugins::RaiseResponseErrors)
    add_plugin(Smithy::Client::Plugins::RequestCompression)
    add_plugin(Smithy::Client::Plugins::ResolveAuth)
    add_plugin(Smithy::Client::Plugins::ResponseTarget)
    add_plugin(Smithy::Client::Plugins::SignRequests)
    add_plugin(Smithy::Client::Plugins::TransferEncoding)
    add_plugin(Aws::Core::Plugins::GlobalConfiguration)
    add_plugin(Aws::Core::Plugins::SharedConfig)
    add_plugin(Aws::Core::Plugins::UserAgent)
    add_plugin(Aws::Core::Plugins::InvocationId)
    add_plugin(Aws::Core::Plugins::RecursionDetection)
    add_plugin(Aws::Core::Plugins::RetryErrors)
    add_plugin(Aws::Core::Plugins::StubResponses)
    add_plugin(Aws::Core::Plugins::RegionalEndpoints)
    add_plugin(Aws::Core::Plugins::SigV4)
    add_plugin(Aws::Kinesis::Plugins::CustomPaginators)

    # @param options [Hash] Client options
    # @option options [String] :access_key_id
    # @option options [String] :account_id
    # @option options [String] :account_id_endpoint_mode
    #  The account ID endpoint mode to use. This can be one of the following values:
    #  * `preferred` - (default) Use the account ID endpoint if available, otherwise use the standard endpoint.
    #  * `disabled` - Never use the account ID endpoint, only use the standard endpoint.
    #  * `required` - Always use the account ID endpoint. If the account ID cannot be retrieved from credentials, an error is raised.
    # @option options [Boolean] :adaptive_retry_wait_to_fill (true)
    #  When true, the request will sleep until there is sufficient client side capacity to retry
    #  the request. When false, the request will raise a `CapacityNotAvailableError` and will
    #  not retry instead of sleeping.
    # @option options [#resolve(context)] :auth_resolver (AuthResolver.new)
    #  An object that resolves authentication schemes for request signing.
    # @option options [Array<String>] :auth_scheme_preference
    #  An ordered list of preferred authentication schemes to use when making a request.
    #  The items in the list must be a fully qualified scheme IDs, such as `smithy.api#httpBearerAuth`.
    # @option options [Numeric] :connect_timeout
    #  The number of seconds to wait when opening a connection before timing out.
    #  Defaults to `nil`, which uses the transport's default; the default
    #  Net::HTTP transport uses 60 seconds.
    # @option options [Boolean] :convert_params (true)
    #  When `true`, request parameters are coerced into the required types.
    # @option options [#identity] :credentials_provider
    #  The credentials provider used to resolve credentials. Any object that responds to `#identity`
    #  and returns a {Aws::Core::Credentials}.
    # @option options [Boolean] :disable_host_prefix_injection
    #  When `true`, the SDK will not prepend the modeled host prefix to the endpoint.
    # @option options [Boolean] :disable_request_compression
    #  When `true`, the request body will not be compressed for supported operations.
    # @option options [String] :endpoint
    #  The endpoint to send requests to.
    #  The endpoint should be a URI formatted like "http://example.com:123"'
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::Kinesis::EndpointProvider)
    #  An object that provides an endpoint to use for the request.
    # @option options [URI::HTTP, String] :http_proxy
    #  A proxy to send requests through. Formatted like 'http://proxy.com:123'.
    # @option options [Boolean] :http_wire_trace
    #  When `true`, HTTP wire trace output is sent to the configured logger.
    # @option options [Smithy::Client::LogFormatter] :log_formatter (Aws::Log::Formatter.default)
    #  The log formatter used by the logger.
    # @option options [Symbol] :log_level (:info)
    #  The log level to send messages to the logger at.
    # @option options [Logger] :logger
    #  The Logger instance to send log messages to. If this option is not set, logging is disabled.
    # @option options [Integer] :max_attempts (3)
    #  The maximum number attempts that will be made for a single request, including
    #  the initial attempt.
    # @option options [String] :profile (default)
    #  Used when loading credentials from the shared config file and credentials file
    #  at ~/.aws/config and ~/.aws/credentials, respectively.  When not specified, 'default' is used.
    # @option options [Symbol, Object] :protocol
    #  The protocol used for request serialization and response deserialization. Defaults to the service default protocol. May be a Symbol naming a supported protocol, or a custom object implementing the protocol interface.
    #  Supported protocols: +:json_rpc+ (defaults to +:json_rpc+).
    # @option options [Boolean] :raise_response_errors (true)
    #  When `true`, response errors are raised. When `false`, the error is placed on the
    #  output in the {Smithy::Client::Response#error error accessor}.
    # @option options [Numeric] :read_timeout
    #  The number of seconds to wait for data to be read before timing out.
    #  Defaults to `nil`, which uses the transport's default; the default
    #  Net::HTTP transport uses 60 seconds.
    # @option options [String] :region
    #  The AWS region to connect to. The configured `:region` is used to determine the service `:endpoint`.
    #  When not provided, a default region is searched for in the following locations:
    #  * `Aws.config[:region]`
    #  * `ENV['AWS_REGION']`
    #  * `ENV['AWS_DEFAULT_REGION']`
    #  * `~/.aws/credentials` as `region` under a profile
    #  * `~/.aws/config` as `region` under a profile
    # @option options [Integer] :request_min_compression_size_bytes (10240)
    #  The minimum size in bytes that triggers compression for request bodies.
    #  The value must be non-negative integer value between 0 and 10,485,780 bytes inclusive.
    # @option options [String] :retry_mode (standard)
    #  Specifies which retry algorithm to use. Values are:
    #  
    #  * `standard` - A standardized set of retry rules across the AWS SDKs.
    #    This includes support for retry quotas, which limit the number of
    #    unsuccessful retries a client can make. This is the default
    #    value if no retry mode is provided.
    #  
    #  * `adaptive` - A retry mode that includes all the functionality of
    #    `standard` mode along with automatic client side throttling.
    # @option options [Object] :retry_strategy
    #  The retry strategy used by the client. If not provided, a default strategy is built
    #  based on `:retry_mode` — either `Standard` or `Adaptive`.
    #  
    #  A custom strategy must respond to:
    #  * `#acquire_initial_retry_token` - returns a token
    #  * `#refresh_retry_token(token, error_info)` - returns a token or nil
    #  * `#record_success(token)` - records a successful request
    #  * `#request_bookkeeping(error_info = nil)` - updates internal state
    # @option options [String] :sdk_ua_app_id
    #  A unique and opaque application ID that is appended to the User-Agent header as app/sdk_ua_app_id.
    #  It should have a maximum length of 50. This variable is sourced from environment variable
    #  `AWS_SDK_UA_APP_ID` or the shared config profile attribute `sdk_ua_app_id`.
    # @option options [String] :secret_access_key
    # @option options [String] :session_token
    # @option options [String] :ssl_ca_bundle
    #  The path to a CA certificate bundle file in PEM format used to verify peer
    #  certificates. Defaults to `nil`, which uses the transport's default trust store.
    # @option options [String] :ssl_ca_directory
    #  The path to a directory of CA certificates in PEM format used to verify peer
    #  certificates. Defaults to `nil`, which uses the transport's default trust store.
    # @option options [OpenSSL::X509::Store] :ssl_ca_store
    #  An in-memory TLS trust store used to verify peer certificates. Defaults to `nil`,
    #  which uses the transport's default trust store.
    # @option options [Boolean] :ssl_verify_peer (true)
    #  When `true` (default), the peer's TLS certificate is verified. Disable only
    #  for debugging, as it is insecure.
    # @option options [Boolean] :stub_responses
    #  When `true`, the client will return stubbed responses instead of networking requests.
    #  By default fake responses are generated and returned. You can specify the response data
    #  to return or errors to raise by calling {Smithy::Client::Stubs#stub_responses}.
    # @option options [Smithy::Client::NetHTTP::Transport] :transport
    #  The transport used to send requests. Defaults to an HTTP/1.1 transport based on
    #  Net::HTTP ({Smithy::Client::NetHTTP::Transport}), constructed with the resolved
    #  common client transport options. Supply a custom object responding to
    #  `#transmit(request)` (returning a stream) to swap the transport, or a
    #  directly-constructed `NetHTTP::Transport` to set Net::HTTP-specific knobs. A
    #  caller-supplied transport instance is used as-is.
    # @option options [Boolean] :use_dualstack_endpoint
    #  When set to `true`, dualstack enabled endpoints (with `.aws` TLD) will be used if available.
    #  This option can also be configured in the following locations:
    #  * `ENV['AWS_USE_DUALSTACK_ENDPOINT']`
    #  * `~/.aws/credentials` as `use_dualstack_endpoint` under a profile
    #  * `~/.aws/config` as `use_dualstack_endpoint` under a profile
    # @option options [Boolean] :use_fips_endpoint
    #  When set to `true`, FIPS compatible endpoints will be used if available.
    #  This option can also be configured in the following locations:
    #  * `ENV['AWS_USE_FIPS_ENDPOINT']`
    #  * `~/.aws/credentials` as `use_fips_endpoint` under a profile
    #  * `~/.aws/config` as `use_fips_endpoint` under a profile
    # @option options [Boolean] :validate_params (true)
    #  When `true`, request parameters are validated before sending the request.
    def initialize(*options)
      super
    end

    # <p>Adds or updates tags for the specified Kinesis data stream. You can assign up to 50
    #             tags to a data stream.</p>
    #          <note>
    #             <p>When invoking this API, you must use either the <code>StreamARN</code> or the
    #                     <code>StreamName</code> parameter, or both. It is recommended that you use the
    #                     <code>StreamARN</code> input parameter when you invoke this API.</p>
    #          </note>
    #          <p>If tags have already been assigned to the stream, <code>AddTagsToStream</code>
    #             overwrites any existing tags that correspond to the specified tag keys.</p>
    #          <p>
    #             <a>AddTagsToStream</a> has a limit of five transactions per second per
    #             account.</p>
    # @param [Hash, Types::AddTagsToStreamInput] params
    # @option params [String] :stream_name
    #   <p>The name of the stream.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A set of up to 50 key-value pairs to use to create the tags. A tag consists of a required key and an optional value. You can add up to 50 tags per resource.</p>
    # @option params [String] :stream_arn
    #   <p>The ARN of the stream.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     stream_name: "StreamName",
    #     tags: { # required
    #       "TagKey" => "TagValue"
    #     },
    #     stream_arn: "StreamARN"
    #   }
    #   options = {}
    #   response = client.add_tags_to_stream(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def add_tags_to_stream(params = {}, options = {})
      request = build_request(:add_tags_to_stream, params)
      request.send_request(options)
    end

    # <p>Creates a Kinesis data stream. A stream captures and transports data records that are
    #             continuously emitted from different data sources or <i>producers</i>.
    #             Scale-out within a stream is explicitly supported by means of shards, which are uniquely
    #             identified groups of data records in a stream.</p>
    #          <p>You can create your data stream using either on-demand or provisioned capacity mode.
    #             Data streams with an on-demand mode require no capacity planning and automatically scale
    #             to handle gigabytes of write and read throughput per minute. With the on-demand mode,
    #             Kinesis Data Streams automatically manages the shards in order to provide the necessary
    #             throughput. For the data streams with a provisioned mode, you must specify the number of
    #             shards for the data stream. Each shard can support reads up to five transactions per
    #             second, up to a maximum data read total of 2 MiB per second. Each shard can support
    #             writes up to 1,000 records per second, up to a maximum data write total of 1 MiB per
    #             second. If the amount of data input increases or decreases, you can add or remove
    #             shards.</p>
    #          <p>The stream name identifies the stream. The name is scoped to the Amazon Web Services
    #             account used by the application. It is also scoped by Amazon Web Services Region. That
    #             is, two streams in two different accounts can have the same name, and two streams in the
    #             same account, but in two different Regions, can have the same name.</p>
    #          <p>
    #             <code>CreateStream</code> is an asynchronous operation. Upon receiving a
    #                 <code>CreateStream</code> request, Kinesis Data Streams immediately returns and sets
    #             the stream status to <code>CREATING</code>. After the stream is created, Kinesis Data
    #             Streams sets the stream status to <code>ACTIVE</code>. You should perform read and write
    #             operations only on an <code>ACTIVE</code> stream. </p>
    #          <p>You receive a <code>LimitExceededException</code> when making a
    #                 <code>CreateStream</code> request when you try to do one of the following:</p>
    #          <ul>
    #             <li>
    #                <p>Have more than five streams in the <code>CREATING</code> state at any point in
    #                     time.</p>
    #             </li>
    #             <li>
    #                <p>Create more shards than are authorized for your account.</p>
    #             </li>
    #          </ul>
    #          <p>For the default shard limit for an Amazon Web Services account, see <a href="https://docs.aws.amazon.com/kinesis/latest/dev/service-sizes-and-limits.html">Amazon
    #                 Kinesis Data Streams Limits</a> in the <i>Amazon Kinesis Data Streams
    #                 Developer Guide</i>. To increase this limit, <a href="https://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html">contact Amazon Web Services
    #                 Support</a>.</p>
    #          <p>You can use <a>DescribeStreamSummary</a> to check the stream status, which
    #             is returned in <code>StreamStatus</code>.</p>
    #          <p>
    #             <a>CreateStream</a> has a limit of five transactions per second per
    #             account.</p>
    #          <p>You can add tags to the stream when making a <code>CreateStream</code> request by setting the <code>Tags</code> parameter. If you pass the <code>Tags</code> parameter, in addition to having the <code>kinesis:CreateStream</code> permission, you must also have the <code>kinesis:AddTagsToStream</code> permission for the stream that will be created. The <code>kinesis:TagResource</code> permission won’t work to tag streams on creation. Tags will take effect from the <code>CREATING</code> status of the stream, but you can't make any updates to the tags until the stream is in <code>ACTIVE</code> state.</p>
    # @param [Hash, Types::CreateStreamInput] params
    # @option params [String] :stream_name
    #   <p>A name to identify the stream. The stream name is scoped to the Amazon Web Services
    #               account used by the application that creates the stream. It is also scoped by Amazon Web Services Region. That is, two streams in two different Amazon Web Services accounts
    #               can have the same name. Two streams in the same Amazon Web Services account but in two
    #               different Regions can also have the same name.</p>
    # @option params [Integer] :shard_count
    #   <p>The number of shards that the stream will use. The throughput of the stream is a
    #               function of the number of shards; more shards are required for greater provisioned
    #               throughput.</p>
    # @option params [Types::StreamModeDetails] :stream_mode_details
    #   <p> Indicates the capacity mode of the data stream. Currently, in Kinesis Data Streams,
    #               you can choose between an <b>on-demand</b> capacity mode and a
    #                   <b>provisioned</b> capacity mode for your data
    #               streams.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A set of up to 50 key-value pairs to use to create the tags. A tag consists of a required key and an optional value.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     stream_name: "StreamName", # required
    #     shard_count: 1,
    #     stream_mode_details: {
    #       stream_mode: "PROVISIONED" # One of: ["PROVISIONED", "ON_DEMAND"], # required
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_stream(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def create_stream(params = {}, options = {})
      request = build_request(:create_stream, params)
      request.send_request(options)
    end

    # <p>Decreases the Kinesis data stream's retention period, which is the length of time data
    #             records are accessible after they are added to the stream. The minimum value of a
    #             stream's retention period is 24 hours.</p>
    #          <note>
    #             <p>When invoking this API, you must use either the <code>StreamARN</code> or the
    #                     <code>StreamName</code> parameter, or both. It is recommended that you use the
    #                     <code>StreamARN</code> input parameter when you invoke this API.</p>
    #          </note>
    #          <p>This operation may result in lost data. For example, if the stream's retention period
    #             is 48 hours and is decreased to 24 hours, any data already in the stream that is older
    #             than 24 hours is inaccessible.</p>
    # @param [Hash, Types::DecreaseStreamRetentionPeriodInput] params
    # @option params [String] :stream_name
    #   <p>The name of the stream to modify.</p>
    # @option params [Integer] :retention_period_hours
    #   <p>The new retention period of the stream, in hours. Must be less than the current
    #               retention period.</p>
    # @option params [String] :stream_arn
    #   <p>The ARN of the stream.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     stream_name: "StreamName",
    #     retention_period_hours: 1, # required
    #     stream_arn: "StreamARN"
    #   }
    #   options = {}
    #   response = client.decrease_stream_retention_period(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def decrease_stream_retention_period(params = {}, options = {})
      request = build_request(:decrease_stream_retention_period, params)
      request.send_request(options)
    end

    # <p>Delete a policy for the specified data stream or consumer. Request patterns can be one of the following:</p>
    #          <ul>
    #             <li>
    #                <p>Data stream pattern: <code>arn:aws.*:kinesis:.*:\d{12}:.*stream/\S+</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>Consumer pattern: <code>^(arn):aws.*:kinesis:.*:\d{12}:.*stream\/[a-zA-Z0-9_.-]+\/consumer\/[a-zA-Z0-9_.-]+:[0-9]+</code>
    #                </p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::DeleteResourcePolicyInput] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the data stream or consumer.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceARN", # required
    #   }
    #   options = {}
    #   response = client.delete_resource_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_resource_policy(params = {}, options = {})
      request = build_request(:delete_resource_policy, params)
      request.send_request(options)
    end

    # <p>Deletes a Kinesis data stream and all its shards and data. You must shut down any
    #             applications that are operating on the stream before you delete the stream. If an
    #             application attempts to operate on a deleted stream, it receives the exception
    #                 <code>ResourceNotFoundException</code>.</p>
    #          <note>
    #             <p>When invoking this API, you must use either the <code>StreamARN</code> or the
    #                     <code>StreamName</code> parameter, or both. It is recommended that you use the
    #                     <code>StreamARN</code> input parameter when you invoke this API.</p>
    #          </note>
    #          <p>If the stream is in the <code>ACTIVE</code> state, you can delete it. After a
    #                 <code>DeleteStream</code> request, the specified stream is in the
    #                 <code>DELETING</code> state until Kinesis Data Streams completes the
    #             deletion.</p>
    #          <p>
    #             <b>Note:</b> Kinesis Data Streams might continue to accept
    #             data read and write operations, such as <a>PutRecord</a>, <a>PutRecords</a>, and <a>GetRecords</a>, on a stream in the
    #                 <code>DELETING</code> state until the stream deletion is complete.</p>
    #          <p>When you delete a stream, any shards in that stream are also deleted, and any tags are
    #             dissociated from the stream.</p>
    #          <p>You can use the <a>DescribeStreamSummary</a> operation to check the state
    #             of the stream, which is returned in <code>StreamStatus</code>.</p>
    #          <p>
    #             <a>DeleteStream</a> has a limit of five transactions per second per
    #             account.</p>
    # @param [Hash, Types::DeleteStreamInput] params
    # @option params [String] :stream_name
    #   <p>The name of the stream to delete.</p>
    # @option params [Boolean] :enforce_consumer_deletion
    #   <p>If this parameter is unset (<code>null</code>) or if you set it to <code>false</code>,
    #               and the stream has registered consumers, the call to <code>DeleteStream</code> fails
    #               with a <code>ResourceInUseException</code>. </p>
    # @option params [String] :stream_arn
    #   <p>The ARN of the stream.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     stream_name: "StreamName",
    #     enforce_consumer_deletion: false,
    #     stream_arn: "StreamARN"
    #   }
    #   options = {}
    #   response = client.delete_stream(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_stream(params = {}, options = {})
      request = build_request(:delete_stream, params)
      request.send_request(options)
    end

    # <p>To deregister a consumer, provide its ARN. Alternatively, you can provide the ARN of
    #             the data stream and the name you gave the consumer when you registered it. You may also
    #             provide all three parameters, as long as they don't conflict with each other. If you
    #             don't know the name or ARN of the consumer that you want to deregister, you can use the
    #                 <a>ListStreamConsumers</a> operation to get a list of the descriptions of
    #             all the consumers that are currently registered with a given data stream. The
    #             description of a consumer contains its name and ARN.</p>
    #          <p>This operation has a limit of five transactions per second per stream.</p>
    # @param [Hash, Types::DeregisterStreamConsumerInput] params
    # @option params [String] :stream_arn
    #   <p>The ARN of the Kinesis data stream that the consumer is registered with. For more
    #               information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-kinesis-streams">Amazon Resource Names (ARNs) and Amazon Web Services Service
    #               Namespaces</a>.</p>
    # @option params [String] :consumer_name
    #   <p>The name that you gave to the consumer.</p>
    # @option params [String] :consumer_arn
    #   <p>The ARN returned by Kinesis Data Streams when you registered the consumer. If you
    #               don't know the ARN of the consumer that you want to deregister, you can use the
    #               ListStreamConsumers operation to get a list of the descriptions of all the consumers
    #               that are currently registered with a given data stream. The description of a consumer
    #               contains its ARN.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     stream_arn: "StreamARN",
    #     consumer_name: "ConsumerName",
    #     consumer_arn: "ConsumerARN"
    #   }
    #   options = {}
    #   response = client.deregister_stream_consumer(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def deregister_stream_consumer(params = {}, options = {})
      request = build_request(:deregister_stream_consumer, params)
      request.send_request(options)
    end

    # <p>Describes the shard limits and usage for the account.</p>
    #          <p>If you update your account limits, the old limits might be returned for a few
    #             minutes.</p>
    #          <p>This operation has a limit of one transaction per second per account.</p>
    # @param [Hash, Types::DescribeLimitsInput] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.describe_limits(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     shard_limit: 1, # required
    #     open_shard_count: 1, # required
    #     on_demand_stream_count: 1, # required
    #     on_demand_stream_count_limit: 1, # required
    #   }
    # @return [Types::DescribeLimitsOutput]
    def describe_limits(params = {}, options = {})
      request = build_request(:describe_limits, params)
      request.send_request(options)
    end

    # <p>Describes the specified Kinesis data stream.</p>
    #          <note>
    #             <p>This API has been revised. It's highly recommended that you use the <a>DescribeStreamSummary</a> API to get a summarized description of the
    #                 specified Kinesis data stream and the <a>ListShards</a> API to list the
    #                 shards in a specified data stream and obtain information about each shard. </p>
    #          </note>
    #          <note>
    #             <p>When invoking this API, you must use either the <code>StreamARN</code> or the
    #                     <code>StreamName</code> parameter, or both. It is recommended that you use the
    #                     <code>StreamARN</code> input parameter when you invoke this API.</p>
    #          </note>
    #          <p>The information returned includes the stream name, Amazon Resource Name (ARN),
    #             creation time, enhanced metric configuration, and shard map. The shard map is an array
    #             of shard objects. For each shard object, there is the hash key and sequence number
    #             ranges that the shard spans, and the IDs of any earlier shards that played in a role in
    #             creating the shard. Every record ingested in the stream is identified by a sequence
    #             number, which is assigned when the record is put into the stream.</p>
    #          <p>You can limit the number of shards returned by each call. For more information, see
    #                 <a href="https://docs.aws.amazon.com/kinesis/latest/dev/kinesis-using-sdk-java-retrieve-shards.html">Retrieving
    #                 Shards from a Stream</a> in the <i>Amazon Kinesis Data Streams Developer
    #                 Guide</i>.</p>
    #          <p>There are no guarantees about the chronological order shards returned. To process
    #             shards in chronological order, use the ID of the parent shard to track the lineage to
    #             the oldest shard.</p>
    #          <p>This operation has a limit of 10 transactions per second per account.</p>
    # @param [Hash, Types::DescribeStreamInput] params
    # @option params [String] :stream_name
    #   <p>The name of the stream to describe.</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of shards to return in a single call. The default value is 100. If
    #               you specify a value greater than 100, at most 100 results are returned.</p>
    # @option params [String] :exclusive_start_shard_id
    #   <p>The shard ID of the shard to start with.</p>
    #            <p>Specify this parameter to indicate that you want to describe the stream starting with
    #               the shard whose ID immediately follows <code>ExclusiveStartShardId</code>.</p>
    #            <p>If you don't specify this parameter, the default behavior for
    #                   <code>DescribeStream</code> is to describe the stream starting with the first shard
    #               in the stream.</p>
    # @option params [String] :stream_arn
    #   <p>The ARN of the stream.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     stream_name: "StreamName",
    #     limit: 1,
    #     exclusive_start_shard_id: "ShardId",
    #     stream_arn: "StreamARN"
    #   }
    #   options = {}
    #   response = client.describe_stream(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     stream_description: { # required
    #       stream_name: "StreamName", # required
    #       stream_arn: "StreamARN", # required
    #       stream_status: "CREATING" # One of: ["CREATING", "DELETING", "ACTIVE", "UPDATING"], # required
    #       stream_mode_details: {
    #         stream_mode: "PROVISIONED" # One of: ["PROVISIONED", "ON_DEMAND"], # required
    #       },
    #       shards: [ # required
    #         {
    #           shard_id: "ShardId", # required
    #           parent_shard_id: "ShardId",
    #           adjacent_parent_shard_id: "ShardId",
    #           hash_key_range: { # required
    #             starting_hash_key: "HashKey", # required
    #             ending_hash_key: "HashKey", # required
    #           },
    #           sequence_number_range: { # required
    #             starting_sequence_number: "SequenceNumber", # required
    #             ending_sequence_number: "SequenceNumber"
    #           }
    #         }
    #       ],
    #       has_more_shards: false, # required
    #       retention_period_hours: 1, # required
    #       stream_creation_timestamp: Time.now, # required
    #       enhanced_monitoring: [ # required
    #         {
    #           shard_level_metrics: ["IncomingBytes" # One of: ["IncomingBytes", "IncomingRecords", "OutgoingBytes", "OutgoingRecords", "WriteProvisionedThroughputExceeded", "ReadProvisionedThroughputExceeded", "IteratorAgeMilliseconds", "ALL"]]
    #         }
    #       ],
    #       encryption_type: "NONE" # One of: ["NONE", "KMS"],
    #       key_id: "KeyId"
    #     }
    #   }
    # @return [Types::DescribeStreamOutput]
    def describe_stream(params = {}, options = {})
      request = build_request(:describe_stream, params)
      request.send_request(options)
    end

    # <p>To get the description of a registered consumer, provide the ARN of the consumer.
    #             Alternatively, you can provide the ARN of the data stream and the name you gave the
    #             consumer when you registered it. You may also provide all three parameters, as long as
    #             they don't conflict with each other. If you don't know the name or ARN of the consumer
    #             that you want to describe, you can use the <a>ListStreamConsumers</a>
    #             operation to get a list of the descriptions of all the consumers that are currently
    #             registered with a given data stream.</p>
    #          <p>This operation has a limit of 20 transactions per second per stream.</p>
    #          <note>
    #             <p>When making a cross-account call with <code>DescribeStreamConsumer</code>, make sure to provide the ARN of the consumer.  </p>
    #          </note>
    # @param [Hash, Types::DescribeStreamConsumerInput] params
    # @option params [String] :stream_arn
    #   <p>The ARN of the Kinesis data stream that the consumer is registered with. For more
    #               information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-kinesis-streams">Amazon Resource Names (ARNs) and Amazon Web Services Service
    #               Namespaces</a>.</p>
    # @option params [String] :consumer_name
    #   <p>The name that you gave to the consumer.</p>
    # @option params [String] :consumer_arn
    #   <p>The ARN returned by Kinesis Data Streams when you registered the consumer.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     stream_arn: "StreamARN",
    #     consumer_name: "ConsumerName",
    #     consumer_arn: "ConsumerARN"
    #   }
    #   options = {}
    #   response = client.describe_stream_consumer(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     consumer_description: { # required
    #       consumer_name: "ConsumerName", # required
    #       consumer_arn: "ConsumerARN", # required
    #       consumer_status: "CREATING" # One of: ["CREATING", "DELETING", "ACTIVE"], # required
    #       consumer_creation_timestamp: Time.now, # required
    #       stream_arn: "StreamARN", # required
    #     }
    #   }
    # @return [Types::DescribeStreamConsumerOutput]
    def describe_stream_consumer(params = {}, options = {})
      request = build_request(:describe_stream_consumer, params)
      request.send_request(options)
    end

    # <p>Provides a summarized description of the specified Kinesis data stream without the
    #             shard list.</p>
    #          <note>
    #             <p>When invoking this API, you must use either the <code>StreamARN</code> or the
    #                     <code>StreamName</code> parameter, or both. It is recommended that you use the
    #                     <code>StreamARN</code> input parameter when you invoke this API.</p>
    #          </note>
    #          <p>The information returned includes the stream name, Amazon Resource Name (ARN), status,
    #             record retention period, approximate creation time, monitoring, encryption details, and
    #             open shard count. </p>
    #          <p>
    #             <a>DescribeStreamSummary</a> has a limit of 20 transactions per second per
    #             account.</p>
    # @param [Hash, Types::DescribeStreamSummaryInput] params
    # @option params [String] :stream_name
    #   <p>The name of the stream to describe.</p>
    # @option params [String] :stream_arn
    #   <p>The ARN of the stream.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     stream_name: "StreamName",
    #     stream_arn: "StreamARN"
    #   }
    #   options = {}
    #   response = client.describe_stream_summary(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     stream_description_summary: { # required
    #       stream_name: "StreamName", # required
    #       stream_arn: "StreamARN", # required
    #       stream_status: "CREATING" # One of: ["CREATING", "DELETING", "ACTIVE", "UPDATING"], # required
    #       stream_mode_details: {
    #         stream_mode: "PROVISIONED" # One of: ["PROVISIONED", "ON_DEMAND"], # required
    #       },
    #       retention_period_hours: 1, # required
    #       stream_creation_timestamp: Time.now, # required
    #       enhanced_monitoring: [ # required
    #         {
    #           shard_level_metrics: ["IncomingBytes" # One of: ["IncomingBytes", "IncomingRecords", "OutgoingBytes", "OutgoingRecords", "WriteProvisionedThroughputExceeded", "ReadProvisionedThroughputExceeded", "IteratorAgeMilliseconds", "ALL"]]
    #         }
    #       ],
    #       encryption_type: "NONE" # One of: ["NONE", "KMS"],
    #       key_id: "KeyId",
    #       open_shard_count: 1, # required
    #       consumer_count: 1
    #     }
    #   }
    # @return [Types::DescribeStreamSummaryOutput]
    def describe_stream_summary(params = {}, options = {})
      request = build_request(:describe_stream_summary, params)
      request.send_request(options)
    end

    # <p>Disables enhanced monitoring.</p>
    #          <note>
    #             <p>When invoking this API, you must use either the <code>StreamARN</code> or the
    #                     <code>StreamName</code> parameter, or both. It is recommended that you use the
    #                     <code>StreamARN</code> input parameter when you invoke this API.</p>
    #          </note>
    # @param [Hash, Types::DisableEnhancedMonitoringInput] params
    # @option params [String] :stream_name
    #   <p>The name of the Kinesis data stream for which to disable enhanced monitoring.</p>
    # @option params [Array<String>] :shard_level_metrics
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
    # @option params [String] :stream_arn
    #   <p>The ARN of the stream.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     stream_name: "StreamName",
    #     shard_level_metrics: ["IncomingBytes" # One of: ["IncomingBytes", "IncomingRecords", "OutgoingBytes", "OutgoingRecords", "WriteProvisionedThroughputExceeded", "ReadProvisionedThroughputExceeded", "IteratorAgeMilliseconds", "ALL"]], # required
    #     stream_arn: "StreamARN"
    #   }
    #   options = {}
    #   response = client.disable_enhanced_monitoring(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     stream_name: "StreamName",
    #     current_shard_level_metrics: ["IncomingBytes" # One of: ["IncomingBytes", "IncomingRecords", "OutgoingBytes", "OutgoingRecords", "WriteProvisionedThroughputExceeded", "ReadProvisionedThroughputExceeded", "IteratorAgeMilliseconds", "ALL"]],
    #     desired_shard_level_metrics: ["IncomingBytes" # One of: ["IncomingBytes", "IncomingRecords", "OutgoingBytes", "OutgoingRecords", "WriteProvisionedThroughputExceeded", "ReadProvisionedThroughputExceeded", "IteratorAgeMilliseconds", "ALL"]],
    #     stream_arn: "StreamARN"
    #   }
    # @return [Types::DisableEnhancedMonitoringOutput]
    def disable_enhanced_monitoring(params = {}, options = {})
      request = build_request(:disable_enhanced_monitoring, params)
      request.send_request(options)
    end

    # <p>Enables enhanced Kinesis data stream monitoring for shard-level metrics.</p>
    #          <note>
    #             <p>When invoking this API, you must use either the <code>StreamARN</code> or the
    #                     <code>StreamName</code> parameter, or both. It is recommended that you use the
    #                     <code>StreamARN</code> input parameter when you invoke this API.</p>
    #          </note>
    # @param [Hash, Types::EnableEnhancedMonitoringInput] params
    # @option params [String] :stream_name
    #   <p>The name of the stream for which to enable enhanced monitoring.</p>
    # @option params [Array<String>] :shard_level_metrics
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
    # @option params [String] :stream_arn
    #   <p>The ARN of the stream.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     stream_name: "StreamName",
    #     shard_level_metrics: ["IncomingBytes" # One of: ["IncomingBytes", "IncomingRecords", "OutgoingBytes", "OutgoingRecords", "WriteProvisionedThroughputExceeded", "ReadProvisionedThroughputExceeded", "IteratorAgeMilliseconds", "ALL"]], # required
    #     stream_arn: "StreamARN"
    #   }
    #   options = {}
    #   response = client.enable_enhanced_monitoring(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     stream_name: "StreamName",
    #     current_shard_level_metrics: ["IncomingBytes" # One of: ["IncomingBytes", "IncomingRecords", "OutgoingBytes", "OutgoingRecords", "WriteProvisionedThroughputExceeded", "ReadProvisionedThroughputExceeded", "IteratorAgeMilliseconds", "ALL"]],
    #     desired_shard_level_metrics: ["IncomingBytes" # One of: ["IncomingBytes", "IncomingRecords", "OutgoingBytes", "OutgoingRecords", "WriteProvisionedThroughputExceeded", "ReadProvisionedThroughputExceeded", "IteratorAgeMilliseconds", "ALL"]],
    #     stream_arn: "StreamARN"
    #   }
    # @return [Types::EnableEnhancedMonitoringOutput]
    def enable_enhanced_monitoring(params = {}, options = {})
      request = build_request(:enable_enhanced_monitoring, params)
      request.send_request(options)
    end

    # <p>Gets data records from a Kinesis data stream's shard.</p>
    #          <note>
    #             <p>When invoking this API, you must use either the <code>StreamARN</code> or the
    #                     <code>StreamName</code> parameter, or both. It is recommended that you use the
    #                     <code>StreamARN</code> input parameter when you invoke this API.</p>
    #          </note>
    #          <p>Specify a shard iterator using the <code>ShardIterator</code> parameter. The shard
    #             iterator specifies the position in the shard from which you want to start reading data
    #             records sequentially. If there are no records available in the portion of the shard that
    #             the iterator points to, <a>GetRecords</a> returns an empty list. It might
    #             take multiple calls to get to a portion of the shard that contains records.</p>
    #          <p>You can scale by provisioning multiple shards per stream while considering service
    #             limits (for more information, see <a href="https://docs.aws.amazon.com/kinesis/latest/dev/service-sizes-and-limits.html">Amazon Kinesis Data Streams
    #                 Limits</a> in the <i>Amazon Kinesis Data Streams Developer
    #                 Guide</i>). Your application should have one thread per shard, each reading
    #             continuously from its stream. To read from a stream continually, call <a>GetRecords</a> in a loop. Use <a>GetShardIterator</a> to get the
    #             shard iterator to specify in the first <a>GetRecords</a> call. <a>GetRecords</a> returns a new shard iterator in
    #                 <code>NextShardIterator</code>. Specify the shard iterator returned in
    #                 <code>NextShardIterator</code> in subsequent calls to <a>GetRecords</a>.
    #             If the shard has been closed, the shard iterator can't return more data and <a>GetRecords</a> returns <code>null</code> in <code>NextShardIterator</code>.
    #             You can terminate the loop when the shard is closed, or when the shard iterator reaches
    #             the record with the sequence number or other attribute that marks it as the last record
    #             to process.</p>
    #          <p>Each data record can be up to 1 MiB in size, and each shard can read up to 2 MiB per
    #             second. You can ensure that your calls don't exceed the maximum supported size or
    #             throughput by using the <code>Limit</code> parameter to specify the maximum number of
    #             records that <a>GetRecords</a> can return. Consider your average record size
    #             when determining this limit. The maximum number of records that can be returned per call
    #             is 10,000.</p>
    #          <p>The size of the data returned by <a>GetRecords</a> varies depending on the
    #             utilization of the shard. It is recommended that consumer applications retrieve records
    #             via the <code>GetRecords</code> command using the 5 TPS limit to remain caught up.
    #             Retrieving records less frequently can lead to consumer applications falling behind. The
    #             maximum size of data that <a>GetRecords</a> can return is 10 MiB. If a call
    #             returns this amount of data, subsequent calls made within the next 5 seconds throw
    #                 <code>ProvisionedThroughputExceededException</code>. If there is insufficient
    #             provisioned throughput on the stream, subsequent calls made within the next 1 second
    #             throw <code>ProvisionedThroughputExceededException</code>. <a>GetRecords</a>
    #             doesn't return any data when it throws an exception. For this reason, we recommend that
    #             you wait 1 second between calls to <a>GetRecords</a>. However, it's possible
    #             that the application will get exceptions for longer than 1 second.</p>
    #          <p>To detect whether the application is falling behind in processing, you can use the
    #                 <code>MillisBehindLatest</code> response attribute. You can also monitor the stream
    #             using CloudWatch metrics and other mechanisms (see <a href="https://docs.aws.amazon.com/kinesis/latest/dev/monitoring.html">Monitoring</a> in the <i>Amazon
    #                 Kinesis Data Streams Developer Guide</i>).</p>
    #          <p>Each Amazon Kinesis record includes a value, <code>ApproximateArrivalTimestamp</code>,
    #             that is set when a stream successfully receives and stores a record. This is commonly
    #             referred to as a server-side time stamp, whereas a client-side time stamp is set when a
    #             data producer creates or sends the record to a stream (a data producer is any data
    #             source putting data records into a stream, for example with <a>PutRecords</a>). The time stamp has millisecond precision. There are no guarantees about the time
    #             stamp accuracy, or that the time stamp is always increasing. For example, records in a
    #             shard or across a stream might have time stamps that are out of order.</p>
    #          <p>This operation has a limit of five transactions per second per shard.</p>
    # @param [Hash, Types::GetRecordsInput] params
    # @option params [String] :shard_iterator
    #   <p>The position in the shard from which you want to start sequentially reading data
    #               records. A shard iterator specifies this position using the sequence number of a data
    #               record in the shard.</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of records to return. Specify a value of up to 10,000. If you
    #               specify a value that is greater than 10,000, <a>GetRecords</a> throws
    #                   <code>InvalidArgumentException</code>. The default value is 10,000.</p>
    # @option params [String] :stream_arn
    #   <p>The ARN of the stream.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     shard_iterator: "ShardIterator", # required
    #     limit: 1,
    #     stream_arn: "StreamARN"
    #   }
    #   options = {}
    #   response = client.get_records(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     records: [ # required
    #       {
    #         sequence_number: "SequenceNumber", # required
    #         approximate_arrival_timestamp: Time.now,
    #         data: "data", # required
    #         partition_key: "PartitionKey", # required
    #         encryption_type: "NONE" # One of: ["NONE", "KMS"]
    #       }
    #     ],
    #     next_shard_iterator: "ShardIterator",
    #     millis_behind_latest: 1,
    #     child_shards: [
    #       {
    #         shard_id: "ShardId", # required
    #         parent_shards: ["ShardId"], # required
    #         hash_key_range: { # required
    #           starting_hash_key: "HashKey", # required
    #           ending_hash_key: "HashKey", # required
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::GetRecordsOutput]
    def get_records(params = {}, options = {})
      request = build_request(:get_records, params)
      request.send_request(options)
    end

    # <p>Returns a policy attached to the specified data stream or consumer. Request patterns can be one of the following:</p>
    #          <ul>
    #             <li>
    #                <p>Data stream pattern: <code>arn:aws.*:kinesis:.*:\d{12}:.*stream/\S+</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p> Consumer pattern: <code>^(arn):aws.*:kinesis:.*:\d{12}:.*stream\/[a-zA-Z0-9_.-]+\/consumer\/[a-zA-Z0-9_.-]+:[0-9]+</code>
    #                </p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::GetResourcePolicyInput] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the data stream or consumer.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceARN", # required
    #   }
    #   options = {}
    #   response = client.get_resource_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy: "Policy", # required
    #   }
    # @return [Types::GetResourcePolicyOutput]
    def get_resource_policy(params = {}, options = {})
      request = build_request(:get_resource_policy, params)
      request.send_request(options)
    end

    # <p>Gets an Amazon Kinesis shard iterator. A shard iterator expires 5 minutes after it is
    #             returned to the requester.</p>
    #          <note>
    #             <p>When invoking this API, you must use either the <code>StreamARN</code> or the
    #                     <code>StreamName</code> parameter, or both. It is recommended that you use the
    #                     <code>StreamARN</code> input parameter when you invoke this API.</p>
    #          </note>
    #          <p>A shard iterator specifies the shard position from which to start reading data records
    #             sequentially. The position is specified using the sequence number of a data record in a
    #             shard. A sequence number is the identifier associated with every record ingested in the
    #             stream, and is assigned when a record is put into the stream. Each stream has one or
    #             more shards.</p>
    #          <p>You must specify the shard iterator type. For example, you can set the
    #                 <code>ShardIteratorType</code> parameter to read exactly from the position denoted
    #             by a specific sequence number by using the <code>AT_SEQUENCE_NUMBER</code> shard
    #             iterator type. Alternatively, the parameter can read right after the sequence number by
    #             using the <code>AFTER_SEQUENCE_NUMBER</code> shard iterator type, using sequence numbers
    #             returned by earlier calls to <a>PutRecord</a>, <a>PutRecords</a>,
    #                 <a>GetRecords</a>, or <a>DescribeStream</a>. In the request,
    #             you can specify the shard iterator type <code>AT_TIMESTAMP</code> to read records from
    #             an arbitrary point in time, <code>TRIM_HORIZON</code> to cause
    #                 <code>ShardIterator</code> to point to the last untrimmed record in the shard in the
    #             system (the oldest data record in the shard), or <code>LATEST</code> so that you always
    #             read the most recent data in the shard. </p>
    #          <p>When you read repeatedly from a stream, use a <a>GetShardIterator</a>
    #             request to get the first shard iterator for use in your first <a>GetRecords</a> request and for subsequent reads use the shard iterator returned by the <a>GetRecords</a> request in <code>NextShardIterator</code>. A new shard
    #             iterator is returned by every <a>GetRecords</a> request in
    #                 <code>NextShardIterator</code>, which you use in the <code>ShardIterator</code>
    #             parameter of the next <a>GetRecords</a> request. </p>
    #          <p>If a <a>GetShardIterator</a> request is made too often, you receive a
    #                 <code>ProvisionedThroughputExceededException</code>. For more information about
    #             throughput limits, see <a>GetRecords</a>, and <a href="https://docs.aws.amazon.com/kinesis/latest/dev/service-sizes-and-limits.html">Streams Limits</a> in the
    #                 <i>Amazon Kinesis Data Streams Developer Guide</i>.</p>
    #          <p>If the shard is closed, <a>GetShardIterator</a> returns a valid iterator
    #             for the last sequence number of the shard. A shard can be closed as a result of using
    #                 <a>SplitShard</a> or <a>MergeShards</a>.</p>
    #          <p>
    #             <a>GetShardIterator</a> has a limit of five transactions per second per
    #             account per open shard.</p>
    # @param [Hash, Types::GetShardIteratorInput] params
    # @option params [String] :stream_name
    #   <p>The name of the Amazon Kinesis data stream.</p>
    # @option params [String] :shard_id
    #   <p>The shard ID of the Kinesis Data Streams shard to get the iterator for.</p>
    # @option params [String] :shard_iterator_type
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
    # @option params [String] :starting_sequence_number
    #   <p>The sequence number of the data record in the shard from which to start reading. Used
    #               with shard iterator type AT_SEQUENCE_NUMBER and AFTER_SEQUENCE_NUMBER.</p>
    # @option params [Time] :timestamp
    #   <p>The time stamp of the data record from which to start reading. Used with shard
    #               iterator type AT_TIMESTAMP. A time stamp is the Unix epoch date with precision in
    #               milliseconds. For example, <code>2016-04-04T19:58:46.480-00:00</code> or
    #                   <code>1459799926.480</code>. If a record with this exact time stamp does not exist,
    #               the iterator returned is for the next (later) record. If the time stamp is older than
    #               the current trim horizon, the iterator returned is for the oldest untrimmed data record
    #               (TRIM_HORIZON).</p>
    # @option params [String] :stream_arn
    #   <p>The ARN of the stream.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     stream_name: "StreamName",
    #     shard_id: "ShardId", # required
    #     shard_iterator_type: "AT_SEQUENCE_NUMBER" # One of: ["AT_SEQUENCE_NUMBER", "AFTER_SEQUENCE_NUMBER", "TRIM_HORIZON", "LATEST", "AT_TIMESTAMP"], # required
    #     starting_sequence_number: "SequenceNumber",
    #     timestamp: Time.now,
    #     stream_arn: "StreamARN"
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

    # <p>Increases the Kinesis data stream's retention period, which is the length of time data
    #             records are accessible after they are added to the stream. The maximum value of a
    #             stream's retention period is 8760 hours (365 days).</p>
    #          <note>
    #             <p>When invoking this API, you must use either the <code>StreamARN</code> or the
    #                     <code>StreamName</code> parameter, or both. It is recommended that you use the
    #                     <code>StreamARN</code> input parameter when you invoke this API.</p>
    #          </note>
    #          <p>If you choose a longer stream retention period, this operation increases the time
    #             period during which records that have not yet expired are accessible. However, it does
    #             not make previous, expired data (older than the stream's previous retention period)
    #             accessible after the operation has been called. For example, if a stream's retention
    #             period is set to 24 hours and is increased to 168 hours, any data that is older than 24
    #             hours remains inaccessible to consumer applications.</p>
    # @param [Hash, Types::IncreaseStreamRetentionPeriodInput] params
    # @option params [String] :stream_name
    #   <p>The name of the stream to modify.</p>
    # @option params [Integer] :retention_period_hours
    #   <p>The new retention period of the stream, in hours. Must be more than the current
    #               retention period.</p>
    # @option params [String] :stream_arn
    #   <p>The ARN of the stream.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     stream_name: "StreamName",
    #     retention_period_hours: 1, # required
    #     stream_arn: "StreamARN"
    #   }
    #   options = {}
    #   response = client.increase_stream_retention_period(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def increase_stream_retention_period(params = {}, options = {})
      request = build_request(:increase_stream_retention_period, params)
      request.send_request(options)
    end

    # <p>Lists the shards in a stream and provides information about each shard. This operation
    #             has a limit of 1000 transactions per second per data stream.</p>
    #          <note>
    #             <p>When invoking this API, you must use either the <code>StreamARN</code> or the
    #                     <code>StreamName</code> parameter, or both. It is recommended that you use the
    #                     <code>StreamARN</code> input parameter when you invoke this API.</p>
    #          </note>
    #          <p>This action does not list expired shards. For information about expired shards, see
    #                 <a href="https://docs.aws.amazon.com/streams/latest/dev/kinesis-using-sdk-java-after-resharding.html#kinesis-using-sdk-java-resharding-data-routing">Data Routing, Data Persistence, and Shard State after a Reshard</a>. </p>
    #          <important>
    #             <p>This API is a new operation that is used by the Amazon Kinesis Client Library
    #                 (KCL). If you have a fine-grained IAM policy that only allows specific operations,
    #                 you must update your policy to allow calls to this API. For more information, see
    #                     <a href="https://docs.aws.amazon.com/streams/latest/dev/controlling-access.html">Controlling Access to Amazon Kinesis Data Streams Resources Using
    #                 IAM</a>.</p>
    #          </important>
    # @param [Hash, Types::ListShardsInput] params
    # @option params [String] :stream_name
    #   <p>The name of the data stream whose shards you want to list. </p>
    #            <p>You cannot specify this parameter if you specify the <code>NextToken</code>
    #               parameter.</p>
    # @option params [String] :next_token
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
    # @option params [String] :exclusive_start_shard_id
    #   <p>Specify this parameter to indicate that you want to list the shards starting with the
    #               shard whose ID immediately follows <code>ExclusiveStartShardId</code>.</p>
    #            <p>If you don't specify this parameter, the default behavior is for
    #                   <code>ListShards</code> to list the shards starting with the first one in the
    #               stream.</p>
    #            <p>You cannot specify this parameter if you specify <code>NextToken</code>.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of shards to return in a single call to <code>ListShards</code>.
    #               The maximum number of shards to return in a single call. The default value is 1000. If
    #               you specify a value greater than 1000, at most 1000 results are returned. </p>
    #            <p>When the number of shards to be listed is greater than the value of
    #                   <code>MaxResults</code>, the response contains a <code>NextToken</code> value that
    #               you can use in a subsequent call to <code>ListShards</code> to list the next set of
    #               shards.</p>
    # @option params [Time] :stream_creation_timestamp
    #   <p>Specify this input parameter to distinguish data streams that have the same name. For
    #               example, if you create a data stream and then delete it, and you later create another
    #               data stream with the same name, you can use this input parameter to specify which of the
    #               two streams you want to list the shards for.</p>
    #            <p>You cannot specify this parameter if you specify the <code>NextToken</code>
    #               parameter.</p>
    # @option params [Types::ShardFilter] :shard_filter
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
    # @option params [String] :stream_arn
    #   <p>The ARN of the stream.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     stream_name: "StreamName",
    #     next_token: "NextToken",
    #     exclusive_start_shard_id: "ShardId",
    #     max_results: 1,
    #     stream_creation_timestamp: Time.now,
    #     shard_filter: {
    #       type: "AFTER_SHARD_ID" # One of: ["AFTER_SHARD_ID", "AT_TRIM_HORIZON", "FROM_TRIM_HORIZON", "AT_LATEST", "AT_TIMESTAMP", "FROM_TIMESTAMP"], # required
    #       shard_id: "ShardId",
    #       timestamp: Time.now
    #     },
    #     stream_arn: "StreamARN"
    #   }
    #   options = {}
    #   response = client.list_shards(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     shards: [
    #       {
    #         shard_id: "ShardId", # required
    #         parent_shard_id: "ShardId",
    #         adjacent_parent_shard_id: "ShardId",
    #         hash_key_range: { # required
    #           starting_hash_key: "HashKey", # required
    #           ending_hash_key: "HashKey", # required
    #         },
    #         sequence_number_range: { # required
    #           starting_sequence_number: "SequenceNumber", # required
    #           ending_sequence_number: "SequenceNumber"
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListShardsOutput]
    def list_shards(params = {}, options = {})
      request = build_request(:list_shards, params)
      request.send_request(options)
    end

    # <p>Lists the consumers registered to receive data from a stream using enhanced fan-out,
    #             and provides information about each consumer.</p>
    #          <p>This operation has a limit of 5 transactions per second per stream.</p>
    # @param [Hash, Types::ListStreamConsumersInput] params
    # @option params [String] :stream_arn
    #   <p>The ARN of the Kinesis data stream for which you want to list the registered
    #               consumers. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-kinesis-streams">Amazon Resource Names (ARNs) and Amazon Web Services Service
    #               Namespaces</a>.</p>
    # @option params [String] :next_token
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
    # @option params [Integer] :max_results
    #   <p>The maximum number of consumers that you want a single call of
    #                   <code>ListStreamConsumers</code> to return. The default value is 100. If you specify
    #               a value greater than 100, at most 100 results are returned. </p>
    # @option params [Time] :stream_creation_timestamp
    #   <p>Specify this input parameter to distinguish data streams that have the same name. For
    #               example, if you create a data stream and then delete it, and you later create another
    #               data stream with the same name, you can use this input parameter to specify which of the
    #               two streams you want to list the consumers for. </p>
    #            <p>You can't specify this parameter if you specify the NextToken parameter. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     stream_arn: "StreamARN", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #     stream_creation_timestamp: Time.now
    #   }
    #   options = {}
    #   response = client.list_stream_consumers(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     consumers: [
    #       {
    #         consumer_name: "ConsumerName", # required
    #         consumer_arn: "ConsumerARN", # required
    #         consumer_status: "CREATING" # One of: ["CREATING", "DELETING", "ACTIVE"], # required
    #         consumer_creation_timestamp: Time.now, # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListStreamConsumersOutput]
    def list_stream_consumers(params = {}, options = {})
      request = build_request(:list_stream_consumers, params)
      request.send_request(options)
    end

    # <p>Lists your Kinesis data streams.</p>
    #          <p>The number of streams may be too large to return from a single call to
    #                 <code>ListStreams</code>. You can limit the number of returned streams using the
    #                 <code>Limit</code> parameter. If you do not specify a value for the
    #                 <code>Limit</code> parameter, Kinesis Data Streams uses the default limit, which is
    #             currently 100.</p>
    #          <p>You can detect if there are more streams available to list by using the
    #                 <code>HasMoreStreams</code> flag from the returned output. If there are more streams
    #             available, you can request more streams by using the name of the last stream returned by
    #             the <code>ListStreams</code> request in the <code>ExclusiveStartStreamName</code>
    #             parameter in a subsequent request to <code>ListStreams</code>. The group of stream names
    #             returned by the subsequent request is then added to the list. You can continue this
    #             process until all the stream names have been collected in the list. </p>
    #          <p>
    #             <a>ListStreams</a> has a limit of five transactions per second per
    #             account.</p>
    # @param [Hash, Types::ListStreamsInput] params
    # @option params [Integer] :limit
    #   <p>The maximum number of streams to list. The default value is 100. If you specify a
    #               value greater than 100, at most 100 results are returned.</p>
    # @option params [String] :exclusive_start_stream_name
    #   <p>The name of the stream to start the list with.</p>
    # @option params [String] :next_token
    #   <p></p>
    # @example Request syntax with placeholder values
    #   params = {
    #     limit: 1,
    #     exclusive_start_stream_name: "StreamName",
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_streams(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     stream_names: ["StreamName"], # required
    #     has_more_streams: false, # required
    #     next_token: "NextToken",
    #     stream_summaries: [
    #       {
    #         stream_name: "StreamName", # required
    #         stream_arn: "StreamARN", # required
    #         stream_status: "CREATING" # One of: ["CREATING", "DELETING", "ACTIVE", "UPDATING"], # required
    #         stream_mode_details: {
    #           stream_mode: "PROVISIONED" # One of: ["PROVISIONED", "ON_DEMAND"], # required
    #         },
    #         stream_creation_timestamp: Time.now
    #       }
    #     ]
    #   }
    # @return [Types::ListStreamsOutput]
    def list_streams(params = {}, options = {})
      request = build_request(:list_streams, params)
      request.send_request(options)
    end

    # <p>List all tags added to the specified Kinesis resource. Each tag is a label consisting of a user-defined key and value. Tags can help you manage, identify, organize, search for, and filter resources.</p>
    #          <p>For more information about tagging Kinesis resources, see <a href="https://docs.aws.amazon.com/streams/latest/dev/tagging.html">Tag your Amazon Kinesis Data Streams resources</a>.</p>
    # @param [Hash, Types::ListTagsForResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the Kinesis resource for which to list tags.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceARN", # required
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
    #       }
    #     ]
    #   }
    # @return [Types::ListTagsForResourceOutput]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Lists the tags for the specified Kinesis data stream. This operation has a limit of
    #             five transactions per second per account.</p>
    #          <note>
    #             <p>When invoking this API, you must use either the <code>StreamARN</code> or the
    #                     <code>StreamName</code> parameter, or both. It is recommended that you use the
    #                     <code>StreamARN</code> input parameter when you invoke this API.</p>
    #          </note>
    # @param [Hash, Types::ListTagsForStreamInput] params
    # @option params [String] :stream_name
    #   <p>The name of the stream.</p>
    # @option params [String] :exclusive_start_tag_key
    #   <p>The key to use as the starting point for the list of tags. If this parameter is set,
    #                   <code>ListTagsForStream</code> gets all tags that occur after
    #                   <code>ExclusiveStartTagKey</code>. </p>
    # @option params [Integer] :limit
    #   <p>The number of tags to return. If this number is less than the total number of tags
    #               associated with the stream, <code>HasMoreTags</code> is set to <code>true</code>. To
    #               list additional tags, set <code>ExclusiveStartTagKey</code> to the last key in the
    #               response.</p>
    # @option params [String] :stream_arn
    #   <p>The ARN of the stream.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     stream_name: "StreamName",
    #     exclusive_start_tag_key: "TagKey",
    #     limit: 1,
    #     stream_arn: "StreamARN"
    #   }
    #   options = {}
    #   response = client.list_tags_for_stream(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
    #       }
    #     ],
    #     has_more_tags: false, # required
    #   }
    # @return [Types::ListTagsForStreamOutput]
    def list_tags_for_stream(params = {}, options = {})
      request = build_request(:list_tags_for_stream, params)
      request.send_request(options)
    end

    # <p>Merges two adjacent shards in a Kinesis data stream and combines them into a single
    #             shard to reduce the stream's capacity to ingest and transport data. This API is only
    #             supported for the data streams with the provisioned capacity mode. Two shards are
    #             considered adjacent if the union of the hash key ranges for the two shards form a
    #             contiguous set with no gaps. For example, if you have two shards, one with a hash key
    #             range of 276...381 and the other with a hash key range of 382...454, then you could
    #             merge these two shards into a single shard that would have a hash key range of
    #             276...454. After the merge, the single child shard receives data for all hash key values
    #             covered by the two parent shards.</p>
    #          <note>
    #             <p>When invoking this API, you must use either the <code>StreamARN</code> or the
    #                     <code>StreamName</code> parameter, or both. It is recommended that you use the
    #                     <code>StreamARN</code> input parameter when you invoke this API.</p>
    #          </note>
    #          <p>
    #             <code>MergeShards</code> is called when there is a need to reduce the overall capacity
    #             of a stream because of excess capacity that is not being used. You must specify the
    #             shard to be merged and the adjacent shard for a stream. For more information about
    #             merging shards, see <a href="https://docs.aws.amazon.com/kinesis/latest/dev/kinesis-using-sdk-java-resharding-merge.html">Merge Two
    #                 Shards</a> in the <i>Amazon Kinesis Data Streams Developer
    #                 Guide</i>.</p>
    #          <p>If the stream is in the <code>ACTIVE</code> state, you can call
    #                 <code>MergeShards</code>. If a stream is in the <code>CREATING</code>,
    #                 <code>UPDATING</code>, or <code>DELETING</code> state, <code>MergeShards</code>
    #             returns a <code>ResourceInUseException</code>. If the specified stream does not exist,
    #                 <code>MergeShards</code> returns a <code>ResourceNotFoundException</code>. </p>
    #          <p>You can use <a>DescribeStreamSummary</a> to check the state of the stream,
    #             which is returned in <code>StreamStatus</code>.</p>
    #          <p>
    #             <code>MergeShards</code> is an asynchronous operation. Upon receiving a
    #                 <code>MergeShards</code> request, Amazon Kinesis Data Streams immediately returns a
    #             response and sets the <code>StreamStatus</code> to <code>UPDATING</code>. After the
    #             operation is completed, Kinesis Data Streams sets the <code>StreamStatus</code> to
    #                 <code>ACTIVE</code>. Read and write operations continue to work while the stream is
    #             in the <code>UPDATING</code> state. </p>
    #          <p>You use <a>DescribeStreamSummary</a> and the <a>ListShards</a>
    #             APIs to determine the shard IDs that are specified in the <code>MergeShards</code>
    #             request. </p>
    #          <p>If you try to operate on too many streams in parallel using <a>CreateStream</a>, <a>DeleteStream</a>, <code>MergeShards</code>,
    #             or <a>SplitShard</a>, you receive a <code>LimitExceededException</code>. </p>
    #          <p>
    #             <code>MergeShards</code> has a limit of five transactions per second per account.</p>
    # @param [Hash, Types::MergeShardsInput] params
    # @option params [String] :stream_name
    #   <p>The name of the stream for the merge.</p>
    # @option params [String] :shard_to_merge
    #   <p>The shard ID of the shard to combine with the adjacent shard for the merge.</p>
    # @option params [String] :adjacent_shard_to_merge
    #   <p>The shard ID of the adjacent shard for the merge.</p>
    # @option params [String] :stream_arn
    #   <p>The ARN of the stream.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     stream_name: "StreamName",
    #     shard_to_merge: "ShardId", # required
    #     adjacent_shard_to_merge: "ShardId", # required
    #     stream_arn: "StreamARN"
    #   }
    #   options = {}
    #   response = client.merge_shards(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def merge_shards(params = {}, options = {})
      request = build_request(:merge_shards, params)
      request.send_request(options)
    end

    # <p>Writes a single data record into an Amazon Kinesis data stream. Call
    #                 <code>PutRecord</code> to send data into the stream for real-time ingestion and
    #             subsequent processing, one record at a time. Each shard can support writes up to 1,000
    #             records per second, up to a maximum data write total of 1 MiB per second.</p>
    #          <note>
    #             <p>When invoking this API, you must use either the <code>StreamARN</code> or the
    #                     <code>StreamName</code> parameter, or both. It is recommended that you use the
    #                     <code>StreamARN</code> input parameter when you invoke this API.</p>
    #          </note>
    #          <p>You must specify the name of the stream that captures, stores, and transports the
    #             data; a partition key; and the data blob itself.</p>
    #          <p>The data blob can be any type of data; for example, a segment from a log file,
    #             geographic/location data, website clickstream data, and so on.</p>
    #          <p>The partition key is used by Kinesis Data Streams to distribute data across shards.
    #             Kinesis Data Streams segregates the data records that belong to a stream into multiple
    #             shards, using the partition key associated with each data record to determine the shard
    #             to which a given data record belongs.</p>
    #          <p>Partition keys are Unicode strings, with a maximum length limit of 256 characters for
    #             each key. An MD5 hash function is used to map partition keys to 128-bit integer values
    #             and to map associated data records to shards using the hash key ranges of the shards.
    #             You can override hashing the partition key to determine the shard by explicitly
    #             specifying a hash value using the <code>ExplicitHashKey</code> parameter. For more
    #             information, see <a href="https://docs.aws.amazon.com/kinesis/latest/dev/developing-producers-with-sdk.html#kinesis-using-sdk-java-add-data-to-stream">Adding Data to a Stream</a> in the <i>Amazon Kinesis Data Streams
    #                 Developer Guide</i>.</p>
    #          <p>
    #             <code>PutRecord</code> returns the shard ID of where the data record was placed and the
    #             sequence number that was assigned to the data record.</p>
    #          <p>Sequence numbers increase over time and are specific to a shard within a stream, not
    #             across all shards within a stream. To guarantee strictly increasing ordering, write
    #             serially to a shard and use the <code>SequenceNumberForOrdering</code> parameter. For
    #             more information, see <a href="https://docs.aws.amazon.com/kinesis/latest/dev/developing-producers-with-sdk.html#kinesis-using-sdk-java-add-data-to-stream">Adding Data to a Stream</a> in the <i>Amazon Kinesis Data Streams
    #                 Developer Guide</i>.</p>
    #          <important>
    #             <p>After you write a record to a stream, you cannot modify that record or its order
    #                 within the stream.</p>
    #          </important>
    #          <p>If a <code>PutRecord</code> request cannot be processed because of insufficient
    #             provisioned throughput on the shard involved in the request, <code>PutRecord</code>
    #             throws <code>ProvisionedThroughputExceededException</code>. </p>
    #          <p>By default, data records are accessible for 24 hours from the time that they are added
    #             to a stream. You can use <a>IncreaseStreamRetentionPeriod</a> or <a>DecreaseStreamRetentionPeriod</a> to modify this retention period.</p>
    # @param [Hash, Types::PutRecordInput] params
    # @option params [String] :stream_name
    #   <p>The name of the stream to put the data record into.</p>
    # @option params [String] :data
    #   <p>The data blob to put into the record, which is base64-encoded when the blob is
    #               serialized. When the data blob (the payload before base64-encoding) is added to the
    #               partition key size, the total size must not exceed the maximum record size (1
    #               MiB).</p>
    # @option params [String] :partition_key
    #   <p>Determines which shard in the stream the data record is assigned to. Partition keys
    #               are Unicode strings with a maximum length limit of 256 characters for each key. Amazon
    #               Kinesis Data Streams uses the partition key as input to a hash function that maps the
    #               partition key and associated data to a specific shard. Specifically, an MD5 hash
    #               function is used to map partition keys to 128-bit integer values and to map associated
    #               data records to shards. As a result of this hashing mechanism, all data records with the
    #               same partition key map to the same shard within the stream.</p>
    # @option params [String] :explicit_hash_key
    #   <p>The hash value used to explicitly determine the shard the data record is assigned to
    #               by overriding the partition key hash.</p>
    # @option params [String] :sequence_number_for_ordering
    #   <p>Guarantees strictly increasing sequence numbers, for puts from the same client and to
    #               the same partition key. Usage: set the <code>SequenceNumberForOrdering</code> of record
    #                   <i>n</i> to the sequence number of record <i>n-1</i> (as
    #               returned in the result when putting record <i>n-1</i>). If this parameter
    #               is not set, records are coarsely ordered based on arrival time.</p>
    # @option params [String] :stream_arn
    #   <p>The ARN of the stream.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     stream_name: "StreamName",
    #     data: "data", # required
    #     partition_key: "PartitionKey", # required
    #     explicit_hash_key: "HashKey",
    #     sequence_number_for_ordering: "SequenceNumber",
    #     stream_arn: "StreamARN"
    #   }
    #   options = {}
    #   response = client.put_record(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     shard_id: "ShardId", # required
    #     sequence_number: "SequenceNumber", # required
    #     encryption_type: "NONE" # One of: ["NONE", "KMS"]
    #   }
    # @return [Types::PutRecordOutput]
    def put_record(params = {}, options = {})
      request = build_request(:put_record, params)
      request.send_request(options)
    end

    # <p>Writes multiple data records into a Kinesis data stream in a single call (also
    #             referred to as a <code>PutRecords</code> request). Use this operation to send data into
    #             the stream for data ingestion and processing. </p>
    #          <note>
    #             <p>When invoking this API, you must use either the <code>StreamARN</code> or the
    #                     <code>StreamName</code> parameter, or both. It is recommended that you use the
    #                     <code>StreamARN</code> input parameter when you invoke this API.</p>
    #          </note>
    #          <p>Each <code>PutRecords</code> request can support up to 500 records. Each record in the
    #             request can be as large as 1 MiB, up to a limit of 5 MiB for the entire request,
    #             including partition keys. Each shard can support writes up to 1,000 records per second,
    #             up to a maximum data write total of 1 MiB per second.</p>
    #          <p>You must specify the name of the stream that captures, stores, and transports the
    #             data; and an array of request <code>Records</code>, with each record in the array
    #             requiring a partition key and data blob. The record size limit applies to the total size
    #             of the partition key and data blob.</p>
    #          <p>The data blob can be any type of data; for example, a segment from a log file,
    #             geographic/location data, website clickstream data, and so on.</p>
    #          <p>The partition key is used by Kinesis Data Streams as input to a hash function that
    #             maps the partition key and associated data to a specific shard. An MD5 hash function is
    #             used to map partition keys to 128-bit integer values and to map associated data records
    #             to shards. As a result of this hashing mechanism, all data records with the same
    #             partition key map to the same shard within the stream. For more information, see <a href="https://docs.aws.amazon.com/kinesis/latest/dev/developing-producers-with-sdk.html#kinesis-using-sdk-java-add-data-to-stream">Adding Data to a Stream</a> in the <i>Amazon Kinesis Data Streams
    #                 Developer Guide</i>.</p>
    #          <p>Each record in the <code>Records</code> array may include an optional parameter,
    #                 <code>ExplicitHashKey</code>, which overrides the partition key to shard mapping.
    #             This parameter allows a data producer to determine explicitly the shard where the record
    #             is stored. For more information, see <a href="https://docs.aws.amazon.com/kinesis/latest/dev/developing-producers-with-sdk.html#kinesis-using-sdk-java-putrecords">Adding Multiple Records with PutRecords</a> in the <i>Amazon Kinesis
    #                 Data Streams Developer Guide</i>.</p>
    #          <p>The <code>PutRecords</code> response includes an array of response
    #                 <code>Records</code>. Each record in the response array directly correlates with a
    #             record in the request array using natural ordering, from the top to the bottom of the
    #             request and response. The response <code>Records</code> array always includes the same
    #             number of records as the request array.</p>
    #          <p>The response <code>Records</code> array includes both successfully and unsuccessfully
    #             processed records. Kinesis Data Streams attempts to process all records in each
    #                 <code>PutRecords</code> request. A single record failure does not stop the
    #             processing of subsequent records. As a result, PutRecords doesn't guarantee the ordering
    #             of records. If you need to read records in the same order they are written to the
    #             stream, use <a>PutRecord</a> instead of <code>PutRecords</code>, and write to
    #             the same shard.</p>
    #          <p>A successfully processed record includes <code>ShardId</code> and
    #                 <code>SequenceNumber</code> values. The <code>ShardId</code> parameter identifies
    #             the shard in the stream where the record is stored. The <code>SequenceNumber</code>
    #             parameter is an identifier assigned to the put record, unique to all records in the
    #             stream.</p>
    #          <p>An unsuccessfully processed record includes <code>ErrorCode</code> and
    #                 <code>ErrorMessage</code> values. <code>ErrorCode</code> reflects the type of error
    #             and can be one of the following values:
    #                 <code>ProvisionedThroughputExceededException</code> or <code>InternalFailure</code>.
    #                 <code>ErrorMessage</code> provides more detailed information about the
    #                 <code>ProvisionedThroughputExceededException</code> exception including the account
    #             ID, stream name, and shard ID of the record that was throttled. For more information
    #             about partially successful responses, see <a href="https://docs.aws.amazon.com/kinesis/latest/dev/kinesis-using-sdk-java-add-data-to-stream.html#kinesis-using-sdk-java-putrecords">Adding Multiple Records with PutRecords</a> in the <i>Amazon Kinesis
    #                 Data Streams Developer Guide</i>.</p>
    #          <important>
    #             <p>After you write a record to a stream, you cannot modify that record or its order
    #                 within the stream.</p>
    #          </important>
    #          <p>By default, data records are accessible for 24 hours from the time that they are added
    #             to a stream. You can use <a>IncreaseStreamRetentionPeriod</a> or <a>DecreaseStreamRetentionPeriod</a> to modify this retention period.</p>
    # @param [Hash, Types::PutRecordsInput] params
    # @option params [Array<Types::PutRecordsRequestEntry>] :records
    #   <p>The records associated with the request.</p>
    # @option params [String] :stream_name
    #   <p>The stream name associated with the request.</p>
    # @option params [String] :stream_arn
    #   <p>The ARN of the stream.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     records: [ # required
    #       {
    #         data: "data", # required
    #         explicit_hash_key: "HashKey",
    #         partition_key: "PartitionKey", # required
    #       }
    #     ],
    #     stream_name: "StreamName",
    #     stream_arn: "StreamARN"
    #   }
    #   options = {}
    #   response = client.put_records(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     failed_record_count: 1,
    #     records: [ # required
    #       {
    #         sequence_number: "SequenceNumber",
    #         shard_id: "ShardId",
    #         error_code: "ErrorCode",
    #         error_message: "ErrorMessage"
    #       }
    #     ],
    #     encryption_type: "NONE" # One of: ["NONE", "KMS"]
    #   }
    # @return [Types::PutRecordsOutput]
    def put_records(params = {}, options = {})
      request = build_request(:put_records, params)
      request.send_request(options)
    end

    # <p>Attaches a resource-based policy to a data stream or registered consumer. If you are using an identity other than the root user of 
    #             the Amazon Web Services account that owns the resource, the calling identity must have the <code>PutResourcePolicy</code> permissions on the 
    #             specified Kinesis Data Streams resource and belong to the owner's account in order to use this operation.
    #             If you don't have <code>PutResourcePolicy</code> permissions, Amazon Kinesis Data Streams returns a <code>403 Access Denied error</code>. 
    #             If you receive a <code>ResourceNotFoundException</code>, check to see if you passed a valid stream or consumer resource.
    #         </p>
    #          <p> Request patterns can be one of the following:</p>
    #          <ul>
    #             <li>
    #                <p>Data stream pattern: <code>arn:aws.*:kinesis:.*:\d{12}:.*stream/\S+</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>Consumer pattern: <code>^(arn):aws.*:kinesis:.*:\d{12}:.*stream\/[a-zA-Z0-9_.-]+\/consumer\/[a-zA-Z0-9_.-]+:[0-9]+</code>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/streams/latest/dev/controlling-access.html">Controlling Access to Amazon Kinesis Data Streams Resources Using IAM</a>.</p>
    # @param [Hash, Types::PutResourcePolicyInput] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the data stream or consumer.</p>
    # @option params [String] :policy
    #   <p>Details of the resource policy. It must include the identity of the principal and the actions allowed on this resource. This is formatted as a JSON string.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceARN", # required
    #     policy: "Policy", # required
    #   }
    #   options = {}
    #   response = client.put_resource_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def put_resource_policy(params = {}, options = {})
      request = build_request(:put_resource_policy, params)
      request.send_request(options)
    end

    # <p>Registers a consumer with a Kinesis data stream. When you use this operation, the
    #             consumer you register can then call <a>SubscribeToShard</a> to receive data
    #             from the stream using enhanced fan-out, at a rate of up to 2 MiB per second for every
    #             shard you subscribe to. This rate is unaffected by the total number of consumers that
    #             read from the same stream.</p>
    #          <p>You can add tags to the registered consumer when making a <code>RegisterStreamConsumer</code> request by setting the <code>Tags</code> parameter. If you pass the <code>Tags</code> parameter, in addition to having the <code>kinesis:RegisterStreamConsumer</code> permission, you must also have the <code>kinesis:TagResource</code> permission for the consumer that will be registered. Tags will take effect from the <code>CREATING</code> status of the consumer.</p>
    #          <p>You can register up to 20 consumers per stream. A given consumer can only be
    #             registered with one stream at a time.</p>
    #          <p>For an example of how to use this operation, see <a href="https://docs.aws.amazon.com/streams/latest/dev/building-enhanced-consumers-api.html">Enhanced Fan-Out
    #                 Using the Kinesis Data Streams API</a>.</p>
    #          <p>The use of this operation has a limit of five transactions per second per account.
    #             Also, only 5 consumers can be created simultaneously. In other words, you cannot have
    #             more than 5 consumers in a <code>CREATING</code> status at the same time. Registering a
    #             6th consumer while there are 5 in a <code>CREATING</code> status results in a
    #                 <code>LimitExceededException</code>.</p>
    # @param [Hash, Types::RegisterStreamConsumerInput] params
    # @option params [String] :stream_arn
    #   <p>The ARN of the Kinesis data stream that you want to register the consumer with. For
    #               more info, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-kinesis-streams">Amazon Resource Names (ARNs) and Amazon Web Services Service
    #               Namespaces</a>.</p>
    # @option params [String] :consumer_name
    #   <p>For a given Kinesis data stream, each consumer must have a unique name. However,
    #               consumer names don't have to be unique across data streams.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A set of up to 50 key-value pairs. A tag consists of a required key and an optional value.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     stream_arn: "StreamARN", # required
    #     consumer_name: "ConsumerName", # required
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.register_stream_consumer(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     consumer: { # required
    #       consumer_name: "ConsumerName", # required
    #       consumer_arn: "ConsumerARN", # required
    #       consumer_status: "CREATING" # One of: ["CREATING", "DELETING", "ACTIVE"], # required
    #       consumer_creation_timestamp: Time.now, # required
    #     }
    #   }
    # @return [Types::RegisterStreamConsumerOutput]
    def register_stream_consumer(params = {}, options = {})
      request = build_request(:register_stream_consumer, params)
      request.send_request(options)
    end

    # <p>Removes tags from the specified Kinesis data stream. Removed tags are deleted and
    #             cannot be recovered after this operation successfully completes.</p>
    #          <note>
    #             <p>When invoking this API, you must use either the <code>StreamARN</code> or the
    #                     <code>StreamName</code> parameter, or both. It is recommended that you use the
    #                     <code>StreamARN</code> input parameter when you invoke this API.</p>
    #          </note>
    #          <p>If you specify a tag that does not exist, it is ignored.</p>
    #          <p>
    #             <a>RemoveTagsFromStream</a> has a limit of five transactions per second per
    #             account.</p>
    # @param [Hash, Types::RemoveTagsFromStreamInput] params
    # @option params [String] :stream_name
    #   <p>The name of the stream.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>A list of tag keys. Each corresponding tag is removed from the stream.</p>
    # @option params [String] :stream_arn
    #   <p>The ARN of the stream.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     stream_name: "StreamName",
    #     tag_keys: ["TagKey"], # required
    #     stream_arn: "StreamARN"
    #   }
    #   options = {}
    #   response = client.remove_tags_from_stream(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def remove_tags_from_stream(params = {}, options = {})
      request = build_request(:remove_tags_from_stream, params)
      request.send_request(options)
    end

    # <p>Splits a shard into two new shards in the Kinesis data stream, to increase the
    #             stream's capacity to ingest and transport data. <code>SplitShard</code> is called when
    #             there is a need to increase the overall capacity of a stream because of an expected
    #             increase in the volume of data records being ingested. This API is only supported for
    #             the data streams with the provisioned capacity mode.</p>
    #          <note>
    #             <p>When invoking this API, you must use either the <code>StreamARN</code> or the
    #                     <code>StreamName</code> parameter, or both. It is recommended that you use the
    #                     <code>StreamARN</code> input parameter when you invoke this API.</p>
    #          </note>
    #          <p>You can also use <code>SplitShard</code> when a shard appears to be approaching its
    #             maximum utilization; for example, the producers sending data into the specific shard are
    #             suddenly sending more than previously anticipated. You can also call
    #                 <code>SplitShard</code> to increase stream capacity, so that more Kinesis Data
    #             Streams applications can simultaneously read data from the stream for real-time
    #             processing. </p>
    #          <p>You must specify the shard to be split and the new hash key, which is the position in
    #             the shard where the shard gets split in two. In many cases, the new hash key might be
    #             the average of the beginning and ending hash key, but it can be any hash key value in
    #             the range being mapped into the shard. For more information, see <a href="https://docs.aws.amazon.com/kinesis/latest/dev/kinesis-using-sdk-java-resharding-split.html">Split a
    #                 Shard</a> in the <i>Amazon Kinesis Data Streams Developer
    #                 Guide</i>.</p>
    #          <p>You can use <a>DescribeStreamSummary</a> and the <a>ListShards</a> APIs to determine the shard ID and hash key values for the <code>ShardToSplit</code>
    #             and <code>NewStartingHashKey</code> parameters that are specified in the
    #                 <code>SplitShard</code> request.</p>
    #          <p>
    #             <code>SplitShard</code> is an asynchronous operation. Upon receiving a
    #                 <code>SplitShard</code> request, Kinesis Data Streams immediately returns a response
    #             and sets the stream status to <code>UPDATING</code>. After the operation is completed,
    #             Kinesis Data Streams sets the stream status to <code>ACTIVE</code>. Read and write
    #             operations continue to work while the stream is in the <code>UPDATING</code> state. </p>
    #          <p>You can use <a>DescribeStreamSummary</a> to check the status of the stream,
    #             which is returned in <code>StreamStatus</code>. If the stream is in the
    #                 <code>ACTIVE</code> state, you can call <code>SplitShard</code>.
    #             </p>
    #          <p>If the specified stream does not exist, <a>DescribeStreamSummary</a>
    #             returns a <code>ResourceNotFoundException</code>. If you try to create more shards than
    #             are authorized for your account, you receive a <code>LimitExceededException</code>. </p>
    #          <p>For the default shard limit for an Amazon Web Services account, see <a href="https://docs.aws.amazon.com/kinesis/latest/dev/service-sizes-and-limits.html">Kinesis
    #                 Data Streams Limits</a> in the <i>Amazon Kinesis Data Streams Developer
    #                 Guide</i>. To increase this limit, <a href="https://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html">contact Amazon Web Services
    #                 Support</a>.</p>
    #          <p>If you try to operate on too many streams simultaneously using <a>CreateStream</a>, <a>DeleteStream</a>, <a>MergeShards</a>, and/or <a>SplitShard</a>, you receive a
    #                 <code>LimitExceededException</code>. </p>
    #          <p>
    #             <code>SplitShard</code> has a limit of five transactions per second per account.</p>
    # @param [Hash, Types::SplitShardInput] params
    # @option params [String] :stream_name
    #   <p>The name of the stream for the shard split.</p>
    # @option params [String] :shard_to_split
    #   <p>The shard ID of the shard to split.</p>
    # @option params [String] :new_starting_hash_key
    #   <p>A hash key value for the starting hash key of one of the child shards created by the
    #               split. The hash key range for a given shard constitutes a set of ordered contiguous
    #               positive integers. The value for <code>NewStartingHashKey</code> must be in the range of
    #               hash keys being mapped into the shard. The <code>NewStartingHashKey</code> hash key
    #               value and all higher hash key values in hash key range are distributed to one of the
    #               child shards. All the lower hash key values in the range are distributed to the other
    #               child shard.</p>
    # @option params [String] :stream_arn
    #   <p>The ARN of the stream.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     stream_name: "StreamName",
    #     shard_to_split: "ShardId", # required
    #     new_starting_hash_key: "HashKey", # required
    #     stream_arn: "StreamARN"
    #   }
    #   options = {}
    #   response = client.split_shard(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def split_shard(params = {}, options = {})
      request = build_request(:split_shard, params)
      request.send_request(options)
    end

    # <p>Enables or updates server-side encryption using an Amazon Web Services KMS key for a
    #             specified stream. </p>
    #          <note>
    #             <p>When invoking this API, you must use either the <code>StreamARN</code> or the
    #                     <code>StreamName</code> parameter, or both. It is recommended that you use the
    #                     <code>StreamARN</code> input parameter when you invoke this API.</p>
    #          </note>
    #          <p>Starting encryption is an asynchronous operation. Upon receiving the request, Kinesis
    #             Data Streams returns immediately and sets the status of the stream to
    #                 <code>UPDATING</code>. After the update is complete, Kinesis Data Streams sets the
    #             status of the stream back to <code>ACTIVE</code>. Updating or applying encryption
    #             normally takes a few seconds to complete, but it can take minutes. You can continue to
    #             read and write data to your stream while its status is <code>UPDATING</code>. Once the
    #             status of the stream is <code>ACTIVE</code>, encryption begins for records written to
    #             the stream. </p>
    #          <p>API Limits: You can successfully apply a new Amazon Web Services KMS key for
    #             server-side encryption 25 times in a rolling 24-hour period.</p>
    #          <p>Note: It can take up to 5 seconds after the stream is in an <code>ACTIVE</code> status
    #             before all records written to the stream are encrypted. After you enable encryption, you
    #             can verify that encryption is applied by inspecting the API response from
    #                 <code>PutRecord</code> or <code>PutRecords</code>.</p>
    # @param [Hash, Types::StartStreamEncryptionInput] params
    # @option params [String] :stream_name
    #   <p>The name of the stream for which to start encrypting records.</p>
    # @option params [String] :encryption_type
    #   <p>The encryption type to use. The only valid value is <code>KMS</code>.</p>
    # @option params [String] :key_id
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
    # @option params [String] :stream_arn
    #   <p>The ARN of the stream.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     stream_name: "StreamName",
    #     encryption_type: "NONE" # One of: ["NONE", "KMS"], # required
    #     key_id: "KeyId", # required
    #     stream_arn: "StreamARN"
    #   }
    #   options = {}
    #   response = client.start_stream_encryption(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def start_stream_encryption(params = {}, options = {})
      request = build_request(:start_stream_encryption, params)
      request.send_request(options)
    end

    # <p>Disables server-side encryption for a specified stream. </p>
    #          <note>
    #             <p>When invoking this API, you must use either the <code>StreamARN</code> or the
    #                     <code>StreamName</code> parameter, or both. It is recommended that you use the
    #                     <code>StreamARN</code> input parameter when you invoke this API.</p>
    #          </note>
    #          <p>Stopping encryption is an asynchronous operation. Upon receiving the request, Kinesis
    #             Data Streams returns immediately and sets the status of the stream to
    #                 <code>UPDATING</code>. After the update is complete, Kinesis Data Streams sets the
    #             status of the stream back to <code>ACTIVE</code>. Stopping encryption normally takes a
    #             few seconds to complete, but it can take minutes. You can continue to read and write
    #             data to your stream while its status is <code>UPDATING</code>. Once the status of the
    #             stream is <code>ACTIVE</code>, records written to the stream are no longer encrypted by
    #             Kinesis Data Streams. </p>
    #          <p>API Limits: You can successfully disable server-side encryption 25 times in a rolling
    #             24-hour period. </p>
    #          <p>Note: It can take up to 5 seconds after the stream is in an <code>ACTIVE</code> status
    #             before all records written to the stream are no longer subject to encryption. After you
    #             disabled encryption, you can verify that encryption is not applied by inspecting the API
    #             response from <code>PutRecord</code> or <code>PutRecords</code>.</p>
    # @param [Hash, Types::StopStreamEncryptionInput] params
    # @option params [String] :stream_name
    #   <p>The name of the stream on which to stop encrypting records.</p>
    # @option params [String] :encryption_type
    #   <p>The encryption type. The only valid value is <code>KMS</code>.</p>
    # @option params [String] :key_id
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
    # @option params [String] :stream_arn
    #   <p>The ARN of the stream.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     stream_name: "StreamName",
    #     encryption_type: "NONE" # One of: ["NONE", "KMS"], # required
    #     key_id: "KeyId", # required
    #     stream_arn: "StreamARN"
    #   }
    #   options = {}
    #   response = client.stop_stream_encryption(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def stop_stream_encryption(params = {}, options = {})
      request = build_request(:stop_stream_encryption, params)
      request.send_request(options)
    end

    # <p>This operation establishes an HTTP/2 connection between the consumer you specify in
    #             the <code>ConsumerARN</code> parameter and the shard you specify in the
    #                 <code>ShardId</code> parameter. After the connection is successfully established,
    #             Kinesis Data Streams pushes records from the shard to the consumer over this connection.
    #             Before you call this operation, call <a>RegisterStreamConsumer</a> to
    #             register the consumer with Kinesis Data Streams.</p>
    #          <p>When the <code>SubscribeToShard</code> call succeeds, your consumer starts receiving
    #             events of type <a>SubscribeToShardEvent</a> over the HTTP/2 connection for up
    #             to 5 minutes, after which time you need to call <code>SubscribeToShard</code> again to
    #             renew the subscription if you want to continue to receive records.</p>
    #          <p>You can make one call to <code>SubscribeToShard</code> per second per registered
    #             consumer per shard. For example, if you have a 4000 shard stream and two registered
    #             stream consumers, you can make one <code>SubscribeToShard</code> request per second for
    #             each combination of shard and registered consumer, allowing you to subscribe both
    #             consumers to all 4000 shards in one second. </p>
    #          <p>If you call <code>SubscribeToShard</code> again with the same <code>ConsumerARN</code>
    #             and <code>ShardId</code> within 5 seconds of a successful call, you'll get a
    #                 <code>ResourceInUseException</code>. If you call <code>SubscribeToShard</code> 5
    #             seconds or more after a successful call, the second call takes over the subscription and
    #             the previous connection expires or fails with a
    #             <code>ResourceInUseException</code>.</p>
    #          <p>For an example of how to use this operation, see <a href="https://docs.aws.amazon.com/streams/latest/dev/building-enhanced-consumers-api.html">Enhanced Fan-Out
    #                 Using the Kinesis Data Streams API</a>.</p>
    # @param [Hash, Types::SubscribeToShardInput] params
    # @option params [String] :consumer_arn
    #   <p>For this parameter, use the value you obtained when you called <a>RegisterStreamConsumer</a>.</p>
    # @option params [String] :shard_id
    #   <p>The ID of the shard you want to subscribe to. To see a list of all the shards for a
    #               given stream, use <a>ListShards</a>.</p>
    # @option params [Types::StartingPosition] :starting_position
    #   <p>The starting position in the data stream from which to start streaming.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     consumer_arn: "ConsumerARN", # required
    #     shard_id: "ShardId", # required
    #     starting_position: { # required
    #       type: "AT_SEQUENCE_NUMBER" # One of: ["AT_SEQUENCE_NUMBER", "AFTER_SEQUENCE_NUMBER", "TRIM_HORIZON", "LATEST", "AT_TIMESTAMP"], # required
    #       sequence_number: "SequenceNumber",
    #       timestamp: Time.now
    #     }
    #   }
    #   options = {}
    #   response = client.subscribe_to_shard(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     event_stream: { # required
    #       # One of:
    #       subscribe_to_shard_event: {
    #         records: [ # required
    #           {
    #             sequence_number: "SequenceNumber", # required
    #             approximate_arrival_timestamp: Time.now,
    #             data: "data", # required
    #             partition_key: "PartitionKey", # required
    #             encryption_type: "NONE" # One of: ["NONE", "KMS"]
    #           }
    #         ],
    #         continuation_sequence_number: "SequenceNumber", # required
    #         millis_behind_latest: 1, # required
    #         child_shards: [
    #           {
    #             shard_id: "ShardId", # required
    #             parent_shards: ["ShardId"], # required
    #             hash_key_range: { # required
    #               starting_hash_key: "HashKey", # required
    #               ending_hash_key: "HashKey", # required
    #             }
    #           }
    #         ]
    #       },
    #       resource_not_found_exception: {
    #         message: "ErrorMessage"
    #       },
    #       resource_in_use_exception: {
    #         message: "ErrorMessage"
    #       },
    #       kms_disabled_exception: {
    #         message: "ErrorMessage"
    #       },
    #       kms_invalid_state_exception: {
    #         message: "ErrorMessage"
    #       },
    #       kms_access_denied_exception: {
    #         message: "ErrorMessage"
    #       },
    #       kms_not_found_exception: {
    #         message: "ErrorMessage"
    #       },
    #       kms_opt_in_required: {
    #         message: "ErrorMessage"
    #       },
    #       kms_throttling_exception: {
    #         message: "ErrorMessage"
    #       },
    #       internal_failure_exception: {
    #         message: "ErrorMessage"
    #       }
    #     }
    #   }
    # @return [Types::SubscribeToShardOutput]
    def subscribe_to_shard(params = {}, options = {})
      request = build_request(:subscribe_to_shard, params)
      request.send_request(options)
    end

    # <p>Adds or updates tags for the specified Kinesis resource. Each tag is a label consisting of a user-defined key and value. Tags can help you manage, identify, organize, search for, and filter resources. You can assign up to 50 tags to a Kinesis resource.</p>
    # @param [Hash, Types::TagResourceInput] params
    # @option params [Hash<String, String>] :tags
    #   <p>An array of tags to be added to the Kinesis resource. A tag consists of a required key and an optional value. You can add up to 50 tags per resource.</p>
    #            <p>Tags may only contain Unicode letters, digits, white space, or these symbols: _ . : / = + - @.</p>
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the Kinesis resource to which to add tags.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     tags: { # required
    #       "TagKey" => "TagValue"
    #     },
    #     resource_arn: "ResourceARN", # required
    #   }
    #   options = {}
    #   response = client.tag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def tag_resource(params = {}, options = {})
      request = build_request(:tag_resource, params)
      request.send_request(options)
    end

    # <p>Removes tags from the specified Kinesis resource. Removed tags are deleted and can't be recovered after this operation completes successfully.</p>
    # @param [Hash, Types::UntagResourceInput] params
    # @option params [Array<String>] :tag_keys
    #   <p>A list of tag key-value pairs. Existing tags of the resource whose keys are members of this list will be removed from the Kinesis resource.</p>
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the Kinesis resource from which to remove tags.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     tag_keys: ["TagKey"], # required
    #     resource_arn: "ResourceARN", # required
    #   }
    #   options = {}
    #   response = client.untag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def untag_resource(params = {}, options = {})
      request = build_request(:untag_resource, params)
      request.send_request(options)
    end

    # <p>Updates the shard count of the specified stream to the specified number of shards.
    #             This API is only supported for the data streams with the provisioned capacity
    #             mode.</p>
    #          <note>
    #             <p>When invoking this API, you must use either the <code>StreamARN</code> or the
    #                     <code>StreamName</code> parameter, or both. It is recommended that you use the
    #                     <code>StreamARN</code> input parameter when you invoke this API.</p>
    #          </note>
    #          <p>Updating the shard count is an asynchronous operation. Upon receiving the request,
    #             Kinesis Data Streams returns immediately and sets the status of the stream to
    #                 <code>UPDATING</code>. After the update is complete, Kinesis Data Streams sets the
    #             status of the stream back to <code>ACTIVE</code>. Depending on the size of the stream,
    #             the scaling action could take a few minutes to complete. You can continue to read and
    #             write data to your stream while its status is <code>UPDATING</code>.</p>
    #          <p>To update the shard count, Kinesis Data Streams performs splits or merges on
    #             individual shards. This can cause short-lived shards to be created, in addition to the
    #             final shards. These short-lived shards count towards your total shard limit for your
    #             account in the Region.</p>
    #          <p>When using this operation, we recommend that you specify a target shard count that is
    #             a multiple of 25% (25%, 50%, 75%, 100%). You can specify any target value within your
    #             shard limit. However, if you specify a target that isn't a multiple of 25%, the scaling
    #             action might take longer to complete. </p>
    #          <p>This operation has the following default limits. By default, you cannot do the
    #             following:</p>
    #          <ul>
    #             <li>
    #                <p>Scale more than ten times per rolling 24-hour period per stream</p>
    #             </li>
    #             <li>
    #                <p>Scale up to more than double your current shard count for a stream</p>
    #             </li>
    #             <li>
    #                <p>Scale down below half your current shard count for a stream</p>
    #             </li>
    #             <li>
    #                <p>Scale up to more than 10000 shards in a stream</p>
    #             </li>
    #             <li>
    #                <p>Scale a stream with more than 10000 shards down unless the result is less than
    #                     10000 shards</p>
    #             </li>
    #             <li>
    #                <p>Scale up to more than the shard limit for your account</p>
    #             </li>
    #             <li>
    #                <p>Make over 10 TPS. TPS over 10 will trigger the LimitExceededException</p>
    #             </li>
    #          </ul>
    #          <p>For the default limits for an Amazon Web Services account, see <a href="https://docs.aws.amazon.com/kinesis/latest/dev/service-sizes-and-limits.html">Streams
    #                 Limits</a> in the <i>Amazon Kinesis Data Streams Developer
    #                 Guide</i>. To request an increase in the call rate limit, the shard limit for
    #             this API, or your overall shard limit, use the <a href="https://console.aws.amazon.com/support/v1#/case/create?issueType=service-limit-increase&limitType=service-code-kinesis">limits form</a>.</p>
    # @param [Hash, Types::UpdateShardCountInput] params
    # @option params [String] :stream_name
    #   <p>The name of the stream.</p>
    # @option params [Integer] :target_shard_count
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
    # @option params [String] :scaling_type
    #   <p>The scaling type. Uniform scaling creates shards of equal size.</p>
    # @option params [String] :stream_arn
    #   <p>The ARN of the stream.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     stream_name: "StreamName",
    #     target_shard_count: 1, # required
    #     scaling_type: "UNIFORM_SCALING" # One of: ["UNIFORM_SCALING"], # required
    #     stream_arn: "StreamARN"
    #   }
    #   options = {}
    #   response = client.update_shard_count(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     stream_name: "StreamName",
    #     current_shard_count: 1,
    #     target_shard_count: 1,
    #     stream_arn: "StreamARN"
    #   }
    # @return [Types::UpdateShardCountOutput]
    def update_shard_count(params = {}, options = {})
      request = build_request(:update_shard_count, params)
      request.send_request(options)
    end

    # <p> Updates the capacity mode of the data stream. Currently, in Kinesis Data Streams, you
    #             can choose between an <b>on-demand</b> capacity mode and a
    #                 <b>provisioned</b> capacity mode for your data stream.
    #         </p>
    # @param [Hash, Types::UpdateStreamModeInput] params
    # @option params [String] :stream_arn
    #   <p> Specifies the ARN of the data stream whose capacity mode you want to update. </p>
    # @option params [Types::StreamModeDetails] :stream_mode_details
    #   <p> Specifies the capacity mode to which you want to set your data stream. Currently, in
    #               Kinesis Data Streams, you can choose between an <b>on-demand</b> capacity mode and a <b>provisioned</b> capacity mode for your data streams. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     stream_arn: "StreamARN", # required
    #     stream_mode_details: { # required
    #       stream_mode: "PROVISIONED" # One of: ["PROVISIONED", "ON_DEMAND"], # required
    #     }
    #   }
    #   options = {}
    #   response = client.update_stream_mode(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_stream_mode(params = {}, options = {})
      request = build_request(:update_stream_mode, params)
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
      context[:gem_name] = 'aws-sdk-kinesis'
      context[:gem_version] = '2.0.0.pre0'
      Smithy::Client::Request.new(handlers: handlers, context: context)
    end

    private

    def waiters
      {
        stream_exists: Waiters::StreamExists,
        stream_not_exists: Waiters::StreamNotExists
      }
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

      # @api private
      def protocols
        {
          json_rpc: Aws::Core::JsonRpc
        }
      end
    end
  end
end
