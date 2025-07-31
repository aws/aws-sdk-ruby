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

module Aws::TimestreamQuery
  # An API client for TimestreamQuery.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::TimestreamQuery::Client.new(
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

    @identifier = :timestreamquery

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
    add_plugin(Aws::TimestreamQuery::Plugins::Endpoints)

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
    #   @option options [Boolean] :endpoint_discovery (true)
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
    #   @option options [Aws::TimestreamQuery::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::TimestreamQuery::EndpointParameters`.
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

    # Cancels a query that has been issued. Cancellation is provided only if
    # the query has not completed running before the cancellation request
    # was issued. Because cancellation is an idempotent operation,
    # subsequent cancellation requests will return a `CancellationMessage`,
    # indicating that the query has already been canceled. See [code
    # sample][1] for details.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/timestream/latest/developerguide/code-samples.cancel-query.html
    #
    # @option params [required, String] :query_id
    #   The ID of the query that needs to be cancelled. `QueryID` is returned
    #   as part of the query result.
    #
    # @return [Types::CancelQueryResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CancelQueryResponse#cancellation_message #cancellation_message} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_query({
    #     query_id: "QueryId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.cancellation_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-query-2018-11-01/CancelQuery AWS API Documentation
    #
    # @overload cancel_query(params = {})
    # @param [Hash] params ({})
    def cancel_query(params = {}, options = {})
      req = build_request(:cancel_query, params)
      req.send_request(options)
    end

    # Create a scheduled query that will be run on your behalf at the
    # configured schedule. Timestream assumes the execution role provided as
    # part of the `ScheduledQueryExecutionRoleArn` parameter to run the
    # query. You can use the `NotificationConfiguration` parameter to
    # configure notification for your scheduled query operations.
    #
    # @option params [required, String] :name
    #   Name of the scheduled query.
    #
    # @option params [required, String] :query_string
    #   The query string to run. Parameter names can be specified in the query
    #   string `@` character followed by an identifier. The named Parameter
    #   `@scheduled_runtime` is reserved and can be used in the query to get
    #   the time at which the query is scheduled to run.
    #
    #   The timestamp calculated according to the ScheduleConfiguration
    #   parameter, will be the value of `@scheduled_runtime` paramater for
    #   each query run. For example, consider an instance of a scheduled query
    #   executing on 2021-12-01 00:00:00. For this instance, the
    #   `@scheduled_runtime` parameter is initialized to the timestamp
    #   2021-12-01 00:00:00 when invoking the query.
    #
    # @option params [required, Types::ScheduleConfiguration] :schedule_configuration
    #   The schedule configuration for the query.
    #
    # @option params [required, Types::NotificationConfiguration] :notification_configuration
    #   Notification configuration for the scheduled query. A notification is
    #   sent by Timestream when a query run finishes, when the state is
    #   updated or when you delete it.
    #
    # @option params [Types::TargetConfiguration] :target_configuration
    #   Configuration used for writing the result of a query.
    #
    # @option params [String] :client_token
    #   Using a ClientToken makes the call to CreateScheduledQuery idempotent,
    #   in other words, making the same request repeatedly will produce the
    #   same result. Making multiple identical CreateScheduledQuery requests
    #   has the same effect as making a single request.
    #
    #   * If CreateScheduledQuery is called without a `ClientToken`, the Query
    #     SDK generates a `ClientToken` on your behalf.
    #
    #   * After 8 hours, any request with the same `ClientToken` is treated as
    #     a new request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :scheduled_query_execution_role_arn
    #   The ARN for the IAM role that Timestream will assume when running the
    #   scheduled query.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of key-value pairs to label the scheduled query.
    #
    # @option params [String] :kms_key_id
    #   The Amazon KMS key used to encrypt the scheduled query resource,
    #   at-rest. If the Amazon KMS key is not specified, the scheduled query
    #   resource will be encrypted with a Timestream owned Amazon KMS key. To
    #   specify a KMS key, use the key ID, key ARN, alias name, or alias ARN.
    #   When using an alias name, prefix the name with *alias/*
    #
    #   If ErrorReportConfiguration uses `SSE_KMS` as encryption type, the
    #   same KmsKeyId is used to encrypt the error report at rest.
    #
    # @option params [required, Types::ErrorReportConfiguration] :error_report_configuration
    #   Configuration for error reporting. Error reports will be generated
    #   when a problem is encountered when writing the query results.
    #
    # @return [Types::CreateScheduledQueryResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateScheduledQueryResponse#arn #arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_scheduled_query({
    #     name: "ScheduledQueryName", # required
    #     query_string: "QueryString", # required
    #     schedule_configuration: { # required
    #       schedule_expression: "ScheduleExpression", # required
    #     },
    #     notification_configuration: { # required
    #       sns_configuration: { # required
    #         topic_arn: "AmazonResourceName", # required
    #       },
    #     },
    #     target_configuration: {
    #       timestream_configuration: { # required
    #         database_name: "ResourceName", # required
    #         table_name: "ResourceName", # required
    #         time_column: "SchemaName", # required
    #         dimension_mappings: [ # required
    #           {
    #             name: "SchemaName", # required
    #             dimension_value_type: "VARCHAR", # required, accepts VARCHAR
    #           },
    #         ],
    #         multi_measure_mappings: {
    #           target_multi_measure_name: "SchemaName",
    #           multi_measure_attribute_mappings: [ # required
    #             {
    #               source_column: "SchemaName", # required
    #               target_multi_measure_attribute_name: "SchemaName",
    #               measure_value_type: "BIGINT", # required, accepts BIGINT, BOOLEAN, DOUBLE, VARCHAR, TIMESTAMP
    #             },
    #           ],
    #         },
    #         mixed_measure_mappings: [
    #           {
    #             measure_name: "SchemaName",
    #             source_column: "SchemaName",
    #             target_measure_name: "SchemaName",
    #             measure_value_type: "BIGINT", # required, accepts BIGINT, BOOLEAN, DOUBLE, VARCHAR, MULTI
    #             multi_measure_attribute_mappings: [
    #               {
    #                 source_column: "SchemaName", # required
    #                 target_multi_measure_attribute_name: "SchemaName",
    #                 measure_value_type: "BIGINT", # required, accepts BIGINT, BOOLEAN, DOUBLE, VARCHAR, TIMESTAMP
    #               },
    #             ],
    #           },
    #         ],
    #         measure_name_column: "SchemaName",
    #       },
    #     },
    #     client_token: "ClientToken",
    #     scheduled_query_execution_role_arn: "AmazonResourceName", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     kms_key_id: "StringValue2048",
    #     error_report_configuration: { # required
    #       s3_configuration: { # required
    #         bucket_name: "S3BucketName", # required
    #         object_key_prefix: "S3ObjectKeyPrefix",
    #         encryption_option: "SSE_S3", # accepts SSE_S3, SSE_KMS
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-query-2018-11-01/CreateScheduledQuery AWS API Documentation
    #
    # @overload create_scheduled_query(params = {})
    # @param [Hash] params ({})
    def create_scheduled_query(params = {}, options = {})
      req = build_request(:create_scheduled_query, params)
      req.send_request(options)
    end

    # Deletes a given scheduled query. This is an irreversible operation.
    #
    # @option params [required, String] :scheduled_query_arn
    #   The ARN of the scheduled query.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_scheduled_query({
    #     scheduled_query_arn: "AmazonResourceName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-query-2018-11-01/DeleteScheduledQuery AWS API Documentation
    #
    # @overload delete_scheduled_query(params = {})
    # @param [Hash] params ({})
    def delete_scheduled_query(params = {}, options = {})
      req = build_request(:delete_scheduled_query, params)
      req.send_request(options)
    end

    # Describes the settings for your account that include the query pricing
    # model and the configured maximum TCUs the service can use for your
    # query workload.
    #
    # You're charged only for the duration of compute units used for your
    # workloads.
    #
    # @return [Types::DescribeAccountSettingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAccountSettingsResponse#max_query_tcu #max_query_tcu} => Integer
    #   * {Types::DescribeAccountSettingsResponse#query_pricing_model #query_pricing_model} => String
    #   * {Types::DescribeAccountSettingsResponse#query_compute #query_compute} => Types::QueryComputeResponse
    #
    # @example Response structure
    #
    #   resp.max_query_tcu #=> Integer
    #   resp.query_pricing_model #=> String, one of "BYTES_SCANNED", "COMPUTE_UNITS"
    #   resp.query_compute.compute_mode #=> String, one of "ON_DEMAND", "PROVISIONED"
    #   resp.query_compute.provisioned_capacity.active_query_tcu #=> Integer
    #   resp.query_compute.provisioned_capacity.notification_configuration.sns_configuration.topic_arn #=> String
    #   resp.query_compute.provisioned_capacity.notification_configuration.role_arn #=> String
    #   resp.query_compute.provisioned_capacity.last_update.target_query_tcu #=> Integer
    #   resp.query_compute.provisioned_capacity.last_update.status #=> String, one of "PENDING", "FAILED", "SUCCEEDED"
    #   resp.query_compute.provisioned_capacity.last_update.status_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-query-2018-11-01/DescribeAccountSettings AWS API Documentation
    #
    # @overload describe_account_settings(params = {})
    # @param [Hash] params ({})
    def describe_account_settings(params = {}, options = {})
      req = build_request(:describe_account_settings, params)
      req.send_request(options)
    end

    # DescribeEndpoints returns a list of available endpoints to make
    # Timestream API calls against. This API is available through both Write
    # and Query.
    #
    # Because the Timestream SDKs are designed to transparently work with
    # the service’s architecture, including the management and mapping of
    # the service endpoints, *it is not recommended that you use this API
    # unless*:
    #
    # * You are using [VPC endpoints (Amazon Web Services PrivateLink) with
    #   Timestream ][1]
    #
    # * Your application uses a programming language that does not yet have
    #   SDK support
    #
    # * You require better control over the client-side implementation
    #
    # For detailed information on how and when to use and implement
    # DescribeEndpoints, see [The Endpoint Discovery Pattern][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/timestream/latest/developerguide/VPCEndpoints
    # [2]: https://docs.aws.amazon.com/timestream/latest/developerguide/Using.API.html#Using-API.endpoint-discovery
    #
    # @return [Types::DescribeEndpointsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeEndpointsResponse#endpoints #endpoints} => Array&lt;Types::Endpoint&gt;
    #
    # @example Response structure
    #
    #   resp.endpoints #=> Array
    #   resp.endpoints[0].address #=> String
    #   resp.endpoints[0].cache_period_in_minutes #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-query-2018-11-01/DescribeEndpoints AWS API Documentation
    #
    # @overload describe_endpoints(params = {})
    # @param [Hash] params ({})
    def describe_endpoints(params = {}, options = {})
      req = build_request(:describe_endpoints, params)
      req.send_request(options)
    end

    # Provides detailed information about a scheduled query.
    #
    # @option params [required, String] :scheduled_query_arn
    #   The ARN of the scheduled query.
    #
    # @return [Types::DescribeScheduledQueryResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeScheduledQueryResponse#scheduled_query #scheduled_query} => Types::ScheduledQueryDescription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_scheduled_query({
    #     scheduled_query_arn: "AmazonResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.scheduled_query.arn #=> String
    #   resp.scheduled_query.name #=> String
    #   resp.scheduled_query.query_string #=> String
    #   resp.scheduled_query.creation_time #=> Time
    #   resp.scheduled_query.state #=> String, one of "ENABLED", "DISABLED"
    #   resp.scheduled_query.previous_invocation_time #=> Time
    #   resp.scheduled_query.next_invocation_time #=> Time
    #   resp.scheduled_query.schedule_configuration.schedule_expression #=> String
    #   resp.scheduled_query.notification_configuration.sns_configuration.topic_arn #=> String
    #   resp.scheduled_query.target_configuration.timestream_configuration.database_name #=> String
    #   resp.scheduled_query.target_configuration.timestream_configuration.table_name #=> String
    #   resp.scheduled_query.target_configuration.timestream_configuration.time_column #=> String
    #   resp.scheduled_query.target_configuration.timestream_configuration.dimension_mappings #=> Array
    #   resp.scheduled_query.target_configuration.timestream_configuration.dimension_mappings[0].name #=> String
    #   resp.scheduled_query.target_configuration.timestream_configuration.dimension_mappings[0].dimension_value_type #=> String, one of "VARCHAR"
    #   resp.scheduled_query.target_configuration.timestream_configuration.multi_measure_mappings.target_multi_measure_name #=> String
    #   resp.scheduled_query.target_configuration.timestream_configuration.multi_measure_mappings.multi_measure_attribute_mappings #=> Array
    #   resp.scheduled_query.target_configuration.timestream_configuration.multi_measure_mappings.multi_measure_attribute_mappings[0].source_column #=> String
    #   resp.scheduled_query.target_configuration.timestream_configuration.multi_measure_mappings.multi_measure_attribute_mappings[0].target_multi_measure_attribute_name #=> String
    #   resp.scheduled_query.target_configuration.timestream_configuration.multi_measure_mappings.multi_measure_attribute_mappings[0].measure_value_type #=> String, one of "BIGINT", "BOOLEAN", "DOUBLE", "VARCHAR", "TIMESTAMP"
    #   resp.scheduled_query.target_configuration.timestream_configuration.mixed_measure_mappings #=> Array
    #   resp.scheduled_query.target_configuration.timestream_configuration.mixed_measure_mappings[0].measure_name #=> String
    #   resp.scheduled_query.target_configuration.timestream_configuration.mixed_measure_mappings[0].source_column #=> String
    #   resp.scheduled_query.target_configuration.timestream_configuration.mixed_measure_mappings[0].target_measure_name #=> String
    #   resp.scheduled_query.target_configuration.timestream_configuration.mixed_measure_mappings[0].measure_value_type #=> String, one of "BIGINT", "BOOLEAN", "DOUBLE", "VARCHAR", "MULTI"
    #   resp.scheduled_query.target_configuration.timestream_configuration.mixed_measure_mappings[0].multi_measure_attribute_mappings #=> Array
    #   resp.scheduled_query.target_configuration.timestream_configuration.mixed_measure_mappings[0].multi_measure_attribute_mappings[0].source_column #=> String
    #   resp.scheduled_query.target_configuration.timestream_configuration.mixed_measure_mappings[0].multi_measure_attribute_mappings[0].target_multi_measure_attribute_name #=> String
    #   resp.scheduled_query.target_configuration.timestream_configuration.mixed_measure_mappings[0].multi_measure_attribute_mappings[0].measure_value_type #=> String, one of "BIGINT", "BOOLEAN", "DOUBLE", "VARCHAR", "TIMESTAMP"
    #   resp.scheduled_query.target_configuration.timestream_configuration.measure_name_column #=> String
    #   resp.scheduled_query.scheduled_query_execution_role_arn #=> String
    #   resp.scheduled_query.kms_key_id #=> String
    #   resp.scheduled_query.error_report_configuration.s3_configuration.bucket_name #=> String
    #   resp.scheduled_query.error_report_configuration.s3_configuration.object_key_prefix #=> String
    #   resp.scheduled_query.error_report_configuration.s3_configuration.encryption_option #=> String, one of "SSE_S3", "SSE_KMS"
    #   resp.scheduled_query.last_run_summary.invocation_time #=> Time
    #   resp.scheduled_query.last_run_summary.trigger_time #=> Time
    #   resp.scheduled_query.last_run_summary.run_status #=> String, one of "AUTO_TRIGGER_SUCCESS", "AUTO_TRIGGER_FAILURE", "MANUAL_TRIGGER_SUCCESS", "MANUAL_TRIGGER_FAILURE"
    #   resp.scheduled_query.last_run_summary.execution_stats.execution_time_in_millis #=> Integer
    #   resp.scheduled_query.last_run_summary.execution_stats.data_writes #=> Integer
    #   resp.scheduled_query.last_run_summary.execution_stats.bytes_metered #=> Integer
    #   resp.scheduled_query.last_run_summary.execution_stats.cumulative_bytes_scanned #=> Integer
    #   resp.scheduled_query.last_run_summary.execution_stats.records_ingested #=> Integer
    #   resp.scheduled_query.last_run_summary.execution_stats.query_result_rows #=> Integer
    #   resp.scheduled_query.last_run_summary.query_insights_response.query_spatial_coverage.max.value #=> Float
    #   resp.scheduled_query.last_run_summary.query_insights_response.query_spatial_coverage.max.table_arn #=> String
    #   resp.scheduled_query.last_run_summary.query_insights_response.query_spatial_coverage.max.partition_key #=> Array
    #   resp.scheduled_query.last_run_summary.query_insights_response.query_spatial_coverage.max.partition_key[0] #=> String
    #   resp.scheduled_query.last_run_summary.query_insights_response.query_temporal_range.max.value #=> Integer
    #   resp.scheduled_query.last_run_summary.query_insights_response.query_temporal_range.max.table_arn #=> String
    #   resp.scheduled_query.last_run_summary.query_insights_response.query_table_count #=> Integer
    #   resp.scheduled_query.last_run_summary.query_insights_response.output_rows #=> Integer
    #   resp.scheduled_query.last_run_summary.query_insights_response.output_bytes #=> Integer
    #   resp.scheduled_query.last_run_summary.error_report_location.s3_report_location.bucket_name #=> String
    #   resp.scheduled_query.last_run_summary.error_report_location.s3_report_location.object_key #=> String
    #   resp.scheduled_query.last_run_summary.failure_reason #=> String
    #   resp.scheduled_query.recently_failed_runs #=> Array
    #   resp.scheduled_query.recently_failed_runs[0].invocation_time #=> Time
    #   resp.scheduled_query.recently_failed_runs[0].trigger_time #=> Time
    #   resp.scheduled_query.recently_failed_runs[0].run_status #=> String, one of "AUTO_TRIGGER_SUCCESS", "AUTO_TRIGGER_FAILURE", "MANUAL_TRIGGER_SUCCESS", "MANUAL_TRIGGER_FAILURE"
    #   resp.scheduled_query.recently_failed_runs[0].execution_stats.execution_time_in_millis #=> Integer
    #   resp.scheduled_query.recently_failed_runs[0].execution_stats.data_writes #=> Integer
    #   resp.scheduled_query.recently_failed_runs[0].execution_stats.bytes_metered #=> Integer
    #   resp.scheduled_query.recently_failed_runs[0].execution_stats.cumulative_bytes_scanned #=> Integer
    #   resp.scheduled_query.recently_failed_runs[0].execution_stats.records_ingested #=> Integer
    #   resp.scheduled_query.recently_failed_runs[0].execution_stats.query_result_rows #=> Integer
    #   resp.scheduled_query.recently_failed_runs[0].query_insights_response.query_spatial_coverage.max.value #=> Float
    #   resp.scheduled_query.recently_failed_runs[0].query_insights_response.query_spatial_coverage.max.table_arn #=> String
    #   resp.scheduled_query.recently_failed_runs[0].query_insights_response.query_spatial_coverage.max.partition_key #=> Array
    #   resp.scheduled_query.recently_failed_runs[0].query_insights_response.query_spatial_coverage.max.partition_key[0] #=> String
    #   resp.scheduled_query.recently_failed_runs[0].query_insights_response.query_temporal_range.max.value #=> Integer
    #   resp.scheduled_query.recently_failed_runs[0].query_insights_response.query_temporal_range.max.table_arn #=> String
    #   resp.scheduled_query.recently_failed_runs[0].query_insights_response.query_table_count #=> Integer
    #   resp.scheduled_query.recently_failed_runs[0].query_insights_response.output_rows #=> Integer
    #   resp.scheduled_query.recently_failed_runs[0].query_insights_response.output_bytes #=> Integer
    #   resp.scheduled_query.recently_failed_runs[0].error_report_location.s3_report_location.bucket_name #=> String
    #   resp.scheduled_query.recently_failed_runs[0].error_report_location.s3_report_location.object_key #=> String
    #   resp.scheduled_query.recently_failed_runs[0].failure_reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-query-2018-11-01/DescribeScheduledQuery AWS API Documentation
    #
    # @overload describe_scheduled_query(params = {})
    # @param [Hash] params ({})
    def describe_scheduled_query(params = {}, options = {})
      req = build_request(:describe_scheduled_query, params)
      req.send_request(options)
    end

    # You can use this API to run a scheduled query manually.
    #
    # If you enabled `QueryInsights`, this API also returns insights and
    # metrics related to the query that you executed as part of an Amazon
    # SNS notification. `QueryInsights` helps with performance tuning of
    # your query. For more information about `QueryInsights`, see [Using
    # query insights to optimize queries in Amazon Timestream][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/timestream/latest/developerguide/using-query-insights.html
    #
    # @option params [required, String] :scheduled_query_arn
    #   ARN of the scheduled query.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :invocation_time
    #   The timestamp in UTC. Query will be run as if it was invoked at this
    #   timestamp.
    #
    # @option params [String] :client_token
    #   Not used.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Types::ScheduledQueryInsights] :query_insights
    #   Encapsulates settings for enabling `QueryInsights`.
    #
    #   Enabling `QueryInsights` returns insights and metrics as a part of the
    #   Amazon SNS notification for the query that you executed. You can use
    #   `QueryInsights` to tune your query performance and cost.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.execute_scheduled_query({
    #     scheduled_query_arn: "AmazonResourceName", # required
    #     invocation_time: Time.now, # required
    #     client_token: "ClientToken",
    #     query_insights: {
    #       mode: "ENABLED_WITH_RATE_CONTROL", # required, accepts ENABLED_WITH_RATE_CONTROL, DISABLED
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-query-2018-11-01/ExecuteScheduledQuery AWS API Documentation
    #
    # @overload execute_scheduled_query(params = {})
    # @param [Hash] params ({})
    def execute_scheduled_query(params = {}, options = {})
      req = build_request(:execute_scheduled_query, params)
      req.send_request(options)
    end

    # Gets a list of all scheduled queries in the caller's Amazon account
    # and Region. `ListScheduledQueries` is eventually consistent.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return in the output. If the total
    #   number of items available is more than the value specified, a
    #   `NextToken` is provided in the output. To resume pagination, provide
    #   the `NextToken` value as the argument to the subsequent call to
    #   `ListScheduledQueriesRequest`.
    #
    # @option params [String] :next_token
    #   A pagination token to resume pagination.
    #
    # @return [Types::ListScheduledQueriesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListScheduledQueriesResponse#scheduled_queries #scheduled_queries} => Array&lt;Types::ScheduledQuery&gt;
    #   * {Types::ListScheduledQueriesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_scheduled_queries({
    #     max_results: 1,
    #     next_token: "NextScheduledQueriesResultsToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.scheduled_queries #=> Array
    #   resp.scheduled_queries[0].arn #=> String
    #   resp.scheduled_queries[0].name #=> String
    #   resp.scheduled_queries[0].creation_time #=> Time
    #   resp.scheduled_queries[0].state #=> String, one of "ENABLED", "DISABLED"
    #   resp.scheduled_queries[0].previous_invocation_time #=> Time
    #   resp.scheduled_queries[0].next_invocation_time #=> Time
    #   resp.scheduled_queries[0].error_report_configuration.s3_configuration.bucket_name #=> String
    #   resp.scheduled_queries[0].error_report_configuration.s3_configuration.object_key_prefix #=> String
    #   resp.scheduled_queries[0].error_report_configuration.s3_configuration.encryption_option #=> String, one of "SSE_S3", "SSE_KMS"
    #   resp.scheduled_queries[0].target_destination.timestream_destination.database_name #=> String
    #   resp.scheduled_queries[0].target_destination.timestream_destination.table_name #=> String
    #   resp.scheduled_queries[0].last_run_status #=> String, one of "AUTO_TRIGGER_SUCCESS", "AUTO_TRIGGER_FAILURE", "MANUAL_TRIGGER_SUCCESS", "MANUAL_TRIGGER_FAILURE"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-query-2018-11-01/ListScheduledQueries AWS API Documentation
    #
    # @overload list_scheduled_queries(params = {})
    # @param [Hash] params ({})
    def list_scheduled_queries(params = {}, options = {})
      req = build_request(:list_scheduled_queries, params)
      req.send_request(options)
    end

    # List all tags on a Timestream query resource.
    #
    # @option params [required, String] :resource_arn
    #   The Timestream resource with tags to be listed. This value is an
    #   Amazon Resource Name (ARN).
    #
    # @option params [Integer] :max_results
    #   The maximum number of tags to return.
    #
    # @option params [String] :next_token
    #   A pagination token to resume pagination.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Array&lt;Types::Tag&gt;
    #   * {Types::ListTagsForResourceResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "AmazonResourceName", # required
    #     max_results: 1,
    #     next_token: "NextTagsForResourceResultsToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-query-2018-11-01/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # A synchronous operation that allows you to submit a query with
    # parameters to be stored by Timestream for later running. Timestream
    # only supports using this operation with `ValidateOnly` set to `true`.
    #
    # @option params [required, String] :query_string
    #   The Timestream query string that you want to use as a prepared
    #   statement. Parameter names can be specified in the query string `@`
    #   character followed by an identifier.
    #
    # @option params [Boolean] :validate_only
    #   By setting this value to `true`, Timestream will only validate that
    #   the query string is a valid Timestream query, and not store the
    #   prepared query for later use.
    #
    # @return [Types::PrepareQueryResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PrepareQueryResponse#query_string #query_string} => String
    #   * {Types::PrepareQueryResponse#columns #columns} => Array&lt;Types::SelectColumn&gt;
    #   * {Types::PrepareQueryResponse#parameters #parameters} => Array&lt;Types::ParameterMapping&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.prepare_query({
    #     query_string: "QueryString", # required
    #     validate_only: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.query_string #=> String
    #   resp.columns #=> Array
    #   resp.columns[0].name #=> String
    #   resp.columns[0].type.scalar_type #=> String, one of "VARCHAR", "BOOLEAN", "BIGINT", "DOUBLE", "TIMESTAMP", "DATE", "TIME", "INTERVAL_DAY_TO_SECOND", "INTERVAL_YEAR_TO_MONTH", "UNKNOWN", "INTEGER"
    #   resp.columns[0].type.array_column_info.name #=> String
    #   resp.columns[0].type.array_column_info.type #=> Types::Type
    #   resp.columns[0].type.time_series_measure_value_column_info.name #=> String
    #   resp.columns[0].type.time_series_measure_value_column_info.type #=> Types::Type
    #   resp.columns[0].type.row_column_info #=> Array
    #   resp.columns[0].type.row_column_info[0].name #=> String
    #   resp.columns[0].type.row_column_info[0].type #=> Types::Type
    #   resp.columns[0].database_name #=> String
    #   resp.columns[0].table_name #=> String
    #   resp.columns[0].aliased #=> Boolean
    #   resp.parameters #=> Array
    #   resp.parameters[0].name #=> String
    #   resp.parameters[0].type.scalar_type #=> String, one of "VARCHAR", "BOOLEAN", "BIGINT", "DOUBLE", "TIMESTAMP", "DATE", "TIME", "INTERVAL_DAY_TO_SECOND", "INTERVAL_YEAR_TO_MONTH", "UNKNOWN", "INTEGER"
    #   resp.parameters[0].type.array_column_info.name #=> String
    #   resp.parameters[0].type.array_column_info.type #=> Types::Type
    #   resp.parameters[0].type.time_series_measure_value_column_info.name #=> String
    #   resp.parameters[0].type.time_series_measure_value_column_info.type #=> Types::Type
    #   resp.parameters[0].type.row_column_info #=> Array
    #   resp.parameters[0].type.row_column_info[0].name #=> String
    #   resp.parameters[0].type.row_column_info[0].type #=> Types::Type
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-query-2018-11-01/PrepareQuery AWS API Documentation
    #
    # @overload prepare_query(params = {})
    # @param [Hash] params ({})
    def prepare_query(params = {}, options = {})
      req = build_request(:prepare_query, params)
      req.send_request(options)
    end

    # `Query` is a synchronous operation that enables you to run a query
    # against your Amazon Timestream data.
    #
    # If you enabled `QueryInsights`, this API also returns insights and
    # metrics related to the query that you executed. `QueryInsights` helps
    # with performance tuning of your query. For more information about
    # `QueryInsights`, see [Using query insights to optimize queries in
    # Amazon Timestream][1].
    #
    # <note markdown="1"> The maximum number of `Query` API requests you're allowed to make
    # with `QueryInsights` enabled is 1 query per second (QPS). If you
    # exceed this query rate, it might result in throttling.
    #
    #  </note>
    #
    # `Query` will time out after 60 seconds. You must update the default
    # timeout in the SDK to support a timeout of 60 seconds. See the [code
    # sample][2] for details.
    #
    # Your query request will fail in the following cases:
    #
    # * If you submit a `Query` request with the same client token outside
    #   of the 5-minute idempotency window.
    #
    # * If you submit a `Query` request with the same client token, but
    #   change other parameters, within the 5-minute idempotency window.
    #
    # * If the size of the row (including the query metadata) exceeds 1 MB,
    #   then the query will fail with the following error message:
    #
    #   `Query aborted as max page response size has been exceeded by the
    #   output result row`
    #
    # * If the IAM principal of the query initiator and the result reader
    #   are not the same and/or the query initiator and the result reader do
    #   not have the same query string in the query requests, the query will
    #   fail with an `Invalid pagination token` error.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/timestream/latest/developerguide/using-query-insights.html
    # [2]: https://docs.aws.amazon.com/timestream/latest/developerguide/code-samples.run-query.html
    #
    # @option params [required, String] :query_string
    #   The query to be run by Timestream.
    #
    # @option params [String] :client_token
    #   Unique, case-sensitive string of up to 64 ASCII characters specified
    #   when a `Query` request is made. Providing a `ClientToken` makes the
    #   call to `Query` *idempotent*. This means that running the same query
    #   repeatedly will produce the same result. In other words, making
    #   multiple identical `Query` requests has the same effect as making a
    #   single request. When using `ClientToken` in a query, note the
    #   following:
    #
    #   * If the Query API is instantiated without a `ClientToken`, the Query
    #     SDK generates a `ClientToken` on your behalf.
    #
    #   * If the `Query` invocation only contains the `ClientToken` but does
    #     not include a `NextToken`, that invocation of `Query` is assumed to
    #     be a new query run.
    #
    #   * If the invocation contains `NextToken`, that particular invocation
    #     is assumed to be a subsequent invocation of a prior call to the
    #     Query API, and a result set is returned.
    #
    #   * After 4 hours, any request with the same `ClientToken` is treated as
    #     a new request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :next_token
    #   A pagination token used to return a set of results. When the `Query`
    #   API is invoked using `NextToken`, that particular invocation is
    #   assumed to be a subsequent invocation of a prior call to `Query`, and
    #   a result set is returned. However, if the `Query` invocation only
    #   contains the `ClientToken`, that invocation of `Query` is assumed to
    #   be a new query run.
    #
    #   Note the following when using NextToken in a query:
    #
    #   * A pagination token can be used for up to five `Query` invocations,
    #     OR for a duration of up to 1 hour – whichever comes first.
    #
    #   * Using the same `NextToken` will return the same set of records. To
    #     keep paginating through the result set, you must to use the most
    #     recent `nextToken`.
    #
    #   * Suppose a `Query` invocation returns two `NextToken` values,
    #     `TokenA` and `TokenB`. If `TokenB` is used in a subsequent `Query`
    #     invocation, then `TokenA` is invalidated and cannot be reused.
    #
    #   * To request a previous result set from a query after pagination has
    #     begun, you must re-invoke the Query API.
    #
    #   * The latest `NextToken` should be used to paginate until `null` is
    #     returned, at which point a new `NextToken` should be used.
    #
    #   * If the IAM principal of the query initiator and the result reader
    #     are not the same and/or the query initiator and the result reader do
    #     not have the same query string in the query requests, the query will
    #     fail with an `Invalid pagination token` error.
    #
    # @option params [Integer] :max_rows
    #   The total number of rows to be returned in the `Query` output. The
    #   initial run of `Query` with a `MaxRows` value specified will return
    #   the result set of the query in two cases:
    #
    #   * The size of the result is less than `1MB`.
    #
    #   * The number of rows in the result set is less than the value of
    #     `maxRows`.
    #
    #   Otherwise, the initial invocation of `Query` only returns a
    #   `NextToken`, which can then be used in subsequent calls to fetch the
    #   result set. To resume pagination, provide the `NextToken` value in the
    #   subsequent command.
    #
    #   If the row size is large (e.g. a row has many columns), Timestream may
    #   return fewer rows to keep the response size from exceeding the 1 MB
    #   limit. If `MaxRows` is not provided, Timestream will send the
    #   necessary number of rows to meet the 1 MB limit.
    #
    # @option params [Types::QueryInsights] :query_insights
    #   Encapsulates settings for enabling `QueryInsights`.
    #
    #   Enabling `QueryInsights` returns insights and metrics in addition to
    #   query results for the query that you executed. You can use
    #   `QueryInsights` to tune your query performance.
    #
    # @return [Types::QueryResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::QueryResponse#query_id #query_id} => String
    #   * {Types::QueryResponse#next_token #next_token} => String
    #   * {Types::QueryResponse#rows #rows} => Array&lt;Types::Row&gt;
    #   * {Types::QueryResponse#column_info #column_info} => Array&lt;Types::ColumnInfo&gt;
    #   * {Types::QueryResponse#query_status #query_status} => Types::QueryStatus
    #   * {Types::QueryResponse#query_insights_response #query_insights_response} => Types::QueryInsightsResponse
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.query({
    #     query_string: "QueryString", # required
    #     client_token: "ClientRequestToken",
    #     next_token: "PaginationToken",
    #     max_rows: 1,
    #     query_insights: {
    #       mode: "ENABLED_WITH_RATE_CONTROL", # required, accepts ENABLED_WITH_RATE_CONTROL, DISABLED
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.query_id #=> String
    #   resp.next_token #=> String
    #   resp.rows #=> Array
    #   resp.rows[0].data #=> Array
    #   resp.rows[0].data[0].scalar_value #=> String
    #   resp.rows[0].data[0].time_series_value #=> Array
    #   resp.rows[0].data[0].time_series_value[0].time #=> String
    #   resp.rows[0].data[0].time_series_value[0].value #=> Types::Datum
    #   resp.rows[0].data[0].array_value #=> Types::DatumList
    #   resp.rows[0].data[0].row_value #=> Types::Row
    #   resp.rows[0].data[0].null_value #=> Boolean
    #   resp.column_info #=> Array
    #   resp.column_info[0].name #=> String
    #   resp.column_info[0].type.scalar_type #=> String, one of "VARCHAR", "BOOLEAN", "BIGINT", "DOUBLE", "TIMESTAMP", "DATE", "TIME", "INTERVAL_DAY_TO_SECOND", "INTERVAL_YEAR_TO_MONTH", "UNKNOWN", "INTEGER"
    #   resp.column_info[0].type.array_column_info #=> Types::ColumnInfo
    #   resp.column_info[0].type.time_series_measure_value_column_info #=> Types::ColumnInfo
    #   resp.column_info[0].type.row_column_info #=> Types::ColumnInfoList
    #   resp.query_status.progress_percentage #=> Float
    #   resp.query_status.cumulative_bytes_scanned #=> Integer
    #   resp.query_status.cumulative_bytes_metered #=> Integer
    #   resp.query_insights_response.query_spatial_coverage.max.value #=> Float
    #   resp.query_insights_response.query_spatial_coverage.max.table_arn #=> String
    #   resp.query_insights_response.query_spatial_coverage.max.partition_key #=> Array
    #   resp.query_insights_response.query_spatial_coverage.max.partition_key[0] #=> String
    #   resp.query_insights_response.query_temporal_range.max.value #=> Integer
    #   resp.query_insights_response.query_temporal_range.max.table_arn #=> String
    #   resp.query_insights_response.query_table_count #=> Integer
    #   resp.query_insights_response.output_rows #=> Integer
    #   resp.query_insights_response.output_bytes #=> Integer
    #   resp.query_insights_response.unload_partition_count #=> Integer
    #   resp.query_insights_response.unload_written_rows #=> Integer
    #   resp.query_insights_response.unload_written_bytes #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-query-2018-11-01/Query AWS API Documentation
    #
    # @overload query(params = {})
    # @param [Hash] params ({})
    def query(params = {}, options = {})
      req = build_request(:query, params)
      req.send_request(options)
    end

    # Associate a set of tags with a Timestream resource. You can then
    # activate these user-defined tags so that they appear on the Billing
    # and Cost Management console for cost allocation tracking.
    #
    # @option params [required, String] :resource_arn
    #   Identifies the Timestream resource to which tags should be added. This
    #   value is an Amazon Resource Name (ARN).
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   The tags to be assigned to the Timestream resource.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-query-2018-11-01/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes the association of tags from a Timestream query resource.
    #
    # @option params [required, String] :resource_arn
    #   The Timestream resource that the tags will be removed from. This value
    #   is an Amazon Resource Name (ARN).
    #
    # @option params [required, Array<String>] :tag_keys
    #   A list of tags keys. Existing tags of the resource whose keys are
    #   members of this list will be removed from the Timestream resource.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-query-2018-11-01/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Transitions your account to use TCUs for query pricing and modifies
    # the maximum query compute units that you've configured. If you reduce
    # the value of `MaxQueryTCU` to a desired configuration, the new value
    # can take up to 24 hours to be effective.
    #
    # <note markdown="1"> After you've transitioned your account to use TCUs for query pricing,
    # you can't transition to using bytes scanned for query pricing.
    #
    #  </note>
    #
    # @option params [Integer] :max_query_tcu
    #   The maximum number of compute units the service will use at any point
    #   in time to serve your queries. To run queries, you must set a minimum
    #   capacity of 4 TCU. You can set the maximum number of TCU in multiples
    #   of 4, for example, 4, 8, 16, 32, and so on. The maximum value
    #   supported for `MaxQueryTCU` is 1000. To request an increase to this
    #   soft limit, contact Amazon Web Services Support. For information about
    #   the default quota for maxQueryTCU, see Default quotas. This
    #   configuration is applicable only for on-demand usage of Timestream
    #   Compute Units (TCUs).
    #
    #   The maximum value supported for `MaxQueryTCU` is 1000. To request an
    #   increase to this soft limit, contact Amazon Web Services Support. For
    #   information about the default quota for `maxQueryTCU`, see [Default
    #   quotas][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/timestream/latest/developerguide/ts-limits.html#limits.default
    #
    # @option params [String] :query_pricing_model
    #   The pricing model for queries in an account.
    #
    #   <note markdown="1"> The `QueryPricingModel` parameter is used by several Timestream
    #   operations; however, the `UpdateAccountSettings` API operation
    #   doesn't recognize any values other than `COMPUTE_UNITS`.
    #
    #    </note>
    #
    # @option params [Types::QueryComputeRequest] :query_compute
    #   Modifies the query compute settings configured in your account,
    #   including the query pricing model and provisioned Timestream Compute
    #   Units (TCUs) in your account.
    #
    #   <note markdown="1"> This API is idempotent, meaning that making the same request multiple
    #   times will have the same effect as making the request once.
    #
    #    </note>
    #
    # @return [Types::UpdateAccountSettingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateAccountSettingsResponse#max_query_tcu #max_query_tcu} => Integer
    #   * {Types::UpdateAccountSettingsResponse#query_pricing_model #query_pricing_model} => String
    #   * {Types::UpdateAccountSettingsResponse#query_compute #query_compute} => Types::QueryComputeResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_account_settings({
    #     max_query_tcu: 1,
    #     query_pricing_model: "BYTES_SCANNED", # accepts BYTES_SCANNED, COMPUTE_UNITS
    #     query_compute: {
    #       compute_mode: "ON_DEMAND", # accepts ON_DEMAND, PROVISIONED
    #       provisioned_capacity: {
    #         target_query_tcu: 1, # required
    #         notification_configuration: {
    #           sns_configuration: {
    #             topic_arn: "AmazonResourceName", # required
    #           },
    #           role_arn: "AmazonResourceName", # required
    #         },
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.max_query_tcu #=> Integer
    #   resp.query_pricing_model #=> String, one of "BYTES_SCANNED", "COMPUTE_UNITS"
    #   resp.query_compute.compute_mode #=> String, one of "ON_DEMAND", "PROVISIONED"
    #   resp.query_compute.provisioned_capacity.active_query_tcu #=> Integer
    #   resp.query_compute.provisioned_capacity.notification_configuration.sns_configuration.topic_arn #=> String
    #   resp.query_compute.provisioned_capacity.notification_configuration.role_arn #=> String
    #   resp.query_compute.provisioned_capacity.last_update.target_query_tcu #=> Integer
    #   resp.query_compute.provisioned_capacity.last_update.status #=> String, one of "PENDING", "FAILED", "SUCCEEDED"
    #   resp.query_compute.provisioned_capacity.last_update.status_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-query-2018-11-01/UpdateAccountSettings AWS API Documentation
    #
    # @overload update_account_settings(params = {})
    # @param [Hash] params ({})
    def update_account_settings(params = {}, options = {})
      req = build_request(:update_account_settings, params)
      req.send_request(options)
    end

    # Update a scheduled query.
    #
    # @option params [required, String] :scheduled_query_arn
    #   ARN of the scheuled query.
    #
    # @option params [required, String] :state
    #   State of the scheduled query.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_scheduled_query({
    #     scheduled_query_arn: "AmazonResourceName", # required
    #     state: "ENABLED", # required, accepts ENABLED, DISABLED
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-query-2018-11-01/UpdateScheduledQuery AWS API Documentation
    #
    # @overload update_scheduled_query(params = {})
    # @param [Hash] params ({})
    def update_scheduled_query(params = {}, options = {})
      req = build_request(:update_scheduled_query, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::TimestreamQuery')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-timestreamquery'
      context[:gem_version] = '1.56.0'
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
