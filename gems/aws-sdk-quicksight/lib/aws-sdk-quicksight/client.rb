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

module Aws::QuickSight
  # An API client for QuickSight.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::QuickSight::Client.new(
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

    @identifier = :quicksight

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
    add_plugin(Aws::QuickSight::Plugins::Endpoints)

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
    #   @option options [Aws::QuickSight::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::QuickSight::EndpointParameters`.
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

    # Creates new reviewed answers for a Q Topic.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that you want to create a
    #   reviewed answer in.
    #
    # @option params [required, String] :topic_id
    #   The ID for the topic reviewed answer that you want to create. This ID
    #   is unique per Amazon Web Services Region for each Amazon Web Services
    #   account.
    #
    # @option params [required, Array<Types::CreateTopicReviewedAnswer>] :answers
    #   The definition of the Answers to be created.
    #
    # @return [Types::BatchCreateTopicReviewedAnswerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchCreateTopicReviewedAnswerResponse#topic_id #topic_id} => String
    #   * {Types::BatchCreateTopicReviewedAnswerResponse#topic_arn #topic_arn} => String
    #   * {Types::BatchCreateTopicReviewedAnswerResponse#succeeded_answers #succeeded_answers} => Array&lt;Types::SucceededTopicReviewedAnswer&gt;
    #   * {Types::BatchCreateTopicReviewedAnswerResponse#invalid_answers #invalid_answers} => Array&lt;Types::InvalidTopicReviewedAnswer&gt;
    #   * {Types::BatchCreateTopicReviewedAnswerResponse#status #status} => Integer
    #   * {Types::BatchCreateTopicReviewedAnswerResponse#request_id #request_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_create_topic_reviewed_answer({
    #     aws_account_id: "AwsAccountId", # required
    #     topic_id: "TopicId", # required
    #     answers: [ # required
    #       {
    #         answer_id: "AnswerId", # required
    #         dataset_arn: "Arn", # required
    #         question: "LimitedString", # required
    #         mir: {
    #           metrics: [
    #             {
    #               metric_id: {
    #                 identity: "LimitedString", # required
    #               },
    #               function: {
    #                 aggregation: "SUM", # accepts SUM, MIN, MAX, COUNT, AVERAGE, DISTINCT_COUNT, STDEV, STDEVP, VAR, VARP, PERCENTILE, MEDIAN, PTD_SUM, PTD_MIN, PTD_MAX, PTD_COUNT, PTD_DISTINCT_COUNT, PTD_AVERAGE, COLUMN, CUSTOM
    #                 aggregation_function_parameters: {
    #                   "AggFunctionParamKey" => "AggFunctionParamValue",
    #                 },
    #                 period: "SECOND", # accepts SECOND, MINUTE, HOUR, DAY, WEEK, MONTH, QUARTER, YEAR
    #                 period_field: "LimitedString",
    #               },
    #               operands: [
    #                 {
    #                   identity: "LimitedString", # required
    #                 },
    #               ],
    #               comparison_method: {
    #                 type: "DIFF", # accepts DIFF, PERC_DIFF, DIFF_AS_PERC, POP_CURRENT_DIFF_AS_PERC, POP_CURRENT_DIFF, POP_OVERTIME_DIFF_AS_PERC, POP_OVERTIME_DIFF, PERCENT_OF_TOTAL, RUNNING_SUM, MOVING_AVERAGE
    #                 period: "SECOND", # accepts SECOND, MINUTE, HOUR, DAY, WEEK, MONTH, QUARTER, YEAR
    #                 window_size: 1,
    #               },
    #               expression: "Expression",
    #               calculated_field_references: [
    #                 {
    #                   identity: "LimitedString", # required
    #                 },
    #               ],
    #               display_format: "AUTO", # accepts AUTO, PERCENT, CURRENCY, NUMBER, DATE, STRING
    #               display_format_options: {
    #                 use_blank_cell_format: false,
    #                 blank_cell_format: "LimitedString",
    #                 date_format: "LimitedString",
    #                 decimal_separator: "COMMA", # accepts COMMA, DOT
    #                 grouping_separator: "LimitedString",
    #                 use_grouping: false,
    #                 fraction_digits: 1,
    #                 prefix: "LimitedString",
    #                 suffix: "LimitedString",
    #                 unit_scaler: "NONE", # accepts NONE, AUTO, THOUSANDS, MILLIONS, BILLIONS, TRILLIONS, LAKHS, CRORES
    #                 negative_format: {
    #                   prefix: "LimitedString",
    #                   suffix: "LimitedString",
    #                 },
    #                 currency_symbol: "LimitedString",
    #               },
    #               named_entity: {
    #                 named_entity_name: "LimitedString",
    #               },
    #             },
    #           ],
    #           group_by_list: [
    #             {
    #               field_name: {
    #                 identity: "LimitedString", # required
    #               },
    #               time_granularity: "SECOND", # accepts SECOND, MINUTE, HOUR, DAY, WEEK, MONTH, QUARTER, YEAR
    #               sort: {
    #                 operand: {
    #                   identity: "LimitedString", # required
    #                 },
    #                 sort_direction: "ASCENDING", # accepts ASCENDING, DESCENDING
    #               },
    #               display_format: "AUTO", # accepts AUTO, PERCENT, CURRENCY, NUMBER, DATE, STRING
    #               display_format_options: {
    #                 use_blank_cell_format: false,
    #                 blank_cell_format: "LimitedString",
    #                 date_format: "LimitedString",
    #                 decimal_separator: "COMMA", # accepts COMMA, DOT
    #                 grouping_separator: "LimitedString",
    #                 use_grouping: false,
    #                 fraction_digits: 1,
    #                 prefix: "LimitedString",
    #                 suffix: "LimitedString",
    #                 unit_scaler: "NONE", # accepts NONE, AUTO, THOUSANDS, MILLIONS, BILLIONS, TRILLIONS, LAKHS, CRORES
    #                 negative_format: {
    #                   prefix: "LimitedString",
    #                   suffix: "LimitedString",
    #                 },
    #                 currency_symbol: "LimitedString",
    #               },
    #               named_entity: {
    #                 named_entity_name: "LimitedString",
    #               },
    #             },
    #           ],
    #           filters: [
    #             [
    #               {
    #                 filter_type: "CATEGORY_FILTER", # accepts CATEGORY_FILTER, NUMERIC_EQUALITY_FILTER, NUMERIC_RANGE_FILTER, DATE_RANGE_FILTER, RELATIVE_DATE_FILTER, TOP_BOTTOM_FILTER, EQUALS, RANK_LIMIT_FILTER, ACCEPT_ALL_FILTER
    #                 filter_class: "ENFORCED_VALUE_FILTER", # accepts ENFORCED_VALUE_FILTER, CONDITIONAL_VALUE_FILTER, NAMED_VALUE_FILTER
    #                 operand_field: {
    #                   identity: "LimitedString", # required
    #                 },
    #                 function: "CONTAINS", # accepts CONTAINS, EXACT, STARTS_WITH, ENDS_WITH, CONTAINS_STRING, PREVIOUS, THIS, LAST, NEXT, NOW
    #                 constant: {
    #                   constant_type: "SINGULAR", # accepts SINGULAR, RANGE, COLLECTIVE
    #                   value: "ConstantValueString",
    #                   minimum: "ConstantValueString",
    #                   maximum: "ConstantValueString",
    #                   value_list: [
    #                     {
    #                       constant_type: "SINGULAR", # accepts SINGULAR, RANGE, COLLECTIVE
    #                       value: "ConstantValueString",
    #                     },
    #                   ],
    #                 },
    #                 inverse: false,
    #                 null_filter: "ALL_VALUES", # accepts ALL_VALUES, NON_NULLS_ONLY, NULLS_ONLY
    #                 aggregation: "SUM", # accepts SUM, MIN, MAX, COUNT, AVERAGE, DISTINCT_COUNT, STDEV, STDEVP, VAR, VARP, PERCENTILE, MEDIAN, PTD_SUM, PTD_MIN, PTD_MAX, PTD_COUNT, PTD_DISTINCT_COUNT, PTD_AVERAGE, COLUMN, CUSTOM
    #                 aggregation_function_parameters: {
    #                   "AggFunctionParamKey" => "AggFunctionParamValue",
    #                 },
    #                 aggregation_partition_by: [
    #                   {
    #                     field_name: "LimitedString",
    #                     time_granularity: "YEAR", # accepts YEAR, QUARTER, MONTH, WEEK, DAY, HOUR, MINUTE, SECOND, MILLISECOND
    #                   },
    #                 ],
    #                 range: {
    #                   constant_type: "SINGULAR", # accepts SINGULAR, RANGE, COLLECTIVE
    #                   value: "ConstantValueString",
    #                   minimum: "ConstantValueString",
    #                   maximum: "ConstantValueString",
    #                   value_list: [
    #                     {
    #                       constant_type: "SINGULAR", # accepts SINGULAR, RANGE, COLLECTIVE
    #                       value: "ConstantValueString",
    #                     },
    #                   ],
    #                 },
    #                 inclusive: false,
    #                 time_granularity: "YEAR", # accepts YEAR, QUARTER, MONTH, WEEK, DAY, HOUR, MINUTE, SECOND, MILLISECOND
    #                 last_next_offset: {
    #                   constant_type: "SINGULAR", # accepts SINGULAR, RANGE, COLLECTIVE
    #                   value: "ConstantValueString",
    #                   minimum: "ConstantValueString",
    #                   maximum: "ConstantValueString",
    #                   value_list: [
    #                     {
    #                       constant_type: "SINGULAR", # accepts SINGULAR, RANGE, COLLECTIVE
    #                       value: "ConstantValueString",
    #                     },
    #                   ],
    #                 },
    #                 agg_metrics: [
    #                   {
    #                     metric_operand: {
    #                       identity: "LimitedString", # required
    #                     },
    #                     function: "SUM", # accepts SUM, MIN, MAX, COUNT, AVERAGE, DISTINCT_COUNT, STDEV, STDEVP, VAR, VARP, PERCENTILE, MEDIAN, PTD_SUM, PTD_MIN, PTD_MAX, PTD_COUNT, PTD_DISTINCT_COUNT, PTD_AVERAGE, COLUMN, CUSTOM
    #                     sort_direction: "ASCENDING", # accepts ASCENDING, DESCENDING
    #                   },
    #                 ],
    #                 top_bottom_limit: {
    #                   constant_type: "SINGULAR", # accepts SINGULAR, RANGE, COLLECTIVE
    #                   value: "ConstantValueString",
    #                   minimum: "ConstantValueString",
    #                   maximum: "ConstantValueString",
    #                   value_list: [
    #                     {
    #                       constant_type: "SINGULAR", # accepts SINGULAR, RANGE, COLLECTIVE
    #                       value: "ConstantValueString",
    #                     },
    #                   ],
    #                 },
    #                 sort_direction: "ASCENDING", # accepts ASCENDING, DESCENDING
    #                 anchor: {
    #                   anchor_type: "TODAY", # accepts TODAY
    #                   time_granularity: "YEAR", # accepts YEAR, QUARTER, MONTH, WEEK, DAY, HOUR, MINUTE, SECOND, MILLISECOND
    #                   offset: 1,
    #                 },
    #               },
    #             ],
    #           ],
    #           sort: {
    #             operand: {
    #               identity: "LimitedString", # required
    #             },
    #             sort_direction: "ASCENDING", # accepts ASCENDING, DESCENDING
    #           },
    #           contribution_analysis: {
    #             factors: [
    #               {
    #                 field_name: "LimitedString",
    #               },
    #             ],
    #             time_ranges: {
    #               start_range: {
    #                 filter_type: "CATEGORY_FILTER", # accepts CATEGORY_FILTER, NUMERIC_EQUALITY_FILTER, NUMERIC_RANGE_FILTER, DATE_RANGE_FILTER, RELATIVE_DATE_FILTER, TOP_BOTTOM_FILTER, EQUALS, RANK_LIMIT_FILTER, ACCEPT_ALL_FILTER
    #                 filter_class: "ENFORCED_VALUE_FILTER", # accepts ENFORCED_VALUE_FILTER, CONDITIONAL_VALUE_FILTER, NAMED_VALUE_FILTER
    #                 operand_field: {
    #                   identity: "LimitedString", # required
    #                 },
    #                 function: "CONTAINS", # accepts CONTAINS, EXACT, STARTS_WITH, ENDS_WITH, CONTAINS_STRING, PREVIOUS, THIS, LAST, NEXT, NOW
    #                 constant: {
    #                   constant_type: "SINGULAR", # accepts SINGULAR, RANGE, COLLECTIVE
    #                   value: "ConstantValueString",
    #                   minimum: "ConstantValueString",
    #                   maximum: "ConstantValueString",
    #                   value_list: [
    #                     {
    #                       constant_type: "SINGULAR", # accepts SINGULAR, RANGE, COLLECTIVE
    #                       value: "ConstantValueString",
    #                     },
    #                   ],
    #                 },
    #                 inverse: false,
    #                 null_filter: "ALL_VALUES", # accepts ALL_VALUES, NON_NULLS_ONLY, NULLS_ONLY
    #                 aggregation: "SUM", # accepts SUM, MIN, MAX, COUNT, AVERAGE, DISTINCT_COUNT, STDEV, STDEVP, VAR, VARP, PERCENTILE, MEDIAN, PTD_SUM, PTD_MIN, PTD_MAX, PTD_COUNT, PTD_DISTINCT_COUNT, PTD_AVERAGE, COLUMN, CUSTOM
    #                 aggregation_function_parameters: {
    #                   "AggFunctionParamKey" => "AggFunctionParamValue",
    #                 },
    #                 aggregation_partition_by: [
    #                   {
    #                     field_name: "LimitedString",
    #                     time_granularity: "YEAR", # accepts YEAR, QUARTER, MONTH, WEEK, DAY, HOUR, MINUTE, SECOND, MILLISECOND
    #                   },
    #                 ],
    #                 range: {
    #                   constant_type: "SINGULAR", # accepts SINGULAR, RANGE, COLLECTIVE
    #                   value: "ConstantValueString",
    #                   minimum: "ConstantValueString",
    #                   maximum: "ConstantValueString",
    #                   value_list: [
    #                     {
    #                       constant_type: "SINGULAR", # accepts SINGULAR, RANGE, COLLECTIVE
    #                       value: "ConstantValueString",
    #                     },
    #                   ],
    #                 },
    #                 inclusive: false,
    #                 time_granularity: "YEAR", # accepts YEAR, QUARTER, MONTH, WEEK, DAY, HOUR, MINUTE, SECOND, MILLISECOND
    #                 last_next_offset: {
    #                   constant_type: "SINGULAR", # accepts SINGULAR, RANGE, COLLECTIVE
    #                   value: "ConstantValueString",
    #                   minimum: "ConstantValueString",
    #                   maximum: "ConstantValueString",
    #                   value_list: [
    #                     {
    #                       constant_type: "SINGULAR", # accepts SINGULAR, RANGE, COLLECTIVE
    #                       value: "ConstantValueString",
    #                     },
    #                   ],
    #                 },
    #                 agg_metrics: [
    #                   {
    #                     metric_operand: {
    #                       identity: "LimitedString", # required
    #                     },
    #                     function: "SUM", # accepts SUM, MIN, MAX, COUNT, AVERAGE, DISTINCT_COUNT, STDEV, STDEVP, VAR, VARP, PERCENTILE, MEDIAN, PTD_SUM, PTD_MIN, PTD_MAX, PTD_COUNT, PTD_DISTINCT_COUNT, PTD_AVERAGE, COLUMN, CUSTOM
    #                     sort_direction: "ASCENDING", # accepts ASCENDING, DESCENDING
    #                   },
    #                 ],
    #                 top_bottom_limit: {
    #                   constant_type: "SINGULAR", # accepts SINGULAR, RANGE, COLLECTIVE
    #                   value: "ConstantValueString",
    #                   minimum: "ConstantValueString",
    #                   maximum: "ConstantValueString",
    #                   value_list: [
    #                     {
    #                       constant_type: "SINGULAR", # accepts SINGULAR, RANGE, COLLECTIVE
    #                       value: "ConstantValueString",
    #                     },
    #                   ],
    #                 },
    #                 sort_direction: "ASCENDING", # accepts ASCENDING, DESCENDING
    #                 anchor: {
    #                   anchor_type: "TODAY", # accepts TODAY
    #                   time_granularity: "YEAR", # accepts YEAR, QUARTER, MONTH, WEEK, DAY, HOUR, MINUTE, SECOND, MILLISECOND
    #                   offset: 1,
    #                 },
    #               },
    #               end_range: {
    #                 filter_type: "CATEGORY_FILTER", # accepts CATEGORY_FILTER, NUMERIC_EQUALITY_FILTER, NUMERIC_RANGE_FILTER, DATE_RANGE_FILTER, RELATIVE_DATE_FILTER, TOP_BOTTOM_FILTER, EQUALS, RANK_LIMIT_FILTER, ACCEPT_ALL_FILTER
    #                 filter_class: "ENFORCED_VALUE_FILTER", # accepts ENFORCED_VALUE_FILTER, CONDITIONAL_VALUE_FILTER, NAMED_VALUE_FILTER
    #                 operand_field: {
    #                   identity: "LimitedString", # required
    #                 },
    #                 function: "CONTAINS", # accepts CONTAINS, EXACT, STARTS_WITH, ENDS_WITH, CONTAINS_STRING, PREVIOUS, THIS, LAST, NEXT, NOW
    #                 constant: {
    #                   constant_type: "SINGULAR", # accepts SINGULAR, RANGE, COLLECTIVE
    #                   value: "ConstantValueString",
    #                   minimum: "ConstantValueString",
    #                   maximum: "ConstantValueString",
    #                   value_list: [
    #                     {
    #                       constant_type: "SINGULAR", # accepts SINGULAR, RANGE, COLLECTIVE
    #                       value: "ConstantValueString",
    #                     },
    #                   ],
    #                 },
    #                 inverse: false,
    #                 null_filter: "ALL_VALUES", # accepts ALL_VALUES, NON_NULLS_ONLY, NULLS_ONLY
    #                 aggregation: "SUM", # accepts SUM, MIN, MAX, COUNT, AVERAGE, DISTINCT_COUNT, STDEV, STDEVP, VAR, VARP, PERCENTILE, MEDIAN, PTD_SUM, PTD_MIN, PTD_MAX, PTD_COUNT, PTD_DISTINCT_COUNT, PTD_AVERAGE, COLUMN, CUSTOM
    #                 aggregation_function_parameters: {
    #                   "AggFunctionParamKey" => "AggFunctionParamValue",
    #                 },
    #                 aggregation_partition_by: [
    #                   {
    #                     field_name: "LimitedString",
    #                     time_granularity: "YEAR", # accepts YEAR, QUARTER, MONTH, WEEK, DAY, HOUR, MINUTE, SECOND, MILLISECOND
    #                   },
    #                 ],
    #                 range: {
    #                   constant_type: "SINGULAR", # accepts SINGULAR, RANGE, COLLECTIVE
    #                   value: "ConstantValueString",
    #                   minimum: "ConstantValueString",
    #                   maximum: "ConstantValueString",
    #                   value_list: [
    #                     {
    #                       constant_type: "SINGULAR", # accepts SINGULAR, RANGE, COLLECTIVE
    #                       value: "ConstantValueString",
    #                     },
    #                   ],
    #                 },
    #                 inclusive: false,
    #                 time_granularity: "YEAR", # accepts YEAR, QUARTER, MONTH, WEEK, DAY, HOUR, MINUTE, SECOND, MILLISECOND
    #                 last_next_offset: {
    #                   constant_type: "SINGULAR", # accepts SINGULAR, RANGE, COLLECTIVE
    #                   value: "ConstantValueString",
    #                   minimum: "ConstantValueString",
    #                   maximum: "ConstantValueString",
    #                   value_list: [
    #                     {
    #                       constant_type: "SINGULAR", # accepts SINGULAR, RANGE, COLLECTIVE
    #                       value: "ConstantValueString",
    #                     },
    #                   ],
    #                 },
    #                 agg_metrics: [
    #                   {
    #                     metric_operand: {
    #                       identity: "LimitedString", # required
    #                     },
    #                     function: "SUM", # accepts SUM, MIN, MAX, COUNT, AVERAGE, DISTINCT_COUNT, STDEV, STDEVP, VAR, VARP, PERCENTILE, MEDIAN, PTD_SUM, PTD_MIN, PTD_MAX, PTD_COUNT, PTD_DISTINCT_COUNT, PTD_AVERAGE, COLUMN, CUSTOM
    #                     sort_direction: "ASCENDING", # accepts ASCENDING, DESCENDING
    #                   },
    #                 ],
    #                 top_bottom_limit: {
    #                   constant_type: "SINGULAR", # accepts SINGULAR, RANGE, COLLECTIVE
    #                   value: "ConstantValueString",
    #                   minimum: "ConstantValueString",
    #                   maximum: "ConstantValueString",
    #                   value_list: [
    #                     {
    #                       constant_type: "SINGULAR", # accepts SINGULAR, RANGE, COLLECTIVE
    #                       value: "ConstantValueString",
    #                     },
    #                   ],
    #                 },
    #                 sort_direction: "ASCENDING", # accepts ASCENDING, DESCENDING
    #                 anchor: {
    #                   anchor_type: "TODAY", # accepts TODAY
    #                   time_granularity: "YEAR", # accepts YEAR, QUARTER, MONTH, WEEK, DAY, HOUR, MINUTE, SECOND, MILLISECOND
    #                   offset: 1,
    #                 },
    #               },
    #             },
    #             direction: "INCREASE", # accepts INCREASE, DECREASE, NEUTRAL
    #             sort_type: "ABSOLUTE_DIFFERENCE", # accepts ABSOLUTE_DIFFERENCE, CONTRIBUTION_PERCENTAGE, DEVIATION_FROM_EXPECTED, PERCENTAGE_DIFFERENCE
    #           },
    #           visual: {
    #             type: "LimitedString",
    #           },
    #         },
    #         primary_visual: {
    #           visual_id: "LimitedString",
    #           role: "PRIMARY", # accepts PRIMARY, COMPLIMENTARY, MULTI_INTENT, FALLBACK, FRAGMENT
    #           ir: {
    #             metrics: [
    #               {
    #                 metric_id: {
    #                   identity: "LimitedString", # required
    #                 },
    #                 function: {
    #                   aggregation: "SUM", # accepts SUM, MIN, MAX, COUNT, AVERAGE, DISTINCT_COUNT, STDEV, STDEVP, VAR, VARP, PERCENTILE, MEDIAN, PTD_SUM, PTD_MIN, PTD_MAX, PTD_COUNT, PTD_DISTINCT_COUNT, PTD_AVERAGE, COLUMN, CUSTOM
    #                   aggregation_function_parameters: {
    #                     "AggFunctionParamKey" => "AggFunctionParamValue",
    #                   },
    #                   period: "SECOND", # accepts SECOND, MINUTE, HOUR, DAY, WEEK, MONTH, QUARTER, YEAR
    #                   period_field: "LimitedString",
    #                 },
    #                 operands: [
    #                   {
    #                     identity: "LimitedString", # required
    #                   },
    #                 ],
    #                 comparison_method: {
    #                   type: "DIFF", # accepts DIFF, PERC_DIFF, DIFF_AS_PERC, POP_CURRENT_DIFF_AS_PERC, POP_CURRENT_DIFF, POP_OVERTIME_DIFF_AS_PERC, POP_OVERTIME_DIFF, PERCENT_OF_TOTAL, RUNNING_SUM, MOVING_AVERAGE
    #                   period: "SECOND", # accepts SECOND, MINUTE, HOUR, DAY, WEEK, MONTH, QUARTER, YEAR
    #                   window_size: 1,
    #                 },
    #                 expression: "Expression",
    #                 calculated_field_references: [
    #                   {
    #                     identity: "LimitedString", # required
    #                   },
    #                 ],
    #                 display_format: "AUTO", # accepts AUTO, PERCENT, CURRENCY, NUMBER, DATE, STRING
    #                 display_format_options: {
    #                   use_blank_cell_format: false,
    #                   blank_cell_format: "LimitedString",
    #                   date_format: "LimitedString",
    #                   decimal_separator: "COMMA", # accepts COMMA, DOT
    #                   grouping_separator: "LimitedString",
    #                   use_grouping: false,
    #                   fraction_digits: 1,
    #                   prefix: "LimitedString",
    #                   suffix: "LimitedString",
    #                   unit_scaler: "NONE", # accepts NONE, AUTO, THOUSANDS, MILLIONS, BILLIONS, TRILLIONS, LAKHS, CRORES
    #                   negative_format: {
    #                     prefix: "LimitedString",
    #                     suffix: "LimitedString",
    #                   },
    #                   currency_symbol: "LimitedString",
    #                 },
    #                 named_entity: {
    #                   named_entity_name: "LimitedString",
    #                 },
    #               },
    #             ],
    #             group_by_list: [
    #               {
    #                 field_name: {
    #                   identity: "LimitedString", # required
    #                 },
    #                 time_granularity: "SECOND", # accepts SECOND, MINUTE, HOUR, DAY, WEEK, MONTH, QUARTER, YEAR
    #                 sort: {
    #                   operand: {
    #                     identity: "LimitedString", # required
    #                   },
    #                   sort_direction: "ASCENDING", # accepts ASCENDING, DESCENDING
    #                 },
    #                 display_format: "AUTO", # accepts AUTO, PERCENT, CURRENCY, NUMBER, DATE, STRING
    #                 display_format_options: {
    #                   use_blank_cell_format: false,
    #                   blank_cell_format: "LimitedString",
    #                   date_format: "LimitedString",
    #                   decimal_separator: "COMMA", # accepts COMMA, DOT
    #                   grouping_separator: "LimitedString",
    #                   use_grouping: false,
    #                   fraction_digits: 1,
    #                   prefix: "LimitedString",
    #                   suffix: "LimitedString",
    #                   unit_scaler: "NONE", # accepts NONE, AUTO, THOUSANDS, MILLIONS, BILLIONS, TRILLIONS, LAKHS, CRORES
    #                   negative_format: {
    #                     prefix: "LimitedString",
    #                     suffix: "LimitedString",
    #                   },
    #                   currency_symbol: "LimitedString",
    #                 },
    #                 named_entity: {
    #                   named_entity_name: "LimitedString",
    #                 },
    #               },
    #             ],
    #             filters: [
    #               [
    #                 {
    #                   filter_type: "CATEGORY_FILTER", # accepts CATEGORY_FILTER, NUMERIC_EQUALITY_FILTER, NUMERIC_RANGE_FILTER, DATE_RANGE_FILTER, RELATIVE_DATE_FILTER, TOP_BOTTOM_FILTER, EQUALS, RANK_LIMIT_FILTER, ACCEPT_ALL_FILTER
    #                   filter_class: "ENFORCED_VALUE_FILTER", # accepts ENFORCED_VALUE_FILTER, CONDITIONAL_VALUE_FILTER, NAMED_VALUE_FILTER
    #                   operand_field: {
    #                     identity: "LimitedString", # required
    #                   },
    #                   function: "CONTAINS", # accepts CONTAINS, EXACT, STARTS_WITH, ENDS_WITH, CONTAINS_STRING, PREVIOUS, THIS, LAST, NEXT, NOW
    #                   constant: {
    #                     constant_type: "SINGULAR", # accepts SINGULAR, RANGE, COLLECTIVE
    #                     value: "ConstantValueString",
    #                     minimum: "ConstantValueString",
    #                     maximum: "ConstantValueString",
    #                     value_list: [
    #                       {
    #                         constant_type: "SINGULAR", # accepts SINGULAR, RANGE, COLLECTIVE
    #                         value: "ConstantValueString",
    #                       },
    #                     ],
    #                   },
    #                   inverse: false,
    #                   null_filter: "ALL_VALUES", # accepts ALL_VALUES, NON_NULLS_ONLY, NULLS_ONLY
    #                   aggregation: "SUM", # accepts SUM, MIN, MAX, COUNT, AVERAGE, DISTINCT_COUNT, STDEV, STDEVP, VAR, VARP, PERCENTILE, MEDIAN, PTD_SUM, PTD_MIN, PTD_MAX, PTD_COUNT, PTD_DISTINCT_COUNT, PTD_AVERAGE, COLUMN, CUSTOM
    #                   aggregation_function_parameters: {
    #                     "AggFunctionParamKey" => "AggFunctionParamValue",
    #                   },
    #                   aggregation_partition_by: [
    #                     {
    #                       field_name: "LimitedString",
    #                       time_granularity: "YEAR", # accepts YEAR, QUARTER, MONTH, WEEK, DAY, HOUR, MINUTE, SECOND, MILLISECOND
    #                     },
    #                   ],
    #                   range: {
    #                     constant_type: "SINGULAR", # accepts SINGULAR, RANGE, COLLECTIVE
    #                     value: "ConstantValueString",
    #                     minimum: "ConstantValueString",
    #                     maximum: "ConstantValueString",
    #                     value_list: [
    #                       {
    #                         constant_type: "SINGULAR", # accepts SINGULAR, RANGE, COLLECTIVE
    #                         value: "ConstantValueString",
    #                       },
    #                     ],
    #                   },
    #                   inclusive: false,
    #                   time_granularity: "YEAR", # accepts YEAR, QUARTER, MONTH, WEEK, DAY, HOUR, MINUTE, SECOND, MILLISECOND
    #                   last_next_offset: {
    #                     constant_type: "SINGULAR", # accepts SINGULAR, RANGE, COLLECTIVE
    #                     value: "ConstantValueString",
    #                     minimum: "ConstantValueString",
    #                     maximum: "ConstantValueString",
    #                     value_list: [
    #                       {
    #                         constant_type: "SINGULAR", # accepts SINGULAR, RANGE, COLLECTIVE
    #                         value: "ConstantValueString",
    #                       },
    #                     ],
    #                   },
    #                   agg_metrics: [
    #                     {
    #                       metric_operand: {
    #                         identity: "LimitedString", # required
    #                       },
    #                       function: "SUM", # accepts SUM, MIN, MAX, COUNT, AVERAGE, DISTINCT_COUNT, STDEV, STDEVP, VAR, VARP, PERCENTILE, MEDIAN, PTD_SUM, PTD_MIN, PTD_MAX, PTD_COUNT, PTD_DISTINCT_COUNT, PTD_AVERAGE, COLUMN, CUSTOM
    #                       sort_direction: "ASCENDING", # accepts ASCENDING, DESCENDING
    #                     },
    #                   ],
    #                   top_bottom_limit: {
    #                     constant_type: "SINGULAR", # accepts SINGULAR, RANGE, COLLECTIVE
    #                     value: "ConstantValueString",
    #                     minimum: "ConstantValueString",
    #                     maximum: "ConstantValueString",
    #                     value_list: [
    #                       {
    #                         constant_type: "SINGULAR", # accepts SINGULAR, RANGE, COLLECTIVE
    #                         value: "ConstantValueString",
    #                       },
    #                     ],
    #                   },
    #                   sort_direction: "ASCENDING", # accepts ASCENDING, DESCENDING
    #                   anchor: {
    #                     anchor_type: "TODAY", # accepts TODAY
    #                     time_granularity: "YEAR", # accepts YEAR, QUARTER, MONTH, WEEK, DAY, HOUR, MINUTE, SECOND, MILLISECOND
    #                     offset: 1,
    #                   },
    #                 },
    #               ],
    #             ],
    #             sort: {
    #               operand: {
    #                 identity: "LimitedString", # required
    #               },
    #               sort_direction: "ASCENDING", # accepts ASCENDING, DESCENDING
    #             },
    #             contribution_analysis: {
    #               factors: [
    #                 {
    #                   field_name: "LimitedString",
    #                 },
    #               ],
    #               time_ranges: {
    #                 start_range: {
    #                   filter_type: "CATEGORY_FILTER", # accepts CATEGORY_FILTER, NUMERIC_EQUALITY_FILTER, NUMERIC_RANGE_FILTER, DATE_RANGE_FILTER, RELATIVE_DATE_FILTER, TOP_BOTTOM_FILTER, EQUALS, RANK_LIMIT_FILTER, ACCEPT_ALL_FILTER
    #                   filter_class: "ENFORCED_VALUE_FILTER", # accepts ENFORCED_VALUE_FILTER, CONDITIONAL_VALUE_FILTER, NAMED_VALUE_FILTER
    #                   operand_field: {
    #                     identity: "LimitedString", # required
    #                   },
    #                   function: "CONTAINS", # accepts CONTAINS, EXACT, STARTS_WITH, ENDS_WITH, CONTAINS_STRING, PREVIOUS, THIS, LAST, NEXT, NOW
    #                   constant: {
    #                     constant_type: "SINGULAR", # accepts SINGULAR, RANGE, COLLECTIVE
    #                     value: "ConstantValueString",
    #                     minimum: "ConstantValueString",
    #                     maximum: "ConstantValueString",
    #                     value_list: [
    #                       {
    #                         constant_type: "SINGULAR", # accepts SINGULAR, RANGE, COLLECTIVE
    #                         value: "ConstantValueString",
    #                       },
    #                     ],
    #                   },
    #                   inverse: false,
    #                   null_filter: "ALL_VALUES", # accepts ALL_VALUES, NON_NULLS_ONLY, NULLS_ONLY
    #                   aggregation: "SUM", # accepts SUM, MIN, MAX, COUNT, AVERAGE, DISTINCT_COUNT, STDEV, STDEVP, VAR, VARP, PERCENTILE, MEDIAN, PTD_SUM, PTD_MIN, PTD_MAX, PTD_COUNT, PTD_DISTINCT_COUNT, PTD_AVERAGE, COLUMN, CUSTOM
    #                   aggregation_function_parameters: {
    #                     "AggFunctionParamKey" => "AggFunctionParamValue",
    #                   },
    #                   aggregation_partition_by: [
    #                     {
    #                       field_name: "LimitedString",
    #                       time_granularity: "YEAR", # accepts YEAR, QUARTER, MONTH, WEEK, DAY, HOUR, MINUTE, SECOND, MILLISECOND
    #                     },
    #                   ],
    #                   range: {
    #                     constant_type: "SINGULAR", # accepts SINGULAR, RANGE, COLLECTIVE
    #                     value: "ConstantValueString",
    #                     minimum: "ConstantValueString",
    #                     maximum: "ConstantValueString",
    #                     value_list: [
    #                       {
    #                         constant_type: "SINGULAR", # accepts SINGULAR, RANGE, COLLECTIVE
    #                         value: "ConstantValueString",
    #                       },
    #                     ],
    #                   },
    #                   inclusive: false,
    #                   time_granularity: "YEAR", # accepts YEAR, QUARTER, MONTH, WEEK, DAY, HOUR, MINUTE, SECOND, MILLISECOND
    #                   last_next_offset: {
    #                     constant_type: "SINGULAR", # accepts SINGULAR, RANGE, COLLECTIVE
    #                     value: "ConstantValueString",
    #                     minimum: "ConstantValueString",
    #                     maximum: "ConstantValueString",
    #                     value_list: [
    #                       {
    #                         constant_type: "SINGULAR", # accepts SINGULAR, RANGE, COLLECTIVE
    #                         value: "ConstantValueString",
    #                       },
    #                     ],
    #                   },
    #                   agg_metrics: [
    #                     {
    #                       metric_operand: {
    #                         identity: "LimitedString", # required
    #                       },
    #                       function: "SUM", # accepts SUM, MIN, MAX, COUNT, AVERAGE, DISTINCT_COUNT, STDEV, STDEVP, VAR, VARP, PERCENTILE, MEDIAN, PTD_SUM, PTD_MIN, PTD_MAX, PTD_COUNT, PTD_DISTINCT_COUNT, PTD_AVERAGE, COLUMN, CUSTOM
    #                       sort_direction: "ASCENDING", # accepts ASCENDING, DESCENDING
    #                     },
    #                   ],
    #                   top_bottom_limit: {
    #                     constant_type: "SINGULAR", # accepts SINGULAR, RANGE, COLLECTIVE
    #                     value: "ConstantValueString",
    #                     minimum: "ConstantValueString",
    #                     maximum: "ConstantValueString",
    #                     value_list: [
    #                       {
    #                         constant_type: "SINGULAR", # accepts SINGULAR, RANGE, COLLECTIVE
    #                         value: "ConstantValueString",
    #                       },
    #                     ],
    #                   },
    #                   sort_direction: "ASCENDING", # accepts ASCENDING, DESCENDING
    #                   anchor: {
    #                     anchor_type: "TODAY", # accepts TODAY
    #                     time_granularity: "YEAR", # accepts YEAR, QUARTER, MONTH, WEEK, DAY, HOUR, MINUTE, SECOND, MILLISECOND
    #                     offset: 1,
    #                   },
    #                 },
    #                 end_range: {
    #                   filter_type: "CATEGORY_FILTER", # accepts CATEGORY_FILTER, NUMERIC_EQUALITY_FILTER, NUMERIC_RANGE_FILTER, DATE_RANGE_FILTER, RELATIVE_DATE_FILTER, TOP_BOTTOM_FILTER, EQUALS, RANK_LIMIT_FILTER, ACCEPT_ALL_FILTER
    #                   filter_class: "ENFORCED_VALUE_FILTER", # accepts ENFORCED_VALUE_FILTER, CONDITIONAL_VALUE_FILTER, NAMED_VALUE_FILTER
    #                   operand_field: {
    #                     identity: "LimitedString", # required
    #                   },
    #                   function: "CONTAINS", # accepts CONTAINS, EXACT, STARTS_WITH, ENDS_WITH, CONTAINS_STRING, PREVIOUS, THIS, LAST, NEXT, NOW
    #                   constant: {
    #                     constant_type: "SINGULAR", # accepts SINGULAR, RANGE, COLLECTIVE
    #                     value: "ConstantValueString",
    #                     minimum: "ConstantValueString",
    #                     maximum: "ConstantValueString",
    #                     value_list: [
    #                       {
    #                         constant_type: "SINGULAR", # accepts SINGULAR, RANGE, COLLECTIVE
    #                         value: "ConstantValueString",
    #                       },
    #                     ],
    #                   },
    #                   inverse: false,
    #                   null_filter: "ALL_VALUES", # accepts ALL_VALUES, NON_NULLS_ONLY, NULLS_ONLY
    #                   aggregation: "SUM", # accepts SUM, MIN, MAX, COUNT, AVERAGE, DISTINCT_COUNT, STDEV, STDEVP, VAR, VARP, PERCENTILE, MEDIAN, PTD_SUM, PTD_MIN, PTD_MAX, PTD_COUNT, PTD_DISTINCT_COUNT, PTD_AVERAGE, COLUMN, CUSTOM
    #                   aggregation_function_parameters: {
    #                     "AggFunctionParamKey" => "AggFunctionParamValue",
    #                   },
    #                   aggregation_partition_by: [
    #                     {
    #                       field_name: "LimitedString",
    #                       time_granularity: "YEAR", # accepts YEAR, QUARTER, MONTH, WEEK, DAY, HOUR, MINUTE, SECOND, MILLISECOND
    #                     },
    #                   ],
    #                   range: {
    #                     constant_type: "SINGULAR", # accepts SINGULAR, RANGE, COLLECTIVE
    #                     value: "ConstantValueString",
    #                     minimum: "ConstantValueString",
    #                     maximum: "ConstantValueString",
    #                     value_list: [
    #                       {
    #                         constant_type: "SINGULAR", # accepts SINGULAR, RANGE, COLLECTIVE
    #                         value: "ConstantValueString",
    #                       },
    #                     ],
    #                   },
    #                   inclusive: false,
    #                   time_granularity: "YEAR", # accepts YEAR, QUARTER, MONTH, WEEK, DAY, HOUR, MINUTE, SECOND, MILLISECOND
    #                   last_next_offset: {
    #                     constant_type: "SINGULAR", # accepts SINGULAR, RANGE, COLLECTIVE
    #                     value: "ConstantValueString",
    #                     minimum: "ConstantValueString",
    #                     maximum: "ConstantValueString",
    #                     value_list: [
    #                       {
    #                         constant_type: "SINGULAR", # accepts SINGULAR, RANGE, COLLECTIVE
    #                         value: "ConstantValueString",
    #                       },
    #                     ],
    #                   },
    #                   agg_metrics: [
    #                     {
    #                       metric_operand: {
    #                         identity: "LimitedString", # required
    #                       },
    #                       function: "SUM", # accepts SUM, MIN, MAX, COUNT, AVERAGE, DISTINCT_COUNT, STDEV, STDEVP, VAR, VARP, PERCENTILE, MEDIAN, PTD_SUM, PTD_MIN, PTD_MAX, PTD_COUNT, PTD_DISTINCT_COUNT, PTD_AVERAGE, COLUMN, CUSTOM
    #                       sort_direction: "ASCENDING", # accepts ASCENDING, DESCENDING
    #                     },
    #                   ],
    #                   top_bottom_limit: {
    #                     constant_type: "SINGULAR", # accepts SINGULAR, RANGE, COLLECTIVE
    #                     value: "ConstantValueString",
    #                     minimum: "ConstantValueString",
    #                     maximum: "ConstantValueString",
    #                     value_list: [
    #                       {
    #                         constant_type: "SINGULAR", # accepts SINGULAR, RANGE, COLLECTIVE
    #                         value: "ConstantValueString",
    #                       },
    #                     ],
    #                   },
    #                   sort_direction: "ASCENDING", # accepts ASCENDING, DESCENDING
    #                   anchor: {
    #                     anchor_type: "TODAY", # accepts TODAY
    #                     time_granularity: "YEAR", # accepts YEAR, QUARTER, MONTH, WEEK, DAY, HOUR, MINUTE, SECOND, MILLISECOND
    #                     offset: 1,
    #                   },
    #                 },
    #               },
    #               direction: "INCREASE", # accepts INCREASE, DECREASE, NEUTRAL
    #               sort_type: "ABSOLUTE_DIFFERENCE", # accepts ABSOLUTE_DIFFERENCE, CONTRIBUTION_PERCENTAGE, DEVIATION_FROM_EXPECTED, PERCENTAGE_DIFFERENCE
    #             },
    #             visual: {
    #               type: "LimitedString",
    #             },
    #           },
    #           supporting_visuals: [
    #             {
    #               # recursive TopicVisual
    #             },
    #           ],
    #         },
    #         template: {
    #           template_type: "LimitedString",
    #           slots: [
    #             {
    #               slot_id: "LimitedString",
    #               visual_id: "LimitedString",
    #             },
    #           ],
    #         },
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.topic_id #=> String
    #   resp.topic_arn #=> String
    #   resp.succeeded_answers #=> Array
    #   resp.succeeded_answers[0].answer_id #=> String
    #   resp.invalid_answers #=> Array
    #   resp.invalid_answers[0].answer_id #=> String
    #   resp.invalid_answers[0].error #=> String, one of "INTERNAL_ERROR", "MISSING_ANSWER", "DATASET_DOES_NOT_EXIST", "INVALID_DATASET_ARN", "DUPLICATED_ANSWER", "INVALID_DATA", "MISSING_REQUIRED_FIELDS"
    #   resp.status #=> Integer
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/BatchCreateTopicReviewedAnswer AWS API Documentation
    #
    # @overload batch_create_topic_reviewed_answer(params = {})
    # @param [Hash] params ({})
    def batch_create_topic_reviewed_answer(params = {}, options = {})
      req = build_request(:batch_create_topic_reviewed_answer, params)
      req.send_request(options)
    end

    # Deletes reviewed answers for Q Topic.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that you want to delete a
    #   reviewed answers in.
    #
    # @option params [required, String] :topic_id
    #   The ID for the topic reviewed answer that you want to delete. This ID
    #   is unique per Amazon Web Services Region for each Amazon Web Services
    #   account.
    #
    # @option params [Array<String>] :answer_ids
    #   The Answer IDs of the Answers to be deleted.
    #
    # @return [Types::BatchDeleteTopicReviewedAnswerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchDeleteTopicReviewedAnswerResponse#topic_id #topic_id} => String
    #   * {Types::BatchDeleteTopicReviewedAnswerResponse#topic_arn #topic_arn} => String
    #   * {Types::BatchDeleteTopicReviewedAnswerResponse#succeeded_answers #succeeded_answers} => Array&lt;Types::SucceededTopicReviewedAnswer&gt;
    #   * {Types::BatchDeleteTopicReviewedAnswerResponse#invalid_answers #invalid_answers} => Array&lt;Types::InvalidTopicReviewedAnswer&gt;
    #   * {Types::BatchDeleteTopicReviewedAnswerResponse#request_id #request_id} => String
    #   * {Types::BatchDeleteTopicReviewedAnswerResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_delete_topic_reviewed_answer({
    #     aws_account_id: "AwsAccountId", # required
    #     topic_id: "TopicId", # required
    #     answer_ids: ["AnswerId"],
    #   })
    #
    # @example Response structure
    #
    #   resp.topic_id #=> String
    #   resp.topic_arn #=> String
    #   resp.succeeded_answers #=> Array
    #   resp.succeeded_answers[0].answer_id #=> String
    #   resp.invalid_answers #=> Array
    #   resp.invalid_answers[0].answer_id #=> String
    #   resp.invalid_answers[0].error #=> String, one of "INTERNAL_ERROR", "MISSING_ANSWER", "DATASET_DOES_NOT_EXIST", "INVALID_DATASET_ARN", "DUPLICATED_ANSWER", "INVALID_DATA", "MISSING_REQUIRED_FIELDS"
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/BatchDeleteTopicReviewedAnswer AWS API Documentation
    #
    # @overload batch_delete_topic_reviewed_answer(params = {})
    # @param [Hash] params ({})
    def batch_delete_topic_reviewed_answer(params = {}, options = {})
      req = build_request(:batch_delete_topic_reviewed_answer, params)
      req.send_request(options)
    end

    # Cancels an ongoing ingestion of data into SPICE.
    #
    # @option params [required, String] :aws_account_id
    #   The Amazon Web Services account ID.
    #
    # @option params [required, String] :data_set_id
    #   The ID of the dataset used in the ingestion.
    #
    # @option params [required, String] :ingestion_id
    #   An ID for the ingestion.
    #
    # @return [Types::CancelIngestionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CancelIngestionResponse#arn #arn} => String
    #   * {Types::CancelIngestionResponse#ingestion_id #ingestion_id} => String
    #   * {Types::CancelIngestionResponse#request_id #request_id} => String
    #   * {Types::CancelIngestionResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_ingestion({
    #     aws_account_id: "AwsAccountId", # required
    #     data_set_id: "String", # required
    #     ingestion_id: "IngestionId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.ingestion_id #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CancelIngestion AWS API Documentation
    #
    # @overload cancel_ingestion(params = {})
    # @param [Hash] params ({})
    def cancel_ingestion(params = {}, options = {})
      req = build_request(:cancel_ingestion, params)
      req.send_request(options)
    end

    # Creates Amazon QuickSight customizations for the current Amazon Web
    # Services Region. Currently, you can add a custom default theme by
    # using the `CreateAccountCustomization` or `UpdateAccountCustomization`
    # API operation. To further customize QuickSight by removing QuickSight
    # sample assets and videos for all new users, see [Customizing
    # QuickSight][1] in the *Amazon QuickSight User Guide.*
    #
    # You can create customizations for your Amazon Web Services account or,
    # if you specify a namespace, for a QuickSight namespace instead.
    # Customizations that apply to a namespace always override
    # customizations that apply to an Amazon Web Services account. To find
    # out which customizations apply, use the `DescribeAccountCustomization`
    # API operation.
    #
    # Before you use the `CreateAccountCustomization` API operation to add a
    # theme as the namespace default, make sure that you first share the
    # theme with the namespace. If you don't share it with the namespace,
    # the theme isn't visible to your users even if you make it the default
    # theme. To check if the theme is shared, view the current permissions
    # by using the ` DescribeThemePermissions ` API operation. To share the
    # theme, grant permissions by using the ` UpdateThemePermissions ` API
    # operation.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/quicksight/latest/user/customizing-quicksight.html
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the Amazon Web Services account that you want to customize
    #   QuickSight for.
    #
    # @option params [String] :namespace
    #   The QuickSight namespace that you want to add customizations to.
    #
    # @option params [required, Types::AccountCustomization] :account_customization
    #   The QuickSight customizations you're adding in the current Amazon Web
    #   Services Region. You can add these to an Amazon Web Services account
    #   and a QuickSight namespace.
    #
    #   For example, you can add a default theme by setting
    #   `AccountCustomization` to the midnight theme: `"AccountCustomization":
    #   { "DefaultTheme": "arn:aws:quicksight::aws:theme/MIDNIGHT" }`. Or, you
    #   can add a custom theme by specifying `"AccountCustomization": {
    #   "DefaultTheme":
    #   "arn:aws:quicksight:us-west-2:111122223333:theme/bdb844d0-0fe9-4d9d-b520-0fe602d93639"
    #   }`.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of the tags that you want to attach to this resource.
    #
    # @return [Types::CreateAccountCustomizationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAccountCustomizationResponse#arn #arn} => String
    #   * {Types::CreateAccountCustomizationResponse#aws_account_id #aws_account_id} => String
    #   * {Types::CreateAccountCustomizationResponse#namespace #namespace} => String
    #   * {Types::CreateAccountCustomizationResponse#account_customization #account_customization} => Types::AccountCustomization
    #   * {Types::CreateAccountCustomizationResponse#request_id #request_id} => String
    #   * {Types::CreateAccountCustomizationResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_account_customization({
    #     aws_account_id: "AwsAccountId", # required
    #     namespace: "Namespace",
    #     account_customization: { # required
    #       default_theme: "Arn",
    #       default_email_customization_template: "Arn",
    #     },
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
    #   resp.arn #=> String
    #   resp.aws_account_id #=> String
    #   resp.namespace #=> String
    #   resp.account_customization.default_theme #=> String
    #   resp.account_customization.default_email_customization_template #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CreateAccountCustomization AWS API Documentation
    #
    # @overload create_account_customization(params = {})
    # @param [Hash] params ({})
    def create_account_customization(params = {}, options = {})
      req = build_request(:create_account_customization, params)
      req.send_request(options)
    end

    # Creates an QuickSight account, or subscribes to QuickSight Q.
    #
    # The Amazon Web Services Region for the account is derived from what is
    # configured in the CLI or SDK.
    #
    # Before you use this operation, make sure that you can connect to an
    # existing Amazon Web Services account. If you don't have an Amazon Web
    # Services account, see [Sign up for Amazon Web Services][1] in the
    # *Amazon QuickSight User Guide*. The person who signs up for QuickSight
    # needs to have the correct Identity and Access Management (IAM)
    # permissions. For more information, see [IAM Policy Examples for
    # QuickSight][2] in the *QuickSight User Guide*.
    #
    # If your IAM policy includes both the `Subscribe` and
    # `CreateAccountSubscription` actions, make sure that both actions are
    # set to `Allow`. If either action is set to `Deny`, the `Deny` action
    # prevails and your API call fails.
    #
    # You can't pass an existing IAM role to access other Amazon Web
    # Services services using this API operation. To pass your existing IAM
    # role to QuickSight, see [Passing IAM roles to QuickSight][3] in the
    # *QuickSight User Guide*.
    #
    # You can't set default resource access on the new account from the
    # QuickSight API. Instead, add default resource access from the
    # QuickSight console. For more information about setting default
    # resource access to Amazon Web Services services, see [Setting default
    # resource access to Amazon Web Services services][4] in the *QuickSight
    # User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/quicksight/latest/user/setting-up-aws-sign-up.html
    # [2]: https://docs.aws.amazon.com/quicksight/latest/user/iam-policy-examples.html
    # [3]: https://docs.aws.amazon.com/quicksight/latest/user/security_iam_service-with-iam.html#security-create-iam-role
    # [4]: https://docs.aws.amazon.com/quicksight/latest/user/scoping-policies-defaults.html
    #
    # @option params [String] :edition
    #   The edition of QuickSight that you want your account to have.
    #   Currently, you can choose from `ENTERPRISE` or `ENTERPRISE_AND_Q`.
    #
    #   If you choose `ENTERPRISE_AND_Q`, the following parameters are
    #   required:
    #
    #   * `FirstName`
    #
    #   * `LastName`
    #
    #   * `EmailAddress`
    #
    #   * `ContactNumber`
    #
    # @option params [required, String] :authentication_method
    #   The method that you want to use to authenticate your QuickSight
    #   account.
    #
    #   If you choose `ACTIVE_DIRECTORY`, provide an `ActiveDirectoryName` and
    #   an `AdminGroup` associated with your Active Directory.
    #
    #   If you choose `IAM_IDENTITY_CENTER`, provide an `AdminGroup`
    #   associated with your IAM Identity Center account.
    #
    # @option params [required, String] :aws_account_id
    #   The Amazon Web Services account ID of the account that you're using
    #   to create your QuickSight account.
    #
    # @option params [required, String] :account_name
    #   The name of your QuickSight account. This name is unique over all of
    #   Amazon Web Services, and it appears only when users sign in. You
    #   can't change `AccountName` value after the QuickSight account is
    #   created.
    #
    # @option params [required, String] :notification_email
    #   The email address that you want QuickSight to send notifications to
    #   regarding your QuickSight account or QuickSight subscription.
    #
    # @option params [String] :active_directory_name
    #   The name of your Active Directory. This field is required if
    #   `ACTIVE_DIRECTORY` is the selected authentication method of the new
    #   QuickSight account.
    #
    # @option params [String] :realm
    #   The realm of the Active Directory that is associated with your
    #   QuickSight account. This field is required if `ACTIVE_DIRECTORY` is
    #   the selected authentication method of the new QuickSight account.
    #
    # @option params [String] :directory_id
    #   The ID of the Active Directory that is associated with your QuickSight
    #   account.
    #
    # @option params [Array<String>] :admin_group
    #   The admin group associated with your Active Directory or IAM Identity
    #   Center account. Either this field or the `AdminProGroup` field is
    #   required if `ACTIVE_DIRECTORY` or `IAM_IDENTITY_CENTER` is the
    #   selected authentication method of the new QuickSight account.
    #
    #   For more information about using IAM Identity Center in QuickSight,
    #   see [Using IAM Identity Center with QuickSight Enterprise Edition][1]
    #   in the QuickSight User Guide. For more information about using Active
    #   Directory in QuickSight, see [Using Active Directory with QuickSight
    #   Enterprise Edition][2] in the QuickSight User Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/quicksight/latest/user/sec-identity-management-identity-center.html
    #   [2]: https://docs.aws.amazon.com/quicksight/latest/user/aws-directory-service.html
    #
    # @option params [Array<String>] :author_group
    #   The author group associated with your Active Directory or IAM Identity
    #   Center account.
    #
    #   For more information about using IAM Identity Center in QuickSight,
    #   see [Using IAM Identity Center with QuickSight Enterprise Edition][1]
    #   in the QuickSight User Guide. For more information about using Active
    #   Directory in QuickSight, see [Using Active Directory with QuickSight
    #   Enterprise Edition][2] in the QuickSight User Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/quicksight/latest/user/sec-identity-management-identity-center.html
    #   [2]: https://docs.aws.amazon.com/quicksight/latest/user/aws-directory-service.html
    #
    # @option params [Array<String>] :reader_group
    #   The reader group associated with your Active Directory or IAM Identity
    #   Center account.
    #
    #   For more information about using IAM Identity Center in QuickSight,
    #   see [Using IAM Identity Center with QuickSight Enterprise Edition][1]
    #   in the QuickSight User Guide. For more information about using Active
    #   Directory in QuickSight, see [Using Active Directory with QuickSight
    #   Enterprise Edition][2] in the QuickSight User Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/quicksight/latest/user/sec-identity-management-identity-center.html
    #   [2]: https://docs.aws.amazon.com/quicksight/latest/user/aws-directory-service.html
    #
    # @option params [Array<String>] :admin_pro_group
    #   The admin pro group associated with your Active Directory or IAM
    #   Identity Center account. Either this field or the `AdminGroup` field
    #   is required if `ACTIVE_DIRECTORY` or `IAM_IDENTITY_CENTER` is the
    #   selected authentication method of the new QuickSight account.
    #
    #   For more information about using IAM Identity Center in QuickSight,
    #   see [Using IAM Identity Center with QuickSight Enterprise Edition][1]
    #   in the QuickSight User Guide. For more information about using Active
    #   Directory in QuickSight, see [Using Active Directory with QuickSight
    #   Enterprise Edition][2] in the QuickSight User Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/quicksight/latest/user/sec-identity-management-identity-center.html
    #   [2]: https://docs.aws.amazon.com/quicksight/latest/user/aws-directory-service.html
    #
    # @option params [Array<String>] :author_pro_group
    #   The author pro group associated with your Active Directory or IAM
    #   Identity Center account.
    #
    #   For more information about using IAM Identity Center in QuickSight,
    #   see [Using IAM Identity Center with QuickSight Enterprise Edition][1]
    #   in the QuickSight User Guide. For more information about using Active
    #   Directory in QuickSight, see [Using Active Directory with QuickSight
    #   Enterprise Edition][2] in the QuickSight User Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/quicksight/latest/user/sec-identity-management-identity-center.html
    #   [2]: https://docs.aws.amazon.com/quicksight/latest/user/aws-directory-service.html
    #
    # @option params [Array<String>] :reader_pro_group
    #   The reader pro group associated with your Active Directory or IAM
    #   Identity Center account.
    #
    #   For more information about using IAM Identity Center in QuickSight,
    #   see [Using IAM Identity Center with QuickSight Enterprise Edition][1]
    #   in the QuickSight User Guide. For more information about using Active
    #   Directory in QuickSight, see [Using Active Directory with QuickSight
    #   Enterprise Edition][2] in the QuickSight User Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/quicksight/latest/user/sec-identity-management-identity-center.html
    #   [2]: https://docs.aws.amazon.com/quicksight/latest/user/aws-directory-service.html
    #
    # @option params [String] :first_name
    #   The first name of the author of the QuickSight account to use for
    #   future communications. This field is required if `ENTERPPRISE_AND_Q`
    #   is the selected edition of the new QuickSight account.
    #
    # @option params [String] :last_name
    #   The last name of the author of the QuickSight account to use for
    #   future communications. This field is required if `ENTERPPRISE_AND_Q`
    #   is the selected edition of the new QuickSight account.
    #
    # @option params [String] :email_address
    #   The email address of the author of the QuickSight account to use for
    #   future communications. This field is required if `ENTERPPRISE_AND_Q`
    #   is the selected edition of the new QuickSight account.
    #
    # @option params [String] :contact_number
    #   A 10-digit phone number for the author of the QuickSight account to
    #   use for future communications. This field is required if
    #   `ENTERPPRISE_AND_Q` is the selected edition of the new QuickSight
    #   account.
    #
    # @option params [String] :iam_identity_center_instance_arn
    #   The Amazon Resource Name (ARN) for the IAM Identity Center instance.
    #
    # @return [Types::CreateAccountSubscriptionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAccountSubscriptionResponse#signup_response #signup_response} => Types::SignupResponse
    #   * {Types::CreateAccountSubscriptionResponse#status #status} => Integer
    #   * {Types::CreateAccountSubscriptionResponse#request_id #request_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_account_subscription({
    #     edition: "STANDARD", # accepts STANDARD, ENTERPRISE, ENTERPRISE_AND_Q
    #     authentication_method: "IAM_AND_QUICKSIGHT", # required, accepts IAM_AND_QUICKSIGHT, IAM_ONLY, ACTIVE_DIRECTORY, IAM_IDENTITY_CENTER
    #     aws_account_id: "AwsAccountId", # required
    #     account_name: "AccountName", # required
    #     notification_email: "String", # required
    #     active_directory_name: "String",
    #     realm: "String",
    #     directory_id: "String",
    #     admin_group: ["String"],
    #     author_group: ["String"],
    #     reader_group: ["String"],
    #     admin_pro_group: ["String"],
    #     author_pro_group: ["String"],
    #     reader_pro_group: ["String"],
    #     first_name: "String",
    #     last_name: "String",
    #     email_address: "String",
    #     contact_number: "String",
    #     iam_identity_center_instance_arn: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.signup_response.iam_user #=> Boolean
    #   resp.signup_response.user_login_name #=> String
    #   resp.signup_response.account_name #=> String
    #   resp.signup_response.directory_type #=> String
    #   resp.status #=> Integer
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CreateAccountSubscription AWS API Documentation
    #
    # @overload create_account_subscription(params = {})
    # @param [Hash] params ({})
    def create_account_subscription(params = {}, options = {})
      req = build_request(:create_account_subscription, params)
      req.send_request(options)
    end

    # Creates an analysis in Amazon QuickSight. Analyses can be created
    # either from a template or from an `AnalysisDefinition`.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account where you are creating an
    #   analysis.
    #
    # @option params [required, String] :analysis_id
    #   The ID for the analysis that you're creating. This ID displays in the
    #   URL of the analysis.
    #
    # @option params [required, String] :name
    #   A descriptive name for the analysis that you're creating. This name
    #   displays for the analysis in the QuickSight console.
    #
    # @option params [Types::Parameters] :parameters
    #   The parameter names and override values that you want to use. An
    #   analysis can have any parameter type, and some parameters might accept
    #   multiple values.
    #
    # @option params [Array<Types::ResourcePermission>] :permissions
    #   A structure that describes the principals and the resource-level
    #   permissions on an analysis. You can use the `Permissions` structure to
    #   grant permissions by providing a list of Identity and Access
    #   Management (IAM) action information for each principal listed by
    #   Amazon Resource Name (ARN).
    #
    #   To specify no permissions, omit `Permissions`.
    #
    # @option params [Types::AnalysisSourceEntity] :source_entity
    #   A source entity to use for the analysis that you're creating. This
    #   metadata structure contains details that describe a source template
    #   and one or more datasets.
    #
    #   Either a `SourceEntity` or a `Definition` must be provided in order
    #   for the request to be valid.
    #
    # @option params [String] :theme_arn
    #   The ARN for the theme to apply to the analysis that you're creating.
    #   To see the theme in the QuickSight console, make sure that you have
    #   access to it.
    #
    # @option params [Array<Types::Tag>] :tags
    #   Contains a map of the key-value pairs for the resource tag or tags
    #   assigned to the analysis.
    #
    # @option params [Types::AnalysisDefinition] :definition
    #   The definition of an analysis.
    #
    #   A definition is the data model of all features in a Dashboard,
    #   Template, or Analysis.
    #
    #   Either a `SourceEntity` or a `Definition` must be provided in order
    #   for the request to be valid.
    #
    # @option params [Types::ValidationStrategy] :validation_strategy
    #   The option to relax the validation needed to create an analysis with
    #   definition objects. This skips the validation step for specific
    #   errors.
    #
    # @option params [Array<String>] :folder_arns
    #   When you create the analysis, QuickSight adds the analysis to these
    #   folders.
    #
    # @return [Types::CreateAnalysisResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAnalysisResponse#arn #arn} => String
    #   * {Types::CreateAnalysisResponse#analysis_id #analysis_id} => String
    #   * {Types::CreateAnalysisResponse#creation_status #creation_status} => String
    #   * {Types::CreateAnalysisResponse#status #status} => Integer
    #   * {Types::CreateAnalysisResponse#request_id #request_id} => String
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.analysis_id #=> String
    #   resp.creation_status #=> String, one of "CREATION_IN_PROGRESS", "CREATION_SUCCESSFUL", "CREATION_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_SUCCESSFUL", "UPDATE_FAILED", "DELETED"
    #   resp.status #=> Integer
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CreateAnalysis AWS API Documentation
    #
    # @overload create_analysis(params = {})
    # @param [Hash] params ({})
    def create_analysis(params = {}, options = {})
      req = build_request(:create_analysis, params)
      req.send_request(options)
    end

    # Creates an QuickSight brand.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that owns the brand.
    #
    # @option params [required, String] :brand_id
    #   The ID of the QuickSight brand.
    #
    # @option params [Types::BrandDefinition] :brand_definition
    #   The definition of the brand.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A map of the key-value pairs that are assigned to the brand.
    #
    # @return [Types::CreateBrandResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateBrandResponse#request_id #request_id} => String
    #   * {Types::CreateBrandResponse#brand_detail #brand_detail} => Types::BrandDetail
    #   * {Types::CreateBrandResponse#brand_definition #brand_definition} => Types::BrandDefinition
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_brand({
    #     aws_account_id: "AwsAccountId", # required
    #     brand_id: "ShortRestrictiveResourceId", # required
    #     brand_definition: {
    #       brand_name: "Name", # required
    #       description: "Description",
    #       application_theme: {
    #         brand_color_palette: {
    #           primary: {
    #             foreground: "HexColor",
    #             background: "HexColor",
    #           },
    #           secondary: {
    #             foreground: "HexColor",
    #             background: "HexColor",
    #           },
    #           accent: {
    #             foreground: "HexColor",
    #             background: "HexColor",
    #           },
    #           measure: {
    #             foreground: "HexColor",
    #             background: "HexColor",
    #           },
    #           dimension: {
    #             foreground: "HexColor",
    #             background: "HexColor",
    #           },
    #           success: {
    #             foreground: "HexColor",
    #             background: "HexColor",
    #           },
    #           info: {
    #             foreground: "HexColor",
    #             background: "HexColor",
    #           },
    #           warning: {
    #             foreground: "HexColor",
    #             background: "HexColor",
    #           },
    #           danger: {
    #             foreground: "HexColor",
    #             background: "HexColor",
    #           },
    #         },
    #         brand_element_style: {
    #           navbar_style: {
    #             global_navbar: {
    #               foreground: "HexColor",
    #               background: "HexColor",
    #             },
    #             contextual_navbar: {
    #               foreground: "HexColor",
    #               background: "HexColor",
    #             },
    #           },
    #         },
    #       },
    #       logo_configuration: {
    #         alt_text: "String", # required
    #         logo_set: { # required
    #           primary: { # required
    #             original: { # required
    #               source: {
    #                 public_url: "String",
    #                 s3_uri: "String",
    #               },
    #             },
    #           },
    #           favicon: {
    #             original: { # required
    #               source: {
    #                 public_url: "String",
    #                 s3_uri: "String",
    #               },
    #             },
    #           },
    #         },
    #       },
    #     },
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
    #   resp.request_id #=> String
    #   resp.brand_detail.brand_id #=> String
    #   resp.brand_detail.arn #=> String
    #   resp.brand_detail.brand_status #=> String, one of "CREATE_IN_PROGRESS", "CREATE_SUCCEEDED", "CREATE_FAILED", "DELETE_IN_PROGRESS", "DELETE_FAILED"
    #   resp.brand_detail.created_time #=> Time
    #   resp.brand_detail.last_updated_time #=> Time
    #   resp.brand_detail.version_id #=> String
    #   resp.brand_detail.version_status #=> String, one of "CREATE_IN_PROGRESS", "CREATE_SUCCEEDED", "CREATE_FAILED"
    #   resp.brand_detail.errors #=> Array
    #   resp.brand_detail.errors[0] #=> String
    #   resp.brand_detail.logo.alt_text #=> String
    #   resp.brand_detail.logo.logo_set.primary.original.source.public_url #=> String
    #   resp.brand_detail.logo.logo_set.primary.original.source.s3_uri #=> String
    #   resp.brand_detail.logo.logo_set.primary.original.generated_image_url #=> String
    #   resp.brand_detail.logo.logo_set.primary.height_64.source.public_url #=> String
    #   resp.brand_detail.logo.logo_set.primary.height_64.source.s3_uri #=> String
    #   resp.brand_detail.logo.logo_set.primary.height_64.generated_image_url #=> String
    #   resp.brand_detail.logo.logo_set.primary.height_32.source.public_url #=> String
    #   resp.brand_detail.logo.logo_set.primary.height_32.source.s3_uri #=> String
    #   resp.brand_detail.logo.logo_set.primary.height_32.generated_image_url #=> String
    #   resp.brand_detail.logo.logo_set.favicon.original.source.public_url #=> String
    #   resp.brand_detail.logo.logo_set.favicon.original.source.s3_uri #=> String
    #   resp.brand_detail.logo.logo_set.favicon.original.generated_image_url #=> String
    #   resp.brand_detail.logo.logo_set.favicon.height_64.source.public_url #=> String
    #   resp.brand_detail.logo.logo_set.favicon.height_64.source.s3_uri #=> String
    #   resp.brand_detail.logo.logo_set.favicon.height_64.generated_image_url #=> String
    #   resp.brand_detail.logo.logo_set.favicon.height_32.source.public_url #=> String
    #   resp.brand_detail.logo.logo_set.favicon.height_32.source.s3_uri #=> String
    #   resp.brand_detail.logo.logo_set.favicon.height_32.generated_image_url #=> String
    #   resp.brand_definition.brand_name #=> String
    #   resp.brand_definition.description #=> String
    #   resp.brand_definition.application_theme.brand_color_palette.primary.foreground #=> String
    #   resp.brand_definition.application_theme.brand_color_palette.primary.background #=> String
    #   resp.brand_definition.application_theme.brand_color_palette.secondary.foreground #=> String
    #   resp.brand_definition.application_theme.brand_color_palette.secondary.background #=> String
    #   resp.brand_definition.application_theme.brand_color_palette.accent.foreground #=> String
    #   resp.brand_definition.application_theme.brand_color_palette.accent.background #=> String
    #   resp.brand_definition.application_theme.brand_color_palette.measure.foreground #=> String
    #   resp.brand_definition.application_theme.brand_color_palette.measure.background #=> String
    #   resp.brand_definition.application_theme.brand_color_palette.dimension.foreground #=> String
    #   resp.brand_definition.application_theme.brand_color_palette.dimension.background #=> String
    #   resp.brand_definition.application_theme.brand_color_palette.success.foreground #=> String
    #   resp.brand_definition.application_theme.brand_color_palette.success.background #=> String
    #   resp.brand_definition.application_theme.brand_color_palette.info.foreground #=> String
    #   resp.brand_definition.application_theme.brand_color_palette.info.background #=> String
    #   resp.brand_definition.application_theme.brand_color_palette.warning.foreground #=> String
    #   resp.brand_definition.application_theme.brand_color_palette.warning.background #=> String
    #   resp.brand_definition.application_theme.brand_color_palette.danger.foreground #=> String
    #   resp.brand_definition.application_theme.brand_color_palette.danger.background #=> String
    #   resp.brand_definition.application_theme.brand_element_style.navbar_style.global_navbar.foreground #=> String
    #   resp.brand_definition.application_theme.brand_element_style.navbar_style.global_navbar.background #=> String
    #   resp.brand_definition.application_theme.brand_element_style.navbar_style.contextual_navbar.foreground #=> String
    #   resp.brand_definition.application_theme.brand_element_style.navbar_style.contextual_navbar.background #=> String
    #   resp.brand_definition.logo_configuration.alt_text #=> String
    #   resp.brand_definition.logo_configuration.logo_set.primary.original.source.public_url #=> String
    #   resp.brand_definition.logo_configuration.logo_set.primary.original.source.s3_uri #=> String
    #   resp.brand_definition.logo_configuration.logo_set.favicon.original.source.public_url #=> String
    #   resp.brand_definition.logo_configuration.logo_set.favicon.original.source.s3_uri #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CreateBrand AWS API Documentation
    #
    # @overload create_brand(params = {})
    # @param [Hash] params ({})
    def create_brand(params = {}, options = {})
      req = build_request(:create_brand, params)
      req.send_request(options)
    end

    # Creates a custom permissions profile.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that you want to create the
    #   custom permissions profile in.
    #
    # @option params [required, String] :custom_permissions_name
    #   The name of the custom permissions profile that you want to create.
    #
    # @option params [Types::Capabilities] :capabilities
    #   A set of actions to include in the custom permissions profile.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tags to associate with the custom permissions profile.
    #
    # @return [Types::CreateCustomPermissionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateCustomPermissionsResponse#status #status} => Integer
    #   * {Types::CreateCustomPermissionsResponse#arn #arn} => String
    #   * {Types::CreateCustomPermissionsResponse#request_id #request_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_custom_permissions({
    #     aws_account_id: "AwsAccountId", # required
    #     custom_permissions_name: "CustomPermissionsName", # required
    #     capabilities: {
    #       export_to_csv: "DENY", # accepts DENY
    #       export_to_excel: "DENY", # accepts DENY
    #       export_to_pdf: "DENY", # accepts DENY
    #       print_reports: "DENY", # accepts DENY
    #       create_and_update_themes: "DENY", # accepts DENY
    #       add_or_run_anomaly_detection_for_analyses: "DENY", # accepts DENY
    #       share_analyses: "DENY", # accepts DENY
    #       create_and_update_datasets: "DENY", # accepts DENY
    #       share_datasets: "DENY", # accepts DENY
    #       subscribe_dashboard_email_reports: "DENY", # accepts DENY
    #       create_and_update_dashboard_email_reports: "DENY", # accepts DENY
    #       share_dashboards: "DENY", # accepts DENY
    #       create_and_update_threshold_alerts: "DENY", # accepts DENY
    #       rename_shared_folders: "DENY", # accepts DENY
    #       create_shared_folders: "DENY", # accepts DENY
    #       create_and_update_data_sources: "DENY", # accepts DENY
    #       share_data_sources: "DENY", # accepts DENY
    #       view_account_spice_capacity: "DENY", # accepts DENY
    #       create_spice_dataset: "DENY", # accepts DENY
    #       export_to_pdf_in_scheduled_reports: "DENY", # accepts DENY
    #       export_to_csv_in_scheduled_reports: "DENY", # accepts DENY
    #       export_to_excel_in_scheduled_reports: "DENY", # accepts DENY
    #       include_content_in_scheduled_reports_email: "DENY", # accepts DENY
    #       dashboard: "DENY", # accepts DENY
    #       analysis: "DENY", # accepts DENY
    #     },
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
    #   resp.status #=> Integer
    #   resp.arn #=> String
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CreateCustomPermissions AWS API Documentation
    #
    # @overload create_custom_permissions(params = {})
    # @param [Hash] params ({})
    def create_custom_permissions(params = {}, options = {})
      req = build_request(:create_custom_permissions, params)
      req.send_request(options)
    end

    # Creates a dashboard from either a template or directly with a
    # `DashboardDefinition`. To first create a template, see the `
    # CreateTemplate ` API operation.
    #
    # A dashboard is an entity in QuickSight that identifies QuickSight
    # reports, created from analyses. You can share QuickSight dashboards.
    # With the right permissions, you can create scheduled email reports
    # from them. If you have the correct permissions, you can create a
    # dashboard from a template that exists in a different Amazon Web
    # Services account.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account where you want to create the
    #   dashboard.
    #
    # @option params [required, String] :dashboard_id
    #   The ID for the dashboard, also added to the IAM policy.
    #
    # @option params [required, String] :name
    #   The display name of the dashboard.
    #
    # @option params [Types::Parameters] :parameters
    #   The parameters for the creation of the dashboard, which you want to
    #   use to override the default settings. A dashboard can have any type of
    #   parameters, and some parameters might accept multiple values.
    #
    # @option params [Array<Types::ResourcePermission>] :permissions
    #   A structure that contains the permissions of the dashboard. You can
    #   use this structure for granting permissions by providing a list of IAM
    #   action information for each principal ARN.
    #
    #   To specify no permissions, omit the permissions list.
    #
    # @option params [Types::DashboardSourceEntity] :source_entity
    #   The entity that you are using as a source when you create the
    #   dashboard. In `SourceEntity`, you specify the type of object you're
    #   using as source. You can only create a dashboard from a template, so
    #   you use a `SourceTemplate` entity. If you need to create a dashboard
    #   from an analysis, first convert the analysis to a template by using
    #   the ` CreateTemplate ` API operation. For `SourceTemplate`, specify
    #   the Amazon Resource Name (ARN) of the source template. The
    #   `SourceTemplate`ARN can contain any Amazon Web Services account and
    #   any QuickSight-supported Amazon Web Services Region.
    #
    #   Use the `DataSetReferences` entity within `SourceTemplate` to list the
    #   replacement datasets for the placeholders listed in the original. The
    #   schema in each dataset must match its placeholder.
    #
    #   Either a `SourceEntity` or a `Definition` must be provided in order
    #   for the request to be valid.
    #
    # @option params [Array<Types::Tag>] :tags
    #   Contains a map of the key-value pairs for the resource tag or tags
    #   assigned to the dashboard.
    #
    # @option params [String] :version_description
    #   A description for the first version of the dashboard being created.
    #
    # @option params [Types::DashboardPublishOptions] :dashboard_publish_options
    #   Options for publishing the dashboard when you create it:
    #
    #   * `AvailabilityStatus` for `AdHocFilteringOption` - This status can be
    #     either `ENABLED` or `DISABLED`. When this is set to `DISABLED`,
    #     QuickSight disables the left filter pane on the published dashboard,
    #     which can be used for ad hoc (one-time) filtering. This option is
    #     `ENABLED` by default.
    #
    #   * `AvailabilityStatus` for `ExportToCSVOption` - This status can be
    #     either `ENABLED` or `DISABLED`. The visual option to export data to
    #     .CSV format isn't enabled when this is set to `DISABLED`. This
    #     option is `ENABLED` by default.
    #
    #   * `VisibilityState` for `SheetControlsOption` - This visibility state
    #     can be either `COLLAPSED` or `EXPANDED`. This option is `COLLAPSED`
    #     by default.
    #
    #   * `AvailabilityStatus` for `ExecutiveSummaryOption` - This status can
    #     be either `ENABLED` or `DISABLED`. The option to build an executive
    #     summary is disabled when this is set to `DISABLED`. This option is
    #     `ENABLED` by default.
    #
    #   * `AvailabilityStatus` for `DataStoriesSharingOption` - This status
    #     can be either `ENABLED` or `DISABLED`. The option to share a data
    #     story is disabled when this is set to `DISABLED`. This option is
    #     `ENABLED` by default.
    #
    # @option params [String] :theme_arn
    #   The Amazon Resource Name (ARN) of the theme that is being used for
    #   this dashboard. If you add a value for this field, it overrides the
    #   value that is used in the source entity. The theme ARN must exist in
    #   the same Amazon Web Services account where you create the dashboard.
    #
    # @option params [Types::DashboardVersionDefinition] :definition
    #   The definition of a dashboard.
    #
    #   A definition is the data model of all features in a Dashboard,
    #   Template, or Analysis.
    #
    #   Either a `SourceEntity` or a `Definition` must be provided in order
    #   for the request to be valid.
    #
    # @option params [Types::ValidationStrategy] :validation_strategy
    #   The option to relax the validation needed to create a dashboard with
    #   definition objects. This option skips the validation step for specific
    #   errors.
    #
    # @option params [Array<String>] :folder_arns
    #   When you create the dashboard, QuickSight adds the dashboard to these
    #   folders.
    #
    # @option params [Types::LinkSharingConfiguration] :link_sharing_configuration
    #   A structure that contains the permissions of a shareable link to the
    #   dashboard.
    #
    # @option params [Array<String>] :link_entities
    #   A list of analysis Amazon Resource Names (ARNs) to be linked to the
    #   dashboard.
    #
    # @return [Types::CreateDashboardResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDashboardResponse#arn #arn} => String
    #   * {Types::CreateDashboardResponse#version_arn #version_arn} => String
    #   * {Types::CreateDashboardResponse#dashboard_id #dashboard_id} => String
    #   * {Types::CreateDashboardResponse#creation_status #creation_status} => String
    #   * {Types::CreateDashboardResponse#status #status} => Integer
    #   * {Types::CreateDashboardResponse#request_id #request_id} => String
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.version_arn #=> String
    #   resp.dashboard_id #=> String
    #   resp.creation_status #=> String, one of "CREATION_IN_PROGRESS", "CREATION_SUCCESSFUL", "CREATION_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_SUCCESSFUL", "UPDATE_FAILED", "DELETED"
    #   resp.status #=> Integer
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CreateDashboard AWS API Documentation
    #
    # @overload create_dashboard(params = {})
    # @param [Hash] params ({})
    def create_dashboard(params = {}, options = {})
      req = build_request(:create_dashboard, params)
      req.send_request(options)
    end

    # Creates a dataset. This operation doesn't support datasets that
    # include uploaded files as a source.
    #
    # @option params [required, String] :aws_account_id
    #   The Amazon Web Services account ID.
    #
    # @option params [required, String] :data_set_id
    #   An ID for the dataset that you want to create. This ID is unique per
    #   Amazon Web Services Region for each Amazon Web Services account.
    #
    # @option params [required, String] :name
    #   The display name for the dataset.
    #
    # @option params [required, Hash<String,Types::PhysicalTable>] :physical_table_map
    #   Declares the physical tables that are available in the underlying data
    #   sources.
    #
    # @option params [Hash<String,Types::LogicalTable>] :logical_table_map
    #   Configures the combination and transformation of the data from the
    #   physical tables.
    #
    # @option params [required, String] :import_mode
    #   Indicates whether you want to import the data into SPICE.
    #
    # @option params [Array<Types::ColumnGroup>] :column_groups
    #   Groupings of columns that work together in certain QuickSight
    #   features. Currently, only geospatial hierarchy is supported.
    #
    # @option params [Hash<String,Types::FieldFolder>] :field_folders
    #   The folder that contains fields and nested subfolders for your
    #   dataset.
    #
    # @option params [Array<Types::ResourcePermission>] :permissions
    #   A list of resource permissions on the dataset.
    #
    # @option params [Types::RowLevelPermissionDataSet] :row_level_permission_data_set
    #   The row-level security configuration for the data that you want to
    #   create.
    #
    # @option params [Types::RowLevelPermissionTagConfiguration] :row_level_permission_tag_configuration
    #   The configuration of tags on a dataset to set row-level security.
    #   Row-level security tags are currently supported for anonymous
    #   embedding only.
    #
    # @option params [Array<Types::ColumnLevelPermissionRule>] :column_level_permission_rules
    #   A set of one or more definitions of a ` ColumnLevelPermissionRule `.
    #
    # @option params [Array<Types::Tag>] :tags
    #   Contains a map of the key-value pairs for the resource tag or tags
    #   assigned to the dataset.
    #
    # @option params [Types::DataSetUsageConfiguration] :data_set_usage_configuration
    #   The usage configuration to apply to child datasets that reference this
    #   dataset as a source.
    #
    # @option params [Array<Types::DatasetParameter>] :dataset_parameters
    #   The parameter declarations of the dataset.
    #
    # @option params [Array<String>] :folder_arns
    #   When you create the dataset, QuickSight adds the dataset to these
    #   folders.
    #
    # @option params [Types::PerformanceConfiguration] :performance_configuration
    #   The configuration for the performance optimization of the dataset that
    #   contains a `UniqueKey` configuration.
    #
    # @option params [String] :use_as
    #   The usage of the dataset. `RLS_RULES` must be specified for RLS
    #   permission datasets.
    #
    # @return [Types::CreateDataSetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDataSetResponse#arn #arn} => String
    #   * {Types::CreateDataSetResponse#data_set_id #data_set_id} => String
    #   * {Types::CreateDataSetResponse#ingestion_arn #ingestion_arn} => String
    #   * {Types::CreateDataSetResponse#ingestion_id #ingestion_id} => String
    #   * {Types::CreateDataSetResponse#request_id #request_id} => String
    #   * {Types::CreateDataSetResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_data_set({
    #     aws_account_id: "AwsAccountId", # required
    #     data_set_id: "ResourceId", # required
    #     name: "ResourceName", # required
    #     physical_table_map: { # required
    #       "PhysicalTableId" => {
    #         relational_table: {
    #           data_source_arn: "Arn", # required
    #           catalog: "RelationalTableCatalog",
    #           schema: "RelationalTableSchema",
    #           name: "RelationalTableName", # required
    #           input_columns: [ # required
    #             {
    #               name: "ColumnName", # required
    #               type: "STRING", # required, accepts STRING, INTEGER, DECIMAL, DATETIME, BIT, BOOLEAN, JSON
    #               sub_type: "FLOAT", # accepts FLOAT, FIXED
    #             },
    #           ],
    #         },
    #         custom_sql: {
    #           data_source_arn: "Arn", # required
    #           name: "CustomSqlName", # required
    #           sql_query: "SqlQuery", # required
    #           columns: [
    #             {
    #               name: "ColumnName", # required
    #               type: "STRING", # required, accepts STRING, INTEGER, DECIMAL, DATETIME, BIT, BOOLEAN, JSON
    #               sub_type: "FLOAT", # accepts FLOAT, FIXED
    #             },
    #           ],
    #         },
    #         s3_source: {
    #           data_source_arn: "Arn", # required
    #           upload_settings: {
    #             format: "CSV", # accepts CSV, TSV, CLF, ELF, XLSX, JSON
    #             start_from_row: 1,
    #             contains_header: false,
    #             text_qualifier: "DOUBLE_QUOTE", # accepts DOUBLE_QUOTE, SINGLE_QUOTE
    #             delimiter: "Delimiter",
    #           },
    #           input_columns: [ # required
    #             {
    #               name: "ColumnName", # required
    #               type: "STRING", # required, accepts STRING, INTEGER, DECIMAL, DATETIME, BIT, BOOLEAN, JSON
    #               sub_type: "FLOAT", # accepts FLOAT, FIXED
    #             },
    #           ],
    #         },
    #       },
    #     },
    #     logical_table_map: {
    #       "LogicalTableId" => {
    #         alias: "LogicalTableAlias", # required
    #         data_transforms: [
    #           {
    #             project_operation: {
    #               projected_columns: ["String"], # required
    #             },
    #             filter_operation: {
    #               condition_expression: "Expression", # required
    #             },
    #             create_columns_operation: {
    #               columns: [ # required
    #                 {
    #                   column_name: "ColumnName", # required
    #                   column_id: "ColumnId", # required
    #                   expression: "DataSetCalculatedFieldExpression", # required
    #                 },
    #               ],
    #             },
    #             rename_column_operation: {
    #               column_name: "ColumnName", # required
    #               new_column_name: "ColumnName", # required
    #             },
    #             cast_column_type_operation: {
    #               column_name: "ColumnName", # required
    #               new_column_type: "STRING", # required, accepts STRING, INTEGER, DECIMAL, DATETIME
    #               sub_type: "FLOAT", # accepts FLOAT, FIXED
    #               format: "TypeCastFormat",
    #             },
    #             tag_column_operation: {
    #               column_name: "ColumnName", # required
    #               tags: [ # required
    #                 {
    #                   column_geographic_role: "COUNTRY", # accepts COUNTRY, STATE, COUNTY, CITY, POSTCODE, LONGITUDE, LATITUDE
    #                   column_description: {
    #                     text: "ColumnDescriptiveText",
    #                   },
    #                 },
    #               ],
    #             },
    #             untag_column_operation: {
    #               column_name: "ColumnName", # required
    #               tag_names: ["COLUMN_GEOGRAPHIC_ROLE"], # required, accepts COLUMN_GEOGRAPHIC_ROLE, COLUMN_DESCRIPTION
    #             },
    #             override_dataset_parameter_operation: {
    #               parameter_name: "DatasetParameterName", # required
    #               new_parameter_name: "DatasetParameterName",
    #               new_default_values: {
    #                 string_static_values: ["StringDatasetParameterDefaultValue"],
    #                 decimal_static_values: [1.0],
    #                 date_time_static_values: [Time.now],
    #                 integer_static_values: [1],
    #               },
    #             },
    #           },
    #         ],
    #         source: { # required
    #           join_instruction: {
    #             left_operand: "LogicalTableId", # required
    #             right_operand: "LogicalTableId", # required
    #             left_join_key_properties: {
    #               unique_key: false,
    #             },
    #             right_join_key_properties: {
    #               unique_key: false,
    #             },
    #             type: "INNER", # required, accepts INNER, OUTER, LEFT, RIGHT
    #             on_clause: "OnClause", # required
    #           },
    #           physical_table_id: "PhysicalTableId",
    #           data_set_arn: "Arn",
    #         },
    #       },
    #     },
    #     import_mode: "SPICE", # required, accepts SPICE, DIRECT_QUERY
    #     column_groups: [
    #       {
    #         geo_spatial_column_group: {
    #           name: "ColumnGroupName", # required
    #           country_code: "US", # accepts US
    #           columns: ["ColumnName"], # required
    #         },
    #       },
    #     ],
    #     field_folders: {
    #       "FieldFolderPath" => {
    #         description: "FieldFolderDescription",
    #         columns: ["String"],
    #       },
    #     },
    #     permissions: [
    #       {
    #         principal: "Principal", # required
    #         actions: ["String"], # required
    #       },
    #     ],
    #     row_level_permission_data_set: {
    #       namespace: "Namespace",
    #       arn: "Arn", # required
    #       permission_policy: "GRANT_ACCESS", # required, accepts GRANT_ACCESS, DENY_ACCESS
    #       format_version: "VERSION_1", # accepts VERSION_1, VERSION_2
    #       status: "ENABLED", # accepts ENABLED, DISABLED
    #     },
    #     row_level_permission_tag_configuration: {
    #       status: "ENABLED", # accepts ENABLED, DISABLED
    #       tag_rules: [ # required
    #         {
    #           tag_key: "SessionTagKey", # required
    #           column_name: "String", # required
    #           tag_multi_value_delimiter: "RowLevelPermissionTagDelimiter",
    #           match_all_value: "SessionTagValue",
    #         },
    #       ],
    #       tag_rule_configurations: [
    #         ["SessionTagKey"],
    #       ],
    #     },
    #     column_level_permission_rules: [
    #       {
    #         principals: ["String"],
    #         column_names: ["String"],
    #       },
    #     ],
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     data_set_usage_configuration: {
    #       disable_use_as_direct_query_source: false,
    #       disable_use_as_imported_source: false,
    #     },
    #     dataset_parameters: [
    #       {
    #         string_dataset_parameter: {
    #           id: "DatasetParameterId", # required
    #           name: "DatasetParameterName", # required
    #           value_type: "MULTI_VALUED", # required, accepts MULTI_VALUED, SINGLE_VALUED
    #           default_values: {
    #             static_values: ["StringDatasetParameterDefaultValue"],
    #           },
    #         },
    #         decimal_dataset_parameter: {
    #           id: "DatasetParameterId", # required
    #           name: "DatasetParameterName", # required
    #           value_type: "MULTI_VALUED", # required, accepts MULTI_VALUED, SINGLE_VALUED
    #           default_values: {
    #             static_values: [1.0],
    #           },
    #         },
    #         integer_dataset_parameter: {
    #           id: "DatasetParameterId", # required
    #           name: "DatasetParameterName", # required
    #           value_type: "MULTI_VALUED", # required, accepts MULTI_VALUED, SINGLE_VALUED
    #           default_values: {
    #             static_values: [1],
    #           },
    #         },
    #         date_time_dataset_parameter: {
    #           id: "DatasetParameterId", # required
    #           name: "DatasetParameterName", # required
    #           value_type: "MULTI_VALUED", # required, accepts MULTI_VALUED, SINGLE_VALUED
    #           time_granularity: "YEAR", # accepts YEAR, QUARTER, MONTH, WEEK, DAY, HOUR, MINUTE, SECOND, MILLISECOND
    #           default_values: {
    #             static_values: [Time.now],
    #           },
    #         },
    #       },
    #     ],
    #     folder_arns: ["Arn"],
    #     performance_configuration: {
    #       unique_keys: [
    #         {
    #           column_names: ["ColumnName"], # required
    #         },
    #       ],
    #     },
    #     use_as: "RLS_RULES", # accepts RLS_RULES
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.data_set_id #=> String
    #   resp.ingestion_arn #=> String
    #   resp.ingestion_id #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CreateDataSet AWS API Documentation
    #
    # @overload create_data_set(params = {})
    # @param [Hash] params ({})
    def create_data_set(params = {}, options = {})
      req = build_request(:create_data_set, params)
      req.send_request(options)
    end

    # Creates a data source.
    #
    # @option params [required, String] :aws_account_id
    #   The Amazon Web Services account ID.
    #
    # @option params [required, String] :data_source_id
    #   An ID for the data source. This ID is unique per Amazon Web Services
    #   Region for each Amazon Web Services account.
    #
    # @option params [required, String] :name
    #   A display name for the data source.
    #
    # @option params [required, String] :type
    #   The type of the data source. To return a list of all data sources, use
    #   `ListDataSources`.
    #
    #   Use `AMAZON_ELASTICSEARCH` for Amazon OpenSearch Service.
    #
    # @option params [Types::DataSourceParameters] :data_source_parameters
    #   The parameters that QuickSight uses to connect to your underlying
    #   source.
    #
    # @option params [Types::DataSourceCredentials] :credentials
    #   The credentials QuickSight that uses to connect to your underlying
    #   source. Currently, only credentials based on user name and password
    #   are supported.
    #
    # @option params [Array<Types::ResourcePermission>] :permissions
    #   A list of resource permissions on the data source.
    #
    # @option params [Types::VpcConnectionProperties] :vpc_connection_properties
    #   Use this parameter only when you want QuickSight to use a VPC
    #   connection when connecting to your underlying source.
    #
    # @option params [Types::SslProperties] :ssl_properties
    #   Secure Socket Layer (SSL) properties that apply when QuickSight
    #   connects to your underlying source.
    #
    # @option params [Array<Types::Tag>] :tags
    #   Contains a map of the key-value pairs for the resource tag or tags
    #   assigned to the data source.
    #
    # @option params [Array<String>] :folder_arns
    #   When you create the data source, QuickSight adds the data source to
    #   these folders.
    #
    # @return [Types::CreateDataSourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDataSourceResponse#arn #arn} => String
    #   * {Types::CreateDataSourceResponse#data_source_id #data_source_id} => String
    #   * {Types::CreateDataSourceResponse#creation_status #creation_status} => String
    #   * {Types::CreateDataSourceResponse#request_id #request_id} => String
    #   * {Types::CreateDataSourceResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_data_source({
    #     aws_account_id: "AwsAccountId", # required
    #     data_source_id: "ResourceId", # required
    #     name: "ResourceName", # required
    #     type: "ADOBE_ANALYTICS", # required, accepts ADOBE_ANALYTICS, AMAZON_ELASTICSEARCH, ATHENA, AURORA, AURORA_POSTGRESQL, AWS_IOT_ANALYTICS, GITHUB, JIRA, MARIADB, MYSQL, ORACLE, POSTGRESQL, PRESTO, REDSHIFT, S3, SALESFORCE, SERVICENOW, SNOWFLAKE, SPARK, SQLSERVER, TERADATA, TWITTER, TIMESTREAM, AMAZON_OPENSEARCH, EXASOL, DATABRICKS, STARBURST, TRINO, BIGQUERY, GOOGLESHEETS
    #     data_source_parameters: {
    #       amazon_elasticsearch_parameters: {
    #         domain: "Domain", # required
    #       },
    #       athena_parameters: {
    #         work_group: "WorkGroup",
    #         role_arn: "RoleArn",
    #         identity_center_configuration: {
    #           enable_identity_propagation: false,
    #         },
    #       },
    #       aurora_parameters: {
    #         host: "Host", # required
    #         port: 1, # required
    #         database: "Database", # required
    #       },
    #       aurora_postgre_sql_parameters: {
    #         host: "Host", # required
    #         port: 1, # required
    #         database: "Database", # required
    #       },
    #       aws_iot_analytics_parameters: {
    #         data_set_name: "DataSetName", # required
    #       },
    #       jira_parameters: {
    #         site_base_url: "SiteBaseUrl", # required
    #       },
    #       maria_db_parameters: {
    #         host: "Host", # required
    #         port: 1, # required
    #         database: "Database", # required
    #       },
    #       my_sql_parameters: {
    #         host: "Host", # required
    #         port: 1, # required
    #         database: "Database", # required
    #       },
    #       oracle_parameters: {
    #         host: "Host", # required
    #         port: 1, # required
    #         database: "Database", # required
    #         use_service_name: false,
    #       },
    #       postgre_sql_parameters: {
    #         host: "Host", # required
    #         port: 1, # required
    #         database: "Database", # required
    #       },
    #       presto_parameters: {
    #         host: "Host", # required
    #         port: 1, # required
    #         catalog: "Catalog", # required
    #       },
    #       rds_parameters: {
    #         instance_id: "InstanceId", # required
    #         database: "Database", # required
    #       },
    #       redshift_parameters: {
    #         host: "Host",
    #         port: 1,
    #         database: "Database", # required
    #         cluster_id: "ClusterId",
    #         iam_parameters: {
    #           role_arn: "RoleArn", # required
    #           database_user: "DatabaseUser",
    #           database_groups: ["DatabaseGroup"],
    #           auto_create_database_user: false,
    #         },
    #         identity_center_configuration: {
    #           enable_identity_propagation: false,
    #         },
    #       },
    #       s3_parameters: {
    #         manifest_file_location: { # required
    #           bucket: "S3Bucket", # required
    #           key: "S3Key", # required
    #         },
    #         role_arn: "RoleArn",
    #       },
    #       service_now_parameters: {
    #         site_base_url: "SiteBaseUrl", # required
    #       },
    #       snowflake_parameters: {
    #         host: "Host", # required
    #         database: "Database", # required
    #         warehouse: "Warehouse", # required
    #         authentication_type: "PASSWORD", # accepts PASSWORD, TOKEN, X509
    #         database_access_control_role: "DatabaseAccessControlRole",
    #         o_auth_parameters: {
    #           token_provider_url: "TokenProviderUrl", # required
    #           o_auth_scope: "OAuthScope",
    #           identity_provider_vpc_connection_properties: {
    #             vpc_connection_arn: "Arn", # required
    #           },
    #           identity_provider_resource_uri: "IdentityProviderResourceUri",
    #         },
    #       },
    #       spark_parameters: {
    #         host: "Host", # required
    #         port: 1, # required
    #       },
    #       sql_server_parameters: {
    #         host: "Host", # required
    #         port: 1, # required
    #         database: "Database", # required
    #       },
    #       teradata_parameters: {
    #         host: "Host", # required
    #         port: 1, # required
    #         database: "Database", # required
    #       },
    #       twitter_parameters: {
    #         query: "Query", # required
    #         max_rows: 1, # required
    #       },
    #       amazon_open_search_parameters: {
    #         domain: "Domain", # required
    #       },
    #       exasol_parameters: {
    #         host: "Host", # required
    #         port: 1, # required
    #       },
    #       databricks_parameters: {
    #         host: "Host", # required
    #         port: 1, # required
    #         sql_endpoint_path: "SqlEndpointPath", # required
    #       },
    #       starburst_parameters: {
    #         host: "Host", # required
    #         port: 1, # required
    #         catalog: "Catalog", # required
    #         product_type: "GALAXY", # accepts GALAXY, ENTERPRISE
    #         database_access_control_role: "DatabaseAccessControlRole",
    #         authentication_type: "PASSWORD", # accepts PASSWORD, TOKEN, X509
    #         o_auth_parameters: {
    #           token_provider_url: "TokenProviderUrl", # required
    #           o_auth_scope: "OAuthScope",
    #           identity_provider_vpc_connection_properties: {
    #             vpc_connection_arn: "Arn", # required
    #           },
    #           identity_provider_resource_uri: "IdentityProviderResourceUri",
    #         },
    #       },
    #       trino_parameters: {
    #         host: "Host", # required
    #         port: 1, # required
    #         catalog: "Catalog", # required
    #       },
    #       big_query_parameters: {
    #         project_id: "ProjectId", # required
    #         data_set_region: "DataSetRegion",
    #       },
    #       impala_parameters: {
    #         host: "Host", # required
    #         port: 1, # required
    #         database: "Database",
    #         sql_endpoint_path: "SqlEndpointPath", # required
    #       },
    #       custom_connection_parameters: {
    #         connection_type: "String",
    #       },
    #     },
    #     credentials: {
    #       credential_pair: {
    #         username: "DbUsername", # required
    #         password: "Password", # required
    #         alternate_data_source_parameters: [
    #           {
    #             amazon_elasticsearch_parameters: {
    #               domain: "Domain", # required
    #             },
    #             athena_parameters: {
    #               work_group: "WorkGroup",
    #               role_arn: "RoleArn",
    #               identity_center_configuration: {
    #                 enable_identity_propagation: false,
    #               },
    #             },
    #             aurora_parameters: {
    #               host: "Host", # required
    #               port: 1, # required
    #               database: "Database", # required
    #             },
    #             aurora_postgre_sql_parameters: {
    #               host: "Host", # required
    #               port: 1, # required
    #               database: "Database", # required
    #             },
    #             aws_iot_analytics_parameters: {
    #               data_set_name: "DataSetName", # required
    #             },
    #             jira_parameters: {
    #               site_base_url: "SiteBaseUrl", # required
    #             },
    #             maria_db_parameters: {
    #               host: "Host", # required
    #               port: 1, # required
    #               database: "Database", # required
    #             },
    #             my_sql_parameters: {
    #               host: "Host", # required
    #               port: 1, # required
    #               database: "Database", # required
    #             },
    #             oracle_parameters: {
    #               host: "Host", # required
    #               port: 1, # required
    #               database: "Database", # required
    #               use_service_name: false,
    #             },
    #             postgre_sql_parameters: {
    #               host: "Host", # required
    #               port: 1, # required
    #               database: "Database", # required
    #             },
    #             presto_parameters: {
    #               host: "Host", # required
    #               port: 1, # required
    #               catalog: "Catalog", # required
    #             },
    #             rds_parameters: {
    #               instance_id: "InstanceId", # required
    #               database: "Database", # required
    #             },
    #             redshift_parameters: {
    #               host: "Host",
    #               port: 1,
    #               database: "Database", # required
    #               cluster_id: "ClusterId",
    #               iam_parameters: {
    #                 role_arn: "RoleArn", # required
    #                 database_user: "DatabaseUser",
    #                 database_groups: ["DatabaseGroup"],
    #                 auto_create_database_user: false,
    #               },
    #               identity_center_configuration: {
    #                 enable_identity_propagation: false,
    #               },
    #             },
    #             s3_parameters: {
    #               manifest_file_location: { # required
    #                 bucket: "S3Bucket", # required
    #                 key: "S3Key", # required
    #               },
    #               role_arn: "RoleArn",
    #             },
    #             service_now_parameters: {
    #               site_base_url: "SiteBaseUrl", # required
    #             },
    #             snowflake_parameters: {
    #               host: "Host", # required
    #               database: "Database", # required
    #               warehouse: "Warehouse", # required
    #               authentication_type: "PASSWORD", # accepts PASSWORD, TOKEN, X509
    #               database_access_control_role: "DatabaseAccessControlRole",
    #               o_auth_parameters: {
    #                 token_provider_url: "TokenProviderUrl", # required
    #                 o_auth_scope: "OAuthScope",
    #                 identity_provider_vpc_connection_properties: {
    #                   vpc_connection_arn: "Arn", # required
    #                 },
    #                 identity_provider_resource_uri: "IdentityProviderResourceUri",
    #               },
    #             },
    #             spark_parameters: {
    #               host: "Host", # required
    #               port: 1, # required
    #             },
    #             sql_server_parameters: {
    #               host: "Host", # required
    #               port: 1, # required
    #               database: "Database", # required
    #             },
    #             teradata_parameters: {
    #               host: "Host", # required
    #               port: 1, # required
    #               database: "Database", # required
    #             },
    #             twitter_parameters: {
    #               query: "Query", # required
    #               max_rows: 1, # required
    #             },
    #             amazon_open_search_parameters: {
    #               domain: "Domain", # required
    #             },
    #             exasol_parameters: {
    #               host: "Host", # required
    #               port: 1, # required
    #             },
    #             databricks_parameters: {
    #               host: "Host", # required
    #               port: 1, # required
    #               sql_endpoint_path: "SqlEndpointPath", # required
    #             },
    #             starburst_parameters: {
    #               host: "Host", # required
    #               port: 1, # required
    #               catalog: "Catalog", # required
    #               product_type: "GALAXY", # accepts GALAXY, ENTERPRISE
    #               database_access_control_role: "DatabaseAccessControlRole",
    #               authentication_type: "PASSWORD", # accepts PASSWORD, TOKEN, X509
    #               o_auth_parameters: {
    #                 token_provider_url: "TokenProviderUrl", # required
    #                 o_auth_scope: "OAuthScope",
    #                 identity_provider_vpc_connection_properties: {
    #                   vpc_connection_arn: "Arn", # required
    #                 },
    #                 identity_provider_resource_uri: "IdentityProviderResourceUri",
    #               },
    #             },
    #             trino_parameters: {
    #               host: "Host", # required
    #               port: 1, # required
    #               catalog: "Catalog", # required
    #             },
    #             big_query_parameters: {
    #               project_id: "ProjectId", # required
    #               data_set_region: "DataSetRegion",
    #             },
    #             impala_parameters: {
    #               host: "Host", # required
    #               port: 1, # required
    #               database: "Database",
    #               sql_endpoint_path: "SqlEndpointPath", # required
    #             },
    #             custom_connection_parameters: {
    #               connection_type: "String",
    #             },
    #           },
    #         ],
    #       },
    #       copy_source_arn: "CopySourceArn",
    #       secret_arn: "SecretArn",
    #     },
    #     permissions: [
    #       {
    #         principal: "Principal", # required
    #         actions: ["String"], # required
    #       },
    #     ],
    #     vpc_connection_properties: {
    #       vpc_connection_arn: "Arn", # required
    #     },
    #     ssl_properties: {
    #       disable_ssl: false,
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     folder_arns: ["Arn"],
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.data_source_id #=> String
    #   resp.creation_status #=> String, one of "CREATION_IN_PROGRESS", "CREATION_SUCCESSFUL", "CREATION_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_SUCCESSFUL", "UPDATE_FAILED", "DELETED"
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CreateDataSource AWS API Documentation
    #
    # @overload create_data_source(params = {})
    # @param [Hash] params ({})
    def create_data_source(params = {}, options = {})
      req = build_request(:create_data_source, params)
      req.send_request(options)
    end

    # Creates an empty shared folder.
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the Amazon Web Services account where you want to create
    #   the folder.
    #
    # @option params [required, String] :folder_id
    #   The ID of the folder.
    #
    # @option params [String] :name
    #   The name of the folder.
    #
    # @option params [String] :folder_type
    #   The type of folder. By default, `folderType` is `SHARED`.
    #
    # @option params [String] :parent_folder_arn
    #   The Amazon Resource Name (ARN) for the parent folder.
    #
    #   `ParentFolderArn` can be null. An empty `parentFolderArn` creates a
    #   root-level folder.
    #
    # @option params [Array<Types::ResourcePermission>] :permissions
    #   A structure that describes the principals and the resource-level
    #   permissions of a folder.
    #
    #   To specify no permissions, omit `Permissions`.
    #
    # @option params [Array<Types::Tag>] :tags
    #   Tags for the folder.
    #
    # @option params [String] :sharing_model
    #   An optional parameter that determines the sharing scope of the folder.
    #   The default value for this parameter is `ACCOUNT`.
    #
    # @return [Types::CreateFolderResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateFolderResponse#status #status} => Integer
    #   * {Types::CreateFolderResponse#arn #arn} => String
    #   * {Types::CreateFolderResponse#folder_id #folder_id} => String
    #   * {Types::CreateFolderResponse#request_id #request_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_folder({
    #     aws_account_id: "AwsAccountId", # required
    #     folder_id: "RestrictiveResourceId", # required
    #     name: "FolderName",
    #     folder_type: "SHARED", # accepts SHARED, RESTRICTED
    #     parent_folder_arn: "Arn",
    #     permissions: [
    #       {
    #         principal: "Principal", # required
    #         actions: ["String"], # required
    #       },
    #     ],
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     sharing_model: "ACCOUNT", # accepts ACCOUNT, NAMESPACE
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> Integer
    #   resp.arn #=> String
    #   resp.folder_id #=> String
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CreateFolder AWS API Documentation
    #
    # @overload create_folder(params = {})
    # @param [Hash] params ({})
    def create_folder(params = {}, options = {})
      req = build_request(:create_folder, params)
      req.send_request(options)
    end

    # Adds an asset, such as a dashboard, analysis, or dataset into a
    # folder.
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the Amazon Web Services account that contains the folder.
    #
    # @option params [required, String] :folder_id
    #   The ID of the folder.
    #
    # @option params [required, String] :member_id
    #   The ID of the asset that you want to add to the folder.
    #
    # @option params [required, String] :member_type
    #   The member type of the asset that you want to add to a folder.
    #
    # @return [Types::CreateFolderMembershipResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateFolderMembershipResponse#status #status} => Integer
    #   * {Types::CreateFolderMembershipResponse#folder_member #folder_member} => Types::FolderMember
    #   * {Types::CreateFolderMembershipResponse#request_id #request_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_folder_membership({
    #     aws_account_id: "AwsAccountId", # required
    #     folder_id: "RestrictiveResourceId", # required
    #     member_id: "RestrictiveResourceId", # required
    #     member_type: "DASHBOARD", # required, accepts DASHBOARD, ANALYSIS, DATASET, DATASOURCE, TOPIC
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> Integer
    #   resp.folder_member.member_id #=> String
    #   resp.folder_member.member_type #=> String, one of "DASHBOARD", "ANALYSIS", "DATASET", "DATASOURCE", "TOPIC"
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CreateFolderMembership AWS API Documentation
    #
    # @overload create_folder_membership(params = {})
    # @param [Hash] params ({})
    def create_folder_membership(params = {}, options = {})
      req = build_request(:create_folder_membership, params)
      req.send_request(options)
    end

    # Use the `CreateGroup` operation to create a group in QuickSight. You
    # can create up to 10,000 groups in a namespace. If you want to create
    # more than 10,000 groups in a namespace, contact Amazon Web Services
    # Support.
    #
    # The permissions resource is
    # `arn:aws:quicksight:<your-region>:<relevant-aws-account-id>:group/default/<group-name>
    # `.
    #
    # The response is a group object.
    #
    # @option params [required, String] :group_name
    #   A name for the group that you want to create.
    #
    # @option params [String] :description
    #   A description for the group that you want to create.
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the Amazon Web Services account that the group is in.
    #   Currently, you use the ID for the Amazon Web Services account that
    #   contains your Amazon QuickSight account.
    #
    # @option params [required, String] :namespace
    #   The namespace that you want the group to be a part of.
    #
    # @return [Types::CreateGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateGroupResponse#group #group} => Types::Group
    #   * {Types::CreateGroupResponse#request_id #request_id} => String
    #   * {Types::CreateGroupResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_group({
    #     group_name: "GroupName", # required
    #     description: "GroupDescription",
    #     aws_account_id: "AwsAccountId", # required
    #     namespace: "Namespace", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.group.arn #=> String
    #   resp.group.group_name #=> String
    #   resp.group.description #=> String
    #   resp.group.principal_id #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CreateGroup AWS API Documentation
    #
    # @overload create_group(params = {})
    # @param [Hash] params ({})
    def create_group(params = {}, options = {})
      req = build_request(:create_group, params)
      req.send_request(options)
    end

    # Adds an Amazon QuickSight user to an Amazon QuickSight group.
    #
    # @option params [required, String] :member_name
    #   The name of the user that you want to add to the group membership.
    #
    # @option params [required, String] :group_name
    #   The name of the group that you want to add the user to.
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the Amazon Web Services account that the group is in.
    #   Currently, you use the ID for the Amazon Web Services account that
    #   contains your Amazon QuickSight account.
    #
    # @option params [required, String] :namespace
    #   The namespace that you want the user to be a part of.
    #
    # @return [Types::CreateGroupMembershipResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateGroupMembershipResponse#group_member #group_member} => Types::GroupMember
    #   * {Types::CreateGroupMembershipResponse#request_id #request_id} => String
    #   * {Types::CreateGroupMembershipResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_group_membership({
    #     member_name: "GroupMemberName", # required
    #     group_name: "GroupName", # required
    #     aws_account_id: "AwsAccountId", # required
    #     namespace: "Namespace", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.group_member.arn #=> String
    #   resp.group_member.member_name #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CreateGroupMembership AWS API Documentation
    #
    # @overload create_group_membership(params = {})
    # @param [Hash] params ({})
    def create_group_membership(params = {}, options = {})
      req = build_request(:create_group_membership, params)
      req.send_request(options)
    end

    # Creates an assignment with one specified IAM policy, identified by its
    # Amazon Resource Name (ARN). This policy assignment is attached to the
    # specified groups or users of Amazon QuickSight. Assignment names are
    # unique per Amazon Web Services account. To avoid overwriting rules in
    # other namespaces, use assignment names that are unique.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account where you want to assign an
    #   IAM policy to QuickSight users or groups.
    #
    # @option params [required, String] :assignment_name
    #   The name of the assignment, also called a rule. The name must be
    #   unique within the Amazon Web Services account.
    #
    # @option params [required, String] :assignment_status
    #   The status of the assignment. Possible values are as follows:
    #
    #   * `ENABLED` - Anything specified in this assignment is used when
    #     creating the data source.
    #
    #   * `DISABLED` - This assignment isn't used when creating the data
    #     source.
    #
    #   * `DRAFT` - This assignment is an unfinished draft and isn't used
    #     when creating the data source.
    #
    # @option params [String] :policy_arn
    #   The ARN for the IAM policy to apply to the QuickSight users and groups
    #   specified in this assignment.
    #
    # @option params [Hash<String,Array>] :identities
    #   The QuickSight users, groups, or both that you want to assign the
    #   policy to.
    #
    # @option params [required, String] :namespace
    #   The namespace that contains the assignment.
    #
    # @return [Types::CreateIAMPolicyAssignmentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateIAMPolicyAssignmentResponse#assignment_name #assignment_name} => String
    #   * {Types::CreateIAMPolicyAssignmentResponse#assignment_id #assignment_id} => String
    #   * {Types::CreateIAMPolicyAssignmentResponse#assignment_status #assignment_status} => String
    #   * {Types::CreateIAMPolicyAssignmentResponse#policy_arn #policy_arn} => String
    #   * {Types::CreateIAMPolicyAssignmentResponse#identities #identities} => Hash&lt;String,Array&lt;String&gt;&gt;
    #   * {Types::CreateIAMPolicyAssignmentResponse#request_id #request_id} => String
    #   * {Types::CreateIAMPolicyAssignmentResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_iam_policy_assignment({
    #     aws_account_id: "AwsAccountId", # required
    #     assignment_name: "IAMPolicyAssignmentName", # required
    #     assignment_status: "ENABLED", # required, accepts ENABLED, DRAFT, DISABLED
    #     policy_arn: "Arn",
    #     identities: {
    #       "String" => ["IdentityName"],
    #     },
    #     namespace: "Namespace", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.assignment_name #=> String
    #   resp.assignment_id #=> String
    #   resp.assignment_status #=> String, one of "ENABLED", "DRAFT", "DISABLED"
    #   resp.policy_arn #=> String
    #   resp.identities #=> Hash
    #   resp.identities["String"] #=> Array
    #   resp.identities["String"][0] #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CreateIAMPolicyAssignment AWS API Documentation
    #
    # @overload create_iam_policy_assignment(params = {})
    # @param [Hash] params ({})
    def create_iam_policy_assignment(params = {}, options = {})
      req = build_request(:create_iam_policy_assignment, params)
      req.send_request(options)
    end

    # Creates and starts a new SPICE ingestion for a dataset. You can
    # manually refresh datasets in an Enterprise edition account 32 times in
    # a 24-hour period. You can manually refresh datasets in a Standard
    # edition account 8 times in a 24-hour period. Each 24-hour period is
    # measured starting 24 hours before the current date and time.
    #
    # Any ingestions operating on tagged datasets inherit the same tags
    # automatically for use in access control. For an example, see [How do I
    # create an IAM policy to control access to Amazon EC2 resources using
    # tags?][1] in the Amazon Web Services Knowledge Center. Tags are
    # visible on the tagged dataset, but not on the ingestion resource.
    #
    #
    #
    # [1]: http://aws.amazon.com/premiumsupport/knowledge-center/iam-ec2-resource-tags/
    #
    # @option params [required, String] :data_set_id
    #   The ID of the dataset used in the ingestion.
    #
    # @option params [required, String] :ingestion_id
    #   An ID for the ingestion.
    #
    # @option params [required, String] :aws_account_id
    #   The Amazon Web Services account ID.
    #
    # @option params [String] :ingestion_type
    #   The type of ingestion that you want to create.
    #
    # @return [Types::CreateIngestionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateIngestionResponse#arn #arn} => String
    #   * {Types::CreateIngestionResponse#ingestion_id #ingestion_id} => String
    #   * {Types::CreateIngestionResponse#ingestion_status #ingestion_status} => String
    #   * {Types::CreateIngestionResponse#request_id #request_id} => String
    #   * {Types::CreateIngestionResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_ingestion({
    #     data_set_id: "String", # required
    #     ingestion_id: "IngestionId", # required
    #     aws_account_id: "AwsAccountId", # required
    #     ingestion_type: "INCREMENTAL_REFRESH", # accepts INCREMENTAL_REFRESH, FULL_REFRESH
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.ingestion_id #=> String
    #   resp.ingestion_status #=> String, one of "INITIALIZED", "QUEUED", "RUNNING", "FAILED", "COMPLETED", "CANCELLED"
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CreateIngestion AWS API Documentation
    #
    # @overload create_ingestion(params = {})
    # @param [Hash] params ({})
    def create_ingestion(params = {}, options = {})
      req = build_request(:create_ingestion, params)
      req.send_request(options)
    end

    # (Enterprise edition only) Creates a new namespace for you to use with
    # Amazon QuickSight.
    #
    # A namespace allows you to isolate the QuickSight users and groups that
    # are registered for that namespace. Users that access the namespace can
    # share assets only with other users or groups in the same namespace.
    # They can't see users and groups in other namespaces. You can create a
    # namespace after your Amazon Web Services account is subscribed to
    # QuickSight. The namespace must be unique within the Amazon Web
    # Services account. By default, there is a limit of 100 namespaces per
    # Amazon Web Services account. To increase your limit, create a ticket
    # with Amazon Web Services Support.
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the Amazon Web Services account that you want to create the
    #   QuickSight namespace in.
    #
    # @option params [required, String] :namespace
    #   The name that you want to use to describe the new namespace.
    #
    # @option params [required, String] :identity_store
    #   Specifies the type of your user identity directory. Currently, this
    #   supports users with an identity type of `QUICKSIGHT`.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tags that you want to associate with the namespace that you're
    #   creating.
    #
    # @return [Types::CreateNamespaceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateNamespaceResponse#arn #arn} => String
    #   * {Types::CreateNamespaceResponse#name #name} => String
    #   * {Types::CreateNamespaceResponse#capacity_region #capacity_region} => String
    #   * {Types::CreateNamespaceResponse#creation_status #creation_status} => String
    #   * {Types::CreateNamespaceResponse#identity_store #identity_store} => String
    #   * {Types::CreateNamespaceResponse#request_id #request_id} => String
    #   * {Types::CreateNamespaceResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_namespace({
    #     aws_account_id: "AwsAccountId", # required
    #     namespace: "Namespace", # required
    #     identity_store: "QUICKSIGHT", # required, accepts QUICKSIGHT
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
    #   resp.arn #=> String
    #   resp.name #=> String
    #   resp.capacity_region #=> String
    #   resp.creation_status #=> String, one of "CREATED", "CREATING", "DELETING", "RETRYABLE_FAILURE", "NON_RETRYABLE_FAILURE"
    #   resp.identity_store #=> String, one of "QUICKSIGHT"
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CreateNamespace AWS API Documentation
    #
    # @overload create_namespace(params = {})
    # @param [Hash] params ({})
    def create_namespace(params = {}, options = {})
      req = build_request(:create_namespace, params)
      req.send_request(options)
    end

    # Creates a refresh schedule for a dataset. You can create up to 5
    # different schedules for a single dataset.
    #
    # @option params [required, String] :data_set_id
    #   The ID of the dataset.
    #
    # @option params [required, String] :aws_account_id
    #   The Amazon Web Services account ID.
    #
    # @option params [required, Types::RefreshSchedule] :schedule
    #   The refresh schedule.
    #
    # @return [Types::CreateRefreshScheduleResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateRefreshScheduleResponse#status #status} => Integer
    #   * {Types::CreateRefreshScheduleResponse#request_id #request_id} => String
    #   * {Types::CreateRefreshScheduleResponse#schedule_id #schedule_id} => String
    #   * {Types::CreateRefreshScheduleResponse#arn #arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_refresh_schedule({
    #     data_set_id: "ResourceId", # required
    #     aws_account_id: "AwsAccountId", # required
    #     schedule: { # required
    #       schedule_id: "String", # required
    #       schedule_frequency: { # required
    #         interval: "MINUTE15", # required, accepts MINUTE15, MINUTE30, HOURLY, DAILY, WEEKLY, MONTHLY
    #         refresh_on_day: {
    #           day_of_week: "SUNDAY", # accepts SUNDAY, MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY, SATURDAY
    #           day_of_month: "DayOfMonth",
    #         },
    #         timezone: "String",
    #         time_of_the_day: "String",
    #       },
    #       start_after_date_time: Time.now,
    #       refresh_type: "INCREMENTAL_REFRESH", # required, accepts INCREMENTAL_REFRESH, FULL_REFRESH
    #       arn: "Arn",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> Integer
    #   resp.request_id #=> String
    #   resp.schedule_id #=> String
    #   resp.arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CreateRefreshSchedule AWS API Documentation
    #
    # @overload create_refresh_schedule(params = {})
    # @param [Hash] params ({})
    def create_refresh_schedule(params = {}, options = {})
      req = build_request(:create_refresh_schedule, params)
      req.send_request(options)
    end

    # Use `CreateRoleMembership` to add an existing QuickSight group to an
    # existing role.
    #
    # @option params [required, String] :member_name
    #   The name of the group that you want to add to the role.
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the Amazon Web Services account that you want to create a
    #   group in. The Amazon Web Services account ID that you provide must be
    #   the same Amazon Web Services account that contains your Amazon
    #   QuickSight account.
    #
    # @option params [required, String] :namespace
    #   The namespace that the role belongs to.
    #
    # @option params [required, String] :role
    #   The role that you want to add a group to.
    #
    # @return [Types::CreateRoleMembershipResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateRoleMembershipResponse#request_id #request_id} => String
    #   * {Types::CreateRoleMembershipResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_role_membership({
    #     member_name: "GroupName", # required
    #     aws_account_id: "AwsAccountId", # required
    #     namespace: "Namespace", # required
    #     role: "ADMIN", # required, accepts ADMIN, AUTHOR, READER, ADMIN_PRO, AUTHOR_PRO, READER_PRO
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CreateRoleMembership AWS API Documentation
    #
    # @overload create_role_membership(params = {})
    # @param [Hash] params ({})
    def create_role_membership(params = {}, options = {})
      req = build_request(:create_role_membership, params)
      req.send_request(options)
    end

    # Creates a template either from a `TemplateDefinition` or from an
    # existing QuickSight analysis or template. You can use the resulting
    # template to create additional dashboards, templates, or analyses.
    #
    # A *template* is an entity in QuickSight that encapsulates the metadata
    # required to create an analysis and that you can use to create s
    # dashboard. A template adds a layer of abstraction by using
    # placeholders to replace the dataset associated with the analysis. You
    # can use templates to create dashboards by replacing dataset
    # placeholders with datasets that follow the same schema that was used
    # to create the source analysis and template.
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the Amazon Web Services account that the group is in. You
    #   use the ID for the Amazon Web Services account that contains your
    #   Amazon QuickSight account.
    #
    # @option params [required, String] :template_id
    #   An ID for the template that you want to create. This template is
    #   unique per Amazon Web Services Region; in each Amazon Web Services
    #   account.
    #
    # @option params [String] :name
    #   A display name for the template.
    #
    # @option params [Array<Types::ResourcePermission>] :permissions
    #   A list of resource permissions to be set on the template.
    #
    # @option params [Types::TemplateSourceEntity] :source_entity
    #   The entity that you are using as a source when you create the
    #   template. In `SourceEntity`, you specify the type of object you're
    #   using as source: `SourceTemplate` for a template or `SourceAnalysis`
    #   for an analysis. Both of these require an Amazon Resource Name (ARN).
    #   For `SourceTemplate`, specify the ARN of the source template. For
    #   `SourceAnalysis`, specify the ARN of the source analysis. The
    #   `SourceTemplate` ARN can contain any Amazon Web Services account and
    #   any QuickSight-supported Amazon Web Services Region.
    #
    #   Use the `DataSetReferences` entity within `SourceTemplate` or
    #   `SourceAnalysis` to list the replacement datasets for the placeholders
    #   listed in the original. The schema in each dataset must match its
    #   placeholder.
    #
    #   Either a `SourceEntity` or a `Definition` must be provided in order
    #   for the request to be valid.
    #
    # @option params [Array<Types::Tag>] :tags
    #   Contains a map of the key-value pairs for the resource tag or tags
    #   assigned to the resource.
    #
    # @option params [String] :version_description
    #   A description of the current template version being created. This API
    #   operation creates the first version of the template. Every time
    #   `UpdateTemplate` is called, a new version is created. Each version of
    #   the template maintains a description of the version in the
    #   `VersionDescription` field.
    #
    # @option params [Types::TemplateVersionDefinition] :definition
    #   The definition of a template.
    #
    #   A definition is the data model of all features in a Dashboard,
    #   Template, or Analysis.
    #
    #   Either a `SourceEntity` or a `Definition` must be provided in order
    #   for the request to be valid.
    #
    # @option params [Types::ValidationStrategy] :validation_strategy
    #   TThe option to relax the validation needed to create a template with
    #   definition objects. This skips the validation step for specific
    #   errors.
    #
    # @return [Types::CreateTemplateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateTemplateResponse#arn #arn} => String
    #   * {Types::CreateTemplateResponse#version_arn #version_arn} => String
    #   * {Types::CreateTemplateResponse#template_id #template_id} => String
    #   * {Types::CreateTemplateResponse#creation_status #creation_status} => String
    #   * {Types::CreateTemplateResponse#status #status} => Integer
    #   * {Types::CreateTemplateResponse#request_id #request_id} => String
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.version_arn #=> String
    #   resp.template_id #=> String
    #   resp.creation_status #=> String, one of "CREATION_IN_PROGRESS", "CREATION_SUCCESSFUL", "CREATION_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_SUCCESSFUL", "UPDATE_FAILED", "DELETED"
    #   resp.status #=> Integer
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CreateTemplate AWS API Documentation
    #
    # @overload create_template(params = {})
    # @param [Hash] params ({})
    def create_template(params = {}, options = {})
      req = build_request(:create_template, params)
      req.send_request(options)
    end

    # Creates a template alias for a template.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that contains the template
    #   that you creating an alias for.
    #
    # @option params [required, String] :template_id
    #   An ID for the template.
    #
    # @option params [required, String] :alias_name
    #   The name that you want to give to the template alias that you're
    #   creating. Don't start the alias name with the `$` character. Alias
    #   names that start with `$` are reserved by QuickSight.
    #
    # @option params [required, Integer] :template_version_number
    #   The version number of the template.
    #
    # @return [Types::CreateTemplateAliasResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateTemplateAliasResponse#template_alias #template_alias} => Types::TemplateAlias
    #   * {Types::CreateTemplateAliasResponse#status #status} => Integer
    #   * {Types::CreateTemplateAliasResponse#request_id #request_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_template_alias({
    #     aws_account_id: "AwsAccountId", # required
    #     template_id: "ShortRestrictiveResourceId", # required
    #     alias_name: "AliasName", # required
    #     template_version_number: 1, # required
    #   })
    #
    # @example Response structure
    #
    #   resp.template_alias.alias_name #=> String
    #   resp.template_alias.arn #=> String
    #   resp.template_alias.template_version_number #=> Integer
    #   resp.status #=> Integer
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CreateTemplateAlias AWS API Documentation
    #
    # @overload create_template_alias(params = {})
    # @param [Hash] params ({})
    def create_template_alias(params = {}, options = {})
      req = build_request(:create_template_alias, params)
      req.send_request(options)
    end

    # Creates a theme.
    #
    # A *theme* is set of configuration options for color and layout. Themes
    # apply to analyses and dashboards. For more information, see [Using
    # Themes in Amazon QuickSight][1] in the *Amazon QuickSight User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/quicksight/latest/user/themes-in-quicksight.html
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account where you want to store the
    #   new theme.
    #
    # @option params [required, String] :theme_id
    #   An ID for the theme that you want to create. The theme ID is unique
    #   per Amazon Web Services Region in each Amazon Web Services account.
    #
    # @option params [required, String] :name
    #   A display name for the theme.
    #
    # @option params [required, String] :base_theme_id
    #   The ID of the theme that a custom theme will inherit from. All themes
    #   inherit from one of the starting themes defined by Amazon QuickSight.
    #   For a list of the starting themes, use `ListThemes` or choose
    #   **Themes** from within an analysis.
    #
    # @option params [String] :version_description
    #   A description of the first version of the theme that you're creating.
    #   Every time `UpdateTheme` is called, a new version is created. Each
    #   version of the theme has a description of the version in the
    #   `VersionDescription` field.
    #
    # @option params [required, Types::ThemeConfiguration] :configuration
    #   The theme configuration, which contains the theme display properties.
    #
    # @option params [Array<Types::ResourcePermission>] :permissions
    #   A valid grouping of resource permissions to apply to the new theme.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A map of the key-value pairs for the resource tag or tags that you
    #   want to add to the resource.
    #
    # @return [Types::CreateThemeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateThemeResponse#arn #arn} => String
    #   * {Types::CreateThemeResponse#version_arn #version_arn} => String
    #   * {Types::CreateThemeResponse#theme_id #theme_id} => String
    #   * {Types::CreateThemeResponse#creation_status #creation_status} => String
    #   * {Types::CreateThemeResponse#status #status} => Integer
    #   * {Types::CreateThemeResponse#request_id #request_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_theme({
    #     aws_account_id: "AwsAccountId", # required
    #     theme_id: "ShortRestrictiveResourceId", # required
    #     name: "ThemeName", # required
    #     base_theme_id: "ShortRestrictiveResourceId", # required
    #     version_description: "VersionDescription",
    #     configuration: { # required
    #       data_color_palette: {
    #         colors: ["HexColor"],
    #         min_max_gradient: ["HexColor"],
    #         empty_fill_color: "HexColor",
    #       },
    #       ui_color_palette: {
    #         primary_foreground: "HexColor",
    #         primary_background: "HexColor",
    #         secondary_foreground: "HexColor",
    #         secondary_background: "HexColor",
    #         accent: "HexColor",
    #         accent_foreground: "HexColor",
    #         danger: "HexColor",
    #         danger_foreground: "HexColor",
    #         warning: "HexColor",
    #         warning_foreground: "HexColor",
    #         success: "HexColor",
    #         success_foreground: "HexColor",
    #         dimension: "HexColor",
    #         dimension_foreground: "HexColor",
    #         measure: "HexColor",
    #         measure_foreground: "HexColor",
    #       },
    #       sheet: {
    #         tile: {
    #           border: {
    #             show: false,
    #           },
    #         },
    #         tile_layout: {
    #           gutter: {
    #             show: false,
    #           },
    #           margin: {
    #             show: false,
    #           },
    #         },
    #       },
    #       typography: {
    #         font_families: [
    #           {
    #             font_family: "String",
    #           },
    #         ],
    #       },
    #     },
    #     permissions: [
    #       {
    #         principal: "Principal", # required
    #         actions: ["String"], # required
    #       },
    #     ],
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
    #   resp.arn #=> String
    #   resp.version_arn #=> String
    #   resp.theme_id #=> String
    #   resp.creation_status #=> String, one of "CREATION_IN_PROGRESS", "CREATION_SUCCESSFUL", "CREATION_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_SUCCESSFUL", "UPDATE_FAILED", "DELETED"
    #   resp.status #=> Integer
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CreateTheme AWS API Documentation
    #
    # @overload create_theme(params = {})
    # @param [Hash] params ({})
    def create_theme(params = {}, options = {})
      req = build_request(:create_theme, params)
      req.send_request(options)
    end

    # Creates a theme alias for a theme.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that contains the theme for
    #   the new theme alias.
    #
    # @option params [required, String] :theme_id
    #   An ID for the theme alias.
    #
    # @option params [required, String] :alias_name
    #   The name that you want to give to the theme alias that you are
    #   creating. The alias name can't begin with a `$`. Alias names that
    #   start with `$` are reserved by Amazon QuickSight.
    #
    # @option params [required, Integer] :theme_version_number
    #   The version number of the theme.
    #
    # @return [Types::CreateThemeAliasResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateThemeAliasResponse#theme_alias #theme_alias} => Types::ThemeAlias
    #   * {Types::CreateThemeAliasResponse#status #status} => Integer
    #   * {Types::CreateThemeAliasResponse#request_id #request_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_theme_alias({
    #     aws_account_id: "AwsAccountId", # required
    #     theme_id: "ShortRestrictiveResourceId", # required
    #     alias_name: "AliasName", # required
    #     theme_version_number: 1, # required
    #   })
    #
    # @example Response structure
    #
    #   resp.theme_alias.arn #=> String
    #   resp.theme_alias.alias_name #=> String
    #   resp.theme_alias.theme_version_number #=> Integer
    #   resp.status #=> Integer
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CreateThemeAlias AWS API Documentation
    #
    # @overload create_theme_alias(params = {})
    # @param [Hash] params ({})
    def create_theme_alias(params = {}, options = {})
      req = build_request(:create_theme_alias, params)
      req.send_request(options)
    end

    # Creates a new Q topic.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that you want to create a
    #   topic in.
    #
    # @option params [required, String] :topic_id
    #   The ID for the topic that you want to create. This ID is unique per
    #   Amazon Web Services Region for each Amazon Web Services account.
    #
    # @option params [required, Types::TopicDetails] :topic
    #   The definition of a topic to create.
    #
    # @option params [Array<Types::Tag>] :tags
    #   Contains a map of the key-value pairs for the resource tag or tags
    #   that are assigned to the dataset.
    #
    # @option params [Array<String>] :folder_arns
    #   The Folder ARN of the folder that you want the topic to reside in.
    #
    # @option params [Types::CustomInstructions] :custom_instructions
    #   Custom instructions for the topic.
    #
    # @return [Types::CreateTopicResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateTopicResponse#arn #arn} => String
    #   * {Types::CreateTopicResponse#topic_id #topic_id} => String
    #   * {Types::CreateTopicResponse#refresh_arn #refresh_arn} => String
    #   * {Types::CreateTopicResponse#request_id #request_id} => String
    #   * {Types::CreateTopicResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_topic({
    #     aws_account_id: "AwsAccountId", # required
    #     topic_id: "TopicId", # required
    #     topic: { # required
    #       name: "ResourceName",
    #       description: "LimitedString",
    #       user_experience_version: "LEGACY", # accepts LEGACY, NEW_READER_EXPERIENCE
    #       data_sets: [
    #         {
    #           dataset_arn: "Arn", # required
    #           dataset_name: "LimitedString",
    #           dataset_description: "LimitedString",
    #           data_aggregation: {
    #             dataset_row_date_granularity: "SECOND", # accepts SECOND, MINUTE, HOUR, DAY, WEEK, MONTH, QUARTER, YEAR
    #             default_date_column_name: "LimitedString",
    #           },
    #           filters: [
    #             {
    #               filter_description: "LimitedString",
    #               filter_class: "ENFORCED_VALUE_FILTER", # accepts ENFORCED_VALUE_FILTER, CONDITIONAL_VALUE_FILTER, NAMED_VALUE_FILTER
    #               filter_name: "LimitedString", # required
    #               filter_synonyms: ["LimitedString"],
    #               operand_field_name: "LimitedString", # required
    #               filter_type: "CATEGORY_FILTER", # accepts CATEGORY_FILTER, NUMERIC_EQUALITY_FILTER, NUMERIC_RANGE_FILTER, DATE_RANGE_FILTER, RELATIVE_DATE_FILTER, NULL_FILTER
    #               category_filter: {
    #                 category_filter_function: "EXACT", # accepts EXACT, CONTAINS
    #                 category_filter_type: "CUSTOM_FILTER", # accepts CUSTOM_FILTER, CUSTOM_FILTER_LIST, FILTER_LIST
    #                 constant: {
    #                   constant_type: "SINGULAR", # accepts SINGULAR, RANGE, COLLECTIVE
    #                   singular_constant: "LimitedString",
    #                   collective_constant: {
    #                     value_list: ["String"],
    #                   },
    #                 },
    #                 inverse: false,
    #               },
    #               numeric_equality_filter: {
    #                 constant: {
    #                   constant_type: "SINGULAR", # accepts SINGULAR, RANGE, COLLECTIVE
    #                   singular_constant: "LimitedString",
    #                 },
    #                 aggregation: "NO_AGGREGATION", # accepts NO_AGGREGATION, SUM, AVERAGE, COUNT, DISTINCT_COUNT, MAX, MEDIAN, MIN, STDEV, STDEVP, VAR, VARP
    #               },
    #               numeric_range_filter: {
    #                 inclusive: false,
    #                 constant: {
    #                   constant_type: "SINGULAR", # accepts SINGULAR, RANGE, COLLECTIVE
    #                   range_constant: {
    #                     minimum: "LimitedString",
    #                     maximum: "LimitedString",
    #                   },
    #                 },
    #                 aggregation: "NO_AGGREGATION", # accepts NO_AGGREGATION, SUM, AVERAGE, COUNT, DISTINCT_COUNT, MAX, MEDIAN, MIN, STDEV, STDEVP, VAR, VARP
    #               },
    #               date_range_filter: {
    #                 inclusive: false,
    #                 constant: {
    #                   constant_type: "SINGULAR", # accepts SINGULAR, RANGE, COLLECTIVE
    #                   range_constant: {
    #                     minimum: "LimitedString",
    #                     maximum: "LimitedString",
    #                   },
    #                 },
    #               },
    #               relative_date_filter: {
    #                 time_granularity: "SECOND", # accepts SECOND, MINUTE, HOUR, DAY, WEEK, MONTH, QUARTER, YEAR
    #                 relative_date_filter_function: "PREVIOUS", # accepts PREVIOUS, THIS, LAST, NEXT, NOW
    #                 constant: {
    #                   constant_type: "SINGULAR", # accepts SINGULAR, RANGE, COLLECTIVE
    #                   singular_constant: "LimitedString",
    #                 },
    #               },
    #               null_filter: {
    #                 null_filter_type: "ALL_VALUES", # accepts ALL_VALUES, NON_NULLS_ONLY, NULLS_ONLY
    #                 constant: {
    #                   constant_type: "SINGULAR", # accepts SINGULAR, RANGE, COLLECTIVE
    #                   singular_constant: "LimitedString",
    #                 },
    #                 inverse: false,
    #               },
    #             },
    #           ],
    #           columns: [
    #             {
    #               column_name: "LimitedString", # required
    #               column_friendly_name: "LimitedString",
    #               column_description: "LimitedString",
    #               column_synonyms: ["LimitedString"],
    #               column_data_role: "DIMENSION", # accepts DIMENSION, MEASURE
    #               aggregation: "SUM", # accepts SUM, MAX, MIN, COUNT, DISTINCT_COUNT, AVERAGE, MEDIAN, STDEV, STDEVP, VAR, VARP
    #               is_included_in_topic: false,
    #               disable_indexing: false,
    #               comparative_order: {
    #                 use_ordering: "GREATER_IS_BETTER", # accepts GREATER_IS_BETTER, LESSER_IS_BETTER, SPECIFIED
    #                 specifed_order: ["String"],
    #                 treat_undefined_specified_values: "LEAST", # accepts LEAST, MOST
    #               },
    #               semantic_type: {
    #                 type_name: "LimitedString",
    #                 sub_type_name: "LimitedString",
    #                 type_parameters: {
    #                   "LimitedString" => "LimitedString",
    #                 },
    #                 truthy_cell_value: "SensitiveString",
    #                 truthy_cell_value_synonyms: ["SensitiveString"],
    #                 falsey_cell_value: "SensitiveString",
    #                 falsey_cell_value_synonyms: ["SensitiveString"],
    #               },
    #               time_granularity: "SECOND", # accepts SECOND, MINUTE, HOUR, DAY, WEEK, MONTH, QUARTER, YEAR
    #               allowed_aggregations: ["COUNT"], # accepts COUNT, DISTINCT_COUNT, MIN, MAX, MEDIAN, SUM, AVERAGE, STDEV, STDEVP, VAR, VARP, PERCENTILE
    #               not_allowed_aggregations: ["COUNT"], # accepts COUNT, DISTINCT_COUNT, MIN, MAX, MEDIAN, SUM, AVERAGE, STDEV, STDEVP, VAR, VARP, PERCENTILE
    #               default_formatting: {
    #                 display_format: "AUTO", # accepts AUTO, PERCENT, CURRENCY, NUMBER, DATE, STRING
    #                 display_format_options: {
    #                   use_blank_cell_format: false,
    #                   blank_cell_format: "LimitedString",
    #                   date_format: "LimitedString",
    #                   decimal_separator: "COMMA", # accepts COMMA, DOT
    #                   grouping_separator: "LimitedString",
    #                   use_grouping: false,
    #                   fraction_digits: 1,
    #                   prefix: "LimitedString",
    #                   suffix: "LimitedString",
    #                   unit_scaler: "NONE", # accepts NONE, AUTO, THOUSANDS, MILLIONS, BILLIONS, TRILLIONS, LAKHS, CRORES
    #                   negative_format: {
    #                     prefix: "LimitedString",
    #                     suffix: "LimitedString",
    #                   },
    #                   currency_symbol: "LimitedString",
    #                 },
    #               },
    #               never_aggregate_in_filter: false,
    #               cell_value_synonyms: [
    #                 {
    #                   cell_value: "LimitedString",
    #                   synonyms: ["String"],
    #                 },
    #               ],
    #               non_additive: false,
    #             },
    #           ],
    #           calculated_fields: [
    #             {
    #               calculated_field_name: "LimitedString", # required
    #               calculated_field_description: "LimitedString",
    #               expression: "Expression", # required
    #               calculated_field_synonyms: ["LimitedString"],
    #               is_included_in_topic: false,
    #               disable_indexing: false,
    #               column_data_role: "DIMENSION", # accepts DIMENSION, MEASURE
    #               time_granularity: "SECOND", # accepts SECOND, MINUTE, HOUR, DAY, WEEK, MONTH, QUARTER, YEAR
    #               default_formatting: {
    #                 display_format: "AUTO", # accepts AUTO, PERCENT, CURRENCY, NUMBER, DATE, STRING
    #                 display_format_options: {
    #                   use_blank_cell_format: false,
    #                   blank_cell_format: "LimitedString",
    #                   date_format: "LimitedString",
    #                   decimal_separator: "COMMA", # accepts COMMA, DOT
    #                   grouping_separator: "LimitedString",
    #                   use_grouping: false,
    #                   fraction_digits: 1,
    #                   prefix: "LimitedString",
    #                   suffix: "LimitedString",
    #                   unit_scaler: "NONE", # accepts NONE, AUTO, THOUSANDS, MILLIONS, BILLIONS, TRILLIONS, LAKHS, CRORES
    #                   negative_format: {
    #                     prefix: "LimitedString",
    #                     suffix: "LimitedString",
    #                   },
    #                   currency_symbol: "LimitedString",
    #                 },
    #               },
    #               aggregation: "SUM", # accepts SUM, MAX, MIN, COUNT, DISTINCT_COUNT, AVERAGE, MEDIAN, STDEV, STDEVP, VAR, VARP
    #               comparative_order: {
    #                 use_ordering: "GREATER_IS_BETTER", # accepts GREATER_IS_BETTER, LESSER_IS_BETTER, SPECIFIED
    #                 specifed_order: ["String"],
    #                 treat_undefined_specified_values: "LEAST", # accepts LEAST, MOST
    #               },
    #               semantic_type: {
    #                 type_name: "LimitedString",
    #                 sub_type_name: "LimitedString",
    #                 type_parameters: {
    #                   "LimitedString" => "LimitedString",
    #                 },
    #                 truthy_cell_value: "SensitiveString",
    #                 truthy_cell_value_synonyms: ["SensitiveString"],
    #                 falsey_cell_value: "SensitiveString",
    #                 falsey_cell_value_synonyms: ["SensitiveString"],
    #               },
    #               allowed_aggregations: ["COUNT"], # accepts COUNT, DISTINCT_COUNT, MIN, MAX, MEDIAN, SUM, AVERAGE, STDEV, STDEVP, VAR, VARP, PERCENTILE
    #               not_allowed_aggregations: ["COUNT"], # accepts COUNT, DISTINCT_COUNT, MIN, MAX, MEDIAN, SUM, AVERAGE, STDEV, STDEVP, VAR, VARP, PERCENTILE
    #               never_aggregate_in_filter: false,
    #               cell_value_synonyms: [
    #                 {
    #                   cell_value: "LimitedString",
    #                   synonyms: ["String"],
    #                 },
    #               ],
    #               non_additive: false,
    #             },
    #           ],
    #           named_entities: [
    #             {
    #               entity_name: "LimitedString", # required
    #               entity_description: "LimitedString",
    #               entity_synonyms: ["LimitedString"],
    #               semantic_entity_type: {
    #                 type_name: "LimitedString",
    #                 sub_type_name: "LimitedString",
    #                 type_parameters: {
    #                   "LimitedString" => "LimitedString",
    #                 },
    #               },
    #               definition: [
    #                 {
    #                   field_name: "LimitedString",
    #                   property_name: "LimitedString",
    #                   property_role: "PRIMARY", # accepts PRIMARY, ID
    #                   property_usage: "INHERIT", # accepts INHERIT, DIMENSION, MEASURE
    #                   metric: {
    #                     aggregation: "SUM", # accepts SUM, MIN, MAX, COUNT, AVERAGE, DISTINCT_COUNT, STDEV, STDEVP, VAR, VARP, PERCENTILE, MEDIAN, CUSTOM
    #                     aggregation_function_parameters: {
    #                       "LimitedString" => "LimitedString",
    #                     },
    #                   },
    #                 },
    #               ],
    #             },
    #           ],
    #         },
    #       ],
    #       config_options: {
    #         q_business_insights_enabled: false,
    #       },
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     folder_arns: ["Arn"],
    #     custom_instructions: {
    #       custom_instructions_string: "CustomInstructionsString", # required
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.topic_id #=> String
    #   resp.refresh_arn #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CreateTopic AWS API Documentation
    #
    # @overload create_topic(params = {})
    # @param [Hash] params ({})
    def create_topic(params = {}, options = {})
      req = build_request(:create_topic, params)
      req.send_request(options)
    end

    # Creates a topic refresh schedule.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that contains the topic
    #   you're creating a refresh schedule for.
    #
    # @option params [required, String] :topic_id
    #   The ID of the topic that you want to modify. This ID is unique per
    #   Amazon Web Services Region for each Amazon Web Services account.
    #
    # @option params [required, String] :dataset_arn
    #   The Amazon Resource Name (ARN) of the dataset.
    #
    # @option params [String] :dataset_name
    #   The name of the dataset.
    #
    # @option params [required, Types::TopicRefreshSchedule] :refresh_schedule
    #   The definition of a refresh schedule.
    #
    # @return [Types::CreateTopicRefreshScheduleResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateTopicRefreshScheduleResponse#topic_id #topic_id} => String
    #   * {Types::CreateTopicRefreshScheduleResponse#topic_arn #topic_arn} => String
    #   * {Types::CreateTopicRefreshScheduleResponse#dataset_arn #dataset_arn} => String
    #   * {Types::CreateTopicRefreshScheduleResponse#status #status} => Integer
    #   * {Types::CreateTopicRefreshScheduleResponse#request_id #request_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_topic_refresh_schedule({
    #     aws_account_id: "AwsAccountId", # required
    #     topic_id: "TopicId", # required
    #     dataset_arn: "Arn", # required
    #     dataset_name: "String",
    #     refresh_schedule: { # required
    #       is_enabled: false, # required
    #       based_on_spice_schedule: false, # required
    #       starting_at: Time.now,
    #       timezone: "LimitedString",
    #       repeat_at: "LimitedString",
    #       topic_schedule_type: "HOURLY", # accepts HOURLY, DAILY, WEEKLY, MONTHLY
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.topic_id #=> String
    #   resp.topic_arn #=> String
    #   resp.dataset_arn #=> String
    #   resp.status #=> Integer
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CreateTopicRefreshSchedule AWS API Documentation
    #
    # @overload create_topic_refresh_schedule(params = {})
    # @param [Hash] params ({})
    def create_topic_refresh_schedule(params = {}, options = {})
      req = build_request(:create_topic_refresh_schedule, params)
      req.send_request(options)
    end

    # Creates a new VPC connection.
    #
    # @option params [required, String] :aws_account_id
    #   The Amazon Web Services account ID of the account where you want to
    #   create a new VPC connection.
    #
    # @option params [required, String] :vpc_connection_id
    #   The ID of the VPC connection that you're creating. This ID is a
    #   unique identifier for each Amazon Web Services Region in an Amazon Web
    #   Services account.
    #
    # @option params [required, String] :name
    #   The display name for the VPC connection.
    #
    # @option params [required, Array<String>] :subnet_ids
    #   A list of subnet IDs for the VPC connection.
    #
    # @option params [required, Array<String>] :security_group_ids
    #   A list of security group IDs for the VPC connection.
    #
    # @option params [Array<String>] :dns_resolvers
    #   A list of IP addresses of DNS resolver endpoints for the VPC
    #   connection.
    #
    # @option params [required, String] :role_arn
    #   The IAM role to associate with the VPC connection.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A map of the key-value pairs for the resource tag or tags assigned to
    #   the VPC connection.
    #
    # @return [Types::CreateVPCConnectionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateVPCConnectionResponse#arn #arn} => String
    #   * {Types::CreateVPCConnectionResponse#vpc_connection_id #vpc_connection_id} => String
    #   * {Types::CreateVPCConnectionResponse#creation_status #creation_status} => String
    #   * {Types::CreateVPCConnectionResponse#availability_status #availability_status} => String
    #   * {Types::CreateVPCConnectionResponse#request_id #request_id} => String
    #   * {Types::CreateVPCConnectionResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_vpc_connection({
    #     aws_account_id: "AwsAccountId", # required
    #     vpc_connection_id: "VPCConnectionResourceIdRestricted", # required
    #     name: "ResourceName", # required
    #     subnet_ids: ["SubnetId"], # required
    #     security_group_ids: ["SecurityGroupId"], # required
    #     dns_resolvers: ["IPv4Address"],
    #     role_arn: "RoleArn", # required
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
    #   resp.arn #=> String
    #   resp.vpc_connection_id #=> String
    #   resp.creation_status #=> String, one of "CREATION_IN_PROGRESS", "CREATION_SUCCESSFUL", "CREATION_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_SUCCESSFUL", "UPDATE_FAILED", "DELETION_IN_PROGRESS", "DELETION_FAILED", "DELETED"
    #   resp.availability_status #=> String, one of "AVAILABLE", "UNAVAILABLE", "PARTIALLY_AVAILABLE"
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CreateVPCConnection AWS API Documentation
    #
    # @overload create_vpc_connection(params = {})
    # @param [Hash] params ({})
    def create_vpc_connection(params = {}, options = {})
      req = build_request(:create_vpc_connection, params)
      req.send_request(options)
    end

    # Unapplies a custom permissions profile from an account.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account from which you want to
    #   unapply the custom permissions profile.
    #
    # @return [Types::DeleteAccountCustomPermissionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteAccountCustomPermissionResponse#request_id #request_id} => String
    #   * {Types::DeleteAccountCustomPermissionResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_account_custom_permission({
    #     aws_account_id: "AwsAccountId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteAccountCustomPermission AWS API Documentation
    #
    # @overload delete_account_custom_permission(params = {})
    # @param [Hash] params ({})
    def delete_account_custom_permission(params = {}, options = {})
      req = build_request(:delete_account_custom_permission, params)
      req.send_request(options)
    end

    # Deletes all Amazon QuickSight customizations in this Amazon Web
    # Services Region for the specified Amazon Web Services account and
    # QuickSight namespace.
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the Amazon Web Services account that you want to delete
    #   QuickSight customizations from in this Amazon Web Services Region.
    #
    # @option params [String] :namespace
    #   The QuickSight namespace that you're deleting the customizations
    #   from.
    #
    # @return [Types::DeleteAccountCustomizationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteAccountCustomizationResponse#request_id #request_id} => String
    #   * {Types::DeleteAccountCustomizationResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_account_customization({
    #     aws_account_id: "AwsAccountId", # required
    #     namespace: "Namespace",
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteAccountCustomization AWS API Documentation
    #
    # @overload delete_account_customization(params = {})
    # @param [Hash] params ({})
    def delete_account_customization(params = {}, options = {})
      req = build_request(:delete_account_customization, params)
      req.send_request(options)
    end

    # Use the `DeleteAccountSubscription` operation to delete an QuickSight
    # account. This operation will result in an error message if you have
    # configured your account termination protection settings to `True`. To
    # change this setting and delete your account, call the
    # `UpdateAccountSettings` API and set the value of the
    # `TerminationProtectionEnabled` parameter to `False`, then make another
    # call to the `DeleteAccountSubscription` API.
    #
    # @option params [required, String] :aws_account_id
    #   The Amazon Web Services account ID of the account that you want to
    #   delete.
    #
    # @return [Types::DeleteAccountSubscriptionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteAccountSubscriptionResponse#request_id #request_id} => String
    #   * {Types::DeleteAccountSubscriptionResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_account_subscription({
    #     aws_account_id: "AwsAccountId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteAccountSubscription AWS API Documentation
    #
    # @overload delete_account_subscription(params = {})
    # @param [Hash] params ({})
    def delete_account_subscription(params = {}, options = {})
      req = build_request(:delete_account_subscription, params)
      req.send_request(options)
    end

    # Deletes an analysis from Amazon QuickSight. You can optionally include
    # a recovery window during which you can restore the analysis. If you
    # don't specify a recovery window value, the operation defaults to 30
    # days. QuickSight attaches a `DeletionTime` stamp to the response that
    # specifies the end of the recovery window. At the end of the recovery
    # window, QuickSight deletes the analysis permanently.
    #
    # At any time before recovery window ends, you can use the
    # `RestoreAnalysis` API operation to remove the `DeletionTime` stamp and
    # cancel the deletion of the analysis. The analysis remains visible in
    # the API until it's deleted, so you can describe it but you can't
    # make a template from it.
    #
    # An analysis that's scheduled for deletion isn't accessible in the
    # QuickSight console. To access it in the console, restore it. Deleting
    # an analysis doesn't delete the dashboards that you publish from it.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account where you want to delete an
    #   analysis.
    #
    # @option params [required, String] :analysis_id
    #   The ID of the analysis that you're deleting.
    #
    # @option params [Integer] :recovery_window_in_days
    #   A value that specifies the number of days that QuickSight waits before
    #   it deletes the analysis. You can't use this parameter with the
    #   `ForceDeleteWithoutRecovery` option in the same API call. The default
    #   value is 30.
    #
    # @option params [Boolean] :force_delete_without_recovery
    #   This option defaults to the value `NoForceDeleteWithoutRecovery`. To
    #   immediately delete the analysis, add the `ForceDeleteWithoutRecovery`
    #   option. You can't restore an analysis after it's deleted.
    #
    # @return [Types::DeleteAnalysisResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteAnalysisResponse#status #status} => Integer
    #   * {Types::DeleteAnalysisResponse#arn #arn} => String
    #   * {Types::DeleteAnalysisResponse#analysis_id #analysis_id} => String
    #   * {Types::DeleteAnalysisResponse#deletion_time #deletion_time} => Time
    #   * {Types::DeleteAnalysisResponse#request_id #request_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_analysis({
    #     aws_account_id: "AwsAccountId", # required
    #     analysis_id: "ShortRestrictiveResourceId", # required
    #     recovery_window_in_days: 1,
    #     force_delete_without_recovery: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> Integer
    #   resp.arn #=> String
    #   resp.analysis_id #=> String
    #   resp.deletion_time #=> Time
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteAnalysis AWS API Documentation
    #
    # @overload delete_analysis(params = {})
    # @param [Hash] params ({})
    def delete_analysis(params = {}, options = {})
      req = build_request(:delete_analysis, params)
      req.send_request(options)
    end

    # Deletes an QuickSight brand.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that owns the brand.
    #
    # @option params [required, String] :brand_id
    #   The ID of the QuickSight brand.
    #
    # @return [Types::DeleteBrandResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteBrandResponse#request_id #request_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_brand({
    #     aws_account_id: "AwsAccountId", # required
    #     brand_id: "ShortRestrictiveResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteBrand AWS API Documentation
    #
    # @overload delete_brand(params = {})
    # @param [Hash] params ({})
    def delete_brand(params = {}, options = {})
      req = build_request(:delete_brand, params)
      req.send_request(options)
    end

    # Deletes a brand assignment.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that owns the brand
    #   assignment.
    #
    # @return [Types::DeleteBrandAssignmentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteBrandAssignmentResponse#request_id #request_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_brand_assignment({
    #     aws_account_id: "AwsAccountId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteBrandAssignment AWS API Documentation
    #
    # @overload delete_brand_assignment(params = {})
    # @param [Hash] params ({})
    def delete_brand_assignment(params = {}, options = {})
      req = build_request(:delete_brand_assignment, params)
      req.send_request(options)
    end

    # Deletes a custom permissions profile.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that contains the custom
    #   permissions profile that you want to delete.
    #
    # @option params [required, String] :custom_permissions_name
    #   The name of the custom permissions profile that you want to delete.
    #
    # @return [Types::DeleteCustomPermissionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteCustomPermissionsResponse#status #status} => Integer
    #   * {Types::DeleteCustomPermissionsResponse#arn #arn} => String
    #   * {Types::DeleteCustomPermissionsResponse#request_id #request_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_custom_permissions({
    #     aws_account_id: "AwsAccountId", # required
    #     custom_permissions_name: "CustomPermissionsName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> Integer
    #   resp.arn #=> String
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteCustomPermissions AWS API Documentation
    #
    # @overload delete_custom_permissions(params = {})
    # @param [Hash] params ({})
    def delete_custom_permissions(params = {}, options = {})
      req = build_request(:delete_custom_permissions, params)
      req.send_request(options)
    end

    # Deletes a dashboard.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that contains the dashboard
    #   that you're deleting.
    #
    # @option params [required, String] :dashboard_id
    #   The ID for the dashboard.
    #
    # @option params [Integer] :version_number
    #   The version number of the dashboard. If the version number property is
    #   provided, only the specified version of the dashboard is deleted.
    #
    # @return [Types::DeleteDashboardResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteDashboardResponse#status #status} => Integer
    #   * {Types::DeleteDashboardResponse#arn #arn} => String
    #   * {Types::DeleteDashboardResponse#dashboard_id #dashboard_id} => String
    #   * {Types::DeleteDashboardResponse#request_id #request_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_dashboard({
    #     aws_account_id: "AwsAccountId", # required
    #     dashboard_id: "ShortRestrictiveResourceId", # required
    #     version_number: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> Integer
    #   resp.arn #=> String
    #   resp.dashboard_id #=> String
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteDashboard AWS API Documentation
    #
    # @overload delete_dashboard(params = {})
    # @param [Hash] params ({})
    def delete_dashboard(params = {}, options = {})
      req = build_request(:delete_dashboard, params)
      req.send_request(options)
    end

    # Deletes a dataset.
    #
    # @option params [required, String] :aws_account_id
    #   The Amazon Web Services account ID.
    #
    # @option params [required, String] :data_set_id
    #   The ID for the dataset that you want to create. This ID is unique per
    #   Amazon Web Services Region for each Amazon Web Services account.
    #
    # @return [Types::DeleteDataSetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteDataSetResponse#arn #arn} => String
    #   * {Types::DeleteDataSetResponse#data_set_id #data_set_id} => String
    #   * {Types::DeleteDataSetResponse#request_id #request_id} => String
    #   * {Types::DeleteDataSetResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_data_set({
    #     aws_account_id: "AwsAccountId", # required
    #     data_set_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.data_set_id #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteDataSet AWS API Documentation
    #
    # @overload delete_data_set(params = {})
    # @param [Hash] params ({})
    def delete_data_set(params = {}, options = {})
      req = build_request(:delete_data_set, params)
      req.send_request(options)
    end

    # Deletes the dataset refresh properties of the dataset.
    #
    # @option params [required, String] :aws_account_id
    #   The Amazon Web Services account ID.
    #
    # @option params [required, String] :data_set_id
    #   The ID of the dataset.
    #
    # @return [Types::DeleteDataSetRefreshPropertiesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteDataSetRefreshPropertiesResponse#request_id #request_id} => String
    #   * {Types::DeleteDataSetRefreshPropertiesResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_data_set_refresh_properties({
    #     aws_account_id: "AwsAccountId", # required
    #     data_set_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteDataSetRefreshProperties AWS API Documentation
    #
    # @overload delete_data_set_refresh_properties(params = {})
    # @param [Hash] params ({})
    def delete_data_set_refresh_properties(params = {}, options = {})
      req = build_request(:delete_data_set_refresh_properties, params)
      req.send_request(options)
    end

    # Deletes the data source permanently. This operation breaks all the
    # datasets that reference the deleted data source.
    #
    # @option params [required, String] :aws_account_id
    #   The Amazon Web Services account ID.
    #
    # @option params [required, String] :data_source_id
    #   The ID of the data source. This ID is unique per Amazon Web Services
    #   Region for each Amazon Web Services account.
    #
    # @return [Types::DeleteDataSourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteDataSourceResponse#arn #arn} => String
    #   * {Types::DeleteDataSourceResponse#data_source_id #data_source_id} => String
    #   * {Types::DeleteDataSourceResponse#request_id #request_id} => String
    #   * {Types::DeleteDataSourceResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_data_source({
    #     aws_account_id: "AwsAccountId", # required
    #     data_source_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.data_source_id #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteDataSource AWS API Documentation
    #
    # @overload delete_data_source(params = {})
    # @param [Hash] params ({})
    def delete_data_source(params = {}, options = {})
      req = build_request(:delete_data_source, params)
      req.send_request(options)
    end

    # Deletes a linked Amazon Q Business application from an QuickSight
    # account
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the QuickSight account that you want to disconnect from a
    #   Amazon Q Business application.
    #
    # @option params [String] :namespace
    #   The QuickSight namespace that you want to delete a linked Amazon Q
    #   Business application from. If this field is left blank, the Amazon Q
    #   Business application is deleted from the default namespace. Currently,
    #   the default namespace is the only valid value for this parameter.
    #
    # @return [Types::DeleteDefaultQBusinessApplicationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteDefaultQBusinessApplicationResponse#request_id #request_id} => String
    #   * {Types::DeleteDefaultQBusinessApplicationResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_default_q_business_application({
    #     aws_account_id: "AwsAccountId", # required
    #     namespace: "Namespace",
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteDefaultQBusinessApplication AWS API Documentation
    #
    # @overload delete_default_q_business_application(params = {})
    # @param [Hash] params ({})
    def delete_default_q_business_application(params = {}, options = {})
      req = build_request(:delete_default_q_business_application, params)
      req.send_request(options)
    end

    # Deletes an empty folder.
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the Amazon Web Services account that contains the folder.
    #
    # @option params [required, String] :folder_id
    #   The ID of the folder.
    #
    # @return [Types::DeleteFolderResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteFolderResponse#status #status} => Integer
    #   * {Types::DeleteFolderResponse#arn #arn} => String
    #   * {Types::DeleteFolderResponse#folder_id #folder_id} => String
    #   * {Types::DeleteFolderResponse#request_id #request_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_folder({
    #     aws_account_id: "AwsAccountId", # required
    #     folder_id: "RestrictiveResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> Integer
    #   resp.arn #=> String
    #   resp.folder_id #=> String
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteFolder AWS API Documentation
    #
    # @overload delete_folder(params = {})
    # @param [Hash] params ({})
    def delete_folder(params = {}, options = {})
      req = build_request(:delete_folder, params)
      req.send_request(options)
    end

    # Removes an asset, such as a dashboard, analysis, or dataset, from a
    # folder.
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the Amazon Web Services account that contains the folder.
    #
    # @option params [required, String] :folder_id
    #   The Folder ID.
    #
    # @option params [required, String] :member_id
    #   The ID of the asset that you want to delete.
    #
    # @option params [required, String] :member_type
    #   The member type of the asset that you want to delete from a folder.
    #
    # @return [Types::DeleteFolderMembershipResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteFolderMembershipResponse#status #status} => Integer
    #   * {Types::DeleteFolderMembershipResponse#request_id #request_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_folder_membership({
    #     aws_account_id: "AwsAccountId", # required
    #     folder_id: "RestrictiveResourceId", # required
    #     member_id: "RestrictiveResourceId", # required
    #     member_type: "DASHBOARD", # required, accepts DASHBOARD, ANALYSIS, DATASET, DATASOURCE, TOPIC
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> Integer
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteFolderMembership AWS API Documentation
    #
    # @overload delete_folder_membership(params = {})
    # @param [Hash] params ({})
    def delete_folder_membership(params = {}, options = {})
      req = build_request(:delete_folder_membership, params)
      req.send_request(options)
    end

    # Removes a user group from Amazon QuickSight.
    #
    # @option params [required, String] :group_name
    #   The name of the group that you want to delete.
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the Amazon Web Services account that the group is in.
    #   Currently, you use the ID for the Amazon Web Services account that
    #   contains your Amazon QuickSight account.
    #
    # @option params [required, String] :namespace
    #   The namespace of the group that you want to delete.
    #
    # @return [Types::DeleteGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteGroupResponse#request_id #request_id} => String
    #   * {Types::DeleteGroupResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_group({
    #     group_name: "GroupName", # required
    #     aws_account_id: "AwsAccountId", # required
    #     namespace: "Namespace", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteGroup AWS API Documentation
    #
    # @overload delete_group(params = {})
    # @param [Hash] params ({})
    def delete_group(params = {}, options = {})
      req = build_request(:delete_group, params)
      req.send_request(options)
    end

    # Removes a user from a group so that the user is no longer a member of
    # the group.
    #
    # @option params [required, String] :member_name
    #   The name of the user that you want to delete from the group
    #   membership.
    #
    # @option params [required, String] :group_name
    #   The name of the group that you want to delete the user from.
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the Amazon Web Services account that the group is in.
    #   Currently, you use the ID for the Amazon Web Services account that
    #   contains your Amazon QuickSight account.
    #
    # @option params [required, String] :namespace
    #   The namespace of the group that you want to remove a user from.
    #
    # @return [Types::DeleteGroupMembershipResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteGroupMembershipResponse#request_id #request_id} => String
    #   * {Types::DeleteGroupMembershipResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_group_membership({
    #     member_name: "GroupMemberName", # required
    #     group_name: "GroupName", # required
    #     aws_account_id: "AwsAccountId", # required
    #     namespace: "Namespace", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteGroupMembership AWS API Documentation
    #
    # @overload delete_group_membership(params = {})
    # @param [Hash] params ({})
    def delete_group_membership(params = {}, options = {})
      req = build_request(:delete_group_membership, params)
      req.send_request(options)
    end

    # Deletes an existing IAM policy assignment.
    #
    # @option params [required, String] :aws_account_id
    #   The Amazon Web Services account ID where you want to delete the IAM
    #   policy assignment.
    #
    # @option params [required, String] :assignment_name
    #   The name of the assignment.
    #
    # @option params [required, String] :namespace
    #   The namespace that contains the assignment.
    #
    # @return [Types::DeleteIAMPolicyAssignmentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteIAMPolicyAssignmentResponse#assignment_name #assignment_name} => String
    #   * {Types::DeleteIAMPolicyAssignmentResponse#request_id #request_id} => String
    #   * {Types::DeleteIAMPolicyAssignmentResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_iam_policy_assignment({
    #     aws_account_id: "AwsAccountId", # required
    #     assignment_name: "IAMPolicyAssignmentName", # required
    #     namespace: "Namespace", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.assignment_name #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteIAMPolicyAssignment AWS API Documentation
    #
    # @overload delete_iam_policy_assignment(params = {})
    # @param [Hash] params ({})
    def delete_iam_policy_assignment(params = {}, options = {})
      req = build_request(:delete_iam_policy_assignment, params)
      req.send_request(options)
    end

    # Deletes all access scopes and authorized targets that are associated
    # with a service from the QuickSight IAM Identity Center application.
    #
    # This operation is only supported for QuickSight accounts that use IAM
    # Identity Center.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that you want to delete an
    #   identity propagation configuration from.
    #
    # @option params [required, String] :service
    #   The name of the Amazon Web Services service that you want to delete
    #   the associated access scopes and authorized targets from.
    #
    # @return [Types::DeleteIdentityPropagationConfigResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteIdentityPropagationConfigResponse#request_id #request_id} => String
    #   * {Types::DeleteIdentityPropagationConfigResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_identity_propagation_config({
    #     aws_account_id: "AwsAccountId", # required
    #     service: "REDSHIFT", # required, accepts REDSHIFT, QBUSINESS, ATHENA
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteIdentityPropagationConfig AWS API Documentation
    #
    # @overload delete_identity_propagation_config(params = {})
    # @param [Hash] params ({})
    def delete_identity_propagation_config(params = {}, options = {})
      req = build_request(:delete_identity_propagation_config, params)
      req.send_request(options)
    end

    # Deletes a namespace and the users and groups that are associated with
    # the namespace. This is an asynchronous process. Assets including
    # dashboards, analyses, datasets and data sources are not deleted. To
    # delete these assets, you use the API operations for the relevant
    # asset.
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the Amazon Web Services account that you want to delete the
    #   QuickSight namespace from.
    #
    # @option params [required, String] :namespace
    #   The namespace that you want to delete.
    #
    # @return [Types::DeleteNamespaceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteNamespaceResponse#request_id #request_id} => String
    #   * {Types::DeleteNamespaceResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_namespace({
    #     aws_account_id: "AwsAccountId", # required
    #     namespace: "Namespace", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteNamespace AWS API Documentation
    #
    # @overload delete_namespace(params = {})
    # @param [Hash] params ({})
    def delete_namespace(params = {}, options = {})
      req = build_request(:delete_namespace, params)
      req.send_request(options)
    end

    # Deletes a refresh schedule from a dataset.
    #
    # @option params [required, String] :data_set_id
    #   The ID of the dataset.
    #
    # @option params [required, String] :aws_account_id
    #   The Amazon Web Services account ID.
    #
    # @option params [required, String] :schedule_id
    #   The ID of the refresh schedule.
    #
    # @return [Types::DeleteRefreshScheduleResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteRefreshScheduleResponse#status #status} => Integer
    #   * {Types::DeleteRefreshScheduleResponse#request_id #request_id} => String
    #   * {Types::DeleteRefreshScheduleResponse#schedule_id #schedule_id} => String
    #   * {Types::DeleteRefreshScheduleResponse#arn #arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_refresh_schedule({
    #     data_set_id: "ResourceId", # required
    #     aws_account_id: "AwsAccountId", # required
    #     schedule_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> Integer
    #   resp.request_id #=> String
    #   resp.schedule_id #=> String
    #   resp.arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteRefreshSchedule AWS API Documentation
    #
    # @overload delete_refresh_schedule(params = {})
    # @param [Hash] params ({})
    def delete_refresh_schedule(params = {}, options = {})
      req = build_request(:delete_refresh_schedule, params)
      req.send_request(options)
    end

    # Removes custom permissions from the role.
    #
    # @option params [required, String] :role
    #   The role that you want to remove permissions from.
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the Amazon Web Services account that the group is in.
    #   Currently, you use the ID for the Amazon Web Services account that
    #   contains your Amazon QuickSight account.
    #
    # @option params [required, String] :namespace
    #   The namespace that includes the role.
    #
    # @return [Types::DeleteRoleCustomPermissionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteRoleCustomPermissionResponse#request_id #request_id} => String
    #   * {Types::DeleteRoleCustomPermissionResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_role_custom_permission({
    #     role: "ADMIN", # required, accepts ADMIN, AUTHOR, READER, ADMIN_PRO, AUTHOR_PRO, READER_PRO
    #     aws_account_id: "AwsAccountId", # required
    #     namespace: "Namespace", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteRoleCustomPermission AWS API Documentation
    #
    # @overload delete_role_custom_permission(params = {})
    # @param [Hash] params ({})
    def delete_role_custom_permission(params = {}, options = {})
      req = build_request(:delete_role_custom_permission, params)
      req.send_request(options)
    end

    # Removes a group from a role.
    #
    # @option params [required, String] :member_name
    #   The name of the group.
    #
    # @option params [required, String] :role
    #   The role that you want to remove permissions from.
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the Amazon Web Services account that you want to create a
    #   group in. The Amazon Web Services account ID that you provide must be
    #   the same Amazon Web Services account that contains your Amazon
    #   QuickSight account.
    #
    # @option params [required, String] :namespace
    #   The namespace that contains the role.
    #
    # @return [Types::DeleteRoleMembershipResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteRoleMembershipResponse#request_id #request_id} => String
    #   * {Types::DeleteRoleMembershipResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_role_membership({
    #     member_name: "GroupName", # required
    #     role: "ADMIN", # required, accepts ADMIN, AUTHOR, READER, ADMIN_PRO, AUTHOR_PRO, READER_PRO
    #     aws_account_id: "AwsAccountId", # required
    #     namespace: "Namespace", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteRoleMembership AWS API Documentation
    #
    # @overload delete_role_membership(params = {})
    # @param [Hash] params ({})
    def delete_role_membership(params = {}, options = {})
      req = build_request(:delete_role_membership, params)
      req.send_request(options)
    end

    # Deletes a template.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that contains the template
    #   that you're deleting.
    #
    # @option params [required, String] :template_id
    #   An ID for the template you want to delete.
    #
    # @option params [Integer] :version_number
    #   Specifies the version of the template that you want to delete. If you
    #   don't provide a version number, `DeleteTemplate` deletes all versions
    #   of the template.
    #
    # @return [Types::DeleteTemplateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteTemplateResponse#request_id #request_id} => String
    #   * {Types::DeleteTemplateResponse#arn #arn} => String
    #   * {Types::DeleteTemplateResponse#template_id #template_id} => String
    #   * {Types::DeleteTemplateResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_template({
    #     aws_account_id: "AwsAccountId", # required
    #     template_id: "ShortRestrictiveResourceId", # required
    #     version_number: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.arn #=> String
    #   resp.template_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteTemplate AWS API Documentation
    #
    # @overload delete_template(params = {})
    # @param [Hash] params ({})
    def delete_template(params = {}, options = {})
      req = build_request(:delete_template, params)
      req.send_request(options)
    end

    # Deletes the item that the specified template alias points to. If you
    # provide a specific alias, you delete the version of the template that
    # the alias points to.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that contains the item to
    #   delete.
    #
    # @option params [required, String] :template_id
    #   The ID for the template that the specified alias is for.
    #
    # @option params [required, String] :alias_name
    #   The name for the template alias. To delete a specific alias, you
    #   delete the version that the alias points to. You can specify the alias
    #   name, or specify the latest version of the template by providing the
    #   keyword `$LATEST` in the `AliasName` parameter.
    #
    # @return [Types::DeleteTemplateAliasResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteTemplateAliasResponse#status #status} => Integer
    #   * {Types::DeleteTemplateAliasResponse#template_id #template_id} => String
    #   * {Types::DeleteTemplateAliasResponse#alias_name #alias_name} => String
    #   * {Types::DeleteTemplateAliasResponse#arn #arn} => String
    #   * {Types::DeleteTemplateAliasResponse#request_id #request_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_template_alias({
    #     aws_account_id: "AwsAccountId", # required
    #     template_id: "ShortRestrictiveResourceId", # required
    #     alias_name: "AliasName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> Integer
    #   resp.template_id #=> String
    #   resp.alias_name #=> String
    #   resp.arn #=> String
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteTemplateAlias AWS API Documentation
    #
    # @overload delete_template_alias(params = {})
    # @param [Hash] params ({})
    def delete_template_alias(params = {}, options = {})
      req = build_request(:delete_template_alias, params)
      req.send_request(options)
    end

    # Deletes a theme.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that contains the theme that
    #   you're deleting.
    #
    # @option params [required, String] :theme_id
    #   An ID for the theme that you want to delete.
    #
    # @option params [Integer] :version_number
    #   The version of the theme that you want to delete.
    #
    #   **Note:** If you don't provide a version number, you're using this
    #   call to `DeleteTheme` to delete all versions of the theme.
    #
    # @return [Types::DeleteThemeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteThemeResponse#arn #arn} => String
    #   * {Types::DeleteThemeResponse#request_id #request_id} => String
    #   * {Types::DeleteThemeResponse#status #status} => Integer
    #   * {Types::DeleteThemeResponse#theme_id #theme_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_theme({
    #     aws_account_id: "AwsAccountId", # required
    #     theme_id: "ShortRestrictiveResourceId", # required
    #     version_number: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #   resp.theme_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteTheme AWS API Documentation
    #
    # @overload delete_theme(params = {})
    # @param [Hash] params ({})
    def delete_theme(params = {}, options = {})
      req = build_request(:delete_theme, params)
      req.send_request(options)
    end

    # Deletes the version of the theme that the specified theme alias points
    # to. If you provide a specific alias, you delete the version of the
    # theme that the alias points to.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that contains the theme
    #   alias to delete.
    #
    # @option params [required, String] :theme_id
    #   The ID for the theme that the specified alias is for.
    #
    # @option params [required, String] :alias_name
    #   The unique name for the theme alias to delete.
    #
    # @return [Types::DeleteThemeAliasResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteThemeAliasResponse#alias_name #alias_name} => String
    #   * {Types::DeleteThemeAliasResponse#arn #arn} => String
    #   * {Types::DeleteThemeAliasResponse#request_id #request_id} => String
    #   * {Types::DeleteThemeAliasResponse#status #status} => Integer
    #   * {Types::DeleteThemeAliasResponse#theme_id #theme_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_theme_alias({
    #     aws_account_id: "AwsAccountId", # required
    #     theme_id: "ShortRestrictiveResourceId", # required
    #     alias_name: "AliasName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.alias_name #=> String
    #   resp.arn #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #   resp.theme_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteThemeAlias AWS API Documentation
    #
    # @overload delete_theme_alias(params = {})
    # @param [Hash] params ({})
    def delete_theme_alias(params = {}, options = {})
      req = build_request(:delete_theme_alias, params)
      req.send_request(options)
    end

    # Deletes a topic.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that contains the topic that
    #   you want to delete.
    #
    # @option params [required, String] :topic_id
    #   The ID of the topic that you want to delete. This ID is unique per
    #   Amazon Web Services Region for each Amazon Web Services account.
    #
    # @return [Types::DeleteTopicResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteTopicResponse#arn #arn} => String
    #   * {Types::DeleteTopicResponse#topic_id #topic_id} => String
    #   * {Types::DeleteTopicResponse#request_id #request_id} => String
    #   * {Types::DeleteTopicResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_topic({
    #     aws_account_id: "AwsAccountId", # required
    #     topic_id: "TopicId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.topic_id #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteTopic AWS API Documentation
    #
    # @overload delete_topic(params = {})
    # @param [Hash] params ({})
    def delete_topic(params = {}, options = {})
      req = build_request(:delete_topic, params)
      req.send_request(options)
    end

    # Deletes a topic refresh schedule.
    #
    # @option params [required, String] :aws_account_id
    #   The Amazon Web Services account ID.
    #
    # @option params [required, String] :topic_id
    #   The ID of the topic that you want to modify. This ID is unique per
    #   Amazon Web Services Region for each Amazon Web Services account.
    #
    # @option params [required, String] :dataset_id
    #   The ID of the dataset.
    #
    # @return [Types::DeleteTopicRefreshScheduleResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteTopicRefreshScheduleResponse#topic_id #topic_id} => String
    #   * {Types::DeleteTopicRefreshScheduleResponse#topic_arn #topic_arn} => String
    #   * {Types::DeleteTopicRefreshScheduleResponse#dataset_arn #dataset_arn} => String
    #   * {Types::DeleteTopicRefreshScheduleResponse#status #status} => Integer
    #   * {Types::DeleteTopicRefreshScheduleResponse#request_id #request_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_topic_refresh_schedule({
    #     aws_account_id: "AwsAccountId", # required
    #     topic_id: "TopicId", # required
    #     dataset_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.topic_id #=> String
    #   resp.topic_arn #=> String
    #   resp.dataset_arn #=> String
    #   resp.status #=> Integer
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteTopicRefreshSchedule AWS API Documentation
    #
    # @overload delete_topic_refresh_schedule(params = {})
    # @param [Hash] params ({})
    def delete_topic_refresh_schedule(params = {}, options = {})
      req = build_request(:delete_topic_refresh_schedule, params)
      req.send_request(options)
    end

    # Deletes the Amazon QuickSight user that is associated with the
    # identity of the IAM user or role that's making the call. The IAM user
    # isn't deleted as a result of this call.
    #
    # @option params [required, String] :user_name
    #   The name of the user that you want to delete.
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the Amazon Web Services account that the user is in.
    #   Currently, you use the ID for the Amazon Web Services account that
    #   contains your Amazon QuickSight account.
    #
    # @option params [required, String] :namespace
    #   The namespace. Currently, you should set this to `default`.
    #
    # @return [Types::DeleteUserResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteUserResponse#request_id #request_id} => String
    #   * {Types::DeleteUserResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_user({
    #     user_name: "UserName", # required
    #     aws_account_id: "AwsAccountId", # required
    #     namespace: "Namespace", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteUser AWS API Documentation
    #
    # @overload delete_user(params = {})
    # @param [Hash] params ({})
    def delete_user(params = {}, options = {})
      req = build_request(:delete_user, params)
      req.send_request(options)
    end

    # Deletes a user identified by its principal ID.
    #
    # @option params [required, String] :principal_id
    #   The principal ID of the user.
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the Amazon Web Services account that the user is in.
    #   Currently, you use the ID for the Amazon Web Services account that
    #   contains your Amazon QuickSight account.
    #
    # @option params [required, String] :namespace
    #   The namespace. Currently, you should set this to `default`.
    #
    # @return [Types::DeleteUserByPrincipalIdResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteUserByPrincipalIdResponse#request_id #request_id} => String
    #   * {Types::DeleteUserByPrincipalIdResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_user_by_principal_id({
    #     principal_id: "String", # required
    #     aws_account_id: "AwsAccountId", # required
    #     namespace: "Namespace", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteUserByPrincipalId AWS API Documentation
    #
    # @overload delete_user_by_principal_id(params = {})
    # @param [Hash] params ({})
    def delete_user_by_principal_id(params = {}, options = {})
      req = build_request(:delete_user_by_principal_id, params)
      req.send_request(options)
    end

    # Deletes a custom permissions profile from a user.
    #
    # @option params [required, String] :user_name
    #   The username of the user that you want to remove custom permissions
    #   from.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that contains the custom
    #   permission configuration that you want to delete.
    #
    # @option params [required, String] :namespace
    #   The namespace that the user belongs to.
    #
    # @return [Types::DeleteUserCustomPermissionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteUserCustomPermissionResponse#request_id #request_id} => String
    #   * {Types::DeleteUserCustomPermissionResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_user_custom_permission({
    #     user_name: "UserName", # required
    #     aws_account_id: "AwsAccountId", # required
    #     namespace: "Namespace", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteUserCustomPermission AWS API Documentation
    #
    # @overload delete_user_custom_permission(params = {})
    # @param [Hash] params ({})
    def delete_user_custom_permission(params = {}, options = {})
      req = build_request(:delete_user_custom_permission, params)
      req.send_request(options)
    end

    # Deletes a VPC connection.
    #
    # @option params [required, String] :aws_account_id
    #   The Amazon Web Services account ID of the account where you want to
    #   delete a VPC connection.
    #
    # @option params [required, String] :vpc_connection_id
    #   The ID of the VPC connection that you're creating. This ID is a
    #   unique identifier for each Amazon Web Services Region in an Amazon Web
    #   Services account.
    #
    # @return [Types::DeleteVPCConnectionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteVPCConnectionResponse#arn #arn} => String
    #   * {Types::DeleteVPCConnectionResponse#vpc_connection_id #vpc_connection_id} => String
    #   * {Types::DeleteVPCConnectionResponse#deletion_status #deletion_status} => String
    #   * {Types::DeleteVPCConnectionResponse#availability_status #availability_status} => String
    #   * {Types::DeleteVPCConnectionResponse#request_id #request_id} => String
    #   * {Types::DeleteVPCConnectionResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_vpc_connection({
    #     aws_account_id: "AwsAccountId", # required
    #     vpc_connection_id: "VPCConnectionResourceIdUnrestricted", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.vpc_connection_id #=> String
    #   resp.deletion_status #=> String, one of "CREATION_IN_PROGRESS", "CREATION_SUCCESSFUL", "CREATION_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_SUCCESSFUL", "UPDATE_FAILED", "DELETION_IN_PROGRESS", "DELETION_FAILED", "DELETED"
    #   resp.availability_status #=> String, one of "AVAILABLE", "UNAVAILABLE", "PARTIALLY_AVAILABLE"
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteVPCConnection AWS API Documentation
    #
    # @overload delete_vpc_connection(params = {})
    # @param [Hash] params ({})
    def delete_vpc_connection(params = {}, options = {})
      req = build_request(:delete_vpc_connection, params)
      req.send_request(options)
    end

    # Describes the custom permissions profile that is applied to an
    # account.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account for which you want to
    #   describe the applied custom permissions profile.
    #
    # @return [Types::DescribeAccountCustomPermissionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAccountCustomPermissionResponse#custom_permissions_name #custom_permissions_name} => String
    #   * {Types::DescribeAccountCustomPermissionResponse#request_id #request_id} => String
    #   * {Types::DescribeAccountCustomPermissionResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_account_custom_permission({
    #     aws_account_id: "AwsAccountId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.custom_permissions_name #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeAccountCustomPermission AWS API Documentation
    #
    # @overload describe_account_custom_permission(params = {})
    # @param [Hash] params ({})
    def describe_account_custom_permission(params = {}, options = {})
      req = build_request(:describe_account_custom_permission, params)
      req.send_request(options)
    end

    # Describes the customizations associated with the provided Amazon Web
    # Services account and Amazon QuickSight namespace in an Amazon Web
    # Services Region. The QuickSight console evaluates which customizations
    # to apply by running this API operation with the `Resolved` flag
    # included.
    #
    # To determine what customizations display when you run this command, it
    # can help to visualize the relationship of the entities involved.
    #
    # * `Amazon Web Services account` - The Amazon Web Services account
    #   exists at the top of the hierarchy. It has the potential to use all
    #   of the Amazon Web Services Regions and Amazon Web Services Services.
    #   When you subscribe to QuickSight, you choose one Amazon Web Services
    #   Region to use as your home Region. That's where your free SPICE
    #   capacity is located. You can use QuickSight in any supported Amazon
    #   Web Services Region.
    #
    # * `Amazon Web Services Region` - In each Amazon Web Services Region
    #   where you sign in to QuickSight at least once, QuickSight acts as a
    #   separate instance of the same service. If you have a user directory,
    #   it resides in us-east-1, which is the US East (N. Virginia).
    #   Generally speaking, these users have access to QuickSight in any
    #   Amazon Web Services Region, unless they are constrained to a
    #   namespace.
    #
    #   To run the command in a different Amazon Web Services Region, you
    #   change your Region settings. If you're using the CLI, you can use
    #   one of the following options:
    #
    #   * Use [command line options][1].
    #
    #   * Use [named profiles][2].
    #
    #   * Run `aws configure` to change your default Amazon Web Services
    #     Region. Use Enter to key the same settings for your keys. For more
    #     information, see [Configuring the CLI][3].
    # * `Namespace` - A QuickSight namespace is a partition that contains
    #   users and assets (data sources, datasets, dashboards, and so on). To
    #   access assets that are in a specific namespace, users and groups
    #   must also be part of the same namespace. People who share a
    #   namespace are completely isolated from users and assets in other
    #   namespaces, even if they are in the same Amazon Web Services account
    #   and Amazon Web Services Region.
    #
    # * `Applied customizations` - Within an Amazon Web Services Region, a
    #   set of QuickSight customizations can apply to an Amazon Web Services
    #   account or to a namespace. Settings that you apply to a namespace
    #   override settings that you apply to an Amazon Web Services account.
    #   All settings are isolated to a single Amazon Web Services Region. To
    #   apply them in other Amazon Web Services Regions, run the
    #   `CreateAccountCustomization` command in each Amazon Web Services
    #   Region where you want to apply the same customizations.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-options.html
    # [2]: https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-profiles.html
    # [3]: https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-configure.html
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the Amazon Web Services account that you want to describe
    #   QuickSight customizations for.
    #
    # @option params [String] :namespace
    #   The QuickSight namespace that you want to describe QuickSight
    #   customizations for.
    #
    # @option params [Boolean] :resolved
    #   The `Resolved` flag works with the other parameters to determine which
    #   view of QuickSight customizations is returned. You can add this flag
    #   to your command to use the same view that QuickSight uses to identify
    #   which customizations to apply to the console. Omit this flag, or set
    #   it to `no-resolved`, to reveal customizations that are configured at
    #   different levels.
    #
    # @return [Types::DescribeAccountCustomizationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAccountCustomizationResponse#arn #arn} => String
    #   * {Types::DescribeAccountCustomizationResponse#aws_account_id #aws_account_id} => String
    #   * {Types::DescribeAccountCustomizationResponse#namespace #namespace} => String
    #   * {Types::DescribeAccountCustomizationResponse#account_customization #account_customization} => Types::AccountCustomization
    #   * {Types::DescribeAccountCustomizationResponse#request_id #request_id} => String
    #   * {Types::DescribeAccountCustomizationResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_account_customization({
    #     aws_account_id: "AwsAccountId", # required
    #     namespace: "Namespace",
    #     resolved: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.aws_account_id #=> String
    #   resp.namespace #=> String
    #   resp.account_customization.default_theme #=> String
    #   resp.account_customization.default_email_customization_template #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeAccountCustomization AWS API Documentation
    #
    # @overload describe_account_customization(params = {})
    # @param [Hash] params ({})
    def describe_account_customization(params = {}, options = {})
      req = build_request(:describe_account_customization, params)
      req.send_request(options)
    end

    # Describes the settings that were used when your QuickSight
    # subscription was first created in this Amazon Web Services account.
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the Amazon Web Services account that contains the settings
    #   that you want to list.
    #
    # @return [Types::DescribeAccountSettingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAccountSettingsResponse#account_settings #account_settings} => Types::AccountSettings
    #   * {Types::DescribeAccountSettingsResponse#request_id #request_id} => String
    #   * {Types::DescribeAccountSettingsResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_account_settings({
    #     aws_account_id: "AwsAccountId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.account_settings.account_name #=> String
    #   resp.account_settings.edition #=> String, one of "STANDARD", "ENTERPRISE", "ENTERPRISE_AND_Q"
    #   resp.account_settings.default_namespace #=> String
    #   resp.account_settings.notification_email #=> String
    #   resp.account_settings.public_sharing_enabled #=> Boolean
    #   resp.account_settings.termination_protection_enabled #=> Boolean
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeAccountSettings AWS API Documentation
    #
    # @overload describe_account_settings(params = {})
    # @param [Hash] params ({})
    def describe_account_settings(params = {}, options = {})
      req = build_request(:describe_account_settings, params)
      req.send_request(options)
    end

    # Use the DescribeAccountSubscription operation to receive a description
    # of an QuickSight account's subscription. A successful API call
    # returns an `AccountInfo` object that includes an account's name,
    # subscription status, authentication type, edition, and notification
    # email address.
    #
    # @option params [required, String] :aws_account_id
    #   The Amazon Web Services account ID associated with your QuickSight
    #   account.
    #
    # @return [Types::DescribeAccountSubscriptionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAccountSubscriptionResponse#account_info #account_info} => Types::AccountInfo
    #   * {Types::DescribeAccountSubscriptionResponse#status #status} => Integer
    #   * {Types::DescribeAccountSubscriptionResponse#request_id #request_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_account_subscription({
    #     aws_account_id: "AwsAccountId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.account_info.account_name #=> String
    #   resp.account_info.edition #=> String, one of "STANDARD", "ENTERPRISE", "ENTERPRISE_AND_Q"
    #   resp.account_info.notification_email #=> String
    #   resp.account_info.authentication_type #=> String
    #   resp.account_info.account_subscription_status #=> String
    #   resp.account_info.iam_identity_center_instance_arn #=> String
    #   resp.status #=> Integer
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeAccountSubscription AWS API Documentation
    #
    # @overload describe_account_subscription(params = {})
    # @param [Hash] params ({})
    def describe_account_subscription(params = {}, options = {})
      req = build_request(:describe_account_subscription, params)
      req.send_request(options)
    end

    # Provides a summary of the metadata for an analysis.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that contains the analysis.
    #   You must be using the Amazon Web Services account that the analysis is
    #   in.
    #
    # @option params [required, String] :analysis_id
    #   The ID of the analysis that you're describing. The ID is part of the
    #   URL of the analysis.
    #
    # @return [Types::DescribeAnalysisResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAnalysisResponse#analysis #analysis} => Types::Analysis
    #   * {Types::DescribeAnalysisResponse#status #status} => Integer
    #   * {Types::DescribeAnalysisResponse#request_id #request_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_analysis({
    #     aws_account_id: "AwsAccountId", # required
    #     analysis_id: "ShortRestrictiveResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.analysis.analysis_id #=> String
    #   resp.analysis.arn #=> String
    #   resp.analysis.name #=> String
    #   resp.analysis.status #=> String, one of "CREATION_IN_PROGRESS", "CREATION_SUCCESSFUL", "CREATION_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_SUCCESSFUL", "UPDATE_FAILED", "DELETED"
    #   resp.analysis.errors #=> Array
    #   resp.analysis.errors[0].type #=> String, one of "ACCESS_DENIED", "SOURCE_NOT_FOUND", "DATA_SET_NOT_FOUND", "INTERNAL_FAILURE", "PARAMETER_VALUE_INCOMPATIBLE", "PARAMETER_TYPE_INVALID", "PARAMETER_NOT_FOUND", "COLUMN_TYPE_MISMATCH", "COLUMN_GEOGRAPHIC_ROLE_MISMATCH", "COLUMN_REPLACEMENT_MISSING"
    #   resp.analysis.errors[0].message #=> String
    #   resp.analysis.errors[0].violated_entities #=> Array
    #   resp.analysis.errors[0].violated_entities[0].path #=> String
    #   resp.analysis.data_set_arns #=> Array
    #   resp.analysis.data_set_arns[0] #=> String
    #   resp.analysis.theme_arn #=> String
    #   resp.analysis.created_time #=> Time
    #   resp.analysis.last_updated_time #=> Time
    #   resp.analysis.sheets #=> Array
    #   resp.analysis.sheets[0].sheet_id #=> String
    #   resp.analysis.sheets[0].name #=> String
    #   resp.analysis.sheets[0].images #=> Array
    #   resp.analysis.sheets[0].images[0].sheet_image_id #=> String
    #   resp.analysis.sheets[0].images[0].source.sheet_image_static_file_source.static_file_id #=> String
    #   resp.analysis.sheets[0].images[0].scaling.scaling_type #=> String, one of "SCALE_TO_WIDTH", "SCALE_TO_HEIGHT", "SCALE_TO_CONTAINER", "SCALE_NONE"
    #   resp.analysis.sheets[0].images[0].tooltip.tooltip_text.plain_text #=> String
    #   resp.analysis.sheets[0].images[0].tooltip.visibility #=> String, one of "HIDDEN", "VISIBLE"
    #   resp.analysis.sheets[0].images[0].image_content_alt_text #=> String
    #   resp.analysis.sheets[0].images[0].interactions.image_menu_option.availability_status #=> String, one of "ENABLED", "DISABLED"
    #   resp.analysis.sheets[0].images[0].actions #=> Array
    #   resp.analysis.sheets[0].images[0].actions[0].custom_action_id #=> String
    #   resp.analysis.sheets[0].images[0].actions[0].name #=> String
    #   resp.analysis.sheets[0].images[0].actions[0].status #=> String, one of "ENABLED", "DISABLED"
    #   resp.analysis.sheets[0].images[0].actions[0].trigger #=> String, one of "CLICK", "MENU"
    #   resp.analysis.sheets[0].images[0].actions[0].action_operations #=> Array
    #   resp.analysis.sheets[0].images[0].actions[0].action_operations[0].navigation_operation.local_navigation_configuration.target_sheet_id #=> String
    #   resp.analysis.sheets[0].images[0].actions[0].action_operations[0].url_operation.url_template #=> String
    #   resp.analysis.sheets[0].images[0].actions[0].action_operations[0].url_operation.url_target #=> String, one of "NEW_TAB", "NEW_WINDOW", "SAME_TAB"
    #   resp.analysis.sheets[0].images[0].actions[0].action_operations[0].set_parameters_operation.parameter_value_configurations #=> Array
    #   resp.analysis.sheets[0].images[0].actions[0].action_operations[0].set_parameters_operation.parameter_value_configurations[0].destination_parameter_name #=> String
    #   resp.analysis.sheets[0].images[0].actions[0].action_operations[0].set_parameters_operation.parameter_value_configurations[0].value.custom_values_configuration.include_null_value #=> Boolean
    #   resp.analysis.sheets[0].images[0].actions[0].action_operations[0].set_parameters_operation.parameter_value_configurations[0].value.custom_values_configuration.custom_values.string_values #=> Array
    #   resp.analysis.sheets[0].images[0].actions[0].action_operations[0].set_parameters_operation.parameter_value_configurations[0].value.custom_values_configuration.custom_values.string_values[0] #=> String
    #   resp.analysis.sheets[0].images[0].actions[0].action_operations[0].set_parameters_operation.parameter_value_configurations[0].value.custom_values_configuration.custom_values.integer_values #=> Array
    #   resp.analysis.sheets[0].images[0].actions[0].action_operations[0].set_parameters_operation.parameter_value_configurations[0].value.custom_values_configuration.custom_values.integer_values[0] #=> Integer
    #   resp.analysis.sheets[0].images[0].actions[0].action_operations[0].set_parameters_operation.parameter_value_configurations[0].value.custom_values_configuration.custom_values.decimal_values #=> Array
    #   resp.analysis.sheets[0].images[0].actions[0].action_operations[0].set_parameters_operation.parameter_value_configurations[0].value.custom_values_configuration.custom_values.decimal_values[0] #=> Float
    #   resp.analysis.sheets[0].images[0].actions[0].action_operations[0].set_parameters_operation.parameter_value_configurations[0].value.custom_values_configuration.custom_values.date_time_values #=> Array
    #   resp.analysis.sheets[0].images[0].actions[0].action_operations[0].set_parameters_operation.parameter_value_configurations[0].value.custom_values_configuration.custom_values.date_time_values[0] #=> Time
    #   resp.analysis.sheets[0].images[0].actions[0].action_operations[0].set_parameters_operation.parameter_value_configurations[0].value.select_all_value_options #=> String, one of "ALL_VALUES"
    #   resp.analysis.sheets[0].images[0].actions[0].action_operations[0].set_parameters_operation.parameter_value_configurations[0].value.source_parameter_name #=> String
    #   resp.analysis.sheets[0].images[0].actions[0].action_operations[0].set_parameters_operation.parameter_value_configurations[0].value.source_field #=> String
    #   resp.analysis.sheets[0].images[0].actions[0].action_operations[0].set_parameters_operation.parameter_value_configurations[0].value.source_column.data_set_identifier #=> String
    #   resp.analysis.sheets[0].images[0].actions[0].action_operations[0].set_parameters_operation.parameter_value_configurations[0].value.source_column.column_name #=> String
    #   resp.status #=> Integer
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeAnalysis AWS API Documentation
    #
    # @overload describe_analysis(params = {})
    # @param [Hash] params ({})
    def describe_analysis(params = {}, options = {})
      req = build_request(:describe_analysis, params)
      req.send_request(options)
    end

    # Provides a detailed description of the definition of an analysis.
    #
    # <note markdown="1"> If you do not need to know details about the content of an Analysis,
    # for instance if you are trying to check the status of a recently
    # created or updated Analysis, use the [ `DescribeAnalysis` ][1]
    # instead.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/quicksight/latest/APIReference/API_DescribeAnalysis.html
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that contains the analysis.
    #   You must be using the Amazon Web Services account that the analysis is
    #   in.
    #
    # @option params [required, String] :analysis_id
    #   The ID of the analysis that you're describing. The ID is part of the
    #   URL of the analysis.
    #
    # @return [Types::DescribeAnalysisDefinitionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAnalysisDefinitionResponse#analysis_id #analysis_id} => String
    #   * {Types::DescribeAnalysisDefinitionResponse#name #name} => String
    #   * {Types::DescribeAnalysisDefinitionResponse#errors #errors} => Array&lt;Types::AnalysisError&gt;
    #   * {Types::DescribeAnalysisDefinitionResponse#resource_status #resource_status} => String
    #   * {Types::DescribeAnalysisDefinitionResponse#theme_arn #theme_arn} => String
    #   * {Types::DescribeAnalysisDefinitionResponse#definition #definition} => Types::AnalysisDefinition
    #   * {Types::DescribeAnalysisDefinitionResponse#status #status} => Integer
    #   * {Types::DescribeAnalysisDefinitionResponse#request_id #request_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_analysis_definition({
    #     aws_account_id: "AwsAccountId", # required
    #     analysis_id: "ShortRestrictiveResourceId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeAnalysisDefinition AWS API Documentation
    #
    # @overload describe_analysis_definition(params = {})
    # @param [Hash] params ({})
    def describe_analysis_definition(params = {}, options = {})
      req = build_request(:describe_analysis_definition, params)
      req.send_request(options)
    end

    # Provides the read and write permissions for an analysis.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that contains the analysis
    #   whose permissions you're describing. You must be using the Amazon Web
    #   Services account that the analysis is in.
    #
    # @option params [required, String] :analysis_id
    #   The ID of the analysis whose permissions you're describing. The ID is
    #   part of the analysis URL.
    #
    # @return [Types::DescribeAnalysisPermissionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAnalysisPermissionsResponse#analysis_id #analysis_id} => String
    #   * {Types::DescribeAnalysisPermissionsResponse#analysis_arn #analysis_arn} => String
    #   * {Types::DescribeAnalysisPermissionsResponse#permissions #permissions} => Array&lt;Types::ResourcePermission&gt;
    #   * {Types::DescribeAnalysisPermissionsResponse#status #status} => Integer
    #   * {Types::DescribeAnalysisPermissionsResponse#request_id #request_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_analysis_permissions({
    #     aws_account_id: "AwsAccountId", # required
    #     analysis_id: "ShortRestrictiveResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.analysis_id #=> String
    #   resp.analysis_arn #=> String
    #   resp.permissions #=> Array
    #   resp.permissions[0].principal #=> String
    #   resp.permissions[0].actions #=> Array
    #   resp.permissions[0].actions[0] #=> String
    #   resp.status #=> Integer
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeAnalysisPermissions AWS API Documentation
    #
    # @overload describe_analysis_permissions(params = {})
    # @param [Hash] params ({})
    def describe_analysis_permissions(params = {}, options = {})
      req = build_request(:describe_analysis_permissions, params)
      req.send_request(options)
    end

    # Describes an existing export job.
    #
    # Poll job descriptions after a job starts to know the status of the
    # job. When a job succeeds, a URL is provided to download the exported
    # assets' data from. Download URLs are valid for five minutes after
    # they are generated. You can call the `DescribeAssetBundleExportJob`
    # API for a new download URL as needed.
    #
    # Job descriptions are available for 14 days after the job starts.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account the export job is executed
    #   in.
    #
    # @option params [required, String] :asset_bundle_export_job_id
    #   The ID of the job that you want described. The job ID is set when you
    #   start a new job with a `StartAssetBundleExportJob` API call.
    #
    # @return [Types::DescribeAssetBundleExportJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAssetBundleExportJobResponse#job_status #job_status} => String
    #   * {Types::DescribeAssetBundleExportJobResponse#download_url #download_url} => String
    #   * {Types::DescribeAssetBundleExportJobResponse#errors #errors} => Array&lt;Types::AssetBundleExportJobError&gt;
    #   * {Types::DescribeAssetBundleExportJobResponse#arn #arn} => String
    #   * {Types::DescribeAssetBundleExportJobResponse#created_time #created_time} => Time
    #   * {Types::DescribeAssetBundleExportJobResponse#asset_bundle_export_job_id #asset_bundle_export_job_id} => String
    #   * {Types::DescribeAssetBundleExportJobResponse#aws_account_id #aws_account_id} => String
    #   * {Types::DescribeAssetBundleExportJobResponse#resource_arns #resource_arns} => Array&lt;String&gt;
    #   * {Types::DescribeAssetBundleExportJobResponse#include_all_dependencies #include_all_dependencies} => Boolean
    #   * {Types::DescribeAssetBundleExportJobResponse#export_format #export_format} => String
    #   * {Types::DescribeAssetBundleExportJobResponse#cloud_formation_override_property_configuration #cloud_formation_override_property_configuration} => Types::AssetBundleCloudFormationOverridePropertyConfiguration
    #   * {Types::DescribeAssetBundleExportJobResponse#request_id #request_id} => String
    #   * {Types::DescribeAssetBundleExportJobResponse#status #status} => Integer
    #   * {Types::DescribeAssetBundleExportJobResponse#include_permissions #include_permissions} => Boolean
    #   * {Types::DescribeAssetBundleExportJobResponse#include_tags #include_tags} => Boolean
    #   * {Types::DescribeAssetBundleExportJobResponse#validation_strategy #validation_strategy} => Types::AssetBundleExportJobValidationStrategy
    #   * {Types::DescribeAssetBundleExportJobResponse#warnings #warnings} => Array&lt;Types::AssetBundleExportJobWarning&gt;
    #   * {Types::DescribeAssetBundleExportJobResponse#include_folder_memberships #include_folder_memberships} => Boolean
    #   * {Types::DescribeAssetBundleExportJobResponse#include_folder_members #include_folder_members} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_asset_bundle_export_job({
    #     aws_account_id: "AwsAccountId", # required
    #     asset_bundle_export_job_id: "ShortRestrictiveResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.job_status #=> String, one of "QUEUED_FOR_IMMEDIATE_EXECUTION", "IN_PROGRESS", "SUCCESSFUL", "FAILED"
    #   resp.download_url #=> String
    #   resp.errors #=> Array
    #   resp.errors[0].arn #=> String
    #   resp.errors[0].type #=> String
    #   resp.errors[0].message #=> String
    #   resp.arn #=> String
    #   resp.created_time #=> Time
    #   resp.asset_bundle_export_job_id #=> String
    #   resp.aws_account_id #=> String
    #   resp.resource_arns #=> Array
    #   resp.resource_arns[0] #=> String
    #   resp.include_all_dependencies #=> Boolean
    #   resp.export_format #=> String, one of "CLOUDFORMATION_JSON", "QUICKSIGHT_JSON"
    #   resp.cloud_formation_override_property_configuration.resource_id_override_configuration.prefix_for_all_resources #=> Boolean
    #   resp.cloud_formation_override_property_configuration.vpc_connections #=> Array
    #   resp.cloud_formation_override_property_configuration.vpc_connections[0].arn #=> String
    #   resp.cloud_formation_override_property_configuration.vpc_connections[0].properties #=> Array
    #   resp.cloud_formation_override_property_configuration.vpc_connections[0].properties[0] #=> String, one of "Name", "DnsResolvers", "RoleArn"
    #   resp.cloud_formation_override_property_configuration.refresh_schedules #=> Array
    #   resp.cloud_formation_override_property_configuration.refresh_schedules[0].arn #=> String
    #   resp.cloud_formation_override_property_configuration.refresh_schedules[0].properties #=> Array
    #   resp.cloud_formation_override_property_configuration.refresh_schedules[0].properties[0] #=> String, one of "StartAfterDateTime"
    #   resp.cloud_formation_override_property_configuration.data_sources #=> Array
    #   resp.cloud_formation_override_property_configuration.data_sources[0].arn #=> String
    #   resp.cloud_formation_override_property_configuration.data_sources[0].properties #=> Array
    #   resp.cloud_formation_override_property_configuration.data_sources[0].properties[0] #=> String, one of "Name", "DisableSsl", "SecretArn", "Username", "Password", "Domain", "WorkGroup", "Host", "Port", "Database", "DataSetName", "Catalog", "InstanceId", "ClusterId", "ManifestFileLocation", "Warehouse", "RoleArn", "ProductType"
    #   resp.cloud_formation_override_property_configuration.data_sets #=> Array
    #   resp.cloud_formation_override_property_configuration.data_sets[0].arn #=> String
    #   resp.cloud_formation_override_property_configuration.data_sets[0].properties #=> Array
    #   resp.cloud_formation_override_property_configuration.data_sets[0].properties[0] #=> String, one of "Name", "RefreshFailureEmailAlertStatus"
    #   resp.cloud_formation_override_property_configuration.themes #=> Array
    #   resp.cloud_formation_override_property_configuration.themes[0].arn #=> String
    #   resp.cloud_formation_override_property_configuration.themes[0].properties #=> Array
    #   resp.cloud_formation_override_property_configuration.themes[0].properties[0] #=> String, one of "Name"
    #   resp.cloud_formation_override_property_configuration.analyses #=> Array
    #   resp.cloud_formation_override_property_configuration.analyses[0].arn #=> String
    #   resp.cloud_formation_override_property_configuration.analyses[0].properties #=> Array
    #   resp.cloud_formation_override_property_configuration.analyses[0].properties[0] #=> String, one of "Name"
    #   resp.cloud_formation_override_property_configuration.dashboards #=> Array
    #   resp.cloud_formation_override_property_configuration.dashboards[0].arn #=> String
    #   resp.cloud_formation_override_property_configuration.dashboards[0].properties #=> Array
    #   resp.cloud_formation_override_property_configuration.dashboards[0].properties[0] #=> String, one of "Name"
    #   resp.cloud_formation_override_property_configuration.folders #=> Array
    #   resp.cloud_formation_override_property_configuration.folders[0].arn #=> String
    #   resp.cloud_formation_override_property_configuration.folders[0].properties #=> Array
    #   resp.cloud_formation_override_property_configuration.folders[0].properties[0] #=> String, one of "Name", "ParentFolderArn"
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #   resp.include_permissions #=> Boolean
    #   resp.include_tags #=> Boolean
    #   resp.validation_strategy.strict_mode_for_all_resources #=> Boolean
    #   resp.warnings #=> Array
    #   resp.warnings[0].arn #=> String
    #   resp.warnings[0].message #=> String
    #   resp.include_folder_memberships #=> Boolean
    #   resp.include_folder_members #=> String, one of "RECURSE", "ONE_LEVEL", "NONE"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeAssetBundleExportJob AWS API Documentation
    #
    # @overload describe_asset_bundle_export_job(params = {})
    # @param [Hash] params ({})
    def describe_asset_bundle_export_job(params = {}, options = {})
      req = build_request(:describe_asset_bundle_export_job, params)
      req.send_request(options)
    end

    # Describes an existing import job.
    #
    # Poll job descriptions after starting a job to know when it has
    # succeeded or failed. Job descriptions are available for 14 days after
    # job starts.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account the import job was executed
    #   in.
    #
    # @option params [required, String] :asset_bundle_import_job_id
    #   The ID of the job. The job ID is set when you start a new job with a
    #   `StartAssetBundleImportJob` API call.
    #
    # @return [Types::DescribeAssetBundleImportJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAssetBundleImportJobResponse#job_status #job_status} => String
    #   * {Types::DescribeAssetBundleImportJobResponse#errors #errors} => Array&lt;Types::AssetBundleImportJobError&gt;
    #   * {Types::DescribeAssetBundleImportJobResponse#rollback_errors #rollback_errors} => Array&lt;Types::AssetBundleImportJobError&gt;
    #   * {Types::DescribeAssetBundleImportJobResponse#arn #arn} => String
    #   * {Types::DescribeAssetBundleImportJobResponse#created_time #created_time} => Time
    #   * {Types::DescribeAssetBundleImportJobResponse#asset_bundle_import_job_id #asset_bundle_import_job_id} => String
    #   * {Types::DescribeAssetBundleImportJobResponse#aws_account_id #aws_account_id} => String
    #   * {Types::DescribeAssetBundleImportJobResponse#asset_bundle_import_source #asset_bundle_import_source} => Types::AssetBundleImportSourceDescription
    #   * {Types::DescribeAssetBundleImportJobResponse#override_parameters #override_parameters} => Types::AssetBundleImportJobOverrideParameters
    #   * {Types::DescribeAssetBundleImportJobResponse#failure_action #failure_action} => String
    #   * {Types::DescribeAssetBundleImportJobResponse#request_id #request_id} => String
    #   * {Types::DescribeAssetBundleImportJobResponse#status #status} => Integer
    #   * {Types::DescribeAssetBundleImportJobResponse#override_permissions #override_permissions} => Types::AssetBundleImportJobOverridePermissions
    #   * {Types::DescribeAssetBundleImportJobResponse#override_tags #override_tags} => Types::AssetBundleImportJobOverrideTags
    #   * {Types::DescribeAssetBundleImportJobResponse#override_validation_strategy #override_validation_strategy} => Types::AssetBundleImportJobOverrideValidationStrategy
    #   * {Types::DescribeAssetBundleImportJobResponse#warnings #warnings} => Array&lt;Types::AssetBundleImportJobWarning&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_asset_bundle_import_job({
    #     aws_account_id: "AwsAccountId", # required
    #     asset_bundle_import_job_id: "ShortRestrictiveResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.job_status #=> String, one of "QUEUED_FOR_IMMEDIATE_EXECUTION", "IN_PROGRESS", "SUCCESSFUL", "FAILED", "FAILED_ROLLBACK_IN_PROGRESS", "FAILED_ROLLBACK_COMPLETED", "FAILED_ROLLBACK_ERROR"
    #   resp.errors #=> Array
    #   resp.errors[0].arn #=> String
    #   resp.errors[0].type #=> String
    #   resp.errors[0].message #=> String
    #   resp.rollback_errors #=> Array
    #   resp.rollback_errors[0].arn #=> String
    #   resp.rollback_errors[0].type #=> String
    #   resp.rollback_errors[0].message #=> String
    #   resp.arn #=> String
    #   resp.created_time #=> Time
    #   resp.asset_bundle_import_job_id #=> String
    #   resp.aws_account_id #=> String
    #   resp.asset_bundle_import_source.body #=> String
    #   resp.asset_bundle_import_source.s3_uri #=> String
    #   resp.override_parameters.resource_id_override_configuration.prefix_for_all_resources #=> String
    #   resp.override_parameters.vpc_connections #=> Array
    #   resp.override_parameters.vpc_connections[0].vpc_connection_id #=> String
    #   resp.override_parameters.vpc_connections[0].name #=> String
    #   resp.override_parameters.vpc_connections[0].subnet_ids #=> Array
    #   resp.override_parameters.vpc_connections[0].subnet_ids[0] #=> String
    #   resp.override_parameters.vpc_connections[0].security_group_ids #=> Array
    #   resp.override_parameters.vpc_connections[0].security_group_ids[0] #=> String
    #   resp.override_parameters.vpc_connections[0].dns_resolvers #=> Array
    #   resp.override_parameters.vpc_connections[0].dns_resolvers[0] #=> String
    #   resp.override_parameters.vpc_connections[0].role_arn #=> String
    #   resp.override_parameters.refresh_schedules #=> Array
    #   resp.override_parameters.refresh_schedules[0].data_set_id #=> String
    #   resp.override_parameters.refresh_schedules[0].schedule_id #=> String
    #   resp.override_parameters.refresh_schedules[0].start_after_date_time #=> Time
    #   resp.override_parameters.data_sources #=> Array
    #   resp.override_parameters.data_sources[0].data_source_id #=> String
    #   resp.override_parameters.data_sources[0].name #=> String
    #   resp.override_parameters.data_sources[0].data_source_parameters.amazon_elasticsearch_parameters.domain #=> String
    #   resp.override_parameters.data_sources[0].data_source_parameters.athena_parameters.work_group #=> String
    #   resp.override_parameters.data_sources[0].data_source_parameters.athena_parameters.role_arn #=> String
    #   resp.override_parameters.data_sources[0].data_source_parameters.athena_parameters.identity_center_configuration.enable_identity_propagation #=> Boolean
    #   resp.override_parameters.data_sources[0].data_source_parameters.aurora_parameters.host #=> String
    #   resp.override_parameters.data_sources[0].data_source_parameters.aurora_parameters.port #=> Integer
    #   resp.override_parameters.data_sources[0].data_source_parameters.aurora_parameters.database #=> String
    #   resp.override_parameters.data_sources[0].data_source_parameters.aurora_postgre_sql_parameters.host #=> String
    #   resp.override_parameters.data_sources[0].data_source_parameters.aurora_postgre_sql_parameters.port #=> Integer
    #   resp.override_parameters.data_sources[0].data_source_parameters.aurora_postgre_sql_parameters.database #=> String
    #   resp.override_parameters.data_sources[0].data_source_parameters.aws_iot_analytics_parameters.data_set_name #=> String
    #   resp.override_parameters.data_sources[0].data_source_parameters.jira_parameters.site_base_url #=> String
    #   resp.override_parameters.data_sources[0].data_source_parameters.maria_db_parameters.host #=> String
    #   resp.override_parameters.data_sources[0].data_source_parameters.maria_db_parameters.port #=> Integer
    #   resp.override_parameters.data_sources[0].data_source_parameters.maria_db_parameters.database #=> String
    #   resp.override_parameters.data_sources[0].data_source_parameters.my_sql_parameters.host #=> String
    #   resp.override_parameters.data_sources[0].data_source_parameters.my_sql_parameters.port #=> Integer
    #   resp.override_parameters.data_sources[0].data_source_parameters.my_sql_parameters.database #=> String
    #   resp.override_parameters.data_sources[0].data_source_parameters.oracle_parameters.host #=> String
    #   resp.override_parameters.data_sources[0].data_source_parameters.oracle_parameters.port #=> Integer
    #   resp.override_parameters.data_sources[0].data_source_parameters.oracle_parameters.database #=> String
    #   resp.override_parameters.data_sources[0].data_source_parameters.oracle_parameters.use_service_name #=> Boolean
    #   resp.override_parameters.data_sources[0].data_source_parameters.postgre_sql_parameters.host #=> String
    #   resp.override_parameters.data_sources[0].data_source_parameters.postgre_sql_parameters.port #=> Integer
    #   resp.override_parameters.data_sources[0].data_source_parameters.postgre_sql_parameters.database #=> String
    #   resp.override_parameters.data_sources[0].data_source_parameters.presto_parameters.host #=> String
    #   resp.override_parameters.data_sources[0].data_source_parameters.presto_parameters.port #=> Integer
    #   resp.override_parameters.data_sources[0].data_source_parameters.presto_parameters.catalog #=> String
    #   resp.override_parameters.data_sources[0].data_source_parameters.rds_parameters.instance_id #=> String
    #   resp.override_parameters.data_sources[0].data_source_parameters.rds_parameters.database #=> String
    #   resp.override_parameters.data_sources[0].data_source_parameters.redshift_parameters.host #=> String
    #   resp.override_parameters.data_sources[0].data_source_parameters.redshift_parameters.port #=> Integer
    #   resp.override_parameters.data_sources[0].data_source_parameters.redshift_parameters.database #=> String
    #   resp.override_parameters.data_sources[0].data_source_parameters.redshift_parameters.cluster_id #=> String
    #   resp.override_parameters.data_sources[0].data_source_parameters.redshift_parameters.iam_parameters.role_arn #=> String
    #   resp.override_parameters.data_sources[0].data_source_parameters.redshift_parameters.iam_parameters.database_user #=> String
    #   resp.override_parameters.data_sources[0].data_source_parameters.redshift_parameters.iam_parameters.database_groups #=> Array
    #   resp.override_parameters.data_sources[0].data_source_parameters.redshift_parameters.iam_parameters.database_groups[0] #=> String
    #   resp.override_parameters.data_sources[0].data_source_parameters.redshift_parameters.iam_parameters.auto_create_database_user #=> Boolean
    #   resp.override_parameters.data_sources[0].data_source_parameters.redshift_parameters.identity_center_configuration.enable_identity_propagation #=> Boolean
    #   resp.override_parameters.data_sources[0].data_source_parameters.s3_parameters.manifest_file_location.bucket #=> String
    #   resp.override_parameters.data_sources[0].data_source_parameters.s3_parameters.manifest_file_location.key #=> String
    #   resp.override_parameters.data_sources[0].data_source_parameters.s3_parameters.role_arn #=> String
    #   resp.override_parameters.data_sources[0].data_source_parameters.service_now_parameters.site_base_url #=> String
    #   resp.override_parameters.data_sources[0].data_source_parameters.snowflake_parameters.host #=> String
    #   resp.override_parameters.data_sources[0].data_source_parameters.snowflake_parameters.database #=> String
    #   resp.override_parameters.data_sources[0].data_source_parameters.snowflake_parameters.warehouse #=> String
    #   resp.override_parameters.data_sources[0].data_source_parameters.snowflake_parameters.authentication_type #=> String, one of "PASSWORD", "TOKEN", "X509"
    #   resp.override_parameters.data_sources[0].data_source_parameters.snowflake_parameters.database_access_control_role #=> String
    #   resp.override_parameters.data_sources[0].data_source_parameters.snowflake_parameters.o_auth_parameters.token_provider_url #=> String
    #   resp.override_parameters.data_sources[0].data_source_parameters.snowflake_parameters.o_auth_parameters.o_auth_scope #=> String
    #   resp.override_parameters.data_sources[0].data_source_parameters.snowflake_parameters.o_auth_parameters.identity_provider_vpc_connection_properties.vpc_connection_arn #=> String
    #   resp.override_parameters.data_sources[0].data_source_parameters.snowflake_parameters.o_auth_parameters.identity_provider_resource_uri #=> String
    #   resp.override_parameters.data_sources[0].data_source_parameters.spark_parameters.host #=> String
    #   resp.override_parameters.data_sources[0].data_source_parameters.spark_parameters.port #=> Integer
    #   resp.override_parameters.data_sources[0].data_source_parameters.sql_server_parameters.host #=> String
    #   resp.override_parameters.data_sources[0].data_source_parameters.sql_server_parameters.port #=> Integer
    #   resp.override_parameters.data_sources[0].data_source_parameters.sql_server_parameters.database #=> String
    #   resp.override_parameters.data_sources[0].data_source_parameters.teradata_parameters.host #=> String
    #   resp.override_parameters.data_sources[0].data_source_parameters.teradata_parameters.port #=> Integer
    #   resp.override_parameters.data_sources[0].data_source_parameters.teradata_parameters.database #=> String
    #   resp.override_parameters.data_sources[0].data_source_parameters.twitter_parameters.query #=> String
    #   resp.override_parameters.data_sources[0].data_source_parameters.twitter_parameters.max_rows #=> Integer
    #   resp.override_parameters.data_sources[0].data_source_parameters.amazon_open_search_parameters.domain #=> String
    #   resp.override_parameters.data_sources[0].data_source_parameters.exasol_parameters.host #=> String
    #   resp.override_parameters.data_sources[0].data_source_parameters.exasol_parameters.port #=> Integer
    #   resp.override_parameters.data_sources[0].data_source_parameters.databricks_parameters.host #=> String
    #   resp.override_parameters.data_sources[0].data_source_parameters.databricks_parameters.port #=> Integer
    #   resp.override_parameters.data_sources[0].data_source_parameters.databricks_parameters.sql_endpoint_path #=> String
    #   resp.override_parameters.data_sources[0].data_source_parameters.starburst_parameters.host #=> String
    #   resp.override_parameters.data_sources[0].data_source_parameters.starburst_parameters.port #=> Integer
    #   resp.override_parameters.data_sources[0].data_source_parameters.starburst_parameters.catalog #=> String
    #   resp.override_parameters.data_sources[0].data_source_parameters.starburst_parameters.product_type #=> String, one of "GALAXY", "ENTERPRISE"
    #   resp.override_parameters.data_sources[0].data_source_parameters.starburst_parameters.database_access_control_role #=> String
    #   resp.override_parameters.data_sources[0].data_source_parameters.starburst_parameters.authentication_type #=> String, one of "PASSWORD", "TOKEN", "X509"
    #   resp.override_parameters.data_sources[0].data_source_parameters.starburst_parameters.o_auth_parameters.token_provider_url #=> String
    #   resp.override_parameters.data_sources[0].data_source_parameters.starburst_parameters.o_auth_parameters.o_auth_scope #=> String
    #   resp.override_parameters.data_sources[0].data_source_parameters.starburst_parameters.o_auth_parameters.identity_provider_vpc_connection_properties.vpc_connection_arn #=> String
    #   resp.override_parameters.data_sources[0].data_source_parameters.starburst_parameters.o_auth_parameters.identity_provider_resource_uri #=> String
    #   resp.override_parameters.data_sources[0].data_source_parameters.trino_parameters.host #=> String
    #   resp.override_parameters.data_sources[0].data_source_parameters.trino_parameters.port #=> Integer
    #   resp.override_parameters.data_sources[0].data_source_parameters.trino_parameters.catalog #=> String
    #   resp.override_parameters.data_sources[0].data_source_parameters.big_query_parameters.project_id #=> String
    #   resp.override_parameters.data_sources[0].data_source_parameters.big_query_parameters.data_set_region #=> String
    #   resp.override_parameters.data_sources[0].data_source_parameters.impala_parameters.host #=> String
    #   resp.override_parameters.data_sources[0].data_source_parameters.impala_parameters.port #=> Integer
    #   resp.override_parameters.data_sources[0].data_source_parameters.impala_parameters.database #=> String
    #   resp.override_parameters.data_sources[0].data_source_parameters.impala_parameters.sql_endpoint_path #=> String
    #   resp.override_parameters.data_sources[0].data_source_parameters.custom_connection_parameters.connection_type #=> String
    #   resp.override_parameters.data_sources[0].vpc_connection_properties.vpc_connection_arn #=> String
    #   resp.override_parameters.data_sources[0].ssl_properties.disable_ssl #=> Boolean
    #   resp.override_parameters.data_sources[0].credentials.credential_pair.username #=> String
    #   resp.override_parameters.data_sources[0].credentials.credential_pair.password #=> String
    #   resp.override_parameters.data_sources[0].credentials.secret_arn #=> String
    #   resp.override_parameters.data_sets #=> Array
    #   resp.override_parameters.data_sets[0].data_set_id #=> String
    #   resp.override_parameters.data_sets[0].name #=> String
    #   resp.override_parameters.data_sets[0].data_set_refresh_properties.refresh_configuration.incremental_refresh.lookback_window.column_name #=> String
    #   resp.override_parameters.data_sets[0].data_set_refresh_properties.refresh_configuration.incremental_refresh.lookback_window.size #=> Integer
    #   resp.override_parameters.data_sets[0].data_set_refresh_properties.refresh_configuration.incremental_refresh.lookback_window.size_unit #=> String, one of "HOUR", "DAY", "WEEK"
    #   resp.override_parameters.data_sets[0].data_set_refresh_properties.failure_configuration.email_alert.alert_status #=> String, one of "ENABLED", "DISABLED"
    #   resp.override_parameters.themes #=> Array
    #   resp.override_parameters.themes[0].theme_id #=> String
    #   resp.override_parameters.themes[0].name #=> String
    #   resp.override_parameters.analyses #=> Array
    #   resp.override_parameters.analyses[0].analysis_id #=> String
    #   resp.override_parameters.analyses[0].name #=> String
    #   resp.override_parameters.dashboards #=> Array
    #   resp.override_parameters.dashboards[0].dashboard_id #=> String
    #   resp.override_parameters.dashboards[0].name #=> String
    #   resp.override_parameters.folders #=> Array
    #   resp.override_parameters.folders[0].folder_id #=> String
    #   resp.override_parameters.folders[0].name #=> String
    #   resp.override_parameters.folders[0].parent_folder_arn #=> String
    #   resp.failure_action #=> String, one of "DO_NOTHING", "ROLLBACK"
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #   resp.override_permissions.data_sources #=> Array
    #   resp.override_permissions.data_sources[0].data_source_ids #=> Array
    #   resp.override_permissions.data_sources[0].data_source_ids[0] #=> String
    #   resp.override_permissions.data_sources[0].permissions.principals #=> Array
    #   resp.override_permissions.data_sources[0].permissions.principals[0] #=> String
    #   resp.override_permissions.data_sources[0].permissions.actions #=> Array
    #   resp.override_permissions.data_sources[0].permissions.actions[0] #=> String
    #   resp.override_permissions.data_sets #=> Array
    #   resp.override_permissions.data_sets[0].data_set_ids #=> Array
    #   resp.override_permissions.data_sets[0].data_set_ids[0] #=> String
    #   resp.override_permissions.data_sets[0].permissions.principals #=> Array
    #   resp.override_permissions.data_sets[0].permissions.principals[0] #=> String
    #   resp.override_permissions.data_sets[0].permissions.actions #=> Array
    #   resp.override_permissions.data_sets[0].permissions.actions[0] #=> String
    #   resp.override_permissions.themes #=> Array
    #   resp.override_permissions.themes[0].theme_ids #=> Array
    #   resp.override_permissions.themes[0].theme_ids[0] #=> String
    #   resp.override_permissions.themes[0].permissions.principals #=> Array
    #   resp.override_permissions.themes[0].permissions.principals[0] #=> String
    #   resp.override_permissions.themes[0].permissions.actions #=> Array
    #   resp.override_permissions.themes[0].permissions.actions[0] #=> String
    #   resp.override_permissions.analyses #=> Array
    #   resp.override_permissions.analyses[0].analysis_ids #=> Array
    #   resp.override_permissions.analyses[0].analysis_ids[0] #=> String
    #   resp.override_permissions.analyses[0].permissions.principals #=> Array
    #   resp.override_permissions.analyses[0].permissions.principals[0] #=> String
    #   resp.override_permissions.analyses[0].permissions.actions #=> Array
    #   resp.override_permissions.analyses[0].permissions.actions[0] #=> String
    #   resp.override_permissions.dashboards #=> Array
    #   resp.override_permissions.dashboards[0].dashboard_ids #=> Array
    #   resp.override_permissions.dashboards[0].dashboard_ids[0] #=> String
    #   resp.override_permissions.dashboards[0].permissions.principals #=> Array
    #   resp.override_permissions.dashboards[0].permissions.principals[0] #=> String
    #   resp.override_permissions.dashboards[0].permissions.actions #=> Array
    #   resp.override_permissions.dashboards[0].permissions.actions[0] #=> String
    #   resp.override_permissions.dashboards[0].link_sharing_configuration.permissions.principals #=> Array
    #   resp.override_permissions.dashboards[0].link_sharing_configuration.permissions.principals[0] #=> String
    #   resp.override_permissions.dashboards[0].link_sharing_configuration.permissions.actions #=> Array
    #   resp.override_permissions.dashboards[0].link_sharing_configuration.permissions.actions[0] #=> String
    #   resp.override_permissions.folders #=> Array
    #   resp.override_permissions.folders[0].folder_ids #=> Array
    #   resp.override_permissions.folders[0].folder_ids[0] #=> String
    #   resp.override_permissions.folders[0].permissions.principals #=> Array
    #   resp.override_permissions.folders[0].permissions.principals[0] #=> String
    #   resp.override_permissions.folders[0].permissions.actions #=> Array
    #   resp.override_permissions.folders[0].permissions.actions[0] #=> String
    #   resp.override_tags.vpc_connections #=> Array
    #   resp.override_tags.vpc_connections[0].vpc_connection_ids #=> Array
    #   resp.override_tags.vpc_connections[0].vpc_connection_ids[0] #=> String
    #   resp.override_tags.vpc_connections[0].tags #=> Array
    #   resp.override_tags.vpc_connections[0].tags[0].key #=> String
    #   resp.override_tags.vpc_connections[0].tags[0].value #=> String
    #   resp.override_tags.data_sources #=> Array
    #   resp.override_tags.data_sources[0].data_source_ids #=> Array
    #   resp.override_tags.data_sources[0].data_source_ids[0] #=> String
    #   resp.override_tags.data_sources[0].tags #=> Array
    #   resp.override_tags.data_sources[0].tags[0].key #=> String
    #   resp.override_tags.data_sources[0].tags[0].value #=> String
    #   resp.override_tags.data_sets #=> Array
    #   resp.override_tags.data_sets[0].data_set_ids #=> Array
    #   resp.override_tags.data_sets[0].data_set_ids[0] #=> String
    #   resp.override_tags.data_sets[0].tags #=> Array
    #   resp.override_tags.data_sets[0].tags[0].key #=> String
    #   resp.override_tags.data_sets[0].tags[0].value #=> String
    #   resp.override_tags.themes #=> Array
    #   resp.override_tags.themes[0].theme_ids #=> Array
    #   resp.override_tags.themes[0].theme_ids[0] #=> String
    #   resp.override_tags.themes[0].tags #=> Array
    #   resp.override_tags.themes[0].tags[0].key #=> String
    #   resp.override_tags.themes[0].tags[0].value #=> String
    #   resp.override_tags.analyses #=> Array
    #   resp.override_tags.analyses[0].analysis_ids #=> Array
    #   resp.override_tags.analyses[0].analysis_ids[0] #=> String
    #   resp.override_tags.analyses[0].tags #=> Array
    #   resp.override_tags.analyses[0].tags[0].key #=> String
    #   resp.override_tags.analyses[0].tags[0].value #=> String
    #   resp.override_tags.dashboards #=> Array
    #   resp.override_tags.dashboards[0].dashboard_ids #=> Array
    #   resp.override_tags.dashboards[0].dashboard_ids[0] #=> String
    #   resp.override_tags.dashboards[0].tags #=> Array
    #   resp.override_tags.dashboards[0].tags[0].key #=> String
    #   resp.override_tags.dashboards[0].tags[0].value #=> String
    #   resp.override_tags.folders #=> Array
    #   resp.override_tags.folders[0].folder_ids #=> Array
    #   resp.override_tags.folders[0].folder_ids[0] #=> String
    #   resp.override_tags.folders[0].tags #=> Array
    #   resp.override_tags.folders[0].tags[0].key #=> String
    #   resp.override_tags.folders[0].tags[0].value #=> String
    #   resp.override_validation_strategy.strict_mode_for_all_resources #=> Boolean
    #   resp.warnings #=> Array
    #   resp.warnings[0].arn #=> String
    #   resp.warnings[0].message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeAssetBundleImportJob AWS API Documentation
    #
    # @overload describe_asset_bundle_import_job(params = {})
    # @param [Hash] params ({})
    def describe_asset_bundle_import_job(params = {}, options = {})
      req = build_request(:describe_asset_bundle_import_job, params)
      req.send_request(options)
    end

    # Describes a brand.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that owns the brand.
    #
    # @option params [required, String] :brand_id
    #   The ID of the QuickSight brand.
    #
    # @option params [String] :version_id
    #   The ID of the specific version. The default value is the latest
    #   version.
    #
    # @return [Types::DescribeBrandResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeBrandResponse#request_id #request_id} => String
    #   * {Types::DescribeBrandResponse#brand_detail #brand_detail} => Types::BrandDetail
    #   * {Types::DescribeBrandResponse#brand_definition #brand_definition} => Types::BrandDefinition
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_brand({
    #     aws_account_id: "AwsAccountId", # required
    #     brand_id: "ShortRestrictiveResourceId", # required
    #     version_id: "ShortRestrictiveResourceId",
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.brand_detail.brand_id #=> String
    #   resp.brand_detail.arn #=> String
    #   resp.brand_detail.brand_status #=> String, one of "CREATE_IN_PROGRESS", "CREATE_SUCCEEDED", "CREATE_FAILED", "DELETE_IN_PROGRESS", "DELETE_FAILED"
    #   resp.brand_detail.created_time #=> Time
    #   resp.brand_detail.last_updated_time #=> Time
    #   resp.brand_detail.version_id #=> String
    #   resp.brand_detail.version_status #=> String, one of "CREATE_IN_PROGRESS", "CREATE_SUCCEEDED", "CREATE_FAILED"
    #   resp.brand_detail.errors #=> Array
    #   resp.brand_detail.errors[0] #=> String
    #   resp.brand_detail.logo.alt_text #=> String
    #   resp.brand_detail.logo.logo_set.primary.original.source.public_url #=> String
    #   resp.brand_detail.logo.logo_set.primary.original.source.s3_uri #=> String
    #   resp.brand_detail.logo.logo_set.primary.original.generated_image_url #=> String
    #   resp.brand_detail.logo.logo_set.primary.height_64.source.public_url #=> String
    #   resp.brand_detail.logo.logo_set.primary.height_64.source.s3_uri #=> String
    #   resp.brand_detail.logo.logo_set.primary.height_64.generated_image_url #=> String
    #   resp.brand_detail.logo.logo_set.primary.height_32.source.public_url #=> String
    #   resp.brand_detail.logo.logo_set.primary.height_32.source.s3_uri #=> String
    #   resp.brand_detail.logo.logo_set.primary.height_32.generated_image_url #=> String
    #   resp.brand_detail.logo.logo_set.favicon.original.source.public_url #=> String
    #   resp.brand_detail.logo.logo_set.favicon.original.source.s3_uri #=> String
    #   resp.brand_detail.logo.logo_set.favicon.original.generated_image_url #=> String
    #   resp.brand_detail.logo.logo_set.favicon.height_64.source.public_url #=> String
    #   resp.brand_detail.logo.logo_set.favicon.height_64.source.s3_uri #=> String
    #   resp.brand_detail.logo.logo_set.favicon.height_64.generated_image_url #=> String
    #   resp.brand_detail.logo.logo_set.favicon.height_32.source.public_url #=> String
    #   resp.brand_detail.logo.logo_set.favicon.height_32.source.s3_uri #=> String
    #   resp.brand_detail.logo.logo_set.favicon.height_32.generated_image_url #=> String
    #   resp.brand_definition.brand_name #=> String
    #   resp.brand_definition.description #=> String
    #   resp.brand_definition.application_theme.brand_color_palette.primary.foreground #=> String
    #   resp.brand_definition.application_theme.brand_color_palette.primary.background #=> String
    #   resp.brand_definition.application_theme.brand_color_palette.secondary.foreground #=> String
    #   resp.brand_definition.application_theme.brand_color_palette.secondary.background #=> String
    #   resp.brand_definition.application_theme.brand_color_palette.accent.foreground #=> String
    #   resp.brand_definition.application_theme.brand_color_palette.accent.background #=> String
    #   resp.brand_definition.application_theme.brand_color_palette.measure.foreground #=> String
    #   resp.brand_definition.application_theme.brand_color_palette.measure.background #=> String
    #   resp.brand_definition.application_theme.brand_color_palette.dimension.foreground #=> String
    #   resp.brand_definition.application_theme.brand_color_palette.dimension.background #=> String
    #   resp.brand_definition.application_theme.brand_color_palette.success.foreground #=> String
    #   resp.brand_definition.application_theme.brand_color_palette.success.background #=> String
    #   resp.brand_definition.application_theme.brand_color_palette.info.foreground #=> String
    #   resp.brand_definition.application_theme.brand_color_palette.info.background #=> String
    #   resp.brand_definition.application_theme.brand_color_palette.warning.foreground #=> String
    #   resp.brand_definition.application_theme.brand_color_palette.warning.background #=> String
    #   resp.brand_definition.application_theme.brand_color_palette.danger.foreground #=> String
    #   resp.brand_definition.application_theme.brand_color_palette.danger.background #=> String
    #   resp.brand_definition.application_theme.brand_element_style.navbar_style.global_navbar.foreground #=> String
    #   resp.brand_definition.application_theme.brand_element_style.navbar_style.global_navbar.background #=> String
    #   resp.brand_definition.application_theme.brand_element_style.navbar_style.contextual_navbar.foreground #=> String
    #   resp.brand_definition.application_theme.brand_element_style.navbar_style.contextual_navbar.background #=> String
    #   resp.brand_definition.logo_configuration.alt_text #=> String
    #   resp.brand_definition.logo_configuration.logo_set.primary.original.source.public_url #=> String
    #   resp.brand_definition.logo_configuration.logo_set.primary.original.source.s3_uri #=> String
    #   resp.brand_definition.logo_configuration.logo_set.favicon.original.source.public_url #=> String
    #   resp.brand_definition.logo_configuration.logo_set.favicon.original.source.s3_uri #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeBrand AWS API Documentation
    #
    # @overload describe_brand(params = {})
    # @param [Hash] params ({})
    def describe_brand(params = {}, options = {})
      req = build_request(:describe_brand, params)
      req.send_request(options)
    end

    # Describes a brand assignment.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that owns the brand
    #   assignment.
    #
    # @return [Types::DescribeBrandAssignmentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeBrandAssignmentResponse#request_id #request_id} => String
    #   * {Types::DescribeBrandAssignmentResponse#brand_arn #brand_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_brand_assignment({
    #     aws_account_id: "AwsAccountId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.brand_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeBrandAssignment AWS API Documentation
    #
    # @overload describe_brand_assignment(params = {})
    # @param [Hash] params ({})
    def describe_brand_assignment(params = {}, options = {})
      req = build_request(:describe_brand_assignment, params)
      req.send_request(options)
    end

    # Describes the published version of the brand.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that owns the brand.
    #
    # @option params [required, String] :brand_id
    #   The ID of the QuickSight brand.
    #
    # @return [Types::DescribeBrandPublishedVersionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeBrandPublishedVersionResponse#request_id #request_id} => String
    #   * {Types::DescribeBrandPublishedVersionResponse#brand_detail #brand_detail} => Types::BrandDetail
    #   * {Types::DescribeBrandPublishedVersionResponse#brand_definition #brand_definition} => Types::BrandDefinition
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_brand_published_version({
    #     aws_account_id: "AwsAccountId", # required
    #     brand_id: "ShortRestrictiveResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.brand_detail.brand_id #=> String
    #   resp.brand_detail.arn #=> String
    #   resp.brand_detail.brand_status #=> String, one of "CREATE_IN_PROGRESS", "CREATE_SUCCEEDED", "CREATE_FAILED", "DELETE_IN_PROGRESS", "DELETE_FAILED"
    #   resp.brand_detail.created_time #=> Time
    #   resp.brand_detail.last_updated_time #=> Time
    #   resp.brand_detail.version_id #=> String
    #   resp.brand_detail.version_status #=> String, one of "CREATE_IN_PROGRESS", "CREATE_SUCCEEDED", "CREATE_FAILED"
    #   resp.brand_detail.errors #=> Array
    #   resp.brand_detail.errors[0] #=> String
    #   resp.brand_detail.logo.alt_text #=> String
    #   resp.brand_detail.logo.logo_set.primary.original.source.public_url #=> String
    #   resp.brand_detail.logo.logo_set.primary.original.source.s3_uri #=> String
    #   resp.brand_detail.logo.logo_set.primary.original.generated_image_url #=> String
    #   resp.brand_detail.logo.logo_set.primary.height_64.source.public_url #=> String
    #   resp.brand_detail.logo.logo_set.primary.height_64.source.s3_uri #=> String
    #   resp.brand_detail.logo.logo_set.primary.height_64.generated_image_url #=> String
    #   resp.brand_detail.logo.logo_set.primary.height_32.source.public_url #=> String
    #   resp.brand_detail.logo.logo_set.primary.height_32.source.s3_uri #=> String
    #   resp.brand_detail.logo.logo_set.primary.height_32.generated_image_url #=> String
    #   resp.brand_detail.logo.logo_set.favicon.original.source.public_url #=> String
    #   resp.brand_detail.logo.logo_set.favicon.original.source.s3_uri #=> String
    #   resp.brand_detail.logo.logo_set.favicon.original.generated_image_url #=> String
    #   resp.brand_detail.logo.logo_set.favicon.height_64.source.public_url #=> String
    #   resp.brand_detail.logo.logo_set.favicon.height_64.source.s3_uri #=> String
    #   resp.brand_detail.logo.logo_set.favicon.height_64.generated_image_url #=> String
    #   resp.brand_detail.logo.logo_set.favicon.height_32.source.public_url #=> String
    #   resp.brand_detail.logo.logo_set.favicon.height_32.source.s3_uri #=> String
    #   resp.brand_detail.logo.logo_set.favicon.height_32.generated_image_url #=> String
    #   resp.brand_definition.brand_name #=> String
    #   resp.brand_definition.description #=> String
    #   resp.brand_definition.application_theme.brand_color_palette.primary.foreground #=> String
    #   resp.brand_definition.application_theme.brand_color_palette.primary.background #=> String
    #   resp.brand_definition.application_theme.brand_color_palette.secondary.foreground #=> String
    #   resp.brand_definition.application_theme.brand_color_palette.secondary.background #=> String
    #   resp.brand_definition.application_theme.brand_color_palette.accent.foreground #=> String
    #   resp.brand_definition.application_theme.brand_color_palette.accent.background #=> String
    #   resp.brand_definition.application_theme.brand_color_palette.measure.foreground #=> String
    #   resp.brand_definition.application_theme.brand_color_palette.measure.background #=> String
    #   resp.brand_definition.application_theme.brand_color_palette.dimension.foreground #=> String
    #   resp.brand_definition.application_theme.brand_color_palette.dimension.background #=> String
    #   resp.brand_definition.application_theme.brand_color_palette.success.foreground #=> String
    #   resp.brand_definition.application_theme.brand_color_palette.success.background #=> String
    #   resp.brand_definition.application_theme.brand_color_palette.info.foreground #=> String
    #   resp.brand_definition.application_theme.brand_color_palette.info.background #=> String
    #   resp.brand_definition.application_theme.brand_color_palette.warning.foreground #=> String
    #   resp.brand_definition.application_theme.brand_color_palette.warning.background #=> String
    #   resp.brand_definition.application_theme.brand_color_palette.danger.foreground #=> String
    #   resp.brand_definition.application_theme.brand_color_palette.danger.background #=> String
    #   resp.brand_definition.application_theme.brand_element_style.navbar_style.global_navbar.foreground #=> String
    #   resp.brand_definition.application_theme.brand_element_style.navbar_style.global_navbar.background #=> String
    #   resp.brand_definition.application_theme.brand_element_style.navbar_style.contextual_navbar.foreground #=> String
    #   resp.brand_definition.application_theme.brand_element_style.navbar_style.contextual_navbar.background #=> String
    #   resp.brand_definition.logo_configuration.alt_text #=> String
    #   resp.brand_definition.logo_configuration.logo_set.primary.original.source.public_url #=> String
    #   resp.brand_definition.logo_configuration.logo_set.primary.original.source.s3_uri #=> String
    #   resp.brand_definition.logo_configuration.logo_set.favicon.original.source.public_url #=> String
    #   resp.brand_definition.logo_configuration.logo_set.favicon.original.source.s3_uri #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeBrandPublishedVersion AWS API Documentation
    #
    # @overload describe_brand_published_version(params = {})
    # @param [Hash] params ({})
    def describe_brand_published_version(params = {}, options = {})
      req = build_request(:describe_brand_published_version, params)
      req.send_request(options)
    end

    # Describes a custom permissions profile.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that contains the custom
    #   permissions profile that you want described.
    #
    # @option params [required, String] :custom_permissions_name
    #   The name of the custom permissions profile to describe.
    #
    # @return [Types::DescribeCustomPermissionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeCustomPermissionsResponse#status #status} => Integer
    #   * {Types::DescribeCustomPermissionsResponse#custom_permissions #custom_permissions} => Types::CustomPermissions
    #   * {Types::DescribeCustomPermissionsResponse#request_id #request_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_custom_permissions({
    #     aws_account_id: "AwsAccountId", # required
    #     custom_permissions_name: "CustomPermissionsName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> Integer
    #   resp.custom_permissions.arn #=> String
    #   resp.custom_permissions.custom_permissions_name #=> String
    #   resp.custom_permissions.capabilities.export_to_csv #=> String, one of "DENY"
    #   resp.custom_permissions.capabilities.export_to_excel #=> String, one of "DENY"
    #   resp.custom_permissions.capabilities.export_to_pdf #=> String, one of "DENY"
    #   resp.custom_permissions.capabilities.print_reports #=> String, one of "DENY"
    #   resp.custom_permissions.capabilities.create_and_update_themes #=> String, one of "DENY"
    #   resp.custom_permissions.capabilities.add_or_run_anomaly_detection_for_analyses #=> String, one of "DENY"
    #   resp.custom_permissions.capabilities.share_analyses #=> String, one of "DENY"
    #   resp.custom_permissions.capabilities.create_and_update_datasets #=> String, one of "DENY"
    #   resp.custom_permissions.capabilities.share_datasets #=> String, one of "DENY"
    #   resp.custom_permissions.capabilities.subscribe_dashboard_email_reports #=> String, one of "DENY"
    #   resp.custom_permissions.capabilities.create_and_update_dashboard_email_reports #=> String, one of "DENY"
    #   resp.custom_permissions.capabilities.share_dashboards #=> String, one of "DENY"
    #   resp.custom_permissions.capabilities.create_and_update_threshold_alerts #=> String, one of "DENY"
    #   resp.custom_permissions.capabilities.rename_shared_folders #=> String, one of "DENY"
    #   resp.custom_permissions.capabilities.create_shared_folders #=> String, one of "DENY"
    #   resp.custom_permissions.capabilities.create_and_update_data_sources #=> String, one of "DENY"
    #   resp.custom_permissions.capabilities.share_data_sources #=> String, one of "DENY"
    #   resp.custom_permissions.capabilities.view_account_spice_capacity #=> String, one of "DENY"
    #   resp.custom_permissions.capabilities.create_spice_dataset #=> String, one of "DENY"
    #   resp.custom_permissions.capabilities.export_to_pdf_in_scheduled_reports #=> String, one of "DENY"
    #   resp.custom_permissions.capabilities.export_to_csv_in_scheduled_reports #=> String, one of "DENY"
    #   resp.custom_permissions.capabilities.export_to_excel_in_scheduled_reports #=> String, one of "DENY"
    #   resp.custom_permissions.capabilities.include_content_in_scheduled_reports_email #=> String, one of "DENY"
    #   resp.custom_permissions.capabilities.dashboard #=> String, one of "DENY"
    #   resp.custom_permissions.capabilities.analysis #=> String, one of "DENY"
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeCustomPermissions AWS API Documentation
    #
    # @overload describe_custom_permissions(params = {})
    # @param [Hash] params ({})
    def describe_custom_permissions(params = {}, options = {})
      req = build_request(:describe_custom_permissions, params)
      req.send_request(options)
    end

    # Provides a summary for a dashboard.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that contains the dashboard
    #   that you're describing.
    #
    # @option params [required, String] :dashboard_id
    #   The ID for the dashboard.
    #
    # @option params [Integer] :version_number
    #   The version number for the dashboard. If a version number isn't
    #   passed, the latest published dashboard version is described.
    #
    # @option params [String] :alias_name
    #   The alias name.
    #
    # @return [Types::DescribeDashboardResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDashboardResponse#dashboard #dashboard} => Types::Dashboard
    #   * {Types::DescribeDashboardResponse#status #status} => Integer
    #   * {Types::DescribeDashboardResponse#request_id #request_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_dashboard({
    #     aws_account_id: "AwsAccountId", # required
    #     dashboard_id: "ShortRestrictiveResourceId", # required
    #     version_number: 1,
    #     alias_name: "AliasName",
    #   })
    #
    # @example Response structure
    #
    #   resp.dashboard.dashboard_id #=> String
    #   resp.dashboard.arn #=> String
    #   resp.dashboard.name #=> String
    #   resp.dashboard.version.created_time #=> Time
    #   resp.dashboard.version.errors #=> Array
    #   resp.dashboard.version.errors[0].type #=> String, one of "ACCESS_DENIED", "SOURCE_NOT_FOUND", "DATA_SET_NOT_FOUND", "INTERNAL_FAILURE", "PARAMETER_VALUE_INCOMPATIBLE", "PARAMETER_TYPE_INVALID", "PARAMETER_NOT_FOUND", "COLUMN_TYPE_MISMATCH", "COLUMN_GEOGRAPHIC_ROLE_MISMATCH", "COLUMN_REPLACEMENT_MISSING"
    #   resp.dashboard.version.errors[0].message #=> String
    #   resp.dashboard.version.errors[0].violated_entities #=> Array
    #   resp.dashboard.version.errors[0].violated_entities[0].path #=> String
    #   resp.dashboard.version.version_number #=> Integer
    #   resp.dashboard.version.status #=> String, one of "CREATION_IN_PROGRESS", "CREATION_SUCCESSFUL", "CREATION_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_SUCCESSFUL", "UPDATE_FAILED", "DELETED"
    #   resp.dashboard.version.arn #=> String
    #   resp.dashboard.version.source_entity_arn #=> String
    #   resp.dashboard.version.data_set_arns #=> Array
    #   resp.dashboard.version.data_set_arns[0] #=> String
    #   resp.dashboard.version.description #=> String
    #   resp.dashboard.version.theme_arn #=> String
    #   resp.dashboard.version.sheets #=> Array
    #   resp.dashboard.version.sheets[0].sheet_id #=> String
    #   resp.dashboard.version.sheets[0].name #=> String
    #   resp.dashboard.version.sheets[0].images #=> Array
    #   resp.dashboard.version.sheets[0].images[0].sheet_image_id #=> String
    #   resp.dashboard.version.sheets[0].images[0].source.sheet_image_static_file_source.static_file_id #=> String
    #   resp.dashboard.version.sheets[0].images[0].scaling.scaling_type #=> String, one of "SCALE_TO_WIDTH", "SCALE_TO_HEIGHT", "SCALE_TO_CONTAINER", "SCALE_NONE"
    #   resp.dashboard.version.sheets[0].images[0].tooltip.tooltip_text.plain_text #=> String
    #   resp.dashboard.version.sheets[0].images[0].tooltip.visibility #=> String, one of "HIDDEN", "VISIBLE"
    #   resp.dashboard.version.sheets[0].images[0].image_content_alt_text #=> String
    #   resp.dashboard.version.sheets[0].images[0].interactions.image_menu_option.availability_status #=> String, one of "ENABLED", "DISABLED"
    #   resp.dashboard.version.sheets[0].images[0].actions #=> Array
    #   resp.dashboard.version.sheets[0].images[0].actions[0].custom_action_id #=> String
    #   resp.dashboard.version.sheets[0].images[0].actions[0].name #=> String
    #   resp.dashboard.version.sheets[0].images[0].actions[0].status #=> String, one of "ENABLED", "DISABLED"
    #   resp.dashboard.version.sheets[0].images[0].actions[0].trigger #=> String, one of "CLICK", "MENU"
    #   resp.dashboard.version.sheets[0].images[0].actions[0].action_operations #=> Array
    #   resp.dashboard.version.sheets[0].images[0].actions[0].action_operations[0].navigation_operation.local_navigation_configuration.target_sheet_id #=> String
    #   resp.dashboard.version.sheets[0].images[0].actions[0].action_operations[0].url_operation.url_template #=> String
    #   resp.dashboard.version.sheets[0].images[0].actions[0].action_operations[0].url_operation.url_target #=> String, one of "NEW_TAB", "NEW_WINDOW", "SAME_TAB"
    #   resp.dashboard.version.sheets[0].images[0].actions[0].action_operations[0].set_parameters_operation.parameter_value_configurations #=> Array
    #   resp.dashboard.version.sheets[0].images[0].actions[0].action_operations[0].set_parameters_operation.parameter_value_configurations[0].destination_parameter_name #=> String
    #   resp.dashboard.version.sheets[0].images[0].actions[0].action_operations[0].set_parameters_operation.parameter_value_configurations[0].value.custom_values_configuration.include_null_value #=> Boolean
    #   resp.dashboard.version.sheets[0].images[0].actions[0].action_operations[0].set_parameters_operation.parameter_value_configurations[0].value.custom_values_configuration.custom_values.string_values #=> Array
    #   resp.dashboard.version.sheets[0].images[0].actions[0].action_operations[0].set_parameters_operation.parameter_value_configurations[0].value.custom_values_configuration.custom_values.string_values[0] #=> String
    #   resp.dashboard.version.sheets[0].images[0].actions[0].action_operations[0].set_parameters_operation.parameter_value_configurations[0].value.custom_values_configuration.custom_values.integer_values #=> Array
    #   resp.dashboard.version.sheets[0].images[0].actions[0].action_operations[0].set_parameters_operation.parameter_value_configurations[0].value.custom_values_configuration.custom_values.integer_values[0] #=> Integer
    #   resp.dashboard.version.sheets[0].images[0].actions[0].action_operations[0].set_parameters_operation.parameter_value_configurations[0].value.custom_values_configuration.custom_values.decimal_values #=> Array
    #   resp.dashboard.version.sheets[0].images[0].actions[0].action_operations[0].set_parameters_operation.parameter_value_configurations[0].value.custom_values_configuration.custom_values.decimal_values[0] #=> Float
    #   resp.dashboard.version.sheets[0].images[0].actions[0].action_operations[0].set_parameters_operation.parameter_value_configurations[0].value.custom_values_configuration.custom_values.date_time_values #=> Array
    #   resp.dashboard.version.sheets[0].images[0].actions[0].action_operations[0].set_parameters_operation.parameter_value_configurations[0].value.custom_values_configuration.custom_values.date_time_values[0] #=> Time
    #   resp.dashboard.version.sheets[0].images[0].actions[0].action_operations[0].set_parameters_operation.parameter_value_configurations[0].value.select_all_value_options #=> String, one of "ALL_VALUES"
    #   resp.dashboard.version.sheets[0].images[0].actions[0].action_operations[0].set_parameters_operation.parameter_value_configurations[0].value.source_parameter_name #=> String
    #   resp.dashboard.version.sheets[0].images[0].actions[0].action_operations[0].set_parameters_operation.parameter_value_configurations[0].value.source_field #=> String
    #   resp.dashboard.version.sheets[0].images[0].actions[0].action_operations[0].set_parameters_operation.parameter_value_configurations[0].value.source_column.data_set_identifier #=> String
    #   resp.dashboard.version.sheets[0].images[0].actions[0].action_operations[0].set_parameters_operation.parameter_value_configurations[0].value.source_column.column_name #=> String
    #   resp.dashboard.created_time #=> Time
    #   resp.dashboard.last_published_time #=> Time
    #   resp.dashboard.last_updated_time #=> Time
    #   resp.dashboard.link_entities #=> Array
    #   resp.dashboard.link_entities[0] #=> String
    #   resp.status #=> Integer
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeDashboard AWS API Documentation
    #
    # @overload describe_dashboard(params = {})
    # @param [Hash] params ({})
    def describe_dashboard(params = {}, options = {})
      req = build_request(:describe_dashboard, params)
      req.send_request(options)
    end

    # Provides a detailed description of the definition of a dashboard.
    #
    # <note markdown="1"> If you do not need to know details about the content of a dashboard,
    # for instance if you are trying to check the status of a recently
    # created or updated dashboard, use the [ `DescribeDashboard` ][1]
    # instead.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/quicksight/latest/APIReference/API_DescribeDashboard.html
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that contains the dashboard
    #   that you're describing.
    #
    # @option params [required, String] :dashboard_id
    #   The ID for the dashboard.
    #
    # @option params [Integer] :version_number
    #   The version number for the dashboard. If a version number isn't
    #   passed, the latest published dashboard version is described.
    #
    # @option params [String] :alias_name
    #   The alias name.
    #
    # @return [Types::DescribeDashboardDefinitionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDashboardDefinitionResponse#dashboard_id #dashboard_id} => String
    #   * {Types::DescribeDashboardDefinitionResponse#errors #errors} => Array&lt;Types::DashboardError&gt;
    #   * {Types::DescribeDashboardDefinitionResponse#name #name} => String
    #   * {Types::DescribeDashboardDefinitionResponse#resource_status #resource_status} => String
    #   * {Types::DescribeDashboardDefinitionResponse#theme_arn #theme_arn} => String
    #   * {Types::DescribeDashboardDefinitionResponse#definition #definition} => Types::DashboardVersionDefinition
    #   * {Types::DescribeDashboardDefinitionResponse#status #status} => Integer
    #   * {Types::DescribeDashboardDefinitionResponse#request_id #request_id} => String
    #   * {Types::DescribeDashboardDefinitionResponse#dashboard_publish_options #dashboard_publish_options} => Types::DashboardPublishOptions
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_dashboard_definition({
    #     aws_account_id: "AwsAccountId", # required
    #     dashboard_id: "ShortRestrictiveResourceId", # required
    #     version_number: 1,
    #     alias_name: "AliasName",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeDashboardDefinition AWS API Documentation
    #
    # @overload describe_dashboard_definition(params = {})
    # @param [Hash] params ({})
    def describe_dashboard_definition(params = {}, options = {})
      req = build_request(:describe_dashboard_definition, params)
      req.send_request(options)
    end

    # Describes read and write permissions for a dashboard.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that contains the dashboard
    #   that you're describing permissions for.
    #
    # @option params [required, String] :dashboard_id
    #   The ID for the dashboard, also added to the IAM policy.
    #
    # @return [Types::DescribeDashboardPermissionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDashboardPermissionsResponse#dashboard_id #dashboard_id} => String
    #   * {Types::DescribeDashboardPermissionsResponse#dashboard_arn #dashboard_arn} => String
    #   * {Types::DescribeDashboardPermissionsResponse#permissions #permissions} => Array&lt;Types::ResourcePermission&gt;
    #   * {Types::DescribeDashboardPermissionsResponse#status #status} => Integer
    #   * {Types::DescribeDashboardPermissionsResponse#request_id #request_id} => String
    #   * {Types::DescribeDashboardPermissionsResponse#link_sharing_configuration #link_sharing_configuration} => Types::LinkSharingConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_dashboard_permissions({
    #     aws_account_id: "AwsAccountId", # required
    #     dashboard_id: "ShortRestrictiveResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.dashboard_id #=> String
    #   resp.dashboard_arn #=> String
    #   resp.permissions #=> Array
    #   resp.permissions[0].principal #=> String
    #   resp.permissions[0].actions #=> Array
    #   resp.permissions[0].actions[0] #=> String
    #   resp.status #=> Integer
    #   resp.request_id #=> String
    #   resp.link_sharing_configuration.permissions #=> Array
    #   resp.link_sharing_configuration.permissions[0].principal #=> String
    #   resp.link_sharing_configuration.permissions[0].actions #=> Array
    #   resp.link_sharing_configuration.permissions[0].actions[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeDashboardPermissions AWS API Documentation
    #
    # @overload describe_dashboard_permissions(params = {})
    # @param [Hash] params ({})
    def describe_dashboard_permissions(params = {}, options = {})
      req = build_request(:describe_dashboard_permissions, params)
      req.send_request(options)
    end

    # Describes an existing snapshot job.
    #
    # Poll job descriptions after a job starts to know the status of the
    # job. For information on available status codes, see `JobStatus`.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that the dashboard snapshot
    #   job is executed in.
    #
    # @option params [required, String] :dashboard_id
    #   The ID of the dashboard that you have started a snapshot job for.
    #
    # @option params [required, String] :snapshot_job_id
    #   The ID of the job to be described. The job ID is set when you start a
    #   new job with a `StartDashboardSnapshotJob` API call.
    #
    # @return [Types::DescribeDashboardSnapshotJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDashboardSnapshotJobResponse#aws_account_id #aws_account_id} => String
    #   * {Types::DescribeDashboardSnapshotJobResponse#dashboard_id #dashboard_id} => String
    #   * {Types::DescribeDashboardSnapshotJobResponse#snapshot_job_id #snapshot_job_id} => String
    #   * {Types::DescribeDashboardSnapshotJobResponse#user_configuration #user_configuration} => Types::SnapshotUserConfigurationRedacted
    #   * {Types::DescribeDashboardSnapshotJobResponse#snapshot_configuration #snapshot_configuration} => Types::SnapshotConfiguration
    #   * {Types::DescribeDashboardSnapshotJobResponse#arn #arn} => String
    #   * {Types::DescribeDashboardSnapshotJobResponse#job_status #job_status} => String
    #   * {Types::DescribeDashboardSnapshotJobResponse#created_time #created_time} => Time
    #   * {Types::DescribeDashboardSnapshotJobResponse#last_updated_time #last_updated_time} => Time
    #   * {Types::DescribeDashboardSnapshotJobResponse#request_id #request_id} => String
    #   * {Types::DescribeDashboardSnapshotJobResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_dashboard_snapshot_job({
    #     aws_account_id: "AwsAccountId", # required
    #     dashboard_id: "ShortRestrictiveResourceId", # required
    #     snapshot_job_id: "ShortRestrictiveResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.aws_account_id #=> String
    #   resp.dashboard_id #=> String
    #   resp.snapshot_job_id #=> String
    #   resp.user_configuration.anonymous_users #=> Array
    #   resp.user_configuration.anonymous_users[0].row_level_permission_tag_keys #=> Array
    #   resp.user_configuration.anonymous_users[0].row_level_permission_tag_keys[0] #=> String
    #   resp.snapshot_configuration.file_groups #=> Array
    #   resp.snapshot_configuration.file_groups[0].files #=> Array
    #   resp.snapshot_configuration.file_groups[0].files[0].sheet_selections #=> Array
    #   resp.snapshot_configuration.file_groups[0].files[0].sheet_selections[0].sheet_id #=> String
    #   resp.snapshot_configuration.file_groups[0].files[0].sheet_selections[0].selection_scope #=> String, one of "ALL_VISUALS", "SELECTED_VISUALS"
    #   resp.snapshot_configuration.file_groups[0].files[0].sheet_selections[0].visual_ids #=> Array
    #   resp.snapshot_configuration.file_groups[0].files[0].sheet_selections[0].visual_ids[0] #=> String
    #   resp.snapshot_configuration.file_groups[0].files[0].format_type #=> String, one of "CSV", "PDF", "EXCEL"
    #   resp.snapshot_configuration.destination_configuration.s3_destinations #=> Array
    #   resp.snapshot_configuration.destination_configuration.s3_destinations[0].bucket_configuration.bucket_name #=> String
    #   resp.snapshot_configuration.destination_configuration.s3_destinations[0].bucket_configuration.bucket_prefix #=> String
    #   resp.snapshot_configuration.destination_configuration.s3_destinations[0].bucket_configuration.bucket_region #=> String
    #   resp.snapshot_configuration.parameters.string_parameters #=> Array
    #   resp.snapshot_configuration.parameters.string_parameters[0].name #=> String
    #   resp.snapshot_configuration.parameters.string_parameters[0].values #=> Array
    #   resp.snapshot_configuration.parameters.string_parameters[0].values[0] #=> String
    #   resp.snapshot_configuration.parameters.integer_parameters #=> Array
    #   resp.snapshot_configuration.parameters.integer_parameters[0].name #=> String
    #   resp.snapshot_configuration.parameters.integer_parameters[0].values #=> Array
    #   resp.snapshot_configuration.parameters.integer_parameters[0].values[0] #=> Integer
    #   resp.snapshot_configuration.parameters.decimal_parameters #=> Array
    #   resp.snapshot_configuration.parameters.decimal_parameters[0].name #=> String
    #   resp.snapshot_configuration.parameters.decimal_parameters[0].values #=> Array
    #   resp.snapshot_configuration.parameters.decimal_parameters[0].values[0] #=> Float
    #   resp.snapshot_configuration.parameters.date_time_parameters #=> Array
    #   resp.snapshot_configuration.parameters.date_time_parameters[0].name #=> String
    #   resp.snapshot_configuration.parameters.date_time_parameters[0].values #=> Array
    #   resp.snapshot_configuration.parameters.date_time_parameters[0].values[0] #=> Time
    #   resp.arn #=> String
    #   resp.job_status #=> String, one of "QUEUED", "RUNNING", "COMPLETED", "FAILED"
    #   resp.created_time #=> Time
    #   resp.last_updated_time #=> Time
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeDashboardSnapshotJob AWS API Documentation
    #
    # @overload describe_dashboard_snapshot_job(params = {})
    # @param [Hash] params ({})
    def describe_dashboard_snapshot_job(params = {}, options = {})
      req = build_request(:describe_dashboard_snapshot_job, params)
      req.send_request(options)
    end

    # Describes the result of an existing snapshot job that has finished
    # running.
    #
    # A finished snapshot job will return a `COMPLETED` or `FAILED` status
    # when you poll the job with a `DescribeDashboardSnapshotJob` API call.
    #
    # If the job has not finished running, this operation returns a message
    # that says `Dashboard Snapshot Job with id <SnapshotjobId> has not
    # reached a terminal state.`.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that the dashboard snapshot
    #   job is executed in.
    #
    # @option params [required, String] :dashboard_id
    #   The ID of the dashboard that you have started a snapshot job for.
    #
    # @option params [required, String] :snapshot_job_id
    #   The ID of the job to be described. The job ID is set when you start a
    #   new job with a `StartDashboardSnapshotJob` API call.
    #
    # @return [Types::DescribeDashboardSnapshotJobResultResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDashboardSnapshotJobResultResponse#arn #arn} => String
    #   * {Types::DescribeDashboardSnapshotJobResultResponse#job_status #job_status} => String
    #   * {Types::DescribeDashboardSnapshotJobResultResponse#created_time #created_time} => Time
    #   * {Types::DescribeDashboardSnapshotJobResultResponse#last_updated_time #last_updated_time} => Time
    #   * {Types::DescribeDashboardSnapshotJobResultResponse#result #result} => Types::SnapshotJobResult
    #   * {Types::DescribeDashboardSnapshotJobResultResponse#error_info #error_info} => Types::SnapshotJobErrorInfo
    #   * {Types::DescribeDashboardSnapshotJobResultResponse#request_id #request_id} => String
    #   * {Types::DescribeDashboardSnapshotJobResultResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_dashboard_snapshot_job_result({
    #     aws_account_id: "AwsAccountId", # required
    #     dashboard_id: "ShortRestrictiveResourceId", # required
    #     snapshot_job_id: "ShortRestrictiveResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.job_status #=> String, one of "QUEUED", "RUNNING", "COMPLETED", "FAILED"
    #   resp.created_time #=> Time
    #   resp.last_updated_time #=> Time
    #   resp.result.anonymous_users #=> Array
    #   resp.result.anonymous_users[0].file_groups #=> Array
    #   resp.result.anonymous_users[0].file_groups[0].files #=> Array
    #   resp.result.anonymous_users[0].file_groups[0].files[0].sheet_selections #=> Array
    #   resp.result.anonymous_users[0].file_groups[0].files[0].sheet_selections[0].sheet_id #=> String
    #   resp.result.anonymous_users[0].file_groups[0].files[0].sheet_selections[0].selection_scope #=> String, one of "ALL_VISUALS", "SELECTED_VISUALS"
    #   resp.result.anonymous_users[0].file_groups[0].files[0].sheet_selections[0].visual_ids #=> Array
    #   resp.result.anonymous_users[0].file_groups[0].files[0].sheet_selections[0].visual_ids[0] #=> String
    #   resp.result.anonymous_users[0].file_groups[0].files[0].format_type #=> String, one of "CSV", "PDF", "EXCEL"
    #   resp.result.anonymous_users[0].file_groups[0].s3_results #=> Array
    #   resp.result.anonymous_users[0].file_groups[0].s3_results[0].s3_destination_configuration.bucket_configuration.bucket_name #=> String
    #   resp.result.anonymous_users[0].file_groups[0].s3_results[0].s3_destination_configuration.bucket_configuration.bucket_prefix #=> String
    #   resp.result.anonymous_users[0].file_groups[0].s3_results[0].s3_destination_configuration.bucket_configuration.bucket_region #=> String
    #   resp.result.anonymous_users[0].file_groups[0].s3_results[0].s3_uri #=> String
    #   resp.result.anonymous_users[0].file_groups[0].s3_results[0].error_info #=> Array
    #   resp.result.anonymous_users[0].file_groups[0].s3_results[0].error_info[0].error_message #=> String
    #   resp.result.anonymous_users[0].file_groups[0].s3_results[0].error_info[0].error_type #=> String
    #   resp.error_info.error_message #=> String
    #   resp.error_info.error_type #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeDashboardSnapshotJobResult AWS API Documentation
    #
    # @overload describe_dashboard_snapshot_job_result(params = {})
    # @param [Hash] params ({})
    def describe_dashboard_snapshot_job_result(params = {}, options = {})
      req = build_request(:describe_dashboard_snapshot_job_result, params)
      req.send_request(options)
    end

    # Describes an existing dashboard QA configuration.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that contains the dashboard
    #   QA configuration that you want described.
    #
    # @return [Types::DescribeDashboardsQAConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDashboardsQAConfigurationResponse#dashboards_qa_status #dashboards_qa_status} => String
    #   * {Types::DescribeDashboardsQAConfigurationResponse#request_id #request_id} => String
    #   * {Types::DescribeDashboardsQAConfigurationResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_dashboards_qa_configuration({
    #     aws_account_id: "AwsAccountId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.dashboards_qa_status #=> String, one of "ENABLED", "DISABLED"
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeDashboardsQAConfiguration AWS API Documentation
    #
    # @overload describe_dashboards_qa_configuration(params = {})
    # @param [Hash] params ({})
    def describe_dashboards_qa_configuration(params = {}, options = {})
      req = build_request(:describe_dashboards_qa_configuration, params)
      req.send_request(options)
    end

    # Describes a dataset. This operation doesn't support datasets that
    # include uploaded files as a source.
    #
    # @option params [required, String] :aws_account_id
    #   The Amazon Web Services account ID.
    #
    # @option params [required, String] :data_set_id
    #   The ID for the dataset that you want to create. This ID is unique per
    #   Amazon Web Services Region for each Amazon Web Services account.
    #
    # @return [Types::DescribeDataSetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDataSetResponse#data_set #data_set} => Types::DataSet
    #   * {Types::DescribeDataSetResponse#request_id #request_id} => String
    #   * {Types::DescribeDataSetResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_data_set({
    #     aws_account_id: "AwsAccountId", # required
    #     data_set_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.data_set.arn #=> String
    #   resp.data_set.data_set_id #=> String
    #   resp.data_set.name #=> String
    #   resp.data_set.created_time #=> Time
    #   resp.data_set.last_updated_time #=> Time
    #   resp.data_set.physical_table_map #=> Hash
    #   resp.data_set.physical_table_map["PhysicalTableId"].relational_table.data_source_arn #=> String
    #   resp.data_set.physical_table_map["PhysicalTableId"].relational_table.catalog #=> String
    #   resp.data_set.physical_table_map["PhysicalTableId"].relational_table.schema #=> String
    #   resp.data_set.physical_table_map["PhysicalTableId"].relational_table.name #=> String
    #   resp.data_set.physical_table_map["PhysicalTableId"].relational_table.input_columns #=> Array
    #   resp.data_set.physical_table_map["PhysicalTableId"].relational_table.input_columns[0].name #=> String
    #   resp.data_set.physical_table_map["PhysicalTableId"].relational_table.input_columns[0].type #=> String, one of "STRING", "INTEGER", "DECIMAL", "DATETIME", "BIT", "BOOLEAN", "JSON"
    #   resp.data_set.physical_table_map["PhysicalTableId"].relational_table.input_columns[0].sub_type #=> String, one of "FLOAT", "FIXED"
    #   resp.data_set.physical_table_map["PhysicalTableId"].custom_sql.data_source_arn #=> String
    #   resp.data_set.physical_table_map["PhysicalTableId"].custom_sql.name #=> String
    #   resp.data_set.physical_table_map["PhysicalTableId"].custom_sql.sql_query #=> String
    #   resp.data_set.physical_table_map["PhysicalTableId"].custom_sql.columns #=> Array
    #   resp.data_set.physical_table_map["PhysicalTableId"].custom_sql.columns[0].name #=> String
    #   resp.data_set.physical_table_map["PhysicalTableId"].custom_sql.columns[0].type #=> String, one of "STRING", "INTEGER", "DECIMAL", "DATETIME", "BIT", "BOOLEAN", "JSON"
    #   resp.data_set.physical_table_map["PhysicalTableId"].custom_sql.columns[0].sub_type #=> String, one of "FLOAT", "FIXED"
    #   resp.data_set.physical_table_map["PhysicalTableId"].s3_source.data_source_arn #=> String
    #   resp.data_set.physical_table_map["PhysicalTableId"].s3_source.upload_settings.format #=> String, one of "CSV", "TSV", "CLF", "ELF", "XLSX", "JSON"
    #   resp.data_set.physical_table_map["PhysicalTableId"].s3_source.upload_settings.start_from_row #=> Integer
    #   resp.data_set.physical_table_map["PhysicalTableId"].s3_source.upload_settings.contains_header #=> Boolean
    #   resp.data_set.physical_table_map["PhysicalTableId"].s3_source.upload_settings.text_qualifier #=> String, one of "DOUBLE_QUOTE", "SINGLE_QUOTE"
    #   resp.data_set.physical_table_map["PhysicalTableId"].s3_source.upload_settings.delimiter #=> String
    #   resp.data_set.physical_table_map["PhysicalTableId"].s3_source.input_columns #=> Array
    #   resp.data_set.physical_table_map["PhysicalTableId"].s3_source.input_columns[0].name #=> String
    #   resp.data_set.physical_table_map["PhysicalTableId"].s3_source.input_columns[0].type #=> String, one of "STRING", "INTEGER", "DECIMAL", "DATETIME", "BIT", "BOOLEAN", "JSON"
    #   resp.data_set.physical_table_map["PhysicalTableId"].s3_source.input_columns[0].sub_type #=> String, one of "FLOAT", "FIXED"
    #   resp.data_set.logical_table_map #=> Hash
    #   resp.data_set.logical_table_map["LogicalTableId"].alias #=> String
    #   resp.data_set.logical_table_map["LogicalTableId"].data_transforms #=> Array
    #   resp.data_set.logical_table_map["LogicalTableId"].data_transforms[0].project_operation.projected_columns #=> Array
    #   resp.data_set.logical_table_map["LogicalTableId"].data_transforms[0].project_operation.projected_columns[0] #=> String
    #   resp.data_set.logical_table_map["LogicalTableId"].data_transforms[0].filter_operation.condition_expression #=> String
    #   resp.data_set.logical_table_map["LogicalTableId"].data_transforms[0].create_columns_operation.columns #=> Array
    #   resp.data_set.logical_table_map["LogicalTableId"].data_transforms[0].create_columns_operation.columns[0].column_name #=> String
    #   resp.data_set.logical_table_map["LogicalTableId"].data_transforms[0].create_columns_operation.columns[0].column_id #=> String
    #   resp.data_set.logical_table_map["LogicalTableId"].data_transforms[0].create_columns_operation.columns[0].expression #=> String
    #   resp.data_set.logical_table_map["LogicalTableId"].data_transforms[0].rename_column_operation.column_name #=> String
    #   resp.data_set.logical_table_map["LogicalTableId"].data_transforms[0].rename_column_operation.new_column_name #=> String
    #   resp.data_set.logical_table_map["LogicalTableId"].data_transforms[0].cast_column_type_operation.column_name #=> String
    #   resp.data_set.logical_table_map["LogicalTableId"].data_transforms[0].cast_column_type_operation.new_column_type #=> String, one of "STRING", "INTEGER", "DECIMAL", "DATETIME"
    #   resp.data_set.logical_table_map["LogicalTableId"].data_transforms[0].cast_column_type_operation.sub_type #=> String, one of "FLOAT", "FIXED"
    #   resp.data_set.logical_table_map["LogicalTableId"].data_transforms[0].cast_column_type_operation.format #=> String
    #   resp.data_set.logical_table_map["LogicalTableId"].data_transforms[0].tag_column_operation.column_name #=> String
    #   resp.data_set.logical_table_map["LogicalTableId"].data_transforms[0].tag_column_operation.tags #=> Array
    #   resp.data_set.logical_table_map["LogicalTableId"].data_transforms[0].tag_column_operation.tags[0].column_geographic_role #=> String, one of "COUNTRY", "STATE", "COUNTY", "CITY", "POSTCODE", "LONGITUDE", "LATITUDE"
    #   resp.data_set.logical_table_map["LogicalTableId"].data_transforms[0].tag_column_operation.tags[0].column_description.text #=> String
    #   resp.data_set.logical_table_map["LogicalTableId"].data_transforms[0].untag_column_operation.column_name #=> String
    #   resp.data_set.logical_table_map["LogicalTableId"].data_transforms[0].untag_column_operation.tag_names #=> Array
    #   resp.data_set.logical_table_map["LogicalTableId"].data_transforms[0].untag_column_operation.tag_names[0] #=> String, one of "COLUMN_GEOGRAPHIC_ROLE", "COLUMN_DESCRIPTION"
    #   resp.data_set.logical_table_map["LogicalTableId"].data_transforms[0].override_dataset_parameter_operation.parameter_name #=> String
    #   resp.data_set.logical_table_map["LogicalTableId"].data_transforms[0].override_dataset_parameter_operation.new_parameter_name #=> String
    #   resp.data_set.logical_table_map["LogicalTableId"].data_transforms[0].override_dataset_parameter_operation.new_default_values.string_static_values #=> Array
    #   resp.data_set.logical_table_map["LogicalTableId"].data_transforms[0].override_dataset_parameter_operation.new_default_values.string_static_values[0] #=> String
    #   resp.data_set.logical_table_map["LogicalTableId"].data_transforms[0].override_dataset_parameter_operation.new_default_values.decimal_static_values #=> Array
    #   resp.data_set.logical_table_map["LogicalTableId"].data_transforms[0].override_dataset_parameter_operation.new_default_values.decimal_static_values[0] #=> Float
    #   resp.data_set.logical_table_map["LogicalTableId"].data_transforms[0].override_dataset_parameter_operation.new_default_values.date_time_static_values #=> Array
    #   resp.data_set.logical_table_map["LogicalTableId"].data_transforms[0].override_dataset_parameter_operation.new_default_values.date_time_static_values[0] #=> Time
    #   resp.data_set.logical_table_map["LogicalTableId"].data_transforms[0].override_dataset_parameter_operation.new_default_values.integer_static_values #=> Array
    #   resp.data_set.logical_table_map["LogicalTableId"].data_transforms[0].override_dataset_parameter_operation.new_default_values.integer_static_values[0] #=> Integer
    #   resp.data_set.logical_table_map["LogicalTableId"].source.join_instruction.left_operand #=> String
    #   resp.data_set.logical_table_map["LogicalTableId"].source.join_instruction.right_operand #=> String
    #   resp.data_set.logical_table_map["LogicalTableId"].source.join_instruction.left_join_key_properties.unique_key #=> Boolean
    #   resp.data_set.logical_table_map["LogicalTableId"].source.join_instruction.right_join_key_properties.unique_key #=> Boolean
    #   resp.data_set.logical_table_map["LogicalTableId"].source.join_instruction.type #=> String, one of "INNER", "OUTER", "LEFT", "RIGHT"
    #   resp.data_set.logical_table_map["LogicalTableId"].source.join_instruction.on_clause #=> String
    #   resp.data_set.logical_table_map["LogicalTableId"].source.physical_table_id #=> String
    #   resp.data_set.logical_table_map["LogicalTableId"].source.data_set_arn #=> String
    #   resp.data_set.output_columns #=> Array
    #   resp.data_set.output_columns[0].name #=> String
    #   resp.data_set.output_columns[0].description #=> String
    #   resp.data_set.output_columns[0].type #=> String, one of "STRING", "INTEGER", "DECIMAL", "DATETIME"
    #   resp.data_set.output_columns[0].sub_type #=> String, one of "FLOAT", "FIXED"
    #   resp.data_set.import_mode #=> String, one of "SPICE", "DIRECT_QUERY"
    #   resp.data_set.consumed_spice_capacity_in_bytes #=> Integer
    #   resp.data_set.column_groups #=> Array
    #   resp.data_set.column_groups[0].geo_spatial_column_group.name #=> String
    #   resp.data_set.column_groups[0].geo_spatial_column_group.country_code #=> String, one of "US"
    #   resp.data_set.column_groups[0].geo_spatial_column_group.columns #=> Array
    #   resp.data_set.column_groups[0].geo_spatial_column_group.columns[0] #=> String
    #   resp.data_set.field_folders #=> Hash
    #   resp.data_set.field_folders["FieldFolderPath"].description #=> String
    #   resp.data_set.field_folders["FieldFolderPath"].columns #=> Array
    #   resp.data_set.field_folders["FieldFolderPath"].columns[0] #=> String
    #   resp.data_set.row_level_permission_data_set.namespace #=> String
    #   resp.data_set.row_level_permission_data_set.arn #=> String
    #   resp.data_set.row_level_permission_data_set.permission_policy #=> String, one of "GRANT_ACCESS", "DENY_ACCESS"
    #   resp.data_set.row_level_permission_data_set.format_version #=> String, one of "VERSION_1", "VERSION_2"
    #   resp.data_set.row_level_permission_data_set.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.data_set.row_level_permission_tag_configuration.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.data_set.row_level_permission_tag_configuration.tag_rules #=> Array
    #   resp.data_set.row_level_permission_tag_configuration.tag_rules[0].tag_key #=> String
    #   resp.data_set.row_level_permission_tag_configuration.tag_rules[0].column_name #=> String
    #   resp.data_set.row_level_permission_tag_configuration.tag_rules[0].tag_multi_value_delimiter #=> String
    #   resp.data_set.row_level_permission_tag_configuration.tag_rules[0].match_all_value #=> String
    #   resp.data_set.row_level_permission_tag_configuration.tag_rule_configurations #=> Array
    #   resp.data_set.row_level_permission_tag_configuration.tag_rule_configurations[0] #=> Array
    #   resp.data_set.row_level_permission_tag_configuration.tag_rule_configurations[0][0] #=> String
    #   resp.data_set.column_level_permission_rules #=> Array
    #   resp.data_set.column_level_permission_rules[0].principals #=> Array
    #   resp.data_set.column_level_permission_rules[0].principals[0] #=> String
    #   resp.data_set.column_level_permission_rules[0].column_names #=> Array
    #   resp.data_set.column_level_permission_rules[0].column_names[0] #=> String
    #   resp.data_set.data_set_usage_configuration.disable_use_as_direct_query_source #=> Boolean
    #   resp.data_set.data_set_usage_configuration.disable_use_as_imported_source #=> Boolean
    #   resp.data_set.dataset_parameters #=> Array
    #   resp.data_set.dataset_parameters[0].string_dataset_parameter.id #=> String
    #   resp.data_set.dataset_parameters[0].string_dataset_parameter.name #=> String
    #   resp.data_set.dataset_parameters[0].string_dataset_parameter.value_type #=> String, one of "MULTI_VALUED", "SINGLE_VALUED"
    #   resp.data_set.dataset_parameters[0].string_dataset_parameter.default_values.static_values #=> Array
    #   resp.data_set.dataset_parameters[0].string_dataset_parameter.default_values.static_values[0] #=> String
    #   resp.data_set.dataset_parameters[0].decimal_dataset_parameter.id #=> String
    #   resp.data_set.dataset_parameters[0].decimal_dataset_parameter.name #=> String
    #   resp.data_set.dataset_parameters[0].decimal_dataset_parameter.value_type #=> String, one of "MULTI_VALUED", "SINGLE_VALUED"
    #   resp.data_set.dataset_parameters[0].decimal_dataset_parameter.default_values.static_values #=> Array
    #   resp.data_set.dataset_parameters[0].decimal_dataset_parameter.default_values.static_values[0] #=> Float
    #   resp.data_set.dataset_parameters[0].integer_dataset_parameter.id #=> String
    #   resp.data_set.dataset_parameters[0].integer_dataset_parameter.name #=> String
    #   resp.data_set.dataset_parameters[0].integer_dataset_parameter.value_type #=> String, one of "MULTI_VALUED", "SINGLE_VALUED"
    #   resp.data_set.dataset_parameters[0].integer_dataset_parameter.default_values.static_values #=> Array
    #   resp.data_set.dataset_parameters[0].integer_dataset_parameter.default_values.static_values[0] #=> Integer
    #   resp.data_set.dataset_parameters[0].date_time_dataset_parameter.id #=> String
    #   resp.data_set.dataset_parameters[0].date_time_dataset_parameter.name #=> String
    #   resp.data_set.dataset_parameters[0].date_time_dataset_parameter.value_type #=> String, one of "MULTI_VALUED", "SINGLE_VALUED"
    #   resp.data_set.dataset_parameters[0].date_time_dataset_parameter.time_granularity #=> String, one of "YEAR", "QUARTER", "MONTH", "WEEK", "DAY", "HOUR", "MINUTE", "SECOND", "MILLISECOND"
    #   resp.data_set.dataset_parameters[0].date_time_dataset_parameter.default_values.static_values #=> Array
    #   resp.data_set.dataset_parameters[0].date_time_dataset_parameter.default_values.static_values[0] #=> Time
    #   resp.data_set.performance_configuration.unique_keys #=> Array
    #   resp.data_set.performance_configuration.unique_keys[0].column_names #=> Array
    #   resp.data_set.performance_configuration.unique_keys[0].column_names[0] #=> String
    #   resp.data_set.use_as #=> String, one of "RLS_RULES"
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeDataSet AWS API Documentation
    #
    # @overload describe_data_set(params = {})
    # @param [Hash] params ({})
    def describe_data_set(params = {}, options = {})
      req = build_request(:describe_data_set, params)
      req.send_request(options)
    end

    # Describes the permissions on a dataset.
    #
    # The permissions resource is
    # `arn:aws:quicksight:region:aws-account-id:dataset/data-set-id`.
    #
    # @option params [required, String] :aws_account_id
    #   The Amazon Web Services account ID.
    #
    # @option params [required, String] :data_set_id
    #   The ID for the dataset that you want to create. This ID is unique per
    #   Amazon Web Services Region for each Amazon Web Services account.
    #
    # @return [Types::DescribeDataSetPermissionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDataSetPermissionsResponse#data_set_arn #data_set_arn} => String
    #   * {Types::DescribeDataSetPermissionsResponse#data_set_id #data_set_id} => String
    #   * {Types::DescribeDataSetPermissionsResponse#permissions #permissions} => Array&lt;Types::ResourcePermission&gt;
    #   * {Types::DescribeDataSetPermissionsResponse#request_id #request_id} => String
    #   * {Types::DescribeDataSetPermissionsResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_data_set_permissions({
    #     aws_account_id: "AwsAccountId", # required
    #     data_set_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.data_set_arn #=> String
    #   resp.data_set_id #=> String
    #   resp.permissions #=> Array
    #   resp.permissions[0].principal #=> String
    #   resp.permissions[0].actions #=> Array
    #   resp.permissions[0].actions[0] #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeDataSetPermissions AWS API Documentation
    #
    # @overload describe_data_set_permissions(params = {})
    # @param [Hash] params ({})
    def describe_data_set_permissions(params = {}, options = {})
      req = build_request(:describe_data_set_permissions, params)
      req.send_request(options)
    end

    # Describes the refresh properties of a dataset.
    #
    # @option params [required, String] :aws_account_id
    #   The Amazon Web Services account ID.
    #
    # @option params [required, String] :data_set_id
    #   The ID of the dataset.
    #
    # @return [Types::DescribeDataSetRefreshPropertiesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDataSetRefreshPropertiesResponse#request_id #request_id} => String
    #   * {Types::DescribeDataSetRefreshPropertiesResponse#status #status} => Integer
    #   * {Types::DescribeDataSetRefreshPropertiesResponse#data_set_refresh_properties #data_set_refresh_properties} => Types::DataSetRefreshProperties
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_data_set_refresh_properties({
    #     aws_account_id: "AwsAccountId", # required
    #     data_set_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #   resp.data_set_refresh_properties.refresh_configuration.incremental_refresh.lookback_window.column_name #=> String
    #   resp.data_set_refresh_properties.refresh_configuration.incremental_refresh.lookback_window.size #=> Integer
    #   resp.data_set_refresh_properties.refresh_configuration.incremental_refresh.lookback_window.size_unit #=> String, one of "HOUR", "DAY", "WEEK"
    #   resp.data_set_refresh_properties.failure_configuration.email_alert.alert_status #=> String, one of "ENABLED", "DISABLED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeDataSetRefreshProperties AWS API Documentation
    #
    # @overload describe_data_set_refresh_properties(params = {})
    # @param [Hash] params ({})
    def describe_data_set_refresh_properties(params = {}, options = {})
      req = build_request(:describe_data_set_refresh_properties, params)
      req.send_request(options)
    end

    # Describes a data source.
    #
    # @option params [required, String] :aws_account_id
    #   The Amazon Web Services account ID.
    #
    # @option params [required, String] :data_source_id
    #   The ID of the data source. This ID is unique per Amazon Web Services
    #   Region for each Amazon Web Services account.
    #
    # @return [Types::DescribeDataSourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDataSourceResponse#data_source #data_source} => Types::DataSource
    #   * {Types::DescribeDataSourceResponse#request_id #request_id} => String
    #   * {Types::DescribeDataSourceResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_data_source({
    #     aws_account_id: "AwsAccountId", # required
    #     data_source_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.data_source.arn #=> String
    #   resp.data_source.data_source_id #=> String
    #   resp.data_source.name #=> String
    #   resp.data_source.type #=> String, one of "ADOBE_ANALYTICS", "AMAZON_ELASTICSEARCH", "ATHENA", "AURORA", "AURORA_POSTGRESQL", "AWS_IOT_ANALYTICS", "GITHUB", "JIRA", "MARIADB", "MYSQL", "ORACLE", "POSTGRESQL", "PRESTO", "REDSHIFT", "S3", "SALESFORCE", "SERVICENOW", "SNOWFLAKE", "SPARK", "SQLSERVER", "TERADATA", "TWITTER", "TIMESTREAM", "AMAZON_OPENSEARCH", "EXASOL", "DATABRICKS", "STARBURST", "TRINO", "BIGQUERY", "GOOGLESHEETS"
    #   resp.data_source.status #=> String, one of "CREATION_IN_PROGRESS", "CREATION_SUCCESSFUL", "CREATION_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_SUCCESSFUL", "UPDATE_FAILED", "DELETED"
    #   resp.data_source.created_time #=> Time
    #   resp.data_source.last_updated_time #=> Time
    #   resp.data_source.data_source_parameters.amazon_elasticsearch_parameters.domain #=> String
    #   resp.data_source.data_source_parameters.athena_parameters.work_group #=> String
    #   resp.data_source.data_source_parameters.athena_parameters.role_arn #=> String
    #   resp.data_source.data_source_parameters.athena_parameters.identity_center_configuration.enable_identity_propagation #=> Boolean
    #   resp.data_source.data_source_parameters.aurora_parameters.host #=> String
    #   resp.data_source.data_source_parameters.aurora_parameters.port #=> Integer
    #   resp.data_source.data_source_parameters.aurora_parameters.database #=> String
    #   resp.data_source.data_source_parameters.aurora_postgre_sql_parameters.host #=> String
    #   resp.data_source.data_source_parameters.aurora_postgre_sql_parameters.port #=> Integer
    #   resp.data_source.data_source_parameters.aurora_postgre_sql_parameters.database #=> String
    #   resp.data_source.data_source_parameters.aws_iot_analytics_parameters.data_set_name #=> String
    #   resp.data_source.data_source_parameters.jira_parameters.site_base_url #=> String
    #   resp.data_source.data_source_parameters.maria_db_parameters.host #=> String
    #   resp.data_source.data_source_parameters.maria_db_parameters.port #=> Integer
    #   resp.data_source.data_source_parameters.maria_db_parameters.database #=> String
    #   resp.data_source.data_source_parameters.my_sql_parameters.host #=> String
    #   resp.data_source.data_source_parameters.my_sql_parameters.port #=> Integer
    #   resp.data_source.data_source_parameters.my_sql_parameters.database #=> String
    #   resp.data_source.data_source_parameters.oracle_parameters.host #=> String
    #   resp.data_source.data_source_parameters.oracle_parameters.port #=> Integer
    #   resp.data_source.data_source_parameters.oracle_parameters.database #=> String
    #   resp.data_source.data_source_parameters.oracle_parameters.use_service_name #=> Boolean
    #   resp.data_source.data_source_parameters.postgre_sql_parameters.host #=> String
    #   resp.data_source.data_source_parameters.postgre_sql_parameters.port #=> Integer
    #   resp.data_source.data_source_parameters.postgre_sql_parameters.database #=> String
    #   resp.data_source.data_source_parameters.presto_parameters.host #=> String
    #   resp.data_source.data_source_parameters.presto_parameters.port #=> Integer
    #   resp.data_source.data_source_parameters.presto_parameters.catalog #=> String
    #   resp.data_source.data_source_parameters.rds_parameters.instance_id #=> String
    #   resp.data_source.data_source_parameters.rds_parameters.database #=> String
    #   resp.data_source.data_source_parameters.redshift_parameters.host #=> String
    #   resp.data_source.data_source_parameters.redshift_parameters.port #=> Integer
    #   resp.data_source.data_source_parameters.redshift_parameters.database #=> String
    #   resp.data_source.data_source_parameters.redshift_parameters.cluster_id #=> String
    #   resp.data_source.data_source_parameters.redshift_parameters.iam_parameters.role_arn #=> String
    #   resp.data_source.data_source_parameters.redshift_parameters.iam_parameters.database_user #=> String
    #   resp.data_source.data_source_parameters.redshift_parameters.iam_parameters.database_groups #=> Array
    #   resp.data_source.data_source_parameters.redshift_parameters.iam_parameters.database_groups[0] #=> String
    #   resp.data_source.data_source_parameters.redshift_parameters.iam_parameters.auto_create_database_user #=> Boolean
    #   resp.data_source.data_source_parameters.redshift_parameters.identity_center_configuration.enable_identity_propagation #=> Boolean
    #   resp.data_source.data_source_parameters.s3_parameters.manifest_file_location.bucket #=> String
    #   resp.data_source.data_source_parameters.s3_parameters.manifest_file_location.key #=> String
    #   resp.data_source.data_source_parameters.s3_parameters.role_arn #=> String
    #   resp.data_source.data_source_parameters.service_now_parameters.site_base_url #=> String
    #   resp.data_source.data_source_parameters.snowflake_parameters.host #=> String
    #   resp.data_source.data_source_parameters.snowflake_parameters.database #=> String
    #   resp.data_source.data_source_parameters.snowflake_parameters.warehouse #=> String
    #   resp.data_source.data_source_parameters.snowflake_parameters.authentication_type #=> String, one of "PASSWORD", "TOKEN", "X509"
    #   resp.data_source.data_source_parameters.snowflake_parameters.database_access_control_role #=> String
    #   resp.data_source.data_source_parameters.snowflake_parameters.o_auth_parameters.token_provider_url #=> String
    #   resp.data_source.data_source_parameters.snowflake_parameters.o_auth_parameters.o_auth_scope #=> String
    #   resp.data_source.data_source_parameters.snowflake_parameters.o_auth_parameters.identity_provider_vpc_connection_properties.vpc_connection_arn #=> String
    #   resp.data_source.data_source_parameters.snowflake_parameters.o_auth_parameters.identity_provider_resource_uri #=> String
    #   resp.data_source.data_source_parameters.spark_parameters.host #=> String
    #   resp.data_source.data_source_parameters.spark_parameters.port #=> Integer
    #   resp.data_source.data_source_parameters.sql_server_parameters.host #=> String
    #   resp.data_source.data_source_parameters.sql_server_parameters.port #=> Integer
    #   resp.data_source.data_source_parameters.sql_server_parameters.database #=> String
    #   resp.data_source.data_source_parameters.teradata_parameters.host #=> String
    #   resp.data_source.data_source_parameters.teradata_parameters.port #=> Integer
    #   resp.data_source.data_source_parameters.teradata_parameters.database #=> String
    #   resp.data_source.data_source_parameters.twitter_parameters.query #=> String
    #   resp.data_source.data_source_parameters.twitter_parameters.max_rows #=> Integer
    #   resp.data_source.data_source_parameters.amazon_open_search_parameters.domain #=> String
    #   resp.data_source.data_source_parameters.exasol_parameters.host #=> String
    #   resp.data_source.data_source_parameters.exasol_parameters.port #=> Integer
    #   resp.data_source.data_source_parameters.databricks_parameters.host #=> String
    #   resp.data_source.data_source_parameters.databricks_parameters.port #=> Integer
    #   resp.data_source.data_source_parameters.databricks_parameters.sql_endpoint_path #=> String
    #   resp.data_source.data_source_parameters.starburst_parameters.host #=> String
    #   resp.data_source.data_source_parameters.starburst_parameters.port #=> Integer
    #   resp.data_source.data_source_parameters.starburst_parameters.catalog #=> String
    #   resp.data_source.data_source_parameters.starburst_parameters.product_type #=> String, one of "GALAXY", "ENTERPRISE"
    #   resp.data_source.data_source_parameters.starburst_parameters.database_access_control_role #=> String
    #   resp.data_source.data_source_parameters.starburst_parameters.authentication_type #=> String, one of "PASSWORD", "TOKEN", "X509"
    #   resp.data_source.data_source_parameters.starburst_parameters.o_auth_parameters.token_provider_url #=> String
    #   resp.data_source.data_source_parameters.starburst_parameters.o_auth_parameters.o_auth_scope #=> String
    #   resp.data_source.data_source_parameters.starburst_parameters.o_auth_parameters.identity_provider_vpc_connection_properties.vpc_connection_arn #=> String
    #   resp.data_source.data_source_parameters.starburst_parameters.o_auth_parameters.identity_provider_resource_uri #=> String
    #   resp.data_source.data_source_parameters.trino_parameters.host #=> String
    #   resp.data_source.data_source_parameters.trino_parameters.port #=> Integer
    #   resp.data_source.data_source_parameters.trino_parameters.catalog #=> String
    #   resp.data_source.data_source_parameters.big_query_parameters.project_id #=> String
    #   resp.data_source.data_source_parameters.big_query_parameters.data_set_region #=> String
    #   resp.data_source.data_source_parameters.impala_parameters.host #=> String
    #   resp.data_source.data_source_parameters.impala_parameters.port #=> Integer
    #   resp.data_source.data_source_parameters.impala_parameters.database #=> String
    #   resp.data_source.data_source_parameters.impala_parameters.sql_endpoint_path #=> String
    #   resp.data_source.data_source_parameters.custom_connection_parameters.connection_type #=> String
    #   resp.data_source.alternate_data_source_parameters #=> Array
    #   resp.data_source.alternate_data_source_parameters[0].amazon_elasticsearch_parameters.domain #=> String
    #   resp.data_source.alternate_data_source_parameters[0].athena_parameters.work_group #=> String
    #   resp.data_source.alternate_data_source_parameters[0].athena_parameters.role_arn #=> String
    #   resp.data_source.alternate_data_source_parameters[0].athena_parameters.identity_center_configuration.enable_identity_propagation #=> Boolean
    #   resp.data_source.alternate_data_source_parameters[0].aurora_parameters.host #=> String
    #   resp.data_source.alternate_data_source_parameters[0].aurora_parameters.port #=> Integer
    #   resp.data_source.alternate_data_source_parameters[0].aurora_parameters.database #=> String
    #   resp.data_source.alternate_data_source_parameters[0].aurora_postgre_sql_parameters.host #=> String
    #   resp.data_source.alternate_data_source_parameters[0].aurora_postgre_sql_parameters.port #=> Integer
    #   resp.data_source.alternate_data_source_parameters[0].aurora_postgre_sql_parameters.database #=> String
    #   resp.data_source.alternate_data_source_parameters[0].aws_iot_analytics_parameters.data_set_name #=> String
    #   resp.data_source.alternate_data_source_parameters[0].jira_parameters.site_base_url #=> String
    #   resp.data_source.alternate_data_source_parameters[0].maria_db_parameters.host #=> String
    #   resp.data_source.alternate_data_source_parameters[0].maria_db_parameters.port #=> Integer
    #   resp.data_source.alternate_data_source_parameters[0].maria_db_parameters.database #=> String
    #   resp.data_source.alternate_data_source_parameters[0].my_sql_parameters.host #=> String
    #   resp.data_source.alternate_data_source_parameters[0].my_sql_parameters.port #=> Integer
    #   resp.data_source.alternate_data_source_parameters[0].my_sql_parameters.database #=> String
    #   resp.data_source.alternate_data_source_parameters[0].oracle_parameters.host #=> String
    #   resp.data_source.alternate_data_source_parameters[0].oracle_parameters.port #=> Integer
    #   resp.data_source.alternate_data_source_parameters[0].oracle_parameters.database #=> String
    #   resp.data_source.alternate_data_source_parameters[0].oracle_parameters.use_service_name #=> Boolean
    #   resp.data_source.alternate_data_source_parameters[0].postgre_sql_parameters.host #=> String
    #   resp.data_source.alternate_data_source_parameters[0].postgre_sql_parameters.port #=> Integer
    #   resp.data_source.alternate_data_source_parameters[0].postgre_sql_parameters.database #=> String
    #   resp.data_source.alternate_data_source_parameters[0].presto_parameters.host #=> String
    #   resp.data_source.alternate_data_source_parameters[0].presto_parameters.port #=> Integer
    #   resp.data_source.alternate_data_source_parameters[0].presto_parameters.catalog #=> String
    #   resp.data_source.alternate_data_source_parameters[0].rds_parameters.instance_id #=> String
    #   resp.data_source.alternate_data_source_parameters[0].rds_parameters.database #=> String
    #   resp.data_source.alternate_data_source_parameters[0].redshift_parameters.host #=> String
    #   resp.data_source.alternate_data_source_parameters[0].redshift_parameters.port #=> Integer
    #   resp.data_source.alternate_data_source_parameters[0].redshift_parameters.database #=> String
    #   resp.data_source.alternate_data_source_parameters[0].redshift_parameters.cluster_id #=> String
    #   resp.data_source.alternate_data_source_parameters[0].redshift_parameters.iam_parameters.role_arn #=> String
    #   resp.data_source.alternate_data_source_parameters[0].redshift_parameters.iam_parameters.database_user #=> String
    #   resp.data_source.alternate_data_source_parameters[0].redshift_parameters.iam_parameters.database_groups #=> Array
    #   resp.data_source.alternate_data_source_parameters[0].redshift_parameters.iam_parameters.database_groups[0] #=> String
    #   resp.data_source.alternate_data_source_parameters[0].redshift_parameters.iam_parameters.auto_create_database_user #=> Boolean
    #   resp.data_source.alternate_data_source_parameters[0].redshift_parameters.identity_center_configuration.enable_identity_propagation #=> Boolean
    #   resp.data_source.alternate_data_source_parameters[0].s3_parameters.manifest_file_location.bucket #=> String
    #   resp.data_source.alternate_data_source_parameters[0].s3_parameters.manifest_file_location.key #=> String
    #   resp.data_source.alternate_data_source_parameters[0].s3_parameters.role_arn #=> String
    #   resp.data_source.alternate_data_source_parameters[0].service_now_parameters.site_base_url #=> String
    #   resp.data_source.alternate_data_source_parameters[0].snowflake_parameters.host #=> String
    #   resp.data_source.alternate_data_source_parameters[0].snowflake_parameters.database #=> String
    #   resp.data_source.alternate_data_source_parameters[0].snowflake_parameters.warehouse #=> String
    #   resp.data_source.alternate_data_source_parameters[0].snowflake_parameters.authentication_type #=> String, one of "PASSWORD", "TOKEN", "X509"
    #   resp.data_source.alternate_data_source_parameters[0].snowflake_parameters.database_access_control_role #=> String
    #   resp.data_source.alternate_data_source_parameters[0].snowflake_parameters.o_auth_parameters.token_provider_url #=> String
    #   resp.data_source.alternate_data_source_parameters[0].snowflake_parameters.o_auth_parameters.o_auth_scope #=> String
    #   resp.data_source.alternate_data_source_parameters[0].snowflake_parameters.o_auth_parameters.identity_provider_vpc_connection_properties.vpc_connection_arn #=> String
    #   resp.data_source.alternate_data_source_parameters[0].snowflake_parameters.o_auth_parameters.identity_provider_resource_uri #=> String
    #   resp.data_source.alternate_data_source_parameters[0].spark_parameters.host #=> String
    #   resp.data_source.alternate_data_source_parameters[0].spark_parameters.port #=> Integer
    #   resp.data_source.alternate_data_source_parameters[0].sql_server_parameters.host #=> String
    #   resp.data_source.alternate_data_source_parameters[0].sql_server_parameters.port #=> Integer
    #   resp.data_source.alternate_data_source_parameters[0].sql_server_parameters.database #=> String
    #   resp.data_source.alternate_data_source_parameters[0].teradata_parameters.host #=> String
    #   resp.data_source.alternate_data_source_parameters[0].teradata_parameters.port #=> Integer
    #   resp.data_source.alternate_data_source_parameters[0].teradata_parameters.database #=> String
    #   resp.data_source.alternate_data_source_parameters[0].twitter_parameters.query #=> String
    #   resp.data_source.alternate_data_source_parameters[0].twitter_parameters.max_rows #=> Integer
    #   resp.data_source.alternate_data_source_parameters[0].amazon_open_search_parameters.domain #=> String
    #   resp.data_source.alternate_data_source_parameters[0].exasol_parameters.host #=> String
    #   resp.data_source.alternate_data_source_parameters[0].exasol_parameters.port #=> Integer
    #   resp.data_source.alternate_data_source_parameters[0].databricks_parameters.host #=> String
    #   resp.data_source.alternate_data_source_parameters[0].databricks_parameters.port #=> Integer
    #   resp.data_source.alternate_data_source_parameters[0].databricks_parameters.sql_endpoint_path #=> String
    #   resp.data_source.alternate_data_source_parameters[0].starburst_parameters.host #=> String
    #   resp.data_source.alternate_data_source_parameters[0].starburst_parameters.port #=> Integer
    #   resp.data_source.alternate_data_source_parameters[0].starburst_parameters.catalog #=> String
    #   resp.data_source.alternate_data_source_parameters[0].starburst_parameters.product_type #=> String, one of "GALAXY", "ENTERPRISE"
    #   resp.data_source.alternate_data_source_parameters[0].starburst_parameters.database_access_control_role #=> String
    #   resp.data_source.alternate_data_source_parameters[0].starburst_parameters.authentication_type #=> String, one of "PASSWORD", "TOKEN", "X509"
    #   resp.data_source.alternate_data_source_parameters[0].starburst_parameters.o_auth_parameters.token_provider_url #=> String
    #   resp.data_source.alternate_data_source_parameters[0].starburst_parameters.o_auth_parameters.o_auth_scope #=> String
    #   resp.data_source.alternate_data_source_parameters[0].starburst_parameters.o_auth_parameters.identity_provider_vpc_connection_properties.vpc_connection_arn #=> String
    #   resp.data_source.alternate_data_source_parameters[0].starburst_parameters.o_auth_parameters.identity_provider_resource_uri #=> String
    #   resp.data_source.alternate_data_source_parameters[0].trino_parameters.host #=> String
    #   resp.data_source.alternate_data_source_parameters[0].trino_parameters.port #=> Integer
    #   resp.data_source.alternate_data_source_parameters[0].trino_parameters.catalog #=> String
    #   resp.data_source.alternate_data_source_parameters[0].big_query_parameters.project_id #=> String
    #   resp.data_source.alternate_data_source_parameters[0].big_query_parameters.data_set_region #=> String
    #   resp.data_source.alternate_data_source_parameters[0].impala_parameters.host #=> String
    #   resp.data_source.alternate_data_source_parameters[0].impala_parameters.port #=> Integer
    #   resp.data_source.alternate_data_source_parameters[0].impala_parameters.database #=> String
    #   resp.data_source.alternate_data_source_parameters[0].impala_parameters.sql_endpoint_path #=> String
    #   resp.data_source.alternate_data_source_parameters[0].custom_connection_parameters.connection_type #=> String
    #   resp.data_source.vpc_connection_properties.vpc_connection_arn #=> String
    #   resp.data_source.ssl_properties.disable_ssl #=> Boolean
    #   resp.data_source.error_info.type #=> String, one of "ACCESS_DENIED", "COPY_SOURCE_NOT_FOUND", "TIMEOUT", "ENGINE_VERSION_NOT_SUPPORTED", "UNKNOWN_HOST", "GENERIC_SQL_FAILURE", "CONFLICT", "UNKNOWN"
    #   resp.data_source.error_info.message #=> String
    #   resp.data_source.secret_arn #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeDataSource AWS API Documentation
    #
    # @overload describe_data_source(params = {})
    # @param [Hash] params ({})
    def describe_data_source(params = {}, options = {})
      req = build_request(:describe_data_source, params)
      req.send_request(options)
    end

    # Describes the resource permissions for a data source.
    #
    # @option params [required, String] :aws_account_id
    #   The Amazon Web Services account ID.
    #
    # @option params [required, String] :data_source_id
    #   The ID of the data source. This ID is unique per Amazon Web Services
    #   Region for each Amazon Web Services account.
    #
    # @return [Types::DescribeDataSourcePermissionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDataSourcePermissionsResponse#data_source_arn #data_source_arn} => String
    #   * {Types::DescribeDataSourcePermissionsResponse#data_source_id #data_source_id} => String
    #   * {Types::DescribeDataSourcePermissionsResponse#permissions #permissions} => Array&lt;Types::ResourcePermission&gt;
    #   * {Types::DescribeDataSourcePermissionsResponse#request_id #request_id} => String
    #   * {Types::DescribeDataSourcePermissionsResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_data_source_permissions({
    #     aws_account_id: "AwsAccountId", # required
    #     data_source_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.data_source_arn #=> String
    #   resp.data_source_id #=> String
    #   resp.permissions #=> Array
    #   resp.permissions[0].principal #=> String
    #   resp.permissions[0].actions #=> Array
    #   resp.permissions[0].actions[0] #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeDataSourcePermissions AWS API Documentation
    #
    # @overload describe_data_source_permissions(params = {})
    # @param [Hash] params ({})
    def describe_data_source_permissions(params = {}, options = {})
      req = build_request(:describe_data_source_permissions, params)
      req.send_request(options)
    end

    # Describes a Amazon Q Business application that is linked to an
    # QuickSight account.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the QuickSight account that is linked to the Amazon Q
    #   Business application that you want described.
    #
    # @option params [String] :namespace
    #   The QuickSight namespace that contains the linked Amazon Q Business
    #   application. If this field is left blank, the default namespace is
    #   used. Currently, the default namespace is the only valid value for
    #   this parameter.
    #
    # @return [Types::DescribeDefaultQBusinessApplicationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDefaultQBusinessApplicationResponse#request_id #request_id} => String
    #   * {Types::DescribeDefaultQBusinessApplicationResponse#status #status} => Integer
    #   * {Types::DescribeDefaultQBusinessApplicationResponse#application_id #application_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_default_q_business_application({
    #     aws_account_id: "AwsAccountId", # required
    #     namespace: "Namespace",
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #   resp.application_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeDefaultQBusinessApplication AWS API Documentation
    #
    # @overload describe_default_q_business_application(params = {})
    # @param [Hash] params ({})
    def describe_default_q_business_application(params = {}, options = {})
      req = build_request(:describe_default_q_business_application, params)
      req.send_request(options)
    end

    # Describes a folder.
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the Amazon Web Services account that contains the folder.
    #
    # @option params [required, String] :folder_id
    #   The ID of the folder.
    #
    # @return [Types::DescribeFolderResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeFolderResponse#status #status} => Integer
    #   * {Types::DescribeFolderResponse#folder #folder} => Types::Folder
    #   * {Types::DescribeFolderResponse#request_id #request_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_folder({
    #     aws_account_id: "AwsAccountId", # required
    #     folder_id: "RestrictiveResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> Integer
    #   resp.folder.folder_id #=> String
    #   resp.folder.arn #=> String
    #   resp.folder.name #=> String
    #   resp.folder.folder_type #=> String, one of "SHARED", "RESTRICTED"
    #   resp.folder.folder_path #=> Array
    #   resp.folder.folder_path[0] #=> String
    #   resp.folder.created_time #=> Time
    #   resp.folder.last_updated_time #=> Time
    #   resp.folder.sharing_model #=> String, one of "ACCOUNT", "NAMESPACE"
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeFolder AWS API Documentation
    #
    # @overload describe_folder(params = {})
    # @param [Hash] params ({})
    def describe_folder(params = {}, options = {})
      req = build_request(:describe_folder, params)
      req.send_request(options)
    end

    # Describes permissions for a folder.
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the Amazon Web Services account that contains the folder.
    #
    # @option params [required, String] :folder_id
    #   The ID of the folder.
    #
    # @option params [String] :namespace
    #   The namespace of the folder whose permissions you want described.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned per request.
    #
    # @option params [String] :next_token
    #   A pagination token for the next set of results.
    #
    # @return [Types::DescribeFolderPermissionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeFolderPermissionsResponse#status #status} => Integer
    #   * {Types::DescribeFolderPermissionsResponse#folder_id #folder_id} => String
    #   * {Types::DescribeFolderPermissionsResponse#arn #arn} => String
    #   * {Types::DescribeFolderPermissionsResponse#permissions #permissions} => Array&lt;Types::ResourcePermission&gt;
    #   * {Types::DescribeFolderPermissionsResponse#request_id #request_id} => String
    #   * {Types::DescribeFolderPermissionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_folder_permissions({
    #     aws_account_id: "AwsAccountId", # required
    #     folder_id: "RestrictiveResourceId", # required
    #     namespace: "Namespace",
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> Integer
    #   resp.folder_id #=> String
    #   resp.arn #=> String
    #   resp.permissions #=> Array
    #   resp.permissions[0].principal #=> String
    #   resp.permissions[0].actions #=> Array
    #   resp.permissions[0].actions[0] #=> String
    #   resp.request_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeFolderPermissions AWS API Documentation
    #
    # @overload describe_folder_permissions(params = {})
    # @param [Hash] params ({})
    def describe_folder_permissions(params = {}, options = {})
      req = build_request(:describe_folder_permissions, params)
      req.send_request(options)
    end

    # Describes the folder resolved permissions. Permissions consists of
    # both folder direct permissions and the inherited permissions from the
    # ancestor folders.
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the Amazon Web Services account that contains the folder.
    #
    # @option params [required, String] :folder_id
    #   The ID of the folder.
    #
    # @option params [String] :namespace
    #   The namespace of the folder whose permissions you want described.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned per request.
    #
    # @option params [String] :next_token
    #   A pagination token for the next set of results.
    #
    # @return [Types::DescribeFolderResolvedPermissionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeFolderResolvedPermissionsResponse#status #status} => Integer
    #   * {Types::DescribeFolderResolvedPermissionsResponse#folder_id #folder_id} => String
    #   * {Types::DescribeFolderResolvedPermissionsResponse#arn #arn} => String
    #   * {Types::DescribeFolderResolvedPermissionsResponse#permissions #permissions} => Array&lt;Types::ResourcePermission&gt;
    #   * {Types::DescribeFolderResolvedPermissionsResponse#request_id #request_id} => String
    #   * {Types::DescribeFolderResolvedPermissionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_folder_resolved_permissions({
    #     aws_account_id: "AwsAccountId", # required
    #     folder_id: "RestrictiveResourceId", # required
    #     namespace: "Namespace",
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> Integer
    #   resp.folder_id #=> String
    #   resp.arn #=> String
    #   resp.permissions #=> Array
    #   resp.permissions[0].principal #=> String
    #   resp.permissions[0].actions #=> Array
    #   resp.permissions[0].actions[0] #=> String
    #   resp.request_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeFolderResolvedPermissions AWS API Documentation
    #
    # @overload describe_folder_resolved_permissions(params = {})
    # @param [Hash] params ({})
    def describe_folder_resolved_permissions(params = {}, options = {})
      req = build_request(:describe_folder_resolved_permissions, params)
      req.send_request(options)
    end

    # Returns an Amazon QuickSight group's description and Amazon Resource
    # Name (ARN).
    #
    # @option params [required, String] :group_name
    #   The name of the group that you want to describe.
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the Amazon Web Services account that the group is in.
    #   Currently, you use the ID for the Amazon Web Services account that
    #   contains your Amazon QuickSight account.
    #
    # @option params [required, String] :namespace
    #   The namespace of the group that you want described.
    #
    # @return [Types::DescribeGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeGroupResponse#group #group} => Types::Group
    #   * {Types::DescribeGroupResponse#request_id #request_id} => String
    #   * {Types::DescribeGroupResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_group({
    #     group_name: "GroupName", # required
    #     aws_account_id: "AwsAccountId", # required
    #     namespace: "Namespace", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.group.arn #=> String
    #   resp.group.group_name #=> String
    #   resp.group.description #=> String
    #   resp.group.principal_id #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeGroup AWS API Documentation
    #
    # @overload describe_group(params = {})
    # @param [Hash] params ({})
    def describe_group(params = {}, options = {})
      req = build_request(:describe_group, params)
      req.send_request(options)
    end

    # Use the `DescribeGroupMembership` operation to determine if a user is
    # a member of the specified group. If the user exists and is a member of
    # the specified group, an associated `GroupMember` object is returned.
    #
    # @option params [required, String] :member_name
    #   The user name of the user that you want to search for.
    #
    # @option params [required, String] :group_name
    #   The name of the group that you want to search.
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the Amazon Web Services account that the group is in.
    #   Currently, you use the ID for the Amazon Web Services account that
    #   contains your Amazon QuickSight account.
    #
    # @option params [required, String] :namespace
    #   The namespace that includes the group you are searching within.
    #
    # @return [Types::DescribeGroupMembershipResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeGroupMembershipResponse#group_member #group_member} => Types::GroupMember
    #   * {Types::DescribeGroupMembershipResponse#request_id #request_id} => String
    #   * {Types::DescribeGroupMembershipResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_group_membership({
    #     member_name: "GroupMemberName", # required
    #     group_name: "GroupName", # required
    #     aws_account_id: "AwsAccountId", # required
    #     namespace: "Namespace", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.group_member.arn #=> String
    #   resp.group_member.member_name #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeGroupMembership AWS API Documentation
    #
    # @overload describe_group_membership(params = {})
    # @param [Hash] params ({})
    def describe_group_membership(params = {}, options = {})
      req = build_request(:describe_group_membership, params)
      req.send_request(options)
    end

    # Describes an existing IAM policy assignment, as specified by the
    # assignment name.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that contains the assignment
    #   that you want to describe.
    #
    # @option params [required, String] :assignment_name
    #   The name of the assignment, also called a rule.
    #
    # @option params [required, String] :namespace
    #   The namespace that contains the assignment.
    #
    # @return [Types::DescribeIAMPolicyAssignmentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeIAMPolicyAssignmentResponse#iam_policy_assignment #iam_policy_assignment} => Types::IAMPolicyAssignment
    #   * {Types::DescribeIAMPolicyAssignmentResponse#request_id #request_id} => String
    #   * {Types::DescribeIAMPolicyAssignmentResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_iam_policy_assignment({
    #     aws_account_id: "AwsAccountId", # required
    #     assignment_name: "IAMPolicyAssignmentName", # required
    #     namespace: "Namespace", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.iam_policy_assignment.aws_account_id #=> String
    #   resp.iam_policy_assignment.assignment_id #=> String
    #   resp.iam_policy_assignment.assignment_name #=> String
    #   resp.iam_policy_assignment.policy_arn #=> String
    #   resp.iam_policy_assignment.identities #=> Hash
    #   resp.iam_policy_assignment.identities["String"] #=> Array
    #   resp.iam_policy_assignment.identities["String"][0] #=> String
    #   resp.iam_policy_assignment.assignment_status #=> String, one of "ENABLED", "DRAFT", "DISABLED"
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeIAMPolicyAssignment AWS API Documentation
    #
    # @overload describe_iam_policy_assignment(params = {})
    # @param [Hash] params ({})
    def describe_iam_policy_assignment(params = {}, options = {})
      req = build_request(:describe_iam_policy_assignment, params)
      req.send_request(options)
    end

    # Describes a SPICE ingestion.
    #
    # @option params [required, String] :aws_account_id
    #   The Amazon Web Services account ID.
    #
    # @option params [required, String] :data_set_id
    #   The ID of the dataset used in the ingestion.
    #
    # @option params [required, String] :ingestion_id
    #   An ID for the ingestion.
    #
    # @return [Types::DescribeIngestionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeIngestionResponse#ingestion #ingestion} => Types::Ingestion
    #   * {Types::DescribeIngestionResponse#request_id #request_id} => String
    #   * {Types::DescribeIngestionResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_ingestion({
    #     aws_account_id: "AwsAccountId", # required
    #     data_set_id: "String", # required
    #     ingestion_id: "IngestionId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.ingestion.arn #=> String
    #   resp.ingestion.ingestion_id #=> String
    #   resp.ingestion.ingestion_status #=> String, one of "INITIALIZED", "QUEUED", "RUNNING", "FAILED", "COMPLETED", "CANCELLED"
    #   resp.ingestion.error_info.type #=> String, one of "FAILURE_TO_ASSUME_ROLE", "INGESTION_SUPERSEDED", "INGESTION_CANCELED", "DATA_SET_DELETED", "DATA_SET_NOT_SPICE", "S3_UPLOADED_FILE_DELETED", "S3_MANIFEST_ERROR", "DATA_TOLERANCE_EXCEPTION", "SPICE_TABLE_NOT_FOUND", "DATA_SET_SIZE_LIMIT_EXCEEDED", "ROW_SIZE_LIMIT_EXCEEDED", "ACCOUNT_CAPACITY_LIMIT_EXCEEDED", "CUSTOMER_ERROR", "DATA_SOURCE_NOT_FOUND", "IAM_ROLE_NOT_AVAILABLE", "CONNECTION_FAILURE", "SQL_TABLE_NOT_FOUND", "PERMISSION_DENIED", "SSL_CERTIFICATE_VALIDATION_FAILURE", "OAUTH_TOKEN_FAILURE", "SOURCE_API_LIMIT_EXCEEDED_FAILURE", "PASSWORD_AUTHENTICATION_FAILURE", "SQL_SCHEMA_MISMATCH_ERROR", "INVALID_DATE_FORMAT", "INVALID_DATAPREP_SYNTAX", "SOURCE_RESOURCE_LIMIT_EXCEEDED", "SQL_INVALID_PARAMETER_VALUE", "QUERY_TIMEOUT", "SQL_NUMERIC_OVERFLOW", "UNRESOLVABLE_HOST", "UNROUTABLE_HOST", "SQL_EXCEPTION", "S3_FILE_INACCESSIBLE", "IOT_FILE_NOT_FOUND", "IOT_DATA_SET_FILE_EMPTY", "INVALID_DATA_SOURCE_CONFIG", "DATA_SOURCE_AUTH_FAILED", "DATA_SOURCE_CONNECTION_FAILED", "FAILURE_TO_PROCESS_JSON_FILE", "INTERNAL_SERVICE_ERROR", "REFRESH_SUPPRESSED_BY_EDIT", "PERMISSION_NOT_FOUND", "ELASTICSEARCH_CURSOR_NOT_ENABLED", "CURSOR_NOT_ENABLED", "DUPLICATE_COLUMN_NAMES_FOUND"
    #   resp.ingestion.error_info.message #=> String
    #   resp.ingestion.row_info.rows_ingested #=> Integer
    #   resp.ingestion.row_info.rows_dropped #=> Integer
    #   resp.ingestion.row_info.total_rows_in_dataset #=> Integer
    #   resp.ingestion.queue_info.waiting_on_ingestion #=> String
    #   resp.ingestion.queue_info.queued_ingestion #=> String
    #   resp.ingestion.created_time #=> Time
    #   resp.ingestion.ingestion_time_in_seconds #=> Integer
    #   resp.ingestion.ingestion_size_in_bytes #=> Integer
    #   resp.ingestion.request_source #=> String, one of "MANUAL", "SCHEDULED"
    #   resp.ingestion.request_type #=> String, one of "INITIAL_INGESTION", "EDIT", "INCREMENTAL_REFRESH", "FULL_REFRESH"
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeIngestion AWS API Documentation
    #
    # @overload describe_ingestion(params = {})
    # @param [Hash] params ({})
    def describe_ingestion(params = {}, options = {})
      req = build_request(:describe_ingestion, params)
      req.send_request(options)
    end

    # Provides a summary and status of IP rules.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that contains the IP rules.
    #
    # @return [Types::DescribeIpRestrictionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeIpRestrictionResponse#aws_account_id #aws_account_id} => String
    #   * {Types::DescribeIpRestrictionResponse#ip_restriction_rule_map #ip_restriction_rule_map} => Hash&lt;String,String&gt;
    #   * {Types::DescribeIpRestrictionResponse#vpc_id_restriction_rule_map #vpc_id_restriction_rule_map} => Hash&lt;String,String&gt;
    #   * {Types::DescribeIpRestrictionResponse#vpc_endpoint_id_restriction_rule_map #vpc_endpoint_id_restriction_rule_map} => Hash&lt;String,String&gt;
    #   * {Types::DescribeIpRestrictionResponse#enabled #enabled} => Boolean
    #   * {Types::DescribeIpRestrictionResponse#request_id #request_id} => String
    #   * {Types::DescribeIpRestrictionResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_ip_restriction({
    #     aws_account_id: "AwsAccountId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.aws_account_id #=> String
    #   resp.ip_restriction_rule_map #=> Hash
    #   resp.ip_restriction_rule_map["CIDR"] #=> String
    #   resp.vpc_id_restriction_rule_map #=> Hash
    #   resp.vpc_id_restriction_rule_map["VpcId"] #=> String
    #   resp.vpc_endpoint_id_restriction_rule_map #=> Hash
    #   resp.vpc_endpoint_id_restriction_rule_map["VpcEndpointId"] #=> String
    #   resp.enabled #=> Boolean
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeIpRestriction AWS API Documentation
    #
    # @overload describe_ip_restriction(params = {})
    # @param [Hash] params ({})
    def describe_ip_restriction(params = {}, options = {})
      req = build_request(:describe_ip_restriction, params)
      req.send_request(options)
    end

    # Describes all customer managed key registrations in a QuickSight
    # account.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that contains the customer
    #   managed key registration that you want to describe.
    #
    # @option params [Boolean] :default_key_only
    #   Determines whether the request returns the default key only.
    #
    # @return [Types::DescribeKeyRegistrationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeKeyRegistrationResponse#aws_account_id #aws_account_id} => String
    #   * {Types::DescribeKeyRegistrationResponse#key_registration #key_registration} => Array&lt;Types::RegisteredCustomerManagedKey&gt;
    #   * {Types::DescribeKeyRegistrationResponse#q_data_key #q_data_key} => Types::QDataKey
    #   * {Types::DescribeKeyRegistrationResponse#request_id #request_id} => String
    #   * {Types::DescribeKeyRegistrationResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_key_registration({
    #     aws_account_id: "AwsAccountId", # required
    #     default_key_only: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.aws_account_id #=> String
    #   resp.key_registration #=> Array
    #   resp.key_registration[0].key_arn #=> String
    #   resp.key_registration[0].default_key #=> Boolean
    #   resp.q_data_key.q_data_key_arn #=> String
    #   resp.q_data_key.q_data_key_type #=> String, one of "AWS_OWNED", "CMK"
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeKeyRegistration AWS API Documentation
    #
    # @overload describe_key_registration(params = {})
    # @param [Hash] params ({})
    def describe_key_registration(params = {}, options = {})
      req = build_request(:describe_key_registration, params)
      req.send_request(options)
    end

    # Describes the current namespace.
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the Amazon Web Services account that contains the
    #   QuickSight namespace that you want to describe.
    #
    # @option params [required, String] :namespace
    #   The namespace that you want to describe.
    #
    # @return [Types::DescribeNamespaceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeNamespaceResponse#namespace #namespace} => Types::NamespaceInfoV2
    #   * {Types::DescribeNamespaceResponse#request_id #request_id} => String
    #   * {Types::DescribeNamespaceResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_namespace({
    #     aws_account_id: "AwsAccountId", # required
    #     namespace: "Namespace", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.namespace.name #=> String
    #   resp.namespace.arn #=> String
    #   resp.namespace.capacity_region #=> String
    #   resp.namespace.creation_status #=> String, one of "CREATED", "CREATING", "DELETING", "RETRYABLE_FAILURE", "NON_RETRYABLE_FAILURE"
    #   resp.namespace.identity_store #=> String, one of "QUICKSIGHT"
    #   resp.namespace.namespace_error.type #=> String, one of "PERMISSION_DENIED", "INTERNAL_SERVICE_ERROR"
    #   resp.namespace.namespace_error.message #=> String
    #   resp.namespace.iam_identity_center_application_arn #=> String
    #   resp.namespace.iam_identity_center_instance_arn #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeNamespace AWS API Documentation
    #
    # @overload describe_namespace(params = {})
    # @param [Hash] params ({})
    def describe_namespace(params = {}, options = {})
      req = build_request(:describe_namespace, params)
      req.send_request(options)
    end

    # Describes a personalization configuration.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that contains the
    #   personalization configuration that the user wants described.
    #
    # @return [Types::DescribeQPersonalizationConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeQPersonalizationConfigurationResponse#personalization_mode #personalization_mode} => String
    #   * {Types::DescribeQPersonalizationConfigurationResponse#request_id #request_id} => String
    #   * {Types::DescribeQPersonalizationConfigurationResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_q_personalization_configuration({
    #     aws_account_id: "AwsAccountId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.personalization_mode #=> String, one of "ENABLED", "DISABLED"
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeQPersonalizationConfiguration AWS API Documentation
    #
    # @overload describe_q_personalization_configuration(params = {})
    # @param [Hash] params ({})
    def describe_q_personalization_configuration(params = {}, options = {})
      req = build_request(:describe_q_personalization_configuration, params)
      req.send_request(options)
    end

    # Describes the state of a QuickSight Q Search configuration.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that contains the QuickSight
    #   Q Search configuration that the user wants described.
    #
    # @return [Types::DescribeQuickSightQSearchConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeQuickSightQSearchConfigurationResponse#q_search_status #q_search_status} => String
    #   * {Types::DescribeQuickSightQSearchConfigurationResponse#request_id #request_id} => String
    #   * {Types::DescribeQuickSightQSearchConfigurationResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_quick_sight_q_search_configuration({
    #     aws_account_id: "AwsAccountId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.q_search_status #=> String, one of "ENABLED", "DISABLED"
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeQuickSightQSearchConfiguration AWS API Documentation
    #
    # @overload describe_quick_sight_q_search_configuration(params = {})
    # @param [Hash] params ({})
    def describe_quick_sight_q_search_configuration(params = {}, options = {})
      req = build_request(:describe_quick_sight_q_search_configuration, params)
      req.send_request(options)
    end

    # Provides a summary of a refresh schedule.
    #
    # @option params [required, String] :aws_account_id
    #   The Amazon Web Services account ID.
    #
    # @option params [required, String] :data_set_id
    #   The ID of the dataset.
    #
    # @option params [required, String] :schedule_id
    #   The ID of the refresh schedule.
    #
    # @return [Types::DescribeRefreshScheduleResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeRefreshScheduleResponse#refresh_schedule #refresh_schedule} => Types::RefreshSchedule
    #   * {Types::DescribeRefreshScheduleResponse#status #status} => Integer
    #   * {Types::DescribeRefreshScheduleResponse#request_id #request_id} => String
    #   * {Types::DescribeRefreshScheduleResponse#arn #arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_refresh_schedule({
    #     aws_account_id: "AwsAccountId", # required
    #     data_set_id: "ResourceId", # required
    #     schedule_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.refresh_schedule.schedule_id #=> String
    #   resp.refresh_schedule.schedule_frequency.interval #=> String, one of "MINUTE15", "MINUTE30", "HOURLY", "DAILY", "WEEKLY", "MONTHLY"
    #   resp.refresh_schedule.schedule_frequency.refresh_on_day.day_of_week #=> String, one of "SUNDAY", "MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY"
    #   resp.refresh_schedule.schedule_frequency.refresh_on_day.day_of_month #=> String
    #   resp.refresh_schedule.schedule_frequency.timezone #=> String
    #   resp.refresh_schedule.schedule_frequency.time_of_the_day #=> String
    #   resp.refresh_schedule.start_after_date_time #=> Time
    #   resp.refresh_schedule.refresh_type #=> String, one of "INCREMENTAL_REFRESH", "FULL_REFRESH"
    #   resp.refresh_schedule.arn #=> String
    #   resp.status #=> Integer
    #   resp.request_id #=> String
    #   resp.arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeRefreshSchedule AWS API Documentation
    #
    # @overload describe_refresh_schedule(params = {})
    # @param [Hash] params ({})
    def describe_refresh_schedule(params = {}, options = {})
      req = build_request(:describe_refresh_schedule, params)
      req.send_request(options)
    end

    # Describes all custom permissions that are mapped to a role.
    #
    # @option params [required, String] :role
    #   The name of the role whose permissions you want described.
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the Amazon Web Services account that you want to create a
    #   group in. The Amazon Web Services account ID that you provide must be
    #   the same Amazon Web Services account that contains your Amazon
    #   QuickSight account.
    #
    # @option params [required, String] :namespace
    #   The namespace that contains the role.
    #
    # @return [Types::DescribeRoleCustomPermissionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeRoleCustomPermissionResponse#custom_permissions_name #custom_permissions_name} => String
    #   * {Types::DescribeRoleCustomPermissionResponse#request_id #request_id} => String
    #   * {Types::DescribeRoleCustomPermissionResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_role_custom_permission({
    #     role: "ADMIN", # required, accepts ADMIN, AUTHOR, READER, ADMIN_PRO, AUTHOR_PRO, READER_PRO
    #     aws_account_id: "AwsAccountId", # required
    #     namespace: "Namespace", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.custom_permissions_name #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeRoleCustomPermission AWS API Documentation
    #
    # @overload describe_role_custom_permission(params = {})
    # @param [Hash] params ({})
    def describe_role_custom_permission(params = {}, options = {})
      req = build_request(:describe_role_custom_permission, params)
      req.send_request(options)
    end

    # Describes a template's metadata.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that contains the template
    #   that you're describing.
    #
    # @option params [required, String] :template_id
    #   The ID for the template.
    #
    # @option params [Integer] :version_number
    #   (Optional) The number for the version to describe. If a
    #   `VersionNumber` parameter value isn't provided, the latest version of
    #   the template is described.
    #
    # @option params [String] :alias_name
    #   The alias of the template that you want to describe. If you name a
    #   specific alias, you describe the version that the alias points to. You
    #   can specify the latest version of the template by providing the
    #   keyword `$LATEST` in the `AliasName` parameter. The keyword
    #   `$PUBLISHED` doesn't apply to templates.
    #
    # @return [Types::DescribeTemplateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeTemplateResponse#template #template} => Types::Template
    #   * {Types::DescribeTemplateResponse#status #status} => Integer
    #   * {Types::DescribeTemplateResponse#request_id #request_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_template({
    #     aws_account_id: "AwsAccountId", # required
    #     template_id: "ShortRestrictiveResourceId", # required
    #     version_number: 1,
    #     alias_name: "AliasName",
    #   })
    #
    # @example Response structure
    #
    #   resp.template.arn #=> String
    #   resp.template.name #=> String
    #   resp.template.version.created_time #=> Time
    #   resp.template.version.errors #=> Array
    #   resp.template.version.errors[0].type #=> String, one of "SOURCE_NOT_FOUND", "DATA_SET_NOT_FOUND", "INTERNAL_FAILURE", "ACCESS_DENIED"
    #   resp.template.version.errors[0].message #=> String
    #   resp.template.version.errors[0].violated_entities #=> Array
    #   resp.template.version.errors[0].violated_entities[0].path #=> String
    #   resp.template.version.version_number #=> Integer
    #   resp.template.version.status #=> String, one of "CREATION_IN_PROGRESS", "CREATION_SUCCESSFUL", "CREATION_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_SUCCESSFUL", "UPDATE_FAILED", "DELETED"
    #   resp.template.version.data_set_configurations #=> Array
    #   resp.template.version.data_set_configurations[0].placeholder #=> String
    #   resp.template.version.data_set_configurations[0].data_set_schema.column_schema_list #=> Array
    #   resp.template.version.data_set_configurations[0].data_set_schema.column_schema_list[0].name #=> String
    #   resp.template.version.data_set_configurations[0].data_set_schema.column_schema_list[0].data_type #=> String
    #   resp.template.version.data_set_configurations[0].data_set_schema.column_schema_list[0].geographic_role #=> String
    #   resp.template.version.data_set_configurations[0].column_group_schema_list #=> Array
    #   resp.template.version.data_set_configurations[0].column_group_schema_list[0].name #=> String
    #   resp.template.version.data_set_configurations[0].column_group_schema_list[0].column_group_column_schema_list #=> Array
    #   resp.template.version.data_set_configurations[0].column_group_schema_list[0].column_group_column_schema_list[0].name #=> String
    #   resp.template.version.description #=> String
    #   resp.template.version.source_entity_arn #=> String
    #   resp.template.version.theme_arn #=> String
    #   resp.template.version.sheets #=> Array
    #   resp.template.version.sheets[0].sheet_id #=> String
    #   resp.template.version.sheets[0].name #=> String
    #   resp.template.version.sheets[0].images #=> Array
    #   resp.template.version.sheets[0].images[0].sheet_image_id #=> String
    #   resp.template.version.sheets[0].images[0].source.sheet_image_static_file_source.static_file_id #=> String
    #   resp.template.version.sheets[0].images[0].scaling.scaling_type #=> String, one of "SCALE_TO_WIDTH", "SCALE_TO_HEIGHT", "SCALE_TO_CONTAINER", "SCALE_NONE"
    #   resp.template.version.sheets[0].images[0].tooltip.tooltip_text.plain_text #=> String
    #   resp.template.version.sheets[0].images[0].tooltip.visibility #=> String, one of "HIDDEN", "VISIBLE"
    #   resp.template.version.sheets[0].images[0].image_content_alt_text #=> String
    #   resp.template.version.sheets[0].images[0].interactions.image_menu_option.availability_status #=> String, one of "ENABLED", "DISABLED"
    #   resp.template.version.sheets[0].images[0].actions #=> Array
    #   resp.template.version.sheets[0].images[0].actions[0].custom_action_id #=> String
    #   resp.template.version.sheets[0].images[0].actions[0].name #=> String
    #   resp.template.version.sheets[0].images[0].actions[0].status #=> String, one of "ENABLED", "DISABLED"
    #   resp.template.version.sheets[0].images[0].actions[0].trigger #=> String, one of "CLICK", "MENU"
    #   resp.template.version.sheets[0].images[0].actions[0].action_operations #=> Array
    #   resp.template.version.sheets[0].images[0].actions[0].action_operations[0].navigation_operation.local_navigation_configuration.target_sheet_id #=> String
    #   resp.template.version.sheets[0].images[0].actions[0].action_operations[0].url_operation.url_template #=> String
    #   resp.template.version.sheets[0].images[0].actions[0].action_operations[0].url_operation.url_target #=> String, one of "NEW_TAB", "NEW_WINDOW", "SAME_TAB"
    #   resp.template.version.sheets[0].images[0].actions[0].action_operations[0].set_parameters_operation.parameter_value_configurations #=> Array
    #   resp.template.version.sheets[0].images[0].actions[0].action_operations[0].set_parameters_operation.parameter_value_configurations[0].destination_parameter_name #=> String
    #   resp.template.version.sheets[0].images[0].actions[0].action_operations[0].set_parameters_operation.parameter_value_configurations[0].value.custom_values_configuration.include_null_value #=> Boolean
    #   resp.template.version.sheets[0].images[0].actions[0].action_operations[0].set_parameters_operation.parameter_value_configurations[0].value.custom_values_configuration.custom_values.string_values #=> Array
    #   resp.template.version.sheets[0].images[0].actions[0].action_operations[0].set_parameters_operation.parameter_value_configurations[0].value.custom_values_configuration.custom_values.string_values[0] #=> String
    #   resp.template.version.sheets[0].images[0].actions[0].action_operations[0].set_parameters_operation.parameter_value_configurations[0].value.custom_values_configuration.custom_values.integer_values #=> Array
    #   resp.template.version.sheets[0].images[0].actions[0].action_operations[0].set_parameters_operation.parameter_value_configurations[0].value.custom_values_configuration.custom_values.integer_values[0] #=> Integer
    #   resp.template.version.sheets[0].images[0].actions[0].action_operations[0].set_parameters_operation.parameter_value_configurations[0].value.custom_values_configuration.custom_values.decimal_values #=> Array
    #   resp.template.version.sheets[0].images[0].actions[0].action_operations[0].set_parameters_operation.parameter_value_configurations[0].value.custom_values_configuration.custom_values.decimal_values[0] #=> Float
    #   resp.template.version.sheets[0].images[0].actions[0].action_operations[0].set_parameters_operation.parameter_value_configurations[0].value.custom_values_configuration.custom_values.date_time_values #=> Array
    #   resp.template.version.sheets[0].images[0].actions[0].action_operations[0].set_parameters_operation.parameter_value_configurations[0].value.custom_values_configuration.custom_values.date_time_values[0] #=> Time
    #   resp.template.version.sheets[0].images[0].actions[0].action_operations[0].set_parameters_operation.parameter_value_configurations[0].value.select_all_value_options #=> String, one of "ALL_VALUES"
    #   resp.template.version.sheets[0].images[0].actions[0].action_operations[0].set_parameters_operation.parameter_value_configurations[0].value.source_parameter_name #=> String
    #   resp.template.version.sheets[0].images[0].actions[0].action_operations[0].set_parameters_operation.parameter_value_configurations[0].value.source_field #=> String
    #   resp.template.version.sheets[0].images[0].actions[0].action_operations[0].set_parameters_operation.parameter_value_configurations[0].value.source_column.data_set_identifier #=> String
    #   resp.template.version.sheets[0].images[0].actions[0].action_operations[0].set_parameters_operation.parameter_value_configurations[0].value.source_column.column_name #=> String
    #   resp.template.template_id #=> String
    #   resp.template.last_updated_time #=> Time
    #   resp.template.created_time #=> Time
    #   resp.status #=> Integer
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeTemplate AWS API Documentation
    #
    # @overload describe_template(params = {})
    # @param [Hash] params ({})
    def describe_template(params = {}, options = {})
      req = build_request(:describe_template, params)
      req.send_request(options)
    end

    # Describes the template alias for a template.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that contains the template
    #   alias that you're describing.
    #
    # @option params [required, String] :template_id
    #   The ID for the template.
    #
    # @option params [required, String] :alias_name
    #   The name of the template alias that you want to describe. If you name
    #   a specific alias, you describe the version that the alias points to.
    #   You can specify the latest version of the template by providing the
    #   keyword `$LATEST` in the `AliasName` parameter. The keyword
    #   `$PUBLISHED` doesn't apply to templates.
    #
    # @return [Types::DescribeTemplateAliasResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeTemplateAliasResponse#template_alias #template_alias} => Types::TemplateAlias
    #   * {Types::DescribeTemplateAliasResponse#status #status} => Integer
    #   * {Types::DescribeTemplateAliasResponse#request_id #request_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_template_alias({
    #     aws_account_id: "AwsAccountId", # required
    #     template_id: "ShortRestrictiveResourceId", # required
    #     alias_name: "AliasName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.template_alias.alias_name #=> String
    #   resp.template_alias.arn #=> String
    #   resp.template_alias.template_version_number #=> Integer
    #   resp.status #=> Integer
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeTemplateAlias AWS API Documentation
    #
    # @overload describe_template_alias(params = {})
    # @param [Hash] params ({})
    def describe_template_alias(params = {}, options = {})
      req = build_request(:describe_template_alias, params)
      req.send_request(options)
    end

    # Provides a detailed description of the definition of a template.
    #
    # <note markdown="1"> If you do not need to know details about the content of a template,
    # for instance if you are trying to check the status of a recently
    # created or updated template, use the [ `DescribeTemplate` ][1]
    # instead.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/quicksight/latest/APIReference/API_DescribeTemplate.html
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that contains the template.
    #   You must be using the Amazon Web Services account that the template is
    #   in.
    #
    # @option params [required, String] :template_id
    #   The ID of the template that you're describing.
    #
    # @option params [Integer] :version_number
    #   The version number of the template.
    #
    # @option params [String] :alias_name
    #   The alias of the template that you want to describe. If you name a
    #   specific alias, you describe the version that the alias points to. You
    #   can specify the latest version of the template by providing the
    #   keyword `$LATEST` in the `AliasName` parameter. The keyword
    #   `$PUBLISHED` doesn't apply to templates.
    #
    # @return [Types::DescribeTemplateDefinitionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeTemplateDefinitionResponse#name #name} => String
    #   * {Types::DescribeTemplateDefinitionResponse#template_id #template_id} => String
    #   * {Types::DescribeTemplateDefinitionResponse#errors #errors} => Array&lt;Types::TemplateError&gt;
    #   * {Types::DescribeTemplateDefinitionResponse#resource_status #resource_status} => String
    #   * {Types::DescribeTemplateDefinitionResponse#theme_arn #theme_arn} => String
    #   * {Types::DescribeTemplateDefinitionResponse#definition #definition} => Types::TemplateVersionDefinition
    #   * {Types::DescribeTemplateDefinitionResponse#status #status} => Integer
    #   * {Types::DescribeTemplateDefinitionResponse#request_id #request_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_template_definition({
    #     aws_account_id: "AwsAccountId", # required
    #     template_id: "ShortRestrictiveResourceId", # required
    #     version_number: 1,
    #     alias_name: "AliasName",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeTemplateDefinition AWS API Documentation
    #
    # @overload describe_template_definition(params = {})
    # @param [Hash] params ({})
    def describe_template_definition(params = {}, options = {})
      req = build_request(:describe_template_definition, params)
      req.send_request(options)
    end

    # Describes read and write permissions on a template.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that contains the template
    #   that you're describing.
    #
    # @option params [required, String] :template_id
    #   The ID for the template.
    #
    # @return [Types::DescribeTemplatePermissionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeTemplatePermissionsResponse#template_id #template_id} => String
    #   * {Types::DescribeTemplatePermissionsResponse#template_arn #template_arn} => String
    #   * {Types::DescribeTemplatePermissionsResponse#permissions #permissions} => Array&lt;Types::ResourcePermission&gt;
    #   * {Types::DescribeTemplatePermissionsResponse#request_id #request_id} => String
    #   * {Types::DescribeTemplatePermissionsResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_template_permissions({
    #     aws_account_id: "AwsAccountId", # required
    #     template_id: "ShortRestrictiveResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.template_id #=> String
    #   resp.template_arn #=> String
    #   resp.permissions #=> Array
    #   resp.permissions[0].principal #=> String
    #   resp.permissions[0].actions #=> Array
    #   resp.permissions[0].actions[0] #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeTemplatePermissions AWS API Documentation
    #
    # @overload describe_template_permissions(params = {})
    # @param [Hash] params ({})
    def describe_template_permissions(params = {}, options = {})
      req = build_request(:describe_template_permissions, params)
      req.send_request(options)
    end

    # Describes a theme.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that contains the theme that
    #   you're describing.
    #
    # @option params [required, String] :theme_id
    #   The ID for the theme.
    #
    # @option params [Integer] :version_number
    #   The version number for the version to describe. If a `VersionNumber`
    #   parameter value isn't provided, the latest version of the theme is
    #   described.
    #
    # @option params [String] :alias_name
    #   The alias of the theme that you want to describe. If you name a
    #   specific alias, you describe the version that the alias points to. You
    #   can specify the latest version of the theme by providing the keyword
    #   `$LATEST` in the `AliasName` parameter. The keyword `$PUBLISHED`
    #   doesn't apply to themes.
    #
    # @return [Types::DescribeThemeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeThemeResponse#theme #theme} => Types::Theme
    #   * {Types::DescribeThemeResponse#status #status} => Integer
    #   * {Types::DescribeThemeResponse#request_id #request_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_theme({
    #     aws_account_id: "AwsAndAccountId", # required
    #     theme_id: "ShortRestrictiveResourceId", # required
    #     version_number: 1,
    #     alias_name: "AliasName",
    #   })
    #
    # @example Response structure
    #
    #   resp.theme.arn #=> String
    #   resp.theme.name #=> String
    #   resp.theme.theme_id #=> String
    #   resp.theme.version.version_number #=> Integer
    #   resp.theme.version.arn #=> String
    #   resp.theme.version.description #=> String
    #   resp.theme.version.base_theme_id #=> String
    #   resp.theme.version.created_time #=> Time
    #   resp.theme.version.configuration.data_color_palette.colors #=> Array
    #   resp.theme.version.configuration.data_color_palette.colors[0] #=> String
    #   resp.theme.version.configuration.data_color_palette.min_max_gradient #=> Array
    #   resp.theme.version.configuration.data_color_palette.min_max_gradient[0] #=> String
    #   resp.theme.version.configuration.data_color_palette.empty_fill_color #=> String
    #   resp.theme.version.configuration.ui_color_palette.primary_foreground #=> String
    #   resp.theme.version.configuration.ui_color_palette.primary_background #=> String
    #   resp.theme.version.configuration.ui_color_palette.secondary_foreground #=> String
    #   resp.theme.version.configuration.ui_color_palette.secondary_background #=> String
    #   resp.theme.version.configuration.ui_color_palette.accent #=> String
    #   resp.theme.version.configuration.ui_color_palette.accent_foreground #=> String
    #   resp.theme.version.configuration.ui_color_palette.danger #=> String
    #   resp.theme.version.configuration.ui_color_palette.danger_foreground #=> String
    #   resp.theme.version.configuration.ui_color_palette.warning #=> String
    #   resp.theme.version.configuration.ui_color_palette.warning_foreground #=> String
    #   resp.theme.version.configuration.ui_color_palette.success #=> String
    #   resp.theme.version.configuration.ui_color_palette.success_foreground #=> String
    #   resp.theme.version.configuration.ui_color_palette.dimension #=> String
    #   resp.theme.version.configuration.ui_color_palette.dimension_foreground #=> String
    #   resp.theme.version.configuration.ui_color_palette.measure #=> String
    #   resp.theme.version.configuration.ui_color_palette.measure_foreground #=> String
    #   resp.theme.version.configuration.sheet.tile.border.show #=> Boolean
    #   resp.theme.version.configuration.sheet.tile_layout.gutter.show #=> Boolean
    #   resp.theme.version.configuration.sheet.tile_layout.margin.show #=> Boolean
    #   resp.theme.version.configuration.typography.font_families #=> Array
    #   resp.theme.version.configuration.typography.font_families[0].font_family #=> String
    #   resp.theme.version.errors #=> Array
    #   resp.theme.version.errors[0].type #=> String, one of "INTERNAL_FAILURE"
    #   resp.theme.version.errors[0].message #=> String
    #   resp.theme.version.status #=> String, one of "CREATION_IN_PROGRESS", "CREATION_SUCCESSFUL", "CREATION_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_SUCCESSFUL", "UPDATE_FAILED", "DELETED"
    #   resp.theme.created_time #=> Time
    #   resp.theme.last_updated_time #=> Time
    #   resp.theme.type #=> String, one of "QUICKSIGHT", "CUSTOM", "ALL"
    #   resp.status #=> Integer
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeTheme AWS API Documentation
    #
    # @overload describe_theme(params = {})
    # @param [Hash] params ({})
    def describe_theme(params = {}, options = {})
      req = build_request(:describe_theme, params)
      req.send_request(options)
    end

    # Describes the alias for a theme.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that contains the theme
    #   alias that you're describing.
    #
    # @option params [required, String] :theme_id
    #   The ID for the theme.
    #
    # @option params [required, String] :alias_name
    #   The name of the theme alias that you want to describe.
    #
    # @return [Types::DescribeThemeAliasResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeThemeAliasResponse#theme_alias #theme_alias} => Types::ThemeAlias
    #   * {Types::DescribeThemeAliasResponse#status #status} => Integer
    #   * {Types::DescribeThemeAliasResponse#request_id #request_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_theme_alias({
    #     aws_account_id: "AwsAccountId", # required
    #     theme_id: "ShortRestrictiveResourceId", # required
    #     alias_name: "AliasName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.theme_alias.arn #=> String
    #   resp.theme_alias.alias_name #=> String
    #   resp.theme_alias.theme_version_number #=> Integer
    #   resp.status #=> Integer
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeThemeAlias AWS API Documentation
    #
    # @overload describe_theme_alias(params = {})
    # @param [Hash] params ({})
    def describe_theme_alias(params = {}, options = {})
      req = build_request(:describe_theme_alias, params)
      req.send_request(options)
    end

    # Describes the read and write permissions for a theme.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that contains the theme that
    #   you're describing.
    #
    # @option params [required, String] :theme_id
    #   The ID for the theme that you want to describe permissions for.
    #
    # @return [Types::DescribeThemePermissionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeThemePermissionsResponse#theme_id #theme_id} => String
    #   * {Types::DescribeThemePermissionsResponse#theme_arn #theme_arn} => String
    #   * {Types::DescribeThemePermissionsResponse#permissions #permissions} => Array&lt;Types::ResourcePermission&gt;
    #   * {Types::DescribeThemePermissionsResponse#request_id #request_id} => String
    #   * {Types::DescribeThemePermissionsResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_theme_permissions({
    #     aws_account_id: "AwsAccountId", # required
    #     theme_id: "ShortRestrictiveResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.theme_id #=> String
    #   resp.theme_arn #=> String
    #   resp.permissions #=> Array
    #   resp.permissions[0].principal #=> String
    #   resp.permissions[0].actions #=> Array
    #   resp.permissions[0].actions[0] #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeThemePermissions AWS API Documentation
    #
    # @overload describe_theme_permissions(params = {})
    # @param [Hash] params ({})
    def describe_theme_permissions(params = {}, options = {})
      req = build_request(:describe_theme_permissions, params)
      req.send_request(options)
    end

    # Describes a topic.
    #
    # @option params [required, String] :aws_account_id
    #   The Amazon Web Services account ID.
    #
    # @option params [required, String] :topic_id
    #   The ID of the topic that you want to describe. This ID is unique per
    #   Amazon Web Services Region for each Amazon Web Services account.
    #
    # @return [Types::DescribeTopicResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeTopicResponse#arn #arn} => String
    #   * {Types::DescribeTopicResponse#topic_id #topic_id} => String
    #   * {Types::DescribeTopicResponse#topic #topic} => Types::TopicDetails
    #   * {Types::DescribeTopicResponse#request_id #request_id} => String
    #   * {Types::DescribeTopicResponse#status #status} => Integer
    #   * {Types::DescribeTopicResponse#custom_instructions #custom_instructions} => Types::CustomInstructions
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_topic({
    #     aws_account_id: "AwsAccountId", # required
    #     topic_id: "TopicId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.topic_id #=> String
    #   resp.topic.name #=> String
    #   resp.topic.description #=> String
    #   resp.topic.user_experience_version #=> String, one of "LEGACY", "NEW_READER_EXPERIENCE"
    #   resp.topic.data_sets #=> Array
    #   resp.topic.data_sets[0].dataset_arn #=> String
    #   resp.topic.data_sets[0].dataset_name #=> String
    #   resp.topic.data_sets[0].dataset_description #=> String
    #   resp.topic.data_sets[0].data_aggregation.dataset_row_date_granularity #=> String, one of "SECOND", "MINUTE", "HOUR", "DAY", "WEEK", "MONTH", "QUARTER", "YEAR"
    #   resp.topic.data_sets[0].data_aggregation.default_date_column_name #=> String
    #   resp.topic.data_sets[0].filters #=> Array
    #   resp.topic.data_sets[0].filters[0].filter_description #=> String
    #   resp.topic.data_sets[0].filters[0].filter_class #=> String, one of "ENFORCED_VALUE_FILTER", "CONDITIONAL_VALUE_FILTER", "NAMED_VALUE_FILTER"
    #   resp.topic.data_sets[0].filters[0].filter_name #=> String
    #   resp.topic.data_sets[0].filters[0].filter_synonyms #=> Array
    #   resp.topic.data_sets[0].filters[0].filter_synonyms[0] #=> String
    #   resp.topic.data_sets[0].filters[0].operand_field_name #=> String
    #   resp.topic.data_sets[0].filters[0].filter_type #=> String, one of "CATEGORY_FILTER", "NUMERIC_EQUALITY_FILTER", "NUMERIC_RANGE_FILTER", "DATE_RANGE_FILTER", "RELATIVE_DATE_FILTER", "NULL_FILTER"
    #   resp.topic.data_sets[0].filters[0].category_filter.category_filter_function #=> String, one of "EXACT", "CONTAINS"
    #   resp.topic.data_sets[0].filters[0].category_filter.category_filter_type #=> String, one of "CUSTOM_FILTER", "CUSTOM_FILTER_LIST", "FILTER_LIST"
    #   resp.topic.data_sets[0].filters[0].category_filter.constant.constant_type #=> String, one of "SINGULAR", "RANGE", "COLLECTIVE"
    #   resp.topic.data_sets[0].filters[0].category_filter.constant.singular_constant #=> String
    #   resp.topic.data_sets[0].filters[0].category_filter.constant.collective_constant.value_list #=> Array
    #   resp.topic.data_sets[0].filters[0].category_filter.constant.collective_constant.value_list[0] #=> String
    #   resp.topic.data_sets[0].filters[0].category_filter.inverse #=> Boolean
    #   resp.topic.data_sets[0].filters[0].numeric_equality_filter.constant.constant_type #=> String, one of "SINGULAR", "RANGE", "COLLECTIVE"
    #   resp.topic.data_sets[0].filters[0].numeric_equality_filter.constant.singular_constant #=> String
    #   resp.topic.data_sets[0].filters[0].numeric_equality_filter.aggregation #=> String, one of "NO_AGGREGATION", "SUM", "AVERAGE", "COUNT", "DISTINCT_COUNT", "MAX", "MEDIAN", "MIN", "STDEV", "STDEVP", "VAR", "VARP"
    #   resp.topic.data_sets[0].filters[0].numeric_range_filter.inclusive #=> Boolean
    #   resp.topic.data_sets[0].filters[0].numeric_range_filter.constant.constant_type #=> String, one of "SINGULAR", "RANGE", "COLLECTIVE"
    #   resp.topic.data_sets[0].filters[0].numeric_range_filter.constant.range_constant.minimum #=> String
    #   resp.topic.data_sets[0].filters[0].numeric_range_filter.constant.range_constant.maximum #=> String
    #   resp.topic.data_sets[0].filters[0].numeric_range_filter.aggregation #=> String, one of "NO_AGGREGATION", "SUM", "AVERAGE", "COUNT", "DISTINCT_COUNT", "MAX", "MEDIAN", "MIN", "STDEV", "STDEVP", "VAR", "VARP"
    #   resp.topic.data_sets[0].filters[0].date_range_filter.inclusive #=> Boolean
    #   resp.topic.data_sets[0].filters[0].date_range_filter.constant.constant_type #=> String, one of "SINGULAR", "RANGE", "COLLECTIVE"
    #   resp.topic.data_sets[0].filters[0].date_range_filter.constant.range_constant.minimum #=> String
    #   resp.topic.data_sets[0].filters[0].date_range_filter.constant.range_constant.maximum #=> String
    #   resp.topic.data_sets[0].filters[0].relative_date_filter.time_granularity #=> String, one of "SECOND", "MINUTE", "HOUR", "DAY", "WEEK", "MONTH", "QUARTER", "YEAR"
    #   resp.topic.data_sets[0].filters[0].relative_date_filter.relative_date_filter_function #=> String, one of "PREVIOUS", "THIS", "LAST", "NEXT", "NOW"
    #   resp.topic.data_sets[0].filters[0].relative_date_filter.constant.constant_type #=> String, one of "SINGULAR", "RANGE", "COLLECTIVE"
    #   resp.topic.data_sets[0].filters[0].relative_date_filter.constant.singular_constant #=> String
    #   resp.topic.data_sets[0].filters[0].null_filter.null_filter_type #=> String, one of "ALL_VALUES", "NON_NULLS_ONLY", "NULLS_ONLY"
    #   resp.topic.data_sets[0].filters[0].null_filter.constant.constant_type #=> String, one of "SINGULAR", "RANGE", "COLLECTIVE"
    #   resp.topic.data_sets[0].filters[0].null_filter.constant.singular_constant #=> String
    #   resp.topic.data_sets[0].filters[0].null_filter.inverse #=> Boolean
    #   resp.topic.data_sets[0].columns #=> Array
    #   resp.topic.data_sets[0].columns[0].column_name #=> String
    #   resp.topic.data_sets[0].columns[0].column_friendly_name #=> String
    #   resp.topic.data_sets[0].columns[0].column_description #=> String
    #   resp.topic.data_sets[0].columns[0].column_synonyms #=> Array
    #   resp.topic.data_sets[0].columns[0].column_synonyms[0] #=> String
    #   resp.topic.data_sets[0].columns[0].column_data_role #=> String, one of "DIMENSION", "MEASURE"
    #   resp.topic.data_sets[0].columns[0].aggregation #=> String, one of "SUM", "MAX", "MIN", "COUNT", "DISTINCT_COUNT", "AVERAGE", "MEDIAN", "STDEV", "STDEVP", "VAR", "VARP"
    #   resp.topic.data_sets[0].columns[0].is_included_in_topic #=> Boolean
    #   resp.topic.data_sets[0].columns[0].disable_indexing #=> Boolean
    #   resp.topic.data_sets[0].columns[0].comparative_order.use_ordering #=> String, one of "GREATER_IS_BETTER", "LESSER_IS_BETTER", "SPECIFIED"
    #   resp.topic.data_sets[0].columns[0].comparative_order.specifed_order #=> Array
    #   resp.topic.data_sets[0].columns[0].comparative_order.specifed_order[0] #=> String
    #   resp.topic.data_sets[0].columns[0].comparative_order.treat_undefined_specified_values #=> String, one of "LEAST", "MOST"
    #   resp.topic.data_sets[0].columns[0].semantic_type.type_name #=> String
    #   resp.topic.data_sets[0].columns[0].semantic_type.sub_type_name #=> String
    #   resp.topic.data_sets[0].columns[0].semantic_type.type_parameters #=> Hash
    #   resp.topic.data_sets[0].columns[0].semantic_type.type_parameters["LimitedString"] #=> String
    #   resp.topic.data_sets[0].columns[0].semantic_type.truthy_cell_value #=> String
    #   resp.topic.data_sets[0].columns[0].semantic_type.truthy_cell_value_synonyms #=> Array
    #   resp.topic.data_sets[0].columns[0].semantic_type.truthy_cell_value_synonyms[0] #=> String
    #   resp.topic.data_sets[0].columns[0].semantic_type.falsey_cell_value #=> String
    #   resp.topic.data_sets[0].columns[0].semantic_type.falsey_cell_value_synonyms #=> Array
    #   resp.topic.data_sets[0].columns[0].semantic_type.falsey_cell_value_synonyms[0] #=> String
    #   resp.topic.data_sets[0].columns[0].time_granularity #=> String, one of "SECOND", "MINUTE", "HOUR", "DAY", "WEEK", "MONTH", "QUARTER", "YEAR"
    #   resp.topic.data_sets[0].columns[0].allowed_aggregations #=> Array
    #   resp.topic.data_sets[0].columns[0].allowed_aggregations[0] #=> String, one of "COUNT", "DISTINCT_COUNT", "MIN", "MAX", "MEDIAN", "SUM", "AVERAGE", "STDEV", "STDEVP", "VAR", "VARP", "PERCENTILE"
    #   resp.topic.data_sets[0].columns[0].not_allowed_aggregations #=> Array
    #   resp.topic.data_sets[0].columns[0].not_allowed_aggregations[0] #=> String, one of "COUNT", "DISTINCT_COUNT", "MIN", "MAX", "MEDIAN", "SUM", "AVERAGE", "STDEV", "STDEVP", "VAR", "VARP", "PERCENTILE"
    #   resp.topic.data_sets[0].columns[0].default_formatting.display_format #=> String, one of "AUTO", "PERCENT", "CURRENCY", "NUMBER", "DATE", "STRING"
    #   resp.topic.data_sets[0].columns[0].default_formatting.display_format_options.use_blank_cell_format #=> Boolean
    #   resp.topic.data_sets[0].columns[0].default_formatting.display_format_options.blank_cell_format #=> String
    #   resp.topic.data_sets[0].columns[0].default_formatting.display_format_options.date_format #=> String
    #   resp.topic.data_sets[0].columns[0].default_formatting.display_format_options.decimal_separator #=> String, one of "COMMA", "DOT"
    #   resp.topic.data_sets[0].columns[0].default_formatting.display_format_options.grouping_separator #=> String
    #   resp.topic.data_sets[0].columns[0].default_formatting.display_format_options.use_grouping #=> Boolean
    #   resp.topic.data_sets[0].columns[0].default_formatting.display_format_options.fraction_digits #=> Integer
    #   resp.topic.data_sets[0].columns[0].default_formatting.display_format_options.prefix #=> String
    #   resp.topic.data_sets[0].columns[0].default_formatting.display_format_options.suffix #=> String
    #   resp.topic.data_sets[0].columns[0].default_formatting.display_format_options.unit_scaler #=> String, one of "NONE", "AUTO", "THOUSANDS", "MILLIONS", "BILLIONS", "TRILLIONS", "LAKHS", "CRORES"
    #   resp.topic.data_sets[0].columns[0].default_formatting.display_format_options.negative_format.prefix #=> String
    #   resp.topic.data_sets[0].columns[0].default_formatting.display_format_options.negative_format.suffix #=> String
    #   resp.topic.data_sets[0].columns[0].default_formatting.display_format_options.currency_symbol #=> String
    #   resp.topic.data_sets[0].columns[0].never_aggregate_in_filter #=> Boolean
    #   resp.topic.data_sets[0].columns[0].cell_value_synonyms #=> Array
    #   resp.topic.data_sets[0].columns[0].cell_value_synonyms[0].cell_value #=> String
    #   resp.topic.data_sets[0].columns[0].cell_value_synonyms[0].synonyms #=> Array
    #   resp.topic.data_sets[0].columns[0].cell_value_synonyms[0].synonyms[0] #=> String
    #   resp.topic.data_sets[0].columns[0].non_additive #=> Boolean
    #   resp.topic.data_sets[0].calculated_fields #=> Array
    #   resp.topic.data_sets[0].calculated_fields[0].calculated_field_name #=> String
    #   resp.topic.data_sets[0].calculated_fields[0].calculated_field_description #=> String
    #   resp.topic.data_sets[0].calculated_fields[0].expression #=> String
    #   resp.topic.data_sets[0].calculated_fields[0].calculated_field_synonyms #=> Array
    #   resp.topic.data_sets[0].calculated_fields[0].calculated_field_synonyms[0] #=> String
    #   resp.topic.data_sets[0].calculated_fields[0].is_included_in_topic #=> Boolean
    #   resp.topic.data_sets[0].calculated_fields[0].disable_indexing #=> Boolean
    #   resp.topic.data_sets[0].calculated_fields[0].column_data_role #=> String, one of "DIMENSION", "MEASURE"
    #   resp.topic.data_sets[0].calculated_fields[0].time_granularity #=> String, one of "SECOND", "MINUTE", "HOUR", "DAY", "WEEK", "MONTH", "QUARTER", "YEAR"
    #   resp.topic.data_sets[0].calculated_fields[0].default_formatting.display_format #=> String, one of "AUTO", "PERCENT", "CURRENCY", "NUMBER", "DATE", "STRING"
    #   resp.topic.data_sets[0].calculated_fields[0].default_formatting.display_format_options.use_blank_cell_format #=> Boolean
    #   resp.topic.data_sets[0].calculated_fields[0].default_formatting.display_format_options.blank_cell_format #=> String
    #   resp.topic.data_sets[0].calculated_fields[0].default_formatting.display_format_options.date_format #=> String
    #   resp.topic.data_sets[0].calculated_fields[0].default_formatting.display_format_options.decimal_separator #=> String, one of "COMMA", "DOT"
    #   resp.topic.data_sets[0].calculated_fields[0].default_formatting.display_format_options.grouping_separator #=> String
    #   resp.topic.data_sets[0].calculated_fields[0].default_formatting.display_format_options.use_grouping #=> Boolean
    #   resp.topic.data_sets[0].calculated_fields[0].default_formatting.display_format_options.fraction_digits #=> Integer
    #   resp.topic.data_sets[0].calculated_fields[0].default_formatting.display_format_options.prefix #=> String
    #   resp.topic.data_sets[0].calculated_fields[0].default_formatting.display_format_options.suffix #=> String
    #   resp.topic.data_sets[0].calculated_fields[0].default_formatting.display_format_options.unit_scaler #=> String, one of "NONE", "AUTO", "THOUSANDS", "MILLIONS", "BILLIONS", "TRILLIONS", "LAKHS", "CRORES"
    #   resp.topic.data_sets[0].calculated_fields[0].default_formatting.display_format_options.negative_format.prefix #=> String
    #   resp.topic.data_sets[0].calculated_fields[0].default_formatting.display_format_options.negative_format.suffix #=> String
    #   resp.topic.data_sets[0].calculated_fields[0].default_formatting.display_format_options.currency_symbol #=> String
    #   resp.topic.data_sets[0].calculated_fields[0].aggregation #=> String, one of "SUM", "MAX", "MIN", "COUNT", "DISTINCT_COUNT", "AVERAGE", "MEDIAN", "STDEV", "STDEVP", "VAR", "VARP"
    #   resp.topic.data_sets[0].calculated_fields[0].comparative_order.use_ordering #=> String, one of "GREATER_IS_BETTER", "LESSER_IS_BETTER", "SPECIFIED"
    #   resp.topic.data_sets[0].calculated_fields[0].comparative_order.specifed_order #=> Array
    #   resp.topic.data_sets[0].calculated_fields[0].comparative_order.specifed_order[0] #=> String
    #   resp.topic.data_sets[0].calculated_fields[0].comparative_order.treat_undefined_specified_values #=> String, one of "LEAST", "MOST"
    #   resp.topic.data_sets[0].calculated_fields[0].semantic_type.type_name #=> String
    #   resp.topic.data_sets[0].calculated_fields[0].semantic_type.sub_type_name #=> String
    #   resp.topic.data_sets[0].calculated_fields[0].semantic_type.type_parameters #=> Hash
    #   resp.topic.data_sets[0].calculated_fields[0].semantic_type.type_parameters["LimitedString"] #=> String
    #   resp.topic.data_sets[0].calculated_fields[0].semantic_type.truthy_cell_value #=> String
    #   resp.topic.data_sets[0].calculated_fields[0].semantic_type.truthy_cell_value_synonyms #=> Array
    #   resp.topic.data_sets[0].calculated_fields[0].semantic_type.truthy_cell_value_synonyms[0] #=> String
    #   resp.topic.data_sets[0].calculated_fields[0].semantic_type.falsey_cell_value #=> String
    #   resp.topic.data_sets[0].calculated_fields[0].semantic_type.falsey_cell_value_synonyms #=> Array
    #   resp.topic.data_sets[0].calculated_fields[0].semantic_type.falsey_cell_value_synonyms[0] #=> String
    #   resp.topic.data_sets[0].calculated_fields[0].allowed_aggregations #=> Array
    #   resp.topic.data_sets[0].calculated_fields[0].allowed_aggregations[0] #=> String, one of "COUNT", "DISTINCT_COUNT", "MIN", "MAX", "MEDIAN", "SUM", "AVERAGE", "STDEV", "STDEVP", "VAR", "VARP", "PERCENTILE"
    #   resp.topic.data_sets[0].calculated_fields[0].not_allowed_aggregations #=> Array
    #   resp.topic.data_sets[0].calculated_fields[0].not_allowed_aggregations[0] #=> String, one of "COUNT", "DISTINCT_COUNT", "MIN", "MAX", "MEDIAN", "SUM", "AVERAGE", "STDEV", "STDEVP", "VAR", "VARP", "PERCENTILE"
    #   resp.topic.data_sets[0].calculated_fields[0].never_aggregate_in_filter #=> Boolean
    #   resp.topic.data_sets[0].calculated_fields[0].cell_value_synonyms #=> Array
    #   resp.topic.data_sets[0].calculated_fields[0].cell_value_synonyms[0].cell_value #=> String
    #   resp.topic.data_sets[0].calculated_fields[0].cell_value_synonyms[0].synonyms #=> Array
    #   resp.topic.data_sets[0].calculated_fields[0].cell_value_synonyms[0].synonyms[0] #=> String
    #   resp.topic.data_sets[0].calculated_fields[0].non_additive #=> Boolean
    #   resp.topic.data_sets[0].named_entities #=> Array
    #   resp.topic.data_sets[0].named_entities[0].entity_name #=> String
    #   resp.topic.data_sets[0].named_entities[0].entity_description #=> String
    #   resp.topic.data_sets[0].named_entities[0].entity_synonyms #=> Array
    #   resp.topic.data_sets[0].named_entities[0].entity_synonyms[0] #=> String
    #   resp.topic.data_sets[0].named_entities[0].semantic_entity_type.type_name #=> String
    #   resp.topic.data_sets[0].named_entities[0].semantic_entity_type.sub_type_name #=> String
    #   resp.topic.data_sets[0].named_entities[0].semantic_entity_type.type_parameters #=> Hash
    #   resp.topic.data_sets[0].named_entities[0].semantic_entity_type.type_parameters["LimitedString"] #=> String
    #   resp.topic.data_sets[0].named_entities[0].definition #=> Array
    #   resp.topic.data_sets[0].named_entities[0].definition[0].field_name #=> String
    #   resp.topic.data_sets[0].named_entities[0].definition[0].property_name #=> String
    #   resp.topic.data_sets[0].named_entities[0].definition[0].property_role #=> String, one of "PRIMARY", "ID"
    #   resp.topic.data_sets[0].named_entities[0].definition[0].property_usage #=> String, one of "INHERIT", "DIMENSION", "MEASURE"
    #   resp.topic.data_sets[0].named_entities[0].definition[0].metric.aggregation #=> String, one of "SUM", "MIN", "MAX", "COUNT", "AVERAGE", "DISTINCT_COUNT", "STDEV", "STDEVP", "VAR", "VARP", "PERCENTILE", "MEDIAN", "CUSTOM"
    #   resp.topic.data_sets[0].named_entities[0].definition[0].metric.aggregation_function_parameters #=> Hash
    #   resp.topic.data_sets[0].named_entities[0].definition[0].metric.aggregation_function_parameters["LimitedString"] #=> String
    #   resp.topic.config_options.q_business_insights_enabled #=> Boolean
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #   resp.custom_instructions.custom_instructions_string #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeTopic AWS API Documentation
    #
    # @overload describe_topic(params = {})
    # @param [Hash] params ({})
    def describe_topic(params = {}, options = {})
      req = build_request(:describe_topic, params)
      req.send_request(options)
    end

    # Describes the permissions of a topic.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that contains the topic that
    #   you want described.
    #
    # @option params [required, String] :topic_id
    #   The ID of the topic that you want to describe. This ID is unique per
    #   Amazon Web Services Region for each Amazon Web Services account.
    #
    # @return [Types::DescribeTopicPermissionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeTopicPermissionsResponse#topic_id #topic_id} => String
    #   * {Types::DescribeTopicPermissionsResponse#topic_arn #topic_arn} => String
    #   * {Types::DescribeTopicPermissionsResponse#permissions #permissions} => Array&lt;Types::ResourcePermission&gt;
    #   * {Types::DescribeTopicPermissionsResponse#status #status} => Integer
    #   * {Types::DescribeTopicPermissionsResponse#request_id #request_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_topic_permissions({
    #     aws_account_id: "AwsAccountId", # required
    #     topic_id: "TopicId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.topic_id #=> String
    #   resp.topic_arn #=> String
    #   resp.permissions #=> Array
    #   resp.permissions[0].principal #=> String
    #   resp.permissions[0].actions #=> Array
    #   resp.permissions[0].actions[0] #=> String
    #   resp.status #=> Integer
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeTopicPermissions AWS API Documentation
    #
    # @overload describe_topic_permissions(params = {})
    # @param [Hash] params ({})
    def describe_topic_permissions(params = {}, options = {})
      req = build_request(:describe_topic_permissions, params)
      req.send_request(options)
    end

    # Describes the status of a topic refresh.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that contains the topic
    #   whose refresh you want to describe.
    #
    # @option params [required, String] :topic_id
    #   The ID of the topic that you want to describe. This ID is unique per
    #   Amazon Web Services Region for each Amazon Web Services account.
    #
    # @option params [required, String] :refresh_id
    #   The ID of the refresh, which is performed when the topic is created or
    #   updated.
    #
    # @return [Types::DescribeTopicRefreshResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeTopicRefreshResponse#refresh_details #refresh_details} => Types::TopicRefreshDetails
    #   * {Types::DescribeTopicRefreshResponse#request_id #request_id} => String
    #   * {Types::DescribeTopicRefreshResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_topic_refresh({
    #     aws_account_id: "AwsAccountId", # required
    #     topic_id: "TopicId", # required
    #     refresh_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.refresh_details.refresh_arn #=> String
    #   resp.refresh_details.refresh_id #=> String
    #   resp.refresh_details.refresh_status #=> String, one of "INITIALIZED", "RUNNING", "FAILED", "COMPLETED", "CANCELLED"
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeTopicRefresh AWS API Documentation
    #
    # @overload describe_topic_refresh(params = {})
    # @param [Hash] params ({})
    def describe_topic_refresh(params = {}, options = {})
      req = build_request(:describe_topic_refresh, params)
      req.send_request(options)
    end

    # Deletes a topic refresh schedule.
    #
    # @option params [required, String] :aws_account_id
    #   The Amazon Web Services account ID.
    #
    # @option params [required, String] :topic_id
    #   The ID of the topic that contains the refresh schedule that you want
    #   to describe. This ID is unique per Amazon Web Services Region for each
    #   Amazon Web Services account.
    #
    # @option params [required, String] :dataset_id
    #   The ID of the dataset.
    #
    # @return [Types::DescribeTopicRefreshScheduleResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeTopicRefreshScheduleResponse#topic_id #topic_id} => String
    #   * {Types::DescribeTopicRefreshScheduleResponse#topic_arn #topic_arn} => String
    #   * {Types::DescribeTopicRefreshScheduleResponse#dataset_arn #dataset_arn} => String
    #   * {Types::DescribeTopicRefreshScheduleResponse#refresh_schedule #refresh_schedule} => Types::TopicRefreshSchedule
    #   * {Types::DescribeTopicRefreshScheduleResponse#status #status} => Integer
    #   * {Types::DescribeTopicRefreshScheduleResponse#request_id #request_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_topic_refresh_schedule({
    #     aws_account_id: "AwsAccountId", # required
    #     topic_id: "TopicId", # required
    #     dataset_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.topic_id #=> String
    #   resp.topic_arn #=> String
    #   resp.dataset_arn #=> String
    #   resp.refresh_schedule.is_enabled #=> Boolean
    #   resp.refresh_schedule.based_on_spice_schedule #=> Boolean
    #   resp.refresh_schedule.starting_at #=> Time
    #   resp.refresh_schedule.timezone #=> String
    #   resp.refresh_schedule.repeat_at #=> String
    #   resp.refresh_schedule.topic_schedule_type #=> String, one of "HOURLY", "DAILY", "WEEKLY", "MONTHLY"
    #   resp.status #=> Integer
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeTopicRefreshSchedule AWS API Documentation
    #
    # @overload describe_topic_refresh_schedule(params = {})
    # @param [Hash] params ({})
    def describe_topic_refresh_schedule(params = {}, options = {})
      req = build_request(:describe_topic_refresh_schedule, params)
      req.send_request(options)
    end

    # Returns information about a user, given the user name.
    #
    # @option params [required, String] :user_name
    #   The name of the user that you want to describe.
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the Amazon Web Services account that the user is in.
    #   Currently, you use the ID for the Amazon Web Services account that
    #   contains your Amazon QuickSight account.
    #
    # @option params [required, String] :namespace
    #   The namespace. Currently, you should set this to `default`.
    #
    # @return [Types::DescribeUserResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeUserResponse#user #user} => Types::User
    #   * {Types::DescribeUserResponse#request_id #request_id} => String
    #   * {Types::DescribeUserResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_user({
    #     user_name: "UserName", # required
    #     aws_account_id: "AwsAccountId", # required
    #     namespace: "Namespace", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.user.arn #=> String
    #   resp.user.user_name #=> String
    #   resp.user.email #=> String
    #   resp.user.role #=> String, one of "ADMIN", "AUTHOR", "READER", "RESTRICTED_AUTHOR", "RESTRICTED_READER", "ADMIN_PRO", "AUTHOR_PRO", "READER_PRO"
    #   resp.user.identity_type #=> String, one of "IAM", "QUICKSIGHT", "IAM_IDENTITY_CENTER"
    #   resp.user.active #=> Boolean
    #   resp.user.principal_id #=> String
    #   resp.user.custom_permissions_name #=> String
    #   resp.user.external_login_federation_provider_type #=> String
    #   resp.user.external_login_federation_provider_url #=> String
    #   resp.user.external_login_id #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeUser AWS API Documentation
    #
    # @overload describe_user(params = {})
    # @param [Hash] params ({})
    def describe_user(params = {}, options = {})
      req = build_request(:describe_user, params)
      req.send_request(options)
    end

    # Describes a VPC connection.
    #
    # @option params [required, String] :aws_account_id
    #   The Amazon Web Services account ID of the account that contains the
    #   VPC connection that you want described.
    #
    # @option params [required, String] :vpc_connection_id
    #   The ID of the VPC connection that you're creating. This ID is a
    #   unique identifier for each Amazon Web Services Region in an Amazon Web
    #   Services account.
    #
    # @return [Types::DescribeVPCConnectionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeVPCConnectionResponse#vpc_connection #vpc_connection} => Types::VPCConnection
    #   * {Types::DescribeVPCConnectionResponse#request_id #request_id} => String
    #   * {Types::DescribeVPCConnectionResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_vpc_connection({
    #     aws_account_id: "AwsAccountId", # required
    #     vpc_connection_id: "VPCConnectionResourceIdUnrestricted", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.vpc_connection.vpc_connection_id #=> String
    #   resp.vpc_connection.arn #=> String
    #   resp.vpc_connection.name #=> String
    #   resp.vpc_connection.vpc_id #=> String
    #   resp.vpc_connection.security_group_ids #=> Array
    #   resp.vpc_connection.security_group_ids[0] #=> String
    #   resp.vpc_connection.dns_resolvers #=> Array
    #   resp.vpc_connection.dns_resolvers[0] #=> String
    #   resp.vpc_connection.status #=> String, one of "CREATION_IN_PROGRESS", "CREATION_SUCCESSFUL", "CREATION_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_SUCCESSFUL", "UPDATE_FAILED", "DELETION_IN_PROGRESS", "DELETION_FAILED", "DELETED"
    #   resp.vpc_connection.availability_status #=> String, one of "AVAILABLE", "UNAVAILABLE", "PARTIALLY_AVAILABLE"
    #   resp.vpc_connection.network_interfaces #=> Array
    #   resp.vpc_connection.network_interfaces[0].subnet_id #=> String
    #   resp.vpc_connection.network_interfaces[0].availability_zone #=> String
    #   resp.vpc_connection.network_interfaces[0].error_message #=> String
    #   resp.vpc_connection.network_interfaces[0].status #=> String, one of "CREATING", "AVAILABLE", "CREATION_FAILED", "UPDATING", "UPDATE_FAILED", "DELETING", "DELETED", "DELETION_FAILED", "DELETION_SCHEDULED", "ATTACHMENT_FAILED_ROLLBACK_FAILED"
    #   resp.vpc_connection.network_interfaces[0].network_interface_id #=> String
    #   resp.vpc_connection.role_arn #=> String
    #   resp.vpc_connection.created_time #=> Time
    #   resp.vpc_connection.last_updated_time #=> Time
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeVPCConnection AWS API Documentation
    #
    # @overload describe_vpc_connection(params = {})
    # @param [Hash] params ({})
    def describe_vpc_connection(params = {}, options = {})
      req = build_request(:describe_vpc_connection, params)
      req.send_request(options)
    end

    # Generates an embed URL that you can use to embed an Amazon QuickSight
    # dashboard or visual in your website, without having to register any
    # reader users. Before you use this action, make sure that you have
    # configured the dashboards and permissions.
    #
    # The following rules apply to the generated URL:
    #
    # * It contains a temporary bearer token. It is valid for 5 minutes
    #   after it is generated. Once redeemed within this period, it cannot
    #   be re-used again.
    #
    # * The URL validity period should not be confused with the actual
    #   session lifetime that can be customized using the `
    #   SessionLifetimeInMinutes ` parameter. The resulting user session is
    #   valid for 15 minutes (minimum) to 10 hours (maximum). The default
    #   session duration is 10 hours.
    #
    # * You are charged only when the URL is used or there is interaction
    #   with Amazon QuickSight.
    #
    # For more information, see [Embedded Analytics][1] in the *Amazon
    # QuickSight User Guide*.
    #
    # For more information about the high-level steps for embedding and for
    # an interactive demo of the ways you can customize embedding, visit the
    # [Amazon QuickSight Developer Portal][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/quicksight/latest/user/embedded-analytics.html
    # [2]: https://docs.aws.amazon.com/quicksight/latest/user/quicksight-dev-portal.html
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the Amazon Web Services account that contains the dashboard
    #   that you're embedding.
    #
    # @option params [Integer] :session_lifetime_in_minutes
    #   How many minutes the session is valid. The session lifetime must be in
    #   \[15-600\] minutes range.
    #
    # @option params [required, String] :namespace
    #   The QuickSight namespace that the anonymous user virtually belongs to.
    #   If you are not using an Amazon QuickSight custom namespace, set this
    #   to `default`.
    #
    # @option params [Array<Types::SessionTag>] :session_tags
    #   The session tags used for row-level security. Before you use this
    #   parameter, make sure that you have configured the relevant datasets
    #   using the `DataSet$RowLevelPermissionTagConfiguration` parameter so
    #   that session tags can be used to provide row-level security.
    #
    #   These are not the tags used for the Amazon Web Services resource
    #   tagging feature. For more information, see [Using Row-Level Security
    #   (RLS) with Tags][1]in the *Amazon QuickSight User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/quicksight/latest/user/quicksight-dev-rls-tags.html
    #
    # @option params [required, Array<String>] :authorized_resource_arns
    #   The Amazon Resource Names (ARNs) for the QuickSight resources that the
    #   user is authorized to access during the lifetime of the session.
    #
    #   If you choose `Dashboard` embedding experience, pass the list of
    #   dashboard ARNs in the account that you want the user to be able to
    #   view.
    #
    #   If you want to make changes to the theme of your embedded content,
    #   pass a list of theme ARNs that the anonymous users need access to.
    #
    #   Currently, you can pass up to 25 theme ARNs in each API call.
    #
    # @option params [required, Types::AnonymousUserEmbeddingExperienceConfiguration] :experience_configuration
    #   The configuration of the experience that you are embedding.
    #
    # @option params [Array<String>] :allowed_domains
    #   The domains that you want to add to the allow list for access to the
    #   generated URL that is then embedded. This optional parameter overrides
    #   the static domains that are configured in the Manage QuickSight menu
    #   in the QuickSight console. Instead, it allows only the domains that
    #   you include in this parameter. You can list up to three domains or
    #   subdomains in each API call.
    #
    #   To include all subdomains under a specific domain to the allow list,
    #   use `*`. For example, `https://*.sapp.amazon.com` includes all
    #   subdomains under `https://sapp.amazon.com`.
    #
    # @return [Types::GenerateEmbedUrlForAnonymousUserResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GenerateEmbedUrlForAnonymousUserResponse#embed_url #embed_url} => String
    #   * {Types::GenerateEmbedUrlForAnonymousUserResponse#status #status} => Integer
    #   * {Types::GenerateEmbedUrlForAnonymousUserResponse#request_id #request_id} => String
    #   * {Types::GenerateEmbedUrlForAnonymousUserResponse#anonymous_user_arn #anonymous_user_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.generate_embed_url_for_anonymous_user({
    #     aws_account_id: "AwsAccountId", # required
    #     session_lifetime_in_minutes: 1,
    #     namespace: "Namespace", # required
    #     session_tags: [
    #       {
    #         key: "SessionTagKey", # required
    #         value: "SessionTagValue", # required
    #       },
    #     ],
    #     authorized_resource_arns: ["Arn"], # required
    #     experience_configuration: { # required
    #       dashboard: {
    #         initial_dashboard_id: "ShortRestrictiveResourceId", # required
    #         enabled_features: ["SHARED_VIEW"], # accepts SHARED_VIEW
    #         disabled_features: ["SHARED_VIEW"], # accepts SHARED_VIEW
    #         feature_configurations: {
    #           shared_view: {
    #             enabled: false, # required
    #           },
    #         },
    #       },
    #       dashboard_visual: {
    #         initial_dashboard_visual_id: { # required
    #           dashboard_id: "ShortRestrictiveResourceId", # required
    #           sheet_id: "ShortRestrictiveResourceId", # required
    #           visual_id: "ShortRestrictiveResourceId", # required
    #         },
    #       },
    #       q_search_bar: {
    #         initial_topic_id: "RestrictiveResourceId", # required
    #       },
    #       generative_qn_a: {
    #         initial_topic_id: "RestrictiveResourceId", # required
    #       },
    #     },
    #     allowed_domains: ["String"],
    #   })
    #
    # @example Response structure
    #
    #   resp.embed_url #=> String
    #   resp.status #=> Integer
    #   resp.request_id #=> String
    #   resp.anonymous_user_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/GenerateEmbedUrlForAnonymousUser AWS API Documentation
    #
    # @overload generate_embed_url_for_anonymous_user(params = {})
    # @param [Hash] params ({})
    def generate_embed_url_for_anonymous_user(params = {}, options = {})
      req = build_request(:generate_embed_url_for_anonymous_user, params)
      req.send_request(options)
    end

    # Generates an embed URL that you can use to embed an Amazon QuickSight
    # experience in your website. This action can be used for any type of
    # user registered in an Amazon QuickSight account. Before you use this
    # action, make sure that you have configured the relevant Amazon
    # QuickSight resource and permissions.
    #
    # The following rules apply to the generated URL:
    #
    # * It contains a temporary bearer token. It is valid for 5 minutes
    #   after it is generated. Once redeemed within this period, it cannot
    #   be re-used again.
    #
    # * The URL validity period should not be confused with the actual
    #   session lifetime that can be customized using the `
    #   SessionLifetimeInMinutes ` parameter.
    #
    #   The resulting user session is valid for 15 minutes (minimum) to 10
    #   hours (maximum). The default session duration is 10 hours.
    #
    # * You are charged only when the URL is used or there is interaction
    #   with Amazon QuickSight.
    #
    # For more information, see [Embedded Analytics][1] in the *Amazon
    # QuickSight User Guide*.
    #
    # For more information about the high-level steps for embedding and for
    # an interactive demo of the ways you can customize embedding, visit the
    # [Amazon QuickSight Developer Portal][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/quicksight/latest/user/embedded-analytics.html
    # [2]: https://docs.aws.amazon.com/quicksight/latest/user/quicksight-dev-portal.html
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the Amazon Web Services account that contains the dashboard
    #   that you're embedding.
    #
    # @option params [Integer] :session_lifetime_in_minutes
    #   How many minutes the session is valid. The session lifetime must be in
    #   \[15-600\] minutes range.
    #
    # @option params [required, String] :user_arn
    #   The Amazon Resource Name for the registered user.
    #
    # @option params [required, Types::RegisteredUserEmbeddingExperienceConfiguration] :experience_configuration
    #   The experience that you want to embed. For registered users, you can
    #   embed QuickSight dashboards, QuickSight visuals, the QuickSight Q
    #   search bar, the QuickSight Generative Q&amp;A experience, or the
    #   entire QuickSight console.
    #
    # @option params [Array<String>] :allowed_domains
    #   The domains that you want to add to the allow list for access to the
    #   generated URL that is then embedded. This optional parameter overrides
    #   the static domains that are configured in the Manage QuickSight menu
    #   in the QuickSight console. Instead, it allows only the domains that
    #   you include in this parameter. You can list up to three domains or
    #   subdomains in each API call.
    #
    #   To include all subdomains under a specific domain to the allow list,
    #   use `*`. For example, `https://*.sapp.amazon.com` includes all
    #   subdomains under `https://sapp.amazon.com`.
    #
    # @return [Types::GenerateEmbedUrlForRegisteredUserResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GenerateEmbedUrlForRegisteredUserResponse#embed_url #embed_url} => String
    #   * {Types::GenerateEmbedUrlForRegisteredUserResponse#status #status} => Integer
    #   * {Types::GenerateEmbedUrlForRegisteredUserResponse#request_id #request_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.generate_embed_url_for_registered_user({
    #     aws_account_id: "AwsAccountId", # required
    #     session_lifetime_in_minutes: 1,
    #     user_arn: "Arn", # required
    #     experience_configuration: { # required
    #       dashboard: {
    #         initial_dashboard_id: "ShortRestrictiveResourceId", # required
    #         feature_configurations: {
    #           state_persistence: {
    #             enabled: false, # required
    #           },
    #           shared_view: {
    #             enabled: false, # required
    #           },
    #           bookmarks: {
    #             enabled: false, # required
    #           },
    #           amazon_q_in_quick_sight: {
    #             executive_summary: {
    #               enabled: false, # required
    #             },
    #           },
    #           schedules: {
    #             enabled: false, # required
    #           },
    #           recent_snapshots: {
    #             enabled: false, # required
    #           },
    #           threshold_alerts: {
    #             enabled: false, # required
    #           },
    #         },
    #       },
    #       quick_sight_console: {
    #         initial_path: "EntryPath",
    #         feature_configurations: {
    #           state_persistence: {
    #             enabled: false, # required
    #           },
    #           shared_view: {
    #             enabled: false, # required
    #           },
    #           amazon_q_in_quick_sight: {
    #             data_qn_a: {
    #               enabled: false, # required
    #             },
    #             generative_authoring: {
    #               enabled: false, # required
    #             },
    #             executive_summary: {
    #               enabled: false, # required
    #             },
    #             data_stories: {
    #               enabled: false, # required
    #             },
    #           },
    #           schedules: {
    #             enabled: false, # required
    #           },
    #           recent_snapshots: {
    #             enabled: false, # required
    #           },
    #           threshold_alerts: {
    #             enabled: false, # required
    #           },
    #         },
    #       },
    #       q_search_bar: {
    #         initial_topic_id: "RestrictiveResourceId",
    #       },
    #       dashboard_visual: {
    #         initial_dashboard_visual_id: { # required
    #           dashboard_id: "ShortRestrictiveResourceId", # required
    #           sheet_id: "ShortRestrictiveResourceId", # required
    #           visual_id: "ShortRestrictiveResourceId", # required
    #         },
    #       },
    #       generative_qn_a: {
    #         initial_topic_id: "RestrictiveResourceId",
    #       },
    #     },
    #     allowed_domains: ["String"],
    #   })
    #
    # @example Response structure
    #
    #   resp.embed_url #=> String
    #   resp.status #=> Integer
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/GenerateEmbedUrlForRegisteredUser AWS API Documentation
    #
    # @overload generate_embed_url_for_registered_user(params = {})
    # @param [Hash] params ({})
    def generate_embed_url_for_registered_user(params = {}, options = {})
      req = build_request(:generate_embed_url_for_registered_user, params)
      req.send_request(options)
    end

    # Generates an embed URL that you can use to embed an QuickSight
    # experience in your website. This action can be used for any type of
    # user that is registered in an QuickSight account that uses IAM
    # Identity Center for authentication. This API requires
    # [identity-enhanced IAM Role sessions][1] for the authenticated user
    # that the API call is being made for.
    #
    # This API uses [trusted identity propagation][2] to ensure that an end
    # user is authenticated and receives the embed URL that is specific to
    # that user. The IAM Identity Center application that the user has
    # logged into needs to have [trusted Identity Propagation enabled for
    # QuickSight][3] with the scope value set to `quicksight:read`. Before
    # you use this action, make sure that you have configured the relevant
    # QuickSight resource and permissions.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/singlesignon/latest/userguide/trustedidentitypropagation-overview.html#types-identity-enhanced-iam-role-sessions
    # [2]: https://docs.aws.amazon.com/singlesignon/latest/userguide/trustedidentitypropagation.html
    # [3]: https://docs.aws.amazon.com/singlesignon/latest/userguide/trustedidentitypropagation-using-customermanagedapps-specify-trusted-apps.html
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services registered user.
    #
    # @option params [Integer] :session_lifetime_in_minutes
    #   The validity of the session in minutes.
    #
    # @option params [required, Types::RegisteredUserEmbeddingExperienceConfiguration] :experience_configuration
    #   The type of experience you want to embed. For registered users, you
    #   can embed QuickSight dashboards or the QuickSight console.
    #
    #   <note markdown="1"> Exactly one of the experience configurations is required. You can
    #   choose `Dashboard` or `QuickSightConsole`. You cannot choose more than
    #   one experience configuration.
    #
    #    </note>
    #
    # @option params [Array<String>] :allowed_domains
    #   A list of domains to be allowed to generate the embed URL.
    #
    # @return [Types::GenerateEmbedUrlForRegisteredUserWithIdentityResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GenerateEmbedUrlForRegisteredUserWithIdentityResponse#embed_url #embed_url} => String
    #   * {Types::GenerateEmbedUrlForRegisteredUserWithIdentityResponse#status #status} => Integer
    #   * {Types::GenerateEmbedUrlForRegisteredUserWithIdentityResponse#request_id #request_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.generate_embed_url_for_registered_user_with_identity({
    #     aws_account_id: "AwsAccountId", # required
    #     session_lifetime_in_minutes: 1,
    #     experience_configuration: { # required
    #       dashboard: {
    #         initial_dashboard_id: "ShortRestrictiveResourceId", # required
    #         feature_configurations: {
    #           state_persistence: {
    #             enabled: false, # required
    #           },
    #           shared_view: {
    #             enabled: false, # required
    #           },
    #           bookmarks: {
    #             enabled: false, # required
    #           },
    #           amazon_q_in_quick_sight: {
    #             executive_summary: {
    #               enabled: false, # required
    #             },
    #           },
    #           schedules: {
    #             enabled: false, # required
    #           },
    #           recent_snapshots: {
    #             enabled: false, # required
    #           },
    #           threshold_alerts: {
    #             enabled: false, # required
    #           },
    #         },
    #       },
    #       quick_sight_console: {
    #         initial_path: "EntryPath",
    #         feature_configurations: {
    #           state_persistence: {
    #             enabled: false, # required
    #           },
    #           shared_view: {
    #             enabled: false, # required
    #           },
    #           amazon_q_in_quick_sight: {
    #             data_qn_a: {
    #               enabled: false, # required
    #             },
    #             generative_authoring: {
    #               enabled: false, # required
    #             },
    #             executive_summary: {
    #               enabled: false, # required
    #             },
    #             data_stories: {
    #               enabled: false, # required
    #             },
    #           },
    #           schedules: {
    #             enabled: false, # required
    #           },
    #           recent_snapshots: {
    #             enabled: false, # required
    #           },
    #           threshold_alerts: {
    #             enabled: false, # required
    #           },
    #         },
    #       },
    #       q_search_bar: {
    #         initial_topic_id: "RestrictiveResourceId",
    #       },
    #       dashboard_visual: {
    #         initial_dashboard_visual_id: { # required
    #           dashboard_id: "ShortRestrictiveResourceId", # required
    #           sheet_id: "ShortRestrictiveResourceId", # required
    #           visual_id: "ShortRestrictiveResourceId", # required
    #         },
    #       },
    #       generative_qn_a: {
    #         initial_topic_id: "RestrictiveResourceId",
    #       },
    #     },
    #     allowed_domains: ["String"],
    #   })
    #
    # @example Response structure
    #
    #   resp.embed_url #=> String
    #   resp.status #=> Integer
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/GenerateEmbedUrlForRegisteredUserWithIdentity AWS API Documentation
    #
    # @overload generate_embed_url_for_registered_user_with_identity(params = {})
    # @param [Hash] params ({})
    def generate_embed_url_for_registered_user_with_identity(params = {}, options = {})
      req = build_request(:generate_embed_url_for_registered_user_with_identity, params)
      req.send_request(options)
    end

    # Generates a temporary session URL and authorization code(bearer token)
    # that you can use to embed an QuickSight read-only dashboard in your
    # website or application. Before you use this command, make sure that
    # you have configured the dashboards and permissions.
    #
    # Currently, you can use `GetDashboardEmbedURL` only from the server,
    # not from the user's browser. The following rules apply to the
    # generated URL:
    #
    # * They must be used together.
    #
    # * They can be used one time only.
    #
    # * They are valid for 5 minutes after you run this command.
    #
    # * You are charged only when the URL is used or there is interaction
    #   with QuickSight.
    #
    # * The resulting user session is valid for 15 minutes (default) up to
    #   10 hours (maximum). You can use the optional
    #   `SessionLifetimeInMinutes` parameter to customize session duration.
    #
    # For more information, see [Embedding Analytics Using
    # GetDashboardEmbedUrl][1] in the *Amazon QuickSight User Guide*.
    #
    # For more information about the high-level steps for embedding and for
    # an interactive demo of the ways you can customize embedding, visit the
    # [Amazon QuickSight Developer Portal][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/quicksight/latest/user/embedded-analytics-deprecated.html
    # [2]: https://docs.aws.amazon.com/quicksight/latest/user/quicksight-dev-portal.html
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the Amazon Web Services account that contains the dashboard
    #   that you're embedding.
    #
    # @option params [required, String] :dashboard_id
    #   The ID for the dashboard, also added to the Identity and Access
    #   Management (IAM) policy.
    #
    # @option params [required, String] :identity_type
    #   The authentication method that the user uses to sign in.
    #
    # @option params [Integer] :session_lifetime_in_minutes
    #   How many minutes the session is valid. The session lifetime must be
    #   15-600 minutes.
    #
    # @option params [Boolean] :undo_redo_disabled
    #   Remove the undo/redo button on the embedded dashboard. The default is
    #   FALSE, which enables the undo/redo button.
    #
    # @option params [Boolean] :reset_disabled
    #   Remove the reset button on the embedded dashboard. The default is
    #   FALSE, which enables the reset button.
    #
    # @option params [Boolean] :state_persistence_enabled
    #   Adds persistence of state for the user session in an embedded
    #   dashboard. Persistence applies to the sheet and the parameter
    #   settings. These are control settings that the dashboard subscriber
    #   (QuickSight reader) chooses while viewing the dashboard. If this is
    #   set to `TRUE`, the settings are the same when the subscriber reopens
    #   the same dashboard URL. The state is stored in QuickSight, not in a
    #   browser cookie. If this is set to FALSE, the state of the user session
    #   is not persisted. The default is `FALSE`.
    #
    # @option params [String] :user_arn
    #   The Amazon QuickSight user's Amazon Resource Name (ARN), for use with
    #   `QUICKSIGHT` identity type. You can use this for any Amazon QuickSight
    #   users in your account (readers, authors, or admins) authenticated as
    #   one of the following:
    #
    #   * Active Directory (AD) users or group members
    #
    #   * Invited nonfederated users
    #
    #   * IAM users and IAM role-based sessions authenticated through
    #     Federated Single Sign-On using SAML, OpenID Connect, or IAM
    #     federation.
    #
    #   Omit this parameter for users in the third group – IAM users and IAM
    #   role-based sessions.
    #
    # @option params [String] :namespace
    #   The QuickSight namespace that contains the dashboard IDs in this
    #   request. If you're not using a custom namespace, set `Namespace =
    #   default`.
    #
    # @option params [Array<String>] :additional_dashboard_ids
    #   A list of one or more dashboard IDs that you want anonymous users to
    #   have tempporary access to. Currently, the `IdentityType` parameter
    #   must be set to `ANONYMOUS` because other identity types authenticate
    #   as QuickSight or IAM users. For example, if you set "`--dashboard-id
    #   dash_id1 --dashboard-id dash_id2 dash_id3 identity-type ANONYMOUS`",
    #   the session can access all three dashboards.
    #
    # @return [Types::GetDashboardEmbedUrlResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDashboardEmbedUrlResponse#embed_url #embed_url} => String
    #   * {Types::GetDashboardEmbedUrlResponse#status #status} => Integer
    #   * {Types::GetDashboardEmbedUrlResponse#request_id #request_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_dashboard_embed_url({
    #     aws_account_id: "AwsAccountId", # required
    #     dashboard_id: "ShortRestrictiveResourceId", # required
    #     identity_type: "IAM", # required, accepts IAM, QUICKSIGHT, ANONYMOUS
    #     session_lifetime_in_minutes: 1,
    #     undo_redo_disabled: false,
    #     reset_disabled: false,
    #     state_persistence_enabled: false,
    #     user_arn: "Arn",
    #     namespace: "Namespace",
    #     additional_dashboard_ids: ["ShortRestrictiveResourceId"],
    #   })
    #
    # @example Response structure
    #
    #   resp.embed_url #=> String
    #   resp.status #=> Integer
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/GetDashboardEmbedUrl AWS API Documentation
    #
    # @overload get_dashboard_embed_url(params = {})
    # @param [Hash] params ({})
    def get_dashboard_embed_url(params = {}, options = {})
      req = build_request(:get_dashboard_embed_url, params)
      req.send_request(options)
    end

    # Generates a session URL and authorization code that you can use to
    # embed the Amazon QuickSight console in your web server code. Use
    # `GetSessionEmbedUrl` where you want to provide an authoring portal
    # that allows users to create data sources, datasets, analyses, and
    # dashboards. The users who access an embedded QuickSight console need
    # belong to the author or admin security cohort. If you want to restrict
    # permissions to some of these features, add a custom permissions
    # profile to the user with the ` UpdateUser ` API operation. Use `
    # RegisterUser ` API operation to add a new user with a custom
    # permission profile attached. For more information, see the following
    # sections in the *Amazon QuickSight User Guide*:
    #
    # * [Embedding Analytics][1]
    #
    # * [Customizing Access to the Amazon QuickSight Console][2]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/quicksight/latest/user/embedded-analytics.html
    # [2]: https://docs.aws.amazon.com/quicksight/latest/user/customizing-permissions-to-the-quicksight-console.html
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the Amazon Web Services account associated with your
    #   QuickSight subscription.
    #
    # @option params [String] :entry_point
    #   The URL you use to access the embedded session. The entry point URL is
    #   constrained to the following paths:
    #
    #   * `/start`
    #
    #   * `/start/analyses`
    #
    #   * `/start/dashboards`
    #
    #   * `/start/favorites`
    #
    #   * `/dashboards/DashboardId ` - where `DashboardId` is the actual ID
    #     key from the QuickSight console URL of the dashboard
    #
    #   * `/analyses/AnalysisId ` - where `AnalysisId` is the actual ID key
    #     from the QuickSight console URL of the analysis
    #
    # @option params [Integer] :session_lifetime_in_minutes
    #   How many minutes the session is valid. The session lifetime must be
    #   15-600 minutes.
    #
    # @option params [String] :user_arn
    #   The Amazon QuickSight user's Amazon Resource Name (ARN), for use with
    #   `QUICKSIGHT` identity type. You can use this for any type of Amazon
    #   QuickSight users in your account (readers, authors, or admins). They
    #   need to be authenticated as one of the following:
    #
    #   1.  Active Directory (AD) users or group members
    #
    #   2.  Invited nonfederated users
    #
    #   3.  IAM users and IAM role-based sessions authenticated through
    #       Federated Single Sign-On using SAML, OpenID Connect, or IAM
    #       federation
    #
    #   Omit this parameter for users in the third group, IAM users and IAM
    #   role-based sessions.
    #
    # @return [Types::GetSessionEmbedUrlResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSessionEmbedUrlResponse#embed_url #embed_url} => String
    #   * {Types::GetSessionEmbedUrlResponse#status #status} => Integer
    #   * {Types::GetSessionEmbedUrlResponse#request_id #request_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_session_embed_url({
    #     aws_account_id: "AwsAccountId", # required
    #     entry_point: "EntryPoint",
    #     session_lifetime_in_minutes: 1,
    #     user_arn: "Arn",
    #   })
    #
    # @example Response structure
    #
    #   resp.embed_url #=> String
    #   resp.status #=> Integer
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/GetSessionEmbedUrl AWS API Documentation
    #
    # @overload get_session_embed_url(params = {})
    # @param [Hash] params ({})
    def get_session_embed_url(params = {}, options = {})
      req = build_request(:get_session_embed_url, params)
      req.send_request(options)
    end

    # Lists Amazon QuickSight analyses that exist in the specified Amazon
    # Web Services account.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that contains the analyses.
    #
    # @option params [String] :next_token
    #   A pagination token that can be used in a subsequent request.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return.
    #
    # @return [Types::ListAnalysesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAnalysesResponse#analysis_summary_list #analysis_summary_list} => Array&lt;Types::AnalysisSummary&gt;
    #   * {Types::ListAnalysesResponse#next_token #next_token} => String
    #   * {Types::ListAnalysesResponse#status #status} => Integer
    #   * {Types::ListAnalysesResponse#request_id #request_id} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_analyses({
    #     aws_account_id: "AwsAccountId", # required
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.analysis_summary_list #=> Array
    #   resp.analysis_summary_list[0].arn #=> String
    #   resp.analysis_summary_list[0].analysis_id #=> String
    #   resp.analysis_summary_list[0].name #=> String
    #   resp.analysis_summary_list[0].status #=> String, one of "CREATION_IN_PROGRESS", "CREATION_SUCCESSFUL", "CREATION_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_SUCCESSFUL", "UPDATE_FAILED", "DELETED"
    #   resp.analysis_summary_list[0].created_time #=> Time
    #   resp.analysis_summary_list[0].last_updated_time #=> Time
    #   resp.next_token #=> String
    #   resp.status #=> Integer
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListAnalyses AWS API Documentation
    #
    # @overload list_analyses(params = {})
    # @param [Hash] params ({})
    def list_analyses(params = {}, options = {})
      req = build_request(:list_analyses, params)
      req.send_request(options)
    end

    # Lists all asset bundle export jobs that have been taken place in the
    # last 14 days. Jobs created more than 14 days ago are deleted forever
    # and are not returned. If you are using the same job ID for multiple
    # jobs, `ListAssetBundleExportJobs` only returns the most recent job
    # that uses the repeated job ID.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that the export jobs were
    #   executed in.
    #
    # @option params [String] :next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned per request.
    #
    # @return [Types::ListAssetBundleExportJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAssetBundleExportJobsResponse#asset_bundle_export_job_summary_list #asset_bundle_export_job_summary_list} => Array&lt;Types::AssetBundleExportJobSummary&gt;
    #   * {Types::ListAssetBundleExportJobsResponse#next_token #next_token} => String
    #   * {Types::ListAssetBundleExportJobsResponse#request_id #request_id} => String
    #   * {Types::ListAssetBundleExportJobsResponse#status #status} => Integer
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_asset_bundle_export_jobs({
    #     aws_account_id: "AwsAccountId", # required
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.asset_bundle_export_job_summary_list #=> Array
    #   resp.asset_bundle_export_job_summary_list[0].job_status #=> String, one of "QUEUED_FOR_IMMEDIATE_EXECUTION", "IN_PROGRESS", "SUCCESSFUL", "FAILED"
    #   resp.asset_bundle_export_job_summary_list[0].arn #=> String
    #   resp.asset_bundle_export_job_summary_list[0].created_time #=> Time
    #   resp.asset_bundle_export_job_summary_list[0].asset_bundle_export_job_id #=> String
    #   resp.asset_bundle_export_job_summary_list[0].include_all_dependencies #=> Boolean
    #   resp.asset_bundle_export_job_summary_list[0].export_format #=> String, one of "CLOUDFORMATION_JSON", "QUICKSIGHT_JSON"
    #   resp.asset_bundle_export_job_summary_list[0].include_permissions #=> Boolean
    #   resp.asset_bundle_export_job_summary_list[0].include_tags #=> Boolean
    #   resp.next_token #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListAssetBundleExportJobs AWS API Documentation
    #
    # @overload list_asset_bundle_export_jobs(params = {})
    # @param [Hash] params ({})
    def list_asset_bundle_export_jobs(params = {}, options = {})
      req = build_request(:list_asset_bundle_export_jobs, params)
      req.send_request(options)
    end

    # Lists all asset bundle import jobs that have taken place in the last
    # 14 days. Jobs created more than 14 days ago are deleted forever and
    # are not returned. If you are using the same job ID for multiple jobs,
    # `ListAssetBundleImportJobs` only returns the most recent job that uses
    # the repeated job ID.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that the import jobs were
    #   executed in.
    #
    # @option params [String] :next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned per request.
    #
    # @return [Types::ListAssetBundleImportJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAssetBundleImportJobsResponse#asset_bundle_import_job_summary_list #asset_bundle_import_job_summary_list} => Array&lt;Types::AssetBundleImportJobSummary&gt;
    #   * {Types::ListAssetBundleImportJobsResponse#next_token #next_token} => String
    #   * {Types::ListAssetBundleImportJobsResponse#request_id #request_id} => String
    #   * {Types::ListAssetBundleImportJobsResponse#status #status} => Integer
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_asset_bundle_import_jobs({
    #     aws_account_id: "AwsAccountId", # required
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.asset_bundle_import_job_summary_list #=> Array
    #   resp.asset_bundle_import_job_summary_list[0].job_status #=> String, one of "QUEUED_FOR_IMMEDIATE_EXECUTION", "IN_PROGRESS", "SUCCESSFUL", "FAILED", "FAILED_ROLLBACK_IN_PROGRESS", "FAILED_ROLLBACK_COMPLETED", "FAILED_ROLLBACK_ERROR"
    #   resp.asset_bundle_import_job_summary_list[0].arn #=> String
    #   resp.asset_bundle_import_job_summary_list[0].created_time #=> Time
    #   resp.asset_bundle_import_job_summary_list[0].asset_bundle_import_job_id #=> String
    #   resp.asset_bundle_import_job_summary_list[0].failure_action #=> String, one of "DO_NOTHING", "ROLLBACK"
    #   resp.next_token #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListAssetBundleImportJobs AWS API Documentation
    #
    # @overload list_asset_bundle_import_jobs(params = {})
    # @param [Hash] params ({})
    def list_asset_bundle_import_jobs(params = {}, options = {})
      req = build_request(:list_asset_bundle_import_jobs, params)
      req.send_request(options)
    end

    # Lists all brands in an QuickSight account.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that owns the brands that
    #   you want to list.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned in a single request.
    #
    # @option params [String] :next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #
    # @return [Types::ListBrandsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListBrandsResponse#next_token #next_token} => String
    #   * {Types::ListBrandsResponse#brands #brands} => Array&lt;Types::BrandSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_brands({
    #     aws_account_id: "AwsAccountId", # required
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.brands #=> Array
    #   resp.brands[0].arn #=> String
    #   resp.brands[0].brand_id #=> String
    #   resp.brands[0].brand_name #=> String
    #   resp.brands[0].description #=> String
    #   resp.brands[0].brand_status #=> String, one of "CREATE_IN_PROGRESS", "CREATE_SUCCEEDED", "CREATE_FAILED", "DELETE_IN_PROGRESS", "DELETE_FAILED"
    #   resp.brands[0].created_time #=> Time
    #   resp.brands[0].last_updated_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListBrands AWS API Documentation
    #
    # @overload list_brands(params = {})
    # @param [Hash] params ({})
    def list_brands(params = {}, options = {})
      req = build_request(:list_brands, params)
      req.send_request(options)
    end

    # Returns a list of all the custom permissions profiles.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that contains the custom
    #   permissions profiles that you want to list.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return.
    #
    # @option params [String] :next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #
    # @return [Types::ListCustomPermissionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCustomPermissionsResponse#status #status} => Integer
    #   * {Types::ListCustomPermissionsResponse#custom_permissions_list #custom_permissions_list} => Array&lt;Types::CustomPermissions&gt;
    #   * {Types::ListCustomPermissionsResponse#next_token #next_token} => String
    #   * {Types::ListCustomPermissionsResponse#request_id #request_id} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_custom_permissions({
    #     aws_account_id: "AwsAccountId", # required
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> Integer
    #   resp.custom_permissions_list #=> Array
    #   resp.custom_permissions_list[0].arn #=> String
    #   resp.custom_permissions_list[0].custom_permissions_name #=> String
    #   resp.custom_permissions_list[0].capabilities.export_to_csv #=> String, one of "DENY"
    #   resp.custom_permissions_list[0].capabilities.export_to_excel #=> String, one of "DENY"
    #   resp.custom_permissions_list[0].capabilities.export_to_pdf #=> String, one of "DENY"
    #   resp.custom_permissions_list[0].capabilities.print_reports #=> String, one of "DENY"
    #   resp.custom_permissions_list[0].capabilities.create_and_update_themes #=> String, one of "DENY"
    #   resp.custom_permissions_list[0].capabilities.add_or_run_anomaly_detection_for_analyses #=> String, one of "DENY"
    #   resp.custom_permissions_list[0].capabilities.share_analyses #=> String, one of "DENY"
    #   resp.custom_permissions_list[0].capabilities.create_and_update_datasets #=> String, one of "DENY"
    #   resp.custom_permissions_list[0].capabilities.share_datasets #=> String, one of "DENY"
    #   resp.custom_permissions_list[0].capabilities.subscribe_dashboard_email_reports #=> String, one of "DENY"
    #   resp.custom_permissions_list[0].capabilities.create_and_update_dashboard_email_reports #=> String, one of "DENY"
    #   resp.custom_permissions_list[0].capabilities.share_dashboards #=> String, one of "DENY"
    #   resp.custom_permissions_list[0].capabilities.create_and_update_threshold_alerts #=> String, one of "DENY"
    #   resp.custom_permissions_list[0].capabilities.rename_shared_folders #=> String, one of "DENY"
    #   resp.custom_permissions_list[0].capabilities.create_shared_folders #=> String, one of "DENY"
    #   resp.custom_permissions_list[0].capabilities.create_and_update_data_sources #=> String, one of "DENY"
    #   resp.custom_permissions_list[0].capabilities.share_data_sources #=> String, one of "DENY"
    #   resp.custom_permissions_list[0].capabilities.view_account_spice_capacity #=> String, one of "DENY"
    #   resp.custom_permissions_list[0].capabilities.create_spice_dataset #=> String, one of "DENY"
    #   resp.custom_permissions_list[0].capabilities.export_to_pdf_in_scheduled_reports #=> String, one of "DENY"
    #   resp.custom_permissions_list[0].capabilities.export_to_csv_in_scheduled_reports #=> String, one of "DENY"
    #   resp.custom_permissions_list[0].capabilities.export_to_excel_in_scheduled_reports #=> String, one of "DENY"
    #   resp.custom_permissions_list[0].capabilities.include_content_in_scheduled_reports_email #=> String, one of "DENY"
    #   resp.custom_permissions_list[0].capabilities.dashboard #=> String, one of "DENY"
    #   resp.custom_permissions_list[0].capabilities.analysis #=> String, one of "DENY"
    #   resp.next_token #=> String
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListCustomPermissions AWS API Documentation
    #
    # @overload list_custom_permissions(params = {})
    # @param [Hash] params ({})
    def list_custom_permissions(params = {}, options = {})
      req = build_request(:list_custom_permissions, params)
      req.send_request(options)
    end

    # Lists all the versions of the dashboards in the QuickSight
    # subscription.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that contains the dashboard
    #   that you're listing versions for.
    #
    # @option params [required, String] :dashboard_id
    #   The ID for the dashboard.
    #
    # @option params [String] :next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned per request.
    #
    # @return [Types::ListDashboardVersionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDashboardVersionsResponse#dashboard_version_summary_list #dashboard_version_summary_list} => Array&lt;Types::DashboardVersionSummary&gt;
    #   * {Types::ListDashboardVersionsResponse#next_token #next_token} => String
    #   * {Types::ListDashboardVersionsResponse#status #status} => Integer
    #   * {Types::ListDashboardVersionsResponse#request_id #request_id} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_dashboard_versions({
    #     aws_account_id: "AwsAccountId", # required
    #     dashboard_id: "ShortRestrictiveResourceId", # required
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.dashboard_version_summary_list #=> Array
    #   resp.dashboard_version_summary_list[0].arn #=> String
    #   resp.dashboard_version_summary_list[0].created_time #=> Time
    #   resp.dashboard_version_summary_list[0].version_number #=> Integer
    #   resp.dashboard_version_summary_list[0].status #=> String, one of "CREATION_IN_PROGRESS", "CREATION_SUCCESSFUL", "CREATION_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_SUCCESSFUL", "UPDATE_FAILED", "DELETED"
    #   resp.dashboard_version_summary_list[0].source_entity_arn #=> String
    #   resp.dashboard_version_summary_list[0].description #=> String
    #   resp.next_token #=> String
    #   resp.status #=> Integer
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListDashboardVersions AWS API Documentation
    #
    # @overload list_dashboard_versions(params = {})
    # @param [Hash] params ({})
    def list_dashboard_versions(params = {}, options = {})
      req = build_request(:list_dashboard_versions, params)
      req.send_request(options)
    end

    # Lists dashboards in an Amazon Web Services account.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that contains the dashboards
    #   that you're listing.
    #
    # @option params [String] :next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned per request.
    #
    # @return [Types::ListDashboardsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDashboardsResponse#dashboard_summary_list #dashboard_summary_list} => Array&lt;Types::DashboardSummary&gt;
    #   * {Types::ListDashboardsResponse#next_token #next_token} => String
    #   * {Types::ListDashboardsResponse#status #status} => Integer
    #   * {Types::ListDashboardsResponse#request_id #request_id} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_dashboards({
    #     aws_account_id: "AwsAccountId", # required
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.dashboard_summary_list #=> Array
    #   resp.dashboard_summary_list[0].arn #=> String
    #   resp.dashboard_summary_list[0].dashboard_id #=> String
    #   resp.dashboard_summary_list[0].name #=> String
    #   resp.dashboard_summary_list[0].created_time #=> Time
    #   resp.dashboard_summary_list[0].last_updated_time #=> Time
    #   resp.dashboard_summary_list[0].published_version_number #=> Integer
    #   resp.dashboard_summary_list[0].last_published_time #=> Time
    #   resp.next_token #=> String
    #   resp.status #=> Integer
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListDashboards AWS API Documentation
    #
    # @overload list_dashboards(params = {})
    # @param [Hash] params ({})
    def list_dashboards(params = {}, options = {})
      req = build_request(:list_dashboards, params)
      req.send_request(options)
    end

    # Lists all of the datasets belonging to the current Amazon Web Services
    # account in an Amazon Web Services Region.
    #
    # The permissions resource is
    # `arn:aws:quicksight:region:aws-account-id:dataset/*`.
    #
    # @option params [required, String] :aws_account_id
    #   The Amazon Web Services account ID.
    #
    # @option params [String] :next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned per request.
    #
    # @return [Types::ListDataSetsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDataSetsResponse#data_set_summaries #data_set_summaries} => Array&lt;Types::DataSetSummary&gt;
    #   * {Types::ListDataSetsResponse#next_token #next_token} => String
    #   * {Types::ListDataSetsResponse#request_id #request_id} => String
    #   * {Types::ListDataSetsResponse#status #status} => Integer
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_data_sets({
    #     aws_account_id: "AwsAccountId", # required
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.data_set_summaries #=> Array
    #   resp.data_set_summaries[0].arn #=> String
    #   resp.data_set_summaries[0].data_set_id #=> String
    #   resp.data_set_summaries[0].name #=> String
    #   resp.data_set_summaries[0].created_time #=> Time
    #   resp.data_set_summaries[0].last_updated_time #=> Time
    #   resp.data_set_summaries[0].import_mode #=> String, one of "SPICE", "DIRECT_QUERY"
    #   resp.data_set_summaries[0].row_level_permission_data_set.namespace #=> String
    #   resp.data_set_summaries[0].row_level_permission_data_set.arn #=> String
    #   resp.data_set_summaries[0].row_level_permission_data_set.permission_policy #=> String, one of "GRANT_ACCESS", "DENY_ACCESS"
    #   resp.data_set_summaries[0].row_level_permission_data_set.format_version #=> String, one of "VERSION_1", "VERSION_2"
    #   resp.data_set_summaries[0].row_level_permission_data_set.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.data_set_summaries[0].row_level_permission_tag_configuration_applied #=> Boolean
    #   resp.data_set_summaries[0].column_level_permission_rules_applied #=> Boolean
    #   resp.data_set_summaries[0].use_as #=> String, one of "RLS_RULES"
    #   resp.next_token #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListDataSets AWS API Documentation
    #
    # @overload list_data_sets(params = {})
    # @param [Hash] params ({})
    def list_data_sets(params = {}, options = {})
      req = build_request(:list_data_sets, params)
      req.send_request(options)
    end

    # Lists data sources in current Amazon Web Services Region that belong
    # to this Amazon Web Services account.
    #
    # @option params [required, String] :aws_account_id
    #   The Amazon Web Services account ID.
    #
    # @option params [String] :next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned per request.
    #
    # @return [Types::ListDataSourcesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDataSourcesResponse#data_sources #data_sources} => Array&lt;Types::DataSource&gt;
    #   * {Types::ListDataSourcesResponse#next_token #next_token} => String
    #   * {Types::ListDataSourcesResponse#request_id #request_id} => String
    #   * {Types::ListDataSourcesResponse#status #status} => Integer
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_data_sources({
    #     aws_account_id: "AwsAccountId", # required
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.data_sources #=> Array
    #   resp.data_sources[0].arn #=> String
    #   resp.data_sources[0].data_source_id #=> String
    #   resp.data_sources[0].name #=> String
    #   resp.data_sources[0].type #=> String, one of "ADOBE_ANALYTICS", "AMAZON_ELASTICSEARCH", "ATHENA", "AURORA", "AURORA_POSTGRESQL", "AWS_IOT_ANALYTICS", "GITHUB", "JIRA", "MARIADB", "MYSQL", "ORACLE", "POSTGRESQL", "PRESTO", "REDSHIFT", "S3", "SALESFORCE", "SERVICENOW", "SNOWFLAKE", "SPARK", "SQLSERVER", "TERADATA", "TWITTER", "TIMESTREAM", "AMAZON_OPENSEARCH", "EXASOL", "DATABRICKS", "STARBURST", "TRINO", "BIGQUERY", "GOOGLESHEETS"
    #   resp.data_sources[0].status #=> String, one of "CREATION_IN_PROGRESS", "CREATION_SUCCESSFUL", "CREATION_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_SUCCESSFUL", "UPDATE_FAILED", "DELETED"
    #   resp.data_sources[0].created_time #=> Time
    #   resp.data_sources[0].last_updated_time #=> Time
    #   resp.data_sources[0].data_source_parameters.amazon_elasticsearch_parameters.domain #=> String
    #   resp.data_sources[0].data_source_parameters.athena_parameters.work_group #=> String
    #   resp.data_sources[0].data_source_parameters.athena_parameters.role_arn #=> String
    #   resp.data_sources[0].data_source_parameters.athena_parameters.identity_center_configuration.enable_identity_propagation #=> Boolean
    #   resp.data_sources[0].data_source_parameters.aurora_parameters.host #=> String
    #   resp.data_sources[0].data_source_parameters.aurora_parameters.port #=> Integer
    #   resp.data_sources[0].data_source_parameters.aurora_parameters.database #=> String
    #   resp.data_sources[0].data_source_parameters.aurora_postgre_sql_parameters.host #=> String
    #   resp.data_sources[0].data_source_parameters.aurora_postgre_sql_parameters.port #=> Integer
    #   resp.data_sources[0].data_source_parameters.aurora_postgre_sql_parameters.database #=> String
    #   resp.data_sources[0].data_source_parameters.aws_iot_analytics_parameters.data_set_name #=> String
    #   resp.data_sources[0].data_source_parameters.jira_parameters.site_base_url #=> String
    #   resp.data_sources[0].data_source_parameters.maria_db_parameters.host #=> String
    #   resp.data_sources[0].data_source_parameters.maria_db_parameters.port #=> Integer
    #   resp.data_sources[0].data_source_parameters.maria_db_parameters.database #=> String
    #   resp.data_sources[0].data_source_parameters.my_sql_parameters.host #=> String
    #   resp.data_sources[0].data_source_parameters.my_sql_parameters.port #=> Integer
    #   resp.data_sources[0].data_source_parameters.my_sql_parameters.database #=> String
    #   resp.data_sources[0].data_source_parameters.oracle_parameters.host #=> String
    #   resp.data_sources[0].data_source_parameters.oracle_parameters.port #=> Integer
    #   resp.data_sources[0].data_source_parameters.oracle_parameters.database #=> String
    #   resp.data_sources[0].data_source_parameters.oracle_parameters.use_service_name #=> Boolean
    #   resp.data_sources[0].data_source_parameters.postgre_sql_parameters.host #=> String
    #   resp.data_sources[0].data_source_parameters.postgre_sql_parameters.port #=> Integer
    #   resp.data_sources[0].data_source_parameters.postgre_sql_parameters.database #=> String
    #   resp.data_sources[0].data_source_parameters.presto_parameters.host #=> String
    #   resp.data_sources[0].data_source_parameters.presto_parameters.port #=> Integer
    #   resp.data_sources[0].data_source_parameters.presto_parameters.catalog #=> String
    #   resp.data_sources[0].data_source_parameters.rds_parameters.instance_id #=> String
    #   resp.data_sources[0].data_source_parameters.rds_parameters.database #=> String
    #   resp.data_sources[0].data_source_parameters.redshift_parameters.host #=> String
    #   resp.data_sources[0].data_source_parameters.redshift_parameters.port #=> Integer
    #   resp.data_sources[0].data_source_parameters.redshift_parameters.database #=> String
    #   resp.data_sources[0].data_source_parameters.redshift_parameters.cluster_id #=> String
    #   resp.data_sources[0].data_source_parameters.redshift_parameters.iam_parameters.role_arn #=> String
    #   resp.data_sources[0].data_source_parameters.redshift_parameters.iam_parameters.database_user #=> String
    #   resp.data_sources[0].data_source_parameters.redshift_parameters.iam_parameters.database_groups #=> Array
    #   resp.data_sources[0].data_source_parameters.redshift_parameters.iam_parameters.database_groups[0] #=> String
    #   resp.data_sources[0].data_source_parameters.redshift_parameters.iam_parameters.auto_create_database_user #=> Boolean
    #   resp.data_sources[0].data_source_parameters.redshift_parameters.identity_center_configuration.enable_identity_propagation #=> Boolean
    #   resp.data_sources[0].data_source_parameters.s3_parameters.manifest_file_location.bucket #=> String
    #   resp.data_sources[0].data_source_parameters.s3_parameters.manifest_file_location.key #=> String
    #   resp.data_sources[0].data_source_parameters.s3_parameters.role_arn #=> String
    #   resp.data_sources[0].data_source_parameters.service_now_parameters.site_base_url #=> String
    #   resp.data_sources[0].data_source_parameters.snowflake_parameters.host #=> String
    #   resp.data_sources[0].data_source_parameters.snowflake_parameters.database #=> String
    #   resp.data_sources[0].data_source_parameters.snowflake_parameters.warehouse #=> String
    #   resp.data_sources[0].data_source_parameters.snowflake_parameters.authentication_type #=> String, one of "PASSWORD", "TOKEN", "X509"
    #   resp.data_sources[0].data_source_parameters.snowflake_parameters.database_access_control_role #=> String
    #   resp.data_sources[0].data_source_parameters.snowflake_parameters.o_auth_parameters.token_provider_url #=> String
    #   resp.data_sources[0].data_source_parameters.snowflake_parameters.o_auth_parameters.o_auth_scope #=> String
    #   resp.data_sources[0].data_source_parameters.snowflake_parameters.o_auth_parameters.identity_provider_vpc_connection_properties.vpc_connection_arn #=> String
    #   resp.data_sources[0].data_source_parameters.snowflake_parameters.o_auth_parameters.identity_provider_resource_uri #=> String
    #   resp.data_sources[0].data_source_parameters.spark_parameters.host #=> String
    #   resp.data_sources[0].data_source_parameters.spark_parameters.port #=> Integer
    #   resp.data_sources[0].data_source_parameters.sql_server_parameters.host #=> String
    #   resp.data_sources[0].data_source_parameters.sql_server_parameters.port #=> Integer
    #   resp.data_sources[0].data_source_parameters.sql_server_parameters.database #=> String
    #   resp.data_sources[0].data_source_parameters.teradata_parameters.host #=> String
    #   resp.data_sources[0].data_source_parameters.teradata_parameters.port #=> Integer
    #   resp.data_sources[0].data_source_parameters.teradata_parameters.database #=> String
    #   resp.data_sources[0].data_source_parameters.twitter_parameters.query #=> String
    #   resp.data_sources[0].data_source_parameters.twitter_parameters.max_rows #=> Integer
    #   resp.data_sources[0].data_source_parameters.amazon_open_search_parameters.domain #=> String
    #   resp.data_sources[0].data_source_parameters.exasol_parameters.host #=> String
    #   resp.data_sources[0].data_source_parameters.exasol_parameters.port #=> Integer
    #   resp.data_sources[0].data_source_parameters.databricks_parameters.host #=> String
    #   resp.data_sources[0].data_source_parameters.databricks_parameters.port #=> Integer
    #   resp.data_sources[0].data_source_parameters.databricks_parameters.sql_endpoint_path #=> String
    #   resp.data_sources[0].data_source_parameters.starburst_parameters.host #=> String
    #   resp.data_sources[0].data_source_parameters.starburst_parameters.port #=> Integer
    #   resp.data_sources[0].data_source_parameters.starburst_parameters.catalog #=> String
    #   resp.data_sources[0].data_source_parameters.starburst_parameters.product_type #=> String, one of "GALAXY", "ENTERPRISE"
    #   resp.data_sources[0].data_source_parameters.starburst_parameters.database_access_control_role #=> String
    #   resp.data_sources[0].data_source_parameters.starburst_parameters.authentication_type #=> String, one of "PASSWORD", "TOKEN", "X509"
    #   resp.data_sources[0].data_source_parameters.starburst_parameters.o_auth_parameters.token_provider_url #=> String
    #   resp.data_sources[0].data_source_parameters.starburst_parameters.o_auth_parameters.o_auth_scope #=> String
    #   resp.data_sources[0].data_source_parameters.starburst_parameters.o_auth_parameters.identity_provider_vpc_connection_properties.vpc_connection_arn #=> String
    #   resp.data_sources[0].data_source_parameters.starburst_parameters.o_auth_parameters.identity_provider_resource_uri #=> String
    #   resp.data_sources[0].data_source_parameters.trino_parameters.host #=> String
    #   resp.data_sources[0].data_source_parameters.trino_parameters.port #=> Integer
    #   resp.data_sources[0].data_source_parameters.trino_parameters.catalog #=> String
    #   resp.data_sources[0].data_source_parameters.big_query_parameters.project_id #=> String
    #   resp.data_sources[0].data_source_parameters.big_query_parameters.data_set_region #=> String
    #   resp.data_sources[0].data_source_parameters.impala_parameters.host #=> String
    #   resp.data_sources[0].data_source_parameters.impala_parameters.port #=> Integer
    #   resp.data_sources[0].data_source_parameters.impala_parameters.database #=> String
    #   resp.data_sources[0].data_source_parameters.impala_parameters.sql_endpoint_path #=> String
    #   resp.data_sources[0].data_source_parameters.custom_connection_parameters.connection_type #=> String
    #   resp.data_sources[0].alternate_data_source_parameters #=> Array
    #   resp.data_sources[0].alternate_data_source_parameters[0].amazon_elasticsearch_parameters.domain #=> String
    #   resp.data_sources[0].alternate_data_source_parameters[0].athena_parameters.work_group #=> String
    #   resp.data_sources[0].alternate_data_source_parameters[0].athena_parameters.role_arn #=> String
    #   resp.data_sources[0].alternate_data_source_parameters[0].athena_parameters.identity_center_configuration.enable_identity_propagation #=> Boolean
    #   resp.data_sources[0].alternate_data_source_parameters[0].aurora_parameters.host #=> String
    #   resp.data_sources[0].alternate_data_source_parameters[0].aurora_parameters.port #=> Integer
    #   resp.data_sources[0].alternate_data_source_parameters[0].aurora_parameters.database #=> String
    #   resp.data_sources[0].alternate_data_source_parameters[0].aurora_postgre_sql_parameters.host #=> String
    #   resp.data_sources[0].alternate_data_source_parameters[0].aurora_postgre_sql_parameters.port #=> Integer
    #   resp.data_sources[0].alternate_data_source_parameters[0].aurora_postgre_sql_parameters.database #=> String
    #   resp.data_sources[0].alternate_data_source_parameters[0].aws_iot_analytics_parameters.data_set_name #=> String
    #   resp.data_sources[0].alternate_data_source_parameters[0].jira_parameters.site_base_url #=> String
    #   resp.data_sources[0].alternate_data_source_parameters[0].maria_db_parameters.host #=> String
    #   resp.data_sources[0].alternate_data_source_parameters[0].maria_db_parameters.port #=> Integer
    #   resp.data_sources[0].alternate_data_source_parameters[0].maria_db_parameters.database #=> String
    #   resp.data_sources[0].alternate_data_source_parameters[0].my_sql_parameters.host #=> String
    #   resp.data_sources[0].alternate_data_source_parameters[0].my_sql_parameters.port #=> Integer
    #   resp.data_sources[0].alternate_data_source_parameters[0].my_sql_parameters.database #=> String
    #   resp.data_sources[0].alternate_data_source_parameters[0].oracle_parameters.host #=> String
    #   resp.data_sources[0].alternate_data_source_parameters[0].oracle_parameters.port #=> Integer
    #   resp.data_sources[0].alternate_data_source_parameters[0].oracle_parameters.database #=> String
    #   resp.data_sources[0].alternate_data_source_parameters[0].oracle_parameters.use_service_name #=> Boolean
    #   resp.data_sources[0].alternate_data_source_parameters[0].postgre_sql_parameters.host #=> String
    #   resp.data_sources[0].alternate_data_source_parameters[0].postgre_sql_parameters.port #=> Integer
    #   resp.data_sources[0].alternate_data_source_parameters[0].postgre_sql_parameters.database #=> String
    #   resp.data_sources[0].alternate_data_source_parameters[0].presto_parameters.host #=> String
    #   resp.data_sources[0].alternate_data_source_parameters[0].presto_parameters.port #=> Integer
    #   resp.data_sources[0].alternate_data_source_parameters[0].presto_parameters.catalog #=> String
    #   resp.data_sources[0].alternate_data_source_parameters[0].rds_parameters.instance_id #=> String
    #   resp.data_sources[0].alternate_data_source_parameters[0].rds_parameters.database #=> String
    #   resp.data_sources[0].alternate_data_source_parameters[0].redshift_parameters.host #=> String
    #   resp.data_sources[0].alternate_data_source_parameters[0].redshift_parameters.port #=> Integer
    #   resp.data_sources[0].alternate_data_source_parameters[0].redshift_parameters.database #=> String
    #   resp.data_sources[0].alternate_data_source_parameters[0].redshift_parameters.cluster_id #=> String
    #   resp.data_sources[0].alternate_data_source_parameters[0].redshift_parameters.iam_parameters.role_arn #=> String
    #   resp.data_sources[0].alternate_data_source_parameters[0].redshift_parameters.iam_parameters.database_user #=> String
    #   resp.data_sources[0].alternate_data_source_parameters[0].redshift_parameters.iam_parameters.database_groups #=> Array
    #   resp.data_sources[0].alternate_data_source_parameters[0].redshift_parameters.iam_parameters.database_groups[0] #=> String
    #   resp.data_sources[0].alternate_data_source_parameters[0].redshift_parameters.iam_parameters.auto_create_database_user #=> Boolean
    #   resp.data_sources[0].alternate_data_source_parameters[0].redshift_parameters.identity_center_configuration.enable_identity_propagation #=> Boolean
    #   resp.data_sources[0].alternate_data_source_parameters[0].s3_parameters.manifest_file_location.bucket #=> String
    #   resp.data_sources[0].alternate_data_source_parameters[0].s3_parameters.manifest_file_location.key #=> String
    #   resp.data_sources[0].alternate_data_source_parameters[0].s3_parameters.role_arn #=> String
    #   resp.data_sources[0].alternate_data_source_parameters[0].service_now_parameters.site_base_url #=> String
    #   resp.data_sources[0].alternate_data_source_parameters[0].snowflake_parameters.host #=> String
    #   resp.data_sources[0].alternate_data_source_parameters[0].snowflake_parameters.database #=> String
    #   resp.data_sources[0].alternate_data_source_parameters[0].snowflake_parameters.warehouse #=> String
    #   resp.data_sources[0].alternate_data_source_parameters[0].snowflake_parameters.authentication_type #=> String, one of "PASSWORD", "TOKEN", "X509"
    #   resp.data_sources[0].alternate_data_source_parameters[0].snowflake_parameters.database_access_control_role #=> String
    #   resp.data_sources[0].alternate_data_source_parameters[0].snowflake_parameters.o_auth_parameters.token_provider_url #=> String
    #   resp.data_sources[0].alternate_data_source_parameters[0].snowflake_parameters.o_auth_parameters.o_auth_scope #=> String
    #   resp.data_sources[0].alternate_data_source_parameters[0].snowflake_parameters.o_auth_parameters.identity_provider_vpc_connection_properties.vpc_connection_arn #=> String
    #   resp.data_sources[0].alternate_data_source_parameters[0].snowflake_parameters.o_auth_parameters.identity_provider_resource_uri #=> String
    #   resp.data_sources[0].alternate_data_source_parameters[0].spark_parameters.host #=> String
    #   resp.data_sources[0].alternate_data_source_parameters[0].spark_parameters.port #=> Integer
    #   resp.data_sources[0].alternate_data_source_parameters[0].sql_server_parameters.host #=> String
    #   resp.data_sources[0].alternate_data_source_parameters[0].sql_server_parameters.port #=> Integer
    #   resp.data_sources[0].alternate_data_source_parameters[0].sql_server_parameters.database #=> String
    #   resp.data_sources[0].alternate_data_source_parameters[0].teradata_parameters.host #=> String
    #   resp.data_sources[0].alternate_data_source_parameters[0].teradata_parameters.port #=> Integer
    #   resp.data_sources[0].alternate_data_source_parameters[0].teradata_parameters.database #=> String
    #   resp.data_sources[0].alternate_data_source_parameters[0].twitter_parameters.query #=> String
    #   resp.data_sources[0].alternate_data_source_parameters[0].twitter_parameters.max_rows #=> Integer
    #   resp.data_sources[0].alternate_data_source_parameters[0].amazon_open_search_parameters.domain #=> String
    #   resp.data_sources[0].alternate_data_source_parameters[0].exasol_parameters.host #=> String
    #   resp.data_sources[0].alternate_data_source_parameters[0].exasol_parameters.port #=> Integer
    #   resp.data_sources[0].alternate_data_source_parameters[0].databricks_parameters.host #=> String
    #   resp.data_sources[0].alternate_data_source_parameters[0].databricks_parameters.port #=> Integer
    #   resp.data_sources[0].alternate_data_source_parameters[0].databricks_parameters.sql_endpoint_path #=> String
    #   resp.data_sources[0].alternate_data_source_parameters[0].starburst_parameters.host #=> String
    #   resp.data_sources[0].alternate_data_source_parameters[0].starburst_parameters.port #=> Integer
    #   resp.data_sources[0].alternate_data_source_parameters[0].starburst_parameters.catalog #=> String
    #   resp.data_sources[0].alternate_data_source_parameters[0].starburst_parameters.product_type #=> String, one of "GALAXY", "ENTERPRISE"
    #   resp.data_sources[0].alternate_data_source_parameters[0].starburst_parameters.database_access_control_role #=> String
    #   resp.data_sources[0].alternate_data_source_parameters[0].starburst_parameters.authentication_type #=> String, one of "PASSWORD", "TOKEN", "X509"
    #   resp.data_sources[0].alternate_data_source_parameters[0].starburst_parameters.o_auth_parameters.token_provider_url #=> String
    #   resp.data_sources[0].alternate_data_source_parameters[0].starburst_parameters.o_auth_parameters.o_auth_scope #=> String
    #   resp.data_sources[0].alternate_data_source_parameters[0].starburst_parameters.o_auth_parameters.identity_provider_vpc_connection_properties.vpc_connection_arn #=> String
    #   resp.data_sources[0].alternate_data_source_parameters[0].starburst_parameters.o_auth_parameters.identity_provider_resource_uri #=> String
    #   resp.data_sources[0].alternate_data_source_parameters[0].trino_parameters.host #=> String
    #   resp.data_sources[0].alternate_data_source_parameters[0].trino_parameters.port #=> Integer
    #   resp.data_sources[0].alternate_data_source_parameters[0].trino_parameters.catalog #=> String
    #   resp.data_sources[0].alternate_data_source_parameters[0].big_query_parameters.project_id #=> String
    #   resp.data_sources[0].alternate_data_source_parameters[0].big_query_parameters.data_set_region #=> String
    #   resp.data_sources[0].alternate_data_source_parameters[0].impala_parameters.host #=> String
    #   resp.data_sources[0].alternate_data_source_parameters[0].impala_parameters.port #=> Integer
    #   resp.data_sources[0].alternate_data_source_parameters[0].impala_parameters.database #=> String
    #   resp.data_sources[0].alternate_data_source_parameters[0].impala_parameters.sql_endpoint_path #=> String
    #   resp.data_sources[0].alternate_data_source_parameters[0].custom_connection_parameters.connection_type #=> String
    #   resp.data_sources[0].vpc_connection_properties.vpc_connection_arn #=> String
    #   resp.data_sources[0].ssl_properties.disable_ssl #=> Boolean
    #   resp.data_sources[0].error_info.type #=> String, one of "ACCESS_DENIED", "COPY_SOURCE_NOT_FOUND", "TIMEOUT", "ENGINE_VERSION_NOT_SUPPORTED", "UNKNOWN_HOST", "GENERIC_SQL_FAILURE", "CONFLICT", "UNKNOWN"
    #   resp.data_sources[0].error_info.message #=> String
    #   resp.data_sources[0].secret_arn #=> String
    #   resp.next_token #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListDataSources AWS API Documentation
    #
    # @overload list_data_sources(params = {})
    # @param [Hash] params ({})
    def list_data_sources(params = {}, options = {})
      req = build_request(:list_data_sources, params)
      req.send_request(options)
    end

    # List all assets (`DASHBOARD`, `ANALYSIS`, and `DATASET`) in a folder.
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the Amazon Web Services account that contains the folder.
    #
    # @option params [required, String] :folder_id
    #   The ID of the folder.
    #
    # @option params [String] :next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned per request.
    #
    # @return [Types::ListFolderMembersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListFolderMembersResponse#status #status} => Integer
    #   * {Types::ListFolderMembersResponse#folder_member_list #folder_member_list} => Array&lt;Types::MemberIdArnPair&gt;
    #   * {Types::ListFolderMembersResponse#next_token #next_token} => String
    #   * {Types::ListFolderMembersResponse#request_id #request_id} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_folder_members({
    #     aws_account_id: "AwsAccountId", # required
    #     folder_id: "RestrictiveResourceId", # required
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> Integer
    #   resp.folder_member_list #=> Array
    #   resp.folder_member_list[0].member_id #=> String
    #   resp.folder_member_list[0].member_arn #=> String
    #   resp.next_token #=> String
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListFolderMembers AWS API Documentation
    #
    # @overload list_folder_members(params = {})
    # @param [Hash] params ({})
    def list_folder_members(params = {}, options = {})
      req = build_request(:list_folder_members, params)
      req.send_request(options)
    end

    # Lists all folders in an account.
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the Amazon Web Services account that contains the folder.
    #
    # @option params [String] :next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned per request.
    #
    # @return [Types::ListFoldersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListFoldersResponse#status #status} => Integer
    #   * {Types::ListFoldersResponse#folder_summary_list #folder_summary_list} => Array&lt;Types::FolderSummary&gt;
    #   * {Types::ListFoldersResponse#next_token #next_token} => String
    #   * {Types::ListFoldersResponse#request_id #request_id} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_folders({
    #     aws_account_id: "AwsAccountId", # required
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> Integer
    #   resp.folder_summary_list #=> Array
    #   resp.folder_summary_list[0].arn #=> String
    #   resp.folder_summary_list[0].folder_id #=> String
    #   resp.folder_summary_list[0].name #=> String
    #   resp.folder_summary_list[0].folder_type #=> String, one of "SHARED", "RESTRICTED"
    #   resp.folder_summary_list[0].created_time #=> Time
    #   resp.folder_summary_list[0].last_updated_time #=> Time
    #   resp.folder_summary_list[0].sharing_model #=> String, one of "ACCOUNT", "NAMESPACE"
    #   resp.next_token #=> String
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListFolders AWS API Documentation
    #
    # @overload list_folders(params = {})
    # @param [Hash] params ({})
    def list_folders(params = {}, options = {})
      req = build_request(:list_folders, params)
      req.send_request(options)
    end

    # List all folders that a resource is a member of.
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the Amazon Web Services account that contains the resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) the resource whose folders you need to
    #   list.
    #
    # @option params [String] :next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned per request.
    #
    # @return [Types::ListFoldersForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListFoldersForResourceResponse#status #status} => Integer
    #   * {Types::ListFoldersForResourceResponse#folders #folders} => Array&lt;String&gt;
    #   * {Types::ListFoldersForResourceResponse#next_token #next_token} => String
    #   * {Types::ListFoldersForResourceResponse#request_id #request_id} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_folders_for_resource({
    #     aws_account_id: "AwsAccountId", # required
    #     resource_arn: "Arn", # required
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> Integer
    #   resp.folders #=> Array
    #   resp.folders[0] #=> String
    #   resp.next_token #=> String
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListFoldersForResource AWS API Documentation
    #
    # @overload list_folders_for_resource(params = {})
    # @param [Hash] params ({})
    def list_folders_for_resource(params = {}, options = {})
      req = build_request(:list_folders_for_resource, params)
      req.send_request(options)
    end

    # Lists member users in a group.
    #
    # @option params [required, String] :group_name
    #   The name of the group that you want to see a membership list of.
    #
    # @option params [String] :next_token
    #   A pagination token that can be used in a subsequent request.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return from this request.
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the Amazon Web Services account that the group is in.
    #   Currently, you use the ID for the Amazon Web Services account that
    #   contains your Amazon QuickSight account.
    #
    # @option params [required, String] :namespace
    #   The namespace of the group that you want a list of users from.
    #
    # @return [Types::ListGroupMembershipsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListGroupMembershipsResponse#group_member_list #group_member_list} => Array&lt;Types::GroupMember&gt;
    #   * {Types::ListGroupMembershipsResponse#next_token #next_token} => String
    #   * {Types::ListGroupMembershipsResponse#request_id #request_id} => String
    #   * {Types::ListGroupMembershipsResponse#status #status} => Integer
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_group_memberships({
    #     group_name: "GroupName", # required
    #     next_token: "String",
    #     max_results: 1,
    #     aws_account_id: "AwsAccountId", # required
    #     namespace: "Namespace", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.group_member_list #=> Array
    #   resp.group_member_list[0].arn #=> String
    #   resp.group_member_list[0].member_name #=> String
    #   resp.next_token #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListGroupMemberships AWS API Documentation
    #
    # @overload list_group_memberships(params = {})
    # @param [Hash] params ({})
    def list_group_memberships(params = {}, options = {})
      req = build_request(:list_group_memberships, params)
      req.send_request(options)
    end

    # Lists all user groups in Amazon QuickSight.
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the Amazon Web Services account that the group is in.
    #   Currently, you use the ID for the Amazon Web Services account that
    #   contains your Amazon QuickSight account.
    #
    # @option params [String] :next_token
    #   A pagination token that can be used in a subsequent request.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return.
    #
    # @option params [required, String] :namespace
    #   The namespace that you want a list of groups from.
    #
    # @return [Types::ListGroupsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListGroupsResponse#group_list #group_list} => Array&lt;Types::Group&gt;
    #   * {Types::ListGroupsResponse#next_token #next_token} => String
    #   * {Types::ListGroupsResponse#request_id #request_id} => String
    #   * {Types::ListGroupsResponse#status #status} => Integer
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_groups({
    #     aws_account_id: "AwsAccountId", # required
    #     next_token: "String",
    #     max_results: 1,
    #     namespace: "Namespace", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.group_list #=> Array
    #   resp.group_list[0].arn #=> String
    #   resp.group_list[0].group_name #=> String
    #   resp.group_list[0].description #=> String
    #   resp.group_list[0].principal_id #=> String
    #   resp.next_token #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListGroups AWS API Documentation
    #
    # @overload list_groups(params = {})
    # @param [Hash] params ({})
    def list_groups(params = {}, options = {})
      req = build_request(:list_groups, params)
      req.send_request(options)
    end

    # Lists the IAM policy assignments in the current Amazon QuickSight
    # account.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that contains these IAM
    #   policy assignments.
    #
    # @option params [String] :assignment_status
    #   The status of the assignments.
    #
    # @option params [required, String] :namespace
    #   The namespace for the assignments.
    #
    # @option params [String] :next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned per request.
    #
    # @return [Types::ListIAMPolicyAssignmentsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListIAMPolicyAssignmentsResponse#iam_policy_assignments #iam_policy_assignments} => Array&lt;Types::IAMPolicyAssignmentSummary&gt;
    #   * {Types::ListIAMPolicyAssignmentsResponse#next_token #next_token} => String
    #   * {Types::ListIAMPolicyAssignmentsResponse#request_id #request_id} => String
    #   * {Types::ListIAMPolicyAssignmentsResponse#status #status} => Integer
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_iam_policy_assignments({
    #     aws_account_id: "AwsAccountId", # required
    #     assignment_status: "ENABLED", # accepts ENABLED, DRAFT, DISABLED
    #     namespace: "Namespace", # required
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.iam_policy_assignments #=> Array
    #   resp.iam_policy_assignments[0].assignment_name #=> String
    #   resp.iam_policy_assignments[0].assignment_status #=> String, one of "ENABLED", "DRAFT", "DISABLED"
    #   resp.next_token #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListIAMPolicyAssignments AWS API Documentation
    #
    # @overload list_iam_policy_assignments(params = {})
    # @param [Hash] params ({})
    def list_iam_policy_assignments(params = {}, options = {})
      req = build_request(:list_iam_policy_assignments, params)
      req.send_request(options)
    end

    # Lists all of the IAM policy assignments, including the Amazon Resource
    # Names (ARNs), for the IAM policies assigned to the specified user and
    # group, or groups that the user belongs to.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that contains the
    #   assignments.
    #
    # @option params [required, String] :user_name
    #   The name of the user.
    #
    # @option params [String] :next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned per request.
    #
    # @option params [required, String] :namespace
    #   The namespace of the assignment.
    #
    # @return [Types::ListIAMPolicyAssignmentsForUserResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListIAMPolicyAssignmentsForUserResponse#active_assignments #active_assignments} => Array&lt;Types::ActiveIAMPolicyAssignment&gt;
    #   * {Types::ListIAMPolicyAssignmentsForUserResponse#request_id #request_id} => String
    #   * {Types::ListIAMPolicyAssignmentsForUserResponse#next_token #next_token} => String
    #   * {Types::ListIAMPolicyAssignmentsForUserResponse#status #status} => Integer
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_iam_policy_assignments_for_user({
    #     aws_account_id: "AwsAccountId", # required
    #     user_name: "UserName", # required
    #     next_token: "String",
    #     max_results: 1,
    #     namespace: "Namespace", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.active_assignments #=> Array
    #   resp.active_assignments[0].assignment_name #=> String
    #   resp.active_assignments[0].policy_arn #=> String
    #   resp.request_id #=> String
    #   resp.next_token #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListIAMPolicyAssignmentsForUser AWS API Documentation
    #
    # @overload list_iam_policy_assignments_for_user(params = {})
    # @param [Hash] params ({})
    def list_iam_policy_assignments_for_user(params = {}, options = {})
      req = build_request(:list_iam_policy_assignments_for_user, params)
      req.send_request(options)
    end

    # Lists all services and authorized targets that the QuickSight IAM
    # Identity Center application can access.
    #
    # This operation is only supported for QuickSight accounts that use IAM
    # Identity Center.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that contain the identity
    #   propagation configurations of.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned.
    #
    # @option params [String] :next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #
    # @return [Types::ListIdentityPropagationConfigsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListIdentityPropagationConfigsResponse#services #services} => Array&lt;Types::AuthorizedTargetsByService&gt;
    #   * {Types::ListIdentityPropagationConfigsResponse#next_token #next_token} => String
    #   * {Types::ListIdentityPropagationConfigsResponse#status #status} => Integer
    #   * {Types::ListIdentityPropagationConfigsResponse#request_id #request_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_identity_propagation_configs({
    #     aws_account_id: "AwsAccountId", # required
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.services #=> Array
    #   resp.services[0].service #=> String, one of "REDSHIFT", "QBUSINESS", "ATHENA"
    #   resp.services[0].authorized_targets #=> Array
    #   resp.services[0].authorized_targets[0] #=> String
    #   resp.next_token #=> String
    #   resp.status #=> Integer
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListIdentityPropagationConfigs AWS API Documentation
    #
    # @overload list_identity_propagation_configs(params = {})
    # @param [Hash] params ({})
    def list_identity_propagation_configs(params = {}, options = {})
      req = build_request(:list_identity_propagation_configs, params)
      req.send_request(options)
    end

    # Lists the history of SPICE ingestions for a dataset. Limited to 5 TPS
    # per user and 25 TPS per account.
    #
    # @option params [required, String] :data_set_id
    #   The ID of the dataset used in the ingestion.
    #
    # @option params [String] :next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #
    # @option params [required, String] :aws_account_id
    #   The Amazon Web Services account ID.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned per request.
    #
    # @return [Types::ListIngestionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListIngestionsResponse#ingestions #ingestions} => Array&lt;Types::Ingestion&gt;
    #   * {Types::ListIngestionsResponse#next_token #next_token} => String
    #   * {Types::ListIngestionsResponse#request_id #request_id} => String
    #   * {Types::ListIngestionsResponse#status #status} => Integer
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_ingestions({
    #     data_set_id: "String", # required
    #     next_token: "String",
    #     aws_account_id: "AwsAccountId", # required
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.ingestions #=> Array
    #   resp.ingestions[0].arn #=> String
    #   resp.ingestions[0].ingestion_id #=> String
    #   resp.ingestions[0].ingestion_status #=> String, one of "INITIALIZED", "QUEUED", "RUNNING", "FAILED", "COMPLETED", "CANCELLED"
    #   resp.ingestions[0].error_info.type #=> String, one of "FAILURE_TO_ASSUME_ROLE", "INGESTION_SUPERSEDED", "INGESTION_CANCELED", "DATA_SET_DELETED", "DATA_SET_NOT_SPICE", "S3_UPLOADED_FILE_DELETED", "S3_MANIFEST_ERROR", "DATA_TOLERANCE_EXCEPTION", "SPICE_TABLE_NOT_FOUND", "DATA_SET_SIZE_LIMIT_EXCEEDED", "ROW_SIZE_LIMIT_EXCEEDED", "ACCOUNT_CAPACITY_LIMIT_EXCEEDED", "CUSTOMER_ERROR", "DATA_SOURCE_NOT_FOUND", "IAM_ROLE_NOT_AVAILABLE", "CONNECTION_FAILURE", "SQL_TABLE_NOT_FOUND", "PERMISSION_DENIED", "SSL_CERTIFICATE_VALIDATION_FAILURE", "OAUTH_TOKEN_FAILURE", "SOURCE_API_LIMIT_EXCEEDED_FAILURE", "PASSWORD_AUTHENTICATION_FAILURE", "SQL_SCHEMA_MISMATCH_ERROR", "INVALID_DATE_FORMAT", "INVALID_DATAPREP_SYNTAX", "SOURCE_RESOURCE_LIMIT_EXCEEDED", "SQL_INVALID_PARAMETER_VALUE", "QUERY_TIMEOUT", "SQL_NUMERIC_OVERFLOW", "UNRESOLVABLE_HOST", "UNROUTABLE_HOST", "SQL_EXCEPTION", "S3_FILE_INACCESSIBLE", "IOT_FILE_NOT_FOUND", "IOT_DATA_SET_FILE_EMPTY", "INVALID_DATA_SOURCE_CONFIG", "DATA_SOURCE_AUTH_FAILED", "DATA_SOURCE_CONNECTION_FAILED", "FAILURE_TO_PROCESS_JSON_FILE", "INTERNAL_SERVICE_ERROR", "REFRESH_SUPPRESSED_BY_EDIT", "PERMISSION_NOT_FOUND", "ELASTICSEARCH_CURSOR_NOT_ENABLED", "CURSOR_NOT_ENABLED", "DUPLICATE_COLUMN_NAMES_FOUND"
    #   resp.ingestions[0].error_info.message #=> String
    #   resp.ingestions[0].row_info.rows_ingested #=> Integer
    #   resp.ingestions[0].row_info.rows_dropped #=> Integer
    #   resp.ingestions[0].row_info.total_rows_in_dataset #=> Integer
    #   resp.ingestions[0].queue_info.waiting_on_ingestion #=> String
    #   resp.ingestions[0].queue_info.queued_ingestion #=> String
    #   resp.ingestions[0].created_time #=> Time
    #   resp.ingestions[0].ingestion_time_in_seconds #=> Integer
    #   resp.ingestions[0].ingestion_size_in_bytes #=> Integer
    #   resp.ingestions[0].request_source #=> String, one of "MANUAL", "SCHEDULED"
    #   resp.ingestions[0].request_type #=> String, one of "INITIAL_INGESTION", "EDIT", "INCREMENTAL_REFRESH", "FULL_REFRESH"
    #   resp.next_token #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListIngestions AWS API Documentation
    #
    # @overload list_ingestions(params = {})
    # @param [Hash] params ({})
    def list_ingestions(params = {}, options = {})
      req = build_request(:list_ingestions, params)
      req.send_request(options)
    end

    # Lists the namespaces for the specified Amazon Web Services account.
    # This operation doesn't list deleted namespaces.
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the Amazon Web Services account that contains the
    #   QuickSight namespaces that you want to list.
    #
    # @option params [String] :next_token
    #   A unique pagination token that can be used in a subsequent request.
    #   You will receive a pagination token in the response body of a previous
    #   `ListNameSpaces` API call if there is more data that can be returned.
    #   To receive the data, make another `ListNamespaces` API call with the
    #   returned token to retrieve the next page of data. Each token is valid
    #   for 24 hours. If you try to make a `ListNamespaces` API call with an
    #   expired token, you will receive a `HTTP 400 InvalidNextTokenException`
    #   error.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return.
    #
    # @return [Types::ListNamespacesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListNamespacesResponse#namespaces #namespaces} => Array&lt;Types::NamespaceInfoV2&gt;
    #   * {Types::ListNamespacesResponse#next_token #next_token} => String
    #   * {Types::ListNamespacesResponse#request_id #request_id} => String
    #   * {Types::ListNamespacesResponse#status #status} => Integer
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_namespaces({
    #     aws_account_id: "AwsAccountId", # required
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.namespaces #=> Array
    #   resp.namespaces[0].name #=> String
    #   resp.namespaces[0].arn #=> String
    #   resp.namespaces[0].capacity_region #=> String
    #   resp.namespaces[0].creation_status #=> String, one of "CREATED", "CREATING", "DELETING", "RETRYABLE_FAILURE", "NON_RETRYABLE_FAILURE"
    #   resp.namespaces[0].identity_store #=> String, one of "QUICKSIGHT"
    #   resp.namespaces[0].namespace_error.type #=> String, one of "PERMISSION_DENIED", "INTERNAL_SERVICE_ERROR"
    #   resp.namespaces[0].namespace_error.message #=> String
    #   resp.namespaces[0].iam_identity_center_application_arn #=> String
    #   resp.namespaces[0].iam_identity_center_instance_arn #=> String
    #   resp.next_token #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListNamespaces AWS API Documentation
    #
    # @overload list_namespaces(params = {})
    # @param [Hash] params ({})
    def list_namespaces(params = {}, options = {})
      req = build_request(:list_namespaces, params)
      req.send_request(options)
    end

    # Lists the refresh schedules of a dataset. Each dataset can have up to
    # 5 schedules.
    #
    # @option params [required, String] :aws_account_id
    #   The Amazon Web Services account ID.
    #
    # @option params [required, String] :data_set_id
    #   The ID of the dataset.
    #
    # @return [Types::ListRefreshSchedulesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRefreshSchedulesResponse#refresh_schedules #refresh_schedules} => Array&lt;Types::RefreshSchedule&gt;
    #   * {Types::ListRefreshSchedulesResponse#status #status} => Integer
    #   * {Types::ListRefreshSchedulesResponse#request_id #request_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_refresh_schedules({
    #     aws_account_id: "AwsAccountId", # required
    #     data_set_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.refresh_schedules #=> Array
    #   resp.refresh_schedules[0].schedule_id #=> String
    #   resp.refresh_schedules[0].schedule_frequency.interval #=> String, one of "MINUTE15", "MINUTE30", "HOURLY", "DAILY", "WEEKLY", "MONTHLY"
    #   resp.refresh_schedules[0].schedule_frequency.refresh_on_day.day_of_week #=> String, one of "SUNDAY", "MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY"
    #   resp.refresh_schedules[0].schedule_frequency.refresh_on_day.day_of_month #=> String
    #   resp.refresh_schedules[0].schedule_frequency.timezone #=> String
    #   resp.refresh_schedules[0].schedule_frequency.time_of_the_day #=> String
    #   resp.refresh_schedules[0].start_after_date_time #=> Time
    #   resp.refresh_schedules[0].refresh_type #=> String, one of "INCREMENTAL_REFRESH", "FULL_REFRESH"
    #   resp.refresh_schedules[0].arn #=> String
    #   resp.status #=> Integer
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListRefreshSchedules AWS API Documentation
    #
    # @overload list_refresh_schedules(params = {})
    # @param [Hash] params ({})
    def list_refresh_schedules(params = {}, options = {})
      req = build_request(:list_refresh_schedules, params)
      req.send_request(options)
    end

    # Lists all groups that are associated with a role.
    #
    # @option params [required, String] :role
    #   The name of the role.
    #
    # @option params [String] :next_token
    #   A pagination token that can be used in a subsequent request.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return.
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the Amazon Web Services account that you want to create a
    #   group in. The Amazon Web Services account ID that you provide must be
    #   the same Amazon Web Services account that contains your Amazon
    #   QuickSight account.
    #
    # @option params [required, String] :namespace
    #   The namespace that includes the role.
    #
    # @return [Types::ListRoleMembershipsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRoleMembershipsResponse#members_list #members_list} => Array&lt;String&gt;
    #   * {Types::ListRoleMembershipsResponse#next_token #next_token} => String
    #   * {Types::ListRoleMembershipsResponse#request_id #request_id} => String
    #   * {Types::ListRoleMembershipsResponse#status #status} => Integer
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_role_memberships({
    #     role: "ADMIN", # required, accepts ADMIN, AUTHOR, READER, ADMIN_PRO, AUTHOR_PRO, READER_PRO
    #     next_token: "String",
    #     max_results: 1,
    #     aws_account_id: "AwsAccountId", # required
    #     namespace: "Namespace", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.members_list #=> Array
    #   resp.members_list[0] #=> String
    #   resp.next_token #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListRoleMemberships AWS API Documentation
    #
    # @overload list_role_memberships(params = {})
    # @param [Hash] params ({})
    def list_role_memberships(params = {}, options = {})
      req = build_request(:list_role_memberships, params)
      req.send_request(options)
    end

    # Lists the tags assigned to a resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource that you want a list of
    #   tags for.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Array&lt;Types::Tag&gt;
    #   * {Types::ListTagsForResourceResponse#request_id #request_id} => String
    #   * {Types::ListTagsForResourceResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Lists all the aliases of a template.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that contains the template
    #   aliases that you're listing.
    #
    # @option params [required, String] :template_id
    #   The ID for the template.
    #
    # @option params [String] :next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned per request.
    #
    # @return [Types::ListTemplateAliasesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTemplateAliasesResponse#template_alias_list #template_alias_list} => Array&lt;Types::TemplateAlias&gt;
    #   * {Types::ListTemplateAliasesResponse#status #status} => Integer
    #   * {Types::ListTemplateAliasesResponse#request_id #request_id} => String
    #   * {Types::ListTemplateAliasesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_template_aliases({
    #     aws_account_id: "AwsAccountId", # required
    #     template_id: "ShortRestrictiveResourceId", # required
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.template_alias_list #=> Array
    #   resp.template_alias_list[0].alias_name #=> String
    #   resp.template_alias_list[0].arn #=> String
    #   resp.template_alias_list[0].template_version_number #=> Integer
    #   resp.status #=> Integer
    #   resp.request_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListTemplateAliases AWS API Documentation
    #
    # @overload list_template_aliases(params = {})
    # @param [Hash] params ({})
    def list_template_aliases(params = {}, options = {})
      req = build_request(:list_template_aliases, params)
      req.send_request(options)
    end

    # Lists all the versions of the templates in the current Amazon
    # QuickSight account.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that contains the templates
    #   that you're listing.
    #
    # @option params [required, String] :template_id
    #   The ID for the template.
    #
    # @option params [String] :next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned per request.
    #
    # @return [Types::ListTemplateVersionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTemplateVersionsResponse#template_version_summary_list #template_version_summary_list} => Array&lt;Types::TemplateVersionSummary&gt;
    #   * {Types::ListTemplateVersionsResponse#next_token #next_token} => String
    #   * {Types::ListTemplateVersionsResponse#status #status} => Integer
    #   * {Types::ListTemplateVersionsResponse#request_id #request_id} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_template_versions({
    #     aws_account_id: "AwsAccountId", # required
    #     template_id: "ShortRestrictiveResourceId", # required
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.template_version_summary_list #=> Array
    #   resp.template_version_summary_list[0].arn #=> String
    #   resp.template_version_summary_list[0].version_number #=> Integer
    #   resp.template_version_summary_list[0].created_time #=> Time
    #   resp.template_version_summary_list[0].status #=> String, one of "CREATION_IN_PROGRESS", "CREATION_SUCCESSFUL", "CREATION_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_SUCCESSFUL", "UPDATE_FAILED", "DELETED"
    #   resp.template_version_summary_list[0].description #=> String
    #   resp.next_token #=> String
    #   resp.status #=> Integer
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListTemplateVersions AWS API Documentation
    #
    # @overload list_template_versions(params = {})
    # @param [Hash] params ({})
    def list_template_versions(params = {}, options = {})
      req = build_request(:list_template_versions, params)
      req.send_request(options)
    end

    # Lists all the templates in the current Amazon QuickSight account.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that contains the templates
    #   that you're listing.
    #
    # @option params [String] :next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned per request.
    #
    # @return [Types::ListTemplatesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTemplatesResponse#template_summary_list #template_summary_list} => Array&lt;Types::TemplateSummary&gt;
    #   * {Types::ListTemplatesResponse#next_token #next_token} => String
    #   * {Types::ListTemplatesResponse#status #status} => Integer
    #   * {Types::ListTemplatesResponse#request_id #request_id} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_templates({
    #     aws_account_id: "AwsAccountId", # required
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.template_summary_list #=> Array
    #   resp.template_summary_list[0].arn #=> String
    #   resp.template_summary_list[0].template_id #=> String
    #   resp.template_summary_list[0].name #=> String
    #   resp.template_summary_list[0].latest_version_number #=> Integer
    #   resp.template_summary_list[0].created_time #=> Time
    #   resp.template_summary_list[0].last_updated_time #=> Time
    #   resp.next_token #=> String
    #   resp.status #=> Integer
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListTemplates AWS API Documentation
    #
    # @overload list_templates(params = {})
    # @param [Hash] params ({})
    def list_templates(params = {}, options = {})
      req = build_request(:list_templates, params)
      req.send_request(options)
    end

    # Lists all the aliases of a theme.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that contains the theme
    #   aliases that you're listing.
    #
    # @option params [required, String] :theme_id
    #   The ID for the theme.
    #
    # @option params [String] :next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned per request.
    #
    # @return [Types::ListThemeAliasesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListThemeAliasesResponse#theme_alias_list #theme_alias_list} => Array&lt;Types::ThemeAlias&gt;
    #   * {Types::ListThemeAliasesResponse#status #status} => Integer
    #   * {Types::ListThemeAliasesResponse#request_id #request_id} => String
    #   * {Types::ListThemeAliasesResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_theme_aliases({
    #     aws_account_id: "AwsAccountId", # required
    #     theme_id: "ShortRestrictiveResourceId", # required
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.theme_alias_list #=> Array
    #   resp.theme_alias_list[0].arn #=> String
    #   resp.theme_alias_list[0].alias_name #=> String
    #   resp.theme_alias_list[0].theme_version_number #=> Integer
    #   resp.status #=> Integer
    #   resp.request_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListThemeAliases AWS API Documentation
    #
    # @overload list_theme_aliases(params = {})
    # @param [Hash] params ({})
    def list_theme_aliases(params = {}, options = {})
      req = build_request(:list_theme_aliases, params)
      req.send_request(options)
    end

    # Lists all the versions of the themes in the current Amazon Web
    # Services account.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that contains the themes
    #   that you're listing.
    #
    # @option params [required, String] :theme_id
    #   The ID for the theme.
    #
    # @option params [String] :next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned per request.
    #
    # @return [Types::ListThemeVersionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListThemeVersionsResponse#theme_version_summary_list #theme_version_summary_list} => Array&lt;Types::ThemeVersionSummary&gt;
    #   * {Types::ListThemeVersionsResponse#next_token #next_token} => String
    #   * {Types::ListThemeVersionsResponse#status #status} => Integer
    #   * {Types::ListThemeVersionsResponse#request_id #request_id} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_theme_versions({
    #     aws_account_id: "AwsAccountId", # required
    #     theme_id: "ShortRestrictiveResourceId", # required
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.theme_version_summary_list #=> Array
    #   resp.theme_version_summary_list[0].version_number #=> Integer
    #   resp.theme_version_summary_list[0].arn #=> String
    #   resp.theme_version_summary_list[0].description #=> String
    #   resp.theme_version_summary_list[0].created_time #=> Time
    #   resp.theme_version_summary_list[0].status #=> String, one of "CREATION_IN_PROGRESS", "CREATION_SUCCESSFUL", "CREATION_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_SUCCESSFUL", "UPDATE_FAILED", "DELETED"
    #   resp.next_token #=> String
    #   resp.status #=> Integer
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListThemeVersions AWS API Documentation
    #
    # @overload list_theme_versions(params = {})
    # @param [Hash] params ({})
    def list_theme_versions(params = {}, options = {})
      req = build_request(:list_theme_versions, params)
      req.send_request(options)
    end

    # Lists all the themes in the current Amazon Web Services account.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that contains the themes
    #   that you're listing.
    #
    # @option params [String] :next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned per request.
    #
    # @option params [String] :type
    #   The type of themes that you want to list. Valid options include the
    #   following:
    #
    #   * `ALL (default)`- Display all existing themes.
    #
    #   * `CUSTOM` - Display only the themes created by people using Amazon
    #     QuickSight.
    #
    #   * `QUICKSIGHT` - Display only the starting themes defined by
    #     QuickSight.
    #
    # @return [Types::ListThemesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListThemesResponse#theme_summary_list #theme_summary_list} => Array&lt;Types::ThemeSummary&gt;
    #   * {Types::ListThemesResponse#next_token #next_token} => String
    #   * {Types::ListThemesResponse#status #status} => Integer
    #   * {Types::ListThemesResponse#request_id #request_id} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_themes({
    #     aws_account_id: "AwsAccountId", # required
    #     next_token: "String",
    #     max_results: 1,
    #     type: "QUICKSIGHT", # accepts QUICKSIGHT, CUSTOM, ALL
    #   })
    #
    # @example Response structure
    #
    #   resp.theme_summary_list #=> Array
    #   resp.theme_summary_list[0].arn #=> String
    #   resp.theme_summary_list[0].name #=> String
    #   resp.theme_summary_list[0].theme_id #=> String
    #   resp.theme_summary_list[0].latest_version_number #=> Integer
    #   resp.theme_summary_list[0].created_time #=> Time
    #   resp.theme_summary_list[0].last_updated_time #=> Time
    #   resp.next_token #=> String
    #   resp.status #=> Integer
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListThemes AWS API Documentation
    #
    # @overload list_themes(params = {})
    # @param [Hash] params ({})
    def list_themes(params = {}, options = {})
      req = build_request(:list_themes, params)
      req.send_request(options)
    end

    # Lists all of the refresh schedules for a topic.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that contains the topic
    #   whose refresh schedule you want described.
    #
    # @option params [required, String] :topic_id
    #   The ID for the topic that you want to describe. This ID is unique per
    #   Amazon Web Services Region for each Amazon Web Services account.
    #
    # @return [Types::ListTopicRefreshSchedulesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTopicRefreshSchedulesResponse#topic_id #topic_id} => String
    #   * {Types::ListTopicRefreshSchedulesResponse#topic_arn #topic_arn} => String
    #   * {Types::ListTopicRefreshSchedulesResponse#refresh_schedules #refresh_schedules} => Array&lt;Types::TopicRefreshScheduleSummary&gt;
    #   * {Types::ListTopicRefreshSchedulesResponse#status #status} => Integer
    #   * {Types::ListTopicRefreshSchedulesResponse#request_id #request_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_topic_refresh_schedules({
    #     aws_account_id: "AwsAccountId", # required
    #     topic_id: "TopicId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.topic_id #=> String
    #   resp.topic_arn #=> String
    #   resp.refresh_schedules #=> Array
    #   resp.refresh_schedules[0].dataset_id #=> String
    #   resp.refresh_schedules[0].dataset_arn #=> String
    #   resp.refresh_schedules[0].dataset_name #=> String
    #   resp.refresh_schedules[0].refresh_schedule.is_enabled #=> Boolean
    #   resp.refresh_schedules[0].refresh_schedule.based_on_spice_schedule #=> Boolean
    #   resp.refresh_schedules[0].refresh_schedule.starting_at #=> Time
    #   resp.refresh_schedules[0].refresh_schedule.timezone #=> String
    #   resp.refresh_schedules[0].refresh_schedule.repeat_at #=> String
    #   resp.refresh_schedules[0].refresh_schedule.topic_schedule_type #=> String, one of "HOURLY", "DAILY", "WEEKLY", "MONTHLY"
    #   resp.status #=> Integer
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListTopicRefreshSchedules AWS API Documentation
    #
    # @overload list_topic_refresh_schedules(params = {})
    # @param [Hash] params ({})
    def list_topic_refresh_schedules(params = {}, options = {})
      req = build_request(:list_topic_refresh_schedules, params)
      req.send_request(options)
    end

    # Lists all reviewed answers for a Q Topic.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that containd the reviewed
    #   answers that you want listed.
    #
    # @option params [required, String] :topic_id
    #   The ID for the topic that contains the reviewed answer that you want
    #   to list. This ID is unique per Amazon Web Services Region for each
    #   Amazon Web Services account.
    #
    # @return [Types::ListTopicReviewedAnswersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTopicReviewedAnswersResponse#topic_id #topic_id} => String
    #   * {Types::ListTopicReviewedAnswersResponse#topic_arn #topic_arn} => String
    #   * {Types::ListTopicReviewedAnswersResponse#answers #answers} => Array&lt;Types::TopicReviewedAnswer&gt;
    #   * {Types::ListTopicReviewedAnswersResponse#status #status} => Integer
    #   * {Types::ListTopicReviewedAnswersResponse#request_id #request_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_topic_reviewed_answers({
    #     aws_account_id: "AwsAccountId", # required
    #     topic_id: "TopicId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.topic_id #=> String
    #   resp.topic_arn #=> String
    #   resp.answers #=> Array
    #   resp.answers[0].arn #=> String
    #   resp.answers[0].answer_id #=> String
    #   resp.answers[0].dataset_arn #=> String
    #   resp.answers[0].question #=> String
    #   resp.answers[0].mir.metrics #=> Array
    #   resp.answers[0].mir.metrics[0].metric_id.identity #=> String
    #   resp.answers[0].mir.metrics[0].function.aggregation #=> String, one of "SUM", "MIN", "MAX", "COUNT", "AVERAGE", "DISTINCT_COUNT", "STDEV", "STDEVP", "VAR", "VARP", "PERCENTILE", "MEDIAN", "PTD_SUM", "PTD_MIN", "PTD_MAX", "PTD_COUNT", "PTD_DISTINCT_COUNT", "PTD_AVERAGE", "COLUMN", "CUSTOM"
    #   resp.answers[0].mir.metrics[0].function.aggregation_function_parameters #=> Hash
    #   resp.answers[0].mir.metrics[0].function.aggregation_function_parameters["AggFunctionParamKey"] #=> String
    #   resp.answers[0].mir.metrics[0].function.period #=> String, one of "SECOND", "MINUTE", "HOUR", "DAY", "WEEK", "MONTH", "QUARTER", "YEAR"
    #   resp.answers[0].mir.metrics[0].function.period_field #=> String
    #   resp.answers[0].mir.metrics[0].operands #=> Array
    #   resp.answers[0].mir.metrics[0].operands[0].identity #=> String
    #   resp.answers[0].mir.metrics[0].comparison_method.type #=> String, one of "DIFF", "PERC_DIFF", "DIFF_AS_PERC", "POP_CURRENT_DIFF_AS_PERC", "POP_CURRENT_DIFF", "POP_OVERTIME_DIFF_AS_PERC", "POP_OVERTIME_DIFF", "PERCENT_OF_TOTAL", "RUNNING_SUM", "MOVING_AVERAGE"
    #   resp.answers[0].mir.metrics[0].comparison_method.period #=> String, one of "SECOND", "MINUTE", "HOUR", "DAY", "WEEK", "MONTH", "QUARTER", "YEAR"
    #   resp.answers[0].mir.metrics[0].comparison_method.window_size #=> Integer
    #   resp.answers[0].mir.metrics[0].expression #=> String
    #   resp.answers[0].mir.metrics[0].calculated_field_references #=> Array
    #   resp.answers[0].mir.metrics[0].calculated_field_references[0].identity #=> String
    #   resp.answers[0].mir.metrics[0].display_format #=> String, one of "AUTO", "PERCENT", "CURRENCY", "NUMBER", "DATE", "STRING"
    #   resp.answers[0].mir.metrics[0].display_format_options.use_blank_cell_format #=> Boolean
    #   resp.answers[0].mir.metrics[0].display_format_options.blank_cell_format #=> String
    #   resp.answers[0].mir.metrics[0].display_format_options.date_format #=> String
    #   resp.answers[0].mir.metrics[0].display_format_options.decimal_separator #=> String, one of "COMMA", "DOT"
    #   resp.answers[0].mir.metrics[0].display_format_options.grouping_separator #=> String
    #   resp.answers[0].mir.metrics[0].display_format_options.use_grouping #=> Boolean
    #   resp.answers[0].mir.metrics[0].display_format_options.fraction_digits #=> Integer
    #   resp.answers[0].mir.metrics[0].display_format_options.prefix #=> String
    #   resp.answers[0].mir.metrics[0].display_format_options.suffix #=> String
    #   resp.answers[0].mir.metrics[0].display_format_options.unit_scaler #=> String, one of "NONE", "AUTO", "THOUSANDS", "MILLIONS", "BILLIONS", "TRILLIONS", "LAKHS", "CRORES"
    #   resp.answers[0].mir.metrics[0].display_format_options.negative_format.prefix #=> String
    #   resp.answers[0].mir.metrics[0].display_format_options.negative_format.suffix #=> String
    #   resp.answers[0].mir.metrics[0].display_format_options.currency_symbol #=> String
    #   resp.answers[0].mir.metrics[0].named_entity.named_entity_name #=> String
    #   resp.answers[0].mir.group_by_list #=> Array
    #   resp.answers[0].mir.group_by_list[0].field_name.identity #=> String
    #   resp.answers[0].mir.group_by_list[0].time_granularity #=> String, one of "SECOND", "MINUTE", "HOUR", "DAY", "WEEK", "MONTH", "QUARTER", "YEAR"
    #   resp.answers[0].mir.group_by_list[0].sort.operand.identity #=> String
    #   resp.answers[0].mir.group_by_list[0].sort.sort_direction #=> String, one of "ASCENDING", "DESCENDING"
    #   resp.answers[0].mir.group_by_list[0].display_format #=> String, one of "AUTO", "PERCENT", "CURRENCY", "NUMBER", "DATE", "STRING"
    #   resp.answers[0].mir.group_by_list[0].display_format_options.use_blank_cell_format #=> Boolean
    #   resp.answers[0].mir.group_by_list[0].display_format_options.blank_cell_format #=> String
    #   resp.answers[0].mir.group_by_list[0].display_format_options.date_format #=> String
    #   resp.answers[0].mir.group_by_list[0].display_format_options.decimal_separator #=> String, one of "COMMA", "DOT"
    #   resp.answers[0].mir.group_by_list[0].display_format_options.grouping_separator #=> String
    #   resp.answers[0].mir.group_by_list[0].display_format_options.use_grouping #=> Boolean
    #   resp.answers[0].mir.group_by_list[0].display_format_options.fraction_digits #=> Integer
    #   resp.answers[0].mir.group_by_list[0].display_format_options.prefix #=> String
    #   resp.answers[0].mir.group_by_list[0].display_format_options.suffix #=> String
    #   resp.answers[0].mir.group_by_list[0].display_format_options.unit_scaler #=> String, one of "NONE", "AUTO", "THOUSANDS", "MILLIONS", "BILLIONS", "TRILLIONS", "LAKHS", "CRORES"
    #   resp.answers[0].mir.group_by_list[0].display_format_options.negative_format.prefix #=> String
    #   resp.answers[0].mir.group_by_list[0].display_format_options.negative_format.suffix #=> String
    #   resp.answers[0].mir.group_by_list[0].display_format_options.currency_symbol #=> String
    #   resp.answers[0].mir.group_by_list[0].named_entity.named_entity_name #=> String
    #   resp.answers[0].mir.filters #=> Array
    #   resp.answers[0].mir.filters[0] #=> Array
    #   resp.answers[0].mir.filters[0][0].filter_type #=> String, one of "CATEGORY_FILTER", "NUMERIC_EQUALITY_FILTER", "NUMERIC_RANGE_FILTER", "DATE_RANGE_FILTER", "RELATIVE_DATE_FILTER", "TOP_BOTTOM_FILTER", "EQUALS", "RANK_LIMIT_FILTER", "ACCEPT_ALL_FILTER"
    #   resp.answers[0].mir.filters[0][0].filter_class #=> String, one of "ENFORCED_VALUE_FILTER", "CONDITIONAL_VALUE_FILTER", "NAMED_VALUE_FILTER"
    #   resp.answers[0].mir.filters[0][0].operand_field.identity #=> String
    #   resp.answers[0].mir.filters[0][0].function #=> String, one of "CONTAINS", "EXACT", "STARTS_WITH", "ENDS_WITH", "CONTAINS_STRING", "PREVIOUS", "THIS", "LAST", "NEXT", "NOW"
    #   resp.answers[0].mir.filters[0][0].constant.constant_type #=> String, one of "SINGULAR", "RANGE", "COLLECTIVE"
    #   resp.answers[0].mir.filters[0][0].constant.value #=> String
    #   resp.answers[0].mir.filters[0][0].constant.minimum #=> String
    #   resp.answers[0].mir.filters[0][0].constant.maximum #=> String
    #   resp.answers[0].mir.filters[0][0].constant.value_list #=> Array
    #   resp.answers[0].mir.filters[0][0].constant.value_list[0].constant_type #=> String, one of "SINGULAR", "RANGE", "COLLECTIVE"
    #   resp.answers[0].mir.filters[0][0].constant.value_list[0].value #=> String
    #   resp.answers[0].mir.filters[0][0].inverse #=> Boolean
    #   resp.answers[0].mir.filters[0][0].null_filter #=> String, one of "ALL_VALUES", "NON_NULLS_ONLY", "NULLS_ONLY"
    #   resp.answers[0].mir.filters[0][0].aggregation #=> String, one of "SUM", "MIN", "MAX", "COUNT", "AVERAGE", "DISTINCT_COUNT", "STDEV", "STDEVP", "VAR", "VARP", "PERCENTILE", "MEDIAN", "PTD_SUM", "PTD_MIN", "PTD_MAX", "PTD_COUNT", "PTD_DISTINCT_COUNT", "PTD_AVERAGE", "COLUMN", "CUSTOM"
    #   resp.answers[0].mir.filters[0][0].aggregation_function_parameters #=> Hash
    #   resp.answers[0].mir.filters[0][0].aggregation_function_parameters["AggFunctionParamKey"] #=> String
    #   resp.answers[0].mir.filters[0][0].aggregation_partition_by #=> Array
    #   resp.answers[0].mir.filters[0][0].aggregation_partition_by[0].field_name #=> String
    #   resp.answers[0].mir.filters[0][0].aggregation_partition_by[0].time_granularity #=> String, one of "YEAR", "QUARTER", "MONTH", "WEEK", "DAY", "HOUR", "MINUTE", "SECOND", "MILLISECOND"
    #   resp.answers[0].mir.filters[0][0].range.constant_type #=> String, one of "SINGULAR", "RANGE", "COLLECTIVE"
    #   resp.answers[0].mir.filters[0][0].range.value #=> String
    #   resp.answers[0].mir.filters[0][0].range.minimum #=> String
    #   resp.answers[0].mir.filters[0][0].range.maximum #=> String
    #   resp.answers[0].mir.filters[0][0].range.value_list #=> Array
    #   resp.answers[0].mir.filters[0][0].range.value_list[0].constant_type #=> String, one of "SINGULAR", "RANGE", "COLLECTIVE"
    #   resp.answers[0].mir.filters[0][0].range.value_list[0].value #=> String
    #   resp.answers[0].mir.filters[0][0].inclusive #=> Boolean
    #   resp.answers[0].mir.filters[0][0].time_granularity #=> String, one of "YEAR", "QUARTER", "MONTH", "WEEK", "DAY", "HOUR", "MINUTE", "SECOND", "MILLISECOND"
    #   resp.answers[0].mir.filters[0][0].last_next_offset.constant_type #=> String, one of "SINGULAR", "RANGE", "COLLECTIVE"
    #   resp.answers[0].mir.filters[0][0].last_next_offset.value #=> String
    #   resp.answers[0].mir.filters[0][0].last_next_offset.minimum #=> String
    #   resp.answers[0].mir.filters[0][0].last_next_offset.maximum #=> String
    #   resp.answers[0].mir.filters[0][0].last_next_offset.value_list #=> Array
    #   resp.answers[0].mir.filters[0][0].last_next_offset.value_list[0].constant_type #=> String, one of "SINGULAR", "RANGE", "COLLECTIVE"
    #   resp.answers[0].mir.filters[0][0].last_next_offset.value_list[0].value #=> String
    #   resp.answers[0].mir.filters[0][0].agg_metrics #=> Array
    #   resp.answers[0].mir.filters[0][0].agg_metrics[0].metric_operand.identity #=> String
    #   resp.answers[0].mir.filters[0][0].agg_metrics[0].function #=> String, one of "SUM", "MIN", "MAX", "COUNT", "AVERAGE", "DISTINCT_COUNT", "STDEV", "STDEVP", "VAR", "VARP", "PERCENTILE", "MEDIAN", "PTD_SUM", "PTD_MIN", "PTD_MAX", "PTD_COUNT", "PTD_DISTINCT_COUNT", "PTD_AVERAGE", "COLUMN", "CUSTOM"
    #   resp.answers[0].mir.filters[0][0].agg_metrics[0].sort_direction #=> String, one of "ASCENDING", "DESCENDING"
    #   resp.answers[0].mir.filters[0][0].top_bottom_limit.constant_type #=> String, one of "SINGULAR", "RANGE", "COLLECTIVE"
    #   resp.answers[0].mir.filters[0][0].top_bottom_limit.value #=> String
    #   resp.answers[0].mir.filters[0][0].top_bottom_limit.minimum #=> String
    #   resp.answers[0].mir.filters[0][0].top_bottom_limit.maximum #=> String
    #   resp.answers[0].mir.filters[0][0].top_bottom_limit.value_list #=> Array
    #   resp.answers[0].mir.filters[0][0].top_bottom_limit.value_list[0].constant_type #=> String, one of "SINGULAR", "RANGE", "COLLECTIVE"
    #   resp.answers[0].mir.filters[0][0].top_bottom_limit.value_list[0].value #=> String
    #   resp.answers[0].mir.filters[0][0].sort_direction #=> String, one of "ASCENDING", "DESCENDING"
    #   resp.answers[0].mir.filters[0][0].anchor.anchor_type #=> String, one of "TODAY"
    #   resp.answers[0].mir.filters[0][0].anchor.time_granularity #=> String, one of "YEAR", "QUARTER", "MONTH", "WEEK", "DAY", "HOUR", "MINUTE", "SECOND", "MILLISECOND"
    #   resp.answers[0].mir.filters[0][0].anchor.offset #=> Integer
    #   resp.answers[0].mir.sort.operand.identity #=> String
    #   resp.answers[0].mir.sort.sort_direction #=> String, one of "ASCENDING", "DESCENDING"
    #   resp.answers[0].mir.contribution_analysis.factors #=> Array
    #   resp.answers[0].mir.contribution_analysis.factors[0].field_name #=> String
    #   resp.answers[0].mir.contribution_analysis.time_ranges.start_range.filter_type #=> String, one of "CATEGORY_FILTER", "NUMERIC_EQUALITY_FILTER", "NUMERIC_RANGE_FILTER", "DATE_RANGE_FILTER", "RELATIVE_DATE_FILTER", "TOP_BOTTOM_FILTER", "EQUALS", "RANK_LIMIT_FILTER", "ACCEPT_ALL_FILTER"
    #   resp.answers[0].mir.contribution_analysis.time_ranges.start_range.filter_class #=> String, one of "ENFORCED_VALUE_FILTER", "CONDITIONAL_VALUE_FILTER", "NAMED_VALUE_FILTER"
    #   resp.answers[0].mir.contribution_analysis.time_ranges.start_range.operand_field.identity #=> String
    #   resp.answers[0].mir.contribution_analysis.time_ranges.start_range.function #=> String, one of "CONTAINS", "EXACT", "STARTS_WITH", "ENDS_WITH", "CONTAINS_STRING", "PREVIOUS", "THIS", "LAST", "NEXT", "NOW"
    #   resp.answers[0].mir.contribution_analysis.time_ranges.start_range.constant.constant_type #=> String, one of "SINGULAR", "RANGE", "COLLECTIVE"
    #   resp.answers[0].mir.contribution_analysis.time_ranges.start_range.constant.value #=> String
    #   resp.answers[0].mir.contribution_analysis.time_ranges.start_range.constant.minimum #=> String
    #   resp.answers[0].mir.contribution_analysis.time_ranges.start_range.constant.maximum #=> String
    #   resp.answers[0].mir.contribution_analysis.time_ranges.start_range.constant.value_list #=> Array
    #   resp.answers[0].mir.contribution_analysis.time_ranges.start_range.constant.value_list[0].constant_type #=> String, one of "SINGULAR", "RANGE", "COLLECTIVE"
    #   resp.answers[0].mir.contribution_analysis.time_ranges.start_range.constant.value_list[0].value #=> String
    #   resp.answers[0].mir.contribution_analysis.time_ranges.start_range.inverse #=> Boolean
    #   resp.answers[0].mir.contribution_analysis.time_ranges.start_range.null_filter #=> String, one of "ALL_VALUES", "NON_NULLS_ONLY", "NULLS_ONLY"
    #   resp.answers[0].mir.contribution_analysis.time_ranges.start_range.aggregation #=> String, one of "SUM", "MIN", "MAX", "COUNT", "AVERAGE", "DISTINCT_COUNT", "STDEV", "STDEVP", "VAR", "VARP", "PERCENTILE", "MEDIAN", "PTD_SUM", "PTD_MIN", "PTD_MAX", "PTD_COUNT", "PTD_DISTINCT_COUNT", "PTD_AVERAGE", "COLUMN", "CUSTOM"
    #   resp.answers[0].mir.contribution_analysis.time_ranges.start_range.aggregation_function_parameters #=> Hash
    #   resp.answers[0].mir.contribution_analysis.time_ranges.start_range.aggregation_function_parameters["AggFunctionParamKey"] #=> String
    #   resp.answers[0].mir.contribution_analysis.time_ranges.start_range.aggregation_partition_by #=> Array
    #   resp.answers[0].mir.contribution_analysis.time_ranges.start_range.aggregation_partition_by[0].field_name #=> String
    #   resp.answers[0].mir.contribution_analysis.time_ranges.start_range.aggregation_partition_by[0].time_granularity #=> String, one of "YEAR", "QUARTER", "MONTH", "WEEK", "DAY", "HOUR", "MINUTE", "SECOND", "MILLISECOND"
    #   resp.answers[0].mir.contribution_analysis.time_ranges.start_range.range.constant_type #=> String, one of "SINGULAR", "RANGE", "COLLECTIVE"
    #   resp.answers[0].mir.contribution_analysis.time_ranges.start_range.range.value #=> String
    #   resp.answers[0].mir.contribution_analysis.time_ranges.start_range.range.minimum #=> String
    #   resp.answers[0].mir.contribution_analysis.time_ranges.start_range.range.maximum #=> String
    #   resp.answers[0].mir.contribution_analysis.time_ranges.start_range.range.value_list #=> Array
    #   resp.answers[0].mir.contribution_analysis.time_ranges.start_range.range.value_list[0].constant_type #=> String, one of "SINGULAR", "RANGE", "COLLECTIVE"
    #   resp.answers[0].mir.contribution_analysis.time_ranges.start_range.range.value_list[0].value #=> String
    #   resp.answers[0].mir.contribution_analysis.time_ranges.start_range.inclusive #=> Boolean
    #   resp.answers[0].mir.contribution_analysis.time_ranges.start_range.time_granularity #=> String, one of "YEAR", "QUARTER", "MONTH", "WEEK", "DAY", "HOUR", "MINUTE", "SECOND", "MILLISECOND"
    #   resp.answers[0].mir.contribution_analysis.time_ranges.start_range.last_next_offset.constant_type #=> String, one of "SINGULAR", "RANGE", "COLLECTIVE"
    #   resp.answers[0].mir.contribution_analysis.time_ranges.start_range.last_next_offset.value #=> String
    #   resp.answers[0].mir.contribution_analysis.time_ranges.start_range.last_next_offset.minimum #=> String
    #   resp.answers[0].mir.contribution_analysis.time_ranges.start_range.last_next_offset.maximum #=> String
    #   resp.answers[0].mir.contribution_analysis.time_ranges.start_range.last_next_offset.value_list #=> Array
    #   resp.answers[0].mir.contribution_analysis.time_ranges.start_range.last_next_offset.value_list[0].constant_type #=> String, one of "SINGULAR", "RANGE", "COLLECTIVE"
    #   resp.answers[0].mir.contribution_analysis.time_ranges.start_range.last_next_offset.value_list[0].value #=> String
    #   resp.answers[0].mir.contribution_analysis.time_ranges.start_range.agg_metrics #=> Array
    #   resp.answers[0].mir.contribution_analysis.time_ranges.start_range.agg_metrics[0].metric_operand.identity #=> String
    #   resp.answers[0].mir.contribution_analysis.time_ranges.start_range.agg_metrics[0].function #=> String, one of "SUM", "MIN", "MAX", "COUNT", "AVERAGE", "DISTINCT_COUNT", "STDEV", "STDEVP", "VAR", "VARP", "PERCENTILE", "MEDIAN", "PTD_SUM", "PTD_MIN", "PTD_MAX", "PTD_COUNT", "PTD_DISTINCT_COUNT", "PTD_AVERAGE", "COLUMN", "CUSTOM"
    #   resp.answers[0].mir.contribution_analysis.time_ranges.start_range.agg_metrics[0].sort_direction #=> String, one of "ASCENDING", "DESCENDING"
    #   resp.answers[0].mir.contribution_analysis.time_ranges.start_range.top_bottom_limit.constant_type #=> String, one of "SINGULAR", "RANGE", "COLLECTIVE"
    #   resp.answers[0].mir.contribution_analysis.time_ranges.start_range.top_bottom_limit.value #=> String
    #   resp.answers[0].mir.contribution_analysis.time_ranges.start_range.top_bottom_limit.minimum #=> String
    #   resp.answers[0].mir.contribution_analysis.time_ranges.start_range.top_bottom_limit.maximum #=> String
    #   resp.answers[0].mir.contribution_analysis.time_ranges.start_range.top_bottom_limit.value_list #=> Array
    #   resp.answers[0].mir.contribution_analysis.time_ranges.start_range.top_bottom_limit.value_list[0].constant_type #=> String, one of "SINGULAR", "RANGE", "COLLECTIVE"
    #   resp.answers[0].mir.contribution_analysis.time_ranges.start_range.top_bottom_limit.value_list[0].value #=> String
    #   resp.answers[0].mir.contribution_analysis.time_ranges.start_range.sort_direction #=> String, one of "ASCENDING", "DESCENDING"
    #   resp.answers[0].mir.contribution_analysis.time_ranges.start_range.anchor.anchor_type #=> String, one of "TODAY"
    #   resp.answers[0].mir.contribution_analysis.time_ranges.start_range.anchor.time_granularity #=> String, one of "YEAR", "QUARTER", "MONTH", "WEEK", "DAY", "HOUR", "MINUTE", "SECOND", "MILLISECOND"
    #   resp.answers[0].mir.contribution_analysis.time_ranges.start_range.anchor.offset #=> Integer
    #   resp.answers[0].mir.contribution_analysis.time_ranges.end_range.filter_type #=> String, one of "CATEGORY_FILTER", "NUMERIC_EQUALITY_FILTER", "NUMERIC_RANGE_FILTER", "DATE_RANGE_FILTER", "RELATIVE_DATE_FILTER", "TOP_BOTTOM_FILTER", "EQUALS", "RANK_LIMIT_FILTER", "ACCEPT_ALL_FILTER"
    #   resp.answers[0].mir.contribution_analysis.time_ranges.end_range.filter_class #=> String, one of "ENFORCED_VALUE_FILTER", "CONDITIONAL_VALUE_FILTER", "NAMED_VALUE_FILTER"
    #   resp.answers[0].mir.contribution_analysis.time_ranges.end_range.operand_field.identity #=> String
    #   resp.answers[0].mir.contribution_analysis.time_ranges.end_range.function #=> String, one of "CONTAINS", "EXACT", "STARTS_WITH", "ENDS_WITH", "CONTAINS_STRING", "PREVIOUS", "THIS", "LAST", "NEXT", "NOW"
    #   resp.answers[0].mir.contribution_analysis.time_ranges.end_range.constant.constant_type #=> String, one of "SINGULAR", "RANGE", "COLLECTIVE"
    #   resp.answers[0].mir.contribution_analysis.time_ranges.end_range.constant.value #=> String
    #   resp.answers[0].mir.contribution_analysis.time_ranges.end_range.constant.minimum #=> String
    #   resp.answers[0].mir.contribution_analysis.time_ranges.end_range.constant.maximum #=> String
    #   resp.answers[0].mir.contribution_analysis.time_ranges.end_range.constant.value_list #=> Array
    #   resp.answers[0].mir.contribution_analysis.time_ranges.end_range.constant.value_list[0].constant_type #=> String, one of "SINGULAR", "RANGE", "COLLECTIVE"
    #   resp.answers[0].mir.contribution_analysis.time_ranges.end_range.constant.value_list[0].value #=> String
    #   resp.answers[0].mir.contribution_analysis.time_ranges.end_range.inverse #=> Boolean
    #   resp.answers[0].mir.contribution_analysis.time_ranges.end_range.null_filter #=> String, one of "ALL_VALUES", "NON_NULLS_ONLY", "NULLS_ONLY"
    #   resp.answers[0].mir.contribution_analysis.time_ranges.end_range.aggregation #=> String, one of "SUM", "MIN", "MAX", "COUNT", "AVERAGE", "DISTINCT_COUNT", "STDEV", "STDEVP", "VAR", "VARP", "PERCENTILE", "MEDIAN", "PTD_SUM", "PTD_MIN", "PTD_MAX", "PTD_COUNT", "PTD_DISTINCT_COUNT", "PTD_AVERAGE", "COLUMN", "CUSTOM"
    #   resp.answers[0].mir.contribution_analysis.time_ranges.end_range.aggregation_function_parameters #=> Hash
    #   resp.answers[0].mir.contribution_analysis.time_ranges.end_range.aggregation_function_parameters["AggFunctionParamKey"] #=> String
    #   resp.answers[0].mir.contribution_analysis.time_ranges.end_range.aggregation_partition_by #=> Array
    #   resp.answers[0].mir.contribution_analysis.time_ranges.end_range.aggregation_partition_by[0].field_name #=> String
    #   resp.answers[0].mir.contribution_analysis.time_ranges.end_range.aggregation_partition_by[0].time_granularity #=> String, one of "YEAR", "QUARTER", "MONTH", "WEEK", "DAY", "HOUR", "MINUTE", "SECOND", "MILLISECOND"
    #   resp.answers[0].mir.contribution_analysis.time_ranges.end_range.range.constant_type #=> String, one of "SINGULAR", "RANGE", "COLLECTIVE"
    #   resp.answers[0].mir.contribution_analysis.time_ranges.end_range.range.value #=> String
    #   resp.answers[0].mir.contribution_analysis.time_ranges.end_range.range.minimum #=> String
    #   resp.answers[0].mir.contribution_analysis.time_ranges.end_range.range.maximum #=> String
    #   resp.answers[0].mir.contribution_analysis.time_ranges.end_range.range.value_list #=> Array
    #   resp.answers[0].mir.contribution_analysis.time_ranges.end_range.range.value_list[0].constant_type #=> String, one of "SINGULAR", "RANGE", "COLLECTIVE"
    #   resp.answers[0].mir.contribution_analysis.time_ranges.end_range.range.value_list[0].value #=> String
    #   resp.answers[0].mir.contribution_analysis.time_ranges.end_range.inclusive #=> Boolean
    #   resp.answers[0].mir.contribution_analysis.time_ranges.end_range.time_granularity #=> String, one of "YEAR", "QUARTER", "MONTH", "WEEK", "DAY", "HOUR", "MINUTE", "SECOND", "MILLISECOND"
    #   resp.answers[0].mir.contribution_analysis.time_ranges.end_range.last_next_offset.constant_type #=> String, one of "SINGULAR", "RANGE", "COLLECTIVE"
    #   resp.answers[0].mir.contribution_analysis.time_ranges.end_range.last_next_offset.value #=> String
    #   resp.answers[0].mir.contribution_analysis.time_ranges.end_range.last_next_offset.minimum #=> String
    #   resp.answers[0].mir.contribution_analysis.time_ranges.end_range.last_next_offset.maximum #=> String
    #   resp.answers[0].mir.contribution_analysis.time_ranges.end_range.last_next_offset.value_list #=> Array
    #   resp.answers[0].mir.contribution_analysis.time_ranges.end_range.last_next_offset.value_list[0].constant_type #=> String, one of "SINGULAR", "RANGE", "COLLECTIVE"
    #   resp.answers[0].mir.contribution_analysis.time_ranges.end_range.last_next_offset.value_list[0].value #=> String
    #   resp.answers[0].mir.contribution_analysis.time_ranges.end_range.agg_metrics #=> Array
    #   resp.answers[0].mir.contribution_analysis.time_ranges.end_range.agg_metrics[0].metric_operand.identity #=> String
    #   resp.answers[0].mir.contribution_analysis.time_ranges.end_range.agg_metrics[0].function #=> String, one of "SUM", "MIN", "MAX", "COUNT", "AVERAGE", "DISTINCT_COUNT", "STDEV", "STDEVP", "VAR", "VARP", "PERCENTILE", "MEDIAN", "PTD_SUM", "PTD_MIN", "PTD_MAX", "PTD_COUNT", "PTD_DISTINCT_COUNT", "PTD_AVERAGE", "COLUMN", "CUSTOM"
    #   resp.answers[0].mir.contribution_analysis.time_ranges.end_range.agg_metrics[0].sort_direction #=> String, one of "ASCENDING", "DESCENDING"
    #   resp.answers[0].mir.contribution_analysis.time_ranges.end_range.top_bottom_limit.constant_type #=> String, one of "SINGULAR", "RANGE", "COLLECTIVE"
    #   resp.answers[0].mir.contribution_analysis.time_ranges.end_range.top_bottom_limit.value #=> String
    #   resp.answers[0].mir.contribution_analysis.time_ranges.end_range.top_bottom_limit.minimum #=> String
    #   resp.answers[0].mir.contribution_analysis.time_ranges.end_range.top_bottom_limit.maximum #=> String
    #   resp.answers[0].mir.contribution_analysis.time_ranges.end_range.top_bottom_limit.value_list #=> Array
    #   resp.answers[0].mir.contribution_analysis.time_ranges.end_range.top_bottom_limit.value_list[0].constant_type #=> String, one of "SINGULAR", "RANGE", "COLLECTIVE"
    #   resp.answers[0].mir.contribution_analysis.time_ranges.end_range.top_bottom_limit.value_list[0].value #=> String
    #   resp.answers[0].mir.contribution_analysis.time_ranges.end_range.sort_direction #=> String, one of "ASCENDING", "DESCENDING"
    #   resp.answers[0].mir.contribution_analysis.time_ranges.end_range.anchor.anchor_type #=> String, one of "TODAY"
    #   resp.answers[0].mir.contribution_analysis.time_ranges.end_range.anchor.time_granularity #=> String, one of "YEAR", "QUARTER", "MONTH", "WEEK", "DAY", "HOUR", "MINUTE", "SECOND", "MILLISECOND"
    #   resp.answers[0].mir.contribution_analysis.time_ranges.end_range.anchor.offset #=> Integer
    #   resp.answers[0].mir.contribution_analysis.direction #=> String, one of "INCREASE", "DECREASE", "NEUTRAL"
    #   resp.answers[0].mir.contribution_analysis.sort_type #=> String, one of "ABSOLUTE_DIFFERENCE", "CONTRIBUTION_PERCENTAGE", "DEVIATION_FROM_EXPECTED", "PERCENTAGE_DIFFERENCE"
    #   resp.answers[0].mir.visual.type #=> String
    #   resp.answers[0].primary_visual.visual_id #=> String
    #   resp.answers[0].primary_visual.role #=> String, one of "PRIMARY", "COMPLIMENTARY", "MULTI_INTENT", "FALLBACK", "FRAGMENT"
    #   resp.answers[0].primary_visual.ir.metrics #=> Array
    #   resp.answers[0].primary_visual.ir.metrics[0].metric_id.identity #=> String
    #   resp.answers[0].primary_visual.ir.metrics[0].function.aggregation #=> String, one of "SUM", "MIN", "MAX", "COUNT", "AVERAGE", "DISTINCT_COUNT", "STDEV", "STDEVP", "VAR", "VARP", "PERCENTILE", "MEDIAN", "PTD_SUM", "PTD_MIN", "PTD_MAX", "PTD_COUNT", "PTD_DISTINCT_COUNT", "PTD_AVERAGE", "COLUMN", "CUSTOM"
    #   resp.answers[0].primary_visual.ir.metrics[0].function.aggregation_function_parameters #=> Hash
    #   resp.answers[0].primary_visual.ir.metrics[0].function.aggregation_function_parameters["AggFunctionParamKey"] #=> String
    #   resp.answers[0].primary_visual.ir.metrics[0].function.period #=> String, one of "SECOND", "MINUTE", "HOUR", "DAY", "WEEK", "MONTH", "QUARTER", "YEAR"
    #   resp.answers[0].primary_visual.ir.metrics[0].function.period_field #=> String
    #   resp.answers[0].primary_visual.ir.metrics[0].operands #=> Array
    #   resp.answers[0].primary_visual.ir.metrics[0].operands[0].identity #=> String
    #   resp.answers[0].primary_visual.ir.metrics[0].comparison_method.type #=> String, one of "DIFF", "PERC_DIFF", "DIFF_AS_PERC", "POP_CURRENT_DIFF_AS_PERC", "POP_CURRENT_DIFF", "POP_OVERTIME_DIFF_AS_PERC", "POP_OVERTIME_DIFF", "PERCENT_OF_TOTAL", "RUNNING_SUM", "MOVING_AVERAGE"
    #   resp.answers[0].primary_visual.ir.metrics[0].comparison_method.period #=> String, one of "SECOND", "MINUTE", "HOUR", "DAY", "WEEK", "MONTH", "QUARTER", "YEAR"
    #   resp.answers[0].primary_visual.ir.metrics[0].comparison_method.window_size #=> Integer
    #   resp.answers[0].primary_visual.ir.metrics[0].expression #=> String
    #   resp.answers[0].primary_visual.ir.metrics[0].calculated_field_references #=> Array
    #   resp.answers[0].primary_visual.ir.metrics[0].calculated_field_references[0].identity #=> String
    #   resp.answers[0].primary_visual.ir.metrics[0].display_format #=> String, one of "AUTO", "PERCENT", "CURRENCY", "NUMBER", "DATE", "STRING"
    #   resp.answers[0].primary_visual.ir.metrics[0].display_format_options.use_blank_cell_format #=> Boolean
    #   resp.answers[0].primary_visual.ir.metrics[0].display_format_options.blank_cell_format #=> String
    #   resp.answers[0].primary_visual.ir.metrics[0].display_format_options.date_format #=> String
    #   resp.answers[0].primary_visual.ir.metrics[0].display_format_options.decimal_separator #=> String, one of "COMMA", "DOT"
    #   resp.answers[0].primary_visual.ir.metrics[0].display_format_options.grouping_separator #=> String
    #   resp.answers[0].primary_visual.ir.metrics[0].display_format_options.use_grouping #=> Boolean
    #   resp.answers[0].primary_visual.ir.metrics[0].display_format_options.fraction_digits #=> Integer
    #   resp.answers[0].primary_visual.ir.metrics[0].display_format_options.prefix #=> String
    #   resp.answers[0].primary_visual.ir.metrics[0].display_format_options.suffix #=> String
    #   resp.answers[0].primary_visual.ir.metrics[0].display_format_options.unit_scaler #=> String, one of "NONE", "AUTO", "THOUSANDS", "MILLIONS", "BILLIONS", "TRILLIONS", "LAKHS", "CRORES"
    #   resp.answers[0].primary_visual.ir.metrics[0].display_format_options.negative_format.prefix #=> String
    #   resp.answers[0].primary_visual.ir.metrics[0].display_format_options.negative_format.suffix #=> String
    #   resp.answers[0].primary_visual.ir.metrics[0].display_format_options.currency_symbol #=> String
    #   resp.answers[0].primary_visual.ir.metrics[0].named_entity.named_entity_name #=> String
    #   resp.answers[0].primary_visual.ir.group_by_list #=> Array
    #   resp.answers[0].primary_visual.ir.group_by_list[0].field_name.identity #=> String
    #   resp.answers[0].primary_visual.ir.group_by_list[0].time_granularity #=> String, one of "SECOND", "MINUTE", "HOUR", "DAY", "WEEK", "MONTH", "QUARTER", "YEAR"
    #   resp.answers[0].primary_visual.ir.group_by_list[0].sort.operand.identity #=> String
    #   resp.answers[0].primary_visual.ir.group_by_list[0].sort.sort_direction #=> String, one of "ASCENDING", "DESCENDING"
    #   resp.answers[0].primary_visual.ir.group_by_list[0].display_format #=> String, one of "AUTO", "PERCENT", "CURRENCY", "NUMBER", "DATE", "STRING"
    #   resp.answers[0].primary_visual.ir.group_by_list[0].display_format_options.use_blank_cell_format #=> Boolean
    #   resp.answers[0].primary_visual.ir.group_by_list[0].display_format_options.blank_cell_format #=> String
    #   resp.answers[0].primary_visual.ir.group_by_list[0].display_format_options.date_format #=> String
    #   resp.answers[0].primary_visual.ir.group_by_list[0].display_format_options.decimal_separator #=> String, one of "COMMA", "DOT"
    #   resp.answers[0].primary_visual.ir.group_by_list[0].display_format_options.grouping_separator #=> String
    #   resp.answers[0].primary_visual.ir.group_by_list[0].display_format_options.use_grouping #=> Boolean
    #   resp.answers[0].primary_visual.ir.group_by_list[0].display_format_options.fraction_digits #=> Integer
    #   resp.answers[0].primary_visual.ir.group_by_list[0].display_format_options.prefix #=> String
    #   resp.answers[0].primary_visual.ir.group_by_list[0].display_format_options.suffix #=> String
    #   resp.answers[0].primary_visual.ir.group_by_list[0].display_format_options.unit_scaler #=> String, one of "NONE", "AUTO", "THOUSANDS", "MILLIONS", "BILLIONS", "TRILLIONS", "LAKHS", "CRORES"
    #   resp.answers[0].primary_visual.ir.group_by_list[0].display_format_options.negative_format.prefix #=> String
    #   resp.answers[0].primary_visual.ir.group_by_list[0].display_format_options.negative_format.suffix #=> String
    #   resp.answers[0].primary_visual.ir.group_by_list[0].display_format_options.currency_symbol #=> String
    #   resp.answers[0].primary_visual.ir.group_by_list[0].named_entity.named_entity_name #=> String
    #   resp.answers[0].primary_visual.ir.filters #=> Array
    #   resp.answers[0].primary_visual.ir.filters[0] #=> Array
    #   resp.answers[0].primary_visual.ir.filters[0][0].filter_type #=> String, one of "CATEGORY_FILTER", "NUMERIC_EQUALITY_FILTER", "NUMERIC_RANGE_FILTER", "DATE_RANGE_FILTER", "RELATIVE_DATE_FILTER", "TOP_BOTTOM_FILTER", "EQUALS", "RANK_LIMIT_FILTER", "ACCEPT_ALL_FILTER"
    #   resp.answers[0].primary_visual.ir.filters[0][0].filter_class #=> String, one of "ENFORCED_VALUE_FILTER", "CONDITIONAL_VALUE_FILTER", "NAMED_VALUE_FILTER"
    #   resp.answers[0].primary_visual.ir.filters[0][0].operand_field.identity #=> String
    #   resp.answers[0].primary_visual.ir.filters[0][0].function #=> String, one of "CONTAINS", "EXACT", "STARTS_WITH", "ENDS_WITH", "CONTAINS_STRING", "PREVIOUS", "THIS", "LAST", "NEXT", "NOW"
    #   resp.answers[0].primary_visual.ir.filters[0][0].constant.constant_type #=> String, one of "SINGULAR", "RANGE", "COLLECTIVE"
    #   resp.answers[0].primary_visual.ir.filters[0][0].constant.value #=> String
    #   resp.answers[0].primary_visual.ir.filters[0][0].constant.minimum #=> String
    #   resp.answers[0].primary_visual.ir.filters[0][0].constant.maximum #=> String
    #   resp.answers[0].primary_visual.ir.filters[0][0].constant.value_list #=> Array
    #   resp.answers[0].primary_visual.ir.filters[0][0].constant.value_list[0].constant_type #=> String, one of "SINGULAR", "RANGE", "COLLECTIVE"
    #   resp.answers[0].primary_visual.ir.filters[0][0].constant.value_list[0].value #=> String
    #   resp.answers[0].primary_visual.ir.filters[0][0].inverse #=> Boolean
    #   resp.answers[0].primary_visual.ir.filters[0][0].null_filter #=> String, one of "ALL_VALUES", "NON_NULLS_ONLY", "NULLS_ONLY"
    #   resp.answers[0].primary_visual.ir.filters[0][0].aggregation #=> String, one of "SUM", "MIN", "MAX", "COUNT", "AVERAGE", "DISTINCT_COUNT", "STDEV", "STDEVP", "VAR", "VARP", "PERCENTILE", "MEDIAN", "PTD_SUM", "PTD_MIN", "PTD_MAX", "PTD_COUNT", "PTD_DISTINCT_COUNT", "PTD_AVERAGE", "COLUMN", "CUSTOM"
    #   resp.answers[0].primary_visual.ir.filters[0][0].aggregation_function_parameters #=> Hash
    #   resp.answers[0].primary_visual.ir.filters[0][0].aggregation_function_parameters["AggFunctionParamKey"] #=> String
    #   resp.answers[0].primary_visual.ir.filters[0][0].aggregation_partition_by #=> Array
    #   resp.answers[0].primary_visual.ir.filters[0][0].aggregation_partition_by[0].field_name #=> String
    #   resp.answers[0].primary_visual.ir.filters[0][0].aggregation_partition_by[0].time_granularity #=> String, one of "YEAR", "QUARTER", "MONTH", "WEEK", "DAY", "HOUR", "MINUTE", "SECOND", "MILLISECOND"
    #   resp.answers[0].primary_visual.ir.filters[0][0].range.constant_type #=> String, one of "SINGULAR", "RANGE", "COLLECTIVE"
    #   resp.answers[0].primary_visual.ir.filters[0][0].range.value #=> String
    #   resp.answers[0].primary_visual.ir.filters[0][0].range.minimum #=> String
    #   resp.answers[0].primary_visual.ir.filters[0][0].range.maximum #=> String
    #   resp.answers[0].primary_visual.ir.filters[0][0].range.value_list #=> Array
    #   resp.answers[0].primary_visual.ir.filters[0][0].range.value_list[0].constant_type #=> String, one of "SINGULAR", "RANGE", "COLLECTIVE"
    #   resp.answers[0].primary_visual.ir.filters[0][0].range.value_list[0].value #=> String
    #   resp.answers[0].primary_visual.ir.filters[0][0].inclusive #=> Boolean
    #   resp.answers[0].primary_visual.ir.filters[0][0].time_granularity #=> String, one of "YEAR", "QUARTER", "MONTH", "WEEK", "DAY", "HOUR", "MINUTE", "SECOND", "MILLISECOND"
    #   resp.answers[0].primary_visual.ir.filters[0][0].last_next_offset.constant_type #=> String, one of "SINGULAR", "RANGE", "COLLECTIVE"
    #   resp.answers[0].primary_visual.ir.filters[0][0].last_next_offset.value #=> String
    #   resp.answers[0].primary_visual.ir.filters[0][0].last_next_offset.minimum #=> String
    #   resp.answers[0].primary_visual.ir.filters[0][0].last_next_offset.maximum #=> String
    #   resp.answers[0].primary_visual.ir.filters[0][0].last_next_offset.value_list #=> Array
    #   resp.answers[0].primary_visual.ir.filters[0][0].last_next_offset.value_list[0].constant_type #=> String, one of "SINGULAR", "RANGE", "COLLECTIVE"
    #   resp.answers[0].primary_visual.ir.filters[0][0].last_next_offset.value_list[0].value #=> String
    #   resp.answers[0].primary_visual.ir.filters[0][0].agg_metrics #=> Array
    #   resp.answers[0].primary_visual.ir.filters[0][0].agg_metrics[0].metric_operand.identity #=> String
    #   resp.answers[0].primary_visual.ir.filters[0][0].agg_metrics[0].function #=> String, one of "SUM", "MIN", "MAX", "COUNT", "AVERAGE", "DISTINCT_COUNT", "STDEV", "STDEVP", "VAR", "VARP", "PERCENTILE", "MEDIAN", "PTD_SUM", "PTD_MIN", "PTD_MAX", "PTD_COUNT", "PTD_DISTINCT_COUNT", "PTD_AVERAGE", "COLUMN", "CUSTOM"
    #   resp.answers[0].primary_visual.ir.filters[0][0].agg_metrics[0].sort_direction #=> String, one of "ASCENDING", "DESCENDING"
    #   resp.answers[0].primary_visual.ir.filters[0][0].top_bottom_limit.constant_type #=> String, one of "SINGULAR", "RANGE", "COLLECTIVE"
    #   resp.answers[0].primary_visual.ir.filters[0][0].top_bottom_limit.value #=> String
    #   resp.answers[0].primary_visual.ir.filters[0][0].top_bottom_limit.minimum #=> String
    #   resp.answers[0].primary_visual.ir.filters[0][0].top_bottom_limit.maximum #=> String
    #   resp.answers[0].primary_visual.ir.filters[0][0].top_bottom_limit.value_list #=> Array
    #   resp.answers[0].primary_visual.ir.filters[0][0].top_bottom_limit.value_list[0].constant_type #=> String, one of "SINGULAR", "RANGE", "COLLECTIVE"
    #   resp.answers[0].primary_visual.ir.filters[0][0].top_bottom_limit.value_list[0].value #=> String
    #   resp.answers[0].primary_visual.ir.filters[0][0].sort_direction #=> String, one of "ASCENDING", "DESCENDING"
    #   resp.answers[0].primary_visual.ir.filters[0][0].anchor.anchor_type #=> String, one of "TODAY"
    #   resp.answers[0].primary_visual.ir.filters[0][0].anchor.time_granularity #=> String, one of "YEAR", "QUARTER", "MONTH", "WEEK", "DAY", "HOUR", "MINUTE", "SECOND", "MILLISECOND"
    #   resp.answers[0].primary_visual.ir.filters[0][0].anchor.offset #=> Integer
    #   resp.answers[0].primary_visual.ir.sort.operand.identity #=> String
    #   resp.answers[0].primary_visual.ir.sort.sort_direction #=> String, one of "ASCENDING", "DESCENDING"
    #   resp.answers[0].primary_visual.ir.contribution_analysis.factors #=> Array
    #   resp.answers[0].primary_visual.ir.contribution_analysis.factors[0].field_name #=> String
    #   resp.answers[0].primary_visual.ir.contribution_analysis.time_ranges.start_range.filter_type #=> String, one of "CATEGORY_FILTER", "NUMERIC_EQUALITY_FILTER", "NUMERIC_RANGE_FILTER", "DATE_RANGE_FILTER", "RELATIVE_DATE_FILTER", "TOP_BOTTOM_FILTER", "EQUALS", "RANK_LIMIT_FILTER", "ACCEPT_ALL_FILTER"
    #   resp.answers[0].primary_visual.ir.contribution_analysis.time_ranges.start_range.filter_class #=> String, one of "ENFORCED_VALUE_FILTER", "CONDITIONAL_VALUE_FILTER", "NAMED_VALUE_FILTER"
    #   resp.answers[0].primary_visual.ir.contribution_analysis.time_ranges.start_range.operand_field.identity #=> String
    #   resp.answers[0].primary_visual.ir.contribution_analysis.time_ranges.start_range.function #=> String, one of "CONTAINS", "EXACT", "STARTS_WITH", "ENDS_WITH", "CONTAINS_STRING", "PREVIOUS", "THIS", "LAST", "NEXT", "NOW"
    #   resp.answers[0].primary_visual.ir.contribution_analysis.time_ranges.start_range.constant.constant_type #=> String, one of "SINGULAR", "RANGE", "COLLECTIVE"
    #   resp.answers[0].primary_visual.ir.contribution_analysis.time_ranges.start_range.constant.value #=> String
    #   resp.answers[0].primary_visual.ir.contribution_analysis.time_ranges.start_range.constant.minimum #=> String
    #   resp.answers[0].primary_visual.ir.contribution_analysis.time_ranges.start_range.constant.maximum #=> String
    #   resp.answers[0].primary_visual.ir.contribution_analysis.time_ranges.start_range.constant.value_list #=> Array
    #   resp.answers[0].primary_visual.ir.contribution_analysis.time_ranges.start_range.constant.value_list[0].constant_type #=> String, one of "SINGULAR", "RANGE", "COLLECTIVE"
    #   resp.answers[0].primary_visual.ir.contribution_analysis.time_ranges.start_range.constant.value_list[0].value #=> String
    #   resp.answers[0].primary_visual.ir.contribution_analysis.time_ranges.start_range.inverse #=> Boolean
    #   resp.answers[0].primary_visual.ir.contribution_analysis.time_ranges.start_range.null_filter #=> String, one of "ALL_VALUES", "NON_NULLS_ONLY", "NULLS_ONLY"
    #   resp.answers[0].primary_visual.ir.contribution_analysis.time_ranges.start_range.aggregation #=> String, one of "SUM", "MIN", "MAX", "COUNT", "AVERAGE", "DISTINCT_COUNT", "STDEV", "STDEVP", "VAR", "VARP", "PERCENTILE", "MEDIAN", "PTD_SUM", "PTD_MIN", "PTD_MAX", "PTD_COUNT", "PTD_DISTINCT_COUNT", "PTD_AVERAGE", "COLUMN", "CUSTOM"
    #   resp.answers[0].primary_visual.ir.contribution_analysis.time_ranges.start_range.aggregation_function_parameters #=> Hash
    #   resp.answers[0].primary_visual.ir.contribution_analysis.time_ranges.start_range.aggregation_function_parameters["AggFunctionParamKey"] #=> String
    #   resp.answers[0].primary_visual.ir.contribution_analysis.time_ranges.start_range.aggregation_partition_by #=> Array
    #   resp.answers[0].primary_visual.ir.contribution_analysis.time_ranges.start_range.aggregation_partition_by[0].field_name #=> String
    #   resp.answers[0].primary_visual.ir.contribution_analysis.time_ranges.start_range.aggregation_partition_by[0].time_granularity #=> String, one of "YEAR", "QUARTER", "MONTH", "WEEK", "DAY", "HOUR", "MINUTE", "SECOND", "MILLISECOND"
    #   resp.answers[0].primary_visual.ir.contribution_analysis.time_ranges.start_range.range.constant_type #=> String, one of "SINGULAR", "RANGE", "COLLECTIVE"
    #   resp.answers[0].primary_visual.ir.contribution_analysis.time_ranges.start_range.range.value #=> String
    #   resp.answers[0].primary_visual.ir.contribution_analysis.time_ranges.start_range.range.minimum #=> String
    #   resp.answers[0].primary_visual.ir.contribution_analysis.time_ranges.start_range.range.maximum #=> String
    #   resp.answers[0].primary_visual.ir.contribution_analysis.time_ranges.start_range.range.value_list #=> Array
    #   resp.answers[0].primary_visual.ir.contribution_analysis.time_ranges.start_range.range.value_list[0].constant_type #=> String, one of "SINGULAR", "RANGE", "COLLECTIVE"
    #   resp.answers[0].primary_visual.ir.contribution_analysis.time_ranges.start_range.range.value_list[0].value #=> String
    #   resp.answers[0].primary_visual.ir.contribution_analysis.time_ranges.start_range.inclusive #=> Boolean
    #   resp.answers[0].primary_visual.ir.contribution_analysis.time_ranges.start_range.time_granularity #=> String, one of "YEAR", "QUARTER", "MONTH", "WEEK", "DAY", "HOUR", "MINUTE", "SECOND", "MILLISECOND"
    #   resp.answers[0].primary_visual.ir.contribution_analysis.time_ranges.start_range.last_next_offset.constant_type #=> String, one of "SINGULAR", "RANGE", "COLLECTIVE"
    #   resp.answers[0].primary_visual.ir.contribution_analysis.time_ranges.start_range.last_next_offset.value #=> String
    #   resp.answers[0].primary_visual.ir.contribution_analysis.time_ranges.start_range.last_next_offset.minimum #=> String
    #   resp.answers[0].primary_visual.ir.contribution_analysis.time_ranges.start_range.last_next_offset.maximum #=> String
    #   resp.answers[0].primary_visual.ir.contribution_analysis.time_ranges.start_range.last_next_offset.value_list #=> Array
    #   resp.answers[0].primary_visual.ir.contribution_analysis.time_ranges.start_range.last_next_offset.value_list[0].constant_type #=> String, one of "SINGULAR", "RANGE", "COLLECTIVE"
    #   resp.answers[0].primary_visual.ir.contribution_analysis.time_ranges.start_range.last_next_offset.value_list[0].value #=> String
    #   resp.answers[0].primary_visual.ir.contribution_analysis.time_ranges.start_range.agg_metrics #=> Array
    #   resp.answers[0].primary_visual.ir.contribution_analysis.time_ranges.start_range.agg_metrics[0].metric_operand.identity #=> String
    #   resp.answers[0].primary_visual.ir.contribution_analysis.time_ranges.start_range.agg_metrics[0].function #=> String, one of "SUM", "MIN", "MAX", "COUNT", "AVERAGE", "DISTINCT_COUNT", "STDEV", "STDEVP", "VAR", "VARP", "PERCENTILE", "MEDIAN", "PTD_SUM", "PTD_MIN", "PTD_MAX", "PTD_COUNT", "PTD_DISTINCT_COUNT", "PTD_AVERAGE", "COLUMN", "CUSTOM"
    #   resp.answers[0].primary_visual.ir.contribution_analysis.time_ranges.start_range.agg_metrics[0].sort_direction #=> String, one of "ASCENDING", "DESCENDING"
    #   resp.answers[0].primary_visual.ir.contribution_analysis.time_ranges.start_range.top_bottom_limit.constant_type #=> String, one of "SINGULAR", "RANGE", "COLLECTIVE"
    #   resp.answers[0].primary_visual.ir.contribution_analysis.time_ranges.start_range.top_bottom_limit.value #=> String
    #   resp.answers[0].primary_visual.ir.contribution_analysis.time_ranges.start_range.top_bottom_limit.minimum #=> String
    #   resp.answers[0].primary_visual.ir.contribution_analysis.time_ranges.start_range.top_bottom_limit.maximum #=> String
    #   resp.answers[0].primary_visual.ir.contribution_analysis.time_ranges.start_range.top_bottom_limit.value_list #=> Array
    #   resp.answers[0].primary_visual.ir.contribution_analysis.time_ranges.start_range.top_bottom_limit.value_list[0].constant_type #=> String, one of "SINGULAR", "RANGE", "COLLECTIVE"
    #   resp.answers[0].primary_visual.ir.contribution_analysis.time_ranges.start_range.top_bottom_limit.value_list[0].value #=> String
    #   resp.answers[0].primary_visual.ir.contribution_analysis.time_ranges.start_range.sort_direction #=> String, one of "ASCENDING", "DESCENDING"
    #   resp.answers[0].primary_visual.ir.contribution_analysis.time_ranges.start_range.anchor.anchor_type #=> String, one of "TODAY"
    #   resp.answers[0].primary_visual.ir.contribution_analysis.time_ranges.start_range.anchor.time_granularity #=> String, one of "YEAR", "QUARTER", "MONTH", "WEEK", "DAY", "HOUR", "MINUTE", "SECOND", "MILLISECOND"
    #   resp.answers[0].primary_visual.ir.contribution_analysis.time_ranges.start_range.anchor.offset #=> Integer
    #   resp.answers[0].primary_visual.ir.contribution_analysis.time_ranges.end_range.filter_type #=> String, one of "CATEGORY_FILTER", "NUMERIC_EQUALITY_FILTER", "NUMERIC_RANGE_FILTER", "DATE_RANGE_FILTER", "RELATIVE_DATE_FILTER", "TOP_BOTTOM_FILTER", "EQUALS", "RANK_LIMIT_FILTER", "ACCEPT_ALL_FILTER"
    #   resp.answers[0].primary_visual.ir.contribution_analysis.time_ranges.end_range.filter_class #=> String, one of "ENFORCED_VALUE_FILTER", "CONDITIONAL_VALUE_FILTER", "NAMED_VALUE_FILTER"
    #   resp.answers[0].primary_visual.ir.contribution_analysis.time_ranges.end_range.operand_field.identity #=> String
    #   resp.answers[0].primary_visual.ir.contribution_analysis.time_ranges.end_range.function #=> String, one of "CONTAINS", "EXACT", "STARTS_WITH", "ENDS_WITH", "CONTAINS_STRING", "PREVIOUS", "THIS", "LAST", "NEXT", "NOW"
    #   resp.answers[0].primary_visual.ir.contribution_analysis.time_ranges.end_range.constant.constant_type #=> String, one of "SINGULAR", "RANGE", "COLLECTIVE"
    #   resp.answers[0].primary_visual.ir.contribution_analysis.time_ranges.end_range.constant.value #=> String
    #   resp.answers[0].primary_visual.ir.contribution_analysis.time_ranges.end_range.constant.minimum #=> String
    #   resp.answers[0].primary_visual.ir.contribution_analysis.time_ranges.end_range.constant.maximum #=> String
    #   resp.answers[0].primary_visual.ir.contribution_analysis.time_ranges.end_range.constant.value_list #=> Array
    #   resp.answers[0].primary_visual.ir.contribution_analysis.time_ranges.end_range.constant.value_list[0].constant_type #=> String, one of "SINGULAR", "RANGE", "COLLECTIVE"
    #   resp.answers[0].primary_visual.ir.contribution_analysis.time_ranges.end_range.constant.value_list[0].value #=> String
    #   resp.answers[0].primary_visual.ir.contribution_analysis.time_ranges.end_range.inverse #=> Boolean
    #   resp.answers[0].primary_visual.ir.contribution_analysis.time_ranges.end_range.null_filter #=> String, one of "ALL_VALUES", "NON_NULLS_ONLY", "NULLS_ONLY"
    #   resp.answers[0].primary_visual.ir.contribution_analysis.time_ranges.end_range.aggregation #=> String, one of "SUM", "MIN", "MAX", "COUNT", "AVERAGE", "DISTINCT_COUNT", "STDEV", "STDEVP", "VAR", "VARP", "PERCENTILE", "MEDIAN", "PTD_SUM", "PTD_MIN", "PTD_MAX", "PTD_COUNT", "PTD_DISTINCT_COUNT", "PTD_AVERAGE", "COLUMN", "CUSTOM"
    #   resp.answers[0].primary_visual.ir.contribution_analysis.time_ranges.end_range.aggregation_function_parameters #=> Hash
    #   resp.answers[0].primary_visual.ir.contribution_analysis.time_ranges.end_range.aggregation_function_parameters["AggFunctionParamKey"] #=> String
    #   resp.answers[0].primary_visual.ir.contribution_analysis.time_ranges.end_range.aggregation_partition_by #=> Array
    #   resp.answers[0].primary_visual.ir.contribution_analysis.time_ranges.end_range.aggregation_partition_by[0].field_name #=> String
    #   resp.answers[0].primary_visual.ir.contribution_analysis.time_ranges.end_range.aggregation_partition_by[0].time_granularity #=> String, one of "YEAR", "QUARTER", "MONTH", "WEEK", "DAY", "HOUR", "MINUTE", "SECOND", "MILLISECOND"
    #   resp.answers[0].primary_visual.ir.contribution_analysis.time_ranges.end_range.range.constant_type #=> String, one of "SINGULAR", "RANGE", "COLLECTIVE"
    #   resp.answers[0].primary_visual.ir.contribution_analysis.time_ranges.end_range.range.value #=> String
    #   resp.answers[0].primary_visual.ir.contribution_analysis.time_ranges.end_range.range.minimum #=> String
    #   resp.answers[0].primary_visual.ir.contribution_analysis.time_ranges.end_range.range.maximum #=> String
    #   resp.answers[0].primary_visual.ir.contribution_analysis.time_ranges.end_range.range.value_list #=> Array
    #   resp.answers[0].primary_visual.ir.contribution_analysis.time_ranges.end_range.range.value_list[0].constant_type #=> String, one of "SINGULAR", "RANGE", "COLLECTIVE"
    #   resp.answers[0].primary_visual.ir.contribution_analysis.time_ranges.end_range.range.value_list[0].value #=> String
    #   resp.answers[0].primary_visual.ir.contribution_analysis.time_ranges.end_range.inclusive #=> Boolean
    #   resp.answers[0].primary_visual.ir.contribution_analysis.time_ranges.end_range.time_granularity #=> String, one of "YEAR", "QUARTER", "MONTH", "WEEK", "DAY", "HOUR", "MINUTE", "SECOND", "MILLISECOND"
    #   resp.answers[0].primary_visual.ir.contribution_analysis.time_ranges.end_range.last_next_offset.constant_type #=> String, one of "SINGULAR", "RANGE", "COLLECTIVE"
    #   resp.answers[0].primary_visual.ir.contribution_analysis.time_ranges.end_range.last_next_offset.value #=> String
    #   resp.answers[0].primary_visual.ir.contribution_analysis.time_ranges.end_range.last_next_offset.minimum #=> String
    #   resp.answers[0].primary_visual.ir.contribution_analysis.time_ranges.end_range.last_next_offset.maximum #=> String
    #   resp.answers[0].primary_visual.ir.contribution_analysis.time_ranges.end_range.last_next_offset.value_list #=> Array
    #   resp.answers[0].primary_visual.ir.contribution_analysis.time_ranges.end_range.last_next_offset.value_list[0].constant_type #=> String, one of "SINGULAR", "RANGE", "COLLECTIVE"
    #   resp.answers[0].primary_visual.ir.contribution_analysis.time_ranges.end_range.last_next_offset.value_list[0].value #=> String
    #   resp.answers[0].primary_visual.ir.contribution_analysis.time_ranges.end_range.agg_metrics #=> Array
    #   resp.answers[0].primary_visual.ir.contribution_analysis.time_ranges.end_range.agg_metrics[0].metric_operand.identity #=> String
    #   resp.answers[0].primary_visual.ir.contribution_analysis.time_ranges.end_range.agg_metrics[0].function #=> String, one of "SUM", "MIN", "MAX", "COUNT", "AVERAGE", "DISTINCT_COUNT", "STDEV", "STDEVP", "VAR", "VARP", "PERCENTILE", "MEDIAN", "PTD_SUM", "PTD_MIN", "PTD_MAX", "PTD_COUNT", "PTD_DISTINCT_COUNT", "PTD_AVERAGE", "COLUMN", "CUSTOM"
    #   resp.answers[0].primary_visual.ir.contribution_analysis.time_ranges.end_range.agg_metrics[0].sort_direction #=> String, one of "ASCENDING", "DESCENDING"
    #   resp.answers[0].primary_visual.ir.contribution_analysis.time_ranges.end_range.top_bottom_limit.constant_type #=> String, one of "SINGULAR", "RANGE", "COLLECTIVE"
    #   resp.answers[0].primary_visual.ir.contribution_analysis.time_ranges.end_range.top_bottom_limit.value #=> String
    #   resp.answers[0].primary_visual.ir.contribution_analysis.time_ranges.end_range.top_bottom_limit.minimum #=> String
    #   resp.answers[0].primary_visual.ir.contribution_analysis.time_ranges.end_range.top_bottom_limit.maximum #=> String
    #   resp.answers[0].primary_visual.ir.contribution_analysis.time_ranges.end_range.top_bottom_limit.value_list #=> Array
    #   resp.answers[0].primary_visual.ir.contribution_analysis.time_ranges.end_range.top_bottom_limit.value_list[0].constant_type #=> String, one of "SINGULAR", "RANGE", "COLLECTIVE"
    #   resp.answers[0].primary_visual.ir.contribution_analysis.time_ranges.end_range.top_bottom_limit.value_list[0].value #=> String
    #   resp.answers[0].primary_visual.ir.contribution_analysis.time_ranges.end_range.sort_direction #=> String, one of "ASCENDING", "DESCENDING"
    #   resp.answers[0].primary_visual.ir.contribution_analysis.time_ranges.end_range.anchor.anchor_type #=> String, one of "TODAY"
    #   resp.answers[0].primary_visual.ir.contribution_analysis.time_ranges.end_range.anchor.time_granularity #=> String, one of "YEAR", "QUARTER", "MONTH", "WEEK", "DAY", "HOUR", "MINUTE", "SECOND", "MILLISECOND"
    #   resp.answers[0].primary_visual.ir.contribution_analysis.time_ranges.end_range.anchor.offset #=> Integer
    #   resp.answers[0].primary_visual.ir.contribution_analysis.direction #=> String, one of "INCREASE", "DECREASE", "NEUTRAL"
    #   resp.answers[0].primary_visual.ir.contribution_analysis.sort_type #=> String, one of "ABSOLUTE_DIFFERENCE", "CONTRIBUTION_PERCENTAGE", "DEVIATION_FROM_EXPECTED", "PERCENTAGE_DIFFERENCE"
    #   resp.answers[0].primary_visual.ir.visual.type #=> String
    #   resp.answers[0].primary_visual.supporting_visuals #=> Array
    #   resp.answers[0].primary_visual.supporting_visuals[0] #=> Types::TopicVisual
    #   resp.answers[0].template.template_type #=> String
    #   resp.answers[0].template.slots #=> Array
    #   resp.answers[0].template.slots[0].slot_id #=> String
    #   resp.answers[0].template.slots[0].visual_id #=> String
    #   resp.status #=> Integer
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListTopicReviewedAnswers AWS API Documentation
    #
    # @overload list_topic_reviewed_answers(params = {})
    # @param [Hash] params ({})
    def list_topic_reviewed_answers(params = {}, options = {})
      req = build_request(:list_topic_reviewed_answers, params)
      req.send_request(options)
    end

    # Lists all of the topics within an account.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that contains the topics
    #   that you want to list.
    #
    # @option params [String] :next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned per request.
    #
    # @return [Types::ListTopicsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTopicsResponse#topics_summaries #topics_summaries} => Array&lt;Types::TopicSummary&gt;
    #   * {Types::ListTopicsResponse#next_token #next_token} => String
    #   * {Types::ListTopicsResponse#request_id #request_id} => String
    #   * {Types::ListTopicsResponse#status #status} => Integer
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_topics({
    #     aws_account_id: "AwsAccountId", # required
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.topics_summaries #=> Array
    #   resp.topics_summaries[0].arn #=> String
    #   resp.topics_summaries[0].topic_id #=> String
    #   resp.topics_summaries[0].name #=> String
    #   resp.topics_summaries[0].user_experience_version #=> String, one of "LEGACY", "NEW_READER_EXPERIENCE"
    #   resp.next_token #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListTopics AWS API Documentation
    #
    # @overload list_topics(params = {})
    # @param [Hash] params ({})
    def list_topics(params = {}, options = {})
      req = build_request(:list_topics, params)
      req.send_request(options)
    end

    # Lists the Amazon QuickSight groups that an Amazon QuickSight user is a
    # member of.
    #
    # @option params [required, String] :user_name
    #   The Amazon QuickSight user name that you want to list group
    #   memberships for.
    #
    # @option params [required, String] :aws_account_id
    #   The Amazon Web Services account ID that the user is in. Currently, you
    #   use the ID for the Amazon Web Services account that contains your
    #   Amazon QuickSight account.
    #
    # @option params [required, String] :namespace
    #   The namespace. Currently, you should set this to `default`.
    #
    # @option params [String] :next_token
    #   A pagination token that can be used in a subsequent request.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return from this request.
    #
    # @return [Types::ListUserGroupsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListUserGroupsResponse#group_list #group_list} => Array&lt;Types::Group&gt;
    #   * {Types::ListUserGroupsResponse#next_token #next_token} => String
    #   * {Types::ListUserGroupsResponse#request_id #request_id} => String
    #   * {Types::ListUserGroupsResponse#status #status} => Integer
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_user_groups({
    #     user_name: "UserName", # required
    #     aws_account_id: "AwsAccountId", # required
    #     namespace: "Namespace", # required
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.group_list #=> Array
    #   resp.group_list[0].arn #=> String
    #   resp.group_list[0].group_name #=> String
    #   resp.group_list[0].description #=> String
    #   resp.group_list[0].principal_id #=> String
    #   resp.next_token #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListUserGroups AWS API Documentation
    #
    # @overload list_user_groups(params = {})
    # @param [Hash] params ({})
    def list_user_groups(params = {}, options = {})
      req = build_request(:list_user_groups, params)
      req.send_request(options)
    end

    # Returns a list of all of the Amazon QuickSight users belonging to this
    # account.
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the Amazon Web Services account that the user is in.
    #   Currently, you use the ID for the Amazon Web Services account that
    #   contains your Amazon QuickSight account.
    #
    # @option params [String] :next_token
    #   A pagination token that can be used in a subsequent request.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return from this request.
    #
    # @option params [required, String] :namespace
    #   The namespace. Currently, you should set this to `default`.
    #
    # @return [Types::ListUsersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListUsersResponse#user_list #user_list} => Array&lt;Types::User&gt;
    #   * {Types::ListUsersResponse#next_token #next_token} => String
    #   * {Types::ListUsersResponse#request_id #request_id} => String
    #   * {Types::ListUsersResponse#status #status} => Integer
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_users({
    #     aws_account_id: "AwsAccountId", # required
    #     next_token: "String",
    #     max_results: 1,
    #     namespace: "Namespace", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.user_list #=> Array
    #   resp.user_list[0].arn #=> String
    #   resp.user_list[0].user_name #=> String
    #   resp.user_list[0].email #=> String
    #   resp.user_list[0].role #=> String, one of "ADMIN", "AUTHOR", "READER", "RESTRICTED_AUTHOR", "RESTRICTED_READER", "ADMIN_PRO", "AUTHOR_PRO", "READER_PRO"
    #   resp.user_list[0].identity_type #=> String, one of "IAM", "QUICKSIGHT", "IAM_IDENTITY_CENTER"
    #   resp.user_list[0].active #=> Boolean
    #   resp.user_list[0].principal_id #=> String
    #   resp.user_list[0].custom_permissions_name #=> String
    #   resp.user_list[0].external_login_federation_provider_type #=> String
    #   resp.user_list[0].external_login_federation_provider_url #=> String
    #   resp.user_list[0].external_login_id #=> String
    #   resp.next_token #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListUsers AWS API Documentation
    #
    # @overload list_users(params = {})
    # @param [Hash] params ({})
    def list_users(params = {}, options = {})
      req = build_request(:list_users, params)
      req.send_request(options)
    end

    # Lists all of the VPC connections in the current set Amazon Web
    # Services Region of an Amazon Web Services account.
    #
    # @option params [required, String] :aws_account_id
    #   The Amazon Web Services account ID of the account that contains the
    #   VPC connections that you want to list.
    #
    # @option params [String] :next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned per request.
    #
    # @return [Types::ListVPCConnectionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListVPCConnectionsResponse#vpc_connection_summaries #vpc_connection_summaries} => Array&lt;Types::VPCConnectionSummary&gt;
    #   * {Types::ListVPCConnectionsResponse#next_token #next_token} => String
    #   * {Types::ListVPCConnectionsResponse#request_id #request_id} => String
    #   * {Types::ListVPCConnectionsResponse#status #status} => Integer
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_vpc_connections({
    #     aws_account_id: "AwsAccountId", # required
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.vpc_connection_summaries #=> Array
    #   resp.vpc_connection_summaries[0].vpc_connection_id #=> String
    #   resp.vpc_connection_summaries[0].arn #=> String
    #   resp.vpc_connection_summaries[0].name #=> String
    #   resp.vpc_connection_summaries[0].vpc_id #=> String
    #   resp.vpc_connection_summaries[0].security_group_ids #=> Array
    #   resp.vpc_connection_summaries[0].security_group_ids[0] #=> String
    #   resp.vpc_connection_summaries[0].dns_resolvers #=> Array
    #   resp.vpc_connection_summaries[0].dns_resolvers[0] #=> String
    #   resp.vpc_connection_summaries[0].status #=> String, one of "CREATION_IN_PROGRESS", "CREATION_SUCCESSFUL", "CREATION_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_SUCCESSFUL", "UPDATE_FAILED", "DELETION_IN_PROGRESS", "DELETION_FAILED", "DELETED"
    #   resp.vpc_connection_summaries[0].availability_status #=> String, one of "AVAILABLE", "UNAVAILABLE", "PARTIALLY_AVAILABLE"
    #   resp.vpc_connection_summaries[0].network_interfaces #=> Array
    #   resp.vpc_connection_summaries[0].network_interfaces[0].subnet_id #=> String
    #   resp.vpc_connection_summaries[0].network_interfaces[0].availability_zone #=> String
    #   resp.vpc_connection_summaries[0].network_interfaces[0].error_message #=> String
    #   resp.vpc_connection_summaries[0].network_interfaces[0].status #=> String, one of "CREATING", "AVAILABLE", "CREATION_FAILED", "UPDATING", "UPDATE_FAILED", "DELETING", "DELETED", "DELETION_FAILED", "DELETION_SCHEDULED", "ATTACHMENT_FAILED_ROLLBACK_FAILED"
    #   resp.vpc_connection_summaries[0].network_interfaces[0].network_interface_id #=> String
    #   resp.vpc_connection_summaries[0].role_arn #=> String
    #   resp.vpc_connection_summaries[0].created_time #=> Time
    #   resp.vpc_connection_summaries[0].last_updated_time #=> Time
    #   resp.next_token #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListVPCConnections AWS API Documentation
    #
    # @overload list_vpc_connections(params = {})
    # @param [Hash] params ({})
    def list_vpc_connections(params = {}, options = {})
      req = build_request(:list_vpc_connections, params)
      req.send_request(options)
    end

    # Predicts existing visuals or generates new visuals to answer a given
    # query.
    #
    # This API uses [trusted identity propagation][1] to ensure that an end
    # user is authenticated and receives the embed URL that is specific to
    # that user. The IAM Identity Center application that the user has
    # logged into needs to have [trusted Identity Propagation enabled for
    # QuickSight][2] with the scope value set to `quicksight:read`. Before
    # you use this action, make sure that you have configured the relevant
    # QuickSight resource and permissions.
    #
    # We recommend enabling the `QSearchStatus` API to unlock the full
    # potential of `PredictQnA`. When `QSearchStatus` is enabled, it first
    # checks the specified dashboard for any existing visuals that match the
    # question. If no matching visuals are found, `PredictQnA` uses
    # generative Q&amp;A to provide an answer. To update the
    # `QSearchStatus`, see [UpdateQuickSightQSearchConfiguration][3].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/singlesignon/latest/userguide/trustedidentitypropagation.html
    # [2]: https://docs.aws.amazon.com/singlesignon/latest/userguide/trustedidentitypropagation-using-customermanagedapps-specify-trusted-apps.html
    # [3]: https://docs.aws.amazon.com/quicksight/latest/APIReference/API_UpdateQuickSightQSearchConfiguration.html
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that the user wants to
    #   execute Predict QA results in.
    #
    # @option params [required, String] :query_text
    #   The query text to be used to predict QA results.
    #
    # @option params [String] :include_quick_sight_q_index
    #   Indicates whether Q indicies are included or excluded.
    #
    # @option params [String] :include_generated_answer
    #   Indicates whether generated answers are included or excluded.
    #
    # @option params [Integer] :max_topics_to_consider
    #   The number of maximum topics to be considered to predict QA results.
    #
    # @return [Types::PredictQAResultsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PredictQAResultsResponse#primary_result #primary_result} => Types::QAResult
    #   * {Types::PredictQAResultsResponse#additional_results #additional_results} => Array&lt;Types::QAResult&gt;
    #   * {Types::PredictQAResultsResponse#request_id #request_id} => String
    #   * {Types::PredictQAResultsResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.predict_qa_results({
    #     aws_account_id: "AwsAccountId", # required
    #     query_text: "QAQueryText", # required
    #     include_quick_sight_q_index: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #     include_generated_answer: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #     max_topics_to_consider: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.primary_result.result_type #=> String, one of "DASHBOARD_VISUAL", "GENERATED_ANSWER", "NO_ANSWER"
    #   resp.primary_result.dashboard_visual.dashboard_id #=> String
    #   resp.primary_result.dashboard_visual.dashboard_name #=> String
    #   resp.primary_result.dashboard_visual.sheet_id #=> String
    #   resp.primary_result.dashboard_visual.sheet_name #=> String
    #   resp.primary_result.dashboard_visual.visual_id #=> String
    #   resp.primary_result.dashboard_visual.visual_title #=> String
    #   resp.primary_result.dashboard_visual.visual_subtitle #=> String
    #   resp.primary_result.dashboard_visual.dashboard_url #=> String
    #   resp.primary_result.generated_answer.question_text #=> String
    #   resp.primary_result.generated_answer.answer_status #=> String, one of "ANSWER_GENERATED", "ANSWER_RETRIEVED", "ANSWER_DOWNGRADE"
    #   resp.primary_result.generated_answer.topic_id #=> String
    #   resp.primary_result.generated_answer.topic_name #=> String
    #   resp.primary_result.generated_answer.restatement #=> String
    #   resp.primary_result.generated_answer.question_id #=> String
    #   resp.primary_result.generated_answer.answer_id #=> String
    #   resp.primary_result.generated_answer.question_url #=> String
    #   resp.additional_results #=> Array
    #   resp.additional_results[0].result_type #=> String, one of "DASHBOARD_VISUAL", "GENERATED_ANSWER", "NO_ANSWER"
    #   resp.additional_results[0].dashboard_visual.dashboard_id #=> String
    #   resp.additional_results[0].dashboard_visual.dashboard_name #=> String
    #   resp.additional_results[0].dashboard_visual.sheet_id #=> String
    #   resp.additional_results[0].dashboard_visual.sheet_name #=> String
    #   resp.additional_results[0].dashboard_visual.visual_id #=> String
    #   resp.additional_results[0].dashboard_visual.visual_title #=> String
    #   resp.additional_results[0].dashboard_visual.visual_subtitle #=> String
    #   resp.additional_results[0].dashboard_visual.dashboard_url #=> String
    #   resp.additional_results[0].generated_answer.question_text #=> String
    #   resp.additional_results[0].generated_answer.answer_status #=> String, one of "ANSWER_GENERATED", "ANSWER_RETRIEVED", "ANSWER_DOWNGRADE"
    #   resp.additional_results[0].generated_answer.topic_id #=> String
    #   resp.additional_results[0].generated_answer.topic_name #=> String
    #   resp.additional_results[0].generated_answer.restatement #=> String
    #   resp.additional_results[0].generated_answer.question_id #=> String
    #   resp.additional_results[0].generated_answer.answer_id #=> String
    #   resp.additional_results[0].generated_answer.question_url #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/PredictQAResults AWS API Documentation
    #
    # @overload predict_qa_results(params = {})
    # @param [Hash] params ({})
    def predict_qa_results(params = {}, options = {})
      req = build_request(:predict_qa_results, params)
      req.send_request(options)
    end

    # Creates or updates the dataset refresh properties for the dataset.
    #
    # @option params [required, String] :aws_account_id
    #   The Amazon Web Services account ID.
    #
    # @option params [required, String] :data_set_id
    #   The ID of the dataset.
    #
    # @option params [required, Types::DataSetRefreshProperties] :data_set_refresh_properties
    #   The dataset refresh properties.
    #
    # @return [Types::PutDataSetRefreshPropertiesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutDataSetRefreshPropertiesResponse#request_id #request_id} => String
    #   * {Types::PutDataSetRefreshPropertiesResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_data_set_refresh_properties({
    #     aws_account_id: "AwsAccountId", # required
    #     data_set_id: "ResourceId", # required
    #     data_set_refresh_properties: { # required
    #       refresh_configuration: {
    #         incremental_refresh: { # required
    #           lookback_window: { # required
    #             column_name: "String", # required
    #             size: 1, # required
    #             size_unit: "HOUR", # required, accepts HOUR, DAY, WEEK
    #           },
    #         },
    #       },
    #       failure_configuration: {
    #         email_alert: {
    #           alert_status: "ENABLED", # accepts ENABLED, DISABLED
    #         },
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/PutDataSetRefreshProperties AWS API Documentation
    #
    # @overload put_data_set_refresh_properties(params = {})
    # @param [Hash] params ({})
    def put_data_set_refresh_properties(params = {}, options = {})
      req = build_request(:put_data_set_refresh_properties, params)
      req.send_request(options)
    end

    # Creates an Amazon QuickSight user whose identity is associated with
    # the Identity and Access Management (IAM) identity or role specified in
    # the request. When you register a new user from the QuickSight API,
    # QuickSight generates a registration URL. The user accesses this
    # registration URL to create their account. QuickSight doesn't send a
    # registration email to users who are registered from the QuickSight
    # API. If you want new users to receive a registration email, then add
    # those users in the QuickSight console. For more information on
    # registering a new user in the QuickSight console, see [ Inviting users
    # to access QuickSight][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/quicksight/latest/user/managing-users.html#inviting-users
    #
    # @option params [required, String] :identity_type
    #   The identity type that your QuickSight account uses to manage the
    #   identity of users.
    #
    # @option params [required, String] :email
    #   The email address of the user that you want to register.
    #
    # @option params [required, String] :user_role
    #   The Amazon QuickSight role for the user. The user role can be one of
    #   the following:
    #
    #   * `READER`: A user who has read-only access to dashboards.
    #
    #   * `AUTHOR`: A user who can create data sources, datasets, analyses,
    #     and dashboards.
    #
    #   * `ADMIN`: A user who is an author, who can also manage Amazon
    #     QuickSight settings.
    #
    #   * `READER_PRO`: Reader Pro adds Generative BI capabilities to the
    #     Reader role. Reader Pros have access to Amazon Q in QuickSight, can
    #     build stories with Amazon Q, and can generate executive summaries
    #     from dashboards.
    #
    #   * `AUTHOR_PRO`: Author Pro adds Generative BI capabilities to the
    #     Author role. Author Pros can author dashboards with natural language
    #     with Amazon Q, build stories with Amazon Q, create Topics for
    #     Q&amp;A, and generate executive summaries from dashboards.
    #
    #   * `ADMIN_PRO`: Admin Pros are Author Pros who can also manage Amazon
    #     QuickSight administrative settings. Admin Pro users are billed at
    #     Author Pro pricing.
    #
    #   * `RESTRICTED_READER`: This role isn't currently available for use.
    #
    #   * `RESTRICTED_AUTHOR`: This role isn't currently available for use.
    #
    # @option params [String] :iam_arn
    #   The ARN of the IAM user or role that you are registering with Amazon
    #   QuickSight.
    #
    # @option params [String] :session_name
    #   You need to use this parameter only when you register one or more
    #   users using an assumed IAM role. You don't need to provide the
    #   session name for other scenarios, for example when you are registering
    #   an IAM user or an Amazon QuickSight user. You can register multiple
    #   users using the same IAM role if each user has a different session
    #   name. For more information on assuming IAM roles, see [ `assume-role`
    #   ][1] in the *CLI Reference.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cli/latest/reference/sts/assume-role.html
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the Amazon Web Services account that the user is in.
    #   Currently, you use the ID for the Amazon Web Services account that
    #   contains your Amazon QuickSight account.
    #
    # @option params [required, String] :namespace
    #   The namespace. Currently, you should set this to `default`.
    #
    # @option params [String] :user_name
    #   The Amazon QuickSight user name that you want to create for the user
    #   you are registering.
    #
    # @option params [String] :custom_permissions_name
    #   (Enterprise edition only) The name of the custom permissions profile
    #   that you want to assign to this user. Customized permissions allows
    #   you to control a user's access by restricting access the following
    #   operations:
    #
    #   * Create and update data sources
    #
    #   * Create and update datasets
    #
    #   * Create and update email reports
    #
    #   * Subscribe to email reports
    #
    #   To add custom permissions to an existing user, use ` UpdateUser `
    #   instead.
    #
    #   A set of custom permissions includes any combination of these
    #   restrictions. Currently, you need to create the profile names for
    #   custom permission sets by using the QuickSight console. Then, you use
    #   the `RegisterUser` API operation to assign the named set of
    #   permissions to a QuickSight user.
    #
    #   QuickSight custom permissions are applied through IAM policies.
    #   Therefore, they override the permissions typically granted by
    #   assigning QuickSight users to one of the default security cohorts in
    #   QuickSight (admin, author, reader, admin pro, author pro, reader pro).
    #
    #   This feature is available only to QuickSight Enterprise edition
    #   subscriptions.
    #
    # @option params [String] :external_login_federation_provider_type
    #   The type of supported external login provider that provides identity
    #   to let a user federate into Amazon QuickSight with an associated
    #   Identity and Access Management(IAM) role. The type of supported
    #   external login provider can be one of the following.
    #
    #   * `COGNITO`: Amazon Cognito. The provider URL is
    #     cognito-identity.amazonaws.com. When choosing the `COGNITO` provider
    #     type, don’t use the "CustomFederationProviderUrl" parameter which
    #     is only needed when the external provider is custom.
    #
    #   * `CUSTOM_OIDC`: Custom OpenID Connect (OIDC) provider. When choosing
    #     `CUSTOM_OIDC` type, use the `CustomFederationProviderUrl` parameter
    #     to provide the custom OIDC provider URL.
    #
    # @option params [String] :custom_federation_provider_url
    #   The URL of the custom OpenID Connect (OIDC) provider that provides
    #   identity to let a user federate into QuickSight with an associated
    #   Identity and Access Management(IAM) role. This parameter should only
    #   be used when `ExternalLoginFederationProviderType` parameter is set to
    #   `CUSTOM_OIDC`.
    #
    # @option params [String] :external_login_id
    #   The identity ID for a user in the external login provider.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tags to associate with the user.
    #
    # @return [Types::RegisterUserResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RegisterUserResponse#user #user} => Types::User
    #   * {Types::RegisterUserResponse#user_invitation_url #user_invitation_url} => String
    #   * {Types::RegisterUserResponse#request_id #request_id} => String
    #   * {Types::RegisterUserResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_user({
    #     identity_type: "IAM", # required, accepts IAM, QUICKSIGHT, IAM_IDENTITY_CENTER
    #     email: "String", # required
    #     user_role: "ADMIN", # required, accepts ADMIN, AUTHOR, READER, RESTRICTED_AUTHOR, RESTRICTED_READER, ADMIN_PRO, AUTHOR_PRO, READER_PRO
    #     iam_arn: "String",
    #     session_name: "RoleSessionName",
    #     aws_account_id: "AwsAccountId", # required
    #     namespace: "Namespace", # required
    #     user_name: "UserName",
    #     custom_permissions_name: "RoleName",
    #     external_login_federation_provider_type: "String",
    #     custom_federation_provider_url: "String",
    #     external_login_id: "String",
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
    #   resp.user.arn #=> String
    #   resp.user.user_name #=> String
    #   resp.user.email #=> String
    #   resp.user.role #=> String, one of "ADMIN", "AUTHOR", "READER", "RESTRICTED_AUTHOR", "RESTRICTED_READER", "ADMIN_PRO", "AUTHOR_PRO", "READER_PRO"
    #   resp.user.identity_type #=> String, one of "IAM", "QUICKSIGHT", "IAM_IDENTITY_CENTER"
    #   resp.user.active #=> Boolean
    #   resp.user.principal_id #=> String
    #   resp.user.custom_permissions_name #=> String
    #   resp.user.external_login_federation_provider_type #=> String
    #   resp.user.external_login_federation_provider_url #=> String
    #   resp.user.external_login_id #=> String
    #   resp.user_invitation_url #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/RegisterUser AWS API Documentation
    #
    # @overload register_user(params = {})
    # @param [Hash] params ({})
    def register_user(params = {}, options = {})
      req = build_request(:register_user, params)
      req.send_request(options)
    end

    # Restores an analysis.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that contains the analysis.
    #
    # @option params [required, String] :analysis_id
    #   The ID of the analysis that you're restoring.
    #
    # @option params [Boolean] :restore_to_folders
    #   A boolean value that determines if the analysis will be restored to
    #   folders that it previously resided in. A `True` value restores
    #   analysis back to all folders that it previously resided in. A `False`
    #   value restores the analysis but does not restore the analysis back to
    #   all previously resided folders. Restoring a restricted analysis
    #   requires this parameter to be set to `True`.
    #
    # @return [Types::RestoreAnalysisResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RestoreAnalysisResponse#status #status} => Integer
    #   * {Types::RestoreAnalysisResponse#arn #arn} => String
    #   * {Types::RestoreAnalysisResponse#analysis_id #analysis_id} => String
    #   * {Types::RestoreAnalysisResponse#request_id #request_id} => String
    #   * {Types::RestoreAnalysisResponse#restoration_failed_folder_arns #restoration_failed_folder_arns} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.restore_analysis({
    #     aws_account_id: "AwsAccountId", # required
    #     analysis_id: "ShortRestrictiveResourceId", # required
    #     restore_to_folders: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> Integer
    #   resp.arn #=> String
    #   resp.analysis_id #=> String
    #   resp.request_id #=> String
    #   resp.restoration_failed_folder_arns #=> Array
    #   resp.restoration_failed_folder_arns[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/RestoreAnalysis AWS API Documentation
    #
    # @overload restore_analysis(params = {})
    # @param [Hash] params ({})
    def restore_analysis(params = {}, options = {})
      req = build_request(:restore_analysis, params)
      req.send_request(options)
    end

    # Searches for analyses that belong to the user specified in the filter.
    #
    # <note markdown="1"> This operation is eventually consistent. The results are best effort
    # and may not reflect very recent updates and changes.
    #
    #  </note>
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that contains the analyses
    #   that you're searching for.
    #
    # @option params [required, Array<Types::AnalysisSearchFilter>] :filters
    #   The structure for the search filters that you want to apply to your
    #   search.
    #
    # @option params [String] :next_token
    #   A pagination token that can be used in a subsequent request.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return.
    #
    # @return [Types::SearchAnalysesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchAnalysesResponse#analysis_summary_list #analysis_summary_list} => Array&lt;Types::AnalysisSummary&gt;
    #   * {Types::SearchAnalysesResponse#next_token #next_token} => String
    #   * {Types::SearchAnalysesResponse#status #status} => Integer
    #   * {Types::SearchAnalysesResponse#request_id #request_id} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_analyses({
    #     aws_account_id: "AwsAccountId", # required
    #     filters: [ # required
    #       {
    #         operator: "StringEquals", # accepts StringEquals, StringLike
    #         name: "QUICKSIGHT_USER", # accepts QUICKSIGHT_USER, QUICKSIGHT_VIEWER_OR_OWNER, DIRECT_QUICKSIGHT_VIEWER_OR_OWNER, QUICKSIGHT_OWNER, DIRECT_QUICKSIGHT_OWNER, DIRECT_QUICKSIGHT_SOLE_OWNER, ANALYSIS_NAME
    #         value: "String",
    #       },
    #     ],
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.analysis_summary_list #=> Array
    #   resp.analysis_summary_list[0].arn #=> String
    #   resp.analysis_summary_list[0].analysis_id #=> String
    #   resp.analysis_summary_list[0].name #=> String
    #   resp.analysis_summary_list[0].status #=> String, one of "CREATION_IN_PROGRESS", "CREATION_SUCCESSFUL", "CREATION_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_SUCCESSFUL", "UPDATE_FAILED", "DELETED"
    #   resp.analysis_summary_list[0].created_time #=> Time
    #   resp.analysis_summary_list[0].last_updated_time #=> Time
    #   resp.next_token #=> String
    #   resp.status #=> Integer
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/SearchAnalyses AWS API Documentation
    #
    # @overload search_analyses(params = {})
    # @param [Hash] params ({})
    def search_analyses(params = {}, options = {})
      req = build_request(:search_analyses, params)
      req.send_request(options)
    end

    # Searches for dashboards that belong to a user.
    #
    # <note markdown="1"> This operation is eventually consistent. The results are best effort
    # and may not reflect very recent updates and changes.
    #
    #  </note>
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that contains the user whose
    #   dashboards you're searching for.
    #
    # @option params [required, Array<Types::DashboardSearchFilter>] :filters
    #   The filters to apply to the search. Currently, you can search only by
    #   user name, for example, `"Filters": [ { "Name": "QUICKSIGHT_USER",
    #   "Operator": "StringEquals", "Value":
    #   "arn:aws:quicksight:us-east-1:1:user/default/UserName1" } ]`
    #
    # @option params [String] :next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned per request.
    #
    # @return [Types::SearchDashboardsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchDashboardsResponse#dashboard_summary_list #dashboard_summary_list} => Array&lt;Types::DashboardSummary&gt;
    #   * {Types::SearchDashboardsResponse#next_token #next_token} => String
    #   * {Types::SearchDashboardsResponse#status #status} => Integer
    #   * {Types::SearchDashboardsResponse#request_id #request_id} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_dashboards({
    #     aws_account_id: "AwsAccountId", # required
    #     filters: [ # required
    #       {
    #         operator: "StringEquals", # required, accepts StringEquals, StringLike
    #         name: "QUICKSIGHT_USER", # accepts QUICKSIGHT_USER, QUICKSIGHT_VIEWER_OR_OWNER, DIRECT_QUICKSIGHT_VIEWER_OR_OWNER, QUICKSIGHT_OWNER, DIRECT_QUICKSIGHT_OWNER, DIRECT_QUICKSIGHT_SOLE_OWNER, DASHBOARD_NAME
    #         value: "String",
    #       },
    #     ],
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.dashboard_summary_list #=> Array
    #   resp.dashboard_summary_list[0].arn #=> String
    #   resp.dashboard_summary_list[0].dashboard_id #=> String
    #   resp.dashboard_summary_list[0].name #=> String
    #   resp.dashboard_summary_list[0].created_time #=> Time
    #   resp.dashboard_summary_list[0].last_updated_time #=> Time
    #   resp.dashboard_summary_list[0].published_version_number #=> Integer
    #   resp.dashboard_summary_list[0].last_published_time #=> Time
    #   resp.next_token #=> String
    #   resp.status #=> Integer
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/SearchDashboards AWS API Documentation
    #
    # @overload search_dashboards(params = {})
    # @param [Hash] params ({})
    def search_dashboards(params = {}, options = {})
      req = build_request(:search_dashboards, params)
      req.send_request(options)
    end

    # Use the `SearchDataSets` operation to search for datasets that belong
    # to an account.
    #
    # @option params [required, String] :aws_account_id
    #   The Amazon Web Services account ID.
    #
    # @option params [required, Array<Types::DataSetSearchFilter>] :filters
    #   The filters to apply to the search.
    #
    # @option params [String] :next_token
    #   A pagination token that can be used in a subsequent request.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned per request.
    #
    # @return [Types::SearchDataSetsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchDataSetsResponse#data_set_summaries #data_set_summaries} => Array&lt;Types::DataSetSummary&gt;
    #   * {Types::SearchDataSetsResponse#next_token #next_token} => String
    #   * {Types::SearchDataSetsResponse#status #status} => Integer
    #   * {Types::SearchDataSetsResponse#request_id #request_id} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_data_sets({
    #     aws_account_id: "AwsAccountId", # required
    #     filters: [ # required
    #       {
    #         operator: "StringEquals", # required, accepts StringEquals, StringLike
    #         name: "QUICKSIGHT_VIEWER_OR_OWNER", # required, accepts QUICKSIGHT_VIEWER_OR_OWNER, QUICKSIGHT_OWNER, DIRECT_QUICKSIGHT_VIEWER_OR_OWNER, DIRECT_QUICKSIGHT_OWNER, DIRECT_QUICKSIGHT_SOLE_OWNER, DATASET_NAME
    #         value: "String", # required
    #       },
    #     ],
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.data_set_summaries #=> Array
    #   resp.data_set_summaries[0].arn #=> String
    #   resp.data_set_summaries[0].data_set_id #=> String
    #   resp.data_set_summaries[0].name #=> String
    #   resp.data_set_summaries[0].created_time #=> Time
    #   resp.data_set_summaries[0].last_updated_time #=> Time
    #   resp.data_set_summaries[0].import_mode #=> String, one of "SPICE", "DIRECT_QUERY"
    #   resp.data_set_summaries[0].row_level_permission_data_set.namespace #=> String
    #   resp.data_set_summaries[0].row_level_permission_data_set.arn #=> String
    #   resp.data_set_summaries[0].row_level_permission_data_set.permission_policy #=> String, one of "GRANT_ACCESS", "DENY_ACCESS"
    #   resp.data_set_summaries[0].row_level_permission_data_set.format_version #=> String, one of "VERSION_1", "VERSION_2"
    #   resp.data_set_summaries[0].row_level_permission_data_set.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.data_set_summaries[0].row_level_permission_tag_configuration_applied #=> Boolean
    #   resp.data_set_summaries[0].column_level_permission_rules_applied #=> Boolean
    #   resp.data_set_summaries[0].use_as #=> String, one of "RLS_RULES"
    #   resp.next_token #=> String
    #   resp.status #=> Integer
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/SearchDataSets AWS API Documentation
    #
    # @overload search_data_sets(params = {})
    # @param [Hash] params ({})
    def search_data_sets(params = {}, options = {})
      req = build_request(:search_data_sets, params)
      req.send_request(options)
    end

    # Use the `SearchDataSources` operation to search for data sources that
    # belong to an account.
    #
    # @option params [required, String] :aws_account_id
    #   The Amazon Web Services account ID.
    #
    # @option params [required, Array<Types::DataSourceSearchFilter>] :filters
    #   The filters to apply to the search.
    #
    # @option params [String] :next_token
    #   A pagination token that can be used in a subsequent request.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned per request.
    #
    # @return [Types::SearchDataSourcesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchDataSourcesResponse#data_source_summaries #data_source_summaries} => Array&lt;Types::DataSourceSummary&gt;
    #   * {Types::SearchDataSourcesResponse#next_token #next_token} => String
    #   * {Types::SearchDataSourcesResponse#status #status} => Integer
    #   * {Types::SearchDataSourcesResponse#request_id #request_id} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_data_sources({
    #     aws_account_id: "AwsAccountId", # required
    #     filters: [ # required
    #       {
    #         operator: "StringEquals", # required, accepts StringEquals, StringLike
    #         name: "DIRECT_QUICKSIGHT_VIEWER_OR_OWNER", # required, accepts DIRECT_QUICKSIGHT_VIEWER_OR_OWNER, DIRECT_QUICKSIGHT_OWNER, DIRECT_QUICKSIGHT_SOLE_OWNER, DATASOURCE_NAME
    #         value: "String", # required
    #       },
    #     ],
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.data_source_summaries #=> Array
    #   resp.data_source_summaries[0].arn #=> String
    #   resp.data_source_summaries[0].data_source_id #=> String
    #   resp.data_source_summaries[0].name #=> String
    #   resp.data_source_summaries[0].type #=> String, one of "ADOBE_ANALYTICS", "AMAZON_ELASTICSEARCH", "ATHENA", "AURORA", "AURORA_POSTGRESQL", "AWS_IOT_ANALYTICS", "GITHUB", "JIRA", "MARIADB", "MYSQL", "ORACLE", "POSTGRESQL", "PRESTO", "REDSHIFT", "S3", "SALESFORCE", "SERVICENOW", "SNOWFLAKE", "SPARK", "SQLSERVER", "TERADATA", "TWITTER", "TIMESTREAM", "AMAZON_OPENSEARCH", "EXASOL", "DATABRICKS", "STARBURST", "TRINO", "BIGQUERY", "GOOGLESHEETS"
    #   resp.data_source_summaries[0].created_time #=> Time
    #   resp.data_source_summaries[0].last_updated_time #=> Time
    #   resp.next_token #=> String
    #   resp.status #=> Integer
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/SearchDataSources AWS API Documentation
    #
    # @overload search_data_sources(params = {})
    # @param [Hash] params ({})
    def search_data_sources(params = {}, options = {})
      req = build_request(:search_data_sources, params)
      req.send_request(options)
    end

    # Searches the subfolders in a folder.
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the Amazon Web Services account that contains the folder.
    #
    # @option params [required, Array<Types::FolderSearchFilter>] :filters
    #   The filters to apply to the search. Currently, you can search only by
    #   the parent folder ARN. For example, `"Filters": [ { "Name":
    #   "PARENT_FOLDER_ARN", "Operator": "StringEquals", "Value":
    #   "arn:aws:quicksight:us-east-1:1:folder/folderId" } ]`.
    #
    # @option params [String] :next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned per request.
    #
    # @return [Types::SearchFoldersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchFoldersResponse#status #status} => Integer
    #   * {Types::SearchFoldersResponse#folder_summary_list #folder_summary_list} => Array&lt;Types::FolderSummary&gt;
    #   * {Types::SearchFoldersResponse#next_token #next_token} => String
    #   * {Types::SearchFoldersResponse#request_id #request_id} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_folders({
    #     aws_account_id: "AwsAccountId", # required
    #     filters: [ # required
    #       {
    #         operator: "StringEquals", # accepts StringEquals, StringLike
    #         name: "PARENT_FOLDER_ARN", # accepts PARENT_FOLDER_ARN, DIRECT_QUICKSIGHT_OWNER, DIRECT_QUICKSIGHT_SOLE_OWNER, DIRECT_QUICKSIGHT_VIEWER_OR_OWNER, QUICKSIGHT_OWNER, QUICKSIGHT_VIEWER_OR_OWNER, FOLDER_NAME
    #         value: "String",
    #       },
    #     ],
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> Integer
    #   resp.folder_summary_list #=> Array
    #   resp.folder_summary_list[0].arn #=> String
    #   resp.folder_summary_list[0].folder_id #=> String
    #   resp.folder_summary_list[0].name #=> String
    #   resp.folder_summary_list[0].folder_type #=> String, one of "SHARED", "RESTRICTED"
    #   resp.folder_summary_list[0].created_time #=> Time
    #   resp.folder_summary_list[0].last_updated_time #=> Time
    #   resp.folder_summary_list[0].sharing_model #=> String, one of "ACCOUNT", "NAMESPACE"
    #   resp.next_token #=> String
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/SearchFolders AWS API Documentation
    #
    # @overload search_folders(params = {})
    # @param [Hash] params ({})
    def search_folders(params = {}, options = {})
      req = build_request(:search_folders, params)
      req.send_request(options)
    end

    # Use the `SearchGroups` operation to search groups in a specified
    # QuickSight namespace using the supplied filters.
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the Amazon Web Services account that the group is in.
    #   Currently, you use the ID for the Amazon Web Services account that
    #   contains your Amazon QuickSight account.
    #
    # @option params [String] :next_token
    #   A pagination token that can be used in a subsequent request.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return from this request.
    #
    # @option params [required, String] :namespace
    #   The namespace that you want to search.
    #
    # @option params [required, Array<Types::GroupSearchFilter>] :filters
    #   The structure for the search filters that you want to apply to your
    #   search.
    #
    # @return [Types::SearchGroupsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchGroupsResponse#group_list #group_list} => Array&lt;Types::Group&gt;
    #   * {Types::SearchGroupsResponse#next_token #next_token} => String
    #   * {Types::SearchGroupsResponse#request_id #request_id} => String
    #   * {Types::SearchGroupsResponse#status #status} => Integer
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_groups({
    #     aws_account_id: "AwsAccountId", # required
    #     next_token: "String",
    #     max_results: 1,
    #     namespace: "Namespace", # required
    #     filters: [ # required
    #       {
    #         operator: "StartsWith", # required, accepts StartsWith
    #         name: "GROUP_NAME", # required, accepts GROUP_NAME
    #         value: "String", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.group_list #=> Array
    #   resp.group_list[0].arn #=> String
    #   resp.group_list[0].group_name #=> String
    #   resp.group_list[0].description #=> String
    #   resp.group_list[0].principal_id #=> String
    #   resp.next_token #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/SearchGroups AWS API Documentation
    #
    # @overload search_groups(params = {})
    # @param [Hash] params ({})
    def search_groups(params = {}, options = {})
      req = build_request(:search_groups, params)
      req.send_request(options)
    end

    # Searches for any Q topic that exists in an QuickSight account.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that contains the topic that
    #   you want to find.
    #
    # @option params [required, Array<Types::TopicSearchFilter>] :filters
    #   The filters that you want to use to search for the topic.
    #
    # @option params [String] :next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned per request.
    #
    # @return [Types::SearchTopicsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchTopicsResponse#topic_summary_list #topic_summary_list} => Array&lt;Types::TopicSummary&gt;
    #   * {Types::SearchTopicsResponse#next_token #next_token} => String
    #   * {Types::SearchTopicsResponse#status #status} => Integer
    #   * {Types::SearchTopicsResponse#request_id #request_id} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_topics({
    #     aws_account_id: "AwsAccountId", # required
    #     filters: [ # required
    #       {
    #         operator: "StringEquals", # required, accepts StringEquals, StringLike
    #         name: "QUICKSIGHT_USER", # required, accepts QUICKSIGHT_USER, QUICKSIGHT_VIEWER_OR_OWNER, DIRECT_QUICKSIGHT_VIEWER_OR_OWNER, QUICKSIGHT_OWNER, DIRECT_QUICKSIGHT_OWNER, DIRECT_QUICKSIGHT_SOLE_OWNER, TOPIC_NAME
    #         value: "String", # required
    #       },
    #     ],
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.topic_summary_list #=> Array
    #   resp.topic_summary_list[0].arn #=> String
    #   resp.topic_summary_list[0].topic_id #=> String
    #   resp.topic_summary_list[0].name #=> String
    #   resp.topic_summary_list[0].user_experience_version #=> String, one of "LEGACY", "NEW_READER_EXPERIENCE"
    #   resp.next_token #=> String
    #   resp.status #=> Integer
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/SearchTopics AWS API Documentation
    #
    # @overload search_topics(params = {})
    # @param [Hash] params ({})
    def search_topics(params = {}, options = {})
      req = build_request(:search_topics, params)
      req.send_request(options)
    end

    # Starts an Asset Bundle export job.
    #
    # An Asset Bundle export job exports specified QuickSight assets. You
    # can also choose to export any asset dependencies in the same job.
    # Export jobs run asynchronously and can be polled with a
    # `DescribeAssetBundleExportJob` API call. When a job is successfully
    # completed, a download URL that contains the exported assets is
    # returned. The URL is valid for 5 minutes and can be refreshed with a
    # `DescribeAssetBundleExportJob` API call. Each QuickSight account can
    # run up to 5 export jobs concurrently.
    #
    # The API caller must have the necessary permissions in their IAM role
    # to access each resource before the resources can be exported.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account to export assets from.
    #
    # @option params [required, String] :asset_bundle_export_job_id
    #   The ID of the job. This ID is unique while the job is running. After
    #   the job is completed, you can reuse this ID for another job.
    #
    # @option params [required, Array<String>] :resource_arns
    #   An array of resource ARNs to export. The following resources are
    #   supported.
    #
    #   * `Analysis`
    #
    #   * `Dashboard`
    #
    #   * `DataSet`
    #
    #   * `DataSource`
    #
    #   * `RefreshSchedule`
    #
    #   * `Theme`
    #
    #   * `VPCConnection`
    #
    #   The API caller must have the necessary permissions in their IAM role
    #   to access each resource before the resources can be exported.
    #
    # @option params [Boolean] :include_all_dependencies
    #   A Boolean that determines whether all dependencies of each resource
    #   ARN are recursively exported with the job. For example, say you
    #   provided a Dashboard ARN to the `ResourceArns` parameter. If you set
    #   `IncludeAllDependencies` to `TRUE`, any theme, dataset, and data
    #   source resource that is a dependency of the dashboard is also
    #   exported.
    #
    # @option params [required, String] :export_format
    #   The export data format.
    #
    # @option params [Types::AssetBundleCloudFormationOverridePropertyConfiguration] :cloud_formation_override_property_configuration
    #   An optional collection of structures that generate CloudFormation
    #   parameters to override the existing resource property values when the
    #   resource is exported to a new CloudFormation template.
    #
    #   Use this field if the `ExportFormat` field of a
    #   `StartAssetBundleExportJobRequest` API call is set to
    #   `CLOUDFORMATION_JSON`.
    #
    # @option params [Boolean] :include_permissions
    #   A Boolean that determines whether all permissions for each resource
    #   ARN are exported with the job. If you set `IncludePermissions` to
    #   `TRUE`, any permissions associated with each resource are exported.
    #
    # @option params [Boolean] :include_tags
    #   A Boolean that determines whether all tags for each resource ARN are
    #   exported with the job. If you set `IncludeTags` to `TRUE`, any tags
    #   associated with each resource are exported.
    #
    # @option params [Types::AssetBundleExportJobValidationStrategy] :validation_strategy
    #   An optional parameter that determines which validation strategy to use
    #   for the export job. If `StrictModeForAllResources` is set to `TRUE`,
    #   strict validation for every error is enforced. If it is set to
    #   `FALSE`, validation is skipped for specific UI errors that are shown
    #   as warnings. The default value for `StrictModeForAllResources` is
    #   `FALSE`.
    #
    # @option params [Boolean] :include_folder_memberships
    #   A Boolean that determines if the exported asset carries over
    #   information about the folders that the asset is a member of.
    #
    # @option params [String] :include_folder_members
    #   A setting that indicates whether you want to include folder assets.
    #   You can also use this setting to recusrsively include all subfolders
    #   of an exported folder.
    #
    # @return [Types::StartAssetBundleExportJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartAssetBundleExportJobResponse#arn #arn} => String
    #   * {Types::StartAssetBundleExportJobResponse#asset_bundle_export_job_id #asset_bundle_export_job_id} => String
    #   * {Types::StartAssetBundleExportJobResponse#request_id #request_id} => String
    #   * {Types::StartAssetBundleExportJobResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_asset_bundle_export_job({
    #     aws_account_id: "AwsAccountId", # required
    #     asset_bundle_export_job_id: "ShortRestrictiveResourceId", # required
    #     resource_arns: ["Arn"], # required
    #     include_all_dependencies: false,
    #     export_format: "CLOUDFORMATION_JSON", # required, accepts CLOUDFORMATION_JSON, QUICKSIGHT_JSON
    #     cloud_formation_override_property_configuration: {
    #       resource_id_override_configuration: {
    #         prefix_for_all_resources: false,
    #       },
    #       vpc_connections: [
    #         {
    #           arn: "Arn", # required
    #           properties: ["Name"], # required, accepts Name, DnsResolvers, RoleArn
    #         },
    #       ],
    #       refresh_schedules: [
    #         {
    #           arn: "Arn", # required
    #           properties: ["StartAfterDateTime"], # required, accepts StartAfterDateTime
    #         },
    #       ],
    #       data_sources: [
    #         {
    #           arn: "Arn", # required
    #           properties: ["Name"], # required, accepts Name, DisableSsl, SecretArn, Username, Password, Domain, WorkGroup, Host, Port, Database, DataSetName, Catalog, InstanceId, ClusterId, ManifestFileLocation, Warehouse, RoleArn, ProductType
    #         },
    #       ],
    #       data_sets: [
    #         {
    #           arn: "Arn", # required
    #           properties: ["Name"], # required, accepts Name, RefreshFailureEmailAlertStatus
    #         },
    #       ],
    #       themes: [
    #         {
    #           arn: "Arn", # required
    #           properties: ["Name"], # required, accepts Name
    #         },
    #       ],
    #       analyses: [
    #         {
    #           arn: "Arn", # required
    #           properties: ["Name"], # required, accepts Name
    #         },
    #       ],
    #       dashboards: [
    #         {
    #           arn: "Arn", # required
    #           properties: ["Name"], # required, accepts Name
    #         },
    #       ],
    #       folders: [
    #         {
    #           arn: "Arn", # required
    #           properties: ["Name"], # required, accepts Name, ParentFolderArn
    #         },
    #       ],
    #     },
    #     include_permissions: false,
    #     include_tags: false,
    #     validation_strategy: {
    #       strict_mode_for_all_resources: false,
    #     },
    #     include_folder_memberships: false,
    #     include_folder_members: "RECURSE", # accepts RECURSE, ONE_LEVEL, NONE
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.asset_bundle_export_job_id #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/StartAssetBundleExportJob AWS API Documentation
    #
    # @overload start_asset_bundle_export_job(params = {})
    # @param [Hash] params ({})
    def start_asset_bundle_export_job(params = {}, options = {})
      req = build_request(:start_asset_bundle_export_job, params)
      req.send_request(options)
    end

    # Starts an Asset Bundle import job.
    #
    # An Asset Bundle import job imports specified QuickSight assets into an
    # QuickSight account. You can also choose to import a naming prefix and
    # specified configuration overrides. The assets that are contained in
    # the bundle file that you provide are used to create or update a new or
    # existing asset in your QuickSight account. Each QuickSight account can
    # run up to 5 import jobs concurrently.
    #
    # The API caller must have the necessary `"create"`, `"describe"`, and
    # `"update"` permissions in their IAM role to access each resource type
    # that is contained in the bundle file before the resources can be
    # imported.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account to import assets into.
    #
    # @option params [required, String] :asset_bundle_import_job_id
    #   The ID of the job. This ID is unique while the job is running. After
    #   the job is completed, you can reuse this ID for another job.
    #
    # @option params [required, Types::AssetBundleImportSource] :asset_bundle_import_source
    #   The source of the asset bundle zip file that contains the data that
    #   you want to import. The file must be in `QUICKSIGHT_JSON` format.
    #
    # @option params [Types::AssetBundleImportJobOverrideParameters] :override_parameters
    #   Optional overrides that are applied to the resource configuration
    #   before import.
    #
    # @option params [String] :failure_action
    #   The failure action for the import job.
    #
    #   If you choose `ROLLBACK`, failed import jobs will attempt to undo any
    #   asset changes caused by the failed job.
    #
    #   If you choose `DO_NOTHING`, failed import jobs will not attempt to
    #   roll back any asset changes caused by the failed job, possibly keeping
    #   the QuickSight account in an inconsistent state.
    #
    # @option params [Types::AssetBundleImportJobOverridePermissions] :override_permissions
    #   Optional permission overrides that are applied to the resource
    #   configuration before import.
    #
    # @option params [Types::AssetBundleImportJobOverrideTags] :override_tags
    #   Optional tag overrides that are applied to the resource configuration
    #   before import.
    #
    # @option params [Types::AssetBundleImportJobOverrideValidationStrategy] :override_validation_strategy
    #   An optional validation strategy override for all analyses and
    #   dashboards that is applied to the resource configuration before
    #   import.
    #
    # @return [Types::StartAssetBundleImportJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartAssetBundleImportJobResponse#arn #arn} => String
    #   * {Types::StartAssetBundleImportJobResponse#asset_bundle_import_job_id #asset_bundle_import_job_id} => String
    #   * {Types::StartAssetBundleImportJobResponse#request_id #request_id} => String
    #   * {Types::StartAssetBundleImportJobResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_asset_bundle_import_job({
    #     aws_account_id: "AwsAccountId", # required
    #     asset_bundle_import_job_id: "ShortRestrictiveResourceId", # required
    #     asset_bundle_import_source: { # required
    #       body: "data",
    #       s3_uri: "S3Uri",
    #     },
    #     override_parameters: {
    #       resource_id_override_configuration: {
    #         prefix_for_all_resources: "String",
    #       },
    #       vpc_connections: [
    #         {
    #           vpc_connection_id: "VPCConnectionResourceIdUnrestricted", # required
    #           name: "ResourceName",
    #           subnet_ids: ["SubnetId"],
    #           security_group_ids: ["SecurityGroupId"],
    #           dns_resolvers: ["IPv4Address"],
    #           role_arn: "RoleArn",
    #         },
    #       ],
    #       refresh_schedules: [
    #         {
    #           data_set_id: "ResourceId", # required
    #           schedule_id: "String", # required
    #           start_after_date_time: Time.now,
    #         },
    #       ],
    #       data_sources: [
    #         {
    #           data_source_id: "ResourceId", # required
    #           name: "ResourceName",
    #           data_source_parameters: {
    #             amazon_elasticsearch_parameters: {
    #               domain: "Domain", # required
    #             },
    #             athena_parameters: {
    #               work_group: "WorkGroup",
    #               role_arn: "RoleArn",
    #               identity_center_configuration: {
    #                 enable_identity_propagation: false,
    #               },
    #             },
    #             aurora_parameters: {
    #               host: "Host", # required
    #               port: 1, # required
    #               database: "Database", # required
    #             },
    #             aurora_postgre_sql_parameters: {
    #               host: "Host", # required
    #               port: 1, # required
    #               database: "Database", # required
    #             },
    #             aws_iot_analytics_parameters: {
    #               data_set_name: "DataSetName", # required
    #             },
    #             jira_parameters: {
    #               site_base_url: "SiteBaseUrl", # required
    #             },
    #             maria_db_parameters: {
    #               host: "Host", # required
    #               port: 1, # required
    #               database: "Database", # required
    #             },
    #             my_sql_parameters: {
    #               host: "Host", # required
    #               port: 1, # required
    #               database: "Database", # required
    #             },
    #             oracle_parameters: {
    #               host: "Host", # required
    #               port: 1, # required
    #               database: "Database", # required
    #               use_service_name: false,
    #             },
    #             postgre_sql_parameters: {
    #               host: "Host", # required
    #               port: 1, # required
    #               database: "Database", # required
    #             },
    #             presto_parameters: {
    #               host: "Host", # required
    #               port: 1, # required
    #               catalog: "Catalog", # required
    #             },
    #             rds_parameters: {
    #               instance_id: "InstanceId", # required
    #               database: "Database", # required
    #             },
    #             redshift_parameters: {
    #               host: "Host",
    #               port: 1,
    #               database: "Database", # required
    #               cluster_id: "ClusterId",
    #               iam_parameters: {
    #                 role_arn: "RoleArn", # required
    #                 database_user: "DatabaseUser",
    #                 database_groups: ["DatabaseGroup"],
    #                 auto_create_database_user: false,
    #               },
    #               identity_center_configuration: {
    #                 enable_identity_propagation: false,
    #               },
    #             },
    #             s3_parameters: {
    #               manifest_file_location: { # required
    #                 bucket: "S3Bucket", # required
    #                 key: "S3Key", # required
    #               },
    #               role_arn: "RoleArn",
    #             },
    #             service_now_parameters: {
    #               site_base_url: "SiteBaseUrl", # required
    #             },
    #             snowflake_parameters: {
    #               host: "Host", # required
    #               database: "Database", # required
    #               warehouse: "Warehouse", # required
    #               authentication_type: "PASSWORD", # accepts PASSWORD, TOKEN, X509
    #               database_access_control_role: "DatabaseAccessControlRole",
    #               o_auth_parameters: {
    #                 token_provider_url: "TokenProviderUrl", # required
    #                 o_auth_scope: "OAuthScope",
    #                 identity_provider_vpc_connection_properties: {
    #                   vpc_connection_arn: "Arn", # required
    #                 },
    #                 identity_provider_resource_uri: "IdentityProviderResourceUri",
    #               },
    #             },
    #             spark_parameters: {
    #               host: "Host", # required
    #               port: 1, # required
    #             },
    #             sql_server_parameters: {
    #               host: "Host", # required
    #               port: 1, # required
    #               database: "Database", # required
    #             },
    #             teradata_parameters: {
    #               host: "Host", # required
    #               port: 1, # required
    #               database: "Database", # required
    #             },
    #             twitter_parameters: {
    #               query: "Query", # required
    #               max_rows: 1, # required
    #             },
    #             amazon_open_search_parameters: {
    #               domain: "Domain", # required
    #             },
    #             exasol_parameters: {
    #               host: "Host", # required
    #               port: 1, # required
    #             },
    #             databricks_parameters: {
    #               host: "Host", # required
    #               port: 1, # required
    #               sql_endpoint_path: "SqlEndpointPath", # required
    #             },
    #             starburst_parameters: {
    #               host: "Host", # required
    #               port: 1, # required
    #               catalog: "Catalog", # required
    #               product_type: "GALAXY", # accepts GALAXY, ENTERPRISE
    #               database_access_control_role: "DatabaseAccessControlRole",
    #               authentication_type: "PASSWORD", # accepts PASSWORD, TOKEN, X509
    #               o_auth_parameters: {
    #                 token_provider_url: "TokenProviderUrl", # required
    #                 o_auth_scope: "OAuthScope",
    #                 identity_provider_vpc_connection_properties: {
    #                   vpc_connection_arn: "Arn", # required
    #                 },
    #                 identity_provider_resource_uri: "IdentityProviderResourceUri",
    #               },
    #             },
    #             trino_parameters: {
    #               host: "Host", # required
    #               port: 1, # required
    #               catalog: "Catalog", # required
    #             },
    #             big_query_parameters: {
    #               project_id: "ProjectId", # required
    #               data_set_region: "DataSetRegion",
    #             },
    #             impala_parameters: {
    #               host: "Host", # required
    #               port: 1, # required
    #               database: "Database",
    #               sql_endpoint_path: "SqlEndpointPath", # required
    #             },
    #             custom_connection_parameters: {
    #               connection_type: "String",
    #             },
    #           },
    #           vpc_connection_properties: {
    #             vpc_connection_arn: "Arn", # required
    #           },
    #           ssl_properties: {
    #             disable_ssl: false,
    #           },
    #           credentials: {
    #             credential_pair: {
    #               username: "DbUsername", # required
    #               password: "Password", # required
    #             },
    #             secret_arn: "SecretArn",
    #           },
    #         },
    #       ],
    #       data_sets: [
    #         {
    #           data_set_id: "ResourceId", # required
    #           name: "ResourceName",
    #           data_set_refresh_properties: {
    #             refresh_configuration: {
    #               incremental_refresh: { # required
    #                 lookback_window: { # required
    #                   column_name: "String", # required
    #                   size: 1, # required
    #                   size_unit: "HOUR", # required, accepts HOUR, DAY, WEEK
    #                 },
    #               },
    #             },
    #             failure_configuration: {
    #               email_alert: {
    #                 alert_status: "ENABLED", # accepts ENABLED, DISABLED
    #               },
    #             },
    #           },
    #         },
    #       ],
    #       themes: [
    #         {
    #           theme_id: "ResourceId", # required
    #           name: "ResourceName",
    #         },
    #       ],
    #       analyses: [
    #         {
    #           analysis_id: "ResourceId", # required
    #           name: "ResourceName",
    #         },
    #       ],
    #       dashboards: [
    #         {
    #           dashboard_id: "ResourceId", # required
    #           name: "ResourceName",
    #         },
    #       ],
    #       folders: [
    #         {
    #           folder_id: "ResourceId", # required
    #           name: "ResourceName",
    #           parent_folder_arn: "Arn",
    #         },
    #       ],
    #     },
    #     failure_action: "DO_NOTHING", # accepts DO_NOTHING, ROLLBACK
    #     override_permissions: {
    #       data_sources: [
    #         {
    #           data_source_ids: ["AssetBundleRestrictiveResourceId"], # required
    #           permissions: { # required
    #             principals: ["Principal"], # required
    #             actions: ["String"], # required
    #           },
    #         },
    #       ],
    #       data_sets: [
    #         {
    #           data_set_ids: ["AssetBundleRestrictiveResourceId"], # required
    #           permissions: { # required
    #             principals: ["Principal"], # required
    #             actions: ["String"], # required
    #           },
    #         },
    #       ],
    #       themes: [
    #         {
    #           theme_ids: ["AssetBundleRestrictiveResourceId"], # required
    #           permissions: { # required
    #             principals: ["Principal"], # required
    #             actions: ["String"], # required
    #           },
    #         },
    #       ],
    #       analyses: [
    #         {
    #           analysis_ids: ["AssetBundleRestrictiveResourceId"], # required
    #           permissions: { # required
    #             principals: ["Principal"], # required
    #             actions: ["String"], # required
    #           },
    #         },
    #       ],
    #       dashboards: [
    #         {
    #           dashboard_ids: ["AssetBundleRestrictiveResourceId"], # required
    #           permissions: {
    #             principals: ["Principal"], # required
    #             actions: ["String"], # required
    #           },
    #           link_sharing_configuration: {
    #             permissions: {
    #               principals: ["Principal"], # required
    #               actions: ["String"], # required
    #             },
    #           },
    #         },
    #       ],
    #       folders: [
    #         {
    #           folder_ids: ["AssetBundleRestrictiveResourceId"], # required
    #           permissions: {
    #             principals: ["Principal"], # required
    #             actions: ["String"], # required
    #           },
    #         },
    #       ],
    #     },
    #     override_tags: {
    #       vpc_connections: [
    #         {
    #           vpc_connection_ids: ["AssetBundleRestrictiveResourceId"], # required
    #           tags: [ # required
    #             {
    #               key: "TagKey", # required
    #               value: "TagValue", # required
    #             },
    #           ],
    #         },
    #       ],
    #       data_sources: [
    #         {
    #           data_source_ids: ["AssetBundleRestrictiveResourceId"], # required
    #           tags: [ # required
    #             {
    #               key: "TagKey", # required
    #               value: "TagValue", # required
    #             },
    #           ],
    #         },
    #       ],
    #       data_sets: [
    #         {
    #           data_set_ids: ["AssetBundleRestrictiveResourceId"], # required
    #           tags: [ # required
    #             {
    #               key: "TagKey", # required
    #               value: "TagValue", # required
    #             },
    #           ],
    #         },
    #       ],
    #       themes: [
    #         {
    #           theme_ids: ["AssetBundleRestrictiveResourceId"], # required
    #           tags: [ # required
    #             {
    #               key: "TagKey", # required
    #               value: "TagValue", # required
    #             },
    #           ],
    #         },
    #       ],
    #       analyses: [
    #         {
    #           analysis_ids: ["AssetBundleRestrictiveResourceId"], # required
    #           tags: [ # required
    #             {
    #               key: "TagKey", # required
    #               value: "TagValue", # required
    #             },
    #           ],
    #         },
    #       ],
    #       dashboards: [
    #         {
    #           dashboard_ids: ["AssetBundleRestrictiveResourceId"], # required
    #           tags: [ # required
    #             {
    #               key: "TagKey", # required
    #               value: "TagValue", # required
    #             },
    #           ],
    #         },
    #       ],
    #       folders: [
    #         {
    #           folder_ids: ["AssetBundleRestrictiveResourceId"], # required
    #           tags: [ # required
    #             {
    #               key: "TagKey", # required
    #               value: "TagValue", # required
    #             },
    #           ],
    #         },
    #       ],
    #     },
    #     override_validation_strategy: {
    #       strict_mode_for_all_resources: false,
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.asset_bundle_import_job_id #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/StartAssetBundleImportJob AWS API Documentation
    #
    # @overload start_asset_bundle_import_job(params = {})
    # @param [Hash] params ({})
    def start_asset_bundle_import_job(params = {}, options = {})
      req = build_request(:start_asset_bundle_import_job, params)
      req.send_request(options)
    end

    # Starts an asynchronous job that generates a snapshot of a dashboard's
    # output. You can request one or several of the following format
    # configurations in each API call.
    #
    # * 1 Paginated PDF
    #
    # * 1 Excel workbook that includes up to 5 table or pivot table visuals
    #
    # * 5 CSVs from table or pivot table visuals
    #
    # The status of a submitted job can be polled with the
    # `DescribeDashboardSnapshotJob` API. When you call the
    # `DescribeDashboardSnapshotJob` API, check the `JobStatus` field in the
    # response. Once the job reaches a `COMPLETED` or `FAILED` status, use
    # the `DescribeDashboardSnapshotJobResult` API to obtain the URLs for
    # the generated files. If the job fails, the
    # `DescribeDashboardSnapshotJobResult` API returns detailed information
    # about the error that occurred.
    #
    # **StartDashboardSnapshotJob API throttling**
    #
    # QuickSight utilizes API throttling to create a more consistent user
    # experience within a time span for customers when they call the
    # `StartDashboardSnapshotJob`. By default, 12 jobs can run
    # simlutaneously in one Amazon Web Services account and users can submit
    # up 10 API requests per second before an account is throttled. If an
    # overwhelming number of API requests are made by the same user in a
    # short period of time, QuickSight throttles the API calls to maintin an
    # optimal experience and reliability for all QuickSight users.
    #
    # **Common throttling scenarios**
    #
    # The following list provides information about the most commin
    # throttling scenarios that can occur.
    #
    # * **A large number of `SnapshotExport` API jobs are running
    #   simultaneously on an Amazon Web Services account.** When a new
    #   `StartDashboardSnapshotJob` is created and there are already 12 jobs
    #   with the `RUNNING` status, the new job request fails and returns a
    #   `LimitExceededException` error. Wait for a current job to comlpete
    #   before you resubmit the new job.
    #
    # * **A large number of API requests are submitted on an Amazon Web
    #   Services account.** When a user makes more than 10 API calls to the
    #   QuickSight API in one second, a `ThrottlingException` is returned.
    #
    # If your use case requires a higher throttling limit, contact your
    # account admin or [Amazon Web ServicesSupport][1] to explore options to
    # tailor a more optimal expereince for your account.
    #
    # **Best practices to handle throttling**
    #
    # If your use case projects high levels of API traffic, try to reduce
    # the degree of frequency and parallelism of API calls as much as you
    # can to avoid throttling. You can also perform a timing test to
    # calculate an estimate for the total processing time of your projected
    # load that stays within the throttling limits of the QuickSight APIs.
    # For example, if your projected traffic is 100 snapshot jobs before
    # 12:00 PM per day, start 12 jobs in parallel and measure the amount of
    # time it takes to proccess all 12 jobs. Once you obtain the result,
    # multiply the duration by 9, for example `(12 minutes * 9 = 108
    # minutes)`. Use the new result to determine the latest time at which
    # the jobs need to be started to meet your target deadline.
    #
    # The time that it takes to process a job can be impacted by the
    # following factors:
    #
    # * The dataset type (Direct Query or SPICE).
    #
    # * The size of the dataset.
    #
    # * The complexity of the calculated fields that are used in the
    #   dashboard.
    #
    # * The number of visuals that are on a sheet.
    #
    # * The types of visuals that are on the sheet.
    #
    # * The number of formats and snapshots that are requested in the job
    #   configuration.
    #
    # * The size of the generated snapshots.
    #
    #
    #
    # [1]: http://aws.amazon.com/contact-us/
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that the dashboard snapshot
    #   job is executed in.
    #
    # @option params [required, String] :dashboard_id
    #   The ID of the dashboard that you want to start a snapshot job for.
    #
    # @option params [required, String] :snapshot_job_id
    #   An ID for the dashboard snapshot job. This ID is unique to the
    #   dashboard while the job is running. This ID can be used to poll the
    #   status of a job with a `DescribeDashboardSnapshotJob` while the job
    #   runs. You can reuse this ID for another job 24 hours after the current
    #   job is completed.
    #
    # @option params [required, Types::SnapshotUserConfiguration] :user_configuration
    #   A structure that contains information about the anonymous users that
    #   the generated snapshot is for. This API will not return information
    #   about registered QuickSight.
    #
    # @option params [required, Types::SnapshotConfiguration] :snapshot_configuration
    #   A structure that describes the configuration of the dashboard
    #   snapshot.
    #
    # @return [Types::StartDashboardSnapshotJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartDashboardSnapshotJobResponse#arn #arn} => String
    #   * {Types::StartDashboardSnapshotJobResponse#snapshot_job_id #snapshot_job_id} => String
    #   * {Types::StartDashboardSnapshotJobResponse#request_id #request_id} => String
    #   * {Types::StartDashboardSnapshotJobResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_dashboard_snapshot_job({
    #     aws_account_id: "AwsAccountId", # required
    #     dashboard_id: "ShortRestrictiveResourceId", # required
    #     snapshot_job_id: "ShortRestrictiveResourceId", # required
    #     user_configuration: { # required
    #       anonymous_users: [
    #         {
    #           row_level_permission_tags: [
    #             {
    #               key: "SessionTagKey", # required
    #               value: "SessionTagValue", # required
    #             },
    #           ],
    #         },
    #       ],
    #     },
    #     snapshot_configuration: { # required
    #       file_groups: [ # required
    #         {
    #           files: [
    #             {
    #               sheet_selections: [ # required
    #                 {
    #                   sheet_id: "ShortRestrictiveResourceId", # required
    #                   selection_scope: "ALL_VISUALS", # required, accepts ALL_VISUALS, SELECTED_VISUALS
    #                   visual_ids: ["ShortRestrictiveResourceId"],
    #                 },
    #               ],
    #               format_type: "CSV", # required, accepts CSV, PDF, EXCEL
    #             },
    #           ],
    #         },
    #       ],
    #       destination_configuration: {
    #         s3_destinations: [
    #           {
    #             bucket_configuration: { # required
    #               bucket_name: "NonEmptyString", # required
    #               bucket_prefix: "NonEmptyString", # required
    #               bucket_region: "NonEmptyString", # required
    #             },
    #           },
    #         ],
    #       },
    #       parameters: {
    #         string_parameters: [
    #           {
    #             name: "NonEmptyString", # required
    #             values: ["SensitiveString"], # required
    #           },
    #         ],
    #         integer_parameters: [
    #           {
    #             name: "NonEmptyString", # required
    #             values: [1], # required
    #           },
    #         ],
    #         decimal_parameters: [
    #           {
    #             name: "NonEmptyString", # required
    #             values: [1.0], # required
    #           },
    #         ],
    #         date_time_parameters: [
    #           {
    #             name: "NonEmptyString", # required
    #             values: [Time.now], # required
    #           },
    #         ],
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.snapshot_job_id #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/StartDashboardSnapshotJob AWS API Documentation
    #
    # @overload start_dashboard_snapshot_job(params = {})
    # @param [Hash] params ({})
    def start_dashboard_snapshot_job(params = {}, options = {})
      req = build_request(:start_dashboard_snapshot_job, params)
      req.send_request(options)
    end

    # Starts an asynchronous job that runs an existing dashboard schedule
    # and sends the dashboard snapshot through email.
    #
    # Only one job can run simultaneously in a given schedule. Repeated
    # requests are skipped with a `202` HTTP status code.
    #
    # For more information, see [Scheduling and sending QuickSight reports
    # by email][1] and [Configuring email report settings for a QuickSight
    # dashboard][2] in the *Amazon QuickSight User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/quicksight/latest/user/sending-reports.html
    # [2]: https://docs.aws.amazon.com/quicksight/latest/user/email-reports-from-dashboard.html
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that the dashboard snapshot
    #   job is executed in.
    #
    # @option params [required, String] :dashboard_id
    #   The ID of the dashboard that you want to start a snapshot job schedule
    #   for.
    #
    # @option params [required, String] :schedule_id
    #   The ID of the schedule that you want to start a snapshot job schedule
    #   for. The schedule ID can be found in the QuickSight console in the
    #   **Schedules** pane of the dashboard that the schedule is configured
    #   for.
    #
    # @return [Types::StartDashboardSnapshotJobScheduleResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartDashboardSnapshotJobScheduleResponse#request_id #request_id} => String
    #   * {Types::StartDashboardSnapshotJobScheduleResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_dashboard_snapshot_job_schedule({
    #     aws_account_id: "AwsAccountId", # required
    #     dashboard_id: "ShortRestrictiveResourceId", # required
    #     schedule_id: "ShortRestrictiveResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/StartDashboardSnapshotJobSchedule AWS API Documentation
    #
    # @overload start_dashboard_snapshot_job_schedule(params = {})
    # @param [Hash] params ({})
    def start_dashboard_snapshot_job_schedule(params = {}, options = {})
      req = build_request(:start_dashboard_snapshot_job_schedule, params)
      req.send_request(options)
    end

    # Assigns one or more tags (key-value pairs) to the specified QuickSight
    # resource.
    #
    # Tags can help you organize and categorize your resources. You can also
    # use them to scope user permissions, by granting a user permission to
    # access or change only resources with certain tag values. You can use
    # the `TagResource` operation with a resource that already has tags. If
    # you specify a new tag key for the resource, this tag is appended to
    # the list of tags associated with the resource. If you specify a tag
    # key that is already associated with the resource, the new tag value
    # that you specify replaces the previous value for that tag.
    #
    # You can associate as many as 50 tags with a resource. QuickSight
    # supports tagging on data set, data source, dashboard, template, topic,
    # and user.
    #
    # Tagging for QuickSight works in a similar way to tagging for other
    # Amazon Web Services services, except for the following:
    #
    # * Tags are used to track costs for users in QuickSight. You can't tag
    #   other resources that QuickSight costs are based on, such as storage
    #   capacoty (SPICE), session usage, alert consumption, or reporting
    #   units.
    #
    # * QuickSight doesn't currently support the tag editor for Resource
    #   Groups.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource that you want to tag.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   Contains a map of the key-value pairs for the resource tag or tags
    #   assigned to the resource.
    #
    # @return [Types::TagResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::TagResourceResponse#request_id #request_id} => String
    #   * {Types::TagResourceResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "Arn", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes a tag or tags from a resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource that you want to untag.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The keys of the key-value pairs for the resource tag or tags assigned
    #   to the resource.
    #
    # @return [Types::UntagResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UntagResourceResponse#request_id #request_id} => String
    #   * {Types::UntagResourceResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "Arn", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Applies a custom permissions profile to an account.
    #
    # @option params [required, String] :custom_permissions_name
    #   The name of the custom permissions profile that you want to apply to
    #   an account.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account for which you want to apply
    #   a custom permissions profile.
    #
    # @return [Types::UpdateAccountCustomPermissionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateAccountCustomPermissionResponse#request_id #request_id} => String
    #   * {Types::UpdateAccountCustomPermissionResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_account_custom_permission({
    #     custom_permissions_name: "CustomPermissionsName", # required
    #     aws_account_id: "AwsAccountId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateAccountCustomPermission AWS API Documentation
    #
    # @overload update_account_custom_permission(params = {})
    # @param [Hash] params ({})
    def update_account_custom_permission(params = {}, options = {})
      req = build_request(:update_account_custom_permission, params)
      req.send_request(options)
    end

    # Updates Amazon QuickSight customizations for the current Amazon Web
    # Services Region. Currently, the only customization that you can use is
    # a theme.
    #
    # You can use customizations for your Amazon Web Services account or, if
    # you specify a namespace, for a QuickSight namespace instead.
    # Customizations that apply to a namespace override customizations that
    # apply to an Amazon Web Services account. To find out which
    # customizations apply, use the `DescribeAccountCustomization` API
    # operation.
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the Amazon Web Services account that you want to update
    #   QuickSight customizations for.
    #
    # @option params [String] :namespace
    #   The namespace that you want to update QuickSight customizations for.
    #
    # @option params [required, Types::AccountCustomization] :account_customization
    #   The QuickSight customizations you're updating in the current Amazon
    #   Web Services Region.
    #
    # @return [Types::UpdateAccountCustomizationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateAccountCustomizationResponse#arn #arn} => String
    #   * {Types::UpdateAccountCustomizationResponse#aws_account_id #aws_account_id} => String
    #   * {Types::UpdateAccountCustomizationResponse#namespace #namespace} => String
    #   * {Types::UpdateAccountCustomizationResponse#account_customization #account_customization} => Types::AccountCustomization
    #   * {Types::UpdateAccountCustomizationResponse#request_id #request_id} => String
    #   * {Types::UpdateAccountCustomizationResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_account_customization({
    #     aws_account_id: "AwsAccountId", # required
    #     namespace: "Namespace",
    #     account_customization: { # required
    #       default_theme: "Arn",
    #       default_email_customization_template: "Arn",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.aws_account_id #=> String
    #   resp.namespace #=> String
    #   resp.account_customization.default_theme #=> String
    #   resp.account_customization.default_email_customization_template #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateAccountCustomization AWS API Documentation
    #
    # @overload update_account_customization(params = {})
    # @param [Hash] params ({})
    def update_account_customization(params = {}, options = {})
      req = build_request(:update_account_customization, params)
      req.send_request(options)
    end

    # Updates the Amazon QuickSight settings in your Amazon Web Services
    # account.
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the Amazon Web Services account that contains the
    #   QuickSight settings that you want to list.
    #
    # @option params [required, String] :default_namespace
    #   The default namespace for this Amazon Web Services account. Currently,
    #   the default is `default`. IAM users that register for the first time
    #   with QuickSight provide an email address that becomes associated with
    #   the default namespace.
    #
    # @option params [String] :notification_email
    #   The email address that you want QuickSight to send notifications to
    #   regarding your Amazon Web Services account or QuickSight subscription.
    #
    # @option params [Boolean] :termination_protection_enabled
    #   A boolean value that determines whether or not an QuickSight account
    #   can be deleted. A `True` value doesn't allow the account to be
    #   deleted and results in an error message if a user tries to make a
    #   `DeleteAccountSubscription` request. A `False` value will allow the
    #   account to be deleted.
    #
    # @return [Types::UpdateAccountSettingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateAccountSettingsResponse#request_id #request_id} => String
    #   * {Types::UpdateAccountSettingsResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_account_settings({
    #     aws_account_id: "AwsAccountId", # required
    #     default_namespace: "Namespace", # required
    #     notification_email: "String",
    #     termination_protection_enabled: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateAccountSettings AWS API Documentation
    #
    # @overload update_account_settings(params = {})
    # @param [Hash] params ({})
    def update_account_settings(params = {}, options = {})
      req = build_request(:update_account_settings, params)
      req.send_request(options)
    end

    # Updates an analysis in Amazon QuickSight
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that contains the analysis
    #   that you're updating.
    #
    # @option params [required, String] :analysis_id
    #   The ID for the analysis that you're updating. This ID displays in the
    #   URL of the analysis.
    #
    # @option params [required, String] :name
    #   A descriptive name for the analysis that you're updating. This name
    #   displays for the analysis in the QuickSight console.
    #
    # @option params [Types::Parameters] :parameters
    #   The parameter names and override values that you want to use. An
    #   analysis can have any parameter type, and some parameters might accept
    #   multiple values.
    #
    # @option params [Types::AnalysisSourceEntity] :source_entity
    #   A source entity to use for the analysis that you're updating. This
    #   metadata structure contains details that describe a source template
    #   and one or more datasets.
    #
    # @option params [String] :theme_arn
    #   The Amazon Resource Name (ARN) for the theme to apply to the analysis
    #   that you're creating. To see the theme in the QuickSight console,
    #   make sure that you have access to it.
    #
    # @option params [Types::AnalysisDefinition] :definition
    #   The definition of an analysis.
    #
    #   A definition is the data model of all features in a Dashboard,
    #   Template, or Analysis.
    #
    # @option params [Types::ValidationStrategy] :validation_strategy
    #   The option to relax the validation needed to update an analysis with
    #   definition objects. This skips the validation step for specific
    #   errors.
    #
    # @return [Types::UpdateAnalysisResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateAnalysisResponse#arn #arn} => String
    #   * {Types::UpdateAnalysisResponse#analysis_id #analysis_id} => String
    #   * {Types::UpdateAnalysisResponse#update_status #update_status} => String
    #   * {Types::UpdateAnalysisResponse#status #status} => Integer
    #   * {Types::UpdateAnalysisResponse#request_id #request_id} => String
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.analysis_id #=> String
    #   resp.update_status #=> String, one of "CREATION_IN_PROGRESS", "CREATION_SUCCESSFUL", "CREATION_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_SUCCESSFUL", "UPDATE_FAILED", "DELETED"
    #   resp.status #=> Integer
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateAnalysis AWS API Documentation
    #
    # @overload update_analysis(params = {})
    # @param [Hash] params ({})
    def update_analysis(params = {}, options = {})
      req = build_request(:update_analysis, params)
      req.send_request(options)
    end

    # Updates the read and write permissions for an analysis.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that contains the analysis
    #   whose permissions you're updating. You must be using the Amazon Web
    #   Services account that the analysis is in.
    #
    # @option params [required, String] :analysis_id
    #   The ID of the analysis whose permissions you're updating. The ID is
    #   part of the analysis URL.
    #
    # @option params [Array<Types::ResourcePermission>] :grant_permissions
    #   A structure that describes the permissions to add and the principal to
    #   add them to.
    #
    # @option params [Array<Types::ResourcePermission>] :revoke_permissions
    #   A structure that describes the permissions to remove and the principal
    #   to remove them from.
    #
    # @return [Types::UpdateAnalysisPermissionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateAnalysisPermissionsResponse#analysis_arn #analysis_arn} => String
    #   * {Types::UpdateAnalysisPermissionsResponse#analysis_id #analysis_id} => String
    #   * {Types::UpdateAnalysisPermissionsResponse#permissions #permissions} => Array&lt;Types::ResourcePermission&gt;
    #   * {Types::UpdateAnalysisPermissionsResponse#request_id #request_id} => String
    #   * {Types::UpdateAnalysisPermissionsResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_analysis_permissions({
    #     aws_account_id: "AwsAccountId", # required
    #     analysis_id: "ShortRestrictiveResourceId", # required
    #     grant_permissions: [
    #       {
    #         principal: "Principal", # required
    #         actions: ["String"], # required
    #       },
    #     ],
    #     revoke_permissions: [
    #       {
    #         principal: "Principal", # required
    #         actions: ["String"], # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.analysis_arn #=> String
    #   resp.analysis_id #=> String
    #   resp.permissions #=> Array
    #   resp.permissions[0].principal #=> String
    #   resp.permissions[0].actions #=> Array
    #   resp.permissions[0].actions[0] #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateAnalysisPermissions AWS API Documentation
    #
    # @overload update_analysis_permissions(params = {})
    # @param [Hash] params ({})
    def update_analysis_permissions(params = {}, options = {})
      req = build_request(:update_analysis_permissions, params)
      req.send_request(options)
    end

    # Updates an QuickSight application with a token exchange grant. This
    # operation only supports QuickSight applications that are registered
    # with IAM Identity Center.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account to be updated with a token
    #   exchange grant.
    #
    # @option params [required, String] :namespace
    #   The namespace of the QuickSight application.
    #
    # @return [Types::UpdateApplicationWithTokenExchangeGrantResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateApplicationWithTokenExchangeGrantResponse#status #status} => Integer
    #   * {Types::UpdateApplicationWithTokenExchangeGrantResponse#request_id #request_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_application_with_token_exchange_grant({
    #     aws_account_id: "AwsAccountId", # required
    #     namespace: "Namespace", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> Integer
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateApplicationWithTokenExchangeGrant AWS API Documentation
    #
    # @overload update_application_with_token_exchange_grant(params = {})
    # @param [Hash] params ({})
    def update_application_with_token_exchange_grant(params = {}, options = {})
      req = build_request(:update_application_with_token_exchange_grant, params)
      req.send_request(options)
    end

    # Updates a brand.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that owns the brand.
    #
    # @option params [required, String] :brand_id
    #   The ID of the QuickSight brand.
    #
    # @option params [Types::BrandDefinition] :brand_definition
    #   The definition of the brand.
    #
    # @return [Types::UpdateBrandResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateBrandResponse#request_id #request_id} => String
    #   * {Types::UpdateBrandResponse#brand_detail #brand_detail} => Types::BrandDetail
    #   * {Types::UpdateBrandResponse#brand_definition #brand_definition} => Types::BrandDefinition
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_brand({
    #     aws_account_id: "AwsAccountId", # required
    #     brand_id: "ShortRestrictiveResourceId", # required
    #     brand_definition: {
    #       brand_name: "Name", # required
    #       description: "Description",
    #       application_theme: {
    #         brand_color_palette: {
    #           primary: {
    #             foreground: "HexColor",
    #             background: "HexColor",
    #           },
    #           secondary: {
    #             foreground: "HexColor",
    #             background: "HexColor",
    #           },
    #           accent: {
    #             foreground: "HexColor",
    #             background: "HexColor",
    #           },
    #           measure: {
    #             foreground: "HexColor",
    #             background: "HexColor",
    #           },
    #           dimension: {
    #             foreground: "HexColor",
    #             background: "HexColor",
    #           },
    #           success: {
    #             foreground: "HexColor",
    #             background: "HexColor",
    #           },
    #           info: {
    #             foreground: "HexColor",
    #             background: "HexColor",
    #           },
    #           warning: {
    #             foreground: "HexColor",
    #             background: "HexColor",
    #           },
    #           danger: {
    #             foreground: "HexColor",
    #             background: "HexColor",
    #           },
    #         },
    #         brand_element_style: {
    #           navbar_style: {
    #             global_navbar: {
    #               foreground: "HexColor",
    #               background: "HexColor",
    #             },
    #             contextual_navbar: {
    #               foreground: "HexColor",
    #               background: "HexColor",
    #             },
    #           },
    #         },
    #       },
    #       logo_configuration: {
    #         alt_text: "String", # required
    #         logo_set: { # required
    #           primary: { # required
    #             original: { # required
    #               source: {
    #                 public_url: "String",
    #                 s3_uri: "String",
    #               },
    #             },
    #           },
    #           favicon: {
    #             original: { # required
    #               source: {
    #                 public_url: "String",
    #                 s3_uri: "String",
    #               },
    #             },
    #           },
    #         },
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.brand_detail.brand_id #=> String
    #   resp.brand_detail.arn #=> String
    #   resp.brand_detail.brand_status #=> String, one of "CREATE_IN_PROGRESS", "CREATE_SUCCEEDED", "CREATE_FAILED", "DELETE_IN_PROGRESS", "DELETE_FAILED"
    #   resp.brand_detail.created_time #=> Time
    #   resp.brand_detail.last_updated_time #=> Time
    #   resp.brand_detail.version_id #=> String
    #   resp.brand_detail.version_status #=> String, one of "CREATE_IN_PROGRESS", "CREATE_SUCCEEDED", "CREATE_FAILED"
    #   resp.brand_detail.errors #=> Array
    #   resp.brand_detail.errors[0] #=> String
    #   resp.brand_detail.logo.alt_text #=> String
    #   resp.brand_detail.logo.logo_set.primary.original.source.public_url #=> String
    #   resp.brand_detail.logo.logo_set.primary.original.source.s3_uri #=> String
    #   resp.brand_detail.logo.logo_set.primary.original.generated_image_url #=> String
    #   resp.brand_detail.logo.logo_set.primary.height_64.source.public_url #=> String
    #   resp.brand_detail.logo.logo_set.primary.height_64.source.s3_uri #=> String
    #   resp.brand_detail.logo.logo_set.primary.height_64.generated_image_url #=> String
    #   resp.brand_detail.logo.logo_set.primary.height_32.source.public_url #=> String
    #   resp.brand_detail.logo.logo_set.primary.height_32.source.s3_uri #=> String
    #   resp.brand_detail.logo.logo_set.primary.height_32.generated_image_url #=> String
    #   resp.brand_detail.logo.logo_set.favicon.original.source.public_url #=> String
    #   resp.brand_detail.logo.logo_set.favicon.original.source.s3_uri #=> String
    #   resp.brand_detail.logo.logo_set.favicon.original.generated_image_url #=> String
    #   resp.brand_detail.logo.logo_set.favicon.height_64.source.public_url #=> String
    #   resp.brand_detail.logo.logo_set.favicon.height_64.source.s3_uri #=> String
    #   resp.brand_detail.logo.logo_set.favicon.height_64.generated_image_url #=> String
    #   resp.brand_detail.logo.logo_set.favicon.height_32.source.public_url #=> String
    #   resp.brand_detail.logo.logo_set.favicon.height_32.source.s3_uri #=> String
    #   resp.brand_detail.logo.logo_set.favicon.height_32.generated_image_url #=> String
    #   resp.brand_definition.brand_name #=> String
    #   resp.brand_definition.description #=> String
    #   resp.brand_definition.application_theme.brand_color_palette.primary.foreground #=> String
    #   resp.brand_definition.application_theme.brand_color_palette.primary.background #=> String
    #   resp.brand_definition.application_theme.brand_color_palette.secondary.foreground #=> String
    #   resp.brand_definition.application_theme.brand_color_palette.secondary.background #=> String
    #   resp.brand_definition.application_theme.brand_color_palette.accent.foreground #=> String
    #   resp.brand_definition.application_theme.brand_color_palette.accent.background #=> String
    #   resp.brand_definition.application_theme.brand_color_palette.measure.foreground #=> String
    #   resp.brand_definition.application_theme.brand_color_palette.measure.background #=> String
    #   resp.brand_definition.application_theme.brand_color_palette.dimension.foreground #=> String
    #   resp.brand_definition.application_theme.brand_color_palette.dimension.background #=> String
    #   resp.brand_definition.application_theme.brand_color_palette.success.foreground #=> String
    #   resp.brand_definition.application_theme.brand_color_palette.success.background #=> String
    #   resp.brand_definition.application_theme.brand_color_palette.info.foreground #=> String
    #   resp.brand_definition.application_theme.brand_color_palette.info.background #=> String
    #   resp.brand_definition.application_theme.brand_color_palette.warning.foreground #=> String
    #   resp.brand_definition.application_theme.brand_color_palette.warning.background #=> String
    #   resp.brand_definition.application_theme.brand_color_palette.danger.foreground #=> String
    #   resp.brand_definition.application_theme.brand_color_palette.danger.background #=> String
    #   resp.brand_definition.application_theme.brand_element_style.navbar_style.global_navbar.foreground #=> String
    #   resp.brand_definition.application_theme.brand_element_style.navbar_style.global_navbar.background #=> String
    #   resp.brand_definition.application_theme.brand_element_style.navbar_style.contextual_navbar.foreground #=> String
    #   resp.brand_definition.application_theme.brand_element_style.navbar_style.contextual_navbar.background #=> String
    #   resp.brand_definition.logo_configuration.alt_text #=> String
    #   resp.brand_definition.logo_configuration.logo_set.primary.original.source.public_url #=> String
    #   resp.brand_definition.logo_configuration.logo_set.primary.original.source.s3_uri #=> String
    #   resp.brand_definition.logo_configuration.logo_set.favicon.original.source.public_url #=> String
    #   resp.brand_definition.logo_configuration.logo_set.favicon.original.source.s3_uri #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateBrand AWS API Documentation
    #
    # @overload update_brand(params = {})
    # @param [Hash] params ({})
    def update_brand(params = {}, options = {})
      req = build_request(:update_brand, params)
      req.send_request(options)
    end

    # Updates a brand assignment.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that owns the brand
    #   assignment.
    #
    # @option params [required, String] :brand_arn
    #   The Amazon Resource Name (ARN) of the brand.
    #
    # @return [Types::UpdateBrandAssignmentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateBrandAssignmentResponse#request_id #request_id} => String
    #   * {Types::UpdateBrandAssignmentResponse#brand_arn #brand_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_brand_assignment({
    #     aws_account_id: "AwsAccountId", # required
    #     brand_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.brand_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateBrandAssignment AWS API Documentation
    #
    # @overload update_brand_assignment(params = {})
    # @param [Hash] params ({})
    def update_brand_assignment(params = {}, options = {})
      req = build_request(:update_brand_assignment, params)
      req.send_request(options)
    end

    # Updates the published version of a brand.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that owns the brand.
    #
    # @option params [required, String] :brand_id
    #   The ID of the QuickSight brand.
    #
    # @option params [required, String] :version_id
    #   The ID of the published version.
    #
    # @return [Types::UpdateBrandPublishedVersionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateBrandPublishedVersionResponse#request_id #request_id} => String
    #   * {Types::UpdateBrandPublishedVersionResponse#version_id #version_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_brand_published_version({
    #     aws_account_id: "AwsAccountId", # required
    #     brand_id: "ShortRestrictiveResourceId", # required
    #     version_id: "ShortRestrictiveResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.version_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateBrandPublishedVersion AWS API Documentation
    #
    # @overload update_brand_published_version(params = {})
    # @param [Hash] params ({})
    def update_brand_published_version(params = {}, options = {})
      req = build_request(:update_brand_published_version, params)
      req.send_request(options)
    end

    # Updates a custom permissions profile.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that contains the custom
    #   permissions profile that you want to update.
    #
    # @option params [required, String] :custom_permissions_name
    #   The name of the custom permissions profile that you want to update.
    #
    # @option params [Types::Capabilities] :capabilities
    #   A set of actions to include in the custom permissions profile.
    #
    # @return [Types::UpdateCustomPermissionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateCustomPermissionsResponse#status #status} => Integer
    #   * {Types::UpdateCustomPermissionsResponse#arn #arn} => String
    #   * {Types::UpdateCustomPermissionsResponse#request_id #request_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_custom_permissions({
    #     aws_account_id: "AwsAccountId", # required
    #     custom_permissions_name: "CustomPermissionsName", # required
    #     capabilities: {
    #       export_to_csv: "DENY", # accepts DENY
    #       export_to_excel: "DENY", # accepts DENY
    #       export_to_pdf: "DENY", # accepts DENY
    #       print_reports: "DENY", # accepts DENY
    #       create_and_update_themes: "DENY", # accepts DENY
    #       add_or_run_anomaly_detection_for_analyses: "DENY", # accepts DENY
    #       share_analyses: "DENY", # accepts DENY
    #       create_and_update_datasets: "DENY", # accepts DENY
    #       share_datasets: "DENY", # accepts DENY
    #       subscribe_dashboard_email_reports: "DENY", # accepts DENY
    #       create_and_update_dashboard_email_reports: "DENY", # accepts DENY
    #       share_dashboards: "DENY", # accepts DENY
    #       create_and_update_threshold_alerts: "DENY", # accepts DENY
    #       rename_shared_folders: "DENY", # accepts DENY
    #       create_shared_folders: "DENY", # accepts DENY
    #       create_and_update_data_sources: "DENY", # accepts DENY
    #       share_data_sources: "DENY", # accepts DENY
    #       view_account_spice_capacity: "DENY", # accepts DENY
    #       create_spice_dataset: "DENY", # accepts DENY
    #       export_to_pdf_in_scheduled_reports: "DENY", # accepts DENY
    #       export_to_csv_in_scheduled_reports: "DENY", # accepts DENY
    #       export_to_excel_in_scheduled_reports: "DENY", # accepts DENY
    #       include_content_in_scheduled_reports_email: "DENY", # accepts DENY
    #       dashboard: "DENY", # accepts DENY
    #       analysis: "DENY", # accepts DENY
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> Integer
    #   resp.arn #=> String
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateCustomPermissions AWS API Documentation
    #
    # @overload update_custom_permissions(params = {})
    # @param [Hash] params ({})
    def update_custom_permissions(params = {}, options = {})
      req = build_request(:update_custom_permissions, params)
      req.send_request(options)
    end

    # Updates a dashboard in an Amazon Web Services account.
    #
    # <note markdown="1"> Updating a Dashboard creates a new dashboard version but does not
    # immediately publish the new version. You can update the published
    # version of a dashboard by using the ` UpdateDashboardPublishedVersion
    # ` API operation.
    #
    #  </note>
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that contains the dashboard
    #   that you're updating.
    #
    # @option params [required, String] :dashboard_id
    #   The ID for the dashboard.
    #
    # @option params [required, String] :name
    #   The display name of the dashboard.
    #
    # @option params [Types::DashboardSourceEntity] :source_entity
    #   The entity that you are using as a source when you update the
    #   dashboard. In `SourceEntity`, you specify the type of object you're
    #   using as source. You can only update a dashboard from a template, so
    #   you use a `SourceTemplate` entity. If you need to update a dashboard
    #   from an analysis, first convert the analysis to a template by using
    #   the ` CreateTemplate ` API operation. For `SourceTemplate`, specify
    #   the Amazon Resource Name (ARN) of the source template. The
    #   `SourceTemplate` ARN can contain any Amazon Web Services account and
    #   any QuickSight-supported Amazon Web Services Region.
    #
    #   Use the `DataSetReferences` entity within `SourceTemplate` to list the
    #   replacement datasets for the placeholders listed in the original. The
    #   schema in each dataset must match its placeholder.
    #
    # @option params [Types::Parameters] :parameters
    #   A structure that contains the parameters of the dashboard. These are
    #   parameter overrides for a dashboard. A dashboard can have any type of
    #   parameters, and some parameters might accept multiple values.
    #
    # @option params [String] :version_description
    #   A description for the first version of the dashboard being created.
    #
    # @option params [Types::DashboardPublishOptions] :dashboard_publish_options
    #   Options for publishing the dashboard when you create it:
    #
    #   * `AvailabilityStatus` for `AdHocFilteringOption` - This status can be
    #     either `ENABLED` or `DISABLED`. When this is set to `DISABLED`,
    #     QuickSight disables the left filter pane on the published dashboard,
    #     which can be used for ad hoc (one-time) filtering. This option is
    #     `ENABLED` by default.
    #
    #   * `AvailabilityStatus` for `ExportToCSVOption` - This status can be
    #     either `ENABLED` or `DISABLED`. The visual option to export data to
    #     .CSV format isn't enabled when this is set to `DISABLED`. This
    #     option is `ENABLED` by default.
    #
    #   * `VisibilityState` for `SheetControlsOption` - This visibility state
    #     can be either `COLLAPSED` or `EXPANDED`. This option is `COLLAPSED`
    #     by default.
    #
    #   * `AvailabilityStatus` for `ExecutiveSummaryOption` - This status can
    #     be either `ENABLED` or `DISABLED`. The option to build an executive
    #     summary is disabled when this is set to `DISABLED`. This option is
    #     `ENABLED` by default.
    #
    #   * `AvailabilityStatus` for `DataStoriesSharingOption` - This status
    #     can be either `ENABLED` or `DISABLED`. The option to share a data
    #     story is disabled when this is set to `DISABLED`. This option is
    #     `ENABLED` by default.
    #
    # @option params [String] :theme_arn
    #   The Amazon Resource Name (ARN) of the theme that is being used for
    #   this dashboard. If you add a value for this field, it overrides the
    #   value that was originally associated with the entity. The theme ARN
    #   must exist in the same Amazon Web Services account where you create
    #   the dashboard.
    #
    # @option params [Types::DashboardVersionDefinition] :definition
    #   The definition of a dashboard.
    #
    #   A definition is the data model of all features in a Dashboard,
    #   Template, or Analysis.
    #
    # @option params [Types::ValidationStrategy] :validation_strategy
    #   The option to relax the validation needed to update a dashboard with
    #   definition objects. This skips the validation step for specific
    #   errors.
    #
    # @return [Types::UpdateDashboardResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateDashboardResponse#arn #arn} => String
    #   * {Types::UpdateDashboardResponse#version_arn #version_arn} => String
    #   * {Types::UpdateDashboardResponse#dashboard_id #dashboard_id} => String
    #   * {Types::UpdateDashboardResponse#creation_status #creation_status} => String
    #   * {Types::UpdateDashboardResponse#status #status} => Integer
    #   * {Types::UpdateDashboardResponse#request_id #request_id} => String
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.version_arn #=> String
    #   resp.dashboard_id #=> String
    #   resp.creation_status #=> String, one of "CREATION_IN_PROGRESS", "CREATION_SUCCESSFUL", "CREATION_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_SUCCESSFUL", "UPDATE_FAILED", "DELETED"
    #   resp.status #=> Integer
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateDashboard AWS API Documentation
    #
    # @overload update_dashboard(params = {})
    # @param [Hash] params ({})
    def update_dashboard(params = {}, options = {})
      req = build_request(:update_dashboard, params)
      req.send_request(options)
    end

    # Updates the linked analyses on a dashboard.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that contains the dashboard
    #   whose links you want to update.
    #
    # @option params [required, String] :dashboard_id
    #   The ID for the dashboard.
    #
    # @option params [required, Array<String>] :link_entities
    #   list of analysis Amazon Resource Names (ARNs) to be linked to the
    #   dashboard.
    #
    # @return [Types::UpdateDashboardLinksResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateDashboardLinksResponse#request_id #request_id} => String
    #   * {Types::UpdateDashboardLinksResponse#status #status} => Integer
    #   * {Types::UpdateDashboardLinksResponse#dashboard_arn #dashboard_arn} => String
    #   * {Types::UpdateDashboardLinksResponse#link_entities #link_entities} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_dashboard_links({
    #     aws_account_id: "AwsAccountId", # required
    #     dashboard_id: "ShortRestrictiveResourceId", # required
    #     link_entities: ["LinkEntityArn"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #   resp.dashboard_arn #=> String
    #   resp.link_entities #=> Array
    #   resp.link_entities[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateDashboardLinks AWS API Documentation
    #
    # @overload update_dashboard_links(params = {})
    # @param [Hash] params ({})
    def update_dashboard_links(params = {}, options = {})
      req = build_request(:update_dashboard_links, params)
      req.send_request(options)
    end

    # Updates read and write permissions on a dashboard.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that contains the dashboard
    #   whose permissions you're updating.
    #
    # @option params [required, String] :dashboard_id
    #   The ID for the dashboard.
    #
    # @option params [Array<Types::ResourcePermission>] :grant_permissions
    #   The permissions that you want to grant on this resource.
    #
    # @option params [Array<Types::ResourcePermission>] :revoke_permissions
    #   The permissions that you want to revoke from this resource.
    #
    # @option params [Array<Types::ResourcePermission>] :grant_link_permissions
    #   Grants link permissions to all users in a defined namespace.
    #
    # @option params [Array<Types::ResourcePermission>] :revoke_link_permissions
    #   Revokes link permissions from all users in a defined namespace.
    #
    # @return [Types::UpdateDashboardPermissionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateDashboardPermissionsResponse#dashboard_arn #dashboard_arn} => String
    #   * {Types::UpdateDashboardPermissionsResponse#dashboard_id #dashboard_id} => String
    #   * {Types::UpdateDashboardPermissionsResponse#permissions #permissions} => Array&lt;Types::ResourcePermission&gt;
    #   * {Types::UpdateDashboardPermissionsResponse#request_id #request_id} => String
    #   * {Types::UpdateDashboardPermissionsResponse#status #status} => Integer
    #   * {Types::UpdateDashboardPermissionsResponse#link_sharing_configuration #link_sharing_configuration} => Types::LinkSharingConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_dashboard_permissions({
    #     aws_account_id: "AwsAccountId", # required
    #     dashboard_id: "ShortRestrictiveResourceId", # required
    #     grant_permissions: [
    #       {
    #         principal: "Principal", # required
    #         actions: ["String"], # required
    #       },
    #     ],
    #     revoke_permissions: [
    #       {
    #         principal: "Principal", # required
    #         actions: ["String"], # required
    #       },
    #     ],
    #     grant_link_permissions: [
    #       {
    #         principal: "Principal", # required
    #         actions: ["String"], # required
    #       },
    #     ],
    #     revoke_link_permissions: [
    #       {
    #         principal: "Principal", # required
    #         actions: ["String"], # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.dashboard_arn #=> String
    #   resp.dashboard_id #=> String
    #   resp.permissions #=> Array
    #   resp.permissions[0].principal #=> String
    #   resp.permissions[0].actions #=> Array
    #   resp.permissions[0].actions[0] #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #   resp.link_sharing_configuration.permissions #=> Array
    #   resp.link_sharing_configuration.permissions[0].principal #=> String
    #   resp.link_sharing_configuration.permissions[0].actions #=> Array
    #   resp.link_sharing_configuration.permissions[0].actions[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateDashboardPermissions AWS API Documentation
    #
    # @overload update_dashboard_permissions(params = {})
    # @param [Hash] params ({})
    def update_dashboard_permissions(params = {}, options = {})
      req = build_request(:update_dashboard_permissions, params)
      req.send_request(options)
    end

    # Updates the published version of a dashboard.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that contains the dashboard
    #   that you're updating.
    #
    # @option params [required, String] :dashboard_id
    #   The ID for the dashboard.
    #
    # @option params [required, Integer] :version_number
    #   The version number of the dashboard.
    #
    # @return [Types::UpdateDashboardPublishedVersionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateDashboardPublishedVersionResponse#dashboard_id #dashboard_id} => String
    #   * {Types::UpdateDashboardPublishedVersionResponse#dashboard_arn #dashboard_arn} => String
    #   * {Types::UpdateDashboardPublishedVersionResponse#status #status} => Integer
    #   * {Types::UpdateDashboardPublishedVersionResponse#request_id #request_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_dashboard_published_version({
    #     aws_account_id: "AwsAccountId", # required
    #     dashboard_id: "ShortRestrictiveResourceId", # required
    #     version_number: 1, # required
    #   })
    #
    # @example Response structure
    #
    #   resp.dashboard_id #=> String
    #   resp.dashboard_arn #=> String
    #   resp.status #=> Integer
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateDashboardPublishedVersion AWS API Documentation
    #
    # @overload update_dashboard_published_version(params = {})
    # @param [Hash] params ({})
    def update_dashboard_published_version(params = {}, options = {})
      req = build_request(:update_dashboard_published_version, params)
      req.send_request(options)
    end

    # Updates a Dashboard QA configuration.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that contains the dashboard
    #   QA configuration that you want to update.
    #
    # @option params [required, String] :dashboards_qa_status
    #   The status of dashboards QA configuration that you want to update.
    #
    # @return [Types::UpdateDashboardsQAConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateDashboardsQAConfigurationResponse#dashboards_qa_status #dashboards_qa_status} => String
    #   * {Types::UpdateDashboardsQAConfigurationResponse#request_id #request_id} => String
    #   * {Types::UpdateDashboardsQAConfigurationResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_dashboards_qa_configuration({
    #     aws_account_id: "AwsAccountId", # required
    #     dashboards_qa_status: "ENABLED", # required, accepts ENABLED, DISABLED
    #   })
    #
    # @example Response structure
    #
    #   resp.dashboards_qa_status #=> String, one of "ENABLED", "DISABLED"
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateDashboardsQAConfiguration AWS API Documentation
    #
    # @overload update_dashboards_qa_configuration(params = {})
    # @param [Hash] params ({})
    def update_dashboards_qa_configuration(params = {}, options = {})
      req = build_request(:update_dashboards_qa_configuration, params)
      req.send_request(options)
    end

    # Updates a dataset. This operation doesn't support datasets that
    # include uploaded files as a source. Partial updates are not supported
    # by this operation.
    #
    # @option params [required, String] :aws_account_id
    #   The Amazon Web Services account ID.
    #
    # @option params [required, String] :data_set_id
    #   The ID for the dataset that you want to update. This ID is unique per
    #   Amazon Web Services Region for each Amazon Web Services account.
    #
    # @option params [required, String] :name
    #   The display name for the dataset.
    #
    # @option params [required, Hash<String,Types::PhysicalTable>] :physical_table_map
    #   Declares the physical tables that are available in the underlying data
    #   sources.
    #
    # @option params [Hash<String,Types::LogicalTable>] :logical_table_map
    #   Configures the combination and transformation of the data from the
    #   physical tables.
    #
    # @option params [required, String] :import_mode
    #   Indicates whether you want to import the data into SPICE.
    #
    # @option params [Array<Types::ColumnGroup>] :column_groups
    #   Groupings of columns that work together in certain QuickSight
    #   features. Currently, only geospatial hierarchy is supported.
    #
    # @option params [Hash<String,Types::FieldFolder>] :field_folders
    #   The folder that contains fields and nested subfolders for your
    #   dataset.
    #
    # @option params [Types::RowLevelPermissionDataSet] :row_level_permission_data_set
    #   The row-level security configuration for the data you want to create.
    #
    # @option params [Types::RowLevelPermissionTagConfiguration] :row_level_permission_tag_configuration
    #   The configuration of tags on a dataset to set row-level security.
    #   Row-level security tags are currently supported for anonymous
    #   embedding only.
    #
    # @option params [Array<Types::ColumnLevelPermissionRule>] :column_level_permission_rules
    #   A set of one or more definitions of a ` ColumnLevelPermissionRule `.
    #
    # @option params [Types::DataSetUsageConfiguration] :data_set_usage_configuration
    #   The usage configuration to apply to child datasets that reference this
    #   dataset as a source.
    #
    # @option params [Array<Types::DatasetParameter>] :dataset_parameters
    #   The parameter declarations of the dataset.
    #
    # @option params [Types::PerformanceConfiguration] :performance_configuration
    #   The configuration for the performance optimization of the dataset that
    #   contains a `UniqueKey` configuration.
    #
    # @return [Types::UpdateDataSetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateDataSetResponse#arn #arn} => String
    #   * {Types::UpdateDataSetResponse#data_set_id #data_set_id} => String
    #   * {Types::UpdateDataSetResponse#ingestion_arn #ingestion_arn} => String
    #   * {Types::UpdateDataSetResponse#ingestion_id #ingestion_id} => String
    #   * {Types::UpdateDataSetResponse#request_id #request_id} => String
    #   * {Types::UpdateDataSetResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_data_set({
    #     aws_account_id: "AwsAccountId", # required
    #     data_set_id: "ResourceId", # required
    #     name: "ResourceName", # required
    #     physical_table_map: { # required
    #       "PhysicalTableId" => {
    #         relational_table: {
    #           data_source_arn: "Arn", # required
    #           catalog: "RelationalTableCatalog",
    #           schema: "RelationalTableSchema",
    #           name: "RelationalTableName", # required
    #           input_columns: [ # required
    #             {
    #               name: "ColumnName", # required
    #               type: "STRING", # required, accepts STRING, INTEGER, DECIMAL, DATETIME, BIT, BOOLEAN, JSON
    #               sub_type: "FLOAT", # accepts FLOAT, FIXED
    #             },
    #           ],
    #         },
    #         custom_sql: {
    #           data_source_arn: "Arn", # required
    #           name: "CustomSqlName", # required
    #           sql_query: "SqlQuery", # required
    #           columns: [
    #             {
    #               name: "ColumnName", # required
    #               type: "STRING", # required, accepts STRING, INTEGER, DECIMAL, DATETIME, BIT, BOOLEAN, JSON
    #               sub_type: "FLOAT", # accepts FLOAT, FIXED
    #             },
    #           ],
    #         },
    #         s3_source: {
    #           data_source_arn: "Arn", # required
    #           upload_settings: {
    #             format: "CSV", # accepts CSV, TSV, CLF, ELF, XLSX, JSON
    #             start_from_row: 1,
    #             contains_header: false,
    #             text_qualifier: "DOUBLE_QUOTE", # accepts DOUBLE_QUOTE, SINGLE_QUOTE
    #             delimiter: "Delimiter",
    #           },
    #           input_columns: [ # required
    #             {
    #               name: "ColumnName", # required
    #               type: "STRING", # required, accepts STRING, INTEGER, DECIMAL, DATETIME, BIT, BOOLEAN, JSON
    #               sub_type: "FLOAT", # accepts FLOAT, FIXED
    #             },
    #           ],
    #         },
    #       },
    #     },
    #     logical_table_map: {
    #       "LogicalTableId" => {
    #         alias: "LogicalTableAlias", # required
    #         data_transforms: [
    #           {
    #             project_operation: {
    #               projected_columns: ["String"], # required
    #             },
    #             filter_operation: {
    #               condition_expression: "Expression", # required
    #             },
    #             create_columns_operation: {
    #               columns: [ # required
    #                 {
    #                   column_name: "ColumnName", # required
    #                   column_id: "ColumnId", # required
    #                   expression: "DataSetCalculatedFieldExpression", # required
    #                 },
    #               ],
    #             },
    #             rename_column_operation: {
    #               column_name: "ColumnName", # required
    #               new_column_name: "ColumnName", # required
    #             },
    #             cast_column_type_operation: {
    #               column_name: "ColumnName", # required
    #               new_column_type: "STRING", # required, accepts STRING, INTEGER, DECIMAL, DATETIME
    #               sub_type: "FLOAT", # accepts FLOAT, FIXED
    #               format: "TypeCastFormat",
    #             },
    #             tag_column_operation: {
    #               column_name: "ColumnName", # required
    #               tags: [ # required
    #                 {
    #                   column_geographic_role: "COUNTRY", # accepts COUNTRY, STATE, COUNTY, CITY, POSTCODE, LONGITUDE, LATITUDE
    #                   column_description: {
    #                     text: "ColumnDescriptiveText",
    #                   },
    #                 },
    #               ],
    #             },
    #             untag_column_operation: {
    #               column_name: "ColumnName", # required
    #               tag_names: ["COLUMN_GEOGRAPHIC_ROLE"], # required, accepts COLUMN_GEOGRAPHIC_ROLE, COLUMN_DESCRIPTION
    #             },
    #             override_dataset_parameter_operation: {
    #               parameter_name: "DatasetParameterName", # required
    #               new_parameter_name: "DatasetParameterName",
    #               new_default_values: {
    #                 string_static_values: ["StringDatasetParameterDefaultValue"],
    #                 decimal_static_values: [1.0],
    #                 date_time_static_values: [Time.now],
    #                 integer_static_values: [1],
    #               },
    #             },
    #           },
    #         ],
    #         source: { # required
    #           join_instruction: {
    #             left_operand: "LogicalTableId", # required
    #             right_operand: "LogicalTableId", # required
    #             left_join_key_properties: {
    #               unique_key: false,
    #             },
    #             right_join_key_properties: {
    #               unique_key: false,
    #             },
    #             type: "INNER", # required, accepts INNER, OUTER, LEFT, RIGHT
    #             on_clause: "OnClause", # required
    #           },
    #           physical_table_id: "PhysicalTableId",
    #           data_set_arn: "Arn",
    #         },
    #       },
    #     },
    #     import_mode: "SPICE", # required, accepts SPICE, DIRECT_QUERY
    #     column_groups: [
    #       {
    #         geo_spatial_column_group: {
    #           name: "ColumnGroupName", # required
    #           country_code: "US", # accepts US
    #           columns: ["ColumnName"], # required
    #         },
    #       },
    #     ],
    #     field_folders: {
    #       "FieldFolderPath" => {
    #         description: "FieldFolderDescription",
    #         columns: ["String"],
    #       },
    #     },
    #     row_level_permission_data_set: {
    #       namespace: "Namespace",
    #       arn: "Arn", # required
    #       permission_policy: "GRANT_ACCESS", # required, accepts GRANT_ACCESS, DENY_ACCESS
    #       format_version: "VERSION_1", # accepts VERSION_1, VERSION_2
    #       status: "ENABLED", # accepts ENABLED, DISABLED
    #     },
    #     row_level_permission_tag_configuration: {
    #       status: "ENABLED", # accepts ENABLED, DISABLED
    #       tag_rules: [ # required
    #         {
    #           tag_key: "SessionTagKey", # required
    #           column_name: "String", # required
    #           tag_multi_value_delimiter: "RowLevelPermissionTagDelimiter",
    #           match_all_value: "SessionTagValue",
    #         },
    #       ],
    #       tag_rule_configurations: [
    #         ["SessionTagKey"],
    #       ],
    #     },
    #     column_level_permission_rules: [
    #       {
    #         principals: ["String"],
    #         column_names: ["String"],
    #       },
    #     ],
    #     data_set_usage_configuration: {
    #       disable_use_as_direct_query_source: false,
    #       disable_use_as_imported_source: false,
    #     },
    #     dataset_parameters: [
    #       {
    #         string_dataset_parameter: {
    #           id: "DatasetParameterId", # required
    #           name: "DatasetParameterName", # required
    #           value_type: "MULTI_VALUED", # required, accepts MULTI_VALUED, SINGLE_VALUED
    #           default_values: {
    #             static_values: ["StringDatasetParameterDefaultValue"],
    #           },
    #         },
    #         decimal_dataset_parameter: {
    #           id: "DatasetParameterId", # required
    #           name: "DatasetParameterName", # required
    #           value_type: "MULTI_VALUED", # required, accepts MULTI_VALUED, SINGLE_VALUED
    #           default_values: {
    #             static_values: [1.0],
    #           },
    #         },
    #         integer_dataset_parameter: {
    #           id: "DatasetParameterId", # required
    #           name: "DatasetParameterName", # required
    #           value_type: "MULTI_VALUED", # required, accepts MULTI_VALUED, SINGLE_VALUED
    #           default_values: {
    #             static_values: [1],
    #           },
    #         },
    #         date_time_dataset_parameter: {
    #           id: "DatasetParameterId", # required
    #           name: "DatasetParameterName", # required
    #           value_type: "MULTI_VALUED", # required, accepts MULTI_VALUED, SINGLE_VALUED
    #           time_granularity: "YEAR", # accepts YEAR, QUARTER, MONTH, WEEK, DAY, HOUR, MINUTE, SECOND, MILLISECOND
    #           default_values: {
    #             static_values: [Time.now],
    #           },
    #         },
    #       },
    #     ],
    #     performance_configuration: {
    #       unique_keys: [
    #         {
    #           column_names: ["ColumnName"], # required
    #         },
    #       ],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.data_set_id #=> String
    #   resp.ingestion_arn #=> String
    #   resp.ingestion_id #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateDataSet AWS API Documentation
    #
    # @overload update_data_set(params = {})
    # @param [Hash] params ({})
    def update_data_set(params = {}, options = {})
      req = build_request(:update_data_set, params)
      req.send_request(options)
    end

    # Updates the permissions on a dataset.
    #
    # The permissions resource is
    # `arn:aws:quicksight:region:aws-account-id:dataset/data-set-id`.
    #
    # @option params [required, String] :aws_account_id
    #   The Amazon Web Services account ID.
    #
    # @option params [required, String] :data_set_id
    #   The ID for the dataset whose permissions you want to update. This ID
    #   is unique per Amazon Web Services Region for each Amazon Web Services
    #   account.
    #
    # @option params [Array<Types::ResourcePermission>] :grant_permissions
    #   The resource permissions that you want to grant to the dataset.
    #
    # @option params [Array<Types::ResourcePermission>] :revoke_permissions
    #   The resource permissions that you want to revoke from the dataset.
    #
    # @return [Types::UpdateDataSetPermissionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateDataSetPermissionsResponse#data_set_arn #data_set_arn} => String
    #   * {Types::UpdateDataSetPermissionsResponse#data_set_id #data_set_id} => String
    #   * {Types::UpdateDataSetPermissionsResponse#request_id #request_id} => String
    #   * {Types::UpdateDataSetPermissionsResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_data_set_permissions({
    #     aws_account_id: "AwsAccountId", # required
    #     data_set_id: "ResourceId", # required
    #     grant_permissions: [
    #       {
    #         principal: "Principal", # required
    #         actions: ["String"], # required
    #       },
    #     ],
    #     revoke_permissions: [
    #       {
    #         principal: "Principal", # required
    #         actions: ["String"], # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.data_set_arn #=> String
    #   resp.data_set_id #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateDataSetPermissions AWS API Documentation
    #
    # @overload update_data_set_permissions(params = {})
    # @param [Hash] params ({})
    def update_data_set_permissions(params = {}, options = {})
      req = build_request(:update_data_set_permissions, params)
      req.send_request(options)
    end

    # Updates a data source.
    #
    # @option params [required, String] :aws_account_id
    #   The Amazon Web Services account ID.
    #
    # @option params [required, String] :data_source_id
    #   The ID of the data source. This ID is unique per Amazon Web Services
    #   Region for each Amazon Web Services account.
    #
    # @option params [required, String] :name
    #   A display name for the data source.
    #
    # @option params [Types::DataSourceParameters] :data_source_parameters
    #   The parameters that QuickSight uses to connect to your underlying
    #   source.
    #
    # @option params [Types::DataSourceCredentials] :credentials
    #   The credentials that QuickSight that uses to connect to your
    #   underlying source. Currently, only credentials based on user name and
    #   password are supported.
    #
    # @option params [Types::VpcConnectionProperties] :vpc_connection_properties
    #   Use this parameter only when you want QuickSight to use a VPC
    #   connection when connecting to your underlying source.
    #
    # @option params [Types::SslProperties] :ssl_properties
    #   Secure Socket Layer (SSL) properties that apply when QuickSight
    #   connects to your underlying source.
    #
    # @return [Types::UpdateDataSourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateDataSourceResponse#arn #arn} => String
    #   * {Types::UpdateDataSourceResponse#data_source_id #data_source_id} => String
    #   * {Types::UpdateDataSourceResponse#update_status #update_status} => String
    #   * {Types::UpdateDataSourceResponse#request_id #request_id} => String
    #   * {Types::UpdateDataSourceResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_data_source({
    #     aws_account_id: "AwsAccountId", # required
    #     data_source_id: "ResourceId", # required
    #     name: "ResourceName", # required
    #     data_source_parameters: {
    #       amazon_elasticsearch_parameters: {
    #         domain: "Domain", # required
    #       },
    #       athena_parameters: {
    #         work_group: "WorkGroup",
    #         role_arn: "RoleArn",
    #         identity_center_configuration: {
    #           enable_identity_propagation: false,
    #         },
    #       },
    #       aurora_parameters: {
    #         host: "Host", # required
    #         port: 1, # required
    #         database: "Database", # required
    #       },
    #       aurora_postgre_sql_parameters: {
    #         host: "Host", # required
    #         port: 1, # required
    #         database: "Database", # required
    #       },
    #       aws_iot_analytics_parameters: {
    #         data_set_name: "DataSetName", # required
    #       },
    #       jira_parameters: {
    #         site_base_url: "SiteBaseUrl", # required
    #       },
    #       maria_db_parameters: {
    #         host: "Host", # required
    #         port: 1, # required
    #         database: "Database", # required
    #       },
    #       my_sql_parameters: {
    #         host: "Host", # required
    #         port: 1, # required
    #         database: "Database", # required
    #       },
    #       oracle_parameters: {
    #         host: "Host", # required
    #         port: 1, # required
    #         database: "Database", # required
    #         use_service_name: false,
    #       },
    #       postgre_sql_parameters: {
    #         host: "Host", # required
    #         port: 1, # required
    #         database: "Database", # required
    #       },
    #       presto_parameters: {
    #         host: "Host", # required
    #         port: 1, # required
    #         catalog: "Catalog", # required
    #       },
    #       rds_parameters: {
    #         instance_id: "InstanceId", # required
    #         database: "Database", # required
    #       },
    #       redshift_parameters: {
    #         host: "Host",
    #         port: 1,
    #         database: "Database", # required
    #         cluster_id: "ClusterId",
    #         iam_parameters: {
    #           role_arn: "RoleArn", # required
    #           database_user: "DatabaseUser",
    #           database_groups: ["DatabaseGroup"],
    #           auto_create_database_user: false,
    #         },
    #         identity_center_configuration: {
    #           enable_identity_propagation: false,
    #         },
    #       },
    #       s3_parameters: {
    #         manifest_file_location: { # required
    #           bucket: "S3Bucket", # required
    #           key: "S3Key", # required
    #         },
    #         role_arn: "RoleArn",
    #       },
    #       service_now_parameters: {
    #         site_base_url: "SiteBaseUrl", # required
    #       },
    #       snowflake_parameters: {
    #         host: "Host", # required
    #         database: "Database", # required
    #         warehouse: "Warehouse", # required
    #         authentication_type: "PASSWORD", # accepts PASSWORD, TOKEN, X509
    #         database_access_control_role: "DatabaseAccessControlRole",
    #         o_auth_parameters: {
    #           token_provider_url: "TokenProviderUrl", # required
    #           o_auth_scope: "OAuthScope",
    #           identity_provider_vpc_connection_properties: {
    #             vpc_connection_arn: "Arn", # required
    #           },
    #           identity_provider_resource_uri: "IdentityProviderResourceUri",
    #         },
    #       },
    #       spark_parameters: {
    #         host: "Host", # required
    #         port: 1, # required
    #       },
    #       sql_server_parameters: {
    #         host: "Host", # required
    #         port: 1, # required
    #         database: "Database", # required
    #       },
    #       teradata_parameters: {
    #         host: "Host", # required
    #         port: 1, # required
    #         database: "Database", # required
    #       },
    #       twitter_parameters: {
    #         query: "Query", # required
    #         max_rows: 1, # required
    #       },
    #       amazon_open_search_parameters: {
    #         domain: "Domain", # required
    #       },
    #       exasol_parameters: {
    #         host: "Host", # required
    #         port: 1, # required
    #       },
    #       databricks_parameters: {
    #         host: "Host", # required
    #         port: 1, # required
    #         sql_endpoint_path: "SqlEndpointPath", # required
    #       },
    #       starburst_parameters: {
    #         host: "Host", # required
    #         port: 1, # required
    #         catalog: "Catalog", # required
    #         product_type: "GALAXY", # accepts GALAXY, ENTERPRISE
    #         database_access_control_role: "DatabaseAccessControlRole",
    #         authentication_type: "PASSWORD", # accepts PASSWORD, TOKEN, X509
    #         o_auth_parameters: {
    #           token_provider_url: "TokenProviderUrl", # required
    #           o_auth_scope: "OAuthScope",
    #           identity_provider_vpc_connection_properties: {
    #             vpc_connection_arn: "Arn", # required
    #           },
    #           identity_provider_resource_uri: "IdentityProviderResourceUri",
    #         },
    #       },
    #       trino_parameters: {
    #         host: "Host", # required
    #         port: 1, # required
    #         catalog: "Catalog", # required
    #       },
    #       big_query_parameters: {
    #         project_id: "ProjectId", # required
    #         data_set_region: "DataSetRegion",
    #       },
    #       impala_parameters: {
    #         host: "Host", # required
    #         port: 1, # required
    #         database: "Database",
    #         sql_endpoint_path: "SqlEndpointPath", # required
    #       },
    #       custom_connection_parameters: {
    #         connection_type: "String",
    #       },
    #     },
    #     credentials: {
    #       credential_pair: {
    #         username: "DbUsername", # required
    #         password: "Password", # required
    #         alternate_data_source_parameters: [
    #           {
    #             amazon_elasticsearch_parameters: {
    #               domain: "Domain", # required
    #             },
    #             athena_parameters: {
    #               work_group: "WorkGroup",
    #               role_arn: "RoleArn",
    #               identity_center_configuration: {
    #                 enable_identity_propagation: false,
    #               },
    #             },
    #             aurora_parameters: {
    #               host: "Host", # required
    #               port: 1, # required
    #               database: "Database", # required
    #             },
    #             aurora_postgre_sql_parameters: {
    #               host: "Host", # required
    #               port: 1, # required
    #               database: "Database", # required
    #             },
    #             aws_iot_analytics_parameters: {
    #               data_set_name: "DataSetName", # required
    #             },
    #             jira_parameters: {
    #               site_base_url: "SiteBaseUrl", # required
    #             },
    #             maria_db_parameters: {
    #               host: "Host", # required
    #               port: 1, # required
    #               database: "Database", # required
    #             },
    #             my_sql_parameters: {
    #               host: "Host", # required
    #               port: 1, # required
    #               database: "Database", # required
    #             },
    #             oracle_parameters: {
    #               host: "Host", # required
    #               port: 1, # required
    #               database: "Database", # required
    #               use_service_name: false,
    #             },
    #             postgre_sql_parameters: {
    #               host: "Host", # required
    #               port: 1, # required
    #               database: "Database", # required
    #             },
    #             presto_parameters: {
    #               host: "Host", # required
    #               port: 1, # required
    #               catalog: "Catalog", # required
    #             },
    #             rds_parameters: {
    #               instance_id: "InstanceId", # required
    #               database: "Database", # required
    #             },
    #             redshift_parameters: {
    #               host: "Host",
    #               port: 1,
    #               database: "Database", # required
    #               cluster_id: "ClusterId",
    #               iam_parameters: {
    #                 role_arn: "RoleArn", # required
    #                 database_user: "DatabaseUser",
    #                 database_groups: ["DatabaseGroup"],
    #                 auto_create_database_user: false,
    #               },
    #               identity_center_configuration: {
    #                 enable_identity_propagation: false,
    #               },
    #             },
    #             s3_parameters: {
    #               manifest_file_location: { # required
    #                 bucket: "S3Bucket", # required
    #                 key: "S3Key", # required
    #               },
    #               role_arn: "RoleArn",
    #             },
    #             service_now_parameters: {
    #               site_base_url: "SiteBaseUrl", # required
    #             },
    #             snowflake_parameters: {
    #               host: "Host", # required
    #               database: "Database", # required
    #               warehouse: "Warehouse", # required
    #               authentication_type: "PASSWORD", # accepts PASSWORD, TOKEN, X509
    #               database_access_control_role: "DatabaseAccessControlRole",
    #               o_auth_parameters: {
    #                 token_provider_url: "TokenProviderUrl", # required
    #                 o_auth_scope: "OAuthScope",
    #                 identity_provider_vpc_connection_properties: {
    #                   vpc_connection_arn: "Arn", # required
    #                 },
    #                 identity_provider_resource_uri: "IdentityProviderResourceUri",
    #               },
    #             },
    #             spark_parameters: {
    #               host: "Host", # required
    #               port: 1, # required
    #             },
    #             sql_server_parameters: {
    #               host: "Host", # required
    #               port: 1, # required
    #               database: "Database", # required
    #             },
    #             teradata_parameters: {
    #               host: "Host", # required
    #               port: 1, # required
    #               database: "Database", # required
    #             },
    #             twitter_parameters: {
    #               query: "Query", # required
    #               max_rows: 1, # required
    #             },
    #             amazon_open_search_parameters: {
    #               domain: "Domain", # required
    #             },
    #             exasol_parameters: {
    #               host: "Host", # required
    #               port: 1, # required
    #             },
    #             databricks_parameters: {
    #               host: "Host", # required
    #               port: 1, # required
    #               sql_endpoint_path: "SqlEndpointPath", # required
    #             },
    #             starburst_parameters: {
    #               host: "Host", # required
    #               port: 1, # required
    #               catalog: "Catalog", # required
    #               product_type: "GALAXY", # accepts GALAXY, ENTERPRISE
    #               database_access_control_role: "DatabaseAccessControlRole",
    #               authentication_type: "PASSWORD", # accepts PASSWORD, TOKEN, X509
    #               o_auth_parameters: {
    #                 token_provider_url: "TokenProviderUrl", # required
    #                 o_auth_scope: "OAuthScope",
    #                 identity_provider_vpc_connection_properties: {
    #                   vpc_connection_arn: "Arn", # required
    #                 },
    #                 identity_provider_resource_uri: "IdentityProviderResourceUri",
    #               },
    #             },
    #             trino_parameters: {
    #               host: "Host", # required
    #               port: 1, # required
    #               catalog: "Catalog", # required
    #             },
    #             big_query_parameters: {
    #               project_id: "ProjectId", # required
    #               data_set_region: "DataSetRegion",
    #             },
    #             impala_parameters: {
    #               host: "Host", # required
    #               port: 1, # required
    #               database: "Database",
    #               sql_endpoint_path: "SqlEndpointPath", # required
    #             },
    #             custom_connection_parameters: {
    #               connection_type: "String",
    #             },
    #           },
    #         ],
    #       },
    #       copy_source_arn: "CopySourceArn",
    #       secret_arn: "SecretArn",
    #     },
    #     vpc_connection_properties: {
    #       vpc_connection_arn: "Arn", # required
    #     },
    #     ssl_properties: {
    #       disable_ssl: false,
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.data_source_id #=> String
    #   resp.update_status #=> String, one of "CREATION_IN_PROGRESS", "CREATION_SUCCESSFUL", "CREATION_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_SUCCESSFUL", "UPDATE_FAILED", "DELETED"
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateDataSource AWS API Documentation
    #
    # @overload update_data_source(params = {})
    # @param [Hash] params ({})
    def update_data_source(params = {}, options = {})
      req = build_request(:update_data_source, params)
      req.send_request(options)
    end

    # Updates the permissions to a data source.
    #
    # @option params [required, String] :aws_account_id
    #   The Amazon Web Services account ID.
    #
    # @option params [required, String] :data_source_id
    #   The ID of the data source. This ID is unique per Amazon Web Services
    #   Region for each Amazon Web Services account.
    #
    # @option params [Array<Types::ResourcePermission>] :grant_permissions
    #   A list of resource permissions that you want to grant on the data
    #   source.
    #
    # @option params [Array<Types::ResourcePermission>] :revoke_permissions
    #   A list of resource permissions that you want to revoke on the data
    #   source.
    #
    # @return [Types::UpdateDataSourcePermissionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateDataSourcePermissionsResponse#data_source_arn #data_source_arn} => String
    #   * {Types::UpdateDataSourcePermissionsResponse#data_source_id #data_source_id} => String
    #   * {Types::UpdateDataSourcePermissionsResponse#request_id #request_id} => String
    #   * {Types::UpdateDataSourcePermissionsResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_data_source_permissions({
    #     aws_account_id: "AwsAccountId", # required
    #     data_source_id: "ResourceId", # required
    #     grant_permissions: [
    #       {
    #         principal: "Principal", # required
    #         actions: ["String"], # required
    #       },
    #     ],
    #     revoke_permissions: [
    #       {
    #         principal: "Principal", # required
    #         actions: ["String"], # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.data_source_arn #=> String
    #   resp.data_source_id #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateDataSourcePermissions AWS API Documentation
    #
    # @overload update_data_source_permissions(params = {})
    # @param [Hash] params ({})
    def update_data_source_permissions(params = {}, options = {})
      req = build_request(:update_data_source_permissions, params)
      req.send_request(options)
    end

    # Updates a Amazon Q Business application that is linked to a QuickSight
    # account.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the QuickSight account that is connected to the Amazon Q
    #   Business application that you want to update.
    #
    # @option params [String] :namespace
    #   The QuickSight namespace that contains the linked Amazon Q Business
    #   application. If this field is left blank, the default namespace is
    #   used. Currently, the default namespace is the only valid value for
    #   this parameter.
    #
    # @option params [required, String] :application_id
    #   The ID of the Amazon Q Business application that you want to update.
    #
    # @return [Types::UpdateDefaultQBusinessApplicationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateDefaultQBusinessApplicationResponse#request_id #request_id} => String
    #   * {Types::UpdateDefaultQBusinessApplicationResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_default_q_business_application({
    #     aws_account_id: "AwsAccountId", # required
    #     namespace: "Namespace",
    #     application_id: "LimitedString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateDefaultQBusinessApplication AWS API Documentation
    #
    # @overload update_default_q_business_application(params = {})
    # @param [Hash] params ({})
    def update_default_q_business_application(params = {}, options = {})
      req = build_request(:update_default_q_business_application, params)
      req.send_request(options)
    end

    # Updates the name of a folder.
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the Amazon Web Services account that contains the folder to
    #   update.
    #
    # @option params [required, String] :folder_id
    #   The ID of the folder.
    #
    # @option params [required, String] :name
    #   The name of the folder.
    #
    # @return [Types::UpdateFolderResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateFolderResponse#status #status} => Integer
    #   * {Types::UpdateFolderResponse#arn #arn} => String
    #   * {Types::UpdateFolderResponse#folder_id #folder_id} => String
    #   * {Types::UpdateFolderResponse#request_id #request_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_folder({
    #     aws_account_id: "AwsAccountId", # required
    #     folder_id: "RestrictiveResourceId", # required
    #     name: "FolderName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> Integer
    #   resp.arn #=> String
    #   resp.folder_id #=> String
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateFolder AWS API Documentation
    #
    # @overload update_folder(params = {})
    # @param [Hash] params ({})
    def update_folder(params = {}, options = {})
      req = build_request(:update_folder, params)
      req.send_request(options)
    end

    # Updates permissions of a folder.
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the Amazon Web Services account that contains the folder to
    #   update.
    #
    # @option params [required, String] :folder_id
    #   The ID of the folder.
    #
    # @option params [Array<Types::ResourcePermission>] :grant_permissions
    #   The permissions that you want to grant on a resource. Namespace ARNs
    #   are not supported `Principal` values for folder permissions.
    #
    # @option params [Array<Types::ResourcePermission>] :revoke_permissions
    #   The permissions that you want to revoke from a resource. Namespace
    #   ARNs are not supported `Principal` values for folder permissions.
    #
    # @return [Types::UpdateFolderPermissionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateFolderPermissionsResponse#status #status} => Integer
    #   * {Types::UpdateFolderPermissionsResponse#arn #arn} => String
    #   * {Types::UpdateFolderPermissionsResponse#folder_id #folder_id} => String
    #   * {Types::UpdateFolderPermissionsResponse#permissions #permissions} => Array&lt;Types::ResourcePermission&gt;
    #   * {Types::UpdateFolderPermissionsResponse#request_id #request_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_folder_permissions({
    #     aws_account_id: "AwsAccountId", # required
    #     folder_id: "RestrictiveResourceId", # required
    #     grant_permissions: [
    #       {
    #         principal: "Principal", # required
    #         actions: ["String"], # required
    #       },
    #     ],
    #     revoke_permissions: [
    #       {
    #         principal: "Principal", # required
    #         actions: ["String"], # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> Integer
    #   resp.arn #=> String
    #   resp.folder_id #=> String
    #   resp.permissions #=> Array
    #   resp.permissions[0].principal #=> String
    #   resp.permissions[0].actions #=> Array
    #   resp.permissions[0].actions[0] #=> String
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateFolderPermissions AWS API Documentation
    #
    # @overload update_folder_permissions(params = {})
    # @param [Hash] params ({})
    def update_folder_permissions(params = {}, options = {})
      req = build_request(:update_folder_permissions, params)
      req.send_request(options)
    end

    # Changes a group description.
    #
    # @option params [required, String] :group_name
    #   The name of the group that you want to update.
    #
    # @option params [String] :description
    #   The description for the group that you want to update.
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the Amazon Web Services account that the group is in.
    #   Currently, you use the ID for the Amazon Web Services account that
    #   contains your Amazon QuickSight account.
    #
    # @option params [required, String] :namespace
    #   The namespace of the group that you want to update.
    #
    # @return [Types::UpdateGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateGroupResponse#group #group} => Types::Group
    #   * {Types::UpdateGroupResponse#request_id #request_id} => String
    #   * {Types::UpdateGroupResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_group({
    #     group_name: "GroupName", # required
    #     description: "GroupDescription",
    #     aws_account_id: "AwsAccountId", # required
    #     namespace: "Namespace", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.group.arn #=> String
    #   resp.group.group_name #=> String
    #   resp.group.description #=> String
    #   resp.group.principal_id #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateGroup AWS API Documentation
    #
    # @overload update_group(params = {})
    # @param [Hash] params ({})
    def update_group(params = {}, options = {})
      req = build_request(:update_group, params)
      req.send_request(options)
    end

    # Updates an existing IAM policy assignment. This operation updates only
    # the optional parameter or parameters that are specified in the
    # request. This overwrites all of the users included in `Identities`.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that contains the IAM policy
    #   assignment.
    #
    # @option params [required, String] :assignment_name
    #   The name of the assignment, also called a rule. The name must be
    #   unique within the Amazon Web Services account.
    #
    # @option params [required, String] :namespace
    #   The namespace of the assignment.
    #
    # @option params [String] :assignment_status
    #   The status of the assignment. Possible values are as follows:
    #
    #   * `ENABLED` - Anything specified in this assignment is used when
    #     creating the data source.
    #
    #   * `DISABLED` - This assignment isn't used when creating the data
    #     source.
    #
    #   * `DRAFT` - This assignment is an unfinished draft and isn't used
    #     when creating the data source.
    #
    # @option params [String] :policy_arn
    #   The ARN for the IAM policy to apply to the QuickSight users and groups
    #   specified in this assignment.
    #
    # @option params [Hash<String,Array>] :identities
    #   The QuickSight users, groups, or both that you want to assign the
    #   policy to.
    #
    # @return [Types::UpdateIAMPolicyAssignmentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateIAMPolicyAssignmentResponse#assignment_name #assignment_name} => String
    #   * {Types::UpdateIAMPolicyAssignmentResponse#assignment_id #assignment_id} => String
    #   * {Types::UpdateIAMPolicyAssignmentResponse#policy_arn #policy_arn} => String
    #   * {Types::UpdateIAMPolicyAssignmentResponse#identities #identities} => Hash&lt;String,Array&lt;String&gt;&gt;
    #   * {Types::UpdateIAMPolicyAssignmentResponse#assignment_status #assignment_status} => String
    #   * {Types::UpdateIAMPolicyAssignmentResponse#request_id #request_id} => String
    #   * {Types::UpdateIAMPolicyAssignmentResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_iam_policy_assignment({
    #     aws_account_id: "AwsAccountId", # required
    #     assignment_name: "IAMPolicyAssignmentName", # required
    #     namespace: "Namespace", # required
    #     assignment_status: "ENABLED", # accepts ENABLED, DRAFT, DISABLED
    #     policy_arn: "Arn",
    #     identities: {
    #       "String" => ["IdentityName"],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.assignment_name #=> String
    #   resp.assignment_id #=> String
    #   resp.policy_arn #=> String
    #   resp.identities #=> Hash
    #   resp.identities["String"] #=> Array
    #   resp.identities["String"][0] #=> String
    #   resp.assignment_status #=> String, one of "ENABLED", "DRAFT", "DISABLED"
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateIAMPolicyAssignment AWS API Documentation
    #
    # @overload update_iam_policy_assignment(params = {})
    # @param [Hash] params ({})
    def update_iam_policy_assignment(params = {}, options = {})
      req = build_request(:update_iam_policy_assignment, params)
      req.send_request(options)
    end

    # Adds or updates services and authorized targets to configure what the
    # QuickSight IAM Identity Center application can access.
    #
    # This operation is only supported for QuickSight accounts using IAM
    # Identity Center
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that contains the identity
    #   propagation configuration that you want to update.
    #
    # @option params [required, String] :service
    #   The name of the Amazon Web Services service that contains the
    #   authorized targets that you want to add or update.
    #
    # @option params [Array<String>] :authorized_targets
    #   Specifies a list of application ARNs that represent the authorized
    #   targets for a service.
    #
    # @return [Types::UpdateIdentityPropagationConfigResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateIdentityPropagationConfigResponse#request_id #request_id} => String
    #   * {Types::UpdateIdentityPropagationConfigResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_identity_propagation_config({
    #     aws_account_id: "AwsAccountId", # required
    #     service: "REDSHIFT", # required, accepts REDSHIFT, QBUSINESS, ATHENA
    #     authorized_targets: ["String"],
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateIdentityPropagationConfig AWS API Documentation
    #
    # @overload update_identity_propagation_config(params = {})
    # @param [Hash] params ({})
    def update_identity_propagation_config(params = {}, options = {})
      req = build_request(:update_identity_propagation_config, params)
      req.send_request(options)
    end

    # Updates the content and status of IP rules. Traffic from a source is
    # allowed when the source satisfies either the `IpRestrictionRule`,
    # `VpcIdRestrictionRule`, or `VpcEndpointIdRestrictionRule`. To use this
    # operation, you must provide the entire map of rules. You can use the
    # `DescribeIpRestriction` operation to get the current rule map.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that contains the IP rules.
    #
    # @option params [Hash<String,String>] :ip_restriction_rule_map
    #   A map that describes the updated IP rules with CIDR ranges and
    #   descriptions.
    #
    # @option params [Hash<String,String>] :vpc_id_restriction_rule_map
    #   A map of VPC IDs and their corresponding rules. When you configure
    #   this parameter, traffic from all VPC endpoints that are present in the
    #   specified VPC is allowed.
    #
    # @option params [Hash<String,String>] :vpc_endpoint_id_restriction_rule_map
    #   A map of allowed VPC endpoint IDs and their corresponding rule
    #   descriptions.
    #
    # @option params [Boolean] :enabled
    #   A value that specifies whether IP rules are turned on.
    #
    # @return [Types::UpdateIpRestrictionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateIpRestrictionResponse#aws_account_id #aws_account_id} => String
    #   * {Types::UpdateIpRestrictionResponse#request_id #request_id} => String
    #   * {Types::UpdateIpRestrictionResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_ip_restriction({
    #     aws_account_id: "AwsAccountId", # required
    #     ip_restriction_rule_map: {
    #       "CIDR" => "IpRestrictionRuleDescription",
    #     },
    #     vpc_id_restriction_rule_map: {
    #       "VpcId" => "VpcIdRestrictionRuleDescription",
    #     },
    #     vpc_endpoint_id_restriction_rule_map: {
    #       "VpcEndpointId" => "VpcEndpointIdRestrictionRuleDescription",
    #     },
    #     enabled: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.aws_account_id #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateIpRestriction AWS API Documentation
    #
    # @overload update_ip_restriction(params = {})
    # @param [Hash] params ({})
    def update_ip_restriction(params = {}, options = {})
      req = build_request(:update_ip_restriction, params)
      req.send_request(options)
    end

    # Updates a customer managed key in a QuickSight account.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that contains the customer
    #   managed key registration that you want to update.
    #
    # @option params [required, Array<Types::RegisteredCustomerManagedKey>] :key_registration
    #   A list of `RegisteredCustomerManagedKey` objects to be updated to the
    #   QuickSight account.
    #
    # @return [Types::UpdateKeyRegistrationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateKeyRegistrationResponse#failed_key_registration #failed_key_registration} => Array&lt;Types::FailedKeyRegistrationEntry&gt;
    #   * {Types::UpdateKeyRegistrationResponse#successful_key_registration #successful_key_registration} => Array&lt;Types::SuccessfulKeyRegistrationEntry&gt;
    #   * {Types::UpdateKeyRegistrationResponse#request_id #request_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_key_registration({
    #     aws_account_id: "AwsAccountId", # required
    #     key_registration: [ # required
    #       {
    #         key_arn: "String",
    #         default_key: false,
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.failed_key_registration #=> Array
    #   resp.failed_key_registration[0].key_arn #=> String
    #   resp.failed_key_registration[0].message #=> String
    #   resp.failed_key_registration[0].status_code #=> Integer
    #   resp.failed_key_registration[0].sender_fault #=> Boolean
    #   resp.successful_key_registration #=> Array
    #   resp.successful_key_registration[0].key_arn #=> String
    #   resp.successful_key_registration[0].status_code #=> Integer
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateKeyRegistration AWS API Documentation
    #
    # @overload update_key_registration(params = {})
    # @param [Hash] params ({})
    def update_key_registration(params = {}, options = {})
      req = build_request(:update_key_registration, params)
      req.send_request(options)
    end

    # Use the `UpdatePublicSharingSettings` operation to turn on or turn off
    # the public sharing settings of an QuickSight dashboard.
    #
    # To use this operation, turn on session capacity pricing for your
    # QuickSight account.
    #
    # Before you can turn on public sharing on your account, make sure to
    # give public sharing permissions to an administrative user in the
    # Identity and Access Management (IAM) console. For more information on
    # using IAM with QuickSight, see [Using QuickSight with IAM][1] in the
    # *QuickSight User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/quicksight/latest/user/security_iam_service-with-iam.html
    #
    # @option params [required, String] :aws_account_id
    #   The Amazon Web Services account ID associated with your QuickSight
    #   subscription.
    #
    # @option params [Boolean] :public_sharing_enabled
    #   A Boolean value that indicates whether public sharing is turned on for
    #   an QuickSight account.
    #
    # @return [Types::UpdatePublicSharingSettingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdatePublicSharingSettingsResponse#request_id #request_id} => String
    #   * {Types::UpdatePublicSharingSettingsResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_public_sharing_settings({
    #     aws_account_id: "AwsAccountId", # required
    #     public_sharing_enabled: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdatePublicSharingSettings AWS API Documentation
    #
    # @overload update_public_sharing_settings(params = {})
    # @param [Hash] params ({})
    def update_public_sharing_settings(params = {}, options = {})
      req = build_request(:update_public_sharing_settings, params)
      req.send_request(options)
    end

    # Updates a personalization configuration.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account account that contains the
    #   personalization configuration that the user wants to update.
    #
    # @option params [required, String] :personalization_mode
    #   An option to allow QuickSight to customize data stories with user
    #   specific metadata, specifically location and job information, in your
    #   IAM Identity Center instance.
    #
    # @return [Types::UpdateQPersonalizationConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateQPersonalizationConfigurationResponse#personalization_mode #personalization_mode} => String
    #   * {Types::UpdateQPersonalizationConfigurationResponse#request_id #request_id} => String
    #   * {Types::UpdateQPersonalizationConfigurationResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_q_personalization_configuration({
    #     aws_account_id: "AwsAccountId", # required
    #     personalization_mode: "ENABLED", # required, accepts ENABLED, DISABLED
    #   })
    #
    # @example Response structure
    #
    #   resp.personalization_mode #=> String, one of "ENABLED", "DISABLED"
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateQPersonalizationConfiguration AWS API Documentation
    #
    # @overload update_q_personalization_configuration(params = {})
    # @param [Hash] params ({})
    def update_q_personalization_configuration(params = {}, options = {})
      req = build_request(:update_q_personalization_configuration, params)
      req.send_request(options)
    end

    # Updates the state of a QuickSight Q Search configuration.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that contains the QuickSight
    #   Q Search configuration that you want to update.
    #
    # @option params [required, String] :q_search_status
    #   The status of the QuickSight Q Search configuration that the user
    #   wants to update.
    #
    # @return [Types::UpdateQuickSightQSearchConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateQuickSightQSearchConfigurationResponse#q_search_status #q_search_status} => String
    #   * {Types::UpdateQuickSightQSearchConfigurationResponse#request_id #request_id} => String
    #   * {Types::UpdateQuickSightQSearchConfigurationResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_quick_sight_q_search_configuration({
    #     aws_account_id: "AwsAccountId", # required
    #     q_search_status: "ENABLED", # required, accepts ENABLED, DISABLED
    #   })
    #
    # @example Response structure
    #
    #   resp.q_search_status #=> String, one of "ENABLED", "DISABLED"
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateQuickSightQSearchConfiguration AWS API Documentation
    #
    # @overload update_quick_sight_q_search_configuration(params = {})
    # @param [Hash] params ({})
    def update_quick_sight_q_search_configuration(params = {}, options = {})
      req = build_request(:update_quick_sight_q_search_configuration, params)
      req.send_request(options)
    end

    # Updates a refresh schedule for a dataset.
    #
    # @option params [required, String] :data_set_id
    #   The ID of the dataset.
    #
    # @option params [required, String] :aws_account_id
    #   The Amazon Web Services account ID.
    #
    # @option params [required, Types::RefreshSchedule] :schedule
    #   The refresh schedule.
    #
    # @return [Types::UpdateRefreshScheduleResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateRefreshScheduleResponse#status #status} => Integer
    #   * {Types::UpdateRefreshScheduleResponse#request_id #request_id} => String
    #   * {Types::UpdateRefreshScheduleResponse#schedule_id #schedule_id} => String
    #   * {Types::UpdateRefreshScheduleResponse#arn #arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_refresh_schedule({
    #     data_set_id: "ResourceId", # required
    #     aws_account_id: "AwsAccountId", # required
    #     schedule: { # required
    #       schedule_id: "String", # required
    #       schedule_frequency: { # required
    #         interval: "MINUTE15", # required, accepts MINUTE15, MINUTE30, HOURLY, DAILY, WEEKLY, MONTHLY
    #         refresh_on_day: {
    #           day_of_week: "SUNDAY", # accepts SUNDAY, MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY, SATURDAY
    #           day_of_month: "DayOfMonth",
    #         },
    #         timezone: "String",
    #         time_of_the_day: "String",
    #       },
    #       start_after_date_time: Time.now,
    #       refresh_type: "INCREMENTAL_REFRESH", # required, accepts INCREMENTAL_REFRESH, FULL_REFRESH
    #       arn: "Arn",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> Integer
    #   resp.request_id #=> String
    #   resp.schedule_id #=> String
    #   resp.arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateRefreshSchedule AWS API Documentation
    #
    # @overload update_refresh_schedule(params = {})
    # @param [Hash] params ({})
    def update_refresh_schedule(params = {}, options = {})
      req = build_request(:update_refresh_schedule, params)
      req.send_request(options)
    end

    # Updates the custom permissions that are associated with a role.
    #
    # @option params [required, String] :custom_permissions_name
    #   The name of the custom permission that you want to update the role
    #   with.
    #
    # @option params [required, String] :role
    #   The name of role tht you want to update.
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the Amazon Web Services account that you want to create a
    #   group in. The Amazon Web Services account ID that you provide must be
    #   the same Amazon Web Services account that contains your Amazon
    #   QuickSight account.
    #
    # @option params [required, String] :namespace
    #   The namespace that contains the role that you want to update.
    #
    # @return [Types::UpdateRoleCustomPermissionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateRoleCustomPermissionResponse#request_id #request_id} => String
    #   * {Types::UpdateRoleCustomPermissionResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_role_custom_permission({
    #     custom_permissions_name: "RoleName", # required
    #     role: "ADMIN", # required, accepts ADMIN, AUTHOR, READER, ADMIN_PRO, AUTHOR_PRO, READER_PRO
    #     aws_account_id: "AwsAccountId", # required
    #     namespace: "Namespace", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateRoleCustomPermission AWS API Documentation
    #
    # @overload update_role_custom_permission(params = {})
    # @param [Hash] params ({})
    def update_role_custom_permission(params = {}, options = {})
      req = build_request(:update_role_custom_permission, params)
      req.send_request(options)
    end

    # Updates the SPICE capacity configuration for a QuickSight account.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that contains the SPICE
    #   configuration that you want to update.
    #
    # @option params [required, String] :purchase_mode
    #   Determines how SPICE capacity can be purchased. The following options
    #   are available.
    #
    #   * `MANUAL`: SPICE capacity can only be purchased manually.
    #
    #   * `AUTO_PURCHASE`: Extra SPICE capacity is automatically purchased on
    #     your behalf as needed. SPICE capacity can also be purchased manually
    #     with this option.
    #
    # @return [Types::UpdateSPICECapacityConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateSPICECapacityConfigurationResponse#request_id #request_id} => String
    #   * {Types::UpdateSPICECapacityConfigurationResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_spice_capacity_configuration({
    #     aws_account_id: "AwsAccountId", # required
    #     purchase_mode: "MANUAL", # required, accepts MANUAL, AUTO_PURCHASE
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateSPICECapacityConfiguration AWS API Documentation
    #
    # @overload update_spice_capacity_configuration(params = {})
    # @param [Hash] params ({})
    def update_spice_capacity_configuration(params = {}, options = {})
      req = build_request(:update_spice_capacity_configuration, params)
      req.send_request(options)
    end

    # Updates a template from an existing Amazon QuickSight analysis or
    # another template.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that contains the template
    #   that you're updating.
    #
    # @option params [required, String] :template_id
    #   The ID for the template.
    #
    # @option params [Types::TemplateSourceEntity] :source_entity
    #   The entity that you are using as a source when you update the
    #   template. In `SourceEntity`, you specify the type of object you're
    #   using as source: `SourceTemplate` for a template or `SourceAnalysis`
    #   for an analysis. Both of these require an Amazon Resource Name (ARN).
    #   For `SourceTemplate`, specify the ARN of the source template. For
    #   `SourceAnalysis`, specify the ARN of the source analysis. The
    #   `SourceTemplate` ARN can contain any Amazon Web Services account and
    #   any QuickSight-supported Amazon Web Services Region;.
    #
    #   Use the `DataSetReferences` entity within `SourceTemplate` or
    #   `SourceAnalysis` to list the replacement datasets for the placeholders
    #   listed in the original. The schema in each dataset must match its
    #   placeholder.
    #
    # @option params [String] :version_description
    #   A description of the current template version that is being updated.
    #   Every time you call `UpdateTemplate`, you create a new version of the
    #   template. Each version of the template maintains a description of the
    #   version in the `VersionDescription` field.
    #
    # @option params [String] :name
    #   The name for the template.
    #
    # @option params [Types::TemplateVersionDefinition] :definition
    #   The definition of a template.
    #
    #   A definition is the data model of all features in a Dashboard,
    #   Template, or Analysis.
    #
    # @option params [Types::ValidationStrategy] :validation_strategy
    #   The option to relax the validation needed to update a template with
    #   definition objects. This skips the validation step for specific
    #   errors.
    #
    # @return [Types::UpdateTemplateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateTemplateResponse#template_id #template_id} => String
    #   * {Types::UpdateTemplateResponse#arn #arn} => String
    #   * {Types::UpdateTemplateResponse#version_arn #version_arn} => String
    #   * {Types::UpdateTemplateResponse#creation_status #creation_status} => String
    #   * {Types::UpdateTemplateResponse#status #status} => Integer
    #   * {Types::UpdateTemplateResponse#request_id #request_id} => String
    #
    # @example Response structure
    #
    #   resp.template_id #=> String
    #   resp.arn #=> String
    #   resp.version_arn #=> String
    #   resp.creation_status #=> String, one of "CREATION_IN_PROGRESS", "CREATION_SUCCESSFUL", "CREATION_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_SUCCESSFUL", "UPDATE_FAILED", "DELETED"
    #   resp.status #=> Integer
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateTemplate AWS API Documentation
    #
    # @overload update_template(params = {})
    # @param [Hash] params ({})
    def update_template(params = {}, options = {})
      req = build_request(:update_template, params)
      req.send_request(options)
    end

    # Updates the template alias of a template.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that contains the template
    #   alias that you're updating.
    #
    # @option params [required, String] :template_id
    #   The ID for the template.
    #
    # @option params [required, String] :alias_name
    #   The alias of the template that you want to update. If you name a
    #   specific alias, you update the version that the alias points to. You
    #   can specify the latest version of the template by providing the
    #   keyword `$LATEST` in the `AliasName` parameter. The keyword
    #   `$PUBLISHED` doesn't apply to templates.
    #
    # @option params [required, Integer] :template_version_number
    #   The version number of the template.
    #
    # @return [Types::UpdateTemplateAliasResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateTemplateAliasResponse#template_alias #template_alias} => Types::TemplateAlias
    #   * {Types::UpdateTemplateAliasResponse#status #status} => Integer
    #   * {Types::UpdateTemplateAliasResponse#request_id #request_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_template_alias({
    #     aws_account_id: "AwsAccountId", # required
    #     template_id: "ShortRestrictiveResourceId", # required
    #     alias_name: "AliasName", # required
    #     template_version_number: 1, # required
    #   })
    #
    # @example Response structure
    #
    #   resp.template_alias.alias_name #=> String
    #   resp.template_alias.arn #=> String
    #   resp.template_alias.template_version_number #=> Integer
    #   resp.status #=> Integer
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateTemplateAlias AWS API Documentation
    #
    # @overload update_template_alias(params = {})
    # @param [Hash] params ({})
    def update_template_alias(params = {}, options = {})
      req = build_request(:update_template_alias, params)
      req.send_request(options)
    end

    # Updates the resource permissions for a template.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that contains the template.
    #
    # @option params [required, String] :template_id
    #   The ID for the template.
    #
    # @option params [Array<Types::ResourcePermission>] :grant_permissions
    #   A list of resource permissions to be granted on the template.
    #
    # @option params [Array<Types::ResourcePermission>] :revoke_permissions
    #   A list of resource permissions to be revoked from the template.
    #
    # @return [Types::UpdateTemplatePermissionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateTemplatePermissionsResponse#template_id #template_id} => String
    #   * {Types::UpdateTemplatePermissionsResponse#template_arn #template_arn} => String
    #   * {Types::UpdateTemplatePermissionsResponse#permissions #permissions} => Array&lt;Types::ResourcePermission&gt;
    #   * {Types::UpdateTemplatePermissionsResponse#request_id #request_id} => String
    #   * {Types::UpdateTemplatePermissionsResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_template_permissions({
    #     aws_account_id: "AwsAccountId", # required
    #     template_id: "ShortRestrictiveResourceId", # required
    #     grant_permissions: [
    #       {
    #         principal: "Principal", # required
    #         actions: ["String"], # required
    #       },
    #     ],
    #     revoke_permissions: [
    #       {
    #         principal: "Principal", # required
    #         actions: ["String"], # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.template_id #=> String
    #   resp.template_arn #=> String
    #   resp.permissions #=> Array
    #   resp.permissions[0].principal #=> String
    #   resp.permissions[0].actions #=> Array
    #   resp.permissions[0].actions[0] #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateTemplatePermissions AWS API Documentation
    #
    # @overload update_template_permissions(params = {})
    # @param [Hash] params ({})
    def update_template_permissions(params = {}, options = {})
      req = build_request(:update_template_permissions, params)
      req.send_request(options)
    end

    # Updates a theme.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that contains the theme that
    #   you're updating.
    #
    # @option params [required, String] :theme_id
    #   The ID for the theme.
    #
    # @option params [String] :name
    #   The name for the theme.
    #
    # @option params [required, String] :base_theme_id
    #   The theme ID, defined by Amazon QuickSight, that a custom theme
    #   inherits from. All themes initially inherit from a default QuickSight
    #   theme.
    #
    # @option params [String] :version_description
    #   A description of the theme version that you're updating Every time
    #   that you call `UpdateTheme`, you create a new version of the theme.
    #   Each version of the theme maintains a description of the version in
    #   `VersionDescription`.
    #
    # @option params [Types::ThemeConfiguration] :configuration
    #   The theme configuration, which contains the theme display properties.
    #
    # @return [Types::UpdateThemeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateThemeResponse#theme_id #theme_id} => String
    #   * {Types::UpdateThemeResponse#arn #arn} => String
    #   * {Types::UpdateThemeResponse#version_arn #version_arn} => String
    #   * {Types::UpdateThemeResponse#creation_status #creation_status} => String
    #   * {Types::UpdateThemeResponse#status #status} => Integer
    #   * {Types::UpdateThemeResponse#request_id #request_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_theme({
    #     aws_account_id: "AwsAccountId", # required
    #     theme_id: "ShortRestrictiveResourceId", # required
    #     name: "ThemeName",
    #     base_theme_id: "ShortRestrictiveResourceId", # required
    #     version_description: "VersionDescription",
    #     configuration: {
    #       data_color_palette: {
    #         colors: ["HexColor"],
    #         min_max_gradient: ["HexColor"],
    #         empty_fill_color: "HexColor",
    #       },
    #       ui_color_palette: {
    #         primary_foreground: "HexColor",
    #         primary_background: "HexColor",
    #         secondary_foreground: "HexColor",
    #         secondary_background: "HexColor",
    #         accent: "HexColor",
    #         accent_foreground: "HexColor",
    #         danger: "HexColor",
    #         danger_foreground: "HexColor",
    #         warning: "HexColor",
    #         warning_foreground: "HexColor",
    #         success: "HexColor",
    #         success_foreground: "HexColor",
    #         dimension: "HexColor",
    #         dimension_foreground: "HexColor",
    #         measure: "HexColor",
    #         measure_foreground: "HexColor",
    #       },
    #       sheet: {
    #         tile: {
    #           border: {
    #             show: false,
    #           },
    #         },
    #         tile_layout: {
    #           gutter: {
    #             show: false,
    #           },
    #           margin: {
    #             show: false,
    #           },
    #         },
    #       },
    #       typography: {
    #         font_families: [
    #           {
    #             font_family: "String",
    #           },
    #         ],
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.theme_id #=> String
    #   resp.arn #=> String
    #   resp.version_arn #=> String
    #   resp.creation_status #=> String, one of "CREATION_IN_PROGRESS", "CREATION_SUCCESSFUL", "CREATION_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_SUCCESSFUL", "UPDATE_FAILED", "DELETED"
    #   resp.status #=> Integer
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateTheme AWS API Documentation
    #
    # @overload update_theme(params = {})
    # @param [Hash] params ({})
    def update_theme(params = {}, options = {})
      req = build_request(:update_theme, params)
      req.send_request(options)
    end

    # Updates an alias of a theme.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that contains the theme
    #   alias that you're updating.
    #
    # @option params [required, String] :theme_id
    #   The ID for the theme.
    #
    # @option params [required, String] :alias_name
    #   The name of the theme alias that you want to update.
    #
    # @option params [required, Integer] :theme_version_number
    #   The version number of the theme that the alias should reference.
    #
    # @return [Types::UpdateThemeAliasResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateThemeAliasResponse#theme_alias #theme_alias} => Types::ThemeAlias
    #   * {Types::UpdateThemeAliasResponse#status #status} => Integer
    #   * {Types::UpdateThemeAliasResponse#request_id #request_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_theme_alias({
    #     aws_account_id: "AwsAccountId", # required
    #     theme_id: "ShortRestrictiveResourceId", # required
    #     alias_name: "AliasName", # required
    #     theme_version_number: 1, # required
    #   })
    #
    # @example Response structure
    #
    #   resp.theme_alias.arn #=> String
    #   resp.theme_alias.alias_name #=> String
    #   resp.theme_alias.theme_version_number #=> Integer
    #   resp.status #=> Integer
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateThemeAlias AWS API Documentation
    #
    # @overload update_theme_alias(params = {})
    # @param [Hash] params ({})
    def update_theme_alias(params = {}, options = {})
      req = build_request(:update_theme_alias, params)
      req.send_request(options)
    end

    # Updates the resource permissions for a theme. Permissions apply to the
    # action to grant or revoke permissions on, for example
    # `"quicksight:DescribeTheme"`.
    #
    # Theme permissions apply in groupings. Valid groupings include the
    # following for the three levels of permissions, which are user, owner,
    # or no permissions:
    #
    # * User
    #
    #   * `"quicksight:DescribeTheme"`
    #
    #   * `"quicksight:DescribeThemeAlias"`
    #
    #   * `"quicksight:ListThemeAliases"`
    #
    #   * `"quicksight:ListThemeVersions"`
    # * Owner
    #
    #   * `"quicksight:DescribeTheme"`
    #
    #   * `"quicksight:DescribeThemeAlias"`
    #
    #   * `"quicksight:ListThemeAliases"`
    #
    #   * `"quicksight:ListThemeVersions"`
    #
    #   * `"quicksight:DeleteTheme"`
    #
    #   * `"quicksight:UpdateTheme"`
    #
    #   * `"quicksight:CreateThemeAlias"`
    #
    #   * `"quicksight:DeleteThemeAlias"`
    #
    #   * `"quicksight:UpdateThemeAlias"`
    #
    #   * `"quicksight:UpdateThemePermissions"`
    #
    #   * `"quicksight:DescribeThemePermissions"`
    # * To specify no permissions, omit the permissions list.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that contains the theme.
    #
    # @option params [required, String] :theme_id
    #   The ID for the theme.
    #
    # @option params [Array<Types::ResourcePermission>] :grant_permissions
    #   A list of resource permissions to be granted for the theme.
    #
    # @option params [Array<Types::ResourcePermission>] :revoke_permissions
    #   A list of resource permissions to be revoked from the theme.
    #
    # @return [Types::UpdateThemePermissionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateThemePermissionsResponse#theme_id #theme_id} => String
    #   * {Types::UpdateThemePermissionsResponse#theme_arn #theme_arn} => String
    #   * {Types::UpdateThemePermissionsResponse#permissions #permissions} => Array&lt;Types::ResourcePermission&gt;
    #   * {Types::UpdateThemePermissionsResponse#request_id #request_id} => String
    #   * {Types::UpdateThemePermissionsResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_theme_permissions({
    #     aws_account_id: "AwsAccountId", # required
    #     theme_id: "ShortRestrictiveResourceId", # required
    #     grant_permissions: [
    #       {
    #         principal: "Principal", # required
    #         actions: ["String"], # required
    #       },
    #     ],
    #     revoke_permissions: [
    #       {
    #         principal: "Principal", # required
    #         actions: ["String"], # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.theme_id #=> String
    #   resp.theme_arn #=> String
    #   resp.permissions #=> Array
    #   resp.permissions[0].principal #=> String
    #   resp.permissions[0].actions #=> Array
    #   resp.permissions[0].actions[0] #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateThemePermissions AWS API Documentation
    #
    # @overload update_theme_permissions(params = {})
    # @param [Hash] params ({})
    def update_theme_permissions(params = {}, options = {})
      req = build_request(:update_theme_permissions, params)
      req.send_request(options)
    end

    # Updates a topic.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that contains the topic that
    #   you want to update.
    #
    # @option params [required, String] :topic_id
    #   The ID of the topic that you want to modify. This ID is unique per
    #   Amazon Web Services Region for each Amazon Web Services account.
    #
    # @option params [required, Types::TopicDetails] :topic
    #   The definition of the topic that you want to update.
    #
    # @option params [Types::CustomInstructions] :custom_instructions
    #   Custom instructions for the topic.
    #
    # @return [Types::UpdateTopicResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateTopicResponse#topic_id #topic_id} => String
    #   * {Types::UpdateTopicResponse#arn #arn} => String
    #   * {Types::UpdateTopicResponse#refresh_arn #refresh_arn} => String
    #   * {Types::UpdateTopicResponse#request_id #request_id} => String
    #   * {Types::UpdateTopicResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_topic({
    #     aws_account_id: "AwsAccountId", # required
    #     topic_id: "TopicId", # required
    #     topic: { # required
    #       name: "ResourceName",
    #       description: "LimitedString",
    #       user_experience_version: "LEGACY", # accepts LEGACY, NEW_READER_EXPERIENCE
    #       data_sets: [
    #         {
    #           dataset_arn: "Arn", # required
    #           dataset_name: "LimitedString",
    #           dataset_description: "LimitedString",
    #           data_aggregation: {
    #             dataset_row_date_granularity: "SECOND", # accepts SECOND, MINUTE, HOUR, DAY, WEEK, MONTH, QUARTER, YEAR
    #             default_date_column_name: "LimitedString",
    #           },
    #           filters: [
    #             {
    #               filter_description: "LimitedString",
    #               filter_class: "ENFORCED_VALUE_FILTER", # accepts ENFORCED_VALUE_FILTER, CONDITIONAL_VALUE_FILTER, NAMED_VALUE_FILTER
    #               filter_name: "LimitedString", # required
    #               filter_synonyms: ["LimitedString"],
    #               operand_field_name: "LimitedString", # required
    #               filter_type: "CATEGORY_FILTER", # accepts CATEGORY_FILTER, NUMERIC_EQUALITY_FILTER, NUMERIC_RANGE_FILTER, DATE_RANGE_FILTER, RELATIVE_DATE_FILTER, NULL_FILTER
    #               category_filter: {
    #                 category_filter_function: "EXACT", # accepts EXACT, CONTAINS
    #                 category_filter_type: "CUSTOM_FILTER", # accepts CUSTOM_FILTER, CUSTOM_FILTER_LIST, FILTER_LIST
    #                 constant: {
    #                   constant_type: "SINGULAR", # accepts SINGULAR, RANGE, COLLECTIVE
    #                   singular_constant: "LimitedString",
    #                   collective_constant: {
    #                     value_list: ["String"],
    #                   },
    #                 },
    #                 inverse: false,
    #               },
    #               numeric_equality_filter: {
    #                 constant: {
    #                   constant_type: "SINGULAR", # accepts SINGULAR, RANGE, COLLECTIVE
    #                   singular_constant: "LimitedString",
    #                 },
    #                 aggregation: "NO_AGGREGATION", # accepts NO_AGGREGATION, SUM, AVERAGE, COUNT, DISTINCT_COUNT, MAX, MEDIAN, MIN, STDEV, STDEVP, VAR, VARP
    #               },
    #               numeric_range_filter: {
    #                 inclusive: false,
    #                 constant: {
    #                   constant_type: "SINGULAR", # accepts SINGULAR, RANGE, COLLECTIVE
    #                   range_constant: {
    #                     minimum: "LimitedString",
    #                     maximum: "LimitedString",
    #                   },
    #                 },
    #                 aggregation: "NO_AGGREGATION", # accepts NO_AGGREGATION, SUM, AVERAGE, COUNT, DISTINCT_COUNT, MAX, MEDIAN, MIN, STDEV, STDEVP, VAR, VARP
    #               },
    #               date_range_filter: {
    #                 inclusive: false,
    #                 constant: {
    #                   constant_type: "SINGULAR", # accepts SINGULAR, RANGE, COLLECTIVE
    #                   range_constant: {
    #                     minimum: "LimitedString",
    #                     maximum: "LimitedString",
    #                   },
    #                 },
    #               },
    #               relative_date_filter: {
    #                 time_granularity: "SECOND", # accepts SECOND, MINUTE, HOUR, DAY, WEEK, MONTH, QUARTER, YEAR
    #                 relative_date_filter_function: "PREVIOUS", # accepts PREVIOUS, THIS, LAST, NEXT, NOW
    #                 constant: {
    #                   constant_type: "SINGULAR", # accepts SINGULAR, RANGE, COLLECTIVE
    #                   singular_constant: "LimitedString",
    #                 },
    #               },
    #               null_filter: {
    #                 null_filter_type: "ALL_VALUES", # accepts ALL_VALUES, NON_NULLS_ONLY, NULLS_ONLY
    #                 constant: {
    #                   constant_type: "SINGULAR", # accepts SINGULAR, RANGE, COLLECTIVE
    #                   singular_constant: "LimitedString",
    #                 },
    #                 inverse: false,
    #               },
    #             },
    #           ],
    #           columns: [
    #             {
    #               column_name: "LimitedString", # required
    #               column_friendly_name: "LimitedString",
    #               column_description: "LimitedString",
    #               column_synonyms: ["LimitedString"],
    #               column_data_role: "DIMENSION", # accepts DIMENSION, MEASURE
    #               aggregation: "SUM", # accepts SUM, MAX, MIN, COUNT, DISTINCT_COUNT, AVERAGE, MEDIAN, STDEV, STDEVP, VAR, VARP
    #               is_included_in_topic: false,
    #               disable_indexing: false,
    #               comparative_order: {
    #                 use_ordering: "GREATER_IS_BETTER", # accepts GREATER_IS_BETTER, LESSER_IS_BETTER, SPECIFIED
    #                 specifed_order: ["String"],
    #                 treat_undefined_specified_values: "LEAST", # accepts LEAST, MOST
    #               },
    #               semantic_type: {
    #                 type_name: "LimitedString",
    #                 sub_type_name: "LimitedString",
    #                 type_parameters: {
    #                   "LimitedString" => "LimitedString",
    #                 },
    #                 truthy_cell_value: "SensitiveString",
    #                 truthy_cell_value_synonyms: ["SensitiveString"],
    #                 falsey_cell_value: "SensitiveString",
    #                 falsey_cell_value_synonyms: ["SensitiveString"],
    #               },
    #               time_granularity: "SECOND", # accepts SECOND, MINUTE, HOUR, DAY, WEEK, MONTH, QUARTER, YEAR
    #               allowed_aggregations: ["COUNT"], # accepts COUNT, DISTINCT_COUNT, MIN, MAX, MEDIAN, SUM, AVERAGE, STDEV, STDEVP, VAR, VARP, PERCENTILE
    #               not_allowed_aggregations: ["COUNT"], # accepts COUNT, DISTINCT_COUNT, MIN, MAX, MEDIAN, SUM, AVERAGE, STDEV, STDEVP, VAR, VARP, PERCENTILE
    #               default_formatting: {
    #                 display_format: "AUTO", # accepts AUTO, PERCENT, CURRENCY, NUMBER, DATE, STRING
    #                 display_format_options: {
    #                   use_blank_cell_format: false,
    #                   blank_cell_format: "LimitedString",
    #                   date_format: "LimitedString",
    #                   decimal_separator: "COMMA", # accepts COMMA, DOT
    #                   grouping_separator: "LimitedString",
    #                   use_grouping: false,
    #                   fraction_digits: 1,
    #                   prefix: "LimitedString",
    #                   suffix: "LimitedString",
    #                   unit_scaler: "NONE", # accepts NONE, AUTO, THOUSANDS, MILLIONS, BILLIONS, TRILLIONS, LAKHS, CRORES
    #                   negative_format: {
    #                     prefix: "LimitedString",
    #                     suffix: "LimitedString",
    #                   },
    #                   currency_symbol: "LimitedString",
    #                 },
    #               },
    #               never_aggregate_in_filter: false,
    #               cell_value_synonyms: [
    #                 {
    #                   cell_value: "LimitedString",
    #                   synonyms: ["String"],
    #                 },
    #               ],
    #               non_additive: false,
    #             },
    #           ],
    #           calculated_fields: [
    #             {
    #               calculated_field_name: "LimitedString", # required
    #               calculated_field_description: "LimitedString",
    #               expression: "Expression", # required
    #               calculated_field_synonyms: ["LimitedString"],
    #               is_included_in_topic: false,
    #               disable_indexing: false,
    #               column_data_role: "DIMENSION", # accepts DIMENSION, MEASURE
    #               time_granularity: "SECOND", # accepts SECOND, MINUTE, HOUR, DAY, WEEK, MONTH, QUARTER, YEAR
    #               default_formatting: {
    #                 display_format: "AUTO", # accepts AUTO, PERCENT, CURRENCY, NUMBER, DATE, STRING
    #                 display_format_options: {
    #                   use_blank_cell_format: false,
    #                   blank_cell_format: "LimitedString",
    #                   date_format: "LimitedString",
    #                   decimal_separator: "COMMA", # accepts COMMA, DOT
    #                   grouping_separator: "LimitedString",
    #                   use_grouping: false,
    #                   fraction_digits: 1,
    #                   prefix: "LimitedString",
    #                   suffix: "LimitedString",
    #                   unit_scaler: "NONE", # accepts NONE, AUTO, THOUSANDS, MILLIONS, BILLIONS, TRILLIONS, LAKHS, CRORES
    #                   negative_format: {
    #                     prefix: "LimitedString",
    #                     suffix: "LimitedString",
    #                   },
    #                   currency_symbol: "LimitedString",
    #                 },
    #               },
    #               aggregation: "SUM", # accepts SUM, MAX, MIN, COUNT, DISTINCT_COUNT, AVERAGE, MEDIAN, STDEV, STDEVP, VAR, VARP
    #               comparative_order: {
    #                 use_ordering: "GREATER_IS_BETTER", # accepts GREATER_IS_BETTER, LESSER_IS_BETTER, SPECIFIED
    #                 specifed_order: ["String"],
    #                 treat_undefined_specified_values: "LEAST", # accepts LEAST, MOST
    #               },
    #               semantic_type: {
    #                 type_name: "LimitedString",
    #                 sub_type_name: "LimitedString",
    #                 type_parameters: {
    #                   "LimitedString" => "LimitedString",
    #                 },
    #                 truthy_cell_value: "SensitiveString",
    #                 truthy_cell_value_synonyms: ["SensitiveString"],
    #                 falsey_cell_value: "SensitiveString",
    #                 falsey_cell_value_synonyms: ["SensitiveString"],
    #               },
    #               allowed_aggregations: ["COUNT"], # accepts COUNT, DISTINCT_COUNT, MIN, MAX, MEDIAN, SUM, AVERAGE, STDEV, STDEVP, VAR, VARP, PERCENTILE
    #               not_allowed_aggregations: ["COUNT"], # accepts COUNT, DISTINCT_COUNT, MIN, MAX, MEDIAN, SUM, AVERAGE, STDEV, STDEVP, VAR, VARP, PERCENTILE
    #               never_aggregate_in_filter: false,
    #               cell_value_synonyms: [
    #                 {
    #                   cell_value: "LimitedString",
    #                   synonyms: ["String"],
    #                 },
    #               ],
    #               non_additive: false,
    #             },
    #           ],
    #           named_entities: [
    #             {
    #               entity_name: "LimitedString", # required
    #               entity_description: "LimitedString",
    #               entity_synonyms: ["LimitedString"],
    #               semantic_entity_type: {
    #                 type_name: "LimitedString",
    #                 sub_type_name: "LimitedString",
    #                 type_parameters: {
    #                   "LimitedString" => "LimitedString",
    #                 },
    #               },
    #               definition: [
    #                 {
    #                   field_name: "LimitedString",
    #                   property_name: "LimitedString",
    #                   property_role: "PRIMARY", # accepts PRIMARY, ID
    #                   property_usage: "INHERIT", # accepts INHERIT, DIMENSION, MEASURE
    #                   metric: {
    #                     aggregation: "SUM", # accepts SUM, MIN, MAX, COUNT, AVERAGE, DISTINCT_COUNT, STDEV, STDEVP, VAR, VARP, PERCENTILE, MEDIAN, CUSTOM
    #                     aggregation_function_parameters: {
    #                       "LimitedString" => "LimitedString",
    #                     },
    #                   },
    #                 },
    #               ],
    #             },
    #           ],
    #         },
    #       ],
    #       config_options: {
    #         q_business_insights_enabled: false,
    #       },
    #     },
    #     custom_instructions: {
    #       custom_instructions_string: "CustomInstructionsString", # required
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.topic_id #=> String
    #   resp.arn #=> String
    #   resp.refresh_arn #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateTopic AWS API Documentation
    #
    # @overload update_topic(params = {})
    # @param [Hash] params ({})
    def update_topic(params = {}, options = {})
      req = build_request(:update_topic, params)
      req.send_request(options)
    end

    # Updates the permissions of a topic.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that contains the topic that
    #   you want to update the permissions for.
    #
    # @option params [required, String] :topic_id
    #   The ID of the topic that you want to modify. This ID is unique per
    #   Amazon Web Services Region for each Amazon Web Services account.
    #
    # @option params [Array<Types::ResourcePermission>] :grant_permissions
    #   The resource permissions that you want to grant to the topic.
    #
    # @option params [Array<Types::ResourcePermission>] :revoke_permissions
    #   The resource permissions that you want to revoke from the topic.
    #
    # @return [Types::UpdateTopicPermissionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateTopicPermissionsResponse#topic_id #topic_id} => String
    #   * {Types::UpdateTopicPermissionsResponse#topic_arn #topic_arn} => String
    #   * {Types::UpdateTopicPermissionsResponse#permissions #permissions} => Array&lt;Types::ResourcePermission&gt;
    #   * {Types::UpdateTopicPermissionsResponse#status #status} => Integer
    #   * {Types::UpdateTopicPermissionsResponse#request_id #request_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_topic_permissions({
    #     aws_account_id: "AwsAccountId", # required
    #     topic_id: "TopicId", # required
    #     grant_permissions: [
    #       {
    #         principal: "Principal", # required
    #         actions: ["String"], # required
    #       },
    #     ],
    #     revoke_permissions: [
    #       {
    #         principal: "Principal", # required
    #         actions: ["String"], # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.topic_id #=> String
    #   resp.topic_arn #=> String
    #   resp.permissions #=> Array
    #   resp.permissions[0].principal #=> String
    #   resp.permissions[0].actions #=> Array
    #   resp.permissions[0].actions[0] #=> String
    #   resp.status #=> Integer
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateTopicPermissions AWS API Documentation
    #
    # @overload update_topic_permissions(params = {})
    # @param [Hash] params ({})
    def update_topic_permissions(params = {}, options = {})
      req = build_request(:update_topic_permissions, params)
      req.send_request(options)
    end

    # Updates a topic refresh schedule.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that contains the topic
    #   whose refresh schedule you want to update.
    #
    # @option params [required, String] :topic_id
    #   The ID of the topic that you want to modify. This ID is unique per
    #   Amazon Web Services Region for each Amazon Web Services account.
    #
    # @option params [required, String] :dataset_id
    #   The ID of the dataset.
    #
    # @option params [required, Types::TopicRefreshSchedule] :refresh_schedule
    #   The definition of a refresh schedule.
    #
    # @return [Types::UpdateTopicRefreshScheduleResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateTopicRefreshScheduleResponse#topic_id #topic_id} => String
    #   * {Types::UpdateTopicRefreshScheduleResponse#topic_arn #topic_arn} => String
    #   * {Types::UpdateTopicRefreshScheduleResponse#dataset_arn #dataset_arn} => String
    #   * {Types::UpdateTopicRefreshScheduleResponse#status #status} => Integer
    #   * {Types::UpdateTopicRefreshScheduleResponse#request_id #request_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_topic_refresh_schedule({
    #     aws_account_id: "AwsAccountId", # required
    #     topic_id: "TopicId", # required
    #     dataset_id: "String", # required
    #     refresh_schedule: { # required
    #       is_enabled: false, # required
    #       based_on_spice_schedule: false, # required
    #       starting_at: Time.now,
    #       timezone: "LimitedString",
    #       repeat_at: "LimitedString",
    #       topic_schedule_type: "HOURLY", # accepts HOURLY, DAILY, WEEKLY, MONTHLY
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.topic_id #=> String
    #   resp.topic_arn #=> String
    #   resp.dataset_arn #=> String
    #   resp.status #=> Integer
    #   resp.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateTopicRefreshSchedule AWS API Documentation
    #
    # @overload update_topic_refresh_schedule(params = {})
    # @param [Hash] params ({})
    def update_topic_refresh_schedule(params = {}, options = {})
      req = build_request(:update_topic_refresh_schedule, params)
      req.send_request(options)
    end

    # Updates an Amazon QuickSight user.
    #
    # @option params [required, String] :user_name
    #   The Amazon QuickSight user name that you want to update.
    #
    # @option params [required, String] :aws_account_id
    #   The ID for the Amazon Web Services account that the user is in.
    #   Currently, you use the ID for the Amazon Web Services account that
    #   contains your Amazon QuickSight account.
    #
    # @option params [required, String] :namespace
    #   The namespace. Currently, you should set this to `default`.
    #
    # @option params [required, String] :email
    #   The email address of the user that you want to update.
    #
    # @option params [required, String] :role
    #   The Amazon QuickSight role of the user. The role can be one of the
    #   following default security cohorts:
    #
    #   * `READER`: A user who has read-only access to dashboards.
    #
    #   * `AUTHOR`: A user who can create data sources, datasets, analyses,
    #     and dashboards.
    #
    #   * `ADMIN`: A user who is an author, who can also manage Amazon
    #     QuickSight settings.
    #
    #   * `READER_PRO`: Reader Pro adds Generative BI capabilities to the
    #     Reader role. Reader Pros have access to Amazon Q in QuickSight, can
    #     build stories with Amazon Q, and can generate executive summaries
    #     from dashboards.
    #
    #   * `AUTHOR_PRO`: Author Pro adds Generative BI capabilities to the
    #     Author role. Author Pros can author dashboards with natural language
    #     with Amazon Q, build stories with Amazon Q, create Topics for
    #     Q&amp;A, and generate executive summaries from dashboards.
    #
    #   * `ADMIN_PRO`: Admin Pros are Author Pros who can also manage Amazon
    #     QuickSight administrative settings. Admin Pro users are billed at
    #     Author Pro pricing.
    #
    #   The name of the QuickSight role is invisible to the user except for
    #   the console screens dealing with permissions.
    #
    # @option params [String] :custom_permissions_name
    #   (Enterprise edition only) The name of the custom permissions profile
    #   that you want to assign to this user. Customized permissions allows
    #   you to control a user's access by restricting access the following
    #   operations:
    #
    #   * Create and update data sources
    #
    #   * Create and update datasets
    #
    #   * Create and update email reports
    #
    #   * Subscribe to email reports
    #
    #   A set of custom permissions includes any combination of these
    #   restrictions. Currently, you need to create the profile names for
    #   custom permission sets by using the QuickSight console. Then, you use
    #   the `RegisterUser` API operation to assign the named set of
    #   permissions to a QuickSight user.
    #
    #   QuickSight custom permissions are applied through IAM policies.
    #   Therefore, they override the permissions typically granted by
    #   assigning QuickSight users to one of the default security cohorts in
    #   QuickSight (admin, author, reader).
    #
    #   This feature is available only to QuickSight Enterprise edition
    #   subscriptions.
    #
    # @option params [Boolean] :unapply_custom_permissions
    #   A flag that you use to indicate that you want to remove all custom
    #   permissions from this user. Using this parameter resets the user to
    #   the state it was in before a custom permissions profile was applied.
    #   This parameter defaults to NULL and it doesn't accept any other
    #   value.
    #
    # @option params [String] :external_login_federation_provider_type
    #   The type of supported external login provider that provides identity
    #   to let a user federate into QuickSight with an associated Identity and
    #   Access Management(IAM) role. The type of supported external login
    #   provider can be one of the following.
    #
    #   * `COGNITO`: Amazon Cognito. The provider URL is
    #     cognito-identity.amazonaws.com. When choosing the `COGNITO` provider
    #     type, don’t use the "CustomFederationProviderUrl" parameter which
    #     is only needed when the external provider is custom.
    #
    #   * `CUSTOM_OIDC`: Custom OpenID Connect (OIDC) provider. When choosing
    #     `CUSTOM_OIDC` type, use the `CustomFederationProviderUrl` parameter
    #     to provide the custom OIDC provider URL.
    #
    #   * `NONE`: This clears all the previously saved external login
    #     information for a user. Use the ` DescribeUser ` API operation to
    #     check the external login information.
    #
    # @option params [String] :custom_federation_provider_url
    #   The URL of the custom OpenID Connect (OIDC) provider that provides
    #   identity to let a user federate into QuickSight with an associated
    #   Identity and Access Management(IAM) role. This parameter should only
    #   be used when `ExternalLoginFederationProviderType` parameter is set to
    #   `CUSTOM_OIDC`.
    #
    # @option params [String] :external_login_id
    #   The identity ID for a user in the external login provider.
    #
    # @return [Types::UpdateUserResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateUserResponse#user #user} => Types::User
    #   * {Types::UpdateUserResponse#request_id #request_id} => String
    #   * {Types::UpdateUserResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_user({
    #     user_name: "UserName", # required
    #     aws_account_id: "AwsAccountId", # required
    #     namespace: "Namespace", # required
    #     email: "String", # required
    #     role: "ADMIN", # required, accepts ADMIN, AUTHOR, READER, RESTRICTED_AUTHOR, RESTRICTED_READER, ADMIN_PRO, AUTHOR_PRO, READER_PRO
    #     custom_permissions_name: "RoleName",
    #     unapply_custom_permissions: false,
    #     external_login_federation_provider_type: "String",
    #     custom_federation_provider_url: "String",
    #     external_login_id: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.user.arn #=> String
    #   resp.user.user_name #=> String
    #   resp.user.email #=> String
    #   resp.user.role #=> String, one of "ADMIN", "AUTHOR", "READER", "RESTRICTED_AUTHOR", "RESTRICTED_READER", "ADMIN_PRO", "AUTHOR_PRO", "READER_PRO"
    #   resp.user.identity_type #=> String, one of "IAM", "QUICKSIGHT", "IAM_IDENTITY_CENTER"
    #   resp.user.active #=> Boolean
    #   resp.user.principal_id #=> String
    #   resp.user.custom_permissions_name #=> String
    #   resp.user.external_login_federation_provider_type #=> String
    #   resp.user.external_login_federation_provider_url #=> String
    #   resp.user.external_login_id #=> String
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateUser AWS API Documentation
    #
    # @overload update_user(params = {})
    # @param [Hash] params ({})
    def update_user(params = {}, options = {})
      req = build_request(:update_user, params)
      req.send_request(options)
    end

    # Updates a custom permissions profile for a user.
    #
    # @option params [required, String] :user_name
    #   The username of the user that you want to update custom permissions
    #   for.
    #
    # @option params [required, String] :aws_account_id
    #   The ID of the Amazon Web Services account that contains the custom
    #   permission configuration that you want to update.
    #
    # @option params [required, String] :namespace
    #   The namespace that the user belongs to.
    #
    # @option params [required, String] :custom_permissions_name
    #   The name of the custom permissions that you want to update.
    #
    # @return [Types::UpdateUserCustomPermissionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateUserCustomPermissionResponse#request_id #request_id} => String
    #   * {Types::UpdateUserCustomPermissionResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_user_custom_permission({
    #     user_name: "UserName", # required
    #     aws_account_id: "AwsAccountId", # required
    #     namespace: "Namespace", # required
    #     custom_permissions_name: "CustomPermissionsName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateUserCustomPermission AWS API Documentation
    #
    # @overload update_user_custom_permission(params = {})
    # @param [Hash] params ({})
    def update_user_custom_permission(params = {}, options = {})
      req = build_request(:update_user_custom_permission, params)
      req.send_request(options)
    end

    # Updates a VPC connection.
    #
    # @option params [required, String] :aws_account_id
    #   The Amazon Web Services account ID of the account that contains the
    #   VPC connection that you want to update.
    #
    # @option params [required, String] :vpc_connection_id
    #   The ID of the VPC connection that you're updating. This ID is a
    #   unique identifier for each Amazon Web Services Region in an Amazon Web
    #   Services account.
    #
    # @option params [required, String] :name
    #   The display name for the VPC connection.
    #
    # @option params [required, Array<String>] :subnet_ids
    #   A list of subnet IDs for the VPC connection.
    #
    # @option params [required, Array<String>] :security_group_ids
    #   A list of security group IDs for the VPC connection.
    #
    # @option params [Array<String>] :dns_resolvers
    #   A list of IP addresses of DNS resolver endpoints for the VPC
    #   connection.
    #
    # @option params [required, String] :role_arn
    #   An IAM role associated with the VPC connection.
    #
    # @return [Types::UpdateVPCConnectionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateVPCConnectionResponse#arn #arn} => String
    #   * {Types::UpdateVPCConnectionResponse#vpc_connection_id #vpc_connection_id} => String
    #   * {Types::UpdateVPCConnectionResponse#update_status #update_status} => String
    #   * {Types::UpdateVPCConnectionResponse#availability_status #availability_status} => String
    #   * {Types::UpdateVPCConnectionResponse#request_id #request_id} => String
    #   * {Types::UpdateVPCConnectionResponse#status #status} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_vpc_connection({
    #     aws_account_id: "AwsAccountId", # required
    #     vpc_connection_id: "VPCConnectionResourceIdUnrestricted", # required
    #     name: "ResourceName", # required
    #     subnet_ids: ["SubnetId"], # required
    #     security_group_ids: ["SecurityGroupId"], # required
    #     dns_resolvers: ["IPv4Address"],
    #     role_arn: "RoleArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.vpc_connection_id #=> String
    #   resp.update_status #=> String, one of "CREATION_IN_PROGRESS", "CREATION_SUCCESSFUL", "CREATION_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_SUCCESSFUL", "UPDATE_FAILED", "DELETION_IN_PROGRESS", "DELETION_FAILED", "DELETED"
    #   resp.availability_status #=> String, one of "AVAILABLE", "UNAVAILABLE", "PARTIALLY_AVAILABLE"
    #   resp.request_id #=> String
    #   resp.status #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateVPCConnection AWS API Documentation
    #
    # @overload update_vpc_connection(params = {})
    # @param [Hash] params ({})
    def update_vpc_connection(params = {}, options = {})
      req = build_request(:update_vpc_connection, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::QuickSight')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-quicksight'
      context[:gem_version] = '1.158.0'
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
