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

module Aws::ApplicationSignals
  # An API client for ApplicationSignals.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::ApplicationSignals::Client.new(
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

    @identifier = :applicationsignals

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
    add_plugin(Aws::ApplicationSignals::Plugins::Endpoints)

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
    #   @option options [Aws::ApplicationSignals::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::ApplicationSignals::EndpointParameters`.
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

    # Use this operation to retrieve one or more *service level objective
    # (SLO) budget reports*.
    #
    # An *error budget* is the amount of time or requests in an unhealthy
    # state that your service can accumulate during an interval before your
    # overall SLO budget health is breached and the SLO is considered to be
    # unmet. For example, an SLO with a threshold of 99.95% and a monthly
    # interval translates to an error budget of 21.9 minutes of downtime in
    # a 30-day month.
    #
    # Budget reports include a health indicator, the attainment value, and
    # remaining budget.
    #
    # For more information about SLO error budgets, see [ SLO concepts][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-ServiceLevelObjectives.html#CloudWatch-ServiceLevelObjectives-concepts
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :timestamp
    #   The date and time that you want the report to be for. It is expressed
    #   as the number of milliseconds since Jan 1, 1970 00:00:00 UTC.
    #
    # @option params [required, Array<String>] :slo_ids
    #   An array containing the IDs of the service level objectives that you
    #   want to include in the report.
    #
    # @return [Types::BatchGetServiceLevelObjectiveBudgetReportOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchGetServiceLevelObjectiveBudgetReportOutput#timestamp #timestamp} => Time
    #   * {Types::BatchGetServiceLevelObjectiveBudgetReportOutput#reports #reports} => Array&lt;Types::ServiceLevelObjectiveBudgetReport&gt;
    #   * {Types::BatchGetServiceLevelObjectiveBudgetReportOutput#errors #errors} => Array&lt;Types::ServiceLevelObjectiveBudgetReportError&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_service_level_objective_budget_report({
    #     timestamp: Time.now, # required
    #     slo_ids: ["String"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.timestamp #=> Time
    #   resp.reports #=> Array
    #   resp.reports[0].arn #=> String
    #   resp.reports[0].name #=> String
    #   resp.reports[0].evaluation_type #=> String, one of "PeriodBased", "RequestBased"
    #   resp.reports[0].budget_status #=> String, one of "OK", "WARNING", "BREACHED", "INSUFFICIENT_DATA"
    #   resp.reports[0].attainment #=> Float
    #   resp.reports[0].total_budget_seconds #=> Integer
    #   resp.reports[0].budget_seconds_remaining #=> Integer
    #   resp.reports[0].total_budget_requests #=> Integer
    #   resp.reports[0].budget_requests_remaining #=> Integer
    #   resp.reports[0].sli.sli_metric.key_attributes #=> Hash
    #   resp.reports[0].sli.sli_metric.key_attributes["KeyAttributeName"] #=> String
    #   resp.reports[0].sli.sli_metric.operation_name #=> String
    #   resp.reports[0].sli.sli_metric.metric_type #=> String, one of "LATENCY", "AVAILABILITY"
    #   resp.reports[0].sli.sli_metric.metric_data_queries #=> Array
    #   resp.reports[0].sli.sli_metric.metric_data_queries[0].id #=> String
    #   resp.reports[0].sli.sli_metric.metric_data_queries[0].metric_stat.metric.namespace #=> String
    #   resp.reports[0].sli.sli_metric.metric_data_queries[0].metric_stat.metric.metric_name #=> String
    #   resp.reports[0].sli.sli_metric.metric_data_queries[0].metric_stat.metric.dimensions #=> Array
    #   resp.reports[0].sli.sli_metric.metric_data_queries[0].metric_stat.metric.dimensions[0].name #=> String
    #   resp.reports[0].sli.sli_metric.metric_data_queries[0].metric_stat.metric.dimensions[0].value #=> String
    #   resp.reports[0].sli.sli_metric.metric_data_queries[0].metric_stat.period #=> Integer
    #   resp.reports[0].sli.sli_metric.metric_data_queries[0].metric_stat.stat #=> String
    #   resp.reports[0].sli.sli_metric.metric_data_queries[0].metric_stat.unit #=> String, one of "Microseconds", "Milliseconds", "Seconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Count", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second", "None"
    #   resp.reports[0].sli.sli_metric.metric_data_queries[0].expression #=> String
    #   resp.reports[0].sli.sli_metric.metric_data_queries[0].label #=> String
    #   resp.reports[0].sli.sli_metric.metric_data_queries[0].return_data #=> Boolean
    #   resp.reports[0].sli.sli_metric.metric_data_queries[0].period #=> Integer
    #   resp.reports[0].sli.sli_metric.metric_data_queries[0].account_id #=> String
    #   resp.reports[0].sli.sli_metric.dependency_config.dependency_key_attributes #=> Hash
    #   resp.reports[0].sli.sli_metric.dependency_config.dependency_key_attributes["KeyAttributeName"] #=> String
    #   resp.reports[0].sli.sli_metric.dependency_config.dependency_operation_name #=> String
    #   resp.reports[0].sli.metric_threshold #=> Float
    #   resp.reports[0].sli.comparison_operator #=> String, one of "GreaterThanOrEqualTo", "GreaterThan", "LessThan", "LessThanOrEqualTo"
    #   resp.reports[0].request_based_sli.request_based_sli_metric.key_attributes #=> Hash
    #   resp.reports[0].request_based_sli.request_based_sli_metric.key_attributes["KeyAttributeName"] #=> String
    #   resp.reports[0].request_based_sli.request_based_sli_metric.operation_name #=> String
    #   resp.reports[0].request_based_sli.request_based_sli_metric.metric_type #=> String, one of "LATENCY", "AVAILABILITY"
    #   resp.reports[0].request_based_sli.request_based_sli_metric.total_request_count_metric #=> Array
    #   resp.reports[0].request_based_sli.request_based_sli_metric.total_request_count_metric[0].id #=> String
    #   resp.reports[0].request_based_sli.request_based_sli_metric.total_request_count_metric[0].metric_stat.metric.namespace #=> String
    #   resp.reports[0].request_based_sli.request_based_sli_metric.total_request_count_metric[0].metric_stat.metric.metric_name #=> String
    #   resp.reports[0].request_based_sli.request_based_sli_metric.total_request_count_metric[0].metric_stat.metric.dimensions #=> Array
    #   resp.reports[0].request_based_sli.request_based_sli_metric.total_request_count_metric[0].metric_stat.metric.dimensions[0].name #=> String
    #   resp.reports[0].request_based_sli.request_based_sli_metric.total_request_count_metric[0].metric_stat.metric.dimensions[0].value #=> String
    #   resp.reports[0].request_based_sli.request_based_sli_metric.total_request_count_metric[0].metric_stat.period #=> Integer
    #   resp.reports[0].request_based_sli.request_based_sli_metric.total_request_count_metric[0].metric_stat.stat #=> String
    #   resp.reports[0].request_based_sli.request_based_sli_metric.total_request_count_metric[0].metric_stat.unit #=> String, one of "Microseconds", "Milliseconds", "Seconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Count", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second", "None"
    #   resp.reports[0].request_based_sli.request_based_sli_metric.total_request_count_metric[0].expression #=> String
    #   resp.reports[0].request_based_sli.request_based_sli_metric.total_request_count_metric[0].label #=> String
    #   resp.reports[0].request_based_sli.request_based_sli_metric.total_request_count_metric[0].return_data #=> Boolean
    #   resp.reports[0].request_based_sli.request_based_sli_metric.total_request_count_metric[0].period #=> Integer
    #   resp.reports[0].request_based_sli.request_based_sli_metric.total_request_count_metric[0].account_id #=> String
    #   resp.reports[0].request_based_sli.request_based_sli_metric.monitored_request_count_metric.good_count_metric #=> Array
    #   resp.reports[0].request_based_sli.request_based_sli_metric.monitored_request_count_metric.good_count_metric[0].id #=> String
    #   resp.reports[0].request_based_sli.request_based_sli_metric.monitored_request_count_metric.good_count_metric[0].metric_stat.metric.namespace #=> String
    #   resp.reports[0].request_based_sli.request_based_sli_metric.monitored_request_count_metric.good_count_metric[0].metric_stat.metric.metric_name #=> String
    #   resp.reports[0].request_based_sli.request_based_sli_metric.monitored_request_count_metric.good_count_metric[0].metric_stat.metric.dimensions #=> Array
    #   resp.reports[0].request_based_sli.request_based_sli_metric.monitored_request_count_metric.good_count_metric[0].metric_stat.metric.dimensions[0].name #=> String
    #   resp.reports[0].request_based_sli.request_based_sli_metric.monitored_request_count_metric.good_count_metric[0].metric_stat.metric.dimensions[0].value #=> String
    #   resp.reports[0].request_based_sli.request_based_sli_metric.monitored_request_count_metric.good_count_metric[0].metric_stat.period #=> Integer
    #   resp.reports[0].request_based_sli.request_based_sli_metric.monitored_request_count_metric.good_count_metric[0].metric_stat.stat #=> String
    #   resp.reports[0].request_based_sli.request_based_sli_metric.monitored_request_count_metric.good_count_metric[0].metric_stat.unit #=> String, one of "Microseconds", "Milliseconds", "Seconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Count", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second", "None"
    #   resp.reports[0].request_based_sli.request_based_sli_metric.monitored_request_count_metric.good_count_metric[0].expression #=> String
    #   resp.reports[0].request_based_sli.request_based_sli_metric.monitored_request_count_metric.good_count_metric[0].label #=> String
    #   resp.reports[0].request_based_sli.request_based_sli_metric.monitored_request_count_metric.good_count_metric[0].return_data #=> Boolean
    #   resp.reports[0].request_based_sli.request_based_sli_metric.monitored_request_count_metric.good_count_metric[0].period #=> Integer
    #   resp.reports[0].request_based_sli.request_based_sli_metric.monitored_request_count_metric.good_count_metric[0].account_id #=> String
    #   resp.reports[0].request_based_sli.request_based_sli_metric.monitored_request_count_metric.bad_count_metric #=> Array
    #   resp.reports[0].request_based_sli.request_based_sli_metric.monitored_request_count_metric.bad_count_metric[0].id #=> String
    #   resp.reports[0].request_based_sli.request_based_sli_metric.monitored_request_count_metric.bad_count_metric[0].metric_stat.metric.namespace #=> String
    #   resp.reports[0].request_based_sli.request_based_sli_metric.monitored_request_count_metric.bad_count_metric[0].metric_stat.metric.metric_name #=> String
    #   resp.reports[0].request_based_sli.request_based_sli_metric.monitored_request_count_metric.bad_count_metric[0].metric_stat.metric.dimensions #=> Array
    #   resp.reports[0].request_based_sli.request_based_sli_metric.monitored_request_count_metric.bad_count_metric[0].metric_stat.metric.dimensions[0].name #=> String
    #   resp.reports[0].request_based_sli.request_based_sli_metric.monitored_request_count_metric.bad_count_metric[0].metric_stat.metric.dimensions[0].value #=> String
    #   resp.reports[0].request_based_sli.request_based_sli_metric.monitored_request_count_metric.bad_count_metric[0].metric_stat.period #=> Integer
    #   resp.reports[0].request_based_sli.request_based_sli_metric.monitored_request_count_metric.bad_count_metric[0].metric_stat.stat #=> String
    #   resp.reports[0].request_based_sli.request_based_sli_metric.monitored_request_count_metric.bad_count_metric[0].metric_stat.unit #=> String, one of "Microseconds", "Milliseconds", "Seconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Count", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second", "None"
    #   resp.reports[0].request_based_sli.request_based_sli_metric.monitored_request_count_metric.bad_count_metric[0].expression #=> String
    #   resp.reports[0].request_based_sli.request_based_sli_metric.monitored_request_count_metric.bad_count_metric[0].label #=> String
    #   resp.reports[0].request_based_sli.request_based_sli_metric.monitored_request_count_metric.bad_count_metric[0].return_data #=> Boolean
    #   resp.reports[0].request_based_sli.request_based_sli_metric.monitored_request_count_metric.bad_count_metric[0].period #=> Integer
    #   resp.reports[0].request_based_sli.request_based_sli_metric.monitored_request_count_metric.bad_count_metric[0].account_id #=> String
    #   resp.reports[0].request_based_sli.request_based_sli_metric.dependency_config.dependency_key_attributes #=> Hash
    #   resp.reports[0].request_based_sli.request_based_sli_metric.dependency_config.dependency_key_attributes["KeyAttributeName"] #=> String
    #   resp.reports[0].request_based_sli.request_based_sli_metric.dependency_config.dependency_operation_name #=> String
    #   resp.reports[0].request_based_sli.metric_threshold #=> Float
    #   resp.reports[0].request_based_sli.comparison_operator #=> String, one of "GreaterThanOrEqualTo", "GreaterThan", "LessThan", "LessThanOrEqualTo"
    #   resp.reports[0].goal.interval.rolling_interval.duration_unit #=> String, one of "MINUTE", "HOUR", "DAY", "MONTH"
    #   resp.reports[0].goal.interval.rolling_interval.duration #=> Integer
    #   resp.reports[0].goal.interval.calendar_interval.start_time #=> Time
    #   resp.reports[0].goal.interval.calendar_interval.duration_unit #=> String, one of "MINUTE", "HOUR", "DAY", "MONTH"
    #   resp.reports[0].goal.interval.calendar_interval.duration #=> Integer
    #   resp.reports[0].goal.attainment_goal #=> Float
    #   resp.reports[0].goal.warning_threshold #=> Float
    #   resp.errors #=> Array
    #   resp.errors[0].name #=> String
    #   resp.errors[0].arn #=> String
    #   resp.errors[0].error_code #=> String
    #   resp.errors[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-signals-2024-04-15/BatchGetServiceLevelObjectiveBudgetReport AWS API Documentation
    #
    # @overload batch_get_service_level_objective_budget_report(params = {})
    # @param [Hash] params ({})
    def batch_get_service_level_objective_budget_report(params = {}, options = {})
      req = build_request(:batch_get_service_level_objective_budget_report, params)
      req.send_request(options)
    end

    # Add or remove time window exclusions for one or more Service Level
    # Objectives (SLOs).
    #
    # @option params [required, Array<String>] :slo_ids
    #   The list of SLO IDs to add or remove exclusion windows from.
    #
    # @option params [Array<Types::ExclusionWindow>] :add_exclusion_windows
    #   A list of exclusion windows to add to the specified SLOs. You can add
    #   up to 10 exclusion windows per SLO.
    #
    # @option params [Array<Types::ExclusionWindow>] :remove_exclusion_windows
    #   A list of exclusion windows to remove from the specified SLOs. The
    #   window configuration must match an existing exclusion window.
    #
    # @return [Types::BatchUpdateExclusionWindowsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchUpdateExclusionWindowsOutput#slo_ids #slo_ids} => Array&lt;String&gt;
    #   * {Types::BatchUpdateExclusionWindowsOutput#errors #errors} => Array&lt;Types::BatchUpdateExclusionWindowsError&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_update_exclusion_windows({
    #     slo_ids: ["String"], # required
    #     add_exclusion_windows: [
    #       {
    #         window: { # required
    #           duration_unit: "MINUTE", # required, accepts MINUTE, HOUR, DAY, MONTH
    #           duration: 1, # required
    #         },
    #         start_time: Time.now,
    #         recurrence_rule: {
    #           expression: "Expression", # required
    #         },
    #         reason: "ExclusionReason",
    #       },
    #     ],
    #     remove_exclusion_windows: [
    #       {
    #         window: { # required
    #           duration_unit: "MINUTE", # required, accepts MINUTE, HOUR, DAY, MONTH
    #           duration: 1, # required
    #         },
    #         start_time: Time.now,
    #         recurrence_rule: {
    #           expression: "Expression", # required
    #         },
    #         reason: "ExclusionReason",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.slo_ids #=> Array
    #   resp.slo_ids[0] #=> String
    #   resp.errors #=> Array
    #   resp.errors[0].slo_id #=> String
    #   resp.errors[0].error_code #=> String
    #   resp.errors[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-signals-2024-04-15/BatchUpdateExclusionWindows AWS API Documentation
    #
    # @overload batch_update_exclusion_windows(params = {})
    # @param [Hash] params ({})
    def batch_update_exclusion_windows(params = {}, options = {})
      req = build_request(:batch_update_exclusion_windows, params)
      req.send_request(options)
    end

    # Creates a service level objective (SLO), which can help you ensure
    # that your critical business operations are meeting customer
    # expectations. Use SLOs to set and track specific target levels for the
    # reliability and availability of your applications and services. SLOs
    # use service level indicators (SLIs) to calculate whether the
    # application is performing at the level that you want.
    #
    # Create an SLO to set a target for a service or operation’s
    # availability or latency. CloudWatch measures this target frequently
    # you can find whether it has been breached.
    #
    # The target performance quality that is defined for an SLO is the
    # *attainment goal*.
    #
    # You can set SLO targets for your applications that are discovered by
    # Application Signals, using critical metrics such as latency and
    # availability. You can also set SLOs against any CloudWatch metric or
    # math expression that produces a time series.
    #
    # <note markdown="1"> You can't create an SLO for a service operation that was discovered
    # by Application Signals until after that operation has reported
    # standard metrics to Application Signals.
    #
    #  </note>
    #
    # When you create an SLO, you specify whether it is a *period-based SLO*
    # or a *request-based SLO*. Each type of SLO has a different way of
    # evaluating your application's performance against its attainment
    # goal.
    #
    # * A *period-based SLO* uses defined *periods* of time within a
    #   specified total time interval. For each period of time, Application
    #   Signals determines whether the application met its goal. The
    #   attainment rate is calculated as the `number of good periods/number
    #   of total periods`.
    #
    #   For example, for a period-based SLO, meeting an attainment goal of
    #   99.9% means that within your interval, your application must meet
    #   its performance goal during at least 99.9% of the time periods.
    #
    # * A *request-based SLO* doesn't use pre-defined periods of time.
    #   Instead, the SLO measures `number of good requests/number of total
    #   requests` during the interval. At any time, you can find the ratio
    #   of good requests to total requests for the interval up to the time
    #   stamp that you specify, and measure that ratio against the goal set
    #   in your SLO.
    #
    # After you have created an SLO, you can retrieve error budget reports
    # for it. An *error budget* is the amount of time or amount of requests
    # that your application can be non-compliant with the SLO's goal, and
    # still have your application meet the goal.
    #
    # * For a period-based SLO, the error budget starts at a number defined
    #   by the highest number of periods that can fail to meet the
    #   threshold, while still meeting the overall goal. The *remaining
    #   error budget* decreases with every failed period that is recorded.
    #   The error budget within one interval can never increase.
    #
    #   For example, an SLO with a threshold that 99.95% of requests must be
    #   completed under 2000ms every month translates to an error budget of
    #   21.9 minutes of downtime per month.
    #
    # * For a request-based SLO, the remaining error budget is dynamic and
    #   can increase or decrease, depending on the ratio of good requests to
    #   total requests.
    #
    # For more information about SLOs, see [ Service level objectives
    # (SLOs)][1].
    #
    # When you perform a `CreateServiceLevelObjective` operation,
    # Application Signals creates the
    # *AWSServiceRoleForCloudWatchApplicationSignals* service-linked role,
    # if it doesn't already exist in your account. This service- linked
    # role has the following permissions:
    #
    # * `xray:GetServiceGraph`
    #
    # * `logs:StartQuery`
    #
    # * `logs:GetQueryResults`
    #
    # * `cloudwatch:GetMetricData`
    #
    # * `cloudwatch:ListMetrics`
    #
    # * `tag:GetResources`
    #
    # * `autoscaling:DescribeAutoScalingGroups`
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-ServiceLevelObjectives.html
    #
    # @option params [required, String] :name
    #   A name for this SLO.
    #
    # @option params [String] :description
    #   An optional description for this SLO.
    #
    # @option params [Types::ServiceLevelIndicatorConfig] :sli_config
    #   If this SLO is a period-based SLO, this structure defines the
    #   information about what performance metric this SLO will monitor.
    #
    #   You can't specify both `RequestBasedSliConfig` and `SliConfig` in the
    #   same operation.
    #
    # @option params [Types::RequestBasedServiceLevelIndicatorConfig] :request_based_sli_config
    #   If this SLO is a request-based SLO, this structure defines the
    #   information about what performance metric this SLO will monitor.
    #
    #   You can't specify both `RequestBasedSliConfig` and `SliConfig` in the
    #   same operation.
    #
    # @option params [Types::Goal] :goal
    #   This structure contains the attributes that determine the goal of the
    #   SLO.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of key-value pairs to associate with the SLO. You can associate
    #   as many as 50 tags with an SLO. To be able to associate tags with the
    #   SLO when you create the SLO, you must have the
    #   `cloudwatch:TagResource` permission.
    #
    #   Tags can help you organize and categorize your resources. You can also
    #   use them to scope user permissions by granting a user permission to
    #   access or change only resources with certain tag values.
    #
    # @option params [Array<Types::BurnRateConfiguration>] :burn_rate_configurations
    #   Use this array to create *burn rates* for this SLO. Each burn rate is
    #   a metric that indicates how fast the service is consuming the error
    #   budget, relative to the attainment goal of the SLO.
    #
    # @return [Types::CreateServiceLevelObjectiveOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateServiceLevelObjectiveOutput#slo #slo} => Types::ServiceLevelObjective
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_service_level_objective({
    #     name: "ServiceLevelObjectiveName", # required
    #     description: "ServiceLevelObjectiveDescription",
    #     sli_config: {
    #       sli_metric_config: { # required
    #         key_attributes: {
    #           "KeyAttributeName" => "KeyAttributeValue",
    #         },
    #         operation_name: "OperationName",
    #         metric_type: "LATENCY", # accepts LATENCY, AVAILABILITY
    #         statistic: "ServiceLevelIndicatorStatistic",
    #         period_seconds: 1,
    #         metric_data_queries: [
    #           {
    #             id: "MetricId", # required
    #             metric_stat: {
    #               metric: { # required
    #                 namespace: "Namespace",
    #                 metric_name: "MetricName",
    #                 dimensions: [
    #                   {
    #                     name: "DimensionName", # required
    #                     value: "DimensionValue", # required
    #                   },
    #                 ],
    #               },
    #               period: 1, # required
    #               stat: "Stat", # required
    #               unit: "Microseconds", # accepts Microseconds, Milliseconds, Seconds, Bytes, Kilobytes, Megabytes, Gigabytes, Terabytes, Bits, Kilobits, Megabits, Gigabits, Terabits, Percent, Count, Bytes/Second, Kilobytes/Second, Megabytes/Second, Gigabytes/Second, Terabytes/Second, Bits/Second, Kilobits/Second, Megabits/Second, Gigabits/Second, Terabits/Second, Count/Second, None
    #             },
    #             expression: "MetricExpression",
    #             label: "MetricLabel",
    #             return_data: false,
    #             period: 1,
    #             account_id: "AccountId",
    #           },
    #         ],
    #         dependency_config: {
    #           dependency_key_attributes: { # required
    #             "KeyAttributeName" => "KeyAttributeValue",
    #           },
    #           dependency_operation_name: "OperationName", # required
    #         },
    #       },
    #       metric_threshold: 1.0, # required
    #       comparison_operator: "GreaterThanOrEqualTo", # required, accepts GreaterThanOrEqualTo, GreaterThan, LessThan, LessThanOrEqualTo
    #     },
    #     request_based_sli_config: {
    #       request_based_sli_metric_config: { # required
    #         key_attributes: {
    #           "KeyAttributeName" => "KeyAttributeValue",
    #         },
    #         operation_name: "OperationName",
    #         metric_type: "LATENCY", # accepts LATENCY, AVAILABILITY
    #         total_request_count_metric: [
    #           {
    #             id: "MetricId", # required
    #             metric_stat: {
    #               metric: { # required
    #                 namespace: "Namespace",
    #                 metric_name: "MetricName",
    #                 dimensions: [
    #                   {
    #                     name: "DimensionName", # required
    #                     value: "DimensionValue", # required
    #                   },
    #                 ],
    #               },
    #               period: 1, # required
    #               stat: "Stat", # required
    #               unit: "Microseconds", # accepts Microseconds, Milliseconds, Seconds, Bytes, Kilobytes, Megabytes, Gigabytes, Terabytes, Bits, Kilobits, Megabits, Gigabits, Terabits, Percent, Count, Bytes/Second, Kilobytes/Second, Megabytes/Second, Gigabytes/Second, Terabytes/Second, Bits/Second, Kilobits/Second, Megabits/Second, Gigabits/Second, Terabits/Second, Count/Second, None
    #             },
    #             expression: "MetricExpression",
    #             label: "MetricLabel",
    #             return_data: false,
    #             period: 1,
    #             account_id: "AccountId",
    #           },
    #         ],
    #         monitored_request_count_metric: {
    #           good_count_metric: [
    #             {
    #               id: "MetricId", # required
    #               metric_stat: {
    #                 metric: { # required
    #                   namespace: "Namespace",
    #                   metric_name: "MetricName",
    #                   dimensions: [
    #                     {
    #                       name: "DimensionName", # required
    #                       value: "DimensionValue", # required
    #                     },
    #                   ],
    #                 },
    #                 period: 1, # required
    #                 stat: "Stat", # required
    #                 unit: "Microseconds", # accepts Microseconds, Milliseconds, Seconds, Bytes, Kilobytes, Megabytes, Gigabytes, Terabytes, Bits, Kilobits, Megabits, Gigabits, Terabits, Percent, Count, Bytes/Second, Kilobytes/Second, Megabytes/Second, Gigabytes/Second, Terabytes/Second, Bits/Second, Kilobits/Second, Megabits/Second, Gigabits/Second, Terabits/Second, Count/Second, None
    #               },
    #               expression: "MetricExpression",
    #               label: "MetricLabel",
    #               return_data: false,
    #               period: 1,
    #               account_id: "AccountId",
    #             },
    #           ],
    #           bad_count_metric: [
    #             {
    #               id: "MetricId", # required
    #               metric_stat: {
    #                 metric: { # required
    #                   namespace: "Namespace",
    #                   metric_name: "MetricName",
    #                   dimensions: [
    #                     {
    #                       name: "DimensionName", # required
    #                       value: "DimensionValue", # required
    #                     },
    #                   ],
    #                 },
    #                 period: 1, # required
    #                 stat: "Stat", # required
    #                 unit: "Microseconds", # accepts Microseconds, Milliseconds, Seconds, Bytes, Kilobytes, Megabytes, Gigabytes, Terabytes, Bits, Kilobits, Megabits, Gigabits, Terabits, Percent, Count, Bytes/Second, Kilobytes/Second, Megabytes/Second, Gigabytes/Second, Terabytes/Second, Bits/Second, Kilobits/Second, Megabits/Second, Gigabits/Second, Terabits/Second, Count/Second, None
    #               },
    #               expression: "MetricExpression",
    #               label: "MetricLabel",
    #               return_data: false,
    #               period: 1,
    #               account_id: "AccountId",
    #             },
    #           ],
    #         },
    #         dependency_config: {
    #           dependency_key_attributes: { # required
    #             "KeyAttributeName" => "KeyAttributeValue",
    #           },
    #           dependency_operation_name: "OperationName", # required
    #         },
    #       },
    #       metric_threshold: 1.0,
    #       comparison_operator: "GreaterThanOrEqualTo", # accepts GreaterThanOrEqualTo, GreaterThan, LessThan, LessThanOrEqualTo
    #     },
    #     goal: {
    #       interval: {
    #         rolling_interval: {
    #           duration_unit: "MINUTE", # required, accepts MINUTE, HOUR, DAY, MONTH
    #           duration: 1, # required
    #         },
    #         calendar_interval: {
    #           start_time: Time.now, # required
    #           duration_unit: "MINUTE", # required, accepts MINUTE, HOUR, DAY, MONTH
    #           duration: 1, # required
    #         },
    #       },
    #       attainment_goal: 1.0,
    #       warning_threshold: 1.0,
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     burn_rate_configurations: [
    #       {
    #         look_back_window_minutes: 1, # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.slo.arn #=> String
    #   resp.slo.name #=> String
    #   resp.slo.description #=> String
    #   resp.slo.created_time #=> Time
    #   resp.slo.last_updated_time #=> Time
    #   resp.slo.sli.sli_metric.key_attributes #=> Hash
    #   resp.slo.sli.sli_metric.key_attributes["KeyAttributeName"] #=> String
    #   resp.slo.sli.sli_metric.operation_name #=> String
    #   resp.slo.sli.sli_metric.metric_type #=> String, one of "LATENCY", "AVAILABILITY"
    #   resp.slo.sli.sli_metric.metric_data_queries #=> Array
    #   resp.slo.sli.sli_metric.metric_data_queries[0].id #=> String
    #   resp.slo.sli.sli_metric.metric_data_queries[0].metric_stat.metric.namespace #=> String
    #   resp.slo.sli.sli_metric.metric_data_queries[0].metric_stat.metric.metric_name #=> String
    #   resp.slo.sli.sli_metric.metric_data_queries[0].metric_stat.metric.dimensions #=> Array
    #   resp.slo.sli.sli_metric.metric_data_queries[0].metric_stat.metric.dimensions[0].name #=> String
    #   resp.slo.sli.sli_metric.metric_data_queries[0].metric_stat.metric.dimensions[0].value #=> String
    #   resp.slo.sli.sli_metric.metric_data_queries[0].metric_stat.period #=> Integer
    #   resp.slo.sli.sli_metric.metric_data_queries[0].metric_stat.stat #=> String
    #   resp.slo.sli.sli_metric.metric_data_queries[0].metric_stat.unit #=> String, one of "Microseconds", "Milliseconds", "Seconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Count", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second", "None"
    #   resp.slo.sli.sli_metric.metric_data_queries[0].expression #=> String
    #   resp.slo.sli.sli_metric.metric_data_queries[0].label #=> String
    #   resp.slo.sli.sli_metric.metric_data_queries[0].return_data #=> Boolean
    #   resp.slo.sli.sli_metric.metric_data_queries[0].period #=> Integer
    #   resp.slo.sli.sli_metric.metric_data_queries[0].account_id #=> String
    #   resp.slo.sli.sli_metric.dependency_config.dependency_key_attributes #=> Hash
    #   resp.slo.sli.sli_metric.dependency_config.dependency_key_attributes["KeyAttributeName"] #=> String
    #   resp.slo.sli.sli_metric.dependency_config.dependency_operation_name #=> String
    #   resp.slo.sli.metric_threshold #=> Float
    #   resp.slo.sli.comparison_operator #=> String, one of "GreaterThanOrEqualTo", "GreaterThan", "LessThan", "LessThanOrEqualTo"
    #   resp.slo.request_based_sli.request_based_sli_metric.key_attributes #=> Hash
    #   resp.slo.request_based_sli.request_based_sli_metric.key_attributes["KeyAttributeName"] #=> String
    #   resp.slo.request_based_sli.request_based_sli_metric.operation_name #=> String
    #   resp.slo.request_based_sli.request_based_sli_metric.metric_type #=> String, one of "LATENCY", "AVAILABILITY"
    #   resp.slo.request_based_sli.request_based_sli_metric.total_request_count_metric #=> Array
    #   resp.slo.request_based_sli.request_based_sli_metric.total_request_count_metric[0].id #=> String
    #   resp.slo.request_based_sli.request_based_sli_metric.total_request_count_metric[0].metric_stat.metric.namespace #=> String
    #   resp.slo.request_based_sli.request_based_sli_metric.total_request_count_metric[0].metric_stat.metric.metric_name #=> String
    #   resp.slo.request_based_sli.request_based_sli_metric.total_request_count_metric[0].metric_stat.metric.dimensions #=> Array
    #   resp.slo.request_based_sli.request_based_sli_metric.total_request_count_metric[0].metric_stat.metric.dimensions[0].name #=> String
    #   resp.slo.request_based_sli.request_based_sli_metric.total_request_count_metric[0].metric_stat.metric.dimensions[0].value #=> String
    #   resp.slo.request_based_sli.request_based_sli_metric.total_request_count_metric[0].metric_stat.period #=> Integer
    #   resp.slo.request_based_sli.request_based_sli_metric.total_request_count_metric[0].metric_stat.stat #=> String
    #   resp.slo.request_based_sli.request_based_sli_metric.total_request_count_metric[0].metric_stat.unit #=> String, one of "Microseconds", "Milliseconds", "Seconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Count", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second", "None"
    #   resp.slo.request_based_sli.request_based_sli_metric.total_request_count_metric[0].expression #=> String
    #   resp.slo.request_based_sli.request_based_sli_metric.total_request_count_metric[0].label #=> String
    #   resp.slo.request_based_sli.request_based_sli_metric.total_request_count_metric[0].return_data #=> Boolean
    #   resp.slo.request_based_sli.request_based_sli_metric.total_request_count_metric[0].period #=> Integer
    #   resp.slo.request_based_sli.request_based_sli_metric.total_request_count_metric[0].account_id #=> String
    #   resp.slo.request_based_sli.request_based_sli_metric.monitored_request_count_metric.good_count_metric #=> Array
    #   resp.slo.request_based_sli.request_based_sli_metric.monitored_request_count_metric.good_count_metric[0].id #=> String
    #   resp.slo.request_based_sli.request_based_sli_metric.monitored_request_count_metric.good_count_metric[0].metric_stat.metric.namespace #=> String
    #   resp.slo.request_based_sli.request_based_sli_metric.monitored_request_count_metric.good_count_metric[0].metric_stat.metric.metric_name #=> String
    #   resp.slo.request_based_sli.request_based_sli_metric.monitored_request_count_metric.good_count_metric[0].metric_stat.metric.dimensions #=> Array
    #   resp.slo.request_based_sli.request_based_sli_metric.monitored_request_count_metric.good_count_metric[0].metric_stat.metric.dimensions[0].name #=> String
    #   resp.slo.request_based_sli.request_based_sli_metric.monitored_request_count_metric.good_count_metric[0].metric_stat.metric.dimensions[0].value #=> String
    #   resp.slo.request_based_sli.request_based_sli_metric.monitored_request_count_metric.good_count_metric[0].metric_stat.period #=> Integer
    #   resp.slo.request_based_sli.request_based_sli_metric.monitored_request_count_metric.good_count_metric[0].metric_stat.stat #=> String
    #   resp.slo.request_based_sli.request_based_sli_metric.monitored_request_count_metric.good_count_metric[0].metric_stat.unit #=> String, one of "Microseconds", "Milliseconds", "Seconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Count", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second", "None"
    #   resp.slo.request_based_sli.request_based_sli_metric.monitored_request_count_metric.good_count_metric[0].expression #=> String
    #   resp.slo.request_based_sli.request_based_sli_metric.monitored_request_count_metric.good_count_metric[0].label #=> String
    #   resp.slo.request_based_sli.request_based_sli_metric.monitored_request_count_metric.good_count_metric[0].return_data #=> Boolean
    #   resp.slo.request_based_sli.request_based_sli_metric.monitored_request_count_metric.good_count_metric[0].period #=> Integer
    #   resp.slo.request_based_sli.request_based_sli_metric.monitored_request_count_metric.good_count_metric[0].account_id #=> String
    #   resp.slo.request_based_sli.request_based_sli_metric.monitored_request_count_metric.bad_count_metric #=> Array
    #   resp.slo.request_based_sli.request_based_sli_metric.monitored_request_count_metric.bad_count_metric[0].id #=> String
    #   resp.slo.request_based_sli.request_based_sli_metric.monitored_request_count_metric.bad_count_metric[0].metric_stat.metric.namespace #=> String
    #   resp.slo.request_based_sli.request_based_sli_metric.monitored_request_count_metric.bad_count_metric[0].metric_stat.metric.metric_name #=> String
    #   resp.slo.request_based_sli.request_based_sli_metric.monitored_request_count_metric.bad_count_metric[0].metric_stat.metric.dimensions #=> Array
    #   resp.slo.request_based_sli.request_based_sli_metric.monitored_request_count_metric.bad_count_metric[0].metric_stat.metric.dimensions[0].name #=> String
    #   resp.slo.request_based_sli.request_based_sli_metric.monitored_request_count_metric.bad_count_metric[0].metric_stat.metric.dimensions[0].value #=> String
    #   resp.slo.request_based_sli.request_based_sli_metric.monitored_request_count_metric.bad_count_metric[0].metric_stat.period #=> Integer
    #   resp.slo.request_based_sli.request_based_sli_metric.monitored_request_count_metric.bad_count_metric[0].metric_stat.stat #=> String
    #   resp.slo.request_based_sli.request_based_sli_metric.monitored_request_count_metric.bad_count_metric[0].metric_stat.unit #=> String, one of "Microseconds", "Milliseconds", "Seconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Count", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second", "None"
    #   resp.slo.request_based_sli.request_based_sli_metric.monitored_request_count_metric.bad_count_metric[0].expression #=> String
    #   resp.slo.request_based_sli.request_based_sli_metric.monitored_request_count_metric.bad_count_metric[0].label #=> String
    #   resp.slo.request_based_sli.request_based_sli_metric.monitored_request_count_metric.bad_count_metric[0].return_data #=> Boolean
    #   resp.slo.request_based_sli.request_based_sli_metric.monitored_request_count_metric.bad_count_metric[0].period #=> Integer
    #   resp.slo.request_based_sli.request_based_sli_metric.monitored_request_count_metric.bad_count_metric[0].account_id #=> String
    #   resp.slo.request_based_sli.request_based_sli_metric.dependency_config.dependency_key_attributes #=> Hash
    #   resp.slo.request_based_sli.request_based_sli_metric.dependency_config.dependency_key_attributes["KeyAttributeName"] #=> String
    #   resp.slo.request_based_sli.request_based_sli_metric.dependency_config.dependency_operation_name #=> String
    #   resp.slo.request_based_sli.metric_threshold #=> Float
    #   resp.slo.request_based_sli.comparison_operator #=> String, one of "GreaterThanOrEqualTo", "GreaterThan", "LessThan", "LessThanOrEqualTo"
    #   resp.slo.evaluation_type #=> String, one of "PeriodBased", "RequestBased"
    #   resp.slo.goal.interval.rolling_interval.duration_unit #=> String, one of "MINUTE", "HOUR", "DAY", "MONTH"
    #   resp.slo.goal.interval.rolling_interval.duration #=> Integer
    #   resp.slo.goal.interval.calendar_interval.start_time #=> Time
    #   resp.slo.goal.interval.calendar_interval.duration_unit #=> String, one of "MINUTE", "HOUR", "DAY", "MONTH"
    #   resp.slo.goal.interval.calendar_interval.duration #=> Integer
    #   resp.slo.goal.attainment_goal #=> Float
    #   resp.slo.goal.warning_threshold #=> Float
    #   resp.slo.burn_rate_configurations #=> Array
    #   resp.slo.burn_rate_configurations[0].look_back_window_minutes #=> Integer
    #   resp.slo.metric_source_type #=> String, one of "ServiceOperation", "CloudWatchMetric", "ServiceDependency"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-signals-2024-04-15/CreateServiceLevelObjective AWS API Documentation
    #
    # @overload create_service_level_objective(params = {})
    # @param [Hash] params ({})
    def create_service_level_objective(params = {}, options = {})
      req = build_request(:create_service_level_objective, params)
      req.send_request(options)
    end

    # Deletes the specified service level objective.
    #
    # @option params [required, String] :id
    #   The ARN or name of the service level objective to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_service_level_objective({
    #     id: "ServiceLevelObjectiveId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-signals-2024-04-15/DeleteServiceLevelObjective AWS API Documentation
    #
    # @overload delete_service_level_objective(params = {})
    # @param [Hash] params ({})
    def delete_service_level_objective(params = {}, options = {})
      req = build_request(:delete_service_level_objective, params)
      req.send_request(options)
    end

    # Returns information about a service discovered by Application Signals.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :start_time
    #   The start of the time period to retrieve information about. When used
    #   in a raw HTTP Query API, it is formatted as be epoch time in seconds.
    #   For example: `1698778057`
    #
    #   Your requested start time will be rounded to the nearest hour.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :end_time
    #   The end of the time period to retrieve information about. When used in
    #   a raw HTTP Query API, it is formatted as be epoch time in seconds. For
    #   example: `1698778057`
    #
    #   Your requested start time will be rounded to the nearest hour.
    #
    # @option params [required, Hash<String,String>] :key_attributes
    #   Use this field to specify which service you want to retrieve
    #   information for. You must specify at least the `Type`, `Name`, and
    #   `Environment` attributes.
    #
    #   This is a string-to-string map. It can include the following fields.
    #
    #   * `Type` designates the type of object this is.
    #
    #   * `ResourceType` specifies the type of the resource. This field is
    #     used only when the value of the `Type` field is `Resource` or
    #     `AWS::Resource`.
    #
    #   * `Name` specifies the name of the object. This is used only if the
    #     value of the `Type` field is `Service`, `RemoteService`, or
    #     `AWS::Service`.
    #
    #   * `Identifier` identifies the resource objects of this resource. This
    #     is used only if the value of the `Type` field is `Resource` or
    #     `AWS::Resource`.
    #
    #   * `Environment` specifies the location where this object is hosted, or
    #     what it belongs to.
    #
    # @return [Types::GetServiceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetServiceOutput#service #service} => Types::Service
    #   * {Types::GetServiceOutput#start_time #start_time} => Time
    #   * {Types::GetServiceOutput#end_time #end_time} => Time
    #   * {Types::GetServiceOutput#log_group_references #log_group_references} => Array&lt;Hash&lt;String,String&gt;&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_service({
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #     key_attributes: { # required
    #       "KeyAttributeName" => "KeyAttributeValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.service.key_attributes #=> Hash
    #   resp.service.key_attributes["KeyAttributeName"] #=> String
    #   resp.service.attribute_maps #=> Array
    #   resp.service.attribute_maps[0] #=> Hash
    #   resp.service.attribute_maps[0]["String"] #=> String
    #   resp.service.metric_references #=> Array
    #   resp.service.metric_references[0].namespace #=> String
    #   resp.service.metric_references[0].metric_type #=> String
    #   resp.service.metric_references[0].dimensions #=> Array
    #   resp.service.metric_references[0].dimensions[0].name #=> String
    #   resp.service.metric_references[0].dimensions[0].value #=> String
    #   resp.service.metric_references[0].metric_name #=> String
    #   resp.service.metric_references[0].account_id #=> String
    #   resp.service.log_group_references #=> Array
    #   resp.service.log_group_references[0] #=> Hash
    #   resp.service.log_group_references[0]["KeyAttributeName"] #=> String
    #   resp.start_time #=> Time
    #   resp.end_time #=> Time
    #   resp.log_group_references #=> Array
    #   resp.log_group_references[0] #=> Hash
    #   resp.log_group_references[0]["KeyAttributeName"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-signals-2024-04-15/GetService AWS API Documentation
    #
    # @overload get_service(params = {})
    # @param [Hash] params ({})
    def get_service(params = {}, options = {})
      req = build_request(:get_service, params)
      req.send_request(options)
    end

    # Returns information about one SLO created in the account.
    #
    # @option params [required, String] :id
    #   The ARN or name of the SLO that you want to retrieve information
    #   about. You can find the ARNs of SLOs by using the
    #   [ListServiceLevelObjectives][1] operation.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_ListServiceLevelObjectives.html
    #
    # @return [Types::GetServiceLevelObjectiveOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetServiceLevelObjectiveOutput#slo #slo} => Types::ServiceLevelObjective
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_service_level_objective({
    #     id: "ServiceLevelObjectiveId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.slo.arn #=> String
    #   resp.slo.name #=> String
    #   resp.slo.description #=> String
    #   resp.slo.created_time #=> Time
    #   resp.slo.last_updated_time #=> Time
    #   resp.slo.sli.sli_metric.key_attributes #=> Hash
    #   resp.slo.sli.sli_metric.key_attributes["KeyAttributeName"] #=> String
    #   resp.slo.sli.sli_metric.operation_name #=> String
    #   resp.slo.sli.sli_metric.metric_type #=> String, one of "LATENCY", "AVAILABILITY"
    #   resp.slo.sli.sli_metric.metric_data_queries #=> Array
    #   resp.slo.sli.sli_metric.metric_data_queries[0].id #=> String
    #   resp.slo.sli.sli_metric.metric_data_queries[0].metric_stat.metric.namespace #=> String
    #   resp.slo.sli.sli_metric.metric_data_queries[0].metric_stat.metric.metric_name #=> String
    #   resp.slo.sli.sli_metric.metric_data_queries[0].metric_stat.metric.dimensions #=> Array
    #   resp.slo.sli.sli_metric.metric_data_queries[0].metric_stat.metric.dimensions[0].name #=> String
    #   resp.slo.sli.sli_metric.metric_data_queries[0].metric_stat.metric.dimensions[0].value #=> String
    #   resp.slo.sli.sli_metric.metric_data_queries[0].metric_stat.period #=> Integer
    #   resp.slo.sli.sli_metric.metric_data_queries[0].metric_stat.stat #=> String
    #   resp.slo.sli.sli_metric.metric_data_queries[0].metric_stat.unit #=> String, one of "Microseconds", "Milliseconds", "Seconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Count", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second", "None"
    #   resp.slo.sli.sli_metric.metric_data_queries[0].expression #=> String
    #   resp.slo.sli.sli_metric.metric_data_queries[0].label #=> String
    #   resp.slo.sli.sli_metric.metric_data_queries[0].return_data #=> Boolean
    #   resp.slo.sli.sli_metric.metric_data_queries[0].period #=> Integer
    #   resp.slo.sli.sli_metric.metric_data_queries[0].account_id #=> String
    #   resp.slo.sli.sli_metric.dependency_config.dependency_key_attributes #=> Hash
    #   resp.slo.sli.sli_metric.dependency_config.dependency_key_attributes["KeyAttributeName"] #=> String
    #   resp.slo.sli.sli_metric.dependency_config.dependency_operation_name #=> String
    #   resp.slo.sli.metric_threshold #=> Float
    #   resp.slo.sli.comparison_operator #=> String, one of "GreaterThanOrEqualTo", "GreaterThan", "LessThan", "LessThanOrEqualTo"
    #   resp.slo.request_based_sli.request_based_sli_metric.key_attributes #=> Hash
    #   resp.slo.request_based_sli.request_based_sli_metric.key_attributes["KeyAttributeName"] #=> String
    #   resp.slo.request_based_sli.request_based_sli_metric.operation_name #=> String
    #   resp.slo.request_based_sli.request_based_sli_metric.metric_type #=> String, one of "LATENCY", "AVAILABILITY"
    #   resp.slo.request_based_sli.request_based_sli_metric.total_request_count_metric #=> Array
    #   resp.slo.request_based_sli.request_based_sli_metric.total_request_count_metric[0].id #=> String
    #   resp.slo.request_based_sli.request_based_sli_metric.total_request_count_metric[0].metric_stat.metric.namespace #=> String
    #   resp.slo.request_based_sli.request_based_sli_metric.total_request_count_metric[0].metric_stat.metric.metric_name #=> String
    #   resp.slo.request_based_sli.request_based_sli_metric.total_request_count_metric[0].metric_stat.metric.dimensions #=> Array
    #   resp.slo.request_based_sli.request_based_sli_metric.total_request_count_metric[0].metric_stat.metric.dimensions[0].name #=> String
    #   resp.slo.request_based_sli.request_based_sli_metric.total_request_count_metric[0].metric_stat.metric.dimensions[0].value #=> String
    #   resp.slo.request_based_sli.request_based_sli_metric.total_request_count_metric[0].metric_stat.period #=> Integer
    #   resp.slo.request_based_sli.request_based_sli_metric.total_request_count_metric[0].metric_stat.stat #=> String
    #   resp.slo.request_based_sli.request_based_sli_metric.total_request_count_metric[0].metric_stat.unit #=> String, one of "Microseconds", "Milliseconds", "Seconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Count", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second", "None"
    #   resp.slo.request_based_sli.request_based_sli_metric.total_request_count_metric[0].expression #=> String
    #   resp.slo.request_based_sli.request_based_sli_metric.total_request_count_metric[0].label #=> String
    #   resp.slo.request_based_sli.request_based_sli_metric.total_request_count_metric[0].return_data #=> Boolean
    #   resp.slo.request_based_sli.request_based_sli_metric.total_request_count_metric[0].period #=> Integer
    #   resp.slo.request_based_sli.request_based_sli_metric.total_request_count_metric[0].account_id #=> String
    #   resp.slo.request_based_sli.request_based_sli_metric.monitored_request_count_metric.good_count_metric #=> Array
    #   resp.slo.request_based_sli.request_based_sli_metric.monitored_request_count_metric.good_count_metric[0].id #=> String
    #   resp.slo.request_based_sli.request_based_sli_metric.monitored_request_count_metric.good_count_metric[0].metric_stat.metric.namespace #=> String
    #   resp.slo.request_based_sli.request_based_sli_metric.monitored_request_count_metric.good_count_metric[0].metric_stat.metric.metric_name #=> String
    #   resp.slo.request_based_sli.request_based_sli_metric.monitored_request_count_metric.good_count_metric[0].metric_stat.metric.dimensions #=> Array
    #   resp.slo.request_based_sli.request_based_sli_metric.monitored_request_count_metric.good_count_metric[0].metric_stat.metric.dimensions[0].name #=> String
    #   resp.slo.request_based_sli.request_based_sli_metric.monitored_request_count_metric.good_count_metric[0].metric_stat.metric.dimensions[0].value #=> String
    #   resp.slo.request_based_sli.request_based_sli_metric.monitored_request_count_metric.good_count_metric[0].metric_stat.period #=> Integer
    #   resp.slo.request_based_sli.request_based_sli_metric.monitored_request_count_metric.good_count_metric[0].metric_stat.stat #=> String
    #   resp.slo.request_based_sli.request_based_sli_metric.monitored_request_count_metric.good_count_metric[0].metric_stat.unit #=> String, one of "Microseconds", "Milliseconds", "Seconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Count", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second", "None"
    #   resp.slo.request_based_sli.request_based_sli_metric.monitored_request_count_metric.good_count_metric[0].expression #=> String
    #   resp.slo.request_based_sli.request_based_sli_metric.monitored_request_count_metric.good_count_metric[0].label #=> String
    #   resp.slo.request_based_sli.request_based_sli_metric.monitored_request_count_metric.good_count_metric[0].return_data #=> Boolean
    #   resp.slo.request_based_sli.request_based_sli_metric.monitored_request_count_metric.good_count_metric[0].period #=> Integer
    #   resp.slo.request_based_sli.request_based_sli_metric.monitored_request_count_metric.good_count_metric[0].account_id #=> String
    #   resp.slo.request_based_sli.request_based_sli_metric.monitored_request_count_metric.bad_count_metric #=> Array
    #   resp.slo.request_based_sli.request_based_sli_metric.monitored_request_count_metric.bad_count_metric[0].id #=> String
    #   resp.slo.request_based_sli.request_based_sli_metric.monitored_request_count_metric.bad_count_metric[0].metric_stat.metric.namespace #=> String
    #   resp.slo.request_based_sli.request_based_sli_metric.monitored_request_count_metric.bad_count_metric[0].metric_stat.metric.metric_name #=> String
    #   resp.slo.request_based_sli.request_based_sli_metric.monitored_request_count_metric.bad_count_metric[0].metric_stat.metric.dimensions #=> Array
    #   resp.slo.request_based_sli.request_based_sli_metric.monitored_request_count_metric.bad_count_metric[0].metric_stat.metric.dimensions[0].name #=> String
    #   resp.slo.request_based_sli.request_based_sli_metric.monitored_request_count_metric.bad_count_metric[0].metric_stat.metric.dimensions[0].value #=> String
    #   resp.slo.request_based_sli.request_based_sli_metric.monitored_request_count_metric.bad_count_metric[0].metric_stat.period #=> Integer
    #   resp.slo.request_based_sli.request_based_sli_metric.monitored_request_count_metric.bad_count_metric[0].metric_stat.stat #=> String
    #   resp.slo.request_based_sli.request_based_sli_metric.monitored_request_count_metric.bad_count_metric[0].metric_stat.unit #=> String, one of "Microseconds", "Milliseconds", "Seconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Count", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second", "None"
    #   resp.slo.request_based_sli.request_based_sli_metric.monitored_request_count_metric.bad_count_metric[0].expression #=> String
    #   resp.slo.request_based_sli.request_based_sli_metric.monitored_request_count_metric.bad_count_metric[0].label #=> String
    #   resp.slo.request_based_sli.request_based_sli_metric.monitored_request_count_metric.bad_count_metric[0].return_data #=> Boolean
    #   resp.slo.request_based_sli.request_based_sli_metric.monitored_request_count_metric.bad_count_metric[0].period #=> Integer
    #   resp.slo.request_based_sli.request_based_sli_metric.monitored_request_count_metric.bad_count_metric[0].account_id #=> String
    #   resp.slo.request_based_sli.request_based_sli_metric.dependency_config.dependency_key_attributes #=> Hash
    #   resp.slo.request_based_sli.request_based_sli_metric.dependency_config.dependency_key_attributes["KeyAttributeName"] #=> String
    #   resp.slo.request_based_sli.request_based_sli_metric.dependency_config.dependency_operation_name #=> String
    #   resp.slo.request_based_sli.metric_threshold #=> Float
    #   resp.slo.request_based_sli.comparison_operator #=> String, one of "GreaterThanOrEqualTo", "GreaterThan", "LessThan", "LessThanOrEqualTo"
    #   resp.slo.evaluation_type #=> String, one of "PeriodBased", "RequestBased"
    #   resp.slo.goal.interval.rolling_interval.duration_unit #=> String, one of "MINUTE", "HOUR", "DAY", "MONTH"
    #   resp.slo.goal.interval.rolling_interval.duration #=> Integer
    #   resp.slo.goal.interval.calendar_interval.start_time #=> Time
    #   resp.slo.goal.interval.calendar_interval.duration_unit #=> String, one of "MINUTE", "HOUR", "DAY", "MONTH"
    #   resp.slo.goal.interval.calendar_interval.duration #=> Integer
    #   resp.slo.goal.attainment_goal #=> Float
    #   resp.slo.goal.warning_threshold #=> Float
    #   resp.slo.burn_rate_configurations #=> Array
    #   resp.slo.burn_rate_configurations[0].look_back_window_minutes #=> Integer
    #   resp.slo.metric_source_type #=> String, one of "ServiceOperation", "CloudWatchMetric", "ServiceDependency"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-signals-2024-04-15/GetServiceLevelObjective AWS API Documentation
    #
    # @overload get_service_level_objective(params = {})
    # @param [Hash] params ({})
    def get_service_level_objective(params = {}, options = {})
      req = build_request(:get_service_level_objective, params)
      req.send_request(options)
    end

    # Returns a list of service dependencies of the service that you
    # specify. A dependency is an infrastructure component that an operation
    # of this service connects with. Dependencies can include Amazon Web
    # Services services, Amazon Web Services resources, and third-party
    # services.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :start_time
    #   The start of the time period to retrieve information about. When used
    #   in a raw HTTP Query API, it is formatted as be epoch time in seconds.
    #   For example: `1698778057`
    #
    #   Your requested start time will be rounded to the nearest hour.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :end_time
    #   The end of the time period to retrieve information about. When used in
    #   a raw HTTP Query API, it is formatted as be epoch time in seconds. For
    #   example: `1698778057`
    #
    #   Your requested end time will be rounded to the nearest hour.
    #
    # @option params [required, Hash<String,String>] :key_attributes
    #   Use this field to specify which service you want to retrieve
    #   information for. You must specify at least the `Type`, `Name`, and
    #   `Environment` attributes.
    #
    #   This is a string-to-string map. It can include the following fields.
    #
    #   * `Type` designates the type of object this is.
    #
    #   * `ResourceType` specifies the type of the resource. This field is
    #     used only when the value of the `Type` field is `Resource` or
    #     `AWS::Resource`.
    #
    #   * `Name` specifies the name of the object. This is used only if the
    #     value of the `Type` field is `Service`, `RemoteService`, or
    #     `AWS::Service`.
    #
    #   * `Identifier` identifies the resource objects of this resource. This
    #     is used only if the value of the `Type` field is `Resource` or
    #     `AWS::Resource`.
    #
    #   * `Environment` specifies the location where this object is hosted, or
    #     what it belongs to.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in one operation. If you omit
    #   this parameter, the default of 50 is used.
    #
    # @option params [String] :next_token
    #   Include this value, if it was returned by the previous operation, to
    #   get the next set of service dependencies.
    #
    # @return [Types::ListServiceDependenciesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListServiceDependenciesOutput#start_time #start_time} => Time
    #   * {Types::ListServiceDependenciesOutput#end_time #end_time} => Time
    #   * {Types::ListServiceDependenciesOutput#service_dependencies #service_dependencies} => Array&lt;Types::ServiceDependency&gt;
    #   * {Types::ListServiceDependenciesOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_service_dependencies({
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #     key_attributes: { # required
    #       "KeyAttributeName" => "KeyAttributeValue",
    #     },
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.start_time #=> Time
    #   resp.end_time #=> Time
    #   resp.service_dependencies #=> Array
    #   resp.service_dependencies[0].operation_name #=> String
    #   resp.service_dependencies[0].dependency_key_attributes #=> Hash
    #   resp.service_dependencies[0].dependency_key_attributes["KeyAttributeName"] #=> String
    #   resp.service_dependencies[0].dependency_operation_name #=> String
    #   resp.service_dependencies[0].metric_references #=> Array
    #   resp.service_dependencies[0].metric_references[0].namespace #=> String
    #   resp.service_dependencies[0].metric_references[0].metric_type #=> String
    #   resp.service_dependencies[0].metric_references[0].dimensions #=> Array
    #   resp.service_dependencies[0].metric_references[0].dimensions[0].name #=> String
    #   resp.service_dependencies[0].metric_references[0].dimensions[0].value #=> String
    #   resp.service_dependencies[0].metric_references[0].metric_name #=> String
    #   resp.service_dependencies[0].metric_references[0].account_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-signals-2024-04-15/ListServiceDependencies AWS API Documentation
    #
    # @overload list_service_dependencies(params = {})
    # @param [Hash] params ({})
    def list_service_dependencies(params = {}, options = {})
      req = build_request(:list_service_dependencies, params)
      req.send_request(options)
    end

    # Returns the list of dependents that invoked the specified service
    # during the provided time range. Dependents include other services,
    # CloudWatch Synthetics canaries, and clients that are instrumented with
    # CloudWatch RUM app monitors.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :start_time
    #   The start of the time period to retrieve information about. When used
    #   in a raw HTTP Query API, it is formatted as be epoch time in seconds.
    #   For example: `1698778057`
    #
    #   Your requested start time will be rounded to the nearest hour.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :end_time
    #   The end of the time period to retrieve information about. When used in
    #   a raw HTTP Query API, it is formatted as be epoch time in seconds. For
    #   example: `1698778057`
    #
    #   Your requested start time will be rounded to the nearest hour.
    #
    # @option params [required, Hash<String,String>] :key_attributes
    #   Use this field to specify which service you want to retrieve
    #   information for. You must specify at least the `Type`, `Name`, and
    #   `Environment` attributes.
    #
    #   This is a string-to-string map. It can include the following fields.
    #
    #   * `Type` designates the type of object this is.
    #
    #   * `ResourceType` specifies the type of the resource. This field is
    #     used only when the value of the `Type` field is `Resource` or
    #     `AWS::Resource`.
    #
    #   * `Name` specifies the name of the object. This is used only if the
    #     value of the `Type` field is `Service`, `RemoteService`, or
    #     `AWS::Service`.
    #
    #   * `Identifier` identifies the resource objects of this resource. This
    #     is used only if the value of the `Type` field is `Resource` or
    #     `AWS::Resource`.
    #
    #   * `Environment` specifies the location where this object is hosted, or
    #     what it belongs to.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in one operation. If you omit
    #   this parameter, the default of 50 is used.
    #
    # @option params [String] :next_token
    #   Include this value, if it was returned by the previous operation, to
    #   get the next set of service dependents.
    #
    # @return [Types::ListServiceDependentsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListServiceDependentsOutput#start_time #start_time} => Time
    #   * {Types::ListServiceDependentsOutput#end_time #end_time} => Time
    #   * {Types::ListServiceDependentsOutput#service_dependents #service_dependents} => Array&lt;Types::ServiceDependent&gt;
    #   * {Types::ListServiceDependentsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_service_dependents({
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #     key_attributes: { # required
    #       "KeyAttributeName" => "KeyAttributeValue",
    #     },
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.start_time #=> Time
    #   resp.end_time #=> Time
    #   resp.service_dependents #=> Array
    #   resp.service_dependents[0].operation_name #=> String
    #   resp.service_dependents[0].dependent_key_attributes #=> Hash
    #   resp.service_dependents[0].dependent_key_attributes["KeyAttributeName"] #=> String
    #   resp.service_dependents[0].dependent_operation_name #=> String
    #   resp.service_dependents[0].metric_references #=> Array
    #   resp.service_dependents[0].metric_references[0].namespace #=> String
    #   resp.service_dependents[0].metric_references[0].metric_type #=> String
    #   resp.service_dependents[0].metric_references[0].dimensions #=> Array
    #   resp.service_dependents[0].metric_references[0].dimensions[0].name #=> String
    #   resp.service_dependents[0].metric_references[0].dimensions[0].value #=> String
    #   resp.service_dependents[0].metric_references[0].metric_name #=> String
    #   resp.service_dependents[0].metric_references[0].account_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-signals-2024-04-15/ListServiceDependents AWS API Documentation
    #
    # @overload list_service_dependents(params = {})
    # @param [Hash] params ({})
    def list_service_dependents(params = {}, options = {})
      req = build_request(:list_service_dependents, params)
      req.send_request(options)
    end

    # Retrieves all exclusion windows configured for a specific SLO.
    #
    # @option params [required, String] :id
    #   The ID of the SLO to list exclusion windows for.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in one operation. If you omit
    #   this parameter, the default of 50 is used.      </p>
    #
    # @option params [String] :next_token
    #   Include this value, if it was returned by the previous operation, to
    #   get the next set of service level objectives.      </p>
    #
    # @return [Types::ListServiceLevelObjectiveExclusionWindowsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListServiceLevelObjectiveExclusionWindowsOutput#exclusion_windows #exclusion_windows} => Array&lt;Types::ExclusionWindow&gt;
    #   * {Types::ListServiceLevelObjectiveExclusionWindowsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_service_level_objective_exclusion_windows({
    #     id: "ServiceLevelObjectiveId", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.exclusion_windows #=> Array
    #   resp.exclusion_windows[0].window.duration_unit #=> String, one of "MINUTE", "HOUR", "DAY", "MONTH"
    #   resp.exclusion_windows[0].window.duration #=> Integer
    #   resp.exclusion_windows[0].start_time #=> Time
    #   resp.exclusion_windows[0].recurrence_rule.expression #=> String
    #   resp.exclusion_windows[0].reason #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-signals-2024-04-15/ListServiceLevelObjectiveExclusionWindows AWS API Documentation
    #
    # @overload list_service_level_objective_exclusion_windows(params = {})
    # @param [Hash] params ({})
    def list_service_level_objective_exclusion_windows(params = {}, options = {})
      req = build_request(:list_service_level_objective_exclusion_windows, params)
      req.send_request(options)
    end

    # Returns a list of SLOs created in this account.
    #
    # @option params [Hash<String,String>] :key_attributes
    #   You can use this optional field to specify which services you want to
    #   retrieve SLO information for.
    #
    #   This is a string-to-string map. It can include the following fields.
    #
    #   * `Type` designates the type of object this is.
    #
    #   * `ResourceType` specifies the type of the resource. This field is
    #     used only when the value of the `Type` field is `Resource` or
    #     `AWS::Resource`.
    #
    #   * `Name` specifies the name of the object. This is used only if the
    #     value of the `Type` field is `Service`, `RemoteService`, or
    #     `AWS::Service`.
    #
    #   * `Identifier` identifies the resource objects of this resource. This
    #     is used only if the value of the `Type` field is `Resource` or
    #     `AWS::Resource`.
    #
    #   * `Environment` specifies the location where this object is hosted, or
    #     what it belongs to.
    #
    # @option params [String] :operation_name
    #   The name of the operation that this SLO is associated with.
    #
    # @option params [Types::DependencyConfig] :dependency_config
    #   Identifies the dependency using the `DependencyKeyAttributes` and
    #   `DependencyOperationName`.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in one operation. If you omit
    #   this parameter, the default of 50 is used.
    #
    # @option params [String] :next_token
    #   Include this value, if it was returned by the previous operation, to
    #   get the next set of service level objectives.
    #
    # @option params [Array<String>] :metric_source_types
    #   Use this optional field to only include SLOs with the specified metric
    #   source types in the output. Supported types are:
    #
    #   * Service operation
    #
    #   * Service dependency
    #
    #   * CloudWatch metric
    #
    # @option params [Boolean] :include_linked_accounts
    #   If you are using this operation in a monitoring account, specify
    #   `true` to include SLO from source accounts in the returned data.
    #   </p> <p>When you are monitoring an account, you can use Amazon Web
    #   Services account ID in <code>KeyAttribute</code> filter for service
    #   source account and <code>SloOwnerawsaccountID</code> for SLO source
    #   account with <code>IncludeLinkedAccounts</code> to filter the returned
    #   data to only a single source account. </p>
    #
    # @option params [String] :slo_owner_aws_account_id
    #   SLO's Amazon Web Services account ID.
    #
    # @return [Types::ListServiceLevelObjectivesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListServiceLevelObjectivesOutput#slo_summaries #slo_summaries} => Array&lt;Types::ServiceLevelObjectiveSummary&gt;
    #   * {Types::ListServiceLevelObjectivesOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_service_level_objectives({
    #     key_attributes: {
    #       "KeyAttributeName" => "KeyAttributeValue",
    #     },
    #     operation_name: "OperationName",
    #     dependency_config: {
    #       dependency_key_attributes: { # required
    #         "KeyAttributeName" => "KeyAttributeValue",
    #       },
    #       dependency_operation_name: "OperationName", # required
    #     },
    #     max_results: 1,
    #     next_token: "NextToken",
    #     metric_source_types: ["ServiceOperation"], # accepts ServiceOperation, CloudWatchMetric, ServiceDependency
    #     include_linked_accounts: false,
    #     slo_owner_aws_account_id: "AwsAccountId",
    #   })
    #
    # @example Response structure
    #
    #   resp.slo_summaries #=> Array
    #   resp.slo_summaries[0].arn #=> String
    #   resp.slo_summaries[0].name #=> String
    #   resp.slo_summaries[0].key_attributes #=> Hash
    #   resp.slo_summaries[0].key_attributes["KeyAttributeName"] #=> String
    #   resp.slo_summaries[0].operation_name #=> String
    #   resp.slo_summaries[0].dependency_config.dependency_key_attributes #=> Hash
    #   resp.slo_summaries[0].dependency_config.dependency_key_attributes["KeyAttributeName"] #=> String
    #   resp.slo_summaries[0].dependency_config.dependency_operation_name #=> String
    #   resp.slo_summaries[0].created_time #=> Time
    #   resp.slo_summaries[0].evaluation_type #=> String, one of "PeriodBased", "RequestBased"
    #   resp.slo_summaries[0].metric_source_type #=> String, one of "ServiceOperation", "CloudWatchMetric", "ServiceDependency"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-signals-2024-04-15/ListServiceLevelObjectives AWS API Documentation
    #
    # @overload list_service_level_objectives(params = {})
    # @param [Hash] params ({})
    def list_service_level_objectives(params = {}, options = {})
      req = build_request(:list_service_level_objectives, params)
      req.send_request(options)
    end

    # Returns a list of the *operations* of this service that have been
    # discovered by Application Signals. Only the operations that were
    # invoked during the specified time range are returned.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :start_time
    #   The start of the time period to retrieve information about. When used
    #   in a raw HTTP Query API, it is formatted as be epoch time in seconds.
    #   For example: `1698778057`
    #
    #   Your requested start time will be rounded to the nearest hour.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :end_time
    #   The end of the time period to retrieve information about. When used in
    #   a raw HTTP Query API, it is formatted as be epoch time in seconds. For
    #   example: `1698778057`
    #
    #   Your requested end time will be rounded to the nearest hour.
    #
    # @option params [required, Hash<String,String>] :key_attributes
    #   Use this field to specify which service you want to retrieve
    #   information for. You must specify at least the `Type`, `Name`, and
    #   `Environment` attributes.
    #
    #   This is a string-to-string map. It can include the following fields.
    #
    #   * `Type` designates the type of object this is.
    #
    #   * `ResourceType` specifies the type of the resource. This field is
    #     used only when the value of the `Type` field is `Resource` or
    #     `AWS::Resource`.
    #
    #   * `Name` specifies the name of the object. This is used only if the
    #     value of the `Type` field is `Service`, `RemoteService`, or
    #     `AWS::Service`.
    #
    #   * `Identifier` identifies the resource objects of this resource. This
    #     is used only if the value of the `Type` field is `Resource` or
    #     `AWS::Resource`.
    #
    #   * `Environment` specifies the location where this object is hosted, or
    #     what it belongs to.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in one operation. If you omit
    #   this parameter, the default of 50 is used.
    #
    # @option params [String] :next_token
    #   Include this value, if it was returned by the previous operation, to
    #   get the next set of service operations.
    #
    # @return [Types::ListServiceOperationsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListServiceOperationsOutput#start_time #start_time} => Time
    #   * {Types::ListServiceOperationsOutput#end_time #end_time} => Time
    #   * {Types::ListServiceOperationsOutput#service_operations #service_operations} => Array&lt;Types::ServiceOperation&gt;
    #   * {Types::ListServiceOperationsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_service_operations({
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #     key_attributes: { # required
    #       "KeyAttributeName" => "KeyAttributeValue",
    #     },
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.start_time #=> Time
    #   resp.end_time #=> Time
    #   resp.service_operations #=> Array
    #   resp.service_operations[0].name #=> String
    #   resp.service_operations[0].metric_references #=> Array
    #   resp.service_operations[0].metric_references[0].namespace #=> String
    #   resp.service_operations[0].metric_references[0].metric_type #=> String
    #   resp.service_operations[0].metric_references[0].dimensions #=> Array
    #   resp.service_operations[0].metric_references[0].dimensions[0].name #=> String
    #   resp.service_operations[0].metric_references[0].dimensions[0].value #=> String
    #   resp.service_operations[0].metric_references[0].metric_name #=> String
    #   resp.service_operations[0].metric_references[0].account_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-signals-2024-04-15/ListServiceOperations AWS API Documentation
    #
    # @overload list_service_operations(params = {})
    # @param [Hash] params ({})
    def list_service_operations(params = {}, options = {})
      req = build_request(:list_service_operations, params)
      req.send_request(options)
    end

    # Returns a list of services that have been discovered by Application
    # Signals. A service represents a minimum logical and transactional unit
    # that completes a business function. Services are discovered through
    # Application Signals instrumentation.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :start_time
    #   The start of the time period to retrieve information about. When used
    #   in a raw HTTP Query API, it is formatted as be epoch time in seconds.
    #   For example: `1698778057`
    #
    #   Your requested start time will be rounded to the nearest hour.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :end_time
    #   The end of the time period to retrieve information about. When used in
    #   a raw HTTP Query API, it is formatted as be epoch time in seconds. For
    #   example: `1698778057`
    #
    #   Your requested start time will be rounded to the nearest hour.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in one operation. If you omit
    #   this parameter, the default of 50 is used.
    #
    # @option params [String] :next_token
    #   Include this value, if it was returned by the previous operation, to
    #   get the next set of services.
    #
    # @option params [Boolean] :include_linked_accounts
    #   If you are using this operation in a monitoring account, specify
    #   `true` to include services from source accounts in the returned data.
    #   </p>
    #
    # @option params [String] :aws_account_id
    #   Amazon Web Services Account ID.
    #
    # @return [Types::ListServicesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListServicesOutput#start_time #start_time} => Time
    #   * {Types::ListServicesOutput#end_time #end_time} => Time
    #   * {Types::ListServicesOutput#service_summaries #service_summaries} => Array&lt;Types::ServiceSummary&gt;
    #   * {Types::ListServicesOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_services({
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #     include_linked_accounts: false,
    #     aws_account_id: "AwsAccountId",
    #   })
    #
    # @example Response structure
    #
    #   resp.start_time #=> Time
    #   resp.end_time #=> Time
    #   resp.service_summaries #=> Array
    #   resp.service_summaries[0].key_attributes #=> Hash
    #   resp.service_summaries[0].key_attributes["KeyAttributeName"] #=> String
    #   resp.service_summaries[0].attribute_maps #=> Array
    #   resp.service_summaries[0].attribute_maps[0] #=> Hash
    #   resp.service_summaries[0].attribute_maps[0]["String"] #=> String
    #   resp.service_summaries[0].metric_references #=> Array
    #   resp.service_summaries[0].metric_references[0].namespace #=> String
    #   resp.service_summaries[0].metric_references[0].metric_type #=> String
    #   resp.service_summaries[0].metric_references[0].dimensions #=> Array
    #   resp.service_summaries[0].metric_references[0].dimensions[0].name #=> String
    #   resp.service_summaries[0].metric_references[0].dimensions[0].value #=> String
    #   resp.service_summaries[0].metric_references[0].metric_name #=> String
    #   resp.service_summaries[0].metric_references[0].account_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-signals-2024-04-15/ListServices AWS API Documentation
    #
    # @overload list_services(params = {})
    # @param [Hash] params ({})
    def list_services(params = {}, options = {})
      req = build_request(:list_services, params)
      req.send_request(options)
    end

    # Displays the tags associated with a CloudWatch resource. Tags can be
    # assigned to service level objectives.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the CloudWatch resource that you
    #   want to view tags for.
    #
    #   The ARN format of an Application Signals SLO is
    #   `arn:aws:cloudwatch:Region:account-id:slo:slo-name `
    #
    #   For more information about ARN format, see [ Resource Types Defined by
    #   Amazon CloudWatch][1] in the *Amazon Web Services General Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazoncloudwatch.html#amazoncloudwatch-resources-for-iam-policies
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Array&lt;Types::Tag&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "AmazonResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-signals-2024-04-15/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Enables this Amazon Web Services account to be able to use CloudWatch
    # Application Signals by creating the
    # *AWSServiceRoleForCloudWatchApplicationSignals* service-linked role.
    # This service- linked role has the following permissions:
    #
    # * `xray:GetServiceGraph`
    #
    # * `logs:StartQuery`
    #
    # * `logs:GetQueryResults`
    #
    # * `cloudwatch:GetMetricData`
    #
    # * `cloudwatch:ListMetrics`
    #
    # * `tag:GetResources`
    #
    # * `autoscaling:DescribeAutoScalingGroups`
    #
    # After completing this step, you still need to instrument your Java and
    # Python applications to send data to Application Signals. For more
    # information, see [ Enabling Application Signals][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Application-Signals-Enable.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-signals-2024-04-15/StartDiscovery AWS API Documentation
    #
    # @overload start_discovery(params = {})
    # @param [Hash] params ({})
    def start_discovery(params = {}, options = {})
      req = build_request(:start_discovery, params)
      req.send_request(options)
    end

    # Assigns one or more tags (key-value pairs) to the specified CloudWatch
    # resource, such as a service level objective.
    #
    # Tags can help you organize and categorize your resources. You can also
    # use them to scope user permissions by granting a user permission to
    # access or change only resources with certain tag values.
    #
    # Tags don't have any semantic meaning to Amazon Web Services and are
    # interpreted strictly as strings of characters.
    #
    # You can use the `TagResource` action with an alarm that already has
    # tags. If you specify a new tag key for the alarm, this tag is appended
    # to the list of tags associated with the alarm. If you specify a tag
    # key that is already associated with the alarm, the new tag value that
    # you specify replaces the previous value for that tag.
    #
    # You can associate as many as 50 tags with a CloudWatch resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the CloudWatch resource that you
    #   want to set tags for.
    #
    #   The ARN format of an Application Signals SLO is
    #   `arn:aws:cloudwatch:Region:account-id:slo:slo-name `
    #
    #   For more information about ARN format, see [ Resource Types Defined by
    #   Amazon CloudWatch][1] in the *Amazon Web Services General Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazoncloudwatch.html#amazoncloudwatch-resources-for-iam-policies
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   The list of key-value pairs to associate with the alarm.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "AmazonResourceName", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-signals-2024-04-15/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes one or more tags from the specified resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the CloudWatch resource that you
    #   want to delete tags from.
    #
    #   The ARN format of an Application Signals SLO is
    #   `arn:aws:cloudwatch:Region:account-id:slo:slo-name `
    #
    #   For more information about ARN format, see [ Resource Types Defined by
    #   Amazon CloudWatch][1] in the *Amazon Web Services General Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazoncloudwatch.html#amazoncloudwatch-resources-for-iam-policies
    #
    # @option params [required, Array<String>] :tag_keys
    #   The list of tag keys to remove from the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "AmazonResourceName", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-signals-2024-04-15/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates an existing service level objective (SLO). If you omit
    # parameters, the previous values of those parameters are retained.
    #
    # You cannot change from a period-based SLO to a request-based SLO, or
    # change from a request-based SLO to a period-based SLO.
    #
    # @option params [required, String] :id
    #   The Amazon Resource Name (ARN) or name of the service level objective
    #   that you want to update.
    #
    # @option params [String] :description
    #   An optional description for the SLO.
    #
    # @option params [Types::ServiceLevelIndicatorConfig] :sli_config
    #   If this SLO is a period-based SLO, this structure defines the
    #   information about what performance metric this SLO will monitor.
    #
    # @option params [Types::RequestBasedServiceLevelIndicatorConfig] :request_based_sli_config
    #   If this SLO is a request-based SLO, this structure defines the
    #   information about what performance metric this SLO will monitor.
    #
    #   You can't specify both `SliConfig` and `RequestBasedSliConfig` in the
    #   same operation.
    #
    # @option params [Types::Goal] :goal
    #   A structure that contains the attributes that determine the goal of
    #   the SLO. This includes the time period for evaluation and the
    #   attainment threshold.
    #
    # @option params [Array<Types::BurnRateConfiguration>] :burn_rate_configurations
    #   Use this array to create *burn rates* for this SLO. Each burn rate is
    #   a metric that indicates how fast the service is consuming the error
    #   budget, relative to the attainment goal of the SLO.
    #
    # @return [Types::UpdateServiceLevelObjectiveOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateServiceLevelObjectiveOutput#slo #slo} => Types::ServiceLevelObjective
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_service_level_objective({
    #     id: "ServiceLevelObjectiveId", # required
    #     description: "ServiceLevelObjectiveDescription",
    #     sli_config: {
    #       sli_metric_config: { # required
    #         key_attributes: {
    #           "KeyAttributeName" => "KeyAttributeValue",
    #         },
    #         operation_name: "OperationName",
    #         metric_type: "LATENCY", # accepts LATENCY, AVAILABILITY
    #         statistic: "ServiceLevelIndicatorStatistic",
    #         period_seconds: 1,
    #         metric_data_queries: [
    #           {
    #             id: "MetricId", # required
    #             metric_stat: {
    #               metric: { # required
    #                 namespace: "Namespace",
    #                 metric_name: "MetricName",
    #                 dimensions: [
    #                   {
    #                     name: "DimensionName", # required
    #                     value: "DimensionValue", # required
    #                   },
    #                 ],
    #               },
    #               period: 1, # required
    #               stat: "Stat", # required
    #               unit: "Microseconds", # accepts Microseconds, Milliseconds, Seconds, Bytes, Kilobytes, Megabytes, Gigabytes, Terabytes, Bits, Kilobits, Megabits, Gigabits, Terabits, Percent, Count, Bytes/Second, Kilobytes/Second, Megabytes/Second, Gigabytes/Second, Terabytes/Second, Bits/Second, Kilobits/Second, Megabits/Second, Gigabits/Second, Terabits/Second, Count/Second, None
    #             },
    #             expression: "MetricExpression",
    #             label: "MetricLabel",
    #             return_data: false,
    #             period: 1,
    #             account_id: "AccountId",
    #           },
    #         ],
    #         dependency_config: {
    #           dependency_key_attributes: { # required
    #             "KeyAttributeName" => "KeyAttributeValue",
    #           },
    #           dependency_operation_name: "OperationName", # required
    #         },
    #       },
    #       metric_threshold: 1.0, # required
    #       comparison_operator: "GreaterThanOrEqualTo", # required, accepts GreaterThanOrEqualTo, GreaterThan, LessThan, LessThanOrEqualTo
    #     },
    #     request_based_sli_config: {
    #       request_based_sli_metric_config: { # required
    #         key_attributes: {
    #           "KeyAttributeName" => "KeyAttributeValue",
    #         },
    #         operation_name: "OperationName",
    #         metric_type: "LATENCY", # accepts LATENCY, AVAILABILITY
    #         total_request_count_metric: [
    #           {
    #             id: "MetricId", # required
    #             metric_stat: {
    #               metric: { # required
    #                 namespace: "Namespace",
    #                 metric_name: "MetricName",
    #                 dimensions: [
    #                   {
    #                     name: "DimensionName", # required
    #                     value: "DimensionValue", # required
    #                   },
    #                 ],
    #               },
    #               period: 1, # required
    #               stat: "Stat", # required
    #               unit: "Microseconds", # accepts Microseconds, Milliseconds, Seconds, Bytes, Kilobytes, Megabytes, Gigabytes, Terabytes, Bits, Kilobits, Megabits, Gigabits, Terabits, Percent, Count, Bytes/Second, Kilobytes/Second, Megabytes/Second, Gigabytes/Second, Terabytes/Second, Bits/Second, Kilobits/Second, Megabits/Second, Gigabits/Second, Terabits/Second, Count/Second, None
    #             },
    #             expression: "MetricExpression",
    #             label: "MetricLabel",
    #             return_data: false,
    #             period: 1,
    #             account_id: "AccountId",
    #           },
    #         ],
    #         monitored_request_count_metric: {
    #           good_count_metric: [
    #             {
    #               id: "MetricId", # required
    #               metric_stat: {
    #                 metric: { # required
    #                   namespace: "Namespace",
    #                   metric_name: "MetricName",
    #                   dimensions: [
    #                     {
    #                       name: "DimensionName", # required
    #                       value: "DimensionValue", # required
    #                     },
    #                   ],
    #                 },
    #                 period: 1, # required
    #                 stat: "Stat", # required
    #                 unit: "Microseconds", # accepts Microseconds, Milliseconds, Seconds, Bytes, Kilobytes, Megabytes, Gigabytes, Terabytes, Bits, Kilobits, Megabits, Gigabits, Terabits, Percent, Count, Bytes/Second, Kilobytes/Second, Megabytes/Second, Gigabytes/Second, Terabytes/Second, Bits/Second, Kilobits/Second, Megabits/Second, Gigabits/Second, Terabits/Second, Count/Second, None
    #               },
    #               expression: "MetricExpression",
    #               label: "MetricLabel",
    #               return_data: false,
    #               period: 1,
    #               account_id: "AccountId",
    #             },
    #           ],
    #           bad_count_metric: [
    #             {
    #               id: "MetricId", # required
    #               metric_stat: {
    #                 metric: { # required
    #                   namespace: "Namespace",
    #                   metric_name: "MetricName",
    #                   dimensions: [
    #                     {
    #                       name: "DimensionName", # required
    #                       value: "DimensionValue", # required
    #                     },
    #                   ],
    #                 },
    #                 period: 1, # required
    #                 stat: "Stat", # required
    #                 unit: "Microseconds", # accepts Microseconds, Milliseconds, Seconds, Bytes, Kilobytes, Megabytes, Gigabytes, Terabytes, Bits, Kilobits, Megabits, Gigabits, Terabits, Percent, Count, Bytes/Second, Kilobytes/Second, Megabytes/Second, Gigabytes/Second, Terabytes/Second, Bits/Second, Kilobits/Second, Megabits/Second, Gigabits/Second, Terabits/Second, Count/Second, None
    #               },
    #               expression: "MetricExpression",
    #               label: "MetricLabel",
    #               return_data: false,
    #               period: 1,
    #               account_id: "AccountId",
    #             },
    #           ],
    #         },
    #         dependency_config: {
    #           dependency_key_attributes: { # required
    #             "KeyAttributeName" => "KeyAttributeValue",
    #           },
    #           dependency_operation_name: "OperationName", # required
    #         },
    #       },
    #       metric_threshold: 1.0,
    #       comparison_operator: "GreaterThanOrEqualTo", # accepts GreaterThanOrEqualTo, GreaterThan, LessThan, LessThanOrEqualTo
    #     },
    #     goal: {
    #       interval: {
    #         rolling_interval: {
    #           duration_unit: "MINUTE", # required, accepts MINUTE, HOUR, DAY, MONTH
    #           duration: 1, # required
    #         },
    #         calendar_interval: {
    #           start_time: Time.now, # required
    #           duration_unit: "MINUTE", # required, accepts MINUTE, HOUR, DAY, MONTH
    #           duration: 1, # required
    #         },
    #       },
    #       attainment_goal: 1.0,
    #       warning_threshold: 1.0,
    #     },
    #     burn_rate_configurations: [
    #       {
    #         look_back_window_minutes: 1, # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.slo.arn #=> String
    #   resp.slo.name #=> String
    #   resp.slo.description #=> String
    #   resp.slo.created_time #=> Time
    #   resp.slo.last_updated_time #=> Time
    #   resp.slo.sli.sli_metric.key_attributes #=> Hash
    #   resp.slo.sli.sli_metric.key_attributes["KeyAttributeName"] #=> String
    #   resp.slo.sli.sli_metric.operation_name #=> String
    #   resp.slo.sli.sli_metric.metric_type #=> String, one of "LATENCY", "AVAILABILITY"
    #   resp.slo.sli.sli_metric.metric_data_queries #=> Array
    #   resp.slo.sli.sli_metric.metric_data_queries[0].id #=> String
    #   resp.slo.sli.sli_metric.metric_data_queries[0].metric_stat.metric.namespace #=> String
    #   resp.slo.sli.sli_metric.metric_data_queries[0].metric_stat.metric.metric_name #=> String
    #   resp.slo.sli.sli_metric.metric_data_queries[0].metric_stat.metric.dimensions #=> Array
    #   resp.slo.sli.sli_metric.metric_data_queries[0].metric_stat.metric.dimensions[0].name #=> String
    #   resp.slo.sli.sli_metric.metric_data_queries[0].metric_stat.metric.dimensions[0].value #=> String
    #   resp.slo.sli.sli_metric.metric_data_queries[0].metric_stat.period #=> Integer
    #   resp.slo.sli.sli_metric.metric_data_queries[0].metric_stat.stat #=> String
    #   resp.slo.sli.sli_metric.metric_data_queries[0].metric_stat.unit #=> String, one of "Microseconds", "Milliseconds", "Seconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Count", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second", "None"
    #   resp.slo.sli.sli_metric.metric_data_queries[0].expression #=> String
    #   resp.slo.sli.sli_metric.metric_data_queries[0].label #=> String
    #   resp.slo.sli.sli_metric.metric_data_queries[0].return_data #=> Boolean
    #   resp.slo.sli.sli_metric.metric_data_queries[0].period #=> Integer
    #   resp.slo.sli.sli_metric.metric_data_queries[0].account_id #=> String
    #   resp.slo.sli.sli_metric.dependency_config.dependency_key_attributes #=> Hash
    #   resp.slo.sli.sli_metric.dependency_config.dependency_key_attributes["KeyAttributeName"] #=> String
    #   resp.slo.sli.sli_metric.dependency_config.dependency_operation_name #=> String
    #   resp.slo.sli.metric_threshold #=> Float
    #   resp.slo.sli.comparison_operator #=> String, one of "GreaterThanOrEqualTo", "GreaterThan", "LessThan", "LessThanOrEqualTo"
    #   resp.slo.request_based_sli.request_based_sli_metric.key_attributes #=> Hash
    #   resp.slo.request_based_sli.request_based_sli_metric.key_attributes["KeyAttributeName"] #=> String
    #   resp.slo.request_based_sli.request_based_sli_metric.operation_name #=> String
    #   resp.slo.request_based_sli.request_based_sli_metric.metric_type #=> String, one of "LATENCY", "AVAILABILITY"
    #   resp.slo.request_based_sli.request_based_sli_metric.total_request_count_metric #=> Array
    #   resp.slo.request_based_sli.request_based_sli_metric.total_request_count_metric[0].id #=> String
    #   resp.slo.request_based_sli.request_based_sli_metric.total_request_count_metric[0].metric_stat.metric.namespace #=> String
    #   resp.slo.request_based_sli.request_based_sli_metric.total_request_count_metric[0].metric_stat.metric.metric_name #=> String
    #   resp.slo.request_based_sli.request_based_sli_metric.total_request_count_metric[0].metric_stat.metric.dimensions #=> Array
    #   resp.slo.request_based_sli.request_based_sli_metric.total_request_count_metric[0].metric_stat.metric.dimensions[0].name #=> String
    #   resp.slo.request_based_sli.request_based_sli_metric.total_request_count_metric[0].metric_stat.metric.dimensions[0].value #=> String
    #   resp.slo.request_based_sli.request_based_sli_metric.total_request_count_metric[0].metric_stat.period #=> Integer
    #   resp.slo.request_based_sli.request_based_sli_metric.total_request_count_metric[0].metric_stat.stat #=> String
    #   resp.slo.request_based_sli.request_based_sli_metric.total_request_count_metric[0].metric_stat.unit #=> String, one of "Microseconds", "Milliseconds", "Seconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Count", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second", "None"
    #   resp.slo.request_based_sli.request_based_sli_metric.total_request_count_metric[0].expression #=> String
    #   resp.slo.request_based_sli.request_based_sli_metric.total_request_count_metric[0].label #=> String
    #   resp.slo.request_based_sli.request_based_sli_metric.total_request_count_metric[0].return_data #=> Boolean
    #   resp.slo.request_based_sli.request_based_sli_metric.total_request_count_metric[0].period #=> Integer
    #   resp.slo.request_based_sli.request_based_sli_metric.total_request_count_metric[0].account_id #=> String
    #   resp.slo.request_based_sli.request_based_sli_metric.monitored_request_count_metric.good_count_metric #=> Array
    #   resp.slo.request_based_sli.request_based_sli_metric.monitored_request_count_metric.good_count_metric[0].id #=> String
    #   resp.slo.request_based_sli.request_based_sli_metric.monitored_request_count_metric.good_count_metric[0].metric_stat.metric.namespace #=> String
    #   resp.slo.request_based_sli.request_based_sli_metric.monitored_request_count_metric.good_count_metric[0].metric_stat.metric.metric_name #=> String
    #   resp.slo.request_based_sli.request_based_sli_metric.monitored_request_count_metric.good_count_metric[0].metric_stat.metric.dimensions #=> Array
    #   resp.slo.request_based_sli.request_based_sli_metric.monitored_request_count_metric.good_count_metric[0].metric_stat.metric.dimensions[0].name #=> String
    #   resp.slo.request_based_sli.request_based_sli_metric.monitored_request_count_metric.good_count_metric[0].metric_stat.metric.dimensions[0].value #=> String
    #   resp.slo.request_based_sli.request_based_sli_metric.monitored_request_count_metric.good_count_metric[0].metric_stat.period #=> Integer
    #   resp.slo.request_based_sli.request_based_sli_metric.monitored_request_count_metric.good_count_metric[0].metric_stat.stat #=> String
    #   resp.slo.request_based_sli.request_based_sli_metric.monitored_request_count_metric.good_count_metric[0].metric_stat.unit #=> String, one of "Microseconds", "Milliseconds", "Seconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Count", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second", "None"
    #   resp.slo.request_based_sli.request_based_sli_metric.monitored_request_count_metric.good_count_metric[0].expression #=> String
    #   resp.slo.request_based_sli.request_based_sli_metric.monitored_request_count_metric.good_count_metric[0].label #=> String
    #   resp.slo.request_based_sli.request_based_sli_metric.monitored_request_count_metric.good_count_metric[0].return_data #=> Boolean
    #   resp.slo.request_based_sli.request_based_sli_metric.monitored_request_count_metric.good_count_metric[0].period #=> Integer
    #   resp.slo.request_based_sli.request_based_sli_metric.monitored_request_count_metric.good_count_metric[0].account_id #=> String
    #   resp.slo.request_based_sli.request_based_sli_metric.monitored_request_count_metric.bad_count_metric #=> Array
    #   resp.slo.request_based_sli.request_based_sli_metric.monitored_request_count_metric.bad_count_metric[0].id #=> String
    #   resp.slo.request_based_sli.request_based_sli_metric.monitored_request_count_metric.bad_count_metric[0].metric_stat.metric.namespace #=> String
    #   resp.slo.request_based_sli.request_based_sli_metric.monitored_request_count_metric.bad_count_metric[0].metric_stat.metric.metric_name #=> String
    #   resp.slo.request_based_sli.request_based_sli_metric.monitored_request_count_metric.bad_count_metric[0].metric_stat.metric.dimensions #=> Array
    #   resp.slo.request_based_sli.request_based_sli_metric.monitored_request_count_metric.bad_count_metric[0].metric_stat.metric.dimensions[0].name #=> String
    #   resp.slo.request_based_sli.request_based_sli_metric.monitored_request_count_metric.bad_count_metric[0].metric_stat.metric.dimensions[0].value #=> String
    #   resp.slo.request_based_sli.request_based_sli_metric.monitored_request_count_metric.bad_count_metric[0].metric_stat.period #=> Integer
    #   resp.slo.request_based_sli.request_based_sli_metric.monitored_request_count_metric.bad_count_metric[0].metric_stat.stat #=> String
    #   resp.slo.request_based_sli.request_based_sli_metric.monitored_request_count_metric.bad_count_metric[0].metric_stat.unit #=> String, one of "Microseconds", "Milliseconds", "Seconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Count", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second", "None"
    #   resp.slo.request_based_sli.request_based_sli_metric.monitored_request_count_metric.bad_count_metric[0].expression #=> String
    #   resp.slo.request_based_sli.request_based_sli_metric.monitored_request_count_metric.bad_count_metric[0].label #=> String
    #   resp.slo.request_based_sli.request_based_sli_metric.monitored_request_count_metric.bad_count_metric[0].return_data #=> Boolean
    #   resp.slo.request_based_sli.request_based_sli_metric.monitored_request_count_metric.bad_count_metric[0].period #=> Integer
    #   resp.slo.request_based_sli.request_based_sli_metric.monitored_request_count_metric.bad_count_metric[0].account_id #=> String
    #   resp.slo.request_based_sli.request_based_sli_metric.dependency_config.dependency_key_attributes #=> Hash
    #   resp.slo.request_based_sli.request_based_sli_metric.dependency_config.dependency_key_attributes["KeyAttributeName"] #=> String
    #   resp.slo.request_based_sli.request_based_sli_metric.dependency_config.dependency_operation_name #=> String
    #   resp.slo.request_based_sli.metric_threshold #=> Float
    #   resp.slo.request_based_sli.comparison_operator #=> String, one of "GreaterThanOrEqualTo", "GreaterThan", "LessThan", "LessThanOrEqualTo"
    #   resp.slo.evaluation_type #=> String, one of "PeriodBased", "RequestBased"
    #   resp.slo.goal.interval.rolling_interval.duration_unit #=> String, one of "MINUTE", "HOUR", "DAY", "MONTH"
    #   resp.slo.goal.interval.rolling_interval.duration #=> Integer
    #   resp.slo.goal.interval.calendar_interval.start_time #=> Time
    #   resp.slo.goal.interval.calendar_interval.duration_unit #=> String, one of "MINUTE", "HOUR", "DAY", "MONTH"
    #   resp.slo.goal.interval.calendar_interval.duration #=> Integer
    #   resp.slo.goal.attainment_goal #=> Float
    #   resp.slo.goal.warning_threshold #=> Float
    #   resp.slo.burn_rate_configurations #=> Array
    #   resp.slo.burn_rate_configurations[0].look_back_window_minutes #=> Integer
    #   resp.slo.metric_source_type #=> String, one of "ServiceOperation", "CloudWatchMetric", "ServiceDependency"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-signals-2024-04-15/UpdateServiceLevelObjective AWS API Documentation
    #
    # @overload update_service_level_objective(params = {})
    # @param [Hash] params ({})
    def update_service_level_objective(params = {}, options = {})
      req = build_request(:update_service_level_objective, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::ApplicationSignals')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-applicationsignals'
      context[:gem_version] = '1.25.0'
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
