# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'seahorse/client/plugins/content_length'
require 'aws-sdk-core/plugins/credentials_configuration'
require 'aws-sdk-core/plugins/logging'
require 'aws-sdk-core/plugins/param_converter'
require 'aws-sdk-core/plugins/param_validator'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/helpful_socket_errors'
require 'aws-sdk-core/plugins/retry_errors'
require 'aws-sdk-core/plugins/global_configuration'
require 'aws-sdk-core/plugins/regional_endpoint'
require 'aws-sdk-core/plugins/endpoint_discovery'
require 'aws-sdk-core/plugins/endpoint_pattern'
require 'aws-sdk-core/plugins/response_paging'
require 'aws-sdk-core/plugins/stub_responses'
require 'aws-sdk-core/plugins/idempotency_token'
require 'aws-sdk-core/plugins/invocation_id'
require 'aws-sdk-core/plugins/jsonvalue_converter'
require 'aws-sdk-core/plugins/client_metrics_plugin'
require 'aws-sdk-core/plugins/client_metrics_send_plugin'
require 'aws-sdk-core/plugins/transfer_encoding'
require 'aws-sdk-core/plugins/http_checksum'
require 'aws-sdk-core/plugins/checksum_algorithm'
require 'aws-sdk-core/plugins/request_compression'
require 'aws-sdk-core/plugins/defaults_mode'
require 'aws-sdk-core/plugins/recursion_detection'
require 'aws-sdk-core/plugins/telemetry'
require 'aws-sdk-core/plugins/sign'
require 'aws-sdk-core/plugins/protocols/json_rpc'
require 'aws-sdk-dynamodbstreams/plugins/simple_attributes'

module Aws::DynamoDBStreams
  # An API client for DynamoDBStreams.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::DynamoDBStreams::Client.new(
  #       region: region_name,
  #       credentials: credentials,
  #       # ...
  #     )
  #
  # For details on configuring region and credentials see
  # the [developer guide](/sdk-for-ruby/v3/developer-guide/setup-config.html).
  #
  # See {#initialize} for a full list of supported configuration options.
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :dynamodbstreams

    set_api(ClientApi::API)

    add_plugin(Seahorse::Client::Plugins::ContentLength)
    add_plugin(Aws::Plugins::CredentialsConfiguration)
    add_plugin(Aws::Plugins::Logging)
    add_plugin(Aws::Plugins::ParamConverter)
    add_plugin(Aws::Plugins::ParamValidator)
    add_plugin(Aws::Plugins::UserAgent)
    add_plugin(Aws::Plugins::HelpfulSocketErrors)
    add_plugin(Aws::Plugins::RetryErrors)
    add_plugin(Aws::Plugins::GlobalConfiguration)
    add_plugin(Aws::Plugins::RegionalEndpoint)
    add_plugin(Aws::Plugins::EndpointDiscovery)
    add_plugin(Aws::Plugins::EndpointPattern)
    add_plugin(Aws::Plugins::ResponsePaging)
    add_plugin(Aws::Plugins::StubResponses)
    add_plugin(Aws::Plugins::IdempotencyToken)
    add_plugin(Aws::Plugins::InvocationId)
    add_plugin(Aws::Plugins::JsonvalueConverter)
    add_plugin(Aws::Plugins::ClientMetricsPlugin)
    add_plugin(Aws::Plugins::ClientMetricsSendPlugin)
    add_plugin(Aws::Plugins::TransferEncoding)
    add_plugin(Aws::Plugins::HttpChecksum)
    add_plugin(Aws::Plugins::ChecksumAlgorithm)
    add_plugin(Aws::Plugins::RequestCompression)
    add_plugin(Aws::Plugins::DefaultsMode)
    add_plugin(Aws::Plugins::RecursionDetection)
    add_plugin(Aws::Plugins::Telemetry)
    add_plugin(Aws::Plugins::Sign)
    add_plugin(Aws::Plugins::Protocols::JsonRpc)
    add_plugin(Aws::DynamoDBStreams::Plugins::SimpleAttributes)
    add_plugin(Aws::DynamoDBStreams::Plugins::Endpoints)

    # @overload initialize(options)
    #   @param [Hash] options
    #
    #   @option options [Array<Seahorse::Client::Plugin>] :plugins ([]])
    #     A list of plugins to apply to the client. Each plugin is either a
    #     class name or an instance of a plugin class.
    #
    #   @option options [required, Aws::CredentialProvider] :credentials
    #     Your AWS credentials used for authentication. This can be any class that includes and implements
    #     `Aws::CredentialProvider`, or instance of any one of the following classes:
    #
    #     * `Aws::Credentials` - Used for configuring static, non-refreshing
    #       credentials.
    #
    #     * `Aws::SharedCredentials` - Used for loading static credentials from a
    #       shared file, such as `~/.aws/config`.
    #
    #     * `Aws::AssumeRoleCredentials` - Used when you need to assume a role.
    #
    #     * `Aws::AssumeRoleWebIdentityCredentials` - Used when you need to
    #       assume a role after providing credentials via the web.
    #
    #     * `Aws::SSOCredentials` - Used for loading credentials from AWS SSO using an
    #       access token generated from `aws login`.
    #
    #     * `Aws::ProcessCredentials` - Used for loading credentials from a
    #       process that outputs to stdout.
    #
    #     * `Aws::InstanceProfileCredentials` - Used for loading credentials
    #       from an EC2 IMDS on an EC2 instance.
    #
    #     * `Aws::ECSCredentials` - Used for loading credentials from
    #       instances running in ECS.
    #
    #     * `Aws::CognitoIdentityCredentials` - Used for loading credentials
    #       from the Cognito Identity service.
    #
    #     When `:credentials` are not configured directly, the following locations will be searched for credentials:
    #
    #     * `Aws.config[:credentials]`
    #
    #     * The `:access_key_id`, `:secret_access_key`, `:session_token`, and
    #       `:account_id` options.
    #
    #     * `ENV['AWS_ACCESS_KEY_ID']`, `ENV['AWS_SECRET_ACCESS_KEY']`,
    #       `ENV['AWS_SESSION_TOKEN']`, and `ENV['AWS_ACCOUNT_ID']`.
    #
    #     * `~/.aws/credentials`
    #
    #     * `~/.aws/config`
    #
    #     * EC2/ECS IMDS instance profile - When used by default, the timeouts are very aggressive.
    #       Construct and pass an instance of `Aws::InstanceProfileCredentials` or `Aws::ECSCredentials` to
    #       enable retries and extended timeouts. Instance profile credential fetching can be disabled by
    #       setting `ENV['AWS_EC2_METADATA_DISABLED']` to `true`.
    #
    #   @option options [required, String] :region
    #     The AWS region to connect to.  The configured `:region` is
    #     used to determine the service `:endpoint`. When not passed,
    #     a default `:region` is searched for in the following locations:
    #
    #     * `Aws.config[:region]`
    #     * `ENV['AWS_REGION']`
    #     * `ENV['AMAZON_REGION']`
    #     * `ENV['AWS_DEFAULT_REGION']`
    #     * `~/.aws/credentials`
    #     * `~/.aws/config`
    #
    #   @option options [String] :access_key_id
    #
    #   @option options [String] :account_id
    #
    #   @option options [Boolean] :active_endpoint_cache (false)
    #     When set to `true`, a thread polling for endpoints will be running in
    #     the background every 60 secs (default). Defaults to `false`.
    #
    #   @option options [Boolean] :adaptive_retry_wait_to_fill (true)
    #     Used only in `adaptive` retry mode.  When true, the request will sleep
    #     until there is sufficent client side capacity to retry the request.
    #     When false, the request will raise a `RetryCapacityNotAvailableError` and will
    #     not retry instead of sleeping.
    #
    #   @option options [Array<String>] :auth_scheme_preference
    #     A list of preferred authentication schemes to use when making a request. Supported values are:
    #     `sigv4`, `sigv4a`, `httpBearerAuth`, and `noAuth`. When set using `ENV['AWS_AUTH_SCHEME_PREFERENCE']` or in
    #     shared config as `auth_scheme_preference`, the value should be a comma-separated list.
    #
    #   @option options [Boolean] :client_side_monitoring (false)
    #     When `true`, client-side metrics will be collected for all API requests from
    #     this client.
    #
    #   @option options [String] :client_side_monitoring_client_id ("")
    #     Allows you to provide an identifier for this client which will be attached to
    #     all generated client side metrics. Defaults to an empty string.
    #
    #   @option options [String] :client_side_monitoring_host ("127.0.0.1")
    #     Allows you to specify the DNS hostname or IPv4 or IPv6 address that the client
    #     side monitoring agent is running on, where client metrics will be published via UDP.
    #
    #   @option options [Integer] :client_side_monitoring_port (31000)
    #     Required for publishing client metrics. The port that the client side monitoring
    #     agent is running on, where client metrics will be published via UDP.
    #
    #   @option options [Aws::ClientSideMonitoring::Publisher] :client_side_monitoring_publisher (Aws::ClientSideMonitoring::Publisher)
    #     Allows you to provide a custom client-side monitoring publisher class. By default,
    #     will use the Client Side Monitoring Agent Publisher.
    #
    #   @option options [Boolean] :convert_params (true)
    #     When `true`, an attempt is made to coerce request parameters into
    #     the required types.
    #
    #   @option options [Boolean] :correct_clock_skew (true)
    #     Used only in `standard` and adaptive retry modes. Specifies whether to apply
    #     a clock skew correction and retry requests with skewed client clocks.
    #
    #   @option options [String] :defaults_mode ("legacy")
    #     See {Aws::DefaultsModeConfiguration} for a list of the
    #     accepted modes and the configuration defaults that are included.
    #
    #   @option options [Boolean] :disable_host_prefix_injection (false)
    #     When `true`, the SDK will not prepend the modeled host prefix to the endpoint.
    #
    #   @option options [Boolean] :disable_request_compression (false)
    #     When set to 'true' the request body will not be compressed
    #     for supported operations.
    #
    #   @option options [String, URI::HTTPS, URI::HTTP] :endpoint
    #     Normally you should not configure the `:endpoint` option
    #     directly. This is normally constructed from the `:region`
    #     option. Configuring `:endpoint` is normally reserved for
    #     connecting to test or custom endpoints. The endpoint should
    #     be a URI formatted like:
    #
    #         'http://example.com'
    #         'https://example.com'
    #         'http://example.com:123'
    #
    #   @option options [Integer] :endpoint_cache_max_entries (1000)
    #     Used for the maximum size limit of the LRU cache storing endpoints data
    #     for endpoint discovery enabled operations. Defaults to 1000.
    #
    #   @option options [Integer] :endpoint_cache_max_threads (10)
    #     Used for the maximum threads in use for polling endpoints to be cached, defaults to 10.
    #
    #   @option options [Integer] :endpoint_cache_poll_interval (60)
    #     When :endpoint_discovery and :active_endpoint_cache is enabled,
    #     Use this option to config the time interval in seconds for making
    #     requests fetching endpoints information. Defaults to 60 sec.
    #
    #   @option options [Boolean] :endpoint_discovery (false)
    #     When set to `true`, endpoint discovery will be enabled for operations when available.
    #
    #   @option options [Boolean] :ignore_configured_endpoint_urls
    #     Setting to true disables use of endpoint URLs provided via environment
    #     variables and the shared configuration file.
    #
    #   @option options [Aws::Log::Formatter] :log_formatter (Aws::Log::Formatter.default)
    #     The log formatter.
    #
    #   @option options [Symbol] :log_level (:info)
    #     The log level to send messages to the `:logger` at.
    #
    #   @option options [Logger] :logger
    #     The Logger instance to send log messages to.  If this option
    #     is not set, logging will be disabled.
    #
    #   @option options [Integer] :max_attempts (3)
    #     An integer representing the maximum number attempts that will be made for
    #     a single request, including the initial attempt.  For example,
    #     setting this value to 5 will result in a request being retried up to
    #     4 times. Used in `standard` and `adaptive` retry modes.
    #
    #   @option options [String] :profile ("default")
    #     Used when loading credentials from the shared credentials file at `HOME/.aws/credentials`.
    #     When not specified, 'default' is used.
    #
    #   @option options [String] :request_checksum_calculation ("when_supported")
    #     Determines when a checksum will be calculated for request payloads. Values are:
    #
    #     * `when_supported` - (default) When set, a checksum will be
    #       calculated for all request payloads of operations modeled with the
    #       `httpChecksum` trait where `requestChecksumRequired` is `true` and/or a
    #       `requestAlgorithmMember` is modeled.
    #     * `when_required` - When set, a checksum will only be calculated for
    #       request payloads of operations modeled with the  `httpChecksum` trait where
    #       `requestChecksumRequired` is `true` or where a `requestAlgorithmMember`
    #       is modeled and supplied.
    #
    #   @option options [Integer] :request_min_compression_size_bytes (10240)
    #     The minimum size in bytes that triggers compression for request
    #     bodies. The value must be non-negative integer value between 0
    #     and 10485780 bytes inclusive.
    #
    #   @option options [String] :response_checksum_validation ("when_supported")
    #     Determines when checksum validation will be performed on response payloads. Values are:
    #
    #     * `when_supported` - (default) When set, checksum validation is performed on all
    #       response payloads of operations modeled with the `httpChecksum` trait where
    #       `responseAlgorithms` is modeled, except when no modeled checksum algorithms
    #       are supported.
    #     * `when_required` - When set, checksum validation is not performed on
    #       response payloads of operations unless the checksum algorithm is supported and
    #       the `requestValidationModeMember` member is set to `ENABLED`.
    #
    #   @option options [Proc] :retry_backoff
    #     A proc or lambda used for backoff. Defaults to 2**retries * retry_base_delay.
    #     This option is only used in the `legacy` retry mode.
    #
    #   @option options [Float] :retry_base_delay (0.3)
    #     The base delay in seconds used by the default backoff function. This option
    #     is only used in the `legacy` retry mode.
    #
    #   @option options [Symbol] :retry_jitter (:none)
    #     A delay randomiser function used by the default backoff function.
    #     Some predefined functions can be referenced by name - :none, :equal, :full,
    #     otherwise a Proc that takes and returns a number. This option is only used
    #     in the `legacy` retry mode.
    #
    #     @see https://www.awsarchitectureblog.com/2015/03/backoff.html
    #
    #   @option options [Integer] :retry_limit (3)
    #     The maximum number of times to retry failed requests.  Only
    #     ~ 500 level server errors and certain ~ 400 level client errors
    #     are retried.  Generally, these are throttling errors, data
    #     checksum errors, networking errors, timeout errors, auth errors,
    #     endpoint discovery, and errors from expired credentials.
    #     This option is only used in the `legacy` retry mode.
    #
    #   @option options [Integer] :retry_max_delay (0)
    #     The maximum number of seconds to delay between retries (0 for no limit)
    #     used by the default backoff function. This option is only used in the
    #     `legacy` retry mode.
    #
    #   @option options [String] :retry_mode ("legacy")
    #     Specifies which retry algorithm to use. Values are:
    #
    #     * `legacy` - The pre-existing retry behavior.  This is default value if
    #       no retry mode is provided.
    #
    #     * `standard` - A standardized set of retry rules across the AWS SDKs.
    #       This includes support for retry quotas, which limit the number of
    #       unsuccessful retries a client can make.
    #
    #     * `adaptive` - An experimental retry mode that includes all the
    #       functionality of `standard` mode along with automatic client side
    #       throttling.  This is a provisional mode that may change behavior
    #       in the future.
    #
    #   @option options [String] :sdk_ua_app_id
    #     A unique and opaque application ID that is appended to the
    #     User-Agent header as app/sdk_ua_app_id. It should have a
    #     maximum length of 50. This variable is sourced from environment
    #     variable AWS_SDK_UA_APP_ID or the shared config profile attribute sdk_ua_app_id.
    #
    #   @option options [String] :secret_access_key
    #
    #   @option options [String] :session_token
    #
    #   @option options [Array] :sigv4a_signing_region_set
    #     A list of regions that should be signed with SigV4a signing. When
    #     not passed, a default `:sigv4a_signing_region_set` is searched for
    #     in the following locations:
    #
    #     * `Aws.config[:sigv4a_signing_region_set]`
    #     * `ENV['AWS_SIGV4A_SIGNING_REGION_SET']`
    #     * `~/.aws/config`
    #
    #   @option options [Boolean] :simple_attributes (false)
    #     When enabled, returns DynamoDBStream attribute values using
    #     hashes, arrays, sets, integers, floats, booleans, and nil.
    #
    #   @option options [Boolean] :simple_json (false)
    #     Disables request parameter conversion, validation, and formatting.
    #     Also disables response data type conversions. The request parameters
    #     hash must be formatted exactly as the API expects.This option is useful
    #     when you want to ensure the highest level of performance by avoiding
    #     overhead of walking request parameters and response data structures.
    #
    #   @option options [Boolean] :stub_responses (false)
    #     Causes the client to return stubbed responses. By default
    #     fake responses are generated and returned. You can specify
    #     the response data to return or errors to raise by calling
    #     {ClientStubs#stub_responses}. See {ClientStubs} for more information.
    #
    #     ** Please note ** When response stubbing is enabled, no HTTP
    #     requests are made, and retries are disabled.
    #
    #   @option options [Aws::Telemetry::TelemetryProviderBase] :telemetry_provider (Aws::Telemetry::NoOpTelemetryProvider)
    #     Allows you to provide a telemetry provider, which is used to
    #     emit telemetry data. By default, uses `NoOpTelemetryProvider` which
    #     will not record or emit any telemetry data. The SDK supports the
    #     following telemetry providers:
    #
    #     * OpenTelemetry (OTel) - To use the OTel provider, install and require the
    #     `opentelemetry-sdk` gem and then, pass in an instance of a
    #     `Aws::Telemetry::OTelProvider` for telemetry provider.
    #
    #   @option options [Aws::TokenProvider] :token_provider
    #     Your Bearer token used for authentication. This can be any class that includes and implements
    #     `Aws::TokenProvider`, or instance of any one of the following classes:
    #
    #     * `Aws::StaticTokenProvider` - Used for configuring static, non-refreshing
    #       tokens.
    #
    #     * `Aws::SSOTokenProvider` - Used for loading tokens from AWS SSO using an
    #       access token generated from `aws login`.
    #
    #     When `:token_provider` is not configured directly, the `Aws::TokenProviderChain`
    #     will be used to search for tokens configured for your profile in shared configuration files.
    #
    #   @option options [Boolean] :use_dualstack_endpoint
    #     When set to `true`, dualstack enabled endpoints (with `.aws` TLD)
    #     will be used if available.
    #
    #   @option options [Boolean] :use_fips_endpoint
    #     When set to `true`, fips compatible endpoints will be used if available.
    #     When a `fips` region is used, the region is normalized and this config
    #     is set to `true`.
    #
    #   @option options [Boolean] :validate_params (true)
    #     When `true`, request parameters are validated before
    #     sending the request.
    #
    #   @option options [Aws::DynamoDBStreams::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::DynamoDBStreams::EndpointParameters`.
    #
    #   @option options [Float] :http_continue_timeout (1)
    #     The number of seconds to wait for a 100-continue response before sending the
    #     request body.  This option has no effect unless the request has "Expect"
    #     header set to "100-continue".  Defaults to `nil` which  disables this
    #     behaviour.  This value can safely be set per request on the session.
    #
    #   @option options [Float] :http_idle_timeout (5)
    #     The number of seconds a connection is allowed to sit idle before it
    #     is considered stale.  Stale connections are closed and removed from the
    #     pool before making a request.
    #
    #   @option options [Float] :http_open_timeout (15)
    #     The default number of seconds to wait for response data.
    #     This value can safely be set per-request on the session.
    #
    #   @option options [URI::HTTP,String] :http_proxy
    #     A proxy to send requests through.  Formatted like 'http://proxy.com:123'.
    #
    #   @option options [Float] :http_read_timeout (60)
    #     The default number of seconds to wait for response data.
    #     This value can safely be set per-request on the session.
    #
    #   @option options [Boolean] :http_wire_trace (false)
    #     When `true`,  HTTP debug output will be sent to the `:logger`.
    #
    #   @option options [Proc] :on_chunk_received
    #     When a Proc object is provided, it will be used as callback when each chunk
    #     of the response body is received. It provides three arguments: the chunk,
    #     the number of bytes received, and the total number of
    #     bytes in the response (or nil if the server did not send a `content-length`).
    #
    #   @option options [Proc] :on_chunk_sent
    #     When a Proc object is provided, it will be used as callback when each chunk
    #     of the request body is sent. It provides three arguments: the chunk,
    #     the number of bytes read from the body, and the total number of
    #     bytes in the body.
    #
    #   @option options [Boolean] :raise_response_errors (true)
    #     When `true`, response errors are raised.
    #
    #   @option options [String] :ssl_ca_bundle
    #     Full path to the SSL certificate authority bundle file that should be used when
    #     verifying peer certificates.  If you do not pass `:ssl_ca_bundle` or
    #     `:ssl_ca_directory` the the system default will be used if available.
    #
    #   @option options [String] :ssl_ca_directory
    #     Full path of the directory that contains the unbundled SSL certificate
    #     authority files for verifying peer certificates.  If you do
    #     not pass `:ssl_ca_bundle` or `:ssl_ca_directory` the the system
    #     default will be used if available.
    #
    #   @option options [String] :ssl_ca_store
    #     Sets the X509::Store to verify peer certificate.
    #
    #   @option options [OpenSSL::X509::Certificate] :ssl_cert
    #     Sets a client certificate when creating http connections.
    #
    #   @option options [OpenSSL::PKey] :ssl_key
    #     Sets a client key when creating http connections.
    #
    #   @option options [Float] :ssl_timeout
    #     Sets the SSL timeout in seconds
    #
    #   @option options [Boolean] :ssl_verify_peer (true)
    #     When `true`, SSL peer certificates are verified when establishing a connection.
    #
    def initialize(*args)
      super
    end

    # @!group API Operations

    # Returns information about a stream, including the current status of
    # the stream, its Amazon Resource Name (ARN), the composition of its
    # shards, and its corresponding DynamoDB table.
    #
    # <note markdown="1"> You can call `DescribeStream` at a maximum rate of 10 times per
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
    #
    # @option params [required, String] :stream_arn
    #   The Amazon Resource Name (ARN) for the stream.
    #
    # @option params [Integer] :limit
    #   The maximum number of shard objects to return. The upper limit is 100.
    #
    # @option params [String] :exclusive_start_shard_id
    #   The shard ID of the first item that this operation will evaluate. Use
    #   the value that was returned for `LastEvaluatedShardId` in the previous
    #   operation.
    #
    # @option params [Types::ShardFilter] :shard_filter
    #   This optional field contains the filter definition for the
    #   `DescribeStream` API.
    #
    # @return [Types::DescribeStreamOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeStreamOutput#stream_description #stream_description} => Types::StreamDescription
    #
    #
    # @example Example: To describe a stream with a given stream ARN
    #
    #   # The following example describes a stream with a given stream ARN.
    #
    #   resp = client.describe_stream({
    #     stream_arn: "arn:aws:dynamodb:us-west-2:111122223333:table/Forum/stream/2015-05-20T20:51:10.252", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     stream_description: {
    #       creation_request_date_time: Time.parse("Wed May 20 13:51:10 PDT 2015"), 
    #       key_schema: [
    #         {
    #           attribute_name: "ForumName", 
    #           key_type: "HASH", 
    #         }, 
    #         {
    #           attribute_name: "Subject", 
    #           key_type: "RANGE", 
    #         }, 
    #       ], 
    #       shards: [
    #         {
    #           sequence_number_range: {
    #             ending_sequence_number: "20500000000000000910398", 
    #             starting_sequence_number: "20500000000000000910398", 
    #           }, 
    #           shard_id: "shardId-00000001414562045508-2bac9cd2", 
    #         }, 
    #         {
    #           parent_shard_id: "shardId-00000001414562045508-2bac9cd2", 
    #           sequence_number_range: {
    #             ending_sequence_number: "820400000000000001192334", 
    #             starting_sequence_number: "820400000000000001192334", 
    #           }, 
    #           shard_id: "shardId-00000001414576573621-f55eea83", 
    #         }, 
    #         {
    #           parent_shard_id: "shardId-00000001414576573621-f55eea83", 
    #           sequence_number_range: {
    #             ending_sequence_number: "1683700000000000001135967", 
    #             starting_sequence_number: "1683700000000000001135967", 
    #           }, 
    #           shard_id: "shardId-00000001414592258131-674fd923", 
    #         }, 
    #         {
    #           parent_shard_id: "shardId-00000001414592258131-674fd923", 
    #           sequence_number_range: {
    #             starting_sequence_number: "2574600000000000000935255", 
    #           }, 
    #           shard_id: "shardId-00000001414608446368-3a1afbaf", 
    #         }, 
    #       ], 
    #       stream_arn: "arn:aws:dynamodb:us-west-2:111122223333:table/Forum/stream/2015-05-20T20:51:10.252", 
    #       stream_label: "2015-05-20T20:51:10.252", 
    #       stream_status: "ENABLED", 
    #       stream_view_type: "NEW_AND_OLD_IMAGES", 
    #       table_name: "Forum", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_stream({
    #     stream_arn: "StreamArn", # required
    #     limit: 1,
    #     exclusive_start_shard_id: "ShardId",
    #     shard_filter: {
    #       type: "CHILD_SHARDS", # accepts CHILD_SHARDS
    #       shard_id: "ShardId",
    #     },
    #   })
    #
    # @example Response structure
    #
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
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/streams-dynamodb-2012-08-10/DescribeStream AWS API Documentation
    #
    # @overload describe_stream(params = {})
    # @param [Hash] params ({})
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
    #
    # @option params [required, String] :shard_iterator
    #   A shard iterator that was retrieved from a previous GetShardIterator
    #   operation. This iterator can be used to access the stream records in
    #   this shard.
    #
    # @option params [Integer] :limit
    #   The maximum number of records to return from the shard. The upper
    #   limit is 1000.
    #
    # @return [Types::GetRecordsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetRecordsOutput#records #records} => Array&lt;Types::Record&gt;
    #   * {Types::GetRecordsOutput#next_shard_iterator #next_shard_iterator} => String
    #
    #
    # @example Example: To retrieve all the stream records from a shard
    #
    #   # The following example retrieves all the stream records from a shard.
    #
    #   resp = client.get_records({
    #     shard_iterator: "arn:aws:dynamodb:us-west-2:111122223333:table/Forum/stream/2015-05-20T20:51:10.252|1|AAAAAAAAAAEvJp6D+zaQ...  <remaining characters omitted> ...", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     next_shard_iterator: "arn:aws:dynamodb:us-west-2:111122223333:table/Forum/stream/2015-05-20T20:51:10.252|1|AAAAAAAAAAGQBYshYDEe ... <remaining characters omitted> ...", 
    #     records: [
    #       {
    #         aws_region: "us-west-2", 
    #         dynamodb: {
    #           approximate_creation_date_time: Time.parse("1.46480646E9"), 
    #           keys: {
    #             "ForumName" => {
    #               s: "DynamoDB", 
    #             }, 
    #             "Subject" => {
    #               s: "DynamoDB Thread 3", 
    #             }, 
    #           }, 
    #           sequence_number: "300000000000000499659", 
    #           size_bytes: 41, 
    #           stream_view_type: "KEYS_ONLY", 
    #         }, 
    #         event_id: "e2fd9c34eff2d779b297b26f5fef4206", 
    #         event_name: "INSERT", 
    #         event_source: "aws:dynamodb", 
    #         event_version: "1.0", 
    #       }, 
    #       {
    #         aws_region: "us-west-2", 
    #         dynamodb: {
    #           approximate_creation_date_time: Time.parse("1.46480527E9"), 
    #           keys: {
    #             "ForumName" => {
    #               s: "DynamoDB", 
    #             }, 
    #             "Subject" => {
    #               s: "DynamoDB Thread 1", 
    #             }, 
    #           }, 
    #           sequence_number: "400000000000000499660", 
    #           size_bytes: 41, 
    #           stream_view_type: "KEYS_ONLY", 
    #         }, 
    #         event_id: "4b25bd0da9a181a155114127e4837252", 
    #         event_name: "MODIFY", 
    #         event_source: "aws:dynamodb", 
    #         event_version: "1.0", 
    #       }, 
    #       {
    #         aws_region: "us-west-2", 
    #         dynamodb: {
    #           approximate_creation_date_time: Time.parse("1.46480646E9"), 
    #           keys: {
    #             "ForumName" => {
    #               s: "DynamoDB", 
    #             }, 
    #             "Subject" => {
    #               s: "DynamoDB Thread 2", 
    #             }, 
    #           }, 
    #           sequence_number: "500000000000000499661", 
    #           size_bytes: 41, 
    #           stream_view_type: "KEYS_ONLY", 
    #         }, 
    #         event_id: "740280c73a3df7842edab3548a1b08ad", 
    #         event_name: "REMOVE", 
    #         event_source: "aws:dynamodb", 
    #         event_version: "1.0", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_records({
    #     shard_iterator: "ShardIterator", # required
    #     limit: 1,
    #   })
    #
    # @example Response structure
    #
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
    #   resp.records[0].user_identity.principal_id #=> String
    #   resp.records[0].user_identity.type #=> String
    #   resp.next_shard_iterator #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/streams-dynamodb-2012-08-10/GetRecords AWS API Documentation
    #
    # @overload get_records(params = {})
    # @param [Hash] params ({})
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
    #
    # @option params [required, String] :stream_arn
    #   The Amazon Resource Name (ARN) for the stream.
    #
    # @option params [required, String] :shard_id
    #   The identifier of the shard. The iterator will be returned for this
    #   shard ID.
    #
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
    #
    # @option params [String] :sequence_number
    #   The sequence number of a stream record in the shard from which to
    #   start reading.
    #
    # @return [Types::GetShardIteratorOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetShardIteratorOutput#shard_iterator #shard_iterator} => String
    #
    #
    # @example Example: To obtain a shard iterator for the provided stream ARN and shard ID
    #
    #   # The following example returns a shard iterator for the provided stream ARN and shard ID.
    #
    #   resp = client.get_shard_iterator({
    #     shard_id: "00000001414576573621-f55eea83", 
    #     shard_iterator_type: "TRIM_HORIZON", 
    #     stream_arn: "arn:aws:dynamodb:us-west-2:111122223333:table/Forum/stream/2015-05-20T20:51:10.252", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     shard_iterator: "arn:aws:dynamodb:us-west-2:111122223333:table/Forum/stream/2015-05-20T20:51:10.252|1|AAAAAAAAAAEvJp6D+zaQ...  <remaining characters omitted> ...", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_shard_iterator({
    #     stream_arn: "StreamArn", # required
    #     shard_id: "ShardId", # required
    #     shard_iterator_type: "TRIM_HORIZON", # required, accepts TRIM_HORIZON, LATEST, AT_SEQUENCE_NUMBER, AFTER_SEQUENCE_NUMBER
    #     sequence_number: "SequenceNumber",
    #   })
    #
    # @example Response structure
    #
    #   resp.shard_iterator #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/streams-dynamodb-2012-08-10/GetShardIterator AWS API Documentation
    #
    # @overload get_shard_iterator(params = {})
    # @param [Hash] params ({})
    def get_shard_iterator(params = {}, options = {})
      req = build_request(:get_shard_iterator, params)
      req.send_request(options)
    end

    # Returns an array of stream ARNs associated with the current account
    # and endpoint. If the `TableName` parameter is present, then
    # `ListStreams` will return only the streams ARNs for that table.
    #
    # <note markdown="1"> You can call `ListStreams` at a maximum rate of 5 times per second.
    #
    #  </note>
    #
    # @option params [String] :table_name
    #   If this parameter is provided, then only the streams associated with
    #   this table name are returned.
    #
    # @option params [Integer] :limit
    #   The maximum number of streams to return. The upper limit is 100.
    #
    # @option params [String] :exclusive_start_stream_arn
    #   The ARN (Amazon Resource Name) of the first item that this operation
    #   will evaluate. Use the value that was returned for
    #   `LastEvaluatedStreamArn` in the previous operation.
    #
    # @return [Types::ListStreamsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListStreamsOutput#streams #streams} => Array&lt;Types::Stream&gt;
    #   * {Types::ListStreamsOutput#last_evaluated_stream_arn #last_evaluated_stream_arn} => String
    #
    #
    # @example Example: To list all of the stream ARNs 
    #
    #   # The following example lists all of the stream ARNs.
    #
    #   resp = client.list_streams({
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     streams: [
    #       {
    #         stream_arn: "arn:aws:dynamodb:us-wesst-2:111122223333:table/Forum/stream/2015-05-20T20:51:10.252", 
    #         stream_label: "2015-05-20T20:51:10.252", 
    #         table_name: "Forum", 
    #       }, 
    #       {
    #         stream_arn: "arn:aws:dynamodb:us-west-2:111122223333:table/Forum/stream/2015-05-20T20:50:02.714", 
    #         stream_label: "2015-05-20T20:50:02.714", 
    #         table_name: "Forum", 
    #       }, 
    #       {
    #         stream_arn: "arn:aws:dynamodb:us-west-2:111122223333:table/Forum/stream/2015-05-19T23:03:50.641", 
    #         stream_label: "2015-05-19T23:03:50.641", 
    #         table_name: "Forum", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_streams({
    #     table_name: "TableName",
    #     limit: 1,
    #     exclusive_start_stream_arn: "StreamArn",
    #   })
    #
    # @example Response structure
    #
    #   resp.streams #=> Array
    #   resp.streams[0].stream_arn #=> String
    #   resp.streams[0].table_name #=> String
    #   resp.streams[0].stream_label #=> String
    #   resp.last_evaluated_stream_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/streams-dynamodb-2012-08-10/ListStreams AWS API Documentation
    #
    # @overload list_streams(params = {})
    # @param [Hash] params ({})
    def list_streams(params = {}, options = {})
      req = build_request(:list_streams, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::DynamoDBStreams')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-dynamodbstreams'
      context[:gem_version] = '1.86.0'
      Seahorse::Client::Request.new(handlers, context)
    end

    # @api private
    # @deprecated
    def waiter_names
      []
    end

    class << self

      # @api private
      attr_reader :identifier

      # @api private
      def errors_module
        Errors
      end

    end
  end
end
