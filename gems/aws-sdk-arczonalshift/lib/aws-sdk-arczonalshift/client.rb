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

module Aws::ARCZonalShift
  # An API client for ARCZonalShift.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::ARCZonalShift::Client.new(
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

    @identifier = :arczonalshift

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
    add_plugin(Aws::ARCZonalShift::Plugins::Endpoints)

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
    #   @option options [Aws::ARCZonalShift::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::ARCZonalShift::EndpointParameters`.
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

    # Cancel an in-progress practice run zonal shift in Amazon Application
    # Recovery Controller.
    #
    # @option params [required, String] :zonal_shift_id
    #   The identifier of a practice run zonal shift in Amazon Application
    #   Recovery Controller that you want to cancel.
    #
    # @return [Types::CancelPracticeRunResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CancelPracticeRunResponse#zonal_shift_id #zonal_shift_id} => String
    #   * {Types::CancelPracticeRunResponse#resource_identifier #resource_identifier} => String
    #   * {Types::CancelPracticeRunResponse#away_from #away_from} => String
    #   * {Types::CancelPracticeRunResponse#expiry_time #expiry_time} => Time
    #   * {Types::CancelPracticeRunResponse#start_time #start_time} => Time
    #   * {Types::CancelPracticeRunResponse#status #status} => String
    #   * {Types::CancelPracticeRunResponse#comment #comment} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_practice_run({
    #     zonal_shift_id: "ZonalShiftId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.zonal_shift_id #=> String
    #   resp.resource_identifier #=> String
    #   resp.away_from #=> String
    #   resp.expiry_time #=> Time
    #   resp.start_time #=> Time
    #   resp.status #=> String, one of "ACTIVE", "EXPIRED", "CANCELED"
    #   resp.comment #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-zonal-shift-2022-10-30/CancelPracticeRun AWS API Documentation
    #
    # @overload cancel_practice_run(params = {})
    # @param [Hash] params ({})
    def cancel_practice_run(params = {}, options = {})
      req = build_request(:cancel_practice_run, params)
      req.send_request(options)
    end

    # Cancel a zonal shift in Amazon Application Recovery Controller. To
    # cancel the zonal shift, specify the zonal shift ID.
    #
    # A zonal shift can be one that you've started for a resource in your
    # Amazon Web Services account in an Amazon Web Services Region, or it
    # can be a zonal shift started by a practice run with zonal autoshift.
    #
    # @option params [required, String] :zonal_shift_id
    #   The internally-generated identifier of a zonal shift.
    #
    # @return [Types::ZonalShift] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ZonalShift#zonal_shift_id #zonal_shift_id} => String
    #   * {Types::ZonalShift#resource_identifier #resource_identifier} => String
    #   * {Types::ZonalShift#away_from #away_from} => String
    #   * {Types::ZonalShift#expiry_time #expiry_time} => Time
    #   * {Types::ZonalShift#start_time #start_time} => Time
    #   * {Types::ZonalShift#status #status} => String
    #   * {Types::ZonalShift#comment #comment} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_zonal_shift({
    #     zonal_shift_id: "ZonalShiftId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.zonal_shift_id #=> String
    #   resp.resource_identifier #=> String
    #   resp.away_from #=> String
    #   resp.expiry_time #=> Time
    #   resp.start_time #=> Time
    #   resp.status #=> String, one of "ACTIVE", "EXPIRED", "CANCELED"
    #   resp.comment #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-zonal-shift-2022-10-30/CancelZonalShift AWS API Documentation
    #
    # @overload cancel_zonal_shift(params = {})
    # @param [Hash] params ({})
    def cancel_zonal_shift(params = {}, options = {})
      req = build_request(:cancel_zonal_shift, params)
      req.send_request(options)
    end

    # A practice run configuration for zonal autoshift is required when you
    # enable zonal autoshift. A practice run configuration includes
    # specifications for blocked dates and blocked time windows, and for
    # Amazon CloudWatch alarms that you create to use with practice runs.
    # The alarms that you specify are an *outcome alarm*, to monitor
    # application health during practice runs and, optionally, a *blocking
    # alarm*, to block practice runs from starting.
    #
    # When a resource has a practice run configuration, ARC starts zonal
    # shifts for the resource weekly, to shift traffic for practice runs.
    # Practice runs help you to ensure that shifting away traffic from an
    # Availability Zone during an autoshift is safe for your application.
    #
    # For more information, see [ Considerations when you configure zonal
    # autoshift][1] in the Amazon Application Recovery Controller Developer
    # Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/r53recovery/latest/dg/arc-zonal-autoshift.considerations.html
    #
    # @option params [required, String] :resource_identifier
    #   The identifier of the resource that Amazon Web Services shifts traffic
    #   for with a practice run zonal shift. The identifier is the Amazon
    #   Resource Name (ARN) for the resource.
    #
    #   Amazon Application Recovery Controller currently supports enabling the
    #   following resources for zonal shift and zonal autoshift:
    #
    #   * [Amazon EC2 Auto Scaling groups][1]
    #
    #   * [Amazon Elastic Kubernetes Service][2]
    #
    #   * [Application Load Balancer][3]
    #
    #   * [Network Load Balancer][4]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/r53recovery/latest/dg/arc-zonal-shift.resource-types.ec2-auto-scaling-groups.html
    #   [2]: https://docs.aws.amazon.com/r53recovery/latest/dg/arc-zonal-shift.resource-types.eks.html
    #   [3]: https://docs.aws.amazon.com/r53recovery/latest/dg/arc-zonal-shift.resource-types.app-load-balancers.html
    #   [4]: https://docs.aws.amazon.com/r53recovery/latest/dg/arc-zonal-shift.resource-types.network-load-balancers.html
    #
    # @option params [Array<String>] :blocked_windows
    #   Optionally, you can block ARC from starting practice runs for specific
    #   windows of days and times.
    #
    #   The format for blocked windows is: DAY:HH:SS-DAY:HH:SS. Keep in mind,
    #   when you specify dates, that dates and times for practice runs are in
    #   UTC. Also, be aware of potential time adjustments that might be
    #   required for daylight saving time differences. Separate multiple
    #   blocked windows with spaces.
    #
    #   For example, say you run business report summaries three days a week.
    #   For this scenario, you might set the following recurring days and
    #   times as blocked windows, for example: `MON-20:30-21:30
    #   WED-20:30-21:30 FRI-20:30-21:30`.
    #
    # @option params [Array<String>] :blocked_dates
    #   Optionally, you can block ARC from starting practice runs for a
    #   resource on specific calendar dates.
    #
    #   The format for blocked dates is: YYYY-MM-DD. Keep in mind, when you
    #   specify dates, that dates and times for practice runs are in UTC.
    #   Separate multiple blocked dates with spaces.
    #
    #   For example, if you have an application update scheduled to launch on
    #   May 1, 2024, and you don't want practice runs to shift traffic away
    #   at that time, you could set a blocked date for `2024-05-01`.
    #
    # @option params [Array<Types::ControlCondition>] :blocking_alarms
    #   An Amazon CloudWatch alarm that you can specify for zonal autoshift
    #   practice runs. This alarm blocks ARC from starting practice run zonal
    #   shifts, and ends a practice run that's in progress, when the alarm is
    #   in an `ALARM` state.
    #
    # @option params [required, Array<Types::ControlCondition>] :outcome_alarms
    #   The *outcome alarm* for practice runs is a required Amazon CloudWatch
    #   alarm that you specify that ends a practice run when the alarm is in
    #   an `ALARM` state.
    #
    #   Configure the alarm to monitor the health of your application when
    #   traffic is shifted away from an Availability Zone during each practice
    #   run. You should configure the alarm to go into an `ALARM` state if
    #   your application is impacted by the zonal shift, and you want to stop
    #   the zonal shift, to let traffic for the resource return to the
    #   Availability Zone.
    #
    # @return [Types::CreatePracticeRunConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreatePracticeRunConfigurationResponse#arn #arn} => String
    #   * {Types::CreatePracticeRunConfigurationResponse#name #name} => String
    #   * {Types::CreatePracticeRunConfigurationResponse#zonal_autoshift_status #zonal_autoshift_status} => String
    #   * {Types::CreatePracticeRunConfigurationResponse#practice_run_configuration #practice_run_configuration} => Types::PracticeRunConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_practice_run_configuration({
    #     resource_identifier: "ResourceIdentifier", # required
    #     blocked_windows: ["BlockedWindow"],
    #     blocked_dates: ["BlockedDate"],
    #     blocking_alarms: [
    #       {
    #         type: "CLOUDWATCH", # required, accepts CLOUDWATCH
    #         alarm_identifier: "MetricIdentifier", # required
    #       },
    #     ],
    #     outcome_alarms: [ # required
    #       {
    #         type: "CLOUDWATCH", # required, accepts CLOUDWATCH
    #         alarm_identifier: "MetricIdentifier", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.name #=> String
    #   resp.zonal_autoshift_status #=> String, one of "ENABLED", "DISABLED"
    #   resp.practice_run_configuration.blocking_alarms #=> Array
    #   resp.practice_run_configuration.blocking_alarms[0].type #=> String, one of "CLOUDWATCH"
    #   resp.practice_run_configuration.blocking_alarms[0].alarm_identifier #=> String
    #   resp.practice_run_configuration.outcome_alarms #=> Array
    #   resp.practice_run_configuration.outcome_alarms[0].type #=> String, one of "CLOUDWATCH"
    #   resp.practice_run_configuration.outcome_alarms[0].alarm_identifier #=> String
    #   resp.practice_run_configuration.blocked_windows #=> Array
    #   resp.practice_run_configuration.blocked_windows[0] #=> String
    #   resp.practice_run_configuration.blocked_dates #=> Array
    #   resp.practice_run_configuration.blocked_dates[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-zonal-shift-2022-10-30/CreatePracticeRunConfiguration AWS API Documentation
    #
    # @overload create_practice_run_configuration(params = {})
    # @param [Hash] params ({})
    def create_practice_run_configuration(params = {}, options = {})
      req = build_request(:create_practice_run_configuration, params)
      req.send_request(options)
    end

    # Deletes the practice run configuration for a resource. Before you can
    # delete a practice run configuration for a resource., you must disable
    # zonal autoshift for the resource. Practice runs must be configured for
    # zonal autoshift to be enabled.
    #
    # @option params [required, String] :resource_identifier
    #   The identifier for the resource that you want to delete the practice
    #   run configuration for. The identifier is the Amazon Resource Name
    #   (ARN) for the resource.
    #
    # @return [Types::DeletePracticeRunConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeletePracticeRunConfigurationResponse#arn #arn} => String
    #   * {Types::DeletePracticeRunConfigurationResponse#name #name} => String
    #   * {Types::DeletePracticeRunConfigurationResponse#zonal_autoshift_status #zonal_autoshift_status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_practice_run_configuration({
    #     resource_identifier: "ResourceIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.name #=> String
    #   resp.zonal_autoshift_status #=> String, one of "ENABLED", "DISABLED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-zonal-shift-2022-10-30/DeletePracticeRunConfiguration AWS API Documentation
    #
    # @overload delete_practice_run_configuration(params = {})
    # @param [Hash] params ({})
    def delete_practice_run_configuration(params = {}, options = {})
      req = build_request(:delete_practice_run_configuration, params)
      req.send_request(options)
    end

    # Returns the status of the autoshift observer notification. Autoshift
    # observer notifications notify you through Amazon EventBridge when
    # there is an autoshift event for zonal autoshift. The status can be
    # `ENABLED` or `DISABLED`. When `ENABLED`, a notification is sent when
    # an autoshift is triggered. When `DISABLED`, notifications are not
    # sent.
    #
    # @return [Types::GetAutoshiftObserverNotificationStatusResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAutoshiftObserverNotificationStatusResponse#status #status} => String
    #
    # @example Response structure
    #
    #   resp.status #=> String, one of "ENABLED", "DISABLED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-zonal-shift-2022-10-30/GetAutoshiftObserverNotificationStatus AWS API Documentation
    #
    # @overload get_autoshift_observer_notification_status(params = {})
    # @param [Hash] params ({})
    def get_autoshift_observer_notification_status(params = {}, options = {})
      req = build_request(:get_autoshift_observer_notification_status, params)
      req.send_request(options)
    end

    # Get information about a resource that's been registered for zonal
    # shifts with Amazon Application Recovery Controller in this Amazon Web
    # Services Region. Resources that are registered for zonal shifts are
    # managed resources in ARC. You can start zonal shifts and configure
    # zonal autoshift for managed resources.
    #
    # @option params [required, String] :resource_identifier
    #   The identifier for the resource that Amazon Web Services shifts
    #   traffic for. The identifier is the Amazon Resource Name (ARN) for the
    #   resource.
    #
    #   Amazon Application Recovery Controller currently supports enabling the
    #   following resources for zonal shift and zonal autoshift:
    #
    #   * [Amazon EC2 Auto Scaling groups][1]
    #
    #   * [Amazon Elastic Kubernetes Service][2]
    #
    #   * [Application Load Balancer][3]
    #
    #   * [Network Load Balancer][4]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/r53recovery/latest/dg/arc-zonal-shift.resource-types.ec2-auto-scaling-groups.html
    #   [2]: https://docs.aws.amazon.com/r53recovery/latest/dg/arc-zonal-shift.resource-types.eks.html
    #   [3]: https://docs.aws.amazon.com/r53recovery/latest/dg/arc-zonal-shift.resource-types.app-load-balancers.html
    #   [4]: https://docs.aws.amazon.com/r53recovery/latest/dg/arc-zonal-shift.resource-types.network-load-balancers.html
    #
    # @return [Types::GetManagedResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetManagedResourceResponse#arn #arn} => String
    #   * {Types::GetManagedResourceResponse#name #name} => String
    #   * {Types::GetManagedResourceResponse#applied_weights #applied_weights} => Hash&lt;String,Float&gt;
    #   * {Types::GetManagedResourceResponse#zonal_shifts #zonal_shifts} => Array&lt;Types::ZonalShiftInResource&gt;
    #   * {Types::GetManagedResourceResponse#autoshifts #autoshifts} => Array&lt;Types::AutoshiftInResource&gt;
    #   * {Types::GetManagedResourceResponse#practice_run_configuration #practice_run_configuration} => Types::PracticeRunConfiguration
    #   * {Types::GetManagedResourceResponse#zonal_autoshift_status #zonal_autoshift_status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_managed_resource({
    #     resource_identifier: "ResourceIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.name #=> String
    #   resp.applied_weights #=> Hash
    #   resp.applied_weights["AvailabilityZone"] #=> Float
    #   resp.zonal_shifts #=> Array
    #   resp.zonal_shifts[0].applied_status #=> String, one of "APPLIED", "NOT_APPLIED"
    #   resp.zonal_shifts[0].zonal_shift_id #=> String
    #   resp.zonal_shifts[0].resource_identifier #=> String
    #   resp.zonal_shifts[0].away_from #=> String
    #   resp.zonal_shifts[0].expiry_time #=> Time
    #   resp.zonal_shifts[0].start_time #=> Time
    #   resp.zonal_shifts[0].comment #=> String
    #   resp.zonal_shifts[0].shift_type #=> String, one of "ZONAL_SHIFT", "PRACTICE_RUN", "FIS_EXPERIMENT", "ZONAL_AUTOSHIFT"
    #   resp.zonal_shifts[0].practice_run_outcome #=> String, one of "FAILED", "INTERRUPTED", "PENDING", "SUCCEEDED", "CAPACITY_CHECK_FAILED"
    #   resp.autoshifts #=> Array
    #   resp.autoshifts[0].applied_status #=> String, one of "APPLIED", "NOT_APPLIED"
    #   resp.autoshifts[0].away_from #=> String
    #   resp.autoshifts[0].start_time #=> Time
    #   resp.practice_run_configuration.blocking_alarms #=> Array
    #   resp.practice_run_configuration.blocking_alarms[0].type #=> String, one of "CLOUDWATCH"
    #   resp.practice_run_configuration.blocking_alarms[0].alarm_identifier #=> String
    #   resp.practice_run_configuration.outcome_alarms #=> Array
    #   resp.practice_run_configuration.outcome_alarms[0].type #=> String, one of "CLOUDWATCH"
    #   resp.practice_run_configuration.outcome_alarms[0].alarm_identifier #=> String
    #   resp.practice_run_configuration.blocked_windows #=> Array
    #   resp.practice_run_configuration.blocked_windows[0] #=> String
    #   resp.practice_run_configuration.blocked_dates #=> Array
    #   resp.practice_run_configuration.blocked_dates[0] #=> String
    #   resp.zonal_autoshift_status #=> String, one of "ENABLED", "DISABLED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-zonal-shift-2022-10-30/GetManagedResource AWS API Documentation
    #
    # @overload get_managed_resource(params = {})
    # @param [Hash] params ({})
    def get_managed_resource(params = {}, options = {})
      req = build_request(:get_managed_resource, params)
      req.send_request(options)
    end

    # Returns the autoshifts for an Amazon Web Services Region. By default,
    # the call returns only `ACTIVE` autoshifts. Optionally, you can specify
    # the `status` parameter to return `COMPLETED` autoshifts.
    #
    # @option params [String] :next_token
    #   Specifies that you want to receive the next page of results. Valid
    #   only if you received a `nextToken` response in the previous request.
    #   If you did, it indicates that more output is available. Set this
    #   parameter to the value provided by the previous call's `nextToken`
    #   response to request the next page of results.
    #
    # @option params [String] :status
    #   The status of the autoshift.
    #
    # @option params [Integer] :max_results
    #   The number of objects that you want to return with this call.
    #
    # @return [Types::ListAutoshiftsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAutoshiftsResponse#items #items} => Array&lt;Types::AutoshiftSummary&gt;
    #   * {Types::ListAutoshiftsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_autoshifts({
    #     next_token: "String",
    #     status: "ACTIVE", # accepts ACTIVE, COMPLETED
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].away_from #=> String
    #   resp.items[0].end_time #=> Time
    #   resp.items[0].start_time #=> Time
    #   resp.items[0].status #=> String, one of "ACTIVE", "COMPLETED"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-zonal-shift-2022-10-30/ListAutoshifts AWS API Documentation
    #
    # @overload list_autoshifts(params = {})
    # @param [Hash] params ({})
    def list_autoshifts(params = {}, options = {})
      req = build_request(:list_autoshifts, params)
      req.send_request(options)
    end

    # Lists all the resources in your Amazon Web Services account in this
    # Amazon Web Services Region that are managed for zonal shifts in Amazon
    # Application Recovery Controller, and information about them. The
    # information includes the zonal autoshift status for the resource, as
    # well as the Amazon Resource Name (ARN), the Availability Zones that
    # each resource is deployed in, and the resource name.
    #
    # @option params [String] :next_token
    #   Specifies that you want to receive the next page of results. Valid
    #   only if you received a `nextToken` response in the previous request.
    #   If you did, it indicates that more output is available. Set this
    #   parameter to the value provided by the previous call's `nextToken`
    #   response to request the next page of results.
    #
    # @option params [Integer] :max_results
    #   The number of objects that you want to return with this call.
    #
    # @return [Types::ListManagedResourcesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListManagedResourcesResponse#items #items} => Array&lt;Types::ManagedResourceSummary&gt;
    #   * {Types::ListManagedResourcesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_managed_resources({
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].arn #=> String
    #   resp.items[0].name #=> String
    #   resp.items[0].availability_zones #=> Array
    #   resp.items[0].availability_zones[0] #=> String
    #   resp.items[0].applied_weights #=> Hash
    #   resp.items[0].applied_weights["AvailabilityZone"] #=> Float
    #   resp.items[0].zonal_shifts #=> Array
    #   resp.items[0].zonal_shifts[0].applied_status #=> String, one of "APPLIED", "NOT_APPLIED"
    #   resp.items[0].zonal_shifts[0].zonal_shift_id #=> String
    #   resp.items[0].zonal_shifts[0].resource_identifier #=> String
    #   resp.items[0].zonal_shifts[0].away_from #=> String
    #   resp.items[0].zonal_shifts[0].expiry_time #=> Time
    #   resp.items[0].zonal_shifts[0].start_time #=> Time
    #   resp.items[0].zonal_shifts[0].comment #=> String
    #   resp.items[0].zonal_shifts[0].shift_type #=> String, one of "ZONAL_SHIFT", "PRACTICE_RUN", "FIS_EXPERIMENT", "ZONAL_AUTOSHIFT"
    #   resp.items[0].zonal_shifts[0].practice_run_outcome #=> String, one of "FAILED", "INTERRUPTED", "PENDING", "SUCCEEDED", "CAPACITY_CHECK_FAILED"
    #   resp.items[0].autoshifts #=> Array
    #   resp.items[0].autoshifts[0].applied_status #=> String, one of "APPLIED", "NOT_APPLIED"
    #   resp.items[0].autoshifts[0].away_from #=> String
    #   resp.items[0].autoshifts[0].start_time #=> Time
    #   resp.items[0].zonal_autoshift_status #=> String, one of "ENABLED", "DISABLED"
    #   resp.items[0].practice_run_status #=> String, one of "ENABLED", "DISABLED"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-zonal-shift-2022-10-30/ListManagedResources AWS API Documentation
    #
    # @overload list_managed_resources(params = {})
    # @param [Hash] params ({})
    def list_managed_resources(params = {}, options = {})
      req = build_request(:list_managed_resources, params)
      req.send_request(options)
    end

    # Lists all active and completed zonal shifts in Amazon Application
    # Recovery Controller in your Amazon Web Services account in this Amazon
    # Web Services Region. `ListZonalShifts` returns customer-initiated
    # zonal shifts, as well as practice run zonal shifts that ARC started on
    # your behalf for zonal autoshift.
    #
    # For more information about listing autoshifts, see
    # ["&gt;ListAutoshifts][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/arc-zonal-shift/latest/api/API_ListAutoshifts.html
    #
    # @option params [String] :next_token
    #   Specifies that you want to receive the next page of results. Valid
    #   only if you received a `nextToken` response in the previous request.
    #   If you did, it indicates that more output is available. Set this
    #   parameter to the value provided by the previous call's `nextToken`
    #   response to request the next page of results.
    #
    # @option params [String] :status
    #   A status for a zonal shift.
    #
    #   The `Status` for a zonal shift can have one of the following values:
    #
    #   * **ACTIVE**: The zonal shift has been started and is active.
    #
    #   * **EXPIRED**: The zonal shift has expired (the expiry time was
    #     exceeded).
    #
    #   * **CANCELED**: The zonal shift was canceled.
    #
    # @option params [Integer] :max_results
    #   The number of objects that you want to return with this call.
    #
    # @option params [String] :resource_identifier
    #   The identifier for the resource that you want to list zonal shifts
    #   for. The identifier is the Amazon Resource Name (ARN) for the
    #   resource.
    #
    # @return [Types::ListZonalShiftsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListZonalShiftsResponse#items #items} => Array&lt;Types::ZonalShiftSummary&gt;
    #   * {Types::ListZonalShiftsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_zonal_shifts({
    #     next_token: "String",
    #     status: "ACTIVE", # accepts ACTIVE, EXPIRED, CANCELED
    #     max_results: 1,
    #     resource_identifier: "ResourceIdentifier",
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].zonal_shift_id #=> String
    #   resp.items[0].resource_identifier #=> String
    #   resp.items[0].away_from #=> String
    #   resp.items[0].expiry_time #=> Time
    #   resp.items[0].start_time #=> Time
    #   resp.items[0].status #=> String, one of "ACTIVE", "EXPIRED", "CANCELED"
    #   resp.items[0].comment #=> String
    #   resp.items[0].shift_type #=> String, one of "ZONAL_SHIFT", "PRACTICE_RUN", "FIS_EXPERIMENT", "ZONAL_AUTOSHIFT"
    #   resp.items[0].practice_run_outcome #=> String, one of "FAILED", "INTERRUPTED", "PENDING", "SUCCEEDED", "CAPACITY_CHECK_FAILED"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-zonal-shift-2022-10-30/ListZonalShifts AWS API Documentation
    #
    # @overload list_zonal_shifts(params = {})
    # @param [Hash] params ({})
    def list_zonal_shifts(params = {}, options = {})
      req = build_request(:list_zonal_shifts, params)
      req.send_request(options)
    end

    # Start an on-demand practice run zonal shift in Amazon Application
    # Recovery Controller. With zonal autoshift enabled, you can start an
    # on-demand practice run to verify preparedness at any time. Amazon Web
    # Services also runs automated practice runs about weekly when you have
    # enabled zonal autoshift.
    #
    # For more information, see [ Considerations when you configure zonal
    # autoshift][1] in the Amazon Application Recovery Controller Developer
    # Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/r53recovery/latest/dg/arc-zonal-autoshift.considerations.html
    #
    # @option params [required, String] :resource_identifier
    #   The identifier for the resource that you want to start a practice run
    #   zonal shift for. The identifier is the Amazon Resource Name (ARN) for
    #   the resource.
    #
    # @option params [required, String] :away_from
    #   The Availability Zone (for example, `use1-az1`) that traffic is
    #   shifted away from for the resource that you specify for the practice
    #   run.
    #
    # @option params [required, String] :comment
    #   The initial comment that you enter about the practice run. Be aware
    #   that this comment can be overwritten by Amazon Web Services if the
    #   automatic check for balanced capacity fails. For more information, see
    #   [ Capacity checks for practice runs][1] in the Amazon Application
    #   Recovery Controller Developer Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/r53recovery/latest/dg/arc-zonal-autoshift.how-it-works.capacity-check.html
    #
    # @return [Types::StartPracticeRunResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartPracticeRunResponse#zonal_shift_id #zonal_shift_id} => String
    #   * {Types::StartPracticeRunResponse#resource_identifier #resource_identifier} => String
    #   * {Types::StartPracticeRunResponse#away_from #away_from} => String
    #   * {Types::StartPracticeRunResponse#expiry_time #expiry_time} => Time
    #   * {Types::StartPracticeRunResponse#start_time #start_time} => Time
    #   * {Types::StartPracticeRunResponse#status #status} => String
    #   * {Types::StartPracticeRunResponse#comment #comment} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_practice_run({
    #     resource_identifier: "ResourceIdentifier", # required
    #     away_from: "AvailabilityZone", # required
    #     comment: "ZonalShiftComment", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.zonal_shift_id #=> String
    #   resp.resource_identifier #=> String
    #   resp.away_from #=> String
    #   resp.expiry_time #=> Time
    #   resp.start_time #=> Time
    #   resp.status #=> String, one of "ACTIVE", "EXPIRED", "CANCELED"
    #   resp.comment #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-zonal-shift-2022-10-30/StartPracticeRun AWS API Documentation
    #
    # @overload start_practice_run(params = {})
    # @param [Hash] params ({})
    def start_practice_run(params = {}, options = {})
      req = build_request(:start_practice_run, params)
      req.send_request(options)
    end

    # You start a zonal shift to temporarily move load balancer traffic away
    # from an Availability Zone in an Amazon Web Services Region, to help
    # your application recover immediately, for example, from a developer's
    # bad code deployment or from an Amazon Web Services infrastructure
    # failure in a single Availability Zone. You can start a zonal shift in
    # ARC only for managed resources in your Amazon Web Services account in
    # an Amazon Web Services Region. Resources are automatically registered
    # with ARC by Amazon Web Services services.
    #
    # Amazon Application Recovery Controller currently supports enabling the
    # following resources for zonal shift and zonal autoshift:
    #
    # * [Amazon EC2 Auto Scaling groups][1]
    #
    # * [Amazon Elastic Kubernetes Service][2]
    #
    # * [Application Load Balancer][3]
    #
    # * [Network Load Balancer][4]
    #
    # When you start a zonal shift, traffic for the resource is no longer
    # routed to the Availability Zone. The zonal shift is created
    # immediately in ARC. However, it can take a short time, typically up to
    # a few minutes, for existing, in-progress connections in the
    # Availability Zone to complete.
    #
    # For more information, see [Zonal shift][5] in the Amazon Application
    # Recovery Controller Developer Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/r53recovery/latest/dg/arc-zonal-shift.resource-types.ec2-auto-scaling-groups.html
    # [2]: https://docs.aws.amazon.com/r53recovery/latest/dg/arc-zonal-shift.resource-types.eks.html
    # [3]: https://docs.aws.amazon.com/r53recovery/latest/dg/arc-zonal-shift.resource-types.app-load-balancers.html
    # [4]: https://docs.aws.amazon.com/r53recovery/latest/dg/arc-zonal-shift.resource-types.network-load-balancers.html
    # [5]: https://docs.aws.amazon.com/r53recovery/latest/dg/arc-zonal-shift.html
    #
    # @option params [required, String] :resource_identifier
    #   The identifier for the resource that Amazon Web Services shifts
    #   traffic for. The identifier is the Amazon Resource Name (ARN) for the
    #   resource.
    #
    #   Amazon Application Recovery Controller currently supports enabling the
    #   following resources for zonal shift and zonal autoshift:
    #
    #   * [Amazon EC2 Auto Scaling groups][1]
    #
    #   * [Amazon Elastic Kubernetes Service][2]
    #
    #   * [Application Load Balancer][3]
    #
    #   * [Network Load Balancer][4]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/r53recovery/latest/dg/arc-zonal-shift.resource-types.ec2-auto-scaling-groups.html
    #   [2]: https://docs.aws.amazon.com/r53recovery/latest/dg/arc-zonal-shift.resource-types.eks.html
    #   [3]: https://docs.aws.amazon.com/r53recovery/latest/dg/arc-zonal-shift.resource-types.app-load-balancers.html
    #   [4]: https://docs.aws.amazon.com/r53recovery/latest/dg/arc-zonal-shift.resource-types.network-load-balancers.html
    #
    # @option params [required, String] :away_from
    #   The Availability Zone (for example, `use1-az1`) that traffic is moved
    #   away from for a resource when you start a zonal shift. Until the zonal
    #   shift expires or you cancel it, traffic for the resource is instead
    #   moved to other Availability Zones in the Amazon Web Services Region.
    #
    # @option params [required, String] :expires_in
    #   The length of time that you want a zonal shift to be active, which ARC
    #   converts to an expiry time (expiration time). Zonal shifts are
    #   temporary. You can set a zonal shift to be active initially for up to
    #   three days (72 hours).
    #
    #   If you want to still keep traffic away from an Availability Zone, you
    #   can update the zonal shift and set a new expiration. You can also
    #   cancel a zonal shift, before it expires, for example, if you're ready
    #   to restore traffic to the Availability Zone.
    #
    #   To set a length of time for a zonal shift to be active, specify a
    #   whole number, and then one of the following, with no space:
    #
    #   * **A lowercase letter m:** To specify that the value is in minutes.
    #
    #   * **A lowercase letter h:** To specify that the value is in hours.
    #
    #   For example: `20h` means the zonal shift expires in 20 hours. `120m`
    #   means the zonal shift expires in 120 minutes (2 hours).
    #
    # @option params [required, String] :comment
    #   A comment that you enter about the zonal shift. Only the latest
    #   comment is retained; no comment history is maintained. A new comment
    #   overwrites any existing comment string.
    #
    # @return [Types::ZonalShift] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ZonalShift#zonal_shift_id #zonal_shift_id} => String
    #   * {Types::ZonalShift#resource_identifier #resource_identifier} => String
    #   * {Types::ZonalShift#away_from #away_from} => String
    #   * {Types::ZonalShift#expiry_time #expiry_time} => Time
    #   * {Types::ZonalShift#start_time #start_time} => Time
    #   * {Types::ZonalShift#status #status} => String
    #   * {Types::ZonalShift#comment #comment} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_zonal_shift({
    #     resource_identifier: "ResourceIdentifier", # required
    #     away_from: "AvailabilityZone", # required
    #     expires_in: "ExpiresIn", # required
    #     comment: "ZonalShiftComment", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.zonal_shift_id #=> String
    #   resp.resource_identifier #=> String
    #   resp.away_from #=> String
    #   resp.expiry_time #=> Time
    #   resp.start_time #=> Time
    #   resp.status #=> String, one of "ACTIVE", "EXPIRED", "CANCELED"
    #   resp.comment #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-zonal-shift-2022-10-30/StartZonalShift AWS API Documentation
    #
    # @overload start_zonal_shift(params = {})
    # @param [Hash] params ({})
    def start_zonal_shift(params = {}, options = {})
      req = build_request(:start_zonal_shift, params)
      req.send_request(options)
    end

    # Update the status of autoshift observer notification. Autoshift
    # observer notification enables you to be notified, through Amazon
    # EventBridge, when there is an autoshift event for zonal autoshift.
    #
    # If the status is `ENABLED`, ARC includes all autoshift events when you
    # use the EventBridge pattern `Autoshift In Progress`. When the status
    # is `DISABLED`, ARC includes only autoshift events for autoshifts when
    # one or more of your resources is included in the autoshift.
    #
    # For more information, see [ Notifications for practice runs and
    # autoshifts][1] in the Amazon Application Recovery Controller Developer
    # Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/r53recovery/latest/dg/arc-zonal-autoshift.how-it-works.html#ZAShiftNotification
    #
    # @option params [required, String] :status
    #   The status to set for autoshift observer notification. If the status
    #   is `ENABLED`, ARC includes all autoshift events when you use the
    #   Amazon EventBridge pattern `Autoshift In Progress`. When the status is
    #   `DISABLED`, ARC includes only autoshift events for autoshifts when one
    #   or more of your resources is included in the autoshift.
    #
    # @return [Types::UpdateAutoshiftObserverNotificationStatusResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateAutoshiftObserverNotificationStatusResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_autoshift_observer_notification_status({
    #     status: "ENABLED", # required, accepts ENABLED, DISABLED
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> String, one of "ENABLED", "DISABLED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-zonal-shift-2022-10-30/UpdateAutoshiftObserverNotificationStatus AWS API Documentation
    #
    # @overload update_autoshift_observer_notification_status(params = {})
    # @param [Hash] params ({})
    def update_autoshift_observer_notification_status(params = {}, options = {})
      req = build_request(:update_autoshift_observer_notification_status, params)
      req.send_request(options)
    end

    # Update a practice run configuration to change one or more of the
    # following: add, change, or remove the blocking alarm; change the
    # outcome alarm; or add, change, or remove blocking dates or time
    # windows.
    #
    # @option params [required, String] :resource_identifier
    #   The identifier for the resource that you want to update the practice
    #   run configuration for. The identifier is the Amazon Resource Name
    #   (ARN) for the resource.
    #
    # @option params [Array<String>] :blocked_windows
    #   Add, change, or remove windows of days and times for when you can,
    #   optionally, block ARC from starting a practice run for a resource.
    #
    #   The format for blocked windows is: DAY:HH:SS-DAY:HH:SS. Keep in mind,
    #   when you specify dates, that dates and times for practice runs are in
    #   UTC. Also, be aware of potential time adjustments that might be
    #   required for daylight saving time differences. Separate multiple
    #   blocked windows with spaces.
    #
    #   For example, say you run business report summaries three days a week.
    #   For this scenario, you might set the following recurring days and
    #   times as blocked windows, for example: `MON-20:30-21:30
    #   WED-20:30-21:30 FRI-20:30-21:30`.
    #
    # @option params [Array<String>] :blocked_dates
    #   Add, change, or remove blocked dates for a practice run in zonal
    #   autoshift.
    #
    #   Optionally, you can block practice runs for specific calendar dates.
    #   The format for blocked dates is: YYYY-MM-DD. Keep in mind, when you
    #   specify dates, that dates and times for practice runs are in UTC.
    #   Separate multiple blocked dates with spaces.
    #
    #   For example, if you have an application update scheduled to launch on
    #   May 1, 2024, and you don't want practice runs to shift traffic away
    #   at that time, you could set a blocked date for `2024-05-01`.
    #
    # @option params [Array<Types::ControlCondition>] :blocking_alarms
    #   Add, change, or remove the Amazon CloudWatch alarm that you optionally
    #   specify as the blocking alarm for practice runs.
    #
    # @option params [Array<Types::ControlCondition>] :outcome_alarms
    #   Specify a new the Amazon CloudWatch alarm as the outcome alarm for
    #   practice runs.
    #
    # @return [Types::UpdatePracticeRunConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdatePracticeRunConfigurationResponse#arn #arn} => String
    #   * {Types::UpdatePracticeRunConfigurationResponse#name #name} => String
    #   * {Types::UpdatePracticeRunConfigurationResponse#zonal_autoshift_status #zonal_autoshift_status} => String
    #   * {Types::UpdatePracticeRunConfigurationResponse#practice_run_configuration #practice_run_configuration} => Types::PracticeRunConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_practice_run_configuration({
    #     resource_identifier: "ResourceIdentifier", # required
    #     blocked_windows: ["BlockedWindow"],
    #     blocked_dates: ["BlockedDate"],
    #     blocking_alarms: [
    #       {
    #         type: "CLOUDWATCH", # required, accepts CLOUDWATCH
    #         alarm_identifier: "MetricIdentifier", # required
    #       },
    #     ],
    #     outcome_alarms: [
    #       {
    #         type: "CLOUDWATCH", # required, accepts CLOUDWATCH
    #         alarm_identifier: "MetricIdentifier", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.name #=> String
    #   resp.zonal_autoshift_status #=> String, one of "ENABLED", "DISABLED"
    #   resp.practice_run_configuration.blocking_alarms #=> Array
    #   resp.practice_run_configuration.blocking_alarms[0].type #=> String, one of "CLOUDWATCH"
    #   resp.practice_run_configuration.blocking_alarms[0].alarm_identifier #=> String
    #   resp.practice_run_configuration.outcome_alarms #=> Array
    #   resp.practice_run_configuration.outcome_alarms[0].type #=> String, one of "CLOUDWATCH"
    #   resp.practice_run_configuration.outcome_alarms[0].alarm_identifier #=> String
    #   resp.practice_run_configuration.blocked_windows #=> Array
    #   resp.practice_run_configuration.blocked_windows[0] #=> String
    #   resp.practice_run_configuration.blocked_dates #=> Array
    #   resp.practice_run_configuration.blocked_dates[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-zonal-shift-2022-10-30/UpdatePracticeRunConfiguration AWS API Documentation
    #
    # @overload update_practice_run_configuration(params = {})
    # @param [Hash] params ({})
    def update_practice_run_configuration(params = {}, options = {})
      req = build_request(:update_practice_run_configuration, params)
      req.send_request(options)
    end

    # The zonal autoshift configuration for a resource includes the practice
    # run configuration and the status for running autoshifts, zonal
    # autoshift status. When a resource has a practice run configuation, ARC
    # starts weekly zonal shifts for the resource, to shift traffic away
    # from an Availability Zone. Weekly practice runs help you to make sure
    # that your application can continue to operate normally with the loss
    # of one Availability Zone.
    #
    # You can update the zonal autoshift autoshift status to enable or
    # disable zonal autoshift. When zonal autoshift is `ENABLED`, you
    # authorize Amazon Web Services to shift away resource traffic for an
    # application from an Availability Zone during events, on your behalf,
    # to help reduce time to recovery. Traffic is also shifted away for the
    # required weekly practice runs.
    #
    # @option params [required, String] :resource_identifier
    #   The identifier for the resource that you want to update the zonal
    #   autoshift configuration for. The identifier is the Amazon Resource
    #   Name (ARN) for the resource.
    #
    # @option params [required, String] :zonal_autoshift_status
    #   The zonal autoshift status for the resource that you want to update
    #   the zonal autoshift configuration for. Choose `ENABLED` to authorize
    #   Amazon Web Services to shift away resource traffic for an application
    #   from an Availability Zone during events, on your behalf, to help
    #   reduce time to recovery.
    #
    # @return [Types::UpdateZonalAutoshiftConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateZonalAutoshiftConfigurationResponse#resource_identifier #resource_identifier} => String
    #   * {Types::UpdateZonalAutoshiftConfigurationResponse#zonal_autoshift_status #zonal_autoshift_status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_zonal_autoshift_configuration({
    #     resource_identifier: "ResourceIdentifier", # required
    #     zonal_autoshift_status: "ENABLED", # required, accepts ENABLED, DISABLED
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_identifier #=> String
    #   resp.zonal_autoshift_status #=> String, one of "ENABLED", "DISABLED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-zonal-shift-2022-10-30/UpdateZonalAutoshiftConfiguration AWS API Documentation
    #
    # @overload update_zonal_autoshift_configuration(params = {})
    # @param [Hash] params ({})
    def update_zonal_autoshift_configuration(params = {}, options = {})
      req = build_request(:update_zonal_autoshift_configuration, params)
      req.send_request(options)
    end

    # Update an active zonal shift in Amazon Application Recovery Controller
    # in your Amazon Web Services account. You can update a zonal shift to
    # set a new expiration, or edit or replace the comment for the zonal
    # shift.
    #
    # @option params [required, String] :zonal_shift_id
    #   The identifier of a zonal shift.
    #
    # @option params [String] :comment
    #   A comment that you enter about the zonal shift. Only the latest
    #   comment is retained; no comment history is maintained. A new comment
    #   overwrites any existing comment string.
    #
    # @option params [String] :expires_in
    #   The length of time that you want a zonal shift to be active, which ARC
    #   converts to an expiry time (expiration time). Zonal shifts are
    #   temporary. You can set a zonal shift to be active initially for up to
    #   three days (72 hours).
    #
    #   If you want to still keep traffic away from an Availability Zone, you
    #   can update the zonal shift and set a new expiration. You can also
    #   cancel a zonal shift, before it expires, for example, if you're ready
    #   to restore traffic to the Availability Zone.
    #
    #   To set a length of time for a zonal shift to be active, specify a
    #   whole number, and then one of the following, with no space:
    #
    #   * **A lowercase letter m:** To specify that the value is in minutes.
    #
    #   * **A lowercase letter h:** To specify that the value is in hours.
    #
    #   For example: `20h` means the zonal shift expires in 20 hours. `120m`
    #   means the zonal shift expires in 120 minutes (2 hours).
    #
    # @return [Types::ZonalShift] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ZonalShift#zonal_shift_id #zonal_shift_id} => String
    #   * {Types::ZonalShift#resource_identifier #resource_identifier} => String
    #   * {Types::ZonalShift#away_from #away_from} => String
    #   * {Types::ZonalShift#expiry_time #expiry_time} => Time
    #   * {Types::ZonalShift#start_time #start_time} => Time
    #   * {Types::ZonalShift#status #status} => String
    #   * {Types::ZonalShift#comment #comment} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_zonal_shift({
    #     zonal_shift_id: "ZonalShiftId", # required
    #     comment: "ZonalShiftComment",
    #     expires_in: "ExpiresIn",
    #   })
    #
    # @example Response structure
    #
    #   resp.zonal_shift_id #=> String
    #   resp.resource_identifier #=> String
    #   resp.away_from #=> String
    #   resp.expiry_time #=> Time
    #   resp.start_time #=> Time
    #   resp.status #=> String, one of "ACTIVE", "EXPIRED", "CANCELED"
    #   resp.comment #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/arc-zonal-shift-2022-10-30/UpdateZonalShift AWS API Documentation
    #
    # @overload update_zonal_shift(params = {})
    # @param [Hash] params ({})
    def update_zonal_shift(params = {}, options = {})
      req = build_request(:update_zonal_shift, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::ARCZonalShift')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-arczonalshift'
      context[:gem_version] = '1.38.0'
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
