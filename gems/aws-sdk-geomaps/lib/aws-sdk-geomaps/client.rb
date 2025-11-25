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

module Aws::GeoMaps
  # An API client for GeoMaps.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::GeoMaps::Client.new(
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

    @identifier = :geomaps

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
    add_plugin(Aws::GeoMaps::Plugins::Endpoints)

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
    #   @option options [Aws::GeoMaps::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::GeoMaps::EndpointParameters`.
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

    # `GetGlyphs` returns the map's glyphs.
    #
    # For more information, see [Style labels with glyphs][1] in the *Amazon
    # Location Service Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/location/latest/developerguide/styling-labels-with-glyphs.html
    #
    # @option params [required, String] :font_stack
    #   Name of the `FontStack` to retrieve.
    #
    #   Example: `Amazon Ember Bold,Noto Sans Bold`.
    #
    #   The supported font stacks are as follows:
    #
    #   * Amazon Ember Bold
    #
    #   * Amazon Ember Bold Italic
    #
    #   * Amazon Ember Bold,Noto Sans Bold
    #
    #   * Amazon Ember Bold,Noto Sans Bold,Noto Sans Arabic Bold
    #
    #   * Amazon Ember Condensed RC BdItalic
    #
    #   * Amazon Ember Condensed RC Bold
    #
    #   * Amazon Ember Condensed RC Bold Italic
    #
    #   * Amazon Ember Condensed RC Bold,Noto Sans Bold
    #
    #   * Amazon Ember Condensed RC Bold,Noto Sans Bold,Noto Sans Arabic
    #     Condensed Bold
    #
    #   * Amazon Ember Condensed RC Light
    #
    #   * Amazon Ember Condensed RC Light Italic
    #
    #   * Amazon Ember Condensed RC LtItalic
    #
    #   * Amazon Ember Condensed RC Regular
    #
    #   * Amazon Ember Condensed RC Regular Italic
    #
    #   * Amazon Ember Condensed RC Regular,Noto Sans Regular
    #
    #   * Amazon Ember Condensed RC Regular,Noto Sans Regular,Noto Sans Arabic
    #     Condensed Regular
    #
    #   * Amazon Ember Condensed RC RgItalic
    #
    #   * Amazon Ember Condensed RC ThItalic
    #
    #   * Amazon Ember Condensed RC Thin
    #
    #   * Amazon Ember Condensed RC Thin Italic
    #
    #   * Amazon Ember Heavy
    #
    #   * Amazon Ember Heavy Italic
    #
    #   * Amazon Ember Light
    #
    #   * Amazon Ember Light Italic
    #
    #   * Amazon Ember Medium
    #
    #   * Amazon Ember Medium Italic
    #
    #   * Amazon Ember Medium,Noto Sans Medium
    #
    #   * Amazon Ember Medium,Noto Sans Medium,Noto Sans Arabic Medium
    #
    #   * Amazon Ember Regular
    #
    #   * Amazon Ember Regular Italic
    #
    #   * Amazon Ember Regular Italic,Noto Sans Italic
    #
    #   * Amazon Ember Regular Italic,Noto Sans Italic,Noto Sans Arabic
    #     Regular
    #
    #   * Amazon Ember Regular,Noto Sans Regular
    #
    #   * Amazon Ember Regular,Noto Sans Regular,Noto Sans Arabic Regular
    #
    #   * Amazon Ember Thin
    #
    #   * Amazon Ember Thin Italic
    #
    #   * AmazonEmberCdRC\_Bd
    #
    #   * AmazonEmberCdRC\_BdIt
    #
    #   * AmazonEmberCdRC\_Lt
    #
    #   * AmazonEmberCdRC\_LtIt
    #
    #   * AmazonEmberCdRC\_Rg
    #
    #   * AmazonEmberCdRC\_RgIt
    #
    #   * AmazonEmberCdRC\_Th
    #
    #   * AmazonEmberCdRC\_ThIt
    #
    #   * AmazonEmber\_Bd
    #
    #   * AmazonEmber\_BdIt
    #
    #   * AmazonEmber\_He
    #
    #   * AmazonEmber\_HeIt
    #
    #   * AmazonEmber\_Lt
    #
    #   * AmazonEmber\_LtIt
    #
    #   * AmazonEmber\_Md
    #
    #   * AmazonEmber\_MdIt
    #
    #   * AmazonEmber\_Rg
    #
    #   * AmazonEmber\_RgIt
    #
    #   * AmazonEmber\_Th
    #
    #   * AmazonEmber\_ThIt
    #
    #   * Noto Sans Black
    #
    #   * Noto Sans Black Italic
    #
    #   * Noto Sans Bold
    #
    #   * Noto Sans Bold Italic
    #
    #   * Noto Sans Extra Bold
    #
    #   * Noto Sans Extra Bold Italic
    #
    #   * Noto Sans Extra Light
    #
    #   * Noto Sans Extra Light Italic
    #
    #   * Noto Sans Italic
    #
    #   * Noto Sans Light
    #
    #   * Noto Sans Light Italic
    #
    #   * Noto Sans Medium
    #
    #   * Noto Sans Medium Italic
    #
    #   * Noto Sans Regular
    #
    #   * Noto Sans Semi Bold
    #
    #   * Noto Sans Semi Bold Italic
    #
    #   * Noto Sans Thin
    #
    #   * Noto Sans Thin Italic
    #
    #   * NotoSans-Bold
    #
    #   * NotoSans-Italic
    #
    #   * NotoSans-Medium
    #
    #   * NotoSans-Regular
    #
    #   * Open Sans Regular,Arial Unicode MS Regular
    #
    # @option params [required, String] :font_unicode_range
    #   A Unicode range of characters to download glyphs for. This must be
    #   aligned to multiples of 256.
    #
    #   Example: `0-255.pbf`
    #
    # @return [Types::GetGlyphsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetGlyphsResponse#blob #blob} => IO
    #   * {Types::GetGlyphsResponse#content_type #content_type} => String
    #   * {Types::GetGlyphsResponse#cache_control #cache_control} => String
    #   * {Types::GetGlyphsResponse#etag #etag} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_glyphs({
    #     font_stack: "GetGlyphsRequestFontStackString", # required
    #     font_unicode_range: "GetGlyphsRequestFontUnicodeRangeString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.blob #=> IO
    #   resp.content_type #=> String
    #   resp.cache_control #=> String
    #   resp.etag #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-maps-2020-11-19/GetGlyphs AWS API Documentation
    #
    # @overload get_glyphs(params = {})
    # @param [Hash] params ({})
    def get_glyphs(params = {}, options = {}, &block)
      req = build_request(:get_glyphs, params)
      req.send_request(options, &block)
    end

    # `GetSprites` returns the map's sprites.
    #
    # For more information, see [Style iconography with sprites][1] in the
    # *Amazon Location Service Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/location/latest/developerguide/styling-iconography-with-sprites.html
    #
    # @option params [required, String] :file_name
    #   `Sprites` API: The name of the sprite ﬁle to retrieve, following
    #   pattern `sprites(@2x)?\.(png|json)`.
    #
    #   Example: `sprites.png`
    #
    # @option params [required, String] :style
    #   Style specifies the desired map style for the `Sprites` APIs.
    #
    # @option params [required, String] :color_scheme
    #   Sets color tone for map such as dark and light for specific map
    #   styles. It applies to only vector map styles such as Standard and
    #   Monochrome.
    #
    #   Example: `Light`
    #
    #   Default value: `Light`
    #
    #   <note markdown="1"> Valid values for ColorScheme are case sensitive.
    #
    #    </note>
    #
    # @option params [required, String] :variant
    #   Optimizes map styles for specific use case or industry. You can choose
    #   allowed variant only with Standard map style.
    #
    #   Example: `Default`
    #
    #   <note markdown="1"> Valid values for Variant are case sensitive.
    #
    #    </note>
    #
    # @return [Types::GetSpritesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSpritesResponse#blob #blob} => IO
    #   * {Types::GetSpritesResponse#content_type #content_type} => String
    #   * {Types::GetSpritesResponse#cache_control #cache_control} => String
    #   * {Types::GetSpritesResponse#etag #etag} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_sprites({
    #     file_name: "GetSpritesRequestFileNameString", # required
    #     style: "Standard", # required, accepts Standard, Monochrome, Hybrid, Satellite
    #     color_scheme: "Light", # required, accepts Light, Dark
    #     variant: "Default", # required, accepts Default
    #   })
    #
    # @example Response structure
    #
    #   resp.blob #=> IO
    #   resp.content_type #=> String
    #   resp.cache_control #=> String
    #   resp.etag #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-maps-2020-11-19/GetSprites AWS API Documentation
    #
    # @overload get_sprites(params = {})
    # @param [Hash] params ({})
    def get_sprites(params = {}, options = {}, &block)
      req = build_request(:get_sprites, params)
      req.send_request(options, &block)
    end

    # `GetStaticMap` provides high-quality static map images with
    # customizable options. You can modify the map's appearance and overlay
    # additional information. It's an ideal solution for applications
    # requiring tailored static map snapshots.
    #
    # For more information, see the following topics in the *Amazon Location
    # Service Developer Guide*:
    #
    # * [Static maps][1]
    #
    # * [Customize static maps][2]
    #
    # * [Overlay on the static map][3]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/location/latest/developerguide/static-maps.html
    # [2]: https://docs.aws.amazon.com/location/latest/developerguide/customizing-static-maps.html
    # [3]: https://docs.aws.amazon.com/location/latest/developerguide/overlaying-static-map.html
    #
    # @option params [String] :bounding_box
    #   Takes in two pairs of coordinates in World Geodetic System (WGS 84)
    #   format: \[longitude, latitude\], denoting south-westerly and
    #   north-easterly edges of the image. The underlying area becomes the
    #   view of the image.
    #
    #   Example: -123.17075,49.26959,-123.08125,49.31429
    #
    # @option params [String] :bounded_positions
    #   Takes in two or more pair of coordinates in World Geodetic System (WGS
    #   84) format: \[longitude, latitude\], with each coordinate separated by
    #   a comma. The API will generate an image to encompass all of the
    #   provided coordinates.
    #
    #   <note markdown="1"> Cannot be used with `Zoom` and or `Radius`
    #
    #    </note>
    #
    #   Example: 97.170451,78.039098,99.045536,27.176178
    #
    # @option params [String] :center
    #   Takes in a pair of coordinates in World Geodetic System (WGS 84)
    #   format: \[longitude, latitude\], which becomes the center point of the
    #   image. This parameter requires that either zoom or radius is set.
    #
    #   <note markdown="1"> Cannot be used with `Zoom` and or `Radius`
    #
    #    </note>
    #
    #   Example: 49.295,-123.108
    #
    # @option params [String] :color_scheme
    #   Sets color tone for map, such as dark and light for specific map
    #   styles. It only applies to vector map styles, such as Standard.
    #
    #   Example: `Light`
    #
    #   Default value: `Light`
    #
    #   <note markdown="1"> Valid values for `ColorScheme` are case sensitive.
    #
    #    </note>
    #
    # @option params [String] :compact_overlay
    #   Takes in a string to draw geometries on the image. The input is a
    #   comma separated format as follows format: `[Lon, Lat]`
    #
    #   Example:
    #   `line:-122.407653,37.798557,-122.413291,37.802443;color=%23DD0000;width=7;outline-color=#00DD00;outline-width=5yd|point:-122.40572,37.80004;label=Fog
    #   Hill Market;size=large;text-color=%23DD0000;color=#EE4B2B`
    #
    #   <note markdown="1"> Currently it supports the following geometry types: point, line and
    #   polygon. It does not support multiPoint , multiLine and multiPolgyon.
    #
    #    </note>
    #
    # @option params [Boolean] :crop_labels
    #   It is a flag that takes in true or false. It prevents the labels that
    #   are on the edge of the image from being cut or obscured.
    #
    # @option params [String] :geo_json_overlay
    #   Takes in a string to draw geometries on the image. The input is a
    #   valid GeoJSON collection object.
    #
    #   Example: `{"type":"FeatureCollection","features":
    #   [{"type":"Feature","geometry":{"type":"MultiPoint","coordinates":
    #   [[-90.076345,51.504107],[-0.074451,51.506892]]},"properties":
    #   {"color":"#00DD00"}}]}`
    #
    # @option params [required, Integer] :height
    #   Specifies the height of the map image.
    #
    # @option params [String] :key
    #   Optional: The API key to be used for authorization. Either an API key
    #   or valid SigV4 signature must be provided when making a request.
    #
    # @option params [String] :label_size
    #   Overrides the label size auto-calculated by `FileName`. Takes in one
    #   of the values - `Small` or `Large`.
    #
    # @option params [String] :language
    #   Specifies the language on the map labels using the BCP 47 language
    #   tag, limited to ISO 639-1 two-letter language codes. If the specified
    #   language data isn't available for the map image, the labels will
    #   default to the regional primary language.
    #
    #   Supported codes:
    #
    #   * `ar`
    #
    #   * `as`
    #
    #   * `az`
    #
    #   * `be`
    #
    #   * `bg`
    #
    #   * `bn`
    #
    #   * `bs`
    #
    #   * `ca`
    #
    #   * `cs`
    #
    #   * `cy`
    #
    #   * `da`
    #
    #   * `de`
    #
    #   * `el`
    #
    #   * `en`
    #
    #   * `es`
    #
    #   * `et`
    #
    #   * `eu`
    #
    #   * `fi`
    #
    #   * `fo`
    #
    #   * `fr`
    #
    #   * `ga`
    #
    #   * `gl`
    #
    #   * `gn`
    #
    #   * `gu`
    #
    #   * `he`
    #
    #   * `hi`
    #
    #   * `hr`
    #
    #   * `hu`
    #
    #   * `hy`
    #
    #   * `id`
    #
    #   * `is`
    #
    #   * `it`
    #
    #   * `ja`
    #
    #   * `ka`
    #
    #   * `kk`
    #
    #   * `km`
    #
    #   * `kn`
    #
    #   * `ko`
    #
    #   * `ky`
    #
    #   * `lt`
    #
    #   * `lv`
    #
    #   * `mk`
    #
    #   * `ml`
    #
    #   * `mr`
    #
    #   * `ms`
    #
    #   * `mt`
    #
    #   * `my`
    #
    #   * `nl`
    #
    #   * `no`
    #
    #   * `or`
    #
    #   * `pa`
    #
    #   * `pl`
    #
    #   * `pt`
    #
    #   * `ro`
    #
    #   * `ru`
    #
    #   * `sk`
    #
    #   * `sl`
    #
    #   * `sq`
    #
    #   * `sr`
    #
    #   * `sv`
    #
    #   * `ta`
    #
    #   * `te`
    #
    #   * `th`
    #
    #   * `tr`
    #
    #   * `uk`
    #
    #   * `uz`
    #
    #   * `vi`
    #
    #   * `zh`
    #
    # @option params [Integer] :padding
    #   Applies additional space (in pixels) around overlay feature to prevent
    #   them from being cut or obscured.
    #
    #   <note markdown="1"> Value for max and min is determined by:
    #
    #    Min: `1`
    #
    #    Max: `min(height, width)/4`
    #
    #    </note>
    #
    #   Example: `100`
    #
    # @option params [String] :political_view
    #   Specifies the political view, using ISO 3166-2 or ISO 3166-3 country
    #   code format.
    #
    #   The following political views are currently supported:
    #
    #   * `ARG`: Argentina's view on the Southern Patagonian Ice Field and
    #     Tierra Del Fuego, including the Falkland Islands, South Georgia, and
    #     South Sandwich Islands
    #
    #   * `EGY`: Egypt's view on Bir Tawil
    #
    #   * `IND`: India's view on Gilgit-Baltistan
    #
    #   * `KEN`: Kenya's view on the Ilemi Triangle
    #
    #   * `MAR`: Morocco's view on Western Sahara
    #
    #   * `RUS`: Russia's view on Crimea
    #
    #   * `SDN`: Sudan's view on the Halaib Triangle
    #
    #   * `SRB`: Serbia's view on Kosovo, Vukovar, and Sarengrad Islands
    #
    #   * `SUR`: Suriname's view on the Courantyne Headwaters and Lawa
    #     Headwaters
    #
    #   * `SYR`: Syria's view on the Golan Heights
    #
    #   * `TUR`: Turkey's view on Cyprus and Northern Cyprus
    #
    #   * `TZA`: Tanzania's view on Lake Malawi
    #
    #   * `URY`: Uruguay's view on Rincon de Artigas
    #
    #   * `VNM`: Vietnam's view on the Paracel Islands and Spratly Islands
    #
    # @option params [String] :points_of_interests
    #   Determines if the result image will display icons representing points
    #   of interest on the map.
    #
    # @option params [Integer] :radius
    #   Used with center parameter, it specifies the zoom of the image where
    #   you can control it on a granular level. Takes in any value `>= 1`.
    #
    #   Example: `1500`
    #
    #   <note markdown="1"> Cannot be used with `Zoom`.
    #
    #    </note>
    #
    #   **Unit**: `Meters`
    #
    # @option params [required, String] :file_name
    #   The map scaling parameter to size the image, icons, and labels. It
    #   follows the pattern of `^map(@2x)?$`.
    #
    #   Example: `map, map@2x`
    #
    # @option params [String] :scale_bar_unit
    #   Displays a scale on the bottom right of the map image with the unit
    #   specified in the input.
    #
    #   Example: `KilometersMiles, Miles, Kilometers, MilesKilometers`
    #
    # @option params [String] :style
    #   `Style` specifies the desired map style.
    #
    # @option params [required, Integer] :width
    #   Specifies the width of the map image.
    #
    # @option params [Float] :zoom
    #   Specifies the zoom level of the map image.
    #
    #   <note markdown="1"> Cannot be used with `Radius`.
    #
    #    </note>
    #
    # @return [Types::GetStaticMapResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetStaticMapResponse#blob #blob} => IO
    #   * {Types::GetStaticMapResponse#content_type #content_type} => String
    #   * {Types::GetStaticMapResponse#cache_control #cache_control} => String
    #   * {Types::GetStaticMapResponse#etag #etag} => String
    #   * {Types::GetStaticMapResponse#pricing_bucket #pricing_bucket} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_static_map({
    #     bounding_box: "GetStaticMapRequestBoundingBoxString",
    #     bounded_positions: "GetStaticMapRequestBoundedPositionsString",
    #     center: "PositionString",
    #     color_scheme: "Light", # accepts Light, Dark
    #     compact_overlay: "CompactOverlay",
    #     crop_labels: false,
    #     geo_json_overlay: "GeoJsonOverlay",
    #     height: 1, # required
    #     key: "ApiKey",
    #     label_size: "Small", # accepts Small, Large
    #     language: "LanguageTag",
    #     padding: 1,
    #     political_view: "CountryCode",
    #     points_of_interests: "Enabled", # accepts Enabled, Disabled
    #     radius: 1,
    #     file_name: "GetStaticMapRequestFileNameString", # required
    #     scale_bar_unit: "Kilometers", # accepts Kilometers, KilometersMiles, Miles, MilesKilometers
    #     style: "Satellite", # accepts Satellite, Standard
    #     width: 1, # required
    #     zoom: 1.0,
    #   })
    #
    # @example Response structure
    #
    #   resp.blob #=> IO
    #   resp.content_type #=> String
    #   resp.cache_control #=> String
    #   resp.etag #=> String
    #   resp.pricing_bucket #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-maps-2020-11-19/GetStaticMap AWS API Documentation
    #
    # @overload get_static_map(params = {})
    # @param [Hash] params ({})
    def get_static_map(params = {}, options = {}, &block)
      req = build_request(:get_static_map, params)
      req.send_request(options, &block)
    end

    # `GetStyleDescriptor` returns information about the style.
    #
    # For more information, see [Style dynamic maps][1] in the *Amazon
    # Location Service Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/location/latest/developerguide/styling-dynamic-maps.html
    #
    # @option params [required, String] :style
    #   Style specifies the desired map style.
    #
    # @option params [String] :color_scheme
    #   Sets color tone for map such as dark and light for specific map
    #   styles. It applies to only vector map styles such as Standard and
    #   Monochrome.
    #
    #   Example: `Light`
    #
    #   Default value: `Light`
    #
    #   <note markdown="1"> Valid values for ColorScheme are case sensitive.
    #
    #    </note>
    #
    # @option params [String] :political_view
    #   Specifies the political view using ISO 3166-2 or ISO 3166-3 country
    #   code format.
    #
    #   The following political views are currently supported:
    #
    #   * `ARG`: Argentina's view on the Southern Patagonian Ice Field and
    #     Tierra Del Fuego, including the Falkland Islands, South Georgia, and
    #     South Sandwich Islands
    #
    #   * `EGY`: Egypt's view on Bir Tawil
    #
    #   * `IND`: India's view on Gilgit-Baltistan
    #
    #   * `KEN`: Kenya's view on the Ilemi Triangle
    #
    #   * `MAR`: Morocco's view on Western Sahara
    #
    #   * `RUS`: Russia's view on Crimea
    #
    #   * `SDN`: Sudan's view on the Halaib Triangle
    #
    #   * `SRB`: Serbia's view on Kosovo, Vukovar, and Sarengrad Islands
    #
    #   * `SUR`: Suriname's view on the Courantyne Headwaters and Lawa
    #     Headwaters
    #
    #   * `SYR`: Syria's view on the Golan Heights
    #
    #   * `TUR`: Turkey's view on Cyprus and Northern Cyprus
    #
    #   * `TZA`: Tanzania's view on Lake Malawi
    #
    #   * `URY`: Uruguay's view on Rincon de Artigas
    #
    #   * `VNM`: Vietnam's view on the Paracel Islands and Spratly Islands
    #
    # @option params [String] :terrain
    #   Adjusts how physical terrain details are rendered on the map.
    #
    #   The following terrain styles are currently supported:
    #
    #   * `Hillshade`: Displays the physical terrain details through shading
    #     and highlighting of elevation change and geographic features.
    #
    #   ^
    #
    #   This parameter is valid only for the `Standard` map style.
    #
    # @option params [String] :contour_density
    #   Displays the shape and steepness of terrain features using elevation
    #   lines. The density value controls how densely the available contour
    #   line information is rendered on the map.
    #
    #   This parameter is valid only for the `Standard` map style.
    #
    # @option params [String] :traffic
    #   Displays real-time traffic information overlay on map, such as
    #   incident events and flow events.
    #
    #   This parameter is valid only for the `Standard` map style.
    #
    # @option params [Array<String>] :travel_modes
    #   Renders additional map information relevant to selected travel modes.
    #   Information for multiple travel modes can be displayed simultaneously,
    #   although this increases the overall information density rendered on
    #   the map.
    #
    #   This parameter is valid only for the `Standard` map style.
    #
    # @option params [String] :key
    #   Optional: The API key to be used for authorization. Either an API key
    #   or valid SigV4 signature must be provided when making a request.
    #
    # @return [Types::GetStyleDescriptorResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetStyleDescriptorResponse#blob #blob} => IO
    #   * {Types::GetStyleDescriptorResponse#content_type #content_type} => String
    #   * {Types::GetStyleDescriptorResponse#cache_control #cache_control} => String
    #   * {Types::GetStyleDescriptorResponse#etag #etag} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_style_descriptor({
    #     style: "Standard", # required, accepts Standard, Monochrome, Hybrid, Satellite
    #     color_scheme: "Light", # accepts Light, Dark
    #     political_view: "CountryCode",
    #     terrain: "Hillshade", # accepts Hillshade
    #     contour_density: "Medium", # accepts Medium
    #     traffic: "All", # accepts All
    #     travel_modes: ["Transit"], # accepts Transit, Truck
    #     key: "ApiKey",
    #   })
    #
    # @example Response structure
    #
    #   resp.blob #=> IO
    #   resp.content_type #=> String
    #   resp.cache_control #=> String
    #   resp.etag #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-maps-2020-11-19/GetStyleDescriptor AWS API Documentation
    #
    # @overload get_style_descriptor(params = {})
    # @param [Hash] params ({})
    def get_style_descriptor(params = {}, options = {}, &block)
      req = build_request(:get_style_descriptor, params)
      req.send_request(options, &block)
    end

    # `GetTile` returns a tile. Map tiles are used by clients to render a
    # map. they're addressed using a grid arrangement with an X coordinate,
    # Y coordinate, and Z (zoom) level.
    #
    # For more information, see [Tiles][1] in the *Amazon Location Service
    # Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/location/latest/developerguide/tiles.html
    #
    # @option params [Array<String>] :additional_features
    #   A list of optional additional parameters such as map styles that can
    #   be requested for each result.
    #
    # @option params [required, String] :tileset
    #   Specifies the desired tile set.
    #
    #   Valid Values: `raster.satellite | vector.basemap`
    #
    # @option params [required, String] :z
    #   The zoom value for the map tile.
    #
    # @option params [required, String] :x
    #   The X axis value for the map tile. Must be between 0 and 19.
    #
    # @option params [required, String] :y
    #   The Y axis value for the map tile.
    #
    # @option params [String] :key
    #   Optional: The API key to be used for authorization. Either an API key
    #   or valid SigV4 signature must be provided when making a request.
    #
    # @return [Types::GetTileResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTileResponse#blob #blob} => IO
    #   * {Types::GetTileResponse#content_type #content_type} => String
    #   * {Types::GetTileResponse#cache_control #cache_control} => String
    #   * {Types::GetTileResponse#etag #etag} => String
    #   * {Types::GetTileResponse#pricing_bucket #pricing_bucket} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_tile({
    #     additional_features: ["ContourLines"], # accepts ContourLines, Hillshade, Logistics, Transit
    #     tileset: "Tileset", # required
    #     z: "GetTileRequestZString", # required
    #     x: "GetTileRequestXString", # required
    #     y: "GetTileRequestYString", # required
    #     key: "ApiKey",
    #   })
    #
    # @example Response structure
    #
    #   resp.blob #=> IO
    #   resp.content_type #=> String
    #   resp.cache_control #=> String
    #   resp.etag #=> String
    #   resp.pricing_bucket #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-maps-2020-11-19/GetTile AWS API Documentation
    #
    # @overload get_tile(params = {})
    # @param [Hash] params ({})
    def get_tile(params = {}, options = {}, &block)
      req = build_request(:get_tile, params)
      req.send_request(options, &block)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::GeoMaps')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-geomaps'
      context[:gem_version] = '1.17.0'
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
