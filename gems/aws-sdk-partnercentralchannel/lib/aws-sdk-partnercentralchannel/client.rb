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

module Aws::PartnerCentralChannel
  # An API client for PartnerCentralChannel.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::PartnerCentralChannel::Client.new(
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

    @identifier = :partnercentralchannel

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
    add_plugin(Aws::PartnerCentralChannel::Plugins::Endpoints)

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
    #   @option options [Aws::PartnerCentralChannel::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::PartnerCentralChannel::EndpointParameters`.
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

    # Accepts a pending channel handshake request from another AWS account.
    #
    # @option params [required, String] :catalog
    #   The catalog identifier for the handshake request.
    #
    # @option params [required, String] :identifier
    #   The unique identifier of the channel handshake to accept.
    #
    # @return [Types::AcceptChannelHandshakeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AcceptChannelHandshakeResponse#channel_handshake_detail #channel_handshake_detail} => Types::AcceptChannelHandshakeDetail
    #
    #
    # @example Example: Example for AcceptChannelHandshake
    #
    #   resp = client.accept_channel_handshake({
    #     catalog: "AWS", 
    #     identifier: "ch-4fj3bd2o3vb91", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     channel_handshake_detail: {
    #       arn: "arn:aws:partnercentral:us-east-1:123456789012:catalog/AWS/channel-handshake/ch-4fj3bd2o3vb91", 
    #       id: "ch-4fj3bd2o3vb91", 
    #       status: "ACCEPTED", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.accept_channel_handshake({
    #     catalog: "Catalog", # required
    #     identifier: "ChannelHandshakeIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.channel_handshake_detail.id #=> String
    #   resp.channel_handshake_detail.arn #=> String
    #   resp.channel_handshake_detail.status #=> String, one of "PENDING", "ACCEPTED", "REJECTED", "CANCELED", "EXPIRED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-channel-2024-03-18/AcceptChannelHandshake AWS API Documentation
    #
    # @overload accept_channel_handshake(params = {})
    # @param [Hash] params ({})
    def accept_channel_handshake(params = {}, options = {})
      req = build_request(:accept_channel_handshake, params)
      req.send_request(options)
    end

    # Cancels a pending channel handshake request.
    #
    # @option params [required, String] :catalog
    #   The catalog identifier for the handshake request.
    #
    # @option params [required, String] :identifier
    #   The unique identifier of the channel handshake to cancel.
    #
    # @return [Types::CancelChannelHandshakeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CancelChannelHandshakeResponse#channel_handshake_detail #channel_handshake_detail} => Types::CancelChannelHandshakeDetail
    #
    #
    # @example Example: Example for CancelChannelHandshake
    #
    #   resp = client.cancel_channel_handshake({
    #     catalog: "AWS", 
    #     identifier: "ch-4fj3bd2o3vb91", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     channel_handshake_detail: {
    #       arn: "arn:aws:partnercentral:us-east-1:123456789012:catalog/AWS/channel-handshake/ch-4fj3bd2o3vb91", 
    #       id: "ch-4fj3bd2o3vb91", 
    #       status: "CANCELED", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_channel_handshake({
    #     catalog: "Catalog", # required
    #     identifier: "ChannelHandshakeIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.channel_handshake_detail.id #=> String
    #   resp.channel_handshake_detail.arn #=> String
    #   resp.channel_handshake_detail.status #=> String, one of "PENDING", "ACCEPTED", "REJECTED", "CANCELED", "EXPIRED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-channel-2024-03-18/CancelChannelHandshake AWS API Documentation
    #
    # @overload cancel_channel_handshake(params = {})
    # @param [Hash] params ({})
    def cancel_channel_handshake(params = {}, options = {})
      req = build_request(:cancel_channel_handshake, params)
      req.send_request(options)
    end

    # Creates a new channel handshake request to establish a partnership
    # with another AWS account.
    #
    # @option params [required, String] :handshake_type
    #   The type of handshake to create (e.g., start service period, revoke
    #   service period).
    #
    # @option params [required, String] :catalog
    #   The catalog identifier for the handshake request.
    #
    # @option params [required, String] :associated_resource_identifier
    #   The identifier of the resource associated with this handshake.
    #
    # @option params [Types::ChannelHandshakePayload] :payload
    #   The payload containing specific details for the handshake type.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier to ensure idempotency of the
    #   request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Array<Types::Tag>] :tags
    #   Key-value pairs to associate with the channel handshake.
    #
    # @return [Types::CreateChannelHandshakeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateChannelHandshakeResponse#channel_handshake_detail #channel_handshake_detail} => Types::CreateChannelHandshakeDetail
    #
    #
    # @example Example: Example for CreateChannelHandshake - START_SERVICE_PERIOD with Minimum Notice Period
    #
    #   resp = client.create_channel_handshake({
    #     associated_resource_identifier: "rs-abc123def456g", 
    #     catalog: "AWS", 
    #     client_token: "clientToken", 
    #     handshake_type: "START_SERVICE_PERIOD", 
    #     payload: {
    #       start_service_period_payload: {
    #         minimum_notice_days: "14", 
    #         note: "Optional Note", 
    #         program_management_account_identifier: "pma-abcdef123456g", 
    #         service_period_type: "MINIMUM_NOTICE_PERIOD", 
    #       }, 
    #     }, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     channel_handshake_detail: {
    #       arn: "arn:aws:partnercentral:us-east-1:123456789012:catalog/AWS/channel-handshake/ch-4fj3bd2o3vb91", 
    #       id: "ch-4fj3bd2o3vb91", 
    #     }, 
    #   }
    #
    # @example Example: Example for CreateChannelHandshake - START_SERVICE_PERIOD with Fixed Commitment Period
    #
    #   resp = client.create_channel_handshake({
    #     associated_resource_identifier: "rs-abc123def456g", 
    #     catalog: "AWS", 
    #     client_token: "clientToken", 
    #     handshake_type: "START_SERVICE_PERIOD", 
    #     payload: {
    #       start_service_period_payload: {
    #         end_date: Time.parse("2026-07-01T00:00:00Z"), 
    #         note: "Optional Note", 
    #         program_management_account_identifier: "pma-abcdef123456g", 
    #         service_period_type: "FIXED_COMMITMENT_PERIOD", 
    #       }, 
    #     }, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     channel_handshake_detail: {
    #       arn: "arn:aws:partnercentral:us-east-1:123456789012:catalog/AWS/channel-handshake/ch-4fj3bd2o3vb91", 
    #       id: "ch-4fj3bd2o3vb91", 
    #     }, 
    #   }
    #
    # @example Example: Example for CreateChannelHandshake - REVOKE_SERVICE_PERIOD
    #
    #   resp = client.create_channel_handshake({
    #     associated_resource_identifier: "rs-abc123def456g", 
    #     catalog: "AWS", 
    #     client_token: "clientToken", 
    #     handshake_type: "REVOKE_SERVICE_PERIOD", 
    #     payload: {
    #       revoke_service_period_payload: {
    #         note: "Optional Note", 
    #         program_management_account_identifier: "pma-abcdef123456g", 
    #       }, 
    #     }, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     channel_handshake_detail: {
    #       arn: "arn:aws:partnercentral:us-east-1:123456789012:catalog/AWS/channel-handshake/ch-4fj3bd2o3vb91", 
    #       id: "ch-4fj3bd2o3vb91", 
    #     }, 
    #   }
    #
    # @example Example: Example for CreateChannelHandshake - PROGRAM_MANAGEMENT_ACCOUNT
    #
    #   resp = client.create_channel_handshake({
    #     associated_resource_identifier: "pma-123abc456def7", 
    #     catalog: "AWS", 
    #     client_token: "clientToken", 
    #     handshake_type: "PROGRAM_MANAGEMENT_ACCOUNT", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     channel_handshake_detail: {
    #       arn: "arn:aws:partnercentral:us-east-1:123456789012:catalog/AWS/channel-handshake/ch-4fj3bd2o3vb91", 
    #       id: "ch-4fj3bd2o3vb91", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_channel_handshake({
    #     handshake_type: "START_SERVICE_PERIOD", # required, accepts START_SERVICE_PERIOD, REVOKE_SERVICE_PERIOD, PROGRAM_MANAGEMENT_ACCOUNT
    #     catalog: "Catalog", # required
    #     associated_resource_identifier: "AssociatedResourceIdentifier", # required
    #     payload: {
    #       start_service_period_payload: {
    #         program_management_account_identifier: "ProgramManagementAccountIdentifier", # required
    #         note: "Note",
    #         service_period_type: "MINIMUM_NOTICE_PERIOD", # required, accepts MINIMUM_NOTICE_PERIOD, FIXED_COMMITMENT_PERIOD
    #         minimum_notice_days: "MinimumNoticeDays",
    #         end_date: Time.now,
    #       },
    #       revoke_service_period_payload: {
    #         program_management_account_identifier: "ProgramManagementAccountIdentifier", # required
    #         note: "Note",
    #       },
    #     },
    #     client_token: "ClientToken",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.channel_handshake_detail.id #=> String
    #   resp.channel_handshake_detail.arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-channel-2024-03-18/CreateChannelHandshake AWS API Documentation
    #
    # @overload create_channel_handshake(params = {})
    # @param [Hash] params ({})
    def create_channel_handshake(params = {}, options = {})
      req = build_request(:create_channel_handshake, params)
      req.send_request(options)
    end

    # Creates a new program management account for managing partner
    # relationships.
    #
    # @option params [required, String] :catalog
    #   The catalog identifier for the program management account.
    #
    # @option params [required, String] :program
    #   The program type for the management account.
    #
    # @option params [required, String] :display_name
    #   A human-readable name for the program management account.
    #
    # @option params [required, String] :account_id
    #   The AWS account ID to associate with the program management account.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier to ensure idempotency of the
    #   request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Array<Types::Tag>] :tags
    #   Key-value pairs to associate with the program management account.
    #
    # @return [Types::CreateProgramManagementAccountResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateProgramManagementAccountResponse#program_management_account_detail #program_management_account_detail} => Types::CreateProgramManagementAccountDetail
    #
    #
    # @example Example: Example for CreateProgramManagementAccount
    #
    #   resp = client.create_program_management_account({
    #     account_id: "111122223333", 
    #     catalog: "AWS", 
    #     client_token: "clientToken", 
    #     display_name: "TestDisplayName", 
    #     program: "SOLUTION_PROVIDER", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     program_management_account_detail: {
    #       arn: "arn:aws:partnercentral:us-east-1:123456789012:catalog/AWS/program-management-account/pma-u8ic702rtzng8", 
    #       id: "pma-u8ic702rtzng8", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_program_management_account({
    #     catalog: "Catalog", # required
    #     program: "SOLUTION_PROVIDER", # required, accepts SOLUTION_PROVIDER, DISTRIBUTION, DISTRIBUTION_SELLER
    #     display_name: "ProgramManagementAccountDisplayName", # required
    #     account_id: "AccountId", # required
    #     client_token: "ClientToken",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.program_management_account_detail.id #=> String
    #   resp.program_management_account_detail.arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-channel-2024-03-18/CreateProgramManagementAccount AWS API Documentation
    #
    # @overload create_program_management_account(params = {})
    # @param [Hash] params ({})
    def create_program_management_account(params = {}, options = {})
      req = build_request(:create_program_management_account, params)
      req.send_request(options)
    end

    # Creates a new partner relationship between accounts.
    #
    # @option params [required, String] :catalog
    #   The catalog identifier for the relationship.
    #
    # @option params [required, String] :association_type
    #   The type of association for the relationship (e.g., reseller,
    #   distributor).
    #
    # @option params [required, String] :program_management_account_identifier
    #   The identifier of the program management account for this
    #   relationship.
    #
    # @option params [required, String] :associated_account_id
    #   The AWS account ID to associate in this relationship.
    #
    # @option params [required, String] :display_name
    #   A human-readable name for the relationship.
    #
    # @option params [String] :resale_account_model
    #   The resale account model for the relationship.
    #
    # @option params [required, String] :sector
    #   The business sector for the relationship.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier to ensure idempotency of the
    #   request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Array<Types::Tag>] :tags
    #   Key-value pairs to associate with the relationship.
    #
    # @option params [Types::SupportPlan] :requested_support_plan
    #   The support plan requested for this relationship.
    #
    # @return [Types::CreateRelationshipResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateRelationshipResponse#relationship_detail #relationship_detail} => Types::CreateRelationshipDetail
    #
    #
    # @example Example: Example for CreateRelationship
    #
    #   resp = client.create_relationship({
    #     associated_account_id: "987654321012", 
    #     association_type: "DOWNSTREAM_SELLER", 
    #     catalog: "AWS", 
    #     client_token: "clientToken", 
    #     display_name: "TestDisplayName", 
    #     program_management_account_identifier: "pma-u8ic702rtzng8", 
    #     resale_account_model: "END_CUSTOMER", 
    #     sector: "COMMERCIAL", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     relationship_detail: {
    #       arn: "arn:aws:partnercentral:us-east-1:123456789012:catalog/AWS/program-management-account/pma-u8ic702rtzng8/relationship/rs-l9o4fj3b5zb91", 
    #       id: "rs-l9o4fj3b5zb91", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_relationship({
    #     catalog: "Catalog", # required
    #     association_type: "DOWNSTREAM_SELLER", # required, accepts DOWNSTREAM_SELLER, END_CUSTOMER, INTERNAL
    #     program_management_account_identifier: "ProgramManagementAccountIdentifier", # required
    #     associated_account_id: "AccountId", # required
    #     display_name: "RelationshipDisplayName", # required
    #     resale_account_model: "DISTRIBUTOR", # accepts DISTRIBUTOR, END_CUSTOMER, SOLUTION_PROVIDER
    #     sector: "COMMERCIAL", # required, accepts COMMERCIAL, GOVERNMENT, GOVERNMENT_EXCEPTION
    #     client_token: "ClientToken",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     requested_support_plan: {
    #       resold_business: {
    #         coverage: "ENTIRE_ORGANIZATION", # required, accepts ENTIRE_ORGANIZATION, MANAGEMENT_ACCOUNT_ONLY
    #       },
    #       resold_enterprise: {
    #         coverage: "ENTIRE_ORGANIZATION", # required, accepts ENTIRE_ORGANIZATION, MANAGEMENT_ACCOUNT_ONLY
    #         tam_location: "String", # required
    #         charge_account_id: "AccountId",
    #       },
    #       partner_led_support: {
    #         coverage: "ENTIRE_ORGANIZATION", # required, accepts ENTIRE_ORGANIZATION, MANAGEMENT_ACCOUNT_ONLY
    #         provider: "DISTRIBUTOR", # accepts DISTRIBUTOR, DISTRIBUTION_SELLER
    #         tam_location: "String", # required
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.relationship_detail.arn #=> String
    #   resp.relationship_detail.id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-channel-2024-03-18/CreateRelationship AWS API Documentation
    #
    # @overload create_relationship(params = {})
    # @param [Hash] params ({})
    def create_relationship(params = {}, options = {})
      req = build_request(:create_relationship, params)
      req.send_request(options)
    end

    # Deletes a program management account.
    #
    # @option params [required, String] :catalog
    #   The catalog identifier for the program management account.
    #
    # @option params [required, String] :identifier
    #   The unique identifier of the program management account to delete.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier to ensure idempotency of the
    #   request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: Example for DeleteProgramManagementAccount
    #
    #   resp = client.delete_program_management_account({
    #     catalog: "AWS", 
    #     client_token: "clientToken", 
    #     identifier: "pma-u8ic702rtzng8", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_program_management_account({
    #     catalog: "Catalog", # required
    #     identifier: "ProgramManagementAccountIdentifier", # required
    #     client_token: "ClientToken",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-channel-2024-03-18/DeleteProgramManagementAccount AWS API Documentation
    #
    # @overload delete_program_management_account(params = {})
    # @param [Hash] params ({})
    def delete_program_management_account(params = {}, options = {})
      req = build_request(:delete_program_management_account, params)
      req.send_request(options)
    end

    # Deletes a partner relationship.
    #
    # @option params [required, String] :catalog
    #   The catalog identifier for the relationship.
    #
    # @option params [required, String] :identifier
    #   The unique identifier of the relationship to delete.
    #
    # @option params [required, String] :program_management_account_identifier
    #   The identifier of the program management account associated with the
    #   relationship.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier to ensure idempotency of the
    #   request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: Example for DeleteRelationship
    #
    #   resp = client.delete_relationship({
    #     catalog: "AWS", 
    #     client_token: "clientToken", 
    #     identifier: "rs-l9o4fj3b5zb91", 
    #     program_management_account_identifier: "pma-u8ic702rtzng8", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_relationship({
    #     catalog: "Catalog", # required
    #     identifier: "RelationshipIdentifier", # required
    #     program_management_account_identifier: "ProgramManagementAccountIdentifier", # required
    #     client_token: "ClientToken",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-channel-2024-03-18/DeleteRelationship AWS API Documentation
    #
    # @overload delete_relationship(params = {})
    # @param [Hash] params ({})
    def delete_relationship(params = {}, options = {})
      req = build_request(:delete_relationship, params)
      req.send_request(options)
    end

    # Retrieves details of a specific partner relationship.
    #
    # @option params [required, String] :catalog
    #   The catalog identifier for the relationship.
    #
    # @option params [required, String] :program_management_account_identifier
    #   The identifier of the program management account associated with the
    #   relationship.
    #
    # @option params [required, String] :identifier
    #   The unique identifier of the relationship to retrieve.
    #
    # @return [Types::GetRelationshipResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetRelationshipResponse#relationship_detail #relationship_detail} => Types::RelationshipDetail
    #
    #
    # @example Example: Example for GetRelationship
    #
    #   resp = client.get_relationship({
    #     catalog: "AWS", 
    #     identifier: "rs-l9o4fj3b5zb91", 
    #     program_management_account_identifier: "pma-u8ic702rtzng8", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     relationship_detail: {
    #       arn: "arn:aws:partnercentral:us-east-1:123456789012:catalog/AWS/program-management-account/pma-u8ic702rtzng8/relationship/rs-l9o4fj3b5zb91", 
    #       associated_account_id: "987654321012", 
    #       association_type: "DOWNSTREAM_SELLER", 
    #       created_at: Time.parse("2024-04-29T16:18:16Z"), 
    #       display_name: "TestDisplayName", 
    #       id: "rs-l9o4fj3b5zb91", 
    #       program_management_account_id: "pma-u8ic702rtzng8", 
    #       resale_account_model: "END_CUSTOMER", 
    #       revision: "3", 
    #       sector: "COMMERCIAL", 
    #       updated_at: Time.parse("2024-05-02T16:18:16Z"), 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_relationship({
    #     catalog: "Catalog", # required
    #     program_management_account_identifier: "ProgramManagementAccountIdentifier", # required
    #     identifier: "RelationshipIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.relationship_detail.arn #=> String
    #   resp.relationship_detail.id #=> String
    #   resp.relationship_detail.revision #=> String
    #   resp.relationship_detail.catalog #=> String
    #   resp.relationship_detail.association_type #=> String, one of "DOWNSTREAM_SELLER", "END_CUSTOMER", "INTERNAL"
    #   resp.relationship_detail.program_management_account_id #=> String
    #   resp.relationship_detail.associated_account_id #=> String
    #   resp.relationship_detail.display_name #=> String
    #   resp.relationship_detail.resale_account_model #=> String, one of "DISTRIBUTOR", "END_CUSTOMER", "SOLUTION_PROVIDER"
    #   resp.relationship_detail.sector #=> String, one of "COMMERCIAL", "GOVERNMENT", "GOVERNMENT_EXCEPTION"
    #   resp.relationship_detail.created_at #=> Time
    #   resp.relationship_detail.updated_at #=> Time
    #   resp.relationship_detail.start_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-channel-2024-03-18/GetRelationship AWS API Documentation
    #
    # @overload get_relationship(params = {})
    # @param [Hash] params ({})
    def get_relationship(params = {}, options = {})
      req = build_request(:get_relationship, params)
      req.send_request(options)
    end

    # Lists channel handshakes based on specified criteria.
    #
    # @option params [required, String] :handshake_type
    #   Filter results by handshake type.
    #
    # @option params [required, String] :catalog
    #   The catalog identifier to filter handshakes.
    #
    # @option params [required, String] :participant_type
    #   Filter by participant type (sender or receiver).
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call.
    #
    # @option params [Array<String>] :statuses
    #   Filter results by handshake status.
    #
    # @option params [Array<String>] :associated_resource_identifiers
    #   Filter by associated resource identifiers.
    #
    # @option params [Types::ListChannelHandshakesTypeFilters] :handshake_type_filters
    #   Type-specific filters for handshakes.
    #
    # @option params [Types::ListChannelHandshakesTypeSort] :handshake_type_sort
    #   Type-specific sorting options for handshakes.
    #
    # @option params [String] :next_token
    #   Token for retrieving the next page of results.
    #
    # @return [Types::ListChannelHandshakesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListChannelHandshakesResponse#items #items} => Array&lt;Types::ChannelHandshakeSummary&gt;
    #   * {Types::ListChannelHandshakesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: Example for ListChannelHandshakes - START_SERVICE_PERIOD
    #
    #   resp = client.list_channel_handshakes({
    #     associated_resource_identifiers: [
    #       "rs-123abc456def7", 
    #     ], 
    #     catalog: "AWS", 
    #     handshake_type: "START_SERVICE_PERIOD", 
    #     handshake_type_filters: {
    #       start_service_period_type_filters: {
    #         service_period_types: [
    #           "FIXED_COMMITMENT_PERIOD", 
    #         ], 
    #       }, 
    #     }, 
    #     handshake_type_sort: {
    #       start_service_period_type_sort: {
    #         sort_by: "UpdatedAt", 
    #         sort_order: "Descending", 
    #       }, 
    #     }, 
    #     participant_type: "SENDER", 
    #     statuses: [
    #       "ACCEPTED", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     items: [
    #       {
    #         arn: "arn:aws:partnercentral:us-east-1:111122223333:catalog/AWS/channel-handshake/ch-4fj3bd2o3vb91", 
    #         associated_resource_id: "rs-u8ic702rtfew1", 
    #         catalog: "AWS", 
    #         created_at: Time.parse("2025-04-29T16:18:16.000Z"), 
    #         detail: {
    #           start_service_period_handshake_detail: {
    #             minimum_notice_days: "14", 
    #             note: "Optional_Note", 
    #             service_period_type: "MINIMUM_NOTICE_PERIOD", 
    #           }, 
    #         }, 
    #         handshake_type: "START_SERVICE_PERIOD", 
    #         id: "ch-4fj3bd2o3vb91", 
    #         owner_account_id: "111122223333", 
    #         receiver_account_id: "333322221111", 
    #         sender_account_id: "111122224444", 
    #         status: "PENDING", 
    #         updated_at: Time.parse("2025-05-02T16:18:16.000Z"), 
    #       }, 
    #       {
    #         arn: "arn:aws:partnercentral:us-east-1:111122223333:catalog/AWS/channel-handshake/ch-4fj3bd2o3vb92", 
    #         associated_resource_id: "rs-u8ic702rtfew1", 
    #         catalog: "AWS", 
    #         created_at: Time.parse("2025-02-28T16:18:16.000Z"), 
    #         detail: {
    #           start_service_period_handshake_detail: {
    #             end_date: Time.parse("2027-03-31T00:00:00.000Z"), 
    #             note: "Optional_Note", 
    #             service_period_type: "FIXED_COMMITMENT_PERIOD", 
    #             start_date: Time.parse("2025-02-02T00:00:00.000Z"), 
    #           }, 
    #         }, 
    #         handshake_type: "START_SERVICE_PERIOD", 
    #         id: "ch-4fj3bd2o3vb92", 
    #         owner_account_id: "111122223333", 
    #         receiver_account_id: "333322221111", 
    #         sender_account_id: "111122224444", 
    #         status: "PENDING", 
    #         updated_at: Time.parse("2025-03-02T16:18:16.000Z"), 
    #       }, 
    #     ], 
    #     next_token: "nextToken", 
    #   }
    #
    # @example Example: Example for ListChannelHandshakes - REVOKE_SERVICE_PERIOD
    #
    #   resp = client.list_channel_handshakes({
    #     associated_resource_identifiers: [
    #       "rs-123abc456def7", 
    #     ], 
    #     catalog: "AWS", 
    #     handshake_type: "REVOKE_SERVICE_PERIOD", 
    #     handshake_type_filters: {
    #       revoke_service_period_type_filters: {
    #         service_period_types: [
    #           "MINIMUM_NOTICE_PERIOD", 
    #         ], 
    #       }, 
    #     }, 
    #     handshake_type_sort: {
    #       revoke_service_period_type_sort: {
    #         sort_by: "UpdatedAt", 
    #         sort_order: "Descending", 
    #       }, 
    #     }, 
    #     participant_type: "SENDER", 
    #     statuses: [
    #       "ACCEPTED", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     items: [
    #       {
    #         arn: "arn:aws:partnercentral:us-east-1:111122223333:catalog/AWS/channel-handshake/ch-4fj3bd2o3vb91", 
    #         associated_resource_id: "rs-u8ic702rtfew1", 
    #         catalog: "AWS", 
    #         created_at: Time.parse("2025-04-29T16:18:16.000Z"), 
    #         detail: {
    #           revoke_service_period_handshake_detail: {
    #             minimum_notice_days: "14", 
    #             note: "Optional_Note", 
    #             service_period_type: "MINIMUM_NOTICE_PERIOD", 
    #           }, 
    #         }, 
    #         handshake_type: "REVOKE_SERVICE_PERIOD", 
    #         id: "ch-4fj3bd2o3vb91", 
    #         owner_account_id: "111122223333", 
    #         receiver_account_id: "333322221111", 
    #         sender_account_id: "111122224444", 
    #         status: "PENDING", 
    #         updated_at: Time.parse("2025-05-02T16:18:16.000Z"), 
    #       }, 
    #     ], 
    #     next_token: "nextToken", 
    #   }
    #
    # @example Example: Example for ListChannelHandshakes - PROGRAM_MANAGEMENT_ACCOUNT
    #
    #   resp = client.list_channel_handshakes({
    #     associated_resource_identifiers: [
    #       "pma-123abc456def7", 
    #     ], 
    #     catalog: "AWS", 
    #     handshake_type: "PROGRAM_MANAGEMENT_ACCOUNT", 
    #     handshake_type_filters: {
    #       program_management_account_type_filters: {
    #         programs: [
    #           "SOLUTION_PROVIDER", 
    #         ], 
    #       }, 
    #     }, 
    #     handshake_type_sort: {
    #       program_management_account_type_sort: {
    #         sort_by: "UpdatedAt", 
    #         sort_order: "Descending", 
    #       }, 
    #     }, 
    #     max_results: 20, 
    #     next_token: "nextToken", 
    #     participant_type: "SENDER", 
    #     statuses: [
    #       "ACCEPTED", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     items: [
    #       {
    #         arn: "arn:aws:partnercentral:us-east-1:111122223333:catalog/AWS/channel-handshake/ch-4fj3bd2o3vb91", 
    #         associated_resource_id: "pma-u8ic702rtfew1", 
    #         catalog: "AWS", 
    #         created_at: Time.parse("2025-02-28T16:18:16.000Z"), 
    #         detail: {
    #           program_management_account_handshake_detail: {
    #             program: "SOLUTION_PROVIDER", 
    #           }, 
    #         }, 
    #         handshake_type: "PROGRAM_MANAGEMENT_ACCOUNT", 
    #         id: "ch-4fj3bd2o3vb91", 
    #         owner_account_id: "111122223333", 
    #         receiver_account_id: "333322221111", 
    #         sender_account_id: "111122223333", 
    #         status: "PENDING", 
    #         updated_at: Time.parse("2025-03-02T16:18:16.000Z"), 
    #       }, 
    #     ], 
    #     next_token: "nextToken", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_channel_handshakes({
    #     handshake_type: "START_SERVICE_PERIOD", # required, accepts START_SERVICE_PERIOD, REVOKE_SERVICE_PERIOD, PROGRAM_MANAGEMENT_ACCOUNT
    #     catalog: "Catalog", # required
    #     participant_type: "SENDER", # required, accepts SENDER, RECEIVER
    #     max_results: 1,
    #     statuses: ["PENDING"], # accepts PENDING, ACCEPTED, REJECTED, CANCELED, EXPIRED
    #     associated_resource_identifiers: ["AssociatedResourceIdentifier"],
    #     handshake_type_filters: {
    #       start_service_period_type_filters: {
    #         service_period_types: ["MINIMUM_NOTICE_PERIOD"], # accepts MINIMUM_NOTICE_PERIOD, FIXED_COMMITMENT_PERIOD
    #       },
    #       revoke_service_period_type_filters: {
    #         service_period_types: ["MINIMUM_NOTICE_PERIOD"], # accepts MINIMUM_NOTICE_PERIOD, FIXED_COMMITMENT_PERIOD
    #       },
    #       program_management_account_type_filters: {
    #         programs: ["SOLUTION_PROVIDER"], # accepts SOLUTION_PROVIDER, DISTRIBUTION, DISTRIBUTION_SELLER
    #       },
    #     },
    #     handshake_type_sort: {
    #       start_service_period_type_sort: {
    #         sort_order: "Ascending", # required, accepts Ascending, Descending
    #         sort_by: "UpdatedAt", # required, accepts UpdatedAt
    #       },
    #       revoke_service_period_type_sort: {
    #         sort_order: "Ascending", # required, accepts Ascending, Descending
    #         sort_by: "UpdatedAt", # required, accepts UpdatedAt
    #       },
    #       program_management_account_type_sort: {
    #         sort_order: "Ascending", # required, accepts Ascending, Descending
    #         sort_by: "UpdatedAt", # required, accepts UpdatedAt
    #       },
    #     },
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].id #=> String
    #   resp.items[0].arn #=> String
    #   resp.items[0].catalog #=> String
    #   resp.items[0].handshake_type #=> String, one of "START_SERVICE_PERIOD", "REVOKE_SERVICE_PERIOD", "PROGRAM_MANAGEMENT_ACCOUNT"
    #   resp.items[0].owner_account_id #=> String
    #   resp.items[0].sender_account_id #=> String
    #   resp.items[0].sender_display_name #=> String
    #   resp.items[0].receiver_account_id #=> String
    #   resp.items[0].associated_resource_id #=> String
    #   resp.items[0].detail.start_service_period_handshake_detail.note #=> String
    #   resp.items[0].detail.start_service_period_handshake_detail.service_period_type #=> String, one of "MINIMUM_NOTICE_PERIOD", "FIXED_COMMITMENT_PERIOD"
    #   resp.items[0].detail.start_service_period_handshake_detail.minimum_notice_days #=> String
    #   resp.items[0].detail.start_service_period_handshake_detail.start_date #=> Time
    #   resp.items[0].detail.start_service_period_handshake_detail.end_date #=> Time
    #   resp.items[0].detail.revoke_service_period_handshake_detail.note #=> String
    #   resp.items[0].detail.revoke_service_period_handshake_detail.service_period_type #=> String, one of "MINIMUM_NOTICE_PERIOD", "FIXED_COMMITMENT_PERIOD"
    #   resp.items[0].detail.revoke_service_period_handshake_detail.minimum_notice_days #=> String
    #   resp.items[0].detail.revoke_service_period_handshake_detail.start_date #=> Time
    #   resp.items[0].detail.revoke_service_period_handshake_detail.end_date #=> Time
    #   resp.items[0].detail.program_management_account_handshake_detail.program #=> String, one of "SOLUTION_PROVIDER", "DISTRIBUTION", "DISTRIBUTION_SELLER"
    #   resp.items[0].created_at #=> Time
    #   resp.items[0].updated_at #=> Time
    #   resp.items[0].status #=> String, one of "PENDING", "ACCEPTED", "REJECTED", "CANCELED", "EXPIRED"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-channel-2024-03-18/ListChannelHandshakes AWS API Documentation
    #
    # @overload list_channel_handshakes(params = {})
    # @param [Hash] params ({})
    def list_channel_handshakes(params = {}, options = {})
      req = build_request(:list_channel_handshakes, params)
      req.send_request(options)
    end

    # Lists program management accounts based on specified criteria.
    #
    # @option params [required, String] :catalog
    #   The catalog identifier to filter accounts.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call.
    #
    # @option params [Array<String>] :display_names
    #   Filter by display names.
    #
    # @option params [Array<String>] :programs
    #   Filter by program types.
    #
    # @option params [Array<String>] :account_ids
    #   Filter by AWS account IDs.
    #
    # @option params [Array<String>] :statuses
    #   Filter by program management account statuses.
    #
    # @option params [Types::ListProgramManagementAccountsSortBase] :sort
    #   Sorting options for the results.
    #
    # @option params [String] :next_token
    #   Token for retrieving the next page of results.
    #
    # @return [Types::ListProgramManagementAccountsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListProgramManagementAccountsResponse#items #items} => Array&lt;Types::ProgramManagementAccountSummary&gt;
    #   * {Types::ListProgramManagementAccountsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: Example for ListProgramManagementAccounts
    #
    #   resp = client.list_program_management_accounts({
    #     account_ids: [
    #       "111122223333", 
    #     ], 
    #     catalog: "AWS", 
    #     display_names: [
    #       "TestDisplayName", 
    #     ], 
    #     max_results: 20, 
    #     programs: [
    #       "SOLUTION_PROVIDER", 
    #     ], 
    #     sort: {
    #       sort_by: "UpdatedAt", 
    #       sort_order: "Descending", 
    #     }, 
    #     statuses: [
    #       "PENDING", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     items: [
    #       {
    #         account_id: "111122223333", 
    #         arn: "arn:aws:partnercentral:us-east-1:123456789012:catalog/AWS/program-management-account/pma-u8ic702rtzng8", 
    #         catalog: "AWS", 
    #         created_at: Time.parse("2024-04-29T08:52:46.397Z"), 
    #         display_name: "TestDisplayName", 
    #         id: "pma-u8ic702rtzng8", 
    #         program: "SOLUTION_PROVIDER", 
    #         revision: "4", 
    #         status: "PENDING", 
    #         updated_at: Time.parse("2024-05-02T16:18:16.432Z"), 
    #       }, 
    #     ], 
    #     next_token: "nextToken", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_program_management_accounts({
    #     catalog: "Catalog", # required
    #     max_results: 1,
    #     display_names: ["ProgramManagementAccountDisplayName"],
    #     programs: ["SOLUTION_PROVIDER"], # accepts SOLUTION_PROVIDER, DISTRIBUTION, DISTRIBUTION_SELLER
    #     account_ids: ["AccountId"],
    #     statuses: ["PENDING"], # accepts PENDING, ACTIVE, INACTIVE
    #     sort: {
    #       sort_order: "Ascending", # required, accepts Ascending, Descending
    #       sort_by: "UpdatedAt", # required, accepts UpdatedAt
    #     },
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].id #=> String
    #   resp.items[0].revision #=> String
    #   resp.items[0].catalog #=> String
    #   resp.items[0].program #=> String, one of "SOLUTION_PROVIDER", "DISTRIBUTION", "DISTRIBUTION_SELLER"
    #   resp.items[0].display_name #=> String
    #   resp.items[0].account_id #=> String
    #   resp.items[0].arn #=> String
    #   resp.items[0].created_at #=> Time
    #   resp.items[0].updated_at #=> Time
    #   resp.items[0].start_date #=> Time
    #   resp.items[0].status #=> String, one of "PENDING", "ACTIVE", "INACTIVE"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-channel-2024-03-18/ListProgramManagementAccounts AWS API Documentation
    #
    # @overload list_program_management_accounts(params = {})
    # @param [Hash] params ({})
    def list_program_management_accounts(params = {}, options = {})
      req = build_request(:list_program_management_accounts, params)
      req.send_request(options)
    end

    # Lists partner relationships based on specified criteria.
    #
    # @option params [required, String] :catalog
    #   The catalog identifier to filter relationships.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call.
    #
    # @option params [Array<String>] :associated_account_ids
    #   Filter by associated AWS account IDs.
    #
    # @option params [Array<String>] :association_types
    #   Filter by association types.
    #
    # @option params [Array<String>] :display_names
    #   Filter by display names.
    #
    # @option params [Array<String>] :program_management_account_identifiers
    #   Filter by program management account identifiers.
    #
    # @option params [Types::ListRelationshipsSortBase] :sort
    #   Sorting options for the results.
    #
    # @option params [String] :next_token
    #   Token for retrieving the next page of results.
    #
    # @return [Types::ListRelationshipsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRelationshipsResponse#items #items} => Array&lt;Types::RelationshipSummary&gt;
    #   * {Types::ListRelationshipsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: Example for ListRelationships
    #
    #   resp = client.list_relationships({
    #     associated_account_ids: [
    #       "123456789012", 
    #     ], 
    #     association_types: [
    #       "DOWNSTREAM_SELLER", 
    #     ], 
    #     catalog: "AWS", 
    #     display_names: [
    #       "TestDisplayName", 
    #     ], 
    #     max_results: 100, 
    #     next_token: "nextToken", 
    #     program_management_account_identifiers: [
    #       "pma-u8ic702rtzng8", 
    #     ], 
    #     sort: {
    #       sort_by: "UpdatedAt", 
    #       sort_order: "Descending", 
    #     }, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     items: [
    #       {
    #         arn: "arn:aws:partnercentral:us-east-1:123456789012:catalog/AWS/program-management-account/pma-u8ic702rtzng8/relationship/rs-l9o4fj3b5zb91", 
    #         associated_account_id: "987654321012", 
    #         association_type: "DOWNSTREAM_SELLER", 
    #         created_at: Time.parse("2024-04-29T16:18:16Z"), 
    #         display_name: "TestDisplayName", 
    #         id: "rs-l9o4fj3b5zb91", 
    #         program_management_account_id: "pma-u8ic702rtzng8", 
    #         revision: "3", 
    #         updated_at: Time.parse("2024-05-02T16:18:16Z"), 
    #       }, 
    #     ], 
    #     next_token: "nextToken", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_relationships({
    #     catalog: "Catalog", # required
    #     max_results: 1,
    #     associated_account_ids: ["AccountId"],
    #     association_types: ["DOWNSTREAM_SELLER"], # accepts DOWNSTREAM_SELLER, END_CUSTOMER, INTERNAL
    #     display_names: ["RelationshipDisplayName"],
    #     program_management_account_identifiers: ["ProgramManagementAccountIdentifier"],
    #     sort: {
    #       sort_order: "Ascending", # required, accepts Ascending, Descending
    #       sort_by: "UpdatedAt", # required, accepts UpdatedAt
    #     },
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].arn #=> String
    #   resp.items[0].id #=> String
    #   resp.items[0].revision #=> String
    #   resp.items[0].catalog #=> String
    #   resp.items[0].association_type #=> String, one of "DOWNSTREAM_SELLER", "END_CUSTOMER", "INTERNAL"
    #   resp.items[0].program_management_account_id #=> String
    #   resp.items[0].associated_account_id #=> String
    #   resp.items[0].display_name #=> String
    #   resp.items[0].sector #=> String, one of "COMMERCIAL", "GOVERNMENT", "GOVERNMENT_EXCEPTION"
    #   resp.items[0].created_at #=> Time
    #   resp.items[0].updated_at #=> Time
    #   resp.items[0].start_date #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-channel-2024-03-18/ListRelationships AWS API Documentation
    #
    # @overload list_relationships(params = {})
    # @param [Hash] params ({})
    def list_relationships(params = {}, options = {})
      req = build_request(:list_relationships, params)
      req.send_request(options)
    end

    # Lists tags associated with a specific resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource to list tags for.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Array&lt;Types::Tag&gt;
    #
    #
    # @example Example: Example for ListTagsForResource
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "arn:aws:partnercentral:us-east-1:123456789012:catalog/AWS/program-management-account/pma-u8ic702rtzng8", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     tags: [
    #       {
    #         key: "ExampleKey", 
    #         value: "ExampleValue", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "TaggableArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-channel-2024-03-18/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Rejects a pending channel handshake request.
    #
    # @option params [required, String] :catalog
    #   The catalog identifier for the handshake request.
    #
    # @option params [required, String] :identifier
    #   The unique identifier of the channel handshake to reject.
    #
    # @return [Types::RejectChannelHandshakeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RejectChannelHandshakeResponse#channel_handshake_detail #channel_handshake_detail} => Types::RejectChannelHandshakeDetail
    #
    #
    # @example Example: Example for RejectChannelHandshake
    #
    #   resp = client.reject_channel_handshake({
    #     catalog: "AWS", 
    #     identifier: "ch-4fj3bd2o3vb91", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     channel_handshake_detail: {
    #       arn: "arn:aws:partnercentral:us-east-1:123456789012:catalog/AWS/channel-handshake/ch-4fj3bd2o3vb91", 
    #       id: "ch-4fj3bd2o3vb91", 
    #       status: "REJECTED", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reject_channel_handshake({
    #     catalog: "Catalog", # required
    #     identifier: "ChannelHandshakeIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.channel_handshake_detail.id #=> String
    #   resp.channel_handshake_detail.arn #=> String
    #   resp.channel_handshake_detail.status #=> String, one of "PENDING", "ACCEPTED", "REJECTED", "CANCELED", "EXPIRED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-channel-2024-03-18/RejectChannelHandshake AWS API Documentation
    #
    # @overload reject_channel_handshake(params = {})
    # @param [Hash] params ({})
    def reject_channel_handshake(params = {}, options = {})
      req = build_request(:reject_channel_handshake, params)
      req.send_request(options)
    end

    # Adds or updates tags for a specified resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource to tag.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   Key-value pairs to associate with the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: Example for TagResource
    #
    #   resp = client.tag_resource({
    #     resource_arn: "arn:aws:partnercentral:us-east-1:123456789012:catalog/AWS/program-management-account/pma-u8ic702rtzng8/relationship/rs-l9o4fj3b5zb91", 
    #     tags: [
    #       {
    #         key: "ExampleKey", 
    #         value: "ExampleValue", 
    #       }, 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "TaggableArn", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-channel-2024-03-18/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes tags from a specified resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource to remove tags from.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The keys of the tags to remove from the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: Example for UntagResource
    #
    #   resp = client.untag_resource({
    #     resource_arn: "arn:aws:partnercentral:us-east-1:123456789012:catalog/AWS/channel-handshake/ch-4fj3bd2o3vb91", 
    #     tag_keys: [
    #       "ExampleKey", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "TaggableArn", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-channel-2024-03-18/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates the properties of a program management account.
    #
    # @option params [required, String] :catalog
    #   The catalog identifier for the program management account.
    #
    # @option params [required, String] :identifier
    #   The unique identifier of the program management account to update.
    #
    # @option params [String] :revision
    #   The current revision number of the program management account.
    #
    # @option params [String] :display_name
    #   The new display name for the program management account.
    #
    # @return [Types::UpdateProgramManagementAccountResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateProgramManagementAccountResponse#program_management_account_detail #program_management_account_detail} => Types::UpdateProgramManagementAccountDetail
    #
    #
    # @example Example: Example for UpdateProgramManagementAccount
    #
    #   resp = client.update_program_management_account({
    #     catalog: "AWS", 
    #     display_name: "TestDisplayName", 
    #     identifier: "pma-u8ic702rtzng8", 
    #     revision: "3", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     program_management_account_detail: {
    #       arn: "arn:aws:partnercentral:us-east-1:123456789012:catalog/AWS/program-management-account/pma-u8ic702rtzng8", 
    #       display_name: "TestDisplayName", 
    #       id: "pma-u8ic702rtzng8", 
    #       revision: "4", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_program_management_account({
    #     catalog: "Catalog", # required
    #     identifier: "ProgramManagementAccountIdentifier", # required
    #     revision: "Revision",
    #     display_name: "ProgramManagementAccountDisplayName",
    #   })
    #
    # @example Response structure
    #
    #   resp.program_management_account_detail.id #=> String
    #   resp.program_management_account_detail.arn #=> String
    #   resp.program_management_account_detail.revision #=> String
    #   resp.program_management_account_detail.display_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-channel-2024-03-18/UpdateProgramManagementAccount AWS API Documentation
    #
    # @overload update_program_management_account(params = {})
    # @param [Hash] params ({})
    def update_program_management_account(params = {}, options = {})
      req = build_request(:update_program_management_account, params)
      req.send_request(options)
    end

    # Updates the properties of a partner relationship.
    #
    # @option params [required, String] :catalog
    #   The catalog identifier for the relationship.
    #
    # @option params [required, String] :identifier
    #   The unique identifier of the relationship to update.
    #
    # @option params [required, String] :program_management_account_identifier
    #   The identifier of the program management account associated with the
    #   relationship.
    #
    # @option params [String] :revision
    #   The current revision number of the relationship.
    #
    # @option params [String] :display_name
    #   The new display name for the relationship.
    #
    # @option params [Types::SupportPlan] :requested_support_plan
    #   The updated support plan for the relationship.
    #
    # @return [Types::UpdateRelationshipResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateRelationshipResponse#relationship_detail #relationship_detail} => Types::UpdateRelationshipDetail
    #
    #
    # @example Example: Example for UpdateRelationship
    #
    #   resp = client.update_relationship({
    #     catalog: "AWS", 
    #     display_name: "TestDisplayName", 
    #     identifier: "rs-l9o4fj3b5zb91", 
    #     program_management_account_identifier: "pma-u8ic702rtzng8", 
    #     revision: "3", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     relationship_detail: {
    #       arn: "arn:aws:partnercentral:us-east-1:123456789012:catalog/AWS/program-management-account/pma-u8ic702rtzng8/relationship/rs-l9o4fj3b5zb91", 
    #       display_name: "TestDisplayName", 
    #       id: "rs-l9o4fj3b5zb91", 
    #       revision: "4", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_relationship({
    #     catalog: "Catalog", # required
    #     identifier: "RelationshipIdentifier", # required
    #     program_management_account_identifier: "ProgramManagementAccountIdentifier", # required
    #     revision: "Revision",
    #     display_name: "RelationshipDisplayName",
    #     requested_support_plan: {
    #       resold_business: {
    #         coverage: "ENTIRE_ORGANIZATION", # required, accepts ENTIRE_ORGANIZATION, MANAGEMENT_ACCOUNT_ONLY
    #       },
    #       resold_enterprise: {
    #         coverage: "ENTIRE_ORGANIZATION", # required, accepts ENTIRE_ORGANIZATION, MANAGEMENT_ACCOUNT_ONLY
    #         tam_location: "String", # required
    #         charge_account_id: "AccountId",
    #       },
    #       partner_led_support: {
    #         coverage: "ENTIRE_ORGANIZATION", # required, accepts ENTIRE_ORGANIZATION, MANAGEMENT_ACCOUNT_ONLY
    #         provider: "DISTRIBUTOR", # accepts DISTRIBUTOR, DISTRIBUTION_SELLER
    #         tam_location: "String", # required
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.relationship_detail.arn #=> String
    #   resp.relationship_detail.id #=> String
    #   resp.relationship_detail.revision #=> String
    #   resp.relationship_detail.display_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-channel-2024-03-18/UpdateRelationship AWS API Documentation
    #
    # @overload update_relationship(params = {})
    # @param [Hash] params ({})
    def update_relationship(params = {}, options = {})
      req = build_request(:update_relationship, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::PartnerCentralChannel')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-partnercentralchannel'
      context[:gem_version] = '1.1.0'
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
