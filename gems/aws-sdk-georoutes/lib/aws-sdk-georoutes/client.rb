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

module Aws::GeoRoutes
  # An API client for GeoRoutes.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::GeoRoutes::Client.new(
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

    @identifier = :georoutes

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
    add_plugin(Aws::GeoRoutes::Plugins::Endpoints)

    # @overload initialize(options)
    #   @param [Hash] options
    #
    #   @option options [Array<Seahorse::Client::Plugin>] :plugins ([]])
    #     A list of plugins to apply to the client. Each plugin is either a
    #     class name or an instance of a plugin class.
    #
    #   @option options [required, Aws::CredentialProvider] :credentials
    #     Your AWS credentials used for authentication. This can be an instance of any one of the
    #     following classes:
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
    #     When `:credentials` are not configured directly, the following
    #     locations will be searched for credentials:
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
    #     * EC2/ECS IMDS instance profile - When used by default, the timeouts
    #       are very aggressive. Construct and pass an instance of
    #       `Aws::InstanceProfileCredentials` or `Aws::ECSCredentials` to
    #       enable retries and extended timeouts. Instance profile credential
    #       fetching can be disabled by setting `ENV['AWS_EC2_METADATA_DISABLED']`
    #       to `true`.
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
    #     Your Bearer token used for authentication. This can be an instance of any one of the
    #     following classes:
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
    #   @option options [Aws::GeoRoutes::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::GeoRoutes::EndpointParameters`.
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

    # Use the `CalculateIsolines` action to find service areas that can be
    # reached in a given threshold of time, distance.
    #
    # @option params [Types::IsolineAllowOptions] :allow
    #   Features that are allowed while calculating an isoline.
    #
    # @option params [String] :arrival_time
    #   Time of arrival at the destination.
    #
    #   Time format: `YYYY-MM-DDThh:mm:ss.sssZ |
    #   YYYY-MM-DDThh:mm:ss.sss+hh:mm`
    #
    #   Examples:
    #
    #   `2020-04-22T17:57:24Z`
    #
    #   `2020-04-22T17:57:24+02:00`
    #
    # @option params [Types::IsolineAvoidanceOptions] :avoid
    #   Features that are avoided while calculating a route. Avoidance is on a
    #   best-case basis. If an avoidance can't be satisfied for a particular
    #   case, it violates the avoidance and the returned response produces a
    #   notice for the violation.
    #
    # @option params [Boolean] :depart_now
    #   Uses the current time as the time of departure.
    #
    # @option params [String] :departure_time
    #   Time of departure from thr origin.
    #
    #   Time format:`YYYY-MM-DDThh:mm:ss.sssZ | YYYY-MM-DDThh:mm:ss.sss+hh:mm`
    #
    #   Examples:
    #
    #   `2020-04-22T17:57:24Z`
    #
    #   `2020-04-22T17:57:24+02:00`
    #
    # @option params [Array<Float>] :destination
    #   The final position for the route. In the World Geodetic System (WGS
    #   84) format: `[longitude, latitude]`.
    #
    # @option params [Types::IsolineDestinationOptions] :destination_options
    #   Destination related options.
    #
    # @option params [String] :isoline_geometry_format
    #   The format of the returned IsolineGeometry.
    #
    #   Default Value:`FlexiblePolyline`
    #
    # @option params [Types::IsolineGranularityOptions] :isoline_granularity
    #   Defines the granularity of the returned Isoline.
    #
    # @option params [String] :key
    #   Optional: The API key to be used for authorization. Either an API key
    #   or valid SigV4 signature must be provided when making a request.
    #
    # @option params [String] :optimize_isoline_for
    #   Specifies the optimization criteria for when calculating an isoline.
    #   AccurateCalculation generates an isoline of higher granularity that is
    #   more precise. FastCalculation generates an isoline faster by reducing
    #   the granularity, and in turn the quality of the isoline.
    #   BalancedCalculation generates an isoline by balancing between quality
    #   and performance.
    #
    #   Default Value: `BalancedCalculation`
    #
    # @option params [String] :optimize_routing_for
    #   Specifies the optimization criteria for calculating a route.
    #
    #   Default Value: `FastestRoute`
    #
    # @option params [Array<Float>] :origin
    #   The start position for the route.
    #
    # @option params [Types::IsolineOriginOptions] :origin_options
    #   Origin related options.
    #
    # @option params [required, Types::IsolineThresholds] :thresholds
    #   Threshold to be used for the isoline calculation. Up to 3 thresholds
    #   per provided type can be requested.
    #
    #   You incur a calculation charge for each threshold. Using a large
    #   amount of thresholds in a request can lead you to incur unexpected
    #   charges. See [ Amazon Location's pricing page][1] for more
    #   information.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/location/latest/developerguide/routes-pricing.html`
    #
    # @option params [Types::IsolineTrafficOptions] :traffic
    #   Traffic related options.
    #
    # @option params [String] :travel_mode
    #   Specifies the mode of transport when calculating a route. Used in
    #   estimating the speed of travel and road compatibility.
    #
    #   <note markdown="1"> The mode `Scooter` also applies to motorcycles, set to `Scooter` when
    #   wanted to calculate options for motorcycles.
    #
    #    </note>
    #
    #   Default Value: `Car`
    #
    # @option params [Types::IsolineTravelModeOptions] :travel_mode_options
    #   Travel mode related options for the provided travel mode.
    #
    # @return [Types::CalculateIsolinesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CalculateIsolinesResponse#arrival_time #arrival_time} => String
    #   * {Types::CalculateIsolinesResponse#departure_time #departure_time} => String
    #   * {Types::CalculateIsolinesResponse#isoline_geometry_format #isoline_geometry_format} => String
    #   * {Types::CalculateIsolinesResponse#isolines #isolines} => Array&lt;Types::Isoline&gt;
    #   * {Types::CalculateIsolinesResponse#pricing_bucket #pricing_bucket} => String
    #   * {Types::CalculateIsolinesResponse#snapped_destination #snapped_destination} => Array&lt;Float&gt;
    #   * {Types::CalculateIsolinesResponse#snapped_origin #snapped_origin} => Array&lt;Float&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.calculate_isolines({
    #     allow: {
    #       hot: false,
    #       hov: false,
    #     },
    #     arrival_time: "TimestampWithTimezoneOffset",
    #     avoid: {
    #       areas: [
    #         {
    #           except: [
    #             {
    #               bounding_box: [1.0],
    #               corridor: {
    #                 line_string: [ # required
    #                   [1.0],
    #                 ],
    #                 radius: 1, # required
    #               },
    #               polygon: [
    #                 [
    #                   [1.0],
    #                 ],
    #               ],
    #               polyline_corridor: {
    #                 polyline: "Polyline", # required
    #                 radius: 1, # required
    #               },
    #               polyline_polygon: ["PolylineRing"],
    #             },
    #           ],
    #           geometry: { # required
    #             bounding_box: [1.0],
    #             corridor: {
    #               line_string: [ # required
    #                 [1.0],
    #               ],
    #               radius: 1, # required
    #             },
    #             polygon: [
    #               [
    #                 [1.0],
    #               ],
    #             ],
    #             polyline_corridor: {
    #               polyline: "Polyline", # required
    #               radius: 1, # required
    #             },
    #             polyline_polygon: ["PolylineRing"],
    #           },
    #         },
    #       ],
    #       car_shuttle_trains: false,
    #       controlled_access_highways: false,
    #       dirt_roads: false,
    #       ferries: false,
    #       seasonal_closure: false,
    #       toll_roads: false,
    #       toll_transponders: false,
    #       truck_road_types: ["TruckRoadType"],
    #       tunnels: false,
    #       u_turns: false,
    #       zone_categories: [
    #         {
    #           category: "CongestionPricing", # accepts CongestionPricing, Environmental, Vignette
    #         },
    #       ],
    #     },
    #     depart_now: false,
    #     departure_time: "TimestampWithTimezoneOffset",
    #     destination: [1.0],
    #     destination_options: {
    #       avoid_actions_for_distance: 1,
    #       heading: 1.0,
    #       matching: {
    #         name_hint: "SensitiveString",
    #         on_road_threshold: 1,
    #         radius: 1,
    #         strategy: "MatchAny", # accepts MatchAny, MatchMostSignificantRoad
    #       },
    #       side_of_street: {
    #         position: [1.0], # required
    #         use_with: "AnyStreet", # accepts AnyStreet, DividedStreetOnly
    #       },
    #     },
    #     isoline_geometry_format: "FlexiblePolyline", # accepts FlexiblePolyline, Simple
    #     isoline_granularity: {
    #       max_points: 1,
    #       max_resolution: 1,
    #     },
    #     key: "ApiKey",
    #     optimize_isoline_for: "AccurateCalculation", # accepts AccurateCalculation, BalancedCalculation, FastCalculation
    #     optimize_routing_for: "FastestRoute", # accepts FastestRoute, ShortestRoute
    #     origin: [1.0],
    #     origin_options: {
    #       avoid_actions_for_distance: 1,
    #       heading: 1.0,
    #       matching: {
    #         name_hint: "SensitiveString",
    #         on_road_threshold: 1,
    #         radius: 1,
    #         strategy: "MatchAny", # accepts MatchAny, MatchMostSignificantRoad
    #       },
    #       side_of_street: {
    #         position: [1.0], # required
    #         use_with: "AnyStreet", # accepts AnyStreet, DividedStreetOnly
    #       },
    #     },
    #     thresholds: { # required
    #       distance: [1],
    #       time: [1],
    #     },
    #     traffic: {
    #       flow_event_threshold_override: 1,
    #       usage: "IgnoreTrafficData", # accepts IgnoreTrafficData, UseTrafficData
    #     },
    #     travel_mode: "Car", # accepts Car, Pedestrian, Scooter, Truck
    #     travel_mode_options: {
    #       car: {
    #         engine_type: "Electric", # accepts Electric, InternalCombustion, PluginHybrid
    #         license_plate: {
    #           last_character: "IsolineVehicleLicensePlateLastCharacterString",
    #         },
    #         max_speed: 1.0,
    #         occupancy: 1,
    #       },
    #       scooter: {
    #         engine_type: "Electric", # accepts Electric, InternalCombustion, PluginHybrid
    #         license_plate: {
    #           last_character: "IsolineVehicleLicensePlateLastCharacterString",
    #         },
    #         max_speed: 1.0,
    #         occupancy: 1,
    #       },
    #       truck: {
    #         axle_count: 1,
    #         engine_type: "Electric", # accepts Electric, InternalCombustion, PluginHybrid
    #         gross_weight: 1,
    #         hazardous_cargos: ["Combustible"], # accepts Combustible, Corrosive, Explosive, Flammable, Gas, HarmfulToWater, Organic, Other, Poison, PoisonousInhalation, Radioactive
    #         height: 1,
    #         height_above_first_axle: 1,
    #         kpra_length: 1,
    #         length: 1,
    #         license_plate: {
    #           last_character: "IsolineVehicleLicensePlateLastCharacterString",
    #         },
    #         max_speed: 1.0,
    #         occupancy: 1,
    #         payload_capacity: 1,
    #         tire_count: 1,
    #         trailer: {
    #           axle_count: 1,
    #           trailer_count: 1,
    #         },
    #         truck_type: "LightTruck", # accepts LightTruck, StraightTruck, Tractor
    #         tunnel_restriction_code: "TunnelRestrictionCode",
    #         weight_per_axle: 1,
    #         weight_per_axle_group: {
    #           single: 1,
    #           tandem: 1,
    #           triple: 1,
    #           quad: 1,
    #           quint: 1,
    #         },
    #         width: 1,
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.arrival_time #=> String
    #   resp.departure_time #=> String
    #   resp.isoline_geometry_format #=> String, one of "FlexiblePolyline", "Simple"
    #   resp.isolines #=> Array
    #   resp.isolines[0].connections #=> Array
    #   resp.isolines[0].connections[0].from_polygon_index #=> Integer
    #   resp.isolines[0].connections[0].geometry.line_string #=> Array
    #   resp.isolines[0].connections[0].geometry.line_string[0] #=> Array
    #   resp.isolines[0].connections[0].geometry.line_string[0][0] #=> Float
    #   resp.isolines[0].connections[0].geometry.polyline #=> String
    #   resp.isolines[0].connections[0].to_polygon_index #=> Integer
    #   resp.isolines[0].distance_threshold #=> Integer
    #   resp.isolines[0].geometries #=> Array
    #   resp.isolines[0].geometries[0].polygon #=> Array
    #   resp.isolines[0].geometries[0].polygon[0] #=> Array
    #   resp.isolines[0].geometries[0].polygon[0][0] #=> Array
    #   resp.isolines[0].geometries[0].polygon[0][0][0] #=> Float
    #   resp.isolines[0].geometries[0].polyline_polygon #=> Array
    #   resp.isolines[0].geometries[0].polyline_polygon[0] #=> String
    #   resp.isolines[0].time_threshold #=> Integer
    #   resp.pricing_bucket #=> String
    #   resp.snapped_destination #=> Array
    #   resp.snapped_destination[0] #=> Float
    #   resp.snapped_origin #=> Array
    #   resp.snapped_origin[0] #=> Float
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/CalculateIsolines AWS API Documentation
    #
    # @overload calculate_isolines(params = {})
    # @param [Hash] params ({})
    def calculate_isolines(params = {}, options = {})
      req = build_request(:calculate_isolines, params)
      req.send_request(options)
    end

    # Use `CalculateRouteMatrix` to compute results for all pairs of Origins
    # to Destinations. Each row corresponds to one entry in Origins. Each
    # entry in the row corresponds to the route from that entry in Origins
    # to an entry in Destinations positions.
    #
    # @option params [Types::RouteMatrixAllowOptions] :allow
    #   Features that are allowed while calculating a route.
    #
    # @option params [Types::RouteMatrixAvoidanceOptions] :avoid
    #   Features that are avoided while calculating a route. Avoidance is on a
    #   best-case basis. If an avoidance can't be satisfied for a particular
    #   case, it violates the avoidance and the returned response produces a
    #   notice for the violation.
    #
    # @option params [Boolean] :depart_now
    #   Uses the current time as the time of departure.
    #
    # @option params [String] :departure_time
    #   Time of departure from thr origin.
    #
    #   Time format:`YYYY-MM-DDThh:mm:ss.sssZ | YYYY-MM-DDThh:mm:ss.sss+hh:mm`
    #
    #   Examples:
    #
    #   `2020-04-22T17:57:24Z`
    #
    #   `2020-04-22T17:57:24+02:00`
    #
    # @option params [required, Array<Types::RouteMatrixDestination>] :destinations
    #   List of destinations for the route.
    #
    #   <note markdown="1"> Route calculations are billed for each origin and destination pair. If
    #   you use a large matrix of origins and destinations, your costs will
    #   increase accordingly. See [ Amazon Location's pricing page][1] for
    #   more information.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/location/latest/developerguide/routes-pricing.html`
    #
    # @option params [Types::RouteMatrixExclusionOptions] :exclude
    #   Features to be strictly excluded while calculating the route.
    #
    # @option params [String] :key
    #   Optional: The API key to be used for authorization. Either an API key
    #   or valid SigV4 signature must be provided when making a request.
    #
    # @option params [String] :optimize_routing_for
    #   Specifies the optimization criteria for calculating a route.
    #
    #   Default Value: `FastestRoute`
    #
    # @option params [required, Array<Types::RouteMatrixOrigin>] :origins
    #   The position in longitude and latitude for the origin.
    #
    #   <note markdown="1"> Route calculations are billed for each origin and destination pair.
    #   Using a large amount of Origins in a request can lead you to incur
    #   unexpected charges. See [ Amazon Location's pricing page][1] for more
    #   information.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/location/latest/developerguide/routes-pricing.html`
    #
    # @option params [required, Types::RouteMatrixBoundary] :routing_boundary
    #   Boundary within which the matrix is to be calculated. All data,
    #   origins and destinations outside the boundary are considered invalid.
    #
    #   <note markdown="1"> When request routing boundary was set as AutoCircle, the response
    #   routing boundary will return Circle derived from the AutoCircle
    #   settings.
    #
    #    </note>
    #
    # @option params [Types::RouteMatrixTrafficOptions] :traffic
    #   Traffic related options.
    #
    # @option params [String] :travel_mode
    #   Specifies the mode of transport when calculating a route. Used in
    #   estimating the speed of travel and road compatibility.
    #
    #   Default Value: `Car`
    #
    # @option params [Types::RouteMatrixTravelModeOptions] :travel_mode_options
    #   Travel mode related options for the provided travel mode.
    #
    # @return [Types::CalculateRouteMatrixResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CalculateRouteMatrixResponse#error_count #error_count} => Integer
    #   * {Types::CalculateRouteMatrixResponse#pricing_bucket #pricing_bucket} => String
    #   * {Types::CalculateRouteMatrixResponse#route_matrix #route_matrix} => Array&lt;Array&lt;Types::RouteMatrixEntry&gt;&gt;
    #   * {Types::CalculateRouteMatrixResponse#routing_boundary #routing_boundary} => Types::RouteMatrixBoundary
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.calculate_route_matrix({
    #     allow: {
    #       hot: false,
    #       hov: false,
    #     },
    #     avoid: {
    #       areas: [
    #         {
    #           geometry: { # required
    #             bounding_box: [1.0],
    #             polygon: [
    #               [
    #                 [1.0],
    #               ],
    #             ],
    #             polyline_polygon: ["PolylineRing"],
    #           },
    #         },
    #       ],
    #       car_shuttle_trains: false,
    #       controlled_access_highways: false,
    #       dirt_roads: false,
    #       ferries: false,
    #       toll_roads: false,
    #       toll_transponders: false,
    #       truck_road_types: ["TruckRoadType"],
    #       tunnels: false,
    #       u_turns: false,
    #       zone_categories: [
    #         {
    #           category: "CongestionPricing", # accepts CongestionPricing, Environmental, Vignette
    #         },
    #       ],
    #     },
    #     depart_now: false,
    #     departure_time: "TimestampWithTimezoneOffset",
    #     destinations: [ # required
    #       {
    #         options: {
    #           avoid_actions_for_distance: 1,
    #           heading: 1.0,
    #           matching: {
    #             name_hint: "SensitiveString",
    #             on_road_threshold: 1,
    #             radius: 1,
    #             strategy: "MatchAny", # accepts MatchAny, MatchMostSignificantRoad
    #           },
    #           side_of_street: {
    #             position: [1.0], # required
    #             use_with: "AnyStreet", # accepts AnyStreet, DividedStreetOnly
    #           },
    #         },
    #         position: [1.0], # required
    #       },
    #     ],
    #     exclude: {
    #       countries: ["CountryCode"], # required
    #     },
    #     key: "ApiKey",
    #     optimize_routing_for: "FastestRoute", # accepts FastestRoute, ShortestRoute
    #     origins: [ # required
    #       {
    #         options: {
    #           avoid_actions_for_distance: 1,
    #           heading: 1.0,
    #           matching: {
    #             name_hint: "SensitiveString",
    #             on_road_threshold: 1,
    #             radius: 1,
    #             strategy: "MatchAny", # accepts MatchAny, MatchMostSignificantRoad
    #           },
    #           side_of_street: {
    #             position: [1.0], # required
    #             use_with: "AnyStreet", # accepts AnyStreet, DividedStreetOnly
    #           },
    #         },
    #         position: [1.0], # required
    #       },
    #     ],
    #     routing_boundary: { # required
    #       geometry: {
    #         auto_circle: {
    #           margin: 1,
    #           max_radius: 1,
    #         },
    #         circle: {
    #           center: [1.0], # required
    #           radius: 1.0, # required
    #         },
    #         bounding_box: [1.0],
    #         polygon: [
    #           [
    #             [1.0],
    #           ],
    #         ],
    #       },
    #       unbounded: false,
    #     },
    #     traffic: {
    #       flow_event_threshold_override: 1,
    #       usage: "IgnoreTrafficData", # accepts IgnoreTrafficData, UseTrafficData
    #     },
    #     travel_mode: "Car", # accepts Car, Pedestrian, Scooter, Truck
    #     travel_mode_options: {
    #       car: {
    #         license_plate: {
    #           last_character: "RouteMatrixVehicleLicensePlateLastCharacterString",
    #         },
    #         max_speed: 1.0,
    #         occupancy: 1,
    #       },
    #       scooter: {
    #         license_plate: {
    #           last_character: "RouteMatrixVehicleLicensePlateLastCharacterString",
    #         },
    #         max_speed: 1.0,
    #         occupancy: 1,
    #       },
    #       truck: {
    #         axle_count: 1,
    #         gross_weight: 1,
    #         hazardous_cargos: ["Combustible"], # accepts Combustible, Corrosive, Explosive, Flammable, Gas, HarmfulToWater, Organic, Other, Poison, PoisonousInhalation, Radioactive
    #         height: 1,
    #         kpra_length: 1,
    #         length: 1,
    #         license_plate: {
    #           last_character: "RouteMatrixVehicleLicensePlateLastCharacterString",
    #         },
    #         max_speed: 1.0,
    #         occupancy: 1,
    #         payload_capacity: 1,
    #         trailer: {
    #           trailer_count: 1,
    #         },
    #         truck_type: "LightTruck", # accepts LightTruck, StraightTruck, Tractor
    #         tunnel_restriction_code: "TunnelRestrictionCode",
    #         weight_per_axle: 1,
    #         weight_per_axle_group: {
    #           single: 1,
    #           tandem: 1,
    #           triple: 1,
    #           quad: 1,
    #           quint: 1,
    #         },
    #         width: 1,
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.error_count #=> Integer
    #   resp.pricing_bucket #=> String
    #   resp.route_matrix #=> Array
    #   resp.route_matrix[0] #=> Array
    #   resp.route_matrix[0][0].distance #=> Integer
    #   resp.route_matrix[0][0].duration #=> Integer
    #   resp.route_matrix[0][0].error #=> String, one of "NoMatch", "NoMatchDestination", "NoMatchOrigin", "NoRoute", "OutOfBounds", "OutOfBoundsDestination", "OutOfBoundsOrigin", "Other", "Violation"
    #   resp.routing_boundary.geometry.auto_circle.margin #=> Integer
    #   resp.routing_boundary.geometry.auto_circle.max_radius #=> Integer
    #   resp.routing_boundary.geometry.circle.center #=> Array
    #   resp.routing_boundary.geometry.circle.center[0] #=> Float
    #   resp.routing_boundary.geometry.circle.radius #=> Float
    #   resp.routing_boundary.geometry.bounding_box #=> Array
    #   resp.routing_boundary.geometry.bounding_box[0] #=> Float
    #   resp.routing_boundary.geometry.polygon #=> Array
    #   resp.routing_boundary.geometry.polygon[0] #=> Array
    #   resp.routing_boundary.geometry.polygon[0][0] #=> Array
    #   resp.routing_boundary.geometry.polygon[0][0][0] #=> Float
    #   resp.routing_boundary.unbounded #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/CalculateRouteMatrix AWS API Documentation
    #
    # @overload calculate_route_matrix(params = {})
    # @param [Hash] params ({})
    def calculate_route_matrix(params = {}, options = {})
      req = build_request(:calculate_route_matrix, params)
      req.send_request(options)
    end

    # `CalculateRoutes` computes routes given the following required
    # parameters: `Origin` and `Destination`.
    #
    # @option params [Types::RouteAllowOptions] :allow
    #   Features that are allowed while calculating a route.
    #
    # @option params [String] :arrival_time
    #   Time of arrival at the destination.
    #
    #   Time format:`YYYY-MM-DDThh:mm:ss.sssZ | YYYY-MM-DDThh:mm:ss.sss+hh:mm`
    #
    #   Examples:
    #
    #   `2020-04-22T17:57:24Z`
    #
    #   `2020-04-22T17:57:24+02:00`
    #
    # @option params [Types::RouteAvoidanceOptions] :avoid
    #   Features that are avoided while calculating a route. Avoidance is on a
    #   best-case basis. If an avoidance can't be satisfied for a particular
    #   case, it violates the avoidance and the returned response produces a
    #   notice for the violation.
    #
    # @option params [Boolean] :depart_now
    #   Uses the current time as the time of departure.
    #
    # @option params [String] :departure_time
    #   Time of departure from thr origin.
    #
    #   Time format:`YYYY-MM-DDThh:mm:ss.sssZ | YYYY-MM-DDThh:mm:ss.sss+hh:mm`
    #
    #   Examples:
    #
    #   `2020-04-22T17:57:24Z`
    #
    #   `2020-04-22T17:57:24+02:00`
    #
    # @option params [required, Array<Float>] :destination
    #   The final position for the route. In the World Geodetic System (WGS
    #   84) format: `[longitude, latitude]`.
    #
    # @option params [Types::RouteDestinationOptions] :destination_options
    #   Destination related options.
    #
    # @option params [Types::RouteDriverOptions] :driver
    #   Driver related options.
    #
    # @option params [Types::RouteExclusionOptions] :exclude
    #   Features to be strictly excluded while calculating the route.
    #
    # @option params [String] :instructions_measurement_system
    #   Measurement system to be used for instructions within steps in the
    #   response.
    #
    # @option params [String] :key
    #   Optional: The API key to be used for authorization. Either an API key
    #   or valid SigV4 signature must be provided when making a request.
    #
    # @option params [Array<String>] :languages
    #   List of languages for instructions within steps in the response.
    #
    #   <note markdown="1"> Instructions in the requested language are returned only if they are
    #   available.
    #
    #    </note>
    #
    # @option params [Array<String>] :leg_additional_features
    #   A list of optional additional parameters such as timezone that can be
    #   requested for each result.
    #
    #   * `Elevation`: Retrieves the elevation information for each location.
    #
    #   * `Incidents`: Provides information on traffic incidents along the
    #     route.
    #
    #   * `PassThroughWaypoints`: Indicates waypoints that are passed through
    #     without stopping.
    #
    #   * `Summary`: Returns a summary of the route, including distance and
    #     duration.
    #
    #   * `Tolls`: Supplies toll cost information along the route.
    #
    #   * `TravelStepInstructions`: Provides step-by-step instructions for
    #     travel along the route.
    #
    #   * `TruckRoadTypes`: Returns information about road types suitable for
    #     trucks.
    #
    #   * `TypicalDuration`: Gives typical travel duration based on historical
    #     data.
    #
    #   * `Zones`: Specifies the time zone information for each waypoint.
    #
    # @option params [String] :leg_geometry_format
    #   Specifies the format of the geometry returned for each leg of the
    #   route. You can choose between two different geometry encoding formats.
    #
    #   `FlexiblePolyline`: A compact and precise encoding format for the leg
    #   geometry. For more information on the format, see the GitHub
    #   repository for [ `FlexiblePolyline` ][1].
    #
    #   `Simple`: A less compact encoding, which is easier to decode but may
    #   be less precise and result in larger payloads.
    #
    #
    #
    #   [1]: https://github.com/heremaps/flexible-polyline
    #
    # @option params [Integer] :max_alternatives
    #   Maximum number of alternative routes to be provided in the response,
    #   if available.
    #
    # @option params [String] :optimize_routing_for
    #   Specifies the optimization criteria for calculating a route.
    #
    #   Default Value: `FastestRoute`
    #
    # @option params [required, Array<Float>] :origin
    #   The start position for the route.
    #
    # @option params [Types::RouteOriginOptions] :origin_options
    #   Origin related options.
    #
    # @option params [Array<String>] :span_additional_features
    #   A list of optional features such as SpeedLimit that can be requested
    #   for a Span. A span is a section of a Leg for which the requested
    #   features have the same values.
    #
    # @option params [Types::RouteTollOptions] :tolls
    #   Toll related options.
    #
    # @option params [Types::RouteTrafficOptions] :traffic
    #   Traffic related options.
    #
    # @option params [String] :travel_mode
    #   Specifies the mode of transport when calculating a route. Used in
    #   estimating the speed of travel and road compatibility.
    #
    #   Default Value: `Car`
    #
    # @option params [Types::RouteTravelModeOptions] :travel_mode_options
    #   Travel mode related options for the provided travel mode.
    #
    # @option params [String] :travel_step_type
    #   Type of step returned by the response. Default provides basic steps
    #   intended for web based applications. TurnByTurn provides detailed
    #   instructions with more granularity intended for a turn based
    #   navigation system.
    #
    # @option params [Array<Types::RouteWaypoint>] :waypoints
    #   List of waypoints between the Origin and Destination.
    #
    # @return [Types::CalculateRoutesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CalculateRoutesResponse#leg_geometry_format #leg_geometry_format} => String
    #   * {Types::CalculateRoutesResponse#notices #notices} => Array&lt;Types::RouteResponseNotice&gt;
    #   * {Types::CalculateRoutesResponse#pricing_bucket #pricing_bucket} => String
    #   * {Types::CalculateRoutesResponse#routes #routes} => Array&lt;Types::Route&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.calculate_routes({
    #     allow: {
    #       hot: false,
    #       hov: false,
    #     },
    #     arrival_time: "TimestampWithTimezoneOffset",
    #     avoid: {
    #       areas: [
    #         {
    #           except: [
    #             {
    #               corridor: {
    #                 line_string: [ # required
    #                   [1.0],
    #                 ],
    #                 radius: 1, # required
    #               },
    #               bounding_box: [1.0],
    #               polygon: [
    #                 [
    #                   [1.0],
    #                 ],
    #               ],
    #               polyline_corridor: {
    #                 polyline: "Polyline", # required
    #                 radius: 1, # required
    #               },
    #               polyline_polygon: ["PolylineRing"],
    #             },
    #           ],
    #           geometry: { # required
    #             corridor: {
    #               line_string: [ # required
    #                 [1.0],
    #               ],
    #               radius: 1, # required
    #             },
    #             bounding_box: [1.0],
    #             polygon: [
    #               [
    #                 [1.0],
    #               ],
    #             ],
    #             polyline_corridor: {
    #               polyline: "Polyline", # required
    #               radius: 1, # required
    #             },
    #             polyline_polygon: ["PolylineRing"],
    #           },
    #         },
    #       ],
    #       car_shuttle_trains: false,
    #       controlled_access_highways: false,
    #       dirt_roads: false,
    #       ferries: false,
    #       seasonal_closure: false,
    #       toll_roads: false,
    #       toll_transponders: false,
    #       truck_road_types: ["TruckRoadType"],
    #       tunnels: false,
    #       u_turns: false,
    #       zone_categories: [
    #         {
    #           category: "CongestionPricing", # required, accepts CongestionPricing, Environmental, Vignette
    #         },
    #       ],
    #     },
    #     depart_now: false,
    #     departure_time: "TimestampWithTimezoneOffset",
    #     destination: [1.0], # required
    #     destination_options: {
    #       avoid_actions_for_distance: 1,
    #       avoid_u_turns: false,
    #       heading: 1.0,
    #       matching: {
    #         name_hint: "RouteMatchingOptionsNameHintString",
    #         on_road_threshold: 1,
    #         radius: 1,
    #         strategy: "MatchAny", # accepts MatchAny, MatchMostSignificantRoad
    #       },
    #       side_of_street: {
    #         position: [1.0], # required
    #         use_with: "AnyStreet", # accepts AnyStreet, DividedStreetOnly
    #       },
    #       stop_duration: 1,
    #     },
    #     driver: {
    #       schedule: [
    #         {
    #           drive_duration: 1, # required
    #           rest_duration: 1, # required
    #         },
    #       ],
    #     },
    #     exclude: {
    #       countries: ["CountryCode"], # required
    #     },
    #     instructions_measurement_system: "Metric", # accepts Metric, Imperial
    #     key: "ApiKey",
    #     languages: ["LanguageTag"],
    #     leg_additional_features: ["Elevation"], # accepts Elevation, Incidents, PassThroughWaypoints, Summary, Tolls, TravelStepInstructions, TruckRoadTypes, TypicalDuration, Zones
    #     leg_geometry_format: "FlexiblePolyline", # accepts FlexiblePolyline, Simple
    #     max_alternatives: 1,
    #     optimize_routing_for: "FastestRoute", # accepts FastestRoute, ShortestRoute
    #     origin: [1.0], # required
    #     origin_options: {
    #       avoid_actions_for_distance: 1,
    #       avoid_u_turns: false,
    #       heading: 1.0,
    #       matching: {
    #         name_hint: "RouteMatchingOptionsNameHintString",
    #         on_road_threshold: 1,
    #         radius: 1,
    #         strategy: "MatchAny", # accepts MatchAny, MatchMostSignificantRoad
    #       },
    #       side_of_street: {
    #         position: [1.0], # required
    #         use_with: "AnyStreet", # accepts AnyStreet, DividedStreetOnly
    #       },
    #     },
    #     span_additional_features: ["BestCaseDuration"], # accepts BestCaseDuration, CarAccess, Country, Distance, Duration, DynamicSpeed, FunctionalClassification, Gates, Incidents, Names, Notices, PedestrianAccess, RailwayCrossings, Region, RoadAttributes, RouteNumbers, ScooterAccess, SpeedLimit, TollSystems, TruckAccess, TruckRoadTypes, TypicalDuration, Zones, Consumption
    #     tolls: {
    #       all_transponders: false,
    #       all_vignettes: false,
    #       currency: "CurrencyCode",
    #       emission_type: {
    #         co_2_emission_class: "String",
    #         type: "String", # required
    #       },
    #       vehicle_category: "Minibus", # accepts Minibus
    #     },
    #     traffic: {
    #       flow_event_threshold_override: 1,
    #       usage: "IgnoreTrafficData", # accepts IgnoreTrafficData, UseTrafficData
    #     },
    #     travel_mode: "Car", # accepts Car, Pedestrian, Scooter, Truck
    #     travel_mode_options: {
    #       car: {
    #         engine_type: "Electric", # accepts Electric, InternalCombustion, PluginHybrid
    #         license_plate: {
    #           last_character: "RouteVehicleLicensePlateLastCharacterString",
    #         },
    #         max_speed: 1.0,
    #         occupancy: 1,
    #       },
    #       pedestrian: {
    #         speed: 1.0,
    #       },
    #       scooter: {
    #         engine_type: "Electric", # accepts Electric, InternalCombustion, PluginHybrid
    #         license_plate: {
    #           last_character: "RouteVehicleLicensePlateLastCharacterString",
    #         },
    #         max_speed: 1.0,
    #         occupancy: 1,
    #       },
    #       truck: {
    #         axle_count: 1,
    #         engine_type: "Electric", # accepts Electric, InternalCombustion, PluginHybrid
    #         gross_weight: 1,
    #         hazardous_cargos: ["Combustible"], # accepts Combustible, Corrosive, Explosive, Flammable, Gas, HarmfulToWater, Organic, Other, Poison, PoisonousInhalation, Radioactive
    #         height: 1,
    #         height_above_first_axle: 1,
    #         kpra_length: 1,
    #         length: 1,
    #         license_plate: {
    #           last_character: "RouteVehicleLicensePlateLastCharacterString",
    #         },
    #         max_speed: 1.0,
    #         occupancy: 1,
    #         payload_capacity: 1,
    #         tire_count: 1,
    #         trailer: {
    #           axle_count: 1,
    #           trailer_count: 1,
    #         },
    #         truck_type: "LightTruck", # accepts LightTruck, StraightTruck, Tractor
    #         tunnel_restriction_code: "RouteTruckOptionsTunnelRestrictionCodeString",
    #         weight_per_axle: 1,
    #         weight_per_axle_group: {
    #           single: 1,
    #           tandem: 1,
    #           triple: 1,
    #           quad: 1,
    #           quint: 1,
    #         },
    #         width: 1,
    #       },
    #     },
    #     travel_step_type: "Default", # accepts Default, TurnByTurn
    #     waypoints: [
    #       {
    #         avoid_actions_for_distance: 1,
    #         avoid_u_turns: false,
    #         heading: 1.0,
    #         matching: {
    #           name_hint: "RouteMatchingOptionsNameHintString",
    #           on_road_threshold: 1,
    #           radius: 1,
    #           strategy: "MatchAny", # accepts MatchAny, MatchMostSignificantRoad
    #         },
    #         pass_through: false,
    #         position: [1.0], # required
    #         side_of_street: {
    #           position: [1.0], # required
    #           use_with: "AnyStreet", # accepts AnyStreet, DividedStreetOnly
    #         },
    #         stop_duration: 1,
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.leg_geometry_format #=> String, one of "FlexiblePolyline", "Simple"
    #   resp.notices #=> Array
    #   resp.notices[0].code #=> String, one of "MainLanguageNotFound", "Other", "TravelTimeExceedsDriverWorkHours"
    #   resp.notices[0].impact #=> String, one of "High", "Low"
    #   resp.pricing_bucket #=> String
    #   resp.routes #=> Array
    #   resp.routes[0].legs #=> Array
    #   resp.routes[0].legs[0].ferry_leg_details.after_travel_steps #=> Array
    #   resp.routes[0].legs[0].ferry_leg_details.after_travel_steps[0].duration #=> Integer
    #   resp.routes[0].legs[0].ferry_leg_details.after_travel_steps[0].instruction #=> String
    #   resp.routes[0].legs[0].ferry_leg_details.after_travel_steps[0].type #=> String, one of "Deboard"
    #   resp.routes[0].legs[0].ferry_leg_details.arrival.place.name #=> String
    #   resp.routes[0].legs[0].ferry_leg_details.arrival.place.original_position #=> Array
    #   resp.routes[0].legs[0].ferry_leg_details.arrival.place.original_position[0] #=> Float
    #   resp.routes[0].legs[0].ferry_leg_details.arrival.place.position #=> Array
    #   resp.routes[0].legs[0].ferry_leg_details.arrival.place.position[0] #=> Float
    #   resp.routes[0].legs[0].ferry_leg_details.arrival.place.waypoint_index #=> Integer
    #   resp.routes[0].legs[0].ferry_leg_details.arrival.time #=> String
    #   resp.routes[0].legs[0].ferry_leg_details.before_travel_steps #=> Array
    #   resp.routes[0].legs[0].ferry_leg_details.before_travel_steps[0].duration #=> Integer
    #   resp.routes[0].legs[0].ferry_leg_details.before_travel_steps[0].instruction #=> String
    #   resp.routes[0].legs[0].ferry_leg_details.before_travel_steps[0].type #=> String, one of "Board"
    #   resp.routes[0].legs[0].ferry_leg_details.departure.place.name #=> String
    #   resp.routes[0].legs[0].ferry_leg_details.departure.place.original_position #=> Array
    #   resp.routes[0].legs[0].ferry_leg_details.departure.place.original_position[0] #=> Float
    #   resp.routes[0].legs[0].ferry_leg_details.departure.place.position #=> Array
    #   resp.routes[0].legs[0].ferry_leg_details.departure.place.position[0] #=> Float
    #   resp.routes[0].legs[0].ferry_leg_details.departure.place.waypoint_index #=> Integer
    #   resp.routes[0].legs[0].ferry_leg_details.departure.time #=> String
    #   resp.routes[0].legs[0].ferry_leg_details.notices #=> Array
    #   resp.routes[0].legs[0].ferry_leg_details.notices[0].code #=> String, one of "AccuratePolylineUnavailable", "NoSchedule", "Other", "ViolatedAvoidFerry", "ViolatedAvoidRailFerry", "SeasonalClosure"
    #   resp.routes[0].legs[0].ferry_leg_details.notices[0].impact #=> String, one of "High", "Low"
    #   resp.routes[0].legs[0].ferry_leg_details.pass_through_waypoints #=> Array
    #   resp.routes[0].legs[0].ferry_leg_details.pass_through_waypoints[0].geometry_offset #=> Integer
    #   resp.routes[0].legs[0].ferry_leg_details.pass_through_waypoints[0].place.original_position #=> Array
    #   resp.routes[0].legs[0].ferry_leg_details.pass_through_waypoints[0].place.original_position[0] #=> Float
    #   resp.routes[0].legs[0].ferry_leg_details.pass_through_waypoints[0].place.position #=> Array
    #   resp.routes[0].legs[0].ferry_leg_details.pass_through_waypoints[0].place.position[0] #=> Float
    #   resp.routes[0].legs[0].ferry_leg_details.pass_through_waypoints[0].place.waypoint_index #=> Integer
    #   resp.routes[0].legs[0].ferry_leg_details.route_name #=> String
    #   resp.routes[0].legs[0].ferry_leg_details.spans #=> Array
    #   resp.routes[0].legs[0].ferry_leg_details.spans[0].country #=> String
    #   resp.routes[0].legs[0].ferry_leg_details.spans[0].distance #=> Integer
    #   resp.routes[0].legs[0].ferry_leg_details.spans[0].duration #=> Integer
    #   resp.routes[0].legs[0].ferry_leg_details.spans[0].geometry_offset #=> Integer
    #   resp.routes[0].legs[0].ferry_leg_details.spans[0].names #=> Array
    #   resp.routes[0].legs[0].ferry_leg_details.spans[0].names[0].language #=> String
    #   resp.routes[0].legs[0].ferry_leg_details.spans[0].names[0].value #=> String
    #   resp.routes[0].legs[0].ferry_leg_details.spans[0].region #=> String
    #   resp.routes[0].legs[0].ferry_leg_details.summary.overview.distance #=> Integer
    #   resp.routes[0].legs[0].ferry_leg_details.summary.overview.duration #=> Integer
    #   resp.routes[0].legs[0].ferry_leg_details.summary.travel_only.duration #=> Integer
    #   resp.routes[0].legs[0].ferry_leg_details.travel_steps #=> Array
    #   resp.routes[0].legs[0].ferry_leg_details.travel_steps[0].distance #=> Integer
    #   resp.routes[0].legs[0].ferry_leg_details.travel_steps[0].duration #=> Integer
    #   resp.routes[0].legs[0].ferry_leg_details.travel_steps[0].geometry_offset #=> Integer
    #   resp.routes[0].legs[0].ferry_leg_details.travel_steps[0].instruction #=> String
    #   resp.routes[0].legs[0].ferry_leg_details.travel_steps[0].type #=> String, one of "Depart", "Continue", "Arrive"
    #   resp.routes[0].legs[0].geometry.line_string #=> Array
    #   resp.routes[0].legs[0].geometry.line_string[0] #=> Array
    #   resp.routes[0].legs[0].geometry.line_string[0][0] #=> Float
    #   resp.routes[0].legs[0].geometry.polyline #=> String
    #   resp.routes[0].legs[0].language #=> String
    #   resp.routes[0].legs[0].pedestrian_leg_details.arrival.place.name #=> String
    #   resp.routes[0].legs[0].pedestrian_leg_details.arrival.place.original_position #=> Array
    #   resp.routes[0].legs[0].pedestrian_leg_details.arrival.place.original_position[0] #=> Float
    #   resp.routes[0].legs[0].pedestrian_leg_details.arrival.place.position #=> Array
    #   resp.routes[0].legs[0].pedestrian_leg_details.arrival.place.position[0] #=> Float
    #   resp.routes[0].legs[0].pedestrian_leg_details.arrival.place.side_of_street #=> String, one of "Left", "Right"
    #   resp.routes[0].legs[0].pedestrian_leg_details.arrival.place.waypoint_index #=> Integer
    #   resp.routes[0].legs[0].pedestrian_leg_details.arrival.time #=> String
    #   resp.routes[0].legs[0].pedestrian_leg_details.departure.place.name #=> String
    #   resp.routes[0].legs[0].pedestrian_leg_details.departure.place.original_position #=> Array
    #   resp.routes[0].legs[0].pedestrian_leg_details.departure.place.original_position[0] #=> Float
    #   resp.routes[0].legs[0].pedestrian_leg_details.departure.place.position #=> Array
    #   resp.routes[0].legs[0].pedestrian_leg_details.departure.place.position[0] #=> Float
    #   resp.routes[0].legs[0].pedestrian_leg_details.departure.place.side_of_street #=> String, one of "Left", "Right"
    #   resp.routes[0].legs[0].pedestrian_leg_details.departure.place.waypoint_index #=> Integer
    #   resp.routes[0].legs[0].pedestrian_leg_details.departure.time #=> String
    #   resp.routes[0].legs[0].pedestrian_leg_details.notices #=> Array
    #   resp.routes[0].legs[0].pedestrian_leg_details.notices[0].code #=> String, one of "AccuratePolylineUnavailable", "Other", "ViolatedAvoidDirtRoad", "ViolatedAvoidTunnel", "ViolatedPedestrianOption"
    #   resp.routes[0].legs[0].pedestrian_leg_details.notices[0].impact #=> String, one of "High", "Low"
    #   resp.routes[0].legs[0].pedestrian_leg_details.pass_through_waypoints #=> Array
    #   resp.routes[0].legs[0].pedestrian_leg_details.pass_through_waypoints[0].geometry_offset #=> Integer
    #   resp.routes[0].legs[0].pedestrian_leg_details.pass_through_waypoints[0].place.original_position #=> Array
    #   resp.routes[0].legs[0].pedestrian_leg_details.pass_through_waypoints[0].place.original_position[0] #=> Float
    #   resp.routes[0].legs[0].pedestrian_leg_details.pass_through_waypoints[0].place.position #=> Array
    #   resp.routes[0].legs[0].pedestrian_leg_details.pass_through_waypoints[0].place.position[0] #=> Float
    #   resp.routes[0].legs[0].pedestrian_leg_details.pass_through_waypoints[0].place.waypoint_index #=> Integer
    #   resp.routes[0].legs[0].pedestrian_leg_details.spans #=> Array
    #   resp.routes[0].legs[0].pedestrian_leg_details.spans[0].best_case_duration #=> Integer
    #   resp.routes[0].legs[0].pedestrian_leg_details.spans[0].country #=> String
    #   resp.routes[0].legs[0].pedestrian_leg_details.spans[0].distance #=> Integer
    #   resp.routes[0].legs[0].pedestrian_leg_details.spans[0].duration #=> Integer
    #   resp.routes[0].legs[0].pedestrian_leg_details.spans[0].dynamic_speed.best_case_speed #=> Float
    #   resp.routes[0].legs[0].pedestrian_leg_details.spans[0].dynamic_speed.turn_duration #=> Integer
    #   resp.routes[0].legs[0].pedestrian_leg_details.spans[0].dynamic_speed.typical_speed #=> Float
    #   resp.routes[0].legs[0].pedestrian_leg_details.spans[0].functional_classification #=> Integer
    #   resp.routes[0].legs[0].pedestrian_leg_details.spans[0].geometry_offset #=> Integer
    #   resp.routes[0].legs[0].pedestrian_leg_details.spans[0].incidents #=> Array
    #   resp.routes[0].legs[0].pedestrian_leg_details.spans[0].incidents[0] #=> Integer
    #   resp.routes[0].legs[0].pedestrian_leg_details.spans[0].names #=> Array
    #   resp.routes[0].legs[0].pedestrian_leg_details.spans[0].names[0].language #=> String
    #   resp.routes[0].legs[0].pedestrian_leg_details.spans[0].names[0].value #=> String
    #   resp.routes[0].legs[0].pedestrian_leg_details.spans[0].pedestrian_access #=> Array
    #   resp.routes[0].legs[0].pedestrian_leg_details.spans[0].pedestrian_access[0] #=> String, one of "Allowed", "Indoors", "NoThroughTraffic", "Park", "Stairs", "TollRoad"
    #   resp.routes[0].legs[0].pedestrian_leg_details.spans[0].region #=> String
    #   resp.routes[0].legs[0].pedestrian_leg_details.spans[0].road_attributes #=> Array
    #   resp.routes[0].legs[0].pedestrian_leg_details.spans[0].road_attributes[0] #=> String, one of "Bridge", "BuiltUpArea", "ControlledAccessHighway", "DirtRoad", "DividedRoad", "Motorway", "PrivateRoad", "Ramp", "RightHandTraffic", "Roundabout", "Tunnel", "UnderConstruction"
    #   resp.routes[0].legs[0].pedestrian_leg_details.spans[0].route_numbers #=> Array
    #   resp.routes[0].legs[0].pedestrian_leg_details.spans[0].route_numbers[0].direction #=> String, one of "East", "North", "South", "West"
    #   resp.routes[0].legs[0].pedestrian_leg_details.spans[0].route_numbers[0].language #=> String
    #   resp.routes[0].legs[0].pedestrian_leg_details.spans[0].route_numbers[0].value #=> String
    #   resp.routes[0].legs[0].pedestrian_leg_details.spans[0].speed_limit.max_speed #=> Float
    #   resp.routes[0].legs[0].pedestrian_leg_details.spans[0].speed_limit.unlimited #=> Boolean
    #   resp.routes[0].legs[0].pedestrian_leg_details.spans[0].typical_duration #=> Integer
    #   resp.routes[0].legs[0].pedestrian_leg_details.summary.overview.distance #=> Integer
    #   resp.routes[0].legs[0].pedestrian_leg_details.summary.overview.duration #=> Integer
    #   resp.routes[0].legs[0].pedestrian_leg_details.summary.travel_only.duration #=> Integer
    #   resp.routes[0].legs[0].pedestrian_leg_details.travel_steps #=> Array
    #   resp.routes[0].legs[0].pedestrian_leg_details.travel_steps[0].continue_step_details.intersection #=> Array
    #   resp.routes[0].legs[0].pedestrian_leg_details.travel_steps[0].continue_step_details.intersection[0].language #=> String
    #   resp.routes[0].legs[0].pedestrian_leg_details.travel_steps[0].continue_step_details.intersection[0].value #=> String
    #   resp.routes[0].legs[0].pedestrian_leg_details.travel_steps[0].current_road.road_name #=> Array
    #   resp.routes[0].legs[0].pedestrian_leg_details.travel_steps[0].current_road.road_name[0].language #=> String
    #   resp.routes[0].legs[0].pedestrian_leg_details.travel_steps[0].current_road.road_name[0].value #=> String
    #   resp.routes[0].legs[0].pedestrian_leg_details.travel_steps[0].current_road.route_number #=> Array
    #   resp.routes[0].legs[0].pedestrian_leg_details.travel_steps[0].current_road.route_number[0].direction #=> String, one of "East", "North", "South", "West"
    #   resp.routes[0].legs[0].pedestrian_leg_details.travel_steps[0].current_road.route_number[0].language #=> String
    #   resp.routes[0].legs[0].pedestrian_leg_details.travel_steps[0].current_road.route_number[0].value #=> String
    #   resp.routes[0].legs[0].pedestrian_leg_details.travel_steps[0].current_road.towards #=> Array
    #   resp.routes[0].legs[0].pedestrian_leg_details.travel_steps[0].current_road.towards[0].language #=> String
    #   resp.routes[0].legs[0].pedestrian_leg_details.travel_steps[0].current_road.towards[0].value #=> String
    #   resp.routes[0].legs[0].pedestrian_leg_details.travel_steps[0].current_road.type #=> String, one of "Highway", "Rural", "Urban"
    #   resp.routes[0].legs[0].pedestrian_leg_details.travel_steps[0].distance #=> Integer
    #   resp.routes[0].legs[0].pedestrian_leg_details.travel_steps[0].duration #=> Integer
    #   resp.routes[0].legs[0].pedestrian_leg_details.travel_steps[0].exit_number #=> Array
    #   resp.routes[0].legs[0].pedestrian_leg_details.travel_steps[0].exit_number[0].language #=> String
    #   resp.routes[0].legs[0].pedestrian_leg_details.travel_steps[0].exit_number[0].value #=> String
    #   resp.routes[0].legs[0].pedestrian_leg_details.travel_steps[0].geometry_offset #=> Integer
    #   resp.routes[0].legs[0].pedestrian_leg_details.travel_steps[0].instruction #=> String
    #   resp.routes[0].legs[0].pedestrian_leg_details.travel_steps[0].keep_step_details.intersection #=> Array
    #   resp.routes[0].legs[0].pedestrian_leg_details.travel_steps[0].keep_step_details.intersection[0].language #=> String
    #   resp.routes[0].legs[0].pedestrian_leg_details.travel_steps[0].keep_step_details.intersection[0].value #=> String
    #   resp.routes[0].legs[0].pedestrian_leg_details.travel_steps[0].keep_step_details.steering_direction #=> String, one of "Left", "Right", "Straight"
    #   resp.routes[0].legs[0].pedestrian_leg_details.travel_steps[0].keep_step_details.turn_angle #=> Float
    #   resp.routes[0].legs[0].pedestrian_leg_details.travel_steps[0].keep_step_details.turn_intensity #=> String, one of "Sharp", "Slight", "Typical"
    #   resp.routes[0].legs[0].pedestrian_leg_details.travel_steps[0].next_road.road_name #=> Array
    #   resp.routes[0].legs[0].pedestrian_leg_details.travel_steps[0].next_road.road_name[0].language #=> String
    #   resp.routes[0].legs[0].pedestrian_leg_details.travel_steps[0].next_road.road_name[0].value #=> String
    #   resp.routes[0].legs[0].pedestrian_leg_details.travel_steps[0].next_road.route_number #=> Array
    #   resp.routes[0].legs[0].pedestrian_leg_details.travel_steps[0].next_road.route_number[0].direction #=> String, one of "East", "North", "South", "West"
    #   resp.routes[0].legs[0].pedestrian_leg_details.travel_steps[0].next_road.route_number[0].language #=> String
    #   resp.routes[0].legs[0].pedestrian_leg_details.travel_steps[0].next_road.route_number[0].value #=> String
    #   resp.routes[0].legs[0].pedestrian_leg_details.travel_steps[0].next_road.towards #=> Array
    #   resp.routes[0].legs[0].pedestrian_leg_details.travel_steps[0].next_road.towards[0].language #=> String
    #   resp.routes[0].legs[0].pedestrian_leg_details.travel_steps[0].next_road.towards[0].value #=> String
    #   resp.routes[0].legs[0].pedestrian_leg_details.travel_steps[0].next_road.type #=> String, one of "Highway", "Rural", "Urban"
    #   resp.routes[0].legs[0].pedestrian_leg_details.travel_steps[0].roundabout_enter_step_details.intersection #=> Array
    #   resp.routes[0].legs[0].pedestrian_leg_details.travel_steps[0].roundabout_enter_step_details.intersection[0].language #=> String
    #   resp.routes[0].legs[0].pedestrian_leg_details.travel_steps[0].roundabout_enter_step_details.intersection[0].value #=> String
    #   resp.routes[0].legs[0].pedestrian_leg_details.travel_steps[0].roundabout_enter_step_details.steering_direction #=> String, one of "Left", "Right", "Straight"
    #   resp.routes[0].legs[0].pedestrian_leg_details.travel_steps[0].roundabout_enter_step_details.turn_angle #=> Float
    #   resp.routes[0].legs[0].pedestrian_leg_details.travel_steps[0].roundabout_enter_step_details.turn_intensity #=> String, one of "Sharp", "Slight", "Typical"
    #   resp.routes[0].legs[0].pedestrian_leg_details.travel_steps[0].roundabout_exit_step_details.intersection #=> Array
    #   resp.routes[0].legs[0].pedestrian_leg_details.travel_steps[0].roundabout_exit_step_details.intersection[0].language #=> String
    #   resp.routes[0].legs[0].pedestrian_leg_details.travel_steps[0].roundabout_exit_step_details.intersection[0].value #=> String
    #   resp.routes[0].legs[0].pedestrian_leg_details.travel_steps[0].roundabout_exit_step_details.relative_exit #=> Integer
    #   resp.routes[0].legs[0].pedestrian_leg_details.travel_steps[0].roundabout_exit_step_details.roundabout_angle #=> Float
    #   resp.routes[0].legs[0].pedestrian_leg_details.travel_steps[0].roundabout_exit_step_details.steering_direction #=> String, one of "Left", "Right", "Straight"
    #   resp.routes[0].legs[0].pedestrian_leg_details.travel_steps[0].roundabout_pass_step_details.intersection #=> Array
    #   resp.routes[0].legs[0].pedestrian_leg_details.travel_steps[0].roundabout_pass_step_details.intersection[0].language #=> String
    #   resp.routes[0].legs[0].pedestrian_leg_details.travel_steps[0].roundabout_pass_step_details.intersection[0].value #=> String
    #   resp.routes[0].legs[0].pedestrian_leg_details.travel_steps[0].roundabout_pass_step_details.steering_direction #=> String, one of "Left", "Right", "Straight"
    #   resp.routes[0].legs[0].pedestrian_leg_details.travel_steps[0].roundabout_pass_step_details.turn_angle #=> Float
    #   resp.routes[0].legs[0].pedestrian_leg_details.travel_steps[0].roundabout_pass_step_details.turn_intensity #=> String, one of "Sharp", "Slight", "Typical"
    #   resp.routes[0].legs[0].pedestrian_leg_details.travel_steps[0].signpost.labels #=> Array
    #   resp.routes[0].legs[0].pedestrian_leg_details.travel_steps[0].signpost.labels[0].route_number.direction #=> String, one of "East", "North", "South", "West"
    #   resp.routes[0].legs[0].pedestrian_leg_details.travel_steps[0].signpost.labels[0].route_number.language #=> String
    #   resp.routes[0].legs[0].pedestrian_leg_details.travel_steps[0].signpost.labels[0].route_number.value #=> String
    #   resp.routes[0].legs[0].pedestrian_leg_details.travel_steps[0].signpost.labels[0].text.language #=> String
    #   resp.routes[0].legs[0].pedestrian_leg_details.travel_steps[0].signpost.labels[0].text.value #=> String
    #   resp.routes[0].legs[0].pedestrian_leg_details.travel_steps[0].turn_step_details.intersection #=> Array
    #   resp.routes[0].legs[0].pedestrian_leg_details.travel_steps[0].turn_step_details.intersection[0].language #=> String
    #   resp.routes[0].legs[0].pedestrian_leg_details.travel_steps[0].turn_step_details.intersection[0].value #=> String
    #   resp.routes[0].legs[0].pedestrian_leg_details.travel_steps[0].turn_step_details.steering_direction #=> String, one of "Left", "Right", "Straight"
    #   resp.routes[0].legs[0].pedestrian_leg_details.travel_steps[0].turn_step_details.turn_angle #=> Float
    #   resp.routes[0].legs[0].pedestrian_leg_details.travel_steps[0].turn_step_details.turn_intensity #=> String, one of "Sharp", "Slight", "Typical"
    #   resp.routes[0].legs[0].pedestrian_leg_details.travel_steps[0].type #=> String, one of "Arrive", "Continue", "Depart", "Keep", "RoundaboutEnter", "RoundaboutExit", "RoundaboutPass", "Turn", "Exit", "Ramp", "UTurn"
    #   resp.routes[0].legs[0].travel_mode #=> String, one of "Car", "Ferry", "Pedestrian", "Scooter", "Truck", "CarShuttleTrain"
    #   resp.routes[0].legs[0].type #=> String, one of "Ferry", "Pedestrian", "Vehicle"
    #   resp.routes[0].legs[0].vehicle_leg_details.arrival.place.name #=> String
    #   resp.routes[0].legs[0].vehicle_leg_details.arrival.place.original_position #=> Array
    #   resp.routes[0].legs[0].vehicle_leg_details.arrival.place.original_position[0] #=> Float
    #   resp.routes[0].legs[0].vehicle_leg_details.arrival.place.position #=> Array
    #   resp.routes[0].legs[0].vehicle_leg_details.arrival.place.position[0] #=> Float
    #   resp.routes[0].legs[0].vehicle_leg_details.arrival.place.side_of_street #=> String, one of "Left", "Right"
    #   resp.routes[0].legs[0].vehicle_leg_details.arrival.place.waypoint_index #=> Integer
    #   resp.routes[0].legs[0].vehicle_leg_details.arrival.time #=> String
    #   resp.routes[0].legs[0].vehicle_leg_details.departure.place.name #=> String
    #   resp.routes[0].legs[0].vehicle_leg_details.departure.place.original_position #=> Array
    #   resp.routes[0].legs[0].vehicle_leg_details.departure.place.original_position[0] #=> Float
    #   resp.routes[0].legs[0].vehicle_leg_details.departure.place.position #=> Array
    #   resp.routes[0].legs[0].vehicle_leg_details.departure.place.position[0] #=> Float
    #   resp.routes[0].legs[0].vehicle_leg_details.departure.place.side_of_street #=> String, one of "Left", "Right"
    #   resp.routes[0].legs[0].vehicle_leg_details.departure.place.waypoint_index #=> Integer
    #   resp.routes[0].legs[0].vehicle_leg_details.departure.time #=> String
    #   resp.routes[0].legs[0].vehicle_leg_details.incidents #=> Array
    #   resp.routes[0].legs[0].vehicle_leg_details.incidents[0].description #=> String
    #   resp.routes[0].legs[0].vehicle_leg_details.incidents[0].end_time #=> String
    #   resp.routes[0].legs[0].vehicle_leg_details.incidents[0].severity #=> String, one of "Critical", "High", "Medium", "Low"
    #   resp.routes[0].legs[0].vehicle_leg_details.incidents[0].start_time #=> String
    #   resp.routes[0].legs[0].vehicle_leg_details.incidents[0].type #=> String, one of "Accident", "Congestion", "Construction", "DisabledVehicle", "LaneRestriction", "MassTransit", "Other", "PlannedEvent", "RoadClosure", "RoadHazard", "Weather"
    #   resp.routes[0].legs[0].vehicle_leg_details.notices #=> Array
    #   resp.routes[0].legs[0].vehicle_leg_details.notices[0].code #=> String, one of "AccuratePolylineUnavailable", "Other", "PotentialViolatedAvoidTollRoadUsage", "PotentialViolatedCarpoolUsage", "PotentialViolatedTurnRestrictionUsage", "PotentialViolatedVehicleRestrictionUsage", "PotentialViolatedZoneRestrictionUsage", "SeasonalClosure", "TollsDataTemporarilyUnavailable", "TollsDataUnavailable", "TollTransponder", "ViolatedAvoidControlledAccessHighway", "ViolatedAvoidDifficultTurns", "ViolatedAvoidDirtRoad", "ViolatedAvoidSeasonalClosure", "ViolatedAvoidTollRoad", "ViolatedAvoidTollTransponder", "ViolatedAvoidTruckRoadType", "ViolatedAvoidTunnel", "ViolatedAvoidUTurns", "ViolatedBlockedRoad", "ViolatedCarpool", "ViolatedEmergencyGate", "ViolatedStartDirection", "ViolatedTurnRestriction", "ViolatedVehicleRestriction", "ViolatedZoneRestriction"
    #   resp.routes[0].legs[0].vehicle_leg_details.notices[0].details #=> Array
    #   resp.routes[0].legs[0].vehicle_leg_details.notices[0].details[0].title #=> String
    #   resp.routes[0].legs[0].vehicle_leg_details.notices[0].details[0].violated_constraints.all_hazards_restricted #=> Boolean
    #   resp.routes[0].legs[0].vehicle_leg_details.notices[0].details[0].violated_constraints.axle_count.min #=> Integer
    #   resp.routes[0].legs[0].vehicle_leg_details.notices[0].details[0].violated_constraints.axle_count.max #=> Integer
    #   resp.routes[0].legs[0].vehicle_leg_details.notices[0].details[0].violated_constraints.hazardous_cargos #=> Array
    #   resp.routes[0].legs[0].vehicle_leg_details.notices[0].details[0].violated_constraints.hazardous_cargos[0] #=> String, one of "Combustible", "Corrosive", "Explosive", "Flammable", "Gas", "HarmfulToWater", "Organic", "Other", "Poison", "PoisonousInhalation", "Radioactive"
    #   resp.routes[0].legs[0].vehicle_leg_details.notices[0].details[0].violated_constraints.max_height #=> Integer
    #   resp.routes[0].legs[0].vehicle_leg_details.notices[0].details[0].violated_constraints.max_kpra_length #=> Integer
    #   resp.routes[0].legs[0].vehicle_leg_details.notices[0].details[0].violated_constraints.max_length #=> Integer
    #   resp.routes[0].legs[0].vehicle_leg_details.notices[0].details[0].violated_constraints.max_payload_capacity #=> Integer
    #   resp.routes[0].legs[0].vehicle_leg_details.notices[0].details[0].violated_constraints.max_weight.type #=> String, one of "Current", "Gross", "Unknown"
    #   resp.routes[0].legs[0].vehicle_leg_details.notices[0].details[0].violated_constraints.max_weight.value #=> Integer
    #   resp.routes[0].legs[0].vehicle_leg_details.notices[0].details[0].violated_constraints.max_weight_per_axle #=> Integer
    #   resp.routes[0].legs[0].vehicle_leg_details.notices[0].details[0].violated_constraints.max_weight_per_axle_group.single #=> Integer
    #   resp.routes[0].legs[0].vehicle_leg_details.notices[0].details[0].violated_constraints.max_weight_per_axle_group.tandem #=> Integer
    #   resp.routes[0].legs[0].vehicle_leg_details.notices[0].details[0].violated_constraints.max_weight_per_axle_group.triple #=> Integer
    #   resp.routes[0].legs[0].vehicle_leg_details.notices[0].details[0].violated_constraints.max_weight_per_axle_group.quad #=> Integer
    #   resp.routes[0].legs[0].vehicle_leg_details.notices[0].details[0].violated_constraints.max_weight_per_axle_group.quint #=> Integer
    #   resp.routes[0].legs[0].vehicle_leg_details.notices[0].details[0].violated_constraints.max_width #=> Integer
    #   resp.routes[0].legs[0].vehicle_leg_details.notices[0].details[0].violated_constraints.occupancy.min #=> Integer
    #   resp.routes[0].legs[0].vehicle_leg_details.notices[0].details[0].violated_constraints.occupancy.max #=> Integer
    #   resp.routes[0].legs[0].vehicle_leg_details.notices[0].details[0].violated_constraints.restricted_times #=> String
    #   resp.routes[0].legs[0].vehicle_leg_details.notices[0].details[0].violated_constraints.time_dependent #=> Boolean
    #   resp.routes[0].legs[0].vehicle_leg_details.notices[0].details[0].violated_constraints.trailer_count.min #=> Integer
    #   resp.routes[0].legs[0].vehicle_leg_details.notices[0].details[0].violated_constraints.trailer_count.max #=> Integer
    #   resp.routes[0].legs[0].vehicle_leg_details.notices[0].details[0].violated_constraints.travel_mode #=> Boolean
    #   resp.routes[0].legs[0].vehicle_leg_details.notices[0].details[0].violated_constraints.truck_road_type #=> String
    #   resp.routes[0].legs[0].vehicle_leg_details.notices[0].details[0].violated_constraints.truck_type #=> String, one of "LightTruck", "StraightTruck", "Tractor"
    #   resp.routes[0].legs[0].vehicle_leg_details.notices[0].details[0].violated_constraints.tunnel_restriction_code #=> String
    #   resp.routes[0].legs[0].vehicle_leg_details.notices[0].impact #=> String, one of "High", "Low"
    #   resp.routes[0].legs[0].vehicle_leg_details.pass_through_waypoints #=> Array
    #   resp.routes[0].legs[0].vehicle_leg_details.pass_through_waypoints[0].geometry_offset #=> Integer
    #   resp.routes[0].legs[0].vehicle_leg_details.pass_through_waypoints[0].place.original_position #=> Array
    #   resp.routes[0].legs[0].vehicle_leg_details.pass_through_waypoints[0].place.original_position[0] #=> Float
    #   resp.routes[0].legs[0].vehicle_leg_details.pass_through_waypoints[0].place.position #=> Array
    #   resp.routes[0].legs[0].vehicle_leg_details.pass_through_waypoints[0].place.position[0] #=> Float
    #   resp.routes[0].legs[0].vehicle_leg_details.pass_through_waypoints[0].place.waypoint_index #=> Integer
    #   resp.routes[0].legs[0].vehicle_leg_details.spans #=> Array
    #   resp.routes[0].legs[0].vehicle_leg_details.spans[0].best_case_duration #=> Integer
    #   resp.routes[0].legs[0].vehicle_leg_details.spans[0].car_access #=> Array
    #   resp.routes[0].legs[0].vehicle_leg_details.spans[0].car_access[0] #=> String, one of "Allowed", "NoThroughTraffic", "TollRoad"
    #   resp.routes[0].legs[0].vehicle_leg_details.spans[0].country #=> String
    #   resp.routes[0].legs[0].vehicle_leg_details.spans[0].distance #=> Integer
    #   resp.routes[0].legs[0].vehicle_leg_details.spans[0].duration #=> Integer
    #   resp.routes[0].legs[0].vehicle_leg_details.spans[0].dynamic_speed.best_case_speed #=> Float
    #   resp.routes[0].legs[0].vehicle_leg_details.spans[0].dynamic_speed.turn_duration #=> Integer
    #   resp.routes[0].legs[0].vehicle_leg_details.spans[0].dynamic_speed.typical_speed #=> Float
    #   resp.routes[0].legs[0].vehicle_leg_details.spans[0].functional_classification #=> Integer
    #   resp.routes[0].legs[0].vehicle_leg_details.spans[0].gate #=> String, one of "Emergency", "KeyAccess", "PermissionRequired"
    #   resp.routes[0].legs[0].vehicle_leg_details.spans[0].geometry_offset #=> Integer
    #   resp.routes[0].legs[0].vehicle_leg_details.spans[0].incidents #=> Array
    #   resp.routes[0].legs[0].vehicle_leg_details.spans[0].incidents[0] #=> Integer
    #   resp.routes[0].legs[0].vehicle_leg_details.spans[0].names #=> Array
    #   resp.routes[0].legs[0].vehicle_leg_details.spans[0].names[0].language #=> String
    #   resp.routes[0].legs[0].vehicle_leg_details.spans[0].names[0].value #=> String
    #   resp.routes[0].legs[0].vehicle_leg_details.spans[0].notices #=> Array
    #   resp.routes[0].legs[0].vehicle_leg_details.spans[0].notices[0] #=> Integer
    #   resp.routes[0].legs[0].vehicle_leg_details.spans[0].railway_crossing #=> String, one of "Protected", "Unprotected"
    #   resp.routes[0].legs[0].vehicle_leg_details.spans[0].region #=> String
    #   resp.routes[0].legs[0].vehicle_leg_details.spans[0].road_attributes #=> Array
    #   resp.routes[0].legs[0].vehicle_leg_details.spans[0].road_attributes[0] #=> String, one of "Bridge", "BuiltUpArea", "ControlledAccessHighway", "DirtRoad", "DividedRoad", "Motorway", "PrivateRoad", "Ramp", "RightHandTraffic", "Roundabout", "Tunnel", "UnderConstruction"
    #   resp.routes[0].legs[0].vehicle_leg_details.spans[0].route_numbers #=> Array
    #   resp.routes[0].legs[0].vehicle_leg_details.spans[0].route_numbers[0].direction #=> String, one of "East", "North", "South", "West"
    #   resp.routes[0].legs[0].vehicle_leg_details.spans[0].route_numbers[0].language #=> String
    #   resp.routes[0].legs[0].vehicle_leg_details.spans[0].route_numbers[0].value #=> String
    #   resp.routes[0].legs[0].vehicle_leg_details.spans[0].scooter_access #=> Array
    #   resp.routes[0].legs[0].vehicle_leg_details.spans[0].scooter_access[0] #=> String, one of "Allowed", "NoThroughTraffic", "TollRoad"
    #   resp.routes[0].legs[0].vehicle_leg_details.spans[0].speed_limit.max_speed #=> Float
    #   resp.routes[0].legs[0].vehicle_leg_details.spans[0].speed_limit.unlimited #=> Boolean
    #   resp.routes[0].legs[0].vehicle_leg_details.spans[0].toll_systems #=> Array
    #   resp.routes[0].legs[0].vehicle_leg_details.spans[0].toll_systems[0] #=> Integer
    #   resp.routes[0].legs[0].vehicle_leg_details.spans[0].truck_access #=> Array
    #   resp.routes[0].legs[0].vehicle_leg_details.spans[0].truck_access[0] #=> String, one of "Allowed", "NoThroughTraffic", "TollRoad"
    #   resp.routes[0].legs[0].vehicle_leg_details.spans[0].truck_road_types #=> Array
    #   resp.routes[0].legs[0].vehicle_leg_details.spans[0].truck_road_types[0] #=> Integer
    #   resp.routes[0].legs[0].vehicle_leg_details.spans[0].typical_duration #=> Integer
    #   resp.routes[0].legs[0].vehicle_leg_details.spans[0].zones #=> Array
    #   resp.routes[0].legs[0].vehicle_leg_details.spans[0].zones[0] #=> Integer
    #   resp.routes[0].legs[0].vehicle_leg_details.summary.overview.best_case_duration #=> Integer
    #   resp.routes[0].legs[0].vehicle_leg_details.summary.overview.distance #=> Integer
    #   resp.routes[0].legs[0].vehicle_leg_details.summary.overview.duration #=> Integer
    #   resp.routes[0].legs[0].vehicle_leg_details.summary.overview.typical_duration #=> Integer
    #   resp.routes[0].legs[0].vehicle_leg_details.summary.travel_only.best_case_duration #=> Integer
    #   resp.routes[0].legs[0].vehicle_leg_details.summary.travel_only.duration #=> Integer
    #   resp.routes[0].legs[0].vehicle_leg_details.summary.travel_only.typical_duration #=> Integer
    #   resp.routes[0].legs[0].vehicle_leg_details.tolls #=> Array
    #   resp.routes[0].legs[0].vehicle_leg_details.tolls[0].country #=> String
    #   resp.routes[0].legs[0].vehicle_leg_details.tolls[0].payment_sites #=> Array
    #   resp.routes[0].legs[0].vehicle_leg_details.tolls[0].payment_sites[0].name #=> String
    #   resp.routes[0].legs[0].vehicle_leg_details.tolls[0].payment_sites[0].position #=> Array
    #   resp.routes[0].legs[0].vehicle_leg_details.tolls[0].payment_sites[0].position[0] #=> Float
    #   resp.routes[0].legs[0].vehicle_leg_details.tolls[0].rates #=> Array
    #   resp.routes[0].legs[0].vehicle_leg_details.tolls[0].rates[0].applicable_times #=> String
    #   resp.routes[0].legs[0].vehicle_leg_details.tolls[0].rates[0].converted_price.currency #=> String
    #   resp.routes[0].legs[0].vehicle_leg_details.tolls[0].rates[0].converted_price.estimate #=> Boolean
    #   resp.routes[0].legs[0].vehicle_leg_details.tolls[0].rates[0].converted_price.per_duration #=> Integer
    #   resp.routes[0].legs[0].vehicle_leg_details.tolls[0].rates[0].converted_price.range #=> Boolean
    #   resp.routes[0].legs[0].vehicle_leg_details.tolls[0].rates[0].converted_price.range_value.min #=> Float
    #   resp.routes[0].legs[0].vehicle_leg_details.tolls[0].rates[0].converted_price.range_value.max #=> Float
    #   resp.routes[0].legs[0].vehicle_leg_details.tolls[0].rates[0].converted_price.value #=> Float
    #   resp.routes[0].legs[0].vehicle_leg_details.tolls[0].rates[0].id #=> String
    #   resp.routes[0].legs[0].vehicle_leg_details.tolls[0].rates[0].local_price.currency #=> String
    #   resp.routes[0].legs[0].vehicle_leg_details.tolls[0].rates[0].local_price.estimate #=> Boolean
    #   resp.routes[0].legs[0].vehicle_leg_details.tolls[0].rates[0].local_price.per_duration #=> Integer
    #   resp.routes[0].legs[0].vehicle_leg_details.tolls[0].rates[0].local_price.range #=> Boolean
    #   resp.routes[0].legs[0].vehicle_leg_details.tolls[0].rates[0].local_price.range_value.min #=> Float
    #   resp.routes[0].legs[0].vehicle_leg_details.tolls[0].rates[0].local_price.range_value.max #=> Float
    #   resp.routes[0].legs[0].vehicle_leg_details.tolls[0].rates[0].local_price.value #=> Float
    #   resp.routes[0].legs[0].vehicle_leg_details.tolls[0].rates[0].name #=> String
    #   resp.routes[0].legs[0].vehicle_leg_details.tolls[0].rates[0].pass.includes_return_trip #=> Boolean
    #   resp.routes[0].legs[0].vehicle_leg_details.tolls[0].rates[0].pass.senior_pass #=> Boolean
    #   resp.routes[0].legs[0].vehicle_leg_details.tolls[0].rates[0].pass.transfer_count #=> Integer
    #   resp.routes[0].legs[0].vehicle_leg_details.tolls[0].rates[0].pass.trip_count #=> Integer
    #   resp.routes[0].legs[0].vehicle_leg_details.tolls[0].rates[0].pass.validity_period.period #=> String, one of "Annual", "Days", "ExtendedAnnual", "Minutes", "Months"
    #   resp.routes[0].legs[0].vehicle_leg_details.tolls[0].rates[0].pass.validity_period.period_count #=> Integer
    #   resp.routes[0].legs[0].vehicle_leg_details.tolls[0].rates[0].payment_methods #=> Array
    #   resp.routes[0].legs[0].vehicle_leg_details.tolls[0].rates[0].payment_methods[0] #=> String, one of "BankCard", "Cash", "CashExact", "CreditCard", "PassSubscription", "TravelCard", "Transponder", "VideoToll"
    #   resp.routes[0].legs[0].vehicle_leg_details.tolls[0].rates[0].transponders #=> Array
    #   resp.routes[0].legs[0].vehicle_leg_details.tolls[0].rates[0].transponders[0].system_name #=> String
    #   resp.routes[0].legs[0].vehicle_leg_details.tolls[0].systems #=> Array
    #   resp.routes[0].legs[0].vehicle_leg_details.tolls[0].systems[0] #=> Integer
    #   resp.routes[0].legs[0].vehicle_leg_details.toll_systems #=> Array
    #   resp.routes[0].legs[0].vehicle_leg_details.toll_systems[0].name #=> String
    #   resp.routes[0].legs[0].vehicle_leg_details.travel_steps #=> Array
    #   resp.routes[0].legs[0].vehicle_leg_details.travel_steps[0].continue_highway_step_details.intersection #=> Array
    #   resp.routes[0].legs[0].vehicle_leg_details.travel_steps[0].continue_highway_step_details.intersection[0].language #=> String
    #   resp.routes[0].legs[0].vehicle_leg_details.travel_steps[0].continue_highway_step_details.intersection[0].value #=> String
    #   resp.routes[0].legs[0].vehicle_leg_details.travel_steps[0].continue_highway_step_details.steering_direction #=> String, one of "Left", "Right", "Straight"
    #   resp.routes[0].legs[0].vehicle_leg_details.travel_steps[0].continue_highway_step_details.turn_angle #=> Float
    #   resp.routes[0].legs[0].vehicle_leg_details.travel_steps[0].continue_highway_step_details.turn_intensity #=> String, one of "Sharp", "Slight", "Typical"
    #   resp.routes[0].legs[0].vehicle_leg_details.travel_steps[0].continue_step_details.intersection #=> Array
    #   resp.routes[0].legs[0].vehicle_leg_details.travel_steps[0].continue_step_details.intersection[0].language #=> String
    #   resp.routes[0].legs[0].vehicle_leg_details.travel_steps[0].continue_step_details.intersection[0].value #=> String
    #   resp.routes[0].legs[0].vehicle_leg_details.travel_steps[0].current_road.road_name #=> Array
    #   resp.routes[0].legs[0].vehicle_leg_details.travel_steps[0].current_road.road_name[0].language #=> String
    #   resp.routes[0].legs[0].vehicle_leg_details.travel_steps[0].current_road.road_name[0].value #=> String
    #   resp.routes[0].legs[0].vehicle_leg_details.travel_steps[0].current_road.route_number #=> Array
    #   resp.routes[0].legs[0].vehicle_leg_details.travel_steps[0].current_road.route_number[0].direction #=> String, one of "East", "North", "South", "West"
    #   resp.routes[0].legs[0].vehicle_leg_details.travel_steps[0].current_road.route_number[0].language #=> String
    #   resp.routes[0].legs[0].vehicle_leg_details.travel_steps[0].current_road.route_number[0].value #=> String
    #   resp.routes[0].legs[0].vehicle_leg_details.travel_steps[0].current_road.towards #=> Array
    #   resp.routes[0].legs[0].vehicle_leg_details.travel_steps[0].current_road.towards[0].language #=> String
    #   resp.routes[0].legs[0].vehicle_leg_details.travel_steps[0].current_road.towards[0].value #=> String
    #   resp.routes[0].legs[0].vehicle_leg_details.travel_steps[0].current_road.type #=> String, one of "Highway", "Rural", "Urban"
    #   resp.routes[0].legs[0].vehicle_leg_details.travel_steps[0].distance #=> Integer
    #   resp.routes[0].legs[0].vehicle_leg_details.travel_steps[0].duration #=> Integer
    #   resp.routes[0].legs[0].vehicle_leg_details.travel_steps[0].enter_highway_step_details.intersection #=> Array
    #   resp.routes[0].legs[0].vehicle_leg_details.travel_steps[0].enter_highway_step_details.intersection[0].language #=> String
    #   resp.routes[0].legs[0].vehicle_leg_details.travel_steps[0].enter_highway_step_details.intersection[0].value #=> String
    #   resp.routes[0].legs[0].vehicle_leg_details.travel_steps[0].enter_highway_step_details.steering_direction #=> String, one of "Left", "Right", "Straight"
    #   resp.routes[0].legs[0].vehicle_leg_details.travel_steps[0].enter_highway_step_details.turn_angle #=> Float
    #   resp.routes[0].legs[0].vehicle_leg_details.travel_steps[0].enter_highway_step_details.turn_intensity #=> String, one of "Sharp", "Slight", "Typical"
    #   resp.routes[0].legs[0].vehicle_leg_details.travel_steps[0].exit_number #=> Array
    #   resp.routes[0].legs[0].vehicle_leg_details.travel_steps[0].exit_number[0].language #=> String
    #   resp.routes[0].legs[0].vehicle_leg_details.travel_steps[0].exit_number[0].value #=> String
    #   resp.routes[0].legs[0].vehicle_leg_details.travel_steps[0].exit_step_details.intersection #=> Array
    #   resp.routes[0].legs[0].vehicle_leg_details.travel_steps[0].exit_step_details.intersection[0].language #=> String
    #   resp.routes[0].legs[0].vehicle_leg_details.travel_steps[0].exit_step_details.intersection[0].value #=> String
    #   resp.routes[0].legs[0].vehicle_leg_details.travel_steps[0].exit_step_details.relative_exit #=> Integer
    #   resp.routes[0].legs[0].vehicle_leg_details.travel_steps[0].exit_step_details.steering_direction #=> String, one of "Left", "Right", "Straight"
    #   resp.routes[0].legs[0].vehicle_leg_details.travel_steps[0].exit_step_details.turn_angle #=> Float
    #   resp.routes[0].legs[0].vehicle_leg_details.travel_steps[0].exit_step_details.turn_intensity #=> String, one of "Sharp", "Slight", "Typical"
    #   resp.routes[0].legs[0].vehicle_leg_details.travel_steps[0].geometry_offset #=> Integer
    #   resp.routes[0].legs[0].vehicle_leg_details.travel_steps[0].instruction #=> String
    #   resp.routes[0].legs[0].vehicle_leg_details.travel_steps[0].keep_step_details.intersection #=> Array
    #   resp.routes[0].legs[0].vehicle_leg_details.travel_steps[0].keep_step_details.intersection[0].language #=> String
    #   resp.routes[0].legs[0].vehicle_leg_details.travel_steps[0].keep_step_details.intersection[0].value #=> String
    #   resp.routes[0].legs[0].vehicle_leg_details.travel_steps[0].keep_step_details.steering_direction #=> String, one of "Left", "Right", "Straight"
    #   resp.routes[0].legs[0].vehicle_leg_details.travel_steps[0].keep_step_details.turn_angle #=> Float
    #   resp.routes[0].legs[0].vehicle_leg_details.travel_steps[0].keep_step_details.turn_intensity #=> String, one of "Sharp", "Slight", "Typical"
    #   resp.routes[0].legs[0].vehicle_leg_details.travel_steps[0].next_road.road_name #=> Array
    #   resp.routes[0].legs[0].vehicle_leg_details.travel_steps[0].next_road.road_name[0].language #=> String
    #   resp.routes[0].legs[0].vehicle_leg_details.travel_steps[0].next_road.road_name[0].value #=> String
    #   resp.routes[0].legs[0].vehicle_leg_details.travel_steps[0].next_road.route_number #=> Array
    #   resp.routes[0].legs[0].vehicle_leg_details.travel_steps[0].next_road.route_number[0].direction #=> String, one of "East", "North", "South", "West"
    #   resp.routes[0].legs[0].vehicle_leg_details.travel_steps[0].next_road.route_number[0].language #=> String
    #   resp.routes[0].legs[0].vehicle_leg_details.travel_steps[0].next_road.route_number[0].value #=> String
    #   resp.routes[0].legs[0].vehicle_leg_details.travel_steps[0].next_road.towards #=> Array
    #   resp.routes[0].legs[0].vehicle_leg_details.travel_steps[0].next_road.towards[0].language #=> String
    #   resp.routes[0].legs[0].vehicle_leg_details.travel_steps[0].next_road.towards[0].value #=> String
    #   resp.routes[0].legs[0].vehicle_leg_details.travel_steps[0].next_road.type #=> String, one of "Highway", "Rural", "Urban"
    #   resp.routes[0].legs[0].vehicle_leg_details.travel_steps[0].ramp_step_details.intersection #=> Array
    #   resp.routes[0].legs[0].vehicle_leg_details.travel_steps[0].ramp_step_details.intersection[0].language #=> String
    #   resp.routes[0].legs[0].vehicle_leg_details.travel_steps[0].ramp_step_details.intersection[0].value #=> String
    #   resp.routes[0].legs[0].vehicle_leg_details.travel_steps[0].ramp_step_details.steering_direction #=> String, one of "Left", "Right", "Straight"
    #   resp.routes[0].legs[0].vehicle_leg_details.travel_steps[0].ramp_step_details.turn_angle #=> Float
    #   resp.routes[0].legs[0].vehicle_leg_details.travel_steps[0].ramp_step_details.turn_intensity #=> String, one of "Sharp", "Slight", "Typical"
    #   resp.routes[0].legs[0].vehicle_leg_details.travel_steps[0].roundabout_enter_step_details.intersection #=> Array
    #   resp.routes[0].legs[0].vehicle_leg_details.travel_steps[0].roundabout_enter_step_details.intersection[0].language #=> String
    #   resp.routes[0].legs[0].vehicle_leg_details.travel_steps[0].roundabout_enter_step_details.intersection[0].value #=> String
    #   resp.routes[0].legs[0].vehicle_leg_details.travel_steps[0].roundabout_enter_step_details.steering_direction #=> String, one of "Left", "Right", "Straight"
    #   resp.routes[0].legs[0].vehicle_leg_details.travel_steps[0].roundabout_enter_step_details.turn_angle #=> Float
    #   resp.routes[0].legs[0].vehicle_leg_details.travel_steps[0].roundabout_enter_step_details.turn_intensity #=> String, one of "Sharp", "Slight", "Typical"
    #   resp.routes[0].legs[0].vehicle_leg_details.travel_steps[0].roundabout_exit_step_details.intersection #=> Array
    #   resp.routes[0].legs[0].vehicle_leg_details.travel_steps[0].roundabout_exit_step_details.intersection[0].language #=> String
    #   resp.routes[0].legs[0].vehicle_leg_details.travel_steps[0].roundabout_exit_step_details.intersection[0].value #=> String
    #   resp.routes[0].legs[0].vehicle_leg_details.travel_steps[0].roundabout_exit_step_details.relative_exit #=> Integer
    #   resp.routes[0].legs[0].vehicle_leg_details.travel_steps[0].roundabout_exit_step_details.roundabout_angle #=> Float
    #   resp.routes[0].legs[0].vehicle_leg_details.travel_steps[0].roundabout_exit_step_details.steering_direction #=> String, one of "Left", "Right", "Straight"
    #   resp.routes[0].legs[0].vehicle_leg_details.travel_steps[0].roundabout_pass_step_details.intersection #=> Array
    #   resp.routes[0].legs[0].vehicle_leg_details.travel_steps[0].roundabout_pass_step_details.intersection[0].language #=> String
    #   resp.routes[0].legs[0].vehicle_leg_details.travel_steps[0].roundabout_pass_step_details.intersection[0].value #=> String
    #   resp.routes[0].legs[0].vehicle_leg_details.travel_steps[0].roundabout_pass_step_details.steering_direction #=> String, one of "Left", "Right", "Straight"
    #   resp.routes[0].legs[0].vehicle_leg_details.travel_steps[0].roundabout_pass_step_details.turn_angle #=> Float
    #   resp.routes[0].legs[0].vehicle_leg_details.travel_steps[0].roundabout_pass_step_details.turn_intensity #=> String, one of "Sharp", "Slight", "Typical"
    #   resp.routes[0].legs[0].vehicle_leg_details.travel_steps[0].signpost.labels #=> Array
    #   resp.routes[0].legs[0].vehicle_leg_details.travel_steps[0].signpost.labels[0].route_number.direction #=> String, one of "East", "North", "South", "West"
    #   resp.routes[0].legs[0].vehicle_leg_details.travel_steps[0].signpost.labels[0].route_number.language #=> String
    #   resp.routes[0].legs[0].vehicle_leg_details.travel_steps[0].signpost.labels[0].route_number.value #=> String
    #   resp.routes[0].legs[0].vehicle_leg_details.travel_steps[0].signpost.labels[0].text.language #=> String
    #   resp.routes[0].legs[0].vehicle_leg_details.travel_steps[0].signpost.labels[0].text.value #=> String
    #   resp.routes[0].legs[0].vehicle_leg_details.travel_steps[0].turn_step_details.intersection #=> Array
    #   resp.routes[0].legs[0].vehicle_leg_details.travel_steps[0].turn_step_details.intersection[0].language #=> String
    #   resp.routes[0].legs[0].vehicle_leg_details.travel_steps[0].turn_step_details.intersection[0].value #=> String
    #   resp.routes[0].legs[0].vehicle_leg_details.travel_steps[0].turn_step_details.steering_direction #=> String, one of "Left", "Right", "Straight"
    #   resp.routes[0].legs[0].vehicle_leg_details.travel_steps[0].turn_step_details.turn_angle #=> Float
    #   resp.routes[0].legs[0].vehicle_leg_details.travel_steps[0].turn_step_details.turn_intensity #=> String, one of "Sharp", "Slight", "Typical"
    #   resp.routes[0].legs[0].vehicle_leg_details.travel_steps[0].type #=> String, one of "Arrive", "Continue", "ContinueHighway", "Depart", "EnterHighway", "Exit", "Keep", "Ramp", "RoundaboutEnter", "RoundaboutExit", "RoundaboutPass", "Turn", "UTurn"
    #   resp.routes[0].legs[0].vehicle_leg_details.travel_steps[0].u_turn_step_details.intersection #=> Array
    #   resp.routes[0].legs[0].vehicle_leg_details.travel_steps[0].u_turn_step_details.intersection[0].language #=> String
    #   resp.routes[0].legs[0].vehicle_leg_details.travel_steps[0].u_turn_step_details.intersection[0].value #=> String
    #   resp.routes[0].legs[0].vehicle_leg_details.travel_steps[0].u_turn_step_details.steering_direction #=> String, one of "Left", "Right", "Straight"
    #   resp.routes[0].legs[0].vehicle_leg_details.travel_steps[0].u_turn_step_details.turn_angle #=> Float
    #   resp.routes[0].legs[0].vehicle_leg_details.travel_steps[0].u_turn_step_details.turn_intensity #=> String, one of "Sharp", "Slight", "Typical"
    #   resp.routes[0].legs[0].vehicle_leg_details.truck_road_types #=> Array
    #   resp.routes[0].legs[0].vehicle_leg_details.truck_road_types[0] #=> String
    #   resp.routes[0].legs[0].vehicle_leg_details.zones #=> Array
    #   resp.routes[0].legs[0].vehicle_leg_details.zones[0].category #=> String, one of "CongestionPricing", "Environmental", "Vignette"
    #   resp.routes[0].legs[0].vehicle_leg_details.zones[0].name #=> String
    #   resp.routes[0].major_road_labels #=> Array
    #   resp.routes[0].major_road_labels[0].road_name.language #=> String
    #   resp.routes[0].major_road_labels[0].road_name.value #=> String
    #   resp.routes[0].major_road_labels[0].route_number.direction #=> String, one of "East", "North", "South", "West"
    #   resp.routes[0].major_road_labels[0].route_number.language #=> String
    #   resp.routes[0].major_road_labels[0].route_number.value #=> String
    #   resp.routes[0].summary.distance #=> Integer
    #   resp.routes[0].summary.duration #=> Integer
    #   resp.routes[0].summary.tolls.total.currency #=> String
    #   resp.routes[0].summary.tolls.total.estimate #=> Boolean
    #   resp.routes[0].summary.tolls.total.range #=> Boolean
    #   resp.routes[0].summary.tolls.total.range_value.min #=> Float
    #   resp.routes[0].summary.tolls.total.range_value.max #=> Float
    #   resp.routes[0].summary.tolls.total.value #=> Float
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/CalculateRoutes AWS API Documentation
    #
    # @overload calculate_routes(params = {})
    # @param [Hash] params ({})
    def calculate_routes(params = {}, options = {})
      req = build_request(:calculate_routes, params)
      req.send_request(options)
    end

    # `OptimizeWaypoints` calculates the optimal order to travel between a
    # set of waypoints to minimize either the travel time or the distance
    # travelled during the journey, based on road network restrictions and
    # the traffic pattern data.
    #
    # @option params [Types::WaypointOptimizationAvoidanceOptions] :avoid
    #   Features that are avoided. Avoidance is on a best-case basis. If an
    #   avoidance can't be satisfied for a particular case, this setting is
    #   ignored.
    #
    # @option params [Types::WaypointOptimizationClusteringOptions] :clustering
    #   Clustering allows you to specify how nearby waypoints can be clustered
    #   to improve the optimized sequence.
    #
    # @option params [String] :departure_time
    #   Departure time from the waypoint.
    #
    #   Time format:`YYYY-MM-DDThh:mm:ss.sssZ | YYYY-MM-DDThh:mm:ss.sss+hh:mm`
    #
    #   Examples:
    #
    #   `2020-04-22T17:57:24Z`
    #
    #   `2020-04-22T17:57:24+02:00`
    #
    # @option params [Array<Float>] :destination
    #   The final position for the route in the World Geodetic System (WGS 84)
    #   format: `[longitude, latitude]`.
    #
    # @option params [Types::WaypointOptimizationDestinationOptions] :destination_options
    #   Destination related options.
    #
    # @option params [Types::WaypointOptimizationDriverOptions] :driver
    #   Driver related options.
    #
    # @option params [Types::WaypointOptimizationExclusionOptions] :exclude
    #   Features to be strictly excluded while calculating the route.
    #
    # @option params [String] :key
    #   Optional: The API key to be used for authorization. Either an API key
    #   or valid SigV4 signature must be provided when making a request.
    #
    # @option params [String] :optimize_sequencing_for
    #   Specifies the optimization criteria for the calculated sequence.
    #
    #   Default Value: `FastestRoute`.
    #
    # @option params [required, Array<Float>] :origin
    #   The start position for the route.
    #
    # @option params [Types::WaypointOptimizationOriginOptions] :origin_options
    #   Origin related options.
    #
    # @option params [Types::WaypointOptimizationTrafficOptions] :traffic
    #   Traffic-related options.
    #
    # @option params [String] :travel_mode
    #   Specifies the mode of transport when calculating a route. Used in
    #   estimating the speed of travel and road compatibility.
    #
    #   Default Value: `Car`
    #
    # @option params [Types::WaypointOptimizationTravelModeOptions] :travel_mode_options
    #   Travel mode related options for the provided travel mode.
    #
    # @option params [Array<Types::WaypointOptimizationWaypoint>] :waypoints
    #   List of waypoints between the `Origin` and `Destination`.
    #
    # @return [Types::OptimizeWaypointsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::OptimizeWaypointsResponse#connections #connections} => Array&lt;Types::WaypointOptimizationConnection&gt;
    #   * {Types::OptimizeWaypointsResponse#distance #distance} => Integer
    #   * {Types::OptimizeWaypointsResponse#duration #duration} => Integer
    #   * {Types::OptimizeWaypointsResponse#impeding_waypoints #impeding_waypoints} => Array&lt;Types::WaypointOptimizationImpedingWaypoint&gt;
    #   * {Types::OptimizeWaypointsResponse#optimized_waypoints #optimized_waypoints} => Array&lt;Types::WaypointOptimizationOptimizedWaypoint&gt;
    #   * {Types::OptimizeWaypointsResponse#pricing_bucket #pricing_bucket} => String
    #   * {Types::OptimizeWaypointsResponse#time_breakdown #time_breakdown} => Types::WaypointOptimizationTimeBreakdown
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.optimize_waypoints({
    #     avoid: {
    #       areas: [
    #         {
    #           geometry: { # required
    #             bounding_box: [1.0],
    #           },
    #         },
    #       ],
    #       car_shuttle_trains: false,
    #       controlled_access_highways: false,
    #       dirt_roads: false,
    #       ferries: false,
    #       toll_roads: false,
    #       tunnels: false,
    #       u_turns: false,
    #     },
    #     clustering: {
    #       algorithm: "DrivingDistance", # required, accepts DrivingDistance, TopologySegment
    #       driving_distance_options: {
    #         driving_distance: 1, # required
    #       },
    #     },
    #     departure_time: "TimestampWithTimezoneOffset",
    #     destination: [1.0],
    #     destination_options: {
    #       access_hours: {
    #         from: { # required
    #           day_of_week: "Monday", # required, accepts Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday
    #           time_of_day: "TimeOfDay", # required
    #         },
    #         to: { # required
    #           day_of_week: "Monday", # required, accepts Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday
    #           time_of_day: "TimeOfDay", # required
    #         },
    #       },
    #       appointment_time: "TimestampWithTimezoneOffset",
    #       heading: 1.0,
    #       id: "WaypointId",
    #       service_duration: 1,
    #       side_of_street: {
    #         position: [1.0], # required
    #         use_with: "AnyStreet", # accepts AnyStreet, DividedStreetOnly
    #       },
    #     },
    #     driver: {
    #       rest_cycles: {
    #         long_cycle: { # required
    #           rest_duration: 1, # required
    #           work_duration: 1, # required
    #         },
    #         short_cycle: { # required
    #           rest_duration: 1, # required
    #           work_duration: 1, # required
    #         },
    #       },
    #       rest_profile: {
    #         profile: "WaypointOptimizationRestProfileProfileString", # required
    #       },
    #       treat_service_time_as: "Rest", # accepts Rest, Work
    #     },
    #     exclude: {
    #       countries: ["CountryCode"], # required
    #     },
    #     key: "ApiKey",
    #     optimize_sequencing_for: "FastestRoute", # accepts FastestRoute, ShortestRoute
    #     origin: [1.0], # required
    #     origin_options: {
    #       id: "WaypointId",
    #     },
    #     traffic: {
    #       usage: "IgnoreTrafficData", # accepts IgnoreTrafficData, UseTrafficData
    #     },
    #     travel_mode: "Car", # accepts Car, Pedestrian, Scooter, Truck
    #     travel_mode_options: {
    #       pedestrian: {
    #         speed: 1.0,
    #       },
    #       truck: {
    #         gross_weight: 1,
    #         hazardous_cargos: ["Combustible"], # accepts Combustible, Corrosive, Explosive, Flammable, Gas, HarmfulToWater, Organic, Other, Poison, PoisonousInhalation, Radioactive
    #         height: 1,
    #         length: 1,
    #         trailer: {
    #           trailer_count: 1,
    #         },
    #         truck_type: "StraightTruck", # accepts StraightTruck, Tractor
    #         tunnel_restriction_code: "TunnelRestrictionCode",
    #         weight_per_axle: 1,
    #         width: 1,
    #       },
    #     },
    #     waypoints: [
    #       {
    #         access_hours: {
    #           from: { # required
    #             day_of_week: "Monday", # required, accepts Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday
    #             time_of_day: "TimeOfDay", # required
    #           },
    #           to: { # required
    #             day_of_week: "Monday", # required, accepts Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday
    #             time_of_day: "TimeOfDay", # required
    #           },
    #         },
    #         appointment_time: "TimestampWithTimezoneOffset",
    #         before: [1],
    #         heading: 1.0,
    #         id: "WaypointId",
    #         position: [1.0], # required
    #         service_duration: 1,
    #         side_of_street: {
    #           position: [1.0], # required
    #           use_with: "AnyStreet", # accepts AnyStreet, DividedStreetOnly
    #         },
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.connections #=> Array
    #   resp.connections[0].distance #=> Integer
    #   resp.connections[0].from #=> String
    #   resp.connections[0].rest_duration #=> Integer
    #   resp.connections[0].to #=> String
    #   resp.connections[0].travel_duration #=> Integer
    #   resp.connections[0].wait_duration #=> Integer
    #   resp.distance #=> Integer
    #   resp.duration #=> Integer
    #   resp.impeding_waypoints #=> Array
    #   resp.impeding_waypoints[0].failed_constraints #=> Array
    #   resp.impeding_waypoints[0].failed_constraints[0].constraint #=> String, one of "AccessHours", "AppointmentTime", "Before", "Heading", "ServiceDuration", "SideOfStreet"
    #   resp.impeding_waypoints[0].failed_constraints[0].reason #=> String
    #   resp.impeding_waypoints[0].id #=> String
    #   resp.impeding_waypoints[0].position #=> Array
    #   resp.impeding_waypoints[0].position[0] #=> Float
    #   resp.optimized_waypoints #=> Array
    #   resp.optimized_waypoints[0].arrival_time #=> String
    #   resp.optimized_waypoints[0].cluster_index #=> Integer
    #   resp.optimized_waypoints[0].departure_time #=> String
    #   resp.optimized_waypoints[0].id #=> String
    #   resp.optimized_waypoints[0].position #=> Array
    #   resp.optimized_waypoints[0].position[0] #=> Float
    #   resp.pricing_bucket #=> String
    #   resp.time_breakdown.rest_duration #=> Integer
    #   resp.time_breakdown.service_duration #=> Integer
    #   resp.time_breakdown.travel_duration #=> Integer
    #   resp.time_breakdown.wait_duration #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/OptimizeWaypoints AWS API Documentation
    #
    # @overload optimize_waypoints(params = {})
    # @param [Hash] params ({})
    def optimize_waypoints(params = {}, options = {})
      req = build_request(:optimize_waypoints, params)
      req.send_request(options)
    end

    # `SnapToRoads` matches GPS trace to roads most likely traveled on.
    #
    # @option params [String] :key
    #   Optional: The API key to be used for authorization. Either an API key
    #   or valid SigV4 signature must be provided when making a request.
    #
    # @option params [String] :snapped_geometry_format
    #   Chooses what the returned SnappedGeometry format should be.
    #
    #   Default Value: `FlexiblePolyline`
    #
    # @option params [Integer] :snap_radius
    #   The radius around the provided tracepoint that is considered for
    #   snapping.
    #
    #   **Unit**: `meters`
    #
    #   Default value: `300`
    #
    # @option params [required, Array<Types::RoadSnapTracePoint>] :trace_points
    #   List of trace points to be snapped onto the road network.
    #
    # @option params [String] :travel_mode
    #   Specifies the mode of transport when calculating a route. Used in
    #   estimating the speed of travel and road compatibility.
    #
    #   Default Value: `Car`
    #
    # @option params [Types::RoadSnapTravelModeOptions] :travel_mode_options
    #   Travel mode related options for the provided travel mode.
    #
    # @return [Types::SnapToRoadsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SnapToRoadsResponse#notices #notices} => Array&lt;Types::RoadSnapNotice&gt;
    #   * {Types::SnapToRoadsResponse#pricing_bucket #pricing_bucket} => String
    #   * {Types::SnapToRoadsResponse#snapped_geometry #snapped_geometry} => Types::RoadSnapSnappedGeometry
    #   * {Types::SnapToRoadsResponse#snapped_geometry_format #snapped_geometry_format} => String
    #   * {Types::SnapToRoadsResponse#snapped_trace_points #snapped_trace_points} => Array&lt;Types::RoadSnapSnappedTracePoint&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.snap_to_roads({
    #     key: "ApiKey",
    #     snapped_geometry_format: "FlexiblePolyline", # accepts FlexiblePolyline, Simple
    #     snap_radius: 1,
    #     trace_points: [ # required
    #       {
    #         heading: 1.0,
    #         position: [1.0], # required
    #         speed: 1.0,
    #         timestamp: "TimestampWithTimezoneOffset",
    #       },
    #     ],
    #     travel_mode: "Car", # accepts Car, Pedestrian, Scooter, Truck
    #     travel_mode_options: {
    #       truck: {
    #         gross_weight: 1,
    #         hazardous_cargos: ["Combustible"], # accepts Combustible, Corrosive, Explosive, Flammable, Gas, HarmfulToWater, Organic, Other, Poison, PoisonousInhalation, Radioactive
    #         height: 1,
    #         length: 1,
    #         trailer: {
    #           trailer_count: 1,
    #         },
    #         tunnel_restriction_code: "TunnelRestrictionCode",
    #         width: 1,
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.notices #=> Array
    #   resp.notices[0].code #=> String, one of "TracePointsHeadingIgnored", "TracePointsIgnored", "TracePointsMovedByLargeDistance", "TracePointsNotMatched", "TracePointsOutOfSequence", "TracePointsSpeedEstimated", "TracePointsSpeedIgnored"
    #   resp.notices[0].title #=> String
    #   resp.notices[0].trace_point_indexes #=> Array
    #   resp.notices[0].trace_point_indexes[0] #=> Integer
    #   resp.pricing_bucket #=> String
    #   resp.snapped_geometry.line_string #=> Array
    #   resp.snapped_geometry.line_string[0] #=> Array
    #   resp.snapped_geometry.line_string[0][0] #=> Float
    #   resp.snapped_geometry.polyline #=> String
    #   resp.snapped_geometry_format #=> String, one of "FlexiblePolyline", "Simple"
    #   resp.snapped_trace_points #=> Array
    #   resp.snapped_trace_points[0].confidence #=> Float
    #   resp.snapped_trace_points[0].original_position #=> Array
    #   resp.snapped_trace_points[0].original_position[0] #=> Float
    #   resp.snapped_trace_points[0].snapped_position #=> Array
    #   resp.snapped_trace_points[0].snapped_position[0] #=> Float
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/SnapToRoads AWS API Documentation
    #
    # @overload snap_to_roads(params = {})
    # @param [Hash] params ({})
    def snap_to_roads(params = {}, options = {})
      req = build_request(:snap_to_roads, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::GeoRoutes')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-georoutes'
      context[:gem_version] = '1.9.0'
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
