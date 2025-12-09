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

module Aws::CostOptimizationHub
  # An API client for CostOptimizationHub.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::CostOptimizationHub::Client.new(
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

    @identifier = :costoptimizationhub

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
    add_plugin(Aws::CostOptimizationHub::Plugins::Endpoints)

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
    #   @option options [Aws::CostOptimizationHub::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::CostOptimizationHub::EndpointParameters`.
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

    # Returns a set of preferences for an account in order to add
    # account-specific preferences into the service. These preferences
    # impact how the savings associated with recommendations are
    # presented—estimated savings after discounts or estimated savings
    # before discounts, for example.
    #
    # @return [Types::GetPreferencesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetPreferencesResponse#savings_estimation_mode #savings_estimation_mode} => String
    #   * {Types::GetPreferencesResponse#member_account_discount_visibility #member_account_discount_visibility} => String
    #   * {Types::GetPreferencesResponse#preferred_commitment #preferred_commitment} => Types::PreferredCommitment
    #
    # @example Response structure
    #
    #   resp.savings_estimation_mode #=> String, one of "BeforeDiscounts", "AfterDiscounts"
    #   resp.member_account_discount_visibility #=> String, one of "All", "None"
    #   resp.preferred_commitment.term #=> String, one of "OneYear", "ThreeYears"
    #   resp.preferred_commitment.payment_option #=> String, one of "AllUpfront", "PartialUpfront", "NoUpfront"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cost-optimization-hub-2022-07-26/GetPreferences AWS API Documentation
    #
    # @overload get_preferences(params = {})
    # @param [Hash] params ({})
    def get_preferences(params = {}, options = {})
      req = build_request(:get_preferences, params)
      req.send_request(options)
    end

    # Returns both the current and recommended resource configuration and
    # the estimated cost impact for a recommendation.
    #
    # The `recommendationId` is only valid for up to a maximum of 24 hours
    # as recommendations are refreshed daily. To retrieve the
    # `recommendationId`, use the `ListRecommendations` API.
    #
    # @option params [required, String] :recommendation_id
    #   The ID for the recommendation.
    #
    # @return [Types::GetRecommendationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetRecommendationResponse#recommendation_id #recommendation_id} => String
    #   * {Types::GetRecommendationResponse#resource_id #resource_id} => String
    #   * {Types::GetRecommendationResponse#resource_arn #resource_arn} => String
    #   * {Types::GetRecommendationResponse#account_id #account_id} => String
    #   * {Types::GetRecommendationResponse#currency_code #currency_code} => String
    #   * {Types::GetRecommendationResponse#recommendation_lookback_period_in_days #recommendation_lookback_period_in_days} => Integer
    #   * {Types::GetRecommendationResponse#cost_calculation_lookback_period_in_days #cost_calculation_lookback_period_in_days} => Integer
    #   * {Types::GetRecommendationResponse#estimated_savings_percentage #estimated_savings_percentage} => Float
    #   * {Types::GetRecommendationResponse#estimated_savings_over_cost_calculation_lookback_period #estimated_savings_over_cost_calculation_lookback_period} => Float
    #   * {Types::GetRecommendationResponse#current_resource_type #current_resource_type} => String
    #   * {Types::GetRecommendationResponse#recommended_resource_type #recommended_resource_type} => String
    #   * {Types::GetRecommendationResponse#region #region} => String
    #   * {Types::GetRecommendationResponse#source #source} => String
    #   * {Types::GetRecommendationResponse#last_refresh_timestamp #last_refresh_timestamp} => Time
    #   * {Types::GetRecommendationResponse#estimated_monthly_savings #estimated_monthly_savings} => Float
    #   * {Types::GetRecommendationResponse#estimated_monthly_cost #estimated_monthly_cost} => Float
    #   * {Types::GetRecommendationResponse#implementation_effort #implementation_effort} => String
    #   * {Types::GetRecommendationResponse#restart_needed #restart_needed} => Boolean
    #   * {Types::GetRecommendationResponse#action_type #action_type} => String
    #   * {Types::GetRecommendationResponse#rollback_possible #rollback_possible} => Boolean
    #   * {Types::GetRecommendationResponse#current_resource_details #current_resource_details} => Types::ResourceDetails
    #   * {Types::GetRecommendationResponse#recommended_resource_details #recommended_resource_details} => Types::ResourceDetails
    #   * {Types::GetRecommendationResponse#tags #tags} => Array&lt;Types::Tag&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_recommendation({
    #     recommendation_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.recommendation_id #=> String
    #   resp.resource_id #=> String
    #   resp.resource_arn #=> String
    #   resp.account_id #=> String
    #   resp.currency_code #=> String
    #   resp.recommendation_lookback_period_in_days #=> Integer
    #   resp.cost_calculation_lookback_period_in_days #=> Integer
    #   resp.estimated_savings_percentage #=> Float
    #   resp.estimated_savings_over_cost_calculation_lookback_period #=> Float
    #   resp.current_resource_type #=> String, one of "Ec2Instance", "LambdaFunction", "EbsVolume", "EcsService", "Ec2AutoScalingGroup", "Ec2InstanceSavingsPlans", "ComputeSavingsPlans", "SageMakerSavingsPlans", "Ec2ReservedInstances", "RdsReservedInstances", "OpenSearchReservedInstances", "RedshiftReservedInstances", "ElastiCacheReservedInstances", "RdsDbInstanceStorage", "RdsDbInstance", "AuroraDbClusterStorage", "DynamoDbReservedCapacity", "MemoryDbReservedInstances", "NatGateway"
    #   resp.recommended_resource_type #=> String, one of "Ec2Instance", "LambdaFunction", "EbsVolume", "EcsService", "Ec2AutoScalingGroup", "Ec2InstanceSavingsPlans", "ComputeSavingsPlans", "SageMakerSavingsPlans", "Ec2ReservedInstances", "RdsReservedInstances", "OpenSearchReservedInstances", "RedshiftReservedInstances", "ElastiCacheReservedInstances", "RdsDbInstanceStorage", "RdsDbInstance", "AuroraDbClusterStorage", "DynamoDbReservedCapacity", "MemoryDbReservedInstances", "NatGateway"
    #   resp.region #=> String
    #   resp.source #=> String, one of "ComputeOptimizer", "CostExplorer"
    #   resp.last_refresh_timestamp #=> Time
    #   resp.estimated_monthly_savings #=> Float
    #   resp.estimated_monthly_cost #=> Float
    #   resp.implementation_effort #=> String, one of "VeryLow", "Low", "Medium", "High", "VeryHigh"
    #   resp.restart_needed #=> Boolean
    #   resp.action_type #=> String, one of "Rightsize", "Stop", "Upgrade", "PurchaseSavingsPlans", "PurchaseReservedInstances", "MigrateToGraviton", "Delete", "ScaleIn"
    #   resp.rollback_possible #=> Boolean
    #   resp.current_resource_details.lambda_function.configuration.compute.v_cpu #=> Float
    #   resp.current_resource_details.lambda_function.configuration.compute.memory_size_in_mb #=> Integer
    #   resp.current_resource_details.lambda_function.configuration.compute.architecture #=> String
    #   resp.current_resource_details.lambda_function.configuration.compute.platform #=> String
    #   resp.current_resource_details.lambda_function.cost_calculation.usages #=> Array
    #   resp.current_resource_details.lambda_function.cost_calculation.usages[0].usage_type #=> String
    #   resp.current_resource_details.lambda_function.cost_calculation.usages[0].usage_amount #=> Float
    #   resp.current_resource_details.lambda_function.cost_calculation.usages[0].operation #=> String
    #   resp.current_resource_details.lambda_function.cost_calculation.usages[0].product_code #=> String
    #   resp.current_resource_details.lambda_function.cost_calculation.usages[0].unit #=> String
    #   resp.current_resource_details.lambda_function.cost_calculation.pricing.estimated_cost_before_discounts #=> Float
    #   resp.current_resource_details.lambda_function.cost_calculation.pricing.estimated_net_unused_amortized_commitments #=> Float
    #   resp.current_resource_details.lambda_function.cost_calculation.pricing.estimated_discounts.savings_plans_discount #=> Float
    #   resp.current_resource_details.lambda_function.cost_calculation.pricing.estimated_discounts.reserved_instances_discount #=> Float
    #   resp.current_resource_details.lambda_function.cost_calculation.pricing.estimated_discounts.other_discount #=> Float
    #   resp.current_resource_details.lambda_function.cost_calculation.pricing.estimated_cost_after_discounts #=> Float
    #   resp.current_resource_details.ecs_service.configuration.compute.v_cpu #=> Float
    #   resp.current_resource_details.ecs_service.configuration.compute.memory_size_in_mb #=> Integer
    #   resp.current_resource_details.ecs_service.configuration.compute.architecture #=> String
    #   resp.current_resource_details.ecs_service.configuration.compute.platform #=> String
    #   resp.current_resource_details.ecs_service.cost_calculation.usages #=> Array
    #   resp.current_resource_details.ecs_service.cost_calculation.usages[0].usage_type #=> String
    #   resp.current_resource_details.ecs_service.cost_calculation.usages[0].usage_amount #=> Float
    #   resp.current_resource_details.ecs_service.cost_calculation.usages[0].operation #=> String
    #   resp.current_resource_details.ecs_service.cost_calculation.usages[0].product_code #=> String
    #   resp.current_resource_details.ecs_service.cost_calculation.usages[0].unit #=> String
    #   resp.current_resource_details.ecs_service.cost_calculation.pricing.estimated_cost_before_discounts #=> Float
    #   resp.current_resource_details.ecs_service.cost_calculation.pricing.estimated_net_unused_amortized_commitments #=> Float
    #   resp.current_resource_details.ecs_service.cost_calculation.pricing.estimated_discounts.savings_plans_discount #=> Float
    #   resp.current_resource_details.ecs_service.cost_calculation.pricing.estimated_discounts.reserved_instances_discount #=> Float
    #   resp.current_resource_details.ecs_service.cost_calculation.pricing.estimated_discounts.other_discount #=> Float
    #   resp.current_resource_details.ecs_service.cost_calculation.pricing.estimated_cost_after_discounts #=> Float
    #   resp.current_resource_details.ec2_instance.configuration.instance.type #=> String
    #   resp.current_resource_details.ec2_instance.cost_calculation.usages #=> Array
    #   resp.current_resource_details.ec2_instance.cost_calculation.usages[0].usage_type #=> String
    #   resp.current_resource_details.ec2_instance.cost_calculation.usages[0].usage_amount #=> Float
    #   resp.current_resource_details.ec2_instance.cost_calculation.usages[0].operation #=> String
    #   resp.current_resource_details.ec2_instance.cost_calculation.usages[0].product_code #=> String
    #   resp.current_resource_details.ec2_instance.cost_calculation.usages[0].unit #=> String
    #   resp.current_resource_details.ec2_instance.cost_calculation.pricing.estimated_cost_before_discounts #=> Float
    #   resp.current_resource_details.ec2_instance.cost_calculation.pricing.estimated_net_unused_amortized_commitments #=> Float
    #   resp.current_resource_details.ec2_instance.cost_calculation.pricing.estimated_discounts.savings_plans_discount #=> Float
    #   resp.current_resource_details.ec2_instance.cost_calculation.pricing.estimated_discounts.reserved_instances_discount #=> Float
    #   resp.current_resource_details.ec2_instance.cost_calculation.pricing.estimated_discounts.other_discount #=> Float
    #   resp.current_resource_details.ec2_instance.cost_calculation.pricing.estimated_cost_after_discounts #=> Float
    #   resp.current_resource_details.ebs_volume.configuration.storage.type #=> String
    #   resp.current_resource_details.ebs_volume.configuration.storage.size_in_gb #=> Float
    #   resp.current_resource_details.ebs_volume.configuration.performance.iops #=> Float
    #   resp.current_resource_details.ebs_volume.configuration.performance.throughput #=> Float
    #   resp.current_resource_details.ebs_volume.configuration.attachment_state #=> String
    #   resp.current_resource_details.ebs_volume.cost_calculation.usages #=> Array
    #   resp.current_resource_details.ebs_volume.cost_calculation.usages[0].usage_type #=> String
    #   resp.current_resource_details.ebs_volume.cost_calculation.usages[0].usage_amount #=> Float
    #   resp.current_resource_details.ebs_volume.cost_calculation.usages[0].operation #=> String
    #   resp.current_resource_details.ebs_volume.cost_calculation.usages[0].product_code #=> String
    #   resp.current_resource_details.ebs_volume.cost_calculation.usages[0].unit #=> String
    #   resp.current_resource_details.ebs_volume.cost_calculation.pricing.estimated_cost_before_discounts #=> Float
    #   resp.current_resource_details.ebs_volume.cost_calculation.pricing.estimated_net_unused_amortized_commitments #=> Float
    #   resp.current_resource_details.ebs_volume.cost_calculation.pricing.estimated_discounts.savings_plans_discount #=> Float
    #   resp.current_resource_details.ebs_volume.cost_calculation.pricing.estimated_discounts.reserved_instances_discount #=> Float
    #   resp.current_resource_details.ebs_volume.cost_calculation.pricing.estimated_discounts.other_discount #=> Float
    #   resp.current_resource_details.ebs_volume.cost_calculation.pricing.estimated_cost_after_discounts #=> Float
    #   resp.current_resource_details.ec2_auto_scaling_group.configuration.instance.type #=> String
    #   resp.current_resource_details.ec2_auto_scaling_group.configuration.mixed_instances #=> Array
    #   resp.current_resource_details.ec2_auto_scaling_group.configuration.mixed_instances[0].type #=> String
    #   resp.current_resource_details.ec2_auto_scaling_group.configuration.type #=> String, one of "SingleInstanceType", "MixedInstanceTypes"
    #   resp.current_resource_details.ec2_auto_scaling_group.configuration.allocation_strategy #=> String, one of "Prioritized", "LowestPrice"
    #   resp.current_resource_details.ec2_auto_scaling_group.cost_calculation.usages #=> Array
    #   resp.current_resource_details.ec2_auto_scaling_group.cost_calculation.usages[0].usage_type #=> String
    #   resp.current_resource_details.ec2_auto_scaling_group.cost_calculation.usages[0].usage_amount #=> Float
    #   resp.current_resource_details.ec2_auto_scaling_group.cost_calculation.usages[0].operation #=> String
    #   resp.current_resource_details.ec2_auto_scaling_group.cost_calculation.usages[0].product_code #=> String
    #   resp.current_resource_details.ec2_auto_scaling_group.cost_calculation.usages[0].unit #=> String
    #   resp.current_resource_details.ec2_auto_scaling_group.cost_calculation.pricing.estimated_cost_before_discounts #=> Float
    #   resp.current_resource_details.ec2_auto_scaling_group.cost_calculation.pricing.estimated_net_unused_amortized_commitments #=> Float
    #   resp.current_resource_details.ec2_auto_scaling_group.cost_calculation.pricing.estimated_discounts.savings_plans_discount #=> Float
    #   resp.current_resource_details.ec2_auto_scaling_group.cost_calculation.pricing.estimated_discounts.reserved_instances_discount #=> Float
    #   resp.current_resource_details.ec2_auto_scaling_group.cost_calculation.pricing.estimated_discounts.other_discount #=> Float
    #   resp.current_resource_details.ec2_auto_scaling_group.cost_calculation.pricing.estimated_cost_after_discounts #=> Float
    #   resp.current_resource_details.ec2_reserved_instances.configuration.account_scope #=> String
    #   resp.current_resource_details.ec2_reserved_instances.configuration.service #=> String
    #   resp.current_resource_details.ec2_reserved_instances.configuration.term #=> String
    #   resp.current_resource_details.ec2_reserved_instances.configuration.payment_option #=> String
    #   resp.current_resource_details.ec2_reserved_instances.configuration.reserved_instances_region #=> String
    #   resp.current_resource_details.ec2_reserved_instances.configuration.upfront_cost #=> String
    #   resp.current_resource_details.ec2_reserved_instances.configuration.monthly_recurring_cost #=> String
    #   resp.current_resource_details.ec2_reserved_instances.configuration.normalized_units_to_purchase #=> String
    #   resp.current_resource_details.ec2_reserved_instances.configuration.number_of_instances_to_purchase #=> String
    #   resp.current_resource_details.ec2_reserved_instances.configuration.offering_class #=> String
    #   resp.current_resource_details.ec2_reserved_instances.configuration.instance_family #=> String
    #   resp.current_resource_details.ec2_reserved_instances.configuration.instance_type #=> String
    #   resp.current_resource_details.ec2_reserved_instances.configuration.current_generation #=> String
    #   resp.current_resource_details.ec2_reserved_instances.configuration.platform #=> String
    #   resp.current_resource_details.ec2_reserved_instances.configuration.tenancy #=> String
    #   resp.current_resource_details.ec2_reserved_instances.configuration.size_flex_eligible #=> Boolean
    #   resp.current_resource_details.ec2_reserved_instances.cost_calculation.pricing.estimated_on_demand_cost #=> Float
    #   resp.current_resource_details.ec2_reserved_instances.cost_calculation.pricing.monthly_reservation_eligible_cost #=> Float
    #   resp.current_resource_details.ec2_reserved_instances.cost_calculation.pricing.savings_percentage #=> Float
    #   resp.current_resource_details.ec2_reserved_instances.cost_calculation.pricing.estimated_monthly_amortized_reservation_cost #=> Float
    #   resp.current_resource_details.rds_reserved_instances.configuration.account_scope #=> String
    #   resp.current_resource_details.rds_reserved_instances.configuration.service #=> String
    #   resp.current_resource_details.rds_reserved_instances.configuration.term #=> String
    #   resp.current_resource_details.rds_reserved_instances.configuration.payment_option #=> String
    #   resp.current_resource_details.rds_reserved_instances.configuration.reserved_instances_region #=> String
    #   resp.current_resource_details.rds_reserved_instances.configuration.upfront_cost #=> String
    #   resp.current_resource_details.rds_reserved_instances.configuration.monthly_recurring_cost #=> String
    #   resp.current_resource_details.rds_reserved_instances.configuration.normalized_units_to_purchase #=> String
    #   resp.current_resource_details.rds_reserved_instances.configuration.number_of_instances_to_purchase #=> String
    #   resp.current_resource_details.rds_reserved_instances.configuration.instance_family #=> String
    #   resp.current_resource_details.rds_reserved_instances.configuration.instance_type #=> String
    #   resp.current_resource_details.rds_reserved_instances.configuration.size_flex_eligible #=> Boolean
    #   resp.current_resource_details.rds_reserved_instances.configuration.current_generation #=> String
    #   resp.current_resource_details.rds_reserved_instances.configuration.license_model #=> String
    #   resp.current_resource_details.rds_reserved_instances.configuration.database_edition #=> String
    #   resp.current_resource_details.rds_reserved_instances.configuration.database_engine #=> String
    #   resp.current_resource_details.rds_reserved_instances.configuration.deployment_option #=> String
    #   resp.current_resource_details.rds_reserved_instances.cost_calculation.pricing.estimated_on_demand_cost #=> Float
    #   resp.current_resource_details.rds_reserved_instances.cost_calculation.pricing.monthly_reservation_eligible_cost #=> Float
    #   resp.current_resource_details.rds_reserved_instances.cost_calculation.pricing.savings_percentage #=> Float
    #   resp.current_resource_details.rds_reserved_instances.cost_calculation.pricing.estimated_monthly_amortized_reservation_cost #=> Float
    #   resp.current_resource_details.elasti_cache_reserved_instances.configuration.account_scope #=> String
    #   resp.current_resource_details.elasti_cache_reserved_instances.configuration.service #=> String
    #   resp.current_resource_details.elasti_cache_reserved_instances.configuration.term #=> String
    #   resp.current_resource_details.elasti_cache_reserved_instances.configuration.payment_option #=> String
    #   resp.current_resource_details.elasti_cache_reserved_instances.configuration.reserved_instances_region #=> String
    #   resp.current_resource_details.elasti_cache_reserved_instances.configuration.upfront_cost #=> String
    #   resp.current_resource_details.elasti_cache_reserved_instances.configuration.monthly_recurring_cost #=> String
    #   resp.current_resource_details.elasti_cache_reserved_instances.configuration.normalized_units_to_purchase #=> String
    #   resp.current_resource_details.elasti_cache_reserved_instances.configuration.number_of_instances_to_purchase #=> String
    #   resp.current_resource_details.elasti_cache_reserved_instances.configuration.instance_family #=> String
    #   resp.current_resource_details.elasti_cache_reserved_instances.configuration.instance_type #=> String
    #   resp.current_resource_details.elasti_cache_reserved_instances.configuration.current_generation #=> String
    #   resp.current_resource_details.elasti_cache_reserved_instances.configuration.size_flex_eligible #=> Boolean
    #   resp.current_resource_details.elasti_cache_reserved_instances.cost_calculation.pricing.estimated_on_demand_cost #=> Float
    #   resp.current_resource_details.elasti_cache_reserved_instances.cost_calculation.pricing.monthly_reservation_eligible_cost #=> Float
    #   resp.current_resource_details.elasti_cache_reserved_instances.cost_calculation.pricing.savings_percentage #=> Float
    #   resp.current_resource_details.elasti_cache_reserved_instances.cost_calculation.pricing.estimated_monthly_amortized_reservation_cost #=> Float
    #   resp.current_resource_details.open_search_reserved_instances.configuration.account_scope #=> String
    #   resp.current_resource_details.open_search_reserved_instances.configuration.service #=> String
    #   resp.current_resource_details.open_search_reserved_instances.configuration.term #=> String
    #   resp.current_resource_details.open_search_reserved_instances.configuration.payment_option #=> String
    #   resp.current_resource_details.open_search_reserved_instances.configuration.reserved_instances_region #=> String
    #   resp.current_resource_details.open_search_reserved_instances.configuration.upfront_cost #=> String
    #   resp.current_resource_details.open_search_reserved_instances.configuration.monthly_recurring_cost #=> String
    #   resp.current_resource_details.open_search_reserved_instances.configuration.normalized_units_to_purchase #=> String
    #   resp.current_resource_details.open_search_reserved_instances.configuration.number_of_instances_to_purchase #=> String
    #   resp.current_resource_details.open_search_reserved_instances.configuration.instance_type #=> String
    #   resp.current_resource_details.open_search_reserved_instances.configuration.current_generation #=> String
    #   resp.current_resource_details.open_search_reserved_instances.configuration.size_flex_eligible #=> Boolean
    #   resp.current_resource_details.open_search_reserved_instances.cost_calculation.pricing.estimated_on_demand_cost #=> Float
    #   resp.current_resource_details.open_search_reserved_instances.cost_calculation.pricing.monthly_reservation_eligible_cost #=> Float
    #   resp.current_resource_details.open_search_reserved_instances.cost_calculation.pricing.savings_percentage #=> Float
    #   resp.current_resource_details.open_search_reserved_instances.cost_calculation.pricing.estimated_monthly_amortized_reservation_cost #=> Float
    #   resp.current_resource_details.redshift_reserved_instances.configuration.account_scope #=> String
    #   resp.current_resource_details.redshift_reserved_instances.configuration.service #=> String
    #   resp.current_resource_details.redshift_reserved_instances.configuration.term #=> String
    #   resp.current_resource_details.redshift_reserved_instances.configuration.payment_option #=> String
    #   resp.current_resource_details.redshift_reserved_instances.configuration.reserved_instances_region #=> String
    #   resp.current_resource_details.redshift_reserved_instances.configuration.upfront_cost #=> String
    #   resp.current_resource_details.redshift_reserved_instances.configuration.monthly_recurring_cost #=> String
    #   resp.current_resource_details.redshift_reserved_instances.configuration.normalized_units_to_purchase #=> String
    #   resp.current_resource_details.redshift_reserved_instances.configuration.number_of_instances_to_purchase #=> String
    #   resp.current_resource_details.redshift_reserved_instances.configuration.instance_family #=> String
    #   resp.current_resource_details.redshift_reserved_instances.configuration.instance_type #=> String
    #   resp.current_resource_details.redshift_reserved_instances.configuration.size_flex_eligible #=> Boolean
    #   resp.current_resource_details.redshift_reserved_instances.configuration.current_generation #=> String
    #   resp.current_resource_details.redshift_reserved_instances.cost_calculation.pricing.estimated_on_demand_cost #=> Float
    #   resp.current_resource_details.redshift_reserved_instances.cost_calculation.pricing.monthly_reservation_eligible_cost #=> Float
    #   resp.current_resource_details.redshift_reserved_instances.cost_calculation.pricing.savings_percentage #=> Float
    #   resp.current_resource_details.redshift_reserved_instances.cost_calculation.pricing.estimated_monthly_amortized_reservation_cost #=> Float
    #   resp.current_resource_details.ec2_instance_savings_plans.configuration.account_scope #=> String
    #   resp.current_resource_details.ec2_instance_savings_plans.configuration.term #=> String
    #   resp.current_resource_details.ec2_instance_savings_plans.configuration.payment_option #=> String
    #   resp.current_resource_details.ec2_instance_savings_plans.configuration.hourly_commitment #=> String
    #   resp.current_resource_details.ec2_instance_savings_plans.configuration.instance_family #=> String
    #   resp.current_resource_details.ec2_instance_savings_plans.configuration.savings_plans_region #=> String
    #   resp.current_resource_details.ec2_instance_savings_plans.cost_calculation.pricing.monthly_savings_plans_eligible_cost #=> Float
    #   resp.current_resource_details.ec2_instance_savings_plans.cost_calculation.pricing.estimated_monthly_commitment #=> Float
    #   resp.current_resource_details.ec2_instance_savings_plans.cost_calculation.pricing.savings_percentage #=> Float
    #   resp.current_resource_details.ec2_instance_savings_plans.cost_calculation.pricing.estimated_on_demand_cost #=> Float
    #   resp.current_resource_details.compute_savings_plans.configuration.account_scope #=> String
    #   resp.current_resource_details.compute_savings_plans.configuration.term #=> String
    #   resp.current_resource_details.compute_savings_plans.configuration.payment_option #=> String
    #   resp.current_resource_details.compute_savings_plans.configuration.hourly_commitment #=> String
    #   resp.current_resource_details.compute_savings_plans.cost_calculation.pricing.monthly_savings_plans_eligible_cost #=> Float
    #   resp.current_resource_details.compute_savings_plans.cost_calculation.pricing.estimated_monthly_commitment #=> Float
    #   resp.current_resource_details.compute_savings_plans.cost_calculation.pricing.savings_percentage #=> Float
    #   resp.current_resource_details.compute_savings_plans.cost_calculation.pricing.estimated_on_demand_cost #=> Float
    #   resp.current_resource_details.sage_maker_savings_plans.configuration.account_scope #=> String
    #   resp.current_resource_details.sage_maker_savings_plans.configuration.term #=> String
    #   resp.current_resource_details.sage_maker_savings_plans.configuration.payment_option #=> String
    #   resp.current_resource_details.sage_maker_savings_plans.configuration.hourly_commitment #=> String
    #   resp.current_resource_details.sage_maker_savings_plans.cost_calculation.pricing.monthly_savings_plans_eligible_cost #=> Float
    #   resp.current_resource_details.sage_maker_savings_plans.cost_calculation.pricing.estimated_monthly_commitment #=> Float
    #   resp.current_resource_details.sage_maker_savings_plans.cost_calculation.pricing.savings_percentage #=> Float
    #   resp.current_resource_details.sage_maker_savings_plans.cost_calculation.pricing.estimated_on_demand_cost #=> Float
    #   resp.current_resource_details.rds_db_instance.configuration.instance.db_instance_class #=> String
    #   resp.current_resource_details.rds_db_instance.cost_calculation.usages #=> Array
    #   resp.current_resource_details.rds_db_instance.cost_calculation.usages[0].usage_type #=> String
    #   resp.current_resource_details.rds_db_instance.cost_calculation.usages[0].usage_amount #=> Float
    #   resp.current_resource_details.rds_db_instance.cost_calculation.usages[0].operation #=> String
    #   resp.current_resource_details.rds_db_instance.cost_calculation.usages[0].product_code #=> String
    #   resp.current_resource_details.rds_db_instance.cost_calculation.usages[0].unit #=> String
    #   resp.current_resource_details.rds_db_instance.cost_calculation.pricing.estimated_cost_before_discounts #=> Float
    #   resp.current_resource_details.rds_db_instance.cost_calculation.pricing.estimated_net_unused_amortized_commitments #=> Float
    #   resp.current_resource_details.rds_db_instance.cost_calculation.pricing.estimated_discounts.savings_plans_discount #=> Float
    #   resp.current_resource_details.rds_db_instance.cost_calculation.pricing.estimated_discounts.reserved_instances_discount #=> Float
    #   resp.current_resource_details.rds_db_instance.cost_calculation.pricing.estimated_discounts.other_discount #=> Float
    #   resp.current_resource_details.rds_db_instance.cost_calculation.pricing.estimated_cost_after_discounts #=> Float
    #   resp.current_resource_details.rds_db_instance_storage.configuration.storage_type #=> String
    #   resp.current_resource_details.rds_db_instance_storage.configuration.allocated_storage_in_gb #=> Float
    #   resp.current_resource_details.rds_db_instance_storage.configuration.iops #=> Float
    #   resp.current_resource_details.rds_db_instance_storage.configuration.storage_throughput #=> Float
    #   resp.current_resource_details.rds_db_instance_storage.cost_calculation.usages #=> Array
    #   resp.current_resource_details.rds_db_instance_storage.cost_calculation.usages[0].usage_type #=> String
    #   resp.current_resource_details.rds_db_instance_storage.cost_calculation.usages[0].usage_amount #=> Float
    #   resp.current_resource_details.rds_db_instance_storage.cost_calculation.usages[0].operation #=> String
    #   resp.current_resource_details.rds_db_instance_storage.cost_calculation.usages[0].product_code #=> String
    #   resp.current_resource_details.rds_db_instance_storage.cost_calculation.usages[0].unit #=> String
    #   resp.current_resource_details.rds_db_instance_storage.cost_calculation.pricing.estimated_cost_before_discounts #=> Float
    #   resp.current_resource_details.rds_db_instance_storage.cost_calculation.pricing.estimated_net_unused_amortized_commitments #=> Float
    #   resp.current_resource_details.rds_db_instance_storage.cost_calculation.pricing.estimated_discounts.savings_plans_discount #=> Float
    #   resp.current_resource_details.rds_db_instance_storage.cost_calculation.pricing.estimated_discounts.reserved_instances_discount #=> Float
    #   resp.current_resource_details.rds_db_instance_storage.cost_calculation.pricing.estimated_discounts.other_discount #=> Float
    #   resp.current_resource_details.rds_db_instance_storage.cost_calculation.pricing.estimated_cost_after_discounts #=> Float
    #   resp.current_resource_details.aurora_db_cluster_storage.configuration.storage_type #=> String
    #   resp.current_resource_details.aurora_db_cluster_storage.cost_calculation.usages #=> Array
    #   resp.current_resource_details.aurora_db_cluster_storage.cost_calculation.usages[0].usage_type #=> String
    #   resp.current_resource_details.aurora_db_cluster_storage.cost_calculation.usages[0].usage_amount #=> Float
    #   resp.current_resource_details.aurora_db_cluster_storage.cost_calculation.usages[0].operation #=> String
    #   resp.current_resource_details.aurora_db_cluster_storage.cost_calculation.usages[0].product_code #=> String
    #   resp.current_resource_details.aurora_db_cluster_storage.cost_calculation.usages[0].unit #=> String
    #   resp.current_resource_details.aurora_db_cluster_storage.cost_calculation.pricing.estimated_cost_before_discounts #=> Float
    #   resp.current_resource_details.aurora_db_cluster_storage.cost_calculation.pricing.estimated_net_unused_amortized_commitments #=> Float
    #   resp.current_resource_details.aurora_db_cluster_storage.cost_calculation.pricing.estimated_discounts.savings_plans_discount #=> Float
    #   resp.current_resource_details.aurora_db_cluster_storage.cost_calculation.pricing.estimated_discounts.reserved_instances_discount #=> Float
    #   resp.current_resource_details.aurora_db_cluster_storage.cost_calculation.pricing.estimated_discounts.other_discount #=> Float
    #   resp.current_resource_details.aurora_db_cluster_storage.cost_calculation.pricing.estimated_cost_after_discounts #=> Float
    #   resp.current_resource_details.dynamo_db_reserved_capacity.configuration.account_scope #=> String
    #   resp.current_resource_details.dynamo_db_reserved_capacity.configuration.service #=> String
    #   resp.current_resource_details.dynamo_db_reserved_capacity.configuration.term #=> String
    #   resp.current_resource_details.dynamo_db_reserved_capacity.configuration.payment_option #=> String
    #   resp.current_resource_details.dynamo_db_reserved_capacity.configuration.reserved_instances_region #=> String
    #   resp.current_resource_details.dynamo_db_reserved_capacity.configuration.upfront_cost #=> String
    #   resp.current_resource_details.dynamo_db_reserved_capacity.configuration.monthly_recurring_cost #=> String
    #   resp.current_resource_details.dynamo_db_reserved_capacity.configuration.number_of_capacity_units_to_purchase #=> String
    #   resp.current_resource_details.dynamo_db_reserved_capacity.configuration.capacity_units #=> String
    #   resp.current_resource_details.dynamo_db_reserved_capacity.cost_calculation.pricing.estimated_on_demand_cost #=> Float
    #   resp.current_resource_details.dynamo_db_reserved_capacity.cost_calculation.pricing.monthly_reservation_eligible_cost #=> Float
    #   resp.current_resource_details.dynamo_db_reserved_capacity.cost_calculation.pricing.savings_percentage #=> Float
    #   resp.current_resource_details.dynamo_db_reserved_capacity.cost_calculation.pricing.estimated_monthly_amortized_reservation_cost #=> Float
    #   resp.current_resource_details.memory_db_reserved_instances.configuration.account_scope #=> String
    #   resp.current_resource_details.memory_db_reserved_instances.configuration.service #=> String
    #   resp.current_resource_details.memory_db_reserved_instances.configuration.term #=> String
    #   resp.current_resource_details.memory_db_reserved_instances.configuration.payment_option #=> String
    #   resp.current_resource_details.memory_db_reserved_instances.configuration.reserved_instances_region #=> String
    #   resp.current_resource_details.memory_db_reserved_instances.configuration.upfront_cost #=> String
    #   resp.current_resource_details.memory_db_reserved_instances.configuration.monthly_recurring_cost #=> String
    #   resp.current_resource_details.memory_db_reserved_instances.configuration.normalized_units_to_purchase #=> String
    #   resp.current_resource_details.memory_db_reserved_instances.configuration.number_of_instances_to_purchase #=> String
    #   resp.current_resource_details.memory_db_reserved_instances.configuration.instance_type #=> String
    #   resp.current_resource_details.memory_db_reserved_instances.configuration.instance_family #=> String
    #   resp.current_resource_details.memory_db_reserved_instances.configuration.size_flex_eligible #=> Boolean
    #   resp.current_resource_details.memory_db_reserved_instances.configuration.current_generation #=> String
    #   resp.current_resource_details.memory_db_reserved_instances.cost_calculation.pricing.estimated_on_demand_cost #=> Float
    #   resp.current_resource_details.memory_db_reserved_instances.cost_calculation.pricing.monthly_reservation_eligible_cost #=> Float
    #   resp.current_resource_details.memory_db_reserved_instances.cost_calculation.pricing.savings_percentage #=> Float
    #   resp.current_resource_details.memory_db_reserved_instances.cost_calculation.pricing.estimated_monthly_amortized_reservation_cost #=> Float
    #   resp.current_resource_details.nat_gateway.configuration.active_connection_count #=> Integer
    #   resp.current_resource_details.nat_gateway.configuration.packets_in_from_source #=> Integer
    #   resp.current_resource_details.nat_gateway.configuration.packets_in_from_destination #=> Integer
    #   resp.current_resource_details.nat_gateway.cost_calculation.usages #=> Array
    #   resp.current_resource_details.nat_gateway.cost_calculation.usages[0].usage_type #=> String
    #   resp.current_resource_details.nat_gateway.cost_calculation.usages[0].usage_amount #=> Float
    #   resp.current_resource_details.nat_gateway.cost_calculation.usages[0].operation #=> String
    #   resp.current_resource_details.nat_gateway.cost_calculation.usages[0].product_code #=> String
    #   resp.current_resource_details.nat_gateway.cost_calculation.usages[0].unit #=> String
    #   resp.current_resource_details.nat_gateway.cost_calculation.pricing.estimated_cost_before_discounts #=> Float
    #   resp.current_resource_details.nat_gateway.cost_calculation.pricing.estimated_net_unused_amortized_commitments #=> Float
    #   resp.current_resource_details.nat_gateway.cost_calculation.pricing.estimated_discounts.savings_plans_discount #=> Float
    #   resp.current_resource_details.nat_gateway.cost_calculation.pricing.estimated_discounts.reserved_instances_discount #=> Float
    #   resp.current_resource_details.nat_gateway.cost_calculation.pricing.estimated_discounts.other_discount #=> Float
    #   resp.current_resource_details.nat_gateway.cost_calculation.pricing.estimated_cost_after_discounts #=> Float
    #   resp.recommended_resource_details.lambda_function.configuration.compute.v_cpu #=> Float
    #   resp.recommended_resource_details.lambda_function.configuration.compute.memory_size_in_mb #=> Integer
    #   resp.recommended_resource_details.lambda_function.configuration.compute.architecture #=> String
    #   resp.recommended_resource_details.lambda_function.configuration.compute.platform #=> String
    #   resp.recommended_resource_details.lambda_function.cost_calculation.usages #=> Array
    #   resp.recommended_resource_details.lambda_function.cost_calculation.usages[0].usage_type #=> String
    #   resp.recommended_resource_details.lambda_function.cost_calculation.usages[0].usage_amount #=> Float
    #   resp.recommended_resource_details.lambda_function.cost_calculation.usages[0].operation #=> String
    #   resp.recommended_resource_details.lambda_function.cost_calculation.usages[0].product_code #=> String
    #   resp.recommended_resource_details.lambda_function.cost_calculation.usages[0].unit #=> String
    #   resp.recommended_resource_details.lambda_function.cost_calculation.pricing.estimated_cost_before_discounts #=> Float
    #   resp.recommended_resource_details.lambda_function.cost_calculation.pricing.estimated_net_unused_amortized_commitments #=> Float
    #   resp.recommended_resource_details.lambda_function.cost_calculation.pricing.estimated_discounts.savings_plans_discount #=> Float
    #   resp.recommended_resource_details.lambda_function.cost_calculation.pricing.estimated_discounts.reserved_instances_discount #=> Float
    #   resp.recommended_resource_details.lambda_function.cost_calculation.pricing.estimated_discounts.other_discount #=> Float
    #   resp.recommended_resource_details.lambda_function.cost_calculation.pricing.estimated_cost_after_discounts #=> Float
    #   resp.recommended_resource_details.ecs_service.configuration.compute.v_cpu #=> Float
    #   resp.recommended_resource_details.ecs_service.configuration.compute.memory_size_in_mb #=> Integer
    #   resp.recommended_resource_details.ecs_service.configuration.compute.architecture #=> String
    #   resp.recommended_resource_details.ecs_service.configuration.compute.platform #=> String
    #   resp.recommended_resource_details.ecs_service.cost_calculation.usages #=> Array
    #   resp.recommended_resource_details.ecs_service.cost_calculation.usages[0].usage_type #=> String
    #   resp.recommended_resource_details.ecs_service.cost_calculation.usages[0].usage_amount #=> Float
    #   resp.recommended_resource_details.ecs_service.cost_calculation.usages[0].operation #=> String
    #   resp.recommended_resource_details.ecs_service.cost_calculation.usages[0].product_code #=> String
    #   resp.recommended_resource_details.ecs_service.cost_calculation.usages[0].unit #=> String
    #   resp.recommended_resource_details.ecs_service.cost_calculation.pricing.estimated_cost_before_discounts #=> Float
    #   resp.recommended_resource_details.ecs_service.cost_calculation.pricing.estimated_net_unused_amortized_commitments #=> Float
    #   resp.recommended_resource_details.ecs_service.cost_calculation.pricing.estimated_discounts.savings_plans_discount #=> Float
    #   resp.recommended_resource_details.ecs_service.cost_calculation.pricing.estimated_discounts.reserved_instances_discount #=> Float
    #   resp.recommended_resource_details.ecs_service.cost_calculation.pricing.estimated_discounts.other_discount #=> Float
    #   resp.recommended_resource_details.ecs_service.cost_calculation.pricing.estimated_cost_after_discounts #=> Float
    #   resp.recommended_resource_details.ec2_instance.configuration.instance.type #=> String
    #   resp.recommended_resource_details.ec2_instance.cost_calculation.usages #=> Array
    #   resp.recommended_resource_details.ec2_instance.cost_calculation.usages[0].usage_type #=> String
    #   resp.recommended_resource_details.ec2_instance.cost_calculation.usages[0].usage_amount #=> Float
    #   resp.recommended_resource_details.ec2_instance.cost_calculation.usages[0].operation #=> String
    #   resp.recommended_resource_details.ec2_instance.cost_calculation.usages[0].product_code #=> String
    #   resp.recommended_resource_details.ec2_instance.cost_calculation.usages[0].unit #=> String
    #   resp.recommended_resource_details.ec2_instance.cost_calculation.pricing.estimated_cost_before_discounts #=> Float
    #   resp.recommended_resource_details.ec2_instance.cost_calculation.pricing.estimated_net_unused_amortized_commitments #=> Float
    #   resp.recommended_resource_details.ec2_instance.cost_calculation.pricing.estimated_discounts.savings_plans_discount #=> Float
    #   resp.recommended_resource_details.ec2_instance.cost_calculation.pricing.estimated_discounts.reserved_instances_discount #=> Float
    #   resp.recommended_resource_details.ec2_instance.cost_calculation.pricing.estimated_discounts.other_discount #=> Float
    #   resp.recommended_resource_details.ec2_instance.cost_calculation.pricing.estimated_cost_after_discounts #=> Float
    #   resp.recommended_resource_details.ebs_volume.configuration.storage.type #=> String
    #   resp.recommended_resource_details.ebs_volume.configuration.storage.size_in_gb #=> Float
    #   resp.recommended_resource_details.ebs_volume.configuration.performance.iops #=> Float
    #   resp.recommended_resource_details.ebs_volume.configuration.performance.throughput #=> Float
    #   resp.recommended_resource_details.ebs_volume.configuration.attachment_state #=> String
    #   resp.recommended_resource_details.ebs_volume.cost_calculation.usages #=> Array
    #   resp.recommended_resource_details.ebs_volume.cost_calculation.usages[0].usage_type #=> String
    #   resp.recommended_resource_details.ebs_volume.cost_calculation.usages[0].usage_amount #=> Float
    #   resp.recommended_resource_details.ebs_volume.cost_calculation.usages[0].operation #=> String
    #   resp.recommended_resource_details.ebs_volume.cost_calculation.usages[0].product_code #=> String
    #   resp.recommended_resource_details.ebs_volume.cost_calculation.usages[0].unit #=> String
    #   resp.recommended_resource_details.ebs_volume.cost_calculation.pricing.estimated_cost_before_discounts #=> Float
    #   resp.recommended_resource_details.ebs_volume.cost_calculation.pricing.estimated_net_unused_amortized_commitments #=> Float
    #   resp.recommended_resource_details.ebs_volume.cost_calculation.pricing.estimated_discounts.savings_plans_discount #=> Float
    #   resp.recommended_resource_details.ebs_volume.cost_calculation.pricing.estimated_discounts.reserved_instances_discount #=> Float
    #   resp.recommended_resource_details.ebs_volume.cost_calculation.pricing.estimated_discounts.other_discount #=> Float
    #   resp.recommended_resource_details.ebs_volume.cost_calculation.pricing.estimated_cost_after_discounts #=> Float
    #   resp.recommended_resource_details.ec2_auto_scaling_group.configuration.instance.type #=> String
    #   resp.recommended_resource_details.ec2_auto_scaling_group.configuration.mixed_instances #=> Array
    #   resp.recommended_resource_details.ec2_auto_scaling_group.configuration.mixed_instances[0].type #=> String
    #   resp.recommended_resource_details.ec2_auto_scaling_group.configuration.type #=> String, one of "SingleInstanceType", "MixedInstanceTypes"
    #   resp.recommended_resource_details.ec2_auto_scaling_group.configuration.allocation_strategy #=> String, one of "Prioritized", "LowestPrice"
    #   resp.recommended_resource_details.ec2_auto_scaling_group.cost_calculation.usages #=> Array
    #   resp.recommended_resource_details.ec2_auto_scaling_group.cost_calculation.usages[0].usage_type #=> String
    #   resp.recommended_resource_details.ec2_auto_scaling_group.cost_calculation.usages[0].usage_amount #=> Float
    #   resp.recommended_resource_details.ec2_auto_scaling_group.cost_calculation.usages[0].operation #=> String
    #   resp.recommended_resource_details.ec2_auto_scaling_group.cost_calculation.usages[0].product_code #=> String
    #   resp.recommended_resource_details.ec2_auto_scaling_group.cost_calculation.usages[0].unit #=> String
    #   resp.recommended_resource_details.ec2_auto_scaling_group.cost_calculation.pricing.estimated_cost_before_discounts #=> Float
    #   resp.recommended_resource_details.ec2_auto_scaling_group.cost_calculation.pricing.estimated_net_unused_amortized_commitments #=> Float
    #   resp.recommended_resource_details.ec2_auto_scaling_group.cost_calculation.pricing.estimated_discounts.savings_plans_discount #=> Float
    #   resp.recommended_resource_details.ec2_auto_scaling_group.cost_calculation.pricing.estimated_discounts.reserved_instances_discount #=> Float
    #   resp.recommended_resource_details.ec2_auto_scaling_group.cost_calculation.pricing.estimated_discounts.other_discount #=> Float
    #   resp.recommended_resource_details.ec2_auto_scaling_group.cost_calculation.pricing.estimated_cost_after_discounts #=> Float
    #   resp.recommended_resource_details.ec2_reserved_instances.configuration.account_scope #=> String
    #   resp.recommended_resource_details.ec2_reserved_instances.configuration.service #=> String
    #   resp.recommended_resource_details.ec2_reserved_instances.configuration.term #=> String
    #   resp.recommended_resource_details.ec2_reserved_instances.configuration.payment_option #=> String
    #   resp.recommended_resource_details.ec2_reserved_instances.configuration.reserved_instances_region #=> String
    #   resp.recommended_resource_details.ec2_reserved_instances.configuration.upfront_cost #=> String
    #   resp.recommended_resource_details.ec2_reserved_instances.configuration.monthly_recurring_cost #=> String
    #   resp.recommended_resource_details.ec2_reserved_instances.configuration.normalized_units_to_purchase #=> String
    #   resp.recommended_resource_details.ec2_reserved_instances.configuration.number_of_instances_to_purchase #=> String
    #   resp.recommended_resource_details.ec2_reserved_instances.configuration.offering_class #=> String
    #   resp.recommended_resource_details.ec2_reserved_instances.configuration.instance_family #=> String
    #   resp.recommended_resource_details.ec2_reserved_instances.configuration.instance_type #=> String
    #   resp.recommended_resource_details.ec2_reserved_instances.configuration.current_generation #=> String
    #   resp.recommended_resource_details.ec2_reserved_instances.configuration.platform #=> String
    #   resp.recommended_resource_details.ec2_reserved_instances.configuration.tenancy #=> String
    #   resp.recommended_resource_details.ec2_reserved_instances.configuration.size_flex_eligible #=> Boolean
    #   resp.recommended_resource_details.ec2_reserved_instances.cost_calculation.pricing.estimated_on_demand_cost #=> Float
    #   resp.recommended_resource_details.ec2_reserved_instances.cost_calculation.pricing.monthly_reservation_eligible_cost #=> Float
    #   resp.recommended_resource_details.ec2_reserved_instances.cost_calculation.pricing.savings_percentage #=> Float
    #   resp.recommended_resource_details.ec2_reserved_instances.cost_calculation.pricing.estimated_monthly_amortized_reservation_cost #=> Float
    #   resp.recommended_resource_details.rds_reserved_instances.configuration.account_scope #=> String
    #   resp.recommended_resource_details.rds_reserved_instances.configuration.service #=> String
    #   resp.recommended_resource_details.rds_reserved_instances.configuration.term #=> String
    #   resp.recommended_resource_details.rds_reserved_instances.configuration.payment_option #=> String
    #   resp.recommended_resource_details.rds_reserved_instances.configuration.reserved_instances_region #=> String
    #   resp.recommended_resource_details.rds_reserved_instances.configuration.upfront_cost #=> String
    #   resp.recommended_resource_details.rds_reserved_instances.configuration.monthly_recurring_cost #=> String
    #   resp.recommended_resource_details.rds_reserved_instances.configuration.normalized_units_to_purchase #=> String
    #   resp.recommended_resource_details.rds_reserved_instances.configuration.number_of_instances_to_purchase #=> String
    #   resp.recommended_resource_details.rds_reserved_instances.configuration.instance_family #=> String
    #   resp.recommended_resource_details.rds_reserved_instances.configuration.instance_type #=> String
    #   resp.recommended_resource_details.rds_reserved_instances.configuration.size_flex_eligible #=> Boolean
    #   resp.recommended_resource_details.rds_reserved_instances.configuration.current_generation #=> String
    #   resp.recommended_resource_details.rds_reserved_instances.configuration.license_model #=> String
    #   resp.recommended_resource_details.rds_reserved_instances.configuration.database_edition #=> String
    #   resp.recommended_resource_details.rds_reserved_instances.configuration.database_engine #=> String
    #   resp.recommended_resource_details.rds_reserved_instances.configuration.deployment_option #=> String
    #   resp.recommended_resource_details.rds_reserved_instances.cost_calculation.pricing.estimated_on_demand_cost #=> Float
    #   resp.recommended_resource_details.rds_reserved_instances.cost_calculation.pricing.monthly_reservation_eligible_cost #=> Float
    #   resp.recommended_resource_details.rds_reserved_instances.cost_calculation.pricing.savings_percentage #=> Float
    #   resp.recommended_resource_details.rds_reserved_instances.cost_calculation.pricing.estimated_monthly_amortized_reservation_cost #=> Float
    #   resp.recommended_resource_details.elasti_cache_reserved_instances.configuration.account_scope #=> String
    #   resp.recommended_resource_details.elasti_cache_reserved_instances.configuration.service #=> String
    #   resp.recommended_resource_details.elasti_cache_reserved_instances.configuration.term #=> String
    #   resp.recommended_resource_details.elasti_cache_reserved_instances.configuration.payment_option #=> String
    #   resp.recommended_resource_details.elasti_cache_reserved_instances.configuration.reserved_instances_region #=> String
    #   resp.recommended_resource_details.elasti_cache_reserved_instances.configuration.upfront_cost #=> String
    #   resp.recommended_resource_details.elasti_cache_reserved_instances.configuration.monthly_recurring_cost #=> String
    #   resp.recommended_resource_details.elasti_cache_reserved_instances.configuration.normalized_units_to_purchase #=> String
    #   resp.recommended_resource_details.elasti_cache_reserved_instances.configuration.number_of_instances_to_purchase #=> String
    #   resp.recommended_resource_details.elasti_cache_reserved_instances.configuration.instance_family #=> String
    #   resp.recommended_resource_details.elasti_cache_reserved_instances.configuration.instance_type #=> String
    #   resp.recommended_resource_details.elasti_cache_reserved_instances.configuration.current_generation #=> String
    #   resp.recommended_resource_details.elasti_cache_reserved_instances.configuration.size_flex_eligible #=> Boolean
    #   resp.recommended_resource_details.elasti_cache_reserved_instances.cost_calculation.pricing.estimated_on_demand_cost #=> Float
    #   resp.recommended_resource_details.elasti_cache_reserved_instances.cost_calculation.pricing.monthly_reservation_eligible_cost #=> Float
    #   resp.recommended_resource_details.elasti_cache_reserved_instances.cost_calculation.pricing.savings_percentage #=> Float
    #   resp.recommended_resource_details.elasti_cache_reserved_instances.cost_calculation.pricing.estimated_monthly_amortized_reservation_cost #=> Float
    #   resp.recommended_resource_details.open_search_reserved_instances.configuration.account_scope #=> String
    #   resp.recommended_resource_details.open_search_reserved_instances.configuration.service #=> String
    #   resp.recommended_resource_details.open_search_reserved_instances.configuration.term #=> String
    #   resp.recommended_resource_details.open_search_reserved_instances.configuration.payment_option #=> String
    #   resp.recommended_resource_details.open_search_reserved_instances.configuration.reserved_instances_region #=> String
    #   resp.recommended_resource_details.open_search_reserved_instances.configuration.upfront_cost #=> String
    #   resp.recommended_resource_details.open_search_reserved_instances.configuration.monthly_recurring_cost #=> String
    #   resp.recommended_resource_details.open_search_reserved_instances.configuration.normalized_units_to_purchase #=> String
    #   resp.recommended_resource_details.open_search_reserved_instances.configuration.number_of_instances_to_purchase #=> String
    #   resp.recommended_resource_details.open_search_reserved_instances.configuration.instance_type #=> String
    #   resp.recommended_resource_details.open_search_reserved_instances.configuration.current_generation #=> String
    #   resp.recommended_resource_details.open_search_reserved_instances.configuration.size_flex_eligible #=> Boolean
    #   resp.recommended_resource_details.open_search_reserved_instances.cost_calculation.pricing.estimated_on_demand_cost #=> Float
    #   resp.recommended_resource_details.open_search_reserved_instances.cost_calculation.pricing.monthly_reservation_eligible_cost #=> Float
    #   resp.recommended_resource_details.open_search_reserved_instances.cost_calculation.pricing.savings_percentage #=> Float
    #   resp.recommended_resource_details.open_search_reserved_instances.cost_calculation.pricing.estimated_monthly_amortized_reservation_cost #=> Float
    #   resp.recommended_resource_details.redshift_reserved_instances.configuration.account_scope #=> String
    #   resp.recommended_resource_details.redshift_reserved_instances.configuration.service #=> String
    #   resp.recommended_resource_details.redshift_reserved_instances.configuration.term #=> String
    #   resp.recommended_resource_details.redshift_reserved_instances.configuration.payment_option #=> String
    #   resp.recommended_resource_details.redshift_reserved_instances.configuration.reserved_instances_region #=> String
    #   resp.recommended_resource_details.redshift_reserved_instances.configuration.upfront_cost #=> String
    #   resp.recommended_resource_details.redshift_reserved_instances.configuration.monthly_recurring_cost #=> String
    #   resp.recommended_resource_details.redshift_reserved_instances.configuration.normalized_units_to_purchase #=> String
    #   resp.recommended_resource_details.redshift_reserved_instances.configuration.number_of_instances_to_purchase #=> String
    #   resp.recommended_resource_details.redshift_reserved_instances.configuration.instance_family #=> String
    #   resp.recommended_resource_details.redshift_reserved_instances.configuration.instance_type #=> String
    #   resp.recommended_resource_details.redshift_reserved_instances.configuration.size_flex_eligible #=> Boolean
    #   resp.recommended_resource_details.redshift_reserved_instances.configuration.current_generation #=> String
    #   resp.recommended_resource_details.redshift_reserved_instances.cost_calculation.pricing.estimated_on_demand_cost #=> Float
    #   resp.recommended_resource_details.redshift_reserved_instances.cost_calculation.pricing.monthly_reservation_eligible_cost #=> Float
    #   resp.recommended_resource_details.redshift_reserved_instances.cost_calculation.pricing.savings_percentage #=> Float
    #   resp.recommended_resource_details.redshift_reserved_instances.cost_calculation.pricing.estimated_monthly_amortized_reservation_cost #=> Float
    #   resp.recommended_resource_details.ec2_instance_savings_plans.configuration.account_scope #=> String
    #   resp.recommended_resource_details.ec2_instance_savings_plans.configuration.term #=> String
    #   resp.recommended_resource_details.ec2_instance_savings_plans.configuration.payment_option #=> String
    #   resp.recommended_resource_details.ec2_instance_savings_plans.configuration.hourly_commitment #=> String
    #   resp.recommended_resource_details.ec2_instance_savings_plans.configuration.instance_family #=> String
    #   resp.recommended_resource_details.ec2_instance_savings_plans.configuration.savings_plans_region #=> String
    #   resp.recommended_resource_details.ec2_instance_savings_plans.cost_calculation.pricing.monthly_savings_plans_eligible_cost #=> Float
    #   resp.recommended_resource_details.ec2_instance_savings_plans.cost_calculation.pricing.estimated_monthly_commitment #=> Float
    #   resp.recommended_resource_details.ec2_instance_savings_plans.cost_calculation.pricing.savings_percentage #=> Float
    #   resp.recommended_resource_details.ec2_instance_savings_plans.cost_calculation.pricing.estimated_on_demand_cost #=> Float
    #   resp.recommended_resource_details.compute_savings_plans.configuration.account_scope #=> String
    #   resp.recommended_resource_details.compute_savings_plans.configuration.term #=> String
    #   resp.recommended_resource_details.compute_savings_plans.configuration.payment_option #=> String
    #   resp.recommended_resource_details.compute_savings_plans.configuration.hourly_commitment #=> String
    #   resp.recommended_resource_details.compute_savings_plans.cost_calculation.pricing.monthly_savings_plans_eligible_cost #=> Float
    #   resp.recommended_resource_details.compute_savings_plans.cost_calculation.pricing.estimated_monthly_commitment #=> Float
    #   resp.recommended_resource_details.compute_savings_plans.cost_calculation.pricing.savings_percentage #=> Float
    #   resp.recommended_resource_details.compute_savings_plans.cost_calculation.pricing.estimated_on_demand_cost #=> Float
    #   resp.recommended_resource_details.sage_maker_savings_plans.configuration.account_scope #=> String
    #   resp.recommended_resource_details.sage_maker_savings_plans.configuration.term #=> String
    #   resp.recommended_resource_details.sage_maker_savings_plans.configuration.payment_option #=> String
    #   resp.recommended_resource_details.sage_maker_savings_plans.configuration.hourly_commitment #=> String
    #   resp.recommended_resource_details.sage_maker_savings_plans.cost_calculation.pricing.monthly_savings_plans_eligible_cost #=> Float
    #   resp.recommended_resource_details.sage_maker_savings_plans.cost_calculation.pricing.estimated_monthly_commitment #=> Float
    #   resp.recommended_resource_details.sage_maker_savings_plans.cost_calculation.pricing.savings_percentage #=> Float
    #   resp.recommended_resource_details.sage_maker_savings_plans.cost_calculation.pricing.estimated_on_demand_cost #=> Float
    #   resp.recommended_resource_details.rds_db_instance.configuration.instance.db_instance_class #=> String
    #   resp.recommended_resource_details.rds_db_instance.cost_calculation.usages #=> Array
    #   resp.recommended_resource_details.rds_db_instance.cost_calculation.usages[0].usage_type #=> String
    #   resp.recommended_resource_details.rds_db_instance.cost_calculation.usages[0].usage_amount #=> Float
    #   resp.recommended_resource_details.rds_db_instance.cost_calculation.usages[0].operation #=> String
    #   resp.recommended_resource_details.rds_db_instance.cost_calculation.usages[0].product_code #=> String
    #   resp.recommended_resource_details.rds_db_instance.cost_calculation.usages[0].unit #=> String
    #   resp.recommended_resource_details.rds_db_instance.cost_calculation.pricing.estimated_cost_before_discounts #=> Float
    #   resp.recommended_resource_details.rds_db_instance.cost_calculation.pricing.estimated_net_unused_amortized_commitments #=> Float
    #   resp.recommended_resource_details.rds_db_instance.cost_calculation.pricing.estimated_discounts.savings_plans_discount #=> Float
    #   resp.recommended_resource_details.rds_db_instance.cost_calculation.pricing.estimated_discounts.reserved_instances_discount #=> Float
    #   resp.recommended_resource_details.rds_db_instance.cost_calculation.pricing.estimated_discounts.other_discount #=> Float
    #   resp.recommended_resource_details.rds_db_instance.cost_calculation.pricing.estimated_cost_after_discounts #=> Float
    #   resp.recommended_resource_details.rds_db_instance_storage.configuration.storage_type #=> String
    #   resp.recommended_resource_details.rds_db_instance_storage.configuration.allocated_storage_in_gb #=> Float
    #   resp.recommended_resource_details.rds_db_instance_storage.configuration.iops #=> Float
    #   resp.recommended_resource_details.rds_db_instance_storage.configuration.storage_throughput #=> Float
    #   resp.recommended_resource_details.rds_db_instance_storage.cost_calculation.usages #=> Array
    #   resp.recommended_resource_details.rds_db_instance_storage.cost_calculation.usages[0].usage_type #=> String
    #   resp.recommended_resource_details.rds_db_instance_storage.cost_calculation.usages[0].usage_amount #=> Float
    #   resp.recommended_resource_details.rds_db_instance_storage.cost_calculation.usages[0].operation #=> String
    #   resp.recommended_resource_details.rds_db_instance_storage.cost_calculation.usages[0].product_code #=> String
    #   resp.recommended_resource_details.rds_db_instance_storage.cost_calculation.usages[0].unit #=> String
    #   resp.recommended_resource_details.rds_db_instance_storage.cost_calculation.pricing.estimated_cost_before_discounts #=> Float
    #   resp.recommended_resource_details.rds_db_instance_storage.cost_calculation.pricing.estimated_net_unused_amortized_commitments #=> Float
    #   resp.recommended_resource_details.rds_db_instance_storage.cost_calculation.pricing.estimated_discounts.savings_plans_discount #=> Float
    #   resp.recommended_resource_details.rds_db_instance_storage.cost_calculation.pricing.estimated_discounts.reserved_instances_discount #=> Float
    #   resp.recommended_resource_details.rds_db_instance_storage.cost_calculation.pricing.estimated_discounts.other_discount #=> Float
    #   resp.recommended_resource_details.rds_db_instance_storage.cost_calculation.pricing.estimated_cost_after_discounts #=> Float
    #   resp.recommended_resource_details.aurora_db_cluster_storage.configuration.storage_type #=> String
    #   resp.recommended_resource_details.aurora_db_cluster_storage.cost_calculation.usages #=> Array
    #   resp.recommended_resource_details.aurora_db_cluster_storage.cost_calculation.usages[0].usage_type #=> String
    #   resp.recommended_resource_details.aurora_db_cluster_storage.cost_calculation.usages[0].usage_amount #=> Float
    #   resp.recommended_resource_details.aurora_db_cluster_storage.cost_calculation.usages[0].operation #=> String
    #   resp.recommended_resource_details.aurora_db_cluster_storage.cost_calculation.usages[0].product_code #=> String
    #   resp.recommended_resource_details.aurora_db_cluster_storage.cost_calculation.usages[0].unit #=> String
    #   resp.recommended_resource_details.aurora_db_cluster_storage.cost_calculation.pricing.estimated_cost_before_discounts #=> Float
    #   resp.recommended_resource_details.aurora_db_cluster_storage.cost_calculation.pricing.estimated_net_unused_amortized_commitments #=> Float
    #   resp.recommended_resource_details.aurora_db_cluster_storage.cost_calculation.pricing.estimated_discounts.savings_plans_discount #=> Float
    #   resp.recommended_resource_details.aurora_db_cluster_storage.cost_calculation.pricing.estimated_discounts.reserved_instances_discount #=> Float
    #   resp.recommended_resource_details.aurora_db_cluster_storage.cost_calculation.pricing.estimated_discounts.other_discount #=> Float
    #   resp.recommended_resource_details.aurora_db_cluster_storage.cost_calculation.pricing.estimated_cost_after_discounts #=> Float
    #   resp.recommended_resource_details.dynamo_db_reserved_capacity.configuration.account_scope #=> String
    #   resp.recommended_resource_details.dynamo_db_reserved_capacity.configuration.service #=> String
    #   resp.recommended_resource_details.dynamo_db_reserved_capacity.configuration.term #=> String
    #   resp.recommended_resource_details.dynamo_db_reserved_capacity.configuration.payment_option #=> String
    #   resp.recommended_resource_details.dynamo_db_reserved_capacity.configuration.reserved_instances_region #=> String
    #   resp.recommended_resource_details.dynamo_db_reserved_capacity.configuration.upfront_cost #=> String
    #   resp.recommended_resource_details.dynamo_db_reserved_capacity.configuration.monthly_recurring_cost #=> String
    #   resp.recommended_resource_details.dynamo_db_reserved_capacity.configuration.number_of_capacity_units_to_purchase #=> String
    #   resp.recommended_resource_details.dynamo_db_reserved_capacity.configuration.capacity_units #=> String
    #   resp.recommended_resource_details.dynamo_db_reserved_capacity.cost_calculation.pricing.estimated_on_demand_cost #=> Float
    #   resp.recommended_resource_details.dynamo_db_reserved_capacity.cost_calculation.pricing.monthly_reservation_eligible_cost #=> Float
    #   resp.recommended_resource_details.dynamo_db_reserved_capacity.cost_calculation.pricing.savings_percentage #=> Float
    #   resp.recommended_resource_details.dynamo_db_reserved_capacity.cost_calculation.pricing.estimated_monthly_amortized_reservation_cost #=> Float
    #   resp.recommended_resource_details.memory_db_reserved_instances.configuration.account_scope #=> String
    #   resp.recommended_resource_details.memory_db_reserved_instances.configuration.service #=> String
    #   resp.recommended_resource_details.memory_db_reserved_instances.configuration.term #=> String
    #   resp.recommended_resource_details.memory_db_reserved_instances.configuration.payment_option #=> String
    #   resp.recommended_resource_details.memory_db_reserved_instances.configuration.reserved_instances_region #=> String
    #   resp.recommended_resource_details.memory_db_reserved_instances.configuration.upfront_cost #=> String
    #   resp.recommended_resource_details.memory_db_reserved_instances.configuration.monthly_recurring_cost #=> String
    #   resp.recommended_resource_details.memory_db_reserved_instances.configuration.normalized_units_to_purchase #=> String
    #   resp.recommended_resource_details.memory_db_reserved_instances.configuration.number_of_instances_to_purchase #=> String
    #   resp.recommended_resource_details.memory_db_reserved_instances.configuration.instance_type #=> String
    #   resp.recommended_resource_details.memory_db_reserved_instances.configuration.instance_family #=> String
    #   resp.recommended_resource_details.memory_db_reserved_instances.configuration.size_flex_eligible #=> Boolean
    #   resp.recommended_resource_details.memory_db_reserved_instances.configuration.current_generation #=> String
    #   resp.recommended_resource_details.memory_db_reserved_instances.cost_calculation.pricing.estimated_on_demand_cost #=> Float
    #   resp.recommended_resource_details.memory_db_reserved_instances.cost_calculation.pricing.monthly_reservation_eligible_cost #=> Float
    #   resp.recommended_resource_details.memory_db_reserved_instances.cost_calculation.pricing.savings_percentage #=> Float
    #   resp.recommended_resource_details.memory_db_reserved_instances.cost_calculation.pricing.estimated_monthly_amortized_reservation_cost #=> Float
    #   resp.recommended_resource_details.nat_gateway.configuration.active_connection_count #=> Integer
    #   resp.recommended_resource_details.nat_gateway.configuration.packets_in_from_source #=> Integer
    #   resp.recommended_resource_details.nat_gateway.configuration.packets_in_from_destination #=> Integer
    #   resp.recommended_resource_details.nat_gateway.cost_calculation.usages #=> Array
    #   resp.recommended_resource_details.nat_gateway.cost_calculation.usages[0].usage_type #=> String
    #   resp.recommended_resource_details.nat_gateway.cost_calculation.usages[0].usage_amount #=> Float
    #   resp.recommended_resource_details.nat_gateway.cost_calculation.usages[0].operation #=> String
    #   resp.recommended_resource_details.nat_gateway.cost_calculation.usages[0].product_code #=> String
    #   resp.recommended_resource_details.nat_gateway.cost_calculation.usages[0].unit #=> String
    #   resp.recommended_resource_details.nat_gateway.cost_calculation.pricing.estimated_cost_before_discounts #=> Float
    #   resp.recommended_resource_details.nat_gateway.cost_calculation.pricing.estimated_net_unused_amortized_commitments #=> Float
    #   resp.recommended_resource_details.nat_gateway.cost_calculation.pricing.estimated_discounts.savings_plans_discount #=> Float
    #   resp.recommended_resource_details.nat_gateway.cost_calculation.pricing.estimated_discounts.reserved_instances_discount #=> Float
    #   resp.recommended_resource_details.nat_gateway.cost_calculation.pricing.estimated_discounts.other_discount #=> Float
    #   resp.recommended_resource_details.nat_gateway.cost_calculation.pricing.estimated_cost_after_discounts #=> Float
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cost-optimization-hub-2022-07-26/GetRecommendation AWS API Documentation
    #
    # @overload get_recommendation(params = {})
    # @param [Hash] params ({})
    def get_recommendation(params = {}, options = {})
      req = build_request(:get_recommendation, params)
      req.send_request(options)
    end

    # Returns cost efficiency metrics aggregated over time and optionally
    # grouped by a specified dimension. The metrics provide insights into
    # your cost optimization progress by tracking estimated savings,
    # spending, and measures how effectively you're optimizing your Cloud
    # resources.
    #
    # The operation supports both daily and monthly time granularities and
    # allows grouping results by account ID, Amazon Web Services Region.
    # Results are returned as time-series data, enabling you to analyze
    # trends in your cost optimization performance over the specified time
    # period.
    #
    # @option params [String] :group_by
    #   The dimension by which to group the cost efficiency metrics. Valid
    #   values include account ID, Amazon Web Services Region. When no
    #   grouping is specified, metrics are aggregated across all resources in
    #   the specified time period.
    #
    # @option params [required, String] :granularity
    #   The time granularity for the cost efficiency metrics. Specify `Daily`
    #   for metrics aggregated by day, or `Monthly` for metrics aggregated by
    #   month.
    #
    # @option params [required, Types::TimePeriod] :time_period
    #   The time period for which to retrieve the cost efficiency metrics. The
    #   start date is inclusive and the end date is exclusive. Dates can be
    #   specified in either YYYY-MM-DD format or YYYY-MM format depending on
    #   the desired granularity.
    #
    # @option params [Integer] :max_results
    #   The maximum number of groups to return in the response. Valid values
    #   range from 0 to 1000. Use in conjunction with `nextToken` to paginate
    #   through results when the total number of groups exceeds this limit.
    #
    # @option params [Types::OrderBy] :order_by
    #   The ordering specification for the results. Defines which dimension to
    #   sort by and whether to sort in ascending or descending order.
    #
    # @option params [String] :next_token
    #   The token to retrieve the next page of results. This value is returned
    #   in the response when the number of groups exceeds the specified
    #   `maxResults` value.
    #
    # @return [Types::ListEfficiencyMetricsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListEfficiencyMetricsResponse#efficiency_metrics_by_group #efficiency_metrics_by_group} => Array&lt;Types::EfficiencyMetricsByGroup&gt;
    #   * {Types::ListEfficiencyMetricsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_efficiency_metrics({
    #     group_by: "String",
    #     granularity: "Daily", # required, accepts Daily, Monthly
    #     time_period: { # required
    #       start: "String", # required
    #       end: "String", # required
    #     },
    #     max_results: 1,
    #     order_by: {
    #       dimension: "String",
    #       order: "Asc", # accepts Asc, Desc
    #     },
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.efficiency_metrics_by_group #=> Array
    #   resp.efficiency_metrics_by_group[0].metrics_by_time #=> Array
    #   resp.efficiency_metrics_by_group[0].metrics_by_time[0].score #=> Float
    #   resp.efficiency_metrics_by_group[0].metrics_by_time[0].savings #=> Float
    #   resp.efficiency_metrics_by_group[0].metrics_by_time[0].spend #=> Float
    #   resp.efficiency_metrics_by_group[0].metrics_by_time[0].timestamp #=> String
    #   resp.efficiency_metrics_by_group[0].group #=> String
    #   resp.efficiency_metrics_by_group[0].message #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cost-optimization-hub-2022-07-26/ListEfficiencyMetrics AWS API Documentation
    #
    # @overload list_efficiency_metrics(params = {})
    # @param [Hash] params ({})
    def list_efficiency_metrics(params = {}, options = {})
      req = build_request(:list_efficiency_metrics, params)
      req.send_request(options)
    end

    # Retrieves the enrollment status for an account. It can also return the
    # list of accounts that are enrolled under the organization.
    #
    # @option params [Boolean] :include_organization_info
    #   Indicates whether to return the enrollment status for the
    #   organization.
    #
    # @option params [String] :account_id
    #   The account ID of a member account in the organization.
    #
    # @option params [String] :next_token
    #   The token to retrieve the next set of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of objects that are returned for the request.
    #
    # @return [Types::ListEnrollmentStatusesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListEnrollmentStatusesResponse#items #items} => Array&lt;Types::AccountEnrollmentStatus&gt;
    #   * {Types::ListEnrollmentStatusesResponse#include_member_accounts #include_member_accounts} => Boolean
    #   * {Types::ListEnrollmentStatusesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_enrollment_statuses({
    #     include_organization_info: false,
    #     account_id: "AccountId",
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].account_id #=> String
    #   resp.items[0].status #=> String, one of "Active", "Inactive"
    #   resp.items[0].last_updated_timestamp #=> Time
    #   resp.items[0].created_timestamp #=> Time
    #   resp.include_member_accounts #=> Boolean
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cost-optimization-hub-2022-07-26/ListEnrollmentStatuses AWS API Documentation
    #
    # @overload list_enrollment_statuses(params = {})
    # @param [Hash] params ({})
    def list_enrollment_statuses(params = {}, options = {})
      req = build_request(:list_enrollment_statuses, params)
      req.send_request(options)
    end

    # Returns a concise representation of savings estimates for resources.
    # Also returns de-duped savings across different types of
    # recommendations.
    #
    # <note markdown="1"> The following filters are not supported for this API:
    # `recommendationIds`, `resourceArns`, and `resourceIds`.
    #
    #  </note>
    #
    # @option params [Types::Filter] :filter
    #   Describes a filter that returns a more specific list of
    #   recommendations. Filters recommendations by different dimensions.
    #
    # @option params [required, String] :group_by
    #   The grouping of recommendations by a dimension.
    #
    # @option params [Integer] :max_results
    #   The maximum number of recommendations to be returned for the request.
    #
    # @option params [Array<String>] :metrics
    #   Additional metrics to be returned for the request. The only valid
    #   value is `savingsPercentage`.
    #
    # @option params [String] :next_token
    #   The token to retrieve the next set of results.
    #
    # @return [Types::ListRecommendationSummariesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRecommendationSummariesResponse#estimated_total_deduped_savings #estimated_total_deduped_savings} => Float
    #   * {Types::ListRecommendationSummariesResponse#items #items} => Array&lt;Types::RecommendationSummary&gt;
    #   * {Types::ListRecommendationSummariesResponse#group_by #data.group_by} => String (This method conflicts with a method on Response, call it through the data member)
    #   * {Types::ListRecommendationSummariesResponse#currency_code #currency_code} => String
    #   * {Types::ListRecommendationSummariesResponse#metrics #metrics} => Types::SummaryMetricsResult
    #   * {Types::ListRecommendationSummariesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_recommendation_summaries({
    #     filter: {
    #       restart_needed: false,
    #       rollback_possible: false,
    #       implementation_efforts: ["VeryLow"], # accepts VeryLow, Low, Medium, High, VeryHigh
    #       account_ids: ["AccountId"],
    #       regions: ["String"],
    #       resource_types: ["Ec2Instance"], # accepts Ec2Instance, LambdaFunction, EbsVolume, EcsService, Ec2AutoScalingGroup, Ec2InstanceSavingsPlans, ComputeSavingsPlans, SageMakerSavingsPlans, Ec2ReservedInstances, RdsReservedInstances, OpenSearchReservedInstances, RedshiftReservedInstances, ElastiCacheReservedInstances, RdsDbInstanceStorage, RdsDbInstance, AuroraDbClusterStorage, DynamoDbReservedCapacity, MemoryDbReservedInstances, NatGateway
    #       action_types: ["Rightsize"], # accepts Rightsize, Stop, Upgrade, PurchaseSavingsPlans, PurchaseReservedInstances, MigrateToGraviton, Delete, ScaleIn
    #       tags: [
    #         {
    #           key: "String",
    #           value: "String",
    #         },
    #       ],
    #       resource_ids: ["String"],
    #       resource_arns: ["String"],
    #       recommendation_ids: ["String"],
    #     },
    #     group_by: "String", # required
    #     max_results: 1,
    #     metrics: ["SavingsPercentage"], # accepts SavingsPercentage
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.estimated_total_deduped_savings #=> Float
    #   resp.items #=> Array
    #   resp.items[0].group #=> String
    #   resp.items[0].estimated_monthly_savings #=> Float
    #   resp.items[0].recommendation_count #=> Integer
    #   resp.data.group_by #=> String
    #   resp.currency_code #=> String
    #   resp.metrics.savings_percentage #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cost-optimization-hub-2022-07-26/ListRecommendationSummaries AWS API Documentation
    #
    # @overload list_recommendation_summaries(params = {})
    # @param [Hash] params ({})
    def list_recommendation_summaries(params = {}, options = {})
      req = build_request(:list_recommendation_summaries, params)
      req.send_request(options)
    end

    # Returns a list of recommendations.
    #
    # @option params [Types::Filter] :filter
    #   The constraints that you want all returned recommendations to match.
    #
    # @option params [Types::OrderBy] :order_by
    #   The ordering of recommendations by a dimension.
    #
    # @option params [Boolean] :include_all_recommendations
    #   List of all recommendations for a resource, or a single recommendation
    #   if de-duped by `resourceId`.
    #
    # @option params [Integer] :max_results
    #   The maximum number of recommendations that are returned for the
    #   request.
    #
    # @option params [String] :next_token
    #   The token to retrieve the next set of results.
    #
    # @return [Types::ListRecommendationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRecommendationsResponse#items #items} => Array&lt;Types::Recommendation&gt;
    #   * {Types::ListRecommendationsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_recommendations({
    #     filter: {
    #       restart_needed: false,
    #       rollback_possible: false,
    #       implementation_efforts: ["VeryLow"], # accepts VeryLow, Low, Medium, High, VeryHigh
    #       account_ids: ["AccountId"],
    #       regions: ["String"],
    #       resource_types: ["Ec2Instance"], # accepts Ec2Instance, LambdaFunction, EbsVolume, EcsService, Ec2AutoScalingGroup, Ec2InstanceSavingsPlans, ComputeSavingsPlans, SageMakerSavingsPlans, Ec2ReservedInstances, RdsReservedInstances, OpenSearchReservedInstances, RedshiftReservedInstances, ElastiCacheReservedInstances, RdsDbInstanceStorage, RdsDbInstance, AuroraDbClusterStorage, DynamoDbReservedCapacity, MemoryDbReservedInstances, NatGateway
    #       action_types: ["Rightsize"], # accepts Rightsize, Stop, Upgrade, PurchaseSavingsPlans, PurchaseReservedInstances, MigrateToGraviton, Delete, ScaleIn
    #       tags: [
    #         {
    #           key: "String",
    #           value: "String",
    #         },
    #       ],
    #       resource_ids: ["String"],
    #       resource_arns: ["String"],
    #       recommendation_ids: ["String"],
    #     },
    #     order_by: {
    #       dimension: "String",
    #       order: "Asc", # accepts Asc, Desc
    #     },
    #     include_all_recommendations: false,
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].recommendation_id #=> String
    #   resp.items[0].account_id #=> String
    #   resp.items[0].region #=> String
    #   resp.items[0].resource_id #=> String
    #   resp.items[0].resource_arn #=> String
    #   resp.items[0].current_resource_type #=> String
    #   resp.items[0].recommended_resource_type #=> String
    #   resp.items[0].estimated_monthly_savings #=> Float
    #   resp.items[0].estimated_savings_percentage #=> Float
    #   resp.items[0].estimated_monthly_cost #=> Float
    #   resp.items[0].currency_code #=> String
    #   resp.items[0].implementation_effort #=> String
    #   resp.items[0].restart_needed #=> Boolean
    #   resp.items[0].action_type #=> String
    #   resp.items[0].rollback_possible #=> Boolean
    #   resp.items[0].current_resource_summary #=> String
    #   resp.items[0].recommended_resource_summary #=> String
    #   resp.items[0].last_refresh_timestamp #=> Time
    #   resp.items[0].recommendation_lookback_period_in_days #=> Integer
    #   resp.items[0].source #=> String, one of "ComputeOptimizer", "CostExplorer"
    #   resp.items[0].tags #=> Array
    #   resp.items[0].tags[0].key #=> String
    #   resp.items[0].tags[0].value #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cost-optimization-hub-2022-07-26/ListRecommendations AWS API Documentation
    #
    # @overload list_recommendations(params = {})
    # @param [Hash] params ({})
    def list_recommendations(params = {}, options = {})
      req = build_request(:list_recommendations, params)
      req.send_request(options)
    end

    # Updates the enrollment (opt in and opt out) status of an account to
    # the Cost Optimization Hub service.
    #
    # If the account is a management account of an organization, this action
    # can also be used to enroll member accounts of the organization.
    #
    # You must have the appropriate permissions to opt in to Cost
    # Optimization Hub and to view its recommendations. When you opt in,
    # Cost Optimization Hub automatically creates a service-linked role in
    # your account to access its data.
    #
    # @option params [required, String] :status
    #   Sets the account status.
    #
    # @option params [Boolean] :include_member_accounts
    #   Indicates whether to enroll member accounts of the organization if the
    #   account is the management account or delegated administrator.
    #
    # @return [Types::UpdateEnrollmentStatusResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateEnrollmentStatusResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_enrollment_status({
    #     status: "Active", # required, accepts Active, Inactive
    #     include_member_accounts: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cost-optimization-hub-2022-07-26/UpdateEnrollmentStatus AWS API Documentation
    #
    # @overload update_enrollment_status(params = {})
    # @param [Hash] params ({})
    def update_enrollment_status(params = {}, options = {})
      req = build_request(:update_enrollment_status, params)
      req.send_request(options)
    end

    # Updates a set of preferences for an account in order to add
    # account-specific preferences into the service. These preferences
    # impact how the savings associated with recommendations are presented.
    #
    # @option params [String] :savings_estimation_mode
    #   Sets the "savings estimation mode" preference.
    #
    # @option params [String] :member_account_discount_visibility
    #   Sets the "member account discount visibility" preference.
    #
    # @option params [Types::PreferredCommitment] :preferred_commitment
    #   Sets the preferences for how Reserved Instances and Savings Plans
    #   cost-saving opportunities are prioritized in terms of payment option
    #   and term length.
    #
    # @return [Types::UpdatePreferencesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdatePreferencesResponse#savings_estimation_mode #savings_estimation_mode} => String
    #   * {Types::UpdatePreferencesResponse#member_account_discount_visibility #member_account_discount_visibility} => String
    #   * {Types::UpdatePreferencesResponse#preferred_commitment #preferred_commitment} => Types::PreferredCommitment
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_preferences({
    #     savings_estimation_mode: "BeforeDiscounts", # accepts BeforeDiscounts, AfterDiscounts
    #     member_account_discount_visibility: "All", # accepts All, None
    #     preferred_commitment: {
    #       term: "OneYear", # accepts OneYear, ThreeYears
    #       payment_option: "AllUpfront", # accepts AllUpfront, PartialUpfront, NoUpfront
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.savings_estimation_mode #=> String, one of "BeforeDiscounts", "AfterDiscounts"
    #   resp.member_account_discount_visibility #=> String, one of "All", "None"
    #   resp.preferred_commitment.term #=> String, one of "OneYear", "ThreeYears"
    #   resp.preferred_commitment.payment_option #=> String, one of "AllUpfront", "PartialUpfront", "NoUpfront"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cost-optimization-hub-2022-07-26/UpdatePreferences AWS API Documentation
    #
    # @overload update_preferences(params = {})
    # @param [Hash] params ({})
    def update_preferences(params = {}, options = {})
      req = build_request(:update_preferences, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::CostOptimizationHub')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-costoptimizationhub'
      context[:gem_version] = '1.37.0'
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
