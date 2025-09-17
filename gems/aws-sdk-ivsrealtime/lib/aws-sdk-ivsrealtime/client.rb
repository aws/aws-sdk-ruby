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
require 'aws-sdk-core/plugins/protocols/rest_json'

module Aws::IVSRealTime
  # An API client for IVSRealTime.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::IVSRealTime::Client.new(
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

    @identifier = :ivsrealtime

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
    add_plugin(Aws::Plugins::Protocols::RestJson)
    add_plugin(Aws::IVSRealTime::Plugins::Endpoints)

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
    #   @option options [Aws::IVSRealTime::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::IVSRealTime::EndpointParameters`.
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

    # Creates an EncoderConfiguration object.
    #
    # @option params [String] :name
    #   Optional name to identify the resource.
    #
    # @option params [Types::Video] :video
    #   Video configuration. Default: video resolution 1280x720, bitrate 2500
    #   kbps, 30 fps.
    #
    # @option params [Hash<String,String>] :tags
    #   Tags attached to the resource. Array of maps, each of the form
    #   `string:string (key:value)`. See [Best practices and strategies][1] in
    #   *Tagging AWS Resources and Tag Editor* for details, including
    #   restrictions that apply to tags and "Tag naming limits and
    #   requirements"; Amazon IVS has no constraints on tags beyond what is
    #   documented there.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html
    #
    # @return [Types::CreateEncoderConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateEncoderConfigurationResponse#encoder_configuration #encoder_configuration} => Types::EncoderConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_encoder_configuration({
    #     name: "EncoderConfigurationName",
    #     video: {
    #       width: 1,
    #       height: 1,
    #       framerate: 1.0,
    #       bitrate: 1,
    #     },
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.encoder_configuration.arn #=> String
    #   resp.encoder_configuration.name #=> String
    #   resp.encoder_configuration.video.width #=> Integer
    #   resp.encoder_configuration.video.height #=> Integer
    #   resp.encoder_configuration.video.framerate #=> Float
    #   resp.encoder_configuration.video.bitrate #=> Integer
    #   resp.encoder_configuration.tags #=> Hash
    #   resp.encoder_configuration.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/CreateEncoderConfiguration AWS API Documentation
    #
    # @overload create_encoder_configuration(params = {})
    # @param [Hash] params ({})
    def create_encoder_configuration(params = {}, options = {})
      req = build_request(:create_encoder_configuration, params)
      req.send_request(options)
    end

    # Creates a new IngestConfiguration resource, used to specify the ingest
    # protocol for a stage.
    #
    # @option params [String] :name
    #   Optional name that can be specified for the IngestConfiguration being
    #   created.
    #
    # @option params [String] :stage_arn
    #   ARN of the stage with which the IngestConfiguration is associated.
    #
    # @option params [String] :user_id
    #   Customer-assigned name to help identify the participant using the
    #   IngestConfiguration; this can be used to link a participant to a user
    #   in the customer’s own systems. This can be any UTF-8 encoded text.
    #   *This field is exposed to all stage participants and should not be
    #   used for personally identifying, confidential, or sensitive
    #   information.*
    #
    # @option params [Hash<String,String>] :attributes
    #   Application-provided attributes to store in the IngestConfiguration
    #   and attach to a stage. Map keys and values can contain UTF-8 encoded
    #   text. The maximum length of this field is 1 KB total. *This field is
    #   exposed to all stage participants and should not be used for
    #   personally identifying, confidential, or sensitive information.*
    #
    # @option params [required, String] :ingest_protocol
    #   Type of ingest protocol that the user employs to broadcast. If this is
    #   set to `RTMP`, `insecureIngest` must be set to `true`.
    #
    # @option params [Boolean] :insecure_ingest
    #   Whether the stage allows insecure RTMP ingest. This must be set to
    #   `true`, if `ingestProtocol` is set to `RTMP`. Default: `false`.
    #
    # @option params [Hash<String,String>] :tags
    #   Tags attached to the resource. Array of maps, each of the form
    #   `string:string (key:value)`. See [Best practices and strategies][1] in
    #   *Tagging AWS Resources and Tag Editor* for details, including
    #   restrictions that apply to tags and "Tag naming limits and
    #   requirements"; Amazon IVS has no constraints on tags beyond what is
    #   documented there.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html
    #
    # @return [Types::CreateIngestConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateIngestConfigurationResponse#ingest_configuration #ingest_configuration} => Types::IngestConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_ingest_configuration({
    #     name: "IngestConfigurationName",
    #     stage_arn: "IngestConfigurationStageArn",
    #     user_id: "UserId",
    #     attributes: {
    #       "String" => "String",
    #     },
    #     ingest_protocol: "RTMP", # required, accepts RTMP, RTMPS
    #     insecure_ingest: false,
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.ingest_configuration.name #=> String
    #   resp.ingest_configuration.arn #=> String
    #   resp.ingest_configuration.ingest_protocol #=> String, one of "RTMP", "RTMPS"
    #   resp.ingest_configuration.stream_key #=> String
    #   resp.ingest_configuration.stage_arn #=> String
    #   resp.ingest_configuration.participant_id #=> String
    #   resp.ingest_configuration.state #=> String, one of "ACTIVE", "INACTIVE"
    #   resp.ingest_configuration.user_id #=> String
    #   resp.ingest_configuration.attributes #=> Hash
    #   resp.ingest_configuration.attributes["String"] #=> String
    #   resp.ingest_configuration.tags #=> Hash
    #   resp.ingest_configuration.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/CreateIngestConfiguration AWS API Documentation
    #
    # @overload create_ingest_configuration(params = {})
    # @param [Hash] params ({})
    def create_ingest_configuration(params = {}, options = {})
      req = build_request(:create_ingest_configuration, params)
      req.send_request(options)
    end

    # Creates an additional token for a specified stage. This can be done
    # after stage creation or when tokens expire. Tokens always are scoped
    # to the stage for which they are created.
    #
    # Encryption keys are owned by Amazon IVS and never used directly by
    # your application.
    #
    # @option params [required, String] :stage_arn
    #   ARN of the stage to which this token is scoped.
    #
    # @option params [Integer] :duration
    #   Duration (in minutes), after which the token expires. Default: 720 (12
    #   hours).
    #
    # @option params [String] :user_id
    #   Name that can be specified to help identify the token. This can be any
    #   UTF-8 encoded text. *This field is exposed to all stage participants
    #   and should not be used for personally identifying, confidential, or
    #   sensitive information.*
    #
    # @option params [Hash<String,String>] :attributes
    #   Application-provided attributes to encode into the token and attach to
    #   a stage. Map keys and values can contain UTF-8 encoded text. The
    #   maximum length of this field is 1 KB total. *This field is exposed to
    #   all stage participants and should not be used for personally
    #   identifying, confidential, or sensitive information.*
    #
    # @option params [Array<String>] :capabilities
    #   Set of capabilities that the user is allowed to perform in the stage.
    #   Default: `PUBLISH, SUBSCRIBE`.
    #
    # @return [Types::CreateParticipantTokenResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateParticipantTokenResponse#participant_token #participant_token} => Types::ParticipantToken
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_participant_token({
    #     stage_arn: "StageArn", # required
    #     duration: 1,
    #     user_id: "ParticipantTokenUserId",
    #     attributes: {
    #       "String" => "String",
    #     },
    #     capabilities: ["PUBLISH"], # accepts PUBLISH, SUBSCRIBE
    #   })
    #
    # @example Response structure
    #
    #   resp.participant_token.participant_id #=> String
    #   resp.participant_token.token #=> String
    #   resp.participant_token.user_id #=> String
    #   resp.participant_token.attributes #=> Hash
    #   resp.participant_token.attributes["String"] #=> String
    #   resp.participant_token.duration #=> Integer
    #   resp.participant_token.capabilities #=> Array
    #   resp.participant_token.capabilities[0] #=> String, one of "PUBLISH", "SUBSCRIBE"
    #   resp.participant_token.expiration_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/CreateParticipantToken AWS API Documentation
    #
    # @overload create_participant_token(params = {})
    # @param [Hash] params ({})
    def create_participant_token(params = {}, options = {})
      req = build_request(:create_participant_token, params)
      req.send_request(options)
    end

    # Creates a new stage (and optionally participant tokens).
    #
    # @option params [String] :name
    #   Optional name that can be specified for the stage being created.
    #
    # @option params [Array<Types::ParticipantTokenConfiguration>] :participant_token_configurations
    #   Array of participant token configuration objects to attach to the new
    #   stage.
    #
    # @option params [Hash<String,String>] :tags
    #   Tags attached to the resource. Array of maps, each of the form
    #   `string:string (key:value)`. See [Best practices and strategies][1] in
    #   *Tagging AWS Resources and Tag Editor* for details, including
    #   restrictions that apply to tags and "Tag naming limits and
    #   requirements"; Amazon IVS has no constraints on tags beyond what is
    #   documented there.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html
    #
    # @option params [Types::AutoParticipantRecordingConfiguration] :auto_participant_recording_configuration
    #   Configuration object for individual participant recording, to attach
    #   to the new stage.
    #
    # @return [Types::CreateStageResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateStageResponse#stage #stage} => Types::Stage
    #   * {Types::CreateStageResponse#participant_tokens #participant_tokens} => Array&lt;Types::ParticipantToken&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_stage({
    #     name: "StageName",
    #     participant_token_configurations: [
    #       {
    #         duration: 1,
    #         user_id: "ParticipantTokenUserId",
    #         attributes: {
    #           "String" => "String",
    #         },
    #         capabilities: ["PUBLISH"], # accepts PUBLISH, SUBSCRIBE
    #       },
    #     ],
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     auto_participant_recording_configuration: {
    #       storage_configuration_arn: "AutoParticipantRecordingStorageConfigurationArn", # required
    #       media_types: ["AUDIO_VIDEO"], # accepts AUDIO_VIDEO, AUDIO_ONLY, NONE
    #       thumbnail_configuration: {
    #         target_interval_seconds: 1,
    #         storage: ["SEQUENTIAL"], # accepts SEQUENTIAL, LATEST
    #         recording_mode: "INTERVAL", # accepts INTERVAL, DISABLED
    #       },
    #       recording_reconnect_window_seconds: 1,
    #       hls_configuration: {
    #         target_segment_duration_seconds: 1,
    #       },
    #       record_participant_replicas: false,
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.stage.arn #=> String
    #   resp.stage.name #=> String
    #   resp.stage.active_session_id #=> String
    #   resp.stage.tags #=> Hash
    #   resp.stage.tags["TagKey"] #=> String
    #   resp.stage.auto_participant_recording_configuration.storage_configuration_arn #=> String
    #   resp.stage.auto_participant_recording_configuration.media_types #=> Array
    #   resp.stage.auto_participant_recording_configuration.media_types[0] #=> String, one of "AUDIO_VIDEO", "AUDIO_ONLY", "NONE"
    #   resp.stage.auto_participant_recording_configuration.thumbnail_configuration.target_interval_seconds #=> Integer
    #   resp.stage.auto_participant_recording_configuration.thumbnail_configuration.storage #=> Array
    #   resp.stage.auto_participant_recording_configuration.thumbnail_configuration.storage[0] #=> String, one of "SEQUENTIAL", "LATEST"
    #   resp.stage.auto_participant_recording_configuration.thumbnail_configuration.recording_mode #=> String, one of "INTERVAL", "DISABLED"
    #   resp.stage.auto_participant_recording_configuration.recording_reconnect_window_seconds #=> Integer
    #   resp.stage.auto_participant_recording_configuration.hls_configuration.target_segment_duration_seconds #=> Integer
    #   resp.stage.auto_participant_recording_configuration.record_participant_replicas #=> Boolean
    #   resp.stage.endpoints.events #=> String
    #   resp.stage.endpoints.whip #=> String
    #   resp.stage.endpoints.rtmp #=> String
    #   resp.stage.endpoints.rtmps #=> String
    #   resp.participant_tokens #=> Array
    #   resp.participant_tokens[0].participant_id #=> String
    #   resp.participant_tokens[0].token #=> String
    #   resp.participant_tokens[0].user_id #=> String
    #   resp.participant_tokens[0].attributes #=> Hash
    #   resp.participant_tokens[0].attributes["String"] #=> String
    #   resp.participant_tokens[0].duration #=> Integer
    #   resp.participant_tokens[0].capabilities #=> Array
    #   resp.participant_tokens[0].capabilities[0] #=> String, one of "PUBLISH", "SUBSCRIBE"
    #   resp.participant_tokens[0].expiration_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/CreateStage AWS API Documentation
    #
    # @overload create_stage(params = {})
    # @param [Hash] params ({})
    def create_stage(params = {}, options = {})
      req = build_request(:create_stage, params)
      req.send_request(options)
    end

    # Creates a new storage configuration, used to enable recording to
    # Amazon S3. When a StorageConfiguration is created, IVS will modify the
    # S3 bucketPolicy of the provided bucket. This will ensure that IVS has
    # sufficient permissions to write content to the provided bucket.
    #
    # @option params [String] :name
    #   Storage configuration name. The value does not need to be unique.
    #
    # @option params [required, Types::S3StorageConfiguration] :s3
    #   A complex type that contains a storage configuration for where
    #   recorded video will be stored.
    #
    # @option params [Hash<String,String>] :tags
    #   Tags attached to the resource. Array of maps, each of the form
    #   `string:string (key:value)`. See [Best practices and strategies][1] in
    #   *Tagging AWS Resources and Tag Editor* for details, including
    #   restrictions that apply to tags and "Tag naming limits and
    #   requirements"; Amazon IVS has no constraints on tags beyond what is
    #   documented there.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html
    #
    # @return [Types::CreateStorageConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateStorageConfigurationResponse#storage_configuration #storage_configuration} => Types::StorageConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_storage_configuration({
    #     name: "StorageConfigurationName",
    #     s3: { # required
    #       bucket_name: "S3BucketName", # required
    #     },
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.storage_configuration.arn #=> String
    #   resp.storage_configuration.name #=> String
    #   resp.storage_configuration.s3.bucket_name #=> String
    #   resp.storage_configuration.tags #=> Hash
    #   resp.storage_configuration.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/CreateStorageConfiguration AWS API Documentation
    #
    # @overload create_storage_configuration(params = {})
    # @param [Hash] params ({})
    def create_storage_configuration(params = {}, options = {})
      req = build_request(:create_storage_configuration, params)
      req.send_request(options)
    end

    # Deletes an EncoderConfiguration resource. Ensures that no Compositions
    # are using this template; otherwise, returns an error.
    #
    # @option params [required, String] :arn
    #   ARN of the EncoderConfiguration.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_encoder_configuration({
    #     arn: "EncoderConfigurationArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/DeleteEncoderConfiguration AWS API Documentation
    #
    # @overload delete_encoder_configuration(params = {})
    # @param [Hash] params ({})
    def delete_encoder_configuration(params = {}, options = {})
      req = build_request(:delete_encoder_configuration, params)
      req.send_request(options)
    end

    # Deletes a specified IngestConfiguration, so it can no longer be used
    # to broadcast. An IngestConfiguration cannot be deleted if the
    # publisher is actively streaming to a stage, unless `force` is set to
    # `true`.
    #
    # @option params [required, String] :arn
    #   ARN of the IngestConfiguration.
    #
    # @option params [Boolean] :force
    #   Optional field to force deletion of the IngestConfiguration. If this
    #   is set to `true` when a participant is actively publishing, the
    #   participant is disconnected from the stage, followed by deletion of
    #   the IngestConfiguration. Default: `false`.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_ingest_configuration({
    #     arn: "IngestConfigurationArn", # required
    #     force: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/DeleteIngestConfiguration AWS API Documentation
    #
    # @overload delete_ingest_configuration(params = {})
    # @param [Hash] params ({})
    def delete_ingest_configuration(params = {}, options = {})
      req = build_request(:delete_ingest_configuration, params)
      req.send_request(options)
    end

    # Deletes the specified public key used to sign stage participant
    # tokens. This invalidates future participant tokens generated using the
    # key pair’s private key.
    #
    # @option params [required, String] :arn
    #   ARN of the public key to be deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_public_key({
    #     arn: "PublicKeyArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/DeletePublicKey AWS API Documentation
    #
    # @overload delete_public_key(params = {})
    # @param [Hash] params ({})
    def delete_public_key(params = {}, options = {})
      req = build_request(:delete_public_key, params)
      req.send_request(options)
    end

    # Shuts down and deletes the specified stage (disconnecting all
    # participants). This operation also removes the `stageArn` from the
    # associated IngestConfiguration, if there are participants using the
    # IngestConfiguration to publish to the stage.
    #
    # @option params [required, String] :arn
    #   ARN of the stage to be deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_stage({
    #     arn: "StageArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/DeleteStage AWS API Documentation
    #
    # @overload delete_stage(params = {})
    # @param [Hash] params ({})
    def delete_stage(params = {}, options = {})
      req = build_request(:delete_stage, params)
      req.send_request(options)
    end

    # Deletes the storage configuration for the specified ARN.
    #
    # If you try to delete a storage configuration that is used by a
    # Composition, you will get an error (409 ConflictException). To avoid
    # this, for all Compositions that reference the storage configuration,
    # first use StopComposition and wait for it to complete, then use
    # DeleteStorageConfiguration.
    #
    # @option params [required, String] :arn
    #   ARN of the storage configuration to be deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_storage_configuration({
    #     arn: "StorageConfigurationArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/DeleteStorageConfiguration AWS API Documentation
    #
    # @overload delete_storage_configuration(params = {})
    # @param [Hash] params ({})
    def delete_storage_configuration(params = {}, options = {})
      req = build_request(:delete_storage_configuration, params)
      req.send_request(options)
    end

    # Disconnects a specified participant from a specified stage. If the
    # participant is publishing using an IngestConfiguration,
    # DisconnectParticipant also updates the `stageArn` in the
    # IngestConfiguration to be an empty string.
    #
    # @option params [required, String] :stage_arn
    #   ARN of the stage to which the participant is attached.
    #
    # @option params [required, String] :participant_id
    #   Identifier of the participant to be disconnected. IVS assigns this; it
    #   is returned by CreateParticipantToken (for streams using WebRTC
    #   ingest) or CreateIngestConfiguration (for streams using RTMP ingest).
    #
    # @option params [String] :reason
    #   Description of why this participant is being disconnected.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disconnect_participant({
    #     stage_arn: "StageArn", # required
    #     participant_id: "ParticipantTokenId", # required
    #     reason: "DisconnectParticipantReason",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/DisconnectParticipant AWS API Documentation
    #
    # @overload disconnect_participant(params = {})
    # @param [Hash] params ({})
    def disconnect_participant(params = {}, options = {})
      req = build_request(:disconnect_participant, params)
      req.send_request(options)
    end

    # Get information about the specified Composition resource.
    #
    # @option params [required, String] :arn
    #   ARN of the Composition resource.
    #
    # @return [Types::GetCompositionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCompositionResponse#composition #composition} => Types::Composition
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_composition({
    #     arn: "CompositionArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.composition.arn #=> String
    #   resp.composition.stage_arn #=> String
    #   resp.composition.state #=> String, one of "STARTING", "ACTIVE", "STOPPING", "FAILED", "STOPPED"
    #   resp.composition.layout.grid.featured_participant_attribute #=> String
    #   resp.composition.layout.grid.omit_stopped_video #=> Boolean
    #   resp.composition.layout.grid.video_aspect_ratio #=> String, one of "AUTO", "VIDEO", "SQUARE", "PORTRAIT"
    #   resp.composition.layout.grid.video_fill_mode #=> String, one of "FILL", "COVER", "CONTAIN"
    #   resp.composition.layout.grid.grid_gap #=> Integer
    #   resp.composition.layout.grid.participant_order_attribute #=> String
    #   resp.composition.layout.pip.featured_participant_attribute #=> String
    #   resp.composition.layout.pip.omit_stopped_video #=> Boolean
    #   resp.composition.layout.pip.video_fill_mode #=> String, one of "FILL", "COVER", "CONTAIN"
    #   resp.composition.layout.pip.grid_gap #=> Integer
    #   resp.composition.layout.pip.pip_participant_attribute #=> String
    #   resp.composition.layout.pip.pip_behavior #=> String, one of "STATIC", "DYNAMIC"
    #   resp.composition.layout.pip.pip_offset #=> Integer
    #   resp.composition.layout.pip.pip_position #=> String, one of "TOP_LEFT", "TOP_RIGHT", "BOTTOM_LEFT", "BOTTOM_RIGHT"
    #   resp.composition.layout.pip.pip_width #=> Integer
    #   resp.composition.layout.pip.pip_height #=> Integer
    #   resp.composition.layout.pip.participant_order_attribute #=> String
    #   resp.composition.destinations #=> Array
    #   resp.composition.destinations[0].id #=> String
    #   resp.composition.destinations[0].state #=> String, one of "STARTING", "ACTIVE", "STOPPING", "RECONNECTING", "FAILED", "STOPPED"
    #   resp.composition.destinations[0].start_time #=> Time
    #   resp.composition.destinations[0].end_time #=> Time
    #   resp.composition.destinations[0].configuration.name #=> String
    #   resp.composition.destinations[0].configuration.channel.channel_arn #=> String
    #   resp.composition.destinations[0].configuration.channel.encoder_configuration_arn #=> String
    #   resp.composition.destinations[0].configuration.s3.storage_configuration_arn #=> String
    #   resp.composition.destinations[0].configuration.s3.encoder_configuration_arns #=> Array
    #   resp.composition.destinations[0].configuration.s3.encoder_configuration_arns[0] #=> String
    #   resp.composition.destinations[0].configuration.s3.recording_configuration.hls_configuration.target_segment_duration_seconds #=> Integer
    #   resp.composition.destinations[0].configuration.s3.recording_configuration.format #=> String, one of "HLS"
    #   resp.composition.destinations[0].configuration.s3.thumbnail_configurations #=> Array
    #   resp.composition.destinations[0].configuration.s3.thumbnail_configurations[0].target_interval_seconds #=> Integer
    #   resp.composition.destinations[0].configuration.s3.thumbnail_configurations[0].storage #=> Array
    #   resp.composition.destinations[0].configuration.s3.thumbnail_configurations[0].storage[0] #=> String, one of "SEQUENTIAL", "LATEST"
    #   resp.composition.destinations[0].detail.s3.recording_prefix #=> String
    #   resp.composition.tags #=> Hash
    #   resp.composition.tags["TagKey"] #=> String
    #   resp.composition.start_time #=> Time
    #   resp.composition.end_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/GetComposition AWS API Documentation
    #
    # @overload get_composition(params = {})
    # @param [Hash] params ({})
    def get_composition(params = {}, options = {})
      req = build_request(:get_composition, params)
      req.send_request(options)
    end

    # Gets information about the specified EncoderConfiguration resource.
    #
    # @option params [required, String] :arn
    #   ARN of the EncoderConfiguration resource.
    #
    # @return [Types::GetEncoderConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetEncoderConfigurationResponse#encoder_configuration #encoder_configuration} => Types::EncoderConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_encoder_configuration({
    #     arn: "EncoderConfigurationArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.encoder_configuration.arn #=> String
    #   resp.encoder_configuration.name #=> String
    #   resp.encoder_configuration.video.width #=> Integer
    #   resp.encoder_configuration.video.height #=> Integer
    #   resp.encoder_configuration.video.framerate #=> Float
    #   resp.encoder_configuration.video.bitrate #=> Integer
    #   resp.encoder_configuration.tags #=> Hash
    #   resp.encoder_configuration.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/GetEncoderConfiguration AWS API Documentation
    #
    # @overload get_encoder_configuration(params = {})
    # @param [Hash] params ({})
    def get_encoder_configuration(params = {}, options = {})
      req = build_request(:get_encoder_configuration, params)
      req.send_request(options)
    end

    # Gets information about the specified IngestConfiguration.
    #
    # @option params [required, String] :arn
    #   ARN of the ingest for which the information is to be retrieved.
    #
    # @return [Types::GetIngestConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetIngestConfigurationResponse#ingest_configuration #ingest_configuration} => Types::IngestConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_ingest_configuration({
    #     arn: "IngestConfigurationArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.ingest_configuration.name #=> String
    #   resp.ingest_configuration.arn #=> String
    #   resp.ingest_configuration.ingest_protocol #=> String, one of "RTMP", "RTMPS"
    #   resp.ingest_configuration.stream_key #=> String
    #   resp.ingest_configuration.stage_arn #=> String
    #   resp.ingest_configuration.participant_id #=> String
    #   resp.ingest_configuration.state #=> String, one of "ACTIVE", "INACTIVE"
    #   resp.ingest_configuration.user_id #=> String
    #   resp.ingest_configuration.attributes #=> Hash
    #   resp.ingest_configuration.attributes["String"] #=> String
    #   resp.ingest_configuration.tags #=> Hash
    #   resp.ingest_configuration.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/GetIngestConfiguration AWS API Documentation
    #
    # @overload get_ingest_configuration(params = {})
    # @param [Hash] params ({})
    def get_ingest_configuration(params = {}, options = {})
      req = build_request(:get_ingest_configuration, params)
      req.send_request(options)
    end

    # Gets information about the specified participant token.
    #
    # @option params [required, String] :stage_arn
    #   Stage ARN.
    #
    # @option params [required, String] :session_id
    #   ID of a session within the stage.
    #
    # @option params [required, String] :participant_id
    #   Unique identifier for the participant. This is assigned by IVS and
    #   returned by CreateParticipantToken.
    #
    # @return [Types::GetParticipantResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetParticipantResponse#participant #participant} => Types::Participant
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_participant({
    #     stage_arn: "StageArn", # required
    #     session_id: "StageSessionId", # required
    #     participant_id: "ParticipantId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.participant.participant_id #=> String
    #   resp.participant.user_id #=> String
    #   resp.participant.state #=> String, one of "CONNECTED", "DISCONNECTED"
    #   resp.participant.first_join_time #=> Time
    #   resp.participant.attributes #=> Hash
    #   resp.participant.attributes["String"] #=> String
    #   resp.participant.published #=> Boolean
    #   resp.participant.isp_name #=> String
    #   resp.participant.os_name #=> String
    #   resp.participant.os_version #=> String
    #   resp.participant.browser_name #=> String
    #   resp.participant.browser_version #=> String
    #   resp.participant.sdk_version #=> String
    #   resp.participant.recording_s3_bucket_name #=> String
    #   resp.participant.recording_s3_prefix #=> String
    #   resp.participant.recording_state #=> String, one of "STARTING", "ACTIVE", "STOPPING", "STOPPED", "FAILED", "DISABLED"
    #   resp.participant.protocol #=> String, one of "UNKNOWN", "WHIP", "RTMP", "RTMPS"
    #   resp.participant.replication_type #=> String, one of "SOURCE", "REPLICA", "NONE"
    #   resp.participant.replication_state #=> String, one of "ACTIVE", "STOPPED"
    #   resp.participant.source_stage_arn #=> String
    #   resp.participant.source_session_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/GetParticipant AWS API Documentation
    #
    # @overload get_participant(params = {})
    # @param [Hash] params ({})
    def get_participant(params = {}, options = {})
      req = build_request(:get_participant, params)
      req.send_request(options)
    end

    # Gets information for the specified public key.
    #
    # @option params [required, String] :arn
    #   ARN of the public key for which the information is to be retrieved.
    #
    # @return [Types::GetPublicKeyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetPublicKeyResponse#public_key #public_key} => Types::PublicKey
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_public_key({
    #     arn: "PublicKeyArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.public_key.arn #=> String
    #   resp.public_key.name #=> String
    #   resp.public_key.public_key_material #=> String
    #   resp.public_key.fingerprint #=> String
    #   resp.public_key.tags #=> Hash
    #   resp.public_key.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/GetPublicKey AWS API Documentation
    #
    # @overload get_public_key(params = {})
    # @param [Hash] params ({})
    def get_public_key(params = {}, options = {})
      req = build_request(:get_public_key, params)
      req.send_request(options)
    end

    # Gets information for the specified stage.
    #
    # @option params [required, String] :arn
    #   ARN of the stage for which the information is to be retrieved.
    #
    # @return [Types::GetStageResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetStageResponse#stage #stage} => Types::Stage
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_stage({
    #     arn: "StageArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.stage.arn #=> String
    #   resp.stage.name #=> String
    #   resp.stage.active_session_id #=> String
    #   resp.stage.tags #=> Hash
    #   resp.stage.tags["TagKey"] #=> String
    #   resp.stage.auto_participant_recording_configuration.storage_configuration_arn #=> String
    #   resp.stage.auto_participant_recording_configuration.media_types #=> Array
    #   resp.stage.auto_participant_recording_configuration.media_types[0] #=> String, one of "AUDIO_VIDEO", "AUDIO_ONLY", "NONE"
    #   resp.stage.auto_participant_recording_configuration.thumbnail_configuration.target_interval_seconds #=> Integer
    #   resp.stage.auto_participant_recording_configuration.thumbnail_configuration.storage #=> Array
    #   resp.stage.auto_participant_recording_configuration.thumbnail_configuration.storage[0] #=> String, one of "SEQUENTIAL", "LATEST"
    #   resp.stage.auto_participant_recording_configuration.thumbnail_configuration.recording_mode #=> String, one of "INTERVAL", "DISABLED"
    #   resp.stage.auto_participant_recording_configuration.recording_reconnect_window_seconds #=> Integer
    #   resp.stage.auto_participant_recording_configuration.hls_configuration.target_segment_duration_seconds #=> Integer
    #   resp.stage.auto_participant_recording_configuration.record_participant_replicas #=> Boolean
    #   resp.stage.endpoints.events #=> String
    #   resp.stage.endpoints.whip #=> String
    #   resp.stage.endpoints.rtmp #=> String
    #   resp.stage.endpoints.rtmps #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/GetStage AWS API Documentation
    #
    # @overload get_stage(params = {})
    # @param [Hash] params ({})
    def get_stage(params = {}, options = {})
      req = build_request(:get_stage, params)
      req.send_request(options)
    end

    # Gets information for the specified stage session.
    #
    # @option params [required, String] :stage_arn
    #   ARN of the stage for which the information is to be retrieved.
    #
    # @option params [required, String] :session_id
    #   ID of a session within the stage.
    #
    # @return [Types::GetStageSessionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetStageSessionResponse#stage_session #stage_session} => Types::StageSession
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_stage_session({
    #     stage_arn: "StageArn", # required
    #     session_id: "StageSessionId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.stage_session.session_id #=> String
    #   resp.stage_session.start_time #=> Time
    #   resp.stage_session.end_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/GetStageSession AWS API Documentation
    #
    # @overload get_stage_session(params = {})
    # @param [Hash] params ({})
    def get_stage_session(params = {}, options = {})
      req = build_request(:get_stage_session, params)
      req.send_request(options)
    end

    # Gets the storage configuration for the specified ARN.
    #
    # @option params [required, String] :arn
    #   ARN of the storage configuration to be retrieved.
    #
    # @return [Types::GetStorageConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetStorageConfigurationResponse#storage_configuration #storage_configuration} => Types::StorageConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_storage_configuration({
    #     arn: "StorageConfigurationArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.storage_configuration.arn #=> String
    #   resp.storage_configuration.name #=> String
    #   resp.storage_configuration.s3.bucket_name #=> String
    #   resp.storage_configuration.tags #=> Hash
    #   resp.storage_configuration.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/GetStorageConfiguration AWS API Documentation
    #
    # @overload get_storage_configuration(params = {})
    # @param [Hash] params ({})
    def get_storage_configuration(params = {}, options = {})
      req = build_request(:get_storage_configuration, params)
      req.send_request(options)
    end

    # Import a public key to be used for signing stage participant tokens.
    #
    # @option params [required, String] :public_key_material
    #   The content of the public key to be imported.
    #
    # @option params [String] :name
    #   Name of the public key to be imported.
    #
    # @option params [Hash<String,String>] :tags
    #   Tags attached to the resource. Array of maps, each of the form
    #   `string:string (key:value)`. See [Best practices and strategies][1] in
    #   *Tagging AWS Resources and Tag Editor* for details, including
    #   restrictions that apply to tags and "Tag naming limits and
    #   requirements"; Amazon IVS has no constraints on tags beyond what is
    #   documented there.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html
    #
    # @return [Types::ImportPublicKeyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ImportPublicKeyResponse#public_key #public_key} => Types::PublicKey
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.import_public_key({
    #     public_key_material: "PublicKeyMaterial", # required
    #     name: "PublicKeyName",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.public_key.arn #=> String
    #   resp.public_key.name #=> String
    #   resp.public_key.public_key_material #=> String
    #   resp.public_key.fingerprint #=> String
    #   resp.public_key.tags #=> Hash
    #   resp.public_key.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/ImportPublicKey AWS API Documentation
    #
    # @overload import_public_key(params = {})
    # @param [Hash] params ({})
    def import_public_key(params = {}, options = {})
      req = build_request(:import_public_key, params)
      req.send_request(options)
    end

    # Gets summary information about all Compositions in your account, in
    # the AWS region where the API request is processed.
    #
    # @option params [String] :filter_by_stage_arn
    #   Filters the Composition list to match the specified Stage ARN.
    #
    # @option params [String] :filter_by_encoder_configuration_arn
    #   Filters the Composition list to match the specified
    #   EncoderConfiguration attached to at least one of its output.
    #
    # @option params [String] :next_token
    #   The first Composition to retrieve. This is used for pagination; see
    #   the `nextToken` response field.
    #
    # @option params [Integer] :max_results
    #   Maximum number of results to return. Default: 100.
    #
    # @return [Types::ListCompositionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCompositionsResponse#compositions #compositions} => Array&lt;Types::CompositionSummary&gt;
    #   * {Types::ListCompositionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_compositions({
    #     filter_by_stage_arn: "StageArn",
    #     filter_by_encoder_configuration_arn: "EncoderConfigurationArn",
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.compositions #=> Array
    #   resp.compositions[0].arn #=> String
    #   resp.compositions[0].stage_arn #=> String
    #   resp.compositions[0].destinations #=> Array
    #   resp.compositions[0].destinations[0].id #=> String
    #   resp.compositions[0].destinations[0].state #=> String, one of "STARTING", "ACTIVE", "STOPPING", "RECONNECTING", "FAILED", "STOPPED"
    #   resp.compositions[0].destinations[0].start_time #=> Time
    #   resp.compositions[0].destinations[0].end_time #=> Time
    #   resp.compositions[0].state #=> String, one of "STARTING", "ACTIVE", "STOPPING", "FAILED", "STOPPED"
    #   resp.compositions[0].tags #=> Hash
    #   resp.compositions[0].tags["TagKey"] #=> String
    #   resp.compositions[0].start_time #=> Time
    #   resp.compositions[0].end_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/ListCompositions AWS API Documentation
    #
    # @overload list_compositions(params = {})
    # @param [Hash] params ({})
    def list_compositions(params = {}, options = {})
      req = build_request(:list_compositions, params)
      req.send_request(options)
    end

    # Gets summary information about all EncoderConfigurations in your
    # account, in the AWS region where the API request is processed.
    #
    # @option params [String] :next_token
    #   The first encoder configuration to retrieve. This is used for
    #   pagination; see the `nextToken` response field.
    #
    # @option params [Integer] :max_results
    #   Maximum number of results to return. Default: 100.
    #
    # @return [Types::ListEncoderConfigurationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListEncoderConfigurationsResponse#encoder_configurations #encoder_configurations} => Array&lt;Types::EncoderConfigurationSummary&gt;
    #   * {Types::ListEncoderConfigurationsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_encoder_configurations({
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.encoder_configurations #=> Array
    #   resp.encoder_configurations[0].arn #=> String
    #   resp.encoder_configurations[0].name #=> String
    #   resp.encoder_configurations[0].tags #=> Hash
    #   resp.encoder_configurations[0].tags["TagKey"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/ListEncoderConfigurations AWS API Documentation
    #
    # @overload list_encoder_configurations(params = {})
    # @param [Hash] params ({})
    def list_encoder_configurations(params = {}, options = {})
      req = build_request(:list_encoder_configurations, params)
      req.send_request(options)
    end

    # Lists all IngestConfigurations in your account, in the AWS region
    # where the API request is processed.
    #
    # @option params [String] :filter_by_stage_arn
    #   Filters the response list to match the specified stage ARN. Only one
    #   filter (by stage ARN or by state) can be used at a time.
    #
    # @option params [String] :filter_by_state
    #   Filters the response list to match the specified state. Only one
    #   filter (by stage ARN or by state) can be used at a time.
    #
    # @option params [String] :next_token
    #   The first IngestConfiguration to retrieve. This is used for
    #   pagination; see the `nextToken` response field.
    #
    # @option params [Integer] :max_results
    #   Maximum number of results to return. Default: 50.
    #
    # @return [Types::ListIngestConfigurationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListIngestConfigurationsResponse#ingest_configurations #ingest_configurations} => Array&lt;Types::IngestConfigurationSummary&gt;
    #   * {Types::ListIngestConfigurationsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_ingest_configurations({
    #     filter_by_stage_arn: "StageArn",
    #     filter_by_state: "ACTIVE", # accepts ACTIVE, INACTIVE
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.ingest_configurations #=> Array
    #   resp.ingest_configurations[0].name #=> String
    #   resp.ingest_configurations[0].arn #=> String
    #   resp.ingest_configurations[0].ingest_protocol #=> String, one of "RTMP", "RTMPS"
    #   resp.ingest_configurations[0].stage_arn #=> String
    #   resp.ingest_configurations[0].participant_id #=> String
    #   resp.ingest_configurations[0].state #=> String, one of "ACTIVE", "INACTIVE"
    #   resp.ingest_configurations[0].user_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/ListIngestConfigurations AWS API Documentation
    #
    # @overload list_ingest_configurations(params = {})
    # @param [Hash] params ({})
    def list_ingest_configurations(params = {}, options = {})
      req = build_request(:list_ingest_configurations, params)
      req.send_request(options)
    end

    # Lists events for a specified participant that occurred during a
    # specified stage session.
    #
    # @option params [required, String] :stage_arn
    #   Stage ARN.
    #
    # @option params [required, String] :session_id
    #   ID of a session within the stage.
    #
    # @option params [required, String] :participant_id
    #   Unique identifier for this participant. This is assigned by IVS and
    #   returned by CreateParticipantToken.
    #
    # @option params [String] :next_token
    #   The first participant event to retrieve. This is used for pagination;
    #   see the `nextToken` response field.
    #
    # @option params [Integer] :max_results
    #   Maximum number of results to return. Default: 50.
    #
    # @return [Types::ListParticipantEventsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListParticipantEventsResponse#events #events} => Array&lt;Types::Event&gt;
    #   * {Types::ListParticipantEventsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_participant_events({
    #     stage_arn: "StageArn", # required
    #     session_id: "StageSessionId", # required
    #     participant_id: "ParticipantId", # required
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.events #=> Array
    #   resp.events[0].name #=> String, one of "JOINED", "LEFT", "PUBLISH_STARTED", "PUBLISH_STOPPED", "SUBSCRIBE_STARTED", "SUBSCRIBE_STOPPED", "PUBLISH_ERROR", "SUBSCRIBE_ERROR", "JOIN_ERROR", "REPLICATION_STARTED", "REPLICATION_STOPPED"
    #   resp.events[0].participant_id #=> String
    #   resp.events[0].event_time #=> Time
    #   resp.events[0].remote_participant_id #=> String
    #   resp.events[0].error_code #=> String, one of "INSUFFICIENT_CAPABILITIES", "QUOTA_EXCEEDED", "PUBLISHER_NOT_FOUND", "BITRATE_EXCEEDED", "RESOLUTION_EXCEEDED", "STREAM_DURATION_EXCEEDED", "INVALID_AUDIO_CODEC", "INVALID_VIDEO_CODEC", "INVALID_PROTOCOL", "INVALID_STREAM_KEY", "REUSE_OF_STREAM_KEY", "B_FRAME_PRESENT", "INVALID_INPUT", "INTERNAL_SERVER_EXCEPTION"
    #   resp.events[0].destination_stage_arn #=> String
    #   resp.events[0].destination_session_id #=> String
    #   resp.events[0].replica #=> Boolean
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/ListParticipantEvents AWS API Documentation
    #
    # @overload list_participant_events(params = {})
    # @param [Hash] params ({})
    def list_participant_events(params = {}, options = {})
      req = build_request(:list_participant_events, params)
      req.send_request(options)
    end

    # Lists all the replicas for a participant from a source stage.
    #
    # @option params [required, String] :source_stage_arn
    #   ARN of the stage where the participant is publishing.
    #
    # @option params [required, String] :participant_id
    #   Participant ID of the publisher that has been replicated. This is
    #   assigned by IVS and returned by CreateParticipantToken or the `jti`
    #   (JWT ID) used to [create a self signed token][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/ivs/latest/RealTimeUserGuide/getting-started-distribute-tokens.html#getting-started-distribute-tokens-self-signed
    #
    # @option params [String] :next_token
    #   The first participant to retrieve. This is used for pagination; see
    #   the `nextToken` response field.
    #
    # @option params [Integer] :max_results
    #   Maximum number of results to return. Default: 50.
    #
    # @return [Types::ListParticipantReplicasResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListParticipantReplicasResponse#replicas #replicas} => Array&lt;Types::ParticipantReplica&gt;
    #   * {Types::ListParticipantReplicasResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_participant_replicas({
    #     source_stage_arn: "StageArn", # required
    #     participant_id: "ParticipantId", # required
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.replicas #=> Array
    #   resp.replicas[0].source_stage_arn #=> String
    #   resp.replicas[0].participant_id #=> String
    #   resp.replicas[0].source_session_id #=> String
    #   resp.replicas[0].destination_stage_arn #=> String
    #   resp.replicas[0].destination_session_id #=> String
    #   resp.replicas[0].replication_state #=> String, one of "ACTIVE", "STOPPED"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/ListParticipantReplicas AWS API Documentation
    #
    # @overload list_participant_replicas(params = {})
    # @param [Hash] params ({})
    def list_participant_replicas(params = {}, options = {})
      req = build_request(:list_participant_replicas, params)
      req.send_request(options)
    end

    # Lists all participants in a specified stage session.
    #
    # @option params [required, String] :stage_arn
    #   Stage ARN.
    #
    # @option params [required, String] :session_id
    #   ID of the session within the stage.
    #
    # @option params [String] :filter_by_user_id
    #   Filters the response list to match the specified user ID. Only one of
    #   `filterByUserId`, `filterByPublished`, `filterByState`, or
    #   `filterByRecordingState` can be provided per request. A `userId` is a
    #   customer-assigned name to help identify the token; this can be used to
    #   link a participant to a user in the customer’s own systems.
    #
    # @option params [Boolean] :filter_by_published
    #   Filters the response list to only show participants who published
    #   during the stage session. Only one of `filterByUserId`,
    #   `filterByPublished`, `filterByState`, or `filterByRecordingState` can
    #   be provided per request.
    #
    # @option params [String] :filter_by_state
    #   Filters the response list to only show participants in the specified
    #   state. Only one of `filterByUserId`, `filterByPublished`,
    #   `filterByState`, or `filterByRecordingState` can be provided per
    #   request.
    #
    # @option params [String] :next_token
    #   The first participant to retrieve. This is used for pagination; see
    #   the `nextToken` response field.
    #
    # @option params [Integer] :max_results
    #   Maximum number of results to return. Default: 50.
    #
    # @option params [String] :filter_by_recording_state
    #   Filters the response list to only show participants with the specified
    #   recording state. Only one of `filterByUserId`, `filterByPublished`,
    #   `filterByState`, or `filterByRecordingState` can be provided per
    #   request.
    #
    # @return [Types::ListParticipantsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListParticipantsResponse#participants #participants} => Array&lt;Types::ParticipantSummary&gt;
    #   * {Types::ListParticipantsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_participants({
    #     stage_arn: "StageArn", # required
    #     session_id: "StageSessionId", # required
    #     filter_by_user_id: "UserId",
    #     filter_by_published: false,
    #     filter_by_state: "CONNECTED", # accepts CONNECTED, DISCONNECTED
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #     filter_by_recording_state: "STARTING", # accepts STARTING, ACTIVE, STOPPING, STOPPED, FAILED
    #   })
    #
    # @example Response structure
    #
    #   resp.participants #=> Array
    #   resp.participants[0].participant_id #=> String
    #   resp.participants[0].user_id #=> String
    #   resp.participants[0].state #=> String, one of "CONNECTED", "DISCONNECTED"
    #   resp.participants[0].first_join_time #=> Time
    #   resp.participants[0].published #=> Boolean
    #   resp.participants[0].recording_state #=> String, one of "STARTING", "ACTIVE", "STOPPING", "STOPPED", "FAILED", "DISABLED"
    #   resp.participants[0].replication_type #=> String, one of "SOURCE", "REPLICA", "NONE"
    #   resp.participants[0].replication_state #=> String, one of "ACTIVE", "STOPPED"
    #   resp.participants[0].source_stage_arn #=> String
    #   resp.participants[0].source_session_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/ListParticipants AWS API Documentation
    #
    # @overload list_participants(params = {})
    # @param [Hash] params ({})
    def list_participants(params = {}, options = {})
      req = build_request(:list_participants, params)
      req.send_request(options)
    end

    # Gets summary information about all public keys in your account, in the
    # AWS region where the API request is processed.
    #
    # @option params [String] :next_token
    #   The first public key to retrieve. This is used for pagination; see the
    #   `nextToken` response field.
    #
    # @option params [Integer] :max_results
    #   Maximum number of results to return. Default: 50.
    #
    # @return [Types::ListPublicKeysResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPublicKeysResponse#public_keys #public_keys} => Array&lt;Types::PublicKeySummary&gt;
    #   * {Types::ListPublicKeysResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_public_keys({
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.public_keys #=> Array
    #   resp.public_keys[0].arn #=> String
    #   resp.public_keys[0].name #=> String
    #   resp.public_keys[0].tags #=> Hash
    #   resp.public_keys[0].tags["TagKey"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/ListPublicKeys AWS API Documentation
    #
    # @overload list_public_keys(params = {})
    # @param [Hash] params ({})
    def list_public_keys(params = {}, options = {})
      req = build_request(:list_public_keys, params)
      req.send_request(options)
    end

    # Gets all sessions for a specified stage.
    #
    # @option params [required, String] :stage_arn
    #   Stage ARN.
    #
    # @option params [String] :next_token
    #   The first stage session to retrieve. This is used for pagination; see
    #   the `nextToken` response field.
    #
    # @option params [Integer] :max_results
    #   Maximum number of results to return. Default: 50.
    #
    # @return [Types::ListStageSessionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListStageSessionsResponse#stage_sessions #stage_sessions} => Array&lt;Types::StageSessionSummary&gt;
    #   * {Types::ListStageSessionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_stage_sessions({
    #     stage_arn: "StageArn", # required
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.stage_sessions #=> Array
    #   resp.stage_sessions[0].session_id #=> String
    #   resp.stage_sessions[0].start_time #=> Time
    #   resp.stage_sessions[0].end_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/ListStageSessions AWS API Documentation
    #
    # @overload list_stage_sessions(params = {})
    # @param [Hash] params ({})
    def list_stage_sessions(params = {}, options = {})
      req = build_request(:list_stage_sessions, params)
      req.send_request(options)
    end

    # Gets summary information about all stages in your account, in the AWS
    # region where the API request is processed.
    #
    # @option params [String] :next_token
    #   The first stage to retrieve. This is used for pagination; see the
    #   `nextToken` response field.
    #
    # @option params [Integer] :max_results
    #   Maximum number of results to return. Default: 50.
    #
    # @return [Types::ListStagesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListStagesResponse#stages #stages} => Array&lt;Types::StageSummary&gt;
    #   * {Types::ListStagesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_stages({
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.stages #=> Array
    #   resp.stages[0].arn #=> String
    #   resp.stages[0].name #=> String
    #   resp.stages[0].active_session_id #=> String
    #   resp.stages[0].tags #=> Hash
    #   resp.stages[0].tags["TagKey"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/ListStages AWS API Documentation
    #
    # @overload list_stages(params = {})
    # @param [Hash] params ({})
    def list_stages(params = {}, options = {})
      req = build_request(:list_stages, params)
      req.send_request(options)
    end

    # Gets summary information about all storage configurations in your
    # account, in the AWS region where the API request is processed.
    #
    # @option params [String] :next_token
    #   The first storage configuration to retrieve. This is used for
    #   pagination; see the `nextToken` response field.
    #
    # @option params [Integer] :max_results
    #   Maximum number of storage configurations to return. Default: your
    #   service quota or 100, whichever is smaller.
    #
    # @return [Types::ListStorageConfigurationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListStorageConfigurationsResponse#storage_configurations #storage_configurations} => Array&lt;Types::StorageConfigurationSummary&gt;
    #   * {Types::ListStorageConfigurationsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_storage_configurations({
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.storage_configurations #=> Array
    #   resp.storage_configurations[0].arn #=> String
    #   resp.storage_configurations[0].name #=> String
    #   resp.storage_configurations[0].s3.bucket_name #=> String
    #   resp.storage_configurations[0].tags #=> Hash
    #   resp.storage_configurations[0].tags["TagKey"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/ListStorageConfigurations AWS API Documentation
    #
    # @overload list_storage_configurations(params = {})
    # @param [Hash] params ({})
    def list_storage_configurations(params = {}, options = {})
      req = build_request(:list_storage_configurations, params)
      req.send_request(options)
    end

    # Gets information about AWS tags for the specified ARN.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource to be retrieved. The ARN must be URL-encoded.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "ResourceArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Starts a Composition from a stage based on the configuration provided
    # in the request.
    #
    # A Composition is an ephemeral resource that exists after this
    # operation returns successfully. Composition stops and the resource is
    # deleted:
    #
    # * When StopComposition is called.
    #
    # * After a 1-minute timeout, when all participants are disconnected
    #   from the stage.
    #
    # * After a 1-minute timeout, if there are no participants in the stage
    #   when StartComposition is called.
    #
    # * When broadcasting to the IVS channel fails and all retries are
    #   exhausted.
    #
    # * When broadcasting is disconnected and all attempts to reconnect are
    #   exhausted.
    #
    # @option params [required, String] :stage_arn
    #   ARN of the stage to be used for compositing.
    #
    # @option params [String] :idempotency_token
    #   Idempotency token.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Types::LayoutConfiguration] :layout
    #   Layout object to configure composition parameters.
    #
    # @option params [required, Array<Types::DestinationConfiguration>] :destinations
    #   Array of destination configuration.
    #
    # @option params [Hash<String,String>] :tags
    #   Tags attached to the resource. Array of maps, each of the form
    #   `string:string (key:value)`. See [Best practices and strategies][1] in
    #   *Tagging AWS Resources and Tag Editor* for details, including
    #   restrictions that apply to tags and "Tag naming limits and
    #   requirements"; Amazon IVS has no constraints on tags beyond what is
    #   documented there.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html
    #
    # @return [Types::StartCompositionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartCompositionResponse#composition #composition} => Types::Composition
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_composition({
    #     stage_arn: "StageArn", # required
    #     idempotency_token: "CompositionClientToken",
    #     layout: {
    #       grid: {
    #         featured_participant_attribute: "AttributeKey",
    #         omit_stopped_video: false,
    #         video_aspect_ratio: "AUTO", # accepts AUTO, VIDEO, SQUARE, PORTRAIT
    #         video_fill_mode: "FILL", # accepts FILL, COVER, CONTAIN
    #         grid_gap: 1,
    #         participant_order_attribute: "AttributeKey",
    #       },
    #       pip: {
    #         featured_participant_attribute: "AttributeKey",
    #         omit_stopped_video: false,
    #         video_fill_mode: "FILL", # accepts FILL, COVER, CONTAIN
    #         grid_gap: 1,
    #         pip_participant_attribute: "AttributeKey",
    #         pip_behavior: "STATIC", # accepts STATIC, DYNAMIC
    #         pip_offset: 1,
    #         pip_position: "TOP_LEFT", # accepts TOP_LEFT, TOP_RIGHT, BOTTOM_LEFT, BOTTOM_RIGHT
    #         pip_width: 1,
    #         pip_height: 1,
    #         participant_order_attribute: "AttributeKey",
    #       },
    #     },
    #     destinations: [ # required
    #       {
    #         name: "DestinationConfigurationName",
    #         channel: {
    #           channel_arn: "ChannelArn", # required
    #           encoder_configuration_arn: "EncoderConfigurationArn",
    #         },
    #         s3: {
    #           storage_configuration_arn: "StorageConfigurationArn", # required
    #           encoder_configuration_arns: ["EncoderConfigurationArn"], # required
    #           recording_configuration: {
    #             hls_configuration: {
    #               target_segment_duration_seconds: 1,
    #             },
    #             format: "HLS", # accepts HLS
    #           },
    #           thumbnail_configurations: [
    #             {
    #               target_interval_seconds: 1,
    #               storage: ["SEQUENTIAL"], # accepts SEQUENTIAL, LATEST
    #             },
    #           ],
    #         },
    #       },
    #     ],
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.composition.arn #=> String
    #   resp.composition.stage_arn #=> String
    #   resp.composition.state #=> String, one of "STARTING", "ACTIVE", "STOPPING", "FAILED", "STOPPED"
    #   resp.composition.layout.grid.featured_participant_attribute #=> String
    #   resp.composition.layout.grid.omit_stopped_video #=> Boolean
    #   resp.composition.layout.grid.video_aspect_ratio #=> String, one of "AUTO", "VIDEO", "SQUARE", "PORTRAIT"
    #   resp.composition.layout.grid.video_fill_mode #=> String, one of "FILL", "COVER", "CONTAIN"
    #   resp.composition.layout.grid.grid_gap #=> Integer
    #   resp.composition.layout.grid.participant_order_attribute #=> String
    #   resp.composition.layout.pip.featured_participant_attribute #=> String
    #   resp.composition.layout.pip.omit_stopped_video #=> Boolean
    #   resp.composition.layout.pip.video_fill_mode #=> String, one of "FILL", "COVER", "CONTAIN"
    #   resp.composition.layout.pip.grid_gap #=> Integer
    #   resp.composition.layout.pip.pip_participant_attribute #=> String
    #   resp.composition.layout.pip.pip_behavior #=> String, one of "STATIC", "DYNAMIC"
    #   resp.composition.layout.pip.pip_offset #=> Integer
    #   resp.composition.layout.pip.pip_position #=> String, one of "TOP_LEFT", "TOP_RIGHT", "BOTTOM_LEFT", "BOTTOM_RIGHT"
    #   resp.composition.layout.pip.pip_width #=> Integer
    #   resp.composition.layout.pip.pip_height #=> Integer
    #   resp.composition.layout.pip.participant_order_attribute #=> String
    #   resp.composition.destinations #=> Array
    #   resp.composition.destinations[0].id #=> String
    #   resp.composition.destinations[0].state #=> String, one of "STARTING", "ACTIVE", "STOPPING", "RECONNECTING", "FAILED", "STOPPED"
    #   resp.composition.destinations[0].start_time #=> Time
    #   resp.composition.destinations[0].end_time #=> Time
    #   resp.composition.destinations[0].configuration.name #=> String
    #   resp.composition.destinations[0].configuration.channel.channel_arn #=> String
    #   resp.composition.destinations[0].configuration.channel.encoder_configuration_arn #=> String
    #   resp.composition.destinations[0].configuration.s3.storage_configuration_arn #=> String
    #   resp.composition.destinations[0].configuration.s3.encoder_configuration_arns #=> Array
    #   resp.composition.destinations[0].configuration.s3.encoder_configuration_arns[0] #=> String
    #   resp.composition.destinations[0].configuration.s3.recording_configuration.hls_configuration.target_segment_duration_seconds #=> Integer
    #   resp.composition.destinations[0].configuration.s3.recording_configuration.format #=> String, one of "HLS"
    #   resp.composition.destinations[0].configuration.s3.thumbnail_configurations #=> Array
    #   resp.composition.destinations[0].configuration.s3.thumbnail_configurations[0].target_interval_seconds #=> Integer
    #   resp.composition.destinations[0].configuration.s3.thumbnail_configurations[0].storage #=> Array
    #   resp.composition.destinations[0].configuration.s3.thumbnail_configurations[0].storage[0] #=> String, one of "SEQUENTIAL", "LATEST"
    #   resp.composition.destinations[0].detail.s3.recording_prefix #=> String
    #   resp.composition.tags #=> Hash
    #   resp.composition.tags["TagKey"] #=> String
    #   resp.composition.start_time #=> Time
    #   resp.composition.end_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/StartComposition AWS API Documentation
    #
    # @overload start_composition(params = {})
    # @param [Hash] params ({})
    def start_composition(params = {}, options = {})
      req = build_request(:start_composition, params)
      req.send_request(options)
    end

    # Starts replicating a publishing participant from a source stage to a
    # destination stage.
    #
    # @option params [required, String] :source_stage_arn
    #   ARN of the stage where the participant is publishing.
    #
    # @option params [required, String] :destination_stage_arn
    #   ARN of the stage to which the participant will be replicated.
    #
    # @option params [required, String] :participant_id
    #   Participant ID of the publisher that will be replicated. This is
    #   assigned by IVS and returned by CreateParticipantToken or the `jti`
    #   (JWT ID) used to [create a self signed token][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/ivs/latest/RealTimeUserGuide/getting-started-distribute-tokens.html#getting-started-distribute-tokens-self-signed
    #
    # @option params [Integer] :reconnect_window_seconds
    #   If the participant disconnects and then reconnects within the
    #   specified interval, replication will continue to be `ACTIVE`. Default:
    #   0.
    #
    # @option params [Hash<String,String>] :attributes
    #   Application-provided attributes to set on the replicated participant
    #   in the destination stage. Map keys and values can contain UTF-8
    #   encoded text. The maximum length of this field is 1 KB total. *This
    #   field is exposed to all stage participants and should not be used for
    #   personally identifying, confidential, or sensitive information.*
    #
    #   These attributes are merged with any attributes set for this
    #   participant when creating the token. If there is overlap in keys, the
    #   values in these attributes are replaced.
    #
    # @return [Types::StartParticipantReplicationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartParticipantReplicationResponse#access_control_allow_origin #access_control_allow_origin} => String
    #   * {Types::StartParticipantReplicationResponse#access_control_expose_headers #access_control_expose_headers} => String
    #   * {Types::StartParticipantReplicationResponse#cache_control #cache_control} => String
    #   * {Types::StartParticipantReplicationResponse#content_security_policy #content_security_policy} => String
    #   * {Types::StartParticipantReplicationResponse#strict_transport_security #strict_transport_security} => String
    #   * {Types::StartParticipantReplicationResponse#x_content_type_options #x_content_type_options} => String
    #   * {Types::StartParticipantReplicationResponse#x_frame_options #x_frame_options} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_participant_replication({
    #     source_stage_arn: "StageArn", # required
    #     destination_stage_arn: "StageArn", # required
    #     participant_id: "ParticipantId", # required
    #     reconnect_window_seconds: 1,
    #     attributes: {
    #       "String" => "String",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.access_control_allow_origin #=> String
    #   resp.access_control_expose_headers #=> String
    #   resp.cache_control #=> String
    #   resp.content_security_policy #=> String
    #   resp.strict_transport_security #=> String
    #   resp.x_content_type_options #=> String
    #   resp.x_frame_options #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/StartParticipantReplication AWS API Documentation
    #
    # @overload start_participant_replication(params = {})
    # @param [Hash] params ({})
    def start_participant_replication(params = {}, options = {})
      req = build_request(:start_participant_replication, params)
      req.send_request(options)
    end

    # Stops and deletes a Composition resource. Any broadcast from the
    # Composition resource is stopped.
    #
    # @option params [required, String] :arn
    #   ARN of the Composition.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_composition({
    #     arn: "CompositionArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/StopComposition AWS API Documentation
    #
    # @overload stop_composition(params = {})
    # @param [Hash] params ({})
    def stop_composition(params = {}, options = {})
      req = build_request(:stop_composition, params)
      req.send_request(options)
    end

    # Stops a replicated participant session.
    #
    # @option params [required, String] :source_stage_arn
    #   ARN of the stage where the participant is publishing.
    #
    # @option params [required, String] :destination_stage_arn
    #   ARN of the stage where the participant has been replicated.
    #
    # @option params [required, String] :participant_id
    #   Participant ID of the publisher that has been replicated. This is
    #   assigned by IVS and returned by CreateParticipantToken or the `jti`
    #   (JWT ID) used to [ create a self signed token][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/ivs/latest/RealTimeUserGuide/getting-started-distribute-tokens.html#getting-started-distribute-tokens-self-signed
    #
    # @return [Types::StopParticipantReplicationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StopParticipantReplicationResponse#access_control_allow_origin #access_control_allow_origin} => String
    #   * {Types::StopParticipantReplicationResponse#access_control_expose_headers #access_control_expose_headers} => String
    #   * {Types::StopParticipantReplicationResponse#cache_control #cache_control} => String
    #   * {Types::StopParticipantReplicationResponse#content_security_policy #content_security_policy} => String
    #   * {Types::StopParticipantReplicationResponse#strict_transport_security #strict_transport_security} => String
    #   * {Types::StopParticipantReplicationResponse#x_content_type_options #x_content_type_options} => String
    #   * {Types::StopParticipantReplicationResponse#x_frame_options #x_frame_options} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_participant_replication({
    #     source_stage_arn: "StageArn", # required
    #     destination_stage_arn: "StageArn", # required
    #     participant_id: "ParticipantId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.access_control_allow_origin #=> String
    #   resp.access_control_expose_headers #=> String
    #   resp.cache_control #=> String
    #   resp.content_security_policy #=> String
    #   resp.strict_transport_security #=> String
    #   resp.x_content_type_options #=> String
    #   resp.x_frame_options #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/StopParticipantReplication AWS API Documentation
    #
    # @overload stop_participant_replication(params = {})
    # @param [Hash] params ({})
    def stop_participant_replication(params = {}, options = {})
      req = build_request(:stop_participant_replication, params)
      req.send_request(options)
    end

    # Adds or updates tags for the AWS resource with the specified ARN.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource to be tagged. The ARN must be URL-encoded.
    #
    # @option params [required, Hash<String,String>] :tags
    #   Array of tags to be added or updated. Array of maps, each of the form
    #   `string:string (key:value)`. See [Best practices and strategies][1] in
    #   *Tagging AWS Resources and Tag Editor* for details, including
    #   restrictions that apply to tags and "Tag naming limits and
    #   requirements"; Amazon IVS has no constraints on tags beyond what is
    #   documented there.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "ResourceArn", # required
    #     tags: { # required
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes tags from the resource with the specified ARN.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource to be untagged. The ARN must be URL-encoded.
    #
    # @option params [required, Array<String>] :tag_keys
    #   Array of tag keys (strings) for the tags to be removed. See [Best
    #   practices and strategies][1] in *Tagging AWS Resources and Tag Editor*
    #   for details, including restrictions that apply to tags and "Tag
    #   naming limits and requirements"; Amazon IVS has no constraints on
    #   tags beyond what is documented there.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "ResourceArn", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates a specified IngestConfiguration. Only the stage ARN attached
    # to the IngestConfiguration can be updated. An IngestConfiguration that
    # is active cannot be updated.
    #
    # @option params [required, String] :arn
    #   ARN of the IngestConfiguration, for which the related stage ARN needs
    #   to be updated.
    #
    # @option params [String] :stage_arn
    #   Stage ARN that needs to be updated.
    #
    # @return [Types::UpdateIngestConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateIngestConfigurationResponse#ingest_configuration #ingest_configuration} => Types::IngestConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_ingest_configuration({
    #     arn: "IngestConfigurationArn", # required
    #     stage_arn: "IngestConfigurationStageArn",
    #   })
    #
    # @example Response structure
    #
    #   resp.ingest_configuration.name #=> String
    #   resp.ingest_configuration.arn #=> String
    #   resp.ingest_configuration.ingest_protocol #=> String, one of "RTMP", "RTMPS"
    #   resp.ingest_configuration.stream_key #=> String
    #   resp.ingest_configuration.stage_arn #=> String
    #   resp.ingest_configuration.participant_id #=> String
    #   resp.ingest_configuration.state #=> String, one of "ACTIVE", "INACTIVE"
    #   resp.ingest_configuration.user_id #=> String
    #   resp.ingest_configuration.attributes #=> Hash
    #   resp.ingest_configuration.attributes["String"] #=> String
    #   resp.ingest_configuration.tags #=> Hash
    #   resp.ingest_configuration.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/UpdateIngestConfiguration AWS API Documentation
    #
    # @overload update_ingest_configuration(params = {})
    # @param [Hash] params ({})
    def update_ingest_configuration(params = {}, options = {})
      req = build_request(:update_ingest_configuration, params)
      req.send_request(options)
    end

    # Updates a stage’s configuration.
    #
    # @option params [required, String] :arn
    #   ARN of the stage to be updated.
    #
    # @option params [String] :name
    #   Name of the stage to be updated.
    #
    # @option params [Types::AutoParticipantRecordingConfiguration] :auto_participant_recording_configuration
    #   Configuration object for individual participant recording, to attach
    #   to the stage. Note that this cannot be updated while recording is
    #   active.
    #
    # @return [Types::UpdateStageResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateStageResponse#stage #stage} => Types::Stage
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_stage({
    #     arn: "StageArn", # required
    #     name: "StageName",
    #     auto_participant_recording_configuration: {
    #       storage_configuration_arn: "AutoParticipantRecordingStorageConfigurationArn", # required
    #       media_types: ["AUDIO_VIDEO"], # accepts AUDIO_VIDEO, AUDIO_ONLY, NONE
    #       thumbnail_configuration: {
    #         target_interval_seconds: 1,
    #         storage: ["SEQUENTIAL"], # accepts SEQUENTIAL, LATEST
    #         recording_mode: "INTERVAL", # accepts INTERVAL, DISABLED
    #       },
    #       recording_reconnect_window_seconds: 1,
    #       hls_configuration: {
    #         target_segment_duration_seconds: 1,
    #       },
    #       record_participant_replicas: false,
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.stage.arn #=> String
    #   resp.stage.name #=> String
    #   resp.stage.active_session_id #=> String
    #   resp.stage.tags #=> Hash
    #   resp.stage.tags["TagKey"] #=> String
    #   resp.stage.auto_participant_recording_configuration.storage_configuration_arn #=> String
    #   resp.stage.auto_participant_recording_configuration.media_types #=> Array
    #   resp.stage.auto_participant_recording_configuration.media_types[0] #=> String, one of "AUDIO_VIDEO", "AUDIO_ONLY", "NONE"
    #   resp.stage.auto_participant_recording_configuration.thumbnail_configuration.target_interval_seconds #=> Integer
    #   resp.stage.auto_participant_recording_configuration.thumbnail_configuration.storage #=> Array
    #   resp.stage.auto_participant_recording_configuration.thumbnail_configuration.storage[0] #=> String, one of "SEQUENTIAL", "LATEST"
    #   resp.stage.auto_participant_recording_configuration.thumbnail_configuration.recording_mode #=> String, one of "INTERVAL", "DISABLED"
    #   resp.stage.auto_participant_recording_configuration.recording_reconnect_window_seconds #=> Integer
    #   resp.stage.auto_participant_recording_configuration.hls_configuration.target_segment_duration_seconds #=> Integer
    #   resp.stage.auto_participant_recording_configuration.record_participant_replicas #=> Boolean
    #   resp.stage.endpoints.events #=> String
    #   resp.stage.endpoints.whip #=> String
    #   resp.stage.endpoints.rtmp #=> String
    #   resp.stage.endpoints.rtmps #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/UpdateStage AWS API Documentation
    #
    # @overload update_stage(params = {})
    # @param [Hash] params ({})
    def update_stage(params = {}, options = {})
      req = build_request(:update_stage, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::IVSRealTime')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-ivsrealtime'
      context[:gem_version] = '1.50.0'
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
