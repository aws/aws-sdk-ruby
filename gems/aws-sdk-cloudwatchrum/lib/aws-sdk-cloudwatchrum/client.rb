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

module Aws::CloudWatchRUM
  # An API client for CloudWatchRUM.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::CloudWatchRUM::Client.new(
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

    @identifier = :cloudwatchrum

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
    add_plugin(Aws::CloudWatchRUM::Plugins::Endpoints)

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
    #   @option options [Aws::CloudWatchRUM::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::CloudWatchRUM::EndpointParameters`.
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

    # Specifies the extended metrics and custom metrics that you want a
    # CloudWatch RUM app monitor to send to a destination. Valid
    # destinations include CloudWatch and Evidently.
    #
    # By default, RUM app monitors send some metrics to CloudWatch. These
    # default metrics are listed in [CloudWatch metrics that you can collect
    # with CloudWatch RUM][1].
    #
    # In addition to these default metrics, you can choose to send extended
    # metrics, custom metrics, or both.
    #
    # * Extended metrics let you send metrics with additional dimensions
    #   that aren't included in the default metrics. You can also send
    #   extended metrics to both Evidently and CloudWatch. The valid
    #   dimension names for the additional dimensions for extended metrics
    #   are `BrowserName`, `CountryCode`, `DeviceType`, `FileType`,
    #   `OSName`, and `PageId`. For more information, see [ Extended metrics
    #   that you can send to CloudWatch and CloudWatch Evidently][2].
    #
    # * Custom metrics are metrics that you define. You can send custom
    #   metrics to CloudWatch. CloudWatch Evidently, or both. With custom
    #   metrics, you can use any metric name and namespace. To derive the
    #   metrics, you can use any custom events, built-in events, custom
    #   attributes, or default attributes.
    #
    #   You can't send custom metrics to the `AWS/RUM` namespace. You must
    #   send custom metrics to a custom namespace that you define. The
    #   namespace that you use can't start with `AWS/`. CloudWatch RUM
    #   prepends `RUM/CustomMetrics/` to the custom namespace that you
    #   define, so the final namespace for your metrics in CloudWatch is
    #   `RUM/CustomMetrics/your-custom-namespace `.
    #
    # The maximum number of metric definitions that you can specify in one
    # `BatchCreateRumMetricDefinitions` operation is 200.
    #
    # The maximum number of metric definitions that one destination can
    # contain is 2000.
    #
    # Extended metrics sent to CloudWatch and RUM custom metrics are charged
    # as CloudWatch custom metrics. Each combination of additional dimension
    # name and dimension value counts as a custom metric. For more
    # information, see [Amazon CloudWatch Pricing][3].
    #
    # You must have already created a destination for the metrics before you
    # send them. For more information, see [PutRumMetricsDestination][4].
    #
    # If some metric definitions specified in a
    # `BatchCreateRumMetricDefinitions` operations are not valid, those
    # metric definitions fail and return errors, but all valid metric
    # definitions in the same operation still succeed.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-RUM-metrics.html
    # [2]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-RUM-vended-metrics.html
    # [3]: https://aws.amazon.com/cloudwatch/pricing/
    # [4]: https://docs.aws.amazon.com/cloudwatchrum/latest/APIReference/API_PutRumMetricsDestination.html
    #
    # @option params [required, String] :app_monitor_name
    #   The name of the CloudWatch RUM app monitor that is to send the
    #   metrics.
    #
    # @option params [required, String] :destination
    #   The destination to send the metrics to. Valid values are `CloudWatch`
    #   and `Evidently`. If you specify `Evidently`, you must also specify the
    #   Amazon Resource Name (ARN) of the CloudWatchEvidently experiment that
    #   will receive the metrics and an IAM role that has permission to write
    #   to the experiment.
    #
    # @option params [String] :destination_arn
    #   This parameter is required if `Destination` is `Evidently`. If
    #   `Destination` is `CloudWatch`, do not use this parameter.
    #
    #   This parameter specifies the ARN of the Evidently experiment that is
    #   to receive the metrics. You must have already defined this experiment
    #   as a valid destination. For more information, see
    #   [PutRumMetricsDestination][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cloudwatchrum/latest/APIReference/API_PutRumMetricsDestination.html
    #
    # @option params [required, Array<Types::MetricDefinitionRequest>] :metric_definitions
    #   An array of structures which define the metrics that you want to send.
    #
    # @return [Types::BatchCreateRumMetricDefinitionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchCreateRumMetricDefinitionsResponse#errors #errors} => Array&lt;Types::BatchCreateRumMetricDefinitionsError&gt;
    #   * {Types::BatchCreateRumMetricDefinitionsResponse#metric_definitions #metric_definitions} => Array&lt;Types::MetricDefinition&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_create_rum_metric_definitions({
    #     app_monitor_name: "AppMonitorName", # required
    #     destination: "CloudWatch", # required, accepts CloudWatch, Evidently
    #     destination_arn: "DestinationArn",
    #     metric_definitions: [ # required
    #       {
    #         dimension_keys: {
    #           "DimensionKey" => "DimensionName",
    #         },
    #         event_pattern: "EventPattern",
    #         name: "MetricName", # required
    #         namespace: "Namespace",
    #         unit_label: "UnitLabel",
    #         value_key: "ValueKey",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.errors #=> Array
    #   resp.errors[0].error_code #=> String
    #   resp.errors[0].error_message #=> String
    #   resp.errors[0].metric_definition.dimension_keys #=> Hash
    #   resp.errors[0].metric_definition.dimension_keys["DimensionKey"] #=> String
    #   resp.errors[0].metric_definition.event_pattern #=> String
    #   resp.errors[0].metric_definition.name #=> String
    #   resp.errors[0].metric_definition.namespace #=> String
    #   resp.errors[0].metric_definition.unit_label #=> String
    #   resp.errors[0].metric_definition.value_key #=> String
    #   resp.metric_definitions #=> Array
    #   resp.metric_definitions[0].dimension_keys #=> Hash
    #   resp.metric_definitions[0].dimension_keys["DimensionKey"] #=> String
    #   resp.metric_definitions[0].event_pattern #=> String
    #   resp.metric_definitions[0].metric_definition_id #=> String
    #   resp.metric_definitions[0].name #=> String
    #   resp.metric_definitions[0].namespace #=> String
    #   resp.metric_definitions[0].unit_label #=> String
    #   resp.metric_definitions[0].value_key #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rum-2018-05-10/BatchCreateRumMetricDefinitions AWS API Documentation
    #
    # @overload batch_create_rum_metric_definitions(params = {})
    # @param [Hash] params ({})
    def batch_create_rum_metric_definitions(params = {}, options = {})
      req = build_request(:batch_create_rum_metric_definitions, params)
      req.send_request(options)
    end

    # Removes the specified metrics from being sent to an extended metrics
    # destination.
    #
    # If some metric definition IDs specified in a
    # `BatchDeleteRumMetricDefinitions` operations are not valid, those
    # metric definitions fail and return errors, but all valid metric
    # definition IDs in the same operation are still deleted.
    #
    # The maximum number of metric definitions that you can specify in one
    # `BatchDeleteRumMetricDefinitions` operation is 200.
    #
    # @option params [required, String] :app_monitor_name
    #   The name of the CloudWatch RUM app monitor that is sending these
    #   metrics.
    #
    # @option params [required, String] :destination
    #   Defines the destination where you want to stop sending the specified
    #   metrics. Valid values are `CloudWatch` and `Evidently`. If you specify
    #   `Evidently`, you must also specify the ARN of the CloudWatchEvidently
    #   experiment that is to be the destination and an IAM role that has
    #   permission to write to the experiment.
    #
    # @option params [String] :destination_arn
    #   This parameter is required if `Destination` is `Evidently`. If
    #   `Destination` is `CloudWatch`, do not use this parameter.
    #
    #   This parameter specifies the ARN of the Evidently experiment that was
    #   receiving the metrics that are being deleted.
    #
    # @option params [required, Array<String>] :metric_definition_ids
    #   An array of structures which define the metrics that you want to stop
    #   sending.
    #
    # @return [Types::BatchDeleteRumMetricDefinitionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchDeleteRumMetricDefinitionsResponse#errors #errors} => Array&lt;Types::BatchDeleteRumMetricDefinitionsError&gt;
    #   * {Types::BatchDeleteRumMetricDefinitionsResponse#metric_definition_ids #metric_definition_ids} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_delete_rum_metric_definitions({
    #     app_monitor_name: "AppMonitorName", # required
    #     destination: "CloudWatch", # required, accepts CloudWatch, Evidently
    #     destination_arn: "DestinationArn",
    #     metric_definition_ids: ["MetricDefinitionId"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.errors #=> Array
    #   resp.errors[0].error_code #=> String
    #   resp.errors[0].error_message #=> String
    #   resp.errors[0].metric_definition_id #=> String
    #   resp.metric_definition_ids #=> Array
    #   resp.metric_definition_ids[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rum-2018-05-10/BatchDeleteRumMetricDefinitions AWS API Documentation
    #
    # @overload batch_delete_rum_metric_definitions(params = {})
    # @param [Hash] params ({})
    def batch_delete_rum_metric_definitions(params = {}, options = {})
      req = build_request(:batch_delete_rum_metric_definitions, params)
      req.send_request(options)
    end

    # Retrieves the list of metrics and dimensions that a RUM app monitor is
    # sending to a single destination.
    #
    # @option params [required, String] :app_monitor_name
    #   The name of the CloudWatch RUM app monitor that is sending the
    #   metrics.
    #
    # @option params [required, String] :destination
    #   The type of destination that you want to view metrics for. Valid
    #   values are `CloudWatch` and `Evidently`.
    #
    # @option params [String] :destination_arn
    #   This parameter is required if `Destination` is `Evidently`. If
    #   `Destination` is `CloudWatch`, do not use this parameter.
    #
    #   This parameter specifies the ARN of the Evidently experiment that
    #   corresponds to the destination.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in one operation. The default
    #   is 50. The maximum that you can specify is 100.
    #
    #   To retrieve the remaining results, make another call with the returned
    #   `NextToken` value.
    #
    # @option params [String] :next_token
    #   Use the token returned by the previous operation to request the next
    #   page of results.
    #
    # @return [Types::BatchGetRumMetricDefinitionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchGetRumMetricDefinitionsResponse#metric_definitions #metric_definitions} => Array&lt;Types::MetricDefinition&gt;
    #   * {Types::BatchGetRumMetricDefinitionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_rum_metric_definitions({
    #     app_monitor_name: "AppMonitorName", # required
    #     destination: "CloudWatch", # required, accepts CloudWatch, Evidently
    #     destination_arn: "DestinationArn",
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.metric_definitions #=> Array
    #   resp.metric_definitions[0].dimension_keys #=> Hash
    #   resp.metric_definitions[0].dimension_keys["DimensionKey"] #=> String
    #   resp.metric_definitions[0].event_pattern #=> String
    #   resp.metric_definitions[0].metric_definition_id #=> String
    #   resp.metric_definitions[0].name #=> String
    #   resp.metric_definitions[0].namespace #=> String
    #   resp.metric_definitions[0].unit_label #=> String
    #   resp.metric_definitions[0].value_key #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rum-2018-05-10/BatchGetRumMetricDefinitions AWS API Documentation
    #
    # @overload batch_get_rum_metric_definitions(params = {})
    # @param [Hash] params ({})
    def batch_get_rum_metric_definitions(params = {}, options = {})
      req = build_request(:batch_get_rum_metric_definitions, params)
      req.send_request(options)
    end

    # Creates a Amazon CloudWatch RUM app monitor, which collects telemetry
    # data from your application and sends that data to RUM. The data
    # includes performance and reliability information such as page load
    # time, client-side errors, and user behavior.
    #
    # You use this operation only to create a new app monitor. To update an
    # existing app monitor, use [UpdateAppMonitor][1] instead.
    #
    # After you create an app monitor, sign in to the CloudWatch RUM console
    # to get the JavaScript code snippet to add to your web application. For
    # more information, see [How do I find a code snippet that I've already
    # generated?][2]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cloudwatchrum/latest/APIReference/API_UpdateAppMonitor.html
    # [2]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-RUM-find-code-snippet.html
    #
    # @option params [Types::AppMonitorConfiguration] :app_monitor_configuration
    #   A structure that contains much of the configuration data for the app
    #   monitor. If you are using Amazon Cognito for authorization, you must
    #   include this structure in your request, and it must include the ID of
    #   the Amazon Cognito identity pool to use for authorization. If you
    #   don't include `AppMonitorConfiguration`, you must set up your own
    #   authorization method. For more information, see [Authorize your
    #   application to send data to Amazon Web Services][1].
    #
    #   If you omit this argument, the sample rate used for RUM is set to 10%
    #   of the user sessions.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-RUM-get-started-authorization.html
    #
    # @option params [Types::CustomEvents] :custom_events
    #   Specifies whether this app monitor allows the web client to define and
    #   send custom events. If you omit this parameter, custom events are
    #   `DISABLED`.
    #
    #   For more information about custom events, see [Send custom events][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-RUM-custom-events.html
    #
    # @option params [Boolean] :cw_log_enabled
    #   Data collected by RUM is kept by RUM for 30 days and then deleted.
    #   This parameter specifies whether RUM sends a copy of this telemetry
    #   data to Amazon CloudWatch Logs in your account. This enables you to
    #   keep the telemetry data for more than 30 days, but it does incur
    #   Amazon CloudWatch Logs charges.
    #
    #   If you omit this parameter, the default is `false`.
    #
    # @option params [Types::DeobfuscationConfiguration] :deobfuscation_configuration
    #   A structure that contains the configuration for how an app monitor can
    #   deobfuscate stack traces.
    #
    # @option params [String] :domain
    #   The top-level internet domain name for which your application has
    #   administrative authority.
    #
    # @option params [Array<String>] :domain_list
    #   List the domain names for which your application has administrative
    #   authority. The `CreateAppMonitor` requires either the domain or the
    #   domain list.
    #
    # @option params [required, String] :name
    #   A name for the app monitor.
    #
    # @option params [Hash<String,String>] :tags
    #   Assigns one or more tags (key-value pairs) to the app monitor.
    #
    #   Tags can help you organize and categorize your resources. You can also
    #   use them to scope user permissions by granting a user permission to
    #   access or change only resources with certain tag values.
    #
    #   Tags don't have any semantic meaning to Amazon Web Services and are
    #   interpreted strictly as strings of characters.
    #
    #   You can associate as many as 50 tags with an app monitor.
    #
    #   For more information, see [Tagging Amazon Web Services resources][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    #
    # @return [Types::CreateAppMonitorResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAppMonitorResponse#id #id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_app_monitor({
    #     app_monitor_configuration: {
    #       allow_cookies: false,
    #       enable_x_ray: false,
    #       excluded_pages: ["Url"],
    #       favorite_pages: ["String"],
    #       guest_role_arn: "Arn",
    #       identity_pool_id: "IdentityPoolId",
    #       included_pages: ["Url"],
    #       session_sample_rate: 1.0,
    #       telemetries: ["errors"], # accepts errors, performance, http
    #     },
    #     custom_events: {
    #       status: "ENABLED", # accepts ENABLED, DISABLED
    #     },
    #     cw_log_enabled: false,
    #     deobfuscation_configuration: {
    #       java_script_source_maps: {
    #         s3_uri: "DeobfuscationS3Uri",
    #         status: "ENABLED", # required, accepts ENABLED, DISABLED
    #       },
    #     },
    #     domain: "AppMonitorDomain",
    #     domain_list: ["AppMonitorDomain"],
    #     name: "AppMonitorName", # required
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rum-2018-05-10/CreateAppMonitor AWS API Documentation
    #
    # @overload create_app_monitor(params = {})
    # @param [Hash] params ({})
    def create_app_monitor(params = {}, options = {})
      req = build_request(:create_app_monitor, params)
      req.send_request(options)
    end

    # Deletes an existing app monitor. This immediately stops the collection
    # of data.
    #
    # @option params [required, String] :name
    #   The name of the app monitor to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_app_monitor({
    #     name: "AppMonitorName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rum-2018-05-10/DeleteAppMonitor AWS API Documentation
    #
    # @overload delete_app_monitor(params = {})
    # @param [Hash] params ({})
    def delete_app_monitor(params = {}, options = {})
      req = build_request(:delete_app_monitor, params)
      req.send_request(options)
    end

    # Removes the association of a resource-based policy from an app
    # monitor.
    #
    # @option params [required, String] :name
    #   The app monitor that you want to remove the resource policy from.
    #
    # @option params [String] :policy_revision_id
    #   Specifies a specific policy revision to delete. Provide a
    #   `PolicyRevisionId` to ensure an atomic delete operation. If the
    #   revision ID that you provide doesn't match the latest policy revision
    #   ID, the request will be rejected with an
    #   `InvalidPolicyRevisionIdException` error.
    #
    # @return [Types::DeleteResourcePolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteResourcePolicyResponse#policy_revision_id #policy_revision_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_resource_policy({
    #     name: "AppMonitorName", # required
    #     policy_revision_id: "PolicyRevisionId",
    #   })
    #
    # @example Response structure
    #
    #   resp.policy_revision_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rum-2018-05-10/DeleteResourcePolicy AWS API Documentation
    #
    # @overload delete_resource_policy(params = {})
    # @param [Hash] params ({})
    def delete_resource_policy(params = {}, options = {})
      req = build_request(:delete_resource_policy, params)
      req.send_request(options)
    end

    # Deletes a destination for CloudWatch RUM extended metrics, so that the
    # specified app monitor stops sending extended metrics to that
    # destination.
    #
    # @option params [required, String] :app_monitor_name
    #   The name of the app monitor that is sending metrics to the destination
    #   that you want to delete.
    #
    # @option params [required, String] :destination
    #   The type of destination to delete. Valid values are `CloudWatch` and
    #   `Evidently`.
    #
    # @option params [String] :destination_arn
    #   This parameter is required if `Destination` is `Evidently`. If
    #   `Destination` is `CloudWatch`, do not use this parameter. This
    #   parameter specifies the ARN of the Evidently experiment that
    #   corresponds to the destination to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_rum_metrics_destination({
    #     app_monitor_name: "AppMonitorName", # required
    #     destination: "CloudWatch", # required, accepts CloudWatch, Evidently
    #     destination_arn: "DestinationArn",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rum-2018-05-10/DeleteRumMetricsDestination AWS API Documentation
    #
    # @overload delete_rum_metrics_destination(params = {})
    # @param [Hash] params ({})
    def delete_rum_metrics_destination(params = {}, options = {})
      req = build_request(:delete_rum_metrics_destination, params)
      req.send_request(options)
    end

    # Retrieves the complete configuration information for one app monitor.
    #
    # @option params [required, String] :name
    #   The app monitor to retrieve information for.
    #
    # @return [Types::GetAppMonitorResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAppMonitorResponse#app_monitor #app_monitor} => Types::AppMonitor
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_app_monitor({
    #     name: "AppMonitorName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.app_monitor.app_monitor_configuration.allow_cookies #=> Boolean
    #   resp.app_monitor.app_monitor_configuration.enable_x_ray #=> Boolean
    #   resp.app_monitor.app_monitor_configuration.excluded_pages #=> Array
    #   resp.app_monitor.app_monitor_configuration.excluded_pages[0] #=> String
    #   resp.app_monitor.app_monitor_configuration.favorite_pages #=> Array
    #   resp.app_monitor.app_monitor_configuration.favorite_pages[0] #=> String
    #   resp.app_monitor.app_monitor_configuration.guest_role_arn #=> String
    #   resp.app_monitor.app_monitor_configuration.identity_pool_id #=> String
    #   resp.app_monitor.app_monitor_configuration.included_pages #=> Array
    #   resp.app_monitor.app_monitor_configuration.included_pages[0] #=> String
    #   resp.app_monitor.app_monitor_configuration.session_sample_rate #=> Float
    #   resp.app_monitor.app_monitor_configuration.telemetries #=> Array
    #   resp.app_monitor.app_monitor_configuration.telemetries[0] #=> String, one of "errors", "performance", "http"
    #   resp.app_monitor.created #=> String
    #   resp.app_monitor.custom_events.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.app_monitor.data_storage.cw_log.cw_log_enabled #=> Boolean
    #   resp.app_monitor.data_storage.cw_log.cw_log_group #=> String
    #   resp.app_monitor.deobfuscation_configuration.java_script_source_maps.s3_uri #=> String
    #   resp.app_monitor.deobfuscation_configuration.java_script_source_maps.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.app_monitor.domain #=> String
    #   resp.app_monitor.domain_list #=> Array
    #   resp.app_monitor.domain_list[0] #=> String
    #   resp.app_monitor.id #=> String
    #   resp.app_monitor.last_modified #=> String
    #   resp.app_monitor.name #=> String
    #   resp.app_monitor.state #=> String, one of "CREATED", "DELETING", "ACTIVE"
    #   resp.app_monitor.tags #=> Hash
    #   resp.app_monitor.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rum-2018-05-10/GetAppMonitor AWS API Documentation
    #
    # @overload get_app_monitor(params = {})
    # @param [Hash] params ({})
    def get_app_monitor(params = {}, options = {})
      req = build_request(:get_app_monitor, params)
      req.send_request(options)
    end

    # Retrieves the raw performance events that RUM has collected from your
    # web application, so that you can do your own processing or analysis of
    # this data.
    #
    # @option params [Array<Types::QueryFilter>] :filters
    #   An array of structures that you can use to filter the results to those
    #   that match one or more sets of key-value pairs that you specify.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in one operation.
    #
    # @option params [required, String] :name
    #   The name of the app monitor that collected the data that you want to
    #   retrieve.
    #
    # @option params [String] :next_token
    #   Use the token returned by the previous operation to request the next
    #   page of results.
    #
    # @option params [required, Types::TimeRange] :time_range
    #   A structure that defines the time range that you want to retrieve
    #   results from.
    #
    # @return [Types::GetAppMonitorDataResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAppMonitorDataResponse#events #events} => Array&lt;String&gt;
    #   * {Types::GetAppMonitorDataResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_app_monitor_data({
    #     filters: [
    #       {
    #         name: "QueryFilterKey",
    #         values: ["QueryFilterValue"],
    #       },
    #     ],
    #     max_results: 1,
    #     name: "AppMonitorName", # required
    #     next_token: "Token",
    #     time_range: { # required
    #       after: 1, # required
    #       before: 1,
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.events #=> Array
    #   resp.events[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rum-2018-05-10/GetAppMonitorData AWS API Documentation
    #
    # @overload get_app_monitor_data(params = {})
    # @param [Hash] params ({})
    def get_app_monitor_data(params = {}, options = {})
      req = build_request(:get_app_monitor_data, params)
      req.send_request(options)
    end

    # Use this operation to retrieve information about a resource-based
    # policy that is attached to an app monitor.
    #
    # @option params [required, String] :name
    #   The name of the app monitor that is associated with the resource-based
    #   policy that you want to view.
    #
    # @return [Types::GetResourcePolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetResourcePolicyResponse#policy_document #policy_document} => String
    #   * {Types::GetResourcePolicyResponse#policy_revision_id #policy_revision_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_resource_policy({
    #     name: "AppMonitorName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.policy_document #=> String
    #   resp.policy_revision_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rum-2018-05-10/GetResourcePolicy AWS API Documentation
    #
    # @overload get_resource_policy(params = {})
    # @param [Hash] params ({})
    def get_resource_policy(params = {}, options = {})
      req = build_request(:get_resource_policy, params)
      req.send_request(options)
    end

    # Returns a list of the Amazon CloudWatch RUM app monitors in the
    # account.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in one operation. The default
    #   is 50. The maximum that you can specify is 100.
    #
    # @option params [String] :next_token
    #   Use the token returned by the previous operation to request the next
    #   page of results.
    #
    # @return [Types::ListAppMonitorsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAppMonitorsResponse#app_monitor_summaries #app_monitor_summaries} => Array&lt;Types::AppMonitorSummary&gt;
    #   * {Types::ListAppMonitorsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_app_monitors({
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.app_monitor_summaries #=> Array
    #   resp.app_monitor_summaries[0].created #=> String
    #   resp.app_monitor_summaries[0].id #=> String
    #   resp.app_monitor_summaries[0].last_modified #=> String
    #   resp.app_monitor_summaries[0].name #=> String
    #   resp.app_monitor_summaries[0].state #=> String, one of "CREATED", "DELETING", "ACTIVE"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rum-2018-05-10/ListAppMonitors AWS API Documentation
    #
    # @overload list_app_monitors(params = {})
    # @param [Hash] params ({})
    def list_app_monitors(params = {}, options = {})
      req = build_request(:list_app_monitors, params)
      req.send_request(options)
    end

    # Returns a list of destinations that you have created to receive RUM
    # extended metrics, for the specified app monitor.
    #
    # For more information about extended metrics, see [AddRumMetrics][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cloudwatchrum/latest/APIReference/API_AddRumMetrcs.html
    #
    # @option params [required, String] :app_monitor_name
    #   The name of the app monitor associated with the destinations that you
    #   want to retrieve.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in one operation. The default
    #   is 50. The maximum that you can specify is 100.
    #
    #   To retrieve the remaining results, make another call with the returned
    #   `NextToken` value.
    #
    # @option params [String] :next_token
    #   Use the token returned by the previous operation to request the next
    #   page of results.
    #
    # @return [Types::ListRumMetricsDestinationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRumMetricsDestinationsResponse#destinations #destinations} => Array&lt;Types::MetricDestinationSummary&gt;
    #   * {Types::ListRumMetricsDestinationsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_rum_metrics_destinations({
    #     app_monitor_name: "AppMonitorName", # required
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.destinations #=> Array
    #   resp.destinations[0].destination #=> String, one of "CloudWatch", "Evidently"
    #   resp.destinations[0].destination_arn #=> String
    #   resp.destinations[0].iam_role_arn #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rum-2018-05-10/ListRumMetricsDestinations AWS API Documentation
    #
    # @overload list_rum_metrics_destinations(params = {})
    # @param [Hash] params ({})
    def list_rum_metrics_destinations(params = {}, options = {})
      req = build_request(:list_rum_metrics_destinations, params)
      req.send_request(options)
    end

    # Displays the tags associated with a CloudWatch RUM resource.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource that you want to see the tags of.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#resource_arn #resource_arn} => String
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_arn #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rum-2018-05-10/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Use this operation to assign a resource-based policy to a CloudWatch
    # RUM app monitor to control access to it. Each app monitor can have one
    # resource-based policy. The maximum size of the policy is 4 KB. To
    # learn more about using resource policies with RUM, see [Using
    # resource-based policies with CloudWatch RUM][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-RUM-resource-policies.html
    #
    # @option params [required, String] :name
    #   The name of the app monitor that you want to apply this resource-based
    #   policy to. To find the names of your app monitors, you can use the
    #   [ListAppMonitors][1] operation.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cloudwatchrum/latest/APIReference/API_ListAppMonitors.html
    #
    # @option params [required, String] :policy_document
    #   The JSON to use as the resource policy. The document can be up to 4 KB
    #   in size. For more information about the contents and syntax for this
    #   policy, see [Using resource-based policies with CloudWatch RUM][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-RUM-resource-policies.html
    #
    # @option params [String] :policy_revision_id
    #   A string value that you can use to conditionally update your policy.
    #   You can provide the revision ID of your existing policy to make
    #   mutating requests against that policy.
    #
    #   When you assign a policy revision ID, then later requests about that
    #   policy will be rejected with an `InvalidPolicyRevisionIdException`
    #   error if they don't provide the correct current revision ID.
    #
    # @return [Types::PutResourcePolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutResourcePolicyResponse#policy_document #policy_document} => String
    #   * {Types::PutResourcePolicyResponse#policy_revision_id #policy_revision_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_resource_policy({
    #     name: "AppMonitorName", # required
    #     policy_document: "String", # required
    #     policy_revision_id: "PolicyRevisionId",
    #   })
    #
    # @example Response structure
    #
    #   resp.policy_document #=> String
    #   resp.policy_revision_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rum-2018-05-10/PutResourcePolicy AWS API Documentation
    #
    # @overload put_resource_policy(params = {})
    # @param [Hash] params ({})
    def put_resource_policy(params = {}, options = {})
      req = build_request(:put_resource_policy, params)
      req.send_request(options)
    end

    # Sends telemetry events about your application performance and user
    # behavior to CloudWatch RUM. The code snippet that RUM generates for
    # you to add to your application includes `PutRumEvents` operations to
    # send this data to RUM.
    #
    # Each `PutRumEvents` operation can send a batch of events from one user
    # session.
    #
    # @option params [String] :alias
    #   If the app monitor uses a resource-based policy that requires
    #   `PutRumEvents` requests to specify a certain alias, specify that alias
    #   here. This alias will be compared to the `rum:alias` context key in
    #   the resource-based policy. For more information, see [Using
    #   resource-based policies with CloudWatch RUM][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-RUM-resource-policies.html
    #
    # @option params [required, Types::AppMonitorDetails] :app_monitor_details
    #   A structure that contains information about the app monitor that
    #   collected this telemetry information.
    #
    # @option params [required, String] :batch_id
    #   A unique identifier for this batch of RUM event data.
    #
    # @option params [required, String] :id
    #   The ID of the app monitor that is sending this data.
    #
    # @option params [required, Array<Types::RumEvent>] :rum_events
    #   An array of structures that contain the telemetry event data.
    #
    # @option params [required, Types::UserDetails] :user_details
    #   A structure that contains information about the user session that this
    #   batch of events was collected from.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_rum_events({
    #     alias: "Alias",
    #     app_monitor_details: { # required
    #       id: "String",
    #       name: "String",
    #       version: "String",
    #     },
    #     batch_id: "PutRumEventsRequestBatchIdString", # required
    #     id: "PutRumEventsRequestIdString", # required
    #     rum_events: [ # required
    #       {
    #         details: "JsonValue", # required
    #         id: "RumEventIdString", # required
    #         metadata: "JsonValue",
    #         timestamp: Time.now, # required
    #         type: "String", # required
    #       },
    #     ],
    #     user_details: { # required
    #       session_id: "UserDetailsSessionIdString",
    #       user_id: "UserDetailsUserIdString",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rum-2018-05-10/PutRumEvents AWS API Documentation
    #
    # @overload put_rum_events(params = {})
    # @param [Hash] params ({})
    def put_rum_events(params = {}, options = {})
      req = build_request(:put_rum_events, params)
      req.send_request(options)
    end

    # Creates or updates a destination to receive extended metrics from
    # CloudWatch RUM. You can send extended metrics to CloudWatch or to a
    # CloudWatch Evidently experiment.
    #
    # For more information about extended metrics, see
    # [BatchCreateRumMetricDefinitions][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cloudwatchrum/latest/APIReference/API_BatchCreateRumMetricDefinitions.html
    #
    # @option params [required, String] :app_monitor_name
    #   The name of the CloudWatch RUM app monitor that will send the metrics.
    #
    # @option params [required, String] :destination
    #   Defines the destination to send the metrics to. Valid values are
    #   `CloudWatch` and `Evidently`. If you specify `Evidently`, you must
    #   also specify the ARN of the CloudWatchEvidently experiment that is to
    #   be the destination and an IAM role that has permission to write to the
    #   experiment.
    #
    # @option params [String] :destination_arn
    #   Use this parameter only if `Destination` is `Evidently`. This
    #   parameter specifies the ARN of the Evidently experiment that will
    #   receive the extended metrics.
    #
    # @option params [String] :iam_role_arn
    #   This parameter is required if `Destination` is `Evidently`. If
    #   `Destination` is `CloudWatch`, don't use this parameter.
    #
    #   This parameter specifies the ARN of an IAM role that RUM will assume
    #   to write to the Evidently experiment that you are sending metrics to.
    #   This role must have permission to write to that experiment.
    #
    #   If you specify this parameter, you must be signed on to a role that
    #   has [PassRole][1] permissions attached to it, to allow the role to be
    #   passed. The [ CloudWatchAmazonCloudWatchRUMFullAccess][2] policy
    #   doesn't include `PassRole` permissions.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use_passrole.html
    #   [2]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/auth-and-access-control-cw.html#managed-policies-cloudwatch-RUM
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_rum_metrics_destination({
    #     app_monitor_name: "AppMonitorName", # required
    #     destination: "CloudWatch", # required, accepts CloudWatch, Evidently
    #     destination_arn: "DestinationArn",
    #     iam_role_arn: "IamRoleArn",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rum-2018-05-10/PutRumMetricsDestination AWS API Documentation
    #
    # @overload put_rum_metrics_destination(params = {})
    # @param [Hash] params ({})
    def put_rum_metrics_destination(params = {}, options = {})
      req = build_request(:put_rum_metrics_destination, params)
      req.send_request(options)
    end

    # Assigns one or more tags (key-value pairs) to the specified CloudWatch
    # RUM resource. Currently, the only resources that can be tagged app
    # monitors.
    #
    # Tags can help you organize and categorize your resources. You can also
    # use them to scope user permissions by granting a user permission to
    # access or change only resources with certain tag values.
    #
    # Tags don't have any semantic meaning to Amazon Web Services and are
    # interpreted strictly as strings of characters.
    #
    # You can use the `TagResource` action with a resource that already has
    # tags. If you specify a new tag key for the resource, this tag is
    # appended to the list of tags associated with the alarm. If you specify
    # a tag key that is already associated with the resource, the new tag
    # value that you specify replaces the previous value for that tag.
    #
    # You can associate as many as 50 tags with a resource.
    #
    # For more information, see [Tagging Amazon Web Services resources][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the CloudWatch RUM resource that you're adding tags to.
    #
    # @option params [required, Hash<String,String>] :tags
    #   The list of key-value pairs to associate with the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "Arn", # required
    #     tags: { # required
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rum-2018-05-10/TagResource AWS API Documentation
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
    #   The ARN of the CloudWatch RUM resource that you're removing tags
    #   from.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The list of tag keys to remove from the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "Arn", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rum-2018-05-10/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates the configuration of an existing app monitor. When you use
    # this operation, only the parts of the app monitor configuration that
    # you specify in this operation are changed. For any parameters that you
    # omit, the existing values are kept.
    #
    # You can't use this operation to change the tags of an existing app
    # monitor. To change the tags of an existing app monitor, use
    # [TagResource][1].
    #
    # To create a new app monitor, use [CreateAppMonitor][2].
    #
    # After you update an app monitor, sign in to the CloudWatch RUM console
    # to get the updated JavaScript code snippet to add to your web
    # application. For more information, see [How do I find a code snippet
    # that I've already generated?][3]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cloudwatchrum/latest/APIReference/API_TagResource.html
    # [2]: https://docs.aws.amazon.com/cloudwatchrum/latest/APIReference/API_CreateAppMonitor.html
    # [3]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-RUM-find-code-snippet.html
    #
    # @option params [Types::AppMonitorConfiguration] :app_monitor_configuration
    #   A structure that contains much of the configuration data for the app
    #   monitor. If you are using Amazon Cognito for authorization, you must
    #   include this structure in your request, and it must include the ID of
    #   the Amazon Cognito identity pool to use for authorization. If you
    #   don't include `AppMonitorConfiguration`, you must set up your own
    #   authorization method. For more information, see [Authorize your
    #   application to send data to Amazon Web Services][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-RUM-get-started-authorization.html
    #
    # @option params [Types::CustomEvents] :custom_events
    #   Specifies whether this app monitor allows the web client to define and
    #   send custom events. The default is for custom events to be `DISABLED`.
    #
    #   For more information about custom events, see [Send custom events][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-RUM-custom-events.html
    #
    # @option params [Boolean] :cw_log_enabled
    #   Data collected by RUM is kept by RUM for 30 days and then deleted.
    #   This parameter specifies whether RUM sends a copy of this telemetry
    #   data to Amazon CloudWatch Logs in your account. This enables you to
    #   keep the telemetry data for more than 30 days, but it does incur
    #   Amazon CloudWatch Logs charges.
    #
    # @option params [Types::DeobfuscationConfiguration] :deobfuscation_configuration
    #   A structure that contains the configuration for how an app monitor can
    #   deobfuscate stack traces.
    #
    # @option params [String] :domain
    #   The top-level internet domain name for which your application has
    #   administrative authority.
    #
    # @option params [Array<String>] :domain_list
    #   List the domain names for which your application has administrative
    #   authority. The `UpdateAppMonitor` allows either the domain or the
    #   domain list.
    #
    # @option params [required, String] :name
    #   The name of the app monitor to update.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_app_monitor({
    #     app_monitor_configuration: {
    #       allow_cookies: false,
    #       enable_x_ray: false,
    #       excluded_pages: ["Url"],
    #       favorite_pages: ["String"],
    #       guest_role_arn: "Arn",
    #       identity_pool_id: "IdentityPoolId",
    #       included_pages: ["Url"],
    #       session_sample_rate: 1.0,
    #       telemetries: ["errors"], # accepts errors, performance, http
    #     },
    #     custom_events: {
    #       status: "ENABLED", # accepts ENABLED, DISABLED
    #     },
    #     cw_log_enabled: false,
    #     deobfuscation_configuration: {
    #       java_script_source_maps: {
    #         s3_uri: "DeobfuscationS3Uri",
    #         status: "ENABLED", # required, accepts ENABLED, DISABLED
    #       },
    #     },
    #     domain: "AppMonitorDomain",
    #     domain_list: ["AppMonitorDomain"],
    #     name: "AppMonitorName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rum-2018-05-10/UpdateAppMonitor AWS API Documentation
    #
    # @overload update_app_monitor(params = {})
    # @param [Hash] params ({})
    def update_app_monitor(params = {}, options = {})
      req = build_request(:update_app_monitor, params)
      req.send_request(options)
    end

    # Modifies one existing metric definition for CloudWatch RUM extended
    # metrics. For more information about extended metrics, see
    # [BatchCreateRumMetricsDefinitions][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cloudwatchrum/latest/APIReference/API_BatchCreateRumMetricsDefinitions.html
    #
    # @option params [required, String] :app_monitor_name
    #   The name of the CloudWatch RUM app monitor that sends these metrics.
    #
    # @option params [required, String] :destination
    #   The destination to send the metrics to. Valid values are `CloudWatch`
    #   and `Evidently`. If you specify `Evidently`, you must also specify the
    #   ARN of the CloudWatchEvidently experiment that will receive the
    #   metrics and an IAM role that has permission to write to the
    #   experiment.
    #
    # @option params [String] :destination_arn
    #   This parameter is required if `Destination` is `Evidently`. If
    #   `Destination` is `CloudWatch`, do not use this parameter.
    #
    #   This parameter specifies the ARN of the Evidently experiment that is
    #   to receive the metrics. You must have already defined this experiment
    #   as a valid destination. For more information, see
    #   [PutRumMetricsDestination][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cloudwatchrum/latest/APIReference/API_PutRumMetricsDestination.html
    #
    # @option params [required, Types::MetricDefinitionRequest] :metric_definition
    #   A structure that contains the new definition that you want to use for
    #   this metric.
    #
    # @option params [required, String] :metric_definition_id
    #   The ID of the metric definition to update.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_rum_metric_definition({
    #     app_monitor_name: "AppMonitorName", # required
    #     destination: "CloudWatch", # required, accepts CloudWatch, Evidently
    #     destination_arn: "DestinationArn",
    #     metric_definition: { # required
    #       dimension_keys: {
    #         "DimensionKey" => "DimensionName",
    #       },
    #       event_pattern: "EventPattern",
    #       name: "MetricName", # required
    #       namespace: "Namespace",
    #       unit_label: "UnitLabel",
    #       value_key: "ValueKey",
    #     },
    #     metric_definition_id: "MetricDefinitionId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rum-2018-05-10/UpdateRumMetricDefinition AWS API Documentation
    #
    # @overload update_rum_metric_definition(params = {})
    # @param [Hash] params ({})
    def update_rum_metric_definition(params = {}, options = {})
      req = build_request(:update_rum_metric_definition, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::CloudWatchRUM')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-cloudwatchrum'
      context[:gem_version] = '1.49.0'
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
